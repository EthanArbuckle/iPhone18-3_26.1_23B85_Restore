@interface _UISegmentedControlCacheKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCacheKey:(id)a3;
- (_UISegmentedControlCacheKey)initWithCornerRadius:(double)a3 capSize:(CGSize)a4 scale:(double)a5 state:(unint64_t)a6 primaryColor:(CGColor *)a7;
- (_UISegmentedControlCacheKey)initWithSize:(int)a3 scale:(double)a4 primaryColor:(CGColor *)a5 background:(BOOL)a6;
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

- (_UISegmentedControlCacheKey)initWithSize:(int)a3 scale:(double)a4 primaryColor:(CGColor *)a5 background:(BOOL)a6
{
  v6 = a6;
  v13.receiver = self;
  v13.super_class = _UISegmentedControlCacheKey;
  v10 = [(_UISegmentedControlCacheKey *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_size.width = 0.0;
    v10->_size.height = a3;
    CGColorRetain(a5);
    v11->_state = v6;
    v11->_primaryColor = a5;
    v11->_scale = a4;
  }

  return v11;
}

- (_UISegmentedControlCacheKey)initWithCornerRadius:(double)a3 capSize:(CGSize)a4 scale:(double)a5 state:(unint64_t)a6 primaryColor:(CGColor *)a7
{
  height = a4.height;
  width = a4.width;
  v16.receiver = self;
  v16.super_class = _UISegmentedControlCacheKey;
  v13 = [(_UISegmentedControlCacheKey *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_size.height = height;
    v13->_cornerRadius = a3;
    v13->_size.width = width;
    v13->_state = a6;
    CGColorRetain(a7);
    v14->_primaryColor = a7;
    v14->_scale = a5;
  }

  return v14;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UISegmentedControlCacheKey *)self isEqualToCacheKey:v4];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  v7 = v4 && (self->_size.width == *(v4 + 1) ? (v6 = self->_size.height == *(v4 + 2)) : (v6 = 0), v6 && self->_cornerRadius == *(v4 + 3) && self->_scale == *(v4 + 4) && self->_state == v4[5]) && CGColorEqualToColor(self->_primaryColor, v4[6]);

  return v7;
}

@end