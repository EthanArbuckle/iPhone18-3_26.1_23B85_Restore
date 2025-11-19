@interface _UIGravityWellEffectKey
- (BOOL)isEqual:(id)a3;
- (CGPoint)point;
- (UIView)view;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation _UIGravityWellEffectKey

- (unint64_t)hash
{
  v3 = [(_UIGravityWellEffectKey *)self view];
  v4 = [v3 hash];
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

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(_UIGravityWellEffectKey *)self view];
  [v4 setView:v5];

  [(_UIGravityWellEffectKey *)self point];
  [v4 setPoint:?];
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
      v6 = [(_UIGravityWellEffectKey *)v5 view];
      v7 = [(_UIGravityWellEffectKey *)self view];
      if (v6 == v7)
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