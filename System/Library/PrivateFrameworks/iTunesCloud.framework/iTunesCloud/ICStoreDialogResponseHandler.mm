@interface ICStoreDialogResponseHandler
- (BOOL)isEqual:(id)equal;
- (ICStoreDialogResponseHandler)init;
- (ICStoreDialogResponseHandler)initWithCoder:(id)coder;
- (ICStoreDialogResponseHandler)initWithConfiguration:(id)configuration;
- (unint64_t)hash;
- (void)_handleAuthenticationStoreDialogResponse:(id)response usingRequestContext:(id)context withDialogTimeout:(double)timeout withCompletionHandler:(id)handler;
- (void)_handleBuyButtonAction:(id)action usingRequestContext:(id)context withCompletionHandler:(id)handler;
- (void)_handleDefaultStoreDialogResponse:(id)response usingRequestContext:(id)context withDialogTimeout:(double)timeout withCompletionHandler:(id)handler;
- (void)_handleFamilyPermissionButtonAction:(id)action usingRequestContext:(id)context completion:(id)completion;
- (void)_handleGotoButtonAction:(id)action usingRequestContext:(id)context withCompletionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)handleAMSDialogRequest:(id)request completion:(id)completion;
- (void)handleButtonAction:(id)action usingRequestContext:(id)context withCompletionHandler:(id)handler;
- (void)handleStoreDialogResponse:(id)response usingRequestContext:(id)context withDialogTimeout:(double)timeout withCompletionHandler:(id)handler;
@end

@implementation ICStoreDialogResponseHandler

- (ICStoreDialogResponseHandler)init
{
  v3 = objc_alloc_init(ICStoreDialogResponseHandlerConfiguration);
  v4 = [(ICStoreDialogResponseHandler *)self initWithConfiguration:v3];

  return v4;
}

- (void)_handleFamilyPermissionButtonAction:(id)action usingRequestContext:(id)context completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  contextCopy = context;
  completionCopy = completion;
  uRLString = [actionCopy URLString];
  if (uRLString)
  {
    v11 = [MEMORY[0x1E695DFF8] URLWithString:uRLString];
    v12 = +[ICUserIdentityStore defaultIdentityStore];
    identity = [contextCopy identity];
    v29 = 0;
    v14 = [v12 DSIDForUserIdentity:identity outError:&v29];
    v15 = v29;

    if (v14)
    {
      ic_sharedAccountStore = [MEMORY[0x1E6959A48] ic_sharedAccountStore];
      v28 = v15;
      v17 = [ic_sharedAccountStore ic_storeAccountForStoreAccountID:v14 error:&v28];
      v18 = v28;

      if (v17)
      {
        v30 = 0;
        v31 = &v30;
        v32 = 0x2050000000;
        v19 = getAPRequestHandlerClass_softClass;
        v33 = getAPRequestHandlerClass_softClass;
        if (!getAPRequestHandlerClass_softClass)
        {
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v35 = __getAPRequestHandlerClass_block_invoke;
          v36 = &unk_1E7BFA0A0;
          v37 = &v30;
          __getAPRequestHandlerClass_block_invoke(&buf);
          v19 = v31[3];
        }

        v20 = v19;
        _Block_object_dispose(&v30, 8);
        if (v19)
        {
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __99__ICStoreDialogResponseHandler__handleFamilyPermissionButtonAction_usingRequestContext_completion___block_invoke;
          v26[3] = &unk_1E7BF77C0;
          v27 = completionCopy;
          [v19 addRequestWithURL:v11 account:v17 completion:v26];
        }

        else
        {
          v24 = os_log_create("com.apple.amp.iTunesCloud", "Default");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_ERROR, "Failed to load APRequestHandler class - assuming not available on this platform", &buf, 2u);
          }

          v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7002 userInfo:0];
          (*(completionCopy + 2))(completionCopy, 0, v25);
        }
      }

      else
      {
        v23 = os_log_create("com.apple.amp.iTunesCloud", "Default");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v18;
          _os_log_impl(&dword_1B4491000, v23, OS_LOG_TYPE_ERROR, "Failed to resolve account for family permissions dialog. err=%{public}@", &buf, 0xCu);
        }

        (*(completionCopy + 2))(completionCopy, 0, v18);
      }

      v15 = v18;
    }

    else
    {
      v22 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_ERROR, "Failed to resolve identity for family permissions dialog. err=%{public}@", &buf, 0xCu);
      }

      (*(completionCopy + 2))(completionCopy, 0, v15);
    }
  }

  else
  {
    v21 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_DEFAULT, "missing action URL in family permissions button action - skipping", &buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __99__ICStoreDialogResponseHandler__handleFamilyPermissionButtonAction_usingRequestContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Family permissions request completed with err=%{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696AA08];
    v10 = v3;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [v6 errorWithDomain:@"ICError" code:0 userInfo:v7];
    (*(v5 + 16))(v5, 0, v8);
  }

  else
  {
    (*(v5 + 16))(v5, 1, 0);
  }
}

