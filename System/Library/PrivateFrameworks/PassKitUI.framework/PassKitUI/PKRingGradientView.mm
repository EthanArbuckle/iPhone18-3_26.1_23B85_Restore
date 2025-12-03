@interface PKRingGradientView
- (CGPoint)_center;
- (CGPoint)_centerPointForMaskViewWithAngle:(double)angle adjustToCover:(BOOL)cover;
- (PKRingGradientView)init;
- (double)_maskRadius;
- (double)_radius;
- (double)ringWidth;
- (double)strokeWidth;
- (double)totalWidth;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateEffectiveColors;
- (void)_updateGradient;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setCurrentAngle:(double)angle;
- (void)setEnabled:(BOOL)enabled;
- (void)setFillColor:(id)color;
- (void)setGradientEndColor:(id)color;
- (void)setGradientStartColor:(id)color;
- (void)setMinimumAngle:(double)angle;
- (void)setStrokeColor:(id)color;
@end

@implementation PKRingGradientView

- (PKRingGradientView)init
{
  v32.receiver = self;
  v32.super_class = PKRingGradientView;
  v2 = [(PKRingGradientView *)&v32 init];
  v3 = v2;
  if (v2)
  {
    [(PKRingGradientView *)v2 setOpaque:0];
    [(PKRingGradientView *)v3 setClipsToBounds:1];
    v3->_enabled = 1;
    v4 = objc_alloc_init(MEMORY[0x1E6979380]);
    gradientLayer = v3->_gradientLayer;
    v3->_gradientLayer = v4;

    [(CAGradientLayer *)v3->_gradientLayer setStartPoint:0.5, 0.5];
    [(CAGradientLayer *)v3->_gradientLayer setEndPoint:0.5, 0.0];
    [(CAGradientLayer *)v3->_gradientLayer setType:*MEMORY[0x1E6979DA8]];
    v6 = v3->_gradientLayer;
    v7 = PKLayerNullActions();
    [(CAGradientLayer *)v6 setActions:v7];

    v8 = objc_alloc_init(MEMORY[0x1E69794A0]);
    gradientMaskLayer = v3->_gradientMaskLayer;
    v3->_gradientMaskLayer = v8;

    [(CAShapeLayer *)v3->_gradientMaskLayer setFillColor:0];
    v10 = v3->_gradientMaskLayer;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    -[CAShapeLayer setStrokeColor:](v10, "setStrokeColor:", [blackColor CGColor]);

    v12 = v3->_gradientMaskLayer;
    v13 = PKLayerNullActions();
    [(CAShapeLayer *)v12 setActions:v13];

    [(CAGradientLayer *)v3->_gradientLayer setMask:v3->_gradientMaskLayer];
    v14 = objc_alloc_init(MEMORY[0x1E69794A0]);
    strokeLayer = v3->_strokeLayer;
    v3->_strokeLayer = v14;

    [(CAShapeLayer *)v3->_strokeLayer setFillColor:0];
    v16 = v3->_strokeLayer;
    v17 = PKLayerNullActions();
    [(CAShapeLayer *)v16 setActions:v17];

    v18 = objc_alloc_init(MEMORY[0x1E69794A0]);
    backgroundLayer = v3->_backgroundLayer;
    v3->_backgroundLayer = v18;

    [(CAShapeLayer *)v3->_backgroundLayer setFillColor:0];
    v20 = v3->_backgroundLayer;
    v21 = PKLayerNullActions();
    [(CAShapeLayer *)v20 setActions:v21];

    v22 = objc_alloc_init(MEMORY[0x1E69794A0]);
    backgroundCap = v3->_backgroundCap;
    v3->_backgroundCap = v22;

    [(CAShapeLayer *)v3->_backgroundCap setFillColor:0];
    v24 = v3->_backgroundCap;
    v25 = PKLayerNullActions();
    [(CAShapeLayer *)v24 setActions:v25];

    v26 = objc_alloc_init(MEMORY[0x1E69794A0]);
    gradientCap = v3->_gradientCap;
    v3->_gradientCap = v26;

    [(CAShapeLayer *)v3->_gradientCap setFillColor:0];
    v28 = v3->_gradientCap;
    v29 = PKLayerNullActions();
    [(CAShapeLayer *)v28 setActions:v29];

    layer = [(PKRingGradientView *)v3 layer];
    [layer addSublayer:v3->_strokeLayer];
    [layer addSublayer:v3->_backgroundLayer];
    [layer addSublayer:v3->_gradientLayer];
    [layer addSublayer:v3->_backgroundCap];
    [layer addSublayer:v3->_gradientCap];
  }

  return v3;
}

