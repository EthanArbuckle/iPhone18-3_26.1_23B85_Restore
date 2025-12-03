@interface SBUIFaceIDCoachingView
- (SBUIFaceIDCoachingView)init;
- (UIMorphingLabel)_label;
- (double)stringWidth;
- (void)_resizeLabelToFirstSizeCategoryThatFits;
- (void)_updateLabelTextForCurrentCoachingConditionAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setCoachingCondition:(unint64_t)condition animated:(BOOL)animated delay:(double)delay;
- (void)setLegibilitySettings:(id)settings;
@end

@implementation SBUIFaceIDCoachingView

- (double)stringWidth
{
  _label = [(SBUIFaceIDCoachingView *)self _label];

  if (!_label)
  {
    return 0.0;
  }

  _label2 = [(SBUIFaceIDCoachingView *)self _label];
  v5 = SBUICoachingTextForSBUIFaceIDCoachingCondition(self->_coachingCondition);
  [_label2 requiredWidthForText:v5];
  v7 = v6;

  return v7;
}

- (UIMorphingLabel)_label
{
  label = self->_label;
  if (!label)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC90]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_label;
    self->_label = v5;

    [(UIMorphingLabel *)self->_label setTextAlignment:1];
    v7 = self->_label;
    v8 = SBUIUIFontForCoachingTextForContentSizeCategory(self->_currentSizeCategory);
    [(UIMorphingLabel *)v7 setFont:v8];

    [(UIMorphingLabel *)self->_label setEnableAnimation:1];
    [(UIMorphingLabel *)self->_label setSuppressLayoutSubviews:0];
    [(UIMorphingLabel *)self->_label setInitialScale:0.8];
    [(UIMorphingLabel *)self->_label setRippleDuration:0.4];
    [(UIMorphingLabel *)self->_label setGlyphScaleAnimationSpeed:10.0];
    [(SBUIFaceIDCoachingView *)self addSubview:self->_label];
    label = self->_label;
  }

  return label;
}

- (SBUIFaceIDCoachingView)init
{
  v8.receiver = self;
  v8.super_class = SBUIFaceIDCoachingView;
  v2 = [(SBUIFaceIDCoachingView *)&v8 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__contentSizeCategoryChanged name:*MEMORY[0x1E69DDC48] object:0];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
    currentSizeCategory = v2->_currentSizeCategory;
    v2->_currentSizeCategory = preferredContentSizeCategory;
  }

  return v2;
}

- (void)layoutSubviews
{
  [(SBUIFaceIDCoachingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _label = [(SBUIFaceIDCoachingView *)self _label];
  [_label setFrame:{v4, v6, v8, v10}];

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  v19 = CGRectInset(v18, -100.0, -100.0);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  _label2 = [(SBUIFaceIDCoachingView *)self _label];
  [_label2 setVisibleRect:{x, y, width, height}];
}

- (void)setCoachingCondition:(unint64_t)condition animated:(BOOL)animated delay:(double)delay
{
  if (self->_coachingCondition != condition)
  {
    animatedCopy = animated;
    self->_coachingCondition = condition;
    v8 = SBUICoachingTextForSBUIFaceIDCoachingCondition(condition);
    labelText = self->_labelText;
    self->_labelText = v8;

    [(SBUIFaceIDCoachingView *)self _resizeLabelToFirstSizeCategoryThatFits];
    if (animatedCopy)
    {
      v10 = dispatch_time(0, (delay * 1000000000.0));
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __62__SBUIFaceIDCoachingView_setCoachingCondition_animated_delay___block_invoke;
      v11[3] = &unk_1E789DA60;
      v11[4] = self;
      v12 = animatedCopy;
      dispatch_after(v10, MEMORY[0x1E69E96A0], v11);
    }

    else
    {

      [(SBUIFaceIDCoachingView *)self _updateLabelTextForCurrentCoachingConditionAnimated:0];
    }
  }
}

uint64_t __62__SBUIFaceIDCoachingView_setCoachingCondition_animated_delay___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__SBUIFaceIDCoachingView_setCoachingCondition_animated_delay___block_invoke_2;
  v2[3] = &unk_1E789DA60;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  return [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:10.0];
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:settingsCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    if (primaryColor)
    {
      label = self->_label;
      primaryColor2 = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
      [(UIMorphingLabel *)label setTextColor:primaryColor2];
    }

    else
    {
      v9 = SBLogLockScreenBiometricFaceIDCoaching();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(SBUIFaceIDCoachingView *)&self->_legibilitySettings setLegibilitySettings:v9];
      }
    }
  }
}

- (void)_updateLabelTextForCurrentCoachingConditionAnimated:(BOOL)animated
{
  _label = [(SBUIFaceIDCoachingView *)self _label];
  [_label setText:self->_labelText];
}

- (void)_resizeLabelToFirstSizeCategoryThatFits
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  _label = [(SBUIFaceIDCoachingView *)self _label];
  v6 = SBUIUIFontForCoachingTextForContentSizeCategory(preferredContentSizeCategory);
  [_label setFont:v6];

  _label2 = [(SBUIFaceIDCoachingView *)self _label];
  LOBYTE(v6) = [_label2 canFitText:self->_labelText];

  if ((v6 & 1) == 0)
  {
    v8 = *MEMORY[0x1E69DDC68];
    v9 = *MEMORY[0x1E69DDC50];
    while (1)
    {
      v10 = UIContentSizeCategoryOneSmallerThanSizeCategory(preferredContentSizeCategory);
      IsEqualToCategory = UIContentSizeCategoryIsEqualToCategory(v10, preferredContentSizeCategory);
      v12 = UIContentSizeCategoryIsInRange(v10, v8, v9);
      if (IsEqualToCategory || !v12)
      {
        break;
      }

      v13 = v10;

      _label3 = [(SBUIFaceIDCoachingView *)self _label];
      v15 = SBUIUIFontForCoachingTextForContentSizeCategory(v13);

      [_label3 setFont:v15];
      _label4 = [(SBUIFaceIDCoachingView *)self _label];
      LODWORD(v15) = [_label4 canFitText:self->_labelText];

      preferredContentSizeCategory = v13;
      if (v15)
      {
        goto LABEL_9;
      }
    }
  }

  v13 = preferredContentSizeCategory;
LABEL_9:
  currentSizeCategory = self->_currentSizeCategory;
  self->_currentSizeCategory = v13;
}

- (void)setLegibilitySettings:(id *)a1 .cold.1(id *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [*a1 sb_description];
  v5 = [*a1 primaryColor];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_fault_impl(&dword_1A9A79000, a2, OS_LOG_TYPE_FAULT, "[Legibility] Missing primary color for legibility settings: %@, color: %@", &v6, 0x16u);
}

@end