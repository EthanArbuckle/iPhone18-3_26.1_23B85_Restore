@interface NCNotificationLongLookViewController
+ (void)initialize;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)expandedPlatterPresentationControllerShouldAllowKeyboardOnAppearance:(id)a3;
- (BOOL)expandedPlatterPresentationControllerShouldProvideBackground:(id)a3;
- (BOOL)isContentExtensionVisible:(id)a3;
- (BOOL)notificationLongLookView:(id)a3 tapGestureRecognizerShouldReceiveTouch:(id)a4;
- (BOOL)resignFirstResponder;
- (BOOL)restoreInputViews;
- (CGRect)expandedPlatterPresentationController:(id)a3 frameForTransitionViewInPresentationSuperview:(id)a4;
- (CGSize)_preferredCustomContentSizeForSize:(CGSize)a3 parentContentContainerBounds:(CGRect)a4;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (PLClickPresentationInteractionPresenting)presenter;
- (PLExpandedPlatterDismissing)dismisser;
- (id)_expandedPlatterPresentationViewLoadingIfNecessary:(BOOL)a3;
- (id)_expandedPlatterPresentationViewScrollView;
- (id)_extensionIdentifier;
- (id)_initWithNotificationRequest:(id)a3 andPresentingNotificationViewController:(id)a4 revealingAdditionalContentOnPresentation:(BOOL)a5;
- (id)_longLookViewIfLoaded;
- (id)_longLookViewLoadingIfNecessary;
- (id)_longLookViewScrollView;
- (id)_presentingNotificationViewController;
- (id)customBackgroundContainerViewForExpandedPlatterPresentationController:(id)a3;
- (id)expandedPlatterPresentationController:(id)a3 keyboardAssertionForGestureWindow:(id)a4;
- (id)hideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:(id)a3;
- (id)settleHomeAffordanceAnimationBehaviorDescriptionForExpandedPlatterPresentationController:(id)a3;
- (id)unhideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:(id)a3;
- (unint64_t)_maximumNumberOfPrimaryTextLinesForProvidedStaticContent;
- (unint64_t)_maximumNumberOfSecondaryTextLinesForProvidedStaticContent;
- (unint64_t)_maximumNumberOfTextLinesForProvidedStaticContentWithDefaultNumber:(unint64_t)a3 isPrimary:(BOOL)a4 isLarge:(BOOL)a5;
- (void)_handleIconButton:(id)a3;
- (void)_handleNotificationTap:(id)a3;
- (void)_loadLookView;
- (void)_notificationViewControllerViewDidLoad;
- (void)_setPreferredCustomContentSize:(CGSize)a3;
- (void)_updateLookView:(id)a3 withTitleFromProvidedStaticContent:(id)a4;
- (void)_updateTitleWithProvidedCustomContent;
- (void)_updateWithProvidedCustomContent;
- (void)_updateWithProvidedStaticContent;
- (void)customContent:(id)a3 didUpdateUserNotificationActions:(id)a4;
- (void)customContentDidLoadExtension:(id)a3;
- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4;
- (void)expandedPlatterPresentable:(id)a3 requestsDismissalWithTrigger:(int64_t)a4;
- (void)loadView;
- (void)notificationLongLookView:(id)a3 willInteractWithURL:(id)a4;
- (void)playMedia;
- (void)presentLongLookAnimated:(BOOL)a3 trigger:(int64_t)a4 completion:(id)a5;
- (void)preserveInputViews;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setCustomContentHomeAffordanceGestureRecognizer:(id)a3;
- (void)setCustomContentHomeAffordanceVisible:(BOOL)a3;
- (void)setNotificationRequest:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation NCNotificationLongLookViewController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [&__block_literal_global_41 copy];
    __willInteractWithLinkSentinelBlock = v2;

    MEMORY[0x2821F96F8](v2);
  }
}

