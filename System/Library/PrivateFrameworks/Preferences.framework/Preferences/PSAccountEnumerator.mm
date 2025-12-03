@interface PSAccountEnumerator
- (PSAccountEnumerator)init;
- (void)_handleAccountStoreDidUpdateIsInitialLoad:(BOOL)load completion:(id)completion;
- (void)_reloadAccountStoreStateIsInitialLoad:(BOOL)load completion:(id)completion;
- (void)accountWasAdded:(id)added;
- (void)accountWasModified:(id)modified;
- (void)accountWasRemoved:(id)removed;
- (void)dealloc;
@end

@implementation PSAccountEnumerator

- (PSAccountEnumerator)init
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = PKLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[PSAccountEnumerator init]";
    _os_log_impl(&dword_18B008000, v3, OS_LOG_TYPE_DEFAULT, "%s: start.", buf, 0xCu);
  }

  v12.receiver = self;
  v12.super_class = PSAccountEnumerator;
  v4 = [(PSAccountEnumerator *)&v12 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.preferences-framework.PSAccountEnumerator", 0);
    accountUpdateQueue = v4->__accountUpdateQueue;
    v4->__accountUpdateQueue = v5;

    v7 = objc_alloc(MEMORY[0x1E6959A60]);
    _visibleAccountTypeIDs = [objc_opt_class() _visibleAccountTypeIDs];
    v9 = [v7 initWithAccountTypes:_visibleAccountTypeIDs delegate:v4];
    monitoredAccountStore = v4->__monitoredAccountStore;
    v4->__monitoredAccountStore = v9;

    [(PSAccountEnumerator *)v4 _reloadAccountStoreStateIsInitialLoad:1 completion:&__block_literal_global_4];
  }

  __27__PSAccountEnumerator_init__block_invoke();
  return v4;
}

void __27__PSAccountEnumerator_init__block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = PKLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[PSAccountEnumerator init]_block_invoke";
    _os_log_impl(&dword_18B008000, v0, OS_LOG_TYPE_DEFAULT, "%s: complete.", &v1, 0xCu);
  }
}

void __27__PSAccountEnumerator_init__block_invoke_2()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = PKLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[PSAccountEnumerator init]_block_invoke";
    _os_log_impl(&dword_18B008000, v0, OS_LOG_TYPE_DEFAULT, "%s: Initial account store state reload complete.", &v1, 0xCu);
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PKLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[PSAccountEnumerator dealloc]";
    _os_log_impl(&dword_18B008000, v3, OS_LOG_TYPE_DEFAULT, "%s: start.", buf, 0xCu);
  }

  _monitoredAccountStore = [(PSAccountEnumerator *)self _monitoredAccountStore];
  [_monitoredAccountStore removeDelegate:self];

  __30__PSAccountEnumerator_dealloc__block_invoke();
  v5.receiver = self;
  v5.super_class = PSAccountEnumerator;
  [(PSAccountEnumerator *)&v5 dealloc];
}

void __30__PSAccountEnumerator_dealloc__block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = PKLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[PSAccountEnumerator dealloc]_block_invoke";
    _os_log_impl(&dword_18B008000, v0, OS_LOG_TYPE_DEFAULT, "%s: complete.", &v1, 0xCu);
  }
}

id __39__PSAccountEnumerator_sharedEnumerator__block_invoke()
{
  if (_block_invoke_na_once_token_5 != -1)
  {
    __39__PSAccountEnumerator_sharedEnumerator__block_invoke_cold_1();
  }

  v1 = _block_invoke_na_once_object_5;

  return v1;
}

void __39__PSAccountEnumerator_sharedEnumerator__block_invoke_2()
{
  v0 = objc_alloc_init(PSAccountEnumerator);
  v1 = _block_invoke_na_once_object_5;
  _block_invoke_na_once_object_5 = v0;
}

id __45__PSAccountEnumerator__visibleAccountTypeIDs__block_invoke()
{
  if (_block_invoke_2_na_once_token_6 != -1)
  {
    __45__PSAccountEnumerator__visibleAccountTypeIDs__block_invoke_cold_1();
  }

  v1 = _block_invoke_2_na_once_object_6;

  return v1;
}

