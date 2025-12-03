@interface accessorydMatchingPlugin
- (BOOL)areAttachEventsInList:(id)list;
- (BOOL)attachToBTServer;
- (BOOL)detachFromBTServer;
- (BOOL)doAttachEventsForPrimaryPortExistInList:(id)list;
- (BOOL)findUniqueEventsOnPrimaryPort:(id)port scanReason:(BOOL)reason resultsArray:(id)array;
- (BOOL)launchDigitalIDClients;
- (accessorydMatchingPlugin)initWithModule:(void *)module;
- (id)bucketizeRMDurations:(id)durations;
- (id)scanEventsListForPrimaryPortsSeen;
- (void)addBTServiceClient:(unint64_t)client;
- (void)addDigitalIDClient:(unint64_t)client;
- (void)addUserNotificationForPort:(id)port;
- (void)dealloc;
- (void)findKnownBTDevices;
- (void)handleUSBPortAdded;
- (void)intrusiveUIStateDidChange:(BOOL)change forService:(id)service;
- (void)launchWirelessCarPlay:(BTDeviceImpl *)play;
- (void)portManager:(id)manager didAddPort:(id)port;
- (void)portManager:(id)manager didRemovePort:(id)port;
- (void)portManager:(id)manager didUpdateAuthorizationStateForPort:(id)port;
- (void)postUniqueAnalyticEventToFigaro:(id)figaro scanReason:(BOOL)reason scanTime:(id)time;
- (void)printRMEventArray;
- (void)processAnalyticsEventListUsingTime:(id)time scanReason:(BOOL)reason primaryPort:(id)port;
- (void)removeBTServiceClient:(unint64_t)client;
- (void)removeDigitalIDClient:(unint64_t)client;
- (void)removeStandardModeEvents;
- (void)removeUserNotificationForPort:(id)port;
- (void)serverRunningDidChange:(id)change status:(int)status;
- (void)setRoleSwapMaskForUSBPort;
- (void)startBluetoothMatching;
- (void)startIOAccessoryManagerEventMonitoring;
- (void)startListeningForIOAccessoryPortClass;
- (void)startListeningForLDCMMitigationStatusChange;
- (void)startTRMMonitoring;
- (void)startUSBRestrictedModeTimeoutMonitoring;
- (void)stopBluetoothMatching;
- (void)stopIOAccessoryManagerEventMonitoring;
- (void)stopListeningForIOAccessoryPortClass;
- (void)stopListeningForLDCMMitigationStatusChange;
- (void)stopTRMMonitoring;
- (void)stopUSBRestrictedModeTimeoutMonitoring;
- (void)trmStatusDidChange;
- (void)updateRMDialogShownForPrimaryPort:(id)port;
- (void)updateUSBChargeCurrent:(id)current AndChargeVoltage:(id)voltage ForPrimaryPort:(id)port WithDigitalID:(id)d;
- (void)updateUSBConectType:(id)type ForPrimaryPort:(id)port WithDigitalID:(id)d;
@end

@implementation accessorydMatchingPlugin

- (void)dealloc
{
  springBoardLockStateToken = self->_springBoardLockStateToken;
  if ((springBoardLockStateToken & 0x80000000) == 0)
  {
    notify_cancel(springBoardLockStateToken);
    self->_springBoardLockStateToken = -1;
  }

  if (self->_systemPowerIterator)
  {
    IODeregisterForSystemPower(&self->_systemPowerIterator);
  }

  systemPowerNotifyPortRef = self->_systemPowerNotifyPortRef;
  if (systemPowerNotifyPortRef)
  {
    IONotificationPortDestroy(systemPowerNotifyPortRef);
  }

  systemPowerPort = self->_systemPowerPort;
  if (systemPowerPort)
  {
    IOServiceClose(systemPowerPort);
  }

  accPowerTimer = self->_accPowerTimer;
  if (accPowerTimer)
  {
    dispatch_source_cancel(accPowerTimer);
  }

  v7 = _uiQueue();
  dispatch_sync(v7, &__block_literal_global_241);

  ioAccessoryEventQueue = self->_ioAccessoryEventQueue;
  self->_ioAccessoryEventQueue = 0;

  if (self->_btSession)
  {
    btSession = self->_btSession;
    BTSessionDetachWithQueue();
    self->_btSession = 0;
  }

  ioAccessoryManagerClassNotify = self->_ioAccessoryManagerClassNotify;
  if (ioAccessoryManagerClassNotify)
  {
    IONotificationPortDestroy(ioAccessoryManagerClassNotify);
    self->_ioAccessoryManagerClassNotify = 0;
  }

  [(accessorydMatchingPlugin *)self stopListeningForLDCMMitigationStatusChange];
  v10.receiver = self;
  v10.super_class = accessorydMatchingPlugin;
  [(accessorydMatchingPlugin *)&v10 dealloc];
}

- (void)startIOAccessoryManagerEventMonitoring
{
  ioAccessoryEventQueue = [(accessorydMatchingPlugin *)self ioAccessoryEventQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __66__accessorydMatchingPlugin_startIOAccessoryManagerEventMonitoring__block_invoke;
  block[3] = &unk_59250;
  block[4] = self;
  dispatch_async(ioAccessoryEventQueue, block);
}

- (void)stopIOAccessoryManagerEventMonitoring
{
  ioAccessoryEventQueue = [(accessorydMatchingPlugin *)self ioAccessoryEventQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __65__accessorydMatchingPlugin_stopIOAccessoryManagerEventMonitoring__block_invoke;
  block[3] = &unk_59250;
  block[4] = self;
  dispatch_async(ioAccessoryEventQueue, block);
}

- (void)startUSBRestrictedModeTimeoutMonitoring
{
  ioAccessoryEventQueue = [(accessorydMatchingPlugin *)self ioAccessoryEventQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __67__accessorydMatchingPlugin_startUSBRestrictedModeTimeoutMonitoring__block_invoke;
  block[3] = &unk_59250;
  block[4] = self;
  dispatch_async(ioAccessoryEventQueue, block);
}

- (void)stopUSBRestrictedModeTimeoutMonitoring
{
  ioAccessoryEventQueue = [(accessorydMatchingPlugin *)self ioAccessoryEventQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __66__accessorydMatchingPlugin_stopUSBRestrictedModeTimeoutMonitoring__block_invoke;
  block[3] = &unk_59250;
  block[4] = self;
  dispatch_async(ioAccessoryEventQueue, block);
}

- (void)startTRMMonitoring
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 4;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&def_3A0E8, v5, OS_LOG_TYPE_DEFAULT, "Starting TRM monitoring...", v19, 2u);
  }

  [(accessorydMatchingPlugin *)self setIoNotifyPortTRM:IONotificationPortCreate(kIOMainPortDefault)];
  ioNotifyPortTRM = [(accessorydMatchingPlugin *)self ioNotifyPortTRM];
  ioAccessoryEventQueue = [(accessorydMatchingPlugin *)self ioAccessoryEventQueue];
  IONotificationPortSetDispatchQueue(ioNotifyPortTRM, ioAccessoryEventQueue);

  v8 = IOServiceMatching("IOAccessoryTRM");
  ioNotifyPortTRM2 = [(accessorydMatchingPlugin *)self ioNotifyPortTRM];
  v10 = CFRetain(v8);
  IOServiceAddMatchingNotification(ioNotifyPortTRM2, "IOServiceFirstMatch", v10, serviceAddedTRM, self, &self->_ioAddedIteratorTRM);
  serviceAddedTRM(self, [(accessorydMatchingPlugin *)self ioAddedIteratorTRM]);
  ioNotifyPortTRM3 = [(accessorydMatchingPlugin *)self ioNotifyPortTRM];
  v12 = CFRetain(v8);
  IOServiceAddMatchingNotification(ioNotifyPortTRM3, "IOServiceTerminate", v12, serviceRemovedTRM, self, &self->_ioRemovedIteratorTRM);
  [(accessorydMatchingPlugin *)self ioRemovedIteratorTRM];
  serviceRemovedTRM(self);
  if (v8)
  {
    CFRelease(v8);
  }

  v13 = IOServiceMatching("IOPort");
  [(__CFDictionary *)v13 setObject:&off_63A18 forKey:@"IOPropertyMatch"];
  v14 = +[NSMutableDictionary dictionary];
  v15 = _portsPendingUserAuthorization;
  _portsPendingUserAuthorization = v14;

  v16 = +[NSMutableDictionary dictionary];
  v17 = _userNotificationsTRM;
  _userNotificationsTRM = v16;

  v18 = [[TRMPortManager alloc] initWithMatchingDictionary:v13 andDelegate:self];
  [(accessorydMatchingPlugin *)self setPortManager:v18];
}

- (void)stopTRMMonitoring
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 4;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&def_3A0E8, v5, OS_LOG_TYPE_DEFAULT, "Stopping TRM monitoring...", v6, 2u);
  }

  if ([(accessorydMatchingPlugin *)self ioNotifyPortTRM])
  {
    IONotificationPortDestroy([(accessorydMatchingPlugin *)self ioNotifyPortTRM]);
    [(accessorydMatchingPlugin *)self setIoNotifyPortTRM:0];
  }

  IOObjectRelease([(accessorydMatchingPlugin *)self ioAddedIteratorTRM]);
  IOObjectRelease([(accessorydMatchingPlugin *)self ioRemovedIteratorTRM]);
}

