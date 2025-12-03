@interface SBRemoteTransientOverlayHostContentAdapter
+ (void)requestContentAdaptersForAlertDefinition:(id)definition sceneWorkspaceController:(id)controller connectionHandler:(id)handler;
- (BOOL)_allowsHomeButtonDismissal;
- (BOOL)_performButtonEvents:(unint64_t)events;
- (BOOL)_shouldInvalidateForSecureDrawingMode;
- (BOOL)allowsStackingOverlayContentAbove;
- (BOOL)handleHeadsetButtonPress:(BOOL)press;
- (BOOL)handleHomeButtonPress;
- (BOOL)handleLockButtonPress;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)isAttachedToWindowedAccessory;
- (BOOL)isPresentedFromSceneWithIdentityTokenString:(id)string;
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
- (id)_initWithContentViewController:(id)controller;
- (id)_initWithSceneController:(id)controller processIdentity:(id)identity configurationIdentifier:(id)identifier;
- (id)contentViewControllerForPresentationEmbeddedInSceneView:(BOOL)view;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)dismissScene:(id)scene;
- (id)keyboardFocusTarget;
- (id)presentScene:(id)scene viewControllerBuilderBlock:(id)block;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int)preferredStatusBarVisibility;
- (int)serviceProcessIdentifier;
- (int64_t)defaultPreferredInterfaceOrientationForPresentationForRemoteTransientOverlayHostViewController:(id)controller;
- (int64_t)idleTimerDuration;
- (int64_t)idleTimerMode;
- (int64_t)idleWarnMode;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (int64_t)preferredStatusBarStyle;
- (int64_t)preferredWhitePointAdaptivityStyle;
- (unint64_t)_desiredHardwareButtonEvents;
- (unint64_t)supportedInterfaceOrientations;
- (void)_callSceneViewControllerReadyBlockWithError:(id)error;
- (void)_handleUpdatedSwipeDismissalStyle:(int64_t)style;
- (void)_setDesiredAutoLockDuration:(double)duration;
- (void)_setDesiredIdleTimerSettings:(id)settings;
- (void)_setIdleTimerDisabled:(BOOL)disabled forReason:(id)reason;
- (void)_updateBackgroundActivitiesToSuppressWithAnimationSettings:(id)settings;
- (void)_updateContentOpaqueProperty;
- (void)_updatePreferredBackgroundStyleWithAnimationSettings:(id)settings;
- (void)_updatePreferredGestureDismissalStyles;
- (void)_updatePreferredWhitePointAdaptivityStyle:(int64_t)style;
- (void)_willEnableSecureRendering:(id)rendering;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dealloc;
- (void)didDeactivateForRemoteAlertSessionDeactivation;
- (void)didInvalidateForRemoteAlert;
- (void)didTransitionToAttachedToWindowedAccessory:(BOOL)accessory windowedAccessoryCutoutFrameInScreen:(CGRect)screen;
- (void)dismissForTransientOverlayAnimated:(BOOL)animated completion:(id)completion;
- (void)doBoundsPreservingRotationFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation;
- (void)featurePolicyHostComponentDidChangeShouldDisableAlertItems:(id)items;
- (void)featurePolicyHostComponentDidChangeShouldDisableBanners:(id)banners;
- (void)featurePolicyHostComponentDidChangeShouldDisableControlCenter:(id)center;
- (void)featurePolicyHostComponentDidChangeShouldDisableInteractiveScreenshotGesture:(id)gesture;
- (void)featurePolicyHostComponentDidChangeShouldDisableReachability:(id)reachability;
- (void)featurePolicyHostComponentDidChangeShouldDisableSiri:(id)siri;
- (void)handlePictureInPictureDidBegin;
- (void)prepareForActivationWithContext:(id)context presentationMode:(int64_t)mode windowScene:(id)scene completion:(id)completion;
- (void)presentForTransientOverlayAnimated:(BOOL)animated completion:(id)completion;
- (void)remoteAlertSceneHostComponent:(id)component didChangePreferredStatusBarVisibilityWithAnimationSettings:(id)settings;
- (void)remoteAlertSceneHostComponentDidChangeDesiredAutoLockDuration:(id)duration;
- (void)remoteAlertSceneHostComponentDidChangeDesiredIdleTimerSettings:(id)settings;
- (void)remoteAlertSceneHostComponentDidChangeHIDEventDeferringDisabled:(id)disabled;
- (void)remoteAlertSceneHostComponentDidChangePreferredSceneDeactivationReason:(id)reason;
- (void)remoteAlertSceneHostComponentDidChangeShouldDisableOrientationUpdates:(id)updates;
- (void)remoteAlertSceneHostComponentDidChangeSupportedInterfaceOrientations:(id)orientations;
- (void)remoteAlertSceneHostComponentDidChangeSwipeDismissalStyle:(id)style;
- (void)remoteAlertSceneHostComponentDidChangeWhitePointAdaptivityStyle:(id)style;
- (void)remoteAlertSceneHostComponentDidDeactivate:(id)deactivate;
- (void)remoteAlertSceneHostComponentDidInvalidate:(id)invalidate;
- (void)remoteTransientOverlayHostViewController:(id)controller didTerminateWithError:(id)error;
- (void)remoteTransientOverlayHostViewController:(id)controller requestsWallpaperEffectUpdateWithAnimationSettings:(id)settings;
- (void)remoteTransientOverlayHostViewControllerDidChangeFeaturePolicy:(id)policy;
- (void)remoteTransientOverlayHostViewControllerDidChangePreferredSceneDeactivationReasonValue:(id)value;
- (void)remoteTransientOverlayHostViewControllerDidChangeShouldDisableOrientationUpdates:(id)updates;
- (void)remoteTransientOverlayHostViewControllerDidChangeSwipeDismissalStyle:(id)style;
- (void)remoteTransientOverlayHostViewControllerRequestsDeactivation:(id)deactivation;
- (void)remoteTransientOverlayHostViewControllerRequestsInvalidation:(id)invalidation;
- (void)scene:(id)scene clientDidConnect:(id)connect;
- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context;
- (void)setIsScreenshotMarkup:(BOOL)markup;
- (void)setShouldPresentEmbeddedInTargetSceneIfRequested:(BOOL)requested;
@end

