@interface HDSPUserNotificationCenter
+ (id)_generateUniqueIdentifierForNotificationIdentifierPrefix:(id)prefix eventDate:(id)date;
+ (id)_stringForEventDate:(id)date;
- (BOOL)_shouldPostCustomizeFocusNotification;
- (HDSPEnvironment)environment;
- (HDSPUserNotificationCenter)initWithEnvironment:(id)environment;
- (HDSPUserNotificationCenter)initWithEnvironment:(id)environment notificationCenter:(id)center;
- (NSString)sourceIdentifier;
- (id)_bedtimeReminderContent;
- (id)_chargingReminderBodyForAlarmEnabled:(BOOL)enabled sleepTrackingEnabled:(BOOL)trackingEnabled;
- (id)_chargingReminderContentWithUserInfo:(id)info;
- (id)_contentByAddingCommonUserInfoTo:(id)to;
- (id)_localizedBedtimeOrWindDownReminderBodyHelperWithKey:(id)key embeddingTimeForEvent:(id)event;
- (id)_localizedBedtimeOrWindDownReminderBodyWithKey:(id)key embeddingTimeForEvent:(id)event shouldIntroduceFocus:(BOOL)focus;
- (id)_notificationContentForEventIdentifier:(id)identifier userInfo:(id)info;
- (id)_notificationIdentifierPrefixForEventIdentifier:(id)identifier;
- (id)_notificationRequestForEvent:(id)event;
- (id)_notificationRequestIdentifierForEvent:(id)event;
- (id)_sleepScoreResultsContentWithUserInfo:(id)info;
- (id)_wakeDetectionAlertBodyForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on;
- (id)_wakeDetectionAlertTitleForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on;
- (id)_wakeDetectionContentWithUserInfo:(id)info;
- (id)_wakeUpResultsContentWithUserInfo:(id)info;
- (id)_windDownReminderContent;
- (void)_handleSuccessfulNotificationRequest:(id)request;
- (void)_publishNotificationRequest:(id)request;
- (void)_recordSentUserNotificationRequest:(id)request;
- (void)_submitAnalyticsForNotification:(id)notification;
- (void)environmentDidBecomeReady:(id)ready;
- (void)publishNotificationForEvent:(id)event;
- (void)tearDownNotificationForEventIdentifier:(id)identifier;
- (void)tearDownNotifications;
@end

@implementation HDSPUserNotificationCenter

- (HDSPUserNotificationCenter)initWithEnvironment:(id)environment
{
  v4 = MEMORY[0x277CE2028];
  environmentCopy = environment;
  v6 = [v4 alloc];
  v7 = [v6 initWithBundleIdentifier:*MEMORY[0x277CCE3A8]];
  v8 = [(HDSPUserNotificationCenter *)self initWithEnvironment:environmentCopy notificationCenter:v7];

  return v8;
}

- (HDSPUserNotificationCenter)initWithEnvironment:(id)environment notificationCenter:(id)center
{
  environmentCopy = environment;
  centerCopy = center;
  v12.receiver = self;
  v12.super_class = HDSPUserNotificationCenter;
  v8 = [(HDSPUserNotificationCenter *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_environment, environmentCopy);
    objc_storeStrong(&v9->_notificationCenter, center);
    v10 = v9;
  }

  return v9;
}

- (void)environmentDidBecomeReady:(id)ready
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentDidBecomeReady", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (NSString)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)publishNotificationForEvent:(id)event
{
  v4 = [(HDSPUserNotificationCenter *)self _notificationRequestForEvent:event];
  if (v4)
  {
    [(HDSPUserNotificationCenter *)self _publishNotificationRequest:v4];
  }

  MEMORY[0x2821F96F8]();
}

