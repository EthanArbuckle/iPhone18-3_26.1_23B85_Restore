@interface _UIViewServiceViewControllerOperator
+ (_UIViewServiceViewControllerOperator)operatorWithRemoteViewControllerProxy:(id)a3 hostPID:(int)a4 hostBundleID:(id)a5 hostAuditToken:(id *)a6 sessionIdentifier:(id)a7;
+ (id)XPCInterface;
+ (void)initialize;
- (BOOL)_forwardPresses:(id)a3 withEvent:(id)a4 canceled:(BOOL)a5;
- (BOOL)_shouldForwardLegacyRotationOnly;
- (CGSize)contentSizeForViewInPopover;
- (NSString)debugDescription;
- (UIEdgeInsets)_customBasePresentationInsetsForView:(id)a3;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (UIEdgeInsets)_viewSafeAreaInsetsFromScene;
- (_UIChildRemoteContentRegistry)_childRemoteContentRegistry;
- (_UIViewServiceLegacyClientSession)session;
- (id)_dataFromPressesEvent:(id)a3;
- (id)_showServiceForText:(id)a3 selectedTextRange:(_NSRange)a4 type:(int64_t)a5 fromRect:(CGRect)a6 inView:(id)a7;
- (id)_showServiceForText:(id)a3 type:(int64_t)a4 fromRect:(CGRect)a5 inView:(id)a6;
- (id)_showServiceForType:(int64_t)a3 withContext:(id)a4;
- (id)_supportedInterfaceOrientationsForViewController:(id)a3;
- (id)_viewControllersForRotationCallbacks;
- (id)preferredFocusEnvironments;
- (int64_t)_availableTextServices;
- (void)__cancelAlertActionWithToken:(int64_t)a3;
- (void)__createViewControllerWithOptions:(id)a3 completionBlock:(id)a4;
- (void)__dimmingViewWasTapped;
- (void)__exchangeAccessibilityPortInformation:(id)a3 replyHandler:(id)a4;
- (void)__hostDidAttachDisplay:(id)a3;
- (void)__hostDidBecomeActive;
- (void)__hostDidChangeStatusBarHeight:(double)a3;
- (void)__hostDidChangeStatusBarOrientationToInterfaceOrientation:(int64_t)a3;
- (void)__hostDidDetachDisplay:(id)a3;
- (void)__hostDidDismissShieldViewForAppProtection;
- (void)__hostDidEnterBackground;
- (void)__hostDidEvaluatePencilBarrelEventFocusForSceneTransition;
- (void)__hostDidMoveToParentSceneWithSettings:(id)a3;
- (void)__hostDidPromoteFirstResponder;
- (void)__hostDidReceivePhysicalButtonBSAction:(id)a3;
- (void)__hostDidRotateFromInterfaceOrientation:(int64_t)a3 skipSelf:(BOOL)a4;
- (void)__hostDidSetContentOverlayInsets:(UIEdgeInsets)a3 andLeftMargin:(double)a4 rightMargin:(double)a5;
- (void)__hostDidUpdateDisplay:(id)a3;
- (void)__hostDidUpdateSceneContext:(id)a3;
- (void)__hostHomeAffordanceFrameIntersectionDidChange:(CGRect)a3;
- (void)__hostReceivedHomeAffordanceDoubleTapGestureDidSucceed:(BOOL)a3;
- (void)__hostSceneDidEnterBackground;
- (void)__hostSceneDidUpdateWithDiff:(id)a3;
- (void)__hostSceneWillEnterForeground;
- (void)__hostViewDidAppear:(BOOL)a3;
- (void)__hostViewDidDisappear:(BOOL)a3;
- (void)__hostViewDidMoveToScreenWithFBSDisplayIdentity:(id)a3 newHostingHandleReplyHandler:(id)a4;
- (void)__hostViewWillAppear:(BOOL)a3 inInterfaceOrientation:(int64_t)a4 traitCollection:(id)a5 statusBarHeight:(double)a6 underlapsStatusBar:(BOOL)a7 completionHandler:(id)a8;
- (void)__hostViewWillDisappear:(BOOL)a3;
- (void)__hostViewWillMoveToWindowInInterfaceOrientation:(int64_t)a3 withStatusBarHeight:(double)a4 underlapsStatusBar:(BOOL)a5;
- (void)__hostViewWillTransitionToSize:(CGSize)a3 withContextDescription:(id)a4 boundingPath:(id)a5 statusBarHeight:(double)a6 underlapsStatusBar:(BOOL)a7 fence:(id)a8 timing:(_UIUpdateTiming *)a9 whenDone:(id)a10;
- (void)__hostWillAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4 skipSelf:(BOOL)a5;
- (void)__hostWillEnterForeground;
- (void)__hostWillResignActive;
- (void)__hostWillRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4 skipSelf:(BOOL)a5;
- (void)__hostWillTransitionToTraitCollection:(id)a3 withContextDescription:(id)a4 deferIfAnimated:(BOOL)a5 inRemoteViewHierarchy:(BOOL)a6;
- (void)__installDismissInteractionForZoomTransition;
- (void)__prepareForDisconnectionWithCompletionHandler:(id)a3;
- (void)__redoActionWithToken:(int64_t)a3;
- (void)__scrollToTopFromTouchAtViewLocation:(CGPoint)a3 resultHandler:(id)a4;
- (void)__setBoundingPath:(id)a3;
- (void)__setContentSize:(CGSize)a3 boundingPath:(id)a4;
- (void)__setContentSize:(CGSize)a3 boundingPath:(id)a4 withFence:(id)a5;
- (void)__setHostTintColor:(id)a3 tintAdjustmentMode:(int64_t)a4;
- (void)__setHostTraitCollection:(id)a3 deferIfAnimated:(BOOL)a4;
- (void)__setHostViewUnderlapsStatusBar:(BOOL)a3;
- (void)__setServiceInPopover:(BOOL)a3;
- (void)__setSheetConfiguration:(id)a3;
- (void)__sheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)a3;
- (void)__sheetInteractionDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5;
- (void)__sheetInteractionDraggingDidEnd;
- (void)__showEditAlertView;
- (void)__textServiceDidDismiss;
- (void)__timelinesForDateInterval:(id)a3 completion:(id)a4;
- (void)__undoActionWithToken:(int64_t)a3;
- (void)__updateWithFrameSpecifierDate:(id)a3 completion:(id)a4;
- (void)_addSceneForwardingLayersForOwners:(id)a3;
- (void)_didBecomeContentViewControllerOfPopover:(id)a3;
- (void)_didResignContentViewControllerOfPopover:(id)a3;
- (void)_firstResponderDidChange:(id)a3;
- (void)_handleActivityObserverGesture:(id)a3;
- (void)_installActivityObserverGestureIfNeeded;
- (void)_invalidateUnconditionallyThen:(id)a3;
- (void)_marginInfoForChild:(id)a3 leftMargin:(double *)a4 rightMargin:(double *)a5;
- (void)_objc_initiateDealloc;
- (void)_physicalButtonInteractionArbiter:(id)a3 didUpdateResolvedConfigurations:(id)a4 inActiveViewServiceSession:(id)a5;
- (void)_popoverDidDismiss:(id)a3;
- (void)_popoverWillPresent:(id)a3;
- (void)_prepareForDisconnectionUnconditionallyThen:(id)a3;
- (void)_removeSceneForwardingLayersForOwners:(id)a3;
- (void)_setNeedsUpdateOfMultitaskingDragExclusionRects;
- (void)_sheetPresentationControllerClientConfigurationDidChange:(id)a3;
- (void)_updateSupportedInterfaceOrientationsIfNecessary;
- (void)_viewServiceIsDisplayingPopoverController:(id)a3;
- (void)_wantsKeyboardEventsWithoutFirstResponder:(id)a3;
- (void)_willBecomeContentViewControllerOfPopover:(id)a3;
- (void)_willResignContentViewControllerOfPopover:(id)a3;
- (void)_windowDidBecomeApplicationKey:(id)a3;
- (void)_windowDidRegisterOrUnregisterScrollToTopView;
- (void)addDeputyRotationDelegate:(id)a3;
- (void)dealloc;
- (void)dismissHostedTextServiceSession:(id)a3 animated:(BOOL)a4;
- (void)dummyPopoverController:(id)a3 didChangeContentSize:(CGSize)a4 animated:(BOOL)a5;
- (void)dummyPopoverController:(id)a3 popoverViewDidSetUseToolbarShine:(BOOL)a4;
- (void)establishViewControllerDeputyWithProxy:(id)a3 completionHandler:(id)a4;
- (void)loadView;
- (void)motionEnded:(int64_t)a3 withEvent:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setNeedsStatusBarAppearanceUpdate;
- (void)setNeedsUpdateOfHomeIndicatorAutoHidden;
- (void)setNeedsUpdateOfPrefersPointerLocked;
- (void)setNeedsUpdateOfScreenEdgesDeferringSystemGestures;
- (void)setNeedsWhitePointAdaptivityStyleUpdate;
- (void)systemLayoutFittingSizeDidChangeForChildViewController:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)window:(id)a3 statusBarWillChangeFromHeight:(double)a4 toHeight:(double)a5;
@end

@implementation _UIViewServiceViewControllerOperator

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    _class_setCustomDeallocInitiation();
  }
}

+ (_UIViewServiceViewControllerOperator)operatorWithRemoteViewControllerProxy:(id)a3 hostPID:(int)a4 hostBundleID:(id)a5 hostAuditToken:(id *)a6 sessionIdentifier:(id)a7
{
  v10 = *&a4;
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v14 = objc_alloc_init(_UIViewServiceViewControllerOperator);
  remoteViewControllerProxyToOperator = v14->_remoteViewControllerProxyToOperator;
  v14->_remoteViewControllerProxyToOperator = v11;
  v36 = v11;

  v14->_hostPID = v10;
  v14->_mediaPID = v10;
  hostBundleID = v14->_hostBundleID;
  v14->_hostBundleID = v12;
  v17 = v12;

  v18 = *&a6->var0[4];
  *v14->_hostAuditToken.val = *a6->var0;
  *&v14->_hostAuditToken.val[4] = v18;
  sessionIdentifier = v14->_sessionIdentifier;
  v14->_sessionIdentifier = v13;
  v20 = v13;

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
  v25 = [MEMORY[0x1E696AD88] defaultCenter];
  [v25 addObserver:v14 selector:sel__popoverWillPresent_ name:0x1EFB37EF0 object:0];
  [v25 addObserver:v14 selector:sel__popoverDidDismiss_ name:0x1EFB37F10 object:0];
  v26 = MEMORY[0x1E699FBC8];
  v27 = [(NSUUID *)v20 UUIDString];
  v28 = +[(FBSSceneSpecification *)UIApplicationSceneSpecification];
  v29 = [v26 pseudoSceneWithIdentifier:v27 specification:v28];
  pseudoScene = v14->_pseudoScene;
  v14->_pseudoScene = v29;

  v31 = [objc_opt_class() XPCInterface];
  v32 = [v31 exportedInterface];
  v33 = [v32 protocol];
  v34 = [_UIViewServiceUIBehaviorProxy proxyWrappingExportedObject:v14 forCommunicationWithPID:v10 exportedProtocol:v33];

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
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Initiating deallocation for operator: %{public}@", buf, 0xCu);
  }

  if (self)
  {
    *(&self->super._viewControllerFlags + 4) |= 0x80u;
  }

  v9 = [(_UIViewServiceViewControllerOperator *)self invalidate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61___UIViewServiceViewControllerOperator__objc_initiateDealloc__block_invoke;
  v10[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v10[4] = self;
  [v9 whenCompleteDo:v10];
}

- (void)dealloc
{
  v6[8] = *MEMORY[0x1E69E9840];
  [(_UIHostedTextServiceSession *)self->_textServiceSession setDelegate:0];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIWindowFirstResponderDidChangeNotification";
  v6[1] = @"_UIWindowDidBecomeApplicationKeyNotification";
  v6[2] = @"_UIWindowDidResignApplicationKeyNotification";
  v6[3] = @"_UIRemoteKeyboardsServiceWantsKeyboardFocusWithoutFirstResponderNotification";
  v6[4] = @"_UIHostedWindowDidRegisterScrollToTopViewNotification";
  v6[5] = @"_UIHostedWindowDidUnregisterScrollToTopViewNotification";
  v6[6] = 0x1EFB37EF0;
  v6[7] = 0x1EFB37F10;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:8];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v5 dealloc];
}

