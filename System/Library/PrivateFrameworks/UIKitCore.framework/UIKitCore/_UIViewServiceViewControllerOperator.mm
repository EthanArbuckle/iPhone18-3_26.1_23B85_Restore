@interface _UIViewServiceViewControllerOperator
+ (_UIViewServiceViewControllerOperator)operatorWithRemoteViewControllerProxy:(id)proxy hostPID:(int)d hostBundleID:(id)iD hostAuditToken:(id *)token sessionIdentifier:(id)identifier;
+ (id)XPCInterface;
+ (void)initialize;
- (BOOL)_forwardPresses:(id)presses withEvent:(id)event canceled:(BOOL)canceled;
- (BOOL)_shouldForwardLegacyRotationOnly;
- (CGSize)contentSizeForViewInPopover;
- (NSString)debugDescription;
- (UIEdgeInsets)_customBasePresentationInsetsForView:(id)view;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (UIEdgeInsets)_viewSafeAreaInsetsFromScene;
- (_UIChildRemoteContentRegistry)_childRemoteContentRegistry;
- (_UIViewServiceLegacyClientSession)session;
- (id)_dataFromPressesEvent:(id)event;
- (id)_showServiceForText:(id)text selectedTextRange:(_NSRange)range type:(int64_t)type fromRect:(CGRect)rect inView:(id)view;
- (id)_showServiceForText:(id)text type:(int64_t)type fromRect:(CGRect)rect inView:(id)view;
- (id)_showServiceForType:(int64_t)type withContext:(id)context;
- (id)_supportedInterfaceOrientationsForViewController:(id)controller;
- (id)_viewControllersForRotationCallbacks;
- (id)preferredFocusEnvironments;
- (int64_t)_availableTextServices;
- (void)__cancelAlertActionWithToken:(int64_t)token;
- (void)__createViewControllerWithOptions:(id)options completionBlock:(id)block;
- (void)__dimmingViewWasTapped;
- (void)__exchangeAccessibilityPortInformation:(id)information replyHandler:(id)handler;
- (void)__hostDidAttachDisplay:(id)display;
- (void)__hostDidBecomeActive;
- (void)__hostDidChangeStatusBarHeight:(double)height;
- (void)__hostDidChangeStatusBarOrientationToInterfaceOrientation:(int64_t)orientation;
- (void)__hostDidDetachDisplay:(id)display;
- (void)__hostDidDismissShieldViewForAppProtection;
- (void)__hostDidEnterBackground;
- (void)__hostDidEvaluatePencilBarrelEventFocusForSceneTransition;
- (void)__hostDidMoveToParentSceneWithSettings:(id)settings;
- (void)__hostDidPromoteFirstResponder;
- (void)__hostDidReceivePhysicalButtonBSAction:(id)action;
- (void)__hostDidRotateFromInterfaceOrientation:(int64_t)orientation skipSelf:(BOOL)self;
- (void)__hostDidSetContentOverlayInsets:(UIEdgeInsets)insets andLeftMargin:(double)margin rightMargin:(double)rightMargin;
- (void)__hostDidUpdateDisplay:(id)display;
- (void)__hostDidUpdateSceneContext:(id)context;
- (void)__hostHomeAffordanceFrameIntersectionDidChange:(CGRect)change;
- (void)__hostReceivedHomeAffordanceDoubleTapGestureDidSucceed:(BOOL)succeed;
- (void)__hostSceneDidEnterBackground;
- (void)__hostSceneDidUpdateWithDiff:(id)diff;
- (void)__hostSceneWillEnterForeground;
- (void)__hostViewDidAppear:(BOOL)appear;
- (void)__hostViewDidDisappear:(BOOL)disappear;
- (void)__hostViewDidMoveToScreenWithFBSDisplayIdentity:(id)identity newHostingHandleReplyHandler:(id)handler;
- (void)__hostViewWillAppear:(BOOL)appear inInterfaceOrientation:(int64_t)orientation traitCollection:(id)collection statusBarHeight:(double)height underlapsStatusBar:(BOOL)bar completionHandler:(id)handler;
- (void)__hostViewWillDisappear:(BOOL)disappear;
- (void)__hostViewWillMoveToWindowInInterfaceOrientation:(int64_t)orientation withStatusBarHeight:(double)height underlapsStatusBar:(BOOL)bar;
- (void)__hostViewWillTransitionToSize:(CGSize)size withContextDescription:(id)description boundingPath:(id)path statusBarHeight:(double)height underlapsStatusBar:(BOOL)bar fence:(id)fence timing:(_UIUpdateTiming *)timing whenDone:(id)self0;
- (void)__hostWillAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration skipSelf:(BOOL)self;
- (void)__hostWillEnterForeground;
- (void)__hostWillResignActive;
- (void)__hostWillRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration skipSelf:(BOOL)self;
- (void)__hostWillTransitionToTraitCollection:(id)collection withContextDescription:(id)description deferIfAnimated:(BOOL)animated inRemoteViewHierarchy:(BOOL)hierarchy;
- (void)__installDismissInteractionForZoomTransition;
- (void)__prepareForDisconnectionWithCompletionHandler:(id)handler;
- (void)__redoActionWithToken:(int64_t)token;
- (void)__scrollToTopFromTouchAtViewLocation:(CGPoint)location resultHandler:(id)handler;
- (void)__setBoundingPath:(id)path;
- (void)__setContentSize:(CGSize)size boundingPath:(id)path;
- (void)__setContentSize:(CGSize)size boundingPath:(id)path withFence:(id)fence;
- (void)__setHostTintColor:(id)color tintAdjustmentMode:(int64_t)mode;
- (void)__setHostTraitCollection:(id)collection deferIfAnimated:(BOOL)animated;
- (void)__setHostViewUnderlapsStatusBar:(BOOL)bar;
- (void)__setServiceInPopover:(BOOL)popover;
- (void)__setSheetConfiguration:(id)configuration;
- (void)__sheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient;
- (void)__sheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change;
- (void)__sheetInteractionDraggingDidEnd;
- (void)__showEditAlertView;
- (void)__textServiceDidDismiss;
- (void)__timelinesForDateInterval:(id)interval completion:(id)completion;
- (void)__undoActionWithToken:(int64_t)token;
- (void)__updateWithFrameSpecifierDate:(id)date completion:(id)completion;
- (void)_addSceneForwardingLayersForOwners:(id)owners;
- (void)_didBecomeContentViewControllerOfPopover:(id)popover;
- (void)_didResignContentViewControllerOfPopover:(id)popover;
- (void)_firstResponderDidChange:(id)change;
- (void)_handleActivityObserverGesture:(id)gesture;
- (void)_installActivityObserverGestureIfNeeded;
- (void)_invalidateUnconditionallyThen:(id)then;
- (void)_marginInfoForChild:(id)child leftMargin:(double *)margin rightMargin:(double *)rightMargin;
- (void)_objc_initiateDealloc;
- (void)_physicalButtonInteractionArbiter:(id)arbiter didUpdateResolvedConfigurations:(id)configurations inActiveViewServiceSession:(id)session;
- (void)_popoverDidDismiss:(id)dismiss;
- (void)_popoverWillPresent:(id)present;
- (void)_prepareForDisconnectionUnconditionallyThen:(id)then;
- (void)_removeSceneForwardingLayersForOwners:(id)owners;
- (void)_setNeedsUpdateOfMultitaskingDragExclusionRects;
- (void)_sheetPresentationControllerClientConfigurationDidChange:(id)change;
- (void)_updateSupportedInterfaceOrientationsIfNecessary;
- (void)_viewServiceIsDisplayingPopoverController:(id)controller;
- (void)_wantsKeyboardEventsWithoutFirstResponder:(id)responder;
- (void)_willBecomeContentViewControllerOfPopover:(id)popover;
- (void)_willResignContentViewControllerOfPopover:(id)popover;
- (void)_windowDidBecomeApplicationKey:(id)key;
- (void)_windowDidRegisterOrUnregisterScrollToTopView;
- (void)addDeputyRotationDelegate:(id)delegate;
- (void)dealloc;
- (void)dismissHostedTextServiceSession:(id)session animated:(BOOL)animated;
- (void)dummyPopoverController:(id)controller didChangeContentSize:(CGSize)size animated:(BOOL)animated;
- (void)dummyPopoverController:(id)controller popoverViewDidSetUseToolbarShine:(BOOL)shine;
- (void)establishViewControllerDeputyWithProxy:(id)proxy completionHandler:(id)handler;
- (void)loadView;
- (void)motionEnded:(int64_t)ended withEvent:(id)event;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setNeedsStatusBarAppearanceUpdate;
- (void)setNeedsUpdateOfHomeIndicatorAutoHidden;
- (void)setNeedsUpdateOfPrefersPointerLocked;
- (void)setNeedsUpdateOfScreenEdgesDeferringSystemGestures;
- (void)setNeedsWhitePointAdaptivityStyleUpdate;
- (void)systemLayoutFittingSizeDidChangeForChildViewController:(id)controller;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)window:(id)window statusBarWillChangeFromHeight:(double)height toHeight:(double)toHeight;
@end

@implementation _UIViewServiceViewControllerOperator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    _class_setCustomDeallocInitiation();
  }
}

+ (_UIViewServiceViewControllerOperator)operatorWithRemoteViewControllerProxy:(id)proxy hostPID:(int)d hostBundleID:(id)iD hostAuditToken:(id *)token sessionIdentifier:(id)identifier
{
  v10 = *&d;
  proxyCopy = proxy;
  iDCopy = iD;
  identifierCopy = identifier;
  v14 = objc_alloc_init(_UIViewServiceViewControllerOperator);
  remoteViewControllerProxyToOperator = v14->_remoteViewControllerProxyToOperator;
  v14->_remoteViewControllerProxyToOperator = proxyCopy;
  v36 = proxyCopy;

  v14->_hostPID = v10;
  v14->_mediaPID = v10;
  hostBundleID = v14->_hostBundleID;
  v14->_hostBundleID = iDCopy;
  v17 = iDCopy;

  v18 = *&token->var0[4];
  *v14->_hostAuditToken.val = *token->var0;
  *&v14->_hostAuditToken.val[4] = v18;
  sessionIdentifier = v14->_sessionIdentifier;
  v14->_sessionIdentifier = identifierCopy;
  v20 = identifierCopy;

  beginInheritingCoreMediaApplicationState(v14->_mediaPID);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __132___UIViewServiceViewControllerOperator_operatorWithRemoteViewControllerProxy_hostPID_hostBundleID_hostAuditToken_sessionIdentifier___block_invoke;
  v38[3] = &__block_descriptor_40_e14_v16__0___v___8lu32l8;
  v38[4] = v14;
  v21 = [_UIAsyncInvocation invocationWithBlock:v38];
  prepareForDisconnectionInvocation = v14->_prepareForDisconnectionInvocation;
  v14->_prepareForDisconnectionInvocation = v21;

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __132___UIViewServiceViewControllerOperator_operatorWithRemoteViewControllerProxy_hostPID_hostBundleID_hostAuditToken_sessionIdentifier___block_invoke_2;
  v37[3] = &__block_descriptor_40_e14_v16__0___v___8lu32l8;
  v37[4] = v14;
  v23 = [_UIAsyncInvocation invocationWithBlock:v37];
  invalidationInvocation = v14->_invalidationInvocation;
  v14->_invalidationInvocation = v23;

  [(UIViewController *)v14 setWantsFullScreenLayout:1];
  [(UIViewController *)v14 _setAllowsAutorotation:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v14 selector:sel__popoverWillPresent_ name:0x1EFB37EF0 object:0];
  [defaultCenter addObserver:v14 selector:sel__popoverDidDismiss_ name:0x1EFB37F10 object:0];
  v26 = MEMORY[0x1E699FBC8];
  uUIDString = [(NSUUID *)v20 UUIDString];
  v28 = +[(FBSSceneSpecification *)UIApplicationSceneSpecification];
  v29 = [v26 pseudoSceneWithIdentifier:uUIDString specification:v28];
  pseudoScene = v14->_pseudoScene;
  v14->_pseudoScene = v29;

  xPCInterface = [objc_opt_class() XPCInterface];
  exportedInterface = [xPCInterface exportedInterface];
  protocol = [exportedInterface protocol];
  v34 = [_UIViewServiceUIBehaviorProxy proxyWrappingExportedObject:v14 forCommunicationWithPID:v10 exportedProtocol:protocol];

  return v34;
}

- (void)_objc_initiateDealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(__UILogGetCategoryCachedImpl("ViewServices", &_objc_initiateDealloc___s_category_0) + 8);
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
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Initiating deallocation for operator: %{public}@", buf, 0xCu);
  }

  if (self)
  {
    *(&self->super._viewControllerFlags + 4) |= 0x80u;
  }

  invalidate = [(_UIViewServiceViewControllerOperator *)self invalidate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61___UIViewServiceViewControllerOperator__objc_initiateDealloc__block_invoke;
  v10[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v10[4] = self;
  [invalidate whenCompleteDo:v10];
}

- (void)dealloc
{
  v6[8] = *MEMORY[0x1E69E9840];
  [(_UIHostedTextServiceSession *)self->_textServiceSession setDelegate:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIWindowFirstResponderDidChangeNotification";
  v6[1] = @"_UIWindowDidBecomeApplicationKeyNotification";
  v6[2] = @"_UIWindowDidResignApplicationKeyNotification";
  v6[3] = @"_UIRemoteKeyboardsServiceWantsKeyboardFocusWithoutFirstResponderNotification";
  v6[4] = @"_UIHostedWindowDidRegisterScrollToTopViewNotification";
  v6[5] = @"_UIHostedWindowDidUnregisterScrollToTopViewNotification";
  v6[6] = 0x1EFB37EF0;
  v6[7] = 0x1EFB37F10;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:8];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v5 dealloc];
}

- (void)establishViewControllerDeputyWithProxy:(id)proxy completionHandler:(id)handler
{
  proxyCopy = proxy;
  handlerCopy = handler;
  if (!self->_localViewController)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    NSLog(&cfstr_ReceivedViewCo.isa, v9, self);

    handlerCopy[2](handlerCopy, 0);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97___UIViewServiceViewControllerOperator_establishViewControllerDeputyWithProxy_completionHandler___block_invoke;
  block[3] = &unk_1E70FCE28;
  block[4] = self;
  v13 = proxyCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = proxyCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_prepareForDisconnectionUnconditionallyThen:(id)then
{
  thenCopy = then;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = [UIApp _beginBackgroundTaskWithExpirationHandler:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84___UIViewServiceViewControllerOperator__prepareForDisconnectionUnconditionallyThen___block_invoke;
  block[3] = &unk_1E7128B78;
  v10 = defaultCenter;
  selfCopy = self;
  v12 = thenCopy;
  selfCopy2 = self;
  v14 = v6;
  v7 = thenCopy;
  v8 = defaultCenter;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_invalidateUnconditionallyThen:(id)then
{
  thenCopy = then;
  invoke = [(_UIAsyncInvocation *)self->_prepareForDisconnectionInvocation invoke];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71___UIViewServiceViewControllerOperator__invalidateUnconditionallyThen___block_invoke;
  v7[3] = &unk_1E70F0F78;
  v8 = thenCopy;
  v6 = thenCopy;
  [invoke whenCompleteDo:v7];
}

- (void)loadView
{
  mainScreen = [objc_opt_self() mainScreen];
  v3 = [UIView alloc];
  [mainScreen bounds];
  v4 = [(UIView *)v3 initWithFrame:?];
  [(UIViewController *)self setView:v4];

  [mainScreen _referenceBounds];
  [self->_remoteViewControllerProxyToOperator __setServiceMaxFrameSize:{v5, v6}];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v4 viewDidLoad];
  view = [(UIViewController *)self view];
  [view setAutoresizingMask:18];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v2 viewDidLayoutSubviews];
}

- (void)addDeputyRotationDelegate:(id)delegate
{
  delegateCopy = delegate;
  deputyRotationDelegates = self->_deputyRotationDelegates;
  v8 = delegateCopy;
  if (!deputyRotationDelegates)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v7 = self->_deputyRotationDelegates;
    self->_deputyRotationDelegates = v6;

    delegateCopy = v8;
    deputyRotationDelegates = self->_deputyRotationDelegates;
  }

  [(NSMutableArray *)deputyRotationDelegates addObject:delegateCopy];
  [v8 setHostedWindow:self->_hostedWindow disableAutomaticBehaviors:{-[UIResponder _disableAutomaticKeyboardBehavior](self->_localViewController, "_disableAutomaticKeyboardBehavior")}];
}

