@interface SBPIPPegasusAdapter
+ (BOOL)_isAutoPictureInPictureSupported;
+ (BOOL)isSupported;
- (BOOL)_layoutStateContainsSceneForSourceSceneSessionIdentifier:(id)a3 bundleIdentifier:(id)a4 windowScene:(id)a5;
- (BOOL)_presentableIsDodgeableAndStatusBarSuppressing:(id)a3;
- (BOOL)isPresentingPictureInPictureForPIPController:(id)a3 applicationBundleIdentifier:(id)a4;
- (BOOL)isStoppingOrCancellingPictureForPIPController:(id)a3 applicationWithBundleIdentifier:(id)a4 scenePersistenceIdentifier:(id)a5;
- (BOOL)pictureInPictureController:(id)a3 shouldAuthorizeBackgroundPIPForAppWithBundleIdentifier:(id)a4;
- (BOOL)pictureInPictureControllerCanBackgroundStartForFaceTimeVideoCall:(id)a3;
- (BOOL)pipController:(id)a3 willBeginPIPInterruptionForAssertion:(id)a4;
- (BOOL)preventStashAssertionsForPIPController:(id)a3;
- (BOOL)shouldStartPictureInPictureForPIPController:(id)a3 applicationWithProcessIdentifierEnteringBackground:(int)a4 scenePersistenceIdentifier:(id)a5;
- (SBPIPPegasusAdapter)init;
- (id)pictureInPictureController:(id)a3 displayConfigurationForApplication:(id)a4;
- (id)pipController:(id)a3 morphAnimatorDataSourceForMorphAnimatorController:(id)a4;
- (int64_t)_reasonForAssertion:(id)a3;
- (void)_activateSceneWithPersistenceIdentifier:(id)a3 pictureInPictureViewController:(id)a4 completion:(id)a5;
- (void)_actuallyUpdateBannerInsetsForExpanseBanner:(id)a3 isSizeChanging:(BOOL)a4 isFullScreen:(BOOL)a5;
- (void)_bannerPresentableWillAnimateTransition:(id)a3 isPresentation:(BOOL)a4 isDismissal:(BOOL)a5 isFullScreen:(BOOL)a6 withTransitionCoordinator:(id)a7;
- (void)_enumerateContainerViewControllersForApplication:(id)a3 scenePersistenceIdentifier:(id)a4 usingBlock:(id)a5;
- (void)_postEnsuredInSwitcher_pictureInPictureController:(id)a3 didRequestStopForPictureInPictureViewController:(id)a4 sourceSceneSessionIdentifier:(id)a5 animated:(BOOL)a6;
- (void)_updateAppStatusBarSettingsAssertion;
- (void)_updateBannerInsetsForExpanseBanner:(id)a3 isSizeChanging:(BOOL)a4 isFullScreen:(BOOL)a5;
- (void)_updateHasIdleTimerBehaviors;
- (void)_updateHideFromClonedDisplaysAssertion;
- (void)bannerManager:(id)a3 presentable:(id)a4 willTransitionToSize:(CGSize)a5 withTransitionCoordinator:(id)a6;
- (void)containerViewControllerStartReducingResourcesUsage:(id)a3;
- (void)containerViewControllerStopReducingResourcesUsage:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pictureInPictureController:(id)a3 didCreatePictureInPictureViewController:(id)a4;
- (void)pictureInPictureController:(id)a3 didHidePictureInPictureViewController:(id)a4;
- (void)pictureInPictureController:(id)a3 didRequestStopForPictureInPictureViewController:(id)a4 sourceSceneSessionIdentifier:(id)a5 animated:(BOOL)a6;
- (void)pictureInPictureController:(id)a3 willDestroyPictureInPictureViewController:(id)a4;
- (void)pictureInPictureController:(id)a3 willHidePictureInPictureViewController:(id)a4;
- (void)pipController:(id)a3 didCancelPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:(int)a4 scenePersistenceIdentifier:(id)a5;
- (void)pipController:(id)a3 didStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:(int)a4 scenePersistenceIdentifier:(id)a5 animated:(BOOL)a6 completionHandler:(id)a7;
- (void)pipController:(id)a3 willEndPIPInterruptionForAssertion:(id)a4;
- (void)setPIPController:(id)a3;
@end

@implementation SBPIPPegasusAdapter

+ (BOOL)_isAutoPictureInPictureSupported
{
  v3 = +[SBDefaults localDefaults];
  v4 = [v3 pipDefaults];
  v5 = [v4 allowAutoPIP];

  return [a1 isSupported] & v5;
}

+ (BOOL)isSupported
{
  if (isSupported_onceToken != -1)
  {
    +[SBPIPPegasusAdapter isSupported];
  }

  return isSupported_isPictureInPictureSupported;
}

uint64_t __34__SBPIPPegasusAdapter_isSupported__block_invoke()
{
  result = [MEMORY[0x277D38BE0] isPictureInPictureSupported];
  isSupported_isPictureInPictureSupported = result;
  return result;
}

- (SBPIPPegasusAdapter)init
{
  v10.receiver = self;
  v10.super_class = SBPIPPegasusAdapter;
  v2 = [(SBPIPPegasusAdapter *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D38BE0]);
    pegasusController = v2->_pegasusController;
    v2->_pegasusController = v3;

    [(PGPictureInPictureController *)v2->_pegasusController setDelegate:v2];
    v5 = objc_alloc_init(SBPIPAnalytics);
    analyticsHelper = v2->_analyticsHelper;
    v2->_analyticsHelper = v5;

    [(PGPictureInPictureController *)v2->_pegasusController setAnalyticsDelegate:v2->_analyticsHelper];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel__updateHasIdleTimerBehaviors name:*MEMORY[0x277D38BF8] object:0];

    [(PGPictureInPictureController *)v2->_pegasusController addObserver:v2 forKeyPath:@"pictureInPictureActive" options:1 context:0];
    [(PGPictureInPictureController *)v2->_pegasusController activateBackgroundPIPAuthorizationService];
    v8 = [SBApp bannerManager];
    [v8 addTransitionObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(BSAbsoluteMachTimer *)self->_pipDefaultContentSizeResetTimer invalidate];
  v3 = [SBApp bannerManager];
  [v3 removeTransitionObserver:self];

  if ([objc_opt_class() isSupported])
  {
    [(PGPictureInPictureController *)self->_pegasusController removeObserver:self forKeyPath:@"pictureInPictureActive"];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self];
  }

  v5.receiver = self;
  v5.super_class = SBPIPPegasusAdapter;
  [(SBPIPPegasusAdapter *)&v5 dealloc];
}

- (void)setPIPController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pipController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_pipController, obj);
    v5 = obj;
  }
}

- (BOOL)isPresentingPictureInPictureForPIPController:(id)a3 applicationBundleIdentifier:(id)a4
{
  pegasusController = self->_pegasusController;
  v5 = a4;
  v6 = [(PGPictureInPictureController *)pegasusController activePictureInPictureApplication];
  v7 = [v6 bundleIdentifier];

  LOBYTE(v6) = [v7 isEqualToString:v5];
  return v6;
}

- (BOOL)pipController:(id)a3 willBeginPIPInterruptionForAssertion:(id)a4
{
  pegasusController = self->_pegasusController;
  v6 = a4;
  v7 = [(SBPIPPegasusAdapter *)self _reasonForAssertion:v6];
  v8 = [v6 cameraSensorAttributionBundleIdentifier];

  LOBYTE(v7) = [(PGPictureInPictureController *)pegasusController pictureInPictureInterruptionBeganWithReason:v7 attribution:v8];
  return v7;
}

