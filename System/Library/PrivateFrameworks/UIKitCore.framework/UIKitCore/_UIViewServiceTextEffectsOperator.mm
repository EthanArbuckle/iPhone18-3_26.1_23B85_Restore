@interface _UIViewServiceTextEffectsOperator
+ (id)XPCInterface;
+ (id)operatorWithRemoteViewControllerProxy:(id)a3 hostPID:(int)a4 sessionIdentifier:(id)a5;
+ (void)initialize;
- (void)__createHostedTextEffectsWithReplyHandler:(id)a3;
- (void)__hostDidEnterBackground;
- (void)__hostDidReceiveGestureDirection:(int64_t)a3 authenticationMessage:(id)a4;
- (void)__hostViewDidMoveToScreenWithNewHostingHandleReplyHandler:(id)a3;
- (void)__hostViewWillAppear:(BOOL)a3;
- (void)__hostViewWillDisappear:(BOOL)a3;
- (void)__hostWillEnterForeground;
- (void)__prepareForDisconnectionWithCompletionHandler:(id)a3;
- (void)__setHostedViewReference:(CGRect)a3;
- (void)__setHostedViewSize:(CGSize)a3;
- (void)__setNextAutomaticOrderOutDirection:(int)a3 duration:(double)a4;
- (void)__setRemoteTextEffectsWindowMatchesLayerWithContextId:(unsigned int)a3 renderId:(unint64_t)a4;
- (void)__setSafeAreaInsets:(UIEdgeInsets)a3;
- (void)__setWindowOffset:(CGPoint)a3;
- (void)_associateHostedKeyboardWindowWithViewServiceSessionIfNeeded;
- (void)_associateHostedTextEffectsWindowWithViewServiceSessionIfNeeded;
- (void)_associateWindowWithViewServiceSession:(void *)a3 installingGestureIfNeeded:;
- (void)_disassociateHostedKeyboardWindowFromViewServiceSessionIfNeeded;
- (void)_disassociateTextEffectsWindowFromViewServiceSessionIfNeeded;
- (void)_disassociateWindowForGestureFromViewServiceSessionIfNeeded:(void *)a1;
- (void)_handleRemoteKeyboardActivityObserverGesture:(id)a3;
- (void)_handleTEWActivityObserverGesture:(id)a3;
- (void)_invalidateUnconditionallyThen:(id)a3;
- (void)_objc_initiateDealloc;
- (void)_prepareForDisconnectionUnconditionallyThen:(id)a3;
- (void)_reloadSafeInsets;
- (void)_removeTextEffectsWindowMatchAnimations;
- (void)_resetHostedViewSize;
- (void)_restoreInputViews;
- (void)_screenInterfaceOrientationDidChange:(id)a3;
- (void)_viewServiceHostWillEnterForeground:(id)a3;
- (void)_windowDidBecomeApplicationKey:(id)a3;
- (void)dealloc;
- (void)finishRotationFromInterfaceOrientation:(int64_t)a3;
- (void)forceSyncToStatusBarOrientation;
- (void)hostedWindow:(id)a3 didSetFirstResponder:(id)a4;
- (void)makeHostWindowKey;
- (void)performOnRelevantWindows:(id)a3;
- (void)rotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)setHostedWindow:(id)a3 disableAutomaticBehaviors:(BOOL)a4;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation _UIViewServiceTextEffectsOperator

