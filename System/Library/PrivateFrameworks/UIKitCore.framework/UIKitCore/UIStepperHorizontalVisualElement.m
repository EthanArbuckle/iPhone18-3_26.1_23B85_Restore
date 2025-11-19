@interface UIStepperHorizontalVisualElement
+ (CGSize)initialSize;
+ (UIEdgeInsets)initialAlignmentRectInsets;
+ (id)_highlightOpacityAnimation;
+ (id)_highlightSizeAnimation;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)pointMostlyInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_leftHighlightFrame;
- (CGRect)_leftHighlightInsetFrame;
- (CGRect)_rightHighlightFrame;
- (CGRect)_rightHighlightInsetFrame;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (UIEdgeInsets)alignmentRectInsetsForControl:(id)a3;
- (UIStepperControl)stepperControl;
- (UIStepperHorizontalVisualElement)initWithFrame:(CGRect)a3;
- (id)_alphaAnimator:(BOOL)a3;
- (id)dividerImageForLeftSegmentState:(unint64_t)a3 rightSegmentState:(unint64_t)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)incrementImageForState:(unint64_t)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_commonStepperInit;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_startTimer;
- (void)_stopTimer;
- (void)_updateBackgroundForButtonState;
- (void)_updateButton:(id)a3 backgroundView:(id)a4 highlightView:(id)a5 backgroundImage:(id)a6 highlightImage:(id)a7 onRight:(BOOL)a8;
- (void)_updateButtonEnabled;
- (void)_updateCount:(id)a3;
- (void)_updateDividerImageForButtonState;
- (void)_updateHighlight:(id)a3 button:(id)a4 onRight:(BOOL)a5;
- (void)_updateHighlightingAtPoint:(CGPoint)a3 withEvent:(id)a4;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4;
- (void)setDecrementImage:(id)a3 forState:(unint64_t)a4;
- (void)setDividerImage:(id)a3 forLeftSegmentState:(unint64_t)a4 rightSegmentState:(unint64_t)a5;
- (void)setEnabled:(BOOL)a3;
- (void)setIncrementImage:(id)a3 forState:(unint64_t)a4;
- (void)setMaximumValue:(double)a3;
- (void)setMinimumValue:(double)a3;
- (void)setStepValue:(double)a3;
- (void)setTintColor:(id)a3;
- (void)setValue:(double)minimumValue;
@end

@implementation UIStepperHorizontalVisualElement

- (UIStepperHorizontalVisualElement)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIStepperHorizontalVisualElement;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIStepperHorizontalVisualElement *)v3 _commonStepperInit];
    [(UIStepperHorizontalVisualElement *)v4 _updateButtonEnabled];
  }

  return v4;
}

- (void)setValue:(double)minimumValue
{
  if (self->_minimumValue > minimumValue)
  {
    minimumValue = self->_minimumValue;
  }

  if (minimumValue >= self->_maximumValue)
  {
    minimumValue = self->_maximumValue;
  }

  if (minimumValue != self->_value)
  {
    self->_value = minimumValue;
    [(UIStepperHorizontalVisualElement *)self _updateButtonEnabled];
    v5 = [(UIStepperHorizontalVisualElement *)self stepperControl];
    [v5 visualElementDidSetValue:self];
  }
}

- (void)setMinimumValue:(double)a3
{
  if (self->_minimumValue != a3)
  {
    if (self->_maximumValue < a3)
    {
      [(UIStepperHorizontalVisualElement *)self setMaximumValue:a3];
    }

    self->_minimumValue = a3;
    value = self->_value;
    if (value < a3)
    {
      value = a3;
    }

    [(UIStepperHorizontalVisualElement *)self setValue:value];

    [(UIStepperHorizontalVisualElement *)self _updateButtonEnabled];
  }
}

- (void)setMaximumValue:(double)a3
{
  if (self->_maximumValue != a3)
  {
    if (self->_minimumValue > a3)
    {
      [(UIStepperHorizontalVisualElement *)self setMinimumValue:a3];
    }

    self->_maximumValue = a3;
    value = self->_value;
    if (value >= a3)
    {
      value = a3;
    }

    [(UIStepperHorizontalVisualElement *)self setValue:value];

    [(UIStepperHorizontalVisualElement *)self _updateButtonEnabled];
  }
}

- (void)setStepValue:(double)a3
{
  if (self->_stepValue != a3)
  {
    if (a3 <= 0.0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"stepValue must be greater than 0"];
    }

    self->_stepValue = a3;
  }
}

- (void)setEnabled:(BOOL)a3
{
  if ([(UIStepperHorizontalVisualElement *)self isEnabled]!= a3)
  {
    self->_enabled = a3;
    [(UIStepperHorizontalVisualElement *)self _updateButtonEnabled];
    v5 = 1.0;
    if (a3 || ([(UIView *)self alpha], v7 = v6, v5 = 0.5, v7 > 0.5))
    {

      [(UIView *)self setAlpha:v5];
    }
  }
}

+ (CGSize)initialSize
{
  +[UISegmentedControl _defaultHeight];
  v3 = v2;
  v4 = 94.0;
  result.height = v3;
  result.width = v4;
  return result;
}