- (void)pipController:(id)a3 willEndPIPInterruptionForAssertion:(id)a4
{
  pegasusController = self->_pegasusController;
  v6 = a4;
  v7 = [(SBPIPPegasusAdapter *)self _reasonForAssertion:v6];
  v8 = [v6 cameraSensorAttributionBundleIdentifier];

  [(PGPictureInPictureController *)pegasusController pictureInPictureInterruptionEndedWithReason:v7 attribution:v8];
}

- (BOOL)shouldStartPictureInPictureForPIPController:(id)a3 applicationWithProcessIdentifierEnteringBackground:(int)a4 scenePersistenceIdentifier:(id)a5
{
  v7 = a5;
  if ([objc_opt_class() _isAutoPictureInPictureSupported])
  {
    pegasusController = self->_pegasusController;
    v9 = SBPIPApplicationForProcessIdentifier(pegasusController, a4);
    v10 = [(PGPictureInPictureController *)pegasusController shouldStartPictureInPictureForApplicationEnteringBackground:v9 sceneSessionPersistentIdentifier:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isStoppingOrCancellingPictureForPIPController:(id)a3 applicationWithBundleIdentifier:(id)a4 scenePersistenceIdentifier:(id)a5
{
  pegasusController = self->_pegasusController;
  v7 = a5;
  v8 = [(PGPictureInPictureController *)pegasusController existingPictureInPictureApplicationForBundleIdentifier:a4];
  LOBYTE(pegasusController) = [(PGPictureInPictureController *)pegasusController isStoppingOrCancellingPictureInPictureForApplication:v8 sceneSessionPersistentIdentifier:v7];

  return pegasusController;
}

- (void)pipController:(id)a3 didStartPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:(int)a4 scenePersistenceIdentifier:(id)a5 animated:(BOOL)a6 completionHandler:(id)a7
{
  v7 = a6;
  pegasusController = self->_pegasusController;
  v11 = a7;
  v12 = a5;
  v13 = SBPIPApplicationForProcessIdentifier(pegasusController, a4);
  [(PGPictureInPictureController *)pegasusController startPictureInPictureForApplicationEnteringBackground:v13 sceneSessionPersistentIdentifier:v12 animated:v7 completionHandler:v11];
}

- (void)pipController:(id)a3 didCancelPictureInPictureForApplicationWithProcessIdentifierEnteringBackground:(int)a4 scenePersistenceIdentifier:(id)a5
{
  pegasusController = self->_pegasusController;
  v7 = a5;
  v8 = SBPIPApplicationForProcessIdentifier(pegasusController, a4);
  [(PGPictureInPictureController *)pegasusController cancelPictureInPictureForApplication:v8 sceneSessionPersistentIdentifier:v7];
}

- (id)pipController:(id)a3 morphAnimatorDataSourceForMorphAnimatorController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 scenePersistenceIdentifier];
  v9 = SBPIPApplicationForProcessIdentifier(self->_pegasusController, [v6 targetProcessIdentifier]);
  v10 = [(PGPictureInPictureController *)self->_pegasusController contentTypePictureInPictureApplication:v9 sceneSessionPersistentIdentifier:v8];
  [(PGPictureInPictureController *)self->_pegasusController preferredContentSizeForInteractivelyEnteringBackgroundForApplication:v9 sceneSessionPersistentIdentifier:v8];
  v12 = v11;
  v14 = v13;
  v15 = [SBPIPContentViewLayoutSettings alloc];
  v16 = [SBPIPContentViewLayoutMetrics pegasusMetricsForContentType:v10];
  v17 = [(SBPIPContentViewLayoutSettings *)v15 initWithPlatformMetrics:v16 contentSize:v12, v14];

  v18 = [[SBPIPMorphAnimatorDataSource alloc] initWithMorphAnimatorController:v6 pipController:v7 pegasusController:self->_pegasusController contentViewLayoutSettings:v17];

  return v18;
}

- (BOOL)preventStashAssertionsForPIPController:(id)a3
{
  v5 = [(PGPictureInPictureController *)self->_pegasusController isStartingStoppingOrCancellingPictureInPicture];
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_pipController);
    if ([WeakRetained hasCameraInterruptionForBundleIdentifier:@"com.apple.avconferenced"])
    {
      v6 = 1;
LABEL_5:

      return v6;
    }
  }

  v7 = [(PGPictureInPictureController *)self->_pegasusController activePictureInPictureApplications];
  v6 = [v7 count] == 0;

  if (v5)
  {
    goto LABEL_5;
  }

  return v6;
}

- (void)_bannerPresentableWillAnimateTransition:(id)a3 isPresentation:(BOOL)a4 isDismissal:(BOOL)a5 isFullScreen:(BOOL)a6 withTransitionCoordinator:(id)a7
{
  v9 = a5;
  v10 = a4;
  v12 = a3;
  v13 = a7;
  v14 = [(SBPIPPegasusAdapter *)self _presentableIsDodgeableAndStatusBarSuppressing:v12];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __129__SBPIPPegasusAdapter__bannerPresentableWillAnimateTransition_isPresentation_isDismissal_isFullScreen_withTransitionCoordinator___block_invoke;
  v35[3] = &unk_2783A92D8;
  v15 = v12;
  v36 = v15;
  v37 = self;
  v16 = MEMORY[0x223D6F7F0](v35);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __129__SBPIPPegasusAdapter__bannerPresentableWillAnimateTransition_isPresentation_isDismissal_isFullScreen_withTransitionCoordinator___block_invoke_2;
  v32[3] = &unk_2783A92D8;
  v17 = v15;
  v33 = v17;
  v34 = self;
  v18 = MEMORY[0x223D6F7F0](v32);
  v19 = v18;
  if (v14)
  {
    if (v10 || v9)
    {
      if (v10)
      {
        v18 = v16;
      }

      (*(v18 + 16))();
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __129__SBPIPPegasusAdapter__bannerPresentableWillAnimateTransition_isPresentation_isDismissal_isFullScreen_withTransitionCoordinator___block_invoke_3;
    v28[3] = &unk_2783B26B8;
    v28[4] = self;
    v29 = v17;
    v30 = !v10 && !v9 && v14;
    v31 = a6;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __129__SBPIPPegasusAdapter__bannerPresentableWillAnimateTransition_isPresentation_isDismissal_isFullScreen_withTransitionCoordinator___block_invoke_4;
    v20[3] = &unk_2783B26E0;
    v24 = v10;
    v22 = v19;
    v25 = v9;
    v23 = v16;
    v20[4] = self;
    v21 = v29;
    v26 = v30;
    v27 = a6;
    [v13 animateAlongsideTransition:v28 completion:v20];
  }
}

void __129__SBPIPPegasusAdapter__bannerPresentableWillAnimateTransition_isPresentation_isDismissal_isFullScreen_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    goto LABEL_5;
  }

  v3 = SBLogCommon();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    NSLog(&cfstr_TriedToAddOrRe.isa);
  }

  v2 = *(a1 + 32);
  if (v2)
  {
LABEL_5:
    v5 = *(*(a1 + 40) + 16);
    if (!v5)
    {
      v6 = [MEMORY[0x277CBEB58] set];
      v7 = *(a1 + 40);
      v8 = *(v7 + 16);
      *(v7 + 16) = v6;

      v2 = *(a1 + 32);
      v5 = *(*(a1 + 40) + 16);
    }

    [v5 addObject:v2];
  }
}