- (void)_handleGotoButtonAction:(id)action usingRequestContext:(id)context withCompletionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  contextCopy = context;
  handlerCopy = handler;
  subtarget = [actionCopy subtarget];
  if (subtarget && (v11 = subtarget, [actionCopy subtarget], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"background"), v12, v11, !v13))
  {
    subtarget2 = [actionCopy subtarget];
    v21 = [subtarget2 hasPrefix:@"account"];

    if (!v21)
    {
      v22 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        subtarget3 = [actionCopy subtarget];
        *buf = 138543362;
        v28 = subtarget3;
        _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_DEFAULT, "unknown Goto button action subtarget %{public}@", buf, 0xCu);
      }
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    uRLString = [actionCopy URLString];
    if (uRLString)
    {
      v15 = MEMORY[0x1E695AC18];
      v16 = [MEMORY[0x1E695DFF8] URLWithString:uRLString];
      v17 = [v15 requestWithURL:v16];

      v18 = [[ICStoreURLRequest alloc] initWithURLRequest:v17 requestContext:contextCopy];
      v19 = +[ICURLSessionManager unlimitedHighPrioritySession];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __98__ICStoreDialogResponseHandler__handleGotoButtonAction_usingRequestContext_withCompletionHandler___block_invoke;
      v25[3] = &unk_1E7BF5FF8;
      v26 = handlerCopy;
      [v19 enqueueDataRequest:v18 withCompletionHandler:v25];
    }

    else
    {
      v24 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B4491000, v24, OS_LOG_TYPE_DEFAULT, "missing action URL in Goto button action - skipping", buf, 2u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

void __98__ICStoreDialogResponseHandler__handleGotoButtonAction_usingRequestContext_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    if ([a2 statusCode] == 200)
    {
      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7101 userInfo:0];
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_handleBuyButtonAction:(id)action usingRequestContext:(id)context withCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  buyParams = [action buyParams];
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = buyParams;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "Performing Buy button action with params %{public}@", buf, 0xCu);
  }

  v11 = [MEMORY[0x1E695DFF8] ic_queryParametersDictionaryFromString:buyParams];
  v12 = [v11 objectForKey:@"sagaId"];

  if (v12)
  {
    v13 = [(ICMediaRedownloadRequest *)[ICMatchRedownloadRequest alloc] initWithRequestContext:contextCopy redownloadParametersString:buyParams];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __97__ICStoreDialogResponseHandler__handleBuyButtonAction_usingRequestContext_withCompletionHandler___block_invoke;
    v23[3] = &unk_1E7BF5FA8;
    v14 = &v24;
    v24 = handlerCopy;
    v15 = handlerCopy;
    v16 = v23;
  }

  else
  {
    v13 = [[ICBuyProductRequest alloc] initWithRequestContext:contextCopy buyParametersString:buyParams includeKeybagSyncData:0];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __97__ICStoreDialogResponseHandler__handleBuyButtonAction_usingRequestContext_withCompletionHandler___block_invoke_22;
    v21 = &unk_1E7BF5FD0;
    v14 = &v22;
    v22 = handlerCopy;
    v17 = handlerCopy;
    v16 = &v18;
  }

  [(ICMediaRedownloadRequest *)v13 performRequestWithResponseHandler:v16, v18, v19, v20, v21];
}

