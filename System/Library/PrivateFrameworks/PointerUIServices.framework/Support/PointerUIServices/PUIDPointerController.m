@interface PUIDPointerController
- (BOOL)_detectShakeToFindGesture;
- (BOOL)_performDecelerationAnimationWithPointerParentEvent:(__IOHIDEvent *)a3 previousEvent:(__IOHIDEvent *)a4;
- (BOOL)_updatePointerVelocityWithPointerParentEvent:(__IOHIDEvent *)a3 previousEvent:(__IOHIDEvent *)a4;
- (BOOL)isActiveOnMainDisplay;
- (CGPoint)_pointerPositionFromPointerEvent:(__IOHIDEvent *)a3;
- (CGPoint)_transformVelocity:(CGPoint)a3 intoCoordinateSpaceForPointerClient:(id)a4;
- (PUIDPointerController)initWithPointerEventStreamProvider:(id)a3 initialDisplay:(id)a4 pointerRenderingScene:(id)a5 systemPointerScene:(id)a6;
- (PUIDPointerController)initWithPointerEventStreamProvider:(id)a3 initialDisplay:(id)a4 pointerRenderingScene:(id)a5 systemPointerScene:(id)a6 displayContextFactory:(id)a7 xpcClientController:(id)a8;
- (double)_autohideDurationForEventSource:(int)a3 isFocusedOnItem:(BOOL)a4 settings:(id)a5;
- (double)_decelerationRate;
- (double)_getShakeToFindPointerSizeMultiplierAtTime:(unint64_t)a3;
- (id)_displayContextForPointerEventContextID:(unsigned int)a3;
- (id)_displayContextForPointerRenderingContextID:(unsigned int)a3;
- (id)_recenteringContextRelativePointerPositionForPointerClient:(id)a3;
- (id)_systemPointerClients;
- (id)overridingHoverRegionClientsForDisplayContext:(id)a3;
- (id)systemPointerInteractionContextForDisplayContext:(id)a3;
- (id)xpcClientContextController:(id)a3 createContentMatchMoveSourceForDisplay:(id)a4 client:(id)a5 error:(id *)a6;
- (id)xpcClientContextController:(id)a3 createPointerPortalSourceCollectionForDisplay:(id)a4 client:(id)a5 error:(id *)a6;
- (void)_adjustDecelerationTargetForProjectedPosition:(CGPoint)a3 liftOffPointerPosition:(CGPoint)a4 pointerVelocity:(CGPoint)a5 hitTestContext:(id)a6 locationInsideHitTestedContext:(CGPoint)a7 projectedDisplayContext:(id)a8 withLookupGenerationID:(unint64_t)a9 withCompletion:(id)a10;
- (void)_adjustDecelerationTargetForProjectedPosition:(CGPoint)a3 liftOffPointerPosition:(CGPoint)a4 pointerVelocity:(CGPoint)a5 hitTestContexts:(id)a6 locationsInsideHitTestContexts:(id)a7 projectedDisplayContext:(id)a8 withLookupGenerationID:(unint64_t)a9;
- (void)_beginPeriodicClientTransformRefreshTimer;
- (void)_cancelActiveGestureResetTimer;
- (void)_cancelAutohideTimer;
- (void)_cancelDelayedMouseRecenteringTimer;
- (void)_cancelDelayedUnhideTimer;
- (void)_cancelOrientationChangeTimer;
- (void)_cancelProvisionalPromotionTimer;
- (void)_getTransformForHoverRegion:(id)a3 completion:(id)a4;
- (void)_handleAccessibilityPointerSizePreferencesDidChange;
- (void)_handlePeriodicRefreshTimerAction;
- (void)_hidePointerForReason:(id)a3 withOptions:(unint64_t)a4;
- (void)_invalidateEffectSourcesPassingTest:(id)a3 displayContext:(id)a4;
- (void)_invalidateHoverRegionsForAllPointerClientsExcludingPointerClient:(id)a3 hoverRegion:(id)a4;
- (void)_movePointerToDisplay:(id)a3;
- (void)_performRecenteringForActiveFocusRegion;
- (void)_performShakeToFindWithPointerParentEvent:(__IOHIDEvent *)a3 previousEvent:(__IOHIDEvent *)a4;
- (void)_refreshClientTransformWithReason:(unint64_t)a3;
- (void)_removeOverridingHoverRegionClient:(id)a3 forDisplay:(id)a4;
- (void)_restartActiveGestureResetTimer;
- (void)_restartAutohideTimer;
- (void)_restartDelayedMouseRecenteringTimer;
- (void)_restartOrientationChangeTimerWithDuration:(double)a3;
- (void)_setShouldPeriodicallyRefreshClientTransform:(BOOL)a3;
- (void)_startDelayedUnhideTimer;
- (void)_startProvisionalPromotionTimer;
- (void)_transformForLayer:(unint64_t)a3 inContext:(unsigned int)a4 queue:(id)a5 completion:(id)a6;
- (void)_unhidePointerForReason:(id)a3;
- (void)_updateActiveGestureMask:(__IOHIDEvent *)a3;
- (void)_updatePointerHiddenByEntitledClients;
- (void)_updatePointerHiddenStateForTouchUp:(BOOL)a3 fingerDown:(BOOL)a4 withEvent:(__IOHIDEvent *)a5 attributes:(id)a6 previousEvent:(__IOHIDEvent *)a7 previousPointerEventAttributes:(id)a8;
- (void)_updatePointerVisibleByEntitledClients;
- (void)_updatePointerWithOptions:(unint64_t)a3 updateHandlerCollection:(id)a4;
- (void)_updateServiceKeepAlive;
- (void)dealloc;
- (void)displayAttached:(id)a3 pointerRenderingScene:(id)a4 systemPointerScene:(id)a5;
- (void)displayDetached:(id)a3;
- (void)mousePointerGlobalDevicePreferencesDidChange:(id)a3;
- (void)pointerEventStreamProvider:(id)a3 didReceiveNonPointerEvent:(__IOHIDEvent *)a4;
- (void)pointerEventStreamProvider:(id)a3 didReceivePointerEvent:(__IOHIDEvent *)a4;
- (void)pointerOrientationDidChange:(id)a3 duration:(double)a4;
- (void)pointerVisibilityDidChange:(id)a3;
- (void)xpcClientContextController:(id)a3 autohidePointerForReason:(unint64_t)a4 forClient:(id)a5;
- (void)xpcClientContextController:(id)a3 didRemovePointerClient:(id)a4;
- (void)xpcClientContextController:(id)a3 didSetOverridesHoverRegions:(BOOL)a4 display:(id)a5 forClient:(id)a6;
- (void)xpcClientContextController:(id)a3 didSetSystemPointerInteractionContextID:(unsigned int)a4 display:(id)a5 forClient:(id)a6;
- (void)xpcClientContextController:(id)a3 didUpdateHoverRegion:(id)a4 forClient:(id)a5 transitionCompletion:(id)a6;
- (void)xpcClientContextController:(id)a3 invalidateContentMatchMoveSource:(id)a4 forClient:(id)a5;
- (void)xpcClientContextController:(id)a3 invalidatePointerPortalSourceCollection:(id)a4 forClient:(id)a5;
- (void)xpcClientContextController:(id)a3 setPointerPersistentlyHiddenForReasons:(id)a4 forClient:(id)a5;
- (void)xpcClientContextController:(id)a3 setPointerPersistentlyVisibleForReasons:(id)a4 forClient:(id)a5;
- (void)xpcClientContextController:(id)a3 setWantsServiceKeepAlive:(BOOL)a4 forClient:(id)a5;
@end

@implementation PUIDPointerController

- (PUIDPointerController)initWithPointerEventStreamProvider:(id)a3 initialDisplay:(id)a4 pointerRenderingScene:(id)a5 systemPointerScene:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(PUIDDisplayContextFactoryImpl);
  v15 = objc_alloc_init(PUIDXPCClientController);
  v16 = [(PUIDPointerController *)self initWithPointerEventStreamProvider:v13 initialDisplay:v12 pointerRenderingScene:v11 systemPointerScene:v10 displayContextFactory:v14 xpcClientController:v15];

  return v16;
}

- (PUIDPointerController)initWithPointerEventStreamProvider:(id)a3 initialDisplay:(id)a4 pointerRenderingScene:(id)a5 systemPointerScene:(id)a6 displayContextFactory:(id)a7 xpcClientController:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v43.receiver = self;
  v43.super_class = PUIDPointerController;
  v21 = [(PUIDPointerController *)&v43 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_pointerEventStreamProvider, a3);
    [(PUIDPointerEventStreamProviding *)v22->_pointerEventStreamProvider addPointerEventStreamObserver:v22];
    objc_storeStrong(&v22->_displayContextFactory, a7);
    v23 = +[PUIDPointerDomain rootSettings];
    settings = v22->_settings;
    v22->_settings = v23;

    objc_storeStrong(&v22->_xpcClientContextController, a8);
    [(PUIDXPCClientController *)v22->_xpcClientContextController setDelegate:v22];
    v25 = +[NSMutableDictionary dictionary];
    displayContextsByDisplay = v22->_displayContextsByDisplay;
    v22->_displayContextsByDisplay = v25;

    v27 = +[NSMutableDictionary dictionary];
    systemPointerInteractionContextByDisplay = v22->_systemPointerInteractionContextByDisplay;
    v22->_systemPointerInteractionContextByDisplay = v27;

    v29 = +[NSMutableDictionary dictionary];
    hoverRegionOverridingClientsByDisplay = v22->_hoverRegionOverridingClientsByDisplay;
    v22->_hoverRegionOverridingClientsByDisplay = v29;

    v31 = [[PUIDTouchHistory alloc] initWithDepth:32];
    touchHistory = v22->_touchHistory;
    v22->_touchHistory = v31;

    v33 = +[NSMapTable strongToStrongObjectsMapTable];
    pointerClientToClientStateMap = v22->_pointerClientToClientStateMap;
    v22->_pointerClientToClientStateMap = v33;

    [(PUIDPointerController *)v22 displayAttached:v16 pointerRenderingScene:v17 systemPointerScene:v18];
    v35 = +[BKSMousePointerService sharedInstance];
    v36 = [v35 addPointerPreferencesObserver:v22];
    globalDevicePreferencesObservationAssertion = v22->_globalDevicePreferencesObservationAssertion;
    v22->_globalDevicePreferencesObservationAssertion = v36;

    v38 = +[BKSMousePointerService sharedInstance];
    v39 = [v38 globalDevicePreferences];
    globalDevicePreferences = v22->_globalDevicePreferences;
    v22->_globalDevicePreferences = v39;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v22, sub_100006C34, kAXSPointerSizeMultiplierPreferenceDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v22->_shakeToFindPointerSizeMultiplier = 1.0;
  }

  return v22;
}

- (void)dealloc
{
  lastPointerEvent = self->_lastPointerEvent;
  if (lastPointerEvent)
  {
    CFRelease(lastPointerEvent);
  }

  [(PUIDPointerEventStreamProviding *)self->_pointerEventStreamProvider removePointerEventStreamObserver:self];
  [(BSInvalidatable *)self->_buttonDownRepositionAssertion invalidate];
  [(BSInvalidatable *)self->_globalDevicePreferencesObservationAssertion invalidate];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kAXSPointerSizeMultiplierPreferenceDidChangeNotification, 0);
  v5.receiver = self;
  v5.super_class = PUIDPointerController;
  [(PUIDPointerController *)&v5 dealloc];
}

- (void)displayAttached:(id)a3 pointerRenderingScene:(id)a4 systemPointerScene:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableDictionary *)self->_displayContextsByDisplay objectForKeyedSubscript:v8];

  if (v11)
  {
    sub_1000270B8();
  }

  v12 = [(PUIDDisplayContextFactory *)self->_displayContextFactory newDisplayContextForDisplay:v8 pointerRenderingScene:v9 systemPointerScene:v10];
  sub_1000278BC(v12, self);
  v13 = sub_100027868(v12);
  [v13 setDelegate:self];

  [(NSMutableDictionary *)self->_displayContextsByDisplay setObject:v12 forKeyedSubscript:v8];
  v14 = sub_1000278B0(v12);
  v15 = objc_alloc_init(PSMutablePointerHoverRegion);
  if (v10)
  {
    v16 = sub_100027868(v12);
    v17 = [v16 createPointerPortalSourceCollectionForClient:v14];

    [v17 setShouldBeInvalidatedIfPointerLeavesDisplay:0];
    v18 = sub_100027880(v12);
    [v18 setSystemPointerPortalSourceCollection:v17];

    [v15 setPointerPortalSourceCollection:v17];
  }

  v19 = +[PSPointerShape systemShape];
  [v15 setPointerShape:v19];

  PSIntensityForLuminanceAndUsage();
  [v15 setPointerVisualIntensity:?];
  [v15 setShouldPointerUnderlayContent:0];
  v20 = objc_alloc_init(_PUIDPointerControllerSystemClientState);
  [(_PUIDPointerControllerSystemClientState *)v20 setDisplay:v8];
  [(_PUIDPointerControllerSystemClientState *)v20 setActiveHoverRegion:v15];
  [(_PUIDPointerControllerClientState *)v20 setTransformFromClientContextToDisplay:buf, sub_1000103E4(v12, buf)];
  [(NSMapTable *)self->_pointerClientToClientStateMap setObject:v20 forKey:v14];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v14);
  v21 = sub_100027880(v12);
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_1000070A8;
  v28 = &unk_100048D88;
  objc_copyWeak(&v31, &location);
  v22 = v15;
  v29 = v22;
  v23 = v20;
  v30 = v23;
  objc_copyWeak(&v32, &from);
  [v21 setLumaChangedHandlerBlock:&v25];

  if (!self->_activeDisplayContext)
  {
    [(PUIDPointerController *)self _movePointerToDisplay:v8, v25, v26, v27, v28, v29, v30];
  }

  v24 = PSLogCommon();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v36 = v8;
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "<%{public}@> finished configuring pointer with final context: %@", buf, 0x16u);
  }

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v31);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)displayDetached:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_displayContextsByDisplay objectForKeyedSubscript:v4];
  [(NSMutableDictionary *)self->_displayContextsByDisplay setObject:0 forKeyedSubscript:v4];
  activeDisplayContext = self->_activeDisplayContext;
  v7 = PSLogCommon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (activeDisplayContext == v5)
  {
    if (v8)
    {
      v16 = 138543362;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@> detaching display was the active display", &v16, 0xCu);
    }

    v9 = self->_activeDisplayContext;
    self->_activeDisplayContext = 0;

    v7 = [(NSMutableDictionary *)self->_displayContextsByDisplay allKeys];
    if ([v7 count]== 1)
    {
      v10 = [v7 firstObject];
      v11 = PSLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@> is the only one left, setting it as the new active display", &v16, 0xCu);
      }

      v12 = [(NSMutableDictionary *)self->_displayContextsByDisplay objectForKeyedSubscript:v10];
      v13 = self->_activeDisplayContext;
      self->_activeDisplayContext = v12;
    }

    [(PUIDPointerController *)self _restartAutohideTimer];
  }

  else if (v8)
  {
    v16 = 138543362;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@> detaching display was NOT the active display", &v16, 0xCu);
  }

  pointerClientToClientStateMap = self->_pointerClientToClientStateMap;
  v15 = sub_1000278B0(v5);
  [(NSMapTable *)pointerClientToClientStateMap removeObjectForKey:v15];

  [(PUIDPointerController *)self _invalidateEffectSourcesPassingTest:&stru_100048DC8 displayContext:v5];
  [(PUIDDisplayContext *)v5 invalidate];
}