@implementation SBRemoteTransientOverlayHostContentAdapter

- (id)_initWithContentViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SBRemoteTransientOverlayHostContentAdapter;
  v6 = [(SBRemoteTransientOverlayHostContentAdapter *)&v9 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_hostRemoteViewController, controller);
    [p_isa[13] setDelegate:p_isa];
  }

  return p_isa;
}

- (id)_initWithSceneController:(id)controller processIdentity:(id)identity configurationIdentifier:(id)identifier
{
  controllerCopy = controller;
  identityCopy = identity;
  identifierCopy = identifier;
  v23.receiver = self;
  v23.super_class = SBRemoteTransientOverlayHostContentAdapter;
  v12 = [(SBRemoteTransientOverlayHostContentAdapter *)&v23 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_sceneController, controller);
    [p_isa[7] setPresenter:p_isa];
    objc_storeStrong(p_isa + 6, identity);
    scene = [p_isa[7] scene];
    [scene setDelegate:p_isa];
    v15 = objc_opt_class();
    v16 = [scene componentForExtension:v15 ofClass:objc_opt_class()];
    v17 = p_isa[8];
    p_isa[8] = v16;

    [p_isa[8] setDelegate:p_isa];
    [p_isa[8] setConfigurationIdentifier:identifierCopy];
    v18 = objc_opt_class();
    v19 = [scene componentForExtension:v18 ofClass:objc_opt_class()];
    v20 = p_isa[9];
    p_isa[9] = v19;

    [p_isa[9] setDelegate:p_isa];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:p_isa selector:sel__willEnableSecureRendering_ name:*MEMORY[0x277D66028] object:0];
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
    scene = [(SBSingleSceneController *)self->_sceneController scene];
    [scene setDelegate:0];

    [(SBSingleSceneController *)self->_sceneController invalidate];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D66028] object:0];
  }

  v6.receiver = self;
  v6.super_class = SBRemoteTransientOverlayHostContentAdapter;
  [(SBRemoteTransientOverlayHostContentAdapter *)&v6 dealloc];
}

+ (void)requestContentAdaptersForAlertDefinition:(id)definition sceneWorkspaceController:(id)controller connectionHandler:(id)handler
{
  v80 = *MEMORY[0x277D85DE8];
  definitionCopy = definition;
  controllerCopy = controller;
  handlerCopy = handler;
  serviceName = [definitionCopy serviceName];
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
  v11 = definitionCopy;
  v60 = v11;
  v12 = serviceName;
  v61 = v12;
  v13 = MEMORY[0x223D6F7F0](v59);
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __130__SBRemoteTransientOverlayHostContentAdapter_requestContentAdaptersForAlertDefinition_sceneWorkspaceController_connectionHandler___block_invoke_2;
  v55[3] = &unk_2783C2158;
  selfCopy = self;
  v14 = v13;
  v56 = v14;
  v57 = v62;
  v15 = MEMORY[0x223D6F7F0](v55);
  if ([v12 length])
  {
    viewControllerClassName = [v11 viewControllerClassName];
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
    v51 = handlerCopy;
    v17 = [SBRemoteTransientOverlayHostViewController requestViewController:viewControllerClassName fromServiceWithBundleIdentifier:v49 connectionHandler:v47];

    sceneProvidingProcess = v50;
  }

  else
  {
    sceneProvidingProcess = [v11 sceneProvidingProcess];
    if (sceneProvidingProcess)
    {
      v45 = objc_alloc_init(MEMORY[0x277D75980]);
      v19 = objc_alloc_init(MEMORY[0x277D67C28]);
      [v45 setSpecification:v19];

      v20 = MEMORY[0x277CCACA8];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v23 = [v20 stringWithFormat:@"%@-RemoteAlert", uUIDString];
      [v45 setIdentifier:v23];

      v24 = [SBSingleSceneController alloc];
      v25 = *MEMORY[0x277D76EE8] + 5.0 + 0.1;
      v44 = [(SBSingleSceneController *)v24 initWithSceneWorkspaceController:controllerCopy sceneRequestOptions:v45 clientIdentity:sceneProvidingProcess traitsRole:v25 level:?];
      v26 = SBLogTransientOverlay();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        scene = [(SBSingleSceneController *)v44 scene];
        *buf = 138543618;
        v77 = v44;
        v78 = 2114;
        v79 = scene;
        _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "created singleSceneController %{public}@ with scene %{public}@", buf, 0x16u);
      }

      v28 = [self alloc];
      configurationIdentifier = [v11 configurationIdentifier];
      v30 = [v28 _initWithSceneController:v44 processIdentity:sceneProvidingProcess configurationIdentifier:configurationIdentifier];
      v31 = v71[5];
      v71[5] = v30;

      (*(v14 + 2))(v14, v71[5]);
      if (SBFIsChamoisExternalDisplayControllerAvailable() && [v11 supportsMultipleDisplayPresentations])
      {
        v32 = MEMORY[0x277CCACA8];
        uUID2 = [MEMORY[0x277CCAD78] UUID];
        uUIDString2 = [uUID2 UUIDString];
        v34 = [v32 stringWithFormat:@"%@-RemoteAlert", uUIDString2];
        [v45 setIdentifier:v34];

        v35 = [[SBSingleSceneController alloc] initWithSceneWorkspaceController:controllerCopy sceneRequestOptions:v45 clientIdentity:sceneProvidingProcess traitsRole:@"SBTraitsParticipantRoleTransientOverlay" level:v25];
        v36 = SBLogTransientOverlay();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          scene2 = [(SBSingleSceneController *)v35 scene];
          *buf = 138543618;
          v77 = v35;
          v78 = 2114;
          v79 = scene2;
          v43 = scene2;
          _os_log_impl(&dword_21ED4E000, v36, OS_LOG_TYPE_DEFAULT, "created secondary singleSceneController %{public}@ with scene %{public}@", buf, 0x16u);
        }

        v38 = [self alloc];
        secondaryConfigurationIdentifier = [v11 secondaryConfigurationIdentifier];
        v40 = [v38 _initWithSceneController:v35 processIdentity:sceneProvidingProcess configurationIdentifier:secondaryConfigurationIdentifier];
        v41 = v65[5];
        v65[5] = v40;

        (*(v14 + 2))(v14, v65[5]);
      }
    }

    (*(handlerCopy + 2))(handlerCopy, v71[5], v65[5], 0);
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

