@interface WFToolKitProcessedValueParameterState
- (BOOL)isEqual:(id)a3;
- (WFToolKitProcessedValueParameterState)initWithProcessedValue:(id)a3;
- (unint64_t)hash;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFToolKitProcessedValueParameterState

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v7 = a5;
  v8 = [(WFToolKitProcessedValueParameterState *)self processedValue];
  (*(a5 + 2))(v7, v8, 0);
}

- (unint64_t)hash
{
  v2 = [(WFToolKitProcessedValueParameterState *)self processedValue];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
  v7 = [(WFToolKitProcessedValueParameterState *)self processedValue];
  v8 = [v6 processedValue];

  v9 = v7;
  v10 = v8;
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

- (WFToolKitProcessedValueParameterState)initWithProcessedValue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFToolKitProcessedValueParameterState;
  v6 = [(WFToolKitProcessedValueParameterState *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processedValue, a3);
    v8 = v7;
  }

  return v7;
}

@end