+ (id)operatorWithRemoteViewControllerProxy:(id)a3 hostPID:(int)a4 sessionIdentifier:(id)a5
{
  v6 = *&a4;
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc_init(_UIViewServiceTextEffectsOperator);
  remoteViewControllerProxy = v9->_remoteViewControllerProxy;
  v9->_remoteViewControllerProxy = v7;
  v11 = v7;

  sessionIdentifier = v9->_sessionIdentifier;
  v9->_sessionIdentifier = v8;
  v13 = v8;

  v9->_wasInvalidated = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __101___UIViewServiceTextEffectsOperator_operatorWithRemoteViewControllerProxy_hostPID_sessionIdentifier___block_invoke;
  v24[3] = &__block_descriptor_40_e14_v16__0___v___8lu32l8;
  v24[4] = v9;
  v14 = [_UIAsyncInvocation invocationWithBlock:v24];
  prepareForDisconnectionInvocation = v9->_prepareForDisconnectionInvocation;
  v9->_prepareForDisconnectionInvocation = v14;

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __101___UIViewServiceTextEffectsOperator_operatorWithRemoteViewControllerProxy_hostPID_sessionIdentifier___block_invoke_2;
  v23[3] = &__block_descriptor_40_e14_v16__0___v___8lu32l8;
  v23[4] = v9;
  v16 = [_UIAsyncInvocation invocationWithBlock:v23];
  invalidationInvocation = v9->_invalidationInvocation;
  v9->_invalidationInvocation = v16;

  v18 = [objc_opt_class() XPCInterface];
  v19 = [v18 exportedInterface];
  v20 = [v19 protocol];
  v21 = [_UIViewServiceUIBehaviorProxy proxyWrappingExportedObject:v9 forCommunicationWithPID:v6 exportedProtocol:v20];

  return v21;
}

- (void)_prepareForDisconnectionUnconditionallyThen:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81___UIViewServiceTextEffectsOperator__prepareForDisconnectionUnconditionallyThen___block_invoke;
  v6[3] = &unk_1E70F37C0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_invalidateUnconditionallyThen:(id)a3
{
  v4 = a3;
  v5 = [(_UIViewServiceTextEffectsOperator *)self _queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68___UIViewServiceTextEffectsOperator__invalidateUnconditionallyThen___block_invoke;
  v7[3] = &unk_1E7128660;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    _class_setCustomDeallocInitiation();
  }
}

- (void)_objc_initiateDealloc
{
  v3 = [(_UIViewServiceTextEffectsOperator *)self invalidate];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58___UIViewServiceTextEffectsOperator__objc_initiateDealloc__block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0lu32l8;
  v4[4] = self;
  [v3 whenCompleteDo:v4];
}

- (void)dealloc
{
  v6[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = 0x1EFBB47D0;
  v6[1] = @"_UIWindowDidBecomeApplicationKeyNotification";
  v6[2] = @"UITextInputResponderIsReloadedNotification";
  v6[3] = @"_UIScreenInterfaceOrientationDidChangeNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIViewServiceTextEffectsOperator;
  [(_UIViewServiceTextEffectsOperator *)&v5 dealloc];
}

- (void)makeHostWindowKey
{
  if (!self->_isRestoringInputViews)
  {
    WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);
    [WeakRetained makeKeyWindow];

    v4 = objc_loadWeakRetained(&self->_hostedWindow);
    v5 = [v4 screen];
    v6 = [v5 _userInterfaceIdiom];

    if (v6 == 3)
    {
      v7 = objc_loadWeakRetained(&self->_hostedWindow);
      [v7 _makeExternalKeyWindow];
    }

    [(_UIViewServiceTextEffectsOperator *)self forceSyncToStatusBarOrientation];
  }

  x = self->_windowOrigin.x;
  y = self->_windowOrigin.y;
  v10 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0];
  [v10 setHostedViewOrigin:{x, y}];

  [(_UIViewServiceTextEffectsOperator *)self _reloadSafeInsets];
}

- (void)hostedWindow:(id)a3 didSetFirstResponder:(id)a4
{
  if (!self->_localVCDisablesAutomaticBehaviors && !self->_didResignForDisappear)
  {
    objc_storeStrong(&_activeTextEffectsOperator, self);

    [(_UIViewServiceTextEffectsOperator *)self makeHostWindowKey];
  }
}

