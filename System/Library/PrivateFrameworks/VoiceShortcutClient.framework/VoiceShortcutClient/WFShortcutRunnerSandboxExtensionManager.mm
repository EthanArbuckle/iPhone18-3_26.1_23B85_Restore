@interface WFShortcutRunnerSandboxExtensionManager
+ (WFShortcutRunnerSandboxExtensionManager)sharedManager;
- (BOOL)requestSandboxExtensionForRunningActionWithAccessResources:(id)resources error:(id *)error;
- (BOOL)retakeResignedExtensionsWithReason:(id)reason error:(id *)error;
- (WFShortcutRunnerSandboxExtensionManager)init;
- (id)asynchronousRemoteDataStoreWithErrorHandler:(id)handler;
- (id)requestExtensionTokensForAccessResources:(id)resources rejectedAccessResources:(id *)accessResources error:(id *)error;
- (id)synchronousRemoteDataStoreWithErrorHandler:(id)handler;
- (void)performWithSandboxExtensions:(id)extensions asynchronousBlock:(id)block;
- (void)performWithSandboxExtensions:(id)extensions synchronousBlock:(id)block;
- (void)requestExtensionTokensForAccessResources:(id)resources completion:(id)completion;
- (void)requestSandboxExtensionForRunningActionWithAccessResources:(id)resources completion:(id)completion;
- (void)requestSandboxExtensionForToolKitIndexingWithCompletionHandler:(id)handler;
- (void)resignIssuedExtensionsWithReason:(id)reason;
- (void)temporaryRequestSandboxExtensionWithBlock:(id)block;
@end

@implementation WFShortcutRunnerSandboxExtensionManager

uint64_t __56__WFShortcutRunnerSandboxExtensionManager_sharedManager__block_invoke()
{
  sharedManager_result = objc_alloc_init(WFShortcutRunnerSandboxExtensionManager);

  return MEMORY[0x1EEE66BB8]();
}

- (WFShortcutRunnerSandboxExtensionManager)init
{
  v12.receiver = self;
  v12.super_class = WFShortcutRunnerSandboxExtensionManager;
  v2 = [(WFShortcutRunnerSandboxExtensionManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    issuedExtensionsAccessResources = v3->_issuedExtensionsAccessResources;
    v3->_issuedExtensionsAccessResources = v4;

    v6 = objc_opt_new();
    issuedExtensionHandlers = v3->_issuedExtensionHandlers;
    v3->_issuedExtensionHandlers = v6;

    v8 = objc_opt_new();
    resignedExtensionsAccessResources = v3->_resignedExtensionsAccessResources;
    v3->_resignedExtensionsAccessResources = v8;

    v10 = v3;
  }

  return v3;
}

+ (WFShortcutRunnerSandboxExtensionManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_10606);
  }

  v3 = sharedManager_result;

  return v3;
}

- (void)requestSandboxExtensionForToolKitIndexingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __106__WFShortcutRunnerSandboxExtensionManager_requestSandboxExtensionForToolKitIndexingWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7B02940;
  v5 = handlerCopy;
  v11 = v5;
  v6 = [(WFShortcutRunnerSandboxExtensionManager *)self synchronousRemoteDataStoreWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __106__WFShortcutRunnerSandboxExtensionManager_requestSandboxExtensionForToolKitIndexingWithCompletionHandler___block_invoke_3;
  v8[3] = &unk_1E7B014D8;
  v9 = v5;
  v7 = v5;
  [v6 requestSandboxExtensionForToolKitIndexingWithCompletion:v8];
}

void __106__WFShortcutRunnerSandboxExtensionManager_requestSandboxExtensionForToolKitIndexingWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 if_compactMap:&__block_literal_global_200_10569];
  v8 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __106__WFShortcutRunnerSandboxExtensionManager_requestSandboxExtensionForToolKitIndexingWithCompletionHandler___block_invoke_4;
  v11[3] = &unk_1E7B02158;
  v12 = v7;
  v9 = *(v8 + 16);
  v10 = v7;
  v9(v8, v6, v5, v11, 0);
}

- (void)temporaryRequestSandboxExtensionWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[WFShortcutRunnerSandboxExtensionRequest all];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__WFShortcutRunnerSandboxExtensionManager_temporaryRequestSandboxExtensionWithBlock___block_invoke;
  v7[3] = &unk_1E7B014B0;
  v8 = blockCopy;
  v6 = blockCopy;
  [(WFShortcutRunnerSandboxExtensionManager *)self performWithSandboxExtensions:v5 asynchronousBlock:v7];
}

- (BOOL)requestSandboxExtensionForRunningActionWithAccessResources:(id)resources error:(id *)error
{
  resourcesCopy = resources;
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__WFShortcutRunnerSandboxExtensionManager_requestSandboxExtensionForRunningActionWithAccessResources_error___block_invoke;
  aBlock[3] = &unk_1E7B02158;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v8 = [MEMORY[0x1E695DFA8] setWithSet:resourcesCopy];
  issuedExtensionsAccessResources = [(WFShortcutRunnerSandboxExtensionManager *)self issuedExtensionsAccessResources];
  [v8 minusSet:issuedExtensionsAccessResources];

  if ([v8 count])
  {
    v18 = 0;
    v10 = [(WFShortcutRunnerSandboxExtensionManager *)self requestExtensionTokensForAccessResources:v8 rejectedAccessResources:&v18 error:error];
    v11 = v18;
    v12 = v10 != 0;
    if (v10)
    {
      v13 = [v10 if_compactMap:&__block_literal_global_200_10569];
      issuedExtensionsAccessResources2 = [(WFShortcutRunnerSandboxExtensionManager *)self issuedExtensionsAccessResources];
      [issuedExtensionsAccessResources2 unionSet:resourcesCopy];

      issuedExtensionsAccessResources3 = [(WFShortcutRunnerSandboxExtensionManager *)self issuedExtensionsAccessResources];
      [issuedExtensionsAccessResources3 minusSet:v11];

      issuedExtensionHandlers = [(WFShortcutRunnerSandboxExtensionManager *)self issuedExtensionHandlers];
      [issuedExtensionHandlers unionSet:v13];
    }
  }

  else
  {
    v12 = 1;
  }

  v7[2](v7);
  return v12;
}

- (void)requestSandboxExtensionForRunningActionWithAccessResources:(id)resources completion:(id)completion
{
  completionCopy = completion;
  v7 = [MEMORY[0x1E695DFA8] setWithSet:resources];
  os_unfair_lock_lock(&self->_lock);
  issuedExtensionsAccessResources = [(WFShortcutRunnerSandboxExtensionManager *)self issuedExtensionsAccessResources];
  [v7 minusSet:issuedExtensionsAccessResources];

  os_unfair_lock_unlock(&self->_lock);
  if ([v7 count])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __113__WFShortcutRunnerSandboxExtensionManager_requestSandboxExtensionForRunningActionWithAccessResources_completion___block_invoke;
    v10[3] = &unk_1E7B01488;
    v12 = completionCopy;
    v10[4] = self;
    v11 = v7;
    [(WFShortcutRunnerSandboxExtensionManager *)self requestExtensionTokensForAccessResources:v11 completion:v10];
  }

  else
  {
    v9 = objc_opt_new();
    (*(completionCopy + 2))(completionCopy, v9, 0);
  }
}