- (void)_updateSupportedInterfaceOrientationsIfNecessary
{
  _viewControllerForSupportedInterfaceOrientations = [(UIViewController *)self->_localViewController _viewControllerForSupportedInterfaceOrientations];
  supportedInterfaceOrientations = [_viewControllerForSupportedInterfaceOrientations supportedInterfaceOrientations];

  if (supportedInterfaceOrientations != self->_supportedOrientations)
  {
    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v6 = _supportedInterfaceOrientationsForMask(supportedInterfaceOrientations);
    [remoteViewControllerProxyToOperator __setSupportedInterfaceOrientations:v6];

    self->_supportedOrientations = supportedInterfaceOrientations;
  }
}

- (void)__setHostViewUnderlapsStatusBar:(BOOL)bar
{
  barCopy = bar;
  v10 = self->_hostedWindow;
  [(_UIHostedWindow *)v10 __setHostViewUnderlapsStatusBar:barCopy];
  [(UIViewController *)self _updateLayoutForStatusBarAndInterfaceOrientation];
  selfCopy = self;
  presentedViewController = [(UIViewController *)selfCopy presentedViewController];
  if (presentedViewController)
  {
    presentedViewController2 = presentedViewController;
    do
    {
      [presentedViewController2 _updateLayoutForStatusBarAndInterfaceOrientation];
      v8 = presentedViewController2;

      presentedViewController2 = [(UIViewController *)v8 presentedViewController];

      selfCopy = v8;
    }

    while (presentedViewController2);
  }

  else
  {
    v8 = selfCopy;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIViewServiceHostDidUpdateUnderlapsStatusBar" object:v10 userInfo:0];
}

- (void)window:(id)window statusBarWillChangeFromHeight:(double)height toHeight:(double)toHeight
{
  hostedWindow = self->_hostedWindow;
  windowCopy = window;
  if ([(_UIHostedWindow *)hostedWindow __hostViewUnderlapsStatusBar])
  {
    [(UIViewController *)&v11 window:windowCopy statusBarWillChangeFromHeight:height toHeight:toHeight, v10.receiver, v10.super_class, self, _UIViewServiceViewControllerOperator];
  }

  else
  {
    [(UIViewController *)&v10 window:windowCopy statusBarWillChangeFromHeight:height toHeight:0.0, self, _UIViewServiceViewControllerOperator, v11.receiver, v11.super_class];
  }
}

- (void)__scrollToTopFromTouchAtViewLocation:(CGPoint)location resultHandler:(id)handler
{
  y = location.y;
  x = location.x;
  handlerCopy = handler;
  view = [(UIViewController *)self view];
  window = [view window];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91___UIViewServiceViewControllerOperator___scrollToTopFromTouchAtViewLocation_resultHandler___block_invoke;
  v11[3] = &unk_1E70F3608;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [window _scrollToTopViewsUnderScreenPointIfNecessary:v11 resultHandler:{x, y}];
}

- (void)_windowDidRegisterOrUnregisterScrollToTopView
{
  remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
  _registeredScrollToTopViews = [(UIWindow *)self->_hostedWindow _registeredScrollToTopViews];
  [remoteViewControllerProxyToOperator __viewServiceDidChangeHasScrollToTopView:{objc_msgSend(_registeredScrollToTopViews, "count") != 0}];
}

- (void)__setHostTintColor:(id)color tintAdjustmentMode:(int64_t)mode
{
  colorCopy = color;
  v6 = self->_hostedWindow;
  if (dyld_program_sdk_at_least())
  {
    [(_UIHostedWindow *)v6 _setHostTintColor:colorCopy];
  }

  [(_UIHostedWindow *)v6 _setHostTintAdjustmentMode:mode];
}

- (void)__setHostTraitCollection:(id)collection deferIfAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = _unobscuredTraitCollectionFromTraitCollection(collection);
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81___UIViewServiceViewControllerOperator___setHostTraitCollection_deferIfAnimated___block_invoke;
  aBlock[3] = &unk_1E70F2F80;
  objc_copyWeak(&v13, &location);
  v7 = v6;
  v12 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (animatedCopy)
  {
    v10 = [v8 copy];
    [(_UIViewServiceViewControllerOperator *)self _setTraitsDidChangeHandler:v10];
  }

  else
  {
    v8[2](v8);
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)__hostWillTransitionToTraitCollection:(id)collection withContextDescription:(id)description deferIfAnimated:(BOOL)animated inRemoteViewHierarchy:(BOOL)hierarchy
{
  animatedCopy = animated;
  descriptionCopy = description;
  v11 = _unobscuredTraitCollectionFromTraitCollection(collection);
  v12 = _UIHostedWindowModifiedHostTraitCollection(self->_hostedWindow, v11);
  [descriptionCopy transitionDuration];
  v22 = 3221225472;
  v21 = MEMORY[0x1E69E9820];
  v23 = __139___UIViewServiceViewControllerOperator___hostWillTransitionToTraitCollection_withContextDescription_deferIfAnimated_inRemoteViewHierarchy___block_invoke;
  v24 = &unk_1E7128BA8;
  v14 = v13 > 0.0 || animatedCopy;
  LOBYTE(v28) = v14;
  BYTE1(v28) = v13 > 0.0;
  selfCopy = self;
  v26 = descriptionCopy;
  BYTE2(v28) = hierarchy;
  v27 = v12;
  v15 = v12;
  v16 = descriptionCopy;
  v17 = _Block_copy(&v21);
  v18 = v17;
  if (animatedCopy)
  {
    v19 = [v17 copy];
    [(_UIViewServiceViewControllerOperator *)self _setTraitsWillChangeHandler:v19];
  }

  else
  {
    v20 = v17[2](v17);
  }
}

- (void)_firstResponderDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKey:@"UIWindowFirstResponderUserInfoKey"];

  userInfo2 = [changeCopy userInfo];
  v8 = [userInfo2 objectForKey:0x1EFB927F0];
  bOOLValue = [v8 BOOLValue];

  v10 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  handlingRemoteEvent = [v10 handlingRemoteEvent];

  if (v6 && (bOOLValue & 1) == 0 && (handlingRemoteEvent & 1) == 0 && !self->_hasRequestedKeyboardEventEnvironmentDeferring)
  {
    object = [changeCopy object];
    if (object == self->_hostedWindow)
    {
      self->_hasRequestedKeyboardEventEnvironmentDeferring = 1;
      objc_initWeak(&location, self);
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __65___UIViewServiceViewControllerOperator__firstResponderDidChange___block_invoke;
      v17 = &unk_1E70F5A28;
      objc_copyWeak(&v18, &location);
      v13 = _Block_copy(&v14);
      [self->_remoteViewControllerProxyToOperator __viewServiceDidPromoteFirstResponderWithCompletionHandler:{v13, v14, v15, v16, v17}];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_windowDidBecomeApplicationKey:(id)key
{
  object = [key object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = object;
  }

  else
  {
    v4 = 0;
  }

  hostedWindow = self->_hostedWindow;
  if (hostedWindow)
  {
    v6 = hostedWindow == v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [self->_remoteViewControllerProxyToOperator __viewServiceDidChangeKeyWindow:v7];
  if (v7 == 1)
  {
    v8 = +[_UIActiveViewServiceSessionTracker sharedTracker];
    [(_UIActiveViewServiceSessionTracker *)v8 handleViewServiceActivity:self->_hostedWindow inHostedWindow:self fromProvider:self->_sessionActivityRecord forSessionActivityRecord:?];
  }
}

- (void)_wantsKeyboardEventsWithoutFirstResponder:(id)responder
{
  responderCopy = responder;
  userInfo = [responderCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"_UIRemoteKeyboardsHostedWindowUserInfoKey"];

  if (v6 && v6 == self->_hostedWindow && !self->_hasRequestedKeyboardEventEnvironmentDeferring)
  {
    self->_hasRequestedKeyboardEventEnvironmentDeferring = 1;
    objc_initWeak(&location, self);
    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __82___UIViewServiceViewControllerOperator__wantsKeyboardEventsWithoutFirstResponder___block_invoke;
    v8[3] = &unk_1E70F5A28;
    objc_copyWeak(&v9, &location);
    [remoteViewControllerProxyToOperator __viewServiceWantsKeyboardEventsWithoutFirstResponderAndCompletionHandler:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)__prepareForDisconnectionWithCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = *(__UILogGetCategoryCachedImpl("ViewServices", &__prepareForDisconnectionWithCompletionHandler____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v6 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      selfCopy = [v6 stringWithFormat:@"<%@: %p>", v9, selfCopy];
    }

    else
    {
      selfCopy = @"(nil)";
    }

    *buf = 138543362;
    v16 = selfCopy;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Received request to prepare operator for disconnection: %{public}@", buf, 0xCu);
  }

  invoke = [(_UIAsyncInvocation *)self->_prepareForDisconnectionInvocation invoke];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87___UIViewServiceViewControllerOperator___prepareForDisconnectionWithCompletionHandler___block_invoke;
  v13[3] = &unk_1E70F0F78;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [invoke whenCompleteDo:v13];
}

- (void)_viewServiceIsDisplayingPopoverController:(id)controller
{
  objc_storeWeak(&self->_displayedPopoverController, controller);
  remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;

  [remoteViewControllerProxyToOperator __setViewServiceIsDisplayingPopover:controller != 0];
}

- (void)_popoverWillPresent:(id)present
{
  presentCopy = present;
  userInfo = [presentCopy userInfo];
  v5 = [userInfo objectForKey:0x1EFB37F30];

  if (self->_hostedWindow == v5)
  {
    object = [presentCopy object];
    if (!object || (v7 = object, [presentCopy object], v8 = objc_claimAutoreleasedReturnValue(), WeakRetained = objc_loadWeakRetained(&self->_dummyPopoverController), WeakRetained, v8, v7, v8 != WeakRetained))
    {
      object2 = [presentCopy object];
      [(_UIViewServiceViewControllerOperator *)self _viewServiceIsDisplayingPopoverController:object2];
    }
  }
}

- (void)_popoverDidDismiss:(id)dismiss
{
  object = [dismiss object];
  WeakRetained = objc_loadWeakRetained(&self->_displayedPopoverController);

  if (object == WeakRetained)
  {

    [(_UIViewServiceViewControllerOperator *)self _viewServiceIsDisplayingPopoverController:0];
  }
}

- (void)__dimmingViewWasTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_displayedPopoverController);
  _dimmingView = [WeakRetained _dimmingView];
  [_dimmingView _simulateTap];
}

- (void)_willBecomeContentViewControllerOfPopover:(id)popover
{
  v5.receiver = self;
  v5.super_class = _UIViewServiceViewControllerOperator;
  popoverCopy = popover;
  [(UIViewController *)&v5 _willBecomeContentViewControllerOfPopover:popoverCopy];
  [(UIViewController *)self->_localViewController _willBecomeContentViewControllerOfPopover:popoverCopy, v5.receiver, v5.super_class];
}

- (void)_didBecomeContentViewControllerOfPopover:(id)popover
{
  v5.receiver = self;
  v5.super_class = _UIViewServiceViewControllerOperator;
  popoverCopy = popover;
  [(UIViewController *)&v5 _didBecomeContentViewControllerOfPopover:popoverCopy];
  [(UIViewController *)self->_localViewController _didBecomeContentViewControllerOfPopover:popoverCopy, v5.receiver, v5.super_class];
}

- (void)_willResignContentViewControllerOfPopover:(id)popover
{
  v5.receiver = self;
  v5.super_class = _UIViewServiceViewControllerOperator;
  popoverCopy = popover;
  [(UIViewController *)&v5 _willResignContentViewControllerOfPopover:popoverCopy];
  [(UIViewController *)self->_localViewController _willResignContentViewControllerOfPopover:popoverCopy, v5.receiver, v5.super_class];
}

- (void)_didResignContentViewControllerOfPopover:(id)popover
{
  v5.receiver = self;
  v5.super_class = _UIViewServiceViewControllerOperator;
  popoverCopy = popover;
  [(UIViewController *)&v5 _didResignContentViewControllerOfPopover:popoverCopy];
  [(UIViewController *)self->_localViewController _didResignContentViewControllerOfPopover:popoverCopy, v5.receiver, v5.super_class];
}

- (CGSize)contentSizeForViewInPopover
{
  [(UIViewController *)self->_localViewController contentSizeForViewInPopover];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  [containerCopy preferredContentSize];
  [(UIViewController *)self setPreferredContentSize:?];
  v4 = [(UIViewController *)self _existingPresentationControllerImmediate:1 effective:1 includesRoot:1];
  [v4 preferredContentSizeDidChangeForChildContentContainer:self];

  v5 = objc_autoreleasePoolPush();
  _window = [(_UIViewServiceViewControllerOperator *)self _window];
  _windowHostingScene = [_window _windowHostingScene];
  _synchronizedDrawingFence = [_windowHostingScene _synchronizedDrawingFence];

  remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
  [containerCopy preferredContentSize];
  [remoteViewControllerProxyToOperator __viewServicePreferredContentSizeDidChange:_synchronizedDrawingFence fence:?];
  [_synchronizedDrawingFence invalidate];

  objc_autoreleasePoolPop(v5);
}

- (void)systemLayoutFittingSizeDidChangeForChildViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (self->_localViewController == controllerCopy && [(UIViewController *)controllerCopy _shouldForwardSystemLayoutFittingSizeChanges])
  {
    objc_initWeak(&location, self->_remoteViewControllerProxyToOperator);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __95___UIViewServiceViewControllerOperator_systemLayoutFittingSizeDidChangeForChildViewController___block_invoke;
    v14 = &unk_1E71006F0;
    v15 = v5;
    selfCopy = self;
    objc_copyWeak(&v17, &location);
    v6 = _Block_copy(&v11);
    if ([(UIViewController *)self->_localViewController _appearState:v11]- 1 > 1)
    {
      deferredToViewDidAppear = self->_deferredToViewDidAppear;
      if (!deferredToViewDidAppear)
      {
        array = [MEMORY[0x1E695DF70] array];
        v9 = self->_deferredToViewDidAppear;
        self->_deferredToViewDidAppear = array;

        deferredToViewDidAppear = self->_deferredToViewDidAppear;
      }

      v10 = [v6 copy];
      [(NSMutableArray *)deferredToViewDidAppear addObject:v10];
    }

    else
    {
      v6[2](v6);
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82___UIViewServiceViewControllerOperator_presentationControllerDidAttemptToDismiss___block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    if (qword_1ED499938 != -1)
    {
      dispatch_once(&qword_1ED499938, block);
    }

    [(UIViewController *)self->_localViewController presentationControllerDidAttemptToDismiss:_MergedGlobals_65_0];
  }
}

- (void)_sheetPresentationControllerClientConfigurationDidChange:(id)change
{
  changeCopy = change;
  v6 = self->_sheetClientConfiguration;
  v7 = changeCopy;
  v11 = v7;
  if (v6 == v7)
  {

LABEL_9:
    v9 = v11;
    goto LABEL_10;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(_UISheetPresentationControllerClientConfiguration *)v6 isEqual:v7];

  v9 = v11;
  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_sheetClientConfiguration, change);
    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v6 = +[UIView _currentAnimationAttributes];
    [remoteViewControllerProxyToOperator __viewServiceSheetPresentationClientConfigurationDidChange:v11 attributes:v6];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_addSceneForwardingLayersForOwners:(id)owners
{
  ownersCopy = owners;
  if ([ownersCopy count])
  {
    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v5 = [ownersCopy copy];
    [remoteViewControllerProxyToOperator __viewServiceAddSceneForwardingLayersForOwners:v5];
  }
}

- (void)_removeSceneForwardingLayersForOwners:(id)owners
{
  ownersCopy = owners;
  if ([ownersCopy count])
  {
    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v5 = [ownersCopy copy];
    [remoteViewControllerProxyToOperator __viewServiceRemoveSceneForwardingLayersForOwners:v5];
  }
}

- (void)dummyPopoverController:(id)controller didChangeContentSize:(CGSize)size animated:(BOOL)animated
{
  animatedCopy = animated;
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_dummyPopoverController);

  if (WeakRetained == controllerCopy)
  {
    v11 = objc_autoreleasePoolPush();
    _window = [(_UIViewServiceViewControllerOperator *)self _window];
    _windowHostingScene = [_window _windowHostingScene];
    _synchronizedDrawingFence = [_windowHostingScene _synchronizedDrawingFence];

    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __93___UIViewServiceViewControllerOperator_dummyPopoverController_didChangeContentSize_animated___block_invoke;
    v16[3] = &unk_1E710CB38;
    v16[4] = self;
    [remoteViewControllerProxyToOperator __viewServicePopoverDidChangeContentSize:animatedCopy animated:_synchronizedDrawingFence fence:v16 withReplyHandler:{width, height}];
    [_synchronizedDrawingFence invalidate];

    objc_autoreleasePoolPop(v11);
  }
}

- (void)dummyPopoverController:(id)controller popoverViewDidSetUseToolbarShine:(BOOL)shine
{
  shineCopy = shine;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_dummyPopoverController);

  if (WeakRetained == controllerCopy)
  {
    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;

    [remoteViewControllerProxyToOperator __viewServicePopoverDidSetUseToolbarShine:shineCopy];
  }
}

