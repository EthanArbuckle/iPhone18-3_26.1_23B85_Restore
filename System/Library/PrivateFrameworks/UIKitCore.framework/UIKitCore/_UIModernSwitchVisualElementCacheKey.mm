@interface _UIModernSwitchVisualElementCacheKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCacheKey:(id)key;
- (_UIModernSwitchVisualElementCacheKey)initWithMask:(unint64_t)mask color:(CGColor *)color;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _UIModernSwitchVisualElementCacheKey

- (_UIModernSwitchVisualElementCacheKey)initWithMask:(unint64_t)mask color:(CGColor *)color
{
  v9.receiver = self;
  v9.super_class = _UIModernSwitchVisualElementCacheKey;
  v6 = [(_UIModernSwitchVisualElementCacheKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_mask = mask;
    CGColorRetain(color);
    v7->_color = color;
  }

  return v7;
}

- (unint64_t)hash
{
  mask = self->_mask;
  color = self->_color;
  if (color)
  {
    color = CFHash(color);
  }

  return color ^ mask;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UIModernSwitchVisualElementCacheKey *)self isEqualToCacheKey:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v6 = keyCopy && self->_mask == keyCopy[1] && CGColorEqualToColor(self->_color, keyCopy[2]);

  return v6;
}

- (void)dealloc
{
  CGColorRelease(self->_color);
  v3.receiver = self;
  v3.super_class = _UIModernSwitchVisualElementCacheKey;
  [(_UIModernSwitchVisualElementCacheKey *)&v3 dealloc];
}

@end