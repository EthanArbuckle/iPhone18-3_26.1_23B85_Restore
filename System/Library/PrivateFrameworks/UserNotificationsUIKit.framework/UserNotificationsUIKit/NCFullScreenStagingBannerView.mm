@interface NCFullScreenStagingBannerView
+ (id)_detailSecondaryFont;
- (CGRect)_contentFrameForActiveStage;
- (CGRect)_contentHitRectForActiveStage;
- (NCFullScreenStagingBannerView)initWithSettings:(id)settings;
- (double)_detailTextMaxWidthForBounds:(CGRect)bounds thumbnailVisible:(BOOL)visible;
- (id)_composedDateStringWithDateString:(id)string staticContentProvider:(id)provider;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (unint64_t)_detailLabelsNumberOfLines;
- (void)_configureContentHitRectViewIfNecessary;
- (void)_configureDateLabelIfNecessaryWithStaticContentProvider:(id)provider;
- (void)_configureDetailScrollViewIfNecessary;
- (void)_configureDetailSecondaryLabel;
- (void)_configureGrabberViewIfNecessary;
- (void)_configureInitialViewsForBriefStage;
- (void)_configureInitialViewsForDetailStage;
- (void)_configureInitialViewsForStage:(int64_t)stage;
- (void)_configureTapGestureIfNecessary;
- (void)_configureThumbnailViewIfNecessaryWithStaticContentProvider:(id)provider;
- (void)_handleTap:(id)tap;
- (void)_layoutContentHitRectViewForActiveStage;
- (void)_layoutForBriefStageWithSettings:(id)settings completion:(id)completion;
- (void)_layoutForDetailStageWithSettings:(id)settings completion:(id)completion;
- (void)_layoutForDismissedStageFromBriefStageWithSettings:(id)settings completion:(id)completion;
- (void)_layoutForDismissedStageFromDetailStageWithSettings:(id)settings completion:(id)completion;
- (void)_layoutForStage:(int64_t)stage fromStage:(int64_t)fromStage settings:(id)settings completion:(id)completion;
- (void)_prepareForTransitionToBriefStage;
- (void)_prepareForTransitionToDetailStage;
- (void)_prepareForTransitionToStage:(int64_t)stage;
- (void)_setBadgedIconView:(id)view;
- (void)_setImportantTextVisualStylingProvider:(id)provider;
- (void)_transitionToStage:(int64_t)stage fromStage:(int64_t)fromStage settings:(id)settings completion:(id)completion;
- (void)_updateVisualStylingOfView:(id)view style:(int64_t)style visualStylingProvider:(id)provider outgoingProvider:(id)outgoingProvider;
- (void)_updateWithStaticContentForStage:(int64_t)stage;
- (void)dateLabelDidChange:(id)change;
- (void)layoutSubviews;
- (void)setStaticContentProvider:(id)provider;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)transitionToStage:(int64_t)stage completion:(id)completion;
@end

@implementation NCFullScreenStagingBannerView

- (NCFullScreenStagingBannerView)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v10.receiver = self;
  v10.super_class = NCFullScreenStagingBannerView;
  v5 = [(NCFullScreenStagingBannerView *)&v10 init];
  if (v5)
  {
    v6 = [settingsCopy copy];
    settings = v5->_settings;
    v5->_settings = v6;

    layer = [(NCFullScreenStagingBannerView *)v5 layer];
    [layer setHitTestsAsOpaque:1];

    [(NCFullScreenStagingBannerView *)v5 _configureTapGestureIfNecessary];
  }

  return v5;
}

- (void)setStaticContentProvider:(id)provider
{
  providerCopy = provider;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_staticContentProvider, provider);
  }
}

- (void)transitionToStage:(int64_t)stage completion:(id)completion
{
  if (self->_stage < stage)
  {
    self->_stage = stage;
    [NCFullScreenStagingBannerView _transitionToStage:"_transitionToStage:fromStage:settings:completion:" fromStage:? settings:? completion:?];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = NCFullScreenStagingBannerView;
  v5 = [(NCFullScreenStagingBannerView *)&v10 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {
    layer = [(NCFullScreenStagingBannerView *)self layer];
    if ([layer allowsHitTesting])
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v5 = v8;
  }

  return v5;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NCFullScreenStagingBannerView;
  [(NCFullScreenStagingBannerView *)&v8 layoutSubviews];
  if ([(NCUNUIKitPrototypeSettings *)self->_settings isContentHitRectVisible])
  {
    if (self->_stage >= 1)
    {
      [(NCFullScreenStagingBannerView *)self _configureContentHitRectViewIfNecessary];
      objc_initWeak(&location, self);
      v3 = MEMORY[0x277D75D18];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __47__NCFullScreenStagingBannerView_layoutSubviews__block_invoke;
      v5[3] = &unk_27836F498;
      objc_copyWeak(&v6, &location);
      [v3 _animateUsingSpringInteractive:0 animations:v5 completion:0];
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(UIView *)self->_contentHitRectView removeFromSuperview];
    contentHitRectView = self->_contentHitRectView;
    self->_contentHitRectView = 0;
  }
}

void __47__NCFullScreenStagingBannerView_layoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _layoutContentHitRectViewForActiveStage];
    [v2[66] setAlpha:1.0];
    WeakRetained = v2;
  }
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

    [(NCFullScreenStagingBannerView *)self _visualStylingProviderDidChange:self->_strokeVisualStylingProvider forCategory:category outgoingProvider:v10];
    providerCopy = v11;
  }
}

- (void)dateLabelDidChange:(id)change
{
  dateLabel = self->_dateLabel;
  text = [(BSUIDateLabel *)self->_referenceDateLabel text];
  v5 = [(NCFullScreenStagingBannerView *)self _composedDateStringWithDateString:text staticContentProvider:self->_staticContentProvider];
  [(UILabel *)dateLabel setAttributedText:v5];
}

- (unint64_t)_detailLabelsNumberOfLines
{
  if ([(NCNotificationStaticContentProviding *)self->_staticContentProvider isNumberOfLinesInfinite])
  {
    return 0;
  }

  else
  {
    return 2;
  }
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

- (void)_setImportantTextVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  importantTextVisualStylingProvider = self->_importantTextVisualStylingProvider;
  if (importantTextVisualStylingProvider != providerCopy)
  {
    v9 = providerCopy;
    v6 = providerCopy;
    v7 = self->_importantTextVisualStylingProvider;
    self->_importantTextVisualStylingProvider = v6;
    v8 = importantTextVisualStylingProvider;

    [(NCFullScreenStagingBannerView *)self _updateVisualStylingOfView:self->_dateLabel style:1 visualStylingProvider:self->_importantTextVisualStylingProvider outgoingProvider:v8];
    providerCopy = v9;
  }
}

- (void)_configureGrabberViewIfNecessary
{
  if (!self->_grabberView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D3D300]);
    grabberView = self->_grabberView;
    self->_grabberView = v3;

    v5 = self->_grabberView;

    [(NCFullScreenStagingBannerView *)self addSubview:v5];
  }
}

- (void)_configureInitialViewsForBriefStage
{
  v20[1] = *MEMORY[0x277D85DE8];
  [(NCFullScreenStagingBannerView *)self _configureGrabberViewIfNecessary];
  if (!self->_briefPrimaryLabelView)
  {
    v3 = [objc_alloc(MEMORY[0x277CF0D80]) initWithTokenType:1];
    briefPrimaryLabelView = self->_briefPrimaryLabelView;
    self->_briefPrimaryLabelView = v3;

    [(BSUIPartialStylingLabelView *)self->_briefPrimaryLabelView setNumberOfLines:1];
    v5 = self->_briefPrimaryLabelView;
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(BSUIPartialStylingLabelView *)v5 setTextColor:labelColor];

    _briefPrimaryLabelViewFont = [(NCFullScreenStagingBannerView *)self _briefPrimaryLabelViewFont];
    [(BSUIPartialStylingLabelView *)self->_briefPrimaryLabelView setFont:_briefPrimaryLabelViewFont];
    [(NCFullScreenStagingBannerView *)self addSubview:self->_briefPrimaryLabelView];
  }

  if (!self->_briefSecondaryLabel)
  {
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    briefSecondaryLabel = self->_briefSecondaryLabel;
    self->_briefSecondaryLabel = v8;

    [(UILabel *)self->_briefSecondaryLabel setNumberOfLines:1];
    v10 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76A20]];
    v19 = *MEMORY[0x277D74380];
    v17 = *MEMORY[0x277D74430];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74410]];
    v18 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v20[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = [v10 fontDescriptorByAddingAttributes:v13];

    v15 = self->_briefSecondaryLabel;
    v16 = [MEMORY[0x277D74300] fontWithDescriptor:v14 size:0.0];
    [(UILabel *)v15 setFont:v16];

    [(NCFullScreenStagingBannerView *)self addSubview:self->_briefSecondaryLabel];
    [(NCFullScreenStagingBannerView *)self _updateVisualStylingOfView:self->_briefSecondaryLabel style:2 visualStylingProvider:self->_strokeVisualStylingProvider outgoingProvider:0];
  }
}

- (id)_composedDateStringWithDateString:(id)string staticContentProvider:(id)provider
{
  stringCopy = string;
  importantText = [provider importantText];
  v7 = stringCopy;
  if ([importantText length])
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = NCUserNotificationsUIKitFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"IMPORTANT_TEXT_FULLSCREEN_FORMAT" value:&stru_282FE84F8 table:0];
    v7 = [v8 stringWithFormat:v10, stringCopy, importantText];
  }

  v11 = [MEMORY[0x277CCA898] nc_safeAttributedStringWithString:v7];

  return v11;
}

- (void)_configureDetailScrollViewIfNecessary
{
  if (!self->_detailScrollView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D759D8]);
    detailScrollView = self->_detailScrollView;
    self->_detailScrollView = v3;

    [(UIScrollView *)self->_detailScrollView setShowsVerticalScrollIndicator:1];
    [(UIScrollView *)self->_detailScrollView setShowsHorizontalScrollIndicator:0];
    v5 = self->_detailScrollView;

    [(NCFullScreenStagingBannerView *)self addSubview:v5];
  }
}

