@interface NCExpandedPlatterView
- (BOOL)_tapGestureRecognizerShouldReceiveTouch:(id)touch;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CGRect)_mainContentViewFrame;
- (CGSize)_contentViewSize;
- (CGSize)contentSizeForSize:(CGSize)size;
- (CGSize)sizeThatFitsContentWithSize:(CGSize)size;
- (NCExpandedPlatterView)initWithFrame:(CGRect)frame;
- (UITapGestureRecognizer)defaultTapGestureRecognizer;
- (void)_configureDefaultTapGestureRecognizerIfNecessary;
- (void)_configureNotificationContentViewIfNecessary;
- (void)_layoutNotificationContentView;
- (void)_layoutSubviews;
- (void)_updateUserInterfaceStyle;
- (void)layoutSubviews;
- (void)notificationSeamlessContentView:(id)view requestsInteractionWithURL:(id)l;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setBadgedIconDescription:(id)description;
- (void)setDate:(id)date;
- (void)setDateAllDay:(BOOL)day;
- (void)setDateFormatStyle:(int64_t)style;
- (void)setFooterText:(id)text;
- (void)setHideDate:(BOOL)date;
- (void)setHidesNotificationContent:(BOOL)content;
- (void)setImportantAttributedText:(id)text;
- (void)setImportantText:(id)text;
- (void)setImportantTextVisualStylingProvider:(id)provider;
- (void)setPrimarySubtitleText:(id)text;
- (void)setPrimaryText:(id)text;
- (void)setScreenCaptureProhibited:(BOOL)prohibited;
- (void)setSecondaryText:(id)text;
- (void)setTimeZone:(id)zone;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NCExpandedPlatterView

- (BOOL)adjustForContentSizeCategoryChange
{
  v6.receiver = self;
  v6.super_class = NCExpandedPlatterView;
  adjustForContentSizeCategoryChange = [(PLExpandedPlatterView *)&v6 adjustForContentSizeCategoryChange];
  v4 = [(NCNotificationSeamlessContentView *)self->_notificationContentView adjustForContentSizeCategoryChange]| adjustForContentSizeCategoryChange;
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
    _mainContentView = [(PLExpandedPlatterView *)self _mainContentView];
    [_mainContentView addSubview:self->_notificationContentView];
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
    customContentView = [(PLExpandedPlatterView *)self customContentView];
    [customContentView frame];

    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    CGRectGetHeight(v16);
    customContentView2 = [(PLExpandedPlatterView *)self customContentView];
    UIRectIntegralWithScale();
    [customContentView2 setFrame:?];
  }

  if (self->_scrollViewPinnedToBottom)
  {
    scrollView = [(PLExpandedPlatterView *)self scrollView];
    [scrollView contentSize];
    [(NCExpandedPlatterView *)self frame];
    CGRectGetHeight(v17);
    UICeilToScale();
    [scrollView setContentOffset:{0.0, v14}];
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
    _mainContentView = [(PLExpandedPlatterView *)self _mainContentView];
    [_mainContentView frame];
    v5 = v4;
    v7 = v6;

    [(NCNotificationSeamlessContentView *)self->_notificationContentView sizeThatFits:v5, v7];
    BSRectWithSize();
    notificationContentView = self->_notificationContentView;
    UIRectIntegralWithScale();

    [(NCNotificationSeamlessContentView *)notificationContentView setFrame:?];
  }
}