+ (id)XPCInterface
{
  if (qword_1ED499940 != -1)
  {
    dispatch_once(&qword_1ED499940, &__block_literal_global_668);
  }

  v3 = qword_1ED499948;

  return v3;
}

- (void)__hostViewWillAppear:(BOOL)appear inInterfaceOrientation:(int64_t)orientation traitCollection:(id)collection statusBarHeight:(double)height underlapsStatusBar:(BOOL)bar completionHandler:(id)handler
{
  barCopy = bar;
  appearCopy = appear;
  handlerCopy = handler;
  v15 = _unobscuredTraitCollectionFromTraitCollection(collection);
  if ([(UIViewController *)self->_localViewController _appearState])
  {
    [(UIViewController *)self->_localViewController beginAppearanceTransition:1 animated:appearCopy];
    handlerCopy[2](handlerCopy, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
  }

  else
  {
    v37 = barCopy;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("ViewServices", &qword_1ED499950);
    v17 = *(CategoryCachedImpl + 8);
    v18 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = v18;
      if (os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_188A29000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v19, "VCOperatorViewWillAppear", "", buf, 2u);
      }
    }

    v20 = self->_hostedWindow;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];
    [defaultCenter addObserver:self selector:sel__windowDidBecomeApplicationKey_ name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
    [defaultCenter addObserver:self selector:sel__eventDispatcherDidCancelTouch_ name:@"_UIEventDispatcherDidCancelTouchForInsecureServicePresentation" object:v20];
    if (+[_UIRemoteKeyboards enabled])
    {
      [defaultCenter addObserver:self selector:sel__wantsKeyboardEventsWithoutFirstResponder_ name:@"_UIRemoteKeyboardsServiceWantsKeyboardFocusWithoutFirstResponderNotification" object:0];
    }

    firstResponder = [(UIWindow *)v20 firstResponder];

    if (firstResponder)
    {
      self->_hasRequestedKeyboardEventEnvironmentDeferring = 1;
      objc_initWeak(buf, self);
      remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __153___UIViewServiceViewControllerOperator___hostViewWillAppear_inInterfaceOrientation_traitCollection_statusBarHeight_underlapsStatusBar_completionHandler___block_invoke;
      v45[3] = &unk_1E70F5A28;
      objc_copyWeak(v46, buf);
      [remoteViewControllerProxyToOperator __viewServiceDidPromoteFirstResponderWithCompletionHandler:v45];
      objc_destroyWeak(v46);
      objc_destroyWeak(buf);
    }

    [(_UIViewServiceViewControllerOperator *)self __setHostTraitCollection:v15 deferIfAnimated:0];
    if (orientation)
    {
      *buf = 0;
      v42 = buf;
      v43 = 0x2020000000;
      orientationCopy = orientation;
      v24 = objc_alloc(MEMORY[0x1E698E648]);
      _window = [(_UIViewServiceViewControllerOperator *)self _window];
      v26 = [v24 initWithTargetOrientation:orientation currentOrientation:{objc_msgSend(_window, "interfaceOrientation")}];

      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __153___UIViewServiceViewControllerOperator___hostViewWillAppear_inInterfaceOrientation_traitCollection_statusBarHeight_underlapsStatusBar_completionHandler___block_invoke_2;
      v40[3] = &unk_1E711BF88;
      v40[4] = self;
      v40[5] = buf;
      v40[6] = orientation;
      _UIApplicationPerformWithViewServiceFallbackOrientationResolver(v26, v40);
      [(_UIViewServiceViewControllerOperator *)self __hostDidChangeStatusBarOrientationToInterfaceOrientation:*(v42 + 3)];
      [(_UIViewServiceViewControllerOperator *)self __hostDidChangeStatusBarHeight:height];
      [(_UIViewServiceViewControllerOperator *)self __setHostViewUnderlapsStatusBar:v37];

      _Block_object_dispose(buf, 8);
    }

    [(UIViewController *)self->_localViewController beginAppearanceTransition:1 animated:appearCopy];
    view = [(UIViewController *)self->_localViewController view];
    view2 = [(UIViewController *)self view];
    [view2 addSubview:view];

    view3 = [(UIViewController *)self view];
    [view3 bounds];
    [view setFrame:?];

    [view setNeedsLayout];
    [view _setNeedsUpdateConstraints];
    [(_UIViewServiceViewControllerOperator *)self setNeedsStatusBarAppearanceUpdate];
    [(_UIViewServiceViewControllerOperator *)self setNeedsWhitePointAdaptivityStyleUpdate];
    [(_UIViewServiceViewControllerOperator *)self setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
    [(_UIViewServiceViewControllerOperator *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
    [(_UIViewServiceViewControllerOperator *)self _setNeedsUserInterfaceAppearanceUpdate];
    [(_UIViewServiceViewControllerOperator *)self setNeedsUpdateOfPrefersPointerLocked];
    [(_UIViewServiceViewControllerOperator *)self _setNeedsUpdateOfMultitaskingDragExclusionRects];
    _registeredScrollToTopViews = [(UIWindow *)v20 _registeredScrollToTopViews];
    v31 = [_registeredScrollToTopViews count];

    if (v31)
    {
      [(_UIViewServiceViewControllerOperator *)self _windowDidRegisterOrUnregisterScrollToTopView];
    }

    [defaultCenter addObserver:self selector:sel__windowDidRegisterOrUnregisterScrollToTopView name:@"_UIHostedWindowDidRegisterScrollToTopViewNotification" object:v20];
    [defaultCenter addObserver:self selector:sel__windowDidRegisterOrUnregisterScrollToTopView name:@"_UIHostedWindowDidUnregisterScrollToTopViewNotification" object:v20];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __153___UIViewServiceViewControllerOperator___hostViewWillAppear_inInterfaceOrientation_traitCollection_statusBarHeight_underlapsStatusBar_completionHandler___block_invoke_3;
    v38[3] = &unk_1E70F4A50;
    v38[4] = self;
    v39 = handlerCopy;
    [UIWindow _synchronizeDrawingWithPreCommitHandler:v38];
    v32 = __UILogGetCategoryCachedImpl("ViewServices", &qword_1ED499958);
    v33 = *(v32 + 8);
    v34 = os_signpost_id_make_with_pointer(*(v32 + 8), self);
    if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v35 = v34;
      if (os_signpost_enabled(v33))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_188A29000, v33, OS_SIGNPOST_INTERVAL_END, v35, "VCOperatorViewWillAppear", "", buf, 2u);
      }
    }
  }

  view4 = [(UIViewController *)self view];
  [view4 setUserInteractionEnabled:1];
}

- (void)__hostViewWillMoveToWindowInInterfaceOrientation:(int64_t)orientation withStatusBarHeight:(double)height underlapsStatusBar:(BOOL)bar
{
  barCopy = bar;
  [(_UIViewServiceViewControllerOperator *)self __hostDidChangeStatusBarOrientationToInterfaceOrientation:orientation];
  [(_UIViewServiceViewControllerOperator *)self __hostDidChangeStatusBarHeight:height];

  [(_UIViewServiceViewControllerOperator *)self __setHostViewUnderlapsStatusBar:barCopy];
}

- (void)__hostViewDidAppear:(BOOL)appear
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(UIViewController *)self->_localViewController _appearState]== 1)
  {
    [(UIViewController *)self->_localViewController endAppearanceTransition];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_deferredToViewDidAppear;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v11 + 1) + 8 * v8) + 16))(*(*(&v11 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_deferredToViewDidAppear removeAllObjects];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIViewServiceHostViewDidAppearNotification" object:self->_localViewController userInfo:0];

  v10 = +[_UIActiveViewServiceSessionTracker sharedTracker];
  [(_UIActiveViewServiceSessionTracker *)v10 handleViewServiceActivity:self->_hostedWindow inHostedWindow:self fromProvider:self->_sessionActivityRecord forSessionActivityRecord:?];
}

- (void)__hostViewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(NSMutableArray *)self->_deferredToViewDidAppear removeAllObjects];
  view = [(UIViewController *)self view];
  [view setUserInteractionEnabled:0];

  windowScene = [(UIWindow *)self->_hostedWindow windowScene];
  keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

  responder = [keyboardSceneDelegate responder];

  if (responder)
  {
    [keyboardSceneDelegate _clearPersistingInputAccessoryView];
    [keyboardSceneDelegate _reloadInputViewsForResponder:0];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIViewServiceHostViewWillDisappearNotification" object:self->_localViewController userInfo:0];

  [(UIViewController *)self->_localViewController beginAppearanceTransition:0 animated:disappearCopy];
  v9 = +[_UIActiveViewServiceSessionTracker sharedTracker];
  [(_UIActiveViewServiceSessionTracker *)v9 handleViewServiceActivity:self->_hostedWindow inHostedWindow:self fromProvider:self->_sessionActivityRecord forSessionActivityRecord:?];
}

- (void)__hostViewDidDisappear:(BOOL)disappear
{
  if ([(UIViewController *)self->_localViewController _appearState]== 3)
  {
    v7 = self->_hostedWindow;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"UIWindowFirstResponderDidChangeNotification" object:0];
    [defaultCenter removeObserver:self name:@"_UIHostedWindowDidRegisterScrollToTopViewNotification" object:v7];
    [defaultCenter removeObserver:self name:@"_UIHostedWindowDidUnregisterScrollToTopViewNotification" object:v7];
    if (+[_UIRemoteKeyboards enabled])
    {
      [defaultCenter removeObserver:self name:@"_UIRemoteKeyboardsServiceWantsKeyboardFocusWithoutFirstResponderNotification" object:0];
    }

    [defaultCenter removeObserver:self name:@"_UIEventDispatcherDidCancelTouchForInsecureServicePresentation" object:v7];
    if ([(UIViewController *)self->_localViewController _shouldRemoveViewFromHierarchyOnDisappear])
    {
      view = [(UIViewController *)self->_localViewController view];
      [view removeFromSuperview];
    }

    [(UIViewController *)self->_localViewController endAppearanceTransition];
    _rootPresentationController = [(UIWindow *)v7 _rootPresentationController];
    [_rootPresentationController _resetRemoteDismissing];
  }
}

- (void)__hostDidAttachDisplay:(id)display
{
  displayCopy = display;
  +[UIScreen _FBSDisplayConfigurationConnected:andNotify:](UIScreen, "_FBSDisplayConfigurationConnected:andNotify:", displayCopy, [UIApp _hasCalledRunWithMainScene]);
  if (([UIApp _appAdoptsUISceneLifecycle] & 1) == 0 && (_UIApplicationIsExtension() & 1) == 0)
  {
    identity = [displayCopy identity];
    v4 = [UIScreen _screenWithFBSDisplayIdentity:identity];
    v5 = [UIWindowScene _placeholderWindowSceneForScreen:v4 create:1];
  }
}

- (void)__hostDidUpdateDisplay:(id)display
{
  displayCopy = display;
  identity = [displayCopy identity];
  v5 = [UIScreen _screenWithFBSDisplayIdentity:identity];

  [v5 _updateDisplayConfiguration:displayCopy];
}

- (void)__hostDidDetachDisplay:(id)display
{
  identity = [display identity];
  [UIScreen _FBSDisplayIdentityDisconnected:identity];
}

- (void)__hostDidUpdateSceneContext:(id)context
{
  v51 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  _window = [(_UIViewServiceViewControllerOperator *)self _window];
  windowScene = [_window windowScene];
  _screen = [windowScene _screen];
  displayIdentity = [_screen displayIdentity];
  if (contextCopy)
  {
    v9 = *(contextCopy + 4);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [displayIdentity isEqual:v10];

  if ((v11 & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v31 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_17;
      }

      if (contextCopy)
      {
        v42 = *(contextCopy + 4);
      }

      else
      {
        v42 = 0;
      }

      v33 = v42;
      *buf = 138412546;
      v48 = v33;
      v49 = 2112;
      v50 = displayIdentity;
      _os_log_fault_impl(&dword_188A29000, v31, OS_LOG_TYPE_FAULT, "Received scene context for wrong screen, host sent context for %@ but service is on %@", buf, 0x16u);
    }

    else
    {
      v30 = *(__UILogGetCategoryCachedImpl("Assert", &__hostDidUpdateSceneContext____s_category) + 8);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v31 = v30;
      if (contextCopy)
      {
        v32 = *(contextCopy + 4);
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;
      *buf = 138412546;
      v48 = v33;
      v49 = 2112;
      v50 = displayIdentity;
      _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "Received scene context for wrong screen, host sent context for %@ but service is on %@", buf, 0x16u);
    }

LABEL_17:
    goto LABEL_26;
  }

  v12 = self->_sceneContext;
  v13 = [contextCopy copy];
  sceneContext = self->_sceneContext;
  self->_sceneContext = v13;

  if (contextCopy)
  {
    [_screen _setReferenceDisplayModeStatus:*(contextCopy + 5)];
    v15 = *(contextCopy + 9);
  }

  else
  {
    [_screen _setReferenceDisplayModeStatus:0];
    v15 = 0;
  }

  [windowScene _setEnhancedWindowingEnabled:v15 & 1];
  isCapturingContentForAdditionalRenderingDestination = [contextCopy isCapturingContentForAdditionalRenderingDestination];
  if (isCapturingContentForAdditionalRenderingDestination != [(_UIRemoteViewControllerSceneContext *)v12 isCapturingContentForAdditionalRenderingDestination])
  {
    v17 = MEMORY[0x1E696AEC0];
    v44 = _window;
    v45 = _screen;
    v18 = displayIdentity;
    hostBundleID = self->_hostBundleID;
    selfCopy = self;
    v21 = objc_opt_class();
    NSStringFromClass(v21);
    v22 = windowScene;
    v24 = v23 = v12;
    selfCopy = [v17 stringWithFormat:@"<%@: %p>", v24, selfCopy];

    v12 = v23;
    windowScene = v22;
    v43 = hostBundleID;
    displayIdentity = v18;
    _window = v44;
    _screen = v45;
    v26 = [v17 stringWithFormat:@"scene context value changed in view service via %@ %@", v43, selfCopy];;
    [(UIScreen *)v45 _evaluateCapturedStateForReason:v26];
  }

  systemReferenceAngleFromHost = self->_systemReferenceAngleFromHost;
  if (contextCopy)
  {
    v28 = *(contextCopy + 6);
    v29 = systemReferenceAngleFromHost != v28 || self->_systemReferenceAngleModeFromHost != *(contextCopy + 7);
    self->_systemReferenceAngleFromHost = v28;
    v34 = *(contextCopy + 7);
  }

  else
  {
    v29 = systemReferenceAngleFromHost != 0.0 || self->_systemReferenceAngleModeFromHost != 0;
    v34 = 0;
    self->_systemReferenceAngleFromHost = 0.0;
  }

  self->_systemReferenceAngleModeFromHost = v34;
  if (_window && v29)
  {
    v35 = +[_UISystemReferenceAngleMultiplexer sharedMultiplexer];
    v36 = self->_systemReferenceAngleFromHost;
    systemReferenceAngleModeFromHost = self->_systemReferenceAngleModeFromHost;
    v46 = _window;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    [v35 systemReferenceAngleDidChange:systemReferenceAngleModeFromHost mode:v38 forWindows:v36];
  }

  keyboardSceneDelegate = [windowScene keyboardSceneDelegate];
  if (contextCopy)
  {
    v40 = *(contextCopy + 8);
  }

  else
  {
    v40 = 0;
  }

  v41 = v40;
  [keyboardSceneDelegate setHardwareKeyboardExclusivityIdentifier:v41];

LABEL_26:
}

