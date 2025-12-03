@interface STRestrictionItem
- (BOOL)isEqual:(id)equal;
- (STRestrictionItem)initWithConfiguration:(id)configuration restrictionKey:(id)key labelName:(id)name type:(unint64_t)type restrictionValue:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation STRestrictionItem

- (STRestrictionItem)initWithConfiguration:(id)configuration restrictionKey:(id)key labelName:(id)name type:(unint64_t)type restrictionValue:(id)value
{
  configurationCopy = configuration;
  keyCopy = key;
  nameCopy = name;
  valueCopy = value;
  if (configurationCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [STRestrictionItem initWithConfiguration:restrictionKey:labelName:type:restrictionValue:];
    if (nameCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [STRestrictionItem initWithConfiguration:restrictionKey:labelName:type:restrictionValue:];
  if (!keyCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (nameCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [STRestrictionItem initWithConfiguration:restrictionKey:labelName:type:restrictionValue:];
LABEL_4:
  v26.receiver = self;
  v26.super_class = STRestrictionItem;
  v16 = [(STRestrictionItem *)&v26 init];
  if (v16)
  {
    v17 = [configurationCopy copy];
    rmConfiguration = v16->_rmConfiguration;
    v16->_rmConfiguration = v17;

    v19 = [keyCopy copy];
    payloadKey = v16->_payloadKey;
    v16->_payloadKey = v19;

    v21 = [nameCopy copy];
    uiLabel = v16->_uiLabel;
    v16->_uiLabel = v21;

    v16->_restrictionType = type;
    v23 = [valueCopy copy];
    otherInfo = v16->_otherInfo;
    v16->_otherInfo = v23;
  }

  return v16;
}

- (unint64_t)hash
{
  rmConfiguration = [(STRestrictionItem *)self rmConfiguration];
  v4 = [rmConfiguration hash];
  payloadKey = [(STRestrictionItem *)self payloadKey];
  v6 = [payloadKey hash];

  return v6 + v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    rmConfiguration = [v5 rmConfiguration];
    rmConfiguration2 = [(STRestrictionItem *)self rmConfiguration];
    if ([rmConfiguration isEqualToString:rmConfiguration2])
    {
      payloadKey = [v5 payloadKey];
      payloadKey2 = [(STRestrictionItem *)self payloadKey];
      v10 = [payloadKey isEqualToString:payloadKey2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  rmConfiguration = [(STRestrictionItem *)self rmConfiguration];
  payloadKey = [(STRestrictionItem *)self payloadKey];
  v7 = [v3 stringWithFormat:@"<%@:%p Conf:%@ Key:%@>", v4, self, rmConfiguration, payloadKey];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  rmConfiguration = self->_rmConfiguration;
  payloadKey = self->_payloadKey;
  uiLabel = self->_uiLabel;
  restrictionType = self->_restrictionType;
  otherInfo = self->_otherInfo;

  return [v4 initWithConfiguration:rmConfiguration restrictionKey:payloadKey labelName:uiLabel type:restrictionType restrictionValue:otherInfo];
}

- (void)initWithConfiguration:restrictionKey:labelName:type:restrictionValue:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"configuration" object:? file:? lineNumber:? description:?];
}

- (void)initWithConfiguration:restrictionKey:labelName:type:restrictionValue:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"key" object:? file:? lineNumber:? description:?];
}

- (void)initWithConfiguration:restrictionKey:labelName:type:restrictionValue:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"labelName" object:? file:? lineNumber:? description:?];
}

@end