- (void)_configureDateLabelIfNecessaryWithStaticContentProvider:(id)provider
{
  if (!self->_dateLabel)
  {
    v4 = MEMORY[0x277CF0D50];
    providerCopy = provider;
    sharedInstance = [v4 sharedInstance];
    date = [providerCopy date];
    timeZone = [providerCopy timeZone];
    isDateAllDay = [providerCopy isDateAllDay];

    v10 = [sharedInstance startLabelWithStartDate:date endDate:0 timeZone:timeZone allDay:isDateAllDay forStyle:1];
    referenceDateLabel = self->_referenceDateLabel;
    self->_referenceDateLabel = v10;

    [(BSUIDateLabel *)self->_referenceDateLabel setDelegate:self];
    v12 = objc_alloc_init(MEMORY[0x277D756B8]);
    dateLabel = self->_dateLabel;
    self->_dateLabel = v12;

    [(UILabel *)self->_dateLabel setNumberOfLines:1];
    v14 = self->_dateLabel;
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v14 setTextColor:secondaryLabelColor];

    v16 = [MEMORY[0x277D74300] bsui_defaultFontForTextStyle:*MEMORY[0x277D76A08] hiFontStyle:4];
    [(UILabel *)self->_dateLabel setFont:v16];
    [(NCFullScreenStagingBannerView *)self _configureDetailScrollViewIfNecessary];
    [(UIScrollView *)self->_detailScrollView addSubview:self->_dateLabel];
    [(NCFullScreenStagingBannerView *)self _updateVisualStylingOfView:self->_dateLabel style:1 visualStylingProvider:self->_importantTextVisualStylingProvider outgoingProvider:0];
    [(NCFullScreenStagingBannerView *)self dateLabelDidChange:self->_referenceDateLabel];
  }
}

- (void)_configureThumbnailViewIfNecessaryWithStaticContentProvider:(id)provider
{
  providerCopy = provider;
  if (!self->_thumbnailView)
  {
    v10 = providerCopy;
    thumbnail = [providerCopy thumbnail];

    providerCopy = v10;
    if (thumbnail)
    {
      v6 = objc_alloc(MEMORY[0x277D755E8]);
      thumbnail2 = [v10 thumbnail];
      v8 = [v6 initWithImage:thumbnail2];
      thumbnailView = self->_thumbnailView;
      self->_thumbnailView = v8;

      [(UIImageView *)self->_thumbnailView _setContinuousCornerRadius:20.0];
      [(UIImageView *)self->_thumbnailView setClipsToBounds:1];
      [(NCFullScreenStagingBannerView *)self addSubview:self->_thumbnailView];
      providerCopy = v10;
    }
  }
}

- (void)_configureContentHitRectViewIfNecessary
{
  if (!self->_contentHitRectView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    contentHitRectView = self->_contentHitRectView;
    self->_contentHitRectView = v3;

    v5 = self->_contentHitRectView;
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    v7 = [systemRedColor colorWithAlphaComponent:0.25];
    [(UIView *)v5 setBackgroundColor:v7];

    layer = [(UIView *)self->_contentHitRectView layer];
    [layer setAllowsHitTesting:0];

    [(UIView *)self->_contentHitRectView setAlpha:0.0];
    v9 = self->_contentHitRectView;

    [(NCFullScreenStagingBannerView *)self insertSubview:v9 atIndex:0];
  }
}

- (void)_configureInitialViewsForDetailStage
{
  [(NCFullScreenStagingBannerView *)self _configureDetailScrollViewIfNecessary];
  if (!self->_detailPrimaryLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    detailPrimaryLabel = self->_detailPrimaryLabel;
    self->_detailPrimaryLabel = v3;

    [(UILabel *)self->_detailPrimaryLabel setNumberOfLines:[(NCFullScreenStagingBannerView *)self _detailLabelsNumberOfLines]];
    v5 = self->_detailPrimaryLabel;
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v5 setTextColor:labelColor];

    v7 = self->_detailPrimaryLabel;
    v8 = [MEMORY[0x277D74300] boldSystemFontOfSize:48.0];
    [(UILabel *)v7 setFont:v8];

    [(UIScrollView *)self->_detailScrollView addSubview:self->_detailPrimaryLabel];
  }

  if (!self->_detailSecondaryLabel)
  {
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    detailSecondaryLabel = self->_detailSecondaryLabel;
    self->_detailSecondaryLabel = v9;

    [(UILabel *)self->_detailSecondaryLabel setNumberOfLines:[(NCFullScreenStagingBannerView *)self _detailLabelsNumberOfLines]];
    [(NCFullScreenStagingBannerView *)self _configureDetailSecondaryLabel];
    detailScrollView = self->_detailScrollView;
    v12 = self->_detailSecondaryLabel;

    [(UIScrollView *)detailScrollView addSubview:v12];
  }
}

+ (id)_detailSecondaryFont
{
  if (_detailSecondaryFont_onceToken != -1)
  {
    +[NCFullScreenStagingBannerView _detailSecondaryFont];
  }

  v3 = _detailSecondaryFont__detailSecondaryFont;

  return v3;
}

void __53__NCFullScreenStagingBannerView__detailSecondaryFont__block_invoke()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D769A8]];
  v9 = *MEMORY[0x277D74380];
  v7 = *MEMORY[0x277D74430];
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74410]];
  v8 = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v4 = [v0 fontDescriptorByAddingAttributes:v3];

  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];
  v6 = _detailSecondaryFont__detailSecondaryFont;
  _detailSecondaryFont__detailSecondaryFont = v5;
}

- (void)_configureDetailSecondaryLabel
{
  detailSecondaryLabel = self->_detailSecondaryLabel;
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)detailSecondaryLabel setTextColor:secondaryLabelColor];

  v5 = self->_detailSecondaryLabel;
  _detailSecondaryFont = [objc_opt_class() _detailSecondaryFont];
  [(UILabel *)v5 setFont:_detailSecondaryFont];
}

- (void)_configureInitialViewsForStage:(int64_t)stage
{
  if (stage == 2)
  {
    [(NCFullScreenStagingBannerView *)self _configureInitialViewsForDetailStage];
  }

  else if (stage == 1)
  {
    [(NCFullScreenStagingBannerView *)self _configureInitialViewsForBriefStage];
  }
}

- (void)_setBadgedIconView:(id)view
{
  viewCopy = view;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(NCBadgedIconView *)self->_badgedIconView removeFromSuperview];
    objc_storeStrong(&self->_badgedIconView, view);
    if (self->_badgedIconView)
    {
      [(NCFullScreenStagingBannerView *)self addSubview:?];
      if (self->_stage >= 1)
      {
        [(NCBadgedIconView *)self->_badgedIconView setPointSize:84.0];
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = __52__NCFullScreenStagingBannerView__setBadgedIconView___block_invoke;
        v6[3] = &unk_27836F6A8;
        v6[4] = self;
        [MEMORY[0x277D75D18] performWithoutAnimation:v6];
      }
    }

    [(NCFullScreenStagingBannerView *)self setNeedsLayout];
  }
}

