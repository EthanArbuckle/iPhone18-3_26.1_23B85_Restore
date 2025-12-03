@interface SBFLockScreenDateSubtitleDateView
+ ($01BB1521EC52D44A8E7628F5261DCEC8)dateTimeLunarDateFontMetrics;
+ (double)scaledFontSize:(double)size withMaximumFontSizeCategory:(id)category;
+ (double)subtitleLabelToLunarDateLabelBaselineDifferenceY;
+ (id)dateTimeLunarDateFont;
- (CGRect)alternateDateLabelFrame;
- (CGRect)subtitleLabelFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBFLockScreenDateSubtitleDateView)initWithDate:(id)date;
- (double)_lunarDateLabelYOffsetFromDateLabel;
- (void)_overlayCalendarDidChange;
- (void)_setDate:(id)date inTimeZone:(id)zone;
- (void)_setupAlternateDateLabel;
- (void)_updateDateLabelForCompact;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAlignmentPercent:(double)percent;
- (void)setDate:(id)date;
- (void)setLegibilitySettings:(id)settings;
- (void)setStrength:(double)strength;
- (void)setUseCompactDateFormat:(BOOL)format;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SBFLockScreenDateSubtitleDateView

- (void)_updateDateLabelForCompact
{
  if (!self->_date)
  {
    v26 = &stru_1F3D19FF0;
    [(SBFLockScreenDateSubtitleView *)self setString:&stru_1F3D19FF0];
    goto LABEL_38;
  }

  currentDevice2 = 0x1E69DC000;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v6 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  v8 = __sb__runningInSpringBoard();
  v9 = v8;
  if (v8)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v10 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC50]);

      if (v10 == NSOrderedAscending)
      {
        goto LABEL_32;
      }

LABEL_10:
      v12 = 0;
      goto LABEL_33;
    }

LABEL_11:
    v13 = __sb__runningInSpringBoard();
    v14 = v13;
    if (v13)
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        v15 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC58]) == NSOrderedAscending;
        if ((v9 & 1) == 0)
        {
LABEL_31:

          if (!v15)
          {
            goto LABEL_10;
          }

          goto LABEL_32;
        }

LABEL_27:

        if (v15)
        {
          goto LABEL_32;
        }

        goto LABEL_10;
      }
    }

    else
    {
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice2 userInterfaceIdiom])
      {
        v15 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC58]) == NSOrderedAscending;
        goto LABEL_30;
      }
    }

    v16 = __sb__runningInSpringBoard();
    v17 = v16;
    if (v16)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen _referenceBounds];
    }

    BSSizeRoundForScale();
    if (v18 >= *(MEMORY[0x1E69D4380] + 40))
    {
      v19 = MEMORY[0x1E69DDC50];
    }

    else
    {
      v19 = MEMORY[0x1E69DDC58];
    }

    v15 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *v19) == NSOrderedAscending;
    if (v17)
    {
      if (v14)
      {
        goto LABEL_26;
      }
    }

    else
    {

      if (v14)
      {
LABEL_26:
        if ((v9 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      }
    }

LABEL_30:

    if ((v9 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  userInterfaceIdiom = [MEMORY[0x1E69DC938] currentDevice];
  if (![userInterfaceIdiom userInterfaceIdiom])
  {
    goto LABEL_11;
  }

  v11 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC50]);

  if (v11 != NSOrderedAscending)
  {
    goto LABEL_10;
  }

LABEL_32:
  v12 = !self->_useCompactDateFormat;
LABEL_33:
  v20 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v20 setTimeZone:self->_timeZone];
  if (v6 == 1 || v12)
  {
    [v20 setFormattingContext:2];
    v21 = @"EEEEMMMMd";
  }

  else
  {
    v21 = @"EEEMMMd";
  }

  v22 = MEMORY[0x1E696AB78];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v24 = [v22 dateFormatFromTemplate:v21 options:0 locale:currentLocale];
  [v20 setDateFormat:v24];

  v26 = [v20 stringFromDate:self->_date];

  [(SBFLockScreenDateSubtitleView *)self setString:v26];
LABEL_38:
  [(SBFLockScreenAlternateDateLabel *)self->_alternateDateLabel setDate:self->_date];
}

