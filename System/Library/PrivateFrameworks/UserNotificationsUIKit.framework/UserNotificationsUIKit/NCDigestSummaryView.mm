@interface NCDigestSummaryView
+ (id)_preferredFont:(BOOL)font textStyle:(id)style weight:(double)weight additionalTraits:(unsigned int)traits;
- (BOOL)adjustForContentSizeCategoryChange;
- (CGRect)_layoutBoundsForTitleLabelInBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)_fontProvider;
- (id)_newSummaryContentViewForSummaryContentProvider:(id)provider;
- (id)_timeStampLabelFont;
- (id)_timeStampLabelPreferredFont;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)_configureSummaryContentView:(id)view withSummaryContentProvider:(id)provider;
- (void)_configureTimeStampLabel;
- (void)_configureTimeStampLabelIfNecessary;
- (void)_recycleTimeStampLabel;
- (void)_setFontProvider:(id)provider;
- (void)_tearDownTimeStampLabel;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesForCountLabel;
- (void)_updateTextAttributesForDateLabel;
- (void)_updateTextAttributesForHeadingLabel;
- (void)_updateTextAttributesForSubheadingLabel;
- (void)_updateVisualStylingOfView:(id)view style:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider;
- (void)_updateVisualStylingProvidersForViewIfNecessary:(id)necessary;
- (void)_visualStylingProviderDidChange:(id)change forCategory:(int64_t)category outgoingProvider:(id)provider;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setAppsSummaryContentProvider:(id)provider;
- (void)setClearControlView:(id)view;
- (void)setCommunicationsSummaryContentProvider:(id)provider;
- (void)setCount:(unint64_t)count;
- (void)setDate:(id)date;
- (void)setDateFormatStyle:(int64_t)style;
- (void)setFeaturedNotificationContentProviders:(id)providers;
- (void)setHeading:(id)heading;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setPresentFeaturedNotificationsInline:(BOOL)inline;
- (void)setSubheading:(id)subheading;
- (void)setTimeZone:(id)zone;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)updateContent;
@end

@implementation NCDigestSummaryView

- (void)updateContent
{
  [(NCDigestFeaturedNotificationsContainerDisplaying *)self->_featuredNotificationsContainerView updateContent];
  [(NCDigestSummaryView *)self _configureSummaryContentView:self->_communicationsSummaryContentView withSummaryContentProvider:self->_communicationsSummaryContentProvider];
  [(NCDigestSummaryView *)self _configureSummaryContentView:self->_appsSummaryContentView withSummaryContentProvider:self->_appsSummaryContentProvider];

  [(NCDigestSummaryView *)self setNeedsLayout];
}

- (void)setDate:(id)date
{
  dateCopy = date;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [dateCopy copy];
    date = self->_date;
    self->_date = v4;

    [(NCDigestSummaryView *)self _tearDownTimeStampLabel];
    [(NCDigestSummaryView *)self setNeedsLayout];
  }
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [zoneCopy copy];
    timeZone = self->_timeZone;
    self->_timeZone = v4;

    [(NCDigestSummaryView *)self _tearDownTimeStampLabel];
    [(NCDigestSummaryView *)self setNeedsLayout];
  }
}

- (void)setDateFormatStyle:(int64_t)style
{
  if (self->_dateFormatStyle != style)
  {
    self->_dateFormatStyle = style;
    [(NCDigestSummaryView *)self _tearDownTimeStampLabel];

    [(NCDigestSummaryView *)self setNeedsLayout];
  }
}