- (void)dealloc
{
  CGColorRelease(self->_effectiveStartColor);
  CGColorRelease(self->_effectiveEndColor);
  CGColorRelease(self->_effectiveFillColor);
  CGColorRelease(self->_effectiveStrokeColor);
  v3.receiver = self;
  v3.super_class = PKRingGradientView;
  [(PKRingGradientView *)&v3 dealloc];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = PKRingGradientView;
  [(PKRingGradientView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(PKRingGradientView *)self _updateEffectiveColors];
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = PKRingGradientView;
  [(PKRingGradientView *)&v35 layoutSubviews];
  [(PKRingGradientView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKRingGradientView *)self _center];
  v33 = v12;
  v34 = v11;
  [(PKRingGradientView *)self _radius];
  v14 = v13;
  [(PKRingGradientView *)self totalWidth];
  v16 = v14 + v15 * -0.5;
  [(PKRingGradientView *)self ringWidth];
  v18 = v17;
  [(PKRingGradientView *)self _maskRadius];
  [(PKRingGradientView *)self strokeWidth];
  v20 = v19;
  [(PKRingGradientView *)self _offsetStartAngle];
  [(PKRingGradientView *)self _offsetEndAngle];
  v22 = v21;
  [(CAGradientLayer *)self->_gradientLayer setFrame:v4, v6, v8, v10];
  [(CAShapeLayer *)self->_gradientMaskLayer setLineWidth:v18];
  v23 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:v34 startAngle:v33 endAngle:v16 clockwise:{0.0, 6.28318531}];
  strokeLayer = self->_strokeLayer;
  [(PKRingGradientView *)self totalWidth];
  [(CAShapeLayer *)strokeLayer setLineWidth:?];
  -[CAShapeLayer setPath:](self->_strokeLayer, "setPath:", [v23 CGPath]);
  v25 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:v34 startAngle:v33 endAngle:v16 clockwise:{0.0, 6.28318531}];
  [(CAShapeLayer *)self->_backgroundLayer setLineWidth:v18];
  -[CAShapeLayer setPath:](self->_backgroundLayer, "setPath:", [v25 CGPath]);
  [(CAShapeLayer *)self->_backgroundCap setLineWidth:v20];
  [(PKRingGradientView *)self _centerPointForMaskViewWithAngle:0 adjustToCover:4.71238898];
  v26 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:? startAngle:? endAngle:? clockwise:?];
  -[CAShapeLayer setPath:](self->_backgroundCap, "setPath:", [v26 CGPath]);
  [(PKRingGradientView *)self _centerPointForMaskViewWithAngle:1 adjustToCover:v22];
  v27 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:? startAngle:? endAngle:? clockwise:?];
  -[CAShapeLayer setPath:](self->_gradientCap, "setPath:", [v27 CGPath]);
  if (self->_effectiveStartColor && self->_effectiveEndColor && (BlendedLinearColor = PKColorCreateBlendedLinearColor()) != 0)
  {
    v29 = BlendedLinearColor;
    v30 = [MEMORY[0x1E69DC888] colorWithCGColor:BlendedLinearColor];
    CFRelease(v29);
  }

  else
  {
    v30 = 0;
  }

  gradientCap = self->_gradientCap;
  effectiveFillColor = [v30 CGColor];
  if (!effectiveFillColor)
  {
    effectiveFillColor = self->_effectiveFillColor;
  }

  [(CAShapeLayer *)gradientCap setFillColor:effectiveFillColor];
  self->_gradientCapIsFillColor = v30 == 0;
  [(CAShapeLayer *)self->_gradientCap setLineWidth:v20];
  [(PKRingGradientView *)self _updateGradient];
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(CAGradientLayer *)self->_gradientLayer setHidden:!enabled];
    gradientCap = self->_gradientCap;
    v5 = !self->_enabled;

    [(CAShapeLayer *)gradientCap setHidden:v5];
  }
}

