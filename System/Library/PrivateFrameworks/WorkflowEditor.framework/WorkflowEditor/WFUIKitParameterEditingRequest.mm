@interface WFUIKitParameterEditingRequest
- (WFUIKitParameterEditingRequest)initWithCoder:(id)coder;
- (WFUIKitParameterEditingRequest)initWithParameterClassName:(id)name currentState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFUIKitParameterEditingRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  parameterClassName = [(WFUIKitParameterEditingRequest *)self parameterClassName];
  [coderCopy encodeObject:parameterClassName forKey:@"parameterClass"];

  currentState = [(WFUIKitParameterEditingRequest *)self currentState];

  if (currentState)
  {
    currentState2 = [(WFUIKitParameterEditingRequest *)self currentState];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [coderCopy encodeObject:v8 forKey:@"stateClass"];

    currentState3 = [(WFUIKitParameterEditingRequest *)self currentState];
    serializedRepresentation = [currentState3 serializedRepresentation];
    [coderCopy encodeObject:serializedRepresentation forKey:@"state"];
  }
}

- (WFUIKitParameterEditingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterClass"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stateClass"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"state"];

  selfCopy = 0;
  if (v5)
  {
    if (v6 && v14)
    {
      v16 = NSClassFromString(v6);
      if (v16)
      {
        selfCopy = [[v16 alloc] initWithSerializedRepresentation:v14 variableProvider:0 parameter:0];
      }

      else
      {
        selfCopy = 0;
      }
    }

    self = [(WFUIKitParameterEditingRequest *)self initWithParameterClassName:v5 currentState:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (WFUIKitParameterEditingRequest)initWithParameterClassName:(id)name currentState:(id)state
{
  nameCopy = name;
  stateCopy = state;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFUIKitParameterEditingRequest.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"parameterClassName"}];
  }

  v15.receiver = self;
  v15.super_class = WFUIKitParameterEditingRequest;
  v10 = [(WFUIKitParameterEditingRequest *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_parameterClassName, name);
    objc_storeStrong(&v11->_currentState, state);
    v12 = v11;
  }

  return v11;
}

@end