@interface STPresetsChooseAgeTappedCoreAnalyticsEvent
- (NSDictionary)payload;
- (STPresetsChooseAgeTappedCoreAnalyticsEvent)initWithSessionId:(id)id;
@end

@implementation STPresetsChooseAgeTappedCoreAnalyticsEvent

- (STPresetsChooseAgeTappedCoreAnalyticsEvent)initWithSessionId:(id)id
{
  idCopy = id;
  v9.receiver = self;
  v9.super_class = STPresetsChooseAgeTappedCoreAnalyticsEvent;
  v5 = [(STPresetsChooseAgeTappedCoreAnalyticsEvent *)&v9 init];
  if (v5)
  {
    v6 = [idCopy copy];
    sessionId = v5->_sessionId;
    v5->_sessionId = v6;
  }

  return v5;
}

- (NSDictionary)payload
{
  v3 = objc_opt_new();
  sessionId = [(STPresetsChooseAgeTappedCoreAnalyticsEvent *)self sessionId];
  [v3 setObject:sessionId forKeyedSubscript:@"sessionId"];

  return v3;
}

@end