- (void)setGradientStartColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    v4 = [colorCopy copy];
    gradientStartColor = self->_gradientStartColor;
    self->_gradientStartColor = v4;

    [(PKRingGradientView *)self _updateEffectiveColors];
  }
}

- (void)setGradientEndColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    v4 = [colorCopy copy];
    gradientEndColor = self->_gradientEndColor;
    self->_gradientEndColor = v4;

    [(PKRingGradientView *)self _updateEffectiveColors];
  }
}

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_strokeColor, color);
    [(PKRingGradientView *)self _updateEffectiveColors];
  }
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_fillColor, color);
    [(PKRingGradientView *)self _updateEffectiveColors];
  }
}

- (void)setMinimumAngle:(double)angle
{
  if (self->_minimumAngle != angle)
  {
    self->_minimumAngle = angle;
    [(PKRingGradientView *)self setNeedsLayout];
  }
}

- (void)setCurrentAngle:(double)angle
{
  if (self->_currentAngle != angle)
  {
    self->_currentAngle = angle;
    [(PKRingGradientView *)self setNeedsLayout];
  }
}

- (double)ringWidth
{
  [(PKRingGradientView *)self _radius];

  PKFloatRoundToPixel();
  return result;
}

- (double)strokeWidth
{
  [(PKRingGradientView *)self _radius];

  PKFloatRoundToPixel();
  return result;
}

- (double)totalWidth
{
  [(PKRingGradientView *)self strokeWidth];
  v4 = v3;
  [(PKRingGradientView *)self ringWidth];
  return v5 + v4 * 2.0;
}

- (void)_updateEffectiveColors
{
  CGColorRelease(self->_effectiveStartColor);
  CGColorRelease(self->_effectiveEndColor);
  CGColorRelease(self->_effectiveFillColor);
  CGColorRelease(self->_effectiveStrokeColor);
  traitCollection = [(PKRingGradientView *)self traitCollection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PKRingGradientView__updateEffectiveColors__block_invoke;
  v7[3] = &unk_1E8010970;
  v7[4] = self;
  PKUIPerformWithEffectiveTraitCollection(traitCollection, v7);

  effectiveStrokeColor = self->_effectiveStrokeColor;
  effectiveFillColor = self->_effectiveFillColor;
  if (effectiveStrokeColor)
  {
    if (!effectiveFillColor)
    {
      effectiveFillColor = CGColorRetain(effectiveStrokeColor);
      self->_effectiveFillColor = effectiveFillColor;
    }
  }

  else if (effectiveFillColor)
  {
    self->_effectiveStrokeColor = CGColorRetain(self->_effectiveFillColor);
    effectiveFillColor = self->_effectiveFillColor;
  }

  [(CAShapeLayer *)self->_backgroundLayer setStrokeColor:effectiveFillColor];
  [(CAShapeLayer *)self->_backgroundCap setFillColor:self->_effectiveFillColor];
  if (self->_gradientCapIsFillColor)
  {
    [(CAShapeLayer *)self->_gradientCap setFillColor:self->_effectiveFillColor];
  }

  [(CAShapeLayer *)self->_strokeLayer setStrokeColor:self->_effectiveStrokeColor];
  [(CAShapeLayer *)self->_backgroundCap setStrokeColor:self->_effectiveStrokeColor];
  [(CAShapeLayer *)self->_gradientCap setStrokeColor:self->_effectiveStrokeColor];
  if (self->_effectiveStartColor && self->_effectiveEndColor)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v6 addObject:self->_effectiveStartColor];
    [v6 addObject:self->_effectiveEndColor];
    [(CAGradientLayer *)self->_gradientLayer setColors:v6];
  }

  [(PKRingGradientView *)self setNeedsLayout];
}

