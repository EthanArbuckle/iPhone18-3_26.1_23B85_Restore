@interface WFMultipleValueParameterStateEntry
- (BOOL)isEqual:(id)equal;
- (WFMultipleValueParameterStateEntry)initWithIdentity:(id)identity parameterState:(id)state;
- (unint64_t)hash;
@end

@implementation WFMultipleValueParameterStateEntry

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identity = [(WFMultipleValueParameterStateEntry *)self identity];
      identity2 = [equalCopy identity];
      v7 = identity;
      v8 = identity2;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        parameterState2 = v8;
        parameterState = v7;
        if (!v7 || !v8)
        {
          goto LABEL_11;
        }

        v10 = [v7 isEqual:v8];

        if (!v10)
        {
          goto LABEL_12;
        }
      }

      parameterState = [(WFMultipleValueParameterStateEntry *)self parameterState];
      parameterState2 = [equalCopy parameterState];
      LOBYTE(v10) = [parameterState isEqual:parameterState2];
LABEL_11:

LABEL_12:
      goto LABEL_13;
    }
  }

  LOBYTE(v10) = 0;
LABEL_13:

  return v10;
}

- (unint64_t)hash
{
  identity = [(WFMultipleValueParameterStateEntry *)self identity];
  v4 = [identity hash];
  parameterState = [(WFMultipleValueParameterStateEntry *)self parameterState];
  v6 = [parameterState hash];

  return v6 ^ v4;
}

- (WFMultipleValueParameterStateEntry)initWithIdentity:(id)identity parameterState:(id)state
{
  identityCopy = identity;
  stateCopy = state;
  v13.receiver = self;
  v13.super_class = WFMultipleValueParameterStateEntry;
  v9 = [(WFMultipleValueParameterStateEntry *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identity, identity);
    objc_storeStrong(&v10->_parameterState, state);
    v11 = v10;
  }

  return v10;
}

@end