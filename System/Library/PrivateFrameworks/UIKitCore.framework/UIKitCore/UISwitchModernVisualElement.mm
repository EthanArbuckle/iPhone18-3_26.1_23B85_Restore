@interface UISwitchModernVisualElement
+ (CGSize)preferredContentSize;
+ (UIEdgeInsets)preferredAlignmentRectInsets;
+ (id)_modernGradientImageWithOnColor:(id)color traitCollection:(id)collection;
+ (id)_modernThumbImageWithColor:(id)color mask:(unint64_t)mask traitCollection:(id)collection;
- (BOOL)_feedbackEnabled;
- (BOOL)_gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event;
- (BOOL)_shouldUseLightTintOverColor:(id)color;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGColor)_wellColorOn:(BOOL)on;
- (CGPoint)_knobPositionOn:(BOOL)on pressed:(BOOL)pressed forBounds:(CGRect)bounds;
- (CGPoint)_leftSwitchWellContainerPositionOn:(BOOL)on pressed:(BOOL)pressed;
- (CGPoint)_offImagePosition;
- (CGPoint)_onImagePosition;
- (CGPoint)_switchWellContainerPositionOn:(BOOL)on pressed:(BOOL)pressed;
- (CGPoint)_switchWellPositionOn:(BOOL)on pressed:(BOOL)pressed;
- (CGPoint)_wellPositionOn:(BOOL)on forBounds:(CGRect)bounds;
- (CGRect)_knobBoundsPressed:(BOOL)pressed;
- (CGRect)_leftSwitchWellContainerBoundsOn:(BOOL)on pressed:(BOOL)pressed;
- (CGRect)_switchWellContainerBoundsOn:(BOOL)on pressed:(BOOL)pressed;
- (UISwitchModernVisualElement)initWithFrame:(CGRect)frame;
- (double)_knobPositionAdjusted:(int)adjusted on:(int)on offset:(double)offset pressed:(double)pressed forBounds:(double)bounds;
- (double)_wellBorderWidthPressed:(BOOL)pressed on:(BOOL)on;
- (id)_accessibleOffImage;
- (id)_accessibleOnImage;
- (id)_effectiveGradientImage;
- (id)_effectiveOffImage;
- (id)_effectiveOffImageTintColor;
- (id)_effectiveOffTextColor;
- (id)_effectiveOnImage;
- (id)_effectiveOnImageTintColor;
- (id)_effectiveOnTintColor;
- (id)_effectiveThumbImage;
- (id)_effectiveTintColor;
- (id)_labelOpacityAnimation;
- (id)_switchKnobPositionSpringAnimationFromValue:(id)value toValue:(id)toValue;
- (id)_switchKnobWidthSpringAnimationFromValue:(id)value toValue:(id)toValue pressed:(BOOL)pressed;
- (id)_switchSpringAnimationWithKeyPath:(id)path fromValue:(id)value toValue:(id)toValue pressed:(BOOL)pressed;
- (id)_switchTrackAnimationWithFromValue:(id)value toValue:(id)toValue on:(BOOL)on;
- (id)_switchTrackColorAnimationWithFromValue:(id)value toValue:(id)toValue;
- (id)_switchTrackPositionAnimationWithFromValue:(id)value toValue:(id)toValue on:(BOOL)on;
- (id)_switchTrackPositionSpringAnimationFromValue:(id)value toValue:(id)toValue on:(BOOL)on;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_handleLongPress:(id)press;
- (void)_handleLongPressWithGestureLocationInBounds:(CGPoint)bounds gestureState:(int64_t)state;
- (void)_handlePan:(id)pan;
- (void)_handlePanWithGestureLocationInBounds:(CGPoint)bounds horizontalTranslation:(double)translation gestureState:(int64_t)state resetPanTranslationBlock:(id)block;
- (void)_installSelectGestureRecognizer;
- (void)_invalidateControl;
- (void)_invalidateKnob;
- (void)_invalidateOnOffImages;
- (void)_invalidateUserInterfaceRenderingMode;
- (void)_invalidateWell;
- (void)_orderSubviews;
- (void)_selectGestureChanged:(id)changed;
- (void)_setPressed:(BOOL)pressed on:(BOOL)on animated:(BOOL)animated shouldAnimateLabels:(BOOL)labels completion:(id)completion;
- (void)_switchToStaticMode:(BOOL)mode;
- (void)_transitionImagesToPressed:(BOOL)pressed on:(BOOL)on animated:(BOOL)animated;
- (void)_transitionKnobToPressed:(BOOL)pressed on:(BOOL)on animated:(BOOL)animated;
- (void)_transitionWellViewToOn:(BOOL)on animated:(BOOL)animated;
- (void)_transitionWellViewToPressed:(BOOL)pressed animated:(BOOL)animated;
- (void)_transitionWellViewToPressed:(BOOL)pressed on:(BOOL)on animated:(BOOL)animated;
- (void)_uninstallSelectGestureRecognizer;
- (void)_updateDisplayAnimated:(BOOL)animated;
- (void)_updateDisplayWithAnimationIfNeeded;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)interactiveChangeToDisplayedOn:(BOOL)on;
- (void)performStateChangeFeedback;
- (void)sendStateChangeActions;
- (void)setOffImage:(id)image;
- (void)setOn:(BOOL)on animated:(BOOL)animated;
- (void)setOnImage:(id)image;
- (void)setOnTintColor:(id)color;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setSwitchControl:(id)control;
- (void)setThumbTintColor:(id)color;
- (void)setTintColor:(id)color;
@end

@implementation UISwitchModernVisualElement

+ (CGSize)preferredContentSize
{
  v2 = _UISolariumEnabled();
  v3 = 51.0;
  if (v2)
  {
    v3 = 63.0;
  }

  v4 = 31.0;
  if (v2)
  {
    v4 = 28.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_invalidateControl
{
  if (os_variant_has_internal_diagnostics())
  {
    if (!self)
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Attempted to begin using the effective theme of a nil view.", buf, 2u);
      }
    }
  }

  else if (!self)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &_invalidateControl___s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Attempted to begin using the effective theme of a nil view.", v8, 2u);
    }
  }

  v3 = +[UITraitCollection _currentTraitCollectionIfExists];
  traitCollection = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:traitCollection];

  v5 = _UISetCurrentFallbackEnvironment(self);
  [(UISwitchModernVisualElement *)self _invalidateWell];
  [(UISwitchModernVisualElement *)self _invalidateKnob];
  _UIRestorePreviousFallbackEnvironment(v5);
  [UITraitCollection setCurrentTraitCollection:v3];
  [(UISwitchModernVisualElement *)self _invalidateOnOffImages];
}

- (void)_invalidateWell
{
  v3 = _UISolariumEnabled();
  if ((v3 & 1) != 0 || dyld_program_sdk_at_least())
  {
    [(UIView *)self->_switchWellView removeFromSuperview];
    [(UIView *)self->_switchWellImageView removeFromSuperview];
    [(UIView *)self->_switchWellContainerView removeFromSuperview];
    _effectiveGradientImage = [(UISwitchModernVisualElement *)self _effectiveGradientImage];
    v5 = [[UIImageView alloc] initWithImage:_effectiveGradientImage];
    switchWellImageView = self->_switchWellImageView;
    self->_switchWellImageView = v5;

    [_effectiveGradientImage size];
    [(UIImageView *)self->_switchWellImageView setFrame:0.0, 0.0, v7, 31.0];
    [(UIImageView *)self->_switchWellImageView setHidden:1];
    v8 = [UIView alloc];
    [(UIView *)self bounds];
    v9 = [(UIView *)v8 initWithFrame:?];
    switchWellContainerView = self->_switchWellContainerView;
    self->_switchWellContainerView = v9;

    [(UIView *)self->_switchWellContainerView _setAllowsHighContrastForBackgroundColor:1];
    [(UIView *)self->_switchWellContainerView _setShouldAdaptToMaterials:0];
    layer = [(UIView *)self->_switchWellContainerView layer];
    layer2 = layer;
    v13 = MEMORY[0x1E69796E8];
    if (v3)
    {
      [layer setCornerRadius:14.0];

      layer2 = [(UIView *)self->_switchWellContainerView layer];
      [layer2 setCornerCurve:*v13];
    }

    else
    {
      [layer setCornerRadius:15.5];
    }

    [(UIView *)self->_switchWellContainerView setClipsToBounds:0];
    [(UIView *)self->_switchWellContainerView addSubview:self->_switchWellImageView];
    v14 = [UIView alloc];
    [(UIView *)self bounds];
    v15 = [(UIView *)v14 initWithFrame:?];
    switchWellView = self->_switchWellView;
    self->_switchWellView = v15;

    [(UISwitchModernVisualElement *)self _invalidateUserInterfaceRenderingMode];
    v17 = self->_switchWellView;
    _effectiveTintColor = [(UISwitchModernVisualElement *)self _effectiveTintColor];
    [(UIView *)v17 setBackgroundColor:_effectiveTintColor];

    layer3 = [(UIView *)self->_switchWellView layer];
    layer4 = layer3;
    if (v3)
    {
      [layer3 setCornerRadius:14.0];

      layer4 = [(UIView *)self->_switchWellView layer];
      [layer4 setCornerCurve:*v13];
    }

    else
    {
      [layer3 setCornerRadius:15.5];
    }

    [(UISwitchModernVisualElement *)self _orderSubviews];
    [(UISwitchModernVisualElement *)self _transitionWellViewToPressed:0 on:self->_on animated:0];
  }

  else
  {
    [(UIView *)self->_switchWellView removeFromSuperview];
    [(UIView *)self->_leftSwitchWellView removeFromSuperview];
    [(UIView *)self->_switchWellContainerView removeFromSuperview];
    [(UIView *)self->_leftSwitchWellContainerView removeFromSuperview];
    [(UIView *)self bounds];
    v25 = [[UIView alloc] initWithFrame:v22 - v21 * 0.5, v23, v21, v24];
    v26 = self->_switchWellView;
    self->_switchWellView = v25;

    v27 = [UIView alloc];
    [(UIView *)self bounds];
    v28 = [(UIView *)v27 initWithFrame:?];
    leftSwitchWellView = self->_leftSwitchWellView;
    self->_leftSwitchWellView = v28;

    layer5 = [(UIView *)self->_leftSwitchWellView layer];
    [(UISwitchModernVisualElement *)self _wellBorderWidthPressed:1 on:1];
    [layer5 setBorderWidth:?];

    v31 = self->_switchWellView;
    v32 = +[UIColor clearColor];
    [(UIView *)v31 setBackgroundColor:v32];

    v33 = self->_leftSwitchWellView;
    v34 = +[UIColor clearColor];
    [(UIView *)v33 setBackgroundColor:v34];

    layer6 = [(UIView *)self->_switchWellView layer];
    [layer6 setCornerRadius:15.5];

    layer7 = [(UIView *)self->_leftSwitchWellView layer];
    [layer7 setCornerRadius:15.5];

    [(UIView *)self bounds];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43 * 0.5;
    v45 = [[UIView alloc] initWithFrame:v37, v39, v43 * 0.5, v41];
    leftSwitchWellContainerView = self->_leftSwitchWellContainerView;
    self->_leftSwitchWellContainerView = v45;

    [(UIView *)self->_leftSwitchWellContainerView setClipsToBounds:1];
    v47 = [[UIView alloc] initWithFrame:v38 + v44, v40, v44, v42];
    v48 = self->_switchWellContainerView;
    self->_switchWellContainerView = v47;

    [(UIView *)self->_switchWellContainerView setClipsToBounds:1];
    [(UIView *)self->_switchWellContainerView addSubview:self->_switchWellView];
    [(UIView *)self->_leftSwitchWellContainerView addSubview:self->_leftSwitchWellView];
    [(UISwitchModernVisualElement *)self _orderSubviews];
    [(UISwitchModernVisualElement *)self _transitionWellViewToPressed:0 animated:0];
    [(UISwitchModernVisualElement *)self _transitionWellViewToOn:self->_on animated:0];
  }

  pressed = self->_pressed;
  on = self->_on;

  [(UISwitchModernVisualElement *)self _transitionKnobToPressed:pressed on:on animated:0];
}

