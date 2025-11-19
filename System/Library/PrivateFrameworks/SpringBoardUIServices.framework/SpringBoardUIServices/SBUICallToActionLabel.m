@interface SBUICallToActionLabel
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)description;
- (SBUICallToActionLabel)initWithFrame:(CGRect)a3;
- (double)baselineOffset;
- (id)_callToActionFont;
- (id)_fontWithTextStyle:(id)a3 symbolicTraits:(unsigned int)a4 withMaximumFontSizeCategory:(id)a5;
- (void)_actuallyRunGradientAnimation;
- (void)_addAnimationCompletionBlockIfNecessary:(id)a3;
- (void)_createGradientLayer;
- (void)_createLabel;
- (void)_executePostAnimationCompletionBlocks;
- (void)_invalidateGradientAnimationTimer;
- (void)_preferredTextSizeChanged:(id)a3;
- (void)_resetGradientAndLabelBefore:(BOOL)a3;
- (void)_runFadeAnimationForFadingOut:(BOOL)a3 duration:(double)a4 completion:(id)a5;
- (void)_runGradientAnimation:(BOOL)a3;
- (void)_timerTriggered;
- (void)_updateLabelTextWithLanguage:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)didMoveToSuperview;
- (void)fadeInImmediately:(BOOL)a3 completion:(id)a4;
- (void)fadeOutWithDuration:(double)a3 completion:(id)a4;
- (void)layoutSubviews;
- (void)setLegibilitySettings:(id)a3;
- (void)setState:(unint64_t)a3;
- (void)setText:(id)a3 forLanguage:(id)a4 animated:(BOOL)a5;
- (void)setVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)sizeToFit;
@end

@implementation SBUICallToActionLabel

