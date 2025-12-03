@interface SBDashBoardCameraContainerViewController
- (BOOL)handleEvent:(id)event;
- (CGRect)_referenceBoundsForBounds:(CGRect)bounds;
- (SBDashBoardCameraContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_traitsArbiter;
- (void)_acquireTraitsParticipantIfNeeded;
- (void)_invalidateTraitsParticipant;
- (void)_setPresenterNeedsZStackPreferencesUpdateWithReason:(id)reason;
- (void)_updateZStackPolicyAssistants;
- (void)addGrabberView:(id)view;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)aggregatePresentation:(id)presentation;
- (void)dealloc;
- (void)hostableEntityPresenter:(id)presenter didBeginHosting:(id)hosting;
- (void)hostableEntityPresenter:(id)presenter didEndHosting:(id)hosting;
- (void)invalidate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
@end

@implementation SBDashBoardCameraContainerViewController

- (SBDashBoardCameraContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v18.receiver = self;
  v18.super_class = SBDashBoardCameraContainerViewController;
  v4 = [(CSCoverSheetViewControllerBase *)&v18 initWithNibName:name bundle:bundle];
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

    mEMORY[0x277D67C98] = [MEMORY[0x277D67C98] sharedInstance];
    biometricResource = v4->_biometricResource;
    v4->_biometricResource = mEMORY[0x277D67C98];

    authenticationController = [SBApp authenticationController];
    authenticationAssertionProvider = v4->_authenticationAssertionProvider;
    v4->_authenticationAssertionProvider = authenticationController;
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
  view = [(SBDashBoardCameraContainerViewController *)self view];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [view setBackgroundColor:blackColor];

  v5 = objc_alloc_init(SBTraitsOrientedContentViewController);
  orientedContentViewController = self->_orientedContentViewController;
  self->_orientedContentViewController = v5;

  view2 = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
  view3 = [(CSHostedEntityViewController *)self->_hostedEntityViewController view];
  v9 = self->_orientedContentViewController;
  hostedEntityViewController = self->_hostedEntityViewController;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55__SBDashBoardCameraContainerViewController_viewDidLoad__block_invoke;
  v21[3] = &unk_2783A9460;
  v22 = view3;
  v11 = view;
  v23 = v11;
  v12 = view3;
  [(SBTraitsOrientedContentViewController *)v9 bs_addChildViewController:hostedEntityViewController animated:0 transitionBlock:v21];
  v13 = self->_orientedContentViewController;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__SBDashBoardCameraContainerViewController_viewDidLoad__block_invoke_2;
  v17[3] = &unk_2783B08F8;
  v18 = v11;
  v19 = view2;
  selfCopy = self;
  v14 = view2;
  v15 = v11;
  [(SBDashBoardCameraContainerViewController *)self bs_addChildViewController:v13 animated:0 transitionBlock:v17];
  layer = [v15 layer];
  [layer setAllowsGroupOpacity:1];
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

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = SBDashBoardCameraContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v10 viewWillAppear:appear];
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
    appearanceIdentifier = [(CSCoverSheetViewControllerBase *)self appearanceIdentifier];
    v7 = [(SBFAuthenticationAssertionProviding *)authenticationAssertionProvider createKeybagUnlockAssertionWithReason:appearanceIdentifier];
    sustainAuthenticationAssertion = self->_sustainAuthenticationAssertion;
    self->_sustainAuthenticationAssertion = v7;

    [(SBFAuthenticationAssertion *)self->_sustainAuthenticationAssertion activate];
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = SBDashBoardCameraContainerViewController;
  [(SBDashBoardCameraContainerViewController *)&v4 viewIsAppearing:appearing];
  [(SBDashBoardCameraContainerViewController *)self _acquireTraitsParticipantIfNeeded];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBDashBoardCameraContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidAppear:appear];
  [(SBDashBoardCameraContainerViewController *)self _updateZStackPolicyAssistants];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = SBDashBoardCameraContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v7 viewDidDisappear:disappear];
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

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  windowCopy = window;
  v16.receiver = self;
  v16.super_class = SBDashBoardCameraContainerViewController;
  [(SBDashBoardCameraContainerViewController *)&v16 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  orientedContentViewController = self->_orientedContentViewController;
  v8 = objc_opt_class();
  v9 = windowCopy;
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

  traitsParticipant = [v11 traitsParticipant];

  [(SBTraitsOrientedContentViewController *)orientedContentViewController setContainerParticipant:traitsParticipant];
  if (v9)
  {
    [(SBDashBoardCameraContainerViewController *)self _acquireTraitsParticipantIfNeeded];
  }

  else
  {
    hostedEntity = [(CSHostedEntityViewController *)self->_hostedEntityViewController hostedEntity];
    hostingViewController = [hostedEntity hostingViewController];
    _sbWindowScene = [hostingViewController _sbWindowScene];

    if (!_sbWindowScene)
    {
      [(CSHostedEntityViewController *)self->_hostedEntityViewController setHostableEntityContentMode:1];
    }
  }
}

