@interface SBFullScreenSwitcherSceneLiveContentOverlay
- (BOOL)handleHeadsetButtonPress:(BOOL)press;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)hitTestedToTopAffordance:(CGPoint)affordance window:(id)window;
- (BOOL)isContentUpdating;
- (BOOL)requiresLegacyRotationSupport;
- (SBFullScreenSwitcherSceneLiveContentOverlay)init;
- (SBFullScreenSwitcherSceneLiveContentOverlayDelegate)statusBarActionDelegate;
- (SBSwitcherLiveContentOverlayDelegate)delegate;
- (SBWindowControlsLayout)windowControlsLayoutForApplicationSceneViewController:(SEL)controller;
- (SBWindowControlsLayout)windowControlsLayoutForMedusaDecoratedDeviceApplicationSceneViewController:(SEL)controller;
- (UIRectCornerRadii)cornerRadii;
- (id)_medusaDecoratedDeviceApplicationSceneViewController;
- (id)_sbWindowScene;
- (id)liveSceneIdentityToken;
- (id)newPortaledLiveContentOverlayView;
- (id)newSnapshotView;
- (id)windowControlsView;
- (int64_t)preferredInterfaceOrientation;
- (unint64_t)supportedInterfaceOrientations;
- (void)_settingsDidUpdateEdgeProtectOrAutoHideOnHomeGrabberView;
- (void)_updateAsyncRendering;
- (void)_updateDisplayLayoutElementActive;
- (void)_updateFlatteningMode;
- (void)_updateOrientationWrapper;
- (void)_updatePreferredWindowControlsPlacementForSceneHandle:(id)handle contentState:(int64_t)state;
- (void)_updateTopAffordanceAutoHide;
- (void)_updateTouchBehaviorForScene:(id)scene;
- (void)applicationSceneViewController:(id)controller didUpdateStatusBarHidden:(BOOL)hidden withAnimation:(int64_t)animation;
- (void)applicationSceneViewController:(id)controller statusBarDoubleTapped:(id)tapped;
- (void)applicationSceneViewController:(id)controller statusBarTapped:(id)tapped tapActionType:(int64_t)type;
- (void)applicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:(id)orientations;
- (void)configureWithWorkspaceEntity:(id)entity referenceFrame:(CGRect)frame contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation layoutRole:(int64_t)role sbsDisplayLayoutRole:(int64_t)layoutRole zOrderIndex:(int64_t)index spaceConfiguration:(int64_t)self0 floatingConfiguration:(int64_t)self1 hasClassicAppOrientationMismatch:(BOOL)self2 sizingPolicy:(int64_t)self3;
- (void)dealloc;
- (void)disableAsynchronousRenderingForNextCommit;
- (void)invalidate;
- (void)medusaDecoratedApplicationSceneViewController:(id)controller didUpdateStatusBarHidden:(BOOL)hidden withAnimation:(int64_t)animation;
- (void)medusaDecoratedDeviceApplicationSceneViewController:(id)controller statusBarDoubleTapped:(id)tapped;
- (void)medusaDecoratedDeviceApplicationSceneViewController:(id)controller statusBarTapped:(id)tapped tapActionType:(int64_t)type;
- (void)medusaDecoratedDeviceApplicationSceneViewController:(id)controller topAffordanceActionPerformed:(int64_t)performed;
- (void)medusaDecoratedDeviceApplicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:(id)orientations;
- (void)noteKeyboardFocusDidChangeToSceneID:(id)d;
- (void)sceneHandle:(id)handle didCreateScene:(id)scene;
- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings;
- (void)sceneHandle:(id)handle didUpdateContentState:(int64_t)state;
- (void)sceneHandle:(id)handle didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings;
- (void)sceneLayerManagerDidStopTrackingLayers:(id)layers;
- (void)sceneLayerManagerDidUpdateLayers:(id)layers;
- (void)setActiveAppearance:(int64_t)appearance;
- (void)setAsyncRenderingDisabled:(BOOL)disabled;
- (void)setAsyncRenderingEnabled:(BOOL)enabled withMinificationFilterEnabled:(BOOL)filterEnabled;
- (void)setBlurViewIconScale:(double)scale;
- (void)setContainerOrientation:(int64_t)orientation;
- (void)setDimmed:(BOOL)dimmed;
- (void)setDisableFlattening:(BOOL)flattening;
- (void)setDisplayLayoutElementActive:(BOOL)active;
- (void)setLiveContentBlurEnabled:(BOOL)enabled duration:(double)duration blurDelay:(double)delay iconViewScale:(double)scale began:(id)began completion:(id)completion;
- (void)setMatchMovedToScene:(BOOL)scene;
- (void)setOcclusionState:(int64_t)state inSteadyState:(BOOL)steadyState;
- (void)setShouldPreventFlatteningUnoccludedScenes:(BOOL)scenes;
- (void)setStatusBarHidden:(BOOL)hidden nubViewHidden:(BOOL)viewHidden animator:(id)animator;
- (void)setTouchBehavior:(int64_t)behavior;
- (void)setWantsEnhancedWindowingEnabled:(BOOL)enabled;
- (void)updateDisplayLayoutElementWithBuilder:(id)builder;
- (void)updateTopAffordanceContextMenuWithOptions:(int64_t)options selectedActionType:(int64_t)type layout:(SBWindowControlsLayout *)layout hidden:(BOOL)hidden interfaceOrientation:(int64_t)orientation;
- (void)updateWindowControlsLayout:(SBWindowControlsLayout *)layout;
@end

@implementation SBFullScreenSwitcherSceneLiveContentOverlay

- (SBFullScreenSwitcherSceneLiveContentOverlay)init
{
  v8.receiver = self;
  v8.super_class = SBFullScreenSwitcherSceneLiveContentOverlay;
  v2 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF0D78]);
    orientationWrapperView = v2->_orientationWrapperView;
    v2->_orientationWrapperView = v3;

    v5 = objc_opt_new();
    backboardSceneHostRegistrations = v2->_backboardSceneHostRegistrations;
    v2->_backboardSceneHostRegistrations = v5;

    v2->_touchBehavior = 2;
  }

  return v2;
}