+ (UIEdgeInsets)initialAlignmentRectInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  v4 = [(UIButton *)self->_plusButton backgroundImageForState:0, a3.width, a3.height];
  [v4 size];
  v6 = v5;
  v8 = v7;

  v9 = [(UIButton *)self->_minusButton backgroundImageForState:0];
  [v9 size];
  v11 = v10;

  v12 = fmax(v6 + v11, 94.0);
  +[UISegmentedControl _defaultHeight];
  if (v13 >= v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = v8;
  }

  v15 = v12;
  result.height = v14;
  result.width = v15;
  return result;
}

- (void)_commonStepperInit
{
  if (dyld_program_sdk_at_least())
  {
    [(UIView *)self setClipsToBounds:1];
    v3 = [(UIView *)self traitCollection];
    [UISegmentedControl _cornerRadiusForTraitCollection:v3 size:0];
    [(UIView *)self _setCornerRadius:?];
  }

  self->_isRtoL = [(UIView *)self _shouldReverseLayoutDirection];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  dividerImages = self->_dividerImages;
  self->_dividerImages = v4;

  v6 = objc_alloc_init(UIImageView);
  middleView = self->_middleView;
  self->_middleView = v6;

  [(UIView *)self addSubview:self->_middleView];
  v11 = [(UIButton *)_UIStepperButton buttonWithType:0];
  [v11 setLeft:1];
  [v11 setAdjustsImageWhenHighlighted:0];
  [(UIView *)self addSubview:v11];
  v8 = [(UIButton *)_UIStepperButton buttonWithType:0];
  [v8 setLeft:0];
  [v8 setAdjustsImageWhenHighlighted:0];
  [(UIView *)self addSubview:v8];
  if (self->_isRtoL)
  {
    v9 = v11;
  }

  else
  {
    v9 = v8;
  }

  if (self->_isRtoL)
  {
    v10 = v8;
  }

  else
  {
    v10 = v11;
  }

  objc_storeStrong(&self->_plusButton, v9);
  objc_storeStrong(&self->_minusButton, v10);
  [(UIStepperHorizontalVisualElement *)self setBackgroundImage:0 forState:0];
  [(UIStepperHorizontalVisualElement *)self setBackgroundImage:0 forState:2];
  [(UIStepperHorizontalVisualElement *)self setBackgroundImage:0 forState:3];
  [(UIStepperHorizontalVisualElement *)self setBackgroundImage:0 forState:1];
  [(UIStepperHorizontalVisualElement *)self _updateBackgroundForButtonState];
  [(UIStepperHorizontalVisualElement *)self setDividerImage:0 forLeftSegmentState:0 rightSegmentState:0];
  [(UIStepperHorizontalVisualElement *)self setDividerImage:0 forLeftSegmentState:1 rightSegmentState:0];
  [(UIStepperHorizontalVisualElement *)self setDividerImage:0 forLeftSegmentState:0 rightSegmentState:1];
  [(UIStepperHorizontalVisualElement *)self setIncrementImage:0 forState:0];
  [(UIStepperHorizontalVisualElement *)self setDecrementImage:0 forState:0];
}

- (void)_updateButtonEnabled
{
  plusButton = self->_plusButton;
  v4 = self->_wraps || self->_value < self->_maximumValue;
  [(UIButton *)plusButton setEnabled:v4];
  v5 = self->_wraps || self->_value > self->_minimumValue;
  [(UIButton *)self->_minusButton setEnabled:v5];
  if (![(UIControl *)self->_plusButton isEnabled])
  {
    [(UIButton *)self->_plusButton setHighlighted:0];
  }

  if (![(UIControl *)self->_minusButton isEnabled])
  {
    [(UIButton *)self->_minusButton setHighlighted:0];
  }

  [(UIStepperHorizontalVisualElement *)self _updateBackgroundForButtonState];

  [(UIStepperHorizontalVisualElement *)self _updateDividerImageForButtonState];
}

- (void)_updateHighlightingAtPoint:(CGPoint)a3 withEvent:(id)a4
{
  x = a3.x;
  if ([(UIStepperHorizontalVisualElement *)self pointMostlyInside:a4 withEvent:a3.x, a3.y])
  {
    [(UIView *)self bounds];
    MidX = CGRectGetMidX(v13);
    v7 = x >= MidX;
    v8 = x < MidX;
    if (self->_isRtoL)
    {
      v9 = x < MidX;
    }

    else
    {
      v9 = x >= MidX;
    }

    [(UIButton *)self->_plusButton setHighlighted:v9];
    minusButton = self->_minusButton;
    if (self->_isRtoL)
    {
      v11 = v7;
    }

    else
    {
      v11 = v8;
    }
  }

  else
  {
    [(UIButton *)self->_minusButton setHighlighted:0];
    minusButton = self->_plusButton;
    v11 = 0;
  }

  [(UIButton *)minusButton setHighlighted:v11];
  [(UIStepperHorizontalVisualElement *)self _updateBackgroundForButtonState];

  [(UIStepperHorizontalVisualElement *)self _updateDividerImageForButtonState];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = UIStepperHorizontalVisualElement;
  [(UIView *)&v3 _dynamicUserInterfaceTraitDidChange];
  if (dyld_program_sdk_at_least())
  {
    [(UIStepperHorizontalVisualElement *)self _updateBackgroundForButtonState];
    [(UIStepperHorizontalVisualElement *)self _updateDividerImageForButtonState];
  }
}

