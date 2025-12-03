@interface _UISearchBarBackgroundCacheKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCacheKey:(id)key;
- (_UISearchBarBackgroundCacheKey)initWithBarPosition:(int64_t)position usesContiguousBarBackground:(BOOL)background scale:(double)scale alpha:(double)alpha height:(double)height statusBarHeight:(double)barHeight backgroundColor:(CGColor *)color strokeColor:(CGColor *)self0;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _UISearchBarBackgroundCacheKey

- (_UISearchBarBackgroundCacheKey)initWithBarPosition:(int64_t)position usesContiguousBarBackground:(BOOL)background scale:(double)scale alpha:(double)alpha height:(double)height statusBarHeight:(double)barHeight backgroundColor:(CGColor *)color strokeColor:(CGColor *)self0
{
  v21.receiver = self;
  v21.super_class = _UISearchBarBackgroundCacheKey;
  v18 = [(_UISearchBarBackgroundCacheKey *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_barPosition = position;
    v18->_usesContiguousBarBackground = background;
    v18->_scale = scale;
    v18->_alpha = alpha;
    v18->_height = height;
    v18->_statusBarHeight = barHeight;
    CGColorRetain(color);
    v19->_backgroundColor = color;
    CGColorRetain(strokeColor);
    v19->_strokeColor = strokeColor;
  }

  return v19;
}

- (unint64_t)hash
{
  barPosition = self->_barPosition;
  usesContiguousBarBackground = self->_usesContiguousBarBackground;
  scale = self->_scale;
  alpha = self->_alpha;
  height = self->_height;
  statusBarHeight = self->_statusBarHeight;
  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    v10 = CFHash(backgroundColor);
  }

  else
  {
    v10 = 0;
  }

  strokeColor = self->_strokeColor;
  if (strokeColor)
  {
    strokeColor = CFHash(strokeColor);
  }

  return barPosition ^ usesContiguousBarBackground ^ scale ^ height ^ statusBarHeight ^ v10 ^ strokeColor ^ (alpha * 100.0);
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UISearchBarBackgroundCacheKey *)self isEqualToCacheKey:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v6 = keyCopy && self->_barPosition == keyCopy[1] && self->_usesContiguousBarBackground == *(keyCopy + 16) && self->_scale == *(keyCopy + 3) && self->_alpha == *(keyCopy + 4) && self->_height == *(keyCopy + 5) && self->_statusBarHeight == *(keyCopy + 6) && CGColorEqualToColor(self->_backgroundColor, keyCopy[7]) && CGColorEqualToColor(self->_strokeColor, v5[8]);

  return v6;
}

- (void)dealloc
{
  CGColorRelease(self->_backgroundColor);
  CGColorRelease(self->_strokeColor);
  v3.receiver = self;
  v3.super_class = _UISearchBarBackgroundCacheKey;
  [(_UISearchBarBackgroundCacheKey *)&v3 dealloc];
}

@end