@interface _UIRemoteViewControllerLegacyImpl
+ (id)_requestViewController:(id)a3 traitCollection:(id)a4 fromServiceWithBundleIdentifier:(id)a5 service:(id)a6 connectionHandler:(id)a7 newRemoteViewController:(id)a8 remoteViewControllerImpl:(id)a9;
+ (void)initialize;
- ($115C4C562B26FF47E01F9F4EA65B5887)serviceAuditToken;
- (BOOL)_needsUnderflowPropertyUpdate;
- (BOOL)_shouldUpdateRemoteTextEffectsWindow;
- (BOOL)_wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:(id)a3;
- (BOOL)_windowSceneIsKeyboardWindowScene:(uint64_t)a1;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (BOOL)shouldPropagateAppearanceCustomizations;
- (NSSet)_keyboardSceneLayers;
- (NSString)debugDescription;
- (_UIRemoteViewController)_owningRemoteViewController;
- (_UIZoomTransitionController)_ancestorZoomTransitionController;
- (id)_cancelTouchesForCurrentEventInHostedContent;
- (id)_existingView;
- (id)_fenceForSynchronizedDrawing;
- (id)_hostedWindowServiceDeferringTarget;
- (id)_initWithViewServiceBundleIdentifier:(id)a3 owningRemoteViewController:(id)a4;
- (id)_multitaskingDragExclusionRects;
- (id)_sheetPresentationController;
- (id)_terminateWithError:(id)a3;
- (id)_window;
- (id)disconnect;
- (id)serviceBundleIdentifier;
- (id)succinctDescription;
- (id)textEffectsWindowForServiceScreen;
- (id)traitCollection;
- (id)view;
- (id)window;
- (int64_t)_preferredInterfaceOrientation;
- (int64_t)_preferredInterfaceOrientationForWindow:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)__dismissTextServiceSessionAnimated:(BOOL)a3;
- (void)__handleFocusMovementAction:(id)a3;
- (void)__setInterdictServiceViewTouches:(BOOL)a3;
- (void)__setMediaOverridePID:(int)a3;
- (void)__setServiceMaxFrameSize:(CGSize)a3;
- (void)__setSupportedInterfaceOrientations:(id)a3;
- (void)__setViewServiceIsDisplayingPopover:(BOOL)a3;
- (void)__showEditAlertViewWithToken:(int64_t)a3 canUndo:(BOOL)a4 canRedo:(BOOL)a5;
- (void)__showServiceForText:(id)a3 selectedTextRangeValue:(id)a4 type:(int64_t)a5 fromRectValue:(id)a6 replyHandler:(id)a7;
- (void)__showServiceForType:(int64_t)a3 withContext:(id)a4 replyHandler:(id)a5;
- (void)__trampolineButtonPressData:(id)a3 canceled:(BOOL)a4;
- (void)__viewServiceAddSceneForwardingLayersForOwners:(id)a3;
- (void)__viewServiceDidChangeHasScrollToTopView:(BOOL)a3;
- (void)__viewServiceDidChangeKeyWindow:(BOOL)a3;
- (void)__viewServiceDidDropTouchEventForInsecurePresentation;
- (void)__viewServiceDidUpdateClientToHostAction:(id)a3;
- (void)__viewServiceDidUpdateMultitaskingDragExclusionRects:(id)a3;
- (void)__viewServiceDidUpdatePreferredScreenEdgesDeferringSystemGestures:(unint64_t)a3;
- (void)__viewServiceDidUpdatePreferredStatusBarStyle:(int64_t)a3 preferredStatusBarVisibility:(int)a4 updateAnimation:(int64_t)a5 currentAnimationSettings:(id)a6;
- (void)__viewServiceDidUpdatePreferredUserInterfaceStyle:(int64_t)a3;
- (void)__viewServiceDidUpdatePreferredWhitePointAdaptationStyle:(int64_t)a3 animationSettings:(id)a4;
- (void)__viewServiceDidUpdatePrefersHomeIndicatorAutoHidden:(BOOL)a3;
- (void)__viewServiceDidUpdatePrefersPointerLocked:(BOOL)a3;
- (void)__viewServiceDidUpdateResolvedPhysicalButtonConfigurations:(id)a3;
- (void)__viewServiceDismissInteractionDidBeginAtLocation:(CGPoint)a3 withVelocity:(CGPoint)a4;
- (void)__viewServiceDismissInteractionDidCancelWithVelocity:(CGPoint)a3 originalPosition:(CGPoint)a4;
- (void)__viewServiceDismissInteractionDidDismissWithVelocity:(CGPoint)a3;
- (void)__viewServiceDismissInteractionDidIssueUpdate:(id)a3;
- (void)__viewServiceInstrinsicContentSizeDidChange:(CGSize)a3 fence:(id)a4;
- (void)__viewServicePopoverDidChangeContentSize:(CGSize)a3 animated:(BOOL)a4 fence:(id)a5 withReplyHandler:(id)a6;
- (void)__viewServicePreferredContentSizeDidChange:(CGSize)a3 fence:(id)a4;
- (void)__viewServiceRemoveSceneForwardingLayersForOwners:(id)a3;
- (void)__viewServiceSheetGrabberDidTriggerPrimaryAction;
- (void)__viewServiceSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)a3 dismissible:(BOOL)a4 interruptedOffset:(CGPoint)a5;
- (void)__viewServiceSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5 dismissible:(BOOL)a6;
- (void)__viewServiceSheetInteractionDraggingDidEnd;
- (void)__viewServiceSheetPresentationClientConfigurationDidChange:(id)a3 attributes:(id)a4;
- (void)_applicationDidBecomeActive:(id)a3;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillAddDeactivationReason:(id)a3;
- (void)_applicationWillDeactivate:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_awakeWithConnectionInfo:(id)a3;
- (void)_beginDeferringProxySheetConfigurationUpdates;
- (void)_beginObservingNotificationsForEventDeferringIfNeeded;
- (void)_beginObservingSceneMoveNotificationsIfNeeded;
- (void)_configureSizeViewConstraintsForWindow:(id)a3 interfaceOrientation:(int64_t)a4;
- (void)_didReceiveProductivityGestureAction:(id)a3;
- (void)_didRotateFromInterfaceOrientation:(int64_t)a3 forwardToChildControllers:(BOOL)a4 skipSelf:(BOOL)a5;
- (void)_endDeferringProxySheetConfigurationUpdates;
- (void)_endDynamicButtonEventDeferringIfNeeded;
- (void)_endNoPresentingViewControllerAlertController:(id)a3;
- (void)_enhancedWindowingModeDidChange:(id)a3;
- (void)_firstResponderDidChange:(id)a3;
- (void)_hostDidEnterBackground:(id)a3;
- (void)_hostDidEvaluatePencilBarrelEventFocusForSceneTransition:(id)a3;
- (void)_hostSceneDidEnterBackground:(id)a3;
- (void)_hostSceneWillEnterForeground:(id)a3;
- (void)_hostWillEnterForeground:(id)a3;
- (void)_initializeAccessibilityPortInformation;
- (void)_movedToParentSceneWithSettings:(id)a3;
- (void)_noteWindowState:(BOOL)a3;
- (void)_notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded:(id)a3;
- (void)_objc_initiateDealloc;
- (void)_parentSceneDidUpdateWithDiff:(id)a3;
- (void)_pencilBarrelEventFocusEvaluatedForSceneTransition:(id)a3;
- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5;
- (void)_physicalButtonProxyInteraction:(id)a3 didReceiveBSAction:(id)a4;
- (void)_prepareTouchDeliveryPolicy;
- (void)_referenceDisplayModeStatusDidChange:(id)a3;
- (void)_removeTextEffectsRemoteViews;
- (void)_restoreTextEffectsRemoteView;
- (void)_sceneDidEnterBackground:(id)a3;
- (void)_sceneWillEnterForeground:(id)a3;
- (void)_screenDidConnect:(id)a3;
- (void)_screenDidDisconnect:(id)a3;
- (void)_screenDidUpdate:(id)a3;
- (void)_screenDidUpdateCapture:(id)a3;
- (void)_scrollToTopFromTouchAtViewLocation:(CGPoint)a3 resultHandler:(id)a4;
- (void)_serviceWantsKeyboardEventsWithPromotedFirstResponder:(BOOL)a3 completionHandler:(id)a4;
- (void)_setContentOverlayInsets:(UIEdgeInsets)a3 andLeftMargin:(double)a4 rightMargin:(double)a5;
- (void)_setSecurityModeForViewsLayer;
- (void)_setSheetConfiguration:(id)a3;
- (void)_setUpHomeAffordanceObserverInteractionForViewIfNeeded:(id)a3;
- (void)_setViewClipsToBounds:(BOOL)a3;
- (void)_setWantsKeyboardEnvironmentEventDeferring:(BOOL)a3;
- (void)_snapshotAndRemoveTextEffectsRemoteView;
- (void)_statusBarHeightDidChange:(id)a3;
- (void)_statusBarOrientationDidChange:(id)a3;
- (void)_synchronizeAnimationsInActionsIfNecessary:(id)a3;
- (void)_systemReferenceAngleDidChange:(id)a3;
- (void)_terminateUnconditionallyThen:(id)a3;
- (void)_timelinesForDateInterval:(id)a3 completion:(id)a4;
- (void)_traitCollectionDidChange:(id)a3;
- (void)_uirvc_applicationKeyWindowWillChange:(id)a3;
- (void)_uirvc_keyboardWindowSceneSettingsSceneWillChange:(id)a3;
- (void)_uirvc_windowBecameKey:(id)a3;
- (void)_uirvc_windowDidMoveToScene:(id)a3;
- (void)_uirvc_windowWillMoveToScene:(id)a3;
- (void)_updateAncestorZoomTransitionControllerWithWindow:(id)a3;
- (void)_updateDynamicButtonEventDeferringIfNeededWithOldResolvedConfigurations:(void *)a3 newResolvedConfigurations:;
- (void)_updateLockStatusHostingVisibility;
- (void)_updateParentHostingRegistryIfNecessaryForWindow:(id *)a1;
- (void)_updateProxySheetConfigurationIfNeccessaryGivenOldConfiguration:(id)a3;
- (void)_updateServiceSceneContext;
- (void)_updateTextEffectsGeometriesImmediatelyIfNeeded;
- (void)_updateTintColor;
- (void)_updateTouchGrabbingView;
- (void)_updateUnderflowProperties;
- (void)_updateWithFrameSpecifier:(id)a3 completion:(id)a4;
- (void)_willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4 forwardToChildControllers:(BOOL)a5 skipSelf:(BOOL)a6;
- (void)_willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4 forwardToChildControllers:(BOOL)a5 skipSelf:(BOOL)a6;
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
- (void)appendDescriptionToStream:(id)a3;
- (void)createAppProtectionShieldView;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)loadView;
- (void)performReplyActionsInsideSynchronousReply:(id)a3;
- (void)presentAppProtectionShieldIfServiceCurrentlyRequiresAuth;
- (void)presentAppProtectionShieldUnconditionallyIfProtectionIsEnabled;
- (void)presentAppProtectionShieldView;
- (void)removeAppProtectionShieldView;
- (void)requestAppProtectionAuthIfNecessary;
- (void)setInheritsSecurity:(BOOL)a3;
- (void)setServiceViewShouldShareTouchesWithHost:(BOOL)a3;
- (void)setupAppProtectionIfNecessary;
- (void)shieldViewUnlockButtonPressed:(id)a3;
- (void)synchronizeAnimationsInActions:(id)a3;
- (void)synchronizeAnimationsInActionsWithSynchronousReply:(id)a3;
- (void)updateTouchInterdictionViewLayout;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _UIRemoteViewControllerLegacyImpl

- (void)_endDynamicButtonEventDeferringIfNeeded
{
  if (a1 && *(a1 + 312))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: end dynamic button deferring", objc_opt_class(), a1];
    [(_UIEventDeferringOwnershipToken *)*(a1 + 312) endEventDeferringWithReason:v3];
    v2 = *(a1 + 312);
    *(a1 + 312) = 0;
  }
}

- (void)_updateParentHostingRegistryIfNecessaryForWindow:(id *)a1
{
  if (a1)
  {
    v3 = [a2 _remoteContentParent];
    obj = [v3 _childRemoteContentRegistry];

    WeakRetained = objc_loadWeakRetained(a1 + 58);
    if (obj != WeakRetained)
    {
      v5 = objc_loadWeakRetained(a1 + 58);
      v6 = [a1 _owningRemoteViewController];
      [v5 removeChildViewService:v6];

      v7 = [a1 _owningRemoteViewController];
      [obj addChildViewService:v7];

      objc_storeWeak(a1 + 58, obj);
    }
  }
}

+ (id)_requestViewController:(id)a3 traitCollection:(id)a4 fromServiceWithBundleIdentifier:(id)a5 service:(id)a6 connectionHandler:(id)a7 newRemoteViewController:(id)a8 remoteViewControllerImpl:(id)a9
{
  v32 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = v19;
  if (v16)
  {
    objc_storeStrong(v19 + 3, a6);
  }

  v21 = [objc_opt_class() serviceViewControllerInterface];
  v22 = [objc_opt_class() exportedInterface];
  v23 = [_UIViewServiceViewControllerDeputyXPCInterface interfaceWithExportedInterface:v21 remoteViewControllerInterface:v22];

  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __183___UIRemoteViewControllerLegacyImpl__requestViewController_traitCollection_fromServiceWithBundleIdentifier_service_connectionHandler_newRemoteViewController_remoteViewControllerImpl___block_invoke;
  aBlock[3] = &unk_1E7128618;
  v40 = v41;
  v24 = v17;
  v39 = v24;
  v25 = v20;
  v37 = v25;
  v26 = v18;
  v38 = v26;
  v27 = _Block_copy(aBlock);
  if (v16)
  {
    [_UIRemoteViewControllerConnectionRequest requestViewControllerWithService:v16 traitCollection:v14 legacyImpl:v25 remoteViewControllerClass:objc_opt_class() serviceViewControllerDeputyInterface:v23 connectionHandler:v27];
  }

  else
  {
    [_UIRemoteViewControllerConnectionRequest requestViewController:v32 fromServiceWithBundleIdentifier:v15 traitCollection:v14 legacyImpl:v25 serviceViewControllerDeputyInterface:v23 connectionHandler:v27];
  }
  v28 = ;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __183___UIRemoteViewControllerLegacyImpl__requestViewController_traitCollection_fromServiceWithBundleIdentifier_service_connectionHandler_newRemoteViewController_remoteViewControllerImpl___block_invoke_338;
  v33[3] = &unk_1E7114D78;
  v29 = v28;
  v34 = v29;
  v35 = v41;
  v30 = [_UIAsyncInvocation invocationWithBlock:v33];

  _Block_object_dispose(v41, 8);

  return v30;
}

- (id)_initWithViewServiceBundleIdentifier:(id)a3 owningRemoteViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _UIRemoteViewControllerLegacyImpl;
  v8 = [(_UIRemoteViewControllerLegacyImpl *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_owningRemoteViewController, v7);
    v10 = [v6 copy];
    serviceBundleIdentifier = v9->_serviceBundleIdentifier;
    v9->_serviceBundleIdentifier = v10;

    v9->__viewClipsToBounds = 1;
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      v12 = [(_UIRemoteViewControllerLegacyImpl *)v9 _owningRemoteViewController];
      [v12 setPreferredContentSize:{320.0, 480.0}];
    }

    v13 = [(_UIRemoteViewControllerLegacyImpl *)v9 _owningRemoteViewController];
    [v13 setContentSizeForViewInPopover:{320.0, 480.0}];

    v9->__isKeyWindowForTextEffectsWindow = 1;
    [(_UIRemoteViewControllerLegacyImpl *)v9 _updateTextEffectsGeometriesImmediatelyIfNeeded];
  }

  return v9;
}