CGColorRef __44__PKRingGradientView__updateEffectiveColors__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 528) pkui_extendedLinearColor];
  *(*(a1 + 32) + 472) = CGColorRetain([v2 CGColor]);

  v3 = [*(*(a1 + 32) + 536) pkui_extendedLinearColor];
  *(*(a1 + 32) + 480) = CGColorRetain([v3 CGColor]);

  *(*(a1 + 32) + 488) = CGColorRetain([*(*(a1 + 32) + 512) CGColor]);
  result = CGColorRetain([*(*(a1 + 32) + 520) CGColor]);
  *(*(a1 + 32) + 496) = result;
  return result;
}

- (void)_updateGradient
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (self->_effectiveStartColor)
  {
    if (self->_effectiveEndColor)
    {
      gradientLayer = self->_gradientLayer;
      v19[0] = &unk_1F3CC6F80;
      v4 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(self->_minimumAngle, self->_currentAngle) / 6.28318531}];
      v19[1] = v4;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
      [(CAGradientLayer *)gradientLayer setLocations:v5];

      [(PKRingGradientView *)self _radius];
      v7 = v6;
      [(PKRingGradientView *)self totalWidth];
      v9 = v7 + v8 * -0.5;
      v10 = MEMORY[0x1E69DC728];
      [(PKRingGradientView *)self _center];
      v12 = v11;
      v14 = v13;
      [(PKRingGradientView *)self _offsetStartAngle];
      v16 = v15;
      [(PKRingGradientView *)self _offsetEndAngle];
      v18 = [v10 bezierPathWithArcCenter:1 radius:v12 startAngle:v14 endAngle:v9 clockwise:{v16, v17}];
      -[CAShapeLayer setPath:](self->_gradientMaskLayer, "setPath:", [v18 CGPath]);
    }
  }
}

- (double)_radius
{
  [(PKRingGradientView *)self bounds];
  if (v2 >= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  return v4 * 0.5;
}

- (CGPoint)_center
{
  [(PKRingGradientView *)self bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  MidX = CGRectGetMidX(v10);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  MidY = CGRectGetMidY(v11);
  v8 = MidX;
  result.y = MidY;
  result.x = v8;
  return result;
}

- (double)_maskRadius
{
  [(PKRingGradientView *)self ringWidth];
  v4 = v3;
  [(PKRingGradientView *)self strokeWidth];
  return (v4 + v5) * 0.5;
}

- (CGPoint)_centerPointForMaskViewWithAngle:(double)angle adjustToCover:(BOOL)cover
{
  coverCopy = cover;
  [(PKRingGradientView *)self _center];
  v8 = v7;
  v10 = v9;
  [(PKRingGradientView *)self _maskRadius];
  v12 = v11;
  [(PKRingGradientView *)self _radius];
  v14 = v13 - v12;
  [(PKRingGradientView *)self strokeWidth];
  v16 = v14 + v15 * -0.5;
  if (coverCopy)
  {
    v17 = PKUIPixelLength();
    angle = angle + asin(v17 / v16) * -5.0;
  }

  v18 = __sincos_stret(angle);
  v19 = v10 + v16 * v18.__sinval;
  v20 = v8 + v16 * v18.__cosval;
  result.y = v19;
  result.x = v20;
  return result;
}

@end