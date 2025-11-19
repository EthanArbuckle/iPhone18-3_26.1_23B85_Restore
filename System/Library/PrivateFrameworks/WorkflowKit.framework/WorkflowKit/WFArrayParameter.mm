@interface WFArrayParameter
- (WFArrayParameter)initWithDefinition:(id)a3;
- (id)defaultSerializedRepresentation;
- (id)defaultSupportedVariableTypes;
@end

@implementation WFArrayParameter

- (id)defaultSupportedVariableTypes
{
  if ([(WFArrayParameter *)self supportsVariables])
  {
    v2 = [objc_opt_class() allInsertableVariableTypes];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)defaultSerializedRepresentation
{
  v6.receiver = self;
  v6.super_class = WFArrayParameter;
  v2 = [(WFParameter *)&v6 defaultSerializedRepresentation];
  v3 = v2;
  if (!v2)
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  v4 = [v2 if_map:&__block_literal_global_23615];

  return v4;
}

id __51__WFArrayParameter_defaultSerializedRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = v2;
  }

  else
  {
    v3 = [v2 localize];
  }

  v4 = v3;

  return v4;
}

- (WFArrayParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = WFArrayParameter;
  v5 = [(WFParameter *)&v18 initWithDefinition:v4];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = [v4 objectForKey:@"AllowedValueTypes"];
    v8 = objc_opt_class();
    v9 = WFEnforceClass_1501(v7, v8);
    v10 = [v6 initWithArray:v9];
    allowedValueTypes = v5->_allowedValueTypes;
    v5->_allowedValueTypes = v10;

    v12 = [v4 objectForKey:@"SupportsVariables"];
    v13 = objc_opt_class();
    v14 = WFEnforceClass_1501(v12, v13);

    if (v14)
    {
      v15 = [v14 BOOLValue];
    }

    else
    {
      v15 = 1;
    }

    v5->_supportsVariables = v15;
    v16 = v5;
  }

  return v5;
}

@end