@interface NCNotificationViewController
+ (id)_primaryTextFont;
- (BOOL)_canPan;
- (BOOL)_setDelegate:(id)a3;
- (BOOL)_setNotificationRequest:(id)a3;
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)didForwardNotificationRequestToCustomContent:(id)a3;
- (BOOL)isHighlighted;
- (BOOL)restoreInputViews;
- (BOOL)shouldAutorotate;
- (CGAffineTransform)contentTransform;
- (CGSize)_preferredCustomContentSizeForSize:(CGSize)a3 parentContentContainerBounds:(CGRect)a4;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4;
- (NCDimmableView)_notificationViewControllerView;
- (NCNotificationListCellDynamicHeightTraits)currentTraits;
- (NCNotificationViewController)initWithNotificationRequest:(id)a3 revealingAdditionalContentOnPresentation:(BOOL)a4;
- (NCNotificationViewControllerDelegate)delegate;
- (NSDictionary)notificationUsageTrackingState;
- (NSSet)activeTransitionBlockingAssertions;
- (UIPanGestureRecognizer)customContentHomeAffordanceGestureRecognizer;
- (UIView)associatedView;
- (id)_contentSizeManagingView;
- (id)_customContentProvidingViewControllerCreateIfNecessary;
- (id)_initWithNotificationRequest:(id)a3 revealingAdditionalContentOnPresentation:(BOOL)a4;
- (id)_lookViewLoadingIfNecessary:(BOOL)a3;
- (id)_staticContentProviderLoadingIfNecessary;
- (id)activeTransitionBlockingAssertionForReason:(id)a3;
- (id)containerViewForExpandedContent;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)expandedPlatterPresentationController:(id)a3 keyboardAssertionForGestureWindow:(id)a4;
- (id)hideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:(id)a3;
- (id)requestTransitionBlockingAssertionWithReason:(id)a3;
- (id)settleHomeAffordanceAnimationBehaviorDescriptionForExpandedPlatterPresentationController:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)unhideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:(id)a3;
- (int64_t)_dateFormatStyle;
- (unint64_t)_maximumNumberOfPrimaryTextLinesForProvidedStaticContent;
- (unint64_t)_maximumNumberOfSecondaryTextLinesForProvidedStaticContent;
- (void)_askDelegateToExecuteAction:(id)a3 withParameters:(id)a4 animated:(BOOL)a5;
- (void)_executeCancelAction:(BOOL)a3;
- (void)_executeClearAction:(BOOL)a3;
- (void)_executeCloseAction:(BOOL)a3;
- (void)_executeDefaultAction:(BOOL)a3;
- (void)_executeNilAction:(BOOL)a3;
- (void)_notificationViewControllerViewDidLoad;
- (void)_notifyObserversWithBlock:(id)a3;
- (void)_setCustomContentProvidingViewController:(id)a3;
- (void)_setPreferredCustomContentSize:(CGSize)a3;
- (void)_setupAuxiliaryOptionsContentProvider;
- (void)_setupCustomContentProvider;
- (void)_setupStaticContentProvider;
- (void)_updatePreferredContentSize;
- (void)_updateScreenCaptureProhibited;
- (void)_updateWithProvidedAuxiliaryOptionsContent;
- (void)_updateWithProvidedStaticContent;
- (void)addObserver:(id)a3;
- (void)configureStackDimmingForTransform:(CGAffineTransform *)a3;
- (void)contentProvider:(id)a3 performAction:(id)a4 animated:(BOOL)a5;
- (void)customContent:(id)a3 requestPermissionToExecuteAction:(id)a4 forNotification:(id)a5 withUserInfo:(id)a6 completionHandler:(id)a7;
- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4;
- (void)invalidateContentProviders;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentLongLookAnimated:(BOOL)a3 trigger:(int64_t)a4 completion:(id)a5;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)preserveInputViews;
- (void)removeObserver:(id)a3;
- (void)setAllowContentToCrossFade:(BOOL)a3;
- (void)setApparentZDistanceToUser:(int64_t)a3;
- (void)setAuxiliaryOptionsContentProvider:(id)a3;
- (void)setBackgroundAlpha:(double)a3;
- (void)setBackgroundHidden:(BOOL)a3;
- (void)setCompositeAlpha:(double)a3;
- (void)setContentAlpha:(double)a3;
- (void)setContentTransform:(CGAffineTransform *)a3;
- (void)setDateAlpha:(double)a3;
- (void)setDisableDimming:(BOOL)a3;
- (void)setGlassMode:(unint64_t)a3;
- (void)setHasUpdatedContent;
- (void)setHideDate:(BOOL)a3;
- (void)setInteractionEnabled:(BOOL)a3;
- (void)setRootScrollVelocity:(double)a3;
- (void)setStaticContentProvider:(id)a3;
- (void)setUnmanagedBackdropContrast:(BOOL)a3;
- (void)updateContent;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
    v3 = [(NCNotificationViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v4 = [(NCNotificationViewController *)self notificationRequest];
      v5 = [v3 notificationViewController:self auxiliaryOptionsContentProviderForNotificationRequest:v4 withLongLook:{-[NCNotificationViewController isShortLook](self, "isShortLook") ^ 1}];
    }

    else
    {
      v5 = 0;
    }

    v6 = [(NCNotificationViewController *)self notificationRequest];
    v7 = [v6 options];
    v8 = [v7 displaysActionsInline];

    v9 = [(NCNotificationViewController *)self notificationRequest];
    v10 = [v9 defaultEnvironmentActions];
    v11 = [v10 count];

    if (v8 && v11)
    {
      if (v5)
      {
        if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
        {
          [NCNotificationViewController _setupAuxiliaryOptionsContentProvider];
        }
      }

      v12 = [NCNotificationRequestInlineActionsProvider alloc];
      v13 = [(NCNotificationViewController *)self notificationRequest];
      v14 = [(NCNotificationRequestInlineActionsProvider *)v12 initWithNotificationRequest:v13 delegate:self];

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
    v4 = [(NCNotificationViewController *)self viewIfLoaded];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      WeakRetained = v4;
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
  v3 = [(NCNotificationViewController *)self view];
  [v3 setNeedsLayout];
}

- (void)updateContent
{
  v2 = [(NCNotificationViewController *)self view];
  [v2 layoutIfNeeded];
}

- (void)_setupStaticContentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || (-[NCNotificationViewController notificationRequest](self, "notificationRequest"), v4 = objc_claimAutoreleasedReturnValue(), [WeakRetained notificationRequestPresenter:self staticContentProviderForNotificationRequest:v4], v7 = objc_claimAutoreleasedReturnValue(), v4, !v7))
  {
    v5 = [NCNotificationRequestContentProvider alloc];
    v6 = [(NCNotificationViewController *)self notificationRequest];
    v7 = [(NCNotificationRequestContentProvider *)v5 initWithNotificationRequest:v6];

    [(NCNotificationRequestContentProvider *)v7 setDelegate:self];
  }

  [(NCNotificationViewController *)self setStaticContentProvider:v7];
}

