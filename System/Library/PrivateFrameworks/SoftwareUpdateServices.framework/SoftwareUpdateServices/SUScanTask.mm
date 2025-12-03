@interface SUScanTask
- (BOOL)cancelTask;
- (SUScanTask)initWithOptions:(id)options;
- (int64_t)_scanPriorityForOptions:(id)options;
- (int64_t)scanPriority;
- (void)_queue_CollectDocumentation:(id)documentation sessionID:(id)d completion:(id)completion;
- (void)_queue_scanForUpdates:(id)updates sessionID:(id)d completion:(id)completion;
- (void)scanForDocumentationAssetWithDescriptor:(id)descriptor completion:(id)completion;
- (void)scanForSUAssetWithCompletion:(id)completion;
@end

@implementation SUScanTask

- (SUScanTask)initWithOptions:(id)options
{
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = SUScanTask;
  v6 = [(SUScanTask *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_scanPriority = [(SUScanTask *)v6 _scanPriorityForOptions:optionsCopy];
    objc_storeStrong(&v7->_scanOptions, options);
    coreScanner = v7->_coreScanner;
    v7->_coreScanner = 0;

    suScanPolicy = v7->_suScanPolicy;
    v7->_suScanPolicy = 0;

    sessionID = [optionsCopy sessionID];
    sessionID = v7->_sessionID;
    v7->_sessionID = sessionID;

    v7->_cancelRequested = 0;
    v12 = dispatch_queue_create("com.apple.softwareupdateservices.SUScanTaskQueue", 0);
    scanQueue = v7->_scanQueue;
    v7->_scanQueue = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    types = v7->_types;
    v7->_types = v14;
  }

  return v7;
}

- (void)scanForSUAssetWithCompletion:(id)completion
{
  completionCopy = completion;
  scanQueue = self->_scanQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SUScanTask_scanForSUAssetWithCompletion___block_invoke;
  v7[3] = &unk_279CAA8D0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(scanQueue, v7);
}

void __43__SUScanTask_scanForSUAssetWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a1 + 32);
  if (*(v9 + 48) == 1)
  {
    SULogInfo(@"cancel requested so not performing scanForSUAssetWithCompletion and not triggering completion", a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    [*(a1 + 32) _queue_scanForUpdates:*(v9 + 16) sessionID:*(v9 + 40) completion:*(a1 + 40)];
  }
}

- (void)scanForDocumentationAssetWithDescriptor:(id)descriptor completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
  scanQueue = self->_scanQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SUScanTask_scanForDocumentationAssetWithDescriptor_completion___block_invoke;
  block[3] = &unk_279CAA8F8;
  block[4] = self;
  v12 = descriptorCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = descriptorCopy;
  dispatch_async(scanQueue, block);
}

void __65__SUScanTask_scanForDocumentationAssetWithDescriptor_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a1 + 32);
  if (*(v9 + 48) == 1)
  {
    SULogInfo(@"cancel requested so not performing scanForDocumentationAssetWithDescriptor and not triggering completion", a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    [*(a1 + 32) _queue_CollectDocumentation:*(a1 + 40) sessionID:*(v9 + 40) completion:*(a1 + 48)];
  }
}

- (BOOL)cancelTask
{
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_scanQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  scanQueue = selfCopy->_scanQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __24__SUScanTask_cancelTask__block_invoke;
  v5[3] = &unk_279CAA948;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(scanQueue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __24__SUScanTask_cancelTask__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 24))
  {
    *(v1 + 48) = 1;
    v3 = dispatch_semaphore_create(0);
    v4 = *(*(a1 + 32) + 24);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __24__SUScanTask_cancelTask__block_invoke_2;
    v7[3] = &unk_279CAA920;
    v5 = *(a1 + 40);
    v8 = v3;
    v9 = v5;
    v6 = v3;
    [v4 cancelCurrentScan:v7];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  }
}

intptr_t __24__SUScanTask_cancelTask__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    SULogInfo(@"active scan canceled with error:%@", a2, a3, a4, a5, a6, a7, a8, a2);
  }

  else
  {
    SULogInfo(@"active scan canceled successfully", 0, a3, a4, a5, a6, a7, a8, v11);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v9 = *(a1 + 32);

  return dispatch_semaphore_signal(v9);
}

- (int64_t)_scanPriorityForOptions:(id)options
{
  optionsCopy = options;
  isSplatOnlyScan = [optionsCopy isSplatOnlyScan];
  isForced = [optionsCopy isForced];
  if (isSplatOnlyScan)
  {
    if (isForced)
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    if (isForced)
    {
      v7 = 4;
    }

    else
    {
      v7 = 2;
    }

    requestedPMV = [optionsCopy requestedPMV];

    if (requestedPMV)
    {
      v6 = 5;
    }

    else
    {
      v6 = v7;
    }
  }

  return v6;
}

