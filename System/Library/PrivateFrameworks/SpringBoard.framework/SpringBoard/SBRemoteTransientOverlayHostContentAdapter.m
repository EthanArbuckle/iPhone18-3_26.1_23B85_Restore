@interface SBRemoteTransientOverlayHostContentAdapter
+ (void)requestContentAdaptersForAlertDefinition:(id)a3 sceneWorkspaceController:(id)a4 connectionHandler:(id)a5;
- (BOOL)_allowsHomeButtonDismissal;
- (BOOL)_performButtonEvents:(unint64_t)a3;
- (BOOL)_shouldInvalidateForSecureDrawingMode;
- (BOOL)allowsStackingOverlayContentAbove;
- (BOOL)handleHeadsetButtonPress:(BOOL)a3;
- (BOOL)handleHomeButtonPress;
- (BOOL)handleLockButtonPress;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)isAttachedToWindowedAccessory;
- (BOOL)isPresentedFromSceneWithIdentityTokenString:(id)a3;
- (BOOL)shouldDisableBanners;
- (BOOL)shouldDisableControlCenter;
- (BOOL)shouldDisableInteractiveScreenshotGesture;
- (BOOL)shouldDisableOrientationUpdates;
- (BOOL)shouldDisableReachability;
- (BOOL)shouldDisableSiri;
- (BOOL)shouldIgnoreContentOverlayInsetUpdates;
- (BOOL)shouldPendAlertItems;
- (CGRect)windowedAccessoryCutoutFrameInScreen;
- (FBSSceneIdentityToken)clientSceneIdentityToken;
- (NSNumber)preferredSceneDeactivationReasonValue;
- (NSSet)preferredBackgroundActivitiesToSuppress;
- (NSString)associatedSceneIdentifierToSuppressInSystemAperture;
- (NSString)preferredDisplayLayoutElementIdentifier;
- (NSString)serviceBundleIdentifier;
- (SBIdleTimerCoordinating)idleTimerCoordinator;
- (SBRemoteTransientOverlayHostContentAdapterDelegate)delegate;
- (id)_contentViewController;
- (id)_initWithContentViewController:(id)a3;
- (id)_initWithSceneController:(id)a3 processIdentity:(id)a4 configurationIdentifier:(id)a5;
- (id)contentViewControllerForPresentationEmbeddedInSceneView:(BOOL)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)dismissScene:(id)a3;
- (id)keyboardFocusTarget;
- (id)presentScene:(id)a3 viewControllerBuilderBlock:(id)a4;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int)preferredStatusBarVisibility;
- (int)serviceProcessIdentifier;
- (int64_t)defaultPreferredInterfaceOrientationForPresentationForRemoteTransientOverlayHostViewController:(id)a3;
- (int64_t)idleTimerDuration;
- (int64_t)idleTimerMode;
- (int64_t)idleWarnMode;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (int64_t)preferredStatusBarStyle;
- (int64_t)preferredWhitePointAdaptivityStyle;
- (unint64_t)_desiredHardwareButtonEvents;
- (unint64_t)supportedInterfaceOrientations;
- (void)_callSceneViewControllerReadyBlockWithError:(id)a3;
- (void)_handleUpdatedSwipeDismissalStyle:(int64_t)a3;
- (void)_setDesiredAutoLockDuration:(double)a3;
- (void)_setDesiredIdleTimerSettings:(id)a3;
- (void)_setIdleTimerDisabled:(BOOL)a3 forReason:(id)a4;
- (void)_updateBackgroundActivitiesToSuppressWithAnimationSettings:(id)a3;
- (void)_updateContentOpaqueProperty;
- (void)_updatePreferredBackgroundStyleWithAnimationSettings:(id)a3;
- (void)_updatePreferredGestureDismissalStyles;
- (void)_updatePreferredWhitePointAdaptivityStyle:(int64_t)a3;
- (void)_willEnableSecureRendering:(id)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)didDeactivateForRemoteAlertSessionDeactivation;
- (void)didInvalidateForRemoteAlert;
- (void)didTransitionToAttachedToWindowedAccessory:(BOOL)a3 windowedAccessoryCutoutFrameInScreen:(CGRect)a4;
- (void)dismissForTransientOverlayAnimated:(BOOL)a3 completion:(id)a4;
- (void)doBoundsPreservingRotationFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4;
- (void)featurePolicyHostComponentDidChangeShouldDisableAlertItems:(id)a3;
- (void)featurePolicyHostComponentDidChangeShouldDisableBanners:(id)a3;
- (void)featurePolicyHostComponentDidChangeShouldDisableControlCenter:(id)a3;
- (void)featurePolicyHostComponentDidChangeShouldDisableInteractiveScreenshotGesture:(id)a3;
- (void)featurePolicyHostComponentDidChangeShouldDisableReachability:(id)a3;
- (void)featurePolicyHostComponentDidChangeShouldDisableSiri:(id)a3;
- (void)handlePictureInPictureDidBegin;
- (void)prepareForActivationWithContext:(id)a3 presentationMode:(int64_t)a4 windowScene:(id)a5 completion:(id)a6;
- (void)presentForTransientOverlayAnimated:(BOOL)a3 completion:(id)a4;
- (void)remoteAlertSceneHostComponent:(id)a3 didChangePreferredStatusBarVisibilityWithAnimationSettings:(id)a4;
- (void)remoteAlertSceneHostComponentDidChangeDesiredAutoLockDuration:(id)a3;
- (void)remoteAlertSceneHostComponentDidChangeDesiredIdleTimerSettings:(id)a3;
- (void)remoteAlertSceneHostComponentDidChangeHIDEventDeferringDisabled:(id)a3;
- (void)remoteAlertSceneHostComponentDidChangePreferredSceneDeactivationReason:(id)a3;
- (void)remoteAlertSceneHostComponentDidChangeShouldDisableOrientationUpdates:(id)a3;
- (void)remoteAlertSceneHostComponentDidChangeSupportedInterfaceOrientations:(id)a3;
- (void)remoteAlertSceneHostComponentDidChangeSwipeDismissalStyle:(id)a3;
- (void)remoteAlertSceneHostComponentDidChangeWhitePointAdaptivityStyle:(id)a3;
- (void)remoteAlertSceneHostComponentDidDeactivate:(id)a3;
- (void)remoteAlertSceneHostComponentDidInvalidate:(id)a3;
- (void)remoteTransientOverlayHostViewController:(id)a3 didTerminateWithError:(id)a4;
- (void)remoteTransientOverlayHostViewController:(id)a3 requestsWallpaperEffectUpdateWithAnimationSettings:(id)a4;
- (void)remoteTransientOverlayHostViewControllerDidChangeFeaturePolicy:(id)a3;
- (void)remoteTransientOverlayHostViewControllerDidChangePreferredSceneDeactivationReasonValue:(id)a3;
- (void)remoteTransientOverlayHostViewControllerDidChangeShouldDisableOrientationUpdates:(id)a3;
- (void)remoteTransientOverlayHostViewControllerDidChangeSwipeDismissalStyle:(id)a3;
- (void)remoteTransientOverlayHostViewControllerRequestsDeactivation:(id)a3;
- (void)remoteTransientOverlayHostViewControllerRequestsInvalidation:(id)a3;
- (void)scene:(id)a3 clientDidConnect:(id)a4;
- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4;
- (void)setIsScreenshotMarkup:(BOOL)a3;
- (void)setShouldPresentEmbeddedInTargetSceneIfRequested:(BOOL)a3;
@end

@implementation SBRemoteTransientOverlayHostContentAdapter