- (void)_updateDisplayLayoutElementActive
{
  v2 = objc_opt_class();
  v3 = *(self + 104);
  v4 = v2;
  sceneHandle = [v3 sceneHandle];
  sceneIdentifier = [sceneHandle sceneIdentifier];
  sceneHandle2 = [*(self + 104) sceneHandle];
  displayIdentity = [sceneHandle2 displayIdentity];
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_1_10(&dword_21ED4E000, v9, v10, "Trying to activate a display layout element for %{public}@ but we can't find the publisher - sceneID: %{public}@ displayIdentity: %{public}@", v11, v12, v13, v14, v15);
}

- (void)_updateOrientationWrapper
{
  sceneHandle = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];
  settings = [sceneIfExists settings];
  v6 = settings;
  if (!sceneIfExists || ([settings sb_displayIdentityForSceneManagers], v7 = objc_claimAutoreleasedReturnValue(), -[SBDeviceApplicationSceneViewControlling _fbsDisplayIdentity](self->_deviceApplicationSceneViewController, "_fbsDisplayIdentity"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, v9))
  {
    _sbWindowScene = [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView _sbWindowScene];
    v11 = [sceneHandle _supportsMixedOrientationOnWindowScene:_sbWindowScene];

    if (v11)
    {
      containerOrientation = self->_containerOrientation;
    }

    else
    {
      interfaceOrientation = [v6 interfaceOrientation];
      contentOrientation = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController contentOrientation];
      if (contentOrientation <= 1)
      {
        containerOrientation = 1;
      }

      else
      {
        containerOrientation = contentOrientation;
      }

      if (interfaceOrientation)
      {
        containerOrientation = interfaceOrientation;
      }
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__SBFullScreenSwitcherSceneLiveContentOverlay__updateOrientationWrapper__block_invoke;
    v16[3] = &unk_2783A8BC8;
    v16[4] = self;
    v16[5] = containerOrientation;
    v15 = MEMORY[0x223D6F7F0](v16);
    if ([MEMORY[0x277D75D18] _isInRetargetableAnimationBlock])
    {
      [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v15];
    }

    else if ([MEMORY[0x277D75D18] _isInAnimationBlock])
    {
      [MEMORY[0x277D75D18] performWithoutAnimation:v15];
    }

    else
    {
      v15[2](v15);
    }
  }
}

- (id)_medusaDecoratedDeviceApplicationSceneViewController
{
  v3 = objc_opt_class();
  deviceApplicationSceneViewController = self->_deviceApplicationSceneViewController;

  return SBSafeCast(v3, deviceApplicationSceneViewController);
}

- (void)_updateTopAffordanceAutoHide
{
  v3 = objc_opt_class();
  v6 = SBSafeCast(v3, self->_deviceApplicationSceneViewController);
  sceneHandle = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  isAutoHideEnabledForHomeAffordance = [sceneHandle isAutoHideEnabledForHomeAffordance];

  [v6 _setTopAffordanceAutoHides:isAutoHideEnabledForHomeAffordance];
}

uint64_t __72__SBFullScreenSwitcherSceneLiveContentOverlay__updateOrientationWrapper__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 96) setContentOrientation:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  v4 = *(v2 + 136);

  return [v3 setContainerOrientation:v4];
}

- (id)_sbWindowScene
{
  delegate = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self delegate];
  v4 = [delegate windowSceneForLiveContentOverlay:self];

  return v4;
}

- (SBSwitcherLiveContentOverlayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIRectCornerRadii)cornerRadii
{
  topLeft = self->_cornerRadii.topLeft;
  bottomLeft = self->_cornerRadii.bottomLeft;
  bottomRight = self->_cornerRadii.bottomRight;
  topRight = self->_cornerRadii.topRight;
  result.topRight = topRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topLeft = topLeft;
  return result;
}

- (void)_updateAsyncRendering
{
  v3 = self->_asyncRenderingEnabled && !self->_asynchronousRenderingTemporarilyDisabled && !self->_asyncRenderingDisabled;
  deviceApplicationSceneViewController = self->_deviceApplicationSceneViewController;
  if (v3)
  {
    v5 = *MEMORY[0x277CDA278];
  }

  else
  {
    v5 = 0;
  }

  [(SBDeviceApplicationSceneViewControlling *)deviceApplicationSceneViewController setSceneRendersAsynchronously:v3];
  v6 = self->_deviceApplicationSceneViewController;

  [(SBDeviceApplicationSceneViewControlling *)v6 setSceneMinificationFilter:v5];
}

- (void)_updateFlatteningMode
{
  v14 = *MEMORY[0x277CDA9E0];
  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (v4)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {

      goto LABEL_13;
    }
  }

  _sbWindowScene = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _sbWindowScene];
  switcherController = [_sbWindowScene switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  baseStyle = [windowManagementContext baseStyle];

  if ((v5 & 1) == 0)
  {
  }

  if (baseStyle)
  {
    sceneHandle = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
    isOccluded = [sceneHandle isOccluded];

    if (((isOccluded & 1) != 0 || !self->_shouldPreventFlatteningUnoccludedScenes) && !self->_disableFlattening)
    {
      v12 = v14;
      goto LABEL_14;
    }
  }

LABEL_13:
  v13 = *MEMORY[0x277CDA9E8];

  v12 = v13;
LABEL_14:
  v15 = v12;
  [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController setSceneFlattenMode:v12];
}

- (void)_settingsDidUpdateEdgeProtectOrAutoHideOnHomeGrabberView
{
  delegate = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self delegate];
  [delegate liveContentOverlayDidUpdateHomeAffordanceEdgeProtectOrAutoHide:self];

  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateTopAffordanceAutoHide];
}

- (void)dealloc
{
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self invalidate];
  sceneHandle = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  [sceneHandle removeObserver:self];

  sceneHandle2 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  sceneIfExists = [sceneHandle2 sceneIfExists];
  layerManager = [sceneIfExists layerManager];
  [layerManager removeObserver:self];

  [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController invalidate];
  v7.receiver = self;
  v7.super_class = SBFullScreenSwitcherSceneLiveContentOverlay;
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)&v7 dealloc];
}

- (void)setContainerOrientation:(int64_t)orientation
{
  if (self->_containerOrientation != orientation)
  {
    self->_containerOrientation = orientation;
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateOrientationWrapper];
  }
}

