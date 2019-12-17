# frozen_string_literal: true

# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ApplicationRecord
  # has_manyは複数形
  has_many :board_tag_relations, dependent: :delete_all
  # 掲示板と関連づけるアソシーエーション
  has_many :boards, through: :board_tag_relations
end
