@interface BRCFetchRecordSubResourcesHandler
- (BOOL)saveChangedRecords:(id)a3 deletedRecordIDs:(id)a4 deletedShareRecordIDs:(id)a5 clientChangeToken:(unint64_t)a6 serverChangeToken:(id)a7 caughtUp:(BOOL)a8 pendingChanges:(id)a9;
- (BRCFetchRecordSubResourcesHandler)initWithSessionContext:(id)a3 serverZone:(id)a4 applyScheduler:(id)a5;
@end

@implementation BRCFetchRecordSubResourcesHandler

- (BRCFetchRecordSubResourcesHandler)initWithSessionContext:(id)a3 serverZone:(id)a4 applyScheduler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BRCFetchRecordSubResourcesHandler;
  v12 = [(BRCFetchRecordSubResourcesHandler *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_applyScheduler, a5);
    objc_storeStrong(&v13->_serverZone, a4);
    objc_storeStrong(&v13->_sessionContext, a3);
  }

  return v13;
}

- (BOOL)saveChangedRecords:(id)a3 deletedRecordIDs:(id)a4 deletedShareRecordIDs:(id)a5 clientChangeToken:(unint64_t)a6 serverChangeToken:(id)a7 caughtUp:(BOOL)a8 pendingChanges:(id)a9
{
  v27 = 0;
  v16 = self->_serverZone;
  LOBYTE(v20) = a8;
  v17 = [(BRCServerZone *)v16 didSyncDownRequestID:a6 serverChangeToken:a7 editedRecords:a3 deletedRecordIDs:a4 deletedShareRecordIDs:a5 allocRankZones:&v27 caughtUp:v20 pendingChanges:a9];
  if (v17)
  {
    v18 = [(BRCSessionContext *)self->_sessionContext clientReadWriteDatabaseFacade];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __155__BRCFetchRecordSubResourcesHandler_saveChangedRecords_deletedRecordIDs_deletedShareRecordIDs_clientChangeToken_serverChangeToken_caughtUp_pendingChanges___block_invoke;
    v21[3] = &unk_278505580;
    v21[4] = self;
    v22 = v16;
    v24 = a6;
    v25 = v17;
    v26 = a8;
    v23 = v27;
    [v18 performWithFlags:41 action:v21];
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