- (void)_updateWithProvidedStaticContent
{
  v3 = [(NCNotificationViewController *)self _lookViewIfLoaded];
  if (v3)
  {
    v4 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider title];
    [(NCNotificationViewController *)self _updateLookView:v3 withTitleFromProvidedStaticContent:v4];

    if (objc_opt_respondsToSelector())
    {
      v5 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider badgedIconDescription];
      [v3 setBadgedIconDescription:v5];
    }

    v6 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider date];
    [v3 setDate:v6];

    [v3 setDateAllDay:{-[NCNotificationStaticContentProviding isDateAllDay](self->_staticContentProvider, "isDateAllDay")}];
    v7 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider timeZone];
    [v3 setTimeZone:v7];

    [v3 setDateFormatStyle:{-[NCNotificationViewController _dateFormatStyle](self, "_dateFormatStyle")}];
    v8 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider primaryText];
    [v3 setPrimaryText:v8];
    v9 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider primarySubtitleText];
    [v3 setPrimarySubtitleText:v9];

    v10 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider secondaryText];
    [v3 setSecondaryText:v10];

    if (objc_opt_respondsToSelector())
    {
      v11 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider secondaryTextCompact];
      [v3 setSecondaryTextCompact:v11];
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider secondaryTextGroupCollapsed];
      [v3 setSecondaryTextGroupCollapsed:v12];
    }

    v13 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider inlineAction];
    v14 = [v13 title];

    objc_initWeak(&location, self);
    if (objc_opt_respondsToSelector())
    {
      if ([v14 length])
      {
        v15 = MEMORY[0x277D750C8];
        v16 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider inlineAction];
        v17 = [v16 identifier];
        v34 = MEMORY[0x277D85DD0];
        v35 = 3221225472;
        v36 = __64__NCNotificationViewController__updateWithProvidedStaticContent__block_invoke;
        v37 = &unk_27836F428;
        objc_copyWeak(&v38, &location);
        v18 = [v15 actionWithTitle:v14 image:0 identifier:v17 handler:&v34];

        objc_destroyWeak(&v38);
      }

      else
      {
        v18 = 0;
      }

      [v3 setInlineAction:{v18, v34, v35, v36, v37}];
    }

    if (objc_opt_respondsToSelector())
    {
      v19 = MEMORY[0x277CCA898];
      v20 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider footerText];
      v21 = [v19 nc_safeAttributedStringWithString:v20];

      [v3 setFooterText:v21];
    }

    if (objc_opt_respondsToSelector())
    {
      v22 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider contentSummaryAttributionText];
      [v3 setFooterSummaryAttributionText:v22];
    }

    v23 = [(NCNotificationViewController *)self delegate];
    if (v23 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v24 = [v23 importantAdornmentEligibleOptionsForNotificationViewController:self];
    }

    else
    {
      v24 = -1;
    }

    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v25 = [v23 notificationViewControllerRequestCustomPlatterBackgroundView:self];
      [v3 setCustomPlatterBackgroundView:v25];
    }

    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      staticContentProvider = self->_staticContentProvider;
      v27 = [v3 importantTextImageConfiguration];
      v28 = [(NCNotificationStaticContentProviding *)staticContentProvider importantAttributedTextWithImageConfiguration:v27 importantAdornmentEligibleOptions:v24];

      [v3 setImportantAttributedText:v28];
      v29 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider importantTextVisualStylingProvider];
      [v3 setImportantTextVisualStylingProvider:v29];
    }

    else
    {
      v28 = 0;
    }

    if (![v28 length] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v30 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider importantText];
      [v3 setImportantText:v30];

      v31 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider importantTextVisualStylingProvider];
      [v3 setImportantTextVisualStylingProvider:v31];
    }

    if (objc_opt_respondsToSelector())
    {
      v32 = [(NCNotificationStaticContentProviding *)self->_staticContentProvider thumbnail];
      [v3 setThumbnail:v32];
    }

    if (objc_opt_respondsToSelector())
    {
      [v3 setSupportsGlass:{-[NCNotificationStaticContentProviding supportsGlass](self->_staticContentProvider, "supportsGlass")}];
    }

    [v3 setMaximumNumberOfPrimaryTextLines:{-[NCNotificationViewController _maximumNumberOfPrimaryTextLinesForProvidedStaticContent](self, "_maximumNumberOfPrimaryTextLinesForProvidedStaticContent")}];
    [v3 setMaximumNumberOfSecondaryTextLines:{-[NCNotificationViewController _maximumNumberOfSecondaryTextLinesForProvidedStaticContent](self, "_maximumNumberOfSecondaryTextLinesForProvidedStaticContent")}];
    v33 = [(NCNotificationViewController *)self view];
    [v33 setNeedsLayout];

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
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v3))
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
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];
  UIContentSizeCategoryIsAccessibilityCategory(v3);

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
    v3 = [(UIViewController *)self nc_presentationControllerIfPresented];
    v24 = [v3 containerView];

    if (v24)
    {
      [v24 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
    }

    else
    {
      v12 = [MEMORY[0x277D759A0] mainScreen];
      [v12 nc_bounds];
      v5 = v13;
      v7 = v14;
      v9 = v15;
      v11 = v16;
    }

    v17 = [(NCNotificationViewController *)self view];
    [v17 bounds];
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

- (id)_initWithNotificationRequest:(id)a3 revealingAdditionalContentOnPresentation:(BOOL)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = NCNotificationViewController;
  v8 = [(NCNotificationViewController *)&v13 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationRequest, a3);
    v9->_didQueryCanPan = 0;
    v9->_interactionEnabled = 1;
    v9->_revealAdditionalContentOnPresentation = a4;
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

- (NCNotificationViewController)initWithNotificationRequest:(id)a3 revealingAdditionalContentOnPresentation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(NCNotificationViewController *)self isMemberOfClass:objc_opt_class()])
  {
    if (v4)
    {
      v7 = [NCNotificationLongLookViewController alloc];
      v8 = v6;
      v9 = 1;
    }

    else
    {
      v7 = [NCNotificationShortLookViewController alloc];
      v8 = v6;
      v9 = 0;
    }

    v10 = [(NCNotificationLongLookViewController *)v7 _initWithNotificationRequest:v8 revealingAdditionalContentOnPresentation:v9];
  }

  else
  {
    v10 = [(NCNotificationViewController *)self _initWithNotificationRequest:v6 revealingAdditionalContentOnPresentation:v4];
  }

  return v10;
}