void __113__WFShortcutRunnerSandboxExtensionManager_requestSandboxExtensionForRunningActionWithAccessResources_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v6 = [v10 if_compactMap:&__block_literal_global_200_10569];
    v7 = objc_opt_new();
    [v7 unionSet:*(a1 + 40)];
    [v7 minusSet:v5];
    v8 = [*(a1 + 32) issuedExtensionsAccessResources];
    [v8 unionSet:v7];

    v9 = [*(a1 + 32) issuedExtensionHandlers];
    [v9 unionSet:v6];

    os_unfair_lock_unlock((*(a1 + 32) + 8));
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)requestExtensionTokensForAccessResources:(id)resources completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  completionCopy = completion;
  if ([resourcesCopy count])
  {
    v8 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "[WFShortcutRunnerSandboxExtensionManager requestExtensionTokensForAccessResources:completion:]";
      v24 = 2114;
      v25 = resourcesCopy;
      _os_log_impl(&dword_1B1DE3000, v8, OS_LOG_TYPE_DEFAULT, "%s Sandbox Extensions for shortcut execution needed. Requesting sandbox extensions for resources: %{public}@", buf, 0x16u);
    }

    v9 = getWFVoiceShortcutClientLogObject();
    v10 = os_signpost_id_generate(v9);

    v11 = getWFVoiceShortcutClientLogObject();
    v12 = v11;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 138412290;
      v23 = resourcesCopy;
      _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "RequestSandboxExtension", "classNames=%{signpost.description:attribute}@", buf, 0xCu);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __95__WFShortcutRunnerSandboxExtensionManager_requestExtensionTokensForAccessResources_completion___block_invoke;
    v20[3] = &unk_1E7B02940;
    v13 = completionCopy;
    v21 = v13;
    v14 = [(WFShortcutRunnerSandboxExtensionManager *)self asynchronousRemoteDataStoreWithErrorHandler:v20];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __95__WFShortcutRunnerSandboxExtensionManager_requestExtensionTokensForAccessResources_completion___block_invoke_2;
    v16[3] = &unk_1E7B01460;
    v17 = resourcesCopy;
    v19 = v10;
    v18 = v13;
    [v14 requestSandboxExtensionForAccessResources:v17 completion:v16];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __95__WFShortcutRunnerSandboxExtensionManager_requestExtensionTokensForAccessResources_completion___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7)
  {
    v11 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[4];
      v22 = 136315394;
      v23 = "[WFShortcutRunnerSandboxExtensionManager requestExtensionTokensForAccessResources:completion:]_block_invoke_2";
      v24 = 2114;
      v25 = v12;
      v13 = "%s Received sandbox extensions tokens for resources: %{public}@";
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 22;
LABEL_7:
      _os_log_impl(&dword_1B1DE3000, v14, v15, v13, &v22, v16);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v9)
  {
    v11 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = a1[4];
      v22 = 136315650;
      v23 = "[WFShortcutRunnerSandboxExtensionManager requestExtensionTokensForAccessResources:completion:]_block_invoke";
      v24 = 2114;
      v25 = v17;
      v26 = 2114;
      v27 = v10;
      v13 = "%s Failed to request sandbox extensions for access resources %{public}@ with error %{public}@";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 32;
      goto LABEL_7;
    }

LABEL_8:
  }

  v18 = getWFVoiceShortcutClientLogObject();
  v19 = v18;
  v20 = a1[6];
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v19, OS_SIGNPOST_INTERVAL_END, v20, "RequestSandboxExtension", "", &v22, 2u);
  }

  (*(a1[5] + 16))();
  v21 = *MEMORY[0x1E69E9840];
}