- (void)_updateWithStaticContentForStage:(int64_t)stage
{
  v34[2] = *MEMORY[0x277D85DE8];
  staticContentProvider = self->_staticContentProvider;
  if (stage >= 2)
  {
    v6 = staticContentProvider;
  }

  else
  {
    v6 = [(NCNotificationStaticContentProviding *)staticContentProvider copyWithContentHidingEnforcement:-1];
  }

  v7 = v6;
  badgedIconDescription = [(NCNotificationStaticContentProviding *)v6 badgedIconDescription];
  if (badgedIconDescription && !self->_badgedIconView)
  {
    v9 = [[NCBadgedIconView alloc] initWithBadgedIconDescription:badgedIconDescription pointSize:176.0];
    [(NCFullScreenStagingBannerView *)self _setBadgedIconView:v9];
  }

  secondaryText = [(NCNotificationStaticContentProviding *)v7 secondaryText];
  _detailSecondaryFont = [objc_opt_class() _detailSecondaryFont];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  v13 = [secondaryText nc_styledTextWithGylphAddedIfNecessaryForFont:_detailSecondaryFont glyphColor:secondaryLabelColor];

  if (stage == 2)
  {
    importantTextVisualStylingProvider = [(NCNotificationStaticContentProviding *)v7 importantTextVisualStylingProvider];
    [(NCFullScreenStagingBannerView *)self _setImportantTextVisualStylingProvider:importantTextVisualStylingProvider];

    [(NCFullScreenStagingBannerView *)self _configureDateLabelIfNecessaryWithStaticContentProvider:v7];
    [(NCFullScreenStagingBannerView *)self _configureThumbnailViewIfNecessaryWithStaticContentProvider:v7];
    detailPrimaryLabel = self->_detailPrimaryLabel;
    primaryText = [(NCNotificationStaticContentProviding *)v7 primaryText];
    [(UILabel *)detailPrimaryLabel setText:primaryText];

    [(UILabel *)self->_detailSecondaryLabel setAttributedText:v13];
    [(NCFullScreenStagingBannerView *)self _configureDetailSecondaryLabel];
  }

  else if (stage == 1)
  {
    v14 = MEMORY[0x277D755D0];
    _briefPrimaryLabelViewFont = [(NCFullScreenStagingBannerView *)self _briefPrimaryLabelViewFont];
    v16 = [v14 configurationWithFont:_briefPrimaryLabelViewFont];

    v17 = MEMORY[0x277D755D0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v34[0] = whiteColor;
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    v34[1] = systemRedColor;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v21 = [v17 configurationWithPaletteColors:v20];
    v22 = [v16 configurationByApplyingConfiguration:v21];

    v23 = [(NCNotificationStaticContentProviding *)v7 importantAttributedTextWithImageConfiguration:v22 importantAdornmentEligibleOptions:-1];
    if ([v23 length])
    {
      primaryText3 = [v23 mutableCopy];
      v25 = objc_alloc(MEMORY[0x277CCA898]);
      v26 = MEMORY[0x277CCACA8];
      primaryText2 = [(NCNotificationStaticContentProviding *)v7 primaryText];
      v28 = [v26 stringWithFormat:@" %@", primaryText2];
      v29 = [v25 initWithString:v28];
      [primaryText3 appendAttributedString:v29];

      [(BSUIPartialStylingLabelView *)self->_briefPrimaryLabelView setAttributedText:primaryText3];
    }

    else
    {
      briefPrimaryLabelView = self->_briefPrimaryLabelView;
      primaryText3 = [(NCNotificationStaticContentProviding *)v7 primaryText];
      [(BSUIPartialStylingLabelView *)briefPrimaryLabelView setText:primaryText3];
    }

    [(UILabel *)self->_briefSecondaryLabel setAttributedText:v13];
  }
}

- (void)_prepareForTransitionToBriefStage
{
  [(NCFullScreenStagingBannerView *)self bounds];
  v4 = v3;
  v62 = v3;
  v63 = v5;
  v7 = v6;
  v9 = v8;
  traitCollection = [(NCFullScreenStagingBannerView *)self traitCollection];
  [traitCollection displayScale];
  v64 = v11;

  grabberView = self->_grabberView;
  [(NCFullScreenStagingBannerView *)self bounds];
  [(PLGrabberView *)grabberView sizeThatFitsContainerWithSize:v13, v14];
  BSRectWithSize();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v66.origin.x = v4;
  v66.origin.y = v7;
  v66.size.width = v9;
  v66.size.height = v63;
  CGRectGetMaxY(v66);
  v67.origin.x = v16;
  v67.origin.y = v18;
  v67.size.width = v20;
  v67.size.height = v22;
  CGRectGetHeight(v67);
  UIRectCenteredXInRectScale();
  [(PLGrabberView *)self->_grabberView setFrame:v64];
  [(PLGrabberView *)self->_grabberView setWeighting:0.0];
  BSRectWithSize();
  v68.origin.x = v62;
  v68.origin.y = v7;
  v68.size.width = v9;
  v68.size.height = v63;
  CGRectGetMaxY(v68);
  v23 = v9;
  UIRectCenteredXInRectScale();
  v59 = v25;
  v60 = v24;
  v57 = v27;
  v58 = v26;
  [(NCBadgedIconView *)self->_badgedIconView setFrame:v64];
  badgedIconView = self->_badgedIconView;
  CGAffineTransformMakeScale(&v65, 0.8, 0.8);
  [(NCBadgedIconView *)badgedIconView setTransform:&v65];
  [(NCBadgedIconView *)self->_badgedIconView setAlpha:0.0];
  [(NCFullScreenStagingBannerView *)self safeAreaInsets];
  v30 = v29;
  v32 = v31;
  v69.origin.x = v62;
  v69.origin.y = v7;
  v69.size.width = v23;
  v69.size.height = v63;
  v33 = CGRectGetWidth(v69) - v30 - v32;
  v70.origin.x = v62;
  v70.origin.y = v7;
  v70.size.width = v23;
  v70.size.height = v63;
  [(BSUIPartialStylingLabelView *)self->_briefPrimaryLabelView sizeThatFits:v33, CGRectGetHeight(v70)];
  BSRectWithSize();
  v35 = v34;
  rect = v36;
  v38 = v37;
  v71.origin.y = v59;
  v71.origin.x = v60;
  v71.size.height = v57;
  v71.size.width = v58;
  MaxY = CGRectGetMaxY(v71);
  v72.origin.x = v62;
  v72.origin.y = v7;
  v72.size.width = v23;
  v72.size.height = v63;
  v40 = MaxY + CGRectGetHeight(v72) * 0.12553011;
  v73.origin.x = v35;
  v73.origin.y = v40;
  v73.size.width = rect;
  v73.size.height = v38;
  CGRectGetWidth(v73);
  v41 = v23;
  UIRectCenteredXInRectScale();
  v61 = v42;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  [(BSUIPartialStylingLabelView *)self->_briefPrimaryLabelView setFrame:v64];
  [(BSUIPartialStylingLabelView *)self->_briefPrimaryLabelView setAlpha:0.0];
  v74.origin.x = v62;
  v74.origin.y = v7;
  v74.size.width = v41;
  v74.size.height = v63;
  [(UILabel *)self->_briefSecondaryLabel sizeThatFits:v33, CGRectGetHeight(v74)];
  BSRectWithSize();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v75.origin.x = v61;
  v75.origin.y = v44;
  v75.size.width = v46;
  v75.size.height = v48;
  v55 = CGRectGetMaxY(v75) + 2.0;
  v76.origin.x = v50;
  v76.origin.y = v55;
  v76.size.width = v52;
  v76.size.height = v54;
  CGRectGetWidth(v76);
  UIRectCenteredXInRectScale();
  [(UILabel *)self->_briefSecondaryLabel setFrame:v64];
  [(UILabel *)self->_briefSecondaryLabel setAlpha:0.0];
}

- (double)_detailTextMaxWidthForBounds:(CGRect)bounds thumbnailVisible:(BOOL)visible
{
  visibleCopy = visible;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(NCFullScreenStagingBannerView *)self safeAreaInsets];
  v11 = v10;
  v13 = v12;
  traitCollection = [(NCFullScreenStagingBannerView *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (layoutDirection == 1)
  {
    v16 = v11;
  }

  else
  {
    v16 = v13;
  }

  if (layoutDirection == 1)
  {
    v17 = v13;
  }

  else
  {
    v17 = v11;
  }

  if (visibleCopy)
  {
    v18 = v16 + 118.0;
  }

  else
  {
    v18 = v16;
  }

  v19 = v17 + 84.0 + 34.0;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  return CGRectGetWidth(v21) - v19 - v18;
}

- (void)_prepareForTransitionToDetailStage
{
  [(NCFullScreenStagingBannerView *)self bounds];
  v4 = v3;
  v67 = v5;
  v68 = v3;
  v6 = v5;
  v8 = v7;
  v65 = v7;
  v66 = v9;
  v10 = v9;
  traitCollection = [(NCFullScreenStagingBannerView *)self traitCollection];
  [traitCollection displayScale];

  image = [(UIImageView *)self->_thumbnailView image];

  traitCollection2 = [(NCFullScreenStagingBannerView *)self traitCollection];
  layoutDirection = [traitCollection2 layoutDirection];

  [(NCFullScreenStagingBannerView *)self _detailTextMaxWidthForBounds:image != 0 thumbnailVisible:v4, v6, v8, v10];
  v16 = v15;
  [(UILabel *)self->_dateLabel sizeThatFits:?];
  BSRectWithSize();
  v62 = v18;
  v63 = v17;
  v20 = v19;
  v64 = v19;
  v22 = v21;
  [(UILabel *)self->_detailPrimaryLabel sizeThatFits:v16, 1.79769313e308];
  BSRectWithSize();
  v60 = v24;
  v61 = v23;
  v25 = v24;
  rect = v26;
  v28 = v27;
  [(UILabel *)self->_detailSecondaryLabel sizeThatFits:v16, 1.79769313e308];
  BSRectWithSize();
  v30 = v29;
  v32 = v31;
  v59 = v31;
  v34 = v33;
  v36 = v35;
  v70.size.width = v62;
  v70.origin.x = v63;
  v70.origin.y = v20;
  v70.size.height = v22;
  Width = CGRectGetWidth(v70);
  v71.origin.x = v61;
  v71.origin.y = v25;
  v71.size.width = rect;
  v71.size.height = v28;
  v38 = CGRectGetWidth(v71);
  v72.origin.x = v30;
  v72.origin.y = v32;
  v72.size.width = v34;
  v72.size.height = v36;
  v39 = CGRectGetWidth(v72);
  if (Width >= v38)
  {
    v40 = Width;
  }

  else
  {
    v40 = v38;
  }

  if (v40 >= v39)
  {
    v41 = v40;
  }

  else
  {
    v41 = v39;
  }

  if (layoutDirection == 1)
  {
    v42 = 10.0;
  }

  else
  {
    v42 = 0.0;
  }

  v73.origin.x = v42;
  v73.origin.y = v64;
  v73.size.width = v41;
  v73.size.height = v22;
  CGRectGetHeight(v73);
  v74.origin.x = v42;
  v74.origin.y = v60;
  v74.size.width = v41;
  v74.size.height = v28;
  CGRectGetHeight(v74);
  v75.origin.x = v42;
  v75.origin.y = v59;
  v75.size.width = v41;
  v75.size.height = v36;
  CGRectGetHeight(v75);
  [(NCFullScreenStagingBannerView *)self safeAreaInsets];
  [(PLGrabberView *)self->_grabberView frame];
  BSRectWithSize();
  UIRectCenteredYInRect();
  if (layoutDirection == 1)
  {
    v76.origin.y = v67;
    v76.origin.x = v68;
    v76.size.width = v65;
    v76.size.height = v66;
    CGRectGetMaxX(v76);
  }

  UIRectRoundToScale();
  [(UIScrollView *)self->_detailScrollView setFrame:?];
  detailScrollView = self->_detailScrollView;
  UISizeRoundToScale();
  [(UIScrollView *)detailScrollView setContentSize:?];
  v77.origin.x = v42;
  v77.origin.y = v64;
  v77.size.width = v41;
  v77.size.height = v22;
  v44 = CGRectGetMaxY(v77) + 6.0;
  v78.origin.x = v42;
  v78.origin.y = v44;
  v78.size.width = v41;
  v78.size.height = v28;
  CGRectGetMaxY(v78);
  v79.origin.y = v67;
  v79.origin.x = v68;
  v79.size.width = v65;
  v79.size.height = v66;
  CGRectGetHeight(v79);
  dateLabel = self->_dateLabel;
  UIRectRoundToScale();
  [(UILabel *)dateLabel setFrame:?];
  [(UILabel *)self->_dateLabel setAlpha:0.0];
  detailPrimaryLabel = self->_detailPrimaryLabel;
  UIRectRoundToScale();
  [(UILabel *)detailPrimaryLabel setFrame:?];
  [(UILabel *)self->_detailPrimaryLabel setAlpha:0.0];
  detailSecondaryLabel = self->_detailSecondaryLabel;
  UIRectRoundToScale();
  [(UILabel *)detailSecondaryLabel setFrame:?];
  [(UILabel *)self->_detailSecondaryLabel setAlpha:0.0];
  if (image)
  {
    BSRectWithSize();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    if (layoutDirection != 1)
    {
      v80.origin.x = v68;
      v80.origin.y = v67;
      v80.size.width = v65;
      v80.size.height = v66;
      CGRectGetWidth(v80);
      v81.origin.x = v49;
      v81.origin.y = v51;
      v81.size.width = v53;
      v81.size.height = v55;
      CGRectGetWidth(v81);
    }

    UIRectCenteredYInRect();
    thumbnailView = self->_thumbnailView;
    UIRectRoundToScale();
    [(UIImageView *)thumbnailView setFrame:?];
    v57 = self->_thumbnailView;

    [(UIImageView *)v57 setAlpha:0.0];
  }
}

- (void)_prepareForTransitionToStage:(int64_t)stage
{
  [(NCFullScreenStagingBannerView *)self _configureInitialViewsForStage:?];
  [(NCFullScreenStagingBannerView *)self _updateWithStaticContentForStage:stage];
  if (stage == 2)
  {

    [(NCFullScreenStagingBannerView *)self _prepareForTransitionToDetailStage];
  }

  else if (stage == 1)
  {

    [(NCFullScreenStagingBannerView *)self _prepareForTransitionToBriefStage];
  }
}

- (void)_layoutForBriefStageWithSettings:(id)settings completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  v7 = dispatch_group_create();
  [(NCFullScreenStagingBannerView *)self bounds];
  traitCollection = [(NCFullScreenStagingBannerView *)self traitCollection];
  [traitCollection displayScale];
  v93 = v9;

  BSRectWithSize();
  v11 = v10;
  v89 = v10;
  v91 = v12;
  v13 = v12;
  v87 = v14;
  recta = v15;
  [(BSUIPartialStylingLabelView *)self->_briefPrimaryLabelView frame];
  v17 = v16;
  v86 = v18;
  v20 = v19;
  v22 = v21;
  [(UILabel *)self->_briefSecondaryLabel frame];
  v24 = v23;
  v85 = v25;
  v27 = v26;
  v29 = v28;
  v150.origin.x = v11;
  v150.origin.y = v13;
  v150.size.width = v87;
  v150.size.height = recta;
  CGRectGetHeight(v150);
  v151.origin.x = v17;
  v151.origin.y = v86;
  v151.size.width = v20;
  v151.size.height = v22;
  CGRectGetHeight(v151);
  v152.origin.x = v24;
  v152.origin.y = v85;
  v152.size.width = v27;
  v152.size.height = v29;
  CGRectGetHeight(v152);
  v153.origin.y = v91;
  v153.origin.x = v89;
  v153.size.width = v87;
  v153.size.height = recta;
  CGRectGetWidth(v153);
  BSRectWithSize();
  UIRectCenteredYInRect();
  CGRectGetMinY(v154);
  UIRectCenteredXInRectScale();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  objc_initWeak(location, self->_badgedIconView);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke;
  aBlock[3] = &unk_27836F9A8;
  v38 = settingsCopy;
  v146 = v38;
  v39 = v7;
  v147 = v39;
  objc_copyWeak(v148, location);
  v148[1] = v31;
  v148[2] = v33;
  v148[3] = v35;
  v148[4] = v37;
  v40 = _Block_copy(aBlock);
  v141[0] = MEMORY[0x277D85DD0];
  v141[1] = 3221225472;
  v141[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_4;
  v141[3] = &unk_27836F9F8;
  v41 = v38;
  v142 = v41;
  v42 = v39;
  v143 = v42;
  objc_copyWeak(&v144, location);
  v92 = _Block_copy(v141);
  objc_initWeak(&from, self->_grabberView);
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 3221225472;
  v136[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_7;
  v136[3] = &unk_27836F9F8;
  v43 = v41;
  v137 = v43;
  v44 = v42;
  v138 = v44;
  objc_copyWeak(&v139, &from);
  v90 = _Block_copy(v136);
  objc_initWeak(&v135, self);
  v133[0] = MEMORY[0x277D85DD0];
  v133[1] = 3221225472;
  v133[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_10;
  v133[3] = &unk_27836FA20;
  objc_copyWeak(&v134, &v135);
  rect = _Block_copy(v133);
  v88 = v40;
  if (v43)
  {
    [(UIViewFloatAnimatableProperty *)self->_floatAnimatablePropertyForBriefIcon invalidate];
    v45 = MEMORY[0x277D75D38];
    v46 = objc_alloc(MEMORY[0x277CBEB98]);
    v47 = MEMORY[0x277CCABB0];
    [v43 briefIconPositionMilestone];
    v48 = [v47 numberWithDouble:?];
    v49 = MEMORY[0x277CCABB0];
    [v43 briefIconScaleMilestone];
    v50 = [v49 numberWithDouble:?];
    v51 = MEMORY[0x277CCABB0];
    [v43 briefGrabberMilestone];
    v52 = [v51 numberWithDouble:?];
    v53 = [v46 initWithObjects:{v48, v50, v52, 0}];
    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 3221225472;
    v127[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_11;
    v127[3] = &unk_27836FA48;
    v129 = rect;
    v128 = v43;
    v130 = v88;
    v131 = v92;
    v132 = v90;
    v54 = [v45 unui_animatablePropertyWithProgressMilestones:v53 block:v127];
    floatAnimatablePropertyForBriefIcon = self->_floatAnimatablePropertyForBriefIcon;
    self->_floatAnimatablePropertyForBriefIcon = v54;
  }

  else
  {
    (*(v40 + 2))(v40);
    v92[2](v92);
    v90[2](v90);
  }

  objc_initWeak(&v126, self->_floatAnimatablePropertyForBriefIcon);
  briefIconOpacitySettings = [v43 briefIconOpacitySettings];
  v122[0] = MEMORY[0x277D85DD0];
  v122[1] = 3221225472;
  v122[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_12;
  v122[3] = &unk_27836FA70;
  v123 = v44;
  objc_copyWeak(&v124, location);
  objc_copyWeak(&v125, &v126);
  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v118[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_13;
  v118[3] = &unk_27836FA98;
  v57 = v123;
  v119 = v57;
  objc_copyWeak(&v120, &v135);
  objc_copyWeak(&v121, &v126);
  NCPerformActionsAnimatingIfNecessary(briefIconOpacitySettings, v122, v118);

  *&v155.origin.x = v31;
  *&v155.origin.y = v33;
  *&v155.size.width = v35;
  *&v155.size.height = v37;
  CGRectGetMaxY(v155);
  UIRectCenteredXInRectScale();
  x = v156.origin.x;
  y = v156.origin.y;
  width = v156.size.width;
  height = v156.size.height;
  CGRectGetMaxY(v156);
  UIRectCenteredXInRectScale();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  objc_initWeak(&v117, self->_briefPrimaryLabelView);
  objc_initWeak(&v116, self->_briefSecondaryLabel);
  v111[0] = MEMORY[0x277D85DD0];
  v111[1] = 3221225472;
  v111[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_14;
  v111[3] = &unk_27836FAE8;
  v70 = v43;
  v112 = v70;
  v71 = v57;
  v113 = v71;
  objc_copyWeak(&v114, &v117);
  v115[1] = *&x;
  v115[2] = *&y;
  v115[3] = *&width;
  v115[4] = *&height;
  objc_copyWeak(v115, &v116);
  v115[5] = v63;
  v115[6] = v65;
  v115[7] = v67;
  v115[8] = v69;
  v72 = _Block_copy(v111);
  v73 = v72;
  if (v43)
  {
    [(UIViewFloatAnimatableProperty *)self->_floatAnimatablePropertyForBriefTextPosition invalidate];
    v74 = MEMORY[0x277D75D38];
    v75 = objc_alloc(MEMORY[0x277CBEB98]);
    v76 = MEMORY[0x277CCABB0];
    [v70 briefTextPositionMilestone];
    v77 = [v76 numberWithDouble:?];
    v78 = [v75 initWithObjects:{v77, 0}];
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_17;
    v108[3] = &unk_27836FB10;
    v109 = rect;
    v110 = v73;
    v79 = [v74 unui_animatablePropertyWithProgressMilestones:v78 block:v108];
    floatAnimatablePropertyForBriefTextPosition = self->_floatAnimatablePropertyForBriefTextPosition;
    self->_floatAnimatablePropertyForBriefTextPosition = v79;
  }

  else
  {
    (*(v72 + 2))(v72);
  }

  objc_initWeak(&v107, self->_floatAnimatablePropertyForBriefTextPosition);
  briefTextOpacitySettings = [v70 briefTextOpacitySettings];
  v102[0] = MEMORY[0x277D85DD0];
  v102[1] = 3221225472;
  v102[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_18;
  v102[3] = &unk_27836FB38;
  v103 = v71;
  objc_copyWeak(&v104, &v117);
  objc_copyWeak(&v105, &v116);
  objc_copyWeak(&v106, &v107);
  v98[0] = MEMORY[0x277D85DD0];
  v98[1] = 3221225472;
  v98[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_19;
  v98[3] = &unk_27836FA98;
  v82 = v103;
  v99 = v82;
  objc_copyWeak(&v100, &v135);
  objc_copyWeak(&v101, &v107);
  NCPerformActionsAnimatingIfNecessary(briefTextOpacitySettings, v102, v98);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_20;
  block[3] = &unk_27836F910;
  v97 = completionCopy;
  v83 = completionCopy;
  dispatch_group_notify(v82, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v101);
  objc_destroyWeak(&v100);

  objc_destroyWeak(&v106);
  objc_destroyWeak(&v105);
  objc_destroyWeak(&v104);

  objc_destroyWeak(&v107);
  objc_destroyWeak(v115);
  objc_destroyWeak(&v114);

  objc_destroyWeak(&v116);
  objc_destroyWeak(&v117);
  objc_destroyWeak(&v121);
  objc_destroyWeak(&v120);

  objc_destroyWeak(&v125);
  objc_destroyWeak(&v124);

  objc_destroyWeak(&v126);
  objc_destroyWeak(&v134);
  objc_destroyWeak(&v135);

  objc_destroyWeak(&v139);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v144);
  objc_destroyWeak(v148);

  objc_destroyWeak(location);
}

void __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) briefIconPositionSettings];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_2;
  v6[3] = &unk_27836F958;
  v7 = *(a1 + 40);
  objc_copyWeak(&v8, (a1 + 48));
  v3 = *(a1 + 72);
  v9 = *(a1 + 56);
  v10 = v3;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_3;
  v4[3] = &unk_27836F980;
  v5 = *(a1 + 40);
  NCPerformActionsAnimatingIfNecessary(v2, v6, v4);

  objc_destroyWeak(&v8);
}

void __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_2(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  PLSetViewFrameMaintainingTransform();
}

void __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_4(id *a1)
{
  v2 = [a1[4] briefIconScaleSettings];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_5;
  v5[3] = &unk_27836F9D0;
  v6 = a1[5];
  objc_copyWeak(&v7, a1 + 6);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_6;
  v3[3] = &unk_27836F980;
  v4 = a1[5];
  NCPerformActionsAnimatingIfNecessary(v2, v5, v3);

  objc_destroyWeak(&v7);
}

void __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_5(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  [WeakRetained setTransform:v4];
}

void __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_7(id *a1)
{
  v2 = [a1[4] briefGrabberSettings];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_8;
  v5[3] = &unk_27836F9D0;
  v6 = a1[5];
  objc_copyWeak(&v7, a1 + 6);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_9;
  v3[3] = &unk_27836F980;
  v4 = a1[5];
  NCPerformActionsAnimatingIfNecessary(v2, v5, v3);

  objc_destroyWeak(&v7);
}

void __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_8(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setWeighting:1.0];
}

BOOL __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained stage] == 1;

  return v2;
}

uint64_t __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_11(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    [*(a1 + 32) briefIconPositionMilestone];
    if (BSFloatApproximatelyEqualToFloat())
    {
      (*(*(a1 + 48) + 16))();
    }

    [*(a1 + 32) briefIconScaleMilestone];
    if (BSFloatApproximatelyEqualToFloat())
    {
      (*(*(a1 + 56) + 16))();
    }

    [*(a1 + 32) briefGrabberMilestone];
    result = BSFloatApproximatelyEqualToFloat();
    if (result)
    {
      v3 = *(*(a1 + 64) + 16);

      return v3();
    }
  }

  return result;
}

void __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_12(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAlpha:1.0];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 setValue:1.0];
}