- (id)_notificationRequestForEvent:(id)event
{
  v27 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  if ([behavior isAppleWatch])
  {
  }

  else
  {
    identifier = [eventCopy identifier];
    v8 = [identifier isEqualToString:*MEMORY[0x277D621D8]];

    if (v8)
    {
      v9 = 0;
      goto LABEL_15;
    }
  }

  v10 = [(HDSPUserNotificationCenter *)self _notificationRequestIdentifierForEvent:eventCopy];
  if (!v10)
  {
    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = v14;
      identifier2 = [eventCopy identifier];
      v23 = 138543618;
      v24 = v14;
      v25 = 2114;
      v26 = identifier2;
      _os_log_error_impl(&dword_269B11000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] unable to create notification identifier for event %{public}@", &v23, 0x16u);
    }

    goto LABEL_13;
  }

  identifier3 = [eventCopy identifier];
  context = [eventCopy context];
  v13 = [(HDSPUserNotificationCenter *)self _notificationContentForEventIdentifier:identifier3 userInfo:context];

  if (!v13)
  {
    v17 = HKSPLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = v20;
      identifier4 = [eventCopy identifier];
      v23 = 138543618;
      v24 = v20;
      v25 = 2114;
      v26 = identifier4;
      _os_log_error_impl(&dword_269B11000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] unable to create notification content for event %{public}@", &v23, 0x16u);
    }

    v13 = 0;
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v9 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v10 content:v13 trigger:0 destinations:7];
LABEL_14:

LABEL_15:
  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)_publishNotificationRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  notificationCenter = self->_notificationCenter;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HDSPUserNotificationCenter__publishNotificationRequest___block_invoke;
  v7[3] = &unk_279C7D2D0;
  objc_copyWeak(&v9, &location);
  v6 = requestCopy;
  v8 = v6;
  [(UNUserNotificationCenter *)notificationCenter addNotificationRequest:v6 withCompletionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__HDSPUserNotificationCenter__publishNotificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HKSPLogForCategory();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = *(a1 + 32);
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v3;
      v13 = v11;
      _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] failed to publish %{public}@ with error %{public}@", &v14, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 32);
      v14 = 138543618;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v9 = v7;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] published %{public}@", &v14, 0x16u);
    }

    [WeakRetained _handleSuccessfulNotificationRequest:*(a1 + 32)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleSuccessfulNotificationRequest:(id)request
{
  requestCopy = request;
  [(HDSPUserNotificationCenter *)self _recordSentUserNotificationRequest:requestCopy];
  [(HDSPUserNotificationCenter *)self _submitAnalyticsForNotification:requestCopy];
}

- (void)_recordSentUserNotificationRequest:(id)request
{
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];
  v6 = [categoryIdentifier isEqualToString:*MEMORY[0x277D622E0]];

  if (v6)
  {
    environment = [(HDSPUserNotificationCenter *)self environment];
    sleepScheduleModelManager = [environment sleepScheduleModelManager];
    sleepEventRecord = [sleepScheduleModelManager sleepEventRecord];
    v10 = [sleepEventRecord mutableCopy];

    [v10 setLastWakeUpResultsIntroductionNotificationVersionSent:1];
    currentDateProvider = [environment currentDateProvider];
    v12 = currentDateProvider[2]();
    [v10 setLastWakeUpResultsIntroductionNotificationVersionSentDate:v12];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__HDSPUserNotificationCenter__recordSentUserNotificationRequest___block_invoke;
    v15[3] = &unk_279C7C050;
    v16 = sleepScheduleModelManager;
    v17 = v10;
    selfCopy = self;
    v13 = v10;
    v14 = sleepScheduleModelManager;
    [environment perform:v15 withSource:self];
  }
}

void __65__HDSPUserNotificationCenter__recordSentUserNotificationRequest___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v11 = 0;
  v4 = [v2 saveSleepEventRecord:v3 error:&v11];
  v5 = v11;
  if ((v4 & 1) == 0)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[6];
      v9 = objc_opt_class();
      *buf = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v5;
      v10 = v9;
      _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] failed to save event record with error %{public}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_submitAnalyticsForNotification:(id)notification
{
  notificationCopy = notification;
  if ([notificationCopy hksp_shouldSubmitAnalytics])
  {
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    analyticsManager = [WeakRetained analyticsManager];
    v5AnalyticsManager = [analyticsManager analyticsManager];

    hksp_analyticsSleepNotificationType = [notificationCopy hksp_analyticsSleepNotificationType];
    v8 = [objc_alloc(MEMORY[0x277D62428]) initWithType:hksp_analyticsSleepNotificationType action:0];
    [v5AnalyticsManager trackEvent:v8];
  }
}