- (BOOL)launchDigitalIDClients
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  digitalIDTokenSet = [(accessorydMatchingPlugin *)self digitalIDTokenSet];
  v4 = [digitalIDTokenSet countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    *&v5 = 134218240;
    v15 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(digitalIDTokenSet);
        }

        if ([*(*(&v16 + 1) + 8 * i) unsignedLongLongValue])
        {
          v9 = gLogObjects;
          v10 = gNumLogObjects;
          if (gLogObjects)
          {
            v11 = gNumLogObjects < 1;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = v15;
              v22 = v9;
              v23 = 1024;
              v24 = v10;
              _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v12 = &_os_log_default;
            v13 = &_os_log_default;
          }

          else
          {
            v13 = *gLogObjects;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&def_3A0E8, v13, OS_LOG_TYPE_DEFAULT, "launchDigitalIDClients launching accessoryd", buf, 2u);
          }

          [(accessorydMatchingPlugin *)self digitalIDEventProvider];
          xpc_event_provider_token_fire();
        }
      }

      v6 = [digitalIDTokenSet countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return 0;
}

- (void)startListeningForIOAccessoryPortClass
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)stopListeningForIOAccessoryPortClass
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.carplay.allowed-changed", 0);
  if ([(accessorydMatchingPlugin *)self ioAccessoryPortClassNotify])
  {
    IONotificationPortDestroy([(accessorydMatchingPlugin *)self ioAccessoryPortClassNotify]);
    [(accessorydMatchingPlugin *)self setIoAccessoryPortClassNotify:0];
  }

  if ([(accessorydMatchingPlugin *)self ioAccessoryPortClassIteratorArrived])
  {
    IOObjectRelease([(accessorydMatchingPlugin *)self ioAccessoryPortClassIteratorArrived]);
    [(accessorydMatchingPlugin *)self setIoAccessoryPortClassIteratorArrived:0];
  }

  if ([(accessorydMatchingPlugin *)self ioAccessoryPortClassIteratorTerminated])
  {
    IOObjectRelease([(accessorydMatchingPlugin *)self ioAccessoryPortClassIteratorTerminated]);

    [(accessorydMatchingPlugin *)self setIoAccessoryPortClassIteratorTerminated:0];
  }
}

- (void)startBluetoothMatching
{
  btEventQueue = [(accessorydMatchingPlugin *)self btEventQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __50__accessorydMatchingPlugin_startBluetoothMatching__block_invoke;
  block[3] = &unk_59250;
  block[4] = self;
  dispatch_async(btEventQueue, block);
}

- (void)stopBluetoothMatching
{
  btEventQueue = [(accessorydMatchingPlugin *)self btEventQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__accessorydMatchingPlugin_stopBluetoothMatching__block_invoke;
  block[3] = &unk_59250;
  block[4] = self;
  dispatch_async(btEventQueue, block);
}

- (BOOL)attachToBTServer
{
  signal(30, drop_signal);
  bTSessionCallback = [NSString stringWithFormat:@"com.apple.accessoryd.btServiceMatching-%d", getpid(), BTSessionCallback];
  [bTSessionCallback cStringUsingEncoding:4];
  btEventQueue = [(accessorydMatchingPlugin *)self btEventQueue];
  v5 = BTSessionAttachWithQueue();

  if (v5)
  {
    if (gLogObjects && gNumLogObjects >= 2)
    {
      v6 = *(gLogObjects + 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v6 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [accessorydMatchingPlugin attachToBTServer];
    }
  }

  return v5 == 0;
}

- (BOOL)detachFromBTServer
{
  if (![(accessorydMatchingPlugin *)self btSession])
  {
    return 1;
  }

  [(accessorydMatchingPlugin *)self btSession];
  v3 = BTSessionDetachWithQueue();
  [(accessorydMatchingPlugin *)self setBtSession:0];
  if (!v3)
  {
    return 1;
  }

  if (gLogObjects && gNumLogObjects >= 2)
  {
    v4 = *(gLogObjects + 8);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v4 = &_os_log_default;
    v6 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [accessorydMatchingPlugin detachFromBTServer];
  }

  return 0;
}

- (void)findKnownBTDevices
{
  *buf = 136315138;
  *a2 = "[accessorydMatchingPlugin findKnownBTDevices]";
  _os_log_error_impl(&def_3A0E8, log, OS_LOG_TYPE_ERROR, "%s no supported service for this BT device\n", buf, 0xCu);
}

- (void)launchWirelessCarPlay:(BTDeviceImpl *)play
{
  memset(__s, 170, 18);
  if (!BTDeviceGetAddressString())
  {
    v3 = [[NSString alloc] initWithBytes:__s length:strlen(__s) encoding:4];
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v6 = &_os_log_default;
      v5 = &_os_log_default;
    }

    else
    {
      v6 = *(gLogObjects + 8);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&def_3A0E8, v6, OS_LOG_TYPE_DEFAULT, "Launching CarPlay with formattedBluetoothAddress: %@", &v7, 0xCu);
    }

    CRHandleConnectionForBluetoothAddress();
  }
}

- (void)setRoleSwapMaskForUSBPort
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)handleUSBPortAdded
{
  [(accessorydMatchingPlugin *)self setRearLightningUSBPortExists:1];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, CarPlayStateChanged, @"com.apple.carplay.allowed-changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CRIsCarPlayAllowed();
}

- (void)printRMEventArray
{
  p_cache = ACCAnalyticsLogger.cache;
  v3 = ACCAnalyticsLogger.cache;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    rmEventArray = [(accessorydMatchingPlugin *)self rmEventArray];
    *buf = 134217984;
    v62 = [rmEventArray count];
    _os_log_impl(&def_3A0E8, v6, OS_LOG_TYPE_DEFAULT, "printRMEventArray rmEventArray has count of: %lu", buf, 0xCu);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = [(accessorydMatchingPlugin *)self rmEventArray];
  v55 = [obj countByEnumeratingWithState:&v57 objects:v75 count:16];
  if (v55)
  {
    v8 = *v58;
    v47 = *v58;
    do
    {
      for (i = 0; i != v55; i = i + 1)
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v57 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = v10;
          v11 = v10;
          v12 = p_cache[387];
          v13 = *(v3 + 776);
          if (v12 && v13 >= 1)
          {
            v14 = *v12;
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v62 = v12;
              v63 = 1024;
              v64 = v13;
              _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v19 = &_os_log_default;
            v14 = &_os_log_default;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            rmEventArray2 = [(accessorydMatchingPlugin *)self rmEventArray];
            v21 = [rmEventArray2 indexOfObject:v11];
            *buf = 134217984;
            v62 = v21;
            _os_log_impl(&def_3A0E8, v14, OS_LOG_TYPE_DEFAULT, "AttachEvent object at index: %lu", buf, 0xCu);
          }

          v22 = p_cache[387];
          v23 = *(v3 + 776);
          if (v22 && v23 >= 1)
          {
            v24 = *v22;
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v62 = v22;
              v63 = 1024;
              v64 = v23;
              _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v25 = &_os_log_default;
            v24 = &_os_log_default;
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            timestamp = [v11 timestamp];
            unsignedLongLongValue = [timestamp unsignedLongLongValue];
            connectType = [v11 connectType];
            intValue = [connectType intValue];
            primaryPort = [v11 primaryPort];
            intValue2 = [primaryPort intValue];
            restrictedModeEnabled = [v11 restrictedModeEnabled];
            rmDialogShown = [v11 rmDialogShown];
            accSupoortsUSB = [v11 accSupoortsUSB];
            accSupoortsUART = [v11 accSupoortsUART];
            accSupoortsMikeyBus = [v11 accSupoortsMikeyBus];
            accDigitalID = [v11 accDigitalID];
            *buf = 134220034;
            v62 = unsignedLongLongValue;
            v63 = 1024;
            v64 = intValue;
            v65 = 1024;
            v66 = intValue2;
            p_cache = (ACCAnalyticsLogger + 16);
            v67 = 1024;
            *v68 = restrictedModeEnabled;
            *&v68[4] = 1024;
            *&v68[6] = rmDialogShown;
            LOWORD(v69) = 1024;
            *(&v69 + 2) = accSupoortsUSB;
            HIWORD(v69) = 1024;
            v70 = accSupoortsUART;
            v8 = v47;
            v71 = 1024;
            v72 = accSupoortsMikeyBus;
            v3 = (ACCAnalyticsLogger + 16);
            v73 = 2112;
            v74 = accDigitalID;
            _os_log_impl(&def_3A0E8, v24, OS_LOG_TYPE_DEFAULT, "timestamp: %llu\nconnectType: %d\nprimaryPort: %d\nrestrictedModeEnabled: %d\nrmDialogShown: %d\naccSupoortsUSB: %d\naccSupoortsUART: %d\naccSupoortsMikeyBus: %d\naccDigitalID: %@", buf, 0x40u);
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v56 = v10;
          v15 = v10;
          v16 = p_cache[387];
          v17 = *(v3 + 776);
          if (v16 && v17 >= 1)
          {
            v18 = *v16;
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v62 = v16;
              v63 = 1024;
              v64 = v17;
              _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v34 = &_os_log_default;
            v18 = &_os_log_default;
          }

          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            rmEventArray3 = [(accessorydMatchingPlugin *)self rmEventArray];
            v36 = [rmEventArray3 indexOfObject:v15];
            *buf = 134217984;
            v62 = v36;
            _os_log_impl(&def_3A0E8, v18, OS_LOG_TYPE_DEFAULT, "DetachEvent object at index: %lu", buf, 0xCu);
          }

          v37 = p_cache[387];
          v38 = *(v3 + 776);
          if (v37 && v38 >= 1)
          {
            v24 = *v37;
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v62 = v37;
              v63 = 1024;
              v64 = v38;
              _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v39 = &_os_log_default;
            v24 = &_os_log_default;
          }

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            timestamp2 = [v15 timestamp];
            unsignedLongLongValue2 = [timestamp2 unsignedLongLongValue];
            primaryPort2 = [v15 primaryPort];
            intValue3 = [primaryPort2 intValue];
            restrictedModeEnabled2 = [v15 restrictedModeEnabled];
            duration = [v15 duration];
            unsignedLongLongValue3 = [duration unsignedLongLongValue];
            accDigitalID2 = [v15 accDigitalID];
            *buf = 134219010;
            v62 = unsignedLongLongValue2;
            v63 = 1024;
            v64 = intValue3;
            v65 = 1024;
            v66 = restrictedModeEnabled2;
            p_cache = (ACCAnalyticsLogger + 16);
            v67 = 2048;
            *v68 = unsignedLongLongValue3;
            v8 = v47;
            *&v68[8] = 2112;
            v69 = accDigitalID2;
            _os_log_impl(&def_3A0E8, v24, OS_LOG_TYPE_DEFAULT, "timestamp: %llu\nprimaryPort: %d\nrestictedModeEnabled: %d\nduration: %llu\naccDigitalID: %@", buf, 0x2Cu);

            v3 = (ACCAnalyticsLogger + 16);
          }
        }
      }

      v55 = [obj countByEnumeratingWithState:&v57 objects:v75 count:16];
    }

    while (v55);
  }
}

