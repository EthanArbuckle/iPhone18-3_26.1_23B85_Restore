@interface _UITintColorViewEntry
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation _UITintColorViewEntry

- (id)description
{
  v6.receiver = self;
  v6.super_class = _UITintColorViewEntry;
  v3 = [(_UIVisualEffectViewEntry *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" tintColor=%@", self->_tintColor];

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
      v6 = [(_UITintColorViewEntry *)self tintColor];
      v7 = [(_UITintColorViewEntry *)v5 tintColor];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end