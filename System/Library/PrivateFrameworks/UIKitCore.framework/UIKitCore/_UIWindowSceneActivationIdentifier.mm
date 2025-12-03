@interface _UIWindowSceneActivationIdentifier
+ (id)identifierWithLocation:(CGPoint)location inView:(id)view;
- (BOOL)isEqual:(id)equal;
- (CGPoint)location;
- (UIView)view;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation _UIWindowSceneActivationIdentifier

+ (id)identifierWithLocation:(CGPoint)location inView:(id)view
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  v7 = objc_opt_new();
  *(v7 + 16) = x;
  *(v7 + 24) = y;
  objc_storeWeak((v7 + 8), viewCopy);

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  [(_UIWindowSceneActivationIdentifier *)self location];
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  view = [(_UIWindowSceneActivationIdentifier *)self view];
  objc_storeWeak((v4 + 8), view);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      view = [(_UIWindowSceneActivationIdentifier *)v5 view];
      view2 = [(_UIWindowSceneActivationIdentifier *)self view];
      if (view == view2)
      {
        [(_UIWindowSceneActivationIdentifier *)v5 location];
        v10 = v9;
        v12 = v11;
        [(_UIWindowSceneActivationIdentifier *)self location];
        v8 = v12 == v14 && v10 == v13;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  [(_UIWindowSceneActivationIdentifier *)self location];
  v4 = v3;
  [(_UIWindowSceneActivationIdentifier *)self location];
  v6 = v5 ^ v4;
  view = [(_UIWindowSceneActivationIdentifier *)self view];
  v8 = [view hash];

  return v8 ^ v6;
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end