- (id)_initWithContentViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBRemoteTransientOverlayHostContentAdapter;
  v6 = [(SBRemoteTransientOverlayHostContentAdapter *)&v9 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_hostRemoteViewController, a3);
    [p_isa[13] setDelegate:p_isa];
  }

  return p_isa;
}

- (id)_initWithSceneController:(id)a3 processIdentity:(id)a4 configurationIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = SBRemoteTransientOverlayHostContentAdapter;
  v12 = [(SBRemoteTransientOverlayHostContentAdapter *)&v23 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_sceneController, a3);
    [p_isa[7] setPresenter:p_isa];
    objc_storeStrong(p_isa + 6, a4);
    v14 = [p_isa[7] scene];
    [v14 setDelegate:p_isa];
    v15 = objc_opt_class();
    v16 = [v14 componentForExtension:v15 ofClass:objc_opt_class()];
    v17 = p_isa[8];
    p_isa[8] = v16;

    [p_isa[8] setDelegate:p_isa];
    [p_isa[8] setConfigurationIdentifier:v11];
    v18 = objc_opt_class();
    v19 = [v14 componentForExtension:v18 ofClass:objc_opt_class()];
    v20 = p_isa[9];
    p_isa[9] = v19;

    [p_isa[9] setDelegate:p_isa];
    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:p_isa selector:sel__willEnableSecureRendering_ name:*MEMORY[0x277D66028] object:0];
  }

  return p_isa;
}

- (void)dealloc
{
  hostRemoteViewController = self->_hostRemoteViewController;
  if (hostRemoteViewController)
  {
    [(SBRemoteTransientOverlayHostViewController *)hostRemoteViewController setDelegate:0];
  }

  else
  {
    [(SBSUIRemoteAlertSceneHostComponent *)self->_remoteAlertHostComponent setDelegate:0];
    [(SBSUIFeaturePolicyHostComponent *)self->_featurePolicyHostComponent setDelegate:0];
    v4 = [(SBSingleSceneController *)self->_sceneController scene];
    [v4 setDelegate:0];

    [(SBSingleSceneController *)self->_sceneController invalidate];
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:self name:*MEMORY[0x277D66028] object:0];
  }

  v6.receiver = self;
  v6.super_class = SBRemoteTransientOverlayHostContentAdapter;
  [(SBRemoteTransientOverlayHostContentAdapter *)&v6 dealloc];
}

+ (void)requestContentAdaptersForAlertDefinition:(id)a3 sceneWorkspaceController:(id)a4 connectionHandler:(id)a5
{
  v80 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v46 = a4;
  v9 = a5;
  v10 = [v8 serviceName];
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__130;
  v74 = __Block_byref_object_dispose__130;
  v75 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__130;
  v68 = __Block_byref_object_dispose__130;
  v69 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__130;
  v62[4] = __Block_byref_object_dispose__130;
  v63 = 0;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __130__SBRemoteTransientOverlayHostContentAdapter_requestContentAdaptersForAlertDefinition_sceneWorkspaceController_connectionHandler___block_invoke;
  v59[3] = &unk_2783C2130;
  v11 = v8;
  v60 = v11;
  v12 = v10;
  v61 = v12;
  v13 = MEMORY[0x223D6F7F0](v59);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __130__SBRemoteTransientOverlayHostContentAdapter_requestContentAdaptersForAlertDefinition_sceneWorkspaceController_connectionHandler___block_invoke_2;
  v55[3] = &unk_2783C2158;
  v58 = a1;
  v14 = v13;
  v56 = v14;
  v57 = v62;
  v15 = MEMORY[0x223D6F7F0](v55);
  if ([v12 length])
  {
    v16 = [v11 viewControllerClassName];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __130__SBRemoteTransientOverlayHostContentAdapter_requestContentAdaptersForAlertDefinition_sceneWorkspaceController_connectionHandler___block_invoke_3;
    v47[3] = &unk_2783C21A8;
    v50 = v15;
    v52 = &v70;
    v53 = v62;
    v48 = v11;
    v49 = v12;
    v54 = &v64;
    v51 = v9;
    v17 = [SBRemoteTransientOverlayHostViewController requestViewController:v16 fromServiceWithBundleIdentifier:v49 connectionHandler:v47];

    v18 = v50;
  }

  else
  {
    v18 = [v11 sceneProvidingProcess];
    if (v18)
    {
      v45 = objc_alloc_init(MEMORY[0x277D75980]);
      v19 = objc_alloc_init(MEMORY[0x277D67C28]);
      [v45 setSpecification:v19];

      v20 = MEMORY[0x277CCACA8];
      v21 = [MEMORY[0x277CCAD78] UUID];
      v22 = [v21 UUIDString];
      v23 = [v20 stringWithFormat:@"%@-RemoteAlert", v22];
      [v45 setIdentifier:v23];

      v24 = [SBSingleSceneController alloc];
      v25 = *MEMORY[0x277D76EE8] + 5.0 + 0.1;
      v44 = [(SBSingleSceneController *)v24 initWithSceneWorkspaceController:v46 sceneRequestOptions:v45 clientIdentity:v18 traitsRole:v25 level:?];
      v26 = SBLogTransientOverlay();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(SBSingleSceneController *)v44 scene];
        *buf = 138543618;
        v77 = v44;
        v78 = 2114;
        v79 = v27;
        _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "created singleSceneController %{public}@ with scene %{public}@", buf, 0x16u);
      }

      v28 = [a1 alloc];
      v29 = [v11 configurationIdentifier];
      v30 = [v28 _initWithSceneController:v44 processIdentity:v18 configurationIdentifier:v29];
      v31 = v71[5];
      v71[5] = v30;

      (*(v14 + 2))(v14, v71[5]);
      if (SBFIsChamoisExternalDisplayControllerAvailable() && [v11 supportsMultipleDisplayPresentations])
      {
        v32 = MEMORY[0x277CCACA8];
        v42 = [MEMORY[0x277CCAD78] UUID];
        v33 = [v42 UUIDString];
        v34 = [v32 stringWithFormat:@"%@-RemoteAlert", v33];
        [v45 setIdentifier:v34];

        v35 = [[SBSingleSceneController alloc] initWithSceneWorkspaceController:v46 sceneRequestOptions:v45 clientIdentity:v18 traitsRole:@"SBTraitsParticipantRoleTransientOverlay" level:v25];
        v36 = SBLogTransientOverlay();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [(SBSingleSceneController *)v35 scene];
          *buf = 138543618;
          v77 = v35;
          v78 = 2114;
          v79 = v37;
          v43 = v37;
          _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "created secondary singleSceneController %{public}@ with scene %{public}@", buf, 0x16u);
        }

        v38 = [a1 alloc];
        v39 = [v11 secondaryConfigurationIdentifier];
        v40 = [v38 _initWithSceneController:v35 processIdentity:v18 configurationIdentifier:v39];
        v41 = v65[5];
        v65[5] = v40;

        (*(v14 + 2))(v14, v65[5]);
      }
    }

    (*(v9 + 2))(v9, v71[5], v65[5], 0);
  }

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(&v64, 8);

  _Block_object_dispose(&v70, 8);
}

void __130__SBRemoteTransientOverlayHostContentAdapter_requestContentAdaptersForAlertDefinition_sceneWorkspaceController_connectionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) isForCarPlay];
  v4 = v6;
  if ((v3 & 1) == 0)
  {
    if ([*(a1 + 40) isEqualToString:@"com.apple.InCallService"])
    {
      [v6 setShouldEnableFadeInAnimation:1];
      [v6 setShouldEnableFadeOutAnimation:1];
      [v6 setSwitcherEligible:1];
    }

    else if ([*(a1 + 40) isEqualToString:@"com.apple.RemoteAlertTestUIService"])
    {
      [v6 setAllowsCustomPresentationDismissalAnimations:1];
    }

    else
    {
      v5 = [*(a1 + 40) isEqualToString:@"com.apple.ScreenshotServicesService"];
      v4 = v6;
      if (!v5)
      {
        goto LABEL_9;
      }

      [v6 setIsScreenshotMarkup:1];
    }

    v4 = v6;
  }

