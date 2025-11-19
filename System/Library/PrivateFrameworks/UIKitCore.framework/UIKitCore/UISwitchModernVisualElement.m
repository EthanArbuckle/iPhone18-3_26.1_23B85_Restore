@interface UISwitchModernVisualElement
+ (CGSize)preferredContentSize;
+ (UIEdgeInsets)preferredAlignmentRectInsets;
+ (id)_modernGradientImageWithOnColor:(id)a3 traitCollection:(id)a4;
+ (id)_modernThumbImageWithColor:(id)a3 mask:(unint64_t)a4 traitCollection:(id)a5;
- (BOOL)_feedbackEnabled;
- (BOOL)_gestureRecognizer:(id)a3 shouldReceiveEvent:(id)a4;
- (BOOL)_shouldUseLightTintOverColor:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGColor)_wellColorOn:(BOOL)a3;
- (CGPoint)_knobPositionOn:(BOOL)a3 pressed:(BOOL)a4 forBounds:(CGRect)a5;
- (CGPoint)_leftSwitchWellContainerPositionOn:(BOOL)a3 pressed:(BOOL)a4;
- (CGPoint)_offImagePosition;
- (CGPoint)_onImagePosition;
- (CGPoint)_switchWellContainerPositionOn:(BOOL)a3 pressed:(BOOL)a4;
- (CGPoint)_switchWellPositionOn:(BOOL)a3 pressed:(BOOL)a4;
- (CGPoint)_wellPositionOn:(BOOL)a3 forBounds:(CGRect)a4;
- (CGRect)_knobBoundsPressed:(BOOL)a3;
- (CGRect)_leftSwitchWellContainerBoundsOn:(BOOL)a3 pressed:(BOOL)a4;
- (CGRect)_switchWellContainerBoundsOn:(BOOL)a3 pressed:(BOOL)a4;
- (UISwitchModernVisualElement)initWithFrame:(CGRect)a3;
- (double)_knobPositionAdjusted:(int)a3 on:(int)a4 offset:(double)a5 pressed:(double)a6 forBounds:(double)a7;
- (double)_wellBorderWidthPressed:(BOOL)a3 on:(BOOL)a4;
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
- (id)_switchKnobPositionSpringAnimationFromValue:(id)a3 toValue:(id)a4;
- (id)_switchKnobWidthSpringAnimationFromValue:(id)a3 toValue:(id)a4 pressed:(BOOL)a5;
- (id)_switchSpringAnimationWithKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5 pressed:(BOOL)a6;
- (id)_switchTrackAnimationWithFromValue:(id)a3 toValue:(id)a4 on:(BOOL)a5;
- (id)_switchTrackColorAnimationWithFromValue:(id)a3 toValue:(id)a4;
- (id)_switchTrackPositionAnimationWithFromValue:(id)a3 toValue:(id)a4 on:(BOOL)a5;
- (id)_switchTrackPositionSpringAnimationFromValue:(id)a3 toValue:(id)a4 on:(BOOL)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_handleLongPress:(id)a3;
- (void)_handleLongPressWithGestureLocationInBounds:(CGPoint)a3 gestureState:(int64_t)a4;
- (void)_handlePan:(id)a3;
- (void)_handlePanWithGestureLocationInBounds:(CGPoint)a3 horizontalTranslation:(double)a4 gestureState:(int64_t)a5 resetPanTranslationBlock:(id)a6;
- (void)_installSelectGestureRecognizer;
- (void)_invalidateControl;
- (void)_invalidateKnob;
- (void)_invalidateOnOffImages;
- (void)_invalidateUserInterfaceRenderingMode;
- (void)_invalidateWell;
- (void)_orderSubviews;
- (void)_selectGestureChanged:(id)a3;
- (void)_setPressed:(BOOL)a3 on:(BOOL)a4 animated:(BOOL)a5 shouldAnimateLabels:(BOOL)a6 completion:(id)a7;
- (void)_switchToStaticMode:(BOOL)a3;
- (void)_transitionImagesToPressed:(BOOL)a3 on:(BOOL)a4 animated:(BOOL)a5;
- (void)_transitionKnobToPressed:(BOOL)a3 on:(BOOL)a4 animated:(BOOL)a5;
- (void)_transitionWellViewToOn:(BOOL)a3 animated:(BOOL)a4;
- (void)_transitionWellViewToPressed:(BOOL)a3 animated:(BOOL)a4;
- (void)_transitionWellViewToPressed:(BOOL)a3 on:(BOOL)a4 animated:(BOOL)a5;
- (void)_uninstallSelectGestureRecognizer;
- (void)_updateDisplayAnimated:(BOOL)a3;
- (void)_updateDisplayWithAnimationIfNeeded;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)interactiveChangeToDisplayedOn:(BOOL)a3;
- (void)performStateChangeFeedback;
- (void)sendStateChangeActions;
- (void)setOffImage:(id)a3;
- (void)setOn:(BOOL)a3 animated:(BOOL)a4;
- (void)setOnImage:(id)a3;
- (void)setOnTintColor:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setSwitchControl:(id)a3;
- (void)setThumbTintColor:(id)a3;
- (void)setTintColor:(id)a3;
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
  v4 = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:v4];

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
    v4 = [(UISwitchModernVisualElement *)self _effectiveGradientImage];
    v5 = [[UIImageView alloc] initWithImage:v4];
    switchWellImageView = self->_switchWellImageView;
    self->_switchWellImageView = v5;

    [v4 size];
    [(UIImageView *)self->_switchWellImageView setFrame:0.0, 0.0, v7, 31.0];
    [(UIImageView *)self->_switchWellImageView setHidden:1];
    v8 = [UIView alloc];
    [(UIView *)self bounds];
    v9 = [(UIView *)v8 initWithFrame:?];
    switchWellContainerView = self->_switchWellContainerView;
    self->_switchWellContainerView = v9;

    [(UIView *)self->_switchWellContainerView _setAllowsHighContrastForBackgroundColor:1];
    [(UIView *)self->_switchWellContainerView _setShouldAdaptToMaterials:0];
    v11 = [(UIView *)self->_switchWellContainerView layer];
    v12 = v11;
    v13 = MEMORY[0x1E69796E8];
    if (v3)
    {
      [v11 setCornerRadius:14.0];

      v12 = [(UIView *)self->_switchWellContainerView layer];
      [v12 setCornerCurve:*v13];
    }

    else
    {
      [v11 setCornerRadius:15.5];
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
    v18 = [(UISwitchModernVisualElement *)self _effectiveTintColor];
    [(UIView *)v17 setBackgroundColor:v18];

    v19 = [(UIView *)self->_switchWellView layer];
    v20 = v19;
    if (v3)
    {
      [v19 setCornerRadius:14.0];

      v20 = [(UIView *)self->_switchWellView layer];
      [v20 setCornerCurve:*v13];
    }

    else
    {
      [v19 setCornerRadius:15.5];
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

    v30 = [(UIView *)self->_leftSwitchWellView layer];
    [(UISwitchModernVisualElement *)self _wellBorderWidthPressed:1 on:1];
    [v30 setBorderWidth:?];

    v31 = self->_switchWellView;
    v32 = +[UIColor clearColor];
    [(UIView *)v31 setBackgroundColor:v32];

    v33 = self->_leftSwitchWellView;
    v34 = +[UIColor clearColor];
    [(UIView *)v33 setBackgroundColor:v34];

    v35 = [(UIView *)self->_switchWellView layer];
    [v35 setCornerRadius:15.5];

    v36 = [(UIView *)self->_leftSwitchWellView layer];
    [v36 setCornerRadius:15.5];

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
  v3 = [(UISwitchModernVisualElement *)self _effectiveOnTintColor];
  v4 = [(UIView *)self traitCollection];
  v5 = [UISwitchModernVisualElement _modernGradientImageWithOnColor:v3 traitCollection:v4];

  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    v6 = [v5 imageWithHorizontallyFlippedOrientation];
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v7;
}

- (id)_effectiveOnTintColor
{
  onTintColor = self->_onTintColor;
  if (onTintColor)
  {
    v3 = onTintColor;
  }

  else
  {
    v3 = [(UISwitchModernVisualElement *)self _defaultOnTintColor];
  }

  return v3;
}

- (void)_invalidateUserInterfaceRenderingMode
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 _userInterfaceRenderingMode] == 0;

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
  v4 = [(UISwitchModernVisualElement *)self _effectiveOffImage];
  v5 = [(UIImageView *)v3 initWithImage:v4];
  switchWellOffImageView = self->_switchWellOffImageView;
  self->_switchWellOffImageView = v5;

  v7 = [UIImageView alloc];
  v8 = [(UISwitchModernVisualElement *)self _effectiveOnImage];
  v9 = [(UIImageView *)v7 initWithImage:v8];
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
  v17 = [(UISwitchModernVisualElement *)self _effectiveOffImageTintColor];
  [(UIView *)v16 setTintColor:v17];

  v18 = self->_switchWellOnImageView;
  v19 = [(UISwitchModernVisualElement *)self _effectiveOnImageTintColor];
  [(UIView *)v18 setTintColor:v19];

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
    v3 = [(UISwitchModernVisualElement *)self _accessibleOffImage];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_effectiveOnImage
{
  if ([(UISwitchModernVisualElement *)self showsOnOffLabel])
  {
    v3 = [(UISwitchModernVisualElement *)self _accessibleOnImage];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
  v3 = [(UISwitchModernVisualElement *)self selectGestureRecognizer];

  if (v3)
  {
    v4 = [(UISwitchVisualElement *)self switchControl];
    v5 = [(UISwitchModernVisualElement *)self selectGestureRecognizer];
    [v4 removeGestureRecognizer:v5];

    [(UISwitchModernVisualElement *)self setSelectGestureRecognizer:0];
  }
}

- (void)_installSelectGestureRecognizer
{
  v3 = [(UISwitchModernVisualElement *)self selectGestureRecognizer];

  if (!v3)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__selectGestureChanged_];
    [(UISwitchModernVisualElement *)self setSelectGestureRecognizer:v4];

    v5 = [(UISwitchModernVisualElement *)self selectGestureRecognizer];
    [v5 setAllowedPressTypes:&unk_1EFE2BD28];

    v6 = [(UISwitchModernVisualElement *)self selectGestureRecognizer];
    [v6 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];

    v7 = [(UISwitchModernVisualElement *)self selectGestureRecognizer];
    [v7 setDelegate:self];

    v8 = [(UISwitchVisualElement *)self switchControl];
    [v8 addGestureRecognizer:self->_selectGestureRecognizer];
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

- (void)setOn:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(UISwitchModernVisualElement *)self gestureTrackingSession];
  [v7 setDisplayedOnValue:v5];

  self->_on = v5;

  [(UISwitchModernVisualElement *)self _updateDisplayAnimated:v4];
}

