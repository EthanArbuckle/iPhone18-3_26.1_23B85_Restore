@interface WFNumberParameterState
- (BOOL)isEqual:(id)equal;
- (WFNumberParameterState)initWithNumber:(id)number;
- (WFNumberParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (unint64_t)hash;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFNumberParameterState

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  valueHandlerCopy = valueHandler;
  number = [(WFNumberParameterState *)self number];
  (*(valueHandler + 2))(valueHandlerCopy, number, 0);
}

- (unint64_t)hash
{
  number = [(WFNumberParameterState *)self number];
  v3 = [number hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      number = [(WFNumberParameterState *)equalCopy number];
      number2 = [(WFNumberParameterState *)self number];
      v7 = [number isEqualToNumber:number2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WFNumberParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(WFNumberParameterState *)self initWithNumber:representationCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFNumberParameterState)initWithNumber:(id)number
{
  numberCopy = number;
  if (!numberCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFNumberParameterState.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"number != nil"}];
  }

  v12.receiver = self;
  v12.super_class = WFNumberParameterState;
  v7 = [(WFNumberParameterState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_number, number);
    v9 = v8;
  }

  return v8;
}

@end