- (void)establishViewControllerDeputyWithProxy:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_localViewController)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    NSLog(&cfstr_ReceivedViewCo.isa, v9, self);

    v7[2](v7, 0);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97___UIViewServiceViewControllerOperator_establishViewControllerDeputyWithProxy_completionHandler___block_invoke;
  block[3] = &unk_1E70FCE28;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_prepareForDisconnectionUnconditionallyThen:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = [UIApp _beginBackgroundTaskWithExpirationHandler:0];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84___UIViewServiceViewControllerOperator__prepareForDisconnectionUnconditionallyThen___block_invoke;
  block[3] = &unk_1E7128B78;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v13 = self;
  v14 = v6;
  v7 = v4;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_invalidateUnconditionallyThen:(id)a3
{
  v4 = a3;
  v5 = [(_UIAsyncInvocation *)self->_prepareForDisconnectionInvocation invoke];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71___UIViewServiceViewControllerOperator__invalidateUnconditionallyThen___block_invoke;
  v7[3] = &unk_1E70F0F78;
  v8 = v4;
  v6 = v4;
  [v5 whenCompleteDo:v7];
}

- (void)loadView
{
  v7 = [objc_opt_self() mainScreen];
  v3 = [UIView alloc];
  [v7 bounds];
  v4 = [(UIView *)v3 initWithFrame:?];
  [(UIViewController *)self setView:v4];

  [v7 _referenceBounds];
  [self->_remoteViewControllerProxyToOperator __setServiceMaxFrameSize:{v5, v6}];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v4 viewDidLoad];
  v3 = [(UIViewController *)self view];
  [v3 setAutoresizingMask:18];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v2 viewDidLayoutSubviews];
}

- (void)addDeputyRotationDelegate:(id)a3
{
  v4 = a3;
  deputyRotationDelegates = self->_deputyRotationDelegates;
  v8 = v4;
  if (!deputyRotationDelegates)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v7 = self->_deputyRotationDelegates;
    self->_deputyRotationDelegates = v6;

    v4 = v8;
    deputyRotationDelegates = self->_deputyRotationDelegates;
  }

  [(NSMutableArray *)deputyRotationDelegates addObject:v4];
  [v8 setHostedWindow:self->_hostedWindow disableAutomaticBehaviors:{-[UIResponder _disableAutomaticKeyboardBehavior](self->_localViewController, "_disableAutomaticKeyboardBehavior")}];
}

- (void)_updateSupportedInterfaceOrientationsIfNecessary
{
  v3 = [(UIViewController *)self->_localViewController _viewControllerForSupportedInterfaceOrientations];
  v4 = [v3 supportedInterfaceOrientations];

  if (v4 != self->_supportedOrientations)
  {
    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v6 = _supportedInterfaceOrientationsForMask(v4);
    [remoteViewControllerProxyToOperator __setSupportedInterfaceOrientations:v6];

    self->_supportedOrientations = v4;
  }
}

- (void)__setHostViewUnderlapsStatusBar:(BOOL)a3
{
  v3 = a3;
  v10 = self->_hostedWindow;
  [(_UIHostedWindow *)v10 __setHostViewUnderlapsStatusBar:v3];
  [(UIViewController *)self _updateLayoutForStatusBarAndInterfaceOrientation];
  v5 = self;
  v6 = [(UIViewController *)v5 presentedViewController];
  if (v6)
  {
    v7 = v6;
    do
    {
      [v7 _updateLayoutForStatusBarAndInterfaceOrientation];
      v8 = v7;

      v7 = [(UIViewController *)v8 presentedViewController];

      v5 = v8;
    }

    while (v7);
  }

  else
  {
    v8 = v5;
  }

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 postNotificationName:@"_UIViewServiceHostDidUpdateUnderlapsStatusBar" object:v10 userInfo:0];
}

- (void)window:(id)a3 statusBarWillChangeFromHeight:(double)a4 toHeight:(double)a5
{
  hostedWindow = self->_hostedWindow;
  v9 = a3;
  if ([(_UIHostedWindow *)hostedWindow __hostViewUnderlapsStatusBar])
  {
    [(UIViewController *)&v11 window:v9 statusBarWillChangeFromHeight:a4 toHeight:a5, v10.receiver, v10.super_class, self, _UIViewServiceViewControllerOperator];
  }

  else
  {
    [(UIViewController *)&v10 window:v9 statusBarWillChangeFromHeight:a4 toHeight:0.0, self, _UIViewServiceViewControllerOperator, v11.receiver, v11.super_class];
  }
}

- (void)__scrollToTopFromTouchAtViewLocation:(CGPoint)a3 resultHandler:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIViewController *)self view];
  v9 = [v8 window];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91___UIViewServiceViewControllerOperator___scrollToTopFromTouchAtViewLocation_resultHandler___block_invoke;
  v11[3] = &unk_1E70F3608;
  v12 = v7;
  v10 = v7;
  [v9 _scrollToTopViewsUnderScreenPointIfNecessary:v11 resultHandler:{x, y}];
}

- (void)_windowDidRegisterOrUnregisterScrollToTopView
{
  remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
  v3 = [(UIWindow *)self->_hostedWindow _registeredScrollToTopViews];
  [remoteViewControllerProxyToOperator __viewServiceDidChangeHasScrollToTopView:{objc_msgSend(v3, "count") != 0}];
}

- (void)__setHostTintColor:(id)a3 tintAdjustmentMode:(int64_t)a4
{
  v7 = a3;
  v6 = self->_hostedWindow;
  if (dyld_program_sdk_at_least())
  {
    [(_UIHostedWindow *)v6 _setHostTintColor:v7];
  }

  [(_UIHostedWindow *)v6 _setHostTintAdjustmentMode:a4];
}

- (void)__setHostTraitCollection:(id)a3 deferIfAnimated:(BOOL)a4
{
  v4 = a4;
  v6 = _unobscuredTraitCollectionFromTraitCollection(a3);
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
  if (v4)
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

- (void)__hostWillTransitionToTraitCollection:(id)a3 withContextDescription:(id)a4 deferIfAnimated:(BOOL)a5 inRemoteViewHierarchy:(BOOL)a6
{
  v7 = a5;
  v10 = a4;
  v11 = _unobscuredTraitCollectionFromTraitCollection(a3);
  v12 = _UIHostedWindowModifiedHostTraitCollection(self->_hostedWindow, v11);
  [v10 transitionDuration];
  v22 = 3221225472;
  v21 = MEMORY[0x1E69E9820];
  v23 = __139___UIViewServiceViewControllerOperator___hostWillTransitionToTraitCollection_withContextDescription_deferIfAnimated_inRemoteViewHierarchy___block_invoke;
  v24 = &unk_1E7128BA8;
  v14 = v13 > 0.0 || v7;
  LOBYTE(v28) = v14;
  BYTE1(v28) = v13 > 0.0;
  v25 = self;
  v26 = v10;
  BYTE2(v28) = a6;
  v27 = v12;
  v15 = v12;
  v16 = v10;
  v17 = _Block_copy(&v21);
  v18 = v17;
  if (v7)
  {
    v19 = [v17 copy];
    [(_UIViewServiceViewControllerOperator *)self _setTraitsWillChangeHandler:v19];
  }

  else
  {
    v20 = v17[2](v17);
  }
}

- (void)_firstResponderDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"UIWindowFirstResponderUserInfoKey"];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKey:0x1EFB927F0];
  v9 = [v8 BOOLValue];

  v10 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v11 = [v10 handlingRemoteEvent];

  if (v6 && (v9 & 1) == 0 && (v11 & 1) == 0 && !self->_hasRequestedKeyboardEventEnvironmentDeferring)
  {
    v12 = [v4 object];
    if (v12 == self->_hostedWindow)
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

- (void)_windowDidBecomeApplicationKey:(id)a3
{
  v9 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v9;
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

- (void)_wantsKeyboardEventsWithoutFirstResponder:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"_UIRemoteKeyboardsHostedWindowUserInfoKey"];

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

- (void)__prepareForDisconnectionWithCompletionHandler:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(__UILogGetCategoryCachedImpl("ViewServices", &__prepareForDisconnectionWithCompletionHandler____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = self;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v6 stringWithFormat:@"<%@: %p>", v9, v7];
    }

    else
    {
      v10 = @"(nil)";
    }

    *buf = 138543362;
    v16 = v10;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Received request to prepare operator for disconnection: %{public}@", buf, 0xCu);
  }

  v11 = [(_UIAsyncInvocation *)self->_prepareForDisconnectionInvocation invoke];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87___UIViewServiceViewControllerOperator___prepareForDisconnectionWithCompletionHandler___block_invoke;
  v13[3] = &unk_1E70F0F78;
  v14 = v4;
  v12 = v4;
  [v11 whenCompleteDo:v13];
}

- (void)_viewServiceIsDisplayingPopoverController:(id)a3
{
  objc_storeWeak(&self->_displayedPopoverController, a3);
  remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;

  [remoteViewControllerProxyToOperator __setViewServiceIsDisplayingPopover:a3 != 0];
}

- (void)_popoverWillPresent:(id)a3
{
  v11 = a3;
  v4 = [v11 userInfo];
  v5 = [v4 objectForKey:0x1EFB37F30];

  if (self->_hostedWindow == v5)
  {
    v6 = [v11 object];
    if (!v6 || (v7 = v6, [v11 object], v8 = objc_claimAutoreleasedReturnValue(), WeakRetained = objc_loadWeakRetained(&self->_dummyPopoverController), WeakRetained, v8, v7, v8 != WeakRetained))
    {
      v10 = [v11 object];
      [(_UIViewServiceViewControllerOperator *)self _viewServiceIsDisplayingPopoverController:v10];
    }
  }
}

- (void)_popoverDidDismiss:(id)a3
{
  v4 = [a3 object];
  WeakRetained = objc_loadWeakRetained(&self->_displayedPopoverController);

  if (v4 == WeakRetained)
  {

    [(_UIViewServiceViewControllerOperator *)self _viewServiceIsDisplayingPopoverController:0];
  }
}

- (void)__dimmingViewWasTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_displayedPopoverController);
  v2 = [WeakRetained _dimmingView];
  [v2 _simulateTap];
}

- (void)_willBecomeContentViewControllerOfPopover:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIViewServiceViewControllerOperator;
  v4 = a3;
  [(UIViewController *)&v5 _willBecomeContentViewControllerOfPopover:v4];
  [(UIViewController *)self->_localViewController _willBecomeContentViewControllerOfPopover:v4, v5.receiver, v5.super_class];
}

- (void)_didBecomeContentViewControllerOfPopover:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIViewServiceViewControllerOperator;
  v4 = a3;
  [(UIViewController *)&v5 _didBecomeContentViewControllerOfPopover:v4];
  [(UIViewController *)self->_localViewController _didBecomeContentViewControllerOfPopover:v4, v5.receiver, v5.super_class];
}

- (void)_willResignContentViewControllerOfPopover:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIViewServiceViewControllerOperator;
  v4 = a3;
  [(UIViewController *)&v5 _willResignContentViewControllerOfPopover:v4];
  [(UIViewController *)self->_localViewController _willResignContentViewControllerOfPopover:v4, v5.receiver, v5.super_class];
}

