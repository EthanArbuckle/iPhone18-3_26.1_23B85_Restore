@interface TPSAnalyticsEventAppLaunched
+ (id)_currentSessionEvents;
+ (id)_initialSessionEvent;
+ (id)_latestSessionEvent;
+ (id)eventWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 launchType:(id)a6;
+ (id)firstLaunchEvent;
+ (id)lastRecordedLaunchType;
+ (void)appSessionEndedWithType:(id)a3;
- (TPSAnalyticsEventAppLaunched)initWithCoder:(id)a3;
- (id)_initFirstLaunchEvent;
- (id)_initWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 launchType:(id)a6;
- (id)mutableAnalyticsEventRepresentation;
- (id)userTypeString;
- (void)_aggregateLog;
- (void)_updateLaunchCount;
- (void)encodeWithCoder:(id)a3;
- (void)log;
@end

@implementation TPSAnalyticsEventAppLaunched

- (TPSAnalyticsEventAppLaunched)initWithCoder:(id)a3
{
  v24[7] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = TPSAnalyticsEventAppLaunched;
  v5 = [(TPSAnalyticsEvent *)&v23 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"user_type"];
    userType = v5->_userType;
    v5->_userType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"launch_src"];
    launchType = v5->_launchType;
    v5->_launchType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    contentID = v5->_contentID;
    v5->_contentID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seq_num"];
    launchNumber = v5->_launchNumber;
    v5->_launchNumber = v16;

    v24[0] = @"quick_action";
    v24[1] = @"universal_link";
    v24[2] = @"springboard";
    v24[3] = @"foreground";
    v24[4] = @"background";
    v24[5] = @"terminated";
    v24[6] = @"carousel";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:7];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"session_reset"];
    if ([v19 BOOLValue])
    {
      v20 = [v18 containsObject:v5->_launchType];

      if (v20)
      {
        +[TPSAnalyticsEventContentViewed resetSessionViewNumber];
      }
    }

    else
    {
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)userTypeString
{
  v2 = +[TPSCommonDefines sharedInstance];
  v3 = [v2 userType];

  if (v3 > 2)
  {
    return @"undefined";
  }

  else
  {
    return off_1E8101320[v3];
  }
}

- (id)_initWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 launchType:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = TPSAnalyticsEventAppLaunched;
  v14 = [(TPSAnalyticsEvent *)&v19 initWithDate:0];
  v15 = v14;
  if (v14)
  {
    v16 = [(TPSAnalyticsEventAppLaunched *)v14 userTypeString];
    userType = v15->_userType;
    v15->_userType = v16;

    objc_storeStrong(&v15->_launchType, a6);
    if (v10)
    {
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = @"landing_page";
      if (v11)
      {
LABEL_4:
        if (v12)
        {
LABEL_5:
          objc_storeStrong(&v15->_contentID, v10);
          objc_storeStrong(&v15->_collectionID, v11);
          objc_storeStrong(&v15->_correlationID, v12);
          goto LABEL_6;
        }

LABEL_9:
        v12 = @"landing_page";
        goto LABEL_5;
      }
    }

    v11 = @"landing_page";
    if (v12)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_6:

  return v15;
}

- (id)_initFirstLaunchEvent
{
  v8.receiver = self;
  v8.super_class = TPSAnalyticsEventAppLaunched;
  v2 = [(TPSAnalyticsEvent *)&v8 initWithDate:0];
  if (v2)
  {
    [objc_opt_class() resetLaunchNumber];
    v3 = [(TPSAnalyticsEventAppLaunched *)v2 userType];
    userType = v2->_userType;
    v2->_userType = v3;

    launchType = v2->_launchType;
    v2->_launchType = @"first_launch";

    objc_storeStrong(&v2->_contentID, @"landing_page");
    objc_storeStrong(&v2->_collectionID, @"landing_page");
    objc_storeStrong(&v2->_correlationID, @"landing_page");
    launchNumber = v2->_launchNumber;
    v2->_launchNumber = &unk_1F3F41B90;
  }

  return v2;
}

+ (id)eventWithContentID:(id)a3 collectionID:(id)a4 correlationID:(id)a5 launchType:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] _initWithContentID:v13 collectionID:v12 correlationID:v11 launchType:v10];

  return v14;
}