- (id)_initWithNotificationRequest:(id)a3 andPresentingNotificationViewController:(id)a4 revealingAdditionalContentOnPresentation:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = NCNotificationLongLookViewController;
  v9 = [(NCNotificationViewController *)&v15 _initWithNotificationRequest:a3 revealingAdditionalContentOnPresentation:v5];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(v9 + 158, v8);
    v11 = objc_alloc_init(NCLongLookTransitioningDelegate);
    v12 = v10[156];
    v10[156] = v11;

    [v10 setTransitioningDelegate:v10[156]];
    [v10 setModalPresentationStyle:4];
    [v10 _setupCustomContentProvider];
    v13 = [v10 _customContentProvidingViewControllerCreateIfNecessary];
    [v10 _setCustomContentProvidingViewController:v13];

    [v10 _setShouldRestorePresentingShortLookOnDismiss:1];
  }

  return v10;
}

- (void)setNotificationRequest:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v6.receiver = self;
  v6.super_class = NCNotificationLongLookViewController;
  [(NCNotificationViewController *)&v6 setNotificationRequest:v4];
}

- (BOOL)isContentExtensionVisible:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationLongLookViewController *)self _extensionIdentifier];
  v6 = [v5 isEqualToString:v4];

  return v6;
}

- (void)preserveInputViews
{
  v2 = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (objc_opt_respondsToSelector())
  {
    [v2 preserveInputViews];
  }
}

- (BOOL)restoreInputViews
{
  v2 = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 restoreInputViews];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCustomContentHomeAffordanceVisible:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = NCNotificationLongLookViewController;
  [(NCNotificationViewController *)&v6 setCustomContentHomeAffordanceVisible:?];
  v5 = [(NCNotificationLongLookViewController *)self expandedPlatterPresentationController];
  [v5 setHomeAffordanceVisible:v3];
}

- (void)setCustomContentHomeAffordanceGestureRecognizer:(id)a3
{
  v6.receiver = self;
  v6.super_class = NCNotificationLongLookViewController;
  v4 = a3;
  [(NCNotificationViewController *)&v6 setCustomContentHomeAffordanceGestureRecognizer:v4];
  v5 = [(NCNotificationLongLookViewController *)self expandedPlatterPresentationController:v6.receiver];
  [v5 setHomeAffordancePanGesture:v4];
}

- (void)_updateLookView:(id)a3 withTitleFromProvidedStaticContent:(id)a4
{
  v8 = a4;
  v5 = [(NCNotificationViewController *)self _customContentProvidingViewController];
  v6 = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded];
  if ([v5 overridesDefaultTitle])
  {
    v7 = [v5 title];
    [v6 setTitle:v7];
  }

  else
  {
    [v6 setTitle:v8];
  }
}