void __97__ICStoreDialogResponseHandler__handleBuyButtonAction_usingRequestContext_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "Failed to perform buy button action. err=%{public}@", &v7, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __97__ICStoreDialogResponseHandler__handleBuyButtonAction_usingRequestContext_withCompletionHandler___block_invoke_22(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Failed to perform buy button action. err=%{public}@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_handleAuthenticationStoreDialogResponse:(id)response usingRequestContext:(id)context withDialogTimeout:(double)timeout withCompletionHandler:(id)handler
{
  responseCopy = response;
  contextCopy = context;
  handlerCopy = handler;
  if (self->_shouldRecordLastAuthenticationDialogResponseTime)
  {
    v13 = +[ICDefaults standardDefaults];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [v13 setLastAuthenticationDialogResponseTime:?];
  }

  if (contextCopy && ([contextCopy authenticationProvider], v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    authenticationProvider = [contextCopy authenticationProvider];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __133__ICStoreDialogResponseHandler__handleAuthenticationStoreDialogResponse_usingRequestContext_withDialogTimeout_withCompletionHandler___block_invoke;
    v16[3] = &unk_1E7BF7630;
    v17 = responseCopy;
    v18 = contextCopy;
    selfCopy = self;
    v20 = handlerCopy;
    [authenticationProvider performAuthenticationUsingRequestContext:v18 withCompletionHandler:v16];
  }

  else
  {
    [(ICStoreDialogResponseHandler *)self _handleDefaultStoreDialogResponse:responseCopy usingRequestContext:contextCopy withDialogTimeout:handlerCopy withCompletionHandler:timeout];
  }
}

void __133__ICStoreDialogResponseHandler__handleAuthenticationStoreDialogResponse_usingRequestContext_withDialogTimeout_withCompletionHandler___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a2;
  v28 = *MEMORY[0x1E69E9840];
  if (a3 || !a2)
  {
    v11 = *(*(a1 + 56) + 16);

    v11();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [*(a1 + 32) buttons];
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        if ([v10 type] == 1)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v12 = [v10 action];

      if (!v12)
      {
        goto LABEL_17;
      }

      v13 = *(a1 + 40);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __133__ICStoreDialogResponseHandler__handleAuthenticationStoreDialogResponse_usingRequestContext_withDialogTimeout_withCompletionHandler___block_invoke_2;
      v21[3] = &unk_1E7BF91F0;
      v22 = v13;
      v14 = [v22 copyWithBlock:v21];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __133__ICStoreDialogResponseHandler__handleAuthenticationStoreDialogResponse_usingRequestContext_withDialogTimeout_withCompletionHandler___block_invoke_3;
      v17[3] = &unk_1E7BF5F80;
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      v20 = v3;
      v18 = 0;
      v19 = v16;
      [v15 handleButtonAction:v12 usingRequestContext:v14 withCompletionHandler:v17];
    }

    else
    {
LABEL_11:

LABEL_17:
      (*(*(a1 + 56) + 16))();
    }
  }
}

void __133__ICStoreDialogResponseHandler__handleAuthenticationStoreDialogResponse_usingRequestContext_withDialogTimeout_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setStoreDialogResponseHandler:0];
  v4 = [ICURLResponseAuthenticationProvider alloc];
  v6 = [*(a1 + 32) authenticationProvider];
  v5 = -[ICURLResponseAuthenticationProvider initWithUserInteractionLevel:](v4, "initWithUserInteractionLevel:", [v6 interactionLevel]);
  [v3 setAuthenticationProvider:v5];
}

