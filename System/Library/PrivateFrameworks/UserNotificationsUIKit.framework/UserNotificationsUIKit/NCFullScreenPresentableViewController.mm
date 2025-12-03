@interface NCFullScreenPresentableViewController
- (BOOL)isStaticContentLoadingComplete;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize;
- (NCFullScreenPresentableViewController)initWithNotificationRequest:(id)request;
- (NCFullScreenPresentableViewControllerDelegate)delegate;
- (NCNotificationStaticContentProviding)staticContentProvider;
- (NSDictionary)notificationUsageTrackingState;
- (NSSet)activeTransitionBlockingAssertions;
- (NSString)requesterIdentifier;
- (double)_rubberbandedTranslationForTranslation:(double)translation;
- (id)_backgroundAnimationSettingsForStage:(int64_t)stage;
- (id)activeTransitionBlockingAssertionForReason:(id)reason;
- (id)requestTransitionBlockingAssertionWithReason:(id)reason;
- (int64_t)bannerStage;
- (void)_animateDismissalWithAdditionalAnimations:(id)animations completion:(id)completion;
- (void)_animateTransitionToDetailStateForTrigger:(int64_t)trigger;
- (void)_askDelegateToExecuteAction:(id)action withParameters:(id)parameters animated:(BOOL)animated;
- (void)_configureBackgroundMaterialViewIfNecessary;
- (void)_configureBackgroundOpaqueViewIfNecessary;
- (void)_configureBannerViewIfNecessary;
- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)_executeDefaultAction:(BOOL)action;
- (void)_handleBannerContentTap;
- (void)_invalidateDetailStageTransitionTimerIfNecessary;
- (void)_requestDismissalWithReason:(id)reason;
- (void)_startDetailStageTransitionTimerIfNecessary;
- (void)addPresentableObserver:(id)observer;
- (void)animateTransition:(id)transition;
- (void)draggingDidBeginWithGestureProxy:(id)proxy;
- (void)invalidateStaticContent;
- (void)loadStaticContentWithCompletion:(id)completion;
- (void)loadView;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)removePresentableObserver:(id)observer;
- (void)userInteractionDidEndForBannerForPresentable:(id)presentable;
- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation NCFullScreenPresentableViewController

- (NCFullScreenPresentableViewController)initWithNotificationRequest:(id)request
{
  requestCopy = request;
  v11.receiver = self;
  v11.super_class = NCFullScreenPresentableViewController;
  v5 = [(NCFullScreenPresentableViewController *)&v11 init];
  if (v5)
  {
    v6 = [requestCopy copy];
    notificationRequest = v5->_notificationRequest;
    v5->_notificationRequest = v6;

    v8 = objc_alloc_init(NCFullScreenPresentableTransitioningDelegate);
    transitioningDelegate = v5->_transitioningDelegate;
    v5->_transitioningDelegate = v8;

    [(NCFullScreenPresentableViewController *)v5 setTransitioningDelegate:v5->_transitioningDelegate];
  }

  return v5;
}

- (int64_t)bannerStage
{
  if (![(NCFullScreenPresentableViewController *)self isViewLoaded])
  {
    return 0;
  }

  bannerView = self->_bannerView;

  return [(NCFullScreenStagingBannerView *)bannerView stage];
}

- (NCNotificationStaticContentProviding)staticContentProvider
{
  if ([(NCFullScreenPresentableViewController *)self isViewLoaded])
  {
    staticContentProvider = [(NCFullScreenStagingBannerView *)self->_bannerView staticContentProvider];
  }

  else
  {
    staticContentProvider = 0;
  }

  return staticContentProvider;
}

- (BOOL)isStaticContentLoadingComplete
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  staticContentProvider = [(NCFullScreenPresentableViewController *)selfCopy staticContentProvider];
  if (staticContentProvider)
  {
    if (objc_opt_respondsToSelector())
    {
      isImageAssetLoadingComplete = [staticContentProvider isImageAssetLoadingComplete];
    }

    else
    {
      isImageAssetLoadingComplete = 1;
    }
  }

  else
  {
    isImageAssetLoadingComplete = 0;
  }

  objc_sync_exit(selfCopy);
  return isImageAssetLoadingComplete;
}

- (void)invalidateStaticContent
{
  if (self->_bannerView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained notificationRequestPresenter:self staticContentProviderForNotificationRequest:self->_notificationRequest], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v4 = [NCNotificationRequestFullScreenContentProvider alloc];
      notificationRequest = [(NCFullScreenPresentableViewController *)self notificationRequest];
      v6 = [(NCNotificationRequestCoalescingContentProvider *)v4 initWithNotificationRequest:notificationRequest];
    }

    [(NCNotificationRequestContentProvider *)v6 setDelegate:self];
    [(NCFullScreenStagingBannerView *)self->_bannerView setStaticContentProvider:v6];
  }
}

