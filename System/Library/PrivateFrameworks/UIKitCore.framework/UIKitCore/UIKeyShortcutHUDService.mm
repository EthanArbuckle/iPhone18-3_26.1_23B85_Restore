@interface UIKeyShortcutHUDService
+ (BOOL)_isOOPFeatureEnabled;
+ (UIKeyShortcutHUDService)sharedHUDService;
- (BOOL)_isHUDAllowedForConfiguration:(id)configuration;
- (BOOL)_isHUDAllowedForCurrentResponder;
- (BOOL)_isHUDAllowedOverCurrentWindow;
- (BOOL)_isHUDSupportedOnPlatform;
- (UIKeyShortcutHUDService)init;
- (UIWindowScene)scheduledHUDKeyWindowScene;
- (_UIKeyboardEventModifierListener)modifierKeyListener;
- (id)metricsForWindow:(id)window;
- (int64_t)hudPresentationState;
- (void)_addPresentationObserversIfNeeded;
- (void)_applicationDidBeginIgnoringInteractionEvents:(id)events;
- (void)_applicationWillResignActive:(id)active;
- (void)_cancelAllScheduledHUDPresentationsIfNeeded;
- (void)_didTakeScreenshot:(id)screenshot;
- (void)_discardScheduledHUDBookkeeping;
- (void)_handleDeferredDismissalResponse:(id)response;
- (void)_handleKeyCommandFromResponse:(id)response withSession:(id)session;
- (void)_handleScheduledHUDPointerHover:(id)hover;
- (void)_handleSystemHUDPresentationDarwinNotification;
- (void)_handleSystemHUDPreventUnintendedPresentationDarwinNotificationIfNeeded;
- (void)_hardwareKeyboardAvailabilityChanged:(id)changed;
- (void)_registerForScheduledHUDCancellationDarwinNotifications;
- (void)_registerForSystemHUDPresentationDarwinNotifications;
- (void)_registerForSystemHUDPreventUnintendedPresentationDarwinNotificationsIfNeeded;
- (void)_removePresentationObserversIfNeeded;
- (void)_requestHUDDismissal;
- (void)_requestHUDPresentationIfAllowedWithUnpreparedConfiguration:(id)configuration;
- (void)_requestHUDPresentationWithConfiguration:(id)configuration completionHandler:(id)handler;
- (void)_requestHUDPresentationWithUnpreparedConfiguration:(id)configuration;
- (void)_sendSystemHUDPresentationDarwinNotificationIfNeeded;
- (void)_sendSystemHUDPreventUnintendedPresentationDarwinNotificationIfNeeded;
- (void)_unregisterForScheduledHUDCancellationDarwinNotifications;
- (void)_unregisterForSystemHUDPresentationDarwinNotifications;
- (void)_unregisterForSystemHUDPreventUnintendedPresentationDarwinNotificationsIfNeeded;
- (void)cancelScheduledHUDPresentationIfNeeded;
- (void)dealloc;
- (void)dismissOrCancelHUDPresentationIfNeeded;
- (void)handleKeyboardEvent:(id)event;
- (void)handleTouchEvent:(id)event;
- (void)keyShortcutHUDDidDismissWithResponse:(id)response toOverlayService:(id)service;
- (void)modifierListener:(id)listener didUpdateModifierFlag:(int64_t)flag;
- (void)overlayServiceDidInvalidate:(id)invalidate;
- (void)presentHUD;
- (void)requestHUDPresentationIntoSearchMode;
- (void)scheduleHUDPresentation;
@end

@implementation UIKeyShortcutHUDService

+ (UIKeyShortcutHUDService)sharedHUDService
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__UIKeyShortcutHUDService_sharedHUDService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49F038 != -1)
  {
    dispatch_once(&qword_1ED49F038, block);
  }

  v2 = qword_1ED49F030;

  return v2;
}

- (void)dismissOrCancelHUDPresentationIfNeeded
{
  hudPresentationState = [(UIKeyShortcutHUDService *)self hudPresentationState];
  if ((hudPresentationState - 2) >= 2)
  {
    if (hudPresentationState == 1)
    {
      [(UIKeyShortcutHUDService *)self _discardScheduledHUDBookkeeping];
    }
  }

  else
  {
    [(UIKeyShortcutHUDService *)self _requestHUDDismissal];
  }

  [(UIKeyShortcutHUDService *)self _removePresentationObserversIfNeeded];
}

- (int64_t)hudPresentationState
{
  scheduledHUDTimer = [(UIKeyShortcutHUDService *)self scheduledHUDTimer];
  if (scheduledHUDTimer)
  {
    v4 = scheduledHUDTimer;
    scheduledHUDTimer2 = [(UIKeyShortcutHUDService *)self scheduledHUDTimer];
    isValid = [scheduledHUDTimer2 isValid];

    if (isValid)
    {
      return 1;
    }
  }

  session = [(UIKeyShortcutHUDService *)self session];

  if (session)
  {
    return 3;
  }

  else
  {
    return *&self->_flags & 2;
  }
}