- (void)_awakeWithConnectionInfo:(id)a3
{
  v4 = a3;
  objc_initWeak(location, self);
  *&self->_isUpdatingSize = 0;
  proxySheetConfigurationBeforeDeferring = self->__proxySheetConfigurationBeforeDeferring;
  self->__proxySheetConfigurationBeforeDeferring = 0;

  v6 = [v4 session];
  session = self->_session;
  self->_session = v6;

  v8 = self->_session;
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __62___UIRemoteViewControllerLegacyImpl__awakeWithConnectionInfo___block_invoke;
  v101[3] = &unk_1E7106800;
  objc_copyWeak(&v102, location);
  [(_UIViewServiceHostSessionDeputyShim *)v8 setTerminationHandler:v101];
  v9 = MEMORY[0x1E696B098];
  v10 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v11 = [v9 valueWithPointer:v10];
  callerID = self->_callerID;
  self->_callerID = v11;

  v13 = [v4 serviceViewControllerControlMessageProxy];
  serviceViewControllerControlMessageProxy = self->_serviceViewControllerControlMessageProxy;
  self->_serviceViewControllerControlMessageProxy = v13;

  v15 = [v4 serviceViewControllerProxy];

  if (v15)
  {
    v16 = [v4 serviceViewControllerProxy];
    v17 = [_UIViewServiceReplyControlProxy proxyWithTarget:v16];

    v18 = [_UIViewServiceImplicitAnimationEncodingProxy proxyEncodingAnimationsForTarget:v17 controlMessageTarget:self->_serviceViewControllerControlMessageProxy];
    serviceViewControllerProxy = self->_serviceViewControllerProxy;
    self->_serviceViewControllerProxy = v18;
  }

  v20 = [v4 viewControllerOperatorProxy];
  v21 = [_UIViewServiceReplyControlProxy proxyWithTarget:v20];

  v22 = [v4 viewControllerOperatorProxy];
  v23 = [_UIViewServiceImplicitAnimationEncodingProxy proxyEncodingAnimationsForTarget:v21 controlMessageTarget:v22];
  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  self->_viewControllerOperatorProxy = v23;

  [self->_viewControllerOperatorProxy __hostReadyToReceiveMessagesFromServiceViewController];
  v25 = _UIRemoteViewControllerHalfDisconnectionInvocationForProxy(self->_viewControllerOperatorProxy);
  viewControllerOperatorHalfDisconnectionInvocation = self->_viewControllerOperatorHalfDisconnectionInvocation;
  self->_viewControllerOperatorHalfDisconnectionInvocation = v25;

  v27 = [v4 textEffectsOperatorProxy];

  if (v27)
  {
    v28 = [v4 textEffectsOperatorProxy];
    v29 = [_UIViewServiceReplyControlProxy proxyWithTarget:v28];

    v30 = [v4 textEffectsOperatorProxy];
    v31 = [_UIViewServiceImplicitAnimationEncodingProxy proxyEncodingAnimationsForTarget:v29 controlMessageTarget:v30];
    textEffectsOperatorProxy = self->_textEffectsOperatorProxy;
    self->_textEffectsOperatorProxy = v31;
  }

  else
  {
    v29 = self->_textEffectsOperatorProxy;
    self->_textEffectsOperatorProxy = 0;
  }

  v33 = _UIRemoteViewControllerHalfDisconnectionInvocationForProxy(self->_textEffectsOperatorProxy);
  textEffectsOperatorHalfDisconnectionInvocation = self->_textEffectsOperatorHalfDisconnectionInvocation;
  self->_textEffectsOperatorHalfDisconnectionInvocation = v33;

  v35 = [v4 serviceViewControllerSupportedInterfaceOrientations];
  serviceViewControllerSupportedInterfaceOrientations = self->_serviceViewControllerSupportedInterfaceOrientations;
  self->_serviceViewControllerSupportedInterfaceOrientations = v35;

  v37 = [v4 serviceAccessibilityServerPortWrapper];

  if (v37)
  {
    v38 = [v4 serviceAccessibilityServerPortWrapper];
    v39 = [v38 extractPortAndIKnowWhatImDoingISwear];

    if (v39 - 1 <= 0xFFFFFFFD)
    {
      if (mach_port_mod_refs(*MEMORY[0x1E69E9A60], v39, 0, 1))
      {
        v40 = 0;
      }

      else
      {
        v40 = v39;
      }

      self->_serviceAccessibilityServerPort = v40;
    }
  }

  self->_preferredStatusBarStyle = [v4 preferredStatusBarStyle];
  self->_preferredStatusBarVisibility = [v4 preferredStatusBarVisibility];
  v41 = [MEMORY[0x1E696AD88] defaultCenter];
  [v41 addObserver:self selector:sel__firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];
  if ([UIApp _isSpringBoard] && !_UIDeviceNativeUserInterfaceIdiom())
  {
    v42 = UITextEffectsWindowViewControllerWillRotateNotification;
  }

  else
  {
    v42 = &UIApplicationDidChangeStatusBarOrientationNotification;
  }

  [v41 addObserver:self selector:sel__statusBarOrientationDidChange_ name:*v42 object:0];
  [v41 addObserver:self selector:sel__statusBarHeightDidChange_ name:@"UIApplicationStatusBarHeightChangedNotification" object:0];
  [v41 addObserver:self selector:sel__applicationWillEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
  [v41 addObserver:self selector:sel__sceneWillEnterForeground_ name:@"UISceneWillEnterForegroundNotification" object:0];
  [v41 addObserver:self selector:sel__hostWillEnterForeground_ name:0x1EFBB47D0 object:0];
  [v41 addObserver:self selector:sel__hostSceneWillEnterForeground_ name:0x1EFBB4810 object:0];
  [v41 addObserver:self selector:sel__pencilBarrelEventFocusEvaluatedForSceneTransition_ name:@"_UIPencilEventDidEvaluateBarrelFocusForSceneTransition" object:0];
  [v41 addObserver:self selector:sel__hostDidEvaluatePencilBarrelEventFocusForSceneTransition_ name:@"_UIViewServiceHostDidEvaluatePencilBarrelEventFocusForSceneTransition" object:0];
  [v41 addObserver:self selector:sel__applicationDidEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  [v41 addObserver:self selector:sel__sceneDidEnterBackground_ name:@"UISceneDidEnterBackgroundNotification" object:0];
  [v41 addObserver:self selector:sel__hostDidEnterBackground_ name:0x1EFBB47B0 object:0];
  [v41 addObserver:self selector:sel__hostSceneDidEnterBackground_ name:0x1EFBB47F0 object:0];
  [v41 addObserver:self selector:sel__applicationDidFinishSuspendSnapshot_ name:@"_UIApplicationDidFinishSuspensionSnapshotNotification" object:0];
  [v41 addObserver:self selector:sel__screenDidUpdate_ name:@"_UIScreenDisplayConfigurationUpdatedNotification" object:0];
  [v41 addObserver:self selector:sel__referenceDisplayModeStatusDidChange_ name:@"UIScreenReferenceDisplayModeStatusDidChangeNotification" object:0];
  [v41 addObserver:self selector:sel__enhancedWindowingModeDidChange_ name:@"_UIWindowSceneEnhancedWindowingModeChanged" object:0];
  [v41 addObserver:self selector:sel__systemReferenceAngleDidChange_ name:*MEMORY[0x1E69DED18] object:0];
  [v41 addObserver:self selector:sel__updateTextEffectsGeometriesImmediatelyIfNeeded name:@"UITextEffectsWindowOffsetDidChangeNotification" object:0];
  [v41 addObserver:self selector:sel__screenDidConnect_ name:@"_UIScreenDidConnectNotification" object:0];
  [v41 addObserver:self selector:sel__screenDidDisconnect_ name:@"_UIScreenDidDisconnectNotification" object:0];
  [v41 addObserver:self selector:sel__screenDidUpdateCapture_ name:@"UIScreenCapturedDidChangeNotification" object:0];
  v43 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v44 = [_UISizeTrackingView viewWithRemoteViewController:v43 viewControllerOperatorProxy:self->_viewControllerOperatorProxy textEffectsOperatorProxy:self->_textEffectsOperatorProxy remoteViewControllerImpl:self];
  sizeTrackingView = self->_sizeTrackingView;
  self->_sizeTrackingView = v44;

  v46 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  [v46 loadViewIfRequired];

  [(_UIRemoteViewControllerLegacyImpl *)self _setUpHomeAffordanceObserverInteractionForViewIfNeeded:self->_sizeTrackingView];
  if (self->_proxyPhysicalButtonInteraction)
  {
    [(UIView *)self->_sizeTrackingView addInteraction:?];
  }

  v47 = [v4 hostedWindowHostingHandle];
  v48 = [_UIRemoteView viewWithHostedWindowHostingHandle:v47];
  serviceViewControllerRemoteView = self->_serviceViewControllerRemoteView;
  self->_serviceViewControllerRemoteView = v48;

  v50 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  [(_UIRemoteView *)self->_serviceViewControllerRemoteView setRemoteViewController:v50];

  [(UIView *)self->_sizeTrackingView addSubview:self->_serviceViewControllerRemoteView];
  v51 = [objc_opt_self() mainScreen];
  v52 = [v51 displayIdentity];
  lastNotifiedServiceScreenDisplayIdentity = self->_lastNotifiedServiceScreenDisplayIdentity;
  self->_lastNotifiedServiceScreenDisplayIdentity = v52;

  if (UISelfHasEntitlement(@"com.apple.QuartzCore.secure-mode"))
  {
    v54 = [(_UILayerHostView *)self->_serviceViewControllerRemoteView layerHost];
    [v54 setStopsSecureSuperlayersValidation:1];
  }

  v55 = [v4 textEffectsWindowAboveStatusBarHostingHandle];

  if (v55)
  {
    v56 = [v4 textEffectsWindowAboveStatusBarHostingHandle];
    v57 = [(_UIRemoteView *)_UITextEffectsRemoteView viewWithHostedWindowHostingHandle:v56];
    textEffectsAboveStatusBarRemoteView = self->_textEffectsAboveStatusBarRemoteView;
    self->_textEffectsAboveStatusBarRemoteView = v57;

    v59 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    [(_UIRemoteView *)self->_textEffectsAboveStatusBarRemoteView setRemoteViewController:v59];
  }

  v60 = [v4 textEffectsWindowHostingHandle];

  if (v60)
  {
    v61 = [v4 textEffectsWindowHostingHandle];
    v62 = [(_UIRemoteView *)_UITextEffectsRemoteView viewWithHostedWindowHostingHandle:v61];
    fullScreenTextEffectsRemoteView = self->_fullScreenTextEffectsRemoteView;
    self->_fullScreenTextEffectsRemoteView = v62;

    v64 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    [(_UIRemoteView *)self->_fullScreenTextEffectsRemoteView setRemoteViewController:v64];
  }

  v65 = [v4 remoteKeyboardsWindowHostingHandle];

  if (v65)
  {
    v66 = [v4 remoteKeyboardsWindowHostingHandle];
    v67 = [(_UIRemoteView *)_UITextEffectsRemoteView viewWithHostedWindowHostingHandle:v66];
    remoteKeyboardRemoteView = self->_remoteKeyboardRemoteView;
    self->_remoteKeyboardRemoteView = v67;

    v69 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    [(_UIRemoteView *)self->_remoteKeyboardRemoteView setRemoteViewController:v69];
  }

  v70 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  if (![objc_opt_class() __shouldHostRemoteTextEffectsWindow])
  {
    goto LABEL_38;
  }

  v71 = off_1E70EA000;
  if (_UIDeviceNativeUserInterfaceIdiom() == 1)
  {
    v72 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    v73 = [v72 _window];
    v74 = [v73 windowScene];
    v75 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v74 forViewService:1];
    if ([v75 _isHostedInAnotherProcess])
    {
      v76 = v21;
      v77 = [UIApp _frontMostAppOrientation] - 5;

      v78 = __CFADD__(v77, 2);
      v21 = v76;
      v71 = off_1E70EA000;
      if (v78)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    }

    v71 = off_1E70EA000;
  }

LABEL_34:
  v79 = v71[326];
  v80 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v81 = [v80 _window];
  v82 = [v81 windowScene];
  v83 = [(__objc2_class *)v79 sharedTextEffectsWindowForWindowScene:v82 forViewService:1];

  v84 = [v83 rootViewController];
  v85 = [v84 view];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62___UIRemoteViewControllerLegacyImpl__awakeWithConnectionInfo___block_invoke_2;
  aBlock[3] = &unk_1E70F6228;
  v86 = v85;
  v98 = v86;
  v70 = v83;
  v99 = v70;
  v100 = self;
  v87 = _Block_copy(aBlock);
  v88 = v87;
  if (v84)
  {
    [v84 performWithSafeTransitionFrames:v87];
  }

  else
  {
    (*(v87 + 2))(v87);
  }

LABEL_38:
LABEL_39:
  v89 = [_UISceneKeyboardProxyLayerForwardingPresentationViewService alloc];
  v90 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v91 = [(_UISceneKeyboardProxyLayerForwardingPresentationViewService *)&v89->super.isa initWithRemoteViewController:v90];
  keyboardProxyPresentationEnvironment = self->_keyboardProxyPresentationEnvironment;
  self->_keyboardProxyPresentationEnvironment = v91;

  v93 = +[_UISceneKeyboardProxyLayerForwardingManager sharedInstance];
  [v93 trackPresentationEnvironment:self->_keyboardProxyPresentationEnvironment];

  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __62___UIRemoteViewControllerLegacyImpl__awakeWithConnectionInfo___block_invoke_3;
  v96[3] = &__block_descriptor_40_e14_v16__0___v___8lu32l8;
  v96[4] = self;
  v94 = [_UIAsyncInvocation invocationWithBlock:v96];
  terminationInvocation = self->_terminationInvocation;
  self->_terminationInvocation = v94;

  objc_destroyWeak(&v102);
  objc_destroyWeak(location);
}

- (void)loadView
{
  v3 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  [v3 setView:self->_sizeTrackingView];
}

- (id)_fenceForSynchronizedDrawing
{
  v3 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v4 = [v3 __shouldRemoteViewControllerFenceOperations];

  if (!v4)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  if ([v6 _appearState])
  {
    v7 = [(_UISizeTrackingView *)self->_sizeTrackingView _fencingEffectsAreVisible];

    if (!v7)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [(UIView *)self->_sizeTrackingView _window];
    v8 = [v6 _windowHostingScene];
    v9 = [v8 _synchronizedDrawingFence];
  }

  else
  {
    v9 = 0;
  }

LABEL_9:
  objc_autoreleasePoolPop(v5);
LABEL_10:

  return v9;
}

- (void)_synchronizeAnimationsInActionsIfNecessary:(id)a3
{
  v6 = a3;
  v4 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v5 = [v4 __shouldRemoteViewControllerFenceOperations];

  if (v5)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self synchronizeAnimationsInActions:v6];
  }

  else
  {
    v6[2]();
  }
}

- (void)synchronizeAnimationsInActions:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(_UIRemoteViewControllerLegacyImpl *)self _fenceForSynchronizedDrawing];
  if (v6)
  {
    if (_UIUpdateCycleEnabled())
    {
      v10 = 0uLL;
      v11 = 0;
      _UIUpdateSchedulerRequestUpdate(&_UIUpdateCycleMainScheduler, 0, &v10);
      viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
      v8 = v10;
      v9 = v11;
      [viewControllerOperatorProxy __participateInSystemAnimationFence:v6 timing:&v8];
    }

    else
    {
      [self->_viewControllerOperatorProxy __participateInSystemAnimationFence:v6];
    }

    v4[2](v4);
    [self->_viewControllerOperatorProxy __finishParticipatingInSystemAnimationFence:v6];
  }

  else
  {
    v4[2](v4);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)synchronizeAnimationsInActionsWithSynchronousReply:(id)a3
{
  v4 = _Block_copy(a3);
  [(_UIRemoteViewControllerLegacyImpl *)self synchronizeAnimationsInActions:v4];
}

- (void)performReplyActionsInsideSynchronousReply:(id)a3
{
  v3 = _Block_copy(a3);
  v3[2]();
}

- (id)serviceBundleIdentifier
{
  serviceBundleIdentifier = self->_serviceBundleIdentifier;
  if (serviceBundleIdentifier)
  {
    v3 = serviceBundleIdentifier;
  }

  else
  {
    v3 = [(_UIRemoteViewService *)self->_remoteViewService identifier];
  }

  return v3;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)serviceAuditToken
{
  result = self->_session;
  if (result)
  {
    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result serviceAuditToken];
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

- (void)setInheritsSecurity:(BOOL)a3
{
  v3 = a3;
  [(_UIRemoteView *)self->_serviceViewControllerRemoteView _setInheritsSecurity:?];
  [(_UIRemoteView *)self->_fullScreenTextEffectsRemoteView _setInheritsSecurity:v3];
  [(_UIRemoteView *)self->_textEffectsAboveStatusBarRemoteView _setInheritsSecurity:v3];
  remoteKeyboardRemoteView = self->_remoteKeyboardRemoteView;

  [(_UIRemoteView *)remoteKeyboardRemoteView _setInheritsSecurity:v3];
}

- (void)_setSecurityModeForViewsLayer
{
  if ([(_UIRemoteViewControllerLegacyImpl *)self inheritsSecurity])
  {
    v4 = [(_UIRemoteViewControllerLegacyImpl *)self view];
    v3 = [v4 layer];
    [v3 setSecurityMode:*MEMORY[0x1E6979E68]];
  }
}

- (void)__setMediaOverridePID:(int)a3
{
  v3 = *&a3;
  if ([UIApp isFrontBoard])
  {
    viewControllerOperatorProxy = self->_viewControllerOperatorProxy;

    [viewControllerOperatorProxy __setMediaOverridePID:v3];
  }
}

- (void)_updateTextEffectsGeometriesImmediatelyIfNeeded
{
  if ([(_UIRemoteViewControllerLegacyImpl *)self _shouldUpdateRemoteTextEffectsWindow])
  {
    sizeTrackingView = self->_sizeTrackingView;

    [(_UISizeTrackingView *)sizeTrackingView _updateTextEffectsGeometriesImmediately];
  }
}

- (int64_t)_preferredInterfaceOrientation
{
  v3 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
  v4 = [(_UIRemoteViewControllerLegacyImpl *)self _preferredInterfaceOrientationForWindow:v3];

  return v4;
}

- (int64_t)_preferredInterfaceOrientationForWindow:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "interfaceOrientation")}];
  LODWORD(v4) = [v5 _windowOwnsInterfaceOrientation];

  if (v4 && ![(NSArray *)self->_serviceViewControllerSupportedInterfaceOrientations containsObject:v6])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(UIApp, "_expectedViewOrientation")}];

    if ([(NSArray *)self->_serviceViewControllerSupportedInterfaceOrientations containsObject:v7])
    {
      goto LABEL_8;
    }

    if ([UIApp _isSpringBoard])
    {
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(UIApp, "activeInterfaceOrientation")}];

      v7 = v8;
    }

    if ([(NSArray *)self->_serviceViewControllerSupportedInterfaceOrientations containsObject:v7])
    {
LABEL_8:
      v6 = v7;
    }

    else
    {
      v6 = [(NSArray *)self->_serviceViewControllerSupportedInterfaceOrientations firstObject];
    }
  }

  v10 = [v6 integerValue];

  return v10;
}

- (void)_statusBarOrientationDidChange:(id)a3
{
  if (![(_UIRemoteViewControllerLegacyImpl *)self _isUpdatingSize])
  {
    v4 = [(_UIRemoteViewControllerLegacyImpl *)self _window];

    if (v4)
    {
      viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
      v6 = [(_UIRemoteViewControllerLegacyImpl *)self _preferredInterfaceOrientation];

      [viewControllerOperatorProxy __hostDidChangeStatusBarOrientationToInterfaceOrientation:v6];
    }
  }
}

- (void)_statusBarHeightDidChange:(id)a3
{
  v4 = a3;
  if (![(_UIRemoteViewControllerLegacyImpl *)self _isUpdatingSize])
  {
    v5 = [v4 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"UIApplicationStatusBarHeightChangedDurationKey"];
    [v6 doubleValue];
    v8 = v7;

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63___UIRemoteViewControllerLegacyImpl__statusBarHeightDidChange___block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    [UIView animateWithDuration:v9 animations:v8];
  }
}

- (void)_applicationWillEnterForeground:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69___UIRemoteViewControllerLegacyImpl__applicationWillEnterForeground___block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [(_UIRemoteViewControllerLegacyImpl *)self _synchronizeAnimationsInActionsIfNecessary:v3];
}

- (void)_sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  if (([v5 isEqualToString:@"UISceneWillEnterForegroundNotification"] & 1) == 0)
  {

LABEL_5:
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63___UIRemoteViewControllerLegacyImpl__sceneWillEnterForeground___block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    [(_UIRemoteViewControllerLegacyImpl *)self _synchronizeAnimationsInActionsIfNecessary:v9];
    [(_UIRemoteViewControllerLegacyImpl *)self requestAppProtectionAuthIfNecessary];
    goto LABEL_6;
  }

  v6 = [v4 object];
  v7 = [(_UIRemoteViewControllerLegacyImpl *)self window];
  v8 = [v7 windowScene];

  if (v6 == v8)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_hostWillEnterForeground:(id)a3
{
  v8 = a3;
  v4 = [(_UIRemoteViewControllerLegacyImpl *)self view];
  v5 = [v8 object];
  v6 = [v5 view];
  v7 = [v4 isDescendantOfView:v6];

  if (v7)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _applicationWillEnterForeground:v8];
  }
}

- (void)_hostSceneWillEnterForeground:(id)a3
{
  v9 = a3;
  v4 = [(_UIRemoteViewControllerLegacyImpl *)self view];
  v5 = [v4 window];
  v6 = [v9 object];
  v7 = [v6 parentViewController];
  v8 = [v7 _window];

  if (v5 == v8)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _sceneWillEnterForeground:v9];
  }
}

- (void)_pencilBarrelEventFocusEvaluatedForSceneTransition:(id)a3
{
  v7 = [a3 object];
  v4 = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
  v5 = [v4 _window];
  v6 = [v5 _eventRoutingScene];

  if (v6 && v7 == v6)
  {
    [self->_viewControllerOperatorProxy __hostDidEvaluatePencilBarrelEventFocusForSceneTransition];
  }
}

- (void)_hostDidEvaluatePencilBarrelEventFocusForSceneTransition:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewControllerLegacyImpl *)self view];
  v6 = [v5 _window];
  v7 = [v4 object];

  v8 = [v7 parentViewController];
  v9 = [v8 _window];

  if (v6 == v9)
  {
    viewControllerOperatorProxy = self->_viewControllerOperatorProxy;

    [viewControllerOperatorProxy __hostDidEvaluatePencilBarrelEventFocusForSceneTransition];
  }
}

- (void)_applicationDidEnterBackground:(id)a3
{
  [self->_viewControllerOperatorProxy __hostDidEnterBackground];

  [(_UIRemoteViewControllerLegacyImpl *)self _cancelProxiedEditAlertViewAnimated:0];
}

- (void)_sceneDidEnterBackground:(id)a3
{
  v8 = a3;
  v4 = [v8 name];
  if ([v4 isEqualToString:@"UISceneDidEnterBackgroundNotification"])
  {
    v5 = [v8 object];
    v6 = [(_UIRemoteViewControllerLegacyImpl *)self window];
    v7 = [v6 windowScene];

    if (v5 != v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [self->_viewControllerOperatorProxy __hostSceneDidEnterBackground];
  [(_UIRemoteViewControllerLegacyImpl *)self presentAppProtectionShieldUnconditionallyIfProtectionIsEnabled];
LABEL_6:
}

- (void)_hostDidEnterBackground:(id)a3
{
  v8 = a3;
  v4 = [(_UIRemoteViewControllerLegacyImpl *)self view];
  v5 = [v8 object];
  v6 = [v5 view];
  v7 = [v4 isDescendantOfView:v6];

  if (v7)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _applicationDidEnterBackground:v8];
  }
}

- (void)_hostSceneDidEnterBackground:(id)a3
{
  v9 = a3;
  v4 = [(_UIRemoteViewControllerLegacyImpl *)self view];
  v5 = [v4 window];
  v6 = [v9 object];
  v7 = [v6 parentViewController];
  v8 = [v7 _window];

  if (v5 == v8)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _sceneDidEnterBackground:v9];
  }
}

