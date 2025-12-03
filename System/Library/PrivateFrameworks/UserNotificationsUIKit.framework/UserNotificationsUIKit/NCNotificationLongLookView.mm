@interface NCNotificationLongLookView
- (BOOL)_lookViewTapGestureRecognizerShouldReceiveTouch:(id)touch;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)adjustsFontForContentSizeCategory;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CGAffineTransform)contentTransform;
- (CGRect)_actionsViewFrame;
- (CGRect)_mainContentViewFrame;
- (CGSize)_contentSizeThatFitsContentWithSizeExcludingActions:(CGSize)actions;
- (CGSize)_contentViewSize;
- (UITapGestureRecognizer)lookViewTapGestureRecognizer;
- (void)_configureCustomContentView;
- (void)_configureLookViewTapGestureRecognizerIfNecessary;
- (void)_configureNotificationContentViewIfNecessary;
- (void)_layoutCustomContentView;
- (void)_layoutCustomContentViewInRelationToContentView;
- (void)_layoutNotificationContentView;
- (void)_updateTopMargin;
- (void)layoutSubviews;
- (void)notificationContentView:(id)view willInteractWithURL:(id)l;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setCustomContentLocation:(unint64_t)location;
- (void)setCustomContentSize:(CGSize)size;
- (void)setDateAlpha:(double)alpha;
- (void)setHideDate:(BOOL)date;
- (void)setHidesNotificationContent:(BOOL)content;
- (void)setMaximumNumberOfPrimaryLargeTextLines:(unint64_t)lines;
- (void)setMaximumNumberOfPrimaryTextLines:(unint64_t)lines;
- (void)setMaximumNumberOfSecondaryLargeTextLines:(unint64_t)lines;
- (void)setMaximumNumberOfSecondaryTextLines:(unint64_t)lines;
- (void)setPrimarySubtitleText:(id)text;
- (void)setPrimaryText:(id)text;
- (void)setScreenCaptureProhibited:(BOOL)prohibited;
- (void)setSecondaryText:(id)text;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NCNotificationLongLookView

- (UITapGestureRecognizer)lookViewTapGestureRecognizer
{
  [(NCNotificationLongLookView *)self _configureLookViewTapGestureRecognizerIfNecessary];
  lookViewTapGestureRecognizer = self->_lookViewTapGestureRecognizer;

  return lookViewTapGestureRecognizer;
}

- (void)setCustomContentLocation:(unint64_t)location
{
  if (self->_customContentLocation != location)
  {
    self->_customContentLocation = location;
    [(NCNotificationLongLookView *)self _updateTopMargin];

    [(NCNotificationLongLookView *)self setNeedsLayout];
  }
}

- (void)setCustomContentSize:(CGSize)size
{
  v4.receiver = self;
  v4.super_class = NCNotificationLongLookView;
  [(PLExpandedPlatterView *)&v4 setCustomContentSize:size.width, size.height];
  [(NCNotificationLongLookView *)self _updateTopMargin];
}

- (void)_updateTopMargin
{
  [(PLExpandedPlatterView *)self customContentSize];
  if (fabs(v3) >= 2.22044605e-16)
  {
    customContentLocation = self->_customContentLocation;
    if (!customContentLocation)
    {
      v5 = 0;
      goto LABEL_5;
    }

    if (customContentLocation != 1)
    {
      return;
    }
  }

  v5 = 1;
LABEL_5:
  notificationContentView = self->_notificationContentView;

  [(NCNotificationContentView *)notificationContentView setUseSmallTopMargin:v5];
}

- (void)setHidesNotificationContent:(BOOL)content
{
  if (self->_hidesNotificationContent != content)
  {
    v10 = v3;
    self->_hidesNotificationContent = content;
    if (content)
    {
      [(NCNotificationContentView *)self->_notificationContentView removeFromSuperview];
      notificationContentView = self->_notificationContentView;
      self->_notificationContentView = 0;
    }

    v9 = [(PLExpandedPlatterView *)self _mainContentView:v4];
    [v9 setNeedsLayout];

    [(NCNotificationLongLookView *)self setNeedsLayout];
  }
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  primaryText = [(NCNotificationContentView *)self->_notificationContentView primaryText];
  v5 = [textCopy isEqual:primaryText];

  if ((v5 & 1) == 0)
  {
    [(NCNotificationLongLookView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationContentView *)self->_notificationContentView setPrimaryText:textCopy];
  }
}

