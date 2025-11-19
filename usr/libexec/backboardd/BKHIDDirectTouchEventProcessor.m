@interface BKHIDDirectTouchEventProcessor
+ (NSArray)digitizerMatchingDictionaries;
- (BKHIDDirectTouchEventProcessor)initWithContext:(id)a3;
- (BKIOHIDService)mainDisplayAOPDigitizerService;
- (BKIOHIDService)mainDisplayDigitizerService;
- (BKIOHIDService)mainDisplayPencilDigitizerService;
- (BOOL)detachTouchIdentifiers:(unsigned int *)a3 count:(int64_t)a4 assignUserIdentifier:(unsigned int)a5 policy:(id)a6 offset:(CGPoint)a7;
- (BOOL)handlesPersistentPropertiesForSenderDescriptor:(id)a3;
- (BOOL)shouldIgnoreTouchesWhileObjectInProximity;
- (id)_determineServiceForEvent:(__IOHIDEvent *)a3 sender:(id)a4 fromTouchPad:(BOOL *)a5;
- (id)_persistentPropertyKeyDenylist;
- (id)_queue_addDigitizerStateForService:(id)a3;
- (id)_queue_applyCachedPropertiesToMultitouchService:(id)a3;
- (id)_queue_digitizerStateForService:(id)a3;
- (id)_queue_displayInfoForDisplay:(id)a3 createIfNeeded:(BOOL)a4;
- (id)_queue_servicesMatchingSenderDescriptor:(id)a3;
- (id)_queue_touchStreamInfoForDisplayUUID:(id)a3 createIfNeeded:(BOOL)a4;
- (id)authenticationSpecificationForSlotID:(unsigned int)a3 registrantEntitled:(BOOL *)a4;
- (id)cancelAndSuppressTouchesOnDisplay:(id)a3 reason:(id)a4;
- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5;
- (int64_t)setPersistentProperties:(id)a3 forServicesMatchingDescriptor:(id)a4;
- (unsigned)_queue_addTouchStreamClient:(id)a3 toDisplayUUID:(id)a4 versionedPID:(int64_t)a5;
- (unsigned)addTouchStreamForContextID:(unsigned int)a3 display:(id)a4 versionedPID:(int64_t)a5 identifier:(unsigned int)a6 shouldSendAmbiguityRecommendations:(BOOL)a7;
- (void)_handleDirectTouchEvent:(__IOHIDEvent *)a3 service:(id)a4;
- (void)_queue_addServicesMatchingSenderDescriptor:(id)a3 inPerDisplayInfo:(id)a4 toArray:(id)a5;
- (void)_queue_enumerateDigitizersForAllDisplaysUsingBlock:(id)a3;
- (void)_queue_enumerateDigitizersForDisplay:(id)a3 usingBlock:(id)a4;
- (void)_queue_enumerateTouchStreamsForAllDisplaysUsingBlock:(id)a3;
- (void)_queue_invalidateTouchStreamClient:(id)a3 reason:(id)a4;
- (void)_queue_resetTouchAuthenticationInitialSampleEvent;
- (void)addTouchAuthenticationSpecifications:(id)a3 registrantEntitled:(BOOL)a4;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)applyExtendedHitTestInformationForCAScreenCoordinates:(CGPoint)a3 displayUUID:(id)a4 toPathAttributes:(id)a5 secureName:(unsigned int)a6 excludeContextIDs:(id)a7;
- (void)cancelTouchesOnAllDisplays;
- (void)cancelTouchesOnDisplay:(id)a3;
- (void)cancelTouchesWithIdentifiers:(id)a3;
- (void)dealloc;
- (void)didInitializeRegistryWithContext:(id)a3;
- (void)globalKeyboardModifiersDidChange:(int64_t)a3;
- (void)invalidateTouchStreamReference:(unsigned int)a3;
- (void)matcher:(id)a3 servicesDidMatch:(id)a4;
- (void)postTouchAnnotations:(id)a3 sourcePID:(int)a4;
- (void)serviceDidDisappear:(id)a3;
- (void)setBuiltInDisplayInterfaceOrientation:(int64_t)a3;
- (void)setEventDispatchMode:(unsigned __int8)a3 ambiguityRecommendation:(unsigned __int8)a4 lastTouchTimestamp:(double)a5 forTouchStreamIdentifier:(unsigned int)a6;
- (void)setHitTestRegions:(id)a3 forDisplay:(id)a4;
- (void)setOffset:(CGPoint)a3 forTouchesWithUserIdentifier:(unsigned int)a4;
- (void)setRoutingPolicy:(id)a3 forTouchesWithUserIdentifier:(unsigned int)a4;
- (void)setShouldIgnoreTouchesWhileObjectInProximity:(BOOL)a3;
- (void)transferTouchIdentifiers:(unsigned int *)a3 count:(int64_t)a4 toContextID:(unsigned int)a5;
@end

@implementation BKHIDDirectTouchEventProcessor

- (id)_queue_servicesMatchingSenderDescriptor:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [a3 associatedDisplay];
  v7 = v6;
  if (v6)
  {
    if ([v6 _isNullDisplay])
    {
      v8 = BKLogTouchEvents();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "touch services cannot match nullDisplay", v21, 2u);
      }
    }

    else
    {
      v13 = [v7 _hardwareIdentifier];
      queue_perDisplayInfo = self->_queue_perDisplayInfo;
      v15 = v13;
      v16 = [v15 length];
      v17 = BKSDisplayUUIDMainKey;
      if (v16)
      {
        v17 = v15;
      }

      v18 = v17;

      v19 = [(NSMutableDictionary *)queue_perDisplayInfo objectForKey:v18];

      [(BKHIDDirectTouchEventProcessor *)self _queue_addServicesMatchingSenderDescriptor:a3 inPerDisplayInfo:v19 toArray:v5];
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_queue_perDisplayInfo allValues];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v9 = v23 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [(BKHIDDirectTouchEventProcessor *)self _queue_addServicesMatchingSenderDescriptor:a3 inPerDisplayInfo:*(*(&v22 + 1) + 8 * i) toArray:v5];
        }

        v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }
  }

  return v5;
}