- (SBUICallToActionLabel)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SBUICallToActionLabel;
  v3 = [(SBUICallToActionLabel *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    animationCompletionBlocks = v3->_animationCompletionBlocks;
    v3->_animationCompletionBlocks = v4;

    [(SBUICallToActionLabel *)v3 _createLabel];
    [(SBUICallToActionLabel *)v3 _createGradientLayer];
    [(SBUICallToActionLabel *)v3 setState:0];
    [(SBUICallToActionLabel *)v3 bs_setHitTestingDisabled:1];
    [(SBUICallToActionLabel *)v3 setAccessibilityIdentifier:@"call-to-action-label"];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v3 selector:sel__preferredTextSizeChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

- (void)didMoveToSuperview
{
  v3 = [(SBUICallToActionLabel *)self superview];

  if (!v3)
  {
    [(SBUICallToActionLabel *)self cancelFadeInTimerIfNecessary];
    gradientLayer = self->_gradientLayer;

    [(CAGradientLayer *)gradientLayer removeAllAnimations];
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SBUICallToActionLabel;
  [(SBUICallToActionLabel *)&v13 layoutSubviews];
  [(SBUICallToActionLabel *)self bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MidY = CGRectGetMidY(v15);
  [(SBUILegibilityLabel *)self->_label setFrame:x, y, width, height];
  [(SBUILegibilityLabel *)self->_label setCenter:MidX, MidY];
  [(SBUILegibilityLabel *)self->_label frame];
  v10 = v9;
  [(SBUILegibilityLabel *)self->_label frame];
  v12 = fmax(hypot(v10, v11) * 2.0 + 32.0, 364.0);
  [(CAGradientLayer *)self->_gradientLayer setBounds:0.0, 0.0, v12, v12];
  [(CAGradientLayer *)self->_gradientLayer setPosition:MidX, MidY + 32.0];
}

- (void)sizeToFit
{
  [(SBUILegibilityLabel *)self->_label sizeToFit];
  [(SBUILegibilityLabel *)self->_label bounds];

  [(SBUICallToActionLabel *)self setBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SBUILegibilityLabel *)self->_label sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setLegibilitySettings:(id)a3
{
  v6 = a3;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    v5 = [(SBUICallToActionLabel *)self label];
    [v5 setLegibilitySettings:v6];
  }
}

- (double)baselineOffset
{
  v2 = [(SBUICallToActionLabel *)self label];
  [v2 baselineOffset];
  v4 = v3;

  return v4;
}

- (void)fadeInImmediately:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  v6 = [(SBUICallToActionLabel *)self state];
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if (v7)
      {
        v7[2](v7);
      }
    }

    else if (v6 == 3)
    {
      [(SBUICallToActionLabel *)self _runFadeAnimationForFadingOut:0 duration:v7 completion:0.4];
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      [(SBUICallToActionLabel *)self _addAnimationCompletionBlockIfNecessary:v7];
    }
  }

  else
  {
    [(SBUICallToActionLabel *)self _addAnimationCompletionBlockIfNecessary:v7];
    [(SBUICallToActionLabel *)self _runGradientAnimation:v4];
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)fadeOutWithDuration:(double)a3 completion:(id)a4
{
  v7 = a4;
  v6 = [(SBUICallToActionLabel *)self state];
  if (v6 - 1 < 2)
  {
    [(SBUICallToActionLabel *)self _runFadeAnimationForFadingOut:1 duration:v7 completion:a3];
  }

  else if (!v6 || v6 == 3)
  {
    [(SBUICallToActionLabel *)self _invalidateGradientAnimationTimer];
    [(CAGradientLayer *)self->_gradientLayer removeAnimationForKey:@"call-to-action"];
    if (v7)
    {
      v7[2]();
    }
  }
}

- (void)setVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    if (a3)
    {

      [(SBUICallToActionLabel *)self fadeIn];
    }

    else
    {

      [(SBUICallToActionLabel *)self fadeOut];
    }
  }

  else
  {
    if (a3)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [(SBUICallToActionLabel *)self setState:v6];
    [(SBUICallToActionLabel *)self _resetGradientAndLabelBefore:!v4];
    [(SBUICallToActionLabel *)self _invalidateGradientAnimationTimer];
    [(CAGradientLayer *)self->_gradientLayer removeAnimationForKey:@"call-to-action"];

    [(SBUICallToActionLabel *)self _executePostAnimationCompletionBlocks];
  }
}

- (void)setText:(id)a3 forLanguage:(id)a4 animated:(BOOL)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!self->_text || ([v8 isEqualToString:?] & 1) == 0)
  {
    v10 = [v8 copy];
    text = self->_text;
    self->_text = v10;

    v12 = SBLogDashBoardCallToActionLabel();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = self->_text;
      v14 = NSStringFromBOOL();
      v15 = v14;
      v16 = self->_state - 1;
      if (v16 > 2)
      {
        v17 = @"hidden";
      }

      else
      {
        v17 = off_1E78A02A0[v16];
      }

      *buf = 138412802;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      v30 = 2114;
      v31 = v17;
      _os_log_impl(&dword_1A9A79000, v12, OS_LOG_TYPE_INFO, "Changing call to action text: %@ (animated: %@, current state: %{public}@)", buf, 0x20u);
    }

    if (a5)
    {
      objc_initWeak(buf, self);
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __54__SBUICallToActionLabel_setText_forLanguage_animated___block_invoke;
      v23 = &unk_1E78A0260;
      objc_copyWeak(&v25, buf);
      v24 = v9;
      v18 = MEMORY[0x1AC58E960](&v20);
      v19 = [(SBUICallToActionLabel *)self state:v20];
      if (v19 - 1 < 2)
      {
        [(SBUICallToActionLabel *)self _runFadeAnimationForFadingOut:1 duration:v18 completion:0.4];
      }

      else if (v19)
      {
        if (v19 == 3)
        {
          [(SBUICallToActionLabel *)self _addAnimationCompletionBlockIfNecessary:v18];
        }
      }

      else
      {
        v18[2](v18);
      }

      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }

    else
    {
      [(SBUICallToActionLabel *)self _updateLabelTextWithLanguage:v9];
    }
  }
}