- (void)configureWithWorkspaceEntity:(id)entity referenceFrame:(CGRect)frame contentOrientation:(int64_t)orientation containerOrientation:(int64_t)containerOrientation layoutRole:(int64_t)role sbsDisplayLayoutRole:(int64_t)layoutRole zOrderIndex:(int64_t)index spaceConfiguration:(int64_t)self0 floatingConfiguration:(int64_t)self1 hasClassicAppOrientationMismatch:(BOOL)self2 sizingPolicy:(int64_t)self3
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  entityCopy = entity;
  deviceApplicationSceneEntity = [entityCopy deviceApplicationSceneEntity];
  sceneHandle = [deviceApplicationSceneEntity sceneHandle];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v24 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
  deviceApplicationSceneViewController = self->_deviceApplicationSceneViewController;
  isFrozen = [deviceApplicationSceneEntity isFrozen];
  self->_isFrozen = isFrozen;
  if (isFrozen)
  {
    v27 = 2;
  }

  else
  {
    v27 = 4;
  }

  if (!deviceApplicationSceneViewController)
  {
    [sceneHandle addObserver:self];
    indexCopy = index;
    if (v24 == 1)
    {
      v28 = -[SBMedusaDecoratedDeviceApplicationSceneViewController initWithDeviceApplicationSceneHandle:layoutRole:]([SBMedusaDecoratedDeviceApplicationSceneViewController alloc], "initWithDeviceApplicationSceneHandle:layoutRole:", sceneHandle, [entityCopy layoutRole]);
      [(SBMedusaDecoratedDeviceApplicationSceneViewController *)v28 setDelegate:self];
      [(SBMedusaDecoratedDeviceApplicationSceneViewController *)v28 setNubViewHidden:0];
    }

    else
    {
      v28 = [[SBDeviceApplicationSceneViewController alloc] initWithSceneHandle:sceneHandle];
      [(SBMedusaDecoratedDeviceApplicationSceneViewController *)v28 setShouldDrawStatusBarInsideSceneView:1];
      [(SBMedusaDecoratedDeviceApplicationSceneViewController *)v28 setDelegate:self];
    }

    v29 = self->_deviceApplicationSceneViewController;
    self->_deviceApplicationSceneViewController = v28;

    [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController setDisplayMode:v27 animationFactory:0 completion:0];
    v30 = objc_alloc(MEMORY[0x277D66A50]);
    sceneIdentifier = [sceneHandle sceneIdentifier];
    v32 = [v30 initWithIdentifier:sceneIdentifier];
    displayLayoutElement = self->_displayLayoutElement;
    self->_displayLayoutElement = v32;

    index = indexCopy;
  }

  [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController setHomeGrabberDisplayMode:1, indexCopy];
  v34 = [(SBDeviceApplicationScenePlaceholderContentContext *)[SBMutableDeviceApplicationScenePlaceholderContentContext alloc] initWithActivationSettings:entityCopy];
  [(SBDeviceApplicationScenePlaceholderContentContext *)v34 setLayoutEnvironment:1];
  [(SBDeviceApplicationScenePlaceholderContentContext *)v34 setHasOrientationMismatchForClassicApp:mismatch];
  [(SBDeviceApplicationScenePlaceholderContentContext *)v34 setSizingPolicy:policy];
  [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController setPlaceholderContentContext:v34];
  if (v24 == 1)
  {
    v35 = objc_opt_class();
    v36 = SBSafeCast(v35, self->_deviceApplicationSceneViewController);
    [v36 setLayoutRole:role spaceConfiguration:configuration floatingConfiguration:floatingConfiguration sizingPolicy:policy];
  }

  [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController setContentReferenceSize:orientation withContentOrientation:containerOrientation andContainerOrientation:width, height];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __262__SBFullScreenSwitcherSceneLiveContentOverlay_configureWithWorkspaceEntity_referenceFrame_contentOrientation_containerOrientation_layoutRole_sbsDisplayLayoutRole_zOrderIndex_spaceConfiguration_floatingConfiguration_hasClassicAppOrientationMismatch_sizingPolicy___block_invoke;
  v55[3] = &unk_2783B0AC0;
  v37 = sceneHandle;
  v56 = v37;
  layoutRoleCopy = layoutRole;
  indexCopy2 = index;
  v59 = x;
  v60 = y;
  v61 = width;
  v62 = height;
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self updateDisplayLayoutElementWithBuilder:v55];
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateDisplayLayoutElementActive];
  [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController setDisplayMode:v27 animationFactory:0 completion:0];
  sceneHandle2 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  HaveTransparentBackground = SBApplicationMightHaveTransparentBackground(sceneHandle2);

  if (HaveTransparentBackground)
  {
    backgroundView = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController backgroundView];
    if (objc_opt_respondsToSelector())
    {
      [backgroundView setFullscreen:1];
    }

    if (objc_opt_respondsToSelector())
    {
      [backgroundView setTransformOptions:{objc_msgSend(backgroundView, "transformOptions") | 2}];
    }
  }

  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateTopAffordanceAutoHide];
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateOrientationWrapper];
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateFullOcclusionState];
  windowSceneManager = [SBApp windowSceneManager];
  v42 = [windowSceneManager windowSceneForSceneHandle:v37];
  switcherController = [v42 switcherController];
  v44 = [switcherController traitsParticipantForSceneHandle:v37];

  [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController containerDidUpdateTraitsParticipant:v44];
  sceneIfExists = [v37 sceneIfExists];
  layerManager = [sceneIfExists layerManager];
  v47 = layerManager;
  if (sceneIfExists)
  {
    layers = [layerManager layers];
    v49 = [layers count];

    if (!v49)
    {
      [v47 addObserver:self];
    }
  }
}

void __262__SBFullScreenSwitcherSceneLiveContentOverlay_configureWithWorkspaceEntity_referenceFrame_contentOrientation_containerOrientation_layoutRole_sbsDisplayLayoutRole_zOrderIndex_spaceConfiguration_floatingConfiguration_hasClassicAppOrientationMismatch_sizingPolicy___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 application];
  v5 = [v4 bundleIdentifier];
  [v6 setBundleIdentifier:v5];

  [v6 setLayoutRole:*(a1 + 40)];
  [v6 setZOrderIndex:*(a1 + 48)];
  [v6 setLevel:1];
  [v6 setUIApplicationElement:1];
  [v6 setHasKeyboardFocus:{objc_msgSend(*(a1 + 32), "isPairedWithExternalSceneWithIdentifier:", *MEMORY[0x277D22AC8])}];
  [v6 setReferenceFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
}