- (void)_didResignContentViewControllerOfPopover:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIViewServiceViewControllerOperator;
  v4 = a3;
  [(UIViewController *)&v5 _didResignContentViewControllerOfPopover:v4];
  [(UIViewController *)self->_localViewController _didResignContentViewControllerOfPopover:v4, v5.receiver, v5.super_class];
}

- (CGSize)contentSizeForViewInPopover
{
  [(UIViewController *)self->_localViewController contentSizeForViewInPopover];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v10 = a3;
  [v10 preferredContentSize];
  [(UIViewController *)self setPreferredContentSize:?];
  v4 = [(UIViewController *)self _existingPresentationControllerImmediate:1 effective:1 includesRoot:1];
  [v4 preferredContentSizeDidChangeForChildContentContainer:self];

  v5 = objc_autoreleasePoolPush();
  v6 = [(_UIViewServiceViewControllerOperator *)self _window];
  v7 = [v6 _windowHostingScene];
  v8 = [v7 _synchronizedDrawingFence];

  remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
  [v10 preferredContentSize];
  [remoteViewControllerProxyToOperator __viewServicePreferredContentSizeDidChange:v8 fence:?];
  [v8 invalidate];

  objc_autoreleasePoolPop(v5);
}

- (void)systemLayoutFittingSizeDidChangeForChildViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_localViewController == v4 && [(UIViewController *)v4 _shouldForwardSystemLayoutFittingSizeChanges])
  {
    objc_initWeak(&location, self->_remoteViewControllerProxyToOperator);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __95___UIViewServiceViewControllerOperator_systemLayoutFittingSizeDidChangeForChildViewController___block_invoke;
    v14 = &unk_1E71006F0;
    v15 = v5;
    v16 = self;
    objc_copyWeak(&v17, &location);
    v6 = _Block_copy(&v11);
    if ([(UIViewController *)self->_localViewController _appearState:v11]- 1 > 1)
    {
      deferredToViewDidAppear = self->_deferredToViewDidAppear;
      if (!deferredToViewDidAppear)
      {
        v8 = [MEMORY[0x1E695DF70] array];
        v9 = self->_deferredToViewDidAppear;
        self->_deferredToViewDidAppear = v8;

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

- (void)presentationControllerDidAttemptToDismiss:(id)a3
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

- (void)_sheetPresentationControllerClientConfigurationDidChange:(id)a3
{
  v5 = a3;
  v6 = self->_sheetClientConfiguration;
  v7 = v5;
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
    objc_storeStrong(&self->_sheetClientConfiguration, a3);
    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v6 = +[UIView _currentAnimationAttributes];
    [remoteViewControllerProxyToOperator __viewServiceSheetPresentationClientConfigurationDidChange:v11 attributes:v6];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)_addSceneForwardingLayersForOwners:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v5 = [v6 copy];
    [remoteViewControllerProxyToOperator __viewServiceAddSceneForwardingLayersForOwners:v5];
  }
}

- (void)_removeSceneForwardingLayersForOwners:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v5 = [v6 copy];
    [remoteViewControllerProxyToOperator __viewServiceRemoveSceneForwardingLayersForOwners:v5];
  }
}

- (void)dummyPopoverController:(id)a3 didChangeContentSize:(CGSize)a4 animated:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dummyPopoverController);

  if (WeakRetained == v9)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [(_UIViewServiceViewControllerOperator *)self _window];
    v13 = [v12 _windowHostingScene];
    v14 = [v13 _synchronizedDrawingFence];

    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __93___UIViewServiceViewControllerOperator_dummyPopoverController_didChangeContentSize_animated___block_invoke;
    v16[3] = &unk_1E710CB38;
    v16[4] = self;
    [remoteViewControllerProxyToOperator __viewServicePopoverDidChangeContentSize:v5 animated:v14 fence:v16 withReplyHandler:{width, height}];
    [v14 invalidate];

    objc_autoreleasePoolPop(v11);
  }
}

- (void)dummyPopoverController:(id)a3 popoverViewDidSetUseToolbarShine:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dummyPopoverController);

  if (WeakRetained == v6)
  {
    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;

    [remoteViewControllerProxyToOperator __viewServicePopoverDidSetUseToolbarShine:v4];
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

- (void)__hostViewWillAppear:(BOOL)a3 inInterfaceOrientation:(int64_t)a4 traitCollection:(id)a5 statusBarHeight:(double)a6 underlapsStatusBar:(BOOL)a7 completionHandler:(id)a8
{
  v8 = a7;
  v12 = a3;
  v14 = a8;
  v15 = _unobscuredTraitCollectionFromTraitCollection(a5);
  if ([(UIViewController *)self->_localViewController _appearState])
  {
    [(UIViewController *)self->_localViewController beginAppearanceTransition:1 animated:v12];
    v14[2](v14, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
  }

  else
  {
    v37 = v8;
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
    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:self selector:sel__firstResponderDidChange_ name:@"UIWindowFirstResponderDidChangeNotification" object:0];
    [v21 addObserver:self selector:sel__windowDidBecomeApplicationKey_ name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
    [v21 addObserver:self selector:sel__eventDispatcherDidCancelTouch_ name:@"_UIEventDispatcherDidCancelTouchForInsecureServicePresentation" object:v20];
    if (+[_UIRemoteKeyboards enabled])
    {
      [v21 addObserver:self selector:sel__wantsKeyboardEventsWithoutFirstResponder_ name:@"_UIRemoteKeyboardsServiceWantsKeyboardFocusWithoutFirstResponderNotification" object:0];
    }

    v22 = [(UIWindow *)v20 firstResponder];

    if (v22)
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
    if (a4)
    {
      *buf = 0;
      v42 = buf;
      v43 = 0x2020000000;
      v44 = a4;
      v24 = objc_alloc(MEMORY[0x1E698E648]);
      v25 = [(_UIViewServiceViewControllerOperator *)self _window];
      v26 = [v24 initWithTargetOrientation:a4 currentOrientation:{objc_msgSend(v25, "interfaceOrientation")}];

      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __153___UIViewServiceViewControllerOperator___hostViewWillAppear_inInterfaceOrientation_traitCollection_statusBarHeight_underlapsStatusBar_completionHandler___block_invoke_2;
      v40[3] = &unk_1E711BF88;
      v40[4] = self;
      v40[5] = buf;
      v40[6] = a4;
      _UIApplicationPerformWithViewServiceFallbackOrientationResolver(v26, v40);
      [(_UIViewServiceViewControllerOperator *)self __hostDidChangeStatusBarOrientationToInterfaceOrientation:*(v42 + 3)];
      [(_UIViewServiceViewControllerOperator *)self __hostDidChangeStatusBarHeight:a6];
      [(_UIViewServiceViewControllerOperator *)self __setHostViewUnderlapsStatusBar:v37];

      _Block_object_dispose(buf, 8);
    }

    [(UIViewController *)self->_localViewController beginAppearanceTransition:1 animated:v12];
    v27 = [(UIViewController *)self->_localViewController view];
    v28 = [(UIViewController *)self view];
    [v28 addSubview:v27];

    v29 = [(UIViewController *)self view];
    [v29 bounds];
    [v27 setFrame:?];

    [v27 setNeedsLayout];
    [v27 _setNeedsUpdateConstraints];
    [(_UIViewServiceViewControllerOperator *)self setNeedsStatusBarAppearanceUpdate];
    [(_UIViewServiceViewControllerOperator *)self setNeedsWhitePointAdaptivityStyleUpdate];
    [(_UIViewServiceViewControllerOperator *)self setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
    [(_UIViewServiceViewControllerOperator *)self setNeedsUpdateOfHomeIndicatorAutoHidden];
    [(_UIViewServiceViewControllerOperator *)self _setNeedsUserInterfaceAppearanceUpdate];
    [(_UIViewServiceViewControllerOperator *)self setNeedsUpdateOfPrefersPointerLocked];
    [(_UIViewServiceViewControllerOperator *)self _setNeedsUpdateOfMultitaskingDragExclusionRects];
    v30 = [(UIWindow *)v20 _registeredScrollToTopViews];
    v31 = [v30 count];

    if (v31)
    {
      [(_UIViewServiceViewControllerOperator *)self _windowDidRegisterOrUnregisterScrollToTopView];
    }

    [v21 addObserver:self selector:sel__windowDidRegisterOrUnregisterScrollToTopView name:@"_UIHostedWindowDidRegisterScrollToTopViewNotification" object:v20];
    [v21 addObserver:self selector:sel__windowDidRegisterOrUnregisterScrollToTopView name:@"_UIHostedWindowDidUnregisterScrollToTopViewNotification" object:v20];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __153___UIViewServiceViewControllerOperator___hostViewWillAppear_inInterfaceOrientation_traitCollection_statusBarHeight_underlapsStatusBar_completionHandler___block_invoke_3;
    v38[3] = &unk_1E70F4A50;
    v38[4] = self;
    v39 = v14;
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

  v36 = [(UIViewController *)self view];
  [v36 setUserInteractionEnabled:1];
}

- (void)__hostViewWillMoveToWindowInInterfaceOrientation:(int64_t)a3 withStatusBarHeight:(double)a4 underlapsStatusBar:(BOOL)a5
{
  v5 = a5;
  [(_UIViewServiceViewControllerOperator *)self __hostDidChangeStatusBarOrientationToInterfaceOrientation:a3];
  [(_UIViewServiceViewControllerOperator *)self __hostDidChangeStatusBarHeight:a4];

  [(_UIViewServiceViewControllerOperator *)self __setHostViewUnderlapsStatusBar:v5];
}

- (void)__hostViewDidAppear:(BOOL)a3
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
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 postNotificationName:@"_UIViewServiceHostViewDidAppearNotification" object:self->_localViewController userInfo:0];

  v10 = +[_UIActiveViewServiceSessionTracker sharedTracker];
  [(_UIActiveViewServiceSessionTracker *)v10 handleViewServiceActivity:self->_hostedWindow inHostedWindow:self fromProvider:self->_sessionActivityRecord forSessionActivityRecord:?];
}

- (void)__hostViewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(NSMutableArray *)self->_deferredToViewDidAppear removeAllObjects];
  v5 = [(UIViewController *)self view];
  [v5 setUserInteractionEnabled:0];

  v6 = [(UIWindow *)self->_hostedWindow windowScene];
  v10 = [v6 keyboardSceneDelegate];

  v7 = [v10 responder];

  if (v7)
  {
    [v10 _clearPersistingInputAccessoryView];
    [v10 _reloadInputViewsForResponder:0];
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"_UIViewServiceHostViewWillDisappearNotification" object:self->_localViewController userInfo:0];

  [(UIViewController *)self->_localViewController beginAppearanceTransition:0 animated:v3];
  v9 = +[_UIActiveViewServiceSessionTracker sharedTracker];
  [(_UIActiveViewServiceSessionTracker *)v9 handleViewServiceActivity:self->_hostedWindow inHostedWindow:self fromProvider:self->_sessionActivityRecord forSessionActivityRecord:?];
}

- (void)__hostViewDidDisappear:(BOOL)a3
{
  if ([(UIViewController *)self->_localViewController _appearState]== 3)
  {
    v7 = self->_hostedWindow;
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self name:@"UIWindowFirstResponderDidChangeNotification" object:0];
    [v4 removeObserver:self name:@"_UIHostedWindowDidRegisterScrollToTopViewNotification" object:v7];
    [v4 removeObserver:self name:@"_UIHostedWindowDidUnregisterScrollToTopViewNotification" object:v7];
    if (+[_UIRemoteKeyboards enabled])
    {
      [v4 removeObserver:self name:@"_UIRemoteKeyboardsServiceWantsKeyboardFocusWithoutFirstResponderNotification" object:0];
    }

    [v4 removeObserver:self name:@"_UIEventDispatcherDidCancelTouchForInsecureServicePresentation" object:v7];
    if ([(UIViewController *)self->_localViewController _shouldRemoveViewFromHierarchyOnDisappear])
    {
      v5 = [(UIViewController *)self->_localViewController view];
      [v5 removeFromSuperview];
    }

    [(UIViewController *)self->_localViewController endAppearanceTransition];
    v6 = [(UIWindow *)v7 _rootPresentationController];
    [v6 _resetRemoteDismissing];
  }
}

