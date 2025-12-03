@interface BKMousePointerServiceServer
- (BOOL)_accessStateForReason:(id)reason entitlement:(id)entitlement logEntitlementOnFailure:(BOOL)failure usingBlock:(id)block;
- (id)_pointerDevicesFromIOHIDServices:(id)services;
- (id)globalDevicePreferences;
- (id)globalPointerPosition;
- (id)normalizedGlobalPointerPosition;
- (id)preferencesForDevice:(id)device;
- (id)setMousePointerDeviceObservationEnabled:(id)enabled;
- (void)_assertModelUpdatesSuppressed:(BOOL)suppressed displayUUID:(id)d clientDisplayInfo:(id)info;
- (void)_queue_removeConnection:(id)connection;
- (void)acquireButtonDownPointerRepositionAssertionWithUniqueIdentifier:(id)identifier forReason:(id)reason contextRelativePointerPosition:(id)position onDisplay:(id)display restrictingToPID:(id)d;
- (void)activateWithMousePointerController:(id)controller;
- (void)applyAssertionParametersOnDisplay:(id)display withOptionsMask:(id)mask;
- (void)connectionDidTerminate:(id)terminate;
- (void)connectionWillBegin:(id)begin;
- (void)dealloc;
- (void)getHitTestContextsAtPoint:(id)point withAdditionalContexts:(id)contexts onDisplay:(id)display withCompletion:(id)completion;
- (void)invalidateButtonDownPointerRepositionAssertionWithUniqueIdentifier:(id)identifier onDisplay:(id)display;
- (void)mousePointerGlobalDevicePreferencesDidChange:(id)change;
- (void)pointingDevicesDidChange:(id)change;
- (void)setContextRelativePointerPosition:(id)position onDisplay:(id)display withAnimationParameters:(id)parameters restrictingToPID:(id)d;
- (void)setContextRelativePointerPosition:(id)position withInitialVelocity:(id)velocity onDisplay:(id)display withDecelerationRate:(id)rate restrictingToPID:(id)d;
- (void)setGlobalDevicePreferences:(id)preferences;
- (void)setGlobalPointerEventRoutes:(id)routes forDisplay:(id)display;
- (void)setGlobalPointerPosition:(id)position;
- (void)setMousePointerPreferenceObservationEnabled:(id)enabled;
- (void)setPointerPosition:(id)position onDisplay:(id)display withAnimationParameters:(id)parameters;
- (void)setPreferences:(id)preferences forDevice:(id)device;
- (void)setSuppressAllEvents:(id)events;
@end

@implementation BKMousePointerServiceServer