- (void)loadStaticContentWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(NCFullScreenPresentableViewController *)selfCopy isStaticContentLoadingComplete])
  {
    [(NCFullScreenPresentableViewController *)selfCopy loadViewIfNeeded];
    staticContentProvider = [(NCFullScreenPresentableViewController *)selfCopy staticContentProvider];
    if (objc_opt_respondsToSelector())
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __73__NCFullScreenPresentableViewController_loadStaticContentWithCompletion___block_invoke;
      v7[3] = &unk_27836FF88;
      v8 = completionCopy;
      [staticContentProvider loadImageAssetsWithCompletion:v7];
    }
  }

  objc_sync_exit(selfCopy);
}

uint64_t __73__NCFullScreenPresentableViewController_loadStaticContentWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadView
{
  v3 = [_NCFullScreenPresentableViewControllerView alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = [(_NCFullScreenPresentableViewControllerView *)v3 initWithFrame:?];
  [(NCFullScreenPresentableViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = NCFullScreenPresentableViewController;
  [(NCFullScreenPresentableViewController *)&v4 viewDidLoad];
  [(NCFullScreenPresentableViewController *)self _configureBackgroundMaterialViewIfNecessary];
  [(NCFullScreenPresentableViewController *)self _configureBackgroundOpaqueViewIfNecessary];
  [(NCFullScreenPresentableViewController *)self _configureBannerViewIfNecessary];
  view = [(NCFullScreenPresentableViewController *)self view];
  [view setAccessibilityIdentifier:@"nc-full-screen-presentable-view"];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = NCFullScreenPresentableViewController;
  [(NCFullScreenPresentableViewController *)&v6 viewWillAppear:appear];
  view = [(NCFullScreenPresentableViewController *)self view];
  layer = [view layer];

  [layer setAllowsHitTesting:1];
  [layer setHitTestsAsOpaque:1];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v9.receiver = self;
  v9.super_class = NCFullScreenPresentableViewController;
  [(NCFullScreenPresentableViewController *)&v9 viewIsAppearing:appearing];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__NCFullScreenPresentableViewController_viewIsAppearing___block_invoke;
  v8[3] = &unk_27836F6A8;
  v8[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v8];
  objc_initWeak(&location, self);
  bannerView = self->_bannerView;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__NCFullScreenPresentableViewController_viewIsAppearing___block_invoke_2;
  v5[3] = &unk_278371308;
  objc_copyWeak(&v6, &location);
  [(NCFullScreenStagingBannerView *)bannerView transitionToStage:1 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __57__NCFullScreenPresentableViewController_viewIsAppearing___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

void __57__NCFullScreenPresentableViewController_viewIsAppearing___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startDetailStageTransitionTimerIfNecessary];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = NCFullScreenPresentableViewController;
  [(NCFullScreenPresentableViewController *)&v6 viewWillDisappear:disappear];
  view = [(NCFullScreenPresentableViewController *)self view];
  layer = [view layer];
  [layer setAllowsHitTesting:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v15 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = NCFullScreenPresentableViewController;
  [(NCFullScreenPresentableViewController *)&v13 viewDidDisappear:disappear];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  activeTransitionBlockingAssertions = [(NCFullScreenPresentableViewController *)selfCopy activeTransitionBlockingAssertions];
  v6 = [activeTransitionBlockingAssertions countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(activeTransitionBlockingAssertions);
        }

        [*(*(&v9 + 1) + 8 * v8++) invalidateWithReason:@"fullScreenPresentable.invalidationReason.dismissed"];
      }

      while (v6 != v8);
      v6 = [activeTransitionBlockingAssertions countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize
{
  [(NCFullScreenPresentableViewController *)self setPreferredContentSize:containerSize.width, containerSize.height];

  [(NCFullScreenPresentableViewController *)self preferredContentSize];
  result.height = v6;
  result.width = v5;
  return result;
}

- (NSString)requesterIdentifier
{
  if (requesterIdentifier_onceToken != -1)
  {
    [NCFullScreenPresentableViewController requesterIdentifier];
  }

  v3 = requesterIdentifier___requesterIdentifier;

  return v3;
}

void __60__NCFullScreenPresentableViewController_requesterIdentifier__block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v0 = [v2 bundleIdentifier];
  v1 = requesterIdentifier___requesterIdentifier;
  requesterIdentifier___requesterIdentifier = v0;
}

- (void)draggingDidBeginWithGestureProxy:(id)proxy
{
  proxyCopy = proxy;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__NCFullScreenPresentableViewController_draggingDidBeginWithGestureProxy___block_invoke;
  v5[3] = &unk_278371260;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [proxyCopy setActionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __74__NCFullScreenPresentableViewController_draggingDidBeginWithGestureProxy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _bannerView];
    v7 = [v5 view];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [v3 state];
    if (v16 <= 3)
    {
      switch(v16)
      {
        case 1:
          [v5 _setPanning:1];
          [v5 _invalidateDetailStageTransitionTimerIfNecessary];
          break;
        case 2:
          break;
        case 3:
          [v3 translationInCoordinateSpace:v7];
          v18 = v17;
          [v3 velocityInCoordinateSpace:v7];
          v20 = v19;
          v21 = [v7 traitCollection];
          [v21 displayScale];
          v23 = NCTranslationWithVelocityAndDefaultScrollViewAcceleration(v20, v22);

          [*(a1 + 32) _rubberbandedTranslationForTranslation:v18 + v23];
          v25 = v24;
          v26 = [*(a1 + 32) view];
          [v26 bounds];
          Height = CGRectGetHeight(v78);
          v28 = +[NCUNUIKitPrototypeDomain rootSettings];
          [v28 interactiveDismissalThreshold];
          v30 = Height * v29;

          v31 = -v25;
          if (v25 >= 0.0)
          {
            v31 = v25;
          }

          if (v31 > v30)
          {
            [v5 _setPanning:0];
            [v5 _requestDismissalWithReason:*MEMORY[0x277CF0A50]];
            goto LABEL_17;
          }

          goto LABEL_11;
        default:
LABEL_17:

          goto LABEL_18;
      }

      UIRectGetCenter();
      v36 = v35;
      v38 = v37;
      [v3 translationInCoordinateSpace:v7];
      [*(a1 + 32) _rubberbandedTranslationForTranslation:v39];
      v41 = v40;
      v42 = v38 + v40;
      v43 = [*(a1 + 32) view];
      [v43 bounds];
      v44 = CGRectGetHeight(v79);
      v45 = +[NCUNUIKitPrototypeDomain rootSettings];
      [v45 interactiveDismissalThreshold];
      v47 = v44 * v46;

      v48 = -v41;
      if (v41 >= 0.0)
      {
        v48 = v41;
      }

      v49 = fmin(fmax(v48 / v47, 0.0), 1.0);
      v50 = +[NCUNUIKitPrototypeDomain rootSettings];
      [v50 interactiveDismissalMinContentScale];
      v52 = 1.0 - v49 + v49 * v51;

      v53 = +[NCUNUIKitPrototypeDomain rootSettings];
      [v53 interactiveDismissalMinContentAlpha];
      v55 = 1.0 - v49 + v49 * v54;

      v56 = +[NCUNUIKitPrototypeDomain rootSettings];
      [v56 interactiveDismissalMinBackgroundProgress];
      v58 = 1.0 - v49 + v49 * v57;

      v59 = +[NCUNUIKitPrototypeDomain rootSettings];
      v60 = [v59 interactiveDismissalTrackingSettings];
      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __74__NCFullScreenPresentableViewController_draggingDidBeginWithGestureProxy___block_invoke_2;
      v70[3] = &unk_278371330;
      v73 = v36;
      v74 = v42;
      v75 = v52;
      v76 = v55;
      v71 = v6;
      v72 = v5;
      v77 = v58;
      [v60 animateTracking:1 animations:v70 completion:0];

      v34 = v71;
      goto LABEL_16;
    }

    if ((v16 - 4) >= 2)
    {
      goto LABEL_17;
    }

LABEL_11:
    [v5 _setPanning:0];
    v32 = +[NCUNUIKitPrototypeDomain rootSettings];
    v33 = [v32 interactiveDismissalAutomaticSettings];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __74__NCFullScreenPresentableViewController_draggingDidBeginWithGestureProxy___block_invoke_3;
    v63[3] = &unk_278371358;
    v66 = v9;
    v67 = v11;
    v68 = v13;
    v69 = v15;
    v64 = v6;
    v65 = v5;
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __74__NCFullScreenPresentableViewController_draggingDidBeginWithGestureProxy___block_invoke_4;
    v61[3] = &unk_278371308;
    objc_copyWeak(&v62, (a1 + 40));
    [v33 animateTracking:0 animations:v63 completion:v61];

    objc_destroyWeak(&v62);
    v34 = v64;
LABEL_16:

    goto LABEL_17;
  }

LABEL_18:
}

void __74__NCFullScreenPresentableViewController_draggingDidBeginWithGestureProxy___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(a1 + 32);
  CGAffineTransformMakeScale(&v5, *(a1 + 64), *(a1 + 64));
  [v2 setTransform:&v5];
  [*(a1 + 32) setAlpha:*(a1 + 72)];
  v3 = [*(a1 + 40) _backgroundMaterialView];
  [v3 setWeighting:*(a1 + 80)];

  if ([*(a1 + 32) stage] >= 2)
  {
    v4 = [*(a1 + 40) _backgroundOpaqueView];
    [v4 setAlpha:*(a1 + 80)];
  }
}

void __74__NCFullScreenPresentableViewController_draggingDidBeginWithGestureProxy___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  UIRectGetCenter();
  [v2 setCenter:?];
  v3 = *(a1 + 32);
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v7[0] = *MEMORY[0x277CBF2C0];
  v7[1] = v4;
  v7[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v3 setTransform:v7];
  [*(a1 + 32) setAlpha:1.0];
  v5 = [*(a1 + 40) _backgroundMaterialView];
  [v5 setWeighting:1.0];

  if ([*(a1 + 32) stage] >= 2)
  {
    v6 = [*(a1 + 40) _backgroundOpaqueView];
    [v6 setAlpha:1.0];
  }
}

void __74__NCFullScreenPresentableViewController_draggingDidBeginWithGestureProxy___block_invoke_4(uint64_t a1, int a2, char a3)
{
  if (a2 && (a3 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _startDetailStageTransitionTimerIfNecessary];
  }
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__NCFullScreenPresentableViewController_presentableWillAppearAsBanner___block_invoke;
  v6[3] = &unk_278371380;
  v7 = bannerCopy;
  v5 = bannerCopy;
  [(NCFullScreenPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_presentableWillAppearAsBanner_ usingBlock:v6];
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  bannerCopy = banner;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__NCFullScreenPresentableViewController_presentableDidAppearAsBanner___block_invoke;
  v6[3] = &unk_278371380;
  v7 = bannerCopy;
  v5 = bannerCopy;
  [(NCFullScreenPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_presentableDidAppearAsBanner_ usingBlock:v6];
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__NCFullScreenPresentableViewController_presentableWillDisappearAsBanner_withReason___block_invoke;
  v10[3] = &unk_2783713A8;
  v11 = bannerCopy;
  v12 = reasonCopy;
  v8 = reasonCopy;
  v9 = bannerCopy;
  [(NCFullScreenPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_presentableWillDisappearAsBanner_withReason_ usingBlock:v10];
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__NCFullScreenPresentableViewController_presentableDidDisappearAsBanner_withReason___block_invoke;
  v10[3] = &unk_2783713A8;
  v11 = bannerCopy;
  v12 = reasonCopy;
  v8 = reasonCopy;
  v9 = bannerCopy;
  [(NCFullScreenPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_presentableDidDisappearAsBanner_withReason_ usingBlock:v10];
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__NCFullScreenPresentableViewController_userInteractionWillBeginForBannerForPresentable___block_invoke;
  v6[3] = &unk_278371380;
  v7 = presentableCopy;
  v5 = presentableCopy;
  [(NCFullScreenPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_userInteractionWillBeginForBannerForPresentable_ usingBlock:v6];
}

- (void)userInteractionDidEndForBannerForPresentable:(id)presentable
{
  presentableCopy = presentable;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __86__NCFullScreenPresentableViewController_userInteractionDidEndForBannerForPresentable___block_invoke;
  v6[3] = &unk_278371380;
  v7 = presentableCopy;
  v5 = presentableCopy;
  [(NCFullScreenPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_userInteractionDidEndForBannerForPresentable_ usingBlock:v6];
}

- (void)addPresentableObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    observers = self->_observers;
    v9 = v5;
    if (!observers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v8 = self->_observers;
      self->_observers = weakObjectsHashTable;

      observers = self->_observers;
    }

    observerCopy = [(NSHashTable *)observers addObject:v9];
  }

  MEMORY[0x2821F96F8](observerCopy);
}

- (void)removePresentableObserver:(id)observer
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
    v6 = [(NCFullScreenPresentableViewController *)selfCopy activeTransitionBlockingAssertionForReason:reasonCopy];
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
        _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "New transition blocking assertion requested for full screen presentable view controller for request '%{public}@' with reason '%{public}@' – invalidating detail stage transition timer", buf, 0x16u);
      }

      [(NCFullScreenPresentableViewController *)selfCopy _invalidateDetailStageTransitionTimerIfNecessary];
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
      v14[2] = __86__NCFullScreenPresentableViewController_requestTransitionBlockingAssertionWithReason___block_invoke;
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

void __86__NCFullScreenPresentableViewController_requestTransitionBlockingAssertionWithReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "Transition blocking assertion for full screen presentable view controller for request '%{public}@' invalidated with reason '%{public}@' – starting detail stage transition timer", &v11, 0x16u);
  }

  [WeakRetained _startDetailStageTransitionTimerIfNecessary];
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

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  if ([(NCFullScreenPresentableViewController *)self bs_isDisappearingOrDisappeared])
  {
    objc_initWeak(&location, self);
    v5 = [(NCFullScreenPresentableViewController *)self _backgroundAnimationSettingsForStage:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__NCFullScreenPresentableViewController_animateTransition___block_invoke;
    v12[3] = &unk_278370A90;
    objc_copyWeak(&v14, &location);
    v13 = transitionCopy;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __59__NCFullScreenPresentableViewController_animateTransition___block_invoke_2;
    v10[3] = &unk_27836F980;
    v11 = v13;
    NCPerformActionsAnimatingIfNecessary(v5, v12, v10);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__NCFullScreenPresentableViewController_animateTransition___block_invoke_3;
    v8[3] = &unk_27836F6A8;
    v9 = transitionCopy;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__NCFullScreenPresentableViewController_animateTransition___block_invoke_4;
    v6[3] = &unk_27836F980;
    v7 = v9;
    [(NCFullScreenPresentableViewController *)self _animateDismissalWithAdditionalAnimations:v8 completion:v6];
  }
}

void __59__NCFullScreenPresentableViewController_animateTransition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained _backgroundMaterialView];
  [v2 setWeighting:1.0];

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) __runAlongsideAnimations];
  }
}

