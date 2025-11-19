@interface _UISignalViewCacheKey
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCacheKey:(id)a3;
- (double)initWithClass:(double)a3 size:(double)a4 rect:(double)a5 radius:(double)a6 lineWidth:(double)a7 secondarySize:(double)a8 secondaryRect:(double)a9 alternate:(uint64_t)a10 scale:(uint64_t)a11;
- (unint64_t)hash;
@end

@implementation _UISignalViewCacheKey

- (unint64_t)hash
{
  v3 = [(objc_class *)self->_classType hash];
  v4 = veorq_s8(veorq_s8(veorq_s8(vcvtq_s64_f64(self->_size), vcvtq_s64_f64(self->_rect.size)), veorq_s8(vcvtq_s64_f64(self->_rect.origin), vcvtq_s64_f64(*&self->_radius))), veorq_s8(vcvtq_s64_f64(self->_secondarySize), vcvtq_s64_f64(self->_secondaryRect.origin)));
  return *&veor_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) ^ self->_secondaryRect.size.width ^ self->_secondaryRect.size.height ^ self->_scale ^ v3 ^ self->_alternate;
}

- (double)initWithClass:(double)a3 size:(double)a4 rect:(double)a5 radius:(double)a6 lineWidth:(double)a7 secondarySize:(double)a8 secondaryRect:(double)a9 alternate:(uint64_t)a10 scale:(uint64_t)a11
{
  v34.receiver = a1;
  v34.super_class = _UISignalViewCacheKey;
  result = objc_msgSendSuper2(&v34, sel_init);
  if (result)
  {
    *(result + 1) = a11;
    result[2] = a2;
    result[3] = a3;
    result[4] = a4;
    result[5] = a5;
    result[6] = a6;
    result[7] = a7;
    result[8] = a8;
    result[9] = a9;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UISignalViewCacheKey *)self isEqualToCacheKey:v4];
  }

  return v5;
}

- (BOOL)isEqualToCacheKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_classType != *&v4->origin.y || (self->_size.width == v4->size.width ? (v6 = self->_size.height == v4->size.height) : (v6 = 0), !v6 || !CGRectEqualToRect(self->_rect, v4[1]) || vabdd_f64(self->_radius, v5[2].origin.x) > 0.00000011920929 || vabdd_f64(self->_lineWidth, v5[2].origin.y) > 0.00000011920929))
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