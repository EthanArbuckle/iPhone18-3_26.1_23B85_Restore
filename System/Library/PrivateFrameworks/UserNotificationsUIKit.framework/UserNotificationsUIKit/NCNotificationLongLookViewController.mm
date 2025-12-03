@interface NCNotificationLongLookViewController
+ (void)initialize;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)expandedPlatterPresentationControllerShouldAllowKeyboardOnAppearance:(id)appearance;
- (BOOL)expandedPlatterPresentationControllerShouldProvideBackground:(id)background;
- (BOOL)isContentExtensionVisible:(id)visible;
- (BOOL)notificationLongLookView:(id)view tapGestureRecognizerShouldReceiveTouch:(id)touch;
- (BOOL)resignFirstResponder;
- (BOOL)restoreInputViews;
- (CGRect)expandedPlatterPresentationController:(id)controller frameForTransitionViewInPresentationSuperview:(id)superview;
- (CGSize)_preferredCustomContentSizeForSize:(CGSize)size parentContentContainerBounds:(CGRect)bounds;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (PLClickPresentationInteractionPresenting)presenter;
- (PLExpandedPlatterDismissing)dismisser;
- (id)_expandedPlatterPresentationViewLoadingIfNecessary:(BOOL)necessary;
- (id)_expandedPlatterPresentationViewScrollView;
- (id)_extensionIdentifier;
- (id)_initWithNotificationRequest:(id)request andPresentingNotificationViewController:(id)controller revealingAdditionalContentOnPresentation:(BOOL)presentation;
- (id)_longLookViewIfLoaded;
- (id)_longLookViewLoadingIfNecessary;
- (id)_longLookViewScrollView;
- (id)_presentingNotificationViewController;
- (id)customBackgroundContainerViewForExpandedPlatterPresentationController:(id)controller;
- (id)expandedPlatterPresentationController:(id)controller keyboardAssertionForGestureWindow:(id)window;
- (id)hideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:(id)controller;
- (id)settleHomeAffordanceAnimationBehaviorDescriptionForExpandedPlatterPresentationController:(id)controller;
- (id)unhideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:(id)controller;
- (unint64_t)_maximumNumberOfPrimaryTextLinesForProvidedStaticContent;
- (unint64_t)_maximumNumberOfSecondaryTextLinesForProvidedStaticContent;
- (unint64_t)_maximumNumberOfTextLinesForProvidedStaticContentWithDefaultNumber:(unint64_t)number isPrimary:(BOOL)primary isLarge:(BOOL)large;
- (void)_handleIconButton:(id)button;
- (void)_handleNotificationTap:(id)tap;
- (void)_loadLookView;
- (void)_notificationViewControllerViewDidLoad;
- (void)_setPreferredCustomContentSize:(CGSize)size;
- (void)_updateLookView:(id)view withTitleFromProvidedStaticContent:(id)content;
- (void)_updateTitleWithProvidedCustomContent;
- (void)_updateWithProvidedCustomContent;
- (void)_updateWithProvidedStaticContent;
- (void)customContent:(id)content didUpdateUserNotificationActions:(id)actions;
- (void)customContentDidLoadExtension:(id)extension;
- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion;
- (void)expandedPlatterPresentable:(id)presentable requestsDismissalWithTrigger:(int64_t)trigger;
- (void)loadView;
- (void)notificationLongLookView:(id)view willInteractWithURL:(id)l;
- (void)playMedia;
- (void)presentLongLookAnimated:(BOOL)animated trigger:(int64_t)trigger completion:(id)completion;
- (void)preserveInputViews;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setCustomContentHomeAffordanceGestureRecognizer:(id)recognizer;
- (void)setCustomContentHomeAffordanceVisible:(BOOL)visible;
- (void)setNotificationRequest:(id)request;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation NCNotificationLongLookViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [&__block_literal_global_41 copy];
    __willInteractWithLinkSentinelBlock = v2;

    MEMORY[0x2821F96F8](v2);
  }
}

