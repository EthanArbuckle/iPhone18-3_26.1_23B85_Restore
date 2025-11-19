@interface _UIFocusHaloView
- (UIColor)haloColor;
- (_UIFocusHaloView)initWithFrame:(CGRect)a3;
- (double)totalConsumedSpace;
- (id)description;
- (id)resolvedGapColor;
- (void)_updateGapColor;
- (void)_updateHalo;
- (void)_updateHaloForCurrentUserInterfaceStyle;
- (void)didMoveToSuperview;
- (void)setBounds:(CGRect)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setFrame:(CGRect)a3;
- (void)setGapWidth:(double)a3;
- (void)setHidden:(BOOL)a3;
- (void)setPosition:(int64_t)a3;
- (void)setShape:(id)a3;
- (void)setThickness:(double)a3;
- (void)tintColorDidChange;
@end

@implementation _UIFocusHaloView

- (_UIFocusHaloView)initWithFrame:(CGRect)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _UIFocusHaloView;
  v3 = [(UIView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
    v5 = [(UIView *)v4 layer];
    [v5 setAllowsHitTesting:0];

    [(_UIFocusHaloView *)v4 setThickness:3.0];
    [(_UIFocusHaloView *)v4 setGapWidth:1.0];
    v6 = +[UIColor systemBackgroundColor];
    [(_UIFocusHaloView *)v4 setGapColor:v6];

    v7 = objc_opt_self();
    v12[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9 = [(UIView *)v4 registerForTraitChanges:v8 withAction:sel__updateHaloForCurrentUserInterfaceStyle];
  }

  return v4;
}

- (void)setShape:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_shape] & 1) == 0)
  {
    v4 = [v6 copy];
    shape = self->_shape;
    self->_shape = v4;

    [(_UIFocusHaloView *)self _updateHalo];
  }
}

- (void)setPosition:(int64_t)a3
{
  if (self->_position != a3)
  {
    self->_position = a3;
    [(_UIFocusHaloView *)self _updateHalo];
  }
}

- (void)_updateHaloForCurrentUserInterfaceStyle
{
  [(_UIFocusHaloView *)self _updateGapColor];
  v3 = [(_UIFocusHaloView *)self haloColor];
  v4 = [v3 CGColor];
  v5 = [(_UIFocusHaloView *)self haloView];
  v6 = [v5 shapeLayer];
  [v6 setStrokeColor:v4];

  v11 = [(_UIFocusHaloView *)self resolvedGapColor];
  v7 = v11;
  v8 = [v11 CGColor];
  v9 = [(_UIFocusHaloView *)self gapView];
  v10 = [v9 shapeLayer];
  [v10 setStrokeColor:v8];
}