- (void)__hostDidAttachDisplay:(id)a3
{
  v6 = a3;
  +[UIScreen _FBSDisplayConfigurationConnected:andNotify:](UIScreen, "_FBSDisplayConfigurationConnected:andNotify:", v6, [UIApp _hasCalledRunWithMainScene]);
  if (([UIApp _appAdoptsUISceneLifecycle] & 1) == 0 && (_UIApplicationIsExtension() & 1) == 0)
  {
    v3 = [v6 identity];
    v4 = [UIScreen _screenWithFBSDisplayIdentity:v3];
    v5 = [UIWindowScene _placeholderWindowSceneForScreen:v4 create:1];
  }
}

- (void)__hostDidUpdateDisplay:(id)a3
{
  v3 = a3;
  v4 = [v3 identity];
  v5 = [UIScreen _screenWithFBSDisplayIdentity:v4];

  [v5 _updateDisplayConfiguration:v3];
}

- (void)__hostDidDetachDisplay:(id)a3
{
  v3 = [a3 identity];
  [UIScreen _FBSDisplayIdentityDisconnected:v3];
}

- (void)__hostDidUpdateSceneContext:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIViewServiceViewControllerOperator *)self _window];
  v6 = [v5 windowScene];
  v7 = [v6 _screen];
  v8 = [v7 displayIdentity];
  if (v4)
  {
    v9 = *(v4 + 4);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [v8 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v31 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_17;
      }

      if (v4)
      {
        v42 = *(v4 + 4);
      }

      else
      {
        v42 = 0;
      }

      v33 = v42;
      *buf = 138412546;
      v48 = v33;
      v49 = 2112;
      v50 = v8;
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
      if (v4)
      {
        v32 = *(v4 + 4);
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;
      *buf = 138412546;
      v48 = v33;
      v49 = 2112;
      v50 = v8;
      _os_log_impl(&dword_188A29000, v31, OS_LOG_TYPE_ERROR, "Received scene context for wrong screen, host sent context for %@ but service is on %@", buf, 0x16u);
    }

LABEL_17:
    goto LABEL_26;
  }

  v12 = self->_sceneContext;
  v13 = [v4 copy];
  sceneContext = self->_sceneContext;
  self->_sceneContext = v13;

  if (v4)
  {
    [v7 _setReferenceDisplayModeStatus:*(v4 + 5)];
    v15 = *(v4 + 9);
  }

  else
  {
    [v7 _setReferenceDisplayModeStatus:0];
    v15 = 0;
  }

  [v6 _setEnhancedWindowingEnabled:v15 & 1];
  v16 = [v4 isCapturingContentForAdditionalRenderingDestination];
  if (v16 != [(_UIRemoteViewControllerSceneContext *)v12 isCapturingContentForAdditionalRenderingDestination])
  {
    v17 = MEMORY[0x1E696AEC0];
    v44 = v5;
    v45 = v7;
    v18 = v8;
    hostBundleID = self->_hostBundleID;
    v20 = self;
    v21 = objc_opt_class();
    NSStringFromClass(v21);
    v22 = v6;
    v24 = v23 = v12;
    v25 = [v17 stringWithFormat:@"<%@: %p>", v24, v20];

    v12 = v23;
    v6 = v22;
    v43 = hostBundleID;
    v8 = v18;
    v5 = v44;
    v7 = v45;
    v26 = [v17 stringWithFormat:@"scene context value changed in view service via %@ %@", v43, v25];;
    [(UIScreen *)v45 _evaluateCapturedStateForReason:v26];
  }

  systemReferenceAngleFromHost = self->_systemReferenceAngleFromHost;
  if (v4)
  {
    v28 = *(v4 + 6);
    v29 = systemReferenceAngleFromHost != v28 || self->_systemReferenceAngleModeFromHost != *(v4 + 7);
    self->_systemReferenceAngleFromHost = v28;
    v34 = *(v4 + 7);
  }

  else
  {
    v29 = systemReferenceAngleFromHost != 0.0 || self->_systemReferenceAngleModeFromHost != 0;
    v34 = 0;
    self->_systemReferenceAngleFromHost = 0.0;
  }

  self->_systemReferenceAngleModeFromHost = v34;
  if (v5 && v29)
  {
    v35 = +[_UISystemReferenceAngleMultiplexer sharedMultiplexer];
    v36 = self->_systemReferenceAngleFromHost;
    systemReferenceAngleModeFromHost = self->_systemReferenceAngleModeFromHost;
    v46 = v5;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    [v35 systemReferenceAngleDidChange:systemReferenceAngleModeFromHost mode:v38 forWindows:v36];
  }

  v39 = [v6 keyboardSceneDelegate];
  if (v4)
  {
    v40 = *(v4 + 8);
  }

  else
  {
    v40 = 0;
  }

  v41 = v40;
  [v39 setHardwareKeyboardExclusivityIdentifier:v41];

LABEL_26:
}

- (void)__hostDidMoveToParentSceneWithSettings:(id)a3
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

- (void)__hostSceneDidUpdateWithDiff:(id)a3
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

- (void)__hostViewDidMoveToScreenWithFBSDisplayIdentity:(id)a3 newHostingHandleReplyHandler:(id)a4
{
  v51 = self->_hostedWindow;
  v50 = a4;
  v7 = a3;
  v8 = [(UIWindow *)v51 _windowHostingScene];
  v9 = [v8 _screen];

  v10 = [UIScreen _screenWithFBSDisplayIdentity:v7];

  if (v10)
  {
    v11 = v9 == v10;
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
    v15 = [(UIWindow *)v51 windowScene];
    v16 = [(UIWindowScene *)v15 _keyWindow];

    v17 = [UIWindowScene _unassociatedWindowSceneForScreen:v10 create:1];
    [(UIWindow *)v51 setWindowScene:v17];
    v18 = [v17 screen];
    v19 = +[_UIViewServiceSessionActivityRecord activityRecordForProvider:userInterfaceIdiom:](_UIViewServiceSessionActivityRecord, self, [v18 _userInterfaceIdiom]);
    sessionActivityRecord = self->_sessionActivityRecord;
    self->_sessionActivityRecord = v19;

    if (physicalButtonInteractionArbiterObserverToken)
    {
      v21 = [v17 _physicalButtonInteractionArbiter];
      v22 = [(_UIPhysicalButtonInteractionArbiter *)v21 _registerViewServiceObserver:?];
      v23 = self->_physicalButtonInteractionArbiterObserverToken;
      self->_physicalButtonInteractionArbiterObserverToken = v22;
    }

    if (v51 == v16)
    {
      v24 = [(UIWindowScene *)v17 _keyWindow];
      v12 = v24 == 0;
    }

    else
    {
      v12 = 0;
    }
  }

  v25 = [(UIWindow *)v51 windowScene];
  if (v25)
  {
    v26 = [UITextEffectsHostingInfo hostingInfoForWindowScene:v25];
    v27 = [v26 useHostedInstance];

    if ((v27 & 1) == 0)
    {
      v28 = [UITextEffectsHostingInfo hostingInfoForWindowScene:v25];
      [v28 setUseHostedInstance:1];

      v29 = [MEMORY[0x1E696AD88] defaultCenter];
      [v29 postNotificationName:@"UITextEffectsWindowIsHostedNotification" object:0];
    }
  }

  if (v12)
  {
    [(UIWindow *)v51 _makeKeyWindowIgnoringOldKeyWindow:1 transferringScenes:?];
  }

  if ([(_UIRemoteViewControllerSceneContext *)self->_sceneContext isCapturingContentForAdditionalRenderingDestination])
  {
    v48 = MEMORY[0x1E696AEC0];
    v30 = v9;
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
    v49 = v9;
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
    v42 = self;
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v45 = [v41 stringWithFormat:@"<%@: %p>", v44, v42];

    v46 = [v48 stringWithFormat:@"view service moved from %@ to %@ via %@ %@", v34, v39, hostBundleID, v45];;

    [(UIScreen *)v30 _evaluateCapturedStateForReason:v46];
    [(UIScreen *)v35 _evaluateCapturedStateForReason:v46];

    v9 = v49;
  }

  v47 = [(_UIHostedWindow *)v51 hostingHandle];
  v50[2](v50, v47);
}

- (void)__setServiceInPopover:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dummyPopoverController);
  v5 = self->_hostedWindow;
  self->_serviceInPopover = v3;
  v6 = !v3;
  if (v3 && !WeakRetained)
  {
    v7 = [(UIPopoverController *)[_UIViewServiceDummyPopoverController alloc] initWithContentViewController:self];
    objc_storeWeak(&self->_dummyPopoverController, v7);
    [(UIPopoverController *)v7 setPopoverLayoutMargins:0.0, 0.0, 0.0, 0.0];
    [(UIPopoverController *)v7 setPopoverBackgroundViewClass:objc_opt_class()];
    [(_UIViewServiceDummyPopoverController *)v7 setDummyPopoverControllerDelegate:self];
    [(UIPopoverController *)v7 setPopoverLayoutMargins:0.0, 0.0, -1000.0, 0.0];
    [(UIPopoverController *)v7 presentPopoverFromRect:v5 inView:4 permittedArrowDirections:0 animated:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
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
    v7 = [(UIViewController *)self view];
    [(UIView *)v5 addSubview:v7];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)__setSheetConfiguration:(id)a3
{
  v7 = self->_hostedWindow;
  v5 = a3;
  v6 = [(UIWindow *)v7 _rootPresentationController];
  [v6 _setConfiguration:v5];

  if ([(UIViewController *)self->_localViewController _shouldForceLayoutForHostedAnimation]&& +[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    [(UIView *)v7 layoutIfNeeded];
  }
}

- (void)__sheetInteractionDraggingDidBeginWithRubberBandCoefficient:(double)a3
{
  v4 = [(UIWindow *)self->_hostedWindow _rootPresentationController];
  [v4 _hostSheetInteractionDraggingDidBeginWithRubberBandCoefficient:a3];
}

- (void)__sheetInteractionDraggingDidChangeWithTranslation:(CGPoint)a3 velocity:(CGPoint)a4 animateChange:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  v10 = [(UIWindow *)self->_hostedWindow _rootPresentationController];
  [v10 _hostSheetInteractionDraggingDidChangeWithTranslation:v5 velocity:v9 animateChange:{v8, x, y}];
}

- (void)__sheetInteractionDraggingDidEnd
{
  v2 = [(UIWindow *)self->_hostedWindow _rootPresentationController];
  [v2 _hostSheetInteractionDraggingDidEnd];
}

- (void)__installDismissInteractionForZoomTransition
{
  v4 = objc_opt_new();
  [v4 setDelegate:self];
  [v4 setStyles:6];
  v3 = [(UIViewController *)self->_localViewController view];
  [v3 addInteraction:v4];
}

- (void)__hostDidEnterBackground
{
  if (self->_remoteViewControllerProxyToOperator)
  {
    stopStealingStatusBar(self->_hostedWindow);
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"_UIViewServiceHostDidEnterBackgroundNotification" object:self->_localViewController userInfo:0];

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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"_UIViewServiceHostWillEnterForegroundNotification" object:self->_localViewController userInfo:0];

    localViewController = self->_localViewController;

    [(UIViewController *)localViewController _hostApplicationWillEnterForeground];
  }
}