- (id)contentViewControllerForPresentationEmbeddedInSceneView:(BOOL)view
{
  hostRemoteViewController = self->_hostRemoteViewController;
  if (!hostRemoteViewController)
  {
    if (!view)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        contentViewController = [(UIViewController *)self->_sceneViewController contentViewController];
        goto LABEL_7;
      }
    }

    hostRemoteViewController = self->_sceneViewController;
  }

  contentViewController = hostRemoteViewController;
LABEL_7:

  return contentViewController;
}

- (int)serviceProcessIdentifier
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (remoteAlertHostComponent)
  {
    hostScene = [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent hostScene];
    clientHandle = [hostScene clientHandle];
    processHandle = [clientHandle processHandle];
    v8 = [processHandle pid];

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
    serviceBundleIdentifier = [(_UIRemoteViewController *)self->_hostRemoteViewController serviceBundleIdentifier];
    goto LABEL_9;
  }

  hostScene = [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent hostScene];
  clientHandle = [hostScene clientHandle];
  processHandle = [clientHandle processHandle];

  if ([processHandle hasConsistentLaunchdJob])
  {
    consistentJobLabel = [processHandle consistentJobLabel];
  }

  else
  {
    if (![processHandle isDaemon])
    {
      if ([processHandle isApplication])
      {
        bundle = [processHandle bundle];
        serviceBundleIdentifier = [bundle identifier];
      }

      else
      {
        serviceBundleIdentifier = 0;
      }

      goto LABEL_8;
    }

    consistentJobLabel = [processHandle daemonJobLabel];
  }

  serviceBundleIdentifier = consistentJobLabel;
LABEL_8:

LABEL_9:

  return serviceBundleIdentifier;
}

- (NSString)preferredDisplayLayoutElementIdentifier
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (remoteAlertHostComponent)
  {
    hostScene = [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent hostScene];
    identifier = [hostScene identifier];
  }

  else
  {
    identifier = [(SBRemoteTransientOverlayHostContentAdapter *)self serviceBundleIdentifier];
  }

  return identifier;
}

- (FBSSceneIdentityToken)clientSceneIdentityToken
{
  hostScene = [(SBSUIRemoteAlertSceneHostComponent *)self->_remoteAlertHostComponent hostScene];
  identityToken = [hostScene identityToken];

  return identityToken;
}

- (NSString)associatedSceneIdentifierToSuppressInSystemAperture
{
  hostScene = [(SBSUIRemoteAlertSceneHostComponent *)self->_remoteAlertHostComponent hostScene];
  identifier = [hostScene identifier];

  return identifier;
}

- (void)doBoundsPreservingRotationFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation
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
    view = [(UIViewController *)v10 view];
    [view setNeedsLayout];

    v8 = v10;
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBRemoteTransientOverlayHostContentAdapter *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBRemoteTransientOverlayHostContentAdapter *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
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
    _contentViewController = [(SBRemoteTransientOverlayHostContentAdapter *)self _contentViewController];
    preferredWhitePointAdaptivityStyle = [_contentViewController preferredWhitePointAdaptivityStyle];

    return preferredWhitePointAdaptivityStyle;
  }
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  result = self->_launchingInterfaceOrientation;
  if (!result)
  {
    delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
    v5 = [delegate defaultPreferredInterfaceOrientationForPresentationForRemoteTransientOverlayHostContentAdapter:self];

    return v5;
  }

  return result;
}