void __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_13(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[61];
    v6 = WeakRetained;
    v4 = objc_loadWeakRetained((a1 + 48));

    WeakRetained = v6;
    if (v3 == v4)
    {
      v5 = v6[61];
      v6[61] = 0;

      WeakRetained = v6;
    }
  }
}

void __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_14(uint64_t a1)
{
  v2 = [*(a1 + 32) briefTextPositionSettings];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_15;
  v7[3] = &unk_27836FAC0;
  v8 = *(a1 + 40);
  objc_copyWeak(&v9, (a1 + 48));
  v3 = *(a1 + 80);
  v11 = *(a1 + 64);
  v12 = v3;
  objc_copyWeak(&v10, (a1 + 56));
  v4 = *(a1 + 112);
  v13 = *(a1 + 96);
  v14 = v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_16;
  v5[3] = &unk_27836F980;
  v6 = *(a1 + 40);
  NCPerformActionsAnimatingIfNecessary(v2, v7, v5);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
}

void __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_15(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 setFrame:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
}

uint64_t __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_17(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_18(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAlpha:1.0];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 setAlpha:1.0];

  v4 = objc_loadWeakRetained((a1 + 56));
  [v4 setValue:1.0];
}

void __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_19(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[62];
    v6 = WeakRetained;
    v4 = objc_loadWeakRetained((a1 + 48));

    WeakRetained = v6;
    if (v3 == v4)
    {
      v5 = v6[62];
      v6[62] = 0;

      WeakRetained = v6;
    }
  }
}

