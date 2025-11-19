@interface BKMousePointerServiceServer
- (BOOL)_accessStateForReason:(id)a3 entitlement:(id)a4 logEntitlementOnFailure:(BOOL)a5 usingBlock:(id)a6;
- (id)_pointerDevicesFromIOHIDServices:(id)a3;
- (id)globalDevicePreferences;
- (id)globalPointerPosition;
- (id)normalizedGlobalPointerPosition;
- (id)preferencesForDevice:(id)a3;
- (id)setMousePointerDeviceObservationEnabled:(id)a3;
- (void)_assertModelUpdatesSuppressed:(BOOL)a3 displayUUID:(id)a4 clientDisplayInfo:(id)a5;
- (void)_queue_removeConnection:(id)a3;
- (void)acquireButtonDownPointerRepositionAssertionWithUniqueIdentifier:(id)a3 forReason:(id)a4 contextRelativePointerPosition:(id)a5 onDisplay:(id)a6 restrictingToPID:(id)a7;
- (void)activateWithMousePointerController:(id)a3;
- (void)applyAssertionParametersOnDisplay:(id)a3 withOptionsMask:(id)a4;
- (void)connectionDidTerminate:(id)a3;
- (void)connectionWillBegin:(id)a3;
- (void)dealloc;
- (void)getHitTestContextsAtPoint:(id)a3 withAdditionalContexts:(id)a4 onDisplay:(id)a5 withCompletion:(id)a6;
- (void)invalidateButtonDownPointerRepositionAssertionWithUniqueIdentifier:(id)a3 onDisplay:(id)a4;
- (void)mousePointerGlobalDevicePreferencesDidChange:(id)a3;
- (void)pointingDevicesDidChange:(id)a3;
- (void)setContextRelativePointerPosition:(id)a3 onDisplay:(id)a4 withAnimationParameters:(id)a5 restrictingToPID:(id)a6;
- (void)setContextRelativePointerPosition:(id)a3 withInitialVelocity:(id)a4 onDisplay:(id)a5 withDecelerationRate:(id)a6 restrictingToPID:(id)a7;
- (void)setGlobalDevicePreferences:(id)a3;
- (void)setGlobalPointerEventRoutes:(id)a3 forDisplay:(id)a4;
- (void)setGlobalPointerPosition:(id)a3;
- (void)setMousePointerPreferenceObservationEnabled:(id)a3;
- (void)setPointerPosition:(id)a3 onDisplay:(id)a4 withAnimationParameters:(id)a5;
- (void)setPreferences:(id)a3 forDevice:(id)a4;
- (void)setSuppressAllEvents:(id)a3;
@end

@implementation BKMousePointerServiceServer

- (BOOL)_accessStateForReason:(id)a3 entitlement:(id)a4 logEntitlementOnFailure:(BOOL)a5 usingBlock:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
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

  v19 = [v18 hasEntitlement:v11];
  if (!v19)
  {
    v20 = BKLogMousePointer();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v21)
      {
        v22 = [v13 remoteProcess];
        v27 = 138543874;
        v28 = v22;
        v29 = 2114;
        v30 = v10;
        v31 = 2114;
        v32 = v11;
        v23 = "process %{public}@ attempted to %{public}@ but does not have the %{public}@ entitlement";
        v24 = v20;
        v25 = 32;
LABEL_15:
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v23, &v27, v25);
      }
    }

    else if (v21)
    {
      v22 = [v13 remoteProcess];
      v27 = 138543618;
      v28 = v22;
      v29 = 2114;
      v30 = v10;
      v23 = "process %{public}@ attempted to %{public}@ but is not allowed";
      v24 = v20;
      v25 = 22;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v12[2](v12, self->_mousePointerController, v18, v13);
LABEL_13:

  return v19;
}

- (void)_assertModelUpdatesSuppressed:(BOOL)a3 displayUUID:(id)a4 clientDisplayInfo:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[BSServiceConnection currentContext];
  v11 = [v10 remoteProcess];
  v12 = [v11 pid];

  v13 = [v9 modelUpdateAssertion];
  v14 = v13;
  if (v6 || !v13)
  {
    v16 = BKLogMousePointer();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (!v6 || v14)
    {
      if (v17)
      {
        *buf = 67109634;
        v22 = v6;
        v23 = 1024;
        *v24 = v12;
        *&v24[4] = 2114;
        *&v24[6] = v8;
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
        *v24 = v8;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Assert model updates suppressed by pid:%d for displayUUID: %{public}@", buf, 0x12u);
      }

      mousePointerController = self->_mousePointerController;
      v19 = [NSString stringWithFormat:@"pid %d", v12];
      v20 = [(BKMousePointerController *)mousePointerController suppressPointerModelUpdatesAssertionForDisplay:v8 reason:v19];

      [v9 setModelUpdateAssertion:v20];
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
      *v24 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Assert model updates no longer suppressed by pid:%d for displayUUID: %{public}@", buf, 0x12u);
    }

    [v14 invalidate];
    [v9 setModelUpdateAssertion:0];
  }
}