- (void)__hostSceneWillEnterForeground
{
  if (self->_remoteViewControllerProxyToOperator)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"_UIViewServiceHostSceneWillEnterForegroundNotification" object:self->_localViewController userInfo:0];
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
      v4 = [MEMORY[0x1E696AD88] defaultCenter];
      [v4 postNotificationName:@"_UIViewServiceHostDidEvaluatePencilBarrelEventFocusForSceneTransition" object:self->_localViewController userInfo:0];
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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 postNotificationName:@"_UIViewServiceHostSceneDidEnterBackgroundNotification" object:self->_localViewController userInfo:0];
  }
}

- (void)__hostWillResignActive
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"_UIViewServiceHostWillResignActiveNotification" object:self->_localViewController userInfo:0];
}

- (void)__hostDidBecomeActive
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"_UIViewServiceHostDidBecomeActiveNotification" object:self->_localViewController userInfo:0];
}

- (void)__hostDidChangeStatusBarOrientationToInterfaceOrientation:(int64_t)a3
{
  if ((a3 - 1) <= 3)
  {
    if (self->_remoteViewControllerProxyToOperator)
    {
      [UIKeyboardSceneDelegate setInterfaceOrientation:?];
      if (self->_hostStatusBarOrientation != a3)
      {
        self->_hostStatusBarOrientation = a3;
        stealStatusBar(a3, 0, self->_hostedWindow, self->_hostedWindow != 0);
        [(UIViewController *)self setInterfaceOrientation:a3];
        hostedWindow = self->_hostedWindow;
        hostStatusBarOrientation = self->_hostStatusBarOrientation;

        [(UIWindow *)hostedWindow _setWindowInterfaceOrientation:hostStatusBarOrientation];
      }
    }
  }
}

- (void)__hostDidChangeStatusBarHeight:(double)a3
{
  if (a3 >= 0.0 && self->_hostStatusBarHeight != a3)
  {
    self->_hostStatusBarHeight = a3;
    v4 = [[UIStatusBarStyleAnimationParameters alloc] initWithDefaultParameters];
    +[UIView _currentAnimationDuration];
    [(UIStatusBarAnimationParameters *)v4 setDuration:?];
    stealStatusBar(self->_hostStatusBarOrientation, v4, self->_hostedWindow, self->_hostedWindow != 0);
  }
}

- (id)_viewControllersForRotationCallbacks
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(UIWindow *)self->_hostedWindow _rotationViewControllers];
  v5 = [v3 setWithArray:v4];
  v12.receiver = self;
  v12.super_class = _UIViewServiceViewControllerOperator;
  v6 = [(UIViewController *)&v12 _viewControllersForRotationCallbacks];
  v7 = [v5 setByAddingObjectsFromArray:v6];

  v8 = MEMORY[0x1E695DF70];
  v9 = [v7 allObjects];
  v10 = [v8 arrayWithArray:v9];

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

- (void)__hostViewWillTransitionToSize:(CGSize)a3 withContextDescription:(id)a4 boundingPath:(id)a5 statusBarHeight:(double)a6 underlapsStatusBar:(BOOL)a7 fence:(id)a8 timing:(_UIUpdateTiming *)a9 whenDone:(id)a10
{
  v13 = a7;
  height = a3.height;
  width = a3.width;
  v19 = a4;
  v20 = a5;
  v21 = a8;
  v22 = a10;
  if (v21)
  {
    [UIScene _synchronizeDrawingWithFence:v21];
    if (_UIUpdateCycleEnabled())
    {
      *&v23 = _UIUpdateSchedulerRequestUpdate(&_UIUpdateCycleMainScheduler, a9, &v102).n128_u64[0];
    }
  }

  v24 = [v19 toOrientation];
  v25 = [v19 fromOrientation];
  [v19 transitionDuration];
  v27 = v26;
  v28 = self;
  v29 = *MEMORY[0x1E695EFF8];
  v30 = *(MEMORY[0x1E695EFF8] + 8);
  v31 = [(UIViewController *)v28 view];
  v32 = [v31 window];
  [v32 bounds];
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
  if (v24 == v25)
  {
    v47 = v28->_hostedWindow;
    if (v47)
    {
      v48 = v47;
      v68 = v13;
      v69 = v24 != v25;
      v70 = height;
      v112[0] = MEMORY[0x1E69E9820];
      v112[1] = 3221225472;
      v112[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_6;
      v112[3] = &unk_1E7128CB8;
      v112[4] = v28;
      v49 = _Block_copy(v112);
      v109[0] = MEMORY[0x1E69E9820];
      v109[1] = 3221225472;
      v109[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_8;
      v109[3] = &unk_1E70F6150;
      v109[4] = v28;
      v111 = v22;
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

      v66 = v22;
      v67 = v49;
      v72 = v20;
      v64 = v21;
      v65 = &__block_literal_global_577_0;
      v46 = v50;
LABEL_12:
      v53 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
      objc_storeStrong(&v28->_viewControllerTransitioningContext, v53);
      [(_UIViewControllerOneToOneTransitionContext *)v53 _setFromViewController:v28];
      [(_UIViewControllerOneToOneTransitionContext *)v53 _setToViewController:0];
      [(_UIViewControllerTransitionContext *)v53 _setContainerView:v44];
      [(_UIViewControllerOneToOneTransitionContext *)v53 _setFromStartFrame:v29, v30, v34, v36];
      [(_UIViewControllerOneToOneTransitionContext *)v53 _setToEndFrame:v29, v30, width, v70];
      [(_UIViewControllerOneToOneTransitionContext *)v53 _setToStartFrame:v29, v30, v34, v36];
      [(_UIViewControllerOneToOneTransitionContext *)v53 _setFromEndFrame:v29, v30, width, v70];
      [(_UIViewControllerTransitionContext *)v53 _setRotating:v24 != v25];
      v54 = [(_UIWindowAnimationController *)_UIHostedWindowAnimationController animationControllerWithWindow:v44];
      [(_UIViewControllerTransitionContext *)v53 _setIsAnimated:v27 > 0.0];
      [(_UIViewControllerTransitionContext *)v53 _setAnimator:v54];
      -[_UIViewControllerTransitionContext _setCompletionCurve:](v53, "_setCompletionCurve:", [v19 completionCurve]);
      v107[0] = MEMORY[0x1E69E9820];
      v107[1] = 3221225472;
      v107[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_9;
      v107[3] = &unk_1E7128CE0;
      v107[4] = v28;
      v73 = v46;
      v108 = v73;
      [(_UIViewControllerTransitionContext *)v53 _setDidCompleteHandler:v107];
      [(_UIViewControllerTransitionContext *)v53 _setDuration:v27];
      v55 = [(_UIViewServiceViewControllerOperator *)v28 _shouldForwardLegacyRotationOnly];
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
      v97 = v24;
      v101 = !v74;
      v92 = v44;
      v93 = v28;
      v98 = width;
      v99 = v70;
      v57 = v72;
      v94 = v57;
      v75 = v65;
      v95 = v75;
      v96 = &v102;
      [v71 setTransitionActions:v91];
      [(_UIViewServiceViewControllerOperator *)v28 __setHostViewUnderlapsStatusBar:v68];
      if (v55)
      {
        [(_UIViewServiceViewControllerOperator *)v28 __hostWillRotateToInterfaceOrientation:v24 duration:0 skipSelf:v27];
        v58 = [(_UIViewControllerTransitionContext *)v53 _transitionCoordinator];
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_2_580;
        v82[3] = &unk_1E7128D30;
        v90 = v56;
        v82[4] = v28;
        v84 = v29;
        v85 = v30;
        v86 = width;
        v87 = v70;
        v83 = v57;
        v88 = v24;
        v89 = v27;
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_3_582;
        v78[3] = &unk_1E7128D58;
        v78[4] = v28;
        v81 = v25;
        v80 = v66;
        v79 = v44;
        [v58 animateAlongsideTransition:v82 completion:v78];
      }

      else
      {
        v59 = v67[2]();
        v60 = *(v102.n128_u64[1] + 40);
        *(v102.n128_u64[1] + 40) = v59;

        if (v24 == v25)
        {
          v61 = [(_UIViewControllerTransitionContext *)v53 _transitionCoordinator];
          v76[0] = MEMORY[0x1E69E9820];
          v76[1] = 3221225472;
          v76[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_4_583;
          v76[3] = &unk_1E70F3B98;
          v77 = v44;
          [v61 animateAlongsideTransition:v76 completion:0];
        }

        v62 = [(_UIViewControllerTransitionContext *)v53 _transitionCoordinator];
        [(UIViewController *)v28 _window:v44 viewWillTransitionToSize:v62 withTransitionCoordinator:width, v70];
      }

      v63 = [(_UIViewControllerTransitionContext *)v53 _animator];
      [v63 animateTransition:v53];

      _Block_object_dispose(&v102, 8);
      v20 = v72;
      v21 = v64;
      v22 = v66;
      v49 = v67;
      v52 = v75;
      goto LABEL_18;
    }
  }

  else if ((v24 - 1) <= 3)
  {
    v37 = v28->_hostedWindow;
    if (v37)
    {
      v38 = v37;
      v68 = v13;
      v69 = v24 != v25;
      v70 = height;
      v64 = v21;
      v72 = v20;
      v39 = [(NSMutableArray *)v28->_deputyRotationDelegates copy];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke;
      aBlock[3] = &unk_1E7128C40;
      aBlock[4] = v28;
      v130 = v24;
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
      v125 = v24;
      v121 = v42;
      v122 = v28;
      v126 = a6;
      v43 = v41;
      v123 = v43;
      v65 = _Block_copy(v120);
      v113[0] = MEMORY[0x1E69E9820];
      v113[1] = 3221225472;
      v113[2] = __164___UIViewServiceViewControllerOperator___hostViewWillTransitionToSize_withContextDescription_boundingPath_statusBarHeight_underlapsStatusBar_fence_timing_whenDone___block_invoke_5;
      v113[3] = &unk_1E7128C90;
      v114 = v42;
      v118 = v25;
      v44 = v43;
      v119 = v24;
      v115 = v44;
      v116 = v28;
      v66 = v22;
      v117 = v22;
      v45 = v42;
      v46 = _Block_copy(v113);
      [(UIWindow *)v44 _setToWindowOrientation:v24];
      [(UIWindow *)v44 _setFromWindowOrientation:v25];

      goto LABEL_12;
    }
  }

LABEL_19:
}

- (void)__hostWillRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4 skipSelf:(BOOL)a5
{
  v5 = a5;
  v35 = *MEMORY[0x1E69E9840];
  v9 = [(_UIViewServiceViewControllerOperator *)self _viewControllersForRotationCallbacks];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
          objc_enumerationMutation(v9);
        }

        localViewController = *(*(&v29 + 1) + 8 * i);
        if (localViewController == self)
        {
          if (!v5)
          {
            [(UIViewController *)self willRotateToInterfaceOrientation:a3 duration:a4];
          }

          localViewController = self->_localViewController;
        }

        [(UIViewController *)localViewController _willRotateToInterfaceOrientation:a3 duration:[(UIViewController *)localViewController _forwardRotationMethods] forwardToChildControllers:v5 skipSelf:a4];
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v11);
  }

  [(UIViewController *)self _updateLastKnownInterfaceOrientationOnPresentionStack:a3];
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

        [*(*(&v25 + 1) + 8 * j) willRotateToInterfaceOrientation:a3 duration:a4];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v17);
  }

  v20 = [MEMORY[0x1E696AD88] defaultCenter];
  hostedWindow = self->_hostedWindow;
  v22 = MEMORY[0x1E695DF20];
  v23 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  v24 = [v22 dictionaryWithObjectsAndKeys:{v23, @"UIWindowNewOrientationUserInfoKey", 0, v25}];
  [v20 postNotificationName:@"UIWindowWillRotateNotification" object:hostedWindow userInfo:v24];
}

