@interface SKGJob(People)
- (BOOL)_updateCoreSpotlightItems:()People bundleIdentifier:protectionClass:batchUpdatedBlock:cancelBlock:;
- (id)_coreSpotlightIndexWithBundleIdentifier:()People protectionClass:;
@end

@implementation SKGJob(People)

- (id)_coreSpotlightIndexWithBundleIdentifier:()People protectionClass:
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = _coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes;
  if (!_coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = _coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes;
    _coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes = v9;

    v8 = _coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes;
  }

  v11 = [v8 objectForKeyedSubscript:v5];

  if (!v11)
  {
    v12 = [MEMORY[0x277CBEB38] dictionary];
    [_coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes setObject:v12 forKeyedSubscript:v5];
  }

  v13 = [_coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes objectForKeyedSubscript:v5];
  v14 = [v13 objectForKeyedSubscript:v6];

  if (v14)
  {
    v15 = [_coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes objectForKeyedSubscript:v5];
    v16 = [v15 objectForKeyedSubscript:v6];
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277CC34A8]) initWithName:@"KnowledgeIndex" protectionClass:v6 bundleIdentifier:v5];
    v15 = [_coreSpotlightIndexWithBundleIdentifier_protectionClass__sIndexes objectForKeyedSubscript:v5];
    [v15 setObject:v16 forKey:v6];
  }

  objc_autoreleasePoolPop(v7);

  return v16;
}

- (BOOL)_updateCoreSpotlightItems:()People bundleIdentifier:protectionClass:batchUpdatedBlock:cancelBlock:
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = 1;
  if ([v12 count])
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 1;
    v18 = objc_autoreleasePoolPush();
    v19 = [v12 count];
    if (v19)
    {
      v20 = dispatch_group_create();
      dispatch_group_enter(v20);
      v21 = [(SKGJob *)self _coreSpotlightIndexWithBundleIdentifier:v13 protectionClass:v14];
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __107__SKGJob_People___updateCoreSpotlightItems_bundleIdentifier_protectionClass_batchUpdatedBlock_cancelBlock___block_invoke;
      v32 = &unk_27893D798;
      v34 = &v35;
      v22 = v20;
      v33 = v22;
      [v21 indexSearchableItems:v12 completionHandler:&v29];
      v23 = dispatch_time(0, 300000000000);
      if (dispatch_group_wait(v22, v23))
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v24 = SKGLogInit();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [SKGJob(People) _updateCoreSpotlightItems:v24 bundleIdentifier:? protectionClass:? batchUpdatedBlock:? cancelBlock:?];
          }
        }

        atomic_store(0, v36 + 24);
      }

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v19, v29, v30, v31, v32}];
      v15[2](v15, v13, v25);

      v26 = atomic_load(v36 + 24);
      if (v26)
      {
        v27 = v16[2](v16, 0, @"SKGJob+People:updateItems:") ^ 1;
      }

      else
      {
        v27 = 0;
      }

      atomic_store(v27, v36 + 24);
    }

    objc_autoreleasePoolPop(v18);
    v17 = atomic_load(v36 + 24);
    _Block_object_dispose(&v35, 8);
  }

  return v17 & 1;
}

@end