- (void)_removePresentationObserversIfNeeded
{
  if (*&self->_flags)
  {
    *&self->_flags &= ~1u;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"UIApplicationWillResignActiveNotification" object:UIApp];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self name:0x1EFB8EF10 object:UIApp];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 removeObserver:self name:@"UIApplicationUserDidTakeScreenshotNotification" object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 removeObserver:self name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];
  }
}

void __43__UIKeyShortcutHUDService_sharedHUDService__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED49F030;
  qword_1ED49F030 = v0;
}

- (UIKeyShortcutHUDService)init
{
  v8.receiver = self;
  v8.super_class = UIKeyShortcutHUDService;
  v2 = [(UIKeyShortcutHUDService *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(UIKeyShortcutHUDService *)v2 setMetricsProvider:v2];
    if (+[UIKeyShortcutHUDService _isOOPFeatureEnabled])
    {
      v4 = objc_opt_new();
      [(UIKeyShortcutHUDService *)v3 setOverlayService:v4];

      overlayService = [(UIKeyShortcutHUDService *)v3 overlayService];
      [overlayService setDelegate:v3];

      overlayService2 = [(UIKeyShortcutHUDService *)v3 overlayService];
      [overlayService2 prewarmConnection];
    }

    [(UIKeyShortcutHUDService *)v3 _registerForScheduledHUDCancellationDarwinNotifications];
    [(UIKeyShortcutHUDService *)v3 _registerForSystemHUDPresentationDarwinNotifications];
    [(UIKeyShortcutHUDService *)v3 _registerForSystemHUDPreventUnintendedPresentationDarwinNotificationsIfNeeded];
  }

  return v3;
}

- (void)dealloc
{
  [(UIKeyShortcutHUDService *)self _unregisterForScheduledHUDCancellationDarwinNotifications];
  [(UIKeyShortcutHUDService *)self _unregisterForSystemHUDPresentationDarwinNotifications];
  [(UIKeyShortcutHUDService *)self _unregisterForSystemHUDPreventUnintendedPresentationDarwinNotificationsIfNeeded];
  v3.receiver = self;
  v3.super_class = UIKeyShortcutHUDService;
  [(UIKeyShortcutHUDService *)&v3 dealloc];
}

- (void)_registerForScheduledHUDCancellationDarwinNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _HandleUIKeyShortcutHUDCancelScheduledHUDPresentationDarwinNotification, @"UIKeyShortcutHUDCancelScheduledHUDPresentationDarwinNotificationName", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_unregisterForScheduledHUDCancellationDarwinNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"UIKeyShortcutHUDCancelScheduledHUDPresentationDarwinNotificationName", 0);
}

- (void)_cancelAllScheduledHUDPresentationsIfNeeded
{
  if ([(UIKeyShortcutHUDService *)self hudPresentationState]== 1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"UIKeyShortcutHUDCancelScheduledHUDPresentationDarwinNotificationName", 0, 0, 0);
  }
}

- (void)_registerForSystemHUDPresentationDarwinNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _HandleUIKeyShortcutSystemHUDDidPresentDarwinNotification, @"UIKeyShortcutSystemHUDDidPresentDarwinNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_unregisterForSystemHUDPresentationDarwinNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"UIKeyShortcutSystemHUDDidPresentDarwinNotification", 0);
}

- (void)_sendSystemHUDPresentationDarwinNotificationIfNeeded
{
  if (qword_1ED49F058 != -1)
  {
    dispatch_once(&qword_1ED49F058, &__block_literal_global_289);
  }

  if (byte_1ED49F019 == 1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"UIKeyShortcutSystemHUDDidPresentDarwinNotification", 0, 0, 0);
  }
}

- (void)_handleSystemHUDPresentationDarwinNotification
{
  if (qword_1ED49F058 != -1)
  {
    dispatch_once(&qword_1ED49F058, &__block_literal_global_289);
  }

  if ((byte_1ED49F019 & 1) == 0)
  {
    v2 = _UIKeyShortcutHUDLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Requesting HUD dismissal due to non-system HUD due to system HUD presentation", v4, 2u);
    }

    v3 = +[UIKeyShortcutHUDService sharedHUDService];
    [v3 dismissOrCancelHUDPresentationIfNeeded];
  }
}

- (void)_registerForSystemHUDPreventUnintendedPresentationDarwinNotificationsIfNeeded
{
  if (qword_1ED49F058 != -1)
  {
    dispatch_once(&qword_1ED49F058, &__block_literal_global_289);
  }

  if (byte_1ED49F019 == 1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _HandleUIKeyShortcutSystemHUDPreventUnintendedPresentationDarwinNotification, @"UIKeyShortcutSystemHUDPreventUnintendedPresentationDarwinNotificationName", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)_unregisterForSystemHUDPreventUnintendedPresentationDarwinNotificationsIfNeeded
{
  if (qword_1ED49F058 != -1)
  {
    dispatch_once(&qword_1ED49F058, &__block_literal_global_289);
  }

  if (byte_1ED49F019 == 1)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"UIKeyShortcutSystemHUDPreventUnintendedPresentationDarwinNotificationName", 0);
  }
}

