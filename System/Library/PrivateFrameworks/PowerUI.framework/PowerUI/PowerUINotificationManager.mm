@interface PowerUINotificationManager
+ (id)chargeLimitRecommendationContentWithLimit:(unint64_t)limit;
+ (id)chargeLimitRecommendationRequestWithLimit:(unint64_t)limit;
+ (id)chargingAdviceNotificationContent;
+ (id)chargingAdviceNotificationRequest;
+ (id)fullChargeDeadlineStringFromDate:(id)date;
+ (id)lowRuntimeNotificationContent;
+ (id)lowRuntimeNotificationRequest;
+ (id)obcEngagedContentWithDeadline:(id)deadline toppingOff:(BOOL)off;
+ (id)pausedNotificationContentFromDate:(id)date bundle:(id)bundle;
+ (id)sharedInstance;
- (BOOL)internalCECNotificationsDisabled;
- (PowerUINotificationManager)init;
- (id)contentForInternalDurationPredictionWithDuration:(double)duration withConfidence:(double)confidence;
- (id)currentOBCEngagedNotification;
- (id)getDeliveredNotifications;
- (id)postCECEngagedNotificationWithDate:(id)date;
- (id)postCECFirstTimeNotification;
- (id)postChargeLimitRecommendationWithLimit:(unint64_t)limit;
- (id)postChargingAdviceNotification;
- (id)postInternalCECNotificationWithID:(id)d chargingStatus:(BOOL)status information:(id)information shouldReplace:(BOOL)replace;
- (id)postInternalChargingIntelligenceNotificationWithChargingStatus:(BOOL)status information:(id)information url:(id)url validUntil:(id)until;
- (id)postLowRuntimeNotification;
- (id)postNotificationWithRequest:(id)request;
- (id)postOBCEngagedNotificationWithDate:(id)date;
- (id)postOBCEngagedTopOffNotificationWithDate:(id)date;
- (id)ttrURLforLocationFailure;
- (void)cancelNotificationRequestWithIdentifier:(id)identifier;
- (void)handleLocationFailures:(id)failures;
- (void)postInternalCECNotificationForChargingDates:(id)dates;
- (void)postInternalChargeDurationNotificationWithDuration:(double)duration withConfidence:(double)confidence;
- (void)postInternalLocationFailureNotification;
- (void)postInternalNotificationAtDate:(id)date withTitle:(id)title withTextContent:(id)content icon:(id)icon url:(id)url expirationDate:(id)expirationDate;
- (void)removeAllNotifications;
- (void)removeCECNotifications;
- (void)removeCECPausedNotification;
- (void)resetAll;
- (void)updateOBCEngagedNotificationWithDate:(id)date;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation PowerUINotificationManager

- (PowerUINotificationManager)init
{
  v26 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = PowerUINotificationManager;
  v2 = [(PowerUINotificationManager *)&v23 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.powerui.smartcharging", "NotificationManager");
    log = v2->_log;
    v2->_log = v3;

    v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.powerui.notification"];
    defaults = v2->_defaults;
    v2->_defaults = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.powerui.notificationmanager.queue", v7);
    queue = v2->_queue;
    v2->_queue = v8;

    v10 = [(NSUserDefaults *)v2->_defaults objectForKey:@"immediateCharge"];
    v11 = v10;
    if (v10)
    {
      v2->_immediateCharge = [v10 BOOLValue];
      v12 = v2->_log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        immediateCharge = v2->_immediateCharge;
        *buf = 67109120;
        v25 = immediateCharge;
        _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "Setting immediateCharge to %d", buf, 8u);
      }
    }

    v14 = v2->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v2->_immediateCharge;
      *buf = 67109120;
      v25 = v15;
      _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_DEFAULT, "ImmediateCharge %d", buf, 8u);
    }

    v16 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.powerui.smartcharging"];
    unCenter = v2->_unCenter;
    v2->_unCenter = v16;

    [(UNUserNotificationCenter *)v2->_unCenter setDelegate:v2];
    [(UNUserNotificationCenter *)v2->_unCenter setWantsNotificationResponsesDelivered];
    v18 = v2->_unCenter;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __34__PowerUINotificationManager_init__block_invoke;
    v21[3] = &unk_2782D4050;
    v22 = v2;
    [(UNUserNotificationCenter *)v18 getDeliveredNotificationsWithCompletionHandler:v21];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v2;
}

void __34__PowerUINotificationManager_init__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v18 + 1) + 8 * v7) request];
        v9 = [v8 content];
        v10 = [v9 categoryIdentifier];
        v11 = [v10 isEqual:@"fullChargeCategory"];

        if (v11)
        {
          v12 = [v8 identifier];
          v13 = [v12 isEqual:*(*(a1 + 32) + 48)];

          if ((v13 & 1) == 0)
          {
            v14 = [v8 identifier];
            v15 = *(a1 + 32);
            v16 = *(v15 + 48);
            *(v15 + 48) = v14;
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)currentOBCEngagedNotification
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__1;
  v20 = __Block_byref_object_dispose__1;
  v21 = 0;
  v3 = dispatch_semaphore_create(0);
  unCenter = self->_unCenter;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __59__PowerUINotificationManager_currentOBCEngagedNotification__block_invoke;
  v13 = &unk_2782D4078;
  v15 = &v16;
  v5 = v3;
  v14 = v5;
  [(UNUserNotificationCenter *)unCenter getDeliveredNotificationsWithCompletionHandler:&v10];
  v6 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = [(PowerUINotificationManager *)self log:v10];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PowerUINotificationManager currentOBCEngagedNotification];
    }

    v8 = 0;
  }

  else
  {
    v8 = v17[5];
  }

  _Block_object_dispose(&v16, 8);

  return v8;
}

