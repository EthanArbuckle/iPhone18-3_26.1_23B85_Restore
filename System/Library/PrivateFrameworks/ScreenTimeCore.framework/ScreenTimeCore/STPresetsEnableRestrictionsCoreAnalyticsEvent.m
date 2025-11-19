@interface STPresetsEnableRestrictionsCoreAnalyticsEvent
- (NSDictionary)payload;
- (STPresetsEnableRestrictionsCoreAnalyticsEvent)initWithSessionId:(id)a3 selectionType:(int64_t)a4 lowerBoundAgeRange:(id)a5 upperBoundAgeRange:(id)a6;
- (id)_stringDescriptionForSelectionType:(int64_t)a3;
@end

@implementation STPresetsEnableRestrictionsCoreAnalyticsEvent

- (STPresetsEnableRestrictionsCoreAnalyticsEvent)initWithSessionId:(id)a3 selectionType:(int64_t)a4 lowerBoundAgeRange:(id)a5 upperBoundAgeRange:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = STPresetsEnableRestrictionsCoreAnalyticsEvent;
  v13 = [(STPresetsEnableRestrictionsCoreAnalyticsEvent *)&v17 init];
  if (v13)
  {
    v14 = [v10 copy];
    sessionId = v13->_sessionId;
    v13->_sessionId = v14;

    v13->_selectionType = a4;
    objc_storeStrong(&v13->_lowerBoundAgeRange, a5);
    objc_storeStrong(&v13->_upperBoundAgeRange, a6);
  }

  return v13;
}

- (NSDictionary)payload
{
  v3 = objc_opt_new();
  v4 = [(STPresetsEnableRestrictionsCoreAnalyticsEvent *)self sessionId];
  [v3 setObject:v4 forKeyedSubscript:@"sessionId"];

  v5 = [(STPresetsEnableRestrictionsCoreAnalyticsEvent *)self _stringDescriptionForSelectionType:[(STPresetsEnableRestrictionsCoreAnalyticsEvent *)self selectionType]];
  [v3 setObject:v5 forKeyedSubscript:@"selectionType"];

  v6 = [(STPresetsEnableRestrictionsCoreAnalyticsEvent *)self lowerBoundAgeRange];
  [v3 setObject:v6 forKeyedSubscript:@"lowerBoundAgeRange"];

  v7 = [(STPresetsEnableRestrictionsCoreAnalyticsEvent *)self upperBoundAgeRange];
  [v3 setObject:v7 forKeyedSubscript:@"upperBoundAgeRange"];

  return v3;
}

- (id)_stringDescriptionForSelectionType:(int64_t)a3
{
  if (a3)
  {
    return @"recommended";
  }

  else
  {
    return @"custom";
  }
}

@end