@interface SBFullScreenSwitcherSceneLiveContentOverlay
- (BOOL)handleHeadsetButtonPress:(BOOL)a3;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)hitTestedToTopAffordance:(CGPoint)a3 window:(id)a4;
- (BOOL)isContentUpdating;
- (BOOL)requiresLegacyRotationSupport;
- (SBFullScreenSwitcherSceneLiveContentOverlay)init;
- (SBFullScreenSwitcherSceneLiveContentOverlayDelegate)statusBarActionDelegate;
- (SBSwitcherLiveContentOverlayDelegate)delegate;
- (SBWindowControlsLayout)windowControlsLayoutForApplicationSceneViewController:(SEL)a3;
- (SBWindowControlsLayout)windowControlsLayoutForMedusaDecoratedDeviceApplicationSceneViewController:(SEL)a3;
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
- (void)_updatePreferredWindowControlsPlacementForSceneHandle:(id)a3 contentState:(int64_t)a4;
- (void)_updateTopAffordanceAutoHide;
- (void)_updateTouchBehaviorForScene:(id)a3;
- (void)applicationSceneViewController:(id)a3 didUpdateStatusBarHidden:(BOOL)a4 withAnimation:(int64_t)a5;
- (void)applicationSceneViewController:(id)a3 statusBarDoubleTapped:(id)a4;
- (void)applicationSceneViewController:(id)a3 statusBarTapped:(id)a4 tapActionType:(int64_t)a5;
- (void)applicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:(id)a3;
- (void)configureWithWorkspaceEntity:(id)a3 referenceFrame:(CGRect)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6 layoutRole:(int64_t)a7 sbsDisplayLayoutRole:(int64_t)a8 zOrderIndex:(int64_t)a9 spaceConfiguration:(int64_t)a10 floatingConfiguration:(int64_t)a11 hasClassicAppOrientationMismatch:(BOOL)a12 sizingPolicy:(int64_t)a13;
- (void)dealloc;
- (void)disableAsynchronousRenderingForNextCommit;
- (void)invalidate;
- (void)medusaDecoratedApplicationSceneViewController:(id)a3 didUpdateStatusBarHidden:(BOOL)a4 withAnimation:(int64_t)a5;
- (void)medusaDecoratedDeviceApplicationSceneViewController:(id)a3 statusBarDoubleTapped:(id)a4;
- (void)medusaDecoratedDeviceApplicationSceneViewController:(id)a3 statusBarTapped:(id)a4 tapActionType:(int64_t)a5;
- (void)medusaDecoratedDeviceApplicationSceneViewController:(id)a3 topAffordanceActionPerformed:(int64_t)a4;
- (void)medusaDecoratedDeviceApplicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:(id)a3;
- (void)noteKeyboardFocusDidChangeToSceneID:(id)a3;
- (void)sceneHandle:(id)a3 didCreateScene:(id)a4;
- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4;
- (void)sceneHandle:(id)a3 didUpdateContentState:(int64_t)a4;
- (void)sceneHandle:(id)a3 didUpdateSettingsWithDiff:(id)a4 previousSettings:(id)a5;
- (void)sceneLayerManagerDidStopTrackingLayers:(id)a3;
- (void)sceneLayerManagerDidUpdateLayers:(id)a3;
- (void)setActiveAppearance:(int64_t)a3;
- (void)setAsyncRenderingDisabled:(BOOL)a3;
- (void)setAsyncRenderingEnabled:(BOOL)a3 withMinificationFilterEnabled:(BOOL)a4;
- (void)setBlurViewIconScale:(double)a3;
- (void)setContainerOrientation:(int64_t)a3;
- (void)setDimmed:(BOOL)a3;
- (void)setDisableFlattening:(BOOL)a3;
- (void)setDisplayLayoutElementActive:(BOOL)a3;
- (void)setLiveContentBlurEnabled:(BOOL)a3 duration:(double)a4 blurDelay:(double)a5 iconViewScale:(double)a6 began:(id)a7 completion:(id)a8;
- (void)setMatchMovedToScene:(BOOL)a3;
- (void)setOcclusionState:(int64_t)a3 inSteadyState:(BOOL)a4;
- (void)setShouldPreventFlatteningUnoccludedScenes:(BOOL)a3;
- (void)setStatusBarHidden:(BOOL)a3 nubViewHidden:(BOOL)a4 animator:(id)a5;
- (void)setTouchBehavior:(int64_t)a3;
- (void)setWantsEnhancedWindowingEnabled:(BOOL)a3;
- (void)updateDisplayLayoutElementWithBuilder:(id)a3;
- (void)updateTopAffordanceContextMenuWithOptions:(int64_t)a3 selectedActionType:(int64_t)a4 layout:(SBWindowControlsLayout *)a5 hidden:(BOOL)a6 interfaceOrientation:(int64_t)a7;
- (void)updateWindowControlsLayout:(SBWindowControlsLayout *)a3;
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
  v3 = *(a1 + 104);
  v4 = v2;
  v5 = [v3 sceneHandle];
  v6 = [v5 sceneIdentifier];
  v7 = [*(a1 + 104) sceneHandle];
  v8 = [v7 displayIdentity];
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_1_10(&dword_21ED4E000, v9, v10, "Trying to activate a display layout element for %{public}@ but we can't find the publisher - sceneID: %{public}@ displayIdentity: %{public}@", v11, v12, v13, v14, v15);
}

