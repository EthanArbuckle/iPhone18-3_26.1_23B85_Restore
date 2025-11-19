@interface HKSHSleepApneaNotificationInteractedAnalyticsEvent
- (HKSHSleepApneaNotificationInteractedAnalyticsEvent)initWithNotificationResponse:(id)a3;
- (id)_notificationAction;
- (id)_notificationType;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HKSHSleepApneaNotificationInteractedAnalyticsEvent

- (HKSHSleepApneaNotificationInteractedAnalyticsEvent)initWithNotificationResponse:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKSHSleepApneaNotificationInteractedAnalyticsEvent;
  v6 = [(HKSHSleepApneaNotificationInteractedAnalyticsEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, a3);
  }

  return v7;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v6 setObject:@"true" forKeyedSubscript:@"areHealthNotificationsAuthorized"];
  v7 = [(HKSHSleepApneaNotificationInteractedAnalyticsEvent *)self _notificationType];
  [v6 setObject:v7 forKeyedSubscript:@"type"];

  v8 = [(HKSHSleepApneaNotificationInteractedAnalyticsEvent *)self _notificationAction];
  [v6 setObject:v8 forKeyedSubscript:@"action"];

  v9 = [v5 healthDataSource];
  v10 = [v5 environmentDataSource];
  v11 = [v10 currentDate];
  v25 = 0;
  v12 = [v9 ageWithCurrentDate:v11 error:&v25];
  v13 = v25;

  v14 = MEMORY[0x277CCC320];
  v15 = v12;
  if (v13)
  {
    _HKInitializeLogging();
    v16 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = self;
      v28 = 2112;
      v29 = v13;
      _os_log_error_impl(&dword_269BCF000, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Error fetching age from data source: %@", buf, 0x16u);
    }

    v15 = *MEMORY[0x277CCB7A0];
  }

  [v6 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCB7C0]];
  v17 = [v5 healthDataSource];
  v24 = v13;
  v18 = [v17 biologicalSexWithError:&v24];
  v19 = v24;

  if (v19)
  {
    _HKInitializeLogging();
    v20 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = self;
      v28 = 2112;
      v29 = v19;
      _os_log_error_impl(&dword_269BCF000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Error biological sex from data source: %@", buf, 0x16u);
    }

    [v6 setObject:*MEMORY[0x277CCB800] forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  else
  {
    v21 = HKAnalyticsPropertyValueForBiologicalSex();
    [v6 setObject:v21 forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_notificationType
{
  v2 = [(UNNotificationResponse *)self->_response notification];
  v3 = [v2 request];
  v4 = [v3 content];
  v5 = [v4 categoryIdentifier];

  if ([v5 isEqualToString:@"PossibleSleepApnea"])
  {
    v6 = @"possible sleep apnea";
  }

  else if ([v5 isEqualToString:@"SleepApneaNotificationsRemoteDisabled"])
  {
    v6 = @"remote disabled";
  }

  else if ([v5 isEqualToString:@"SleepApneaNotificationsSeedExpired"])
  {
    v6 = @"seed expired";
  }

  else if ([v5 isEqualToString:@"SleepApneaNotificationsLocalDeviceNoLongerSupported"])
  {
    v6 = @"feature no longer supported on local device";
  }

  else if ([v5 isEqualToString:@"SleepApneaNotificationsActiveRemoteDeviceNoLongerSupported"])
  {
    v6 = @"feature no longer supported on active remote device";
  }

  else if ([v5 isEqualToString:@"SleepApneaNotificationsFeatureIsAvailableAgainAndEnabled"])
  {
    v6 = @"feature is available again and enabled";
  }

  else
  {
    v6 = *MEMORY[0x277CCB800];
  }

  return v6;
}

- (id)_notificationAction
{
  v2 = [(UNNotificationResponse *)self->_response actionIdentifier];
  if ([v2 isEqualToString:*MEMORY[0x277CE20E8]])
  {
    v3 = @"openApp";
  }

  else if ([v2 isEqualToString:*MEMORY[0x277CE20F0]])
  {
    v3 = @"dismiss";
  }

  else if ([v2 isEqualToString:@"SleepApneaNotificationInteractionAnalyticsNotificationActionLearnMore"])
  {
    v3 = @"learnMore";
  }

  else
  {
    v3 = *MEMORY[0x277CCB800];
  }

  return v3;
}

@end