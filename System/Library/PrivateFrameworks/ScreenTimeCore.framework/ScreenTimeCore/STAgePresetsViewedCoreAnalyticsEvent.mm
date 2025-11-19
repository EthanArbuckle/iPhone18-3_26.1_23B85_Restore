@interface STAgePresetsViewedCoreAnalyticsEvent
- (NSDictionary)payload;
- (STAgePresetsViewedCoreAnalyticsEvent)initWithSessionId:(id)a3 isInitialSetup:(BOOL)a4;
@end

@implementation STAgePresetsViewedCoreAnalyticsEvent

- (STAgePresetsViewedCoreAnalyticsEvent)initWithSessionId:(id)a3 isInitialSetup:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = STAgePresetsViewedCoreAnalyticsEvent;
  v7 = [(STAgePresetsViewedCoreAnalyticsEvent *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    sessionId = v7->_sessionId;
    v7->_sessionId = v8;

    v7->_initialSetup = a4;
  }

  return v7;
}

- (NSDictionary)payload
{
  v3 = objc_opt_new();
  v4 = [(STAgePresetsViewedCoreAnalyticsEvent *)self sessionId];
  [v3 setObject:v4 forKeyedSubscript:@"sessionId"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[STAgePresetsViewedCoreAnalyticsEvent initialSetup](self, "initialSetup")}];
  [v3 setObject:v5 forKeyedSubscript:@"initialSetup"];

  return v3;
}

@end