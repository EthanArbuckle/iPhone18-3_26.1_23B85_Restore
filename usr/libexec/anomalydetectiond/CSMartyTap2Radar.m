@interface CSMartyTap2Radar
- (BOOL)createNotification:(id)a3 confirmation:(__CFUserNotification *)a4 error:(id *)a5;
- (BOOL)showPrivacyNotificationWithError:(id *)a3;
- (BOOL)startMonitoringWithError:(id *)a3;
- (CSMartyTap2Radar)initWithSpoolerFolder:(id)a3 andConfiguration:(id)a4;
- (CSMartyTap2RadarConfirmation_struct)showConfirmationWithError:(id *)a3 withEventType:(int64_t)a4;
- (unint64_t)getNotificationResponse:(__CFUserNotification *)a3 error:(id *)a4;
- (void)deletePendingFiles:(id)a3 ttrManagedMsl:(BOOL)a4;
- (void)deletePendingMSLFile:(id)a3;
- (void)showTTRWithTriggerUUID:(id)a3 ttrManagedFiles:(BOOL)a4 withEventType:(int64_t)a5;
@end

@implementation CSMartyTap2Radar

- (void)deletePendingMSLFile:(id)a3
{
  v3 = a3;
  v4 = [CSAnomalyEventService generateMslUrl:v3 andSessionType:2 ttrManagedMsl:1];
  if (qword_100456918 != -1)
  {
    sub_1003585EC();
  }

  v5 = qword_100456920;
  if (os_log_type_enabled(qword_100456920, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "TTR Deleting MSL file %{private}@", buf, 0xCu);
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [v4 path];
  v13 = 0;
  v8 = [v6 removeItemAtPath:v7 error:&v13];
  v9 = v13;

  if ((v8 & 1) == 0)
  {
    if (qword_100456918 != -1)
    {
      sub_100358600();
    }

    v10 = qword_100456920;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v4 description];
      v12 = [v9 description];
      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to delete file: %@, error: %@", buf, 0x16u);
    }
  }
}

- (void)deletePendingFiles:(id)a3 ttrManagedMsl:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    [(CSMartyTap2Radar *)self deletePendingMSLFile:v6];
  }

  [(CSMartyTap2Radar *)self deletePendingMetadatafile:v6 ttrManagedMsl:1];
}

- (CSMartyTap2Radar)initWithSpoolerFolder:(id)a3 andConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = CSMartyTap2Radar;
  v8 = [(CSMartyTap2Radar *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_config, a4);
    v9->_monitoring = 0;
    ttrMonitor = v9->_ttrMonitor;
    v9->_ttrMonitor = 0;

    ttrCleanupMonitor = v9->_ttrCleanupMonitor;
    v9->_ttrCleanupMonitor = 0;

    v12 = [[NSURL alloc] initFileURLWithPath:v6 isDirectory:1];
    folderURL = v9->_folderURL;
    v9->_folderURL = v12;

    if (qword_100456918 != -1)
    {
      sub_100358600();
    }

    v14 = qword_100456920;
    if (os_log_type_enabled(qword_100456920, OS_LOG_TYPE_INFO))
    {
      v15 = v9->_folderURL;
      *buf = 138412290;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Starting TTR with spooler at: %@", buf, 0xCu);
    }

    v16 = dispatch_queue_create("MartyTap2RadarQueue", 0);
    dispatchQueue = v9->_dispatchQueue;
    v9->_dispatchQueue = v16;
  }

  return v9;
}