void __59__PowerUINotificationManager_currentOBCEngagedNotification__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v14 = a1;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 request];
        v10 = [v9 content];
        v11 = [v10 categoryIdentifier];
        v12 = [v11 isEqual:@"fullChargeCategory"];

        if (v12)
        {
          a1 = v14;
          objc_storeStrong((*(*(v14 + 40) + 8) + 40), v8);

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      a1 = v14;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  dispatch_semaphore_signal(*(a1 + 32));
  v13 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[PowerUINotificationManager sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

void __44__PowerUINotificationManager_sharedInstance__block_invoke()
{
  if (!sharedInstance_instance)
  {
    sharedInstance_instance = objc_alloc_init(PowerUINotificationManager);

    MEMORY[0x2821F96F8]();
  }
}

+ (id)fullChargeDeadlineStringFromDate:(id)date
{
  v3 = fullChargeDeadlineStringFromDate__onceToken;
  dateCopy = date;
  if (v3 != -1)
  {
    +[PowerUINotificationManager fullChargeDeadlineStringFromDate:];
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [fullChargeDeadlineStringFromDate__formatter setLocale:currentLocale];

  v6 = [fullChargeDeadlineStringFromDate__formatter stringFromDate:dateCopy];

  return v6;
}

uint64_t __63__PowerUINotificationManager_fullChargeDeadlineStringFromDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = fullChargeDeadlineStringFromDate__formatter;
  fullChargeDeadlineStringFromDate__formatter = v0;

  [fullChargeDeadlineStringFromDate__formatter setDateStyle:0];
  v2 = fullChargeDeadlineStringFromDate__formatter;

  return [v2 setTimeStyle:1];
}

- (void)updateOBCEngagedNotificationWithDate:(id)date
{
  v4 = [PowerUINotificationManager obcEngagedContentWithDeadline:date toppingOff:0];
  if (v4)
  {
    [(UNUserNotificationCenter *)self->_unCenter replaceContentForRequestWithIdentifier:self->_lastScheduledFullChargeNotificationID replacementContent:v4 completionHandler:0];
  }

  MEMORY[0x2821F96F8]();
}

- (id)postOBCEngagedNotificationWithDate:(id)date
{
  v4 = [PowerUINotificationManager obcEngagedRequestWithDeadline:date isToppingOff:0];
  [(UNUserNotificationCenter *)self->_unCenter addNotificationRequest:v4 withCompletionHandler:0];
  identifier = [v4 identifier];

  return identifier;
}

- (id)postOBCEngagedTopOffNotificationWithDate:(id)date
{
  v4 = [PowerUINotificationManager obcEngagedRequestWithDeadline:date isToppingOff:1];
  [(UNUserNotificationCenter *)self->_unCenter addNotificationRequest:v4 withCompletionHandler:0];
  identifier = [v4 identifier];

  return identifier;
}

- (id)postNotificationWithRequest:(id)request
{
  requestCopy = request;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  unCenter = self->_unCenter;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__PowerUINotificationManager_postNotificationWithRequest___block_invoke;
  v8[3] = &unk_2782D40A0;
  v8[4] = &v9;
  [(UNUserNotificationCenter *)unCenter addNotificationRequest:requestCopy withCompletionHandler:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __58__PowerUINotificationManager_postNotificationWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (id)getDeliveredNotifications
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  v3 = dispatch_semaphore_create(0);
  unCenter = self->_unCenter;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__PowerUINotificationManager_getDeliveredNotifications__block_invoke;
  v9[3] = &unk_2782D4078;
  v11 = &v12;
  v5 = v3;
  v10 = v5;
  [(UNUserNotificationCenter *)unCenter getDeliveredNotificationsWithCompletionHandler:v9];
  v6 = dispatch_time(0, 500000000);
  if (dispatch_semaphore_wait(v5, v6) && os_log_type_enabled(self->_log, OS_LOG_TYPE_FAULT))
  {
    [PowerUINotificationManager getDeliveredNotifications];
  }

  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__PowerUINotificationManager_getDeliveredNotifications__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)removeAllNotifications
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Removing all notifications", buf, 2u);
  }

  unCenter = self->_unCenter;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PowerUINotificationManager_removeAllNotifications__block_invoke;
  v5[3] = &unk_2782D4050;
  v5[4] = self;
  [(UNUserNotificationCenter *)unCenter getDeliveredNotificationsWithCompletionHandler:v5];
  [(UNUserNotificationCenter *)self->_unCenter removeAllDeliveredNotifications];
  [(PowerUINotificationManager *)self resetAll];
}

void __52__PowerUINotificationManager_removeAllNotifications__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(a1 + 32) + 16);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = v8;
          v11 = [v9 request];
          v12 = [v11 identifier];
          *buf = 138412290;
          v19 = v12;
          _os_log_impl(&dword_21B766000, v10, OS_LOG_TYPE_DEFAULT, "Removing notification %@", buf, 0xCu);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (id)pausedNotificationContentFromDate:(id)date bundle:(id)bundle
{
  bundleCopy = bundle;
  dateCopy = date;
  v7 = [PowerUINotificationManager fullChargeDeadlineStringFromDate:dateCopy];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar components:32 fromDate:dateCopy];

  if ([v9 hour] == 1)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = @"OBC_CHARGING_PAUSED_BODY_TIME_SINGULAR";