LABEL_9:
}

void __130__SBRemoteTransientOverlayHostContentAdapter_requestContentAdaptersForAlertDefinition_sceneWorkspaceController_connectionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  obj = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = SBSafeCast(v8, v7);

  if (v9)
  {
    v10 = [objc_alloc(*(a1 + 48)) _initWithContentViewController:v9];
    *a2 = v10;
    (*(*(a1 + 32) + 16))();
LABEL_3:

    goto LABEL_7;
  }

  *a2 = 0;
  v10 = obj;
  if (!obj)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBRemoteTransientOverlayViewControllerErrorDomain" code:-1001 userInfo:0];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);
  if (!obj)
  {
    goto LABEL_3;
  }

LABEL_7:
}

void __130__SBRemoteTransientOverlayHostContentAdapter_requestContentAdaptersForAlertDefinition_sceneWorkspaceController_connectionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 64) + 8);
  v15 = *(v3 + 40);
  (*(v2 + 16))();
  objc_storeStrong((v3 + 40), v15);
  if (!*(*(*(a1 + 72) + 8) + 40) && SBFIsChamoisExternalDisplayControllerAvailable() && ([*(a1 + 32) secondaryViewControllerClassName], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [*(a1 + 32) secondaryViewControllerClassName];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __130__SBRemoteTransientOverlayHostContentAdapter_requestContentAdaptersForAlertDefinition_sceneWorkspaceController_connectionHandler___block_invoke_4;
    v10[3] = &unk_2783C2180;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 80);
    v11 = v7;
    v13 = v8;
    v12 = *(a1 + 56);
    v14 = *(a1 + 64);
    v9 = [SBRemoteTransientOverlayHostViewController requestViewController:v5 fromServiceWithBundleIdentifier:v6 connectionHandler:v10];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __130__SBRemoteTransientOverlayHostContentAdapter_requestContentAdaptersForAlertDefinition_sceneWorkspaceController_connectionHandler___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  (*(v2 + 16))();
  objc_storeStrong((v3 + 40), obj);
  return (*(a1[5] + 16))();
}

- (id)_contentViewController
{
  hostRemoteViewController = self->_hostRemoteViewController;
  if (!hostRemoteViewController)
  {
    hostRemoteViewController = self->_sceneViewController;
  }

  return hostRemoteViewController;
}

- (id)contentViewControllerForPresentationEmbeddedInSceneView:(BOOL)a3
{
  hostRemoteViewController = self->_hostRemoteViewController;
  if (!hostRemoteViewController)
  {
    if (!a3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [(UIViewController *)self->_sceneViewController contentViewController];
        goto LABEL_7;
      }
    }

    hostRemoteViewController = self->_sceneViewController;
  }

  v5 = hostRemoteViewController;
LABEL_7:

  return v5;
}

- (int)serviceProcessIdentifier
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (remoteAlertHostComponent)
  {
    v5 = [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent hostScene];
    v6 = [v5 clientHandle];
    v7 = [v6 processHandle];
    v8 = [v7 pid];

    return v8;
  }

  else
  {
    hostRemoteViewController = self->_hostRemoteViewController;

    return [(_UIRemoteViewController *)hostRemoteViewController serviceProcessIdentifier];
  }
}

- (NSString)serviceBundleIdentifier
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (!remoteAlertHostComponent)
  {
    v8 = [(_UIRemoteViewController *)self->_hostRemoteViewController serviceBundleIdentifier];
    goto LABEL_9;
  }

  v4 = [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent hostScene];
  v5 = [v4 clientHandle];
  v6 = [v5 processHandle];

  if ([v6 hasConsistentLaunchdJob])
  {
    v7 = [v6 consistentJobLabel];
  }

  else
  {
    if (![v6 isDaemon])
    {
      if ([v6 isApplication])
      {
        v10 = [v6 bundle];
        v8 = [v10 identifier];
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_8;
    }

    v7 = [v6 daemonJobLabel];
  }

  v8 = v7;
LABEL_8:

LABEL_9:

  return v8;
}

- (NSString)preferredDisplayLayoutElementIdentifier
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (remoteAlertHostComponent)
  {
    v4 = [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent hostScene];
    v5 = [v4 identifier];
  }

  else
  {
    v5 = [(SBRemoteTransientOverlayHostContentAdapter *)self serviceBundleIdentifier];
  }

  return v5;
}

- (FBSSceneIdentityToken)clientSceneIdentityToken
{
  v2 = [(SBSUIRemoteAlertSceneHostComponent *)self->_remoteAlertHostComponent hostScene];
  v3 = [v2 identityToken];

  return v3;
}

- (NSString)associatedSceneIdentifierToSuppressInSystemAperture
{
  v2 = [(SBSUIRemoteAlertSceneHostComponent *)self->_remoteAlertHostComponent hostScene];
  v3 = [v2 identifier];

  return v3;
}

- (void)doBoundsPreservingRotationFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4
{
  sceneViewController = self->_sceneViewController;
  v5 = objc_opt_class();
  v6 = sceneViewController;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = v7;

  v8 = v10;
  if (v10)
  {
    v9 = [(UIViewController *)v10 view];
    [v9 setNeedsLayout];

    v8 = v10;
  }
}

- (id)succinctDescription
{
  v2 = [(SBRemoteTransientOverlayHostContentAdapter *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  hostRemoteViewController = self->_hostRemoteViewController;
  if (hostRemoteViewController)
  {
    v6 = @"remoteViewController";
  }

  else
  {
    v7 = [v3 appendObject:self->_remoteAlertHostComponent withName:@"remoteAlertSceneHostComponent"];
    hostRemoteViewController = self->_featurePolicyHostComponent;
    v6 = @"featurePolicyHostComponent";
  }

  v8 = [v4 appendObject:hostRemoteViewController withName:v6];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBRemoteTransientOverlayHostContentAdapter *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (BOOL)allowsStackingOverlayContentAbove
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (remoteAlertHostComponent)
  {
    return [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent allowsAlertStacking];
  }

  else
  {
    return [(SBRemoteTransientOverlayHostViewController *)self->_hostRemoteViewController allowsStackingOverlayContentAbove];
  }
}

- (NSNumber)preferredSceneDeactivationReasonValue
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (remoteAlertHostComponent)
  {
    [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent preferredSceneDeactivationReason];
  }

  else
  {
    [(SBRemoteTransientOverlayHostViewController *)self->_hostRemoteViewController preferredSceneDeactivationReasonValue];
  }
  v4 = ;

  return v4;
}

- (int64_t)preferredStatusBarStyle
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (!remoteAlertHostComponent)
  {
    remoteAlertHostComponent = self->_hostRemoteViewController;
  }

  return [remoteAlertHostComponent preferredStatusBarStyle];
}

- (int)preferredStatusBarVisibility
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (remoteAlertHostComponent)
  {
    return [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent preferredStatusBarVisibility];
  }

  else
  {
    return [(SBRemoteTransientOverlayHostViewController *)self->_hostRemoteViewController _preferredStatusBarVisibility];
  }
}