- (void)tearDownNotificationForEventIdentifier:(id)identifier
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2114;
    *&buf[14] = identifierCopy;
    v6 = *&buf[4];
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearDownNotificationForEventIdentifier %{public}@", buf, 0x16u);
  }

  v30[0] = *MEMORY[0x277D621C0];
  v7 = *MEMORY[0x277D62080];
  v29[0] = *MEMORY[0x277D62010];
  v29[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  *buf = v8;
  v30[1] = *MEMORY[0x277D621F8];
  v28[0] = *MEMORY[0x277D623F0];
  v28[1] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  *&buf[8] = v9;
  v30[2] = *MEMORY[0x277D621C8];
  v27 = *MEMORY[0x277D62038];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  *&buf[16] = v10;
  v30[3] = *MEMORY[0x277D621E8];
  v11 = *MEMORY[0x277D620C8];
  v26[0] = *MEMORY[0x277D620C0];
  v26[1] = v11;
  v26[2] = *MEMORY[0x277D62318];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  v32 = v12;
  v30[4] = *MEMORY[0x277D621D8];
  v25 = *MEMORY[0x277D62328];
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v33 = v13;
  v14 = HKSHSleepScoreResultsNotificationEventIdentifier();
  v30[5] = v14;
  v15 = *MEMORY[0x277D622E0];
  v24[0] = *MEMORY[0x277D622E8];
  v24[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v34 = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v30 count:6];

  v18 = [v17 objectForKeyedSubscript:identifierCopy];

  if ([v18 count])
  {
    notificationCenter = self->_notificationCenter;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __69__HDSPUserNotificationCenter_tearDownNotificationForEventIdentifier___block_invoke;
    v21[3] = &unk_279C7D340;
    v22 = v18;
    selfCopy = self;
    [(UNUserNotificationCenter *)notificationCenter getDeliveredNotificationsWithCompletionHandler:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __69__HDSPUserNotificationCenter_tearDownNotificationForEventIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__HDSPUserNotificationCenter_tearDownNotificationForEventIdentifier___block_invoke_2;
  v11[3] = &unk_279C7D2F8;
  v12 = *(a1 + 32);
  v4 = [a2 na_filter:v11];
  v5 = [v4 na_map:&__block_literal_global_32];

  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = objc_opt_class();
    *buf = 138543618;
    v14 = v8;
    v15 = 2114;
    v16 = v5;
    v9 = v8;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Tearing down %{public}@", buf, 0x16u);
  }

  [*(*(a1 + 40) + 16) removeDeliveredNotificationsWithIdentifiers:v5];
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __69__HDSPUserNotificationCenter_tearDownNotificationForEventIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 request];
  v4 = [v3 content];
  v5 = [v4 categoryIdentifier];
  v6 = [v2 containsObject:v5];

  return v6;
}

id __69__HDSPUserNotificationCenter_tearDownNotificationForEventIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 request];
  v3 = [v2 identifier];

  return v3;
}

- (void)tearDownNotifications
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v4 = *(&buf + 4);
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Tearing down all notifications", &buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *MEMORY[0x277D621C8];
  *&buf = *MEMORY[0x277D621C0];
  *(&buf + 1) = v5;
  v6 = *MEMORY[0x277D621F8];
  v20 = *MEMORY[0x277D621E8];
  v21 = v6;
  v22 = *MEMORY[0x277D621D8];
  v7 = HKSHSleepScoreResultsNotificationEventIdentifier();
  v23 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&buf count:{6, 0}];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(HDSPUserNotificationCenter *)self tearDownNotificationForEventIdentifier:*(*(&v14 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_notificationRequestIdentifierForEvent:(id)event
{
  eventCopy = event;
  identifier = [eventCopy identifier];
  v6 = [(HDSPUserNotificationCenter *)self _notificationIdentifierPrefixForEventIdentifier:identifier];

  if (v6)
  {
    v7 = objc_opt_class();
    dueDate = [eventCopy dueDate];
    v9 = [v7 _generateUniqueIdentifierForNotificationIdentifierPrefix:v6 eventDate:dueDate];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_notificationIdentifierPrefixForEventIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x277D621F8]] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x277D621C0]))
  {
    v4 = MEMORY[0x277D62018];
LABEL_4:
    v5 = *v4;
    goto LABEL_5;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277D621C8]])
  {
    v4 = MEMORY[0x277D62040];
    goto LABEL_4;
  }

  v7 = HKSHSleepScoreResultsNotificationEventIdentifier();
  v8 = [identifierCopy isEqualToString:v7];

  if (v8)
  {
    v4 = MEMORY[0x277D622F0];
    goto LABEL_4;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277D621E8]])
  {
    v4 = MEMORY[0x277D62358];
    goto LABEL_4;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277D621D8]])
  {
    v4 = MEMORY[0x277D62330];
    goto LABEL_4;
  }

  v5 = 0;
