@interface INCodableScalarAttribute
@end

@implementation INCodableScalarAttribute

WFVariableStringParameterState *__90__INCodableScalarAttribute_Workflow__wf_parameterStateForIntentValue_parameterDefinition___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFVariableString alloc] initWithString:v2];

  v4 = [[WFVariableStringParameterState alloc] initWithVariableString:v3];

  return v4;
}

@end