LABEL_9:
    v14 = [bundleCopy localizedStringForKey:v11 value:&stru_282D0B728 table:@"Localizable"];
    v18 = [v10 stringWithFormat:v14, v7];
    goto LABEL_10;
  }

  if ([v9 hour] != 13)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = @"OBC_CHARGING_PAUSED_BODY_TIME_PLURAL";
    goto LABEL_9;
  }

  v12 = MEMORY[0x277CCA968];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v14 = [v12 dateFormatFromTemplate:@"j" options:0 locale:currentLocale];

  v15 = @"OBC_CHARGING_PAUSED_BODY_TIME_PLURAL";
  if (([v14 containsString:@"H"] & 1) == 0 && !objc_msgSend(v14, "containsString:", @"k"))
  {
    v15 = @"OBC_CHARGING_PAUSED_BODY_TIME_SINGULAR";
  }

  v16 = MEMORY[0x277CCACA8];
  v17 = [bundleCopy localizedStringForKey:v15 value:&stru_282D0B728 table:@"Localizable"];
  v18 = [v16 stringWithFormat:v17, v7];

LABEL_10:
  v19 = [v18 stringByReplacingOccurrencesOfString:@"\\.\\.$" withString:@"." options:1024 range:{0, objc_msgSend(v18, "length")}];

  return v19;
}

+ (id)obcEngagedContentWithDeadline:(id)deadline toppingOff:(BOOL)off
{
  offCopy = off;
  deadlineCopy = deadline;
  v6 = objc_alloc_init(MEMORY[0x277CE1F60]);
  if (deadlineCopy)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/PrivateFrameworks/PowerUI.framework"];
    v8 = [MEMORY[0x277CCA8D8] bundleWithURL:v7];
    v9 = [v8 localizedStringForKey:@"OBC_FEATURE_TITLE" value:&stru_282D0B728 table:@"Localizable"];
    [v6 setTitle:v9];

    v10 = [PowerUINotificationManager pausedNotificationContentFromDate:deadlineCopy bundle:v8];
    [v6 setBody:v10];

    if (offCopy)
    {
      v11 = @"chargingToFullCategory";
    }

    else
    {
      v11 = @"fullChargeCategory";
    }

    [v6 setCategoryIdentifier:v11];
    [v6 setShouldIgnoreDowntime:1];
    [v6 setShouldIgnoreDoNotDisturb:1];
    [v6 setShouldHideDate:1];
    [v6 setShouldSuppressScreenLightUp:1];
    v12 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"bolt.badge.clock.fill"];
    [v6 setIcon:v12];

    [v6 setSound:0];
    v13 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Battery"];
    [v6 setDefaultActionURL:v13];

    [v6 setExpirationDate:deadlineCopy];
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)resetAll
{
  self->_immediateCharge = 0;
  lastScheduledFullChargeNotificationID = self->_lastScheduledFullChargeNotificationID;
  self->_lastScheduledFullChargeNotificationID = 0;

  defaults = self->_defaults;

  [(NSUserDefaults *)defaults removeObjectForKey:@"immediateCharge"];
}

+ (id)chargeLimitRecommendationContentWithLimit:(unint64_t)limit
{
  v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/PrivateFrameworks/PowerUI.framework"];
  v5 = [MEMORY[0x277CCA8D8] bundleWithURL:v4];
  v6 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v7 = [v5 localizedStringForKey:@"CHARGE_LIMIT_FEATURE_TITLE" value:&stru_282D0B728 table:@"Localizable"];
  [v6 setTitle:v7];

  [v6 setCategoryIdentifier:@"chargeRecommendationCategory"];
  [v6 setShouldIgnoreDowntime:1];
  [v6 setShouldIgnoreDoNotDisturb:1];
  [v6 setShouldHideDate:1];
  [v6 setShouldSuppressScreenLightUp:1];
  v8 = [MEMORY[0x277CE1FB0] iconNamed:@"battery-rcl"];
  [v6 setIcon:v8];

  [v6 setShouldBackgroundDefaultAction:1];
  v9 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Battery/CHARGING_OPTIONS_IDENTIFIER"];
  [v6 setDefaultActionURL:v9];

  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:172800.0];
  [v6 setExpirationDate:v10];

  v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  [v11 setLocale:currentLocale];

  [v11 setNumberStyle:3];
  [v11 setMaximumFractionDigits:0];
  [v11 setMultiplier:&unk_282D4E0F8];
  v13 = MEMORY[0x277CCACA8];
  v14 = [v5 localizedStringForKey:@"CHARGE_LIMIT_RECOMMENDATION" value:&stru_282D0B728 table:@"Localizable"];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:limit];
  v16 = [v11 stringFromNumber:v15];
  v17 = [v13 stringWithFormat:v14, v16];
  [v6 setBody:v17];

  return v6;
}