- (BOOL)_accessStateForReason:(id)reason entitlement:(id)entitlement logEntitlementOnFailure:(BOOL)failure usingBlock:(id)block
{
  failureCopy = failure;
  reasonCopy = reason;
  entitlementCopy = entitlement;
  blockCopy = block;
  v13 = +[BSServiceConnection currentContext];
  v14 = [(BKHIDDomainServiceServer *)self->_server userInfoForConnection:v13];
  v15 = objc_opt_class();
  v16 = v14;
  if (v15)
  {
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = [v18 hasEntitlement:entitlementCopy];
  if (!v19)
  {
    v20 = BKLogMousePointer();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (failureCopy)
    {
      if (v21)
      {
        remoteProcess = [v13 remoteProcess];
        v27 = 138543874;
        v28 = remoteProcess;
        v29 = 2114;
        v30 = reasonCopy;
        v31 = 2114;
        v32 = entitlementCopy;
        v23 = "process %{public}@ attempted to %{public}@ but does not have the %{public}@ entitlement";
        v24 = v20;
        v25 = 32;
LABEL_15:
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v23, &v27, v25);
      }
    }

    else if (v21)
    {
      remoteProcess = [v13 remoteProcess];
      v27 = 138543618;
      v28 = remoteProcess;
      v29 = 2114;
      v30 = reasonCopy;
      v23 = "process %{public}@ attempted to %{public}@ but is not allowed";
      v24 = v20;
      v25 = 22;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  blockCopy[2](blockCopy, self->_mousePointerController, v18, v13);
LABEL_13:

  return v19;
}

- (void)_assertModelUpdatesSuppressed:(BOOL)suppressed displayUUID:(id)d clientDisplayInfo:(id)info
{
  suppressedCopy = suppressed;
  dCopy = d;
  infoCopy = info;
  v10 = +[BSServiceConnection currentContext];
  remoteProcess = [v10 remoteProcess];
  v12 = [remoteProcess pid];

  modelUpdateAssertion = [infoCopy modelUpdateAssertion];
  v14 = modelUpdateAssertion;
  if (suppressedCopy || !modelUpdateAssertion)
  {
    v16 = BKLogMousePointer();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (!suppressedCopy || v14)
    {
      if (v17)
      {
        *buf = 67109634;
        v22 = suppressedCopy;
        v23 = 1024;
        *v24 = v12;
        *&v24[4] = 2114;
        *&v24[6] = dCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Assert model updates suppression change no-op (%{BOOL}u}) by pid:%d for displayUUID: %{public}@", buf, 0x18u);
      }
    }

    else
    {
      if (v17)
      {
        *buf = 67109378;
        v22 = v12;
        v23 = 2114;
        *v24 = dCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Assert model updates suppressed by pid:%d for displayUUID: %{public}@", buf, 0x12u);
      }

      mousePointerController = self->_mousePointerController;
      v19 = [NSString stringWithFormat:@"pid %d", v12];
      v20 = [(BKMousePointerController *)mousePointerController suppressPointerModelUpdatesAssertionForDisplay:dCopy reason:v19];

      [infoCopy setModelUpdateAssertion:v20];
    }
  }

  else
  {
    v15 = BKLogMousePointer();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v22 = v12;
      v23 = 2114;
      *v24 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Assert model updates no longer suppressed by pid:%d for displayUUID: %{public}@", buf, 0x12u);
    }

    [v14 invalidate];
    [infoCopy setModelUpdateAssertion:0];
  }
}

- (void)_queue_removeConnection:(id)connection
{
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_queue);
  v5 = BKLogMousePointer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connection: Remove: %{public}@", &v15, 0xCu);
  }

  v6 = +[BSServiceConnection currentContext];
  remoteProcess = [v6 remoteProcess];
  v8 = [remoteProcess pid];

  [(BKMousePointerController *)self->_mousePointerController stopRoutingGlobalEventsForPID:v8];
  [(BKMousePointerController *)self->_mousePointerController setEventsDisabled:0 pid:v8];
  v9 = [(BKHIDDomainServiceServer *)self->_server userInfoForConnection:connectionCopy];
  v10 = objc_opt_class();
  v11 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    perDisplayUUIDInfo = [v13 perDisplayUUIDInfo];
    [perDisplayUUIDInfo enumerateKeysAndObjectsUsingBlock:&stru_1000F9C90];
  }

  [(NSMutableSet *)self->_deviceObservingConnections removeObject:connectionCopy];
  [(NSMutableSet *)self->_preferenceObservingConnections removeObject:connectionCopy];
}

- (id)_pointerDevicesFromIOHIDServices:(id)services
{
  v3 = [services bs_compactMap:&stru_1000F9C50];
  v4 = [NSSet setWithArray:v3];

  return v4;
}

- (void)connectionDidTerminate:(id)terminate
{
  terminateCopy = terminate;
  v5 = BKLogMousePointer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = terminateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received Connection Termination: %{public}@", &v6, 0xCu);
  }

  [(BKMousePointerServiceServer *)self _queue_removeConnection:terminateCopy];
}

