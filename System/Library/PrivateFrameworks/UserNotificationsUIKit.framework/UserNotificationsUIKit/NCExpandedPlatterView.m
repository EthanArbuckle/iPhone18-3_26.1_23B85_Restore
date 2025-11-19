@interface NCExpandedPlatterView
- (BOOL)_tapGestureRecognizerShouldReceiveTouch:(id)a3;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (CGRect)_mainContentViewFrame;
- (CGSize)_contentViewSize;
- (CGSize)contentSizeForSize:(CGSize)a3;
- (CGSize)sizeThatFitsContentWithSize:(CGSize)a3;
- (NCExpandedPlatterView)initWithFrame:(CGRect)a3;
- (UITapGestureRecognizer)defaultTapGestureRecognizer;
- (void)_configureDefaultTapGestureRecognizerIfNecessary;
- (void)_configureNotificationContentViewIfNecessary;
- (void)_layoutNotificationContentView;
- (void)_layoutSubviews;
- (void)_updateUserInterfaceStyle;
- (void)layoutSubviews;
- (void)notificationSeamlessContentView:(id)a3 requestsInteractionWithURL:(id)a4;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setBadgedIconDescription:(id)a3;
- (void)setDate:(id)a3;
- (void)setDateAllDay:(BOOL)a3;
- (void)setDateFormatStyle:(int64_t)a3;
- (void)setFooterText:(id)a3;
- (void)setHideDate:(BOOL)a3;
- (void)setHidesNotificationContent:(BOOL)a3;
- (void)setImportantAttributedText:(id)a3;
- (void)setImportantText:(id)a3;
- (void)setImportantTextVisualStylingProvider:(id)a3;
- (void)setPrimarySubtitleText:(id)a3;
- (void)setPrimaryText:(id)a3;
- (void)setScreenCaptureProhibited:(BOOL)a3;
- (void)setSecondaryText:(id)a3;
- (void)setTimeZone:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NCExpandedPlatterView

- (BOOL)adjustForContentSizeCategoryChange
{
  v6.receiver = self;
  v6.super_class = NCExpandedPlatterView;
  v3 = [(PLExpandedPlatterView *)&v6 adjustForContentSizeCategoryChange];
  v4 = [(NCNotificationSeamlessContentView *)self->_notificationContentView adjustForContentSizeCategoryChange]| v3;
  if (v4)
  {
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }

  return v4 & 1;
}

- (void)_configureNotificationContentViewIfNecessary
{
  if (!self->_notificationContentView && !self->_hidesNotificationContent)
  {
    [(PLExpandedPlatterView *)self _configureMainContentViewIfNecessary];
    v3 = objc_alloc_init(NCNotificationSeamlessContentView);
    notificationContentView = self->_notificationContentView;
    self->_notificationContentView = v3;

    [(NCNotificationSeamlessContentView *)self->_notificationContentView setDelegate:self];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setURLInteractionEnabled:1];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setTextMenusEnabled:1];
    [(NCExpandedPlatterView *)self _updateUserInterfaceStyle];
    v5 = [(PLExpandedPlatterView *)self _mainContentView];
    [v5 addSubview:self->_notificationContentView];
  }
}

- (UITapGestureRecognizer)defaultTapGestureRecognizer
{
  [(NCExpandedPlatterView *)self _configureDefaultTapGestureRecognizerIfNecessary];
  defaultTapGestureRecognizer = self->_defaultTapGestureRecognizer;

  return defaultTapGestureRecognizer;
}

- (void)layoutSubviews
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D85DD0];
  v4 = 3221225472;
  v5 = __39__NCExpandedPlatterView_layoutSubviews__block_invoke;
  v6 = &unk_27836F498;
  objc_copyWeak(&v7, &location);
  v2 = _Block_copy(&v3);
  if ([MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled] && objc_msgSend(MEMORY[0x277D75D18], "_isInRetargetableAnimationBlock"))
  {
    [MEMORY[0x277D75D18] _animateByRetargetingAnimations:v2 completion:0];
  }

  else
  {
    v2[2](v2);
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __39__NCExpandedPlatterView_layoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _layoutSubviews];
}

- (CGSize)_contentViewSize
{
  v12.receiver = self;
  v12.super_class = NCExpandedPlatterView;
  [(PLExpandedPlatterView *)&v12 _contentViewSize];
  v4 = v3;
  v6 = v5;
  if (!self->_hidesNotificationContent)
  {
    [(NCExpandedPlatterView *)self bounds];
    [(NCExpandedPlatterView *)self contentSizeForSize:v7, v8];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView sizeThatFits:?];
    v6 = v6 + v9;
  }

  v10 = v4;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_configureDefaultTapGestureRecognizerIfNecessary
{
  if (!self->_defaultTapGestureRecognizer)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75B80]);
    defaultTapGestureRecognizer = self->_defaultTapGestureRecognizer;
    self->_defaultTapGestureRecognizer = v3;

    [(UITapGestureRecognizer *)self->_defaultTapGestureRecognizer setDelegate:self];
    v5 = self->_defaultTapGestureRecognizer;

    [(NCExpandedPlatterView *)self addGestureRecognizer:v5];
  }
}