- (void)_queue_addServicesMatchingSenderDescriptor:(id)a3 inPerDisplayInfo:(id)a4 toArray:(id)a5
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = sub_100002D14(a4);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (v11)
        {
          v11 = v11[1];
        }

        v12 = v11;
        v13 = [v12 senderDescriptor];
        if ([v13 matchesDescriptor:a3 failureReason:0])
        {
          [a5 addObject:v12];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (id)_determineServiceForEvent:(__IOHIDEvent *)a3 sender:(id)a4 fromTouchPad:(BOOL *)a5
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v8 = a4) == 0)
  {
    v12 = objc_opt_class();
    v13 = a4;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v9 = 0;
    v16 = 0;
    goto LABEL_27;
  }

  v9 = v8;
  v10 = [v8 displayUUID];

  if (v10)
  {
    v11 = BKLogTouchEvents();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = [v9 displayUUID];
      v20 = 138543362;
      v21 = v19;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Not supported: accessibility digitizer for external display (%{public}@)", &v20, 0xCu);
    }

LABEL_26:

    v16 = 0;
    v15 = 0;
    goto LABEL_27;
  }

  if ([v9 isPencilDigitizer])
  {
    v15 = [(BKHIDDirectTouchEventProcessor *)self mainDisplayPencilDigitizerService];
    if (v15)
    {
      goto LABEL_19;
    }

    v17 = BKLogTouchEvents();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Pencil AX event, but pencil digitizer is missing", &v20, 2u);
    }
  }

  v15 = [(BKHIDDirectTouchEventProcessor *)self mainDisplayDigitizerService];
LABEL_19:
  if (IOHIDEventGetType() != 11)
  {
    v16 = 0;
    if (v15)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v16 = IOHIDEventGetIntegerValue() == 0;
  if (!v15)
  {
LABEL_23:
    if (v16)
    {
      goto LABEL_27;
    }

    v11 = BKLogTouchEvents();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "AX event, but main screen digitizer is missing", &v20, 2u);
    }

    goto LABEL_26;
  }

LABEL_27:
  *a5 = v16;

  return v15;
}

- (void)_handleDirectTouchEvent:(__IOHIDEvent *)a3 service:(id)a4
{
  dispatch_assert_queue_not_V2(self->_queue);
  if (!a4)
  {
    v9 = [NSString stringWithFormat:@"must have a service here"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138544642;
      v16 = v10;
      v17 = 2114;
      v18 = v12;
      v19 = 2048;
      v20 = self;
      v21 = 2114;
      v22 = @"BKHIDDirectTouchEventProcessor.mm";
      v23 = 1024;
      v24 = 1161;
      v25 = 2114;
      v26 = v9;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v13 = v9;
    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100049614);
  }

  if (byte_100125ED8 == 1)
  {
    if (a3)
    {
      IOHIDEventGetTimeStamp();
    }

    kdebug_trace();
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000496B4;
  block[3] = &unk_1000FCA90;
  block[4] = self;
  block[5] = a4;
  block[6] = a3;
  dispatch_sync(queue, block);
  if (byte_100125ED8 == 1)
  {
    if (a3)
    {
      IOHIDEventGetTimeStamp();
    }

    kdebug_trace();
  }
}

- (id)_queue_applyCachedPropertiesToMultitouchService:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = [a3 displayUUID];
  if ([a3 primaryUsagePage] == 13 && objc_msgSend(a3, "primaryUsage") == 4)
  {
    v16 = 0x3FF0000000000000;
    sub_100007090(v5, 0, 0, &v16, 0, 0);
    v6 = *&v16;
    v7 = BKLogTouchEvents();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [a3 senderID];
      *buf = 134218240;
      v18 = v8;
      v19 = 1024;
      LODWORD(v20) = (v6 * 160.0);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "service %llX setProperty:%d forKey:QuantizationDPI", buf, 0x12u);
    }

    v9 = [NSNumber numberWithInt:(v6 * 160.0)];
    [a3 setProperty:v9 forKey:@"QuantizationDPI"];
  }

  persistentPropertyController = self->_persistentPropertyController;
  v11 = [a3 senderDescriptor];
  v12 = [(BKIOHIDServicePersistentPropertyController *)persistentPropertyController allPersistentPropertiesForServicesMatchingDescriptor:v11];

  if ([v12 count])
  {
    v13 = BKLogTouchEvents();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [a3 senderID];
      *buf = 134218242;
      v18 = v14;
      v19 = 2114;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "service %llX restore persistent props %{public}@", buf, 0x16u);
    }

    [a3 setProperties:v12];
  }

  return v12;
}

- (unsigned)_queue_addTouchStreamClient:(id)a3 toDisplayUUID:(id)a4 versionedPID:(int64_t)a5
{
  dispatch_assert_queue_V2(self->_queue);
  v8 = self->_queue_previousVendedTouchStreamReference + 1;
  self->_queue_previousVendedTouchStreamReference = v8;
  if (a3)
  {
    *(a3 + 4) = v8;
  }

  v9 = [(BKHIDDirectTouchEventProcessor *)self _queue_touchStreamInfoForDisplayUUID:a4 createIfNeeded:1];
  v10 = v9;
  if (v9)
  {
    if (!*(v9 + 16))
    {
      v11 = objc_alloc_init(NSMutableArray);
      v12 = v10[2];
      v10[2] = v11;
    }

    if (a3)
    {
      objc_storeWeak(a3 + 4, v10);
    }

    [v10[2] addObject:a3];
  }

  queue_referenceToTouchStreamClient = self->_queue_referenceToTouchStreamClient;
  if (!queue_referenceToTouchStreamClient)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    v15 = self->_queue_referenceToTouchStreamClient;
    self->_queue_referenceToTouchStreamClient = v14;

    queue_referenceToTouchStreamClient = self->_queue_referenceToTouchStreamClient;
  }

  v16 = [NSNumber numberWithUnsignedInt:self->_queue_previousVendedTouchStreamReference];
  [(NSMutableDictionary *)queue_referenceToTouchStreamClient setObject:a3 forKeyedSubscript:v16];

  v17 = BKLogTouchEvents();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = a3;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "create touch stream %{public}@", buf, 0xCu);
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, a3);
  queue = self->_queue;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100049F14;
  v28[3] = &unk_1000FB678;
  objc_copyWeak(&v29, &from);
  objc_copyWeak(&v30, &location);
  if (a3)
  {
    if (*(a3 + 7))
    {
      v23 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"_processDeathWatcher == nil"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector("watchForProcessDeathOnQueue:block:");
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        v34 = v24;
        v35 = 2114;
        v36 = v26;
        v37 = 2048;
        v38 = a3;
        v39 = 2114;
        v40 = @"BKDigitizerTouchStreamClient.m";
        v41 = 1024;
        v42 = 96;
        v43 = 2114;
        v44 = v23;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v27 = v23;
      [v23 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x100049EBCLL);
    }

    v19 = [[BSProcessDeathWatcher alloc] initWithPID:*(a3 + 10) queue:queue deathHandler:v28];
    v20 = *(a3 + 7);
    *(a3 + 7) = v19;
  }

  queue_previousVendedTouchStreamReference = self->_queue_previousVendedTouchStreamReference;
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return queue_previousVendedTouchStreamReference;
}