- (void)playMedia
{
  v2 = [(NCNotificationViewController *)self _customContentProvidingViewControllerCreateIfNecessary];
  if (objc_opt_respondsToSelector())
  {
    [v2 playMedia];
  }
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D3D2F0]);
  [(NCNotificationLongLookViewController *)self setView:v3];
  [v3 setPresentableViewController:self];
  [v3 setDelegate:self];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = NCNotificationLongLookViewController;
  [(NCNotificationViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded];
  if (v3)
  {
    v4 = [(NCNotificationLongLookViewController *)self _expandedPlatterPresentationViewScrollView];
    [v4 bounds];
    [v3 setFrame:?];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = NCNotificationLongLookViewController;
  [(NCNotificationViewController *)&v6 viewWillAppear:a3];
  v4 = [(NCNotificationLongLookViewController *)self view];
  v5 = [v4 window];
  [v5 makeKeyAndVisible];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = NCNotificationLongLookViewController;
  [(NCNotificationViewController *)&v6 viewDidDisappear:a3];
  v4 = [(NCNotificationLongLookViewController *)self view];
  v5 = [v4 window];
  [v5 resignKeyWindow];
}

- (void)dismissViewControllerWithTransition:(int)a3 completion:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(NCNotificationLongLookViewController *)self presenter];
  v8 = [v7 clickPresentationInteractionManager];

  if (([v8 dismissIfPossible:v6] & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = NCNotificationLongLookViewController;
    [(NCNotificationViewController *)&v9 dismissViewControllerWithTransition:v4 completion:v6];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = NCNotificationLongLookViewController;
  [(NCNotificationLongLookViewController *)&v26 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(UIViewController *)self nc_presentationControllerIfPresented];
  if (v8)
  {
    v9 = NCRectWithSize();
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v16 = [v7 containerView];
    [v16 bounds];
    v9 = v17;
    v11 = v18;
    v13 = v19;
    v15 = v20;
  }

  v21 = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded];
  v27.origin.x = v9;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  v22 = CGRectGetWidth(v27);
  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  [v21 setDismissControlPosition:v22 > CGRectGetHeight(v28)];

  [(NCNotificationLongLookViewController *)self _preferredCustomContentSizeForSize:*MEMORY[0x277CBF3A8] parentContentContainerBounds:*(MEMORY[0x277CBF3A8] + 8), v9, v11, v13, v15];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __91__NCNotificationLongLookViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v25[3] = &unk_278371760;
  v25[4] = self;
  v25[5] = v23;
  v25[6] = v24;
  [v7 animateAlongsideTransition:v25 completion:0];
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (v8 == v7)
  {
    [v7 sizeForChildContentContainer:v7 withParentContainerSize:{width, height}];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NCNotificationLongLookViewController;
    [(NCNotificationLongLookViewController *)&v15 sizeForChildContentContainer:v7 withParentContainerSize:width, height];
  }

  v11 = v9;
  v12 = v10;

  v13 = v11;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)customContent:(id)a3 didUpdateUserNotificationActions:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(NCNotificationViewController *)self notificationRequest];
    v11 = [v10 notificationIdentifier];
    v12 = [v11 un_logDigest];
    *buf = 138543362;
    v22 = v12;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "Custom content extension is updating long look actions for notification request %{public}@", buf, 0xCu);
  }

  v13 = [(NCNotificationViewController *)self staticContentProvider];
  [v13 setOverriddenActions:v7];

  [(NCNotificationLongLookViewController *)self _updateWithProvidedStaticContent];
  [(NCNotificationLongLookViewController *)self preferredContentSize];
  v15 = v14;
  v17 = v16;
  [(NCNotificationViewController *)self _updatePreferredContentSize];
  [(NCNotificationLongLookViewController *)self preferredContentSize];
  if (v15 == v19 && v17 == v18)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __87__NCNotificationLongLookViewController_customContent_didUpdateUserNotificationActions___block_invoke;
    v20[3] = &unk_27836F6A8;
    v20[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:4 delay:v20 options:0 animations:0.25 completion:0.0];
  }
}

void __87__NCNotificationLongLookViewController_customContent_didUpdateUserNotificationActions___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _longLookViewIfLoaded];
  [v1 layoutIfNeeded];
}

- (void)expandedPlatterPresentable:(id)a3 requestsDismissalWithTrigger:(int64_t)a4
{
  v6 = a3;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v19 = v6;
      v7 = +[NCNotificationEventTracker sharedInstance];
      v8 = [(NCNotificationViewController *)self notificationRequest];
      v9 = [(NCNotificationViewController *)self notificationUsageTrackingState];
      v10 = v7;
      v11 = 1;
LABEL_10:
      [v10 longLookReparkInvokedWithTrigger:v11 forNotificationRequest:v8 withState:v9];

      [(NCNotificationViewController *)self _executeCancelAction:1];
      goto LABEL_11;
    }

    if (a4 != 4)
    {
      goto LABEL_12;
    }

    v19 = v6;
    v12 = +[NCNotificationEventTracker sharedInstance];
    v13 = [(NCNotificationViewController *)self notificationRequest];
    v14 = [(NCNotificationViewController *)self notificationUsageTrackingState];
    [v12 longLookDismissInvokedWithTrigger:1 forNotificationRequest:v13 withState:v14];

    [(NCNotificationViewController *)self _executeCloseAction:1];
  }

  else
  {
    if (a4 != 1)
    {
      if (a4 != 2)
      {
        goto LABEL_12;
      }

      v19 = v6;
      v7 = +[NCNotificationEventTracker sharedInstance];
      v8 = [(NCNotificationViewController *)self notificationRequest];
      v9 = [(NCNotificationViewController *)self notificationUsageTrackingState];
      v10 = v7;
      v11 = 0;
      goto LABEL_10;
    }

    v19 = v6;
    v15 = +[NCNotificationEventTracker sharedInstance];
    v16 = [(NCNotificationViewController *)self notificationRequest];
    v17 = [(NCNotificationViewController *)self notificationUsageTrackingState];
    [v15 longLookDismissInvokedWithTrigger:0 forNotificationRequest:v16 withState:v17];

    [(NCNotificationViewController *)self _executeClearAction:1];
    v18 = [(NCNotificationViewController *)self _customContentProvidingViewController];
    [v18 beginAppearanceTransition:0 animated:1];
    [v18 endAppearanceTransition];
  }

