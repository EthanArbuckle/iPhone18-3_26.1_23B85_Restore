@interface _UIGravityWellEffectKey
- (BOOL)isEqual:(id)equal;
- (CGPoint)point;
- (UIView)view;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation _UIGravityWellEffectKey

- (unint64_t)hash
{
  view = [(_UIGravityWellEffectKey *)self view];
  v4 = [view hash];
  [(_UIGravityWellEffectKey *)self point];
  v6 = v4 ^ v5;
  [(_UIGravityWellEffectKey *)self point];
  v8 = v7;

  return v6 ^ v8;
}

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  view = [(_UIGravityWellEffectKey *)self view];
  [v4 setView:view];

  [(_UIGravityWellEffectKey *)self point];
  [v4 setPoint:?];
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
      view = [(_UIGravityWellEffectKey *)v5 view];
      view2 = [(_UIGravityWellEffectKey *)self view];
      if (view == view2)
      {
        [(_UIGravityWellEffectKey *)v5 point];
        v10 = v9;
        v12 = v11;
        [(_UIGravityWellEffectKey *)self point];
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

@end