- (void)processAnalyticsEventListUsingTime:(id)time scanReason:(BOOL)reason primaryPort:(id)port
{
  timeCopy = time;
  portCopy = port;
  v10 = +[NSMutableArray array];
  [(accessorydMatchingPlugin *)self removeStandardModeEvents];
  if (portCopy)
  {
    scanEventsListForPrimaryPortsSeen = 0;
    if (reason)
    {
LABEL_3:
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v12 = scanEventsListForPrimaryPortsSeen;
      v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v19;
        do
        {
          v16 = 0;
          do
          {
            if (*v19 != v15)
            {
              objc_enumerationMutation(v12);
            }

            if ([(accessorydMatchingPlugin *)self findUniqueEventsOnPrimaryPort:*(*(&v18 + 1) + 8 * v16) scanReason:1 resultsArray:v10, v18])
            {
              [(accessorydMatchingPlugin *)self postUniqueAnalyticEventToFigaro:v10 scanReason:1 scanTime:timeCopy];
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v14);
      }

      rmEventArray = [(accessorydMatchingPlugin *)self rmEventArray];
      [rmEventArray removeAllObjects];

      goto LABEL_16;
    }
  }

  else
  {
    scanEventsListForPrimaryPortsSeen = [(accessorydMatchingPlugin *)self scanEventsListForPrimaryPortsSeen];
    if (reason)
    {
      goto LABEL_3;
    }
  }

  if ([(accessorydMatchingPlugin *)self findUniqueEventsOnPrimaryPort:portCopy scanReason:0 resultsArray:v10])
  {
    [(accessorydMatchingPlugin *)self postUniqueAnalyticEventToFigaro:v10 scanReason:0 scanTime:timeCopy];
  }

LABEL_16:
  [(accessorydMatchingPlugin *)self printRMEventArray];
}

- (void)removeStandardModeEvents
{
  v31 = +[NSMutableArray array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  rmEventArray = [(accessorydMatchingPlugin *)self rmEventArray];
  v4 = [rmEventArray countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v37;
    *&v5 = 134218240;
    v30 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(rmEventArray);
        }

        v9 = *(*(&v36 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          if (([v10 restrictedModeEnabled] & 1) == 0)
          {
            [v31 addObject:v10];
            v11 = gLogObjects;
            v12 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 1)
            {
              v13 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v30;
                v43 = v11;
                v44 = 1024;
                v45 = v12;
                _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v17 = &_os_log_default;
              v13 = &_os_log_default;
            }

            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v18 = v13;
              v19 = "AttachEvent occurred in Standard Mode, skipping...";
              goto LABEL_26;
            }

            goto LABEL_27;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_29;
          }

          v14 = v9;
          if (([v14 restrictedModeEnabled] & 1) == 0)
          {
            [v31 addObject:v14];
            v15 = gLogObjects;
            v16 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 1)
            {
              v13 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v30;
                v43 = v15;
                v44 = 1024;
                v45 = v16;
                _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v20 = &_os_log_default;
              v13 = &_os_log_default;
            }

            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v18 = v13;
              v19 = "DetachEvent occurred in Standard Mode, skipping...";
LABEL_26:
              _os_log_impl(&def_3A0E8, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
            }

LABEL_27:
          }
        }

LABEL_29:
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [rmEventArray countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v6);
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v21 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v21 = &_os_log_default;
    v22 = &_os_log_default;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v31;
    _os_log_impl(&def_3A0E8, v21, OS_LOG_TYPE_DEFAULT, "eventsToRemove: %@", buf, 0xCu);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = v31;
  v24 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v33;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v32 + 1) + 8 * i);
        rmEventArray2 = [(accessorydMatchingPlugin *)self rmEventArray];
        [rmEventArray2 removeObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v25);
  }
}

- (id)scanEventsListForPrimaryPortsSeen
{
  v3 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  rmEventArray = [(accessorydMatchingPlugin *)self rmEventArray];
  v5 = [rmEventArray countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(rmEventArray);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        primaryPort = [v9 primaryPort];
        v11 = [v3 containsObject:primaryPort];

        if ((v11 & 1) == 0)
        {
          primaryPort2 = [v9 primaryPort];
          [v3 addObject:primaryPort2];
        }
      }

      v6 = [rmEventArray countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  if (gLogObjects)
  {
    v13 = gNumLogObjects < 1;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v15 = &_os_log_default;
    v14 = &_os_log_default;
  }

  else
  {
    v15 = *gLogObjects;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&def_3A0E8, v15, OS_LOG_TYPE_DEFAULT, "primaryPortsSeen: %@", buf, 0xCu);
  }

  return v3;
}

