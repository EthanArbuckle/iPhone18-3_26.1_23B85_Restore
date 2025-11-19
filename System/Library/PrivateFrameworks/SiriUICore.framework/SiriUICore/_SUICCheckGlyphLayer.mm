@interface _SUICCheckGlyphLayer
- (_SUICCheckGlyphLayer)initWithFrame:(CGRect)a3;
- (double)_pointScaleToMatchBoundsSize:(CGSize)a3;
- (double)_updateCovered:(BOOL)a3 completion:(id)a4;
- (double)setCovered:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_createMask;
- (void)layoutSublayers;
- (void)setPrimaryColor:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation _SUICCheckGlyphLayer

- (_SUICCheckGlyphLayer)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = MEMORY[0x1E6979400];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 URLForResource:@"glyph_check" withExtension:@"caar"];
  v11 = *MEMORY[0x1E6979EF0];
  v28 = 0;
  v12 = [v8 packageWithContentsOfURL:v10 type:v11 options:0 error:&v28];
  v13 = v28;

  v14 = [v12 rootLayer];
  if (v14)
  {
    v27.receiver = self;
    v27.super_class = _SUICCheckGlyphLayer;
    v15 = [(_SUICCheckGlyphLayer *)&v27 init];
    if (v15)
    {
      -[_SUICCheckGlyphLayer setGeometryFlipped:](v15, "setGeometryFlipped:", [v12 isGeometryFlipped]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      objc_storeStrong(&v15->_checkPackageLayer, v16);
      [(CAShapeLayer *)v15->_checkPackageLayer setLineCap:*MEMORY[0x1E6979E78]];
      [(CAShapeLayer *)v15->_checkPackageLayer bounds];
      v18 = v17;
      v20 = v19;
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      if (CGRectIsNull(v29))
      {
        x = *MEMORY[0x1E695EFF8];
        y = *(MEMORY[0x1E695EFF8] + 8);
        width = v18 * 0.5;
        height = v20 * 0.5;
      }

      v21 = _SUICLayerNullActions();
      [(_SUICCheckGlyphLayer *)v15 setActions:v21];

      checkPackageLayer = v15->_checkPackageLayer;
      v23 = fmin(width / v18, height / v20);
      CATransform3DMakeScale(&v26, v23, v23, 1.0);
      [(CAShapeLayer *)checkPackageLayer setTransform:&v26];
      [(_SUICCheckGlyphLayer *)v15 setFrame:x, y, width, height];
      [(_SUICCheckGlyphLayer *)v15 addSublayer:v15->_checkPackageLayer];
      if (v15->_checkPackageLayer)
      {
        [(_SUICCheckGlyphLayer *)v15 _createMask];
        [(_SUICCheckGlyphLayer *)v15 _updateCovered:0 completion:0];
      }
    }

    self = v15;
    v24 = self;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)layoutSublayers
{
  v15.receiver = self;
  v15.super_class = _SUICCheckGlyphLayer;
  [(_SUICCheckGlyphLayer *)&v15 layoutSublayers];
  [(_SUICCheckGlyphLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_SUICCheckGlyphLayer *)self _pointScaleToMatchBoundsSize:v7, v9];
  checkPackageLayer = self->_checkPackageLayer;
  CATransform3DMakeScale(&v14, v12 * 0.5, v12 * 0.5, 1.0);
  [(CAShapeLayer *)checkPackageLayer setTransform:&v14];
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  MidX = CGRectGetMidX(v16);
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  [(CAShapeLayer *)self->_checkPackageLayer setPosition:MidX, CGRectGetMidY(v17)];
}

- (double)_pointScaleToMatchBoundsSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(CAShapeLayer *)self->_checkPackageLayer bounds];
  v7 = width / v6;
  v8 = 0.0;
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  if (v5 != 0.0)
  {
    v8 = height / v5;
  }

  v9 = fmin(v7, v8);
  return v9 + v9;
}

