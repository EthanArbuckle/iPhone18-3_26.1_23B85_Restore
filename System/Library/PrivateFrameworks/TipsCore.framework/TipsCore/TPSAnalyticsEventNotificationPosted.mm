@interface TPSAnalyticsEventNotificationPosted
+ (id)eventWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID remainingNotificationsCount:(id)count errorCode:(id)code;
- (NSNumber)notificationsPosted;
- (TPSAnalyticsEventNotificationPosted)initWithCoder:(id)coder;
- (id)_initWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID remainingNotificationsCount:(id)count errorCode:(id)code;
- (id)mutableAnalyticsEventRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)persistKeys;
@end

@implementation TPSAnalyticsEventNotificationPosted

- (TPSAnalyticsEventNotificationPosted)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = TPSAnalyticsEventNotificationPosted;
  v5 = [(TPSAnalyticsEvent *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seq_num"];
    posted = v5->_posted;
    v5->_posted = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    contentID = v5->_contentID;
    v5->_contentID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error_code"];
    errorCode = v5->_errorCode;
    v5->_errorCode = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remaining"];
    remaining = v5->_remaining;
    v5->_remaining = v16;
  }

  return v5;
}

- (id)_initWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID remainingNotificationsCount:(id)count errorCode:(id)code
{
  dCopy = d;
  iDCopy = iD;
  correlationIDCopy = correlationID;
  countCopy = count;
  codeCopy = code;
  v22.receiver = self;
  v22.super_class = TPSAnalyticsEventNotificationPosted;
  v17 = [(TPSAnalyticsEvent *)&v22 initWithDate:0];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contentID, d);
    objc_storeStrong(&v18->_collectionID, iD);
    objc_storeStrong(&v18->_correlationID, correlationID);
    objc_storeStrong(&v18->_errorCode, code);
    objc_storeStrong(&v18->_remaining, count);
    v19 = [(NSString *)v18->_contentID isEqualToString:@"collection"];
    if (v19)
    {
      LOBYTE(v19) = [(NSString *)v18->_collectionID isEqualToString:@"collection"];
    }

    v18->_landingPage = v19;
  }

  return v18;
}

+ (id)eventWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID remainingNotificationsCount:(id)count errorCode:(id)code
{
  codeCopy = code;
  countCopy = count;
  correlationIDCopy = correlationID;
  iDCopy = iD;
  dCopy = d;
  v17 = [[self alloc] _initWithContentID:dCopy collectionID:iDCopy correlationID:correlationIDCopy remainingNotificationsCount:countCopy errorCode:codeCopy];

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = TPSAnalyticsEventNotificationPosted;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v10 encodeWithCoder:coderCopy];
  v5 = [(TPSAnalyticsEventNotificationPosted *)self notificationsPosted:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"seq_num"];

  contentID = [(TPSAnalyticsEventNotificationPosted *)self contentID];
  [coderCopy encodeObject:contentID forKey:@"tip_ID"];

  collectionID = [(TPSAnalyticsEventNotificationPosted *)self collectionID];
  [coderCopy encodeObject:collectionID forKey:@"collection_ID"];

  correlationID = [(TPSAnalyticsEventNotificationPosted *)self correlationID];
  [coderCopy encodeObject:correlationID forKey:@"tip_correlation_ID"];

  errorCode = [(TPSAnalyticsEventNotificationPosted *)self errorCode];
  [coderCopy encodeObject:errorCode forKey:@"error_code"];

  [coderCopy encodeObject:self->_remaining forKey:@"remaining"];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  notificationsPosted = [(TPSAnalyticsEventNotificationPosted *)self notificationsPosted];
  [dictionary setObject:notificationsPosted forKeyedSubscript:@"seq_num"];

  [dictionary setObject:self->_remaining forKeyedSubscript:@"num_until_optout"];
  [dictionary setObject:self->_contentID forKeyedSubscript:@"tip_ID"];
  [dictionary setObject:self->_collectionID forKeyedSubscript:@"collection_ID"];
  [dictionary setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  [dictionary setObject:self->_errorCode forKeyedSubscript:@"error_code"];
  v5 = MEMORY[0x1E696AD98];
  v6 = +[TPSCommonDefines sharedInstance];
  v7 = [v5 numberWithInteger:{objc_msgSend(v6, "daysSinceLastMajorVersionUpdate")}];
  [dictionary setObject:v7 forKeyedSubscript:@"time_since_os_install"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [dictionary setObject:v8 forKeyedSubscript:@"u65_flag"];

  return dictionary;
}

- (void)persistKeys
{
  notificationsPosted = [(TPSAnalyticsEventNotificationPosted *)self notificationsPosted];
  [TPSAnalyticsPersistenceController persistObject:notificationsPosted forKey:@"TPSNotificationCount"];

  date = [MEMORY[0x1E695DF00] date];
  [TPSAnalyticsPersistenceController persistObject:date forKey:@"TPSLastNotificationTime"];
}

@end