uint64_t __77__NCFullScreenStagingBannerView__layoutForBriefStageWithSettings_completion___block_invoke_20(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)_layoutForDetailStageWithSettings:(id)settings completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  v7 = dispatch_group_create();
  [(NCFullScreenStagingBannerView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  traitCollection = [(NCFullScreenStagingBannerView *)self traitCollection];
  [traitCollection displayScale];
  v88 = v17;

  [(BSUIPartialStylingLabelView *)self->_briefPrimaryLabelView frame];
  v95 = v19;
  v97 = v18;
  v21 = v20;
  v93 = v22;
  v184.origin.x = v9;
  v184.origin.y = v11;
  v184.size.width = v13;
  v184.size.height = v15;
  Height = CGRectGetHeight(v184);
  [(UILabel *)self->_briefSecondaryLabel frame];
  v89 = v25;
  v91 = v24;
  v27 = v26;
  v29 = v28;
  v86 = v11;
  v87 = v9;
  v185.origin.x = v9;
  v185.origin.y = v11;
  v30 = v13;
  v185.size.width = v13;
  rect = v15;
  v185.size.height = v15;
  v31 = CGRectGetHeight(v185);
  objc_initWeak(location, self->_briefPrimaryLabelView);
  objc_initWeak(&from, self->_briefSecondaryLabel);
  detailOutgoingTextPositionSettings = [settingsCopy detailOutgoingTextPositionSettings];
  v178[0] = MEMORY[0x277D85DD0];
  v178[1] = 3221225472;
  v178[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke;
  v178[3] = &unk_27836FAC0;
  v179 = v7;
  objc_copyWeak(&v180, location);
  v181[1] = v97;
  *&v181[2] = v21 + Height * 0.0703986429;
  v181[3] = v95;
  v181[4] = v93;
  objc_copyWeak(v181, &from);
  v181[5] = v91;
  *&v181[6] = v27 + v31 * 0.0703986429;
  v181[7] = v89;
  v181[8] = v29;
  v176[0] = MEMORY[0x277D85DD0];
  v176[1] = 3221225472;
  v176[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_2;
  v176[3] = &unk_27836F980;
  v33 = v179;
  v177 = v33;
  NCPerformActionsAnimatingIfNecessary(detailOutgoingTextPositionSettings, v178, v176);

  detailOutgoingTextOpacitySettings = [settingsCopy detailOutgoingTextOpacitySettings];
  v172[0] = MEMORY[0x277D85DD0];
  v172[1] = 3221225472;
  v172[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_3;
  v172[3] = &unk_27836FA70;
  v173 = v33;
  objc_copyWeak(&v174, location);
  objc_copyWeak(&v175, &from);
  v170[0] = MEMORY[0x277D85DD0];
  v170[1] = 3221225472;
  v170[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_4;
  v170[3] = &unk_27836F980;
  v35 = v173;
  v171 = v35;
  NCPerformActionsAnimatingIfNecessary(detailOutgoingTextOpacitySettings, v172, v170);

  [(NCBadgedIconView *)self->_badgedIconView center];
  UIRectGetCenter();
  UIPointRoundToScale();
  v37 = v36;
  v39 = v38;
  objc_initWeak(&v169, self->_badgedIconView);
  detailIconPositionSettings = [settingsCopy detailIconPositionSettings];
  v166[0] = MEMORY[0x277D85DD0];
  v166[1] = 3221225472;
  v166[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_5;
  v166[3] = &unk_27836FB60;
  v167 = v35;
  objc_copyWeak(v168, &v169);
  v168[1] = v37;
  v168[2] = v39;
  v164[0] = MEMORY[0x277D85DD0];
  v164[1] = 3221225472;
  v164[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_6;
  v164[3] = &unk_27836F980;
  v41 = v167;
  v165 = v41;
  NCPerformActionsAnimatingIfNecessary(detailIconPositionSettings, v166, v164);

  traitCollection2 = [(NCFullScreenStagingBannerView *)self traitCollection];
  layoutDirection = [traitCollection2 layoutDirection];

  [(NCFullScreenStagingBannerView *)self safeAreaInsets];
  if (layoutDirection == 1)
  {
    v46 = v45;
    v186.origin.x = v87;
    v186.origin.y = v86;
    v186.size.width = v30;
    v186.size.height = rect;
    v47 = CGRectGetMaxX(v186) - v46;
    v48 = -1.0;
  }

  else
  {
    v47 = v44;
    v48 = 1.0;
  }

  objc_initWeak(&v163, self);
  objc_initWeak(&v162, self->_dateLabel);
  objc_initWeak(&v161, self->_detailPrimaryLabel);
  objc_initWeak(&v160, self->_thumbnailView);
  v187.origin.x = v87;
  v187.origin.y = v86;
  v187.size.width = v30;
  v187.size.height = rect;
  v49 = CGRectGetHeight(v187);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_7;
  aBlock[3] = &__block_descriptor_48_e16_v16__0__UIView_8l;
  *&aBlock[4] = v49 * 0.00848176421;
  aBlock[5] = v88;
  v50 = _Block_copy(aBlock);
  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 3221225472;
  v152[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_8;
  v152[3] = &unk_27836FBD0;
  v51 = settingsCopy;
  v153 = v51;
  v52 = v41;
  v154 = v52;
  v53 = v50;
  v155 = v53;
  objc_copyWeak(&v156, &v162);
  objc_copyWeak(&v157, &v161);
  objc_copyWeak(&v158, &v160);
  v54 = _Block_copy(v152);
  v146[0] = MEMORY[0x277D85DD0];
  v146[1] = 3221225472;
  v146[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_11;
  v146[3] = &unk_27836FBF8;
  v55 = v51;
  v147 = v55;
  v56 = v52;
  v148 = v56;
  objc_copyWeak(&v149, &v162);
  objc_copyWeak(&v150, &v161);
  objc_copyWeak(&v151, &v160);
  recta = _Block_copy(v146);
  objc_initWeak(&v145, self->_detailSecondaryLabel);
  v140[0] = MEMORY[0x277D85DD0];
  v140[1] = 3221225472;
  v140[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_14;
  v140[3] = &unk_27836FC48;
  v57 = v55;
  v141 = v57;
  v58 = v56;
  v142 = v58;
  v90 = v53;
  v143 = v90;
  objc_copyWeak(&v144, &v145);
  v98 = _Block_copy(v140);
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 3221225472;
  v136[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_17;
  v136[3] = &unk_27836F9F8;
  v59 = v57;
  v137 = v59;
  v60 = v58;
  v138 = v60;
  objc_copyWeak(&v139, &v145);
  v96 = _Block_copy(v136);
  v130 = 0;
  v131 = &v130;
  v132 = 0x3042000000;
  v133 = __Block_byref_object_copy_;
  v134 = __Block_byref_object_dispose_;
  v135 = 0;
  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 3221225472;
  v124[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_35;
  v124[3] = &unk_27836FCC0;
  v61 = v59;
  v125 = v61;
  v92 = v60;
  v126 = v92;
  objc_copyWeak(&v128, &v169);
  *&v129[1] = v47 + v48 * 42.0;
  v129[2] = v39;
  v127 = &v130;
  objc_copyWeak(v129, &v163);
  v94 = _Block_copy(v124);
  if (v61)
  {
    v122[0] = MEMORY[0x277D85DD0];
    v122[1] = 3221225472;
    v122[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_4_38;
    v122[3] = &unk_27836FA20;
    objc_copyWeak(&v123, &v163);
    v62 = _Block_copy(v122);
    [(UIViewFloatAnimatableProperty *)self->_floatAnimatablePropertyForDetailText invalidate];
    v63 = MEMORY[0x277D75D38];
    v64 = objc_alloc(MEMORY[0x277CBEB98]);
    v65 = MEMORY[0x277CCABB0];
    [v61 detailTextMilestone];
    v66 = [v65 numberWithDouble:?];
    v67 = MEMORY[0x277CCABB0];
    [v61 detailSecondaryTextMilestone];
    v68 = [v67 numberWithDouble:?];
    v69 = [v64 initWithObjects:{v66, v68, 0}];
    v115[0] = MEMORY[0x277D85DD0];
    v115[1] = 3221225472;
    v115[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_5_39;
    v115[3] = &unk_27836FCE8;
    v70 = v62;
    v117 = v70;
    v71 = v61;
    v116 = v71;
    v118 = v54;
    v119 = recta;
    v120 = v98;
    v121 = v96;
    v72 = [v63 unui_animatablePropertyWithProgressMilestones:v69 block:v115];
    floatAnimatablePropertyForDetailText = self->_floatAnimatablePropertyForDetailText;
    self->_floatAnimatablePropertyForDetailText = v72;

    objc_storeWeak(v131 + 5, self->_floatAnimatablePropertyForDetailText);
    [(UIViewFloatAnimatableProperty *)self->_floatAnimatablePropertyForDetailIconPosition invalidate];
    v74 = MEMORY[0x277D75D38];
    v75 = objc_alloc(MEMORY[0x277CBEB98]);
    v76 = MEMORY[0x277CCABB0];
    [v71 detailIconPositionMilestone];
    v77 = [v76 numberWithDouble:?];
    v78 = [v75 initWithObjects:{v77, 0}];
    v112[0] = MEMORY[0x277D85DD0];
    v112[1] = 3221225472;
    v112[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_6_40;
    v112[3] = &unk_27836FB10;
    v79 = v70;
    v113 = v79;
    v114 = v94;
    v80 = [v74 unui_animatablePropertyWithProgressMilestones:v78 block:v112];
    floatAnimatablePropertyForDetailIconPosition = self->_floatAnimatablePropertyForDetailIconPosition;
    self->_floatAnimatablePropertyForDetailIconPosition = v80;

    objc_destroyWeak(&v123);
  }

  else
  {
    v54[2](v54);
    recta[2]();
    v98[2]();
    v96[2]();
    v94[2]();
  }

  objc_initWeak(&v111, self->_floatAnimatablePropertyForDetailIconPosition);
  detailIconScaleSettings = [v61 detailIconScaleSettings];
  v107[0] = MEMORY[0x277D85DD0];
  v107[1] = 3221225472;
  v107[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_7_41;
  v107[3] = &unk_27836FA70;
  v108 = v92;
  objc_copyWeak(&v109, &v169);
  objc_copyWeak(&v110, &v111);
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_8_42;
  v103[3] = &unk_27836FA98;
  v83 = v108;
  v104 = v83;
  objc_copyWeak(&v105, &v163);
  objc_copyWeak(&v106, &v111);
  NCPerformActionsAnimatingIfNecessary(detailIconScaleSettings, v107, v103);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_9_43;
  block[3] = &unk_27836F910;
  v102 = completionCopy;
  v84 = completionCopy;
  dispatch_group_notify(v83, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v106);
  objc_destroyWeak(&v105);

  objc_destroyWeak(&v110);
  objc_destroyWeak(&v109);

  objc_destroyWeak(&v111);
  objc_destroyWeak(v129);
  objc_destroyWeak(&v128);

  _Block_object_dispose(&v130, 8);
  objc_destroyWeak(&v135);

  objc_destroyWeak(&v139);
  objc_destroyWeak(&v144);

  objc_destroyWeak(&v145);
  objc_destroyWeak(&v151);
  objc_destroyWeak(&v150);
  objc_destroyWeak(&v149);

  objc_destroyWeak(&v158);
  objc_destroyWeak(&v157);
  objc_destroyWeak(&v156);

  objc_destroyWeak(&v160);
  objc_destroyWeak(&v161);
  objc_destroyWeak(&v162);
  objc_destroyWeak(&v163);

  objc_destroyWeak(v168);
  objc_destroyWeak(&v169);

  objc_destroyWeak(&v175);
  objc_destroyWeak(&v174);

  objc_destroyWeak(v181);
  objc_destroyWeak(&v180);

  objc_destroyWeak(&from);
  objc_destroyWeak(location);
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 setFrame:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_3(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAlpha:0.0];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 setAlpha:0.0];
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_5(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCenter:{*(a1 + 48), *(a1 + 56)}];
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_7(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    [v2 frame];
    UIRectRoundToScale();
    [v2 setFrame:?];
  }
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_8(id *a1)
{
  v2 = [a1[4] detailTextPositionSettings];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_9;
  v5[3] = &unk_27836FBA8;
  v6 = a1[5];
  v7 = a1[6];
  objc_copyWeak(&v8, a1 + 7);
  objc_copyWeak(&v9, a1 + 8);
  objc_copyWeak(&v10, a1 + 9);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_10;
  v3[3] = &unk_27836F980;
  v4 = a1[5];
  NCPerformActionsAnimatingIfNecessary(v2, v5, v3);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_9(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(v2 + 16))(v2, WeakRetained);

  v4 = *(a1 + 40);
  v5 = objc_loadWeakRetained((a1 + 56));
  (*(v4 + 16))(v4, v5);

  v6 = *(a1 + 40);
  v7 = objc_loadWeakRetained((a1 + 64));
  (*(v6 + 16))(v6, v7);
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_11(id *a1)
{
  v2 = [a1[4] detailTextOpacitySettings];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_12;
  v5[3] = &unk_27836FB38;
  v6 = a1[5];
  objc_copyWeak(&v7, a1 + 6);
  objc_copyWeak(&v8, a1 + 7);
  objc_copyWeak(&v9, a1 + 8);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_13;
  v3[3] = &unk_27836F980;
  v4 = a1[5];
  NCPerformActionsAnimatingIfNecessary(v2, v5, v3);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_12(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAlpha:0.71];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 setAlpha:1.0];

  v4 = objc_loadWeakRetained((a1 + 56));
  [v4 setAlpha:1.0];
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_14(id *a1)
{
  v2 = [a1[4] detailTextPositionSettings];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_15;
  v5[3] = &unk_27836FC20;
  v6 = a1[5];
  v7 = a1[6];
  objc_copyWeak(&v8, a1 + 7);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_16;
  v3[3] = &unk_27836F980;
  v4 = a1[5];
  NCPerformActionsAnimatingIfNecessary(v2, v5, v3);

  objc_destroyWeak(&v8);
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_15(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(v2 + 16))(v2, WeakRetained);
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_17(id *a1)
{
  v2 = [a1[4] detailTextOpacitySettings];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_18;
  v5[3] = &unk_27836F9D0;
  v6 = a1[5];
  objc_copyWeak(&v7, a1 + 6);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_19;
  v3[3] = &unk_27836F980;
  v4 = a1[5];
  NCPerformActionsAnimatingIfNecessary(v2, v5, v3);

  objc_destroyWeak(&v7);
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_18(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAlpha:1.0];
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_35(uint64_t a1)
{
  v2 = [*(a1 + 32) detailIconPositionSettings];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_2_36;
  v7[3] = &unk_27836FC70;
  v8 = *(a1 + 40);
  objc_copyWeak(&v10, (a1 + 56));
  v11 = *(a1 + 72);
  v9 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_3_37;
  v3[3] = &unk_27836FC98;
  v4 = *(a1 + 40);
  objc_copyWeak(&v6, (a1 + 64));
  v5 = *(a1 + 48);
  NCPerformActionsAnimatingIfNecessary(v2, v7, v3);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v10);
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_2_36(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setCenter:{*(a1 + 56), *(a1 + 64)}];

  v3 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  [v3 setValue:1.0];
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_3_37(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained[64];
    v6 = WeakRetained;
    v4 = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));

    WeakRetained = v6;
    if (v3 == v4)
    {
      v5 = v6[64];
      v6[64] = 0;

      WeakRetained = v6;
    }
  }
}

BOOL __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_4_38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained stage] == 2;

  return v2;
}

uint64_t __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_5_39(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    [*(a1 + 32) detailTextMilestone];
    if (BSFloatApproximatelyEqualToFloat())
    {
      (*(*(a1 + 48) + 16))();
      (*(*(a1 + 56) + 16))();
    }

    [*(a1 + 32) detailSecondaryTextMilestone];
    result = BSFloatApproximatelyEqualToFloat();
    if (result)
    {
      (*(*(a1 + 64) + 16))();
      v3 = *(*(a1 + 72) + 16);

      return v3();
    }
  }

  return result;
}

uint64_t __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_6_40(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_7_41(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  CGAffineTransformMakeScale(&v4, 0.477272727, 0.477272727);
  [WeakRetained setTransform:&v4];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 setValue:1.0];
}

void __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_8_42(uint64_t a1)
{
  dispatch_group_leave(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[63];
    v6 = WeakRetained;
    v4 = objc_loadWeakRetained((a1 + 48));

    WeakRetained = v6;
    if (v3 == v4)
    {
      v5 = v6[63];
      v6[63] = 0;

      WeakRetained = v6;
    }
  }
}

uint64_t __78__NCFullScreenStagingBannerView__layoutForDetailStageWithSettings_completion___block_invoke_9_43(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)_layoutForDismissedStageFromBriefStageWithSettings:(id)settings completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  v8 = dispatch_group_create();
  [(NCFullScreenStagingBannerView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  objc_initWeak(&location, self->_badgedIconView);
  objc_initWeak(&from, self->_grabberView);
  dismissIconOpacitySettings = [settingsCopy dismissIconOpacitySettings];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __95__NCFullScreenStagingBannerView__layoutForDismissedStageFromBriefStageWithSettings_completion___block_invoke;
  v47[3] = &unk_27836FA70;
  v48 = v8;
  objc_copyWeak(&v49, &location);
  objc_copyWeak(&v50, &from);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __95__NCFullScreenStagingBannerView__layoutForDismissedStageFromBriefStageWithSettings_completion___block_invoke_2;
  v45[3] = &unk_27836F980;
  v18 = v48;
  v46 = v18;
  NCPerformActionsAnimatingIfNecessary(dismissIconOpacitySettings, v47, v45);

  objc_initWeak(&v44, self->_briefPrimaryLabelView);
  objc_initWeak(&v43, self->_briefSecondaryLabel);
  dismissTextOpacitySettings = [settingsCopy dismissTextOpacitySettings];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __95__NCFullScreenStagingBannerView__layoutForDismissedStageFromBriefStageWithSettings_completion___block_invoke_3;
  v39[3] = &unk_27836FA70;
  v40 = v18;
  objc_copyWeak(&v41, &v44);
  objc_copyWeak(&v42, &v43);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __95__NCFullScreenStagingBannerView__layoutForDismissedStageFromBriefStageWithSettings_completion___block_invoke_4;
  v37[3] = &unk_27836F980;
  v20 = v40;
  v38 = v20;
  NCPerformActionsAnimatingIfNecessary(dismissTextOpacitySettings, v39, v37);

  v53.origin.x = v10;
  v53.origin.y = v12;
  v53.size.width = v14;
  v53.size.height = v16;
  Height = CGRectGetHeight(v53);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__NCFullScreenStagingBannerView__layoutForDismissedStageFromBriefStageWithSettings_completion___block_invoke_5;
  aBlock[3] = &__block_descriptor_40_e16_v16__0__UIView_8l;
  *&aBlock[4] = Height * 0.0703986429;
  v22 = _Block_copy(aBlock);
  dismissTextPositionSettings = [settingsCopy dismissTextPositionSettings];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __95__NCFullScreenStagingBannerView__layoutForDismissedStageFromBriefStageWithSettings_completion___block_invoke_6;
  v31[3] = &unk_27836FD30;
  v32 = v20;
  v24 = v22;
  v33 = v24;
  objc_copyWeak(&v34, &v44);
  objc_copyWeak(&v35, &v43);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __95__NCFullScreenStagingBannerView__layoutForDismissedStageFromBriefStageWithSettings_completion___block_invoke_7;
  v29[3] = &unk_27836F980;
  v25 = v32;
  v30 = v25;
  NCPerformActionsAnimatingIfNecessary(dismissTextPositionSettings, v31, v29);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__NCFullScreenStagingBannerView__layoutForDismissedStageFromBriefStageWithSettings_completion___block_invoke_8;
  block[3] = &unk_27836F910;
  v28 = completionCopy;
  v26 = completionCopy;
  dispatch_group_notify(v25, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v34);

  objc_destroyWeak(&v42);
  objc_destroyWeak(&v41);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&v44);

  objc_destroyWeak(&v50);
  objc_destroyWeak(&v49);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __95__NCFullScreenStagingBannerView__layoutForDismissedStageFromBriefStageWithSettings_completion___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAlpha:0.0];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 setWeighting:0.0];
}

void __95__NCFullScreenStagingBannerView__layoutForDismissedStageFromBriefStageWithSettings_completion___block_invoke_3(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAlpha:0.0];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 setAlpha:0.0];
}

void __95__NCFullScreenStagingBannerView__layoutForDismissedStageFromBriefStageWithSettings_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 frame];
  [v2 setFrame:?];
}

void __95__NCFullScreenStagingBannerView__layoutForDismissedStageFromBriefStageWithSettings_completion___block_invoke_6(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(v2 + 16))(v2, WeakRetained);

  v4 = *(a1 + 40);
  v5 = objc_loadWeakRetained((a1 + 56));
  (*(v4 + 16))(v4, v5);
}

uint64_t __95__NCFullScreenStagingBannerView__layoutForDismissedStageFromBriefStageWithSettings_completion___block_invoke_8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)_layoutForDismissedStageFromDetailStageWithSettings:(id)settings completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  v8 = dispatch_group_create();
  [(NCFullScreenStagingBannerView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  objc_initWeak(&location, self->_badgedIconView);
  objc_initWeak(&from, self->_grabberView);
  dismissIconOpacitySettings = [settingsCopy dismissIconOpacitySettings];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __96__NCFullScreenStagingBannerView__layoutForDismissedStageFromDetailStageWithSettings_completion___block_invoke;
  v53[3] = &unk_27836FA70;
  v54 = v8;
  objc_copyWeak(&v55, &location);
  objc_copyWeak(&v56, &from);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __96__NCFullScreenStagingBannerView__layoutForDismissedStageFromDetailStageWithSettings_completion___block_invoke_2;
  v51[3] = &unk_27836F980;
  v18 = v54;
  v52 = v18;
  NCPerformActionsAnimatingIfNecessary(dismissIconOpacitySettings, v53, v51);

  objc_initWeak(&v50, self->_dateLabel);
  objc_initWeak(&v49, self->_detailPrimaryLabel);
  objc_initWeak(&v48, self->_detailSecondaryLabel);
  objc_initWeak(&v47, self->_thumbnailView);
  dismissTextOpacitySettings = [settingsCopy dismissTextOpacitySettings];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __96__NCFullScreenStagingBannerView__layoutForDismissedStageFromDetailStageWithSettings_completion___block_invoke_3;
  v41[3] = &unk_27836FD58;
  v42 = v18;
  objc_copyWeak(&v43, &v50);
  objc_copyWeak(&v44, &v49);
  objc_copyWeak(&v45, &v48);
  objc_copyWeak(&v46, &v47);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __96__NCFullScreenStagingBannerView__layoutForDismissedStageFromDetailStageWithSettings_completion___block_invoke_4;
  v39[3] = &unk_27836F980;
  v20 = v42;
  v40 = v20;
  NCPerformActionsAnimatingIfNecessary(dismissTextOpacitySettings, v41, v39);

  v59.origin.x = v10;
  v59.origin.y = v12;
  v59.size.width = v14;
  v59.size.height = v16;
  Height = CGRectGetHeight(v59);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__NCFullScreenStagingBannerView__layoutForDismissedStageFromDetailStageWithSettings_completion___block_invoke_5;
  aBlock[3] = &__block_descriptor_40_e16_v16__0__UIView_8l;
  *&aBlock[4] = Height * 0.0703986429;
  v22 = _Block_copy(aBlock);
  dismissTextPositionSettings = [settingsCopy dismissTextPositionSettings];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __96__NCFullScreenStagingBannerView__layoutForDismissedStageFromDetailStageWithSettings_completion___block_invoke_6;
  v31[3] = &unk_27836FD80;
  v32 = v20;
  v24 = v22;
  v33 = v24;
  objc_copyWeak(&v34, &v50);
  objc_copyWeak(&v35, &v49);
  objc_copyWeak(&v36, &v48);
  objc_copyWeak(&v37, &v47);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __96__NCFullScreenStagingBannerView__layoutForDismissedStageFromDetailStageWithSettings_completion___block_invoke_7;
  v29[3] = &unk_27836F980;
  v25 = v32;
  v30 = v25;
  NCPerformActionsAnimatingIfNecessary(dismissTextPositionSettings, v31, v29);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__NCFullScreenStagingBannerView__layoutForDismissedStageFromDetailStageWithSettings_completion___block_invoke_8;
  block[3] = &unk_27836F910;
  v28 = completionCopy;
  v26 = completionCopy;
  dispatch_group_notify(v25, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v34);

  objc_destroyWeak(&v46);
  objc_destroyWeak(&v45);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&v43);

  objc_destroyWeak(&v47);
  objc_destroyWeak(&v48);
  objc_destroyWeak(&v49);
  objc_destroyWeak(&v50);

  objc_destroyWeak(&v56);
  objc_destroyWeak(&v55);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __96__NCFullScreenStagingBannerView__layoutForDismissedStageFromDetailStageWithSettings_completion___block_invoke(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAlpha:0.0];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 setWeighting:0.0];
}

void __96__NCFullScreenStagingBannerView__layoutForDismissedStageFromDetailStageWithSettings_completion___block_invoke_3(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAlpha:0.0];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 setAlpha:0.0];

  v4 = objc_loadWeakRetained((a1 + 56));
  [v4 setAlpha:0.0];

  v5 = objc_loadWeakRetained((a1 + 64));
  [v5 setAlpha:0.0];
}

void __96__NCFullScreenStagingBannerView__layoutForDismissedStageFromDetailStageWithSettings_completion___block_invoke_5(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    [v2 frame];
    [v2 setFrame:?];
  }
}

void __96__NCFullScreenStagingBannerView__layoutForDismissedStageFromDetailStageWithSettings_completion___block_invoke_6(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(v2 + 16))(v2, WeakRetained);

  v4 = *(a1 + 40);
  v5 = objc_loadWeakRetained((a1 + 56));
  (*(v4 + 16))(v4, v5);

  v6 = *(a1 + 40);
  v7 = objc_loadWeakRetained((a1 + 64));
  (*(v6 + 16))(v6, v7);

  v8 = *(a1 + 40);
  v9 = objc_loadWeakRetained((a1 + 72));
  (*(v8 + 16))(v8, v9);
}

