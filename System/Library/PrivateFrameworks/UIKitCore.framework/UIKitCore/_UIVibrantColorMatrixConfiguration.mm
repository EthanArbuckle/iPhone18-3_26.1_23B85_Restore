@interface _UIVibrantColorMatrixConfiguration
+ (id)_vibrantColorMatrixConfigurationWithColorMatrix:(CAColorMatrix *)matrix maxColorComponent:(double)component preservesHue:(BOOL)hue;
- (BOOL)isEqual:(id)equal;
- (CAColorMatrix)colorMatrix;
- (void)setColorMatrix:(CAColorMatrix *)matrix;
@end

@implementation _UIVibrantColorMatrixConfiguration

+ (id)_vibrantColorMatrixConfigurationWithColorMatrix:(CAColorMatrix *)matrix maxColorComponent:(double)component preservesHue:(BOOL)hue
{
  hueCopy = hue;
  v8 = [_UIVibrantColorMatrixConfiguration alloc];
  v9 = *&matrix->m33;
  v12[2] = *&matrix->m24;
  v12[3] = v9;
  v12[4] = *&matrix->m42;
  v10 = *&matrix->m15;
  v12[0] = *&matrix->m11;
  v12[1] = v10;
  [(_UIVibrantColorMatrixConfiguration *)v8 setColorMatrix:v12];
  [(_UIVibrantColorMatrixConfiguration *)v8 setMaxColorComponent:component];
  [(_UIVibrantColorMatrixConfiguration *)v8 setPreservesHue:hueCopy];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (void)setColorMatrix:(CAColorMatrix *)matrix
{
  *&self->_colorMatrix.m11 = *&matrix->m11;
  v3 = *&matrix->m15;
  v4 = *&matrix->m24;
  v5 = *&matrix->m33;
  *&self->_colorMatrix.m42 = *&matrix->m42;
  *&self->_colorMatrix.m33 = v5;
  *&self->_colorMatrix.m24 = v4;
  *&self->_colorMatrix.m15 = v3;
}

@end