- (void)__hostDidMoveToParentSceneWithSettings:(id)settings
{
  v4 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionary();
  v5 = [MEMORY[0x1E699FC80] diffFromSettings:0 toSettings:v4];
  pseudoScene = self->_pseudoScene;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79___UIViewServiceViewControllerOperator___hostDidMoveToParentSceneWithSettings___block_invoke;
  v8[3] = &unk_1E7128BE0;
  v9 = v5;
  v7 = v5;
  [(FBSScene *)pseudoScene updateSettings:v8];
}

- (void)__hostSceneDidUpdateWithDiff:(id)diff
{
  v4 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionary();
  pseudoScene = self->_pseudoScene;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69___UIViewServiceViewControllerOperator___hostSceneDidUpdateWithDiff___block_invoke;
  v7[3] = &unk_1E7128BE0;
  v8 = v4;
  v6 = v4;
  [(FBSScene *)pseudoScene updateSettings:v7];
}

- (void)__hostViewDidMoveToScreenWithFBSDisplayIdentity:(id)identity newHostingHandleReplyHandler:(id)handler
{
  v51 = self->_hostedWindow;
  handlerCopy = handler;
  identityCopy = identity;
  _windowHostingScene = [(UIWindow *)v51 _windowHostingScene];
  _screen = [_windowHostingScene _screen];

  v10 = [UIScreen _screenWithFBSDisplayIdentity:identityCopy];

  if (v10)
  {
    v11 = _screen == v10;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    [(_UIViewServiceSessionActivityRecord *)self->_sessionActivityRecord invalidate];
    physicalButtonInteractionArbiterObserverToken = self->_physicalButtonInteractionArbiterObserverToken;
    if (physicalButtonInteractionArbiterObserverToken)
    {
      [(BSInvalidatable *)self->_physicalButtonInteractionArbiterObserverToken invalidate];
      v14 = self->_physicalButtonInteractionArbiterObserverToken;
      self->_physicalButtonInteractionArbiterObserverToken = 0;
    }

    stopStealingStatusBar(self->_hostedWindow);
    self->_hostStatusBarOrientation = 0;
    self->_hostStatusBarHeight = 0.0;
    windowScene = [(UIWindow *)v51 windowScene];
    _keyWindow = [(UIWindowScene *)windowScene _keyWindow];

    v17 = [UIWindowScene _unassociatedWindowSceneForScreen:v10 create:1];
    [(UIWindow *)v51 setWindowScene:v17];
    screen = [v17 screen];
    v19 = +[_UIViewServiceSessionActivityRecord activityRecordForProvider:userInterfaceIdiom:](_UIViewServiceSessionActivityRecord, self, [screen _userInterfaceIdiom]);
    sessionActivityRecord = self->_sessionActivityRecord;
    self->_sessionActivityRecord = v19;

    if (physicalButtonInteractionArbiterObserverToken)
    {
      _physicalButtonInteractionArbiter = [v17 _physicalButtonInteractionArbiter];
      v22 = [(_UIPhysicalButtonInteractionArbiter *)_physicalButtonInteractionArbiter _registerViewServiceObserver:?];
      v23 = self->_physicalButtonInteractionArbiterObserverToken;
      self->_physicalButtonInteractionArbiterObserverToken = v22;
    }

    if (v51 == _keyWindow)
    {
      _keyWindow2 = [(UIWindowScene *)v17 _keyWindow];
      v12 = _keyWindow2 == 0;
    }

    else
    {
      v12 = 0;
    }
  }

  windowScene2 = [(UIWindow *)v51 windowScene];
  if (windowScene2)
  {
    v26 = [UITextEffectsHostingInfo hostingInfoForWindowScene:windowScene2];
    useHostedInstance = [v26 useHostedInstance];

    if ((useHostedInstance & 1) == 0)
    {
      v28 = [UITextEffectsHostingInfo hostingInfoForWindowScene:windowScene2];
      [v28 setUseHostedInstance:1];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"UITextEffectsWindowIsHostedNotification" object:0];
    }
  }

  if (v12)
  {
    [(UIWindow *)v51 _makeKeyWindowIgnoringOldKeyWindow:1 transferringScenes:?];
  }

  if ([(_UIRemoteViewControllerSceneContext *)self->_sceneContext isCapturingContentForAdditionalRenderingDestination])
  {
    v48 = MEMORY[0x1E696AEC0];
    v30 = _screen;
    if (v30)
    {
      v31 = MEMORY[0x1E696AEC0];
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = [v31 stringWithFormat:@"<%@: %p>", v33, v30];
    }

    else
    {
      v34 = @"(nil)";
    }

    v35 = v10;
    v49 = _screen;
    if (v35)
    {
      v36 = MEMORY[0x1E696AEC0];
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = [v36 stringWithFormat:@"<%@: %p>", v38, v35];
    }

    else
    {
      v39 = @"(nil)";
    }

    hostBundleID = self->_hostBundleID;
    v41 = MEMORY[0x1E696AEC0];
    selfCopy = self;
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    selfCopy = [v41 stringWithFormat:@"<%@: %p>", v44, selfCopy];

    v46 = [v48 stringWithFormat:@"view service moved from %@ to %@ via %@ %@", v34, v39, hostBundleID, selfCopy];;

    [(UIScreen *)v30 _evaluateCapturedStateForReason:v46];
    [(UIScreen *)v35 _evaluateCapturedStateForReason:v46];

    _screen = v49;
  }

  hostingHandle = [(_UIHostedWindow *)v51 hostingHandle];
  handlerCopy[2](handlerCopy, hostingHandle);
}

- (void)__setServiceInPopover:(BOOL)popover
{
  popoverCopy = popover;
  WeakRetained = objc_loadWeakRetained(&self->_dummyPopoverController);
  v5 = self->_hostedWindow;
  self->_serviceInPopover = popoverCopy;
  v6 = !popoverCopy;
  if (popoverCopy && !WeakRetained)
  {
    view = [(UIPopoverController *)[_UIViewServiceDummyPopoverController alloc] initWithContentViewController:self];
    objc_storeWeak(&self->_dummyPopoverController, view);
    [(UIPopoverController *)view setPopoverLayoutMargins:0.0, 0.0, 0.0, 0.0];
    [(UIPopoverController *)view setPopoverBackgroundViewClass:objc_opt_class()];
    [(_UIViewServiceDummyPopoverController *)view setDummyPopoverControllerDelegate:self];
    [(UIPopoverController *)view setPopoverLayoutMargins:0.0, 0.0, -1000.0, 0.0];
    [(UIPopoverController *)view presentPopoverFromRect:v5 inView:4 permittedArrowDirections:0 animated:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
LABEL_8:

    goto LABEL_9;
  }

  if (!WeakRetained)
  {
    v6 = 0;
  }

  if (v6 == 1)
  {
    [WeakRetained dismissPopoverAnimated:0];
    objc_storeWeak(&self->_dummyPopoverController, 0);
    view = [(UIViewController *)self view];
    [(UIView *)v5 addSubview:view];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)__setSheetConfiguration:(id)configuration
{
  v7 = self->_hostedWindow;
  configurationCopy = configuration;
  _rootPresentationController = [(UIWindow *)v7 _rootPresentationController];
  [_rootPresentationController _setConfiguration:configurationCopy];

  if ([(UIViewController *)self->_localViewController _shouldForceLayoutForHostedAnimation]&& +[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    [(UIView *)v7 layoutIfNeeded];
  }
}

- (void)__sheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)coefficient
{
  _rootPresentationController = [(UIWindow *)self->_hostedWindow _rootPresentationController];
  [_rootPresentationController _hostSheetInteractionDraggingDidBeginWithRubberBandCoefficient:coefficient];
}

- (void)__sheetInteractionDraggingDidChangeWithTranslation:(CGPoint)translation velocity:(CGPoint)velocity animateChange:(BOOL)change
{
  changeCopy = change;
  y = velocity.y;
  x = velocity.x;
  v8 = translation.y;
  v9 = translation.x;
  _rootPresentationController = [(UIWindow *)self->_hostedWindow _rootPresentationController];
  [_rootPresentationController _hostSheetInteractionDraggingDidChangeWithTranslation:changeCopy velocity:v9 animateChange:{v8, x, y}];
}

- (void)__sheetInteractionDraggingDidEnd
{
  _rootPresentationController = [(UIWindow *)self->_hostedWindow _rootPresentationController];
  [_rootPresentationController _hostSheetInteractionDraggingDidEnd];
}

- (void)__installDismissInteractionForZoomTransition
{
  v4 = objc_opt_new();
  [v4 setDelegate:self];
  [v4 setStyles:6];
  view = [(UIViewController *)self->_localViewController view];
  [view addInteraction:v4];
}

- (void)__hostDidEnterBackground
{
  if (self->_remoteViewControllerProxyToOperator)
  {
    stopStealingStatusBar(self->_hostedWindow);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UIViewServiceHostDidEnterBackgroundNotification" object:self->_localViewController userInfo:0];

    localViewController = self->_localViewController;

    [(UIViewController *)localViewController _hostApplicationDidEnterBackground];
  }
}

- (void)__hostWillEnterForeground
{
  if (self->_remoteViewControllerProxyToOperator)
  {
    stealStatusBar(self->_hostStatusBarOrientation, 0, self->_hostedWindow, 1);
    beginInheritingCoreMediaApplicationState(self->_mediaPID);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UIViewServiceHostWillEnterForegroundNotification" object:self->_localViewController userInfo:0];

    localViewController = self->_localViewController;

    [(UIViewController *)localViewController _hostApplicationWillEnterForeground];
  }
}

- (void)__hostSceneWillEnterForeground
{
  if (self->_remoteViewControllerProxyToOperator)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UIViewServiceHostSceneWillEnterForegroundNotification" object:self->_localViewController userInfo:0];
  }
}

- (void)__hostDidEvaluatePencilBarrelEventFocusForSceneTransition
{
  if (self->_remoteViewControllerProxyToOperator)
  {
    hostedWindow = self->_hostedWindow;
    if (hostedWindow)
    {
      _UIPencilEventRequestBarrelFocusIfAbleForWindow(hostedWindow, 0);
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"_UIViewServiceHostDidEvaluatePencilBarrelEventFocusForSceneTransition" object:self->_localViewController userInfo:0];
    }
  }
}

- (void)__hostDidDismissShieldViewForAppProtection
{
  self->_appProtectionShieldPresentedInHost = 0;
  [(UIView *)self->_hostedWindow setUserInteractionEnabled:1];
  hostedWindow = self->_hostedWindow;

  [(UIWindow *)hostedWindow _restoreFirstResponder];
}

- (void)__hostSceneDidEnterBackground
{
  if (self->_remoteViewControllerProxyToOperator)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UIViewServiceHostSceneDidEnterBackgroundNotification" object:self->_localViewController userInfo:0];
  }
}

- (void)__hostWillResignActive
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIViewServiceHostWillResignActiveNotification" object:self->_localViewController userInfo:0];
}

- (void)__hostDidBecomeActive
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIViewServiceHostDidBecomeActiveNotification" object:self->_localViewController userInfo:0];
}

- (void)__hostDidChangeStatusBarOrientationToInterfaceOrientation:(int64_t)orientation
{
  if ((orientation - 1) <= 3)
  {
    if (self->_remoteViewControllerProxyToOperator)
    {
      [UIKeyboardSceneDelegate setInterfaceOrientation:?];
      if (self->_hostStatusBarOrientation != orientation)
      {
        self->_hostStatusBarOrientation = orientation;
        stealStatusBar(orientation, 0, self->_hostedWindow, self->_hostedWindow != 0);
        [(UIViewController *)self setInterfaceOrientation:orientation];
        hostedWindow = self->_hostedWindow;
        hostStatusBarOrientation = self->_hostStatusBarOrientation;

        [(UIWindow *)hostedWindow _setWindowInterfaceOrientation:hostStatusBarOrientation];
      }
    }
  }
}

- (void)__hostDidChangeStatusBarHeight:(double)height
{
  if (height >= 0.0 && self->_hostStatusBarHeight != height)
  {
    self->_hostStatusBarHeight = height;
    initWithDefaultParameters = [[UIStatusBarStyleAnimationParameters alloc] initWithDefaultParameters];
    +[UIView _currentAnimationDuration];
    [(UIStatusBarAnimationParameters *)initWithDefaultParameters setDuration:?];
    stealStatusBar(self->_hostStatusBarOrientation, initWithDefaultParameters, self->_hostedWindow, self->_hostedWindow != 0);
  }
}

- (id)_viewControllersForRotationCallbacks
{
  v3 = MEMORY[0x1E695DFD8];
  _rotationViewControllers = [(UIWindow *)self->_hostedWindow _rotationViewControllers];
  v5 = [v3 setWithArray:_rotationViewControllers];
  v12.receiver = self;
  v12.super_class = _UIViewServiceViewControllerOperator;
  _viewControllersForRotationCallbacks = [(UIViewController *)&v12 _viewControllersForRotationCallbacks];
  v7 = [v5 setByAddingObjectsFromArray:_viewControllersForRotationCallbacks];

  v8 = MEMORY[0x1E695DF70];
  allObjects = [v7 allObjects];
  v10 = [v8 arrayWithArray:allObjects];

  return v10;
}

- (BOOL)_shouldForwardLegacyRotationOnly
{
  v2 = objc_opt_class();
  if (dyld_program_sdk_at_least())
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [v2 doesOverrideViewControllerMethod:sel_viewWillTransitionToSize_withTransitionCoordinator_];
    if (v3)
    {
      if ([v2 doesOverrideViewControllerMethod:sel_willRotateToInterfaceOrientation_duration_] & 1) != 0 || (objc_msgSend(v2, "doesOverrideViewControllerMethod:", sel_willAnimateRotationToInterfaceOrientation_duration_))
      {
        LOBYTE(v3) = 1;
      }

      else
      {

        LOBYTE(v3) = [v2 doesOverrideViewControllerMethod:sel_didRotateFromInterfaceOrientation_];
      }
    }
  }

  return v3;
}