- (void)invalidate
{
  [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController invalidate];
  [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
  displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
  self->_displayLayoutElementAssertion = 0;

  [(BSSimpleAssertion *)self->_activeAppearanceAssertion invalidate];
  activeAppearanceAssertion = self->_activeAppearanceAssertion;
  self->_activeAppearanceAssertion = 0;

  [(UIApplicationSceneClientSettingsDiffInspector *)self->_clientSettingsInspector removeAllObservers];
  clientSettingsInspector = self->_clientSettingsInspector;
  self->_clientSettingsInspector = 0;

  [(NSMutableDictionary *)self->_backboardSceneHostRegistrations enumerateKeysAndObjectsUsingBlock:&__block_literal_global_288];
  backboardSceneHostRegistrations = self->_backboardSceneHostRegistrations;
  self->_backboardSceneHostRegistrations = 0;
}

- (void)setStatusBarHidden:(BOOL)hidden nubViewHidden:(BOOL)viewHidden animator:(id)animator
{
  viewHiddenCopy = viewHidden;
  animatorCopy = animator;
  if (hidden || viewHiddenCopy)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __89__SBFullScreenSwitcherSceneLiveContentOverlay_setStatusBarHidden_nubViewHidden_animator___block_invoke;
    v17[3] = &unk_2783AC158;
    v17[4] = self;
    hiddenCopy = hidden;
    v19 = viewHiddenCopy;
    v12 = MEMORY[0x223D6F7F0](v17);
    v10 = v12;
    if (animatorCopy)
    {
      animatorCopy[2](animatorCopy, v12, 0);
    }

    else
    {
      (*(v12 + 16))(v12);
    }

LABEL_13:

    goto LABEL_14;
  }

  statusBarAssertion = self->_statusBarAssertion;
  if (statusBarAssertion && ([(SBSceneViewStatusBarAssertion *)statusBarAssertion isStatusBarHidden]|| [(SBSceneViewStatusBarAssertion *)self->_statusBarAssertion nubViewHidden]!= 0x7FFFFFFFFFFFFFFFLL))
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __89__SBFullScreenSwitcherSceneLiveContentOverlay_setStatusBarHidden_nubViewHidden_animator___block_invoke_2;
    v15[3] = &unk_2783ABD10;
    v16 = 0;
    v15[4] = self;
    v15[5] = 0x7FFFFFFFFFFFFFFFLL;
    v10 = MEMORY[0x223D6F7F0](v15);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __89__SBFullScreenSwitcherSceneLiveContentOverlay_setStatusBarHidden_nubViewHidden_animator___block_invoke_3;
    v13[3] = &unk_2783B0B08;
    v14 = 0;
    v13[4] = self;
    v13[5] = 0x7FFFFFFFFFFFFFFFLL;
    v11 = MEMORY[0x223D6F7F0](v13);
    if (animatorCopy)
    {
      animatorCopy[2](animatorCopy, v10, v11);
    }

    else
    {
      v10[2](v10);
      v11[2](v11, 1, 0);
    }

    goto LABEL_13;
  }

LABEL_14:
}

void __89__SBFullScreenSwitcherSceneLiveContentOverlay_setStatusBarHidden_nubViewHidden_animator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  if (v3)
  {
    [v3 setStatusBarHidden:*(a1 + 40)];
    v4 = *(*(a1 + 32) + 112);
    v5 = BSSettingFlagIfYes();

    [v4 setNubViewHidden:v5];
  }

  else
  {
    v6 = [*(v2 + 104) SB_conformsToSceneLayoutMedusaStatusBarAssertionProviding];
    v7 = *(a1 + 32);
    if (v6)
    {
      [*(v7 + 104) statusBarAssertionWithStatusBarHidden:*(a1 + 40) nubViewHidden:BSSettingFlagIfYes() atLevel:4];
    }

    else
    {
      [*(v7 + 104) statusBarAssertionWithStatusBarHidden:*(a1 + 40) atLevel:4];
    }
    v8 = ;
    v9 = *(a1 + 32);
    v10 = *(v9 + 112);
    *(v9 + 112) = v8;
  }
}

uint64_t __89__SBFullScreenSwitcherSceneLiveContentOverlay_setStatusBarHidden_nubViewHidden_animator___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 112) setStatusBarHidden:*(a1 + 48)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 112);

  return [v3 setNubViewHidden:v2];
}

void __89__SBFullScreenSwitcherSceneLiveContentOverlay_setStatusBarHidden_nubViewHidden_animator___block_invoke_3(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0 && *(a1 + 48) == [*(*(a1 + 32) + 112) isStatusBarHidden] && objc_msgSend(*(*(a1 + 32) + 112), "nubViewHidden") == *(a1 + 40))
  {
    [*(*(a1 + 32) + 112) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 112);
    *(v4 + 112) = 0;
  }
}

- (void)setDimmed:(BOOL)dimmed
{
  dimmedCopy = dimmed;
  _medusaDecoratedDeviceApplicationSceneViewController = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
  v6 = _medusaDecoratedDeviceApplicationSceneViewController;
  v5 = 0.0;
  if (dimmedCopy)
  {
    v5 = 1.0;
  }

  [_medusaDecoratedDeviceApplicationSceneViewController setDarkenViewAlpha:v5];
}

- (void)setMatchMovedToScene:(BOOL)scene
{
  if (self->_matchMovedToScene != scene)
  {
    sceneCopy = scene;
    self->_matchMovedToScene = scene;
    _medusaDecoratedDeviceApplicationSceneViewController = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
    v6 = _medusaDecoratedDeviceApplicationSceneViewController;
    if (sceneCopy)
    {
      [_medusaDecoratedDeviceApplicationSceneViewController _beginRequiringSceneViewMatchMoveAnimationForReason:@"switcher"];
    }

    else
    {
      [_medusaDecoratedDeviceApplicationSceneViewController _endRequiringSceneViewMatchMoveAnimationForReason:@"switcher"];
    }
  }
}

