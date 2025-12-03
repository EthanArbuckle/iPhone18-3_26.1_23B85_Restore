@interface ZOTWorkspace
+ (void)disableZoom;
+ (void)enableZoom;
+ (void)initialize;
- (ZOTWorkspace)init;
- (void)_conflictAlert:(id)alert;
- (void)_delayedHandleApplicationActivated;
- (void)_handleApplicationActivated;
- (void)_initializeZoom;
- (void)_registerForZoomConflict;
- (void)_runThread;
- (void)_setCaptureEvents:(BOOL)events;
- (void)_setZoomEnabled:(BOOL)enabled;
- (void)_showAppConflictAlertIfNecessary;
- (void)_voiceOverEnabled;
- (void)_zoomConflictRegistered:(id)registered;
- (void)conflictAlertDidDismissWithButtonIndex:(int64_t)index;
- (void)dealloc;
- (void)tripleClickAlertDidDismissWithButtonIndex:(int64_t)index;
- (void)zoomConflictRegistered:(id)registered;
@end

@implementation ZOTWorkspace

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    ZOTInitializeUtilities();
  }
}

- (void)_runThread
{
  AXSetThreadPriority();
  v3 = objc_autoreleasePoolPush();
  self->_runLoopEnabled = 1;
  v4 = +[NSRunLoop currentRunLoop];
  v5 = +[NSMachPort port];
  [v4 addPort:v5 forMode:NSDefaultRunLoopMode];

  do
  {
    v6 = objc_autoreleasePoolPush();
    v7 = +[NSDate distantFuture];
    [v4 runMode:NSDefaultRunLoopMode beforeDate:v7];

    objc_autoreleasePoolPop(v6);
  }

  while (self->_runLoopEnabled);

  objc_autoreleasePoolPop(v3);
}

+ (void)enableZoom
{
  v2 = ZOTSharedWorkspace;
  if (!ZOTSharedWorkspace)
  {
    v3 = [objc_allocWithZone(ZOTWorkspace) init];
    v4 = ZOTSharedWorkspace;
    ZOTSharedWorkspace = v3;

    v2 = ZOTSharedWorkspace;
  }

  zoomServices = [v2 zoomServices];
  [zoomServices showZoomLens];
}

+ (void)disableZoom
{
  zoomServices = [ZOTSharedWorkspace zoomServices];
  [zoomServices hideZoomLens];
}

- (ZOTWorkspace)init
{
  NSLog(@"********* ZoomTouch Starting *************", a2);
  v16.receiver = self;
  v16.super_class = ZOTWorkspace;
  v3 = [(ZOTWorkspace *)&v16 init];
  if (v3)
  {
    v4 = [[SCRCThreadKey alloc] initWithObject:v3];
    threadKey = v3->_threadKey;
    v3->_threadKey = v4;

    v6 = [[NSThread alloc] initWithTarget:v3 selector:"_runThread" object:0];
    workspaceThread = v3->_workspaceThread;
    v3->_workspaceThread = v6;

    [(NSThread *)v3->_workspaceThread setName:@"workspaceThread"];
    [(NSThread *)v3->_workspaceThread start];
    objc_storeStrong(&ZOTSharedWorkspace, v3);
    [(ZOTWorkspace *)v3 performSelector:"_initializeZoom" withObject:0 afterDelay:0.0];
    [(ZOTWorkspace *)v3 setFollowsKeyboardFocus:1];
    v8 = ZOTTimeUnset;
    *&v3->_lastEventTime = ZOTTimeUnset;
    v3->_accessibilityAnimationOffset = v8;
    v9 = +[ZoomServices sharedInstance];
    [(ZOTWorkspace *)v3 setZoomServices:v9];
    v10 = v3->_workspaceThread;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __20__ZOTWorkspace_init__block_invoke;
    v14[3] = &unk_8358;
    v11 = v3;
    v15 = v11;
    ZOTDispatchEventThread(v10, v14);
    v12 = v11;
  }

  return v3;
}

- (void)_registerForZoomConflict
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"zoomConflictRegistered:" name:UIAXZoomRegisterConflict object:0];
}