void __129__SBPIPPegasusAdapter__bannerPresentableWillAnimateTransition_isPresentation_isDismissal_isFullScreen_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    goto LABEL_5;
  }

  v2 = SBLogCommon();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  if (v3)
  {
    NSLog(&cfstr_TriedToAddOrRe.isa);
  }

  if (*(a1 + 32))
  {
LABEL_5:
    [*(*(a1 + 40) + 16) removeObject:?];
    if (![*(*(a1 + 40) + 16) count])
    {
      v4 = *(a1 + 40);
      v5 = *(v4 + 16);
      *(v4 + 16) = 0;
    }
  }
}

uint64_t __129__SBPIPPegasusAdapter__bannerPresentableWillAnimateTransition_isPresentation_isDismissal_isFullScreen_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _updateBannerInsetsForExpanseBanner:*(a1 + 40) isSizeChanging:*(a1 + 48) isFullScreen:*(a1 + 49)];
  v2 = *(a1 + 32);

  return [v2 _updateAppStatusBarSettingsAssertion];
}

uint64_t __129__SBPIPPegasusAdapter__bannerPresentableWillAnimateTransition_isPresentation_isDismissal_isFullScreen_withTransitionCoordinator___block_invoke_4(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (!result)
  {
    return result;
  }

  if (*(a1 + 64))
  {
    v4 = 48;
LABEL_7:
    (*(*(a1 + v4) + 16))();
    goto LABEL_8;
  }

  if (*(a1 + 65) == 1)
  {
    v4 = 56;
    goto LABEL_7;
  }

LABEL_8:
  [*(a1 + 32) _updateBannerInsetsForExpanseBanner:*(a1 + 40) isSizeChanging:*(a1 + 66) isFullScreen:*(a1 + 67)];
  v5 = *(a1 + 32);

  return [v5 _updateAppStatusBarSettingsAssertion];
}

- (void)bannerManager:(id)a3 presentable:(id)a4 willTransitionToSize:(CGSize)a5 withTransitionCoordinator:(id)a6
{
  height = a5.height;
  width = a5.width;
  v18 = a4;
  v11 = a6;
  v12 = a3;
  v13 = [v12 windowSceneForPresentable:v18];
  v14 = [v12 bannerWindowInWindowScene:v13];

  if (v14)
  {
    [v14 frame];
    v17 = height == v16 && width == v15;
  }

  else
  {
    v17 = 0;
  }

  [(SBPIPPegasusAdapter *)self _bannerPresentableWillAnimateTransition:v18 isPresentation:0 isDismissal:0 isFullScreen:v17 withTransitionCoordinator:v11];
}

- (void)_updateBannerInsetsForExpanseBanner:(id)a3 isSizeChanging:(BOOL)a4 isFullScreen:(BOOL)a5
{
  v8 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__SBPIPPegasusAdapter__updateBannerInsetsForExpanseBanner_isSizeChanging_isFullScreen___block_invoke;
  block[3] = &unk_2783B2708;
  block[4] = self;
  v11 = v8;
  v12 = a4;
  v13 = a5;
  v9 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_actuallyUpdateBannerInsetsForExpanseBanner:(id)a3 isSizeChanging:(BOOL)a4 isFullScreen:(BOOL)a5
{
  v72 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v9 = [(NSMutableSet *)self->_presentedExpanseBanners count];
    v10 = [(NSMutableSet *)self->_presentedExpanseBanners count];
    v11 = !v9 || a5;
    if (v10 <= 1)
    {
      v12 = 0.0;
      if (v11)
      {
        goto LABEL_30;
      }
    }

    v13 = 0.0;
    if ([(NSMutableSet *)self->_presentedExpanseBanners count])
    {
      v12 = 1.79769313e308;
    }

    else
    {
      v12 = 0.0;
    }

    if ([(NSMutableSet *)self->_presentedExpanseBanners count])
    {
      v13 = 2.22507386e-308;
    }

    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v14 = self->_presentedExpanseBanners;
    v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v67 objects:v71 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v68;
      v66 = 0.0;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          v64 = v13;
          v65 = v12;
          if (*v68 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v67 + 1) + 8 * i);
          v20 = [v19 viewController];
          v21 = [v20 view];

          [v21 bounds];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v30 = [v19 viewController];
          [v30 bannerContentOutsets];
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;

          v39 = v23 + v34;
          v40 = v25 + v32;
          v41 = v27 - (v34 + v38);
          v42 = v29 - (v32 + v36);
          v43 = [v21 window];
          [v43 bounds];
          v45 = v44;
          v47 = v46;
          v49 = v48;
          v51 = v50;

          v73.origin.x = v45;
          v73.origin.y = v47;
          v73.size.width = v49;
          v73.size.height = v51;
          MidY = CGRectGetMidY(v73);
          v53 = v66;
          if (MidY >= v66)
          {
            v53 = MidY;
          }

          v66 = v53;
          v54 = [v21 window];
          [v54 convertRect:v21 fromView:{v39, v40, v41, v42}];
          v77.origin.x = v45;
          v77.origin.y = v47;
          v77.size.width = v49;
          v77.size.height = v51;
          v75 = CGRectIntersection(v74, v77);
          x = v75.origin.x;
          y = v75.origin.y;
          width = v75.size.width;
          height = v75.size.height;

          v76.origin.x = x;
          v76.origin.y = y;
          v76.size.width = width;
          v76.size.height = height;
          MaxY = CGRectGetMaxY(v76);
          v13 = v64;
          v12 = v65;
          if (MaxY < v65)
          {
            v12 = MaxY;
          }

          if (MaxY >= v64)
          {
            v13 = MaxY;
          }
        }

        v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v67 objects:v71 count:16];
      }

      while (v16);
    }

    else
    {
      v66 = 0.0;
    }

    if (v13 <= v66)
    {
      v12 = v13;
    }

    if (v12 <= v66)
    {
LABEL_30:
      WeakRetained = objc_loadWeakRetained(&self->_pipController);
      v61 = [WeakRetained windowSceneManager];
      v62 = [v61 activeDisplayWindowScene];

      v63 = [v62 pictureInPictureManager];
      [v63 applyPictureInPictureInsets:6 forSource:{v12, 0.0, 0.0, 0.0}];
    }
  }
}