- (BOOL)_windowSceneIsKeyboardWindowScene:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    if (+[_UIRemoteKeyboards enabled](_UIRemoteKeyboards, "enabled") && [v4 _hasSettingsScene])
    {
      v6 = [v4 screen];
      v7 = [UIWindowScene _keyboardWindowSceneForScreen:v6 create:0];
      v5 = v7 == v4;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)textEffectsWindowForServiceScreen
{
  v2 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
  v3 = [v2 windowScene];
  v4 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v3 forViewService:1];

  return v4;
}

- (void)_restoreTextEffectsRemoteView
{
  v22 = *MEMORY[0x1E69E9840];
  fullScreenTextEffectsSnapshotView = self->_fullScreenTextEffectsSnapshotView;
  if (fullScreenTextEffectsSnapshotView)
  {
    [(UIView *)fullScreenTextEffectsSnapshotView removeFromSuperview];
    v4 = self->_fullScreenTextEffectsSnapshotView;
    self->_fullScreenTextEffectsSnapshotView = 0;
  }

  v5 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v6 = [objc_opt_class() __shouldHostRemoteTextEffectsWindow];

  if (v6)
  {
    v7 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
    v8 = [v7 windowScene];

    if (self->_fullScreenTextEffectsRemoteView && v8)
    {
      v9 = [(_UIRemoteViewControllerLegacyImpl *)self textEffectsWindowForServiceScreen];
      [v9 addSubview:self->_fullScreenTextEffectsRemoteView];
    }

    if (self->_textEffectsAboveStatusBarRemoteView)
    {
      v10 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
      v11 = [v10 windowScene];
      v12 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v11 forViewService:1];
      [v12 addSubview:self->_textEffectsAboveStatusBarRemoteView];
    }

    if (+[UIKeyboard usesInputSystemUI])
    {
      if (!self->_callerID)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v19 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            v20 = 138412290;
            v21 = self;
            _os_log_fault_impl(&dword_188A29000, v19, OS_LOG_TYPE_FAULT, "UIRemoteViewController %@ has a nil _callerID", &v20, 0xCu);
          }
        }

        else
        {
          v18 = *(__UILogGetCategoryCachedImpl("Assert", &_restoreTextEffectsRemoteView___s_category) + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v20 = 138412290;
            v21 = self;
            _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "UIRemoteViewController %@ has a nil _callerID", &v20, 0xCu);
          }
        }
      }

      v13 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
      [v13 addWindowHostingPID:-[_UIViewServiceHostSessionDeputyShim servicePID](self->_session callerID:{"servicePID"), self->_callerID}];
    }

    else
    {
      if (!self->_remoteKeyboardRemoteView)
      {
LABEL_15:

        return;
      }

      v13 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
      remoteKeyboardRemoteView = self->_remoteKeyboardRemoteView;
      v15 = [(_UIViewServiceHostSessionDeputyShim *)self->_session servicePID];
      v16 = [(_UIRemoteViewControllerLegacyImpl *)self textEffectsWindowForServiceScreen];
      v17 = [v16 windowScene];
      [v13 addHostedWindowView:remoteKeyboardRemoteView fromPID:v15 forScene:v17 callerID:self->_callerID];
    }

    goto LABEL_15;
  }
}

- (void)_snapshotAndRemoveTextEffectsRemoteView
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED497178 != -1)
  {
    dispatch_once(&qword_1ED497178, &__block_literal_global_662);
  }

  if ((_MergedGlobals_70 & 1) == 0)
  {
    fullScreenTextEffectsSnapshotView = self->_fullScreenTextEffectsSnapshotView;
    if (fullScreenTextEffectsSnapshotView)
    {
      [(UIView *)fullScreenTextEffectsSnapshotView removeFromSuperview];
      v4 = self->_fullScreenTextEffectsSnapshotView;
      self->_fullScreenTextEffectsSnapshotView = 0;
    }

    if ([(_UIRemoteViewControllerLegacyImpl *)self _shouldUpdateRemoteTextEffectsWindow])
    {
      v5 = +[UIWindow _applicationKeyWindow];
      v6 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
      v7 = [v6 windowScene];
      v8 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v7 forViewService:1];

      v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
      v10 = v9;
      if (v5)
      {
        [v9 addObject:v5];
      }

      if (v8)
      {
        [v10 addObject:v8];
      }

      if ([v10 count])
      {
        [v8 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v26 = *MEMORY[0x1E697A008];
        v27[0] = MEMORY[0x1E695E110];
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
        v20 = _UISnapshotWindowsAtViewRect(v10, v8, v19, v12, v14, v16, v18);

        [v8 bounds];
        [(UIView *)v20 setFrame:?];
        [(UIView *)v20 setUserInteractionEnabled:0];
        v21 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
        v22 = [v21 windowScene];
        v23 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v22 forViewService:1];
        [v23 addSubview:v20];

        v24 = self->_fullScreenTextEffectsSnapshotView;
        self->_fullScreenTextEffectsSnapshotView = v20;
      }

      [(_UIRemoteViewControllerLegacyImpl *)self _removeTextEffectsRemoteViews];
      v25 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
      [(_UIRemoteViewControllerLegacyImpl *)self _noteWindowState:v25 != 0];
    }
  }
}

- (void)_removeTextEffectsRemoteViews
{
  v9 = *MEMORY[0x1E69E9840];
  [(UIView *)self->_fullScreenTextEffectsRemoteView removeFromSuperview];
  [(UIView *)self->_textEffectsAboveStatusBarRemoteView removeFromSuperview];
  if (+[UIKeyboard usesInputSystemUI])
  {
    if (!self->_callerID)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v6 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          v7 = 138412290;
          v8 = self;
          _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "UIRemoteViewController %@ has a nil _callerID", &v7, 0xCu);
        }
      }

      else
      {
        v5 = *(__UILogGetCategoryCachedImpl("Assert", &_removeTextEffectsRemoteViews___s_category) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v7 = 138412290;
          v8 = self;
          _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "UIRemoteViewController %@ has a nil _callerID", &v7, 0xCu);
        }
      }
    }

    v3 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    [v3 removeWindowHostingPID:-[_UIViewServiceHostSessionDeputyShim servicePID](self->_session callerID:{"servicePID"), self->_callerID}];
  }

  else
  {
    remoteKeyboardRemoteView = self->_remoteKeyboardRemoteView;

    [(UIView *)remoteKeyboardRemoteView removeFromSuperview];
  }
}

- (void)_applicationDidBecomeActive:(id)a3
{
  self->_snapshotTextEffectsAfterRotation = 0;
  [(_UIRemoteViewControllerLegacyImpl *)self _restoreTextEffectsRemoteView];
  [self->_viewControllerOperatorProxy __hostDidBecomeActive];

  [(_UIRemoteViewControllerLegacyImpl *)self _updateServiceSceneContext];
}

- (void)_applicationWillDeactivate:(id)a3
{
  v6 = a3;
  if (qword_1ED497188 != -1)
  {
    dispatch_once(&qword_1ED497188, &__block_literal_global_412_1);
  }

  v4 = qword_1ED497180;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_applicationDeactivationReason];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _snapshotAndRemoveTextEffectsRemoteView];
  }

  [self->_viewControllerOperatorProxy __hostWillResignActive];
}

- (void)_applicationWillAddDeactivationReason:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  self->_applicationDeactivationReason = [v4 intValue];
}

- (void)_updateLockStatusHostingVisibility
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = [(_UIRemoteViewControllerLegacyImpl *)self view];
  v4 = [v3 window];
  if (v4)
  {
    v5 = v4;
    v6 = [(_UIRemoteViewControllerLegacyImpl *)self view];
    v7 = [v6 window];
    v8 = [v7 isHidden];

    if (!v8)
    {
      v9 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
      v10 = [objc_opt_class() __shouldHostRemoteTextEffectsWindow];

      if (!v10)
      {
        return;
      }

      fullScreenTextEffectsRemoteView = self->_fullScreenTextEffectsRemoteView;
      if (fullScreenTextEffectsRemoteView)
      {
        v12 = [(UIView *)fullScreenTextEffectsRemoteView superview];

        if (!v12)
        {
          v13 = [(_UIRemoteViewControllerLegacyImpl *)self textEffectsWindowForServiceScreen];
          [v13 addSubview:self->_fullScreenTextEffectsRemoteView];
        }
      }

      textEffectsAboveStatusBarRemoteView = self->_textEffectsAboveStatusBarRemoteView;
      if (textEffectsAboveStatusBarRemoteView)
      {
        v15 = [(UIView *)textEffectsAboveStatusBarRemoteView superview];

        if (!v15)
        {
          v16 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
          v17 = [v16 windowScene];
          v18 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v17 forViewService:1];
          [v18 addSubview:self->_textEffectsAboveStatusBarRemoteView];
        }
      }

      if (+[UIKeyboard usesInputSystemUI])
      {
        v19 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
        v20 = [v19 hasWindowHostingCallerID:self->_callerID];

        if (v20)
        {
          return;
        }

        if (!self->_callerID)
        {
          if (os_variant_has_internal_diagnostics())
          {
            v32 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v35 = self;
              _os_log_fault_impl(&dword_188A29000, v32, OS_LOG_TYPE_FAULT, "UIRemoteViewController %@ has a nil _callerID", buf, 0xCu);
            }
          }

          else
          {
            v30 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED497198) + 8);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v35 = self;
              _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "UIRemoteViewController %@ has a nil _callerID", buf, 0xCu);
            }
          }
        }

        v21 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
        [v21 addWindowHostingPID:-[_UIViewServiceHostSessionDeputyShim servicePID](self->_session callerID:{"servicePID"), self->_callerID}];
        goto LABEL_18;
      }

      remoteKeyboardRemoteView = self->_remoteKeyboardRemoteView;
      if (remoteKeyboardRemoteView)
      {
        v24 = [(UIView *)remoteKeyboardRemoteView superview];

        if (!v24)
        {
          v33 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
          v25 = self->_remoteKeyboardRemoteView;
          v26 = [(_UIViewServiceHostSessionDeputyShim *)self->_session servicePID];
          v27 = [(_UIRemoteViewControllerLegacyImpl *)self textEffectsWindowForServiceScreen];
          v28 = [v27 windowScene];
          [v33 addHostedWindowView:v25 fromPID:v26 forScene:v28 callerID:self->_callerID];
        }
      }

      return;
    }
  }

  else
  {
  }

  [(UIView *)self->_fullScreenTextEffectsRemoteView removeFromSuperview];
  [(UIView *)self->_textEffectsAboveStatusBarRemoteView removeFromSuperview];
  if (+[UIKeyboard usesInputSystemUI])
  {
    if (!self->_callerID)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v31 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v35 = self;
          _os_log_fault_impl(&dword_188A29000, v31, OS_LOG_TYPE_FAULT, "UIRemoteViewController %@ has a nil _callerID", buf, 0xCu);
        }
      }

      else
      {
        v29 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED497190) + 8);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v35 = self;
          _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "UIRemoteViewController %@ has a nil _callerID", buf, 0xCu);
        }
      }
    }

    v21 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    [v21 removeWindowHostingPID:-[_UIViewServiceHostSessionDeputyShim servicePID](self->_session callerID:{"servicePID"), self->_callerID}];
LABEL_18:

    return;
  }

  v22 = self->_remoteKeyboardRemoteView;

  [(UIView *)v22 removeFromSuperview];
}

- (void)_uirvc_windowBecameKey:(id)a3
{
  v7 = a3;
  if (self->_wasKeyboardEnvironmentEventDeferringBeforeResignKey || (-[_UIRemoteViewControllerLegacyImpl _owningRemoteViewController](self, "_owningRemoteViewController"), v4 = objc_claimAutoreleasedReturnValue(), [v4 _screen], v5 = objc_claimAutoreleasedReturnValue(), v6 = -[_UIRemoteViewControllerLegacyImpl _wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:](self, "_wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:", v5), v5, v4, v6))
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _setWantsKeyboardEnvironmentEventDeferring:1];
  }

  self->_wasKeyboardEnvironmentEventDeferringBeforeResignKey = 0;
}

- (void)_uirvc_keyboardWindowSceneSettingsSceneWillChange:(id)a3
{
  v11 = [a3 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v11;
  if (isKindOfClass)
  {
    v6 = v11;
    v7 = [(_UIRemoteViewControllerLegacyImpl *)self _windowSceneIsKeyboardWindowScene:v6];
    v8 = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
    v9 = [v8 _window];
    v10 = [v9 windowScene];

    if (v7 && v6 == v10)
    {
      if (self->_keyboardEnvironmentDeferringToken)
      {
        [(_UIRemoteViewControllerLegacyImpl *)self _setWantsKeyboardEnvironmentEventDeferring:0];
      }

      [(_UIRemoteViewControllerLegacyImpl *)self _endDynamicButtonEventDeferringIfNeeded];
    }

    v5 = v11;
  }
}

- (void)_uirvc_applicationKeyWindowWillChange:(id)a3
{
  v8 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[UIWindow _applicationKeyWindow];
    v5 = v8;
    v6 = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
    v7 = [v6 window];

    if ([v7 _isRemoteKeyboardWindow] && v5 != v4)
    {
      if (self->_keyboardEnvironmentDeferringToken)
      {
        [(_UIRemoteViewControllerLegacyImpl *)self _setWantsKeyboardEnvironmentEventDeferring:0];
      }

      [(_UIRemoteViewControllerLegacyImpl *)self _endDynamicButtonEventDeferringIfNeeded];
    }
  }
}

- (void)_uirvc_windowWillMoveToScene:(id)a3
{
  v9 = [a3 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v9;
  if (isKindOfClass)
  {
    v6 = v9;
    v7 = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
    v8 = [v7 _window];

    if (v6 == v8)
    {
      if (self->_keyboardEnvironmentDeferringToken)
      {
        self->_wasKeyboardEnvironmentEventDeferringBeforeSceneMove = 1;
        [(_UIRemoteViewControllerLegacyImpl *)self _setWantsKeyboardEnvironmentEventDeferring:0];
      }

      [(_UIRemoteViewControllerLegacyImpl *)self _endDynamicButtonEventDeferringIfNeeded];
    }

    v5 = v9;
  }
}

- (void)_uirvc_windowDidMoveToScene:(id)a3
{
  v10 = [a3 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v10;
  if (isKindOfClass)
  {
    v6 = v10;
    v7 = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
    v8 = [v7 _window];

    if (v6 == v8)
    {
      if (self->_wasKeyboardEnvironmentEventDeferringBeforeSceneMove)
      {
        [(_UIRemoteViewControllerLegacyImpl *)self _setWantsKeyboardEnvironmentEventDeferring:1];
        self->_wasKeyboardEnvironmentEventDeferringBeforeSceneMove = 0;
      }

      serviceResolvedPhysicalButtonConfigurations = self->_serviceResolvedPhysicalButtonConfigurations;
      if (serviceResolvedPhysicalButtonConfigurations && [(_UIPhysicalButtonConfigurationSet *)serviceResolvedPhysicalButtonConfigurations _count])
      {
        [(_UIRemoteViewControllerLegacyImpl *)self _updateDynamicButtonEventDeferringIfNeededWithOldResolvedConfigurations:self->_serviceResolvedPhysicalButtonConfigurations newResolvedConfigurations:?];
      }

      [(_UIRemoteViewControllerLegacyImpl *)&self->super.isa _updateParentHostingRegistryIfNecessaryForWindow:v6];
    }

    v5 = v10;
  }
}

- (void)_updateDynamicButtonEventDeferringIfNeededWithOldResolvedConfigurations:(void *)a3 newResolvedConfigurations:
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_43;
  }

  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_43;
  }

  if (v7 && v8)
  {
    v10 = [v7 isEqual:v8];

    if (v10)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

  v35 = v5;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [MEMORY[0x1E698E398] ui_environmentForUIPhysicalButton:{objc_msgSend(*(*(&v36 + 1) + 8 * i), "_button")}];
        if (v17)
        {
          if (!v14)
          {
            v14 = objc_opt_new();
          }

          [v14 addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  if (a1[39])
  {
    v18 = [v14 count] != 0;
    if (a1[39])
    {
      if (!v11)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v18 = 0;
  }

  if ([v14 count])
  {
    v18 = 1;
  }

  if (!v11)
  {
    goto LABEL_32;
  }

LABEL_30:
  v19 = v11[1];
  if (v19)
  {
    v20 = [v19 count] == 0;
    goto LABEL_33;
  }

LABEL_32:
  v20 = 1;
LABEL_33:
  v21 = [a1 _owningRemoteViewController];
  v22 = [v21 _appearState];

  v23 = 0;
  if (v22 && v22 != 3)
  {
    v23 = v18;
  }

  v24 = v20 || v23;
  v5 = v35;
  if (v24)
  {
    [(_UIRemoteViewControllerLegacyImpl *)a1 _endDynamicButtonEventDeferringIfNeeded];
    v25 = [a1 _existingView];
    v26 = [v25 _window];

    v27 = [a1 _hostedWindowServiceDeferringTarget];
    if ([v11 _count] && v26 && v27)
    {
      v34 = [v26 windowScene];
      v28 = [v34 _eventDeferringManager];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: begin remote deferring for dynamic buttons", objc_opt_class(), a1];
      v30 = [v14 copy];
      v31 = [a1 _owningRemoteViewController];
      v32 = [(_UIEventDeferringManager *)v28 beginRemoteEventDeferringInEnvironments:v30 forOwningInterfaceElement:v31 toTarget:v27 withReason:v29];
      v33 = a1[39];
      a1[39] = v32;

      [a1 _beginObservingNotificationsForEventDeferringIfNeeded];
    }
  }

LABEL_43:
}

- (void)_updateTouchGrabbingView
{
  v3 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v21 = [v3 navigationController];

  v4 = [v21 viewControllers];
  v5 = [v4 objectAtIndex:0];

  v6 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  if (v6)
  {
    v7 = v6;
    while (v7 != v5)
    {
      v8 = [v7 parentViewController];

      v7 = v8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v21)
    {
      if (self->_touchGrabbingView || (-[_UIRemoteViewControllerLegacyImpl view](self, "view"), v9 = objc_claimAutoreleasedReturnValue(), [v9 bounds], v11 = v10, v9, objc_msgSend(v21, "_builtinInteractionController"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "screenEdgePanGestureRecognizer"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "_edgeRegionSize"), v15 = v14, v13, v12, v15 <= 0.0))
      {
        v7 = 0;
        goto LABEL_14;
      }

      v16 = [(UIView *)[_UIRemoteViewControllerTouchGrabbingView alloc] initWithFrame:0.0, 0.0, v15, v11];
      touchGrabbingView = self->_touchGrabbingView;
      self->_touchGrabbingView = &v16->super;

      v18 = [(UIView *)self->_touchGrabbingView layer];
      [v18 setHitTestsAsOpaque:1];

      [(UIView *)self->_touchGrabbingView setUserInteractionEnabled:0];
      [(UIView *)self->_touchGrabbingView setAutoresizingMask:20];
      v19 = [(_UIRemoteViewControllerLegacyImpl *)self view];
      [v19 addSubview:self->_touchGrabbingView];
      v7 = 0;
      goto LABEL_13;
    }

    v7 = 0;
  }

  v20 = self->_touchGrabbingView;
  if (!v20)
  {
    goto LABEL_14;
  }

  [(UIView *)v20 removeFromSuperview];
  v19 = self->_touchGrabbingView;
  self->_touchGrabbingView = 0;
LABEL_13:

LABEL_14:
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)a3 andLeftMargin:(double)a4 rightMargin:(double)a5
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if (!_UIDeviceNativeUserInterfaceIdiom())
  {
    if (os_variant_has_internal_diagnostics())
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = [MEMORY[0x1E698E730] sharedInstance];
      if ([v12 isCarrierInstall])
      {
        v13 = dyld_program_sdk_at_least();

        if ((v13 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }
    }
  }

  v14 = [(_UIRemoteViewControllerLegacyImpl *)self traitCollection];
  if ([v14 userInterfaceIdiom])
  {

    goto LABEL_24;
  }

  v15 = [(_UIRemoteViewControllerLegacyImpl *)self serviceBundleIdentifier];
  v16 = [v15 hasPrefix:@"com.apple."];

  if (v16)
  {
    goto LABEL_24;
  }

  v17 = [(_UIRemoteViewControllerLegacyImpl *)self window];
  [v17 safeAreaInsets];
  v26 = v18;
  v20 = v19;
  v22 = v21;

  v23 = [(_UIRemoteViewControllerLegacyImpl *)self window];
  if (([v23 interfaceOrientation] - 3) > 1)
  {
  }

  else
  {
    if (vabdd_f64(left, v20) < 0.1 && left > 50.0)
    {

LABEL_23:
      left = 44.0;
      right = 44.0;
      goto LABEL_24;
    }

    if (vabdd_f64(right, v22) < 0.1 && right > 50.0)
    {
      goto LABEL_23;
    }
  }

  v24 = vabdd_f64(top, v26);
  if (top > 50.0 && v24 < 0.1)
  {
    top = 44.0;
  }

LABEL_24:
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __88___UIRemoteViewControllerLegacyImpl__setContentOverlayInsets_andLeftMargin_rightMargin___block_invoke;
  v27[3] = &unk_1E70F3DC8;
  v27[4] = self;
  *&v27[5] = top;
  *&v27[6] = left;
  *&v27[7] = bottom;
  *&v27[8] = right;
  *&v27[9] = a4;
  *&v27[10] = a5;
  [(_UIRemoteViewControllerLegacyImpl *)self _synchronizeAnimationsInActionsIfNecessary:v27, *&v26];
}

- (id)_terminateWithError:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_terminationErrorLock);
  if (!self->_terminationError)
  {
    objc_storeStrong(&self->_terminationError, a3);
  }

  os_unfair_lock_unlock(&self->_terminationErrorLock);
  v6 = [(_UIAsyncInvocation *)self->_terminationInvocation invoke];

  return v6;
}

- (id)disconnect
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(__UILogGetCategoryCachedImpl("ViewServices", &disconnect___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = self;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v4 stringWithFormat:@"<%@: %p>", v7, v5];
    }

    else
    {
      v8 = @"(nil)";
    }

    *buf = 138543362;
    v13 = v8;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Disconnect requested for remote view controller: %{public}@", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_UIViewServiceErrorDomain" code:1 userInfo:&unk_1EFE34BA8];
  v10 = [(_UIRemoteViewControllerLegacyImpl *)self _terminateWithError:v9];

  return v10;
}

