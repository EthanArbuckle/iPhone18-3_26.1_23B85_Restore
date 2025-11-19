@interface WBSTestController
- (NSArray)bundles;
- (WBSTestController)initWithSuiteURL:(id)a3 bundleNames:(id)a4;
- (void)_runTestsAndStoreResultsIn:(id)a3 completionBlock:(id)a4;
- (void)runTestsAndStoreResultsIn:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSTestController

- (WBSTestController)initWithSuiteURL:(id)a3 bundleNames:(id)a4
{
  v6 = a3;
  v7 = a4;
  result = [MEMORY[0x1E69C8880] isInternalInstall];
  if (result)
  {
    v22.receiver = self;
    v22.super_class = WBSTestController;
    v9 = [(WBSTestController *)&v22 init];
    if (v9)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.WBSTestController.%@.%p.internalQueue", objc_opt_class(), v9];
      v11 = dispatch_queue_create([v10 UTF8String], 0);
      internalQueue = v9->_internalQueue;
      v9->_internalQueue = v11;

      if (v6)
      {
        v13 = [v7 copy];

        v14 = v9->_internalQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __50__WBSTestController_initWithSuiteURL_bundleNames___block_invoke;
        block[3] = &unk_1E7FB7258;
        v7 = v13;
        v19 = v7;
        v20 = v6;
        v15 = v9;
        v21 = v15;
        dispatch_async(v14, block);
        v16 = v15;
      }

      else
      {
        v17 = v9;
      }
    }

    return v9;
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

void __50__WBSTestController_initWithSuiteURL_bundleNames___block_invoke(id *a1)
{
  if ([a1[4] count])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__WBSTestController_initWithSuiteURL_bundleNames___block_invoke_2;
    v13[3] = &unk_1E7FCAF68;
    v2 = a1[4];
    v14 = a1[5];
    v3 = [v2 safari_mapAndFilterObjectsUsingBlock:v13];
  }

  else
  {
    v4 = MEMORY[0x1E696AAE8];
    v5 = a1[5];
    v6 = [a1[6] bundleType];
    v7 = [v4 safari_bundlesFromDirectory:v5 bundleType:v6];

    v3 = [v7 sortedArrayUsingComparator:&__block_literal_global_108];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__WBSTestController_initWithSuiteURL_bundleNames___block_invoke_4;
  v11[3] = &unk_1E7FCAFB0;
  v12 = a1[6];
  v8 = [v3 safari_mapAndFilterObjectsUsingBlock:v11];
  v9 = a1[6];
  v10 = v9[2];
  v9[2] = v8;
}

id __50__WBSTestController_initWithSuiteURL_bundleNames___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) URLByAppendingPathComponent:v4 isDirectory:1];

  v7 = [v5 initWithURL:v6];

  return v7;
}

uint64_t __50__WBSTestController_initWithSuiteURL_bundleNames___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 bundleURL];
  v6 = [v5 lastPathComponent];
  v7 = [v4 bundleURL];

  v8 = [v7 lastPathComponent];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)_runTestsAndStoreResultsIn:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke;
  v10[3] = &unk_1E7FCB0C8;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  [(WBSTestController *)self prepareSuiteWithCompletionHandler:v10];
}

void __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) reportError:a2 descriptiveResultsName:0 forStage:0 forTest:0 inBundle:0];
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(v5 + 8);
    v6 = *(v5 + 16);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_2;
    v15[3] = &unk_1E7FCB0A0;
    v15[4] = v5;
    v16 = v4;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_10;
    v11[3] = &unk_1E7FB6E08;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = v8;
    v13 = v9;
    v14 = v10;
    [v6 safari_enumerateAsynchronouslyOnQueue:v7 enumerationBlock:v15 completionBlock:v11];
  }
}

void __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_3;
  v11[3] = &unk_1E7FCA9A0;
  v8 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v6;
  v14 = *(a1 + 32);
  v15 = v7;
  v9 = v7;
  v10 = v6;
  [v8 prepareBundle:v10 completionHandler:v11];
}

void __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) reportError:v3 descriptiveResultsName:0 forStage:0 forTest:0 inBundle:*(a1 + 40)];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 0;
    v4 = [*(a1 + 40) allTests];
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(v6 + 8);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_4;
    v15[3] = &unk_1E7FCB028;
    v15[4] = v6;
    v16 = v5;
    v18 = v19;
    v17 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_8;
    v10[3] = &unk_1E7FCB078;
    v9 = *(a1 + 40);
    v8 = v9.i64[0];
    v11 = vextq_s8(v9, v9, 8uLL);
    v12 = *(a1 + 32);
    v14 = v19;
    v13 = *(a1 + 56);
    [v4 safari_enumerateAsynchronouslyOnQueue:v7 enumerationBlock:v15 completionBlock:v10];

    _Block_object_dispose(v19, 8);
  }
}

