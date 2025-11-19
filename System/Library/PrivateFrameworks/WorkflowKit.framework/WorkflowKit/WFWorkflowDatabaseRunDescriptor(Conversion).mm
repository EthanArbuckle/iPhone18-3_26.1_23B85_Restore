@interface WFWorkflowDatabaseRunDescriptor(Conversion)
- (id)workflowReferenceWithDatabase:()Conversion error:;
- (void)createWorkflowWithEnvironment:()Conversion database:completionHandler:;
- (void)donateRunInteractionWithDatabase:()Conversion workflowReference:completionHandler:;
@end

@implementation WFWorkflowDatabaseRunDescriptor(Conversion)

- (void)donateRunInteractionWithDatabase:()Conversion workflowReference:completionHandler:
{
  v6 = a4;
  v7 = a5;
  v8 = v7;
  if (v6)
  {
    v9 = [objc_alloc(MEMORY[0x1E696E8B8]) _init];
    v10 = [objc_alloc(MEMORY[0x1E696E9B0]) initWithWorkflowReference:v6];
    v11 = *MEMORY[0x1E696EAF0];
    v12 = *&v9[v11];
    *&v9[v11] = v10;

    v13 = [v6 identifier];
    [v9 setGroupIdentifier:v13];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __116__WFWorkflowDatabaseRunDescriptor_Conversion__donateRunInteractionWithDatabase_workflowReference_completionHandler___block_invoke;
    v14[3] = &unk_1E837FA10;
    v15 = v6;
    v16 = v8;
    [v9 donateInteractionWithCompletion:v14];
  }

  else
  {
    (*(v7 + 2))(v7);
  }
}

- (void)createWorkflowWithEnvironment:()Conversion database:completionHandler:
{
  v8 = a4;
  v9 = a5;
  v19 = 0;
  v10 = [a1 workflowReferenceWithDatabase:v8 error:&v19];
  v11 = v19;
  v12 = v11;
  if (v10)
  {
    v18 = v11;
    v13 = [v8 workflowRecordForDescriptor:v10 error:&v18];
    v14 = v18;

    if (v13)
    {
      v17 = v14;
      v15 = [[WFWorkflow alloc] initWithRecord:v13 reference:v10 storageProvider:0 migrateIfNecessary:1 environment:a3 error:&v17];
      v16 = v17;

      v9[2](v9, v15, v16);
      v14 = v16;
    }

    else
    {
      v9[2](v9, 0, v14);
    }

    v12 = v14;
  }

  else
  {
    v9[2](v9, 0, v11);
  }
}

- (id)workflowReferenceWithDatabase:()Conversion error:
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 identifier];

  if (v7)
  {
    v8 = [a1 identifier];
    v7 = [v6 referenceForWorkflowID:v8];
  }

  v9 = [a1 name];

  if (v9 && !v7)
  {
    v10 = [a1 name];
    v7 = [v6 uniqueVisibleReferenceForWorkflowName:v10];
  }

  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v12 = getWFXPCRunnerLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[WFWorkflowDatabaseRunDescriptor(Conversion) workflowReferenceWithDatabase:error:]";
      v26 = 2112;
      v27 = a1;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Couldn't find shortcut with descriptor: %@", buf, 0x16u);
    }

    if (a4)
    {
      v13 = [a1 name];

      if (v13)
      {
        v14 = MEMORY[0x1E696AEC0];
        v15 = WFLocalizedString(@"Unable to find a shortcut named “%@”.");
        v16 = [a1 name];
        v17 = [v14 localizedStringWithFormat:v15, v16];
      }

      else
      {
        v17 = WFLocalizedString(@"Unable to find the specified shortcut.");
      }

      v18 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A578];
      v23 = v17;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      *a4 = [v18 errorWithDomain:@"WFDatabaseErrorDomain" code:3 userInfo:v19];
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v7;
}

@end