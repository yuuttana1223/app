class PostDecorator < ApplicationDecorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  def created_at
    byebug
    "Created at #{h.time_ago_in_words(object.created_at)} ago"
  end
end
