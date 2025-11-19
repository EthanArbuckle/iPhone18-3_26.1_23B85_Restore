@interface STPresetsAgeSelectedCoreAnalyticsEvent
- (NSDictionary)payload;
- (STPresetsAgeSelectedCoreAnalyticsEvent)initWithSessionId:(id)a3 lowerBoundAgeRange:(int64_t)a4 upperBoundAgeRange:(int64_t)a5;
@end

@implementation STPresetsAgeSelectedCoreAnalyticsEvent

- (STPresetsAgeSelectedCoreAnalyticsEvent)initWithSessionId:(id)a3 lowerBoundAgeRange:(int64_t)a4 upperBoundAgeRange:(int64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = STPresetsAgeSelectedCoreAnalyticsEvent;
  v9 = [(STPresetsAgeSelectedCoreAnalyticsEvent *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    sessionId = v9->_sessionId;
    v9->_sessionId = v10;

    v9->_lowerBoundAgeRange = a4;
    v9->_upperBoundAgeRange = a5;
  }

  return v9;
}

- (NSDictionary)payload
{
  v3 = objc_opt_new();
  v4 = [(STPresetsAgeSelectedCoreAnalyticsEvent *)self sessionId];
  [v3 setObject:v4 forKeyedSubscript:@"sessionId"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STPresetsAgeSelectedCoreAnalyticsEvent lowerBoundAgeRange](self, "lowerBoundAgeRange")}];
  [v3 setObject:v5 forKeyedSubscript:@"lowerBoundAgeRange"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STPresetsAgeSelectedCoreAnalyticsEvent upperBoundAgeRange](self, "upperBoundAgeRange")}];
  [v3 setObject:v6 forKeyedSubscript:@"upperBoundAgeRange"];

  return v3;
}

@end