- (UISwitchModernVisualElement)initWithFrame:(CGRect)a3
{
  y = a3.origin.y;
  x = a3.origin.x;
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
  v3 = [(UISwitchVisualElement *)self switchControl];
  [v3 visualElement:self transitionedToOn:{-[UISwitchModernVisualElement on](self, "on")}];
}

- (void)performStateChangeFeedback
{
  if ([(UISwitchModernVisualElement *)self _feedbackEnabled])
  {
    v3 = [(UISwitchModernVisualElement *)self _settings];
    [v3 hapticDelay];
    v5 = v4;

    v6 = [(UISwitchVisualElement *)self impactFeedbackGenerator];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__UISwitchModernVisualElement_performStateChangeFeedback__block_invoke;
    v7[3] = &unk_1E70F3590;
    v7[4] = self;
    [v6 performFeedbackWithDelay:v7 insideBlock:v5];
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

- (void)interactiveChangeToDisplayedOn:(BOOL)a3
{
  v3 = a3;
  if ([(UISwitchModernVisualElement *)self on]!= a3)
  {
    [(UISwitchModernVisualElement *)self setOn:v3 animated:+[UIView areAnimationsEnabled]];

    [(UISwitchModernVisualElement *)self performStateChangeFeedback];
  }
}

- (BOOL)_gestureRecognizer:(id)a3 shouldReceiveEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 type])
  {
    v8 = [(UISwitchModernVisualElement *)self longPress];

    if (v8 == v6)
    {
      v9 = [v7 allTouches];
      v10 = [v9 count];

      if (v10 == 1)
      {
        v11 = [v7 allTouches];
        v12 = [v11 anyObject];

        if ([v12 _isPointerTouch])
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

      v14 = [(UISwitchModernVisualElement *)self longPress];
      [v14 setMinimumPressDuration:v13];
    }
  }

  v15 = [v6 _shouldReceiveEvent:v7];

  return v15;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(UISwitchModernVisualElement *)self longPress];
  if (v9 == v7)
  {
    v4 = [(UISwitchModernVisualElement *)self pan];
    if (v4 == v8)
    {
      v11 = 1;
LABEL_9:

      goto LABEL_10;
    }
  }

  v10 = [(UISwitchModernVisualElement *)self pan];
  if (v10 == v7)
  {
    v12 = [(UISwitchModernVisualElement *)self longPress];
    v11 = v12 == v8;
  }

  else
  {
    v11 = 0;
  }

  if (v9 == v7)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v11;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UISwitchModernVisualElement *)self longPress];
  if (v8 != v6)
  {
    self = [(UISwitchModernVisualElement *)self pan];
    if (self != v6)
    {
      isKindOfClass = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v8 != v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  return isKindOfClass & 1;
}

- (void)_handleLongPress:(id)a3
{
  v4 = a3;
  [v4 locationInView:self];
  v6 = v5;
  v8 = v7;
  v9 = [v4 state];

  [(UISwitchModernVisualElement *)self _handleLongPressWithGestureLocationInBounds:v9 gestureState:v6, v8];
}

- (void)_handleLongPressWithGestureLocationInBounds:(CGPoint)a3 gestureState:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(UISwitchModernVisualElement *)self gestureTrackingSession];
  if (_UISolariumEnabled())
  {
    v9 = 0;
  }

  else
  {
    v10 = [(UISwitchVisualElement *)self switchControl];
    v9 = [v10 pointMostlyInside:{x, y}] ^ 1;
  }

  v11 = [(UISwitchModernVisualElement *)self on];
  v12 = [(UISwitchModernVisualElement *)self pressed];
  if (v9)
  {
    [(UISwitchModernVisualElement *)self setPressed:0];
    if (a4 == 3)
    {
      v13 = [(UISwitchModernVisualElement *)self longPress];
      v14 = [v8 canApplyPendingOnValueForGesture:v13];

      if (v14)
      {
        [v8 applyPendingDisplayedOnValueWithoutSendingActions];
        LOBYTE(v15) = 0;
LABEL_15:
        v19 = 1;
        goto LABEL_19;
      }
    }

    goto LABEL_12;
  }

  [(UISwitchModernVisualElement *)self setPressed:1];
  if (a4 == 1)
  {
    self->_startedOn = v11;
    [v8 reset];
    v20 = [(UISwitchVisualElement *)self impactFeedbackGenerator];
    [v20 activateWithCompletionBlock:0];

    LODWORD(v20) = [(UISwitchModernVisualElement *)self on];
    v21 = [(UISwitchModernVisualElement *)self longPress];
    [v8 setPendingDisplayedOnValue:v20 ^ 1 forGesture:v21];

    goto LABEL_17;
  }

  if (a4 != 3)
  {
    if (a4 != 2)
    {
LABEL_17:
      LOBYTE(v15) = 0;
      goto LABEL_18;
    }

    v16 = [(UISwitchModernVisualElement *)self pan];
    v17 = [v8 canApplyPendingOnValueForGesture:v16];

    if (!v17)
    {
      if (_UISolariumEnabled())
      {
        [(UISwitchModernVisualElement *)self _transitionKnobToPressed:self->_pressed on:self->_on animated:+[UIView areAnimationsEnabled]];
      }

      goto LABEL_17;
    }

LABEL_12:
    [v8 applyPendingDisplayedOnValueWithoutSendingActions];
    goto LABEL_17;
  }

  v18 = [(UISwitchModernVisualElement *)self longPress];
  v15 = [v8 canApplyPendingOnValueForGesture:v18];

  if (v15)
  {
    [v8 applyPendingDisplayedOnValueWithoutSendingActions];
    LOBYTE(v15) = 1;
    goto LABEL_15;
  }

