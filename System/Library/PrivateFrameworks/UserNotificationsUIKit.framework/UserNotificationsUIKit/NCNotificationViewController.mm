@interface NCNotificationViewController
+ (id)_primaryTextFont;
- (BOOL)_canPan;
- (BOOL)_setDelegate:(id)delegate;
- (BOOL)_setNotificationRequest:(id)request;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)didForwardNotificationRequestToCustomContent:(id)content;
- (BOOL)isHighlighted;
- (BOOL)restoreInputViews;
- (BOOL)shouldAutorotate;
- (CGAffineTransform)contentTransform;
- (CGSize)_preferredCustomContentSizeForSize:(CGSize)size parentContentContainerBounds:(CGRect)bounds;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize;
- (NCDimmableView)_notificationViewControllerView;
- (NCNotificationListCellDynamicHeightTraits)currentTraits;
- (NCNotificationViewController)initWithNotificationRequest:(id)request revealingAdditionalContentOnPresentation:(BOOL)presentation;
- (NCNotificationViewControllerDelegate)delegate;
- (NSDictionary)notificationUsageTrackingState;
- (NSSet)activeTransitionBlockingAssertions;
- (UIPanGestureRecognizer)customContentHomeAffordanceGestureRecognizer;
- (UIView)associatedView;
- (id)_contentSizeManagingView;
- (id)_customContentProvidingViewControllerCreateIfNecessary;
- (id)_initWithNotificationRequest:(id)request revealingAdditionalContentOnPresentation:(BOOL)presentation;
- (id)_lookViewLoadingIfNecessary:(BOOL)necessary;
- (id)_staticContentProviderLoadingIfNecessary;
- (id)activeTransitionBlockingAssertionForReason:(id)reason;
- (id)containerViewForExpandedContent;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)expandedPlatterPresentationController:(id)controller keyboardAssertionForGestureWindow:(id)window;
- (id)hideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:(id)controller;
- (id)requestTransitionBlockingAssertionWithReason:(id)reason;
- (id)settleHomeAffordanceAnimationBehaviorDescriptionForExpandedPlatterPresentationController:(id)controller;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)unhideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:(id)controller;
- (int64_t)_dateFormatStyle;
- (unint64_t)_maximumNumberOfPrimaryTextLinesForProvidedStaticContent;
- (unint64_t)_maximumNumberOfSecondaryTextLinesForProvidedStaticContent;
- (void)_askDelegateToExecuteAction:(id)action withParameters:(id)parameters animated:(BOOL)animated;
- (void)_executeCancelAction:(BOOL)action;
- (void)_executeClearAction:(BOOL)action;
- (void)_executeCloseAction:(BOOL)action;
- (void)_executeDefaultAction:(BOOL)action;
- (void)_executeNilAction:(BOOL)action;
- (void)_notificationViewControllerViewDidLoad;
- (void)_notifyObserversWithBlock:(id)block;
- (void)_setCustomContentProvidingViewController:(id)controller;
- (void)_setPreferredCustomContentSize:(CGSize)size;
- (void)_setupAuxiliaryOptionsContentProvider;
- (void)_setupCustomContentProvider;
- (void)_setupStaticContentProvider;
- (void)_updatePreferredContentSize;
- (void)_updateScreenCaptureProhibited;
- (void)_updateWithProvidedAuxiliaryOptionsContent;
- (void)_updateWithProvidedStaticContent;
- (void)addObserver:(id)observer;
- (void)configureStackDimmingForTransform:(CGAffineTransform *)transform;
- (void)contentProvider:(id)provider performAction:(id)action animated:(BOOL)animated;
- (void)customContent:(id)content requestPermissionToExecuteAction:(id)action forNotification:(id)notification withUserInfo:(id)info completionHandler:(id)handler;
- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion;
- (void)invalidateContentProviders;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentLongLookAnimated:(BOOL)animated trigger:(int64_t)trigger completion:(id)completion;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)preserveInputViews;
- (void)removeObserver:(id)observer;
- (void)setAllowContentToCrossFade:(BOOL)fade;
- (void)setApparentZDistanceToUser:(int64_t)user;
- (void)setAuxiliaryOptionsContentProvider:(id)provider;
- (void)setBackgroundAlpha:(double)alpha;
- (void)setBackgroundHidden:(BOOL)hidden;
- (void)setCompositeAlpha:(double)alpha;
- (void)setContentAlpha:(double)alpha;
- (void)setContentTransform:(CGAffineTransform *)transform;
- (void)setDateAlpha:(double)alpha;
- (void)setDisableDimming:(BOOL)dimming;
- (void)setGlassMode:(unint64_t)mode;
- (void)setHasUpdatedContent;
- (void)setHideDate:(BOOL)date;
- (void)setInteractionEnabled:(BOOL)enabled;
- (void)setRootScrollVelocity:(double)velocity;
- (void)setStaticContentProvider:(id)provider;
- (void)setUnmanagedBackdropContrast:(BOOL)contrast;
- (void)updateContent;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation NCNotificationViewController

- (NCNotificationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v3 viewWillLayoutSubviews];
  if (self->_notificationRequest)
  {
    if (!self->_staticContentProvider)
    {
      [(NCNotificationViewController *)self _setupStaticContentProvider];
    }

    if (!self->_auxiliaryOptionsContentProvider)
    {
      [(NCNotificationViewController *)self _setupAuxiliaryOptionsContentProvider];
    }
  }
}

- (void)_setupAuxiliaryOptionsContentProvider
{
  if (!self->_auxiliaryOptionsContentProvider)
  {
    delegate = [(NCNotificationViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      notificationRequest = [(NCNotificationViewController *)self notificationRequest];
      v5 = [delegate notificationViewController:self auxiliaryOptionsContentProviderForNotificationRequest:notificationRequest withLongLook:{-[NCNotificationViewController isShortLook](self, "isShortLook") ^ 1}];
    }

    else
    {
      v5 = 0;
    }

    notificationRequest2 = [(NCNotificationViewController *)self notificationRequest];
    options = [notificationRequest2 options];
    displaysActionsInline = [options displaysActionsInline];

    notificationRequest3 = [(NCNotificationViewController *)self notificationRequest];
    defaultEnvironmentActions = [notificationRequest3 defaultEnvironmentActions];
    v11 = [defaultEnvironmentActions count];

    if (displaysActionsInline && v11)
    {
      if (v5)
      {
        if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
        {
          [NCNotificationViewController _setupAuxiliaryOptionsContentProvider];
        }
      }

      v12 = [NCNotificationRequestInlineActionsProvider alloc];
      notificationRequest4 = [(NCNotificationViewController *)self notificationRequest];
      v14 = [(NCNotificationRequestInlineActionsProvider *)v12 initWithNotificationRequest:notificationRequest4 delegate:self];

      v5 = v14;
    }

    [(NCNotificationViewController *)self setAuxiliaryOptionsContentProvider:v5];
  }
}

- (id)_contentSizeManagingView
{
  WeakRetained = objc_loadWeakRetained(&self->_contentSizeManagingView);
  if (!WeakRetained)
  {
    viewIfLoaded = [(NCNotificationViewController *)self viewIfLoaded];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      WeakRetained = viewIfLoaded;
      objc_storeWeak(&self->_contentSizeManagingView, WeakRetained);
    }

    else
    {
      WeakRetained = 0;
    }
  }

  return WeakRetained;
}