uint64_t __96__NCFullScreenStagingBannerView__layoutForDismissedStageFromDetailStageWithSettings_completion___block_invoke_8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (CGRect)_contentFrameForActiveStage
{
  stage = self->_stage;
  if (stage == 1)
  {
    [(NCBadgedIconView *)self->_badgedIconView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(BSUIPartialStylingLabelView *)self->_briefPrimaryLabelView frame];
    v69.origin.x = v12;
    v69.origin.y = v13;
    v69.size.width = v14;
    v69.size.height = v15;
    v58.origin.x = v5;
    v58.origin.y = v7;
    v58.size.width = v9;
    v58.size.height = v11;
    v59 = CGRectUnion(v58, v69);
    x = v59.origin.x;
    y = v59.origin.y;
    width = v59.size.width;
    height = v59.size.height;
    p_briefSecondaryLabel = &self->_briefSecondaryLabel;
LABEL_5:
    [*p_briefSecondaryLabel frame];
    v73.origin.x = v50;
    v73.origin.y = v51;
    v73.size.width = v52;
    v73.size.height = v53;
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    v67 = CGRectUnion(v66, v73);
    x = v67.origin.x;
    y = v67.origin.y;
    width = v67.size.width;
    height = v67.size.height;
    goto LABEL_7;
  }

  if (stage != 2)
  {
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    goto LABEL_7;
  }

  [(NCBadgedIconView *)self->_badgedIconView frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [(UILabel *)self->_dateLabel frame];
  v70.origin.x = v29;
  v70.origin.y = v30;
  v70.size.width = v31;
  v70.size.height = v32;
  v60.origin.x = v22;
  v60.origin.y = v24;
  v60.size.width = v26;
  v60.size.height = v28;
  v61 = CGRectUnion(v60, v70);
  v33 = v61.origin.x;
  v34 = v61.origin.y;
  v35 = v61.size.width;
  v36 = v61.size.height;
  [(UILabel *)self->_detailPrimaryLabel frame];
  v71.origin.x = v37;
  v71.origin.y = v38;
  v71.size.width = v39;
  v71.size.height = v40;
  v62.origin.x = v33;
  v62.origin.y = v34;
  v62.size.width = v35;
  v62.size.height = v36;
  v63 = CGRectUnion(v62, v71);
  v41 = v63.origin.x;
  v42 = v63.origin.y;
  v43 = v63.size.width;
  v44 = v63.size.height;
  [(UILabel *)self->_detailSecondaryLabel frame];
  v72.origin.x = v45;
  v72.origin.y = v46;
  v72.size.width = v47;
  v72.size.height = v48;
  v64.origin.x = v41;
  v64.origin.y = v42;
  v64.size.width = v43;
  v64.size.height = v44;
  v65 = CGRectUnion(v64, v72);
  x = v65.origin.x;
  y = v65.origin.y;
  width = v65.size.width;
  height = v65.size.height;
  p_briefSecondaryLabel = &self->_thumbnailView;
  image = [(UIImageView *)self->_thumbnailView image];

  if (image)
  {
    goto LABEL_5;
  }

LABEL_7:
  v54 = x;
  v55 = y;
  v56 = width;
  v57 = height;
  result.size.height = v57;
  result.size.width = v56;
  result.origin.y = v55;
  result.origin.x = v54;
  return result;
}

- (CGRect)_contentHitRectForActiveStage
{
  [(NCFullScreenStagingBannerView *)self _contentFrameForActiveStage];
  if (CGRectIsEmpty(v31))
  {
    v3 = *MEMORY[0x277CBF3A0];
    v4 = *(MEMORY[0x277CBF3A0] + 8);
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    v6 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    traitCollection = [(NCFullScreenStagingBannerView *)self traitCollection];
    layoutDirection = [traitCollection layoutDirection];

    [(NCUNUIKitPrototypeSettings *)self->_settings contentHitRectTopMargin];
    settings = self->_settings;
    if (layoutDirection == 1)
    {
      [(NCUNUIKitPrototypeSettings *)settings contentHitRectLeadingMargin];
      [(NCUNUIKitPrototypeSettings *)self->_settings contentHitRectBottomMargin];
      [(NCUNUIKitPrototypeSettings *)self->_settings contentHitRectTrailingMargin];
    }

    else
    {
      [(NCUNUIKitPrototypeSettings *)settings contentHitRectTrailingMargin];
      [(NCUNUIKitPrototypeSettings *)self->_settings contentHitRectBottomMargin];
      [(NCUNUIKitPrototypeSettings *)self->_settings contentHitRectLeadingMargin];
    }

    UIRectInset();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(NCFullScreenStagingBannerView *)self bounds];
    v34.origin.x = v18;
    v34.origin.y = v19;
    v34.size.width = v20;
    v34.size.height = v21;
    v32.origin.x = v11;
    v32.origin.y = v13;
    v32.size.width = v15;
    v32.size.height = v17;
    CGRectIntersection(v32, v34);
    traitCollection2 = [(NCFullScreenStagingBannerView *)self traitCollection];
    [traitCollection2 displayScale];
    UIRectRoundToScale();
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
  }

  v27 = v3;
  v28 = v4;
  v29 = v5;
  v30 = v6;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)_layoutContentHitRectViewForActiveStage
{
  contentHitRectView = self->_contentHitRectView;
  if (contentHitRectView)
  {
    [(NCFullScreenStagingBannerView *)self _contentHitRectForActiveStage];

    [(UIView *)contentHitRectView setFrame:?];
  }
}

