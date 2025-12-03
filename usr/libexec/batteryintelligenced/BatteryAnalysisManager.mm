@interface BatteryAnalysisManager
+ (id)sharedInstance;
- (BOOL)hasDeviceRebooted;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)setUpChargeLimitChangeNotification;
- (BOOL)setUpChargingStatusChangeNotification;
- (BOOL)setUpExternalConnectedChangeNotification;
- (BOOL)start;
- (BOOL)tryEstimatorRunWithName:(id)name withError:(id *)error;
- (BatteryAnalysisManager)init;
- (double)shortChargingSessionThresholdForEndSOCEnum:(int64_t)enum;
- (double)timeSincePlugin;
- (id)endSOCEnumMapping;
- (id)getBatteryAnalysisEstimatesFromDate:(id)date toDate:(id)toDate predicate:(id)predicate limit:(unint64_t)limit;
- (int64_t)enumForEndSOC:(id)c;
- (void)checkChargeLimitChangeAndSetUp;
- (void)checkChargingStatusChangeAndSetUp;
- (void)checkExternalConnectedChangeAndSetUp;
- (void)computeAndSendCoreAnalyticsMetricsForEndSOC:(id)c;
- (void)dealloc;
- (void)deleteAllAlarms;
- (void)deviceChargeLimitChangedDuringChargingSetUp;
- (void)deviceChargingPausedSetUp;
- (void)deviceChargingResumedSetUp;
- (void)deviceConnectedSetUp;
- (void)deviceDisconnectedSetUp;
- (void)initFromDefaults;
- (void)postInternalTT80Notification:(double)notification;
- (void)postNotificationForBatteryAnalysisTarget:(int64_t)target;
- (void)postNotificationForComparision:(double)comparision against:(double)against;
- (void)runAndReply:(id)reply;
- (void)setUpContextStoreRegistration;
- (void)setUpForChangeInExternalConnected;
- (void)setUpWithNewChargeLimit:(int64_t)limit;
- (void)setUpWithNewChargingStatus:(id)status;
- (void)submitEstimatorJobWithName:(id)name;
- (void)updateTarget:(int64_t)target withEstimate:(double)estimate andReply:(id)reply;
@end

@implementation BatteryAnalysisManager

+ (id)sharedInstance
{
  if (qword_1000578E8 != -1)
  {
    sub_10002F5F8();
  }

  v3 = qword_1000578E0;

  return v3;
}

- (BatteryAnalysisManager)init
{
  v23.receiver = self;
  v23.super_class = BatteryAnalysisManager;
  v2 = [(BatteryAnalysisManager *)&v23 initWithMachServiceName:@"com.apple.batteryintelligenced.batteryanalysismanager"];
  if (v2)
  {
    v3 = sub_10001DEC4("BatteryAnalysisManager");
    v4 = qword_1000578F0;
    qword_1000578F0 = v3;

    [(BatteryAnalysisManager *)v2 setDelegate:v2];
    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.batteryintelligenced.batteryanalysismanager"];
    v6 = qword_1000578F8;
    qword_1000578F8 = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.batteryintelligenced.batteryanalysismanager.collectionqueue", v7);
    collectionQueue = v2->_collectionQueue;
    v2->_collectionQueue = v8;

    if (v2->_collectionQueue)
    {
      v10 = +[BatteryIntelligenceNotificationManager sharedInstance];
      notifyObj = v2->_notifyObj;
      v2->_notifyObj = v10;

      v12 = +[BatteryAnalysisEstimator sharedPredictor];
      if (v12)
      {

LABEL_13:
        [(BatteryAnalysisManager *)v2 initFromDefaults];
        v21 = v2;
        goto LABEL_14;
      }

      if (!+[BIMGUtility isiPhone])
      {
        goto LABEL_13;
      }

      if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_FAULT))
      {
        sub_10002F60C();
      }
    }

    else if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
    {
      sub_10002F640();
    }
  }

  else
  {
    v13 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      sub_10002F674(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  v21 = 0;
LABEL_14:

  return v21;
}

- (void)initFromDefaults
{
  v3 = [qword_1000578F8 stringForKey:@"bootUUID"];
  bootUUID = self->_bootUUID;
  self->_bootUUID = v3;

  if ([(BatteryAnalysisManager *)self hasDeviceRebooted])
  {
    chargingStatus = self->_chargingStatus;
    self->_chargingStatus = 0;

    self->_chargeLimit = 0;
    self->_monotonicPluginTimeInSeconds = 0;
    self->_socAtPlugin = 0;
    self->_slowAdapterDetected = 0;
    self->_isEstimateOveridden = 0;
    self->_caMetricsComputedBitMask = 0;
    self->_isDrawingUnlimitedPower = 0;
    isAdapterWireless = self->_isAdapterWireless;
    self->_isAdapterWireless = 0;
  }

  else
  {
    self->_monotonicPluginTimeInSeconds = [qword_1000578F8 integerForKey:@"monotonicPluginTimeInSeconds"];
    self->_socAtPlugin = [qword_1000578F8 integerForKey:@"socAtPlugin"];
    self->_slowAdapterDetected = [qword_1000578F8 BOOLForKey:@"slowAdapterDetected"];
    self->_isEstimateOveridden = [qword_1000578F8 BOOLForKey:@"isEstimateOverridden"];
    self->_isFirstEstimateComputed = [qword_1000578F8 BOOLForKey:@"isFirstEstimateComputed"];
    self->_caMetricsComputedBitMask = [qword_1000578F8 integerForKey:@"caMetricsComputedBitMask"];
    v7 = [qword_1000578F8 stringForKey:@"chargingStatus"];
    v8 = self->_chargingStatus;
    self->_chargingStatus = v7;

    self->_chargeLimit = [qword_1000578F8 integerForKey:@"chargeLimit"];
    self->_isDrawingUnlimitedPower = [qword_1000578F8 BOOLForKey:@"isDrawingUnlimitedPower"];
    v9 = [qword_1000578F8 objectForKey:@"isWirelessAdapter"];
    v10 = self->_isAdapterWireless;
    self->_isAdapterWireless = v9;

    v11 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "initFromDefaults complete.", v12, 2u);
    }
  }
}

- (BOOL)hasDeviceRebooted
{
  v3 = sub_10001FDB4();
  if (!v3)
  {
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
    {
      sub_10002F6B0();
    }

    goto LABEL_15;
  }

  if (!self->_bootUUID)
  {
    v6 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v9 = "No boot id set. Setting boot id and assuming device just rebooted.";
      v10 = &v14;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }

LABEL_14:
    objc_storeStrong(&self->_bootUUID, v3);
    [qword_1000578F8 setObject:self->_bootUUID forKey:@"bootUUID"];
LABEL_15:
    v8 = 1;
    goto LABEL_16;
  }

  bootUUID = [(BatteryAnalysisManager *)self bootUUID];
  v5 = [bootUUID isEqualToString:v3];

  v6 = qword_1000578F0;
  v7 = os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v7)
    {
      v12 = 0;
      v9 = "Device reboot detected. Updating boot id.";
      v10 = &v12;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device has not rebooted.", buf, 2u);
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (BOOL)start
{
  v3 = os_transaction_create();
  [(BatteryAnalysisManager *)self activate];
  [(BatteryAnalysisManager *)self checkChargingStatusChangeAndSetUp];
  [(BatteryAnalysisManager *)self checkExternalConnectedChangeAndSetUp];
  [(BatteryAnalysisManager *)self checkChargeLimitChangeAndSetUp];
  if (+[BIMGUtility isiPhone])
  {
    [(BatteryAnalysisManager *)self setUpContextStoreRegistration];
  }

  if ([(BatteryAnalysisManager *)self setUpChargeLimitChangeNotification]&& [(BatteryAnalysisManager *)self setUpChargingStatusChangeNotification])
  {
    setUpExternalConnectedChangeNotification = [(BatteryAnalysisManager *)self setUpExternalConnectedChangeNotification];
  }

  else
  {
    setUpExternalConnectedChangeNotification = 0;
  }

  return setUpExternalConnectedChangeNotification;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BIBatteryAnalysisManagerProtocol];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  v7 = [connectionCopy valueForEntitlement:@"com.apple.batteryintelligenced.batteryanalysismanager"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v7 BOOLValue])
  {
    v8 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v13[0] = 67109120;
      v13[1] = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Accepted new connection from pid %d.", v13, 8u);
    }

    [connectionCopy resume];
    v10 = 1;
  }

  else
  {
    v11 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
    {
      sub_10002F6E4(v11, connectionCopy);
    }

    v10 = 0;
  }

  return v10;
}