- (int64_t)scanPriority
{
  dispatch_assert_queue_not_V2(self->_scanQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  scanQueue = self->_scanQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__SUScanTask_scanPriority__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(scanQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_queue_scanForUpdates:(id)updates sessionID:(id)d completion:(id)completion
{
  v48[1] = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_scanQueue);
  v9 = objc_alloc_init(SUPolicyFactory);
  v40 = updatesCopy;
  [(SUPolicyFactory *)v9 setScanOptions:updatesCopy];
  corePolicy = [(SUPolicyFactory *)v9 corePolicy];
  suScanPolicy = self->_suScanPolicy;
  self->_suScanPolicy = corePolicy;

  globalOptions = [(SUPolicyFactory *)v9 globalOptions];
  v47 = *MEMORY[0x277D647C0];
  v48[0] = dCopy;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
  [globalOptions appendUpdateMetricEventFields:v13];

  v41 = v9;
  v39 = globalOptions;
  [(SUPolicyFactory *)v9 setGlobalOptions:globalOptions];
  v45[0] = @"AutomaticDownloadOver3G";
  v36 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v46[0] = v36;
  v45[1] = *MEMORY[0x277D64278];
  v35 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v46[1] = v35;
  v45[2] = *MEMORY[0x277D64270];
  v34 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v46[2] = v34;
  v45[3] = *MEMORY[0x277D64268];
  v33 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v46[3] = v33;
  v45[4] = *MEMORY[0x277D64280];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:30];
  v46[4] = v14;
  v45[5] = *MEMORY[0x277D64288];
  v15 = [MEMORY[0x277CCABB0] numberWithInt:80];
  v46[5] = v15;
  v45[6] = *MEMORY[0x277D642E8];
  v16 = MEMORY[0x277CCABB0];
  v17 = +[SUPreferences sharedInstance];
  v18 = [v16 numberWithBool:{objc_msgSend(v17, "overrideRamping")}];
  v46[6] = v18;
  v45[7] = *MEMORY[0x277D642A8];
  v19 = MEMORY[0x277CCABB0];
  v20 = +[SUPreferences sharedInstance];
  v21 = [v19 numberWithBool:{objc_msgSend(v20, "overrideGranularRamping")}];
  v46[7] = v21;
  v45[8] = *MEMORY[0x277D642A0];
  v22 = MEMORY[0x277CCABB0];
  v23 = +[SUPreferences sharedInstance];
  v24 = [v22 numberWithBool:{objc_msgSend(v23, "disableSplombo")}];
  v46[8] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:9];
  [(SUCorePolicy *)self->_suScanPolicy setDefaultDescriptorValues:v25];

  coreScanner = self->_coreScanner;
  if (!coreScanner)
  {
    v27 = [objc_alloc(MEMORY[0x277D641E0]) initWithUUID:dCopy];
    v28 = self->_coreScanner;
    self->_coreScanner = v27;

    coreScanner = self->_coreScanner;
  }

  v29 = self->_suScanPolicy;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __57__SUScanTask__queue_scanForUpdates_sessionID_completion___block_invoke;
  v42[3] = &unk_279CAA970;
  v42[4] = self;
  v43 = v40;
  v44 = completionCopy;
  v30 = completionCopy;
  v31 = v40;
  [(SUCoreScan *)coreScanner checkForAvailableSlowReleaseUpdatesWithPolicy:v29 completion:v42];

  v32 = *MEMORY[0x277D85DE8];
}

void __57__SUScanTask__queue_scanForUpdates_sessionID_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v55 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v25 = a7;
  if ((*(*(a1 + 32) + 48) & 1) == 0)
  {
    v26 = [*(a1 + 40) types];
    v27 = [v26 count];

    if (v27)
    {
      v49 = v13;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v28 = [*(a1 + 40) types];
      v29 = [v28 countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v51;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v51 != v31)
            {
              objc_enumerationMutation(v28);
            }

            [*(*(a1 + 32) + 64) addObject:*(*(&v50 + 1) + 8 * i)];
          }

          v30 = [v28 countByEnumeratingWithState:&v50 objects:v54 count:16];
        }

        while (v30);
      }

      v13 = v49;
    }

    else
    {
      v33 = *(*(a1 + 32) + 64);
      v34 = [MEMORY[0x277CCABB0] numberWithInt:0];
      [v33 addObject:v34];
    }
  }

  v35 = *(a1 + 48);
  if (!v35)
  {
    v36 = @"No completion callback so not reporting scan completion";
    goto LABEL_16;
  }

  if (*(*(a1 + 32) + 48) == 1)
  {
    v36 = @"scan completed but cancel requested so not triggering completion";
LABEL_16:
    SULogInfo(v36, v18, v19, v20, v21, v22, v23, v24, v48);
    goto LABEL_23;
  }

  if (v25)
  {
    if ([v25 code] == 8403)
    {
      SULogInfo(@"scan completed with ScanCanceled error but cancel was not requested, triggering completion with error", v37, v38, v39, v40, v41, v42, v43, v48);
    }

    v44 = *(a1 + 40);
    v45 = *(*(a1 + 48) + 16);
  }

  else
  {
    v46 = *(a1 + 40);
    v45 = *(v35 + 16);
  }

  v45();