- (void)_layoutForStage:(int64_t)stage fromStage:(int64_t)fromStage settings:(id)settings completion:(id)completion
{
  settingsCopy = settings;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__NCFullScreenStagingBannerView__layoutForStage_fromStage_settings_completion___block_invoke;
  aBlock[3] = &unk_27836F8E8;
  v12 = completionCopy;
  v24 = v12;
  v13 = _Block_copy(aBlock);
  [(NCFullScreenStagingBannerView *)self _configureContentHitRectViewIfNecessary];
  if (self->_contentHitRectView)
  {
    objc_initWeak(&location, self);
    v14 = MEMORY[0x277D75D18];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __79__NCFullScreenStagingBannerView__layoutForStage_fromStage_settings_completion___block_invoke_2;
    v20[3] = &unk_27836F498;
    objc_copyWeak(&v21, &location);
    [v14 _animateUsingSpringInteractive:0 animations:v20 completion:0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __79__NCFullScreenStagingBannerView__layoutForStage_fromStage_settings_completion___block_invoke_3;
    v17[3] = &unk_27836FDA8;
    objc_copyWeak(&v19, &location);
    v18 = v12;
    v15 = _Block_copy(v17);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    v13 = v15;
  }

  switch(stage)
  {
    case 3:
      layer = [(NCFullScreenStagingBannerView *)self layer];
      [layer setAllowsHitTesting:0];

      if (fromStage == 2)
      {
        [(NCFullScreenStagingBannerView *)self _layoutForDismissedStageFromDetailStageWithSettings:settingsCopy completion:v13];
      }

      else if (fromStage == 1)
      {
        [(NCFullScreenStagingBannerView *)self _layoutForDismissedStageFromBriefStageWithSettings:settingsCopy completion:v13];
      }

      break;
    case 2:
      [(NCFullScreenStagingBannerView *)self _layoutForDetailStageWithSettings:settingsCopy completion:v13];
      break;
    case 1:
      [(NCFullScreenStagingBannerView *)self _layoutForBriefStageWithSettings:settingsCopy completion:v13];
      break;
  }
}

uint64_t __79__NCFullScreenStagingBannerView__layoutForStage_fromStage_settings_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __79__NCFullScreenStagingBannerView__layoutForStage_fromStage_settings_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[66] setAlpha:0.0];
    WeakRetained = v2;
  }
}

