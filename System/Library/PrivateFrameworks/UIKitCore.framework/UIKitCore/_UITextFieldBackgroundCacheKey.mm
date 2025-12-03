@interface _UITextFieldBackgroundCacheKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCacheKey:(id)key;
- (_UITextFieldBackgroundCacheKey)initWithClassName:(id)name scale:(double)scale cornerRadius:(double)radius lineWidth:(double)width strokeColor:(CGColor *)color fillColor:(CGColor *)fillColor;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _UITextFieldBackgroundCacheKey

- (_UITextFieldBackgroundCacheKey)initWithClassName:(id)name scale:(double)scale cornerRadius:(double)radius lineWidth:(double)width strokeColor:(CGColor *)color fillColor:(CGColor *)fillColor
{
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = _UITextFieldBackgroundCacheKey;
  v16 = [(_UITextFieldBackgroundCacheKey *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_className, name);
    v17->_scale = scale;
    v17->_cornerRadius = radius;
    v17->_lineWidth = width;
    CGColorRetain(color);
    v17->_strokeColor = color;
    CGColorRetain(fillColor);
    v17->_fillColor = fillColor;
  }

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_className hash];
  scale = self->_scale;
  cornerRadius = self->_cornerRadius;
  lineWidth = self->_lineWidth;
  strokeColor = self->_strokeColor;
  if (strokeColor)
  {
    v8 = CFHash(strokeColor);
  }

  else
  {
    v8 = 0;
  }

  fillColor = self->_fillColor;
  if (fillColor)
  {
    fillColor = CFHash(fillColor);
  }

  return v3 ^ scale ^ cornerRadius ^ lineWidth ^ v8 ^ fillColor;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UITextFieldBackgroundCacheKey *)self isEqualToCacheKey:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)key
{
  keyCopy = key;
  v6 = keyCopy && ((className = self->_className, className == *(keyCopy + 1)) || [(NSString *)className isEqualToString:?]) && self->_scale == *(keyCopy + 2) && self->_cornerRadius == *(keyCopy + 3) && self->_lineWidth == *(keyCopy + 4) && CGColorEqualToColor(self->_strokeColor, *(keyCopy + 5)) && CGColorEqualToColor(self->_fillColor, *(keyCopy + 6));

  return v6;
}

- (void)dealloc
{
  CGColorRelease(self->_strokeColor);
  CGColorRelease(self->_fillColor);
  v3.receiver = self;
  v3.super_class = _UITextFieldBackgroundCacheKey;
  [(_UITextFieldBackgroundCacheKey *)&v3 dealloc];
}

@end