- (BOOL)isContentUpdating
{
  sceneHandle = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  isSceneUpdateInProgress = [sceneHandle isSceneUpdateInProgress];

  return isSceneUpdateInProgress;
}

- (void)setAsyncRenderingDisabled:(BOOL)disabled
{
  if (self->_asyncRenderingDisabled != disabled)
  {
    self->_asyncRenderingDisabled = disabled;
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateAsyncRendering];
  }
}

- (void)setOcclusionState:(int64_t)state inSteadyState:(BOOL)steadyState
{
  steadyStateCopy = steadyState;
  IsOccluded = SBOcclusionStateIsOccluded(state);
  sceneHandle = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  [sceneHandle setOccluded:IsOccluded];

  isInSteadyState = self->_isInSteadyState;
  if (state != 3 || steadyStateCopy)
  {
    if (self->_occlusionState != state)
    {
      self->_occlusionState = state;
    }

    if (isInSteadyState != steadyStateCopy)
    {
      self->_isInSteadyState = steadyStateCopy;
    }

    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateFullOcclusionState];

    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateFlatteningMode];
  }
}

- (void)setAsyncRenderingEnabled:(BOOL)enabled withMinificationFilterEnabled:(BOOL)filterEnabled
{
  if (self->_asyncRenderingEnabled != enabled || self->_wantsMinificationFilter != filterEnabled)
  {
    self->_asyncRenderingEnabled = enabled;
    self->_wantsMinificationFilter = filterEnabled;
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateAsyncRendering];
  }
}

- (void)disableAsynchronousRenderingForNextCommit
{
  if (!self->_asynchronousRenderingTemporarilyDisabled)
  {
    self->_asynchronousRenderingTemporarilyDisabled = 1;
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateAsyncRendering];
    v3 = *MEMORY[0x277D76620];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __88__SBFullScreenSwitcherSceneLiveContentOverlay_disableAsynchronousRenderingForNextCommit__block_invoke;
    v4[3] = &unk_2783A8C18;
    v4[4] = self;
    [v3 _performBlockAfterCATransactionCommits:v4];
  }
}

- (void)setWantsEnhancedWindowingEnabled:(BOOL)enabled
{
  if (self->_wantsEnhancedWindowingEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_wantsEnhancedWindowingEnabled = enabled;
    sceneHandle = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
    [sceneHandle setWantsEnhancedWindowingEnabled:enabledCopy];
  }
}

- (void)setShouldPreventFlatteningUnoccludedScenes:(BOOL)scenes
{
  if (self->_shouldPreventFlatteningUnoccludedScenes != scenes)
  {
    self->_shouldPreventFlatteningUnoccludedScenes = scenes;
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateFlatteningMode];
  }
}

- (void)setDisableFlattening:(BOOL)flattening
{
  if (self->_disableFlattening != flattening)
  {
    self->_disableFlattening = flattening;
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateFlatteningMode];
  }
}

- (BOOL)requiresLegacyRotationSupport
{
  sceneHandle = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  wantsDeviceOrientationEventsEnabled = [sceneHandle wantsDeviceOrientationEventsEnabled];

  return wantsDeviceOrientationEventsEnabled;
}

- (unint64_t)supportedInterfaceOrientations
{
  sceneHandle = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  v3 = sceneHandle;
  if (sceneHandle && ([sceneHandle _supportsMixedOrientation] & 1) == 0)
  {
    supportedInterfaceOrientations = [v3 supportedInterfaceOrientations];
  }

  else
  {
    supportedInterfaceOrientations = 30;
  }

  return supportedInterfaceOrientations;
}

- (int64_t)preferredInterfaceOrientation
{
  sceneHandle = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  if ([sceneHandle isEffectivelyForeground])
  {
    currentInterfaceOrientation = [sceneHandle currentInterfaceOrientation];
  }

  else
  {
    currentInterfaceOrientation = 0;
  }

  return currentInterfaceOrientation;
}

- (id)newPortaledLiveContentOverlayView
{
  contentOverlayView = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self contentOverlayView];
  if (contentOverlayView)
  {
    v3 = objc_alloc_init(SBPortalView);
    [(SBPortalView *)v3 setSourceView:contentOverlayView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)newSnapshotView
{
  v3 = [SBDeviceApplicationSceneView alloc];
  sceneHandle = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController contentReferenceSize];
  v7 = [(SBDeviceApplicationSceneView *)v3 initWithSceneHandle:sceneHandle referenceSize:[(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController contentOrientation] contentOrientation:[(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController containerOrientation] containerOrientation:0 hostRequester:v5, v6];

  [(SBSceneView *)v7 setDisplayMode:3 animationFactory:0 completion:0];
  return v7;
}

- (BOOL)hitTestedToTopAffordance:(CGPoint)affordance window:(id)window
{
  y = affordance.y;
  x = affordance.x;
  windowCopy = window;
  _medusaDecoratedDeviceApplicationSceneViewController = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
  v9 = [_medusaDecoratedDeviceApplicationSceneViewController hitTestToTopAffordance:windowCopy window:{x, y}];

  return v9 != 0;
}

- (void)setDisplayLayoutElementActive:(BOOL)active
{
  if (self->_displayLayoutElementActive != active)
  {
    self->_displayLayoutElementActive = active;
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateDisplayLayoutElementActive];
  }
}

- (void)setActiveAppearance:(int64_t)appearance
{
  if (self->_activeAppearance != appearance)
  {
    v13[9] = v3;
    v13[10] = v4;
    self->_activeAppearance = appearance;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__SBFullScreenSwitcherSceneLiveContentOverlay_setActiveAppearance___block_invoke;
    v13[3] = &unk_2783A8C18;
    v13[4] = self;
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v13];
    v7 = self->_activeAppearanceAssertion;
    v8 = v7;
    if (!v7 || [(SBSceneHandleActiveAppearanceAssertion *)v7 activeAppearance]!= appearance)
    {
      sceneHandle = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
      v10 = [sceneHandle acquireActiveAppearanceAssertionWithReason:@"switcher style update" activeAppearance:appearance priority:1];
      activeAppearanceAssertion = self->_activeAppearanceAssertion;
      self->_activeAppearanceAssertion = v10;

      [(BSSimpleAssertion *)v8 invalidate];
    }

    _medusaDecoratedDeviceApplicationSceneViewController = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
    [_medusaDecoratedDeviceApplicationSceneViewController setActiveAppearance:appearance];
  }
}