uint64_t __59__NCFullScreenPresentableViewController_animateTransition___block_invoke_3(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 __runAlongsideAnimations];
  }

  return result;
}

- (id)_backgroundAnimationSettingsForStage:(int64_t)stage
{
  v4 = +[NCUNUIKitPrototypeDomain rootSettings];
  v5 = v4;
  switch(stage)
  {
    case 3:
      dismissBackgroundSettings = [v4 dismissBackgroundSettings];
      goto LABEL_7;
    case 2:
      dismissBackgroundSettings = [v4 detailBackgroundSettings];
      goto LABEL_7;
    case 1:
      dismissBackgroundSettings = [v4 briefBackgroundSettings];
LABEL_7:
      v7 = dismissBackgroundSettings;
      goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (void)_animateTransitionToDetailStateForTrigger:(int64_t)trigger
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(NCFullScreenStagingBannerView *)self->_bannerView stage]> 1)
  {
    v11 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      notificationRequest = self->_notificationRequest;
      v13 = v11;
      notificationIdentifier = [(NCNotificationRequest *)notificationRequest notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      *buf = 138543362;
      v24 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "Notification request '%{public}@' is already at least at detail stage – aborting transition attempt", buf, 0xCu);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__NCFullScreenPresentableViewController__animateTransitionToDetailStateForTrigger___block_invoke;
    aBlock[3] = &unk_27836F510;
    objc_copyWeak(&v21, &location);
    aBlock[4] = self;
    v5 = _Block_copy(aBlock);
    options = [(NCNotificationRequest *)self->_notificationRequest options];
    revealsAdditionalContentOnPresentation = [options revealsAdditionalContentOnPresentation];

    if (revealsAdditionalContentOnPresentation)
    {
      v8 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        notificationIdentifier2 = [(NCNotificationRequest *)self->_notificationRequest notificationIdentifier];
        un_logDigest2 = [notificationIdentifier2 un_logDigest];
        *buf = 138543362;
        v24 = un_logDigest2;
        _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "Notification request '%{public}@' specifies revealing additional content on presentation – transitioning to detail stage", buf, 0xCu);
      }

      v5[2](v5, 1);
    }

    else
    {
      delegate = [(NCFullScreenPresentableViewController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate notificationRequestPresenter:self shouldTransitionToStage:@"fullScreenPresentable.presentingStage.detail" forTrigger:trigger completionBlock:v5];
      }

      else
      {
        v17 = *MEMORY[0x277D77DB0];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          notificationIdentifier3 = [(NCNotificationRequest *)self->_notificationRequest notificationIdentifier];
          un_logDigest3 = [notificationIdentifier3 un_logDigest];
          *buf = 138543362;
          v24 = un_logDigest3;
          _os_log_impl(&dword_21E77E000, v17, OS_LOG_TYPE_DEFAULT, "Delegate for full screen presentable view controller for request '%{public}@' doesn't respond to selector – denying transition to detail stage", buf, 0xCu);
        }

        v5[2](v5, 0);
      }
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __83__NCFullScreenPresentableViewController__animateTransitionToDetailStateForTrigger___block_invoke(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *MEMORY[0x277D77DB0];
  v6 = os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      v7 = v5;
      v8 = [WeakRetained notificationRequest];
      v9 = [v8 notificationIdentifier];
      v10 = [v9 un_logDigest];
      *buf = 138543362;
      v19 = v10;
      _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "Transitioning notification request '%{public}@' to detail stage", buf, 0xCu);
    }

    v11 = [*(a1 + 32) _backgroundAnimationSettingsForStage:2];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __83__NCFullScreenPresentableViewController__animateTransitionToDetailStateForTrigger___block_invoke_61;
    v17[3] = &unk_27836F6A8;
    v17[4] = WeakRetained;
    NCPerformActionsAnimatingIfNecessary(v11, v17, 0);

    v12 = [WeakRetained _bannerView];
    [v12 transitionToStage:2 completion:0];

    [WeakRetained _invalidateDetailStageTransitionTimerIfNecessary];
  }

  else if (v6)
  {
    v13 = v5;
    v14 = [WeakRetained notificationRequest];
    v15 = [v14 notificationIdentifier];
    v16 = [v15 un_logDigest];
    *buf = 138543362;
    v19 = v16;
    _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "Delegate for full screen presentable view controller for request '%{public}@' returned 'NO' – denying transition to detail stage", buf, 0xCu);
  }
}