- (BOOL)_setDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_delegate, v4);
    [(NCNotificationViewController *)self setStaticContentProvider:0];
    [(NCNotificationViewController *)self setAuxiliaryOptionsContentProvider:0];
    v6 = [(NCNotificationViewController *)self view];
    [v6 setNeedsLayout];
  }

  return WeakRetained != v4;
}

- (void)setBackgroundAlpha:(double)a3
{
  if (self->_backgroundAlpha != a3)
  {
    self->_backgroundAlpha = a3;
    [(NCNotificationLookView *)self->_lookView setBackgroundAlpha:?];
  }
}

- (void)setContentAlpha:(double)a3
{
  if (self->_contentAlpha != a3)
  {
    self->_contentAlpha = a3;
    [(NCNotificationLookView *)self->_lookView setContentAlpha:?];
  }
}

- (void)setCompositeAlpha:(double)a3
{
  if (self->_compositeAlpha != a3)
  {
    self->_compositeAlpha = a3;
    [(NCNotificationLookView *)self->_lookView setCompositeAlpha:?];
  }
}

- (void)setDisableDimming:(BOOL)a3
{
  if (self->_disableDimming != a3)
  {
    self->_disableDimming = a3;
    [(NCNotificationLookView *)self->_lookView setDisableDimming:?];
  }
}