- (void)_updateOrientationWrapper
{
  v3 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  v4 = [v3 sceneIfExists];
  v5 = [v4 settings];
  v6 = v5;
  if (!v4 || ([v5 sb_displayIdentityForSceneManagers], v7 = objc_claimAutoreleasedReturnValue(), -[SBDeviceApplicationSceneViewControlling _fbsDisplayIdentity](self->_deviceApplicationSceneViewController, "_fbsDisplayIdentity"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, v9))
  {
    v10 = [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView _sbWindowScene];
    v11 = [v3 _supportsMixedOrientationOnWindowScene:v10];

    if (v11)
    {
      containerOrientation = self->_containerOrientation;
    }

    else
    {
      v13 = [v6 interfaceOrientation];
      v14 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController contentOrientation];
      if (v14 <= 1)
      {
        containerOrientation = 1;
      }

      else
      {
        containerOrientation = v14;
      }

      if (v13)
      {
        containerOrientation = v13;
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
  v4 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  v5 = [v4 isAutoHideEnabledForHomeAffordance];

  [v6 _setTopAffordanceAutoHides:v5];
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
  v3 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self delegate];
  v4 = [v3 windowSceneForLiveContentOverlay:self];

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
    v2 = [MEMORY[0x277D75418] currentDevice];
    if ([v2 userInterfaceIdiom] != 1)
    {

      goto LABEL_13;
    }
  }

  v6 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _sbWindowScene];
  v7 = [v6 switcherController];
  v8 = [v7 windowManagementContext];
  v9 = [v8 baseStyle];

  if ((v5 & 1) == 0)
  {
  }

  if (v9)
  {
    v10 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
    v11 = [v10 isOccluded];

    if (((v11 & 1) != 0 || !self->_shouldPreventFlatteningUnoccludedScenes) && !self->_disableFlattening)
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
  v3 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self delegate];
  [v3 liveContentOverlayDidUpdateHomeAffordanceEdgeProtectOrAutoHide:self];

  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateTopAffordanceAutoHide];
}

- (void)dealloc
{
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self invalidate];
  v3 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  [v3 removeObserver:self];

  v4 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  v5 = [v4 sceneIfExists];
  v6 = [v5 layerManager];
  [v6 removeObserver:self];

  [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController invalidate];
  v7.receiver = self;
  v7.super_class = SBFullScreenSwitcherSceneLiveContentOverlay;
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)&v7 dealloc];
}

- (void)setContainerOrientation:(int64_t)a3
{
  if (self->_containerOrientation != a3)
  {
    self->_containerOrientation = a3;
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateOrientationWrapper];
  }
}