void __79__NCFullScreenStagingBannerView__layoutForStage_fromStage_settings_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277D75D18];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__NCFullScreenStagingBannerView__layoutForStage_fromStage_settings_completion___block_invoke_4;
  v8[3] = &unk_27836F498;
  objc_copyWeak(&v9, (a1 + 40));
  [v6 _animateUsingSpringInteractive:0 animations:v8 completion:0];
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, a3);
  }

  objc_destroyWeak(&v9);
}

void __79__NCFullScreenStagingBannerView__layoutForStage_fromStage_settings_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _layoutContentHitRectViewForActiveStage];
    [v2[66] setAlpha:1.0];
    WeakRetained = v2;
  }
}

- (void)_transitionToStage:(int64_t)stage fromStage:(int64_t)fromStage settings:(id)settings completion:(id)completion
{
  v10 = MEMORY[0x277D75D18];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __82__NCFullScreenStagingBannerView__transitionToStage_fromStage_settings_completion___block_invoke;
  v16 = &unk_27836FDD0;
  selfCopy = self;
  stageCopy = stage;
  completionCopy = completion;
  settingsCopy = settings;
  [v10 performWithoutAnimation:&v13];
  [(NCFullScreenStagingBannerView *)self _layoutForStage:stage fromStage:fromStage settings:settingsCopy completion:completionCopy, v13, v14, v15, v16, selfCopy, stageCopy];
}

- (void)_configureTapGestureIfNecessary
{
  if (!self->_tapGesture)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTap_];
    tapGesture = self->_tapGesture;
    self->_tapGesture = v3;

    [(UITapGestureRecognizer *)self->_tapGesture setDelegate:self];
    v5 = self->_tapGesture;

    [(NCFullScreenStagingBannerView *)self addGestureRecognizer:v5];
  }
}

- (void)_handleTap:(id)tap
{
  tapCopy = tap;
  [(NCFullScreenStagingBannerView *)self _contentHitRectForActiveStage];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [tapCopy locationInView:self];
  v14 = v13;
  v16 = v15;

  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  v21.x = v14;
  v21.y = v16;
  v17 = CGRectContainsPoint(v22, v21);
  v18 = &OBJC_IVAR___NCFullScreenStagingBannerView__defaultTapAction;
  if (v17)
  {
    v18 = &OBJC_IVAR___NCFullScreenStagingBannerView__contentTapAction;
  }

  v19 = *(&self->super.super.super.isa + *v18);

  [v19 performWithSender:self target:0];
}

@end