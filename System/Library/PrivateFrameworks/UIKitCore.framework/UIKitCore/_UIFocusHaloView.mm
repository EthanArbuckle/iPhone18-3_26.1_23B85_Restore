@interface _UIFocusHaloView
- (UIColor)haloColor;
- (_UIFocusHaloView)initWithFrame:(CGRect)frame;
- (double)totalConsumedSpace;
- (id)description;
- (id)resolvedGapColor;
- (void)_updateGapColor;
- (void)_updateHalo;
- (void)_updateHaloForCurrentUserInterfaceStyle;
- (void)didMoveToSuperview;
- (void)setBounds:(CGRect)bounds;
- (void)setCenter:(CGPoint)center;
- (void)setFrame:(CGRect)frame;
- (void)setGapWidth:(double)width;
- (void)setHidden:(BOOL)hidden;
- (void)setPosition:(int64_t)position;
- (void)setShape:(id)shape;
- (void)setThickness:(double)thickness;
- (void)tintColorDidChange;
@end

@implementation _UIFocusHaloView

- (_UIFocusHaloView)initWithFrame:(CGRect)frame
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _UIFocusHaloView;
  v3 = [(UIView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
    layer = [(UIView *)v4 layer];
    [layer setAllowsHitTesting:0];

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

- (void)setShape:(id)shape
{
  shapeCopy = shape;
  if (([shapeCopy isEqual:self->_shape] & 1) == 0)
  {
    v4 = [shapeCopy copy];
    shape = self->_shape;
    self->_shape = v4;

    [(_UIFocusHaloView *)self _updateHalo];
  }
}

- (void)setPosition:(int64_t)position
{
  if (self->_position != position)
  {
    self->_position = position;
    [(_UIFocusHaloView *)self _updateHalo];
  }
}

- (void)_updateHaloForCurrentUserInterfaceStyle
{
  [(_UIFocusHaloView *)self _updateGapColor];
  haloColor = [(_UIFocusHaloView *)self haloColor];
  cGColor = [haloColor CGColor];
  haloView = [(_UIFocusHaloView *)self haloView];
  shapeLayer = [haloView shapeLayer];
  [shapeLayer setStrokeColor:cGColor];

  resolvedGapColor = [(_UIFocusHaloView *)self resolvedGapColor];
  v7 = resolvedGapColor;
  cGColor2 = [resolvedGapColor CGColor];
  gapView = [(_UIFocusHaloView *)self gapView];
  shapeLayer2 = [gapView shapeLayer];
  [shapeLayer2 setStrokeColor:cGColor2];
}

- (void)_updateHalo
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  shape = [(_UIFocusHaloView *)self shape];
  zeroOriginShape = [shape zeroOriginShape];
  outline = [zeroOriginShape outline];
  cGPath = [outline CGPath];

  [(_UIFocusHaloView *)self thickness];
  v15 = v14 + v14;
  if (![(_UIFocusHaloView *)self position])
  {
    [(_UIFocusHaloView *)self gapWidth];
    v15 = v15 + v16 + v16;
  }

  haloView = [(_UIFocusHaloView *)self haloView];
  if (!haloView)
  {
    haloView = [(UIView *)[_UIShapeView alloc] initWithFrame:v4, v6, v8, v10];
    v18 = *MEMORY[0x1E6979E98];
    shapeLayer = [(_UIShapeView *)haloView shapeLayer];
    [shapeLayer setLineJoin:v18];

    v20 = *MEMORY[0x1E6979E78];
    shapeLayer2 = [(_UIShapeView *)haloView shapeLayer];
    [shapeLayer2 setLineCap:v20];

    shapeLayer3 = [(_UIShapeView *)haloView shapeLayer];
    [shapeLayer3 setAllowsEdgeAntialiasing:1];

    [(UIView *)self addSubview:haloView];
    [(_UIFocusHaloView *)self setHaloView:haloView];
  }

  shapeLayer4 = [(_UIShapeView *)haloView shapeLayer];
  [shapeLayer4 setFillColor:0];

  haloColor = [(_UIFocusHaloView *)self haloColor];
  cGColor = [haloColor CGColor];
  shapeLayer5 = [(_UIShapeView *)haloView shapeLayer];
  [shapeLayer5 setStrokeColor:cGColor];

  shapeLayer6 = [(_UIShapeView *)haloView shapeLayer];
  [shapeLayer6 setLineWidth:v15];

  shapeLayer7 = [(_UIShapeView *)haloView shapeLayer];
  [shapeLayer7 setPath:cGPath];

  gapView = [(_UIFocusHaloView *)self gapView];
  if (!gapView)
  {
    gapView = [(UIView *)[_UIShapeView alloc] initWithFrame:v4, v6, v8, v10];
    v30 = *MEMORY[0x1E6979E98];
    shapeLayer8 = [(_UIShapeView *)gapView shapeLayer];
    [shapeLayer8 setLineJoin:v30];

    v32 = *MEMORY[0x1E6979E78];
    shapeLayer9 = [(_UIShapeView *)gapView shapeLayer];
    [shapeLayer9 setLineCap:v32];

    shapeLayer10 = [(_UIShapeView *)gapView shapeLayer];
    [shapeLayer10 setAllowsEdgeAntialiasing:1];

    [(UIView *)self addSubview:gapView];
    [(_UIFocusHaloView *)self setGapView:gapView];
  }

  shapeLayer11 = [(_UIShapeView *)gapView shapeLayer];
  [shapeLayer11 setPath:cGPath];

  if ([(_UIFocusHaloView *)self position])
  {
    shapeLayer12 = [(_UIShapeView *)gapView shapeLayer];
    [shapeLayer12 setFillColor:0];

    resolvedGapColor = [(_UIFocusHaloView *)self resolvedGapColor];
    cGColor2 = [resolvedGapColor CGColor];
    shapeLayer13 = [(_UIShapeView *)gapView shapeLayer];
    [shapeLayer13 setStrokeColor:cGColor2];

    [(_UIFocusHaloView *)self gapWidth];
    v41 = v15 + v40 + v40;
    shapeLayer14 = [(_UIShapeView *)gapView shapeLayer];
    [shapeLayer14 setLineWidth:v41];

    shapeLayer15 = [(_UIShapeView *)gapView shapeLayer];
    [shapeLayer15 setCompositingFilter:0];

    [(UIView *)self sendSubviewToBack:gapView];
    maskViewWhenInside = [(_UIFocusHaloView *)self maskViewWhenInside];

    if (!maskViewWhenInside)
    {
      v45 = [(UIView *)[_UIShapeView alloc] initWithFrame:v4, v6, v8, v10];
      [(_UIFocusHaloView *)self setMaskViewWhenInside:v45];

      v46 = +[UIColor blackColor];
      cGColor3 = [v46 CGColor];
      maskViewWhenInside2 = [(_UIFocusHaloView *)self maskViewWhenInside];
      shapeLayer16 = [maskViewWhenInside2 shapeLayer];
      [shapeLayer16 setFillColor:cGColor3];

      maskViewWhenInside3 = [(_UIFocusHaloView *)self maskViewWhenInside];
      shapeLayer17 = [maskViewWhenInside3 shapeLayer];
      [shapeLayer17 setAllowsEdgeAntialiasing:1];
    }

    maskViewWhenInside4 = [(_UIFocusHaloView *)self maskViewWhenInside];
    shapeLayer18 = [maskViewWhenInside4 shapeLayer];
    [shapeLayer18 setPath:cGPath];

    maskViewWhenInside5 = [(_UIFocusHaloView *)self maskViewWhenInside];
    [(UIView *)self setMaskView:maskViewWhenInside5];
  }

  else
  {
    v55 = +[UIColor blackColor];
    cGColor4 = [v55 CGColor];

    shapeLayer19 = [(_UIShapeView *)gapView shapeLayer];
    [shapeLayer19 setFillColor:cGColor4];

    shapeLayer20 = [(_UIShapeView *)gapView shapeLayer];
    [shapeLayer20 setStrokeColor:cGColor4];

    [(_UIFocusHaloView *)self gapWidth];
    v60 = v59 + v59;
    shapeLayer21 = [(_UIShapeView *)gapView shapeLayer];
    [shapeLayer21 setLineWidth:v60];

    v62 = *MEMORY[0x1E69798E8];
    shapeLayer22 = [(_UIShapeView *)gapView shapeLayer];
    [shapeLayer22 setCompositingFilter:v62];

    [(UIView *)self bringSubviewToFront:gapView];
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
  haloColor = [(_UIFocusHaloView *)self haloColor];
  cGColor = [haloColor CGColor];
  haloView = [(_UIFocusHaloView *)self haloView];
  shapeLayer = [haloView shapeLayer];
  [shapeLayer setStrokeColor:cGColor];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if (![(_UIFocusHaloView *)self geometryFrozen])
  {
    v5.receiver = self;
    v5.super_class = _UIFocusHaloView;
    [(UIView *)&v5 setHidden:hiddenCopy];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (![(_UIFocusHaloView *)self geometryFrozen])
  {
    v8.receiver = self;
    v8.super_class = _UIFocusHaloView;
    [(UIView *)&v8 setFrame:x, y, width, height];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (![(_UIFocusHaloView *)self geometryFrozen])
  {
    v8.receiver = self;
    v8.super_class = _UIFocusHaloView;
    [(UIView *)&v8 setBounds:x, y, width, height];
  }
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  if (![(_UIFocusHaloView *)self geometryFrozen])
  {
    v6.receiver = self;
    v6.super_class = _UIFocusHaloView;
    [(UIView *)&v6 setCenter:x, y];
  }
}

- (void)setThickness:(double)thickness
{
  if (vabdd_f64(thickness, self->_thickness) > 2.22044605e-16)
  {
    self->_thickness = thickness;
    [(_UIFocusHaloView *)self _updateHalo];
  }
}

- (void)setGapWidth:(double)width
{
  if (vabdd_f64(width, self->_gapWidth) > 2.22044605e-16)
  {
    self->_gapWidth = width;
    [(_UIFocusHaloView *)self _updateHalo];
  }
}

- (UIColor)haloColor
{
  traitCollection = [(UIView *)self traitCollection];
  tintColor = [(UIView *)self tintColor];
  v5 = [tintColor resolvedColorWithTraitCollection:traitCollection];

  return v5;
}

- (id)resolvedGapColor
{
  gapSourceTraitCollection = [(_UIFocusHaloView *)self gapSourceTraitCollection];
  v4 = gapSourceTraitCollection;
  if (gapSourceTraitCollection)
  {
    traitCollection = gapSourceTraitCollection;
  }

  else
  {
    traitCollection = [(UIView *)self traitCollection];
  }

  v6 = traitCollection;

  gapColor = [(_UIFocusHaloView *)self gapColor];
  v8 = [gapColor resolvedColorWithTraitCollection:v6];

  return v8;
}

- (void)_updateGapColor
{
  superview = [(UIView *)self superview];
  if (superview)
  {
    v17 = superview;
    if ([(_UIFocusHaloView *)self position]== 1)
    {
      v4 = v17;
      while (1)
      {
        v18 = v4;
        backgroundColor = [v4 backgroundColor];
        _isOpaque = [backgroundColor _isOpaque];

        if (_isOpaque)
        {
          break;
        }

        v4 = v18;
        if ((v18[91] & 0x40) == 0)
        {
          superview2 = [v18 superview];

          v4 = superview2;
          if (superview2)
          {
            continue;
          }
        }

        goto LABEL_9;
      }

      v4 = v18;
LABEL_9:
      v17 = v4;
      backgroundColor2 = [v4 backgroundColor];
      _isOpaque2 = [backgroundColor2 _isOpaque];

      if (_isOpaque2)
      {
        backgroundColor3 = [(UIView *)v17 backgroundColor];
        selfCopy = v17;
      }

      else
      {
        backgroundColor3 = +[UIColor clearColor];
        selfCopy = self;
      }

      [(_UIFocusHaloView *)self setGapColor:backgroundColor3];

      traitCollection = [(UIView *)selfCopy traitCollection];
      [(_UIFocusHaloView *)self setGapSourceTraitCollection:traitCollection];

      resolvedGapColor = [(_UIFocusHaloView *)self resolvedGapColor];
      cGColor = [resolvedGapColor CGColor];
      gapView = [(_UIFocusHaloView *)self gapView];
      shapeLayer = [gapView shapeLayer];
      [shapeLayer setStrokeColor:cGColor];
    }

    superview = v17;
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
    shape = [(_UIFocusHaloView *)self shape];
    v8 = [v6 stringWithFormat:@"shape = %@ ", shape];;
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