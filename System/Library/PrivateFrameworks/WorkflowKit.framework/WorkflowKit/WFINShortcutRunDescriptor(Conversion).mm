@interface WFINShortcutRunDescriptor(Conversion)
- (void)createWorkflowWithEnvironment:()Conversion database:completionHandler:;
- (void)donateRunInteractionWithDatabase:()Conversion workflowReference:completionHandler:;
@end

@implementation WFINShortcutRunDescriptor(Conversion)

- (void)donateRunInteractionWithDatabase:()Conversion workflowReference:completionHandler:
{
  v6 = a5;
  shortcut = [self shortcut];
  intent = [shortcut intent];

  if (intent)
  {
    _init = [objc_alloc(MEMORY[0x1E696E8B8]) _init];
    objc_storeStrong(&_init[*MEMORY[0x1E696EAF0]], intent);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __110__WFINShortcutRunDescriptor_Conversion__donateRunInteractionWithDatabase_workflowReference_completionHandler___block_invoke;
    v10[3] = &unk_1E837FA10;
    v11 = intent;
    v12 = v6;
    [_init donateInteractionWithCompletion:v10];
  }
}

- (void)createWorkflowWithEnvironment:()Conversion database:completionHandler:
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a5;
  shortcut = [self shortcut];
  v9 = +[WFActionRegistry sharedRegistry];
  v25 = 0;
  v10 = [v9 createActionWithShortcut:shortcut error:&v25];
  v11 = v25;

  if (v10)
  {
    v12 = [WFWorkflow alloc];
    v13 = objc_opt_new();
    v24 = 0;
    v14 = [(WFWorkflow *)v12 initWithRecord:v13 reference:0 storageProvider:0 migrateIfNecessary:0 environment:a3 error:&v24];
    v15 = v24;

    if (!v14)
    {
      v7[2](v7, 0, v15);
LABEL_13:

      goto LABEL_14;
    }

    [(WFWorkflow *)v14 addAction:v10];
    userActivity = [shortcut userActivity];

    if (userActivity)
    {
      userActivity2 = [shortcut userActivity];
      title = [userActivity2 title];
    }

    else
    {
      intent = [shortcut intent];

      if (!intent)
      {
LABEL_12:
        (v7)[2](v7, v14, 0);
        goto LABEL_13;
      }

      userActivity2 = [shortcut intent];
      title = [userActivity2 _title];
    }

    v21 = title;
    v22 = [title copy];
    [(WFWorkflow *)v14 setName:v22];

    goto LABEL_12;
  }

  v19 = getWFGeneralLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v27 = "[WFINShortcutRunDescriptor(Conversion) createWorkflowWithEnvironment:database:completionHandler:]";
    v28 = 2112;
    v29 = shortcut;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_ERROR, "%s Unable to create action from INShortcut: %@, error: %@", buf, 0x20u);
  }

  v7[2](v7, 0, v11);
LABEL_14:

  v23 = *MEMORY[0x1E69E9840];
}

@end