- (void)deviceConnectedSetUp
{
  v28 = os_transaction_create();
  if (-[BatteryAnalysisManager isDrawingUnlimitedPower](self, "isDrawingUnlimitedPower") && (-[BatteryAnalysisManager chargingStatus](self, "chargingStatus"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEqualToString:@"Charging"], v3, (v4 & 1) != 0))
  {
    [(BatteryAnalysisManager *)self setIsEstimateOveridden:0];
    [(BatteryAnalysisManager *)self setSlowAdapterDetected:0];
    [(BatteryAnalysisManager *)self setCaMetricsComputedBitMask:0];
    [(BatteryAnalysisManager *)self setIsFirstEstimateComputed:0];
    v5 = sub_10001EF30();
    [(BatteryAnalysisManager *)self setIsAdapterWireless:v5];

    [qword_1000578F8 setBool:-[BatteryAnalysisManager isEstimateOveridden](self forKey:{"isEstimateOveridden"), @"isEstimateOverridden"}];
    [qword_1000578F8 setBool:-[BatteryAnalysisManager slowAdapterDetected](self forKey:{"slowAdapterDetected"), @"slowAdapterDetected"}];
    [qword_1000578F8 setInteger:-[BatteryAnalysisManager caMetricsComputedBitMask](self forKey:{"caMetricsComputedBitMask"), @"caMetricsComputedBitMask"}];
    [qword_1000578F8 setBool:-[BatteryAnalysisManager isFirstEstimateComputed](self forKey:{"isFirstEstimateComputed"), @"isFirstEstimateComputed"}];
    v6 = qword_1000578F8;
    isAdapterWireless = [(BatteryAnalysisManager *)self isAdapterWireless];
    [v6 setObject:isAdapterWireless forKey:@"isWirelessAdapter"];

    v8 = +[BatteryAnalysisService sharedInstance];
    [v8 updateAdditionalInformationForAllTarget:2];

    [(BatteryAnalysisManager *)self postNotificationForBatteryAnalysisTarget:0];
    [(BatteryAnalysisManager *)self postNotificationForBatteryAnalysisTarget:1];
    [(BatteryAnalysisManager *)self deleteAllAlarms];
    [(BatteryAnalysisManager *)self setMonotonicPluginTimeInSeconds:sub_10001F754()];
    [qword_1000578F8 setInteger:-[BatteryAnalysisManager monotonicPluginTimeInSeconds](self forKey:{"monotonicPluginTimeInSeconds"), @"monotonicPluginTimeInSeconds"}];
    [(BatteryAnalysisManager *)self setSocAtPlugin:sub_10001E8F4()];
    [qword_1000578F8 setInteger:-[BatteryAnalysisManager socAtPlugin](self forKey:{"socAtPlugin"), @"socAtPlugin"}];
    [BIXPCAlarm setAlarmWithName:@"batteryAnalysisRunAtPlugin" withClock:4 afterSeconds:1 wakeUpAP:4.0];
    v9 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v38 = 0x4010000000000000;
      v39 = 2112;
      v40 = @"batteryAnalysisRunAtPlugin";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Alarm set after %g seconds for %@!", buf, 0x16u);
    }

    if (sub_10001F78C(self->_pluginJobTimer))
    {
      v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_collectionQueue);
      pluginJobTimer = self->_pluginJobTimer;
      self->_pluginJobTimer = v10;

      if (sub_10001F78C(self->_pluginJobTimer))
      {
        if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
        {
          sub_10002F7B0();
        }
      }

      else
      {
        v15 = dispatch_time(0, 4000000000);
        dispatch_source_set_timer(self->_pluginJobTimer, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
        objc_initWeak(&location, self);
        v16 = self->_pluginJobTimer;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10000AE30;
        handler[3] = &unk_1000487D0;
        objc_copyWeak(&v34, &location);
        dispatch_source_set_event_handler(v16, handler);
        pluginJobTimer = [(BatteryAnalysisManager *)self pluginJobTimer];
        dispatch_resume(pluginJobTimer);

        v18 = qword_1000578F0;
        if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v38 = 0x4010000000000000;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "One time job scheduled after delay: %.2fs", buf, 0xCu);
        }

        objc_destroyWeak(&v34);
        objc_destroyWeak(&location);
      }
    }

    else if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
    {
      sub_10002F77C();
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = [&off_10004CBB0 countByEnumeratingWithState:&v29 objects:v36 count:16];
    if (v19)
    {
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(&off_10004CBB0);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          v23 = [NSString stringWithFormat:@"%@-%@secsAfterPlugin", @"batteryAnalysisRunAtPlugin", v22];
          [v22 doubleValue];
          [BIXPCAlarm setAlarmWithName:v23 withClock:4 afterSeconds:1 wakeUpAP:?];
          v24 = qword_1000578F0;
          if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
            [v22 doubleValue];
            *buf = 134218242;
            v38 = v26;
            v39 = 2112;
            v40 = v23;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Alarm set after %g seconds for %@!", buf, 0x16u);
          }
        }

        v19 = [&off_10004CBB0 countByEnumeratingWithState:&v29 objects:v36 count:16];
      }

      while (v19);
    }

    [BIXPCAlarm setAlarmWithName:@"batteryAnalysisRunDuringCharging" withClock:4 afterSeconds:1 wakeUpAP:300.0];
    v27 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v38 = 0x4072C00000000000;
      v39 = 2112;
      v40 = @"batteryAnalysisRunDuringCharging";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Alarm set after %g seconds for %@!", buf, 0x16u);
    }
  }

  else
  {
    v12 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      chargingStatus = [(BatteryAnalysisManager *)self chargingStatus];
      *buf = 138412546;
      v38 = chargingStatus;
      v39 = 1024;
      LODWORD(v40) = [(BatteryAnalysisManager *)self isDrawingUnlimitedPower];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Current Charging status: %@, isDrawingUnlimitedPower: %i. Aborting deviceConnectedSetUp.", buf, 0x12u);
    }
  }
}

- (void)deviceChargingPausedSetUp
{
  v3 = os_transaction_create();
  v4 = qword_1000578F0;
  if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Running deviceChargingPausedSetUp.", buf, 2u);
  }

  if (!self->_monotonicPluginTimeInSeconds)
  {
    v5 = sub_10001F754();
    self->_monotonicPluginTimeInSeconds = v5;
    [qword_1000578F8 setInteger:v5 forKey:@"monotonicPluginTimeInSeconds"];
    v6 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updated monotonicPluginTimeInSeconds on paused charging after reboot.", v10, 2u);
    }
  }

  [(BatteryAnalysisManager *)self deleteAllAlarms];
  v7 = qword_1000578F0;
  if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deleted all the existing xpc alarms as charging is paused.", v9, 2u);
  }

  v8 = +[BatteryAnalysisService sharedInstance];
  [v8 updateAdditionalInformationForAllTarget:2];

  [(BatteryAnalysisManager *)self postNotificationForBatteryAnalysisTarget:0];
  [(BatteryAnalysisManager *)self postNotificationForBatteryAnalysisTarget:1];
}