- (void)_createMask
{
  v40[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  v4 = [v3 CGColor];

  v5 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  v6 = [v5 CGColor];

  v7 = objc_alloc_init(MEMORY[0x1E6979380]);
  maskLayer = self->_maskLayer;
  self->_maskLayer = v7;

  v9 = self->_maskLayer;
  v40[0] = v6;
  v40[1] = v4;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  [(CAGradientLayer *)v9 setColors:v10];

  [(CAGradientLayer *)self->_maskLayer setAnchorPoint:1.0, 0.0];
  v11 = self->_maskLayer;
  v12 = _SUICLayerNullActions();
  [(CAGradientLayer *)v11 setActions:v12];

  [(CAShapeLayer *)self->_checkPackageLayer setMask:self->_maskLayer];
  [(CAShapeLayer *)self->_checkPackageLayer bounds];
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v17 = v41.size.width * 0.363636364;
  MinY = CGRectGetMinY(v41);
  v19 = (v17 - x) / 0.707106781;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v20 = (CGRectGetMaxX(v42) - v17) / 0.707106781;
  v21 = v17 + v20 * 0.707106781 + v19 * -0.707106781;
  v22 = MinY + v20 * 0.707106781 + v19 * 0.707106781;
  v23 = sqrt((v21 - v17) * (v21 - v17) + (v22 - MinY) * (v22 - MinY));
  [(CAGradientLayer *)self->_maskLayer setPosition:v21 + 2.82842712, v22 + 2.82842712];
  v24 = fmax(v19, fmax(v20, v23)) + 8.0;
  [(CAGradientLayer *)self->_maskLayer setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v24, v24];
  [(CAGradientLayer *)self->_maskLayer setStartPoint:0.5, 0.0];
  [(CAGradientLayer *)self->_maskLayer setEndPoint:0.5, 4.0 / v24];
  p_uncoveredTransform = &self->_uncoveredTransform;
  CATransform3DMakeRotation(&v39, 0.785398163, 0.0, 0.0, 1.0);
  v26 = *&v39.m33;
  *&self->_uncoveredTransform.m31 = *&v39.m31;
  *&self->_uncoveredTransform.m33 = v26;
  v27 = *&v39.m43;
  *&self->_uncoveredTransform.m41 = *&v39.m41;
  *&self->_uncoveredTransform.m43 = v27;
  v28 = *&v39.m13;
  *&self->_uncoveredTransform.m11 = *&v39.m11;
  *&self->_uncoveredTransform.m13 = v28;
  v29 = *&v39.m23;
  *&self->_uncoveredTransform.m21 = *&v39.m21;
  *&self->_uncoveredTransform.m23 = v29;
  self = (self + 200);
  v30 = *&p_uncoveredTransform->m33;
  *&v38.m31 = *&p_uncoveredTransform->m31;
  *&v38.m33 = v30;
  v31 = *&p_uncoveredTransform->m43;
  *&v38.m41 = *&p_uncoveredTransform->m41;
  *&v38.m43 = v31;
  v32 = *&p_uncoveredTransform->m13;
  *&v38.m11 = *&p_uncoveredTransform->m11;
  *&v38.m13 = v32;
  v33 = *&p_uncoveredTransform->m23;
  *&v38.m21 = *&p_uncoveredTransform->m21;
  *&v38.m23 = v33;
  CATransform3DRotate(&v39, &v38, 1.57079633, 0.0, 0.0, 1.0);
  v34 = *&v39.m33;
  *&self->_covered = *&v39.m31;
  *&self->_uncoveredTransform.m12 = v34;
  v35 = *&v39.m43;
  *&self->_uncoveredTransform.m14 = *&v39.m41;
  *&self->_uncoveredTransform.m22 = v35;
  v36 = *&v39.m13;
  *&self->super.super.isa = *&v39.m11;
  *&self->super._attr.layer = v36;
  v37 = *&v39.m23;
  *&self->super._wantsDynamicContentScaling = *&v39.m21;
  *&self->_checkPackageLayer = v37;
}

- (void)setPrimaryColor:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  primaryColor = self->_primaryColor;
  if (v8 && primaryColor)
  {
    if (![(UIColor *)primaryColor isEqual:v8])
    {
LABEL_6:
      v11 = [(UIColor *)v8 copy];
      v12 = self->_primaryColor;
      self->_primaryColor = v11;

      v13 = [(UIColor *)self->_primaryColor CGColor];
      if (v6)
      {
        v14 = [(CAShapeLayer *)self->_checkPackageLayer presentationLayer];
        v15 = [v14 strokeColor];
        v16 = [_SUICCheckGlyphSpringAnimationFactory springAnimationWithKeyPath:@"strokeColor"];
        [v16 setAdditive:0];
        [v16 setFromValue:v15];
        [v16 setToValue:v13];
        v17 = [v14 fillColor];
        v18 = [_SUICCheckGlyphSpringAnimationFactory springAnimationWithKeyPath:@"fillColor"];

        [v18 setAdditive:0];
        [v18 setFromValue:v17];
        [v18 setToValue:v13];
        [MEMORY[0x1E6979518] begin];
        if (v9)
        {
          v19 = MEMORY[0x1E6979518];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __60___SUICCheckGlyphLayer_setPrimaryColor_animated_completion___block_invoke;
          v20[3] = &unk_1E81E7B10;
          v21 = v9;
          [v19 setCompletionBlock:v20];
        }

        [(CAShapeLayer *)self->_checkPackageLayer removeAnimationForKey:@"strokeColor"];
        [(CAShapeLayer *)self->_checkPackageLayer removeAnimationForKey:@"fillColor"];
        [(CAShapeLayer *)self->_checkPackageLayer addAnimation:v18 forKey:@"strokeColor"];
        [(CAShapeLayer *)self->_checkPackageLayer addAnimation:v18 forKey:@"fillColor"];
        [MEMORY[0x1E6979518] commit];
      }

      [(CAShapeLayer *)self->_checkPackageLayer setStrokeColor:v13];
      [(CAShapeLayer *)self->_checkPackageLayer setFillColor:v13];
      goto LABEL_11;
    }

    primaryColor = self->_primaryColor;
  }

  if (primaryColor != v8)
  {
    goto LABEL_6;
  }

  if (v9)
  {
    (*(v9 + 2))(v9, 1);
  }

LABEL_11:
}