- (BOOL)startMonitoringWithError:(id *)a3
{
  v5 = +[CSPlatformInfo sharedInstance];
  if ([v5 getSystemReleaseType] != 2)
  {
    v23 = NSLocalizedDescriptionKey;
    v24 = @"TTR not available because this is not an internal install";
    v20 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    *a3 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:v20];

    goto LABEL_7;
  }

  if (![(CSMartyTap2Radar *)self monitoring])
  {
    if (sub_10001B724(self, a3, @"starter"))
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10002716C;
      v22[3] = &unk_100413240;
      v22[4] = self;
      v6 = objc_retainBlock(v22);
      v7 = self;
      objc_sync_enter(v7);
      v8 = [CSFolderMonitor alloc];
      v9 = [(CSMartyTap2Radar *)v7 folderURL];
      v10 = [v9 path];
      v11 = [(CSFolderMonitor *)v8 initWithFolder:v10 fileExtension:@"ttr" queue:v7->_dispatchQueue postfix:@"Marty" andAction:v6];
      ttrMonitor = v7->_ttrMonitor;
      v7->_ttrMonitor = v11;

      v13 = [[CSFolderMonitorBackgroundScanningConfiguration alloc] initWithFileProtectionType:NSFileProtectionCompleteUnlessOpen allowBattery:[(CSMartyTap2RadarConfiguration *)v7->_config allowOnBattery] periodInseconds:[(CSMartyTap2RadarConfiguration *)v7->_config checkIntervalInSeconds]];
      [(CSFolderMonitor *)v7->_ttrMonitor setupRecurringScanningWithConfiguration:v13 runNow:0];
      [(CSMartyTap2Radar *)v7 setMonitoring:1];
      v14 = [CSAnomalyEventService generateMslUrl:&stru_100436548 andSessionType:2 ttrManagedMsl:1];
      v15 = [v14 URLByDeletingPathExtension];
      v16 = [v15 path];

      v17 = [[CSFolderMonitor alloc] initWithFolder:v16 fileExtension:&stru_100436548 queue:v7->_dispatchQueue postfix:@"MartyCleanup" andAction:&stru_1004142C8];
      ttrCleanupMonitor = v7->_ttrCleanupMonitor;
      v7->_ttrCleanupMonitor = v17;

      [(CSFolderMonitor *)v7->_ttrCleanupMonitor setupRecurringScanningWithConfiguration:v13 runNow:1];
      objc_sync_exit(v7);

      goto LABEL_5;
    }

LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

LABEL_5:
  v19 = 1;
LABEL_8:

  return v19;
}

- (void)showTTRWithTriggerUUID:(id)a3 ttrManagedFiles:(BOOL)a4 withEventType:(int64_t)a5
{
  v8 = a3;
  dispatchQueue = self->_dispatchQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100027AE0;
  v11[3] = &unk_1004142F0;
  v12 = v8;
  v13 = a5;
  v14 = a4;
  v11[4] = self;
  v10 = v8;
  dispatch_async(dispatchQueue, v11);
}