- (void)mousePointerGlobalDevicePreferencesDidChange:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100007440;
  v4[3] = &unk_100048A28;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)pointerEventStreamProvider:(id)a3 didReceivePointerEvent:(__IOHIDEvent *)a4
{
  v6 = a3;
  lastPointerEvent = self->_lastPointerEvent;
  if (lastPointerEvent == a4)
  {
    goto LABEL_74;
  }

  v8 = self->_lastPointerEventPointerAttributes;
  if (a4)
  {
    if (IOHIDEventGetIntegerValue())
    {
      if (self->_lastPointerEvent)
      {
        v9 = IOHIDEventGetIntegerValue() == 0;
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }

    self->_isButtonPressDownTransition = v9;
    if (IOHIDEventGetIntegerValue())
    {
      self->_isButtonPressUpTransition = 0;
      if (!self->_isButtonPressDownTransition)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }
  }

  else
  {
    self->_isButtonPressDownTransition = 0;
  }

  if (self->_lastPointerEvent)
  {
    v10 = IOHIDEventGetIntegerValue() != 0;
  }

  else
  {
    v10 = 0;
  }

  self->_isButtonPressUpTransition = v10;
  if (!self->_isButtonPressDownTransition && !v10)
  {
    goto LABEL_24;
  }

  if (!a4)
  {
LABEL_23:
    lockedContext = self->_lockedContext;
    self->_lockedContext = 0;

    self->_latchingState = 2;
    [(PUIDPointerController *)self _refreshClientTransformWithReason:1];
    goto LABEL_24;
  }

LABEL_18:
  if (!IOHIDEventGetIntegerValue())
  {
    goto LABEL_23;
  }

  v11 = [(NSArray *)self->_lastPointerHitTestContexts firstObject];
  v12 = self->_lockedContext;
  self->_lockedContext = v11;

  v13 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:self->_previousPointerClient];
  v14 = [v13 activeHoverRegion];

  if (v14 && [v14 isLatching])
  {
    self->_latchingState = 1;
  }

LABEL_24:
  v16 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:self->_previousPointerClient];
  v17 = [v16 activeHoverRegion];

  if (v17)
  {
    v18 = [v17 pointerShape];
    v19 = [v18 shapeType];

    if (v19 == 5)
    {
      [(PUIDPointerController *)self _refreshClientTransformWithReason:3];
    }
  }

  CFRetain(a4);
  self->_lastPointerEvent = a4;
  v20 = BKSHIDEventGetPointerAttributes();
  objc_storeStrong(&self->_lastPointerEventPointerAttributes, v20);
  v21 = [v20 hitTestContexts];
  lastPointerHitTestContexts = self->_lastPointerHitTestContexts;
  self->_lastPointerHitTestContexts = v21;

  v23 = [(BKSHIDEventPointerAttributes *)v8 token];
  v24 = [v23 _identifierOfCAContext];

  v25 = [v20 token];
  v26 = [v25 _identifierOfCAContext];

  if (v8 && v24 != v26)
  {
    v54 = lastPointerEvent;
    v27 = v8;
    v28 = v6;
    v29 = [(PUIDPointerController *)self _displayContextForPointerEventContextID:v26];
    v30 = PSLogCommon();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      sub_100027838(v29);
      v31 = v53 = v17;
      *buf = 67109634;
      v56 = v26;
      v57 = 1024;
      v58 = v24;
      v59 = 2114;
      v60 = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Got a pointer event with contextID: 0x%x and the last event had contextID: 0x%x, moving pointer to display: %{public}@", buf, 0x18u);

      v17 = v53;
    }

    v32 = sub_100027838(v29);
    [(PUIDPointerController *)self _movePointerToDisplay:v32];

    v6 = v28;
    v8 = v27;
    lastPointerEvent = v54;
  }

  v33 = [v20 fingerDownCount];
  v34 = v33;
  v35 = v33 > 0;
  if (self->_isFingerDown == v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = v33 < 1;
    self->_isFingerDown = v35;
  }

  [(PUIDPointerController *)self _updateActiveGestureMask:a4];
  if ([(PUIDPointerController *)self _eventSourceWantsDecelerationOrRecentering:sub_100007A98(a4, v20)])
  {
    if (lastPointerEvent)
    {
      v37 = [(BKSHIDEventPointerAttributes *)v8 fingerDownCount];
    }

    else
    {
      v37 = 0;
    }

    if (v34 <= v37)
    {
      if (v34 < v37)
      {
        v39 = [(PUIDPointerController *)self _performDecelerationAnimationWithPointerParentEvent:a4 previousEvent:lastPointerEvent];
        if (!v34 && (v39 & 1) == 0 && [(PUIDPointerSettings *)self->_settings shouldRecenterAfterLiftingFinger])
        {
          [(PUIDPointerController *)self _performRecenteringForActiveFocusRegion];
        }
      }

      else
      {
        [(PUIDPointerController *)self _updatePointerVelocityWithPointerParentEvent:a4 previousEvent:lastPointerEvent];
      }
    }

    else
    {
      [(PUIDPointerController *)self _resetPointerVelocity];
    }

LABEL_50:
    [(PUIDPointerController *)self _cancelDelayedMouseRecenteringTimer];
    if (v8)
    {
      goto LABEL_51;
    }

LABEL_40:
    v38 = 0;
    goto LABEL_52;
  }

  if (![(PUIDPointerController *)self _updatePointerVelocityWithPointerParentEvent:a4 previousEvent:lastPointerEvent])
  {
    goto LABEL_50;
  }

  [(PUIDPointerController *)self _restartDelayedMouseRecenteringTimer];
  if (!v8)
  {
    goto LABEL_40;
  }

LABEL_51:
  v38 = ([(BKSHIDEventPointerAttributes *)v8 options]>> 11) & 1;
LABEL_52:
  v40 = [v20 options];
  if ((v40 & 0x800) != 0 || v38)
  {
    if (!v8 || (v40 & 0x800) != 0)
    {
      if ((v38 & 1) == 0)
      {
        [(PUIDPointerController *)self _hidePointerForReason:@"teleporting" withOptions:4];
      }
    }

    else
    {
      [(PUIDPointerController *)self _unhidePointerForReason:@"teleporting ended"];
    }
  }

  else
  {
    [(PUIDPointerController *)self _updatePointerHiddenStateForTouchUp:v36 fingerDown:self->_isFingerDown withEvent:a4 attributes:v20 previousEvent:lastPointerEvent previousPointerEventAttributes:v8];
  }

  touchHistory = self->_touchHistory;
  [(PUIDPointerSettings *)self->_settings durationToAverageVelocityForClientInteractionThreshold];
  [(PUIDTouchHistory *)touchHistory averageTouchVelocityOverTimeDuration:?];
  UIPointAlongLine();
  UIDistanceBetweenPoints();
  v43 = v42;
  [(PUIDPointerSettings *)self->_settings velocityThresholdForClientInteraction];
  v45 = v43 > v44;
  if (self->_hasPointerVelocityCrossedHighThreshold != v45)
  {
    self->_hasPointerVelocityCrossedHighThreshold = v45;
    if (v43 <= v44)
    {
      highVelocityAllowedPointerClient = self->_highVelocityAllowedPointerClient;
      self->_highVelocityAllowedPointerClient = 0;

      highVelocityAllowedHoverRegion = self->_highVelocityAllowedHoverRegion;
      self->_highVelocityAllowedHoverRegion = 0;
    }

    else
    {
      v46 = v17;
      if (self->_previousPointerClient)
      {
        v47 = [(PUIDPointerController *)self _systemPointerClients];
        v48 = [v47 containsObject:self->_previousPointerClient];

        if ((v48 & 1) == 0)
        {
          v49 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:self->_previousPointerClient];
          v50 = [v49 activeHoverRegion];
          if (v50)
          {
            objc_storeStrong(&self->_highVelocityAllowedPointerClient, self->_previousPointerClient);
            objc_storeStrong(&self->_highVelocityAllowedHoverRegion, v50);
          }
        }
      }

      [(PUIDPointerController *)self _invalidateHoverRegionsForAllPointerClientsExcludingPointerClient:self->_highVelocityAllowedPointerClient hoverRegion:self->_highVelocityAllowedHoverRegion];
      v17 = v46;
    }
  }

  if (_UIPlasmaEnabled())
  {
    [(PUIDPointerController *)self _performShakeToFindWithPointerParentEvent:a4 previousEvent:lastPointerEvent];
  }

  -[PUIDPointerController _updatePointerWithOptions:updateHandlerCollection:](self, "_updatePointerWithOptions:updateHandlerCollection:", ([v20 options] >> 4) & 1, 0);
  if (lastPointerEvent)
  {
    CFRelease(lastPointerEvent);
  }

LABEL_74:
}

- (void)_updateActiveGestureMask:(__IOHIDEvent *)a3
{
  Children = IOHIDEventGetChildren();
  if (Children)
  {
    v5 = Children;
    Count = CFArrayGetCount(Children);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        CFArrayGetValueAtIndex(v5, i);
        Type = IOHIDEventGetType();
        if ((Type & 0xFFFFFFFC) == 4)
        {
          v10 = Type;
          Phase = IOHIDEventGetPhase();
          v12 = 1 << v10;
          if ((Phase - 1) > 1)
          {
            v13 = self->_activeGestureMask & ~v12;
          }

          else
          {
            v13 = self->_activeGestureMask | v12;
          }

          self->_activeGestureMask = v13;
        }
      }
    }
  }
}

- (void)pointerEventStreamProvider:(id)a3 didReceiveNonPointerEvent:(__IOHIDEvent *)a4
{
  v5 = a3;
  if (self->_pointerIsAutohidden && !self->_delayedPointerUnhideTimer)
  {
    goto LABEL_12;
  }

  if (IOHIDEventGetType() != 11)
  {
    v7 = @"non-pointer event";
LABEL_11:
    [(PUIDPointerController *)self _hidePointerForReason:v7];
    goto LABEL_12;
  }

  if (![(BKSHIDEventPointerAttributes *)self->_lastPointerEventPointerAttributes fingerDownCount])
  {
    v7 = @"screen digitizer event";
    goto LABEL_11;
  }

  if (!self->_loggedTouchingDigitizerAndTrackpad)
  {
    v6 = PSLogAutohide();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Screen digitizer event with finger down - not hiding pointer (logged once)", v8, 2u);
    }

    self->_loggedTouchingDigitizerAndTrackpad = 1;
  }

LABEL_12:
}

- (void)_restartDelayedMouseRecenteringTimer
{
  [(PUIDPointerController *)self _cancelDelayedMouseRecenteringTimer];
  [(PUIDPointerSettings *)self->_settings delayBeforeRecenteringAfterMouseMovement];
  v4 = v3;
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100007D94;
  v7[3] = &unk_100048DF0;
  objc_copyWeak(&v8, &location);
  v5 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v7 block:v4];
  delayedMouseRecenteringTimer = self->_delayedMouseRecenteringTimer;
  self->_delayedMouseRecenteringTimer = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_cancelDelayedMouseRecenteringTimer
{
  [(NSTimer *)self->_delayedMouseRecenteringTimer invalidate];
  delayedMouseRecenteringTimer = self->_delayedMouseRecenteringTimer;
  self->_delayedMouseRecenteringTimer = 0;
}

- (void)_performRecenteringForActiveFocusRegion
{
  if (self->_lastPointerEvent && self->_previousPointerClient && !IOHIDEventGetIntegerValue())
  {
    v3 = [(PUIDPointerController *)self _recenteringContextRelativePointerPositionForPointerClient:self->_previousPointerClient];
    if (v3)
    {
      v4 = sub_100007A98(self->_lastPointerEvent, self->_lastPointerEventPointerAttributes);
      settings = self->_settings;
      if (v4 == 11)
      {
        [(PUIDPointerSettings *)settings mouseRecenteringAnimationSettings];
      }

      else
      {
        [(PUIDPointerSettings *)settings recenteringAnimationSettings];
      }
      v6 = ;
      LODWORD(v7) = [(PUIDPointerClient *)self->_previousPointerClient pid];
      v8 = sub_100027730(&self->_activeDisplayContext->super.isa);
      v9 = [v8 pid];

      if (v7 == v9)
      {
        v7 = 0xFFFFFFFFLL;
      }

      else
      {
        v7 = v7;
      }

      v10 = PSLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v3 contextID];
        [v3 point];
        v12 = BSStringFromCGPoint();
        previousPointerClient = self->_previousPointerClient;
        v18[0] = 67109890;
        v18[1] = v11;
        v19 = 2114;
        v20 = v12;
        v21 = 2112;
        v22 = previousPointerClient;
        v23 = 1024;
        v24 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Recentering target: contextID: 0x%x - %{public}@ previousPointerClient: %@ restrictingToPID: %d", v18, 0x22u);
      }

      v14 = +[BKSMousePointerService sharedInstance];
      v15 = sub_100027838(&self->_activeDisplayContext->super.isa);
      v16 = [v15 hardwareIdentifier];
      v17 = [v6 BSAnimationSettings];
      [v14 setContextRelativePointerPosition:v3 onDisplay:v16 withAnimationParameters:v17 restrictingToPID:v7];
    }
  }
}