- (NSSet)preferredBackgroundActivitiesToSuppress
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (remoteAlertHostComponent)
  {
    [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent backgroundActivitiesToSuppress];
  }

  else
  {
    [(SBRemoteTransientOverlayHostViewController *)self->_hostRemoteViewController preferredBackgroundActivitiesToSuppress];
  }
  v4 = ;

  return v4;
}

- (int64_t)preferredWhitePointAdaptivityStyle
{
  if (self->_preferredWhitePointAdaptivityStyleValue)
  {
    preferredWhitePointAdaptivityStyleValue = self->_preferredWhitePointAdaptivityStyleValue;

    return [(NSNumber *)preferredWhitePointAdaptivityStyleValue integerValue];
  }

  else
  {
    v5 = [(SBRemoteTransientOverlayHostContentAdapter *)self _contentViewController];
    v6 = [v5 preferredWhitePointAdaptivityStyle];

    return v6;
  }
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  result = self->_launchingInterfaceOrientation;
  if (!result)
  {
    v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
    v5 = [v4 defaultPreferredInterfaceOrientationForPresentationForRemoteTransientOverlayHostContentAdapter:self];

    return v5;
  }

  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (remoteAlertHostComponent)
  {
    v4 = [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent supportedInterfaceOrientations];
    if (v4)
    {
      return v4;
    }

    v8 = [(SBSingleSceneController *)self->_sceneController scene];
    v9 = [v8 clientHandle];

    if (v9)
    {
      v10 = +[SBApplicationController sharedInstance];
      v11 = [v9 bundleIdentifier];
      v12 = [v10 applicationWithBundleIdentifier:v11];

      v13 = [v12 info];
      v5 = [v13 supportedInterfaceOrientations];

      if (v5)
      {
        return v5;
      }
    }

    sceneController = self->_sceneController;

    return [(SBSingleSceneController *)sceneController initialSupportedInterfaceOrientations];
  }

  else
  {
    hostRemoteViewController = self->_hostRemoteViewController;

    return [(_UIRemoteViewController *)hostRemoteViewController supportedInterfaceOrientations];
  }
}

- (BOOL)shouldDisableOrientationUpdates
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (!remoteAlertHostComponent)
  {
    remoteAlertHostComponent = self->_hostRemoteViewController;
  }

  return [remoteAlertHostComponent shouldDisableOrientationUpdates];
}

- (BOOL)shouldIgnoreContentOverlayInsetUpdates
{
  hostRemoteViewController = self->_hostRemoteViewController;
  if (hostRemoteViewController)
  {
    LOBYTE(hostRemoteViewController) = [(SBRemoteTransientOverlayHostViewController *)hostRemoteViewController shouldIgnoreContentOverlayInsetUpdates];
  }

  return hostRemoteViewController;
}

- (void)setIsScreenshotMarkup:(BOOL)a3
{
  if (self->_isScreenshotMarkup != a3)
  {
    self->_isScreenshotMarkup = a3;
    v5 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
    [v5 remoteTransientOverlayHostContentAdapterDidChangeFeaturePolicy:self];
  }
}

- (BOOL)shouldDisableBanners
{
  featurePolicyHostComponent = self->_featurePolicyHostComponent;
  if (!featurePolicyHostComponent)
  {
    featurePolicyHostComponent = self->_hostRemoteViewController;
  }

  return [featurePolicyHostComponent shouldDisableBanners];
}

- (BOOL)shouldDisableControlCenter
{
  featurePolicyHostComponent = self->_featurePolicyHostComponent;
  if (!featurePolicyHostComponent)
  {
    featurePolicyHostComponent = self->_hostRemoteViewController;
  }

  return [featurePolicyHostComponent shouldDisableControlCenter];
}

- (BOOL)shouldDisableReachability
{
  featurePolicyHostComponent = self->_featurePolicyHostComponent;
  if (!featurePolicyHostComponent)
  {
    featurePolicyHostComponent = self->_hostRemoteViewController;
  }

  return [featurePolicyHostComponent shouldDisableReachability];
}

- (BOOL)shouldDisableInteractiveScreenshotGesture
{
  if (self->_isScreenshotMarkup)
  {
    return 1;
  }

  if (self->_featurePolicyHostComponent)
  {
    featurePolicyHostComponent = self->_featurePolicyHostComponent;
  }

  else
  {
    featurePolicyHostComponent = self->_hostRemoteViewController;
  }

  return [featurePolicyHostComponent shouldDisableInteractiveScreenshotGesture];
}

- (BOOL)shouldDisableSiri
{
  featurePolicyHostComponent = self->_featurePolicyHostComponent;
  if (!featurePolicyHostComponent)
  {
    featurePolicyHostComponent = self->_hostRemoteViewController;
  }

  return [featurePolicyHostComponent shouldDisableSiri];
}

- (BOOL)shouldPendAlertItems
{
  featurePolicyHostComponent = self->_featurePolicyHostComponent;
  if (featurePolicyHostComponent)
  {
    return [(SBSUIFeaturePolicyHostComponent *)featurePolicyHostComponent shouldDisableAlertItems];
  }

  else
  {
    return [(SBRemoteTransientOverlayHostViewController *)self->_hostRemoteViewController shouldPendAlertItems];
  }
}

- (BOOL)isPresentedFromSceneWithIdentityTokenString:(id)a3
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (!remoteAlertHostComponent)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent hostScene];
  v6 = [v5 identityToken];
  v7 = [v6 stringRepresentation];
  v8 = [v7 isEqualToString:v4];

  return v8;
}

- (id)keyboardFocusTarget
{
  v2 = [(SBSUIRemoteAlertSceneHostComponent *)self->_remoteAlertHostComponent hostScene];
  v3 = [v2 clientHandle];
  v4 = [v3 processHandle];
  v5 = [v4 pid];

  if (v5 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [SBKeyboardFocusTarget targetForFBScene:v2];
  }

  return v6;
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  hostRemoteViewController = self->_hostRemoteViewController;
  if (hostRemoteViewController)
  {
    [(SBRemoteTransientOverlayHostViewController *)hostRemoteViewController configureWithContext:v9 completion:v6];
  }

  else
  {
    remoteAlertHostComponent = self->_remoteAlertHostComponent;
    if (remoteAlertHostComponent)
    {
      [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent setConfigurationContext:v9];
      if (v6)
      {
        v6[2](v6);
      }
    }
  }
}

