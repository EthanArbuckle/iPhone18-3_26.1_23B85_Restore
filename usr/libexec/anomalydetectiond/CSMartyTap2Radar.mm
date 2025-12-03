@interface CSMartyTap2Radar
- (BOOL)createNotification:(id)notification confirmation:(__CFUserNotification *)confirmation error:(id *)error;
- (BOOL)showPrivacyNotificationWithError:(id *)error;
- (BOOL)startMonitoringWithError:(id *)error;
- (CSMartyTap2Radar)initWithSpoolerFolder:(id)folder andConfiguration:(id)configuration;
- (CSMartyTap2RadarConfirmation_struct)showConfirmationWithError:(id *)error withEventType:(int64_t)type;
- (unint64_t)getNotificationResponse:(__CFUserNotification *)response error:(id *)error;
- (void)deletePendingFiles:(id)files ttrManagedMsl:(BOOL)msl;
- (void)deletePendingMSLFile:(id)file;
- (void)showTTRWithTriggerUUID:(id)d ttrManagedFiles:(BOOL)files withEventType:(int64_t)type;
@end

@implementation CSMartyTap2Radar

- (void)deletePendingMSLFile:(id)file
{
  fileCopy = file;
  v4 = [CSAnomalyEventService generateMslUrl:fileCopy andSessionType:2 ttrManagedMsl:1];
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
  path = [v4 path];
  v13 = 0;
  v8 = [v6 removeItemAtPath:path error:&v13];
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

- (void)deletePendingFiles:(id)files ttrManagedMsl:(BOOL)msl
{
  mslCopy = msl;
  filesCopy = files;
  if (mslCopy)
  {
    [(CSMartyTap2Radar *)self deletePendingMSLFile:filesCopy];
  }

  [(CSMartyTap2Radar *)self deletePendingMetadatafile:filesCopy ttrManagedMsl:1];
}

- (CSMartyTap2Radar)initWithSpoolerFolder:(id)folder andConfiguration:(id)configuration
{
  folderCopy = folder;
  configurationCopy = configuration;
  v19.receiver = self;
  v19.super_class = CSMartyTap2Radar;
  v8 = [(CSMartyTap2Radar *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_config, configuration);
    v9->_monitoring = 0;
    ttrMonitor = v9->_ttrMonitor;
    v9->_ttrMonitor = 0;

    ttrCleanupMonitor = v9->_ttrCleanupMonitor;
    v9->_ttrCleanupMonitor = 0;

    v12 = [[NSURL alloc] initFileURLWithPath:folderCopy isDirectory:1];
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

- (BOOL)startMonitoringWithError:(id *)error
{
  v5 = +[CSPlatformInfo sharedInstance];
  if ([v5 getSystemReleaseType] != 2)
  {
    v23 = NSLocalizedDescriptionKey;
    v24 = @"TTR not available because this is not an internal install";
    v20 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    *error = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:v20];

    goto LABEL_7;
  }

  if (![(CSMartyTap2Radar *)self monitoring])
  {
    if (sub_10001B724(self, error, @"starter"))
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10002716C;
      v22[3] = &unk_100413240;
      v22[4] = self;
      v6 = objc_retainBlock(v22);
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v8 = [CSFolderMonitor alloc];
      folderURL = [(CSMartyTap2Radar *)selfCopy folderURL];
      path = [folderURL path];
      v11 = [(CSFolderMonitor *)v8 initWithFolder:path fileExtension:@"ttr" queue:selfCopy->_dispatchQueue postfix:@"Marty" andAction:v6];
      ttrMonitor = selfCopy->_ttrMonitor;
      selfCopy->_ttrMonitor = v11;

      v13 = [[CSFolderMonitorBackgroundScanningConfiguration alloc] initWithFileProtectionType:NSFileProtectionCompleteUnlessOpen allowBattery:[(CSMartyTap2RadarConfiguration *)selfCopy->_config allowOnBattery] periodInseconds:[(CSMartyTap2RadarConfiguration *)selfCopy->_config checkIntervalInSeconds]];
      [(CSFolderMonitor *)selfCopy->_ttrMonitor setupRecurringScanningWithConfiguration:v13 runNow:0];
      [(CSMartyTap2Radar *)selfCopy setMonitoring:1];
      v14 = [CSAnomalyEventService generateMslUrl:&stru_100436548 andSessionType:2 ttrManagedMsl:1];
      uRLByDeletingPathExtension = [v14 URLByDeletingPathExtension];
      path2 = [uRLByDeletingPathExtension path];

      v17 = [[CSFolderMonitor alloc] initWithFolder:path2 fileExtension:&stru_100436548 queue:selfCopy->_dispatchQueue postfix:@"MartyCleanup" andAction:&stru_1004142C8];
      ttrCleanupMonitor = selfCopy->_ttrCleanupMonitor;
      selfCopy->_ttrCleanupMonitor = v17;

      [(CSFolderMonitor *)selfCopy->_ttrCleanupMonitor setupRecurringScanningWithConfiguration:v13 runNow:1];
      objc_sync_exit(selfCopy);

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

- (void)showTTRWithTriggerUUID:(id)d ttrManagedFiles:(BOOL)files withEventType:(int64_t)type
{
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100027AE0;
  v11[3] = &unk_1004142F0;
  v12 = dCopy;
  typeCopy = type;
  filesCopy = files;
  v11[4] = self;
  v10 = dCopy;
  dispatch_async(dispatchQueue, v11);
}

- (BOOL)createNotification:(id)notification confirmation:(__CFUserNotification *)confirmation error:(id *)error
{
  notificationCopy = notification;
  error = 0;
  v8 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, notificationCopy);
  *confirmation = v8;
  if (v8)
  {
    if (!error)
    {
      v15 = 1;
      goto LABEL_18;
    }

    if (error)
    {
      v19 = NSLocalizedDescriptionKey;
      error = [NSString stringWithFormat:@"Error %d", error];
      v20 = error;
      v10 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      *error = [NSError errorWithDomain:NSCocoaErrorDomain code:256 userInfo:v10];
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

    CFRelease(*confirmation);
  }

  else
  {
    if (error)
    {
      v21 = NSLocalizedDescriptionKey;
      error2 = [NSString stringWithFormat:@"Error %d", error];
      v22 = error2;
      v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      *error = [NSError errorWithDomain:NSCocoaErrorDomain code:4 userInfo:v13];
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

- (CSMartyTap2RadarConfirmation_struct)showConfirmationWithError:(id *)error withEventType:(int64_t)type
{
  v7 = objc_alloc_init(NSDateFormatter);
  [v7 setDateFormat:@"EEE h:mm a"];
  v8 = +[NSDate now];
  v9 = [v7 stringFromDate:v8];

  v10 = objc_alloc_init(NSMutableDictionary);
  v11 = v10;
  if ((type - 1) >= 3)
  {
    if (type == 4)
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
  if ([(CSMartyTap2Radar *)self createNotification:v11 confirmation:&cf error:error])
  {
    v13 = [(CSMartyTap2Radar *)self getNotificationResponse:cf error:error]& 3;
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
      v14 = 2 * (type == 4);
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

- (unint64_t)getNotificationResponse:(__CFUserNotification *)response error:(id *)error
{
  responseFlags = 0;
  if (CFUserNotificationReceiveResponse(response, 0.0, &responseFlags))
  {
    if (error)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Error receiving notification response";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      *error = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:v5];
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

- (BOOL)showPrivacyNotificationWithError:(id *)error
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
  if ([(CSMartyTap2Radar *)self createNotification:v5 confirmation:&cf error:error])
  {
    v6 = [(CSMartyTap2Radar *)self getNotificationResponse:cf error:error];
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