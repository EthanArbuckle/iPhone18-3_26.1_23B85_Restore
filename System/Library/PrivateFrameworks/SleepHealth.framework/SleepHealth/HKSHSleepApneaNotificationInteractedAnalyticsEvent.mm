@interface HKSHSleepApneaNotificationInteractedAnalyticsEvent
- (HKSHSleepApneaNotificationInteractedAnalyticsEvent)initWithNotificationResponse:(id)response;
- (id)_notificationAction;
- (id)_notificationType;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HKSHSleepApneaNotificationInteractedAnalyticsEvent

- (HKSHSleepApneaNotificationInteractedAnalyticsEvent)initWithNotificationResponse:(id)response
{
  responseCopy = response;
  v9.receiver = self;
  v9.super_class = HKSHSleepApneaNotificationInteractedAnalyticsEvent;
  v6 = [(HKSHSleepApneaNotificationInteractedAnalyticsEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_response, response);
  }

  return v7;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v6 setObject:@"true" forKeyedSubscript:@"areHealthNotificationsAuthorized"];
  _notificationType = [(HKSHSleepApneaNotificationInteractedAnalyticsEvent *)self _notificationType];
  [v6 setObject:_notificationType forKeyedSubscript:@"type"];

  _notificationAction = [(HKSHSleepApneaNotificationInteractedAnalyticsEvent *)self _notificationAction];
  [v6 setObject:_notificationAction forKeyedSubscript:@"action"];

  healthDataSource = [sourceCopy healthDataSource];
  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];
  v25 = 0;
  v12 = [healthDataSource ageWithCurrentDate:currentDate error:&v25];
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
      selfCopy2 = self;
      v28 = 2112;
      v29 = v13;
      _os_log_error_impl(&dword_269BCF000, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Error fetching age from data source: %@", buf, 0x16u);
    }

    v15 = *MEMORY[0x277CCB7A0];
  }

  [v6 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCB7C0]];
  healthDataSource2 = [sourceCopy healthDataSource];
  v24 = v13;
  v18 = [healthDataSource2 biologicalSexWithError:&v24];
  v19 = v24;

  if (v19)
  {
    _HKInitializeLogging();
    v20 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
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
  notification = [(UNNotificationResponse *)self->_response notification];
  request = [notification request];
  content = [request content];
  categoryIdentifier = [content categoryIdentifier];

  if ([categoryIdentifier isEqualToString:@"PossibleSleepApnea"])
  {
    v6 = @"possible sleep apnea";
  }

  else if ([categoryIdentifier isEqualToString:@"SleepApneaNotificationsRemoteDisabled"])
  {
    v6 = @"remote disabled";
  }

  else if ([categoryIdentifier isEqualToString:@"SleepApneaNotificationsSeedExpired"])
  {
    v6 = @"seed expired";
  }

  else if ([categoryIdentifier isEqualToString:@"SleepApneaNotificationsLocalDeviceNoLongerSupported"])
  {
    v6 = @"feature no longer supported on local device";
  }

  else if ([categoryIdentifier isEqualToString:@"SleepApneaNotificationsActiveRemoteDeviceNoLongerSupported"])
  {
    v6 = @"feature no longer supported on active remote device";
  }

  else if ([categoryIdentifier isEqualToString:@"SleepApneaNotificationsFeatureIsAvailableAgainAndEnabled"])
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
  actionIdentifier = [(UNNotificationResponse *)self->_response actionIdentifier];
  if ([actionIdentifier isEqualToString:*MEMORY[0x277CE20E8]])
  {
    v3 = @"openApp";
  }

  else if ([actionIdentifier isEqualToString:*MEMORY[0x277CE20F0]])
  {
    v3 = @"dismiss";
  }

  else if ([actionIdentifier isEqualToString:@"SleepApneaNotificationInteractionAnalyticsNotificationActionLearnMore"])
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