LABEL_11:
  v6 = v19;
LABEL_12:
}

- (void)_updateWithProvidedStaticContent
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = NCNotificationLongLookViewController;
  [(NCNotificationViewController *)&v16 _updateWithProvidedStaticContent];
  v3 = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded];
  v4 = [v3 lookViewTapGestureRecognizer];
  [v4 addTarget:self action:sel__handleNotificationTap_];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v3 iconButtons];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * i) addTarget:self action:sel__handleIconButton_ forControlEvents:64];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [(NCNotificationViewController *)self staticContentProvider];
  v11 = [v10 interfaceActions];
  [v3 setInterfaceActions:v11];
}

- (unint64_t)_maximumNumberOfPrimaryTextLinesForProvidedStaticContent
{
  v3.receiver = self;
  v3.super_class = NCNotificationLongLookViewController;
  return [(NCNotificationLongLookViewController *)self _maximumNumberOfTextLinesForProvidedStaticContentWithDefaultNumber:[(NCNotificationViewController *)&v3 _maximumNumberOfPrimaryTextLinesForProvidedStaticContent] isPrimary:1 isLarge:0];
}

- (unint64_t)_maximumNumberOfSecondaryTextLinesForProvidedStaticContent
{
  v3.receiver = self;
  v3.super_class = NCNotificationLongLookViewController;
  return [(NCNotificationLongLookViewController *)self _maximumNumberOfTextLinesForProvidedStaticContentWithDefaultNumber:[(NCNotificationViewController *)&v3 _maximumNumberOfSecondaryTextLinesForProvidedStaticContent] isPrimary:0 isLarge:0];
}

- (unint64_t)_maximumNumberOfTextLinesForProvidedStaticContentWithDefaultNumber:(unint64_t)a3 isPrimary:(BOOL)a4 isLarge:(BOOL)a5
{
  v7 = [(NCNotificationViewController *)self staticContentProvider:a3];
  v8 = [v7 isNumberOfLinesInfinite];

  if (v8 & 1 | !a4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (void)_updateWithProvidedCustomContent
{
  v3 = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded];
  if (v3)
  {
    v9 = v3;
    v4 = [(NCNotificationViewController *)self _customContentProvidingViewController];
    v5 = [v4 view];
    v6 = [v9 customContentView];
    [v9 setCustomContentLocation:{objc_msgSend(v4, "customContentLocation")}];
    [v9 setHidesNotificationContent:{objc_msgSend(v4, "defaultContentHidden")}];
    v7 = [v5 superview];

    if (v7 != v6)
    {
      [v6 addSubview:v5];
      [v6 bounds];
      [v5 setFrame:?];
      [v5 setAutoresizingMask:18];
    }

    v8 = [(NCNotificationLongLookViewController *)self view];
    [v8 setNeedsLayout];

    v3 = v9;
  }
}

- (void)_updateTitleWithProvidedCustomContent
{
  v3 = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded];
  if (v3)
  {
    v4 = [(NCNotificationViewController *)self _customContentProvidingViewController];
    v5 = [v4 title];
    v6 = MEMORY[0x277D75D18];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __77__NCNotificationLongLookViewController__updateTitleWithProvidedCustomContent__block_invoke;
    v8[3] = &unk_27836F560;
    v9 = v3;
    v10 = v5;
    v7 = v5;
    [v6 animateWithDuration:v8 animations:0.3];
  }
}