- (void)configureWithWorkspaceEntity:(id)a3 referenceFrame:(CGRect)a4 contentOrientation:(int64_t)a5 containerOrientation:(int64_t)a6 layoutRole:(int64_t)a7 sbsDisplayLayoutRole:(int64_t)a8 zOrderIndex:(int64_t)a9 spaceConfiguration:(int64_t)a10 floatingConfiguration:(int64_t)a11 hasClassicAppOrientationMismatch:(BOOL)a12 sizingPolicy:(int64_t)a13
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v19 = a3;
  v20 = [v19 deviceApplicationSceneEntity];
  v21 = [v20 sceneHandle];
  v22 = [MEMORY[0x277D75418] currentDevice];
  v23 = [v22 userInterfaceIdiom];

  v24 = v23 & 0xFFFFFFFFFFFFFFFBLL;
  deviceApplicationSceneViewController = self->_deviceApplicationSceneViewController;
  v26 = [v20 isFrozen];
  self->_isFrozen = v26;
  if (v26)
  {
    v27 = 2;
  }

  else
  {
    v27 = 4;
  }

  if (!deviceApplicationSceneViewController)
  {
    [v21 addObserver:self];
    v50 = a9;
    if (v24 == 1)
    {
      v28 = -[SBMedusaDecoratedDeviceApplicationSceneViewController initWithDeviceApplicationSceneHandle:layoutRole:]([SBMedusaDecoratedDeviceApplicationSceneViewController alloc], "initWithDeviceApplicationSceneHandle:layoutRole:", v21, [v19 layoutRole]);
      [(SBMedusaDecoratedDeviceApplicationSceneViewController *)v28 setDelegate:self];
      [(SBMedusaDecoratedDeviceApplicationSceneViewController *)v28 setNubViewHidden:0];
    }

    else
    {
      v28 = [[SBDeviceApplicationSceneViewController alloc] initWithSceneHandle:v21];
      [(SBMedusaDecoratedDeviceApplicationSceneViewController *)v28 setShouldDrawStatusBarInsideSceneView:1];
      [(SBMedusaDecoratedDeviceApplicationSceneViewController *)v28 setDelegate:self];
    }

    v29 = self->_deviceApplicationSceneViewController;
    self->_deviceApplicationSceneViewController = v28;

    [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController setDisplayMode:v27 animationFactory:0 completion:0];
    v30 = objc_alloc(MEMORY[0x277D66A50]);
    v31 = [v21 sceneIdentifier];
    v32 = [v30 initWithIdentifier:v31];
    displayLayoutElement = self->_displayLayoutElement;
    self->_displayLayoutElement = v32;

    a9 = v50;
  }

  [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController setHomeGrabberDisplayMode:1, v50];
  v34 = [(SBDeviceApplicationScenePlaceholderContentContext *)[SBMutableDeviceApplicationScenePlaceholderContentContext alloc] initWithActivationSettings:v19];
  [(SBDeviceApplicationScenePlaceholderContentContext *)v34 setLayoutEnvironment:1];
  [(SBDeviceApplicationScenePlaceholderContentContext *)v34 setHasOrientationMismatchForClassicApp:a12];
  [(SBDeviceApplicationScenePlaceholderContentContext *)v34 setSizingPolicy:a13];
  [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController setPlaceholderContentContext:v34];
  if (v24 == 1)
  {
    v35 = objc_opt_class();
    v36 = SBSafeCast(v35, self->_deviceApplicationSceneViewController);
    [v36 setLayoutRole:a7 spaceConfiguration:a10 floatingConfiguration:a11 sizingPolicy:a13];
  }

  [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController setContentReferenceSize:a5 withContentOrientation:a6 andContainerOrientation:width, height];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __262__SBFullScreenSwitcherSceneLiveContentOverlay_configureWithWorkspaceEntity_referenceFrame_contentOrientation_containerOrientation_layoutRole_sbsDisplayLayoutRole_zOrderIndex_spaceConfiguration_floatingConfiguration_hasClassicAppOrientationMismatch_sizingPolicy___block_invoke;
  v55[3] = &unk_2783B0AC0;
  v37 = v21;
  v56 = v37;
  v57 = a8;
  v58 = a9;
  v59 = x;
  v60 = y;
  v61 = width;
  v62 = height;
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self updateDisplayLayoutElementWithBuilder:v55];
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateDisplayLayoutElementActive];
  [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController setDisplayMode:v27 animationFactory:0 completion:0];
  v38 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  HaveTransparentBackground = SBApplicationMightHaveTransparentBackground(v38);

  if (HaveTransparentBackground)
  {
    v40 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController backgroundView];
    if (objc_opt_respondsToSelector())
    {
      [v40 setFullscreen:1];
    }

    if (objc_opt_respondsToSelector())
    {
      [v40 setTransformOptions:{objc_msgSend(v40, "transformOptions") | 2}];
    }
  }

  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateTopAffordanceAutoHide];
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateOrientationWrapper];
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateFullOcclusionState];
  v41 = [SBApp windowSceneManager];
  v42 = [v41 windowSceneForSceneHandle:v37];
  v43 = [v42 switcherController];
  v44 = [v43 traitsParticipantForSceneHandle:v37];

  [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController containerDidUpdateTraitsParticipant:v44];
  v45 = [v37 sceneIfExists];
  v46 = [v45 layerManager];
  v47 = v46;
  if (v45)
  {
    v48 = [v46 layers];
    v49 = [v48 count];

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

- (void)setStatusBarHidden:(BOOL)a3 nubViewHidden:(BOOL)a4 animator:(id)a5
{
  v5 = a4;
  v8 = a5;
  if (a3 || v5)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __89__SBFullScreenSwitcherSceneLiveContentOverlay_setStatusBarHidden_nubViewHidden_animator___block_invoke;
    v17[3] = &unk_2783AC158;
    v17[4] = self;
    v18 = a3;
    v19 = v5;
    v12 = MEMORY[0x223D6F7F0](v17);
    v10 = v12;
    if (v8)
    {
      v8[2](v8, v12, 0);
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
    if (v8)
    {
      v8[2](v8, v10, v11);
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

- (void)setDimmed:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
  v6 = v4;
  v5 = 0.0;
  if (v3)
  {
    v5 = 1.0;
  }

  [v4 setDarkenViewAlpha:v5];
}

- (void)setMatchMovedToScene:(BOOL)a3
{
  if (self->_matchMovedToScene != a3)
  {
    v4 = a3;
    self->_matchMovedToScene = a3;
    v5 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
    v6 = v5;
    if (v4)
    {
      [v5 _beginRequiringSceneViewMatchMoveAnimationForReason:@"switcher"];
    }

    else
    {
      [v5 _endRequiringSceneViewMatchMoveAnimationForReason:@"switcher"];
    }
  }
}

- (BOOL)isContentUpdating
{
  v2 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  v3 = [v2 isSceneUpdateInProgress];

  return v3;
}

- (void)setAsyncRenderingDisabled:(BOOL)a3
{
  if (self->_asyncRenderingDisabled != a3)
  {
    self->_asyncRenderingDisabled = a3;
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateAsyncRendering];
  }
}

- (void)setOcclusionState:(int64_t)a3 inSteadyState:(BOOL)a4
{
  v4 = a4;
  IsOccluded = SBOcclusionStateIsOccluded(a3);
  v8 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  [v8 setOccluded:IsOccluded];

  isInSteadyState = self->_isInSteadyState;
  if (a3 != 3 || v4)
  {
    if (self->_occlusionState != a3)
    {
      self->_occlusionState = a3;
    }

    if (isInSteadyState != v4)
    {
      self->_isInSteadyState = v4;
    }

    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateFullOcclusionState];

    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateFlatteningMode];
  }
}