LABEL_5:

  return v5;
}

+ (id)_generateUniqueIdentifierForNotificationIdentifierPrefix:(id)prefix eventDate:(id)date
{
  dateCopy = date;
  prefixCopy = prefix;
  v7 = [objc_opt_class() _stringForEventDate:dateCopy];

  v8 = [prefixCopy stringByAppendingFormat:@"_%@", v7];

  return v8;
}

+ (id)_stringForEventDate:(id)date
{
  v3 = MEMORY[0x277CCA968];
  dateCopy = date;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v5 setLocale:v6];

  v7 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v5 setTimeZone:v7];

  [v5 setDateFormat:@"yyyy-MM-dd_HH:mm"];
  v8 = [v5 stringFromDate:dateCopy];

  return v8;
}

- (id)_notificationContentForEventIdentifier:(id)identifier userInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  if ([identifierCopy isEqualToString:*MEMORY[0x277D621F8]])
  {
    _windDownReminderContent = [(HDSPUserNotificationCenter *)self _windDownReminderContent];
LABEL_13:
    v11 = _windDownReminderContent;
    v12 = [(HDSPUserNotificationCenter *)self _contentByAddingCommonUserInfoTo:_windDownReminderContent];

    goto LABEL_14;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277D621C0]])
  {
    _windDownReminderContent = [(HDSPUserNotificationCenter *)self _bedtimeReminderContent];
    goto LABEL_13;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277D621C8]])
  {
    _windDownReminderContent = [(HDSPUserNotificationCenter *)self _chargingReminderContentWithUserInfo:infoCopy];
    goto LABEL_13;
  }

  v9 = HKSHSleepScoreResultsNotificationEventIdentifier();
  v10 = [identifierCopy isEqualToString:v9];

  if (v10)
  {
    _windDownReminderContent = [(HDSPUserNotificationCenter *)self _sleepScoreResultsContentWithUserInfo:infoCopy];
    goto LABEL_13;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277D621E8]])
  {
    _windDownReminderContent = [(HDSPUserNotificationCenter *)self _wakeUpResultsContentWithUserInfo:infoCopy];
    goto LABEL_13;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277D621D8]])
  {
    _windDownReminderContent = [(HDSPUserNotificationCenter *)self _wakeDetectionContentWithUserInfo:infoCopy];
    goto LABEL_13;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (id)_contentByAddingCommonUserInfoTo:(id)to
{
  toCopy = to;
  v4 = [toCopy mutableCopy];
  userInfo = [toCopy userInfo];

  v6 = [userInfo mutableCopy];
  [v6 setObject:&unk_287A950F8 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  v7 = [v6 copy];
  [v4 setUserInfo:v7];

  v8 = [v4 copy];

  return v8;
}

- (id)_bedtimeReminderContent
{
  v3 = MEMORY[0x277CE1F60];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v5 = [v3 hdsp_notificationContentWithEnvironment:WeakRetained];

  [v5 setCategoryIdentifier:*MEMORY[0x277D62010]];
  v6 = HDSPLocalizedString(@"BEDTIME_REMINDER_TITLE");
  [v5 setTitle:v6];

  _shouldPostCustomizeFocusNotification = [(HDSPUserNotificationCenter *)self _shouldPostCustomizeFocusNotification];
  if (_shouldPostCustomizeFocusNotification)
  {
    [v5 setCategoryIdentifier:*MEMORY[0x277D62080]];
    v8 = HDSPLocalizedString(@"SILENCE_NOTIFICATIONS_TITLE");
    [v5 setTitle:v8];

    v9 = HKSPSleepFocusConfigurationURL();
    [v5 setDefaultActionURL:v9];

    v10 = objc_loadWeakRetained(&self->_environment);
    behavior = [v10 behavior];
    isAppleWatch = [behavior isAppleWatch];

    if ((isAppleWatch & 1) == 0)
    {
      v13 = [MEMORY[0x277CE1FB0] iconForApplicationIdentifier:@"com.apple.Preferences"];
      [v5 setIcon:v13];
    }
  }

  v14 = [(HDSPUserNotificationCenter *)self _localizedBedtimeOrWindDownReminderBodyWithKey:@"BEDTIME_REMINDER_MESSAGE" embeddingTimeForEvent:*MEMORY[0x277D621B8] shouldIntroduceFocus:_shouldPostCustomizeFocusNotification];
  [v5 setBody:v14];

  hdsp_bedtimeReminderSound = [MEMORY[0x277CE1FE0] hdsp_bedtimeReminderSound];
  [v5 setSound:hdsp_bedtimeReminderSound];

  v16 = objc_loadWeakRetained(&self->_environment);
  currentDateProvider = [v16 currentDateProvider];
  v18 = currentDateProvider[2]();
  v19 = [v18 dateByAddingTimeInterval:*MEMORY[0x277D623B8]];
  [v5 setExpirationDate:v19];

  return v5;
}

- (id)_windDownReminderContent
{
  v3 = MEMORY[0x277CE1F60];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v5 = [v3 hdsp_notificationContentWithEnvironment:WeakRetained];

  [v5 setCategoryIdentifier:*MEMORY[0x277D623F0]];
  v6 = HDSPLocalizedString(@"WIND_DOWN_REMINDER_TITLE");
  [v5 setTitle:v6];

  _shouldPostCustomizeFocusNotification = [(HDSPUserNotificationCenter *)self _shouldPostCustomizeFocusNotification];
  if (_shouldPostCustomizeFocusNotification)
  {
    [v5 setCategoryIdentifier:*MEMORY[0x277D62080]];
    v8 = HDSPLocalizedString(@"SILENCE_NOTIFICATIONS_TITLE");
    [v5 setTitle:v8];

    v9 = HKSPSleepFocusConfigurationURL();
    [v5 setDefaultActionURL:v9];

    v10 = objc_loadWeakRetained(&self->_environment);
    behavior = [v10 behavior];
    isAppleWatch = [behavior isAppleWatch];

    if ((isAppleWatch & 1) == 0)
    {
      v13 = [MEMORY[0x277CE1FB0] iconForApplicationIdentifier:@"com.apple.Preferences"];
      [v5 setIcon:v13];
    }
  }

  v14 = [(HDSPUserNotificationCenter *)self _windDownReminderBodyContentShouldIntroduceFocus:_shouldPostCustomizeFocusNotification];
  [v5 setBody:v14];

  hdsp_bedtimeReminderSound = [MEMORY[0x277CE1FE0] hdsp_bedtimeReminderSound];
  [v5 setSound:hdsp_bedtimeReminderSound];

  v16 = objc_loadWeakRetained(&self->_environment);
  currentDateProvider = [v16 currentDateProvider];
  v18 = currentDateProvider[2]();
  v19 = [v18 dateByAddingTimeInterval:*MEMORY[0x277D623B8]];
  [v5 setExpirationDate:v19];

  return v5;
}

- (BOOL)_shouldPostCustomizeFocusNotification
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepScheduleModelManager = [WeakRetained sleepScheduleModelManager];
  sleepScheduleModel = [sleepScheduleModelManager sleepScheduleModel];

  sleepEventRecord = [sleepScheduleModel sleepEventRecord];
  if ([sleepEventRecord isConsolidatedSleepCoachingOnboardingCompleted])
  {
    sleepSettings = [sleepScheduleModel sleepSettings];
    if (![sleepSettings scheduledSleepMode])
    {
      v13 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v8 = objc_loadWeakRetained(&self->_environment);
    sleepModeManager = [v8 sleepModeManager];
    sleepFocusModeBridge = [sleepModeManager sleepFocusModeBridge];

    v19 = 0;
    v11 = [sleepFocusModeBridge sleepFocusConfiguration:&v19];
    v12 = v19;
    if (v11)
    {
      if ([v11 hasSleepFocusMode])
      {
        v13 = [v11 state] == 1;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v14 = HKSPLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        *buf = 138543618;
        v21 = v17;
        v22 = 2114;
        v23 = v12;
        v18 = v17;
        _os_log_error_impl(&dword_269B11000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to fetch sleep focus configuration with error: %{public}@", buf, 0x16u);
      }
    }

    v13 = 0;
    goto LABEL_12;
  }

  v13 = 0;
LABEL_14:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_localizedBedtimeOrWindDownReminderBodyWithKey:(id)key embeddingTimeForEvent:(id)event shouldIntroduceFocus:(BOOL)focus
{
  focusCopy = focus;
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  eventCopy = event;
  if (([eventCopy isEqualToString:*MEMORY[0x277D621B8]] & 1) == 0 && (objc_msgSend(eventCopy, "isEqualToString:", *MEMORY[0x277D621E0]) & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDSPUserNotificationCenter.m" lineNumber:370 description:@"This method can only be used to format localized strings containing bedtime or wakeUp times."];

    if (focusCopy)
    {
      goto LABEL_4;
    }

LABEL_8:
    v13 = [(HDSPUserNotificationCenter *)self _localizedBedtimeOrWindDownReminderBodyHelperWithKey:keyCopy embeddingTimeForEvent:eventCopy];
    goto LABEL_9;
  }

  if (!focusCopy)
  {
    goto LABEL_8;
  }

LABEL_4:
  v11 = HKSPLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    v19 = objc_opt_class();
    v12 = v19;
    _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Preparing focus introduction notification", &v18, 0xCu);
  }

  v13 = HDSPLocalizedString(@"SLEEP_FOCUS_INTRO");
LABEL_9:
  v15 = v13;

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_localizedBedtimeOrWindDownReminderBodyHelperWithKey:(id)key embeddingTimeForEvent:(id)event
{
  v50 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  sleepScheduleModelManager = [WeakRetained sleepScheduleModelManager];
  sleepScheduleModel = [sleepScheduleModelManager sleepScheduleModel];

  v11 = objc_loadWeakRetained(&self->_environment);
  currentDateProvider = [v11 currentDateProvider];
  v13 = currentDateProvider[2]();

  v14 = [sleepScheduleModel nextEventWithIdentifier:eventCopy dueAfterDate:v13];
  if (v14)
  {
    v41 = v13;
    v15 = [MEMORY[0x277CCA968] localizedStringFromDate:v14 dateStyle:0 timeStyle:1];
    v16 = keyCopy;
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v18 = [currentCalendar hksp_dateRequiresSingularTimeString:v14];

    if (v18)
    {
      v19 = [v16 stringByAppendingString:@"_SINGULAR"];

      v16 = v19;
    }

    v20 = HDSPLocalizedString(v16);
    v43 = 0;
    v21 = [MEMORY[0x277CCAB68] stringWithValidatedFormat:v20 validFormatSpecifiers:@"%@" error:&v43, v15];
    v42 = v43;
    if (v21)
    {
      v39 = v20;
      v40 = sleepScheduleModel;
      v22 = eventCopy;
      v23 = keyCopy;
      v24 = [v21 localizedStandardRangeOfString:v15];
      v26 = v25;
      v27 = [v21 localizedStandardRangeOfString:@".."];
      if (v26)
      {
        v29 = v28;
        if (v28)
        {
          v30 = v27;
          v52.location = v24;
          v52.length = v26;
          v53.location = v30;
          v53.length = v29;
          if (NSIntersectionRange(v52, v53).length)
          {
            [v21 replaceCharactersInRange:v30 withString:{v29, @"."}];
          }
        }
      }

      v31 = [v21 copy];
      keyCopy = v23;
      eventCopy = v22;
      v20 = v39;
      sleepScheduleModel = v40;
    }

    else
    {
      v32 = HKSPLogForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        *buf = 138543874;
        v45 = v36;
        v46 = 2114;
        v47 = v20;
        v48 = 2114;
        v49 = v42;
        v37 = v20;
        v38 = v36;
        _os_log_error_impl(&dword_269B11000, v32, OS_LOG_TYPE_ERROR, "[%{public}@] Unexpected format specifier in %{public}@: %{public}@", buf, 0x20u);

        v20 = v37;
      }

      v31 = &stru_287A83178;
    }

    v13 = v41;
  }

  else
  {
    v15 = HKSPLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v45 = objc_opt_class();
      v46 = 2114;
      v47 = eventCopy;
      v48 = 2114;
      v49 = keyCopy;
      v35 = v45;
      _os_log_error_impl(&dword_269B11000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to find next event with identifier %{public}@ for message %{public}@", buf, 0x20u);
    }

    v31 = &stru_287A83178;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)_chargingReminderContentWithUserInfo:(id)info
{
  v4 = MEMORY[0x277CE1F60];
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v7 = [v4 hdsp_notificationContentWithEnvironment:WeakRetained];

  [v7 setCategoryIdentifier:*MEMORY[0x277D62038]];
  v8 = HDSPLocalizedString(@"CHARGE_WATCH_TITLE");
  [v7 setTitle:v8];

  v9 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D62030]];
  bOOLValue = [v9 BOOLValue];
  v11 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D62048]];

  v12 = -[HDSPUserNotificationCenter _chargingReminderBodyForAlarmEnabled:sleepTrackingEnabled:](self, "_chargingReminderBodyForAlarmEnabled:sleepTrackingEnabled:", bOOLValue, [v11 BOOLValue]);
  [v7 setBody:v12];

  hdsp_chargingReminderSound = [MEMORY[0x277CE1FE0] hdsp_chargingReminderSound];
  [v7 setSound:hdsp_chargingReminderSound];

  return v7;
}

- (id)_chargingReminderBodyForAlarmEnabled:(BOOL)enabled sleepTrackingEnabled:(BOOL)trackingEnabled
{
  v4 = @"CHARGE_WATCH_NO_ALARM_OR_SLEEP_TRACKING_MESSAGE";
  if (trackingEnabled)
  {
    v4 = @"CHARGE_WATCH_SLEEP_TRACKING_MESSAGE";
  }

  if (enabled)
  {
    v5 = @"CHARGE_WATCH_ALARM_MESSAGE";
  }

  else
  {
    v5 = v4;
  }

  v6 = HDSPLocalizedString(v5);

  return v6;
}

- (id)_wakeDetectionContentWithUserInfo:(id)info
{
  v4 = *MEMORY[0x277D62338];
  infoCopy = info;
  v6 = [infoCopy objectForKeyedSubscript:v4];
  bOOLValue = [v6 BOOLValue];

  v8 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D62340]];
  bOOLValue2 = [v8 BOOLValue];

  v10 = MEMORY[0x277CE1F60];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v12 = [v10 hdsp_notificationContentWithEnvironment:WeakRetained];

  [v12 setCategoryIdentifier:*MEMORY[0x277D62328]];
  v13 = [(HDSPUserNotificationCenter *)self _wakeDetectionAlertTitleForAlarmEnabled:bOOLValue sleepModeOn:bOOLValue2];
  [v12 setTitle:v13];

  v14 = [(HDSPUserNotificationCenter *)self _wakeDetectionAlertBodyForAlarmEnabled:bOOLValue sleepModeOn:bOOLValue2];
  [v12 setBody:v14];

  hdsp_wakeDetectionSound = [MEMORY[0x277CE1FE0] hdsp_wakeDetectionSound];
  [v12 setSound:hdsp_wakeDetectionSound];

  [v12 setShouldIgnoreDoNotDisturb:1];
  [v12 setUserInfo:infoCopy];

  return v12;
}

- (id)_wakeDetectionAlertTitleForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = @"EARLY_WAKEUP_TITLE_SLEEP_FOCUS";
  if (enabled && on)
  {
    v4 = @"EARLY_WAKEUP_TITLE_ALARM_AND_SLEEP_FOCUS";
  }

  if (on)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"EARLY_WAKEUP_TITLE_ALARM";
  }

  if (!on && !enabled)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = objc_opt_class();
      v10 = v12;
      _os_log_error_impl(&dword_269B11000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] posting wake detection notification with no user actions!", &v11, 0xCu);
    }

    v5 = @"EARLY_WAKEUP_TITLE_NONE";
  }

  v7 = HDSPLocalizedString(v5);
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_wakeDetectionAlertBodyForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on
{
  v4 = @"EARLY_WAKEUP_BODY_NONE";
  if (enabled)
  {
    v4 = @"EARLY_WAKEUP_BODY_ALARM";
  }

  v5 = @"EARLY_WAKEUP_BODY_ALARM_AND_SLEEP_FOCUS";
  if (!enabled)
  {
    v5 = @"EARLY_WAKEUP_BODY_SLEEP_FOCUS";
  }

  if (on)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = HDSPLocalizedString(v6);

  return v7;
}

- (id)_sleepScoreResultsContentWithUserInfo:(id)info
{
  v25 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = objc_alloc(MEMORY[0x277D626A0]);
  if (infoCopy)
  {
    v6 = infoCopy;
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = [v5 initWithUserInfo:v6];
  if (v7)
  {
    v8 = MEMORY[0x277CE1F60];
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    v10 = [v8 hdsp_notificationContentWithEnvironment:WeakRetained];

    isIntroduction = [v7 isIntroduction];
    v12 = MEMORY[0x277D622E0];
    if (!isIntroduction)
    {
      v12 = MEMORY[0x277D622E8];
    }

    [v10 setCategoryIdentifier:*v12];
    title = [v7 title];
    [v10 setTitle:title];

    body = [v7 body];
    [v10 setBody:body];

    hdsp_wakeUpResultsSound = [MEMORY[0x277CE1FE0] hdsp_wakeUpResultsSound];
    [v10 setSound:hdsp_wakeUpResultsSound];

    notificationUserInfo = [v7 notificationUserInfo];
    [v10 setUserInfo:notificationUserInfo];
  }

  else
  {
    v17 = HKSPLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = 138543618;
      v22 = objc_opt_class();
      v23 = 2114;
      v24 = infoCopy;
      v20 = v22;
      _os_log_error_impl(&dword_269B11000, v17, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot create content for sleep score results without valid data: %{public}@", &v21, 0x16u);
    }

    v10 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_wakeUpResultsContentWithUserInfo:(id)info
{
  v29 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = [HDSPWakeUpResultsNotification wakeUpResultsNotificationFromUserInfo:infoCopy];
  v6 = HKSPLogForCategory();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = v8;
      categoryIdentifier = [v5 categoryIdentifier];
      v25 = 138543618;
      v26 = v8;
      v27 = 2114;
      v28 = categoryIdentifier;
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating content for %{public}@", &v25, 0x16u);
    }

    v11 = [HDSPWakeUpResultsNotificationLocalizer alloc];
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    healthStoreProvider = [WeakRetained healthStoreProvider];
    healthStore = [healthStoreProvider healthStore];
    v7 = [(HDSPWakeUpResultsNotificationLocalizer *)v11 initWithNotification:v5 healthStore:healthStore];

    v15 = MEMORY[0x277CE1F60];
    v16 = objc_loadWeakRetained(&self->_environment);
    v17 = [v15 hdsp_notificationContentWithEnvironment:v16];

    categoryIdentifier2 = [v5 categoryIdentifier];
    [v17 setCategoryIdentifier:categoryIdentifier2];

    localizedTitle = [v7 localizedTitle];
    [v17 setTitle:localizedTitle];

    localizedBody = [v7 localizedBody];
    [v17 setBody:localizedBody];

    hdsp_wakeUpResultsSound = [MEMORY[0x277CE1FE0] hdsp_wakeUpResultsSound];
    [v17 setSound:hdsp_wakeUpResultsSound];

    [v17 setUserInfo:infoCopy];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v25 = 138543618;
      v26 = objc_opt_class();
      v27 = 2112;
      v28 = infoCopy;
      v24 = v26;
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot create content for wake up results without valid data: %@", &v25, 0x16u);
    }

    v17 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v17;
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end