- (BOOL)_detectShakeToFindGesture
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(NSMutableArray *)self->_shakeToFindPoints objectAtIndexedSubscript:0];
  [v4 CGPointValue];
  v6 = v5;
  v8 = v7;

  v9 = [(NSMutableArray *)self->_shakeToFindPoints count];
  v10 = v9 - 1;
  v11 = 0.0;
  v12 = 0.0;
  if (v9 >= 2)
  {
    v13 = 2;
    v14 = 1;
    do
    {
      v15 = [(NSMutableArray *)self->_shakeToFindPoints objectAtIndexedSubscript:v14];
      [v15 CGPointValue];
      v17 = v16;
      v19 = v18;

      v20 = [(NSMutableArray *)self->_shakeToFindPoints objectAtIndexedSubscript:v13 - 2];
      [v20 CGPointValue];
      v22 = v21;
      v24 = v23;

      v25 = (v17 - v22) / (v19 - v24);
      v6 = v6 + v17;
      v8 = v8 + v19;
      v12 = v12 + v25;
      *&v25 = v25;
      v26 = [NSNumber numberWithFloat:v25];
      [v3 addObject:v26];

      v14 = v13;
      v27 = v9 > v13++;
    }

    while (v27);
  }

  v28 = v9;
  if (v9 != 1)
  {
    v29 = 0;
    v11 = 0.0;
    v30 = 1;
    do
    {
      v31 = [v3 objectAtIndexedSubscript:v29];
      [v31 floatValue];
      v33 = v32 - v12 / v10;

      v11 = v11 + v33 * v33;
      v29 = v30;
      v27 = v10 > v30++;
    }

    while (v27);
  }

  v34 = 0;
  v35 = 0;
  v36 = v6 / v28;
  v37 = 1;
  v38 = v8 / v28;
  do
  {
    v39 = [(NSMutableArray *)self->_shakeToFindPoints objectAtIndexedSubscript:v34];
    [v39 CGPointValue];
    v41 = v40 - v36;

    v42 = [(NSMutableArray *)self->_shakeToFindPoints objectAtIndexedSubscript:v34];
    [v42 CGPointValue];
    v44 = v43 - v38;

    if (v44 * v44 + v41 * v41 >= 1024.0)
    {
      ++v35;
    }

    v34 = v37;
    v27 = v9 > v37++;
  }

  while (v27);
  [(PUIDPointerSettings *)self->_settings shakeToFindSlopeVarianceThreshold];
  v47 = v11 / (v9 - 2) <= v45 && v35 >= v9 >> 1;

  return v47;
}

- (double)_getShakeToFindPointerSizeMultiplierAtTime:(unint64_t)a3
{
  shakeToFindWiggles = self->_shakeToFindWiggles;
  BSMonotonicReferencedTimeFromMachTime();
  v6 = v5;
  BSMonotonicReferencedTimeFromMachTime();
  v8 = v6 - v7;
  [(PUIDPointerSettings *)self->_settings shakeToFindDecayInterval];
  v10 = v9;
  if (v8 > v9)
  {
    shakeToFindWiggles = (shakeToFindWiggles * 0.8);
    self->_shakeToFindWiggles = shakeToFindWiggles;
  }

  [(PUIDPointerSettings *)self->_settings shakeToFindScaleFactor];
  v12 = 1.0;
  if (v11 * shakeToFindWiggles <= 1.0)
  {
    goto LABEL_7;
  }

  [(PUIDPointerSettings *)self->_settings shakeToFindMaxScaleUpFactor];
  v12 = v13;
  if (v13 > 1.0 && !self->_shakeToFindAnimationScheduled)
  {
    objc_initWeak(&location, self);
    [(PUIDPointerSettings *)self->_settings shakeToFindScaleUpdateInterval];
    v17 = v16;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100008470;
    v21[3] = &unk_100048DF0;
    objc_copyWeak(&v22, &location);
    v18 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v21 block:v17];
    shakeToFindAnimationTimer = self->_shakeToFindAnimationTimer;
    self->_shakeToFindAnimationTimer = v18;

    self->_shakeToFindAnimationScheduled = 1;
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    return v12;
  }

  if (v13 <= 1.0)
  {
LABEL_7:
    if (v8 > v10)
    {
      [(NSMutableArray *)self->_shakeToFindPoints removeAllObjects];
      shakeToFindPoints = self->_shakeToFindPoints;
      self->_shakeToFindPoints = 0;

      self->_shakeToFindGestureDetected = 0;
    }

    if (self->_shakeToFindAnimationScheduled)
    {
      [(NSTimer *)self->_shakeToFindAnimationTimer invalidate];
      v15 = self->_shakeToFindAnimationTimer;
      self->_shakeToFindAnimationTimer = 0;

      self->_shakeToFindAnimationScheduled = 0;
    }
  }

  return v12;
}

- (void)_performShakeToFindWithPointerParentEvent:(__IOHIDEvent *)a3 previousEvent:(__IOHIDEvent *)a4
{
  if (!a3 || !a4 || IOHIDEventGetIntegerValue())
  {
    return;
  }

  TimeStamp = IOHIDEventGetTimeStamp();
  v7 = IOHIDEventGetTimeStamp();
  BSMonotonicReferencedTimeFromMachTime();
  v9 = v8;
  BSMonotonicReferencedTimeFromMachTime();
  if (TimeStamp != v7)
  {
    v11 = v9 - v10;
    [(PUIDPointerSettings *)self->_settings shakeToFindGestureInterval];
    if (v11 > v12)
    {
      self->_shakeToFindGestureDetected = 0;
      [(NSMutableArray *)self->_shakeToFindPoints removeAllObjects];
      shakeToFindPoints = self->_shakeToFindPoints;
      self->_shakeToFindPoints = 0;

      v14 = 0;
      self->_shakeToFindWiggles = 0;
LABEL_19:
      self->_shakeToFindLastWiggleTimestamp = v14;
      goto LABEL_20;
    }
  }

  x = self->_prevPointerVelocity.x;
  if (x != 0.0 && (v16 = self->_pointerVelocity.x, v16 != 0.0) && ((*&v16 ^ *&x) & 0x8000000000000000) != 0 || (y = self->_prevPointerVelocity.y, y != 0.0) && (v18 = self->_pointerVelocity.y, v18 != 0.0) && ((*&v18 ^ *&y) & 0x8000000000000000) != 0)
  {
    shakeToFindWiggles = self->_shakeToFindWiggles;
    if ([(PUIDPointerSettings *)self->_settings shakeToFindWiggleCount]> shakeToFindWiggles || (v20 = [(NSMutableArray *)self->_shakeToFindPoints count], v20 < [(PUIDPointerSettings *)self->_settings shakeToFindWiggleCount]))
    {
      if (!self->_shakeToFindPoints)
      {
        v21 = objc_alloc_init(NSMutableArray);
        v22 = self->_shakeToFindPoints;
        self->_shakeToFindPoints = v21;
      }

      [(PUIDPointerController *)self _pointerPositionFromPointerEvent:a3];
      v23 = self->_shakeToFindPoints;
      v24 = [NSValue valueWithCGPoint:?];
      [(NSMutableArray *)v23 addObject:v24];
    }

    ++self->_shakeToFindWiggles;
    v14 = TimeStamp;
    goto LABEL_19;
  }

LABEL_20:
  if (!self->_shakeToFindGestureDetected)
  {
    v25 = self->_shakeToFindWiggles;
    if ([(PUIDPointerSettings *)self->_settings shakeToFindWiggleCount]<= v25)
    {
      if ([(PUIDPointerController *)self _detectShakeToFindGesture])
      {
        self->_shakeToFindGestureDetected = 1;

        [(PUIDPointerController *)self _getShakeToFindPointerSizeMultiplierAtTime:TimeStamp];
      }

      else
      {
        self->_shakeToFindWiggles = 0;
        [(NSMutableArray *)self->_shakeToFindPoints removeAllObjects];
        v26 = self->_shakeToFindPoints;
        self->_shakeToFindPoints = 0;
      }
    }
  }
}

- (BOOL)_performDecelerationAnimationWithPointerParentEvent:(__IOHIDEvent *)a3 previousEvent:(__IOHIDEvent *)a4
{
  if ([(PUIDPointerSettings *)self->_settings isDecelerationEnabled])
  {
    v7 = _AXSPointerInertiaEnabled() != 0;
  }

  else
  {
    v7 = 0;
  }

  x = self->_pointerVelocity.x;
  y = self->_pointerVelocity.y;
  [(PUIDPointerSettings *)self->_settings pointerPositionProjectionScaleFactor];
  v11 = v10;
  [(PUIDPointerSettings *)self->_settings pointerPositionProjectionScaleFactor];
  v13 = v12;
  [(PUIDPointerSettings *)self->_settings minimumVelocityThresholdForDeceleration];
  if (!v7 || y * y + x * x <= v14 * v14)
  {
    return 0;
  }

  v15 = x * v11;
  v16 = y * v13;
  [(PUIDPointerController *)self _pointerPositionFromPointerEvent:a3];
  v18 = v17;
  v20 = v19;
  v21 = sub_100027714(&self->_activeDisplayContext->super.isa);
  v22 = sub_100027838(&self->_activeDisplayContext->super.isa);
  v23 = [v22 hardwareIdentifier];

  if (a4)
  {
    TimeStamp = IOHIDEventGetTimeStamp();
    if (TimeStamp != IOHIDEventGetTimeStamp())
    {
      BSMonotonicReferencedTimeFromMachTime();
      v26 = v25;
      BSMonotonicReferencedTimeFromMachTime();
      v28 = v26 - v27;
      v18 = v18 + v28 * v15;
      v20 = v20 + v28 * v16;
      v29 = [[BKSContextRelativePoint alloc] initWithPoint:v21 contextID:{v18, v20}];
      v30 = +[BKSMousePointerService sharedInstance];
      [v30 setContextRelativePointerPosition:v29 onDisplay:v23 withAnimationParameters:0 restrictingToPID:0xFFFFFFFFLL];
    }
  }

  [(PUIDPointerController *)self _decelerationRate];
  v32 = v31;
  v33 = v20 + v16 / 1000.0 * v31 / (1.0 - v31);
  v34 = [[BKSContextRelativePoint alloc] initWithPoint:v21 contextID:{v18 + v15 / 1000.0 * v32 / (1.0 - v32), v33}];
  v35 = [[BKSContextRelativePoint alloc] initWithPoint:v21 contextID:{v15, v16}];
  v36 = +[BKSMousePointerService sharedInstance];
  [v36 setContextRelativePointerPosition:v34 withInitialVelocity:v35 onDisplay:v23 withDecelerationRate:0xFFFFFFFFLL restrictingToPID:v32];

  if ([(PUIDPointerSettings *)self->_settings isDecelerationTargetLookupEnabled])
  {
    v37 = self->_decelerationLookupGenerationID + 1;
    self->_decelerationLookupGenerationID = v37;
    v38 = sub_100027730(&self->_activeDisplayContext->super.isa);
    if (v38)
    {
      v39 = [NSSet setWithObject:v38];
    }

    else
    {
      v39 = 0;
    }

    v41 = +[BKSMousePointerService sharedInstance];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100008A50;
    v42[3] = &unk_100048E18;
    v42[4] = self;
    *&v42[5] = v18 + v15 / 1000.0 * v32 / (1.0 - v32);
    *&v42[6] = v33;
    *&v42[7] = v18;
    *&v42[8] = v20;
    *&v42[9] = v15;
    *&v42[10] = v16;
    v42[11] = v37;
    [v41 getHitTestContextsAtPoint:v34 withAdditionalContexts:v39 onDisplay:v23 withCompletion:v42];
  }

  return 1;
}

- (void)_adjustDecelerationTargetForProjectedPosition:(CGPoint)a3 liftOffPointerPosition:(CGPoint)a4 pointerVelocity:(CGPoint)a5 hitTestContexts:(id)a6 locationsInsideHitTestContexts:(id)a7 projectedDisplayContext:(id)a8 withLookupGenerationID:(unint64_t)a9
{
  y = a5.y;
  x = a5.x;
  v14 = a4.y;
  v15 = a4.x;
  v16 = a3.y;
  v17 = a3.x;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = v21;
  if (!self->_isFingerDown && self->_decelerationLookupGenerationID == a9)
  {
    v23 = sub_100027730(v21);
    if (v23 && [v19 containsObject:v23])
    {
      v24 = [v20 objectAtIndex:{objc_msgSend(v19, "indexOfObject:", v23)}];
      v25 = [v19 mutableCopy];
      [v25 removeObject:v23];
      v26 = [v20 mutableCopy];
      [v26 removeObject:v24];
      [v24 CGPointValue];
      v28 = v27;
      v30 = v29;
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_100008CF8;
      v37[3] = &unk_100048E40;
      v41 = v17;
      v42 = v16;
      v43 = v15;
      v44 = v14;
      v45 = x;
      v46 = y;
      v37[4] = self;
      v38 = v25;
      v39 = v20;
      v40 = v22;
      v47 = a9;
      v31 = v25;
      [(PUIDPointerController *)self _adjustDecelerationTargetForProjectedPosition:v23 liftOffPointerPosition:v40 pointerVelocity:a9 hitTestContext:v37 locationInsideHitTestedContext:v17 projectedDisplayContext:v16 withLookupGenerationID:v15 withCompletion:v14, x, y, v28, v30];
    }

    else
    {
      v24 = [v19 firstObject];
      v32 = [v20 firstObject];
      [v32 CGPointValue];
      v34 = v33;
      v36 = v35;

      [(PUIDPointerController *)self _adjustDecelerationTargetForProjectedPosition:v24 liftOffPointerPosition:v22 pointerVelocity:a9 hitTestContext:0 locationInsideHitTestedContext:v17 projectedDisplayContext:v16 withLookupGenerationID:v15 withCompletion:v14, x, y, v34, v36];
    }
  }
}