- (void)_updateAppStatusBarSettingsAssertion
{
  presentedExpanseBanners = self->_presentedExpanseBanners;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__SBPIPPegasusAdapter__updateAppStatusBarSettingsAssertion__block_invoke;
  v19[3] = &unk_2783B2730;
  v19[4] = self;
  v4 = [(NSMutableSet *)presentedExpanseBanners bs_firstObjectPassingTest:v19];
  appStatusBarSettingsAssertion = self->_appStatusBarSettingsAssertion;
  if (!v4)
  {
    v18 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [(SBWindowSceneStatusBarSettingsAssertion *)appStatusBarSettingsAssertion invalidateWithAnimationParameters:v18];

    v7 = self->_appStatusBarSettingsAssertion;
    self->_appStatusBarSettingsAssertion = 0;
    goto LABEL_5;
  }

  if (!appStatusBarSettingsAssertion)
  {
    v6 = [SBApp bannerManager];
    v7 = [v6 windowSceneForPresentable:v4];

    v8 = [v7 statusBarManager];
    v9 = [v8 assertionManager];
    v10 = objc_alloc_init(SBMutableStatusBarSettings);
    v11 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D6BC60], *MEMORY[0x277D6BC68], *MEMORY[0x277D6BCD8], *MEMORY[0x277D6BCE8], *MEMORY[0x277D6BBD8], *MEMORY[0x277D6BC58], *MEMORY[0x277D6BC08], *MEMORY[0x277D6BD00], *MEMORY[0x277D6BCE0], @"com.apple.systemstatus.background-activity.CallRecording", 0}];
    [(SBMutableStatusBarSettings *)v10 setBackgroundActivitiesToSuppress:v11];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v9 newSettingsAssertionWithSettings:v10 atLevel:8 reason:v13];
    v15 = self->_appStatusBarSettingsAssertion;
    self->_appStatusBarSettingsAssertion = v14;

    v16 = self->_appStatusBarSettingsAssertion;
    v17 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
    [(SBWindowSceneStatusBarSettingsAssertion *)v16 acquireWithAnimationParameters:v17];

LABEL_5:
  }
}

- (BOOL)_presentableIsDodgeableAndStatusBarSuppressing:(id)a3
{
  v3 = a3;
  v4 = [v3 requesterIdentifier];
  v5 = [v3 requestIdentifier];

  if ([v5 hasPrefix:@"com.apple.conversationController.HUD"] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"com.apple.conversationController.Session"))
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 isEqualToString:@"com.apple.CopresenceApp.DefaultRequester"];
  }

  return v6;
}

- (void)containerViewControllerStartReducingResourcesUsage:(id)a3
{
  if (!self->_isReducingResourcesUsage)
  {
    self->_isReducingResourcesUsage = 1;
    v6 = [a3 contentViewController];
    v5 = [v6 application];
    [(PGPictureInPictureController *)self->_pegasusController startPictureInPictureResourcesUsageReductionForApplication:v5 requestingViewController:v6];
  }
}

- (void)containerViewControllerStopReducingResourcesUsage:(id)a3
{
  if (self->_isReducingResourcesUsage)
  {
    self->_isReducingResourcesUsage = 0;
    v6 = [a3 contentViewController];
    v5 = [v6 application];
    [(PGPictureInPictureController *)self->_pegasusController stopPictureInPictureResourcesUsageReductionForApplication:v5 requestingViewController:v6];
  }
}

- (void)_updateHideFromClonedDisplaysAssertion
{
  WeakRetained = objc_loadWeakRetained(&self->_pipController);
  v4 = [WeakRetained containerViewControllersOnWindowScene:0];
  v5 = [v4 bs_containsObjectPassingTest:&__block_literal_global_37_2];

  hideFaceTimePIPFromSharePlayScreenSharingAssertion = self->_hideFaceTimePIPFromSharePlayScreenSharingAssertion;
  if (v5)
  {
    if (hideFaceTimePIPFromSharePlayScreenSharingAssertion)
    {
      return;
    }

    v12 = +[SBWorkspace mainWorkspace];
    v8 = [v12 inCallPresentationManager];
    v9 = [v8 hideSharePlayContentFromSharedScreenController];
    v10 = [v9 acquireHideSharePlayContentFromClonedDisplaysAssertionForReason:@"FaceTime PIP"];
    v11 = self->_hideFaceTimePIPFromSharePlayScreenSharingAssertion;
    self->_hideFaceTimePIPFromSharePlayScreenSharingAssertion = v10;

    v7 = v12;
  }

  else
  {
    [(BSInvalidatable *)hideFaceTimePIPFromSharePlayScreenSharingAssertion invalidate];
    v7 = self->_hideFaceTimePIPFromSharePlayScreenSharingAssertion;
    self->_hideFaceTimePIPFromSharePlayScreenSharingAssertion = 0;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v65 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v47 = a4;
  v10 = a5;
  v46 = v9;
  if ([v9 isEqualToString:@"pictureInPictureActive"])
  {
    v43 = v10;
    v11 = [v10 objectForKey:*MEMORY[0x277CCA2F0]];
    v44 = [v11 BOOLValue];

    v12 = +[SBApplicationTestingManager sharedInstance];
    v45 = [v12 currentTestName];

    if (v45 && (([v45 containsString:@"PIP"] & 1) != 0 || objc_msgSend(v45, "containsString:", @"PiP")))
    {
      v13 = SBApplicationTestingPIPIsActiveNotificationName;
      if (!v44)
      {
        v13 = SBApplicationTestingPIPIsNoLongerActiveNotificationName;
      }

      v14 = MEMORY[0x277CCAB98];
      v15 = *v13;
      v16 = [v14 defaultCenter];
      [v16 postNotificationName:v15 object:0];
    }

    if ((v44 & 1) == 0)
    {
      v50 = [(PGPictureInPictureController *)self->_pegasusController activeSceneSessionIdentifiersByApplication];
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = [v50 allKeys];
      v51 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
      if (v51)
      {
        v49 = *v60;
        do
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v60 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v59 + 1) + 8 * i);
            v19 = [v50 objectForKey:v18];
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v20 = [v19 countByEnumeratingWithState:&v55 objects:v63 count:16];
            if (v20)
            {
              v21 = *v56;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v56 != v21)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v23 = *(*(&v55 + 1) + 8 * j);
                  WeakRetained = objc_loadWeakRetained(&self->_pipController);
                  v25 = [WeakRetained pictureInPictureMorphAnimatorControllerForProcessIdentifier:objc_msgSend(v18 scenePersistenceIdentifier:{"processIdentifier"), v23}];

                  if (v25)
                  {
                    v26 = [v25 viewMorphAnimator];
                    v27 = [v26 direction] == 1;

                    if (!v27)
                    {
                      [v25 cancel];
                    }
                  }
                }

                v20 = [v19 countByEnumeratingWithState:&v55 objects:v63 count:16];
              }

              while (v20);
            }
          }

          v51 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
        }

        while (v51);
      }
    }

    if (__sb__runningInSpringBoard())
    {
      if ((SBFEffectiveDeviceClass() == 2) | v44 & 1)
      {
LABEL_29:
        pipDefaultContentSizeResetTimer = self->_pipDefaultContentSizeResetTimer;
        p_pipDefaultContentSizeResetTimer = &self->_pipDefaultContentSizeResetTimer;
        [(BSAbsoluteMachTimer *)pipDefaultContentSizeResetTimer invalidate];
        v30 = *p_pipDefaultContentSizeResetTimer;
        *p_pipDefaultContentSizeResetTimer = 0;

        v31 = objc_alloc_init(MEMORY[0x277D66008]);
        [v31 setInitiallyUsesMinimumPreferredContentSize:0];

LABEL_32:
        v10 = v43;
        goto LABEL_33;
      }
    }

    else
    {
      v32 = [MEMORY[0x277D75418] currentDevice];
      v33 = [v32 userInterfaceIdiom] == 1;

      if ((v33 | v44))
      {
        goto LABEL_29;
      }
    }

    [(BSAbsoluteMachTimer *)self->_pipDefaultContentSizeResetTimer invalidate];
    v34 = self->_pipDefaultContentSizeResetTimer;
    self->_pipDefaultContentSizeResetTimer = 0;

    v35 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBPIPDefaultContentSizeResetTimer"];
    v36 = self->_pipDefaultContentSizeResetTimer;
    self->_pipDefaultContentSizeResetTimer = v35;

    objc_initWeak(&location, self);
    v37 = +[SBPIPSettingsDomain rootSettings];
    v38 = [v37 interactionSettings];
    [v38 defaultContentSizeResetTimeout];
    v40 = v39;

    v41 = self->_pipDefaultContentSizeResetTimer;
    v42 = MEMORY[0x277D85CD0];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __70__SBPIPPegasusAdapter_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v52[3] = &unk_2783A9918;
    objc_copyWeak(&v53, &location);
    [(BSAbsoluteMachTimer *)v41 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v52 queue:v40 * 60.0 handler:0.0];

    objc_destroyWeak(&v53);
    objc_destroyWeak(&location);
    goto LABEL_32;
  }