- (void)_loadLookView
{
  if (!self->super._lookView)
  {
    v3 = objc_alloc_init(NCNotificationLongLookView);
    [(PLExpandedPlatterView *)v3 setDelegate:self];
    lookView = self->super._lookView;
    self->super._lookView = v3;
  }
}

- (id)_longLookViewScrollView
{
  v2 = [(NCNotificationLongLookViewController *)self _longLookViewLoadingIfNecessary];
  v3 = [v2 scrollView];

  return v3;
}

- (id)_expandedPlatterPresentationViewScrollView
{
  v2 = [(NCNotificationLongLookViewController *)self _expandedPlatterPresentationViewLoadingIfNecessary:1];
  v3 = [v2 scrollView];

  return v3;
}

- (void)_notificationViewControllerViewDidLoad
{
  v4.receiver = self;
  v4.super_class = NCNotificationLongLookViewController;
  [(NCNotificationViewController *)&v4 _notificationViewControllerViewDidLoad];
  v3 = [(NCNotificationLongLookViewController *)self _expandedPlatterPresentationViewScrollView];
  [v3 addSubview:self->super._lookView];
}

- (CGSize)_preferredCustomContentSizeForSize:(CGSize)a3 parentContentContainerBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded:a3.width];
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v10 = CGRectGetWidth(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  [v9 setDismissControlPosition:v10 > CGRectGetHeight(v26)];

  v11 = objc_opt_class();
  v12 = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded];
  [v11 useableContainerViewBoundsForExpandedPlatter:v12 inContainerViewWithBounds:{x, y, width, height}];
  v14 = v13;
  v16 = v15;

  v17 = [(NCNotificationViewController *)self _customContentProvidingViewController];
  [(NCNotificationLongLookViewController *)self sizeForChildContentContainer:v17 withParentContainerSize:fmin(v14, 556.0), v16];
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)_setPreferredCustomContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded];
  [v6 setCustomContentSize:{width, height}];

  v7.receiver = self;
  v7.super_class = NCNotificationLongLookViewController;
  [(NCNotificationViewController *)&v7 _setPreferredCustomContentSize:width, height];
}

- (id)_extensionIdentifier
{
  v2 = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 contentExtensionIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_handleIconButton:(id)a3
{
  v4 = +[NCNotificationEventTracker sharedInstance];
  v5 = [(NCNotificationViewController *)self notificationRequest];
  v6 = [(NCNotificationViewController *)self notificationUsageTrackingState];
  [v4 longLookDefaultActionInvokedWithTrigger:0 forNotificationRequest:v5 withState:v6];

  [(NCNotificationViewController *)self _executeDefaultAction:1];
}

- (void)_handleNotificationTap:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    notificationTapBlock = self->_notificationTapBlock;
    if (notificationTapBlock == __willInteractWithLinkSentinelBlock)
    {
      self->_notificationTapBlock = 0;
    }

    else
    {
      objc_initWeak(&location, self);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __63__NCNotificationLongLookViewController__handleNotificationTap___block_invoke;
      v8[3] = &unk_27836F498;
      objc_copyWeak(&v9, &location);
      [(NCNotificationLongLookViewController *)self _setNotificationTapBlock:v8];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__NCNotificationLongLookViewController__handleNotificationTap___block_invoke_2;
      block[3] = &unk_27836F498;
      objc_copyWeak(&v7, &location);
      dispatch_async(MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v7);
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

void __63__NCNotificationLongLookViewController__handleNotificationTap___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[NCNotificationEventTracker sharedInstance];
  v2 = [WeakRetained notificationRequest];
  v3 = [WeakRetained notificationUsageTrackingState];
  [v1 longLookDefaultActionInvokedWithTrigger:1 forNotificationRequest:v2 withState:v3];

  [WeakRetained _executeDefaultAction:1];
}

void __63__NCNotificationLongLookViewController__handleNotificationTap___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _notificationTapBlock];
  [WeakRetained _setNotificationTapBlock:0];
  if (v1 && v1 != __willInteractWithLinkSentinelBlock)
  {
    v1[2](v1);
  }
}