- (void)setHideDate:(BOOL)a3
{
  if (self->_hideDate != a3)
  {
    self->_hideDate = a3;
    [(NCNotificationLookView *)self->_lookView setHideDate:?];
  }
}

- (void)setDateAlpha:(double)a3
{
  if (self->_dateAlpha != a3)
  {
    self->_dateAlpha = a3;
    [(NCNotificationLookView *)self->_lookView setDateAlpha:?];
  }
}

- (void)setAllowContentToCrossFade:(BOOL)a3
{
  if (self->_allowContentToCrossFade != a3)
  {
    self->_allowContentToCrossFade = a3;
    [(NCNotificationLookView *)self->_lookView setAllowContentToCrossFade:?];
  }
}

- (void)setContentTransform:(CGAffineTransform *)a3
{
  p_contentTransform = &self->_contentTransform;
  v6 = *&self->_contentTransform.c;
  *&t1.a = *&self->_contentTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_contentTransform.tx;
  v7 = *&a3->c;
  *&v12.a = *&a3->a;
  *&v12.c = v7;
  *&v12.tx = *&a3->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v12))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_contentTransform->c = *&a3->c;
    *&p_contentTransform->tx = v9;
    *&p_contentTransform->a = v8;
    lookView = self->_lookView;
    v11 = *&a3->c;
    *&t1.a = *&a3->a;
    *&t1.c = v11;
    *&t1.tx = *&a3->tx;
    [(NCNotificationLookView *)lookView setContentTransform:&t1];
  }
}

- (void)setApparentZDistanceToUser:(int64_t)a3
{
  if (self->_apparentZDistanceToUser != a3)
  {
    self->_apparentZDistanceToUser = a3;
    [(NCNotificationLookView *)self->_lookView setApparentZDistanceToUser:?];
  }
}

- (void)setRootScrollVelocity:(double)a3
{
  if (self->_rootScrollVelocity != a3)
  {
    self->_rootScrollVelocity = a3;
    [(NCNotificationLookView *)self->_lookView setRootScrollVelocity:?];
  }
}

- (void)setGlassMode:(unint64_t)a3
{
  if (self->_glassMode != a3)
  {
    self->_glassMode = a3;
    [(NCNotificationLookView *)self->_lookView setGlassMode:?];
  }
}

- (void)setUnmanagedBackdropContrast:(BOOL)a3
{
  if (self->_unmanagedBackdropContrast != a3)
  {
    self->_unmanagedBackdropContrast = a3;
    [(NCNotificationLookView *)self->_lookView setUnmanagedBackdropContrast:?];
  }
}