- (void)_queue_invalidateTouchStreamClient:(id)a3 reason:(id)a4
{
  dispatch_assert_queue_V2(self->_queue);
  v7 = BKLogTouchEvents();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = a4;
    v18 = 2114;
    v19 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "invalidate touch stream (%{public}@) %{public}@", buf, 0x16u);
  }

  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(a3 + 4);
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v10 = *(WeakRetained + 1);
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
LABEL_6:
  v11 = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004A158;
  v15[3] = &unk_1000FB410;
  v15[4] = a3;
  [(BKHIDDirectTouchEventProcessor *)self _queue_enumerateDigitizersForDisplay:v11 usingBlock:v15];

  sub_100093058(a3);
  if (a3)
  {
    v12 = *(a3 + 4);
  }

  else
  {
    v12 = 0;
  }

  queue_referenceToTouchStreamClient = self->_queue_referenceToTouchStreamClient;
  v14 = [NSNumber numberWithUnsignedInt:v12];
  [(NSMutableDictionary *)queue_referenceToTouchStreamClient removeObjectForKey:v14];
}

- (id)_queue_touchStreamInfoForDisplayUUID:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = a3;
  v8 = [v7 length];
  v9 = BKSDisplayUUIDMainKey;
  if (v8)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [(BKHIDDirectTouchEventProcessor *)self _queue_displayInfoForDisplay:v10 createIfNeeded:1];
  v12 = v11;
  if (v11)
  {
    v13 = *(v11 + 24);
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = v14;
  if (v4 && !v14)
  {
    v16 = objc_alloc_init(BKDigitizerTouchStreamAggregate);
    v15 = v16;
    if (v16)
    {
      objc_setProperty_nonatomic_copy(v16, v17, v10, 8);
    }

    if (v12)
    {
      objc_storeStrong(v12 + 3, v15);
    }
  }

  return v15;
}

- (id)_queue_digitizerStateForService:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = [a3 displayUUID];
  v6 = [v5 length];
  v7 = BKSDisplayUUIDMainKey;
  if (v6)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [(BKHIDDirectTouchEventProcessor *)self _queue_displayInfoForDisplay:v8 createIfNeeded:1];
  v10 = v9;
  if (v9)
  {
    v11 = [*(v9 + 48) objectForKeyedSubscript:a3];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_queue_addDigitizerStateForService:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v63 = [(BKHIDDirectTouchEventProcessor *)self _queue_applyCachedPropertiesToMultitouchService:a3];
  v5 = [a3 displayUUID];
  v6 = [v5 length];
  v7 = BKSDisplayUUIDMainKey;
  if (v6)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [BKTouchDeliveryStatisticsLoggingObserver alloc];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llX-%@", [a3 senderID], v8);
  v64 = [(BKTouchDeliveryStatisticsLoggingObserver *)v9 initWithLabel:v10];

  v11 = [(BKHIDDirectTouchEventProcessor *)self _queue_displayInfoForDisplay:v8 createIfNeeded:1];
  v12 = +[BKTouchDeliveryObservationManager sharedInstance];
  v13 = [BKDirectTouchState alloc];
  if (v13 && (dispatcher = self->_dispatcher, v65.receiver = v13, v65.super_class = BKDirectTouchState, (v15 = [(BKHIDDirectTouchEventProcessor *)&v65 init]) != 0))
  {
    v16 = objc_opt_class();
    if (v16 != objc_opt_class())
    {
      v58 = [NSString stringWithFormat:@"Subclasses not allowed"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v59 = NSStringFromSelector("initWithHIDService:eventProcessor:displayInfo:dispatcher:touchDeliveryObserver:statisticsObserver:deliveryPolicyServer:eventSystemInteface:");
        v60 = objc_opt_class();
        v61 = NSStringFromClass(v60);
        *v66 = 138544642;
        *&v66[4] = v59;
        *&v66[12] = 2114;
        *&v66[14] = v61;
        v67 = 2048;
        v68 = v15;
        v69 = 2114;
        v70 = @"BKDirectTouchState.mm";
        v71 = 1024;
        v72 = 195;
        v73 = 2114;
        v74 = v58;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v66, 0x3Au);
      }

      v62 = v58;
      [v58 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x10004AB28);
    }

    objc_storeStrong(&v15->_queue, a3);
    objc_storeStrong(&v15->_touchEventServer, self);
    objc_storeStrong(&v15->_matchers, v11);
    objc_storeStrong(&v15->_pencilOpaqueTouchPersistentPropertySupport, dispatcher);
    objc_storeStrong(&v15->_queue_mainDisplayAOPDigitizerService, v12);
    objc_storeStrong(&v15->_queue_mainDisplayDigitizerService, 0);
    objc_storeStrong(&v15->_queue_mainDisplayDigitizerSentinelTimer, 0);
    v17 = objc_alloc_init(BKTouchContactSet);
    globalKeyboardObserver = v15->_globalKeyboardObserver;
    v15->_globalKeyboardObserver = v17;

    v19 = objc_alloc_init(BSMutableIntegerMap);
    queue_perDisplayInfo = v15->_queue_perDisplayInfo;
    v15->_queue_perDisplayInfo = v19;

    v21 = objc_alloc_init(BSMutableIntegerMap);
    queue_referenceToTouchStreamClient = v15->_queue_referenceToTouchStreamClient;
    v15->_queue_referenceToTouchStreamClient = v21;

    v23 = objc_alloc_init(BSMutableIntegerMap);
    v24 = *&v15->_queue_previousVendedTouchStreamReference;
    *&v15->_queue_previousVendedTouchStreamReference = v23;

    v25 = objc_alloc_init(NSMutableSet);
    queue_slotIDToSlotRecord = v15->_queue_slotIDToSlotRecord;
    v15->_queue_slotIDToSlotRecord = v25;

    v27 = [BKDirectTouchStateHitTester alloc];
    v28 = v15;
    v29 = self;
    v30 = v11;
    if (v27)
    {
      *v66 = v27;
      *&v66[8] = BKDirectTouchStateHitTester;
      v31 = objc_msgSendSuper2(v66, "init");
      v27 = v31;
      if (v31)
      {
        objc_storeStrong(&v31->_state, v15);
        objc_storeStrong(&v27->_eventProcessor, self);
        objc_storeStrong(&v27->_displayInfo, v11);
        objc_storeStrong(&v27->_touchDeliveryPolicyServer, 0);
      }
    }

    v32 = v28[3];
    v28[3] = v27;

    v33 = [BKDirectTouchUpdateEvents alloc];
    if (v33)
    {
      *v66 = v33;
      *&v66[8] = BKDirectTouchUpdateEvents;
      v34 = objc_msgSendSuper2(v66, "init");
      v35 = v34;
      if (v34)
      {
        objc_storeStrong(v34 + 3, v15);
      }
    }

    else
    {
      v35 = 0;
    }

    v36 = v28[23];
    v28[23] = v35;

    v37 = objc_alloc_init(NSMutableArray);
    v38 = v28[9];
    v28[9] = v37;

    if (v64)
    {
      [v28[9] addObject:v64];
    }

    if (v12)
    {
      [v28[9] addObject:v12];
    }

    *(v28 + 205) = [a3 primaryUsage] == 32;
    v39 = [(OS_dispatch_queue *)v15->_queue propertyForKey:@"MaxHoverHeight"];
    v40 = v39;
    if (v39)
    {
      [v39 doubleValue];
      v28[24] = v41;
    }

    v42 = +[BKSDefaults localDefaults];
    sub_100080620(v28, [v42 digitizerVisualizeTouches], objc_msgSend(v42, "digitizerVisualizeHitTestRegions"));
    v43 = BKLogTouchEvents();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *v66 = 138543362;
      *&v66[4] = v28;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "init: %{public}@", v66, 0xCu);
    }
  }

  else
  {
    v28 = 0;
  }

  v44 = v28;
  v45 = a3;
  if (v11)
  {
    v46 = *(v11 + 48);
    if (!v46)
    {
      v47 = objc_alloc_init(NSMutableDictionary);
      v48 = *(v11 + 48);
      *(v11 + 48) = v47;

      v46 = *(v11 + 48);
    }

    [v46 setObject:v44 forKeyedSubscript:v45];
  }

  queue_interfaceOrientation = self->_queue_interfaceOrientation;
  if (queue_interfaceOrientation && v44)
  {
    v44[19] = queue_interfaceOrientation;
  }

  v50 = [v63 objectForKey:@"HoverDisabled"];
  v51 = [v50 BOOLValue];

  if (v51)
  {
    if (!v44)
    {
      goto LABEL_34;
    }

    *(v44 + 209) = 1;
  }

  else if (!v44)
  {
    goto LABEL_34;
  }

  v44[13] = self->_queue_activeModifiers;