LABEL_33:
}

void __70__SBPIPPegasusAdapter_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained[5] invalidate];
    v2 = v4[5];
    v4[5] = 0;

    v3 = objc_alloc_init(MEMORY[0x277D66008]);
    [v3 setInitiallyUsesMinimumPreferredContentSize:1];

    WeakRetained = v4;
  }
}

- (void)pictureInPictureController:(id)a3 didCreatePictureInPictureViewController:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACC8];
  v6 = a4;
  if (([v5 isMainThread] & 1) == 0)
  {
    v7 = SBLogCommon();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

    if (v8)
    {
      v9 = _SBFLoggingMethodProem();
      NSLog(&cfstr_NeedsToBeInvok.isa, v9);
    }
  }

  if (([objc_opt_class() isSupported] & 1) == 0)
  {
    v10 = SBLogCommon();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

    if (v11)
    {
      v12 = _SBFLoggingMethodProem();
      NSLog(&cfstr_InvokedOnADevi.isa, v12);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_pipController);
  v14 = [v6 contentType];
  if (v14 == 4)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2 * (v14 == 6);
  }

  v25 = *MEMORY[0x277D67600];
  v26[0] = MEMORY[0x277CBEC38];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v17 = MEMORY[0x277D65DD0];
  v18 = v16;
  v19 = [v17 sharedInstance];
  [v19 emitEvent:24 withPayload:v18];

  v20 = [[SBPIPPegasusContainerAdapter alloc] initWithPictureInPictureViewController:v6];
  v21 = [SBPIPContainerViewController alloc];
  v22 = +[SBPIPSettingsDomain rootSettings];
  v23 = [v22 interactionSettings];
  v24 = [(SBPIPContainerViewController *)v21 initWithPIPController:WeakRetained interactionSettings:v23 adapter:v20];

  [(SBPIPContainerViewController *)v24 setContentZOrderPriority:v15];
  [(SBPIPContainerViewController *)v24 addObserver:self];
  [WeakRetained addContainerViewController:v24 dataSource:v20];
  [(SBPIPPegasusAdapter *)self _updateHideFromClonedDisplaysAssertion];
}

- (void)pictureInPictureController:(id)a3 didRequestStopForPictureInPictureViewController:(id)a4 sourceSceneSessionIdentifier:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v11;
  v14 = [v13 application];
  v15 = [v14 bundleIdentifier];
  if ([v15 isEqualToString:@"com.apple.InCallService"])
  {
    v16 = +[SBWorkspace mainWorkspace];
    v17 = [v16 inCallPresentationManager];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __136__SBPIPPegasusAdapter_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke;
    v18[3] = &unk_2783B2778;
    v18[4] = self;
    v19 = v10;
    v20 = v13;
    v21 = v12;
    v23 = v6;
    v22 = v14;
    [v17 ensureSwitcherInclusionForRestoringFromPIPForSceneWithPersistenceIdentifier:v21 completion:v18];
  }

  else
  {
    [(SBPIPPegasusAdapter *)self _postEnsuredInSwitcher_pictureInPictureController:v10 didRequestStopForPictureInPictureViewController:v13 sourceSceneSessionIdentifier:v12 animated:v6];
  }
}

uint64_t __136__SBPIPPegasusAdapter_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v7 = *(a1 + 72);

    return [v3 _postEnsuredInSwitcher_pictureInPictureController:v4 didRequestStopForPictureInPictureViewController:v5 sourceSceneSessionIdentifier:v6 animated:v7];
  }

  else
  {
    v9 = SBLogPIP();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __136__SBPIPPegasusAdapter_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_cold_1(a1, v9);
    }

    return [*(*(a1 + 32) + 24) cancelPictureInPictureForApplication:*(a1 + 64) sceneSessionPersistentIdentifier:*(a1 + 56)];
  }
}

- (void)_postEnsuredInSwitcher_pictureInPictureController:(id)a3 didRequestStopForPictureInPictureViewController:(id)a4 sourceSceneSessionIdentifier:(id)a5 animated:(BOOL)a6
{
  v144 = *MEMORY[0x277D85DE8];
  v82 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_pipController);
  v12 = v9;
  v81 = [v12 application];
  v13 = [v81 bundleIdentifier];
  v87 = v12;
  v14 = [v12 _sbWindowScene];
  v77 = self;
  v79 = [(SBPIPPegasusAdapter *)self _layoutStateContainsSceneForSourceSceneSessionIdentifier:v10 bundleIdentifier:v13 windowScene:v14];
  v15 = [v14 switcherController];
  v78 = [v15 isAnySwitcherVisible];
  v76 = [v15 isInAnyPeekState];
  v83 = v15;
  v75 = [v15 unlockedEnvironmentMode];
  v93 = v14;
  v16 = [v14 switcherController];
  v17 = [v16 windowManagementContext];
  v91 = [v17 isChamoisOrFlexibleWindowing];

  v18 = +[SBSceneManagerCoordinator sharedInstance];
  v19 = [v18 sceneManagerForPersistenceIdentifier:v10];

  v84 = v19;
  v97 = [v19 existingSceneHandleForPersistenceIdentifier:v10];
  v92 = 0;
  v20 = 1;
  v85 = WeakRetained;
  v86 = v10;
  v80 = v13;
  if (v10 && v13)
  {
    v21 = +[SBMainSwitcherControllerCoordinator sharedInstanceIfExists];
    v22 = [v21 _recentAppLayoutsController];
    v23 = [v22 recentsForBundleIdentifier:v13 includingHiddenAppLayouts:0];

    v90 = [v83 displayItemLayoutAttributesProvider];
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    obj = v23;
    v95 = [obj countByEnumeratingWithState:&v138 objects:v143 count:16];
    if (v95)
    {
      v92 = 0;
      v89 = 0;
      v94 = *v139;
      do
      {
        for (i = 0; i != v95; ++i)
        {
          if (*v139 != v94)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v138 + 1) + 8 * i);
          v134 = 0u;
          v135 = 0u;
          v136 = 0u;
          v137 = 0u;
          v26 = [v25 allItems];
          v27 = [v26 countByEnumeratingWithState:&v134 objects:v142 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v135;
            while (2)
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v135 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v134 + 1) + 8 * j);
                v32 = [v31 uniqueIdentifier];
                v33 = [v97 sceneIdentifier];
                v34 = [v32 isEqualToString:v33];

                if (v34)
                {
                  v89 = [v25 environment] == 2;
                  v35 = [v25 preferredDisplayOrdinal];
                  v36 = [v93 interfaceOrientation];
                  if ((v36 - 1) < 2)
                  {
                    v37 = 1;
                  }

                  else
                  {
                    v37 = 2 * ((v36 - 3) < 2);
                  }

                  v38 = [v90 layoutAttributesForDisplayItem:v31 inAppLayout:v25 displayOrdinal:v35 orientation:v37];
                  v39 = v38;
                  if (v91)
                  {
                    v92 = [(SBCameraHardwareButton *)v38 foregroundCameraShutterButtonPIDs]!= 1;
                  }

                  else
                  {
                    v92 = 0;
                  }

                  goto LABEL_24;
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v134 objects:v142 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

LABEL_24:
        }

        v95 = [obj countByEnumeratingWithState:&v138 objects:v143 count:16];
      }

      while (v95);
      v20 = !v89;
    }

    else
    {
      v92 = 0;
    }
  }

  v40 = +[SBMainWorkspace sharedInstance];
  v41 = [v40 currentTransaction];

  v42 = +[SBLockScreenManager sharedInstanceIfExists];
  v43 = [v42 isUILocked];

  v44 = 1;
  [v85 hideContainersExcludingContainerForContentViewControllerAndTetheredOnes:v87 animated:1];
  v45 = [v97 application];
  v46 = [v97 displayIdentity];
  v47 = [SBDeviceApplicationSceneEntity entityWithApplication:v45 scenePersistenceIdentifier:v86 sceneHandleProvider:v84 displayIdentity:v46];

  v96 = [v97 sceneIfExists];
  v48 = [v96 settings];
  LODWORD(v45) = [v48 isForeground];

  if (!v45)
  {
    v52 = 0;
    goto LABEL_34;
  }

  v49 = [SBApp windowSceneManager];
  v50 = [v96 settings];
  v51 = [v50 displayIdentity];
  v52 = [v49 windowSceneForDisplayIdentity:v51];

  v44 = v52 == 0;
  if (!v52)
  {
LABEL_34:
    v53 = v93;
    v54 = v79;
    goto LABEL_35;
  }

  v53 = v93;
  v54 = v79;
  if (v52 != v93)
  {
    v55 = v86;
    v56 = v80;
    v57 = [(SBPIPPegasusAdapter *)v77 _layoutStateContainsSceneForSourceSceneSessionIdentifier:v86 bundleIdentifier:v80 windowScene:v52];
    pegasusController = v77->_pegasusController;
    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke;
    v131[3] = &unk_2783B27A0;
    v59 = v85;
    v132 = v85;
    v133 = v93;
    v60 = pegasusController;
    v61 = v81;
    [(PGPictureInPictureController *)v60 stopPictureInPictureForApplication:v81 sceneSessionPersistentIdentifier:v86 animated:!v57 completionHandler:v131];

    v62 = v132;
    v63 = v82;
    goto LABEL_48;
  }