- (void)connectionWillBegin:(id)begin
{
  beginCopy = begin;
  v5 = BKLogMousePointer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    remoteToken = [beginCopy remoteToken];
    remoteToken2 = [beginCopy remoteToken];
    v16 = 138543874;
    v17 = beginCopy;
    v18 = 2112;
    v19 = remoteToken;
    v20 = 1024;
    v21 = [remoteToken2 pid];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received Connection: %{public}@ auditToken: %@ pid: %d", &v16, 0x1Cu);
  }

  v8 = objc_alloc_init(_BKMousePointerServerClientRecord);
  remoteToken3 = [beginCopy remoteToken];
  -[_BKMousePointerServerClientRecord setPID:](v8, "setPID:", [remoteToken3 pid]);
  v10 = objc_alloc_init(NSMutableSet);
  v11 = BKPointerGlobalEventRoutingEntitlement;
  if ([remoteToken3 hasEntitlement:BKPointerGlobalEventRoutingEntitlement])
  {
    [v10 addObject:v11];
  }

  v12 = BKPointerRepositioningEntitlement;
  if ([remoteToken3 hasEntitlement:BKPointerRepositioningEntitlement])
  {
    [v10 addObject:v12];
  }

  v13 = BKPointerAutomationEntitlement;
  if ([remoteToken3 hasEntitlement:BKPointerAutomationEntitlement])
  {
    [v10 addObject:v13];
  }

  v14 = BKPointerPreferencesEntitlement;
  if ([remoteToken3 hasEntitlement:BKPointerPreferencesEntitlement])
  {
    [v10 addObject:v14];
  }

  v15 = BKPointerHitTestingEntitlement;
  if ([remoteToken3 hasEntitlement:BKPointerHitTestingEntitlement])
  {
    [v10 addObject:v15];
  }

  [(_BKMousePointerServerClientRecord *)v8 setEntitlements:v10];
  [(BKHIDDomainServiceServer *)self->_server setUserInfo:v8 forConnection:beginCopy];
}

- (void)mousePointerGlobalDevicePreferencesDidChange:(id)change
{
  changeCopy = change;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010260;
  v7[3] = &unk_1000FD128;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(queue, v7);
}

- (void)setGlobalDevicePreferences:(id)preferences
{
  preferencesCopy = preferences;
  v6 = NSStringFromSelector(a2);
  v7 = BKPointerPreferencesEntitlement;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010448;
  v9[3] = &unk_1000F9B90;
  v10 = preferencesCopy;
  v8 = preferencesCopy;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v6 entitlement:v7 logEntitlementOnFailure:1 usingBlock:v9];
}

- (id)globalDevicePreferences
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10001058C;
  v11 = sub_10001059C;
  v12 = 0;
  v3 = NSStringFromSelector(a2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000105A4;
  v6[3] = &unk_1000F9AD0;
  v6[4] = self;
  v6[5] = &v7;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v3 entitlement:BKPointerPreferencesEntitlement logEntitlementOnFailure:1 usingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setPreferences:(id)preferences forDevice:(id)device
{
  preferencesCopy = preferences;
  deviceCopy = device;
  v9 = NSStringFromSelector(a2);
  v10 = BKPointerPreferencesEntitlement;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000106EC;
  v13[3] = &unk_1000F9BE0;
  v14 = preferencesCopy;
  v15 = deviceCopy;
  v11 = deviceCopy;
  v12 = preferencesCopy;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v9 entitlement:v10 logEntitlementOnFailure:1 usingBlock:v13];
}

- (id)preferencesForDevice:(id)device
{
  deviceCopy = device;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10001058C;
  v18 = sub_10001059C;
  v19 = 0;
  v6 = NSStringFromSelector(a2);
  v7 = BKPointerPreferencesEntitlement;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100010864;
  v11[3] = &unk_1000F9C30;
  v13 = &v14;
  v11[4] = self;
  v8 = deviceCopy;
  v12 = v8;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v6 entitlement:v7 logEntitlementOnFailure:1 usingBlock:v11];

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (void)setMousePointerPreferenceObservationEnabled:(id)enabled
{
  enabledCopy = enabled;
  v6 = NSStringFromSelector(a2);
  v7 = BKPointerPreferencesEntitlement;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010984;
  v9[3] = &unk_1000F9BE0;
  v10 = enabledCopy;
  selfCopy = self;
  v8 = enabledCopy;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v6 entitlement:v7 logEntitlementOnFailure:1 usingBlock:v9];
}

- (id)setMousePointerDeviceObservationEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = +[BSServiceConnection currentContext];
  bOOLValue = [enabledCopy BOOLValue];

  if (bOOLValue == [(NSMutableSet *)self->_deviceObservingConnections containsObject:v5])
  {
    goto LABEL_7;
  }

  deviceObservingConnections = self->_deviceObservingConnections;
  if (!bOOLValue)
  {
    [(NSMutableSet *)deviceObservingConnections removeObject:v5];
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if (!deviceObservingConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_deviceObservingConnections;
    self->_deviceObservingConnections = v8;

    deviceObservingConnections = self->_deviceObservingConnections;
  }

  [(NSMutableSet *)deviceObservingConnections addObject:v5];
  availableDevices = [(BKMousePointerController *)self->_mousePointerController availableDevices];
  v11 = [(BKMousePointerServiceServer *)self _pointerDevicesFromIOHIDServices:availableDevices];

LABEL_8:

  return v11;
}

- (void)getHitTestContextsAtPoint:(id)point withAdditionalContexts:(id)contexts onDisplay:(id)display withCompletion:(id)completion
{
  pointCopy = point;
  contextsCopy = contexts;
  displayCopy = display;
  completionCopy = completion;
  v15 = NSStringFromSelector(a2);
  v16 = BKPointerHitTestingEntitlement;
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100010DB8;
  v28 = &unk_1000F9C08;
  v34 = a2;
  selfCopy = self;
  v17 = pointCopy;
  v30 = v17;
  v18 = contextsCopy;
  v31 = v18;
  v19 = displayCopy;
  v32 = v19;
  v20 = completionCopy;
  v33 = v20;
  v21 = [(BKMousePointerServiceServer *)self _accessStateForReason:v15 entitlement:v16 logEntitlementOnFailure:1 usingBlock:&v25];

  if (v20 && (v21 & 1) == 0)
  {
    v35 = NSLocalizedFailureReasonErrorKey;
    v22 = [NSString stringWithFormat:@"missing entitlement: %@", v16, v25, v26, v27, v28, selfCopy, v30, v31, v32];
    v36 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:v23];

    (*(v20 + 2))(v20, 0, 0, v24);
  }
}

- (void)setGlobalPointerEventRoutes:(id)routes forDisplay:(id)display
{
  routesCopy = routes;
  displayCopy = display;
  v9 = NSStringFromSelector(a2);
  v10 = BKPointerGlobalEventRoutingEntitlement;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100011050;
  v13[3] = &unk_1000F9BE0;
  v14 = displayCopy;
  v15 = routesCopy;
  v11 = routesCopy;
  v12 = displayCopy;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v9 entitlement:v10 logEntitlementOnFailure:1 usingBlock:v13];
}

- (void)invalidateButtonDownPointerRepositionAssertionWithUniqueIdentifier:(id)identifier onDisplay:(id)display
{
  identifierCopy = identifier;
  displayCopy = display;
  if (identifierCopy)
  {
    v9 = NSStringFromSelector(a2);
    v10 = BKPointerRepositioningEntitlement;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000111FC;
    v11[3] = &unk_1000F9BE0;
    v12 = displayCopy;
    v13 = identifierCopy;
    [(BKMousePointerServiceServer *)self _accessStateForReason:v9 entitlement:v10 logEntitlementOnFailure:1 usingBlock:v11];
  }
}