- (void)setPrimarySubtitleText:(id)text
{
  textCopy = text;
  primarySubtitleText = [(NCNotificationContentView *)self->_notificationContentView primarySubtitleText];
  v5 = [textCopy isEqual:primarySubtitleText];

  if ((v5 & 1) == 0)
  {
    [(NCNotificationLongLookView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationContentView *)self->_notificationContentView setPrimarySubtitleText:textCopy];
  }
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  secondaryText = [(NCNotificationContentView *)self->_notificationContentView secondaryText];
  v5 = [textCopy isEqual:secondaryText];

  if ((v5 & 1) == 0)
  {
    [(NCNotificationLongLookView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationContentView *)self->_notificationContentView setSecondaryText:textCopy];
  }
}

- (void)setScreenCaptureProhibited:(BOOL)prohibited
{
  prohibitedCopy = prohibited;
  [(PLExpandedPlatterView *)self _configureMainContentViewIfNecessary];
  notificationContentView = self->_notificationContentView;

  [(NCNotificationContentView *)notificationContentView setScreenCaptureProhibited:prohibitedCopy];
}

- (void)setHideDate:(BOOL)date
{
  dateCopy = date;
  [(PLExpandedPlatterView *)self _configureMainContentViewIfNecessary];
  notificationContentView = self->_notificationContentView;

  [(NCNotificationContentView *)notificationContentView setHideDate:dateCopy];
}

- (void)setDateAlpha:(double)alpha
{
  [(PLExpandedPlatterView *)self _configureMainContentViewIfNecessary];
  notificationContentView = self->_notificationContentView;

  [(NCNotificationContentView *)notificationContentView setDateAlpha:alpha];
}

- (CGSize)_contentSizeThatFitsContentWithSizeExcludingActions:(CGSize)actions
{
  width = actions.width;
  v12.receiver = self;
  v12.super_class = NCNotificationLongLookView;
  [(PLExpandedPlatterView *)&v12 _contentSizeThatFitsContentWithSizeExcludingActions:actions.width, actions.height];
  v6 = v5;
  v8 = v7;
  if (!self->_hidesNotificationContent)
  {
    [(NCNotificationLongLookView *)self _configureNotificationContentViewIfNecessary];
    [(NCNotificationContentView *)self->_notificationContentView sizeThatFits:width, 0.0];
    v8 = v8 + v9;
  }

  v10 = v6;
  v11 = v8;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_configureCustomContentView
{
  v4.receiver = self;
  v4.super_class = NCNotificationLongLookView;
  [(PLExpandedPlatterView *)&v4 _configureCustomContentView];
  if (!self->_hidesNotificationContent && self->_customContentLocation != 1)
  {
    customContentView = [(PLExpandedPlatterView *)self customContentView];
    [customContentView _setContinuousCornerRadius:0.0];
  }
}

- (void)_configureNotificationContentViewIfNecessary
{
  if (!self->_notificationContentView && !self->_hidesNotificationContent)
  {
    [(PLExpandedPlatterView *)self _configureMainContentViewIfNecessary];
    v3 = [[NCNotificationContentView alloc] initWithStyle:[(NCNotificationLongLookView *)self lookStyle]];
    notificationContentView = self->_notificationContentView;
    self->_notificationContentView = v3;

    [(NCNotificationContentView *)self->_notificationContentView setDelegate:self];
    layer = [(NCNotificationContentView *)self->_notificationContentView layer];
    [layer setMaskedCorners:12];

    [(NCNotificationContentView *)self->_notificationContentView _setContinuousCornerRadius:13.0];
    v6 = self->_notificationContentView;
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(NCNotificationContentView *)v6 setBackgroundColor:systemBackgroundColor];

    _mainContentView = [(PLExpandedPlatterView *)self _mainContentView];
    [_mainContentView addSubview:self->_notificationContentView];
  }
}

- (void)_configureLookViewTapGestureRecognizerIfNecessary
{
  if (!self->_lookViewTapGestureRecognizer)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75B80]);
    lookViewTapGestureRecognizer = self->_lookViewTapGestureRecognizer;
    self->_lookViewTapGestureRecognizer = v3;

    [(UITapGestureRecognizer *)self->_lookViewTapGestureRecognizer setDelegate:self];
    v5 = self->_lookViewTapGestureRecognizer;

    [(NCNotificationLongLookView *)self addGestureRecognizer:v5];
  }
}