- (void)prepareForActivationWithContext:(id)a3 presentationMode:(int64_t)a4 windowScene:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([v10 isActivatingForSiri])
  {
    self->_activatingForSiri = 1;
  }

  if ([v10 isSwitcherEligible])
  {
    v13 = [(SBRemoteTransientOverlayHostContentAdapter *)self serviceBundleIdentifier];
    if (v13)
    {
      if (prepareForActivationWithContext_presentationMode_windowScene_completion__oOnceToken != -1)
      {
        [SBRemoteTransientOverlayHostContentAdapter prepareForActivationWithContext:presentationMode:windowScene:completion:];
      }

      if ([prepareForActivationWithContext_presentationMode_windowScene_completion__sAllowedBundleIDs containsObject:v13] && !self->_switcherEligible)
      {
        self->_switcherEligible = 1;
        [(SBRemoteTransientOverlayHostContentAdapter *)self _updatePreferredGestureDismissalStyles];
      }
    }
  }

  if ([v10 shouldInvalidateWhenDeactivated])
  {
    v14 = !self->_switcherEligible;
  }

  else
  {
    v14 = 0;
  }

  self->_shouldInvalidateWhenDeactivated = v14;
  hostRemoteViewController = self->_hostRemoteViewController;
  if (hostRemoteViewController)
  {
    [(SBRemoteTransientOverlayHostViewController *)hostRemoteViewController prepareForActivationWithContext:v10 presentationMode:a4 completion:v12];
  }

  else if (self->_remoteAlertHostComponent)
  {
    [v10 setPresentationMode:a4];
    [(SBSUIRemoteAlertSceneHostComponent *)self->_remoteAlertHostComponent setActivationContext:v10];
    [(SBSUIRemoteAlertSceneHostComponent *)self->_remoteAlertHostComponent setDefaultStatusBarHeightsForWindowScene:v11];
    remoteAlertHostComponent = self->_remoteAlertHostComponent;
    v17 = [v10 preferredSceneDeactivationReason];
    [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent setPreferredSceneDeactivationReason:v17];

    v18 = [v12 copy];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __118__SBRemoteTransientOverlayHostContentAdapter_prepareForActivationWithContext_presentationMode_windowScene_completion___block_invoke_2;
    v30[3] = &unk_2783A9FC8;
    v19 = v18;
    v31 = v19;
    v20 = MEMORY[0x223D6F7F0](v30);
    sceneViewControllerReadyBlock = self->_sceneViewControllerReadyBlock;
    self->_sceneViewControllerReadyBlock = v20;

    -[SBSingleSceneController setInitialSupportedInterfaceOrientations:](self->_sceneController, "setInitialSupportedInterfaceOrientations:", [v10 initialSupportedInterfaceOrientations]);
    v22 = [MEMORY[0x277D77770] sb_defaultContext];
    v23 = objc_alloc(MEMORY[0x277CF0BE8]);
    [v22 deviceInfoFloatValueForKey:*MEMORY[0x277D77810]];
    v24 = [v23 initWithCornerRadius:?];
    [(SBSingleSceneController *)self->_sceneController setCornerRadiusConfiguration:v24];
    sceneController = self->_sceneController;
    v26 = [v11 _fbsDisplayConfiguration];
    [(SBSingleSceneController *)sceneController setTargetDisplayConfiguration:v26];

    v27 = [(SBSingleSceneController *)self->_sceneController scene];
    if ([v27 isValid])
    {
      if ([v27 isActive])
      {
        v28 = [v27 clientHandle];
        if (v28)
        {
          sceneViewController = self->_sceneViewController;

          if (sceneViewController)
          {
            [(SBRemoteTransientOverlayHostContentAdapter *)self _callSceneViewControllerReadyBlockWithError:0];
          }
        }
      }
    }
  }
}

void __118__SBRemoteTransientOverlayHostContentAdapter_prepareForActivationWithContext_presentationMode_windowScene_completion___block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"com.apple.RemoteAlertTestUIService";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = prepareForActivationWithContext_presentationMode_windowScene_completion__sAllowedBundleIDs;
  prepareForActivationWithContext_presentationMode_windowScene_completion__sAllowedBundleIDs = v2;
}

- (void)didDeactivateForRemoteAlertSessionDeactivation
{
  if (self->_sceneController && !self->_invalidating && ![(SBRemoteTransientOverlayHostContentAdapter *)self shouldInvalidateWhenDeactivated])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__SBRemoteTransientOverlayHostContentAdapter_didDeactivateForRemoteAlertSessionDeactivation__block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __92__SBRemoteTransientOverlayHostContentAdapter_didDeactivateForRemoteAlertSessionDeactivation__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setTargetDisplayConfiguration:0];
  v2 = *(*(a1 + 32) + 56);

  return [v2 setSceneActive:0];
}

- (void)didInvalidateForRemoteAlert
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (remoteAlertHostComponent)
  {
    [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent didInvalidateForRemoteAlertServiceInvalidation];
    if (!self->_invalidating)
    {
      v4 = [(SBSingleSceneController *)self->_sceneController scene];
      [v4 setDelegate:0];

      [(SBSingleSceneController *)self->_sceneController invalidate];
      sceneController = self->_sceneController;
      self->_sceneController = 0;
    }
  }

  else
  {
    hostRemoteViewController = self->_hostRemoteViewController;
    if (hostRemoteViewController)
    {

      [(SBRemoteTransientOverlayHostViewController *)hostRemoteViewController didInvalidateForRemoteAlert];
    }
  }
}

- (void)handlePictureInPictureDidBegin
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = SBLogTransientOverlay();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v7 = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Received %{public}@, invalidating...", &v7, 0x16u);
  }

  v6 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v6 remoteTransientOverlayHostContentAdapterRequestsInvalidation:self];
}

- (BOOL)isAttachedToWindowedAccessory
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (!remoteAlertHostComponent)
  {
    remoteAlertHostComponent = self->_hostRemoteViewController;
  }

  return [remoteAlertHostComponent isAttachedToWindowedAccessory];
}

- (CGRect)windowedAccessoryCutoutFrameInScreen
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (!remoteAlertHostComponent)
  {
    remoteAlertHostComponent = self->_hostRemoteViewController;
  }

  [remoteAlertHostComponent windowedAccessoryCutoutFrameInScreen];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)didTransitionToAttachedToWindowedAccessory:(BOOL)a3 windowedAccessoryCutoutFrameInScreen:(CGRect)a4
{
  if (self->_remoteAlertHostComponent)
  {
    remoteAlertHostComponent = self->_remoteAlertHostComponent;
  }

  else
  {
    remoteAlertHostComponent = self->_hostRemoteViewController;
  }

  [remoteAlertHostComponent didTransitionToAttachedToWindowedAccessory:a3 windowedAccessoryCutoutFrameInScreen:{a4.origin.x, a4.origin.y, a4.size.width, a4.size.height}];
}

- (void)setShouldPresentEmbeddedInTargetSceneIfRequested:(BOOL)a3
{
  v3 = a3;
  self->_shouldPresentEmbeddedInTargetSceneIfRequested = a3;
  [(SBSingleSceneController *)self->_sceneController setShouldPresentAnyContentState:?];
  [(SBSingleSceneController *)self->_sceneController setShouldActivateForDisplayConfiguration:!v3];
  sceneController = self->_sceneController;

  [(SBSingleSceneController *)sceneController setShouldForegroundForDisplayConfiguration:!v3];
}

- (void)presentForTransientOverlayAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  hostRemoteViewController = self->_hostRemoteViewController;
  if (hostRemoteViewController)
  {
    v8 = v6;
    [(SBRemoteTransientOverlayHostViewController *)hostRemoteViewController presentForTransientOverlayAnimated:v4 completion:v6];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v8 = v6;
    v6[2](v6);
  }

  v6 = v8;
LABEL_6:
}

- (void)dismissForTransientOverlayAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  hostRemoteViewController = self->_hostRemoteViewController;
  if (hostRemoteViewController)
  {
    v8 = v6;
    [(SBRemoteTransientOverlayHostViewController *)hostRemoteViewController dismissForTransientOverlayAnimated:v4 completion:v6];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v8 = v6;
    v6[2](v6);
  }

  v6 = v8;
LABEL_6:
}