- (id)_initWithNotificationRequest:(id)request andPresentingNotificationViewController:(id)controller revealingAdditionalContentOnPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = NCNotificationLongLookViewController;
  v9 = [(NCNotificationViewController *)&v15 _initWithNotificationRequest:request revealingAdditionalContentOnPresentation:presentationCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(v9 + 158, controllerCopy);
    v11 = objc_alloc_init(NCLongLookTransitioningDelegate);
    v12 = v10[156];
    v10[156] = v11;

    [v10 setTransitioningDelegate:v10[156]];
    [v10 setModalPresentationStyle:4];
    [v10 _setupCustomContentProvider];
    _customContentProvidingViewControllerCreateIfNecessary = [v10 _customContentProvidingViewControllerCreateIfNecessary];
    [v10 _setCustomContentProvidingViewController:_customContentProvidingViewControllerCreateIfNecessary];

    [v10 _setShouldRestorePresentingShortLookOnDismiss:1];
  }

  return v10;
}

- (void)setNotificationRequest:(id)request
{
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v6.receiver = self;
  v6.super_class = NCNotificationLongLookViewController;
  [(NCNotificationViewController *)&v6 setNotificationRequest:requestCopy];
}

- (BOOL)isContentExtensionVisible:(id)visible
{
  visibleCopy = visible;
  _extensionIdentifier = [(NCNotificationLongLookViewController *)self _extensionIdentifier];
  v6 = [_extensionIdentifier isEqualToString:visibleCopy];

  return v6;
}

- (void)preserveInputViews
{
  _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (objc_opt_respondsToSelector())
  {
    [_customContentProvidingViewController preserveInputViews];
  }
}

- (BOOL)restoreInputViews
{
  _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (objc_opt_respondsToSelector())
  {
    restoreInputViews = [_customContentProvidingViewController restoreInputViews];
  }

  else
  {
    restoreInputViews = 0;
  }

  return restoreInputViews;
}

- (void)setCustomContentHomeAffordanceVisible:(BOOL)visible
{
  visibleCopy = visible;
  v6.receiver = self;
  v6.super_class = NCNotificationLongLookViewController;
  [(NCNotificationViewController *)&v6 setCustomContentHomeAffordanceVisible:?];
  expandedPlatterPresentationController = [(NCNotificationLongLookViewController *)self expandedPlatterPresentationController];
  [expandedPlatterPresentationController setHomeAffordanceVisible:visibleCopy];
}

- (void)setCustomContentHomeAffordanceGestureRecognizer:(id)recognizer
{
  v6.receiver = self;
  v6.super_class = NCNotificationLongLookViewController;
  recognizerCopy = recognizer;
  [(NCNotificationViewController *)&v6 setCustomContentHomeAffordanceGestureRecognizer:recognizerCopy];
  v5 = [(NCNotificationLongLookViewController *)self expandedPlatterPresentationController:v6.receiver];
  [v5 setHomeAffordancePanGesture:recognizerCopy];
}

- (void)_updateLookView:(id)view withTitleFromProvidedStaticContent:(id)content
{
  contentCopy = content;
  _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
  _longLookViewIfLoaded = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded];
  if ([_customContentProvidingViewController overridesDefaultTitle])
  {
    title = [_customContentProvidingViewController title];
    [_longLookViewIfLoaded setTitle:title];
  }

  else
  {
    [_longLookViewIfLoaded setTitle:contentCopy];
  }
}