- (void)_queue_removeConnection:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = BKLogMousePointer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Connection: Remove: %{public}@", &v15, 0xCu);
  }

  v6 = +[BSServiceConnection currentContext];
  v7 = [v6 remoteProcess];
  v8 = [v7 pid];

  [(BKMousePointerController *)self->_mousePointerController stopRoutingGlobalEventsForPID:v8];
  [(BKMousePointerController *)self->_mousePointerController setEventsDisabled:0 pid:v8];
  v9 = [(BKHIDDomainServiceServer *)self->_server userInfoForConnection:v4];
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
    v14 = [v13 perDisplayUUIDInfo];
    [v14 enumerateKeysAndObjectsUsingBlock:&stru_1000F9C90];
  }

  [(NSMutableSet *)self->_deviceObservingConnections removeObject:v4];
  [(NSMutableSet *)self->_preferenceObservingConnections removeObject:v4];
}

- (id)_pointerDevicesFromIOHIDServices:(id)a3
{
  v3 = [a3 bs_compactMap:&stru_1000F9C50];
  v4 = [NSSet setWithArray:v3];

  return v4;
}

- (void)connectionDidTerminate:(id)a3
{
  v4 = a3;
  v5 = BKLogMousePointer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received Connection Termination: %{public}@", &v6, 0xCu);
  }

  [(BKMousePointerServiceServer *)self _queue_removeConnection:v4];
}

- (void)connectionWillBegin:(id)a3
{
  v4 = a3;
  v5 = BKLogMousePointer();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 remoteToken];
    v7 = [v4 remoteToken];
    v16 = 138543874;
    v17 = v4;
    v18 = 2112;
    v19 = v6;
    v20 = 1024;
    v21 = [v7 pid];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received Connection: %{public}@ auditToken: %@ pid: %d", &v16, 0x1Cu);
  }

  v8 = objc_alloc_init(_BKMousePointerServerClientRecord);
  v9 = [v4 remoteToken];
  -[_BKMousePointerServerClientRecord setPID:](v8, "setPID:", [v9 pid]);
  v10 = objc_alloc_init(NSMutableSet);
  v11 = BKPointerGlobalEventRoutingEntitlement;
  if ([v9 hasEntitlement:BKPointerGlobalEventRoutingEntitlement])
  {
    [v10 addObject:v11];
  }

  v12 = BKPointerRepositioningEntitlement;
  if ([v9 hasEntitlement:BKPointerRepositioningEntitlement])
  {
    [v10 addObject:v12];
  }

  v13 = BKPointerAutomationEntitlement;
  if ([v9 hasEntitlement:BKPointerAutomationEntitlement])
  {
    [v10 addObject:v13];
  }

  v14 = BKPointerPreferencesEntitlement;
  if ([v9 hasEntitlement:BKPointerPreferencesEntitlement])
  {
    [v10 addObject:v14];
  }

  v15 = BKPointerHitTestingEntitlement;
  if ([v9 hasEntitlement:BKPointerHitTestingEntitlement])
  {
    [v10 addObject:v15];
  }

  [(_BKMousePointerServerClientRecord *)v8 setEntitlements:v10];
  [(BKHIDDomainServiceServer *)self->_server setUserInfo:v8 forConnection:v4];
}

- (void)mousePointerGlobalDevicePreferencesDidChange:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010260;
  v7[3] = &unk_1000FD128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)setGlobalDevicePreferences:(id)a3
{
  v5 = a3;
  v6 = NSStringFromSelector(a2);
  v7 = BKPointerPreferencesEntitlement;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010448;
  v9[3] = &unk_1000F9B90;
  v10 = v5;
  v8 = v5;
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

- (void)setPreferences:(id)a3 forDevice:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = NSStringFromSelector(a2);
  v10 = BKPointerPreferencesEntitlement;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000106EC;
  v13[3] = &unk_1000F9BE0;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v9 entitlement:v10 logEntitlementOnFailure:1 usingBlock:v13];
}

