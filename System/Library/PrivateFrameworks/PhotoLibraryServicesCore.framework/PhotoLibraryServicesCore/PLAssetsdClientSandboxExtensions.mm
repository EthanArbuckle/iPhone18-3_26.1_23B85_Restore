@interface PLAssetsdClientSandboxExtensions
- (BOOL)consumeSandboxExtensions:(id)a3;
- (PLAssetsdClientSandboxExtensions)init;
- (void)_stopUsingSecurityScopedURLs;
- (void)dealloc;
@end

@implementation PLAssetsdClientSandboxExtensions

- (PLAssetsdClientSandboxExtensions)init
{
  v7.receiver = self;
  v7.super_class = PLAssetsdClientSandboxExtensions;
  v2 = [(PLAssetsdClientSandboxExtensions *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lock_securityScopedURLs = v3->_lock_securityScopedURLs;
    v3->_lock_securityScopedURLs = v4;
  }

  return v3;
}

- (void)_stopUsingSecurityScopedURLs
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__PLAssetsdClientSandboxExtensions__stopUsingSecurityScopedURLs__block_invoke;
  v2[3] = &unk_1E79329F0;
  v2[4] = self;
  PLRunWithUnfairLock(&self->_lock, v2);
}

uint64_t __64__PLAssetsdClientSandboxExtensions__stopUsingSecurityScopedURLs__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:{*(*(&v9 + 1) + 8 * v6), v9}];
        [v7 stopAccessingSecurityScopedResource];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 32) + 16) removeAllObjects];
}

- (BOOL)consumeSandboxExtensions:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PLAssetsdClientSandboxExtensions_consumeSandboxExtensions___block_invoke;
  v7[3] = &unk_1E7930738;
  v5 = v4;
  v8 = v5;
  v9 = self;
  v10 = &v11;
  PLRunWithUnfairLock(&self->_lock, v7);
  LOBYTE(self) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return self;
}

uint64_t __61__PLAssetsdClientSandboxExtensions_consumeSandboxExtensions___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __61__PLAssetsdClientSandboxExtensions_consumeSandboxExtensions___block_invoke_2;
  v3[3] = &unk_1E7930710;
  v4 = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __61__PLAssetsdClientSandboxExtensions_consumeSandboxExtensions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = MEMORY[0x1E695DFF8];
  v7 = a3;
  v8 = [v6 fileURLWithPath:v5 isDirectory:1];
  MEMORY[0x1AC591C90](v8, v7);

  v9 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];

  if (!v9)
  {
    if ([v8 startAccessingSecurityScopedResource])
    {
      [*(*(a1 + 32) + 16) setObject:v8 forKeyedSubscript:v5];
    }

    else
    {
      v10 = PLBackendGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_ERROR, "Unable to start accessing security scoped URL: %@", &v11, 0xCu);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

- (void)dealloc
{
  [(PLAssetsdClientSandboxExtensions *)self _stopUsingSecurityScopedURLs];
  v3.receiver = self;
  v3.super_class = PLAssetsdClientSandboxExtensions;
  [(PLAssetsdClientSandboxExtensions *)&v3 dealloc];
}

@end