- (unint64_t)supportedInterfaceOrientations
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (remoteAlertHostComponent)
  {
    supportedInterfaceOrientations = [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent supportedInterfaceOrientations];
    if (supportedInterfaceOrientations)
    {
      return supportedInterfaceOrientations;
    }

    scene = [(SBSingleSceneController *)self->_sceneController scene];
    clientHandle = [scene clientHandle];

    if (clientHandle)
    {
      v10 = +[SBApplicationController sharedInstance];
      bundleIdentifier = [clientHandle bundleIdentifier];
      v12 = [v10 applicationWithBundleIdentifier:bundleIdentifier];

      info = [v12 info];
      supportedInterfaceOrientations2 = [info supportedInterfaceOrientations];

      if (supportedInterfaceOrientations2)
      {
        return supportedInterfaceOrientations2;
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

- (void)setIsScreenshotMarkup:(BOOL)markup
{
  if (self->_isScreenshotMarkup != markup)
  {
    self->_isScreenshotMarkup = markup;
    delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
    [delegate remoteTransientOverlayHostContentAdapterDidChangeFeaturePolicy:self];
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

- (BOOL)isPresentedFromSceneWithIdentityTokenString:(id)string
{
  remoteAlertHostComponent = self->_remoteAlertHostComponent;
  if (!remoteAlertHostComponent)
  {
    return 0;
  }

  stringCopy = string;
  hostScene = [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent hostScene];
  identityToken = [hostScene identityToken];
  stringRepresentation = [identityToken stringRepresentation];
  v8 = [stringRepresentation isEqualToString:stringCopy];

  return v8;
}

- (id)keyboardFocusTarget
{
  hostScene = [(SBSUIRemoteAlertSceneHostComponent *)self->_remoteAlertHostComponent hostScene];
  clientHandle = [hostScene clientHandle];
  processHandle = [clientHandle processHandle];
  v5 = [processHandle pid];

  if (v5 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [SBKeyboardFocusTarget targetForFBScene:hostScene];
  }

  return v6;
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  hostRemoteViewController = self->_hostRemoteViewController;
  if (hostRemoteViewController)
  {
    [(SBRemoteTransientOverlayHostViewController *)hostRemoteViewController configureWithContext:contextCopy completion:completionCopy];
  }

  else
  {
    remoteAlertHostComponent = self->_remoteAlertHostComponent;
    if (remoteAlertHostComponent)
    {
      [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent setConfigurationContext:contextCopy];
      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }
  }
}

- (void)prepareForActivationWithContext:(id)context presentationMode:(int64_t)mode windowScene:(id)scene completion:(id)completion
{
  contextCopy = context;
  sceneCopy = scene;
  completionCopy = completion;
  if ([contextCopy isActivatingForSiri])
  {
    self->_activatingForSiri = 1;
  }

  if ([contextCopy isSwitcherEligible])
  {
    serviceBundleIdentifier = [(SBRemoteTransientOverlayHostContentAdapter *)self serviceBundleIdentifier];
    if (serviceBundleIdentifier)
    {
      if (prepareForActivationWithContext_presentationMode_windowScene_completion__oOnceToken != -1)
      {
        [SBRemoteTransientOverlayHostContentAdapter prepareForActivationWithContext:presentationMode:windowScene:completion:];
      }

      if ([prepareForActivationWithContext_presentationMode_windowScene_completion__sAllowedBundleIDs containsObject:serviceBundleIdentifier] && !self->_switcherEligible)
      {
        self->_switcherEligible = 1;
        [(SBRemoteTransientOverlayHostContentAdapter *)self _updatePreferredGestureDismissalStyles];
      }
    }
  }

  if ([contextCopy shouldInvalidateWhenDeactivated])
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
    [(SBRemoteTransientOverlayHostViewController *)hostRemoteViewController prepareForActivationWithContext:contextCopy presentationMode:mode completion:completionCopy];
  }

  else if (self->_remoteAlertHostComponent)
  {
    [contextCopy setPresentationMode:mode];
    [(SBSUIRemoteAlertSceneHostComponent *)self->_remoteAlertHostComponent setActivationContext:contextCopy];
    [(SBSUIRemoteAlertSceneHostComponent *)self->_remoteAlertHostComponent setDefaultStatusBarHeightsForWindowScene:sceneCopy];
    remoteAlertHostComponent = self->_remoteAlertHostComponent;
    preferredSceneDeactivationReason = [contextCopy preferredSceneDeactivationReason];
    [(SBSUIRemoteAlertSceneHostComponent *)remoteAlertHostComponent setPreferredSceneDeactivationReason:preferredSceneDeactivationReason];

    v18 = [completionCopy copy];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __118__SBRemoteTransientOverlayHostContentAdapter_prepareForActivationWithContext_presentationMode_windowScene_completion___block_invoke_2;
    v30[3] = &unk_2783A9FC8;
    v19 = v18;
    v31 = v19;
    v20 = MEMORY[0x223D6F7F0](v30);
    sceneViewControllerReadyBlock = self->_sceneViewControllerReadyBlock;
    self->_sceneViewControllerReadyBlock = v20;

    -[SBSingleSceneController setInitialSupportedInterfaceOrientations:](self->_sceneController, "setInitialSupportedInterfaceOrientations:", [contextCopy initialSupportedInterfaceOrientations]);
    sb_defaultContext = [MEMORY[0x277D77770] sb_defaultContext];
    v23 = objc_alloc(MEMORY[0x277CF0BE8]);
    [sb_defaultContext deviceInfoFloatValueForKey:*MEMORY[0x277D77810]];
    v24 = [v23 initWithCornerRadius:?];
    [(SBSingleSceneController *)self->_sceneController setCornerRadiusConfiguration:v24];
    sceneController = self->_sceneController;
    _fbsDisplayConfiguration = [sceneCopy _fbsDisplayConfiguration];
    [(SBSingleSceneController *)sceneController setTargetDisplayConfiguration:_fbsDisplayConfiguration];

    scene = [(SBSingleSceneController *)self->_sceneController scene];
    if ([scene isValid])
    {
      if ([scene isActive])
      {
        clientHandle = [scene clientHandle];
        if (clientHandle)
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
      scene = [(SBSingleSceneController *)self->_sceneController scene];
      [scene setDelegate:0];

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
    selfCopy = self;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Received %{public}@, invalidating...", &v7, 0x16u);
  }

  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterRequestsInvalidation:self];
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

- (void)didTransitionToAttachedToWindowedAccessory:(BOOL)accessory windowedAccessoryCutoutFrameInScreen:(CGRect)screen
{
  if (self->_remoteAlertHostComponent)
  {
    remoteAlertHostComponent = self->_remoteAlertHostComponent;
  }

  else
  {
    remoteAlertHostComponent = self->_hostRemoteViewController;
  }

  [remoteAlertHostComponent didTransitionToAttachedToWindowedAccessory:accessory windowedAccessoryCutoutFrameInScreen:{screen.origin.x, screen.origin.y, screen.size.width, screen.size.height}];
}

- (void)setShouldPresentEmbeddedInTargetSceneIfRequested:(BOOL)requested
{
  requestedCopy = requested;
  self->_shouldPresentEmbeddedInTargetSceneIfRequested = requested;
  [(SBSingleSceneController *)self->_sceneController setShouldPresentAnyContentState:?];
  [(SBSingleSceneController *)self->_sceneController setShouldActivateForDisplayConfiguration:!requestedCopy];
  sceneController = self->_sceneController;

  [(SBSingleSceneController *)sceneController setShouldForegroundForDisplayConfiguration:!requestedCopy];
}

- (void)presentForTransientOverlayAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  hostRemoteViewController = self->_hostRemoteViewController;
  if (hostRemoteViewController)
  {
    v8 = completionCopy;
    [(SBRemoteTransientOverlayHostViewController *)hostRemoteViewController presentForTransientOverlayAnimated:animatedCopy completion:completionCopy];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    v8 = completionCopy;
    completionCopy[2](completionCopy);
  }

  completionCopy = v8;
LABEL_6:
}

- (void)dismissForTransientOverlayAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  hostRemoteViewController = self->_hostRemoteViewController;
  if (hostRemoteViewController)
  {
    v8 = completionCopy;
    [(SBRemoteTransientOverlayHostViewController *)hostRemoteViewController dismissForTransientOverlayAnimated:animatedCopy completion:completionCopy];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    v8 = completionCopy;
    completionCopy[2](completionCopy);
  }

  completionCopy = v8;
LABEL_6:
}

- (BOOL)handleHomeButtonPress
{
  if (([(SBRemoteTransientOverlayHostContentAdapter *)self _desiredHardwareButtonEvents]& 0x10) != 0)
  {

    LOBYTE(_allowsHomeButtonDismissal) = [(SBRemoteTransientOverlayHostContentAdapter *)self _performButtonEvents:16];
  }

  else
  {
    _allowsHomeButtonDismissal = [(SBRemoteTransientOverlayHostContentAdapter *)self _allowsHomeButtonDismissal];
    if (_allowsHomeButtonDismissal)
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

      LOBYTE(_allowsHomeButtonDismissal) = 1;
    }
  }

  return _allowsHomeButtonDismissal;
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

- (BOOL)handleHeadsetButtonPress:(BOOL)press
{
  pressCopy = press;
  _desiredHardwareButtonEvents = [(SBRemoteTransientOverlayHostContentAdapter *)self _desiredHardwareButtonEvents];
  if (!pressCopy)
  {
    if ((_desiredHardwareButtonEvents & 8) != 0)
    {
      v6 = 8;
      goto LABEL_7;
    }

    return 0;
  }

  if ((_desiredHardwareButtonEvents & 0x20) == 0)
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

- (id)presentScene:(id)scene viewControllerBuilderBlock:(id)block
{
  blockCopy = block;
  shouldPresentEmbeddedInTargetSceneIfRequested = [(SBRemoteTransientOverlayHostContentAdapter *)self shouldPresentEmbeddedInTargetSceneIfRequested];
  v7 = blockCopy[2](blockCopy);

  if (shouldPresentEmbeddedInTargetSceneIfRequested)
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
    scene = [(SBSingleSceneController *)self->_sceneController scene];
    if ([scene isValid] && (objc_msgSend(scene, "clientHandle"), v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
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

- (id)dismissScene:(id)scene
{
  parentViewController = [(UIViewController *)self->_sceneViewController parentViewController];
  [parentViewController bs_removeChildViewController:self->_sceneViewController];

  sceneViewController = self->_sceneViewController;
  self->_sceneViewController = 0;

  return 0;
}

- (void)scene:(id)scene clientDidConnect:(id)connect
{
  sceneCopy = scene;
  connectCopy = connect;
  if (self->_sceneViewControllerWaitingForClientConnection && self->_sceneViewControllerReadyBlock)
  {
    self->_sceneViewControllerWaitingForClientConnection = 0;
    [(SBRemoteTransientOverlayHostContentAdapter *)self _callSceneViewControllerReadyBlockWithError:0];
  }
}

- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context
{
  error = [context error];
  if (error)
  {
    v7 = error;
    if (self->_sceneViewControllerWaitingForClientConnection && self->_sceneViewControllerReadyBlock)
    {
      self->_sceneViewControllerWaitingForClientConnection = 0;
      error = [(SBRemoteTransientOverlayHostContentAdapter *)self _callSceneViewControllerReadyBlockWithError:error];
    }

    else
    {
      delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
      [delegate remoteTransientOverlayHostContentAdapter:self didTerminateWithError:v7];
    }
  }

  MEMORY[0x2821F9730](error);
}

- (void)featurePolicyHostComponentDidChangeShouldDisableBanners:(id)banners
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterDidChangeFeaturePolicy:self];
}

- (void)featurePolicyHostComponentDidChangeShouldDisableAlertItems:(id)items
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterDidChangeFeaturePolicy:self];
}

- (void)featurePolicyHostComponentDidChangeShouldDisableControlCenter:(id)center
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterDidChangeFeaturePolicy:self];
}

- (void)featurePolicyHostComponentDidChangeShouldDisableSiri:(id)siri
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterDidChangeFeaturePolicy:self];
}