- (BOOL)areAttachEventsInList:(id)list
{
  listCopy = list;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [listCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(listCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        v6 |= objc_opt_isKindOfClass();
      }

      v5 = [listCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

- (BOOL)findUniqueEventsOnPrimaryPort:(id)port scanReason:(BOOL)reason resultsArray:(id)array
{
  reasonCopy = reason;
  portCopy = port;
  arrayCopy = array;
  [arrayCopy removeAllObjects];
  [(accessorydMatchingPlugin *)self printRMEventArray];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = [(accessorydMatchingPlugin *)self rmEventArray];
  v8 = [obj countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (!v8)
  {
    timestamp2 = 0;
    v12 = 0;
    primaryPort3 = 0;
    v10 = 0;
    goto LABEL_59;
  }

  v9 = v8;
  v66 = reasonCopy;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v68 = 0;
  v13 = *v76;
  do
  {
    v14 = 0;
    do
    {
      if (*v76 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v75 + 1) + 8 * v14);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;

        primaryPort = [v16 primaryPort];
        v18 = [primaryPort isEqualToNumber:portCopy];

        if (v18)
        {
          [arrayCopy addObject:v16];
        }

        v10 = v16;
        goto LABEL_33;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_33;
      }

      v71 = v10;
      v19 = v15;
      primaryPort2 = [v19 primaryPort];
      v21 = [primaryPort2 isEqualToNumber:portCopy];

      if (!v21)
      {

        goto LABEL_32;
      }

      primaryPort3 = [v19 primaryPort];

      rmEventArray = [(accessorydMatchingPlugin *)self rmEventArray];
      v23 = [rmEventArray indexOfObject:v19];

      timestamp = [v19 timestamp];

      [arrayCopy addObject:v19];
      v24 = v23 + 1;
      rmEventArray2 = [(accessorydMatchingPlugin *)self rmEventArray];
      v26 = [rmEventArray2 count];

      if (v24 == v26)
      {
        CurrentUnixTimeMS = systemInfo_getCurrentUnixTimeMS();
        v28 = gLogObjects;
        v29 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v30 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v80 = v28;
            *&v80[8] = 1024;
            *&v80[10] = v29;
            _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v39 = &_os_log_default;
          v30 = &_os_log_default;
        }

        v12 = timestamp;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          unsignedLongLongValue = [timestamp unsignedLongLongValue];
          unsignedLongLongValue2 = [timestamp unsignedLongLongValue];
          *buf = 134218496;
          *v80 = CurrentUnixTimeMS;
          *&v80[8] = 2048;
          *&v80[10] = unsignedLongLongValue;
          v81 = 2048;
          v82 = CurrentUnixTimeMS - unsignedLongLongValue2;
          _os_log_impl(&def_3A0E8, v30, OS_LOG_TYPE_DEFAULT, "now: %llu, currentDetachEventTimestamp: %llu, delta: %llu", buf, 0x20u);
        }

        v42 = CurrentUnixTimeMS - [timestamp unsignedLongLongValue];
        if (v42 <= 0xEA60)
        {
          v11 = primaryPort3;
          goto LABEL_32;
        }

        reasonCopy = 1;
        timestamp2 = v68;
        goto LABEL_58;
      }

      while (1)
      {
        rmEventArray3 = [(accessorydMatchingPlugin *)self rmEventArray];
        v32 = [rmEventArray3 count];

        if (v24 >= v32)
        {

          v11 = primaryPort3;
          v12 = timestamp;
          goto LABEL_32;
        }

        rmEventArray4 = [(accessorydMatchingPlugin *)self rmEventArray];
        v34 = [rmEventArray4 objectAtIndex:v24];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

LABEL_22:

        ++v24;
      }

      v35 = v34;
      primaryPort4 = [v35 primaryPort];
      v37 = [primaryPort3 isEqualToNumber:primaryPort4];

      if (!v37)
      {
        goto LABEL_21;
      }

      timestamp2 = [v35 timestamp];

      if (!timestamp)
      {
        v68 = timestamp2;
LABEL_21:

        goto LABEL_22;
      }

      v43 = gLogObjects;
      v44 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v45 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v80 = v43;
          *&v80[8] = 1024;
          *&v80[10] = v44;
          _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v46 = &_os_log_default;
        v45 = &_os_log_default;
      }

      v47 = timestamp;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        unsignedLongLongValue3 = [timestamp unsignedLongLongValue];
        unsignedLongLongValue4 = [timestamp2 unsignedLongLongValue];
        unsignedLongLongValue5 = [timestamp2 unsignedLongLongValue];
        unsignedLongLongValue6 = [timestamp unsignedLongLongValue];
        *buf = 134218496;
        v51 = unsignedLongLongValue5 - unsignedLongLongValue6;
        v47 = timestamp;
        *v80 = unsignedLongLongValue3;
        *&v80[8] = 2048;
        *&v80[10] = unsignedLongLongValue4;
        v81 = 2048;
        v82 = v51;
        _os_log_impl(&def_3A0E8, v45, OS_LOG_TYPE_DEFAULT, "currentDetachEventTimestamp: %llu, currentAttachEventTimestamp: %llu, delta: %llu", buf, 0x20u);
      }

      unsignedLongLongValue7 = [timestamp2 unsignedLongLongValue];
      if ((unsignedLongLongValue7 - [v47 unsignedLongLongValue]) > 0xEA60 || (objc_msgSend(v71, "accDigitalID"), v53 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "accDigitalID"), v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v53, "isEqualToData:", v54), v54, v53, !v55))
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v64 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [AirplaneMode init];
          }

          v64 = &_os_log_default;
          v65 = &_os_log_default;
        }

        v12 = timestamp;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&def_3A0E8, v64, OS_LOG_TYPE_DEFAULT, "Unique event detected", buf, 2u);
        }

        reasonCopy = 1;
LABEL_58:
        v10 = v71;
        goto LABEL_59;
      }

      v56 = gLogObjects;
      v57 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v58 = *gLogObjects;
      }

      else
      {
        v58 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v80 = v56;
          *&v80[8] = 1024;
          *&v80[10] = v57;
          _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v59 = &_os_log_default;
      }

      v12 = timestamp;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&def_3A0E8, v58, OS_LOG_TYPE_DEFAULT, "Flurry detected", buf, 2u);
      }

      v11 = primaryPort3;
      v68 = timestamp2;
LABEL_32:
      v10 = v71;
LABEL_33:
      v14 = v14 + 1;
    }

    while (v14 != v9);
    v60 = [obj countByEnumeratingWithState:&v75 objects:v83 count:16];
    v9 = v60;
  }

  while (v60);
  timestamp2 = v68;
  primaryPort3 = v11;
  reasonCopy = v66;
LABEL_59:

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v61 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v61 = &_os_log_default;
    v62 = &_os_log_default;
  }

  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v80 = reasonCopy;
    *&v80[4] = 2112;
    *&v80[6] = arrayCopy;
    _os_log_impl(&def_3A0E8, v61, OS_LOG_TYPE_DEFAULT, "uniqueEventDetected: %d, uniqueEvent: %@", buf, 0x12u);
  }

  return reasonCopy;
}

- (id)bucketizeRMDurations:(id)durations
{
  unsignedLongLongValue = [durations unsignedLongLongValue];
  v4 = unsignedLongLongValue;
  v5 = unsignedLongLongValue >> 3;
  if (unsignedLongLongValue >= 0x3E8)
  {
    if (unsignedLongLongValue >= 0xBB8)
    {
      if (unsignedLongLongValue >> 4 >= 0x177)
      {
        if (v5 >= 0x55F)
        {
          if (v5 >= 0xF23)
          {
            if (unsignedLongLongValue >= 0xEE48)
            {
              if (unsignedLongLongValue >= 0x92BA8)
              {
                if (unsignedLongLongValue >= 0x1B7B28)
                {
                  if (unsignedLongLongValue < 0x36F268)
                  {
                    v6 = 9;
                  }

                  else
                  {
                    v6 = 10;
                  }
                }

                else
                {
                  v6 = 8;
                }
              }

              else
              {
                v6 = 7;
              }
            }

            else
            {
              v6 = 6;
            }
          }

          else
          {
            v6 = 5;
          }
        }

        else
        {
          v6 = 4;
        }
      }

      else
      {
        v6 = 3;
      }
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 1;
  }

  if (gLogObjects)
  {
    v7 = gNumLogObjects < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *gLogObjects;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = 134218496;
    v13 = v4;
    v14 = 2048;
    v15 = ((v5 * 0x20C49BA5E353F7CFuLL) >> 64) >> 4;
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&def_3A0E8, v9, OS_LOG_TYPE_INFO, "bucketizeRMDurations rawTimeInMS: %llu, rawTimeInS: %llu bucketValue: %d", &v12, 0x1Cu);
  }

  v10 = [NSNumber numberWithUnsignedChar:v6];

  return v10;
}

- (void)postUniqueAnalyticEventToFigaro:(id)figaro scanReason:(BOOL)reason scanTime:(id)time
{
  figaroCopy = figaro;
  timeCopy = time;
  if (![(accessorydMatchingPlugin *)self areAttachEventsInList:figaroCopy])
  {
    v23 = timeCopy;
    v24 = 0;
    v90 = 0;
    primaryPort = 0;
    v86 = 0;
    v88 = 0;
    v82 = 0;
    v25 = 0;
    goto LABEL_52;
  }

  firstObject = [figaroCopy firstObject];
  objc_opt_class();
  v76 = firstObject;
  if (objc_opt_isKindOfClass())
  {
    v10 = firstObject;
    accDigitalID = [v10 accDigitalID];
    accSupoortsMikeyBus = [v10 accSupoortsMikeyBus];
    accSupoortsUART = [v10 accSupoortsUART];
    accSupoortsUSB = [v10 accSupoortsUSB];
    rmDialogShown = [v10 rmDialogShown];
    primaryPort = [v10 primaryPort];
    connectType = [v10 connectType];
    currentLimit = [v10 currentLimit];
    chargeVoltage = [v10 chargeVoltage];
    unsignedLongLongValue = [timeCopy unsignedLongLongValue];
    v79 = v10;
    timestamp = [v10 timestamp];
    v90 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", unsignedLongLongValue - [timestamp unsignedLongLongValue]);

    v16 = currentLimit;
    v80 = accDigitalID;
    if (currentLimit)
    {
      v17 = [NSNumber numberWithInt:0];
      v18 = [currentLimit isEqualToNumber:v17];
      LOBYTE(currentLimit) = 0;
      if ((v18 & 1) == 0 && chargeVoltage)
      {
        v19 = [NSNumber numberWithInt:0];
        LODWORD(currentLimit) = [chargeVoltage isEqualToNumber:v19] ^ 1;
      }
    }

    v20 = @"unlock";
    v21 = connectType;
    rmDialogShown2 = rmDialogShown;
  }

  else
  {
    accSupoortsUSB = 0;
    accSupoortsUART = 0;
    LOBYTE(currentLimit) = 0;
    rmDialogShown2 = 0;
    v79 = 0;
    v80 = 0;
    v90 = 0;
    primaryPort = 0;
    chargeVoltage = 0;
    v16 = 0;
    v21 = 0;
    accSupoortsMikeyBus = 0;
    v20 = 0;
  }

  lastObject = [figaroCopy lastObject];
  objc_opt_class();
  v77 = timeCopy;
  v78 = figaroCopy;
  v75 = lastObject;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !v79)
    {
      goto LABEL_28;
    }

    v89 = rmDialogShown2;
    v84 = currentLimit;
    currentLimit = v21;
    timestamp2 = [lastObject timestamp];
    v33 = v16;
    unsignedLongLongValue2 = [timestamp2 unsignedLongLongValue];
    timestamp3 = [v79 timestamp];
    v36 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", unsignedLongLongValue2 - [timestamp3 unsignedLongLongValue]);

    chargeVoltage2 = chargeVoltage;
    currentLimit2 = v33;
    connectType2 = currentLimit;
    LOBYTE(currentLimit) = v84;
    v90 = v36;
    figaroCopy = v78;
    v20 = @"detach";
    goto LABEL_26;
  }

  v83 = currentLimit;
  currentLimit = chargeVoltage;
  v27 = v21;
  timestamp2 = lastObject;
  if (!v79)
  {
    v89 = rmDialogShown2;
    unsignedLongLongValue3 = [timeCopy unsignedLongLongValue];
    currentLimit2 = v16;
    v38 = unsignedLongLongValue3;
    timestamp3 = [timestamp2 timestamp];
    v39 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", v38 - [timestamp3 unsignedLongLongValue]);

    chargeVoltage2 = currentLimit;
    connectType2 = v27;
    v90 = v39;
    figaroCopy = v78;
    LOBYTE(currentLimit) = v83;
LABEL_26:

    rmDialogShown2 = v89;
    goto LABEL_27;
  }

  v29 = [figaroCopy indexOfObject:?];
  if (v29 != [figaroCopy indexOfObject:timestamp2])
  {
    currentLimit2 = [timestamp2 currentLimit];

    chargeVoltage2 = [timestamp2 chargeVoltage];

    connectType2 = [timestamp2 connectType];

    if (rmDialogShown2)
    {
      rmDialogShown2 = 1;
    }

    else
    {
      rmDialogShown2 = [timestamp2 rmDialogShown];
    }

    LOBYTE(currentLimit) = v83;
    if (!currentLimit2)
    {
      goto LABEL_27;
    }

    v89 = rmDialogShown2;
    timestamp3 = [NSNumber numberWithInt:0];
    if (([currentLimit2 isEqualToNumber:timestamp3] & 1) == 0 && chargeVoltage2)
    {
      v40 = [NSNumber numberWithInt:0];
      v41 = [chargeVoltage2 isEqualToNumber:v40] ^ 1;

      figaroCopy = v78;
      LOBYTE(currentLimit) = v41 | v83;
    }

    goto LABEL_26;
  }

  currentLimit2 = v16;
  chargeVoltage2 = currentLimit;
  connectType2 = v27;
  LOBYTE(currentLimit) = v83;