+ (id)firstLaunchEvent
{
  v2 = [[a1 alloc] _initFirstLaunchEvent];

  return v2;
}

- (void)_updateLaunchCount
{
  v3 = [TPSAnalyticsPersistenceController persistedObjectForKey:@"TPSAppLaunchCount"];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "intValue") + 1}];
  }

  else
  {
    v5 = &unk_1F3F41B90;
  }

  [TPSAnalyticsPersistenceController persistObject:v5 forKey:@"TPSAppLaunchCount"];
  launchNumber = self->_launchNumber;
  self->_launchNumber = v5;
  v7 = v5;

  v8 = +[TPSAnalyticsEventContentViewed updateSessionViewNumber];
  self->_needsSessionReset = v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TPSAnalyticsEventAppLaunched;
  v4 = a3;
  [(TPSAnalyticsEvent *)&v6 encodeWithCoder:v4];
  [(TPSAnalyticsEventAppLaunched *)self _updateLaunchCount:v6.receiver];
  [v4 encodeObject:self->_userType forKey:@"user_type"];
  [v4 encodeObject:self->_launchType forKey:@"launch_src"];
  [v4 encodeObject:self->_contentID forKey:@"tip_ID"];
  [v4 encodeObject:self->_collectionID forKey:@"collection_ID"];
  [v4 encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [v4 encodeObject:self->_launchNumber forKey:@"seq_num"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_needsSessionReset];
  [v4 encodeObject:v5 forKey:@"session_reset"];
}

- (id)mutableAnalyticsEventRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_userType forKeyedSubscript:@"user_type"];
  [v3 setObject:self->_launchNumber forKeyedSubscript:@"seq_num"];
  [v3 setObject:self->_launchType forKeyedSubscript:@"launch_src"];
  [v3 setObject:self->_contentID forKeyedSubscript:@"tip_ID"];
  [v3 setObject:self->_collectionID forKeyedSubscript:@"collection_ID"];
  [v3 setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [v3 setObject:v4 forKeyedSubscript:@"u65_flag"];

  return v3;
}

+ (id)_currentSessionEvents
{
  if (_currentSessionEvents_predicate != -1)
  {
    +[TPSAnalyticsEventAppLaunched _currentSessionEvents];
  }

  v3 = _currentSessionEvents_gCurrentSessionEvents;

  return v3;
}

uint64_t __53__TPSAnalyticsEventAppLaunched__currentSessionEvents__block_invoke()
{
  _currentSessionEvents_gCurrentSessionEvents = objc_alloc_init(MEMORY[0x1E695DF70]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_initialSessionEvent
{
  v2 = [a1 _currentSessionEvents];
  v3 = [v2 firstObject];

  return v3;
}

+ (id)_latestSessionEvent
{
  v2 = [a1 _currentSessionEvents];
  v3 = [v2 lastObject];

  return v3;
}

- (void)log
{
  v4 = [objc_opt_class() _currentSessionEvents];
  [v4 addObject:self];
  v3 = [objc_opt_class() _initialSessionEvent];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:v3 selector:sel__aggregateLog object:0];
  [v3 performSelector:sel__aggregateLog withObject:0 afterDelay:1.0];
}

+ (void)appSessionEndedWithType:(id)a3
{
  v5 = [TPSAnalyticsEventAppLaunched eventWithContentID:0 collectionID:0 correlationID:0 launchType:a3];
  v3 = [objc_opt_class() _currentSessionEvents];
  [v3 addObject:v5];
  v4 = [objc_opt_class() _initialSessionEvent];
  [v4 _aggregateLog];
}

- (void)_aggregateLog
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__aggregateLog object:0];
  v2 = [objc_opt_class() _currentSessionEvents];
  v6 = [v2 lastObject];

  v3 = [v6 launchType];
  v4 = [objc_opt_class() _currentSessionEvents];
  [v4 removeAllObjects];

  if (v3 != @"background" && v3 != @"terminated")
  {
    v5 = +[TPSAnalyticsEventController sharedInstance];
    [v5 logAnalyticsEvent:v6];
  }
}

+ (id)lastRecordedLaunchType
{
  v2 = [a1 _latestSessionEvent];
  v3 = [v2 launchType];

  return v3;
}

@end