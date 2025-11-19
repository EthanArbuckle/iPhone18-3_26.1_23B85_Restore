@interface BKHIDProximityEventProcessor
- (BKHIDProximityEventProcessor)initWithContext:(id)a3;
- (BOOL)isObjectWithinProximity;
- (BOOL)isProximityDetectionActive;
- (BOOL)shouldSuppressTouchesWhileObjectWithinProximity;
- (id)setObservesProximitySensorDetectionMaskChanges:(id)a3;
- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5;
- (void)_lock_postDetectionMaskChangeToObservers;
- (void)_lock_postSyntheticEventWithDetectionMaskToClients:(unsigned int)a3;
- (void)_locked_notifyIfNeededCurrentDetectionMaskChangeWithTimstamp:(unint64_t)a3;
- (void)_locked_setObjectWithinProximity:(BOOL)a3 notify:(BOOL)a4;
- (void)_locked_updateTouchSuppressionAssertion;
- (void)connectionDidTerminate:(id)a3;
- (void)dealloc;
- (void)sensorModeDidChange:(id)a3;
- (void)setShouldSuppressTouchesWhileObjectWithinProximity:(BOOL)a3;
@end

@implementation BKHIDProximityEventProcessor

- (void)_lock_postDetectionMaskChangeToObservers
{
  os_unfair_lock_assert_owner(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_observingProximityConnections;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [(BKHIDDomainServiceServer *)self->_server userInfoForConnection:v8, v17];
        v10 = v9;
        if (v9)
        {
          v11 = *(v9 + 8);
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        v13 = [v12 detectionMask];
        v14 = [(BKSProximityDetectionMaskChangeEvent *)self->_lock_lastEvent detectionMask];

        if (v13 != v14)
        {
          sub_100037BC8(v10, self->_lock_lastEvent);
          v15 = [v8 remoteTarget];
          [v15 proximityDetectionMaskDidChange:self->_lock_lastEvent];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v16 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v5 = v16;
    }

    while (v16);
  }
}

- (BOOL)isProximityDetectionActive
{
  os_unfair_lock_lock(&self->_lock);
  proximityDetectionActive = self->_proximityDetectionActive;
  os_unfair_lock_unlock(&self->_lock);
  return proximityDetectionActive;
}

- (void)_locked_updateTouchSuppressionAssertion
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_objectWithinProximity)
  {
    suppressTouchesAssertion = self->_suppressTouchesAssertion;
    p_suppressTouchesAssertion = &self->_suppressTouchesAssertion;
    v3 = suppressTouchesAssertion;
    v6 = *(p_suppressTouchesAssertion - 80);
    v7 = suppressTouchesAssertion == 0;
    if (!suppressTouchesAssertion && (*(p_suppressTouchesAssertion - 10) & 1) != 0)
    {
      v8 = +[BKHIDEventProcessorRegistry sharedInstance];
      v13 = [v8 eventProcessorOfClass:objc_opt_class()];

      v9 = [v13 cancelAndSuppressTouchesOnDisplay:0 reason:@"objectWithinProximity"];
      v10 = *p_suppressTouchesAssertion;
      *p_suppressTouchesAssertion = v9;

      v11 = v13;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    v12 = self->_suppressTouchesAssertion;
    p_suppressTouchesAssertion = &self->_suppressTouchesAssertion;
    v3 = v12;
    v7 = v12 == 0;
  }

  if (v7 || (v6 & 1) != 0)
  {
    return;
  }

  [(BSInvalidatable *)v3 invalidate];
  v11 = *p_suppressTouchesAssertion;
  *p_suppressTouchesAssertion = 0;
LABEL_9:
}

- (BOOL)isObjectWithinProximity
{
  os_unfair_lock_lock(&self->_lock);
  objectWithinProximity = self->_objectWithinProximity;
  os_unfair_lock_unlock(&self->_lock);
  return objectWithinProximity;
}

- (void)connectionDidTerminate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_observingProximityConnections removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)setObservesProximitySensorDetectionMaskChanges:(id)a3
{
  v4 = a3;
  v5 = +[BSServiceConnection currentContext];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(BKHIDDomainServiceServer *)self->_server userInfoForConnection:v5];
  v7 = [v4 BOOLValue];

  if (!v7)
  {
    sub_100037BC8(v6, 0);
    [(NSMutableSet *)self->_observingProximityConnections removeObject:v5];
    goto LABEL_7;
  }

  if (self->_observingProximityConnections)
  {
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = objc_alloc_init(NSMutableSet);
    observingProximityConnections = self->_observingProximityConnections;
    self->_observingProximityConnections = v10;

    if (v6)
    {
      goto LABEL_4;
    }
  }

  v6 = objc_alloc_init(BKProximityServerClientRecord);
  [(BKHIDDomainServiceServer *)self->_server setUserInfo:v6 forConnection:v5];