LABEL_27:

  chargeVoltage = chargeVoltage2;
  v21 = connectType2;
  v16 = currentLimit2;
LABEL_28:
  v42 = [figaroCopy count] > 2;
  v43 = CFStringCreateFromCFData(v80, @"%02X");
  v97[0] = @"bucketedEventDuration";
  v69 = [(accessorydMatchingPlugin *)self bucketizeRMDurations:v90];
  v98[0] = v69;
  v97[1] = @"flurryOccurred";
  v44 = [NSNumber numberWithBool:v42];
  v45 = @"unknown";
  if (v20)
  {
    v45 = v20;
  }

  v68 = v44;
  v98[1] = v44;
  v98[2] = v45;
  v97[2] = @"eventEnd";
  v97[3] = @"lightningDigitalID";
  cf = v43;
  if (v43)
  {
    v46 = CFRetain(v43);
  }

  else
  {
    v46 = 0;
  }

  v67 = v46;
  v98[3] = v46;
  v97[4] = @"supportsUSB";
  v72 = [NSNumber numberWithBool:accSupoortsUSB];
  v98[4] = v72;
  v97[5] = @"supportsUART";
  v74 = [NSNumber numberWithBool:accSupoortsUART];
  v98[5] = v74;
  v97[6] = @"supportsMikeyBus";
  v66 = [NSNumber numberWithBool:accSupoortsMikeyBus];
  v98[6] = v66;
  v97[7] = @"supportsAIDBulkPipes";
  v65 = [NSNumber numberWithBool:0];
  v98[7] = v65;
  v97[8] = @"unlockDialogSeen";
  v64 = [NSNumber numberWithBool:rmDialogShown2];
  v98[8] = v64;
  v97[9] = @"chargingCapable";
  v47 = [NSNumber numberWithBool:currentLimit & 1];
  v98[9] = v47;
  v97[10] = @"lightningPrimaryPortNumber";
  v48 = primaryPort;
  if (!primaryPort)
  {
    v48 = [NSNumber numberWithInt:0];
  }

  v98[10] = v48;
  v97[11] = @"chargingVoltage";
  v49 = chargeVoltage;
  if (!chargeVoltage)
  {
    v49 = [NSNumber numberWithInt:0];
  }

  v86 = chargeVoltage;
  v88 = v16;
  v98[11] = v49;
  v97[12] = @"chargingCurrent";
  v50 = v16;
  if (!v16)
  {
    v50 = [NSNumber numberWithInt:0];
  }

  v98[12] = v50;
  v97[13] = @"lightningCableType";
  v51 = v21;
  v52 = v21;
  if (!v21)
  {
    v51 = [NSNumber numberWithInt:0];
  }

  v98[13] = v51;
  v98[14] = @"1.1";
  v97[14] = @"eventVersion";
  v97[15] = @"restrictedModeTimeout";
  v53 = [NSNumber numberWithInt:[(accessorydMatchingPlugin *)self usbRestrictedModeTimeout]];
  v98[15] = v53;
  v54 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:16];
  v55 = [NSMutableDictionary dictionaryWithDictionary:v54];

  if (!v52)
  {
  }

  figaroCopy = v78;
  if (!v88)
  {
  }

  if (!v86)
  {
  }

  v82 = v52;
  if (!primaryPort)
  {
  }

  v56 = [ACCAnalytics loggerForUser:0];
  [v56 logACCAnalyticsForEventNamed:@"accessoryConnectedDuringRM" withAttributes:v55];

  v25 = v80;
  if (cf)
  {
    CFRelease(cf);
  }

  v23 = v77;
  v24 = v79;
LABEL_52:
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v57 = figaroCopy;
  v58 = [v57 countByEnumeratingWithState:&v92 objects:v96 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v93;
    do
    {
      for (i = 0; i != v59; i = i + 1)
      {
        if (*v93 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v92 + 1) + 8 * i);
        rmEventArray = [(accessorydMatchingPlugin *)self rmEventArray];
        [rmEventArray removeObject:v62];
      }

      v59 = [v57 countByEnumeratingWithState:&v92 objects:v96 count:16];
    }

    while (v59);
  }
}

- (void)updateRMDialogShownForPrimaryPort:(id)port
{
  portCopy = port;
  rmEventArray = [(accessorydMatchingPlugin *)self rmEventArray];
  v5 = [rmEventArray count];

  if ((v5 - 1) >= 0)
  {
    do
    {
      --v5;
      rmEventArray2 = [(accessorydMatchingPlugin *)self rmEventArray];
      v7 = [rmEventArray2 objectAtIndex:v5];

      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          primaryPort = [v8 primaryPort];
          v10 = [primaryPort isEqualToNumber:portCopy];

          if (v10)
          {
            [v8 setRmDialogShown:1];

            break;
          }
        }
      }
    }

    while (v5 > 0);
  }
}

- (void)updateUSBConectType:(id)type ForPrimaryPort:(id)port WithDigitalID:(id)d
{
  typeCopy = type;
  portCopy = port;
  dCopy = d;
  rmEventArray = [(accessorydMatchingPlugin *)self rmEventArray];
  v11 = [rmEventArray count];

  if ((v11 - 1) < 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    --v11;
    rmEventArray2 = [(accessorydMatchingPlugin *)self rmEventArray];
    v13 = [rmEventArray2 objectAtIndex:v11];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v13;
      primaryPort = [v18 primaryPort];
      if ([primaryPort isEqualToNumber:portCopy])
      {
        accDigitalID = [v18 accDigitalID];
        v20 = [accDigitalID isEqualToData:dCopy];

        if (v20)
        {
          goto LABEL_14;
        }

        goto LABEL_11;
      }

LABEL_10:

LABEL_11:
    }

    if (v11 <= 0)
    {
      goto LABEL_15;
    }
  }

  v14 = v13;
  primaryPort = [v14 primaryPort];
  if (![primaryPort isEqualToNumber:portCopy])
  {
    goto LABEL_10;
  }

  accDigitalID2 = [v14 accDigitalID];
  v17 = [accDigitalID2 isEqualToData:dCopy];

  if (!v17)
  {
    goto LABEL_11;
  }

  [v14 setConnectType:typeCopy];
LABEL_14:

LABEL_15:
}

