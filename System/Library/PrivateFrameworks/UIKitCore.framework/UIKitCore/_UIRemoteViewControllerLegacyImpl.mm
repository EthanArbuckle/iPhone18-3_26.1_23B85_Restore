@interface _UIRemoteViewControllerLegacyImpl
+ (id)_requestViewController:(id)controller traitCollection:(id)collection fromServiceWithBundleIdentifier:(id)identifier service:(id)service connectionHandler:(id)handler newRemoteViewController:(id)viewController remoteViewControllerImpl:(id)impl;
+ (void)initialize;
- ($115C4C562B26FF47E01F9F4EA65B5887)serviceAuditToken;
- (BOOL)_needsUnderflowPropertyUpdate;
- (BOOL)_shouldUpdateRemoteTextEffectsWindow;
- (BOOL)_wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:(id)screen;
- (BOOL)_windowSceneIsKeyboardWindowScene:(uint64_t)scene;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (BOOL)shouldPropagateAppearanceCustomizations;
- (NSSet)_keyboardSceneLayers;
- (NSString)debugDescription;
- (_UIRemoteViewController)_owningRemoteViewController;
- (_UIZoomTransitionController)_ancestorZoomTransitionController;
- (id)_cancelTouchesForCurrentEventInHostedContent;
- (id)_existingView;
- (id)_fenceForSynchronizedDrawing;
- (id)_hostedWindowServiceDeferringTarget;
- (id)_initWithViewServiceBundleIdentifier:(id)identifier owningRemoteViewController:(id)controller;
- (id)_multitaskingDragExclusionRects;
- (id)_sheetPresentationController;
- (id)_terminateWithError:(id)error;
- (id)_window;
- (id)disconnect;
- (id)serviceBundleIdentifier;
- (id)succinctDescription;
- (id)textEffectsWindowForServiceScreen;
- (id)traitCollection;
- (id)view;
- (id)window;
- (int64_t)_preferredInterfaceOrientation;
- (int64_t)_preferredInterfaceOrientationForWindow:(id)window;
- (unint64_t)supportedInterfaceOrientations;
- (void)__dismissTextServiceSessionAnimated:(BOOL)animated;
- (void)__handleFocusMovementAction:(id)action;
- (void)__setInterdictServiceViewTouches:(BOOL)touches;
- (void)__setMediaOverridePID:(int)d;
- (void)__setServiceMaxFrameSize:(CGSize)size;
- (void)__setSupportedInterfaceOrientations:(id)orientations;
- (void)__setViewServiceIsDisplayingPopover:(BOOL)popover;
- (void)__showEditAlertViewWithToken:(int64_t)token canUndo:(BOOL)undo canRedo:(BOOL)redo;
- (void)__showServiceForText:(id)text selectedTextRangeValue:(id)value type:(int64_t)type fromRectValue:(id)rectValue replyHandler:(id)handler;
- (void)__showServiceForType:(int64_t)type withContext:(id)context replyHandler:(id)handler;
- (void)__trampolineButtonPressData:(id)data canceled:(BOOL)canceled;
- (void)__viewServiceAddSceneForwardingLayersForOwners:(id)owners;
- (void)__viewServiceDidChangeHasScrollToTopView:(BOOL)view;
- (void)__viewServiceDidChangeKeyWindow:(BOOL)window;
- (void)__viewServiceDidDropTouchEventForInsecurePresentation;
- (void)__viewServiceDidUpdateClientToHostAction:(id)action;
- (void)__viewServiceDidUpdateMultitaskingDragExclusionRects:(id)rects;
- (void)__viewServiceDidUpdatePreferredScreenEdgesDeferringSystemGestures:(unint64_t)gestures;
- (void)__viewServiceDidUpdatePreferredStatusBarStyle:(int64_t)style preferredStatusBarVisibility:(int)visibility updateAnimation:(int64_t)animation currentAnimationSettings:(id)settings;
- (void)__viewServiceDidUpdatePreferredUserInterfaceStyle:(int64_t)style;
- (void)__viewServiceDidUpdatePreferredWhitePointAdaptationStyle:(int64_t)style animationSettings:(id)settings;
- (void)__viewServiceDidUpdatePrefersHomeIndicatorAutoHidden:(BOOL)hidden;
- (void)__viewServiceDidUpdatePrefersPointerLocked:(BOOL)locked;
- (void)__viewServiceDidUpdateResolvedPhysicalButtonConfigurations:(id)configurations;
- (void)__viewServiceDismissInteractionDidBeginAtLocation:(CGPoint)location withVelocity:(CGPoint)velocity;
- (void)__viewServiceDismissInteractionDidCancelWithVelocity:(CGPoint)velocity originalPosition:(CGPoint)position;
- (void)__viewServiceDismissInteractionDidDismissWithVelocity:(CGPoint)velocity;
- (void)__viewServiceDismissInteractionDidIssueUpdate:(id)update;
- (void)__viewServiceInstrinsicContentSizeDidChange:(CGSize)change fence:(id)fence;
- (void)__viewServicePopoverDidChangeContentSize:(CGSize)size animated:(BOOL)animated fence:(id)fence withReplyHandler:(id)handler;
- (void)__viewServicePreferredContentSizeDidChange:(CGSize)change fence:(id)fence;
- (void)__viewServiceRemoveSceneForwardingLayersForOwners:(id)owners;
- (void)__viewServiceSheetGrabberDidTriggerPrimaryAction;
- (void)__viewServiceSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient dismissible:(BOOL)dismissible interruptedOffset:(CGPoint)offset;
- (void)__viewServiceSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change dismissible:(BOOL)dismissible;
- (void)__viewServiceSheetInteractionDraggingDidEnd;
- (void)__viewServiceSheetPresentationClientConfigurationDidChange:(id)change attributes:(id)attributes;
- (void)_applicationDidBecomeActive:(id)active;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillAddDeactivationReason:(id)reason;
- (void)_applicationWillDeactivate:(id)deactivate;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_awakeWithConnectionInfo:(id)info;
- (void)_beginDeferringProxySheetConfigurationUpdates;
- (void)_beginObservingNotificationsForEventDeferringIfNeeded;
- (void)_beginObservingSceneMoveNotificationsIfNeeded;
- (void)_configureSizeViewConstraintsForWindow:(id)window interfaceOrientation:(int64_t)orientation;
- (void)_didReceiveProductivityGestureAction:(id)action;
- (void)_didRotateFromInterfaceOrientation:(int64_t)orientation forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self;
- (void)_endDeferringProxySheetConfigurationUpdates;
- (void)_endDynamicButtonEventDeferringIfNeeded;
- (void)_endNoPresentingViewControllerAlertController:(id)controller;
- (void)_enhancedWindowingModeDidChange:(id)change;
- (void)_firstResponderDidChange:(id)change;
- (void)_hostDidEnterBackground:(id)background;
- (void)_hostDidEvaluatePencilBarrelEventFocusForSceneTransition:(id)transition;
- (void)_hostSceneDidEnterBackground:(id)background;
- (void)_hostSceneWillEnterForeground:(id)foreground;
- (void)_hostWillEnterForeground:(id)foreground;
- (void)_initializeAccessibilityPortInformation;
- (void)_movedToParentSceneWithSettings:(id)settings;
- (void)_noteWindowState:(BOOL)state;
- (void)_notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded:(id)needed;
- (void)_objc_initiateDealloc;
- (void)_parentSceneDidUpdateWithDiff:(id)diff;
- (void)_pencilBarrelEventFocusEvaluatedForSceneTransition:(id)transition;
- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions;
- (void)_physicalButtonProxyInteraction:(id)interaction didReceiveBSAction:(id)action;
- (void)_prepareTouchDeliveryPolicy;
- (void)_referenceDisplayModeStatusDidChange:(id)change;
- (void)_removeTextEffectsRemoteViews;
- (void)_restoreTextEffectsRemoteView;
- (void)_sceneDidEnterBackground:(id)background;
- (void)_sceneWillEnterForeground:(id)foreground;
- (void)_screenDidConnect:(id)connect;
- (void)_screenDidDisconnect:(id)disconnect;
- (void)_screenDidUpdate:(id)update;
- (void)_screenDidUpdateCapture:(id)capture;
- (void)_scrollToTopFromTouchAtViewLocation:(CGPoint)location resultHandler:(id)handler;
- (void)_serviceWantsKeyboardEventsWithPromotedFirstResponder:(BOOL)responder completionHandler:(id)handler;
- (void)_setContentOverlayInsets:(UIEdgeInsets)insets andLeftMargin:(double)margin rightMargin:(double)rightMargin;
- (void)_setSecurityModeForViewsLayer;
- (void)_setSheetConfiguration:(id)configuration;
- (void)_setUpHomeAffordanceObserverInteractionForViewIfNeeded:(id)needed;
- (void)_setViewClipsToBounds:(BOOL)bounds;
- (void)_setWantsKeyboardEnvironmentEventDeferring:(BOOL)deferring;
- (void)_snapshotAndRemoveTextEffectsRemoteView;
- (void)_statusBarHeightDidChange:(id)change;
- (void)_statusBarOrientationDidChange:(id)change;
- (void)_synchronizeAnimationsInActionsIfNecessary:(id)necessary;
- (void)_systemReferenceAngleDidChange:(id)change;
- (void)_terminateUnconditionallyThen:(id)then;
- (void)_timelinesForDateInterval:(id)interval completion:(id)completion;
- (void)_traitCollectionDidChange:(id)change;
- (void)_uirvc_applicationKeyWindowWillChange:(id)change;
- (void)_uirvc_keyboardWindowSceneSettingsSceneWillChange:(id)change;
- (void)_uirvc_windowBecameKey:(id)key;
- (void)_uirvc_windowDidMoveToScene:(id)scene;
- (void)_uirvc_windowWillMoveToScene:(id)scene;
- (void)_updateAncestorZoomTransitionControllerWithWindow:(id)window;
- (void)_updateDynamicButtonEventDeferringIfNeededWithOldResolvedConfigurations:(void *)configurations newResolvedConfigurations:;
- (void)_updateLockStatusHostingVisibility;
- (void)_updateParentHostingRegistryIfNecessaryForWindow:(id *)window;
- (void)_updateProxySheetConfigurationIfNeccessaryGivenOldConfiguration:(id)configuration;
- (void)_updateServiceSceneContext;
- (void)_updateTextEffectsGeometriesImmediatelyIfNeeded;
- (void)_updateTintColor;
- (void)_updateTouchGrabbingView;
- (void)_updateUnderflowProperties;
- (void)_updateWithFrameSpecifier:(id)specifier completion:(id)completion;
- (void)_willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self;
- (void)_willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)appendDescriptionToStream:(id)stream;
- (void)createAppProtectionShieldView;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)performReplyActionsInsideSynchronousReply:(id)reply;
- (void)presentAppProtectionShieldIfServiceCurrentlyRequiresAuth;
- (void)presentAppProtectionShieldUnconditionallyIfProtectionIsEnabled;
- (void)presentAppProtectionShieldView;
- (void)removeAppProtectionShieldView;
- (void)requestAppProtectionAuthIfNecessary;
- (void)setInheritsSecurity:(BOOL)security;
- (void)setServiceViewShouldShareTouchesWithHost:(BOOL)host;
- (void)setupAppProtectionIfNecessary;
- (void)shieldViewUnlockButtonPressed:(id)pressed;
- (void)synchronizeAnimationsInActions:(id)actions;
- (void)synchronizeAnimationsInActionsWithSynchronousReply:(id)reply;
- (void)updateTouchInterdictionViewLayout;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation _UIRemoteViewControllerLegacyImpl

- (void)_endDynamicButtonEventDeferringIfNeeded
{
  if (self && *(self + 312))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: end dynamic button deferring", objc_opt_class(), self];
    [(_UIEventDeferringOwnershipToken *)*(self + 312) endEventDeferringWithReason:v3];
    v2 = *(self + 312);
    *(self + 312) = 0;
  }
}

- (void)_updateParentHostingRegistryIfNecessaryForWindow:(id *)window
{
  if (window)
  {
    _remoteContentParent = [a2 _remoteContentParent];
    obj = [_remoteContentParent _childRemoteContentRegistry];

    WeakRetained = objc_loadWeakRetained(window + 58);
    if (obj != WeakRetained)
    {
      v5 = objc_loadWeakRetained(window + 58);
      _owningRemoteViewController = [window _owningRemoteViewController];
      [v5 removeChildViewService:_owningRemoteViewController];

      _owningRemoteViewController2 = [window _owningRemoteViewController];
      [obj addChildViewService:_owningRemoteViewController2];

      objc_storeWeak(window + 58, obj);
    }
  }
}

+ (id)_requestViewController:(id)controller traitCollection:(id)collection fromServiceWithBundleIdentifier:(id)identifier service:(id)service connectionHandler:(id)handler newRemoteViewController:(id)viewController remoteViewControllerImpl:(id)impl
{
  controllerCopy = controller;
  collectionCopy = collection;
  identifierCopy = identifier;
  serviceCopy = service;
  handlerCopy = handler;
  viewControllerCopy = viewController;
  implCopy = impl;
  v20 = implCopy;
  if (serviceCopy)
  {
    objc_storeStrong(implCopy + 3, service);
  }

  serviceViewControllerInterface = [objc_opt_class() serviceViewControllerInterface];
  exportedInterface = [objc_opt_class() exportedInterface];
  v23 = [_UIViewServiceViewControllerDeputyXPCInterface interfaceWithExportedInterface:serviceViewControllerInterface remoteViewControllerInterface:exportedInterface];

  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __183___UIRemoteViewControllerLegacyImpl__requestViewController_traitCollection_fromServiceWithBundleIdentifier_service_connectionHandler_newRemoteViewController_remoteViewControllerImpl___block_invoke;
  aBlock[3] = &unk_1E7128618;
  v40 = v41;
  v24 = handlerCopy;
  v39 = v24;
  v25 = v20;
  v37 = v25;
  v26 = viewControllerCopy;
  v38 = v26;
  v27 = _Block_copy(aBlock);
  if (serviceCopy)
  {
    [_UIRemoteViewControllerConnectionRequest requestViewControllerWithService:serviceCopy traitCollection:collectionCopy legacyImpl:v25 remoteViewControllerClass:objc_opt_class() serviceViewControllerDeputyInterface:v23 connectionHandler:v27];
  }

  else
  {
    [_UIRemoteViewControllerConnectionRequest requestViewController:controllerCopy fromServiceWithBundleIdentifier:identifierCopy traitCollection:collectionCopy legacyImpl:v25 serviceViewControllerDeputyInterface:v23 connectionHandler:v27];
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

- (id)_initWithViewServiceBundleIdentifier:(id)identifier owningRemoteViewController:(id)controller
{
  identifierCopy = identifier;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = _UIRemoteViewControllerLegacyImpl;
  v8 = [(_UIRemoteViewControllerLegacyImpl *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_owningRemoteViewController, controllerCopy);
    v10 = [identifierCopy copy];
    serviceBundleIdentifier = v9->_serviceBundleIdentifier;
    v9->_serviceBundleIdentifier = v10;

    v9->__viewClipsToBounds = 1;
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)v9 _owningRemoteViewController];
      [_owningRemoteViewController setPreferredContentSize:{320.0, 480.0}];
    }

    _owningRemoteViewController2 = [(_UIRemoteViewControllerLegacyImpl *)v9 _owningRemoteViewController];
    [_owningRemoteViewController2 setContentSizeForViewInPopover:{320.0, 480.0}];

    v9->__isKeyWindowForTextEffectsWindow = 1;
    [(_UIRemoteViewControllerLegacyImpl *)v9 _updateTextEffectsGeometriesImmediatelyIfNeeded];
  }

  return v9;
}