LABEL_35:
  v64 = v20 | v54;
  v63 = v82;
  if ((v64 & 1) != 0 && (!v91 ? (v65 = v78) : (v65 = (v75 == 3) | v76 | v78), v54 || (v65 & 1) == 0))
  {
    if (!((v78 | v76 | v54 | v43) & 1 | (v41 != 0)))
    {
      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_8;
      v107[3] = &unk_2783B2890;
      v108 = v82;
      v109 = v81;
      v55 = v86;
      v110 = v86;
      v59 = v85;
      v111 = v85;
      v112 = v93;
      v113 = v77;
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_81;
      v98[3] = &unk_2783B2900;
      v61 = v81;
      v99 = v109;
      v100 = v110;
      v101 = v77;
      v56 = v80;
      v102 = v80;
      v63 = v82;
      v103 = v112;
      v106 = v91;
      v104 = v108;
      v53 = v93;
      v105 = v111;
      [v105 restoreContentViewController:v87 appSceneEntity:v47 morphAnimatorConfigurationBlock:v107 completion:v98];

      v62 = v108;
      goto LABEL_48;
    }

    v59 = v85;
    v55 = v86;
    v61 = v81;
    if (v92)
    {
      v117[0] = MEMORY[0x277D85DD0];
      v117[1] = 3221225472;
      v117[2] = __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_5;
      v117[3] = &unk_2783B27C8;
      v118 = v82;
      v119 = v81;
      v120 = v86;
      v121 = v85;
      v122 = v53;
      [(SBPIPPegasusAdapter *)v77 _activateSceneWithPersistenceIdentifier:v120 pictureInPictureViewController:v87 completion:v117];

      v62 = v118;
    }

    else
    {
      v114[0] = MEMORY[0x277D85DD0];
      v114[1] = 3221225472;
      v114[2] = __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_7;
      v114[3] = &unk_2783B27A0;
      v115 = v85;
      v116 = v53;
      [v82 stopPictureInPictureForApplication:v81 sceneSessionPersistentIdentifier:v86 animated:1 completionHandler:v114];

      v62 = v115;
    }
  }

  else
  {
    [v47 setFlag:1 forActivationSetting:57];
    v66 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v85, "contentType")}];
    [v47 setObject:v66 forActivationSetting:58];

    v67 = !v44;
    v59 = v85;
    if (v67)
    {
      v68 = v52;
    }

    else
    {
      v68 = v53;
    }

    v69 = v68;
    v70 = +[SBMainWorkspace sharedInstance];
    v71 = [v69 _sbDisplayConfiguration];
    v62 = [v70 createRequestWithOptions:0 displayConfiguration:v71];

    v72 = [MEMORY[0x277CF0CD0] processHandle];
    [v62 setOriginatingProcess:v72];

    v129[0] = MEMORY[0x277D85DD0];
    v129[1] = 3221225472;
    v129[2] = __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_2;
    v129[3] = &unk_2783A98C8;
    v130 = v47;
    [v62 modifyApplicationContext:v129];
    v123[0] = MEMORY[0x277D85DD0];
    v123[1] = 3221225472;
    v123[2] = __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_3;
    v123[3] = &unk_2783B27C8;
    v124 = v82;
    v125 = v81;
    v55 = v86;
    v126 = v86;
    v127 = v85;
    v128 = v93;
    v73 = [v62 addCompletionHandler:v123];
    v74 = +[SBMainWorkspace sharedInstance];
    [v74 executeTransitionRequest:v62];

    v61 = v81;
    v53 = v93;
  }

  v56 = v80;
LABEL_48:
}

void __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_4;
  v5[3] = &unk_2783B27A0;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 stopPictureInPictureForApplication:v3 sceneSessionPersistentIdentifier:v4 animated:1 completionHandler:v5];
}

void __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_6;
  v5[3] = &unk_2783B27A0;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 stopPictureInPictureForApplication:v3 sceneSessionPersistentIdentifier:v4 animated:1 completionHandler:v5];
}

void __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_9;
  v6[3] = &unk_2783B2868;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  objc_copyWeak(&v13, &location);
  v10 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v11 = v4;
  v12 = v5;
  [v3 setSetupCompletionBlock:v6];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_9(uint64_t a1)
{
  v2 = SBLogPIP();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[TwoStageStop] First stage begins", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_77;
  v14[3] = &unk_2783B2840;
  objc_copyWeak(&v19, (a1 + 80));
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v15 = v11;
  v16 = v10;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v17 = v12;
  v18 = v13;
  [v3 beginTwoStageStopPictureInPictureForApplication:v4 withSceneSessionPersistentIdentifier:v5 animated:1 byRestoringUserInterfaceWithCompletionHandler:v14];

  objc_destroyWeak(&v19);
}