- (void)updateUSBChargeCurrent:(id)current AndChargeVoltage:(id)voltage ForPrimaryPort:(id)port WithDigitalID:(id)d
{
  currentCopy = current;
  voltageCopy = voltage;
  portCopy = port;
  dCopy = d;
  rmEventArray = [(accessorydMatchingPlugin *)self rmEventArray];
  v12 = [rmEventArray count];

  if ((v12 - 1) < 0)
  {
    goto LABEL_21;
  }

  while (1)
  {
    --v12;
    rmEventArray2 = [(accessorydMatchingPlugin *)self rmEventArray];
    v14 = [rmEventArray2 objectAtIndex:v12];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v15 = v14;
    primaryPort = [v15 primaryPort];
    if (([primaryPort isEqualToNumber:portCopy] & 1) == 0)
    {

      goto LABEL_7;
    }

    accDigitalID = [v15 accDigitalID];
    v18 = [accDigitalID isEqualToData:dCopy];

    if (v18)
    {
      break;
    }

LABEL_7:

LABEL_8:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v14;
      primaryPort2 = [v19 primaryPort];
      if ([primaryPort2 isEqualToNumber:portCopy])
      {
        accDigitalID2 = [v19 accDigitalID];
        v22 = [accDigitalID2 isEqualToData:dCopy];

        if (v22)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }
    }

    if (v12 <= 0)
    {
      goto LABEL_21;
    }
  }

  [v15 setCurrentLimit:currentCopy];
  [v15 setChargeVoltage:voltageCopy];
  currentLimit = [v15 currentLimit];
  v24 = [NSNumber numberWithInt:0];
  if ([currentLimit isEqualToNumber:v24])
  {
  }

  else
  {
    chargeVoltage = [v15 chargeVoltage];
    v26 = [NSNumber numberWithInt:0];
    v27 = [chargeVoltage isEqualToNumber:v26];

    if ((v27 & 1) == 0)
    {
      [v15 setAccSupoortsCharging:1];
    }
  }

LABEL_20:

LABEL_21:
}

- (BOOL)doAttachEventsForPrimaryPortExistInList:(id)list
{
  listCopy = list;
  rmEventArray = [(accessorydMatchingPlugin *)self rmEventArray];
  v6 = [rmEventArray count];

  v7 = v6 - 1;
  if ((v6 - 1) < 0)
  {
LABEL_7:
    v14 = 0;
  }

  else
  {
    while (1)
    {
      rmEventArray2 = [(accessorydMatchingPlugin *)self rmEventArray];
      v9 = [rmEventArray2 objectAtIndex:v7];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        primaryPort = [v9 primaryPort];
        v11 = [primaryPort isEqualToNumber:listCopy];

        if (v11)
        {
          v14 = 1;
          goto LABEL_10;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        primaryPort2 = [v9 primaryPort];
        v13 = [primaryPort2 isEqualToNumber:listCopy];

        if (v13)
        {
          break;
        }
      }

      if (--v7 < 0)
      {
        goto LABEL_7;
      }
    }

    v14 = 0;
LABEL_10:
  }

  return v14;
}

- (void)trmStatusDidChange
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 4;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v5 = &_os_log_default;
    v4 = &_os_log_default;
  }

  else
  {
    v5 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&def_3A0E8, v5, OS_LOG_TYPE_DEFAULT, "TRM status changed!", buf, 2u);
  }

  shouldPresentTRMDialog = _shouldPresentTRMDialog();
  isLightning = self->_isLightning;
  if (shouldPresentTRMDialog)
  {
    if (self->_isLightning)
    {
      [(accessorydMatchingPlugin *)self addUserNotificationForPort:0];
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      allValues = [_portsPendingUserAuthorization allValues];
      v9 = [allValues countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v27;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(allValues);
            }

            [(accessorydMatchingPlugin *)self addUserNotificationForPort:*(*(&v26 + 1) + 8 * i)];
          }

          v10 = [allValues countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v10);
      }
    }
  }

  else if (self->_isLightning)
  {
    _dismissUnlockDialog();
  }

  else
  {
    allKeys = [_userNotificationsTRM allKeys];
    v14 = [NSMutableSet setWithArray:allKeys];

    allKeys2 = [_portsPendingUserAuthorization allKeys];
    v16 = [NSSet setWithArray:allKeys2];

    [v14 minusSet:v16];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v23;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [(accessorydMatchingPlugin *)self removeUserNotificationForPort:*(*(&v22 + 1) + 8 * j), v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v19);
    }
  }
}

- (void)addUserNotificationForPort:(id)port
{
  portCopy = port;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = portCopy;
    _os_log_impl(&def_3A0E8, v7, OS_LOG_TYPE_DEFAULT, "Adding user notification... (port: %@)", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  if (!portCopy)
  {
    goto LABEL_14;
  }

  v8 = _userNotificationsTRM;
  v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [portCopy registryEntryID]);
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v10;

  if (*(*(&buf + 1) + 40))
  {
    v12 = _uiQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke;
    block[3] = &unk_59970;
    v21[0] = portCopy;
    v21[1] = &buf;
    dispatch_async(v12, block);

    v13 = v21;
  }

  else
  {
LABEL_14:
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_308;
    v18[3] = &unk_594D8;
    v19[2] = &buf;
    v14 = portCopy;
    v19[0] = v14;
    v19[1] = self;
    if (addUserNotificationForPort__onceToken != -1)
    {
      dispatch_once(&addUserNotificationForPort__onceToken, v18);
    }

    v15 = _uiQueue();
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_320;
    v16[3] = &unk_59250;
    v17 = v14;
    dispatch_async(v15, v16);

    v13 = v19;
  }

  _Block_object_dispose(&buf, 8);
}

- (void)removeUserNotificationForPort:(id)port
{
  portCopy = port;
  v4 = _uiQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __58__accessorydMatchingPlugin_removeUserNotificationForPort___block_invoke;
  block[3] = &unk_59250;
  v7 = portCopy;
  v5 = portCopy;
  dispatch_async(v4, block);
}

- (void)startListeningForLDCMMitigationStatusChange
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = self;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IOServiceAddMatchingNotification failed: %08x", v6, 8u);
  }

  *a3 = a2;
}

- (void)stopListeningForLDCMMitigationStatusChange
{
  if ([(accessorydMatchingPlugin *)self ioNotifyPortLDCM])
  {
    IONotificationPortDestroy([(accessorydMatchingPlugin *)self ioNotifyPortLDCM]);
    [(accessorydMatchingPlugin *)self setIoNotifyPortLDCM:0];
  }

  if ([(accessorydMatchingPlugin *)self ioNotificationLDCM])
  {
    IOObjectRelease([(accessorydMatchingPlugin *)self ioNotificationLDCM]);
    [(accessorydMatchingPlugin *)self setIoNotificationLDCM:0];
  }

  if ([(accessorydMatchingPlugin *)self ioAddedIteratorLDCM])
  {
    IOObjectRelease([(accessorydMatchingPlugin *)self ioAddedIteratorLDCM]);

    [(accessorydMatchingPlugin *)self setIoAddedIteratorLDCM:0];
  }
}

- (void)portManager:(id)manager didAddPort:(id)port
{
  managerCopy = manager;
  portCopy = port;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = portCopy;
    _os_log_impl(&def_3A0E8, v10, OS_LOG_TYPE_DEFAULT, "Port added: %@", buf, 0xCu);
  }

  if ([portCopy authorizationRequired] && objc_msgSend(portCopy, "userAuthorizationPending"))
  {
    v11 = _uiQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __51__accessorydMatchingPlugin_portManager_didAddPort___block_invoke;
    block[3] = &unk_59250;
    v13 = portCopy;
    dispatch_sync(v11, block);

    [(accessorydMatchingPlugin *)self trmStatusDidChange];
  }
}

- (void)portManager:(id)manager didRemovePort:(id)port
{
  managerCopy = manager;
  portCopy = port;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = portCopy;
    _os_log_impl(&def_3A0E8, v10, OS_LOG_TYPE_DEFAULT, "Port removed: %@", buf, 0xCu);
  }

  v11 = _uiQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __54__accessorydMatchingPlugin_portManager_didRemovePort___block_invoke;
  block[3] = &unk_59250;
  v14 = portCopy;
  v12 = portCopy;
  dispatch_sync(v11, block);

  [(accessorydMatchingPlugin *)self trmStatusDidChange];
}

- (void)portManager:(id)manager didUpdateAuthorizationStateForPort:(id)port
{
  managerCopy = manager;
  portCopy = port;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 4;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = portCopy;
    _os_log_impl(&def_3A0E8, v10, OS_LOG_TYPE_DEFAULT, "Port authorization state updated: %@", buf, 0xCu);
  }

  v11 = _uiQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __75__accessorydMatchingPlugin_portManager_didUpdateAuthorizationStateForPort___block_invoke;
  block[3] = &unk_59250;
  v14 = portCopy;
  v12 = portCopy;
  dispatch_sync(v11, block);

  [(accessorydMatchingPlugin *)self trmStatusDidChange];
}

- (void)intrusiveUIStateDidChange:(BOOL)change forService:(id)service
{
  changeCopy = change;
  serviceCopy = service;
  if (gLogObjects)
  {
    v6 = gNumLogObjects <= 4;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (changeCopy)
  {
    if (v7)
    {
      v8 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v8 = &_os_log_default;
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [accessorydMatchingPlugin intrusiveUIStateDidChange:forService:];
    }
  }

  else
  {
    if (v7)
    {
      v9 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v9 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [accessorydMatchingPlugin intrusiveUIStateDidChange:forService:];
    }

    [serviceCopy invalidate];
  }
}

- (void)serverRunningDidChange:(id)change status:(int)status
{
  changeCopy = change;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 5;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [accessorydMatchingPlugin serverRunningDidChange:status:];
  }
}