- (id)requestExtensionTokensForAccessResources:(id)resources rejectedAccessResources:(id *)accessResources error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  if ([resourcesCopy count])
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__10583;
    v42 = __Block_byref_object_dispose__10584;
    v43 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__10583;
    v36 = __Block_byref_object_dispose__10584;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__10583;
    v30 = __Block_byref_object_dispose__10584;
    v31 = 0;
    v9 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v45 = "[WFShortcutRunnerSandboxExtensionManager requestExtensionTokensForAccessResources:rejectedAccessResources:error:]";
      v46 = 2114;
      v47 = resourcesCopy;
      _os_log_impl(&dword_1B1DE3000, v9, OS_LOG_TYPE_DEFAULT, "%s Sandbox Extensions for shortcut execution needed. Requesting sandbox extensions for resources: %{public}@", buf, 0x16u);
    }

    v10 = getWFVoiceShortcutClientLogObject();
    v11 = os_signpost_id_generate(v10);

    v12 = getWFVoiceShortcutClientLogObject();
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 138412290;
      v45 = resourcesCopy;
      _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RequestSandboxExtension", "classNames=%{signpost.description:attribute}@", buf, 0xCu);
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __114__WFShortcutRunnerSandboxExtensionManager_requestExtensionTokensForAccessResources_rejectedAccessResources_error___block_invoke;
    v25[3] = &unk_1E7B028A0;
    v25[4] = &v26;
    v14 = [(WFShortcutRunnerSandboxExtensionManager *)self synchronousRemoteDataStoreWithErrorHandler:v25];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __114__WFShortcutRunnerSandboxExtensionManager_requestExtensionTokensForAccessResources_rejectedAccessResources_error___block_invoke_2;
    v20[3] = &unk_1E7B01438;
    v21 = resourcesCopy;
    v22 = &v38;
    v23 = &v32;
    v24 = &v26;
    [v14 requestSandboxExtensionForAccessResources:v21 completion:v20];

    if (accessResources)
    {
      *accessResources = v33[5];
    }

    if (error)
    {
      *error = v27[5];
    }

    v15 = getWFVoiceShortcutClientLogObject();
    v16 = v15;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v16, OS_SIGNPOST_INTERVAL_END, v11, "RequestSandboxExtension", "", buf, 2u);
    }

    v17 = v39[5];
    _Block_object_dispose(&v26, 8);

    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void __114__WFShortcutRunnerSandboxExtensionManager_requestExtensionTokensForAccessResources_rejectedAccessResources_error___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7)
  {
    v11 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[4];
      v27 = 136315394;
      v28 = "[WFShortcutRunnerSandboxExtensionManager requestExtensionTokensForAccessResources:rejectedAccessResources:error:]_block_invoke_2";
      v29 = 2114;
      v30 = v12;
      v13 = "%s Received sandbox extensions tokens for resources: %{public}@";
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 22;
LABEL_7:
      _os_log_impl(&dword_1B1DE3000, v14, v15, v13, &v27, v16);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (v9)
  {
    v11 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = a1[4];
      v27 = 136315650;
      v28 = "[WFShortcutRunnerSandboxExtensionManager requestExtensionTokensForAccessResources:rejectedAccessResources:error:]_block_invoke";
      v29 = 2114;
      v30 = v17;
      v31 = 2114;
      v32 = v10;
      v13 = "%s Failed to request sandbox extensions for access resources %{public}@ with error %{public}@";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 32;
      goto LABEL_7;
    }

LABEL_8:
  }

  v18 = *(a1[5] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v7;
  v20 = v7;

  v21 = *(a1[6] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v8;
  v23 = v8;

  v24 = *(a1[7] + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v10;

  v26 = *MEMORY[0x1E69E9840];
}

- (id)synchronousRemoteDataStoreWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[VCVoiceShortcutClient standardClient];
  v5 = [v4 synchronousRemoteDataStoreWithErrorHandler:handlerCopy];

  return v5;
}

- (id)asynchronousRemoteDataStoreWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[VCVoiceShortcutClient standardClient];
  v5 = [v4 asynchronousRemoteDataStoreWithErrorHandler:handlerCopy];

  return v5;
}

