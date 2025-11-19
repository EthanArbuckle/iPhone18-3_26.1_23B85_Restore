@interface CSKappaTap2Radar
- (BOOL)createNotification:(id)a3 confirmation:(__CFUserNotification *)a4 error:(id *)a5;
- (BOOL)enqueueTTRWithTriggerUUID:(id)a3 error:(id *)a4;
- (BOOL)showPrivacyNotificationWithError:(id *)a3;
- (BOOL)startMonitoringWithError:(id *)a3;
- (CSKappaTap2Radar)initWithSpoolerFolder:(id)a3 andConfiguration:(id)a4;
- (CSKappaTap2Radar)radarWithResult:(CSKappaTap2RadarConfirmation_struct)a3 triggerUUID:(id)a4 ttrType:(int64_t)a5 error:(id *)a6;
- (CSKappaTap2RadarConfirmation_struct)showConfirmationWithError:(id *)a3 andEventType:(int64_t)a4;
- (unint64_t)getNotificationResponse:(__CFUserNotification *)a3 error:(id *)a4;
- (void)showTTRWithTriggerUUID:(id)a3 andEventType:(int64_t)a4;
@end

@implementation CSKappaTap2Radar

- (CSKappaTap2Radar)initWithSpoolerFolder:(id)a3 andConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = CSKappaTap2Radar;
  v8 = [(CSKappaTap2Radar *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_config, a4);
    v9->_monitoring = 0;
    ttrMonitor = v9->_ttrMonitor;
    v9->_ttrMonitor = 0;

    v11 = [[NSURL alloc] initFileURLWithPath:v6 isDirectory:1];
    folderURL = v9->_folderURL;
    v9->_folderURL = v11;

    v13 = dispatch_queue_create("KappaTap2RadarQueue", 0);
    queue = v9->_queue;
    v9->_queue = v13;

    if (qword_100456908 != -1)
    {
      sub_100357DB4();
    }

    v15 = qword_100456910;
    if (os_log_type_enabled(qword_100456910, OS_LOG_TYPE_INFO))
    {
      v16 = v9->_folderURL;
      *buf = 138412290;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Starting TTR with spooler at: %@", buf, 0xCu);
    }
  }

  return v9;
}

- (BOOL)startMonitoringWithError:(id *)a3
{
  v5 = +[SOSUtilities isKappaVisible];
  v6 = +[CSPlatformInfo sharedInstance];
  v7 = v6;
  if (!v5 || [v6 getSystemReleaseType] != 2)
  {
    if (!a3)
    {
      goto LABEL_12;
    }

    v16 = @"TTR not available because feature is not visible";
    if (v5)
    {
      v16 = @"TTR not available because this is not an internal install";
    }

    v17 = v16;
    v21 = NSLocalizedDescriptionKey;
    v22 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    *a3 = [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:v18];

    goto LABEL_11;
  }

  if (![(CSKappaTap2Radar *)self monitoring])
  {
    if (sub_10001B724(self, a3, @"starter"))
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100017B80;
      v20[3] = &unk_100413240;
      v20[4] = self;
      v8 = objc_retainBlock(v20);
      v9 = self;
      objc_sync_enter(v9);
      v10 = [CSFolderMonitor alloc];
      v11 = [(CSKappaTap2Radar *)v9 folderURL];
      v12 = [v11 path];
      v13 = [(CSFolderMonitor *)v10 initWithFolder:v12 fileExtension:@"ttr" queue:v9->_queue postfix:@"Kappa" andAction:v8];
      ttrMonitor = v9->_ttrMonitor;
      v9->_ttrMonitor = v13;

      v15 = [[CSFolderMonitorBackgroundScanningConfiguration alloc] initWithFileProtectionType:NSFileProtectionCompleteUnlessOpen allowBattery:[(CSKappaTap2RadarConfiguration *)v9->_config allowOnBattery] periodInseconds:[(CSKappaTap2RadarConfiguration *)v9->_config checkIntervalInSeconds]];
      [(CSFolderMonitor *)v9->_ttrMonitor setupRecurringScanningWithConfiguration:v15 runNow:0];
      [(CSKappaTap2Radar *)v9 setMonitoring:1];

      objc_sync_exit(v9);
      goto LABEL_6;
    }

LABEL_11:
    LOBYTE(a3) = 0;
    goto LABEL_12;
  }