- (void)_awakeWithConnectionInfo:(id)info
{
  infoCopy = info;
  objc_initWeak(location, self);
  *&self->_isUpdatingSize = 0;
  proxySheetConfigurationBeforeDeferring = self->__proxySheetConfigurationBeforeDeferring;
  self->__proxySheetConfigurationBeforeDeferring = 0;

  session = [infoCopy session];
  session = self->_session;
  self->_session = session;

  v8 = self->_session;
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __62___UIRemoteViewControllerLegacyImpl__awakeWithConnectionInfo___block_invoke;
  v101[3] = &unk_1E7106800;
  objc_copyWeak(&v102, location);
  [(_UIViewServiceHostSessionDeputyShim *)v8 setTerminationHandler:v101];
  v9 = MEMORY[0x1E696B098];
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v11 = [v9 valueWithPointer:_owningRemoteViewController];
  callerID = self->_callerID;
  self->_callerID = v11;

  serviceViewControllerControlMessageProxy = [infoCopy serviceViewControllerControlMessageProxy];
  serviceViewControllerControlMessageProxy = self->_serviceViewControllerControlMessageProxy;
  self->_serviceViewControllerControlMessageProxy = serviceViewControllerControlMessageProxy;

  serviceViewControllerProxy = [infoCopy serviceViewControllerProxy];

  if (serviceViewControllerProxy)
  {
    serviceViewControllerProxy2 = [infoCopy serviceViewControllerProxy];
    v17 = [_UIViewServiceReplyControlProxy proxyWithTarget:serviceViewControllerProxy2];

    v18 = [_UIViewServiceImplicitAnimationEncodingProxy proxyEncodingAnimationsForTarget:v17 controlMessageTarget:self->_serviceViewControllerControlMessageProxy];
    serviceViewControllerProxy = self->_serviceViewControllerProxy;
    self->_serviceViewControllerProxy = v18;
  }

  viewControllerOperatorProxy = [infoCopy viewControllerOperatorProxy];
  v21 = [_UIViewServiceReplyControlProxy proxyWithTarget:viewControllerOperatorProxy];

  viewControllerOperatorProxy2 = [infoCopy viewControllerOperatorProxy];
  v23 = [_UIViewServiceImplicitAnimationEncodingProxy proxyEncodingAnimationsForTarget:v21 controlMessageTarget:viewControllerOperatorProxy2];
  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  self->_viewControllerOperatorProxy = v23;

  [self->_viewControllerOperatorProxy __hostReadyToReceiveMessagesFromServiceViewController];
  v25 = _UIRemoteViewControllerHalfDisconnectionInvocationForProxy(self->_viewControllerOperatorProxy);
  viewControllerOperatorHalfDisconnectionInvocation = self->_viewControllerOperatorHalfDisconnectionInvocation;
  self->_viewControllerOperatorHalfDisconnectionInvocation = v25;

  textEffectsOperatorProxy = [infoCopy textEffectsOperatorProxy];

  if (textEffectsOperatorProxy)
  {
    textEffectsOperatorProxy2 = [infoCopy textEffectsOperatorProxy];
    v29 = [_UIViewServiceReplyControlProxy proxyWithTarget:textEffectsOperatorProxy2];

    textEffectsOperatorProxy3 = [infoCopy textEffectsOperatorProxy];
    v31 = [_UIViewServiceImplicitAnimationEncodingProxy proxyEncodingAnimationsForTarget:v29 controlMessageTarget:textEffectsOperatorProxy3];
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

  serviceViewControllerSupportedInterfaceOrientations = [infoCopy serviceViewControllerSupportedInterfaceOrientations];
  serviceViewControllerSupportedInterfaceOrientations = self->_serviceViewControllerSupportedInterfaceOrientations;
  self->_serviceViewControllerSupportedInterfaceOrientations = serviceViewControllerSupportedInterfaceOrientations;

  serviceAccessibilityServerPortWrapper = [infoCopy serviceAccessibilityServerPortWrapper];

  if (serviceAccessibilityServerPortWrapper)
  {
    serviceAccessibilityServerPortWrapper2 = [infoCopy serviceAccessibilityServerPortWrapper];
    extractPortAndIKnowWhatImDoingISwear = [serviceAccessibilityServerPortWrapper2 extractPortAndIKnowWhatImDoingISwear];

    if (extractPortAndIKnowWhatImDoingISwear - 1 <= 0xFFFFFFFD)
    {
      if (mach_port_mod_refs(*MEMORY[0x1E69E9A60], extractPortAndIKnowWhatImDoingISwear, 0, 1))
      {
        v40 = 0;
      }

      else
      {
        v40 = extractPortAndIKnowWhatImDoingISwear;
      }

      self->_serviceAccessibilityServerPort = v40;
    }
  }

  self->_preferredStatusBarStyle = [infoCopy preferredStatusBarStyle];
  self->_preferredStatusBarVisibility = [infoCopy preferredStatusBarVisibility];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];
  if ([UIApp _isSpringBoard] && !_UIDeviceNativeUserInterfaceIdiom())
  {
    v42 = UITextEffectsWindowViewControllerWillRotateNotification;
  }

  else
  {
    v42 = &UIApplicationDidChangeStatusBarOrientationNotification;
  }

  [defaultCenter addObserver:self selector:sel__statusBarOrientationDidChange_ name:*v42 object:0];
  [defaultCenter addObserver:self selector:sel__statusBarHeightDidChange_ name:@"UIApplicationStatusBarHeightChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__applicationWillEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
  [defaultCenter addObserver:self selector:sel__sceneWillEnterForeground_ name:@"UISceneWillEnterForegroundNotification" object:0];
  [defaultCenter addObserver:self selector:sel__hostWillEnterForeground_ name:0x1EFBB47D0 object:0];
  [defaultCenter addObserver:self selector:sel__hostSceneWillEnterForeground_ name:0x1EFBB4810 object:0];
  [defaultCenter addObserver:self selector:sel__pencilBarrelEventFocusEvaluatedForSceneTransition_ name:@"_UIPencilEventDidEvaluateBarrelFocusForSceneTransition" object:0];
  [defaultCenter addObserver:self selector:sel__hostDidEvaluatePencilBarrelEventFocusForSceneTransition_ name:@"_UIViewServiceHostDidEvaluatePencilBarrelEventFocusForSceneTransition" object:0];
  [defaultCenter addObserver:self selector:sel__applicationDidEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  [defaultCenter addObserver:self selector:sel__sceneDidEnterBackground_ name:@"UISceneDidEnterBackgroundNotification" object:0];
  [defaultCenter addObserver:self selector:sel__hostDidEnterBackground_ name:0x1EFBB47B0 object:0];
  [defaultCenter addObserver:self selector:sel__hostSceneDidEnterBackground_ name:0x1EFBB47F0 object:0];
  [defaultCenter addObserver:self selector:sel__applicationDidFinishSuspendSnapshot_ name:@"_UIApplicationDidFinishSuspensionSnapshotNotification" object:0];
  [defaultCenter addObserver:self selector:sel__screenDidUpdate_ name:@"_UIScreenDisplayConfigurationUpdatedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__referenceDisplayModeStatusDidChange_ name:@"UIScreenReferenceDisplayModeStatusDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__enhancedWindowingModeDidChange_ name:@"_UIWindowSceneEnhancedWindowingModeChanged" object:0];
  [defaultCenter addObserver:self selector:sel__systemReferenceAngleDidChange_ name:*MEMORY[0x1E69DED18] object:0];
  [defaultCenter addObserver:self selector:sel__updateTextEffectsGeometriesImmediatelyIfNeeded name:@"UITextEffectsWindowOffsetDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__screenDidConnect_ name:@"_UIScreenDidConnectNotification" object:0];
  [defaultCenter addObserver:self selector:sel__screenDidDisconnect_ name:@"_UIScreenDidDisconnectNotification" object:0];
  [defaultCenter addObserver:self selector:sel__screenDidUpdateCapture_ name:@"UIScreenCapturedDidChangeNotification" object:0];
  _owningRemoteViewController2 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v44 = [_UISizeTrackingView viewWithRemoteViewController:_owningRemoteViewController2 viewControllerOperatorProxy:self->_viewControllerOperatorProxy textEffectsOperatorProxy:self->_textEffectsOperatorProxy remoteViewControllerImpl:self];
  sizeTrackingView = self->_sizeTrackingView;
  self->_sizeTrackingView = v44;

  _owningRemoteViewController3 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  [_owningRemoteViewController3 loadViewIfRequired];

  [(_UIRemoteViewControllerLegacyImpl *)self _setUpHomeAffordanceObserverInteractionForViewIfNeeded:self->_sizeTrackingView];
  if (self->_proxyPhysicalButtonInteraction)
  {
    [(UIView *)self->_sizeTrackingView addInteraction:?];
  }

  hostedWindowHostingHandle = [infoCopy hostedWindowHostingHandle];
  v48 = [_UIRemoteView viewWithHostedWindowHostingHandle:hostedWindowHostingHandle];
  serviceViewControllerRemoteView = self->_serviceViewControllerRemoteView;
  self->_serviceViewControllerRemoteView = v48;

  _owningRemoteViewController4 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  [(_UIRemoteView *)self->_serviceViewControllerRemoteView setRemoteViewController:_owningRemoteViewController4];

  [(UIView *)self->_sizeTrackingView addSubview:self->_serviceViewControllerRemoteView];
  mainScreen = [objc_opt_self() mainScreen];
  displayIdentity = [mainScreen displayIdentity];
  lastNotifiedServiceScreenDisplayIdentity = self->_lastNotifiedServiceScreenDisplayIdentity;
  self->_lastNotifiedServiceScreenDisplayIdentity = displayIdentity;

  if (UISelfHasEntitlement(@"com.apple.QuartzCore.secure-mode"))
  {
    layerHost = [(_UILayerHostView *)self->_serviceViewControllerRemoteView layerHost];
    [layerHost setStopsSecureSuperlayersValidation:1];
  }

  textEffectsWindowAboveStatusBarHostingHandle = [infoCopy textEffectsWindowAboveStatusBarHostingHandle];

  if (textEffectsWindowAboveStatusBarHostingHandle)
  {
    textEffectsWindowAboveStatusBarHostingHandle2 = [infoCopy textEffectsWindowAboveStatusBarHostingHandle];
    v57 = [(_UIRemoteView *)_UITextEffectsRemoteView viewWithHostedWindowHostingHandle:textEffectsWindowAboveStatusBarHostingHandle2];
    textEffectsAboveStatusBarRemoteView = self->_textEffectsAboveStatusBarRemoteView;
    self->_textEffectsAboveStatusBarRemoteView = v57;

    _owningRemoteViewController5 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    [(_UIRemoteView *)self->_textEffectsAboveStatusBarRemoteView setRemoteViewController:_owningRemoteViewController5];
  }

  textEffectsWindowHostingHandle = [infoCopy textEffectsWindowHostingHandle];

  if (textEffectsWindowHostingHandle)
  {
    textEffectsWindowHostingHandle2 = [infoCopy textEffectsWindowHostingHandle];
    v62 = [(_UIRemoteView *)_UITextEffectsRemoteView viewWithHostedWindowHostingHandle:textEffectsWindowHostingHandle2];
    fullScreenTextEffectsRemoteView = self->_fullScreenTextEffectsRemoteView;
    self->_fullScreenTextEffectsRemoteView = v62;

    _owningRemoteViewController6 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    [(_UIRemoteView *)self->_fullScreenTextEffectsRemoteView setRemoteViewController:_owningRemoteViewController6];
  }

  remoteKeyboardsWindowHostingHandle = [infoCopy remoteKeyboardsWindowHostingHandle];

  if (remoteKeyboardsWindowHostingHandle)
  {
    remoteKeyboardsWindowHostingHandle2 = [infoCopy remoteKeyboardsWindowHostingHandle];
    v67 = [(_UIRemoteView *)_UITextEffectsRemoteView viewWithHostedWindowHostingHandle:remoteKeyboardsWindowHostingHandle2];
    remoteKeyboardRemoteView = self->_remoteKeyboardRemoteView;
    self->_remoteKeyboardRemoteView = v67;

    _owningRemoteViewController7 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    [(_UIRemoteView *)self->_remoteKeyboardRemoteView setRemoteViewController:_owningRemoteViewController7];
  }

  _owningRemoteViewController8 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  if (![objc_opt_class() __shouldHostRemoteTextEffectsWindow])
  {
    goto LABEL_38;
  }

  v71 = off_1E70EA000;
  if (_UIDeviceNativeUserInterfaceIdiom() == 1)
  {
    _owningRemoteViewController9 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    _window = [_owningRemoteViewController9 _window];
    windowScene = [_window windowScene];
    v75 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:windowScene forViewService:1];
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
  _owningRemoteViewController10 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  _window2 = [_owningRemoteViewController10 _window];
  windowScene2 = [_window2 windowScene];
  v83 = [(__objc2_class *)v79 sharedTextEffectsWindowForWindowScene:windowScene2 forViewService:1];

  rootViewController = [v83 rootViewController];
  view = [rootViewController view];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62___UIRemoteViewControllerLegacyImpl__awakeWithConnectionInfo___block_invoke_2;
  aBlock[3] = &unk_1E70F6228;
  v86 = view;
  v98 = v86;
  _owningRemoteViewController8 = v83;
  v99 = _owningRemoteViewController8;
  selfCopy = self;
  v87 = _Block_copy(aBlock);
  v88 = v87;
  if (rootViewController)
  {
    [rootViewController performWithSafeTransitionFrames:v87];
  }

  else
  {
    (*(v87 + 2))(v87);
  }

LABEL_38:
LABEL_39:
  v89 = [_UISceneKeyboardProxyLayerForwardingPresentationViewService alloc];
  _owningRemoteViewController11 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v91 = [(_UISceneKeyboardProxyLayerForwardingPresentationViewService *)&v89->super.isa initWithRemoteViewController:_owningRemoteViewController11];
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
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  [_owningRemoteViewController setView:self->_sizeTrackingView];
}

- (id)_fenceForSynchronizedDrawing
{
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  __shouldRemoteViewControllerFenceOperations = [_owningRemoteViewController __shouldRemoteViewControllerFenceOperations];

  if (!__shouldRemoteViewControllerFenceOperations)
  {
    _synchronizedDrawingFence = 0;
    goto LABEL_10;
  }

  v5 = objc_autoreleasePoolPush();
  _owningRemoteViewController2 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  if ([_owningRemoteViewController2 _appearState])
  {
    _fencingEffectsAreVisible = [(_UISizeTrackingView *)self->_sizeTrackingView _fencingEffectsAreVisible];

    if (!_fencingEffectsAreVisible)
    {
      _synchronizedDrawingFence = 0;
      goto LABEL_9;
    }

    _owningRemoteViewController2 = [(UIView *)self->_sizeTrackingView _window];
    _windowHostingScene = [_owningRemoteViewController2 _windowHostingScene];
    _synchronizedDrawingFence = [_windowHostingScene _synchronizedDrawingFence];
  }

  else
  {
    _synchronizedDrawingFence = 0;
  }

LABEL_9:
  objc_autoreleasePoolPop(v5);
LABEL_10:

  return _synchronizedDrawingFence;
}

- (void)_synchronizeAnimationsInActionsIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  __shouldRemoteViewControllerFenceOperations = [_owningRemoteViewController __shouldRemoteViewControllerFenceOperations];

  if (__shouldRemoteViewControllerFenceOperations)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self synchronizeAnimationsInActions:necessaryCopy];
  }

  else
  {
    necessaryCopy[2]();
  }
}

