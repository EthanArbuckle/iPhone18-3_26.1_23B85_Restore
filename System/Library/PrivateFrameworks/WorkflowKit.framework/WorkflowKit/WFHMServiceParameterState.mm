@interface WFHMServiceParameterState
- (BOOL)isEqual:(id)equal;
- (HMService)service;
- (WFHMServiceParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFHMServiceParameterState)initWithService:(id)service homeIdentifier:(id)identifier;
- (WFPropertyListObject)serializedRepresentation;
- (unint64_t)hash;
@end

@implementation WFHMServiceParameterState

- (unint64_t)hash
{
  v3 = objc_opt_new();
  serializedService = [(WFHMServiceParameterState *)self serializedService];
  v5 = [v3 combine:serializedService];

  homeIdentifier = [(WFHMServiceParameterState *)self homeIdentifier];
  v7 = [v3 combine:homeIdentifier];

  v8 = [v3 finalize];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      serializedService = [(WFHMServiceParameterState *)equalCopy serializedService];
      serializedService2 = [(WFHMServiceParameterState *)self serializedService];
      if (serializedService == serializedService2 || (-[WFHMServiceParameterState serializedService](equalCopy, "serializedService"), v3 = objc_claimAutoreleasedReturnValue(), -[WFHMServiceParameterState serializedService](self, "serializedService"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        homeIdentifier = [(WFHMServiceParameterState *)equalCopy homeIdentifier];
        homeIdentifier2 = [(WFHMServiceParameterState *)self homeIdentifier];
        v9 = [homeIdentifier isEqualToString:homeIdentifier2];

        if (serializedService == serializedService2)
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
  homeIdentifier = [(WFHMServiceParameterState *)self homeIdentifier];
  v6 = [v4 homeWithIdentifier:homeIdentifier];

  if (v6)
  {
    if (self->_serializedService)
    {
      HMServiceClass = getHMServiceClass();
      serializedService = [(WFHMServiceParameterState *)self serializedService];
      v9 = [(objc_class *)HMServiceClass serviceWithSerializedDictionaryRepresentation:serializedService home:v6];
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
  homeIdentifier = [(WFHMServiceParameterState *)self homeIdentifier];
  [v3 setObject:homeIdentifier forKeyedSubscript:@"HomeIdentifier"];

  serializedService = [(WFHMServiceParameterState *)self serializedService];

  if (serializedService)
  {
    serializedService2 = [(WFHMServiceParameterState *)self serializedService];
    [v3 setObject:serializedService2 forKeyedSubscript:@"HomeService"];
  }

  return v3;
}

- (WFHMServiceParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  v14.receiver = self;
  v14.super_class = WFHMServiceParameterState;
  v7 = [(WFHMServiceParameterState *)&v14 init];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = representationCopy;
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

- (WFHMServiceParameterState)initWithService:(id)service homeIdentifier:(id)identifier
{
  serviceCopy = service;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHMServiceParameterState.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"homeIdentifier"}];
  }

  v17.receiver = self;
  v17.super_class = WFHMServiceParameterState;
  v10 = [(WFHMServiceParameterState *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_homeIdentifier, identifier);
    serializedDictionaryRepresentation = [serviceCopy serializedDictionaryRepresentation];
    serializedService = v11->_serializedService;
    v11->_serializedService = serializedDictionaryRepresentation;

    objc_storeStrong(&v11->_service, service);
    v14 = v11;
  }

  return v11;
}

@end