- (void)_sendSystemHUDPreventUnintendedPresentationDarwinNotificationIfNeeded
{
  if (qword_1ED49F058 != -1)
  {
    dispatch_once(&qword_1ED49F058, &__block_literal_global_289);
  }

  if ((byte_1ED49F019 & 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"UIKeyShortcutSystemHUDPreventUnintendedPresentationDarwinNotificationName", 0, 0, 0);
  }
}

- (void)_handleSystemHUDPreventUnintendedPresentationDarwinNotificationIfNeeded
{
  if (qword_1ED49F058 != -1)
  {
    dispatch_once(&qword_1ED49F058, &__block_literal_global_289);
  }

  if (byte_1ED49F019 == 1)
  {

    [(UIKeyShortcutHUDService *)self cancelScheduledHUDPresentationIfNeeded];
  }
}

+ (BOOL)_isOOPFeatureEnabled
{
  if (qword_1ED49F040 != -1)
  {
    dispatch_once(&qword_1ED49F040, &__block_literal_global_20_5);
  }

  return _MergedGlobals_1172;
}

void __47__UIKeyShortcutHUDService__isOOPFeatureEnabled__block_invoke()
{
  v0 = +[UIDevice currentDevice];
  _MergedGlobals_1172 = [v0 userInterfaceIdiom] == 1;
}

- (void)requestHUDPresentationIntoSearchMode
{
  hudPresentationState = [(UIKeyShortcutHUDService *)self hudPresentationState];
  if (hudPresentationState)
  {
    if (hudPresentationState != 1)
    {
      return;
    }

    [(UIKeyShortcutHUDService *)self dismissOrCancelHUDPresentationIfNeeded];
  }

  v7 = objc_opt_new();
  [v7 setPresentedModifierFlag:0x100000];
  [v7 setSearching:1];
  v4 = +[UIWindow _applicationKeyWindow];
  lastKeyboardEvent = [(UIKeyShortcutHUDService *)self lastKeyboardEvent];
  v6 = [_UIKeyShortcutHUDClientTraits traitsWithReferenceTraitEnvironment:v4 referenceKeyboardEvent:lastKeyboardEvent];
  [v7 setClientTraits:v6];

  [(UIKeyShortcutHUDService *)self _requestHUDPresentationIfAllowedWithUnpreparedConfiguration:v7];
}

- (void)scheduleHUDPresentation
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(UIKeyShortcutHUDService *)self hudPresentationState]== 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyShortcutHUDService.m" lineNumber:388 description:{@"Invalid parameter not satisfying: %@", @"self.hudPresentationState != _UIKeyShortcutHUDPresentationStateScheduled"}];
  }

  [(UIKeyShortcutHUDService *)self _addPresentationObserversIfNeeded];
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:0];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [(UIHoverGestureRecognizer *)[_UIInertHoverGestureRecognizer alloc] initWithTarget:self action:sel__handleScheduledHUDPointerHover_];
        [(UIGestureRecognizer *)v9 setName:@"com.apple.UIKit.ShortcutHUDDelayHover"];
        [v8 addGestureRecognizer:v9];

        [v4 addObject:v9];
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  [(UIKeyShortcutHUDService *)self setScheduledHUDHoverGestureRecognizers:v4];
  objc_initWeak(&location, self);
  v10 = MEMORY[0x1E695DFF0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__UIKeyShortcutHUDService_scheduleHUDPresentation__block_invoke;
  v14[3] = &unk_1E70F4130;
  objc_copyWeak(&v15, &location);
  v11 = [v10 scheduledTimerWithTimeInterval:0 repeats:v14 block:0.9];
  [(UIKeyShortcutHUDService *)self setScheduledHUDTimer:v11];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __50__UIKeyShortcutHUDService_scheduleHUDPresentation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained scheduledHUDConfiguration];
    [v3 _requestHUDPresentationIfAllowedWithUnpreparedConfiguration:v2];

    [v3 _discardScheduledHUDBookkeeping];
    WeakRetained = v3;
  }
}

- (void)_handleScheduledHUDPointerHover:(id)hover
{
  hoverCopy = hover;
  view = [hoverCopy view];
  [hoverCopy locationInView:view];
  v7 = v6;
  v9 = v8;
  windowScene = [view windowScene];
  screen = [windowScene screen];
  coordinateSpace = [screen coordinateSpace];
  [coordinateSpace convertPoint:view fromCoordinateSpace:{v7, v9}];
  v14 = v13;
  v16 = v15;

  state = [hoverCopy state];
  if ((state - 1) <= 2)
  {
    scheduledHUDInitialPointerLocation = [(UIKeyShortcutHUDService *)self scheduledHUDInitialPointerLocation];

    if (scheduledHUDInitialPointerLocation)
    {
      scheduledHUDInitialPointerLocation2 = [(UIKeyShortcutHUDService *)self scheduledHUDInitialPointerLocation];
      [scheduledHUDInitialPointerLocation2 CGPointValue];
      v22 = sqrt((v14 - v20) * (v14 - v20) + (v16 - v21) * (v16 - v21));

      if (v22 > 10.0)
      {
        [(UIKeyShortcutHUDService *)self _cancelAllScheduledHUDPresentationsIfNeeded];
      }
    }

    else
    {
      *v24 = v14;
      *&v24[1] = v16;
      v23 = [MEMORY[0x1E696B098] valueWithBytes:v24 objCType:"{CGPoint=dd}"];
      [(UIKeyShortcutHUDService *)self setScheduledHUDInitialPointerLocation:v23];
    }
  }
}