- (id)_effectiveGradientImage
{
  _effectiveOnTintColor = [(UISwitchModernVisualElement *)self _effectiveOnTintColor];
  traitCollection = [(UIView *)self traitCollection];
  v5 = [UISwitchModernVisualElement _modernGradientImageWithOnColor:_effectiveOnTintColor traitCollection:traitCollection];

  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    imageWithHorizontallyFlippedOrientation = [v5 imageWithHorizontallyFlippedOrientation];
  }

  else
  {
    imageWithHorizontallyFlippedOrientation = v5;
  }

  v7 = imageWithHorizontallyFlippedOrientation;

  return v7;
}

- (id)_effectiveOnTintColor
{
  onTintColor = self->_onTintColor;
  if (onTintColor)
  {
    _defaultOnTintColor = onTintColor;
  }

  else
  {
    _defaultOnTintColor = [(UISwitchModernVisualElement *)self _defaultOnTintColor];
  }

  return _defaultOnTintColor;
}

- (void)_invalidateUserInterfaceRenderingMode
{
  traitCollection = [(UIView *)self traitCollection];
  v4 = [traitCollection _userInterfaceRenderingMode] == 0;

  switchWellView = self->_switchWellView;

  [(UIView *)switchWellView _setOverrideUserInterfaceRenderingMode:2 * v4];
}

- (id)_effectiveTintColor
{
  if (dyld_program_sdk_at_least())
  {
    if (_UISolariumEnabled())
    {
      +[UIColor tertiaryLabelColor];
    }

    else
    {
      +[UIColor _switchOffColor];
    }
    v3 = ;
  }

  else
  {
    tintColor = self->_tintColor;
    if (tintColor)
    {
      v3 = tintColor;
    }

    else
    {
      v3 = [UIColor colorWithWhite:0.9 alpha:1.0];
    }
  }

  return v3;
}

- (void)_orderSubviews
{
  if (dyld_program_sdk_at_least())
  {
    [(UIView *)self insertSubview:self->_switchWellView atIndex:0];
    [(UIView *)self insertSubview:self->_switchWellContainerView aboveSubview:self->_switchWellView];
    p_knobView = &self->_knobView;
    [(UIView *)self->_switchWellContainerView bringSubviewToFront:self->_knobView];
    switchWellContainerView = self->_switchWellContainerView;
  }

  else
  {
    [(UIView *)self insertSubview:self->_switchWellContainerView atIndex:0];
    [(UIView *)self insertSubview:self->_leftSwitchWellContainerView aboveSubview:self->_switchWellContainerView];
    p_knobView = &self->_knobView;
    [(UIView *)self bringSubviewToFront:self->_knobView];
    switchWellContainerView = self;
  }

  switchWellImageViewContainer = self->_switchWellImageViewContainer;
  v6 = *p_knobView;

  [(UIView *)switchWellContainerView insertSubview:switchWellImageViewContainer belowSubview:v6];
}

- (void)_invalidateKnob
{
  [(UIView *)self->_knobView removeFromSuperview];
  if (_UISolariumEnabled())
  {
    v3 = [_UILiquidLensView alloc];
    v4 = [(_UILiquidLensView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v5 = +[UIColor whiteColor];
    [(UIView *)v4 setRestingBackgroundColor:v5];

    [(UIView *)v4 setWarpsContentBelow:1];
    knobView = self->_knobView;
    self->_knobView = v4;
  }

  else
  {
    v7 = [UIImageView alloc];
    knobView = [(UISwitchModernVisualElement *)self _effectiveThumbImage];
    v8 = [(UIImageView *)v7 initWithImage:knobView];
    v9 = self->_knobView;
    self->_knobView = v8;
  }

  [(UISwitchModernVisualElement *)self _transitionKnobToPressed:0 animated:0];
  [(UISwitchModernVisualElement *)self _transitionKnobToOn:self->_on animated:0];
  if (dyld_program_sdk_at_least() && (_UISolariumEnabled() & 1) == 0)
  {
    switchWellContainerView = self->_switchWellContainerView;
    v10 = self->_knobView;
  }

  else
  {
    v10 = self->_knobView;
    switchWellContainerView = self;
  }

  [(UIView *)switchWellContainerView addSubview:v10];

  [(UISwitchModernVisualElement *)self _orderSubviews];
}

- (void)_invalidateOnOffImages
{
  [(UIView *)self->_switchWellOffImageView removeFromSuperview];
  [(UIView *)self->_switchWellOnImageView removeFromSuperview];
  [(UIView *)self->_switchWellImageViewContainer removeFromSuperview];
  v3 = [UIImageView alloc];
  _effectiveOffImage = [(UISwitchModernVisualElement *)self _effectiveOffImage];
  v5 = [(UIImageView *)v3 initWithImage:_effectiveOffImage];
  switchWellOffImageView = self->_switchWellOffImageView;
  self->_switchWellOffImageView = v5;

  v7 = [UIImageView alloc];
  _effectiveOnImage = [(UISwitchModernVisualElement *)self _effectiveOnImage];
  v9 = [(UIImageView *)v7 initWithImage:_effectiveOnImage];
  switchWellOnImageView = self->_switchWellOnImageView;
  self->_switchWellOnImageView = v9;

  v11 = [UIView alloc];
  [(UIView *)self bounds];
  v12 = [(UIView *)v11 initWithFrame:?];
  switchWellImageViewContainer = self->_switchWellImageViewContainer;
  self->_switchWellImageViewContainer = v12;

  v14 = self->_switchWellOffImageView;
  [(UISwitchModernVisualElement *)self _offImagePosition];
  [(UIImageView *)v14 setCenter:?];
  v15 = self->_switchWellOnImageView;
  [(UISwitchModernVisualElement *)self _onImagePosition];
  [(UIImageView *)v15 setCenter:?];
  v16 = self->_switchWellOffImageView;
  _effectiveOffImageTintColor = [(UISwitchModernVisualElement *)self _effectiveOffImageTintColor];
  [(UIView *)v16 setTintColor:_effectiveOffImageTintColor];

  v18 = self->_switchWellOnImageView;
  _effectiveOnImageTintColor = [(UISwitchModernVisualElement *)self _effectiveOnImageTintColor];
  [(UIView *)v18 setTintColor:_effectiveOnImageTintColor];

  [(UIView *)self->_switchWellImageViewContainer addSubview:self->_switchWellOffImageView];
  [(UIView *)self->_switchWellImageViewContainer addSubview:self->_switchWellOnImageView];
  [(UIView *)self addSubview:self->_switchWellImageViewContainer];
  [(UISwitchModernVisualElement *)self _transitionImagesToPressed:self->_pressed on:self->_on animated:0];

  [(UISwitchModernVisualElement *)self _orderSubviews];
}

- (id)_effectiveOffImage
{
  if ([(UISwitchModernVisualElement *)self showsOnOffLabel])
  {
    _accessibleOffImage = [(UISwitchModernVisualElement *)self _accessibleOffImage];
  }

  else
  {
    _accessibleOffImage = 0;
  }

  return _accessibleOffImage;
}

- (id)_effectiveOnImage
{
  if ([(UISwitchModernVisualElement *)self showsOnOffLabel])
  {
    _accessibleOnImage = [(UISwitchModernVisualElement *)self _accessibleOnImage];
  }

  else
  {
    _accessibleOnImage = 0;
  }

  return _accessibleOnImage;
}

- (CGPoint)_offImagePosition
{
  if (_UISolariumEnabled())
  {
    v3 = 14.0;
    *&v4 = 48.0;
  }

  else
  {
    [(UIView *)self bounds];
    [(UISwitchModernVisualElement *)self _knobPositionOn:1 pressed:0 forBounds:?];
    [(UIView *)self bounds];
    [(UISwitchModernVisualElement *)self _knobPositionOn:1 pressed:1 forBounds:?];
    UIFloorToViewScale(self);
    v4 = v5;
    UIFloorToViewScale(self);
    v3 = v6;
  }

  v7 = *&v4;
  result.y = v3;
  result.x = v7;
  return result;
}

- (CGPoint)_onImagePosition
{
  if (_UISolariumEnabled())
  {
    v3 = 14.0;
    v4 = 15.0;
  }

  else
  {
    [(UIView *)self bounds];
    [(UISwitchModernVisualElement *)self _knobPositionOn:0 pressed:0 forBounds:?];
    [(UIView *)self bounds];
    [(UISwitchModernVisualElement *)self _knobPositionOn:0 pressed:1 forBounds:?];
    UIFloorToViewScale(self);
    v4 = v5;
    UIFloorToViewScale(self);
    v3 = v6;
  }

  v7 = v4;
  result.y = v3;
  result.x = v7;
  return result;
}

- (id)_effectiveOffImageTintColor
{
  if (dyld_program_sdk_at_least())
  {
    +[UIColor _switchOffImageColor];
  }

  else
  {
    [UIColor colorWithWhite:0.7 alpha:1.0];
  }
  v2 = ;

  return v2;
}

- (id)_effectiveOnImageTintColor
{
  if (self->_onTintColor && ![(UISwitchModernVisualElement *)self _shouldUseLightTintOverColor:?])
  {
    v2 = [UIColor colorWithWhite:0.0 alpha:1.0];
  }

  else
  {
    v2 = +[UIColor whiteColor];
  }

  return v2;
}

- (void)_uninstallSelectGestureRecognizer
{
  selectGestureRecognizer = [(UISwitchModernVisualElement *)self selectGestureRecognizer];

  if (selectGestureRecognizer)
  {
    switchControl = [(UISwitchVisualElement *)self switchControl];
    selectGestureRecognizer2 = [(UISwitchModernVisualElement *)self selectGestureRecognizer];
    [switchControl removeGestureRecognizer:selectGestureRecognizer2];

    [(UISwitchModernVisualElement *)self setSelectGestureRecognizer:0];
  }
}

- (void)_installSelectGestureRecognizer
{
  selectGestureRecognizer = [(UISwitchModernVisualElement *)self selectGestureRecognizer];

  if (!selectGestureRecognizer)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__selectGestureChanged_];
    [(UISwitchModernVisualElement *)self setSelectGestureRecognizer:v4];

    selectGestureRecognizer2 = [(UISwitchModernVisualElement *)self selectGestureRecognizer];
    [selectGestureRecognizer2 setAllowedPressTypes:&unk_1EFE2BD28];

    selectGestureRecognizer3 = [(UISwitchModernVisualElement *)self selectGestureRecognizer];
    [selectGestureRecognizer3 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];

    selectGestureRecognizer4 = [(UISwitchModernVisualElement *)self selectGestureRecognizer];
    [selectGestureRecognizer4 setDelegate:self];

    switchControl = [(UISwitchVisualElement *)self switchControl];
    [switchControl addGestureRecognizer:self->_selectGestureRecognizer];
  }
}