- (void)setAsyncRenderingEnabled:(BOOL)a3 withMinificationFilterEnabled:(BOOL)a4
{
  if (self->_asyncRenderingEnabled != a3 || self->_wantsMinificationFilter != a4)
  {
    self->_asyncRenderingEnabled = a3;
    self->_wantsMinificationFilter = a4;
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

- (void)setWantsEnhancedWindowingEnabled:(BOOL)a3
{
  if (self->_wantsEnhancedWindowingEnabled != a3)
  {
    v4 = a3;
    self->_wantsEnhancedWindowingEnabled = a3;
    v5 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
    [v5 setWantsEnhancedWindowingEnabled:v4];
  }
}

- (void)setShouldPreventFlatteningUnoccludedScenes:(BOOL)a3
{
  if (self->_shouldPreventFlatteningUnoccludedScenes != a3)
  {
    self->_shouldPreventFlatteningUnoccludedScenes = a3;
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateFlatteningMode];
  }
}

- (void)setDisableFlattening:(BOOL)a3
{
  if (self->_disableFlattening != a3)
  {
    self->_disableFlattening = a3;
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateFlatteningMode];
  }
}

- (BOOL)requiresLegacyRotationSupport
{
  v2 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  v3 = [v2 wantsDeviceOrientationEventsEnabled];

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  v3 = v2;
  if (v2 && ([v2 _supportsMixedOrientation] & 1) == 0)
  {
    v4 = [v3 supportedInterfaceOrientations];
  }

  else
  {
    v4 = 30;
  }

  return v4;
}

