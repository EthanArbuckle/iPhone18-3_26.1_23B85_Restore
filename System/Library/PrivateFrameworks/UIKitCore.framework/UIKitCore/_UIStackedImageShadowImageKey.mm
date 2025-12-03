@interface _UIStackedImageShadowImageKey
+ (id)keyWithShadowRadius:(double)radius cornerRadius:(double)cornerRadius isContinuousCorner:(BOOL)corner white:(double)white alpha:(double)alpha;
- (BOOL)isEqual:(id)equal;
@end

@implementation _UIStackedImageShadowImageKey

+ (id)keyWithShadowRadius:(double)radius cornerRadius:(double)cornerRadius isContinuousCorner:(BOOL)corner white:(double)white alpha:(double)alpha
{
  v8 = objc_alloc_init(_UIStackedImageShadowImageKey);
  v9.f64[0] = radius;
  v9.f64[1] = cornerRadius;
  v10 = vdupq_n_s64(0x408F400000000000uLL);
  *&v8->_shadowRadius = vcvtq_s64_f64(vmulq_f64(v9, v10));
  v8->_isContinuousCorner = corner;
  v11.f64[0] = white;
  v11.f64[1] = alpha;
  *&v8->_white = vcvtq_s64_f64(vmulq_f64(v11, v10));

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5[1] == self->_shadowRadius && v5[2] == self->_cornerRadius && v5[4] == self->_white && v5[5] == self->_alpha && *(v5 + 24) == self->_isContinuousCorner;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end