- (void)_handleDefaultStoreDialogResponse:(id)response usingRequestContext:(id)context withDialogTimeout:(double)timeout withCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  contextCopy = context;
  handlerCopy = handler;
  v13 = [[ICUserNotificationBuilder alloc] initWithStoreDialog:responseCopy];
  [(ICUserNotificationBuilder *)v13 setTimeoutInterval:timeout];
  createCFUserNotification = [(ICUserNotificationBuilder *)v13 createCFUserNotification];
  if (createCFUserNotification)
  {
    v15 = createCFUserNotification;
    v16 = +[ICUserNotificationManager sharedManager];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __126__ICStoreDialogResponseHandler__handleDefaultStoreDialogResponse_usingRequestContext_withDialogTimeout_withCompletionHandler___block_invoke;
    v19[3] = &unk_1E7BF5F58;
    v23 = v15;
    v19[4] = self;
    v22 = handlerCopy;
    v20 = responseCopy;
    v21 = contextCopy;
    [v16 displayUserNotification:v15 withCompletionHandler:v19];
  }

  else
  {
    v17 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B4491000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create user notification", buf, 0xCu);
    }

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v18);
  }
}

void __126__ICStoreDialogResponseHandler__handleDefaultStoreDialogResponse_usingRequestContext_withDialogTimeout_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  CFRelease(*(a1 + 64));
  if (!v5)
  {
    v8 = ICUserNotificationGetResponseButton(*(a1 + 40), a2);
    v9 = v8;
    if (v8)
    {
      if ([v8 type] != 2)
      {
        v18 = *(a1 + 32);
        v19 = [v9 action];
        [v18 handleButtonAction:v19 usingRequestContext:*(a1 + 48) withCompletionHandler:*(a1 + 56)];

        goto LABEL_15;
      }

      v10 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v20 = 138543362;
        v21 = v11;
        _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ User cancelled the dialog", &v20, 0xCu);
      }

      v12 = *(a1 + 56);
      v13 = MEMORY[0x1E696ABC0];
      v14 = -7004;
    }

    else
    {
      v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        v20 = 138543618;
        v21 = v16;
        v22 = 2048;
        v23 = a2;
        _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_ERROR, "%{public}@ Failed to find user notification button for responseFlags %lu", &v20, 0x16u);
      }

      v12 = *(a1 + 56);
      v13 = MEMORY[0x1E696ABC0];
      v14 = 0;
    }

    v17 = [v13 errorWithDomain:@"ICError" code:v14 userInfo:0];
    (*(v12 + 16))(v12, 0, v17);

LABEL_15:
    goto LABEL_16;
  }

  v6 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    v20 = 138543618;
    v21 = v7;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to display user notification. err=%{public}@", &v20, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
LABEL_16:
}

- (void)encodeWithCoder:(id)coder
{
  allowsHandlingNonAuthenticationDialogs = self->_allowsHandlingNonAuthenticationDialogs;
  coderCopy = coder;
  [coderCopy encodeBool:allowsHandlingNonAuthenticationDialogs forKey:@"allowsHandlingNonAuthenticationDialogs"];
  [coderCopy encodeBool:self->_shouldRecordLastAuthenticationDialogResponseTime forKey:@"shouldRecordLastAuthenticationDialogResponseTime"];
}

