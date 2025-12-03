@interface WFSlotIdentifier
- (BOOL)isEqual:(id)equal;
- (WFSlotIdentifier)initWithKey:(id)key parameterKey:(id)parameterKey arrayIndex:(int64_t)index;
- (id)identifierBySettingArrayIndex:(int64_t)index;
- (id)identifierBySettingParameterKey:(id)key;
- (id)identifierBySettingParameterKey:(id)key arrayIndex:(int64_t)index;
@end

@implementation WFSlotIdentifier

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      v8 = [(WFSlotIdentifier *)self key];
      v9 = [(WFSlotIdentifier *)v7 key];
      if (![v8 isEqualToString:v9])
      {
        v12 = 0;
LABEL_13:

        goto LABEL_14;
      }

      parameterKey = [(WFSlotIdentifier *)self parameterKey];
      parameterKey2 = [(WFSlotIdentifier *)v7 parameterKey];
      if (parameterKey == parameterKey2 || (-[WFSlotIdentifier parameterKey](self, "parameterKey"), v3 = objc_claimAutoreleasedReturnValue(), -[WFSlotIdentifier parameterKey](v7, "parameterKey"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqualToString:v4]))
      {
        arrayIndex = [(WFSlotIdentifier *)self arrayIndex];
        v12 = arrayIndex == [(WFSlotIdentifier *)v7 arrayIndex];
        if (parameterKey == parameterKey2)
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_12;
    }

    v12 = 0;
  }

LABEL_14:

  return v12;
}

- (id)identifierBySettingArrayIndex:(int64_t)index
{
  parameterKey = [(WFSlotIdentifier *)self parameterKey];
  v6 = [(WFSlotIdentifier *)self identifierBySettingParameterKey:parameterKey arrayIndex:index];

  return v6;
}

- (id)identifierBySettingParameterKey:(id)key
{
  keyCopy = key;
  v5 = [(WFSlotIdentifier *)self identifierBySettingParameterKey:keyCopy arrayIndex:[(WFSlotIdentifier *)self arrayIndex]];

  return v5;
}

- (id)identifierBySettingParameterKey:(id)key arrayIndex:(int64_t)index
{
  keyCopy = key;
  v7 = [WFSlotIdentifier alloc];
  v8 = [(WFSlotIdentifier *)self key];
  v9 = [(WFSlotIdentifier *)v7 initWithKey:v8 parameterKey:keyCopy arrayIndex:index];

  return v9;
}

- (WFSlotIdentifier)initWithKey:(id)key parameterKey:(id)parameterKey arrayIndex:(int64_t)index
{
  keyCopy = key;
  parameterKeyCopy = parameterKey;
  v17.receiver = self;
  v17.super_class = WFSlotIdentifier;
  v10 = [(WFSlotIdentifier *)&v17 init];
  if (v10)
  {
    v11 = [keyCopy copy];
    key = v10->_key;
    v10->_key = v11;

    v13 = [parameterKeyCopy copy];
    parameterKey = v10->_parameterKey;
    v10->_parameterKey = v13;

    v10->_arrayIndex = index;
    v15 = v10;
  }

  return v10;
}

@end