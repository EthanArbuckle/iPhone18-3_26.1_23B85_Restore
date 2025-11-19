@interface _UIStackedImageShadowImageKey
+ (id)keyWithShadowRadius:(double)a3 cornerRadius:(double)a4 isContinuousCorner:(BOOL)a5 white:(double)a6 alpha:(double)a7;
- (BOOL)isEqual:(id)a3;
@end

@implementation _UIStackedImageShadowImageKey

+ (id)keyWithShadowRadius:(double)a3 cornerRadius:(double)a4 isContinuousCorner:(BOOL)a5 white:(double)a6 alpha:(double)a7
{
  v8 = objc_alloc_init(_UIStackedImageShadowImageKey);
  v9.f64[0] = a3;
  v9.f64[1] = a4;
  v10 = vdupq_n_s64(0x408F400000000000uLL);
  *&v8->_shadowRadius = vcvtq_s64_f64(vmulq_f64(v9, v10));
  v8->_isContinuousCorner = a5;
  v11.f64[0] = a6;
  v11.f64[1] = a7;
  *&v8->_white = vcvtq_s64_f64(vmulq_f64(v11, v10));

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5[1] == self->_shadowRadius && v5[2] == self->_cornerRadius && v5[4] == self->_white && v5[5] == self->_alpha && *(v5 + 24) == self->_isContinuousCorner;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end