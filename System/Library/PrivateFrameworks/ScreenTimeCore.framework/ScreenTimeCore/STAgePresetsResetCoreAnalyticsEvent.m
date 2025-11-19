@interface STAgePresetsResetCoreAnalyticsEvent
- (NSDictionary)payload;
- (STAgePresetsResetCoreAnalyticsEvent)initWithSessionId:(id)a3;
@end

@implementation STAgePresetsResetCoreAnalyticsEvent

- (STAgePresetsResetCoreAnalyticsEvent)initWithSessionId:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STAgePresetsResetCoreAnalyticsEvent;
  v5 = [(STAgePresetsResetCoreAnalyticsEvent *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    sessionId = v5->_sessionId;
    v5->_sessionId = v6;
  }

  return v5;
}

- (NSDictionary)payload
{
  v3 = objc_opt_new();
  v4 = [(STAgePresetsResetCoreAnalyticsEvent *)self sessionId];
  [v3 setObject:v4 forKeyedSubscript:@"sessionId"];

  return v3;
}

@end