+ (id)_highlightSizeAnimation
{
  v2 = [[UISpringTimingParameters alloc] initWithDampingRatio:1.0 response:0.28];
  v3 = [[UIViewPropertyAnimator alloc] initWithDuration:v2 timingParameters:0.0];

  return v3;
}

+ (id)_highlightOpacityAnimation
{
  v2 = [[UISpringTimingParameters alloc] initWithDampingRatio:2.0 response:0.12];
  v3 = [[UIViewPropertyAnimator alloc] initWithDuration:v2 timingParameters:0.0];
  [(UIViewPropertyAnimator *)v3 setInterruptible:0];

  return v3;
}

- (CGRect)_leftHighlightFrame
{
  v2 = 5;
  if (self->_isRtoL)
  {
    v2 = 4;
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v2]);
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10 + 1.0;

  v12 = v5;
  v13 = v7;
  v14 = v11;
  v15 = v9;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_leftHighlightInsetFrame
{
  [(UIStepperHorizontalVisualElement *)self _leftHighlightFrame];

  return CGRectInset(*&v2, 4.0, 4.0);
}

- (CGRect)_rightHighlightFrame
{
  v2 = 5;
  if (self->_isRtoL)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  v4 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v3]);
  if (!self->_isRtoL)
  {
    v2 = 4;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v2]);
  v6 = v4;
  [v5 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11 + -1.0;
  v14 = v13 + 1.0;

  v15 = v12;
  v16 = v8;
  v17 = v14;
  v18 = v10;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_rightHighlightInsetFrame
{
  [(UIStepperHorizontalVisualElement *)self _rightHighlightFrame];

  return CGRectInset(*&v2, 4.0, 4.0);
}

- (id)_alphaAnimator:(BOOL)a3
{
  v3 = a3;
  v5 = 11;
  if (a3)
  {
    v5 = 10;
  }

  v6 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v5]);
  if (v6)
  {
    v7 = v6;
    if ([v6 isRunning])
    {
      [v7 stopAnimation:1];
    }
  }

  else
  {
    v7 = +[UIStepperHorizontalVisualElement _highlightOpacityAnimation];
    if (v3)
    {
      v8 = 504;
    }

    else
    {
      v8 = 496;
    }

    objc_storeStrong((&self->super.super.super.isa + v8), v7);
  }

  return v7;
}

- (void)_updateHighlight:(id)a3 button:(id)a4 onRight:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [a4 state];
  [v8 alpha];
  if (v9 == 1)
  {
    if (v10 != 1.0)
    {
      v11 = [(UIStepperHorizontalVisualElement *)self _alphaAnimator:v5];
      v12 = 13;
      if (v5)
      {
        v12 = 12;
      }

      v13 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v12]);
      if (v13)
      {
        v14 = v13;
        if (!v5)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v14 = +[UIStepperHorizontalVisualElement _highlightSizeAnimation];
        if (!v5)
        {
          objc_storeStrong(&self->_leftFrameAnimator, v14);
LABEL_14:
          [(UIStepperHorizontalVisualElement *)self _leftHighlightFrame];
          goto LABEL_15;
        }

        objc_storeStrong(&self->_rightFrameAnimator, v14);
      }

      [(UIStepperHorizontalVisualElement *)self _rightHighlightFrame];
LABEL_15:
      v20 = v16;
      v21 = v17;
      v22 = v18;
      v23 = v19;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __68__UIStepperHorizontalVisualElement__updateHighlight_button_onRight___block_invoke_3;
      v34[3] = &unk_1E70F3590;
      v24 = v8;
      v35 = v24;
      [v11 addAnimations:v34];
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __68__UIStepperHorizontalVisualElement__updateHighlight_button_onRight___block_invoke_4;
      v28 = &unk_1E70F3B20;
      v29 = v24;
      v30 = v20;
      v31 = v21;
      v32 = v22;
      v33 = v23;
      [v14 addAnimations:&v25];
      [v11 startAnimation];
      [v14 startAnimation];

      goto LABEL_16;
    }
  }

  else if (v10 != 0.0)
  {
    v11 = [(UIStepperHorizontalVisualElement *)self _alphaAnimator:v5];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __68__UIStepperHorizontalVisualElement__updateHighlight_button_onRight___block_invoke;
    v39[3] = &unk_1E70F3590;
    v15 = v8;
    v40 = v15;
    [v11 addAnimations:v39 delayFactor:0.566969897];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __68__UIStepperHorizontalVisualElement__updateHighlight_button_onRight___block_invoke_2;
    v36[3] = &unk_1E71049E0;
    v38 = v5;
    v36[4] = self;
    v37 = v15;
    [v11 addCompletion:v36];
    [v11 startAnimation];

    v14 = v40;
LABEL_16:
  }
}