- (BOOL)expandedPlatterPresentationControllerShouldAllowKeyboardOnAppearance:(id)a3
{
  v3 = [(NCNotificationViewController *)self staticContentProvider];
  v4 = [v3 showsTextInputOnAppearance];

  return v4;
}

- (id)expandedPlatterPresentationController:(id)a3 keyboardAssertionForGestureWindow:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NCNotificationLongLookViewController *)self _presentingNotificationViewController];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 expandedPlatterPresentationController:v7 keyboardAssertionForGestureWindow:v6];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NCNotificationLongLookViewController;
    v9 = [(NCNotificationViewController *)&v12 expandedPlatterPresentationController:v7 keyboardAssertionForGestureWindow:v6];
  }

  v10 = v9;

  return v10;
}

- (id)hideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationLongLookViewController *)self _presentingNotificationViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 hideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:v4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NCNotificationLongLookViewController;
    v6 = [(NCNotificationViewController *)&v9 hideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:v4];
  }

  v7 = v6;

  return v7;
}

- (id)unhideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationLongLookViewController *)self _presentingNotificationViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 unhideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:v4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NCNotificationLongLookViewController;
    v6 = [(NCNotificationViewController *)&v9 unhideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:v4];
  }

  v7 = v6;

  return v7;
}

- (id)settleHomeAffordanceAnimationBehaviorDescriptionForExpandedPlatterPresentationController:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationLongLookViewController *)self _presentingNotificationViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 settleHomeAffordanceAnimationBehaviorDescriptionForExpandedPlatterPresentationController:v4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NCNotificationLongLookViewController;
    v6 = [(NCNotificationViewController *)&v9 settleHomeAffordanceAnimationBehaviorDescriptionForExpandedPlatterPresentationController:v4];
  }

  v7 = v6;

  return v7;
}

- (CGRect)expandedPlatterPresentationController:(id)a3 frameForTransitionViewInPresentationSuperview:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NCNotificationLongLookViewController *)self _presentingNotificationViewController];
  if (objc_opt_respondsToSelector())
  {
    [v8 expandedPlatterPresentationController:v6 frameForTransitionViewInPresentationSuperview:v7];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)expandedPlatterPresentationControllerShouldProvideBackground:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationLongLookViewController *)self _presentingNotificationViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 expandedPlatterPresentationControllerShouldProvideBackground:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)customBackgroundContainerViewForExpandedPlatterPresentationController:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationLongLookViewController *)self _presentingNotificationViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 customBackgroundContainerViewForExpandedPlatterPresentationController:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationLongLookViewController *)self _longLookViewScrollView];

  if (v5 == v4)
  {
    v8 = [(NCNotificationViewController *)self _customContentProvidingViewController];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v8 cancelTouches];
      cancelTouchesToken = self->_cancelTouchesToken;
      self->_cancelTouchesToken = v6;
    }
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v9 = a3;
  v6 = [(NCNotificationLongLookViewController *)self _longLookViewScrollView];

  if (v6 == v9 && !a4)
  {
    v7 = [v9 isDecelerating];
    if ((v7 & 1) == 0)
    {
      cancelTouchesToken = self->_cancelTouchesToken;
      self->_cancelTouchesToken = 0;
    }
  }

  MEMORY[0x2821F96F8](v7);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationLongLookViewController *)self _longLookViewScrollView];

  if (v5 == v4)
  {
    cancelTouchesToken = self->_cancelTouchesToken;
    self->_cancelTouchesToken = 0;
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationLongLookViewController *)self _longLookViewScrollView];

  if (v5 == v4)
  {
    cancelTouchesToken = self->_cancelTouchesToken;
    self->_cancelTouchesToken = 0;
  }
}