- (void)deviceChargingResumedSetUp
{
  v3 = os_transaction_create();
  [(BatteryAnalysisManager *)self deleteAllAlarms];
  if ([(BatteryAnalysisManager *)self isDrawingUnlimitedPower])
  {
    [(BatteryAnalysisManager *)self setMonotonicPluginTimeInSeconds:sub_10001F754()];
    [qword_1000578F8 setInteger:-[BatteryAnalysisManager monotonicPluginTimeInSeconds](self forKey:{"monotonicPluginTimeInSeconds"), @"monotonicPluginTimeInSeconds"}];
    [(BatteryAnalysisManager *)self setSocAtPlugin:sub_10001E8F4()];
    [qword_1000578F8 setInteger:self->_socAtPlugin forKey:@"socAtPlugin"];
    [BIXPCAlarm setAlarmWithName:@"batteryAnalysisRunDuringCharging" withClock:4 afterSeconds:1 wakeUpAP:0.0];
    v4 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = @"batteryAnalysisRunDuringCharging";
      v5 = "Alarm set to run %@ immediately.";
      v6 = v4;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v9, v7);
    }
  }

  else
  {
    v8 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      v5 = "Not connected via USB-C/lightning/wireless adapter for charging. Aborting deviceChargingResumedSetUp.";
      v6 = v8;
      v7 = 2;
      goto LABEL_6;
    }
  }
}

- (void)deviceChargeLimitChangedDuringChargingSetUp
{
  v3 = os_transaction_create();
  [(BatteryAnalysisManager *)self deleteAllAlarms];
  if ([(BatteryAnalysisManager *)self isDrawingUnlimitedPower])
  {
    v4 = +[BatteryAnalysisService sharedInstance];
    [v4 updateAdditionalInformationForAllTarget:2];

    [(BatteryAnalysisManager *)self postNotificationForBatteryAnalysisTarget:0];
    [(BatteryAnalysisManager *)self postNotificationForBatteryAnalysisTarget:1];
    [BIXPCAlarm setAlarmWithName:@"batteryAnalysisRunDuringCharging" withClock:4 afterSeconds:1 wakeUpAP:0.0];
    v5 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = @"batteryAnalysisRunDuringCharging";
      v6 = "Alarm set to run %@ immediately.";
      v7 = v5;
      v8 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
    }
  }

  else
  {
    v9 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      v6 = "Not connected via USB-C/lightning/wireless adapter for charging. Aborting deviceChargingResumedSetUp.";
      v7 = v9;
      v8 = 2;
      goto LABEL_6;
    }
  }
}

- (void)deviceDisconnectedSetUp
{
  v3 = os_transaction_create();
  if (-[BatteryAnalysisManager isDrawingUnlimitedPower](self, "isDrawingUnlimitedPower") || (-[BatteryAnalysisManager chargingStatus](self, "chargingStatus"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isEqualToString:@"Charging"], v4, v5))
  {
    v6 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      chargingStatus = [(BatteryAnalysisManager *)self chargingStatus];
      v20 = 138412546;
      v21 = chargingStatus;
      v22 = 1024;
      isDrawingUnlimitedPower = [(BatteryAnalysisManager *)self isDrawingUnlimitedPower];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Current Charging status: %@, isDrawingUnlimitedPower: %i. Aborting deviceDisconnectedSetUp.", &v20, 0x12u);
    }
  }

  else
  {
    [(BatteryAnalysisManager *)self deleteAllAlarms];
    v9 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Deleted all the existing xpc alarms as device is disconnected.", &v20, 2u);
    }

    v10 = +[BatteryAnalysisService sharedInstance];
    [v10 updateAdditionalInformationForAllTarget:2];

    [(BatteryAnalysisManager *)self postNotificationForBatteryAnalysisTarget:0];
    [(BatteryAnalysisManager *)self postNotificationForBatteryAnalysisTarget:1];
    v11 = sub_10001E8F4();
    v12 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 67109120;
      LODWORD(v21) = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "uiSOC at disconnect: %u", &v20, 8u);
    }

    v13 = [NSNumber numberWithUnsignedInt:v11];
    v14 = [(BatteryAnalysisManager *)self enumForEndSOC:v13];

    if (v14)
    {
      if (([(BatteryAnalysisManager *)self caMetricsComputedBitMask]& (1 << v14)) != 0)
      {
        v15 = qword_1000578F0;
        if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 67109120;
          LODWORD(v21) = v11;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "CA metrics is already computed for the endSOC: %u", &v20, 8u);
        }
      }

      else
      {
        v16 = [NSNumber numberWithUnsignedInt:v11];
        [(BatteryAnalysisManager *)self computeAndSendCoreAnalyticsMetricsForEndSOC:v16];
      }
    }

    [(BatteryAnalysisManager *)self setIsEstimateOveridden:0];
    [(BatteryAnalysisManager *)self setMonotonicPluginTimeInSeconds:0];
    [(BatteryAnalysisManager *)self setSlowAdapterDetected:0];
    [(BatteryAnalysisManager *)self setIsFirstEstimateComputed:0];
    [(BatteryAnalysisManager *)self setCaMetricsComputedBitMask:-1];
    v17 = sub_10001EF30();
    [(BatteryAnalysisManager *)self setIsAdapterWireless:v17];

    [qword_1000578F8 setBool:-[BatteryAnalysisManager isEstimateOveridden](self forKey:{"isEstimateOveridden"), @"isEstimateOverridden"}];
    [qword_1000578F8 setInteger:-[BatteryAnalysisManager monotonicPluginTimeInSeconds](self forKey:{"monotonicPluginTimeInSeconds"), @"monotonicPluginTimeInSeconds"}];
    [qword_1000578F8 setBool:-[BatteryAnalysisManager slowAdapterDetected](self forKey:{"slowAdapterDetected"), @"slowAdapterDetected"}];
    [qword_1000578F8 setBool:-[BatteryAnalysisManager isFirstEstimateComputed](self forKey:{"isFirstEstimateComputed"), @"isFirstEstimateComputed"}];
    [qword_1000578F8 setInteger:-[BatteryAnalysisManager caMetricsComputedBitMask](self forKey:{"caMetricsComputedBitMask"), @"caMetricsComputedBitMask"}];
    v18 = qword_1000578F8;
    isAdapterWireless = [(BatteryAnalysisManager *)self isAdapterWireless];
    [v18 setObject:isAdapterWireless forKey:@"isWirelessAdapter"];
  }
}