- (double)setCovered:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  if (self->_covered == a3)
  {
    return 0.0;
  }

  self->_covered = a3;
  [(_SUICCheckGlyphLayer *)self _updateCovered:a4 completion:a5];
  return result;
}

- (double)_updateCovered:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->_covered)
  {
    v7 = &OBJC_IVAR____SUICCheckGlyphLayer__coveredTransform;
  }

  else
  {
    v7 = &OBJC_IVAR____SUICCheckGlyphLayer__uncoveredTransform;
  }

  v8 = (self + *v7);
  v9 = v8[5];
  *&v27.m31 = v8[4];
  *&v27.m33 = v9;
  v10 = v8[7];
  *&v27.m41 = v8[6];
  *&v27.m43 = v10;
  v11 = v8[1];
  *&v27.m11 = *v8;
  *&v27.m13 = v11;
  v12 = v8[3];
  *&v27.m21 = v8[2];
  *&v27.m23 = v12;
  memset(&v26, 0, sizeof(v26));
  maskLayer = self->_maskLayer;
  if (maskLayer)
  {
    [(CAGradientLayer *)maskLayer transform];
  }

  a = v27;
  b = v26;
  if (!CATransform3DEqualToTransform(&a, &b))
  {
    if (v4)
    {
      v14 = [_SUICCheckGlyphSpringAnimationFactory springAnimationWithKeyPath:@"transform"];
      [MEMORY[0x1E6979518] begin];
      if (v6)
      {
        v15 = MEMORY[0x1E6979518];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __50___SUICCheckGlyphLayer__updateCovered_completion___block_invoke;
        v22[3] = &unk_1E81E7B10;
        v23 = v6;
        [v15 setCompletionBlock:v22];
      }

      a = v26;
      b = v27;
      [v14 _suic_updateForAdditiveAnimationFromTransform:&a toTransform:&b];
      v16 = [(CAGradientLayer *)self->_maskLayer _suic_addAdditiveAnimation:v14];
      [MEMORY[0x1E6979518] commit];
      [v14 duration];
      v17 = self->_maskLayer;
      v19 = fmax(v18, 0.0);
      a = v27;
      [(CAGradientLayer *)v17 setTransform:&a];

      goto LABEL_14;
    }

    v20 = self->_maskLayer;
    a = v27;
    [(CAGradientLayer *)v20 setTransform:&a];
  }

  v19 = 0.0;
  if (v6)
  {
    (*(v6 + 2))(v6, 1);
  }

LABEL_14:

  return v19;
}

@end