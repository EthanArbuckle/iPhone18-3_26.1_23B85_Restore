@interface UIStepperHorizontalVisualElement
+ (CGSize)initialSize;
+ (UIEdgeInsets)initialAlignmentRectInsets;
+ (id)_highlightOpacityAnimation;
+ (id)_highlightSizeAnimation;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)pointMostlyInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_leftHighlightFrame;
- (CGRect)_leftHighlightInsetFrame;
- (CGRect)_rightHighlightFrame;
- (CGRect)_rightHighlightInsetFrame;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (UIEdgeInsets)alignmentRectInsetsForControl:(id)control;
- (UIStepperControl)stepperControl;
- (UIStepperHorizontalVisualElement)initWithFrame:(CGRect)frame;
- (id)_alphaAnimator:(BOOL)animator;
- (id)dividerImageForLeftSegmentState:(unint64_t)state rightSegmentState:(unint64_t)segmentState;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)incrementImageForState:(unint64_t)state;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_commonStepperInit;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_startTimer;
- (void)_stopTimer;
- (void)_updateBackgroundForButtonState;
- (void)_updateButton:(id)button backgroundView:(id)view highlightView:(id)highlightView backgroundImage:(id)image highlightImage:(id)highlightImage onRight:(BOOL)right;
- (void)_updateButtonEnabled;
- (void)_updateCount:(id)count;
- (void)_updateDividerImageForButtonState;
- (void)_updateHighlight:(id)highlight button:(id)button onRight:(BOOL)right;
- (void)_updateHighlightingAtPoint:(CGPoint)point withEvent:(id)event;
- (void)cancelTrackingWithEvent:(id)event;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator;
- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator;
- (void)setBackgroundImage:(id)image forState:(unint64_t)state;
- (void)setDecrementImage:(id)image forState:(unint64_t)state;
- (void)setDividerImage:(id)image forLeftSegmentState:(unint64_t)state rightSegmentState:(unint64_t)segmentState;
- (void)setEnabled:(BOOL)enabled;
- (void)setIncrementImage:(id)image forState:(unint64_t)state;
- (void)setMaximumValue:(double)value;
- (void)setMinimumValue:(double)value;
- (void)setStepValue:(double)value;
- (void)setTintColor:(id)color;
- (void)setValue:(double)minimumValue;
@end

@implementation UIStepperHorizontalVisualElement

- (UIStepperHorizontalVisualElement)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIStepperHorizontalVisualElement;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    stepperControl = [(UIStepperHorizontalVisualElement *)self stepperControl];
    [stepperControl visualElementDidSetValue:self];
  }
}

- (void)setMinimumValue:(double)value
{
  if (self->_minimumValue != value)
  {
    if (self->_maximumValue < value)
    {
      [(UIStepperHorizontalVisualElement *)self setMaximumValue:value];
    }

    self->_minimumValue = value;
    value = self->_value;
    if (value < value)
    {
      value = value;
    }

    [(UIStepperHorizontalVisualElement *)self setValue:value];

    [(UIStepperHorizontalVisualElement *)self _updateButtonEnabled];
  }
}

- (void)setMaximumValue:(double)value
{
  if (self->_maximumValue != value)
  {
    if (self->_minimumValue > value)
    {
      [(UIStepperHorizontalVisualElement *)self setMinimumValue:value];
    }

    self->_maximumValue = value;
    value = self->_value;
    if (value >= value)
    {
      value = value;
    }

    [(UIStepperHorizontalVisualElement *)self setValue:value];

    [(UIStepperHorizontalVisualElement *)self _updateButtonEnabled];
  }
}