- (BOOL)handleHomeButtonPress
{
  if (([(SBRemoteTransientOverlayHostContentAdapter *)self _desiredHardwareButtonEvents]& 0x10) != 0)
  {

    LOBYTE(v3) = [(SBRemoteTransientOverlayHostContentAdapter *)self _performButtonEvents:16];
  }

  else
  {
    v3 = [(SBRemoteTransientOverlayHostContentAdapter *)self _allowsHomeButtonDismissal];
    if (v3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if ([(SBRemoteTransientOverlayHostContentAdapter *)self isSwitcherEligible])
      {
        [WeakRetained remoteTransientOverlayHostContentAdapterRequestsDeactivation:self];
      }

      else
      {
        [WeakRetained remoteTransientOverlayHostContentAdapterRequestsInvalidation:self];
      }

      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)handleLockButtonPress
{
  if (([(SBRemoteTransientOverlayHostContentAdapter *)self _desiredHardwareButtonEvents]& 1) == 0)
  {
    return 0;
  }

  return [(SBRemoteTransientOverlayHostContentAdapter *)self _performButtonEvents:1];
}

- (BOOL)handleVolumeUpButtonPress
{
  if (([(SBRemoteTransientOverlayHostContentAdapter *)self _desiredHardwareButtonEvents]& 2) == 0)
  {
    return 0;
  }

  return [(SBRemoteTransientOverlayHostContentAdapter *)self _performButtonEvents:2];
}

- (BOOL)handleVolumeDownButtonPress
{
  if (([(SBRemoteTransientOverlayHostContentAdapter *)self _desiredHardwareButtonEvents]& 4) == 0)
  {
    return 0;
  }

  return [(SBRemoteTransientOverlayHostContentAdapter *)self _performButtonEvents:4];
}

- (BOOL)handleHeadsetButtonPress:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBRemoteTransientOverlayHostContentAdapter *)self _desiredHardwareButtonEvents];
  if (!v3)
  {
    if ((v5 & 8) != 0)
    {
      v6 = 8;
      goto LABEL_7;
    }

    return 0;
  }

  if ((v5 & 0x20) == 0)
  {
    return 0;
  }

  v6 = 32;
LABEL_7:

  return [(SBRemoteTransientOverlayHostContentAdapter *)self _performButtonEvents:v6];
}

- (int64_t)idleTimerDuration
{
  if (self->_shouldUseLockedIdleTimerDuration)
  {
    return 1;
  }

  else
  {
    return 16;
  }
}

- (int64_t)idleTimerMode
{
  if ([(NSMutableSet *)self->_idleTimerDisabledReasons count])
  {
    return 3;
  }

  if (self->_shouldUseLockedIdleTimerDuration)
  {
    return 2;
  }

  return 1;
}

- (int64_t)idleWarnMode
{
  if (self->_shouldDisableIdleWarn)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)presentScene:(id)a3 viewControllerBuilderBlock:(id)a4
{
  v5 = a4;
  v6 = [(SBRemoteTransientOverlayHostContentAdapter *)self shouldPresentEmbeddedInTargetSceneIfRequested];
  v7 = v5[2](v5);

  if (v6)
  {
    [v7 traitsOrientedResizableViewController];
  }

  else
  {
    [v7 traitsOrientedViewController];
  }
  v8 = ;
  sceneViewController = self->_sceneViewController;
  self->_sceneViewController = v8;

  if (self->_sceneViewControllerReadyBlock)
  {
    v10 = [(SBSingleSceneController *)self->_sceneController scene];
    if ([v10 isValid] && (objc_msgSend(v10, "clientHandle"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      self->_sceneViewControllerWaitingForClientConnection = 1;
    }

    else
    {
      [(SBRemoteTransientOverlayHostContentAdapter *)self _callSceneViewControllerReadyBlockWithError:0];
    }
  }

  return 0;
}

- (id)dismissScene:(id)a3
{
  v4 = [(UIViewController *)self->_sceneViewController parentViewController];
  [v4 bs_removeChildViewController:self->_sceneViewController];

  sceneViewController = self->_sceneViewController;
  self->_sceneViewController = 0;

  return 0;
}

- (void)scene:(id)a3 clientDidConnect:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (self->_sceneViewControllerWaitingForClientConnection && self->_sceneViewControllerReadyBlock)
  {
    self->_sceneViewControllerWaitingForClientConnection = 0;
    [(SBRemoteTransientOverlayHostContentAdapter *)self _callSceneViewControllerReadyBlockWithError:0];
  }
}

- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4
{
  v5 = [a4 error];
  if (v5)
  {
    v7 = v5;
    if (self->_sceneViewControllerWaitingForClientConnection && self->_sceneViewControllerReadyBlock)
    {
      self->_sceneViewControllerWaitingForClientConnection = 0;
      v5 = [(SBRemoteTransientOverlayHostContentAdapter *)self _callSceneViewControllerReadyBlockWithError:v5];
    }

    else
    {
      v6 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
      [v6 remoteTransientOverlayHostContentAdapter:self didTerminateWithError:v7];
    }
  }

  MEMORY[0x2821F9730](v5);
}

- (void)featurePolicyHostComponentDidChangeShouldDisableBanners:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterDidChangeFeaturePolicy:self];
}

- (void)featurePolicyHostComponentDidChangeShouldDisableAlertItems:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterDidChangeFeaturePolicy:self];
}

- (void)featurePolicyHostComponentDidChangeShouldDisableControlCenter:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterDidChangeFeaturePolicy:self];
}

- (void)featurePolicyHostComponentDidChangeShouldDisableSiri:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterDidChangeFeaturePolicy:self];
}

- (void)featurePolicyHostComponentDidChangeShouldDisableInteractiveScreenshotGesture:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterDidChangeFeaturePolicy:self];
}

- (void)featurePolicyHostComponentDidChangeShouldDisableReachability:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterDidChangeFeaturePolicy:self];
}

- (void)remoteAlertSceneHostComponentDidDeactivate:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterRequestsDeactivation:self];
}

- (void)remoteAlertSceneHostComponentDidInvalidate:(id)a3
{
  self->_invalidating = 1;
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterRequestsInvalidation:self];
}

- (void)remoteAlertSceneHostComponentDidChangeSwipeDismissalStyle:(id)a3
{
  v4 = [a3 swipeDismissalStyle];

  [(SBRemoteTransientOverlayHostContentAdapter *)self _handleUpdatedSwipeDismissalStyle:v4];
}

- (void)remoteAlertSceneHostComponentDidChangeDesiredAutoLockDuration:(id)a3
{
  [a3 desiredAutoLockDuration];

  [(SBRemoteTransientOverlayHostContentAdapter *)self _setDesiredAutoLockDuration:?];
}

- (void)remoteAlertSceneHostComponentDidChangeDesiredIdleTimerSettings:(id)a3
{
  v4 = [a3 desiredIdleTimerSettings];
  [(SBRemoteTransientOverlayHostContentAdapter *)self _setDesiredIdleTimerSettings:v4];
}

- (void)remoteAlertSceneHostComponentDidChangeShouldDisableOrientationUpdates:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterDidChangeShouldDisableOrientationUpdates:self];
}

- (void)remoteAlertSceneHostComponentDidChangeSupportedInterfaceOrientations:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterDidChangeSupportedInterfaceOrientations:self];
}

- (void)remoteAlertSceneHostComponent:(id)a3 didChangePreferredStatusBarVisibilityWithAnimationSettings:(id)a4
{
  v5 = a4;
  v6 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v6 remoteTransientOverlayHostContentAdapter:self needsStatusBarAppearanceUpdateWithAnimationSettings:v5];
}

- (void)remoteAlertSceneHostComponentDidChangeWhitePointAdaptivityStyle:(id)a3
{
  v4 = [a3 whitePointAdaptivityStyle];

  [(SBRemoteTransientOverlayHostContentAdapter *)self _updatePreferredWhitePointAdaptivityStyle:v4];
}

- (void)remoteAlertSceneHostComponentDidChangePreferredSceneDeactivationReason:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterDidChangePreferredSceneDeactivationReasonValue:self];
}

- (void)remoteAlertSceneHostComponentDidChangeHIDEventDeferringDisabled:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterDidChangeHIDEventDeferringDisabled:self];
}