- (int64_t)preferredInterfaceOrientation
{
  v2 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  if ([v2 isEffectivelyForeground])
  {
    v3 = [v2 currentInterfaceOrientation];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)newPortaledLiveContentOverlayView
{
  v2 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self contentOverlayView];
  if (v2)
  {
    v3 = objc_alloc_init(SBPortalView);
    [(SBPortalView *)v3 setSourceView:v2];
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
  v4 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController contentReferenceSize];
  v7 = [(SBDeviceApplicationSceneView *)v3 initWithSceneHandle:v4 referenceSize:[(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController contentOrientation] contentOrientation:[(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController containerOrientation] containerOrientation:0 hostRequester:v5, v6];

  [(SBSceneView *)v7 setDisplayMode:3 animationFactory:0 completion:0];
  return v7;
}

- (BOOL)hitTestedToTopAffordance:(CGPoint)a3 window:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
  v9 = [v8 hitTestToTopAffordance:v7 window:{x, y}];

  return v9 != 0;
}

- (void)setDisplayLayoutElementActive:(BOOL)a3
{
  if (self->_displayLayoutElementActive != a3)
  {
    self->_displayLayoutElementActive = a3;
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateDisplayLayoutElementActive];
  }
}

- (void)setActiveAppearance:(int64_t)a3
{
  if (self->_activeAppearance != a3)
  {
    v13[9] = v3;
    v13[10] = v4;
    self->_activeAppearance = a3;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __67__SBFullScreenSwitcherSceneLiveContentOverlay_setActiveAppearance___block_invoke;
    v13[3] = &unk_2783A8C18;
    v13[4] = self;
    [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v13];
    v7 = self->_activeAppearanceAssertion;
    v8 = v7;
    if (!v7 || [(SBSceneHandleActiveAppearanceAssertion *)v7 activeAppearance]!= a3)
    {
      v9 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
      v10 = [v9 acquireActiveAppearanceAssertionWithReason:@"switcher style update" activeAppearance:a3 priority:1];
      activeAppearanceAssertion = self->_activeAppearanceAssertion;
      self->_activeAppearanceAssertion = v10;

      [(BSSimpleAssertion *)v8 invalidate];
    }

    v12 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
    [v12 setActiveAppearance:a3];
  }
}

- (id)windowControlsView
{
  v2 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
  v3 = [v2 windowControlsView];

  return v3;
}

- (void)updateTopAffordanceContextMenuWithOptions:(int64_t)a3 selectedActionType:(int64_t)a4 layout:(SBWindowControlsLayout *)a5 hidden:(BOOL)a6 interfaceOrientation:(int64_t)a7
{
  v8 = a6;
  v12 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
  margin = a5->margin;
  v14[0] = *&a5->style;
  v14[1] = margin;
  [v12 updateTopAffordanceContextMenuWithOptions:a3 selectedActionType:a4 layout:v14 hidden:v8 interfaceOrientation:a7];
}