- (void)_adjustDecelerationTargetForProjectedPosition:(CGPoint)a3 liftOffPointerPosition:(CGPoint)a4 pointerVelocity:(CGPoint)a5 hitTestContext:(id)a6 locationInsideHitTestedContext:(CGPoint)a7 projectedDisplayContext:(id)a8 withLookupGenerationID:(unint64_t)a9 withCompletion:(id)a10
{
  y = a7.y;
  x = a7.x;
  v15 = a5.y;
  v16 = a5.x;
  v18 = a6;
  v19 = a8;
  v20 = a10;
  v21 = v20;
  if (self->_isFingerDown || self->_decelerationLookupGenerationID != a9)
  {
    if (v20)
    {
      (*(v20 + 2))(v20, 0);
    }
  }

  else
  {
    v60 = a9;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v22 = [(NSMapTable *)self->_pointerClientToClientStateMap keyEnumerator];
    v23 = [v22 allObjects];
    v24 = [v23 copy];

    v25 = [v24 countByEnumeratingWithState:&v68 objects:v72 count:16];
    if (v25)
    {
      v26 = *v69;
LABEL_5:
      v27 = 0;
      while (1)
      {
        if (*v69 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v68 + 1) + 8 * v27);
        v29 = [v28 pid];
        if (v29 == [v18 pid])
        {
          break;
        }

        if (v25 == ++v27)
        {
          v25 = [v24 countByEnumeratingWithState:&v68 objects:v72 count:16];
          if (v25)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v30 = v28;

      if (!v30)
      {
        goto LABEL_24;
      }

      [(PUIDPointerController *)self _decelerationRate];
      v56 = v31;
      [(PUIDPointerSettings *)self->_settings decelerationTargetLookupResolution];
      v55 = v32;
      [(PUIDPointerSettings *)self->_settings decelerationTargetLookupConeAngleInDegrees];
      v54 = v33;
      [(PUIDPointerSettings *)self->_settings decelerationTargetLookupRadius];
      v57 = v34;
      v35 = sub_100027730(v19);
      v36 = v35 == v18;

      if (v36)
      {
        [(PUIDPointerSettings *)self->_settings systemInteractionsDecelerationTargetLookupRadius];
        v57 = v37;
      }

      [(PUIDPointerSettings *)self->_settings minimumVelocityThresholdForExpandedDecelerationLookup];
      v53 = v38;
      [(PUIDPointerController *)self _transformVelocity:v30 intoCoordinateSpaceForPointerClient:v16, v15];
      v58 = v40;
      v59 = v39;
      UIDistanceBetweenPoints();
      v42 = v41;
      objc_initWeak(&location, self);
      xpcClientContextController = self->_xpcClientContextController;
      v44 = [v18 contextID];
      v45 = hypot(v59, v58);
      v46 = fabs(v16);
      v47 = fabs(v15);
      if (v46 < v47)
      {
        v46 = v47;
      }

      if (v46 >= v53)
      {
        v48 = v57;
      }

      else
      {
        v48 = 0.0;
      }

      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_100009154;
      v61[3] = &unk_100048E68;
      objc_copyWeak(v66, &location);
      v49 = v42 / v45;
      v50 = v58 * (v42 / v45);
      v66[1] = v60;
      v51 = v59 * v49;
      v66[2] = *&x;
      v66[3] = *&y;
      v62 = v18;
      v52 = v30;
      v63 = v52;
      v64 = v19;
      v66[4] = v56;
      v65 = v21;
      [(PUIDXPCClientController *)xpcClientContextController adjustedDecelerationTargetForPointerClient:v52 withTargetPointerPosition:v44 velocity:v61 inContextID:x cursorRegionLookupRadius:y cursorRegionLookupResolution:v51 lookupConeAngle:v50 completion:v48, v55, v54 * 3.14159265 / 180.0];

      objc_destroyWeak(v66);
      objc_destroyWeak(&location);
    }

    else
    {
LABEL_11:

LABEL_24:
      if (v21)
      {
        v21[2](v21, 0);
      }
    }
  }
}

- (BOOL)_updatePointerVelocityWithPointerParentEvent:(__IOHIDEvent *)a3 previousEvent:(__IOHIDEvent *)a4
{
  LOBYTE(v4) = 0;
  if (a3 && a4)
  {
    v8 = BKSHIDEventGetPointerAttributes();
    v9 = BKSHIDEventGetPointerAttributes();
    v10 = [v8 token];
    v11 = [v10 _identifierOfCAContext];
    v12 = [v9 token];
    v13 = [v12 _identifierOfCAContext];

    if (v11 == v13 && ([(PUIDPointerController *)self _pointerPositionFromPointerEvent:a3], v15 = v14, v17 = v16, [(PUIDPointerController *)self _pointerPositionFromPointerEvent:a4], v19 = v18, v21 = v20, TimeStamp = IOHIDEventGetTimeStamp(), TimeStamp != IOHIDEventGetTimeStamp()))
    {
      BSMonotonicReferencedTimeFromMachTime();
      v24 = v23;
      BSMonotonicReferencedTimeFromMachTime();
      v26 = v24 - v25;
      self->_prevPointerVelocity = self->_pointerVelocity;
      v27 = (v15 - v19) / v26;
      v28 = (v17 - v21) / v26;
      if (self->_pointerVelocity.x != CGPointZero.x || self->_pointerVelocity.y != CGPointZero.y)
      {
        [(PUIDPointerSettings *)self->_settings pointerVelocitySmoothingWeight];
        v27 = (1.0 - v29) * self->_pointerVelocity.x + v27 * v29;
        v28 = (1.0 - v29) * self->_pointerVelocity.y + v28 * v29;
      }

      self->_pointerVelocity.x = v27;
      self->_pointerVelocity.y = v28;
      [(PUIDTouchHistory *)self->_touchHistory updateWithLocation:v15 timestamp:v17, v24];
      v4 = BSPointEqualToPoint() ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)_updatePointerHiddenStateForTouchUp:(BOOL)a3 fingerDown:(BOOL)a4 withEvent:(__IOHIDEvent *)a5 attributes:(id)a6 previousEvent:(__IOHIDEvent *)a7 previousPointerEventAttributes:(id)a8
{
  v12 = a3;
  v14 = a6;
  v15 = a8;
  if (a5 && IOHIDEventGetIntegerValue())
  {
    self->_isHiddenForActiveGesture = 0;
    [(PUIDPointerController *)self _cancelActiveGestureResetTimer];
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_100007A98(a5, v14);
  v18 = [(PUIDPointerController *)self _shouldHideWhileGesturingForEventSource:v17];
  if (v18 && self->_isHiddenForActiveGesture)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_100009920(a5, v14, a7);
  }

  if (self->_activeGestureMask)
  {
    v20 = 0;
    if (!v18)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!self->_pointerIsAutohidden)
    {
      goto LABEL_16;
    }

    v20 = [v14 fingerDownCount] < 2;
    if (!v18)
    {
      goto LABEL_16;
    }
  }

  if (!v20)
  {
    self->_isHiddenForActiveGesture = v17 != 11;
    [(PUIDPointerController *)self _hidePointerForReason:@"performing gesture" withOptions:2];
    [(PUIDPointerController *)self _restartActiveGestureResetTimer];
    goto LABEL_45;
  }

LABEL_16:
  if (v17 == 11)
  {
    self->_loggedRange = 0;
    if (!v19)
    {
      goto LABEL_45;
    }

    [(PUIDPointerController *)self _unhidePointerForReason:@"mouse interaction"];
    if (v16)
    {
      [(PUIDPointerController *)self _cancelAutohideTimer];
      goto LABEL_45;
    }

LABEL_39:
    [(PUIDPointerController *)self _restartAutohideTimer];
    goto LABEL_45;
  }

  if (v12)
  {
    self->_loggedRange = 0;
    if (v19)
    {
      v21 = [v14 hitTestContexts];
      v22 = [v21 count];

      if (!v22)
      {
        goto LABEL_45;
      }

      self->_isProvisionallyVisible = 0;
      [(PUIDPointerController *)self _cancelProvisionalPromotionTimer];
      [(PUIDPointerController *)self _cancelDelayedUnhideTimer];
      [(PUIDPointerController *)self _unhidePointerForReason:@"tap-to-click"];
    }

    else if (self->_isProvisionallyVisible)
    {
      [(PUIDPointerController *)self _hidePointerForReason:@"touch-up while pointer provisionally visible"];
      goto LABEL_45;
    }

    goto LABEL_39;
  }

  if (a4 || ([v14 options] & 0x400) != 0)
  {
    self->_loggedRange = 0;
    [(PUIDPointerController *)self _cancelAutohideTimer];
    if ((v18 | v19 ^ 1))
    {
      if (self->_pointerIsAutohidden && !self->_isHiddenForActiveGesture && sub_100009A48(v14))
      {
        [(PUIDPointerController *)self _startDelayedUnhideTimer];
      }
    }

    else
    {
      if (self->_isProvisionallyVisible)
      {
        v26 = PSLogAutohide();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v30) = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Trackpad interaction determined definitive", &v30, 2u);
        }
      }

      self->_isProvisionallyVisible = 0;
      [(PUIDPointerController *)self _cancelProvisionalPromotionTimer];
      [(PUIDPointerController *)self _cancelDelayedUnhideTimer];
      [(PUIDPointerController *)self _unhidePointerForReason:@"definitive trackpad interaction"];
    }
  }

  else if (self->_pointerIsAutohidden)
  {
    SenderID = IOHIDEventGetSenderID();
    if (sub_100009A84())
    {
      if (!self->_loggedRange)
      {
        v24 = PSLogAutohide();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = BKSHIDEventGetConciseDescription();
          v30 = 134218242;
          v31 = SenderID;
          v32 = 2114;
          v33 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Trackpad range event while hidden (logged once). senderID: %llX, evt: %{public}@", &v30, 0x16u);
        }

        self->_loggedRange = 1;
      }
    }

    else if (sub_100009B20())
    {
      v28 = PSLogAutohide();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = BKSHIDEventGetConciseDescription();
        v30 = 134218242;
        v31 = SenderID;
        v32 = 2114;
        v33 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Non-range trackpad event without finger down - not unhiding pointer. senderID: %llX, evt: %{public}@", &v30, 0x16u);
      }
    }
  }

LABEL_45:
  if ([(PUIDPointerSettings *)self->_settings shouldAutohideAfterHitTestContextLoss])
  {
    v27 = [v14 hitTestContexts];
    if (![v27 count])
    {
      if (!self->_pointerIsAutohidden)
      {
        [(PUIDPointerController *)self _hidePointerForReason:@"Pointer lost hit test context" withOptions:2];
      }

      if (self->_isHiddenForActiveGesture)
      {
        [(PUIDPointerController *)self _cancelActiveGestureResetTimer];
        self->_activeGestureMask = 0;
        self->_isHiddenForActiveGesture = 0;
      }
    }
  }
}

- (void)_startDelayedUnhideTimer
{
  if (!self->_delayedPointerUnhideTimer && [(NSMapTable *)self->_pointerClientToWantsServiceKeepAliveMap count])
  {
    v3 = PSLogAutohide();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting delayed unhide timer", buf, 2u);
    }

    [(PUIDPointerSettings *)self->_settings delayBeforeUnhidingOnTrackpadTouchDown];
    v5 = v4;
    objc_initWeak(buf, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100009CF0;
    v8[3] = &unk_100048DF0;
    objc_copyWeak(&v9, buf);
    v6 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v8 block:v5];
    delayedPointerUnhideTimer = self->_delayedPointerUnhideTimer;
    self->_delayedPointerUnhideTimer = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

- (void)_cancelDelayedUnhideTimer
{
  [(NSTimer *)self->_delayedPointerUnhideTimer invalidate];
  delayedPointerUnhideTimer = self->_delayedPointerUnhideTimer;
  self->_delayedPointerUnhideTimer = 0;
}

- (void)_startProvisionalPromotionTimer
{
  v3 = PSLogAutohide();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting provisional promotion timer", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009EC4;
  v6[3] = &unk_100048DF0;
  objc_copyWeak(&v7, buf);
  v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v6 block:0.095];
  provisionalPromotionTimer = self->_provisionalPromotionTimer;
  self->_provisionalPromotionTimer = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)_cancelProvisionalPromotionTimer
{
  [(NSTimer *)self->_provisionalPromotionTimer invalidate];
  provisionalPromotionTimer = self->_provisionalPromotionTimer;
  self->_provisionalPromotionTimer = 0;
}

- (void)_restartAutohideTimer
{
  [(PUIDPointerController *)self _cancelAutohideTimer];
  if (_AXSPointerAutoHideEnabled() && [(PUIDPointerController *)self isActiveOnMainDisplay])
  {
    lastPointerEvent = self->_lastPointerEvent;
    if (lastPointerEvent)
    {
      v4 = sub_100007A98(lastPointerEvent, self->_lastPointerEventPointerAttributes);
    }

    else
    {
      v5 = PSLogAutohide();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No previous event, assuming trackpad for delay when restarting autohide timer.", buf, 2u);
      }

      v4 = 12;
    }

    [(PUIDPointerController *)self _autohideDurationForEventSource:v4 isFocusedOnItem:self->_focusedOnItem settings:self->_settings];
    v7 = v6;
    objc_initWeak(buf, self);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000A10C;
    v10[3] = &unk_100048E90;
    objc_copyWeak(&v11, buf);
    v12 = v4;
    v8 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v10 block:v7];
    autohidePointerTimer = self->_autohidePointerTimer;
    self->_autohidePointerTimer = v8;

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)_cancelAutohideTimer
{
  [(NSTimer *)self->_autohidePointerTimer invalidate];
  autohidePointerTimer = self->_autohidePointerTimer;
  self->_autohidePointerTimer = 0;
}

- (void)_restartActiveGestureResetTimer
{
  [(PUIDPointerController *)self _cancelActiveGestureResetTimer];
  objc_initWeak(&location, self);
  [(PUIDPointerSettings *)self->_settings delayBeforeUnhidingAfterGesturing];
  v4 = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A348;
  v7[3] = &unk_100048DF0;
  objc_copyWeak(&v8, &location);
  v5 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v7 block:v4];
  activeGestureResetTimer = self->_activeGestureResetTimer;
  self->_activeGestureResetTimer = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_cancelActiveGestureResetTimer
{
  [(NSTimer *)self->_activeGestureResetTimer invalidate];
  activeGestureResetTimer = self->_activeGestureResetTimer;
  self->_activeGestureResetTimer = 0;
}

- (void)_restartOrientationChangeTimerWithDuration:(double)a3
{
  [(PUIDPointerController *)self _cancelOrientationChangeTimer];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A4B4;
  v7[3] = &unk_100048EB8;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  v5 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v7 block:a3];
  orientationChangeTimer = self->_orientationChangeTimer;
  self->_orientationChangeTimer = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_cancelOrientationChangeTimer
{
  [(NSTimer *)self->_orientationChangeTimer invalidate];
  orientationChangeTimer = self->_orientationChangeTimer;
  self->_orientationChangeTimer = 0;
}

- (double)_autohideDurationForEventSource:(int)a3 isFocusedOnItem:(BOOL)a4 settings:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = v7;
  if (a3 == 12)
  {
    if (v5)
    {
      [v7 autohideDurationForFocusedPointer];
    }

    else
    {
      [v7 autohideDurationForSystemPointer];
    }
  }

  else if (v5)
  {
    [v7 autohideDurationForFocusedPointerMouse];
  }

  else
  {
    [v7 autohideDurationForSystemPointerMouse];
  }

  v10 = v9;

  return v10;
}

- (void)_hidePointerForReason:(id)a3 withOptions:(unint64_t)a4
{
  v6 = a3;
  self->_loggedRange = 0;
  [(PUIDPointerController *)self _cancelAutohideTimer];
  [(PUIDPointerController *)self _cancelDelayedUnhideTimer];
  [(PUIDPointerController *)self _cancelProvisionalPromotionTimer];
  [(PUIDPointerController *)self _cancelOrientationChangeTimer];
  self->_isProvisionallyVisible = 0;
  if (!self->_pointerIsAutohidden)
  {
    pointerForcedVisibleByEntitledClient = self->_pointerForcedVisibleByEntitledClient;
    v8 = PSLogAutohide();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (pointerForcedVisibleByEntitledClient)
    {
      if (v9)
      {
        *buf = 136446210;
        v14 = [v6 UTF8String];
        v10 = "Hiding pointer <Suspended due to visible assertion>: %{public}s";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
      }
    }

    else if (v9)
    {
      *buf = 136446210;
      v14 = [v6 UTF8String];
      v10 = "Hiding pointer: %{public}s";
      goto LABEL_7;
    }

    self->_pointerIsAutohidden = 1;
    self->_loggedTouchingDigitizerAndTrackpad = 0;
    v11 = objc_alloc_init(PUIDPointerStateUpdateHandlerCollection);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000A7A8;
    v12[3] = &unk_100048EE0;
    v12[4] = self;
    [(PUIDPointerStateUpdateHandlerCollection *)v11 setVisibilityTransitionCompletion:v12];
    [(PUIDPointerController *)self _updatePointerWithOptions:a4 updateHandlerCollection:v11];
  }
}