void __83__NCFullScreenPresentableViewController__animateTransitionToDetailStateForTrigger___block_invoke_61(uint64_t a1)
{
  v1 = [*(a1 + 32) _backgroundOpaqueView];
  [v1 setAlpha:1.0];
}

- (void)_animateDismissalWithAdditionalAnimations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8 = BSEqualStrings();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__NCFullScreenPresentableViewController__animateDismissalWithAdditionalAnimations_completion___block_invoke;
  aBlock[3] = &unk_2783713D0;
  objc_copyWeak(&v24, &location);
  v25 = v8;
  v9 = animationsCopy;
  v23 = v9;
  v10 = _Block_copy(aBlock);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __94__NCFullScreenPresentableViewController__animateDismissalWithAdditionalAnimations_completion___block_invoke_2;
  v20[3] = &unk_27836F498;
  objc_copyWeak(&v21, &location);
  v11 = _Block_copy(v20);
  if (v8)
  {
    v12 = +[NCUNUIKitPrototypeDomain rootSettings];
    interactiveDismissalAutomaticSettings = [v12 interactiveDismissalAutomaticSettings];
    NCPerformActionsAnimatingIfNecessary(interactiveDismissalAutomaticSettings, v10, 0);

    v14 = +[NCUNUIKitPrototypeDomain rootSettings];
    interactiveDismissalBackgoundSettings = [v14 interactiveDismissalBackgoundSettings];
    NCPerformActionsAnimatingIfNecessary(interactiveDismissalBackgoundSettings, v11, completionCopy);
  }

  else
  {
    v16 = [(NCFullScreenPresentableViewController *)self _backgroundAnimationSettingsForStage:3];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __94__NCFullScreenPresentableViewController__animateDismissalWithAdditionalAnimations_completion___block_invoke_3;
    v17[3] = &unk_278371288;
    v18 = v10;
    v19 = v11;
    NCPerformActionsAnimatingIfNecessary(v16, v17, 0);

    [(NCFullScreenStagingBannerView *)self->_bannerView transitionToStage:3 completion:completionCopy];
    v14 = v18;
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __94__NCFullScreenPresentableViewController__animateDismissalWithAdditionalAnimations_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (*(a1 + 48) == 1)
  {
    v4 = [WeakRetained _bannerView];
    v5 = +[NCUNUIKitPrototypeDomain rootSettings];
    [v5 interactiveDismissalFinalContentScale];
    v7 = v6;

    CGAffineTransformMakeScale(&v9, v7, v7);
    [v4 setTransform:&v9];
    [v4 setAlpha:0.0];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void __94__NCFullScreenPresentableViewController__animateDismissalWithAdditionalAnimations_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _backgroundMaterialView];
  [v1 setWeighting:0.0];

  v2 = [WeakRetained _backgroundOpaqueView];
  [v2 setAlpha:0.0];
}