- (void)__createHostedTextEffectsWithReplyHandler:(id)a3
{
  v4 = a3;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("ViewServices", &_MergedGlobals_1367);
  v6 = *(CategoryCachedImpl + 8);
  v7 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CreateHostedTextEffects", "", buf, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);
  v10 = _UISetCurrentFallbackEnvironment(WeakRetained);

  v11 = +[UIWindowScene _keyWindowScene];
  v12 = [UITextEffectsHostingInfo hostingInfoForWindowScene:v11];
  [v12 setUseHostedInstance:1];

  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  [v13 postNotificationName:@"UITextEffectsWindowIsHostedNotification" object:0];
  [(_UIViewServiceTextEffectsOperator *)self _associateHostedTextEffectsWindowWithViewServiceSessionIfNeeded];
  [v13 addObserver:self selector:sel__windowDidBecomeApplicationKey_ name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
  [v13 addObserver:self selector:sel__inputResponderReloaded_ name:@"UITextInputResponderIsReloadedNotification" object:0];
  v14 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0];
  v15 = [v14 _hostingHandle];
  v16 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v17 = [v16 prepareForHostedWindowWithScene:v11];
  v18 = [v17 _hostingHandle];
  v4[2](v4, v15, 0, v18);

  [v13 addObserver:self selector:sel__viewServiceHostWillEnterForeground_ name:0x1EFBB47D0 object:0];
  _UIRestorePreviousFallbackEnvironment(v10);
  v19 = __UILogGetCategoryCachedImpl("ViewServices", &qword_1ED4A2970);
  v20 = *(v19 + 8);
  v21 = os_signpost_id_make_with_pointer(*(v19 + 8), self);
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = v21;
    if (os_signpost_enabled(v20))
    {
      *v23 = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v20, OS_SIGNPOST_INTERVAL_END, v22, "CreateHostedTextEffects", "", v23, 2u);
    }
  }
}

- (void)__hostViewDidMoveToScreenWithNewHostingHandleReplyHandler:(id)a3
{
  v4 = a3;
  [(_UIViewServiceTextEffectsOperator *)self _disassociateTextEffectsWindowFromViewServiceSessionIfNeeded];
  [(_UIViewServiceTextEffectsOperator *)self _disassociateHostedKeyboardWindowFromViewServiceSessionIfNeeded];
  WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);
  v19 = [WeakRetained windowScene];

  v6 = [v19 screen];
  v7 = [v6 _userInterfaceIdiom];

  v8 = [_UIViewServiceSessionActivityRecord activityRecordForProvider:v7 userInterfaceIdiom:?];
  sessionActivityRecord = self->_sessionActivityRecord;
  self->_sessionActivityRecord = v8;

  [(_UIViewServiceTextEffectsOperator *)self _associateHostedTextEffectsWindowWithViewServiceSessionIfNeeded];
  [(_UIViewServiceTextEffectsOperator *)self _associateHostedKeyboardWindowWithViewServiceSessionIfNeeded];
  v10 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v19];
  v11 = [v10 _hostingHandle];

  v12 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v13 = [v12 prepareForHostedWindowWithScene:v19];
  v14 = [v13 _hostingHandle];

  v4[2](v4, v11, v14);
  v15 = objc_loadWeakRetained(&self->_hostedWindow);
  v16 = [v15 screen];
  v17 = [v16 _interfaceOrientation];

  if (!v17)
  {
    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:self selector:sel__screenInterfaceOrientationDidChange_ name:@"_UIScreenInterfaceOrientationDidChangeNotification" object:0];
  }
}

- (void)_screenInterfaceOrientationDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);
  v5 = [WeakRetained screen];
  v6 = [v5 _interfaceOrientation];

  if (v6)
  {
    v10 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0];
    v7 = objc_loadWeakRetained(&self->_hostedWindow);
    v8 = [v7 screen];
    [v10 _setWindowInterfaceOrientation:{objc_msgSend(v8, "_interfaceOrientation")}];

    [v10 _sceneBoundsDidChange];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 removeObserver:self name:@"_UIScreenInterfaceOrientationDidChangeNotification" object:0];
  }
}

- (void)__setWindowOffset:(CGPoint)a3
{
  self->_windowOrigin = a3;
  if (!self->_localVCDisablesAutomaticBehaviors && _activeTextEffectsOperator == self)
  {
    v4 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0];
    [v4 hostedViewOrigin];
    v6 = floor(v5);
    v8 = floor(v7);
    v9 = floor(self->_windowOrigin.x);
    v10 = floor(self->_windowOrigin.y);

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55___UIViewServiceTextEffectsOperator___setWindowOffset___block_invoke;
    v13[3] = &unk_1E70F4440;
    v13[4] = self;
    [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v13];
    if (v6 != v9 || v8 != v10)
    {
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 postNotificationName:@"UITextEffectsWindowOffsetDidChangeNotification" object:0];
    }
  }
}