- (SBFLockScreenDateSubtitleDateView)initWithDate:(id)date
{
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = SBFLockScreenDateSubtitleDateView;
  v6 = [(SBFLockScreenDateSubtitleView *)&v12 initWithString:0 accessoryView:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, date);
    timeZone = v7->_timeZone;
    v7->_timeZone = 0;

    [(SBFLockScreenDateSubtitleDateView *)v7 _setupAlternateDateLabel];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__overlayCalendarDidChange name:*MEMORY[0x1E6966B78] object:0];

    mEMORY[0x1E698E670] = [MEMORY[0x1E698E670] sharedInstance];
    [mEMORY[0x1E698E670] resetFormattersIfNecessary];
  }

  return v7;
}

- (void)_overlayCalendarDidChange
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SBFLockScreenDateSubtitleDateView__overlayCalendarDidChange__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_setupAlternateDateLabel
{
  alternateDateLabel = self->_alternateDateLabel;
  if (alternateDateLabel)
  {
    [(SBFLockScreenAlternateDateLabel *)alternateDateLabel removeFromSuperview];
    v4 = self->_alternateDateLabel;
    self->_alternateDateLabel = 0;
  }

  if (+[SBFLockScreenAlternateDateLabel showAlternateDate])
  {
    v5 = [SBFLockScreenAlternateDateLabel alloc];
    legibilitySettings = [(SBFLockScreenDateSubtitleView *)self legibilitySettings];
    v7 = *MEMORY[0x1E69DE9E8];
    v8 = +[SBFLockScreenDateSubtitleDateView dateTimeLunarDateFont];
    v9 = [(SBFLockScreenAlternateDateLabel *)v5 initWithSettings:legibilitySettings strength:v8 font:v7];
    v10 = self->_alternateDateLabel;
    self->_alternateDateLabel = v9;

    [(SBFLockScreenAlternateDateLabel *)self->_alternateDateLabel setDate:self->_date];
    v11 = self->_alternateDateLabel;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SBFLockScreenAlternateDateLabel *)v11 setBackgroundColor:clearColor];

    v13 = self->_alternateDateLabel;

    [(SBFLockScreenDateSubtitleDateView *)self addSubview:v13];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBFLockScreenDateSubtitleDateView;
  [(SBFLockScreenDateSubtitleView *)&v4 dealloc];
}

- (void)setDate:(id)date
{
  v4 = MEMORY[0x1E695DFE8];
  dateCopy = date;
  systemTimeZone = [v4 systemTimeZone];
  [(SBFLockScreenDateSubtitleDateView *)self _setDate:dateCopy inTimeZone:systemTimeZone];
}

- (void)_setDate:(id)date inTimeZone:(id)zone
{
  dateCopy = date;
  objc_storeStrong(&self->_timeZone, zone);
  zoneCopy = zone;
  date = self->_date;
  self->_date = dateCopy;

  [(SBFLockScreenDateSubtitleDateView *)self _updateDateLabelForCompact];
}

- (void)setAlignmentPercent:(double)percent
{
  if (self->_alignmentPercent != percent)
  {
    self->_alignmentPercent = percent;
    [(SBFLockScreenDateSubtitleDateView *)self setNeedsLayout];
  }
}