- (void)acquireButtonDownPointerRepositionAssertionWithUniqueIdentifier:(id)identifier forReason:(id)reason contextRelativePointerPosition:(id)position onDisplay:(id)display restrictingToPID:(id)d
{
  identifierCopy = identifier;
  reasonCopy = reason;
  positionCopy = position;
  displayCopy = display;
  dCopy = d;
  if (reasonCopy && identifierCopy && positionCopy)
  {
    v18 = NSStringFromSelector(a2);
    v19 = BKPointerRepositioningEntitlement;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000114F4;
    v21[3] = &unk_1000F9BB8;
    v22 = dCopy;
    v23 = displayCopy;
    v24 = identifierCopy;
    selfCopy = self;
    v26 = reasonCopy;
    v27 = positionCopy;
    [(BKMousePointerServiceServer *)self _accessStateForReason:v18 entitlement:v19 logEntitlementOnFailure:1 usingBlock:v21];

    v20 = v22;
  }

  else
  {
    v20 = BKLogMousePointer();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v29 = identifierCopy;
      v30 = 2114;
      v31 = positionCopy;
      v32 = 2114;
      v33 = reasonCopy;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "nil arguments to acquireButtonDownPointerRepositionAssertionWithUniqueIdentifier: %{public}@ %{public}@ %{public}@", buf, 0x20u);
    }
  }
}

- (void)setSuppressAllEvents:(id)events
{
  eventsCopy = events;
  v6 = NSStringFromSelector(a2);
  v7 = BKPointerGlobalEventRoutingEntitlement;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100011734;
  v9[3] = &unk_1000F9B90;
  v10 = eventsCopy;
  v8 = eventsCopy;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v6 entitlement:v7 logEntitlementOnFailure:1 usingBlock:v9];
}

- (void)applyAssertionParametersOnDisplay:(id)display withOptionsMask:(id)mask
{
  displayCopy = display;
  unsignedIntegerValue = [mask unsignedIntegerValue];
  v8 = displayCopy;
  v9 = [v8 length];
  v10 = BKSDisplayUUIDMainKey;
  if (v9)
  {
    v10 = v8;
  }

  v12 = v10;

  v11 = [(BKMousePointerServiceServer *)self _perDisplayClientInfoForCurrentConnectionWithDisplayUUID:v12 createIfNeeded:1];
  [(BKMousePointerServiceServer *)self _assertModelUpdatesSuppressed:(unsignedIntegerValue >> 1) & 1 displayUUID:v12 clientDisplayInfo:v11];
}

- (void)setContextRelativePointerPosition:(id)position withInitialVelocity:(id)velocity onDisplay:(id)display withDecelerationRate:(id)rate restrictingToPID:(id)d
{
  positionCopy = position;
  velocityCopy = velocity;
  displayCopy = display;
  rateCopy = rate;
  dCopy = d;
  v18 = NSStringFromSelector(a2);
  v19 = BKPointerRepositioningEntitlement;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100011A60;
  v25[3] = &unk_1000F9B68;
  v26 = dCopy;
  v27 = positionCopy;
  v28 = velocityCopy;
  v29 = displayCopy;
  v30 = rateCopy;
  v20 = rateCopy;
  v21 = displayCopy;
  v22 = velocityCopy;
  v23 = positionCopy;
  v24 = dCopy;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v18 entitlement:v19 logEntitlementOnFailure:1 usingBlock:v25];
}

- (void)setContextRelativePointerPosition:(id)position onDisplay:(id)display withAnimationParameters:(id)parameters restrictingToPID:(id)d
{
  positionCopy = position;
  displayCopy = display;
  parametersCopy = parameters;
  dCopy = d;
  v15 = NSStringFromSelector(a2);
  v16 = BKPointerRepositioningEntitlement;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100011C60;
  v21[3] = &unk_1000F9B40;
  v22 = dCopy;
  v23 = positionCopy;
  v24 = displayCopy;
  v25 = parametersCopy;
  v17 = parametersCopy;
  v18 = displayCopy;
  v19 = positionCopy;
  v20 = dCopy;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v15 entitlement:v16 logEntitlementOnFailure:1 usingBlock:v21];
}