void __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_4(void *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = a1[4];
  v9 = a1[5];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_5;
  v15[3] = &unk_1E7FCB000;
  v10 = a1[6];
  v21 = a1[7];
  v16 = v10;
  v17 = v6;
  v11 = a1[5];
  v12 = a1[4];
  v18 = v11;
  v19 = v12;
  v20 = v7;
  v13 = v7;
  v14 = v6;
  [v8 prepareTest:v14 bundle:v9 completionHandler:v15];
}

void __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    [*(a1 + 32) reportError:a2 descriptiveResultsName:0 forStage:0 forTest:*(a1 + 40) inBundle:*(a1 + 48)];
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    [*(a1 + 32) beginTest:*(a1 + 40) inBundle:*(a1 + 48)];
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_6;
    v13[3] = &unk_1E7FCB000;
    v17 = *(a1 + 72);
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    *&v11 = v9;
    *(&v11 + 1) = *(a1 + 56);
    v16 = v10;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    v14 = v12;
    v15 = v11;
    [v4 runTest:v6 bundle:v5 storeResultsIn:v7 completionHandler:v13];
  }
}

void __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    [*(a1 + 32) reportError:a2 descriptiveResultsName:0 forStage:0 forTest:*(a1 + 40) inBundle:*(a1 + 48)];
    [*(a1 + 32) endTest:*(a1 + 40) inBundle:*(a1 + 48)];
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_7;
    v7[3] = &unk_1E7FCAFD8;
    v12 = *(a1 + 72);
    v6 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    [v4 cleanTest:v6 bundle:v5 completionHandler:v7];
  }
}

uint64_t __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_7(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    [*(a1 + 32) reportError:a2 descriptiveResultsName:0 forStage:0 forTest:*(a1 + 40) inBundle:*(a1 + 48)];
  }

  [*(a1 + 32) endTest:*(a1 + 40) inBundle:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 16);

  return v3();
}

void __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_9;
  v6[3] = &unk_1E7FCB050;
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v5 = *(a1 + 56);
  v4 = v5;
  v9 = v5;
  [v2 cleanBundle:v3 completionHandler:v6];
}

uint64_t __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_9(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) reportError:a2 descriptiveResultsName:0 forStage:0 forTest:0 inBundle:*(a1 + 40)];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_10(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_11;
  v4[3] = &unk_1E7FB6E08;
  v3 = *(a1 + 32);
  v2 = v3.i64[0];
  v5 = vextq_s8(v3, v3, 8uLL);
  v6 = *(a1 + 48);
  [v2 flushWithCompletionHandler:v4];
}

void __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_11(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_12;
  v3[3] = &unk_1E7FB8208;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 cleanSuiteWithCompletionHandler:v3];
}

uint64_t __64__WBSTestController__runTestsAndStoreResultsIn_completionBlock___block_invoke_12(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) reportError:a2 descriptiveResultsName:0 forStage:0 forTest:0 inBundle:0];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)runTestsAndStoreResultsIn:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__WBSTestController_runTestsAndStoreResultsIn_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7378;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(internalQueue, block);
}

void __65__WBSTestController_runTestsAndStoreResultsIn_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 1)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXTest();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __65__WBSTestController_runTestsAndStoreResultsIn_completionHandler___block_invoke_cold_1(v3);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    *(v2 + 24) = 1;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__WBSTestController_runTestsAndStoreResultsIn_completionHandler___block_invoke_10;
    v6[3] = &unk_1E7FB81B8;
    v6[4] = v4;
    v7 = *(a1 + 48);
    [v4 _runTestsAndStoreResultsIn:v5 completionBlock:v6];
  }
}

void __65__WBSTestController_runTestsAndStoreResultsIn_completionHandler___block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__WBSTestController_runTestsAndStoreResultsIn_completionHandler___block_invoke_2;
  v4[3] = &unk_1E7FB81B8;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

- (NSArray)bundles
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__35;
  v10 = __Block_byref_object_dispose__35;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__WBSTestController_bundles__block_invoke;
  v5[3] = &unk_1E7FB7490;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __28__WBSTestController_bundles__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end