- (void)remoteTransientOverlayHostViewControllerDidChangeFeaturePolicy:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterDidChangeFeaturePolicy:self];
}

- (void)remoteTransientOverlayHostViewControllerDidChangeSwipeDismissalStyle:(id)a3
{
  v4 = [a3 swipeDismissalStyle];

  [(SBRemoteTransientOverlayHostContentAdapter *)self _handleUpdatedSwipeDismissalStyle:v4];
}

- (void)remoteTransientOverlayHostViewControllerDidChangePreferredSceneDeactivationReasonValue:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterDidChangePreferredSceneDeactivationReasonValue:self];
}

- (void)remoteTransientOverlayHostViewControllerDidChangeShouldDisableOrientationUpdates:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterDidChangeShouldDisableOrientationUpdates:self];
}

- (void)remoteTransientOverlayHostViewControllerRequestsDeactivation:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterRequestsDeactivation:self];
}

- (void)remoteTransientOverlayHostViewControllerRequestsInvalidation:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v4 remoteTransientOverlayHostContentAdapterRequestsInvalidation:self];
}

- (void)remoteTransientOverlayHostViewController:(id)a3 didTerminateWithError:(id)a4
{
  v5 = a4;
  v6 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v6 remoteTransientOverlayHostContentAdapter:self didTerminateWithError:v5];
}

- (void)remoteTransientOverlayHostViewController:(id)a3 requestsWallpaperEffectUpdateWithAnimationSettings:(id)a4
{
  v5 = a4;
  v6 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [v6 remoteTransientOverlayHostContentAdapter:self requestsWallpaperEffectUpdateWithAnimationSettings:v5];
}

- (int64_t)defaultPreferredInterfaceOrientationForPresentationForRemoteTransientOverlayHostViewController:(id)a3
{
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  v5 = [v4 defaultPreferredInterfaceOrientationForPresentationForRemoteTransientOverlayHostContentAdapter:self];

  return v5;
}

- (void)_willEnableSecureRendering:(id)a3
{
  v4 = a3;
  if (self->_sceneController)
  {
    if (!self->_sceneViewControllerReadyBlock)
    {
      v7 = v4;
      v5 = [(SBRemoteTransientOverlayHostContentAdapter *)self _shouldInvalidateForSecureDrawingMode];
      v4 = v7;
      if (v5)
      {
        v6 = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
        [v6 remoteTransientOverlayHostContentAdapterRequestsInvalidation:self];

        v4 = v7;
      }
    }
  }
}

- (BOOL)_shouldInvalidateForSecureDrawingMode
{
  v3 = [(SBSUIRemoteAlertSceneHostComponent *)self->_remoteAlertHostComponent hostScene];
  v4 = [v3 clientHandle];
  v5 = [v4 processHandle];
  v6 = [v5 sb_canDrawWhileLocked];

  v7 = [SBApp windowSceneManager];
  v8 = [(SBSingleSceneController *)self->_sceneController scene];
  v9 = [v8 settings];
  v10 = [v9 sb_displayIdentityForSceneManagers];
  v11 = [v7 windowSceneForDisplayIdentity:v10];

  v12 = [v11 secureDisplayStateProvider];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [SBApp authenticationController];
  }

  v15 = v14;

  v16 = [v15 isInSecureDisplayMode];
  return v16 & (v6 ^ 1);
}

- (void)_callSceneViewControllerReadyBlockWithError:(id)a3
{
  v4 = a3;
  if (self->_sceneViewControllerReadyBlock)
  {
    if (!v4)
    {
      if ([(SBRemoteTransientOverlayHostContentAdapter *)self _shouldInvalidateForSecureDrawingMode])
      {
        v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBRemoteTransientOverlayViewControllerErrorDomain" code:-1000 userInfo:0];
      }

      else
      {
        v4 = 0;
      }
    }

    v6 = v4;
    (*(self->_sceneViewControllerReadyBlock + 2))();
    sceneViewControllerReadyBlock = self->_sceneViewControllerReadyBlock;
    self->_sceneViewControllerReadyBlock = 0;

    v4 = v6;
  }
}

- (void)_setIdleTimerDisabled:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  idleTimerDisabledReasons = self->_idleTimerDisabledReasons;
  v14 = v6;
  if (v4)
  {
    if (!idleTimerDisabledReasons)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v9 = self->_idleTimerDisabledReasons;
      self->_idleTimerDisabledReasons = v8;

      v6 = v14;
      idleTimerDisabledReasons = self->_idleTimerDisabledReasons;
    }

    [(NSMutableSet *)idleTimerDisabledReasons addObject:v6];
  }

  else
  {
    [(NSMutableSet *)idleTimerDisabledReasons removeObject:v6];
    if (![(NSMutableSet *)self->_idleTimerDisabledReasons count])
    {
      v10 = self->_idleTimerDisabledReasons;
      self->_idleTimerDisabledReasons = 0;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_idleTimerCoordinator);
  v12 = [(SBRemoteTransientOverlayHostContentAdapter *)self coordinatorRequestedIdleTimerBehavior:WeakRetained];
  v13 = [WeakRetained idleTimerProvider:self didProposeBehavior:v12 forReason:v14];
}

- (void)_setDesiredAutoLockDuration:(double)a3
{
  self->_customIdleExpirationTimeout = a3;
  WeakRetained = objc_loadWeakRetained(&self->_idleTimerCoordinator);
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self coordinatorRequestedIdleTimerBehavior:WeakRetained];
  v5 = [WeakRetained idleTimerProvider:self didProposeBehavior:v4 forReason:@"SBRemoteTransientOverlayHostContentAdapterSetDesiredAutoLockDuration"];
}

- (void)_setDesiredIdleTimerSettings:(id)a3
{
  v4 = a3;
  self->_shouldUseLockedIdleTimerDuration = [v4 usesLockScreenRules];
  self->_shouldDisableIdleWarn = [v4 disablesWarn];
  [v4 autoLockTimeout];
  v6 = v5;

  self->_customIdleExpirationTimeout = v6;
  WeakRetained = objc_loadWeakRetained(&self->_idleTimerCoordinator);
  v7 = [(SBRemoteTransientOverlayHostContentAdapter *)self coordinatorRequestedIdleTimerBehavior:WeakRetained];
  v8 = [WeakRetained idleTimerProvider:self didProposeBehavior:v7 forReason:@"SBRemoteTransientOverlayHostContentAdapterSetDesiredIdleTimerSettings"];
}

- (unint64_t)_desiredHardwareButtonEvents
{
  featurePolicyHostComponent = self->_featurePolicyHostComponent;
  if (featurePolicyHostComponent)
  {
    return [(SBSUIFeaturePolicyHostComponent *)featurePolicyHostComponent desiredHardwareButtonEvents];
  }

  else
  {
    return [(SBRemoteTransientOverlayHostViewController *)self->_hostRemoteViewController preferredHardwareButtonEvents];
  }
}

- (BOOL)_allowsHomeButtonDismissal
{
  featurePolicyHostComponent = self->_featurePolicyHostComponent;
  if (featurePolicyHostComponent)
  {
    return [(SBSUIFeaturePolicyHostComponent *)featurePolicyHostComponent allowsMenuButtonDismissal];
  }

  else
  {
    return [(SBRemoteTransientOverlayHostViewController *)self->_hostRemoteViewController allowsHomeButtonDismissal];
  }
}

- (BOOL)_performButtonEvents:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained remoteTransientOverlayHostContentAdapter:self requestsActionForHandlingButtonEvents:a3];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB98] setWithObject:v6];
    remoteAlertHostComponent = self->_remoteAlertHostComponent;
    if (!remoteAlertHostComponent)
    {
      remoteAlertHostComponent = self->_hostRemoteViewController;
    }

    [remoteAlertHostComponent handleButtonActions:v7];
  }

  return v6 != 0;
}