void __45__PSAccountEnumerator__visibleAccountTypeIDs__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69598F8], *MEMORY[0x1E6959818], *MEMORY[0x1E6959820], *MEMORY[0x1E6959890], *MEMORY[0x1E69598D8], *MEMORY[0x1E6959840], *MEMORY[0x1E6959878], *MEMORY[0x1E69598C0], *MEMORY[0x1E6959868], *MEMORY[0x1E6959918], *MEMORY[0x1E69597F0], *MEMORY[0x1E69597F8], *MEMORY[0x1E69597E8], *MEMORY[0x1E69597E0], *MEMORY[0x1E69598E0], 0}];
  v1 = _block_invoke_2_na_once_object_6;
  _block_invoke_2_na_once_object_6 = v0;
}

- (void)_reloadAccountStoreStateIsInitialLoad:(BOOL)load completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  _accountUpdateQueue = [(PSAccountEnumerator *)self _accountUpdateQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PSAccountEnumerator__reloadAccountStoreStateIsInitialLoad_completion___block_invoke;
  v9[3] = &unk_1E71DC4D8;
  objc_copyWeak(&v11, &location);
  loadCopy = load;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(_accountUpdateQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __72__PSAccountEnumerator__reloadAccountStoreStateIsInitialLoad_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleAccountStoreDidUpdateIsInitialLoad:*(a1 + 48) completion:*(a1 + 32)];
}

- (void)_handleAccountStoreDidUpdateIsInitialLoad:(BOOL)load completion:(id)completion
{
  loadCopy = load;
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = PKLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[PSAccountEnumerator _handleAccountStoreDidUpdateIsInitialLoad:completion:]";
    _os_log_impl(&dword_18B008000, v7, OS_LOG_TYPE_DEFAULT, "%s: start.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v8 = objc_alloc_init(MEMORY[0x1E69B3780]);
  v9 = [v8 flatMap:&__block_literal_global_26];
  _monitoredAccountStore = [(PSAccountEnumerator *)self _monitoredAccountStore];
  if (loadCopy)
  {
    completionHandlerAdapter = [v8 completionHandlerAdapter];
    [_monitoredAccountStore registerWithCompletion:completionHandlerAdapter];
  }

  else
  {
    completionHandlerAdapter = [_monitoredAccountStore monitoredAccounts];
    [v8 finishWithResult:completionHandlerAdapter];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__PSAccountEnumerator__handleAccountStoreDidUpdateIsInitialLoad_completion___block_invoke_2;
  v14[3] = &unk_1E71DC520;
  objc_copyWeak(&v16, buf);
  v12 = completionCopy;
  v15 = v12;
  v13 = [v9 addCompletionBlock:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  __76__PSAccountEnumerator__handleAccountStoreDidUpdateIsInitialLoad_completion___block_invoke();
}

void __76__PSAccountEnumerator__handleAccountStoreDidUpdateIsInitialLoad_completion___block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = PKLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[PSAccountEnumerator _handleAccountStoreDidUpdateIsInitialLoad:completion:]_block_invoke";
    _os_log_impl(&dword_18B008000, v0, OS_LOG_TYPE_DEFAULT, "%s: complete.", &v1, 0xCu);
  }
}

id __76__PSAccountEnumerator__handleAccountStoreDidUpdateIsInitialLoad_completion___block_invoke_23(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 isVisible])
        {
          v9 = [v8 parentAccount];

          if (!v9)
          {
            ++v5;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v10 = MEMORY[0x1E69B3780];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v12 = [v10 futureWithResult:v11];

  return v12;
}

void __76__PSAccountEnumerator__handleAccountStoreDidUpdateIsInitialLoad_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = PKLogForCategory(0);
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __76__PSAccountEnumerator__handleAccountStoreDidUpdateIsInitialLoad_completion___block_invoke_2_cold_1(v6, v9);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[PSAccountEnumerator _handleAccountStoreDidUpdateIsInitialLoad:completion:]_block_invoke";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_18B008000, v9, OS_LOG_TYPE_DEFAULT, "%s: New visible account count %{public}@.", &v11, 0x16u);
    }

    [WeakRetained setVisibleAccountCount:{objc_msgSend(v5, "integerValue")}];
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