- (void)notificationLongLookView:(id)a3 willInteractWithURL:(id)a4
{
  v5 = a3;
  v6 = [(NCNotificationViewController *)self _lookView];

  if (v6 == v5)
  {
    v7 = _Block_copy(__willInteractWithLinkSentinelBlock);
    self->_notificationTapBlock = v7;

    MEMORY[0x2821F96F8](v7);
  }
}

- (BOOL)notificationLongLookView:(id)a3 tapGestureRecognizerShouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if ([v6 userInteractionEnabled])
  {
    v7 = [v5 view];
    v8 = [(NCNotificationViewController *)self _lookViewIfLoaded];
    v9 = [v8 customContentView];
    v10 = [v7 isDescendantOfView:v9] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)canBecomeFirstResponder
{
  v3 = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (v3)
  {
    v4 = [(NCNotificationViewController *)self _customContentProvidingViewController];
    v5 = [v4 canBecomeFirstResponder];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NCNotificationLongLookViewController;
    v5 = [(NCNotificationLongLookViewController *)&v7 canBecomeFirstResponder];
  }

  return v5;
}

- (BOOL)becomeFirstResponder
{
  v3 = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 restoreInputViews];
    }

    else
    {
      v4 = [v3 becomeFirstResponder];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NCNotificationLongLookViewController;
    v4 = [(NCNotificationLongLookViewController *)&v7 becomeFirstResponder];
  }

  v5 = v4;

  return v5;
}

- (BOOL)canResignFirstResponder
{
  v3 = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (v3)
  {
    v4 = [(NCNotificationViewController *)self _customContentProvidingViewController];
    v5 = [v4 canResignFirstResponder];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NCNotificationLongLookViewController;
    v5 = [(NCNotificationLongLookViewController *)&v7 canResignFirstResponder];
  }

  return v5;
}

- (BOOL)resignFirstResponder
{
  v3 = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      [v3 preserveInputViews];
    }

    v4 = [v3 resignFirstResponder];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NCNotificationLongLookViewController;
    v4 = [(NCNotificationLongLookViewController *)&v7 resignFirstResponder];
  }

  v5 = v4;

  return v5;
}

- (void)customContentDidLoadExtension:(id)a3
{
  v4 = a3;
  if ([(NCNotificationLongLookViewController *)self bs_isAppearingOrAppeared])
  {
    v5 = [(NCNotificationLongLookViewController *)self view];
    v6 = [v5 window];
    [v6 makeKeyAndVisible];
  }

  if ([+[NCNotificationLongLookViewController superclass](NCNotificationLongLookViewController "superclass")])
  {
    v7.receiver = self;
    v7.super_class = NCNotificationLongLookViewController;
    [(NCNotificationLongLookViewController *)&v7 customContentDidLoadExtension:v4];
  }
}

- (void)presentLongLookAnimated:(BOOL)a3 trigger:(int64_t)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, 0);
  }
}

- (id)_presentingNotificationViewController
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v4 = UNSafeCast();

  return v4;
}

- (id)_expandedPlatterPresentationViewLoadingIfNecessary:(BOOL)a3
{
  v3 = a3;
  if (([(NCNotificationLongLookViewController *)self isViewLoaded]& 1) != 0 || v3)
  {
    objc_opt_class();
    v6 = [(NCNotificationLongLookViewController *)self view];
    v5 = UNSafeCast();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_longLookViewIfLoaded
{
  objc_opt_class();
  v3 = [(NCNotificationViewController *)self _lookViewIfLoaded];
  v4 = UNSafeCast();

  return v4;
}

- (id)_longLookViewLoadingIfNecessary
{
  objc_opt_class();
  v3 = [(NCNotificationViewController *)self _lookViewLoadingIfNecessary:1];
  v4 = UNSafeCast();

  return v4;
}

- (PLClickPresentationInteractionPresenting)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (PLExpandedPlatterDismissing)dismisser
{
  WeakRetained = objc_loadWeakRetained(&self->_dismisser);

  return WeakRetained;
}

@end