uint64_t __68__UIStepperHorizontalVisualElement__updateHighlight_button_onRight___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v3 = result;
    v4 = *(result + 48);
    v5 = *(result + 32);
    if (v4 == 1)
    {
      [v5 _rightHighlightFrame];
    }

    else
    {
      [v5 _leftHighlightFrame];
    }

    v11 = CGRectInset(*&v6, 4.0, 4.0);
    v10 = *(v3 + 40);

    return [v10 setFrame:{v11.origin.x, v11.origin.y, v11.size.width, v11.size.height}];
  }

  return result;
}

- (void)_updateButton:(id)a3 backgroundView:(id)a4 highlightView:(id)a5 backgroundImage:(id)a6 highlightImage:(id)a7 onRight:(BOOL)a8
{
  v8 = a8;
  v35 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (v8)
  {
    v17 = @"right";
  }

  else
  {
    v17 = @"left";
  }

  v18 = a7;
  v26 = __UIImageCacheKeyWithSentinel(v16, v19, v20, v21, v22, v23, v24, v25, v17, @"__UIImageCacheKeySentinel");
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __118__UIStepperHorizontalVisualElement__updateButton_backgroundView_highlightView_backgroundImage_highlightImage_onRight___block_invoke;
  v36[3] = &unk_1E71282E8;
  v27 = v16;
  v37 = v27;
  v38 = v8;
  v28 = [UIImage _cachedImageForKey:v26 fromBlock:v36];

  if (v14)
  {
    [(UIImageView *)v14 setImage:v28];
    [(UIImageView *)v15 setImage:v18];
    v29 = v35;
  }

  else
  {
    v30 = [UIImageView alloc];
    v29 = v35;
    [v35 frame];
    v14 = [(UIImageView *)v30 initWithFrame:?];
    [(UIImageView *)v14 setImage:v28];
    v31 = [UIImageView alloc];
    [v35 frame];
    v32 = [(UIImageView *)v31 initWithFrame:?];

    [(UIImageView *)v32 setImage:v18];
    [(UIView *)v32 setAlpha:0.0];
    [(UIView *)self insertSubview:v14 atIndex:0];
    [(UIView *)self insertSubview:v32 aboveSubview:self->_middleView];
    if (v8)
    {
      v33 = &OBJC_IVAR___UIStepperHorizontalVisualElement__rightBackground;
    }

    else
    {
      v33 = &OBJC_IVAR___UIStepperHorizontalVisualElement__leftBackground;
    }

    objc_storeStrong((&self->super.super.super.isa + *v33), v14);
    v34 = v33[1];
    v15 = v32;
    v18 = *(&self->super.super.super.isa + v34);
    *(&self->super.super.super.isa + v34) = v15;
  }

  [(UIStepperHorizontalVisualElement *)self _updateHighlight:v15 button:v29 onRight:v8];
}

id __118__UIStepperHorizontalVisualElement__updateButton_backgroundView_highlightView_backgroundImage_highlightImage_onRight___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v3 = 14;
  }

  else
  {
    v3 = 11;
  }

  v4 = [v2 _resizableImageWithCapMask:v3];
  v5 = [v4 imageWithRenderingMode:{objc_msgSend(*(a1 + 32), "renderingMode")}];

  return v5;
}

- (void)_updateBackgroundForButtonState
{
  if (dyld_program_sdk_at_least())
  {
    if (self->_isRtoL)
    {
      v3 = 4;
    }

    else
    {
      v3 = 5;
    }

    v19 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v3]);
    if (self->_isRtoL)
    {
      v4 = 5;
    }

    else
    {
      v4 = 4;
    }

    v5 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v4]);
    v6 = [v19 backgroundImageForState:{objc_msgSend(v19, "state")}];

    v7 = [v5 backgroundImageForState:{objc_msgSend(v5, "state")}];

    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      [(UIView *)self->_leftBackground removeFromSuperview];
      [(UIView *)self->_leftHighlight removeFromSuperview];
      [(UIView *)self->_rightBackground removeFromSuperview];
      [(UIView *)self->_rightHighlight removeFromSuperview];
    }

    +[UISegmentedControl _defaultHeight];
    v10 = v9;
    v11 = [(UIView *)self traitCollection];
    LODWORD(v17) = 0;
    v12 = [UISegmentedControl _modernBackgroundSelected:0 shadow:0 maximumSize:0 highlighted:0 hasMaterial:v11 traitCollection:0 tintColor:94.0 size:v10, v17];

    +[UISegmentedControl _defaultHeight];
    v14 = v13;
    v15 = [(UIView *)self traitCollection];
    LODWORD(v18) = 0;
    v16 = [UISegmentedControl _modernBackgroundSelected:0 shadow:0 maximumSize:1 highlighted:0 hasMaterial:v15 traitCollection:0 tintColor:94.0 size:v14, v18];

    if (v6)
    {
      [(UIView *)self->_leftBackground removeFromSuperview];
      [(UIView *)self->_leftHighlight removeFromSuperview];
    }

    else
    {
      [(UIStepperHorizontalVisualElement *)self _updateButton:v19 backgroundView:self->_leftBackground highlightView:self->_leftHighlight backgroundImage:v12 highlightImage:v16 onRight:0];
    }

    if (v7)
    {
      [(UIView *)self->_rightBackground removeFromSuperview];
      [(UIView *)self->_rightHighlight removeFromSuperview];
    }

    else
    {
      [(UIStepperHorizontalVisualElement *)self _updateButton:v5 backgroundView:self->_rightBackground highlightView:self->_rightHighlight backgroundImage:v12 highlightImage:v16 onRight:1];
    }
  }
}