- (void)_reloadSafeInsets
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54___UIViewServiceTextEffectsOperator__reloadSafeInsets__block_invoke;
  v2[3] = &unk_1E70F4440;
  v2[4] = self;
  [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v2];
}

- (void)__setSafeAreaInsets:(UIEdgeInsets)a3
{
  self->_safeAreaInsets = a3;
  if (_activeTextEffectsOperator)
  {
    v4 = _activeTextEffectsOperator == self;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    [(_UIViewServiceTextEffectsOperator *)self _reloadSafeInsets];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"UITextEffectsWindowSafeAreaInsetsDidChangeNotification" object:0];
  }
}

- (void)_resetHostedViewSize
{
  v3 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0 forViewService:1];
  [v3 setHostedViewSize:{self->_hostedViewSize.width, self->_hostedViewSize.height}];
  [v3 _sceneBoundsDidChange];
}

- (void)__setHostedViewSize:(CGSize)a3
{
  self->_hostedViewSize = a3;
  [(_UIViewServiceTextEffectsOperator *)self _resetHostedViewSize];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"UITextEffectsWindowHostedViewSizeDidChangeNotification" object:0];
}

- (void)__setHostedViewReference:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0 forViewService:1];
  [v7 setHostedViewReference:{x, y, width, height}];
}

- (void)__setNextAutomaticOrderOutDirection:(int)a3 duration:(double)a4
{
  if (!self->_localVCDisablesAutomaticBehaviors)
  {
    v6 = *&a3;
    WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);
    v8 = [WeakRetained windowScene];
    v9 = [v8 keyboardSceneDelegate];

    [v9 setNextAutomaticOrderInDirection:v6 duration:a4];
  }
}

- (void)__hostDidEnterBackground
{
  if (!self->_wasInvalidated && !self->_localVCDisablesAutomaticBehaviors && _activeTextEffectsOperator == self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);
    v4 = [WeakRetained windowScene];
    v7 = [v4 keyboardSceneDelegate];

    v5 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [v7 _preserveInputViewsWithId:v5 animated:0];

    v6 = _activeTextEffectsOperator;
    _activeTextEffectsOperator = 0;

    self->_canRestoreInputViews = 0;
  }
}

- (void)_restoreInputViews
{
  if (self->_canRestoreInputViews)
  {
    self->_isRestoringInputViews = 1;
    WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);
    v4 = [WeakRetained windowScene];
    v6 = [v4 keyboardSceneDelegate];

    v5 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [v6 _restoreInputViewsWithId:v5 animated:0];

    self->_isRestoringInputViews = 0;
  }

  else
  {
    self->_canRestoreInputViews = 1;
  }
}

- (void)__hostWillEnterForeground
{
  if (!self->_wasInvalidated && !self->_localVCDisablesAutomaticBehaviors)
  {
    if (_activeTextEffectsOperator)
    {
      v3 = _activeTextEffectsOperator == self;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      self->_canRestoreInputViews = 0;
    }

    x = self->_windowOrigin.x;
    y = self->_windowOrigin.y;
    v6 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:0];
    [v6 setHostedViewOrigin:{x, y}];

    [(_UIViewServiceTextEffectsOperator *)self _reloadSafeInsets];
    [(_UIViewServiceTextEffectsOperator *)self _resetHostedViewSize];
    [(_UIViewServiceTextEffectsOperator *)self _restoreInputViews];

    objc_storeStrong(&_activeTextEffectsOperator, self);
  }
}

- (void)_viewServiceHostWillEnterForeground:(id)a3
{
  if (!self->_localVCDisablesAutomaticBehaviors)
  {
    [(_UIViewServiceTextEffectsOperator *)self _restoreInputViews];
  }
}

- (void)__hostViewWillAppear:(BOOL)a3
{
  if (!self->_wasInvalidated && !self->_localVCDisablesAutomaticBehaviors)
  {
    if (self->_didResignForDisappear)
    {
      WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);
      v5 = [WeakRetained firstResponder];
      [v5 reloadInputViews];

      self->_didResignForDisappear = 0;
    }

    objc_storeStrong(&_activeTextEffectsOperator, self);
  }
}