- (BOOL)createNotification:(id)a3 confirmation:(__CFUserNotification *)a4 error:(id *)a5
{
  v7 = a3;
  error = 0;
  v8 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v7);
  *a4 = v8;
  if (v8)
  {
    if (!error)
    {
      v15 = 1;
      goto LABEL_18;
    }

    if (a5)
    {
      v19 = NSLocalizedDescriptionKey;
      v9 = [NSString stringWithFormat:@"Error %d", error];
      v20 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      *a5 = [NSError errorWithDomain:NSCocoaErrorDomain code:256 userInfo:v10];
    }

    if (qword_100456918 != -1)
    {
      sub_100358600();
    }

    v11 = qword_100456920;
    if (os_log_type_enabled(qword_100456920, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error showing confirmation window", buf, 2u);
    }

    CFRelease(*a4);
  }

  else
  {
    if (a5)
    {
      v21 = NSLocalizedDescriptionKey;
      v12 = [NSString stringWithFormat:@"Error %d", error];
      v22 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      *a5 = [NSError errorWithDomain:NSCocoaErrorDomain code:4 userInfo:v13];
    }

    if (qword_100456918 != -1)
    {
      sub_100358600();
    }

    v14 = qword_100456920;
    if (os_log_type_enabled(qword_100456920, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unable to show confirmation window", buf, 2u);
    }
  }

  v15 = 0;
LABEL_18:

  return v15;
}

- (CSMartyTap2RadarConfirmation_struct)showConfirmationWithError:(id *)a3 withEventType:(int64_t)a4
{
  v7 = objc_alloc_init(NSDateFormatter);
  [v7 setDateFormat:@"EEE h:mm a"];
  v8 = +[NSDate now];
  v9 = [v7 stringFromDate:v8];

  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = v10;
  if ((a4 - 1) >= 3)
  {
    if (a4 == 4)
    {
      v12 = @"\nRecently, your device sensed a potential crash event.";
      [v10 setObject:@"Was NOT in an accident. File radar." forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
      [v11 setObject:@"Was in an accident. File radar." forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];
    }

    else
    {
      v12 = @"Your device sensed an event helpful for improving crash detection.";
    }
  }

  else
  {
    v12 = [NSString stringWithFormat:@"\nOn %@, your device sensed an event helpful for improving crash detection.", v9];
    [v11 setObject:@"File radar" forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
  }

  [v11 setObject:@"Improve Crash Detection" forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  [v11 setObject:v12 forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  [v11 setObject:@"Ignore" forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];
  [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
  [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDismissOnLock];
  [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];
  [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationIgnoresQuietMode];
  [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDisableIdleSleepWhileVisible];
  cf = 0;
  if ([(CSMartyTap2Radar *)self createNotification:v11 confirmation:&cf error:a3])
  {
    v13 = [(CSMartyTap2Radar *)self getNotificationResponse:cf error:a3]& 3;
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = 1;
        goto LABEL_14;
      }
    }

    else if (!v13)
    {
      v14 = 2 * (a4 == 4);
LABEL_14:
      CFRelease(cf);
      goto LABEL_15;
    }

    v14 = 3;
    goto LABEL_14;
  }

  v14 = 4;
LABEL_15:

  v15 = v14;
  v16 = v9;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (unint64_t)getNotificationResponse:(__CFUserNotification *)a3 error:(id *)a4
{
  responseFlags = 0;
  if (CFUserNotificationReceiveResponse(a3, 0.0, &responseFlags))
  {
    if (a4)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Error receiving notification response";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      *a4 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:v5];
    }

    if (qword_100456918 != -1)
    {
      sub_100358600();
    }

    v6 = qword_100456920;
    if (os_log_type_enabled(qword_100456920, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      v7 = "User didn't see notification";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, v12, 2u);
    }
  }

  else
  {
    if (qword_100456918 != -1)
    {
      sub_100358600();
    }

    v10 = qword_100456920;
    if (os_log_type_enabled(qword_100456920, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      v7 = "User saw notification";
      v8 = v10;
      v9 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }
  }

  return responseFlags;
}

- (BOOL)showPrivacyNotificationWithError:(id *)a3
{
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:@"Collected Sensor Data" forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  [v5 setObject:@"By filing this radar forKeyedSubscript:{you consent to sending information collected by the feature from your iOS device and Apple Watch to Apple in order to develop, improve, and understand the effectiveness of the feature. By submitting this radar, you agree to submit personal and non-personal information and you understand that information submitted may be tied to your name and email address and may be used to contact you about this radar.\n\nData submitted may include raw sensor data, derived information from safety-related sensors, information about your use of this feature, as well as information about your location, alerts, and your interactions with this feature, including data used to detect whether a severe car crash occurred such as motion (such as accelerometer, gyroscope, barometric pressure, and magnetometer sensor data), driving information and activity (such as general direction you were traveling, time spent driving, and speed-related data), and other information about, leading up to, and derived from the detected crash (such as approximate location and time of event, angle of the sun, and environmental sound exposure levels).\n\nApple may also collect certain data you have entered, including demographic information (such as gender and approximate age) and data about your device state at the time of an event, including Wi-Fi or cellular signal, version, software version, and whether your device was paired to another Apple device such as your Watch. \n\nApple may also receive information about your environment, interaction between devices, how long a feature was engaged, your engagement with safety-related notifications, apps, settings, and features, including third-party enablement, and if an emergency call was placed as a result of your use of a specific safety feature and how it was placed. All of the above data may be aggregated and analyzed on your iOS device and Apple Watch before being sent to Apple.\n\nYour data will not be used for any other purpose. \n\nAt all times, information collected by Apple will be treated in accordance with Apple’s Privacy Policy, which can be found at www.apple.com/privacy.", kCFUserNotificationAlertMessageKey}];
  [v5 setObject:@"Agree" forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
  [v5 setObject:@"Do not agree" forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
  [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDismissOnLock];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationIgnoresQuietMode];
  [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDisableIdleSleepWhileVisible];
  cf = 0;
  if ([(CSMartyTap2Radar *)self createNotification:v5 confirmation:&cf error:a3])
  {
    v6 = [(CSMartyTap2Radar *)self getNotificationResponse:cf error:a3];
    CFRelease(cf);
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end