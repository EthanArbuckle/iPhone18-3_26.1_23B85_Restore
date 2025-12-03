@interface _UISegmentedControlCacheKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCacheKey:(id)key;
- (_UISegmentedControlCacheKey)initWithCornerRadius:(double)radius capSize:(CGSize)size scale:(double)scale state:(unint64_t)state primaryColor:(CGColor *)color;
- (_UISegmentedControlCacheKey)initWithSize:(int)size scale:(double)scale primaryColor:(CGColor *)color background:(BOOL)background;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _UISegmentedControlCacheKey

- (unint64_t)hash
{
  v2 = *&self->_cornerRadius;
  size = self->_size;
  state = self->_state;
  primaryColor = self->_primaryColor;
  if (primaryColor)
  {
    v8 = size;
    v9 = v2;
    primaryColor = CFHash(primaryColor);
    size = v8;
    v2 = v9;
  }

  v6 = veorq_s8(vcvtq_u64_f64(size), vcvtq_u64_f64(v2));
  return *&veor_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) ^ primaryColor ^ state;
}

- (void)dealloc
{
  CGColorRelease(self->_primaryColor);
  v3.receiver = self;
  v3.super_class = _UISegmentedControlCacheKey;
  [(_UISegmentedControlCacheKey *)&v3 dealloc];
}

- (_UISegmentedControlCacheKey)initWithSize:(int)size scale:(double)scale primaryColor:(CGColor *)color background:(BOOL)background
{
  backgroundCopy = background;
  v13.receiver = self;
  v13.super_class = _UISegmentedControlCacheKey;
  v10 = [(_UISegmentedControlCacheKey *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_size.width = 0.0;
    v10->_size.height = size;
    CGColorRetain(color);
    v11->_state = backgroundCopy;
    v11->_primaryColor = color;
    v11->_scale = scale;
  }

  return v11;
}

- (_UISegmentedControlCacheKey)initWithCornerRadius:(double)radius capSize:(CGSize)size scale:(double)scale state:(unint64_t)state primaryColor:(CGColor *)color
{
  height = size.height;
  width = size.width;
  v16.receiver = self;
  v16.super_class = _UISegmentedControlCacheKey;
  v13 = [(_UISegmentedControlCacheKey *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_size.height = height;
    v13->_cornerRadius = radius;
    v13->_size.width = width;
    v13->_state = state;
    CGColorRetain(color);
    v14->_primaryColor = color;
    v14->_scale = scale;
  }

  return v14;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UISegmentedControlCacheKey *)self isEqualToCacheKey:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  v7 = keyCopy && (self->_size.width == *(keyCopy + 1) ? (v6 = self->_size.height == *(keyCopy + 2)) : (v6 = 0), v6 && self->_cornerRadius == *(keyCopy + 3) && self->_scale == *(keyCopy + 4) && self->_state == keyCopy[5]) && CGColorEqualToColor(self->_primaryColor, keyCopy[6]);

  return v7;
}

@end