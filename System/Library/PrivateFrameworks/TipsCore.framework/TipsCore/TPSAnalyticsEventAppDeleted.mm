@interface TPSAnalyticsEventAppDeleted
+ (id)event;
- (double)timeSinceLastNotification;
- (id)mutableAnalyticsEventRepresentation;
@end

@implementation TPSAnalyticsEventAppDeleted

- (double)timeSinceLastNotification
{
  v2 = [TPSAnalyticsPersistenceController persistedObjectForKey:@"TPSLastNotificationTime"];
  if (v2)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:v2];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  appLaunches = [(TPSAnalyticsEventAppDeleted *)self appLaunches];
  [dictionary setObject:appLaunches forKeyedSubscript:@"launches_count"];

  tipViewTotal = [(TPSAnalyticsEventAppDeleted *)self tipViewTotal];
  [dictionary setObject:tipViewTotal forKeyedSubscript:@"content_views"];

  desiredOutcomeTotal = [(TPSAnalyticsEventAppDeleted *)self desiredOutcomeTotal];
  [dictionary setObject:desiredOutcomeTotal forKeyedSubscript:@"desired_outcome_count"];

  notificationsPosted = [(TPSAnalyticsEventAppDeleted *)self notificationsPosted];
  v8 = notificationsPosted;
  if (notificationsPosted)
  {
    v9 = notificationsPosted;
  }

  else
  {
    v9 = &unk_1F3F41DB8;
  }

  [dictionary setObject:v9 forKeyedSubscript:@"notifications_count"];

  v10 = MEMORY[0x1E696AD98];
  v11 = +[TPSCommonDefines sharedInstance];
  v12 = [v10 numberWithInteger:{objc_msgSend(v11, "daysSinceLastMajorVersionUpdate")}];
  [dictionary setObject:v12 forKeyedSubscript:@"time_since_os_install"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [dictionary setObject:v13 forKeyedSubscript:@"u65_flag"];

  notificationsPosted2 = [(TPSAnalyticsEventAppDeleted *)self notificationsPosted];
  LODWORD(v11) = [notificationsPosted2 intValue];

  if (v11 >= 1)
  {
    v15 = MEMORY[0x1E696AD98];
    [(TPSAnalyticsEventAppDeleted *)self timeSinceLastNotification];
    v16 = [v15 numberWithDouble:?];
    [dictionary setObject:v16 forKeyedSubscript:@"time_since_last_notification"];
  }

  return dictionary;
}

+ (id)event
{
  v2 = [[self alloc] initWithDate:0];

  return v2;
}

@end