void __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_77(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SBLogPIP();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 localizedDescription];
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[TwoStageStop] First stage ends with error: %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (a2)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_78;
    v9[3] = &unk_2783B2818;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    objc_copyWeak(&v15, (a1 + 80));
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    [WeakRetained setAnimatorWaitingForExternalAnimationActionBlock:v9];

    objc_destroyWeak(&v15);
  }

  else
  {
    [*(*(a1 + 72) + 24) cancelPictureInPictureForApplication:*(a1 + 40) sceneSessionPersistentIdentifier:*(a1 + 48)];
    [WeakRetained cancel];
  }
}

void __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_78(uint64_t a1)
{
  v2 = SBLogPIP();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[TwoStageStop] Second stage begins", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_79;
  v6[3] = &unk_2783B27F0;
  objc_copyWeak(&v9, (a1 + 72));
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  [v3 endTwoStageStopPictureInPictureForApplication:v4 withSceneSessionPersistentIdentifier:v5 animated:1 completionHandler:v6];

  objc_destroyWeak(&v9);
}

void __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_79(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogPIP();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 localizedDescription];
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[TwoStageStop] Second stage ends with error: %{public}@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained viewMorphAnimator];
  [v8 setTargetView:0];

  v9 = [WeakRetained viewMorphAnimator];
  [v9 setTargetContentView:0];

  [*(a1 + 32) showAllContentOnWindowScene:*(a1 + 40) animated:1];
}

void __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_81(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = SBLogPIP();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 138543618;
      v23 = v6;
      v24 = 2114;
      v25 = v7;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Restored %{public}@ scene %{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_81_cold_1(a1, v5);
    }

    v8 = [*(a1 + 48) _layoutStateContainsSceneForSourceSceneSessionIdentifier:*(a1 + 40) bundleIdentifier:*(a1 + 56) windowScene:*(a1 + 64)];
    v9 = SBLogPIP();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = *(a1 + 40);
        *buf = 138543362;
        v23 = v11;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Scene %{public}@ is in layout state so stopping pip", buf, 0xCu);
      }

      if (*(a1 + 88) == 1)
      {
        [*(a1 + 72) cancelPictureInPictureForApplication:*(a1 + 32) sceneSessionPersistentIdentifier:*(a1 + 40)];
        [*(a1 + 80) showAllContentOnWindowScene:*(a1 + 64) animated:1];
      }

      else
      {
        v13 = *(a1 + 40);
        v14 = *(*(a1 + 48) + 24);
        v15 = *(a1 + 32);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_82;
        v18[3] = &unk_2783B28D8;
        v16 = v13;
        v17 = *(a1 + 48);
        v19 = v16;
        v20 = v17;
        v21 = *(a1 + 32);
        [v14 stopPictureInPictureForApplication:v15 sceneSessionPersistentIdentifier:v16 animated:1 completionHandler:v18];
      }
    }

    else
    {
      if (v10)
      {
        v12 = *(a1 + 40);
        *buf = 138543362;
        v23 = v12;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Scene %{public}@ is NOT in layout state so canceling pip", buf, 0xCu);
      }

      [*(*(a1 + 48) + 24) cancelPictureInPictureForApplication:*(a1 + 32) sceneSessionPersistentIdentifier:*(a1 + 40)];
      [*(a1 + 48) _enumerateContainerViewControllersForApplication:*(a1 + 32) scenePersistenceIdentifier:*(a1 + 40) usingBlock:&__block_literal_global_89];
    }
  }
}

uint64_t __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_82(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = SBLogPIP();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_82_cold_1(v2, v3);
    }

    [*(*(v2 + 40) + 24) cancelPictureInPictureForApplication:*(v2 + 48) sceneSessionPersistentIdentifier:*(v2 + 32)];
    return [*(v2 + 40) _enumerateContainerViewControllersForApplication:*(v2 + 48) scenePersistenceIdentifier:*(v2 + 32) usingBlock:&__block_literal_global_86_1];
  }

  return result;
}

void __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_83(uint64_t a1, void *a2)
{
  v3 = [a2 contentViewController];
  v2 = [v3 viewIfLoaded];
  [v2 setHidden:1];
}

void __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_87(uint64_t a1, void *a2)
{
  v3 = [a2 contentViewController];
  v2 = [v3 viewIfLoaded];
  [v2 setHidden:1];
}

- (void)_enumerateContainerViewControllersForApplication:(id)a3 scenePersistenceIdentifier:(id)a4 usingBlock:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v24 = a5;
  v10 = [SBApp windowSceneManager];
  v25 = v9;
  v11 = [v10 windowSceneForPersistentIdentifier:v9];

  if (v11)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->_pipController);
    v23 = v11;
    v13 = [WeakRetained containerViewControllersOnWindowScene:v11];

    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [v18 bundleIdentifier];
          v20 = [v8 bundleIdentifier];
          if ([v19 isEqualToString:v20])
          {
            v21 = [v18 scenePersistenceIdentifier];
            v22 = [v21 isEqualToString:v25];

            if (v22)
            {
              v24[2](v24, v18);
            }
          }

          else
          {
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    v11 = v23;
  }
}

- (BOOL)_layoutStateContainsSceneForSourceSceneSessionIdentifier:(id)a3 bundleIdentifier:(id)a4 windowScene:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v11 = [v9 switcherController];
    if (([v11 isAnySwitcherVisible] & 1) == 0)
    {
      v12 = [v11 layoutState];
      v13 = [v12 elements];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __109__SBPIPPegasusAdapter__layoutStateContainsSceneForSourceSceneSessionIdentifier_bundleIdentifier_windowScene___block_invoke;
      v16[3] = &unk_2783B2928;
      v17 = v7;
      v19 = &v20;
      v18 = v8;
      [v13 enumerateObjectsUsingBlock:v16];
    }

    v14 = *(v21 + 24);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void __109__SBPIPPegasusAdapter__layoutStateContainsSceneForSourceSceneSessionIdentifier_bundleIdentifier_windowScene___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = [a2 workspaceEntity];
  v10 = [v5 deviceApplicationSceneEntity];

  if (a1[4])
  {
    v6 = [v10 sceneHandle];
    v7 = [v6 persistenceIdentifier];

    if (v7)
    {
      v8 = [v7 isEqualToString:a1[4]];
    }

    else
    {
      v8 = 0;
    }

    *(*(a1[6] + 8) + 24) = v8;
  }

  else
  {
    v7 = [v10 application];
    v9 = [v7 bundleIdentifier];
    *(*(a1[6] + 8) + 24) = [v9 isEqualToString:a1[5]];
  }

  *a3 = *(*(a1[6] + 8) + 24);
}

- (void)pictureInPictureController:(id)a3 willDestroyPictureInPictureViewController:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACC8];
  v6 = a4;
  if (([v5 isMainThread] & 1) == 0)
  {
    v7 = SBLogCommon();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

    if (v8)
    {
      v9 = _SBFLoggingMethodProem();
      NSLog(&cfstr_NeedsToBeInvok.isa, v9);
    }
  }

  v16 = *MEMORY[0x277D67600];
  v17[0] = MEMORY[0x277CBEC28];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v11 = MEMORY[0x277D65DD0];
  v12 = v10;
  v13 = [v11 sharedInstance];
  [v13 emitEvent:24 withPayload:v12];

  WeakRetained = objc_loadWeakRetained(&self->_pipController);
  v15 = [WeakRetained containerViewControllerForContentViewController:v6];

  [WeakRetained removeContainerViewController:v15];
  [(SBPIPPegasusAdapter *)self _updateHideFromClonedDisplaysAssertion];
}

