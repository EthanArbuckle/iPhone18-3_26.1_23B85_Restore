@interface NCNotificationListHeaderTitleView
- (BOOL)adjustForContentSizeCategoryChange;
- (BSUIFontProvider)_fontProvider;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)preferredContentSizeCategory;
- (id)_labelFont;
- (void)_configureTitleLabelIfNecessary;
- (void)_invalidateTitleLabel;
- (void)_layoutTitleLabel;
- (void)adjustForLegibilitySettingsChange:(id)a3;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setPrimary:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NCNotificationListHeaderTitleView

- (void)setTitle:(id)a3
{
  v9 = a3;
  v5 = [(SBUILegibilityLabel *)self->_titleLabel string];
  v6 = [(SBUILegibilityLabel *)self->_titleLabel superview];
  v7 = v6;
  if (v6 == self)
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

  objc_storeStrong(&self->_title, a3);
  [(NCNotificationListHeaderTitleView *)self _invalidateTitleLabel];
LABEL_5:
}

- (void)setPrimary:(BOOL)a3
{
  if (self->_primary != a3)
  {
    self->_primary = a3;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(NCNotificationListHeaderTitleView *)self _configureTitleLabelIfNecessary];
  [(SBUILegibilityLabel *)self->_titleLabel sizeThatFits:width, height];
  v7 = fmin(v6, height);
  v9 = fmin(v8, width);
  result.height = v7;
  result.width = v9;
  return result;
}

- (void)adjustForLegibilitySettingsChange:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(SBUILegibilityLabel *)self->_titleLabel setLegibilitySettings:v5];
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
    if (a3)
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
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  if (-[NCNotificationListHeaderTitleView adjustsFontForContentSizeCategory](self, "adjustsFontForContentSizeCategory") && (-[NCNotificationListHeaderTitleView preferredContentSizeCategory](self, "preferredContentSizeCategory"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v4 isEqualToString:v5], v5, (v6 & 1) == 0))
  {
    fontProvider = self->_fontProvider;
    self->_fontProvider = 0;

    [(NCNotificationListHeaderTitleView *)self setPreferredContentSizeCategory:v4];
    [(NCNotificationListHeaderTitleView *)self _invalidateTitleLabel];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = NCNotificationListHeaderTitleView;
  v4 = a3;
  [(NCNotificationListHeaderTitleView *)&v10 traitCollectionDidChange:v4];
  v5 = [(NCNotificationListHeaderTitleView *)self traitCollection:v10.receiver];
  v6 = [v5 legibilityWeight];
  v7 = [v4 legibilityWeight];

  if (v6 != v7)
  {
    titleLabel = self->_titleLabel;
    if (titleLabel)
    {
      v9 = [(NCNotificationListHeaderTitleView *)self _labelFont];
      [(SBUILegibilityLabel *)titleLabel setFont:v9];
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
  v3 = [(NCNotificationListHeaderTitleView *)self _fontProvider];
  v4 = v3;
  if (self->_primary)
  {
    v5 = MEMORY[0x277D76A08];
  }

  else
  {
    v5 = MEMORY[0x277D76A20];
  }

  v6 = [v3 preferredFontForTextStyle:*v5 hiFontStyle:1];

  return v6;
}

- (void)_invalidateTitleLabel
{
  v3 = [(SBUILegibilityLabel *)self->_titleLabel superview];

  if (v3 == self)
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
    v9 = [(NCNotificationListHeaderTitleView *)self _labelFont];
    v3 = +[NCNotificationListLegibilityLabelCache sharedInstance];
    v4 = [(NCNotificationListHeaderTitleView *)self title];
    v5 = [v3 legibilityLabelForTitle:v4 forSuperview:self font:v9];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v5;

    [(SBUILegibilityLabel *)self->_titleLabel setNumberOfLines:0];
    [(SBUILegibilityLabel *)self->_titleLabel setLineBreakMode:4];
    LODWORD(v7) = 1036831949;
    [(SBUILegibilityLabel *)self->_titleLabel setHyphenationFactor:v7];
    [(SBUILegibilityLabel *)self->_titleLabel setOptions:2];
    v8 = [(SBUILegibilityLabel *)self->_titleLabel superview];

    if (v8 == self)
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