+ (UIEdgeInsets)preferredAlignmentRectInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 2.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v4.receiver = self;
  v4.super_class = UISwitchModernVisualElement;
  [(UIView *)&v4 _dynamicUserInterfaceTraitDidChange];
  if (dyld_program_sdk_at_least())
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __66__UISwitchModernVisualElement__dynamicUserInterfaceTraitDidChange__block_invoke;
    v3[3] = &unk_1E70F3590;
    v3[4] = self;
    [UIView performWithoutAnimation:v3];
  }
}

- (void)setOn:(BOOL)on animated:(BOOL)animated
{
  animatedCopy = animated;
  onCopy = on;
  gestureTrackingSession = [(UISwitchModernVisualElement *)self gestureTrackingSession];
  [gestureTrackingSession setDisplayedOnValue:onCopy];

  self->_on = onCopy;

  [(UISwitchModernVisualElement *)self _updateDisplayAnimated:animatedCopy];
}

- (UISwitchModernVisualElement)initWithFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
  v20[1] = *MEMORY[0x1E69E9840];
  [objc_opt_class() preferredContentSize];
  v19.receiver = self;
  v19.super_class = UISwitchModernVisualElement;
  v8 = [(UISwitchVisualElement *)&v19 initWithFrame:x, y, v6, v7];
  [(UISwitchModernVisualElement *)v8 _invalidateControl];
  [(UISwitchModernVisualElement *)v8 setPressed:0];
  v9 = [[UILongPressGestureRecognizer alloc] initWithTarget:v8 action:sel__handleLongPress_];
  [(UILongPressGestureRecognizer *)v9 setMinimumPressDuration:0.01];
  [(UIGestureRecognizer *)v9 _setCanExcludeWithActiveRequirements:0];
  [(UIGestureRecognizer *)v9 setName:@"UISwitch-longPress"];
  [(UIView *)v8 addGestureRecognizer:v9];
  [(UISwitchModernVisualElement *)v8 setLongPress:v9];
  [(UIGestureRecognizer *)v9 setDelegate:v8];
  v10 = [[UIPanGestureRecognizer alloc] initWithTarget:v8 action:sel__handlePan_];
  [(UIPanGestureRecognizer *)v10 _setHysteresis:0.0];
  [(UIGestureRecognizer *)v10 _setCanExcludeWithActiveRequirements:0];
  [(UIGestureRecognizer *)v10 setName:@"UISwitch-pan"];
  [(UIView *)v8 addGestureRecognizer:v10];
  [(UISwitchModernVisualElement *)v8 setPan:v10];
  [(UIPanGestureRecognizer *)v10 setDelegate:v8];
  v11 = +[_UIImpactFeedbackGeneratorConfiguration lightConfiguration];
  v12 = [v11 tweakedConfigurationForClass:objc_opt_class() usage:@"valueChange"];

  v13 = [(UIFeedbackGenerator *)[UIImpactFeedbackGenerator alloc] initWithConfiguration:v12 view:v8];
  [(UISwitchVisualElement *)v8 setImpactFeedbackGenerator:v13];
  v14 = [[UISwitchMVEGestureTrackingSession alloc] initWithVisualElement:v8];
  gestureTrackingSession = v8->_gestureTrackingSession;
  v8->_gestureTrackingSession = v14;

  v20[0] = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v17 = [(UIView *)v8 registerForTraitChanges:v16 withTarget:v8 action:sel__invalidateUserInterfaceRenderingMode];

  return v8;
}

- (void)sendStateChangeActions
{
  switchControl = [(UISwitchVisualElement *)self switchControl];
  [switchControl visualElement:self transitionedToOn:{-[UISwitchModernVisualElement on](self, "on")}];
}

- (void)performStateChangeFeedback
{
  if ([(UISwitchModernVisualElement *)self _feedbackEnabled])
  {
    _settings = [(UISwitchModernVisualElement *)self _settings];
    [_settings hapticDelay];
    v5 = v4;

    impactFeedbackGenerator = [(UISwitchVisualElement *)self impactFeedbackGenerator];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__UISwitchModernVisualElement_performStateChangeFeedback__block_invoke;
    v7[3] = &unk_1E70F3590;
    v7[4] = self;
    [impactFeedbackGenerator performFeedbackWithDelay:v7 insideBlock:v5];
  }
}

void __57__UISwitchModernVisualElement_performStateChangeFeedback__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) impactFeedbackGenerator];
  v2 = [*(a1 + 32) _settings];
  [v2 impactIntensity];
  v4 = v3;
  [*(a1 + 32) center];
  [v7 impactOccurredWithIntensity:v4 atLocation:{v5, v6}];
}

- (void)interactiveChangeToDisplayedOn:(BOOL)on
{
  onCopy = on;
  if ([(UISwitchModernVisualElement *)self on]!= on)
  {
    [(UISwitchModernVisualElement *)self setOn:onCopy animated:+[UIView areAnimationsEnabled]];

    [(UISwitchModernVisualElement *)self performStateChangeFeedback];
  }
}

- (BOOL)_gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event
{
  recognizerCopy = recognizer;
  eventCopy = event;
  if (![eventCopy type])
  {
    longPress = [(UISwitchModernVisualElement *)self longPress];

    if (longPress == recognizerCopy)
    {
      allTouches = [eventCopy allTouches];
      v10 = [allTouches count];

      if (v10 == 1)
      {
        allTouches2 = [eventCopy allTouches];
        anyObject = [allTouches2 anyObject];

        if ([anyObject _isPointerTouch])
        {
          v13 = 0.0;
        }

        else
        {
          v13 = 0.01;
        }
      }

      else
      {
        v13 = 0.01;
      }

      longPress2 = [(UISwitchModernVisualElement *)self longPress];
      [longPress2 setMinimumPressDuration:v13];
    }
  }

  v15 = [recognizerCopy _shouldReceiveEvent:eventCopy];

  return v15;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  longPress = [(UISwitchModernVisualElement *)self longPress];
  if (longPress == recognizerCopy)
  {
    v4 = [(UISwitchModernVisualElement *)self pan];
    if (v4 == gestureRecognizerCopy)
    {
      v11 = 1;
LABEL_9:

      goto LABEL_10;
    }
  }

  v10 = [(UISwitchModernVisualElement *)self pan];
  if (v10 == recognizerCopy)
  {
    longPress2 = [(UISwitchModernVisualElement *)self longPress];
    v11 = longPress2 == gestureRecognizerCopy;
  }

  else
  {
    v11 = 0;
  }

  if (longPress == recognizerCopy)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v11;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  longPress = [(UISwitchModernVisualElement *)self longPress];
  if (longPress != recognizerCopy)
  {
    self = [(UISwitchModernVisualElement *)self pan];
    if (self != recognizerCopy)
    {
      isKindOfClass = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (longPress != recognizerCopy)
  {
    goto LABEL_5;
  }

LABEL_6:

  return isKindOfClass & 1;
}

- (void)_handleLongPress:(id)press
{
  pressCopy = press;
  [pressCopy locationInView:self];
  v6 = v5;
  v8 = v7;
  state = [pressCopy state];

  [(UISwitchModernVisualElement *)self _handleLongPressWithGestureLocationInBounds:state gestureState:v6, v8];
}

- (void)_handleLongPressWithGestureLocationInBounds:(CGPoint)bounds gestureState:(int64_t)state
{
  y = bounds.y;
  x = bounds.x;
  gestureTrackingSession = [(UISwitchModernVisualElement *)self gestureTrackingSession];
  if (_UISolariumEnabled())
  {
    v9 = 0;
  }

  else
  {
    switchControl = [(UISwitchVisualElement *)self switchControl];
    v9 = [switchControl pointMostlyInside:{x, y}] ^ 1;
  }

  v11 = [(UISwitchModernVisualElement *)self on];
  pressed = [(UISwitchModernVisualElement *)self pressed];
  if (v9)
  {
    [(UISwitchModernVisualElement *)self setPressed:0];
    if (state == 3)
    {
      longPress = [(UISwitchModernVisualElement *)self longPress];
      v14 = [gestureTrackingSession canApplyPendingOnValueForGesture:longPress];

      if (v14)
      {
        [gestureTrackingSession applyPendingDisplayedOnValueWithoutSendingActions];
        LOBYTE(v15) = 0;
LABEL_15:
        v19 = 1;
        goto LABEL_19;
      }
    }

    goto LABEL_12;
  }

  [(UISwitchModernVisualElement *)self setPressed:1];
  if (state == 1)
  {
    self->_startedOn = v11;
    [gestureTrackingSession reset];
    impactFeedbackGenerator = [(UISwitchVisualElement *)self impactFeedbackGenerator];
    [impactFeedbackGenerator activateWithCompletionBlock:0];

    LODWORD(impactFeedbackGenerator) = [(UISwitchModernVisualElement *)self on];
    longPress2 = [(UISwitchModernVisualElement *)self longPress];
    [gestureTrackingSession setPendingDisplayedOnValue:impactFeedbackGenerator ^ 1 forGesture:longPress2];

    goto LABEL_17;
  }

  if (state != 3)
  {
    if (state != 2)
    {
LABEL_17:
      LOBYTE(v15) = 0;
      goto LABEL_18;
    }

    v16 = [(UISwitchModernVisualElement *)self pan];
    v17 = [gestureTrackingSession canApplyPendingOnValueForGesture:v16];

    if (!v17)
    {
      if (_UISolariumEnabled())
      {
        [(UISwitchModernVisualElement *)self _transitionKnobToPressed:self->_pressed on:self->_on animated:+[UIView areAnimationsEnabled]];
      }

      goto LABEL_17;
    }

LABEL_12:
    [gestureTrackingSession applyPendingDisplayedOnValueWithoutSendingActions];
    goto LABEL_17;
  }

  longPress3 = [(UISwitchModernVisualElement *)self longPress];
  v15 = [gestureTrackingSession canApplyPendingOnValueForGesture:longPress3];

  if (v15)
  {
    [gestureTrackingSession applyPendingDisplayedOnValueWithoutSendingActions];
    LOBYTE(v15) = 1;
    goto LABEL_15;
  }

LABEL_18:
  v19 = 0;
LABEL_19:
  v22 = [UISwitchMVEGestureTrackingSession gestureIsInEndState:state];
  v23 = v22;
  if (v22)
  {
    [(UISwitchModernVisualElement *)self setPressed:0];
    [gestureTrackingSession applyPendingDisplayedOnValueWithoutSendingActions];
    impactFeedbackGenerator2 = [(UISwitchVisualElement *)self impactFeedbackGenerator];
    if ([impactFeedbackGenerator2 isActive])
    {
      [impactFeedbackGenerator2 deactivate];
    }

    v19 = 1;
  }

  if (v11 != [(UISwitchModernVisualElement *)self on]|| pressed != [(UISwitchModernVisualElement *)self pressed])
  {
    [(UISwitchModernVisualElement *)self _updateDisplayAnimated:1];
  }

  v25 = UIApp;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __88__UISwitchModernVisualElement__handleLongPressWithGestureLocationInBounds_gestureState___block_invoke;
  v27[3] = &unk_1E70F6820;
  v30 = v19;
  v31 = v23;
  v32 = v15;
  v28 = gestureTrackingSession;
  selfCopy = self;
  v26 = gestureTrackingSession;
  [v25 _performBlockAfterCATransactionCommits:v27];
}

uint64_t __88__UISwitchModernVisualElement__handleLongPressWithGestureLocationInBounds_gestureState___block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 48) == 1)
  {
    CFRunLoopRunInMode(*MEMORY[0x1E695E8D0], 0.0, 1u);
    result = [*(v1 + 32) applyPendingDisplayedOnValueAndSendActions];
  }

  if (*(v1 + 49) == 1)
  {
    if (*(v1 + 50) == 1)
    {
      v2 = [*(v1 + 40) switchControl];
      [v2 visualElementHadTouchUpInside:*(v1 + 40)];
    }

    v3 = *(v1 + 32);

    return [v3 reset];
  }

  return result;
}