- (id)preferencesForDevice:(id)a3
{
  v5 = a3;
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
  v8 = v5;
  v12 = v8;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v6 entitlement:v7 logEntitlementOnFailure:1 usingBlock:v11];

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (void)setMousePointerPreferenceObservationEnabled:(id)a3
{
  v5 = a3;
  v6 = NSStringFromSelector(a2);
  v7 = BKPointerPreferencesEntitlement;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100010984;
  v9[3] = &unk_1000F9BE0;
  v10 = v5;
  v11 = self;
  v8 = v5;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v6 entitlement:v7 logEntitlementOnFailure:1 usingBlock:v9];
}

- (id)setMousePointerDeviceObservationEnabled:(id)a3
{
  v4 = a3;
  v5 = +[BSServiceConnection currentContext];
  v6 = [v4 BOOLValue];

  if (v6 == [(NSMutableSet *)self->_deviceObservingConnections containsObject:v5])
  {
    goto LABEL_7;
  }

  deviceObservingConnections = self->_deviceObservingConnections;
  if (!v6)
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
  v10 = [(BKMousePointerController *)self->_mousePointerController availableDevices];
  v11 = [(BKMousePointerServiceServer *)self _pointerDevicesFromIOHIDServices:v10];

LABEL_8:

  return v11;
}

- (void)getHitTestContextsAtPoint:(id)a3 withAdditionalContexts:(id)a4 onDisplay:(id)a5 withCompletion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = NSStringFromSelector(a2);
  v16 = BKPointerHitTestingEntitlement;
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100010DB8;
  v28 = &unk_1000F9C08;
  v34 = a2;
  v29 = self;
  v17 = v11;
  v30 = v17;
  v18 = v12;
  v31 = v18;
  v19 = v13;
  v32 = v19;
  v20 = v14;
  v33 = v20;
  v21 = [(BKMousePointerServiceServer *)self _accessStateForReason:v15 entitlement:v16 logEntitlementOnFailure:1 usingBlock:&v25];

  if (v20 && (v21 & 1) == 0)
  {
    v35 = NSLocalizedFailureReasonErrorKey;
    v22 = [NSString stringWithFormat:@"missing entitlement: %@", v16, v25, v26, v27, v28, v29, v30, v31, v32];
    v36 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v24 = [NSError errorWithDomain:NSPOSIXErrorDomain code:1 userInfo:v23];

    (*(v20 + 2))(v20, 0, 0, v24);
  }
}

- (void)setGlobalPointerEventRoutes:(id)a3 forDisplay:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = NSStringFromSelector(a2);
  v10 = BKPointerGlobalEventRoutingEntitlement;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100011050;
  v13[3] = &unk_1000F9BE0;
  v14 = v8;
  v15 = v7;
  v11 = v7;
  v12 = v8;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v9 entitlement:v10 logEntitlementOnFailure:1 usingBlock:v13];
}

- (void)invalidateButtonDownPointerRepositionAssertionWithUniqueIdentifier:(id)a3 onDisplay:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = NSStringFromSelector(a2);
    v10 = BKPointerRepositioningEntitlement;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000111FC;
    v11[3] = &unk_1000F9BE0;
    v12 = v8;
    v13 = v7;
    [(BKMousePointerServiceServer *)self _accessStateForReason:v9 entitlement:v10 logEntitlementOnFailure:1 usingBlock:v11];
  }
}

- (void)acquireButtonDownPointerRepositionAssertionWithUniqueIdentifier:(id)a3 forReason:(id)a4 contextRelativePointerPosition:(id)a5 onDisplay:(id)a6 restrictingToPID:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v14 && v13 && v15)
  {
    v18 = NSStringFromSelector(a2);
    v19 = BKPointerRepositioningEntitlement;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000114F4;
    v21[3] = &unk_1000F9BB8;
    v22 = v17;
    v23 = v16;
    v24 = v13;
    v25 = self;
    v26 = v14;
    v27 = v15;
    [(BKMousePointerServiceServer *)self _accessStateForReason:v18 entitlement:v19 logEntitlementOnFailure:1 usingBlock:v21];

    v20 = v22;
  }

  else
  {
    v20 = BKLogMousePointer();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v29 = v13;
      v30 = 2114;
      v31 = v15;
      v32 = 2114;
      v33 = v14;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "nil arguments to acquireButtonDownPointerRepositionAssertionWithUniqueIdentifier: %{public}@ %{public}@ %{public}@", buf, 0x20u);
    }
  }
}