- (void)aggregateBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v5.receiver = self;
  v5.super_class = SBDashBoardCameraContainerViewController;
  [(CSCoverSheetViewControllerBase *)&v5 aggregateBehavior:behaviorCopy];
  [behaviorCopy unionBehavior:self->_hostedEntityViewController];
  if ([(SBUIBiometricResource *)self->_biometricResource hasPearlSupport])
  {
    [behaviorCopy addRestrictedCapabilities:8];
  }
}

- (void)aggregateAppearance:(id)appearance
{
  v5.receiver = self;
  v5.super_class = SBDashBoardCameraContainerViewController;
  appearanceCopy = appearance;
  [(CSCoverSheetViewControllerBase *)&v5 aggregateAppearance:appearanceCopy];
  [appearanceCopy unionAppearance:{self->_hostedEntityViewController, v5.receiver, v5.super_class}];
}

- (void)aggregatePresentation:(id)presentation
{
  v5.receiver = self;
  v5.super_class = SBDashBoardCameraContainerViewController;
  presentationCopy = presentation;
  [(CSCoverSheetViewControllerBase *)&v5 aggregatePresentation:presentationCopy];
  [presentationCopy unionPresentation:{self->_hostedEntityViewController, v5.receiver, v5.super_class}];
}

- (void)invalidate
{
  [(SBFAuthenticationAssertion *)self->_sustainAuthenticationAssertion invalidate];
  sustainAuthenticationAssertion = self->_sustainAuthenticationAssertion;
  self->_sustainAuthenticationAssertion = 0;

  [(SBDashBoardCameraContainerViewController *)self _invalidateTraitsParticipant];
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v7.receiver = self;
  v7.super_class = SBDashBoardCameraContainerViewController;
  if (-[CSCoverSheetViewControllerBase handleEvent:](&v7, sel_handleEvent_, eventCopy) && ([eventCopy isConsumable] & 1) != 0 || -[CSHostedEntityViewController handleEvent:](self->_hostedEntityViewController, "handleEvent:", eventCopy))
  {
    isConsumable = [eventCopy isConsumable];
  }

  else
  {
    isConsumable = 0;
  }

  return isConsumable;
}

