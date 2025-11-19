@interface NCNotificationListSectionRevealHintView
+ (double)minimumViewHeight;
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCNotificationListSectionRevealHintView)initWithFrame:(CGRect)a3;
- (void)_configureRevealHintTitleIfNecessary;
- (void)_layoutRevealHintTitle;
- (void)_updateAlpha;
- (void)adjustForLegibilitySettingsChange:(id)a3;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setForceRevealed:(BOOL)a3;
- (void)setRevealPercentage:(double)a3;
@end

@implementation NCNotificationListSectionRevealHintView

- (void)_layoutRevealHintTitle
{
  [(NCNotificationListSectionRevealHintView *)self _configureRevealHintTitleIfNecessary];
  [(NCNotificationListSectionRevealHintView *)self bounds];
  [(SBUILegibilityLabel *)self->_revealHintTitle sizeThatFits:v3, v4];
  UIRectCenteredXInRect();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NCNotificationListSectionRevealHintView *)self revealPercentage];
  [(NCNotificationListSectionRevealHintView *)self _hintTitleDisplacementForRevealPercentage:?];
  revealHintTitle = self->_revealHintTitle;

  [(SBUILegibilityLabel *)revealHintTitle setFrame:v6, v11 + 0.0, v8, v10];
}

- (void)_configureRevealHintTitleIfNecessary
{
  if (!self->_revealHintTitle)
  {
    v3 = +[NCNotificationListLegibilityLabelCache sharedInstance];
    v4 = NCUserNotificationsUIKitFrameworkBundle();
    v5 = [v4 localizedStringForKey:@"NO_NOTIFICATION_HISTORY" value:&stru_282FE84F8 table:0];
    v6 = [(NCNotificationListSectionRevealHintView *)self _labelFont];
    v7 = [v3 legibilityLabelForTitle:v5 forSuperview:self font:v6];
    revealHintTitle = self->_revealHintTitle;
    self->_revealHintTitle = v7;

    v9 = self->_revealHintTitle;
    [(NCNotificationListSectionRevealHintView *)self _alphaValueBasedOnRevealPercentage];
    [(SBUILegibilityLabel *)v9 setAlpha:?];
    [(SBUILegibilityLabel *)self->_revealHintTitle setLegibilitySettings:self->_legibilitySettings];
    v10 = self->_revealHintTitle;

    [(NCNotificationListSectionRevealHintView *)self addSubview:v10];
  }
}

- (NCNotificationListSectionRevealHintView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = NCNotificationListSectionRevealHintView;
  v3 = [(NCNotificationListSectionRevealHintView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(NCNotificationListSectionRevealHintView *)v3 setRevealPercentage:1.0];
    [(NCNotificationListSectionRevealHintView *)v4 setHintingAlpha:0.0];
  }

  return v4;
}

- (void)setRevealPercentage:(double)a3
{
  if (self->_revealPercentage != a3)
  {
    self->_revealPercentage = a3;
    [(NCNotificationListSectionRevealHintView *)self _updateAlpha];

    [(NCNotificationListSectionRevealHintView *)self setNeedsLayout];
  }
}

- (void)setForceRevealed:(BOOL)a3
{
  v4 = 0.0;
  if (a3)
  {
    v4 = 1.0;
  }

  [(NCNotificationListSectionRevealHintView *)self setHintingAlpha:v4];

  [(NCNotificationListSectionRevealHintView *)self _updateAlpha];
}

+ (double)minimumViewHeight
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v2 _scaledValueForValue:100.0];
  _NCMainScreenScale();
  UICeilToScale();

  _NCMainScreenScale();

  UICeilToScale();
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(NCNotificationListSectionRevealHintView *)self _configureRevealHintTitleIfNecessary];
  [(NCNotificationListSectionRevealHintView *)self _layoutRevealHintTitle];
  revealHintTitle = self->_revealHintTitle;

  [(SBUILegibilityLabel *)revealHintTitle sizeThatFits:width, height];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationListSectionRevealHintView;
  [(NCNotificationListSectionRevealHintView *)&v3 layoutSubviews];
  [(NCNotificationListSectionRevealHintView *)self _configureRevealHintTitleIfNecessary];
  [(NCNotificationListSectionRevealHintView *)self _layoutRevealHintTitle];
}

- (void)adjustForLegibilitySettingsChange:(id)a3
{
  v5 = a3;
  if (self->_legibilitySettings != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_legibilitySettings, a3);
    v6 = [(NCNotificationListSectionRevealHintView *)self revealHintTitle];
    [v6 setLegibilitySettings:v7];

    v5 = v7;
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  adjustsFontForContentSizeCategory = self->_adjustsFontForContentSizeCategory;
  if (adjustsFontForContentSizeCategory)
  {
    [(SBUILegibilityLabel *)self->_revealHintTitle removeFromSuperview];
    revealHintTitle = self->_revealHintTitle;
    self->_revealHintTitle = 0;

    [(NCNotificationListSectionRevealHintView *)self setNeedsLayout];
  }

  return adjustsFontForContentSizeCategory;
}

- (void)_updateAlpha
{
  [(NCNotificationListSectionRevealHintView *)self _alphaValueBasedOnRevealPercentage];
  v4 = v3;
  [(NCNotificationListSectionRevealHintView *)self hintingAlpha];
  v6 = v4 + v5;
  v7 = [(NCNotificationListSectionRevealHintView *)self revealHintTitle];
  [v7 setAlpha:v6];
}

@end