- (void)setHeading:(id)heading
{
  headingCopy = heading;
  heading = [(NCDigestSummaryView *)self heading];
  v5 = BSEqualStrings();

  v6 = headingCopy;
  if ((v5 & 1) == 0)
  {
    headingLabel = self->_headingLabel;
    if (headingCopy)
    {
      if (!headingLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_headingLabel;
        self->_headingLabel = v8;

        [(UILabel *)self->_headingLabel setLineBreakMode:4];
        [(NCDigestSummaryView *)self addSubview:self->_headingLabel];
        [(NCDigestSummaryView *)self _updateTextAttributesForHeadingLabel];
        v10 = self->_headingLabel;
        v11 = [(NCDigestSummaryView *)self visualStylingProviderForCategory:1];
        [(NCDigestSummaryView *)self _updateVisualStylingOfView:v10 style:0 visualStylingProvider:v11 outgoingProvider:0];

        v6 = headingCopy;
        headingLabel = self->_headingLabel;
      }

      [(UILabel *)headingLabel setText:v6];
    }

    else
    {
      [(UILabel *)headingLabel removeFromSuperview];
      v12 = self->_headingLabel;
      self->_headingLabel = 0;
    }

    [(NCDigestSummaryView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730]();
}

- (void)setSubheading:(id)subheading
{
  subheadingCopy = subheading;
  subheading = [(NCDigestSummaryView *)self subheading];
  v5 = BSEqualStrings();

  v6 = subheadingCopy;
  if ((v5 & 1) == 0)
  {
    subheadingLabel = self->_subheadingLabel;
    if (subheadingCopy)
    {
      if (!subheadingLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_subheadingLabel;
        self->_subheadingLabel = v8;

        [(UILabel *)self->_subheadingLabel setLineBreakMode:4];
        [(NCDigestSummaryView *)self addSubview:self->_subheadingLabel];
        [(NCDigestSummaryView *)self _updateTextAttributesForSubheadingLabel];
        v10 = self->_subheadingLabel;
        v11 = [(NCDigestSummaryView *)self visualStylingProviderForCategory:1];
        [(NCDigestSummaryView *)self _updateVisualStylingOfView:v10 style:0 visualStylingProvider:v11 outgoingProvider:0];

        v6 = subheadingCopy;
        subheadingLabel = self->_subheadingLabel;
      }

      [(UILabel *)subheadingLabel setText:v6];
    }

    else
    {
      [(UILabel *)subheadingLabel removeFromSuperview];
      v12 = self->_subheadingLabel;
      self->_subheadingLabel = 0;
    }

    [(NCDigestSummaryView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730]();
}

- (void)setCount:(unint64_t)count
{
  if (self->_count != count)
  {
    self->_count = count;
    countLabel = self->_countLabel;
    if (count)
    {
      if (!countLabel)
      {
        v5 = objc_alloc_init(MEMORY[0x277D75D18]);
        countBackgroundView = self->_countBackgroundView;
        self->_countBackgroundView = v5;

        layer = [(UIView *)self->_countBackgroundView layer];
        [layer setCornerCurve:*MEMORY[0x277CDA130]];

        [(NCDigestSummaryView *)self addSubview:self->_countBackgroundView];
        v8 = self->_countBackgroundView;
        blackColor = [MEMORY[0x277D75348] blackColor];
        [(UIView *)v8 setBackgroundColor:blackColor];

        [(UIView *)self->_countBackgroundView setAlpha:0.25];
        v10 = objc_alloc_init(MEMORY[0x277D756B8]);
        v11 = self->_countLabel;
        self->_countLabel = v10;

        [(UILabel *)self->_countLabel setTextAlignment:1];
        v12 = self->_countLabel;
        systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
        [(UILabel *)v12 setTextColor:systemWhiteColor];

        [(NCDigestSummaryView *)self addSubview:self->_countLabel];
        [(NCDigestSummaryView *)self _updateTextAttributesForCountLabel];
        countLabel = self->_countLabel;
        count = self->_count;
      }

      v14 = MEMORY[0x277CCABB8];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
      v15 = [v14 localizedStringFromNumber:v18 numberStyle:0];
      [(UILabel *)countLabel setText:v15];
    }

    else if (countLabel)
    {
      [(UILabel *)self->_countLabel removeFromSuperview];
      v16 = self->_countLabel;
      self->_countLabel = 0;

      [(UIView *)self->_countBackgroundView removeFromSuperview];
      v17 = self->_countBackgroundView;
      self->_countBackgroundView = 0;

      [(NCDigestSummaryView *)self setNeedsLayout];
    }
  }
}

- (void)setPresentFeaturedNotificationsInline:(BOOL)inline
{
  if (self->_presentFeaturedNotificationsInline != inline)
  {
    self->_presentFeaturedNotificationsInline = inline;
    featuredNotificationContentProviders = [(NCDigestSummaryView *)self featuredNotificationContentProviders];
    [(NCDigestFeaturedNotificationsContainerDisplaying *)self->_featuredNotificationsContainerView removeFromSuperview];
    featuredNotificationsContainerView = self->_featuredNotificationsContainerView;
    self->_featuredNotificationsContainerView = 0;

    [(NCDigestSummaryView *)self setFeaturedNotificationContentProviders:featuredNotificationContentProviders];
  }
}

- (void)setFeaturedNotificationContentProviders:(id)providers
{
  providersCopy = providers;
  featuredNotificationContentProviders = [(NCDigestSummaryView *)self featuredNotificationContentProviders];
  v5 = BSEqualArrays();

  if (v5)
  {
    [(NCDigestFeaturedNotificationsContainerDisplaying *)self->_featuredNotificationsContainerView updateContent];
  }

  else
  {
    v6 = [providersCopy count];
    featuredNotificationsContainerView = self->_featuredNotificationsContainerView;
    if (v6)
    {
      if (!featuredNotificationsContainerView)
      {
        presentFeaturedNotificationsInline = [(NCDigestSummaryView *)self presentFeaturedNotificationsInline];
        v9 = off_27836DD38;
        if (!presentFeaturedNotificationsInline)
        {
          v9 = off_27836DD48;
        }

        v10 = objc_alloc(*v9);
        v11 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        v12 = self->_featuredNotificationsContainerView;
        self->_featuredNotificationsContainerView = v11;

        [(NCDigestFeaturedNotificationsContainerDisplaying *)self->_featuredNotificationsContainerView setMaterialGroupNameBase:self->_materialGroupNameBase];
        [(NCDigestFeaturedNotificationsContainerDisplaying *)self->_featuredNotificationsContainerView setVisualStylingProvider:self->_strokeVisualStylingProvider forCategory:1];
        [(NCDigestSummaryView *)self addSubview:self->_featuredNotificationsContainerView];
        featuredNotificationsContainerView = self->_featuredNotificationsContainerView;
      }

      [(NCDigestFeaturedNotificationsContainerDisplaying *)featuredNotificationsContainerView setFeaturedNotificationContentProviders:providersCopy];
    }

    else
    {
      [(NCDigestFeaturedNotificationsContainerDisplaying *)featuredNotificationsContainerView removeFromSuperview];
      v13 = self->_featuredNotificationsContainerView;
      self->_featuredNotificationsContainerView = 0;
    }

    [(NCDigestSummaryView *)self setNeedsLayout];
  }
}

- (void)setCommunicationsSummaryContentProvider:(id)provider
{
  providerCopy = provider;
  communicationsSummaryContentProvider = [(NCDigestSummaryView *)self communicationsSummaryContentProvider];
  v5 = BSEqualObjects();

  if (v5)
  {
    [(NCDigestSummaryView *)self _configureSummaryContentView:self->_communicationsSummaryContentView withSummaryContentProvider:providerCopy];
  }

  else
  {
    communicationsSummaryContentView = self->_communicationsSummaryContentView;
    if (providerCopy)
    {
      if (communicationsSummaryContentView)
      {
        [NCDigestSummaryView _configureSummaryContentView:"_configureSummaryContentView:withSummaryContentProvider:" withSummaryContentProvider:?];
      }

      else
      {
        v8 = [(NCDigestSummaryView *)self _newSummaryContentViewForSummaryContentProvider:providerCopy];
        v9 = self->_communicationsSummaryContentView;
        self->_communicationsSummaryContentView = v8;

        [(NCNotificationSummaryContentView *)self->_communicationsSummaryContentView setHorizontalLeadingMargin:0.0];
        [(NCDigestSummaryView *)self addSubview:self->_communicationsSummaryContentView];
      }

      v10 = providerCopy;
      communicationsSummaryContentProvider = self->_communicationsSummaryContentProvider;
      self->_communicationsSummaryContentProvider = v10;
    }

    else
    {
      [(NCNotificationSummaryContentView *)communicationsSummaryContentView removeFromSuperview];
      communicationsSummaryContentProvider = self->_communicationsSummaryContentView;
      self->_communicationsSummaryContentView = 0;
    }

    [(NCDigestSummaryView *)self setNeedsLayout];
  }
}

- (void)setAppsSummaryContentProvider:(id)provider
{
  providerCopy = provider;
  appsSummaryContentProvider = [(NCDigestSummaryView *)self appsSummaryContentProvider];
  v5 = BSEqualObjects();

  if (v5)
  {
    [(NCDigestSummaryView *)self _configureSummaryContentView:self->_appsSummaryContentView withSummaryContentProvider:providerCopy];
  }

  else
  {
    appsSummaryContentView = self->_appsSummaryContentView;
    if (providerCopy)
    {
      if (appsSummaryContentView)
      {
        [NCDigestSummaryView _configureSummaryContentView:"_configureSummaryContentView:withSummaryContentProvider:" withSummaryContentProvider:?];
      }

      else
      {
        v8 = [(NCDigestSummaryView *)self _newSummaryContentViewForSummaryContentProvider:providerCopy];
        v9 = self->_appsSummaryContentView;
        self->_appsSummaryContentView = v8;

        [(NCNotificationSummaryContentView *)self->_appsSummaryContentView setHorizontalLeadingMargin:0.0];
        [(NCNotificationSummaryContentView *)self->_appsSummaryContentView setHorizontalTrailingMargin:0.0];
        [(NCNotificationSummaryContentView *)self->_appsSummaryContentView setVisualStylingProvider:self->_strokeVisualStylingProvider forCategory:1];
        [(NCNotificationSummaryContentView *)self->_appsSummaryContentView setSummaryLabelMaterialSecondary:1];
        [(NCDigestSummaryView *)self addSubview:self->_appsSummaryContentView];
      }

      v10 = providerCopy;
      appsSummaryContentProvider = self->_appsSummaryContentProvider;
      self->_appsSummaryContentProvider = v10;
    }

    else
    {
      [(NCNotificationSummaryContentView *)appsSummaryContentView removeFromSuperview];
      appsSummaryContentProvider = self->_appsSummaryContentView;
      self->_appsSummaryContentView = 0;
    }

    [(NCDigestSummaryView *)self setNeedsLayout];
  }
}

- (void)setClearControlView:(id)view
{
  viewCopy = view;
  clearControlView = self->_clearControlView;
  if (clearControlView != viewCopy)
  {
    v7 = viewCopy;
    if (clearControlView)
    {
      [(UIView *)clearControlView removeFromSuperview];
    }

    objc_storeStrong(&self->_clearControlView, view);
    if (v7)
    {
      [(NCDigestSummaryView *)self addSubview:v7];
    }

    clearControlView = [(NCDigestSummaryView *)self setNeedsLayout];
  }

  MEMORY[0x2821F96F8](clearControlView);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(NCDigestSummaryView *)self _layoutBoundsForTitleLabelInBounds:0.0, 0.0, fits.width, fits.height];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (self->_timeStampLabel)
  {
    _timeStampLabelFont = [(NCDigestSummaryView *)self _timeStampLabelFont];
    [_timeStampLabelFont lineHeight];
  }

  [(UILabel *)self->_headingLabel unui_measuringHeightWithNumberOfLines:[(NCDigestSummaryView *)self _numberOfLinesForHeadingLabelInRect:v7, v9, v11, v13]];
  subheadingLabel = self->_subheadingLabel;
  if (subheadingLabel)
  {
    [(UILabel *)subheadingLabel unui_measuringHeightWithNumberOfLines:[(NCDigestSummaryView *)self _numberOfLinesForSubheadingLabelInRect:v7, v9, v11, v13]];
  }

  communicationsSummaryContentView = self->_communicationsSummaryContentView;
  if (communicationsSummaryContentView)
  {
    [(NCNotificationSummaryContentView *)communicationsSummaryContentView sizeThatFits:width + -36.0, height];
  }

  presentFeaturedNotificationsInline = [(NCDigestSummaryView *)self presentFeaturedNotificationsInline];
  featuredNotificationsContainerView = self->_featuredNotificationsContainerView;
  if (featuredNotificationsContainerView)
  {
    v19 = width + -36.0 + 24.0;
    if (!presentFeaturedNotificationsInline)
    {
      v19 = width + -36.0;
    }

    [(NCDigestFeaturedNotificationsContainerDisplaying *)featuredNotificationsContainerView sizeThatFits:v19, height];
  }

  appsSummaryContentView = self->_appsSummaryContentView;
  if (appsSummaryContentView)
  {
    [(NCNotificationSummaryContentView *)appsSummaryContentView sizeThatFits:width + -36.0, height];
  }

  UISizeRoundToScale();
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)layoutSubviews
{
  v93.receiver = self;
  v93.super_class = NCDigestSummaryView;
  [(NCDigestSummaryView *)&v93 layoutSubviews];
  [(NCDigestSummaryView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _shouldReverseLayoutDirection = [(NCDigestSummaryView *)self _shouldReverseLayoutDirection];
  if ((_shouldReverseLayoutDirection & 1) == 0)
  {
    v94.origin.x = v4;
    v94.origin.y = v6;
    v94.size.width = v8;
    v94.size.height = v10;
    CGRectGetWidth(v94);
  }

  countLabel = self->_countLabel;
  if (countLabel)
  {
    [(UILabel *)countLabel sizeThatFits:v8, v10];
    if ((_shouldReverseLayoutDirection & 1) == 0)
    {
      v95.origin.x = v4;
      v95.origin.y = v6;
      v95.size.width = v8;
      v95.size.height = v10;
      CGRectGetWidth(v95);
    }

    UIRectIntegralWithScale();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [(UIView *)self->_countBackgroundView setFrame:?];
    layer = [(UIView *)self->_countBackgroundView layer];
    v96.origin.x = v14;
    v96.origin.y = v16;
    v96.size.width = v18;
    v96.size.height = v20;
    [layer setCornerRadius:CGRectGetHeight(v96) * 0.5];

    [(UILabel *)self->_countLabel setFrame:v14, v16, v18, v20];
  }

  clearControlView = self->_clearControlView;
  if (clearControlView)
  {
    v23 = 0.0;
    if (!self->_countLabel)
    {
      v23 = 1.0;
    }

    [(UIView *)clearControlView setAlpha:v23];
    [(UIView *)self->_clearControlView sizeThatFits:v8, v10];
    if ((_shouldReverseLayoutDirection & 1) == 0)
    {
      v97.origin.x = v4;
      v97.origin.y = v6;
      v97.size.width = v8;
      v97.size.height = v10;
      CGRectGetWidth(v97);
    }

    UIRectIntegralWithScale();
    [(UIView *)self->_clearControlView setFrame:?];
  }

  [(NCDigestSummaryView *)self _layoutBoundsForTitleLabelInBounds:v4, v6, v8, v10];
  v25 = v24;
  v26 = v6;
  v28 = v27;
  v29 = v8;
  v31 = v30;
  v32 = v10;
  v34 = v33;
  v91 = v26;
  v92 = v4;
  rect_16 = v32;
  rect_24 = v29;
  if (_shouldReverseLayoutDirection)
  {
    v98.origin.x = v4;
    v98.origin.y = v26;
    v98.size.width = v29;
    v98.size.height = v32;
    CGRectGetMaxX(v98);
    v99.origin.x = v25;
    v99.origin.y = v28;
    v99.size.width = v31;
    v99.size.height = v34;
    CGRectGetWidth(v99);
  }

  rect = v25;
  v100.origin.x = v25;
  v100.origin.y = v28;
  v100.size.width = v31;
  v100.size.height = v34;
  CGRectGetWidth(v100);
  _timeStampLabelFont = [(NCDigestSummaryView *)self _timeStampLabelFont];
  [_timeStampLabelFont lineHeight];
  traitCollection = [(NCDigestSummaryView *)self traitCollection];
  [traitCollection displayScale];
  UICeilToScale();
  rect_8 = 18.0;
  UIRectIntegralWithScale();

  [(NCDigestSummaryView *)self _configureTimeStampLabelIfNecessary];
  UIRectIntegralWithScale();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  [(BSUIDateLabel *)self->_timeStampLabel setFrame:?];
  [(UILabel *)self->_headingLabel frame];
  v45 = 18.0;
  if (_shouldReverseLayoutDirection)
  {
    v101.origin.y = v91;
    v101.origin.x = v92;
    v101.size.height = rect_16;
    v101.size.width = rect_24;
    v46 = CGRectGetMaxX(v101) + -18.0;
    v102.origin.x = rect;
    v102.origin.y = v28;
    v102.size.width = v31;
    v102.size.height = v34;
    v45 = v46 - CGRectGetWidth(v102);
  }

  if (self->_timeStampLabel)
  {
    v103.origin.x = v38;
    v103.origin.y = v40;
    v103.size.width = v42;
    v103.size.height = v44;
    rect_8 = CGRectGetMaxY(v103) + 2.0;
  }

  v104.origin.x = rect;
  v104.origin.y = v28;
  v104.size.width = v31;
  v104.size.height = v34;
  Width = CGRectGetWidth(v104);
  [(UILabel *)self->_headingLabel unui_measuringHeightWithNumberOfLines:[(NCDigestSummaryView *)self _numberOfLinesForHeadingLabelInRect:rect, v28, v31, v34]];
  v49 = v48;
  v86 = v34;
  [(UILabel *)self->_headingLabel unui_drawingHeightWithNumberOfLines:[(NCDigestSummaryView *)self _numberOfLinesForHeadingLabelInRect:rect, v28, v31, v34]];
  v105.origin.x = v45;
  v105.origin.y = rect_8;
  v105.size.width = Width;
  v105.size.height = v49;
  CGRectGetWidth(v105);
  BSRectWithSize();
  UIRectCenteredIntegralRectScale();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  [(UILabel *)self->_headingLabel setFrame:0];
  subheadingLabel = self->_subheadingLabel;
  if (subheadingLabel)
  {
    [(UILabel *)subheadingLabel frame];
    v59 = 18.0;
    if (_shouldReverseLayoutDirection)
    {
      v106.origin.y = v91;
      v106.origin.x = v92;
      v106.size.height = rect_16;
      v106.size.width = rect_24;
      v60 = CGRectGetMaxX(v106) + -18.0;
      v107.origin.x = rect;
      v107.origin.y = v28;
      v107.size.width = v31;
      v107.size.height = v86;
      v59 = v60 - CGRectGetWidth(v107);
    }

    v108.origin.x = v57;
    v108.origin.y = v51;
    v108.size.width = v53;
    v108.size.height = v55;
    v61 = CGRectGetMaxY(v108) + 1.0;
    v109.origin.x = rect;
    v109.origin.y = v28;
    v109.size.width = v31;
    v109.size.height = v86;
    v62 = CGRectGetWidth(v109);
    [(UILabel *)self->_subheadingLabel unui_measuringHeightWithNumberOfLines:[(NCDigestSummaryView *)self _numberOfLinesForSubheadingLabelInRect:rect, v28, v31, v86]];
    v64 = v63;
    [(UILabel *)self->_subheadingLabel unui_drawingHeightWithNumberOfLines:[(NCDigestSummaryView *)self _numberOfLinesForSubheadingLabelInRect:rect, v28, v31, v86]];
    v110.origin.x = v59;
    v110.origin.y = v61;
    v110.size.width = v62;
    v110.size.height = v64;
    CGRectGetWidth(v110);
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    v57 = v65;
    v51 = v66;
    v53 = v67;
    v55 = v68;
    [(UILabel *)self->_subheadingLabel setFrame:0];
  }

  v111.origin.y = v91;
  v111.origin.x = v92;
  v111.size.height = rect_16;
  v111.size.width = rect_24;
  v112 = CGRectInset(v111, 18.0, 0.0);
  v69 = v112.size.width;
  height = v112.size.height;
  communicationsSummaryContentView = self->_communicationsSummaryContentView;
  if (communicationsSummaryContentView)
  {
    [(NCNotificationSummaryContentView *)communicationsSummaryContentView sizeThatFits:v112.size.width, v112.size.height];
    v113.origin.x = v57;
    v113.origin.y = v51;
    v113.size.width = v53;
    v113.size.height = v55;
    CGRectGetMaxY(v113);
    UIRectIntegralWithScale();
    [(NCNotificationSummaryContentView *)self->_communicationsSummaryContentView setFrame:?];
  }

  featuredNotificationsContainerView = self->_featuredNotificationsContainerView;
  if (featuredNotificationsContainerView)
  {
    [(NCDigestFeaturedNotificationsContainerDisplaying *)featuredNotificationsContainerView frame:v112.origin.x];
    presentFeaturedNotificationsInline = [(NCDigestSummaryView *)self presentFeaturedNotificationsInline];
    v74 = v69 + 24.0;
    if (!presentFeaturedNotificationsInline)
    {
      v74 = v69;
    }

    [(NCDigestFeaturedNotificationsContainerDisplaying *)self->_featuredNotificationsContainerView sizeThatFits:v74, height];
    v75 = self->_communicationsSummaryContentView;
    v76 = v57;
    v77 = v51;
    v78 = v53;
    v79 = v55;
    if (v75)
    {
      [(NCNotificationSummaryContentView *)v75 frame:v57];
    }

    CGRectGetMaxY(*&v76);
    [(NCDigestSummaryView *)self presentFeaturedNotificationsInline];
    UIRectIntegralWithScale();
    [(NCDigestFeaturedNotificationsContainerDisplaying *)self->_featuredNotificationsContainerView setFrame:?];
  }

  if (self->_appsSummaryContentView)
  {
    v80 = self->_featuredNotificationsContainerView;
    if (v80)
    {
      [(NCDigestFeaturedNotificationsContainerDisplaying *)v80 frame:v112.origin.x];
      CGRectGetMaxY(v114);
    }

    else
    {
      v81 = self->_communicationsSummaryContentView;
      if (v81)
      {
        [(NCNotificationSummaryContentView *)v81 frame:v112.origin.x];
        v57 = v82;
        v51 = v83;
        v53 = v84;
        v55 = v85;
      }

      v115.origin.x = v57;
      v115.origin.y = v51;
      v115.size.width = v53;
      v115.size.height = v55;
      CGRectGetMaxY(v115);
    }

    [(NCNotificationSummaryContentView *)self->_appsSummaryContentView sizeThatFits:v69, height];
    UIRectIntegralWithScale();
    [(NCNotificationSummaryContentView *)self->_appsSummaryContentView setFrame:?];
  }
}

- (void)didMoveToWindow
{
  window = [(NCDigestSummaryView *)self window];

  if (window)
  {

    [(NCDigestSummaryView *)self adjustForContentSizeCategoryChange];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

  v5 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, self->_preferredContentSizeCategory);
  if (v5)
  {
    objc_storeStrong(&self->_preferredContentSizeCategory, preferredContentSizeCategory);
    [(NCDigestFeaturedNotificationsContainerDisplaying *)self->_featuredNotificationsContainerView adjustForContentSizeCategoryChange];
    [(NCNotificationSummaryContentView *)self->_communicationsSummaryContentView adjustForContentSizeCategoryChange];
    [(NCNotificationSummaryContentView *)self->_appsSummaryContentView adjustForContentSizeCategoryChange];
    [(NCDigestSummaryView *)self _updateTextAttributes];
  }

  return v5 != NSOrderedSame;
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  strokeVisualStylingProvider = self->_strokeVisualStylingProvider;
  if (strokeVisualStylingProvider)
  {
    v4 = strokeVisualStylingProvider;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NCDigestSummaryView;
    v4 = [(NCDigestSummaryView *)&v6 visualStylingProviderForCategory:category];
  }

  return v4;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  strokeVisualStylingProvider = self->_strokeVisualStylingProvider;
  if (strokeVisualStylingProvider != providerCopy)
  {
    v11 = providerCopy;
    v8 = providerCopy;
    v9 = self->_strokeVisualStylingProvider;
    self->_strokeVisualStylingProvider = v8;
    v10 = strokeVisualStylingProvider;

    [(NCDigestSummaryView *)self _visualStylingProviderDidChange:self->_strokeVisualStylingProvider forCategory:category outgoingProvider:v10];
    [(NCDigestFeaturedNotificationsContainerDisplaying *)self->_featuredNotificationsContainerView setVisualStylingProvider:self->_strokeVisualStylingProvider forCategory:category];
    [(NCNotificationSummaryContentView *)self->_appsSummaryContentView setVisualStylingProvider:self->_strokeVisualStylingProvider forCategory:category];

    providerCopy = v11;
  }
}

- (void)setMaterialGroupNameBase:(id)base
{
  objc_storeStrong(&self->_materialGroupNameBase, base);
  baseCopy = base;
  [(NCDigestFeaturedNotificationsContainerDisplaying *)self->_featuredNotificationsContainerView setMaterialGroupNameBase:baseCopy];
}

+ (id)_preferredFont:(BOOL)font textStyle:(id)style weight:(double)weight additionalTraits:(unsigned int)traits
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (font)
  {
    [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:*&traits options:0];
  }

  else
  {
    [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:style addingSymbolicTraits:*&traits options:0];
  }
  v7 = ;
  v16 = *MEMORY[0x277D74380];
  v14 = *MEMORY[0x277D74430];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:weight];
  v15 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v11 = [v7 fontDescriptorByAddingAttributes:v10];

  v12 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];

  return v12;
}

- (id)_timeStampLabelFont
{
  font = [(BSUIDateLabel *)self->_timeStampLabel font];
  v4 = font;
  if (font)
  {
    _timeStampLabelPreferredFont = font;
  }

  else
  {
    _timeStampLabelPreferredFont = [(NCDigestSummaryView *)self _timeStampLabelPreferredFont];
  }

  v6 = _timeStampLabelPreferredFont;

  return v6;
}

- (id)_timeStampLabelPreferredFont
{
  v2 = objc_opt_class();
  v3 = *MEMORY[0x277D76968];
  v4 = *MEMORY[0x277D74400];

  return [v2 _preferredFont:1 textStyle:v3 weight:0 additionalTraits:v4];
}

- (id)_fontProvider
{
  if (!self->_fontProvider)
  {
    if ([(NCDigestSummaryView *)self adjustsFontForContentSizeCategory])
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

- (void)_setFontProvider:(id)provider
{
  providerCopy = provider;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_fontProvider, provider);
    [(NCDigestSummaryView *)self _updateTextAttributes];
  }
}

- (void)_updateTextAttributesForDateLabel
{
  timeStampLabel = self->_timeStampLabel;
  if (timeStampLabel)
  {
    _timeStampLabelPreferredFont = [(NCDigestSummaryView *)self _timeStampLabelPreferredFont];
    [(BSUIDateLabel *)timeStampLabel setFont:_timeStampLabelPreferredFont];

    [(BSUIDateLabel *)self->_timeStampLabel setNumberOfLines:1];
    [(BSUIDateLabel *)self->_timeStampLabel setLineBreakMode:3];

    [(NCDigestSummaryView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForHeadingLabel
{
  headingLabel = self->_headingLabel;
  if (headingLabel)
  {
    v4 = [objc_opt_class() _preferredFont:1 textStyle:*MEMORY[0x277D76A20] weight:0 additionalTraits:*MEMORY[0x277D74420]];
    [(UILabel *)headingLabel setFont:v4];

    [(UILabel *)self->_headingLabel setNumberOfLines:0];

    [(NCDigestSummaryView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForSubheadingLabel
{
  subheadingLabel = self->_subheadingLabel;
  if (subheadingLabel)
  {
    v4 = [objc_opt_class() _preferredFont:1 textStyle:*MEMORY[0x277D76968] weight:0 additionalTraits:*MEMORY[0x277D74418]];
    [(UILabel *)subheadingLabel setFont:v4];

    [(UILabel *)self->_subheadingLabel setNumberOfLines:0];

    [(NCDigestSummaryView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributesForCountLabel
{
  if (self->_countLabel)
  {
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(self->_preferredContentSizeCategory);
    v4 = MEMORY[0x277D76918];
    if (!IsAccessibilityCategory)
    {
      v4 = MEMORY[0x277D769D0];
    }

    countLabel = self->_countLabel;
    v6 = *v4;
    v7 = [objc_opt_class() _preferredFont:1 textStyle:v6 weight:0 additionalTraits:*MEMORY[0x277D74420]];

    [(UILabel *)countLabel setFont:v7];

    [(NCDigestSummaryView *)self setNeedsLayout];
  }
}

- (void)_updateTextAttributes
{
  [(NCDigestSummaryView *)self _updateTextAttributesForDateLabel];
  [(NCDigestSummaryView *)self _updateTextAttributesForHeadingLabel];
  [(NCDigestSummaryView *)self _updateTextAttributesForSubheadingLabel];

  [(NCDigestSummaryView *)self _updateTextAttributesForCountLabel];
}

- (void)_updateVisualStylingOfView:(id)view style:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider
{
  if (view)
  {
    providerCopy = provider;
    viewCopy = view;
    [outgoingProvider stopAutomaticallyUpdatingView:viewCopy];
    [providerCopy automaticallyUpdateView:viewCopy withStyle:style];
  }
}

- (void)_updateVisualStylingProvidersForViewIfNecessary:(id)necessary
{
  v17 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  if (objc_opt_respondsToSelector())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    requiredVisualStyleCategories = [necessaryCopy requiredVisualStyleCategories];
    v6 = [requiredVisualStyleCategories countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(requiredVisualStyleCategories);
          }

          integerValue = [*(*(&v12 + 1) + 8 * v9) integerValue];
          v11 = [(NCDigestSummaryView *)self visualStylingProviderForCategory:integerValue];
          [necessaryCopy setVisualStylingProvider:v11 forCategory:integerValue];

          ++v9;
        }

        while (v7 != v9);
        v7 = [requiredVisualStyleCategories countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)_visualStylingProviderDidChange:(id)change forCategory:(int64_t)category outgoingProvider:(id)provider
{
  if (category == 1)
  {
    timeStampLabel = self->_timeStampLabel;
    providerCopy = provider;
    changeCopy = change;
    [(NCDigestSummaryView *)self _updateVisualStylingOfView:timeStampLabel style:1 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
    [(NCDigestSummaryView *)self _updateVisualStylingOfView:self->_headingLabel style:0 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
    [(NCDigestSummaryView *)self _updateVisualStylingOfView:self->_subheadingLabel style:0 visualStylingProvider:changeCopy outgoingProvider:providerCopy];
  }
}

- (void)_configureTimeStampLabelIfNecessary
{
  if (!self->_timeStampLabel)
  {
    if (self->_date)
    {
      [(NCDigestSummaryView *)self _configureTimeStampLabel];
    }
  }
}

- (void)_configureTimeStampLabel
{
  mEMORY[0x277CF0D50] = [MEMORY[0x277CF0D50] sharedInstance];
  v4 = [mEMORY[0x277CF0D50] startLabelWithStartDate:self->_date endDate:0 timeZone:self->_timeZone allDay:0 forStyle:self->_dateFormatStyle];
  timeStampLabel = self->_timeStampLabel;
  self->_timeStampLabel = v4;

  [(BSUIDateLabel *)self->_timeStampLabel setDelegate:self];
  [(NCDigestSummaryView *)self addSubview:self->_timeStampLabel];
  [(NCDigestSummaryView *)self _updateTextAttributesForDateLabel];
  v6 = self->_timeStampLabel;
  v7 = [(NCDigestSummaryView *)self visualStylingProviderForCategory:1];
  [(NCDigestSummaryView *)self _updateVisualStylingOfView:v6 style:1 visualStylingProvider:v7 outgoingProvider:0];
}

- (void)_recycleTimeStampLabel
{
  [(BSUIDateLabel *)self->_timeStampLabel setDelegate:0];
  timeStampLabel = self->_timeStampLabel;
  v4 = [(NCDigestSummaryView *)self visualStylingProviderForCategory:1];
  [(NCDigestSummaryView *)self _updateVisualStylingOfView:timeStampLabel style:1 visualStylingProvider:0 outgoingProvider:v4];

  mEMORY[0x277CF0D50] = [MEMORY[0x277CF0D50] sharedInstance];
  [mEMORY[0x277CF0D50] recycleLabel:self->_timeStampLabel];
}

- (void)_tearDownTimeStampLabel
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__NCDigestSummaryView__tearDownTimeStampLabel__block_invoke;
  v2[3] = &unk_27836F6A8;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

void __46__NCDigestSummaryView__tearDownTimeStampLabel__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 408);
  if (v2)
  {
    [v2 removeFromSuperview];
    [*(a1 + 32) _recycleTimeStampLabel];
    v3 = *(a1 + 32);
    v4 = *(v3 + 408);
    *(v3 + 408) = 0;
  }
}

- (CGRect)_layoutBoundsForTitleLabelInBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  countBackgroundView = self->_countBackgroundView;
  if (countBackgroundView || (countBackgroundView = self->_clearControlView) != 0)
  {
    [(UIView *)countBackgroundView frame];
    v8 = CGRectGetWidth(v14);
  }

  else
  {
    v8 = 40.0;
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v9 = CGRectGetWidth(v15) + -36.0 - v8 + -4.0;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v10 = CGRectGetHeight(v16);
  v11 = 0.0;
  v12 = 0.0;
  v13 = v9;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)_newSummaryContentViewForSummaryContentProvider:(id)provider
{
  providerCopy = provider;
  v5 = [NCNotificationSummaryContentView alloc];
  v6 = [(NCNotificationSummaryContentView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(NCDigestSummaryView *)self _configureSummaryContentView:v6 withSummaryContentProvider:providerCopy];

  return v6;
}

- (void)_configureSummaryContentView:(id)view withSummaryContentProvider:(id)provider
{
  if (view)
  {
    providerCopy = provider;
    viewCopy = view;
    summaryTitle = [providerCopy summaryTitle];
    [viewCopy setSummaryTitle:summaryTitle];

    summary = [providerCopy summary];
    [viewCopy setSummary:summary];

    summaryIconViews = [providerCopy summaryIconViews];
    [viewCopy setSummaryIconViews:summaryIconViews];

    [viewCopy setIconViewLeading:{objc_msgSend(providerCopy, "isIconViewLeading")}];
    summaryTitleFontName = [providerCopy summaryTitleFontName];
    [viewCopy setSummaryTitleFontName:summaryTitleFontName];

    summaryDate = [providerCopy summaryDate];

    [viewCopy setSummaryDate:summaryDate];

    [(NCDigestSummaryView *)self setNeedsLayout];
  }
}

@end