- (void)addGrabberView:(id)view
{
  viewCopy = view;
  v5 = objc_opt_class();
  v8 = viewCopy;
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

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (([(SBDashBoardCameraContainerViewController *)self bs_isDisappearingOrDisappeared]& 1) == 0)
  {
    [preferencesCopy setSuppressSystemApertureForSystemChromeSuppression:-[SBSystemApertureZStackPolicyAssistant suppressSystemApertureForSystemChromeSuppression](self->_systemApertureZStackPolicyAssistant)];
    allCameraShutterButtonPIDs = [(SBCameraHardwareButton *)self->_systemApertureZStackPolicyAssistant allCameraShutterButtonPIDs];
    [preferencesCopy setAssociatedBundleIdentifiersToSuppressInSystemAperture:allCameraShutterButtonPIDs];

    foregroundCameraShutterButtonPIDs = [(SBCameraHardwareButton *)self->_systemApertureZStackPolicyAssistant foregroundCameraShutterButtonPIDs];
    [preferencesCopy setAssociatedSceneIdentifiersToSuppressInSystemAperture:foregroundCameraShutterButtonPIDs];

    audioCategoriesDisablingVolumeHUD = [(SBAudioCategoryZStackPolicyAssistant *)self->_audioCategoryZStackPolicyAssistant audioCategoriesDisablingVolumeHUD];
    [preferencesCopy setAudioCategoriesDisablingVolumeHUD:audioCategoriesDisablingVolumeHUD];

    physicalButtonSceneTargets = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant physicalButtonSceneTargets];
    [preferencesCopy setPhysicalButtonSceneTargets:physicalButtonSceneTargets];

    captureButtonFullFidelityEventRequestingScenes = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant captureButtonFullFidelityEventRequestingScenes];
    [preferencesCopy setCaptureButtonFullFidelityEventRequestingScenes:captureButtonFullFidelityEventRequestingScenes];

    foregroundCaptureSceneTargets = [(SBPhysicalButtonZStackPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant foregroundCaptureSceneTargets];
    [preferencesCopy setForegroundCaptureSceneTargets:foregroundCaptureSceneTargets];
  }
}

- (void)hostableEntityPresenter:(id)presenter didBeginHosting:(id)hosting
{
  presenterCopy = presenter;
  if ([(SBDashBoardCameraContainerViewController *)self bs_isAppearingOrAppeared])
  {
    [(SBDashBoardCameraContainerViewController *)self _acquireTraitsParticipantIfNeeded];
  }

  sceneHandleForTraitsParticipant = [presenterCopy sceneHandleForTraitsParticipant];
  scene = [sceneHandleForTraitsParticipant scene];

  if (!scene)
  {
    scene = [presenterCopy sceneForTraitsParticipant];
  }

  view = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
  settings = [scene settings];
  [settings frame];
  [view setContentViewBoundsInReferenceSpace:?];

  [(SBDashBoardCameraContainerViewController *)self _updateZStackPolicyAssistants];
  [(SBDashBoardCameraContainerViewController *)self _setPresenterNeedsZStackPreferencesUpdateWithReason:@"Began hosting"];
}

- (void)hostableEntityPresenter:(id)presenter didEndHosting:(id)hosting
{
  presenterCopy = presenter;
  hostingCopy = hosting;
  if (hostingCopy)
  {
    hostedEntity = [(CSHostedEntityViewController *)self->_hostedEntityViewController hostedEntity];

    if (hostedEntity == hostingCopy)
    {
      [(SBDashBoardCameraContainerViewController *)self _invalidateTraitsParticipant];
      [(SBDashBoardCameraContainerViewController *)self _updateZStackPolicyAssistants];
    }
  }
}

- (void)_setPresenterNeedsZStackPreferencesUpdateWithReason:(id)reason
{
  reasonCopy = reason;
  _presenter = [(CSCoverSheetViewControllerBase *)self _presenter];
  if (objc_opt_respondsToSelector())
  {
    [_presenter invalidateZStackParticipantPreferencesWithReason:reasonCopy];
  }
}

- (void)_updateZStackPolicyAssistants
{
  sceneHandleForTraitsParticipant = [(CSHostedEntityViewController *)self->_hostedEntityViewController sceneHandleForTraitsParticipant];
  if (sceneHandleForTraitsParticipant)
  {
    v3 = objc_opt_class();
    v4 = sceneHandleForTraitsParticipant;
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
      homeGrabberView = [(CSHostedEntityViewController *)self->_hostedEntityViewController homeGrabberView];
      [(SBSystemApertureZStackPolicyAssistant *)self->_systemApertureZStackPolicyAssistant setForegroundExclusiveSceneHandle:v8 homeGrabberView:homeGrabberView];
    }

    sceneForTraitsParticipant = v4;
  }

  else
  {
    sceneForTraitsParticipant = [(CSHostedEntityViewController *)self->_hostedEntityViewController sceneForTraitsParticipant];
    if (!sceneForTraitsParticipant)
    {
      v7 = 0;
      goto LABEL_13;
    }
  }

  v7 = [MEMORY[0x277CBEA60] arrayWithObject:sceneForTraitsParticipant];
