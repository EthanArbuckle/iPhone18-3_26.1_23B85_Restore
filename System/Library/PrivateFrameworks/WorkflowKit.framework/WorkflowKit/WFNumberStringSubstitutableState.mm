@interface WFNumberStringSubstitutableState
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (NSDecimalNumber)decimalNumber;
- (WFNumberStringSubstitutableState)initWithValue:(id)value;
- (id)serializedRepresentation;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFNumberStringSubstitutableState

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  providerCopy = provider;
  parameterCopy = parameter;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = representationCopy;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = &OBJC_METACLASS___WFNumberStringSubstitutableState;
    v11 = objc_msgSendSuper2(&v14, sel_valueFromSerializedRepresentation_variableProvider_parameter_, representationCopy, providerCopy, parameterCopy);
  }

  v12 = v11;

  return v12;
}

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    v19.receiver = self;
    v19.super_class = WFNumberStringSubstitutableState;
    [(WFVariableSubstitutableParameterState *)&v19 processWithContext:contextCopy userInputRequiredHandler:handlerCopy valueHandler:valueHandlerCopy];
  }

  else
  {
    legacyNumber = [(WFNumberStringSubstitutableState *)self legacyNumber];

    if (legacyNumber)
    {
      v13 = MEMORY[0x1E696AB90];
      legacyNumber2 = [(WFNumberStringSubstitutableState *)self legacyNumber];
      decimalNumber = legacyNumber2;
      if (legacyNumber2)
      {
        [legacyNumber2 decimalValue];
      }

      else
      {
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
      }

      v16 = [v13 decimalNumberWithDecimal:v17];
      valueHandlerCopy[2](valueHandlerCopy, v16, 0);
    }

    else
    {
      decimalNumber = [(WFNumberStringSubstitutableState *)self decimalNumber];
      valueHandlerCopy[2](valueHandlerCopy, decimalNumber, 0);
    }
  }
}

- (NSDecimalNumber)decimalNumber
{
  value = [(WFVariableSubstitutableParameterState *)self value];
  if ([value length])
  {
    v3 = objc_opt_new();
    [v3 setNumberStyle:1];
    [v3 setUsesGroupingSeparator:0];
    [v3 setGeneratesDecimalNumbers:1];
    v4 = [v3 numberFromString:value];
    if (!v4)
    {
      [value doubleValue];
      v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      stringValue = [v5 stringValue];
      v4 = [v3 numberFromString:stringValue];
    }

    notANumber = [MEMORY[0x1E696AB90] notANumber];
    v8 = [v4 isEqual:notANumber];

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
  legacyNumber = [(WFNumberStringSubstitutableState *)self legacyNumber];

  if (legacyNumber)
  {
    legacyNumber2 = [(WFNumberStringSubstitutableState *)self legacyNumber];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = WFNumberStringSubstitutableState;
    legacyNumber2 = [(WFVariableSubstitutableParameterState *)&v6 serializedRepresentation];
  }

  return legacyNumber2;
}

- (WFNumberStringSubstitutableState)initWithValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [valueCopy stringValue];
  }

  else
  {
    stringValue = valueCopy;
    valueCopy = 0;
  }

  v10.receiver = self;
  v10.super_class = WFNumberStringSubstitutableState;
  v6 = [(WFVariableSubstitutableParameterState *)&v10 initWithValue:stringValue];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_legacyNumber, valueCopy);
    v8 = v7;
  }

  return v7;
}

@end