- (void)cancelScheduledHUDPresentationIfNeeded
{
  if ([(UIKeyShortcutHUDService *)self hudPresentationState]== 1)
  {

    [(UIKeyShortcutHUDService *)self dismissOrCancelHUDPresentationIfNeeded];
  }
}

- (void)_discardScheduledHUDBookkeeping
{
  v20 = *MEMORY[0x1E69E9840];
  scheduledHUDTimer = [(UIKeyShortcutHUDService *)self scheduledHUDTimer];
  isValid = [scheduledHUDTimer isValid];

  if (isValid)
  {
    scheduledHUDTimer2 = [(UIKeyShortcutHUDService *)self scheduledHUDTimer];
    [scheduledHUDTimer2 invalidate];
  }

  [(UIKeyShortcutHUDService *)self setScheduledHUDTimer:0];
  [(UIKeyShortcutHUDService *)self setScheduledHUDConfiguration:0];
  scheduledHUDKeyWindowScene = [(UIKeyShortcutHUDService *)self scheduledHUDKeyWindowScene];
  if (scheduledHUDKeyWindowScene)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"_UISceneDidResignTargetOfKeyboardEventDeferringEnvironmentNotification" object:scheduledHUDKeyWindowScene];

    [(UIKeyShortcutHUDService *)self setScheduledHUDKeyWindowScene:0];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  scheduledHUDHoverGestureRecognizers = [(UIKeyShortcutHUDService *)self scheduledHUDHoverGestureRecognizers];
  v9 = [scheduledHUDHoverGestureRecognizers countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(scheduledHUDHoverGestureRecognizers);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        [v13 setEnabled:0];
        view = [v13 view];
        [view removeGestureRecognizer:v13];
      }

      v10 = [scheduledHUDHoverGestureRecognizers countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [(UIKeyShortcutHUDService *)self setScheduledHUDHoverGestureRecognizers:0];
  [(UIKeyShortcutHUDService *)self setScheduledHUDInitialPointerLocation:0];
}

- (void)_requestHUDPresentationIfAllowedWithUnpreparedConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_UISuppressKeyShortcutHUD, @"UISuppressKeyShortcutHUD") & 1) != 0 || !byte_1EA95E524)
  {
    if ([(UIKeyShortcutHUDService *)self _isHUDSupportedOnPlatform]&& [(UIKeyShortcutHUDService *)self _isHUDAllowedToAppearForProcess]&& [(UIKeyShortcutHUDService *)self _isHUDAllowedOverCurrentWindow]&& [(UIKeyShortcutHUDService *)self _isHUDAllowedForCurrentResponder]&& [(UIKeyShortcutHUDService *)self _isHUDAllowedForConfiguration:configurationCopy]&& [(UIKeyShortcutHUDService *)self _isHUDAllowedToBePresentedForPresentationState:[(UIKeyShortcutHUDService *)self hudPresentationState]])
    {
      [(UIKeyShortcutHUDService *)self _requestHUDPresentationWithUnpreparedConfiguration:configurationCopy];
    }
  }

  else
  {
    v5 = _UIKeyShortcutHUDLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "Suppressing HUD due to UISuppressKeyShortcutHUD default being enabled.", v6, 2u);
    }
  }
}