- (void)_unhidePointerForReason:(id)a3
{
  v4 = a3;
  self->_loggedRange = 0;
  [(PUIDPointerController *)self _cancelDelayedUnhideTimer];
  if (self->_pointerIsAutohidden)
  {
    pointerForcedVisibleByEntitledClient = self->_pointerForcedVisibleByEntitledClient;
    v6 = PSLogAutohide();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (pointerForcedVisibleByEntitledClient)
    {
      if (v7)
      {
        v9 = 136446210;
        v10 = [v4 UTF8String];
        v8 = "Unhiding pointer <Already visible due to assertion>: %{public}s";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &v9, 0xCu);
      }
    }

    else if (v7)
    {
      v9 = 136446210;
      v10 = [v4 UTF8String];
      v8 = "Unhiding pointer: %{public}s";
      goto LABEL_7;
    }

    self->_pointerIsAutohidden = 0;
    self->_loggedTouchingDigitizerAndTrackpad = 0;
    [(PUIDPointerController *)self _updatePointerWithOptions:0 updateHandlerCollection:0];
  }
}

- (BOOL)isActiveOnMainDisplay
{
  v2 = sub_100027838(&self->_activeDisplayContext->super.isa);
  v3 = +[PSDisplay builtinDisplay];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (void)pointerVisibilityDidChange:(id)a3
{
  v4 = [a3 pointerIsVisible];
  xpcClientContextController = self->_xpcClientContextController;

  [(PUIDXPCClientController *)xpcClientContextController setPointerVisibilityState:v4];
}

- (void)pointerOrientationDidChange:(id)a3 duration:(double)a4
{
  [(PUIDPointerController *)self _hidePointerForReason:@"Screen rotating"];
  self->_isHiddenForOrientationChange = 1;

  [(PUIDPointerController *)self _restartOrientationChangeTimerWithDuration:a4];
}

- (void)xpcClientContextController:(id)a3 didRemovePointerClient:(id)a4
{
  v5 = a4;
  v6 = PSLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - is gone", buf, 0xCu);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [(NSMutableDictionary *)self->_hoverRegionOverridingClientsByDisplay allKeys];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(PUIDPointerController *)self _removeOverridingHoverRegionClient:v5 forDisplay:*(*(&v26 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [(NSMutableDictionary *)self->_displayContextsByDisplay allValues];
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = sub_100027868(*(*(&v22 + 1) + 8 * v16));
        [v17 invalidateEffectSourcesForPointerClient:v5];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  v18 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:v5];
  v19 = v18;
  if (v18)
  {
    [v18 invalidateAutomaticRegionExitTimer];
    [(NSMapTable *)self->_pointerClientToClientStateMap removeObjectForKey:v5];
    [(PUIDPointerController *)self _updatePointerHiddenByEntitledClients];
    [(PUIDPointerController *)self _updatePointerVisibleByEntitledClients];
  }

  [(PUIDPointerController *)self _updatePointerWithOptions:0 updateHandlerCollection:0];
  v20 = [(NSMapTable *)self->_pointerClientToWantsServiceKeepAliveMap objectForKey:v5];

  if (v20)
  {
    [(NSMapTable *)self->_pointerClientToWantsServiceKeepAliveMap removeObjectForKey:v5];
    if (![(NSMapTable *)self->_pointerClientToWantsServiceKeepAliveMap count])
    {
      pointerClientToWantsServiceKeepAliveMap = self->_pointerClientToWantsServiceKeepAliveMap;
      self->_pointerClientToWantsServiceKeepAliveMap = 0;
    }

    [(PUIDPointerController *)self _updateServiceKeepAlive];
  }
}

- (void)xpcClientContextController:(id)a3 didUpdateHoverRegion:(id)a4 forClient:(id)a5 transitionCompletion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:v10];
  lockedContext = self->_lockedContext;
  if (lockedContext)
  {
    v14 = [(BKSHIDEventHitTestClientContext *)lockedContext pid];
    v15 = [v10 pid];
    v16 = sub_1000277B8(&self->_activeDisplayContext->super.isa);
    v17 = [v16 firstObject];
    v18 = [v17 isEqual:v10];

    if (v14 != v15 && (v18 & 1) == 0)
    {
      v19 = PSLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100027130(v10, v19);
      }

      goto LABEL_15;
    }

    if (v9)
    {
      v20 = [(_PUIDPointerControllerClientState *)v12 activeHoverRegion];
      v21 = [v20 isLatching];

      if (v21)
      {
        goto LABEL_15;
      }
    }

    if ([v9 isLatching])
    {
      self->_latchingState = 1;
    }
  }

  if (!v12)
  {
    v12 = objc_alloc_init(_PUIDPointerControllerClientState);
    [(NSMapTable *)self->_pointerClientToClientStateMap setObject:v12 forKey:v10];
  }

  v22 = [(_PUIDPointerControllerClientState *)v12 hoverRegionGenerationID]+ 1;
  [(_PUIDPointerControllerClientState *)v12 setHoverRegionGenerationID:v22];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000AEA4;
  v23[3] = &unk_100048F30;
  v12 = v12;
  v24 = v12;
  v28 = v22;
  v25 = v9;
  v26 = self;
  v27 = v11;
  [(PUIDPointerController *)self _getTransformForHoverRegion:v25 completion:v23];

  v16 = v24;
LABEL_15:
}

- (id)xpcClientContextController:(id)a3 createPointerPortalSourceCollectionForDisplay:(id)a4 client:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v13 = [(NSMutableDictionary *)self->_displayContextsByDisplay objectForKeyedSubscript:v11];
    v14 = v13;
    if (v13)
    {
      v15 = sub_100027868(v13);

      if (!v15)
      {
        sub_1000271BC();
      }

      v16 = sub_100027868(v14);
      v17 = [v16 createPointerPortalSourceCollectionForClient:v12];

      [v17 setShouldBeInvalidatedIfPointerLeavesDisplay:0];
      v18 = PSLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138543874;
        v24 = v12;
        v25 = 2114;
        v26 = v11;
        v27 = 2114;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - created source collection on display %{public}@: %{public}@", &v23, 0x20u);
      }
    }

    else
    {
      if (a6)
      {
        *a6 = [NSError errorWithDomain:@"PUIDXPCClientControllerErrorDomain" code:-1004 userInfo:0];
      }

      v18 = PSLogCommon();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138543618;
        v24 = v12;
        v25 = 2114;
        v26 = v11;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - requested source collection but we don't have a context for display %{public}@", &v23, 0x16u);
      }

      v17 = 0;
    }
  }

  else
  {
    activeDisplayContext = self->_activeDisplayContext;
    if (activeDisplayContext)
    {
      v20 = sub_100027868(activeDisplayContext);

      if (!v20)
      {
        sub_100027234();
      }

      v21 = sub_100027868(self->_activeDisplayContext);
      v17 = [v21 createPointerPortalSourceCollectionForClient:v12];

      [v17 setShouldBeInvalidatedIfPointerLeavesDisplay:1];
      v14 = PSLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138543618;
        v24 = v12;
        v25 = 2114;
        v26 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - created source collection on active display: %{public}@", &v23, 0x16u);
      }
    }

    else
    {
      if (a6)
      {
        *a6 = [NSError errorWithDomain:@"PUIDXPCClientControllerErrorDomain" code:-1004 userInfo:0];
      }

      v14 = PSLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138543362;
        v24 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - requested source collection but we don't have an active display", &v23, 0xCu);
      }

      v17 = 0;
    }
  }

  return v17;
}

- (void)xpcClientContextController:(id)a3 invalidatePointerPortalSourceCollection:(id)a4 forClient:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = PSLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - invalidated source collection: %{public}@", &v13, 0x16u);
  }

  v10 = -[PUIDPointerController _displayContextForPointerRenderingContextID:](self, "_displayContextForPointerRenderingContextID:", [v7 sourceContextID]);
  v11 = v10;
  if (v10)
  {
    v12 = sub_100027868(v10);
    [v12 invalidatePointerPortalSourceCollection:v7 forClient:v8];
  }

  else
  {
    v12 = PSLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - failed to invalidate source collection: %{public}@ - couldn't find matching display context", &v13, 0x16u);
    }
  }
}

- (id)xpcClientContextController:(id)a3 createContentMatchMoveSourceForDisplay:(id)a4 client:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v13 = [(NSMutableDictionary *)self->_displayContextsByDisplay objectForKeyedSubscript:v11];
    v14 = v13;
    if (v13)
    {
      v15 = sub_100027868(v13);

      if (!v15)
      {
        sub_1000272C0();
      }

      v16 = sub_100027868(v14);
      v17 = [v16 createContentMatchMoveSourceForClient:v12];

      [v17 setShouldBeInvalidatedIfPointerLeavesDisplay:0];
    }

    else
    {
      if (a6)
      {
        *a6 = [NSError errorWithDomain:@"PUIDXPCClientControllerErrorDomain" code:-1004 userInfo:0];
      }

      v21 = PSLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138543618;
        v25 = v12;
        v26 = 2114;
        v27 = v11;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - requested match move source but we don't have a context for display %{public}@", &v24, 0x16u);
      }

      v17 = 0;
    }
  }

  else
  {
    activeDisplayContext = self->_activeDisplayContext;
    if (activeDisplayContext)
    {
      v19 = sub_100027868(activeDisplayContext);

      if (!v19)
      {
        sub_10002734C();
      }

      v20 = sub_100027868(self->_activeDisplayContext);
      v17 = [v20 createContentMatchMoveSourceForClient:v12];

      [v17 setShouldBeInvalidatedIfPointerLeavesDisplay:1];
    }

    else
    {
      if (a6)
      {
        *a6 = [NSError errorWithDomain:@"PUIDXPCClientControllerErrorDomain" code:-1004 userInfo:0];
      }

      v23 = PSLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138543362;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ - requested match move source but we don't have an active display", &v24, 0xCu);
      }

      v17 = 0;
    }
  }

  return v17;
}

- (void)xpcClientContextController:(id)a3 invalidateContentMatchMoveSource:(id)a4 forClient:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = -[PUIDPointerController _displayContextForPointerRenderingContextID:](self, "_displayContextForPointerRenderingContextID:", [v7 sourceContextID]);
  v10 = v9;
  if (v9)
  {
    v11 = sub_100027868(v9);
    [v11 invalidateContentMatchMoveSource:v7 forClient:v8];
  }

  else
  {
    v11 = PSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - failed to invalidate match move source: %{public}@ - couldn't find matching display context", &v12, 0x16u);
    }
  }
}

- (void)xpcClientContextController:(id)a3 setWantsServiceKeepAlive:(BOOL)a4 forClient:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = PSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - wants keep alive", &v14, 0xCu);
  }

  v9 = [(NSMapTable *)self->_pointerClientToWantsServiceKeepAliveMap objectForKey:v7];

  if (v5)
  {
    if (!v9)
    {
      pointerClientToWantsServiceKeepAliveMap = self->_pointerClientToWantsServiceKeepAliveMap;
      if (!pointerClientToWantsServiceKeepAliveMap)
      {
        v11 = +[NSMapTable strongToStrongObjectsMapTable];
        v12 = self->_pointerClientToWantsServiceKeepAliveMap;
        self->_pointerClientToWantsServiceKeepAliveMap = v11;

        pointerClientToWantsServiceKeepAliveMap = self->_pointerClientToWantsServiceKeepAliveMap;
      }

      [(NSMapTable *)pointerClientToWantsServiceKeepAliveMap setObject:&__kCFBooleanTrue forKey:v7];
LABEL_11:
      [(PUIDPointerController *)self _updateServiceKeepAlive];
    }
  }

  else if (v9)
  {
    [(NSMapTable *)self->_pointerClientToWantsServiceKeepAliveMap removeObjectForKey:v7];
    if (![(NSMapTable *)self->_pointerClientToWantsServiceKeepAliveMap count])
    {
      v13 = self->_pointerClientToWantsServiceKeepAliveMap;
      self->_pointerClientToWantsServiceKeepAliveMap = 0;
    }

    goto LABEL_11;
  }
}

- (void)xpcClientContextController:(id)a3 didSetSystemPointerInteractionContextID:(unsigned int)a4 display:(id)a5 forClient:(id)a6
{
  v7 = *&a4;
  v9 = a5;
  v10 = a6;
  v11 = PSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543874;
    v17 = v10;
    v18 = 1024;
    LODWORD(v19[0]) = v7;
    WORD2(v19[0]) = 2114;
    *(v19 + 6) = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - set system pointer interaction contextID: 0x%x display: %{public}@", &v16, 0x1Cu);
  }

  systemPointerInteractionContextByDisplay = self->_systemPointerInteractionContextByDisplay;
  if (v7)
  {
    v13 = [(NSMutableDictionary *)systemPointerInteractionContextByDisplay objectForKeyedSubscript:v9];
    if (v13)
    {
      v14 = PSLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543618;
        v17 = v10;
        v18 = 2114;
        v19[0] = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - was tracking %{public}@ systemPointerInteractionContext --> replacing it", &v16, 0x16u);
      }
    }

    v15 = objc_alloc_init(BKSHIDEventHitTestClientContext);
    [v15 setPid:{objc_msgSend(v10, "pid")}];
    [v15 setContextID:v7];
    [(NSMutableDictionary *)self->_systemPointerInteractionContextByDisplay setObject:v15 forKeyedSubscript:v9];
  }

  else
  {
    [(NSMutableDictionary *)systemPointerInteractionContextByDisplay removeObjectForKey:v9];
  }
}

- (void)xpcClientContextController:(id)a3 didSetOverridesHoverRegions:(BOOL)a4 display:(id)a5 forClient:(id)a6
{
  v7 = a4;
  v9 = a5;
  v10 = a6;
  v11 = PSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543874;
    v14 = v10;
    v15 = 1024;
    v16 = v7;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - set client overrides hit tested hover regions %{BOOL}u display: %{public}@", &v13, 0x1Cu);
  }

  if (v7)
  {
    v12 = [(NSMutableDictionary *)self->_hoverRegionOverridingClientsByDisplay objectForKeyedSubscript:v9];
    if (!v12)
    {
      v12 = +[NSMutableArray array];
      [(NSMutableDictionary *)self->_hoverRegionOverridingClientsByDisplay setObject:v12 forKeyedSubscript:v9];
    }

    [v12 addObject:v10];
  }

  else
  {
    [(PUIDPointerController *)self _removeOverridingHoverRegionClient:v10 forDisplay:v9];
  }
}

