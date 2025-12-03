@interface BRCCreateZoneAndSubscribeOperation
- (BRCCreateZoneAndSubscribeOperation)initWithServerZone:(id)zone sessionContext:(id)context;
- (BRCCreateZoneAndSubscribeOperation)initWithSessionContext:(id)context zoneID:(id)d;
- (id)createActivity;
- (void)_createZoneWithZoneID:(id)d;
- (void)_registerSubscriptionForZoneID:(id)d isOptimisticSubscribe:(BOOL)subscribe;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRCCreateZoneAndSubscribeOperation

- (BRCCreateZoneAndSubscribeOperation)initWithSessionContext:(id)context zoneID:(id)d
{
  dCopy = d;
  contextCopy = context;
  zoneName = [dCopy zoneName];
  v10 = [@"create-subscribe-zone/" stringByAppendingString:zoneName];
  syncContextProvider = [contextCopy syncContextProvider];
  defaultSyncContext = [syncContextProvider defaultSyncContext];
  v15.receiver = self;
  v15.super_class = BRCCreateZoneAndSubscribeOperation;
  v13 = [(_BRCOperation *)&v15 initWithName:v10 syncContext:defaultSyncContext sessionContext:contextCopy];

  if (v13)
  {
    objc_storeStrong(&v13->_zoneID, d);
    [(BRCCreateZoneAndSubscribeOperation *)v13 setQueuePriority:4];
  }

  return v13;
}

- (BRCCreateZoneAndSubscribeOperation)initWithServerZone:(id)zone sessionContext:(id)context
{
  zoneCopy = zone;
  contextCopy = context;
  zoneName = [zoneCopy zoneName];
  v9 = [@"create-subscribe-zone/" stringByAppendingString:zoneName];

  zoneID = [zoneCopy zoneID];
  zoneID = self->_zoneID;
  self->_zoneID = zoneID;

  metadataSyncContext = [zoneCopy metadataSyncContext];
  v17.receiver = self;
  v17.super_class = BRCCreateZoneAndSubscribeOperation;
  v13 = [(_BRCOperation *)&v17 initWithName:v9 syncContext:metadataSyncContext sessionContext:contextCopy];

  if (v13)
  {
    [(BRCCreateZoneAndSubscribeOperation *)v13 setQueuePriority:4];
    clientZone = [zoneCopy clientZone];
    hasHighPriorityWatchers = [clientZone hasHighPriorityWatchers];

    if (hasHighPriorityWatchers)
    {
      [(_BRCOperation *)v13 setNonDiscretionary:1];
    }
  }

  return v13;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "create-zone", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !_optimisticSubscribe%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  createZoneAndSubscribeCompletionBlock = self->_createZoneAndSubscribeCompletionBlock;
  if (createZoneAndSubscribeCompletionBlock)
  {
    createZoneAndSubscribeCompletionBlock[2](createZoneAndSubscribeCompletionBlock, errorCopy);
  }

  v9.receiver = self;
  v9.super_class = BRCCreateZoneAndSubscribeOperation;
  [(_BRCOperation *)&v9 finishWithResult:resultCopy error:errorCopy];
}