- (void)_updateHalo
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v64 = [(_UIFocusHaloView *)self shape];
  v11 = [v64 zeroOriginShape];
  v12 = [v11 outline];
  v13 = [v12 CGPath];

  [(_UIFocusHaloView *)self thickness];
  v15 = v14 + v14;
  if (![(_UIFocusHaloView *)self position])
  {
    [(_UIFocusHaloView *)self gapWidth];
    v15 = v15 + v16 + v16;
  }

  v17 = [(_UIFocusHaloView *)self haloView];
  if (!v17)
  {
    v17 = [(UIView *)[_UIShapeView alloc] initWithFrame:v4, v6, v8, v10];
    v18 = *MEMORY[0x1E6979E98];
    v19 = [(_UIShapeView *)v17 shapeLayer];
    [v19 setLineJoin:v18];

    v20 = *MEMORY[0x1E6979E78];
    v21 = [(_UIShapeView *)v17 shapeLayer];
    [v21 setLineCap:v20];

    v22 = [(_UIShapeView *)v17 shapeLayer];
    [v22 setAllowsEdgeAntialiasing:1];

    [(UIView *)self addSubview:v17];
    [(_UIFocusHaloView *)self setHaloView:v17];
  }

  v23 = [(_UIShapeView *)v17 shapeLayer];
  [v23 setFillColor:0];

  v24 = [(_UIFocusHaloView *)self haloColor];
  v25 = [v24 CGColor];
  v26 = [(_UIShapeView *)v17 shapeLayer];
  [v26 setStrokeColor:v25];

  v27 = [(_UIShapeView *)v17 shapeLayer];
  [v27 setLineWidth:v15];

  v28 = [(_UIShapeView *)v17 shapeLayer];
  [v28 setPath:v13];

  v29 = [(_UIFocusHaloView *)self gapView];
  if (!v29)
  {
    v29 = [(UIView *)[_UIShapeView alloc] initWithFrame:v4, v6, v8, v10];
    v30 = *MEMORY[0x1E6979E98];
    v31 = [(_UIShapeView *)v29 shapeLayer];
    [v31 setLineJoin:v30];

    v32 = *MEMORY[0x1E6979E78];
    v33 = [(_UIShapeView *)v29 shapeLayer];
    [v33 setLineCap:v32];

    v34 = [(_UIShapeView *)v29 shapeLayer];
    [v34 setAllowsEdgeAntialiasing:1];

    [(UIView *)self addSubview:v29];
    [(_UIFocusHaloView *)self setGapView:v29];
  }

  v35 = [(_UIShapeView *)v29 shapeLayer];
  [v35 setPath:v13];

  if ([(_UIFocusHaloView *)self position])
  {
    v36 = [(_UIShapeView *)v29 shapeLayer];
    [v36 setFillColor:0];

    v37 = [(_UIFocusHaloView *)self resolvedGapColor];
    v38 = [v37 CGColor];
    v39 = [(_UIShapeView *)v29 shapeLayer];
    [v39 setStrokeColor:v38];

    [(_UIFocusHaloView *)self gapWidth];
    v41 = v15 + v40 + v40;
    v42 = [(_UIShapeView *)v29 shapeLayer];
    [v42 setLineWidth:v41];

    v43 = [(_UIShapeView *)v29 shapeLayer];
    [v43 setCompositingFilter:0];

    [(UIView *)self sendSubviewToBack:v29];
    v44 = [(_UIFocusHaloView *)self maskViewWhenInside];

    if (!v44)
    {
      v45 = [(UIView *)[_UIShapeView alloc] initWithFrame:v4, v6, v8, v10];
      [(_UIFocusHaloView *)self setMaskViewWhenInside:v45];

      v46 = +[UIColor blackColor];
      v47 = [v46 CGColor];
      v48 = [(_UIFocusHaloView *)self maskViewWhenInside];
      v49 = [v48 shapeLayer];
      [v49 setFillColor:v47];

      v50 = [(_UIFocusHaloView *)self maskViewWhenInside];
      v51 = [v50 shapeLayer];
      [v51 setAllowsEdgeAntialiasing:1];
    }

    v52 = [(_UIFocusHaloView *)self maskViewWhenInside];
    v53 = [v52 shapeLayer];
    [v53 setPath:v13];

    v54 = [(_UIFocusHaloView *)self maskViewWhenInside];
    [(UIView *)self setMaskView:v54];
  }

  else
  {
    v55 = +[UIColor blackColor];
    v56 = [v55 CGColor];

    v57 = [(_UIShapeView *)v29 shapeLayer];
    [v57 setFillColor:v56];

    v58 = [(_UIShapeView *)v29 shapeLayer];
    [v58 setStrokeColor:v56];

    [(_UIFocusHaloView *)self gapWidth];
    v60 = v59 + v59;
    v61 = [(_UIShapeView *)v29 shapeLayer];
    [v61 setLineWidth:v60];

    v62 = *MEMORY[0x1E69798E8];
    v63 = [(_UIShapeView *)v29 shapeLayer];
    [v63 setCompositingFilter:v62];

    [(UIView *)self bringSubviewToFront:v29];
    [(UIView *)self setMaskView:0];
  }
}

