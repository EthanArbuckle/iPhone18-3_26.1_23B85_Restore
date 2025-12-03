@interface _UIStatusBarActivityView
- (CGSize)intrinsicContentSize;
- (_UIStatusBarActivityView)initWithCoder:(id)coder;
- (_UIStatusBarActivityView)initWithFrame:(CGRect)frame;
- (double)_thicknessForTraitCollection:(id)collection;
- (void)_commonInit;
- (void)_stopAnimatingWithStoppingAnimations:(BOOL)animations completionHandler:(id)handler;
- (void)applyStyleAttributes:(id)attributes;
- (void)setColor:(id)color;
- (void)setIsSlow:(BOOL)slow;
- (void)startAnimating;
- (void)stopAnimatingWithCompletionHandler:(id)handler;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _UIStatusBarActivityView

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  imageTintColor = [attributesCopy imageTintColor];
  v6 = [attributesCopy style] == 1;

  v7 = [imageTintColor colorWithAlphaComponent:dbl_18A6816B0[v6]];

  [(_UIStatusBarActivityView *)self setColor:v7];
}

- (void)_commonInit
{
  layer = [MEMORY[0x1E6979398] layer];
  mainLayer = self->_mainLayer;
  self->_mainLayer = layer;

  layer2 = [MEMORY[0x1E6979380] layer];
  barLayer = self->_barLayer;
  self->_barLayer = layer2;

  [(CAGradientLayer *)self->_barLayer setStartPoint:0.0, 0.5];
  [(CAGradientLayer *)self->_barLayer setEndPoint:1.0, 0.5];
  [(CAGradientLayer *)self->_barLayer setLocations:&unk_1EFE2D570];
  [(CALayer *)self->_mainLayer addSublayer:self->_barLayer];
  layer3 = [MEMORY[0x1E6979398] layer];
  pointLayer = self->_pointLayer;
  self->_pointLayer = layer3;

  [(CALayer *)self->_mainLayer addSublayer:self->_pointLayer];
  layer4 = [(UIView *)self layer];
  [layer4 addSublayer:self->_mainLayer];

  LODWORD(v10) = 1112014848;
  [(UIView *)self setContentHuggingPriority:0 forAxis:v10];
  LODWORD(v11) = 1112014848;
  [(UIView *)self setContentCompressionResistancePriority:0 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [(UIView *)self setContentHuggingPriority:1 forAxis:v12];
  LODWORD(v13) = 1148846080;

  [(UIView *)self setContentCompressionResistancePriority:1 forAxis:v13];
}

- (_UIStatusBarActivityView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarActivityView;
  v3 = [(UIView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(_UIStatusBarActivityView *)v3 _commonInit];
  return v3;
}

- (_UIStatusBarActivityView)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarActivityView;
  v3 = [(UIView *)&v5 initWithCoder:coder];
  [(_UIStatusBarActivityView *)v3 _commonInit];
  return v3;
}

- (void)startAnimating
{
  v51[2] = *MEMORY[0x1E69E9840];
  cycleAnimation = self->_cycleAnimation;
  if (!cycleAnimation)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(UIView *)self bounds];
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (self->_isSlow)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.75;
    }

    thickness = self->_thickness;
    Width = CGRectGetWidth(*&v5);
    [(CAGradientLayer *)self->_barLayer setFrame:-(Width * 0.5 - self->_thickness), 0.0, Width * 0.5 - self->_thickness + Width * 0.5 - self->_thickness];
    v16 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position"];
    [v16 setRemovedOnCompletion:0];
    v17 = *MEMORY[0x1E69797E8];
    [v16 setFillMode:*MEMORY[0x1E69797E8]];
    v52.origin.x = v9;
    v52.origin.y = v10;
    v52.size.width = v11;
    v52.size.height = v12;
    v18 = thickness * 0.5;
    v19 = [MEMORY[0x1E696B098] valueWithCGPoint:{v18 + CGRectGetMinX(v52), v18}];
    v51[0] = v19;
    v53.origin.x = v9;
    v53.origin.y = v10;
    v53.size.width = v11;
    v53.size.height = v12;
    v20 = [MEMORY[0x1E696B098] valueWithCGPoint:{CGRectGetMaxX(v53) - v18, v18}];
    v51[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
    [v16 setValues:v21];

    [v16 setKeyTimes:&unk_1EFE2D588];
    v22 = *MEMORY[0x1E6979EB8];
    v23 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    v50 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
    [v16 setTimingFunctions:v24];

    [v16 setDuration:v13];
    [v16 setAutoreverses:1];
    LODWORD(v25) = 2139095040;
    [v16 setRepeatCount:v25];
    v26 = [_UIStatusBarCycleLayerAnimation cycleAnimationWithLayer:self->_mainLayer animation:v16 key:@"position"];
    [array addObject:v26];

    v27 = [MEMORY[0x1E6979390] animationWithKeyPath:@"bounds.size.width"];
    [v27 setRemovedOnCompletion:0];
    [v27 setFillMode:v17];
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thickness];
    v49[0] = v28;
    v29 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thickness + 2.0];
    v49[1] = v29;
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:self->_thickness];
    v49[2] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];
    [v27 setValues:v31];

    [v27 setKeyTimes:&unk_1EFE2D5A0];
    v32 = [MEMORY[0x1E69793D0] functionWithName:v22];
    v48 = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
    [v27 setTimingFunctions:v33];

    [v27 setDuration:v13];
    [v27 setAutoreverses:1];
    LODWORD(v34) = 2139095040;
    [v27 setRepeatCount:v34];
    v35 = [_UIStatusBarCycleLayerAnimation cycleAnimationWithLayer:self->_pointLayer animation:v27 key:@"size"];
    v36 = array;
    [array addObject:v35];

    v37 = [MEMORY[0x1E6979390] animationWithKeyPath:@"locations"];
    [v37 setTimeOffset:v13 * -0.1];
    [v37 setValues:&unk_1EFE2D630];
    [v37 setCalculationMode:*MEMORY[0x1E69795A8]];
    [v37 setKeyTimes:&unk_1EFE2D648];
    v38 = [MEMORY[0x1E69793D0] functionWithName:v22];
    v47[0] = v38;
    v39 = [MEMORY[0x1E69793D0] functionWithName:v22];
    v47[1] = v39;
    v40 = [MEMORY[0x1E69793D0] functionWithName:v22];
    v47[2] = v40;
    v41 = [MEMORY[0x1E69793D0] functionWithName:v22];
    v47[3] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
    [v37 setTimingFunctions:v42];

    [v37 setDuration:v13 + v13];
    LODWORD(v43) = 2139095040;
    [v37 setRepeatCount:v43];
    v44 = [_UIStatusBarCycleLayerAnimation cycleAnimationWithLayer:self->_barLayer animation:v37 key:@"locations"];
    [v36 addObject:v44];

    v45 = [[_UIStatusBarCycleAnimation alloc] initWithLayerAnimations:v36];
    v46 = self->_cycleAnimation;
    self->_cycleAnimation = v45;

    cycleAnimation = self->_cycleAnimation;
  }

  [(_UIStatusBarCycleAnimation *)cycleAnimation start];
}