LABEL_6:
  LOBYTE(a3) = 1;
LABEL_12:

  return a3;
}

- (BOOL)enqueueTTRWithTriggerUUID:(id)a3 error:(id *)a4
{
  v6 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v8 encodeInt64:Current forKey:@"timestamp"];
  [v8 encodeObject:v6 forKey:@"triggerUUID"];
  [v8 finishEncoding];
  v9 = [(CSKappaTap2Radar *)self folderURL];
  v10 = +[NSUUID UUID];
  v11 = [v10 UUIDString];
  v12 = [v9 URLByAppendingPathComponent:v11];
  v13 = [v12 URLByAppendingPathExtension:@"ttr"];

  v14 = [v8 encodedData];
  LOBYTE(a4) = [v14 writeToURL:v13 options:805306369 error:a4];

  return a4;
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

    if (qword_100456908 != -1)
    {
      sub_100357DB4();
    }

    v11 = qword_100456910;
    if (os_log_type_enabled(qword_100456910, OS_LOG_TYPE_ERROR))
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

    if (qword_100456908 != -1)
    {
      sub_100357DB4();
    }

    v14 = qword_100456910;
    if (os_log_type_enabled(qword_100456910, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unable to show confirmation window", buf, 2u);
    }
  }

  v15 = 0;
LABEL_18:

  return v15;
}