LABEL_4:
  if (([(NSMutableSet *)self->_observingProximityConnections containsObject:v5]& 1) == 0)
  {
    [(NSMutableSet *)self->_observingProximityConnections addObject:v5];
    v8 = self->_lock_lastEvent;
    sub_100037BC8(v6, v8);
    goto LABEL_8;
  }

LABEL_7:
  v8 = 0;
LABEL_8:
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (void)sensorModeDidChange:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 proximityDetectionMode];

  detectionMode = self->_detectionMode;
  if (detectionMode != v5)
  {
    self->_detectionMode = v5;
    self->_modeDetectionMask = 0;
    if (v5 == 3)
    {
      if (detectionMode == 6 && (self->_rawDetectionMask & 0x240) != 0)
      {
        self->_modeDetectionMask = 64;
      }
    }

    else
    {
      if (v5 != 6)
      {
        self->_proximityDetectionActive = 0;
        [(BKHIDProximityEventProcessor *)self _locked_setObjectWithinProximity:0 notify:1];
LABEL_20:
        [(BKHIDProximityEventProcessor *)self _locked_notifyIfNeededCurrentDetectionMaskChangeWithTimstamp:mach_absolute_time()];
        goto LABEL_21;
      }

      if ([(BKHIDProximityEventProcessor *)self _shouldPostLPATransitionEvents])
      {
        if ((self->_rawDetectionMask & 0x240) != 0)
        {
          self->_modeDetectionMask = 64;
          if (detectionMode <= 0xD && ((1 << detectionMode) & 0x3006) != 0)
          {
            [(BKHIDProximityEventProcessor *)self _locked_setObjectWithinProximity:1 notify:1];
            [(BKHIDProximityEventProcessor *)self _lock_postSyntheticEventWithDetectionMaskToClients:64];
          }
        }
      }
    }

    v8 = v5 == 3 || v5 == 6;
    self->_proximityDetectionActive = v8;
    goto LABEL_20;
  }

LABEL_21:

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_postSyntheticEventWithDetectionMaskToClients:(unsigned int)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_lastProximitySender);
  v5 = objc_loadWeakRetained(&self->_lastProximityDispatcher);
  v31 = v5;
  if (!WeakRetained || (v6 = v5) == 0)
  {
    v7 = BKLogUISensor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109634;
      *v41 = a3;
      *&v41[4] = 2114;
      *&v41[6] = v31;
      *&v41[14] = 2114;
      *&v41[16] = WeakRetained;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "ignoring synth:0x%X dispatcher:%{public}@ sender:%{public}@", buf, 0x1Cu);
    }

    v6 = v31;
  }

  mach_absolute_time();
  ProximtyEvent = IOHIDEventCreateProximtyEvent();
  [WeakRetained senderID];
  IOHIDEventSetSenderID();
  IOHIDEventSetIntegerValue();
  cf = ProximtyEvent;
  v29 = WeakRetained;
  [v6 destinationsForEvent:ProximtyEvent fromSender:WeakRetained];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v38 = 0u;
  v9 = v6;
  v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v34)
  {
    v10 = *v36;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = -[BSMutableIntegerMap objectForKey:](self->_eventClients, "objectForKey:", [v12 pid]);
        if (v13)
        {
          v14 = v13;
          v15 = [NSNumber numberWithUnsignedInt:a3];
          objc_setProperty_nonatomic_copy(v14, v16, v15, 8);
        }

        else
        {
          v17 = [NSNumber numberWithUnsignedInt:a3];
          v18 = v9;
          v19 = v12;
          objc_opt_self();
          v14 = objc_alloc_init(BKGenericClientEventRecord);
          context = v14->_context;
          v14->_context = v17;
          v21 = v17;

          eventDispatcher = v14->_eventDispatcher;
          v14->_eventDispatcher = v18;
          v23 = v18;

          destination = v14->_destination;
          v14->_destination = v19;

          [(BSMutableIntegerMap *)self->_eventClients setObject:v14 forKey:[(BKSHIDEventDeferringResolution *)v19 pid]];
        }

        Copy = IOHIDEventCreateCopy();
        v26 = [BKSHIDEventProximityAttributes baseAttributesFromProvider:v12];
        [v26 setProximityDetectionMode:self->_detectionMode];
        BKSHIDEventSetAttributes();
        v27 = BKLogUISensor();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = BKSHIDEventGetConciseDescription();
          *buf = 138543618;
          *v41 = v28;
          *&v41[8] = 2114;
          *&v41[10] = v12;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "send prox event:%{public}@ to %{public}@", buf, 0x16u);
        }

        v9 = v31;
        [v31 postEvent:Copy toDestination:v12];
        CFRelease(Copy);
      }

      v34 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v34);
  }

  CFRelease(cf);
}