- (void)_removeOverridingHoverRegionClient:(id)a3 forDisplay:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_hoverRegionOverridingClientsByDisplay objectForKeyedSubscript:v7];
  v9 = [v8 indexOfObject:v6];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
    v11 = PSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[PUIDPointerController _removeOverridingHoverRegionClient:forDisplay:]";
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Removing client %@ for display %@", &v12, 0x20u);
    }

    [v8 removeObjectAtIndex:v10];
    if (![v8 count])
    {
      [(NSMutableDictionary *)self->_hoverRegionOverridingClientsByDisplay removeObjectForKey:v7];
    }
  }
}

- (void)xpcClientContextController:(id)a3 autohidePointerForReason:(unint64_t)a4 forClient:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 > 2)
  {
    switch(a4)
    {
      case 3uLL:
        v22 = [v9 auditToken];
        v23 = [v22 hasEntitlement:@"com.apple.pointerui.autohidePointer"];

        if (v23)
        {
          v15 = @"accessibility";
          goto LABEL_21;
        }

        v18 = PSLogCommon();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_37;
        }

        v34 = 138412290;
        v35 = @"com.apple.pointerui.autohidePointer";
        v19 = "Ignoring autohide pointer request for PSPointerAutohideReasonAccessibility because missing entitlement (%@)";
        break;
      case 4uLL:
        v26 = [v9 auditToken];
        v27 = [v26 hasEntitlement:@"com.apple.pointerui.autohidePointer"];

        if (v27)
        {
          v15 = @"locked";
          goto LABEL_21;
        }

        v18 = PSLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 138412290;
          v35 = @"com.apple.pointerui.autohidePointer";
          v19 = "Ignoring autohide pointer request for PSPointerAutohideReasonLocked because missing entitlement (%@)";
          break;
        }

        goto LABEL_37;
      case 5uLL:
        v16 = [v9 auditToken];
        v17 = [v16 hasEntitlement:@"com.apple.pointerui.autohidePointer"];

        if (v17)
        {
          v15 = @"systemComponent";
          goto LABEL_21;
        }

        v18 = PSLogCommon();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_37;
        }

        v34 = 138412290;
        v35 = @"com.apple.pointerui.autohidePointer";
        v19 = "Ignoring autohide pointer request for PSPointerAutohideReasonSystemComponentRequest because missing entitlement (%@)";
        break;
      default:
        goto LABEL_38;
    }

LABEL_35:
    v20 = v18;
    v21 = 12;
    goto LABEL_36;
  }

  if (!a4)
  {
    v18 = PSLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34) = 0;
      v19 = "Ignoring autohide pointer request for unknown reason";
      v20 = v18;
      v21 = 2;
LABEL_36:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, &v34, v21);
      goto LABEL_37;
    }

    goto LABEL_37;
  }

  if (a4 == 1)
  {
    v24 = [v9 auditToken];
    v25 = [v24 hasEntitlement:@"com.apple.pointerui.autohidePointer"];

    if (v25)
    {
      v15 = @"text input";
      goto LABEL_21;
    }

    v18 = PSLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 138412290;
      v35 = @"com.apple.pointerui.autohidePointer";
      v19 = "Ignoring autohide pointer request for PSPointerAutohideReasonTextInput because missing entitlement (%@)";
      goto LABEL_35;
    }

LABEL_37:

    goto LABEL_38;
  }

  if (a4 != 2)
  {
    goto LABEL_38;
  }

  v11 = [(NSArray *)self->_lastPointerHitTestContexts firstObject];
  if (v11)
  {
    v12 = [v10 auditToken];
    v13 = [v12 pid];
    v14 = [(__CFString *)v11 pid];

    if (v13 == v14)
    {

      v15 = @"client request";
LABEL_21:
      v28 = PSLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = PSPointerAutohideReasonToString();
        v34 = 138543362;
        v35 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Autohiding pointer from client request for reason: %{public}@", &v34, 0xCu);
      }

      [(PUIDPointerController *)self _hidePointerForReason:v15];
      goto LABEL_38;
    }
  }

  v30 = PSLogCommon();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [(__CFString *)v11 pid];
    v32 = [v10 auditToken];
    v33 = [v10 auditToken];
    v34 = 138544130;
    v35 = v11;
    v36 = 1024;
    v37 = v31;
    v38 = 2112;
    v39 = v32;
    v40 = 1024;
    v41 = [v33 pid];
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Ignoring autohide pointer request because clientContext (%{public}@) pid (%d) != auditToken (%@) pid (%d)", &v34, 0x22u);
  }

LABEL_38:
}

- (void)xpcClientContextController:(id)a3 setPointerPersistentlyHiddenForReasons:(id)a4 forClient:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:v8];
  if (!v9)
  {
    v9 = objc_alloc_init(_PUIDPointerControllerClientState);
    [(NSMapTable *)self->_pointerClientToClientStateMap setObject:v9 forKey:v8];
  }

  v10 = [v7 bs_map:&stru_100048F70];
  v11 = [v10 componentsJoinedByString:{@", "}];
  v12 = PSLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Pointer Persistent Hiding Reasons list updated to: [%{public}@]", &v13, 0x16u);
  }

  -[_PUIDPointerControllerClientState setAssertingPointerHidden:](v9, "setAssertingPointerHidden:", [v7 count] != 0);
  [(PUIDPointerController *)self _updatePointerHiddenByEntitledClients];
  [(PUIDPointerController *)self _updatePointerWithOptions:0 updateHandlerCollection:0];
}

- (void)xpcClientContextController:(id)a3 setPointerPersistentlyVisibleForReasons:(id)a4 forClient:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:v8];
  if (!v9)
  {
    v9 = objc_alloc_init(_PUIDPointerControllerClientState);
    [(NSMapTable *)self->_pointerClientToClientStateMap setObject:v9 forKey:v8];
  }

  v10 = [v7 bs_map:&stru_100048F90];
  v11 = [v10 componentsJoinedByString:{@", "}];
  v12 = PSLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Pointer Persistent Visible Reasons list updated to: [%{public}@]", &v13, 0x16u);
  }

  -[_PUIDPointerControllerClientState setAssertingPointerVisible:](v9, "setAssertingPointerVisible:", [v7 count] != 0);
  [(PUIDPointerController *)self _updatePointerVisibleByEntitledClients];
  [(PUIDPointerController *)self _updatePointerWithOptions:0 updateHandlerCollection:0];
}

- (id)systemPointerInteractionContextForDisplayContext:(id)a3
{
  v4 = sub_100027838(a3);
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_systemPointerInteractionContextByDisplay objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = PSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138543362;
      v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Not tracking any systemPointerInteractionContext for display: %{public}@", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (id)overridingHoverRegionClientsForDisplayContext:(id)a3
{
  v4 = sub_100027838(a3);
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_hoverRegionOverridingClientsByDisplay objectForKeyedSubscript:v4];
    v6 = [v5 copy];
  }

  else
  {
    v6 = +[NSArray array];
  }

  return v6;
}

- (void)_movePointerToDisplay:(id)a3
{
  v4 = a3;
  v5 = PSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Moving pointer to display: %{public}@", &v11, 0xCu);
  }

  if (v4)
  {
    v6 = [(NSMutableDictionary *)self->_displayContextsByDisplay objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  activeDisplayContext = self->_activeDisplayContext;
  self->_activeDisplayContext = v6;
  v8 = v6;
  v9 = activeDisplayContext;

  v10 = sub_100027868(v9);
  [v10 hidePointerAnimated:0];

  [(PUIDPointerController *)self _restartAutohideTimer];
  [(PUIDPointerController *)self _invalidateEffectSourcesPassingTest:&stru_100048FB0 displayContext:v9];
}

- (id)_displayContextForPointerEventContextID:(unsigned int)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMutableDictionary *)self->_displayContextsByDisplay allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (sub_100027724(v9) == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_displayContextForPointerRenderingContextID:(unsigned int)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(NSMutableDictionary *)self->_displayContextsByDisplay allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (sub_100027714(v9) == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_systemPointerClients
{
  v3 = +[NSMutableSet set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(NSMutableDictionary *)self->_displayContextsByDisplay allValues];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = sub_1000278B0(*(*(&v11 + 1) + 8 * i));
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_beginPeriodicClientTransformRefreshTimer
{
  objc_initWeak(&location, self);
  [(PUIDPointerSettings *)self->_settings periodicClientTransformRefreshInterval];
  v4 = v3;
  if (v3 > 0.00000011920929)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000CE88;
    v7[3] = &unk_100048DF0;
    objc_copyWeak(&v8, &location);
    v5 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v7 block:v4];
    periodicClientTransformRefreshTimer = self->_periodicClientTransformRefreshTimer;
    self->_periodicClientTransformRefreshTimer = v5;

    objc_destroyWeak(&v8);
  }

  objc_destroyWeak(&location);
}

- (void)_getTransformForHoverRegion:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 coordinateSpaceSourceContextID];
  v10 = [v8 coordinateSpaceSourceLayerRenderID];

  if (v9 && v10)
  {
    transformUpdateQueue = self->_transformUpdateQueue;
    if (!transformUpdateQueue)
    {
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = BSDispatchQueueCreateWithFixedPriority();
      v14 = self->_transformUpdateQueue;
      self->_transformUpdateQueue = v13;

      transformUpdateQueue = self->_transformUpdateQueue;
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000D040;
    v21[3] = &unk_100049000;
    v23 = a2;
    v21[4] = self;
    v22 = v7;
    [(PUIDPointerController *)self _transformForLayer:v10 inContext:v9 queue:transformUpdateQueue completion:v21];
  }

  else if (v7)
  {
    v15 = v7[2];
    v16 = *&CATransform3DIdentity.m33;
    v20[4] = *&CATransform3DIdentity.m31;
    v20[5] = v16;
    v17 = *&CATransform3DIdentity.m43;
    v20[6] = *&CATransform3DIdentity.m41;
    v20[7] = v17;
    v18 = *&CATransform3DIdentity.m13;
    v20[0] = *&CATransform3DIdentity.m11;
    v20[1] = v18;
    v19 = *&CATransform3DIdentity.m23;
    v20[2] = *&CATransform3DIdentity.m21;
    v20[3] = v19;
    v15(v7, v20);
  }
}

- (double)_decelerationRate
{
  globalDevicePreferences = self->_globalDevicePreferences;
  if (globalDevicePreferences)
  {
    [(BKSMousePointerDevicePreferences *)globalDevicePreferences pointerAccelerationFactor];
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = pow(v4, 4.0);
  return pow(v4, 3.0) * -0.0120353 + v5 * 0.00192151 + v4 * v4 * 0.0237803 + v4 * -0.025559 + 0.991966;
}

- (void)_updatePointerHiddenByEntitledClients
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(NSMapTable *)self->_pointerClientToClientStateMap objectEnumerator];
  v4 = [v3 allObjects];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [*(*(&v14 + 1) + 8 * v8) isAssertingPointerHidden];
      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v9;

    if (self->_pointerHiddenByEntitledClient == v12)
    {
      return;
    }

    self->_pointerHiddenByEntitledClient = v12;
    v10 = PSLogAutohide();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      v11 = "Forcing pointer hidden by request from entitled client";
      goto LABEL_15;
    }
  }

  else
  {
LABEL_9:

    if (!self->_pointerHiddenByEntitledClient)
    {
      return;
    }

    self->_pointerHiddenByEntitledClient = 0;
    v10 = PSLogAutohide();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      v11 = "No longer forcing pointer hidden by request from entitled client";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, v13, 2u);
    }
  }
}

- (void)_updatePointerVisibleByEntitledClients
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(NSMapTable *)self->_pointerClientToClientStateMap objectEnumerator];
  v4 = [v3 allObjects];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [*(*(&v14 + 1) + 8 * v8) isAssertingPointerVisible];
      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v9;

    if (self->_pointerForcedVisibleByEntitledClient == v12)
    {
      return;
    }

    self->_pointerForcedVisibleByEntitledClient = v12;
    v10 = PSLogAutohide();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      v11 = "Forcing pointer visible by request from entitled client";
      goto LABEL_15;
    }
  }

  else
  {
LABEL_9:

    if (!self->_pointerForcedVisibleByEntitledClient)
    {
      return;
    }

    self->_pointerForcedVisibleByEntitledClient = 0;
    v10 = PSLogAutohide();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      v11 = "No longer forcing pointer visible by request from entitled client";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, v13, 2u);
    }
  }
}

- (void)_handleAccessibilityPointerSizePreferencesDidChange
{
  if (self->_pointerIsAutohidden)
  {
    [(PUIDPointerController *)self _unhidePointerForReason:@"AX Preferences Change"];

    [(PUIDPointerController *)self _restartAutohideTimer];
  }
}

- (void)_handlePeriodicRefreshTimerAction
{
  [(NSTimer *)self->_periodicClientTransformRefreshTimer invalidate];
  periodicClientTransformRefreshTimer = self->_periodicClientTransformRefreshTimer;
  self->_periodicClientTransformRefreshTimer = 0;

  if (!self->_isPerformingPeriodicClientTransformRefresh && self->_shouldPeriodicallyRefreshClientTransform && self->_lastPointerEvent)
  {
    self->_isPerformingPeriodicClientTransformRefresh = 1;

    [(PUIDPointerController *)self _refreshClientTransformWithReason:0];
  }
}

- (void)_refreshClientTransformWithReason:(unint64_t)a3
{
  v5 = self->_previousPointerClient;
  v6 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:v5];
  v7 = [v6 activeHoverRegion];
  objc_initWeak(&location, self);
  v8 = [v6 hoverRegionGenerationID];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000D7B0;
  v10[3] = &unk_100049028;
  objc_copyWeak(v12, &location);
  v12[1] = a3;
  v9 = v6;
  v11 = v9;
  v12[2] = v8;
  [(PUIDPointerController *)self _getTransformForHoverRegion:v7 completion:v10];

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

- (void)_invalidateHoverRegionsForAllPointerClientsExcludingPointerClient:(id)a3 hoverRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUIDPointerController *)self _systemPointerClients];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(NSMapTable *)self->_pointerClientToClientStateMap keyEnumerator];
  v10 = [v9 allObjects];

  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        if (v15 != v6 && ([v8 containsObject:*(*(&v18 + 1) + 8 * v14)] & 1) == 0)
        {
          v16 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:v15];
          v17 = [v16 activeHoverRegion];

          if (v17 != v7)
          {
            [v16 setActiveHoverRegion:0];
          }
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }
}