- (void)featurePolicyHostComponentDidChangeShouldDisableInteractiveScreenshotGesture:(id)gesture
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterDidChangeFeaturePolicy:self];
}

- (void)featurePolicyHostComponentDidChangeShouldDisableReachability:(id)reachability
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterDidChangeFeaturePolicy:self];
}

- (void)remoteAlertSceneHostComponentDidDeactivate:(id)deactivate
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterRequestsDeactivation:self];
}

- (void)remoteAlertSceneHostComponentDidInvalidate:(id)invalidate
{
  self->_invalidating = 1;
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterRequestsInvalidation:self];
}

- (void)remoteAlertSceneHostComponentDidChangeSwipeDismissalStyle:(id)style
{
  swipeDismissalStyle = [style swipeDismissalStyle];

  [(SBRemoteTransientOverlayHostContentAdapter *)self _handleUpdatedSwipeDismissalStyle:swipeDismissalStyle];
}

- (void)remoteAlertSceneHostComponentDidChangeDesiredAutoLockDuration:(id)duration
{
  [duration desiredAutoLockDuration];

  [(SBRemoteTransientOverlayHostContentAdapter *)self _setDesiredAutoLockDuration:?];
}

- (void)remoteAlertSceneHostComponentDidChangeDesiredIdleTimerSettings:(id)settings
{
  desiredIdleTimerSettings = [settings desiredIdleTimerSettings];
  [(SBRemoteTransientOverlayHostContentAdapter *)self _setDesiredIdleTimerSettings:desiredIdleTimerSettings];
}

