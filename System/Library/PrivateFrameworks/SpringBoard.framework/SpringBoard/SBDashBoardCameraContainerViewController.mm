@interface SBDashBoardCameraContainerViewController
- (BOOL)handleEvent:(id)a3;
- (CGRect)_referenceBoundsForBounds:(CGRect)a3;
- (SBDashBoardCameraContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_traitsArbiter;
- (void)_acquireTraitsParticipantIfNeeded;
- (void)_invalidateTraitsParticipant;
- (void)_setPresenterNeedsZStackPreferencesUpdateWithReason:(id)a3;
- (void)_updateZStackPolicyAssistants;
- (void)addGrabberView:(id)a3;
- (void)aggregateAppearance:(id)a3;
- (void)aggregateBehavior:(id)a3;
- (void)aggregatePresentation:(id)a3;
- (void)dealloc;
- (void)hostableEntityPresenter:(id)a3 didBeginHosting:(id)a4;
- (void)hostableEntityPresenter:(id)a3 didEndHosting:(id)a4;
- (void)invalidate;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
@end

@implementation SBDashBoardCameraContainerViewController

- (SBDashBoardCameraContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v18.receiver = self;
  v18.super_class = SBDashBoardCameraContainerViewController;
  v4 = [(CSCoverSheetViewControllerBase *)&v18 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D02C18]);
    hostedEntityViewController = v4->_hostedEntityViewController;
    v4->_hostedEntityViewController = v5;

    [(CSHostedEntityViewController *)v4->_hostedEntityViewController setEntityPresenterDelegate:v4];
    [(CSHostedEntityViewController *)v4->_hostedEntityViewController setPresenter:v4];
    v7 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBAudioCategoryZStackPolicyAssistant alloc] initWithDelegate:v4];
    audioCategoryZStackPolicyAssistant = v4->_audioCategoryZStackPolicyAssistant;
    v4->_audioCategoryZStackPolicyAssistant = v7;

    v9 = [(SBZStackForegroundSceneOrderedPolicyAssistant *)[SBPhysicalButtonZStackPolicyAssistant alloc] initWithDelegate:v4];
    physicalButtonZStackPolicyAssistant = v4->_physicalButtonZStackPolicyAssistant;
    v4->_physicalButtonZStackPolicyAssistant = v9;

    v11 = [[SBSystemApertureZStackPolicyAssistant alloc] initWithDelegate:v4];
    systemApertureZStackPolicyAssistant = v4->_systemApertureZStackPolicyAssistant;
    v4->_systemApertureZStackPolicyAssistant = v11;

    v13 = [MEMORY[0x277D67C98] sharedInstance];
    biometricResource = v4->_biometricResource;
    v4->_biometricResource = v13;

    v15 = [SBApp authenticationController];
    authenticationAssertionProvider = v4->_authenticationAssertionProvider;
    v4->_authenticationAssertionProvider = v15;
  }

  return v4;
}

- (void)dealloc
{
  [(SBDashBoardCameraContainerViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBDashBoardCameraContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = SBDashBoardCameraContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v24 viewDidLoad];
  v3 = [(SBDashBoardCameraContainerViewController *)self view];
  v4 = [MEMORY[0x277D75348] blackColor];
  [v3 setBackgroundColor:v4];

  v5 = objc_alloc_init(SBTraitsOrientedContentViewController);
  orientedContentViewController = self->_orientedContentViewController;
  self->_orientedContentViewController = v5;

  v7 = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
  v8 = [(CSHostedEntityViewController *)self->_hostedEntityViewController view];
  v9 = self->_orientedContentViewController;
  hostedEntityViewController = self->_hostedEntityViewController;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55__SBDashBoardCameraContainerViewController_viewDidLoad__block_invoke;
  v21[3] = &unk_2783A9460;
  v22 = v8;
  v11 = v3;
  v23 = v11;
  v12 = v8;
  [(SBTraitsOrientedContentViewController *)v9 bs_addChildViewController:hostedEntityViewController animated:0 transitionBlock:v21];
  v13 = self->_orientedContentViewController;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__SBDashBoardCameraContainerViewController_viewDidLoad__block_invoke_2;
  v17[3] = &unk_2783B08F8;
  v18 = v11;
  v19 = v7;
  v20 = self;
  v14 = v7;
  v15 = v11;
  [(SBDashBoardCameraContainerViewController *)self bs_addChildViewController:v13 animated:0 transitionBlock:v17];
  v16 = [v15 layer];
  [v16 setAllowsGroupOpacity:1];
}

void __55__SBDashBoardCameraContainerViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v4 bounds];
  [v3 setFrame:?];
  [*(a1 + 32) setAutoresizingMask:18];
  v5[2]();
}

void __55__SBDashBoardCameraContainerViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v15 = a2;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [*(a1 + 40) setFrame:?];
  v12 = *(a1 + 40);
  [*(a1 + 48) _referenceBoundsForBounds:{v5, v7, v9, v11}];
  [v12 setContentViewBoundsInReferenceSpace:?];
  [*(a1 + 40) setAutoresizingMask:18];
  v13 = *(a1 + 40);
  v14 = [*(*(a1 + 48) + 1136) view];
  [v13 setContentView:v14];

  v15[2]();
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = SBDashBoardCameraContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v10 viewWillAppear:a3];
  [(SBDashBoardCameraContainerViewController *)self _acquireTraitsParticipantIfNeeded];
  [(CSHostedEntityViewController *)self->_hostedEntityViewController setHostableEntityContentMode:2];
  if (!self->_sustainAuthenticationAssertion)
  {
    v4 = SBLogDashBoard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "SBDashBoardCameraContainerViewController - taking sustain auth assertion", v9, 2u);
    }

    authenticationAssertionProvider = self->_authenticationAssertionProvider;
    v6 = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
    v7 = [(SBFAuthenticationAssertionProviding *)authenticationAssertionProvider createKeybagUnlockAssertionWithReason:v6];
    sustainAuthenticationAssertion = self->_sustainAuthenticationAssertion;
    self->_sustainAuthenticationAssertion = v7;

    [(SBFAuthenticationAssertion *)self->_sustainAuthenticationAssertion activate];
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBDashBoardCameraContainerViewController;
  [(SBDashBoardCameraContainerViewController *)&v4 viewIsAppearing:a3];
  [(SBDashBoardCameraContainerViewController *)self _acquireTraitsParticipantIfNeeded];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBDashBoardCameraContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidAppear:a3];
  [(SBDashBoardCameraContainerViewController *)self _updateZStackPolicyAssistants];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SBDashBoardCameraContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v7 viewDidDisappear:a3];
  [(CSHostedEntityViewController *)self->_hostedEntityViewController setHostableEntityContentMode:1];
  if (self->_sustainAuthenticationAssertion)
  {
    v4 = SBLogDashBoard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "SBDashBoardCameraContainerViewController - relinquishing sustain auth assertion", v6, 2u);
    }

    [(SBFAuthenticationAssertion *)self->_sustainAuthenticationAssertion invalidate];
    sustainAuthenticationAssertion = self->_sustainAuthenticationAssertion;
    self->_sustainAuthenticationAssertion = 0;
  }

  [(SBDashBoardCameraContainerViewController *)self _invalidateTraitsParticipant];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v16.receiver = self;
  v16.super_class = SBDashBoardCameraContainerViewController;
  [(SBDashBoardCameraContainerViewController *)&v16 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  orientedContentViewController = self->_orientedContentViewController;
  v8 = objc_opt_class();
  v9 = v6;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v11 traitsParticipant];

  [(SBTraitsOrientedContentViewController *)orientedContentViewController setContainerParticipant:v12];
  if (v9)
  {
    [(SBDashBoardCameraContainerViewController *)self _acquireTraitsParticipantIfNeeded];
  }

  else
  {
    v13 = [(CSHostedEntityViewController *)self->_hostedEntityViewController hostedEntity];
    v14 = [v13 hostingViewController];
    v15 = [v14 _sbWindowScene];

    if (!v15)
    {
      [(CSHostedEntityViewController *)self->_hostedEntityViewController setHostableEntityContentMode:1];
    }
  }
}

- (void)aggregateBehavior:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = SBDashBoardCameraContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v5 aggregateBehavior:v4];
  [v4 unionBehavior:self->_hostedEntityViewController];
  if ([(SBUIBiometricResource *)self->_biometricResource hasPearlSupport])
  {
    [v4 addRestrictedCapabilities:8];
  }
}

- (void)aggregateAppearance:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBDashBoardCameraContainerViewController;
  v4 = a3;
  [(CSCoverSheetViewControllerBase *)&v5 aggregateAppearance:v4];
  [v4 unionAppearance:{self->_hostedEntityViewController, v5.receiver, v5.super_class}];
}

- (void)aggregatePresentation:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBDashBoardCameraContainerViewController;
  v4 = a3;
  [(CSCoverSheetViewControllerBase *)&v5 aggregatePresentation:v4];
  [v4 unionPresentation:{self->_hostedEntityViewController, v5.receiver, v5.super_class}];
}

