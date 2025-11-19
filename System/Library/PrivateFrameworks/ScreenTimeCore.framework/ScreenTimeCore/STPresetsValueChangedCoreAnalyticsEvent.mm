@interface STPresetsValueChangedCoreAnalyticsEvent
- (NSDictionary)payload;
- (STPresetsValueChangedCoreAnalyticsEvent)initWithSessionId:(id)a3 recommendedPresetId:(id)a4 fieldName:(id)a5 recommendedValue:(id)a6 selectedValue:(id)a7;
@end

@implementation STPresetsValueChangedCoreAnalyticsEvent

- (STPresetsValueChangedCoreAnalyticsEvent)initWithSessionId:(id)a3 recommendedPresetId:(id)a4 fieldName:(id)a5 recommendedValue:(id)a6 selectedValue:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = STPresetsValueChangedCoreAnalyticsEvent;
  v17 = [(STPresetsValueChangedCoreAnalyticsEvent *)&v21 init];
  if (v17)
  {
    v18 = [v12 copy];
    sessionId = v17->_sessionId;
    v17->_sessionId = v18;

    objc_storeStrong(&v17->_recommendedPresetId, a4);
    objc_storeStrong(&v17->_fieldName, a5);
    objc_storeStrong(&v17->_recommendedValue, a6);
    objc_storeStrong(&v17->_selectedValue, a7);
  }

  return v17;
}

- (NSDictionary)payload
{
  v3 = objc_opt_new();
  v4 = [(STPresetsValueChangedCoreAnalyticsEvent *)self fieldName];
  [v3 setObject:v4 forKeyedSubscript:@"fieldName"];

  v5 = [(STPresetsValueChangedCoreAnalyticsEvent *)self recommendedPresetId];
  [v3 setObject:v5 forKeyedSubscript:@"recommendedPresetId"];

  v6 = [(STPresetsValueChangedCoreAnalyticsEvent *)self recommendedValue];
  [v3 setObject:v6 forKeyedSubscript:@"recommendedValue"];

  v7 = [(STPresetsValueChangedCoreAnalyticsEvent *)self selectedValue];
  [v3 setObject:v7 forKeyedSubscript:@"selectedValue"];

  return v3;
}

@end