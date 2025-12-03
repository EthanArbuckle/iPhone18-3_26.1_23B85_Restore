@interface WFParameterKeyValuePair
- (BOOL)isEqual:(id)equal;
- (WFParameterKeyValuePair)initWithCoder:(id)coder;
- (WFParameterKeyValuePair)initWithParameterKey:(id)key parameterValue:(id)value;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFParameterKeyValuePair

- (unint64_t)hash
{
  parameterKey = [(WFParameterKeyValuePair *)self parameterKey];
  v4 = [parameterKey hash];
  parameterValue = [(WFParameterKeyValuePair *)self parameterValue];
  v6 = [parameterValue hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_20:

      goto LABEL_21;
    }

    parameterKey = [(WFParameterKeyValuePair *)self parameterKey];
    parameterKey2 = [(WFParameterKeyValuePair *)v6 parameterKey];
    v9 = parameterKey;
    v10 = parameterKey2;
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

    parameterValue = [(WFParameterKeyValuePair *)self parameterValue];
    parameterValue2 = [(WFParameterKeyValuePair *)v6 parameterValue];
    v14 = parameterValue;
    v17 = parameterValue2;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  parameterKey = [(WFParameterKeyValuePair *)self parameterKey];
  [coderCopy encodeObject:parameterKey forKey:@"parameterKey"];

  parameterValue = [(WFParameterKeyValuePair *)self parameterValue];
  [coderCopy encodeObject:parameterValue forKey:@"parameterValue"];
}

- (WFParameterKeyValuePair)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterKey"];
  parameterKey = self->_parameterKey;
  self->_parameterKey = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameterValue"];

  parameterValue = self->_parameterValue;
  self->_parameterValue = v7;

  return self;
}

- (WFParameterKeyValuePair)initWithParameterKey:(id)key parameterValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = WFParameterKeyValuePair;
  v8 = [(WFParameterKeyValuePair *)&v13 init];
  if (v8)
  {
    v9 = [keyCopy copy];
    parameterKey = v8->_parameterKey;
    v8->_parameterKey = v9;

    objc_storeStrong(&v8->_parameterValue, value);
    v11 = v8;
  }

  return v8;
}

@end