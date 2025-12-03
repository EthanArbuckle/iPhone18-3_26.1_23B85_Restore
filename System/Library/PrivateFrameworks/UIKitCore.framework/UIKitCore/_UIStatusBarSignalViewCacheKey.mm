@interface _UIStatusBarSignalViewCacheKey
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCacheKey:(id)key;
- (double)initWithClass:(double)class size:(double)size rect:(double)rect radius:(double)radius lineWidth:(double)width secondarySize:(double)secondarySize secondaryRect:(double)secondaryRect alternate:(uint64_t)self0 scale:(uint64_t)self1;
- (unint64_t)hash;
@end

@implementation _UIStatusBarSignalViewCacheKey

- (double)initWithClass:(double)class size:(double)size rect:(double)rect radius:(double)radius lineWidth:(double)width secondarySize:(double)secondarySize secondaryRect:(double)secondaryRect alternate:(uint64_t)self0 scale:(uint64_t)self1
{
  v34.receiver = self;
  v34.super_class = _UIStatusBarSignalViewCacheKey;
  result = objc_msgSendSuper2(&v34, sel_init);
  if (result)
  {
    *(result + 1) = scale;
    result[2] = a2;
    result[3] = class;
    result[4] = size;
    result[5] = rect;
    result[6] = radius;
    result[7] = width;
    result[8] = secondarySize;
    result[9] = secondaryRect;
    *(result + 10) = a17;
    *(result + 11) = a18;
    *(result + 12) = a19;
    *(result + 13) = a20;
    *(result + 14) = a21;
    *(result + 15) = a22;
    *(result + 128) = a12;
    *(result + 17) = a23;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = [(objc_class *)self->_classType hash];
  v4 = veorq_s8(veorq_s8(veorq_s8(vcvtq_s64_f64(self->_size), vcvtq_s64_f64(self->_rect.size)), veorq_s8(vcvtq_s64_f64(self->_rect.origin), vcvtq_s64_f64(*&self->_radius))), veorq_s8(vcvtq_s64_f64(self->_secondarySize), vcvtq_s64_f64(self->_secondaryRect.origin)));
  return *&veor_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) ^ self->_secondaryRect.size.width ^ self->_secondaryRect.size.height ^ self->_scale ^ v3 ^ self->_alternate;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UIStatusBarSignalViewCacheKey *)self isEqualToCacheKey:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)key
{
  keyCopy = key;
  v5 = keyCopy;
  if (self->_classType != *&keyCopy->origin.y || (self->_size.width == keyCopy->size.width ? (v6 = self->_size.height == keyCopy->size.height) : (v6 = 0), !v6 || !CGRectEqualToRect(self->_rect, keyCopy[1]) || vabdd_f64(self->_radius, v5[2].origin.x) > 0.00000011920929 || vabdd_f64(self->_lineWidth, v5[2].origin.y) > 0.00000011920929))
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = 0;
  if (self->_secondarySize.width == v5[2].size.width && self->_secondarySize.height == v5[2].size.height)
  {
    if (CGRectEqualToRect(self->_secondaryRect, v5[3]) && self->_alternate == LOBYTE(v5[4].origin.x) && vabdd_f64(self->_scale, v5[4].origin.y) <= 0.00000011920929)
    {
      v7 = 1;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:

  return v7;
}

@end