- (void)zoomConflictRegistered:(id)registered
{
  registeredCopy = registered;
  workspaceThread = self->_workspaceThread;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __39__ZOTWorkspace_zoomConflictRegistered___block_invoke;
  v7[3] = &unk_8380;
  v7[4] = self;
  v8 = registeredCopy;
  v6 = registeredCopy;
  ZOTDispatchEventThread(workspaceThread, v7);
}

- (void)_conflictAlert:(id)alert
{
  alertCopy = alert;
  objc_storeStrong(&self->_conflictAlertData, alert);
  self->_conflictAlertVisible = 1;
  v6 = [alertCopy objectForKey:@"AppName"];
  objc_initWeak(&location, self);
  v7 = +[AXSpringBoardServer server];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __31__ZOTWorkspace__conflictAlert___block_invoke;
  v8[3] = &unk_83A8;
  objc_copyWeak(&v9, &location);
  [v7 showAlert:2 withHandler:v8 withData:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __31__ZOTWorkspace__conflictAlert___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained conflictAlertDidDismissWithButtonIndex:a2];
}

- (void)tripleClickAlertDidDismissWithButtonIndex:(int64_t)index
{
  if (index == 1)
  {
    v5 = [NSNumber numberWithInt:4];
    v3 = [NSArray arrayWithObject:v5];

    _AXSSetTripleClickOptions();
    v4 = +[ZOTConfiguration configurationManager];
    v6 = [NSNumber numberWithBool:1];
    [v4 setValue:v6 forKey:@"AskedAboutTripleClick"];
  }

  else
  {
    if (index)
    {
      goto LABEL_6;
    }

    v3 = +[ZOTConfiguration configurationManager];
    v4 = [NSNumber numberWithBool:1];
    [v3 setValue:v4 forKey:@"AskedAboutTripleClick"];
  }

LABEL_6:

  _AXSZoomTouchSetEnabled();
}

- (void)conflictAlertDidDismissWithButtonIndex:(int64_t)index
{
  self->_conflictAlertVisible = 0;
  v5 = self->_conflictAlertData;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    conflictAlertData = self->_conflictAlertData;
    self->_conflictAlertData = 0;

    NSLog(@"What happened to our user dictionary?");
    goto LABEL_18;
  }

  v6 = [(NSDictionary *)v5 objectForKey:@"BundleID"];
  v7 = +[ZOTConfiguration configurationManager];
  v8 = [v7 valueForKey:@"AppConflicts"];
  v9 = [v8 mutableCopyWithZone:0];

  if (!v9)
  {
    v9 = [objc_allocWithZone(NSMutableDictionary) init];
  }

  v10 = [v9 objectForKey:v6];
  v11 = [v10 mutableCopyWithZone:0];

  if (!v11)
  {
    v11 = [objc_allocWithZone(NSMutableDictionary) init];
  }

  [v9 setObject:v11 forKey:v6];
  if (index)
  {
    if (index != 1)
    {
      [v11 setObject:v5 forKey:@"AskAgainData"];
      goto LABEL_13;
    }

    v12 = [NSNumber numberWithBool:0];
    [v11 setObject:v12 forKey:@"DisableZoom"];

    [v11 removeObjectForKey:@"AskAgainData"];
  }

  else
  {
    [v11 setObject:v5 forKey:@"AskAgainData"];
  }

  v14 = +[NSDate date];
  [v11 setObject:v14 forKey:@"DateRegistered"];

LABEL_13:
  v15 = +[ZOTConfiguration configurationManager];
  [v15 setValue:v9 forKey:@"AppConflicts"];

  if (!index)
  {
    v16 = _AXSTripleClickCopyOptions();
    if ([v16 count] || (+[ZOTConfiguration configurationManager](ZOTConfiguration, "configurationManager"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "valueForKey:", @"AskedAboutTripleClick"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, v17, (v19 & 1) != 0))
    {

      _AXSZoomTouchSetEnabled();
    }

    else
    {
      objc_initWeak(&location, self);
      v21 = +[AXSpringBoardServer server];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = __55__ZOTWorkspace_conflictAlertDidDismissWithButtonIndex___block_invoke;
      v22[3] = &unk_83A8;
      objc_copyWeak(&v23, &location);
      [v21 showAlert:3 withHandler:v22];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }

  v20 = self->_conflictAlertData;
  self->_conflictAlertData = 0;

LABEL_18:
}

void __55__ZOTWorkspace_conflictAlertDidDismissWithButtonIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained tripleClickAlertDidDismissWithButtonIndex:a2];
}