- (void)_terminateUnconditionallyThen:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:@"UIWindowFirstResponderDidChangeNotification" object:0];
  [v5 removeObserver:self name:@"UIApplicationDidChangeStatusBarOrientationNotification" object:0];
  [v5 removeObserver:self name:@"UIApplicationStatusBarHeightChangedNotification" object:0];
  [v5 removeObserver:self name:@"UIApplicationWillEnterForegroundNotification" object:0];
  [v5 removeObserver:self name:@"UISceneWillEnterForegroundNotification" object:0];
  [v5 removeObserver:self name:0x1EFBB47D0 object:0];
  [v5 removeObserver:self name:0x1EFBB4810 object:0];
  [v5 removeObserver:self name:@"_UIPencilEventDidEvaluateBarrelFocusForSceneTransition" object:0];
  [v5 removeObserver:self name:@"_UIViewServiceHostDidEvaluatePencilBarrelEventFocusForSceneTransition" object:0];
  [v5 removeObserver:self name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  [v5 removeObserver:self name:@"UISceneDidEnterBackgroundNotification" object:0];
  [v5 removeObserver:self name:0x1EFBB47B0 object:0];
  [v5 removeObserver:self name:0x1EFBB47F0 object:0];
  [v5 removeObserver:self name:@"UIApplicationDidBecomeActiveNotification" object:0];
  [v5 removeObserver:self name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
  [v5 removeObserver:self name:_UIWindowDidAttachContextNotification object:0];
  [v5 removeObserver:self name:_UIWindowDidDetachContextNotification object:0];
  [v5 removeObserver:self name:@"_UISystemApplicationWillLockNotification" object:0];
  [v5 removeObserver:self name:@"_UISystemApplicationDidUnlockNotification" object:0];
  [v5 removeObserver:self name:@"_UIScreenDisplayConfigurationUpdatedNotification" object:0];
  [v5 removeObserver:self name:@"UIScreenReferenceDisplayModeStatusDidChangeNotification" object:0];
  [v5 removeObserver:self name:@"_UIWindowSceneEnhancedWindowingModeChanged" object:0];
  v6 = [(_UIAsyncInvocation *)self->_viewControllerOperatorHalfDisconnectionInvocation invoke];
  v13[0] = v6;
  v7 = [(_UIAsyncInvocation *)self->_textEffectsOperatorHalfDisconnectionInvocation invoke];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67___UIRemoteViewControllerLegacyImpl__terminateUnconditionallyThen___block_invoke;
  v10[3] = &unk_1E7128660;
  v11 = v4;
  v12 = self;
  v9 = v4;
  [_UIAsyncInvocationObserver whenInvocationsCompleteForObservers:v8 do:v10];
}

+ (void)initialize
{
  if (initialize_onceToken_2 != -1)
  {
    dispatch_once(&initialize_onceToken_2, &__block_literal_global_466_1);
  }
}

- (void)_objc_initiateDealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(__UILogGetCategoryCachedImpl("ViewServices", &_objc_initiateDealloc___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = self;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v4 stringWithFormat:@"<%@: %p>", v7, v5];
    }

    else
    {
      v8 = @"(nil)";
    }

    *buf = 138543362;
    v12 = v8;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Initiating deallocation for remote view controller: %{public}@", buf, 0xCu);
  }

  v9 = [(_UIRemoteViewControllerLegacyImpl *)self disconnect];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58___UIRemoteViewControllerLegacyImpl__objc_initiateDealloc__block_invoke;
  v10[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v10[4] = self;
  [v9 whenCompleteDo:v10];
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  remoteViewService = self->_remoteViewService;
  self->_remoteViewService = 0;

  [(UIView *)self->_fullScreenTextEffectsRemoteView removeFromSuperview];
  [(UIView *)self->_textEffectsAboveStatusBarRemoteView removeFromSuperview];
  if (+[UIKeyboard usesInputSystemUI])
  {
    if (!self->_callerID)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v8 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v11 = self;
          _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "UIRemoteViewController %@ has a nil _callerID", buf, 0xCu);
        }
      }

      else
      {
        v7 = *(__UILogGetCategoryCachedImpl("Assert", &dealloc___s_category_11) + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v11 = self;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "UIRemoteViewController %@ has a nil _callerID", buf, 0xCu);
        }
      }
    }

    v4 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    [v4 removeWindowHostingPID:-[_UIViewServiceHostSessionDeputyShim servicePID](self->_session callerID:{"servicePID"), self->_callerID}];
  }

  else
  {
    [(UIView *)self->_remoteKeyboardRemoteView removeFromSuperview];
  }

  [(UIView *)self->_viewServiceTouchInterdictionView removeFromSuperview];
  keyboardProxyPresentationEnvironment = self->_keyboardProxyPresentationEnvironment;
  if (keyboardProxyPresentationEnvironment)
  {
    [(_UISceneKeyboardProxyLayerForwardingPresentationViewService *)keyboardProxyPresentationEnvironment invalidate];
    v6 = self->_keyboardProxyPresentationEnvironment;
    self->_keyboardProxyPresentationEnvironment = 0;
  }

  [(APExtensionSubjectMonitorRegistry *)self->_appProtectionSubjectMonitorRegistry invalidate];
  v9.receiver = self;
  v9.super_class = _UIRemoteViewControllerLegacyImpl;
  [(_UIRemoteViewControllerLegacyImpl *)&v9 dealloc];
}

- (void)__viewServiceDidChangeHasScrollToTopView:(BOOL)a3
{
  if (self->_serviceHasScrollToTopView != a3)
  {
    v4 = a3;
    self->_serviceHasScrollToTopView = a3;
    v6 = [(UIView *)self->_serviceViewControllerRemoteView window];
    sizeTrackingView = self->_sizeTrackingView;
    v8 = v6;
    if (v4)
    {
      [v6 _registerScrollToTopView:sizeTrackingView];
    }

    else
    {
      [v6 _unregisterScrollToTopView:sizeTrackingView];
    }
  }
}

- (void)_scrollToTopFromTouchAtViewLocation:(CGPoint)a3 resultHandler:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87___UIRemoteViewControllerLegacyImpl__scrollToTopFromTouchAtViewLocation_resultHandler___block_invoke;
  v14[3] = &unk_1E710DB08;
  v9 = v7;
  v15 = v9;
  v10 = [viewControllerOperatorProxy remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87___UIRemoteViewControllerLegacyImpl__scrollToTopFromTouchAtViewLocation_resultHandler___block_invoke_3;
  v12[3] = &unk_1E711D630;
  v13 = v9;
  v11 = v9;
  [v10 __scrollToTopFromTouchAtViewLocation:v12 resultHandler:{x, y}];
}

- (void)_firstResponderDidChange:(id)a3
{
  v21 = a3;
  v4 = [v21 userInfo];
  v5 = [v4 objectForKey:0x1EFB927F0];
  v6 = [v5 BOOLValue];

  v7 = [v21 userInfo];
  v8 = [v7 objectForKey:@"UIWindowFirstResponderUserInfoKey"];

  v9 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v10 = [v9 handlingRemoteEvent];

  if (v6)
  {
    if (v10)
    {
      goto LABEL_15;
    }

LABEL_6:
    v13 = [v21 object];
    if (_UIWindowKeyWindowAPIIsSceneLevel())
    {
      v14 = [v13 isKeyWindow];
    }

    else
    {
      v14 = [v13 _isApplicationKeyWindow];
    }

    v15 = v14;
    v16 = [(_UIRemoteViewControllerLegacyImpl *)self view];
    v17 = [v16 window];
    v18 = v17;
    if (v13 == v17)
    {
    }

    else
    {
      v19 = [v13 _windowHostingScene];
      v20 = v15 & ~[v19 _sceneSessionRoleIsCarPlayOrNonInteractiveExternal] | v6;

      if ((v20 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    [self->_viewControllerOperatorProxy __hostDidPromoteFirstResponder];
    [(_UIRemoteViewControllerLegacyImpl *)self _setWantsKeyboardEnvironmentEventDeferring:0];
LABEL_14:

    goto LABEL_15;
  }

  if (v8)
  {
    v11 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    v12 = v8 == v11;

    if (((v12 | v10) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_15:
}

- (void)viewWillAppear:(BOOL)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel__applicationDidBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
  [v5 addObserver:self selector:sel__applicationWillDeactivate_ name:@"UIApplicationWillResignActiveNotification" object:0];
  [v5 addObserver:self selector:sel__viewServiceHostDidBecomeActive_ name:0x1EFBB4830 object:0];
  [v5 addObserver:self selector:sel__viewServiceHostWillDeactivate_ name:0x1EFBB4850 object:0];
  [v5 addObserver:self selector:sel__applicationWillAddDeactivationReason_ name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
  [v5 addObserver:self selector:sel__systemApplicationWillLock_ name:@"_UISystemApplicationWillLockNotification" object:0];
  [v5 addObserver:self selector:sel__systemApplicationDidUnlock_ name:@"_UISystemApplicationDidUnlockNotification" object:0];
  [(_UIRemoteViewControllerLegacyImpl *)self _beginObservingSceneMoveNotificationsIfNeeded];
  v6 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v7 = [objc_opt_class() __shouldHostRemoteTextEffectsWindow];

  if (!v7)
  {
    goto LABEL_12;
  }

  if (self->_fullScreenTextEffectsRemoteView)
  {
    v8 = [(_UIRemoteViewControllerLegacyImpl *)self textEffectsWindowForServiceScreen];
    [v8 addSubview:self->_fullScreenTextEffectsRemoteView];
  }

  if (self->_textEffectsAboveStatusBarRemoteView)
  {
    v9 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
    v10 = [v9 windowScene];
    v11 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v10 forViewService:1];
    [v11 addSubview:self->_textEffectsAboveStatusBarRemoteView];
  }

  if (+[UIKeyboard usesInputSystemUI])
  {
    if (!self->_callerID)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v26 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v30 = self;
          _os_log_fault_impl(&dword_188A29000, v26, OS_LOG_TYPE_FAULT, "UIRemoteViewController %@ has a nil _callerID", buf, 0xCu);
        }
      }

      else
      {
        v25 = *(__UILogGetCategoryCachedImpl("Assert", &viewWillAppear____s_category_0) + 8);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v30 = self;
          _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "UIRemoteViewController %@ has a nil _callerID", buf, 0xCu);
        }
      }
    }

    v12 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    [v12 addWindowHostingPID:-[_UIViewServiceHostSessionDeputyShim servicePID](self->_session callerID:{"servicePID"), self->_callerID}];
  }

  else
  {
    if (!self->_remoteKeyboardRemoteView)
    {
      goto LABEL_12;
    }

    v12 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    remoteKeyboardRemoteView = self->_remoteKeyboardRemoteView;
    v14 = [(_UIViewServiceHostSessionDeputyShim *)self->_session servicePID];
    v15 = [(_UIRemoteViewControllerLegacyImpl *)self textEffectsWindowForServiceScreen];
    v16 = [v15 windowScene];
    [v12 addHostedWindowView:remoteKeyboardRemoteView fromPID:v14 forScene:v16 callerID:self->_callerID];
  }

LABEL_12:
  [(_UIRemoteViewControllerLegacyImpl *)self setupAppProtectionIfNecessary];
  v17 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v18 = [v17 presentingViewController];
  v19 = [v18 currentAction];
  if (v19)
  {
    v20 = v19[4];
  }

  else
  {
    v20 = 0;
  }

  textEffectsOperatorProxy = self->_textEffectsOperatorProxy;
  v22 = [UIViewController _keyboardDirectionForTransition:v20];
  [UIViewController durationForTransition:v20];
  [textEffectsOperatorProxy __setNextAutomaticOrderOutDirection:v22 duration:?];
  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  v24 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  [viewControllerOperatorProxy __hostDisablesAutomaticKeyboardBehavior:{objc_msgSend(v24, "_disableAutomaticKeyboardBehavior")}];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __52___UIRemoteViewControllerLegacyImpl_viewWillAppear___block_invoke;
  v27[3] = &unk_1E70F35E0;
  v27[4] = self;
  v28 = a3;
  [(_UIRemoteViewControllerLegacyImpl *)self _synchronizeAnimationsInActionsIfNecessary:v27];
}

- (void)viewIsAppearing:(BOOL)a3
{
  if ((*&self->_remoteViewControllerFlags & 0x20) != 0)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self presentAppProtectionShieldIfServiceCurrentlyRequiresAuth];
    *&self->_remoteViewControllerFlags &= ~0x20u;
  }

  [(_UIRemoteViewControllerLegacyImpl *)self requestAppProtectionAuthIfNecessary];
}

- (void)_updateServiceSceneContext
{
  v3 = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
  v4 = [v3 window];

  v5 = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [_UIRemoteViewControllerSceneContext contextForWindow:v4 inScene:v7];

  if (v8 && ([v8 isEqual:self->_serviceSceneContext] & 1) == 0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63___UIRemoteViewControllerLegacyImpl__updateServiceSceneContext__block_invoke;
    v9[3] = &unk_1E70F35B8;
    v9[4] = self;
    v10 = v8;
    [(_UIRemoteViewControllerLegacyImpl *)self _synchronizeAnimationsInActionsIfNecessary:v9];
    objc_storeStrong(&self->_serviceSceneContext, v8);
  }
}

- (void)_movedToParentSceneWithSettings:(id)a3
{
  v4 = a3;
  v5 = [v4 isUISubclass];
  v6 = off_1E70E9468;
  if (!v5)
  {
    v6 = 0x1E699FC28;
  }

  v8 = [objc_alloc(*v6) initWithSettings:v4];

  v7 = BSCreateSerializedBSXPCEncodableObject();
  [self->_viewControllerOperatorProxy __hostDidMoveToParentSceneWithSettings:v7];
}

- (void)_parentSceneDidUpdateWithDiff:(id)a3
{
  v4 = BSCreateSerializedBSXPCEncodableObject();
  [self->_viewControllerOperatorProxy __hostSceneDidUpdateWithDiff:v4];
}

- (void)_screenDidConnect:(id)a3
{
  v6 = [a3 object];
  if (![UIApp _isSpringBoard] || (objc_msgSend(v6, "_isCarScreen") & 1) == 0)
  {
    viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
    v5 = [v6 displayConfiguration];
    [viewControllerOperatorProxy __hostDidAttachDisplay:v5];
  }
}

- (void)_screenDidUpdate:(id)a3
{
  v6 = [a3 object];
  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  v5 = [v6 displayConfiguration];
  [viewControllerOperatorProxy __hostDidUpdateDisplay:v5];
}

- (void)_screenDidDisconnect:(id)a3
{
  v14 = a3;
  v4 = [v14 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v14 object];

    if (!v5)
    {
      goto LABEL_15;
    }

    lastNotifiedServiceScreenDisplayIdentity = self->_lastNotifiedServiceScreenDisplayIdentity;
    v7 = [v5 displayIdentity];
    v8 = lastNotifiedServiceScreenDisplayIdentity;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (!v8 || !v9)
      {

        goto LABEL_12;
      }

      v11 = [(FBSDisplayIdentity *)v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v10 = [objc_opt_self() mainScreen];
    [(_UIRemoteViewControllerLegacyImpl *)self _notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded:v10];
LABEL_12:

LABEL_13:
    viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
    v13 = [v5 displayConfiguration];
    [viewControllerOperatorProxy __hostDidDetachDisplay:v13];

    goto LABEL_14;
  }

  v5 = v4;
LABEL_14:

LABEL_15:
}

- (void)_screenDidUpdateCapture:(id)a3
{
  v4 = [a3 object];
  v5 = objc_opt_class();
  v6 = v4;
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

  v8 = v7;

  v9 = [(_UIRemoteViewControllerLegacyImpl *)self view];
  v10 = [v9 window];
  v11 = [v10 screen];
  v14 = v8;
  v12 = v11;
  if (v14 == v12)
  {

    goto LABEL_12;
  }

  if (!v14 || !v12)
  {

    goto LABEL_14;
  }

  v13 = [v14 isEqual:v12];

  if (v13)
  {
LABEL_12:
    [(_UIRemoteViewControllerLegacyImpl *)self _updateServiceSceneContext];
  }

LABEL_14:
}

- (void)_referenceDisplayModeStatusDidChange:(id)a3
{
  v4 = a3;
  v10 = [v4 object];
  v5 = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v7 screen];
  v9 = [v4 object];

  if (v8 == v9)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _updateServiceSceneContext];
  }
}

- (void)_enhancedWindowingModeDidChange:(id)a3
{
  v7 = [a3 object];
  v4 = [(_UIRemoteViewControllerLegacyImpl *)self window];
  v5 = [v4 windowScene];

  v6 = v7;
  if (v5 == v7)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _updateServiceSceneContext];
    v6 = v7;
  }
}

- (void)_systemReferenceAngleDidChange:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
  v6 = [v5 window];

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DED10]];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68___UIRemoteViewControllerLegacyImpl__systemReferenceAngleDidChange___block_invoke;
    v16[3] = &unk_1E7128688;
    v17 = v6;
    if ([v8 bs_containsObjectPassingTest:v16])
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("SystemReferenceAngle", &_systemReferenceAngleDidChange____s_category);
      if (*CategoryCachedImpl)
      {
        v10 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          if (self)
          {
            v11 = MEMORY[0x1E696AEC0];
            v12 = self;
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            v15 = [v11 stringWithFormat:@"<%@: %p>", v14, v12];
          }

          else
          {
            v15 = @"(nil)";
          }

          *buf = 138543362;
          v19 = v15;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%{public}@: The system reference angle changed affecting a remote view controller. Pushing new angle to service.", buf, 0xCu);
        }
      }

      [(_UIRemoteViewControllerLegacyImpl *)self _updateServiceSceneContext];
    }
  }
}

