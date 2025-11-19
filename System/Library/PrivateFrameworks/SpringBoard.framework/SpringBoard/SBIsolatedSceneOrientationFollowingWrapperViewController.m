@interface SBIsolatedSceneOrientationFollowingWrapperViewController
- (BOOL)_isSceneStatusBarHidden;
- (CGRect)_boundsForOverlayRootView;
- (SBDeviceApplicationSceneOverlayView)overlayView;
- (SBIsolatedSceneOrientationFollowingWrapperOrientationDelegate)orientationDelegate;
- (SBIsolatedSceneOrientationFollowingWrapperViewController)initWithContentViewController:(id)a3 sceneHandle:(id)a4 windowScene:(id)a5 orientationDelegate:(id)a6 rendersWhileLocked:(BOOL)a7;
- (id)participantAssociatedWindows:(id)a3;
- (int64_t)_hostOrientation;
- (void)_containerViewWillRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 withAnimationSettings:(id)a5;
- (void)_updateOrientationResolutionPolicyWithContainerTraitsParticipant:(id)a3;
- (void)appendDescriptionForParticipant:(id)a3 withBuilder:(id)a4 multilinePrefix:(id)a5;
- (void)containerDidUpdateTraitsParticipant:(id)a3;
- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4;
- (void)loadView;
- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SBIsolatedSceneOrientationFollowingWrapperViewController

- (SBIsolatedSceneOrientationFollowingWrapperViewController)initWithContentViewController:(id)a3 sceneHandle:(id)a4 windowScene:(id)a5 orientationDelegate:(id)a6 rendersWhileLocked:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = SBIsolatedSceneOrientationFollowingWrapperViewController;
  v17 = [(SBIsolatedSceneOrientationFollowingWrapperViewController *)&v20 initWithNibName:0 bundle:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sceneHandle, a4);
    objc_storeStrong(&v18->_contentViewController, a3);
    objc_storeWeak(&v18->_orientationDelegate, v16);
    v18->_rendersWhileLocked = a7;
    objc_storeWeak(&v18->_windowScene, v15);
  }

  return v18;
}

- (void)containerDidUpdateTraitsParticipant:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_followedParticipant, a3);
    self->_initialOrientationHasBeenApplied = 0;
    [(SBIsolatedSceneOrientationFollowingWrapperViewController *)self _updateOrientationResolutionPolicyWithContainerTraitsParticipant:v5];
  }
}

- (void)_updateOrientationResolutionPolicyWithContainerTraitsParticipant:(id)a3
{
  v4 = a3;
  v5 = [(SBApplicationSceneHandle *)self->_sceneHandle application];
  v6 = [v5 classicAppPhoneAppRunningOnPad];

  if (v6)
  {
    v7 = [MEMORY[0x277D734D0] resolutionPolicyInfoDeviceOrientation];
  }

  else
  {
    v8 = MEMORY[0x277D734D0];
    if (v4)
    {
      v9 = [v4 uniqueIdentifier];
      v10 = [v8 resolutionPolicyInfoForAssociatedParticipantWithUniqueID:v9];
      traitsOrientationResolutionPolicy = self->_traitsOrientationResolutionPolicy;
      self->_traitsOrientationResolutionPolicy = v10;

      goto LABEL_7;
    }

    v7 = [MEMORY[0x277D734D0] resolutionPolicyInfoOrientationBelow];
  }

  v9 = self->_traitsOrientationResolutionPolicy;
  self->_traitsOrientationResolutionPolicy = v7;
LABEL_7:

  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v13 = WeakRetained;
  if (self->_traitsResolutionPolicySpecifier)
  {
    v14 = [WeakRetained traitsArbiter];
    v15 = objc_alloc(MEMORY[0x277D73498]);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __125__SBIsolatedSceneOrientationFollowingWrapperViewController__updateOrientationResolutionPolicyWithContainerTraitsParticipant___block_invoke_2;
    v20[3] = &unk_2783B5D38;
    v20[4] = self;
    v16 = [v15 initWithBuilder:v20];
    [v14 setNeedsUpdateArbitrationWithContext:v16];
  }

  else
  {
    objc_initWeak(&location, self);
    v17 = [v13 traitsPipelineManager];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __125__SBIsolatedSceneOrientationFollowingWrapperViewController__updateOrientationResolutionPolicyWithContainerTraitsParticipant___block_invoke;
    v21[3] = &unk_2783B0DE8;
    objc_copyWeak(&v22, &location);
    v18 = [v17 newBlockBasedOrientationPolicySpecifier:v21 forRole:@"SBTraitsParticipantRoleDeviceApplicationSceneViewOverlay"];
    traitsResolutionPolicySpecifier = self->_traitsResolutionPolicySpecifier;
    self->_traitsResolutionPolicySpecifier = v18;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

void __125__SBIsolatedSceneOrientationFollowingWrapperViewController__updateOrientationResolutionPolicyWithContainerTraitsParticipant___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && [v5 containsObject:WeakRetained[131]])
  {
    [v4[131] setOrientationResolutionPolicyInfo:v4[134]];
  }
}