- (void)_locked_setObjectWithinProximity:(BOOL)a3 notify:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_objectWithinProximity != v5)
  {
    self->_objectWithinProximity = v5;
    if (v4)
    {
      v7 = dword_1001247E8;
      if (dword_1001247E8 != -1 || (notify_register_check("com.apple.backboard.proximity.changed", &dword_1001247E8), v7 = dword_1001247E8, dword_1001247E8 != -1))
      {
        notify_set_state(v7, v5);
        notify_post("com.apple.backboard.proximity.changed");
      }
    }

    [(BKHIDProximityEventProcessor *)self _locked_updateTouchSuppressionAssertion];
  }
}

- (void)_locked_notifyIfNeededCurrentDetectionMaskChangeWithTimstamp:(unint64_t)a3
{
  modeDetectionMask = self->_modeDetectionMask;
  detectionMode = self->_detectionMode;
  if ([(BKSProximityDetectionMaskChangeEvent *)self->_lock_lastEvent detectionMask]== modeDetectionMask)
  {
    a3 = [(BKSProximityDetectionMaskChangeEvent *)self->_lock_lastEvent timestamp];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003B10C;
  v9[3] = &unk_1000FAE60;
  v9[4] = a3;
  v10 = modeDetectionMask;
  v11 = detectionMode;
  v7 = [BKSProximityDetectionMaskChangeEvent build:v9];
  lock_lastEvent = self->_lock_lastEvent;
  self->_lock_lastEvent = v7;

  [(BKHIDProximityEventProcessor *)self _lock_postDetectionMaskChangeToObservers];
}

- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = *a3;
  v11 = BKLogUISensor();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a3;
    v13 = BKSHIDEventGetConciseDescription();
    *buf = 138543362;
    v48 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "-> %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_lastProximitySender, v8);
  objc_storeWeak(&self->_lastProximityDispatcher, v9);
  if ([(SLGNotificationActivatedLogger *)self->_studyLog isEnabled])
  {
    v14 = IOHIDEventGetIntegerValue() != 0;
    if (self->_studyLogProxState != v14)
    {
      studyLog = self->_studyLog;
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10003B618;
      v44[3] = &unk_1000FAE40;
      v45 = v14;
      [(SLGNotificationActivatedLogger *)studyLog logBlock:v44 domain:@"com.apple.backboard.hid.proximity"];
      self->_studyLogProxState = v14;
    }
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  self->_rawDetectionMask = IntegerValue;
  if (self->_proximityDetectionActive)
  {
    v17 = 1088;
  }

  else
  {
    v17 = 1024;
  }

  v18 = v17 & IntegerValue;
  kdebug_trace();
  v39 = +[NSMutableSet set];
  if (self->_modeDetectionMask != v18)
  {
    self->_modeDetectionMask = v18;
    if (self->_proximityDetectionActive)
    {
      [(BKHIDProximityEventProcessor *)self _locked_setObjectWithinProximity:(v18 >> 6) & 1 notify:1];
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = [(BSMutableIntegerMap *)self->_eventClients allValues:v10];
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v41;
      do
      {
        v23 = 0;
        do
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v40 + 1) + 8 * v23);
          if (v24)
          {
            v25 = v24[1];
          }

          else
          {
            v25 = 0;
          }

          if (([v25 unsignedIntValue] & v18) == 0)
          {
            if (v24)
            {
              v26 = v24[3];
            }

            else
            {
              v26 = 0;
            }

            v27 = v26;
            v28 = [NSSet setWithObject:v27];
            if (v24)
            {
              v29 = v24[2];
            }

            else
            {
              v29 = 0;
            }

            [(BKHIDProximityEventProcessor *)self _locked_postEventWithDetectionMask:0 toDestinations:v28 dispatcher:v29 reason:@"client mask mismatch"];

            [v39 addObject:v27];
            -[BSMutableIntegerMap removeObjectForKey:](self->_eventClients, "removeObjectForKey:", [v27 pid]);
          }

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v30 = [v19 countByEnumeratingWithState:&v40 objects:v46 count:16];
        v21 = v30;
      }

      while (v30);
    }

    if (v18 && self->_proximityDetectionActive)
    {
      [(BKHIDProximityEventProcessor *)self _lock_postSyntheticEventWithDetectionMaskToClients:v18];
      v9 = v37;
      v8 = v38;
      v10 = v36;
    }

    else
    {
      v9 = v37;
      v8 = v38;
      v10 = v36;
      if (v18 < 0x400)
      {
        if (v18)
        {
          v31 = BKLogUISensor();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = BKSHIDEventGetConciseDescription();
            *buf = 138543362;
            v48 = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "Ignoring %{public}@", buf, 0xCu);
          }
        }
      }

      else
      {
        [(BKHIDProximityEventProcessor *)self _lock_postSyntheticEventWithDetectionMaskToClients:1024];
      }
    }
  }

  if (!self->_rawDetectionMask)
  {
    v33 = [v9 destinationsForEvent:v10 fromSender:v8];
    if ([v33 count])
    {
      v34 = [v33 mutableCopy];
      [v34 minusSet:v39];
      [(BKHIDProximityEventProcessor *)self _locked_postEventWithDetectionMask:0 toDestinations:v34 dispatcher:v9 reason:@"HID zero mask"];
    }
  }

  [(BKHIDProximityEventProcessor *)self _locked_notifyIfNeededCurrentDetectionMaskChangeWithTimstamp:IOHIDEventGetTimeStamp()];
  os_unfair_lock_unlock(&self->_lock);

  return 1;
}