- (void)_createZoneWithZoneID:(id)d
{
  v19[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:dCopy];
  v6 = objc_alloc(MEMORY[0x277CBC490]);
  v19[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v8 = [v6 initWithRecordZonesToSave:v7 recordZoneIDsToDelete:0];

  objc_initWeak(&location, v8);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __60__BRCCreateZoneAndSubscribeOperation__createZoneWithZoneID___block_invoke;
  v14 = &unk_278504E70;
  objc_copyWeak(&v17, &location);
  v9 = dCopy;
  v15 = v9;
  selfCopy = self;
  [v8 setModifyRecordZonesCompletionBlock:&v11];
  [(_BRCOperation *)self addSubOperation:v8, v11, v12, v13, v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  v10 = *MEMORY[0x277D85DE8];
}

void __60__BRCCreateZoneAndSubscribeOperation__createZoneWithZoneID___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  memset(v23, 0, sizeof(v23));
  __brc_create_section(0, "[BRCCreateZoneAndSubscribeOperation _createZoneWithZoneID:]_block_invoke", 98, 0, v23);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = v23[0];
    v17 = *(a1 + 32);
    v18 = [WeakRetained operationID];
    v19 = v18;
    v20 = @"success";
    *buf = 134219010;
    if (v9)
    {
      v20 = v9;
    }

    v25 = v16;
    v26 = 2112;
    v27 = v17;
    v28 = 2112;
    v29 = v18;
    v30 = 2112;
    v31 = v20;
    v32 = 2112;
    v33 = v11;
    _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Handling result of creating %@ (operationID=%@): %@%@", buf, 0x34u);
  }

  if (v9)
  {
    [*(a1 + 40) completedWithResult:0 error:v9];
  }

  else
  {
    if ([v7 count] != 1)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        __60__BRCCreateZoneAndSubscribeOperation__createZoneWithZoneID___block_invoke_cold_1(v21, v22);
      }
    }

    v13 = [v7 count];
    if (v13)
    {
      v14 = [v7 objectAtIndexedSubscript:0];
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong((*(a1 + 40) + 528), v14);
    if (v13)
    {
    }

    [*(a1 + 40) _registerSubscriptionForZoneID:*(a1 + 32) isOptimisticSubscribe:0];
  }

  __brc_leave_section(v23);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_registerSubscriptionForZoneID:(id)d isOptimisticSubscribe:(BOOL)subscribe
{
  v26[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([(BRCSyncContext *)self->super._syncContext isShared])
  {
    [BRCCreateZoneAndSubscribeOperation _registerSubscriptionForZoneID:isOptimisticSubscribe:];
  }

  zoneName = [dCopy zoneName];
  v8 = [@"subscription/" stringByAppendingString:zoneName];

  v9 = [objc_alloc(MEMORY[0x277CBC618]) initWithZoneID:dCopy subscriptionID:v8];
  v10 = objc_alloc_init(MEMORY[0x277CBC4D0]);
  [v10 setShouldSendContentAvailable:1];
  [v9 setNotificationInfo:v10];
  v11 = objc_alloc(MEMORY[0x277CBC4B0]);
  v26[0] = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v13 = [v11 initWithSubscriptionsToSave:v12 subscriptionIDsToDelete:0];

  objc_initWeak(&location, v13);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __91__BRCCreateZoneAndSubscribeOperation__registerSubscriptionForZoneID_isOptimisticSubscribe___block_invoke;
  v18[3] = &unk_278504E98;
  v14 = v8;
  v19 = v14;
  objc_copyWeak(&v23, &location);
  v15 = v9;
  subscribeCopy = subscribe;
  v20 = v15;
  selfCopy = self;
  v16 = dCopy;
  v22 = v16;
  [v13 setModifySubscriptionsCompletionBlock:v18];
  [(_BRCOperation *)self addSubOperation:v13];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  v17 = *MEMORY[0x277D85DE8];
}

void __91__BRCCreateZoneAndSubscribeOperation__registerSubscriptionForZoneID_isOptimisticSubscribe___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v9 brc_cloudKitErrorForSubscriptionID:*(a1 + 32)];
  if ([(__CFString *)v10 brc_containsCloudKitUnderlyingErrorCode:2032])
  {

    v10 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  memset(v22, 0, sizeof(v22));
  __brc_create_section(0, "[BRCCreateZoneAndSubscribeOperation _registerSubscriptionForZoneID:isOptimisticSubscribe:]_block_invoke", 138, 0, v22);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v17 = v22[0];
    v21 = *(a1 + 40);
    v18 = [WeakRetained operationID];
    v19 = v18;
    v20 = @"success";
    *buf = 134219010;
    if (v10)
    {
      v20 = v10;
    }

    v24 = v17;
    v25 = 2112;
    v26 = v21;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v20;
    v31 = 2112;
    v32 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Handling result of creating %@ (operationID=%@): %@%@", buf, 0x34u);
  }

  if (*(a1 + 72) == 1 && (([(__CFString *)v10 brc_isCloudKitErrorImplyingZoneNeedsCreation]& 1) != 0 || [(__CFString *)v10 brc_containsCloudKitErrorCode:11]))
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __91__BRCCreateZoneAndSubscribeOperation__registerSubscriptionForZoneID_isOptimisticSubscribe___block_invoke_cold_1(v14, v15);
    }

    [*(a1 + 48) _createZoneWithZoneID:*(a1 + 56)];
  }

  else
  {
    [*(a1 + 48) completedWithResult:0 error:v10];
  }

  __brc_leave_section(v22);

  v16 = *MEMORY[0x277D85DE8];
}

void __60__BRCCreateZoneAndSubscribeOperation__createZoneWithZoneID___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: savedZones.count == 1%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_registerSubscriptionForZoneID:isOptimisticSubscribe:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !self->_syncContext.isShared%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void __91__BRCCreateZoneAndSubscribeOperation__registerSubscriptionForZoneID_isOptimisticSubscribe___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] optimistic subscribe failed with Zone Not Found, try to create the zone first%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end