- (void)remoteAlertSceneHostComponentDidChangeShouldDisableOrientationUpdates:(id)updates
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterDidChangeShouldDisableOrientationUpdates:self];
}

- (void)remoteAlertSceneHostComponentDidChangeSupportedInterfaceOrientations:(id)orientations
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterDidChangeSupportedInterfaceOrientations:self];
}

- (void)remoteAlertSceneHostComponent:(id)component didChangePreferredStatusBarVisibilityWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapter:self needsStatusBarAppearanceUpdateWithAnimationSettings:settingsCopy];
}

- (void)remoteAlertSceneHostComponentDidChangeWhitePointAdaptivityStyle:(id)style
{
  whitePointAdaptivityStyle = [style whitePointAdaptivityStyle];

  [(SBRemoteTransientOverlayHostContentAdapter *)self _updatePreferredWhitePointAdaptivityStyle:whitePointAdaptivityStyle];
}

- (void)remoteAlertSceneHostComponentDidChangePreferredSceneDeactivationReason:(id)reason
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterDidChangePreferredSceneDeactivationReasonValue:self];
}

- (void)remoteAlertSceneHostComponentDidChangeHIDEventDeferringDisabled:(id)disabled
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterDidChangeHIDEventDeferringDisabled:self];
}

- (void)remoteTransientOverlayHostViewControllerDidChangeFeaturePolicy:(id)policy
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterDidChangeFeaturePolicy:self];
}

- (void)remoteTransientOverlayHostViewControllerDidChangeSwipeDismissalStyle:(id)style
{
  swipeDismissalStyle = [style swipeDismissalStyle];

  [(SBRemoteTransientOverlayHostContentAdapter *)self _handleUpdatedSwipeDismissalStyle:swipeDismissalStyle];
}

- (void)remoteTransientOverlayHostViewControllerDidChangePreferredSceneDeactivationReasonValue:(id)value
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterDidChangePreferredSceneDeactivationReasonValue:self];
}

- (void)remoteTransientOverlayHostViewControllerDidChangeShouldDisableOrientationUpdates:(id)updates
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterDidChangeShouldDisableOrientationUpdates:self];
}

- (void)remoteTransientOverlayHostViewControllerRequestsDeactivation:(id)deactivation
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterRequestsDeactivation:self];
}

- (void)remoteTransientOverlayHostViewControllerRequestsInvalidation:(id)invalidation
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapterRequestsInvalidation:self];
}

