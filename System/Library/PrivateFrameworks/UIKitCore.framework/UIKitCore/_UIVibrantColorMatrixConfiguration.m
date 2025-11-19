@interface _UIVibrantColorMatrixConfiguration
+ (id)_vibrantColorMatrixConfigurationWithColorMatrix:(CAColorMatrix *)a3 maxColorComponent:(double)a4 preservesHue:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (CAColorMatrix)colorMatrix;
- (void)setColorMatrix:(CAColorMatrix *)a3;
@end

@implementation _UIVibrantColorMatrixConfiguration

+ (id)_vibrantColorMatrixConfigurationWithColorMatrix:(CAColorMatrix *)a3 maxColorComponent:(double)a4 preservesHue:(BOOL)a5
{
  v5 = a5;
  v8 = [_UIVibrantColorMatrixConfiguration alloc];
  v9 = *&a3->m33;
  v12[2] = *&a3->m24;
  v12[3] = v9;
  v12[4] = *&a3->m42;
  v10 = *&a3->m15;
  v12[0] = *&a3->m11;
  v12[1] = v10;
  [(_UIVibrantColorMatrixConfiguration *)v8 setColorMatrix:v12];
  [(_UIVibrantColorMatrixConfiguration *)v8 setMaxColorComponent:a4];
  [(_UIVibrantColorMatrixConfiguration *)v8 setPreservesHue:v5];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    v7 = self->_preservesHue == *(v5 + 8) && vabdd_f64(self->_maxColorComponent, v5[2]) <= 2.22044605e-16 && memcmp(&self->_colorMatrix, v5 + 3, 0x50uLL) == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CAColorMatrix)colorMatrix
{
  v3 = *&self->m31;
  v4 = *&self->m44;
  *&retstr->m24 = *&self->m35;
  *&retstr->m33 = v4;
  *&retstr->m42 = *&self[1].m13;
  *&retstr->m11 = *&self->m22;
  *&retstr->m15 = v3;
  return self;
}

- (void)setColorMatrix:(CAColorMatrix *)a3
{
  *&self->_colorMatrix.m11 = *&a3->m11;
  v3 = *&a3->m15;
  v4 = *&a3->m24;
  v5 = *&a3->m33;
  *&self->_colorMatrix.m42 = *&a3->m42;
  *&self->_colorMatrix.m33 = v5;
  *&self->_colorMatrix.m24 = v4;
  *&self->_colorMatrix.m15 = v3;
}

@end