@interface SBKLoadDomainVersionRequestHandler
- (void)runWithCompletionHandler:(id)handler;
@end

@implementation SBKLoadDomainVersionRequestHandler

- (void)runWithCompletionHandler:(id)handler
{
  v4 = [handler copy];
  loadsRemoteItemCount = [(SBKLoadDomainVersionRequestHandler *)self loadsRemoteItemCount];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SBKLoadDomainVersionRequestHandler_runWithCompletionHandler___block_invoke;
  v8[3] = &unk_279D23128;
  if (loadsRemoteItemCount)
  {
    v6 = @"0";
  }

  else
  {
    v6 = @"9223372036854775807";
  }

  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(SBKSyncRequestHandler *)self startTransactionWithSyncAnchor:v6 keysToUpdate:0 keysToDelete:0 finishedBlock:v8];
}

uint64_t __63__SBKLoadDomainVersionRequestHandler_runWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [*(a1 + 32) responseUpdatedKeys];
  *(*(a1 + 32) + 88) = [v6 count];

  if ([*(a1 + 32) loadsRemoteItemCount])
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(a1 + 32) + 88)];
    v9 = [v7 stringWithFormat:@", itemCount = %@", v8];
  }

  else
  {
    v9 = &stru_287C9CB50;
  }

  v10 = os_log_create("com.apple.amp.StoreBookkeeper", "Sync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) responseDomainVersion];
    *buf = 138412546;
    v20 = v11;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_26BC19000, v10, OS_LOG_TYPE_DEFAULT, "finished loading domain version: domainVersion = %@%@", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SBKLoadDomainVersionRequestHandler_runWithCompletionHandler___block_invoke_5;
  block[3] = &unk_279D23100;
  v12 = *(a1 + 40);
  v17 = v5;
  v18 = v12;
  v13 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

@end