LABEL_18:
  v19 = 0;
LABEL_19:
  v22 = [UISwitchMVEGestureTrackingSession gestureIsInEndState:a4];
  v23 = v22;
  if (v22)
  {
    [(UISwitchModernVisualElement *)self setPressed:0];
    [v8 applyPendingDisplayedOnValueWithoutSendingActions];
    v24 = [(UISwitchVisualElement *)self impactFeedbackGenerator];
    if ([v24 isActive])
    {
      [v24 deactivate];
    }

    v19 = 1;
  }

  if (v11 != [(UISwitchModernVisualElement *)self on]|| v12 != [(UISwitchModernVisualElement *)self pressed])
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
  v28 = v8;
  v29 = self;
  v26 = v8;
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

- (void)_handlePan:(id)a3
{
  v4 = a3;
  [v4 translationInView:self];
  v6 = v5 - self->_zeroOffset;
  [v4 locationInView:self];
  v8 = v7;
  v10 = v9;
  v11 = [v4 state];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__UISwitchModernVisualElement__handlePan___block_invoke;
  v13[3] = &unk_1E70F35B8;
  v13[4] = self;
  v14 = v4;
  v12 = v4;
  [(UISwitchModernVisualElement *)self _handlePanWithGestureLocationInBounds:v11 horizontalTranslation:v13 gestureState:v8 resetPanTranslationBlock:v10, v6];
}

uint64_t __42__UISwitchModernVisualElement__handlePan___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) translationInView:*(a1 + 32)];
  *(*(a1 + 32) + 544) = v3;
  return result;
}

- (void)_handlePanWithGestureLocationInBounds:(CGPoint)a3 horizontalTranslation:(double)a4 gestureState:(int64_t)a5 resetPanTranslationBlock:(id)a6
{
  v12 = a6;
  v9 = [(UISwitchModernVisualElement *)self gestureTrackingSession];
  if (a5 == 2)
  {
    v10 = [(UISwitchModernVisualElement *)self pan];
    v11 = [v9 updatePendingDisplayedOnValueIfMovementIsEnoughToInitiateChange:v10 forGesture:a4];

    if (v11)
    {
      v12[2]();
    }
  }

  else if ([UISwitchMVEGestureTrackingSession gestureIsInEndState:a5])
  {
    [v9 invalidatePendingOnValue];
    self->_zeroOffset = 0.0;
  }
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = objc_opt_new();
  v6 = [UIBezierPath bezierPathWithOvalInRect:8.0, 5.0, 27.0, 27.0];
  [v5 setVisiblePath:v6];

  v7 = [[UITargetedPreview alloc] initWithView:self->_knobView parameters:v5];
  v8 = [(UIPointerEffect *)UIPointerLiftEffect effectWithPreview:v7];
  v9 = [UIPointerStyle styleWithEffect:v8 shape:0];

  return v9;
}