- (void)stopAnimatingWithCompletionHandler:(id)handler
{
  cycleAnimation = self->_cycleAnimation;
  handlerCopy = handler;
  [(_UIStatusBarCycleAnimation *)cycleAnimation setStopsAfterReversing:0];
  [(_UIStatusBarActivityView *)self _stopAnimatingWithStoppingAnimations:1 completionHandler:handlerCopy];
}

- (void)_stopAnimatingWithStoppingAnimations:(BOOL)animations completionHandler:(id)handler
{
  animationsCopy = animations;
  v11[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ([(_UIStatusBarCycleAnimation *)self->_cycleAnimation state]== 1 && animationsCopy)
  {
    v8 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v8 setDuration:0.2];
    [v8 setToValue:&unk_1EFE2EB38];
    [v8 setRemovedOnCompletion:0];
    [v8 setFillMode:*MEMORY[0x1E69797E8]];
    v9 = [_UIStatusBarCycleLayerAnimation cycleAnimationWithLayer:self->_mainLayer animation:v8 key:@"opacity"];
    v11[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(_UIStatusBarCycleAnimation *)self->_cycleAnimation setStoppingLayerAnimations:v10];
  }

  [(_UIStatusBarCycleAnimation *)self->_cycleAnimation stopWithCompletionHandler:handlerCopy];
}