+ (id)chargeLimitRecommendationRequestWithLimit:(unint64_t)limit
{
  v3 = [PowerUINotificationManager chargeLimitRecommendationContentWithLimit:limit];
  if (v3)
  {
    v4 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"recommendedLimitRequest" content:v3 trigger:0];
    [v4 setDestinations:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)lowRuntimeNotificationContent
{
  v2 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/PrivateFrameworks/PowerUI.framework"];
  v3 = [MEMORY[0x277CCA8D8] bundleWithURL:v2];
  v4 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v4 setTitle:@"[Internal] Low Runtime Warning"];
  [v4 setBody:@"Device runtime is critically low. Consider charging soon."];
  [v4 setCategoryIdentifier:@"lowRuntimeCategory"];
  [v4 setShouldIgnoreDowntime:1];
  [v4 setShouldIgnoreDoNotDisturb:1];
  [v4 setShouldHideDate:1];
  [v4 setShouldSuppressScreenLightUp:1];
  v5 = [MEMORY[0x277CE1FB0] iconNamed:@"battery-rcl"];
  [v4 setIcon:v5];

  v6 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Battery"];
  [v4 setDefaultActionURL:v6];

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:900.0];
  [v4 setExpirationDate:v7];

  return v4;
}

+ (id)lowRuntimeNotificationRequest
{
  v2 = +[PowerUINotificationManager lowRuntimeNotificationContent];
  if (v2)
  {
    v3 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"lowRuntimeRequest" content:v2 trigger:0];
    [v3 setDestinations:2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)postChargeLimitRecommendationWithLimit:(unint64_t)limit
{
  v4 = [PowerUINotificationManager chargeLimitRecommendationRequestWithLimit:limit];
  [(UNUserNotificationCenter *)self->_unCenter addNotificationRequest:v4 withCompletionHandler:0];
  identifier = [v4 identifier];

  return identifier;
}

- (id)postLowRuntimeNotification
{
  v3 = +[PowerUINotificationManager lowRuntimeNotificationRequest];
  [(UNUserNotificationCenter *)self->_unCenter addNotificationRequest:v3 withCompletionHandler:0];
  identifier = [v3 identifier];

  return identifier;
}

+ (id)chargingAdviceNotificationContent
{
  v2 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/PrivateFrameworks/PowerUI.framework"];
  v3 = [MEMORY[0x277CCA8D8] bundleWithURL:v2];
  v4 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v4 setTitle:@"[Internal] Charging Advice"];
  [v4 setBody:@"Your device may run out of power before 11 pm. Consider charging now."];
  [v4 setCategoryIdentifier:@"chargingAdviceCategory"];
  [v4 setShouldIgnoreDowntime:1];
  [v4 setShouldIgnoreDoNotDisturb:1];
  [v4 setShouldHideDate:1];
  [v4 setShouldSuppressScreenLightUp:1];
  v5 = [MEMORY[0x277CE1FB0] iconNamed:@"battery-rcl"];
  [v4 setIcon:v5];

  v6 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Battery"];
  [v4 setDefaultActionURL:v6];

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:7200.0];
  [v4 setExpirationDate:v7];

  return v4;
}

+ (id)chargingAdviceNotificationRequest
{
  v2 = +[PowerUINotificationManager chargingAdviceNotificationContent];
  if (v2)
  {
    v3 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"chargingAdviceRequest" content:v2 trigger:0];
    [v3 setDestinations:2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)postChargingAdviceNotification
{
  v3 = +[PowerUINotificationManager chargingAdviceNotificationRequest];
  [(UNUserNotificationCenter *)self->_unCenter addNotificationRequest:v3 withCompletionHandler:0];
  identifier = [v3 identifier];

  return identifier;
}

- (id)postCECEngagedNotificationWithDate:(id)date
{
  dateCopy = date;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Posting CEC Engaged notification", v17, 2u);
  }

  v6 = [PowerUISmartChargeUtilities roundedDateFromDate:dateCopy];
  v7 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/PrivateFrameworks/PowerUI.framework"];
  v9 = [MEMORY[0x277CCA8D8] bundleWithURL:v8];
  v10 = [v9 localizedStringForKey:@"CEC_FEATURE_TITLE" value:&stru_282D0B728 table:@"Localizable"];
  [v7 setTitle:v10];

  v11 = [PowerUINotificationManager pausedNotificationContentFromDate:v6 bundle:v9];
  [v7 setBody:v11];

  [v7 setShouldIgnoreDowntime:1];
  [v7 setShouldIgnoreDoNotDisturb:1];
  [v7 setShouldHideDate:1];
  [v7 setShouldSuppressScreenLightUp:1];
  [v7 setCategoryIdentifier:@"cecEngagedCategory"];
  v12 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"bolt.and.smog.fill"];
  [v7 setIcon:v12];

  v13 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Battery"];
  [v7 setDefaultActionURL:v13];

  [v7 setShouldPreventNotificationDismissalAfterDefaultAction:1];
  [v7 setSound:0];
  [v7 setExpirationDate:v6];
  v14 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"cec-pausedCharging" content:v7 trigger:0];
  [v14 setDestinations:2];
  [(UNUserNotificationCenter *)self->_unCenter addNotificationRequest:v14 withCompletionHandler:0];
  identifier = [v14 identifier];

  return identifier;
}