- (void)playMedia
{
  _customContentProvidingViewControllerCreateIfNecessary = [(NCNotificationViewController *)self _customContentProvidingViewControllerCreateIfNecessary];
  if (objc_opt_respondsToSelector())
  {
    [_customContentProvidingViewControllerCreateIfNecessary playMedia];
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
  _longLookViewIfLoaded = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded];
  if (_longLookViewIfLoaded)
  {
    _expandedPlatterPresentationViewScrollView = [(NCNotificationLongLookViewController *)self _expandedPlatterPresentationViewScrollView];
    [_expandedPlatterPresentationViewScrollView bounds];
    [_longLookViewIfLoaded setFrame:?];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = NCNotificationLongLookViewController;
  [(NCNotificationViewController *)&v6 viewWillAppear:appear];
  view = [(NCNotificationLongLookViewController *)self view];
  window = [view window];
  [window makeKeyAndVisible];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = NCNotificationLongLookViewController;
  [(NCNotificationViewController *)&v6 viewDidDisappear:disappear];
  view = [(NCNotificationLongLookViewController *)self view];
  window = [view window];
  [window resignKeyWindow];
}

- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion
{
  v4 = *&transition;
  completionCopy = completion;
  presenter = [(NCNotificationLongLookViewController *)self presenter];
  clickPresentationInteractionManager = [presenter clickPresentationInteractionManager];

  if (([clickPresentationInteractionManager dismissIfPossible:completionCopy] & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = NCNotificationLongLookViewController;
    [(NCNotificationViewController *)&v9 dismissViewControllerWithTransition:v4 completion:completionCopy];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v26.receiver = self;
  v26.super_class = NCNotificationLongLookViewController;
  [(NCNotificationLongLookViewController *)&v26 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  nc_presentationControllerIfPresented = [(UIViewController *)self nc_presentationControllerIfPresented];
  if (nc_presentationControllerIfPresented)
  {
    v9 = NCRectWithSize();
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    containerView = [coordinatorCopy containerView];
    [containerView bounds];
    v9 = v17;
    v11 = v18;
    v13 = v19;
    v15 = v20;
  }

  _longLookViewIfLoaded = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded];
  v27.origin.x = v9;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  v22 = CGRectGetWidth(v27);
  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  [_longLookViewIfLoaded setDismissControlPosition:v22 > CGRectGetHeight(v28)];

  [(NCNotificationLongLookViewController *)self _preferredCustomContentSizeForSize:*MEMORY[0x277CBF3A8] parentContentContainerBounds:*(MEMORY[0x277CBF3A8] + 8), v9, v11, v13, v15];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __91__NCNotificationLongLookViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v25[3] = &unk_278371760;
  v25[4] = self;
  v25[5] = v23;
  v25[6] = v24;
  [coordinatorCopy animateAlongsideTransition:v25 completion:0];
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (_customContentProvidingViewController == containerCopy)
  {
    [containerCopy sizeForChildContentContainer:containerCopy withParentContainerSize:{width, height}];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NCNotificationLongLookViewController;
    [(NCNotificationLongLookViewController *)&v15 sizeForChildContentContainer:containerCopy withParentContainerSize:width, height];
  }

  v11 = v9;
  v12 = v10;

  v13 = v11;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)customContent:(id)content didUpdateUserNotificationActions:(id)actions
{
  v23 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  actionsCopy = actions;
  v8 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    notificationRequest = [(NCNotificationViewController *)self notificationRequest];
    notificationIdentifier = [notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138543362;
    v22 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "Custom content extension is updating long look actions for notification request %{public}@", buf, 0xCu);
  }

  staticContentProvider = [(NCNotificationViewController *)self staticContentProvider];
  [staticContentProvider setOverriddenActions:actionsCopy];

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

- (void)expandedPlatterPresentable:(id)presentable requestsDismissalWithTrigger:(int64_t)trigger
{
  presentableCopy = presentable;
  if (trigger > 2)
  {
    if (trigger == 3)
    {
      v19 = presentableCopy;
      v7 = +[NCNotificationEventTracker sharedInstance];
      notificationRequest = [(NCNotificationViewController *)self notificationRequest];
      notificationUsageTrackingState = [(NCNotificationViewController *)self notificationUsageTrackingState];
      v10 = v7;
      v11 = 1;
LABEL_10:
      [v10 longLookReparkInvokedWithTrigger:v11 forNotificationRequest:notificationRequest withState:notificationUsageTrackingState];

      [(NCNotificationViewController *)self _executeCancelAction:1];
      goto LABEL_11;
    }

    if (trigger != 4)
    {
      goto LABEL_12;
    }

    v19 = presentableCopy;
    v12 = +[NCNotificationEventTracker sharedInstance];
    notificationRequest2 = [(NCNotificationViewController *)self notificationRequest];
    notificationUsageTrackingState2 = [(NCNotificationViewController *)self notificationUsageTrackingState];
    [v12 longLookDismissInvokedWithTrigger:1 forNotificationRequest:notificationRequest2 withState:notificationUsageTrackingState2];

    [(NCNotificationViewController *)self _executeCloseAction:1];
  }

  else
  {
    if (trigger != 1)
    {
      if (trigger != 2)
      {
        goto LABEL_12;
      }

      v19 = presentableCopy;
      v7 = +[NCNotificationEventTracker sharedInstance];
      notificationRequest = [(NCNotificationViewController *)self notificationRequest];
      notificationUsageTrackingState = [(NCNotificationViewController *)self notificationUsageTrackingState];
      v10 = v7;
      v11 = 0;
      goto LABEL_10;
    }

    v19 = presentableCopy;
    v15 = +[NCNotificationEventTracker sharedInstance];
    notificationRequest3 = [(NCNotificationViewController *)self notificationRequest];
    notificationUsageTrackingState3 = [(NCNotificationViewController *)self notificationUsageTrackingState];
    [v15 longLookDismissInvokedWithTrigger:0 forNotificationRequest:notificationRequest3 withState:notificationUsageTrackingState3];

    [(NCNotificationViewController *)self _executeClearAction:1];
    _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
    [_customContentProvidingViewController beginAppearanceTransition:0 animated:1];
    [_customContentProvidingViewController endAppearanceTransition];
  }

LABEL_11:
  presentableCopy = v19;
LABEL_12:
}

- (void)_updateWithProvidedStaticContent
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = NCNotificationLongLookViewController;
  [(NCNotificationViewController *)&v16 _updateWithProvidedStaticContent];
  _longLookViewIfLoaded = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded];
  lookViewTapGestureRecognizer = [_longLookViewIfLoaded lookViewTapGestureRecognizer];
  [lookViewTapGestureRecognizer addTarget:self action:sel__handleNotificationTap_];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  iconButtons = [_longLookViewIfLoaded iconButtons];
  v6 = [iconButtons countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(iconButtons);
        }

        [*(*(&v12 + 1) + 8 * i) addTarget:self action:sel__handleIconButton_ forControlEvents:64];
      }

      v7 = [iconButtons countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v7);
  }

  staticContentProvider = [(NCNotificationViewController *)self staticContentProvider];
  interfaceActions = [staticContentProvider interfaceActions];
  [_longLookViewIfLoaded setInterfaceActions:interfaceActions];
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

