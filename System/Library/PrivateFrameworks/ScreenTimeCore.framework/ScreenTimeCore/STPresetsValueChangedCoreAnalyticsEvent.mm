@interface STPresetsValueChangedCoreAnalyticsEvent
- (NSDictionary)payload;
- (STPresetsValueChangedCoreAnalyticsEvent)initWithSessionId:(id)id recommendedPresetId:(id)presetId fieldName:(id)name recommendedValue:(id)value selectedValue:(id)selectedValue;
@end

@implementation STPresetsValueChangedCoreAnalyticsEvent

- (STPresetsValueChangedCoreAnalyticsEvent)initWithSessionId:(id)id recommendedPresetId:(id)presetId fieldName:(id)name recommendedValue:(id)value selectedValue:(id)selectedValue
{
  idCopy = id;
  presetIdCopy = presetId;
  nameCopy = name;
  valueCopy = value;
  selectedValueCopy = selectedValue;
  v21.receiver = self;
  v21.super_class = STPresetsValueChangedCoreAnalyticsEvent;
  v17 = [(STPresetsValueChangedCoreAnalyticsEvent *)&v21 init];
  if (v17)
  {
    v18 = [idCopy copy];
    sessionId = v17->_sessionId;
    v17->_sessionId = v18;

    objc_storeStrong(&v17->_recommendedPresetId, presetId);
    objc_storeStrong(&v17->_fieldName, name);
    objc_storeStrong(&v17->_recommendedValue, value);
    objc_storeStrong(&v17->_selectedValue, selectedValue);
  }

  return v17;
}

- (NSDictionary)payload
{
  v3 = objc_opt_new();
  fieldName = [(STPresetsValueChangedCoreAnalyticsEvent *)self fieldName];
  [v3 setObject:fieldName forKeyedSubscript:@"fieldName"];

  recommendedPresetId = [(STPresetsValueChangedCoreAnalyticsEvent *)self recommendedPresetId];
  [v3 setObject:recommendedPresetId forKeyedSubscript:@"recommendedPresetId"];

  recommendedValue = [(STPresetsValueChangedCoreAnalyticsEvent *)self recommendedValue];
  [v3 setObject:recommendedValue forKeyedSubscript:@"recommendedValue"];

  selectedValue = [(STPresetsValueChangedCoreAnalyticsEvent *)self selectedValue];
  [v3 setObject:selectedValue forKeyedSubscript:@"selectedValue"];

  return v3;
}

@end