- (void)__hostWillAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4 skipSelf:(BOOL)a5
{
  v5 = a5;
  v25 = *MEMORY[0x1E69E9840];
  v9 = [(_UIViewServiceViewControllerOperator *)self _viewControllersForRotationCallbacks];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v9);
        }

        localViewController = *(*(&v20 + 1) + 8 * i);
        v15 = [(UIViewController *)localViewController view];
        v16 = [v15 layer];
        [v16 layoutBelowIfNeeded];

        if (localViewController == self)
        {
          if (!v5)
          {
            [(UIViewController *)self willAnimateRotationToInterfaceOrientation:a3 duration:a4];
          }

          localViewController = self->_localViewController;
        }

        [(UIViewController *)localViewController _willAnimateRotationToInterfaceOrientation:a3 duration:[(UIViewController *)localViewController _forwardRotationMethods] forwardToChildControllers:v5 skipSelf:a4];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = [(NSMutableArray *)self->_deputyRotationDelegates count]!= 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __106___UIViewServiceViewControllerOperator___hostWillAnimateRotationToInterfaceOrientation_duration_skipSelf___block_invoke;
  v19[3] = &__block_descriptor_40_e24_v24__0___v___8___v__B_16l;
  *&v19[4] = a4;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __106___UIViewServiceViewControllerOperator___hostWillAnimateRotationToInterfaceOrientation_duration_skipSelf___block_invoke_2;
  v18[3] = &unk_1E70F6848;
  v18[4] = self;
  v18[5] = a3;
  *&v18[6] = a4;
  [UIView conditionallyAnimate:v17 withAnimation:v19 layout:v18 completion:0];
}

- (void)__hostDidRotateFromInterfaceOrientation:(int64_t)a3 skipSelf:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v7 = [(_UIViewServiceViewControllerOperator *)self _viewControllersForRotationCallbacks];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(v7);
        }

        localViewController = *(*(&v27 + 1) + 8 * i);
        if (localViewController == self)
        {
          if (!v4)
          {
            [(UIViewController *)self didRotateFromInterfaceOrientation:a3];
          }

          localViewController = self->_localViewController;
        }

        [(UIViewController *)localViewController _didRotateFromInterfaceOrientation:a3 forwardToChildControllers:[(UIViewController *)localViewController _forwardRotationMethods] skipSelf:v4];
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
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

        [*(*(&v23 + 1) + 8 * j) finishRotationFromInterfaceOrientation:a3];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }

  v18 = [MEMORY[0x1E696AD88] defaultCenter];
  hostedWindow = self->_hostedWindow;
  v20 = MEMORY[0x1E695DF20];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  v22 = [v20 dictionaryWithObjectsAndKeys:{v21, @"UIWindowOldOrientationUserInfoKey", 0, v23}];
  [v18 postNotificationName:@"UIWindowDidRotateNotification" object:hostedWindow userInfo:v22];
}

- (id)_supportedInterfaceOrientationsForViewController:(id)a3
{
  v4 = [a3 supportedInterfaceOrientations];
  self->_supportedOrientations = v4;

  return _supportedInterfaceOrientationsForMask(v4);
}

- (void)__createViewControllerWithOptions:(id)a3 completionBlock:(id)a4
{
  v125 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v106 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v7 = [v6 viewControllerClassName];
  v8 = [v6 contextToken];
  v9 = *(__UILogGetCategoryCachedImpl("ViewServices", &qword_1ED499960) + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = self;
      v12 = v8;
      v13 = self;
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v10 stringWithFormat:@"<%@: %p>", v15, v13];

      v8 = v12;
    }

    else
    {
      v11 = 0;
      v16 = @"(nil)";
    }

    *buf = 138543874;
    v120 = v16;
    v121 = 2114;
    v122 = v7;
    v123 = 2114;
    v124 = v8;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Received request to create view controller: self: %{public}@; class: %{public}@; contextToken: %{public}@", buf, 0x20u);

    self = v11;
  }

  v17 = [v6 displayConfigurations];
  v18 = [v6 traitCollection];
  v19 = _unobscuredTraitCollectionFromTraitCollection(v18);

  v20 = [v6 initialInterfaceOrientation];
  v21 = [v6 hostAccessibilityServerPort];
  v22 = [v6 availableTextServices];
  if (!self->_localViewController)
  {
    v96 = v22;
    v100 = v6;
    v102 = v21;
    v104 = v8;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("ViewServices", &qword_1ED499970);
    v27 = *(CategoryCachedImpl + 8);
    v28 = self;
    v29 = v27;
    v105 = v28;
    v30 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), v28);
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
    v103 = v17;
    v32 = v17;
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
            v39 = [v37 identity];
            v40 = [UIScreen _screenWithFBSDisplayIdentity:v39];
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

    [(_UIViewServiceViewControllerOperator *)v105 __hostDidChangeStatusBarOrientationToInterfaceOrientation:v20];
    v44 = [UIApp _findUISceneForLegacyInterfaceOrientation];
    if (v44)
    {
      v45 = WeakRetained;
      v46 = v103;
      v8 = v104;
    }

    else
    {
      v45 = WeakRetained;
      v46 = v103;
      v8 = v104;
      if (v20 == 1)
      {
        v47 = [objc_opt_self() mainScreen];
        v48 = [v47 _interfaceOrientation];

        if (v48 == 1)
        {
          goto LABEL_32;
        }

        v44 = [objc_opt_self() mainScreen];
        [v44 _setInterfaceOrientation:1];
      }
    }

LABEL_32:
    v49 = [_UIViewServiceClientViewControllerMaterializer alloc];
    v50 = [v45 manager];
    v113 = 0;
    v51 = [(_UIViewServiceClientViewControllerMaterializer *)&v49->super.isa initWithSessionManager:v50 requestedViewControllerClass:v7 contextToken:v8 outError:&v113];
    v52 = v113;

    v98 = v51;
    if (v52)
    {
      v25 = v106;
      (*(v106 + 2))(v106, 0, v52);
      v19 = v99;
      v6 = v100;
      v23 = v101;
      v21 = v102;
LABEL_58:

      v17 = v46;
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
    v54 = [objc_opt_self() mainScreen];
    [v54 bounds];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = [objc_opt_class() _isSecureForRemoteViewService];
    v64 = off_1E70EC1C8;
    if (!v63)
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
    v68 = [UIWindowScene _unassociatedWindowSceneForScreen:v54 create:1];
    [v65 setWindowScene:v68];
    [v65 setRootViewController:v105];
    [v65 setBackgroundColor:0];
    [v65 setHidden:0];
    [v65 makeKeyWindow];
    [(_UIViewServiceViewControllerOperator *)v105 _installActivityObserverGestureIfNeeded];
    v95 = v54;
    v69 = +[_UIViewServiceSessionActivityRecord activityRecordForProvider:userInterfaceIdiom:](_UIViewServiceSessionActivityRecord, v105, [v54 _userInterfaceIdiom]);
    sessionActivityRecord = v105->_sessionActivityRecord;
    v105->_sessionActivityRecord = v69;

    v94 = v68;
    v71 = [v68 _physicalButtonInteractionArbiter];
    v72 = [(_UIPhysicalButtonInteractionArbiter *)v71 _registerViewServiceObserver:v105];
    physicalButtonInteractionArbiterObserverToken = v105->_physicalButtonInteractionArbiterObserverToken;
    v105->_physicalButtonInteractionArbiterObserverToken = v72;

    v74 = +[_UIActiveViewServiceSessionTracker sharedTracker];
    [(_UIActiveViewServiceSessionTracker *)v74 handleViewServiceActivity:v65 inHostedWindow:v105 fromProvider:v105->_sessionActivityRecord forSessionActivityRecord:?];

    v75 = [v65 _rootPresentationController];
    [v75 setDelegate:v105];

    if (objc_opt_respondsToSelector())
    {
      v76 = [UIApp _accessibilityMachPort];
      v6 = v100;
      v77 = v102;
      v78 = v97;
      if (v76)
      {
        v79 = v76;
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
          v83 = [(UIViewController *)v105->_localViewController view];
          if (dyld_program_sdk_at_least())
          {
            [v83 setAutoresizingMask:18];
            v84 = [(UIViewController *)v105 view];
            [v84 bounds];
            [v83 setFrame:?];
          }

          v85 = [(UIViewController *)v105 view];
          [v85 addSubview:v83];

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
          v112 = v106;
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

          v25 = v106;
          v46 = v103;
          v8 = v104;
          v19 = v99;
          v23 = v101;
          v21 = v102;
          v52 = 0;
          goto LABEL_58;
        }
      }
    }

    else
    {
      v93 = 0;
      v6 = v100;
      v77 = v102;
      v78 = v97;
      if (!v102)
      {
        goto LABEL_52;
      }
    }

    v80 = [v77 extractPortAndIKnowWhatImDoingISwear];
    if (v80 - 1 <= 0xFFFFFFFD)
    {
      v81 = v80;
      if (mach_port_mod_refs(*MEMORY[0x1E69E9A60], v80, 0, 1))
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

  v25 = v106;
  (*(v106 + 2))(v106, 0, v23);
LABEL_59:
}

- (void)__exchangeAccessibilityPortInformation:(id)a3 replyHandler:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E695E650];
    v18[0] = @"Remote service does not respond to _accessibilityMachPort";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v11 errorWithDomain:@"Accessibility" code:0 userInfo:v12];
    v7[2](v7, 0, v13);

LABEL_6:
    v10 = 0;
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v8 = [UIApp _accessibilityMachPort];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  mach_port_insert_right(*MEMORY[0x1E69E9A60], v9, v9, 0x14u);
  v10 = [objc_alloc(MEMORY[0x1E698E6C8]) initWithPort:v9];
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_7:
  v14 = [v6 extractPortAndIKnowWhatImDoingISwear];
  if (v14 - 1 <= 0xFFFFFFFD)
  {
    v15 = v14;
    if (mach_port_mod_refs(*MEMORY[0x1E69E9A60], v14, 0, 1))
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
  (v7)[2](v7, v10, 0);
}

- (void)__setContentSize:(CGSize)a3 boundingPath:(id)a4 withFence:(id)a5
{
  height = a3.height;
  width = a3.width;
  v12 = a4;
  if (a5)
  {
    v9 = a5;
    v10 = [(_UIViewServiceViewControllerOperator *)self _window];
    v11 = [v10 _windowHostingScene];
    [v11 _synchronizeDrawingWithFence:v9];
  }

  [(_UIViewServiceViewControllerOperator *)self __setContentSize:v12 boundingPath:width, height];
}

- (void)__setContentSize:(CGSize)a3 boundingPath:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
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
  [(_UIViewServiceViewControllerOperator *)self __setBoundingPath:v7];

  [(UIView *)v12 layoutBelowIfNeeded];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v23 = [(UIViewController *)self _existingView];
    [v23 setFrame:{v13, v14, width, height}];

    v24 = [(UIViewController *)self->_localViewController _existingView];
    [v24 setFrame:{v13, v14, width, height}];

    v25 = [(UIViewController *)self _existingView];
    [v25 layoutBelowIfNeeded];

    v26 = [(UIViewController *)self->_localViewController _existingView];
    [v26 layoutBelowIfNeeded];
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
    v29 = [(_UIViewControllerTransitionContext *)v27 _transitionCoordinator];
    [(UIViewController *)self _window:v12 viewWillTransitionToSize:v29 withTransitionCoordinator:width, height];
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