- (void)__hostViewWillDisappear:(BOOL)a3
{
  if (!self->_wasInvalidated && !self->_localVCDisablesAutomaticBehaviors && _activeTextEffectsOperator == self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);
    UIKeyboardSafariDepresentForViewService();

    v5 = objc_loadWeakRetained(&self->_hostedWindow);
    v6 = [v5 windowScene];
    v9 = [v6 keyboardSceneDelegate];

    v7 = [v9 responder];
    [v7 resignFirstResponder];

    [v9 _reloadInputViewsForResponder:0];
    self->_didResignForDisappear = 1;
    v8 = _activeTextEffectsOperator;
    _activeTextEffectsOperator = 0;
  }
}

- (void)__setRemoteTextEffectsWindowMatchesLayerWithContextId:(unsigned int)a3 renderId:(unint64_t)a4
{
  v5 = *&a3;
  v28[4] = *MEMORY[0x1E69E9840];
  [(_UIViewServiceTextEffectsOperator *)self _removeTextEffectsWindowMatchAnimations];
  if (v5)
  {
    if (a4)
    {
      v7 = objc_opt_new();
      [v7 setSourceContextId:v5];
      [v7 setSourceLayerRenderId:a4];
      [v7 setDuration:INFINITY];
      [v7 setUsesNormalizedCoordinates:1];
      v27[0] = 0;
      v27[1] = 0;
      v8 = [MEMORY[0x1E696B098] valueWithBytes:v27 objCType:"{CGPoint=dd}"];
      v28[0] = v8;
      v26 = xmmword_18A64B730;
      v9 = [MEMORY[0x1E696B098] valueWithBytes:&v26 objCType:"{CGPoint=dd}"];
      v28[1] = v9;
      __asm { FMOV            V0.2D, #1.0 }

      v25 = _Q0;
      v15 = [MEMORY[0x1E696B098] valueWithBytes:&v25 objCType:"{CGPoint=dd}"];
      v28[2] = v15;
      v24 = xmmword_18A64B720;
      v16 = [MEMORY[0x1E696B098] valueWithBytes:&v24 objCType:"{CGPoint=dd}"];
      v28[3] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
      [v7 setSourcePoints:v17];

      v18 = objc_opt_new();
      [v18 setSourceContextId:v5];
      [v18 setSourceLayerRenderId:a4];
      [v18 setKeyPath:@"cornerRadius"];
      [v18 setDuration:INFINITY];
      WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);
      v20 = [WeakRetained windowScene];
      v21 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v20];

      v22 = [v21 layer];
      [v22 addAnimation:v7 forKey:@"matchMove"];

      v23 = [v21 layer];
      [v23 addAnimation:v18 forKey:@"matchCornerRadius"];

      [v21 setClipsToBounds:1];
    }
  }
}

- (void)_removeTextEffectsWindowMatchAnimations
{
  WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);
  v3 = [WeakRetained windowScene];
  v5 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v3];

  v4 = [v5 layer];
  [v4 removeAnimationForKey:@"matchMove"];
  [v4 removeAnimationForKey:@"matchCornerRadius"];
  [v5 setClipsToBounds:0];
}

- (void)__hostDidReceiveGestureDirection:(int64_t)a3 authenticationMessage:(id)a4
{
  v6 = a4;
  v9 = [[_UIProductivityGestureAction alloc] initWithGestureDirection:a3 authenticationMessage:v6];

  WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);
  v8 = [WeakRetained windowScene];
  [(_UIProductivityGestureAction *)v9 _handleActionForWindowScene:v8];
}

- (void)__prepareForDisconnectionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(_UIAsyncInvocation *)self->_prepareForDisconnectionInvocation invoke];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84___UIViewServiceTextEffectsOperator___prepareForDisconnectionWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E70F0F78;
  v8 = v4;
  v6 = v4;
  [v5 whenCompleteDo:v7];
}

+ (id)XPCInterface
{
  if (qword_1ED4A2978 != -1)
  {
    dispatch_once(&qword_1ED4A2978, &__block_literal_global_667);
  }

  v3 = qword_1ED4A2980;

  return v3;
}

