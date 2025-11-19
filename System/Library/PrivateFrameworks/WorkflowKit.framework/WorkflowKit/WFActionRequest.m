@interface WFActionRequest
- (BOOL)isEqual:(id)a3;
- (WFActionRequest)initWithActionIdentifier:(id)a3 serializedParameters:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation WFActionRequest

- (unint64_t)hash
{
  v3 = [(WFActionRequest *)self actionIdentifier];
  v4 = [v3 hash];
  v5 = [(WFActionRequest *)self serializedParameters];
  v6 = [v5 hash] ^ v4;
  v7 = [(WFActionRequest *)self result];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = WFActionRequest;
  v5 = [(WFActionRequest *)&v27 isEqual:v4];
  v6 = v4;
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
    v9 = [(WFActionRequest *)self actionIdentifier];
    v10 = [v8 actionIdentifier];
    v11 = v9;
    v12 = v10;
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

    v18 = [(WFActionRequest *)self serializedParameters];
    v19 = [v8 serializedParameters];
    v16 = v18;
    v20 = v19;
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

    v23 = [(WFActionRequest *)self result];
    v24 = [v8 result];
    v22 = v23;
    v25 = v24;
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
  v5 = [(WFActionRequest *)self actionIdentifier];
  v6 = [v3 stringWithFormat:@"%@ for %@", v4, v5];

  return v6;
}

- (WFActionRequest)initWithActionIdentifier:(id)a3 serializedParameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WFActionRequest;
  v8 = [(WFActionRequest *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    actionIdentifier = v8->_actionIdentifier;
    v8->_actionIdentifier = v9;

    v11 = [v7 copy];
    serializedParameters = v8->_serializedParameters;
    v8->_serializedParameters = v11;

    v13 = v8;
  }

  return v8;
}

@end