- (id)postCECFirstTimeNotification
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Posting First time notification", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/PrivateFrameworks/PowerUI.framework"];
  v6 = [MEMORY[0x277CCA8D8] bundleWithURL:v5];
  v7 = [v6 localizedStringForKey:@"CEC_FEATURE_TITLE" value:&stru_282D0B728 table:@"Localizable"];
  [v4 setTitle:v7];

  v8 = [v6 localizedStringForKey:@"CEC_FEATURE_FIRST_TIME" value:&stru_282D0B728 table:@"Localizable"];
  [v4 setBody:v8];

  [v4 setShouldIgnoreDowntime:1];
  [v4 setShouldIgnoreDoNotDisturb:1];
  [v4 setShouldHideDate:1];
  [v4 setShouldSuppressScreenLightUp:1];
  v9 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.Battery/BATTERY_HEALTH_TITLE"];
  [v4 setDefaultActionURL:v9];

  [v4 setShouldPreventNotificationDismissalAfterDefaultAction:1];
  [v4 setCategoryIdentifier:@"cecFirstTimeCategory"];
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:28800.0];
  [v4 setExpirationDate:v10];

  v11 = MEMORY[0x277CCACA8];
  date = [MEMORY[0x277CBEAA8] date];
  v13 = [v11 stringWithFormat:@"cec-FirstTime-%@", date];

  v14 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v13 content:v4 trigger:0];
  [v14 setDestinations:2];
  [(UNUserNotificationCenter *)self->_unCenter addNotificationRequest:v14 withCompletionHandler:0];
  identifier = [v14 identifier];

  return identifier;
}

- (void)removeCECPausedNotification
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Removing CEC notification", buf, 2u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v5 = dispatch_semaphore_create(0);
  unCenter = self->_unCenter;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__PowerUINotificationManager_removeCECPausedNotification__block_invoke;
  v10[3] = &unk_2782D40C8;
  v10[4] = self;
  v7 = array;
  v11 = v7;
  v8 = v5;
  v12 = v8;
  [(UNUserNotificationCenter *)unCenter getDeliveredNotificationsWithCompletionHandler:v10];
  v9 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v8, v9) && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [PowerUINotificationManager removeCECPausedNotification];
  }

  [(UNUserNotificationCenter *)self->_unCenter removeDeliveredNotificationsWithIdentifiers:v7];
}

void __57__PowerUINotificationManager_removeCECPausedNotification__block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v24;
    *&v4 = 138412290;
    v21 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 request];
        v10 = [v9 content];
        v11 = [v10 categoryIdentifier];
        v12 = [v11 isEqual:@"cecEngagedCategory"];

        if (v12)
        {
          v13 = *(*(a1 + 32) + 16);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v13;
            v15 = [v8 request];
            v16 = [v15 identifier];
            *buf = v21;
            v28 = v16;
            _os_log_impl(&dword_21B766000, v14, OS_LOG_TYPE_DEFAULT, "Removing notification %@", buf, 0xCu);
          }

          v17 = *(a1 + 40);
          v18 = [v8 request];
          v19 = [v18 identifier];
          [v17 addObject:v19];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v5);
  }

  dispatch_semaphore_signal(*(a1 + 48));

  v20 = *MEMORY[0x277D85DE8];
}

- (void)removeCECNotifications
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Removing CEC notifications", buf, 2u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v5 = dispatch_semaphore_create(0);
  unCenter = self->_unCenter;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__PowerUINotificationManager_removeCECNotifications__block_invoke;
  v10[3] = &unk_2782D40C8;
  v10[4] = self;
  v7 = array;
  v11 = v7;
  v8 = v5;
  v12 = v8;
  [(UNUserNotificationCenter *)unCenter getDeliveredNotificationsWithCompletionHandler:v10];
  v9 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v8, v9) && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [PowerUINotificationManager removeCECNotifications];
  }

  [(UNUserNotificationCenter *)self->_unCenter removeDeliveredNotificationsWithIdentifiers:v7];
}

