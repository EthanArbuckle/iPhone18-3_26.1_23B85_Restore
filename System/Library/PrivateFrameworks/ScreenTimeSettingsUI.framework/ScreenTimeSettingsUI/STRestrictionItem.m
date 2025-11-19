@interface STRestrictionItem
- (BOOL)isEqual:(id)a3;
- (STRestrictionItem)initWithConfiguration:(id)a3 restrictionKey:(id)a4 labelName:(id)a5 type:(unint64_t)a6 restrictionValue:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation STRestrictionItem

- (STRestrictionItem)initWithConfiguration:(id)a3 restrictionKey:(id)a4 labelName:(id)a5 type:(unint64_t)a6 restrictionValue:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:
    [STRestrictionItem initWithConfiguration:restrictionKey:labelName:type:restrictionValue:];
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [STRestrictionItem initWithConfiguration:restrictionKey:labelName:type:restrictionValue:];
  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
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
    v17 = [v12 copy];
    rmConfiguration = v16->_rmConfiguration;
    v16->_rmConfiguration = v17;

    v19 = [v13 copy];
    payloadKey = v16->_payloadKey;
    v16->_payloadKey = v19;

    v21 = [v14 copy];
    uiLabel = v16->_uiLabel;
    v16->_uiLabel = v21;

    v16->_restrictionType = a6;
    v23 = [v15 copy];
    otherInfo = v16->_otherInfo;
    v16->_otherInfo = v23;
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(STRestrictionItem *)self rmConfiguration];
  v4 = [v3 hash];
  v5 = [(STRestrictionItem *)self payloadKey];
  v6 = [v5 hash];

  return v6 + v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 rmConfiguration];
    v7 = [(STRestrictionItem *)self rmConfiguration];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v5 payloadKey];
      v9 = [(STRestrictionItem *)self payloadKey];
      v10 = [v8 isEqualToString:v9];
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
  v5 = [(STRestrictionItem *)self rmConfiguration];
  v6 = [(STRestrictionItem *)self payloadKey];
  v7 = [v3 stringWithFormat:@"<%@:%p Conf:%@ Key:%@>", v4, self, v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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