- (id)windowControlsView
{
  _medusaDecoratedDeviceApplicationSceneViewController = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
  windowControlsView = [_medusaDecoratedDeviceApplicationSceneViewController windowControlsView];

  return windowControlsView;
}

- (void)updateTopAffordanceContextMenuWithOptions:(int64_t)options selectedActionType:(int64_t)type layout:(SBWindowControlsLayout *)layout hidden:(BOOL)hidden interfaceOrientation:(int64_t)orientation
{
  hiddenCopy = hidden;
  _medusaDecoratedDeviceApplicationSceneViewController = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
  margin = layout->margin;
  v14[0] = *&layout->style;
  v14[1] = margin;
  [_medusaDecoratedDeviceApplicationSceneViewController updateTopAffordanceContextMenuWithOptions:options selectedActionType:type layout:v14 hidden:hiddenCopy interfaceOrientation:orientation];
}

- (void)updateWindowControlsLayout:(SBWindowControlsLayout *)layout
{
  _medusaDecoratedDeviceApplicationSceneViewController = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
  margin = layout->margin;
  v6[0] = *&layout->style;
  v6[1] = margin;
  [_medusaDecoratedDeviceApplicationSceneViewController updateWindowControlsLayout:v6];
}

- (void)medusaDecoratedDeviceApplicationSceneViewController:(id)controller statusBarTapped:(id)tapped tapActionType:(int64_t)type
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_statusBarActionDelegate);
  [WeakRetained fullScreenSwitcherSceneLiveContentOverlay:self tappedStatusBar:tappedCopy tapActionType:type];
}

- (void)medusaDecoratedDeviceApplicationSceneViewController:(id)controller statusBarDoubleTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_statusBarActionDelegate);
  [WeakRetained fullScreenSwitcherSceneLiveContentOverlay:self doubleTappedStatusBar:tappedCopy];
}

- (void)medusaDecoratedDeviceApplicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:(id)orientations
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained liveContentOverlayDidUpdateHomeAffordanceSupportedOrientations:self];
}

- (void)medusaDecoratedDeviceApplicationSceneViewController:(id)controller topAffordanceActionPerformed:(int64_t)performed
{
  sceneHandle = [controller sceneHandle];
  displayItemRepresentation = [sceneHandle displayItemRepresentation];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained performTopAffordanceAction:performed forDisplayItem:displayItemRepresentation];
}

- (SBWindowControlsLayout)windowControlsLayoutForMedusaDecoratedDeviceApplicationSceneViewController:(SEL)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [WeakRetained windowControlsLayoutForLiveContentOverlay:self];
    WeakRetained = v8;
  }

  else
  {
    *&retstr->style = 0u;
    retstr->margin = 0u;
  }

  return result;
}

- (void)medusaDecoratedApplicationSceneViewController:(id)controller didUpdateStatusBarHidden:(BOOL)hidden withAnimation:(int64_t)animation
{
  hiddenCopy = hidden;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained liveContentOverlay:self didUpdateStatusBarHiddenSceneSettings:hiddenCopy withAnimation:animation];
}

- (void)applicationSceneViewController:(id)controller statusBarTapped:(id)tapped tapActionType:(int64_t)type
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_statusBarActionDelegate);
  [WeakRetained fullScreenSwitcherSceneLiveContentOverlay:self tappedStatusBar:tappedCopy tapActionType:type];
}

- (void)applicationSceneViewController:(id)controller statusBarDoubleTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_statusBarActionDelegate);
  [WeakRetained fullScreenSwitcherSceneLiveContentOverlay:self doubleTappedStatusBar:tappedCopy];
}

- (void)applicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:(id)orientations
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained liveContentOverlayDidUpdateHomeAffordanceSupportedOrientations:self];
}

- (SBWindowControlsLayout)windowControlsLayoutForApplicationSceneViewController:(SEL)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [WeakRetained windowControlsLayoutForLiveContentOverlay:self];
    WeakRetained = v8;
  }

  else
  {
    *&retstr->style = 0u;
    retstr->margin = 0u;
  }

  return result;
}

- (void)applicationSceneViewController:(id)controller didUpdateStatusBarHidden:(BOOL)hidden withAnimation:(int64_t)animation
{
  hiddenCopy = hidden;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained liveContentOverlay:self didUpdateStatusBarHiddenSceneSettings:hiddenCopy withAnimation:animation];
}

- (void)setLiveContentBlurEnabled:(BOOL)enabled duration:(double)duration blurDelay:(double)delay iconViewScale:(double)scale began:(id)began completion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  beganCopy = began;
  _medusaDecoratedDeviceApplicationSceneViewController = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
  [_medusaDecoratedDeviceApplicationSceneViewController setLiveContentBlurEnabled:enabledCopy duration:beganCopy blurDelay:completionCopy iconViewScale:duration began:delay completion:scale];
}

- (void)setBlurViewIconScale:(double)scale
{
  _medusaDecoratedDeviceApplicationSceneViewController = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
  [_medusaDecoratedDeviceApplicationSceneViewController setBlurViewIconScale:scale];
}

- (void)updateDisplayLayoutElementWithBuilder:(id)builder
{
  if (self->_displayLayoutElementAssertion)
  {
    builderCopy = builder;
    _sbWindowScene = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _sbWindowScene];
    builderCopy2 = [_sbWindowScene displayLayoutPublisher];

    if (!builderCopy2)
    {
      v8 = SBLogAppSwitcher();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SBFullScreenSwitcherSceneLiveContentOverlay updateDisplayLayoutElementWithBuilder:?];
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v10 = objc_opt_class();
      sceneHandle = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
      sceneIdentifier = [sceneHandle sceneIdentifier];
      sceneHandle2 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
      displayIdentity = [sceneHandle2 displayIdentity];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBFullScreenSwitcherLiveContentOverlayCoordinator.m" lineNumber:2152 description:{@"No publisher - %@ sceneID: %@ displayIdentity: %@", v10, sceneIdentifier, displayIdentity}];
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [builderCopy2 transitionAssertionWithReason:v16];

    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;

    builderCopy[2](builderCopy, self->_displayLayoutElement);
    v19 = [builderCopy2 addElement:self->_displayLayoutElement];
    v20 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v19;

    [v17 invalidate];
  }

  else
  {
    v21 = *(builder + 2);
    builderCopy2 = builder;
    v21();
  }
}