- (void)_zoomConflictRegistered:(id)registered
{
  userInfo = [registered userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [userInfo objectForKey:@"BundleID"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = +[ZOTConfiguration configurationManager];
        v6 = [v5 valueForKey:@"AppConflicts"];

        v7 = [v6 objectForKey:v4];
        v8 = [v7 objectForKey:@"DateRegistered"];

        if (!v8)
        {
          [(ZOTWorkspace *)self performSelectorOnMainThread:"_conflictAlert:" withObject:userInfo waitUntilDone:0];
        }
      }
    }
  }

  _objc_release_x1();
}

- (void)_initializeZoom
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _appTransitionOccurred, @"com.apple.mobile.SubstantialTransition", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v3, 0, _smoothScalingDisabledChanged, kAXSZoomTouchSmoothScalingNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, 0, _voiceOverEnabled, kAXSVoiceOverTouchEnabledNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  if ((_touchToSpeakChanged_DidCheckAppAccessibility & 1) == 0)
  {
    _AXSAppAccessibilityOnBefore = _AXSApplicationAccessibilityEnabled() != 0;
    _touchToSpeakChanged_DidCheckAppAccessibility = 1;
  }

  if ([ZOTSharedWorkspace touchToSpeakModeEnabled])
  {
    v5 = 1;
  }

  else
  {
    if ((_AXSAppAccessibilityOnBefore & 1) != 0 || !_AXSApplicationAccessibilityEnabled() || !_AXSCanDisableApplicationAccessibility())
    {
      return;
    }

    v5 = 0;
  }

  __AXSApplicationAccessibilitySetEnabled(v5);
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  [(ZOTWorkspace *)self _setZoomEnabled:0];
  v4.receiver = self;
  v4.super_class = ZOTWorkspace;
  [(ZOTWorkspace *)&v4 dealloc];
}

- (void)_setCaptureEvents:(BOOL)events
{
  if (events)
  {
    if (self->_eventTapIdentifier)
    {
      return;
    }

    v8 = +[AXEventTapManager sharedManager];
    v6 = [v8 installEventTap:&__block_literal_global identifier:@"Zoom" type:0];
    eventTapIdentifier = self->_eventTapIdentifier;
    self->_eventTapIdentifier = v6;

    v5 = v8;
  }

  else
  {
    v4 = +[AXEventTapManager sharedManager];
    [v4 removeEventTap:self->_eventTapIdentifier];

    v5 = self->_eventTapIdentifier;
    self->_eventTapIdentifier = 0;
  }
}

BOOL __34__ZOTWorkspace__setCaptureEvents___block_invoke(id a1, AXEventRepresentation *a2)
{
  if (a2 && (operator|| & 1) != 0 && [(AXEventRepresentation *)a2 type]== 10)
  {
    v2 = +[ZOTWorkspace workspace];
    v3 = [v2 followCursorTimer];

    if (!v3)
    {
      v4 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
      [v2 setFollowCursorTimer:v4];
      [v4 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    }

    [v2 setFollowsKeyboardFocus:1];
    v5 = [v2 followCursorTimer];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = ___accessibilityEventTapCallback_block_invoke;
    v8[3] = &unk_8358;
    v9 = v2;
    v6 = v2;
    [v5 afterDelay:v8 processBlock:1.0];
  }

  return 0;
}

- (void)_voiceOverEnabled
{
  if (self->_eventTapIdentifier)
  {
    v3 = _AXSVoiceOverTouchEnabled();
    v4 = +[AXEventTapManager sharedManager];
    v6 = v4;
    if (v3)
    {
      v5 = 50;
    }

    else
    {
      v5 = 30;
    }

    [v4 setEventTapPriority:self->_eventTapIdentifier priority:v5];
  }
}

- (void)_delayedHandleApplicationActivated
{
  threadKey = [(ZOTWorkspace *)self threadKey];
  [(ZOTWorkspace *)self performSelector:"_handleApplicationActivated" withThreadKey:threadKey count:0 objects:0];
}

- (void)_setZoomEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  operator|| = enabled;
  [(ZOTWorkspace *)self _setCaptureEvents:?];
  if (enabledCopy)
  {
    [(ZOTWorkspace *)self performSelector:"_delayedHandleApplicationActivated" withObject:0 afterDelay:0.0];
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    v5 = +[AXSpringBoardServer server];
    springboardActionHandlerIdentifer = [(ZOTWorkspace *)self springboardActionHandlerIdentifer];
    [v5 removeActionHandler:springboardActionHandlerIdentifer];

    [(ZOTWorkspace *)self setSpringboardActionHandlerIdentifer:0];
  }

  [(ZOTWorkspace *)self _voiceOverEnabled];
}

