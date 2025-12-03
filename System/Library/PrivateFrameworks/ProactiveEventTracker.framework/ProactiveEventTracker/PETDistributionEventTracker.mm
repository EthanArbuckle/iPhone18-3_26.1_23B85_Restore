@interface PETDistributionEventTracker
- (PETDistributionEventTracker)initWithFeatureId:(id)id event:(id)event registerProperties:(id)properties propertySubsets:(id)subsets;
- (void)_logValue:(id)value forEvent:(id)event stringifiedProperties:(id)properties metaData:(id)data;
- (void)trackEventWithPropertyValues:(id)values value:(double)value;
@end

@implementation PETDistributionEventTracker

- (void)_logValue:(id)value forEvent:(id)event stringifiedProperties:(id)properties metaData:(id)data
{
  dataCopy = data;
  propertiesCopy = properties;
  eventCopy = event;
  valueCopy = value;
  loggingOutlet = [(PETEventTracker *)self loggingOutlet];
  [valueCopy doubleValue];
  v15 = v14;

  featureId = [(PETEventTracker *)self featureId];
  [loggingOutlet logDoubleValue:eventCopy forEvent:featureId featureId:propertiesCopy stringifiedProperties:dataCopy metaData:v15];
}

- (void)trackEventWithPropertyValues:(id)values value:(double)value
{
  valuesCopy = values;
  event = [(PETDistributionEventTracker *)self event];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  [(PETEventTracker *)self _trackEvent:event withPropertyValues:valuesCopy value:v7];
}

- (PETDistributionEventTracker)initWithFeatureId:(id)id event:(id)event registerProperties:(id)properties propertySubsets:(id)subsets
{
  eventCopy = event;
  v18.receiver = self;
  v18.super_class = PETDistributionEventTracker;
  v11 = [(PETEventTracker *)&v18 initWithFeatureId:id registerProperties:properties propertySubsets:subsets];
  if (v11)
  {
    if (![PETEventStringValidator stringIsValid:eventCopy])
    {
      v12 = MEMORY[0x1E695DF30];
      eventCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"event may only contain [a-zA-Z0-9_] and may not be prefixed with _: %@", eventCopy];
      v14 = [v12 exceptionWithName:@"PETEventTrackingException" reason:eventCopy userInfo:0];

      [v14 raise];
    }

    v15 = [eventCopy copy];
    event = v11->_event;
    v11->_event = v15;

    [(PETEventTracker *)v11 _checkCardinalityForEvent:eventCopy];
    [(PETEventTracker *)v11 _checkKeyLengthForEvent:eventCopy metaData:0];
  }

  return v11;
}

@end