- (void)__hostViewWillTransitionToSize:(CGSize)size withContextDescription:(id)description boundingPath:(id)path statusBarHeight:(double)height underlapsStatusBar:(BOOL)bar fence:(id)fence timing:(_UIUpdateTiming *)timing whenDone:(id)self0
{
  barCopy = bar;
  height = size.height;
  width = size.width;
  descriptionCopy = description;
  pathCopy = path;
  fenceCopy = fence;
  doneCopy = done;
  if (fenceCopy)
  {
    [UIScene _synchronizeDrawingWithFence:fenceCopy];
    if (_UIUpdateCycleEnabled())
    {
      *&v23 = _UIUpdateSchedulerRequestUpdate(&_UIUpdateCycleMainScheduler, timing, &v102).n128_u64[0];
    }
  }

  toOrientation = [descriptionCopy toOrientation];
  fromOrientation = [descriptionCopy fromOrientation];
  [descriptionCopy transitionDuration];
  v27 = v26;
  selfCopy = self;
  v29 = *MEMORY[0x1E695EFF8];
  v30 = *(MEMORY[0x1E695EFF8] + 8);
  view = [(UIViewController *)selfCopy view];
  window = [view window];
  [window bounds];
  v34 = v33;
  v36 = v35;

  v132.origin.x = v29;
  v132.origin.y = v30;
  v132.size.width = width;
  v132.size.height = height;
  v133.origin.x = v29;
  v133.origin.y = v30;
  v133.size.width = v34;
  v133.size.height = v36;
  v74 = CGRectEqualToRect(v132, v133);
  if (toOrientation == fromOrientation)
  {
    v47 = selfCopy->_hostedWindow;
    if (v47)
    {
      v48 = v47;
      v68 = barCopy;
      v69 = toOrientation != fromOrientation;
      heightCopy2 = height;
      v112[0] = MEMORY[0x1E69E9820];
      v112[1] = 3221225472;
      v112[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_6;
      v112[3] = &unk_1E7128CB8;
      v112[4] = selfCopy;
      v49 = _Block_copy(v112);
      v109[0] = MEMORY[0x1E69E9820];
      v109[1] = 3221225472;
      v109[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_8;
      v109[3] = &unk_1E70F6150;
      v109[4] = selfCopy;
      v111 = doneCopy;
      v44 = v48;
      v110 = v44;
      v50 = _Block_copy(v109);

      if (v74)
      {
        v51 = v49[2](v49);
        v73 = v50;
        (*(v50 + 2))(v50);
        v52 = &__block_literal_global_577_0;
LABEL_18:

        goto LABEL_19;
      }

      v66 = doneCopy;
      v67 = v49;
      v72 = pathCopy;
      v64 = fenceCopy;
      v65 = &__block_literal_global_577_0;
      v46 = v50;
LABEL_12:
      v53 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
      objc_storeStrong(&selfCopy->_viewControllerTransitioningContext, v53);
      [(_UIViewControllerOneToOneTransitionContext *)v53 _setFromViewController:selfCopy];
      [(_UIViewControllerOneToOneTransitionContext *)v53 _setToViewController:0];
      [(_UIViewControllerTransitionContext *)v53 _setContainerView:v44];
      [(_UIViewControllerOneToOneTransitionContext *)v53 _setFromStartFrame:v29, v30, v34, v36];
      [(_UIViewControllerOneToOneTransitionContext *)v53 _setToEndFrame:v29, v30, width, heightCopy2];
      [(_UIViewControllerOneToOneTransitionContext *)v53 _setToStartFrame:v29, v30, v34, v36];
      [(_UIViewControllerOneToOneTransitionContext *)v53 _setFromEndFrame:v29, v30, width, heightCopy2];
      [(_UIViewControllerTransitionContext *)v53 _setRotating:toOrientation != fromOrientation];
      v54 = [(_UIWindowAnimationController *)_UIHostedWindowAnimationController animationControllerWithWindow:v44];
      [(_UIViewControllerTransitionContext *)v53 _setIsAnimated:v27 > 0.0];
      [(_UIViewControllerTransitionContext *)v53 _setAnimator:v54];
      -[_UIViewControllerTransitionContext _setCompletionCurve:](v53, "_setCompletionCurve:", [descriptionCopy completionCurve]);
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_9;
      v107[3] = &unk_1E7128CE0;
      v107[4] = selfCopy;
      v73 = v46;
      v108 = v73;
      [(_UIViewControllerTransitionContext *)v53 _setDidCompleteHandler:v107];
      [(_UIViewControllerTransitionContext *)v53 _setDuration:v27];
      _shouldForwardLegacyRotationOnly = [(_UIViewServiceViewControllerOperator *)selfCopy _shouldForwardLegacyRotationOnly];
      v102.n128_u64[0] = 0;
      v102.n128_u64[1] = &v102;
      v103 = 0x3032000000;
      v104 = __Block_byref_object_copy__231;
      v105 = __Block_byref_object_dispose__231;
      v106 = 0;
      v71 = v54;
      [v54 setDuration:v27];
      v56 = !v74;
      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_579;
      v91[3] = &unk_1E7128D08;
      v100 = v69;
      v44 = v44;
      v97 = toOrientation;
      v101 = !v74;
      v92 = v44;
      v93 = selfCopy;
      v98 = width;
      v99 = heightCopy2;
      v57 = v72;
      v94 = v57;
      v75 = v65;
      v95 = v75;
      v96 = &v102;
      [v71 setTransitionActions:v91];
      [(_UIViewServiceViewControllerOperator *)selfCopy __setHostViewUnderlapsStatusBar:v68];
      if (_shouldForwardLegacyRotationOnly)
      {
        [(_UIViewServiceViewControllerOperator *)selfCopy __hostWillRotateToInterfaceOrientation:toOrientation duration:0 skipSelf:v27];
        _transitionCoordinator = [(_UIViewControllerTransitionContext *)v53 _transitionCoordinator];
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_2_580;
        v82[3] = &unk_1E7128D30;
        v90 = v56;
        v82[4] = selfCopy;
        v84 = v29;
        v85 = v30;
        v86 = width;
        v87 = heightCopy2;
        v83 = v57;
        v88 = toOrientation;
        v89 = v27;
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_3_582;
        v78[3] = &unk_1E7128D58;
        v78[4] = selfCopy;
        v81 = fromOrientation;
        v80 = v66;
        v79 = v44;
        [_transitionCoordinator animateAlongsideTransition:v82 completion:v78];
      }

      else
      {
        v59 = v67[2]();
        v60 = *(v102.n128_u64[1] + 40);
        *(v102.n128_u64[1] + 40) = v59;

        if (toOrientation == fromOrientation)
        {
          _transitionCoordinator2 = [(_UIViewControllerTransitionContext *)v53 _transitionCoordinator];
          v76[0] = MEMORY[0x1E69E9820];
          v76[1] = 3221225472;
          v76[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_4_583;
          v76[3] = &unk_1E70F3B98;
          v77 = v44;
          [_transitionCoordinator2 animateAlongsideTransition:v76 completion:0];
        }

        _transitionCoordinator3 = [(_UIViewControllerTransitionContext *)v53 _transitionCoordinator];
        [(UIViewController *)selfCopy _window:v44 viewWillTransitionToSize:_transitionCoordinator3 withTransitionCoordinator:width, heightCopy2];
      }

      _animator = [(_UIViewControllerTransitionContext *)v53 _animator];
      [_animator animateTransition:v53];

      _Block_object_dispose(&v102, 8);
      pathCopy = v72;
      fenceCopy = v64;
      doneCopy = v66;
      v49 = v67;
      v52 = v75;
      goto LABEL_18;
    }
  }

  else if ((toOrientation - 1) <= 3)
  {
    v37 = selfCopy->_hostedWindow;
    if (v37)
    {
      v38 = v37;
      v68 = barCopy;
      v69 = toOrientation != fromOrientation;
      heightCopy2 = height;
      v64 = fenceCopy;
      v72 = pathCopy;
      v39 = [(NSMutableArray *)selfCopy->_deputyRotationDelegates copy];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke;
      aBlock[3] = &unk_1E7128C40;
      aBlock[4] = selfCopy;
      v130 = toOrientation;
      v40 = v39;
      v128 = v40;
      v131 = v27;
      v41 = v38;
      v129 = v41;
      v67 = _Block_copy(aBlock);
      v120[0] = MEMORY[0x1E69E9820];
      v120[1] = 3221225472;
      v120[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_2;
      v120[3] = &unk_1E7128C68;
      v42 = v40;
      v124 = v27;
      v125 = toOrientation;
      v121 = v42;
      v122 = selfCopy;
      heightCopy3 = height;
      v43 = v41;
      v123 = v43;
      v65 = _Block_copy(v120);
      v113[0] = MEMORY[0x1E69E9820];
      v113[1] = 3221225472;
      v113[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_5;
      v113[3] = &unk_1E7128C90;
      v114 = v42;
      v118 = fromOrientation;
      v44 = v43;
      v119 = toOrientation;
      v115 = v44;
      v116 = selfCopy;
      v66 = doneCopy;
      v117 = doneCopy;
      v45 = v42;
      v46 = _Block_copy(v113);
      [(UIWindow *)v44 _setToWindowOrientation:toOrientation];
      [(UIWindow *)v44 _setFromWindowOrientation:fromOrientation];

      goto LABEL_12;
    }
  }

LABEL_19:
}

- (void)__hostWillRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration skipSelf:(BOOL)self
{
  selfCopy = self;
  v35 = *MEMORY[0x1E69E9840];
  _viewControllersForRotationCallbacks = [(_UIViewServiceViewControllerOperator *)self _viewControllersForRotationCallbacks];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = [_viewControllersForRotationCallbacks countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(_viewControllersForRotationCallbacks);
        }

        localViewController = *(*(&v29 + 1) + 8 * i);
        if (localViewController == self)
        {
          if (!selfCopy)
          {
            [(UIViewController *)self willRotateToInterfaceOrientation:orientation duration:duration];
          }

          localViewController = self->_localViewController;
        }

        [(UIViewController *)localViewController _willRotateToInterfaceOrientation:orientation duration:[(UIViewController *)localViewController _forwardRotationMethods] forwardToChildControllers:selfCopy skipSelf:duration];
      }

      v11 = [_viewControllersForRotationCallbacks countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  [(UIViewController *)self _updateLastKnownInterfaceOrientationOnPresentionStack:orientation];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = self->_deputyRotationDelegates;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v25 + 1) + 8 * j) willRotateToInterfaceOrientation:orientation duration:duration];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  hostedWindow = self->_hostedWindow;
  v22 = MEMORY[0x1E695DF20];
  v23 = [MEMORY[0x1E696AD98] numberWithInt:orientation];
  v24 = [v22 dictionaryWithObjectsAndKeys:{v23, @"UIWindowNewOrientationUserInfoKey", 0, v25}];
  [defaultCenter postNotificationName:@"UIWindowWillRotateNotification" object:hostedWindow userInfo:v24];
}

- (void)__hostWillAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration skipSelf:(BOOL)self
{
  selfCopy = self;
  v25 = *MEMORY[0x1E69E9840];
  _viewControllersForRotationCallbacks = [(_UIViewServiceViewControllerOperator *)self _viewControllersForRotationCallbacks];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [_viewControllersForRotationCallbacks countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(_viewControllersForRotationCallbacks);
        }

        localViewController = *(*(&v20 + 1) + 8 * i);
        view = [(UIViewController *)localViewController view];
        layer = [view layer];
        [layer layoutBelowIfNeeded];

        if (localViewController == self)
        {
          if (!selfCopy)
          {
            [(UIViewController *)self willAnimateRotationToInterfaceOrientation:orientation duration:duration];
          }

          localViewController = self->_localViewController;
        }

        [(UIViewController *)localViewController _willAnimateRotationToInterfaceOrientation:orientation duration:[(UIViewController *)localViewController _forwardRotationMethods] forwardToChildControllers:selfCopy skipSelf:duration];
      }

      v11 = [_viewControllersForRotationCallbacks countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = [(NSMutableArray *)self->_deputyRotationDelegates count]!= 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __106___UIViewServiceViewControllerOperator___hostWillAnimateRotationToInterfaceOrientation_duration_skipSelf___block_invoke;
  v19[3] = &__block_descriptor_40_e24_v24__0___v___8___v__B_16l;
  *&v19[4] = duration;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __106___UIViewServiceViewControllerOperator___hostWillAnimateRotationToInterfaceOrientation_duration_skipSelf___block_invoke_2;
  v18[3] = &unk_1E70F6848;
  v18[4] = self;
  v18[5] = orientation;
  *&v18[6] = duration;
  [UIView conditionallyAnimate:v17 withAnimation:v19 layout:v18 completion:0];
}

- (void)__hostDidRotateFromInterfaceOrientation:(int64_t)orientation skipSelf:(BOOL)self
{
  selfCopy = self;
  v33 = *MEMORY[0x1E69E9840];
  _viewControllersForRotationCallbacks = [(_UIViewServiceViewControllerOperator *)self _viewControllersForRotationCallbacks];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [_viewControllersForRotationCallbacks countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(_viewControllersForRotationCallbacks);
        }

        localViewController = *(*(&v27 + 1) + 8 * i);
        if (localViewController == self)
        {
          if (!selfCopy)
          {
            [(UIViewController *)self didRotateFromInterfaceOrientation:orientation];
          }

          localViewController = self->_localViewController;
        }

        [(UIViewController *)localViewController _didRotateFromInterfaceOrientation:orientation forwardToChildControllers:[(UIViewController *)localViewController _forwardRotationMethods] skipSelf:selfCopy];
      }

      v9 = [_viewControllersForRotationCallbacks countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = self->_deputyRotationDelegates;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v23 + 1) + 8 * j) finishRotationFromInterfaceOrientation:orientation];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  hostedWindow = self->_hostedWindow;
  v20 = MEMORY[0x1E695DF20];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:orientation];
  v22 = [v20 dictionaryWithObjectsAndKeys:{v21, @"UIWindowOldOrientationUserInfoKey", 0, v23}];
  [defaultCenter postNotificationName:@"UIWindowDidRotateNotification" object:hostedWindow userInfo:v22];
}

- (id)_supportedInterfaceOrientationsForViewController:(id)controller
{
  supportedInterfaceOrientations = [controller supportedInterfaceOrientations];
  self->_supportedOrientations = supportedInterfaceOrientations;

  return _supportedInterfaceOrientationsForMask(supportedInterfaceOrientations);
}