- (void)forceSyncToStatusBarOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);
  v4 = [WeakRetained windowScene];
  v5 = [v4 keyboardSceneDelegate];

  v6 = objc_loadWeakRetained(&self->_hostedWindow);
  v7 = [v6 windowScene];
  v8 = [v7 _interfaceOrientation];

  v9 = [v5 containerWindow];
  v10 = [v9 rootViewController];
  v11 = [v10 _lastKnownInterfaceOrientation];

  if (v8 != v11)
  {
    [(_UIViewServiceTextEffectsOperator *)self willRotateToInterfaceOrientation:v8 duration:0.0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68___UIViewServiceTextEffectsOperator_forceSyncToStatusBarOrientation__block_invoke;
    v12[3] = &unk_1E7128AD0;
    v12[4] = self;
    v12[5] = v8;
    [(_UIViewServiceTextEffectsOperator *)self performOnRelevantWindows:v12];
    [(_UIViewServiceTextEffectsOperator *)self rotateToInterfaceOrientation:v8 duration:0.0];
    [(_UIViewServiceTextEffectsOperator *)self finishRotationFromInterfaceOrientation:v11];
  }
}

- (void)setHostedWindow:(id)a3 disableAutomaticBehaviors:(BOOL)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);

  if (WeakRetained != v6)
  {
    v8 = objc_loadWeakRetained(&self->_hostedWindow);
    [v8 set_hostedWindowDelegate:0];

    v9 = objc_storeWeak(&self->_hostedWindow, v6);
    [v6 set_hostedWindowDelegate:self];
  }

  self->_localVCDisablesAutomaticBehaviors = a4;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79___UIViewServiceTextEffectsOperator_setHostedWindow_disableAutomaticBehaviors___block_invoke;
  aBlock[3] = &unk_1E70F2F80;
  objc_copyWeak(&v12, &location);
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  if (pthread_main_np() == 1)
  {
    v10[2](v10);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)performOnRelevantWindows:(id)a3
{
  v16 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);
  v5 = [WeakRetained windowScene];
  v6 = [v5 keyboardSceneDelegate];

  v7 = [v6 containerWindow];
  v16[2](v16, v7);

  v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v9 = [v8 keyboardWindow];
  v16[2](v16, v9);

  if (+[UIKeyboard usesInputSystemUI])
  {
    v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v11 = [v10 remoteInputViewHost];
    v12 = [v11 inputViewWindow];
    v16[2](v16, v12);

    v13 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v14 = [v13 remoteInputViewHost];
    v15 = [v14 assistantViewWindow];
    v16[2](v16, v15);
  }
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __79___UIViewServiceTextEffectsOperator_willRotateToInterfaceOrientation_duration___block_invoke;
  v4[3] = &__block_descriptor_48_e18_v16__0__UIWindow_8l;
  v4[4] = a3;
  *&v4[5] = a4;
  [(_UIViewServiceTextEffectsOperator *)self performOnRelevantWindows:v4];
}

- (void)rotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75___UIViewServiceTextEffectsOperator_rotateToInterfaceOrientation_duration___block_invoke;
  v4[3] = &__block_descriptor_48_e18_v16__0__UIWindow_8l;
  v4[4] = a3;
  *&v4[5] = a4;
  [(_UIViewServiceTextEffectsOperator *)self performOnRelevantWindows:v4];
}

- (void)finishRotationFromInterfaceOrientation:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __76___UIViewServiceTextEffectsOperator_finishRotationFromInterfaceOrientation___block_invoke;
  v3[3] = &__block_descriptor_40_e18_v16__0__UIWindow_8l;
  v3[4] = a3;
  [(_UIViewServiceTextEffectsOperator *)self performOnRelevantWindows:v3];
}

- (void)_windowDidBecomeApplicationKey:(id)a3
{
  v7 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);

  if (WeakRetained == v5)
  {
    [(_UIViewServiceTextEffectsOperator *)self _associateHostedTextEffectsWindowWithViewServiceSessionIfNeeded];
    [(_UIViewServiceTextEffectsOperator *)self _associateHostedKeyboardWindowWithViewServiceSessionIfNeeded];
  }

  else
  {
    [(_UIViewServiceTextEffectsOperator *)self _disassociateTextEffectsWindowFromViewServiceSessionIfNeeded];
    [(_UIViewServiceTextEffectsOperator *)self _disassociateHostedKeyboardWindowFromViewServiceSessionIfNeeded];
  }
}