- (void)_requestHUDPresentationWithUnpreparedConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (![(UIKeyShortcutHUDService *)self _isHUDSupportedOnPlatform]|| ![(UIKeyShortcutHUDService *)self _isHUDAllowedToAppearForProcess]|| ![(UIKeyShortcutHUDService *)self _isHUDAllowedOverCurrentWindow]|| ![(UIKeyShortcutHUDService *)self _isHUDAllowedForCurrentResponder]|| ![(UIKeyShortcutHUDService *)self _isHUDAllowedForConfiguration:configurationCopy])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyShortcutHUDService.m" lineNumber:528 description:@"Attempted to present the key shortcut HUD when not allowed!"];
  }

  if ([(UIKeyShortcutHUDService *)self _isHUDAllowedToBePresentedForPresentationState:[(UIKeyShortcutHUDService *)self hudPresentationState]])
  {
    if (configurationCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIKeyShortcutHUDService.m" lineNumber:530 description:@"Attempted to present the key shortcut HUD in a state where it's not allowed!"];

    if (configurationCopy)
    {
      goto LABEL_8;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIKeyShortcutHUDService.m" lineNumber:531 description:@"Attempted to present the key shortcut HUD with a nil configuration!"];

LABEL_8:
  model = [configurationCopy model];

  if (!model)
  {
    v7 = +[_UIKeyShortcutHUDModel modelForCurrentMenu];
    [configurationCopy setModel:v7];
  }

  model2 = [configurationCopy model];
  isEmpty = [model2 isEmpty];

  if ((isEmpty & 1) == 0)
  {
    v10 = objc_opt_new();
    [v10 setConfiguration:configurationCopy];
    if (+[UIKeyShortcutHUDService _isOOPFeatureEnabled])
    {
      v11 = +[UIKeyboardImpl activeInstance];
      [v10 setTextEditingSessionWasTornDown:{objc_msgSend(v11, "isCurrentEditResponderInEditingMode")}];
    }

    clientTraits = [configurationCopy clientTraits];

    if (!clientTraits)
    {
      v13 = +[UIWindow _applicationKeyWindow];
      lastKeyboardEvent = [(UIKeyShortcutHUDService *)self lastKeyboardEvent];
      v15 = [_UIKeyShortcutHUDClientTraits traitsWithReferenceTraitEnvironment:v13 referenceKeyboardEvent:lastKeyboardEvent];
      [configurationCopy setClientTraits:v15];
    }

    modifierKeyListener = [(UIKeyShortcutHUDService *)self modifierKeyListener];
    [configurationCopy setInitialHeldModifierFlags:{objc_msgSend(modifierKeyListener, "currentModifierFlags")}];

    v17 = +[UIWindowScene _keyWindowScene];
    _eventDeferringManager = [v17 _eventDeferringManager];
    v19 = [(_UIEventDeferringManager *)_eventDeferringManager bufferKeyboardFocusEnvironmentEventsWithReason:?];

    *&self->_flags |= 2u;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __78__UIKeyShortcutHUDService__requestHUDPresentationWithUnpreparedConfiguration___block_invoke;
    v25[3] = &unk_1E7110100;
    v26 = v19;
    selfCopy = self;
    v28 = v10;
    v20 = v10;
    v21 = v19;
    [(UIKeyShortcutHUDService *)self _requestHUDPresentationWithConfiguration:configurationCopy completionHandler:v25];
  }
}

void __78__UIKeyShortcutHUDService__requestHUDPresentationWithUnpreparedConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  LODWORD(v3) = [v4 accepted];

  if (v3)
  {
    [*(a1 + 40) setSession:*(a1 + 48)];
    [*(a1 + 40) _addPresentationObserversIfNeeded];
  }

  *(*(a1 + 40) + 8) &= ~2u;
}

- (void)_requestHUDPresentationWithConfiguration:(id)configuration completionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  if (+[UIKeyShortcutHUDService _isOOPFeatureEnabled])
  {
    v9 = [[_UIORequestKeyShortcutHUDPresentationAction alloc] initWithConfiguration:configurationCopy responseHandler:handlerCopy];

    overlayService = [(UIKeyShortcutHUDService *)self overlayService];
    [overlayService sendOverlayAction:v9];
  }

  else
  {
    v9 = +[UIWindowScene _keyWindowScene];
    overlayService = +[_UIKeyShortcutHUDServer sharedHUDServer];
    [overlayService presentHUDWithConfiguration:configurationCopy inWindowScene:v9 forConnection:0 completionHandler:handlerCopy];
  }
}

- (void)presentHUD
{
  hudPresentationState = [(UIKeyShortcutHUDService *)self hudPresentationState];
  if (hudPresentationState)
  {
    if (hudPresentationState != 1)
    {
      return;
    }

    [(UIKeyShortcutHUDService *)self cancelScheduledHUDPresentationIfNeeded];
  }

  v7 = objc_opt_new();
  [v7 setPresentedModifierFlag:0x800000];
  v4 = +[UIWindow _applicationKeyWindow];
  lastKeyboardEvent = [(UIKeyShortcutHUDService *)self lastKeyboardEvent];
  v6 = [_UIKeyShortcutHUDClientTraits traitsWithReferenceTraitEnvironment:v4 referenceKeyboardEvent:lastKeyboardEvent];
  [v7 setClientTraits:v6];

  [(UIKeyShortcutHUDService *)self _requestHUDPresentationIfAllowedWithUnpreparedConfiguration:v7];
}

- (void)_requestHUDDismissal
{
  v9 = *MEMORY[0x1E69E9840];
  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_KeyShortcutHUDEnhancedLogging, @"KeyShortcutHUDEnhancedLogging") & 1) == 0 && byte_1EA95E20C)
  {
    v3 = _UIKeyShortcutHUDLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v7 = 138543362;
      v8 = callStackSymbols;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Requesting HUD dismissal; callStack=%{public}@", &v7, 0xCu);
    }
  }

  if (+[UIKeyShortcutHUDService _isOOPFeatureEnabled])
  {
    v5 = +[_UIORequestKeyShortcutHUDDismissalAction dismissalAction];
    overlayService = [(UIKeyShortcutHUDService *)self overlayService];
    [overlayService sendOverlayAction:v5];
  }

  else
  {
    v5 = +[_UIKeyShortcutHUDServer sharedHUDServer];
    [v5 dismissHUDForConnection:0];
  }
}