- (void)__setBoundingPath:(id)a3
{
  v4 = a3;
  v5 = self->_hostedWindow;
  if (v5)
  {
    [v4 setCoordinateSpace:v5];
    if (([v4 validateForCoordinateSpace] & 1) == 0)
    {
      v6 = [_UIRectangularBoundingPath alloc];
      [(UIView *)v5 bounds];
      v7 = [(_UIRectangularBoundingPath *)v6 initWithCoordinateSpace:v5 boundingRect:?];

      v4 = v7;
    }

    [(UIView *)v5 _setBoundingPath:v4];
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
    v3 = [(UIWindow *)v9 windowScene];
    v4 = [v3 keyboardSceneDelegate];

    [(UIWindow *)v9 _setIsResigningFirstResponderFromHost:1];
    v5 = [(UIWindow *)v9 firstResponder];
    [v5 resignFirstResponder];

    v6 = [v4 responder];
    v7 = [(UIResponder *)v9 _containsResponder:v6];

    if (v7)
    {
      [v4 _reloadInputViewsForResponder:0];
    }

    [(UIWindow *)v9 _setIsResigningFirstResponderFromHost:0];
    v8 = [_UIEditMenuSceneComponent sceneComponentForView:v9];
    [v8 dismissCurrentMenu];
  }
}

- (void)__hostDidSetContentOverlayInsets:(UIEdgeInsets)a3 andLeftMargin:(double)a4 rightMargin:(double)a5
{
  v6.f64[0] = a3.top;
  v6.f64[1] = a3.left;
  v7.f64[0] = a3.bottom;
  v7.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, *&self->_localViewControllerRequestedInsets.top), vceqq_f64(v7, *&self->_localViewControllerRequestedInsets.bottom)))) & 1) != 0 && self->_localViewControllerRequestedLeftMargin == a4 && self->_localViewControllerRequestedRightMargin == a5)
  {
    return;
  }

  self->_localViewControllerRequestedInsets = a3;
  self->_localViewControllerRequestedLeftMargin = a4;
  self->_localViewControllerRequestedRightMargin = a5;
  if (![(_UIViewServiceViewControllerOperator *)self _providesCustomBasePresentationInsets:*&a3.top])
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
  v12 = [(UIViewController *)self presentedViewController];
  if (v12)
  {
    v17 = v12;
    [(UIViewController *)v12 _recursiveUpdateContentOverlayInsetsFromParentIfNecessary];
LABEL_10:
    v12 = v17;
  }
}

- (UIEdgeInsets)_customBasePresentationInsetsForView:(id)a3
{
  v4 = a3;
  [v4 bounds];
  [v4 convertRect:0 toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(UIViewController *)self view];
  v14 = [v13 window];
  if (v14)
  {
    v15 = [(UIViewController *)self view];
    v16 = [(UIViewController *)self view];
    [v16 bounds];
    [v15 convertRect:0 toView:?];
    v18 = v17;
    v47 = v19;
    v42 = v21;
    v43 = v20;
  }

  else
  {
    v15 = [(_UIViewServiceViewControllerOperator *)self _window];
    [v15 bounds];
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
  v3 = [(_UIViewServiceViewControllerOperator *)self _providesCustomBasePresentationInsets];
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (!v3)
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

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  v6 = a3;
  if (self->_localViewController == v6 && [(_UIViewServiceViewControllerOperator *)self _providesCustomBasePresentationInsets])
  {
    *a4 = 1;
    top = self->_localViewControllerRequestedInsets.top;
    left = self->_localViewControllerRequestedInsets.left;
    bottom = self->_localViewControllerRequestedInsets.bottom;
    right = self->_localViewControllerRequestedInsets.right;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = _UIViewServiceViewControllerOperator;
    [(UIViewController *)&v19 _edgeInsetsForChildViewController:v6 insetsAreAbsolute:a4];
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

- (void)_marginInfoForChild:(id)a3 leftMargin:(double *)a4 rightMargin:(double *)a5
{
  if (self->_localViewController == a3)
  {
    *a4 = self->_localViewControllerRequestedLeftMargin;
    *a5 = self->_localViewControllerRequestedRightMargin;
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
  v3 = [(UIViewController *)self _effectiveStatusBarStyleViewController];
  v4 = [(UIViewController *)self _effectiveStatusBarHiddenViewController];
  if ([objc_opt_class() doesOverrideViewControllerMethod:sel__preferredStatusBarVisibility])
  {
    v5 = [v4 _preferredStatusBarVisibility];
LABEL_8:
    v6 = v5;
    goto LABEL_9;
  }

  if (![objc_opt_class() doesOverrideViewControllerMethod:sel_prefersStatusBarHidden])
  {
    v11.receiver = self;
    v11.super_class = _UIViewServiceViewControllerOperator;
    v5 = [(UIViewController *)&v11 _preferredStatusBarVisibility];
    goto LABEL_8;
  }

  if ([v4 prefersStatusBarHidden])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

LABEL_9:
  remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
  v8 = [v3 preferredStatusBarStyle];
  v9 = [v3 preferredStatusBarUpdateAnimation];
  v10 = +[UIView _currentAnimationSettings];
  [remoteViewControllerProxyToOperator __viewServiceDidUpdatePreferredStatusBarStyle:v8 preferredStatusBarVisibility:v6 updateAnimation:v9 currentAnimationSettings:v10];
}

- (void)setNeedsWhitePointAdaptivityStyleUpdate
{
  v7.receiver = self;
  v7.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v7 setNeedsWhitePointAdaptivityStyleUpdate];
  v3 = [(UIViewController *)self _effectiveWhitePointAdaptivityStyleViewController];
  remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
  v5 = [v3 preferredWhitePointAdaptivityStyle];
  v6 = +[UIView _currentAnimationSettings];
  [remoteViewControllerProxyToOperator __viewServiceDidUpdatePreferredWhitePointAdaptationStyle:v5 animationSettings:v6];
}

- (void)setNeedsUpdateOfScreenEdgesDeferringSystemGestures
{
  v4.receiver = self;
  v4.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v4 setNeedsUpdateOfScreenEdgesDeferringSystemGestures];
  v3 = [(UIViewController *)self _effectiveScreenEdgesDeferringSystemGesturesViewController];
  [self->_remoteViewControllerProxyToOperator __viewServiceDidUpdatePreferredScreenEdgesDeferringSystemGestures:{objc_msgSend(v3, "preferredScreenEdgesDeferringSystemGestures")}];
}

- (void)setNeedsUpdateOfHomeIndicatorAutoHidden
{
  v4.receiver = self;
  v4.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v4 setNeedsUpdateOfHomeIndicatorAutoHidden];
  v3 = [(UIViewController *)self _effectiveHomeIndicatorAutoHiddenViewController];
  [self->_remoteViewControllerProxyToOperator __viewServiceDidUpdatePrefersHomeIndicatorAutoHidden:{objc_msgSend(v3, "prefersHomeIndicatorAutoHidden")}];
}

- (void)setNeedsUpdateOfPrefersPointerLocked
{
  v4.receiver = self;
  v4.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v4 setNeedsUpdateOfPrefersPointerLocked];
  v3 = [(UIViewController *)self _effectivePointerLockViewController];
  [self->_remoteViewControllerProxyToOperator __viewServiceDidUpdatePrefersPointerLocked:{objc_msgSend(v3, "prefersPointerLocked")}];
}

- (void)_setNeedsUpdateOfMultitaskingDragExclusionRects
{
  v5.receiver = self;
  v5.super_class = _UIViewServiceViewControllerOperator;
  [(UIViewController *)&v5 _setNeedsUpdateOfMultitaskingDragExclusionRects];
  v3 = [(UIViewController *)self _effectiveViewControllerForMultitaskingDragExclusionRects];
  v4 = [v3 _multitaskingDragExclusionRects];
  [self->_remoteViewControllerProxyToOperator __viewServiceDidUpdateMultitaskingDragExclusionRects:v4];
}

- (int64_t)_availableTextServices
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    return self->_availableTextServices;
  }

  v6.receiver = self;
  v6.super_class = _UIViewServiceViewControllerOperator;
  return [(UIResponder *)&v6 _availableTextServices];
}

- (id)_showServiceForType:(int64_t)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = [v6 textInput];
  v8 = [v7 textInputView];
  v9 = [_UITextServiceSession shouldPresentServiceInSameWindowAsView:v8];

  if (v9)
  {
    v18.receiver = self;
    v18.super_class = _UIViewServiceViewControllerOperator;
    v10 = [(UIResponder *)&v18 _showServiceForType:a3 withContext:v6];
  }

  else
  {
    [(_UIHostedTextServiceSession *)self->_textServiceSession setDelegate:0];
    v11 = [_UIHostedTextServiceSession showServiceForType:a3 withContext:v6];
    textServiceSession = self->_textServiceSession;
    self->_textServiceSession = v11;

    [(_UIHostedTextServiceSession *)self->_textServiceSession setDelegate:self];
    v13 = [(UIViewController *)self view];
    [v6 convertRectToView:v13];

    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72___UIViewServiceViewControllerOperator__showServiceForType_withContext___block_invoke;
    v17[3] = &unk_1E7128D80;
    v17[4] = self;
    [remoteViewControllerProxyToOperator __showServiceForType:a3 withContext:v6 replyHandler:v17];
    v10 = self->_textServiceSession;
  }

  v15 = v10;

  return v15;
}

- (id)_showServiceForText:(id)a3 type:(int64_t)a4 fromRect:(CGRect)a5 inView:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a6;
  v14 = a3;
  v15 = -[_UIViewServiceViewControllerOperator _showServiceForText:selectedTextRange:type:fromRect:inView:](self, "_showServiceForText:selectedTextRange:type:fromRect:inView:", v14, 0, [v14 length], a4, v13, x, y, width, height);

  return v15;
}

- (id)_showServiceForText:(id)a3 selectedTextRange:(_NSRange)a4 type:(int64_t)a5 fromRect:(CGRect)a6 inView:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  length = a4.length;
  location = a4.location;
  v16 = a3;
  v17 = a7;
  if ([_UITextServiceSession shouldPresentServiceInSameWindowAsView:v17])
  {
    v36.receiver = self;
    v36.super_class = _UIViewServiceViewControllerOperator;
    v18 = [(UIResponder *)&v36 _showServiceForText:v16 selectedTextRange:location type:length fromRect:a5 inView:v17, x, y, width, height];
  }

  else
  {
    [(_UIHostedTextServiceSession *)self->_textServiceSession setDelegate:0];
    v19 = [_UIHostedTextServiceSession showServiceForText:v16 selectedTextRange:location type:length fromRect:a5 inView:v17, x, y, width, height];
    textServiceSession = self->_textServiceSession;
    self->_textServiceSession = v19;

    [(_UIHostedTextServiceSession *)self->_textServiceSession setDelegate:self];
    v21 = [(UIViewController *)self view];
    [v21 convertRect:v17 fromView:{x, y, width, height}];
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
    [remoteViewControllerProxyToOperator __showServiceForText:v16 selectedTextRangeValue:v31 type:a5 fromRectValue:v32 replyHandler:v35];

    v18 = self->_textServiceSession;
  }

  v33 = v18;

  return v33;
}

- (void)dismissHostedTextServiceSession:(id)a3 animated:(BOOL)a4
{
  if (self->_textServiceSession == a3)
  {
    [self->_remoteViewControllerProxyToOperator __dismissTextServiceSessionAnimated:a4];
  }
}

- (void)__textServiceDidDismiss
{
  [(_UIHostedTextServiceSession *)self->_textServiceSession remoteSessionDidDismiss];
  [(_UIHostedTextServiceSession *)self->_textServiceSession setDelegate:0];
  textServiceSession = self->_textServiceSession;
  self->_textServiceSession = 0;

  v4 = [(UIWindow *)self->_hostedWindow windowScene];
  v6 = [v4 keyboardSceneDelegate];

  v5 = [(_UIViewServiceViewControllerOperator *)self _inputViewsKey];
  [v6 _restoreInputViewsWithId:v5 animated:1];
}

