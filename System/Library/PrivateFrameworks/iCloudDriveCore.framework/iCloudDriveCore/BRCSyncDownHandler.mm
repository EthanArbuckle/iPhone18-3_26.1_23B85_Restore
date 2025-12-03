@interface BRCSyncDownHandler
- (BRCSyncDownHandler)initWithServerZone:(id)zone applyScheduler:(id)scheduler;
- (void)saveInitialServerZoneData:(id)data clientChangeTokenData:(id)tokenData;
- (void)zoneIsSyncingForTheFirstTime;
@end

@implementation BRCSyncDownHandler

- (BRCSyncDownHandler)initWithServerZone:(id)zone applyScheduler:(id)scheduler
{
  zoneCopy = zone;
  schedulerCopy = scheduler;
  v12.receiver = self;
  v12.super_class = BRCSyncDownHandler;
  v9 = [(BRCSyncDownHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_applyScheduler, scheduler);
    objc_storeStrong(&v10->_serverZone, zone);
  }

  return v10;
}

- (void)zoneIsSyncingForTheFirstTime
{
  LOBYTE(v6) = 0;
  v3 = [(BRCServerZone *)self->_serverZone didSyncDownRequestID:0 serverChangeToken:0 editedRecords:0 deletedRecordIDs:0 deletedShareRecordIDs:0 allocRankZones:0 caughtUp:v6 pendingChanges:0];
  clientZone = [(BRCServerZone *)self->_serverZone clientZone];
  dbFacade = [clientZone dbFacade];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__BRCSyncDownHandler_zoneIsSyncingForTheFirstTime__block_invoke;
  v7[3] = &unk_2784FF058;
  v7[4] = self;
  v7[5] = v3;
  [dbFacade performWithFlags:41 action:v7];
}

uint64_t __50__BRCSyncDownHandler_zoneIsSyncingForTheFirstTime__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) didSyncDownZone:*(*(a1 + 32) + 16) requestID:0 upToRank:*(a1 + 40) caughtUpWithServer:1];
  v2 = [*(*(a1 + 32) + 16) clientZone];
  [v2 fetchRecentAndFavoriteDocuments];

  return 1;
}

- (void)saveInitialServerZoneData:(id)data clientChangeTokenData:(id)tokenData
{
  v29 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  tokenDataCopy = tokenData;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    serverZone = self->_serverZone;
    *buf = 138413058;
    v22 = dataCopy;
    v23 = 2112;
    v24 = tokenDataCopy;
    v25 = 2112;
    v26 = serverZone;
    v27 = 2112;
    v28 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Fetched initial server zone tokens %@ and %@ for %@%@", buf, 0x2Au);
  }

  bytes = [(BRCServerZone *)tokenDataCopy bytes];
  if (bytes)
  {
    v11 = *bytes;
  }

  else
  {
    v11 = 0;
  }

  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v18 = self->_serverZone;
    *buf = 138413058;
    v22 = v18;
    v23 = 2112;
    v24 = dataCopy;
    v25 = 2112;
    v26 = tokenDataCopy;
    v27 = 2112;
    v28 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] Saving initial zone data of %@ with server token %@ client token %@%@", buf, 0x2Au);
  }

  LOBYTE(v19) = 0;
  [(BRCServerZone *)self->_serverZone didSyncDownRequestID:v11 serverChangeToken:dataCopy editedRecords:0 deletedRecordIDs:0 deletedShareRecordIDs:0 allocRankZones:0 caughtUp:v19 pendingChanges:0];
  clientZone = [(BRCServerZone *)self->_serverZone clientZone];
  dbFacade = [clientZone dbFacade];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__BRCSyncDownHandler_saveInitialServerZoneData_clientChangeTokenData___block_invoke;
  v20[3] = &unk_2784FF058;
  v20[4] = self;
  v20[5] = v11;
  [dbFacade performWithFlags:41 action:v20];

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __70__BRCSyncDownHandler_saveInitialServerZoneData_clientChangeTokenData___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) clientZone];
  v3 = *(a1 + 40);
  v4 = [*(*(a1 + 32) + 16) changeState];
  v5 = [v4 lastSyncDownDate];
  [v2 didSyncDownRequestID:v3 maxApplyRank:0 caughtUpWithServer:1 syncDownDate:v5];

  if ([v2 isPrivateZone])
  {
    [v2 fetchRecentAndFavoriteDocuments];
  }

  return 1;
}

@end