void __125__SBIsolatedSceneOrientationFollowingWrapperViewController__updateOrientationResolutionPolicyWithContainerTraitsParticipant___block_invoke_2(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setReason:@"Isolated scene overlay window updating policy"];
  v4 = [*(*(a1 + 32) + 1048) uniqueIdentifier];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v3 setRequestingParticipantsUniqueIdentifiers:v5];

  [v3 setForceOrientationResolution:1];
}

- (void)loadView
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBIsolatedSceneOrientationFollowingWrapperViewController.m" lineNumber:157 description:@"Isolated window scene was not nil"];
}

void __68__SBIsolatedSceneOrientationFollowingWrapperViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPresentedLayerTypes:26];
  [v2 setAppearanceStyle:2];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v12.receiver = self;
  v12.super_class = SBIsolatedSceneOrientationFollowingWrapperViewController;
  [(SBIsolatedSceneOrientationFollowingWrapperViewController *)&v12 viewWillAppear:?];
  v5 = [(SBWindow *)self->_appOverlayWindow rootViewController];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 view];
  v11 = [(UIViewController *)self->_contentViewController view];
  [(UIViewController *)self->_contentViewController beginAppearanceTransition:1 animated:v3];
  [v9 addChildViewController:self->_contentViewController];
  [v10 bounds];
  [v11 setFrame:?];
  [v9 setOverlayContentView:v11];
  [(UIViewController *)self->_contentViewController didMoveToParentViewController:v9];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBIsolatedSceneOrientationFollowingWrapperViewController;
  [(SBIsolatedSceneOrientationFollowingWrapperViewController *)&v4 viewDidAppear:a3];
  [(UIViewController *)self->_contentViewController endAppearanceTransition];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = SBIsolatedSceneOrientationFollowingWrapperViewController;
  [(SBIsolatedSceneOrientationFollowingWrapperViewController *)&v9 viewWillDisappear:?];
  v5 = [(UIViewController *)self->_contentViewController parentViewController];
  v6 = [(SBWindow *)self->_appOverlayWindow rootViewController];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    self->_contentViewControllerBeingRemoved = 1;
    [(UIViewController *)self->_contentViewController beginAppearanceTransition:0 animated:v3];
    [(UIViewController *)self->_contentViewController willMoveToParentViewController:0];
    v8 = [(UIViewController *)self->_contentViewController view];
    [v8 removeFromSuperview];

    [(UIViewController *)self->_contentViewController removeFromParentViewController];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v19.receiver = self;
  v19.super_class = SBIsolatedSceneOrientationFollowingWrapperViewController;
  [(SBIsolatedSceneOrientationFollowingWrapperViewController *)&v19 viewDidDisappear:a3];
  WeakRetained = objc_loadWeakRetained(&self->_isolatedWindowScene);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained associatedWindowScene];
    v7 = [v6 accessorySceneProvider];
    [v7 destroyAccessoryWindowScene:v5];

    objc_storeWeak(&self->_isolatedWindowScene, 0);
    [(UIScenePresenter *)self->_scenePresenter invalidate];
    scenePresenter = self->_scenePresenter;
    self->_scenePresenter = 0;

    [(UIView *)self->_hostedOverlayView removeFromSuperview];
    hostedOverlayView = self->_hostedOverlayView;
    self->_hostedOverlayView = 0;

    [(SBWindow *)self->_appOverlayWindow setHidden:1];
    if (self->_contentViewControllerBeingRemoved)
    {
      [(UIViewController *)self->_contentViewController endAppearanceTransition];
      v10 = [(SBWindow *)self->_appOverlayWindow rootViewController];
      v11 = objc_opt_class();
      v12 = v10;
      if (v11)
      {
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      [v14 setOverlayContentView:0];
    }

    appOverlayWindow = self->_appOverlayWindow;
    self->_appOverlayWindow = 0;

    [(BSInvalidatable *)self->_traitsResolutionPolicySpecifier invalidate];
    traitsResolutionPolicySpecifier = self->_traitsResolutionPolicySpecifier;
    self->_traitsResolutionPolicySpecifier = 0;

    [(TRAParticipant *)self->_traitsParticipant invalidate];
    traitsParticipant = self->_traitsParticipant;
    self->_traitsParticipant = 0;

    traitsOrientationResolutionPolicy = self->_traitsOrientationResolutionPolicy;
    self->_traitsOrientationResolutionPolicy = 0;

    [(SBIsolatedSceneOrientationFollowingWrapperViewController *)self setView:0];
  }
}