- (void)setBackgroundHidden:(BOOL)a3
{
  if (self->_backgroundHidden != a3)
  {
    self->_backgroundHidden = a3;
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

- (BOOL)_setNotificationRequest:(id)a3
{
  v5 = a3;
  v6 = v5;
  notificationRequest = self->_notificationRequest;
  if (notificationRequest != v5)
  {
    v8 = [(NCNotificationRequest *)v5 matchesRequest:self->_notificationRequest];
    objc_storeStrong(&self->_notificationRequest, a3);
    if (!v8 || ![(NCNotificationViewController *)self _isPresentingCustomContentProvidingViewController])
    {
      v9 = [(NCNotificationViewController *)self _lookViewIfLoaded];
      [v9 setHidden:0];
    }

    [(NCNotificationViewController *)self setStaticContentProvider:0];
    [(NCNotificationViewController *)self setAuxiliaryOptionsContentProvider:0];
    [(NCNotificationViewController *)self _updateScreenCaptureProhibited];
    v10 = [(NCNotificationViewController *)self view];
    [v10 setNeedsLayout];
  }

  return notificationRequest != v6;
}

- (void)setStaticContentProvider:(id)a3
{
  v5 = a3;
  if (self->_staticContentProvider != v5)
  {
    objc_storeStrong(&self->_staticContentProvider, a3);
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

  v4 = [(NCNotificationStaticContentProviding *)staticContentProvider delegate];

  if (!v4)
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

- (void)setAuxiliaryOptionsContentProvider:(id)a3
{
  v6 = a3;
  v5 = [(NCNotificationViewController *)self auxiliaryOptionsContentProvider];

  if (v5 != v6)
  {
    objc_storeStrong(&self->_auxiliaryOptionsContentProvider, a3);
    [(NCNotificationViewController *)self _updateWithProvidedAuxiliaryOptionsContent];
  }
}

- (id)_customContentProvidingViewControllerCreateIfNecessary
{
  v3 = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (!v3)
  {
    v4 = [(NCNotificationViewController *)self customContentProvider];
    v5 = [(NCNotificationViewController *)self notificationRequest];
    v3 = [v4 customContentViewControllerForNotificationRequest:v5];

    [(NCNotificationViewController *)self _setCustomContentProvidingViewController:v3];
  }

  return v3;
}

- (void)_setCustomContentProvidingViewController:(id)a3
{
  v5 = a3;
  customContentProvidingViewController = self->_customContentProvidingViewController;
  v8 = v5;
  if (customContentProvidingViewController != v5)
  {
    [(NCNotificationCustomContent *)customContentProvidingViewController willMoveToParentViewController:0];
    [(NCNotificationCustomContent *)self->_customContentProvidingViewController removeFromParentViewController];
    objc_storeStrong(&self->_customContentProvidingViewController, a3);
    v7 = self->_customContentProvidingViewController;
    if (v7)
    {
      [(NCNotificationCustomContent *)v7 setDelegate:self];
      [(NCNotificationViewController *)self addChildViewController:self->_customContentProvidingViewController];
      [(NCNotificationCustomContent *)self->_customContentProvidingViewController didMoveToParentViewController:self];
    }
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    v8 = v4;
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

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (void)_notifyObserversWithBlock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
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
            v4[2](v4, self, v10);

            objc_destroyWeak(&location);
          }

          v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }
  }
}

- (BOOL)didForwardNotificationRequestToCustomContent:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (v5)
  {
    v6 = [(NCNotificationViewController *)self _customContentProvidingViewController];
    v7 = [v6 didReceiveNotificationRequest:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)preserveInputViews
{
  v2 = [(NCNotificationViewController *)self _presentedLongLookViewController];
  [v2 preserveInputViews];
}

- (BOOL)restoreInputViews
{
  v2 = [(NCNotificationViewController *)self _presentedLongLookViewController];
  v3 = [v2 restoreInputViews];

  return v3;
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

- (void)setInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEBUG))
  {
    [(NCNotificationViewController *)v3 setInteractionEnabled:v5];
  }

  self->_interactionEnabled = v3;
  v6 = [(NCNotificationViewController *)self view];
  [v6 setUserInteractionEnabled:v3];
}

- (id)containerViewForExpandedContent
{
  v2 = [(UIViewController *)self nc_presentationContextDefiningViewController];
  v3 = [v2 view];
  v4 = [v3 superview];

  return v4;
}

- (id)_lookViewLoadingIfNecessary:(BOOL)a3
{
  v3 = a3;
  if (([(NCNotificationViewController *)self isViewLoaded]& 1) != 0 || v3)
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
  v3 = [(NCNotificationViewController *)self view];
  v4 = UNSafeCast();

  return v4;
}

- (void)_notificationViewControllerViewDidLoad
{
  v4 = [(NCNotificationViewController *)self view];
  [v4 setAutoresizesSubviews:1];
  [(NCNotificationViewController *)self _loadLookView];
  [(NCNotificationLookView *)self->_lookView setAdjustsFontForContentSizeCategory:1];
  v3 = [(NCNotificationViewController *)self _notificationViewControllerView];
  [v3 setContentView:self->_lookView];
}

- (CGSize)_preferredCustomContentSizeForSize:(CGSize)a3 parentContentContainerBounds:(CGRect)a4
{
  height = a3.height;
  width = a3.width;
  v6 = [(NCNotificationViewController *)self _lookViewIfLoaded:a3.width];
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

- (void)_setPreferredCustomContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(NCNotificationViewController *)self _contentSizeManagingView];
  [v6 sizeThatFitsContentWithSize:{width, height}];
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
  v4 = [(NCNotificationViewController *)self notificationRequest];
  v3 = [v4 options];
  -[NCNotificationLookView setScreenCaptureProhibited:](lookView, "setScreenCaptureProhibited:", [v3 screenCaptureProhibited]);
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v2->_reasonsToTransitionBlockingAssertions;
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

        v8 = [(NSMapTable *)v2->_reasonsToTransitionBlockingAssertions objectForKey:*(*(&v10 + 1) + 8 * i), v10];
        if ([v8 isValid])
        {
          [v3 addObject:v8];
        }
      }

      v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v2);

  return v3;
}