- (void)setShouldSuppressTouchesWhileObjectWithinProximity:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_shouldSuppressTouchesWhileObjectWithinProximity = a3;
  [(BKHIDProximityEventProcessor *)self _locked_updateTouchSuppressionAssertion];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)shouldSuppressTouchesWhileObjectWithinProximity
{
  os_unfair_lock_lock(&self->_lock);
  lock_shouldSuppressTouchesWhileObjectWithinProximity = self->_lock_shouldSuppressTouchesWhileObjectWithinProximity;
  os_unfair_lock_unlock(&self->_lock);
  return lock_shouldSuppressTouchesWhileObjectWithinProximity;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_sensorModeChangeObserverToken invalidate];
  v3.receiver = self;
  v3.super_class = BKHIDProximityEventProcessor;
  [(BKHIDProximityEventProcessor *)&v3 dealloc];
}

- (BKHIDProximityEventProcessor)initWithContext:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = BKHIDProximityEventProcessor;
  v5 = [(BKHIDProximityEventProcessor *)&v35 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_lock_shouldSuppressTouchesWhileObjectWithinProximity = 1;
    v7 = [BKSProximityDetectionMaskChangeEvent build:&stru_1000FADF8];
    lock_lastEvent = v6->_lock_lastEvent;
    v6->_lock_lastEvent = v7;

    v9 = [BKHIDDomainServiceServer alloc];
    v10 = BKSProximitySensorBSServiceName;
    v11 = +[BSServiceDispatchQueue mainQueue];
    v12 = BKLogUISensor();
    v13 = [v9 initWithDelegate:v6 incomingServiceConnectionHandler:0 serverTarget:v6 serverProtocol:&OBJC_PROTOCOL___BKSProximitySensorServer_IPC clientProtocol:&OBJC_PROTOCOL___BKSProximitySensorClient_IPC serviceName:v10 queue:v11 log:v12 entitlement:BKProximityDetectionEntitlement];
    server = v6->_server;
    v6->_server = v13;

    v15 = +[BKHIDUISensorController sharedInstance];
    sensorController = v6->_sensorController;
    v6->_sensorController = v15;

    v17 = [(BKHIDUISensorController *)v6->_sensorController addSensorModeChangeObserver:v6];
    sensorModeChangeObserverToken = v6->_sensorModeChangeObserverToken;
    v6->_sensorModeChangeObserverToken = v17;

    v19 = objc_alloc_init(BSMutableIntegerMap);
    eventClients = v6->_eventClients;
    v6->_eventClients = v19;

    objc_initWeak(&location, v6);
    v21 = [SLGNotificationActivatedLogger alloc];
    v22 = [SLGActivatableLogger alloc];
    v23 = +[SLGLog sharedInstance];
    v24 = [v22 initWithLogger:v23];
    v25 = [v21 initWithLogger:v24];
    studyLog = v6->_studyLog;
    v6->_studyLog = v25;

    [(SLGNotificationActivatedLogger *)v6->_studyLog addBeginNotification:@"SBStudyLogBeginCameraButtonLogging" endNotification:@"SBStudyLogEndCameraButtonLogging"];
    v27 = v6->_studyLog;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10003BABC;
    v32[3] = &unk_1000FAE20;
    objc_copyWeak(&v33, &location);
    [(SLGNotificationActivatedLogger *)v27 setActivationHandler:v32];
    v28 = v6->_studyLog;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10003BB78;
    v30[3] = &unk_1000FAE20;
    objc_copyWeak(&v31, &location);
    [(SLGNotificationActivatedLogger *)v28 setDeactivationHandler:v30];
    [(BKHIDDomainServiceServer *)v6->_server activate];
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v6;
}

@end