void __32__ZOTWorkspace__setZoomEnabled___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v1 = +[AXSpringBoardServer server];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __32__ZOTWorkspace__setZoomEnabled___block_invoke_2;
  v4[3] = &unk_8410;
  objc_copyWeak(&v5, &location);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __32__ZOTWorkspace__setZoomEnabled___block_invoke_3;
  v2[3] = &unk_8438;
  objc_copyWeak(&v3, &location);
  [v1 registerSpringBoardActionHandler:v4 withIdentifierCallback:v2];

  objc_destroyWeak(&v3);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __32__ZOTWorkspace__setZoomEnabled___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((a2 - 3) <= 1)
  {
    v4 = WeakRetained;
    [WeakRetained performSelectorInBackground:"_updateDeviceOrientationOffMainThread" withObject:0];
    WeakRetained = v4;
  }
}

void __32__ZOTWorkspace__setZoomEnabled___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSpringboardActionHandlerIdentifer:v3];

  [WeakRetained performSelectorInBackground:"_updateDeviceOrientationOffMainThread" withObject:0];
}

- (void)_handleApplicationActivated
{
  v16 = 0;
  v3 = +[AXSpringBoardServer server];
  v4 = [v3 isScreenLockedWithPasscode:&v16];

  if (v4)
  {
    goto LABEL_10;
  }

  v5 = +[ZOTSystemInterface topApplicationBundleId];
  v6 = +[AXSpringBoardServer server];
  isMakingEmergencyCall = [v6 isMakingEmergencyCall];

  if ([(__CFString *)v5 isEqual:@"com.apple.mobilephone"])
  {
    v8 = isMakingEmergencyCall == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {

LABEL_10:
    v9 = @"LockScreen";
    goto LABEL_11;
  }

  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = @"SystemServer";
  }

LABEL_11:
  [(ZOTWorkspace *)self _showAppConflictAlertIfNecessary];
  v10 = [objc_allocWithZone(NSString) initWithFormat:@"ZoomInfo.%@", v9];
  applicationKey = self->_applicationKey;
  self->_applicationKey = v10;

  isInLockScreen = self->_isInLockScreen;
  v13 = [(NSString *)self->_applicationKey stringByReplacingOccurrencesOfString:@"ZoomInfo." withString:&stru_87C0];
  v14 = [v13 isEqualToString:@"LockScreen"];

  self->_isInLockScreen = v14;
  if (self->_conflictAlertVisible && !isInLockScreen && v14)
  {
    v15 = +[AXSpringBoardServer server];
    [v15 hideAlert];
  }
}

- (void)_showAppConflictAlertIfNecessary
{
  v7 = [(NSString *)self->_applicationKey stringByReplacingOccurrencesOfString:@"ZoomInfo." withString:&stru_87C0];
  v3 = +[ZOTConfiguration configurationManager];
  v4 = [v3 valueForKey:@"AppConflicts"];

  v5 = [v4 objectForKey:v7];
  v6 = [v5 objectForKey:@"AskAgainData"];
  if (v6)
  {
    [(ZOTWorkspace *)self _conflictAlert:v6];
  }
}

@end