- (void)_switchToStaticMode:(BOOL)a3
{
  v3 = a3;
  [(UIView *)self->_switchWellContainerView setClipsToBounds:!a3];
  [(UIImageView *)self->_switchWellImageView setHidden:v3];
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
    if (!v3)
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

  v5 = [(UISwitchModernVisualElement *)self _effectiveThumbImage];
  [(UIView *)self->_knobView setImage:v5];

  if (v3)
  {
    goto LABEL_8;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  [(UIView *)self->_switchWellContainerView setBackgroundColor:v6];
}

- (void)setOnTintColor:(id)a3
{
  v9 = a3;
  if (![(UIColor *)self->_onTintColor isEqual:?])
  {
    objc_storeStrong(&self->_onTintColor, a3);
    switchWellOnImageView = self->_switchWellOnImageView;
    v6 = [(UISwitchModernVisualElement *)self _effectiveOnImageTintColor];
    [(UIView *)switchWellOnImageView setTintColor:v6];

    if (dyld_program_sdk_at_least())
    {
      switchWellImageView = self->_switchWellImageView;
      v8 = [(UISwitchModernVisualElement *)self _effectiveGradientImage];
      [(UIImageView *)switchWellImageView setImage:v8];
    }
  }

  [(UISwitchModernVisualElement *)self _updateDisplayWithAnimationIfNeeded];
}

- (void)setTintColor:(id)a3
{
  v7 = a3;
  if (![(UIColor *)self->_tintColor isEqual:?])
  {
    objc_storeStrong(&self->_tintColor, a3);
    switchWellOffImageView = self->_switchWellOffImageView;
    v6 = [(UISwitchModernVisualElement *)self _effectiveOffImageTintColor];
    [(UIView *)switchWellOffImageView setTintColor:v6];
  }

  [(UISwitchModernVisualElement *)self _updateDisplayWithAnimationIfNeeded];
}

- (void)setThumbTintColor:(id)a3
{
  v8 = a3;
  if (![(UIColor *)self->_thumbTintColor isEqual:?])
  {
    objc_storeStrong(&self->_thumbTintColor, a3);
  }

  v5 = _UISolariumEnabled();
  knobView = self->_knobView;
  if (v5)
  {
    if (v8)
    {
      [(UIView *)self->_knobView setRestingBackgroundColor:?];
      goto LABEL_9;
    }

    v7 = +[UIColor whiteColor];
    [(UIView *)knobView setRestingBackgroundColor:v7];
  }

  else
  {
    v7 = [(UISwitchModernVisualElement *)self _effectiveThumbImage];
    [(UIView *)knobView setImage:v7];
  }

LABEL_9:
}

- (void)setOnImage:(id)a3
{
  v5 = a3;
  if (![(UIImage *)self->_onImage isEqual:?])
  {
    objc_storeStrong(&self->_onImage, a3);
  }

  [(UISwitchModernVisualElement *)self _invalidateOnOffImages];
}

- (void)setOffImage:(id)a3
{
  v5 = a3;
  if (![(UIImage *)self->_offImage isEqual:?])
  {
    objc_storeStrong(&self->_offImage, a3);
  }

  [(UISwitchModernVisualElement *)self _invalidateOnOffImages];
}

- (void)_transitionKnobToPressed:(BOOL)a3 on:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  [(UISwitchModernVisualElement *)self _knobBoundsPressed:?];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (_UISolariumEnabled())
  {
    if (v7)
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
      [(UISwitchModernVisualElement *)self _knobPositionOn:v6 pressed:0 forBounds:*&v10, *&v12, *&v14, *&v16];
      v20 = v49;
      v22 = v50;
    }

    v163[0] = MEMORY[0x1E69E9820];
    v163[1] = 3221225472;
    v163[2] = __68__UISwitchModernVisualElement__transitionKnobToPressed_on_animated___block_invoke;
    v163[3] = &unk_1E7101C38;
    v164 = v6;
    v163[4] = self;
    *&v163[5] = v20;
    v163[6] = v22;
    v51 = _Block_copy(v163);
    v40 = v51;
    if (v5)
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
    [(UIView *)knobView setLifted:v7 animated:v5 alongsideAnimations:v160 completion:v158];
    if (!v5)
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
    [(UISwitchModernVisualElement *)self _knobPositionOn:v6 pressed:v7 forBounds:*&v10, *&v12, *&v14, *&v16];
    v25 = v24;
    v27 = v26;
    v28 = [(UIView *)self->_knobView layer];
    v29 = [v28 presentationLayer];
    [v29 bounds];
    v152 = v30;
    v153 = v31;
    v154 = v32;
    v155 = v33;

    v34 = [(UIView *)self->_knobView layer];
    v35 = [v34 presentationLayer];
    [v35 position];
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
      if (v5)
      {
        [(UISwitchModernVisualElement *)self _switchToStaticMode:0];
        v40[2](v40);
        v41 = [(UIView *)self->_knobView layer];
        v42 = [MEMORY[0x1E696B098] valueWithCGRect:{v152, v153, v154, v155}];
        v43 = [MEMORY[0x1E696B098] valueWithCGRect:{*&v10, *&v12, *&v14, *&v16}];
        v44 = [(UISwitchModernVisualElement *)self _switchKnobWidthSpringAnimationFromValue:v42 toValue:v43 pressed:v7];
        [v41 addAnimation:v44 forKey:@"TouchKnobBoundsAnimation"];

        v45 = [(UIView *)self->_knobView layer];
        v46 = [MEMORY[0x1E696B098] valueWithCGPoint:{v37, v39}];
        v47 = [MEMORY[0x1E696B098] valueWithCGPoint:{v25, v27}];
        v48 = [(UISwitchModernVisualElement *)self _switchKnobPositionSpringAnimationFromValue:v46 toValue:v47];
        [v45 addAnimation:v48 forKey:@"TouchKnobPositionAnimation"];
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
      v53 = [(UIView *)self->_switchWellContainerView layer];
      v54 = [v53 presentationLayer];
      [v54 bounds];
      v126 = v56;
      v127 = v55;
      v124 = v58;
      v125 = v57;

      v59 = [(UIView *)self->_switchWellContainerView layer];
      v60 = [v59 presentationLayer];
      [v60 position];
      v128 = v62;
      v129 = v61;

      v63 = [(UIView *)self->_leftSwitchWellContainerView layer];
      v64 = [v63 presentationLayer];
      [v64 bounds];
      v132 = v66;
      v133 = v65;
      v130 = v68;
      v131 = v67;

      v69 = [(UIView *)self->_leftSwitchWellContainerView layer];
      v70 = [v69 presentationLayer];
      [v70 position];
      v138 = v72;
      v139 = v71;

      [(UISwitchModernVisualElement *)self _switchWellContainerBoundsOn:v6 pressed:v7];
      v147 = v73;
      v148 = v74;
      v151 = v75;
      v76 = *&v14;
      v149 = v77;
      [(UISwitchModernVisualElement *)self _switchWellContainerPositionOn:v6 pressed:v7];
      v146 = v78;
      v150 = v79;
      [(UISwitchModernVisualElement *)self _leftSwitchWellContainerBoundsOn:v6 pressed:v7];
      v81 = v80;
      v144 = v83;
      v145 = v82;
      v143 = v84;
      [(UISwitchModernVisualElement *)self _leftSwitchWellContainerPositionOn:v6 pressed:v7];
      v86 = v85;
      v142 = v87;
      v88 = [(UIView *)&self->_switchWellView->super.super.isa _backing_outermostLayer];
      v89 = [v88 presentationLayer];
      [v89 position];
      v136 = v91;
      v137 = v90;

      [(UISwitchModernVisualElement *)self _switchWellPositionOn:v6 pressed:v7];
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
      if (v5)
      {
        v94[2](v94);
        v95 = [(UIView *)self->_knobView layer];
        v96 = [MEMORY[0x1E696B098] valueWithCGRect:{v152, v153, v154, v155}];
        v97 = [MEMORY[0x1E696B098] valueWithCGRect:{*&v10, *&v12, v76, *&v16}];
        v98 = [(UISwitchModernVisualElement *)self _switchSpringAnimationWithKeyPath:@"bounds" fromValue:v96 toValue:v97 pressed:v7];
        [v95 addAnimation:v98 forKey:@"TouchKnobBoundsAnimation"];

        v99 = [(UIView *)self->_knobView layer];
        v100 = [MEMORY[0x1E696B098] valueWithCGPoint:{v140, v141}];
        v101 = [MEMORY[0x1E696B098] valueWithCGPoint:{v25, v27}];
        v102 = [(UISwitchModernVisualElement *)self _switchSpringAnimationWithKeyPath:@"position" fromValue:v100 toValue:v101 pressed:v7];
        [v99 addAnimation:v102 forKey:@"TouchKnobPositionAnimation"];

        v103 = [(UIView *)self->_switchWellContainerView layer];
        v104 = [MEMORY[0x1E696B098] valueWithCGRect:{v127, v126, v125, v124}];
        v105 = [MEMORY[0x1E696B098] valueWithCGRect:{v147, v151, v148, v149}];
        v106 = [(UISwitchModernVisualElement *)self _switchSpringAnimationWithKeyPath:@"bounds" fromValue:v104 toValue:v105 pressed:v7];
        [v103 addAnimation:v106 forKey:@"WellContainerBounds"];

        v107 = [(UIView *)self->_switchWellContainerView layer];
        v108 = [MEMORY[0x1E696B098] valueWithCGPoint:{v129, v128}];
        v109 = [MEMORY[0x1E696B098] valueWithCGPoint:{v146, v150}];
        v110 = [(UISwitchModernVisualElement *)self _switchSpringAnimationWithKeyPath:@"position" fromValue:v108 toValue:v109 pressed:v7];
        [v107 addAnimation:v110 forKey:@"WellContainerPosition"];

        v111 = [(UIView *)self->_leftSwitchWellContainerView layer];
        v112 = [MEMORY[0x1E696B098] valueWithCGRect:{v133, v132, v131, v130}];
        v113 = [MEMORY[0x1E696B098] valueWithCGRect:{v81, v145, v144, v143}];
        v114 = [(UISwitchModernVisualElement *)self _switchSpringAnimationWithKeyPath:@"bounds" fromValue:v112 toValue:v113 pressed:v7];
        [v111 addAnimation:v114 forKey:@"LeftWellContainerBounds"];

        v115 = [(UIView *)self->_leftSwitchWellContainerView layer];
        v116 = [MEMORY[0x1E696B098] valueWithCGPoint:{v139, v138}];
        v117 = [MEMORY[0x1E696B098] valueWithCGPoint:{v86, v142}];
        v118 = [(UISwitchModernVisualElement *)self _switchSpringAnimationWithKeyPath:@"position" fromValue:v116 toValue:v117 pressed:v7];
        [v115 addAnimation:v118 forKey:@"LeftWellContainerPosition"];

        v119 = [(UIView *)&self->_switchWellView->super.super.isa _backing_outermostLayer];
        v120 = [MEMORY[0x1E696B098] valueWithCGPoint:{v137, v136}];
        v121 = [MEMORY[0x1E696B098] valueWithCGPoint:{v135, v134}];
        v122 = [(UISwitchModernVisualElement *)self _switchSpringAnimationWithKeyPath:@"position" fromValue:v120 toValue:v121 pressed:v7];
        [v119 addAnimation:v122 forKey:@"WellPosition"];
      }

      else
      {
        [UIView performWithoutAnimation:v94];
      }
    }
  }
}