- (void)_notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [v4 displayIdentity];
  v6 = [(FBSDisplayIdentity *)self->_lastNotifiedServiceScreenDisplayIdentity isEqual:v5]^ 1;
  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1)
  {
    objc_storeStrong(&self->_lastNotifiedServiceScreenDisplayIdentity, v5);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __103___UIRemoteViewControllerLegacyImpl__notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded___block_invoke;
    v14 = &unk_1E70F35B8;
    v15 = self;
    v16 = v4;
    [(_UIRemoteViewControllerLegacyImpl *)self synchronizeAnimationsInActionsWithSynchronousReply:&v11];
  }

  wantsKeyboardEnvironmentEventDeferring = self->_wantsKeyboardEnvironmentEventDeferring;
  if ([v4 _userInterfaceIdiom] == 3 && (v7 | (v4 != 0 && !wantsKeyboardEnvironmentEventDeferring)) == 1)
  {
    v9 = [(_UIRemoteViewControllerLegacyImpl *)self _wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:v4];
    if (self->_wantsKeyboardEnvironmentEventDeferring != v9)
    {
      [(_UIRemoteViewControllerLegacyImpl *)self _setWantsKeyboardEnvironmentEventDeferring:v9];
    }
  }

  [(_UIRemoteViewControllerLegacyImpl *)self _updateServiceSceneContext];
  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 removeObserver:self name:@"_UIScreenUniqueIdDidChangeNotification" object:0];
  if (v4)
  {
    [v10 addObserver:self selector:sel__screenIDChanged_ name:@"_UIScreenUniqueIdDidChangeNotification" object:v4];
  }
}

- (void)_beginObservingSceneMoveNotificationsIfNeeded
{
  if ((*&self->_remoteViewControllerFlags & 4) == 0)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:self selector:sel__uirvc_windowWillMoveToScene_ name:@"_UIWindowWillMoveToSceneNotification" object:0];
    [v3 addObserver:self selector:sel__uirvc_windowDidMoveToScene_ name:@"_UIWindowDidMoveToSceneNotification" object:0];
    *&self->_remoteViewControllerFlags |= 4u;
  }
}

- (id)_hostedWindowServiceDeferringTarget
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(_UIRemoteViewControllerLegacyImpl *)self serviceBundleIdentifier];
  v4 = [(_UIRemoteView *)self->_serviceViewControllerRemoteView hostedWindowHostingHandle];
  v5 = [v4 contextID];

  v6 = [(_UIRemoteViewControllerLegacyImpl *)self serviceProcessIdentifier];
  if (v6 < 1)
  {
    v11 = *(__UILogGetCategoryCachedImpl("ViewServices", &_hostedWindowServiceDeferringTarget___s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = self;
      v14 = v11;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v12 stringWithFormat:@"<%@: %p>", v16, v13];

      *buf = 138412290;
      v20 = v17;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "%@{public}: Event deferring request to client process ignored; pid is invalid", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v7 = v6;
    v8 = objc_alloc_init(MEMORY[0x1E698E3F8]);
    v9 = objc_alloc_init(MEMORY[0x1E698E3F8]);

    [v9 setPid:v7];
    v10 = [MEMORY[0x1E698E3A0] tokenForIdentifierOfCAContext:v5];
    [v9 setToken:v10];
  }

  return v9;
}

- (void)_beginObservingNotificationsForEventDeferringIfNeeded
{
  v3 = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
  v21 = [v3 _window];

  v4 = [v21 windowScene];
  v5 = [v4 _eventDeferringManager];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  remoteViewControllerFlags = self->_remoteViewControllerFlags;
  v8 = [(_UIEventDeferringManager *)v5 internalBehavior];
  v9 = [v8 shouldDisableRemoteViewControllerEventDeferringForKeyboardSettingsSceneChanges];

  if ((remoteViewControllerFlags & 1) == 0 && v9)
  {
    v10 = v21;
    v11 = v10;
    if (v10 && ([v10 windowScene], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, v14 = +[_UIRemoteKeyboards enabled](_UIRemoteKeyboards, "enabled"), v13, v14))
    {
      v15 = [v11 _isRemoteKeyboardWindow];
      v16 = [v11 windowScene];
      v17 = [(_UIRemoteViewControllerLegacyImpl *)self _windowSceneIsKeyboardWindowScene:v16];

      if (v15 && v17)
      {
        [v6 addObserver:self selector:sel__uirvc_keyboardWindowSceneSettingsSceneWillChange_ name:@"_UISceneWillChangeSettingsSceneNotification" object:0];
        *&self->_remoteViewControllerFlags |= 1u;
      }
    }

    else
    {
    }
  }

  v18 = self->_remoteViewControllerFlags;
  v19 = [(_UIEventDeferringManager *)v5 internalBehavior];
  v20 = [v19 shouldDisableRemoteViewControllerEventDeferringForKeyboardKeyWindowChanges];

  if ((v18 & 2) == 0 && v20 && [v21 _isRemoteKeyboardWindow])
  {
    [v6 addObserver:self selector:sel__uirvc_applicationKeyWindowWillChange_ name:@"_UIWindowWillBecomeApplicationKeyNotification" object:0];
    *&self->_remoteViewControllerFlags |= 2u;
  }

  [(_UIRemoteViewControllerLegacyImpl *)self _beginObservingSceneMoveNotificationsIfNeeded];
}

- (void)_setWantsKeyboardEnvironmentEventDeferring:(BOOL)a3
{
  v3 = a3;
  wantsKeyboardEnvironmentEventDeferring = self->_wantsKeyboardEnvironmentEventDeferring;
  if (wantsKeyboardEnvironmentEventDeferring)
  {
    keyboardEnvironmentDeferringToken = self->_keyboardEnvironmentDeferringToken;
    v7 = keyboardEnvironmentDeferringToken == 0;
    v8 = keyboardEnvironmentDeferringToken != 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = wantsKeyboardEnvironmentEventDeferring & ~a3;
  v10 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v11 = [v10 _appearState];

  v12 = 0;
  if (v11 && v11 != 3)
  {
    v12 = v3 & ~self->_wantsKeyboardEnvironmentEventDeferring;
  }

  if (((v9 | v7) & 1) != 0 || v12)
  {
    if (v8)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: end keyboard environment deferring", objc_opt_class(), self];
      [(_UIEventDeferringOwnershipToken *)self->_keyboardEnvironmentDeferringToken endEventDeferringWithReason:v13];
      v14 = self->_keyboardEnvironmentDeferringToken;
      self->_keyboardEnvironmentDeferringToken = 0;
    }

    self->_wantsKeyboardEnvironmentEventDeferring = v3;
    v15 = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
    v25 = [v15 window];

    v16 = [(_UIRemoteViewControllerLegacyImpl *)self _hostedWindowServiceDeferringTarget];
    if (self->_wantsKeyboardEnvironmentEventDeferring && v25 && v16)
    {
      v17 = [v25 windowScene];
      v18 = [v17 _eventDeferringManager];
      v19 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
      v20 = [MEMORY[0x1E695DFD8] setWithObject:v19];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: begin remote deferring in %@", objc_opt_class(), self, v19];
      v22 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
      v23 = [(_UIEventDeferringManager *)v18 beginRemoteEventDeferringInEnvironments:v20 forOwningInterfaceElement:v22 toTarget:v16 withReason:v21];
      v24 = self->_keyboardEnvironmentDeferringToken;
      self->_keyboardEnvironmentDeferringToken = v23;

      [(_UIRemoteViewControllerLegacyImpl *)self _beginObservingNotificationsForEventDeferringIfNeeded];
    }
  }
}

- (BOOL)_wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v6 = [v5 _focusSystem];

  v7 = [v4 _userInterfaceIdiom];
  v8 = 0;
  if (v6 && v7 == 3)
  {
    v9 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    v10 = [v9 _existingPresentationControllerImmediate:0 effective:0];

    v11 = [v10 shouldPresentInFullscreen];
    v8 = v11;
    if (v10 && (v11 & 1) != 0)
    {
      v8 = 1;
LABEL_13:

      return v8 & 1;
    }

    v12 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    v13 = [v12 presentingViewController];

    v14 = [v13 presentedViewController];
    if (![v14 modalPresentationStyle] || objc_msgSend(v14, "modalPresentationStyle") == 5 || objc_msgSend(v14, "modalPresentationStyle") == 2 || objc_msgSend(v14, "modalPresentationStyle") == 16 || objc_msgSend(v14, "modalPresentationStyle") == 7)
    {
      v8 = 1;
LABEL_12:

      goto LABEL_13;
    }

    if ([v14 modalPresentationStyle] == 3)
    {
      v16 = [v13 _nonModalAncestorViewControllerStopAtIsPresentationContext:1];
    }

    else
    {
      v17 = [v14 modalPresentationStyle];
      v16 = [v13 _nonModalAncestorViewControllerStopAtIsPresentationContext:1];
      if (v17 != 6)
      {
LABEL_22:

        goto LABEL_12;
      }
    }

    v18 = [v16 _existingView];

    if (v18)
    {
      v19 = [v16 _existingView];
      v20 = [v19 window];

      if (v20)
      {
        v21 = [v16 _existingView];
        v22 = [UIViewController _isViewSizeFullScreen:v21 inWindow:v20 ignoreInWindowCheck:0];

        v8 |= v22;
      }
    }

    goto LABEL_22;
  }

  return v8 & 1;
}

- (void)viewDidAppear:(BOOL)a3
{
  [self->_viewControllerOperatorProxy __hostViewDidAppear:a3];
  [(_UIRemoteViewControllerLegacyImpl *)self _updateTouchGrabbingView];
  v4 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v5 = [v4 presentingViewController];
  v10 = [v5 _presentationController];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_opt_class() _shouldInterdictServiceViewTouches])
  {
    [(_UIRemoteViewControllerLegacyImpl *)self __setInterdictServiceViewTouches:1];
  }

  v6 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
    [v8 addObserver:self selector:sel__updateUnderflowProperties name:0x1EFBB48B0 object:v9];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55___UIRemoteViewControllerLegacyImpl_viewWillDisappear___block_invoke;
  v4[3] = &unk_1E70F35E0;
  v4[4] = self;
  v5 = a3;
  [(_UIRemoteViewControllerLegacyImpl *)self _synchronizeAnimationsInActionsIfNecessary:v4];
  [(_UIRemoteViewControllerLegacyImpl *)self _updateTouchGrabbingView];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  [(_UIRemoteViewControllerLegacyImpl *)self _restoreTextEffectsRemoteView];
  [self->_viewControllerOperatorProxy __hostViewDidDisappear:v3];
  [(UIView *)self->_fullScreenTextEffectsRemoteView removeFromSuperview];
  [(UIView *)self->_textEffectsAboveStatusBarRemoteView removeFromSuperview];
  [(UIView *)self->_fullScreenTextEffectsSnapshotView removeFromSuperview];
  if (+[UIKeyboard usesInputSystemUI])
  {
    if (!self->_callerID)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v8 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          v9 = 138412290;
          v10 = self;
          _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "UIRemoteViewController %@ has a nil _callerID", &v9, 0xCu);
        }
      }

      else
      {
        v7 = *(__UILogGetCategoryCachedImpl("Assert", &viewDidDisappear____s_category) + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 138412290;
          v10 = self;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "UIRemoteViewController %@ has a nil _callerID", &v9, 0xCu);
        }
      }
    }

    v5 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
    [v5 removeWindowHostingPID:-[_UIViewServiceHostSessionDeputyShim servicePID](self->_session callerID:{"servicePID"), self->_callerID}];
  }

  else
  {
    [(UIView *)self->_remoteKeyboardRemoteView removeFromSuperview];
  }

  [(_UIRemoteViewControllerLegacyImpl *)self __setInterdictServiceViewTouches:0];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self name:@"UIApplicationDidBecomeActiveNotification" object:0];
  [v6 removeObserver:self name:@"UIApplicationWillResignActiveNotification" object:0];
  [v6 removeObserver:self name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
  [v6 removeObserver:self name:0x1EFBB48B0 object:0];
  *&self->_remoteViewControllerFlags |= 0x20u;
}

