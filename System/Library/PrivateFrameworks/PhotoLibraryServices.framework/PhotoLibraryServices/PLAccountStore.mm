@interface PLAccountStore
+ (id)pl_sharedAccountStore;
- (ACAccount)cachedPrimaryAppleAccount;
- (PLAccountStore)init;
- (void)accountDidChange:(id)a3;
- (void)dealloc;
@end

@implementation PLAccountStore

+ (id)pl_sharedAccountStore
{
  pl_dispatch_once();
  v2 = pl_sharedAccountStore_accountStore;

  return v2;
}

void __39__PLAccountStore_pl_sharedAccountStore__block_invoke()
{
  v0 = objc_alloc_init(PLAccountStore);
  v1 = pl_sharedAccountStore_accountStore;
  pl_sharedAccountStore_accountStore = v0;
}

- (PLAccountStore)init
{
  v7.receiver = self;
  v7.super_class = PLAccountStore;
  v2 = [(PLAccountStore *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("placcount-queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel_accountDidChange_ name:*MEMORY[0x1E69597D8] object:v2];
  }

  return v2;
}

void __43__PLAccountStore_cachedPrimaryAppleAccount__block_invoke(uint64_t a1)
{
  v38[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[15];
  v4 = 0x1E695D000uLL;
  if (!v3)
  {
    v5 = [v2 aa_primaryAppleAccount];
    v6 = *(a1 + 32);
    v7 = *(v6 + 120);
    *(v6 + 120) = v5;

    v8 = *(*(a1 + 32) + 120);
    v9 = PLBackendGetLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = *(*(a1 + 32) + 120);
        *buf = 138412290;
        v34 = v11;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Caching primaryAppleAccount: %@", buf, 0xCu);
      }

      v12 = *MEMORY[0x1E69596A0];
      v38[0] = *MEMORY[0x1E6959638];
      v38[1] = v12;
      v13 = *MEMORY[0x1E6959680];
      v38[2] = *MEMORY[0x1E69596F0];
      v38[3] = v13;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v14 = v32 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v15)
      {
        v17 = v15;
        v18 = *v30;
        *&v16 = 138412546;
        v28 = v16;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v29 + 1) + 8 * i);
            v21 = [*(*(a1 + 32) + 120) isEnabledForDataclass:{v20, v28, v29}];
            v22 = PLBackendGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v28;
              v23 = @" NOT ";
              if (v21)
              {
                v23 = @" ";
              }

              v34 = v23;
              v35 = 2112;
              v36 = v20;
              _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "primaryAppleAccount is%@enabled for dataclass %@", buf, 0x16u);
            }
          }

          v17 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v17);
      }

      v4 = 0x1E695D000;
    }

    else
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "No primaryAppleAccount", buf, 2u);
      }

      v24 = [MEMORY[0x1E695DFB0] null];
      v25 = *(a1 + 32);
      v14 = *(v25 + 120);
      *(v25 + 120) = v24;
    }

    v3 = *(*(a1 + 32) + 120);
  }

  v26 = [*(v4 + 4016) null];
  v27 = [v3 isEqual:v26];

  if ((v27 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 120));
  }
}

- (ACAccount)cachedPrimaryAppleAccount
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__34921;
  v8 = __Block_byref_object_dispose__34922;
  v9 = 0;
  pl_dispatch_sync();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __39__PLAccountStore_clearCachedProperties__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 120);
  *(v1 + 120) = 0;
}

- (void)accountDidChange:(id)a3
{
  v4 = a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "ACAccountStore accountDidChange, clearing cached properties in PLAccountStore.", buf, 2u);
  }

  [(PLAccountStore *)self clearCachedProperties];
  v6 = [v4 userInfo];

  v7 = PLBackendGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "ACAccountStore accountDidChange. Posting PLAccountStoreDidChange notification.", v9, 2u);
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"PLAccountStoreDidChangeNotification" object:self userInfo:v6];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PLAccountStore;
  [(PLAccountStore *)&v4 dealloc];
}

@end