- (void)remoteTransientOverlayHostViewController:(id)controller didTerminateWithError:(id)error
{
  errorCopy = error;
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapter:self didTerminateWithError:errorCopy];
}

- (void)remoteTransientOverlayHostViewController:(id)controller requestsWallpaperEffectUpdateWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  [delegate remoteTransientOverlayHostContentAdapter:self requestsWallpaperEffectUpdateWithAnimationSettings:settingsCopy];
}

- (int64_t)defaultPreferredInterfaceOrientationForPresentationForRemoteTransientOverlayHostViewController:(id)controller
{
  delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
  v5 = [delegate defaultPreferredInterfaceOrientationForPresentationForRemoteTransientOverlayHostContentAdapter:self];

  return v5;
}

- (void)_willEnableSecureRendering:(id)rendering
{
  renderingCopy = rendering;
  if (self->_sceneController)
  {
    if (!self->_sceneViewControllerReadyBlock)
    {
      v7 = renderingCopy;
      _shouldInvalidateForSecureDrawingMode = [(SBRemoteTransientOverlayHostContentAdapter *)self _shouldInvalidateForSecureDrawingMode];
      renderingCopy = v7;
      if (_shouldInvalidateForSecureDrawingMode)
      {
        delegate = [(SBRemoteTransientOverlayHostContentAdapter *)self delegate];
        [delegate remoteTransientOverlayHostContentAdapterRequestsInvalidation:self];

        renderingCopy = v7;
      }
    }
  }
}

- (BOOL)_shouldInvalidateForSecureDrawingMode
{
  hostScene = [(SBSUIRemoteAlertSceneHostComponent *)self->_remoteAlertHostComponent hostScene];
  clientHandle = [hostScene clientHandle];
  processHandle = [clientHandle processHandle];
  sb_canDrawWhileLocked = [processHandle sb_canDrawWhileLocked];

  windowSceneManager = [SBApp windowSceneManager];
  scene = [(SBSingleSceneController *)self->_sceneController scene];
  settings = [scene settings];
  sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];
  v11 = [windowSceneManager windowSceneForDisplayIdentity:sb_displayIdentityForSceneManagers];

  secureDisplayStateProvider = [v11 secureDisplayStateProvider];
  v13 = secureDisplayStateProvider;
  if (secureDisplayStateProvider)
  {
    authenticationController = secureDisplayStateProvider;
  }

  else
  {
    authenticationController = [SBApp authenticationController];
  }

  v15 = authenticationController;

  isInSecureDisplayMode = [v15 isInSecureDisplayMode];
  return isInSecureDisplayMode & (sb_canDrawWhileLocked ^ 1);
}

- (void)_callSceneViewControllerReadyBlockWithError:(id)error
{
  errorCopy = error;
  if (self->_sceneViewControllerReadyBlock)
  {
    if (!errorCopy)
    {
      if ([(SBRemoteTransientOverlayHostContentAdapter *)self _shouldInvalidateForSecureDrawingMode])
      {
        errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBRemoteTransientOverlayViewControllerErrorDomain" code:-1000 userInfo:0];
      }

      else
      {
        errorCopy = 0;
      }
    }

    v6 = errorCopy;
    (*(self->_sceneViewControllerReadyBlock + 2))();
    sceneViewControllerReadyBlock = self->_sceneViewControllerReadyBlock;
    self->_sceneViewControllerReadyBlock = 0;

    errorCopy = v6;
  }
}

