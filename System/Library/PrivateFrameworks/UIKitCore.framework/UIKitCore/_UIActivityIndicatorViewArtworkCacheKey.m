@interface _UIActivityIndicatorViewArtworkCacheKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCacheKey:(id)a3;
- (_UIActivityIndicatorViewArtworkCacheKey)initWithStyle:(int64_t)a3 width:(double)a4 spokeCount:(int64_t)a5 spokeFrameRatio:(int64_t)a6 shadowOffset:(CGSize)a7 color:(CGColor *)a8 shadowColor:(CGColor *)a9;
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

- (_UIActivityIndicatorViewArtworkCacheKey)initWithStyle:(int64_t)a3 width:(double)a4 spokeCount:(int64_t)a5 spokeFrameRatio:(int64_t)a6 shadowOffset:(CGSize)a7 color:(CGColor *)a8 shadowColor:(CGColor *)a9
{
  height = a7.height;
  width = a7.width;
  v20.receiver = self;
  v20.super_class = _UIActivityIndicatorViewArtworkCacheKey;
  v17 = [(_UIActivityIndicatorViewArtworkCacheKey *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_style = a3;
    v17->_width = a4;
    v17->_spokeCount = a5;
    v17->_spokeFrameRatio = a6;
    v17->_shadowOffset.width = width;
    v17->_shadowOffset.height = height;
    CGColorRetain(a8);
    v18->_color = a8;
    CGColorRetain(a9);
    v18->_shadowColor = a9;
  }

  return v18;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UIActivityIndicatorViewArtworkCacheKey *)self isEqualToCacheKey:v4];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  v7 = v4 && self->_style == v4[1] && self->_width == *(v4 + 2) && self->_spokeCount == v4[3] && self->_spokeFrameRatio == v4[4] && (self->_shadowOffset.width == *(v4 + 5) ? (v6 = self->_shadowOffset.height == *(v4 + 6)) : (v6 = 0), v6 && CGColorEqualToColor(self->_color, v4[7])) && CGColorEqualToColor(self->_shadowColor, v5[8]);

  return v7;
}

@end