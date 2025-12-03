@interface _UITextFieldClearButtonCacheKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCacheKey:(id)key;
- (_UITextFieldClearButtonCacheKey)initWithVariant:(int)variant color:(CGColor *)color;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _UITextFieldClearButtonCacheKey

- (unint64_t)hash
{
  variant = self->_variant;
  color = self->_color;
  if (color)
  {
    color = CFHash(color);
  }

  return color ^ variant;
}

- (void)dealloc
{
  CGColorRelease(self->_color);
  v3.receiver = self;
  v3.super_class = _UITextFieldClearButtonCacheKey;
  [(_UITextFieldClearButtonCacheKey *)&v3 dealloc];
}

- (_UITextFieldClearButtonCacheKey)initWithVariant:(int)variant color:(CGColor *)color
{
  v9.receiver = self;
  v9.super_class = _UITextFieldClearButtonCacheKey;
  v6 = [(_UITextFieldClearButtonCacheKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_variant = variant;
    CGColorRetain(color);
    v7->_color = color;
  }

  return v7;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UITextFieldClearButtonCacheKey *)self isEqualToCacheKey:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v6 = keyCopy && self->_variant == *(keyCopy + 2) && CGColorEqualToColor(self->_color, keyCopy[2]);

  return v6;
}

@end