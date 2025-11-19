@interface _UITextInteractableLinkItem
- (BOOL)isEqual:(id)a3;
- (id)_itemRepresentationWithRange:(_NSRange)a3;
@end

@implementation _UITextInteractableLinkItem

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UITextInteractableLinkItem;
  if ([(_UITextInteractableItem *)&v12 isEqual:v4])
  {
    v5 = [v4 link];
    v6 = [(_UITextInteractableLinkItem *)self link];
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
  v5 = [(_UITextInteractableLinkItem *)self link];
  v6 = [UITextItem _itemWithLink:v5 range:location, length];

  return v6;
}

@end