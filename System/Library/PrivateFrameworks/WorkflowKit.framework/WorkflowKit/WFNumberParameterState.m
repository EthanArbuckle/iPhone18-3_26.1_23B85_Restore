@interface WFNumberParameterState
- (BOOL)isEqual:(id)a3;
- (WFNumberParameterState)initWithNumber:(id)a3;
- (WFNumberParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (unint64_t)hash;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFNumberParameterState

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v7 = a5;
  v8 = [(WFNumberParameterState *)self number];
  (*(a5 + 2))(v7, v8, 0);
}

- (unint64_t)hash
{
  v2 = [(WFNumberParameterState *)self number];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFNumberParameterState *)v4 number];
      v6 = [(WFNumberParameterState *)self number];
      v7 = [v5 isEqualToNumber:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WFNumberParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(WFNumberParameterState *)self initWithNumber:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WFNumberParameterState)initWithNumber:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFNumberParameterState.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"number != nil"}];
  }

  v12.receiver = self;
  v12.super_class = WFNumberParameterState;
  v7 = [(WFNumberParameterState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_number, a3);
    v9 = v8;
  }

  return v8;
}

@end