- (void)invalidateContentProviders
{
  [(NCNotificationViewController *)self setStaticContentProvider:0];
  [(NCNotificationViewController *)self setAuxiliaryOptionsContentProvider:0];
  view = [(NCNotificationViewController *)self view];
  [view setNeedsLayout];
}

- (void)updateContent
{
  view = [(NCNotificationViewController *)self view];
  [view layoutIfNeeded];
}

- (void)_setupStaticContentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || (-[NCNotificationViewController notificationRequest](self, "notificationRequest"), v4 = objc_claimAutoreleasedReturnValue(), [WeakRetained notificationRequestPresenter:self staticContentProviderForNotificationRequest:v4], v7 = objc_claimAutoreleasedReturnValue(), v4, !v7))
  {
    v5 = [NCNotificationRequestContentProvider alloc];
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    v7 = [(NCNotificationRequestContentProvider *)v5 initWithNotificationRequest:notificationRequest];

    [(NCNotificationRequestContentProvider *)v7 setDelegate:self];
  }

  [(NCNotificationViewController *)self setStaticContentProvider:v7];
}

- (void)_updateWithProvidedStaticContent
{
  _lookViewIfLoaded = [(NCNotificationViewController *)self _lookViewIfLoaded];
  if (_lookViewIfLoaded)
  {
    title = [(NCNotificationStaticContentProviding *)self->_staticContentProvider title];
    [(NCNotificationViewController *)self _updateLookView:_lookViewIfLoaded withTitleFromProvidedStaticContent:title];

    if (objc_opt_respondsToSelector())
    {
      badgedIconDescription = [(NCNotificationStaticContentProviding *)self->_staticContentProvider badgedIconDescription];
      [_lookViewIfLoaded setBadgedIconDescription:badgedIconDescription];
    }

    date = [(NCNotificationStaticContentProviding *)self->_staticContentProvider date];
    [_lookViewIfLoaded setDate:date];

    [_lookViewIfLoaded setDateAllDay:{-[NCNotificationStaticContentProviding isDateAllDay](self->_staticContentProvider, "isDateAllDay")}];
    timeZone = [(NCNotificationStaticContentProviding *)self->_staticContentProvider timeZone];
    [_lookViewIfLoaded setTimeZone:timeZone];

    [_lookViewIfLoaded setDateFormatStyle:{-[NCNotificationViewController _dateFormatStyle](self, "_dateFormatStyle")}];
    primaryText = [(NCNotificationStaticContentProviding *)self->_staticContentProvider primaryText];
    [_lookViewIfLoaded setPrimaryText:primaryText];
    primarySubtitleText = [(NCNotificationStaticContentProviding *)self->_staticContentProvider primarySubtitleText];
    [_lookViewIfLoaded setPrimarySubtitleText:primarySubtitleText];

    secondaryText = [(NCNotificationStaticContentProviding *)self->_staticContentProvider secondaryText];
    [_lookViewIfLoaded setSecondaryText:secondaryText];

    if (objc_opt_respondsToSelector())
    {
      secondaryTextCompact = [(NCNotificationStaticContentProviding *)self->_staticContentProvider secondaryTextCompact];
      [_lookViewIfLoaded setSecondaryTextCompact:secondaryTextCompact];
    }

    if (objc_opt_respondsToSelector())
    {
      secondaryTextGroupCollapsed = [(NCNotificationStaticContentProviding *)self->_staticContentProvider secondaryTextGroupCollapsed];
      [_lookViewIfLoaded setSecondaryTextGroupCollapsed:secondaryTextGroupCollapsed];
    }

    inlineAction = [(NCNotificationStaticContentProviding *)self->_staticContentProvider inlineAction];
    title2 = [inlineAction title];

    objc_initWeak(&location, self);
    if (objc_opt_respondsToSelector())
    {
      if ([title2 length])
      {
        v15 = MEMORY[0x277D750C8];
        inlineAction2 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider inlineAction];
        identifier = [inlineAction2 identifier];
        v34 = MEMORY[0x277D85DD0];
        v35 = 3221225472;
        v36 = __64__NCNotificationViewController__updateWithProvidedStaticContent__block_invoke;
        v37 = &unk_27836F428;
        objc_copyWeak(&v38, &location);
        v18 = [v15 actionWithTitle:title2 image:0 identifier:identifier handler:&v34];

        objc_destroyWeak(&v38);
      }

      else
      {
        v18 = 0;
      }

      [_lookViewIfLoaded setInlineAction:{v18, v34, v35, v36, v37}];
    }

    if (objc_opt_respondsToSelector())
    {
      v19 = MEMORY[0x277CCA898];
      footerText = [(NCNotificationStaticContentProviding *)self->_staticContentProvider footerText];
      v21 = [v19 nc_safeAttributedStringWithString:footerText];

      [_lookViewIfLoaded setFooterText:v21];
    }

    if (objc_opt_respondsToSelector())
    {
      contentSummaryAttributionText = [(NCNotificationStaticContentProviding *)self->_staticContentProvider contentSummaryAttributionText];
      [_lookViewIfLoaded setFooterSummaryAttributionText:contentSummaryAttributionText];
    }

    delegate = [(NCNotificationViewController *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v24 = [delegate importantAdornmentEligibleOptionsForNotificationViewController:self];
    }

    else
    {
      v24 = -1;
    }

    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v25 = [delegate notificationViewControllerRequestCustomPlatterBackgroundView:self];
      [_lookViewIfLoaded setCustomPlatterBackgroundView:v25];
    }

    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      staticContentProvider = self->_staticContentProvider;
      importantTextImageConfiguration = [_lookViewIfLoaded importantTextImageConfiguration];
      v28 = [(NCNotificationStaticContentProviding *)staticContentProvider importantAttributedTextWithImageConfiguration:importantTextImageConfiguration importantAdornmentEligibleOptions:v24];

      [_lookViewIfLoaded setImportantAttributedText:v28];
      importantTextVisualStylingProvider = [(NCNotificationStaticContentProviding *)self->_staticContentProvider importantTextVisualStylingProvider];
      [_lookViewIfLoaded setImportantTextVisualStylingProvider:importantTextVisualStylingProvider];
    }

    else
    {
      v28 = 0;
    }

    if (![v28 length] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      importantText = [(NCNotificationStaticContentProviding *)self->_staticContentProvider importantText];
      [_lookViewIfLoaded setImportantText:importantText];

      importantTextVisualStylingProvider2 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider importantTextVisualStylingProvider];
      [_lookViewIfLoaded setImportantTextVisualStylingProvider:importantTextVisualStylingProvider2];
    }

    if (objc_opt_respondsToSelector())
    {
      thumbnail = [(NCNotificationStaticContentProviding *)self->_staticContentProvider thumbnail];
      [_lookViewIfLoaded setThumbnail:thumbnail];
    }

    if (objc_opt_respondsToSelector())
    {
      [_lookViewIfLoaded setSupportsGlass:{-[NCNotificationStaticContentProviding supportsGlass](self->_staticContentProvider, "supportsGlass")}];
    }

    [_lookViewIfLoaded setMaximumNumberOfPrimaryTextLines:{-[NCNotificationViewController _maximumNumberOfPrimaryTextLinesForProvidedStaticContent](self, "_maximumNumberOfPrimaryTextLinesForProvidedStaticContent")}];
    [_lookViewIfLoaded setMaximumNumberOfSecondaryTextLines:{-[NCNotificationViewController _maximumNumberOfSecondaryTextLinesForProvidedStaticContent](self, "_maximumNumberOfSecondaryTextLinesForProvidedStaticContent")}];
    view = [(NCNotificationViewController *)self view];
    [view setNeedsLayout];

    objc_destroyWeak(&location);
  }
}

