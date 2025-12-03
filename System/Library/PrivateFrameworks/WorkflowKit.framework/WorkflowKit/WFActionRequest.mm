@interface WFActionRequest
- (BOOL)isEqual:(id)equal;
- (WFActionRequest)initWithActionIdentifier:(id)identifier serializedParameters:(id)parameters;
- (id)description;
- (unint64_t)hash;
@end

@implementation WFActionRequest

- (unint64_t)hash
{
  actionIdentifier = [(WFActionRequest *)self actionIdentifier];
  v4 = [actionIdentifier hash];
  serializedParameters = [(WFActionRequest *)self serializedParameters];
  v6 = [serializedParameters hash] ^ v4;
  result = [(WFActionRequest *)self result];
  v8 = [result hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v27.receiver = self;
  v27.super_class = WFActionRequest;
  v5 = [(WFActionRequest *)&v27 isEqual:equalCopy];
  v6 = equalCopy;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v5)
  {
    actionIdentifier = [(WFActionRequest *)self actionIdentifier];
    actionIdentifier2 = [v8 actionIdentifier];
    v11 = actionIdentifier;
    v12 = actionIdentifier2;
    v13 = v12;
    if (v11 == v12)
    {
    }

    else
    {
      LOBYTE(v14) = 0;
      v15 = v12;
      v16 = v11;
      if (!v11 || !v12)
      {
        goto LABEL_27;
      }

      v17 = [v11 isEqualToString:v12];

      if (!v17)
      {
        LOBYTE(v14) = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    serializedParameters = [(WFActionRequest *)self serializedParameters];
    serializedParameters2 = [v8 serializedParameters];
    v16 = serializedParameters;
    v20 = serializedParameters2;
    v15 = v20;
    if (v16 == v20)
    {
    }

    else
    {
      LOBYTE(v14) = 0;
      v21 = v20;
      v22 = v16;
      if (!v16 || !v20)
      {
LABEL_26:

LABEL_27:
        goto LABEL_28;
      }

      v14 = [v16 isEqualToDictionary:v20];

      if (!v14)
      {
        goto LABEL_27;
      }
    }

    result = [(WFActionRequest *)self result];
    result2 = [v8 result];
    v22 = result;
    v25 = result2;
    v21 = v25;
    if (v22 == v25)
    {
      LOBYTE(v14) = 1;
    }

    else
    {
      LOBYTE(v14) = 0;
      if (v22 && v25)
      {
        LOBYTE(v14) = [v22 isEqual:v25];
      }
    }

    goto LABEL_26;
  }

  LOBYTE(v14) = 0;
LABEL_29:

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFActionRequest;
  v4 = [(WFActionRequest *)&v8 description];
  actionIdentifier = [(WFActionRequest *)self actionIdentifier];
  v6 = [v3 stringWithFormat:@"%@ for %@", v4, actionIdentifier];

  return v6;
}

- (WFActionRequest)initWithActionIdentifier:(id)identifier serializedParameters:(id)parameters
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  v15.receiver = self;
  v15.super_class = WFActionRequest;
  v8 = [(WFActionRequest *)&v15 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    actionIdentifier = v8->_actionIdentifier;
    v8->_actionIdentifier = v9;

    v11 = [parametersCopy copy];
    serializedParameters = v8->_serializedParameters;
    v8->_serializedParameters = v11;

    v13 = v8;
  }

  return v8;
}

@end