LABEL_34:
  if (v11)
  {
    v52 = *(v11 + 32);
    if (v52)
    {
      sub_100086910(v44, v52);
    }
  }

  else
  {
    v52 = 0;
  }

  v53 = +[BKSDefaults localDefaults];
  v54 = [v53 digitizerVisualizeTouches];

  v55 = +[BKSDefaults localDefaults];
  v56 = [v55 digitizerVisualizeHitTestRegions];

  sub_100080620(v44, v54, v56);
  [v45 addDisappearanceObserver:self queue:self->_queue];

  return v44;
}

- (id)_queue_displayInfoForDisplay:(id)a3 createIfNeeded:(BOOL)a4
{
  if (!a3)
  {
    __assert_rtn("[BKHIDDirectTouchEventProcessor _queue_displayInfoForDisplay:createIfNeeded:]", "BKHIDDirectTouchEventProcessor.mm", 967, "displayUUID");
  }

  v4 = a4;
  dispatch_assert_queue_V2(self->_queue);
  queue_perDisplayInfo = self->_queue_perDisplayInfo;
  if (!queue_perDisplayInfo)
  {
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = self->_queue_perDisplayInfo;
    self->_queue_perDisplayInfo = v8;

    queue_perDisplayInfo = self->_queue_perDisplayInfo;
  }

  v10 = [(NSMutableDictionary *)queue_perDisplayInfo objectForKeyedSubscript:a3];
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = !v4;
  }

  if (!v11)
  {
    v10 = objc_alloc_init(BKDirectTouchPerDisplayInfo);
    if ([a3 isEqualToString:BKSDisplayUUIDMainKey])
    {
      +[BKSHIDEventDisplay builtinDisplay];
    }

    else
    {
      [BKSHIDEventDisplay displayWithHardwareIdentifier:a3];
    }
    v12 = ;
    if (v10)
    {
      objc_storeStrong(&v10->_display, v12);
    }

    defaultDisplayController = self->_defaultDisplayController;
    if (defaultDisplayController)
    {
      v14 = defaultDisplayController;
    }

    else
    {
      v14 = +[BKDisplayController sharedInstance];
    }

    v15 = v14;
    if (v10)
    {
      objc_storeStrong(&v10->_displayController, v14);
    }

    [(NSMutableDictionary *)self->_queue_perDisplayInfo setObject:v10 forKeyedSubscript:a3];
  }

  return v10;
}

- (void)globalKeyboardModifiersDidChange:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004AE58;
  v4[3] = &unk_1000FCF78;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

- (void)serviceDidDisappear:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = BKLogTouchEvents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134218240;
    v19 = [a3 senderID];
    v20 = 1024;
    v21 = [a3 isBuiltIn];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "digitizer detached (sender %llX) builtIn:%d", &v18, 0x12u);
  }

  if (self->_queue_mainDisplayDigitizerService == a3)
  {
    v6 = BKLogTouchEvents();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "*** lost main display digitizer ***", &v18, 2u);
    }

    queue_mainDisplayDigitizerService = self->_queue_mainDisplayDigitizerService;
    self->_queue_mainDisplayDigitizerService = 0;
  }

  if (self->_queue_mainDisplayPencilDigitizerService == a3)
  {
    v8 = BKLogTouchEvents();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "*** lost pencil digitizer ***", &v18, 2u);
    }

    queue_mainDisplayPencilDigitizerService = self->_queue_mainDisplayPencilDigitizerService;
    self->_queue_mainDisplayPencilDigitizerService = 0;
  }

  v10 = [a3 displayUUID];
  v11 = [v10 length];
  v12 = BKSDisplayUUIDMainKey;
  if (v11)
  {
    v12 = v10;
  }

  v13 = v12;

  v14 = [(BKHIDDirectTouchEventProcessor *)self _queue_digitizerStateForService:a3];
  v15 = BKLogTouchEvents();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "cancel -- digitizer did disappear:%{public}@", &v18, 0xCu);
  }

  [v14 invalidate];
  v16 = [(NSMutableDictionary *)self->_queue_perDisplayInfo objectForKey:v13];
  v17 = v16;
  if (v16)
  {
    [*(v16 + 48) removeObjectForKey:a3];
  }
}

