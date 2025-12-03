@interface _UITextInteractableAttachmentItem
- (BOOL)isEqual:(id)equal;
- (id)_itemRepresentationWithRange:(_NSRange)range;
@end

@implementation _UITextInteractableAttachmentItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = _UITextInteractableAttachmentItem;
  if ([(_UITextInteractableItem *)&v12 isEqual:equalCopy])
  {
    attachment = [equalCopy attachment];
    attachment2 = [(_UITextInteractableAttachmentItem *)self attachment];
    v7 = attachment;
    v8 = attachment2;
    v9 = v8;
    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v7 && v8)
      {
        v10 = [v7 isEqual:v8];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_itemRepresentationWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  attachment = [(_UITextInteractableAttachmentItem *)self attachment];
  v6 = [UITextItem _itemWithTextAttachment:attachment range:location, length];

  return v6;
}

@end