- (void)accountWasAdded:(id)added
{
  v8 = *MEMORY[0x1E69E9840];
  addedCopy = added;
  v5 = PKLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[PSAccountEnumerator accountWasAdded:]";
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "%s: start.", &v6, 0xCu);
  }

  [(PSAccountEnumerator *)self _reloadAccountStoreStateIsInitialLoad:0 completion:&__block_literal_global_33];
  __39__PSAccountEnumerator_accountWasAdded___block_invoke();
}

void __39__PSAccountEnumerator_accountWasAdded___block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = PKLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[PSAccountEnumerator accountWasAdded:]_block_invoke";
    _os_log_impl(&dword_18B008000, v0, OS_LOG_TYPE_DEFAULT, "%s: complete.", &v1, 0xCu);
  }
}

void __39__PSAccountEnumerator_accountWasAdded___block_invoke_31()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = PKLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[PSAccountEnumerator accountWasAdded:]_block_invoke";
    _os_log_impl(&dword_18B008000, v0, OS_LOG_TYPE_DEFAULT, "%s: Account store state reload complete.", &v1, 0xCu);
  }
}

- (void)accountWasRemoved:(id)removed
{
  v8 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  v5 = PKLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[PSAccountEnumerator accountWasRemoved:]";
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "%s: start.", &v6, 0xCu);
  }

  [(PSAccountEnumerator *)self _reloadAccountStoreStateIsInitialLoad:0 completion:&__block_literal_global_38_0];
  __41__PSAccountEnumerator_accountWasRemoved___block_invoke();
}

void __41__PSAccountEnumerator_accountWasRemoved___block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = PKLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[PSAccountEnumerator accountWasRemoved:]_block_invoke";
    _os_log_impl(&dword_18B008000, v0, OS_LOG_TYPE_DEFAULT, "%s: complete.", &v1, 0xCu);
  }
}

void __41__PSAccountEnumerator_accountWasRemoved___block_invoke_36()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = PKLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[PSAccountEnumerator accountWasRemoved:]_block_invoke";
    _os_log_impl(&dword_18B008000, v0, OS_LOG_TYPE_DEFAULT, "%s: Account store state reload complete.", &v1, 0xCu);
  }
}

- (void)accountWasModified:(id)modified
{
  v8 = *MEMORY[0x1E69E9840];
  modifiedCopy = modified;
  v5 = PKLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[PSAccountEnumerator accountWasModified:]";
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "%s: start.", &v6, 0xCu);
  }

  [(PSAccountEnumerator *)self _reloadAccountStoreStateIsInitialLoad:0 completion:&__block_literal_global_43_0];
  __42__PSAccountEnumerator_accountWasModified___block_invoke();
}

void __42__PSAccountEnumerator_accountWasModified___block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = PKLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[PSAccountEnumerator accountWasModified:]_block_invoke";
    _os_log_impl(&dword_18B008000, v0, OS_LOG_TYPE_DEFAULT, "%s: complete.", &v1, 0xCu);
  }
}

void __42__PSAccountEnumerator_accountWasModified___block_invoke_41()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = PKLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[PSAccountEnumerator accountWasModified:]_block_invoke";
    _os_log_impl(&dword_18B008000, v0, OS_LOG_TYPE_DEFAULT, "%s: Account store state reload complete.", &v1, 0xCu);
  }
}

void __76__PSAccountEnumerator__handleAccountStoreDidUpdateIsInitialLoad_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "[PSAccountEnumerator _handleAccountStoreDidUpdateIsInitialLoad:completion:]_block_invoke_2";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_18B008000, a2, OS_LOG_TYPE_ERROR, "%s: Error occurred while reloading account store state %{public}@.", &v2, 0x16u);
}

@end