- (accessorydMatchingPlugin)initWithModule:(void *)module
{
  selfCopy = self;
  if (module)
  {
    init_logging();
    v8 = [(accessorydMatchingPlugin *)selfCopy init];
    selfCopy = v8;
    if (v8)
    {
      v8->_eventModule = module;
      v9 = [[NSMutableSet alloc] initWithCapacity:1];
      digitalIDTokenSet = selfCopy->_digitalIDTokenSet;
      selfCopy->_digitalIDTokenSet = v9;

      v11 = [[NSMutableSet alloc] initWithCapacity:1];
      btServiceTokenSet = selfCopy->_btServiceTokenSet;
      selfCopy->_btServiceTokenSet = v11;

      v13 = dispatch_queue_create("accessorydMatchingPlugin_AccPowerTimerQueue", 0);
      accPowerQueue = selfCopy->_accPowerQueue;
      selfCopy->_accPowerQueue = v13;

      accPowerTimer = selfCopy->_accPowerTimer;
      selfCopy->_accPowerTimer = 0;

      v16 = dispatch_queue_create("accessorydMatchingPlugin_SystemPowerQueue", 0);
      systemPowerQueue = selfCopy->_systemPowerQueue;
      selfCopy->_systemPowerQueue = v16;

      selfCopy->_systemPowerNotifyPortRef = 0;
      selfCopy->_systemPowerIterator = 0;
      notifier = &selfCopy->_systemPowerIterator;
      selfCopy->_systemPowerPort = 0;
      CFRunLoopGetMain();
      if (!IOAccessoryStartVoltageEventMonitor())
      {
        OUTLINED_FUNCTION_13();
        if (v3 && v4 >= 1)
        {
          v4 = *v3;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_1();
            OUTLINED_FUNCTION_9(&def_3A0E8, &_os_log_default, v165, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v166, v167, v168, v169, notifier, v176, buf[0]);
          }

          v4 = &_os_log_default;
          v18 = &_os_log_default;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          OUTLINED_FUNCTION_16(&def_3A0E8, v4, v19, "Unable to start LDCM monitoring", buf);
        }
      }

      selfCopy->_btSession = 0;
      *&selfCopy->_digitalIDMatchingEnabled = 0;
      selfCopy->_ioAccessoryManagerClassIteratorArrived = 0;
      selfCopy->_ioAccessoryManagerClassIteratorTerminated = 0;
      chargeConfigDict = selfCopy->_chargeConfigDict;
      *&selfCopy->_ioAccessoryManagerClassNotify = 0u;

      selfCopy->_isCarPlayAllowed = 0;
      v21 = dispatch_queue_create("accessorydMatchingPlugin_CarPlayEventQueue", 0);
      carPlayEventQueue = selfCopy->_carPlayEventQueue;
      selfCopy->_carPlayEventQueue = v21;

      v23 = dispatch_queue_create("com.apple.accessoryd.uea.IOAccessoryEventQueue", 0);
      ioAccessoryEventQueue = selfCopy->_ioAccessoryEventQueue;
      selfCopy->_ioAccessoryEventQueue = v23;

      v25 = dispatch_queue_create("accessorydMatchingPlugin_BTEventQueue", 0);
      btEventQueue = selfCopy->_btEventQueue;
      selfCopy->_btEventQueue = v25;

      selfCopy->_isIOAccessoryManagerMonitorRunning = 0;
      selfCopy->_ioResourceNotifyPort = 0;
      *&selfCopy->_ioAccessoryPortClassIteratorArrived = 0u;
      v27 = objc_alloc_init(NSMutableArray);
      rmEventArray = selfCopy->_rmEventArray;
      selfCopy->_rmEventArray = v27;

      selfCopy->_roleSwapMaskWritten = 0;
      v29 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.accessoryd.plugin"];
      pluginDefaults = selfCopy->_pluginDefaults;
      selfCopy->_pluginDefaults = v29;

      [OUTLINED_FUNCTION_21() objectForKey:@"cachedDigitalID"];
      objc_claimAutoreleasedReturnValue();
      v31 = [OUTLINED_FUNCTION_15() dictionaryWithDictionary:?];
      digitalIDCacheDict = selfCopy->_digitalIDCacheDict;
      selfCopy->_digitalIDCacheDict = v31;

      [OUTLINED_FUNCTION_21() objectForKey:@"uartDetachTimes"];
      objc_claimAutoreleasedReturnValue();
      v33 = [OUTLINED_FUNCTION_15() dictionaryWithDictionary:?];
      uartAccessoryDetachTimesDict = selfCopy->_uartAccessoryDetachTimesDict;
      selfCopy->_uartAccessoryDetachTimesDict = v33;

      [OUTLINED_FUNCTION_21() objectForKey:@"mikeyBusDetachTimes"];
      objc_claimAutoreleasedReturnValue();
      v35 = [OUTLINED_FUNCTION_15() dictionaryWithDictionary:?];
      mikeyBusAccessoryDetachTimesDict = selfCopy->_mikeyBusAccessoryDetachTimesDict;
      selfCopy->_mikeyBusAccessoryDetachTimesDict = v35;

      [OUTLINED_FUNCTION_21() objectForKey:@"aidBulkPipeDetachTimes"];
      objc_claimAutoreleasedReturnValue();
      v37 = [OUTLINED_FUNCTION_15() dictionaryWithDictionary:?];
      aidBulkPipeAccessoryDetachTimesDict = selfCopy->_aidBulkPipeAccessoryDetachTimesDict;
      selfCopy->_aidBulkPipeAccessoryDetachTimesDict = v37;

      v39 = [(NSUserDefaults *)selfCopy->_pluginDefaults objectForKey:@"lastUSBDetach"];
      lastUSBAccessoryDetachTime = selfCopy->_lastUSBAccessoryDetachTime;
      selfCopy->_lastUSBAccessoryDetachTime = v39;

      OUTLINED_FUNCTION_13();
      if (v3 && v4 >= 1)
      {
        v41 = *v3;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_1_1();
          OUTLINED_FUNCTION_9(&def_3A0E8, &_os_log_default, v125, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v126, v127, v128, v129, notifier, v176, buf[0]);
        }

        v41 = &_os_log_default;
        v42 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_18())
      {
        v43 = selfCopy->_digitalIDCacheDict;
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_2_0();
        _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      }

      OUTLINED_FUNCTION_13();
      if (v3 && v41 >= 1)
      {
        v49 = *v3;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_1_1();
          OUTLINED_FUNCTION_9(&def_3A0E8, &_os_log_default, v130, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v131, v132, v133, v134, notifier, v176, buf[0]);
        }

        v49 = &_os_log_default;
        v50 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_18())
      {
        v51 = selfCopy->_uartAccessoryDetachTimesDict;
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_2_0();
        _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
      }

      OUTLINED_FUNCTION_13();
      if (v3 && v49 >= 1)
      {
        v57 = *v3;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_1_1();
          OUTLINED_FUNCTION_9(&def_3A0E8, &_os_log_default, v135, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v136, v137, v138, v139, notifier, v176, buf[0]);
        }

        v57 = &_os_log_default;
        v58 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_18())
      {
        v59 = selfCopy->_mikeyBusAccessoryDetachTimesDict;
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_2_0();
        _os_log_impl(v60, v61, v62, v63, v64, 0xCu);
      }

      OUTLINED_FUNCTION_13();
      if (v3 && v57 >= 1)
      {
        v65 = *v3;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_1_1();
          OUTLINED_FUNCTION_9(&def_3A0E8, &_os_log_default, v140, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v141, v142, v143, v144, notifier, v176, buf[0]);
        }

        v65 = &_os_log_default;
        v66 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_18())
      {
        v67 = selfCopy->_aidBulkPipeAccessoryDetachTimesDict;
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_2_0();
        _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
      }

      OUTLINED_FUNCTION_13();
      if (v3 && v65 >= 1)
      {
        v73 = *v3;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_1_1();
          OUTLINED_FUNCTION_9(&def_3A0E8, &_os_log_default, v145, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v146, v147, v148, v149, notifier, v176, buf[0]);
        }

        v73 = &_os_log_default;
        v74 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_18())
      {
        v75 = selfCopy->_lastUSBAccessoryDetachTime;
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_2_0();
        _os_log_impl(v76, v77, v78, v79, v80, 0xCu);
      }

      v81 = [(NSUserDefaults *)selfCopy->_pluginDefaults objectForKey:@"cachedUSBConnectType"];
      cachedUSBConnectType = selfCopy->_cachedUSBConnectType;
      selfCopy->_cachedUSBConnectType = v81;

      OUTLINED_FUNCTION_13();
      if (v3 && v73 >= 1)
      {
        v83 = *v3;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_1_1();
          OUTLINED_FUNCTION_9(&def_3A0E8, &_os_log_default, v150, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v151, v152, v153, v154, notifier, v176, buf[0]);
        }

        v83 = &_os_log_default;
        v84 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_18())
      {
        v85 = selfCopy->_cachedUSBConnectType;
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_2_0();
        _os_log_impl(v86, v87, v88, v89, v90, 0xCu);
      }

      v91 = dispatch_queue_create("accessorydMatchingPlugin_EventLoggerQueue", 0);
      analyticsQueue = selfCopy->_analyticsQueue;
      selfCopy->_analyticsQueue = v91;

      selfCopy->_ioNotifyPortTRM = 0;
      *&selfCopy->_ioAddedIteratorTRM = 0;
      selfCopy->_isLightning = MGGetBoolAnswer();
      selfCopy->_ioNotifyPortLDCM = 0;
      *&selfCopy->_ioNotificationLDCM = 0;
      ueaPluginSystemSettingsMonitor = selfCopy->_ueaPluginSystemSettingsMonitor;
      selfCopy->_ueaPluginSystemSettingsMonitor = 0;

      ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
      if (ServiceWithPrimaryPort)
      {
        IOObjectRelease(ServiceWithPrimaryPort);
        OUTLINED_FUNCTION_13();
        if (v3 && v83 >= 3)
        {
          v95 = v3[2];
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_1();
            OUTLINED_FUNCTION_9(&def_3A0E8, &_os_log_default, v155, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v156, v157, v158, v159, notifier, v176, buf[0]);
          }

          v95 = &_os_log_default;
          v97 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_18())
        {
          *buf = 0;
          OUTLINED_FUNCTION_2_0();
          _os_log_impl(v98, v99, v100, v101, v102, 2u);
        }

        v103 = objc_alloc_init(ueaPluginSystemSettingsMonitor);
        v96 = selfCopy->_ueaPluginSystemSettingsMonitor;
        selfCopy->_ueaPluginSystemSettingsMonitor = v103;
      }

      else
      {
        OUTLINED_FUNCTION_13();
        if (v3 && v83 >= 3)
        {
          v96 = v3[2];
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_1();
            OUTLINED_FUNCTION_9(&def_3A0E8, &_os_log_default, v170, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v171, v172, v173, v174, notifier, v176, buf[0]);
          }

          v96 = &_os_log_default;
          v104 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_18())
        {
          *buf = 0;
          OUTLINED_FUNCTION_2_0();
          _os_log_impl(v105, v106, v107, v108, v109, 2u);
        }
      }

      v110 = 0;
      *buf = "/var/root/.acc_analytics_v2.db";
      v178 = "/var/root/.acc_analytics_v2.db-shm";
      v179 = "/var/root/.acc_analytics_v2.db-wal";
      v180 = "/var/mobile/Library/CoreAccessories/Analytics/acc_analytics_UserEventAgent_v2.db";
      v181 = "/var/mobile/Library/CoreAccessories/Analytics/acc_analytics_UserEventAgent_v2.db-shm";
      v182 = "/var/mobile/Library/CoreAccessories/Analytics/acc_analytics_UserEventAgent_v2.db-wal";
      do
      {
        v111 = *&buf[v110];
        v112 = +[NSFileManager defaultManager];
        v113 = [NSString stringWithUTF8String:v111];
        [v112 removeItemAtPath:v113 error:0];

        v110 += 8;
      }

      while (v110 != 48);
      v183[0] = NSFileOwnerAccountName;
      v183[1] = NSFileGroupOwnerAccountName;
      *buf = @"mobile";
      v178 = @"mobile";
      v114 = [NSDictionary dictionaryWithObjects:buf forKeys:v183 count:2];
      v115 = +[NSFileManager defaultManager];
      v176 = 0;
      v116 = [v115 createDirectoryAtPath:@"/var/mobile/Library/CoreAccessories/Analytics" withIntermediateDirectories:1 attributes:v114 error:&v176];

      if ((v116 & 1) == 0)
      {
        OUTLINED_FUNCTION_13();
        if (xpc_event_provider_create_ptr && v114 >= 1)
        {
          v117 = xpc_event_provider_create;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_1();
            OUTLINED_FUNCTION_9(&def_3A0E8, &_os_log_default, v160, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v161, v162, v163, v164, notifier, v176, buf[0]);
          }

          v117 = &_os_log_default;
          v118 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_18())
        {
          *buf = 0;
          OUTLINED_FUNCTION_2_0();
          _os_log_impl(v119, v120, v121, v122, v123, 2u);
        }
      }

      xpc_event_provider_create();
    }
  }

  else if (self)
  {

    notify_cancel(0);
    selfCopy = 0;
    *&stru_20.segname[12] = -1;
  }

  return selfCopy;
}

