@interface WFParameterKeyValuePair
- (BOOL)isEqual:(id)a3;
- (WFParameterKeyValuePair)initWithCoder:(id)a3;
- (WFParameterKeyValuePair)initWithParameterKey:(id)a3 parameterValue:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFParameterKeyValuePair

- (unint64_t)hash
{
  v3 = [(WFParameterKeyValuePair *)self parameterKey];
  v4 = [v3 hash];
  v5 = [(WFParameterKeyValuePair *)self parameterValue];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    v7 = [(WFParameterKeyValuePair *)self parameterKey];
    v8 = [(WFParameterKeyValuePair *)v6 parameterKey];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v12 = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v15 = [(WFParameterKeyValuePair *)self parameterValue];
    v16 = [(WFParameterKeyValuePair *)v6 parameterValue];
    v14 = v15;
    v17 = v16;
    v13 = v17;
    if (v14 == v17)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v17)
      {
        LOBYTE(v12) = [v14 isEqual:v17];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFParameterKeyValuePair *)self parameterKey];
  [v4 encodeObject:v5 forKey:@"parameterKey"];

  v6 = [(WFParameterKeyValuePair *)self parameterValue];
  [v4 encodeObject:v6 forKey:@"parameterValue"];
}

- (WFParameterKeyValuePair)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterKey"];
  parameterKey = self->_parameterKey;
  self->_parameterKey = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parameterValue"];

  parameterValue = self->_parameterValue;
  self->_parameterValue = v7;

  return self;
}

- (WFParameterKeyValuePair)initWithParameterKey:(id)a3 parameterValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = WFParameterKeyValuePair;
  v8 = [(WFParameterKeyValuePair *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    parameterKey = v8->_parameterKey;
    v8->_parameterKey = v9;

    objc_storeStrong(&v8->_parameterValue, a4);
    v11 = v8;
  }

  return v8;
}

@end