- (id)requestTransitionBlockingAssertionWithReason:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NCNotificationViewController *)v5 activeTransitionBlockingAssertionForReason:v4];
    if (!v6)
    {
      v7 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(NCNotificationRequest *)v5->_notificationRequest notificationIdentifier];
        v9 = [v8 un_logDigest];
        *buf = 138543618;
        v17 = v9;
        v18 = 2114;
        v19 = v4;
        _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "New transition blocking assertion requested for notification view controller for request '%{public}@' with reason '%{public}@'", buf, 0x16u);
      }

      if (!v5->_reasonsToTransitionBlockingAssertions)
      {
        v10 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
        reasonsToTransitionBlockingAssertions = v5->_reasonsToTransitionBlockingAssertions;
        v5->_reasonsToTransitionBlockingAssertions = v10;
      }

      v6 = [[NCAssertion alloc] initWithInstantiationReason:v4];
      objc_initWeak(buf, v5);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __77__NCNotificationViewController_requestTransitionBlockingAssertionWithReason___block_invoke;
      v14[3] = &unk_27836F450;
      objc_copyWeak(&v15, buf);
      [(NCAssertion *)v6 addInvalidationBlock:v14];
      [(NSMapTable *)v5->_reasonsToTransitionBlockingAssertions setObject:v6 forKey:v4];
      WeakRetained = objc_loadWeakRetained(&v5->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained notificationRequestPresenter:v5 didVendTransitionBlockingAssertion:v6];
      }

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }

    objc_sync_exit(v5);
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

- (id)activeTransitionBlockingAssertionForReason:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMapTable *)v5->_reasonsToTransitionBlockingAssertions objectForKey:v4];
    objc_sync_exit(v5);
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

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v7 viewWillAppear:a3];
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

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v6 viewDidAppear:a3];
  pendingPresentationTransitionDidEndBlock = self->_pendingPresentationTransitionDidEndBlock;
  if (pendingPresentationTransitionDidEndBlock)
  {
    v5 = _Block_copy(pendingPresentationTransitionDidEndBlock);
    [(NCNotificationViewController *)self _setPendingPresentationTransitionDidEndBlock:0];
    v5[2](v5);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v7 viewWillDisappear:a3];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v15 viewDidDisappear:a3];
  v4 = self;
  objc_sync_enter(v4);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NCNotificationViewController *)v4 activeTransitionBlockingAssertions];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v8++) invalidateWithReason:@"notificationViewController.invalidationReason.dismissed"];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
  pendingPresentationTransitionDidEndBlock = v4->_pendingPresentationTransitionDidEndBlock;
  if (pendingPresentationTransitionDidEndBlock)
  {
    v10 = _Block_copy(pendingPresentationTransitionDidEndBlock);
    [(NCNotificationViewController *)v4 _setPendingPresentationTransitionDidEndBlock:0];
    v10[2](v10);
  }
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v5 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
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
  v3 = [(NCNotificationViewController *)self presentingViewController];
  if (v3)
  {
    v4 = [(NCNotificationViewController *)self presentingViewController];
    v5 = [v4 shouldAutorotate];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = 1;
  if (!v6)
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
  v11 = v9;
  v14 = v11;
  v12.receiver = self;
  v12.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v12 presentViewController:v8 animated:1 completion:v13];

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

- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4
{
  v6 = a4;
  v7 = 1;
  if (!a3)
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
  v8 = v6;
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

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4
{
  height = a3.height;
  width = a3.width;
  BSRectWithSize();
  [(NCNotificationViewController *)self _preferredCustomContentSizeForSize:width parentContentContainerBounds:height, v7, v8, v9, v10];
  v12 = v11;
  v14 = v13;
  v15 = [(NCNotificationViewController *)self _contentSizeManagingView];
  [v15 sizeThatFitsContentWithSize:{v12, v14}];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NCNotificationViewController;
  [(NCNotificationViewController *)&v12 preferredContentSizeDidChangeForChildContentContainer:v4];
  v5 = [(NCNotificationViewController *)self _customContentProvidingViewController];

  if (v5 == v4)
  {
    v6 = [v4 transitionCoordinator];
    v7 = v6;
    if (v6)
    {
      if ([v6 presentationStyle] == -1)
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
    [(NCNotificationViewController *)self sizeForChildContentContainer:v4 withParentContainerSize:?];
    [(NCAnimationCoordinator *)v8 viewOfChildContainer:v4 willChangeToSize:?];
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

- (void)_executeDefaultAction:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = [(NCNotificationViewController *)self _staticContentProviderLoadingIfNecessary];
  v6 = [v5 defaultAction];

  v7 = *MEMORY[0x277D77DD0];
  v8 = *MEMORY[0x277D77DD0];
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v7;
      v10 = [(NCNotificationViewController *)self notificationRequest];
      v11 = [v10 notificationIdentifier];
      v12 = [v11 un_logDigest];
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "Executing default action for %{public}@", &v13, 0xCu);
    }

    v6[2](v6, v3);
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(NCNotificationViewController *)v7 _executeDefaultAction:?];
  }
}

- (void)_executeClearAction:(BOOL)a3
{
  v3 = a3;
  v4 = [(NCNotificationViewController *)self _staticContentProviderLoadingIfNecessary];
  v6 = [v4 clearAction];

  v5 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
    v5 = v6;
  }
}

- (void)_executeCloseAction:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCNotificationViewController *)self _staticContentProviderLoadingIfNecessary];
  v6 = [v5 closeAction];

  if (v6)
  {
    [(NCNotificationViewController *)self _setShouldRestorePresentingShortLookOnDismiss:1];
    v6[2](v6, v3);
  }
}

- (void)_executeCancelAction:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCNotificationViewController *)self _staticContentProviderLoadingIfNecessary];
  v6 = [v5 cancelAction];

  if (v6)
  {
    [(NCNotificationViewController *)self _setShouldRestorePresentingShortLookOnDismiss:1];
    v6[2](v6, v3);
  }
}

- (void)_executeNilAction:(BOOL)a3
{
  v3 = a3;
  v5 = [(NCNotificationViewController *)self _staticContentProviderLoadingIfNecessary];
  v6 = [v5 nilAction];

  if (v6)
  {
    [(NCNotificationViewController *)self _setShouldRestorePresentingShortLookOnDismiss:1];
    v6[2](v6, v3);
  }
}

- (void)_askDelegateToExecuteAction:(id)a3 withParameters:(id)a4 animated:(BOOL)a5
{
  v32 = a5;
  v48 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(NCNotificationRequest *)self->_notificationRequest notificationIdentifier];
  v10 = [v9 un_logDigest];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__NCNotificationViewController__askDelegateToExecuteAction_withParameters_animated___block_invoke;
  aBlock[3] = &unk_27836F510;
  objc_copyWeak(&v42, &location);
  v11 = v10;
  v41 = v11;
  v12 = _Block_copy(aBlock);
  if (v7)
  {
    v13 = [(NCNotificationRequest *)self->_notificationRequest userNotification];
    if (v13)
    {
      v14 = [v8 mutableCopy];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = [MEMORY[0x277CBEB38] dictionary];
      }

      v21 = v16;

      v22 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:0];
      [v21 setValue:v22 forKey:*MEMORY[0x277CE2178]];
      v23 = [v21 copy];

      v8 = v23;
    }

    else if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      [NCNotificationViewController _askDelegateToExecuteAction:withParameters:animated:];
    }

    -[NCNotificationViewController _setShouldRestorePresentingShortLookOnDismiss:](self, "_setShouldRestorePresentingShortLookOnDismiss:", [v7 shouldDismissNotification] ^ 1);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __84__NCNotificationViewController__askDelegateToExecuteAction_withParameters_animated___block_invoke_118;
    v34[3] = &unk_27836F538;
    v35 = v11;
    objc_copyWeak(&v38, &location);
    v24 = v7;
    v36 = v24;
    v37 = v12;
    v39 = v32;
    v25 = _Block_copy(v34);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained notificationRequestPresenter:self executeAction:v24 withParameters:v8 completion:v25];
    }

    else
    {
      v27 = *MEMORY[0x277D77DD0];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v31 = [(NCNotificationViewController *)self notificationRequest];
        v30 = [v31 notificationIdentifier];
        v33 = [v30 un_logDigest];
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
        v45 = v33;
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
      v18 = [(NCNotificationViewController *)self notificationRequest];
      v19 = [v18 notificationIdentifier];
      v20 = [v19 un_logDigest];
      *buf = 138543362;
      v45 = v20;
      _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "NotificationVC was asked to execute nil action for %{public}@; dismissing long look if possible", buf, 0xCu);
    }

    [(NCNotificationViewController *)self _setShouldRestorePresentingShortLookOnDismiss:1];
    v13 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [v13 notificationViewControllerWillDismissForCancelAction:self];
    }

    (*(v12 + 2))(v12, v32);
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