LABEL_13:
  [(SBZStackForegroundSceneOrderedPolicyAssistant *)self->_audioCategoryZStackPolicyAssistant setForegroundScenes:v7];
  [(SBZStackForegroundSceneOrderedPolicyAssistant *)self->_physicalButtonZStackPolicyAssistant setForegroundScenes:v7];
}

- (void)_acquireTraitsParticipantIfNeeded
{
  if (!self->_traitsParticipant)
  {
    view = [(SBDashBoardCameraContainerViewController *)self view];
    window = [view window];

    if (window)
    {
      _traitsArbiter = [(SBDashBoardCameraContainerViewController *)self _traitsArbiter];
      sceneHandleForTraitsParticipant = [(CSHostedEntityViewController *)self->_hostedEntityViewController sceneHandleForTraitsParticipant];
      if (sceneHandleForTraitsParticipant)
      {
        v7 = [[SBTraitsSceneParticipantDelegate alloc] initWithSceneHandle:sceneHandleForTraitsParticipant];
        traitsParticipantDelegate = self->_traitsParticipantDelegate;
        self->_traitsParticipantDelegate = v7;
      }

      else
      {
        sceneForTraitsParticipant = [(CSHostedEntityViewController *)self->_hostedEntityViewController sceneForTraitsParticipant];
        if (sceneForTraitsParticipant)
        {
          v10 = [[SBTraitsSceneParticipantDelegate alloc] initWithScene:sceneForTraitsParticipant];
          v11 = self->_traitsParticipantDelegate;
          self->_traitsParticipantDelegate = v10;
        }
      }

      if (self->_traitsParticipantDelegate)
      {
        v12 = [_traitsArbiter acquireParticipantWithRole:@"SBTraitsParticipantRoleCoverSheetCamera" delegate:?];
        traitsParticipant = self->_traitsParticipant;
        self->_traitsParticipant = v12;

        [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate setArbiter:_traitsArbiter];
        [(SBTraitsSceneParticipantDelegate *)self->_traitsParticipantDelegate setParticipant:self->_traitsParticipant];
        v14 = self->_traitsParticipantDelegate;
        v15 = MEMORY[0x277CCABB0];
        [window windowLevel];
        v16 = [v15 numberWithDouble:?];
        [(SBTraitsSceneParticipantDelegate *)v14 setPreferredSceneLevel:v16];

        [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController setContentParticipant:self->_traitsParticipant];
        orientedContentViewController = self->_orientedContentViewController;
        v18 = objc_opt_class();
        v19 = window;
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

        traitsParticipant = [v21 traitsParticipant];

        [(SBTraitsOrientedContentViewController *)orientedContentViewController setContainerParticipant:traitsParticipant];
        view2 = [(SBTraitsOrientedContentViewController *)self->_orientedContentViewController view];
        [view2 setContentOrientation:{objc_msgSend(view2, "containerOrientation")}];
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
  view = [(SBDashBoardCameraContainerViewController *)self view];
  window = [view window];

  if (window)
  {
    _sbWindowScene = [window _sbWindowScene];
    traitsArbiter = [_sbWindowScene traitsArbiter];
  }

  else
  {
    _sbWindowScene = [MEMORY[0x277CCA890] currentHandler];
    [_sbWindowScene handleFailureInMethod:a2 object:self file:@"SBDashBoardCameraContainerViewController.m" lineNumber:404 description:@"Unexpected nil window"];
    traitsArbiter = 0;
  }

  return traitsArbiter;
}

- (CGRect)_referenceBoundsForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v7 = CGRectGetHeight(bounds);
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