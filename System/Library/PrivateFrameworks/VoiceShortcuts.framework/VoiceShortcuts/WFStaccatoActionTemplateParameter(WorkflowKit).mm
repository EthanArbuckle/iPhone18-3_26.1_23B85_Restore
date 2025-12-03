@interface WFStaccatoActionTemplateParameter(WorkflowKit)
- (id)initWithLinkAction:()WorkflowKit parameter:;
@end

@implementation WFStaccatoActionTemplateParameter(WorkflowKit)

- (id)initWithLinkAction:()WorkflowKit parameter:
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplate_WorkflowKit.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"action"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFStaccatoActionTemplate_WorkflowKit.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"parameter"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = &off_28460C280;
  v10 = objc_msgSendSuper2(&v21, sel_init);
  if (v10)
  {
    v11 = [v9 key];
    v12 = [v7 parameterStateForKey:v11];

    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277D7A128]) initWithAction:v7 state:v12 parameter:v9];
    }

    else
    {
      v13 = 0;
    }

    v14 = [v9 key];
    identifier = [v7 identifier];
    localizedLabel = [v9 localizedLabel];
    localizedDescription = [v9 localizedDescription];
    v10 = [v10 initWithKey:v14 actionIdentifier:identifier localizedLabel:localizedLabel localizedDescription:localizedDescription defaultValue:v13];
  }

  return v10;
}

@end