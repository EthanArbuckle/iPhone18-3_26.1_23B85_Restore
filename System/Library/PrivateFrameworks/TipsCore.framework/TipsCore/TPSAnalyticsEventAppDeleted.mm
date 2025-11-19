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
    v3 = [MEMORY[0x1E695DF00] date];
    [v3 timeIntervalSinceDate:v2];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(TPSAnalyticsEventAppDeleted *)self appLaunches];
  [v3 setObject:v4 forKeyedSubscript:@"launches_count"];

  v5 = [(TPSAnalyticsEventAppDeleted *)self tipViewTotal];
  [v3 setObject:v5 forKeyedSubscript:@"content_views"];

  v6 = [(TPSAnalyticsEventAppDeleted *)self desiredOutcomeTotal];
  [v3 setObject:v6 forKeyedSubscript:@"desired_outcome_count"];

  v7 = [(TPSAnalyticsEventAppDeleted *)self notificationsPosted];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &unk_1F3F41DB8;
  }

  [v3 setObject:v9 forKeyedSubscript:@"notifications_count"];

  v10 = MEMORY[0x1E696AD98];
  v11 = +[TPSCommonDefines sharedInstance];
  v12 = [v10 numberWithInteger:{objc_msgSend(v11, "daysSinceLastMajorVersionUpdate")}];
  [v3 setObject:v12 forKeyedSubscript:@"time_since_os_install"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v13 forKeyedSubscript:@"u65_flag"];

  v14 = [(TPSAnalyticsEventAppDeleted *)self notificationsPosted];
  LODWORD(v11) = [v14 intValue];

  if (v11 >= 1)
  {
    v15 = MEMORY[0x1E696AD98];
    [(TPSAnalyticsEventAppDeleted *)self timeSinceLastNotification];
    v16 = [v15 numberWithDouble:?];
    [v3 setObject:v16 forKeyedSubscript:@"time_since_last_notification"];
  }

  return v3;
}

+ (id)event
{
  v2 = [[a1 alloc] initWithDate:0];

  return v2;
}

@end