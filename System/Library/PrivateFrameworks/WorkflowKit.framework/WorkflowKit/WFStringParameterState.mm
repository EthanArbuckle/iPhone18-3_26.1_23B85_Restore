@interface WFStringParameterState
+ (id)parameterStateFromModelOutput:(id)a3;
- (BOOL)isEqual:(id)a3;
- (WFStringParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFStringParameterState)initWithString:(id)a3;
- (unint64_t)hash;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFStringParameterState

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v7 = a5;
  v8 = [(WFStringParameterState *)self string];
  (*(a5 + 2))(v7, v8, 0);
}

- (unint64_t)hash
{
  v2 = [(WFStringParameterState *)self string];
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
      v5 = [(WFStringParameterState *)v4 string];
      v6 = [(WFStringParameterState *)self string];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WFStringParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(WFStringParameterState *)self initWithString:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WFStringParameterState)initWithString:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFStringParameterState.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"string"}];
  }

  v12.receiver = self;
  v12.super_class = WFStringParameterState;
  v6 = [(WFStringParameterState *)&v12 init];
  if (v6)
  {
    v7 = [v5 copy];
    string = v6->_string;
    v6->_string = v7;

    v9 = v6;
  }

  return v6;
}

+ (id)parameterStateFromModelOutput:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithString:v4];

  return v5;
}

@end