@interface PETGoalConversionEventTracker
- (PETGoalConversionEventTracker)initWithFeatureId:(id)a3 opportunityEvent:(id)a4 conversionEvent:(id)a5 registerProperties:(id)a6 propertySubsets:(id)a7;
- (id)_keyMetadataForEvent:(id)a3;
- (void)_logValue:(id)a3 forEvent:(id)a4 stringifiedProperties:(id)a5 metaData:(id)a6;
- (void)trackGoalOpportunityEventWithConversion:(BOOL)a3 propertyValues:(id)a4;
@end

@implementation PETGoalConversionEventTracker

- (id)_keyMetadataForEvent:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEqualToString:self->_opportunityEvent])
  {
    v5 = [PETStringPairs alloc];
    v12[0] = self->_conversionEvent;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v7 = &unk_1F5AB6CF0;
LABEL_5:
    v8 = [(PETStringPairs *)v5 initWithKeys:v7 values:v6];

    goto LABEL_7;
  }

  if ([v4 isEqualToString:self->_conversionEvent])
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

- (void)_logValue:(id)a3 forEvent:(id)a4 stringifiedProperties:(id)a5 metaData:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v16 = [(PETEventTracker *)self loggingOutlet];
  v14 = [v13 unsignedIntegerValue];

  v15 = [(PETEventTracker *)self featureId];
  [v16 logUnsignedIntegerValue:v14 forEvent:v12 featureId:v15 stringifiedProperties:v11 metaData:v10];
}

- (void)trackGoalOpportunityEventWithConversion:(BOOL)a3 propertyValues:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(PETGoalConversionEventTracker *)self trackGoalOpportunityEventWithPropertyValues:?];
  if (v4)
  {
    [(PETGoalConversionEventTracker *)self trackGoalConversionEventWithPropertyValues:v6];
  }
}

- (PETGoalConversionEventTracker)initWithFeatureId:(id)a3 opportunityEvent:(id)a4 conversionEvent:(id)a5 registerProperties:(id)a6 propertySubsets:(id)a7
{
  v12 = a4;
  v13 = a5;
  v25.receiver = self;
  v25.super_class = PETGoalConversionEventTracker;
  v14 = [(PETEventTracker *)&v25 initWithFeatureId:a3 registerProperties:a6 propertySubsets:a7];
  if (v14)
  {
    if (![PETEventStringValidator stringIsValid:v12]|| ![PETEventStringValidator stringIsValid:v13])
    {
      v15 = MEMORY[0x1E695DF30];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"opportunityEvent, and conversionEvent may only contain [a-zA-Z0-9_] and may not be prefixed with _: %@, %@", v12, v13];
      v17 = [v15 exceptionWithName:@"EventTrackerException" reason:v16 userInfo:0];

      [v17 raise];
    }

    v18 = [v12 copy];
    opportunityEvent = v14->_opportunityEvent;
    v14->_opportunityEvent = v18;

    v20 = [v13 copy];
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