- (BOOL)retakeResignedExtensionsWithReason:(id)reason error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__WFShortcutRunnerSandboxExtensionManager_retakeResignedExtensionsWithReason_error___block_invoke;
  aBlock[3] = &unk_1E7B02158;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v8 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    resignedExtensionsAccessResources = [(WFShortcutRunnerSandboxExtensionManager *)self resignedExtensionsAccessResources];
    *buf = 136315650;
    v27 = "[WFShortcutRunnerSandboxExtensionManager retakeResignedExtensionsWithReason:error:]";
    v28 = 2114;
    v29 = reasonCopy;
    v30 = 2112;
    v31 = resignedExtensionsAccessResources;
    _os_log_impl(&dword_1B1DE3000, v8, OS_LOG_TYPE_DEFAULT, "%s Retaking resigned extensions with reason: %{public}@, taking extensions for: %@", buf, 0x20u);
  }

  resignedExtensionsAccessResources2 = [(WFShortcutRunnerSandboxExtensionManager *)self resignedExtensionsAccessResources];
  v23 = 0;
  v24 = 0;
  v11 = [(WFShortcutRunnerSandboxExtensionManager *)self requestExtensionTokensForAccessResources:resignedExtensionsAccessResources2 rejectedAccessResources:&v24 error:&v23];
  v12 = v24;
  v13 = v23;

  v14 = [v12 count];
  if (v14)
  {
    if (error && v13)
    {
      v15 = v13;
      *error = v13;
    }

    v16 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v27 = "[WFShortcutRunnerSandboxExtensionManager retakeResignedExtensionsWithReason:error:]";
      v28 = 2112;
      v29 = v12;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_1B1DE3000, v16, OS_LOG_TYPE_DEFAULT, "%s The following access resources were rejected when requesting sandbox extensions for resign extensions: %@, error: %@", buf, 0x20u);
    }
  }

  else
  {
    v16 = [v11 if_compactMap:&__block_literal_global_200_10569];
    issuedExtensionHandlers = [(WFShortcutRunnerSandboxExtensionManager *)self issuedExtensionHandlers];
    [issuedExtensionHandlers unionSet:v16];

    issuedExtensionsAccessResources = [(WFShortcutRunnerSandboxExtensionManager *)self issuedExtensionsAccessResources];
    resignedExtensionsAccessResources3 = [(WFShortcutRunnerSandboxExtensionManager *)self resignedExtensionsAccessResources];
    [issuedExtensionsAccessResources unionSet:resignedExtensionsAccessResources3];

    resignedExtensionsAccessResources4 = [(WFShortcutRunnerSandboxExtensionManager *)self resignedExtensionsAccessResources];
    [resignedExtensionsAccessResources4 removeAllObjects];
  }

  v7[2](v7);
  v21 = *MEMORY[0x1E69E9840];
  return v14 == 0;
}

- (void)resignIssuedExtensionsWithReason:(id)reason
{
  v19 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_lock);
  v5 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    issuedExtensionsAccessResources = [(WFShortcutRunnerSandboxExtensionManager *)self issuedExtensionsAccessResources];
    v13 = 136315650;
    v14 = "[WFShortcutRunnerSandboxExtensionManager resignIssuedExtensionsWithReason:]";
    v15 = 2114;
    v16 = reasonCopy;
    v17 = 2112;
    v18 = issuedExtensionsAccessResources;
    _os_log_impl(&dword_1B1DE3000, v5, OS_LOG_TYPE_DEFAULT, "%s Resigning issued extensions with reason: %{public}@, issued extensions: %@", &v13, 0x20u);
  }

  issuedExtensionHandlers = [(WFShortcutRunnerSandboxExtensionManager *)self issuedExtensionHandlers];
  [issuedExtensionHandlers enumerateObjectsUsingBlock:&__block_literal_global_147];

  resignedExtensionsAccessResources = [(WFShortcutRunnerSandboxExtensionManager *)self resignedExtensionsAccessResources];
  issuedExtensionsAccessResources2 = [(WFShortcutRunnerSandboxExtensionManager *)self issuedExtensionsAccessResources];
  [resignedExtensionsAccessResources unionSet:issuedExtensionsAccessResources2];

  issuedExtensionHandlers2 = [(WFShortcutRunnerSandboxExtensionManager *)self issuedExtensionHandlers];
  [issuedExtensionHandlers2 removeAllObjects];

  issuedExtensionsAccessResources3 = [(WFShortcutRunnerSandboxExtensionManager *)self issuedExtensionsAccessResources];
  [issuedExtensionsAccessResources3 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __76__WFShortcutRunnerSandboxExtensionManager_resignIssuedExtensionsWithReason___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 longLongValue];

  return MEMORY[0x1EEE74458](v2);
}