- (void)setPointerPosition:(id)position onDisplay:(id)display withAnimationParameters:(id)parameters
{
  positionCopy = position;
  displayCopy = display;
  parametersCopy = parameters;
  v12 = NSStringFromSelector(a2);
  v13 = BKPointerRepositioningEntitlement;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100011E24;
  v17[3] = &unk_1000F9B18;
  v18 = displayCopy;
  v19 = positionCopy;
  v20 = parametersCopy;
  v14 = parametersCopy;
  v15 = positionCopy;
  v16 = displayCopy;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v12 entitlement:v13 logEntitlementOnFailure:1 usingBlock:v17];
}

- (void)setGlobalPointerPosition:(id)position
{
  [position bs_CGPointValue];
  v6 = v5;
  v8 = v7;
  v9 = NSStringFromSelector(a2);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100011FC0;
  v10[3] = &unk_1000F9AF0;
  v10[4] = v6;
  v10[5] = v8;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v9 entitlement:BKPointerAutomationEntitlement logEntitlementOnFailure:0 usingBlock:v10];
}

- (id)normalizedGlobalPointerPosition
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v11 = 0;
  v12 = 0;
  v10 = "";
  v3 = NSStringFromSelector(a2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100012158;
  v6[3] = &unk_1000F9AD0;
  v6[4] = self;
  v6[5] = &v7;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v3 entitlement:BKPointerAutomationEntitlement logEntitlementOnFailure:0 usingBlock:v6];

  v4 = [NSValue bs_valueWithCGPoint:v8[4], v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)globalPointerPosition
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v11 = 0;
  v12 = 0;
  v10 = "";
  v3 = NSStringFromSelector(a2);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000122B4;
  v6[3] = &unk_1000F9AD0;
  v6[4] = self;
  v6[5] = &v7;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v3 entitlement:BKPointerAutomationEntitlement logEntitlementOnFailure:0 usingBlock:v6];

  v4 = [NSValue bs_valueWithCGPoint:v8[4], v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)pointingDevicesDidChange:(id)change
{
  changeCopy = change;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012388;
  v7[3] = &unk_1000FD128;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_sync(queue, v7);
}

- (void)activateWithMousePointerController:(id)controller
{
  objc_storeStrong(&self->_mousePointerController, controller);
  controllerCopy = controller;
  v5 = +[BKSMousePointerServiceSessionSpecification serviceQuality];
  v6 = [BSServiceDispatchQueue queueWithName:@"com.apple.backboardd.BKMousePointerServiceServer" serviceQuality:v5];
  bsServiceDispatchQueue = self->_bsServiceDispatchQueue;
  self->_bsServiceDispatchQueue = v6;

  queue = [(BSServiceDispatchQueue *)self->_bsServiceDispatchQueue queue];
  queue = self->_queue;
  self->_queue = queue;

  v10 = [BKHIDDomainServiceServer alloc];
  v21 = +[BKSMousePointerServiceSessionSpecification interface];
  server = [v21 server];
  protocol = [server protocol];
  v13 = +[BKSMousePointerServiceSessionSpecification interface];
  client = [v13 client];
  protocol2 = [client protocol];
  v16 = +[BKSMousePointerServiceSessionSpecification identifier];
  v17 = self->_bsServiceDispatchQueue;
  v18 = BKLogMousePointer();
  v19 = [v10 initWithDelegate:self incomingServiceConnectionHandler:0 serverTarget:self serverProtocol:protocol clientProtocol:protocol2 serviceName:v16 queue:v17 log:v18 entitlement:0];
  server = self->_server;
  self->_server = v19;

  [(BKHIDDomainServiceServer *)self->_server activate];
}

- (void)dealloc
{
  if (self->_server)
  {
    v4 = [NSString stringWithFormat:@"must invoke invalidate before deallocating BKMousePointerServiceServer"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"BKMousePointerServiceServer.m";
      v17 = 1024;
      v18 = 114;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1000127D4);
  }

  v8.receiver = self;
  v8.super_class = BKMousePointerServiceServer;
  [(BKMousePointerServiceServer *)&v8 dealloc];
}

@end