- (void)viewWillLayoutSubviews
{
  v2 = [(SBWindow *)self->_appOverlayWindow rootViewController];
  v3 = [v2 view];

  [v3 setNeedsLayout];
  [v3 layoutIfNeeded];
}

- (SBDeviceApplicationSceneOverlayView)overlayView
{
  [(SBIsolatedSceneOrientationFollowingWrapperViewController *)self loadViewIfNeeded];
  containerView = self->_containerView;

  return containerView;
}

- (void)updatePreferencesForParticipant:(id)a3 updater:(id)a4
{
  v5 = a4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __100__SBIsolatedSceneOrientationFollowingWrapperViewController_updatePreferencesForParticipant_updater___block_invoke;
  v6[3] = &unk_2783B0DC0;
  v6[4] = self;
  [v5 updateOrientationPreferencesWithBlock:v6];
  if ([(TRAOrientationResolutionPolicyInfo *)self->_traitsOrientationResolutionPolicy resolutionPolicy]== 2)
  {
    [v5 updateZOrderLevelPreferencesWithBlock:&__block_literal_global_41_0];
  }
}

void __100__SBIsolatedSceneOrientationFollowingWrapperViewController_updatePreferencesForParticipant_updater___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((v2 + 1112));
  if ([WeakRetained shouldFollowSceneOrientation])
  {
    v4 = 30;
  }

  else
  {
    v4 = [WeakRetained supportedInterfaceOrientations];
  }

  [v3 setSupportedOrientations:v4];
  [v3 setPreferredOrientation:{objc_msgSend(WeakRetained, "preferredInterfaceOrientationForPresentation")}];
}

- (void)didChangeSettingsForParticipant:(id)a3 context:(id)a4
{
  if (!self->_initialOrientationHasBeenApplied)
  {
    -[SBWindow _legacySetRotatableViewOrientation:duration:force:](self->_appOverlayWindow, "_legacySetRotatableViewOrientation:duration:force:", [a3 sbf_currentOrientation], 1, 0.0);
    self->_initialOrientationHasBeenApplied = 1;
  }
}