- (void)performWithSandboxExtensions:(id)extensions synchronousBlock:(id)block
{
  v29 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  blockCopy = block;
  v8 = getWFVoiceShortcutClientLogObject();
  v9 = os_signpost_id_generate(v8);

  v10 = getWFVoiceShortcutClientLogObject();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    accessResourceClassNames = [extensionsCopy accessResourceClassNames];
    v13 = [accessResourceClassNames mutableCopy];
    *buf = 138412290;
    v28 = v13;
    _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PerformWithSandboxExtension", "classNames=%{signpost.description:attribute}@", buf, 0xCu);
  }

  accessResourceClassNames2 = [extensionsCopy accessResourceClassNames];
  v15 = [accessResourceClassNames2 mutableCopy];

  os_unfair_lock_lock(&self->_lock);
  issuedExtensionsAccessResources = [(WFShortcutRunnerSandboxExtensionManager *)self issuedExtensionsAccessResources];
  [v15 minusSet:issuedExtensionsAccessResources];

  os_unfair_lock_unlock(&self->_lock);
  if ([v15 count])
  {
    accessResourceClassNames3 = [extensionsCopy accessResourceClassNames];
    v25 = 0;
    v26 = 0;
    v18 = [(WFShortcutRunnerSandboxExtensionManager *)self requestExtensionTokensForAccessResources:accessResourceClassNames3 rejectedAccessResources:&v26 error:&v25];
    v19 = v26;
    v20 = v25;

    v21 = [v18 if_compactMap:&__block_literal_global_200_10569];
    blockCopy[2](blockCopy, v19, v20);

    [v21 enumerateObjectsUsingBlock:&__block_literal_global_203_10570];
    v22 = getWFVoiceShortcutClientLogObject();
    v23 = v22;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v23, OS_SIGNPOST_INTERVAL_END, v9, "PerformWithSandboxExtension", "", buf, 2u);
    }
  }

  else
  {
    blockCopy[2](blockCopy, 0, 0);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)performWithSandboxExtensions:(id)extensions asynchronousBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  extensionsCopy = extensions;
  blockCopy = block;
  v8 = getWFVoiceShortcutClientLogObject();
  v9 = os_signpost_id_generate(v8);

  v10 = getWFVoiceShortcutClientLogObject();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    accessResourceClassNames = [extensionsCopy accessResourceClassNames];
    v13 = [accessResourceClassNames mutableCopy];
    *buf = 138412290;
    v22 = v13;
    _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PerformWithSandboxExtension", "classNames=%{signpost.description:attribute}@", buf, 0xCu);
  }

  accessResourceClassNames2 = [extensionsCopy accessResourceClassNames];
  v15 = [accessResourceClassNames2 mutableCopy];

  os_unfair_lock_lock(&self->_lock);
  issuedExtensionsAccessResources = [(WFShortcutRunnerSandboxExtensionManager *)self issuedExtensionsAccessResources];
  [v15 minusSet:issuedExtensionsAccessResources];

  os_unfair_lock_unlock(&self->_lock);
  if ([v15 count])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __90__WFShortcutRunnerSandboxExtensionManager_performWithSandboxExtensions_asynchronousBlock___block_invoke_2;
    v18[3] = &unk_1E7B013F0;
    v20 = v9;
    v19 = blockCopy;
    [(WFShortcutRunnerSandboxExtensionManager *)self requestExtensionTokensForAccessResources:v15 completion:v18];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0, 0, &__block_literal_global_142);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __90__WFShortcutRunnerSandboxExtensionManager_performWithSandboxExtensions_asynchronousBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [a2 if_compactMap:&__block_literal_global_200_10569];
  v10 = getWFVoiceShortcutClientLogObject();
  v11 = v10;
  v12 = *(a1 + 40);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B1DE3000, v11, OS_SIGNPOST_INTERVAL_END, v12, "PerformWithSandboxExtension", "", buf, 2u);
  }

  v13 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__WFShortcutRunnerSandboxExtensionManager_performWithSandboxExtensions_asynchronousBlock___block_invoke_143;
  v16[3] = &unk_1E7B02158;
  v17 = v9;
  v14 = *(v13 + 16);
  v15 = v9;
  v14(v13, v8, v7, v16);
}

@end