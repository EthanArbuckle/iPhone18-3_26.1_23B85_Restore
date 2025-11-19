@interface INCodableObjectAttribute
@end

@implementation INCodableObjectAttribute

id __90__INCodableObjectAttribute_Workflow__wf_parameterStateForIntentValue_parameterDefinition___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 metadata];
  v6 = [v5 wf_parameterStateForIntentValue:v4 parameterDefinition:*(a1 + 40)];

  return v6;
}

@end