- (void)_handlePan:(id)pan
{
  panCopy = pan;
  [panCopy translationInView:self];
  v6 = v5 - self->_zeroOffset;
  [panCopy locationInView:self];
  v8 = v7;
  v10 = v9;
  state = [panCopy state];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__UISwitchModernVisualElement__handlePan___block_invoke;
  v13[3] = &unk_1E70F35B8;
  v13[4] = self;
  v14 = panCopy;
  v12 = panCopy;
  [(UISwitchModernVisualElement *)self _handlePanWithGestureLocationInBounds:state horizontalTranslation:v13 gestureState:v8 resetPanTranslationBlock:v10, v6];
}

uint64_t __42__UISwitchModernVisualElement__handlePan___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) translationInView:*(a1 + 32)];
  *(*(a1 + 32) + 544) = v3;
  return result;
}

- (void)_handlePanWithGestureLocationInBounds:(CGPoint)bounds horizontalTranslation:(double)translation gestureState:(int64_t)state resetPanTranslationBlock:(id)block
{
  blockCopy = block;
  gestureTrackingSession = [(UISwitchModernVisualElement *)self gestureTrackingSession];
  if (state == 2)
  {
    v10 = [(UISwitchModernVisualElement *)self pan];
    v11 = [gestureTrackingSession updatePendingDisplayedOnValueIfMovementIsEnoughToInitiateChange:v10 forGesture:translation];

    if (v11)
    {
      blockCopy[2]();
    }
  }

  else if ([UISwitchMVEGestureTrackingSession gestureIsInEndState:state])
  {
    [gestureTrackingSession invalidatePendingOnValue];
    self->_zeroOffset = 0.0;
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = objc_opt_new();
  v6 = [UIBezierPath bezierPathWithOvalInRect:8.0, 5.0, 27.0, 27.0];
  [v5 setVisiblePath:v6];

  v7 = [[UITargetedPreview alloc] initWithView:self->_knobView parameters:v5];
  v8 = [(UIPointerEffect *)UIPointerLiftEffect effectWithPreview:v7];
  v9 = [UIPointerStyle styleWithEffect:v8 shape:0];

  return v9;
}

- (void)_switchToStaticMode:(BOOL)mode
{
  modeCopy = mode;
  [(UIView *)self->_switchWellContainerView setClipsToBounds:!mode];
  [(UIImageView *)self->_switchWellImageView setHidden:modeCopy];
  if (self->_on)
  {
    [(UISwitchModernVisualElement *)self _effectiveOnTintColor];
  }

  else
  {
    [(UISwitchModernVisualElement *)self _effectiveTintColor];
  }
  v7 = ;
  if (_UISolariumEnabled())
  {
    [(UIView *)self->_knobView setTintColor:v7];
    if (!modeCopy)
    {
      goto LABEL_9;
    }

LABEL_8:
    v6 = v7;
    if (self->_on)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  _effectiveThumbImage = [(UISwitchModernVisualElement *)self _effectiveThumbImage];
  [(UIView *)self->_knobView setImage:_effectiveThumbImage];

  if (modeCopy)
  {
    goto LABEL_8;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  [(UIView *)self->_switchWellContainerView setBackgroundColor:v6];
}

- (void)setOnTintColor:(id)color
{
  colorCopy = color;
  if (![(UIColor *)self->_onTintColor isEqual:?])
  {
    objc_storeStrong(&self->_onTintColor, color);
    switchWellOnImageView = self->_switchWellOnImageView;
    _effectiveOnImageTintColor = [(UISwitchModernVisualElement *)self _effectiveOnImageTintColor];
    [(UIView *)switchWellOnImageView setTintColor:_effectiveOnImageTintColor];

    if (dyld_program_sdk_at_least())
    {
      switchWellImageView = self->_switchWellImageView;
      _effectiveGradientImage = [(UISwitchModernVisualElement *)self _effectiveGradientImage];
      [(UIImageView *)switchWellImageView setImage:_effectiveGradientImage];
    }
  }

  [(UISwitchModernVisualElement *)self _updateDisplayWithAnimationIfNeeded];
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  if (![(UIColor *)self->_tintColor isEqual:?])
  {
    objc_storeStrong(&self->_tintColor, color);
    switchWellOffImageView = self->_switchWellOffImageView;
    _effectiveOffImageTintColor = [(UISwitchModernVisualElement *)self _effectiveOffImageTintColor];
    [(UIView *)switchWellOffImageView setTintColor:_effectiveOffImageTintColor];
  }

  [(UISwitchModernVisualElement *)self _updateDisplayWithAnimationIfNeeded];
}

- (void)setThumbTintColor:(id)color
{
  colorCopy = color;
  if (![(UIColor *)self->_thumbTintColor isEqual:?])
  {
    objc_storeStrong(&self->_thumbTintColor, color);
  }

  v5 = _UISolariumEnabled();
  knobView = self->_knobView;
  if (v5)
  {
    if (colorCopy)
    {
      [(UIView *)self->_knobView setRestingBackgroundColor:?];
      goto LABEL_9;
    }

    _effectiveThumbImage = +[UIColor whiteColor];
    [(UIView *)knobView setRestingBackgroundColor:_effectiveThumbImage];
  }

  else
  {
    _effectiveThumbImage = [(UISwitchModernVisualElement *)self _effectiveThumbImage];
    [(UIView *)knobView setImage:_effectiveThumbImage];
  }

LABEL_9:
}

- (void)setOnImage:(id)image
{
  imageCopy = image;
  if (![(UIImage *)self->_onImage isEqual:?])
  {
    objc_storeStrong(&self->_onImage, image);
  }

  [(UISwitchModernVisualElement *)self _invalidateOnOffImages];
}

- (void)setOffImage:(id)image
{
  imageCopy = image;
  if (![(UIImage *)self->_offImage isEqual:?])
  {
    objc_storeStrong(&self->_offImage, image);
  }

  [(UISwitchModernVisualElement *)self _invalidateOnOffImages];
}

- (void)_transitionKnobToPressed:(BOOL)pressed on:(BOOL)on animated:(BOOL)animated
{
  animatedCopy = animated;
  onCopy = on;
  pressedCopy = pressed;
  [(UISwitchModernVisualElement *)self _knobBoundsPressed:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (_UISolariumEnabled())
  {
    if (pressedCopy)
    {
      v17 = [(UISwitchModernVisualElement *)self pan];
      [v17 translationInView:self];

      LODWORD(v17) = self->_startedOn;
      v18 = [(UISwitchModernVisualElement *)self pan];
      [v18 translationInView:self];
      v20 = [(UISwitchModernVisualElement *)self _knobPositionAdjusted:v17 on:1 offset:v19 pressed:*&v10 forBounds:*&v12, *&v14];
      v22 = v21;
    }

    else
    {
      [(UISwitchModernVisualElement *)self _knobPositionOn:onCopy pressed:0 forBounds:*&v10, *&v12, *&v14, *&v16];
      v20 = v49;
      v22 = v50;
    }

    v163[0] = MEMORY[0x1E69E9820];
    v163[1] = 3221225472;
    v163[2] = __68__UISwitchModernVisualElement__transitionKnobToPressed_on_animated___block_invoke;
    v163[3] = &unk_1E7101C38;
    v164 = onCopy;
    v163[4] = self;
    *&v163[5] = v20;
    v163[6] = v22;
    v51 = _Block_copy(v163);
    v40 = v51;
    if (animatedCopy)
    {
      [(UISwitchModernVisualElement *)self _switchToStaticMode:0];
      v52 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.3];
      [UIView _animateUsingSpringBehavior:v52 tracking:0 animations:v40 completion:0];
    }

    else
    {
      v51[2](v51);
    }

    objc_initWeak(&location, self);
    knobView = self->_knobView;
    v160[0] = MEMORY[0x1E69E9820];
    v160[1] = 3221225472;
    v160[2] = __68__UISwitchModernVisualElement__transitionKnobToPressed_on_animated___block_invoke_2;
    v160[3] = &unk_1E7105370;
    objc_copyWeak(v161, &location);
    v161[1] = v10;
    v161[2] = v12;
    v161[3] = v14;
    v161[4] = v16;
    v158[0] = MEMORY[0x1E69E9820];
    v158[1] = 3221225472;
    v158[2] = __68__UISwitchModernVisualElement__transitionKnobToPressed_on_animated___block_invoke_3;
    v158[3] = &unk_1E7105398;
    objc_copyWeak(&v159, &location);
    [(UIView *)knobView setLifted:pressedCopy animated:animatedCopy alongsideAnimations:v160 completion:v158];
    if (!animatedCopy)
    {
      [(UISwitchModernVisualElement *)self _switchToStaticMode:1];
    }

    objc_destroyWeak(&v159);
    objc_destroyWeak(v161);
    objc_destroyWeak(&location);
  }

  else
  {
    v23 = dyld_program_sdk_at_least();
    [(UISwitchModernVisualElement *)self _knobPositionOn:onCopy pressed:pressedCopy forBounds:*&v10, *&v12, *&v14, *&v16];
    v25 = v24;
    v27 = v26;
    layer = [(UIView *)self->_knobView layer];
    presentationLayer = [layer presentationLayer];
    [presentationLayer bounds];
    v152 = v30;
    v153 = v31;
    v154 = v32;
    v155 = v33;

    layer2 = [(UIView *)self->_knobView layer];
    presentationLayer2 = [layer2 presentationLayer];
    [presentationLayer2 position];
    v37 = v36;
    v39 = v38;

    if (v23)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __68__UISwitchModernVisualElement__transitionKnobToPressed_on_animated___block_invoke_4;
      aBlock[3] = &unk_1E70F3DC8;
      aBlock[4] = self;
      aBlock[5] = v10;
      aBlock[6] = v12;
      aBlock[7] = v14;
      aBlock[8] = v16;
      *&aBlock[9] = v25;
      *&aBlock[10] = v27;
      v40 = _Block_copy(aBlock);
      if (animatedCopy)
      {
        [(UISwitchModernVisualElement *)self _switchToStaticMode:0];
        v40[2](v40);
        layer3 = [(UIView *)self->_knobView layer];
        v42 = [MEMORY[0x1E696B098] valueWithCGRect:{v152, v153, v154, v155}];
        v43 = [MEMORY[0x1E696B098] valueWithCGRect:{*&v10, *&v12, *&v14, *&v16}];
        v44 = [(UISwitchModernVisualElement *)self _switchKnobWidthSpringAnimationFromValue:v42 toValue:v43 pressed:pressedCopy];
        [layer3 addAnimation:v44 forKey:@"TouchKnobBoundsAnimation"];

        layer4 = [(UIView *)self->_knobView layer];
        v46 = [MEMORY[0x1E696B098] valueWithCGPoint:{v37, v39}];
        v47 = [MEMORY[0x1E696B098] valueWithCGPoint:{v25, v27}];
        v48 = [(UISwitchModernVisualElement *)self _switchKnobPositionSpringAnimationFromValue:v46 toValue:v47];
        [layer4 addAnimation:v48 forKey:@"TouchKnobPositionAnimation"];
      }

      else
      {
        [UIView performWithoutAnimation:v40];
        [(UISwitchModernVisualElement *)self _switchToStaticMode:1];
      }
    }

    else
    {
      v140 = v37;
      v141 = v39;
      layer5 = [(UIView *)self->_switchWellContainerView layer];
      presentationLayer3 = [layer5 presentationLayer];
      [presentationLayer3 bounds];
      v126 = v56;
      v127 = v55;
      v124 = v58;
      v125 = v57;

      layer6 = [(UIView *)self->_switchWellContainerView layer];
      presentationLayer4 = [layer6 presentationLayer];
      [presentationLayer4 position];
      v128 = v62;
      v129 = v61;

      layer7 = [(UIView *)self->_leftSwitchWellContainerView layer];
      presentationLayer5 = [layer7 presentationLayer];
      [presentationLayer5 bounds];
      v132 = v66;
      v133 = v65;
      v130 = v68;
      v131 = v67;

      layer8 = [(UIView *)self->_leftSwitchWellContainerView layer];
      presentationLayer6 = [layer8 presentationLayer];
      [presentationLayer6 position];
      v138 = v72;
      v139 = v71;

      [(UISwitchModernVisualElement *)self _switchWellContainerBoundsOn:onCopy pressed:pressedCopy];
      v147 = v73;
      v148 = v74;
      v151 = v75;
      v76 = *&v14;
      v149 = v77;
      [(UISwitchModernVisualElement *)self _switchWellContainerPositionOn:onCopy pressed:pressedCopy];
      v146 = v78;
      v150 = v79;
      [(UISwitchModernVisualElement *)self _leftSwitchWellContainerBoundsOn:onCopy pressed:pressedCopy];
      v81 = v80;
      v144 = v83;
      v145 = v82;
      v143 = v84;
      [(UISwitchModernVisualElement *)self _leftSwitchWellContainerPositionOn:onCopy pressed:pressedCopy];
      v86 = v85;
      v142 = v87;
      _backing_outermostLayer = [(UIView *)&self->_switchWellView->super.super.isa _backing_outermostLayer];
      presentationLayer7 = [_backing_outermostLayer presentationLayer];
      [presentationLayer7 position];
      v136 = v91;
      v137 = v90;

      [(UISwitchModernVisualElement *)self _switchWellPositionOn:onCopy pressed:pressedCopy];
      v156[0] = MEMORY[0x1E69E9820];
      v156[1] = 3221225472;
      v156[2] = __68__UISwitchModernVisualElement__transitionKnobToPressed_on_animated___block_invoke_5;
      v156[3] = &unk_1E71053C0;
      v156[4] = self;
      v156[5] = v10;
      v156[6] = v12;
      *&v156[7] = v76;
      v156[8] = v16;
      *&v156[9] = v25;
      *&v156[10] = v27;
      *&v156[11] = v147;
      *&v156[12] = v151;
      *&v156[13] = v148;
      *&v156[14] = v149;
      *&v156[15] = v146;
      *&v156[16] = v150;
      *&v156[17] = v81;
      *&v156[18] = v145;
      *&v156[19] = v144;
      *&v156[20] = v143;
      *&v156[21] = v86;
      *&v156[22] = v142;
      *&v156[23] = v92;
      v134 = v93;
      v135 = v92;
      *&v156[24] = v93;
      v94 = _Block_copy(v156);
      v40 = v94;
      if (animatedCopy)
      {
        v94[2](v94);
        layer9 = [(UIView *)self->_knobView layer];
        v96 = [MEMORY[0x1E696B098] valueWithCGRect:{v152, v153, v154, v155}];
        v97 = [MEMORY[0x1E696B098] valueWithCGRect:{*&v10, *&v12, v76, *&v16}];
        v98 = [(UISwitchModernVisualElement *)self _switchSpringAnimationWithKeyPath:@"bounds" fromValue:v96 toValue:v97 pressed:pressedCopy];
        [layer9 addAnimation:v98 forKey:@"TouchKnobBoundsAnimation"];

        layer10 = [(UIView *)self->_knobView layer];
        v100 = [MEMORY[0x1E696B098] valueWithCGPoint:{v140, v141}];
        v101 = [MEMORY[0x1E696B098] valueWithCGPoint:{v25, v27}];
        v102 = [(UISwitchModernVisualElement *)self _switchSpringAnimationWithKeyPath:@"position" fromValue:v100 toValue:v101 pressed:pressedCopy];
        [layer10 addAnimation:v102 forKey:@"TouchKnobPositionAnimation"];

        layer11 = [(UIView *)self->_switchWellContainerView layer];
        v104 = [MEMORY[0x1E696B098] valueWithCGRect:{v127, v126, v125, v124}];
        v105 = [MEMORY[0x1E696B098] valueWithCGRect:{v147, v151, v148, v149}];
        v106 = [(UISwitchModernVisualElement *)self _switchSpringAnimationWithKeyPath:@"bounds" fromValue:v104 toValue:v105 pressed:pressedCopy];
        [layer11 addAnimation:v106 forKey:@"WellContainerBounds"];

        layer12 = [(UIView *)self->_switchWellContainerView layer];
        v108 = [MEMORY[0x1E696B098] valueWithCGPoint:{v129, v128}];
        v109 = [MEMORY[0x1E696B098] valueWithCGPoint:{v146, v150}];
        v110 = [(UISwitchModernVisualElement *)self _switchSpringAnimationWithKeyPath:@"position" fromValue:v108 toValue:v109 pressed:pressedCopy];
        [layer12 addAnimation:v110 forKey:@"WellContainerPosition"];

        layer13 = [(UIView *)self->_leftSwitchWellContainerView layer];
        v112 = [MEMORY[0x1E696B098] valueWithCGRect:{v133, v132, v131, v130}];
        v113 = [MEMORY[0x1E696B098] valueWithCGRect:{v81, v145, v144, v143}];
        v114 = [(UISwitchModernVisualElement *)self _switchSpringAnimationWithKeyPath:@"bounds" fromValue:v112 toValue:v113 pressed:pressedCopy];
        [layer13 addAnimation:v114 forKey:@"LeftWellContainerBounds"];

        layer14 = [(UIView *)self->_leftSwitchWellContainerView layer];
        v116 = [MEMORY[0x1E696B098] valueWithCGPoint:{v139, v138}];
        v117 = [MEMORY[0x1E696B098] valueWithCGPoint:{v86, v142}];
        v118 = [(UISwitchModernVisualElement *)self _switchSpringAnimationWithKeyPath:@"position" fromValue:v116 toValue:v117 pressed:pressedCopy];
        [layer14 addAnimation:v118 forKey:@"LeftWellContainerPosition"];

        _backing_outermostLayer2 = [(UIView *)&self->_switchWellView->super.super.isa _backing_outermostLayer];
        v120 = [MEMORY[0x1E696B098] valueWithCGPoint:{v137, v136}];
        v121 = [MEMORY[0x1E696B098] valueWithCGPoint:{v135, v134}];
        v122 = [(UISwitchModernVisualElement *)self _switchSpringAnimationWithKeyPath:@"position" fromValue:v120 toValue:v121 pressed:pressedCopy];
        [_backing_outermostLayer2 addAnimation:v122 forKey:@"WellPosition"];
      }

      else
      {
        [UIView performWithoutAnimation:v94];
      }
    }
  }
}

- (double)_knobPositionAdjusted:(int)adjusted on:(int)on offset:(double)offset pressed:(double)pressed forBounds:(double)bounds
{
  if (!self)
  {
    return 0.0;
  }

  v14 = self[13];
  if (_UISolariumEnabled())
  {
    v15 = 20.5;
    v16 = 42.5;
    v17 = 20.5;
    v18 = 42.5;
  }

  else
  {
    v19 = dyld_program_sdk_at_least();
    v15 = 18.0;
    if (v19)
    {
      v15 = 19.0;
    }

    v18 = 32.0;
    if (!v19)
    {
      v18 = 33.0;
    }

    v17 = 15.5;
    v16 = 35.5;
  }

  if ((v14 & 0x400000) != 0)
  {
    v20 = v15;
  }

  else
  {
    v20 = v18;
  }

  if ((v14 & 0x400000) != 0)
  {
    v21 = v17;
  }

  else
  {
    v21 = v16;
  }

  if ((v14 & 0x400000) != 0)
  {
    v22 = v18;
  }

  else
  {
    v22 = v15;
  }

  if ((v14 & 0x400000) != 0)
  {
    v23 = v16;
  }

  else
  {
    v23 = v17;
  }

  if (a2)
  {
    if (on)
    {
      if (adjusted)
      {
        v24 = v20;
      }

      else
      {
        v24 = v22;
      }

      v25 = fmax(v15, fmin(v24 + offset, v18));
    }

    else
    {
      if (adjusted)
      {
        v26 = v21;
      }

      else
      {
        v26 = v23;
      }

      v27 = v26 + offset;
      v28 = 12.0;
      if (v27 < v17)
      {
        v28 = -12.0;
      }

      v25 = v28 * (1.0 - 1.0 / ((v27 - fmax(v17, fmin(v27, v16))) / v28 * 0.55 + 1.0));
    }
  }

  else if (on)
  {
    v25 = v22;
  }

  else
  {
    v25 = v23;
  }

  if (self[64])
  {
    selfCopy = self[64];
  }

  else
  {
    selfCopy = self;
  }

  [selfCopy anchorPoint];
  v31 = a8 * v30;
  UIRoundToViewScale(self);
  v33 = v32;
  UIRoundToViewScale(self);
  return v33 + v31;
}

void __68__UISwitchModernVisualElement__transitionKnobToPressed_on_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _effectiveOnTintColor];
  }

  else
  {
    [v3 _effectiveTintColor];
  }
  v6 = ;
  v4 = [*(*(a1 + 32) + 512) tintColor];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [*(*(a1 + 32) + 512) setTintColor:v6];
  }

  [*(*(a1 + 32) + 512) setCenter:{*(a1 + 40), *(a1 + 48)}];
}