- (void)invalidate
{
  [(SBFAuthenticationAssertion *)self->_sustainAuthenticationAssertion invalidate];
  sustainAuthenticationAssertion = self->_sustainAuthenticationAssertion;
  self->_sustainAuthenticationAssertion = 0;

  [(SBDashBoardCameraContainerViewController *)self _invalidateTraitsParticipant];
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SBDashBoardCameraContainerViewController;
  if (-[CSCoverSheetViewControllerBase handleEvent:](&v7, sel_handleEvent_, v4) && ([v4 isConsumable] & 1) != 0 || -[CSHostedEntityViewController handleEvent:](self->_hostedEntityViewController, "handleEvent:", v4))
  {
    v5 = [v4 isConsumable];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addGrabberView:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v8 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    [(CSHostedEntityViewController *)self->_hostedEntityViewController setHomeGrabberView:v7];
  }
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v11 = a4;
  if (([(SBDashBoardCameraContainerViewController *)self bs_isDisappearingOrDisappeared]& 1) == 0)
  {
    [v11 setSuppressSystemApertureForSystemChromeSuppression:-[SBSystemApertureZStackPolicyAssistant suppressSystemApertureForSystemChromeSuppression](self->_systemApertureZStackPolicyAssistant)];
    v5 = [(SBCameraHardwareButton *)self->_systemApertureZStackPolicyAssistant allCameraShutterButtonPIDs];
    [v11 setAssociatedBundleIdentifiersToSuppressInSystemAperture:v5];

    v6 = [(SBCameraHardwareButton *)self->_systemApertureZStackPolicyAssistant foregroundCameraShutterButtonPIDs];
    [v11 setAssociatedSceneIdentifiersToSuppressInSystemAperture:v6];

    v7 = [(SBAudioCategoryZStackPolicyAssistant *)self->_audioCategoryZStackPolicyAssistant audioCategoriesDisablingVolumeHUD];
    [v11 setAudioCategoriesDisablingVolumeHUD:v7];

    v8 = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant physicalButtonSceneTargets];
    [v11 setPhysicalButtonSceneTargets:v8];

    v9 = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant captureButtonFullFidelityEventRequestingScenes];
    [v11 setCaptureButtonFullFidelityEventRequestingScenes:v9];

    v10 = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant foregroundCaptureSceneTargets];
    [v11 setForegroundCaptureSceneTargets:v10];
  }
}

- (void)hostableEntityPresenter:(id)a3 didBeginHosting:(id)a4
{
  v9 = a3;
  if ([(SBDashBoardCameraContainerViewController *)self bs_isAppearingOrAppeared])
  {
    [(SBDashBoardCameraContainerViewController *)self _acquireTraitsParticipantIfNeeded];
  }

  v5 = [v9 sceneHandleForTraitsParticipant];
  v6 = [v5 scene];

  if (!v6)
  {
    v6 = [v9 sceneForTraitsParticipant];
  }

  v7 = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
  v8 = [v6 settings];
  [v8 frame];
  [v7 setContentViewBoundsInReferenceSpace:?];

  [(SBDashBoardCameraContainerViewController *)self _updateZStackPolicyAssistants];
  [(SBDashBoardCameraContainerViewController *)self _setPresenterNeedsZStackPreferencesUpdateWithReason:@"Began hosting"];
}

- (void)hostableEntityPresenter:(id)a3 didEndHosting:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(CSHostedEntityViewController *)self->_hostedEntityViewController hostedEntity];

    if (v7 == v6)
    {
      [(SBDashBoardCameraContainerViewController *)self _invalidateTraitsParticipant];
      [(SBDashBoardCameraContainerViewController *)self _updateZStackPolicyAssistants];
    }
  }
}

- (void)_setPresenterNeedsZStackPreferencesUpdateWithReason:(id)a3
{
  v5 = a3;
  v4 = [(CSCoverSheetViewControllerBase *)self _presenter];
  if (objc_opt_respondsToSelector())
  {
    [v4 invalidateZStackParticipantPreferencesWithReason:v5];
  }
}