- (int64_t)_dateFormatStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained notificationViewControllerDateFormatStyle:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (unint64_t)_maximumNumberOfPrimaryTextLinesForProvidedStaticContent
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (unint64_t)_maximumNumberOfSecondaryTextLinesForProvidedStaticContent
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return 2;
}

- (void)_updateWithProvidedAuxiliaryOptionsContent
{
  [(NCNotificationViewController *)self _setupAuxiliaryOptionsContentProvider];
  auxiliaryOptionsContentProvider = self->_auxiliaryOptionsContentProvider;
  v4 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider isHidingContent]^ 1;

  [(NCAuxiliaryOptionsProviding *)auxiliaryOptionsContentProvider setAuxiliaryOptionsVisible:v4];
}

- (void)_updatePreferredContentSize
{
  if ([(NCNotificationViewController *)self isViewLoaded])
  {
    nc_presentationControllerIfPresented = [(UIViewController *)self nc_presentationControllerIfPresented];
    containerView = [nc_presentationControllerIfPresented containerView];

    if (containerView)
    {
      [containerView bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen nc_bounds];
      v5 = v13;
      v7 = v14;
      v9 = v15;
      v11 = v16;
    }

    view = [(NCNotificationViewController *)self view];
    [view bounds];
    [(NCNotificationViewController *)self _preferredCustomContentSizeForSize:v18 parentContentContainerBounds:v19, v5, v7, v9, v11];
    v21 = v20;
    v23 = v22;

    [(NCNotificationViewController *)self _setPreferredCustomContentSize:v21, v23];
  }
}

- (void)setHasUpdatedContent
{
  [(NCNotificationViewController *)self _updateWithProvidedStaticContent];
  [(NCNotificationViewController *)self _updateWithProvidedCustomContent];
  [(NCNotificationViewController *)self _updateWithProvidedAuxiliaryOptionsContent];

  [(NCNotificationViewController *)self _updatePreferredContentSize];
}

- (id)_initWithNotificationRequest:(id)request revealingAdditionalContentOnPresentation:(BOOL)presentation
{
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = NCNotificationViewController;
  v8 = [(NCNotificationViewController *)&v13 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationRequest, request);
    v9->_didQueryCanPan = 0;
    v9->_interactionEnabled = 1;
    v9->_revealAdditionalContentOnPresentation = presentation;
    v9->_backgroundAlpha = 1.0;
    v9->_disableDimming = 0;
    v9->_dateAlpha = 1.0;
    v9->_contentAlpha = 1.0;
    v9->_compositeAlpha = 1.0;
    v10 = MEMORY[0x277CBF2C0];
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    *&v9->_contentTransform.a = *MEMORY[0x277CBF2C0];
    *&v9->_contentTransform.c = v11;
    *&v9->_contentTransform.tx = *(v10 + 32);
    v9->_apparentZDistanceToUser = 0x7FFFFFFFFFFFFFFFLL;
    v9->_rootScrollVelocity = 1.79769313e308;
    v9->_backgroundHidden = 0;
    v9->_glassMode = 0;
    if (v9->_notificationRequest)
    {
      [(NCNotificationViewController *)v9 _setupStaticContentProvider];
    }
  }

  return v9;
}

- (NCNotificationViewController)initWithNotificationRequest:(id)request revealingAdditionalContentOnPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  requestCopy = request;
  if ([(NCNotificationViewController *)self isMemberOfClass:objc_opt_class()])
  {
    if (presentationCopy)
    {
      v7 = [NCNotificationLongLookViewController alloc];
      v8 = requestCopy;
      v9 = 1;
    }

    else
    {
      v7 = [NCNotificationShortLookViewController alloc];
      v8 = requestCopy;
      v9 = 0;
    }

    v10 = [(NCNotificationLongLookViewController *)v7 _initWithNotificationRequest:v8 revealingAdditionalContentOnPresentation:v9];
  }

  else
  {
    v10 = [(NCNotificationViewController *)self _initWithNotificationRequest:requestCopy revealingAdditionalContentOnPresentation:presentationCopy];
  }

  return v10;
}

- (BOOL)_setDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_delegate, delegateCopy);
    [(NCNotificationViewController *)self setStaticContentProvider:0];
    [(NCNotificationViewController *)self setAuxiliaryOptionsContentProvider:0];
    view = [(NCNotificationViewController *)self view];
    [view setNeedsLayout];
  }

  return WeakRetained != delegateCopy;
}

- (void)setBackgroundAlpha:(double)alpha
{
  if (self->_backgroundAlpha != alpha)
  {
    self->_backgroundAlpha = alpha;
    [(NCNotificationLookView *)self->_lookView setBackgroundAlpha:?];
  }
}

- (void)setContentAlpha:(double)alpha
{
  if (self->_contentAlpha != alpha)
  {
    self->_contentAlpha = alpha;
    [(NCNotificationLookView *)self->_lookView setContentAlpha:?];
  }
}

- (void)setCompositeAlpha:(double)alpha
{
  if (self->_compositeAlpha != alpha)
  {
    self->_compositeAlpha = alpha;
    [(NCNotificationLookView *)self->_lookView setCompositeAlpha:?];
  }
}

- (void)setDisableDimming:(BOOL)dimming
{
  if (self->_disableDimming != dimming)
  {
    self->_disableDimming = dimming;
    [(NCNotificationLookView *)self->_lookView setDisableDimming:?];
  }
}

- (void)setHideDate:(BOOL)date
{
  if (self->_hideDate != date)
  {
    self->_hideDate = date;
    [(NCNotificationLookView *)self->_lookView setHideDate:?];
  }
}

- (void)setDateAlpha:(double)alpha
{
  if (self->_dateAlpha != alpha)
  {
    self->_dateAlpha = alpha;
    [(NCNotificationLookView *)self->_lookView setDateAlpha:?];
  }
}

- (void)setAllowContentToCrossFade:(BOOL)fade
{
  if (self->_allowContentToCrossFade != fade)
  {
    self->_allowContentToCrossFade = fade;
    [(NCNotificationLookView *)self->_lookView setAllowContentToCrossFade:?];
  }
}

