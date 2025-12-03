@interface TPSAnalyticsEventAppLaunched
+ (id)_currentSessionEvents;
+ (id)_initialSessionEvent;
+ (id)_latestSessionEvent;
+ (id)eventWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID launchType:(id)type;
+ (id)firstLaunchEvent;
+ (id)lastRecordedLaunchType;
+ (void)appSessionEndedWithType:(id)type;
- (TPSAnalyticsEventAppLaunched)initWithCoder:(id)coder;
- (id)_initFirstLaunchEvent;
- (id)_initWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID launchType:(id)type;
- (id)mutableAnalyticsEventRepresentation;
- (id)userTypeString;
- (void)_aggregateLog;
- (void)_updateLaunchCount;
- (void)encodeWithCoder:(id)coder;
- (void)log;
@end

@implementation TPSAnalyticsEventAppLaunched

- (TPSAnalyticsEventAppLaunched)initWithCoder:(id)coder
{
  v24[7] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = TPSAnalyticsEventAppLaunched;
  v5 = [(TPSAnalyticsEvent *)&v23 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"user_type"];
    userType = v5->_userType;
    v5->_userType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launch_src"];
    launchType = v5->_launchType;
    v5->_launchType = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_ID"];
    contentID = v5->_contentID;
    v5->_contentID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collection_ID"];
    collectionID = v5->_collectionID;
    v5->_collectionID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tip_correlation_ID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seq_num"];
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
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"session_reset"];
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
  userType = [v2 userType];

  if (userType > 2)
  {
    return @"undefined";
  }

  else
  {
    return off_1E8101320[userType];
  }
}

- (id)_initWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID launchType:(id)type
{
  dCopy = d;
  iDCopy = iD;
  correlationIDCopy = correlationID;
  typeCopy = type;
  v19.receiver = self;
  v19.super_class = TPSAnalyticsEventAppLaunched;
  v14 = [(TPSAnalyticsEvent *)&v19 initWithDate:0];
  v15 = v14;
  if (v14)
  {
    userTypeString = [(TPSAnalyticsEventAppLaunched *)v14 userTypeString];
    userType = v15->_userType;
    v15->_userType = userTypeString;

    objc_storeStrong(&v15->_launchType, type);
    if (dCopy)
    {
      if (iDCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      dCopy = @"landing_page";
      if (iDCopy)
      {
LABEL_4:
        if (correlationIDCopy)
        {
LABEL_5:
          objc_storeStrong(&v15->_contentID, dCopy);
          objc_storeStrong(&v15->_collectionID, iDCopy);
          objc_storeStrong(&v15->_correlationID, correlationIDCopy);
          goto LABEL_6;
        }

LABEL_9:
        correlationIDCopy = @"landing_page";
        goto LABEL_5;
      }
    }

    iDCopy = @"landing_page";
    if (correlationIDCopy)
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
    userType = [(TPSAnalyticsEventAppLaunched *)v2 userType];
    userType = v2->_userType;
    v2->_userType = userType;

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

+ (id)eventWithContentID:(id)d collectionID:(id)iD correlationID:(id)correlationID launchType:(id)type
{
  typeCopy = type;
  correlationIDCopy = correlationID;
  iDCopy = iD;
  dCopy = d;
  v14 = [[self alloc] _initWithContentID:dCopy collectionID:iDCopy correlationID:correlationIDCopy launchType:typeCopy];

  return v14;
}

+ (id)firstLaunchEvent
{
  _initFirstLaunchEvent = [[self alloc] _initFirstLaunchEvent];

  return _initFirstLaunchEvent;
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

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TPSAnalyticsEventAppLaunched;
  coderCopy = coder;
  [(TPSAnalyticsEvent *)&v6 encodeWithCoder:coderCopy];
  [(TPSAnalyticsEventAppLaunched *)self _updateLaunchCount:v6.receiver];
  [coderCopy encodeObject:self->_userType forKey:@"user_type"];
  [coderCopy encodeObject:self->_launchType forKey:@"launch_src"];
  [coderCopy encodeObject:self->_contentID forKey:@"tip_ID"];
  [coderCopy encodeObject:self->_collectionID forKey:@"collection_ID"];
  [coderCopy encodeObject:self->_correlationID forKey:@"tip_correlation_ID"];
  [coderCopy encodeObject:self->_launchNumber forKey:@"seq_num"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_needsSessionReset];
  [coderCopy encodeObject:v5 forKey:@"session_reset"];
}

- (id)mutableAnalyticsEventRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_userType forKeyedSubscript:@"user_type"];
  [dictionary setObject:self->_launchNumber forKeyedSubscript:@"seq_num"];
  [dictionary setObject:self->_launchType forKeyedSubscript:@"launch_src"];
  [dictionary setObject:self->_contentID forKeyedSubscript:@"tip_ID"];
  [dictionary setObject:self->_collectionID forKeyedSubscript:@"collection_ID"];
  [dictionary setObject:self->_correlationID forKeyedSubscript:@"tip_correlation_ID"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{+[TPSCommonDefines isSeniorUser](TPSCommonDefines, "isSeniorUser")}];
  [dictionary setObject:v4 forKeyedSubscript:@"u65_flag"];

  return dictionary;
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
  _currentSessionEvents = [self _currentSessionEvents];
  firstObject = [_currentSessionEvents firstObject];

  return firstObject;
}

+ (id)_latestSessionEvent
{
  _currentSessionEvents = [self _currentSessionEvents];
  lastObject = [_currentSessionEvents lastObject];

  return lastObject;
}

- (void)log
{
  _currentSessionEvents = [objc_opt_class() _currentSessionEvents];
  [_currentSessionEvents addObject:self];
  _initialSessionEvent = [objc_opt_class() _initialSessionEvent];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:_initialSessionEvent selector:sel__aggregateLog object:0];
  [_initialSessionEvent performSelector:sel__aggregateLog withObject:0 afterDelay:1.0];
}

+ (void)appSessionEndedWithType:(id)type
{
  v5 = [TPSAnalyticsEventAppLaunched eventWithContentID:0 collectionID:0 correlationID:0 launchType:type];
  _currentSessionEvents = [objc_opt_class() _currentSessionEvents];
  [_currentSessionEvents addObject:v5];
  _initialSessionEvent = [objc_opt_class() _initialSessionEvent];
  [_initialSessionEvent _aggregateLog];
}

- (void)_aggregateLog
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__aggregateLog object:0];
  _currentSessionEvents = [objc_opt_class() _currentSessionEvents];
  lastObject = [_currentSessionEvents lastObject];

  launchType = [lastObject launchType];
  _currentSessionEvents2 = [objc_opt_class() _currentSessionEvents];
  [_currentSessionEvents2 removeAllObjects];

  if (launchType != @"background" && launchType != @"terminated")
  {
    v5 = +[TPSAnalyticsEventController sharedInstance];
    [v5 logAnalyticsEvent:lastObject];
  }
}

+ (id)lastRecordedLaunchType
{
  _latestSessionEvent = [self _latestSessionEvent];
  launchType = [_latestSessionEvent launchType];

  return launchType;
}

@end