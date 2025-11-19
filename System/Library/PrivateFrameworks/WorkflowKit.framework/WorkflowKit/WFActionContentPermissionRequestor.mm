@interface WFActionContentPermissionRequestor
- (WFAction)action;
- (WFActionContentPermissionRequestor)initWithAction:(id)a3;
- (WFContactStore)contactStore;
- (void)_allowNetworkAccessAfterPromptingForURLs:(id)a3 completionHandler:(id)a4;
- (void)allowContactsAccessWithCompletionHandler:(id)a3;
- (void)allowNetworkAccessAfterPromptingForURLs:(id)a3 completionHandler:(id)a4;
- (void)requestUserConsentToLoadWebContentAtURL:(id)a3 completionHandler:(id)a4;
@end

@implementation WFActionContentPermissionRequestor

- (WFAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (WFContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_opt_new();
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (void)allowNetworkAccessAfterPromptingForURLs:(id)a3 completionHandler:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (![v9 count])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFActionContentPermissionRequestor.m" lineNumber:115 description:@"Programming error: at least 1 URLs must be passed into allowNetworkAccessAfterPromptingForURLs:"];
  }

  [(WFActionContentPermissionRequestor *)self _allowNetworkAccessAfterPromptingForURLs:v9 completionHandler:v7];
}

- (void)_allowNetworkAccessAfterPromptingForURLs:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 if_objectsPassingTest:&__block_literal_global_54807];
  v9 = [v7 count];

  if (v9 && ![v8 count])
  {
    v6[2](v6, 1, 0);
  }

  else
  {
    v10 = MEMORY[0x1E6996F90];
    v11 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v30 = 0;
    v12 = [v10 locationWithURLs:v11 error:&v30];
    v13 = v30;

    if (v13)
    {
      (v6)[2](v6, 0, v13);
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __97__WFActionContentPermissionRequestor__allowNetworkAccessAfterPromptingForURLs_completionHandler___block_invoke_2;
      aBlock[3] = &unk_1E837BE38;
      v14 = v6;
      v29 = v14;
      v15 = _Block_copy(aBlock);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __97__WFActionContentPermissionRequestor__allowNetworkAccessAfterPromptingForURLs_completionHandler___block_invoke_3;
      v25[3] = &unk_1E837DB60;
      v26 = v14;
      v27 = v15;
      v16 = v15;
      v17 = _Block_copy(v25);
      v18 = v17;
      if (v12)
      {
        v19 = [(WFActionContentPermissionRequestor *)self action];
        v20 = [(WFActionContentPermissionRequestor *)self userInterface];
        v21 = [(WFActionContentPermissionRequestor *)self action];
        v22 = [v21 runningDelegate];
        [v22 contentItemCache];
        v23 = v24 = v16;
        [v19 performSmartPromptChecksWithUserInterface:v20 contentDestination:v12 contentItemCache:v23 isWebpageCoercion:1 completionHandler:v18];

        v16 = v24;
      }

      else
      {
        (*(v17 + 2))(v17, 0);
      }
    }
  }
}

void __97__WFActionContentPermissionRequestor__allowNetworkAccessAfterPromptingForURLs_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5 = [MEMORY[0x1E69E0C70] sharedManager];
    v6 = [MEMORY[0x1E695DFD8] setWithObject:@"WFRemoteServerAccessResource"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __97__WFActionContentPermissionRequestor__allowNetworkAccessAfterPromptingForURLs_completionHandler___block_invoke_4;
    v7[3] = &unk_1E837D0D0;
    v8 = *(a1 + 40);
    [v5 requestSandboxExtensionForRunningActionWithAccessResources:v6 completion:v7];
  }
}

- (void)requestUserConsentToLoadWebContentAtURL:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isFileURL])
  {
    v8 = [MEMORY[0x1E6996D78] webpagesLocation];
  }

  else
  {
    v20 = 0;
    v8 = [MEMORY[0x1E6996F90] locationWithURL:v6 error:&v20];
    v9 = v20;
    if (!v8)
    {
      v10 = [v6 scheme];
      if ([v10 isEqualToString:@"data"])
      {
      }

      else
      {
        v11 = [v6 scheme];
        v12 = [v11 isEqualToString:@"about"];

        if (!v12)
        {
          v7[2](v7, 0, v9);
          goto LABEL_10;
        }
      }

      v8 = [MEMORY[0x1E6996D78] webpagesLocation];
    }
  }

  v13 = [(WFActionContentPermissionRequestor *)self action];
  v14 = [(WFActionContentPermissionRequestor *)self userInterface];
  v15 = [(WFActionContentPermissionRequestor *)self action];
  v16 = [v15 runningDelegate];
  v17 = [v16 contentItemCache];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__WFActionContentPermissionRequestor_requestUserConsentToLoadWebContentAtURL_completionHandler___block_invoke;
  v18[3] = &unk_1E837BE38;
  v19 = v7;
  [v13 performSmartPromptChecksWithUserInterface:v14 contentDestination:v8 contentItemCache:v17 isWebpageCoercion:1 completionHandler:v18];

  v9 = v8;
LABEL_10:
}

- (void)allowContactsAccessWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69E0C70] sharedManager];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:@"WFContactAccessResource"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__WFActionContentPermissionRequestor_allowContactsAccessWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E837BE10;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 requestSandboxExtensionForRunningActionWithAccessResources:v6 completion:v8];
}

void __79__WFActionContentPermissionRequestor_allowContactsAccessWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 40);

    v4(v5, 0);
  }

  else
  {
    v6 = [*(a1 + 32) contactStore];
    (*(v3 + 16))(v3, v6, 0);
  }
}

- (WFActionContentPermissionRequestor)initWithAction:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WFActionContentPermissionRequestor;
  v5 = [(WFActionContentPermissionRequestor *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_action, v4);
    v7 = [v4 userInterface];
    userInterface = v6->_userInterface;
    v6->_userInterface = v7;

    if (!v6->_userInterface)
    {
      v9 = getWFSecurityLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v15 = "[WFActionContentPermissionRequestor initWithAction:]";
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Creating a WFActionContentPermissionRequestor without userInterface. We won't be able to present any prompts, and requests will be denied.", buf, 0xCu);
      }
    }

    v10 = v6;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

@end