uint64_t __94__NCFullScreenPresentableViewController__animateDismissalWithAdditionalAnimations_completion___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_startDetailStageTransitionTimerIfNecessary
{
  v21 = *MEMORY[0x277D85DE8];
  if (!self->_detailStageTransitionTimer && [(NCFullScreenStagingBannerView *)self->_bannerView stage]<= 1 && !self->_panning)
  {
    activeTransitionBlockingAssertions = [(NCFullScreenPresentableViewController *)self activeTransitionBlockingAssertions];
    v4 = [activeTransitionBlockingAssertions count];

    if (!v4)
    {
      v5 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        notificationRequest = self->_notificationRequest;
        v7 = v5;
        notificationIdentifier = [(NCNotificationRequest *)notificationRequest notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        *buf = 138543362;
        v20 = un_logDigest;
        _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "Starting transition timer for full screen presentable view controller for request '%{public}@'", buf, 0xCu);
      }

      v10 = +[NCUNUIKitPrototypeDomain rootSettings];
      self->_detailStageTransitionRemainingAttempts = [v10 detailStageTransitionMaxAttempts];

      objc_initWeak(buf, self);
      v11 = MEMORY[0x277CBEBB8];
      v12 = +[NCUNUIKitPrototypeDomain rootSettings];
      [v12 detailStageTransitionDelay];
      v14 = v13;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __84__NCFullScreenPresentableViewController__startDetailStageTransitionTimerIfNecessary__block_invoke;
      v17[3] = &unk_2783713F8;
      objc_copyWeak(&v18, buf);
      v15 = [v11 scheduledTimerWithTimeInterval:1 repeats:v17 block:v14];
      detailStageTransitionTimer = self->_detailStageTransitionTimer;
      self->_detailStageTransitionTimer = v15;

      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
    }
  }
}