- (void)handleKeyboardEvent:(id)event
{
  eventCopy = event;
  if ([(UIKeyShortcutHUDService *)self _isHUDSupportedOnPlatform])
  {
    [(UIKeyShortcutHUDService *)self setLastKeyboardEvent:eventCopy];
    _cloneEvent = [eventCopy _cloneEvent];

    [_cloneEvent _privatize];
    if ([_cloneEvent _isKeyDown] && (objc_msgSend(_cloneEvent, "modifierFlags") & 0x800000) != 0)
    {
      _modifiedInput = [_cloneEvent _modifiedInput];
      if ([_modifiedInput length])
      {
        isFrontBoard = [UIApp isFrontBoard];

        if ((isFrontBoard & 1) == 0)
        {
          [(UIKeyShortcutHUDService *)self preventUnintendedSystemHUDPresentationIfNeeded];
        }
      }

      else
      {
      }
    }

    if (!+[UIKeyShortcutHUDService _isOOPFeatureEnabled]|| _UIApplicationProcessIsOverlayUI())
    {
      v8 = +[_UIKeyShortcutHUDServer sharedHUDServer];
      [v8 handleKeyboardEvent:_cloneEvent];
    }

    if ([(UIKeyShortcutHUDService *)self _isHUDAllowedToAppearForProcess])
    {
      modifierKeyListener = [(UIKeyShortcutHUDService *)self modifierKeyListener];
      [modifierKeyListener handleKeyboardEvent:_cloneEvent];
    }

    v7 = _cloneEvent;
  }

  else
  {
    v7 = eventCopy;
  }
}

- (_UIKeyboardEventModifierListener)modifierKeyListener
{
  modifierKeyListener = self->_modifierKeyListener;
  if (!modifierKeyListener)
  {
    v4 = objc_opt_new();
    v5 = self->_modifierKeyListener;
    self->_modifierKeyListener = v4;

    [(_UIKeyboardEventModifierListener *)self->_modifierKeyListener setDelegate:self];
    modifierKeyListener = self->_modifierKeyListener;
  }

  return modifierKeyListener;
}

- (void)modifierListener:(id)listener didUpdateModifierFlag:(int64_t)flag
{
  listenerCopy = listener;
  hudPresentationState = [(UIKeyShortcutHUDService *)self hudPresentationState];
  currentModifierFlags = [listenerCopy currentModifierFlags];

  if ([(UIKeyShortcutHUDService *)self _canSummonHUDWithModifierFlag:flag])
  {
    v9 = currentModifierFlags & flag;
    if ([(UIKeyShortcutHUDService *)self _isHUDAllowedToBeScheduledForPresentationState:hudPresentationState]&& v9)
    {
      v10 = objc_opt_new();
      [(UIKeyShortcutHUDService *)self setScheduledHUDConfiguration:v10];

      scheduledHUDConfiguration = [(UIKeyShortcutHUDService *)self scheduledHUDConfiguration];
      [scheduledHUDConfiguration setPresentedModifierFlag:flag];

      v15 = +[UIWindowScene _keyWindowScene];
      if (v15)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:self selector:sel__sceneDidLoseKeyboardFocus_ name:@"_UISceneDidResignTargetOfKeyboardEventDeferringEnvironmentNotification" object:v15];

        [(UIKeyShortcutHUDService *)self setScheduledHUDKeyWindowScene:v15];
      }

      [(UIKeyShortcutHUDService *)self scheduleHUDPresentation];
    }

    else if (hudPresentationState == 1 && !v9)
    {
      scheduledHUDConfiguration2 = [(UIKeyShortcutHUDService *)self scheduledHUDConfiguration];
      presentedModifierFlag = [scheduledHUDConfiguration2 presentedModifierFlag];

      if (presentedModifierFlag == flag)
      {

        [(UIKeyShortcutHUDService *)self cancelScheduledHUDPresentationIfNeeded];
      }
    }
  }
}

- (void)handleTouchEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    v7 = eventCopy;
    type = [eventCopy type];
    v5 = v7;
    if (!type)
    {
      [(UIKeyShortcutHUDService *)self _cancelAllScheduledHUDPresentationsIfNeeded];
      v5 = v7;
    }
  }
}