void __68__UISwitchModernVisualElement__transitionKnobToPressed_on_animated___block_invoke_2(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));

  if (v2)
  {
    [v2[64] setBounds:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
    [v2[64] layoutIfNeeded];
  }
}

void __68__UISwitchModernVisualElement__transitionKnobToPressed_on_animated___block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2)
  {
    v4 = WeakRetained;
    [WeakRetained _switchToStaticMode:1];
    WeakRetained = v4;
  }
}

uint64_t __68__UISwitchModernVisualElement__transitionKnobToPressed_on_animated___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 512) setBounds:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 512) setCenter:{*(a1 + 72), *(a1 + 80)}];
  v2 = *(*(a1 + 32) + 512);

  return [v2 layoutIfNeeded];
}

uint64_t __68__UISwitchModernVisualElement__transitionKnobToPressed_on_animated___block_invoke_5(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 512) layer];
  [v2 setBounds:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  v3 = [*(*(a1 + 32) + 512) layer];
  [v3 setPosition:{*(a1 + 72), *(a1 + 80)}];

  v4 = [*(*(a1 + 32) + 464) layer];
  [v4 setBounds:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];

  v5 = [*(*(a1 + 32) + 464) layer];
  [v5 setPosition:{*(a1 + 120), *(a1 + 128)}];

  v6 = [*(*(a1 + 32) + 472) layer];
  [v6 setBounds:{*(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160)}];

  v7 = [*(*(a1 + 32) + 472) layer];
  [v7 setPosition:{*(a1 + 168), *(a1 + 176)}];

  v8 = *(*(a1 + 32) + 448);
  v9 = *(a1 + 184);
  v10 = *(a1 + 192);

  return [v8 setCenter:{v9, v10}];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished)
  {
    [(UISwitchModernVisualElement *)self _switchToStaticMode:1];
  }
}

