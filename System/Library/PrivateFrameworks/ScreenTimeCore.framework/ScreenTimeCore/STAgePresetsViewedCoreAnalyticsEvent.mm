@interface STAgePresetsViewedCoreAnalyticsEvent
- (NSDictionary)payload;
- (STAgePresetsViewedCoreAnalyticsEvent)initWithSessionId:(id)id isInitialSetup:(BOOL)setup;
@end

@implementation STAgePresetsViewedCoreAnalyticsEvent

- (STAgePresetsViewedCoreAnalyticsEvent)initWithSessionId:(id)id isInitialSetup:(BOOL)setup
{
  idCopy = id;
  v11.receiver = self;
  v11.super_class = STAgePresetsViewedCoreAnalyticsEvent;
  v7 = [(STAgePresetsViewedCoreAnalyticsEvent *)&v11 init];
  if (v7)
  {
    v8 = [idCopy copy];
    sessionId = v7->_sessionId;
    v7->_sessionId = v8;

    v7->_initialSetup = setup;
  }

  return v7;
}

- (NSDictionary)payload
{
  v3 = objc_opt_new();
  sessionId = [(STAgePresetsViewedCoreAnalyticsEvent *)self sessionId];
  [v3 setObject:sessionId forKeyedSubscript:@"sessionId"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[STAgePresetsViewedCoreAnalyticsEvent initialSetup](self, "initialSetup")}];
  [v3 setObject:v5 forKeyedSubscript:@"initialSetup"];

  return v3;
}

@end