- (CGRect)_actionsViewFrame
{
  v9.receiver = self;
  v9.super_class = NCNotificationLongLookView;
  [(PLExpandedPlatterView *)&v9 _actionsViewFrame];
  if (!self->_hidesNotificationContent)
  {
    [(NCNotificationLongLookView *)self bounds];
    [(PLExpandedPlatterView *)self contentSizeForSize:v3, v4];
    [(NCNotificationContentView *)self->_notificationContentView sizeThatFits:?];
  }

  _NCMainScreenScale();
  UIRectIntegralWithScale();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_mainContentViewFrame
{
  v16.receiver = self;
  v16.super_class = NCNotificationLongLookView;
  [(PLExpandedPlatterView *)&v16 _mainContentViewFrame];
  v6 = v5;
  v8 = v7;
  v9 = v3;
  v10 = v4;
  if (!self->_hidesNotificationContent)
  {
    [(NCNotificationContentView *)self->_notificationContentView sizeThatFits:v3, v4];
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

- (CGSize)_contentViewSize
{
  v12.receiver = self;
  v12.super_class = NCNotificationLongLookView;
  [(PLExpandedPlatterView *)&v12 _contentViewSize];
  v4 = v3;
  v6 = v5;
  if (!self->_hidesNotificationContent)
  {
    [(NCNotificationLongLookView *)self bounds];
    [(PLExpandedPlatterView *)self contentSizeForSize:v7, v8];
    [(NCNotificationContentView *)self->_notificationContentView sizeThatFits:?];
    v6 = v6 + v9;
  }

  v10 = v4;
  v11 = v6;
  result.height = v11;
  result.width = v10;
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

    [(NCNotificationContentView *)self->_notificationContentView sizeThatFits:v5, v7];
    BSRectWithSize();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    if ([(PLExpandedPlatterView *)self clipsVisibleContentToBounds])
    {
      v18.origin.x = v9;
      v18.origin.y = v11;
      v18.size.width = v13;
      v18.size.height = v15;
      CGRectGetHeight(v18);
      [(NCNotificationLongLookView *)self bounds];
      [(PLExpandedPlatterView *)self _flexibleAreaSizeForBounds:?];
    }

    notificationContentView = self->_notificationContentView;
    _NCMainScreenScale();
    UIRectIntegralWithScale();

    [(NCNotificationContentView *)notificationContentView setFrame:?];
  }
}

- (void)_layoutCustomContentView
{
  v9.receiver = self;
  v9.super_class = NCNotificationLongLookView;
  [(PLExpandedPlatterView *)&v9 _layoutCustomContentView];
  if (!self->_hidesNotificationContent && self->_notificationContentView)
  {
    if ([(PLExpandedPlatterView *)self clipsVisibleContentToBounds])
    {
      [(PLExpandedPlatterView *)self _layoutMainContentViewIfNecessary];
      _mainContentView = [(PLExpandedPlatterView *)self _mainContentView];
      [_mainContentView frame];
      v5 = v4;
      v7 = v6;

      [(NCNotificationContentView *)self->_notificationContentView sizeThatFits:v5, v7];
      [(NCNotificationLongLookView *)self bounds];
      [(PLExpandedPlatterView *)self _flexibleAreaSizeForBounds:?];
      customContentView = [(PLExpandedPlatterView *)self customContentView];
      [customContentView frame];
      [customContentView setFrame:?];
    }
  }
}

- (void)_layoutCustomContentViewInRelationToContentView
{
  [(PLExpandedPlatterView *)self customContentSize];
  if (fabs(v3) >= 2.22044605e-16)
  {
    customContentLocation = self->_customContentLocation;
    if (customContentLocation == 1)
    {
      [(NCNotificationContentView *)self->_notificationContentView frame];
      v18 = v17;
      customContentView = [(PLExpandedPlatterView *)self customContentView];
      [customContentView frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      customContentView2 = [(PLExpandedPlatterView *)self customContentView];
      [customContentView2 setFrame:{v21, v18 + v23, v25, v27}];
    }

    else if (!customContentLocation)
    {
      [(NCNotificationContentView *)self->_notificationContentView frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      customContentView3 = [(PLExpandedPlatterView *)self customContentView];
      [customContentView3 frame];
      v15 = v14;

      notificationContentView = self->_notificationContentView;

      [(NCNotificationContentView *)notificationContentView setFrame:v6, v8 + v15, v10, v12];
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationLongLookView;
  [(PLExpandedPlatterView *)&v3 layoutSubviews];
  [(NCNotificationLongLookView *)self _configureNotificationContentViewIfNecessary];
  if (!self->_hidesNotificationContent)
  {
    [(NCNotificationLongLookView *)self _layoutNotificationContentView];
    [(NCNotificationLongLookView *)self _layoutCustomContentViewInRelationToContentView];
  }
}

- (BOOL)_lookViewTapGestureRecognizerShouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  view = [touchCopy view];
  _headerContentView = [(PLExpandedPlatterView *)self _headerContentView];
  if ([view isDescendantOfView:_headerContentView])
  {
    v7 = 1;
  }

  else
  {
    _mainContentView = [(PLExpandedPlatterView *)self _mainContentView];
    v7 = [view isDescendantOfView:_mainContentView];
  }

  delegate = [(PLExpandedPlatterView *)self delegate];
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [delegate notificationLongLookView:self tapGestureRecognizerShouldReceiveTouch:touchCopy];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setMaximumNumberOfPrimaryTextLines:(unint64_t)lines
{
  [(NCNotificationLongLookView *)self _configureNotificationContentViewIfNecessary];
  notificationContentView = self->_notificationContentView;

  [(NCNotificationContentView *)notificationContentView setMaximumNumberOfPrimaryTextLines:lines];
}

- (void)setMaximumNumberOfPrimaryLargeTextLines:(unint64_t)lines
{
  [(NCNotificationLongLookView *)self _configureNotificationContentViewIfNecessary];
  notificationContentView = self->_notificationContentView;

  [(NCNotificationContentView *)notificationContentView setMaximumNumberOfPrimaryLargeTextLines:lines];
}

- (void)setMaximumNumberOfSecondaryTextLines:(unint64_t)lines
{
  [(NCNotificationLongLookView *)self _configureNotificationContentViewIfNecessary];
  notificationContentView = self->_notificationContentView;

  [(NCNotificationContentView *)notificationContentView setSecondaryTextMaximumNumberOfLines:lines];
}

- (void)setMaximumNumberOfSecondaryLargeTextLines:(unint64_t)lines
{
  [(NCNotificationLongLookView *)self _configureNotificationContentViewIfNecessary];
  notificationContentView = self->_notificationContentView;

  [(NCNotificationContentView *)notificationContentView setMaximumNumberOfSecondaryLargeTextLines:lines];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  if (self->_lookViewTapGestureRecognizer != recognizer)
  {
    return 0;
  }

  selfCopy = self;
  view = [gestureRecognizer view];
  LOBYTE(selfCopy) = [view isDescendantOfView:selfCopy->_notificationContentView];

  return selfCopy;
}

- (CGAffineTransform)contentTransform
{
  v3 = MEMORY[0x277CBF2C0];
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

- (void)notificationContentView:(id)view willInteractWithURL:(id)l
{
  lCopy = l;
  delegate = [(PLExpandedPlatterView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate notificationLongLookView:self willInteractWithURL:lCopy];
  }
}

- (BOOL)adjustsFontForContentSizeCategory
{
  [(NCNotificationLongLookView *)self _configureNotificationContentViewIfNecessary];
  if ([(NCNotificationContentView *)self->_notificationContentView adjustsFontForContentSizeCategory])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = NCNotificationLongLookView;
  return [(PLExpandedPlatterView *)&v4 adjustsFontForContentSizeCategory];
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  v5.receiver = self;
  v5.super_class = NCNotificationLongLookView;
  [(PLExpandedPlatterView *)&v5 setAdjustsFontForContentSizeCategory:?];
  [(NCNotificationLongLookView *)self _configureNotificationContentViewIfNecessary];
  [(NCNotificationContentView *)self->_notificationContentView setAdjustsFontForContentSizeCategory:categoryCopy];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v6.receiver = self;
  v6.super_class = NCNotificationLongLookView;
  adjustForContentSizeCategoryChange = [(PLExpandedPlatterView *)&v6 adjustForContentSizeCategoryChange];
  v4 = [(NCNotificationContentView *)self->_notificationContentView adjustForContentSizeCategoryChange]| adjustForContentSizeCategoryChange;
  if (v4)
  {
    [(NCNotificationLongLookView *)self setNeedsLayout];
  }

  return v4 & 1;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = NCNotificationLongLookView;
  [(NCNotificationLongLookView *)&v4 traitCollectionDidChange:change];
  [(NCNotificationLongLookView *)self adjustForContentSizeCategoryChange];
}

@end