- (void)deleteAllAlarms
{
  v10 = os_transaction_create();
  [BIXPCAlarm deleteAlarmWithName:@"batteryAnalysisRunAtPlugin"];
  [BIXPCAlarm deleteAlarmWithName:@"batteryAnalysisRunDuringCharging"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [&off_10004CBB0 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(&off_10004CBB0);
        }

        v7 = [NSString stringWithFormat:@"%@-%@secsAfterPlugin", @"batteryAnalysisRunAtPlugin", *(*(&v12 + 1) + 8 * v6)];
        [BIXPCAlarm deleteAlarmWithName:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [&off_10004CBB0 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  if ((sub_10001F78C(self->_pluginJobTimer) & 1) == 0)
  {
    dispatch_source_cancel(self->_pluginJobTimer);
    pluginJobTimer = self->_pluginJobTimer;
    self->_pluginJobTimer = 0;
  }

  v9 = qword_1000578F0;
  if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Deleted all alarms and released dispatch sources memory.", buf, 2u);
  }
}

- (void)setUpWithNewChargingStatus:(id)status
{
  statusCopy = status;
  v5 = os_transaction_create();
  chargingStatus = [(BatteryAnalysisManager *)self chargingStatus];
  v7 = [chargingStatus isEqualToString:statusCopy];

  if (v7)
  {
    v8 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setUpWithNewChargingStatus: Charging status has not changed.", v12, 2u);
    }
  }

  else
  {
    chargingStatus2 = [(BatteryAnalysisManager *)self chargingStatus];
    [(BatteryAnalysisManager *)self setChargingStatus:statusCopy];
    v10 = qword_1000578F8;
    chargingStatus3 = [(BatteryAnalysisManager *)self chargingStatus];
    [v10 setObject:chargingStatus3 forKey:@"chargingStatus"];

    if ([statusCopy isEqualToString:@"Charging"] && objc_msgSend(chargingStatus2, "isEqualToString:", @"Disconnected"))
    {
      [(BatteryAnalysisManager *)self deviceConnectedSetUp];
    }

    else if ([statusCopy isEqualToString:@"Charging"])
    {
      [(BatteryAnalysisManager *)self deviceChargingResumedSetUp];
    }

    else if ([statusCopy isEqualToString:@"Disconnected"])
    {
      [(BatteryAnalysisManager *)self deviceDisconnectedSetUp];
    }

    else
    {
      [(BatteryAnalysisManager *)self deviceChargingPausedSetUp];
    }
  }
}

- (void)setUpWithNewChargeLimit:(int64_t)limit
{
  v5 = os_transaction_create();
  if ([(BatteryAnalysisManager *)self chargeLimit]== limit)
  {
    v6 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v7 = "setUpWithNewChargeLimit: Charge limit has not changed.";
      v8 = &v14;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else
  {
    chargingStatus = [(BatteryAnalysisManager *)self chargingStatus];
    if (chargingStatus && (v10 = chargingStatus, -[BatteryAnalysisManager chargingStatus](self, "chargingStatus"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqualToString:@"Charging"], v11, v10, v12))
    {
      [(BatteryAnalysisManager *)self deviceChargeLimitChangedDuringChargingSetUp];
    }

    else
    {
      [(BatteryAnalysisManager *)self setChargeLimit:limit];
      [qword_1000578F8 setInteger:-[BatteryAnalysisManager chargeLimit](self forKey:{"chargeLimit"), @"chargeLimit"}];
      v6 = qword_1000578F0;
      if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 0;
        v7 = "Device is currently not charging. Updated the default charge limit value.";
        v8 = &v13;
        goto LABEL_9;
      }
    }
  }
}

- (void)setUpForChangeInExternalConnected
{
  v3 = os_transaction_create();
  v4 = IOPSDrawingUnlimitedPower();
  if (v4 == [(BatteryAnalysisManager *)self isDrawingUnlimitedPower])
  {
    v8 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No Change in isDrawingUnlimitedPower. Skipping this change.", v9, 2u);
    }
  }

  else
  {
    isDrawingUnlimitedPower = [(BatteryAnalysisManager *)self isDrawingUnlimitedPower];
    [(BatteryAnalysisManager *)self setIsDrawingUnlimitedPower:v4];
    [qword_1000578F8 setBool:-[BatteryAnalysisManager isDrawingUnlimitedPower](self forKey:{"isDrawingUnlimitedPower"), @"isDrawingUnlimitedPower"}];
    v6 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v9[0] = 67109376;
      v9[1] = isDrawingUnlimitedPower;
      v10 = 1024;
      isDrawingUnlimitedPower2 = [(BatteryAnalysisManager *)self isDrawingUnlimitedPower];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "isDrawingUnlimitedPower changed. Current value: %i, updated value:%i.", v9, 0xEu);
    }

    if (v4)
    {
      [(BatteryAnalysisManager *)self deviceConnectedSetUp];
    }

    else
    {
      [(BatteryAnalysisManager *)self deviceDisconnectedSetUp];
    }
  }
}