- (void)setSuppressAllEvents:(id)a3
{
  v5 = a3;
  v6 = NSStringFromSelector(a2);
  v7 = BKPointerGlobalEventRoutingEntitlement;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100011734;
  v9[3] = &unk_1000F9B90;
  v10 = v5;
  v8 = v5;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v6 entitlement:v7 logEntitlementOnFailure:1 usingBlock:v9];
}

- (void)applyAssertionParametersOnDisplay:(id)a3 withOptionsMask:(id)a4
{
  v6 = a3;
  v7 = [a4 unsignedIntegerValue];
  v8 = v6;
  v9 = [v8 length];
  v10 = BKSDisplayUUIDMainKey;
  if (v9)
  {
    v10 = v8;
  }

  v12 = v10;

  v11 = [(BKMousePointerServiceServer *)self _perDisplayClientInfoForCurrentConnectionWithDisplayUUID:v12 createIfNeeded:1];
  [(BKMousePointerServiceServer *)self _assertModelUpdatesSuppressed:(v7 >> 1) & 1 displayUUID:v12 clientDisplayInfo:v11];
}

- (void)setContextRelativePointerPosition:(id)a3 withInitialVelocity:(id)a4 onDisplay:(id)a5 withDecelerationRate:(id)a6 restrictingToPID:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = NSStringFromSelector(a2);
  v19 = BKPointerRepositioningEntitlement;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100011A60;
  v25[3] = &unk_1000F9B68;
  v26 = v17;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  v24 = v17;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v18 entitlement:v19 logEntitlementOnFailure:1 usingBlock:v25];
}

- (void)setContextRelativePointerPosition:(id)a3 onDisplay:(id)a4 withAnimationParameters:(id)a5 restrictingToPID:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = NSStringFromSelector(a2);
  v16 = BKPointerRepositioningEntitlement;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100011C60;
  v21[3] = &unk_1000F9B40;
  v22 = v14;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v17 = v13;
  v18 = v12;
  v19 = v11;
  v20 = v14;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v15 entitlement:v16 logEntitlementOnFailure:1 usingBlock:v21];
}

- (void)setPointerPosition:(id)a3 onDisplay:(id)a4 withAnimationParameters:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = NSStringFromSelector(a2);
  v13 = BKPointerRepositioningEntitlement;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100011E24;
  v17[3] = &unk_1000F9B18;
  v18 = v10;
  v19 = v9;
  v20 = v11;
  v14 = v11;
  v15 = v9;
  v16 = v10;
  [(BKMousePointerServiceServer *)self _accessStateForReason:v12 entitlement:v13 logEntitlementOnFailure:1 usingBlock:v17];
}

- (void)setGlobalPointerPosition:(id)a3
{
  [a3 bs_CGPointValue];
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

- (void)pointingDevicesDidChange:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012388;
  v7[3] = &unk_1000FD128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)activateWithMousePointerController:(id)a3
{
  objc_storeStrong(&self->_mousePointerController, a3);
  v22 = a3;
  v5 = +[BKSMousePointerServiceSessionSpecification serviceQuality];
  v6 = [BSServiceDispatchQueue queueWithName:@"com.apple.backboardd.BKMousePointerServiceServer" serviceQuality:v5];
  bsServiceDispatchQueue = self->_bsServiceDispatchQueue;
  self->_bsServiceDispatchQueue = v6;

  v8 = [(BSServiceDispatchQueue *)self->_bsServiceDispatchQueue queue];
  queue = self->_queue;
  self->_queue = v8;

  v10 = [BKHIDDomainServiceServer alloc];
  v21 = +[BKSMousePointerServiceSessionSpecification interface];
  v11 = [v21 server];
  v12 = [v11 protocol];
  v13 = +[BKSMousePointerServiceSessionSpecification interface];
  v14 = [v13 client];
  v15 = [v14 protocol];
  v16 = +[BKSMousePointerServiceSessionSpecification identifier];
  v17 = self->_bsServiceDispatchQueue;
  v18 = BKLogMousePointer();
  v19 = [v10 initWithDelegate:self incomingServiceConnectionHandler:0 serverTarget:self serverProtocol:v12 clientProtocol:v15 serviceName:v16 queue:v17 log:v18 entitlement:0];
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
      v14 = self;
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