- (double)_knobPositionAdjusted:(int)a3 on:(int)a4 offset:(double)a5 pressed:(double)a6 forBounds:(double)a7
{
  if (!a1)
  {
    return 0.0;
  }

  v14 = a1[13];
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
    if (a4)
    {
      if (a3)
      {
        v24 = v20;
      }

      else
      {
        v24 = v22;
      }

      v25 = fmax(v15, fmin(v24 + a5, v18));
    }

    else
    {
      if (a3)
      {
        v26 = v21;
      }

      else
      {
        v26 = v23;
      }

      v27 = v26 + a5;
      v28 = 12.0;
      if (v27 < v17)
      {
        v28 = -12.0;
      }

      v25 = v28 * (1.0 - 1.0 / ((v27 - fmax(v17, fmin(v27, v16))) / v28 * 0.55 + 1.0));
    }
  }

  else if (a4)
  {
    v25 = v22;
  }

  else
  {
    v25 = v23;
  }

  if (a1[64])
  {
    v29 = a1[64];
  }

  else
  {
    v29 = a1;
  }

  [v29 anchorPoint];
  v31 = a8 * v30;
  UIRoundToViewScale(a1);
  v33 = v32;
  UIRoundToViewScale(a1);
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

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (a4)
  {
    [(UISwitchModernVisualElement *)self _switchToStaticMode:1];
  }
}