- (void)checkChargingStatusChangeAndSetUp
{
  objc_initWeak(&location, self);
  collectionQueue = self->_collectionQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000BDE8;
  v4[3] = &unk_1000487D0;
  objc_copyWeak(&v5, &location);
  dispatch_async(collectionQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)setUpChargingStatusChangeNotification
{
  out_token = 0;
  objc_initWeak(&location, self);
  collectionQueue = [(BatteryAnalysisManager *)self collectionQueue];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10000C20C;
  v11 = &unk_1000487F8;
  objc_copyWeak(&v13, &location);
  selfCopy = self;
  v4 = notify_register_dispatch("com.apple.system.powersources.chargingiconography", &out_token, collectionQueue, &v8);

  if (v4)
  {
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
    {
      sub_10002F818();
    }
  }

  else
  {
    notificationTokens = self->_notificationTokens;
    v6 = [NSNumber numberWithInt:out_token, v8, v9, v10, v11];
    [(NSMutableSet *)notificationTokens addObject:v6];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  return v4 == 0;
}

- (void)checkChargeLimitChangeAndSetUp
{
  objc_initWeak(&location, self);
  collectionQueue = self->_collectionQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000C450;
  v4[3] = &unk_1000487D0;
  objc_copyWeak(&v5, &location);
  dispatch_async(collectionQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)setUpChargeLimitChangeNotification
{
  out_token = 0;
  objc_initWeak(&location, self);
  uTF8String = [@"com.apple.powerui.mclstatuschanged" UTF8String];
  collectionQueue = [(BatteryAnalysisManager *)self collectionQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000C678;
  handler[3] = &unk_100048820;
  objc_copyWeak(&v10, &location);
  v5 = notify_register_dispatch(uTF8String, &out_token, collectionQueue, handler);

  if (v5)
  {
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
    {
      sub_10002F89C();
    }
  }

  else
  {
    notificationTokens = self->_notificationTokens;
    v7 = [NSNumber numberWithInt:out_token];
    [(NSMutableSet *)notificationTokens addObject:v7];
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  return v5 == 0;
}

- (void)checkExternalConnectedChangeAndSetUp
{
  objc_initWeak(&location, self);
  collectionQueue = self->_collectionQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000C81C;
  v4[3] = &unk_1000487D0;
  objc_copyWeak(&v5, &location);
  dispatch_async(collectionQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)setUpExternalConnectedChangeNotification
{
  out_token = 0;
  objc_initWeak(&location, self);
  collectionQueue = [(BatteryAnalysisManager *)self collectionQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000CA20;
  handler[3] = &unk_100048820;
  objc_copyWeak(&v9, &location);
  v4 = notify_register_dispatch("com.apple.system.powersources.source", &out_token, collectionQueue, handler);

  if (v4)
  {
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
    {
      sub_10002F920();
    }
  }

  else
  {
    notificationTokens = self->_notificationTokens;
    v6 = [NSNumber numberWithInt:out_token];
    [(NSMutableSet *)notificationTokens addObject:v6];
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  return v4 == 0;
}

- (void)setUpContextStoreRegistration
{
  v3 = os_transaction_create();
  v4 = +[_CDClientContext userContext];
  [(BatteryAnalysisManager *)self setContext:v4];

  v5 = +[_CDContextQueries keyPathForBatteryLevel];
  v6 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  endSOCEnumMapping = [(BatteryAnalysisManager *)self endSOCEnumMapping];
  allKeys = [endSOCEnumMapping allKeys];
  v9 = [_CDContextualPredicate predicateForKeyPath:v5 withFormat:@"SELF.%@.value.externalConnected = %@ AND SELF.%@.value IN %@", v6, &__kCFBooleanTrue, v5, allKeys];

  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000CD4C;
  v16[3] = &unk_100048870;
  v16[4] = self;
  objc_copyWeak(&v17, &location);
  v10 = objc_retainBlock(v16);
  v11 = [_CDContextualChangeRegistration localWakingRegistrationWithIdentifier:@"com.apple.batteryintelligence.batteryanalysismanager" contextualPredicate:v9 clientIdentifier:@"com.apple.batteryintelligenced.contextstore-registration" callback:v10];
  [(BatteryAnalysisManager *)self setContextStoreRegistration:v11];

  context = [(BatteryAnalysisManager *)self context];
  contextStoreRegistration = [(BatteryAnalysisManager *)self contextStoreRegistration];
  [context registerCallback:contextStoreRegistration];

  v14 = qword_1000578F0;
  if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Registered to context store.", buf, 2u);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (id)endSOCEnumMapping
{
  if (qword_100057900 != -1)
  {
    sub_10002F9D8();
  }

  v3 = qword_1000578D0;

  return v3;
}

- (double)shortChargingSessionThresholdForEndSOCEnum:(int64_t)enum
{
  if (qword_100057908 != -1)
  {
    sub_10002F9EC();
  }

  v4 = qword_1000578D8;
  v5 = [NSNumber numberWithInteger:enum];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    integerValue = 0.0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
    {
      sub_10002FA00();
    }
  }

  return integerValue;
}

- (int64_t)enumForEndSOC:(id)c
{
  cCopy = c;
  if (sub_10001F78C(cCopy))
  {
    v5 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      sub_10002FB24(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    integerValue = 0;
  }

  else
  {
    endSOCEnumMapping = [(BatteryAnalysisManager *)self endSOCEnumMapping];
    v15 = [endSOCEnumMapping objectForKeyedSubscript:cCopy];

    if (v15)
    {
      integerValue = [v15 integerValue];
    }

    else
    {
      endSOCEnumMapping2 = [(BatteryAnalysisManager *)self endSOCEnumMapping];
      v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [cCopy integerValue] + 1);
      v18 = [endSOCEnumMapping2 objectForKeyedSubscript:v17];

      if (v18)
      {
        if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEBUG))
        {
          sub_10002FA34();
        }

        integerValue = [v18 integerValue];
      }

      else
      {
        endSOCEnumMapping3 = [(BatteryAnalysisManager *)self endSOCEnumMapping];
        v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [cCopy integerValue] - 1);
        v21 = [endSOCEnumMapping3 objectForKeyedSubscript:v20];

        if (v21)
        {
          if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEBUG))
          {
            sub_10002FAAC();
          }

          integerValue = [v21 integerValue];
        }

        else
        {
          integerValue = 0;
        }
      }
    }
  }

  return integerValue;
}

- (id)getBatteryAnalysisEstimatesFromDate:(id)date toDate:(id)toDate predicate:(id)predicate limit:(unint64_t)limit
{
  dateCopy = date;
  toDateCopy = toDate;
  predicateCopy = predicate;
  v12 = PPSCreateSubsystemCategoryPredicate();
  if (v12)
  {
    v37[0] = @"model_id";
    v37[1] = @"model_name";
    v37[2] = @"start_soc";
    v37[3] = @"end_soc";
    v37[4] = @"model_prediction";
    v13 = [NSArray arrayWithObjects:v37 count:5];
    v14 = [NSSet setWithArray:v13];

    [dateCopy timeIntervalSinceDate:toDateCopy];
    if (v15 <= 0.0)
    {
      v20 = [[NSDateInterval alloc] initWithStartDate:dateCopy endDate:toDateCopy];
      v21 = qword_1000578F0;
      if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v30 = dateCopy;
        v31 = 2112;
        v32 = toDateCopy;
        v33 = 2112;
        v34 = v20;
        v35 = 2112;
        v36 = predicateCopy;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Getting data from PPS for the following inputs:\ndateFrom - %@, dateTill - %@, interval - %@, predicate - %@", buf, 0x2Au);
      }

      sub_10001F740();
      v22 = [[PPSTimeSeriesRequest alloc] initWithMetrics:v14 predicate:v12 timeFilter:v20 limitCount:limit offsetCount:0 readDirection:0];
      if (v22)
      {
        v23 = PerfPowerServicesGetData();
        v24 = 0;
        v25 = qword_1000578F0;
        if (v24)
        {
          if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
          {
            sub_10002ECB4();
          }

          v19 = 0;
        }

        else
        {
          if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v25;
            v27 = [v23 count];
            *buf = 134217984;
            v30 = v27;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "PPS Response length: %lu", buf, 0xCu);
          }

          v19 = v23;
        }
      }

      else
      {
        if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
        {
          sub_10002FB60();
        }

        v19 = 0;
      }
    }

    else
    {
      [dateCopy timeIntervalSinceDate:toDateCopy];
      v17 = v16;
      v18 = qword_1000578F0;
      if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        v30 = v17;
        v31 = 2112;
        v32 = dateCopy;
        v33 = 2112;
        v34 = toDateCopy;
        _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "Invalid date range: dateFrom is %.6f seconds after dateTill. From: %@, Till: %@", buf, 0x20u);
      }

      v19 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
    {
      sub_10002FB94();
    }

    v19 = 0;
  }

  return v19;
}