- (CSKappaTap2RadarConfirmation_struct)showConfirmationWithError:(id *)a3 andEventType:(int64_t)a4
{
  v7 = objc_alloc_init(NSDateFormatter);
  [v7 setDateFormat:@"EEE h:mm a"];
  v8 = +[NSDate now];
  v9 = [v7 stringFromDate:v8];

  v10 = objc_alloc_init(NSMutableDictionary);
  [v10 setObject:@"Improve Crash Detection" forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  if (a4 == 4)
  {
    v11 = @"\nRecently, your device sensed a potential crash event.";
    [v10 setObject:@"Was NOT in an accident. File radar." forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];
    [v10 setObject:@"Was in an accident. File radar." forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
  }

  else
  {
    v11 = [NSString stringWithFormat:@"\nOn %@, your device sensed an event helpful for improving crash detection.", v9];
    [v10 setObject:@"File radar" forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
  }

  [v10 setObject:v11 forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  [v10 setObject:@"Ignore" forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];
  [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
  [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:SBUserNotificationDismissOnLock];
  [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];
  [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationIgnoresQuietMode];
  [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDisableIdleSleepWhileVisible];
  cf = 0;
  if ([(CSKappaTap2Radar *)self createNotification:v10 confirmation:&cf error:a3])
  {
    v12 = [(CSKappaTap2Radar *)self getNotificationResponse:cf error:a3]& 3;
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        goto LABEL_11;
      }
    }

    else if (!v12)
    {
      v12 = a4 == 4;
LABEL_11:
      CFRelease(cf);
      goto LABEL_12;
    }

    v12 = 3;
    goto LABEL_11;
  }

  v12 = 4;
LABEL_12:

  v13 = v12;
  v14 = v9;
  result.var1 = v14;
  result.var0 = v13;
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

    if (qword_100456908 != -1)
    {
      sub_100357DB4();
    }

    v6 = qword_100456910;
    if (os_log_type_enabled(qword_100456910, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      v7 = "User didn't see privacy notification";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, v12, 2u);
    }
  }

  else
  {
    if (qword_100456908 != -1)
    {
      sub_100357DB4();
    }

    v10 = qword_100456910;
    if (os_log_type_enabled(qword_100456910, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      v7 = "User saw privacy notification";
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
  if ([(CSKappaTap2Radar *)self createNotification:v5 confirmation:&cf error:a3])
  {
    v6 = [(CSKappaTap2Radar *)self getNotificationResponse:cf error:a3];
    CFRelease(cf);
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CSKappaTap2Radar)radarWithResult:(CSKappaTap2RadarConfirmation_struct)a3 triggerUUID:(id)a4 ttrType:(int64_t)a5 error:(id *)a6
{
  var1 = a3.var1;
  var0 = a3.var0;
  v9 = a4;
  if ((a5 - 2) >= 3)
  {
    sub_100357DF0(buf);

    abort_report_np();
    __break(1u);
  }

  v10 = 0;
  if (var0 <= 2)
  {
    v11 = *(&off_1004132A8 + a5 - 2);
    if (!var0)
    {
      v20 = [NSString stringWithFormat:@"[Kappa] Improve Crash Detection %@ Event=%@", v9, v11];
      v21 = +[NSCharacterSet URLQueryAllowedCharacterSet];
      v12 = [v20 stringByAddingPercentEncodingWithAllowedCharacters:v21];

      v15 = [NSString stringWithFormat:@"Please tell us more about what you were doing around %@. \n\nFor example, were you recently in a car or some other moving platform? Were you actively moving or doing some other activity? \n\nWe'll use what you file to refine our iOS/watchOS Safety algorithms.", var1];
      v16 = +[NSCharacterSet URLQueryAllowedCharacterSet];
      v17 = [v15 stringByAddingPercentEncodingWithAllowedCharacters:v16];
      goto LABEL_14;
    }

    if (var0 == 1)
    {
      v22 = [NSString stringWithFormat:@"[Kappa] True Positive Detection %@ Event=%@", v9, v11];
      v23 = +[NSCharacterSet URLQueryAllowedCharacterSet];
      v12 = [v22 stringByAddingPercentEncodingWithAllowedCharacters:v23];

      v15 = +[NSCharacterSet URLQueryAllowedCharacterSet];
      v10 = [@"If you are comfortable sharing please tell us more about your incident. We'll use what you file to refine our iOS/watchOS Safety algorithms."];
      goto LABEL_16;
    }

    v12 = 0;
    if (var0 == 2)
    {
      v13 = [NSString stringWithFormat:@"[Kappa] False Positive Detection %@ Event=%@", v9, v11];
      v14 = +[NSCharacterSet URLQueryAllowedCharacterSet];
      v12 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:v14];

      v15 = [NSString stringWithFormat:@"Please tell us more about what you were doing around %@. \n\nFor example, were you recently in a car or some other moving platform? Were you actively moving or doing some other activity? \n\nWe'll use what you file to refine our iOS/watchOS Safety algorithms.", var1];
      v16 = +[NSCharacterSet URLQueryAllowedCharacterSet];
      v17 = [v15 stringByAddingPercentEncodingWithAllowedCharacters:v16];
LABEL_14:
      v10 = v17;

LABEL_16:
    }

LABEL_17:
    v24 = [NSString stringWithFormat:@"tap-to-radar://new?Title=%@&Description=%@&Classification=Serious%%20Bug&Reproducibility=Not%%20Applicable&ComponentName=CoreMotion%%20Kappa&ComponentVersion=Tap-To-Radar&Attachments=&Keywords=kappa&ComponentID=1362668", v12, v10];
    v25 = [NSURL URLWithString:v24];

    if (qword_100456908 != -1)
    {
      sub_100357DDC();
    }

    v26 = qword_100456910;
    if (os_log_type_enabled(qword_100456910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Launching tap to radar with URL %{public}@", buf, 0xCu);
    }

    v27 = +[LSApplicationWorkspace defaultWorkspace];
    [v27 openURL:v25 configuration:0 completionHandler:0];

    v19 = 1;
    goto LABEL_22;
  }

  v12 = 0;
  if ((var0 - 3) >= 3)
  {
    goto LABEL_17;
  }

  if (qword_100456908 != -1)
  {
    sub_100357DDC();
  }

  v18 = qword_100456910;
  if (os_log_type_enabled(qword_100456910, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Can't generate URL for that result", buf, 2u);
  }

  v19 = 0;
LABEL_22:

  return v19;
}

- (void)showTTRWithTriggerUUID:(id)a3 andEventType:(int64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018F20;
  block[3] = &unk_100413268;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

@end