- (void)_configureSizeViewConstraintsForWindow:(id)a3 interfaceOrientation:(int64_t)a4
{
  v54[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (_UIDeviceNativeUserInterfaceIdiom())
  {
    goto LABEL_30;
  }

  if (os_variant_has_internal_diagnostics())
  {
    if (!dyld_program_sdk_at_least())
    {
      goto LABEL_30;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E698E730] sharedInstance];
    if (([v7 isCarrierInstall] & 1) == 0)
    {
LABEL_29:

      goto LABEL_30;
    }

    v8 = dyld_program_sdk_at_least();

    if ((v8 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v7 = [v6 screen];
  if (([v7 _isEmbeddedScreen] & 1) == 0)
  {
    goto LABEL_29;
  }

  v9 = [(_UIRemoteViewControllerLegacyImpl *)self serviceBundleIdentifier];
  v10 = [v9 hasPrefix:@"com.apple."];

  if ((v10 & 1) == 0)
  {
    sizeTrackingConstraints = self->_sizeTrackingConstraints;
    if (sizeTrackingConstraints)
    {
      v12 = [(UIView *)self->_sizeTrackingView superview];

      if (v12)
      {
        v13 = [(UIView *)self->_sizeTrackingView superview];
        [v13 removeConstraints:self->_sizeTrackingConstraints];
      }

      v14 = self->_sizeTrackingConstraints;
      self->_sizeTrackingConstraints = 0;
    }

    v15 = [(_UIRemoteViewControllerLegacyImpl *)self traitCollection];
    v16 = [v15 userInterfaceIdiom];

    if (*MEMORY[0x1E695F060] == self->_serviceMainScreenSize.width && *(MEMORY[0x1E695F060] + 8) == self->_serviceMainScreenSize.height && !v16)
    {
      self->_serviceMainScreenSize = xmmword_18A683280;
    }

    if (v6)
    {
      v17 = [v6 screen];
      [v17 _referenceBounds];
      v19 = v18;
      v21 = v20;
      width = self->_serviceMainScreenSize.width;
      height = self->_serviceMainScreenSize.height;

      v24 = height == v21 && width == v19;
      if (v24 || v16 > 1)
      {
        if (sizeTrackingConstraints)
        {
          [(UIView *)self->_sizeTrackingView setTranslatesAutoresizingMaskIntoConstraints:self->_sizeTrackingViewShouldTranslateAutoResizeMaskIntoConstraints];
          [(UIView *)self->_sizeTrackingView setAutoresizingMask:self->_sizeTrackingViewAutoResizeMask];
          [(UIView *)self->_sizeTrackingView setNeedsLayout];
          v50 = [(UIView *)self->_sizeTrackingView superview];
          [v50 layoutBelowIfNeeded];
        }
      }

      else
      {
        v25 = 352;
        if ((a4 - 1) >= 2)
        {
          v26 = 352;
        }

        else
        {
          v26 = 344;
        }

        v27 = *(&self->super.isa + v26);
        if ((a4 - 1) >= 2)
        {
          v25 = 344;
        }

        v28 = *(&self->super.isa + v25);
        v29 = [MEMORY[0x1E695DF70] array];
        sizeTrackingView = self->_sizeTrackingView;
        v53 = @"_sizeTrackingView";
        v54[0] = sizeTrackingView;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
        v51[0] = @"serviceSceneMaxSizeH";
        v32 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
        v51[1] = @"serviceSceneMaxSizeV";
        v52[0] = v32;
        v33 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
        v52[1] = v33;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];

        v35 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|-(0@990)-[_sizeTrackingView(<=serviceSceneMaxSizeH@1000)]-(0@990)-|" options:0 metrics:v34 views:v31];
        [v29 addObjectsFromArray:v35];

        v36 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|-(0@990)-[_sizeTrackingView(<=serviceSceneMaxSizeV@1000)]-(0@990)-|" options:0 metrics:v34 views:v31];
        [v29 addObjectsFromArray:v36];

        v37 = MEMORY[0x1E69977A0];
        v38 = self->_sizeTrackingView;
        v39 = [(UIView *)v38 superview];
        v40 = [v37 constraintWithItem:v38 attribute:9 relatedBy:0 toItem:v39 attribute:9 multiplier:1.0 constant:0.0];
        [v29 addObject:v40];

        v41 = MEMORY[0x1E69977A0];
        v42 = self->_sizeTrackingView;
        v43 = [(UIView *)v42 superview];
        v44 = [v41 constraintWithItem:v42 attribute:10 relatedBy:0 toItem:v43 attribute:10 multiplier:1.0 constant:0.0];
        [v29 addObject:v44];

        v45 = [v29 copy];
        v46 = self->_sizeTrackingConstraints;
        self->_sizeTrackingConstraints = v45;

        if (!sizeTrackingConstraints)
        {
          self->_sizeTrackingViewAutoResizeMask = [(UIView *)self->_sizeTrackingView autoresizingMask];
          self->_sizeTrackingViewShouldTranslateAutoResizeMaskIntoConstraints = [(UIView *)self->_sizeTrackingView translatesAutoresizingMaskIntoConstraints];
        }

        [(UIView *)self->_sizeTrackingView setAutoresizingMask:0];
        [(UIView *)self->_sizeTrackingView setTranslatesAutoresizingMaskIntoConstraints:0];
        v47 = [(UIView *)self->_sizeTrackingView superview];
        [v47 addConstraints:self->_sizeTrackingConstraints];

        v48 = [(UIView *)self->_sizeTrackingView superview];
        [v48 setNeedsLayout];

        v49 = [(UIView *)self->_sizeTrackingView superview];
        [v49 layoutBelowIfNeeded];
      }
    }
  }

LABEL_30:
}

- (void)__setServiceMaxFrameSize:(CGSize)a3
{
  self->_serviceMainScreenSize = a3;
  v5 = [(UIView *)self->_sizeTrackingView window];
  v4 = [(UIView *)self->_sizeTrackingView window];
  -[_UIRemoteViewControllerLegacyImpl _configureSizeViewConstraintsForWindow:interfaceOrientation:](self, "_configureSizeViewConstraintsForWindow:interfaceOrientation:", v5, [v4 interfaceOrientation]);
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v24 = a3;
  v5 = [v24 windowScene];
  v6 = [v5 _eventDeferringManager];
  v7 = [(_UIEventDeferringManager *)v6 internalBehavior];

  if ([v7 shouldEvaluateEventDeferringForAnyRemoteViewControllerWindowMovement])
  {
    v8 = [v24 screen];
    [(_UIRemoteViewControllerLegacyImpl *)self _notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded:v8];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    if ([v7 shouldConsiderKeyWindowChangesForRemoteViewControllerAutomaticEventDeferring])
    {
      v10 = _UIWindowKeyWindowAPIIsSceneLevel();
      v11 = &UIWindowDidBecomeKeyNotification;
      if (!v10)
      {
        v11 = _UIWindowDidBecomeApplicationKeyNotification;
      }

      v12 = *v11;
      v13 = _UIWindowKeyWindowAPIIsSceneLevel();
      v14 = &UIWindowDidResignKeyNotification;
      if (!v13)
      {
        v14 = _UIWindowDidResignApplicationKeyNotification;
      }

      v15 = *v14;
      [v9 removeObserver:self name:v12 object:0];
      [v9 removeObserver:self name:v15 object:0];
      if (v24)
      {
        [v9 addObserver:self selector:sel__uirvc_windowBecameKey_ name:v12 object:v24];
        [v9 addObserver:self selector:sel__uirvc_windowResignedKey_ name:v15 object:v24];
      }
    }
  }

  v16 = [(UIView *)self->_sizeTrackingView window];
  v17 = [(UIView *)self->_sizeTrackingView window];
  -[_UIRemoteViewControllerLegacyImpl _configureSizeViewConstraintsForWindow:interfaceOrientation:](self, "_configureSizeViewConstraintsForWindow:interfaceOrientation:", v16, [v17 interfaceOrientation]);

  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  v19 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v20 = [v19 presentingViewController];
  v21 = [v20 _presentationControllerClassName];
  [viewControllerOperatorProxy __hostDidSetPresentationControllerClassName:v21];

  v22 = self->_viewControllerOperatorProxy;
  v23 = [v24 windowScene];
  [v22 __setHostCanDynamicallySpecifySupportedInterfaceOrientations:{objc_msgSend(v23, "_canDynamicallySpecifySupportedInterfaceOrientations")}];

  [(_UIRemoteViewControllerLegacyImpl *)self _updateAncestorZoomTransitionControllerWithWindow:v24];
}

- (void)_updateAncestorZoomTransitionControllerWithWindow:(id)a3
{
  if (a3)
  {
    v4 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    if (v4)
    {
      do
      {
        v5 = [v4 preferredTransition];

        if (v5)
        {
          break;
        }

        v6 = [v4 parentViewController];

        v4 = v6;
      }

      while (v6);
    }

    v9 = [v4 _zoomTransitionController];
    v7 = objc_opt_new();
    [v9 setDismissInteraction:v7];

    if (v9)
    {
      [self->_viewControllerOperatorProxy __installDismissInteractionForZoomTransition];
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  [(_UIRemoteViewControllerLegacyImpl *)self set_ancestorZoomTransitionController:v8];
}

- (void)didMoveToParentViewController:(id)a3
{
  v4 = a3;
  if (self->_wantsKeyboardEnvironmentEventDeferring && v4 && !self->_keyboardEnvironmentDeferringToken)
  {
    v6 = v4;
    [(_UIRemoteViewControllerLegacyImpl *)self _setWantsKeyboardEnvironmentEventDeferring:1];
    v4 = v6;
  }

  serviceResolvedPhysicalButtonConfigurations = self->_serviceResolvedPhysicalButtonConfigurations;
  if (serviceResolvedPhysicalButtonConfigurations && v4 && !self->_dynamicButtonDeferringToken)
  {
    v7 = v4;
    [(_UIRemoteViewControllerLegacyImpl *)self _updateDynamicButtonEventDeferringIfNeededWithOldResolvedConfigurations:serviceResolvedPhysicalButtonConfigurations newResolvedConfigurations:?];
    v4 = v7;
  }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  serviceViewControllerSupportedInterfaceOrientations = self->_serviceViewControllerSupportedInterfaceOrientations;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  LOBYTE(serviceViewControllerSupportedInterfaceOrientations) = [(NSArray *)serviceViewControllerSupportedInterfaceOrientations containsObject:v4];

  return serviceViewControllerSupportedInterfaceOrientations;
}

- (unint64_t)supportedInterfaceOrientations
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_serviceViewControllerSupportedInterfaceOrientations;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 |= 1 << [*(*(&v9 + 1) + 8 * i) integerValue];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_needsUnderflowPropertyUpdate
{
  isUnderlappingStatusBar = self->_isUnderlappingStatusBar;
  v3 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  LOBYTE(isUnderlappingStatusBar) = isUnderlappingStatusBar != [v3 _viewControllerUnderlapsStatusBar];

  return isUnderlappingStatusBar;
}

- (void)_updateUnderflowProperties
{
  v3 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  self->_isUnderlappingStatusBar = [v3 _viewControllerUnderlapsStatusBar];

  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  isUnderlappingStatusBar = self->_isUnderlappingStatusBar;

  [viewControllerOperatorProxy __setHostViewUnderlapsStatusBar:isUnderlappingStatusBar];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5 = a4;
  [(_UIRemoteViewControllerLegacyImpl *)self _setIsUpdatingSize:1];
  [(_UIRemoteViewControllerLegacyImpl *)self _setIsUpdatingSizeInHost:1];
  if (v5)
  {
    [v5 targetTransform];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  IsIdentity = CGAffineTransformIsIdentity(&v14);
  v7 = [(_UIRemoteViewControllerLegacyImpl *)self window];
  v8 = v7;
  if (IsIdentity)
  {
    v9 = [v7 interfaceOrientation];
    v10 = v9;
  }

  else
  {
    v10 = [v7 _toWindowOrientation];

    v8 = [(_UIRemoteViewControllerLegacyImpl *)self window];
    v9 = [v8 _fromWindowOrientation];
  }

  v11 = [(UIView *)self->_sizeTrackingView window];
  [(_UIRemoteViewControllerLegacyImpl *)self _configureSizeViewConstraintsForWindow:v11 interfaceOrientation:v10];

  [(_UIRemoteViewControllerLegacyImpl *)self _beginDeferringProxySheetConfigurationUpdates];
  v12[4] = self;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88___UIRemoteViewControllerLegacyImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &unk_1E7103BF8;
  v13[5] = v10;
  v13[6] = v9;
  v13[4] = self;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88___UIRemoteViewControllerLegacyImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4;
  v12[3] = &unk_1E70F3B98;
  [v5 animateAlongsideTransition:v13 completion:v12];
}

- (void)_willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4 forwardToChildControllers:(BOOL)a5 skipSelf:(BOOL)a6
{
  if (self->_fullScreenTextEffectsSnapshotView)
  {
    self->_snapshotTextEffectsAfterRotation = 1;
    [(_UIRemoteViewControllerLegacyImpl *)self _restoreTextEffectsRemoteView:a3];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __124___UIRemoteViewControllerLegacyImpl__willAnimateRotationToInterfaceOrientation_duration_forwardToChildControllers_skipSelf___block_invoke;
  v11[3] = &unk_1E7101C38;
  v11[4] = self;
  v11[5] = a3;
  *&v11[6] = a4;
  v12 = a6;
  [(_UIRemoteViewControllerLegacyImpl *)self synchronizeAnimationsInActions:v11, a5];
  sizeTrackingView = self->_sizeTrackingView;
  [(UIView *)sizeTrackingView frame];
  [(_UISizeTrackingView *)sizeTrackingView _updateTextEffectsGeometries:?];
}

- (void)_willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4 forwardToChildControllers:(BOOL)a5 skipSelf:(BOOL)a6
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __115___UIRemoteViewControllerLegacyImpl__willRotateToInterfaceOrientation_duration_forwardToChildControllers_skipSelf___block_invoke;
  v6[3] = &unk_1E7101C38;
  v6[4] = self;
  v6[5] = a3;
  *&v6[6] = a4;
  v7 = a6;
  [(_UIRemoteViewControllerLegacyImpl *)self synchronizeAnimationsInActions:v6, a5];
}

- (void)_didRotateFromInterfaceOrientation:(int64_t)a3 forwardToChildControllers:(BOOL)a4 skipSelf:(BOOL)a5
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __107___UIRemoteViewControllerLegacyImpl__didRotateFromInterfaceOrientation_forwardToChildControllers_skipSelf___block_invoke;
  v6[3] = &unk_1E7101F90;
  v6[4] = self;
  v6[5] = a3;
  v7 = a5;
  [(_UIRemoteViewControllerLegacyImpl *)self synchronizeAnimationsInActions:v6, a4];
  if (self->_snapshotTextEffectsAfterRotation)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _snapshotAndRemoveTextEffectsRemoteView];
    self->_snapshotTextEffectsAfterRotation = 0;
  }
}

- (void)_didReceiveProductivityGestureAction:(id)a3
{
  textEffectsOperatorProxy = self->_textEffectsOperatorProxy;
  v4 = a3;
  v5 = [v4 gestureDirection];
  v6 = [v4 authenticationMessage];

  [textEffectsOperatorProxy __hostDidReceiveGestureDirection:v5 authenticationMessage:v6];
}

- (void)__viewServiceDidUpdatePreferredStatusBarStyle:(int64_t)a3 preferredStatusBarVisibility:(int)a4 updateAnimation:(int64_t)a5 currentAnimationSettings:(id)a6
{
  v10 = a6;
  v11 = v10;
  self->_preferredStatusBarStyle = a3;
  self->_preferredStatusBarVisibility = a4;
  self->_preferredStatusBarUpdateAnimation = a5;
  if (v10)
  {
    [v10 duration];
    v13 = v12;
    [v11 delay];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __153___UIRemoteViewControllerLegacyImpl___viewServiceDidUpdatePreferredStatusBarStyle_preferredStatusBarVisibility_updateAnimation_currentAnimationSettings___block_invoke;
    v16[3] = &unk_1E70F3590;
    v16[4] = self;
    [UIView animateWithDuration:0 delay:v16 options:&__block_literal_global_551_0 animations:v13 completion:v14];
  }

  else
  {
    v15 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    [v15 setNeedsStatusBarAppearanceUpdate];
  }
}

- (void)__viewServiceDidUpdatePreferredWhitePointAdaptationStyle:(int64_t)a3 animationSettings:(id)a4
{
  v6 = a4;
  self->_preferredAdaptivityStyle = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __112___UIRemoteViewControllerLegacyImpl___viewServiceDidUpdatePreferredWhitePointAdaptationStyle_animationSettings___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (v6)
  {
    [v6 duration];
    v10 = v9;
    [v6 delay];
    v12 = v11;
    v13 = [v6 timingFunction];
    if (v13)
    {
      v14 = objc_alloc_init(_UISceneSettingsMediaTimingAnimationFactory);
      [(_UISceneSettingsMediaTimingAnimationFactory *)v14 set_timingFunctionForAnimation:v13];
      [UIView _animateWithDuration:393216 delay:v14 options:v8 factory:0 animations:v10 completion:v12];
    }

    else if (v10 <= 0.0)
    {
      v8[2](v8);
    }

    else
    {
      [UIView animateWithDuration:0 delay:v8 options:0 animations:v10 completion:v12];
    }
  }

  else
  {
    v7[2](v7);
  }
}

- (void)__viewServiceDidUpdateClientToHostAction:(id)a3
{
  v4 = a3;
  v5 = [UIApp _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78___UIRemoteViewControllerLegacyImpl___viewServiceDidUpdateClientToHostAction___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performAsync:v7];
}

- (void)__viewServiceDidDropTouchEventForInsecurePresentation
{
  v12 = *MEMORY[0x1E69E9840];
  droppedTouchLoggingInhibitor = self->_droppedTouchLoggingInhibitor;
  if (!droppedTouchLoggingInhibitor)
  {
    v4 = [[_UISimpleTimedInhibitor alloc] initWithClockType:0 maxAttempts:2 inPeriod:30.0];
    v5 = self->_droppedTouchLoggingInhibitor;
    self->_droppedTouchLoggingInhibitor = v4;

    droppedTouchLoggingInhibitor = self->_droppedTouchLoggingInhibitor;
  }

  if (![(_UISimpleTimedInhibitor *)droppedTouchLoggingInhibitor attempt])
  {
    v6 = [(_UIRemoteViewControllerLegacyImpl *)self serviceBundleIdentifier];

    if (v6)
    {
      v7 = *(__UILogGetCategoryCachedImpl("Presentation", &__viewServiceDidDropTouchEventForInsecurePresentation___s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        v9 = [(_UIRemoteViewControllerLegacyImpl *)self serviceBundleIdentifier];
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "User interaction with %{public}@ was ignored because it is currently presented in an unsupported configuration. Ensure this view's appearance has not been modified.", &v10, 0xCu);
      }
    }
  }
}

- (void)__viewServiceDidUpdatePreferredScreenEdgesDeferringSystemGestures:(unint64_t)a3
{
  self->_preferredScreenEdgesDeferringSystemGestures = a3;
  v3 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  [v3 setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
}

- (void)__viewServiceDidUpdatePrefersHomeIndicatorAutoHidden:(BOOL)a3
{
  self->_prefersHomeIndicatorAutoHidden = a3;
  v3 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  [v3 setNeedsUpdateOfHomeIndicatorAutoHidden];
}

- (void)__viewServiceDidUpdatePreferredUserInterfaceStyle:(int64_t)a3
{
  self->_preferredUserInterfaceStyle = a3;
  v3 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  [v3 _setNeedsUserInterfaceAppearanceUpdate];
}

- (void)__viewServiceDidUpdatePrefersPointerLocked:(BOOL)a3
{
  self->_prefersPointerLocked = a3;
  v3 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  [v3 setNeedsUpdateOfPrefersPointerLocked];
}

- (id)_multitaskingDragExclusionRects
{
  if (self->_multitaskingDragExclusionRects)
  {
    return self->_multitaskingDragExclusionRects;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)__viewServiceDidUpdateMultitaskingDragExclusionRects:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  sizeTrackingView = self->_sizeTrackingView;
  if (sizeTrackingView)
  {
    [(UIView *)sizeTrackingView frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [MEMORY[0x1E695DF70] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = v4;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        v19 = 0;
        do
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v32 + 1) + 8 * v19) CGRectValue];
          v40.origin.x = v20;
          v40.origin.y = v21;
          v40.size.width = v22;
          v40.size.height = v23;
          v38.origin.x = v7;
          v38.origin.y = v9;
          v38.size.width = v11;
          v38.size.height = v13;
          v39 = CGRectIntersection(v38, v40);
          x = v39.origin.x;
          y = v39.origin.y;
          width = v39.size.width;
          height = v39.size.height;
          if (!CGRectIsEmpty(v39))
          {
            v28 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
            [v14 addObject:v28];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v17);
    }

    v29 = [v14 copy];
    multitaskingDragExclusionRects = self->_multitaskingDragExclusionRects;
    self->_multitaskingDragExclusionRects = v29;

    v31 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    [v31 _setNeedsUpdateOfMultitaskingDragExclusionRects];
  }
}

- (void)_traitCollectionDidChange:(id)a3
{
  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  v5 = a3;
  v6 = [(_UIRemoteViewControllerLegacyImpl *)self traitCollection];
  v7 = [(_UIRemoteViewControllerLegacyImpl *)self _traitCollectionForServiceFromTraitCollection:v6];
  [viewControllerOperatorProxy __setHostTraitCollection:v7 deferIfAnimated:_shouldDeferSendingTraitCollectionChangeToService(self)];

  v8 = [(_UIRemoteViewControllerLegacyImpl *)self traitCollection];
  LODWORD(v6) = [v8 hasDifferentColorAppearanceComparedToTraitCollection:v5];

  if (v6)
  {

    [(_UIRemoteViewControllerLegacyImpl *)self _updateTintColor];
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 userInterfaceStyle];
  v9 = [(_UIRemoteViewControllerLegacyImpl *)self traitCollection];
  v10 = [v9 userInterfaceStyle];

  if (v8 == v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = [(_UIRemoteViewControllerLegacyImpl *)self traitCollection];
    v13 = [v12 _traitCollectionByReplacingNSIntegerValue:objc_msgSend(v6 forTraitToken:{"userInterfaceStyle"), 0x1EFE323B0}];

    v11 = [v13 isEqual:v6];
  }

  v14 = [(_UIRemoteViewControllerLegacyImpl *)self _traitCollectionForServiceFromTraitCollection:v6];

  v16[4] = self;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __95___UIRemoteViewControllerLegacyImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v17[3] = &unk_1E7102858;
  v17[4] = self;
  v18 = v14;
  v19 = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __95___UIRemoteViewControllerLegacyImpl_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke_3;
  v16[3] = &unk_1E70F3B98;
  v15 = v14;
  [v7 animateAlongsideTransition:v17 completion:v16];
}

- (void)__viewServiceAddSceneForwardingLayersForOwners:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = [(_UIRemoteViewControllerLegacyImpl *)self view];
        v11 = [v10 window];
        [v11 windowLevel];
        v13 = v12 + 1.0;

        v14 = [objc_alloc(MEMORY[0x1E699FB28]) initWithLevel:v9 keyboardOwner:v13];
        mutableKeyboardSceneLayers = self->_mutableKeyboardSceneLayers;
        if (!mutableKeyboardSceneLayers)
        {
          v16 = objc_opt_new();
          v17 = self->_mutableKeyboardSceneLayers;
          self->_mutableKeyboardSceneLayers = v16;

          mutableKeyboardSceneLayers = self->_mutableKeyboardSceneLayers;
        }

        [(NSMutableSet *)mutableKeyboardSceneLayers addObject:v14];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [(_UISceneKeyboardProxyLayerForwardingPresentationViewService *)self->_keyboardProxyPresentationEnvironment keyboardLayersDidChange];
}

- (void)__viewServiceRemoveSceneForwardingLayersForOwners:(id)a3
{
  v16 = a2;
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a3;
  v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v18 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v5 = [(NSMutableSet *)self->_mutableKeyboardSceneLayers copy];
        v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v21;
          do
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v21 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v20 + 1) + 8 * j);
              if (([v10 isKeyboardProxyLayer] & 1) == 0)
              {
                v14 = [MEMORY[0x1E696AAA8] currentHandler];
                [v14 handleFailureInMethod:v16 object:self file:@"_UIRemoteViewControllerLegacyImpl.m" lineNumber:4482 description:@"only keyboard proxy layers support forwarding via UIRVC"];
              }

              v11 = v10;
              v12 = [v11 keyboardOwner];
              v13 = BSEqualObjects();

              if (v13)
              {
                [(NSMutableSet *)self->_mutableKeyboardSceneLayers removeObject:v11];
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v7);
        }
      }

      v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v19);
  }

  if (![(NSMutableSet *)self->_mutableKeyboardSceneLayers count])
  {
    mutableKeyboardSceneLayers = self->_mutableKeyboardSceneLayers;
    self->_mutableKeyboardSceneLayers = 0;
  }

  [(_UISceneKeyboardProxyLayerForwardingPresentationViewService *)self->_keyboardProxyPresentationEnvironment keyboardLayersDidChange];
}

- (NSSet)_keyboardSceneLayers
{
  v2 = [(NSMutableSet *)self->_mutableKeyboardSceneLayers copy];

  return v2;
}

- (void)__setSupportedInterfaceOrientations:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v10 intValue] - 1) >= 2 && (objc_msgSend(v10, "intValue") - 3) >= 2)
        {
          v12 = NSStringFromSelector(a2);
          NSLog(&cfstr_ReceivedInvali.isa, self, v10, v12);

          goto LABEL_13;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = [UIApp _systemAnimationFenceExemptQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73___UIRemoteViewControllerLegacyImpl___setSupportedInterfaceOrientations___block_invoke;
  v13[3] = &unk_1E70F35B8;
  v13[4] = self;
  v14 = v5;
  [v11 performAsync:v13];

LABEL_13:
}

- (void)__setViewServiceIsDisplayingPopover:(BOOL)a3
{
  v5 = [UIApp _systemAnimationFenceExemptQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73___UIRemoteViewControllerLegacyImpl___setViewServiceIsDisplayingPopover___block_invoke;
  v6[3] = &unk_1E70F35E0;
  v6[4] = self;
  v7 = a3;
  [v5 performAsync:v6];
}

- (void)_serviceWantsKeyboardEventsWithPromotedFirstResponder:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109___UIRemoteViewControllerLegacyImpl__serviceWantsKeyboardEventsWithPromotedFirstResponder_completionHandler___block_invoke;
  v9[3] = &unk_1E70FD0C8;
  v9[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 performAsync:v9];
}

- (BOOL)_shouldUpdateRemoteTextEffectsWindow
{
  v3 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  if ([objc_opt_class() __shouldHostRemoteTextEffectsWindow])
  {
    isKeyWindowForTextEffectsWindow = self->__isKeyWindowForTextEffectsWindow;
  }

  else
  {
    isKeyWindowForTextEffectsWindow = 0;
  }

  return isKeyWindowForTextEffectsWindow;
}

- (void)__viewServiceDidChangeKeyWindow:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69___UIRemoteViewControllerLegacyImpl___viewServiceDidChangeKeyWindow___block_invoke;
  v3[3] = &unk_1E70F35E0;
  v3[4] = self;
  v4 = a3;
  [(_UIRemoteViewControllerLegacyImpl *)self _synchronizeAnimationsInActionsIfNecessary:v3];
}

