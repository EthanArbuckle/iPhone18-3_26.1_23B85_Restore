@interface SBUICallToActionLabel
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)description;
- (SBUICallToActionLabel)initWithFrame:(CGRect)frame;
- (double)baselineOffset;
- (id)_callToActionFont;
- (id)_fontWithTextStyle:(id)style symbolicTraits:(unsigned int)traits withMaximumFontSizeCategory:(id)category;
- (void)_actuallyRunGradientAnimation;
- (void)_addAnimationCompletionBlockIfNecessary:(id)necessary;
- (void)_createGradientLayer;
- (void)_createLabel;
- (void)_executePostAnimationCompletionBlocks;
- (void)_invalidateGradientAnimationTimer;
- (void)_preferredTextSizeChanged:(id)changed;
- (void)_resetGradientAndLabelBefore:(BOOL)before;
- (void)_runFadeAnimationForFadingOut:(BOOL)out duration:(double)duration completion:(id)completion;
- (void)_runGradientAnimation:(BOOL)animation;
- (void)_timerTriggered;
- (void)_updateLabelTextWithLanguage:(id)language;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)didMoveToSuperview;
- (void)fadeInImmediately:(BOOL)immediately completion:(id)completion;
- (void)fadeOutWithDuration:(double)duration completion:(id)completion;
- (void)layoutSubviews;
- (void)setLegibilitySettings:(id)settings;
- (void)setState:(unint64_t)state;
- (void)setText:(id)text forLanguage:(id)language animated:(BOOL)animated;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated;
- (void)sizeToFit;
@end

@implementation SBUICallToActionLabel

- (SBUICallToActionLabel)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SBUICallToActionLabel;
  v3 = [(SBUICallToActionLabel *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__preferredTextSizeChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v3;
}

- (void)didMoveToSuperview
{
  superview = [(SBUICallToActionLabel *)self superview];

  if (!superview)
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(SBUILegibilityLabel *)self->_label sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    label = [(SBUICallToActionLabel *)self label];
    [label setLegibilitySettings:settingsCopy];
  }
}

- (double)baselineOffset
{
  label = [(SBUICallToActionLabel *)self label];
  [label baselineOffset];
  v4 = v3;

  return v4;
}

- (void)fadeInImmediately:(BOOL)immediately completion:(id)completion
{
  immediatelyCopy = immediately;
  completionCopy = completion;
  state = [(SBUICallToActionLabel *)self state];
  if (state > 1)
  {
    if (state == 2)
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }

    else if (state == 3)
    {
      [(SBUICallToActionLabel *)self _runFadeAnimationForFadingOut:0 duration:completionCopy completion:0.4];
    }
  }

  else if (state)
  {
    if (state == 1)
    {
      [(SBUICallToActionLabel *)self _addAnimationCompletionBlockIfNecessary:completionCopy];
    }
  }

  else
  {
    [(SBUICallToActionLabel *)self _addAnimationCompletionBlockIfNecessary:completionCopy];
    [(SBUICallToActionLabel *)self _runGradientAnimation:immediatelyCopy];
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)fadeOutWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  state = [(SBUICallToActionLabel *)self state];
  if (state - 1 < 2)
  {
    [(SBUICallToActionLabel *)self _runFadeAnimationForFadingOut:1 duration:completionCopy completion:duration];
  }

  else if (!state || state == 3)
  {
    [(SBUICallToActionLabel *)self _invalidateGradientAnimationTimer];
    [(CAGradientLayer *)self->_gradientLayer removeAnimationForKey:@"call-to-action"];
    if (completionCopy)
    {
      completionCopy[2]();
    }
  }
}

- (void)setVisible:(BOOL)visible animated:(BOOL)animated
{
  visibleCopy = visible;
  if (animated)
  {
    if (visible)
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
    if (visible)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [(SBUICallToActionLabel *)self setState:v6];
    [(SBUICallToActionLabel *)self _resetGradientAndLabelBefore:!visibleCopy];
    [(SBUICallToActionLabel *)self _invalidateGradientAnimationTimer];
    [(CAGradientLayer *)self->_gradientLayer removeAnimationForKey:@"call-to-action"];

    [(SBUICallToActionLabel *)self _executePostAnimationCompletionBlocks];
  }
}

- (void)setText:(id)text forLanguage:(id)language animated:(BOOL)animated
{
  v32 = *MEMORY[0x1E69E9840];
  textCopy = text;
  languageCopy = language;
  if (!self->_text || ([textCopy isEqualToString:?] & 1) == 0)
  {
    v10 = [textCopy copy];
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

    if (animated)
    {
      objc_initWeak(buf, self);
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __54__SBUICallToActionLabel_setText_forLanguage_animated___block_invoke;
      v23 = &unk_1E78A0260;
      objc_copyWeak(&v25, buf);
      v24 = languageCopy;
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
      [(SBUICallToActionLabel *)self _updateLabelTextWithLanguage:languageCopy];
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
  build = [v4 build];

  return build;
}

- (void)setState:(unint64_t)state
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_state != state)
  {
    self->_state = state;
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

- (void)_updateLabelTextWithLanguage:(id)language
{
  languageCopy = language;
  label = [(SBUICallToActionLabel *)self label];
  v5 = _UIAdaptLocalizedStringForView();
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v5];
    if (languageCopy)
    {
      string = [v6 string];
      [v6 addAttribute:@"NSLanguage" value:languageCopy range:{0, objc_msgSend(string, "length")}];
    }
  }

  else
  {
    v6 = 0;
  }

  [label setAttributedText:v6];
  [label setNumberOfLines:4];
}