- (unint64_t)_maximumNumberOfTextLinesForProvidedStaticContentWithDefaultNumber:(unint64_t)number isPrimary:(BOOL)primary isLarge:(BOOL)large
{
  v7 = [(NCNotificationViewController *)self staticContentProvider:number];
  isNumberOfLinesInfinite = [v7 isNumberOfLinesInfinite];

  if (isNumberOfLinesInfinite & 1 | !primary)
  {
    return 0;
  }

  else
  {
    return number;
  }
}

- (void)_updateWithProvidedCustomContent
{
  _longLookViewIfLoaded = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded];
  if (_longLookViewIfLoaded)
  {
    v9 = _longLookViewIfLoaded;
    _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
    view = [_customContentProvidingViewController view];
    customContentView = [v9 customContentView];
    [v9 setCustomContentLocation:{objc_msgSend(_customContentProvidingViewController, "customContentLocation")}];
    [v9 setHidesNotificationContent:{objc_msgSend(_customContentProvidingViewController, "defaultContentHidden")}];
    superview = [view superview];

    if (superview != customContentView)
    {
      [customContentView addSubview:view];
      [customContentView bounds];
      [view setFrame:?];
      [view setAutoresizingMask:18];
    }

    view2 = [(NCNotificationLongLookViewController *)self view];
    [view2 setNeedsLayout];

    _longLookViewIfLoaded = v9;
  }
}

- (void)_updateTitleWithProvidedCustomContent
{
  _longLookViewIfLoaded = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded];
  if (_longLookViewIfLoaded)
  {
    _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
    title = [_customContentProvidingViewController title];
    v6 = MEMORY[0x277D75D18];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __77__NCNotificationLongLookViewController__updateTitleWithProvidedCustomContent__block_invoke;
    v8[3] = &unk_27836F560;
    v9 = _longLookViewIfLoaded;
    v10 = title;
    v7 = title;
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
  _longLookViewLoadingIfNecessary = [(NCNotificationLongLookViewController *)self _longLookViewLoadingIfNecessary];
  scrollView = [_longLookViewLoadingIfNecessary scrollView];

  return scrollView;
}

