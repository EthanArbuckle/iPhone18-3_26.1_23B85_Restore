@interface BRCFetchRecordSubResourcesHandler
- (BOOL)saveChangedRecords:(id)records deletedRecordIDs:(id)ds deletedShareRecordIDs:(id)iDs clientChangeToken:(unint64_t)token serverChangeToken:(id)changeToken caughtUp:(BOOL)up pendingChanges:(id)changes;
- (BRCFetchRecordSubResourcesHandler)initWithSessionContext:(id)context serverZone:(id)zone applyScheduler:(id)scheduler;
@end

@implementation BRCFetchRecordSubResourcesHandler

- (BRCFetchRecordSubResourcesHandler)initWithSessionContext:(id)context serverZone:(id)zone applyScheduler:(id)scheduler
{
  contextCopy = context;
  zoneCopy = zone;
  schedulerCopy = scheduler;
  v15.receiver = self;
  v15.super_class = BRCFetchRecordSubResourcesHandler;
  v12 = [(BRCFetchRecordSubResourcesHandler *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_applyScheduler, scheduler);
    objc_storeStrong(&v13->_serverZone, zone);
    objc_storeStrong(&v13->_sessionContext, context);
  }

  return v13;
}

- (BOOL)saveChangedRecords:(id)records deletedRecordIDs:(id)ds deletedShareRecordIDs:(id)iDs clientChangeToken:(unint64_t)token serverChangeToken:(id)changeToken caughtUp:(BOOL)up pendingChanges:(id)changes
{
  v27 = 0;
  v16 = self->_serverZone;
  LOBYTE(v20) = up;
  v17 = [(BRCServerZone *)v16 didSyncDownRequestID:token serverChangeToken:changeToken editedRecords:records deletedRecordIDs:ds deletedShareRecordIDs:iDs allocRankZones:&v27 caughtUp:v20 pendingChanges:changes];
  if (v17)
  {
    clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->_sessionContext clientReadWriteDatabaseFacade];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __155__BRCFetchRecordSubResourcesHandler_saveChangedRecords_deletedRecordIDs_deletedShareRecordIDs_clientChangeToken_serverChangeToken_caughtUp_pendingChanges___block_invoke;
    v21[3] = &unk_278505580;
    v21[4] = self;
    v22 = v16;
    tokenCopy = token;
    v25 = v17;
    upCopy = up;
    v23 = v27;
    [clientReadWriteDatabaseFacade performWithFlags:41 action:v21];
  }

  return v17 != 0;
}

uint64_t __155__BRCFetchRecordSubResourcesHandler_saveChangedRecords_deletedRecordIDs_deletedShareRecordIDs_clientChangeToken_serverChangeToken_caughtUp_pendingChanges___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 8) didSyncDownZone:*(a1 + 40) requestID:*(a1 + 56) upToRank:*(a1 + 64) caughtUpWithServer:*(a1 + 72)];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 48);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        if (v7 != *(a1 + 40))
        {
          [*(*(a1 + 32) + 8) generatedRanksForZone:v7 upToRank:{*(a1 + 64), v10}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

@end