void __54__SBUICallToActionLabel_setText_forLanguage_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateLabelTextWithLanguage:*(a1 + 32)];
  [WeakRetained fadeInImmediately:1];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = v3;
  v5 = self->_state - 1;
  if (v5 > 2)
  {
    v6 = @"hidden";
  }

  else
  {
    v6 = off_1E78A02A0[v5];
  }

  [v3 appendString:v6 withName:@"state"];
  v7 = [v4 build];

  return v7;
}

- (void)setState:(unint64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_state != a3)
  {
    self->_state = a3;
    v4 = SBLogDashBoardCallToActionLabel();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = self->_state - 1;
      if (v5 > 2)
      {
        v6 = @"hidden";
      }

      else
      {
        v6 = off_1E78A02A0[v5];
      }

      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_INFO, "Call to action label state changing to %{public}@", &v7, 0xCu);
    }
  }
}

- (void)_updateLabelTextWithLanguage:(id)a3
{
  v8 = a3;
  v4 = [(SBUICallToActionLabel *)self label];
  v5 = _UIAdaptLocalizedStringForView();
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v5];
    if (v8)
    {
      v7 = [v6 string];
      [v6 addAttribute:@"NSLanguage" value:v8 range:{0, objc_msgSend(v7, "length")}];
    }
  }

  else
  {
    v6 = 0;
  }

  [v4 setAttributedText:v6];
  [v4 setNumberOfLines:4];
}

- (void)_createLabel
{
  v10 = [(SBUICallToActionLabel *)self _callToActionFont];
  v3 = [SBUILegibilityLabel alloc];
  v4 = [MEMORY[0x1E69DD5B8] sharedInstanceForStyle:1];
  v5 = [(SBUICallToActionLabel *)self text];
  v6 = [(SBUILegibilityLabel *)v3 initWithSettings:v4 strength:v5 string:v10 font:0.25];

  v7 = [v10 fontDescriptor];
  [v7 pointSize];
  v9 = v8;

  [(SBUILegibilityLabel *)v6 setMinimumScaleFactor:(v9 + -2.0) / v9];
  [(SBUILegibilityLabel *)v6 setAdjustsFontSizeToFitWidth:1];
  [(SBUICallToActionLabel *)self addSubview:v6];
  [(SBUICallToActionLabel *)self setLabel:v6];
}

- (id)_callToActionFont
{
  if (_callToActionFont_onceToken != -1)
  {
    [SBUICallToActionLabel _callToActionFont];
  }

  v5 = _callToActionFont_callToActionFont;
  if (!_callToActionFont_callToActionFont)
  {
    v6 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(v6))
    {
      v7 = 32770;
    }

    else
    {
      v7 = 2;
    }

    v8 = __sb__runningInSpringBoard();
    v9 = v8;
    if (v8)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v10 = *MEMORY[0x1E69DDC28];
LABEL_30:
        v17 = [(SBUICallToActionLabel *)self _fontWithTextStyle:*MEMORY[0x1E69DDCF8] symbolicTraits:v7 withMaximumFontSizeCategory:v10];
        v18 = _callToActionFont_callToActionFont;
        _callToActionFont_callToActionFont = v17;

        v5 = _callToActionFont_callToActionFont;
        goto LABEL_31;
      }
    }

    else
    {
      v6 = [MEMORY[0x1E69DC938] currentDevice];
      if ([(NSString *)v6 userInterfaceIdiom])
      {
        v10 = *MEMORY[0x1E69DDC28];
        goto LABEL_29;
      }
    }

    v11 = __sb__runningInSpringBoard();
    v12 = v11;
    if (v11)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v10 = *MEMORY[0x1E69DDC30];
        if (v9)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v2 = [MEMORY[0x1E69DC938] currentDevice];
      if ([v2 userInterfaceIdiom])
      {
        v10 = *MEMORY[0x1E69DDC30];
        goto LABEL_35;
      }
    }

    v13 = __sb__runningInSpringBoard();
    v14 = v13;
    if (v13)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      v3 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v3 _referenceBounds];
    }

    BSSizeRoundForScale();
    if (v15 >= *(MEMORY[0x1E69D4380] + 40))
    {
      v16 = MEMORY[0x1E69DDC28];
    }

    else
    {
      v16 = MEMORY[0x1E69DDC30];
    }

    v10 = *v16;
    if (v14)
    {
      if (v12)
      {
        goto LABEL_28;
      }
    }

    else
    {

      if (v12)
      {
LABEL_28:
        if (v9)
        {
          goto LABEL_30;
        }

LABEL_29:

        goto LABEL_30;
      }
    }

