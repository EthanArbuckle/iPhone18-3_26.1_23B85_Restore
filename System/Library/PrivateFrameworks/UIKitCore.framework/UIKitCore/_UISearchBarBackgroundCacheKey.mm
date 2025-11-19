@interface _UISearchBarBackgroundCacheKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCacheKey:(id)a3;
- (_UISearchBarBackgroundCacheKey)initWithBarPosition:(int64_t)a3 usesContiguousBarBackground:(BOOL)a4 scale:(double)a5 alpha:(double)a6 height:(double)a7 statusBarHeight:(double)a8 backgroundColor:(CGColor *)a9 strokeColor:(CGColor *)a10;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _UISearchBarBackgroundCacheKey

- (_UISearchBarBackgroundCacheKey)initWithBarPosition:(int64_t)a3 usesContiguousBarBackground:(BOOL)a4 scale:(double)a5 alpha:(double)a6 height:(double)a7 statusBarHeight:(double)a8 backgroundColor:(CGColor *)a9 strokeColor:(CGColor *)a10
{
  v21.receiver = self;
  v21.super_class = _UISearchBarBackgroundCacheKey;
  v18 = [(_UISearchBarBackgroundCacheKey *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_barPosition = a3;
    v18->_usesContiguousBarBackground = a4;
    v18->_scale = a5;
    v18->_alpha = a6;
    v18->_height = a7;
    v18->_statusBarHeight = a8;
    CGColorRetain(a9);
    v19->_backgroundColor = a9;
    CGColorRetain(a10);
    v19->_strokeColor = a10;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UISearchBarBackgroundCacheKey *)self isEqualToCacheKey:v4];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = v4 && self->_barPosition == v4[1] && self->_usesContiguousBarBackground == *(v4 + 16) && self->_scale == *(v4 + 3) && self->_alpha == *(v4 + 4) && self->_height == *(v4 + 5) && self->_statusBarHeight == *(v4 + 6) && CGColorEqualToColor(self->_backgroundColor, v4[7]) && CGColorEqualToColor(self->_strokeColor, v5[8]);

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