@interface _UISystemBackgroundStrokeView
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)drawRect:(CGRect)a3;
- (void)setMaskedCorners:(unint64_t)a3;
- (void)setStrokeColor:(id)a3;
- (void)setStrokeCornerRadius:(double)a3;
- (void)setStrokeWidth:(double)a3;
- (void)setUseContinuousCurve:(BOOL)a3;
- (void)updateLayerOrRedraw;
@end

@implementation _UISystemBackgroundStrokeView

- (void)setStrokeWidth:(double)a3
{
  if (self->_strokeWidth != a3)
  {
    self->_strokeWidth = a3;
    [(_UISystemBackgroundStrokeView *)self updateLayerOrRedraw];
  }
}

- (void)updateLayerOrRedraw
{
  if (a1)
  {
    [a1 setOpaque:0];
    v2 = [a1 layer];
    v3 = v2;
    if (*(a1 + 440) == 15)
    {
      [v2 setMasksToBounds:1];
      [v3 setBorderWidth:*(a1 + 416)];
      if (*(a1 + 408))
      {
        v4 = MEMORY[0x1E69796E8];
      }

      else
      {
        v4 = MEMORY[0x1E69796E0];
      }

      [v3 setCornerCurve:*v4];
      v5 = *(a1 + 424);
      v6 = *(a1 + 440);
      if (v6)
      {
        v7 = *(a1 + 424);
      }

      else
      {
        v7 = 0.0;
      }

      if ((v6 & 2) != 0)
      {
        v8 = *(a1 + 424);
      }

      else
      {
        v8 = 0.0;
      }

      if ((v6 & 4) != 0)
      {
        v9 = *(a1 + 424);
      }

      else
      {
        v9 = 0.0;
      }

      if ((v6 & 8) == 0)
      {
        v5 = 0.0;
      }

      *&v15 = v9;
      *(&v15 + 1) = v9;
      *&v16 = v5;
      *(&v16 + 1) = v5;
      *&v17 = v8;
      *(&v17 + 1) = v8;
      *&v18 = v7;
      *(&v18 + 1) = v7;
      [v3 setCornerRadii:&v15];
      v10 = *(a1 + 432);
      v11 = [a1 traitCollection];
      v12 = [v10 resolvedColorWithTraitCollection:v11];
      [v3 setBorderColor:{objc_msgSend(v12, "CGColor")}];
    }

    else
    {
      [v2 setMasksToBounds:0];
      [v3 setBorderWidth:0.0];
      v13 = *(MEMORY[0x1E6979288] + 16);
      v15 = *MEMORY[0x1E6979288];
      v16 = v13;
      v14 = *(MEMORY[0x1E6979288] + 48);
      v17 = *(MEMORY[0x1E6979288] + 32);
      v18 = v14;
      [v3 setCornerRadii:&v15];
      [a1 setNeedsDisplay];
    }
  }
}

- (void)setStrokeCornerRadius:(double)a3
{
  if (self->_strokeCornerRadius != a3)
  {
    self->_strokeCornerRadius = a3;
    [(_UISystemBackgroundStrokeView *)self updateLayerOrRedraw];
  }
}

- (void)setStrokeColor:(id)a3
{
  objc_storeStrong(&self->_strokeColor, a3);

  [(_UISystemBackgroundStrokeView *)self updateLayerOrRedraw];
}

- (void)setMaskedCorners:(unint64_t)a3
{
  if (self->_maskedCorners != a3)
  {
    self->_maskedCorners = a3;
    [(_UISystemBackgroundStrokeView *)self updateLayerOrRedraw];
  }
}

- (void)setUseContinuousCurve:(BOOL)a3
{
  if (self->_useContinuousCurve != a3)
  {
    self->_useContinuousCurve = a3;
    [(_UISystemBackgroundStrokeView *)self updateLayerOrRedraw];
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = _UISystemBackgroundStrokeView;
  [(UIView *)&v3 _dynamicUserInterfaceTraitDidChange];
  if (!self || self->_maskedCorners == 15)
  {
    [(_UISystemBackgroundStrokeView *)self updateLayerOrRedraw];
  }
}

- (void)drawRect:(CGRect)a3
{
  if (self && self->_maskedCorners != 15)
  {
    [(UIView *)self bounds:a3.origin.x];
    v8 = self->_strokeWidth * 0.5;
    maskedCorners = self->_maskedCorners;
    v10 = 0.0;
    if (maskedCorners == 3)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = self->_strokeWidth * 0.5;
    }

    if (maskedCorners == 12)
    {
      v11 = self->_strokeWidth * 0.5;
      v12 = 0.0;
    }

    else
    {
      v12 = self->_strokeWidth * 0.5;
    }

    if (maskedCorners)
    {
      v10 = v12;
    }

    else
    {
      v11 = 0.0;
    }

    v13 = v4 + v8;
    v14 = v5 + v10;
    v15 = v6 - (v8 + v8);
    v16 = v7 - (v11 + v10);
    v17 = self->_strokeCornerRadius - v8;
    v18 = !self->_useContinuousCurve;
    if (maskedCorners)
    {
      v19 = [UIBezierPath _roundedRectBezierPath:3 withRoundedCorners:13 cornerRadius:v18 segments:v13 legacyCorners:v5 + v10, v15, v7 - (v11 + v10), v17];
      if (self->_maskedCorners == 12)
      {
        v25.origin.x = v13;
        v25.origin.y = v14;
        v25.size.width = v15;
        v25.size.height = v16;
        v20 = -CGRectGetMidX(v25);
        v26.origin.x = v13;
        v26.origin.y = v14;
        v26.size.width = v15;
        v26.size.height = v16;
        MidY = CGRectGetMidY(v26);
        CGAffineTransformMakeTranslation(&v24, v20, -MidY);
        [v19 applyTransform:&v24];
        CGAffineTransformMakeScale(&v24, 1.0, -1.0);
        [v19 applyTransform:&v24];
        v27.origin.x = v13;
        v27.origin.y = v14;
        v27.size.width = v15;
        v27.size.height = v16;
        MidX = CGRectGetMidX(v27);
        v28.origin.x = v13;
        v28.origin.y = v14;
        v28.size.width = v15;
        v28.size.height = v16;
        v23 = CGRectGetMidY(v28);
        CGAffineTransformMakeTranslation(&v24, MidX, v23);
        [v19 applyTransform:&v24];
      }
    }

    else
    {
      v19 = [UIBezierPath _roundedRectBezierPath:0 withRoundedCorners:12 cornerRadius:v18 segments:v13 legacyCorners:v5 + v10, v15, v7 - (v11 + v10), v17];
    }

    [v19 setLineWidth:self->_strokeWidth];
    [(UIColor *)self->_strokeColor set];
    [v19 stroke];
  }
}

@end