- (void)sceneHandle:(id)handle didCreateScene:(id)scene
{
  sceneCopy = scene;
  deviceApplicationSceneViewController = self->_deviceApplicationSceneViewController;
  handleCopy = handle;
  sceneHandle = [(SBDeviceApplicationSceneViewControlling *)deviceApplicationSceneViewController sceneHandle];

  if (sceneHandle == handleCopy)
  {
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateOrientationWrapper];
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateAsyncRendering];
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateFullOcclusionState];
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateFlatteningMode];
    layerManager = [sceneCopy layerManager];
    layers = [layerManager layers];
    v11 = [layers count];

    if (v11)
    {
      [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateTouchBehaviorForScene:sceneCopy];
    }

    else
    {
      [layerManager addObserver:self];
    }

    sceneHandle2 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
    -[SBFullScreenSwitcherSceneLiveContentOverlay _updatePreferredWindowControlsPlacementForSceneHandle:contentState:](self, "_updatePreferredWindowControlsPlacementForSceneHandle:contentState:", sceneHandle2, [sceneCopy contentState]);
  }
}

- (void)sceneHandle:(id)handle didUpdateContentState:(int64_t)state
{
  deviceApplicationSceneViewController = self->_deviceApplicationSceneViewController;
  handleCopy = handle;
  sceneHandle = [(SBDeviceApplicationSceneViewControlling *)deviceApplicationSceneViewController sceneHandle];
  sceneHandle2 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];

  if (sceneHandle2 == handleCopy)
  {
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updatePreferredWindowControlsPlacementForSceneHandle:sceneHandle contentState:state];
  }
}

- (void)_updatePreferredWindowControlsPlacementForSceneHandle:(id)handle contentState:(int64_t)state
{
  handleCopy = handle;
  application = [handleCopy application];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  info = [application info];
  if ([info wantsFullScreen])
  {

    goto LABEL_4;
  }

  classicAppPhoneAppRunningOnPad = [application classicAppPhoneAppRunningOnPad];

  if (classicAppPhoneAppRunningOnPad)
  {
LABEL_4:
    if ([handleCopy preferredWindowControlsPlacement] != 4)
    {
      [handleCopy setPreferredWindowControlsPlacement:4];
      [WeakRetained updateWindowControlsPosition];
    }

    goto LABEL_6;
  }

  if (state == 2)
  {
    sceneIfExists = [handleCopy sceneIfExists];
    ui_windowingControl = [sceneIfExists ui_windowingControl];

    preferredWindowingControlStyleType = [ui_windowingControl preferredWindowingControlStyleType];
    v15 = SBSceneWindowControlsPlacementFromSceneWindowingControlStyleType(preferredWindowingControlStyleType);
    info2 = [application info];
    requiresPreSolariumDesign = [info2 requiresPreSolariumDesign];

    if (((preferredWindowingControlStyleType == 0) & requiresPreSolariumDesign) != 0)
    {
      v18 = 4;
    }

    else
    {
      v18 = v15;
    }

    [handleCopy setPreferredWindowControlsPlacement:v18];
    v19 = MEMORY[0x277D0AC98];
    application2 = [handleCopy application];
    bundleIdentifier = [application2 bundleIdentifier];
    v22 = [v19 storeForApplication:bundleIdentifier];

    sceneIdentifier = [handleCopy sceneIdentifier];
    v24 = [v22 sceneStoreForIdentifier:sceneIdentifier creatingIfNecessary:0];

    v25 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
    [v24 setObject:v25 forKey:@"preferredWindowControlsPlacement"];

    [WeakRetained updateWindowControlsPosition];
  }

  else if (state == 1)
  {
    v11 = dispatch_time(0, 500000000);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __114__SBFullScreenSwitcherSceneLiveContentOverlay__updatePreferredWindowControlsPlacementForSceneHandle_contentState___block_invoke;
    v26[3] = &unk_2783A92D8;
    v27 = handleCopy;
    v28 = WeakRetained;
    dispatch_after(v11, MEMORY[0x277D85CD0], v26);
  }

LABEL_6:
}

uint64_t __114__SBFullScreenSwitcherSceneLiveContentOverlay__updatePreferredWindowControlsPlacementForSceneHandle_contentState___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isContentReady];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setPreferredWindowControlsPlacement:2];
    v3 = *(a1 + 40);

    return [v3 updateWindowControlsPosition];
  }

  return result;
}

- (void)noteKeyboardFocusDidChangeToSceneID:(id)d
{
  if (d)
  {
    deviceApplicationSceneViewController = self->_deviceApplicationSceneViewController;
    dCopy = d;
    sceneHandle = [(SBDeviceApplicationSceneViewControlling *)deviceApplicationSceneViewController sceneHandle];
    sceneIdentifier = [sceneHandle sceneIdentifier];
    v8 = [sceneIdentifier isEqualToString:dCopy];
  }

  else
  {
    v8 = 0;
  }

  _medusaDecoratedDeviceApplicationSceneViewController = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
  [_medusaDecoratedDeviceApplicationSceneViewController setNubViewHighlighted:v8];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__SBFullScreenSwitcherSceneLiveContentOverlay_noteKeyboardFocusDidChangeToSceneID___block_invoke;
  v10[3] = &__block_descriptor_33_e33_v16__0__SBSDisplayLayoutElement_8l;
  v11 = v8;
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self updateDisplayLayoutElementWithBuilder:v10];
}

- (void)setTouchBehavior:(int64_t)behavior
{
  if (self->_touchBehavior != behavior)
  {
    self->_touchBehavior = behavior;
    sceneHandle = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
    sceneIfExists = [sceneHandle sceneIfExists];
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateTouchBehaviorForScene:sceneIfExists];
  }
}

- (void)sceneLayerManagerDidUpdateLayers:(id)layers
{
  scene = [layers scene];
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateTouchBehaviorForScene:scene];
}

