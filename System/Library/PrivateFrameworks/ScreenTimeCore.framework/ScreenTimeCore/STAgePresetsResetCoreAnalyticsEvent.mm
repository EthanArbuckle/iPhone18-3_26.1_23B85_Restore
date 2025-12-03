@interface STAgePresetsResetCoreAnalyticsEvent
- (NSDictionary)payload;
- (STAgePresetsResetCoreAnalyticsEvent)initWithSessionId:(id)id;
@end

@implementation STAgePresetsResetCoreAnalyticsEvent

- (STAgePresetsResetCoreAnalyticsEvent)initWithSessionId:(id)id
{
  idCopy = id;
  v9.receiver = self;
  v9.super_class = STAgePresetsResetCoreAnalyticsEvent;
  v5 = [(STAgePresetsResetCoreAnalyticsEvent *)&v9 init];
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
  sessionId = [(STAgePresetsResetCoreAnalyticsEvent *)self sessionId];
  [v3 setObject:sessionId forKeyedSubscript:@"sessionId"];

  return v3;
}

@end