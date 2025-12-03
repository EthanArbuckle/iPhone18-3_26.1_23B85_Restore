@interface NSFileProviderManager(BRCAdditions)
+ (uint64_t)br_addDomain:()BRCAdditions forProviderIdentifier:error:;
+ (uint64_t)br_importDomain:()BRCAdditions forProviderIdentifier:fromDirectoryAtURL:error:;
+ (uint64_t)br_importDomain:()BRCAdditions forProviderIdentifier:fromDirectoryAtURL:knownFolders:error:;
- (void)_br_removeDomain:()BRCAdditions options:retries:completionHandler:;
- (void)br_addDomain:()BRCAdditions completionHandler:;
- (void)br_removeDomain:()BRCAdditions options:sync:completionHandler:;
- (void)br_removeDomain:()BRCAdditions sync:completionHandler:;
- (void)br_signalEnumeratorForContainerItemIdentifier:()BRCAdditions completionHandler:;
@end

@implementation NSFileProviderManager(BRCAdditions)

- (void)br_removeDomain:()BRCAdditions sync:completionHandler:
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__NSFileProviderManager_BRCAdditions__br_removeDomain_sync_completionHandler___block_invoke;
  v10[3] = &unk_2785054E8;
  v11 = v8;
  v9 = v8;
  [self br_removeDomain:a3 options:0 sync:a4 completionHandler:v10];
}

- (void)_br_removeDomain:()BRCAdditions options:retries:completionHandler:
{
  v10 = a3;
  v11 = a6;
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentPersona = [mEMORY[0x277D77BF8] currentPersona];
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];

  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__NSFileProviderManager_BRCAdditions___br_removeDomain_options_retries_completionHandler___block_invoke;
  v18[3] = &unk_278506B70;
  v15 = v11;
  v21 = v15;
  v22[1] = a5;
  objc_copyWeak(v22, &location);
  v16 = userPersonaUniqueString;
  v19 = v16;
  v17 = v10;
  v20 = v17;
  v22[2] = a4;
  [self removeDomain:v17 options:a4 completionHandler:v18];

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

- (void)br_removeDomain:()BRCAdditions options:sync:completionHandler:
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  if (a5)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__49;
    v33 = __Block_byref_object_dispose__49;
    v34 = 0;
    v12 = MEMORY[0x277CFAF00];
    v13 = [BRCUserDefaults defaultsForMangledID:0];
    xpcConnectionFailureRetries = [v13 xpcConnectionFailureRetries];
    v28 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __86__NSFileProviderManager_BRCAdditions__br_removeDomain_options_sync_completionHandler___block_invoke;
    v24[3] = &unk_278506B98;
    v24[4] = self;
    v15 = v10;
    v25 = v15;
    v26 = &v29;
    v27 = a4;
    LODWORD(v12) = [v12 executeXPCWithMaxRetries:xpcConnectionFailureRetries error:&v28 block:v24];
    v16 = v28;

    if (v12)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [NSFileProviderManager(BRCAdditions) br_removeDomain:v15 options:v17 sync:v18 completionHandler:?];
      }
    }

    else
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        *buf = 138412802;
        v36 = v15;
        v37 = 2112;
        v38 = v16;
        v39 = 2112;
        v40 = v17;
        _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] couldn't remove domain %@ in a sync way: %@%@", buf, 0x20u);
      }
    }

    v11[2](v11, v30[5], v16);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__49;
    v33 = __Block_byref_object_dispose__49;
    v34 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __86__NSFileProviderManager_BRCAdditions__br_removeDomain_options_sync_completionHandler___block_invoke_6;
    v20[3] = &unk_278506BC0;
    v23 = &v29;
    v21 = v10;
    v22 = v11;
    [self br_removeDomain:v21 options:a4 completionHandler:v20];

    _Block_object_dispose(&v29, 8);
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (uint64_t)br_importDomain:()BRCAdditions forProviderIdentifier:fromDirectoryAtURL:error:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CFAF00];
  v13 = [BRCUserDefaults defaultsForMangledID:0];
  xpcConnectionFailureRetries = [v13 xpcConnectionFailureRetries];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __102__NSFileProviderManager_BRCAdditions__br_importDomain_forProviderIdentifier_fromDirectoryAtURL_error___block_invoke;
  v20[3] = &unk_278506BE8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  v18 = [v12 executeXPCWithMaxRetries:xpcConnectionFailureRetries error:a6 block:v20];

  return v18;
}

+ (uint64_t)br_importDomain:()BRCAdditions forProviderIdentifier:fromDirectoryAtURL:knownFolders:error:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x277CFAF00];
  v16 = [BRCUserDefaults defaultsForMangledID:0];
  xpcConnectionFailureRetries = [v16 xpcConnectionFailureRetries];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __115__NSFileProviderManager_BRCAdditions__br_importDomain_forProviderIdentifier_fromDirectoryAtURL_knownFolders_error___block_invoke;
  v24[3] = &unk_278506C10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  v21 = v11;
  v22 = [v15 executeXPCWithMaxRetries:xpcConnectionFailureRetries error:a7 block:v24];

  return v22;
}

+ (uint64_t)br_addDomain:()BRCAdditions forProviderIdentifier:error:
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CFAF00];
  v10 = [BRCUserDefaults defaultsForMangledID:0];
  xpcConnectionFailureRetries = [v10 xpcConnectionFailureRetries];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__NSFileProviderManager_BRCAdditions__br_addDomain_forProviderIdentifier_error___block_invoke;
  v16[3] = &unk_278506C38;
  v17 = v7;
  v18 = v8;
  v12 = v8;
  v13 = v7;
  v14 = [v9 executeXPCWithMaxRetries:xpcConnectionFailureRetries error:a5 block:v16];

  return v14;
}

- (void)br_addDomain:()BRCAdditions completionHandler:
{
  v6 = a3;
  v7 = MEMORY[0x277CFAF00];
  v8 = a4;
  v9 = [BRCUserDefaults defaultsForMangledID:0];
  xpcConnectionFailureRetries = [v9 xpcConnectionFailureRetries];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__NSFileProviderManager_BRCAdditions__br_addDomain_completionHandler___block_invoke;
  v12[3] = &unk_278504658;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v7 executeAsyncXPCWithMaxRetries:xpcConnectionFailureRetries completion:v8 xpcInvokeBlock:v12];
}

- (void)br_signalEnumeratorForContainerItemIdentifier:()BRCAdditions completionHandler:
{
  v6 = a3;
  v7 = MEMORY[0x277CFAF00];
  v8 = a4;
  v9 = [BRCUserDefaults defaultsForMangledID:0];
  xpcConnectionFailureRetries = [v9 xpcConnectionFailureRetries];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __103__NSFileProviderManager_BRCAdditions__br_signalEnumeratorForContainerItemIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_278504658;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v7 executeAsyncXPCWithMaxRetries:xpcConnectionFailureRetries completion:v8 xpcInvokeBlock:v12];
}

@end