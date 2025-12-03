@interface STPresetsAgeSelectedCoreAnalyticsEvent
- (NSDictionary)payload;
- (STPresetsAgeSelectedCoreAnalyticsEvent)initWithSessionId:(id)id lowerBoundAgeRange:(int64_t)range upperBoundAgeRange:(int64_t)ageRange;
@end

@implementation STPresetsAgeSelectedCoreAnalyticsEvent

- (STPresetsAgeSelectedCoreAnalyticsEvent)initWithSessionId:(id)id lowerBoundAgeRange:(int64_t)range upperBoundAgeRange:(int64_t)ageRange
{
  idCopy = id;
  v13.receiver = self;
  v13.super_class = STPresetsAgeSelectedCoreAnalyticsEvent;
  v9 = [(STPresetsAgeSelectedCoreAnalyticsEvent *)&v13 init];
  if (v9)
  {
    v10 = [idCopy copy];
    sessionId = v9->_sessionId;
    v9->_sessionId = v10;

    v9->_lowerBoundAgeRange = range;
    v9->_upperBoundAgeRange = ageRange;
  }

  return v9;
}

- (NSDictionary)payload
{
  v3 = objc_opt_new();
  sessionId = [(STPresetsAgeSelectedCoreAnalyticsEvent *)self sessionId];
  [v3 setObject:sessionId forKeyedSubscript:@"sessionId"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STPresetsAgeSelectedCoreAnalyticsEvent lowerBoundAgeRange](self, "lowerBoundAgeRange")}];
  [v3 setObject:v5 forKeyedSubscript:@"lowerBoundAgeRange"];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STPresetsAgeSelectedCoreAnalyticsEvent upperBoundAgeRange](self, "upperBoundAgeRange")}];
  [v3 setObject:v6 forKeyedSubscript:@"upperBoundAgeRange"];

  return v3;
}

@end