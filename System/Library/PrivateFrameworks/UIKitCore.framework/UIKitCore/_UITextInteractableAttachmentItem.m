@interface _UITextInteractableAttachmentItem
- (BOOL)isEqual:(id)a3;
- (id)_itemRepresentationWithRange:(_NSRange)a3;
@end

@implementation _UITextInteractableAttachmentItem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UITextInteractableAttachmentItem;
  if ([(_UITextInteractableItem *)&v12 isEqual:v4])
  {
    v5 = [v4 attachment];
    v6 = [(_UITextInteractableAttachmentItem *)self attachment];
    v7 = v5;
    v8 = v6;
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

- (id)_itemRepresentationWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(_UITextInteractableAttachmentItem *)self attachment];
  v6 = [UITextItem _itemWithTextAttachment:v5 range:location, length];

  return v6;
}

@end