- (void)_transitionWellViewToPressed:(BOOL)pressed on:(BOOL)on animated:(BOOL)animated
{
  onCopy = on;
  layer = [(UIView *)self->_switchWellImageView layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer position];
  v11 = v10;
  v13 = v12;

  layer2 = [(UIView *)self->_switchWellImageView layer];
  [layer2 bounds];
  [(UISwitchModernVisualElement *)self _wellPositionOn:onCopy forBounds:?];
  v16 = v15;
  v18 = v17;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__UISwitchModernVisualElement__transitionWellViewToPressed_on_animated___block_invoke;
  aBlock[3] = &unk_1E70F6848;
  aBlock[4] = self;
  *&aBlock[5] = v16;
  *&aBlock[6] = v18;
  v19 = _Block_copy(aBlock);
  v20 = v19;
  if (animated)
  {
    (*(v19 + 2))(v19);
    [(UISwitchModernVisualElement *)self _switchToStaticMode:0];
    v21 = [MEMORY[0x1E696B098] valueWithCGPoint:{v11, v13}];
    v22 = [MEMORY[0x1E696B098] valueWithCGPoint:{v16, v18}];
    v23 = [(UISwitchModernVisualElement *)self _switchTrackPositionSpringAnimationFromValue:v21 toValue:v22 on:onCopy];

    [v23 setDelegate:self];
    layer3 = [(UIView *)self->_switchWellImageView layer];
    [layer3 addAnimation:v23 forKey:@"SwitchWellPosition"];
  }

  else
  {
    [UIView performWithoutAnimation:v19];
    [(UISwitchModernVisualElement *)self _switchToStaticMode:1];
  }
}

void __72__UISwitchModernVisualElement__transitionWellViewToPressed_on_animated___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 480) layer];
  [v2 setPosition:{*(a1 + 40), *(a1 + 48)}];
}

- (void)_transitionWellViewToPressed:(BOOL)pressed animated:(BOOL)animated
{
  pressedCopy = pressed;
  layer = [(UIView *)self->_switchWellView layer];
  presentationLayer = [layer presentationLayer];
  [presentationLayer borderWidth];
  v10 = v9;

  layer2 = [(UIView *)self->_switchWellView layer];
  [layer2 borderWidth];
  v13 = v12;

  [(UISwitchModernVisualElement *)self _wellBorderWidthPressed:pressedCopy on:self->_on];
  if (v10 != v14 && v14 != v13)
  {
    v16 = v14;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __69__UISwitchModernVisualElement__transitionWellViewToPressed_animated___block_invoke;
    v23[3] = &unk_1E70F32F0;
    v23[4] = self;
    *&v23[5] = v14;
    v17 = _Block_copy(v23);
    v18 = v17;
    if (animated)
    {
      (*(v17 + 2))(v17);
      layer3 = [(UIView *)self->_switchWellView layer];
      v20 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      v21 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
      v22 = [(UISwitchModernVisualElement *)self _switchTrackAnimationWithFromValue:v20 toValue:v21 on:self->_on];
      [layer3 addAnimation:v22 forKey:@"SwitchWellBorderWidth"];
    }

    else
    {
      [UIView performWithoutAnimation:v17];
    }
  }
}

void __69__UISwitchModernVisualElement__transitionWellViewToPressed_animated___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 448) layer];
  [v2 setBorderWidth:*(a1 + 40)];
}

- (void)_transitionWellViewToOn:(BOOL)on animated:(BOOL)animated
{
  onCopy = on;
  layer = [(UIView *)self->_switchWellView layer];
  presentationLayer = [layer presentationLayer];
  borderColor = [presentationLayer borderColor];

  v10 = [(UISwitchModernVisualElement *)self _wellColorOn:onCopy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__UISwitchModernVisualElement__transitionWellViewToOn_animated___block_invoke;
  v17[3] = &unk_1E70F32F0;
  v17[4] = self;
  v17[5] = v10;
  v11 = _Block_copy(v17);
  v12 = v11;
  if (animated)
  {
    (*(v11 + 2))(v11);
    layer2 = [(UIView *)self->_switchWellView layer];
    v14 = [(UISwitchModernVisualElement *)self _switchTrackColorAnimationWithFromValue:borderColor toValue:v10];
    [layer2 addAnimation:v14 forKey:@"SwitchWellColor"];

    layer3 = [(UIView *)self->_leftSwitchWellView layer];
    v16 = [(UISwitchModernVisualElement *)self _switchTrackColorAnimationWithFromValue:borderColor toValue:v10];
    [layer3 addAnimation:v16 forKey:@"SwitchWellColor"];
  }

  else
  {
    [UIView performWithoutAnimation:v11];
  }
}

void __64__UISwitchModernVisualElement__transitionWellViewToOn_animated___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 448) layer];
  [v2 setBorderColor:*(a1 + 40)];

  v3 = [*(*(a1 + 32) + 456) layer];
  [v3 setBorderColor:*(a1 + 40)];
}

- (void)_transitionImagesToPressed:(BOOL)pressed on:(BOOL)on animated:(BOOL)animated
{
  animatedCopy = animated;
  if (on)
  {
    v8 = 11;
  }

  else
  {
    v8 = 10;
  }

  v9 = *(&self->super.super.super.super.isa + OBJC_IVAR___UISwitchModernVisualElement__on[v8]);
  if (on)
  {
    v10 = 10;
  }

  else
  {
    v10 = 11;
  }

  v11 = v9;
  v12 = *(&self->super.super.super.super.isa + OBJC_IVAR___UISwitchModernVisualElement__on[v10]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__UISwitchModernVisualElement__transitionImagesToPressed_on_animated___block_invoke;
  aBlock[3] = &unk_1E70F5AF0;
  pressedCopy = pressed;
  v18 = v11;
  v19 = v12;
  v13 = v12;
  v14 = v11;
  v15 = _Block_copy(aBlock);
  v16 = v15;
  if (animatedCopy)
  {
    [UIView animateWithDuration:327680 delay:v15 options:0 animations:0.2 completion:0.0];
  }

  else
  {
    (*(v15 + 2))(v15);
  }
}

uint64_t __70__UISwitchModernVisualElement__transitionImagesToPressed_on_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 1.0;
  if (*(a1 + 48))
  {
    v3 = 0.0;
  }

  [v2 setAlpha:v3];
  v4 = *(a1 + 40);

  return [v4 setAlpha:0.0];
}

- (CGRect)_knobBoundsPressed:(BOOL)pressed
{
  pressedCopy = pressed;
  if (_UISolariumEnabled())
  {
    if (pressedCopy)
    {
      v5 = 38.3333333;
    }

    else
    {
      v5 = 24.0;
    }

    if (pressedCopy)
    {
      v6 = 58.0;
    }

    else
    {
      v6 = 37.0;
    }
  }

  else
  {
    v7 = dyld_program_sdk_at_least();
    v8 = 50.0;
    if (!v7)
    {
      v8 = 48.0;
    }

    if (pressedCopy)
    {
      v6 = v8;
    }

    else
    {
      v6 = 43.0;
    }

    UIRoundToViewScale(self);
    v5 = v9;
  }

  v10 = 0.0;
  v11 = 0.0;
  v12 = v6;
  result.size.height = v5;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGPoint)_knobPositionOn:(BOOL)on pressed:(BOOL)pressed forBounds:(CGRect)bounds
{
  v5 = [(UISwitchModernVisualElement *)self _knobPositionAdjusted:on on:pressed offset:0.0 pressed:bounds.origin.x forBounds:bounds.origin.y, bounds.size.width];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGRect)_switchWellContainerBoundsOn:(BOOL)on pressed:(BOOL)pressed
{
  [(UISwitchModernVisualElement *)self _leftSwitchWellContainerBoundsOn:on pressed:pressed];
  v6 = v5;
  [(UIView *)self bounds];
  v8 = v7 - v6;
  [(UIView *)self bounds];
  v10 = 0.0;
  v11 = 0.0;
  v12 = v8;
  result.size.height = v9;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGPoint)_switchWellContainerPositionOn:(BOOL)on pressed:(BOOL)pressed
{
  pressedCopy = pressed;
  onCopy = on;
  [UISwitchModernVisualElement _leftSwitchWellContainerBoundsOn:"_leftSwitchWellContainerBoundsOn:pressed:" pressed:?];
  v8 = v7;
  [(UISwitchModernVisualElement *)self _switchWellContainerBoundsOn:onCopy pressed:pressedCopy];
  if ((*(&self->super.super._viewFlags + 2) & 0x400000) != 0)
  {
    v10 = v9 * 0.5;
  }

  else
  {
    v10 = v8 + v9 * 0.5;
  }

  [(UIView *)self bounds];
  v12 = v11 * 0.5;
  v13 = v10;
  result.y = v12;
  result.x = v13;
  return result;
}

- (CGPoint)_switchWellPositionOn:(BOOL)on pressed:(BOOL)pressed
{
  [(UISwitchModernVisualElement *)self _switchWellContainerBoundsOn:on pressed:pressed];
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    [(UIView *)self->_switchWellView bounds];
    v8 = v9 * 0.5;
  }

  else
  {
    v6 = v5;
    [(UIView *)self->_switchWellView bounds];
    v8 = v6 + v7 * -0.5;
  }

  [(UIView *)self bounds];
  v11 = v10 * 0.5;
  v12 = v8;
  result.y = v11;
  result.x = v12;
  return result;
}

- (CGRect)_leftSwitchWellContainerBoundsOn:(BOOL)on pressed:(BOOL)pressed
{
  pressedCopy = pressed;
  onCopy = on;
  [(UISwitchModernVisualElement *)self _knobBoundsPressed:pressed];
  [(UISwitchModernVisualElement *)self _knobPositionOn:onCopy pressed:pressedCopy forBounds:?];
  v8 = v7;
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    [(UIView *)self bounds];
    v9 = v10 - v8;
  }

  else
  {
    v9 = v7;
    v8 = 0.0;
  }

  [(UIView *)self bounds];
  v12 = 0.0;
  v13 = v8;
  v14 = v9;
  result.size.height = v11;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

- (CGPoint)_leftSwitchWellContainerPositionOn:(BOOL)on pressed:(BOOL)pressed
{
  pressedCopy = pressed;
  onCopy = on;
  [UISwitchModernVisualElement _leftSwitchWellContainerBoundsOn:"_leftSwitchWellContainerBoundsOn:pressed:" pressed:?];
  v8 = v7;
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    [(UISwitchModernVisualElement *)self _switchWellContainerBoundsOn:onCopy pressed:pressedCopy];
    v9 = v8 * 0.5 + v10;
  }

  else
  {
    v9 = v7 * 0.5;
  }

  [(UIView *)self bounds];
  v12 = v11 * 0.5;
  v13 = v9;
  result.y = v12;
  result.x = v13;
  return result;
}

- (CGPoint)_wellPositionOn:(BOOL)on forBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  if ((((*(&self->super.super._viewFlags + 18) & 0x40) == 0) ^ on))
  {
    [(UIView *)self frame:bounds.origin.x];
  }

  if (self->_switchWellImageView)
  {
    switchWellImageView = self->_switchWellImageView;
  }

  else
  {
    switchWellImageView = self;
  }

  [switchWellImageView anchorPoint];
  v9 = width * v8;
  v11 = height * v10;
  UIRoundToViewScale(self);
  v13 = v12;
  UIRoundToViewScale(self);
  v15 = v14 + v11;
  v16 = v13 + v9;
  result.y = v15;
  result.x = v16;
  return result;
}

- (double)_wellBorderWidthPressed:(BOOL)pressed on:(BOOL)on
{
  result = 2.0;
  if (pressed || on)
  {
    return 15.5;
  }

  return result;
}