- (void)setIsSlow:(BOOL)slow
{
  if (self->_isSlow != slow)
  {
    self->_isSlow = slow;
    state = [(_UIStatusBarCycleAnimation *)self->_cycleAnimation state];
    if (state)
    {
      if (state == 2)
      {
        if ([(_UIStatusBarCycleAnimation *)self->_cycleAnimation stopsAfterReversing])
        {
          return;
        }

        v7 = MEMORY[0x1E69E9820];
        v8 = 3221225472;
        v9 = __38___UIStatusBarActivityView_setIsSlow___block_invoke_2;
        v10 = &unk_1E70F5AC0;
        selfCopy = self;
        v5 = &v7;
      }

      else
      {
        if (state != 1)
        {
          return;
        }

        [(_UIStatusBarCycleAnimation *)self->_cycleAnimation setStopsAfterReversing:1];
        v12 = MEMORY[0x1E69E9820];
        v13 = 3221225472;
        v14 = __38___UIStatusBarActivityView_setIsSlow___block_invoke;
        v15 = &unk_1E70F5AC0;
        selfCopy2 = self;
        v5 = &v12;
      }

      [(_UIStatusBarActivityView *)self _stopAnimatingWithStoppingAnimations:0 completionHandler:v5, v7, v8, v9, v10, selfCopy, v12, v13, v14, v15, selfCopy2];
    }

    else
    {
      cycleAnimation = self->_cycleAnimation;
      self->_cycleAnimation = 0;
    }
  }
}

- (double)_thicknessForTraitCollection:(id)collection
{
  [collection displayScale];
  v4 = v3 <= 2.5;
  result = 2.66666667;
  if (v4)
  {
    return 2.5;
  }

  return result;
}

- (void)setColor:(id)color
{
  v10[4] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  if (self->_color != colorCopy)
  {
    objc_storeStrong(&self->_color, color);
    v6 = [(UIColor *)colorCopy colorWithAlphaComponent:1.0];
    v7 = [(UIColor *)colorCopy colorWithAlphaComponent:0.0];
    [(UIColor *)colorCopy alphaComponent];
    *&v8 = v8;
    [(CALayer *)self->_mainLayer setOpacity:v8];
    v10[0] = [v7 CGColor];
    v10[1] = [v6 CGColor];
    v10[2] = [v6 CGColor];
    v10[3] = [v7 CGColor];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
    [(CAGradientLayer *)self->_barLayer setColors:v9];

    -[CALayer setBackgroundColor:](self->_pointLayer, "setBackgroundColor:", [v6 CGColor]);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarActivityView;
  [(UIView *)&v6 traitCollectionDidChange:change];
  traitCollection = [(UIView *)self traitCollection];
  [(_UIStatusBarActivityView *)self _thicknessForTraitCollection:traitCollection];
  self->_thickness = v5;

  [(CALayer *)self->_pointLayer setCornerRadius:self->_thickness * 0.5];
  [(CALayer *)self->_pointLayer setFrame:self->_thickness * -0.5, 0.0, self->_thickness, self->_thickness];
  [(UIView *)self invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  thickness = self->_thickness;
  v3 = -1.0;
  result.height = thickness;
  result.width = v3;
  return result;
}

@end