void __52__PowerUINotificationManager_removeCECNotifications__block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a2;
  v28 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v28)
  {
    v4 = *v30;
    v5 = @"cecEngagedCategory";
    *&v3 = 138412290;
    v24 = v3;
    v25 = *v30;
    v26 = a1;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v8 = [v7 request];
        v9 = [v8 content];
        v10 = [v9 categoryIdentifier];
        if ([v10 isEqual:v5])
        {
        }

        else
        {
          v11 = [v7 request];
          [v11 content];
          v13 = v12 = v5;
          v14 = [v13 categoryIdentifier];
          v15 = [v14 isEqual:@"cecFirstTimeCategory"];

          v5 = v12;
          v4 = v25;
          a1 = v26;

          if (!v15)
          {
            continue;
          }
        }

        v16 = *(*(a1 + 32) + 16);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          v18 = [v7 request];
          v19 = [v18 identifier];
          *buf = v24;
          v34 = v19;
          _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "Removing notification %@", buf, 0xCu);
        }

        v20 = *(a1 + 40);
        v21 = [v7 request];
        v22 = [v21 identifier];
        [v20 addObject:v22];
      }

      v28 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v28);
  }

  dispatch_semaphore_signal(*(a1 + 48));

  v23 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  responseCopy = response;
  handlerCopy = handler;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v12 = log;
    actionIdentifier = [responseCopy actionIdentifier];
    v22 = 138412290;
    v23 = actionIdentifier;
    _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_INFO, "notification request coming in: %@", &v22, 0xCu);
  }

  actionIdentifier2 = [responseCopy actionIdentifier];
  v15 = [actionIdentifier2 isEqualToString:@"fullCharge"];

  if (v15)
  {
    v16 = self->_log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_21B766000, v16, OS_LOG_TYPE_DEFAULT, "User requested immediate charge.", &v22, 2u);
    }

    v17 = self->_log;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      immediateCharge = self->_immediateCharge;
      v22 = 67109120;
      LODWORD(v23) = immediateCharge;
      _os_log_impl(&dword_21B766000, v17, OS_LOG_TYPE_DEFAULT, "ImmediateCharge %d", &v22, 8u);
    }

    self->_immediateCharge = 1;
    [(NSUserDefaults *)self->_defaults setBool:1 forKey:@"immediateCharge"];
  }

  [(PowerUINotificationManager *)self handleLocationFailures:responseCopy];
  v19 = +[PowerUICECManager manager];
  [v19 handleNotificationResponse:responseCopy];

  v20 = +[PowerUISmartChargeManager manager];
  [v20 handleNotificationResponse:responseCopy];

  handlerCopy[2](handlerCopy);
  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)internalCECNotificationsDisabled
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.powerui.cec"];
  v3 = [v2 objectForKey:@"testDisableInternalNotifications"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)postInternalCECNotificationForChargingDates:(id)dates
{
  v42 = *MEMORY[0x277D85DE8];
  datesCopy = dates;
  if (!-[PowerUINotificationManager internalCECNotificationsDisabled](self, "internalCECNotificationsDisabled") && [datesCopy count])
  {
    selfCopy = self;
    v5 = objc_alloc_init(MEMORY[0x277CE1F60]);
    v6 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"[CEC INTERNAL]" arguments:0];
    v30 = v5;
    [v5 setTitle:v6];

    v7 = [datesCopy objectAtIndexedSubscript:0];
    v8 = [datesCopy objectAtIndexedSubscript:0];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v32 = datesCopy;
    obj = datesCopy;
    v36 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v36)
    {
      v9 = 0;
      v34 = *v38;
      v10 = @"Cleaner Electricity windows: ";
      do
      {
        v11 = 0;
        v33 = v9;
        v12 = v9 + 1;
        v13 = v8;
        do
        {
          if (*v38 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v37 + 1) + 8 * v11);
          [v14 timeIntervalSinceDate:v13];
          if (v15 > 900.0 || v12 == [obj count])
          {
            v16 = [MEMORY[0x277CCA968] localizedStringFromDate:v7 dateStyle:0 timeStyle:1];
            v17 = MEMORY[0x277CCA968];
            v18 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v13 sinceDate:900.0];
            v19 = [v17 localizedStringFromDate:v18 dateStyle:0 timeStyle:1];

            v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v16, v19];
            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v10, v20];
            v22 = v10;
            v10 = v21;

            v23 = v14;
            v7 = v23;
          }

          v8 = v14;

          ++v11;
          ++v12;
          v13 = v8;
        }

        while (v36 != v11);
        v9 = v36 + v33;
        v36 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v36);
    }

    else
    {
      v10 = @"Cleaner Electricity windows: ";
    }

    [v30 setBody:v10];
    v24 = MEMORY[0x277CE1FB0];
    v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v25 pathForResource:@"leaf.circle@2x" ofType:@"png"];
    v27 = [v24 iconAtPath:v26];
    [v30 setIcon:v27];

    [v30 setShouldIgnoreDoNotDisturb:1];
    [v30 setCategoryIdentifier:@"cecEngagedCategory"];
    v28 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"emissionChargingDates" content:v30 trigger:0];
    [(UNUserNotificationCenter *)selfCopy->_unCenter addNotificationRequest:v28 withCompletionHandler:0];

    datesCopy = v32;
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)postInternalNotificationAtDate:(id)date withTitle:(id)title withTextContent:(id)content icon:(id)icon url:(id)url expirationDate:(id)expirationDate
{
  dateCopy = date;
  titleCopy = title;
  contentCopy = content;
  iconCopy = icon;
  urlCopy = url;
  expirationDateCopy = expirationDate;
  if (+[PowerUISmartChargeUtilities isInternalBuild])
  {
    selfCopy = self;
    v20 = objc_alloc_init(MEMORY[0x277CE1F60]);
    [v20 setCategoryIdentifier:@"powerUIInternal"];
    v21 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:titleCopy arguments:0];
    [v20 setTitle:v21];

    [v20 setBody:contentCopy];
    if (iconCopy)
    {
      [v20 setIcon:iconCopy];
    }

    if (expirationDateCopy)
    {
      [v20 setExpirationDate:expirationDateCopy];
    }

    if (urlCopy)
    {
      [v20 setDefaultActionURL:urlCopy];
    }

    [dateCopy timeIntervalSinceNow];
    if (v22 <= 0.0)
    {
      v24 = 0;
    }

    else
    {
      v23 = MEMORY[0x277CE2020];
      [dateCopy timeIntervalSinceNow];
      v24 = [v23 triggerWithTimeInterval:0 repeats:?];
    }

    v25 = MEMORY[0x277CCACA8];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v27 = [v25 stringWithFormat:@"com.apple.powerui-internal-notification:%lf", v26];
    v28 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v27 content:v20 trigger:v24];
    [v28 setDestinations:15];
    [(UNUserNotificationCenter *)selfCopy->_unCenter addNotificationRequest:v28 withCompletionHandler:0];
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_FAULT))
  {
    [PowerUINotificationManager postInternalNotificationAtDate:withTitle:withTextContent:icon:url:expirationDate:];
  }
}