- (ICStoreDialogResponseHandler)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(ICStoreDialogResponseHandlerConfiguration);
  -[ICStoreDialogResponseHandlerConfiguration setAllowsHandlingNonAuthenticationDialogs:](v5, "setAllowsHandlingNonAuthenticationDialogs:", [coderCopy decodeBoolForKey:@"allowsHandlingNonAuthenticationDialogs"]);
  v6 = [coderCopy decodeBoolForKey:@"shouldRecordLastAuthenticationDialogResponseTime"];

  [(ICStoreDialogResponseHandlerConfiguration *)v5 setShouldRecordLastAuthenticationDialogResponseTime:v6];
  v7 = [(ICStoreDialogResponseHandler *)self initWithConfiguration:v5];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy || [(ICStoreDialogResponseHandler *)equalCopy isMemberOfClass:objc_opt_class()]&& self->_allowsHandlingNonAuthenticationDialogs == equalCopy->_allowsHandlingNonAuthenticationDialogs && self->_shouldRecordLastAuthenticationDialogResponseTime == equalCopy->_shouldRecordLastAuthenticationDialogResponseTime;

  return v5;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v3 ^ 0x6C7967656E657261;
  v8 = v4 ^ 0x646F72616E646F6DLL;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v8) ^ __ROR8__(v8, 51);
  v14 = v7 + v12;
  v15 = (v7 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v8, 32);
  v17 = v14 + v13;
  v57 = __ROR8__(v17, 32);
  v59 = v16 ^ __ROR8__(v15, 43);
  v54 = v16 ^ v11;
  v55 = v17 ^ __ROR8__(v13, 47);

  v18 = self->_allowsHandlingNonAuthenticationDialogs | (self->_shouldRecordLastAuthenticationDialogResponseTime << 32);
  v19 = (v54 + v55) ^ __ROR8__(v55, 51);
  v20 = v57 + (v59 ^ v18);
  v21 = __ROR8__(v59 ^ v18, 48);
  v22 = (v20 ^ v21) + __ROR8__(v54 + v55, 32);
  v23 = v22 ^ __ROR8__(v20 ^ v21, 43);
  v24 = v20 + v19;
  v58 = __ROR8__(v24, 32);
  v60 = v23;
  v56 = v24 ^ __ROR8__(v19, 47);
  v25 = ((v22 ^ v18) + v56) ^ __ROR8__(v56, 51);
  v26 = v58 + (v23 ^ 0x1000000000000000);
  v27 = __ROR8__(v60 ^ 0x1000000000000000, 48);
  v28 = (v26 ^ v27) + __ROR8__((v22 ^ v18) + v56, 32);
  v29 = v28 ^ __ROR8__(v26 ^ v27, 43);
  v30 = v26 + v25;
  v31 = v30 ^ __ROR8__(v25, 47);
  v32 = (v28 ^ 0x1000000000000000) + v31;
  v33 = v32 ^ __ROR8__(v31, 51);
  v34 = (__ROR8__(v30, 32) ^ 0xFFLL) + v29;
  v35 = __ROR8__(v29, 48);
  v36 = __ROR8__(v32, 32) + (v34 ^ v35);
  v37 = v36 ^ __ROR8__(v34 ^ v35, 43);
  v38 = v33 + v34;
  v39 = v38 ^ __ROR8__(v33, 47);
  v40 = v39 + v36;
  v41 = v40 ^ __ROR8__(v39, 51);
  v42 = __ROR8__(v38, 32) + v37;
  v43 = __ROR8__(v37, 48);
  v44 = __ROR8__(v40, 32) + (v42 ^ v43);
  v45 = v44 ^ __ROR8__(v42 ^ v43, 43);
  v46 = v41 + v42;
  v47 = v46 ^ __ROR8__(v41, 47);
  v48 = v47 + v44;
  v49 = v48 ^ __ROR8__(v47, 51);
  v50 = __ROR8__(v46, 32) + v45;
  v51 = __ROR8__(v45, 48);
  v52 = __ROR8__(v48, 32) + (v50 ^ v51);
  return (v49 + v50) ^ __ROR8__(v49, 47) ^ v52 ^ __ROR8__(v49 + v50, 32) ^ v52 ^ __ROR8__(v50 ^ v51, 43);
}

