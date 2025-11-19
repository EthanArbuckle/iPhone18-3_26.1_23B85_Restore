@interface _UIWindowSceneActivationIdentifier
+ (id)identifierWithLocation:(CGPoint)a3 inView:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CGPoint)location;
- (UIView)view;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation _UIWindowSceneActivationIdentifier

+ (id)identifierWithLocation:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  v7 = objc_opt_new();
  *(v7 + 16) = x;
  *(v7 + 24) = y;
  objc_storeWeak((v7 + 8), v6);

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  [(_UIWindowSceneActivationIdentifier *)self location];
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  v7 = [(_UIWindowSceneActivationIdentifier *)self view];
  objc_storeWeak((v4 + 8), v7);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(_UIWindowSceneActivationIdentifier *)v5 view];
      v7 = [(_UIWindowSceneActivationIdentifier *)self view];
      if (v6 == v7)
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
  v7 = [(_UIWindowSceneActivationIdentifier *)self view];
  v8 = [v7 hash];

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