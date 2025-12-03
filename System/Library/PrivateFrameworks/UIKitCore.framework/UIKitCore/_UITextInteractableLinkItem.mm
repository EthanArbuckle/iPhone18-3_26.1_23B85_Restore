@interface _UITextInteractableLinkItem
- (BOOL)isEqual:(id)equal;
- (id)_itemRepresentationWithRange:(_NSRange)range;
@end

@implementation _UITextInteractableLinkItem

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = _UITextInteractableLinkItem;
  if ([(_UITextInteractableItem *)&v12 isEqual:equalCopy])
  {
    link = [equalCopy link];
    link2 = [(_UITextInteractableLinkItem *)self link];
    v7 = link;
    v8 = link2;
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
  link = [(_UITextInteractableLinkItem *)self link];
  v6 = [UITextItem _itemWithLink:link range:location, length];

  return v6;
}

@end