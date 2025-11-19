@interface WFStaccatoActionTemplate(WorkflowKit)
- (id)initWithIdentifier:()WorkflowKit sectionIdentifier:linkAction:;
@end

@implementation WFStaccatoActionTemplate(WorkflowKit)

- (id)initWithIdentifier:()WorkflowKit sectionIdentifier:linkAction:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_19:
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"WFStaccatoActionTemplate_WorkflowKit.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"sectionIdentifier"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  v27 = [MEMORY[0x277CCA890] currentHandler];
  [v27 handleFailureInMethod:a2 object:a1 file:@"WFStaccatoActionTemplate_WorkflowKit.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_20:
  v29 = [MEMORY[0x277CCA890] currentHandler];
  [v29 handleFailureInMethod:a2 object:a1 file:@"WFStaccatoActionTemplate_WorkflowKit.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"linkAction"}];

LABEL_4:
  v33.receiver = a1;
  v33.super_class = &off_28460BEE0;
  v12 = objc_msgSendSuper2(&v33, sel_init);
  if (v12)
  {
    v13 = v11;
    v14 = v13;
    if (v11)
    {
      if ([v13 conformsToProtocol:&unk_284617330])
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (objc_opt_respondsToSelector())
    {
      v17 = [v16 hiddenParameterKeysForStaccato];
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    v18 = v17;
    v19 = [v14 parameters];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __89__WFStaccatoActionTemplate_WorkflowKit__initWithIdentifier_sectionIdentifier_linkAction___block_invoke;
    v30[3] = &unk_2788FFEF8;
    v20 = v18;
    v31 = v20;
    v21 = v14;
    v32 = v21;
    v22 = [v19 if_compactMap:v30];

    if (objc_opt_respondsToSelector())
    {
      [v16 staccatoNameOverride];
    }

    else
    {
      [v21 localizedName];
    }
    v23 = ;
    v24 = [v21 identifier];
    v25 = [v21 localizedDescriptionSummary];
    v12 = [v12 initWithIdentifier:v9 sectionIdentifier:v10 actionIdentifier:v24 localizedTitle:v23 localizedDescription:v25 parameters:v22];
  }

  return v12;
}

@end