- (void)_transitionWellViewToPressed:(BOOL)a3 on:(BOOL)a4 animated:(BOOL)a5
{
  v6 = a4;
  v8 = [(UIView *)self->_switchWellImageView layer];
  v9 = [v8 presentationLayer];
  [v9 position];
  v11 = v10;
  v13 = v12;

  v14 = [(UIView *)self->_switchWellImageView layer];
  [v14 bounds];
  [(UISwitchModernVisualElement *)self _wellPositionOn:v6 forBounds:?];
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
  if (a5)
  {
    (*(v19 + 2))(v19);
    [(UISwitchModernVisualElement *)self _switchToStaticMode:0];
    v21 = [MEMORY[0x1E696B098] valueWithCGPoint:{v11, v13}];
    v22 = [MEMORY[0x1E696B098] valueWithCGPoint:{v16, v18}];
    v23 = [(UISwitchModernVisualElement *)self _switchTrackPositionSpringAnimationFromValue:v21 toValue:v22 on:v6];

    [v23 setDelegate:self];
    v24 = [(UIView *)self->_switchWellImageView layer];
    [v24 addAnimation:v23 forKey:@"SwitchWellPosition"];
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

- (void)_transitionWellViewToPressed:(BOOL)a3 animated:(BOOL)a4
{
  v5 = a3;
  v7 = [(UIView *)self->_switchWellView layer];
  v8 = [v7 presentationLayer];
  [v8 borderWidth];
  v10 = v9;

  v11 = [(UIView *)self->_switchWellView layer];
  [v11 borderWidth];
  v13 = v12;

  [(UISwitchModernVisualElement *)self _wellBorderWidthPressed:v5 on:self->_on];
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
    if (a4)
    {
      (*(v17 + 2))(v17);
      v19 = [(UIView *)self->_switchWellView layer];
      v20 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      v21 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
      v22 = [(UISwitchModernVisualElement *)self _switchTrackAnimationWithFromValue:v20 toValue:v21 on:self->_on];
      [v19 addAnimation:v22 forKey:@"SwitchWellBorderWidth"];
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

- (void)_transitionWellViewToOn:(BOOL)a3 animated:(BOOL)a4
{
  v5 = a3;
  v7 = [(UIView *)self->_switchWellView layer];
  v8 = [v7 presentationLayer];
  v9 = [v8 borderColor];

  v10 = [(UISwitchModernVisualElement *)self _wellColorOn:v5];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__UISwitchModernVisualElement__transitionWellViewToOn_animated___block_invoke;
  v17[3] = &unk_1E70F32F0;
  v17[4] = self;
  v17[5] = v10;
  v11 = _Block_copy(v17);
  v12 = v11;
  if (a4)
  {
    (*(v11 + 2))(v11);
    v13 = [(UIView *)self->_switchWellView layer];
    v14 = [(UISwitchModernVisualElement *)self _switchTrackColorAnimationWithFromValue:v9 toValue:v10];
    [v13 addAnimation:v14 forKey:@"SwitchWellColor"];

    v15 = [(UIView *)self->_leftSwitchWellView layer];
    v16 = [(UISwitchModernVisualElement *)self _switchTrackColorAnimationWithFromValue:v9 toValue:v10];
    [v15 addAnimation:v16 forKey:@"SwitchWellColor"];
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

- (void)_transitionImagesToPressed:(BOOL)a3 on:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  if (a4)
  {
    v8 = 11;
  }

  else
  {
    v8 = 10;
  }

  v9 = *(&self->super.super.super.super.isa + OBJC_IVAR___UISwitchModernVisualElement__on[v8]);
  if (a4)
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
  v20 = a3;
  v18 = v11;
  v19 = v12;
  v13 = v12;
  v14 = v11;
  v15 = _Block_copy(aBlock);
  v16 = v15;
  if (v5)
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

- (CGRect)_knobBoundsPressed:(BOOL)a3
{
  v3 = a3;
  if (_UISolariumEnabled())
  {
    if (v3)
    {
      v5 = 38.3333333;
    }

    else
    {
      v5 = 24.0;
    }

    if (v3)
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

    if (v3)
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

- (CGPoint)_knobPositionOn:(BOOL)a3 pressed:(BOOL)a4 forBounds:(CGRect)a5
{
  v5 = [(UISwitchModernVisualElement *)self _knobPositionAdjusted:a3 on:a4 offset:0.0 pressed:a5.origin.x forBounds:a5.origin.y, a5.size.width];
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGRect)_switchWellContainerBoundsOn:(BOOL)a3 pressed:(BOOL)a4
{
  [(UISwitchModernVisualElement *)self _leftSwitchWellContainerBoundsOn:a3 pressed:a4];
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

- (CGPoint)_switchWellContainerPositionOn:(BOOL)a3 pressed:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [UISwitchModernVisualElement _leftSwitchWellContainerBoundsOn:"_leftSwitchWellContainerBoundsOn:pressed:" pressed:?];
  v8 = v7;
  [(UISwitchModernVisualElement *)self _switchWellContainerBoundsOn:v5 pressed:v4];
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

- (CGPoint)_switchWellPositionOn:(BOOL)a3 pressed:(BOOL)a4
{
  [(UISwitchModernVisualElement *)self _switchWellContainerBoundsOn:a3 pressed:a4];
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

- (CGRect)_leftSwitchWellContainerBoundsOn:(BOOL)a3 pressed:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [(UISwitchModernVisualElement *)self _knobBoundsPressed:a4];
  [(UISwitchModernVisualElement *)self _knobPositionOn:v5 pressed:v4 forBounds:?];
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

- (CGPoint)_leftSwitchWellContainerPositionOn:(BOOL)a3 pressed:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [UISwitchModernVisualElement _leftSwitchWellContainerBoundsOn:"_leftSwitchWellContainerBoundsOn:pressed:" pressed:?];
  v8 = v7;
  if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
  {
    [(UISwitchModernVisualElement *)self _switchWellContainerBoundsOn:v5 pressed:v4];
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

- (CGPoint)_wellPositionOn:(BOOL)a3 forBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  if ((((*(&self->super.super._viewFlags + 18) & 0x40) == 0) ^ a3))
  {
    [(UIView *)self frame:a4.origin.x];
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

- (double)_wellBorderWidthPressed:(BOOL)a3 on:(BOOL)a4
{
  result = 2.0;
  if (a3 || a4)
  {
    return 15.5;
  }

  return result;
}

- (CGColor)_wellColorOn:(BOOL)a3
{
  if (a3)
  {
    [(UISwitchModernVisualElement *)self _effectiveOnTintColor];
  }

  else
  {
    [(UISwitchModernVisualElement *)self _effectiveTintColor];
  }
  v3 = ;
  v4 = [v3 CGColor];

  return v4;
}

- (id)_switchTrackPositionAnimationWithFromValue:(id)a3 toValue:(id)a4 on:(BOOL)a5
{
  v8 = MEMORY[0x1E6979318];
  v9 = a4;
  v10 = a3;
  v11 = [v8 animationWithKeyPath:@"position"];
  v12 = [(UISwitchModernVisualElement *)self _settings];
  v13 = v12;
  if (a5)
  {
    [v12 trackBorderGoingOnAnimationDuration];
    v15 = v14;

    [v11 setDuration:v15];
    v16 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v11 setTimingFunction:v16];
  }

  else
  {
    [v12 trackBorderGoingOffAnimationDuration];
    v18 = v17;

    [v11 setDuration:v18];
    v19 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v11 setTimingFunction:v19];

    v20 = [(UISwitchModernVisualElement *)self _settings];
    [v20 trackBorderGoingOffAnimationBeginTimeOffset];
    [v11 setBeginTime:?];

    [v11 setBeginTimeMode:*MEMORY[0x1E69795C0]];
  }

  [v11 setFillMode:*MEMORY[0x1E69797D8]];
  [v11 setFromValue:v10];

  [v11 setToValue:v9];
  *&v21 = 1.0 / UIAnimationDragCoefficient();
  [v11 setSpeed:v21];

  return v11;
}

- (id)_switchTrackAnimationWithFromValue:(id)a3 toValue:(id)a4 on:(BOOL)a5
{
  v8 = MEMORY[0x1E6979318];
  v9 = a4;
  v10 = a3;
  v11 = [v8 animationWithKeyPath:@"borderWidth"];
  v12 = [(UISwitchModernVisualElement *)self _settings];
  v13 = v12;
  if (a5)
  {
    [v12 trackBorderGoingOnAnimationDuration];
    v15 = v14;

    [v11 setDuration:v15];
    v16 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v11 setTimingFunction:v16];
  }

  else
  {
    [v12 trackBorderGoingOffAnimationDuration];
    v18 = v17;

    [v11 setDuration:v18];
    v19 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v11 setTimingFunction:v19];

    v20 = [(UISwitchModernVisualElement *)self _settings];
    [v20 trackBorderGoingOffAnimationBeginTimeOffset];
    [v11 setBeginTime:?];

    [v11 setBeginTimeMode:*MEMORY[0x1E69795C0]];
  }

  [v11 setFillMode:*MEMORY[0x1E69797D8]];
  [v11 setFromValue:v10];

  [v11 setToValue:v9];
  *&v21 = 1.0 / UIAnimationDragCoefficient();
  [v11 setSpeed:v21];

  return v11;
}

- (id)_switchTrackColorAnimationWithFromValue:(id)a3 toValue:(id)a4
{
  v6 = MEMORY[0x1E6979318];
  v7 = a4;
  v8 = a3;
  v9 = [v6 animationWithKeyPath:@"borderColor"];
  v10 = [(UISwitchModernVisualElement *)self _settings];
  [v10 trackColorAnimationDuration];
  [v9 setDuration:?];

  v11 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
  [v9 setTimingFunction:v11];

  [v9 setFromValue:v8];
  [v9 setToValue:v7];

  *&v12 = 1.0 / UIAnimationDragCoefficient();
  [v9 setSpeed:v12];

  return v9;
}

- (id)_switchSpringAnimationWithKeyPath:(id)a3 fromValue:(id)a4 toValue:(id)a5 pressed:(BOOL)a6
{
  v6 = a6;
  v10 = MEMORY[0x1E69794A8];
  v11 = a5;
  v12 = a4;
  v13 = [v10 animationWithKeyPath:a3];
  v14 = [(UISwitchModernVisualElement *)self _settings];
  v15 = v14;
  if (v6)
  {
    [v14 knobSpringMassAnimationTouchDown];
    v17 = v16;
    [v15 knobSpringStiffnessAnimationTouchDown];
    v19 = v18;
    [v15 knobSpringDampingAnimationTouchDown];
    v21 = v20;
    [v15 knobSpringDurationAnimationTouchDown];
  }

  else
  {
    [v14 knobSpringMassAnimationTouchUp];
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
  [v13 setFromValue:v12];

  [v13 setToValue:v11];
  *&v27 = 1.0 / UIAnimationDragCoefficient();
  [v13 setSpeed:v27];

  return v13;
}

- (id)_switchKnobPositionSpringAnimationFromValue:(id)a3 toValue:(id)a4
{
  v6 = MEMORY[0x1E69794A8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 animationWithKeyPath:@"position"];
  v10 = [(UISwitchModernVisualElement *)self _settings];
  [v10 knobSpringAnimationMass];
  v12 = v11;
  [v10 knobSpringAnimationStiffness];
  v14 = v13;
  [v10 knobSpringAnimationDamping];
  v16 = v15;
  [v10 knobSpringAnimationDuration];
  v18 = v17;
  [v9 setMass:v12];
  [v9 setStiffness:v14];
  [v9 setDamping:v16];
  [v9 setDuration:v18];
  [v9 setFillMode:*MEMORY[0x1E69797D8]];
  [v9 setFromValue:v8];

  [v9 setToValue:v7];
  *&v19 = 1.0 / UIAnimationDragCoefficient();
  [v9 setSpeed:v19];

  return v9;
}

- (id)_switchKnobWidthSpringAnimationFromValue:(id)a3 toValue:(id)a4 pressed:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E69794A8];
  v9 = a4;
  v10 = a3;
  v11 = [v8 animationWithKeyPath:@"bounds"];
  v12 = [(UISwitchModernVisualElement *)self _settings];
  v13 = v12;
  if (v5)
  {
    [v12 knobTouchDownSpringAnimationMass];
    v15 = v14;
    [v13 knobTouchDownSpringAnimationStiffness];
    v17 = v16;
    [v13 knobTouchDownSpringAnimationDamping];
    v19 = v18;
    [v13 knobTouchDownSpringAnimationDuration];
  }

  else
  {
    [v12 knobSpringAnimationMass];
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
  [v11 setFromValue:v10];

  [v11 setToValue:v9];
  *&v25 = 1.0 / UIAnimationDragCoefficient();
  [v11 setSpeed:v25];

  return v11;
}

- (id)_switchTrackPositionSpringAnimationFromValue:(id)a3 toValue:(id)a4 on:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E69794A8];
  v9 = a4;
  v10 = a3;
  v11 = [v8 animationWithKeyPath:@"position"];
  v12 = [(UISwitchModernVisualElement *)self _settings];
  v13 = v12;
  if (v5)
  {
    [v12 trackGoingOffSpringAnimationMass];
    v15 = v14;
    [v13 trackGoingOffSpringAnimationStiffness];
    v17 = v16;
    [v13 trackGoingOffSpringAnimationDamping];
    v19 = v18;
    [v13 trackGoingOffSpringAnimationDuration];
  }

  else
  {
    [v12 trackGoingOnSpringAnimationMass];
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
  [v11 setFromValue:v10];

  [v11 setToValue:v9];
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

+ (id)_modernGradientImageWithOnColor:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  v7 = v5;
  v17 = v7;
  v19 = &v20;
  [UITraitCollection _performWithCurrentTraitCollection:v6 usingBlock:v16];
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

+ (id)_modernThumbImageWithColor:(id)a3 mask:(unint64_t)a4 traitCollection:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (qword_1ED499E38 == -1)
  {
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&qword_1ED499E38, &__block_literal_global_197);
  if (!v7)
  {
LABEL_3:
    v7 = +[UIColor whiteColor];
  }

LABEL_4:
  v9 = [v7 resolvedColorWithTraitCollection:v8];
  v10 = [v9 CGColor];

  v11 = [[_UIModernSwitchVisualElementCacheKey alloc] initWithMask:a4 color:v10];
  v12 = [qword_1ED499E30 objectForKey:v11];
  if (!v12)
  {
    v13 = +[UIColor _controlShadowColor];
    v14 = [v13 CGColor];

    v15 = [[UIGraphicsImageRenderer alloc] initWithSize:43.0, 43.0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__UISwitchModernVisualElement__modernThumbImageWithColor_mask_traitCollection___block_invoke_2;
    v18[3] = &__block_descriptor_56_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v18[4] = a4;
    v18[5] = v14;
    v18[6] = v10;
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
    v5 = [(UIView *)self traitCollection];
    v6 = [UISwitchModernVisualElement _modernThumbImageWithColor:thumbTintColor mask:v3 traitCollection:v5];
  }

  else
  {
    v4 = _UIImageWithName(@"UISwitchKnob");
    v5 = v4;
    if (self->_thumbTintColor)
    {
      v6 = [v4 _flatImageWithColor:?];
    }

    else
    {
      v6 = v4;
      v5 = v6;
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

- (BOOL)_shouldUseLightTintOverColor:(id)a3
{
  v7 = 0.0;
  v8 = 0.0;
  if (a3)
  {
    [a3 getWhite:&v8 alpha:0];
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

- (void)_updateDisplayAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(UISwitchModernVisualElement *)self on];
  v6 = [(UISwitchModernVisualElement *)self pressed];
  if (dyld_program_sdk_at_least())
  {
    if (v3)
    {
      v7 = [(UIView *)self->_knobView layer];
      v8 = [v7 presentationLayer];
      if (v8)
      {
        v9 = [(UIView *)self->_switchWellImageView layer];
        v10 = [v9 presentationLayer];
        v3 = v10 != 0;
      }

      else
      {
        v3 = 0;
      }

      v11 = self;
      v12 = v5;
      v13 = v3;
    }

    else
    {
      v11 = self;
      v12 = v5;
      v13 = 0;
    }

    [(UISwitchModernVisualElement *)v11 _transitionKnobToOn:v12 animated:v13];
    [(UISwitchModernVisualElement *)self _transitionKnobToPressed:v6 animated:v3];
    [(UISwitchModernVisualElement *)self _transitionWellViewToPressed:v6 on:v5 animated:v3];
  }

  else
  {
    [(UISwitchModernVisualElement *)self _transitionKnobToOn:v5 animated:0];
    [(UISwitchModernVisualElement *)self _transitionWellViewToOn:v5 animated:0];
    [(UISwitchModernVisualElement *)self _transitionKnobToPressed:v6 animated:0];
    [(UISwitchModernVisualElement *)self _transitionWellViewToPressed:v6 animated:0];
    v3 = 0;
  }

  [(UISwitchModernVisualElement *)self _transitionImagesToPressed:v6 on:v5 animated:v3];
}

- (void)_setPressed:(BOOL)a3 on:(BOOL)a4 animated:(BOOL)a5 shouldAnimateLabels:(BOOL)a6 completion:(id)a7
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v11 = a7;
  if (__PAIR64__(self->_pressed, self->_on) != __PAIR64__(v9, v8))
  {
    v13 = v11;
    self->_pressed = v9;
    self->_on = v8;
    v12 = dyld_program_sdk_at_least();
    [(UISwitchModernVisualElement *)self _transitionKnobToOn:v8 animated:v7];
    if (v12)
    {
      [(UISwitchModernVisualElement *)self _transitionKnobToPressed:v9 animated:v7];
      [(UISwitchModernVisualElement *)self _transitionWellViewToPressed:v9 on:v8 animated:v7];
    }

    else
    {
      [(UISwitchModernVisualElement *)self _transitionWellViewToOn:v8 animated:v7];
      [(UISwitchModernVisualElement *)self _transitionKnobToPressed:v9 animated:v7];
      [(UISwitchModernVisualElement *)self _transitionWellViewToPressed:v9 animated:v7];
    }

    [(UISwitchModernVisualElement *)self _transitionImagesToPressed:v9 on:v8 animated:v7];
    v11 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 1);
      v11 = v13;
    }
  }
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v5 = [(UIView *)self semanticContentAttribute];
  v6.receiver = self;
  v6.super_class = UISwitchModernVisualElement;
  [(UIView *)&v6 setSemanticContentAttribute:a3];
  if (v5 != [(UIView *)self semanticContentAttribute])
  {
    [(UISwitchModernVisualElement *)self _invalidateControl];
  }
}

- (BOOL)_feedbackEnabled
{
  v2 = [(UISwitchModernVisualElement *)self _settings];
  v3 = [v2 feedbackEnabled];

  return v3;
}

- (void)setSwitchControl:(id)a3
{
  v4 = a3;
  [(UISwitchModernVisualElement *)self _uninstallSelectGestureRecognizer];
  v6.receiver = self;
  v6.super_class = UISwitchModernVisualElement;
  [(UISwitchVisualElement *)&v6 setSwitchControl:v4];

  v5 = [(UISwitchVisualElement *)self switchControl];

  if (v5)
  {
    [(UISwitchModernVisualElement *)self _installSelectGestureRecognizer];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_selectGestureRecognizer != a3 || [a3 _buttonType] != 4)
  {
    return 1;
  }

  return [(UIView *)self isEnabled];
}

- (void)_selectGestureChanged:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    v5 = [(UISwitchModernVisualElement *)self gestureTrackingSession];
    [v5 reset];

    v6 = [(UISwitchModernVisualElement *)self gestureTrackingSession];
    [v6 setPendingDisplayedOnValue:-[UISwitchModernVisualElement on](self forGesture:{"on") ^ 1, v4}];

    v7 = [(UISwitchModernVisualElement *)self gestureTrackingSession];
    [v7 applyPendingDisplayedOnValueWithoutSendingActions];

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