- (void)updateWindowControlsLayout:(SBWindowControlsLayout *)a3
{
  v4 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
  margin = a3->margin;
  v6[0] = *&a3->style;
  v6[1] = margin;
  [v4 updateWindowControlsLayout:v6];
}

- (void)medusaDecoratedDeviceApplicationSceneViewController:(id)a3 statusBarTapped:(id)a4 tapActionType:(int64_t)a5
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_statusBarActionDelegate);
  [WeakRetained fullScreenSwitcherSceneLiveContentOverlay:self tappedStatusBar:v7 tapActionType:a5];
}

- (void)medusaDecoratedDeviceApplicationSceneViewController:(id)a3 statusBarDoubleTapped:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_statusBarActionDelegate);
  [WeakRetained fullScreenSwitcherSceneLiveContentOverlay:self doubleTappedStatusBar:v5];
}

- (void)medusaDecoratedDeviceApplicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained liveContentOverlayDidUpdateHomeAffordanceSupportedOrientations:self];
}

- (void)medusaDecoratedDeviceApplicationSceneViewController:(id)a3 topAffordanceActionPerformed:(int64_t)a4
{
  v6 = [a3 sceneHandle];
  v8 = [v6 displayItemRepresentation];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained performTopAffordanceAction:a4 forDisplayItem:v8];
}

- (SBWindowControlsLayout)windowControlsLayoutForMedusaDecoratedDeviceApplicationSceneViewController:(SEL)a3
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

- (void)medusaDecoratedApplicationSceneViewController:(id)a3 didUpdateStatusBarHidden:(BOOL)a4 withAnimation:(int64_t)a5
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained liveContentOverlay:self didUpdateStatusBarHiddenSceneSettings:v6 withAnimation:a5];
}

- (void)applicationSceneViewController:(id)a3 statusBarTapped:(id)a4 tapActionType:(int64_t)a5
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_statusBarActionDelegate);
  [WeakRetained fullScreenSwitcherSceneLiveContentOverlay:self tappedStatusBar:v7 tapActionType:a5];
}

- (void)applicationSceneViewController:(id)a3 statusBarDoubleTapped:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_statusBarActionDelegate);
  [WeakRetained fullScreenSwitcherSceneLiveContentOverlay:self doubleTappedStatusBar:v5];
}

- (void)applicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained liveContentOverlayDidUpdateHomeAffordanceSupportedOrientations:self];
}

- (SBWindowControlsLayout)windowControlsLayoutForApplicationSceneViewController:(SEL)a3
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

- (void)applicationSceneViewController:(id)a3 didUpdateStatusBarHidden:(BOOL)a4 withAnimation:(int64_t)a5
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained liveContentOverlay:self didUpdateStatusBarHiddenSceneSettings:v6 withAnimation:a5];
}

- (void)setLiveContentBlurEnabled:(BOOL)a3 duration:(double)a4 blurDelay:(double)a5 iconViewScale:(double)a6 began:(id)a7 completion:(id)a8
{
  v12 = a3;
  v14 = a8;
  v15 = a7;
  v16 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
  [v16 setLiveContentBlurEnabled:v12 duration:v15 blurDelay:v14 iconViewScale:a4 began:a5 completion:a6];
}

- (void)setBlurViewIconScale:(double)a3
{
  v4 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
  [v4 setBlurViewIconScale:a3];
}

- (void)updateDisplayLayoutElementWithBuilder:(id)a3
{
  if (self->_displayLayoutElementAssertion)
  {
    v5 = a3;
    v6 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _sbWindowScene];
    v7 = [v6 displayLayoutPublisher];

    if (!v7)
    {
      v8 = SBLogAppSwitcher();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SBFullScreenSwitcherSceneLiveContentOverlay updateDisplayLayoutElementWithBuilder:?];
      }

      v9 = [MEMORY[0x277CCA890] currentHandler];
      v10 = objc_opt_class();
      v11 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
      v12 = [v11 sceneIdentifier];
      v13 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
      v14 = [v13 displayIdentity];
      [v9 handleFailureInMethod:a2 object:self file:@"SBFullScreenSwitcherLiveContentOverlayCoordinator.m" lineNumber:2152 description:{@"No publisher - %@ sceneID: %@ displayIdentity: %@", v10, v12, v14}];
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v7 transitionAssertionWithReason:v16];

    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;

    v5[2](v5, self->_displayLayoutElement);
    v19 = [v7 addElement:self->_displayLayoutElement];
    v20 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v19;

    [v17 invalidate];
  }

  else
  {
    v21 = *(a3 + 2);
    v7 = a3;
    v21();
  }
}