- (double)totalConsumedSpace
{
  [(_UIFocusHaloView *)self thickness];
  v4 = v3;
  [(_UIFocusHaloView *)self gapWidth];
  return v4 + v5 + v4 + v5;
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = _UIFocusHaloView;
  [(UIView *)&v3 didMoveToSuperview];
  [(_UIFocusHaloView *)self _updateGapColor];
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = _UIFocusHaloView;
  [(UIView *)&v7 tintColorDidChange];
  v3 = [(_UIFocusHaloView *)self haloColor];
  v4 = [v3 CGColor];
  v5 = [(_UIFocusHaloView *)self haloView];
  v6 = [v5 shapeLayer];
  [v6 setStrokeColor:v4];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  if (![(_UIFocusHaloView *)self geometryFrozen])
  {
    v5.receiver = self;
    v5.super_class = _UIFocusHaloView;
    [(UIView *)&v5 setHidden:v3];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(_UIFocusHaloView *)self geometryFrozen])
  {
    v8.receiver = self;
    v8.super_class = _UIFocusHaloView;
    [(UIView *)&v8 setFrame:x, y, width, height];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(_UIFocusHaloView *)self geometryFrozen])
  {
    v8.receiver = self;
    v8.super_class = _UIFocusHaloView;
    [(UIView *)&v8 setBounds:x, y, width, height];
  }
}

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(_UIFocusHaloView *)self geometryFrozen])
  {
    v6.receiver = self;
    v6.super_class = _UIFocusHaloView;
    [(UIView *)&v6 setCenter:x, y];
  }
}

- (void)setThickness:(double)a3
{
  if (vabdd_f64(a3, self->_thickness) > 2.22044605e-16)
  {
    self->_thickness = a3;
    [(_UIFocusHaloView *)self _updateHalo];
  }
}

- (void)setGapWidth:(double)a3
{
  if (vabdd_f64(a3, self->_gapWidth) > 2.22044605e-16)
  {
    self->_gapWidth = a3;
    [(_UIFocusHaloView *)self _updateHalo];
  }
}

- (UIColor)haloColor
{
  v3 = [(UIView *)self traitCollection];
  v4 = [(UIView *)self tintColor];
  v5 = [v4 resolvedColorWithTraitCollection:v3];

  return v5;
}

- (id)resolvedGapColor
{
  v3 = [(_UIFocusHaloView *)self gapSourceTraitCollection];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(UIView *)self traitCollection];
  }

  v6 = v5;

  v7 = [(_UIFocusHaloView *)self gapColor];
  v8 = [v7 resolvedColorWithTraitCollection:v6];

  return v8;
}

- (void)_updateGapColor
{
  v3 = [(UIView *)self superview];
  if (v3)
  {
    v17 = v3;
    if ([(_UIFocusHaloView *)self position]== 1)
    {
      v4 = v17;
      while (1)
      {
        v18 = v4;
        v5 = [v4 backgroundColor];
        v6 = [v5 _isOpaque];

        if (v6)
        {
          break;
        }

        v4 = v18;
        if ((v18[91] & 0x40) == 0)
        {
          v7 = [v18 superview];

          v4 = v7;
          if (v7)
          {
            continue;
          }
        }

        goto LABEL_9;
      }

      v4 = v18;
LABEL_9:
      v17 = v4;
      v8 = [v4 backgroundColor];
      v9 = [v8 _isOpaque];

      if (v9)
      {
        v10 = [(UIView *)v17 backgroundColor];
        v11 = v17;
      }

      else
      {
        v10 = +[UIColor clearColor];
        v11 = self;
      }

      [(_UIFocusHaloView *)self setGapColor:v10];

      v12 = [(UIView *)v11 traitCollection];
      [(_UIFocusHaloView *)self setGapSourceTraitCollection:v12];

      v13 = [(_UIFocusHaloView *)self resolvedGapColor];
      v14 = [v13 CGColor];
      v15 = [(_UIFocusHaloView *)self gapView];
      v16 = [v15 shapeLayer];
      [v16 setStrokeColor:v14];
    }

    v3 = v17;
  }
}

- (id)description
{
  if (os_variant_has_internal_diagnostics())
  {
    v10.receiver = self;
    v10.super_class = _UIFocusHaloView;
    v5 = [(UIView *)&v10 description];
    v3 = [v5 mutableCopy];

    [v3 replaceCharactersInRange:objc_msgSend(v3 withString:{"length") - 1, 1, @"; "}];
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(_UIFocusHaloView *)self shape];
    v8 = [v6 stringWithFormat:@"shape = %@ ", v7];;
    [v3 appendString:v8];

    [(_UIFocusHaloView *)self position];
    [v3 appendString:@"position = outside; "];
    if ([(_UIFocusHaloView *)self geometryFrozen])
    {
      [v3 appendString:@"geometryFrozen = YES; "];
    }

    [v3 appendString:@">"];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIFocusHaloView;
    v3 = [(UIView *)&v9 description];
  }

  return v3;
}

@end