- (void)sceneLayerManagerDidStopTrackingLayers:(id)layers
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  layers = [layers layers];
  v5 = [layers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(layers);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_backboardSceneHostRegistrations objectForKey:v9];
        [v10 invalidate];
        [(NSMutableDictionary *)self->_backboardSceneHostRegistrations removeObjectForKey:v9];
      }

      v6 = [layers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings
{
  handleCopy = handle;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  transitionContext = [settingsCopy transitionContext];
  clientSettingsInspector = self->_clientSettingsInspector;
  if (!clientSettingsInspector)
  {
    v11 = objc_alloc_init(MEMORY[0x277D75160]);
    v12 = self->_clientSettingsInspector;
    self->_clientSettingsInspector = v11;

    objc_initWeak(&location, self);
    v13 = self->_clientSettingsInspector;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __83__SBFullScreenSwitcherSceneLiveContentOverlay_sceneHandle_didUpdateClientSettings___block_invoke;
    v17[3] = &unk_2783AC8A0;
    objc_copyWeak(&v18, &location);
    [(UIApplicationSceneClientSettingsDiffInspector *)v13 observeScreenEdgesDeferringSystemGesturesWithBlock:v17];
    v14 = self->_clientSettingsInspector;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __83__SBFullScreenSwitcherSceneLiveContentOverlay_sceneHandle_didUpdateClientSettings___block_invoke_2;
    v15[3] = &unk_2783AC8A0;
    objc_copyWeak(&v16, &location);
    [(UIApplicationSceneClientSettingsDiffInspector *)v14 observeHomeIndicatorAutoHiddenWithBlock:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    clientSettingsInspector = self->_clientSettingsInspector;
  }

  [(UIApplicationSceneClientSettingsDiffInspector *)clientSettingsInspector inspectDiff:settingsDiff withContext:transitionContext];
}

void __83__SBFullScreenSwitcherSceneLiveContentOverlay_sceneHandle_didUpdateClientSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _settingsDidUpdateEdgeProtectOrAutoHideOnHomeGrabberView];
}

void __83__SBFullScreenSwitcherSceneLiveContentOverlay_sceneHandle_didUpdateClientSettings___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _settingsDidUpdateEdgeProtectOrAutoHideOnHomeGrabberView];
}

- (void)sceneHandle:(id)handle didUpdateSettingsWithDiff:(id)diff previousSettings:(id)settings
{
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateOrientationWrapper:handle];

  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateFullOcclusionState];
}

- (void)_updateTouchBehaviorForScene:(id)scene
{
  v29 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  layerManager = [sceneCopy layerManager];
  layers = [layerManager layers];
  v7 = layers;
  if (sceneCopy && [layers count])
  {
    v22 = layerManager;
    v8 = objc_alloc(MEMORY[0x277CF0770]);
    v23 = sceneCopy;
    identifier = [sceneCopy identifier];
    v10 = [v8 initWithIdentifier:identifier touchBehavior:self->_touchBehavior];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v7;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [(NSMutableDictionary *)self->_backboardSceneHostRegistrations objectForKey:v16];
          v18 = v17;
          if (v17)
          {
            [v17 updateSettings:v10];
          }

          else
          {
            mEMORY[0x277CF07A0] = [MEMORY[0x277CF07A0] sharedInstance];
            v20 = [mEMORY[0x277CF07A0] registerSceneHostSettings:v10 forCAContextID:{objc_msgSend(v16, "contextID")}];

            [(NSMutableDictionary *)self->_backboardSceneHostRegistrations setObject:v20 forKey:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    layerManager = v22;
    sceneCopy = v23;
    v7 = v21;
  }
}

- (BOOL)handleVolumeUpButtonPress
{
  _sceneHandleForHardwareButtonEvents = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _sceneHandleForHardwareButtonEvents];
  v3 = _sceneHandleForHardwareButtonEvents;
  if (_sceneHandleForHardwareButtonEvents && ([_sceneHandleForHardwareButtonEvents preferredHardwareButtonEventTypes] & 2) != 0)
  {
    v4 = [v3 handleHardwareButtonEventType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)handleVolumeDownButtonPress
{
  _sceneHandleForHardwareButtonEvents = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _sceneHandleForHardwareButtonEvents];
  v3 = _sceneHandleForHardwareButtonEvents;
  if (_sceneHandleForHardwareButtonEvents && ([_sceneHandleForHardwareButtonEvents preferredHardwareButtonEventTypes] & 4) != 0)
  {
    v4 = [v3 handleHardwareButtonEventType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)handleHeadsetButtonPress:(BOOL)press
{
  pressCopy = press;
  _sceneHandleForHardwareButtonEvents = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _sceneHandleForHardwareButtonEvents];
  v5 = _sceneHandleForHardwareButtonEvents;
  if (_sceneHandleForHardwareButtonEvents)
  {
    preferredHardwareButtonEventTypes = [_sceneHandleForHardwareButtonEvents preferredHardwareButtonEventTypes];
    if (pressCopy)
    {
      if ((preferredHardwareButtonEventTypes & 0x10) != 0)
      {
        v7 = 4;
LABEL_8:
        v8 = [v5 handleHardwareButtonEventType:v7];
        goto LABEL_9;
      }
    }

    else if ((preferredHardwareButtonEventTypes & 8) != 0)
    {
      v7 = 3;
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)liveSceneIdentityToken
{
  sceneHandle = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];

  if ([sceneIfExists isActive])
  {
    settings = [sceneIfExists settings];
    if ([settings isForeground])
    {
      identityToken = [sceneIfExists identityToken];
    }

    else
    {
      identityToken = 0;
    }
  }

  else
  {
    identityToken = 0;
  }

  return identityToken;
}

- (SBFullScreenSwitcherSceneLiveContentOverlayDelegate)statusBarActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarActionDelegate);

  return WeakRetained;
}

- (void)updateDisplayLayoutElementWithBuilder:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 104);
  v4 = v2;
  v5 = [v3 sceneHandle];
  v6 = [v5 sceneIdentifier];
  v7 = [*(a1 + 104) sceneHandle];
  v8 = [v7 displayIdentity];
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_1_10(&dword_21ED4E000, v9, v10, "Trying to update a display layout element for %{public}@ but we can't find the publisher - sceneID: %{public}@ displayIdentity: %{public}@", v11, v12, v13, v14, v15);
}

@end