- (void)setUseCompactDateFormat:(BOOL)format
{
  if (self->_useCompactDateFormat != format)
  {
    self->_useCompactDateFormat = format;
    [(SBFLockScreenDateSubtitleDateView *)self _updateDateLabelForCompact];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  legibilitySettings = [(SBFLockScreenDateSubtitleView *)self legibilitySettings];
  v6 = [legibilitySettings sb_isEqualToLegibilitySettings:settingsCopy];

  if ((v6 & 1) == 0)
  {
    [(SBFLockScreenAlternateDateLabel *)self->_alternateDateLabel setLegibilitySettings:settingsCopy];
    v7.receiver = self;
    v7.super_class = SBFLockScreenDateSubtitleDateView;
    [(SBFLockScreenDateSubtitleView *)&v7 setLegibilitySettings:settingsCopy];
  }
}

- (void)setStrength:(double)strength
{
  [(SBFLockScreenAlternateDateLabel *)self->_alternateDateLabel setStrength:?];
  v5.receiver = self;
  v5.super_class = SBFLockScreenDateSubtitleDateView;
  [(SBFLockScreenDateSubtitleView *)&v5 setStrength:strength];
}

+ (id)dateTimeLunarDateFont
{
  if (dateTimeLunarDateFont_onceToken != -1)
  {
    +[SBFLockScreenDateSubtitleDateView dateTimeLunarDateFont];
  }

  if (dateTimeLunarDateFont_dateTimeLunarDateFont)
  {
    goto LABEL_29;
  }

  v4 = MEMORY[0x1E69DB878];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 16.0;
  }

  else
  {
    v7 = 15.0;
  }

  currentDevice2 = __sb__runningInSpringBoard();
  if (currentDevice2)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
LABEL_24:
      v12 = MEMORY[0x1E69DDC38];
      goto LABEL_25;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom])
    {
      v9 = 0;
      v10 = 0;
      v11 = 1;
      goto LABEL_24;
    }
  }

  v11 = currentDevice2 ^ 1;
  mainScreen = __sb__runningInSpringBoard();
  if (mainScreen)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v9 = 0;
      v10 = 0;
      v12 = MEMORY[0x1E69DDC40];
      goto LABEL_25;
    }
  }

  else
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice2 userInterfaceIdiom])
    {
      v10 = 0;
      v12 = MEMORY[0x1E69DDC40];
      v9 = 1;
      goto LABEL_25;
    }
  }

  v9 = mainScreen ^ 1;
  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
  }

  v10 = v13 ^ 1;
  BSSizeRoundForScale();
  if (v14 >= *(MEMORY[0x1E69D4380] + 40))
  {
    goto LABEL_24;
  }

  v12 = MEMORY[0x1E69DDC40];
LABEL_25:
  [self scaledFontSize:*v12 withMaximumFontSizeCategory:v7];
  v15 = [v4 systemFontOfSize:?];
  v16 = dateTimeLunarDateFont_dateTimeLunarDateFont;
  dateTimeLunarDateFont_dateTimeLunarDateFont = v15;

  if (v10)
  {

    if (!v9)
    {
      goto LABEL_27;
    }
  }

  else if (!v9)
  {
LABEL_27:
    if (!v11)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v11)
  {
LABEL_28:
  }

LABEL_29:
  v17 = dateTimeLunarDateFont_dateTimeLunarDateFont;

  return v17;
}

void __58__SBFLockScreenDateSubtitleDateView_dateTimeLunarDateFont__block_invoke()
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DDC48];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_17];
}

void __58__SBFLockScreenDateSubtitleDateView_dateTimeLunarDateFont__block_invoke_2()
{
  v0 = dateTimeLunarDateFont_dateTimeLunarDateFont;
  dateTimeLunarDateFont_dateTimeLunarDateFont = 0;
}

+ ($01BB1521EC52D44A8E7628F5261DCEC8)dateTimeLunarDateFontMetrics
{
  if (dateTimeLunarDateFontMetrics_onceToken != -1)
  {
    +[SBFLockScreenDateSubtitleDateView dateTimeLunarDateFontMetrics];
  }

  v3 = *&dateTimeLunarDateFontMetrics_dateTimeLunarDateFontMetrics;
  if (*&dateTimeLunarDateFontMetrics_dateTimeLunarDateFontMetrics == 0.0)
  {
    dateTimeLunarDateFont = [self dateTimeLunarDateFont];
    [dateTimeLunarDateFont ascender];
    v6 = v5;
    [dateTimeLunarDateFont descender];
    v8 = v7;
    [dateTimeLunarDateFont _bodyLeading];
    v10 = v9;
    [dateTimeLunarDateFont capHeight];
    *&dateTimeLunarDateFontMetrics_dateTimeLunarDateFontMetrics = v6;
    *(&dateTimeLunarDateFontMetrics_dateTimeLunarDateFontMetrics + 1) = v8;
    qword_1EBDBC090 = v10;
    qword_1EBDBC098 = v11;

    v3 = *&dateTimeLunarDateFontMetrics_dateTimeLunarDateFontMetrics;
  }

  v12 = *(&dateTimeLunarDateFontMetrics_dateTimeLunarDateFontMetrics + 1);
  v13 = *&qword_1EBDBC090;
  v14 = *&qword_1EBDBC098;
  result.var3 = v14;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v3;
  return result;
}

