@interface WFRunWorkflowURLHandler
+ (id)workflowWithInputParameters:(id)parameters error:(id *)error;
+ (id)workflowWithName:(id)name identifier:(id)identifier error:(id *)error;
+ (void)registerOpenWorkflowHandler:(id)handler;
+ (void)registerRunWorkflowHandler:(id)handler;
@end

@implementation WFRunWorkflowURLHandler

+ (id)workflowWithName:(id)name identifier:(id)identifier error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  identifierCopy = identifier;
  v9 = +[WFDatabase defaultDatabase];
  v10 = v9;
  if (identifierCopy)
  {
    v11 = [v9 referenceForWorkflowID:identifierCopy];
    if (v11)
    {
      goto LABEL_5;
    }
  }

  if (nameCopy)
  {
    v11 = [v10 uniqueVisibleReferenceForWorkflowName:nameCopy];
    if (v11)
    {
LABEL_5:
      v12 = v11;
      goto LABEL_9;
    }

    v14 = WFLocalizedString(@"Could not find the specified shortcut.");
    v15 = MEMORY[0x1E696AEC0];
    v16 = WFLocalizedString(@"Could not find the shortcut “%@.”");
    nameCopy = [v15 stringWithFormat:v16, nameCopy];
  }

  else
  {
    nameCopy = WFLocalizedString(@"Could not find the specified shortcut.");
  }

  v17 = MEMORY[0x1E696ABC0];
  v18 = *MEMORY[0x1E696A250];
  v22 = *MEMORY[0x1E696A578];
  v23[0] = nameCopy;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  *error = [v17 errorWithDomain:v18 code:4 userInfo:v19];

  v12 = 0;
LABEL_9:

  v20 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)workflowWithInputParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v7 = [parametersCopy objectForKey:@"id"];
  v8 = [parametersCopy objectForKey:@"name"];

  v9 = [self workflowWithName:v8 identifier:v7 error:error];

  return v9;
}

+ (void)registerOpenWorkflowHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = getWFGeneralLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "+[WFRunWorkflowURLHandler registerOpenWorkflowHandler:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Registering the open-shortcut handler", buf, 0xCu);
  }

  v6 = +[WFInterchangeManager sharedManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__WFRunWorkflowURLHandler_registerOpenWorkflowHandler___block_invoke;
  v9[3] = &unk_1E837D228;
  v10 = handlerCopy;
  selfCopy = self;
  v7 = handlerCopy;
  [v6 registerHandler:v9 forIncomingRequestsWithAction:@"open-shortcut" legacyAction:@"open-workflow" scheme:0];

  v8 = *MEMORY[0x1E69E9840];
}

void __55__WFRunWorkflowURLHandler_registerOpenWorkflowHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFGeneralLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "+[WFRunWorkflowURLHandler registerOpenWorkflowHandler:]_block_invoke";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Received the open-shortcut request", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  v6 = [v3 parameters];
  v16 = 0;
  v7 = [v5 workflowWithInputParameters:v6 error:&v16];
  v8 = v16;

  if (v7)
  {
    v9 = [v3 parameters];
    v10 = [v9 objectForKey:@"actionIndex"];

    v11 = [v3 parameters];
    v12 = [v11 objectForKey:@"actionErrorMessage"];

    (*(*(a1 + 32) + 16))();
LABEL_9:

    goto LABEL_10;
  }

  v13 = getWFGeneralLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "+[WFRunWorkflowURLHandler registerOpenWorkflowHandler:]_block_invoke";
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_INFO, "%s Received the open-shortcut request but failed to find the workflow to open", buf, 0xCu);
  }

  v14 = [v3 failureHandler];

  if (v14)
  {
    v10 = [v3 failureHandler];
    (v10)[2](v10, v8);
    goto LABEL_9;
  }

LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
}

+ (void)registerRunWorkflowHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[WFInterchangeManager sharedManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__WFRunWorkflowURLHandler_registerRunWorkflowHandler___block_invoke;
  v7[3] = &unk_1E837D228;
  v8 = handlerCopy;
  selfCopy = self;
  v6 = handlerCopy;
  [v5 registerHandler:v7 forIncomingRequestsWithAction:@"run-shortcut" legacyAction:@"run-workflow" scheme:0];
}

