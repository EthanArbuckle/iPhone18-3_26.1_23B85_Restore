@interface WFStaccatoActionTemplateParameterValueSection
@end

@implementation WFStaccatoActionTemplateParameterValueSection

id __95__WFStaccatoActionTemplateParameterValueSection_WorkflowKit__initWithSection_action_parameter___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D7A128];
  v4 = a2;
  v5 = [[v3 alloc] initWithAction:*(a1 + 32) state:v4 parameter:*(a1 + 40)];

  return v5;
}

@end