LABEL_35:

    if (v9)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_31:

  return v5;
}

void __42__SBUICallToActionLabel__callToActionFont__block_invoke()
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DDC48];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_23];
}

void __42__SBUICallToActionLabel__callToActionFont__block_invoke_2()
{
  v0 = _callToActionFont_callToActionFont;
  _callToActionFont_callToActionFont = 0;
}

- (id)_fontWithTextStyle:(id)a3 symbolicTraits:(unsigned int)a4 withMaximumFontSizeCategory:(id)a5
{
  v6 = *&a4;
  v7 = a3;
  v8 = a5;
  v9 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  v10 = UIContentSizeCategoryCompareToCategory(v9, v8);

  v11 = MEMORY[0x1E69DB880];
  if (v10 == NSOrderedAscending)
  {
    v13 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v7];
  }

  else
  {
    v12 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v8];
    v13 = [v11 preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:v12];
  }

  v14 = [v13 fontDescriptorWithSymbolicTraits:v6];
  v15 = [MEMORY[0x1E69DB878] fontWithDescriptor:v14 size:0.0];

  return v15;
}

- (void)_createGradientLayer
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E6979380]);
  [v3 setType:*MEMORY[0x1E6979DB0]];
  [v3 setStartPoint:{0.5, 0.5}];
  [v3 setEndPoint:{1.0, 1.0}];
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  v10[0] = [v4 CGColor];
  v5 = [MEMORY[0x1E69DC888] clearColor];
  v10[1] = [v5 CGColor];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  [v3 setColors:v6];

  [(SBUICallToActionLabel *)self _resetGradientAndLabelBefore:1];
  v7 = [(SBUICallToActionLabel *)self layer];
  [v7 addSublayer:v3];

  [(SBUICallToActionLabel *)self setGradientLayer:v3];
  v8 = [(SBUICallToActionLabel *)self label];
  v9 = [v8 layer];
  [v9 setMask:v3];
}

- (void)_preferredTextSizeChanged:(id)a3
{
  label = self->_label;
  v5 = [(SBUICallToActionLabel *)self _callToActionFont];
  [(SBUILegibilityLabel *)label setFont:v5];

  [(SBUICallToActionLabel *)self _updateLabelTextWithLanguage:0];
}

- (void)_runGradientAnimation:(BOOL)a3
{
  if (a3)
  {
    [(SBUICallToActionLabel *)self _invalidateGradientAnimationTimer];
    v4 = SBLogDashBoardCallToActionLabel();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SBUICallToActionLabel _runGradientAnimation:];
    }

    [(SBUICallToActionLabel *)self _actuallyRunGradientAnimation];
  }

  else
  {
    v5 = [(SBUICallToActionLabel *)self animationTimer];

    if (!v5)
    {
      v6 = SBLogDashBoardCallToActionLabel();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [SBUICallToActionLabel _runGradientAnimation:];
      }

      v7 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__actuallyRunGradientAnimation selector:0 userInfo:0 repeats:4.0];
      [(SBUICallToActionLabel *)self setAnimationTimer:v7];
    }
  }
}