- (void)sceneHandle:(id)a3 didCreateScene:(id)a4
{
  v13 = a4;
  deviceApplicationSceneViewController = self->_deviceApplicationSceneViewController;
  v7 = a3;
  v8 = [(SBDeviceApplicationSceneViewControlling *)deviceApplicationSceneViewController sceneHandle];

  if (v8 == v7)
  {
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateOrientationWrapper];
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateAsyncRendering];
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateFullOcclusionState];
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateFlatteningMode];
    v9 = [v13 layerManager];
    v10 = [v9 layers];
    v11 = [v10 count];

    if (v11)
    {
      [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateTouchBehaviorForScene:v13];
    }

    else
    {
      [v9 addObserver:self];
    }

    v12 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
    -[SBFullScreenSwitcherSceneLiveContentOverlay _updatePreferredWindowControlsPlacementForSceneHandle:contentState:](self, "_updatePreferredWindowControlsPlacementForSceneHandle:contentState:", v12, [v13 contentState]);
  }
}

- (void)sceneHandle:(id)a3 didUpdateContentState:(int64_t)a4
{
  deviceApplicationSceneViewController = self->_deviceApplicationSceneViewController;
  v7 = a3;
  v9 = [(SBDeviceApplicationSceneViewControlling *)deviceApplicationSceneViewController sceneHandle];
  v8 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];

  if (v8 == v7)
  {
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updatePreferredWindowControlsPlacementForSceneHandle:v9 contentState:a4];
  }
}

- (void)_updatePreferredWindowControlsPlacementForSceneHandle:(id)a3 contentState:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 application];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [v7 info];
  if ([v9 wantsFullScreen])
  {

    goto LABEL_4;
  }

  v10 = [v7 classicAppPhoneAppRunningOnPad];

  if (v10)
  {
LABEL_4:
    if ([v6 preferredWindowControlsPlacement] != 4)
    {
      [v6 setPreferredWindowControlsPlacement:4];
      [WeakRetained updateWindowControlsPosition];
    }

    goto LABEL_6;
  }

  if (a4 == 2)
  {
    v12 = [v6 sceneIfExists];
    v13 = [v12 ui_windowingControl];

    v14 = [v13 preferredWindowingControlStyleType];
    v15 = SBSceneWindowControlsPlacementFromSceneWindowingControlStyleType(v14);
    v16 = [v7 info];
    v17 = [v16 requiresPreSolariumDesign];

    if (((v14 == 0) & v17) != 0)
    {
      v18 = 4;
    }

    else
    {
      v18 = v15;
    }

    [v6 setPreferredWindowControlsPlacement:v18];
    v19 = MEMORY[0x277D0AC98];
    v20 = [v6 application];
    v21 = [v20 bundleIdentifier];
    v22 = [v19 storeForApplication:v21];

    v23 = [v6 sceneIdentifier];
    v24 = [v22 sceneStoreForIdentifier:v23 creatingIfNecessary:0];

    v25 = [MEMORY[0x277CCABB0] numberWithInteger:v15];
    [v24 setObject:v25 forKey:@"preferredWindowControlsPlacement"];

    [WeakRetained updateWindowControlsPosition];
  }

  else if (a4 == 1)
  {
    v11 = dispatch_time(0, 500000000);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __114__SBFullScreenSwitcherSceneLiveContentOverlay__updatePreferredWindowControlsPlacementForSceneHandle_contentState___block_invoke;
    v26[3] = &unk_2783A92D8;
    v27 = v6;
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

- (void)noteKeyboardFocusDidChangeToSceneID:(id)a3
{
  if (a3)
  {
    deviceApplicationSceneViewController = self->_deviceApplicationSceneViewController;
    v5 = a3;
    v6 = [(SBDeviceApplicationSceneViewControlling *)deviceApplicationSceneViewController sceneHandle];
    v7 = [v6 sceneIdentifier];
    v8 = [v7 isEqualToString:v5];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _medusaDecoratedDeviceApplicationSceneViewController];
  [v9 setNubViewHighlighted:v8];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__SBFullScreenSwitcherSceneLiveContentOverlay_noteKeyboardFocusDidChangeToSceneID___block_invoke;
  v10[3] = &__block_descriptor_33_e33_v16__0__SBSDisplayLayoutElement_8l;
  v11 = v8;
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self updateDisplayLayoutElementWithBuilder:v10];
}