- (void)_invalidateEffectSourcesPassingTest:(id)a3 displayContext:(id)a4
{
  v29 = a3;
  v5 = a4;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_10000DF18;
  v47 = sub_10000DF28;
  v48 = +[NSMapTable strongToStrongObjectsMapTable];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_10000DF18;
  v41 = sub_10000DF28;
  v42 = +[NSMapTable strongToStrongObjectsMapTable];
  v6 = sub_100027868(v5);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10000DF30;
  v36[3] = &unk_100049050;
  v36[4] = &v43;
  [v6 invalidatePointerPortalSourceCollectionsPassingTest:v29 additionalInvalidation:v36];

  v7 = sub_100027868(v5);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10000DFE8;
  v35[3] = &unk_100049078;
  v35[4] = &v37;
  [v7 invalidateContentMatchMoveSourcesPassingTest:v29 additionalInvalidation:v35];

  v8 = [v44[5] keyEnumerator];
  v9 = [v8 allObjects];
  v10 = [NSMutableSet setWithArray:v9];

  v11 = [v38[5] keyEnumerator];
  v12 = [v11 allObjects];
  [v10 addObjectsFromArray:v12];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v31 objects:v55 count:16];
  if (v14)
  {
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        v18 = sub_1000278B0(v5);
        v19 = v17 == v18;

        if (!v19)
        {
          v20 = [v44[5] objectForKey:v17];
          v21 = v20;
          if (v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = +[NSSet set];
          }

          v23 = v22;

          v24 = [v38[5] objectForKey:v17];
          v25 = v24;
          if (v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = +[NSSet set];
          }

          v27 = v26;

          v28 = PSLogCommon();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v50 = v17;
            v51 = 2112;
            v52 = v23;
            v53 = 2112;
            v54 = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ - Notifying client portalSourceCollections were invalidated: %@ matchMoveSources were invalidated: %@", buf, 0x20u);
          }

          [(PUIDXPCClientController *)self->_xpcClientContextController invalidatedPortalSourceCollections:v23 matchMoveSources:v27 forClient:v17];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v31 objects:v55 count:16];
    }

    while (v14);
  }

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);
}

- (id)_recenteringContextRelativePointerPositionForPointerClient:(id)a3
{
  v4 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:a3];
  v5 = [v4 activeHoverRegion];
  v6 = [v5 pointerRecenteringAxes];
  if (v5)
  {
    v7 = (v6 & 3) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_6;
  }

  v9 = v6;
  [v5 contentBounds];
  v10 = 0uLL;
  if (v4)
  {
    [v4 transformFromClientContextToDisplay];
    v10 = 0uLL;
  }

  memset(&a, 0, sizeof(a));
  *&b.m41 = v10;
  *&b.m43 = v10;
  *&b.m31 = v10;
  *&b.m33 = v10;
  *&b.m21 = v10;
  *&b.m23 = v10;
  *&b.m11 = v10;
  *&b.m13 = v10;
  if (CATransform3DEqualToTransform(&a, &b))
  {
    sub_100027470();
  }

  memset(&v24, 0, sizeof(v24));
  v11 = sub_100027868(self->_activeDisplayContext);
  v12 = v11;
  if (v11)
  {
    memset(&a, 0, sizeof(a));
    [v11 transformToLocalWindowForCoordinateSpaceTransformToDisplay:&a];
  }

  else
  {
    memset(&v24, 0, sizeof(v24));
  }

  a = v24;
  memset(&b, 0, sizeof(b));
  if (CATransform3DEqualToTransform(&a, &b))
  {
    sub_1000274FC();
  }

  CATransform3DGetDecomposition_();
  a = v24;
  CA_CGRectApplyTransform();
  UIRectGetCenter();
  v14 = v13;
  v16 = v15;
  [(PUIDPointerController *)self _pointerPositionFromPointerEvent:self->_lastPointerEvent];
  v18 = v17;
  v20 = v19;
  v21 = sub_100019EA0();
  v22 = __rbit32(v9) >> 30;
  if (!v21)
  {
    LOBYTE(v22) = v9;
  }

  if ((v22 & 1) == 0)
  {
    v14 = v18;
  }

  if ((v22 & 2) == 0)
  {
    v16 = v20;
  }

  if (BSFloatApproximatelyEqualToFloat() && (BSFloatApproximatelyEqualToFloat() & 1) != 0)
  {
LABEL_6:
    v8 = 0;
  }

  else
  {
    v8 = [[BKSContextRelativePoint alloc] initWithPoint:sub_100027714(&self->_activeDisplayContext->super.isa) contextID:{v14, v16}];
  }

  return v8;
}

- (void)_setShouldPeriodicallyRefreshClientTransform:(BOOL)a3
{
  if (self->_shouldPeriodicallyRefreshClientTransform != a3)
  {
    self->_shouldPeriodicallyRefreshClientTransform = a3;
    periodicClientTransformRefreshTimer = self->_periodicClientTransformRefreshTimer;
    if (a3)
    {
      if (!periodicClientTransformRefreshTimer && !self->_isPerformingPeriodicClientTransformRefresh)
      {

        [(PUIDPointerController *)self _beginPeriodicClientTransformRefreshTimer];
      }
    }

    else
    {
      [(NSTimer *)periodicClientTransformRefreshTimer invalidate];
      v5 = self->_periodicClientTransformRefreshTimer;
      self->_periodicClientTransformRefreshTimer = 0;
    }
  }
}

- (CGPoint)_transformVelocity:(CGPoint)a3 intoCoordinateSpaceForPointerClient:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:a4];
  v8 = v7;
  v9 = 0uLL;
  if (v7)
  {
    [v7 transformFromClientContextToDisplay];
    v9 = 0uLL;
  }

  v21 = v9;
  v22 = v9;
  v19 = v9;
  v20 = v9;
  v17 = v9;
  v18 = v9;
  v15 = v9;
  v16 = v9;
  v10 = sub_100027868(self->_activeDisplayContext);
  v11 = v10;
  if (v10)
  {
    memset(v23, 0, sizeof(v23));
    [v10 transformToLocalWindowForCoordinateSpaceTransformToDisplay:{v23, v15, v16, v17, v18, v19, v20, v21, v22}];
  }

  CATransform3DGetDecomposition_();
  if (BSFloatEqualToFloat())
  {
    v12 = -x;
  }

  else if ((BSFloatEqualToFloat() & 1) != 0 || BSFloatEqualToFloat())
  {
    v12 = -y;
    y = -x;
  }

  else if ((BSFloatEqualToFloat() & 1) != 0 || BSFloatEqualToFloat())
  {
    y = -y;
    v12 = x;
  }

  else
  {
    v12 = y;
    y = x;
  }

  v13 = y;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)_updatePointerWithOptions:(unint64_t)a3 updateHandlerCollection:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!self->_lastPointerEvent)
  {
    [(PUIDPointerStateUpdateHandlerCollection *)v6 performAllHandlersWithFinished:1 retargeted:0];
    goto LABEL_189;
  }

  v155 = a3;
  v160 = v6;
  v8 = [(BKSHIDEventPointerAttributes *)self->_lastPointerEventPointerAttributes token];
  v9 = [v8 _identifierOfCAContext];

  v158 = [(PUIDPointerController *)self _displayContextForPointerEventContextID:v9];
  if (!v158)
  {
    v26 = PSLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.m11) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Not updating pointer - the display context for the last pointer event no longer exists", &buf, 2u);
    }

    goto LABEL_19;
  }

  activeDisplayContext = self->_activeDisplayContext;
  if (!activeDisplayContext)
  {
    v26 = PSLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.m11) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Not updating pointer - the active display is nil", &buf, 2u);
    }

LABEL_19:

    [(PUIDPointerStateUpdateHandlerCollection *)v160 performAllHandlersWithFinished:1 retargeted:0];
    goto LABEL_188;
  }

  v161 = sub_100027730(&activeDisplayContext->super.isa);
  v151 = sub_1000277B8(&self->_activeDisplayContext->super.isa);
  [(PUIDPointerController *)self _pointerPositionFromPointerEvent:self->_lastPointerEvent];
  v13 = v12;
  v15 = v14;
  if (v161)
  {
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v16 = [(NSMapTable *)self->_pointerClientToClientStateMap keyEnumerator];
    v17 = [v16 allObjects];

    v18 = [v17 countByEnumeratingWithState:&v176 objects:v183 count:16];
    if (v18)
    {
      v19 = *v177;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v177 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v176 + 1) + 8 * i);
          v22 = [v21 pid];
          if (v22 == [v161 pid])
          {
            v23 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:v21];
            v24 = [v23 activeHoverRegion];
            v25 = v24 == 0;

            if (!v25)
            {
              v27 = v21;

              v11 = v27;
              if (v27)
              {
                goto LABEL_46;
              }

              goto LABEL_24;
            }
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v176 objects:v183 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_24:
  if ([v151 count])
  {
    v28 = [v151 firstObject];
    v29 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:v28];
    v30 = [v29 activeHoverRegion];
    v31 = v30 == 0;

    if (v31)
    {
    }

    else
    {
      v32 = v28;

      v11 = v32;
      if (v32)
      {
        goto LABEL_46;
      }
    }
  }

  if (![(NSArray *)self->_lastPointerHitTestContexts count])
  {
    goto LABEL_56;
  }

  v33 = [(NSArray *)self->_lastPointerHitTestContexts firstObject];
  v34 = [v33 contextID];

  v35 = [(NSArray *)self->_lastPointerHitTestContexts firstObject];
  v36 = [v35 pid];

  if (!v34 || v36 == -1)
  {
    goto LABEL_56;
  }

  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v37 = [(NSMapTable *)self->_pointerClientToClientStateMap keyEnumerator];
  v38 = [v37 allObjects];

  v39 = [v38 countByEnumeratingWithState:&v172 objects:v182 count:16];
  if (!v39)
  {
    goto LABEL_54;
  }

  v40 = *v173;
LABEL_34:
  v41 = 0;
  while (1)
  {
    if (*v173 != v40)
    {
      objc_enumerationMutation(v38);
    }

    v42 = *(*(&v172 + 1) + 8 * v41);
    v43 = sub_1000278B0(self->_activeDisplayContext);
    v44 = v42 == v43;

    if (v44 || [v42 pid] != v36)
    {
      goto LABEL_42;
    }

    v45 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:v42];
    v46 = [v45 activeHoverRegion];
    v47 = v46;
    if (v46)
    {
      if ([v46 coordinateSpaceSourceContextID] == v34)
      {
        break;
      }
    }

LABEL_42:
    if (v39 == ++v41)
    {
      v39 = [v38 countByEnumeratingWithState:&v172 objects:v182 count:16];
      if (v39)
      {
        goto LABEL_34;
      }

      goto LABEL_54;
    }
  }

  v48 = v42;

  v11 = v48;
  if (!v48)
  {
    goto LABEL_56;
  }