- (void)setStepValue:(double)value
{
  if (self->_stepValue != value)
  {
    if (value <= 0.0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"stepValue must be greater than 0"];
    }

    self->_stepValue = value;
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if ([(UIStepperHorizontalVisualElement *)self isEnabled]!= enabled)
  {
    self->_enabled = enabled;
    [(UIStepperHorizontalVisualElement *)self _updateButtonEnabled];
    v5 = 1.0;
    if (enabled || ([(UIView *)self alpha], v7 = v6, v5 = 0.5, v7 > 0.5))
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

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  v4 = [(UIButton *)self->_plusButton backgroundImageForState:0, size.width, size.height];
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
    traitCollection = [(UIView *)self traitCollection];
    [UISegmentedControl _cornerRadiusForTraitCollection:traitCollection size:0];
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

- (void)_updateHighlightingAtPoint:(CGPoint)point withEvent:(id)event
{
  x = point.x;
  if ([(UIStepperHorizontalVisualElement *)self pointMostlyInside:event withEvent:point.x, point.y])
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

- (id)_alphaAnimator:(BOOL)animator
{
  animatorCopy = animator;
  v5 = 11;
  if (animator)
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
    if (animatorCopy)
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

- (void)_updateHighlight:(id)highlight button:(id)button onRight:(BOOL)right
{
  rightCopy = right;
  highlightCopy = highlight;
  state = [button state];
  [highlightCopy alpha];
  if (state == 1)
  {
    if (v10 != 1.0)
    {
      v11 = [(UIStepperHorizontalVisualElement *)self _alphaAnimator:rightCopy];
      v12 = 13;
      if (rightCopy)
      {
        v12 = 12;
      }

      v13 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v12]);
      if (v13)
      {
        v14 = v13;
        if (!rightCopy)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v14 = +[UIStepperHorizontalVisualElement _highlightSizeAnimation];
        if (!rightCopy)
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
      v24 = highlightCopy;
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
    v11 = [(UIStepperHorizontalVisualElement *)self _alphaAnimator:rightCopy];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __68__UIStepperHorizontalVisualElement__updateHighlight_button_onRight___block_invoke;
    v39[3] = &unk_1E70F3590;
    v15 = highlightCopy;
    v40 = v15;
    [v11 addAnimations:v39 delayFactor:0.566969897];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __68__UIStepperHorizontalVisualElement__updateHighlight_button_onRight___block_invoke_2;
    v36[3] = &unk_1E71049E0;
    v38 = rightCopy;
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

- (void)_updateButton:(id)button backgroundView:(id)view highlightView:(id)highlightView backgroundImage:(id)image highlightImage:(id)highlightImage onRight:(BOOL)right
{
  rightCopy = right;
  buttonCopy = button;
  viewCopy = view;
  highlightViewCopy = highlightView;
  imageCopy = image;
  if (rightCopy)
  {
    v17 = @"right";
  }

  else
  {
    v17 = @"left";
  }

  highlightImageCopy = highlightImage;
  v26 = __UIImageCacheKeyWithSentinel(imageCopy, v19, v20, v21, v22, v23, v24, v25, v17, @"__UIImageCacheKeySentinel");
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __118__UIStepperHorizontalVisualElement__updateButton_backgroundView_highlightView_backgroundImage_highlightImage_onRight___block_invoke;
  v36[3] = &unk_1E71282E8;
  v27 = imageCopy;
  v37 = v27;
  v38 = rightCopy;
  v28 = [UIImage _cachedImageForKey:v26 fromBlock:v36];

  if (viewCopy)
  {
    [(UIImageView *)viewCopy setImage:v28];
    [(UIImageView *)highlightViewCopy setImage:highlightImageCopy];
    v29 = buttonCopy;
  }

  else
  {
    v30 = [UIImageView alloc];
    v29 = buttonCopy;
    [buttonCopy frame];
    viewCopy = [(UIImageView *)v30 initWithFrame:?];
    [(UIImageView *)viewCopy setImage:v28];
    v31 = [UIImageView alloc];
    [buttonCopy frame];
    v32 = [(UIImageView *)v31 initWithFrame:?];

    [(UIImageView *)v32 setImage:highlightImageCopy];
    [(UIView *)v32 setAlpha:0.0];
    [(UIView *)self insertSubview:viewCopy atIndex:0];
    [(UIView *)self insertSubview:v32 aboveSubview:self->_middleView];
    if (rightCopy)
    {
      v33 = &OBJC_IVAR___UIStepperHorizontalVisualElement__rightBackground;
    }

    else
    {
      v33 = &OBJC_IVAR___UIStepperHorizontalVisualElement__leftBackground;
    }

    objc_storeStrong((&self->super.super.super.isa + *v33), viewCopy);
    v34 = v33[1];
    highlightViewCopy = v32;
    highlightImageCopy = *(&self->super.super.super.isa + v34);
    *(&self->super.super.super.isa + v34) = highlightViewCopy;
  }

  [(UIStepperHorizontalVisualElement *)self _updateHighlight:highlightViewCopy button:v29 onRight:rightCopy];
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
    traitCollection = [(UIView *)self traitCollection];
    LODWORD(v17) = 0;
    v12 = [UISegmentedControl _modernBackgroundSelected:0 shadow:0 maximumSize:0 highlighted:0 hasMaterial:traitCollection traitCollection:0 tintColor:94.0 size:v10, v17];

    +[UISegmentedControl _defaultHeight];
    v14 = v13;
    traitCollection2 = [(UIView *)self traitCollection];
    LODWORD(v18) = 0;
    v16 = [UISegmentedControl _modernBackgroundSelected:0 shadow:0 maximumSize:1 highlighted:0 hasMaterial:traitCollection2 traitCollection:0 tintColor:94.0 size:v14, v18];

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
  subviews = [(UIView *)self->_middleView subviews];
  firstObject = [subviews firstObject];

  v8 = -[UIStepperHorizontalVisualElement dividerImageForLeftSegmentState:rightSegmentState:](self, "dividerImageForLeftSegmentState:rightSegmentState:", [v14 state], objc_msgSend(v5, "state"));
  if (v8 || (dyld_program_sdk_at_least() & 1) == 0)
  {
    if (firstObject)
    {
      [(UIView *)firstObject removeFromSuperview];
    }

    [(UIImageView *)self->_middleView setImage:v8];
  }

  else
  {
    traitCollection = [(UIView *)self traitCollection];
    v10 = [UISegmentedControl _modernDividerImageBackground:1 traitCollection:traitCollection tintColor:0 size:0];

    traitCollection2 = [(UIView *)self traitCollection];
    v12 = [UISegmentedControl _modernDividerImageBackground:0 traitCollection:traitCollection2 tintColor:0 size:0];

    [(UIImageView *)self->_middleView setImage:v10];
    if (firstObject)
    {
      [(UIImageView *)firstObject setImage:v12];
    }

    else
    {
      v13 = [UIImageView alloc];
      [(UIView *)self->_middleView bounds];
      firstObject = [(UIImageView *)v13 initWithFrame:?];
      [(UIView *)firstObject setAutoresizingMask:18];
      [(UIImageView *)firstObject setImage:v12];
      [(UIView *)self->_middleView insertSubview:firstObject atIndex:0];
    }
  }
}

- (BOOL)pointMostlyInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
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
  v30 = CGRectContainsPoint(v33, v32) || [(UIView *)self pointInside:eventCopy withEvent:x, y];

  return v30;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  selfCopy = self;
  v9.receiver = self;
  v9.super_class = UIStepperHorizontalVisualElement;
  v5 = [(UIView *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 != selfCopy->_plusButton && v5 != selfCopy->_minusButton)
  {
    selfCopy = v5;
  }

  v7 = selfCopy;

  return v7;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  [(UIStepperHorizontalVisualElement *)self _startTimer];
  [touchCopy locationInView:self];
  v9 = v8;
  v11 = v10;

  [(UIStepperHorizontalVisualElement *)self _updateHighlightingAtPoint:eventCopy withEvent:v9, v11];
  return 1;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  [touch locationInView:self];
  [(UIStepperHorizontalVisualElement *)self _updateHighlightingAtPoint:eventCopy withEvent:?];

  return 1;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  [(UIStepperHorizontalVisualElement *)self _updateCount:self, event];
  [(UIButton *)self->_plusButton setHighlighted:0];
  [(UIButton *)self->_minusButton setHighlighted:0];
  [(UIStepperHorizontalVisualElement *)self _stopTimer];
  [(UIStepperHorizontalVisualElement *)self _updateBackgroundForButtonState];

  [(UIStepperHorizontalVisualElement *)self _updateDividerImageForButtonState];
}

- (void)cancelTrackingWithEvent:(id)event
{
  [(UIButton *)self->_plusButton setHighlighted:0];
  [(UIButton *)self->_minusButton setHighlighted:0];
  [(UIStepperHorizontalVisualElement *)self _stopTimer];
  [(UIStepperHorizontalVisualElement *)self _updateBackgroundForButtonState];

  [(UIStepperHorizontalVisualElement *)self _updateDividerImageForButtonState];
}

- (UIEdgeInsets)alignmentRectInsetsForControl:(id)control
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

- (void)_updateCount:(id)count
{
  repeatTimer = self->_repeatTimer;
  if ([(UIControl *)self->_plusButton isHighlighted])
  {
    isEnabled = [(UIControl *)self->_plusButton isEnabled];
  }

  else
  {
    isEnabled = 0;
  }

  if ([(UIControl *)self->_minusButton isHighlighted])
  {
    isEnabled2 = [(UIControl *)self->_minusButton isEnabled];
  }

  else
  {
    isEnabled2 = 0;
  }

  if (repeatTimer == count)
  {
    if (!isEnabled && !isEnabled2)
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
    if (repeatCount || !isEnabled && !isEnabled2)
    {
      if (isEnabled || isEnabled2)
      {
        self->_repeatCount = repeatCount + 1;
LABEL_25:
        if (![(UIStepperHorizontalVisualElement *)self isContinuous]&& repeatTimer != count)
        {
          stepperControl = [(UIStepperHorizontalVisualElement *)self stepperControl];
          [stepperControl visualElementSendValueChangedEvent:self];
        }

        return;
      }

      goto LABEL_30;
    }
  }

  stepValue = self->_stepValue;
  if (!isEnabled)
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
    stepperControl2 = [(UIStepperHorizontalVisualElement *)self stepperControl];
    [stepperControl2 visualElementSendValueChangedEvent:self];
  }

  if (!isEnabled && !isEnabled2)
  {
    goto LABEL_30;
  }

  v12 = self->_repeatCount;
  self->_repeatCount = v12 + 1;
  if (repeatTimer != count)
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

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  requestCopy = request;
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
  [requestCopy location];
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

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
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
  identifier = [region identifier];
  v11 = [identifier isEqual:@"UIStepperLeftPointerRegion"];

  if (v11)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12;
  traitCollection = [(UIView *)self traitCollection];
  [UISegmentedControl _cornerRadiusForTraitCollection:traitCollection size:0];

  [v13 frame];
  v15 = [UIPointerShape shapeWithRoundedRect:"shapeWithRoundedRect:cornerRadius:" cornerRadius:?];
  v16 = [[UITargetedPreview alloc] initWithView:v13];
  v17 = [UIPointerEffect effectWithPreview:v16];
  v18 = [UIPointerStyle styleWithEffect:v17 shape:v15];

  return v18;
}

- (void)pointerInteraction:(id)interaction willEnterRegion:(id)region animator:(id)animator
{
  v5 = [(UIView *)self->_middleView subviews:interaction];
  firstObject = [v5 firstObject];

  if (firstObject)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__UIStepperHorizontalVisualElement_pointerInteraction_willEnterRegion_animator___block_invoke;
    v7[3] = &unk_1E70F3590;
    v8 = firstObject;
    [UIView animateWithDuration:327716 delay:v7 options:0 animations:0.41 completion:0.0];
  }
}

- (void)pointerInteraction:(id)interaction willExitRegion:(id)region animator:(id)animator
{
  v5 = [(UIView *)self->_middleView subviews:interaction];
  firstObject = [v5 firstObject];

  if (firstObject)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __79__UIStepperHorizontalVisualElement_pointerInteraction_willExitRegion_animator___block_invoke;
    v7[3] = &unk_1E70F3590;
    v8 = firstObject;
    [UIView animateWithDuration:327716 delay:v7 options:0 animations:0.41 completion:0.0];
  }
}

- (void)layoutSubviews
{
  isRtoL = self->_isRtoL;
  if (isRtoL != [(UIView *)self _shouldReverseLayoutDirection])
  {
    _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
    self->_isRtoL = _shouldReverseLayoutDirection;
    if (_shouldReverseLayoutDirection)
    {
      v5 = 4;
    }

    else
    {
      v5 = 5;
    }

    if (_shouldReverseLayoutDirection)
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
    traitCollection = [(UIView *)self traitCollection];
    [UISegmentedControl _dividerWidthForTraitCollection:traitCollection size:0];
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

- (void)setBackgroundImage:(id)image forState:(unint64_t)state
{
  imageCopy = image;
  if (!imageCopy)
  {
    v7 = dyld_program_sdk_at_least();
    if (state <= 3 && (v7 & 1) == 0)
    {
      +[UISegmentedControl _defaultHeight];
      v9 = v8;
      traitCollection = [(UIView *)self traitCollection];
      LODWORD(v33) = 0;
      imageCopy = [UISegmentedControl _modernBackgroundSelected:0 shadow:0 maximumSize:(2u >> (state & 0xF)) & 1 highlighted:0 hasMaterial:traitCollection traitCollection:0 tintColor:94.0 size:v9, v33];
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
  if (imageCopy)
  {
    if (([imageCopy _isResizable] & 1) == 0)
    {
      [imageCopy size];
      v15 = v14 * 0.5;
      [imageCopy size];
      v17 = v15;
      v18 = (v16 * 0.5 + -1.0);
      [imageCopy size];
      v20 = v19 - v17 + -1.0;
      [imageCopy size];
      v22 = [imageCopy resizableImageWithCapInsets:{v17, v18, v20, v21 - v18 + -1.0}];

      imageCopy = v22;
    }

    +[UISegmentedControl _defaultHeight];
    v24 = v23;
    [imageCopy size];
    v26 = fmax(v25, 94.0);
    [imageCopy size];
    if (v24 < v27)
    {
      v24 = v27;
    }

    v28 = v26 * 0.5;
    _UIGraphicsBeginImageContextWithOptions(0, 0, v26 * 0.5, v24, 0.0);
    [imageCopy drawInRect:{0.0, 0.0, v28 + v28, v24}];
    v29 = _UIGraphicsGetImageFromCurrentImageContext(0);
    v30 = [v29 imageWithRenderingMode:{objc_msgSend(imageCopy, "renderingMode")}];

    [v34 setBackgroundImage:v30 forState:state];
    UIGraphicsEndImageContext();
    _UIGraphicsBeginImageContextWithOptions(0, 0, v26 * 0.5, v24, 0.0);
    [imageCopy drawInRect:{-(v26 * 0.5), 0.0, v28 + v28, v24}];
    v31 = _UIGraphicsGetImageFromCurrentImageContext(0);
    v32 = [v31 imageWithRenderingMode:{objc_msgSend(imageCopy, "renderingMode")}];

    [v13 setBackgroundImage:v32 forState:state];
    UIGraphicsEndImageContext();
  }

  else
  {
    [v34 setBackgroundImage:0 forState:state];
    [v13 setBackgroundImage:0 forState:state];
  }

  if (dyld_program_sdk_at_least())
  {
    [(UIStepperHorizontalVisualElement *)self _updateBackgroundForButtonState];
  }

  if (!state)
  {
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setDividerImage:(id)image forLeftSegmentState:(unint64_t)state rightSegmentState:(unint64_t)segmentState
{
  imageCopy = image;
  if (!imageCopy)
  {
    if (dyld_program_sdk_at_least())
    {
      imageCopy = 0;
    }

    else
    {
      traitCollection = [(UIView *)self traitCollection];
      imageCopy = [UISegmentedControl _modernDividerImageBackground:1 traitCollection:traitCollection tintColor:0 size:0];
    }
  }

  dividerImages = self->_dividerImages;
  v10 = _UIStepperDividerKey(state, segmentState);
  [(NSMutableDictionary *)dividerImages setObject:imageCopy forKeyedSubscript:v10];

  [(UIStepperHorizontalVisualElement *)self _updateDividerImageForButtonState];
  if (!(segmentState | state))
  {
    [(UIView *)self setNeedsLayout];
  }
}

- (id)dividerImageForLeftSegmentState:(unint64_t)state rightSegmentState:(unint64_t)segmentState
{
  dividerImages = self->_dividerImages;
  v8 = _UIStepperDividerKey(state, segmentState);
  v9 = [(NSMutableDictionary *)dividerImages objectForKey:v8];

  if (!v9)
  {
    if ((state & 2) != 0)
    {
      stateCopy = 0;
    }

    else
    {
      stateCopy = state;
    }

    if ((segmentState & 2) != 0)
    {
      segmentStateCopy = 0;
    }

    else
    {
      segmentStateCopy = segmentState;
    }

    v12 = self->_dividerImages;
    v13 = _UIStepperDividerKey(stateCopy, segmentStateCopy);
    v9 = [(NSMutableDictionary *)v12 objectForKey:v13];
  }

  return v9;
}

- (void)setIncrementImage:(id)image forState:(unint64_t)state
{
  imageCopy = image;
  if (imageCopy || state)
  {
    v9 = imageCopy;
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

  [(UIButton *)self->_plusButton setImage:v9 forState:state];
}

- (id)incrementImageForState:(unint64_t)state
{
  v4 = 5;
  if (self->_isRtoL)
  {
    v4 = 4;
  }

  plusButton = self->_plusButton;
  v6 = *(&self->super.super.super.isa + OBJC_IVAR___UIStepperHorizontalVisualElement__minimumValue[v4]);
  v7 = [(UIButton *)plusButton imageForState:state];

  return v7;
}

- (void)setDecrementImage:(id)image forState:(unint64_t)state
{
  imageCopy = image;
  if (imageCopy || state)
  {
    v9 = imageCopy;
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

  [(UIButton *)self->_minusButton setImage:v9 forState:state];
}

- (void)setTintColor:(id)color
{
  v4.receiver = self;
  v4.super_class = UIStepperHorizontalVisualElement;
  [(UIView *)&v4 setTintColor:color];
  [(UIStepperHorizontalVisualElement *)self _updateBackgroundForButtonState];
  [(UIStepperHorizontalVisualElement *)self _updateDividerImageForButtonState];
}

- (UIStepperControl)stepperControl
{
  WeakRetained = objc_loadWeakRetained(&self->_stepperControl);

  return WeakRetained;
}

@end