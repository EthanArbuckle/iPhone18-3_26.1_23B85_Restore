@interface PSCloudStorageQuotaManager
+ (id)sharedManager;
- (void)getQuotaInfoForPrimaryAccountCompletion:(id)a3;
@end

@implementation PSCloudStorageQuotaManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PSCloudStorageQuotaManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = gSharedQuotaManager;

  return v2;
}

void __43__PSCloudStorageQuotaManager_sharedManager__block_invoke()
{
  objc_opt_class();
  v0 = objc_opt_new();
  v1 = gSharedQuotaManager;
  gSharedQuotaManager = v0;
}

- (void)getQuotaInfoForPrimaryAccountCompletion:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getQuotaRequestManagerClass_softClass;
  v14 = getQuotaRequestManagerClass_softClass;
  if (!getQuotaRequestManagerClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getQuotaRequestManagerClass_block_invoke;
    v10[3] = &unk_1E71DBC78;
    v10[4] = &v11;
    __getQuotaRequestManagerClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = [v4 sharedManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PSCloudStorageQuotaManager_getQuotaInfoForPrimaryAccountCompletion___block_invoke;
  v8[3] = &unk_1E71DEC18;
  v9 = v3;
  v7 = v3;
  [v6 getQuotaInfoDetailed:1 handler:v8];
}

void __70__PSCloudStorageQuotaManager_getQuotaInfoForPrimaryAccountCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 quotaInfo];
    (*(v2 + 16))(v2, v3);
  }
}

@end