- (void)__viewServicePopoverDidChangeContentSize:(CGSize)a3 animated:(BOOL)a4 fence:(id)a5 withReplyHandler:(id)a6
{
  height = a3.height;
  width = a3.width;
  v10 = a6;
  v11 = [a5 copy];
  v12 = [UIApp _systemAnimationFenceExemptQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __110___UIRemoteViewControllerLegacyImpl___viewServicePopoverDidChangeContentSize_animated_fence_withReplyHandler___block_invoke;
  v15[3] = &unk_1E70F8FA8;
  v15[4] = self;
  v16 = v11;
  v18 = width;
  v19 = height;
  v17 = v10;
  v13 = v10;
  v14 = v11;
  [v12 performAsync:v15];
}

- (void)__viewServicePreferredContentSizeDidChange:(CGSize)a3 fence:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [a4 copy];
  v8 = [UIApp _systemAnimationFenceExemptQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86___UIRemoteViewControllerLegacyImpl___viewServicePreferredContentSizeDidChange_fence___block_invoke;
  v10[3] = &unk_1E70F9780;
  v10[4] = self;
  v11 = v7;
  v12 = width;
  v13 = height;
  v9 = v7;
  [v8 performAsync:v10];
}

- (void)__viewServiceInstrinsicContentSizeDidChange:(CGSize)a3 fence:(id)a4
{
  height = a3.height;
  width = a3.width;
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  sizeTrackingView = self->_sizeTrackingView;
  if (has_internal_diagnostics)
  {
    if (!sizeTrackingView)
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v19 = "[_UIRemoteViewControllerLegacyImpl __viewServiceInstrinsicContentSizeDidChange:fence:]";
        v20 = 2112;
        v21 = self;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "%s unexpectedly received before _sizeTrackingView was created. %@", buf, 0x16u);
      }
    }
  }

  else if (!sizeTrackingView)
  {
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &__viewServiceInstrinsicContentSizeDidChange_fence____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[_UIRemoteViewControllerLegacyImpl __viewServiceInstrinsicContentSizeDidChange:fence:]";
      v20 = 2112;
      v21 = self;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "%s unexpectedly received before _sizeTrackingView was created. %@", buf, 0x16u);
    }
  }

  v10 = [v7 copy];

  if (self->_sizeTrackingView)
  {
    v11 = [UIApp _systemAnimationFenceExemptQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __87___UIRemoteViewControllerLegacyImpl___viewServiceInstrinsicContentSizeDidChange_fence___block_invoke;
    v14[3] = &unk_1E70F9780;
    v14[4] = self;
    v15 = v10;
    v16 = width;
    v17 = height;
    [v11 performAsync:v14];
  }
}

- (id)_sheetPresentationController
{
  v2 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v3 = [v2 _existingPresentationControllerImmediate:0 effective:1];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setSheetConfiguration:(id)a3
{
  v5 = a3;
  v6 = self->__sheetConfiguration;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

LABEL_10:
    goto LABEL_11;
  }

  if (!v7 || !v6)
  {

LABEL_8:
    v6 = self->__sheetConfiguration;
    objc_storeStrong(&self->__sheetConfiguration, a3);
    if (!self->__proxySheetConfigurationBeforeDeferring)
    {
      [(_UIRemoteViewControllerLegacyImpl *)self _updateProxySheetConfigurationIfNeccessaryGivenOldConfiguration:v6];
    }

    goto LABEL_10;
  }

  v8 = [(_UISheetPresentationControllerConfiguration *)v6 isEqual:v7];

  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_11:
}

- (void)_updateProxySheetConfigurationIfNeccessaryGivenOldConfiguration:(id)a3
{
  v4 = a3;
  v5 = self->__sheetConfiguration;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if (v6 && v5)
    {
      v8 = [(_UISheetPresentationControllerConfiguration *)v5 isEqual:v6];

      if (v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if ([(_UISheetPresentationControllerConfiguration *)v7 _shouldFenceChangeToConfiguration:v5])
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __101___UIRemoteViewControllerLegacyImpl__updateProxySheetConfigurationIfNeccessaryGivenOldConfiguration___block_invoke;
      v9[3] = &unk_1E70F35B8;
      v9[4] = self;
      v10 = v5;
      [(_UIRemoteViewControllerLegacyImpl *)self _synchronizeAnimationsInActionsIfNecessary:v9];
    }

    else
    {
      [self->_viewControllerOperatorProxy __setSheetConfiguration:v5];
    }
  }

LABEL_11:
}

- (void)_beginDeferringProxySheetConfigurationUpdates
{
  if (!self->__proxySheetConfigurationBeforeDeferring)
  {
    objc_storeStrong(&self->__proxySheetConfigurationBeforeDeferring, self->__sheetConfiguration);
  }
}

- (void)_endDeferringProxySheetConfigurationUpdates
{
  proxySheetConfigurationBeforeDeferring = self->__proxySheetConfigurationBeforeDeferring;
  if (proxySheetConfigurationBeforeDeferring)
  {
    self->__proxySheetConfigurationBeforeDeferring = 0;
    v4 = proxySheetConfigurationBeforeDeferring;

    [(_UIRemoteViewControllerLegacyImpl *)self _updateProxySheetConfigurationIfNeccessaryGivenOldConfiguration:v4];
  }
}

- (void)__viewServiceSheetPresentationClientConfigurationDidChange:(id)a3 attributes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIRemoteViewControllerLegacyImpl *)self _sheetPresentationController];
  [v8 _setRemoteClientConfiguration:v7];

  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __107___UIRemoteViewControllerLegacyImpl___viewServiceSheetPresentationClientConfigurationDidChange_attributes___block_invoke;
    v9[3] = &unk_1E70F3590;
    v10 = v8;
    [UIView _animateWithAttributes:v6 animations:v9 completion:0];
  }
}

- (void)__viewServiceSheetGrabberDidTriggerPrimaryAction
{
  v2 = [(_UIRemoteViewControllerLegacyImpl *)self _sheetPresentationController];
  [v2 _remoteSheetGrabberDidTriggerPrimaryAction];
}

- (void)__viewServiceSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)a3 dismissible:(BOOL)a4 interruptedOffset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4;
  v9 = [(_UIRemoteViewControllerLegacyImpl *)self _sheetPresentationController];
  [v9 _remoteSheetInteractionDraggingDidBeginWithRubberBandCoefficient:v7 dismissible:a3 interruptedOffset:{x, y}];
}

- (void)__viewServiceSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5 dismissible:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  v12 = [(_UIRemoteViewControllerLegacyImpl *)self _sheetPresentationController];
  [v12 _remoteSheetInteractionDraggingDidChangeWithTranslation:v7 velocity:v6 animateChange:v11 dismissible:{v10, x, y}];
}

- (void)__viewServiceSheetInteractionDraggingDidEnd
{
  v2 = [(_UIRemoteViewControllerLegacyImpl *)self _sheetPresentationController];
  [v2 _remoteSheetInteractionDraggingDidEnd];
}

- (void)__viewServiceDismissInteractionDidBeginAtLocation:(CGPoint)a3 withVelocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v8 = [(_UIRemoteViewControllerLegacyImpl *)self _ancestorZoomTransitionController];
  if (v8)
  {
    v10 = v8;
    v9 = [v8 dismissInteraction];
    [v9 beginAtLocation:v7 withVelocity:{v6, x, y}];

    v8 = v10;
  }
}

- (void)__viewServiceDismissInteractionDidIssueUpdate:(id)a3
{
  v7 = a3;
  v4 = [(_UIRemoteViewControllerLegacyImpl *)self _ancestorZoomTransitionController];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 dismissInteraction];
    [v6 issueUpdate:v7];
  }
}

- (void)__viewServiceDismissInteractionDidDismissWithVelocity:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(_UIRemoteViewControllerLegacyImpl *)self _ancestorZoomTransitionController];
  if (v5)
  {
    v7 = v5;
    v6 = [v5 dismissInteraction];
    [v6 dismissWithVelocity:{x, y}];

    v5 = v7;
  }
}

- (void)__viewServiceDismissInteractionDidCancelWithVelocity:(CGPoint)a3 originalPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v8 = [(_UIRemoteViewControllerLegacyImpl *)self _ancestorZoomTransitionController];
  if (v8)
  {
    v10 = v8;
    v9 = [v8 dismissInteraction];
    [v9 cancelWithVelocity:v7 originalPosition:{v6, x, y}];

    v8 = v10;
  }
}

- (void)_physicalButtonInteraction:(id)a3 handleAction:(id)a4 withActiveActions:(id)a5
{
  v8 = MEMORY[0x1E696AAA8];
  v9 = a4;
  v10 = a3;
  v11 = [v8 currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"_UIRemoteViewControllerLegacyImpl.m" lineNumber:5082 description:{@"Unexpected request to handle a non-proxy action: self: %@; interaction: %@; action: %@", self, v10, v9}];
}

- (void)_physicalButtonProxyInteraction:(id)a3 didReceiveBSAction:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &_physicalButtonProxyInteraction_didReceiveBSAction____s_category_0);
  if (*CategoryCachedImpl)
  {
    v9 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v10 = MEMORY[0x1E696AEC0];
        v11 = self;
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = [v10 stringWithFormat:@"<%@: %p>", v13, v11];
      }

      else
      {
        v14 = @"(nil)";
      }

      v15 = v14;
      v16 = [v6 succinctDescription];
      *buf = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v16;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Received proxy physicalButtonBSAction from interaction: self: %@; proxyInteraction: %@; physicalButtonBSAction: %@", buf, 0x20u);
    }
  }

  [self->_viewControllerOperatorProxy __hostDidReceivePhysicalButtonBSAction:v7];
}

- (void)__viewServiceDidUpdateResolvedPhysicalButtonConfigurations:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self->_serviceResolvedPhysicalButtonConfigurations;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v7 && v6)
    {
      v9 = [(_UIPhysicalButtonConfigurationSet *)v6 isEqual:v7];
    }
  }

  v10 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &qword_1ED4971A0) + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = self;
    v13 = v10;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v11 stringWithFormat:@"<%@: %p>", v15, v12];

    v17 = v16;
    v18 = [(_UIPhysicalButtonConfigurationSet *)v8 succinctDescription];
    *buf = 138543874;
    v33 = v16;
    v34 = 1026;
    v35 = v9 ^ 1;
    v36 = 2114;
    *v37 = v18;
    _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "Received resolved configurations update from service: self: %{public}@; didChange: %{public}d; configurations: %{public}@", buf, 0x1Cu);
  }

  if ((v9 & 1) == 0)
  {
    v19 = self->_serviceResolvedPhysicalButtonConfigurations;
    objc_storeStrong(&self->_serviceResolvedPhysicalButtonConfigurations, a3);
    v20 = _UIPBIProxyOwnerActionsForState(self->_proxyPhysicalButtonInteraction, v19, self->_serviceResolvedPhysicalButtonConfigurations);
    v21 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &qword_1ED4971A8) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = self;
      v24 = v21;
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v22 stringWithFormat:@"<%@: %p>", v26, v23];

      *buf = 138544386;
      v33 = v27;
      v34 = 1026;
      v35 = v20 & 1;
      v36 = 1026;
      *v37 = HIBYTE(v20);
      *&v37[4] = 1026;
      *&v37[6] = HIWORD(v20) & 1;
      v38 = 1026;
      v39 = (v20 >> 8) & 1;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "Actions for resolved configurations update from service: %{public}@; shouldCreate: %{public}d; shouldDisable: %{public}d; shouldEnable: %{public}d; shouldUpdate: %{public}d", buf, 0x24u);
    }

    if ((v20 & 0x1000000) != 0)
    {
      [(_UIPhysicalButtonInteraction *)self->_proxyPhysicalButtonInteraction _setEnabled:0];
    }

    v28 = [(_UIPhysicalButtonConfigurationSet *)&self->_serviceResolvedPhysicalButtonConfigurations->super.isa _nsSetRepresentation];
    if (v20)
    {
      v29 = [[_UIPhysicalButtonProxyInteraction alloc] initWithConfigurations:v28 proxyDelegate:self];
      proxyPhysicalButtonInteraction = self->_proxyPhysicalButtonInteraction;
      self->_proxyPhysicalButtonInteraction = v29;

      v31 = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
      [v31 addInteraction:self->_proxyPhysicalButtonInteraction];
    }

    else if ((v20 & 0x100) != 0)
    {
      [(_UIPhysicalButtonInteraction *)self->_proxyPhysicalButtonInteraction _setConfigurations:v28];
    }

    if ((v20 & 0x10000) != 0)
    {
      [(_UIPhysicalButtonInteraction *)self->_proxyPhysicalButtonInteraction _setEnabled:1];
    }

    [(_UIRemoteViewControllerLegacyImpl *)self _updateDynamicButtonEventDeferringIfNeededWithOldResolvedConfigurations:v19 newResolvedConfigurations:self->_serviceResolvedPhysicalButtonConfigurations];
  }
}