- (void)computeAndSendCoreAnalyticsMetricsForEndSOC:(id)c
{
  cCopy = c;
  v5 = [(BatteryAnalysisManager *)self enumForEndSOC:cCopy];
  if (v5)
  {
    v6 = v5;
    [(BatteryAnalysisManager *)self shortChargingSessionThresholdForEndSOCEnum:v5];
    if (v7 == 0.0)
    {
      if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_FAULT))
      {
        sub_10002FC30();
      }
    }

    else
    {
      v8 = v7;
      [(BatteryAnalysisManager *)self timeSincePlugin];
      v10 = v9;
      p_vtable = battery_analysis_tt80_model_7gzamb2979Input.vtable;
      v12 = qword_1000578F0;
      if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v95 = cCopy;
        v96 = 2048;
        v97 = v10;
        v98 = 2048;
        v99 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device reached %@ endSOC within %0.02f secs. Short charging session threshold: %.02f secs.", buf, 0x20u);
      }

      v13 = +[NSDate date];
      v14 = [v13 dateByAddingTimeInterval:-v10];
      v15 = +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"%K >= %ld AND %K <= %ld", @"end_soc", [cCopy integerValue] - 1, @"end_soc", objc_msgSend(cCopy, "integerValue") + 1);
      v84 = v14;
      v82 = v13;
      v16 = [(BatteryAnalysisManager *)self getBatteryAnalysisEstimatesFromDate:v14 toDate:v13 predicate:v15 limit:30];
      v17 = v16;
      if (v16)
      {
        if ([v16 count])
        {
          v62 = v15;
          v63 = cCopy;
          v64 = v6;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v61 = v17;
          obj = v17;
          v18 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = 1.79769313e308;
            v83 = 1;
            v86 = *v88;
            v21 = 0.0;
            v22 = 0.0;
            do
            {
              v23 = 0;
              do
              {
                if (*v88 != v86)
                {
                  objc_enumerationMutation(obj);
                }

                v24 = *(*(&v87 + 1) + 8 * v23);
                v25 = p_vtable[286];
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                {
                  v36 = v25;
                  v37 = [NSNumber numberWithUnsignedInteger:v83];
                  *buf = 138412546;
                  v95 = v37;
                  v96 = 2112;
                  v97 = *&v24;
                  _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "Computing metrics for event #%@: %@", buf, 0x16u);
                }

                v26 = [v24 metricValueForKey:@"model_id"];
                v27 = [v24 metricValueForKey:@"model_prediction"];
                v28 = [v24 metricValueForKey:@"start_soc"];
                [v24 epochTimestamp];
                v30 = v29;
                if (sub_10001F7E4(v26) || (sub_10001F78C(v28) & 1) != 0 || (sub_10001F78C(v27) & 1) != 0 || v30 == 0.0)
                {
                  v31 = p_vtable[286];
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    v38 = v31;
                    v39 = [NSNumber numberWithUnsignedInteger:v83];
                    *buf = 138412546;
                    v95 = v39;
                    v96 = 2112;
                    v97 = *&v24;
                    _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Found nil objects/incorrect timestamp within PPS Event. Not computing metrics for event #%@: %@", buf, 0x16u);

                    p_vtable = (battery_analysis_tt80_model_7gzamb2979Input + 24);
                  }
                }

                else
                {
                  v32 = [NSDate dateWithTimeIntervalSince1970:v30];
                  [v32 timeIntervalSinceDate:v84];
                  if (v33 >= 0.0 && ([v32 timeIntervalSinceDate:v82], v34 <= 0.0))
                  {
                    v40 = [[NSDateInterval alloc] initWithStartDate:v84 endDate:v32];
                    [v40 duration];
                    v81 = sub_100009E5C(5, v41);
                    if (sub_10001F78C(v81))
                    {
                      v78 = v40;
                      v42 = qword_1000578F0;
                      if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
                      {
                        v77 = v42;
                        v57 = [NSNumber numberWithUnsignedInteger:v83];
                        *buf = 138412546;
                        v95 = v57;
                        v96 = 2112;
                        v97 = *&v24;
                        _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "timeOfPredictionOffsetBin is nil. Not computing CA metrics for event #%@: %@", buf, 0x16u);
                      }

                      v40 = v78;
                    }

                    else
                    {
                      [v27 doubleValue];
                      v44 = v43;
                      v76 = sub_100009D5C(v28);
                      if (sub_10001F78C(v76))
                      {
                        log = qword_1000578F0;
                        if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
                        {
                          v79 = v40;
                          logc = log;
                          v45 = [NSNumber numberWithUnsignedInteger:v83];
                          *buf = 138412546;
                          v95 = v45;
                          v96 = 2112;
                          v97 = *&v24;
                          _os_log_error_impl(&_mh_execute_header, logc, OS_LOG_TYPE_ERROR, "startSOCBin is nil. Not computing CA metrics for event #%@: %@", buf, 0x16u);

                          v40 = v79;
                        }
                      }

                      else
                      {
                        v80 = v40;
                        v46 = v44 * 3600.0;
                        v66 = v44 * 3600.0 <= v8;
                        [v82 timeIntervalSinceDate:v32];
                        v48 = v47;
                        v49 = v47 - v46;
                        loga = v49 > 0.0;
                        v50 = [NSNumber numberWithDouble:v49 / 60.0];
                        v51 = [NSNumber numberWithDouble:vabdd_f64(v48, v46) / 60.0];
                        if (v20 > v30)
                        {
                          v21 = v48;
                          v22 = v46;
                          v20 = v30;
                        }

                        v91[0] = @"prediction_error_in_mins";
                        v91[1] = @"prediction_error_absolute_in_mins";
                        v70 = v51;
                        v71 = v50;
                        v92[0] = v50;
                        v92[1] = v51;
                        v91[2] = @"end_soc_enum";
                        v68 = [NSNumber numberWithInteger:v64];
                        v92[2] = v68;
                        v92[3] = v26;
                        v91[3] = @"model_id";
                        v91[4] = @"short_charging_session";
                        v65 = [NSNumber numberWithBool:v48 <= v8];
                        v92[4] = v65;
                        v91[5] = @"short_charging_session_predicted";
                        v67 = [NSNumber numberWithBool:v66];
                        v92[5] = v67;
                        v92[6] = v76;
                        v91[6] = @"start_soc_bin";
                        v91[7] = @"time_of_prediction_offset_bin";
                        v92[7] = v81;
                        v91[8] = @"under_predicted";
                        v52 = [NSNumber numberWithBool:loga];
                        v92[8] = v52;
                        v53 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:9];
                        logb = [v53 mutableCopy];

                        isAdapterWireless = [(BatteryAnalysisManager *)self isAdapterWireless];

                        if (isAdapterWireless)
                        {
                          isAdapterWireless2 = [(BatteryAnalysisManager *)self isAdapterWireless];
                          [logb setObject:isAdapterWireless2 forKeyedSubscript:@"is_wireless"];
                        }

                        v56 = qword_1000578F0;
                        if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEBUG))
                        {
                          v58 = v56;
                          v69 = [NSNumber numberWithUnsignedInteger:v83];
                          *buf = 138412546;
                          v95 = v69;
                          v96 = 2112;
                          v97 = *&logb;
                          _os_log_debug_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEBUG, "Dictionary sent to core analytics for event %@: %@", buf, 0x16u);
                        }

                        [BIMetricRecorder sendToCoreAnalytics:logb forEvent:@"com.apple.bi.battery_analysis" withTrialManager:0];
                        ++v83;

                        v40 = v80;
                      }
                    }
                  }

                  else
                  {
                    v35 = qword_1000578F0;
                    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138412802;
                      v95 = v32;
                      v96 = 2112;
                      v97 = *&v84;
                      v98 = 2112;
                      v99 = *&v82;
                      _os_log_fault_impl(&_mh_execute_header, v35, OS_LOG_TYPE_FAULT, "Prediction date (%@) is outside valid range [%@ to %@]", buf, 0x20u);
                    }
                  }

                  p_vtable = (battery_analysis_tt80_model_7gzamb2979Input + 24);
                }

                v23 = v23 + 1;
              }

              while (v19 != v23);
              v59 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
              v19 = v59;
            }

            while (v59);
          }

          else
          {
            v21 = 0.0;
            v22 = 0.0;
          }

          v60 = p_vtable[286];
          cCopy = v63;
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v95 = v63;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Completed computing core analytics metrics for endSOC: %@", buf, 0xCu);
          }

          v17 = v61;
          v15 = v62;
          if ([obj count])
          {
            [(BatteryAnalysisManager *)self postNotificationForComparision:v22 against:v21];
          }
        }

        else if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
        {
          sub_10002FBC8();
        }
      }

      else if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
      {
        sub_10002FBFC();
      }
    }
  }

  else if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
  {
    sub_10002FC64();
  }
}

- (void)updateTarget:(int64_t)target withEstimate:(double)estimate andReply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  collectionQueue = self->_collectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E42C;
  block[3] = &unk_1000488D8;
  objc_copyWeak(v13, &location);
  v12 = replyCopy;
  v13[1] = target;
  v13[2] = *&estimate;
  v10 = replyCopy;
  dispatch_async(collectionQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)runAndReply:(id)reply
{
  replyCopy = reply;
  objc_initWeak(&location, self);
  collectionQueue = self->_collectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E780;
  block[3] = &unk_100048900;
  objc_copyWeak(&v9, &location);
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(collectionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (double)timeSincePlugin
{
  v3 = sub_10001F754();
  v4 = v3;
  monotonicPluginTimeInSeconds = self->_monotonicPluginTimeInSeconds;
  if (monotonicPluginTimeInSeconds <= 0)
  {
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_FAULT))
    {
      sub_10002FCD4();
    }

    self->_monotonicPluginTimeInSeconds = v4;
    v8 = qword_1000578F8;
    v9 = [NSNumber numberWithInteger:v4];
    [v8 setObject:v9 forKey:@"monotonicPluginTimeInSeconds"];

    self->_socAtPlugin = sub_10001E8F4();
    [qword_1000578F8 setInteger:? forKey:?];
    v7 = 0.0;
  }

  else
  {
    v6 = v3 - monotonicPluginTimeInSeconds;
    if (v6 < 0)
    {
      self->_monotonicPluginTimeInSeconds = v3;
      v10 = qword_1000578F8;
      v11 = [NSNumber numberWithInteger:v3];
      [v10 setObject:v11 forKey:@"monotonicPluginTimeInSeconds"];

      self->_socAtPlugin = sub_10001E8F4();
      [qword_1000578F8 setInteger:? forKey:?];
      v7 = 0.0;
      if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
      {
        sub_10002FD08();
      }
    }

    else
    {
      v7 = v6;
    }
  }

  v12 = qword_1000578F0;
  if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v15 = 134218496;
    monotonicPluginTimeInSeconds = [(BatteryAnalysisManager *)self monotonicPluginTimeInSeconds];
    v17 = 2048;
    v18 = v4;
    v19 = 2048;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Plugin time: %ld, current time: %ld, timeSincePlugin (seconds): %f", &v15, 0x20u);
  }

  return v7;
}