- (id)postInternalCECNotificationWithID:(id)d chargingStatus:(BOOL)status information:(id)information shouldReplace:(BOOL)replace
{
  statusCopy = status;
  dCopy = d;
  informationCopy = information;
  if ([(PowerUINotificationManager *)self internalCECNotificationsDisabled])
  {
    identifier = 0;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277CE1F60]);
    v14 = @"Charging On Hold";
    if (statusCopy)
    {
      v14 = @"Charging Now";
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", @"[CEC Internal]", v14];
    [v13 setBody:informationCopy];
    v16 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:v15 arguments:0];
    [v13 setTitle:v16];

    v17 = MEMORY[0x277CE1FB0];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 pathForResource:@"leaf.circle@2x" ofType:@"png"];
    v20 = [v17 iconAtPath:v19];
    [v13 setIcon:v20];

    [v13 setShouldIgnoreDoNotDisturb:1];
    [v13 setCategoryIdentifier:@"cecEngagedCategory"];
    if (statusCopy)
    {
      [v13 setAccessoryImageName:@"bolt.and.smog.fill"];
    }

    if (!replace)
    {
      v21 = MEMORY[0x277CCACA8];
      date = [MEMORY[0x277CBEAA8] date];
      v23 = [v21 stringWithFormat:@"%@-%@", dCopy, date];

      dCopy = v23;
    }

    v24 = [MEMORY[0x277CE1FC0] requestWithIdentifier:dCopy content:v13 trigger:0];
    [(UNUserNotificationCenter *)self->_unCenter addNotificationRequest:v24 withCompletionHandler:0];
    identifier = [v24 identifier];
  }

  return identifier;
}

- (id)contentForInternalDurationPredictionWithDuration:(double)duration withConfidence:(double)confidence
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:duration];
  v9 = [MEMORY[0x277CCA968] localizedStringFromDate:v8 dateStyle:1 timeStyle:1];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Internal]\nPredicted to be plugged in for %d hours and %d minutes - plugout at %@ with confidence %.2f", (duration / 3600), ((((34953 * (duration % 3600)) >> 16) >> 5) + (((duration % 3600 + ((-30583 * (duration % 3600)) >> 16)) & 0x8000) >> 15)), v9, *&confidence];
  v11 = [PowerUISmartChargeUtilities batteryLevelHistogramAroundTime:0 withDelta:7200.0 withOffset:7200.0];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v11;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Histogram at plugin: %@", buf, 0xCu);
  }

  v13 = [v11 objectForKeyedSubscript:&unk_282D4E110];
  [v13 doubleValue];
  v15 = v14;

  if (v15 <= 0.1)
  {
    v17 = [v11 objectForKeyedSubscript:&unk_282D4E128];
    [v17 doubleValue];
    v19 = v18;

    if (v19 <= 0.4)
    {
      goto LABEL_8;
    }

    v16 = @"\nThis could be treated as a long charge.";
  }

  else
  {
    v16 = @"\nThis could be treated as an emergency charge.";
  }

  v20 = [v10 stringByAppendingString:v16];

  v10 = v20;
LABEL_8:
  v21 = @"Medium Length Charge Session Predicted";
  if (duration > 19800.0)
  {
    v21 = @"Long Charge Session Predicted";
  }

  if (duration < 5400.0)
  {
    v21 = @"Short Charge Session Predicted";
  }

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v21];
  [v7 setBody:v10];
  v23 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:v22 arguments:0];
  [v7 setTitle:v23];

  [v7 setShouldIgnoreDowntime:1];
  [v7 setShouldIgnoreDoNotDisturb:1];
  [v7 setShouldHideDate:0];
  [v7 setShouldSuppressScreenLightUp:1];
  [v7 setCategoryIdentifier:@"chargingIntelligence"];
  [v7 setExpirationDate:v8];
  v24 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"bolt.fill"];
  [v7 setIcon:v24];

  v25 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)postInternalChargeDurationNotificationWithDuration:(double)duration withConfidence:(double)confidence
{
  v5 = [(PowerUINotificationManager *)self contentForInternalDurationPredictionWithDuration:duration withConfidence:confidence];
  if (v5)
  {
    v6 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"charging-intelligence-notification" content:v5 trigger:0];
    if (v6)
    {
      [(PowerUINotificationManager *)self cancelNotificationRequestWithIdentifier:@"charging-intelligence-notification"];
      [(UNUserNotificationCenter *)self->_unCenter addNotificationRequest:v6 withCompletionHandler:0];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (id)postInternalChargingIntelligenceNotificationWithChargingStatus:(BOOL)status information:(id)information url:(id)url validUntil:(id)until
{
  urlCopy = url;
  untilCopy = until;
  informationCopy = information;
  [(PowerUINotificationManager *)self cancelNotificationRequestWithIdentifier:@"charging-intelligence-notification"];
  v12 = objc_alloc_init(MEMORY[0x277CE1F60]);
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", @"[Charging Intelligence Internal]", &stru_282D0B728];
  [v12 setBody:informationCopy];

  v14 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:v13 arguments:0];
  [v12 setTitle:v14];

  [v12 setShouldIgnoreDowntime:1];
  [v12 setShouldIgnoreDoNotDisturb:1];
  [v12 setShouldHideDate:0];
  [v12 setShouldSuppressScreenLightUp:1];
  [v12 setCategoryIdentifier:@"chargingIntelligence"];
  [v12 setExpirationDate:untilCopy];

  v15 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"bolt.fill"];
  [v12 setIcon:v15];

  if (urlCopy)
  {
    [v12 setDefaultActionURL:urlCopy];
  }

  v16 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"charging-intelligence-notification" content:v12 trigger:0];
  [(UNUserNotificationCenter *)self->_unCenter addNotificationRequest:v16 withCompletionHandler:0];
  identifier = [v16 identifier];

  return identifier;
}

