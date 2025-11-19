@interface SLSWActionDispatcher
- (SLSWActionDispatcher)initWithQueue:(id)a3;
- (id)bundleIDForProcess:(id)a3 error:(id *)a4;
- (void)_sendAction:(id)a3 toProcess:(id)a4 completion:(id)a5;
- (void)dispatchAction:(id)a3 toProcess:(id)a4 completion:(id)a5;
- (void)dispatchAction:(id)a3 withAssertionForProcess:(id)a4 completion:(id)a5;
@end

@implementation SLSWActionDispatcher

- (SLSWActionDispatcher)initWithQueue:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SLSWActionDispatcher;
  v6 = [(SLSWActionDispatcher *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callbackQueue, a3);
    v8 = SLDGlobalWorkloop();
    v9 = dispatch_queue_create_with_target_V2("com.apple.sociallayerd.SLSWActionDispatcher", 0, v8);
    workQueue = v7->_workQueue;
    v7->_workQueue = v9;
  }

  return v7;
}

- (id)bundleIDForProcess:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D46FA0] predicateMatchingIdentity:v5];
  v18 = 0;
  v7 = [MEMORY[0x277D46F48] handleForPredicate:v6 error:&v18];
  v8 = v18;
  if (v7)
  {
    v9 = [v7 bundle];
    v10 = [v9 identifier];
    goto LABEL_10;
  }

  v11 = SLDaemonLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v8;
    _os_log_error_impl(&dword_231772000, v11, OS_LOG_TYPE_ERROR, "Failed to get bundle ID from process identity: %@, predicate: %@, error: %@", buf, 0x20u);
  }

  if (v8)
  {
    v9 = v8;
    if (a4)
    {
LABEL_7:
      v12 = v9;
      v10 = 0;
      *a4 = v9;
      goto LABEL_10;
    }
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA068];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get bundle ID from process identity: %@", v5];
    v20 = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v9 = [v13 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v15];

    if (a4)
    {
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)dispatchAction:(id)a3 withAssertionForProcess:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__SLSWActionDispatcher_dispatchAction_withAssertionForProcess_completion___block_invoke;
  v10[3] = &unk_278926358;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(SLSWActionDispatcher *)self _sendAction:a3 toProcess:a4 completion:v10];
}

void __74__SLSWActionDispatcher_dispatchAction_withAssertionForProcess_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v21 = 0;
    v8 = +[SLRBSAssertion assertionWithType:pid:error:](SLRBSAssertion, "assertionWithType:pid:error:", 0, [v5 pid], &v21);
    v9 = v21;
    if (v8 && ([v8 isValid] & 1) != 0)
    {
      (*(*(a1 + 40) + 16))();
    }

    else if (!v9)
    {
      v10 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA068];
      v25[0] = @"We were able to launch the target app, but we failed to acquire the required RB assertion.";
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v9 = [v10 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v11];
    }
  }

  else
  {
    if (v6)
    {
      v12 = v6;
    }

    else
    {
      v13 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA068];
      v23 = @"Unable to launch app for a universal link.";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v12 = [v13 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v14];
    }

    v15 = [*(a1 + 32) callbackQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__SLSWActionDispatcher_dispatchAction_withAssertionForProcess_completion___block_invoke_2;
    v18[3] = &unk_2789260C8;
    v16 = *(a1 + 40);
    v19 = v12;
    v20 = v16;
    v9 = v12;
    dispatch_async(v15, v18);

    v8 = v20;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)dispatchAction:(id)a3 toProcess:(id)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__SLSWActionDispatcher_dispatchAction_toProcess_completion___block_invoke;
  v10[3] = &unk_278926380;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(SLSWActionDispatcher *)self _sendAction:a3 toProcess:a4 completion:v10];
}

void __60__SLSWActionDispatcher_dispatchAction_toProcess_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = 0;
  }

  else if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA068];
    v19[0] = @"Unable to launch app for a universal link.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v8 = [v9 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v10];
  }

  v11 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SLSWActionDispatcher_dispatchAction_toProcess_completion___block_invoke_2;
  block[3] = &unk_2789260C8;
  v12 = *(a1 + 40);
  v16 = v8;
  v17 = v12;
  v13 = v8;
  dispatch_async(v11, block);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_sendAction:(id)a3 toProcess:(id)a4 completion:(id)a5
{
  v34[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27 = 0;
  v11 = [(SLSWActionDispatcher *)self bundleIDForProcess:v9 error:&v27];
  v12 = v27;
  if (v11)
  {
    v13 = [v8 sourceBSAction];
    if (v13)
    {
      v14 = [MEMORY[0x277CBEB38] dictionary];
      [v14 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D0ABF0]];
      v32 = v13;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
      [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277D0ABD0]];

      v16 = [MEMORY[0x277D0AD60] optionsWithDictionary:v14];
      v17 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
      v18 = SLDaemonLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v29 = "[SLSWActionDispatcher _sendAction:toProcess:completion:]";
        v30 = 2114;
        v31 = v11;
        _os_log_impl(&dword_231772000, v18, OS_LOG_TYPE_DEFAULT, "[%s] Launching app with bundleIdentifier: %{public}@", buf, 0x16u);
      }

      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __57__SLSWActionDispatcher__sendAction_toProcess_completion___block_invoke;
      v24[3] = &unk_278926380;
      v25 = v11;
      v26 = v10;
      [v17 openApplication:v25 withOptions:v16 completion:v24];
    }

    else
    {
      v20 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA068];
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to retrieve a BSAction for: %@", v8];
      v34[0] = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      v14 = [v20 errorWithDomain:@"com.apple.sociallayerd.SLDCollaborationHandshakeService" code:1 userInfo:v22];

      (*(v10 + 2))(v10, 0, v14);
    }
  }

  else
  {
    v19 = SLDaemonLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SLSWActionDispatcher _sendAction:v8 toProcess:v9 completion:v19];
    }

    (*(v10 + 2))(v10, 0, v12);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __57__SLSWActionDispatcher__sendAction_toProcess_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = SLDaemonLogHandle();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __57__SLSWActionDispatcher__sendAction_toProcess_completion___block_invoke_cold_1(a1, v6, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_DEFAULT, "Application launch succeeded for bundle identifier: %{public}@", &v12, 0xCu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_sendAction:(uint64_t)a1 toProcess:(uint64_t)a2 completion:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_231772000, a2, a3, "Could not send action (%@) without a bundle ID for process (%@)", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

void __57__SLSWActionDispatcher__sendAction_toProcess_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 32);
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_231772000, a2, a3, "Application launch failed for %{public}@: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end