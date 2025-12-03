@interface BRCSideCarSyncDownOperation
- (BRCSideCarSyncDownOperation)initWithSession:(id)session changeToken:(id)token syncDownHandler:(id)handler;
- (id)createActivity;
- (void)_createSyncDownOperation;
- (void)_createZone;
- (void)main;
@end

@implementation BRCSideCarSyncDownOperation

- (BRCSideCarSyncDownOperation)initWithSession:(id)session changeToken:(id)token syncDownHandler:(id)handler
{
  tokenCopy = token;
  handlerCopy = handler;
  sessionCopy = session;
  syncContextProvider = [sessionCopy syncContextProvider];
  sideCarSyncContext = [syncContextProvider sideCarSyncContext];
  v16.receiver = self;
  v16.super_class = BRCSideCarSyncDownOperation;
  v14 = [(_BRCOperation *)&v16 initWithName:@"side-car-sync" syncContext:sideCarSyncContext sessionContext:sessionCopy];

  if (v14)
  {
    objc_storeStrong(&v14->_serverChangeToken, token);
    objc_storeStrong(&v14->_syncDownHandler, handler);
  }

  return v14;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync/side-car-fetch", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_createZone
{
  brc_sideCarZoneID = [MEMORY[0x277CBC5F8] brc_sideCarZoneID];
  objc_initWeak(&location, self);
  v4 = [[BRCCreateZoneAndSubscribeOperation alloc] initWithSessionContext:self->super._sessionContext zoneID:brc_sideCarZoneID];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __42__BRCSideCarSyncDownOperation__createZone__block_invoke;
  v8 = &unk_2784FF1F0;
  objc_copyWeak(&v9, &location);
  [(BRCCreateZoneAndSubscribeOperation *)v4 setCreateZoneAndSubscribeCompletionBlock:&v5];
  [(_BRCOperation *)self addSubOperation:v4, v5, v6, v7, v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __42__BRCSideCarSyncDownOperation__createZone__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (v5)
  {
    [WeakRetained completedWithResult:0 error:v5];
  }

  else
  {
    [WeakRetained _createSyncDownOperation];
  }
}

- (void)_createSyncDownOperation
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] This is a periodic sync%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  v5 = [v4 isEqualToString:@"perParticipantMetadata"];

  if ((v5 & 1) == 0)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_cold_1(v3, v15, v16);
    }

    goto LABEL_10;
  }

  v6 = *(a1 + 32);
  v7 = [v3 recordID];
  LODWORD(v6) = [v6 containsObject:v7];

  if (v6)
  {
    __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_cold_2();
  }

  v8 = *(a1 + 40);
  v9 = [v3 recordID];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_cold_3();
  }

  v11 = *(a1 + 40);
  v12 = [v3 recordID];
  [v11 setObject:v3 forKeyedSubscript:v12];

  v13 = *(a1 + 32);
  v14 = [v3 recordID];
  [v13 removeObject:v14];

  *(*(*(a1 + 56) + 8) + 24) = 1;
  if (*(a1 + 64) == 1)
  {
    v15 = [*(*(a1 + 48) + 256) periodicSyncInvestigation];
    v16 = [v3 brc_lastEditorDeviceName];
    [v15 addEditingDevice:v16];
LABEL_10:
  }
}

void __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 isEqualToString:@"perParticipantMetadata"])
  {
    if ([*(a1 + 32) containsObject:v5])
    {
      __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_13_cold_2();
    }

    v7 = [*(a1 + 40) objectForKeyedSubscript:v5];

    if (v7)
    {
      __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_13_cold_3();
    }

    [*(a1 + 40) setObject:0 forKeyedSubscript:v5];
    [*(a1 + 32) addObject:v5];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_13_cold_1();
    }
  }
}

uint64_t __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_15(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 512);
  v8 = a4;
  v9 = a3;
  v10 = [v6 allValues];
  [v7 saveChangedRecords:v10 deletedRecords:*(a1 + 48) serverChangeToken:v9 clientChangeToken:v8];

  [*(a1 + 40) removeAllObjects];
  v11 = *(a1 + 48);

  return [v11 removeAllObjects];
}

uint64_t __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_2(uint64_t result, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (!a6)
  {
    v8 = result;
    v9 = *(result + 40);
    v10 = *(*(result + 32) + 512);
    v11 = a4;
    v12 = a3;
    v13 = [v9 allValues];
    [v10 saveChangedRecords:v13 deletedRecords:*(v8 + 48) serverChangeToken:v12 clientChangeToken:v11];

    [*(v8 + 40) removeAllObjects];
    v14 = *(v8 + 48);

    return [v14 removeAllObjects];
  }

  return result;
}

void __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_3_cold_1();
  }

  if (!v3 && *(a1 + 56) == 1 && (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v6 = [*(*(a1 + 32) + 256) periodicSyncInvestigation];
    v7 = [*(a1 + 40) zoneName];
    [v6 addZoneWithNoRealChanges:v7];
  }

  [*(a1 + 32) completedWithResult:0 error:v3];
}

- (void)main
{
  if (self->_serverChangeToken)
  {
    [(BRCSideCarSyncDownOperation *)self _createSyncDownOperation];
  }

  else
  {
    [(BRCSideCarSyncDownOperation *)self _createZone];
  }
}

void __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 recordType];
  OUTLINED_FUNCTION_1_0();
  v8 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Ignoring record of unknown type %@%@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_cold_2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: ![deletedRecordIDs containsObject:record.recordID]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_cold_3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: sideCarRecordsByRecordID[record.recordID] == nil%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_13_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Ignoring record of unknown type %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_13_cold_2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: ![deletedRecordIDs containsObject:recordID]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_13_cold_3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: sideCarRecordsByRecordID[recordID] == nil%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __55__BRCSideCarSyncDownOperation__createSyncDownOperation__block_invoke_3_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Finished syncing down side cars - %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end