- (void)contentProvider:(id)a3 performAction:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = [(NCNotificationViewController *)self _customContentProvidingViewController];
    v11 = [(NCNotificationViewController *)self notificationRequest];
    v12 = [v10 performAction:v9 forNotification:v11];

    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = [v9 identifier];
  v15 = [v14 isEqual:*MEMORY[0x277CE20F0]];

  if ((v13 & 1) != 0 || v15)
  {
    [(NCNotificationViewController *)self _askDelegateToExecuteAction:v9 withParameters:MEMORY[0x277CBEC10] animated:v5];
  }

  else
  {
    v16 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = [(NCNotificationViewController *)self notificationRequest];
      v19 = [v18 notificationIdentifier];
      v20 = [v19 un_logDigest];
      v21 = 138543874;
      v22 = v20;
      v23 = 1024;
      v24 = 1;
      v25 = 1024;
      v26 = 0;
      _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "Skip asking delegate to perform action for request %{public}@; actionWasHandled: %{BOOL}d; isDismissAction: %{BOOL}d", &v21, 0x18u);
    }
  }
}

- (void)customContent:(id)a3 requestPermissionToExecuteAction:(id)a4 forNotification:(id)a5 withUserInfo:(id)a6 completionHandler:(id)a7
{
  v10 = a7;
  v11 = a6;
  v12 = a4;
  v13 = [(NCNotificationViewController *)self delegate];
  [v13 notificationViewController:self requestPermissionToExecuteAction:v12 withParameters:v11 completion:v10];
}

- (id)expandedPlatterPresentationController:(id)a3 keyboardAssertionForGestureWindow:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 notificationViewController:self keyboardAssertionForGestureWindow:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)hideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:(id)a3
{
  v4 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 hideHomeAffordanceAnimationSettingsForNotificationViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)unhideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:(id)a3
{
  v4 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 unhideHomeAffordanceAnimationSettingsForNotificationViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)settleHomeAffordanceAnimationBehaviorDescriptionForExpandedPlatterPresentationController:(id)a3
{
  v4 = [(NCNotificationViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 settleHomeAffordanceAnimationBehaviorDescriptionForNotificationViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(NCNotificationViewController *)self _lookViewIfLoaded];
  v4 = v3;
  if (v3)
  {
    [v3 adjustForContentSizeCategoryChange];
    [(NCNotificationViewController *)self setHasUpdatedContent];
    v5 = [(NCNotificationViewController *)self view];
    [v5 setNeedsLayout];
  }

  return 1;
}

- (void)configureStackDimmingForTransform:(CGAffineTransform *)a3
{
  v4 = [(NCNotificationViewController *)self _notificationViewControllerView];
  v5 = *&a3->c;
  v6[0] = *&a3->a;
  v6[1] = v5;
  v6[2] = *&a3->tx;
  [v4 configureStackDimmingForTransform:v6];
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(NCNotificationViewController *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__NCNotificationViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_27836F560;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v10];

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
  v2 = [(NCNotificationViewController *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NCNotificationViewController *)self notificationRequest];
  v5 = [v4 notificationIdentifier];
  v6 = [v5 un_logDigest];
  [v3 appendString:v6 withName:@"notificationID" skipIfEmpty:1];

  if (([(NCNotificationViewController *)self isViewLoaded]& 1) != 0)
  {
    v7 = [(NCNotificationViewController *)self view];
    v8 = [v3 appendObject:v7 withName:@"view"];
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

- (void)presentLongLookAnimated:(BOOL)a3 trigger:(int64_t)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0);
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