- (void)setHidesNotificationContent:(BOOL)content
{
  if (self->_hidesNotificationContent != content)
  {
    v10 = v3;
    self->_hidesNotificationContent = content;
    if (content)
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

- (NCExpandedPlatterView)initWithFrame:(CGRect)frame
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = NCExpandedPlatterView;
  v3 = [(PLExpandedPlatterView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(NCExpandedPlatterView *)v3 setBackgroundColor:systemBackgroundColor];

    v5 = objc_opt_self();
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = [(NCExpandedPlatterView *)v3 registerForTraitChanges:v6 withTarget:v3 action:sel__updateUserInterfaceStyle];
  }

  return v3;
}

- (CGSize)sizeThatFitsContentWithSize:(CGSize)size
{
  width = size.width;
  v13.receiver = self;
  v13.super_class = NCExpandedPlatterView;
  [(PLExpandedPlatterView *)&v13 sizeThatFitsContentWithSize:size.width, size.height];
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

- (CGSize)contentSizeForSize:(CGSize)size
{
  width = size.width;
  v13.receiver = self;
  v13.super_class = NCExpandedPlatterView;
  [(PLExpandedPlatterView *)&v13 contentSizeForSize:size.width, size.height];
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

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = NCExpandedPlatterView;
  [(NCExpandedPlatterView *)&v4 traitCollectionDidChange:change];
  [(NCExpandedPlatterView *)self adjustForContentSizeCategoryChange];
}

- (void)setBadgedIconDescription:(id)description
{
  descriptionCopy = description;
  badgedIconDescription = [(NCExpandedPlatterView *)self badgedIconDescription];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    if (objc_opt_respondsToSelector())
    {
      [(NCNotificationSeamlessContentView *)self->_notificationContentView setBadgedIconDescription:descriptionCopy];
      [(NCNotificationSeamlessContentView *)self->_notificationContentView setShadowsEnabled:1];
    }

    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  primaryText = [(NCExpandedPlatterView *)self primaryText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setPrimaryText:textCopy];
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setPrimarySubtitleText:(id)text
{
  textCopy = text;
  primarySubtitleText = [(NCExpandedPlatterView *)self primarySubtitleText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setPrimarySubtitleText:textCopy];
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  secondaryText = [(NCExpandedPlatterView *)self secondaryText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setSecondaryText:textCopy];
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setImportantText:(id)text
{
  textCopy = text;
  importantText = [(NCExpandedPlatterView *)self importantText];
  v5 = BSEqualStrings();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setImportantText:textCopy];
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setImportantAttributedText:(id)text
{
  textCopy = text;
  importantAttributedText = [(NCExpandedPlatterView *)self importantAttributedText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setImportantAttributedText:textCopy];
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setImportantTextVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  importantTextVisualStylingProvider = [(NCExpandedPlatterView *)self importantTextVisualStylingProvider];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setImportantTextVisualStylingProvider:providerCopy];
    [(NCExpandedPlatterView *)self setNeedsDisplay];
  }
}

- (void)setFooterText:(id)text
{
  textCopy = text;
  footerText = [(NCExpandedPlatterView *)self footerText];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setFooterText:textCopy];
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setDate:(id)date
{
  dateCopy = date;
  date = [(NCExpandedPlatterView *)self date];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setDate:dateCopy];
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setDateAllDay:(BOOL)day
{
  dayCopy = day;
  if ([(NCExpandedPlatterView *)self isDateAllDay]!= day)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setDateAllDay:dayCopy];

    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  timeZone = [(NCExpandedPlatterView *)self timeZone];
  v5 = BSEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setTimeZone:zoneCopy];
    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setDateFormatStyle:(int64_t)style
{
  if ([(NCExpandedPlatterView *)self dateFormatStyle]!= style)
  {
    [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setDateFormatStyle:style];

    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setHideDate:(BOOL)date
{
  dateCopy = date;
  if ([(NCExpandedPlatterView *)self hideDate]!= date)
  {
    [(NCNotificationSeamlessContentView *)self->_notificationContentView setHideDate:dateCopy];

    [(NCExpandedPlatterView *)self setNeedsLayout];
  }
}

- (void)setScreenCaptureProhibited:(BOOL)prohibited
{
  prohibitedCopy = prohibited;
  [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
  notificationContentView = self->_notificationContentView;

  [(NCNotificationSeamlessContentView *)notificationContentView setScreenCaptureProhibited:prohibitedCopy];
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

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  v5.receiver = self;
  v5.super_class = NCExpandedPlatterView;
  [(PLExpandedPlatterView *)&v5 setAdjustsFontForContentSizeCategory:?];
  [(NCExpandedPlatterView *)self _configureNotificationContentViewIfNecessary];
  [(NCNotificationSeamlessContentView *)self->_notificationContentView setAdjustsFontForContentSizeCategory:categoryCopy];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  if (self->_defaultTapGestureRecognizer != recognizer)
  {
    return 0;
  }

  selfCopy = self;
  view = [gestureRecognizer view];
  LOBYTE(selfCopy) = [view isDescendantOfView:selfCopy->_notificationContentView];

  return selfCopy;
}

- (void)notificationSeamlessContentView:(id)view requestsInteractionWithURL:(id)l
{
  lCopy = l;
  delegate = [(PLExpandedPlatterView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate expandedPlatterView:self requestsInteractionWithURL:lCopy];
  }
}

- (void)_updateUserInterfaceStyle
{
  v3 = MEMORY[0x277D26740];
  traitCollection = [(NCExpandedPlatterView *)self traitCollection];
  v5 = [v3 _visualStylingProviderForRecipe:1 category:1 andUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  [(NCNotificationSeamlessContentView *)self->_notificationContentView setVisualStylingProvider:v5 forCategory:1];
}

- (BOOL)_tapGestureRecognizerShouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  view = [touchCopy view];
  _mainContentView = [(PLExpandedPlatterView *)self _mainContentView];
  v7 = [view isDescendantOfView:_mainContentView];

  delegate = [(PLExpandedPlatterView *)self delegate];
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [delegate expandedPlatterView:self tapGestureRecognizerShouldReceiveTouch:touchCopy];
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