- (CGColor)_wellColorOn:(BOOL)on
{
  if (on)
  {
    [(UISwitchModernVisualElement *)self _effectiveOnTintColor];
  }

  else
  {
    [(UISwitchModernVisualElement *)self _effectiveTintColor];
  }
  v3 = ;
  cGColor = [v3 CGColor];

  return cGColor;
}

- (id)_switchTrackPositionAnimationWithFromValue:(id)value toValue:(id)toValue on:(BOOL)on
{
  v8 = MEMORY[0x1E6979318];
  toValueCopy = toValue;
  valueCopy = value;
  v11 = [v8 animationWithKeyPath:@"position"];
  _settings = [(UISwitchModernVisualElement *)self _settings];
  v13 = _settings;
  if (on)
  {
    [_settings trackBorderGoingOnAnimationDuration];
    v15 = v14;

    [v11 setDuration:v15];
    v16 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v11 setTimingFunction:v16];
  }

  else
  {
    [_settings trackBorderGoingOffAnimationDuration];
    v18 = v17;

    [v11 setDuration:v18];
    v19 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v11 setTimingFunction:v19];

    _settings2 = [(UISwitchModernVisualElement *)self _settings];
    [_settings2 trackBorderGoingOffAnimationBeginTimeOffset];
    [v11 setBeginTime:?];

    [v11 setBeginTimeMode:*MEMORY[0x1E69795C0]];
  }

  [v11 setFillMode:*MEMORY[0x1E69797D8]];
  [v11 setFromValue:valueCopy];

  [v11 setToValue:toValueCopy];
  *&v21 = 1.0 / UIAnimationDragCoefficient();
  [v11 setSpeed:v21];

  return v11;
}

- (id)_switchTrackAnimationWithFromValue:(id)value toValue:(id)toValue on:(BOOL)on
{
  v8 = MEMORY[0x1E6979318];
  toValueCopy = toValue;
  valueCopy = value;
  v11 = [v8 animationWithKeyPath:@"borderWidth"];
  _settings = [(UISwitchModernVisualElement *)self _settings];
  v13 = _settings;
  if (on)
  {
    [_settings trackBorderGoingOnAnimationDuration];
    v15 = v14;

    [v11 setDuration:v15];
    v16 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v11 setTimingFunction:v16];
  }

  else
  {
    [_settings trackBorderGoingOffAnimationDuration];
    v18 = v17;

    [v11 setDuration:v18];
    v19 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v11 setTimingFunction:v19];

    _settings2 = [(UISwitchModernVisualElement *)self _settings];
    [_settings2 trackBorderGoingOffAnimationBeginTimeOffset];
    [v11 setBeginTime:?];

    [v11 setBeginTimeMode:*MEMORY[0x1E69795C0]];
  }

  [v11 setFillMode:*MEMORY[0x1E69797D8]];
  [v11 setFromValue:valueCopy];

  [v11 setToValue:toValueCopy];
  *&v21 = 1.0 / UIAnimationDragCoefficient();
  [v11 setSpeed:v21];

  return v11;
}

- (id)_switchTrackColorAnimationWithFromValue:(id)value toValue:(id)toValue
{
  v6 = MEMORY[0x1E6979318];
  toValueCopy = toValue;
  valueCopy = value;
  v9 = [v6 animationWithKeyPath:@"borderColor"];
  _settings = [(UISwitchModernVisualElement *)self _settings];
  [_settings trackColorAnimationDuration];
  [v9 setDuration:?];

  v11 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
  [v9 setTimingFunction:v11];

  [v9 setFromValue:valueCopy];
  [v9 setToValue:toValueCopy];

  *&v12 = 1.0 / UIAnimationDragCoefficient();
  [v9 setSpeed:v12];

  return v9;
}

- (id)_switchSpringAnimationWithKeyPath:(id)path fromValue:(id)value toValue:(id)toValue pressed:(BOOL)pressed
{
  pressedCopy = pressed;
  v10 = MEMORY[0x1E69794A8];
  toValueCopy = toValue;
  valueCopy = value;
  v13 = [v10 animationWithKeyPath:path];
  _settings = [(UISwitchModernVisualElement *)self _settings];
  v15 = _settings;
  if (pressedCopy)
  {
    [_settings knobSpringMassAnimationTouchDown];
    v17 = v16;
    [v15 knobSpringStiffnessAnimationTouchDown];
    v19 = v18;
    [v15 knobSpringDampingAnimationTouchDown];
    v21 = v20;
    [v15 knobSpringDurationAnimationTouchDown];
  }

  else
  {
    [_settings knobSpringMassAnimationTouchUp];
    v17 = v23;
    [v15 knobSpringStiffnessAnimationTouchUp];
    v19 = v24;
    [v15 knobSpringDampingAnimationTouchUp];
    v21 = v25;
    [v15 knobSpringDurationAnimationTouchUp];
  }

  v26 = v22;
  [v13 setMass:v17];
  [v13 setStiffness:v19];
  [v13 setDamping:v21];
  [v13 setDuration:v26];
  [v13 setFillMode:*MEMORY[0x1E69797D8]];
  [v13 setFromValue:valueCopy];

  [v13 setToValue:toValueCopy];
  *&v27 = 1.0 / UIAnimationDragCoefficient();
  [v13 setSpeed:v27];

  return v13;
}

- (id)_switchKnobPositionSpringAnimationFromValue:(id)value toValue:(id)toValue
{
  v6 = MEMORY[0x1E69794A8];
  toValueCopy = toValue;
  valueCopy = value;
  v9 = [v6 animationWithKeyPath:@"position"];
  _settings = [(UISwitchModernVisualElement *)self _settings];
  [_settings knobSpringAnimationMass];
  v12 = v11;
  [_settings knobSpringAnimationStiffness];
  v14 = v13;
  [_settings knobSpringAnimationDamping];
  v16 = v15;
  [_settings knobSpringAnimationDuration];
  v18 = v17;
  [v9 setMass:v12];
  [v9 setStiffness:v14];
  [v9 setDamping:v16];
  [v9 setDuration:v18];
  [v9 setFillMode:*MEMORY[0x1E69797D8]];
  [v9 setFromValue:valueCopy];

  [v9 setToValue:toValueCopy];
  *&v19 = 1.0 / UIAnimationDragCoefficient();
  [v9 setSpeed:v19];

  return v9;
}

- (id)_switchKnobWidthSpringAnimationFromValue:(id)value toValue:(id)toValue pressed:(BOOL)pressed
{
  pressedCopy = pressed;
  v8 = MEMORY[0x1E69794A8];
  toValueCopy = toValue;
  valueCopy = value;
  v11 = [v8 animationWithKeyPath:@"bounds"];
  _settings = [(UISwitchModernVisualElement *)self _settings];
  v13 = _settings;
  if (pressedCopy)
  {
    [_settings knobTouchDownSpringAnimationMass];
    v15 = v14;
    [v13 knobTouchDownSpringAnimationStiffness];
    v17 = v16;
    [v13 knobTouchDownSpringAnimationDamping];
    v19 = v18;
    [v13 knobTouchDownSpringAnimationDuration];
  }

  else
  {
    [_settings knobSpringAnimationMass];
    v15 = v21;
    [v13 knobSpringAnimationStiffness];
    v17 = v22;
    [v13 knobSpringAnimationDamping];
    v19 = v23;
    [v13 knobSpringAnimationDuration];
  }

  v24 = v20;
  [v11 setMass:v15];
  [v11 setStiffness:v17];
  [v11 setDamping:v19];
  [v11 setDuration:v24];
  [v11 setFillMode:*MEMORY[0x1E69797D8]];
  [v11 setFromValue:valueCopy];

  [v11 setToValue:toValueCopy];
  *&v25 = 1.0 / UIAnimationDragCoefficient();
  [v11 setSpeed:v25];

  return v11;
}

- (id)_switchTrackPositionSpringAnimationFromValue:(id)value toValue:(id)toValue on:(BOOL)on
{
  onCopy = on;
  v8 = MEMORY[0x1E69794A8];
  toValueCopy = toValue;
  valueCopy = value;
  v11 = [v8 animationWithKeyPath:@"position"];
  _settings = [(UISwitchModernVisualElement *)self _settings];
  v13 = _settings;
  if (onCopy)
  {
    [_settings trackGoingOffSpringAnimationMass];
    v15 = v14;
    [v13 trackGoingOffSpringAnimationStiffness];
    v17 = v16;
    [v13 trackGoingOffSpringAnimationDamping];
    v19 = v18;
    [v13 trackGoingOffSpringAnimationDuration];
  }

  else
  {
    [_settings trackGoingOnSpringAnimationMass];
    v15 = v21;
    [v13 trackGoingOnSpringAnimationStiffness];
    v17 = v22;
    [v13 trackGoingOnSpringAnimationDamping];
    v19 = v23;
    [v13 trackGoingOnSpringAnimationDuration];
  }

  v24 = v20;
  [v11 setMass:v15];
  [v11 setStiffness:v17];
  [v11 setDamping:v19];
  [v11 setDuration:v24];
  [v11 setFillMode:*MEMORY[0x1E69797D8]];
  [v11 setFromValue:valueCopy];

  [v11 setToValue:toValueCopy];
  *&v25 = 1.0 / UIAnimationDragCoefficient();
  [v11 setSpeed:v25];

  return v11;
}

- (id)_labelOpacityAnimation
{
  v2 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  [v2 setDuration:1.27];
  [v2 setValues:&unk_1EFE2BCF8];
  [v2 setKeyTimes:&unk_1EFE2BD10];
  *&v3 = 1.0 / UIAnimationDragCoefficient();
  [v2 setSpeed:v3];

  return v2;
}

- (id)_effectiveOffTextColor
{
  if (self->_tintColor)
  {
    [(UISwitchModernVisualElement *)self _effectiveTintColor];
  }

  else
  {
    [UIColor colorWithWhite:0.7 alpha:1.0];
  }
  v2 = ;

  return v2;
}

+ (id)_modernGradientImageWithOnColor:(id)color traitCollection:(id)collection
{
  colorCopy = color;
  collectionCopy = collection;
  if (qword_1ED499E28 != -1)
  {
    dispatch_once(&qword_1ED499E28, &__block_literal_global_169);
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__UISwitchModernVisualElement__modernGradientImageWithOnColor_traitCollection___block_invoke_2;
  v16[3] = &unk_1E71053E8;
  v18 = &v24;
  v7 = colorCopy;
  v17 = v7;
  v19 = &v20;
  [UITraitCollection _performWithCurrentTraitCollection:collectionCopy usingBlock:v16];
  v8 = [_UICGColorCacheKey alloc];
  v9 = [(_UICGColorCacheKey *)v8 initWithColors:v25[3], v21[3], 0];
  v10 = [qword_1ED499E20 objectForKey:v9];
  if (!v10)
  {
    [objc_opt_class() preferredContentSize];
    v12 = v11;
    v13 = [[UIGraphicsImageRenderer alloc] initWithSize:v11 * 10.0, 1.0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __79__UISwitchModernVisualElement__modernGradientImageWithOnColor_traitCollection___block_invoke_3;
    v15[3] = &unk_1E7105410;
    v15[4] = &v24;
    v15[5] = &v20;
    *&v15[6] = v12;
    *&v15[7] = v12 * 10.0;
    v15[8] = 0x3FF0000000000000;
    v10 = [(UIGraphicsImageRenderer *)v13 imageWithActions:v15];
    if (v10)
    {
      [qword_1ED499E20 setObject:v10 forKey:v9];
    }
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v10;
}

void __79__UISwitchModernVisualElement__modernGradientImageWithOnColor_traitCollection___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = qword_1ED499E20;
  qword_1ED499E20 = v0;
}

void __79__UISwitchModernVisualElement__modernGradientImageWithOnColor_traitCollection___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) cgColor];
  v2 = [*(a1 + 32) colorWithAlphaComponent:0.0];
  *(*(*(a1 + 48) + 8) + 24) = [v2 cgColor];
}