- (void)_updateDividerImageForButtonState
{
  if (self->_isRtoL)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  v14 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v3]);
  if (self->_isRtoL)
  {
    v4 = 5;
  }

  else
  {
    v4 = 4;
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v4]);
  v6 = [(UIView *)self->_middleView subviews];
  v7 = [v6 firstObject];

  v8 = -[UIStepperHorizontalVisualElement dividerImageForLeftSegmentState:rightSegmentState:](self, "dividerImageForLeftSegmentState:rightSegmentState:", [v14 state], objc_msgSend(v5, "state"));
  if (v8 || (dyld_program_sdk_at_least() & 1) == 0)
  {
    if (v7)
    {
      [(UIView *)v7 removeFromSuperview];
    }

    [(UIImageView *)self->_middleView setImage:v8];
  }

  else
  {
    v9 = [(UIView *)self traitCollection];
    v10 = [UISegmentedControl _modernDividerImageBackground:1 traitCollection:v9 tintColor:0 size:0];

    v11 = [(UIView *)self traitCollection];
    v12 = [UISegmentedControl _modernDividerImageBackground:0 traitCollection:v11 tintColor:0 size:0];

    [(UIImageView *)self->_middleView setImage:v10];
    if (v7)
    {
      [(UIImageView *)v7 setImage:v12];
    }

    else
    {
      v13 = [UIImageView alloc];
      [(UIView *)self->_middleView bounds];
      v7 = [(UIImageView *)v13 initWithFrame:?];
      [(UIView *)v7 setAutoresizingMask:18];
      [(UIImageView *)v7 setImage:v12];
      [(UIView *)self->_middleView insertSubview:v7 atIndex:0];
    }
  }
}

- (BOOL)pointMostlyInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIView *)self _touchInsets];
  v17 = v9 + v16;
  v19 = v11 + v18;
  v21 = v13 - (v16 + v20);
  v23 = v15 - (v18 + v22);
  v24 = _UIControlMostlyInsideEdgeInsets();
  v25 = v19 + v24;
  v28 = v21 - (v26 + v27);
  v33.size.height = v23 - (v24 + v29);
  v33.origin.x = v17 + v26;
  v33.origin.y = v25;
  v33.size.width = v28;
  v32.x = x;
  v32.y = y;
  v30 = CGRectContainsPoint(v33, v32) || [(UIView *)self pointInside:v7 withEvent:x, y];

  return v30;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v4 = self;
  v9.receiver = self;
  v9.super_class = UIStepperHorizontalVisualElement;
  v5 = [(UIView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 != v4->_plusButton && v5 != v4->_minusButton)
  {
    v4 = v5;
  }

  v7 = v4;

  return v7;
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(UIStepperHorizontalVisualElement *)self _startTimer];
  [v7 locationInView:self];
  v9 = v8;
  v11 = v10;

  [(UIStepperHorizontalVisualElement *)self _updateHighlightingAtPoint:v6 withEvent:v9, v11];
  return 1;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  [a3 locationInView:self];
  [(UIStepperHorizontalVisualElement *)self _updateHighlightingAtPoint:v6 withEvent:?];

  return 1;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  [(UIStepperHorizontalVisualElement *)self _updateCount:self, a4];
  [(UIButton *)self->_plusButton setHighlighted:0];
  [(UIButton *)self->_minusButton setHighlighted:0];
  [(UIStepperHorizontalVisualElement *)self _stopTimer];
  [(UIStepperHorizontalVisualElement *)self _updateBackgroundForButtonState];

  [(UIStepperHorizontalVisualElement *)self _updateDividerImageForButtonState];
}

- (void)cancelTrackingWithEvent:(id)a3
{
  [(UIButton *)self->_plusButton setHighlighted:0];
  [(UIButton *)self->_minusButton setHighlighted:0];
  [(UIStepperHorizontalVisualElement *)self _stopTimer];
  [(UIStepperHorizontalVisualElement *)self _updateBackgroundForButtonState];

  [(UIStepperHorizontalVisualElement *)self _updateDividerImageForButtonState];
}

- (UIEdgeInsets)alignmentRectInsetsForControl:(id)a3
{
  v7.receiver = self;
  v7.super_class = UIStepperHorizontalVisualElement;
  [(UIView *)&v7 alignmentRectInsets];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)_startTimer
{
  if (self->_autorepeat)
  {
    v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__updateCount_ selector:0 userInfo:1 repeats:0.5];
    repeatTimer = self->_repeatTimer;
    self->_repeatTimer = v3;
  }

  self->_repeatCount = 0;
}

- (void)_stopTimer
{
  [(NSTimer *)self->_repeatTimer invalidate];
  repeatTimer = self->_repeatTimer;
  self->_repeatTimer = 0;
}

