@interface NCNotificationListSectionRevealHintView
+ (double)minimumViewHeight;
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NCNotificationListSectionRevealHintView)initWithFrame:(CGRect)frame;
- (void)_configureRevealHintTitleIfNecessary;
- (void)_layoutRevealHintTitle;
- (void)_updateAlpha;
- (void)adjustForLegibilitySettingsChange:(id)change;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setForceRevealed:(BOOL)revealed;
- (void)setRevealPercentage:(double)percentage;
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
    _labelFont = [(NCNotificationListSectionRevealHintView *)self _labelFont];
    v7 = [v3 legibilityLabelForTitle:v5 forSuperview:self font:_labelFont];
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

- (NCNotificationListSectionRevealHintView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NCNotificationListSectionRevealHintView;
  v3 = [(NCNotificationListSectionRevealHintView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NCNotificationListSectionRevealHintView *)v3 setRevealPercentage:1.0];
    [(NCNotificationListSectionRevealHintView *)v4 setHintingAlpha:0.0];
  }

  return v4;
}

- (void)setRevealPercentage:(double)percentage
{
  if (self->_revealPercentage != percentage)
  {
    self->_revealPercentage = percentage;
    [(NCNotificationListSectionRevealHintView *)self _updateAlpha];

    [(NCNotificationListSectionRevealHintView *)self setNeedsLayout];
  }
}

- (void)setForceRevealed:(BOOL)revealed
{
  v4 = 0.0;
  if (revealed)
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

- (void)adjustForLegibilitySettingsChange:(id)change
{
  changeCopy = change;
  if (self->_legibilitySettings != changeCopy)
  {
    v7 = changeCopy;
    objc_storeStrong(&self->_legibilitySettings, change);
    revealHintTitle = [(NCNotificationListSectionRevealHintView *)self revealHintTitle];
    [revealHintTitle setLegibilitySettings:v7];

    changeCopy = v7;
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
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
  revealHintTitle = [(NCNotificationListSectionRevealHintView *)self revealHintTitle];
  [revealHintTitle setAlpha:v6];
}

@end