- (void)_createLabel
{
  _callToActionFont = [(SBUICallToActionLabel *)self _callToActionFont];
  v3 = [SBUILegibilityLabel alloc];
  v4 = [MEMORY[0x1E69DD5B8] sharedInstanceForStyle:1];
  text = [(SBUICallToActionLabel *)self text];
  v6 = [(SBUILegibilityLabel *)v3 initWithSettings:v4 strength:text string:_callToActionFont font:0.25];

  fontDescriptor = [_callToActionFont fontDescriptor];
  [fontDescriptor pointSize];
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
    preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
    if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
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
      preferredContentSizeCategory = [MEMORY[0x1E69DC938] currentDevice];
      if ([(NSString *)preferredContentSizeCategory userInterfaceIdiom])
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
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice userInterfaceIdiom])
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
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen _referenceBounds];
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

- (id)_fontWithTextStyle:(id)style symbolicTraits:(unsigned int)traits withMaximumFontSizeCategory:(id)category
{
  v6 = *&traits;
  styleCopy = style;
  categoryCopy = category;
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  v10 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, categoryCopy);

  v11 = MEMORY[0x1E69DB880];
  if (v10 == NSOrderedAscending)
  {
    v13 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:styleCopy];
  }

  else
  {
    v12 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:categoryCopy];
    v13 = [v11 preferredFontDescriptorWithTextStyle:styleCopy compatibleWithTraitCollection:v12];
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
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v10[0] = [whiteColor CGColor];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  v10[1] = [clearColor CGColor];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  [v3 setColors:v6];

  [(SBUICallToActionLabel *)self _resetGradientAndLabelBefore:1];
  layer = [(SBUICallToActionLabel *)self layer];
  [layer addSublayer:v3];

  [(SBUICallToActionLabel *)self setGradientLayer:v3];
  label = [(SBUICallToActionLabel *)self label];
  layer2 = [label layer];
  [layer2 setMask:v3];
}

- (void)_preferredTextSizeChanged:(id)changed
{
  label = self->_label;
  _callToActionFont = [(SBUICallToActionLabel *)self _callToActionFont];
  [(SBUILegibilityLabel *)label setFont:_callToActionFont];

  [(SBUICallToActionLabel *)self _updateLabelTextWithLanguage:0];
}

- (void)_runGradientAnimation:(BOOL)animation
{
  if (animation)
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
    animationTimer = [(SBUICallToActionLabel *)self animationTimer];

    if (!animationTimer)
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

- (void)_runFadeAnimationForFadingOut:(BOOL)out duration:(double)duration completion:(id)completion
{
  if (out)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  completionCopy = completion;
  [(SBUICallToActionLabel *)self setState:v8];
  [(SBUICallToActionLabel *)self _invalidateGradientAnimationTimer];
  [(CAGradientLayer *)self->_gradientLayer removeAnimationForKey:@"call-to-action"];
  [(SBUICallToActionLabel *)self _addAnimationCompletionBlockIfNecessary:completionCopy];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__SBUICallToActionLabel__runFadeAnimationForFadingOut_duration_completion___block_invoke;
  v12[3] = &unk_1E789DA60;
  v12[4] = self;
  outCopy = out;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__SBUICallToActionLabel__runFadeAnimationForFadingOut_duration_completion___block_invoke_2;
  v10[3] = &unk_1E789E2F8;
  outCopy2 = out;
  v10[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v12 options:v10 animations:duration completion:0.0];
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

- (void)_resetGradientAndLabelBefore:(BOOL)before
{
  beforeCopy = before;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(SBUILegibilityLabel *)self->_label setAlpha:1.0];
  gradientLayer = self->_gradientLayer;
  if (beforeCopy)
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

- (void)_addAnimationCompletionBlockIfNecessary:(id)necessary
{
  if (necessary)
  {
    animationCompletionBlocks = self->_animationCompletionBlocks;
    v5 = [necessary copy];
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

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  v6 = SBLogDashBoardCallToActionLabel();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SBUICallToActionLabel animationDidStop:finished:];
  }

  if (finishedCopy && [(SBUICallToActionLabel *)self state]== 1)
  {
    [(SBUICallToActionLabel *)self setState:2];
    [(SBUICallToActionLabel *)self _executePostAnimationCompletionBlocks];
  }
}

@end