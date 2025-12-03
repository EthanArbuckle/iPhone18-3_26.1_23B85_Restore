@interface WFToolKitProcessedValueParameterState
- (BOOL)isEqual:(id)equal;
- (WFToolKitProcessedValueParameterState)initWithProcessedValue:(id)value;
- (unint64_t)hash;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFToolKitProcessedValueParameterState

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  valueHandlerCopy = valueHandler;
  processedValue = [(WFToolKitProcessedValueParameterState *)self processedValue];
  (*(valueHandler + 2))(valueHandlerCopy, processedValue, 0);
}

- (unint64_t)hash
{
  processedValue = [(WFToolKitProcessedValueParameterState *)self processedValue];
  v3 = [processedValue hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  processedValue = [(WFToolKitProcessedValueParameterState *)self processedValue];
  processedValue2 = [v6 processedValue];

  v9 = processedValue;
  v10 = processedValue2;
  v11 = v10;
  if (v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0;
    if (v9 && v10)
    {
      v12 = [v9 isEqual:v10];
    }
  }

  return v12;
}

- (WFToolKitProcessedValueParameterState)initWithProcessedValue:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = WFToolKitProcessedValueParameterState;
  v6 = [(WFToolKitProcessedValueParameterState *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processedValue, value);
    v8 = v7;
  }

  return v7;
}

@end