- (void)_handleUpdatedSwipeDismissalStyle:(int64_t)a3
{
  if (a3 != 1)
  {
    goto LABEL_6;
  }

  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self serviceBundleIdentifier];
  if (v4)
  {
    v5 = v4;
    if (_handleUpdatedSwipeDismissalStyle__oOnceToken != -1)
    {
      [SBRemoteTransientOverlayHostContentAdapter _handleUpdatedSwipeDismissalStyle:];
    }

    v6 = [_handleUpdatedSwipeDismissalStyle__sAllowedBundleIDs containsObject:v5];

    if (v6)
    {
LABEL_6:

      [(SBRemoteTransientOverlayHostContentAdapter *)self _updatePreferredGestureDismissalStyles];
    }
  }
}

void __80__SBRemoteTransientOverlayHostContentAdapter__handleUpdatedSwipeDismissalStyle___block_invoke()
{
  v4[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"com.apple.InCallService";
  v4[1] = @"com.apple.PassbookUIService";
  v4[2] = @"com.apple.TVRemoteUIService";
  v4[3] = @"com.apple.RemoteAlertTestUIService";
  v4[4] = @"com.apple.GameCenterRemoteAlert";
  v4[5] = @"com.apple.SystemExperienceAutomationAngel.sessions";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:6];
  v2 = [v0 setWithArray:v1];
  v3 = _handleUpdatedSwipeDismissalStyle__sAllowedBundleIDs;
  _handleUpdatedSwipeDismissalStyle__sAllowedBundleIDs = v2;
}

- (void)_updatePreferredGestureDismissalStyles
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (!remoteAlertHostComponent)
  {
    remoteAlertHostComponent = self->_hostRemoteViewController;
  }

  v4 = [remoteAlertHostComponent dismissalAnimationStyle];
  hostRemoteViewController = self->_remoteAlertHostComponent;
  if (!hostRemoteViewController)
  {
    hostRemoteViewController = self->_hostRemoteViewController;
  }

  v6 = [hostRemoteViewController swipeDismissalStyle];
  featurePolicyHostComponent = self->_featurePolicyHostComponent;
  if (featurePolicyHostComponent)
  {
    v8 = [(SBSUIFeaturePolicyHostComponent *)featurePolicyHostComponent allowsMenuButtonDismissal];
  }

  else
  {
    v8 = [(SBRemoteTransientOverlayHostViewController *)self->_hostRemoteViewController allowsHomeButtonDismissal];
  }

  v9 = v8;
  v10 = self->_featurePolicyHostComponent;
  if (v10)
  {
    v11 = [(SBSUIFeaturePolicyHostComponent *)v10 desiredHardwareButtonEvents];
  }

  else
  {
    v11 = [(SBRemoteTransientOverlayHostViewController *)self->_hostRemoteViewController preferredHardwareButtonEvents];
  }

  v12 = v11;
  if (v4 == 2 && [(SBRemoteTransientOverlayHostContentAdapter *)self isSwitcherEligible])
  {
    v13 = 2;
    v14 = 3;
  }

  else
  {
    v13 = 2;
    v15 = (v12 >> 4) & 1;
    v16 = v9 | v15;
    if (v6 == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = v9 | v15;
    }

    if (v6 != 1)
    {
      v13 = v16;
    }
  }

  if (self->_preferredUnlockedGestureDismissalStyle != v14 || self->_preferredLockedGestureDismissalStyle != v13)
  {
    self->_preferredLockedGestureDismissalStyle = v13;
    self->_preferredUnlockedGestureDismissalStyle = v14;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained remoteTransientOverlayHostContentAdapterDidChangeGestureDismissalStyles:self];
  }
}

- (void)_updatePreferredWhitePointAdaptivityStyle:(int64_t)a3
{
  preferredWhitePointAdaptivityStyleValue = self->_preferredWhitePointAdaptivityStyleValue;
  if (!preferredWhitePointAdaptivityStyleValue || ([MEMORY[0x277CCABB0] numberWithInteger:a3], v6 = objc_claimAutoreleasedReturnValue(), v7 = -[NSNumber isEqualToNumber:](preferredWhitePointAdaptivityStyleValue, "isEqualToNumber:", v6), v6, !v7))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v9 = self->_preferredWhitePointAdaptivityStyleValue;
    self->_preferredWhitePointAdaptivityStyleValue = v8;

    v10 = [(SBRemoteTransientOverlayHostContentAdapter *)self _contentViewController];
    [v10 setNeedsWhitePointAdaptivityStyleUpdate];
  }
}

- (void)_updateBackgroundActivitiesToSuppressWithAnimationSettings:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D75AA0]) initWithEmptyParameters];
  if (v4)
  {
    [v4 duration];
    [v5 setDuration:?];
    [v4 delay];
    [v5 setDelay:?];
    [v5 setStyleAnimation:1];
    v6 = [MEMORY[0x277CF0D38] factoryWithSettings:v4];
    [v5 setAnimationFactory:v6];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __105__SBRemoteTransientOverlayHostContentAdapter__updateBackgroundActivitiesToSuppressWithAnimationSettings___block_invoke;
  v7[3] = &unk_2783A8C18;
  v7[4] = self;
  [MEMORY[0x277D75AA0] animateWithParameters:v5 animations:v7 completion:0];
}

void __105__SBRemoteTransientOverlayHostContentAdapter__updateBackgroundActivitiesToSuppressWithAnimationSettings___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _contentViewController];
  [v1 setNeedsStatusBarAppearanceUpdate];
}

- (void)_updateContentOpaqueProperty
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (!remoteAlertHostComponent)
  {
    remoteAlertHostComponent = self->_hostRemoteViewController;
  }

  v4 = ([remoteAlertHostComponent isContentOpaque] & 1) != 0 || -[SBRemoteTransientOverlayHostContentAdapter preferredBackgroundStyle](self, "preferredBackgroundStyle") != 0;
  if (self->_contentOpaque != v4)
  {
    self->_contentOpaque = v4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained remoteTransientOverlayHostContentAdapterDidChangeContentOpaque:self];
  }
}

- (void)_updatePreferredBackgroundStyleWithAnimationSettings:(id)a3
{
  v13 = a3;
  v4 = objc_opt_class();
  v5 = [(SBSUIRemoteAlertSceneHostComponent *)self->_remoteAlertHostComponent hostScene];
  v6 = [v5 clientSettings];
  v7 = SBSafeCast(v4, v6);

  v8 = [v7 backgroundStyle];
  v9 = v8;
  if (self->_remoteAlertHostComponent)
  {
    v10 = v8 != 0;
  }

  else
  {
    v10 = [(SBRemoteTransientOverlayHostViewController *)self->_hostRemoteViewController prefersWallpaperTunnelActive];
    if (!self->_remoteAlertHostComponent)
    {
      v9 = [(SBRemoteTransientOverlayHostViewController *)self->_hostRemoteViewController requestedBackgroundStyle];
    }
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (self->_preferredBackgroundStyle != v11)
  {
    self->_preferredBackgroundStyle = v11;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained remoteTransientOverlayHostContentAdapter:self requestsWallpaperEffectUpdateWithAnimationSettings:v13];

    [(SBRemoteTransientOverlayHostContentAdapter *)self _updateContentOpaqueProperty];
  }
}

- (SBRemoteTransientOverlayHostContentAdapterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBIdleTimerCoordinating)idleTimerCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_idleTimerCoordinator);

  return WeakRetained;
}

@end