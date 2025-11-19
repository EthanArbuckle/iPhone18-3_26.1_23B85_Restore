@interface WFContextualActionRunDescriptor
@end

@implementation WFContextualActionRunDescriptor

void __104__WFContextualActionRunDescriptor_Conversion__createWorkflowWithEnvironment_database_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_17;
  }

  v4 = [WFWorkflow alloc];
  v5 = objc_opt_new();
  v6 = *(a1 + 56);
  v23 = 0;
  v7 = [(WFWorkflow *)v4 initWithRecord:v5 reference:0 storageProvider:0 migrateIfNecessary:0 environment:v6 error:&v23];
  v8 = v23;

  v9 = [v3 localizedName];
  [(WFWorkflow *)v7 setName:v9];

  v10 = [*(a1 + 32) identifier];
  if (([v10 isEqualToString:@"is.workflow.actions.runworkflow"] & 1) == 0)
  {
    v11 = [*(a1 + 32) associatedAppBundleIdentifier];
    if (![v11 isEqualToString:*MEMORY[0x1E69E0EC0]])
    {
      v21 = [*(a1 + 32) associatedAppBundleIdentifier];
      v22 = [v21 isEqualToString:*MEMORY[0x1E69E0EE8]];

      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

LABEL_6:
  v12 = [*(a1 + 32) icon];
  v13 = [v12 systemName];
  v14 = [(WFWorkflow *)v7 icon];
  [v14 setSymbolOverride:v13];

LABEL_7:
  if (v7)
  {
    [(WFWorkflow *)v7 addAction:v3];
    v15 = *(a1 + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WFWorkflow *)v7 setSource:@"ShortcutSourceAppShortcut"];
    }

    v16 = [*(a1 + 32) outputsFiles];
    [*(a1 + 40) surface];
    v17 = WFContextualActionSurfaceSupportsOutput();
    if (v16 && (v17 & 1) == 0)
    {
      v18 = +[WFActionRegistry sharedRegistry];
      v19 = [v18 createActionWithIdentifier:@"is.workflow.actions.showresult" serializedParameters:0];

      [(WFWorkflow *)v7 addAction:v19];
      [v19 unlockInputParameter];
      [v19 snapInputParameterIfNecessary];
    }

    v20 = *(*(a1 + 48) + 16);
  }

  else
  {
    v20 = *(*(a1 + 48) + 16);
  }

  v20();

LABEL_17:
}

@end