void __65__SBFLockScreenDateSubtitleDateView_dateTimeLunarDateFontMetrics__block_invoke()
{
  dateTimeLunarDateFontMetrics_dateTimeLunarDateFontMetrics = SBFFontMetricsZero;
  *&qword_1EBDBC090 = unk_1BEAD5BD8;
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DDC48];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_24];
}

double __65__SBFLockScreenDateSubtitleDateView_dateTimeLunarDateFontMetrics__block_invoke_2()
{
  result = *&SBFFontMetricsZero;
  dateTimeLunarDateFontMetrics_dateTimeLunarDateFontMetrics = SBFFontMetricsZero;
  *&qword_1EBDBC090 = unk_1BEAD5BD8;
  return result;
}

+ (double)subtitleLabelToLunarDateLabelBaselineDifferenceY
{
  if (subtitleLabelToLunarDateLabelBaselineDifferenceY_onceToken != -1)
  {
    +[SBFLockScreenDateSubtitleDateView subtitleLabelToLunarDateLabelBaselineDifferenceY];
  }

  result = *&subtitleLabelToLunarDateLabelBaselineDifferenceY_subtitleLabelToLunarDateLabelBaselineDifferenceY;
  if (*&subtitleLabelToLunarDateLabelBaselineDifferenceY_subtitleLabelToLunarDateLabelBaselineDifferenceY == 0.0)
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v6 = 6.0;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
LABEL_19:
      +[SBFLockScreenDateSubtitleDateView dateTimeLunarDateFontMetrics];
      result = v6 + v12;
      *&subtitleLabelToLunarDateLabelBaselineDifferenceY_subtitleLabelToLunarDateLabelBaselineDifferenceY = v6 + v12;
      return result;
    }

    v7 = __sb__runningInSpringBoard();
    v8 = v7;
    if (v7)
    {
      v6 = 7.0;
      if (SBFEffectiveDeviceClass() != 2)
      {
        goto LABEL_19;
      }
    }

    else
    {
      userInterfaceIdiom = [MEMORY[0x1E69DC938] currentDevice];
      v6 = 7.0;
      if ([userInterfaceIdiom userInterfaceIdiom] != 1)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    v9 = __sb__runningInSpringBoard();
    v10 = v9;
    if (v9)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen _referenceBounds];
    }

    BSSizeRoundForScale();
    if (v11 < *(MEMORY[0x1E69D4380] + 280))
    {
      v6 = 7.0;
    }

    else
    {
      v6 = 11.0;
    }

    if ((v10 & 1) == 0)
    {
    }

    if (v8)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  return result;
}

void __85__SBFLockScreenDateSubtitleDateView_subtitleLabelToLunarDateLabelBaselineDifferenceY__block_invoke()
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DDC48];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_28];
}

