@interface SBFLockScreenAlternateDateLabel
+ (BOOL)showAlternateDate;
+ (id)_lunarCalendarIdentifier;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SBFLockScreenAlternateDateLabel)initWithSettings:(id)a3 strength:(double)a4 font:(id)a5;
- (UIEdgeInsets)characterOverflowInsets;
- (id)_alternateDateString;
- (void)layoutSubviews;
- (void)setDate:(id)a3;
@end

@implementation SBFLockScreenAlternateDateLabel

- (SBFLockScreenAlternateDateLabel)initWithSettings:(id)a3 strength:(double)a4 font:(id)a5
{
  v7 = a3;
  v8 = a5;
  v18.receiver = self;
  v18.super_class = SBFLockScreenAlternateDateLabel;
  v9 = [(SBFLockScreenAlternateDateLabel *)&v18 init];
  if (v9)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v10 = getSBUILegibilityLabelClass_softClass_1;
    v23 = getSBUILegibilityLabelClass_softClass_1;
    if (!getSBUILegibilityLabelClass_softClass_1)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __getSBUILegibilityLabelClass_block_invoke_1;
      v19[3] = &unk_1E807F028;
      v19[4] = &v20;
      __getSBUILegibilityLabelClass_block_invoke_1(v19);
      v10 = v21[3];
    }

    v11 = v10;
    _Block_object_dispose(&v20, 8);
    v12 = [v10 alloc];
    v13 = [v12 initWithSettings:v7 strength:0 string:v8 font:*MEMORY[0x1E69DE9E8]];
    label = v9->_label;
    v9->_label = v13;

    v15 = v9->_label;
    v16 = [MEMORY[0x1E69DC888] clearColor];
    [(SBUILegibilityLabel *)v15 setBackgroundColor:v16];

    [(SBFLockScreenAlternateDateLabel *)v9 addSubview:v9->_label];
  }

  return v9;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBFLockScreenAlternateDateLabel;
  [(SBFLockScreenAlternateDateLabel *)&v4 layoutSubviews];
  label = self->_label;
  [(SBFLockScreenAlternateDateLabel *)self bounds];
  [(SBUILegibilityLabel *)label setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(SBUILegibilityLabel *)self->_label sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (BOOL)showAlternateDate
{
  v2 = [a1 _lunarCalendarIdentifier];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)setDate:(id)a3
{
  v5 = a3;
  if (self->_date != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_date, a3);
    label = self->_label;
    v7 = [(SBFLockScreenAlternateDateLabel *)self _alternateDateString];
    [(SBUILegibilityLabel *)label setString:v7];

    v5 = v8;
  }
}

- (UIEdgeInsets)characterOverflowInsets
{
  [(SBUILegibilityLabel *)self->_label characterOverflowInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (id)_lunarCalendarIdentifier
{
  if (_lunarCalendarIdentifier_onceToken != -1)
  {
    +[SBFLockScreenAlternateDateLabel _lunarCalendarIdentifier];
  }

  v3 = _lunarCalendarIdentifier_lunarCalendarIdentifier;

  return v3;
}

void __59__SBFLockScreenAlternateDateLabel__lunarCalendarIdentifier__block_invoke()
{
  v0 = [MEMORY[0x1E6966B80] sharedPreferences];
  v1 = [v0 overlayCalendarID];
  v2 = _lunarCalendarIdentifier_lunarCalendarIdentifier;
  _lunarCalendarIdentifier_lunarCalendarIdentifier = v1;

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E6966B78];
  v4 = [MEMORY[0x1E696ADC8] mainQueue];
  v5 = [v6 addObserverForName:v3 object:0 queue:v4 usingBlock:&__block_literal_global_8_1];
}

void __59__SBFLockScreenAlternateDateLabel__lunarCalendarIdentifier__block_invoke_2()
{
  v2 = [MEMORY[0x1E6966B80] sharedPreferences];
  v0 = [v2 overlayCalendarID];
  v1 = _lunarCalendarIdentifier_lunarCalendarIdentifier;
  _lunarCalendarIdentifier_lunarCalendarIdentifier = v0;
}

- (id)_alternateDateString
{
  v2 = [objc_opt_class() _lunarCalendarIdentifier];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:v2];
    if (v3)
    {
      v4 = [MEMORY[0x1E69AAE08] localeForCalendarID:v2];
      if (v4)
      {
        v5 = objc_opt_new();
        [v5 setCalendar:v3];
        [v5 setLocale:v4];
        [v5 setDateStyle:2];
        [v5 setLocalizedDateFormatFromTemplate:@"UMMMd"];
        v6 = [MEMORY[0x1E695DF00] date];
        v7 = [v5 stringFromDate:v6];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end