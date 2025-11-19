@interface WFUIKitParameterEditingRequest
- (WFUIKitParameterEditingRequest)initWithCoder:(id)a3;
- (WFUIKitParameterEditingRequest)initWithParameterClassName:(id)a3 currentState:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFUIKitParameterEditingRequest

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(WFUIKitParameterEditingRequest *)self parameterClassName];
  [v11 encodeObject:v4 forKey:@"parameterClass"];

  v5 = [(WFUIKitParameterEditingRequest *)self currentState];

  if (v5)
  {
    v6 = [(WFUIKitParameterEditingRequest *)self currentState];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v11 encodeObject:v8 forKey:@"stateClass"];

    v9 = [(WFUIKitParameterEditingRequest *)self currentState];
    v10 = [v9 serializedRepresentation];
    [v11 encodeObject:v10 forKey:@"state"];
  }
}

- (WFUIKitParameterEditingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterClass"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stateClass"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v14 = [v4 decodeObjectOfClasses:v13 forKey:@"state"];

  v15 = 0;
  if (v5)
  {
    if (v6 && v14)
    {
      v16 = NSClassFromString(v6);
      if (v16)
      {
        v15 = [[v16 alloc] initWithSerializedRepresentation:v14 variableProvider:0 parameter:0];
      }

      else
      {
        v15 = 0;
      }
    }

    self = [(WFUIKitParameterEditingRequest *)self initWithParameterClassName:v5 currentState:v15];

    v15 = self;
  }

  return v15;
}

- (WFUIKitParameterEditingRequest)initWithParameterClassName:(id)a3 currentState:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"WFUIKitParameterEditingRequest.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"parameterClassName"}];
  }

  v15.receiver = self;
  v15.super_class = WFUIKitParameterEditingRequest;
  v10 = [(WFUIKitParameterEditingRequest *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_parameterClassName, a3);
    objc_storeStrong(&v11->_currentState, a4);
    v12 = v11;
  }

  return v11;
}

@end