- (void)__createViewControllerWithOptions:(id)options completionBlock:(id)block
{
  v125 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  viewControllerClassName = [optionsCopy viewControllerClassName];
  contextToken = [optionsCopy contextToken];
  v9 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED499960) + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v10 = MEMORY[0x1E696AEC0];
      selfCopy = self;
      v12 = contextToken;
      selfCopy2 = self;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      selfCopy2 = [v10 stringWithFormat:@"<%@: %p>", v15, selfCopy2];

      contextToken = v12;
    }

    else
    {
      selfCopy = 0;
      selfCopy2 = @"(nil)";
    }

    *buf = 138543874;
    v120 = selfCopy2;
    v121 = 2114;
    v122 = viewControllerClassName;
    v123 = 2114;
    v124 = contextToken;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Received request to create view controller: self: %{public}@; class: %{public}@; contextToken: %{public}@", buf, 0x20u);

    self = selfCopy;
  }

  displayConfigurations = [optionsCopy displayConfigurations];
  traitCollection = [optionsCopy traitCollection];
  v19 = _unobscuredTraitCollectionFromTraitCollection(traitCollection);

  initialInterfaceOrientation = [optionsCopy initialInterfaceOrientation];
  hostAccessibilityServerPort = [optionsCopy hostAccessibilityServerPort];
  availableTextServices = [optionsCopy availableTextServices];
  if (!self->_localViewController)
  {
    v96 = availableTextServices;
    v100 = optionsCopy;
    v102 = hostAccessibilityServerPort;
    v104 = contextToken;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("ViewServices", &qword_1ED499970);
    v27 = *(CategoryCachedImpl + 8);
    selfCopy3 = self;
    v29 = v27;
    v105 = selfCopy3;
    v30 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), selfCopy3);
    if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v31 = v30;
      if (os_signpost_enabled(v29))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_188A29000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v31, "VCOperatorCreateViewController", "", buf, 2u);
      }
    }

    v99 = v19;
    v101 = v19;
    v97 = _UISetCurrentFallbackEnvironment(v101);
    v105->_editAlertToken = 0;
    [UIApp _forceEndIgnoringInteractionEvents];
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v103 = displayConfigurations;
    v32 = displayConfigurations;
    v33 = [v32 countByEnumeratingWithState:&v114 objects:v118 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v115;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v115 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v114 + 1) + 8 * i);
          if (_UIApplicationIsExtension())
          {
            v38 = 0;
          }

          else
          {
            v38 = [UIApp _hasCalledRunWithMainScene] ^ 1;
          }

          [UIScreen _FBSDisplayConfigurationConnected:v37 andNotify:v38];
          if (([UIApp _appAdoptsUISceneLifecycle] & 1) == 0 && (_UIApplicationIsExtension() & 1) == 0)
          {
            identity = [v37 identity];
            v40 = [UIScreen _screenWithFBSDisplayIdentity:identity];
            v41 = [UIWindowScene _placeholderWindowSceneForScreen:v40 create:1];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v114 objects:v118 count:16];
      }

      while (v34);
    }

    v42 = [v32 copy];
    pluginDisplayConfigurations = v105->_pluginDisplayConfigurations;
    v105->_pluginDisplayConfigurations = v42;

    [(_UIViewServiceViewControllerOperator *)v105 __hostDidChangeStatusBarOrientationToInterfaceOrientation:initialInterfaceOrientation];
    _findUISceneForLegacyInterfaceOrientation = [UIApp _findUISceneForLegacyInterfaceOrientation];
    if (_findUISceneForLegacyInterfaceOrientation)
    {
      v45 = WeakRetained;
      v46 = v103;
      contextToken = v104;
    }

    else
    {
      v45 = WeakRetained;
      v46 = v103;
      contextToken = v104;
      if (initialInterfaceOrientation == 1)
      {
        mainScreen = [objc_opt_self() mainScreen];
        _interfaceOrientation = [mainScreen _interfaceOrientation];

        if (_interfaceOrientation == 1)
        {
          goto LABEL_32;
        }

        _findUISceneForLegacyInterfaceOrientation = [objc_opt_self() mainScreen];
        [_findUISceneForLegacyInterfaceOrientation _setInterfaceOrientation:1];
      }
    }

LABEL_32:
    v49 = [_UIViewServiceClientViewControllerMaterializer alloc];
    manager = [v45 manager];
    v113 = 0;
    v51 = [(_UIViewServiceClientViewControllerMaterializer *)&v49->super.isa initWithSessionManager:manager requestedViewControllerClass:viewControllerClassName contextToken:contextToken outError:&v113];
    v52 = v113;

    v98 = v51;
    if (v52)
    {
      v25 = blockCopy;
      (*(blockCopy + 2))(blockCopy, 0, v52);
      v19 = v99;
      optionsCopy = v100;
      v23 = v101;
      hostAccessibilityServerPort = v102;
LABEL_58:

      displayConfigurations = v46;
      goto LABEL_59;
    }

    if (v51)
    {
      v53 = v51[7];
    }

    else
    {
      v53 = 0;
    }

    objc_storeStrong(&v105->_localViewController, v53);
    [(UIViewController *)v105 addChildViewController:v105->_localViewController];
    [(_UIViewServiceClientViewControllerMaterializer *)v51 prepareViewControllerExtensionContext];
    [(UIViewController *)v105->_localViewController preferredContentSize];
    [(UIViewController *)v105 setPreferredContentSize:?];
    mainScreen2 = [objc_opt_self() mainScreen];
    [mainScreen2 bounds];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    _isSecureForRemoteViewService = [objc_opt_class() _isSecureForRemoteViewService];
    v64 = off_1E70EC1C8;
    if (!_isSecureForRemoteViewService)
    {
      v64 = off_1E70EB8B8;
    }

    v65 = [objc_alloc(*v64) initWithFrame:{v56, v58, v60, v62}];
    objc_storeStrong(&v105->_hostedWindow, v65);
    [(_UIHostedWindow *)v65 _setHostBundleIdentifier:?];
    if (v65)
    {
      v66 = *&v105->_hostAuditToken.val[4];
      v65[61] = *v105->_hostAuditToken.val;
      v65[62] = v66;
      [v65 _updateStrictTouchVerificationIfNecessary];
    }

    v67 = v45;
    [v65 _setHostTraitCollection:v101];
    v68 = [UIWindowScene _unassociatedWindowSceneForScreen:mainScreen2 create:1];
    [v65 setWindowScene:v68];
    [v65 setRootViewController:v105];
    [v65 setBackgroundColor:0];
    [v65 setHidden:0];
    [v65 makeKeyWindow];
    [(_UIViewServiceViewControllerOperator *)v105 _installActivityObserverGestureIfNeeded];
    v95 = mainScreen2;
    v69 = +[_UIViewServiceSessionActivityRecord activityRecordForProvider:userInterfaceIdiom:](_UIViewServiceSessionActivityRecord, v105, [mainScreen2 _userInterfaceIdiom]);
    sessionActivityRecord = v105->_sessionActivityRecord;
    v105->_sessionActivityRecord = v69;

    v94 = v68;
    _physicalButtonInteractionArbiter = [v68 _physicalButtonInteractionArbiter];
    v72 = [(_UIPhysicalButtonInteractionArbiter *)_physicalButtonInteractionArbiter _registerViewServiceObserver:v105];
    physicalButtonInteractionArbiterObserverToken = v105->_physicalButtonInteractionArbiterObserverToken;
    v105->_physicalButtonInteractionArbiterObserverToken = v72;

    v74 = +[_UIActiveViewServiceSessionTracker sharedTracker];
    [(_UIActiveViewServiceSessionTracker *)v74 handleViewServiceActivity:v65 inHostedWindow:v105 fromProvider:v105->_sessionActivityRecord forSessionActivityRecord:?];

    _rootPresentationController = [v65 _rootPresentationController];
    [_rootPresentationController setDelegate:v105];

    if (objc_opt_respondsToSelector())
    {
      _accessibilityMachPort = [UIApp _accessibilityMachPort];
      optionsCopy = v100;
      v77 = v102;
      v78 = v97;
      if (_accessibilityMachPort)
      {
        v79 = _accessibilityMachPort;
        mach_port_insert_right(*MEMORY[0x1E69E9A60], v79, v79, 0x14u);
        v93 = [objc_alloc(MEMORY[0x1E698E6C8]) initWithPort:v79];
        if (!v102)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v93 = 0;
        if (!v102)
        {
LABEL_52:
          v105->_availableTextServices = v96;
          view = [(UIViewController *)v105->_localViewController view];
          if (dyld_program_sdk_at_least())
          {
            [view setAutoresizingMask:18];
            view2 = [(UIViewController *)v105 view];
            [view2 bounds];
            [view setFrame:?];
          }

          view3 = [(UIViewController *)v105 view];
          [view3 addSubview:view];

          [v67 viewControllerOperator:v105 didCreateServiceViewControllerOfClass:objc_opt_class()];
          v86 = UIApp;
          v108[0] = MEMORY[0x1E69E9820];
          v108[1] = 3221225472;
          v108[2] = __90___UIViewServiceViewControllerOperator___createViewControllerWithOptions_completionBlock___block_invoke;
          v108[3] = &unk_1E70F5F08;
          v87 = v65;
          v109 = v87;
          v110 = v105;
          v88 = v93;
          v111 = v88;
          v112 = blockCopy;
          [v86 _performBlockAfterCATransactionCommits:v108];
          _UIRestorePreviousFallbackEnvironment(v78);
          v89 = __UILogGetCategoryCachedImpl("ViewServices", &qword_1ED499978);
          v90 = *(v89 + 8);
          v91 = os_signpost_id_make_with_pointer(*(v89 + 8), v105);
          if (v91 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v92 = v91;
            if (os_signpost_enabled(v90))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_188A29000, v90, OS_SIGNPOST_INTERVAL_END, v92, "VCOperatorCreateViewController", "", buf, 2u);
            }
          }

          v25 = blockCopy;
          v46 = v103;
          contextToken = v104;
          v19 = v99;
          v23 = v101;
          hostAccessibilityServerPort = v102;
          v52 = 0;
          goto LABEL_58;
        }
      }
    }

    else
    {
      v93 = 0;
      optionsCopy = v100;
      v77 = v102;
      v78 = v97;
      if (!v102)
      {
        goto LABEL_52;
      }
    }

    extractPortAndIKnowWhatImDoingISwear = [v77 extractPortAndIKnowWhatImDoingISwear];
    if (extractPortAndIKnowWhatImDoingISwear - 1 <= 0xFFFFFFFD)
    {
      v81 = extractPortAndIKnowWhatImDoingISwear;
      if (mach_port_mod_refs(*MEMORY[0x1E69E9A60], extractPortAndIKnowWhatImDoingISwear, 0, 1))
      {
        v82 = 0;
      }

      else
      {
        v82 = v81;
      }

      v105->_hostAccessibilityServerPort = v82;
    }

    goto LABEL_52;
  }

  v23 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:967219 userInfo:0];
  v24 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED499968) + 8);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v120 = v23;
    _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Rejecting view controller creation request as connection has an existing instantiated view controller: %{public}@", buf, 0xCu);
  }

  v25 = blockCopy;
  (*(blockCopy + 2))(blockCopy, 0, v23);
LABEL_59:
}

- (void)__exchangeAccessibilityPortInformation:(id)information replyHandler:(id)handler
{
  v18[1] = *MEMORY[0x1E69E9840];
  informationCopy = information;
  handlerCopy = handler;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E695E650];
    v18[0] = @"Remote service does not respond to _accessibilityMachPort";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v11 errorWithDomain:@"Accessibility" code:0 userInfo:v12];
    handlerCopy[2](handlerCopy, 0, v13);

LABEL_6:
    v10 = 0;
    if (!informationCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  _accessibilityMachPort = [UIApp _accessibilityMachPort];
  if (!_accessibilityMachPort)
  {
    goto LABEL_6;
  }

  v9 = _accessibilityMachPort;
  mach_port_insert_right(*MEMORY[0x1E69E9A60], v9, v9, 0x14u);
  v10 = [objc_alloc(MEMORY[0x1E698E6C8]) initWithPort:v9];
  if (!informationCopy)
  {
    goto LABEL_12;
  }

LABEL_7:
  extractPortAndIKnowWhatImDoingISwear = [informationCopy extractPortAndIKnowWhatImDoingISwear];
  if (extractPortAndIKnowWhatImDoingISwear - 1 <= 0xFFFFFFFD)
  {
    v15 = extractPortAndIKnowWhatImDoingISwear;
    if (mach_port_mod_refs(*MEMORY[0x1E69E9A60], extractPortAndIKnowWhatImDoingISwear, 0, 1))
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    self->_hostAccessibilityServerPort = v16;
  }

LABEL_12:
  (handlerCopy)[2](handlerCopy, v10, 0);
}

- (void)__setContentSize:(CGSize)size boundingPath:(id)path withFence:(id)fence
{
  height = size.height;
  width = size.width;
  pathCopy = path;
  if (fence)
  {
    fenceCopy = fence;
    _window = [(_UIViewServiceViewControllerOperator *)self _window];
    _windowHostingScene = [_window _windowHostingScene];
    [_windowHostingScene _synchronizeDrawingWithFence:fenceCopy];
  }

  [(_UIViewServiceViewControllerOperator *)self __setContentSize:pathCopy boundingPath:width, height];
}

- (void)__setContentSize:(CGSize)size boundingPath:(id)path
{
  height = size.height;
  width = size.width;
  pathCopy = path;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("ViewServices", &qword_1ED499980);
  v9 = *(CategoryCachedImpl + 8);
  v10 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "VCOperatorSetContentSize", "", buf, 2u);
    }
  }

  v12 = self->_hostedWindow;
  v13 = *MEMORY[0x1E695EFF8];
  v14 = *(MEMORY[0x1E695EFF8] + 8);
  [(UIView *)v12 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(UIWindow *)v12 setFrame:v13, v14, width, height];
  [(_UIViewServiceViewControllerOperator *)self __setBoundingPath:pathCopy];

  [(UIView *)v12 layoutBelowIfNeeded];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    _existingView = [(UIViewController *)self _existingView];
    [_existingView setFrame:{v13, v14, width, height}];

    _existingView2 = [(UIViewController *)self->_localViewController _existingView];
    [_existingView2 setFrame:{v13, v14, width, height}];

    _existingView3 = [(UIViewController *)self _existingView];
    [_existingView3 layoutBelowIfNeeded];

    _existingView4 = [(UIViewController *)self->_localViewController _existingView];
    [_existingView4 layoutBelowIfNeeded];
  }

  [(UIViewController *)self window:v12 willAnimateFromContentFrame:v16 toContentFrame:v18, v20, v22, v13, v14, width, height];
  if (!self->_viewControllerTransitioningContext)
  {
    v27 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
    [(_UIViewControllerOneToOneTransitionContext *)v27 _setFromViewController:self];
    [(_UIViewControllerOneToOneTransitionContext *)v27 _setToViewController:0];
    [(_UIViewControllerTransitionContext *)v27 _setContainerView:v12];
    [(_UIViewControllerOneToOneTransitionContext *)v27 _setFromStartFrame:v16, v18, v20, v22];
    [(_UIViewControllerOneToOneTransitionContext *)v27 _setToEndFrame:v13, v14, width, height];
    [(_UIViewControllerOneToOneTransitionContext *)v27 _setToStartFrame:v16, v18, v20, v22];
    [(_UIViewControllerOneToOneTransitionContext *)v27 _setFromEndFrame:v13, v14, width, height];
    [(_UIViewControllerTransitionContext *)v27 _setRotating:0];
    v28 = [(_UIWindowAnimationController *)_UIHostedWindowAnimationController animationControllerWithWindow:v12];
    [(_UIViewControllerTransitionContext *)v27 _setIsAnimated:0];
    [(_UIViewControllerTransitionContext *)v27 _setAnimator:v28];
    _transitionCoordinator = [(_UIViewControllerTransitionContext *)v27 _transitionCoordinator];
    [(UIViewController *)self _window:v12 viewWillTransitionToSize:_transitionCoordinator withTransitionCoordinator:width, height];
    [v28 animateTransition:v27];
  }

  WeakRetained = objc_loadWeakRetained(&self->_dummyPopoverController);
  [WeakRetained presentPopoverFromRect:v12 inView:4 permittedArrowDirections:0 animated:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  v31 = __UILogGetCategoryCachedImpl("ViewServices", &qword_1ED499988);
  v32 = *(v31 + 8);
  v33 = os_signpost_id_make_with_pointer(*(v31 + 8), self);
  if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v34 = v33;
    if (os_signpost_enabled(v32))
    {
      *v35 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v32, OS_SIGNPOST_INTERVAL_END, v34, "VCOperatorSetContentSize", "", v35, 2u);
    }
  }
}

- (void)__setBoundingPath:(id)path
{
  pathCopy = path;
  v5 = self->_hostedWindow;
  if (v5)
  {
    [pathCopy setCoordinateSpace:v5];
    if (([pathCopy validateForCoordinateSpace] & 1) == 0)
    {
      v6 = [_UIRectangularBoundingPath alloc];
      [(UIView *)v5 bounds];
      v7 = [(_UIRectangularBoundingPath *)v6 initWithCoordinateSpace:v5 boundingRect:?];

      pathCopy = v7;
    }

    [(UIView *)v5 _setBoundingPath:pathCopy];
    v23 = 0;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v10 = 0u;
    v9 = 0u;
    v8 = 32;
    [(UIView *)v5 _notifyGeometryObserversWithChangeInfo:?];
  }
}