- (void)_setIdleTimerDisabled:(BOOL)disabled forReason:(id)reason
{
  disabledCopy = disabled;
  reasonCopy = reason;
  idleTimerDisabledReasons = self->_idleTimerDisabledReasons;
  v14 = reasonCopy;
  if (disabledCopy)
  {
    if (!idleTimerDisabledReasons)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v9 = self->_idleTimerDisabledReasons;
      self->_idleTimerDisabledReasons = v8;

      reasonCopy = v14;
      idleTimerDisabledReasons = self->_idleTimerDisabledReasons;
    }

    [(NSMutableSet *)idleTimerDisabledReasons addObject:reasonCopy];
  }

  else
  {
    [(NSMutableSet *)idleTimerDisabledReasons removeObject:reasonCopy];
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

- (void)_setDesiredAutoLockDuration:(double)duration
{
  self->_customIdleExpirationTimeout = duration;
  WeakRetained = objc_loadWeakRetained(&self->_idleTimerCoordinator);
  v4 = [(SBRemoteTransientOverlayHostContentAdapter *)self coordinatorRequestedIdleTimerBehavior:WeakRetained];
  v5 = [WeakRetained idleTimerProvider:self didProposeBehavior:v4 forReason:@"SBRemoteTransientOverlayHostContentAdapterSetDesiredAutoLockDuration"];
}

- (void)_setDesiredIdleTimerSettings:(id)settings
{
  settingsCopy = settings;
  self->_shouldUseLockedIdleTimerDuration = [settingsCopy usesLockScreenRules];
  self->_shouldDisableIdleWarn = [settingsCopy disablesWarn];
  [settingsCopy autoLockTimeout];
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

- (BOOL)_performButtonEvents:(unint64_t)events
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained remoteTransientOverlayHostContentAdapter:self requestsActionForHandlingButtonEvents:events];

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

- (void)_handleUpdatedSwipeDismissalStyle:(int64_t)style
{
  if (style != 1)
  {
    goto LABEL_6;
  }

  serviceBundleIdentifier = [(SBRemoteTransientOverlayHostContentAdapter *)self serviceBundleIdentifier];
  if (serviceBundleIdentifier)
  {
    v5 = serviceBundleIdentifier;
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

  dismissalAnimationStyle = [remoteAlertHostComponent dismissalAnimationStyle];
  hostRemoteViewController = self->_remoteAlertHostComponent;
  if (!hostRemoteViewController)
  {
    hostRemoteViewController = self->_hostRemoteViewController;
  }

  swipeDismissalStyle = [hostRemoteViewController swipeDismissalStyle];
  featurePolicyHostComponent = self->_featurePolicyHostComponent;
  if (featurePolicyHostComponent)
  {
    allowsMenuButtonDismissal = [(SBSUIFeaturePolicyHostComponent *)featurePolicyHostComponent allowsMenuButtonDismissal];
  }

  else
  {
    allowsMenuButtonDismissal = [(SBRemoteTransientOverlayHostViewController *)self->_hostRemoteViewController allowsHomeButtonDismissal];
  }

  v9 = allowsMenuButtonDismissal;
  v10 = self->_featurePolicyHostComponent;
  if (v10)
  {
    desiredHardwareButtonEvents = [(SBSUIFeaturePolicyHostComponent *)v10 desiredHardwareButtonEvents];
  }

  else
  {
    desiredHardwareButtonEvents = [(SBRemoteTransientOverlayHostViewController *)self->_hostRemoteViewController preferredHardwareButtonEvents];
  }

  v12 = desiredHardwareButtonEvents;
  if (dismissalAnimationStyle == 2 && [(SBRemoteTransientOverlayHostContentAdapter *)self isSwitcherEligible])
  {
    v13 = 2;
    v14 = 3;
  }

  else
  {
    v13 = 2;
    v15 = (v12 >> 4) & 1;
    v16 = v9 | v15;
    if (swipeDismissalStyle == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = v9 | v15;
    }

    if (swipeDismissalStyle != 1)
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

- (void)_updatePreferredWhitePointAdaptivityStyle:(int64_t)style
{
  preferredWhitePointAdaptivityStyleValue = self->_preferredWhitePointAdaptivityStyleValue;
  if (!preferredWhitePointAdaptivityStyleValue || ([MEMORY[0x277CCABB0] numberWithInteger:style], v6 = objc_claimAutoreleasedReturnValue(), v7 = -[NSNumber isEqualToNumber:](preferredWhitePointAdaptivityStyleValue, "isEqualToNumber:", v6), v6, !v7))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:style];
    v9 = self->_preferredWhitePointAdaptivityStyleValue;
    self->_preferredWhitePointAdaptivityStyleValue = v8;

    _contentViewController = [(SBRemoteTransientOverlayHostContentAdapter *)self _contentViewController];
    [_contentViewController setNeedsWhitePointAdaptivityStyleUpdate];
  }
}

- (void)_updateBackgroundActivitiesToSuppressWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  initWithEmptyParameters = [objc_alloc(MEMORY[0x277D75AA0]) initWithEmptyParameters];
  if (settingsCopy)
  {
    [settingsCopy duration];
    [initWithEmptyParameters setDuration:?];
    [settingsCopy delay];
    [initWithEmptyParameters setDelay:?];
    [initWithEmptyParameters setStyleAnimation:1];
    v6 = [MEMORY[0x277CF0D38] factoryWithSettings:settingsCopy];
    [initWithEmptyParameters setAnimationFactory:v6];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __105__SBRemoteTransientOverlayHostContentAdapter__updateBackgroundActivitiesToSuppressWithAnimationSettings___block_invoke;
  v7[3] = &unk_2783A8C18;
  v7[4] = self;
  [MEMORY[0x277D75AA0] animateWithParameters:initWithEmptyParameters animations:v7 completion:0];
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

- (void)_updatePreferredBackgroundStyleWithAnimationSettings:(id)settings
{
  settingsCopy = settings;
  v4 = objc_opt_class();
  hostScene = [(SBSUIRemoteAlertSceneHostComponent *)self->_remoteAlertHostComponent hostScene];
  clientSettings = [hostScene clientSettings];
  v7 = SBSafeCast(v4, clientSettings);

  backgroundStyle = [v7 backgroundStyle];
  requestedBackgroundStyle = backgroundStyle;
  if (self->_remoteAlertHostComponent)
  {
    prefersWallpaperTunnelActive = backgroundStyle != 0;
  }

  else
  {
    prefersWallpaperTunnelActive = [(SBRemoteTransientOverlayHostViewController *)self->_hostRemoteViewController prefersWallpaperTunnelActive];
    if (!self->_remoteAlertHostComponent)
    {
      requestedBackgroundStyle = [(SBRemoteTransientOverlayHostViewController *)self->_hostRemoteViewController requestedBackgroundStyle];
    }
  }

  if (prefersWallpaperTunnelActive)
  {
    v11 = requestedBackgroundStyle;
  }

  else
  {
    v11 = 0;
  }

  if (self->_preferredBackgroundStyle != v11)
  {
    self->_preferredBackgroundStyle = v11;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained remoteTransientOverlayHostContentAdapter:self requestsWallpaperEffectUpdateWithAnimationSettings:settingsCopy];

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