LABEL_46:
  v49 = v11;
  v38 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:?];
  v50 = [v38 activeHoverRegion];
  if ((![(PUIDPointerSettings *)self->_settings isUnderlappingContentAllowed]|| ![(PUIDPointerController *)self _underlappingContentAllowedForPointerAttributes:self->_lastPointerEventPointerAttributes]) && [(PSPointerHoverRegion *)v50 shouldPointerUnderlayContent])
  {

    v49 = 0;
  }

  if (!self->_hasPointerVelocityCrossedHighThreshold || self->_highVelocityAllowedPointerClient == v49 && self->_highVelocityAllowedHoverRegion == v50)
  {

    v51 = v49;
    if (!v49)
    {
      goto LABEL_56;
    }
  }

  else
  {
    [v38 setActiveHoverRegion:0];

LABEL_54:
LABEL_56:
    v52 = sub_1000278B0(self->_activeDisplayContext);
    highVelocityAllowedPointerClient = self->_highVelocityAllowedPointerClient;
    self->_highVelocityAllowedPointerClient = 0;

    highVelocityAllowedHoverRegion = self->_highVelocityAllowedHoverRegion;
    self->_highVelocityAllowedHoverRegion = 0;

    v51 = v52;
  }

  previousPointerClient = self->_previousPointerClient;
  if (previousPointerClient != v51 && previousPointerClient)
  {
    v56 = v51;
    v57 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:?];
    [v57 invalidateAutomaticRegionExitTimer];

    v51 = v56;
  }

  obj = v51;
  v159 = [(NSMapTable *)self->_pointerClientToClientStateMap objectForKey:v51];
  v58 = [v159 activeHoverRegion];
  pointerClientToClientStateMap = self->_pointerClientToClientStateMap;
  v60 = sub_1000278B0(self->_activeDisplayContext);
  v61 = [(NSMapTable *)pointerClientToClientStateMap objectForKey:v60];
  v153 = [v61 activeHoverRegion];

  v62 = sub_1000278B0(self->_activeDisplayContext);
  LOBYTE(v60) = obj == v62;

  if (v60)
  {
    v68 = 1;
  }

  else if (v58)
  {
    [v58 hitTestBounds];
    x = v185.origin.x;
    y = v185.origin.y;
    width = v185.size.width;
    height = v185.size.height;
    if (CGRectIsEmpty(v185) || (v186.origin.x = x, v186.origin.y = y, v186.size.width = width, v186.size.height = height, CGRectIsNull(v186)))
    {
      [v58 contentBounds];
    }

    memset(&buf, 0, sizeof(buf));
    v67 = sub_100027868(self->_activeDisplayContext);
    if (v159)
    {
      [v159 transformFromClientContextToDisplay];
      if (v67)
      {
        goto LABEL_67;
      }

LABEL_71:
      memset(&buf, 0, sizeof(buf));
    }

    else
    {
      memset(v171, 0, sizeof(v171));
      if (!v67)
      {
        goto LABEL_71;
      }

LABEL_67:
      [v67 transformToLocalWindowForCoordinateSpaceTransformToDisplay:v171];
    }

    b = buf;
    CA_CGRectApplyTransform();
    v184.x = v13;
    v184.y = v15;
    if (CGRectContainsPoint(v187, v184))
    {
      v68 = 1;
    }

    else
    {
      v68 = 2;
    }
  }

  else
  {
    v68 = 0;
  }

  v69 = [v159 previousPointerEventActiveHoverRegionHitTestState];
  [v159 setPreviousPointerEventActiveHoverRegionHitTestState:v68];
  if (v68 == 2 && v69 == 1)
  {
    objc_initWeak(&buf, self);
    [(PUIDPointerSettings *)self->_settings automaticRegionExitDelayInterval];
    v71 = v70;
    v169[0] = _NSConcreteStackBlock;
    v169[1] = 3221225472;
    v169[2] = sub_10000F968;
    v169[3] = &unk_1000490A0;
    objc_copyWeak(&v170, &buf);
    [v159 startAutomaticRegionExitTimerWithDelayInterval:v169 fireHandler:v71];
    objc_destroyWeak(&v170);
    objc_destroyWeak(&buf);
  }

  else if (v69 != 2)
  {
    [v159 invalidateAutomaticRegionExitTimer];
  }

  if (self->_pointerIsAutohidden)
  {
    v150 = 0;
    v72 = !self->_pointerForcedVisibleByEntitledClient;
  }

  else
  {
    v72 = self->_pointerHiddenByEntitledClient && !self->_pointerForcedVisibleByEntitledClient;
    v73 = 1;
    if (self->_hasPointerVelocityCrossedHighThreshold)
    {
      v73 = 2;
    }

    v150 = v73;
  }

  v74 = objc_alloc_init(PUIDMutablePointerState);
  [(PUIDMutablePointerState *)v74 setModelPointerReferencePosition:v13, v15];
  [v58 contentBounds];
  [(PUIDMutablePointerState *)v74 setContentBounds:?];
  [v58 contentHoverInverseScale];
  [(PUIDMutablePointerState *)v74 setContentHoverInverseScale:?];
  v152 = [v58 pointerPortalSourceCollection];
  v75 = [v58 shouldPointerUnderlayContent];
  if (v152)
  {
    v76 = v75;
  }

  else
  {
    v76 = 0;
  }

  if (v76 == 1 && (sub_100027868(self->_activeDisplayContext), v77 = objc_claimAutoreleasedReturnValue(), v78 = [v77 isValidPointerPortalSourceCollection:v152 forClient:obj], v77, v78))
  {
    v79 = [v58 pointerPortalSourceCollection];
    [(PUIDMutablePointerState *)v74 setPointerPortalSourceCollection:v79];

    v80 = [v58 contentMatchMoveSource];
    [(PUIDMutablePointerState *)v74 setContentMatchMoveSource:v80];

    v81 = 1;
    self->_focusedOnItem = 1;
  }

  else
  {
    v82 = [v153 pointerPortalSourceCollection];
    [(PUIDMutablePointerState *)v74 setPointerPortalSourceCollection:v82];

    v83 = [v153 contentMatchMoveSource];
    [(PUIDMutablePointerState *)v74 setContentMatchMoveSource:v83];

    self->_focusedOnItem = 0;
    if ([(PUIDPointerState *)self->_previousPointerState isPointerUnderlayingContent])
    {
      [(PUIDPointerState *)self->_previousPointerState pointerVisualIntensity];
      if (BSFloatIsZero())
      {
        if (!self->_deferMaterialChanges)
        {
          self->_deferMaterialChanges = 1;
          v84 = PSLogMaterial();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            sub_1000275A8(v84);
          }

          v85 = [(PUIDPointerStateUpdateHandlerCollection *)v160 shapeTransitionCompletion];
          if (!v160)
          {
            v160 = objc_alloc_init(PUIDPointerStateUpdateHandlerCollection);
          }

          v167[0] = _NSConcreteStackBlock;
          v167[1] = 3221225472;
          v167[2] = sub_10000F9F0;
          v167[3] = &unk_100048AA0;
          v167[4] = self;
          v86 = v85;
          v168 = v86;
          v87 = objc_retainBlock(v167);
          [(PUIDPointerStateUpdateHandlerCollection *)v160 setShapeTransitionCompletion:v87];
        }
      }
    }

    v81 = 0;
  }

  memset(&v166[2], 0, 128);
  if (v159)
  {
    [v159 transformFromClientContextToDisplay];
  }

  buf = *&v166[2];
  memset(&b, 0, sizeof(b));
  if (CATransform3DEqualToTransform(&buf, &b))
  {
    sub_1000275EC();
  }

  buf = *&v166[2];
  [(PUIDMutablePointerState *)v74 setClientCoordinateSpaceTransformToDisplay:&buf];
  [(PUIDMutablePointerState *)v74 setPointerAutoHidden:v72];
  if (self->_deferMaterialChanges || ([v58 pointerVisualIntensity], BSFloatIsZero()))
  {
    v88 = [(PUIDPointerState *)self->_previousPointerState pointerMaterialLuminance];
    v89 = 1;
  }

  else
  {
    v88 = [v58 preferredPointerMaterialLuminance];
    if (v88)
    {
      v90 = v81;
    }

    else
    {
      v90 = 0;
    }

    if ((v90 & 1) == 0)
    {
      v88 = [v153 preferredPointerMaterialLuminance];
    }

    v89 = v90 ^ 1;
  }

  v149 = v89;
  [(PUIDMutablePointerState *)v74 setPointerMaterialLuminance:v88];
  if ([(PUIDPointerSettings *)self->_settings isPointerSlipEnabled])
  {
    v154 = [v58 pointerSlipValue];
  }

  else
  {
    v154 = 0;
  }

  v91 = [v58 contentSlipValue];
  if (self->_latchingState && [v58 isLatching])
  {
    v92 = [v58 pointerLatchingAxes];
    [v154 CGPointValue];
    v94 = v93;
    v96 = v95;
    [v91 CGPointValue];
    if ((v92 & 2) != 0)
    {
      v99 = 1.0;
    }

    else
    {
      v99 = v96;
    }

    if ((v92 & 2) != 0)
    {
      v100 = 0.0;
    }

    else
    {
      v100 = v98;
    }

    if (v92)
    {
      v101 = 1.0;
    }

    else
    {
      v101 = v94;
    }

    if (v92)
    {
      v102 = 0.0;
    }

    else
    {
      v102 = v97;
    }

    *v166 = v101;
    *&v166[1] = v99;
    v103 = [NSValue valueWithBytes:v166 objCType:"{CGPoint=dd}"];

    *v165 = v102;
    *&v165[1] = v100;
    v104 = [NSValue valueWithBytes:v165 objCType:"{CGPoint=dd}"];

    v154 = v103;
    v91 = v104;
  }

  v105 = [v58 pointerShape];
  [(PUIDMutablePointerState *)v74 setPointerShape:v105];

  [(PUIDMutablePointerState *)v74 setShakeToFindPointerSizeMultiplier:self->_shakeToFindPointerSizeMultiplier];
  [(PUIDMutablePointerState *)v74 setPointerSlipValue:v154];
  [v58 pointerVisualIntensity];
  [(PUIDMutablePointerState *)v74 setPointerVisualIntensity:?];
  if (v72)
  {
    v106 = 0;
  }

  else
  {
    v106 = [v58 overlayEffectStyle];
  }

  [(PUIDMutablePointerState *)v74 setOverlayEffectStyle:v106];
  [(PUIDMutablePointerState *)v74 setContentSlipValue:v91];
  [(PUIDMutablePointerState *)v74 setPointerUnderlayingContent:v81];
  -[PUIDMutablePointerState setSuppressPointerMirroring:](v74, "setSuppressPointerMirroring:", [v58 shouldPointerSuppressMirroring]);
  v107 = [v58 accessories];
  [(PUIDMutablePointerState *)v74 setAccessories:v107];

  v108 = sub_1000278B0(self->_activeDisplayContext);
  LOBYTE(v107) = obj == v108;

  if (v107)
  {
    v111 = @"System Pointer Client";
  }

  else
  {
    v109 = [(PUIDPointerClient *)obj auditToken];
    v110 = [v109 bundleID];

    v111 = v110;
  }

  [(PUIDMutablePointerState *)v74 setDebugRequestingClientString:v111];
  if (self->_lastPointerEvent)
  {
    v112 = IOHIDEventGetIntegerValue() != 0;
  }

  else
  {
    v112 = 0;
  }

  if (!self->_pointerPressedStateIsLockedOut || v112)
  {
    [(PUIDMutablePointerState *)v74 setPressed:v112];
    if (v112 != [(PUIDPointerState *)self->_previousPointerState isPressed])
    {
      pointerUnpressedStateIsLockedOut = self->_pointerUnpressedStateIsLockedOut;
      self->_pointerPressedStateIsLockedOut = 1;
      [(NSTimer *)pointerUnpressedStateIsLockedOut invalidate];
      v114 = self->_pointerUnpressedStateIsLockedOut;
      self->_pointerUnpressedStateIsLockedOut = 0;

      objc_initWeak(&buf, self);
      [(PUIDPointerSettings *)self->_settings tapToClickButtonDownTime];
      v116 = v115;
      v163[0] = _NSConcreteStackBlock;
      v163[1] = 3221225472;
      v163[2] = sub_10000FA7C;
      v163[3] = &unk_100048DF0;
      objc_copyWeak(&v164, &buf);
      v117 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v163 block:v116];
      v118 = self->_pointerUnpressedStateIsLockedOut;
      self->_pointerUnpressedStateIsLockedOut = v117;

      objc_destroyWeak(&v164);
      objc_destroyWeak(&buf);
    }
  }

  else
  {
    [(PUIDMutablePointerState *)v74 setPressed:[(PUIDPointerState *)self->_previousPointerState isPressed]];
  }

  previousPointerState = self->_previousPointerState;
  hasSetupPointerState = self->_hasSetupPointerState;
  self->_hasSetupPointerState = 1;
  if (previousPointerState)
  {
    v121 = [(PUIDPointerState *)previousPointerState pointerMaterialLuminance];
    if (v121 == 2)
    {
      v122 = 2;
    }

    else
    {
      v122 = v121 == 1;
    }
  }

  else
  {
    v122 = 0;
  }

  v123 = sub_100027880(self->_activeDisplayContext);
  [v123 setSamplingLuma:v149 seedingWithLumaLevel:v122];

  [(PUIDXPCClientController *)self->_xpcClientContextController setClientInteractionState:v150];
  objc_storeStrong(&self->_previousPointerState, v74);
  objc_storeStrong(&self->_previousPointerClient, obj);
  if (v72 | ![(PUIDPointerSettings *)self->_settings shouldPeriodicallyRefreshClientTransform])
  {
    v124 = 0;
  }

  else
  {
    v125 = [(PUIDPointerController *)self _systemPointerClients];
    v126 = [v125 containsObject:self->_previousPointerClient];

    v124 = v126 ^ 1;
  }

  [(PUIDPointerController *)self _setShouldPeriodicallyRefreshClientTransform:v124];
  if ((v155 & 2) == 0 && hasSetupPointerState)
  {
    v127 = 3;
  }

  else
  {
    v127 = 0;
  }

  v128 = sub_100027868(self->_activeDisplayContext);
  v162 = 0;
  v129 = [v128 setPointerState:v74 options:(2 * v155) & 8 | (4 * (v155 & 1)) | v127 updateHandlerCollection:v160 error:&v162];
  v156 = v162;

  if ((v129 & 1) == 0)
  {
    v130 = [v156 domain];
    if ([v130 isEqual:@"PUIDPointerRenderingRootViewControllerErrorDomain"])
    {
      v131 = [v156 code] == -1002;

      if (v131)
      {
        v132 = PSLogCommon();
        if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.m11) = 0;
          _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "Refreshing client transform in case it was invalid", &buf, 2u);
        }

        [(PUIDPointerController *)self _refreshClientTransformWithReason:2];
      }
    }

    else
    {
    }
  }

  if (v81 && [(PUIDPointerSettings *)self->_settings shouldRecenterOnButtonDown])
  {
    v133 = [(PUIDPointerController *)self _recenteringContextRelativePointerPositionForPointerClient:obj];
    if (v133)
    {
      LODWORD(v134) = [(PUIDPointerClient *)obj pid];
      if (v134 == [v161 pid])
      {
        v134 = 0xFFFFFFFFLL;
      }

      else
      {
        v134 = v134;
      }

      v135 = [PUIDPointerRecenteringContext alloc];
      v136 = sub_100027838(&self->_activeDisplayContext->super.isa);
      v137 = [v136 hardwareIdentifier];
      v138 = [(PUIDPointerRecenteringContext *)v135 initWithContextRelativePointerPosition:v133 displayUUID:v137 restrictingToPID:v134];
    }

    else
    {
      v138 = 0;
    }
  }

  else
  {
    v138 = 0;
  }

  if (self->_isButtonPressDownTransition)
  {
    v139 = PSLogCommon();
    if (os_log_type_enabled(v139, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.m11) = 0;
      _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_INFO, "Resetting pointer velocity on button press", &buf, 2u);
    }

    [(PUIDPointerController *)self _resetPointerVelocity];
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    [(BSInvalidatable *)self->_buttonDownRepositionAssertion invalidate];
    buttonDownRepositionAssertion = self->_buttonDownRepositionAssertion;
    self->_buttonDownRepositionAssertion = 0;

    if (v138)
    {
      v141 = [(PUIDPointerRecenteringContext *)v138 restrictingToPID];
      if (v141 == [v161 pid])
      {
        v142 = 0xFFFFFFFFLL;
      }

      else
      {
        v142 = v141;
      }

      v143 = +[BKSMousePointerService sharedInstance];
      v144 = [(PUIDPointerRecenteringContext *)v138 contextRelativePointerPosition];
      v145 = [(PUIDPointerRecenteringContext *)v138 displayUUID];
      v146 = [v143 acquireButtonDownPointerRepositionAssertionForReason:@"com.apple.pointeruid.PUIDPointerController" contextRelativePointerPosition:v144 onDisplay:v145 restrictingToPID:v142];
      v147 = self->_buttonDownRepositionAssertion;
      self->_buttonDownRepositionAssertion = v146;
    }

    objc_storeStrong(&self->_buttonDownRepositionAssertionContext, v138);
  }

LABEL_188:
  v7 = v160;
LABEL_189:
}

- (void)_updateServiceKeepAlive
{
  v3 = [(NSMapTable *)self->_pointerClientToWantsServiceKeepAliveMap count];
  transaction = self->_transaction;
  if (v3)
  {
    if (!transaction)
    {
      v5 = os_transaction_create();
      v6 = self->_transaction;
      self->_transaction = v5;

      v7 = PSLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asserting pointeruid active.", v9, 2u);
      }
    }
  }

  else if (transaction)
  {
    [(PUIDPointerController *)self _hidePointerForReason:@"no service keep-alives"];
    v8 = self->_transaction;
    self->_transaction = 0;
  }
}

- (void)_transformForLayer:(unint64_t)a3 inContext:(unsigned int)a4 queue:(id)a5 completion:(id)a6
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000FCB8;
  block[3] = &unk_1000490C8;
  v12 = a4;
  v10 = a6;
  v11 = a3;
  v8 = v10;
  dispatch_async(a5, block);
}

- (CGPoint)_pointerPositionFromPointerEvent:(__IOHIDEvent *)a3
{
  IOHIDEventGetFloatMultiple();
  v3 = v5;
  v4 = v6;
  result.y = v4;
  result.x = v3;
  return result;
}

@end