- (void)pictureInPictureController:(id)a3 willHidePictureInPictureViewController:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pipController);
  [WeakRetained prepareContainerViewControllerForHidingContentViewController:v5];
}

- (void)pictureInPictureController:(id)a3 didHidePictureInPictureViewController:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pipController);
  v6 = [v5 _sbWindowScene];

  [WeakRetained updatePictureInPictureWindowLevelForWindowScene:v6];
}

- (BOOL)pictureInPictureController:(id)a3 shouldAuthorizeBackgroundPIPForAppWithBundleIdentifier:(id)a4
{
  v4 = a4;
  v5 = [objc_opt_class() isSupported];
  v6 = +[SBDefaults localDefaults];
  v7 = [v6 pipDefaults];
  v8 = [v7 allowAutoPIP];

  v9 = +[SBLockScreenManager sharedInstance];
  v10 = [v9 isUILocked];

  v11 = 0;
  if (v5 && v8 && (v10 & 1) == 0)
  {
    if ([v4 isEqualToString:@"com.apple.InCallService"])
    {
      v11 = 1;
    }

    else
    {
      v12 = +[SBApplicationController sharedInstanceIfExists];
      v13 = [v12 applicationWithBundleIdentifier:v4];
      v14 = [v13 info];
      if ([v14 supportsBackgroundMode:*MEMORY[0x277D76778]] && (objc_msgSend(v14, "isBlockedForScreenTimeExpiration") & 1) == 0)
      {
        v15 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
        v16 = [v15 externalForegroundApplicationSceneHandles];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __105__SBPIPPegasusAdapter_pictureInPictureController_shouldAuthorizeBackgroundPIPForAppWithBundleIdentifier___block_invoke;
        v19[3] = &unk_2783A9FA0;
        v20 = v13;
        v17 = [v16 bs_containsObjectPassingTest:v19];

        v11 = v17 ^ 1;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  return v11;
}

uint64_t __105__SBPIPPegasusAdapter_pictureInPictureController_shouldAuthorizeBackgroundPIPForAppWithBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 application];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)pictureInPictureControllerCanBackgroundStartForFaceTimeVideoCall:(id)a3
{
  v3 = [objc_opt_class() isSupported];
  v4 = +[SBWorkspace mainWorkspace];
  v5 = [v4 inCallPresentationManager];
  v6 = [v5 hasFullscreenActiveCallInSwitcher];

  v7 = +[SBDefaults localDefaults];
  v8 = [v7 pipDefaults];
  v9 = [v8 allowAutoPIP];

  v10 = +[SBLockScreenManager sharedInstance];
  LOBYTE(v8) = [v10 isUILocked];

  return v3 & v9 & ((v8 | v6) ^ 1);
}

- (id)pictureInPictureController:(id)a3 displayConfigurationForApplication:(id)a4
{
  v4 = a4;
  v5 = +[SBApplicationController sharedInstance];
  v6 = [v4 bundleIdentifier];

  v7 = [v5 applicationWithBundleIdentifier:v6];

  LODWORD(v5) = [v7 isClassic];
  v8 = [MEMORY[0x277D0AA90] mainConfiguration];
  if (v5)
  {
    v9 = [v7 restrictedClassicModeDisplayConfigurationForDisplayConfiguration:v8];

    v8 = v9;
  }

  return v8;
}

- (void)_activateSceneWithPersistenceIdentifier:(id)a3 pictureInPictureViewController:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pipController);
  v12 = +[SBSceneManagerCoordinator sharedInstance];
  v13 = [v12 sceneManagerForPersistenceIdentifier:v8];

  v47 = v13;
  v14 = [v13 existingSceneHandleForPersistenceIdentifier:v8];
  v15 = [v10 _sbWindowScene];

  v16 = [v15 _sbDisplayConfiguration];

  v17 = [v14 sceneIfExists];
  v18 = [v17 settings];
  v19 = [v18 displayIdentity];

  if (v19)
  {
    v20 = [SBApp windowSceneManager];
    v21 = [v20 windowSceneForDisplayIdentity:v19];
  }

  else
  {
    v21 = 0;
  }

  v22 = [v14 scene];
  v23 = [v22 settings];
  v46 = v21;
  if ([v23 isForeground] && v21)
  {
    [v14 application];
    v45 = v14;
    v24 = v19;
    v26 = v25 = v16;
    v27 = [v26 bundleIdentifier];
    v28 = v21;
    v29 = WeakRetained;
    v30 = v9;
    v31 = v27;
    v32 = [(SBPIPPegasusAdapter *)self _layoutStateContainsSceneForSourceSceneSessionIdentifier:v8 bundleIdentifier:v27 windowScene:v28];

    v9 = v30;
    WeakRetained = v29;

    v16 = v25;
    v19 = v24;
    v14 = v45;

    v33 = v47;
    if (v32)
    {
      v9[2](v9, 1);
      goto LABEL_13;
    }
  }

  else
  {

    v33 = v47;
  }

  if (v8 && v16)
  {
    v48 = v16;
    v34 = [v14 application];
    [v16 identity];
    v36 = v35 = v9;
    v37 = [SBDeviceApplicationSceneEntity entityWithApplication:v34 scenePersistenceIdentifier:v8 sceneHandleProvider:v33 displayIdentity:v36];

    v9 = v35;
    [v37 setFlag:1 forActivationSetting:57];
    v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(WeakRetained, "contentType")}];
    [v37 setObject:v38 forActivationSetting:58];

    v39 = +[SBMainWorkspace sharedInstance];
    v40 = [v39 createRequestWithOptions:0 displayConfiguration:v48];

    v41 = [MEMORY[0x277CF0CD0] processHandle];
    [v40 setOriginatingProcess:v41];

    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __105__SBPIPPegasusAdapter__activateSceneWithPersistenceIdentifier_pictureInPictureViewController_completion___block_invoke;
    v49[3] = &unk_2783A98C8;
    v50 = v37;
    v42 = v37;
    [v40 modifyApplicationContext:v49];
    v43 = [v40 addCompletionHandler:v9];
    v44 = +[SBMainWorkspace sharedInstance];
    [v44 executeTransitionRequest:v40];

    v16 = v48;
  }

  else
  {
    v9[2](v9, 0);
  }

LABEL_13:
}

- (void)_updateHasIdleTimerBehaviors
{
  WeakRetained = objc_loadWeakRetained(&self->_pipController);
  [WeakRetained invalidateIdleTimerBehaviors];
}

- (int64_t)_reasonForAssertion:(id)a3
{
  v3 = [a3 behaviorOverrideReason];
  if (v3 == 1)
  {
    return 2;
  }

  else
  {
    return v3 == 2;
  }
}

void __136__SBPIPPegasusAdapter_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Failed to ensure switcher inclusion for scene %{public}@", &v3, 0xCu);
}

void __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_81_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v2;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Failed to restore pip for application %{public}@ scene %{public}@.", &v4, 0x16u);
}

void __159__SBPIPPegasusAdapter__postEnsuredInSwitcher_pictureInPictureController_didRequestStopForPictureInPictureViewController_sourceSceneSessionIdentifier_animated___block_invoke_82_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Failed to stop PIP for %{public}@ cancelling.", &v3, 0xCu);
}

@end