void __84__NCFullScreenPresentableViewController__startDetailStageTransitionTimerIfNecessary__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[127];
    v4 = v3 < 1;
    v5 = v3 - 1;
    if (v4)
    {
      v12 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = [v2 notificationRequest];
        v15 = [v14 notificationIdentifier];
        v16 = [v15 un_logDigest];
        v17 = 138543362;
        v18 = v16;
        _os_log_impl(&dword_21E77E000, v13, OS_LOG_TYPE_DEFAULT, "Ceasing attempts to animate transition of notification request '%{public}@' to detail stage – no attempts remaining", &v17, 0xCu);
      }

      [v2 _invalidateDetailStageTransitionTimerIfNecessary];
    }

    else
    {
      WeakRetained[127] = v5;
      v6 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        v8 = [v2 notificationRequest];
        v9 = [v8 notificationIdentifier];
        v10 = [v9 un_logDigest];
        v11 = v2[127];
        v17 = 138543618;
        v18 = v10;
        v19 = 2050;
        v20 = v11;
        _os_log_impl(&dword_21E77E000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to animate transition of notification request '%{public}@' to detail stage – %{public}ld attempts remaining", &v17, 0x16u);
      }

      [v2 _animateTransitionToDetailStateForTrigger:7];
    }
  }
}