- (void)synchronizeAnimationsInActions:(id)actions
{
  actionsCopy = actions;
  v5 = objc_autoreleasePoolPush();
  _fenceForSynchronizedDrawing = [(_UIRemoteViewControllerLegacyImpl *)self _fenceForSynchronizedDrawing];
  if (_fenceForSynchronizedDrawing)
  {
    if (_UIUpdateCycleEnabled())
    {
      v10 = 0uLL;
      v11 = 0;
      _UIUpdateSchedulerRequestUpdate(&_UIUpdateCycleMainScheduler, 0, &v10);
      viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
      v8 = v10;
      v9 = v11;
      [viewControllerOperatorProxy __participateInSystemAnimationFence:_fenceForSynchronizedDrawing timing:&v8];
    }

    else
    {
      [self->_viewControllerOperatorProxy __participateInSystemAnimationFence:_fenceForSynchronizedDrawing];
    }

    actionsCopy[2](actionsCopy);
    [self->_viewControllerOperatorProxy __finishParticipatingInSystemAnimationFence:_fenceForSynchronizedDrawing];
  }

  else
  {
    actionsCopy[2](actionsCopy);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)synchronizeAnimationsInActionsWithSynchronousReply:(id)reply
{
  v4 = _Block_copy(reply);
  [(_UIRemoteViewControllerLegacyImpl *)self synchronizeAnimationsInActions:v4];
}

- (void)performReplyActionsInsideSynchronousReply:(id)reply
{
  v3 = _Block_copy(reply);
  v3[2]();
}

- (id)serviceBundleIdentifier
{
  serviceBundleIdentifier = self->_serviceBundleIdentifier;
  if (serviceBundleIdentifier)
  {
    identifier = serviceBundleIdentifier;
  }

  else
  {
    identifier = [(_UIRemoteViewService *)self->_remoteViewService identifier];
  }

  return identifier;
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

- (void)setInheritsSecurity:(BOOL)security
{
  securityCopy = security;
  [(_UIRemoteView *)self->_serviceViewControllerRemoteView _setInheritsSecurity:?];
  [(_UIRemoteView *)self->_fullScreenTextEffectsRemoteView _setInheritsSecurity:securityCopy];
  [(_UIRemoteView *)self->_textEffectsAboveStatusBarRemoteView _setInheritsSecurity:securityCopy];
  remoteKeyboardRemoteView = self->_remoteKeyboardRemoteView;

  [(_UIRemoteView *)remoteKeyboardRemoteView _setInheritsSecurity:securityCopy];
}

- (void)_setSecurityModeForViewsLayer
{
  if ([(_UIRemoteViewControllerLegacyImpl *)self inheritsSecurity])
  {
    view = [(_UIRemoteViewControllerLegacyImpl *)self view];
    layer = [view layer];
    [layer setSecurityMode:*MEMORY[0x1E6979E68]];
  }
}

- (void)__setMediaOverridePID:(int)d
{
  v3 = *&d;
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
  _window = [(_UIRemoteViewControllerLegacyImpl *)self _window];
  v4 = [(_UIRemoteViewControllerLegacyImpl *)self _preferredInterfaceOrientationForWindow:_window];

  return v4;
}

- (int64_t)_preferredInterfaceOrientationForWindow:(id)window
{
  if (!window)
  {
    return 0;
  }

  v4 = MEMORY[0x1E696AD98];
  windowCopy = window;
  firstObject = [v4 numberWithInteger:{objc_msgSend(windowCopy, "interfaceOrientation")}];
  LODWORD(v4) = [windowCopy _windowOwnsInterfaceOrientation];

  if (v4 && ![(NSArray *)self->_serviceViewControllerSupportedInterfaceOrientations containsObject:firstObject])
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
      firstObject = v7;
    }

    else
    {
      firstObject = [(NSArray *)self->_serviceViewControllerSupportedInterfaceOrientations firstObject];
    }
  }

  integerValue = [firstObject integerValue];

  return integerValue;
}

- (void)_statusBarOrientationDidChange:(id)change
{
  if (![(_UIRemoteViewControllerLegacyImpl *)self _isUpdatingSize])
  {
    _window = [(_UIRemoteViewControllerLegacyImpl *)self _window];

    if (_window)
    {
      viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
      _preferredInterfaceOrientation = [(_UIRemoteViewControllerLegacyImpl *)self _preferredInterfaceOrientation];

      [viewControllerOperatorProxy __hostDidChangeStatusBarOrientationToInterfaceOrientation:_preferredInterfaceOrientation];
    }
  }
}

- (void)_statusBarHeightDidChange:(id)change
{
  changeCopy = change;
  if (![(_UIRemoteViewControllerLegacyImpl *)self _isUpdatingSize])
  {
    userInfo = [changeCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:@"UIApplicationStatusBarHeightChangedDurationKey"];
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

- (void)_applicationWillEnterForeground:(id)foreground
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69___UIRemoteViewControllerLegacyImpl__applicationWillEnterForeground___block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [(_UIRemoteViewControllerLegacyImpl *)self _synchronizeAnimationsInActionsIfNecessary:v3];
}

- (void)_sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  name = [foregroundCopy name];
  if (([name isEqualToString:@"UISceneWillEnterForegroundNotification"] & 1) == 0)
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

  object = [foregroundCopy object];
  window = [(_UIRemoteViewControllerLegacyImpl *)self window];
  windowScene = [window windowScene];

  if (object == windowScene)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_hostWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  view = [(_UIRemoteViewControllerLegacyImpl *)self view];
  object = [foregroundCopy object];
  view2 = [object view];
  v7 = [view isDescendantOfView:view2];

  if (v7)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _applicationWillEnterForeground:foregroundCopy];
  }
}

- (void)_hostSceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  view = [(_UIRemoteViewControllerLegacyImpl *)self view];
  window = [view window];
  object = [foregroundCopy object];
  parentViewController = [object parentViewController];
  _window = [parentViewController _window];

  if (window == _window)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _sceneWillEnterForeground:foregroundCopy];
  }
}

- (void)_pencilBarrelEventFocusEvaluatedForSceneTransition:(id)transition
{
  object = [transition object];
  _existingView = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
  _window = [_existingView _window];
  _eventRoutingScene = [_window _eventRoutingScene];

  if (_eventRoutingScene && object == _eventRoutingScene)
  {
    [self->_viewControllerOperatorProxy __hostDidEvaluatePencilBarrelEventFocusForSceneTransition];
  }
}

- (void)_hostDidEvaluatePencilBarrelEventFocusForSceneTransition:(id)transition
{
  transitionCopy = transition;
  view = [(_UIRemoteViewControllerLegacyImpl *)self view];
  _window = [view _window];
  object = [transitionCopy object];

  parentViewController = [object parentViewController];
  _window2 = [parentViewController _window];

  if (_window == _window2)
  {
    viewControllerOperatorProxy = self->_viewControllerOperatorProxy;

    [viewControllerOperatorProxy __hostDidEvaluatePencilBarrelEventFocusForSceneTransition];
  }
}

- (void)_applicationDidEnterBackground:(id)background
{
  [self->_viewControllerOperatorProxy __hostDidEnterBackground];

  [(_UIRemoteViewControllerLegacyImpl *)self _cancelProxiedEditAlertViewAnimated:0];
}

- (void)_sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  name = [backgroundCopy name];
  if ([name isEqualToString:@"UISceneDidEnterBackgroundNotification"])
  {
    object = [backgroundCopy object];
    window = [(_UIRemoteViewControllerLegacyImpl *)self window];
    windowScene = [window windowScene];

    if (object != windowScene)
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

- (void)_hostDidEnterBackground:(id)background
{
  backgroundCopy = background;
  view = [(_UIRemoteViewControllerLegacyImpl *)self view];
  object = [backgroundCopy object];
  view2 = [object view];
  v7 = [view isDescendantOfView:view2];

  if (v7)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _applicationDidEnterBackground:backgroundCopy];
  }
}

- (void)_hostSceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  view = [(_UIRemoteViewControllerLegacyImpl *)self view];
  window = [view window];
  object = [backgroundCopy object];
  parentViewController = [object parentViewController];
  _window = [parentViewController _window];

  if (window == _window)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _sceneDidEnterBackground:backgroundCopy];
  }
}

- (BOOL)_windowSceneIsKeyboardWindowScene:(uint64_t)scene
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (scene && v3)
  {
    if (+[_UIRemoteKeyboards enabled](_UIRemoteKeyboards, "enabled") && [v4 _hasSettingsScene])
    {
      screen = [v4 screen];
      v7 = [UIWindowScene _keyboardWindowSceneForScreen:screen create:0];
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
  _window = [(_UIRemoteViewControllerLegacyImpl *)self _window];
  windowScene = [_window windowScene];
  v4 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:windowScene forViewService:1];

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

  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  __shouldHostRemoteTextEffectsWindow = [objc_opt_class() __shouldHostRemoteTextEffectsWindow];

  if (__shouldHostRemoteTextEffectsWindow)
  {
    _window = [(_UIRemoteViewControllerLegacyImpl *)self _window];
    windowScene = [_window windowScene];

    if (self->_fullScreenTextEffectsRemoteView && windowScene)
    {
      textEffectsWindowForServiceScreen = [(_UIRemoteViewControllerLegacyImpl *)self textEffectsWindowForServiceScreen];
      [textEffectsWindowForServiceScreen addSubview:self->_fullScreenTextEffectsRemoteView];
    }

    if (self->_textEffectsAboveStatusBarRemoteView)
    {
      _window2 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
      windowScene2 = [_window2 windowScene];
      v12 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:windowScene2 forViewService:1];
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
            selfCopy2 = self;
            _os_log_fault_impl(&dword_188A29000, v19, OS_LOG_TYPE_FAULT, "UIRemoteViewController %@ has a nil _callerID", &v20, 0xCu);
          }
        }

        else
        {
          v18 = *(__UILogGetCategoryCachedImpl("Assert", &_restoreTextEffectsRemoteView___s_category) + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v20 = 138412290;
            selfCopy2 = self;
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
      servicePID = [(_UIViewServiceHostSessionDeputyShim *)self->_session servicePID];
      textEffectsWindowForServiceScreen2 = [(_UIRemoteViewControllerLegacyImpl *)self textEffectsWindowForServiceScreen];
      windowScene3 = [textEffectsWindowForServiceScreen2 windowScene];
      [v13 addHostedWindowView:remoteKeyboardRemoteView fromPID:servicePID forScene:windowScene3 callerID:self->_callerID];
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
      _window = [(_UIRemoteViewControllerLegacyImpl *)self _window];
      windowScene = [_window windowScene];
      v8 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:windowScene forViewService:1];

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
        _window2 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
        windowScene2 = [_window2 windowScene];
        v23 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:windowScene2 forViewService:1];
        [v23 addSubview:v20];

        v24 = self->_fullScreenTextEffectsSnapshotView;
        self->_fullScreenTextEffectsSnapshotView = v20;
      }

      [(_UIRemoteViewControllerLegacyImpl *)self _removeTextEffectsRemoteViews];
      _window3 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
      [(_UIRemoteViewControllerLegacyImpl *)self _noteWindowState:_window3 != 0];
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
          selfCopy2 = self;
          _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "UIRemoteViewController %@ has a nil _callerID", &v7, 0xCu);
        }
      }

      else
      {
        v5 = *(__UILogGetCategoryCachedImpl("Assert", &_removeTextEffectsRemoteViews___s_category) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v7 = 138412290;
          selfCopy2 = self;
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

- (void)_applicationDidBecomeActive:(id)active
{
  self->_snapshotTextEffectsAfterRotation = 0;
  [(_UIRemoteViewControllerLegacyImpl *)self _restoreTextEffectsRemoteView];
  [self->_viewControllerOperatorProxy __hostDidBecomeActive];

  [(_UIRemoteViewControllerLegacyImpl *)self _updateServiceSceneContext];
}

- (void)_applicationWillDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
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

- (void)_applicationWillAddDeactivationReason:(id)reason
{
  userInfo = [reason userInfo];
  v4 = [userInfo objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  self->_applicationDeactivationReason = [v4 intValue];
}

- (void)_updateLockStatusHostingVisibility
{
  v36 = *MEMORY[0x1E69E9840];
  view = [(_UIRemoteViewControllerLegacyImpl *)self view];
  window = [view window];
  if (window)
  {
    v5 = window;
    view2 = [(_UIRemoteViewControllerLegacyImpl *)self view];
    window2 = [view2 window];
    isHidden = [window2 isHidden];

    if (!isHidden)
    {
      _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
      __shouldHostRemoteTextEffectsWindow = [objc_opt_class() __shouldHostRemoteTextEffectsWindow];

      if (!__shouldHostRemoteTextEffectsWindow)
      {
        return;
      }

      fullScreenTextEffectsRemoteView = self->_fullScreenTextEffectsRemoteView;
      if (fullScreenTextEffectsRemoteView)
      {
        superview = [(UIView *)fullScreenTextEffectsRemoteView superview];

        if (!superview)
        {
          textEffectsWindowForServiceScreen = [(_UIRemoteViewControllerLegacyImpl *)self textEffectsWindowForServiceScreen];
          [textEffectsWindowForServiceScreen addSubview:self->_fullScreenTextEffectsRemoteView];
        }
      }

      textEffectsAboveStatusBarRemoteView = self->_textEffectsAboveStatusBarRemoteView;
      if (textEffectsAboveStatusBarRemoteView)
      {
        superview2 = [(UIView *)textEffectsAboveStatusBarRemoteView superview];

        if (!superview2)
        {
          _window = [(_UIRemoteViewControllerLegacyImpl *)self _window];
          windowScene = [_window windowScene];
          v18 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:windowScene forViewService:1];
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
              selfCopy4 = self;
              _os_log_fault_impl(&dword_188A29000, v32, OS_LOG_TYPE_FAULT, "UIRemoteViewController %@ has a nil _callerID", buf, 0xCu);
            }
          }

          else
          {
            v30 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED497198) + 8);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              selfCopy4 = self;
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
        superview3 = [(UIView *)remoteKeyboardRemoteView superview];

        if (!superview3)
        {
          v33 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
          v25 = self->_remoteKeyboardRemoteView;
          servicePID = [(_UIViewServiceHostSessionDeputyShim *)self->_session servicePID];
          textEffectsWindowForServiceScreen2 = [(_UIRemoteViewControllerLegacyImpl *)self textEffectsWindowForServiceScreen];
          windowScene2 = [textEffectsWindowForServiceScreen2 windowScene];
          [v33 addHostedWindowView:v25 fromPID:servicePID forScene:windowScene2 callerID:self->_callerID];
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
          selfCopy4 = self;
          _os_log_fault_impl(&dword_188A29000, v31, OS_LOG_TYPE_FAULT, "UIRemoteViewController %@ has a nil _callerID", buf, 0xCu);
        }
      }

      else
      {
        v29 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED497190) + 8);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy4 = self;
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

- (void)_uirvc_windowBecameKey:(id)key
{
  keyCopy = key;
  if (self->_wasKeyboardEnvironmentEventDeferringBeforeResignKey || (-[_UIRemoteViewControllerLegacyImpl _owningRemoteViewController](self, "_owningRemoteViewController"), v4 = objc_claimAutoreleasedReturnValue(), [v4 _screen], v5 = objc_claimAutoreleasedReturnValue(), v6 = -[_UIRemoteViewControllerLegacyImpl _wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:](self, "_wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:", v5), v5, v4, v6))
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _setWantsKeyboardEnvironmentEventDeferring:1];
  }

  self->_wasKeyboardEnvironmentEventDeferringBeforeResignKey = 0;
}

