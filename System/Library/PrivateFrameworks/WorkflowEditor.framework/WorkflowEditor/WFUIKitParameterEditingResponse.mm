@interface WFUIKitParameterEditingResponse
- (WFUIKitParameterEditingResponse)initWithCoder:(id)a3;
- (WFUIKitParameterEditingResponse)initWithParameterState:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFUIKitParameterEditingResponse

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(WFUIKitParameterEditingResponse *)self parameterState];

  if (v4)
  {
    v5 = [(WFUIKitParameterEditingResponse *)self parameterState];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v10 encodeObject:v7 forKey:@"stateClass"];

    v8 = [(WFUIKitParameterEditingResponse *)self parameterState];
    v9 = [v8 serializedRepresentation];
    [v10 encodeObject:v9 forKey:@"state"];
  }
}

- (WFUIKitParameterEditingResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stateClass"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"state"];

  v14 = 0;
  if (v5 && v13)
  {
    v15 = NSClassFromString(v5);
    if (v15)
    {
      v14 = [[v15 alloc] initWithSerializedRepresentation:v13 variableProvider:0 parameter:0];
    }

    else
    {
      v14 = 0;
    }
  }

  v16 = [(WFUIKitParameterEditingResponse *)self initWithParameterState:v14];

  return v16;
}

- (WFUIKitParameterEditingResponse)initWithParameterState:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFUIKitParameterEditingResponse;
  v6 = [(WFUIKitParameterEditingResponse *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parameterState, a3);
    v8 = v7;
  }

  return v7;
}

@end