- (void)_invalidateDetailStageTransitionTimerIfNecessary
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    notificationRequest = self->_notificationRequest;
    v5 = v3;
    notificationIdentifier = [(NCNotificationRequest *)notificationRequest notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v9 = 138543362;
    v10 = un_logDigest;
    _os_log_impl(&dword_21E77E000, v5, OS_LOG_TYPE_DEFAULT, "Invalidating transition timer for full screen presentable view controller for request '%{public}@'", &v9, 0xCu);
  }

  [(NSTimer *)self->_detailStageTransitionTimer invalidate];
  detailStageTransitionTimer = self->_detailStageTransitionTimer;
  self->_detailStageTransitionTimer = 0;
}

- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy && [(NSHashTable *)self->_observers count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSHashTable *)self->_observers copy];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            blockCopy[2](blockCopy, v11);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_configureBackgroundMaterialViewIfNecessary
{
  if (!self->_backgroundMaterialView)
  {
    v3 = MEMORY[0x277D26718];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v3 materialViewWithRecipeNamed:@"fullScreenBannerBackground" inBundle:v4 options:0 initialWeighting:0 scaleAdjustment:0.0];
    backgroundMaterialView = self->_backgroundMaterialView;
    self->_backgroundMaterialView = v5;

    [(MTMaterialView *)self->_backgroundMaterialView setUseBuiltInAlphaTransformerAndBackdropScaleAdjustment:1];
    view = [(NCFullScreenPresentableViewController *)self view];
    v7 = self->_backgroundMaterialView;
    [view bounds];
    [(MTMaterialView *)v7 setFrame:?];
    [view insertSubview:self->_backgroundMaterialView atIndex:0];
    [(MTMaterialView *)self->_backgroundMaterialView setAutoresizingMask:18];
  }
}

- (void)_configureBackgroundOpaqueViewIfNecessary
{
  if (!self->_backgroundOpaqueView)
  {
    view = [(NCFullScreenPresentableViewController *)self view];
    v3 = [_NCFullScreenPresentableViewControllerOpaqueBackgroundView alloc];
    [view bounds];
    v4 = [(_NCFullScreenPresentableViewControllerOpaqueBackgroundView *)v3 initWithFrame:?];
    backgroundOpaqueView = self->_backgroundOpaqueView;
    self->_backgroundOpaqueView = v4;

    v6 = self->_backgroundOpaqueView;
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    [(UIView *)v6 setBackgroundColor:systemBlackColor];

    [(UIView *)self->_backgroundOpaqueView setAlpha:0.0];
    v8 = self->_backgroundOpaqueView;
    if (self->_backgroundMaterialView)
    {
      [view insertSubview:v8 aboveSubview:?];
    }

    else
    {
      [view insertSubview:v8 atIndex:?];
    }

    [(UIView *)self->_backgroundOpaqueView setAutoresizingMask:18];
  }
}

- (void)_configureBannerViewIfNecessary
{
  v32 = *MEMORY[0x277D85DE8];
  if (!self->_bannerView)
  {
    v3 = [NCFullScreenStagingBannerView alloc];
    v4 = +[NCUNUIKitPrototypeDomain rootSettings];
    v5 = [(NCFullScreenStagingBannerView *)v3 initWithSettings:v4];
    bannerView = self->_bannerView;
    self->_bannerView = v5;

    objc_initWeak(&location, self);
    v7 = self->_bannerView;
    v8 = MEMORY[0x277D750C8];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __72__NCFullScreenPresentableViewController__configureBannerViewIfNecessary__block_invoke;
    v28[3] = &unk_27836F428;
    objc_copyWeak(&v29, &location);
    v9 = [v8 actionWithHandler:v28];
    [(NCFullScreenStagingBannerView *)v7 setContentTapAction:v9];

    v10 = self->_bannerView;
    v11 = MEMORY[0x277D750C8];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __72__NCFullScreenPresentableViewController__configureBannerViewIfNecessary__block_invoke_2;
    v26[3] = &unk_27836F428;
    objc_copyWeak(&v27, &location);
    v12 = [v11 actionWithHandler:v26];
    [(NCFullScreenStagingBannerView *)v10 setDefaultTapAction:v12];

    [(NCFullScreenPresentableViewController *)self _configureBackgroundMaterialViewIfNecessary];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    requiredVisualStyleCategories = [(NCFullScreenStagingBannerView *)self->_bannerView requiredVisualStyleCategories];
    v14 = [requiredVisualStyleCategories countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v14)
    {
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(requiredVisualStyleCategories);
          }

          integerValue = [*(*(&v22 + 1) + 8 * v16) integerValue];
          v18 = self->_bannerView;
          v19 = [(MTMaterialView *)self->_backgroundMaterialView visualStylingProviderForCategory:integerValue];
          [(NCFullScreenStagingBannerView *)v18 setVisualStylingProvider:v19 forCategory:integerValue];

          ++v16;
        }

        while (v14 != v16);
        v14 = [requiredVisualStyleCategories countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v14);
    }

    view = [(NCFullScreenPresentableViewController *)self view];
    v21 = self->_bannerView;
    [view bounds];
    [(NCFullScreenStagingBannerView *)v21 setFrame:?];
    [view addSubview:self->_bannerView];
    [(NCFullScreenStagingBannerView *)self->_bannerView setAutoresizingMask:18];
    [(NCFullScreenPresentableViewController *)self invalidateStaticContent];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }
}