- (void)_uirvc_keyboardWindowSceneSettingsSceneWillChange:(id)change
{
  object = [change object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = object;
  if (isKindOfClass)
  {
    v6 = object;
    v7 = [(_UIRemoteViewControllerLegacyImpl *)self _windowSceneIsKeyboardWindowScene:v6];
    _existingView = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
    _window = [_existingView _window];
    windowScene = [_window windowScene];

    if (v7 && v6 == windowScene)
    {
      if (self->_keyboardEnvironmentDeferringToken)
      {
        [(_UIRemoteViewControllerLegacyImpl *)self _setWantsKeyboardEnvironmentEventDeferring:0];
      }

      [(_UIRemoteViewControllerLegacyImpl *)self _endDynamicButtonEventDeferringIfNeeded];
    }

    v5 = object;
  }
}

- (void)_uirvc_applicationKeyWindowWillChange:(id)change
{
  object = [change object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = +[UIWindow _applicationKeyWindow];
    v5 = object;
    _existingView = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
    window = [_existingView window];

    if ([window _isRemoteKeyboardWindow] && v5 != v4)
    {
      if (self->_keyboardEnvironmentDeferringToken)
      {
        [(_UIRemoteViewControllerLegacyImpl *)self _setWantsKeyboardEnvironmentEventDeferring:0];
      }

      [(_UIRemoteViewControllerLegacyImpl *)self _endDynamicButtonEventDeferringIfNeeded];
    }
  }
}

- (void)_uirvc_windowWillMoveToScene:(id)scene
{
  object = [scene object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = object;
  if (isKindOfClass)
  {
    v6 = object;
    _existingView = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
    _window = [_existingView _window];

    if (v6 == _window)
    {
      if (self->_keyboardEnvironmentDeferringToken)
      {
        self->_wasKeyboardEnvironmentEventDeferringBeforeSceneMove = 1;
        [(_UIRemoteViewControllerLegacyImpl *)self _setWantsKeyboardEnvironmentEventDeferring:0];
      }

      [(_UIRemoteViewControllerLegacyImpl *)self _endDynamicButtonEventDeferringIfNeeded];
    }

    v5 = object;
  }
}

- (void)_uirvc_windowDidMoveToScene:(id)scene
{
  object = [scene object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = object;
  if (isKindOfClass)
  {
    v6 = object;
    _existingView = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
    _window = [_existingView _window];

    if (v6 == _window)
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

    v5 = object;
  }
}

- (void)_updateDynamicButtonEventDeferringIfNeededWithOldResolvedConfigurations:(void *)configurations newResolvedConfigurations:
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  configurationsCopy = configurations;
  if (!self)
  {
    goto LABEL_43;
  }

  v7 = v5;
  v8 = configurationsCopy;
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

  if (self[39])
  {
    v18 = [v14 count] != 0;
    if (self[39])
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
  _owningRemoteViewController = [self _owningRemoteViewController];
  _appearState = [_owningRemoteViewController _appearState];

  v23 = 0;
  if (_appearState && _appearState != 3)
  {
    v23 = v18;
  }

  v24 = v20 || v23;
  v5 = v35;
  if (v24)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _endDynamicButtonEventDeferringIfNeeded];
    _existingView = [self _existingView];
    _window = [_existingView _window];

    _hostedWindowServiceDeferringTarget = [self _hostedWindowServiceDeferringTarget];
    if ([v11 _count] && _window && _hostedWindowServiceDeferringTarget)
    {
      windowScene = [_window windowScene];
      _eventDeferringManager = [windowScene _eventDeferringManager];
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: begin remote deferring for dynamic buttons", objc_opt_class(), self];
      v30 = [v14 copy];
      _owningRemoteViewController2 = [self _owningRemoteViewController];
      v32 = [(_UIEventDeferringManager *)_eventDeferringManager beginRemoteEventDeferringInEnvironments:v30 forOwningInterfaceElement:_owningRemoteViewController2 toTarget:_hostedWindowServiceDeferringTarget withReason:v29];
      v33 = self[39];
      self[39] = v32;

      [self _beginObservingNotificationsForEventDeferringIfNeeded];
    }
  }

LABEL_43:
}

- (void)_updateTouchGrabbingView
{
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  navigationController = [_owningRemoteViewController navigationController];

  viewControllers = [navigationController viewControllers];
  v5 = [viewControllers objectAtIndex:0];

  _owningRemoteViewController2 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  if (_owningRemoteViewController2)
  {
    v7 = _owningRemoteViewController2;
    while (v7 != v5)
    {
      parentViewController = [v7 parentViewController];

      v7 = parentViewController;
      if (!parentViewController)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (navigationController)
    {
      if (self->_touchGrabbingView || (-[_UIRemoteViewControllerLegacyImpl view](self, "view"), v9 = objc_claimAutoreleasedReturnValue(), [v9 bounds], v11 = v10, v9, objc_msgSend(navigationController, "_builtinInteractionController"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "screenEdgePanGestureRecognizer"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "_edgeRegionSize"), v15 = v14, v13, v12, v15 <= 0.0))
      {
        v7 = 0;
        goto LABEL_14;
      }

      v16 = [(UIView *)[_UIRemoteViewControllerTouchGrabbingView alloc] initWithFrame:0.0, 0.0, v15, v11];
      touchGrabbingView = self->_touchGrabbingView;
      self->_touchGrabbingView = &v16->super;

      layer = [(UIView *)self->_touchGrabbingView layer];
      [layer setHitTestsAsOpaque:1];

      [(UIView *)self->_touchGrabbingView setUserInteractionEnabled:0];
      [(UIView *)self->_touchGrabbingView setAutoresizingMask:20];
      view = [(_UIRemoteViewControllerLegacyImpl *)self view];
      [view addSubview:self->_touchGrabbingView];
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
  view = self->_touchGrabbingView;
  self->_touchGrabbingView = 0;
LABEL_13:

LABEL_14:
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)insets andLeftMargin:(double)margin rightMargin:(double)rightMargin
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
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
      mEMORY[0x1E698E730] = [MEMORY[0x1E698E730] sharedInstance];
      if ([mEMORY[0x1E698E730] isCarrierInstall])
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

  traitCollection = [(_UIRemoteViewControllerLegacyImpl *)self traitCollection];
  if ([traitCollection userInterfaceIdiom])
  {

    goto LABEL_24;
  }

  serviceBundleIdentifier = [(_UIRemoteViewControllerLegacyImpl *)self serviceBundleIdentifier];
  v16 = [serviceBundleIdentifier hasPrefix:@"com.apple."];

  if (v16)
  {
    goto LABEL_24;
  }

  window = [(_UIRemoteViewControllerLegacyImpl *)self window];
  [window safeAreaInsets];
  v26 = v18;
  v20 = v19;
  v22 = v21;

  window2 = [(_UIRemoteViewControllerLegacyImpl *)self window];
  if (([window2 interfaceOrientation] - 3) > 1)
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
  *&v27[9] = margin;
  *&v27[10] = rightMargin;
  [(_UIRemoteViewControllerLegacyImpl *)self _synchronizeAnimationsInActionsIfNecessary:v27, *&v26];
}

- (id)_terminateWithError:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock(&self->_terminationErrorLock);
  if (!self->_terminationError)
  {
    objc_storeStrong(&self->_terminationError, error);
  }

  os_unfair_lock_unlock(&self->_terminationErrorLock);
  invoke = [(_UIAsyncInvocation *)self->_terminationInvocation invoke];

  return invoke;
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
      selfCopy = self;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      selfCopy = [v4 stringWithFormat:@"<%@: %p>", v7, selfCopy];
    }

    else
    {
      selfCopy = @"(nil)";
    }

    *buf = 138543362;
    v13 = selfCopy;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Disconnect requested for remote view controller: %{public}@", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_UIViewServiceErrorDomain" code:1 userInfo:&unk_1EFE34BA8];
  v10 = [(_UIRemoteViewControllerLegacyImpl *)self _terminateWithError:v9];

  return v10;
}

- (void)_terminateUnconditionallyThen:(id)then
{
  v13[2] = *MEMORY[0x1E69E9840];
  thenCopy = then;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIWindowFirstResponderDidChangeNotification" object:0];
  [defaultCenter removeObserver:self name:@"UIApplicationDidChangeStatusBarOrientationNotification" object:0];
  [defaultCenter removeObserver:self name:@"UIApplicationStatusBarHeightChangedNotification" object:0];
  [defaultCenter removeObserver:self name:@"UIApplicationWillEnterForegroundNotification" object:0];
  [defaultCenter removeObserver:self name:@"UISceneWillEnterForegroundNotification" object:0];
  [defaultCenter removeObserver:self name:0x1EFBB47D0 object:0];
  [defaultCenter removeObserver:self name:0x1EFBB4810 object:0];
  [defaultCenter removeObserver:self name:@"_UIPencilEventDidEvaluateBarrelFocusForSceneTransition" object:0];
  [defaultCenter removeObserver:self name:@"_UIViewServiceHostDidEvaluatePencilBarrelEventFocusForSceneTransition" object:0];
  [defaultCenter removeObserver:self name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  [defaultCenter removeObserver:self name:@"UISceneDidEnterBackgroundNotification" object:0];
  [defaultCenter removeObserver:self name:0x1EFBB47B0 object:0];
  [defaultCenter removeObserver:self name:0x1EFBB47F0 object:0];
  [defaultCenter removeObserver:self name:@"UIApplicationDidBecomeActiveNotification" object:0];
  [defaultCenter removeObserver:self name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
  [defaultCenter removeObserver:self name:_UIWindowDidAttachContextNotification object:0];
  [defaultCenter removeObserver:self name:_UIWindowDidDetachContextNotification object:0];
  [defaultCenter removeObserver:self name:@"_UISystemApplicationWillLockNotification" object:0];
  [defaultCenter removeObserver:self name:@"_UISystemApplicationDidUnlockNotification" object:0];
  [defaultCenter removeObserver:self name:@"_UIScreenDisplayConfigurationUpdatedNotification" object:0];
  [defaultCenter removeObserver:self name:@"UIScreenReferenceDisplayModeStatusDidChangeNotification" object:0];
  [defaultCenter removeObserver:self name:@"_UIWindowSceneEnhancedWindowingModeChanged" object:0];
  invoke = [(_UIAsyncInvocation *)self->_viewControllerOperatorHalfDisconnectionInvocation invoke];
  v13[0] = invoke;
  invoke2 = [(_UIAsyncInvocation *)self->_textEffectsOperatorHalfDisconnectionInvocation invoke];
  v13[1] = invoke2;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67___UIRemoteViewControllerLegacyImpl__terminateUnconditionallyThen___block_invoke;
  v10[3] = &unk_1E7128660;
  v11 = thenCopy;
  selfCopy = self;
  v9 = thenCopy;
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
      selfCopy = self;
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      selfCopy = [v4 stringWithFormat:@"<%@: %p>", v7, selfCopy];
    }

    else
    {
      selfCopy = @"(nil)";
    }

    *buf = 138543362;
    v12 = selfCopy;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Initiating deallocation for remote view controller: %{public}@", buf, 0xCu);
  }

  disconnect = [(_UIRemoteViewControllerLegacyImpl *)self disconnect];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58___UIRemoteViewControllerLegacyImpl__objc_initiateDealloc__block_invoke;
  v10[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v10[4] = self;
  [disconnect whenCompleteDo:v10];
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
          selfCopy2 = self;
          _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "UIRemoteViewController %@ has a nil _callerID", buf, 0xCu);
        }
      }

      else
      {
        v7 = *(__UILogGetCategoryCachedImpl("Assert", &dealloc___s_category_11) + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy2 = self;
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

- (void)__viewServiceDidChangeHasScrollToTopView:(BOOL)view
{
  if (self->_serviceHasScrollToTopView != view)
  {
    viewCopy = view;
    self->_serviceHasScrollToTopView = view;
    window = [(UIView *)self->_serviceViewControllerRemoteView window];
    sizeTrackingView = self->_sizeTrackingView;
    v8 = window;
    if (viewCopy)
    {
      [window _registerScrollToTopView:sizeTrackingView];
    }

    else
    {
      [window _unregisterScrollToTopView:sizeTrackingView];
    }
  }
}

- (void)_scrollToTopFromTouchAtViewLocation:(CGPoint)location resultHandler:(id)handler
{
  y = location.y;
  x = location.x;
  handlerCopy = handler;
  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87___UIRemoteViewControllerLegacyImpl__scrollToTopFromTouchAtViewLocation_resultHandler___block_invoke;
  v14[3] = &unk_1E710DB08;
  v9 = handlerCopy;
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

- (void)_firstResponderDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v5 = [userInfo objectForKey:0x1EFB927F0];
  bOOLValue = [v5 BOOLValue];

  userInfo2 = [changeCopy userInfo];
  v8 = [userInfo2 objectForKey:@"UIWindowFirstResponderUserInfoKey"];

  v9 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  handlingRemoteEvent = [v9 handlingRemoteEvent];

  if (bOOLValue)
  {
    if (handlingRemoteEvent)
    {
      goto LABEL_15;
    }

LABEL_6:
    object = [changeCopy object];
    if (_UIWindowKeyWindowAPIIsSceneLevel())
    {
      isKeyWindow = [object isKeyWindow];
    }

    else
    {
      isKeyWindow = [object _isApplicationKeyWindow];
    }

    v15 = isKeyWindow;
    view = [(_UIRemoteViewControllerLegacyImpl *)self view];
    window = [view window];
    v18 = window;
    if (object == window)
    {
    }

    else
    {
      _windowHostingScene = [object _windowHostingScene];
      v20 = v15 & ~[_windowHostingScene _sceneSessionRoleIsCarPlayOrNonInteractiveExternal] | bOOLValue;

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
    _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    v12 = v8 == _owningRemoteViewController;

    if (((v12 | handlingRemoteEvent) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_15:
}

- (void)viewWillAppear:(BOOL)appear
{
  v31 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__applicationDidBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
  [defaultCenter addObserver:self selector:sel__applicationWillDeactivate_ name:@"UIApplicationWillResignActiveNotification" object:0];
  [defaultCenter addObserver:self selector:sel__viewServiceHostDidBecomeActive_ name:0x1EFBB4830 object:0];
  [defaultCenter addObserver:self selector:sel__viewServiceHostWillDeactivate_ name:0x1EFBB4850 object:0];
  [defaultCenter addObserver:self selector:sel__applicationWillAddDeactivationReason_ name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
  [defaultCenter addObserver:self selector:sel__systemApplicationWillLock_ name:@"_UISystemApplicationWillLockNotification" object:0];
  [defaultCenter addObserver:self selector:sel__systemApplicationDidUnlock_ name:@"_UISystemApplicationDidUnlockNotification" object:0];
  [(_UIRemoteViewControllerLegacyImpl *)self _beginObservingSceneMoveNotificationsIfNeeded];
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  __shouldHostRemoteTextEffectsWindow = [objc_opt_class() __shouldHostRemoteTextEffectsWindow];

  if (!__shouldHostRemoteTextEffectsWindow)
  {
    goto LABEL_12;
  }

  if (self->_fullScreenTextEffectsRemoteView)
  {
    textEffectsWindowForServiceScreen = [(_UIRemoteViewControllerLegacyImpl *)self textEffectsWindowForServiceScreen];
    [textEffectsWindowForServiceScreen addSubview:self->_fullScreenTextEffectsRemoteView];
  }

  if (self->_textEffectsAboveStatusBarRemoteView)
  {
    _window = [(_UIRemoteViewControllerLegacyImpl *)self _window];
    windowScene = [_window windowScene];
    v11 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:windowScene forViewService:1];
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
          selfCopy2 = self;
          _os_log_fault_impl(&dword_188A29000, v26, OS_LOG_TYPE_FAULT, "UIRemoteViewController %@ has a nil _callerID", buf, 0xCu);
        }
      }

      else
      {
        v25 = *(__UILogGetCategoryCachedImpl("Assert", &viewWillAppear____s_category_0) + 8);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy2 = self;
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
    servicePID = [(_UIViewServiceHostSessionDeputyShim *)self->_session servicePID];
    textEffectsWindowForServiceScreen2 = [(_UIRemoteViewControllerLegacyImpl *)self textEffectsWindowForServiceScreen];
    windowScene2 = [textEffectsWindowForServiceScreen2 windowScene];
    [v12 addHostedWindowView:remoteKeyboardRemoteView fromPID:servicePID forScene:windowScene2 callerID:self->_callerID];
  }

LABEL_12:
  [(_UIRemoteViewControllerLegacyImpl *)self setupAppProtectionIfNecessary];
  _owningRemoteViewController2 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  presentingViewController = [_owningRemoteViewController2 presentingViewController];
  currentAction = [presentingViewController currentAction];
  if (currentAction)
  {
    v20 = currentAction[4];
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
  _owningRemoteViewController3 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  [viewControllerOperatorProxy __hostDisablesAutomaticKeyboardBehavior:{objc_msgSend(_owningRemoteViewController3, "_disableAutomaticKeyboardBehavior")}];

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __52___UIRemoteViewControllerLegacyImpl_viewWillAppear___block_invoke;
  v27[3] = &unk_1E70F35E0;
  v27[4] = self;
  appearCopy = appear;
  [(_UIRemoteViewControllerLegacyImpl *)self _synchronizeAnimationsInActionsIfNecessary:v27];
}

- (void)viewIsAppearing:(BOOL)appearing
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
  _existingView = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
  window = [_existingView window];

  _existingView2 = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
  window2 = [_existingView2 window];
  windowScene = [window2 windowScene];
  v8 = [_UIRemoteViewControllerSceneContext contextForWindow:window inScene:windowScene];

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

- (void)_movedToParentSceneWithSettings:(id)settings
{
  settingsCopy = settings;
  isUISubclass = [settingsCopy isUISubclass];
  v6 = off_1E70E9468;
  if (!isUISubclass)
  {
    v6 = 0x1E699FC28;
  }

  v8 = [objc_alloc(*v6) initWithSettings:settingsCopy];

  v7 = BSCreateSerializedBSXPCEncodableObject();
  [self->_viewControllerOperatorProxy __hostDidMoveToParentSceneWithSettings:v7];
}

- (void)_parentSceneDidUpdateWithDiff:(id)diff
{
  v4 = BSCreateSerializedBSXPCEncodableObject();
  [self->_viewControllerOperatorProxy __hostSceneDidUpdateWithDiff:v4];
}

- (void)_screenDidConnect:(id)connect
{
  object = [connect object];
  if (![UIApp _isSpringBoard] || (objc_msgSend(object, "_isCarScreen") & 1) == 0)
  {
    viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
    displayConfiguration = [object displayConfiguration];
    [viewControllerOperatorProxy __hostDidAttachDisplay:displayConfiguration];
  }
}

- (void)_screenDidUpdate:(id)update
{
  object = [update object];
  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  displayConfiguration = [object displayConfiguration];
  [viewControllerOperatorProxy __hostDidUpdateDisplay:displayConfiguration];
}

- (void)_screenDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  object = [disconnectCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object2 = [disconnectCopy object];

    if (!object2)
    {
      goto LABEL_15;
    }

    lastNotifiedServiceScreenDisplayIdentity = self->_lastNotifiedServiceScreenDisplayIdentity;
    displayIdentity = [object2 displayIdentity];
    v8 = lastNotifiedServiceScreenDisplayIdentity;
    v9 = displayIdentity;
    mainScreen = v9;
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

    mainScreen = [objc_opt_self() mainScreen];
    [(_UIRemoteViewControllerLegacyImpl *)self _notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded:mainScreen];
LABEL_12:

LABEL_13:
    viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
    displayConfiguration = [object2 displayConfiguration];
    [viewControllerOperatorProxy __hostDidDetachDisplay:displayConfiguration];

    goto LABEL_14;
  }

  object2 = object;
LABEL_14:

LABEL_15:
}

- (void)_screenDidUpdateCapture:(id)capture
{
  object = [capture object];
  v5 = objc_opt_class();
  v6 = object;
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

  view = [(_UIRemoteViewControllerLegacyImpl *)self view];
  window = [view window];
  screen = [window screen];
  v14 = v8;
  v12 = screen;
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

- (void)_referenceDisplayModeStatusDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  _existingView = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
  window = [_existingView window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  object2 = [changeCopy object];

  if (screen == object2)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _updateServiceSceneContext];
  }
}

- (void)_enhancedWindowingModeDidChange:(id)change
{
  object = [change object];
  window = [(_UIRemoteViewControllerLegacyImpl *)self window];
  windowScene = [window windowScene];

  v6 = object;
  if (windowScene == object)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _updateServiceSceneContext];
    v6 = object;
  }
}

- (void)_systemReferenceAngleDidChange:(id)change
{
  v20 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  _existingView = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
  window = [_existingView window];

  if (window)
  {
    userInfo = [changeCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DED10]];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68___UIRemoteViewControllerLegacyImpl__systemReferenceAngleDidChange___block_invoke;
    v16[3] = &unk_1E7128688;
    v17 = window;
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
            selfCopy = self;
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            selfCopy = [v11 stringWithFormat:@"<%@: %p>", v14, selfCopy];
          }

          else
          {
            selfCopy = @"(nil)";
          }

          *buf = 138543362;
          v19 = selfCopy;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "%{public}@: The system reference angle changed affecting a remote view controller. Pushing new angle to service.", buf, 0xCu);
        }
      }

      [(_UIRemoteViewControllerLegacyImpl *)self _updateServiceSceneContext];
    }
  }
}