- (void)_invalidateGradientAnimationTimer
{
  if (self->_animationTimer)
  {
    v3 = SBLogDashBoardCallToActionLabel();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [SBUICallToActionLabel _invalidateGradientAnimationTimer];
    }

    [(NSTimer *)self->_animationTimer invalidate];
    animationTimer = self->_animationTimer;
    self->_animationTimer = 0;
  }
}

- (void)_timerTriggered
{
  v3 = SBLogDashBoardCallToActionLabel();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [SBUICallToActionLabel _timerTriggered];
  }

  [(SBUICallToActionLabel *)self _actuallyRunGradientAnimation];
}

- (void)_actuallyRunGradientAnimation
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1A9A79000, v1, OS_LOG_TYPE_DEBUG, "%{public}@: adding gradient animation: %@", v2, 0x16u);
}

- (void)_runFadeAnimationForFadingOut:(BOOL)a3 duration:(double)a4 completion:(id)a5
{
  if (a3)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  v9 = a5;
  [(SBUICallToActionLabel *)self setState:v8];
  [(SBUICallToActionLabel *)self _invalidateGradientAnimationTimer];
  [(CAGradientLayer *)self->_gradientLayer removeAnimationForKey:@"call-to-action"];
  [(SBUICallToActionLabel *)self _addAnimationCompletionBlockIfNecessary:v9];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__SBUICallToActionLabel__runFadeAnimationForFadingOut_duration_completion___block_invoke;
  v12[3] = &unk_1E789DA60;
  v12[4] = self;
  v13 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__SBUICallToActionLabel__runFadeAnimationForFadingOut_duration_completion___block_invoke_2;
  v10[3] = &unk_1E789E2F8;
  v11 = a3;
  v10[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v12 options:v10 animations:a4 completion:0.0];
}

uint64_t __75__SBUICallToActionLabel__runFadeAnimationForFadingOut_duration_completion___block_invoke(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(*(a1 + 32) + 432) setAlpha:v1];
}

uint64_t __75__SBUICallToActionLabel__runFadeAnimationForFadingOut_duration_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) setState:0];
    [*(a1 + 32) _resetGradientAndLabelBefore:1];
  }

  v2 = *(a1 + 32);

  return [v2 _executePostAnimationCompletionBlocks];
}

- (void)_resetGradientAndLabelBefore:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(SBUILegibilityLabel *)self->_label setAlpha:1.0];
  gradientLayer = self->_gradientLayer;
  if (v3)
  {
    [(CAGradientLayer *)gradientLayer setLocations:&unk_1F1DB5C68];
    v6 = self->_gradientLayer;
    v7 = 0.0;
    v8 = 0.0;
  }

  else
  {
    [(CAGradientLayer *)gradientLayer setLocations:&unk_1F1DB5C80];
    v6 = self->_gradientLayer;
    v7 = 1.0;
    v8 = 1.0;
  }

  CATransform3DMakeScale(&v9, v7, v8, 1.0);
  [(CAGradientLayer *)v6 setTransform:&v9];
  [MEMORY[0x1E6979518] commit];
}

- (void)_addAnimationCompletionBlockIfNecessary:(id)a3
{
  if (a3)
  {
    animationCompletionBlocks = self->_animationCompletionBlocks;
    v5 = [a3 copy];
    v4 = MEMORY[0x1AC58E960]();
    [(NSMutableArray *)animationCompletionBlocks addObject:v4];
  }
}

- (void)_executePostAnimationCompletionBlocks
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_animationCompletionBlocks;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_animationCompletionBlocks removeAllObjects];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = SBLogDashBoardCallToActionLabel();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SBUICallToActionLabel animationDidStop:finished:];
  }

  if (v4 && [(SBUICallToActionLabel *)self state]== 1)
  {
    [(SBUICallToActionLabel *)self setState:2];
    [(SBUICallToActionLabel *)self _executePostAnimationCompletionBlocks];
  }
}

@end