- (void)_setUpHomeAffordanceObserverInteractionForViewIfNeeded:(id)a3
{
  v4 = a3;
  if (_UIDeviceSupportsGlobalEdgeSwipeTouches() && _UIApplicationSupportsHomeAffordanceObservation() && !self->_proxyHomeAffordanceObserverInteraction)
  {
    objc_initWeak(&location, self);
    v5 = [_UIHomeAffordanceObserverProxyInteraction alloc];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __92___UIRemoteViewControllerLegacyImpl__setUpHomeAffordanceObserverInteractionForViewIfNeeded___block_invoke;
    v10[3] = &unk_1E7120B88;
    objc_copyWeak(&v11, &location);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __92___UIRemoteViewControllerLegacyImpl__setUpHomeAffordanceObserverInteractionForViewIfNeeded___block_invoke_2;
    v8[3] = &unk_1E70F3668;
    objc_copyWeak(&v9, &location);
    v6 = [(_UIHomeAffordanceObserverProxyInteraction *)v5 initWithIntersectedFrameHandler:v10 doubleTapGestureHandler:v8];
    proxyHomeAffordanceObserverInteraction = self->_proxyHomeAffordanceObserverInteraction;
    self->_proxyHomeAffordanceObserverInteraction = v6;

    [v4 addInteraction:self->_proxyHomeAffordanceObserverInteraction];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (BOOL)shouldPropagateAppearanceCustomizations
{
  v3 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  if ([objc_opt_class() shouldPropagateAppearanceCustomizations])
  {
    v4 = [(_UIRemoteViewService *)self->_remoteViewService overridesHostAppearance]^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_updateTintColor
{
  if ([(_UIRemoteViewControllerLegacyImpl *)self shouldPropagateAppearanceCustomizations])
  {
    v3 = [(UIView *)self->_serviceViewControllerRemoteView _normalInheritedTintColor];
    [self->_viewControllerOperatorProxy __setHostTintColor:v3 tintAdjustmentMode:{-[UIView tintAdjustmentMode](self->_serviceViewControllerRemoteView, "tintAdjustmentMode")}];
  }
}

- (void)_initializeAccessibilityPortInformation
{
  if (objc_opt_respondsToSelector())
  {
    v3 = *MEMORY[0x1E69E9A60];
    v4 = [UIApp _accessibilityMachPort];
    mach_port_insert_right(v3, v4, [UIApp _accessibilityMachPort], 0x14u);
    v5 = objc_alloc(MEMORY[0x1E698E6C8]);
    v6 = [v5 initWithPort:{objc_msgSend(UIApp, "_accessibilityMachPort")}];
  }

  else
  {
    v6 = 0;
  }

  objc_initWeak(&location, self);
  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76___UIRemoteViewControllerLegacyImpl__initializeAccessibilityPortInformation__block_invoke;
  v8[3] = &unk_1E7128728;
  objc_copyWeak(&v9, &location);
  [viewControllerOperatorProxy __exchangeAccessibilityPortInformation:v6 replyHandler:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)__showServiceForType:(int64_t)a3 withContext:(id)a4 replyHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [UIApp _systemAnimationFenceExemptQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83___UIRemoteViewControllerLegacyImpl___showServiceForType_withContext_replyHandler___block_invoke;
  v13[3] = &unk_1E7118860;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a3;
  v11 = v9;
  v12 = v8;
  [v10 performAsync:v13];
}

- (void)__showServiceForText:(id)a3 selectedTextRangeValue:(id)a4 type:(int64_t)a5 fromRectValue:(id)a6 replyHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [UIApp _systemAnimationFenceExemptQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __113___UIRemoteViewControllerLegacyImpl___showServiceForText_selectedTextRangeValue_type_fromRectValue_replyHandler___block_invoke;
  v21[3] = &unk_1E71168D0;
  v22 = v14;
  v23 = v13;
  v24 = v12;
  v25 = self;
  v26 = v15;
  v27 = a5;
  v17 = v15;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  [v16 performAsync:v21];
}

- (void)__dismissTextServiceSessionAnimated:(BOOL)a3
{
  v5 = [UIApp _systemAnimationFenceExemptQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73___UIRemoteViewControllerLegacyImpl___dismissTextServiceSessionAnimated___block_invoke;
  v6[3] = &unk_1E70F35E0;
  v6[4] = self;
  v7 = a3;
  [v5 performAsync:v6];
}

- (void)_endNoPresentingViewControllerAlertController:(id)a3
{
  v4 = a3;
  [(UIAlertController *)v4 _endNoPresentingViewControllerPresentation];
  proxiedEditAlertController = self->_proxiedEditAlertController;

  if (proxiedEditAlertController == v4)
  {
    self->_proxiedEditAlertController = 0;
    self->_proxiedEditAlertToken = 0;
  }
}

- (void)__showEditAlertViewWithToken:(int64_t)a3 canUndo:(BOOL)a4 canRedo:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
  v10 = v9;
  if (v9 && ![v9 _isHostedInAnotherProcess])
  {
    motionNotificationGenerator = self->_motionNotificationGenerator;
    if (!motionNotificationGenerator)
    {
      v12 = [UINotificationFeedbackGenerator alloc];
      v13 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1EFE33C40];
      v14 = [_UINotificationFeedbackGeneratorConfiguration privateConfigurationForTypes:v13];
      v15 = [(UIFeedbackGenerator *)v12 initWithConfiguration:v14];
      v16 = self->_motionNotificationGenerator;
      self->_motionNotificationGenerator = v15;

      motionNotificationGenerator = self->_motionNotificationGenerator;
    }

    [(UIFeedbackGenerator *)motionNotificationGenerator activateWithCompletionBlock:0];
    v17 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:1];
    v18 = _UIKitBundle();
    v19 = [v18 localizedStringForKey:@"CANCEL_TITLE_IN_UNDO_ALERT" value:@"Cancel" table:@"Localizable"];

    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __82___UIRemoteViewControllerLegacyImpl___showEditAlertViewWithToken_canUndo_canRedo___block_invoke;
    v49[3] = &unk_1E711D8D0;
    v49[4] = self;
    v20 = v17;
    v50 = v20;
    v21 = [UIAlertAction actionWithTitle:v19 style:1 handler:v49];
    v22 = v6 && v5;
    if (!v6 || !v5)
    {
      [(UIAlertController *)v20 addAction:v21];
    }

    if (v6 || v5)
    {
      if (v6)
      {
        v24 = _UIKitBundle();
        [v24 localizedStringForKey:@"UNDO_BUTTON_TITLE_IN_UNDO_ALERT" value:@"Undo" table:@"Localizable"];
        v25 = v40 = v21;

        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __82___UIRemoteViewControllerLegacyImpl___showEditAlertViewWithToken_canUndo_canRedo___block_invoke_3;
        v47[3] = &unk_1E711D8D0;
        v47[4] = self;
        v26 = v19;
        v27 = v20;
        v48 = v27;
        v28 = [UIAlertAction actionWithTitle:v25 style:0 handler:v47];
        v29 = v27;
        v19 = v26;
        [(UIAlertController *)v29 addAction:v28];

        v21 = v40;
      }

      if (v5)
      {
        v30 = _UIKitBundle();
        v31 = [v30 localizedStringForKey:@"REDO_BUTTON_TITLE_IN_UNDO_ALERT" value:@"Redo" table:@"Localizable"];

        v41 = MEMORY[0x1E69E9820];
        v42 = 3221225472;
        v43 = __82___UIRemoteViewControllerLegacyImpl___showEditAlertViewWithToken_canUndo_canRedo___block_invoke_5;
        v44 = &unk_1E711D8D0;
        v45 = self;
        v32 = v20;
        v46 = v32;
        v33 = [UIAlertAction actionWithTitle:v31 style:0 handler:&v41];
        [(UIAlertController *)v32 addAction:v33];
      }

      v34 = _UIKitBundle();
      v23 = [v34 localizedStringForKey:@"UNDO_TITLE_LABEL_IN_UNDO_ALERT" value:@"Undo" table:@"Localizable"];
    }

    else
    {
      v23 = _UINSLocalizedStringWithDefaultValue(@"Nothing to Undo", @"Nothing to Undo");
    }

    [(UIAlertController *)v20 setTitle:v23, v40, v41, v42, v43, v44, v45];

    if (v22)
    {
      [(UIAlertController *)v20 addAction:v21];
    }

    [(UINotificationFeedbackGenerator *)self->_motionNotificationGenerator _privateNotificationOccurred:1006];
    [(UIFeedbackGenerator *)self->_motionNotificationGenerator deactivate];
    proxiedEditAlertController = self->_proxiedEditAlertController;
    self->_proxiedEditAlertController = v20;
    self->_proxiedEditAlertToken = a3;
    v36 = v20;

    v37 = self->_proxiedEditAlertController;
    v38 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
    v39 = [v38 windowScene];
    [(UIAlertController *)v37 _beginNoPresentingViewControllerPresentation:v39];
  }

  else
  {
    [self->_viewControllerOperatorProxy __cancelAlertActionWithToken:self->_proxiedEditAlertToken];
  }
}

- (void)__setInterdictServiceViewTouches:(BOOL)a3
{
  v3 = a3;
  [(UIView *)self->_viewServiceTouchInterdictionView removeFromSuperview];
  if (v3)
  {
    v5 = objc_alloc_init(UIView);
    viewServiceTouchInterdictionView = self->_viewServiceTouchInterdictionView;
    self->_viewServiceTouchInterdictionView = v5;

    v7 = [(UIView *)self->_viewServiceTouchInterdictionView layer];
    [v7 setHitTestsAsOpaque:1];

    [(_UIRemoteViewControllerLegacyImpl *)self updateTouchInterdictionViewLayout];
  }

  else
  {
    v8 = self->_viewServiceTouchInterdictionView;
    self->_viewServiceTouchInterdictionView = 0;
  }
}

- (void)updateTouchInterdictionViewLayout
{
  v7 = [(UIView *)self->_sizeTrackingView superview];
  if (v7 && (-[_UIRemoteViewControllerLegacyImpl _window](self, "_window"), v3 = objc_claimAutoreleasedReturnValue(), [v3 screen], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "_isMainLikeScreen"), v4, v3, v5))
  {
    [v7 insertSubview:self->_viewServiceTouchInterdictionView aboveSubview:self->_sizeTrackingView];
    viewServiceTouchInterdictionView = self->_viewServiceTouchInterdictionView;
    [(UIView *)self->_sizeTrackingView frame];
    [(UIView *)viewServiceTouchInterdictionView setFrame:?];
  }

  else
  {
    [(UIView *)self->_viewServiceTouchInterdictionView removeFromSuperview];
  }
}

- (void)_noteWindowState:(BOOL)a3
{
  v3 = a3;
  [(UIView *)self->_fullScreenTextEffectsSnapshotView setHidden:!a3];
  [(UIView *)self->_fullScreenTextEffectsRemoteView setHidden:!v3];
  [(UIView *)self->_textEffectsAboveStatusBarRemoteView setHidden:!v3];
  remoteKeyboardRemoteView = self->_remoteKeyboardRemoteView;

  [(UIView *)remoteKeyboardRemoteView setHidden:!v3];
}

- (void)setServiceViewShouldShareTouchesWithHost:(BOOL)a3
{
  if (self->_serviceViewShouldShareTouchesWithHost != a3)
  {
    self->_serviceViewShouldShareTouchesWithHost = a3;
    if (a3)
    {
      [(_UIRemoteViewControllerLegacyImpl *)self _prepareTouchDeliveryPolicy];
    }

    else
    {
      [(_UIRemoteViewControllerLegacyImpl *)self _setTouchDeliveryPolicyAssertion:0];
    }
  }
}

- (void)_prepareTouchDeliveryPolicy
{
  v14 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  if ([v14 serviceViewShouldShareTouchesWithHost] && (serviceViewControllerRemoteView = self->_serviceViewControllerRemoteView) != 0)
  {
    v4 = [(UIView *)serviceViewControllerRemoteView _window];

    if (v4)
    {
      v5 = [(_UIRemoteView *)self->_serviceViewControllerRemoteView hostedWindowHostingHandle];
      v6 = [v5 contextID];

      v7 = [(UIView *)self->_serviceViewControllerRemoteView _window];
      v8 = [v7 _contextId];

      v9 = objc_alloc_init(MEMORY[0x1E698E440]);
      v10 = [MEMORY[0x1E698E438] policyRequiringSharingOfTouchesDeliveredToChildContextId:v6 withHostContextId:v8];
      v11 = [v9 endpoint];
      [v10 setAssertionEndpoint:v11];

      v12 = v10;
      v13 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
      if (v13)
      {
        [(_UIRemoteViewControllerLegacyImpl *)self _setTouchDeliveryPolicyAssertion:v9];
        [v13 ipc_addPolicy:v12];
      }
    }
  }

  else
  {
  }
}

- (id)_cancelTouchesForCurrentEventInHostedContent
{
  v27[2] = *MEMORY[0x1E69E9840];
  v25 = MEMORY[0x1E69E9820];
  v3 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
  if (!v3)
  {
    v14 = 0;
    goto LABEL_28;
  }

  v4 = [(UIView *)self->_serviceViewControllerRemoteView _window:v25];
  v5 = [(_UIRemoteView *)self->_serviceViewControllerRemoteView hostedWindowHostingHandle];
  v6 = [v5 contextID];
  if (!v5)
  {
    v15 = 0;
    goto LABEL_23;
  }

  v7 = v6;
  v8 = [UIApp _touchesEventForWindow:v4];
  if (!v8 || ((v9 = v8, -[UIView _window](self->_serviceViewControllerRemoteView, "_window"), v10 = objc_claimAutoreleasedReturnValue(), [v9 _initialTouchTimestampForWindow:v10], v12 = v11, v10, v12 > 0.0) ? (v13 = v7 == 0) : (v13 = 1), v13))
  {
    v16 = 0;
  }

  else
  {
    v16 = [MEMORY[0x1E698E438] policyCancelingTouchesDeliveredToContextId:v7 withInitialTouchTimestamp:v12];
  }

  v17 = [UIApp _scrollEventForWindow:v4];
  if (!v17 || (([v17 _beganScrollTimestamp], v18 > 0.0) ? (v19 = v7 == 0) : (v19 = 1), v19))
  {
    v15 = 0;
    if (!v16)
    {
      goto LABEL_23;
    }

LABEL_19:
    if (v15)
    {
      v20 = MEMORY[0x1E698E438];
      v27[0] = v16;
      v27[1] = v15;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
      v22 = [v20 policyByCombiningPolicies:v21];

      if (!v22)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v22 = v16;
      v16 = v22;
    }

LABEL_26:
    v14 = objc_alloc_init(MEMORY[0x1E698E440]);
    v23 = [v14 endpoint];
    [v22 setAssertionEndpoint:v23];

    [v3 ipc_addPolicy:v22];
    goto LABEL_27;
  }

  v15 = [MEMORY[0x1E698E438] policyCancelingTouchesDeliveredToContextId:v7 withInitialTouchTimestamp:?];
  if (v16)
  {
    goto LABEL_19;
  }

LABEL_23:
  v15 = v15;
  v16 = 0;
  v22 = v15;
  if (v15)
  {
    goto LABEL_26;
  }

LABEL_24:
  v14 = 0;
LABEL_27:

LABEL_28:

  return v14;
}

- (void)_setViewClipsToBounds:(BOOL)a3
{
  if (self->__viewClipsToBounds != a3)
  {
    v4 = a3;
    self->__viewClipsToBounds = a3;
    v5 = [(_UIRemoteViewControllerLegacyImpl *)self view];
    [v5 setClipsToBounds:v4];
  }
}

- (void)__trampolineButtonPressData:(id)a3 canceled:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (qword_1ED4971B8 != -1)
  {
    dispatch_once(&qword_1ED4971B8, &__block_literal_global_621);
  }

  v7 = IOHIDEventCreateWithData();
  if (v7)
  {
    v8 = v7;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = qword_1ED4971B0;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (_UIApplicationPressEventConformsToType(v8, [*(*(&v18 + 1) + 8 * v13) integerValue]))
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v11)
          {
            goto LABEL_6;
          }

          goto LABEL_15;
        }
      }

      v14 = UIApp;
      if (v4)
      {
        v15 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
        v16 = [v14 _pressesEventForWindow:v15];

        v17 = UIApp;
        v9 = [v16 allPresses];
        [v17 _cancelTouchesOrPresses:v9 withEvent:v16];
        goto LABEL_15;
      }

      [UIApp _enqueueHIDEvent:v8];
    }

    else
    {
LABEL_15:
    }

    CFRelease(v8);
  }
}

- (void)__handleFocusMovementAction:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
    [v5 _forwardFocusMovementAction:v4];
  }
}

- (void)_timelinesForDateInterval:(id)a3 completion:(id)a4
{
  v6 = a4;
  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___UIRemoteViewControllerLegacyImpl__timelinesForDateInterval_completion___block_invoke;
  v9[3] = &unk_1E70FD790;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [viewControllerOperatorProxy __timelinesForDateInterval:a3 completion:v9];
}

- (void)_updateWithFrameSpecifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIRemoteViewControllerLegacyImpl *)self _timelineID];
  v12 = [v7 entrySpecifierForTimelineIdentifier:v8];

  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  v10 = [v12 timelineEntry];
  v11 = [v10 presentationTime];
  [viewControllerOperatorProxy __updateWithFrameSpecifierDate:v11 completion:v6];
}

- (void)setupAppProtectionIfNecessary
{
  if ((*&self->_remoteViewControllerFlags & 8) == 0)
  {
    *&self->_remoteViewControllerFlags |= 8u;
    v3 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    v4 = [v3 _appProtectionMetrics];
    appProtectionMetrics = self->_appProtectionMetrics;
    self->_appProtectionMetrics = v4;

    v6 = self->_appProtectionMetrics;
    if (v6)
    {
      objc_storeStrong(&self->_appProtectionExtension, v6->_apExtension);
      v16 = 0;
      v17 = &v16;
      v18 = 0x2050000000;
      v7 = getAPExtensionSubjectMonitorRegistryClass_softClass_0;
      v19 = getAPExtensionSubjectMonitorRegistryClass_softClass_0;
      if (!getAPExtensionSubjectMonitorRegistryClass_softClass_0)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __getAPExtensionSubjectMonitorRegistryClass_block_invoke_0;
        v15[3] = &unk_1E70F2F20;
        v15[4] = &v16;
        __getAPExtensionSubjectMonitorRegistryClass_block_invoke_0(v15);
        v7 = v17[3];
      }

      v8 = v7;
      _Block_object_dispose(&v16, 8);
      v9 = [v7 alloc];
      v10 = self->_appProtectionMetrics;
      if (v10)
      {
        v10 = v10->_apExtension;
      }

      v11 = v10;
      v12 = [v9 initWithExtensionSubject:v11];
      appProtectionSubjectMonitorRegistry = self->_appProtectionSubjectMonitorRegistry;
      self->_appProtectionSubjectMonitorRegistry = v12;

      v14 = [(APExtensionSubjectMonitorRegistry *)self->_appProtectionSubjectMonitorRegistry addMonitor:self];
      [(APExtensionSubjectMonitorRegistry *)self->_appProtectionSubjectMonitorRegistry resume];
    }

    [(_UIRemoteViewControllerLegacyImpl *)self presentAppProtectionShieldIfServiceCurrentlyRequiresAuth];
  }
}

- (void)createAppProtectionShieldView
{
  v41 = *MEMORY[0x1E69E9840];
  if (self->_appProtectionShieldView)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"_UIRemoteViewControllerLegacyImpl.m" lineNumber:5615 description:@"App protection view already exists"];
  }

  appProtectionMetrics = self->_appProtectionMetrics;
  if (!appProtectionMetrics)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_appProtectionMetrics"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(a2);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138544642;
      *&buf[4] = v26;
      *&buf[12] = 2114;
      *&buf[14] = v28;
      *&buf[22] = 2048;
      v35 = self;
      *v36 = 2114;
      *&v36[2] = @"_UIRemoteViewControllerLegacyImpl.m";
      v37 = 1024;
      v38 = 5616;
      v39 = 2114;
      v40 = v25;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v29 = v25;
    [v25 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18A2923D0);
  }

  v5 = appProtectionMetrics->_bundleIdentifierForAppIcon;
  v6 = self->_appProtectionMetrics;
  if (v6)
  {
    v6 = v6->_localizedName;
  }

  v7 = v6;
  v8 = self->_appProtectionMetrics;
  if (v8)
  {
    v8 = v8->_apExtension;
  }

  v9 = v8;
  v10 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v5];
  v11 = objc_alloc(MEMORY[0x1E69A8A30]);
  v12 = [(_UIRemoteViewControllerLegacyImpl *)self traitCollection];
  [v12 displayScale];
  v14 = [v11 initWithSize:64.0 scale:{64.0, v13}];

  [v14 setDrawBorder:1];
  v15 = [v10 prepareImageForDescriptor:v14];
  v16 = [v15 CGImage];
  [v15 scale];
  v17 = [UIImage imageWithCGImage:v16 scale:0 orientation:?];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v18 = qword_1ED4971F0;
  v33 = qword_1ED4971F0;
  if (!qword_1ED4971F0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAPBaseExtensionShieldViewClass_block_invoke_0;
    v35 = &unk_1E70F2F20;
    *v36 = &v30;
    __getAPBaseExtensionShieldViewClass_block_invoke_0(buf);
    v18 = v31[3];
  }

  v19 = v18;
  _Block_object_dispose(&v30, 8);
  v20 = [[v18 alloc] initWithLocalizedApplicationName:v7 iconImage:v17 apExtension:v9];
  [v20 setDelegate:self];
  appProtectionShieldView = self->_appProtectionShieldView;
  p_appProtectionShieldView = &self->_appProtectionShieldView;
  *p_appProtectionShieldView = v20;
  v23 = v20;

  [*p_appProtectionShieldView setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)presentAppProtectionShieldUnconditionallyIfProtectionIsEnabled
{
  if ([(APExtension *)self->_appProtectionExtension isEffectivelyLocked])
  {

    [(_UIRemoteViewControllerLegacyImpl *)self presentAppProtectionShieldView];
  }
}

- (void)presentAppProtectionShieldIfServiceCurrentlyRequiresAuth
{
  if ([(APExtension *)self->_appProtectionExtension requiresShielding])
  {

    [(_UIRemoteViewControllerLegacyImpl *)self presentAppProtectionShieldView];
  }
}

- (void)requestAppProtectionAuthIfNecessary
{
  if ((*&self->_remoteViewControllerFlags & 0x10) != 0)
  {
    if ([(APExtension *)self->_appProtectionExtension requiresShielding])
    {
      appProtectionShieldView = self->_appProtectionShieldView;

      [(_UIRemoteViewControllerLegacyImpl *)self shieldViewUnlockButtonPressed:appProtectionShieldView];
    }

    else
    {

      [(_UIRemoteViewControllerLegacyImpl *)self removeAppProtectionShieldView];
    }
  }
}

- (void)presentAppProtectionShieldView
{
  v23[4] = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  if ((*&self->_remoteViewControllerFlags & 0x10) == 0)
  {
    if (!self->_appProtectionShieldView)
    {
      [(_UIRemoteViewControllerLegacyImpl *)self createAppProtectionShieldView];
    }

    v3 = [(_UIRemoteViewControllerLegacyImpl *)self view];
    [v3 addSubview:self->_appProtectionShieldView];

    v15 = MEMORY[0x1E69977A0];
    v21 = [(UIView *)self->_appProtectionShieldView leftAnchor];
    v22 = [(_UIRemoteViewControllerLegacyImpl *)self view];
    v20 = [v22 leftAnchor];
    v19 = [v21 constraintEqualToAnchor:v20];
    v23[0] = v19;
    v17 = [(UIView *)self->_appProtectionShieldView topAnchor];
    v18 = [(_UIRemoteViewControllerLegacyImpl *)self view];
    v16 = [v18 topAnchor];
    v14 = [v17 constraintEqualToAnchor:v16];
    v23[1] = v14;
    v4 = [(UIView *)self->_appProtectionShieldView rightAnchor];
    v5 = [(_UIRemoteViewControllerLegacyImpl *)self view];
    v6 = [v5 rightAnchor];
    v7 = [v4 constraintEqualToAnchor:v6];
    v23[2] = v7;
    v8 = [(UIView *)self->_appProtectionShieldView bottomAnchor];
    v9 = [(_UIRemoteViewControllerLegacyImpl *)self view];
    v10 = [v9 bottomAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    v23[3] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    [v15 activateConstraints:v12];

    v13 = [(_UIRemoteViewControllerLegacyImpl *)self _sheetPresentationController];
    [v13 _tryToConnectToRemoteSheet:0];

    *&self->_remoteViewControllerFlags |= 0x10u;
    [self->_viewControllerOperatorProxy __hostDidPresentShieldViewForAppProtection];
  }
}

- (void)removeAppProtectionShieldView
{
  BSDispatchQueueAssertMain();
  if ((*&self->_remoteViewControllerFlags & 0x10) != 0)
  {
    *&self->_remoteViewControllerFlags &= ~0x10u;
    [(UIView *)self->_appProtectionShieldView removeFromSuperview];
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __66___UIRemoteViewControllerLegacyImpl_removeAppProtectionShieldView__block_invoke;
    v3[3] = &unk_1E70F3590;
    v3[4] = self;
    [(_UIRemoteViewControllerLegacyImpl *)self synchronizeAnimationsInActions:v3];
    [self->_viewControllerOperatorProxy __hostDidDismissShieldViewForAppProtection];
  }
}

- (void)shieldViewUnlockButtonPressed:(id)a3
{
  v4 = a3;
  v5 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED4971C0) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Shield view unlock button pressed", buf, 2u);
  }

  objc_initWeak(&location, self);
  if (self->_appProtectionExtension)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v6 = qword_1ED497200;
    v21 = qword_1ED497200;
    if (!qword_1ED497200)
    {
      *buf = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __getAPGuardClass_block_invoke_0;
      v16 = &unk_1E70F2F20;
      v17 = &v18;
      __getAPGuardClass_block_invoke_0(buf);
      v6 = v19[3];
    }

    v7 = v6;
    _Block_object_dispose(&v18, 8);
    v8 = [v6 sharedGuard];
    appProtectionExtension = self->_appProtectionExtension;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67___UIRemoteViewControllerLegacyImpl_shieldViewUnlockButtonPressed___block_invoke;
    v10[3] = &unk_1E7128798;
    objc_copyWeak(&v11, &location);
    [v8 authenticateForExtension:appProtectionExtension completion:v10];

    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(&location);
}

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82___UIRemoteViewControllerLegacyImpl_appProtectionSubjectsChanged_forSubscription___block_invoke;
  block[3] = &unk_1E70F2F80;
  objc_copyWeak(&v9, &location);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)window
{
  v2 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v3 = [v2 _window];

  return v3;
}

- (id)_window
{
  v2 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v3 = [v2 _window];

  return v3;
}

- (id)view
{
  v2 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v3 = [v2 view];

  return v3;
}

- (id)_existingView
{
  v2 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v3 = [v2 _existingView];

  return v3;
}

- (id)traitCollection
{
  v2 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v3 = [v2 traitCollection];

  return v3;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  [v4 appendProem:self block:&__block_literal_global_648];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63___UIRemoteViewControllerLegacyImpl_appendDescriptionToStream___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendBodySectionWithName:0 block:v6];
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (_UIZoomTransitionController)_ancestorZoomTransitionController
{
  WeakRetained = objc_loadWeakRetained(&self->_ancestorZoomTransitionController);

  return WeakRetained;
}

- (_UIRemoteViewController)_owningRemoteViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_owningRemoteViewController);

  return WeakRetained;
}

@end