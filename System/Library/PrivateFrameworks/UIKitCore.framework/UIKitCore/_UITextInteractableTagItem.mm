@interface _UITextInteractableTagItem
- (BOOL)isEqual:(id)equal;
- (id)_itemRepresentationWithRange:(_NSRange)range;
@end

@implementation _UITextInteractableTagItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = _UITextInteractableTagItem;
  if ([(_UITextInteractableItem *)&v12 isEqual:equalCopy])
  {
    v5 = [equalCopy tag];
    v6 = [(_UITextInteractableTagItem *)self tag];
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

- (id)_itemRepresentationWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = [(_UITextInteractableTagItem *)self tag];
  v6 = [UITextItem _itemWithTag:v5 range:location, length];

  return v6;
}

@end