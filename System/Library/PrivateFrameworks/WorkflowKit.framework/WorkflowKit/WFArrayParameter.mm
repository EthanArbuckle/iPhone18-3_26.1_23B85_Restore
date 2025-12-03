@interface WFArrayParameter
- (WFArrayParameter)initWithDefinition:(id)definition;
- (id)defaultSerializedRepresentation;
- (id)defaultSupportedVariableTypes;
@end

@implementation WFArrayParameter

- (id)defaultSupportedVariableTypes
{
  if ([(WFArrayParameter *)self supportsVariables])
  {
    allInsertableVariableTypes = [objc_opt_class() allInsertableVariableTypes];
  }

  else
  {
    allInsertableVariableTypes = 0;
  }

  return allInsertableVariableTypes;
}

- (id)defaultSerializedRepresentation
{
  v6.receiver = self;
  v6.super_class = WFArrayParameter;
  defaultSerializedRepresentation = [(WFParameter *)&v6 defaultSerializedRepresentation];
  v3 = defaultSerializedRepresentation;
  if (!defaultSerializedRepresentation)
  {
    defaultSerializedRepresentation = MEMORY[0x1E695E0F0];
  }

  v4 = [defaultSerializedRepresentation if_map:&__block_literal_global_23615];

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

- (WFArrayParameter)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v18.receiver = self;
  v18.super_class = WFArrayParameter;
  v5 = [(WFParameter *)&v18 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = [definitionCopy objectForKey:@"AllowedValueTypes"];
    v8 = objc_opt_class();
    v9 = WFEnforceClass_1501(v7, v8);
    v10 = [v6 initWithArray:v9];
    allowedValueTypes = v5->_allowedValueTypes;
    v5->_allowedValueTypes = v10;

    v12 = [definitionCopy objectForKey:@"SupportsVariables"];
    v13 = objc_opt_class();
    v14 = WFEnforceClass_1501(v12, v13);

    if (v14)
    {
      bOOLValue = [v14 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v5->_supportsVariables = bOOLValue;
    v16 = v5;
  }

  return v5;
}

@end