void __72__NCFullScreenPresentableViewController__configureBannerViewIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleBannerContentTap];
}

void __72__NCFullScreenPresentableViewController__configureBannerViewIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleBannerDefaultTap];
}

- (void)_askDelegateToExecuteAction:(id)action withParameters:(id)parameters animated:(BOOL)animated
{
  actionCopy = action;
  parametersCopy = parameters;
  if (actionCopy)
  {
    userNotification = [(NCNotificationRequest *)self->_notificationRequest userNotification];
    if (userNotification)
    {
      v9 = [parametersCopy mutableCopy];
      v10 = v9;
      if (v9)
      {
        dictionary = v9;
      }

      else
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
      }

      v12 = dictionary;

      v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:userNotification requiringSecureCoding:1 error:0];
      [v12 setValue:v13 forKey:*MEMORY[0x277CE2178]];
      v14 = [v12 copy];

      parametersCopy = v14;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      delegate = [(NCFullScreenPresentableViewController *)self delegate];
      [delegate notificationRequestPresenter:self executeAction:actionCopy withParameters:parametersCopy completion:0];
    }
  }
}

- (void)_executeDefaultAction:(BOOL)action
{
  actionCopy = action;
  staticContentProvider = [(NCFullScreenStagingBannerView *)self->_bannerView staticContentProvider];
  defaultAction = [staticContentProvider defaultAction];

  v5 = defaultAction;
  if (defaultAction)
  {
    (*(defaultAction + 16))(defaultAction, actionCopy);
    v5 = defaultAction;
  }
}

- (void)_handleBannerContentTap
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = +[NCNotificationEventTracker sharedInstance];
  notificationRequest = self->_notificationRequest;
  notificationUsageTrackingState = [(NCFullScreenPresentableViewController *)self notificationUsageTrackingState];
  [v3 shortLookDefaultActionInvokedWithTrigger:0 forNotificationRequest:notificationRequest withState:notificationUsageTrackingState];

  delegate = [(NCFullScreenPresentableViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [delegate fullScreenPresentableViewControllerShouldTransitionToDetailStageOnTap:self] && -[NCFullScreenStagingBannerView stage](self->_bannerView, "stage") != 2)
  {
    v7 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_notificationRequest;
      v9 = v7;
      notificationIdentifier = [(NCNotificationRequest *)v8 notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v19 = 138543362;
      v20 = un_logDigest;
      _os_log_impl(&dword_21E77E000, v9, OS_LOG_TYPE_DEFAULT, "Notification request presenter tap performing transition to detail stage for request '%{public}@'", &v19, 0xCu);
    }

    [(NCFullScreenPresentableViewController *)self _invalidateDetailStageTransitionTimerIfNecessary];
    [(NCFullScreenPresentableViewController *)self _animateTransitionToDetailStateForTrigger:4];
  }

  else
  {
    staticContentProvider = [(NCFullScreenStagingBannerView *)self->_bannerView staticContentProvider];
    defaultAction = [staticContentProvider defaultAction];

    if (defaultAction)
    {
      v14 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        v15 = self->_notificationRequest;
        v16 = v14;
        notificationIdentifier2 = [(NCNotificationRequest *)v15 notificationIdentifier];
        un_logDigest2 = [notificationIdentifier2 un_logDigest];
        v19 = 138543362;
        v20 = un_logDigest2;
        _os_log_impl(&dword_21E77E000, v16, OS_LOG_TYPE_DEFAULT, "Notification request presenter tap performing default action for request '%{public}@'", &v19, 0xCu);
      }

      [(NCFullScreenPresentableViewController *)self _executeDefaultAction:1];
    }
  }
}

- (void)_requestDismissalWithReason:(id)reason
{
  reasonCopy = reason;
  objc_storeStrong(&self->_dismissalRequestReason, reason);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained fullScreenPresentableViewController:self requestsDismissalWithReason:reasonCopy];
  }
}

- (double)_rubberbandedTranslationForTranslation:(double)translation
{
  view = [(NCFullScreenPresentableViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(NCFullScreenStagingBannerView *)self->_bannerView contentFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  rect = v20;
  v31.origin.x = v7;
  v31.origin.y = v9;
  v31.size.width = v11;
  v31.size.height = v13;
  CGRectGetHeight(v31);
  v21 = v15;
  v22 = v17;
  v23 = v19;
  v24 = rect;
  if (translation <= 0.0)
  {
    CGRectGetMinY(*&v21);
  }

  else
  {
    CGRectGetMaxY(*&v21);
  }

  v25 = +[NCUNUIKitPrototypeDomain rootSettings];
  [v25 interactiveDismissalRubberbandingInset];

  v26 = +[NCUNUIKitPrototypeDomain rootSettings];
  [v26 interactiveDismissalRubberbandingRange];

  BSUIConstrainValueToIntervalWithRubberBand();
  if (translation < 0.0)
  {
    v28 = -v27;
  }

  else
  {
    v28 = v27;
  }

  return v28;
}

- (NCFullScreenPresentableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end