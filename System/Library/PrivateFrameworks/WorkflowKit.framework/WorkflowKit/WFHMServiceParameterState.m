@interface WFHMServiceParameterState
- (BOOL)isEqual:(id)a3;
- (HMService)service;
- (WFHMServiceParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFHMServiceParameterState)initWithService:(id)a3 homeIdentifier:(id)a4;
- (WFPropertyListObject)serializedRepresentation;
- (unint64_t)hash;
@end

@implementation WFHMServiceParameterState

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [(WFHMServiceParameterState *)self serializedService];
  v5 = [v3 combine:v4];

  v6 = [(WFHMServiceParameterState *)self homeIdentifier];
  v7 = [v3 combine:v6];

  v8 = [v3 finalize];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(WFHMServiceParameterState *)v6 serializedService];
      v8 = [(WFHMServiceParameterState *)self serializedService];
      if (v7 == v8 || (-[WFHMServiceParameterState serializedService](v6, "serializedService"), v3 = objc_claimAutoreleasedReturnValue(), -[WFHMServiceParameterState serializedService](self, "serializedService"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v10 = [(WFHMServiceParameterState *)v6 homeIdentifier];
        v11 = [(WFHMServiceParameterState *)self homeIdentifier];
        v9 = [v10 isEqualToString:v11];

        if (v7 == v8)
        {
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_10;
    }

    v9 = 0;
  }

LABEL_11:

  return v9;
}

- (HMService)service
{
  service = self->_service;
  if (service)
  {
LABEL_6:
    v11 = service;
    goto LABEL_7;
  }

  v4 = +[WFHomeManager sharedManager];
  v5 = [(WFHMServiceParameterState *)self homeIdentifier];
  v6 = [v4 homeWithIdentifier:v5];

  if (v6)
  {
    if (self->_serializedService)
    {
      HMServiceClass = getHMServiceClass();
      v8 = [(WFHMServiceParameterState *)self serializedService];
      v9 = [(objc_class *)HMServiceClass serviceWithSerializedDictionaryRepresentation:v8 home:v6];
      v10 = self->_service;
      self->_service = v9;
    }

    service = self->_service;
    goto LABEL_6;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (WFPropertyListObject)serializedRepresentation
{
  v3 = objc_opt_new();
  v4 = [(WFHMServiceParameterState *)self homeIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"HomeIdentifier"];

  v5 = [(WFHMServiceParameterState *)self serializedService];

  if (v5)
  {
    v6 = [(WFHMServiceParameterState *)self serializedService];
    [v3 setObject:v6 forKeyedSubscript:@"HomeService"];
  }

  return v3;
}

- (WFHMServiceParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = WFHMServiceParameterState;
  v7 = [(WFHMServiceParameterState *)&v14 init];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v6;
    v9 = [v8 objectForKeyedSubscript:@"HomeIdentifier"];
    if (v9)
    {
      objc_storeStrong(&v7->_homeIdentifier, v9);
      v10 = [v8 objectForKeyedSubscript:@"HomeService"];
      serializedService = v7->_serializedService;
      v7->_serializedService = v10;

      v12 = v7;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (WFHMServiceParameterState)initWithService:(id)a3 homeIdentifier:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFHMServiceParameterState.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"homeIdentifier"}];
  }

  v17.receiver = self;
  v17.super_class = WFHMServiceParameterState;
  v10 = [(WFHMServiceParameterState *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_homeIdentifier, a4);
    v12 = [v8 serializedDictionaryRepresentation];
    serializedService = v11->_serializedService;
    v11->_serializedService = v12;

    objc_storeStrong(&v11->_service, a3);
    v14 = v11;
  }

  return v11;
}

@end