- (void)_notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded:(id)needed
{
  neededCopy = needed;
  displayIdentity = [neededCopy displayIdentity];
  v6 = [(FBSDisplayIdentity *)self->_lastNotifiedServiceScreenDisplayIdentity isEqual:displayIdentity]^ 1;
  if (neededCopy)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1)
  {
    objc_storeStrong(&self->_lastNotifiedServiceScreenDisplayIdentity, displayIdentity);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __103___UIRemoteViewControllerLegacyImpl__notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded___block_invoke;
    v14 = &unk_1E70F35B8;
    selfCopy = self;
    v16 = neededCopy;
    [(_UIRemoteViewControllerLegacyImpl *)self synchronizeAnimationsInActionsWithSynchronousReply:&v11];
  }

  wantsKeyboardEnvironmentEventDeferring = self->_wantsKeyboardEnvironmentEventDeferring;
  if ([neededCopy _userInterfaceIdiom] == 3 && (v7 | (neededCopy != 0 && !wantsKeyboardEnvironmentEventDeferring)) == 1)
  {
    v9 = [(_UIRemoteViewControllerLegacyImpl *)self _wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:neededCopy];
    if (self->_wantsKeyboardEnvironmentEventDeferring != v9)
    {
      [(_UIRemoteViewControllerLegacyImpl *)self _setWantsKeyboardEnvironmentEventDeferring:v9];
    }
  }

  [(_UIRemoteViewControllerLegacyImpl *)self _updateServiceSceneContext];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIScreenUniqueIdDidChangeNotification" object:0];
  if (neededCopy)
  {
    [defaultCenter addObserver:self selector:sel__screenIDChanged_ name:@"_UIScreenUniqueIdDidChangeNotification" object:neededCopy];
  }
}

- (void)_beginObservingSceneMoveNotificationsIfNeeded
{
  if ((*&self->_remoteViewControllerFlags & 4) == 0)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__uirvc_windowWillMoveToScene_ name:@"_UIWindowWillMoveToSceneNotification" object:0];
    [defaultCenter addObserver:self selector:sel__uirvc_windowDidMoveToScene_ name:@"_UIWindowDidMoveToSceneNotification" object:0];
    *&self->_remoteViewControllerFlags |= 4u;
  }
}