- (void)motionEnded:(int64_t)a3 withEvent:(id)a4
{
  if ([UIApp applicationSupportsShakeToEdit] && !_AXSShakeToUndoDisabled())
  {

    [(_UIViewServiceViewControllerOperator *)self __showEditAlertView];
  }
}

- (void)__showEditAlertView
{
  v3 = [(UIWindow *)self->_hostedWindow firstResponder];
  v4 = [v3 undoManager];
  editAlertUndoManager = self->_editAlertUndoManager;
  self->_editAlertUndoManager = v4;

  if (!self->_editAlertToken && ([(NSUndoManager *)self->_editAlertUndoManager canUndo]|| [(NSUndoManager *)self->_editAlertUndoManager canRedo]))
  {
    v6 = arc4random();
    self->_editAlertToken = v6;
    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v8 = [(NSUndoManager *)self->_editAlertUndoManager canUndo];
    v9 = [(NSUndoManager *)self->_editAlertUndoManager canRedo];

    [remoteViewControllerProxyToOperator __showEditAlertViewWithToken:v6 canUndo:v8 canRedo:v9];
  }
}

- (void)__undoActionWithToken:(int64_t)a3
{
  if (a3 && self->_editAlertToken == a3)
  {
    self->_editAlertToken = 0;
    [(NSUndoManager *)self->_editAlertUndoManager undo];
    editAlertUndoManager = self->_editAlertUndoManager;
    self->_editAlertUndoManager = 0;
  }
}

- (void)__redoActionWithToken:(int64_t)a3
{
  if (a3 && self->_editAlertToken == a3)
  {
    self->_editAlertToken = 0;
    [(NSUndoManager *)self->_editAlertUndoManager redo];
    editAlertUndoManager = self->_editAlertUndoManager;
    self->_editAlertUndoManager = 0;
  }
}

- (void)__cancelAlertActionWithToken:(int64_t)a3
{
  if (a3)
  {
    if (self->_editAlertToken == a3)
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
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = _UIViewServiceViewControllerOperator;
    v2 = [(UIViewController *)&v4 preferredFocusEnvironments];
  }

  return v2;
}

- (id)_dataFromPressesEvent:(id)a3
{
  [a3 _hidEvent];
  Data = IOHIDEventCreateData();

  return Data;
}

- (BOOL)_forwardPresses:(id)a3 withEvent:(id)a4 canceled:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ((_UIPressesContainsPressType(v8, 7) & 1) != 0 || _UIPressesContainsPressType(v8, 5) && (![v9 _hidEvent] || (objc_msgSend(v9, "_hidEvent"), IOHIDEventGetType() != 35)))
  {
    remoteViewControllerProxyToOperator = self->_remoteViewControllerProxyToOperator;
    v11 = [(_UIViewServiceViewControllerOperator *)self _dataFromPressesEvent:v9];
    [remoteViewControllerProxyToOperator __trampolineButtonPressData:v11 canceled:v5];

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(_UIViewServiceViewControllerOperator *)self _forwardPresses:v6 withEvent:v7 canceled:0])
  {
    v8.receiver = self;
    v8.super_class = _UIViewServiceViewControllerOperator;
    [(UIResponder *)&v8 pressesBegan:v6 withEvent:v7];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(_UIViewServiceViewControllerOperator *)self _forwardPresses:v6 withEvent:v7 canceled:1])
  {
    v8.receiver = self;
    v8.super_class = _UIViewServiceViewControllerOperator;
    [(UIResponder *)&v8 pressesCancelled:v6 withEvent:v7];
  }
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(_UIViewServiceViewControllerOperator *)self _forwardPresses:v6 withEvent:v7 canceled:0])
  {
    v8.receiver = self;
    v8.super_class = _UIViewServiceViewControllerOperator;
    [(UIResponder *)&v8 pressesChanged:v6 withEvent:v7];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(_UIViewServiceViewControllerOperator *)self _forwardPresses:v6 withEvent:v7 canceled:0])
  {
    v8.receiver = self;
    v8.super_class = _UIViewServiceViewControllerOperator;
    [(UIResponder *)&v8 pressesEnded:v6 withEvent:v7];
  }
}

- (void)__timelinesForDateInterval:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (pthread_main_np() != 1)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"UIViewServiceViewControllerOperator.m" lineNumber:3417 description:@"Call must be made on main thread"];
  }

  if (!self->_blsFrameSpecifierModel)
  {
    v9 = objc_alloc_init(MEMORY[0x1E698E540]);
    blsFrameSpecifierModel = self->_blsFrameSpecifierModel;
    self->_blsFrameSpecifierModel = v9;
  }

  v11 = objc_opt_new();
  v12 = [(UIViewController *)self->_localViewController _effectiveControllersForAlwaysOnTimelines];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __78___UIViewServiceViewControllerOperator___timelinesForDateInterval_completion___block_invoke;
  v22[3] = &unk_1E710C950;
  v26 = a2;
  v23 = v7;
  v24 = self;
  v25 = v11;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78___UIViewServiceViewControllerOperator___timelinesForDateInterval_completion___block_invoke_3;
  v17[3] = &unk_1E7128DA8;
  v20 = v8;
  v21 = a2;
  v17[4] = self;
  v18 = v25;
  v19 = v23;
  v13 = v8;
  v14 = v23;
  v15 = v25;
  [(_UIBacklightEnvironment *)_UIAlwaysOnEnvironment _performOnChildViewControllersForAlwaysOnTimelines:v12 performBlock:v22 withCompletion:v17];
}

- (void)__updateWithFrameSpecifierDate:(id)a3 completion:(id)a4
{
  blsFrameSpecifierModel = self->_blsFrameSpecifierModel;
  v7 = a4;
  v8 = [(BLSFrameSpecifierModel *)blsFrameSpecifierModel specifierAtPresentationDate:a3];
  v9 = [(UIViewController *)self->_localViewController _effectiveControllersForAlwaysOnTimelines];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82___UIViewServiceViewControllerOperator___updateWithFrameSpecifierDate_completion___block_invoke;
  v11[3] = &unk_1E7128DD0;
  v12 = v8;
  v10 = v8;
  [(_UIBacklightEnvironment *)_UIAlwaysOnEnvironment _performOnChildViewControllersForAlwaysOnTimelines:v9 performBlock:v11 withCompletion:v7];
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
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UIViewServiceViewControllerOperator.m" lineNumber:3496 description:@"Call must be made on main thread"];
  }

  hostedWindow = self->_hostedWindow;
  if (hostedWindow)
  {
    if (!self->_hostedWindowActivityObserverGesture)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%p", @"ViewService-HostedWindow-Observer", hostedWindow];
      v6 = [[_UITouchesBeganObserverGestureRecognizer alloc] initWithTarget:sel__handleActivityObserverGesture_ action:v5 name:?];
      hostedWindowActivityObserverGesture = self->_hostedWindowActivityObserverGesture;
      self->_hostedWindowActivityObserverGesture = v6;

      hostedWindow = self->_hostedWindow;
    }

    v8 = [(UIView *)hostedWindow gestureRecognizers];
    v9 = [v8 containsObject:self->_hostedWindowActivityObserverGesture];

    if ((v9 & 1) == 0)
    {
      v10 = self->_hostedWindow;
      v11 = self->_hostedWindowActivityObserverGesture;

      [(UIView *)v10 addGestureRecognizer:v11];
    }
  }
}

- (void)_handleActivityObserverGesture:(id)a3
{
  v4 = +[_UIActiveViewServiceSessionTracker sharedTracker];
  [(_UIActiveViewServiceSessionTracker *)v4 handleViewServiceActivity:self->_hostedWindow inHostedWindow:self fromProvider:self->_sessionActivityRecord forSessionActivityRecord:?];
}

- (void)_physicalButtonInteractionArbiter:(id)a3 didUpdateResolvedConfigurations:(id)a4 inActiveViewServiceSession:(id)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  sessionActivityRecord = self->_sessionActivityRecord;
  if (sessionActivityRecord)
  {
    v13 = v10 ? v10->_userInterfaceIdiom : 0;
    if (sessionActivityRecord->_userInterfaceIdiom == v13)
    {
      v14 = objc_opt_new();
      v15 = v14;
      if (sessionActivityRecord == v11 && self->_hostedWindow != 0)
      {
        v38 = sessionActivityRecord;
        v39 = v9;
        v41 = v11;
        v43 = v14;
        v40 = v8;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v17 = v9;
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
              v24 = [v23 view];
              v25 = [v24 _window];

              if (v25 == self->_hostedWindow)
              {
                [v43 _setConfiguration:v22 forButton:{objc_msgSend(v22, "_button")}];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v44 objects:v54 count:16];
          }

          while (v19);
        }

        v9 = v39;
        v8 = v40;
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
          v31 = self;
          v32 = v28;
          v33 = objc_opt_class();
          v34 = NSStringFromClass(v33);
          v35 = [v30 stringWithFormat:@"<%@: %p>", v34, v31];

          v36 = v35;
          v37 = [v26 succinctDescription];
          *buf = 138412802;
          v49 = v35;
          v50 = 1024;
          v51 = v29;
          v11 = v42;
          v52 = 2112;
          v53 = v37;
          _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_ERROR, "Notifying view service host of resolved configurations update: self: %@; isMostActiveService: %d; configurations: %@", buf, 0x1Cu);
        }
      }

      [self->_remoteViewControllerProxyToOperator __viewServiceDidUpdateResolvedPhysicalButtonConfigurations:v26];
    }
  }
}

- (void)__hostDidReceivePhysicalButtonBSAction:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &__hostDidReceivePhysicalButtonBSAction____s_category);
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

      *buf = 138412546;
      v16 = v14;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Received proxy physicalButtonBSAction from host: self: %@; physicalButtonBSAction: %@", buf, 0x16u);
    }
  }

  v6 = [(UIWindow *)self->_hostedWindow _eventRoutingScene];
  v7 = [v6 _physicalButtonInteractionArbiter];
  v8 = v7;
  if (v7)
  {
    [(_UIPhysicalButtonInteractionArbiter *)v7 _handleBSAction:v4];
  }
}

- (void)__hostHomeAffordanceFrameIntersectionDidChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
        v14 = self;
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = [v13 stringWithFormat:@"<%@: %p>", v16, v14];
      }

      else
      {
        v17 = @"(nil)";
      }

      *buf = 138543618;
      v19 = v12;
      v20 = 2114;
      v21 = v17;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Received homeAffordanceFrameIntersectionDidChange from host: %{public}@; self: %{public}@", buf, 0x16u);
    }
  }

  v9 = [(UIWindow *)self->_hostedWindow _windowHostingScene];
  v10 = [v9 _homeAffordanceSceneNotifier];

  if (v10)
  {
    [(_UIHomeAffordanceSceneNotifier *)v10 _homeAffordanceLegacyViewServiceUpdateSource:x frameDidChange:y, width, height];
  }
}

- (void)__hostReceivedHomeAffordanceDoubleTapGestureDidSucceed:(BOOL)a3
{
  v3 = a3;
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
        v10 = self;
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [v9 stringWithFormat:@"<%@: %p>", v12, v10];
      }

      else
      {
        v13 = @"(nil)";
      }

      *buf = 67109378;
      v15 = v3;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Received doubleTapGestureDidSucceed from host:  %d; self: %{public}@", buf, 0x12u);
    }
  }

  v6 = [(UIWindow *)self->_hostedWindow _windowHostingScene];
  v7 = [v6 _homeAffordanceSceneNotifier];

  if (v7)
  {
    [(_UIHomeAffordanceSceneNotifier *)v7 _homeAffordanceLegacyViewServiceUpdateSource:v3 doubleTapGestureDidSucceed:?];
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