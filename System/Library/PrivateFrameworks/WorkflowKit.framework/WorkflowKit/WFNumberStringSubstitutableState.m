@interface WFNumberStringSubstitutableState
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (NSDecimalNumber)decimalNumber;
- (WFNumberStringSubstitutableState)initWithValue:(id)a3;
- (id)serializedRepresentation;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFNumberStringSubstitutableState

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
  }

  else
  {
    v14.receiver = a1;
    v14.super_class = &OBJC_METACLASS___WFNumberStringSubstitutableState;
    v11 = objc_msgSendSuper2(&v14, sel_valueFromSerializedRepresentation_variableProvider_parameter_, v8, v9, v10);
  }

  v12 = v11;

  return v12;
}

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v11)
  {
    v19.receiver = self;
    v19.super_class = WFNumberStringSubstitutableState;
    [(WFVariableSubstitutableParameterState *)&v19 processWithContext:v8 userInputRequiredHandler:v9 valueHandler:v10];
  }

  else
  {
    v12 = [(WFNumberStringSubstitutableState *)self legacyNumber];

    if (v12)
    {
      v13 = MEMORY[0x1E696AB90];
      v14 = [(WFNumberStringSubstitutableState *)self legacyNumber];
      v15 = v14;
      if (v14)
      {
        [v14 decimalValue];
      }

      else
      {
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
      }

      v16 = [v13 decimalNumberWithDecimal:v17];
      v10[2](v10, v16, 0);
    }

    else
    {
      v15 = [(WFNumberStringSubstitutableState *)self decimalNumber];
      v10[2](v10, v15, 0);
    }
  }
}

- (NSDecimalNumber)decimalNumber
{
  v2 = [(WFVariableSubstitutableParameterState *)self value];
  if ([v2 length])
  {
    v3 = objc_opt_new();
    [v3 setNumberStyle:1];
    [v3 setUsesGroupingSeparator:0];
    [v3 setGeneratesDecimalNumbers:1];
    v4 = [v3 numberFromString:v2];
    if (!v4)
    {
      [v2 doubleValue];
      v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      v6 = [v5 stringValue];
      v4 = [v3 numberFromString:v6];
    }

    v7 = [MEMORY[0x1E696AB90] notANumber];
    v8 = [v4 isEqual:v7];

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v4;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)serializedRepresentation
{
  v3 = [(WFNumberStringSubstitutableState *)self legacyNumber];

  if (v3)
  {
    v4 = [(WFNumberStringSubstitutableState *)self legacyNumber];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WFNumberStringSubstitutableState;
    v4 = [(WFVariableSubstitutableParameterState *)&v6 serializedRepresentation];
  }

  return v4;
}

- (WFNumberStringSubstitutableState)initWithValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 stringValue];
  }

  else
  {
    v5 = v4;
    v4 = 0;
  }

  v10.receiver = self;
  v10.super_class = WFNumberStringSubstitutableState;
  v6 = [(WFVariableSubstitutableParameterState *)&v10 initWithValue:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_legacyNumber, v4);
    v8 = v7;
  }

  return v7;
}

@end