- (id)_hostedWindowServiceDeferringTarget
{
  v21 = *MEMORY[0x1E69E9840];
  serviceBundleIdentifier = [(_UIRemoteViewControllerLegacyImpl *)self serviceBundleIdentifier];
  hostedWindowHostingHandle = [(_UIRemoteView *)self->_serviceViewControllerRemoteView hostedWindowHostingHandle];
  contextID = [hostedWindowHostingHandle contextID];

  serviceProcessIdentifier = [(_UIRemoteViewControllerLegacyImpl *)self serviceProcessIdentifier];
  if (serviceProcessIdentifier < 1)
  {
    v11 = *(__UILogGetCategoryCachedImpl("ViewServices", &_hostedWindowServiceDeferringTarget___s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v14 = v11;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      selfCopy = [v12 stringWithFormat:@"<%@: %p>", v16, selfCopy];

      *buf = 138412290;
      v20 = selfCopy;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "%@{public}: Event deferring request to client process ignored; pid is invalid", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v7 = serviceProcessIdentifier;
    v8 = objc_alloc_init(MEMORY[0x1E698E3F8]);
    v9 = objc_alloc_init(MEMORY[0x1E698E3F8]);

    [v9 setPid:v7];
    v10 = [MEMORY[0x1E698E3A0] tokenForIdentifierOfCAContext:contextID];
    [v9 setToken:v10];
  }

  return v9;
}

- (void)_beginObservingNotificationsForEventDeferringIfNeeded
{
  _existingView = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
  _window = [_existingView _window];

  windowScene = [_window windowScene];
  _eventDeferringManager = [windowScene _eventDeferringManager];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  remoteViewControllerFlags = self->_remoteViewControllerFlags;
  internalBehavior = [(_UIEventDeferringManager *)_eventDeferringManager internalBehavior];
  shouldDisableRemoteViewControllerEventDeferringForKeyboardSettingsSceneChanges = [internalBehavior shouldDisableRemoteViewControllerEventDeferringForKeyboardSettingsSceneChanges];

  if ((remoteViewControllerFlags & 1) == 0 && shouldDisableRemoteViewControllerEventDeferringForKeyboardSettingsSceneChanges)
  {
    v10 = _window;
    v11 = v10;
    if (v10 && ([v10 windowScene], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, v14 = +[_UIRemoteKeyboards enabled](_UIRemoteKeyboards, "enabled"), v13, v14))
    {
      _isRemoteKeyboardWindow = [v11 _isRemoteKeyboardWindow];
      windowScene2 = [v11 windowScene];
      v17 = [(_UIRemoteViewControllerLegacyImpl *)self _windowSceneIsKeyboardWindowScene:windowScene2];

      if (_isRemoteKeyboardWindow && v17)
      {
        [defaultCenter addObserver:self selector:sel__uirvc_keyboardWindowSceneSettingsSceneWillChange_ name:@"_UISceneWillChangeSettingsSceneNotification" object:0];
        *&self->_remoteViewControllerFlags |= 1u;
      }
    }

    else
    {
    }
  }

  v18 = self->_remoteViewControllerFlags;
  internalBehavior2 = [(_UIEventDeferringManager *)_eventDeferringManager internalBehavior];
  shouldDisableRemoteViewControllerEventDeferringForKeyboardKeyWindowChanges = [internalBehavior2 shouldDisableRemoteViewControllerEventDeferringForKeyboardKeyWindowChanges];

  if ((v18 & 2) == 0 && shouldDisableRemoteViewControllerEventDeferringForKeyboardKeyWindowChanges && [_window _isRemoteKeyboardWindow])
  {
    [defaultCenter addObserver:self selector:sel__uirvc_applicationKeyWindowWillChange_ name:@"_UIWindowWillBecomeApplicationKeyNotification" object:0];
    *&self->_remoteViewControllerFlags |= 2u;
  }

  [(_UIRemoteViewControllerLegacyImpl *)self _beginObservingSceneMoveNotificationsIfNeeded];
}

- (void)_setWantsKeyboardEnvironmentEventDeferring:(BOOL)deferring
{
  deferringCopy = deferring;
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

  v9 = wantsKeyboardEnvironmentEventDeferring & ~deferring;
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  _appearState = [_owningRemoteViewController _appearState];

  v12 = 0;
  if (_appearState && _appearState != 3)
  {
    v12 = deferringCopy & ~self->_wantsKeyboardEnvironmentEventDeferring;
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

    self->_wantsKeyboardEnvironmentEventDeferring = deferringCopy;
    _existingView = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
    window = [_existingView window];

    _hostedWindowServiceDeferringTarget = [(_UIRemoteViewControllerLegacyImpl *)self _hostedWindowServiceDeferringTarget];
    if (self->_wantsKeyboardEnvironmentEventDeferring && window && _hostedWindowServiceDeferringTarget)
    {
      windowScene = [window windowScene];
      _eventDeferringManager = [windowScene _eventDeferringManager];
      keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
      v20 = [MEMORY[0x1E695DFD8] setWithObject:keyboardFocusEnvironment];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: begin remote deferring in %@", objc_opt_class(), self, keyboardFocusEnvironment];
      _owningRemoteViewController2 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
      v23 = [(_UIEventDeferringManager *)_eventDeferringManager beginRemoteEventDeferringInEnvironments:v20 forOwningInterfaceElement:_owningRemoteViewController2 toTarget:_hostedWindowServiceDeferringTarget withReason:v21];
      v24 = self->_keyboardEnvironmentDeferringToken;
      self->_keyboardEnvironmentDeferringToken = v23;

      [(_UIRemoteViewControllerLegacyImpl *)self _beginObservingNotificationsForEventDeferringIfNeeded];
    }
  }
}

- (BOOL)_wantsKeyboardEnvironmentEventDeferringForFocusOnScreen:(id)screen
{
  screenCopy = screen;
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  _focusSystem = [_owningRemoteViewController _focusSystem];

  _userInterfaceIdiom = [screenCopy _userInterfaceIdiom];
  v8 = 0;
  if (_focusSystem && _userInterfaceIdiom == 3)
  {
    _owningRemoteViewController2 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    v10 = [_owningRemoteViewController2 _existingPresentationControllerImmediate:0 effective:0];

    shouldPresentInFullscreen = [v10 shouldPresentInFullscreen];
    v8 = shouldPresentInFullscreen;
    if (v10 && (shouldPresentInFullscreen & 1) != 0)
    {
      v8 = 1;
LABEL_13:

      return v8 & 1;
    }

    _owningRemoteViewController3 = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    presentingViewController = [_owningRemoteViewController3 presentingViewController];

    presentedViewController = [presentingViewController presentedViewController];
    if (![presentedViewController modalPresentationStyle] || objc_msgSend(presentedViewController, "modalPresentationStyle") == 5 || objc_msgSend(presentedViewController, "modalPresentationStyle") == 2 || objc_msgSend(presentedViewController, "modalPresentationStyle") == 16 || objc_msgSend(presentedViewController, "modalPresentationStyle") == 7)
    {
      v8 = 1;
LABEL_12:

      goto LABEL_13;
    }

    if ([presentedViewController modalPresentationStyle] == 3)
    {
      v16 = [presentingViewController _nonModalAncestorViewControllerStopAtIsPresentationContext:1];
    }

    else
    {
      modalPresentationStyle = [presentedViewController modalPresentationStyle];
      v16 = [presentingViewController _nonModalAncestorViewControllerStopAtIsPresentationContext:1];
      if (modalPresentationStyle != 6)
      {
LABEL_22:

        goto LABEL_12;
      }
    }

    _existingView = [v16 _existingView];

    if (_existingView)
    {
      _existingView2 = [v16 _existingView];
      window = [_existingView2 window];

      if (window)
      {
        _existingView3 = [v16 _existingView];
        v22 = [UIViewController _isViewSizeFullScreen:_existingView3 inWindow:window ignoreInWindowCheck:0];

        v8 |= v22;
      }
    }

    goto LABEL_22;
  }

  return v8 & 1;
}

- (void)viewDidAppear:(BOOL)appear
{
  [self->_viewControllerOperatorProxy __hostViewDidAppear:appear];
  [(_UIRemoteViewControllerLegacyImpl *)self _updateTouchGrabbingView];
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  presentingViewController = [_owningRemoteViewController presentingViewController];
  _presentationController = [presentingViewController _presentationController];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_opt_class() _shouldInterdictServiceViewTouches])
  {
    [(_UIRemoteViewControllerLegacyImpl *)self __setInterdictServiceViewTouches:1];
  }

  _window = [(_UIRemoteViewControllerLegacyImpl *)self _window];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    _window2 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
    [defaultCenter addObserver:self selector:sel__updateUnderflowProperties name:0x1EFBB48B0 object:_window2];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55___UIRemoteViewControllerLegacyImpl_viewWillDisappear___block_invoke;
  v4[3] = &unk_1E70F35E0;
  v4[4] = self;
  disappearCopy = disappear;
  [(_UIRemoteViewControllerLegacyImpl *)self _synchronizeAnimationsInActionsIfNecessary:v4];
  [(_UIRemoteViewControllerLegacyImpl *)self _updateTouchGrabbingView];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v11 = *MEMORY[0x1E69E9840];
  [(_UIRemoteViewControllerLegacyImpl *)self _restoreTextEffectsRemoteView];
  [self->_viewControllerOperatorProxy __hostViewDidDisappear:disappearCopy];
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
          selfCopy2 = self;
          _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "UIRemoteViewController %@ has a nil _callerID", &v9, 0xCu);
        }
      }

      else
      {
        v7 = *(__UILogGetCategoryCachedImpl("Assert", &viewDidDisappear____s_category) + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 138412290;
          selfCopy2 = self;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIApplicationDidBecomeActiveNotification" object:0];
  [defaultCenter removeObserver:self name:@"UIApplicationWillResignActiveNotification" object:0];
  [defaultCenter removeObserver:self name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
  [defaultCenter removeObserver:self name:0x1EFBB48B0 object:0];
  *&self->_remoteViewControllerFlags |= 0x20u;
}

- (void)_configureSizeViewConstraintsForWindow:(id)window interfaceOrientation:(int64_t)orientation
{
  v54[1] = *MEMORY[0x1E69E9840];
  windowCopy = window;
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
    mEMORY[0x1E698E730] = [MEMORY[0x1E698E730] sharedInstance];
    if (([mEMORY[0x1E698E730] isCarrierInstall] & 1) == 0)
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

  mEMORY[0x1E698E730] = [windowCopy screen];
  if (([mEMORY[0x1E698E730] _isEmbeddedScreen] & 1) == 0)
  {
    goto LABEL_29;
  }

  serviceBundleIdentifier = [(_UIRemoteViewControllerLegacyImpl *)self serviceBundleIdentifier];
  v10 = [serviceBundleIdentifier hasPrefix:@"com.apple."];

  if ((v10 & 1) == 0)
  {
    sizeTrackingConstraints = self->_sizeTrackingConstraints;
    if (sizeTrackingConstraints)
    {
      superview = [(UIView *)self->_sizeTrackingView superview];

      if (superview)
      {
        superview2 = [(UIView *)self->_sizeTrackingView superview];
        [superview2 removeConstraints:self->_sizeTrackingConstraints];
      }

      v14 = self->_sizeTrackingConstraints;
      self->_sizeTrackingConstraints = 0;
    }

    traitCollection = [(_UIRemoteViewControllerLegacyImpl *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (*MEMORY[0x1E695F060] == self->_serviceMainScreenSize.width && *(MEMORY[0x1E695F060] + 8) == self->_serviceMainScreenSize.height && !userInterfaceIdiom)
    {
      self->_serviceMainScreenSize = xmmword_18A683280;
    }

    if (windowCopy)
    {
      screen = [windowCopy screen];
      [screen _referenceBounds];
      v19 = v18;
      v21 = v20;
      width = self->_serviceMainScreenSize.width;
      height = self->_serviceMainScreenSize.height;

      v24 = height == v21 && width == v19;
      if (v24 || userInterfaceIdiom > 1)
      {
        if (sizeTrackingConstraints)
        {
          [(UIView *)self->_sizeTrackingView setTranslatesAutoresizingMaskIntoConstraints:self->_sizeTrackingViewShouldTranslateAutoResizeMaskIntoConstraints];
          [(UIView *)self->_sizeTrackingView setAutoresizingMask:self->_sizeTrackingViewAutoResizeMask];
          [(UIView *)self->_sizeTrackingView setNeedsLayout];
          superview3 = [(UIView *)self->_sizeTrackingView superview];
          [superview3 layoutBelowIfNeeded];
        }
      }

      else
      {
        v25 = 352;
        if ((orientation - 1) >= 2)
        {
          v26 = 352;
        }

        else
        {
          v26 = 344;
        }

        v27 = *(&self->super.isa + v26);
        if ((orientation - 1) >= 2)
        {
          v25 = 344;
        }

        v28 = *(&self->super.isa + v25);
        array = [MEMORY[0x1E695DF70] array];
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
        [array addObjectsFromArray:v35];

        v36 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|-(0@990)-[_sizeTrackingView(<=serviceSceneMaxSizeV@1000)]-(0@990)-|" options:0 metrics:v34 views:v31];
        [array addObjectsFromArray:v36];

        v37 = MEMORY[0x1E69977A0];
        v38 = self->_sizeTrackingView;
        superview4 = [(UIView *)v38 superview];
        v40 = [v37 constraintWithItem:v38 attribute:9 relatedBy:0 toItem:superview4 attribute:9 multiplier:1.0 constant:0.0];
        [array addObject:v40];

        v41 = MEMORY[0x1E69977A0];
        v42 = self->_sizeTrackingView;
        superview5 = [(UIView *)v42 superview];
        v44 = [v41 constraintWithItem:v42 attribute:10 relatedBy:0 toItem:superview5 attribute:10 multiplier:1.0 constant:0.0];
        [array addObject:v44];

        v45 = [array copy];
        v46 = self->_sizeTrackingConstraints;
        self->_sizeTrackingConstraints = v45;

        if (!sizeTrackingConstraints)
        {
          self->_sizeTrackingViewAutoResizeMask = [(UIView *)self->_sizeTrackingView autoresizingMask];
          self->_sizeTrackingViewShouldTranslateAutoResizeMaskIntoConstraints = [(UIView *)self->_sizeTrackingView translatesAutoresizingMaskIntoConstraints];
        }

        [(UIView *)self->_sizeTrackingView setAutoresizingMask:0];
        [(UIView *)self->_sizeTrackingView setTranslatesAutoresizingMaskIntoConstraints:0];
        superview6 = [(UIView *)self->_sizeTrackingView superview];
        [superview6 addConstraints:self->_sizeTrackingConstraints];

        superview7 = [(UIView *)self->_sizeTrackingView superview];
        [superview7 setNeedsLayout];

        superview8 = [(UIView *)self->_sizeTrackingView superview];
        [superview8 layoutBelowIfNeeded];
      }
    }
  }

LABEL_30:
}

- (void)__setServiceMaxFrameSize:(CGSize)size
{
  self->_serviceMainScreenSize = size;
  window = [(UIView *)self->_sizeTrackingView window];
  window2 = [(UIView *)self->_sizeTrackingView window];
  -[_UIRemoteViewControllerLegacyImpl _configureSizeViewConstraintsForWindow:interfaceOrientation:](self, "_configureSizeViewConstraintsForWindow:interfaceOrientation:", window, [window2 interfaceOrientation]);
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  windowScene = [windowCopy windowScene];
  _eventDeferringManager = [windowScene _eventDeferringManager];
  internalBehavior = [(_UIEventDeferringManager *)_eventDeferringManager internalBehavior];

  if ([internalBehavior shouldEvaluateEventDeferringForAnyRemoteViewControllerWindowMovement])
  {
    screen = [windowCopy screen];
    [(_UIRemoteViewControllerLegacyImpl *)self _notifyServiceOfScreenUpdateConsideringDeferringOverridesIfNeeded:screen];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    if ([internalBehavior shouldConsiderKeyWindowChangesForRemoteViewControllerAutomaticEventDeferring])
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
      [defaultCenter removeObserver:self name:v12 object:0];
      [defaultCenter removeObserver:self name:v15 object:0];
      if (windowCopy)
      {
        [defaultCenter addObserver:self selector:sel__uirvc_windowBecameKey_ name:v12 object:windowCopy];
        [defaultCenter addObserver:self selector:sel__uirvc_windowResignedKey_ name:v15 object:windowCopy];
      }
    }
  }

  window = [(UIView *)self->_sizeTrackingView window];
  window2 = [(UIView *)self->_sizeTrackingView window];
  -[_UIRemoteViewControllerLegacyImpl _configureSizeViewConstraintsForWindow:interfaceOrientation:](self, "_configureSizeViewConstraintsForWindow:interfaceOrientation:", window, [window2 interfaceOrientation]);

  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  presentingViewController = [_owningRemoteViewController presentingViewController];
  _presentationControllerClassName = [presentingViewController _presentationControllerClassName];
  [viewControllerOperatorProxy __hostDidSetPresentationControllerClassName:_presentationControllerClassName];

  v22 = self->_viewControllerOperatorProxy;
  windowScene2 = [windowCopy windowScene];
  [v22 __setHostCanDynamicallySpecifySupportedInterfaceOrientations:{objc_msgSend(windowScene2, "_canDynamicallySpecifySupportedInterfaceOrientations")}];

  [(_UIRemoteViewControllerLegacyImpl *)self _updateAncestorZoomTransitionControllerWithWindow:windowCopy];
}

- (void)_updateAncestorZoomTransitionControllerWithWindow:(id)window
{
  if (window)
  {
    _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    if (_owningRemoteViewController)
    {
      do
      {
        preferredTransition = [_owningRemoteViewController preferredTransition];

        if (preferredTransition)
        {
          break;
        }

        parentViewController = [_owningRemoteViewController parentViewController];

        _owningRemoteViewController = parentViewController;
      }

      while (parentViewController);
    }

    _zoomTransitionController = [_owningRemoteViewController _zoomTransitionController];
    v7 = objc_opt_new();
    [_zoomTransitionController setDismissInteraction:v7];

    if (_zoomTransitionController)
    {
      [self->_viewControllerOperatorProxy __installDismissInteractionForZoomTransition];
    }

    v8 = _zoomTransitionController;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  [(_UIRemoteViewControllerLegacyImpl *)self set_ancestorZoomTransitionController:v8];
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_wantsKeyboardEnvironmentEventDeferring && controllerCopy && !self->_keyboardEnvironmentDeferringToken)
  {
    v6 = controllerCopy;
    [(_UIRemoteViewControllerLegacyImpl *)self _setWantsKeyboardEnvironmentEventDeferring:1];
    controllerCopy = v6;
  }

  serviceResolvedPhysicalButtonConfigurations = self->_serviceResolvedPhysicalButtonConfigurations;
  if (serviceResolvedPhysicalButtonConfigurations && controllerCopy && !self->_dynamicButtonDeferringToken)
  {
    v7 = controllerCopy;
    [(_UIRemoteViewControllerLegacyImpl *)self _updateDynamicButtonEventDeferringIfNeededWithOldResolvedConfigurations:serviceResolvedPhysicalButtonConfigurations newResolvedConfigurations:?];
    controllerCopy = v7;
  }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  serviceViewControllerSupportedInterfaceOrientations = self->_serviceViewControllerSupportedInterfaceOrientations;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
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
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  LOBYTE(isUnderlappingStatusBar) = isUnderlappingStatusBar != [_owningRemoteViewController _viewControllerUnderlapsStatusBar];

  return isUnderlappingStatusBar;
}

- (void)_updateUnderflowProperties
{
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  self->_isUnderlappingStatusBar = [_owningRemoteViewController _viewControllerUnderlapsStatusBar];

  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  isUnderlappingStatusBar = self->_isUnderlappingStatusBar;

  [viewControllerOperatorProxy __setHostViewUnderlapsStatusBar:isUnderlappingStatusBar];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  [(_UIRemoteViewControllerLegacyImpl *)self _setIsUpdatingSize:1];
  [(_UIRemoteViewControllerLegacyImpl *)self _setIsUpdatingSizeInHost:1];
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  IsIdentity = CGAffineTransformIsIdentity(&v14);
  window = [(_UIRemoteViewControllerLegacyImpl *)self window];
  window2 = window;
  if (IsIdentity)
  {
    interfaceOrientation = [window interfaceOrientation];
    _toWindowOrientation = interfaceOrientation;
  }

  else
  {
    _toWindowOrientation = [window _toWindowOrientation];

    window2 = [(_UIRemoteViewControllerLegacyImpl *)self window];
    interfaceOrientation = [window2 _fromWindowOrientation];
  }

  window3 = [(UIView *)self->_sizeTrackingView window];
  [(_UIRemoteViewControllerLegacyImpl *)self _configureSizeViewConstraintsForWindow:window3 interfaceOrientation:_toWindowOrientation];

  [(_UIRemoteViewControllerLegacyImpl *)self _beginDeferringProxySheetConfigurationUpdates];
  v12[4] = self;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88___UIRemoteViewControllerLegacyImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v13[3] = &unk_1E7103BF8;
  v13[5] = _toWindowOrientation;
  v13[6] = interfaceOrientation;
  v13[4] = self;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88___UIRemoteViewControllerLegacyImpl_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_4;
  v12[3] = &unk_1E70F3B98;
  [coordinatorCopy animateAlongsideTransition:v13 completion:v12];
}

- (void)_willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self
{
  if (self->_fullScreenTextEffectsSnapshotView)
  {
    self->_snapshotTextEffectsAfterRotation = 1;
    [(_UIRemoteViewControllerLegacyImpl *)self _restoreTextEffectsRemoteView:orientation];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __124___UIRemoteViewControllerLegacyImpl__willAnimateRotationToInterfaceOrientation_duration_forwardToChildControllers_skipSelf___block_invoke;
  v11[3] = &unk_1E7101C38;
  v11[4] = self;
  v11[5] = orientation;
  *&v11[6] = duration;
  selfCopy = self;
  [(_UIRemoteViewControllerLegacyImpl *)self synchronizeAnimationsInActions:v11, controllers];
  sizeTrackingView = self->_sizeTrackingView;
  [(UIView *)sizeTrackingView frame];
  [(_UISizeTrackingView *)sizeTrackingView _updateTextEffectsGeometries:?];
}

- (void)_willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __115___UIRemoteViewControllerLegacyImpl__willRotateToInterfaceOrientation_duration_forwardToChildControllers_skipSelf___block_invoke;
  v6[3] = &unk_1E7101C38;
  v6[4] = self;
  v6[5] = orientation;
  *&v6[6] = duration;
  selfCopy = self;
  [(_UIRemoteViewControllerLegacyImpl *)self synchronizeAnimationsInActions:v6, controllers];
}

- (void)_didRotateFromInterfaceOrientation:(int64_t)orientation forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __107___UIRemoteViewControllerLegacyImpl__didRotateFromInterfaceOrientation_forwardToChildControllers_skipSelf___block_invoke;
  v6[3] = &unk_1E7101F90;
  v6[4] = self;
  v6[5] = orientation;
  selfCopy = self;
  [(_UIRemoteViewControllerLegacyImpl *)self synchronizeAnimationsInActions:v6, controllers];
  if (self->_snapshotTextEffectsAfterRotation)
  {
    [(_UIRemoteViewControllerLegacyImpl *)self _snapshotAndRemoveTextEffectsRemoteView];
    self->_snapshotTextEffectsAfterRotation = 0;
  }
}

- (void)_didReceiveProductivityGestureAction:(id)action
{
  textEffectsOperatorProxy = self->_textEffectsOperatorProxy;
  actionCopy = action;
  gestureDirection = [actionCopy gestureDirection];
  authenticationMessage = [actionCopy authenticationMessage];

  [textEffectsOperatorProxy __hostDidReceiveGestureDirection:gestureDirection authenticationMessage:authenticationMessage];
}

- (void)__viewServiceDidUpdatePreferredStatusBarStyle:(int64_t)style preferredStatusBarVisibility:(int)visibility updateAnimation:(int64_t)animation currentAnimationSettings:(id)settings
{
  settingsCopy = settings;
  v11 = settingsCopy;
  self->_preferredStatusBarStyle = style;
  self->_preferredStatusBarVisibility = visibility;
  self->_preferredStatusBarUpdateAnimation = animation;
  if (settingsCopy)
  {
    [settingsCopy duration];
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
    _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    [_owningRemoteViewController setNeedsStatusBarAppearanceUpdate];
  }
}

- (void)__viewServiceDidUpdatePreferredWhitePointAdaptationStyle:(int64_t)style animationSettings:(id)settings
{
  settingsCopy = settings;
  self->_preferredAdaptivityStyle = style;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __112___UIRemoteViewControllerLegacyImpl___viewServiceDidUpdatePreferredWhitePointAdaptationStyle_animationSettings___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (settingsCopy)
  {
    [settingsCopy duration];
    v10 = v9;
    [settingsCopy delay];
    v12 = v11;
    timingFunction = [settingsCopy timingFunction];
    if (timingFunction)
    {
      v14 = objc_alloc_init(_UISceneSettingsMediaTimingAnimationFactory);
      [(_UISceneSettingsMediaTimingAnimationFactory *)v14 set_timingFunctionForAnimation:timingFunction];
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

- (void)__viewServiceDidUpdateClientToHostAction:(id)action
{
  actionCopy = action;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78___UIRemoteViewControllerLegacyImpl___viewServiceDidUpdateClientToHostAction___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = actionCopy;
  v6 = actionCopy;
  [_systemAnimationFenceExemptQueue performAsync:v7];
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
    serviceBundleIdentifier = [(_UIRemoteViewControllerLegacyImpl *)self serviceBundleIdentifier];

    if (serviceBundleIdentifier)
    {
      v7 = *(__UILogGetCategoryCachedImpl("Presentation", &__viewServiceDidDropTouchEventForInsecurePresentation___s_category) + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        serviceBundleIdentifier2 = [(_UIRemoteViewControllerLegacyImpl *)self serviceBundleIdentifier];
        v10 = 138543362;
        v11 = serviceBundleIdentifier2;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "User interaction with %{public}@ was ignored because it is currently presented in an unsupported configuration. Ensure this view's appearance has not been modified.", &v10, 0xCu);
      }
    }
  }
}

- (void)__viewServiceDidUpdatePreferredScreenEdgesDeferringSystemGestures:(unint64_t)gestures
{
  self->_preferredScreenEdgesDeferringSystemGestures = gestures;
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  [_owningRemoteViewController setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
}

- (void)__viewServiceDidUpdatePrefersHomeIndicatorAutoHidden:(BOOL)hidden
{
  self->_prefersHomeIndicatorAutoHidden = hidden;
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  [_owningRemoteViewController setNeedsUpdateOfHomeIndicatorAutoHidden];
}

- (void)__viewServiceDidUpdatePreferredUserInterfaceStyle:(int64_t)style
{
  self->_preferredUserInterfaceStyle = style;
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  [_owningRemoteViewController _setNeedsUserInterfaceAppearanceUpdate];
}

- (void)__viewServiceDidUpdatePrefersPointerLocked:(BOOL)locked
{
  self->_prefersPointerLocked = locked;
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  [_owningRemoteViewController setNeedsUpdateOfPrefersPointerLocked];
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

- (void)__viewServiceDidUpdateMultitaskingDragExclusionRects:(id)rects
{
  v37 = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  sizeTrackingView = self->_sizeTrackingView;
  if (sizeTrackingView)
  {
    [(UIView *)sizeTrackingView frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    array = [MEMORY[0x1E695DF70] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = rectsCopy;
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
            [array addObject:v28];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v17);
    }

    v29 = [array copy];
    multitaskingDragExclusionRects = self->_multitaskingDragExclusionRects;
    self->_multitaskingDragExclusionRects = v29;

    _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    [_owningRemoteViewController _setNeedsUpdateOfMultitaskingDragExclusionRects];
  }
}

- (void)_traitCollectionDidChange:(id)change
{
  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  changeCopy = change;
  traitCollection = [(_UIRemoteViewControllerLegacyImpl *)self traitCollection];
  v7 = [(_UIRemoteViewControllerLegacyImpl *)self _traitCollectionForServiceFromTraitCollection:traitCollection];
  [viewControllerOperatorProxy __setHostTraitCollection:v7 deferIfAnimated:_shouldDeferSendingTraitCollectionChangeToService(self)];

  traitCollection2 = [(_UIRemoteViewControllerLegacyImpl *)self traitCollection];
  LODWORD(traitCollection) = [traitCollection2 hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

  if (traitCollection)
  {

    [(_UIRemoteViewControllerLegacyImpl *)self _updateTintColor];
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  userInterfaceStyle = [collectionCopy userInterfaceStyle];
  traitCollection = [(_UIRemoteViewControllerLegacyImpl *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == userInterfaceStyle2)
  {
    v11 = 0;
  }

  else
  {
    traitCollection2 = [(_UIRemoteViewControllerLegacyImpl *)self traitCollection];
    v13 = [traitCollection2 _traitCollectionByReplacingNSIntegerValue:objc_msgSend(collectionCopy forTraitToken:{"userInterfaceStyle"), 0x1EFE323B0}];

    v11 = [v13 isEqual:collectionCopy];
  }

  v14 = [(_UIRemoteViewControllerLegacyImpl *)self _traitCollectionForServiceFromTraitCollection:collectionCopy];

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
  [coordinatorCopy animateAlongsideTransition:v17 completion:v16];
}

- (void)__viewServiceAddSceneForwardingLayersForOwners:(id)owners
{
  v23 = *MEMORY[0x1E69E9840];
  ownersCopy = owners;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [ownersCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(ownersCopy);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        view = [(_UIRemoteViewControllerLegacyImpl *)self view];
        window = [view window];
        [window windowLevel];
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
      v6 = [ownersCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [(_UISceneKeyboardProxyLayerForwardingPresentationViewService *)self->_keyboardProxyPresentationEnvironment keyboardLayersDidChange];
}

- (void)__viewServiceRemoveSceneForwardingLayersForOwners:(id)owners
{
  v16 = a2;
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = owners;
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
                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler handleFailureInMethod:v16 object:self file:@"_UIRemoteViewControllerLegacyImpl.m" lineNumber:4482 description:@"only keyboard proxy layers support forwarding via UIRVC"];
              }

              v11 = v10;
              keyboardOwner = [v11 keyboardOwner];
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

- (void)__setSupportedInterfaceOrientations:(id)orientations
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  orientationsCopy = orientations;
  v6 = [orientationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(orientationsCopy);
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
      v7 = [orientationsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73___UIRemoteViewControllerLegacyImpl___setSupportedInterfaceOrientations___block_invoke;
  v13[3] = &unk_1E70F35B8;
  v13[4] = self;
  v14 = orientationsCopy;
  [_systemAnimationFenceExemptQueue performAsync:v13];

LABEL_13:
}

- (void)__setViewServiceIsDisplayingPopover:(BOOL)popover
{
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73___UIRemoteViewControllerLegacyImpl___setViewServiceIsDisplayingPopover___block_invoke;
  v6[3] = &unk_1E70F35E0;
  v6[4] = self;
  popoverCopy = popover;
  [_systemAnimationFenceExemptQueue performAsync:v6];
}

- (void)_serviceWantsKeyboardEventsWithPromotedFirstResponder:(BOOL)responder completionHandler:(id)handler
{
  handlerCopy = handler;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109___UIRemoteViewControllerLegacyImpl__serviceWantsKeyboardEventsWithPromotedFirstResponder_completionHandler___block_invoke;
  v9[3] = &unk_1E70FD0C8;
  v9[4] = self;
  v10 = handlerCopy;
  responderCopy = responder;
  v8 = handlerCopy;
  [_systemAnimationFenceExemptQueue performAsync:v9];
}

- (BOOL)_shouldUpdateRemoteTextEffectsWindow
{
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
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

- (void)__viewServiceDidChangeKeyWindow:(BOOL)window
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69___UIRemoteViewControllerLegacyImpl___viewServiceDidChangeKeyWindow___block_invoke;
  v3[3] = &unk_1E70F35E0;
  v3[4] = self;
  windowCopy = window;
  [(_UIRemoteViewControllerLegacyImpl *)self _synchronizeAnimationsInActionsIfNecessary:v3];
}

- (void)__viewServicePopoverDidChangeContentSize:(CGSize)size animated:(BOOL)animated fence:(id)fence withReplyHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  v11 = [fence copy];
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __110___UIRemoteViewControllerLegacyImpl___viewServicePopoverDidChangeContentSize_animated_fence_withReplyHandler___block_invoke;
  v15[3] = &unk_1E70F8FA8;
  v15[4] = self;
  v16 = v11;
  v18 = width;
  v19 = height;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = v11;
  [_systemAnimationFenceExemptQueue performAsync:v15];
}

- (void)__viewServicePreferredContentSizeDidChange:(CGSize)change fence:(id)fence
{
  height = change.height;
  width = change.width;
  v7 = [fence copy];
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86___UIRemoteViewControllerLegacyImpl___viewServicePreferredContentSizeDidChange_fence___block_invoke;
  v10[3] = &unk_1E70F9780;
  v10[4] = self;
  v11 = v7;
  v12 = width;
  v13 = height;
  v9 = v7;
  [_systemAnimationFenceExemptQueue performAsync:v10];
}

- (void)__viewServiceInstrinsicContentSizeDidChange:(CGSize)change fence:(id)fence
{
  height = change.height;
  width = change.width;
  v22 = *MEMORY[0x1E69E9840];
  fenceCopy = fence;
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
        selfCopy2 = self;
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
      selfCopy2 = self;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "%s unexpectedly received before _sizeTrackingView was created. %@", buf, 0x16u);
    }
  }

  v10 = [fenceCopy copy];

  if (self->_sizeTrackingView)
  {
    _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __87___UIRemoteViewControllerLegacyImpl___viewServiceInstrinsicContentSizeDidChange_fence___block_invoke;
    v14[3] = &unk_1E70F9780;
    v14[4] = self;
    v15 = v10;
    v16 = width;
    v17 = height;
    [_systemAnimationFenceExemptQueue performAsync:v14];
  }
}

- (id)_sheetPresentationController
{
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  v3 = [_owningRemoteViewController _existingPresentationControllerImmediate:0 effective:1];

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

- (void)_setSheetConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = self->__sheetConfiguration;
  v7 = configurationCopy;
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
    objc_storeStrong(&self->__sheetConfiguration, configuration);
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

- (void)_updateProxySheetConfigurationIfNeccessaryGivenOldConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = self->__sheetConfiguration;
  v6 = configurationCopy;
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

- (void)__viewServiceSheetPresentationClientConfigurationDidChange:(id)change attributes:(id)attributes
{
  attributesCopy = attributes;
  changeCopy = change;
  _sheetPresentationController = [(_UIRemoteViewControllerLegacyImpl *)self _sheetPresentationController];
  [_sheetPresentationController _setRemoteClientConfiguration:changeCopy];

  if (attributesCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __107___UIRemoteViewControllerLegacyImpl___viewServiceSheetPresentationClientConfigurationDidChange_attributes___block_invoke;
    v9[3] = &unk_1E70F3590;
    v10 = _sheetPresentationController;
    [UIView _animateWithAttributes:attributesCopy animations:v9 completion:0];
  }
}

- (void)__viewServiceSheetGrabberDidTriggerPrimaryAction
{
  _sheetPresentationController = [(_UIRemoteViewControllerLegacyImpl *)self _sheetPresentationController];
  [_sheetPresentationController _remoteSheetGrabberDidTriggerPrimaryAction];
}

- (void)__viewServiceSheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient dismissible:(BOOL)dismissible interruptedOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  dismissibleCopy = dismissible;
  _sheetPresentationController = [(_UIRemoteViewControllerLegacyImpl *)self _sheetPresentationController];
  [_sheetPresentationController _remoteSheetInteractionDraggingDidBeginWithRubberBandCoefficient:dismissibleCopy dismissible:coefficient interruptedOffset:{x, y}];
}

- (void)__viewServiceSheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change dismissible:(BOOL)dismissible
{
  dismissibleCopy = dismissible;
  changeCopy = change;
  y = velocity.y;
  x = velocity.x;
  v10 = translation.y;
  v11 = translation.x;
  _sheetPresentationController = [(_UIRemoteViewControllerLegacyImpl *)self _sheetPresentationController];
  [_sheetPresentationController _remoteSheetInteractionDraggingDidChangeWithTranslation:changeCopy velocity:dismissibleCopy animateChange:v11 dismissible:{v10, x, y}];
}

- (void)__viewServiceSheetInteractionDraggingDidEnd
{
  _sheetPresentationController = [(_UIRemoteViewControllerLegacyImpl *)self _sheetPresentationController];
  [_sheetPresentationController _remoteSheetInteractionDraggingDidEnd];
}

- (void)__viewServiceDismissInteractionDidBeginAtLocation:(CGPoint)location withVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = location.y;
  v7 = location.x;
  _ancestorZoomTransitionController = [(_UIRemoteViewControllerLegacyImpl *)self _ancestorZoomTransitionController];
  if (_ancestorZoomTransitionController)
  {
    v10 = _ancestorZoomTransitionController;
    dismissInteraction = [_ancestorZoomTransitionController dismissInteraction];
    [dismissInteraction beginAtLocation:v7 withVelocity:{v6, x, y}];

    _ancestorZoomTransitionController = v10;
  }
}

- (void)__viewServiceDismissInteractionDidIssueUpdate:(id)update
{
  updateCopy = update;
  _ancestorZoomTransitionController = [(_UIRemoteViewControllerLegacyImpl *)self _ancestorZoomTransitionController];
  v5 = _ancestorZoomTransitionController;
  if (_ancestorZoomTransitionController)
  {
    dismissInteraction = [_ancestorZoomTransitionController dismissInteraction];
    [dismissInteraction issueUpdate:updateCopy];
  }
}

- (void)__viewServiceDismissInteractionDidDismissWithVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  _ancestorZoomTransitionController = [(_UIRemoteViewControllerLegacyImpl *)self _ancestorZoomTransitionController];
  if (_ancestorZoomTransitionController)
  {
    v7 = _ancestorZoomTransitionController;
    dismissInteraction = [_ancestorZoomTransitionController dismissInteraction];
    [dismissInteraction dismissWithVelocity:{x, y}];

    _ancestorZoomTransitionController = v7;
  }
}

- (void)__viewServiceDismissInteractionDidCancelWithVelocity:(CGPoint)velocity originalPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v6 = velocity.y;
  v7 = velocity.x;
  _ancestorZoomTransitionController = [(_UIRemoteViewControllerLegacyImpl *)self _ancestorZoomTransitionController];
  if (_ancestorZoomTransitionController)
  {
    v10 = _ancestorZoomTransitionController;
    dismissInteraction = [_ancestorZoomTransitionController dismissInteraction];
    [dismissInteraction cancelWithVelocity:v7 originalPosition:{v6, x, y}];

    _ancestorZoomTransitionController = v10;
  }
}

- (void)_physicalButtonInteraction:(id)interaction handleAction:(id)action withActiveActions:(id)actions
{
  v8 = MEMORY[0x1E696AAA8];
  actionCopy = action;
  interactionCopy = interaction;
  currentHandler = [v8 currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIRemoteViewControllerLegacyImpl.m" lineNumber:5082 description:{@"Unexpected request to handle a non-proxy action: self: %@; interaction: %@; action: %@", self, interactionCopy, actionCopy}];
}

- (void)_physicalButtonProxyInteraction:(id)interaction didReceiveBSAction:(id)action
{
  v23 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  actionCopy = action;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &_physicalButtonProxyInteraction_didReceiveBSAction____s_category_0);
  if (*CategoryCachedImpl)
  {
    v9 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v10 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        selfCopy = [v10 stringWithFormat:@"<%@: %p>", v13, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      v15 = selfCopy;
      succinctDescription = [interactionCopy succinctDescription];
      *buf = 138412802;
      v18 = selfCopy;
      v19 = 2112;
      v20 = succinctDescription;
      v21 = 2112;
      v22 = actionCopy;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Received proxy physicalButtonBSAction from interaction: self: %@; proxyInteraction: %@; physicalButtonBSAction: %@", buf, 0x20u);
    }
  }

  [self->_viewControllerOperatorProxy __hostDidReceivePhysicalButtonBSAction:actionCopy];
}

- (void)__viewServiceDidUpdateResolvedPhysicalButtonConfigurations:(id)configurations
{
  v40 = *MEMORY[0x1E69E9840];
  configurationsCopy = configurations;
  v6 = self->_serviceResolvedPhysicalButtonConfigurations;
  v7 = configurationsCopy;
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
    selfCopy = self;
    v13 = v10;
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    selfCopy = [v11 stringWithFormat:@"<%@: %p>", v15, selfCopy];

    v17 = selfCopy;
    succinctDescription = [(_UIPhysicalButtonConfigurationSet *)v8 succinctDescription];
    *buf = 138543874;
    v33 = selfCopy;
    v34 = 1026;
    v35 = v9 ^ 1;
    v36 = 2114;
    *v37 = succinctDescription;
    _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "Received resolved configurations update from service: self: %{public}@; didChange: %{public}d; configurations: %{public}@", buf, 0x1Cu);
  }

  if ((v9 & 1) == 0)
  {
    v19 = self->_serviceResolvedPhysicalButtonConfigurations;
    objc_storeStrong(&self->_serviceResolvedPhysicalButtonConfigurations, configurations);
    v20 = _UIPBIProxyOwnerActionsForState(self->_proxyPhysicalButtonInteraction, v19, self->_serviceResolvedPhysicalButtonConfigurations);
    v21 = *(__UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &qword_1ED4971A8) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = MEMORY[0x1E696AEC0];
      selfCopy2 = self;
      v24 = v21;
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      selfCopy2 = [v22 stringWithFormat:@"<%@: %p>", v26, selfCopy2];

      *buf = 138544386;
      v33 = selfCopy2;
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

    _nsSetRepresentation = [(_UIPhysicalButtonConfigurationSet *)&self->_serviceResolvedPhysicalButtonConfigurations->super.isa _nsSetRepresentation];
    if (v20)
    {
      v29 = [[_UIPhysicalButtonProxyInteraction alloc] initWithConfigurations:_nsSetRepresentation proxyDelegate:self];
      proxyPhysicalButtonInteraction = self->_proxyPhysicalButtonInteraction;
      self->_proxyPhysicalButtonInteraction = v29;

      _existingView = [(_UIRemoteViewControllerLegacyImpl *)self _existingView];
      [_existingView addInteraction:self->_proxyPhysicalButtonInteraction];
    }

    else if ((v20 & 0x100) != 0)
    {
      [(_UIPhysicalButtonInteraction *)self->_proxyPhysicalButtonInteraction _setConfigurations:_nsSetRepresentation];
    }

    if ((v20 & 0x10000) != 0)
    {
      [(_UIPhysicalButtonInteraction *)self->_proxyPhysicalButtonInteraction _setEnabled:1];
    }

    [(_UIRemoteViewControllerLegacyImpl *)self _updateDynamicButtonEventDeferringIfNeededWithOldResolvedConfigurations:v19 newResolvedConfigurations:self->_serviceResolvedPhysicalButtonConfigurations];
  }
}

- (void)_setUpHomeAffordanceObserverInteractionForViewIfNeeded:(id)needed
{
  neededCopy = needed;
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

    [neededCopy addInteraction:self->_proxyHomeAffordanceObserverInteraction];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (BOOL)shouldPropagateAppearanceCustomizations
{
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
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
    _normalInheritedTintColor = [(UIView *)self->_serviceViewControllerRemoteView _normalInheritedTintColor];
    [self->_viewControllerOperatorProxy __setHostTintColor:_normalInheritedTintColor tintAdjustmentMode:{-[UIView tintAdjustmentMode](self->_serviceViewControllerRemoteView, "tintAdjustmentMode")}];
  }
}

- (void)_initializeAccessibilityPortInformation
{
  if (objc_opt_respondsToSelector())
  {
    v3 = *MEMORY[0x1E69E9A60];
    _accessibilityMachPort = [UIApp _accessibilityMachPort];
    mach_port_insert_right(v3, _accessibilityMachPort, [UIApp _accessibilityMachPort], 0x14u);
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

- (void)__showServiceForType:(int64_t)type withContext:(id)context replyHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83___UIRemoteViewControllerLegacyImpl___showServiceForType_withContext_replyHandler___block_invoke;
  v13[3] = &unk_1E7118860;
  v14 = contextCopy;
  selfCopy = self;
  v16 = handlerCopy;
  typeCopy = type;
  v11 = handlerCopy;
  v12 = contextCopy;
  [_systemAnimationFenceExemptQueue performAsync:v13];
}

- (void)__showServiceForText:(id)text selectedTextRangeValue:(id)value type:(int64_t)type fromRectValue:(id)rectValue replyHandler:(id)handler
{
  textCopy = text;
  valueCopy = value;
  rectValueCopy = rectValue;
  handlerCopy = handler;
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __113___UIRemoteViewControllerLegacyImpl___showServiceForText_selectedTextRangeValue_type_fromRectValue_replyHandler___block_invoke;
  v21[3] = &unk_1E71168D0;
  v22 = rectValueCopy;
  v23 = valueCopy;
  v24 = textCopy;
  selfCopy = self;
  v26 = handlerCopy;
  typeCopy = type;
  v17 = handlerCopy;
  v18 = textCopy;
  v19 = valueCopy;
  v20 = rectValueCopy;
  [_systemAnimationFenceExemptQueue performAsync:v21];
}

- (void)__dismissTextServiceSessionAnimated:(BOOL)animated
{
  _systemAnimationFenceExemptQueue = [UIApp _systemAnimationFenceExemptQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73___UIRemoteViewControllerLegacyImpl___dismissTextServiceSessionAnimated___block_invoke;
  v6[3] = &unk_1E70F35E0;
  v6[4] = self;
  animatedCopy = animated;
  [_systemAnimationFenceExemptQueue performAsync:v6];
}

- (void)_endNoPresentingViewControllerAlertController:(id)controller
{
  controllerCopy = controller;
  [(UIAlertController *)controllerCopy _endNoPresentingViewControllerPresentation];
  proxiedEditAlertController = self->_proxiedEditAlertController;

  if (proxiedEditAlertController == controllerCopy)
  {
    self->_proxiedEditAlertController = 0;
    self->_proxiedEditAlertToken = 0;
  }
}

- (void)__showEditAlertViewWithToken:(int64_t)token canUndo:(BOOL)undo canRedo:(BOOL)redo
{
  redoCopy = redo;
  undoCopy = undo;
  _window = [(_UIRemoteViewControllerLegacyImpl *)self _window];
  v10 = _window;
  if (_window && ![_window _isHostedInAnotherProcess])
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
    v22 = undoCopy && redoCopy;
    if (!undoCopy || !redoCopy)
    {
      [(UIAlertController *)v20 addAction:v21];
    }

    if (undoCopy || redoCopy)
    {
      if (undoCopy)
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

      if (redoCopy)
      {
        v30 = _UIKitBundle();
        v31 = [v30 localizedStringForKey:@"REDO_BUTTON_TITLE_IN_UNDO_ALERT" value:@"Redo" table:@"Localizable"];

        v41 = MEMORY[0x1E69E9820];
        v42 = 3221225472;
        v43 = __82___UIRemoteViewControllerLegacyImpl___showEditAlertViewWithToken_canUndo_canRedo___block_invoke_5;
        v44 = &unk_1E711D8D0;
        selfCopy = self;
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

    [(UIAlertController *)v20 setTitle:v23, v40, v41, v42, v43, v44, selfCopy];

    if (v22)
    {
      [(UIAlertController *)v20 addAction:v21];
    }

    [(UINotificationFeedbackGenerator *)self->_motionNotificationGenerator _privateNotificationOccurred:1006];
    [(UIFeedbackGenerator *)self->_motionNotificationGenerator deactivate];
    proxiedEditAlertController = self->_proxiedEditAlertController;
    self->_proxiedEditAlertController = v20;
    self->_proxiedEditAlertToken = token;
    v36 = v20;

    v37 = self->_proxiedEditAlertController;
    _window2 = [(_UIRemoteViewControllerLegacyImpl *)self _window];
    windowScene = [_window2 windowScene];
    [(UIAlertController *)v37 _beginNoPresentingViewControllerPresentation:windowScene];
  }

  else
  {
    [self->_viewControllerOperatorProxy __cancelAlertActionWithToken:self->_proxiedEditAlertToken];
  }
}

- (void)__setInterdictServiceViewTouches:(BOOL)touches
{
  touchesCopy = touches;
  [(UIView *)self->_viewServiceTouchInterdictionView removeFromSuperview];
  if (touchesCopy)
  {
    v5 = objc_alloc_init(UIView);
    viewServiceTouchInterdictionView = self->_viewServiceTouchInterdictionView;
    self->_viewServiceTouchInterdictionView = v5;

    layer = [(UIView *)self->_viewServiceTouchInterdictionView layer];
    [layer setHitTestsAsOpaque:1];

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
  superview = [(UIView *)self->_sizeTrackingView superview];
  if (superview && (-[_UIRemoteViewControllerLegacyImpl _window](self, "_window"), v3 = objc_claimAutoreleasedReturnValue(), [v3 screen], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "_isMainLikeScreen"), v4, v3, v5))
  {
    [superview insertSubview:self->_viewServiceTouchInterdictionView aboveSubview:self->_sizeTrackingView];
    viewServiceTouchInterdictionView = self->_viewServiceTouchInterdictionView;
    [(UIView *)self->_sizeTrackingView frame];
    [(UIView *)viewServiceTouchInterdictionView setFrame:?];
  }

  else
  {
    [(UIView *)self->_viewServiceTouchInterdictionView removeFromSuperview];
  }
}

- (void)_noteWindowState:(BOOL)state
{
  stateCopy = state;
  [(UIView *)self->_fullScreenTextEffectsSnapshotView setHidden:!state];
  [(UIView *)self->_fullScreenTextEffectsRemoteView setHidden:!stateCopy];
  [(UIView *)self->_textEffectsAboveStatusBarRemoteView setHidden:!stateCopy];
  remoteKeyboardRemoteView = self->_remoteKeyboardRemoteView;

  [(UIView *)remoteKeyboardRemoteView setHidden:!stateCopy];
}

- (void)setServiceViewShouldShareTouchesWithHost:(BOOL)host
{
  if (self->_serviceViewShouldShareTouchesWithHost != host)
  {
    self->_serviceViewShouldShareTouchesWithHost = host;
    if (host)
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
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  if ([_owningRemoteViewController serviceViewShouldShareTouchesWithHost] && (serviceViewControllerRemoteView = self->_serviceViewControllerRemoteView) != 0)
  {
    _window = [(UIView *)serviceViewControllerRemoteView _window];

    if (_window)
    {
      hostedWindowHostingHandle = [(_UIRemoteView *)self->_serviceViewControllerRemoteView hostedWindowHostingHandle];
      contextID = [hostedWindowHostingHandle contextID];

      _window2 = [(UIView *)self->_serviceViewControllerRemoteView _window];
      _contextId = [_window2 _contextId];

      v9 = objc_alloc_init(MEMORY[0x1E698E440]);
      v10 = [MEMORY[0x1E698E438] policyRequiringSharingOfTouchesDeliveredToChildContextId:contextID withHostContextId:_contextId];
      endpoint = [v9 endpoint];
      [v10 setAssertionEndpoint:endpoint];

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
  hostedWindowHostingHandle = [(_UIRemoteView *)self->_serviceViewControllerRemoteView hostedWindowHostingHandle];
  contextID = [hostedWindowHostingHandle contextID];
  if (!hostedWindowHostingHandle)
  {
    v15 = 0;
    goto LABEL_23;
  }

  v7 = contextID;
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
    endpoint = [v14 endpoint];
    [v22 setAssertionEndpoint:endpoint];

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

- (void)_setViewClipsToBounds:(BOOL)bounds
{
  if (self->__viewClipsToBounds != bounds)
  {
    boundsCopy = bounds;
    self->__viewClipsToBounds = bounds;
    view = [(_UIRemoteViewControllerLegacyImpl *)self view];
    [view setClipsToBounds:boundsCopy];
  }
}

- (void)__trampolineButtonPressData:(id)data canceled:(BOOL)canceled
{
  canceledCopy = canceled;
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
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
    allPresses = qword_1ED4971B0;
    v10 = [allPresses countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allPresses);
        }

        if (_UIApplicationPressEventConformsToType(v8, [*(*(&v18 + 1) + 8 * v13) integerValue]))
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [allPresses countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v11)
          {
            goto LABEL_6;
          }

          goto LABEL_15;
        }
      }

      v14 = UIApp;
      if (canceledCopy)
      {
        _window = [(_UIRemoteViewControllerLegacyImpl *)self _window];
        v16 = [v14 _pressesEventForWindow:_window];

        v17 = UIApp;
        allPresses = [v16 allPresses];
        [v17 _cancelTouchesOrPresses:allPresses withEvent:v16];
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

- (void)__handleFocusMovementAction:(id)action
{
  if (action)
  {
    actionCopy = action;
    _window = [(_UIRemoteViewControllerLegacyImpl *)self _window];
    [_window _forwardFocusMovementAction:actionCopy];
  }
}

- (void)_timelinesForDateInterval:(id)interval completion:(id)completion
{
  completionCopy = completion;
  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___UIRemoteViewControllerLegacyImpl__timelinesForDateInterval_completion___block_invoke;
  v9[3] = &unk_1E70FD790;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [viewControllerOperatorProxy __timelinesForDateInterval:interval completion:v9];
}

- (void)_updateWithFrameSpecifier:(id)specifier completion:(id)completion
{
  completionCopy = completion;
  specifierCopy = specifier;
  _timelineID = [(_UIRemoteViewControllerLegacyImpl *)self _timelineID];
  v12 = [specifierCopy entrySpecifierForTimelineIdentifier:_timelineID];

  viewControllerOperatorProxy = self->_viewControllerOperatorProxy;
  timelineEntry = [v12 timelineEntry];
  presentationTime = [timelineEntry presentationTime];
  [viewControllerOperatorProxy __updateWithFrameSpecifierDate:presentationTime completion:completionCopy];
}

- (void)setupAppProtectionIfNecessary
{
  if ((*&self->_remoteViewControllerFlags & 8) == 0)
  {
    *&self->_remoteViewControllerFlags |= 8u;
    _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
    _appProtectionMetrics = [_owningRemoteViewController _appProtectionMetrics];
    appProtectionMetrics = self->_appProtectionMetrics;
    self->_appProtectionMetrics = _appProtectionMetrics;

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIRemoteViewControllerLegacyImpl.m" lineNumber:5615 description:@"App protection view already exists"];
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
      selfCopy = self;
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
  traitCollection = [(_UIRemoteViewControllerLegacyImpl *)self traitCollection];
  [traitCollection displayScale];
  v14 = [v11 initWithSize:64.0 scale:{64.0, v13}];

  [v14 setDrawBorder:1];
  v15 = [v10 prepareImageForDescriptor:v14];
  cGImage = [v15 CGImage];
  [v15 scale];
  v17 = [UIImage imageWithCGImage:cGImage scale:0 orientation:?];
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
    selfCopy = &unk_1E70F2F20;
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

    view = [(_UIRemoteViewControllerLegacyImpl *)self view];
    [view addSubview:self->_appProtectionShieldView];

    v15 = MEMORY[0x1E69977A0];
    leftAnchor = [(UIView *)self->_appProtectionShieldView leftAnchor];
    view2 = [(_UIRemoteViewControllerLegacyImpl *)self view];
    leftAnchor2 = [view2 leftAnchor];
    v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v23[0] = v19;
    topAnchor = [(UIView *)self->_appProtectionShieldView topAnchor];
    view3 = [(_UIRemoteViewControllerLegacyImpl *)self view];
    topAnchor2 = [view3 topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v23[1] = v14;
    rightAnchor = [(UIView *)self->_appProtectionShieldView rightAnchor];
    view4 = [(_UIRemoteViewControllerLegacyImpl *)self view];
    rightAnchor2 = [view4 rightAnchor];
    v7 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v23[2] = v7;
    bottomAnchor = [(UIView *)self->_appProtectionShieldView bottomAnchor];
    view5 = [(_UIRemoteViewControllerLegacyImpl *)self view];
    bottomAnchor2 = [view5 bottomAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v23[3] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    [v15 activateConstraints:v12];

    _sheetPresentationController = [(_UIRemoteViewControllerLegacyImpl *)self _sheetPresentationController];
    [_sheetPresentationController _tryToConnectToRemoteSheet:0];

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

- (void)shieldViewUnlockButtonPressed:(id)pressed
{
  pressedCopy = pressed;
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
    sharedGuard = [v6 sharedGuard];
    appProtectionExtension = self->_appProtectionExtension;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67___UIRemoteViewControllerLegacyImpl_shieldViewUnlockButtonPressed___block_invoke;
    v10[3] = &unk_1E7128798;
    objc_copyWeak(&v11, &location);
    [sharedGuard authenticateForExtension:appProtectionExtension completion:v10];

    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(&location);
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82___UIRemoteViewControllerLegacyImpl_appProtectionSubjectsChanged_forSubscription___block_invoke;
  block[3] = &unk_1E70F2F80;
  objc_copyWeak(&v9, &location);
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)window
{
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  _window = [_owningRemoteViewController _window];

  return _window;
}

- (id)_window
{
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  _window = [_owningRemoteViewController _window];

  return _window;
}

- (id)view
{
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  view = [_owningRemoteViewController view];

  return view;
}

- (id)_existingView
{
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  _existingView = [_owningRemoteViewController _existingView];

  return _existingView;
}

- (id)traitCollection
{
  _owningRemoteViewController = [(_UIRemoteViewControllerLegacyImpl *)self _owningRemoteViewController];
  traitCollection = [_owningRemoteViewController traitCollection];

  return traitCollection;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  [streamCopy appendProem:self block:&__block_literal_global_648];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63___UIRemoteViewControllerLegacyImpl_appendDescriptionToStream___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendBodySectionWithName:0 block:v6];
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

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