- (void)__hostDidPromoteFirstResponder
{
  if (![(UIResponder *)self->_localViewController _disableAutomaticKeyboardBehavior])
  {
    v9 = self->_hostedWindow;
    windowScene = [(UIWindow *)v9 windowScene];
    keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

    [(UIWindow *)v9 _setIsResigningFirstResponderFromHost:1];
    firstResponder = [(UIWindow *)v9 firstResponder];
    [firstResponder resignFirstResponder];

    responder = [keyboardSceneDelegate responder];
    v7 = [(UIResponder *)v9 _containsResponder:responder];

    if (v7)
    {
      [keyboardSceneDelegate _reloadInputViewsForResponder:0];
    }

    [(UIWindow *)v9 _setIsResigningFirstResponderFromHost:0];
    v8 = [_UIEditMenuSceneComponent sceneComponentForView:v9];
    [v8 dismissCurrentMenu];
  }
}

- (void)__hostDidSetContentOverlayInsets:(UIEdgeInsets)insets andLeftMargin:(double)margin rightMargin:(double)rightMargin
{
  v6.f64[0] = insets.top;
  v6.f64[1] = insets.left;
  v7.f64[0] = insets.bottom;
  v7.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, *&self->_localViewControllerRequestedInsets.top), vceqq_f64(v7, *&self->_localViewControllerRequestedInsets.bottom)))) & 1) != 0 && self->_localViewControllerRequestedLeftMargin == margin && self->_localViewControllerRequestedRightMargin == rightMargin)
  {
    return;
  }

  self->_localViewControllerRequestedInsets = insets;
  self->_localViewControllerRequestedLeftMargin = margin;
  self->_localViewControllerRequestedRightMargin = rightMargin;
  if (![(_UIViewServiceViewControllerOperator *)self _providesCustomBasePresentationInsets:*&insets.top])
  {
    v17 = self->_hostedWindow;
    [(UIView *)v17 setSafeAreaInsets:v13, v14, v15, v16];
    [(UIViewController *)self _sceneSettingsSafeAreaInsetsDidChangeForWindow:v17];
    if ([(UIViewController *)self->_localViewController _shouldForceLayoutForHostedAnimation]&& +[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      [(UIView *)v17 layoutIfNeeded];
    }

    goto LABEL_10;
  }

  [(UIViewController *)self->_localViewController _recursiveUpdateContentOverlayInsetsFromParentIfNecessary];
  presentedViewController = [(UIViewController *)self presentedViewController];
  if (presentedViewController)
  {
    v17 = presentedViewController;
    [(UIViewController *)presentedViewController _recursiveUpdateContentOverlayInsetsFromParentIfNecessary];
LABEL_10:
    presentedViewController = v17;
  }
}

- (UIEdgeInsets)_customBasePresentationInsetsForView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  [viewCopy convertRect:0 toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  view = [(UIViewController *)self view];
  window = [view window];
  if (window)
  {
    view2 = [(UIViewController *)self view];
    view3 = [(UIViewController *)self view];
    [view3 bounds];
    [view2 convertRect:0 toView:?];
    v18 = v17;
    v47 = v19;
    v42 = v21;
    v43 = v20;
  }

  else
  {
    view2 = [(_UIViewServiceViewControllerOperator *)self _window];
    [view2 bounds];
    v18 = v22;
    v47 = v23;
    v42 = v25;
    v43 = v24;
  }

  top = self->_localViewControllerRequestedInsets.top;
  bottom = self->_localViewControllerRequestedInsets.bottom;
  left = self->_localViewControllerRequestedInsets.left;
  right = self->_localViewControllerRequestedInsets.right;
  v48.origin.x = v6;
  v48.origin.y = v8;
  v48.size.width = v10;
  v48.size.height = v12;
  MinY = CGRectGetMinY(v48);
  v49.origin.x = v18;
  v49.origin.y = v47;
  v49.size.width = v43;
  v49.size.height = v42;
  v41 = fmax(top - fmax(MinY - CGRectGetMinY(v49), 0.0), 0.0);
  v50.origin.x = v6;
  v50.origin.y = v8;
  v50.size.width = v10;
  v50.size.height = v12;
  MinX = CGRectGetMinX(v50);
  v51.origin.x = v18;
  v51.origin.y = v47;
  v51.size.width = v43;
  v51.size.height = v42;
  v38 = CGRectGetMinX(v51);
  v52.origin.x = v18;
  v52.origin.y = v47;
  v52.size.width = v43;
  v52.size.height = v42;
  MaxY = CGRectGetMaxY(v52);
  v53.origin.x = v6;
  v53.origin.y = v8;
  v53.size.width = v10;
  v53.size.height = v12;
  v36 = CGRectGetMaxY(v53);
  v54.origin.x = v18;
  v54.origin.y = v47;
  v54.size.width = v43;
  v54.size.height = v42;
  MaxX = CGRectGetMaxX(v54);
  v55.origin.x = v6;
  v55.origin.y = v8;
  v55.size.width = v10;
  v55.size.height = v12;
  v28 = CGRectGetMaxX(v55);
  hostStatusBarHeight = self->_hostStatusBarHeight;
  _UIAppStatusBarDefaultHeight();
  if (hostStatusBarHeight == 0.0)
  {
    v31 = vabdd_f64(v8, v47) == 0.0 - v30;
    v32 = v41;
    if (v31)
    {
      v32 = self->_localViewControllerRequestedInsets.top;
    }
  }

  else
  {
    v32 = v41;
  }

  v33 = fmax(right - fmax(MaxX - v28, 0.0), 0.0);
  v34 = fmax(bottom - fmax(MaxY - v36, 0.0), 0.0);
  v35 = fmax(left - fmax(MinX - v38, 0.0), 0.0);
  result.right = v33;
  result.bottom = v34;
  result.left = v35;
  result.top = v32;
  return result;
}

- (UIEdgeInsets)_viewSafeAreaInsetsFromScene
{
  _providesCustomBasePresentationInsets = [(_UIViewServiceViewControllerOperator *)self _providesCustomBasePresentationInsets];
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (!_providesCustomBasePresentationInsets)
  {
    v8.receiver = self;
    v8.super_class = _UIViewServiceViewControllerOperator;
    [(UIViewController *)&v8 _viewSafeAreaInsetsFromScene:0.0];
  }

  result.right = v7;
  result.bottom = v6;
  result.left = v4;
  result.top = v5;
  return result;
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  controllerCopy = controller;
  if (self->_localViewController == controllerCopy && [(_UIViewServiceViewControllerOperator *)self _providesCustomBasePresentationInsets])
  {
    *absolute = 1;
    top = self->_localViewControllerRequestedInsets.top;
    left = self->_localViewControllerRequestedInsets.left;
    bottom = self->_localViewControllerRequestedInsets.bottom;
    right = self->_localViewControllerRequestedInsets.right;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = _UIViewServiceViewControllerOperator;
    [(UIViewController *)&v19 _edgeInsetsForChildViewController:controllerCopy insetsAreAbsolute:absolute];
    top = v11;
    left = v12;
    bottom = v13;
    right = v14;
  }

  v15 = top;
  v16 = left;
  v17 = bottom;
  v18 = right;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (void)_marginInfoForChild:(id)child leftMargin:(double *)margin rightMargin:(double *)rightMargin
{
  if (self->_localViewController == child)
  {
    *margin = self->_localViewControllerRequestedLeftMargin;
    *rightMargin = self->_localViewControllerRequestedRightMargin;
  }

  else
  {
    v8 = v5;
    v9 = v6;
    v7.receiver = self;
    v7.super_class = _UIViewServiceViewControllerOperator;
    [UIViewController _marginInfoForChild:sel__marginInfoForChild_leftMargin_rightMargin_ leftMargin:? rightMargin:?];
  }
}

- (void)setNeedsStatusBarAppearanceUpdate
{
  v12.receiver = self;
  v12.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v12 setNeedsStatusBarAppearanceUpdate];
  _effectiveStatusBarStyleViewController = [(UIViewController *)self _effectiveStatusBarStyleViewController];
  _effectiveStatusBarHiddenViewController = [(UIViewController *)self _effectiveStatusBarHiddenViewController];
  if ([objc_opt_class() doesOverrideViewControllerMethod:sel__preferredStatusBarVisibility])
  {
    _preferredStatusBarVisibility = [_effectiveStatusBarHiddenViewController _preferredStatusBarVisibility];
LABEL_8:
    v6 = _preferredStatusBarVisibility;
    goto LABEL_9;
  }

  if (![objc_opt_class() doesOverrideViewControllerMethod:sel_prefersStatusBarHidden])
  {
    v11.receiver = self;
    v11.super_class = _UIViewServiceViewControllerOperator;
    _preferredStatusBarVisibility = [(UIViewController *)&v11 _preferredStatusBarVisibility];
    goto LABEL_8;
  }

  if ([_effectiveStatusBarHiddenViewController prefersStatusBarHidden])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

LABEL_9:
  remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
  preferredStatusBarStyle = [_effectiveStatusBarStyleViewController preferredStatusBarStyle];
  preferredStatusBarUpdateAnimation = [_effectiveStatusBarStyleViewController preferredStatusBarUpdateAnimation];
  v10 = +[UIView _currentAnimationSettings];
  [remoteViewControllerProxyToOperator __viewServiceDidUpdatePreferredStatusBarStyle:preferredStatusBarStyle preferredStatusBarVisibility:v6 updateAnimation:preferredStatusBarUpdateAnimation currentAnimationSettings:v10];
}

- (void)setNeedsWhitePointAdaptivityStyleUpdate
{
  v7.receiver = self;
  v7.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v7 setNeedsWhitePointAdaptivityStyleUpdate];
  _effectiveWhitePointAdaptivityStyleViewController = [(UIViewController *)self _effectiveWhitePointAdaptivityStyleViewController];
  remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
  preferredWhitePointAdaptivityStyle = [_effectiveWhitePointAdaptivityStyleViewController preferredWhitePointAdaptivityStyle];
  v6 = +[UIView _currentAnimationSettings];
  [remoteViewControllerProxyToOperator __viewServiceDidUpdatePreferredWhitePointAdaptationStyle:preferredWhitePointAdaptivityStyle animationSettings:v6];
}

- (void)setNeedsUpdateOfScreenEdgesDeferringSystemGestures
{
  v4.receiver = self;
  v4.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v4 setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
  _effectiveScreenEdgesDeferringSystemGesturesViewController = [(UIViewController *)self _effectiveScreenEdgesDeferringSystemGesturesViewController];
  [self->_remoteViewControllerProxyToOperator __viewServiceDidUpdatePreferredScreenEdgesDeferringSystemGestures:{objc_msgSend(_effectiveScreenEdgesDeferringSystemGesturesViewController, "preferredScreenEdgesDeferringSystemGestures")}];
}

- (void)setNeedsUpdateOfHomeIndicatorAutoHidden
{
  v4.receiver = self;
  v4.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v4 setNeedsUpdateOfHomeIndicatorAutoHidden];
  _effectiveHomeIndicatorAutoHiddenViewController = [(UIViewController *)self _effectiveHomeIndicatorAutoHiddenViewController];
  [self->_remoteViewControllerProxyToOperator __viewServiceDidUpdatePrefersHomeIndicatorAutoHidden:{objc_msgSend(_effectiveHomeIndicatorAutoHiddenViewController, "prefersHomeIndicatorAutoHidden")}];
}

- (void)setNeedsUpdateOfPrefersPointerLocked
{
  v4.receiver = self;
  v4.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v4 setNeedsUpdateOfPrefersPointerLocked];
  _effectivePointerLockViewController = [(UIViewController *)self _effectivePointerLockViewController];
  [self->_remoteViewControllerProxyToOperator __viewServiceDidUpdatePrefersPointerLocked:{objc_msgSend(_effectivePointerLockViewController, "prefersPointerLocked")}];
}

- (void)_setNeedsUpdateOfMultitaskingDragExclusionRects
{
  v5.receiver = self;
  v5.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v5 _setNeedsUpdateOfMultitaskingDragExclusionRects];
  _effectiveViewControllerForMultitaskingDragExclusionRects = [(UIViewController *)self _effectiveViewControllerForMultitaskingDragExclusionRects];
  _multitaskingDragExclusionRects = [_effectiveViewControllerForMultitaskingDragExclusionRects _multitaskingDragExclusionRects];
  [self->_remoteViewControllerProxyToOperator __viewServiceDidUpdateMultitaskingDragExclusionRects:_multitaskingDragExclusionRects];
}

- (int64_t)_availableTextServices
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return self->_availableTextServices;
  }

  v6.receiver = self;
  v6.super_class = _UIViewServiceViewControllerOperator;
  return [(UIResponder *)&v6 _availableTextServices];
}

- (id)_showServiceForType:(int64_t)type withContext:(id)context
{
  contextCopy = context;
  textInput = [contextCopy textInput];
  textInputView = [textInput textInputView];
  v9 = [_UITextServiceSession shouldPresentServiceInSameWindowAsView:textInputView];

  if (v9)
  {
    v18.receiver = self;
    v18.super_class = _UIViewServiceViewControllerOperator;
    v10 = [(UIResponder *)&v18 _showServiceForType:type withContext:contextCopy];
  }

  else
  {
    [(_UIHostedTextServiceSession *)self->_textServiceSession setDelegate:0];
    v11 = [_UIHostedTextServiceSession showServiceForType:type withContext:contextCopy];
    textServiceSession = self->_textServiceSession;
    self->_textServiceSession = v11;

    [(_UIHostedTextServiceSession *)self->_textServiceSession setDelegate:self];
    view = [(UIViewController *)self view];
    [contextCopy convertRectToView:view];

    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72___UIViewServiceViewControllerOperator__showServiceForType_withContext___block_invoke;
    v17[3] = &unk_1E7128D80;
    v17[4] = self;
    [remoteViewControllerProxyToOperator __showServiceForType:type withContext:contextCopy replyHandler:v17];
    v10 = self->_textServiceSession;
  }

  v15 = v10;

  return v15;
}

- (id)_showServiceForText:(id)text type:(int64_t)type fromRect:(CGRect)rect inView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  textCopy = text;
  v15 = -[_UIViewServiceViewControllerOperator _showServiceForText:selectedTextRange:type:fromRect:inView:](self, "_showServiceForText:selectedTextRange:type:fromRect:inView:", textCopy, 0, [textCopy length], type, viewCopy, x, y, width, height);

  return v15;
}

- (id)_showServiceForText:(id)text selectedTextRange:(_NSRange)range type:(int64_t)type fromRect:(CGRect)rect inView:(id)view
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  length = range.length;
  location = range.location;
  textCopy = text;
  viewCopy = view;
  if ([_UITextServiceSession shouldPresentServiceInSameWindowAsView:viewCopy])
  {
    v36.receiver = self;
    v36.super_class = _UIViewServiceViewControllerOperator;
    height = [(UIResponder *)&v36 _showServiceForText:textCopy selectedTextRange:location type:length fromRect:type inView:viewCopy, x, y, width, height];
  }

  else
  {
    [(_UIHostedTextServiceSession *)self->_textServiceSession setDelegate:0];
    height2 = [_UIHostedTextServiceSession showServiceForText:textCopy selectedTextRange:location type:length fromRect:type inView:viewCopy, x, y, width, height];
    textServiceSession = self->_textServiceSession;
    self->_textServiceSession = height2;

    [(_UIHostedTextServiceSession *)self->_textServiceSession setDelegate:self];
    view = [(UIViewController *)self view];
    [view convertRect:viewCopy fromView:{x, y, width, height}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v31 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
    v32 = [MEMORY[0x1E696B098] valueWithCGRect:{v23, v25, v27, v29}];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __99___UIViewServiceViewControllerOperator__showServiceForText_selectedTextRange_type_fromRect_inView___block_invoke;
    v35[3] = &unk_1E7128D80;
    v35[4] = self;
    [remoteViewControllerProxyToOperator __showServiceForText:textCopy selectedTextRangeValue:v31 type:type fromRectValue:v32 replyHandler:v35];

    height = self->_textServiceSession;
  }

  v33 = height;

  return v33;
}