- (void)setContentTransform:(CGAffineTransform *)transform
{
  p_contentTransform = &self->_contentTransform;
  v6 = *&self->_contentTransform.c;
  *&t1.a = *&self->_contentTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_contentTransform.tx;
  v7 = *&transform->c;
  *&v12.a = *&transform->a;
  *&v12.c = v7;
  *&v12.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v12))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_contentTransform->c = *&transform->c;
    *&p_contentTransform->tx = v9;
    *&p_contentTransform->a = v8;
    lookView = self->_lookView;
    v11 = *&transform->c;
    *&t1.a = *&transform->a;
    *&t1.c = v11;
    *&t1.tx = *&transform->tx;
    [(NCNotificationLookView *)lookView setContentTransform:&t1];
  }
}

- (void)setApparentZDistanceToUser:(int64_t)user
{
  if (self->_apparentZDistanceToUser != user)
  {
    self->_apparentZDistanceToUser = user;
    [(NCNotificationLookView *)self->_lookView setApparentZDistanceToUser:?];
  }
}

- (void)setRootScrollVelocity:(double)velocity
{
  if (self->_rootScrollVelocity != velocity)
  {
    self->_rootScrollVelocity = velocity;
    [(NCNotificationLookView *)self->_lookView setRootScrollVelocity:?];
  }
}

- (void)setGlassMode:(unint64_t)mode
{
  if (self->_glassMode != mode)
  {
    self->_glassMode = mode;
    [(NCNotificationLookView *)self->_lookView setGlassMode:?];
  }
}

- (void)setUnmanagedBackdropContrast:(BOOL)contrast
{
  if (self->_unmanagedBackdropContrast != contrast)
  {
    self->_unmanagedBackdropContrast = contrast;
    [(NCNotificationLookView *)self->_lookView setUnmanagedBackdropContrast:?];
  }
}

- (void)setBackgroundHidden:(BOOL)hidden
{
  if (self->_backgroundHidden != hidden)
  {
    self->_backgroundHidden = hidden;
    [(NCNotificationLookView *)self->_lookView setBackgroundHidden:?];
  }
}

- (NCNotificationListCellDynamicHeightTraits)currentTraits
{
  v2 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
  {
    [(NCNotificationViewController *)v2 currentTraits];
  }

  v3 = objc_alloc_init(NCNotificationListCellDynamicHeightTraits);

  return v3;
}

- (BOOL)_setNotificationRequest:(id)request
{
  requestCopy = request;
  v6 = requestCopy;
  notificationRequest = self->_notificationRequest;
  if (notificationRequest != requestCopy)
  {
    v8 = [(NCNotificationRequest *)requestCopy matchesRequest:self->_notificationRequest];
    objc_storeStrong(&self->_notificationRequest, request);
    if (!v8 || ![(NCNotificationViewController *)self _isPresentingCustomContentProvidingViewController])
    {
      _lookViewIfLoaded = [(NCNotificationViewController *)self _lookViewIfLoaded];
      [_lookViewIfLoaded setHidden:0];
    }

    [(NCNotificationViewController *)self setStaticContentProvider:0];
    [(NCNotificationViewController *)self setAuxiliaryOptionsContentProvider:0];
    [(NCNotificationViewController *)self _updateScreenCaptureProhibited];
    view = [(NCNotificationViewController *)self view];
    [view setNeedsLayout];
  }

  return notificationRequest != v6;
}

- (void)setStaticContentProvider:(id)provider
{
  providerCopy = provider;
  if (self->_staticContentProvider != providerCopy)
  {
    objc_storeStrong(&self->_staticContentProvider, provider);
    if (self->_staticContentProvider)
    {
      [(NCNotificationViewController *)self _updateWithProvidedStaticContent];
      [(NCNotificationViewController *)self _updateWithProvidedAuxiliaryOptionsContent];
      [(NCNotificationViewController *)self _updatePreferredContentSize];
    }
  }
}

- (id)_staticContentProviderLoadingIfNecessary
{
  staticContentProvider = self->_staticContentProvider;
  if (!staticContentProvider)
  {
    [(NCNotificationViewController *)self _setupStaticContentProvider];
    staticContentProvider = self->_staticContentProvider;
  }

  delegate = [(NCNotificationStaticContentProviding *)staticContentProvider delegate];

  if (!delegate)
  {
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [NCNotificationViewController _staticContentProviderLoadingIfNecessary];
    }

    [(NCNotificationStaticContentProviding *)self->_staticContentProvider setDelegate:self];
  }

  v5 = self->_staticContentProvider;

  return v5;
}

- (void)_setupCustomContentProvider
{
  v3 = objc_alloc_init(NCNotificationRequestCustomContentProvider);
  [(NCNotificationViewController *)self setCustomContentProvider:v3];
}

- (void)setAuxiliaryOptionsContentProvider:(id)provider
{
  providerCopy = provider;
  auxiliaryOptionsContentProvider = [(NCNotificationViewController *)self auxiliaryOptionsContentProvider];

  if (auxiliaryOptionsContentProvider != providerCopy)
  {
    objc_storeStrong(&self->_auxiliaryOptionsContentProvider, provider);
    [(NCNotificationViewController *)self _updateWithProvidedAuxiliaryOptionsContent];
  }
}

- (id)_customContentProvidingViewControllerCreateIfNecessary
{
  _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (!_customContentProvidingViewController)
  {
    customContentProvider = [(NCNotificationViewController *)self customContentProvider];
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    _customContentProvidingViewController = [customContentProvider customContentViewControllerForNotificationRequest:notificationRequest];

    [(NCNotificationViewController *)self _setCustomContentProvidingViewController:_customContentProvidingViewController];
  }

  return _customContentProvidingViewController;
}

- (void)_setCustomContentProvidingViewController:(id)controller
{
  controllerCopy = controller;
  customContentProvidingViewController = self->_customContentProvidingViewController;
  v8 = controllerCopy;
  if (customContentProvidingViewController != controllerCopy)
  {
    [(NCNotificationCustomContent *)customContentProvidingViewController willMoveToParentViewController:0];
    [(NCNotificationCustomContent *)self->_customContentProvidingViewController removeFromParentViewController];
    objc_storeStrong(&self->_customContentProvidingViewController, controller);
    v7 = self->_customContentProvidingViewController;
    if (v7)
    {
      [(NCNotificationCustomContent *)v7 setDelegate:self];
      [(NCNotificationViewController *)self addChildViewController:self->_customContentProvidingViewController];
      [(NCNotificationCustomContent *)self->_customContentProvidingViewController didMoveToParentViewController:self];
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    v8 = observerCopy;
    if (!observers)
    {
      v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
  }

  MEMORY[0x2821F96F8]();
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (void)_notifyObserversWithBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    observers = self->_observers;
    if (observers)
    {
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = [(NSHashTable *)observers copy];
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v13 + 1) + 8 * i);
            v11 = objc_initWeak(&location, self);
            blockCopy[2](blockCopy, self, v10);

            objc_destroyWeak(&location);
          }

          v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }
  }
}

