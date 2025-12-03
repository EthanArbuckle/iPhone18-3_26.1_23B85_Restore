@interface CSFeedbackAssistant
+ (double)timeIntervalToNearestEightOClock:(id)clock;
+ (id)dateWithHour:(int64_t)hour fromDate:(id)date;
+ (void)showFeedbackAssistantSurveyWithUUID:(id)d;
@end

@implementation CSFeedbackAssistant

+ (id)dateWithHour:(int64_t)hour fromDate:(id)date
{
  dateCopy = date;
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 components:28 fromDate:dateCopy];
  [v7 setHour:hour];
  [v7 setMinute:0];
  [v7 setSecond:0];
  v8 = [v6 dateFromComponents:v7];

  return v8;
}

+ (double)timeIntervalToNearestEightOClock:(id)clock
{
  clockCopy = clock;
  v5 = +[NSCalendar currentCalendar];
  v6 = [v5 components:252 fromDate:clockCopy];
  v7 = [self dateWithHour:8 fromDate:clockCopy];
  v8 = [self dateWithHour:20 fromDate:clockCopy];
  hour = [v6 hour];
  v10 = v7;
  if (hour >= 2 && (v10 = v8, (hour - 2) >= 0xC))
  {
    if ((hour - 14) > 9)
    {
      v12 = 0;
      goto LABEL_5;
    }

    v11 = [v5 dateByAddingUnit:16 value:1 toDate:v7 options:0];
  }

  else
  {
    v11 = v10;
  }

  v12 = v11;
LABEL_5:
  [v12 timeIntervalSinceDate:clockCopy];
  v14 = v13;

  return v14;
}

+ (void)showFeedbackAssistantSurveyWithUUID:(id)d
{
  dCopy = d;
  v5 = +[CSPersistentConfiguration sharedConfiguration];
  v6 = [v5 getFloatDefault:@"FeedbackAssistantOverride"];
  v7 = HIDWORD(v6);
  v8 = (v6 & 0x7FFFFFFF) != 0;
  v9 = [v5 getBooleanDefault:@"FeedbackAssistantDisabled"];
  v10 = +[CSPermissions sharedInstance];
  isAuthorizedToCollectData = [v10 isAuthorizedToCollectData];

  v12 = +[CSPlatformInfo sharedInstance];
  isInternalInstall = [v12 isInternalInstall];

  v14 = +[CSPlatformInfo sharedInstance];
  isFeedbackAssistantEligible = [v14 isFeedbackAssistantEligible];
  v16 = v7 & v8;

  if (v9 & ((v9 & 0x100) >> 8) & 1 | ((isFeedbackAssistantEligible & 1) == 0))
  {
    if (qword_100456978 != -1)
    {
      sub_1003575D8();
    }

    v17 = qword_100456980;
    if (os_log_type_enabled(qword_100456980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      *v53 = isAuthorizedToCollectData;
      *&v53[4] = 1024;
      *&v53[6] = isInternalInstall;
      v54 = 1024;
      v55 = 0;
      v56 = 1024;
      v57 = v16;
      v58 = 1024;
      v59 = *&v9 & ((v9 & 0x100) >> 8);
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[fba] Not showing Feedback Assistant survey, IS,%d,internal,%d,seed,%d,showSurveyOverride,%d,disableOverride,%d", buf, 0x20u);
    }
  }

  else
  {
    if (qword_100456978 != -1)
    {
      sub_1003575D8();
    }

    v18 = qword_100456980;
    if (os_log_type_enabled(qword_100456980, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      *v53 = isAuthorizedToCollectData;
      *&v53[4] = 1024;
      *&v53[6] = isInternalInstall;
      v54 = 1024;
      v55 = 0;
      v56 = 1024;
      v57 = v16;
      v58 = 1024;
      v59 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[fba] Showing Feedback Assistant survey: IS,%d,internal,%d,seed,%d,showSurveyOverride,%d,disableOverride,%d", buf, 0x20u);
    }

    v19 = objc_alloc_init(UNMutableNotificationContent);
    [v19 setTitle:@"Crash Detection Feedback"];
    v20 = [NSBundle bundleWithPath:@"/System/Library/Frameworks/SafetyKit.framework"];
    v21 = [v20 localizedStringForKey:@"FEEDBACK_ASSISTANT_NOTIFICATION" value:&stru_100436548 table:0];
    v22 = [NSString stringWithFormat:v21];
    [v19 setBody:v22];

    v23 = [UNNotificationIcon iconForApplicationIdentifier:@"com.apple.appleseed.FeedbackAssistant"];
    [v19 setIcon:v23];

    title = [v19 title];
    if (!title || ([v19 body], v25 = objc_claimAutoreleasedReturnValue(), v26 = v25 == 0, v25, title, v26))
    {
      if (qword_100456978 != -1)
      {
        sub_1003575EC();
      }

      v49 = qword_100456980;
      if (os_log_type_enabled(qword_100456980, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "[fba] Couldn't retrieve localized push notification strings", buf, 2u);
      }
    }

    else
    {
      uTF8String = [SOSSettingsURLSourceKey UTF8String];
      uTF8String2 = [@"crashdetection_feedback_request" UTF8String];
      uTF8String3 = [@"uuid" UTF8String];
      v30 = dCopy;
      uTF8String4 = [dCopy UTF8String];
      v32 = [SOSSettingsURLBaseString stringByAppendingFormat:@"&%s=%s&%s=%s", uTF8String, uTF8String2, uTF8String3, uTF8String4];
      v33 = [NSURL URLWithString:v32];
      [v19 setDefaultActionURL:v33];

      [v19 setCategoryIdentifier:@"com.apple.SOSNotification"];
      v34 = [v5 getFloatDefault:@"FeedbackAssistantNotificationDelayOverride"];
      v35 = +[NSDate now];
      [self timeIntervalToNearestEightOClock:v35];
      v37 = v36;

      if ((v34 & &_mh_execute_header) != 0)
      {
        v38 = *&v34;
      }

      else
      {
        v38 = v37;
      }

      if (qword_100456978 != -1)
      {
        sub_1003575EC();
      }

      v39 = v38;
      v40 = qword_100456980;
      if (os_log_type_enabled(qword_100456980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v53 = v39;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[fba] Scheduling notification delay of: %f seconds", buf, 0xCu);
      }

      v41 = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:0 repeats:v39];
      v42 = [UNNotificationRequest requestWithIdentifier:@"com.apple.SOSNotificationId" content:v19 trigger:v41 destinations:6];
      if (qword_100456978 != -1)
      {
        sub_1003575EC();
      }

      v43 = qword_100456980;
      if (os_log_type_enabled(qword_100456980, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v53 = v42;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[fba] Created Feedback Assistant notification request:%@", buf, 0xCu);
      }

      v44 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.Preferences"];
      v45 = +[NSArray array];
      v46 = +[NSArray array];
      v47 = [UNNotificationCategory categoryWithIdentifier:@"com.apple.SOSNotification" actions:v45 intentIdentifiers:v46 options:0x20000];

      v48 = [NSSet setWithObject:v47];
      [v44 setNotificationCategories:v48];

      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_100002250;
      v50[3] = &unk_100411168;
      v51 = dCopy;
      [v44 addNotificationRequest:v42 withCompletionHandler:v50];
    }
  }
}

@end