- (void)_associateWindowWithViewServiceSession:(void *)a3 installingGestureIfNeeded:
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (!v6)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:sel__associateWindowWithViewServiceSession_installingGestureIfNeeded_ object:a1 file:@"UIViewServiceTextEffectsOperator.m" lineNumber:655 description:{@"Invalid parameter not satisfying: %@", @"observerGesture"}];
    }

    [(_UIViewServiceSessionActivityRecord *)a1[20] associateHostedWindow:v5];
    v8 = [v5 gestureRecognizers];
    v9 = [v8 containsObject:v7];

    if ((v9 & 1) == 0)
    {
      [v5 addGestureRecognizer:v7];
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("ViewServiceSessionActivityTracking", &_associateWindowWithViewServiceSession_installingGestureIfNeeded____s_category);
      if (*CategoryCachedImpl)
      {
        v12 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = MEMORY[0x1E696AEC0];
          v14 = a1;
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v17 = [v13 stringWithFormat:@"<%@: %p>", v16, v14];

          v18 = v17;
          v19 = v5;
          v20 = MEMORY[0x1E696AEC0];
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          v23 = [v20 stringWithFormat:@"<%@: %p>", v22, v19];

          v24 = v14[2];
          *buf = 138412802;
          v26 = v18;
          v27 = 2112;
          v28 = v23;
          v29 = 2112;
          v30 = v24;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Installed activity gesture for operator: %@; on window: %@; sessionIdentifier: %@", buf, 0x20u);
        }
      }
    }
  }
}

- (void)_disassociateWindowForGestureFromViewServiceSessionIfNeeded:(void *)a1
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    v3 = a2;
    v4 = [v3 view];
    v5 = [v4 _window];

    [v5 removeGestureRecognizer:v3];
    v6 = *(__UILogGetCategoryCachedImpl("ViewServiceSessionActivityTracking", &_disassociateWindowForGestureFromViewServiceSessionIfNeeded____s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = a1;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v7 stringWithFormat:@"<%@: %p>", v10, v8];

      v12 = v11;
      v13 = v5;
      if (v13)
      {
        v14 = MEMORY[0x1E696AEC0];
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = [v14 stringWithFormat:@"<%@: %p>", v16, v13];
      }

      else
      {
        v17 = @"(nil)";
      }

      v18 = v8[2];
      *buf = 138412802;
      v22 = v12;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Uninstalled activity gesture for operator: %@; on window: %@; sessionIdentifier: %@", buf, 0x20u);
    }

    v19 = a1[21];
    a1[21] = 0;

    v20 = a1[20];
    if (v20 && (*(v20 + 16) & 1) == 0)
    {
      if (v5)
      {
        [(_UIViewServiceSessionActivityRecord *)v20 disassociateHostedWindow:v5];
      }
    }
  }
}

- (void)_associateHostedTextEffectsWindowWithViewServiceSessionIfNeeded
{
  if (pthread_main_np() != 1)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UIViewServiceTextEffectsOperator.m" lineNumber:684 description:@"Call must be made on main thread"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);
  v16 = [WeakRetained windowScene];

  v5 = v16;
  if (v16)
  {
    v6 = [v16 keyWindow];
    v7 = objc_loadWeakRetained(&self->_hostedWindow);
    v8 = v6 != v7;

    v5 = v16;
  }

  else
  {
    v8 = 1;
  }

  v9 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v5];
  v10 = v9;
  if (v9 && !(v8 | (([v9 _isHostedInAnotherProcess] & 1) == 0)))
  {
    hostedTEWActivityObserverGesture = self->_hostedTEWActivityObserverGesture;
    if (!hostedTEWActivityObserverGesture)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%p", @"ViewService-HostedTEW-Observer", self];
      v13 = [[_UITouchesBeganObserverGestureRecognizer alloc] initWithTarget:sel__handleTEWActivityObserverGesture_ action:v12 name:?];
      v14 = self->_hostedTEWActivityObserverGesture;
      self->_hostedTEWActivityObserverGesture = v13;

      hostedTEWActivityObserverGesture = self->_hostedTEWActivityObserverGesture;
    }

    [(_UIViewServiceTextEffectsOperator *)self _associateWindowWithViewServiceSession:v10 installingGestureIfNeeded:hostedTEWActivityObserverGesture];
  }
}

