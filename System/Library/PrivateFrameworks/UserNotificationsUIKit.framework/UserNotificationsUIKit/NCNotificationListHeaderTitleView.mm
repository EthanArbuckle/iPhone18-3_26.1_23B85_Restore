@interface NCNotificationListHeaderTitleView
- (BOOL)adjustForContentSizeCategoryChange;
- (BSUIFontProvider)_fontProvider;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)preferredContentSizeCategory;
- (id)_labelFont;
- (void)_configureTitleLabelIfNecessary;
- (void)_invalidateTitleLabel;
- (void)_layoutTitleLabel;
- (void)adjustForLegibilitySettingsChange:(id)change;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setPrimary:(BOOL)primary;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NCNotificationListHeaderTitleView

- (void)setTitle:(id)title
{
  titleCopy = title;
  string = [(SBUILegibilityLabel *)self->_titleLabel string];
  superview = [(SBUILegibilityLabel *)self->_titleLabel superview];
  v7 = superview;
  if (superview == self)
  {
    v8 = BSEqualStrings();

    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
  }

  objc_storeStrong(&self->_title, title);
  [(NCNotificationListHeaderTitleView *)self _invalidateTitleLabel];
LABEL_5:
}

- (void)setPrimary:(BOOL)primary
{
  if (self->_primary != primary)
  {
    self->_primary = primary;
    [(NCNotificationListHeaderTitleView *)self _invalidateTitleLabel];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationListHeaderTitleView;
  [(NCNotificationListHeaderTitleView *)&v3 layoutSubviews];
  [(NCNotificationListHeaderTitleView *)self _configureTitleLabelIfNecessary];
  [(NCNotificationListHeaderTitleView *)self _layoutTitleLabel];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(NCNotificationListHeaderTitleView *)self _configureTitleLabelIfNecessary];
  [(SBUILegibilityLabel *)self->_titleLabel sizeThatFits:width, height];
  v7 = fmin(v6, height);
  v9 = fmin(v8, width);
  result.height = v7;
  result.width = v9;
  return result;
}

- (void)adjustForLegibilitySettingsChange:(id)change
{
  changeCopy = change;
  if (([changeCopy isEqual:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, change);
    [(SBUILegibilityLabel *)self->_titleLabel setLegibilitySettings:changeCopy];
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    if (category)
    {
      [(NCNotificationListHeaderTitleView *)self adjustForContentSizeCategoryChange];
    }
  }
}

- (NSString)preferredContentSizeCategory
{
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  if (!preferredContentSizeCategory)
  {
    objc_storeStrong(&self->_preferredContentSizeCategory, *MEMORY[0x277D76860]);
    preferredContentSizeCategory = self->_preferredContentSizeCategory;
  }

  return preferredContentSizeCategory;
}

- (BOOL)adjustForContentSizeCategoryChange
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

  if (-[NCNotificationListHeaderTitleView adjustsFontForContentSizeCategory](self, "adjustsFontForContentSizeCategory") && (-[NCNotificationListHeaderTitleView preferredContentSizeCategory](self, "preferredContentSizeCategory"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [preferredContentSizeCategory isEqualToString:v5], v5, (v6 & 1) == 0))
  {
    fontProvider = self->_fontProvider;
    self->_fontProvider = 0;

    [(NCNotificationListHeaderTitleView *)self setPreferredContentSizeCategory:preferredContentSizeCategory];
    [(NCNotificationListHeaderTitleView *)self _invalidateTitleLabel];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = NCNotificationListHeaderTitleView;
  changeCopy = change;
  [(NCNotificationListHeaderTitleView *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(NCNotificationListHeaderTitleView *)self traitCollection:v10.receiver];
  legibilityWeight = [v5 legibilityWeight];
  legibilityWeight2 = [changeCopy legibilityWeight];

  if (legibilityWeight != legibilityWeight2)
  {
    titleLabel = self->_titleLabel;
    if (titleLabel)
    {
      _labelFont = [(NCNotificationListHeaderTitleView *)self _labelFont];
      [(SBUILegibilityLabel *)titleLabel setFont:_labelFont];
    }

    [(NCNotificationListHeaderTitleView *)self setNeedsLayout];
  }
}

- (BSUIFontProvider)_fontProvider
{
  if (!self->_fontProvider)
  {
    if ([(NCNotificationListHeaderTitleView *)self adjustsFontForContentSizeCategory])
    {
      [MEMORY[0x277CF0D60] preferredFontProvider];
    }

    else
    {
      [MEMORY[0x277CF0D60] defaultFontProvider];
    }
    v3 = ;
    fontProvider = self->_fontProvider;
    self->_fontProvider = v3;
  }

  v5 = self->_fontProvider;

  return v5;
}

- (id)_labelFont
{
  _fontProvider = [(NCNotificationListHeaderTitleView *)self _fontProvider];
  v4 = _fontProvider;
  if (self->_primary)
  {
    v5 = MEMORY[0x277D76A08];
  }

  else
  {
    v5 = MEMORY[0x277D76A20];
  }

  v6 = [_fontProvider preferredFontForTextStyle:*v5 hiFontStyle:1];

  return v6;
}

- (void)_invalidateTitleLabel
{
  superview = [(SBUILegibilityLabel *)self->_titleLabel superview];

  if (superview == self)
  {
    [(SBUILegibilityLabel *)self->_titleLabel removeFromSuperview];
  }

  titleLabel = self->_titleLabel;
  self->_titleLabel = 0;

  [(NCNotificationListHeaderTitleView *)self setNeedsLayout];
}

- (void)_configureTitleLabelIfNecessary
{
  if (!self->_titleLabel && self->_title)
  {
    _labelFont = [(NCNotificationListHeaderTitleView *)self _labelFont];
    v3 = +[NCNotificationListLegibilityLabelCache sharedInstance];
    title = [(NCNotificationListHeaderTitleView *)self title];
    v5 = [v3 legibilityLabelForTitle:title forSuperview:self font:_labelFont];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v5;

    [(SBUILegibilityLabel *)self->_titleLabel setNumberOfLines:0];
    [(SBUILegibilityLabel *)self->_titleLabel setLineBreakMode:4];
    LODWORD(v7) = 1036831949;
    [(SBUILegibilityLabel *)self->_titleLabel setHyphenationFactor:v7];
    [(SBUILegibilityLabel *)self->_titleLabel setOptions:2];
    superview = [(SBUILegibilityLabel *)self->_titleLabel superview];

    if (superview == self)
    {
      [(SBUILegibilityLabel *)self->_titleLabel removeFromSuperview];
    }

    [(SBUILegibilityLabel *)self->_titleLabel setLegibilitySettings:self->_legibilitySettings];
    [(NCNotificationListHeaderTitleView *)self addSubview:self->_titleLabel];
  }
}

- (void)_layoutTitleLabel
{
  titleLabel = self->_titleLabel;
  [(NCNotificationListHeaderTitleView *)self bounds];

  [(SBUILegibilityLabel *)titleLabel setFrame:?];
}

@end