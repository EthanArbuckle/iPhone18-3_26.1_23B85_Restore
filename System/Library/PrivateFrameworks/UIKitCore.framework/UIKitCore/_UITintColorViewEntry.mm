@interface _UITintColorViewEntry
- (BOOL)isEqual:(id)equal;
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
      tintColor = [(_UITintColorViewEntry *)self tintColor];
      tintColor2 = [(_UITintColorViewEntry *)v5 tintColor];

      v8 = [tintColor isEqual:tintColor2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end