- (void)matcher:(id)a3 servicesDidMatch:(id)a4
{
  dispatch_assert_queue_V2(self->_queue);
  v6 = +[BKHIDSystemInterface sharedInstance];
  v7 = [v6 senderCache];

  v32 = v7;
  [v7 addSenderInfo:a4];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = a4;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v9)
  {
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [v12 isBuiltIn];
        v14 = BKLogTouchEvents();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v12 senderID];
          *buf = 134218242;
          v38 = *&v15;
          v39 = 2114;
          v40 = v12;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "digitizer attached (sender %llX) service:%{public}@", buf, 0x16u);
        }

        if (v13)
        {
          v16 = [v12 primaryUsagePage];
          v17 = [v12 primaryUsage] | (v16 << 16);
          switch(v17)
          {
            case 0xD0001u:
              if (!self->_queue_mainDisplayAOPDigitizerService)
              {
                v27 = BKLogTouchEvents();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "*** acquired AOP digitizer", buf, 2u);
                }

                v28 = v12;
                queue_mainDisplayAOPDigitizerService = self->_queue_mainDisplayAOPDigitizerService;
                self->_queue_mainDisplayAOPDigitizerService = v28;
                break;
              }

              queue_mainDisplayAOPDigitizerService = BKLogTouchEvents();
              if (os_log_type_enabled(queue_mainDisplayAOPDigitizerService, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                v19 = queue_mainDisplayAOPDigitizerService;
                v20 = "*** already have an AOP digitizer";
                goto LABEL_21;
              }

              break;
            case 0xD0004u:
              if (!self->_queue_mainDisplayDigitizerService)
              {
                v22 = BKLogTouchEvents();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  BSContinuousMachTimeNow();
                  v24 = v23 - self->_queue_startMainDisplayDigitizerMatchingTime;
                  *buf = 134217984;
                  v38 = v24;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "*** acquired main display digitizer (after %gs)", buf, 0xCu);
                }

                [(BSContinuousMachTimer *)self->_queue_mainDisplayDigitizerSentinelTimer invalidate];
                queue_mainDisplayDigitizerSentinelTimer = self->_queue_mainDisplayDigitizerSentinelTimer;
                self->_queue_mainDisplayDigitizerSentinelTimer = 0;

                v26 = v12;
                queue_mainDisplayAOPDigitizerService = self->_queue_mainDisplayDigitizerService;
                self->_queue_mainDisplayDigitizerService = v26;
                break;
              }

              queue_mainDisplayAOPDigitizerService = BKLogTouchEvents();
              if (os_log_type_enabled(queue_mainDisplayAOPDigitizerService, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                v19 = queue_mainDisplayAOPDigitizerService;
                v20 = "*** already have a main display digitizer";
LABEL_21:
                v21 = 2;
                goto LABEL_24;
              }

              break;
            case 0xD0020u:
              if (self->_queue_mainDisplayPencilDigitizerService)
              {
                queue_mainDisplayAOPDigitizerService = BKLogTouchEvents();
                if (os_log_type_enabled(queue_mainDisplayAOPDigitizerService, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  v19 = queue_mainDisplayAOPDigitizerService;
                  v20 = "*** already have a pencil digitizer";
                  goto LABEL_21;
                }
              }

              else
              {
                v29 = BKLogTouchEvents();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "*** acquired pencil digitizer", buf, 2u);
                }

                v30 = v12;
                queue_mainDisplayAOPDigitizerService = self->_queue_mainDisplayPencilDigitizerService;
                self->_queue_mainDisplayPencilDigitizerService = v30;
              }

              break;
            default:
              queue_mainDisplayAOPDigitizerService = BKLogTouchEvents();
              if (!os_log_type_enabled(queue_mainDisplayAOPDigitizerService, OS_LOG_TYPE_ERROR))
              {
                break;
              }

              *buf = 67109120;
              LODWORD(v38) = v17;
              v19 = queue_mainDisplayAOPDigitizerService;
              v20 = "*** unexpected digitizer usage pair 0x%X";
              v21 = 8;
LABEL_24:
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v20, buf, v21);
              break;
          }
        }

        v31 = [(BKHIDDirectTouchEventProcessor *)self _queue_addDigitizerStateForService:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v9);
  }
}

- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5
{
  v8 = *a3;
  v24 = v8;
  v23 = 0;
  v9 = [(BKHIDDirectTouchEventProcessor *)self _determineServiceForEvent:v8 sender:a4 fromTouchPad:&v23];
  v10 = v9;
  if (v9)
  {
    v11 = [(__IOHIDEvent *)v9 displayUUID];
    v12 = [(__IOHIDEvent *)v10 primaryUsagePage];
    v13 = [(__IOHIDEvent *)v10 primaryUsage];
    if (v23)
    {
LABEL_3:
      v14 = +[BKTouchPadManager sharedInstance];
      [v14 processEvent:&v24 sender:a4 dispatcher:a5];
LABEL_19:

      goto LABEL_20;
    }

    if (v12 == 13)
    {
      v15 = v13 == 12 || v13 == 5;
      v23 = v15;
      if (v13 == 5 || v13 == 12)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v23 = 0;
    }

    if ((v11 != 0) == [(__IOHIDEvent *)v10 isBuiltIn]|| (v16 = [(__IOHIDEvent *)v10 primaryUsagePage], v17 = ([(__IOHIDEvent *)v10 primaryUsage]| (v16 << 16)) - 851969, v17 > 0x1F) || ((1 << v17) & 0x80000009) == 0)
    {
      v14 = BKLogTouchEvents();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = v11;
        v20 = [v19 length];
        v21 = BKSDisplayUUIDMainKey;
        if (v20)
        {
          v21 = v19;
        }

        v22 = v21;

        *buf = 138543874;
        v26 = v22;
        v27 = 2114;
        v28 = v10;
        v29 = 2114;
        v30 = v8;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "ignoring digitizer event for display %{public}@ from unsupported service: (%{public}@):%{public}@", buf, 0x20u);
      }

      goto LABEL_19;
    }

    [(BKHIDDirectTouchEventProcessor *)self _handleDirectTouchEvent:v8 service:v10];
  }

  else
  {
    v11 = BKLogTouchEvents();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v26 = a4;
      v27 = 2114;
      v28 = v8;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "ignoring digitizer event from non-digitizer sender (%{public}@):%{public}@", buf, 0x16u);
    }
  }

LABEL_20:

  return 0;
}