- (void)dismissHostedTextServiceSession:(id)session animated:(BOOL)animated
{
  if (self->_textServiceSession == session)
  {
    [self->_remoteViewControllerProxyToOperator __dismissTextServiceSessionAnimated:animated];
  }
}

- (void)__textServiceDidDismiss
{
  [(_UIHostedTextServiceSession *)self->_textServiceSession remoteSessionDidDismiss];
  [(_UIHostedTextServiceSession *)self->_textServiceSession setDelegate:0];
  textServiceSession = self->_textServiceSession;
  self->_textServiceSession = 0;

  windowScene = [(UIWindow *)self->_hostedWindow windowScene];
  keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

  _inputViewsKey = [(_UIViewServiceViewControllerOperator *)self _inputViewsKey];
  [keyboardSceneDelegate _restoreInputViewsWithId:_inputViewsKey animated:1];
}

- (void)motionEnded:(int64_t)ended withEvent:(id)event
{
  if ([UIApp applicationSupportsShakeToEdit] && !_AXSShakeToUndoDisabled())
  {

    [(_UIViewServiceViewControllerOperator *)self __showEditAlertView];
  }
}

- (void)__showEditAlertView
{
  firstResponder = [(UIWindow *)self->_hostedWindow firstResponder];
  undoManager = [firstResponder undoManager];
  editAlertUndoManager = self->_editAlertUndoManager;
  self->_editAlertUndoManager = undoManager;

  if (!self->_editAlertToken && ([(NSUndoManager *)self->_editAlertUndoManager canUndo]|| [(NSUndoManager *)self->_editAlertUndoManager canRedo]))
  {
    v6 = arc4random();
    self->_editAlertToken = v6;
    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    canUndo = [(NSUndoManager *)self->_editAlertUndoManager canUndo];
    canRedo = [(NSUndoManager *)self->_editAlertUndoManager canRedo];

    [remoteViewControllerProxyToOperator __showEditAlertViewWithToken:v6 canUndo:canUndo canRedo:canRedo];
  }
}

- (void)__undoActionWithToken:(int64_t)token
{
  if (token && self->_editAlertToken == token)
  {
    self->_editAlertToken = 0;
    [(NSUndoManager *)self->_editAlertUndoManager undo];
    editAlertUndoManager = self->_editAlertUndoManager;
    self->_editAlertUndoManager = 0;
  }
}

- (void)__redoActionWithToken:(int64_t)token
{
  if (token && self->_editAlertToken == token)
  {
    self->_editAlertToken = 0;
    [(NSUndoManager *)self->_editAlertUndoManager redo];
    editAlertUndoManager = self->_editAlertUndoManager;
    self->_editAlertUndoManager = 0;
  }
}

- (void)__cancelAlertActionWithToken:(int64_t)token
{
  if (token)
  {
    if (self->_editAlertToken == token)
    {
      self->_editAlertToken = 0;
      editAlertUndoManager = self->_editAlertUndoManager;
      self->_editAlertUndoManager = 0;
    }
  }
}

- (id)preferredFocusEnvironments
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self->_localViewController)
  {
    v5[0] = self->_localViewController;
    preferredFocusEnvironments = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = _UIViewServiceViewControllerOperator;
    preferredFocusEnvironments = [(UIViewController *)&v4 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

- (id)_dataFromPressesEvent:(id)event
{
  [event _hidEvent];
  Data = IOHIDEventCreateData();

  return Data;
}

- (BOOL)_forwardPresses:(id)presses withEvent:(id)event canceled:(BOOL)canceled
{
  canceledCopy = canceled;
  pressesCopy = presses;
  eventCopy = event;
  if ((_UIPressesContainsPressType(pressesCopy, 7) & 1) != 0 || _UIPressesContainsPressType(pressesCopy, 5) && (![eventCopy _hidEvent] || (objc_msgSend(eventCopy, "_hidEvent"), IOHIDEventGetType() != 35)))
  {
    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v11 = [(_UIViewServiceViewControllerOperator *)self _dataFromPressesEvent:eventCopy];
    [remoteViewControllerProxyToOperator __trampolineButtonPressData:v11 canceled:canceledCopy];

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (![(_UIViewServiceViewControllerOperator *)self _forwardPresses:beganCopy withEvent:eventCopy canceled:0])
  {
    v8.receiver = self;
    v8.super_class = _UIViewServiceViewControllerOperator;
    [(UIResponder *)&v8 pressesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if (![(_UIViewServiceViewControllerOperator *)self _forwardPresses:cancelledCopy withEvent:eventCopy canceled:1])
  {
    v8.receiver = self;
    v8.super_class = _UIViewServiceViewControllerOperator;
    [(UIResponder *)&v8 pressesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  changedCopy = changed;
  eventCopy = event;
  if (![(_UIViewServiceViewControllerOperator *)self _forwardPresses:changedCopy withEvent:eventCopy canceled:0])
  {
    v8.receiver = self;
    v8.super_class = _UIViewServiceViewControllerOperator;
    [(UIResponder *)&v8 pressesChanged:changedCopy withEvent:eventCopy];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (![(_UIViewServiceViewControllerOperator *)self _forwardPresses:endedCopy withEvent:eventCopy canceled:0])
  {
    v8.receiver = self;
    v8.super_class = _UIViewServiceViewControllerOperator;
    [(UIResponder *)&v8 pressesEnded:endedCopy withEvent:eventCopy];
  }
}

- (void)__timelinesForDateInterval:(id)interval completion:(id)completion
{
  intervalCopy = interval;
  completionCopy = completion;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewServiceViewControllerOperator.m" lineNumber:3417 description:@"Call must be made on main thread"];
  }

  if (!self->_blsFrameSpecifierModel)
  {
    v9 = objc_alloc_init(MEMORY[0x1E698E540]);
    blsFrameSpecifierModel = self->_blsFrameSpecifierModel;
    self->_blsFrameSpecifierModel = v9;
  }

  v11 = objc_opt_new();
  _effectiveControllersForAlwaysOnTimelines = [(UIViewController *)self->_localViewController _effectiveControllersForAlwaysOnTimelines];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __78___UIViewServiceViewControllerOperator___timelinesForDateInterval_completion___block_invoke;
  v22[3] = &unk_1E710C950;
  v26 = a2;
  v23 = intervalCopy;
  selfCopy = self;
  v25 = v11;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78___UIViewServiceViewControllerOperator___timelinesForDateInterval_completion___block_invoke_3;
  v17[3] = &unk_1E7128DA8;
  v20 = completionCopy;
  v21 = a2;
  v17[4] = self;
  v18 = v25;
  v19 = v23;
  v13 = completionCopy;
  v14 = v23;
  v15 = v25;
  [(_UIBacklightEnvironment *)_UIAlwaysOnEnvironment _performOnChildViewControllersForAlwaysOnTimelines:_effectiveControllersForAlwaysOnTimelines performBlock:v22 withCompletion:v17];
}

- (void)__updateWithFrameSpecifierDate:(id)date completion:(id)completion
{
  blsFrameSpecifierModel = self->_blsFrameSpecifierModel;
  completionCopy = completion;
  v8 = [(BLSFrameSpecifierModel *)blsFrameSpecifierModel specifierAtPresentationDate:date];
  _effectiveControllersForAlwaysOnTimelines = [(UIViewController *)self->_localViewController _effectiveControllersForAlwaysOnTimelines];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82___UIViewServiceViewControllerOperator___updateWithFrameSpecifierDate_completion___block_invoke;
  v11[3] = &unk_1E7128DD0;
  v12 = v8;
  v10 = v8;
  [(_UIBacklightEnvironment *)_UIAlwaysOnEnvironment _performOnChildViewControllersForAlwaysOnTimelines:_effectiveControllersForAlwaysOnTimelines performBlock:v11 withCompletion:completionCopy];
}

- (_UIChildRemoteContentRegistry)_childRemoteContentRegistry
{
  childRemoteContentRegistry = self->_childRemoteContentRegistry;
  if (!childRemoteContentRegistry)
  {
    v4 = [[_UIChildRemoteContentRegistry alloc] initWithParentScene:self->_pseudoScene];
    v5 = self->_childRemoteContentRegistry;
    self->_childRemoteContentRegistry = v4;

    childRemoteContentRegistry = self->_childRemoteContentRegistry;
  }

  return childRemoteContentRegistry;
}

- (void)_installActivityObserverGestureIfNeeded
{
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewServiceViewControllerOperator.m" lineNumber:3496 description:@"Call must be made on main thread"];
  }

  hostedWindow = self->_hostedWindow;
  if (hostedWindow)
  {
    if (!self->_hostedWindowActivityObserverGesture)
    {
      hostedWindow = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%p", @"ViewService-HostedWindow-Observer", hostedWindow];
      v6 = [[_UITouchesBeganObserverGestureRecognizer alloc] initWithTarget:sel__handleActivityObserverGesture_ action:hostedWindow name:?];
      hostedWindowActivityObserverGesture = self->_hostedWindowActivityObserverGesture;
      self->_hostedWindowActivityObserverGesture = v6;

      hostedWindow = self->_hostedWindow;
    }

    gestureRecognizers = [(UIView *)hostedWindow gestureRecognizers];
    v9 = [gestureRecognizers containsObject:self->_hostedWindowActivityObserverGesture];

    if ((v9 & 1) == 0)
    {
      v10 = self->_hostedWindow;
      v11 = self->_hostedWindowActivityObserverGesture;

      [(UIView *)v10 addGestureRecognizer:v11];
    }
  }
}

- (void)_handleActivityObserverGesture:(id)gesture
{
  v4 = +[_UIActiveViewServiceSessionTracker sharedTracker];
  [(_UIActiveViewServiceSessionTracker *)v4 handleViewServiceActivity:self->_hostedWindow inHostedWindow:self fromProvider:self->_sessionActivityRecord forSessionActivityRecord:?];
}

- (void)_physicalButtonInteractionArbiter:(id)arbiter didUpdateResolvedConfigurations:(id)configurations inActiveViewServiceSession:(id)session
{
  v55 = *MEMORY[0x1E69E9840];
  arbiterCopy = arbiter;
  configurationsCopy = configurations;
  sessionCopy = session;
  v11 = sessionCopy;
  sessionActivityRecord = self->_sessionActivityRecord;
  if (sessionActivityRecord)
  {
    v13 = sessionCopy ? sessionCopy->_userInterfaceIdiom : 0;
    if (sessionActivityRecord->_userInterfaceIdiom == v13)
    {
      v14 = objc_opt_new();
      v15 = v14;
      if (sessionActivityRecord == v11 && self->_hostedWindow != 0)
      {
        v38 = sessionActivityRecord;
        v39 = configurationsCopy;
        v41 = v11;
        v43 = v14;
        v40 = arbiterCopy;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v17 = configurationsCopy;
        v18 = [v17 countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v45;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v45 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v44 + 1) + 8 * i);
              v23 = [v17 objectForKey:v22];
              view = [v23 view];
              _window = [view _window];

              if (_window == self->_hostedWindow)
              {
                [v43 _setConfiguration:v22 forButton:{objc_msgSend(v22, "_button")}];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v44 objects:v54 count:16];
          }

          while (v19);
        }

        configurationsCopy = v39;
        arbiterCopy = v40;
        v11 = v41;
        v15 = v43;
        sessionActivityRecord = v38;
      }

      v26 = [v15 copy];
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &_physicalButtonInteractionArbiter_didUpdateResolvedConfigurations_inActiveViewServiceSession____s_category);
      if (*CategoryCachedImpl)
      {
        v28 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v42 = v11;
          v29 = sessionActivityRecord == v11;
          v30 = MEMORY[0x1E696AEC0];
          selfCopy = self;
          v32 = v28;
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          selfCopy = [v30 stringWithFormat:@"<%@: %p>", v34, selfCopy];

          v36 = selfCopy;
          succinctDescription = [v26 succinctDescription];
          *buf = 138412802;
          v49 = selfCopy;
          v50 = 1024;
          v51 = v29;
          v11 = v42;
          v52 = 2112;
          v53 = succinctDescription;
          _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "Notifying view service host of resolved configurations update: self: %@; isMostActiveService: %d; configurations: %@", buf, 0x1Cu);
        }
      }

      [self->_remoteViewControllerProxyToOperator __viewServiceDidUpdateResolvedPhysicalButtonConfigurations:v26];
    }
  }
}

- (void)__hostDidReceivePhysicalButtonBSAction:(id)action
{
  v19 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &__hostDidReceivePhysicalButtonBSAction____s_category);
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

      *buf = 138412546;
      v16 = selfCopy;
      v17 = 2112;
      v18 = actionCopy;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Received proxy physicalButtonBSAction from host: self: %@; physicalButtonBSAction: %@", buf, 0x16u);
    }
  }

  _eventRoutingScene = [(UIWindow *)self->_hostedWindow _eventRoutingScene];
  _physicalButtonInteractionArbiter = [_eventRoutingScene _physicalButtonInteractionArbiter];
  v8 = _physicalButtonInteractionArbiter;
  if (_physicalButtonInteractionArbiter)
  {
    [(_UIPhysicalButtonInteractionArbiter *)_physicalButtonInteractionArbiter _handleBSAction:actionCopy];
  }
}

- (void)__hostHomeAffordanceFrameIntersectionDidChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v22 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &__hostHomeAffordanceFrameIntersectionDidChange____s_category);
  if (*CategoryCachedImpl)
  {
    v11 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v12 = NSStringFromCGRect(v23);
      if (self)
      {
        v13 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        selfCopy = [v13 stringWithFormat:@"<%@: %p>", v16, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      *buf = 138543618;
      v19 = v12;
      v20 = 2114;
      v21 = selfCopy;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Received homeAffordanceFrameIntersectionDidChange from host: %{public}@; self: %{public}@", buf, 0x16u);
    }
  }

  _windowHostingScene = [(UIWindow *)self->_hostedWindow _windowHostingScene];
  _homeAffordanceSceneNotifier = [_windowHostingScene _homeAffordanceSceneNotifier];

  if (_homeAffordanceSceneNotifier)
  {
    [(_UIHomeAffordanceSceneNotifier *)_homeAffordanceSceneNotifier _homeAffordanceLegacyViewServiceUpdateSource:x frameDidChange:y, width, height];
  }
}

- (void)__hostReceivedHomeAffordanceDoubleTapGestureDidSucceed:(BOOL)succeed
{
  succeedCopy = succeed;
  v18 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceObservation", &__hostReceivedHomeAffordanceDoubleTapGestureDidSucceed____s_category);
  if (*CategoryCachedImpl)
  {
    v8 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v9 = MEMORY[0x1E696AEC0];
        selfCopy = self;
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        selfCopy = [v9 stringWithFormat:@"<%@: %p>", v12, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      *buf = 67109378;
      v15 = succeedCopy;
      v16 = 2114;
      v17 = selfCopy;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Received doubleTapGestureDidSucceed from host:  %d; self: %{public}@", buf, 0x12u);
    }
  }

  _windowHostingScene = [(UIWindow *)self->_hostedWindow _windowHostingScene];
  _homeAffordanceSceneNotifier = [_windowHostingScene _homeAffordanceSceneNotifier];

  if (_homeAffordanceSceneNotifier)
  {
    [(_UIHomeAffordanceSceneNotifier *)_homeAffordanceSceneNotifier _homeAffordanceLegacyViewServiceUpdateSource:succeedCopy doubleTapGestureDidSucceed:?];
  }
}

- (NSString)debugDescription
{
  if (os_variant_has_internal_diagnostics())
  {
    v7.receiver = self;
    v7.super_class = _UIViewServiceViewControllerOperator;
    v5 = [(_UIViewServiceViewControllerOperator *)&v7 debugDescription];
    v3 = [v5 stringByAppendingFormat:@" hostBundleID=%@", self->_hostBundleID];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _UIViewServiceViewControllerOperator;
    v3 = [(_UIViewServiceViewControllerOperator *)&v6 debugDescription];
  }

  return v3;
}

- (_UIViewServiceLegacyClientSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end