LABEL_23:

  v47 = *MEMORY[0x277D85DE8];
}

- (void)_queue_CollectDocumentation:(id)documentation sessionID:(id)d completion:(id)completion
{
  v61[1] = *MEMORY[0x277D85DE8];
  documentationCopy = documentation;
  dCopy = d;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_scanQueue);
  if (!self->_coreScanner)
  {
    v11 = [objc_alloc(MEMORY[0x277D641E0]) initWithUUID:dCopy];
    coreScanner = self->_coreScanner;
    self->_coreScanner = v11;
  }

  v13 = objc_alloc_init(SUPolicyFactory);
  globalOptions = [(SUPolicyFactory *)v13 globalOptions];
  v60 = *MEMORY[0x277D647C0];
  v61[0] = dCopy;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:&v60 count:1];
  [globalOptions appendUpdateMetricEventFields:v15];

  [(SUPolicyFactory *)v13 setGlobalOptions:globalOptions];
  [(SUPolicyFactory *)v13 setScanOptions:self->_scanOptions];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __63__SUScanTask__queue_CollectDocumentation_sessionID_completion___block_invoke;
  v57[3] = &unk_279CAA998;
  v16 = completionCopy;
  v59 = v16;
  v57[4] = self;
  v17 = documentationCopy;
  v58 = v17;
  v18 = MEMORY[0x26D668B30](v57);
  v19 = +[SUUtility currentReleaseType];
  v20 = [v19 isEqualToString:@"Internal"];

  if (v20 && (SULogInfo(@"Searching documentation from override path", v21, v22, v23, v24, v25, v26, v27, v55), +[SUPreferences sharedInstance](SUPreferences, "sharedInstance"), v28 = objc_claimAutoreleasedReturnValue(), [v28 overrideDocumentationPath], v29 = objc_claimAutoreleasedReturnValue(), v29, v28, v29))
  {
    v30 = +[SUPreferences sharedInstance];
    overrideDocumentationPath = [v30 overrideDocumentationPath];
    SULogInfo(@"Override path was set in: %@, collecting documentation", v32, v33, v34, v35, v36, v37, v38, overrideDocumentationPath);

    v39 = objc_alloc(MEMORY[0x277CBEBC0]);
    v40 = +[SUPreferences sharedInstance];
    overrideDocumentationPath2 = [v40 overrideDocumentationPath];
    corePolicy2 = [v39 initFileURLWithPath:overrideDocumentationPath2];

    v43 = objc_alloc(MEMORY[0x277D64188]);
    v44 = [v43 initWithLocalBundleURL:corePolicy2 attributes:MEMORY[0x277CBEC10]];
    [v17 setDocumentation:v44];
    SULogInfo(@"Documentation was collected", v45, v46, v47, v48, v49, v50, v51, v56);
    corePolicy = [(SUPolicyFactory *)v13 corePolicy];
    (v18)[2](v18, corePolicy, v17, 0);
  }

  else
  {
    SULogInfo(@"Searching documentation metadata", v21, v22, v23, v24, v25, v26, v27, v55);
    v53 = self->_coreScanner;
    corePolicy2 = [(SUPolicyFactory *)v13 corePolicy];
    [(SUCoreScan *)v53 collectDocumentationMetadataWithPolicy:corePolicy2 descriptor:v17 downloadDocumentation:1 completion:v18];
  }

  v54 = *MEMORY[0x277D85DE8];
}

void __63__SUScanTask__queue_CollectDocumentation_sessionID_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v27 = a2;
  v7 = a3;
  v8 = a4;
  v16 = v8;
  if (!a1[6])
  {
    v17 = @"No completion callback so not reporting document scan completion";
    goto LABEL_5;
  }

  if (*(a1[4] + 48) == 1)
  {
    v17 = @"document scan completed but cancel requested so not triggering completion";
LABEL_5:
    SULogInfo(v17, v9, v10, v11, v12, v13, v14, v15, v26);
    goto LABEL_10;
  }

  if (v8 && [v8 code] == 8403)
  {
    SULogInfo(@"document scan completed with ScanCanceled error but cancel was not requested, triggering completion with error", v18, v19, v20, v21, v22, v23, v24, v26);
  }

  v25 = a1[5];
  (*(a1[6] + 16))();
LABEL_10:
}

@end