- (BOOL)didForwardNotificationRequestToCustomContent:(id)content
{
  contentCopy = content;
  _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (_customContentProvidingViewController)
  {
    _customContentProvidingViewController2 = [(NCNotificationViewController *)self _customContentProvidingViewController];
    v7 = [_customContentProvidingViewController2 didReceiveNotificationRequest:contentCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)preserveInputViews
{
  _presentedLongLookViewController = [(NCNotificationViewController *)self _presentedLongLookViewController];
  [_presentedLongLookViewController preserveInputViews];
}

- (BOOL)restoreInputViews
{
  _presentedLongLookViewController = [(NCNotificationViewController *)self _presentedLongLookViewController];
  restoreInputViews = [_presentedLongLookViewController restoreInputViews];

  return restoreInputViews;
}

- (BOOL)_canPan
{
  if (!self->_didQueryCanPan)
  {
    self->_didQueryCanPan = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v4 = [WeakRetained notificationViewControllerShouldPan:self];
    }

    else
    {
      v4 = 0;
    }

    self->_canPan = v4;
  }

  return self->_canPan;
}

- (void)setInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEBUG))
  {
    [(NCNotificationViewController *)enabledCopy setInteractionEnabled:v5];
  }

  self->_interactionEnabled = enabledCopy;
  view = [(NCNotificationViewController *)self view];
  [view setUserInteractionEnabled:enabledCopy];
}

- (id)containerViewForExpandedContent
{
  nc_presentationContextDefiningViewController = [(UIViewController *)self nc_presentationContextDefiningViewController];
  view = [nc_presentationContextDefiningViewController view];
  superview = [view superview];

  return superview;
}

- (id)_lookViewLoadingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (([(NCNotificationViewController *)self isViewLoaded]& 1) != 0 || necessaryCopy)
  {
    [(NCNotificationViewController *)self loadViewIfNeeded];
    v5 = self->_lookView;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_primaryTextFont
{
  if (_primaryTextFont_onceToken != -1)
  {
    +[NCNotificationViewController _primaryTextFont];
  }

  v3 = _primaryTextFont__primaryTextFont;

  return v3;
}

void __48__NCNotificationViewController__primaryTextFont__block_invoke()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  v9 = *MEMORY[0x277D74380];
  v7 = *MEMORY[0x277D74430];
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74420]];
  v8 = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v4 = [v0 fontDescriptorByAddingAttributes:v3];

  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];
  v6 = _primaryTextFont__primaryTextFont;
  _primaryTextFont__primaryTextFont = v5;
}

- (BOOL)isHighlighted
{
  v3 = _NCIsNotificationHighlightsAllowed();
  if (v3)
  {
    staticContentProvider = self->_staticContentProvider;

    LOBYTE(v3) = [(NCNotificationStaticContentProviding *)staticContentProvider isHighlighted];
  }

  return v3;
}

void __64__NCNotificationViewController__updateWithProvidedStaticContent__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained[149] inlineAction];
    [v3 _askDelegateToExecuteAction:v2 withParameters:MEMORY[0x277CBEC10] animated:1];

    WeakRetained = v3;
  }
}

- (NCDimmableView)_notificationViewControllerView
{
  objc_opt_class();
  view = [(NCNotificationViewController *)self view];
  v4 = UNSafeCast();

  return v4;
}

- (void)_notificationViewControllerViewDidLoad
{
  view = [(NCNotificationViewController *)self view];
  [view setAutoresizesSubviews:1];
  [(NCNotificationViewController *)self _loadLookView];
  [(NCNotificationLookView *)self->_lookView setAdjustsFontForContentSizeCategory:1];
  _notificationViewControllerView = [(NCNotificationViewController *)self _notificationViewControllerView];
  [_notificationViewControllerView setContentView:self->_lookView];
}

- (CGSize)_preferredCustomContentSizeForSize:(CGSize)size parentContentContainerBounds:(CGRect)bounds
{
  height = size.height;
  width = size.width;
  v6 = [(NCNotificationViewController *)self _lookViewIfLoaded:size.width];
  v7 = v6;
  if (v6)
  {
    [v6 contentSizeForSize:{width, height}];
    width = v8;
    height = v9;
  }

  v10 = width;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_setPreferredCustomContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _contentSizeManagingView = [(NCNotificationViewController *)self _contentSizeManagingView];
  [_contentSizeManagingView sizeThatFitsContentWithSize:{width, height}];
  v8 = v7;
  v10 = v9;

  [(NCNotificationViewController *)self setPreferredContentSize:v8, v10];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained notificationViewController:self didUpdatePreferredContentSize:{v8, v10}];
  }
}

- (void)_updateScreenCaptureProhibited
{
  lookView = self->_lookView;
  notificationRequest = [(NCNotificationViewController *)self notificationRequest];
  options = [notificationRequest options];
  -[NCNotificationLookView setScreenCaptureProhibited:](lookView, "setScreenCaptureProhibited:", [options screenCaptureProhibited]);
}

- (NSDictionary)notificationUsageTrackingState
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained notificationRequestPresenterNotificationUsageTrackingState:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSSet)activeTransitionBlockingAssertions
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = selfCopy->_reasonsToTransitionBlockingAssertions;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [(NSMapTable *)selfCopy->_reasonsToTransitionBlockingAssertions objectForKey:*(*(&v10 + 1) + 8 * i), v10];
        if ([v8 isValid])
        {
          [v3 addObject:v8];
        }
      }

      v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (id)requestTransitionBlockingAssertionWithReason:(id)reason
{
  v20 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if ([reasonCopy length])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NCNotificationViewController *)selfCopy activeTransitionBlockingAssertionForReason:reasonCopy];
    if (!v6)
    {
      v7 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        notificationIdentifier = [(NCNotificationRequest *)selfCopy->_notificationRequest notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        *buf = 138543618;
        v17 = un_logDigest;
        v18 = 2114;
        v19 = reasonCopy;
        _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "New transition blocking assertion requested for notification view controller for request '%{public}@' with reason '%{public}@'", buf, 0x16u);
      }

      if (!selfCopy->_reasonsToTransitionBlockingAssertions)
      {
        strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
        reasonsToTransitionBlockingAssertions = selfCopy->_reasonsToTransitionBlockingAssertions;
        selfCopy->_reasonsToTransitionBlockingAssertions = strongToWeakObjectsMapTable;
      }

      v6 = [[NCAssertion alloc] initWithInstantiationReason:reasonCopy];
      objc_initWeak(buf, selfCopy);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __77__NCNotificationViewController_requestTransitionBlockingAssertionWithReason___block_invoke;
      v14[3] = &unk_27836F450;
      objc_copyWeak(&v15, buf);
      [(NCAssertion *)v6 addInvalidationBlock:v14];
      [(NSMapTable *)selfCopy->_reasonsToTransitionBlockingAssertions setObject:v6 forKey:reasonCopy];
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained notificationRequestPresenter:selfCopy didVendTransitionBlockingAssertion:v6];
      }

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __77__NCNotificationViewController_requestTransitionBlockingAssertionWithReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [WeakRetained notificationRequest];
    v9 = [v8 notificationIdentifier];
    v10 = [v9 un_logDigest];
    v11 = 138543618;
    v12 = v10;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "Transition blocking assertion for notification view controller for request '%{public}@' invalidated with reason '%{public}@'", &v11, 0x16u);
  }
}

- (id)activeTransitionBlockingAssertionForReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy length])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMapTable *)selfCopy->_reasonsToTransitionBlockingAssertions objectForKey:reasonCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)loadView
{
  v3 = objc_alloc_init(NCDimmableView);
  [(NCNotificationViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v3 viewDidLoad];
  [(NCNotificationViewController *)self _notificationViewControllerViewDidLoad];
  [(NCNotificationViewController *)self setHasUpdatedContent];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v7 viewWillAppear:appear];
  if ([(NCNotificationViewController *)self isBeingPresented])
  {
    [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_78];
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __47__NCNotificationViewController_viewWillAppear___block_invoke_2;
    v4[3] = &unk_27836F498;
    objc_copyWeak(&v5, &location);
    [(NCNotificationViewController *)self _setPendingPresentationTransitionDidEndBlock:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __47__NCNotificationViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationViewControllerWillPresent:v5];
  }
}

void __47__NCNotificationViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyObserversWithBlock:&__block_literal_global_82];
}

void __47__NCNotificationViewController_viewWillAppear___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationViewControllerDidPresent:v5];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v6 viewDidAppear:appear];
  pendingPresentationTransitionDidEndBlock = self->_pendingPresentationTransitionDidEndBlock;
  if (pendingPresentationTransitionDidEndBlock)
  {
    v5 = _Block_copy(pendingPresentationTransitionDidEndBlock);
    [(NCNotificationViewController *)self _setPendingPresentationTransitionDidEndBlock:0];
    v5[2](v5);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v7 viewWillDisappear:disappear];
  if ([(NCNotificationViewController *)self isBeingDismissed])
  {
    [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_90];
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __50__NCNotificationViewController_viewWillDisappear___block_invoke_2;
    v4[3] = &unk_27836F498;
    objc_copyWeak(&v5, &location);
    [(NCNotificationViewController *)self _setPendingPresentationTransitionDidEndBlock:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __50__NCNotificationViewController_viewWillDisappear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationViewControllerWillDismiss:v5];
  }
}

void __50__NCNotificationViewController_viewWillDisappear___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyObserversWithBlock:&__block_literal_global_94];
}

void __50__NCNotificationViewController_viewWillDisappear___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationViewControllerDidDismiss:v5];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v15 viewDidDisappear:disappear];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  activeTransitionBlockingAssertions = [(NCNotificationViewController *)selfCopy activeTransitionBlockingAssertions];
  v6 = [activeTransitionBlockingAssertions countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(activeTransitionBlockingAssertions);
        }

        [*(*(&v11 + 1) + 8 * v8++) invalidateWithReason:@"notificationViewController.invalidationReason.dismissed"];
      }

      while (v6 != v8);
      v6 = [activeTransitionBlockingAssertions countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  pendingPresentationTransitionDidEndBlock = selfCopy->_pendingPresentationTransitionDidEndBlock;
  if (pendingPresentationTransitionDidEndBlock)
  {
    v10 = _Block_copy(pendingPresentationTransitionDidEndBlock);
    [(NCNotificationViewController *)selfCopy _setPendingPresentationTransitionDidEndBlock:0];
    v10[2](v10);
  }
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v5 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  [(NCNotificationViewController *)self _notifyObserversWithBlock:&__block_literal_global_104];
}

void __76__NCNotificationViewController_viewDidMoveToWindow_shouldAppearOrDisappear___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 notificationViewControllerViewDidMoveToWindow:v5];
  }
}

- (BOOL)shouldAutorotate
{
  presentingViewController = [(NCNotificationViewController *)self presentingViewController];
  if (presentingViewController)
  {
    presentingViewController2 = [(NCNotificationViewController *)self presentingViewController];
    shouldAutorotate = [presentingViewController2 shouldAutorotate];
  }

  else
  {
    shouldAutorotate = 1;
  }

  return shouldAutorotate;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  v10 = 1;
  if (!animatedCopy)
  {
    v10 = 2;
  }

  self->_ncTransitionAnimationState = v10;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__NCNotificationViewController_presentViewController_animated_completion___block_invoke;
  v13[3] = &unk_27836F4C0;
  objc_copyWeak(&v15, &location);
  v11 = completionCopy;
  v14 = v11;
  v12.receiver = self;
  v12.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v12 presentViewController:controllerCopy animated:1 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __74__NCNotificationViewController_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setNCTransitionAnimationState:0];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion
{
  completionCopy = completion;
  v7 = 1;
  if (!transition)
  {
    v7 = 2;
  }

  self->_ncTransitionAnimationState = v7;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__NCNotificationViewController_dismissViewControllerWithTransition_completion___block_invoke;
  v10[3] = &unk_27836F4C0;
  objc_copyWeak(&v12, &location);
  v8 = completionCopy;
  v11 = v8;
  v9.receiver = self;
  v9.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v9 dismissViewControllerWithTransition:9 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __79__NCNotificationViewController_dismissViewControllerWithTransition_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setNCTransitionAnimationState:0];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize
{
  height = size.height;
  width = size.width;
  BSRectWithSize();
  [(NCNotificationViewController *)self _preferredCustomContentSizeForSize:width parentContentContainerBounds:height, v7, v8, v9, v10];
  v12 = v11;
  v14 = v13;
  _contentSizeManagingView = [(NCNotificationViewController *)self _contentSizeManagingView];
  [_contentSizeManagingView sizeThatFitsContentWithSize:{v12, v14}];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  v12.receiver = self;
  v12.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v12 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];

  if (_customContentProvidingViewController == containerCopy)
  {
    transitionCoordinator = [containerCopy transitionCoordinator];
    v7 = transitionCoordinator;
    if (transitionCoordinator)
    {
      if ([transitionCoordinator presentationStyle] == -1)
      {
LABEL_7:

        goto LABEL_8;
      }

      [(NCNotificationViewController *)self _updatePreferredContentSize];
      v8 = objc_alloc_init(NCAnimationCoordinator);
      [(NCAnimationCoordinator *)v8 setDurationInherited:1];
    }

    else
    {
      [(NCNotificationViewController *)self _updatePreferredContentSize];
      v8 = [NCAnimationCoordinator animationCoordinatorWithDuration:0.25];
    }

    [(NCAnimationCoordinator *)v8 setAnimationOptions:4];
    [(NCNotificationViewController *)self preferredContentSize];
    [(NCNotificationViewController *)self sizeForChildContentContainer:containerCopy withParentContainerSize:?];
    [(NCAnimationCoordinator *)v8 viewOfChildContainer:containerCopy willChangeToSize:?];
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__NCNotificationViewController_preferredContentSizeDidChangeForChildContentContainer___block_invoke;
    v9[3] = &unk_27836F4E8;
    objc_copyWeak(&v10, &location);
    [(NCAnimationCoordinator *)v8 animate:v9 completion:0];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);

    goto LABEL_7;
  }

