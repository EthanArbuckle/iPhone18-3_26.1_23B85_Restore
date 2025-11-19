@interface INIntentCodableDescription
@end

@implementation INIntentCodableDescription

void *__103__INIntentCodableDescription_Workflow__wf_relationResourceDefinitionForAttribute_parameters_overrides___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 parentCodableAttribute];
  v7 = [v6 propertyName];
  v8 = [v3 objectForKeyedSubscript:v7];

  v9 = [*(a1 + 40) parentCodableAttribute];
  v10 = [v9 wf_parameterStateForIntentValue:v5 parameterDefinition:v8];

  v11 = [v10 serializedRepresentation];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v5;
  }

  v14 = v13;

  return v13;
}

@end