- (id)_expandedPlatterPresentationViewScrollView
{
  v2 = [(NCNotificationLongLookViewController *)self _expandedPlatterPresentationViewLoadingIfNecessary:1];
  scrollView = [v2 scrollView];

  return scrollView;
}

- (void)_notificationViewControllerViewDidLoad
{
  v4.receiver = self;
  v4.super_class = NCNotificationLongLookViewController;
  [(NCNotificationViewController *)&v4 _notificationViewControllerViewDidLoad];
  _expandedPlatterPresentationViewScrollView = [(NCNotificationLongLookViewController *)self _expandedPlatterPresentationViewScrollView];
  [_expandedPlatterPresentationViewScrollView addSubview:self->super._lookView];
}

- (CGSize)_preferredCustomContentSizeForSize:(CGSize)size parentContentContainerBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9 = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded:size.width];
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
  _longLookViewIfLoaded = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded];
  [v11 useableContainerViewBoundsForExpandedPlatter:_longLookViewIfLoaded inContainerViewWithBounds:{x, y, width, height}];
  v14 = v13;
  v16 = v15;

  _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
  [(NCNotificationLongLookViewController *)self sizeForChildContentContainer:_customContentProvidingViewController withParentContainerSize:fmin(v14, 556.0), v16];
  v19 = v18;
  v21 = v20;

  v22 = v19;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)_setPreferredCustomContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _longLookViewIfLoaded = [(NCNotificationLongLookViewController *)self _longLookViewIfLoaded];
  [_longLookViewIfLoaded setCustomContentSize:{width, height}];

  v7.receiver = self;
  v7.super_class = NCNotificationLongLookViewController;
  [(NCNotificationViewController *)&v7 _setPreferredCustomContentSize:width, height];
}

- (id)_extensionIdentifier
{
  _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (objc_opt_respondsToSelector())
  {
    contentExtensionIdentifier = [_customContentProvidingViewController contentExtensionIdentifier];
  }

  else
  {
    contentExtensionIdentifier = 0;
  }

  return contentExtensionIdentifier;
}

- (void)_handleIconButton:(id)button
{
  v4 = +[NCNotificationEventTracker sharedInstance];
  notificationRequest = [(NCNotificationViewController *)self notificationRequest];
  notificationUsageTrackingState = [(NCNotificationViewController *)self notificationUsageTrackingState];
  [v4 longLookDefaultActionInvokedWithTrigger:0 forNotificationRequest:notificationRequest withState:notificationUsageTrackingState];

  [(NCNotificationViewController *)self _executeDefaultAction:1];
}

- (void)_handleNotificationTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy state] == 3)
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

- (BOOL)expandedPlatterPresentationControllerShouldAllowKeyboardOnAppearance:(id)appearance
{
  staticContentProvider = [(NCNotificationViewController *)self staticContentProvider];
  showsTextInputOnAppearance = [staticContentProvider showsTextInputOnAppearance];

  return showsTextInputOnAppearance;
}