+ (double)scaledFontSize:(double)size withMaximumFontSizeCategory:(id)category
{
  categoryCopy = category;
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  v7 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, categoryCopy);

  v8 = MEMORY[0x1E69DB878];
  v9 = *MEMORY[0x1E69DDCF8];
  if (v7 == NSOrderedAscending)
  {
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  }

  else
  {
    v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:categoryCopy];
    v11 = [v8 preferredFontForTextStyle:v9 compatibleWithTraitCollection:v10];
  }

  [v11 _scaledValueForValue:size];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  UIRoundToScreenScale();
  v14 = v13;

  return v14;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBFLockScreenDateSubtitleDateView;
  [(SBFLockScreenDateSubtitleView *)&v4 layoutSubviews];
  alternateDateLabel = self->_alternateDateLabel;
  if (alternateDateLabel)
  {
    [(SBFLockScreenDateSubtitleDateView *)self alternateDateLabelFrame];
    [(SBFLockScreenAlternateDateLabel *)alternateDateLabel setFrame:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v17.receiver = self;
  v17.super_class = SBFLockScreenDateSubtitleDateView;
  [(SBFLockScreenDateSubtitleView *)&v17 sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  alternateDateLabel = self->_alternateDateLabel;
  if (alternateDateLabel)
  {
    [(SBFLockScreenAlternateDateLabel *)alternateDateLabel sizeThatFits:width, height];
    v12 = v11;
    v7 = fmax(v7, v13);
    [(SBFLockScreenDateSubtitleDateView *)self _lunarDateLabelYOffsetFromDateLabel];
    v9 = v9 + v12 + v14 - v9;
  }

  v15 = v7;
  v16 = v9;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGRect)subtitleLabelFrame
{
  v18.receiver = self;
  v18.super_class = SBFLockScreenDateSubtitleDateView;
  [(SBFLockScreenDateSubtitleView *)&v18 subtitleLabelFrame];
  v6 = v5;
  v8 = v7;
  if (self->_alternateDateLabel)
  {
    [(SBFLockScreenDateSubtitleDateView *)self bounds];
    v10 = (self->_alignmentPercent + 1.0) * (v9 - v6) * 0.5;
    ShouldRoundFramesForAlignmentPercent = _SBFLockScreenDateViewShouldRoundFramesForAlignmentPercent();
    v4 = 0.0;
    if (ShouldRoundFramesForAlignmentPercent)
    {
      SBFMainScreenScale();
      BSRectRoundForScale();
      v10 = v12;
      v6 = v13;
      v8 = v14;
    }
  }

  else
  {
    v10 = v3;
  }

  v15 = v10;
  v16 = v6;
  v17 = v8;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v4;
  result.origin.x = v15;
  return result;
}

- (CGRect)alternateDateLabelFrame
{
  [(SBFLockScreenAlternateDateLabel *)self->_alternateDateLabel sizeToFit];
  [(SBFLockScreenDateSubtitleDateView *)self bounds];
  v4 = v3;
  [(SBFLockScreenAlternateDateLabel *)self->_alternateDateLabel frame];
  v6 = v5;
  v8 = v7;
  v9 = (self->_alignmentPercent + 1.0) * (v4 - v5) * 0.5;
  [(SBFLockScreenDateSubtitleDateView *)self subtitleLabelFrame];
  v11 = v10;
  [(SBFLockScreenDateSubtitleDateView *)self _lunarDateLabelYOffsetFromDateLabel];
  v13 = v12 + v11;
  if (_SBFLockScreenDateViewShouldRoundFramesForAlignmentPercent())
  {
    SBFMainScreenScale();
    BSRectRoundForScale();
    v9 = v14;
    v13 = v15;
    v6 = v16;
    v8 = v17;
  }

  v18 = v9;
  v19 = v13;
  v20 = v6;
  v21 = v8;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (double)_lunarDateLabelYOffsetFromDateLabel
{
  +[SBFLockScreenDateSubtitleDateView subtitleLabelToLunarDateLabelBaselineDifferenceY];
  v4 = v3;
  +[SBFLockScreenDateSubtitleDateView dateTimeLunarDateFontMetrics];
  v6 = v4 - v5;
  +[SBFLockScreenDateSubtitleView labelFontMetrics];
  v8 = v6 + v7;
  [(SBFLockScreenDateSubtitleView *)self subtitleLabelCharacterOverflowInsets];
  v10 = v8 - v9;
  [(SBFLockScreenAlternateDateLabel *)self->_alternateDateLabel characterOverflowInsets];
  return v10 - v11;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = SBFLockScreenDateSubtitleDateView;
  [(SBFLockScreenDateSubtitleDateView *)&v10 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(SBFLockScreenDateSubtitleDateView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__SBFLockScreenDateSubtitleDateView_traitCollectionDidChange___block_invoke;
      block[3] = &unk_1E807F178;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __62__SBFLockScreenDateSubtitleDateView_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 464);
  v2 = +[SBFLockScreenDateSubtitleDateView dateTimeLunarDateFont];
  [v1 setFont:v2];
}

@end