- (void)handleAMSDialogRequest:(id)request completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v16 = 2114;
    v17 = requestCopy;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Handling AMS dialog request %{public}@", buf, 0x16u);
  }

  v9 = [objc_alloc(MEMORY[0x1E698CB50]) initWithRequest:requestCopy];
  present = [v9 present];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__ICStoreDialogResponseHandler_handleAMSDialogRequest_completion___block_invoke;
  v12[3] = &unk_1E7BF5F30;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [present addFinishBlock:v12];
}

void __66__ICStoreDialogResponseHandler_handleAMSDialogRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v5 msv_description];
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@ dialog task complete error=%{public}@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = 138543362;
    v13 = v11;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ dialog task complete", &v12, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)handleStoreDialogResponse:(id)response usingRequestContext:(id)context withDialogTimeout:(double)timeout withCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  contextCopy = context;
  handlerCopy = handler;
  type = [responseCopy type];
  v14 = type;
  if (self->_allowsHandlingNonAuthenticationDialogs || type == 1)
  {
    if (type == 1)
    {
      [(ICStoreDialogResponseHandler *)self _handleAuthenticationStoreDialogResponse:responseCopy usingRequestContext:contextCopy withDialogTimeout:handlerCopy withCompletionHandler:timeout];
    }

    else if (!type)
    {
      [(ICStoreDialogResponseHandler *)self _handleDefaultStoreDialogResponse:responseCopy usingRequestContext:contextCopy withDialogTimeout:handlerCopy withCompletionHandler:timeout];
    }
  }

  else
  {
    v15 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      selfCopy = self;
      v18 = 1024;
      v19 = v14;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Not handling dialog response because its not allowed for dialog type %d", &v16, 0x12u);
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

- (void)handleButtonAction:(id)action usingRequestContext:(id)context withCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  contextCopy = context;
  handlerCopy = handler;
  if (!actionCopy)
  {
LABEL_7:
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    goto LABEL_8;
  }

  type = [actionCopy type];
  if (type <= 4)
  {
    if ((type - 2) < 3)
    {
      [(ICStoreDialogResponseHandler *)self _handleGotoButtonAction:actionCopy usingRequestContext:contextCopy withCompletionHandler:handlerCopy];
      goto LABEL_8;
    }

    if (!type)
    {
      goto LABEL_7;
    }

    if (type == 1)
    {
      [(ICStoreDialogResponseHandler *)self _handleBuyButtonAction:actionCopy usingRequestContext:contextCopy withCompletionHandler:handlerCopy];
    }
  }

  else
  {
    if ((type - 5) < 6)
    {
      v12 = os_log_create("com.apple.amp.iTunesCloud", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = 134217984;
        type2 = [actionCopy type];
        _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_FAULT, "unexpected dialog button action type %ld", &v13, 0xCu);
      }

      goto LABEL_7;
    }

    if (type == 11)
    {
      [(ICStoreDialogResponseHandler *)self _handleFamilyPermissionButtonAction:actionCopy usingRequestContext:contextCopy completion:handlerCopy];
    }
  }

LABEL_8:
}

- (ICStoreDialogResponseHandler)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7.receiver = self;
  v7.super_class = ICStoreDialogResponseHandler;
  v5 = [(ICStoreDialogResponseHandler *)&v7 init];
  if (v5)
  {
    if (!configurationCopy)
    {
      configurationCopy = objc_alloc_init(ICStoreDialogResponseHandlerConfiguration);
    }

    v5->_allowsHandlingNonAuthenticationDialogs = [(ICStoreDialogResponseHandlerConfiguration *)configurationCopy allowsHandlingNonAuthenticationDialogs];
    v5->_shouldRecordLastAuthenticationDialogResponseTime = [(ICStoreDialogResponseHandlerConfiguration *)configurationCopy shouldRecordLastAuthenticationDialogResponseTime];
  }

  return v5;
}

@end