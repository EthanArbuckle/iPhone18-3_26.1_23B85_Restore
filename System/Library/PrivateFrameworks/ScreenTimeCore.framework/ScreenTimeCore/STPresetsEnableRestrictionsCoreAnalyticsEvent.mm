@interface STPresetsEnableRestrictionsCoreAnalyticsEvent
- (NSDictionary)payload;
- (STPresetsEnableRestrictionsCoreAnalyticsEvent)initWithSessionId:(id)id selectionType:(int64_t)type lowerBoundAgeRange:(id)range upperBoundAgeRange:(id)ageRange;
- (id)_stringDescriptionForSelectionType:(int64_t)type;
@end

@implementation STPresetsEnableRestrictionsCoreAnalyticsEvent

- (STPresetsEnableRestrictionsCoreAnalyticsEvent)initWithSessionId:(id)id selectionType:(int64_t)type lowerBoundAgeRange:(id)range upperBoundAgeRange:(id)ageRange
{
  idCopy = id;
  rangeCopy = range;
  ageRangeCopy = ageRange;
  v17.receiver = self;
  v17.super_class = STPresetsEnableRestrictionsCoreAnalyticsEvent;
  v13 = [(STPresetsEnableRestrictionsCoreAnalyticsEvent *)&v17 init];
  if (v13)
  {
    v14 = [idCopy copy];
    sessionId = v13->_sessionId;
    v13->_sessionId = v14;

    v13->_selectionType = type;
    objc_storeStrong(&v13->_lowerBoundAgeRange, range);
    objc_storeStrong(&v13->_upperBoundAgeRange, ageRange);
  }

  return v13;
}

- (NSDictionary)payload
{
  v3 = objc_opt_new();
  sessionId = [(STPresetsEnableRestrictionsCoreAnalyticsEvent *)self sessionId];
  [v3 setObject:sessionId forKeyedSubscript:@"sessionId"];

  v5 = [(STPresetsEnableRestrictionsCoreAnalyticsEvent *)self _stringDescriptionForSelectionType:[(STPresetsEnableRestrictionsCoreAnalyticsEvent *)self selectionType]];
  [v3 setObject:v5 forKeyedSubscript:@"selectionType"];

  lowerBoundAgeRange = [(STPresetsEnableRestrictionsCoreAnalyticsEvent *)self lowerBoundAgeRange];
  [v3 setObject:lowerBoundAgeRange forKeyedSubscript:@"lowerBoundAgeRange"];

  upperBoundAgeRange = [(STPresetsEnableRestrictionsCoreAnalyticsEvent *)self upperBoundAgeRange];
  [v3 setObject:upperBoundAgeRange forKeyedSubscript:@"upperBoundAgeRange"];

  return v3;
}

- (id)_stringDescriptionForSelectionType:(int64_t)type
{
  if (type)
  {
    return @"recommended";
  }

  else
  {
    return @"custom";
  }
}

@end