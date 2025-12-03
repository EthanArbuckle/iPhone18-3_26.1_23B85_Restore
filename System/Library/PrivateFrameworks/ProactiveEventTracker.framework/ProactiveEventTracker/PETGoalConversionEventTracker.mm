@interface PETGoalConversionEventTracker
- (PETGoalConversionEventTracker)initWithFeatureId:(id)id opportunityEvent:(id)event conversionEvent:(id)conversionEvent registerProperties:(id)properties propertySubsets:(id)subsets;
- (id)_keyMetadataForEvent:(id)event;
- (void)_logValue:(id)value forEvent:(id)event stringifiedProperties:(id)properties metaData:(id)data;
- (void)trackGoalOpportunityEventWithConversion:(BOOL)conversion propertyValues:(id)values;
@end

@implementation PETGoalConversionEventTracker

- (id)_keyMetadataForEvent:(id)event
{
  v12[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if ([eventCopy isEqualToString:self->_opportunityEvent])
  {
    v5 = [PETStringPairs alloc];
    v12[0] = self->_conversionEvent;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v7 = &unk_1F5AB6CF0;
LABEL_5:
    v8 = [(PETStringPairs *)v5 initWithKeys:v7 values:v6];

    goto LABEL_7;
  }

  if ([eventCopy isEqualToString:self->_conversionEvent])
  {
    v5 = [PETStringPairs alloc];
    opportunityEvent = self->_opportunityEvent;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&opportunityEvent count:1];
    v7 = &unk_1F5AB6D08;
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)_logValue:(id)value forEvent:(id)event stringifiedProperties:(id)properties metaData:(id)data
{
  dataCopy = data;
  propertiesCopy = properties;
  eventCopy = event;
  valueCopy = value;
  loggingOutlet = [(PETEventTracker *)self loggingOutlet];
  unsignedIntegerValue = [valueCopy unsignedIntegerValue];

  featureId = [(PETEventTracker *)self featureId];
  [loggingOutlet logUnsignedIntegerValue:unsignedIntegerValue forEvent:eventCopy featureId:featureId stringifiedProperties:propertiesCopy metaData:dataCopy];
}

- (void)trackGoalOpportunityEventWithConversion:(BOOL)conversion propertyValues:(id)values
{
  conversionCopy = conversion;
  valuesCopy = values;
  [(PETGoalConversionEventTracker *)self trackGoalOpportunityEventWithPropertyValues:?];
  if (conversionCopy)
  {
    [(PETGoalConversionEventTracker *)self trackGoalConversionEventWithPropertyValues:valuesCopy];
  }
}

- (PETGoalConversionEventTracker)initWithFeatureId:(id)id opportunityEvent:(id)event conversionEvent:(id)conversionEvent registerProperties:(id)properties propertySubsets:(id)subsets
{
  eventCopy = event;
  conversionEventCopy = conversionEvent;
  v25.receiver = self;
  v25.super_class = PETGoalConversionEventTracker;
  v14 = [(PETEventTracker *)&v25 initWithFeatureId:id registerProperties:properties propertySubsets:subsets];
  if (v14)
  {
    if (![PETEventStringValidator stringIsValid:eventCopy]|| ![PETEventStringValidator stringIsValid:conversionEventCopy])
    {
      v15 = MEMORY[0x1E695DF30];
      conversionEventCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"opportunityEvent, and conversionEvent may only contain [a-zA-Z0-9_] and may not be prefixed with _: %@, %@", eventCopy, conversionEventCopy];
      v17 = [v15 exceptionWithName:@"EventTrackerException" reason:conversionEventCopy userInfo:0];

      [v17 raise];
    }

    v18 = [eventCopy copy];
    opportunityEvent = v14->_opportunityEvent;
    v14->_opportunityEvent = v18;

    v20 = [conversionEventCopy copy];
    conversionEvent = v14->_conversionEvent;
    v14->_conversionEvent = v20;

    [(PETEventTracker *)v14 _checkCardinalityForEvent:v14->_opportunityEvent];
    v22 = v14->_conversionEvent;
    v23 = [(PETGoalConversionEventTracker *)v14 _keyMetadataForEvent:v22];
    [(PETEventTracker *)v14 _checkKeyLengthForEvent:v22 metaData:v23];
  }

  return v14;
}

@end