- (void)_disassociateTextEffectsWindowFromViewServiceSessionIfNeeded
{
  if (pthread_main_np() != 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"UIViewServiceTextEffectsOperator.m" lineNumber:706 description:@"Call must be made on main thread"];
  }

  [(_UIViewServiceTextEffectsOperator *)self _disassociateWindowForGestureFromViewServiceSessionIfNeeded:?];
  hostedTEWActivityObserverGesture = self->_hostedTEWActivityObserverGesture;
  self->_hostedTEWActivityObserverGesture = 0;
}

- (void)_associateHostedKeyboardWindowWithViewServiceSessionIfNeeded
{
  if (pthread_main_np() != 1)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UIViewServiceTextEffectsOperator.m" lineNumber:712 description:@"Call must be made on main thread"];
  }

  v13 = +[UIWindow _applicationKeyWindow];
  WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);

  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v6 = [v5 keyboardWindow];

  if (!+[UIKeyboard usesInputSystemUI])
  {
    if (+[_UIRemoteKeyboards enabled])
    {
      v7 = objc_loadWeakRetained(&self->_hostedWindow);
      if (v7)
      {

        if (WeakRetained == v13)
        {
          if (v6)
          {
            hostedRemoteKeyboardWindowActivityObserverGesture = self->_hostedRemoteKeyboardWindowActivityObserverGesture;
            if (!hostedRemoteKeyboardWindowActivityObserverGesture)
            {
              v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%p", @"ViewService-HostedRKW-Observer", self];
              v10 = [[_UITouchesBeganObserverGestureRecognizer alloc] initWithTarget:sel__handleRemoteKeyboardActivityObserverGesture_ action:v9 name:?];
              v11 = self->_hostedRemoteKeyboardWindowActivityObserverGesture;
              self->_hostedRemoteKeyboardWindowActivityObserverGesture = v10;

              hostedRemoteKeyboardWindowActivityObserverGesture = self->_hostedRemoteKeyboardWindowActivityObserverGesture;
            }

            [(_UIViewServiceTextEffectsOperator *)self _associateWindowWithViewServiceSession:v6 installingGestureIfNeeded:hostedRemoteKeyboardWindowActivityObserverGesture];
          }
        }
      }
    }
  }
}

- (void)_disassociateHostedKeyboardWindowFromViewServiceSessionIfNeeded
{
  if (pthread_main_np() != 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"UIViewServiceTextEffectsOperator.m" lineNumber:739 description:@"Call must be made on main thread"];
  }

  [(_UIViewServiceTextEffectsOperator *)self _disassociateWindowForGestureFromViewServiceSessionIfNeeded:?];
  hostedRemoteKeyboardWindowActivityObserverGesture = self->_hostedRemoteKeyboardWindowActivityObserverGesture;
  self->_hostedRemoteKeyboardWindowActivityObserverGesture = 0;
}

- (void)_handleTEWActivityObserverGesture:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_hostedWindow);
  v5 = [WeakRetained windowScene];
  v9 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v5];

  v6 = v9;
  if (v9)
  {
    v7 = [v9 _isHostedInAnotherProcess];
    v6 = v9;
    if (v7)
    {
      if (self->_sessionActivityRecord)
      {
        v8 = +[_UIActiveViewServiceSessionTracker sharedTracker];
        [(_UIActiveViewServiceSessionTracker *)v8 handleViewServiceActivity:v9 inHostedWindow:self fromProvider:self->_sessionActivityRecord forSessionActivityRecord:?];

        v6 = v9;
      }
    }
  }
}

- (void)_handleRemoteKeyboardActivityObserverGesture:(id)a3
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v7 = [v4 keyboardWindow];

  v5 = v7;
  if (v7 && self->_sessionActivityRecord)
  {
    v6 = +[_UIActiveViewServiceSessionTracker sharedTracker];
    [(_UIActiveViewServiceSessionTracker *)v6 handleViewServiceActivity:v7 inHostedWindow:self fromProvider:self->_sessionActivityRecord forSessionActivityRecord:?];

    v5 = v7;
  }
}

@end