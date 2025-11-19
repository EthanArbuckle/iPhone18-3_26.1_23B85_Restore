@interface TPSAnalyticsEventNotificationPosted
+ (id)eventWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 remainingNotificationsCount:(id)a6 errorCode:(id)a7;
- (NSNumber)notificationsPosted;
- (TPSAnalyticsEventNotificationPosted)initWithCoder:(id)a3;
- (id)_initWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 remainingNotificationsCount:(id)a6 errorCode:(id)a7;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)persistKeys;
@end

@implementation TPSAnalyticsEventNotificationPosted

- (TPSAnalyticsEventNotificationPosted)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TPSAnalyticsEventNotificationPosted;
  v5 = [(TPSAnalyticsEvent *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seq_num"];
    posted = v5->_posted;
    v5->_posted = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    contentID = v5->_contentID;
    v5->_contentID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error_code"];
    errorCode = v5->_errorCode;
    v5->_errorCode = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remaining"];
    remaining = v5->_remaining;
    v5->_remaining = v16;
  }

  return v5;
}

- (id)_initWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 remainingNotificationsCount:(id)a6 errorCode:(id)a7
{
  v13 = a3;
  v21 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = TPSAnalyticsEventNotificationPosted;
  v17 = [(TPSAnalyticsEvent *)&v22 initWithDate:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contentID, a3);
    objc_storeStrong(&v18->_collectionID, a4);
    objc_storeStrong(&v18->_correlationID, a5);
    objc_storeStrong(&v18->_errorCode, a7);
    objc_storeStrong(&v18->_remaining, a6);
    v19 = [(NSString *)v18->_contentID isEqualToString:@"collection"];
    if (v19)
    {
      LOBYTE(v19) = [(NSString *)v18->_collectionID isEqualToString:@"collection"];
    }

    v18->_landingPage = v19;
  }

  return v18;
}

+ (id)eventWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 remainingNotificationsCount:(id)a6 errorCode:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] _initWithContentID:v16 collectionID:v15 correlationID:v14 remainingNotificationsCount:v13 errorCode:v12];

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = TPSAnalyticsEventNotificationPosted;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v10 encodeWithCoder:v4];
  v5 = [(TPSAnalyticsEventNotificationPosted *)self notificationsPosted:v10.receiver];
  [v4 encodeObject:v5 forKey:@"seq_num"];

  v6 = [(TPSAnalyticsEventNotificationPosted *)self contentID];
  [v4 encodeObject:v6 forKey:@"tip_ID"];

  v7 = [(TPSAnalyticsEventNotificationPosted *)self collectionID];
  [v4 encodeObject:v7 forKey:@"collection_ID"];

  v8 = [(TPSAnalyticsEventNotificationPosted *)self correlationID];
  [v4 encodeObject:v8 forKey:@"tip_correlation_ID"];

  v9 = [(TPSAnalyticsEventNotificationPosted *)self errorCode];
  [v4 encodeObject:v9 forKey:@"error_code"];

  [v4 encodeObject:self->_remaining forKey:@"remaining"];
}

- (NSNumber)notificationsPosted
{
  posted = self->_posted;
  if (!posted)
  {
    v4 = [TPSAnalyticsPersistenceController persistedObjectForKey:@"TPSNotificationCount"];
    v5 = self->_posted;
    self->_posted = v4;

    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[NSNumber intValue](self->_posted, "intValue") + 1}];
    v7 = self->_posted;
    self->_posted = v6;

    [TPSAnalyticsPersistenceController persistObject:self->_posted forKey:@"TPSNotificationCount"];
    posted = self->_posted;
  }

  return posted;
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(TPSAnalyticsEventNotificationPosted *)self notificationsPosted];
  [v3 setObject:v4 forKeyedSubscript:@"seq_num"];

  [v3 setObject:self->_remaining forKeyedSubscript:@"num_until_optout"];
  [v3 setObject:self->_contentID forKeyedSubscript:@"tip_ID"];
  [v3 setObject:self->_collectionID forKeyedSubscript:@"collection_ID"];
  [v3 setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  [v3 setObject:self->_errorCode forKeyedSubscript:@"error_code"];
  v5 = MEMORY[0x1E696AD98];
  v6 = +[TPSCommonDefines sharedInstance];
  v7 = [v5 numberWithInteger:{objc_msgSend(v6, "daysSinceLastMajorVersionUpdate")}];
  [v3 setObject:v7 forKeyedSubscript:@"time_since_os_install"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v8 forKeyedSubscript:@"u65_flag"];

  return v3;
}

- (void)persistKeys
{
  v2 = [(TPSAnalyticsEventNotificationPosted *)self notificationsPosted];
  [TPSAnalyticsPersistenceController persistObject:v2 forKey:@"TPSNotificationCount"];

  v3 = [MEMORY[0x1E695DF00] date];
  [TPSAnalyticsPersistenceController persistObject:v3 forKey:@"TPSLastNotificationTime"];
}

@end