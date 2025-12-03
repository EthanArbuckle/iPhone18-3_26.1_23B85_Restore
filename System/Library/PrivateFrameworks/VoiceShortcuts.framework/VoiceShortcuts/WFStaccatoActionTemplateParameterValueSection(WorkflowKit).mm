@interface WFStaccatoActionTemplateParameterValueSection(WorkflowKit)
- (uint64_t)initWithSection:()WorkflowKit action:parameter:;
@end

@implementation WFStaccatoActionTemplateParameterValueSection(WorkflowKit)

- (uint64_t)initWithSection:()WorkflowKit action:parameter:
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  items = [v10 items];
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __95__WFStaccatoActionTemplateParameterValueSection_WorkflowKit__initWithSection_action_parameter___block_invoke;
  v24 = &unk_2788FFF20;
  v25 = v8;
  v26 = v9;
  v12 = v9;
  v13 = v8;
  v14 = [items if_compactMap:&v21];

  title = [v10 title];
  subtitle = [v10 subtitle];
  image = [v10 image];

  wf_image = [image wf_image];
  v19 = [self initWithTitle:title subtitle:subtitle image:wf_image values:v14];

  return v19;
}

@end