- (void)_updateZStackPolicyAssistants
{
  v10 = [(CSHostedEntityViewController *)self->_hostedEntityViewController sceneHandleForTraitsParticipant];
  if (v10)
  {
    v3 = objc_opt_class();
    v4 = v10;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v8 = v5;

    if (v8)
    {
      v9 = [(CSHostedEntityViewController *)self->_hostedEntityViewController homeGrabberView];
      [(SBSystemApertureZStackPolicyAssistant *)self->_systemApertureZStackPolicyAssistant setForegroundExclusiveSceneHandle:v8 homeGrabberView:v9];
    }

    v6 = v4;
  }

  else
  {
    v6 = [(CSHostedEntityViewController *)self->_hostedEntityViewController sceneForTraitsParticipant];
    if (!v6)
    {
      v7 = 0;
      goto LABEL_13;
    }
  }

  v7 = [MEMORY[0x277CBEA60] arrayWithObject:v6];
LABEL_13:
  [(SBZStackForegroundSceneOrderedPolicyAssistant *)self->_audioCategoryZStackPolicyAssistant setForegroundScenes:v7];
  [(SBZStackForegroundSceneOrderedPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant setForegroundScenes:v7];
}

- (void)_acquireTraitsParticipantIfNeeded
{
  if (!self->_traitsParticipant)
  {
    v3 = [(SBDashBoardCameraContainerViewController *)self view];
    v4 = [v3 window];

    if (v4)
    {
      v5 = [(SBDashBoardCameraContainerViewController *)self _traitsArbiter];
      v6 = [(CSHostedEntityViewController *)self->_hostedEntityViewController sceneHandleForTraitsParticipant];
      if (v6)
      {
        v7 = [[SBTraitsSceneParticipantDelegate alloc] initWithSceneHandle:v6];
        traitsParticipantDelegate = self->_traitsParticipantDelegate;
        self->_traitsParticipantDelegate = v7;
      }

      else
      {
        v9 = [(CSHostedEntityViewController *)self->_hostedEntityViewController sceneForTraitsParticipant];
        if (v9)
        {
          v10 = [[SBTraitsSceneParticipantDelegate alloc] initWithScene:v9];
          v11 = self->_traitsParticipantDelegate;
          self->_traitsParticipantDelegate = v10;
        }
      }

      if (self->_traitsParticipantDelegate)
      {
        v12 = [v5 acquireParticipantWithRole:@"SBTraitsParticipantRoleCoverSheetCamera" delegate:?];
        traitsParticipant = self->_traitsParticipant;
        self->_traitsParticipant = v12;

        [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate setArbiter:v5];
        [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate setParticipant:self->_traitsParticipant];
        v14 = self->_traitsParticipantDelegate;
        v15 = MEMORY[0x277CCABB0];
        [v4 windowLevel];
        v16 = [v15 numberWithDouble:?];
        [(SBTraitsSceneParticipantDelegate *)v14 setPreferredSceneLevel:v16];

        [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController setContentParticipant:self->_traitsParticipant];
        orientedContentViewController = self->_orientedContentViewController;
        v18 = objc_opt_class();
        v19 = v4;
        if (v18)
        {
          if (objc_opt_isKindOfClass())
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        v22 = [v21 traitsParticipant];

        [(SBTraitsOrientedContentViewController *)orientedContentViewController setContainerParticipant:v22];
        v23 = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
        [v23 setContentOrientation:{objc_msgSend(v23, "containerOrientation")}];
        objc_initWeak(&location, self);
        v24 = self->_traitsParticipantDelegate;
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __77__SBDashBoardCameraContainerViewController__acquireTraitsParticipantIfNeeded__block_invoke;
        v28[3] = &unk_2783AD848;
        objc_copyWeak(&v29, &location);
        [(SBTraitsSceneParticipantDelegate *)v24 setActuateOrientationAlongsideBlock:v28];
        v25 = self->_orientedContentViewController;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __77__SBDashBoardCameraContainerViewController__acquireTraitsParticipantIfNeeded__block_invoke_2;
        v26[3] = &unk_2783AD870;
        objc_copyWeak(&v27, &location);
        [(SBTraitsOrientedContentViewController *)v25 setActuateAlongsideBlock:v26];
        objc_destroyWeak(&v27);
        objc_destroyWeak(&v29);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __77__SBDashBoardCameraContainerViewController__acquireTraitsParticipantIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[133] updateOrientationIfNeeded];
    WeakRetained = v2;
  }
}

void __77__SBDashBoardCameraContainerViewController__acquireTraitsParticipantIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [WeakRetained[142] setHostedAppReferenceSize:a2 withInterfaceOrientation:{a3, a4}];
    WeakRetained = v8;
  }
}

- (void)_invalidateTraitsParticipant
{
  [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController setActuateAlongsideBlock:0];
  [(TRAParticipant *)self->_traitsParticipant invalidate];
  [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate invalidate];
  traitsParticipantDelegate = self->_traitsParticipantDelegate;
  self->_traitsParticipantDelegate = 0;

  traitsParticipant = self->_traitsParticipant;
  self->_traitsParticipant = 0;
}

- (id)_traitsArbiter
{
  v4 = [(SBDashBoardCameraContainerViewController *)self view];
  v5 = [v4 window];

  if (v5)
  {
    v6 = [v5 _sbWindowScene];
    v7 = [v6 traitsArbiter];
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"SBDashBoardCameraContainerViewController.m" lineNumber:404 description:@"Unexpected nil window"];
    v7 = 0;
  }

  return v7;
}

- (CGRect)_referenceBoundsForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = CGRectGetHeight(a3);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v8 = CGRectGetWidth(v13);
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v7 >= v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v11 = x;
  v12 = y;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end