LABEL_8:
}

void __86__NCNotificationViewController_preferredContentSizeDidChangeForChildContentContainer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained view];
  [v1 setNeedsLayout];

  v2 = [WeakRetained view];
  [v2 layoutIfNeeded];
}

- (void)_executeDefaultAction:(BOOL)action
{
  actionCopy = action;
  v15 = *MEMORY[0x277D85DE8];
  _staticContentProviderLoadingIfNecessary = [(NCNotificationViewController *)self _staticContentProviderLoadingIfNecessary];
  defaultAction = [_staticContentProviderLoadingIfNecessary defaultAction];

  v7 = *MEMORY[0x277D77DD0];
  v8 = *MEMORY[0x277D77DD0];
  if (defaultAction)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v7;
      notificationRequest = [(NCNotificationViewController *)self notificationRequest];
      notificationIdentifier = [notificationRequest notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v13 = 138543362;
      v14 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "Executing default action for %{public}@", &v13, 0xCu);
    }

    defaultAction[2](defaultAction, actionCopy);
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(NCNotificationViewController *)v7 _executeDefaultAction:?];
  }
}

- (void)_executeClearAction:(BOOL)action
{
  actionCopy = action;
  _staticContentProviderLoadingIfNecessary = [(NCNotificationViewController *)self _staticContentProviderLoadingIfNecessary];
  clearAction = [_staticContentProviderLoadingIfNecessary clearAction];

  v5 = clearAction;
  if (clearAction)
  {
    (*(clearAction + 16))(clearAction, actionCopy);
    v5 = clearAction;
  }
}

- (void)_executeCloseAction:(BOOL)action
{
  actionCopy = action;
  _staticContentProviderLoadingIfNecessary = [(NCNotificationViewController *)self _staticContentProviderLoadingIfNecessary];
  closeAction = [_staticContentProviderLoadingIfNecessary closeAction];

  if (closeAction)
  {
    [(NCNotificationViewController *)self _setShouldRestorePresentingShortLookOnDismiss:1];
    closeAction[2](closeAction, actionCopy);
  }
}

- (void)_executeCancelAction:(BOOL)action
{
  actionCopy = action;
  _staticContentProviderLoadingIfNecessary = [(NCNotificationViewController *)self _staticContentProviderLoadingIfNecessary];
  cancelAction = [_staticContentProviderLoadingIfNecessary cancelAction];

  if (cancelAction)
  {
    [(NCNotificationViewController *)self _setShouldRestorePresentingShortLookOnDismiss:1];
    cancelAction[2](cancelAction, actionCopy);
  }
}

- (void)_executeNilAction:(BOOL)action
{
  actionCopy = action;
  _staticContentProviderLoadingIfNecessary = [(NCNotificationViewController *)self _staticContentProviderLoadingIfNecessary];
  nilAction = [_staticContentProviderLoadingIfNecessary nilAction];

  if (nilAction)
  {
    [(NCNotificationViewController *)self _setShouldRestorePresentingShortLookOnDismiss:1];
    nilAction[2](nilAction, actionCopy);
  }
}

- (void)_askDelegateToExecuteAction:(id)action withParameters:(id)parameters animated:(BOOL)animated
{
  animatedCopy = animated;
  v48 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  parametersCopy = parameters;
  notificationIdentifier = [(NCNotificationRequest *)self->_notificationRequest notificationIdentifier];
  un_logDigest = [notificationIdentifier un_logDigest];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__NCNotificationViewController__askDelegateToExecuteAction_withParameters_animated___block_invoke;
  aBlock[3] = &unk_27836F510;
  objc_copyWeak(&v42, &location);
  v11 = un_logDigest;
  v41 = v11;
  v12 = _Block_copy(aBlock);
  if (actionCopy)
  {
    userNotification = [(NCNotificationRequest *)self->_notificationRequest userNotification];
    if (userNotification)
    {
      v14 = [parametersCopy mutableCopy];
      v15 = v14;
      if (v14)
      {
        dictionary = v14;
      }

      else
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
      }

      v21 = dictionary;

      v22 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:userNotification requiringSecureCoding:1 error:0];
      [v21 setValue:v22 forKey:*MEMORY[0x277CE2178]];
      v23 = [v21 copy];

      parametersCopy = v23;
    }

    else if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [NCNotificationViewController _askDelegateToExecuteAction:withParameters:animated:];
    }

    -[NCNotificationViewController _setShouldRestorePresentingShortLookOnDismiss:](self, "_setShouldRestorePresentingShortLookOnDismiss:", [actionCopy shouldDismissNotification] ^ 1);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __84__NCNotificationViewController__askDelegateToExecuteAction_withParameters_animated___block_invoke_118;
    v34[3] = &unk_27836F538;
    v35 = v11;
    objc_copyWeak(&v38, &location);
    v24 = actionCopy;
    v36 = v24;
    v37 = v12;
    v39 = animatedCopy;
    v25 = _Block_copy(v34);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained notificationRequestPresenter:self executeAction:v24 withParameters:parametersCopy completion:v25];
    }

    else
    {
      v27 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        notificationRequest = [(NCNotificationViewController *)self notificationRequest];
        notificationIdentifier2 = [notificationRequest notificationIdentifier];
        un_logDigest2 = [notificationIdentifier2 un_logDigest];
        if (WeakRetained)
        {
          v29 = objc_opt_class();
          v28 = NSStringFromClass(v29);
        }

        else
        {
          v28 = @"nil";
        }

        *buf = 138543618;
        v45 = un_logDigest2;
        v46 = 2114;
        v47 = v28;
        _os_log_error_impl(&dword_21E77E000, v27, OS_LOG_TYPE_ERROR, "NotificationVC delegate is not responding for request %{public}@; delegate: %{public}@", buf, 0x16u);
        if (WeakRetained)
        {
        }
      }
    }

    objc_destroyWeak(&v38);
  }

  else
  {
    v17 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      notificationRequest2 = [(NCNotificationViewController *)self notificationRequest];
      notificationIdentifier3 = [notificationRequest2 notificationIdentifier];
      un_logDigest3 = [notificationIdentifier3 un_logDigest];
      *buf = 138543362;
      v45 = un_logDigest3;
      _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "NotificationVC was asked to execute nil action for %{public}@; dismissing long look if possible", buf, 0xCu);
    }

    [(NCNotificationViewController *)self _setShouldRestorePresentingShortLookOnDismiss:1];
    userNotification = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [userNotification notificationViewControllerWillDismissForCancelAction:self];
    }

    (*(v12 + 2))(v12, animatedCopy);
  }

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
}

void __84__NCNotificationViewController__askDelegateToExecuteAction_withParameters_animated___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Dismissing long look after executing action for %@", &v7, 0x16u);
  }

  [WeakRetained _dismissPresentedViewControllerAnimated:a2];
}

