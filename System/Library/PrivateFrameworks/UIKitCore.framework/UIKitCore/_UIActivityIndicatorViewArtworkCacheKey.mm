@interface _UIActivityIndicatorViewArtworkCacheKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCacheKey:(id)key;
- (_UIActivityIndicatorViewArtworkCacheKey)initWithStyle:(int64_t)style width:(double)width spokeCount:(int64_t)count spokeFrameRatio:(int64_t)ratio shadowOffset:(CGSize)offset color:(CGColor *)color shadowColor:(CGColor *)shadowColor;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _UIActivityIndicatorViewArtworkCacheKey

- (void)dealloc
{
  CGColorRelease(self->_color);
  CGColorRelease(self->_shadowColor);
  v3.receiver = self;
  v3.super_class = _UIActivityIndicatorViewArtworkCacheKey;
  [(_UIActivityIndicatorViewArtworkCacheKey *)&v3 dealloc];
}

- (unint64_t)hash
{
  style = self->_style;
  width = self->_width;
  spokeCount = self->_spokeCount;
  spokeFrameRatio = self->_spokeFrameRatio;
  v7 = self->_shadowOffset.width;
  height = self->_shadowOffset.height;
  color = self->_color;
  if (color)
  {
    v10 = CFHash(color);
  }

  else
  {
    v10 = 0;
  }

  shadowColor = self->_shadowColor;
  if (shadowColor)
  {
    shadowColor = CFHash(shadowColor);
  }

  return style ^ spokeCount ^ spokeFrameRatio ^ width ^ v7 ^ height ^ v10 ^ shadowColor;
}

- (_UIActivityIndicatorViewArtworkCacheKey)initWithStyle:(int64_t)style width:(double)width spokeCount:(int64_t)count spokeFrameRatio:(int64_t)ratio shadowOffset:(CGSize)offset color:(CGColor *)color shadowColor:(CGColor *)shadowColor
{
  height = offset.height;
  width = offset.width;
  v20.receiver = self;
  v20.super_class = _UIActivityIndicatorViewArtworkCacheKey;
  v17 = [(_UIActivityIndicatorViewArtworkCacheKey *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_style = style;
    v17->_width = width;
    v17->_spokeCount = count;
    v17->_spokeFrameRatio = ratio;
    v17->_shadowOffset.width = width;
    v17->_shadowOffset.height = height;
    CGColorRetain(color);
    v18->_color = color;
    CGColorRetain(shadowColor);
    v18->_shadowColor = shadowColor;
  }

  return v18;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UIActivityIndicatorViewArtworkCacheKey *)self isEqualToCacheKey:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v7 = keyCopy && self->_style == keyCopy[1] && self->_width == *(keyCopy + 2) && self->_spokeCount == keyCopy[3] && self->_spokeFrameRatio == keyCopy[4] && (self->_shadowOffset.width == *(keyCopy + 5) ? (v6 = self->_shadowOffset.height == *(keyCopy + 6)) : (v6 = 0), v6 && CGColorEqualToColor(self->_color, keyCopy[7])) && CGColorEqualToColor(self->_shadowColor, v5[8]);

  return v7;
}

@end