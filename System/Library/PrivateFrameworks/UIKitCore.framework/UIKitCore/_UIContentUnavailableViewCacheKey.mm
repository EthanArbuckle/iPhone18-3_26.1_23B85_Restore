@interface _UIContentUnavailableViewCacheKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCacheKey:(id)key;
- (_UIContentUnavailableViewCacheKey)initWithStyle:(unint64_t)style color:(CGColor *)color;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _UIContentUnavailableViewCacheKey

- (_UIContentUnavailableViewCacheKey)initWithStyle:(unint64_t)style color:(CGColor *)color
{
  v9.receiver = self;
  v9.super_class = _UIContentUnavailableViewCacheKey;
  v6 = [(_UIContentUnavailableViewCacheKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_style = style;
    CGColorRetain(color);
    v7->_color = color;
  }

  return v7;
}

- (unint64_t)hash
{
  style = self->_style;
  color = self->_color;
  if (color)
  {
    color = CFHash(color);
  }

  return color ^ style;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UIContentUnavailableViewCacheKey *)self isEqualToCacheKey:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v6 = keyCopy && self->_style == keyCopy[1] && CGColorEqualToColor(self->_color, keyCopy[2]);

  return v6;
}

- (void)dealloc
{
  CGColorRelease(self->_color);
  v3.receiver = self;
  v3.super_class = _UIContentUnavailableViewCacheKey;
  [(_UIContentUnavailableViewCacheKey *)&v3 dealloc];
}

@end