- (void)keyShortcutHUDDidDismissWithResponse:(id)response toOverlayService:(id)service
{
  responseCopy = response;
  serviceCopy = service;
  overlayService = [(UIKeyShortcutHUDService *)self overlayService];

  if (overlayService == serviceCopy)
  {
    [(UIKeyShortcutHUDService *)self _removePresentationObserversIfNeeded];
    session = [(UIKeyShortcutHUDService *)self session];
    [(UIKeyShortcutHUDService *)self setSession:0];
    if (session)
    {
      keyCommand = [responseCopy keyCommand];
      if (keyCommand)
      {
        if (([session textEditingSessionWasTornDown]& 1) != 0)
        {
          [(UIKeyShortcutHUDService *)self setDeferredResponse:responseCopy];
          [(UIKeyShortcutHUDService *)self setDeferredResponseSession:session];
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter addObserver:self selector:sel__handleDeferredDismissalResponse_ name:@"UITextInputResponderIsReloadedNotification" object:0];

          v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
          [(UIKeyShortcutHUDService *)self setDeferredResponseTimer:v13];

          deferredResponseTimer = [(UIKeyShortcutHUDService *)self deferredResponseTimer];
          v15 = dispatch_time(0, 500000000);
          dispatch_source_set_timer(deferredResponseTimer, v15, 0xFFFFFFFFFFFFFFFFLL, 0);

          objc_initWeak(buf, self);
          deferredResponseTimer2 = [(UIKeyShortcutHUDService *)self deferredResponseTimer];
          v20 = MEMORY[0x1E69E9820];
          v21 = 3221225472;
          v22 = __81__UIKeyShortcutHUDService_keyShortcutHUDDidDismissWithResponse_toOverlayService___block_invoke;
          v23 = &unk_1E70F2F80;
          objc_copyWeak(&v25, buf);
          selfCopy = self;
          dispatch_source_set_event_handler(deferredResponseTimer2, &v20);

          v17 = [(UIKeyShortcutHUDService *)self deferredResponseTimer:v20];
          dispatch_activate(v17);

          objc_destroyWeak(&v25);
          objc_destroyWeak(buf);
        }

        else
        {
          [(UIKeyShortcutHUDService *)self _handleKeyCommandFromResponse:responseCopy withSession:session];
        }
      }
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v19 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_fault_impl(&dword_188A29000, v19, OS_LOG_TYPE_FAULT, "Something has gone wrong, we got a dismissal response despite our presentation request being rejected", buf, 2u);
      }
    }

    else
    {
      v18 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49F050) + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Something has gone wrong, we got a dismissal response despite our presentation request being rejected", buf, 2u);
      }
    }

    goto LABEL_14;
  }

  if (os_variant_has_internal_diagnostics())
  {
    session = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(session, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_fault_impl(&dword_188A29000, session, OS_LOG_TYPE_FAULT, "Something has gone very wrong, OverlayUI has told the HUD that it dismissed via a different overlay service than the one the HUD service uses", buf, 2u);
    }

LABEL_14:

    goto LABEL_15;
  }

  v9 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49F048) + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Something has gone very wrong, OverlayUI has told the HUD that it dismissed via a different overlay service than the one the HUD service uses", buf, 2u);
  }

LABEL_15:
}

void __81__UIKeyShortcutHUDService_keyShortcutHUDDidDismissWithResponse_toOverlayService___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [*(a1 + 32) deferredResponseTimer];
    [v4 _handleDeferredDismissalResponse:v3];

    WeakRetained = v4;
  }
}

- (void)_handleDeferredDismissalResponse:(id)response
{
  deferredResponseTimer = [(UIKeyShortcutHUDService *)self deferredResponseTimer];

  if (deferredResponseTimer)
  {
    deferredResponseTimer2 = [(UIKeyShortcutHUDService *)self deferredResponseTimer];
    dispatch_source_cancel(deferredResponseTimer2);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UITextInputResponderIsReloadedNotification" object:0];

  deferredResponse = [(UIKeyShortcutHUDService *)self deferredResponse];
  deferredResponseSession = [(UIKeyShortcutHUDService *)self deferredResponseSession];
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__UIKeyShortcutHUDService__handleDeferredDismissalResponse___block_invoke;
  v12[3] = &unk_1E70F6228;
  v13 = deferredResponse;
  v14 = deferredResponseSession;
  selfCopy = self;
  v10 = deferredResponseSession;
  v11 = deferredResponse;
  [mainRunLoop performBlock:v12];

  [(UIKeyShortcutHUDService *)self setDeferredResponse:0];
  [(UIKeyShortcutHUDService *)self setDeferredResponseSession:0];
  [(UIKeyShortcutHUDService *)self setDeferredResponseTimer:0];
}

uint64_t __60__UIKeyShortcutHUDService__handleDeferredDismissalResponse___block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    if (*(result + 40))
    {
      return [*(result + 48) _handleKeyCommandFromResponse:? withSession:?];
    }
  }

  return result;
}

- (void)_handleKeyCommandFromResponse:(id)response withSession:(id)session
{
  responseCopy = response;
  sessionCopy = session;
  keyCommand = [responseCopy keyCommand];
  if (!keyCommand)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyShortcutHUDService.m" lineNumber:872 description:{@"The keyboard shortcut HUD was dismissed without a selected key command, but the non-nil key command code path was run in the HUD service"}];
  }

  pasteAuthenticationMessage = [responseCopy pasteAuthenticationMessage];
  [UIPasteboard _attemptAuthenticationWithMessage:pasteAuthenticationMessage];
  configuration = [sessionCopy configuration];
  model = [configuration model];
  v13 = [model appKeyCommandForSelectedKeyCommand:keyCommand];

  if (v13)
  {
    configuration2 = [sessionCopy configuration];
    model2 = [configuration2 model];
    v16 = [model2 originalTargetForSelectedKeyCommand:keyCommand];

    if (([v13 attributes] & 1) == 0)
    {
      if (v16)
      {
        _responderForKeyEvents = [UIApp _responderForKeyEvents];
        v18 = [v13 _resolvedTargetFromFirstTarget:_responderForKeyEvents sender:0];

        if (v16 == v18)
        {
          [v13 performWithSender:0 target:v16];
        }
      }
    }

LABEL_8:

    goto LABEL_12;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v16 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Something has gone very wrong, the app was asked to trigger a keyboard shortcut it didn't provide to the keyboard shortcut HUD", buf, 2u);
    }

    goto LABEL_8;
  }

  v19 = *(__UILogGetCategoryCachedImpl("Assert", &_handleKeyCommandFromResponse_withSession____s_category) + 8);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "Something has gone very wrong, the app was asked to trigger a keyboard shortcut it didn't provide to the keyboard shortcut HUD", v21, 2u);
  }