- (void)_updateCount:(id)a3
{
  repeatTimer = self->_repeatTimer;
  if ([(UIControl *)self->_plusButton isHighlighted])
  {
    v6 = [(UIControl *)self->_plusButton isEnabled];
  }

  else
  {
    v6 = 0;
  }

  if ([(UIControl *)self->_minusButton isHighlighted])
  {
    v7 = [(UIControl *)self->_minusButton isEnabled];
  }

  else
  {
    v7 = 0;
  }

  if (repeatTimer == a3)
  {
    if (!v6 && !v7)
    {
LABEL_30:
      if (self->_repeatCount >= 1)
      {
        self->_repeatCount = 1;
      }

      goto LABEL_36;
    }
  }

  else
  {
    repeatCount = self->_repeatCount;
    if (repeatCount || !v6 && !v7)
    {
      if (v6 || v7)
      {
        self->_repeatCount = repeatCount + 1;
LABEL_25:
        if (![(UIStepperHorizontalVisualElement *)self isContinuous]&& repeatTimer != a3)
        {
          v16 = [(UIStepperHorizontalVisualElement *)self stepperControl];
          [v16 visualElementSendValueChangedEvent:self];
        }

        return;
      }

      goto LABEL_30;
    }
  }

  stepValue = self->_stepValue;
  if (!v6)
  {
    stepValue = -stepValue;
  }

  maximumValue = self->_value + stepValue;
  if (self->_wraps)
  {
    if (maximumValue <= self->_maximumValue)
    {
      if (maximumValue < self->_minimumValue)
      {
        maximumValue = self->_maximumValue;
      }
    }

    else
    {
      maximumValue = self->_minimumValue;
    }
  }

  [(UIStepperHorizontalVisualElement *)self setValue:maximumValue];
  if (self->_continuous)
  {
    v11 = [(UIStepperHorizontalVisualElement *)self stepperControl];
    [v11 visualElementSendValueChangedEvent:self];
  }

  if (!v6 && !v7)
  {
    goto LABEL_30;
  }

  v12 = self->_repeatCount;
  self->_repeatCount = v12 + 1;
  if (repeatTimer != a3)
  {
    goto LABEL_25;
  }

  v13 = dbl_18A683040[v12 > 18];
  if (v12 <= 3)
  {
    v13 = 0.5;
  }

  v14 = self->_repeatTimer;
  v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v13];
  [(NSTimer *)v14 setFireDate:v15];

LABEL_36:

  [(UIStepperHorizontalVisualElement *)self isContinuous];
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a4;
  if (!dyld_program_sdk_at_least())
  {
    v24 = 0;
    goto LABEL_19;
  }

  if (self->_isRtoL)
  {
    v7 = 4;
  }

  else
  {
    v7 = 5;
  }

  v8 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v7]);
  if (self->_isRtoL)
  {
    v9 = 5;
  }

  else
  {
    v9 = 4;
  }

  v10 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v9]);
  [v8 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v6 location];
  v28.x = v19;
  v28.y = v20;
  v29.origin.x = v12;
  v29.origin.y = v14;
  v29.size.width = v16;
  v29.size.height = v18;
  if (!CGRectContainsPoint(v29, v28))
  {
    v25 = [v10 backgroundImageForState:{objc_msgSend(v10, "state")}];

    if (!v25 && [v10 isEnabled])
    {
      v22 = @"UIStepperRightPointerRegion";
      v23 = v10;
      goto LABEL_16;
    }

LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  v21 = [v8 backgroundImageForState:{objc_msgSend(v8, "state")}];

  if (v21 || ([v8 isEnabled] & 1) == 0)
  {
    goto LABEL_17;
  }

  v22 = @"UIStepperLeftPointerRegion";
  v23 = v8;
LABEL_16:
  [v23 frame];
  v24 = [UIPointerRegion regionWithRect:v22 identifier:?];
LABEL_18:

LABEL_19:

  return v24;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  if (self->_isRtoL)
  {
    v6 = 4;
  }

  else
  {
    v6 = 5;
  }

  v7 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v6]);
  if (self->_isRtoL)
  {
    v8 = 5;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v8]);
  v10 = [a4 identifier];
  v11 = [v10 isEqual:@"UIStepperLeftPointerRegion"];

  if (v11)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12;
  v14 = [(UIView *)self traitCollection];
  [UISegmentedControl _cornerRadiusForTraitCollection:v14 size:0];

  [v13 frame];
  v15 = [UIPointerShape shapeWithRoundedRect:"shapeWithRoundedRect:cornerRadius:" cornerRadius:?];
  v16 = [[UITargetedPreview alloc] initWithView:v13];
  v17 = [UIPointerEffect effectWithPreview:v16];
  v18 = [UIPointerStyle styleWithEffect:v17 shape:v15];

  return v18;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v5 = [(UIView *)self->_middleView subviews:a3];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__UIStepperHorizontalVisualElement_pointerInteraction_willEnterRegion_animator___block_invoke;
    v7[3] = &unk_1E70F3590;
    v8 = v6;
    [UIView animateWithDuration:327716 delay:v7 options:0 animations:0.41 completion:0.0];
  }
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v5 = [(UIView *)self->_middleView subviews:a3];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __79__UIStepperHorizontalVisualElement_pointerInteraction_willExitRegion_animator___block_invoke;
    v7[3] = &unk_1E70F3590;
    v8 = v6;
    [UIView animateWithDuration:327716 delay:v7 options:0 animations:0.41 completion:0.0];
  }
}