- (int64_t)setPersistentProperties:(id)a3 forServicesMatchingDescriptor:(id)a4
{
  [(BKHIDDirectTouchEventProcessor *)self _persistentPropertyKeyDenylist];
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10004C158;
  v39 = v38[3] = &unk_1000FB650;
  v40 = &v41;
  v22 = v39;
  [a3 enumerateKeysAndObjectsUsingBlock:v38];
  if (v42[3])
  {
    v7 = 1;
  }

  else
  {
    v23 = [a3 objectForKey:@"HoverDisabled"];
    v8 = objc_opt_class();
    v9 = v23;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = sub_10004C1A0;
    v36 = sub_10004C1B0;
    v37 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004C1B8;
    block[3] = &unk_1000FCBD0;
    v31 = &v32;
    block[4] = self;
    block[5] = a4;
    v13 = v11;
    v30 = v13;
    dispatch_sync(queue, block);
    v24 = v13;
    if ([v33[5] count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = v33[5];
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v49 count:16];
      if (v15)
      {
        v16 = *v26;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v25 + 1) + 8 * i);
            v19 = BKLogTouchEvents();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = [BSDescriptionStream descriptionForRootObject:a3];
              *buf = 138543618;
              v46 = v20;
              v47 = 2114;
              v48 = v18;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "sending:%{public}@ to:%{public}@", buf, 0x16u);
            }

            [v18 setProperties:a3];
          }

          v15 = [v14 countByEnumeratingWithState:&v25 objects:v49 count:16];
        }

        while (v15);
      }
    }

    else
    {
      v14 = BKLogTouchEvents();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v46 = a4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "no currently matched services for %{public}@", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v32, 8);
    v7 = 2;
  }

  _Block_object_dispose(&v41, 8);
  return v7;
}

- (id)_persistentPropertyKeyDenylist
{
  if (qword_100125EE0 != -1)
  {
    dispatch_once(&qword_100125EE0, &stru_1000FB628);
  }

  v3 = qword_100125EE8;

  return v3;
}

- (BOOL)handlesPersistentPropertiesForSenderDescriptor:(id)a3
{
  v4 = [a3 primaryPage];
  v5 = [a3 primaryUsage];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = +[BKHIDDirectTouchEventProcessor digitizerMatchingDictionaries];
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 objectForKey:@"DeviceUsagePage"];
        v11 = [v10 unsignedIntValue];

        v12 = [v9 objectForKey:@"DeviceUsage"];
        LODWORD(v10) = [v12 unsignedIntValue];

        v13 = v5 == v10 || v5 == 0;
        if (v4 == v11 && v13)
        {
          v14 = 1;
          goto LABEL_15;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (void)_queue_enumerateTouchStreamsForAllDisplaysUsingBlock:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  queue_perDisplayInfo = self->_queue_perDisplayInfo;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004C6D0;
  v6[3] = &unk_1000FB608;
  v6[4] = a3;
  [(NSMutableDictionary *)queue_perDisplayInfo enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)_queue_enumerateDigitizersForAllDisplaysUsingBlock:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  queue_perDisplayInfo = self->_queue_perDisplayInfo;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004C7E0;
  v6[3] = &unk_1000FB608;
  v6[4] = a3;
  [(NSMutableDictionary *)queue_perDisplayInfo enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)_queue_enumerateDigitizersForDisplay:(id)a3 usingBlock:(id)a4
{
  dispatch_assert_queue_V2(self->_queue);
  v7 = a3;
  v8 = [v7 length];
  v9 = BKSDisplayUUIDMainKey;
  if (v8)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [(NSMutableDictionary *)self->_queue_perDisplayInfo objectForKeyedSubscript:v10];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = sub_100002D14(v11);
  v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v13)
  {
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v12);
        }

        (*(a4 + 2))(a4, *(*(&v16 + 1) + 8 * v15));
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)applyExtendedHitTestInformationForCAScreenCoordinates:(CGPoint)a3 displayUUID:(id)a4 toPathAttributes:(id)a5 secureName:(unsigned int)a6 excludeContextIDs:(id)a7
{
  y = a3.y;
  x = a3.x;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004CC80;
  block[3] = &unk_1000FB5E0;
  block[4] = a4;
  block[5] = self;
  *&block[8] = x;
  *&block[9] = y;
  v16 = a6;
  block[6] = a5;
  block[7] = a7;
  dispatch_sync(queue, block);
}

- (void)_queue_resetTouchAuthenticationInitialSampleEvent
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_queue_touchEnterSlotIDs;
  v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_queue_slotIDToSlotRecord objectForKey:*(*(&v12 + 1) + 8 * v7), v12];
        if (v8)
        {
          if (v5 >= 2)
          {
            v9 = 1;
          }

          else
          {
            v9 = 2;
          }

          v8[3] = v9;
        }

        ++v5;
        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v4);
  }

  v10 = BKLogTouchEvents();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    queue_touchEnterSlotIDs = self->_queue_touchEnterSlotIDs;
    *buf = 138543362;
    v17 = queue_touchEnterSlotIDs;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "resetTouchAuthenticationInitialSampleEventMasks:%{public}@", buf, 0xCu);
  }
}

- (void)addTouchAuthenticationSpecifications:(id)a3 registrantEntitled:(BOOL)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004D2B0;
  block[3] = &unk_1000FB5B8;
  block[4] = self;
  block[5] = a3;
  v6 = a4;
  dispatch_sync(queue, block);
}

- (id)authenticationSpecificationForSlotID:(unsigned int)a3 registrantEntitled:(BOOL *)a4
{
  *a4 = 0;
  if (a3)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_10004C1A0;
    v13 = sub_10004C1B0;
    v14 = 0;
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004D68C;
    v7[3] = &unk_1000FB590;
    v8 = a3;
    v7[4] = self;
    v7[5] = &v9;
    v7[6] = a4;
    dispatch_sync(queue, v7);
    v5 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setBuiltInDisplayInterfaceOrientation:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_1000BFA00[a3 - 1];
  }

  persistentPropertyController = self->_persistentPropertyController;
  v12 = @"GraphicsOrientation";
  v7 = [NSNumber numberWithUnsignedInt:v5];
  v13 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v9 = +[BKSHIDEventSenderDescriptor anyBuiltinTouchscreenDigitizer];
  [(BKIOHIDServicePersistentPropertyController *)persistentPropertyController setPersistentProperties:v8 forSenderDescriptor:v9];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004D8E8;
  block[3] = &unk_1000FCF78;
  block[4] = self;
  block[5] = a3;
  dispatch_async(queue, block);
}