- (void)submitEstimatorJobWithName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    objc_initWeak(&location, self);
    collectionQueue = self->_collectionQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000ECD0;
    block[3] = &unk_100048928;
    objc_copyWeak(&v10, &location);
    v6 = nameCopy;
    v9 = v6;
    dispatch_async(collectionQueue, block);
    v7 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Submitted job: %@", buf, 0xCu);
    }

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
  {
    sub_10002FD3C();
  }
}

- (BOOL)tryEstimatorRunWithName:(id)name withError:(id *)error
{
  nameCopy = name;
  v7 = os_transaction_create();
  v8 = qword_1000578F0;
  if (!nameCopy)
  {
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
    {
      sub_10002FDD8();
      if (!error)
      {
        goto LABEL_47;
      }
    }

    else if (!error)
    {
      goto LABEL_47;
    }

    v10 = BIBatteryAnalysisErrorDomain;
    v11 = 8;
    goto LABEL_22;
  }

  if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v66 = nameCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Running inference for job Name: %@!", buf, 0xCu);
  }

  if (!self->_isEstimateOveridden)
  {
    if ((IOPSDrawingUnlimitedPower() & 1) == 0)
    {
      v14 = qword_1000578F0;
      if (!os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v15 = "Aborting estimator run as device is disconnected.";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
LABEL_20:
      if (error)
      {
        v10 = BIBatteryAnalysisErrorDomain;
        v11 = 5;
        goto LABEL_22;
      }

LABEL_47:
      v16 = 0;
      goto LABEL_85;
    }

    v12 = sub_10001E8F4();
    v61 = [nameCopy isEqualToString:@"batteryAnalysisRunAtPlugin"];
    if (v61)
    {
      self->_isFirstEstimateComputed = 1;
      [qword_1000578F8 setBool:1 forKey:@"isFirstEstimateComputed"];
    }

    if (self->_slowAdapterDetected)
    {
      v13 = 4;
    }

    else
    {
      [(BatteryAnalysisManager *)self timeSincePlugin];
      if (v17 >= 60.0)
      {
        v18 = sub_10001EEC4();
        v19 = v18;
        if (v18 && [v18 unsignedIntValue] == 1)
        {
          v20 = qword_1000578F0;
          if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Slow adapter detected. Setting slowAdapterDetected property.", buf, 2u);
          }

          self->_slowAdapterDetected = 1;
          [qword_1000578F8 setBool:-[BatteryAnalysisManager slowAdapterDetected](self forKey:{"slowAdapterDetected"), @"slowAdapterDetected"}];
          v21 = 4;
        }

        else
        {
          v21 = 3;
        }

        v62 = v21;

        goto LABEL_33;
      }

      v13 = 3;
    }

    v62 = v13;
LABEL_33:
    v63 = v12;
    if (v12 >= 0x50)
    {
      v29 = qword_1000578F0;
      v27 = -1.0;
      if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v66 = v12;
        *&v66[4] = 1024;
        *&v66[6] = 79;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Not running TT80 inference because SOC = %u > %d.", buf, 0xEu);
      }

      v28 = v62;
LABEL_51:
      v31 = sub_10001FA0C();
      v32 = qword_1000578F0;
      if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v66 = v31;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Current Charge limit is set at: %@", buf, 0xCu);
      }

      chargeLimit = self->_chargeLimit;
      v64 = v31;
      if (chargeLimit != [v31 integerValue])
      {
        v34 = qword_1000578F0;
        if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
        {
          v35 = self->_chargeLimit;
          *buf = 134217984;
          *v66 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Charge limit within the manager: %ld. Updating charge limit for the manager.", buf, 0xCu);
        }

        self->_chargeLimit = [v31 integerValue];
        v36 = qword_1000578F8;
        chargeLimit = [(BatteryAnalysisManager *)self chargeLimit];
        v38 = v36;
        v31 = v64;
        [v38 setInteger:chargeLimit forKey:@"chargeLimit"];
      }

      v39 = self->_chargeLimit;
      if (v63 <= 0x4F && v39 == 80)
      {
        v40 = +[BatteryAnalysisService sharedInstance];
        [v40 updateEstimate:1 forTarget:v63 atStartSOC:self->_chargeLimit withEndSOC:v61 confidenceScore:self->_isEstimateOveridden isFirstEstimate:v28 isEstimateOverridden:v27 andAdditionalInformation:1.0];

        v31 = v64;
        [(BatteryAnalysisManager *)self postNotificationForBatteryAnalysisTarget:1];
        v39 = self->_chargeLimit;
      }

      if (v39 < 81 || v39 % 5uLL)
      {
        v54 = qword_1000578F0;
        if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
        {
          v55 = self->_chargeLimit;
          *buf = 134217984;
          *v66 = v55;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Charge limit is set at: %ld. Skipping running TTL estimator.", buf, 0xCu);
        }
      }

      else
      {
        v41 = +[BatteryAnalysisEstimator sharedPredictor];
        integerValue = [v31 integerValue];
        v72[0] = @"timeSincePlugin";
        [(BatteryAnalysisManager *)self timeSincePlugin];
        v43 = [NSNumber numberWithDouble:?];
        v72[1] = @"socAtPlugin";
        v73[0] = v43;
        v44 = [NSNumber numberWithInteger:self->_socAtPlugin];
        v73[1] = v44;
        v45 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:2];
        [v41 estimateAndRecordForEndSOC:integerValue withParams:v45];
        v47 = v46;

        if (v27 > 0.0 && v47 > 0.0 && v47 < v27 + 300.0)
        {
          v70[0] = &off_10004D2E8;
          v70[1] = &off_10004D318;
          v71[0] = &off_10004D810;
          v71[1] = &off_10004D820;
          v70[2] = &off_10004D348;
          v70[3] = &off_10004D378;
          v71[2] = &off_10004D830;
          v71[3] = &off_10004D840;
          v48 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:4];
          v49 = [NSNumber numberWithInteger:self->_chargeLimit];
          v50 = [v48 objectForKey:v49];
          [v50 doubleValue];
          v52 = v51;

          v53 = qword_1000578F0;
          if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218496;
            *v66 = v47;
            *&v66[8] = 2048;
            v67 = *&v27;
            v68 = 2048;
            v69 = v52;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "TTL estimate too short compared to TT80 estimate (TTL: %.01lf seconds, TT80: %.01lf seconds. Increasing our estimate by %.01lf seconds.", buf, 0x20u);
          }

          v47 = v27 + v52;
        }

        if ((IOPSDrawingUnlimitedPower() & 1) == 0)
        {
          v59 = qword_1000578F0;
          v16 = 0;
          if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Aborting inference after TTL model run as device is disconnected.", buf, 2u);
            v16 = 0;
          }

          goto LABEL_84;
        }

        if (v47 == -1.0)
        {
          if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
          {
            sub_10002FDA4();
          }

          v56 = 2;
          if (self->_slowAdapterDetected)
          {
            v56 = 5;
          }

          v62 = v56;
        }

        v57 = +[BatteryAnalysisService sharedInstance];
        [v57 updateEstimate:1 forTarget:v63 atStartSOC:self->_chargeLimit withEndSOC:v61 confidenceScore:self->_isEstimateOveridden isFirstEstimate:v62 isEstimateOverridden:v47 andAdditionalInformation:1.0];

        [(BatteryAnalysisManager *)self postNotificationForBatteryAnalysisTarget:1];
      }

      if ([nameCopy isEqualToString:@"batteryAnalysisRunDuringCharging"])
      {
        v16 = 1;
        [BIXPCAlarm setAlarmWithName:@"batteryAnalysisRunDuringCharging" withClock:4 afterSeconds:1 wakeUpAP:300.0];
        v58 = qword_1000578F0;
        if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          *v66 = 0x4072C00000000000;
          *&v66[8] = 2112;
          v67 = @"batteryAnalysisRunDuringCharging";
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Alarm set after %g seconds for %@!", buf, 0x16u);
        }
      }

      else
      {
        v16 = 1;
      }