- (void)layoutSubviews
{
  isRtoL = self->_isRtoL;
  if (isRtoL != [(UIView *)self _shouldReverseLayoutDirection])
  {
    v4 = [(UIView *)self _shouldReverseLayoutDirection];
    self->_isRtoL = v4;
    if (v4)
    {
      v5 = 4;
    }

    else
    {
      v5 = 5;
    }

    if (v4)
    {
      v6 = 5;
    }

    else
    {
      v6 = 4;
    }

    [*(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v5]) setLeft:1];
    [*(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v6]) setLeft:0];
  }

  if (self->_isRtoL)
  {
    v7 = 4;
  }

  else
  {
    v7 = 5;
  }

  v42 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v7]);
  if (self->_isRtoL)
  {
    v8 = 5;
  }

  else
  {
    v8 = 4;
  }

  v9 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v8]);
  dividerImages = self->_dividerImages;
  v11 = _UIStepperDividerKey(0, 0);
  v12 = [(NSMutableDictionary *)dividerImages objectForKey:v11];

  if (v12)
  {
    [v12 size];
    v14 = v13;
  }

  else
  {
    v15 = [(UIView *)self traitCollection];
    [UISegmentedControl _dividerWidthForTraitCollection:v15 size:0];
    v14 = v16;
  }

  [(UIView *)self frame];
  [(UIStepperHorizontalVisualElement *)self sizeThatFits:v17, v18];
  v20 = v19;
  v22 = v21;
  v23 = (v19 - v14) * 0.5;
  [v42 setFrame:{0.0, 0.0, v23, v21}];
  [v9 setFrame:{v14 + v23, 0.0, v20 - v23 - v14, v22}];
  if (dyld_program_sdk_at_least())
  {
    [(UIImageView *)self->_leftBackground setFrame:0.0, 0.0, v23, v22];
    [(UIView *)self->_leftHighlight alpha];
    if (v24 == 0.0)
    {
      [(UIStepperHorizontalVisualElement *)self _leftHighlightInsetFrame];
    }

    else
    {
      [(UIStepperHorizontalVisualElement *)self _leftHighlightFrame];
    }

    v40 = v26;
    v41 = v25;
    v29 = v27;
    v30 = v28;
    if ([(UIViewPropertyAnimator *)self->_leftAlphaAnimator state]!= 1)
    {
      [(UIView *)self->_leftHighlight frame];
      v46.origin.y = v40;
      v46.origin.x = v41;
      v46.size.width = v29;
      v46.size.height = v30;
      if (!CGRectEqualToRect(v44, v46))
      {
        [(UIImageView *)self->_leftHighlight setFrame:v41, v40, v29, v30];
      }
    }

    [(UIImageView *)self->_rightBackground setFrame:v14 + v23, 0.0, v20 - v23 - v14, v22];
    [(UIView *)self->_rightHighlight alpha];
    if (v31 == 0.0)
    {
      [(UIStepperHorizontalVisualElement *)self _rightHighlightInsetFrame];
    }

    else
    {
      [(UIStepperHorizontalVisualElement *)self _rightHighlightFrame];
    }

    v36 = v32;
    v37 = v33;
    v38 = v34;
    v39 = v35;
    if ([(UIViewPropertyAnimator *)self->_rightAlphaAnimator state]!= 1)
    {
      [(UIView *)self->_rightHighlight frame];
      v47.origin.x = v36;
      v47.origin.y = v37;
      v47.size.width = v38;
      v47.size.height = v39;
      if (!CGRectEqualToRect(v45, v47))
      {
        [(UIImageView *)self->_rightHighlight setFrame:v36, v37, v38, v39];
      }
    }
  }

  [(UIImageView *)self->_middleView setFrame:v23, 0.0, v14, v22];
  [(UIView *)self setSize:v20, v22];
}

