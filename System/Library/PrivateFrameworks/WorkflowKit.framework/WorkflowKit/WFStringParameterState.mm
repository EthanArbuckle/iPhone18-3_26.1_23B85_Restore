@interface WFStringParameterState
+ (id)parameterStateFromModelOutput:(id)output;
- (BOOL)isEqual:(id)equal;
- (WFStringParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFStringParameterState)initWithString:(id)string;
- (unint64_t)hash;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFStringParameterState

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  valueHandlerCopy = valueHandler;
  string = [(WFStringParameterState *)self string];
  (*(valueHandler + 2))(valueHandlerCopy, string, 0);
}

- (unint64_t)hash
{
  string = [(WFStringParameterState *)self string];
  v3 = [string hash];

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
      string = [(WFStringParameterState *)equalCopy string];
      string2 = [(WFStringParameterState *)self string];
      v7 = [string isEqualToString:string2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WFStringParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(WFStringParameterState *)self initWithString:representationCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFStringParameterState)initWithString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFStringParameterState.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"string"}];
  }

  v12.receiver = self;
  v12.super_class = WFStringParameterState;
  v6 = [(WFStringParameterState *)&v12 init];
  if (v6)
  {
    v7 = [stringCopy copy];
    string = v6->_string;
    v6->_string = v7;

    v9 = v6;
  }

  return v6;
}

+ (id)parameterStateFromModelOutput:(id)output
{
  outputCopy = output;
  v5 = [[self alloc] initWithString:outputCopy];

  return v5;
}

@end