LABEL_84:

      goto LABEL_85;
    }

    v22 = +[BatteryAnalysisEstimator sharedPredictor];
    v74[0] = @"timeSincePlugin";
    [(BatteryAnalysisManager *)self timeSincePlugin];
    v23 = [NSNumber numberWithDouble:?];
    v74[1] = @"socAtPlugin";
    v75[0] = v23;
    v24 = [NSNumber numberWithInteger:self->_socAtPlugin];
    v75[1] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:2];
    [v22 estimateAndRecordForEndSOC:80 withParams:v25];
    v27 = v26;

    if (IOPSDrawingUnlimitedPower())
    {
      if (v27 == -1.0)
      {
        if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_ERROR))
        {
          sub_10002FD70();
        }

        if (self->_slowAdapterDetected)
        {
          v28 = 5;
        }

        else
        {
          v28 = 2;
        }
      }

      else
      {
        v28 = v62;
        if (v61)
        {
          [(BatteryAnalysisManager *)self postInternalTT80Notification:v27];
          v28 = v62;
        }
      }

      v30 = +[BatteryAnalysisService sharedInstance];
      [v30 updateEstimate:0 forTarget:v12 atStartSOC:80 withEndSOC:v61 confidenceScore:self->_isEstimateOveridden isFirstEstimate:v28 isEstimateOverridden:v27 andAdditionalInformation:1.0];

      [(BatteryAnalysisManager *)self postNotificationForBatteryAnalysisTarget:0];
      goto LABEL_51;
    }

    v14 = qword_1000578F0;
    if (!os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v15 = "Aborting inference after TT80 estimator run as device is disconnected.";
    goto LABEL_19;
  }

  v9 = qword_1000578F0;
  if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Estimates overridden. Skipping the estimator run.", buf, 2u);
  }

  if (!error)
  {
    goto LABEL_47;
  }

  v10 = BIBatteryAnalysisErrorDomain;
  v11 = 6;
LABEL_22:
  [NSError errorWithDomain:v10 code:v11 userInfo:0];
  *error = v16 = 0;
LABEL_85:

  return v16;
}

- (void)postNotificationForBatteryAnalysisTarget:(int64_t)target
{
  v4 = +[BIBatteryAnalysisSharedResources sharedTargetDetails];
  v5 = [NSNumber numberWithInteger:target];
  v6 = [v4 objectForKey:v5];

  notificationName = [v6 notificationName];
  notify_post([notificationName UTF8String]);
  v8 = qword_1000578F0;
  if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    friendlyName = [v6 friendlyName];
    v11 = 138412290;
    v12 = friendlyName;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Posted notification to clients for battery analysis %@ target estimate update.", &v11, 0xCu);
  }
}

- (void)postInternalTT80Notification:(double)notification
{
  if (sub_10001E444())
  {
    v5 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Posting internal TT80 notification.", buf, 2u);
    }

    v6 = sub_10001F960();
    v7 = [v6 stringFromTimeInterval:notification];

    v8 = [NSString stringWithFormat:@"It will take %@ to charge to 80%%.", v7];
    v9 = objc_alloc_init(UNMutableNotificationContent);
    [v9 setTitle:@"Charge Time"];
    [v9 setBody:v8];
    [v9 setCategoryIdentifier:@"TimeTo80"];
    [v9 setShouldIgnoreDowntime:1];
    [v9 setShouldIgnoreDoNotDisturb:1];
    [v9 setShouldHideDate:0];
    [v9 setShouldSuppressScreenLightUp:0];
    v10 = [UNNotificationIcon iconForSystemImageNamed:@"bolt.fill"];
    [v9 setIcon:v10];

    v11 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Battery"];
    if (v11)
    {
      [v9 setDefaultActionURL:v11];
    }

    v12 = [NSDate dateWithTimeIntervalSinceNow:43200.0];
    [v9 setExpirationDate:v12];

    [(BatteryIntelligenceNotificationManager *)self->_notifyObj postNotificationWith:@"TimeTo80" content:v9];
  }
}

- (void)postNotificationForComparision:(double)comparision against:(double)against
{
  if (sub_10001E444())
  {
    v7 = sub_10001F960();
    v8 = [v7 stringFromTimeInterval:comparision];

    v9 = sub_10001F960();
    v10 = [v9 stringFromTimeInterval:against];

    v11 = [NSString stringWithFormat:@"Device reached %d in %@, First estimate for the latest charging session was %@.", sub_10001E8F4(), v10, v8];
    v12 = objc_alloc_init(UNMutableNotificationContent);
    [v12 setTitle:@"Charge Time"];
    [v12 setBody:v11];
    [v12 setCategoryIdentifier:@"TimeTo80"];
    [v12 setShouldIgnoreDowntime:1];
    [v12 setShouldIgnoreDoNotDisturb:1];
    [v12 setShouldHideDate:0];
    [v12 setShouldSuppressScreenLightUp:0];
    v13 = [UNNotificationIcon iconForSystemImageNamed:@"bolt.fill"];
    [v12 setIcon:v13];

    v14 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Battery"];
    if (v14)
    {
      [v12 setDefaultActionURL:v14];
    }

    v15 = [NSDate dateWithTimeIntervalSinceNow:43200.0];
    [v12 setExpirationDate:v15];

    [(BatteryIntelligenceNotificationManager *)self->_notifyObj postNotificationWith:@"TimeTo80" content:v12];
    v16 = qword_1000578F0;
    if (os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Successfully posted internal comparison notification.", buf, 2u);
    }
  }
}

- (void)dealloc
{
  context = self->_context;
  if (context && self->_contextStoreRegistration)
  {
    [(_CDContext *)context deregisterCallback:?];
  }

  notificationTokens = self->_notificationTokens;
  if (notificationTokens)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = notificationTokens;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = v6;
    v8 = *v19;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        unsignedIntValue = [*(*(&v18 + 1) + 8 * i) unsignedIntValue];
        v11 = notify_cancel(unsignedIntValue);
        v12 = qword_1000578F0;
        v13 = os_log_type_enabled(qword_1000578F0, OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          if (!v13)
          {
            continue;
          }

          *buf = 67109376;
          v23 = unsignedIntValue;
          v24 = 1024;
          v25 = v11;
          v14 = v12;
          v15 = "Error cancelling notification token: %u, result: %d.";
          v16 = 14;
        }

        else
        {
          if (!v13)
          {
            continue;
          }

          *buf = 67109120;
          v23 = unsignedIntValue;
          v14 = v12;
          v15 = "Successfully cancelled notification token: %u.";
          v16 = 8;
        }

        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, v16);
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (!v7)
      {
LABEL_18:

        break;
      }
    }
  }

  [(BatteryAnalysisManager *)self deleteAllAlarms];
  v17.receiver = self;
  v17.super_class = BatteryAnalysisManager;
  [(BatteryAnalysisManager *)&v17 dealloc];
}

@end