- (void)setShouldIgnoreTouchesWhileObjectInProximity:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_shouldIgnoreTouchesWhileObjectInProximity = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)shouldIgnoreTouchesWhileObjectInProximity
{
  os_unfair_lock_lock(&self->_lock);
  lock_shouldIgnoreTouchesWhileObjectInProximity = self->_lock_shouldIgnoreTouchesWhileObjectInProximity;
  os_unfair_lock_unlock(&self->_lock);
  return lock_shouldIgnoreTouchesWhileObjectInProximity;
}

- (void)postTouchAnnotations:(id)a3 sourcePID:(int)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004DA68;
  block[3] = &unk_1000FD1A0;
  block[4] = self;
  block[5] = a3;
  v6 = a4;
  dispatch_async(queue, block);
}

- (void)setOffset:(CGPoint)a3 forTouchesWithUserIdentifier:(unsigned int)a4
{
  if (a4)
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004DDCC;
    v6[3] = &unk_1000FB4D0;
    v6[4] = self;
    v7 = a3;
    v8 = a4;
    dispatch_sync(queue, v6);
  }

  else
  {
    v5 = BKLogTouchEvents();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "cannot alter touch offset for zero userIdentifer", buf, 2u);
    }
  }
}

- (void)setRoutingPolicy:(id)a3 forTouchesWithUserIdentifier:(unsigned int)a4
{
  if (a4)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004E060;
    block[3] = &unk_1000FD1A0;
    block[4] = self;
    block[5] = a3;
    v7 = a4;
    dispatch_sync(queue, block);
  }

  else
  {
    v5 = BKLogTouchEvents();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "cannot alter routing policy for touches with zero userIdentifer", buf, 2u);
    }
  }
}

- (BOOL)detachTouchIdentifiers:(unsigned int *)a3 count:(int64_t)a4 assignUserIdentifier:(unsigned int)a5 policy:(id)a6 offset:(CGPoint)a7
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004E448;
  v10[3] = &unk_1000FB520;
  v10[6] = &v13;
  v10[7] = a3;
  v10[8] = a4;
  v12 = a5;
  v10[4] = self;
  v10[5] = a6;
  v11 = a7;
  dispatch_sync(queue, v10);
  v8 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v8;
}

- (void)transferTouchIdentifiers:(unsigned int *)a3 count:(int64_t)a4 toContextID:(unsigned int)a5
{
  queue = self->_queue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004E95C;
  v6[3] = &unk_1000FB4D0;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v7 = a5;
  dispatch_sync(queue, v6);
}

- (void)setEventDispatchMode:(unsigned __int8)a3 ambiguityRecommendation:(unsigned __int8)a4 lastTouchTimestamp:(double)a5 forTouchStreamIdentifier:(unsigned int)a6
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = a3;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004F364;
  block[3] = &unk_1000FB488;
  v8 = a6;
  block[4] = self;
  block[5] = v9;
  block[6] = v11;
  *&block[7] = a5;
  dispatch_async(queue, block);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);
}

- (void)invalidateTouchStreamReference:(unsigned int)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004FB10;
  v4[3] = &unk_1000FCD68;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (unsigned)addTouchStreamForContextID:(unsigned int)a3 display:(id)a4 versionedPID:(int64_t)a5 identifier:(unsigned int)a6 shouldSendAmbiguityRecommendations:(BOOL)a7
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004FC44;
  v10[3] = &unk_1000FB438;
  v10[4] = self;
  v10[5] = a4;
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v10[6] = &v14;
  v10[7] = a5;
  dispatch_sync(queue, v10);
  v8 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v8;
}

- (void)setHitTestRegions:(id)a3 forDisplay:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050674;
  block[3] = &unk_1000FC068;
  block[4] = self;
  block[5] = a4;
  block[6] = a3;
  dispatch_async(queue, block);
}

- (id)cancelAndSuppressTouchesOnDisplay:(id)a3 reason:(id)a4
{
  v7 = BKLogTouchEvents();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "canceling events for suppression reason: %{public}@", buf, 0xCu);
  }

  v8 = objc_alloc_init(NSMutableArray);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050994;
  block[3] = &unk_1000FBA68;
  block[4] = self;
  block[5] = a3;
  v10 = v8;
  v18 = v10;
  v19 = a4;
  dispatch_sync(queue, block);
  v11 = [BSSimpleAssertion alloc];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100050A48;
  v15[3] = &unk_1000FB3E8;
  v12 = v10;
  v16 = v12;
  v13 = [v11 initWithIdentifier:@"touch-suppression-cancel-array" forReason:a4 invalidationBlock:v15];

  return v13;
}

- (void)cancelTouchesOnAllDisplays
{
  v3 = BKLogTouchEvents();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "soft cancel on all displays", buf, 2u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050C94;
  block[3] = &unk_1000FD150;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = +[BKTouchPadManager sharedInstance];
  [v5 sendCancelEventForAllDisplays];
}

- (void)cancelTouchesOnDisplay:(id)a3
{
  v5 = BKLogTouchEvents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a3;
    v7 = [v6 length];
    v8 = BKSDisplayUUIDMainKey;
    if (v7)
    {
      v8 = v6;
    }

    v9 = v8;

    *buf = 138543362;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "soft cancel on display:%{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100050E44;
  v12[3] = &unk_1000FD128;
  v12[4] = self;
  v12[5] = a3;
  dispatch_async(queue, v12);
  v11 = +[BKTouchPadManager sharedInstance];
  [v11 sendCancelEventForDisplay:a3];
}

- (void)cancelTouchesWithIdentifiers:(id)a3
{
  v5 = [a3 count];
  v6 = BKLogTouchEvents();
  v7 = v6;
  if (v5 < 31)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "cancel touches with identifiers: %{public}@", buf, 0xCu);
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100050FD0;
    block[3] = &unk_1000FCA90;
    block[4] = a3;
    block[5] = self;
    block[6] = v5;
    dispatch_async(queue, block);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v11) = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "too many touch identifiers passed to CancelTouchesWithIdentifiers (%d)", buf, 8u);
    }
  }
}

- (BKIOHIDService)mainDisplayPencilDigitizerService
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10004C1A0;
  v10 = sub_10004C1B0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000512E4;
  v5[3] = &unk_1000FD178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BKIOHIDService)mainDisplayAOPDigitizerService
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10004C1A0;
  v10 = sub_10004C1B0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000513E8;
  v5[3] = &unk_1000FD178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BKIOHIDService)mainDisplayDigitizerService
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10004C1A0;
  v10 = sub_10004C1B0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000514EC;
  v5[3] = &unk_1000FD178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000515A8;
  v6[3] = &unk_1000FD128;
  v6[4] = a3;
  v6[5] = self;
  [a3 appendProem:self block:v6];
  v5 = [a3 appendObject:self->_queue_perDisplayInfo withName:@"perDisplayInfo"];
}