void __79__UISwitchModernVisualElement__modernGradientImageWithOnColor_traitCollection___block_invoke_3(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v9[0] = *(*(*(a1 + 32) + 8) + 24);
  v9[1] = v3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a2;
  v6 = [v4 arrayWithObjects:v9 count:2];
  v7 = CGGradientCreateWithColors(0, v6, 0);
  v8 = [v5 CGContext];

  v10.x = *(a1 + 48);
  v11.x = *(a1 + 56) - v10.x;
  v10.y = 0.0;
  v11.y = 0.0;
  CGContextDrawLinearGradient(v8, v7, v10, v11, 3u);
  CGGradientRelease(v7);
}

+ (id)_modernThumbImageWithColor:(id)color mask:(unint64_t)mask traitCollection:(id)collection
{
  colorCopy = color;
  collectionCopy = collection;
  if (qword_1ED499E38 == -1)
  {
    if (colorCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&qword_1ED499E38, &__block_literal_global_197);
  if (!colorCopy)
  {
LABEL_3:
    colorCopy = +[UIColor whiteColor];
  }

LABEL_4:
  v9 = [colorCopy resolvedColorWithTraitCollection:collectionCopy];
  cGColor = [v9 CGColor];

  v11 = [[_UIModernSwitchVisualElementCacheKey alloc] initWithMask:mask color:cGColor];
  v12 = [qword_1ED499E30 objectForKey:v11];
  if (!v12)
  {
    v13 = +[UIColor _controlShadowColor];
    cGColor2 = [v13 CGColor];

    v15 = [[UIGraphicsImageRenderer alloc] initWithSize:43.0, 43.0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__UISwitchModernVisualElement__modernThumbImageWithColor_mask_traitCollection___block_invoke_2;
    v18[3] = &__block_descriptor_56_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v18[4] = mask;
    v18[5] = cGColor2;
    v18[6] = cGColor;
    v16 = [(UIGraphicsImageRenderer *)v15 imageWithActions:v18];
    v12 = [v16 resizableImageWithCapInsets:{0.0, 21.0, 0.0, 21.0}];

    if (v12)
    {
      [qword_1ED499E30 setObject:v12 forKey:v11];
    }
  }

  return v12;
}

void __79__UISwitchModernVisualElement__modernThumbImageWithColor_mask_traitCollection___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = qword_1ED499E30;
  qword_1ED499E30 = v0;
}

void __79__UISwitchModernVisualElement__modernThumbImageWithColor_mask_traitCollection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  if (v4)
  {
    v5 = -19.0;
    if (v4 == 1)
    {
      v5 = 6.0;
    }

    v6 = 0x404C000000000000;
    v7 = 3.0;
    v8 = 31.0;
    v9 = CGPathCreateWithRoundedRect(*&v5, 15.5, 15.5, 0);
    CGContextAddPath([v13 CGContext], v9);
    CGContextClip([v13 CGContext]);
    CGPathRelease(v9);
  }

  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v15.width = 0.0;
  v15.height = 2.5;
  CGContextSetShadowWithColor(v11, v15, 6.0, *(a1 + 40));
  CGContextSetFillColorWithColor([v13 CGContext], *(a1 + 48));
  v12 = [UIBezierPath bezierPathWithOvalInRect:8.0, 5.0, 27.0, 27.0];
  [v12 fill];
}

- (id)_effectiveThumbImage
{
  if (dyld_program_sdk_at_least())
  {
    if ([(UIView *)self->_switchWellContainerView clipsToBounds])
    {
      v3 = 0;
    }

    else
    {
      v7 = 1;
      if (!self->_on)
      {
        v7 = 2;
      }

      v8 = 1;
      if (self->_on)
      {
        v8 = 2;
      }

      if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
      {
        v3 = v7;
      }

      else
      {
        v3 = v8;
      }
    }

    thumbTintColor = self->_thumbTintColor;
    traitCollection = [(UIView *)self traitCollection];
    v6 = [UISwitchModernVisualElement _modernThumbImageWithColor:thumbTintColor mask:v3 traitCollection:traitCollection];
  }

  else
  {
    v4 = _UIImageWithName(@"UISwitchKnob");
    traitCollection = v4;
    if (self->_thumbTintColor)
    {
      v6 = [v4 _flatImageWithColor:?];
    }

    else
    {
      v6 = v4;
      traitCollection = v6;
    }
  }

  v10 = v6;

  return v10;
}

- (id)_accessibleOnImage
{
  v2 = _UIImageWithName(@"UISwitchAccessibilityOnImage");
  v3 = [v2 imageWithRenderingMode:2];

  return v3;
}

- (id)_accessibleOffImage
{
  v2 = _UIImageWithName(@"UISwitchAccessibilityOffImage");
  v3 = [v2 imageWithRenderingMode:2];

  return v3;
}

- (BOOL)_shouldUseLightTintOverColor:(id)color
{
  v7 = 0.0;
  v8 = 0.0;
  if (color)
  {
    [color getWhite:&v8 alpha:0];
  }

  v4 = [(UISwitchModernVisualElement *)self _defaultOnTintColor:*&v7];
  v5 = v4;
  if (v4)
  {
    [v4 getWhite:&v7 alpha:0];
  }

  return v8 <= v7;
}

- (void)_updateDisplayWithAnimationIfNeeded
{
  +[UIView inheritedAnimationDuration];

  [(UISwitchModernVisualElement *)self _updateDisplayAnimated:v3 > 0.0];
}

- (void)_updateDisplayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = [(UISwitchModernVisualElement *)self on];
  pressed = [(UISwitchModernVisualElement *)self pressed];
  if (dyld_program_sdk_at_least())
  {
    if (animatedCopy)
    {
      layer = [(UIView *)self->_knobView layer];
      presentationLayer = [layer presentationLayer];
      if (presentationLayer)
      {
        layer2 = [(UIView *)self->_switchWellImageView layer];
        presentationLayer2 = [layer2 presentationLayer];
        animatedCopy = presentationLayer2 != 0;
      }

      else
      {
        animatedCopy = 0;
      }

      selfCopy2 = self;
      v12 = v5;
      v13 = animatedCopy;
    }

    else
    {
      selfCopy2 = self;
      v12 = v5;
      v13 = 0;
    }

    [(UISwitchModernVisualElement *)selfCopy2 _transitionKnobToOn:v12 animated:v13];
    [(UISwitchModernVisualElement *)self _transitionKnobToPressed:pressed animated:animatedCopy];
    [(UISwitchModernVisualElement *)self _transitionWellViewToPressed:pressed on:v5 animated:animatedCopy];
  }

  else
  {
    [(UISwitchModernVisualElement *)self _transitionKnobToOn:v5 animated:0];
    [(UISwitchModernVisualElement *)self _transitionWellViewToOn:v5 animated:0];
    [(UISwitchModernVisualElement *)self _transitionKnobToPressed:pressed animated:0];
    [(UISwitchModernVisualElement *)self _transitionWellViewToPressed:pressed animated:0];
    animatedCopy = 0;
  }

  [(UISwitchModernVisualElement *)self _transitionImagesToPressed:pressed on:v5 animated:animatedCopy];
}

- (void)_setPressed:(BOOL)pressed on:(BOOL)on animated:(BOOL)animated shouldAnimateLabels:(BOOL)labels completion:(id)completion
{
  animatedCopy = animated;
  onCopy = on;
  pressedCopy = pressed;
  completionCopy = completion;
  if (__PAIR64__(self->_pressed, self->_on) != __PAIR64__(pressedCopy, onCopy))
  {
    v13 = completionCopy;
    self->_pressed = pressedCopy;
    self->_on = onCopy;
    v12 = dyld_program_sdk_at_least();
    [(UISwitchModernVisualElement *)self _transitionKnobToOn:onCopy animated:animatedCopy];
    if (v12)
    {
      [(UISwitchModernVisualElement *)self _transitionKnobToPressed:pressedCopy animated:animatedCopy];
      [(UISwitchModernVisualElement *)self _transitionWellViewToPressed:pressedCopy on:onCopy animated:animatedCopy];
    }

    else
    {
      [(UISwitchModernVisualElement *)self _transitionWellViewToOn:onCopy animated:animatedCopy];
      [(UISwitchModernVisualElement *)self _transitionKnobToPressed:pressedCopy animated:animatedCopy];
      [(UISwitchModernVisualElement *)self _transitionWellViewToPressed:pressedCopy animated:animatedCopy];
    }

    [(UISwitchModernVisualElement *)self _transitionImagesToPressed:pressedCopy on:onCopy animated:animatedCopy];
    completionCopy = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 1);
      completionCopy = v13;
    }
  }
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  semanticContentAttribute = [(UIView *)self semanticContentAttribute];
  v6.receiver = self;
  v6.super_class = UISwitchModernVisualElement;
  [(UIView *)&v6 setSemanticContentAttribute:attribute];
  if (semanticContentAttribute != [(UIView *)self semanticContentAttribute])
  {
    [(UISwitchModernVisualElement *)self _invalidateControl];
  }
}

- (BOOL)_feedbackEnabled
{
  _settings = [(UISwitchModernVisualElement *)self _settings];
  feedbackEnabled = [_settings feedbackEnabled];

  return feedbackEnabled;
}

- (void)setSwitchControl:(id)control
{
  controlCopy = control;
  [(UISwitchModernVisualElement *)self _uninstallSelectGestureRecognizer];
  v6.receiver = self;
  v6.super_class = UISwitchModernVisualElement;
  [(UISwitchVisualElement *)&v6 setSwitchControl:controlCopy];

  switchControl = [(UISwitchVisualElement *)self switchControl];

  if (switchControl)
  {
    [(UISwitchModernVisualElement *)self _installSelectGestureRecognizer];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_selectGestureRecognizer != begin || [begin _buttonType] != 4)
  {
    return 1;
  }

  return [(UIView *)self isEnabled];
}

- (void)_selectGestureChanged:(id)changed
{
  changedCopy = changed;
  if ([changedCopy state] == 3)
  {
    gestureTrackingSession = [(UISwitchModernVisualElement *)self gestureTrackingSession];
    [gestureTrackingSession reset];

    gestureTrackingSession2 = [(UISwitchModernVisualElement *)self gestureTrackingSession];
    [gestureTrackingSession2 setPendingDisplayedOnValue:-[UISwitchModernVisualElement on](self forGesture:{"on") ^ 1, changedCopy}];

    gestureTrackingSession3 = [(UISwitchModernVisualElement *)self gestureTrackingSession];
    [gestureTrackingSession3 applyPendingDisplayedOnValueWithoutSendingActions];

    objc_initWeak(&location, self);
    v8 = UIApp;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__UISwitchModernVisualElement__selectGestureChanged___block_invoke;
    v9[3] = &unk_1E70F5A28;
    objc_copyWeak(&v10, &location);
    [v8 _performBlockAfterCATransactionCommits:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __53__UISwitchModernVisualElement__selectGestureChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    CFRunLoopRunInMode(*MEMORY[0x1E695E8D0], 0.0, 1u);
    v2 = [v5 gestureTrackingSession];
    [v2 applyPendingDisplayedOnValueAndSendActions];

    v3 = [v5 switchControl];
    [v3 visualElementHadTouchUpInside:v5];

    v4 = [v5 gestureTrackingSession];
    [v4 reset];

    WeakRetained = v5;
  }
}

@end