- (void)handleLocationFailures:(id)failures
{
  v25 = *MEMORY[0x277D85DE8];
  failuresCopy = failures;
  notification = [failuresCopy notification];
  request = [notification request];
  identifier = [request identifier];
  v8 = [identifier isEqualToString:@"com.apple.powerui.note.location"];

  if (!v8)
  {
    goto LABEL_10;
  }

  actionIdentifier = [failuresCopy actionIdentifier];
  if ([actionIdentifier isEqualToString:@"yesAction"])
  {

LABEL_5:
    actionIdentifier2 = [failuresCopy actionIdentifier];
    v13 = [actionIdentifier2 isEqualToString:@"noAction"];

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v15 = &stru_282D0B728;
      if (v13)
      {
        v15 = @" not";
      }

      *buf = 138412290;
      v24 = v15;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_INFO, "User has%@ charged here before.", buf, 0xCu);
    }

    v21[5] = MEMORY[0x277D85DD0];
    v21[6] = 3221225472;
    v21[7] = __53__PowerUINotificationManager_handleLocationFailures___block_invoke;
    v21[8] = &__block_descriptor_33_e19___NSDictionary_8__0l;
    v22 = v13;
    AnalyticsSendEventLazy();
    goto LABEL_10;
  }

  actionIdentifier3 = [failuresCopy actionIdentifier];
  v11 = [actionIdentifier3 isEqualToString:@"noAction"];

  if (v11)
  {
    goto LABEL_5;
  }

  actionIdentifier4 = [failuresCopy actionIdentifier];
  v18 = [actionIdentifier4 isEqualToString:@"poweruiTTR"];

  if (v18)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    ttrURLforLocationFailure = [(PowerUINotificationManager *)self ttrURLforLocationFailure];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __53__PowerUINotificationManager_handleLocationFailures___block_invoke_2;
    v21[3] = &unk_2782D4110;
    v21[4] = self;
    [defaultWorkspace openURL:ttrURLforLocationFailure configuration:0 completionHandler:v21];
  }

LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
}

id __53__PowerUINotificationManager_handleLocationFailures___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"Correct";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void __53__PowerUINotificationManager_handleLocationFailures___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__PowerUINotificationManager_handleLocationFailures___block_invoke_2_cold_1(v6, v7);
    }
  }
}

- (id)ttrURLforLocationFailure
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"tap-to-radar://new?Title=OBC Location Error&Classification=Serious Bug&ComponentID=971083&ComponentName=PowerUI&ComponentVersion=all&Reproducible=Sometimes&Description=If you have charged here in the past, could you describe how recently and general frequency of charge sessions that are at least one hour long?"];
  uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v5 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

  v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "TTR URL is %@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)postInternalLocationFailureNotification
{
  v6 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v6 setTitle:@"Have you charged here in the last month?"];
  [v6 setBody:{@"Help your fellow engineers! Please long-press this notification and consider filing a radar (or select 'Yes') if you've charged at this (physical) location in the last month for at least an hour, or 'No' if this is the first time or you typically charge here very briefly."}];
  [v6 setShouldIgnoreDowntime:1];
  [v6 setShouldIgnoreDoNotDisturb:1];
  [v6 setShouldHideDate:0];
  [v6 setShouldSuppressScreenLightUp:0];
  [v6 setCategoryIdentifier:@"yesNoCategory"];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:28800.0];
  [v6 setExpirationDate:v3];

  v4 = [MEMORY[0x277CE1FB0] iconForSystemImageNamed:@"bolt.fill"];
  [v6 setIcon:v4];

  v5 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"com.apple.powerui.note.location" content:v6 trigger:0];
  [(UNUserNotificationCenter *)self->_unCenter addNotificationRequest:v5 withCompletionHandler:0];
}

- (void)cancelNotificationRequestWithIdentifier:(id)identifier
{
  v12[1] = *MEMORY[0x277D85DE8];
  unCenter = self->_unCenter;
  v12[0] = identifier;
  v5 = MEMORY[0x277CBEA60];
  identifierCopy = identifier;
  v7 = [v5 arrayWithObjects:v12 count:1];
  [(UNUserNotificationCenter *)unCenter removeDeliveredNotificationsWithIdentifiers:v7];

  v8 = self->_unCenter;
  v11 = identifierCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [(UNUserNotificationCenter *)v8 removePendingNotificationRequestsWithIdentifiers:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __53__PowerUINotificationManager_handleLocationFailures___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_21B766000, a2, OS_LOG_TYPE_ERROR, "Error when opening TTR URL: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end