- (void)appendDescriptionForParticipant:(id)a3 withBuilder:(id)a4 multilinePrefix:(id)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __120__SBIsolatedSceneOrientationFollowingWrapperViewController_appendDescriptionForParticipant_withBuilder_multilinePrefix___block_invoke;
  v12[3] = &unk_2783A8ED8;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [v10 appendBodySectionWithName:@"Associated Windows" multilinePrefix:a5 block:v12];
}

void __120__SBIsolatedSceneOrientationFollowingWrapperViewController_appendDescriptionForParticipant_withBuilder_multilinePrefix___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) participantAssociatedWindows:*(a1 + 40)];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v20 = 0u;
  v1 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v1)
  {
    v2 = v1;
    v15 = *v18;
    do
    {
      v3 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v17 + 1) + 8 * v3);
        v5 = *(a1 + 48);
        v6 = MEMORY[0x277CCACA8];
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = [v4 _debugName];
        if ([v4 isHidden])
        {
          v10 = @"NO";
        }

        else
        {
          v10 = @"YES";
        }

        [v4 interfaceOrientation];
        v11 = BSInterfaceOrientationDescription();
        v12 = [v4 rootViewController];
        v13 = [v6 stringWithFormat:@"<%@: %p %@>; Visible:%@; Orientation:%@; Root VC: %@", v8, v4, v9, v10, v11, v12];;
        [v5 appendString:v13 withName:0];

        ++v3;
      }

      while (v2 != v3);
      v2 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v2);
  }
}

- (id)participantAssociatedWindows:(id)a3
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (self->_appOverlayWindow)
  {
    v5[0] = self->_appOverlayWindow;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_containerViewWillRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 withAnimationSettings:(id)a5
{
  v8 = a5;
  if ([(TRAParticipant *)self->_traitsParticipant sbf_currentOrientation]== a4)
  {
    [v8 duration];
    [SBAnimationUtilities adjustedRotationAnimationDurationForDuration:[(TRAParticipant *)self->_traitsParticipant sbf_previousOrientation] fromOrientation:a4 toOrientation:v7];
    [(SBWindow *)self->_appOverlayWindow _legacySetRotatableViewOrientation:a4 duration:0 force:?];
  }
}

- (int64_t)_hostOrientation
{
  v3 = [(SBApplicationSceneHandle *)self->_sceneHandle application];
  v4 = [v3 classicAppPhoneAppRunningOnPad];

  if (v4)
  {
    v5 = SBApp;

    return [v5 interfaceOrientationForCurrentDeviceOrientation:0];
  }

  else
  {
    followedParticipant = self->_followedParticipant;

    return [(TRAParticipant *)followedParticipant sbf_currentOrientation];
  }
}

- (BOOL)_isSceneStatusBarHidden
{
  v2 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle statusBarStateProvider];
  v3 = [v2 statusBarHidden];

  return v3;
}

- (CGRect)_boundsForOverlayRootView
{
  [(SBIsolatedSceneOrientationFollowingView *)self->_containerView bounds];
  v4 = v3;
  v6 = v5;
  v7 = MEMORY[0x277CBF348];
  v8 = [(SBIsolatedSceneOrientationFollowingWrapperViewController *)self _hostOrientation];
  WeakRetained = objc_loadWeakRetained(&self->_orientationDelegate);
  v10 = 1;
  if (([WeakRetained shouldFollowSceneOrientation] & 1) == 0)
  {
    v10 = ((1 << v8) & ~[WeakRetained supportedInterfaceOrientations]) == 0;
  }

  v11 = *v7;
  v12 = v7[1];
  if ((v8 - 3) < 2 == ([(TRAParticipant *)self->_traitsParticipant sbf_currentOrientation]- 5) < 0xFFFFFFFFFFFFFFFELL && !v10)
  {
    BSSizeSwap();
    v4 = v13;
    v6 = v14;
  }

  v15 = v11;
  v16 = v12;
  v17 = v4;
  v18 = v6;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (SBIsolatedSceneOrientationFollowingWrapperOrientationDelegate)orientationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_orientationDelegate);

  return WeakRetained;
}

@end