void __54__WFRunWorkflowURLHandler_registerRunWorkflowHandler___block_invoke(uint64_t a1, void *a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 parameters];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__WFRunWorkflowURLHandler_registerRunWorkflowHandler___block_invoke_2;
  aBlock[3] = &unk_1E837D200;
  v5 = v4;
  v27 = v5;
  v6 = v3;
  v28 = v6;
  v25 = *(a1 + 32);
  v7 = v25;
  v29 = v25;
  v8 = _Block_copy(aBlock);
  v9 = [v5 objectForKey:@"input"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      (*(v8 + 2))(v8, 0, 0);
      goto LABEL_17;
    }

    v10 = v9;
    if ([v10 isEqualToString:@"text"] && (objc_msgSend(v5, "objectForKey:", @"text"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      v12 = MEMORY[0x1E6996D40];
      v13 = MEMORY[0x1E6996D58];
      v14 = [v5 objectForKey:@"text"];
      v15 = [v13 itemWithObject:v14];
      v31[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
      v17 = [v12 collectionWithItems:v16];
      (*(v8 + 2))(v8, v17, 0);
    }

    else
    {
      if ([v10 isEqualToString:{@"clipboard", v25}])
      {
        v18 = MEMORY[0x1E6996D40];
        v14 = [(objc_class *)getUIPasteboardClass_61291() generalPasteboard];
        [v18 generateCollectionFromPasteboard:v14 completionHandler:v8];
LABEL_16:

        goto LABEL_17;
      }

      if ([v10 isEqualToString:@"pasteboard"] && (objc_msgSend(v5, "objectForKey:", @"pasteboard"), v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
      {
        v20 = MEMORY[0x1E6996D40];
        UIPasteboardClass_61291 = getUIPasteboardClass_61291();
        v14 = [v5 objectForKey:@"pasteboard"];
        v15 = [(objc_class *)UIPasteboardClass_61291 pasteboardWithName:v14 create:0];
        [v20 generateCollectionFromPasteboard:v15 completionHandler:v8];
      }

      else
      {
        v22 = MEMORY[0x1E6996D40];
        v14 = [MEMORY[0x1E6996D58] itemWithObject:v10];
        v30 = v14;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
        v23 = [v22 collectionWithItems:v15];
        (*(v8 + 2))(v8, v23, 0);
      }
    }

    goto LABEL_16;
  }

  (*(v8 + 2))(v8, v9, 0);
LABEL_17:

  v24 = *MEMORY[0x1E69E9840];
}

void __54__WFRunWorkflowURLHandler_registerRunWorkflowHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:@"source"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [*(a1 + 40) sourceName];
  }

  v10 = v9;

  v11 = *(a1 + 56);
  v12 = *(a1 + 32);
  v21 = v6;
  v13 = [v11 workflowWithInputParameters:v12 error:&v21];
  v14 = v21;

  if (v13)
  {
    v15 = *(a1 + 48);
    v16 = [*(a1 + 40) isInternalCallbackRequest];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__WFRunWorkflowURLHandler_registerRunWorkflowHandler___block_invoke_3;
    v19[3] = &unk_1E837D1D8;
    v20 = *(a1 + 40);
    (*(v15 + 16))(v15, v13, v16, v5, v19, v10);
    v17 = v20;
LABEL_8:

    goto LABEL_9;
  }

  v18 = [*(a1 + 40) failureHandler];

  if (v18)
  {
    v17 = [*(a1 + 40) failureHandler];
    (v17)[2](v17, v14);
    goto LABEL_8;
  }

LABEL_9:
}

void __54__WFRunWorkflowURLHandler_registerRunWorkflowHandler___block_invoke_3(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (!v8 || (a3 & 1) != 0)
  {
    v11 = v7;
    if (!v7)
    {
      v11 = objc_opt_new();
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__WFRunWorkflowURLHandler_registerRunWorkflowHandler___block_invoke_4;
    v12[3] = &unk_1E837D1B0;
    v13 = *(a1 + 32);
    v14 = a3;
    [v11 getStringRepresentation:v12];
    if (!v7)
    {
    }
  }

  else
  {
    v9 = [*(a1 + 32) failureHandler];

    if (v9)
    {
      v10 = [*(a1 + 32) failureHandler];
      (v10)[2](v10, v8);
    }
  }
}

void __54__WFRunWorkflowURLHandler_registerRunWorkflowHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 length])
  {
    v8 = @"result";
    v9[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) successHandler];

  if (v5)
  {
    v6 = [*(a1 + 32) successHandler];
    (v6)[2](v6, v4, *(a1 + 40));
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end