- (void)addDigitalIDClient:(unint64_t)client
{
  v4 = [NSNumber numberWithUnsignedLongLong:client];
  if (v4)
  {
    digitalIDTokenSet = [(accessorydMatchingPlugin *)self digitalIDTokenSet];
    [digitalIDTokenSet addObject:v4];

    if (gLogObjects)
    {
      v6 = gNumLogObjects < 1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_1_0(&def_3A0E8, &_os_log_default, v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v19, v20, v21, v22, v23);
      }

      v8 = &_os_log_default;
      v7 = &_os_log_default;
    }

    else
    {
      v8 = *gLogObjects;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      digitalIDTokenSet2 = [(accessorydMatchingPlugin *)self digitalIDTokenSet];
      [digitalIDTokenSet2 count];
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24(&def_3A0E8, v10, v11, "addDigitalIDClient digitalIDTokenSet count: %lu", v12, v13, v14, v15, v23);
    }

    digitalIDTokenSet3 = [(accessorydMatchingPlugin *)self digitalIDTokenSet];
    v17 = [digitalIDTokenSet3 count];

    if (v17 == &def_3A0E8 + 1)
    {
      [(accessorydMatchingPlugin *)self startListeningForIOAccessoryPortClass];
      [(accessorydMatchingPlugin *)self startIOAccessoryManagerEventMonitoring];
      [(accessorydMatchingPlugin *)self startUSBRestrictedModeTimeoutMonitoring];
      [(accessorydMatchingPlugin *)self startTRMMonitoring];
    }
  }
}

- (void)removeDigitalIDClient:(unint64_t)client
{
  v4 = [NSNumber numberWithUnsignedLongLong:client];
  if (v4)
  {
    digitalIDTokenSet = [(accessorydMatchingPlugin *)self digitalIDTokenSet];
    [digitalIDTokenSet removeObject:v4];

    if (gLogObjects)
    {
      v6 = gNumLogObjects < 1;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_1_0(&def_3A0E8, &_os_log_default, v18, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v19, v20, v21, v22, v23);
      }

      v8 = &_os_log_default;
      v7 = &_os_log_default;
    }

    else
    {
      v8 = *gLogObjects;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      digitalIDTokenSet2 = [(accessorydMatchingPlugin *)self digitalIDTokenSet];
      [digitalIDTokenSet2 count];
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_24(&def_3A0E8, v10, v11, "removeDigitalIDClient digitalIDTokenSet count: %lu", v12, v13, v14, v15, v23);
    }

    digitalIDTokenSet3 = [(accessorydMatchingPlugin *)self digitalIDTokenSet];
    v17 = [digitalIDTokenSet3 count];

    if (!v17)
    {
      [(accessorydMatchingPlugin *)self stopIOAccessoryManagerEventMonitoring];
      [(accessorydMatchingPlugin *)self stopListeningForIOAccessoryPortClass];
      [(accessorydMatchingPlugin *)self stopUSBRestrictedModeTimeoutMonitoring];
      [(accessorydMatchingPlugin *)self stopTRMMonitoring];
    }
  }
}

- (void)addBTServiceClient:(unint64_t)client
{
  v7 = [NSNumber numberWithUnsignedLongLong:client];
  if (v7)
  {
    btServiceTokenSet = [(accessorydMatchingPlugin *)self btServiceTokenSet];
    [btServiceTokenSet addObject:v7];

    btServiceTokenSet2 = [(accessorydMatchingPlugin *)self btServiceTokenSet];
    v6 = [btServiceTokenSet2 count];

    if (v6 == &def_3A0E8 + 1)
    {
      [(accessorydMatchingPlugin *)self startBluetoothMatching];
    }
  }
}

- (void)removeBTServiceClient:(unint64_t)client
{
  v4 = [NSNumber numberWithUnsignedLongLong:client];
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    btServiceTokenSet = [(accessorydMatchingPlugin *)self btServiceTokenSet];
    v6 = [btServiceTokenSet countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(btServiceTokenSet);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([v10 isEqualToNumber:v4])
          {
            btServiceTokenSet2 = [(accessorydMatchingPlugin *)self btServiceTokenSet];
            [btServiceTokenSet2 removeObject:v10];
          }
        }

        v7 = [btServiceTokenSet countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    btServiceTokenSet3 = [(accessorydMatchingPlugin *)self btServiceTokenSet];
    v13 = [btServiceTokenSet3 count];

    if (!v13)
    {
      [(accessorydMatchingPlugin *)self stopBluetoothMatching];
    }
  }
}

- (void)intrusiveUIStateDidChange:forService:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)intrusiveUIStateDidChange:forService:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)serverRunningDidChange:status:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end