- (void)didInitializeRegistryWithContext:(id)a3
{
  v4 = [a3 eventProcessorRegistry];
  v7 = [v4 eventProcessorOfClass:objc_opt_class()];

  v5 = [v7 addGlobalKeyboardObserver:self];
  globalKeyboardObserver = self->_globalKeyboardObserver;
  self->_globalKeyboardObserver = v5;
}

- (void)dealloc
{
  [(BKIOHIDServiceSimplePersistentPropertySupport *)self->_pencilOpaqueTouchPersistentPropertySupport invalidate];
  v3.receiver = self;
  v3.super_class = BKHIDDirectTouchEventProcessor;
  [(BKHIDDirectTouchEventProcessor *)&v3 dealloc];
}

- (BKHIDDirectTouchEventProcessor)initWithContext:(id)a3
{
  obj = objc_alloc_init(BKHIDEventHitTestDispatcher);
  v42 = sub_100008F48();
  v44 = +[BKIOHIDServicePersistentPropertyController digitizerServicePersistentPropertyController];
  if (self && (v63.receiver = self, v63.super_class = BKHIDDirectTouchEventProcessor, v5 = [(BKHIDDirectTouchEventProcessor *)&v63 init], (v6 = v5) != 0))
  {
    objc_storeStrong(&v5->_dispatcher, obj);
    objc_storeStrong(&v6->_touchEventServer, v42);
    objc_storeStrong(&v6->_persistentPropertyController, v44);
    v7 = BSDispatchQueueCreateWithFixedPriority();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = [a3 serviceMatcherDataProvider];
    v10 = [BKIOHIDServiceSimplePersistentPropertySupport alloc];
    v11 = +[BKSHIDEventSenderDescriptor stylusOpaqueTouchDigitizer];
    v12 = [v10 initWithSenderDescriptor:v11 matcherDataProvider:v9 persistentPropertyController:v44];
    pencilOpaqueTouchPersistentPropertySupport = v6->_pencilOpaqueTouchPersistentPropertySupport;
    v6->_pencilOpaqueTouchPersistentPropertySupport = v12;

    [v44 registerHandler:v6->_pencilOpaqueTouchPersistentPropertySupport];
    v14 = objc_alloc_init(NSMutableArray);
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v15 = +[BKHIDDirectTouchEventProcessor digitizerMatchingDictionaries];
    v16 = [v15 countByEnumeratingWithState:&v59 objects:v66 count:16];
    if (v16)
    {
      v17 = *v60;
      do
      {
        v18 = 0;
        do
        {
          if (*v60 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = [[BKIOHIDServiceMatcher alloc] initWithMatchingDictionary:*(*(&v59 + 1) + 8 * v18) dataProvider:v9];
          [v14 addObject:v19];

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v59 objects:v66 count:16];
      }

      while (v16);
    }

    objc_storeStrong(&v6->_matchers, v14);
    BSContinuousMachTimeNow();
    v6->_queue_startMainDisplayDigitizerMatchingTime = v20;
    objc_initWeak(&location, v6);
    v21 = [[BSContinuousMachTimer alloc] initWithIdentifier:@"BKHIDDirectTouchEventProcessor-WaitForMainDigitizer"];
    objc_storeStrong(&v6->_queue_mainDisplayDigitizerSentinelTimer, v21);
    v22 = v6->_queue;
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100051F30;
    v55[3] = &unk_1000FB2B0;
    objc_copyWeak(&v57, &location);
    v56 = v21;
    v41 = v56;
    [v56 scheduleWithFireInterval:v22 leewayInterval:v55 queue:60.0 handler:5.0];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v23 = v14;
    v24 = [v23 countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v24)
    {
      v25 = *v52;
      do
      {
        v26 = 0;
        do
        {
          if (*v52 != v25)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v51 + 1) + 8 * v26) startObserving:v6 queue:v6->_queue];
          v26 = v26 + 1;
        }

        while (v24 != v26);
        v24 = [v23 countByEnumeratingWithState:&v51 objects:v65 count:16];
      }

      while (v24);
    }

    v27 = +[BKSDefaults localDefaults];
    v28 = [NSString stringWithUTF8String:"digitizerSignpostsEnabled"];
    v29 = dispatch_get_global_queue(21, 0);
    v30 = [v27 observeDefault:v28 onQueue:v29 withBlock:&stru_1000FB2D0];

    v31 = [NSString stringWithUTF8String:"digitizerVisualizeTouches"];
    v64[0] = v31;
    v32 = [NSString stringWithUTF8String:"digitizerVisualizeHitTestRegions"];
    v64[1] = v32;
    v33 = [NSArray arrayWithObjects:v64 count:2];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100052030;
    v49[3] = &unk_1000FD150;
    v34 = v6;
    v50 = v34;
    v35 = [v27 observeDefaults:v33 onQueue:v29 withBlock:v49];

    v36 = v6->_queue;
    v47[1] = _NSConcreteStackBlock;
    v47[2] = 3221225472;
    v47[3] = sub_1000520BC;
    v47[4] = &unk_1000FCCF8;
    objc_copyWeak(&v48, &location);
    v37 = BSLogAddStateCaptureBlockWithTitle();
    v38 = +[CAWindowServer serverIfRunning];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100052134;
    v45[3] = &unk_1000FB318;
    objc_copyWeak(v47, &location);
    v39 = v34;
    v46 = v39;
    [v38 setSlotDeletionCallback:v45];

    [(BKIOHIDServicePersistentPropertyController *)v6->_persistentPropertyController registerHandler:v39];
    objc_destroyWeak(v47);
    objc_destroyWeak(&v48);

    objc_destroyWeak(&v57);
    objc_destroyWeak(&location);
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

+ (NSArray)digitizerMatchingDictionaries
{
  v11[0] = @"DeviceUsagePage";
  v11[1] = @"DeviceUsage";
  v12[0] = &off_1001079A0;
  v12[1] = &off_1001079B8;
  v2 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v13[0] = v2;
  v9[0] = @"DeviceUsagePage";
  v9[1] = @"DeviceUsage";
  v10[0] = &off_1001079A0;
  v10[1] = &off_1001079D0;
  v3 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v13[1] = v3;
  v7[0] = @"DeviceUsagePage";
  v7[1] = @"DeviceUsage";
  v8[0] = &off_1001079A0;
  v8[1] = &off_1001079E8;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v13[2] = v4;
  v5 = [NSArray arrayWithObjects:v13 count:3];

  return v5;
}

@end