- (void)setBackgroundImage:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    v7 = dyld_program_sdk_at_least();
    if (a4 <= 3 && (v7 & 1) == 0)
    {
      +[UISegmentedControl _defaultHeight];
      v9 = v8;
      v10 = [(UIView *)self traitCollection];
      LODWORD(v33) = 0;
      v6 = [UISegmentedControl _modernBackgroundSelected:0 shadow:0 maximumSize:(2u >> (a4 & 0xF)) & 1 highlighted:0 hasMaterial:v10 traitCollection:0 tintColor:94.0 size:v9, v33];
    }
  }

  if (self->_isRtoL)
  {
    v11 = 4;
  }

  else
  {
    v11 = 5;
  }

  v34 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v11]);
  if (self->_isRtoL)
  {
    v12 = 5;
  }

  else
  {
    v12 = 4;
  }

  v13 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v12]);
  if (v6)
  {
    if (([v6 _isResizable] & 1) == 0)
    {
      [v6 size];
      v15 = v14 * 0.5;
      [v6 size];
      v17 = v15;
      v18 = (v16 * 0.5 + -1.0);
      [v6 size];
      v20 = v19 - v17 + -1.0;
      [v6 size];
      v22 = [v6 resizableImageWithCapInsets:{v17, v18, v20, v21 - v18 + -1.0}];

      v6 = v22;
    }

    +[UISegmentedControl _defaultHeight];
    v24 = v23;
    [v6 size];
    v26 = fmax(v25, 94.0);
    [v6 size];
    if (v24 < v27)
    {
      v24 = v27;
    }

    v28 = v26 * 0.5;
    _UIGraphicsBeginImageContextWithOptions(0, 0, v26 * 0.5, v24, 0.0);
    [v6 drawInRect:{0.0, 0.0, v28 + v28, v24}];
    v29 = _UIGraphicsGetImageFromCurrentImageContext(0);
    v30 = [v29 imageWithRenderingMode:{objc_msgSend(v6, "renderingMode")}];

    [v34 setBackgroundImage:v30 forState:a4];
    UIGraphicsEndImageContext();
    _UIGraphicsBeginImageContextWithOptions(0, 0, v26 * 0.5, v24, 0.0);
    [v6 drawInRect:{-(v26 * 0.5), 0.0, v28 + v28, v24}];
    v31 = _UIGraphicsGetImageFromCurrentImageContext(0);
    v32 = [v31 imageWithRenderingMode:{objc_msgSend(v6, "renderingMode")}];

    [v13 setBackgroundImage:v32 forState:a4];
    UIGraphicsEndImageContext();
  }

  else
  {
    [v34 setBackgroundImage:0 forState:a4];
    [v13 setBackgroundImage:0 forState:a4];
  }

  if (dyld_program_sdk_at_least())
  {
    [(UIStepperHorizontalVisualElement *)self _updateBackgroundForButtonState];
  }

  if (!a4)
  {
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setDividerImage:(id)a3 forLeftSegmentState:(unint64_t)a4 rightSegmentState:(unint64_t)a5
{
  v11 = a3;
  if (!v11)
  {
    if (dyld_program_sdk_at_least())
    {
      v11 = 0;
    }

    else
    {
      v8 = [(UIView *)self traitCollection];
      v11 = [UISegmentedControl _modernDividerImageBackground:1 traitCollection:v8 tintColor:0 size:0];
    }
  }

  dividerImages = self->_dividerImages;
  v10 = _UIStepperDividerKey(a4, a5);
  [(NSMutableDictionary *)dividerImages setObject:v11 forKeyedSubscript:v10];

  [(UIStepperHorizontalVisualElement *)self _updateDividerImageForButtonState];
  if (!(a5 | a4))
  {
    [(UIView *)self setNeedsLayout];
  }
}

- (id)dividerImageForLeftSegmentState:(unint64_t)a3 rightSegmentState:(unint64_t)a4
{
  dividerImages = self->_dividerImages;
  v8 = _UIStepperDividerKey(a3, a4);
  v9 = [(NSMutableDictionary *)dividerImages objectForKey:v8];

  if (!v9)
  {
    if ((a3 & 2) != 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = a3;
    }

    if ((a4 & 2) != 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = a4;
    }

    v12 = self->_dividerImages;
    v13 = _UIStepperDividerKey(v10, v11);
    v9 = [(NSMutableDictionary *)v12 objectForKey:v13];
  }

  return v9;
}

- (void)setIncrementImage:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  if (v6 || a4)
  {
    v9 = v6;
    if (dyld_program_sdk_at_least())
    {
      [(UIButton *)self->_plusButton setTintColor:0];
    }
  }

  else
  {
    v9 = [UIImage _systemImageNamed:@"plus" fallback:@"UIStepperPlus"];
    if (dyld_program_sdk_at_least())
    {
      plusButton = self->_plusButton;
      v8 = +[UIColor labelColor];
      [(UIButton *)plusButton setTintColor:v8];
    }
  }

  [(UIButton *)self->_plusButton setImage:v9 forState:a4];
}

- (id)incrementImageForState:(unint64_t)a3
{
  v4 = 5;
  if (self->_isRtoL)
  {
    v4 = 4;
  }

  plusButton = self->_plusButton;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v4]);
  v7 = [(UIButton *)plusButton imageForState:a3];

  return v7;
}

- (void)setDecrementImage:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  if (v6 || a4)
  {
    v9 = v6;
    if (dyld_program_sdk_at_least())
    {
      [(UIButton *)self->_minusButton setTintColor:0];
    }
  }

  else
  {
    v9 = [UIImage _systemImageNamed:@"minus" fallback:@"UIStepperMinus"];
    if (dyld_program_sdk_at_least())
    {
      minusButton = self->_minusButton;
      v8 = +[UIColor labelColor];
      [(UIButton *)minusButton setTintColor:v8];
    }
  }

  [(UIButton *)self->_minusButton setImage:v9 forState:a4];
}

- (void)setTintColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIStepperHorizontalVisualElement;
  [(UIView *)&v4 setTintColor:a3];
  [(UIStepperHorizontalVisualElement *)self _updateBackgroundForButtonState];
  [(UIStepperHorizontalVisualElement *)self _updateDividerImageForButtonState];
}

- (UIStepperControl)stepperControl
{
  WeakRetained = objc_loadWeakRetained(&self->_stepperControl);

  return WeakRetained;
}

@end