- (void)setTouchBehavior:(int64_t)a3
{
  if (self->_touchBehavior != a3)
  {
    self->_touchBehavior = a3;
    v6 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
    v5 = [v6 sceneIfExists];
    [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateTouchBehaviorForScene:v5];
  }
}

- (void)sceneLayerManagerDidUpdateLayers:(id)a3
{
  v4 = [a3 scene];
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateTouchBehaviorForScene:v4];
}

- (void)sceneLayerManagerDidStopTrackingLayers:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a3 layers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_backboardSceneHostRegistrations objectForKey:v9];
        [v10 invalidate];
        [(NSMutableDictionary *)self->_backboardSceneHostRegistrations removeObjectForKey:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 settingsDiff];
  v9 = [v7 transitionContext];
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

  [(UIApplicationSceneClientSettingsDiffInspector *)clientSettingsInspector inspectDiff:v8 withContext:v9];
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

- (void)sceneHandle:(id)a3 didUpdateSettingsWithDiff:(id)a4 previousSettings:(id)a5
{
  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateOrientationWrapper:a3];

  [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _updateFullOcclusionState];
}

- (void)_updateTouchBehaviorForScene:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 layerManager];
  v6 = [v5 layers];
  v7 = v6;
  if (v4 && [v6 count])
  {
    v22 = v5;
    v8 = objc_alloc(MEMORY[0x277CF0770]);
    v23 = v4;
    v9 = [v4 identifier];
    v10 = [v8 initWithIdentifier:v9 touchBehavior:self->_touchBehavior];

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
            v19 = [MEMORY[0x277CF07A0] sharedInstance];
            v20 = [v19 registerSceneHostSettings:v10 forCAContextID:{objc_msgSend(v16, "contextID")}];

            [(NSMutableDictionary *)self->_backboardSceneHostRegistrations setObject:v20 forKey:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    v5 = v22;
    v4 = v23;
    v7 = v21;
  }
}

- (BOOL)handleVolumeUpButtonPress
{
  v2 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _sceneHandleForHardwareButtonEvents];
  v3 = v2;
  if (v2 && ([v2 preferredHardwareButtonEventTypes] & 2) != 0)
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
  v2 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _sceneHandleForHardwareButtonEvents];
  v3 = v2;
  if (v2 && ([v2 preferredHardwareButtonEventTypes] & 4) != 0)
  {
    v4 = [v3 handleHardwareButtonEventType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)handleHeadsetButtonPress:(BOOL)a3
{
  v3 = a3;
  v4 = [(SBFullScreenSwitcherSceneLiveContentOverlay *)self _sceneHandleForHardwareButtonEvents];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 preferredHardwareButtonEventTypes];
    if (v3)
    {
      if ((v6 & 0x10) != 0)
      {
        v7 = 4;
LABEL_8:
        v8 = [v5 handleHardwareButtonEventType:v7];
        goto LABEL_9;
      }
    }

    else if ((v6 & 8) != 0)
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
  v2 = [(SBDeviceApplicationSceneViewControlling *)self->_deviceApplicationSceneViewController sceneHandle];
  v3 = [v2 sceneIfExists];

  if ([v3 isActive])
  {
    v4 = [v3 settings];
    if ([v4 isForeground])
    {
      v5 = [v3 identityToken];
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

  return v5;
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