- (void)_layoutSubviews
{
  v15.receiver = self;
  v15.super_class = NCExpandedPlatterView;
  [(PLExpandedPlatterView *)&v15 layoutSubviews];
  [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
  if (!self->_hidesNotificationContent)
  {
    [(NCExpandedPlatterView *)self _layoutNotificationContentView];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(PLExpandedPlatterView *)self customContentView];
    [v11 frame];

    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    CGRectGetHeight(v16);
    v12 = [(PLExpandedPlatterView *)self customContentView];
    UIRectIntegralWithScale();
    [v12 setFrame:?];
  }

  if (self->_scrollViewPinnedToBottom)
  {
    v13 = [(PLExpandedPlatterView *)self scrollView];
    [v13 contentSize];
    [(NCExpandedPlatterView *)self frame];
    CGRectGetHeight(v17);
    UICeilToScale();
    [v13 setContentOffset:{0.0, v14}];
  }
}

- (CGRect)_mainContentViewFrame
{
  v16.receiver = self;
  v16.super_class = NCExpandedPlatterView;
  [(PLExpandedPlatterView *)&v16 _mainContentViewFrame];
  v6 = v5;
  v8 = v7;
  v9 = v3;
  v10 = v4;
  if (!self->_hidesNotificationContent)
  {
    [(NCNotificationSeamlessContentView *)self->_notificationContentView sizeThatFits:v3, v4];
    v10 = v10 + v11;
  }

  v12 = v6;
  v13 = v8;
  v14 = v9;
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_layoutNotificationContentView
{
  if (self->_notificationContentView)
  {
    [(PLExpandedPlatterView *)self _layoutMainContentViewIfNecessary];
    v3 = [(PLExpandedPlatterView *)self _mainContentView];
    [v3 frame];
    v5 = v4;
    v7 = v6;

    [(NCNotificationSeamlessContentView *)self->_notificationContentView sizeThatFits:v5, v7];
    BSRectWithSize();
    notificationContentView = self->_notificationContentView;
    UIRectIntegralWithScale();

    [(NCNotificationSeamlessContentView *)notificationContentView setFrame:?];
  }
}

- (void)setHidesNotificationContent:(BOOL)a3
{
  if (self->_hidesNotificationContent != a3)
  {
    v10 = v3;
    self->_hidesNotificationContent = a3;
    if (a3)
    {
      [(NCNotificationSeamlessContentView *)self->_notificationContentView removeFromSuperview];
      notificationContentView = self->_notificationContentView;
      self->_notificationContentView = 0;
    }

    v9 = [(PLExpandedPlatterView *)self _mainContentView:v4];
    [v9 setNeedsLayout];

    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (NCExpandedPlatterView)initWithFrame:(CGRect)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = NCExpandedPlatterView;
  v3 = [(PLExpandedPlatterView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(NCExpandedPlatterView *)v3 setBackgroundColor:v4];

    v5 = objc_opt_self();
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = [(NCExpandedPlatterView *)v3 registerForTraitChanges:v6 withTarget:v3 action:sel__updateUserInterfaceStyle];
  }

  return v3;
}

- (CGSize)sizeThatFitsContentWithSize:(CGSize)a3
{
  width = a3.width;
  v13.receiver = self;
  v13.super_class = NCExpandedPlatterView;
  [(PLExpandedPlatterView *)&v13 sizeThatFitsContentWithSize:a3.width, a3.height];
  v6 = v5;
  v8 = v7;
  notificationContentView = self->_notificationContentView;
  if (notificationContentView)
  {
    [(NCNotificationSeamlessContentView *)notificationContentView sizeThatFits:width, 1.79769313e308];
    v8 = v8 + v10;
  }

  v11 = v6;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)contentSizeForSize:(CGSize)a3
{
  width = a3.width;
  v13.receiver = self;
  v13.super_class = NCExpandedPlatterView;
  [(PLExpandedPlatterView *)&v13 contentSizeForSize:a3.width, a3.height];
  v6 = v5;
  v8 = v7;
  notificationContentView = self->_notificationContentView;
  if (notificationContentView)
  {
    [(NCNotificationSeamlessContentView *)notificationContentView sizeThatFits:width, 1.79769313e308];
    if (v8 - v10 >= 0.0)
    {
      v8 = v8 - v10;
    }

    else
    {
      v8 = 0.0;
    }
  }

  v11 = v6;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = NCExpandedPlatterView;
  [(NCExpandedPlatterView *)&v4 traitCollectionDidChange:a3];
  [(NCExpandedPlatterView *)self adjustForContentSizeCategoryChange];
}

- (void)setBadgedIconDescription:(id)a3
{
  v6 = a3;
  v4 = [(NCExpandedPlatterView *)self badgedIconDescription];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationSeamlessContentView *)self->_notificationContentView setBadgedIconDescription:v6];
      [(NCNotificationSeamlessContentView *)self->_notificationContentView setShadowsEnabled:1];
    }

    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setPrimaryText:(id)a3
{
  v6 = a3;
  v4 = [(NCExpandedPlatterView *)self primaryText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setPrimaryText:v6];
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setPrimarySubtitleText:(id)a3
{
  v6 = a3;
  v4 = [(NCExpandedPlatterView *)self primarySubtitleText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setPrimarySubtitleText:v6];
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setSecondaryText:(id)a3
{
  v6 = a3;
  v4 = [(NCExpandedPlatterView *)self secondaryText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setSecondaryText:v6];
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setImportantText:(id)a3
{
  v6 = a3;
  v4 = [(NCExpandedPlatterView *)self importantText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setImportantText:v6];
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setImportantAttributedText:(id)a3
{
  v6 = a3;
  v4 = [(NCExpandedPlatterView *)self importantAttributedText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setImportantAttributedText:v6];
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setImportantTextVisualStylingProvider:(id)a3
{
  v6 = a3;
  v4 = [(NCExpandedPlatterView *)self importantTextVisualStylingProvider];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setImportantTextVisualStylingProvider:v6];
    [(NCExpandedPlatterView *)self setNeedsDisplay];
  }
}

- (void)setFooterText:(id)a3
{
  v6 = a3;
  v4 = [(NCExpandedPlatterView *)self footerText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setFooterText:v6];
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setDate:(id)a3
{
  v6 = a3;
  v4 = [(NCExpandedPlatterView *)self date];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setDate:v6];
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setDateAllDay:(BOOL)a3
{
  v3 = a3;
  if ([(NCExpandedPlatterView *)self isDateAllDay]!= a3)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setDateAllDay:v3];

    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setTimeZone:(id)a3
{
  v6 = a3;
  v4 = [(NCExpandedPlatterView *)self timeZone];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setTimeZone:v6];
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setDateFormatStyle:(int64_t)a3
{
  if ([(NCExpandedPlatterView *)self dateFormatStyle]!= a3)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setDateFormatStyle:a3];

    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setHideDate:(BOOL)a3
{
  v3 = a3;
  if ([(NCExpandedPlatterView *)self hideDate]!= a3)
  {
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setHideDate:v3];

    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setScreenCaptureProhibited:(BOOL)a3
{
  v3 = a3;
  [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
  notificationContentView = self->_notificationContentView;

  [(NCNotificationSeamlessContentView *)notificationContentView setScreenCaptureProhibited:v3];
}

- (BOOL)adjustsFontForContentSizeCategory
{
  [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
  if ([(NCNotificationSeamlessContentView *)self->_notificationContentView adjustsFontForContentSizeCategory])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = NCExpandedPlatterView;
  return [(PLExpandedPlatterView *)&v4 adjustsFontForContentSizeCategory];
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = NCExpandedPlatterView;
  [(PLExpandedPlatterView *)&v5 setAdjustsFontForContentSizeCategory:?];
  [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
  [(NCNotificationSeamlessContentView *)self->_notificationContentView setAdjustsFontForContentSizeCategory:v3];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  if (self->_defaultTapGestureRecognizer != a3)
  {
    return 0;
  }

  v5 = self;
  v6 = [a4 view];
  LOBYTE(v5) = [v6 isDescendantOfView:v5->_notificationContentView];

  return v5;
}

- (void)notificationSeamlessContentView:(id)a3 requestsInteractionWithURL:(id)a4
{
  v6 = a4;
  v5 = [(PLExpandedPlatterView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 expandedPlatterView:self requestsInteractionWithURL:v6];
  }
}

- (void)_updateUserInterfaceStyle
{
  v3 = MEMORY[0x277D26740];
  v4 = [(NCExpandedPlatterView *)self traitCollection];
  v5 = [v3 _visualStylingProviderForRecipe:1 category:1 andUserInterfaceStyle:{objc_msgSend(v4, "userInterfaceStyle")}];

  [(NCNotificationSeamlessContentView *)self->_notificationContentView setVisualStylingProvider:v5 forCategory:1];
}

- (BOOL)_tapGestureRecognizerShouldReceiveTouch:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = [(PLExpandedPlatterView *)self _mainContentView];
  v7 = [v5 isDescendantOfView:v6];

  v8 = [(PLExpandedPlatterView *)self delegate];
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 expandedPlatterView:self tapGestureRecognizerShouldReceiveTouch:v4];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end