- (id)expandedPlatterPresentationController:(id)controller keyboardAssertionForGestureWindow:(id)window
{
  windowCopy = window;
  controllerCopy = controller;
  _presentingNotificationViewController = [(NCNotificationLongLookViewController *)self _presentingNotificationViewController];
  if (objc_opt_respondsToSelector())
  {
    v9 = [_presentingNotificationViewController expandedPlatterPresentationController:controllerCopy keyboardAssertionForGestureWindow:windowCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NCNotificationLongLookViewController;
    v9 = [(NCNotificationViewController *)&v12 expandedPlatterPresentationController:controllerCopy keyboardAssertionForGestureWindow:windowCopy];
  }

  v10 = v9;

  return v10;
}

- (id)hideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:(id)controller
{
  controllerCopy = controller;
  _presentingNotificationViewController = [(NCNotificationLongLookViewController *)self _presentingNotificationViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [_presentingNotificationViewController hideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:controllerCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NCNotificationLongLookViewController;
    v6 = [(NCNotificationViewController *)&v9 hideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:controllerCopy];
  }

  v7 = v6;

  return v7;
}

- (id)unhideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:(id)controller
{
  controllerCopy = controller;
  _presentingNotificationViewController = [(NCNotificationLongLookViewController *)self _presentingNotificationViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [_presentingNotificationViewController unhideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:controllerCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NCNotificationLongLookViewController;
    v6 = [(NCNotificationViewController *)&v9 unhideHomeAffordanceAnimationSettingsForExpandedPlatterPresentationController:controllerCopy];
  }

  v7 = v6;

  return v7;
}

- (id)settleHomeAffordanceAnimationBehaviorDescriptionForExpandedPlatterPresentationController:(id)controller
{
  controllerCopy = controller;
  _presentingNotificationViewController = [(NCNotificationLongLookViewController *)self _presentingNotificationViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [_presentingNotificationViewController settleHomeAffordanceAnimationBehaviorDescriptionForExpandedPlatterPresentationController:controllerCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NCNotificationLongLookViewController;
    v6 = [(NCNotificationViewController *)&v9 settleHomeAffordanceAnimationBehaviorDescriptionForExpandedPlatterPresentationController:controllerCopy];
  }

  v7 = v6;

  return v7;
}

- (CGRect)expandedPlatterPresentationController:(id)controller frameForTransitionViewInPresentationSuperview:(id)superview
{
  controllerCopy = controller;
  superviewCopy = superview;
  _presentingNotificationViewController = [(NCNotificationLongLookViewController *)self _presentingNotificationViewController];
  if (objc_opt_respondsToSelector())
  {
    [_presentingNotificationViewController expandedPlatterPresentationController:controllerCopy frameForTransitionViewInPresentationSuperview:superviewCopy];
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

- (BOOL)expandedPlatterPresentationControllerShouldProvideBackground:(id)background
{
  backgroundCopy = background;
  _presentingNotificationViewController = [(NCNotificationLongLookViewController *)self _presentingNotificationViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [_presentingNotificationViewController expandedPlatterPresentationControllerShouldProvideBackground:backgroundCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)customBackgroundContainerViewForExpandedPlatterPresentationController:(id)controller
{
  controllerCopy = controller;
  _presentingNotificationViewController = [(NCNotificationLongLookViewController *)self _presentingNotificationViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [_presentingNotificationViewController customBackgroundContainerViewForExpandedPlatterPresentationController:controllerCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  _longLookViewScrollView = [(NCNotificationLongLookViewController *)self _longLookViewScrollView];

  if (_longLookViewScrollView == draggingCopy)
  {
    _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
    if (objc_opt_respondsToSelector())
    {
      cancelTouches = [_customContentProvidingViewController cancelTouches];
      cancelTouchesToken = self->_cancelTouchesToken;
      self->_cancelTouchesToken = cancelTouches;
    }
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  _longLookViewScrollView = [(NCNotificationLongLookViewController *)self _longLookViewScrollView];

  if (_longLookViewScrollView == draggingCopy && !decelerate)
  {
    isDecelerating = [draggingCopy isDecelerating];
    if ((isDecelerating & 1) == 0)
    {
      cancelTouchesToken = self->_cancelTouchesToken;
      self->_cancelTouchesToken = 0;
    }
  }

  MEMORY[0x2821F96F8](isDecelerating);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  _longLookViewScrollView = [(NCNotificationLongLookViewController *)self _longLookViewScrollView];

  if (_longLookViewScrollView == deceleratingCopy)
  {
    cancelTouchesToken = self->_cancelTouchesToken;
    self->_cancelTouchesToken = 0;
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  _longLookViewScrollView = [(NCNotificationLongLookViewController *)self _longLookViewScrollView];

  if (_longLookViewScrollView == animationCopy)
  {
    cancelTouchesToken = self->_cancelTouchesToken;
    self->_cancelTouchesToken = 0;
  }
}

- (void)notificationLongLookView:(id)view willInteractWithURL:(id)l
{
  viewCopy = view;
  _lookView = [(NCNotificationViewController *)self _lookView];

  if (_lookView == viewCopy)
  {
    v7 = _Block_copy(__willInteractWithLinkSentinelBlock);
    self->_notificationTapBlock = v7;

    MEMORY[0x2821F96F8](v7);
  }
}

- (BOOL)notificationLongLookView:(id)view tapGestureRecognizerShouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if ([_customContentProvidingViewController userInteractionEnabled])
  {
    view = [touchCopy view];
    _lookViewIfLoaded = [(NCNotificationViewController *)self _lookViewIfLoaded];
    customContentView = [_lookViewIfLoaded customContentView];
    v10 = [view isDescendantOfView:customContentView] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)canBecomeFirstResponder
{
  _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (_customContentProvidingViewController)
  {
    _customContentProvidingViewController2 = [(NCNotificationViewController *)self _customContentProvidingViewController];
    canBecomeFirstResponder = [_customContentProvidingViewController2 canBecomeFirstResponder];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NCNotificationLongLookViewController;
    canBecomeFirstResponder = [(NCNotificationLongLookViewController *)&v7 canBecomeFirstResponder];
  }

  return canBecomeFirstResponder;
}

- (BOOL)becomeFirstResponder
{
  _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (_customContentProvidingViewController)
  {
    if (objc_opt_respondsToSelector())
    {
      restoreInputViews = [_customContentProvidingViewController restoreInputViews];
    }

    else
    {
      restoreInputViews = [_customContentProvidingViewController becomeFirstResponder];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NCNotificationLongLookViewController;
    restoreInputViews = [(NCNotificationLongLookViewController *)&v7 becomeFirstResponder];
  }

  v5 = restoreInputViews;

  return v5;
}

- (BOOL)canResignFirstResponder
{
  _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (_customContentProvidingViewController)
  {
    _customContentProvidingViewController2 = [(NCNotificationViewController *)self _customContentProvidingViewController];
    canResignFirstResponder = [_customContentProvidingViewController2 canResignFirstResponder];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NCNotificationLongLookViewController;
    canResignFirstResponder = [(NCNotificationLongLookViewController *)&v7 canResignFirstResponder];
  }

  return canResignFirstResponder;
}

- (BOOL)resignFirstResponder
{
  _customContentProvidingViewController = [(NCNotificationViewController *)self _customContentProvidingViewController];
  if (_customContentProvidingViewController)
  {
    if (objc_opt_respondsToSelector())
    {
      [_customContentProvidingViewController preserveInputViews];
    }

    resignFirstResponder = [_customContentProvidingViewController resignFirstResponder];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NCNotificationLongLookViewController;
    resignFirstResponder = [(NCNotificationLongLookViewController *)&v7 resignFirstResponder];
  }

  v5 = resignFirstResponder;

  return v5;
}

- (void)customContentDidLoadExtension:(id)extension
{
  extensionCopy = extension;
  if ([(NCNotificationLongLookViewController *)self bs_isAppearingOrAppeared])
  {
    view = [(NCNotificationLongLookViewController *)self view];
    window = [view window];
    [window makeKeyAndVisible];
  }

  if ([+[NCNotificationLongLookViewController superclass](NCNotificationLongLookViewController "superclass")])
  {
    v7.receiver = self;
    v7.super_class = NCNotificationLongLookViewController;
    [(NCNotificationLongLookViewController *)&v7 customContentDidLoadExtension:extensionCopy];
  }
}

- (void)presentLongLookAnimated:(BOOL)animated trigger:(int64_t)trigger completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (id)_presentingNotificationViewController
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v4 = UNSafeCast();

  return v4;
}

- (id)_expandedPlatterPresentationViewLoadingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (([(NCNotificationLongLookViewController *)self isViewLoaded]& 1) != 0 || necessaryCopy)
  {
    objc_opt_class();
    view = [(NCNotificationLongLookViewController *)self view];
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
  _lookViewIfLoaded = [(NCNotificationViewController *)self _lookViewIfLoaded];
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