void __84__NCNotificationViewController__askDelegateToExecuteAction_withParameters_animated___block_invoke_118(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = NSStringFromBOOL();
    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_21E77E000, v6, OS_LOG_TYPE_DEFAULT, "Action completion for %@ didExecute? %@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (a2)
  {
    if (([*(a1 + 40) isSystemAction] & 1) == 0 && (objc_msgSend(WeakRetained, "isShortLook") & 1) == 0)
    {
      v9 = +[NCNotificationEventTracker sharedInstance];
      v10 = *(a1 + 40);
      v11 = [WeakRetained notificationRequest];
      v12 = [WeakRetained notificationUsageTrackingState];
      [v9 longLookCustomAction:v10 forNotificationRequest:v11 withState:v12];
    }

    if ([*(a1 + 40) activationMode] != 1)
    {
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)contentProvider:(id)provider performAction:(id)action animated:(BOOL)animated
{
  animatedCopy = animated;
  v27 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  actionCopy = action;
  if (actionCopy)
  {
    _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    v12 = [_customContentProvidingViewController performAction:actionCopy forNotification:notificationRequest];

    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 1;
  }

  identifier = [actionCopy identifier];
  v15 = [identifier isEqual:*MEMORY[0x277CE20F0]];

  if ((v13 & 1) != 0 || v15)
  {
    [(NCNotificationViewController *)self _askDelegateToExecuteAction:actionCopy withParameters:MEMORY[0x277CBEC10] animated:animatedCopy];
  }

  else
  {
    v16 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      notificationRequest2 = [(NCNotificationViewController *)self notificationRequest];
      notificationIdentifier = [notificationRequest2 notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v21 = 138543874;
      v22 = un_logDigest;
      v23 = 1024;
      v24 = 1;
      v25 = 1024;
      v26 = 0;
      _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "Skip asking delegate to perform action for request %{public}@; actionWasHandled: %{BOOL}d; isDismissAction: %{BOOL}d", &v21, 0x18u);
    }
  }
}

- (void)customContent:(id)content requestPermissionToExecuteAction:(id)action forNotification:(id)notification withUserInfo:(id)info completionHandler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  actionCopy = action;
  delegate = [(NCNotificationViewController *)self delegate];
  [delegate notificationViewController:self requestPermissionToExecuteAction:actionCopy withParameters:infoCopy completion:handlerCopy];
}

- (id)expandedPlatterPresentationController:(id)controller keyboardAssertionForGestureWindow:(id)window
{
  windowCopy = window;
  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate notificationViewController:self keyboardAssertionForGestureWindow:windowCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)hideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:(id)controller
{
  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate hideHomeAffordanceAnimationSettingsForNotificationViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)unhideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:(id)controller
{
  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate unhideHomeAffordanceAnimationSettingsForNotificationViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)settleHomeAffordanceAnimationBehaviorDescriptionForExpandedPlatterPresentationController:(id)controller
{
  delegate = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [delegate settleHomeAffordanceAnimationBehaviorDescriptionForNotificationViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)adjustForContentSizeCategoryChange
{
  _lookViewIfLoaded = [(NCNotificationViewController *)self _lookViewIfLoaded];
  v4 = _lookViewIfLoaded;
  if (_lookViewIfLoaded)
  {
    [_lookViewIfLoaded adjustForContentSizeCategoryChange];
    [(NCNotificationViewController *)self setHasUpdatedContent];
    view = [(NCNotificationViewController *)self view];
    [view setNeedsLayout];
  }

  return 1;
}

- (void)configureStackDimmingForTransform:(CGAffineTransform *)transform
{
  _notificationViewControllerView = [(NCNotificationViewController *)self _notificationViewControllerView];
  v5 = *&transform->c;
  v6[0] = *&transform->a;
  v6[1] = v5;
  v6[2] = *&transform->tx;
  [_notificationViewControllerView configureStackDimmingForTransform:v6];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(NCNotificationViewController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__NCNotificationViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_27836F560;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

void __70__NCNotificationViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ([*(a1 + 40) isViewLoaded])
  {
    v3 = [*(a1 + 40) view];
    v4 = [v2 appendObject:v3 withName:@"view"];
  }

  else
  {
    v5 = [v2 appendObject:@"(view not loaded)" withName:@"view"];
  }

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) delegate];
  v8 = [v6 appendObject:v7 withName:@"delegate" skipIfNil:1];

  v9 = [*(a1 + 40) notificationRequest];

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (v9)
  {
    v12 = [v10 notificationRequest];
    v13 = [v12 description];
    [v11 appendString:v13 withName:@"notificationRequest"];
  }

  else
  {
    v12 = [v10 staticContentProvider];
    v14 = [v11 appendObject:v12 withName:@"staticContentProvider" skipIfNil:1];
  }

  v15 = *(a1 + 32);
  v16 = [*(a1 + 40) customContentProvider];
  v17 = [v15 appendObject:v16 withName:@"customContentProvider" skipIfNil:1];

  if ([*(a1 + 40) _isPresentingCustomContentProvidingViewController])
  {
    v18 = *(a1 + 32);
    v20 = [*(a1 + 40) _presentedLongLookViewController];
    v19 = [v18 appendObject:v20 withName:@"presentedLongLookViewController"];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(NCNotificationViewController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  notificationRequest = [(NCNotificationViewController *)self notificationRequest];
  notificationIdentifier = [notificationRequest notificationIdentifier];
  un_logDigest = [notificationIdentifier un_logDigest];
  [v3 appendString:un_logDigest withName:@"notificationID" skipIfEmpty:1];

  if (([(NCNotificationViewController *)self isViewLoaded]& 1) != 0)
  {
    view = [(NCNotificationViewController *)self view];
    v8 = [v3 appendObject:view withName:@"view"];
  }

  else
  {
    v9 = [v3 appendObject:@"(view not loaded)" withName:@"view"];
  }

  return v3;
}

- (UIPanGestureRecognizer)customContentHomeAffordanceGestureRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_customContentHomeAffordanceGestureRecognizer);

  return WeakRetained;
}

- (CGAffineTransform)contentTransform
{
  v3 = *&self[25].c;
  *&retstr->a = *&self[25].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[25].tx;
  return self;
}

- (UIView)associatedView
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedView);

  return WeakRetained;
}

- (void)presentLongLookAnimated:(BOOL)animated trigger:(int64_t)trigger completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)setInteractionEnabled:(os_log_t)log .cold.1(char a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2114;
  v5 = a2;
  _os_log_debug_impl(&dword_21E77E000, log, OS_LOG_TYPE_DEBUG, "Setting interactionEnabled=%d for view controller %{public}@", v3, 0x12u);
}

- (void)_executeDefaultAction:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 notificationRequest];
  v5 = [v4 notificationIdentifier];
  v6 = [v5 un_logDigest];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_21E77E000, v3, OS_LOG_TYPE_ERROR, "No default action for %{public}@!", v7, 0xCu);
}

@end