LABEL_12:
}

- (void)overlayServiceDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  overlayService = [(UIKeyShortcutHUDService *)self overlayService];

  if (overlayService == invalidateCopy && [(UIKeyShortcutHUDService *)self hudPresentationState]== 3)
  {
    v7 = objc_opt_new();
    overlayService2 = [(UIKeyShortcutHUDService *)self overlayService];
    [(UIKeyShortcutHUDService *)self keyShortcutHUDDidDismissWithResponse:v7 toOverlayService:overlayService2];
  }
}

- (void)_addPresentationObserversIfNeeded
{
  if ((*&self->_flags & 1) == 0)
  {
    *&self->_flags |= 1u;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__applicationWillResignActive_ name:@"UIApplicationWillResignActiveNotification" object:UIApp];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__applicationDidBeginIgnoringInteractionEvents_ name:0x1EFB8EF10 object:UIApp];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel__didTakeScreenshot_ name:@"UIApplicationUserDidTakeScreenshotNotification" object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel__hardwareKeyboardAvailabilityChanged_ name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];
  }
}

- (void)_applicationWillResignActive:(id)active
{
  v4 = _UIKeyShortcutHUDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Requesting HUD dismissal due to app resigning active", v6, 2u);
  }

  [(UIKeyShortcutHUDService *)self dismissOrCancelHUDPresentationIfNeeded];
  modifierKeyListener = [(UIKeyShortcutHUDService *)self modifierKeyListener];
  [modifierKeyListener setCurrentModifierFlags:0];
}

- (void)_applicationDidBeginIgnoringInteractionEvents:(id)events
{
  v4 = _UIKeyShortcutHUDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Requesting HUD dismissal due to app ignoring interaction events", v5, 2u);
  }

  [(UIKeyShortcutHUDService *)self dismissOrCancelHUDPresentationIfNeeded];
}

- (void)_didTakeScreenshot:(id)screenshot
{
  if ([(UIKeyShortcutHUDService *)self hudPresentationState]== 1)
  {
    v4 = _UIKeyShortcutHUDLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Requesting HUD dismissal due to screenshot being taken", v5, 2u);
    }

    [(UIKeyShortcutHUDService *)self dismissOrCancelHUDPresentationIfNeeded];
  }
}

- (void)_hardwareKeyboardAvailabilityChanged:(id)changed
{
  v4 = +[UIDevice currentDevice];
  _isHardwareKeyboardAvailable = [v4 _isHardwareKeyboardAvailable];

  if ((_isHardwareKeyboardAvailable & 1) == 0)
  {
    v6 = _UIKeyShortcutHUDLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Requesting HUD dismissal due to hardware keyboard disconnecting", v7, 2u);
    }

    [(UIKeyShortcutHUDService *)self dismissOrCancelHUDPresentationIfNeeded];
  }
}

- (id)metricsForWindow:(id)window
{
  windowScene = [window windowScene];
  _coordinateSpace = [windowScene _coordinateSpace];
  [_coordinateSpace bounds];

  v5 = objc_opt_new();

  return v5;
}

- (BOOL)_isHUDSupportedOnPlatform
{
  if (_isHUDSupportedOnPlatform_onceToken != -1)
  {
    dispatch_once(&_isHUDSupportedOnPlatform_onceToken, &__block_literal_global_92_0);
  }

  return 0;
}

- (BOOL)_isHUDAllowedOverCurrentWindow
{
  v2 = +[UIWindow _applicationKeyWindow];
  _windowHostingScene = [v2 _windowHostingScene];
  _sceneSessionRoleIsCarPlayOrNonInteractiveExternal = [_windowHostingScene _sceneSessionRoleIsCarPlayOrNonInteractiveExternal];

  if (_sceneSessionRoleIsCarPlayOrNonInteractiveExternal & 1) != 0 || ([v2 _isHostedInAnotherProcess])
  {
    v5 = 0;
  }

  else
  {
    [v2 frame];
    v8 = vabdd_f64(v6, *(MEMORY[0x1E695F060] + 8)) >= 0.00000011920929;
    v5 = vabdd_f64(v7, *MEMORY[0x1E695F060]) >= 0.00000011920929 || v8;
  }

  return v5;
}

- (BOOL)_isHUDAllowedForConfiguration:(id)configuration
{
  presentedModifierFlag = [configuration presentedModifierFlag];
  if (presentedModifierFlag == 0x800000)
  {
    v6 = UIApp;

    return [v6 _isGlobeKeyShortcutHUDEnabled];
  }

  else if (presentedModifierFlag == 0x100000)
  {
    v4 = UIApp;

    return [v4 _areKeyboardHUDsEnabled];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isHUDAllowedForCurrentResponder
{
  v2 = +[UIResponder _globalFirstResponder];
  _disallowsPresentationOfKeyboardShortcutHUD = [v2 _disallowsPresentationOfKeyboardShortcutHUD];

  return _disallowsPresentationOfKeyboardShortcutHUD ^ 1;
}

- (UIWindowScene)scheduledHUDKeyWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_scheduledHUDKeyWindowScene);

  return WeakRetained;
}

@end