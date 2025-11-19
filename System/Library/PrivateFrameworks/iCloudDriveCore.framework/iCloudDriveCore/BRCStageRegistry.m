@interface BRCStageRegistry
+ (void)migrateStageToVersion2_0WithSession:(id)a3;
- (BOOL)_hasActiveUploadWithStageID:(id)a3;
- (BOOL)_hasContentsInPath:(id)a3;
- (BOOL)clonePackageExistingContentFromSourceURL:(id)a3 stageID:(id)a4 error:(id *)a5;
- (BOOL)copyPackageFileWithPackageFd:(int)a3 toStageFd:(int)a4 relpath:(id)a5;
- (BOOL)existsInStage:(unint64_t)a3 generationID:(unsigned int *)a4;
- (BOOL)existsInUploadOrLiveItemsStage:(unint64_t)a3 generationID:(unsigned int *)a4;
- (BOOL)markUploadActiveForStageID:(id)a3;
- (BOOL)rescueUnuploadedFile:(unint64_t)a3 error:(id *)a4;
- (BOOL)saveXattrAtURL:(id)a3 forSignature:(id)a4 error:(id *)a5;
- (BOOL)saveXattrBlob:(id)a3 forSignature:(id)a4 error:(id *)a5;
- (BOOL)saveXattrsForURL:(id)a3 withMaximumSize:(unint64_t)a4 xattrSignature:(id *)a5 error:(id *)a6;
- (BRCStageRegistry)initWithAccountSession:(id)a3;
- (id)_anchorNameForChangeToken:(id)a3 recordZoneID:(id)a4;
- (id)_anchorNameForRecordID:(id)a3;
- (id)_anchorNamePrefixForRecordZoneID:(id)a3;
- (id)_getActiveDownloadStageIDs;
- (id)_liveURLForliveStageFilename:(id)a3;
- (id)_pathInStage:(unint64_t)a3 index:(unsigned __int8 *)a4 generationID:(unsigned int *)a5;
- (id)cloneFileURL:(id)a3 toUploadStageID:(id)a4 liveStageFilename:(id)a5 error:(id *)a6;
- (id)createStageURLForThumbnailFromLiveStageFilename:(id)a3 error:(id *)a4;
- (id)createStageURLFromLiveURLForItem:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)createURLForDownloadWithStageID:(id)a3 name:(id)a4;
- (id)createURLForThumbnailUploadWithStageID:(id)a3;
- (id)createURLForUploadWithStageID:(id)a3 name:(id)a4;
- (id)createURLForUserNotificationThumbnailGenerationWithStageID:(id)a3;
- (id)downloadStageURLWithStageID:(id)a3;
- (id)loadXattrBlobForSignature:(id)a3 error:(id *)a4;
- (id)pendingDeltaFetchRecordDirWithStartingChangeToken:(id)a3 recordZoneID:(id)a4;
- (id)pendingListRecordDirWithStartingChangeToken:(id)a3;
- (id)urlForXattrSignature:(id)a3;
- (int64_t)_garbageCollectDeltaSyncDatabases;
- (int64_t)_garbageCollectDownloads;
- (int64_t)_garbageCollectItemsIncludingActiveItems:(BOOL)a3 stageIndex:(unsigned __int8)a4 maxAge:(int64_t)a5 deletePredicate:(id)a6;
- (int64_t)_garbageCollectQBSDatabases;
- (int64_t)_garbageCollectSpace:(int64_t)a3;
- (int64_t)_removeUnusedXattrBlobs;
- (int64_t)garbageCollectSpace:(int64_t)a3;
- (int64_t)purgableSpace;
- (int64_t)purgeGraveyardSpace:(int64_t)a3 withUrgency:(int)a4;
- (int64_t)purgeSpace:(int64_t)a3 withUrgency:(int)a4;
- (unint64_t)_processPendingListDatabaseObjects:(id)a3;
- (void)_updatePersistedStateWithLatestGCStartTime:(int64_t)a3;
- (void)associateSyncUpStageID:(id)a3 withOperation:(id)a4;
- (void)cleanupStagedDownloadWithID:(id)a3;
- (void)cleanupStagedDownloadWithID:(id)a3 forItemID:(id)a4;
- (void)cleanupStagedSyncUpWithID:(id)a3;
- (void)cleanupStagedUploadWithID:(id)a3;
- (void)close;
- (void)disarmLockedTestTimer;
- (void)lowDiskStatusChangedForDevice:(int)a3 hasEnoughSpace:(BOOL)a4;
- (void)markDownloadActiveForStageID:(id)a3;
- (void)open;
- (void)purgableSpace;
- (void)removeDatabaseObjectsForZone:(id)a3;
- (void)resume;
- (void)unlinkLiveStageFilename:(id)a3;
- (void)unlinkPackageAuxiliaryContentsForStageID:(id)a3;
@end

@implementation BRCStageRegistry

- (BRCStageRegistry)initWithAccountSession:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = BRCStageRegistry;
  v6 = [(BRCStageRegistry *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeUploadStageIDs = v7->_activeUploadStageIDs;
    v7->_activeUploadStageIDs = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    activeDownloadStageIDs = v7->_activeDownloadStageIDs;
    v7->_activeDownloadStageIDs = v10;

    v12 = brc_task_tracker_create("com.apple.brc.stage");
    tracker = v7->_tracker;
    v7->_tracker = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(v14, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.brc.stage", v15);

    queue = v7->_queue;
    v7->_queue = v16;
  }

  return v7;
}

void __37__BRCStageRegistry__pathForDirIndex___block_invoke()
{
  v4[8] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_2837B0370;
  v3[1] = &unk_2837B0388;
  v4[0] = @"g";
  v4[1] = @"d";
  v3[2] = &unk_2837B03A0;
  v3[3] = &unk_2837B03B8;
  v4[2] = @"u";
  v4[3] = @"s";
  v3[4] = &unk_2837B03D0;
  v3[5] = &unk_2837B03E8;
  v4[4] = @"l";
  v4[5] = @"t";
  v3[6] = &unk_2837B0400;
  v3[7] = &unk_2837B0418;
  v4[6] = @"x";
  v4[7] = @"i";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:8];
  v1 = _pathForDirIndex__dirsMapping;
  _pathForDirIndex__dirsMapping = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (void)open
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _stageDirectoryFileID[dirIndex] != 0%@", a1, 0xCu);
  }
}

void __24__BRCStageRegistry_open__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.brc.stage.backup-exclusion-queue", v0);

  v2 = open_backupExclusionQueue;
  open_backupExclusionQueue = v1;
}

uint64_t __24__BRCStageRegistry_open__block_invoke_2(uint64_t a1)
{
  v1 = open_backupExclusionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__BRCStageRegistry_open__block_invoke_3;
  block[3] = &unk_2784FF450;
  v4 = *(a1 + 32);
  dispatch_async(v1, block);

  return 0;
}

void __24__BRCStageRegistry_open__block_invoke_3(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) lastPathComponent];
  v3 = [v2 isEqualToString:@"x"];

  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1 + 32)];
  v5 = v4;
  v6 = *MEMORY[0x277CBE878];
  if (v3)
  {
    v17 = 0;
    v7 = [v4 setResourceValue:MEMORY[0x277CBEC28] forKey:v6 error:&v17];
    v8 = v17;

    if ((v7 & 1) == 0)
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, 0x90u))
      {
        v11 = *(a1 + 32);
        *buf = 138412802;
        v19 = v11;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v9;
        v12 = "[ERROR] Unable to include '%@' in backups: %@%@";
LABEL_10:
        _os_log_error_impl(&dword_223E7A000, v10, 0x90u, v12, buf, 0x20u);
        goto LABEL_7;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v16 = 0;
    v13 = [v4 setResourceValue:MEMORY[0x277CBEC38] forKey:v6 error:&v16];
    v8 = v16;

    if ((v13 & 1) == 0)
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, 0x90u))
      {
        v15 = *(a1 + 32);
        *buf = 138412802;
        v19 = v15;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v9;
        v12 = "[ERROR] Unable to exclude '%@' from backups: %@%@";
        goto LABEL_10;
      }

LABEL_7:
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)copyPackageFileWithPackageFd:(int)a3 toStageFd:(int)a4 relpath:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__BRCStageRegistry_copyPackageFileWithPackageFd_toStageFd_relpath___block_invoke;
  v12[3] = &unk_278504FD8;
  v13 = v8;
  v14 = a3;
  v15 = a4;
  v9 = v8;
  v10 = [(BRCStageRegistry *)self _performInStageDirectory:0 block:v12];

  return v10 >= 0;
}

uint64_t __67__BRCStageRegistry_copyPackageFileWithPackageFd_toStageFd_relpath___block_invoke(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) fileSystemRepresentation];
  v13 = BRCOpenAt(v6, v7, 33028, v8, v9, v10, v11, v12, v42);
  if (v13 < 0)
  {
    v27 = *__error();
    v30 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (os_log_type_enabled(v31, 0x90u))
    {
      v38 = *(a1 + 40);
      v39 = *(a1 + 32);
      *buf = 67109890;
      v44 = v38;
      v45 = 2112;
      *v46 = v39;
      *&v46[8] = 1024;
      *v47 = v27;
      *&v47[4] = 2112;
      *&v47[6] = v30;
      _os_log_error_impl(&dword_223E7A000, v31, 0x90u, "[ERROR] BRCOpenAt(%d, %@, O_RDONLY) failed %{errno}d%@", buf, 0x22u);
    }

    goto LABEL_17;
  }

  v14 = v13;
  v15 = [v5 fileSystemRepresentation];
  v21 = BRCOpenAt(a2, v15, 2822, v16, v17, v18, v19, v20, 0x1B0u);
  if (v21 < 0)
  {
    v32 = *__error();
    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, 0x90u))
    {
      *buf = 67109890;
      v44 = a2;
      v45 = 2112;
      *v46 = v5;
      *&v46[8] = 1024;
      *v47 = v32;
      *&v47[4] = 2112;
      *&v47[6] = v33;
      _os_log_error_impl(&dword_223E7A000, v34, 0x90u, "[ERROR] BRCOpenAt(%d, %@, O_CREAT|O_RDWR|O_EXCL) %{errno}d%@", buf, 0x22u);
    }

    *__error() = v32;
    v27 = *__error();
    close(v14);
    goto LABEL_18;
  }

  v22 = v21;
  v23 = fcopyfile(v14, v21, 0, 8u);
  v24 = *__error();
  close(v14);
  *__error() = v24;
  v25 = *__error();
  close(v22);
  *__error() = v25;
  if (v23 < 0)
  {
    v27 = *__error();
    v30 = brc_bread_crumbs();
    v35 = brc_default_log();
    if (os_log_type_enabled(v35, 0x90u))
    {
      *buf = 67109890;
      v44 = v14;
      v45 = 1024;
      *v46 = v22;
      *&v46[4] = 1024;
      *&v46[6] = v27;
      *v47 = 2112;
      *&v47[2] = v30;
      _os_log_error_impl(&dword_223E7A000, v35, 0x90u, "[ERROR] fcopyfile(%d, %d, NULL, COPYFILE_DATA) %{errno}d%@", buf, 0x1Eu);
    }

LABEL_17:
LABEL_18:
    *__error() = v27;
    v26 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  v26 = 0;
  if ((BRCRenameAt(a2, v5, *(a1 + 44), *(a1 + 32), 0) & 0x80000000) != 0)
  {
    v27 = *__error();
    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, 0x90u))
    {
      v40 = *(a1 + 44);
      v41 = *(a1 + 32);
      *buf = 67110402;
      v44 = a2;
      v45 = 2112;
      *v46 = v5;
      *&v46[8] = 1024;
      *v47 = v40;
      *&v47[4] = 2112;
      *&v47[6] = v41;
      v48 = 1024;
      v49 = v27;
      v50 = 2112;
      v51 = v28;
      _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] BRCRenameAt(%d, %@, %d, %@, 0) %{errno}d%@", buf, 0x32u);
    }

    goto LABEL_18;
  }

LABEL_19:

  v36 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id)_pathInStage:(unint64_t)a3 index:(unsigned __int8 *)a4 generationID:(unsigned int *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v9 = BRCOpenByID(self->_deviceID, a3, 2129924);
  if (v9 < 0)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [BRCStageRegistry _pathInStage:index:generationID:];
    }

    v12 = 0;
    goto LABEL_14;
  }

  v10 = v9;
  v22 = 0;
  v11 = _fstatItem(v9, &v23, a5, 0, &v22);
  v12 = v22;
  close(v10);
  if (v11 < 0)
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  if (v23 != a3)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v25 = v23;
      v26 = 2048;
      v27 = a3;
      v28 = 2112;
      v29 = v17;
      _os_log_fault_impl(&dword_223E7A000, v18, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: returnedFileID(%llu) != fileID(%llu)%@", buf, 0x20u);
    }

    goto LABEL_14;
  }

  v13 = 0;
  stageDirectoryPath = self->_stageDirectoryPath;
  while (![v12 hasPrefix:stageDirectoryPath[v13]])
  {
    if (++v13 == 8)
    {
      goto LABEL_14;
    }
  }

  *a4 = v13;
  v12 = v12;
  v19 = v12;
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)markUploadActiveForStageID:(id)a3
{
  v4 = a3;
  v5 = self->_activeUploadStageIDs;
  objc_sync_enter(v5);
  v6 = [(NSMutableSet *)self->_activeUploadStageIDs containsObject:v4];
  if ((v6 & 1) == 0)
  {
    [(NSMutableSet *)self->_activeUploadStageIDs addObject:v4];
  }

  objc_sync_exit(v5);

  return v6 ^ 1;
}

- (void)associateSyncUpStageID:(id)a3 withOperation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BRCStageRegistry *)self markUploadActiveForStageID:v6])
  {
    v8 = [v7 completionBlock];
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__BRCStageRegistry_associateSyncUpStageID_withOperation___block_invoke;
    v10[3] = &unk_278505000;
    objc_copyWeak(&v13, &location);
    v9 = v8;
    v12 = v9;
    v11 = v6;
    [v7 setCompletionBlock:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __57__BRCStageRegistry_associateSyncUpStageID_withOperation___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[18];
    objc_sync_enter(v5);
    [v4[18] removeObject:*(a1 + 32)];
    objc_sync_exit(v5);

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))();
    }

    [v4 cleanupStagedSyncUpWithID:*(a1 + 32)];
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)markDownloadActiveForStageID:(id)a3
{
  v5 = a3;
  v4 = self->_activeDownloadStageIDs;
  objc_sync_enter(v4);
  if (([(NSMutableSet *)self->_activeDownloadStageIDs containsObject:v5]& 1) == 0)
  {
    [(NSMutableSet *)self->_activeDownloadStageIDs addObject:v5];
  }

  objc_sync_exit(v4);
}

- (id)_anchorNamePrefixForRecordZoneID:(id)a3
{
  v3 = MEMORY[0x277CFAE60];
  v4 = a3;
  v5 = [[v3 alloc] initWithRecordZoneID:v4];

  v6 = [v5 mangledIDString];
  v7 = [v6 stringByAppendingString:@":"];

  return v7;
}

- (id)_anchorNameForChangeToken:(id)a3 recordZoneID:(id)a4
{
  v6 = a3;
  v7 = [(BRCStageRegistry *)self _anchorNamePrefixForRecordZoneID:a4];
  v8 = [v6 hash];

  v9 = [v7 stringByAppendingFormat:@"%llx", v8];

  return v9;
}

- (id)_anchorNameForRecordID:(id)a3
{
  v3 = a3;
  v4 = [v3 recordName];
  v5 = [v3 zoneID];
  v6 = [v5 zoneName];
  v7 = [v4 stringByAppendingPathComponent:v6];

  v8 = [v3 zoneID];
  v9 = [v8 ownerName];
  LOBYTE(v6) = [v9 isEqualToString:*MEMORY[0x277CBBF28]];

  if ((v6 & 1) == 0)
  {
    v10 = [v3 zoneID];
    v11 = [v10 ownerName];
    v12 = [v7 stringByAppendingFormat:@":%@", v11];

    v7 = v12;
  }

  v13 = [v7 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

  return v13;
}

- (id)pendingListRecordDirWithStartingChangeToken:(id)a3
{
  v4 = [(BRCStageRegistry *)self _anchorNameForRecordID:a3];
  v5 = [(NSString *)self->_stageDirectoryPath[4] stringByAppendingPathComponent:v4];
  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:1];

  return v6;
}

- (id)pendingDeltaFetchRecordDirWithStartingChangeToken:(id)a3 recordZoneID:(id)a4
{
  v5 = [(BRCStageRegistry *)self _anchorNameForChangeToken:a3 recordZoneID:a4];
  if (v5)
  {
    v6 = [(NSString *)self->_stageDirectoryPath[3] stringByAppendingPathComponent:v5];
    if (v6)
    {
      v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6 isDirectory:1];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)createURLForUploadWithStageID:(id)a3 name:(id)a4
{
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__BRCStageRegistry_createURLForUploadWithStageID_name___block_invoke;
  v12[3] = &unk_278504FB0;
  v13 = v6;
  v7 = v6;
  v8 = a4;
  [(BRCStageRegistry *)self _performInStageDirectory:2 block:v12];
  v9 = [(NSString *)self->_stageDirectoryPath[2] stringByAppendingFormat:@"/%@/%@", v7, v8];

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9 isDirectory:0];

  return v10;
}

- (id)createURLForThumbnailUploadWithStageID:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", self->_stageDirectoryPath[5], a3];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3 isDirectory:0];

  return v4;
}

- (id)createURLForUserNotificationThumbnailGenerationWithStageID:(id)a3
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@-userNotification.jpg", self->_stageDirectoryPath[5], a3];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3 isDirectory:0];

  return v4;
}

- (void)cleanupStagedSyncUpWithID:(id)a3
{
  v5 = [(NSString *)self->_stageDirectoryPath[2] stringByAppendingPathComponent:a3];
  v4 = [(BRCAccountSession *)self->_session diskReclaimer];
  [v4 renameAndUnlinkInBackgroundItemAt:0xFFFFFFFFLL path:v5];
}

- (void)cleanupStagedDownloadWithID:(id)a3
{
  v8 = a3;
  v4 = self->_activeDownloadStageIDs;
  objc_sync_enter(v4);
  [(NSMutableSet *)self->_activeDownloadStageIDs removeObject:v8];
  objc_sync_exit(v4);

  v5 = [(BRCStageRegistry *)self _stageDirectoryForDownloads];
  v6 = [v5 stringByAppendingPathComponent:v8];

  v7 = [(BRCAccountSession *)self->_session diskReclaimer];
  [v7 renameAndUnlinkInBackgroundItemAt:0xFFFFFFFFLL path:v6];
}

- (void)cleanupStagedUploadWithID:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_activeUploadStageIDs;
  objc_sync_enter(v5);
  [(NSMutableSet *)self->_activeUploadStageIDs removeObject:v4];
  objc_sync_exit(v5);

  v6 = [(NSString *)self->_stageDirectoryPath[2] stringByAppendingPathComponent:v4];
  v7 = MEMORY[0x277CBEBC0];
  v15[0] = v6;
  v15[1] = @"ckpackage";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v9 = [v7 fileURLWithPathComponents:v8];

  [MEMORY[0x277CBC538] destroyAnchorAndPackageAnchoredAtURL:v9];
  p_session = &self->_session;
  v11 = [(BRCAccountSession *)self->_session diskReclaimer];
  [v11 renameAndUnlinkInBackgroundItemAt:0xFFFFFFFFLL path:v6];

  v12 = [(NSString *)self->_stageDirectoryPath[5] stringByAppendingPathComponent:v4];

  v13 = [(BRCAccountSession *)*p_session diskReclaimer];
  [v13 renameAndUnlinkInBackgroundItemAt:0xFFFFFFFFLL path:v12];

  v14 = *MEMORY[0x277D85DE8];
}

- (id)createURLForDownloadWithStageID:(id)a3 name:(id)a4
{
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__BRCStageRegistry_createURLForDownloadWithStageID_name___block_invoke;
  v12[3] = &unk_278504FB0;
  v13 = v6;
  v7 = v6;
  v8 = a4;
  [(BRCStageRegistry *)self _performInStageDirectory:1 block:v12];
  v9 = [(NSString *)self->_stageDirectoryPath[1] stringByAppendingFormat:@"/%@/%@", v7, v8];

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9 isDirectory:0];

  return v10;
}

- (void)cleanupStagedDownloadWithID:(id)a3 forItemID:(id)a4
{
  v8 = a4;
  v6 = [(NSString *)self->_stageDirectoryPath[1] stringByAppendingPathComponent:a3];
  if (!v8 || ![(BRCStageRegistry *)self _graveyardAt:0xFFFFFFFFLL path:v6 forItemID:v8])
  {
    v7 = [(BRCAccountSession *)self->_session diskReclaimer];
    [v7 renameAndUnlinkInBackgroundItemAt:0xFFFFFFFFLL path:v6];
  }
}

uint64_t __48__BRCStageRegistry__graveyardAt_path_forItemID___block_invoke(uint64_t a1, uint64_t a2)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) itemIDString];
  v5 = [*(*(a1 + 40) + 8) diskReclaimer];
  [v5 renameAndUnlinkInBackgroundItemAt:a2 path:v4];

  if ((BRCRenameAt(*(a1 + 56), *(a1 + 48), a2, v4, 0) & 0x80000000) != 0)
  {
    v6 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 56);
      v19 = *(a1 + 48);
      v20 = *__error();
      v21 = 67110402;
      *v22 = v18;
      *&v22[4] = 2112;
      *&v22[6] = v19;
      v23 = 1024;
      *v24 = a2;
      *&v24[4] = 2112;
      *&v24[6] = v4;
      *&v24[14] = 1024;
      *&v24[16] = v20;
      LOWORD(v25[0]) = 2112;
      *(v25 + 2) = v6;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] renameat(%d, '%@', %d, '%@') failed %{errno}d%@", &v21, 0x32u);
    }

    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = [*(*(a1 + 40) + 16) stringByAppendingPathComponent:v4];
    if (chflags([v6 fileSystemRepresentation], 0) < 0)
    {
      v7 = *__error();
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, 0x90u))
      {
        v21 = 138412802;
        *v22 = v6;
        *&v22[8] = 1024;
        *&v22[10] = v7;
        v23 = 2112;
        *v24 = v8;
        _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] failed removing documentID for %@ %{errno}d%@", &v21, 0x1Cu);
      }

      *__error() = v7;
    }

    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 56);
      v16 = *(a1 + 48);
      v17 = *(a1 + 32);
      v21 = 67110146;
      *v22 = v15;
      *&v22[4] = 2112;
      *&v22[6] = v16;
      v23 = 2112;
      *v24 = v6;
      *&v24[8] = 2112;
      *&v24[10] = v17;
      *&v24[18] = 2112;
      v25[0] = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] moved (%d, '%@') to the graveyard at '%@' for %@%@", &v21, 0x30u);
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)existsInStage:(unint64_t)a3 generationID:(unsigned int *)a4
{
  v10 = 0;
  if (!a3)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRCStageRegistry existsInStage:generationID:];
    }

    if (a4)
    {
      v6 = 0;
      *a4 = 0;
      return v6;
    }

    return 0;
  }

  v5 = [(BRCStageRegistry *)self _pathInStage:a3 index:&v10 generationID:a4];
  if (!v5)
  {
    return 0;
  }

  v6 = v10 == 1;

  return v6;
}

- (int64_t)purgeSpace:(int64_t)a3 withUrgency:(int)a4
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__BRCStageRegistry_purgeSpace_withUrgency___block_invoke;
  v7[3] = &unk_278505050;
  v7[4] = self;
  v7[5] = &v9;
  v7[6] = a3;
  v8 = a4;
  dispatch_sync(queue, v7);
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __43__BRCStageRegistry_purgeSpace_withUrgency___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _purgeSpaceUnderQueue:*(a1 + 48) withUrgency:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)lowDiskStatusChangedForDevice:(int)a3 hasEnoughSpace:(BOOL)a4
{
  if (a4)
  {
    self->_lowDiskSpace = 0;
  }

  else if (!self->_lowDiskSpace)
  {
    v8[5] = v4;
    v8[6] = v5;
    self->_lowDiskSpace = 1;
    queue = self->_queue;
    tracker = self->_tracker;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __65__BRCStageRegistry_lowDiskStatusChangedForDevice_hasEnoughSpace___block_invoke;
    v8[3] = &unk_2784FF450;
    v8[4] = self;
    brc_task_tracker_async_with_logs(tracker, queue, v8, 0);
  }
}

uint64_t __65__BRCStageRegistry_lowDiskStatusChangedForDevice_hasEnoughSpace___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __65__BRCStageRegistry_lowDiskStatusChangedForDevice_hasEnoughSpace___block_invoke_cold_1();
  }

  return [*(a1 + 32) _purgeSpaceUnderQueue:0x7FFFFFFFFFFFFFFFLL withUrgency:3];
}

- (int64_t)purgableSpace
{
  v27[2] = *MEMORY[0x277D85DE8];
  v2 = self->_stageDirectoryPath[0];
  v27[0] = [(NSString *)v2 fileSystemRepresentation];
  v27[1] = 0;
  v3 = fts_open(v27, 16, 0);
  value = 0;
  if (!v3)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, 0x90u))
    {
      [BRCStageRegistry purgableSpace];
    }

    v7 = 0;
    goto LABEL_33;
  }

  v4 = v3;
  v5 = fts_read(v3);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_32;
  }

  v6 = v5;
  v7 = 0;
  while (1)
  {
    fts_info = v6->fts_info;
    if (fts_info > 6)
    {
      break;
    }

    if (fts_info == 1)
    {
      if (v6->fts_level == 1)
      {
        if (getxattr(v6->fts_path, "com.apple.bird.graveyard.size#N", &value, 8uLL, 0, 0) == 8)
        {
          v7 += value;
          fts_set(v4, v6, 4);
        }

        else
        {
          value = 0;
        }
      }

      goto LABEL_23;
    }

    if (fts_info == 6 && v6->fts_level == 1)
    {
      setxattr(v6->fts_path, "com.apple.bird.graveyard.size#N", &value, 8uLL, 0, 0);
      st_size = value;
LABEL_11:
      v7 += st_size;
    }

LABEL_23:
    v6 = fts_read(v4);
    if (!v6)
    {
      goto LABEL_32;
    }
  }

  if (fts_info == 8)
  {
    st_size = v6->fts_statp->st_size;
    if (v6->fts_level != 1)
    {
      value += st_size;
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (fts_info != 7 && fts_info != 10)
  {
    goto LABEL_23;
  }

  v13 = *__error();
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, 0x90u))
  {
    fts_path = v6->fts_path;
    *buf = 136315650;
    v22 = fts_path;
    v23 = 1024;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] fts_read() failed for path %s %{errno}d%@", buf, 0x1Cu);
  }

  *__error() = v13;
LABEL_32:
  fts_close(v4);
LABEL_33:

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int64_t)purgeGraveyardSpace:(int64_t)a3 withUrgency:(int)a4
{
  v6 = self->_stageDirectoryPath[0];
  v22 = 0;
  v23[0] = &v22;
  v23[1] = 0x2020000000;
  v23[2] = 0;
  v7 = time(0);
  if (a4 > 2)
  {
    if ((a4 - 3) >= 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0x8000000000000000;
    }
  }

  else
  {
    if (a4 == -2 || a4 == 1)
    {
      v8 = [BRCUserDefaults defaultsForMangledID:0];
      [v8 graveyardAgeDeltaInLowUrgency];
      goto LABEL_10;
    }

    if (a4 == 2)
    {
      v8 = [BRCUserDefaults defaultsForMangledID:0];
      [v8 graveyardAgeDeltaInMedUrgency];
LABEL_10:
      v10 = v9;

      goto LABEL_11;
    }

    v10 = 0;
  }

LABEL_11:
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__BRCStageRegistry_purgeGraveyardSpace_withUrgency___block_invoke;
  v16[3] = &unk_278505078;
  v11 = v6;
  v17 = v11;
  v18 = &v22;
  v19 = a3;
  v20 = v7;
  v21 = v10;
  BRCRemoveFolderInAutoreleasepool(v11, v16, 1, 0);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [BRCStageRegistry purgeGraveyardSpace:v23 withUrgency:?];
  }

  v14 = *(v23[0] + 24);
  _Block_object_dispose(&v22, 8);

  return v14;
}

uint64_t __52__BRCStageRegistry_purgeGraveyardSpace_withUrgency___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:a2];
  v6 = [v5 br_pathRelativeToPath:a1[4]];
  v7 = [v6 pathComponents];
  if ([v5 isEqualToString:a1[4]])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v7 count];
    v10 = *(a1[5] + 8);
    v11 = *(v10 + 24);
    if (v9 != 1)
    {
      goto LABEL_7;
    }

    if (v11 >= a1[6])
    {
      v8 = 2;
      goto LABEL_9;
    }

    if (a1[7] - *(a3 + 48) < a1[8])
    {
      v8 = 1;
    }

    else
    {
LABEL_7:
      v8 = 0;
      *(v10 + 24) = v11 + *(a3 + 96);
    }
  }

LABEL_9:

  return v8;
}

- (BOOL)_hasActiveUploadWithStageID:(id)a3
{
  v4 = a3;
  v5 = self->_activeUploadStageIDs;
  objc_sync_enter(v5);
  v6 = [(NSMutableSet *)self->_activeUploadStageIDs containsObject:v4];
  objc_sync_exit(v5);

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v8 = [(BRCAccountSession *)self->_session clientDB];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__BRCStageRegistry__hasActiveUploadWithStageID___block_invoke;
    v10[3] = &unk_278502C70;
    v11 = v4;
    v12 = &v13;
    [v8 performWithFlags:1 action:v10];

    v7 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  return v7 & 1;
}

uint64_t __48__BRCStageRegistry__hasActiveUploadWithStageID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 numberWithSQL:{@"SELECT 1 FROM client_uploads WHERE transfer_stage = %@", *(a1 + 32)}];
  if ([v3 BOOLValue])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return 1;
}

uint64_t __65__BRCStageRegistry__garbageCollectUploadsIncludingActiveUploads___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 pathComponents];
  v8 = [v7 count];

  if (v8 == 1)
  {
    v9 = [v6 lastPathComponent];
    if (*(a1 + 40) & 1) == 0 && ([*(a1 + 32) _hasActiveUploadWithStageID:v9])
    {
      goto LABEL_7;
    }
  }

  v10 = [v6 lastPathComponent];
  v11 = [v10 isEqualToString:@"ckpackage"];

  if (!v11)
  {
    v13 = 1;
    goto LABEL_9;
  }

  v12 = MEMORY[0x277CBC538];
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:0];
  [v12 destroyAnchorAndPackageAnchoredAtURL:v9];
LABEL_7:

  v13 = 0;
LABEL_9:

  return v13;
}

- (id)_getActiveDownloadStageIDs
{
  v3 = self->_activeDownloadStageIDs;
  objc_sync_enter(v3);
  v4 = [(NSMutableSet *)self->_activeDownloadStageIDs copy];
  objc_sync_exit(v3);

  return v4;
}

- (int64_t)_garbageCollectDownloads
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = [(BRCStageRegistry *)self _stageDirectoryForDownloads];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__BRCStageRegistry__garbageCollectDownloads__block_invoke;
  v7[3] = &unk_2785050F0;
  v4 = v3;
  v8 = v4;
  v9 = self;
  v10 = &v11;
  [BRCFileSystemWrapper removeFolderInAutoreleasepoolAtPath:v4 excludingSelf:1 allowLongPaths:0 callback:v7];
  v5 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v5;
}

uint64_t __44__BRCStageRegistry__garbageCollectDownloads__block_invoke(void *a1, uint64_t a2, int *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:a2];
  v6 = [v5 br_pathRelativeToPath:a1[4]];
  v7 = [v6 pathComponents];
  v8 = [v7 count];

  if (v8 == 1)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v9 = v6;
    v10 = *(a1[5] + 152);
    objc_sync_enter(v10);
    v11 = [*(a1[5] + 152) containsObject:v9];
    objc_sync_exit(v10);

    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v13 = [*(a1[5] + 8) clientReadDatabaseFacade];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __44__BRCStageRegistry__garbageCollectDownloads__block_invoke_2;
      v22[3] = &unk_2785050C8;
      v14 = v13;
      v23 = v14;
      v15 = v9;
      v24 = v15;
      v25 = &v26;
      [v14 performWithFlags:1 action:v22];
      v12 = *(v27 + 6);
      if (!v12)
      {
        *(*(a1[6] + 8) + 24) += *(a3 + 12);
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v20 = *a3;
          v21 = *(a3 + 1);
          *buf = 138413058;
          v31 = v15;
          v32 = 1024;
          v33 = v20;
          v34 = 2048;
          v35 = v21;
          v36 = 2112;
          v37 = v16;
          _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] removing staged file for download: %@ device:%d ino:%lld%@", buf, 0x26u);
        }

        v12 = *(v27 + 6);
      }
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v12 = 0;
    *(*(a1[6] + 8) + 24) += *(a3 + 12);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __44__BRCStageRegistry__garbageCollectDownloads__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) hasDownloadJobWithTransferStageID:*(a1 + 40)])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return 1;
}

- (int64_t)_garbageCollectDeltaSyncDatabases
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = objc_opt_new();
  v4 = [(BRCAccountSession *)self->_session serverDB];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__BRCStageRegistry__garbageCollectDeltaSyncDatabases__block_invoke;
  v8[3] = &unk_278503AD8;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [v4 performWithFlags:1 action:v8];

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __53__BRCStageRegistry__garbageCollectDeltaSyncDatabases__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__BRCStageRegistry__garbageCollectDeltaSyncDatabases__block_invoke_2;
  v14[3] = &unk_278504EC0;
  v14[4] = v3;
  v15 = v2;
  [v4 enumerateServerZones:v14];
  v5 = *(*(a1 + 32) + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__BRCStageRegistry__garbageCollectDeltaSyncDatabases__block_invoke_3;
  v10[3] = &unk_2785050F0;
  v11 = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v12 = v6;
  v13 = v7;
  v8 = v5;
  BRCRemoveFolderInAutoreleasepool(v8, v10, 1, 0);

  return 1;
}

uint64_t __53__BRCStageRegistry__garbageCollectDeltaSyncDatabases__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 changeState];
  v6 = [v5 changeToken];
  v7 = [v4 zoneID];

  v8 = [v3 _anchorNameForChangeToken:v6 recordZoneID:v7];

  [*(a1 + 40) addObject:v8];
  return 1;
}

uint64_t __53__BRCStageRegistry__garbageCollectDeltaSyncDatabases__block_invoke_3(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v5 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:a2];
  v6 = [v5 br_pathRelativeToPath:a1[4]];
  v7 = [v6 pathComponents];
  if ([v7 count] == 1 && (v8 = a1[5], objc_msgSend(v7, "objectAtIndexedSubscript:", 0), v9 = objc_claimAutoreleasedReturnValue(), LOBYTE(v8) = objc_msgSend(v8, "containsObject:", v9), v9, (v8 & 1) != 0))
  {
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *(*(a1[6] + 8) + 24) += *(a3 + 96);
  }

  return v10;
}

- (int64_t)_garbageCollectQBSDatabases
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = self->_session;
  v4 = [(BRCAccountSession *)v3 serverDB];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__BRCStageRegistry__garbageCollectQBSDatabases__block_invoke;
  v8[3] = &unk_278505140;
  v10 = &v11;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  [v4 performWithFlags:1 action:v8];

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __47__BRCStageRegistry__garbageCollectQBSDatabases__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__BRCStageRegistry__garbageCollectQBSDatabases__block_invoke_2;
  v4[3] = &unk_278505118;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  *(*(*(a1 + 48) + 8) + 24) += [v2 _processPendingListDatabaseObjects:v4];

  return 1;
}

BOOL __47__BRCStageRegistry__garbageCollectQBSDatabases__block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) serverZoneByName:v8 ownerName:a4];
  v10 = [v9 zoneID];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277CBC5D0]);
    v12 = [v9 zoneID];
    v10 = [v11 initWithRecordName:v7 zoneID:v12];

    v13 = [*(a1 + 32) zoneAppRetriever];
    v14 = [v10 brc_itemIDWithZoneAppRetriever:v13];

    if (v9 && v10 && v14)
    {
      v15 = [v9 clientZone];
      v16 = [*(a1 + 32) serverReadWriteDatabaseFacade];
      v17 = [v15 serverItemTypeByItemID:v14 dbFacade:v16];

      v18 = (v17 - 9) < 2;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
  }

  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    v23 = 138412802;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v19;
    _os_log_fault_impl(&dword_223E7A000, v20, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed to parse record name %@ or zone %@%@", &v23, 0x20u);
  }

  v18 = 0;
LABEL_10:

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (unint64_t)_processPendingListDatabaseObjects:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = self->_stageDirectoryPath[4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__BRCStageRegistry__processPendingListDatabaseObjects___block_invoke;
  v10[3] = &unk_278505168;
  v6 = v5;
  v11 = v6;
  v13 = &v14;
  v7 = v4;
  v12 = v7;
  BRCRemoveFolderInAutoreleasepool(v6, v10, 1, 0);
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __55__BRCStageRegistry__processPendingListDatabaseObjects___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:a2];
    v6 = [v5 br_pathRelativeToPath:a1[4]];
    v7 = [v6 pathComponents];
    if ([v7 count] != 1)
    {
      v10 = 0;
      *(*(a1[6] + 8) + 24) += *(a3 + 96);
LABEL_16:

      return v10;
    }

    v8 = [v6 componentsSeparatedByString:@":"];
    if ([v8 count] == 3)
    {
      v19 = v5;
      v9 = *MEMORY[0x277CBBF28];
    }

    else
    {
      if ([v8 count] != 4)
      {
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          __55__BRCStageRegistry__processPendingListDatabaseObjects___block_invoke_cold_1();
        }

        v10 = 0;
        *(*(a1[6] + 8) + 24) += *(a3 + 96);
        goto LABEL_15;
      }

      v19 = v5;
      v9 = [v8 lastObject];
    }

    v11 = v9;
    v12 = [v8 objectAtIndexedSubscript:2];
    v13 = [v8 objectAtIndexedSubscript:0];
    v14 = [v8 objectAtIndexedSubscript:1];
    v15 = [v13 stringByAppendingPathComponent:v14];

    v10 = (*(a1[5] + 16))();
    if (!v10)
    {
      *(*(a1[6] + 8) + 24) += *(a3 + 96);
    }

    v5 = v19;
LABEL_15:

    goto LABEL_16;
  }

  return 1;
}

- (void)removeDatabaseObjectsForZone:(id)a3
{
  v4 = a3;
  v5 = [v4 zoneID];
  v6 = [(BRCStageRegistry *)self _anchorNamePrefixForRecordZoneID:v5];

  v7 = self->_stageDirectoryPath[3];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__BRCStageRegistry_removeDatabaseObjectsForZone___block_invoke;
  v13[3] = &unk_278505190;
  v14 = v7;
  v15 = v6;
  v8 = v6;
  v9 = v7;
  BRCRemoveFolderInAutoreleasepool(v9, v13, 1, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__BRCStageRegistry_removeDatabaseObjectsForZone___block_invoke_2;
  v11[3] = &unk_278505118;
  v12 = v4;
  v10 = v4;
  [(BRCStageRegistry *)self _processPendingListDatabaseObjects:v11];
}

uint64_t __49__BRCStageRegistry_removeDatabaseObjectsForZone___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v4 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:a2];
  v5 = [v4 br_pathRelativeToPath:*(a1 + 32)];
  v6 = [v5 pathComponents];
  v7 = [v6 firstObject];
  if ([v7 hasPrefix:*(a1 + 40)])
  {

    v8 = 0;
  }

  else
  {
    v8 = [v5 length] != 0;
  }

  return v8;
}

BOOL __49__BRCStageRegistry_removeDatabaseObjectsForZone___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 zoneName];
  LOBYTE(v7) = [v9 isEqualToString:v8];

  if (v7)
  {
    v10 = [*(a1 + 32) ownerName];
    v11 = v10;
    v12 = *MEMORY[0x277CBBF28];
    if (!v10)
    {
      v10 = *MEMORY[0x277CBBF28];
    }

    v13 = [v10 isEqualToString:v6];

    v14 = (v13 & 1) == 0;
  }

  else
  {

    v14 = 1;
  }

  return v14;
}

- (BOOL)_hasContentsInPath:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  [v4 enumeratorAtURL:v3 includingPropertiesForKeys:0 options:5 errorHandler:&__block_literal_global_128_1];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([v3 br_isParentOfURL:{*(*(&v11 + 1) + 8 * i), v11}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __39__BRCStageRegistry__hasContentsInPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, 0x90u))
  {
    v10 = 138412802;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_error_impl(&dword_223E7A000, v7, 0x90u, "[ERROR] Failed checking contents at %@ - %@%@", &v10, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

- (int64_t)_removeUnusedXattrBlobs
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v3 = time(0);
  v4 = [BRCUserDefaults defaultsForMangledID:0];
  [v4 xattrAgeDelta];
  v6 = v5;

  v7 = self->_session;
  if ([(BRCStageRegistry *)self _hasContentsInPath:self->_stageDirectoryPath[3]])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v8;
      v10 = "[WARNING] Skipping xattr check because we're in the middle of fetching delta change records%@";
LABEL_7:
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
    }
  }

  else
  {
    if (![(BRCStageRegistry *)self _hasContentsInPath:self->_stageDirectoryPath[4]])
    {
      v12 = self->_stageDirectoryPath[7];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __43__BRCStageRegistry__removeUnusedXattrBlobs__block_invoke;
      v15[3] = &unk_2785051B8;
      v8 = v12;
      v16 = v8;
      v19 = v3;
      v20 = v6;
      v17 = v7;
      v18 = &v21;
      BRCRemoveFolderInAutoreleasepool(v8, v15, 1, 0);
      v11 = v22[3];

      v9 = v16;
      goto LABEL_10;
    }

    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v8;
      v10 = "[WARNING] Skipping xattr check because we're in the middle of fetching item records%@";
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_10:

  _Block_object_dispose(&v21, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __43__BRCStageRegistry__removeUnusedXattrBlobs__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:a2];
    v6 = [v5 br_pathRelativeToPath:*(a1 + 32)];
    v7 = [v6 pathComponents];
    if ([v6 length])
    {
      if (*(a1 + 56) - *(a3 + 48) >= *(a1 + 64))
      {
        if ([v7 count] != 1)
        {
          __43__BRCStageRegistry__removeUnusedXattrBlobs__block_invoke_cold_1();
        }

        v9 = [v7 firstObject];
        v10 = [v9 brc_dataFromHexidecimalString];
        if (v10)
        {
          v21 = 0;
          v22 = &v21;
          v23 = 0x2020000000;
          v24 = 0;
          v11 = [*(a1 + 40) clientTruthWorkloop];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __43__BRCStageRegistry__removeUnusedXattrBlobs__block_invoke_129;
          block[3] = &unk_278502B88;
          v18 = *(a1 + 40);
          v12 = v10;
          v19 = v12;
          v20 = &v21;
          dispatch_async_and_wait(v11, block);

          if (v22[3])
          {
            v8 = 1;
          }

          else
          {
            v13 = brc_bread_crumbs();
            v14 = brc_default_log();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v26 = v12;
              v27 = 2112;
              v28 = v13;
              _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Removing unused xattr signature %@%@", buf, 0x16u);
            }

            v8 = 0;
            *(*(*(a1 + 48) + 8) + 24) += *(a3 + 96);
          }

          _Block_object_dispose(&v21, 8);
        }

        else
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __43__BRCStageRegistry__removeUnusedXattrBlobs__block_invoke_129(uint64_t a1)
{
  v2 = [*(a1 + 32) clientDB];
  v7 = [v2 numberWithSQL:{@"SELECT EXISTS (SELECT 1 FROM client_pkg_upload_items WHERE xattr_signature = %@)", *(a1 + 40)}];

  if ([v7 BOOLValue])
  {
    goto LABEL_4;
  }

  v3 = [*(a1 + 32) clientDB];
  v4 = [v3 numberWithSQL:{@"SELECT EXISTS (SELECT 1 FROM client_items WHERE item_xattr_signature = %@ OR version_xattr_signature = %@ LIMIT 1)", *(a1 + 40), *(a1 + 40)}];

  if (([v4 BOOLValue] & 1) != 0 || (objc_msgSend(*(a1 + 32), "clientDB"), v5 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "numberWithSQL:", @"SELECT EXISTS (SELECT 1 FROM server_items WHERE item_xattr_signature = %@ OR version_xattr_signature = %@ LIMIT 1)", *(a1 + 40), *(a1 + 40)), v4, v5, objc_msgSend(v8, "BOOLValue")))
  {
LABEL_4:
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return MEMORY[0x2821F96F8]();
}

- (int64_t)_garbageCollectItemsIncludingActiveItems:(BOOL)a3 stageIndex:(unsigned __int8)a4 maxAge:(int64_t)a5 deletePredicate:(id)a6
{
  v7 = a4;
  v10 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v11 = time(0);
  v12 = self->_stageDirectoryPath[v7];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __95__BRCStageRegistry__garbageCollectItemsIncludingActiveItems_stageIndex_maxAge_deletePredicate___block_invoke;
  v17[3] = &unk_2785051E0;
  v20 = v25;
  v13 = v12;
  v24 = a3;
  v18 = v13;
  v21 = &v27;
  v22 = v11;
  v23 = a5;
  v14 = v10;
  v19 = v14;
  BRCRemoveFolderInAutoreleasepool(v13, v17, 1, 0);
  v15 = v28[3];

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v27, 8);

  return v15;
}

uint64_t __95__BRCStageRegistry__garbageCollectItemsIncludingActiveItems_stageIndex_maxAge_deletePredicate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) != 0 || ([MEMORY[0x277CCACA8] stringWithUTF8String:a2], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *(a1 + 32)), v6, !v7))
  {
    if (a3)
    {
      if (*(a1 + 80) == 1)
      {
        v9 = brc_bread_crumbs();
        v10 = brc_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __95__BRCStageRegistry__garbageCollectItemsIncludingActiveItems_stageIndex_maxAge_deletePredicate___block_invoke_cold_2();
        }

        v8 = 0;
        *(*(*(a1 + 56) + 8) + 24) += a3[12];
      }

      else
      {
        v11 = [MEMORY[0x277CCACA8] br_pathWithFileSystemRepresentation:a2];
        v12 = [v11 br_pathRelativeToPath:*(a1 + 32)];
        v13 = [v12 pathComponents];
        v14 = [v13 count];

        if (v14)
        {
          v15 = *(a1 + 64);
          v16 = *(a1 + 72);
          if (v15 - a3[8] >= v16 && v15 - a3[6] >= v16 && (v17 = a3[1], (*(*(a1 + 40) + 16))()))
          {
            v18 = brc_bread_crumbs();
            v19 = brc_default_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              __95__BRCStageRegistry__garbageCollectItemsIncludingActiveItems_stageIndex_maxAge_deletePredicate___block_invoke_cold_1();
            }

            v8 = 0;
            *(*(*(a1 + 56) + 8) + 24) += a3[12];
          }

          else
          {
            v8 = 1;
          }
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v8 = 0;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return v8;
}

uint64_t __65__BRCStageRegistry__garbageCollectLiveItemsIncludingActiveItems___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 lastPathComponent];
  v10 = [v9 brc_stringByDeletingPathExtension];

  v11 = [MEMORY[0x277CFAE50] fileObjectIDWithString:v10];
  if (v11)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v12 = [*(*(a1 + 32) + 8) clientDB];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__BRCStageRegistry__garbageCollectLiveItemsIncludingActiveItems___block_invoke_2;
    v16[3] = &unk_278505208;
    v13 = *(a1 + 32);
    v18 = &v20;
    v16[4] = v13;
    v17 = v11;
    v19 = a4;
    [v12 performWithFlags:1 action:v16];

    v14 = *(v21 + 24);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t __65__BRCStageRegistry__garbageCollectLiveItemsIncludingActiveItems___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) clientDB];
  v3 = [v2 numberWithSQL:{@"SELECT 1 FROM client_items WHERE rowid = %lld AND item_type IN (1, 2, 8, 5, 6, 7) AND item_file_id = %lld LIMIT 1", objc_msgSend(*(a1 + 40), "rawID"), *(a1 + 56)}];
  *(*(*(a1 + 48) + 8) + 24) = [v3 BOOLValue] ^ 1;

  return 1;
}

uint64_t __74__BRCStageRegistry__garbageCollectUploadThumbnailsIncludingActiveUploads___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 pathComponents];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [v4 lastPathComponent];
    if (*(a1 + 40))
    {
      v8 = 1;
    }

    else
    {
      v8 = [*(a1 + 32) _hasActiveUploadWithStageID:v7] ^ 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (int64_t)_garbageCollectSpace:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = [(BRCStageRegistry *)self _purgeAllUploadsWithIncludeActiveItems:0];
  v5 = [(BRCStageRegistry *)self _garbageCollectDownloads]+ v4;
  v6 = [(BRCStageRegistry *)self _garbageCollectDeltaSyncDatabases];
  v7 = v5 + v6 + [(BRCStageRegistry *)self _garbageCollectQBSDatabases];
  v8 = [(BRCStageRegistry *)self _removeUnusedXattrBlobs];
  v9 = v8 + [(BRCStageRegistry *)self _garbageCollectUploadThumbnailsIncludingActiveUploads:0];
  return v7 + v9 + [(BRCStageRegistry *)self _garbageCollectUnusedLiveItems];
}

- (int64_t)garbageCollectSpace:(int64_t)a3
{
  v5 = time(0);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCStageRegistry garbageCollectSpace:];
  }

  v8 = [(BRCStageRegistry *)self _garbageCollectSpace:a3];
  [(BRCStageRegistry *)self _updatePersistedStateWithLatestGCStartTime:v5];
  return v8;
}

- (void)_updatePersistedStateWithLatestGCStartTime:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(BRCAccountSession *)self->_session clientTruthWorkloop];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__BRCStageRegistry__updatePersistedStateWithLatestGCStartTime___block_invoke;
  v6[3] = &unk_278500D50;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async_and_wait(v5, v6);
}

void __63__BRCStageRegistry__updatePersistedStateWithLatestGCStartTime___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __63__BRCStageRegistry__updatePersistedStateWithLatestGCStartTime___block_invoke_cold_1(a1);
  }

  v4 = [[BRCStagePersistedState alloc] initWithLatestGCStartTime:*(a1 + 40)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 176);
  *(v5 + 176) = v4;

  v7 = *(a1 + 32);
  v8 = *(v7 + 176);
  v9 = [*(v7 + 8) clientState];
  [v9 setObject:v8 forKeyedSubscript:@"stage"];

  v10 = [*(*(a1 + 32) + 8) clientDB];
  [v10 forceBatchStart];
}

+ (void)migrateStageToVersion2_0WithSession:(id)a3
{
  v3 = [a3 sessionDirPath];
  v4 = [v3 stringByAppendingPathComponent:@"i"];

  BRCRemoveFolder(v4, 0, 0, 0);
}

- (void)close
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] closing%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __25__BRCStageRegistry_close__block_invoke(uint64_t a1)
{
  v4 = +[BRCSystemResourcesManager manager];
  [v4 removeLowDiskObserver:*(a1 + 32) forDevice:*(*(a1 + 32) + 208)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  *(v2 + 176) = 0;
}

- (void)disarmLockedTestTimer
{
  lockedTestTimer = self->_lockedTestTimer;
  if (lockedTestTimer)
  {
    dispatch_source_cancel(lockedTestTimer);
    v4 = self->_lockedTestTimer;
    self->_lockedTestTimer = 0;
  }
}

- (void)resume
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: maxDelta > minDelta%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __26__BRCStageRegistry_resume__block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v1 = *(a1 + 32);
  if (*(v1 + 176))
  {
    __26__BRCStageRegistry_resume__block_invoke_cold_1((a1 + 32), &v5);
    v1 = v5;
  }

  v3 = [(BRCPersistedState *)BRCStagePersistedState loadFromClientStateInSession:*(v1 + 8)];
  v4 = *(*v2 + 176);
  *(*v2 + 176) = v3;

  if (!*(*v2 + 176))
  {
    __26__BRCStageRegistry_resume__block_invoke_cold_2();
  }
}

void __26__BRCStageRegistry_resume__block_invoke_151(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[24];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__BRCStageRegistry_resume__block_invoke_2;
    block[3] = &unk_2785010A0;
    v7 = *(a1 + 48);
    block[4] = WeakRetained;
    v12 = v7;
    v11 = *(a1 + 32);
    dispatch_sync(v6, block);
    v8 = +[BRCBGSystemTaskManager sharedManager];
    [v8 completeTask:v3];
  }

  else
  {
    v9 = +[BRCBGSystemTaskManager sharedManager];
    [v9 completeTask:v3];
  }
}

void __26__BRCStageRegistry_resume__block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = +[BRCAccountsManager sharedManager];
  v3 = [*(*(a1 + 32) + 8) accountHandler];
  v4 = [v3 acAccountID];
  v5 = [v2 personaIdentifierForACAccountID:v4];

  if ([v5 isEqualToString:@"__defaultPersonaID__"])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  v8 = v5;
  if (!v7)
  {
    if (_block_invoke___personaOnceToken_1 != -1)
    {
      __26__BRCStageRegistry_resume__block_invoke_2_cold_1();
    }

    v8 = _block_invoke___personalPersona_1;
  }

  v9 = [MEMORY[0x277D77BF8] sharedManager];
  v10 = [v9 currentPersona];

  v32 = 0;
  v11 = [v10 userPersonaUniqueString];
  v12 = v11;
  if (v11 == v8 || ([v11 isEqualToString:v8] & 1) != 0)
  {
    v13 = 0;
    goto LABEL_11;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v31 = 0;
    v20 = [v10 copyCurrentPersonaContextWithError:&v31];
    v21 = v31;
    v22 = v32;
    v32 = v20;

    if (v21)
    {
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, 0x90u))
      {
        __26__BRCStageRegistry_resume__block_invoke_2_cold_4();
      }
    }

    v13 = [v10 br_generateAndRestorePersonaContextWithPersonaUniqueString:v8];

    if (v13)
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, 0x90u))
      {
        *buf = 138412802;
        v34 = v5;
        v35 = 2112;
        v36 = v13;
        v37 = 2112;
        v38 = v25;
        _os_log_error_impl(&dword_223E7A000, v26, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_35:
    }
  }

  else
  {
    if (!v7 && ([v10 isDataSeparatedPersona] & 1) == 0)
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v13 = 0;
      goto LABEL_35;
    }

    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      __br_notify_register_dispatch_block_invoke_cold_3();
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  }

LABEL_11:
  v14 = [*(*(a1 + 32) + 176) timeSinceLatestGCStartTime];
  if (v14 >= *(a1 + 48))
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a1 + 40);
      *buf = 134218498;
      v34 = v14;
      v35 = 2112;
      v36 = v30;
      v37 = 2112;
      v38 = v17;
      _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] running GC in bgst after %lld seconds; %@%@", buf, 0x20u);
    }

    [*(a1 + 32) garbageCollectSpace:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 40);
      *buf = 134218498;
      v34 = v14;
      v35 = 2112;
      v36 = v29;
      v37 = 2112;
      v38 = v15;
      _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] skipping GC in bgst after %lld seconds; %@%@", buf, 0x20u);
    }
  }

  _BRRestorePersona();
  v19 = *MEMORY[0x277D85DE8];
}

void __26__BRCStageRegistry_resume__block_invoke_3()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke___personalPersona_1;
  _block_invoke___personalPersona_1 = v0;
}

- (BOOL)saveXattrAtURL:(id)a3 forSignature:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8)
  {
    v9 = [(BRCStageRegistry *)self urlForXattrSignature:a4];
    if ([v9 checkResourceIsReachableAndReturnError:0])
    {
      v10 = 0;
    }

    else
    {
      v16 = [MEMORY[0x277CCAA00] defaultManager];
      v25 = 0;
      v17 = [v16 moveItemAtURL:v8 toURL:v9 error:&v25];
      v18 = v25;
      v10 = v25;

      if ((v17 & 1) == 0)
      {
        v10 = v10;
        if (v10)
        {
          v19 = brc_bread_crumbs();
          v20 = brc_default_log();
          if (os_log_type_enabled(v20, 0x90u))
          {
            v24 = "(passed to caller)";
            *buf = 136315906;
            v27 = "[BRCStageRegistry saveXattrAtURL:forSignature:error:]";
            v28 = 2080;
            if (!a5)
            {
              v24 = "(ignored by caller)";
            }

            v29 = v24;
            v30 = 2112;
            v31 = v10;
            v32 = 2112;
            v33 = v19;
            _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          }
        }

        if (a5)
        {
          objc_storeStrong(a5, v18);
        }

        v15 = 0;
        goto LABEL_19;
      }
    }

    v15 = 1;
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [BRCStageRegistry saveXattrAtURL:forSignature:error:];
    }

    v10 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Asked to save xattr without url"];
    if (v10)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, 0x90u))
      {
        v23 = "(passed to caller)";
        *buf = 136315906;
        v27 = "[BRCStageRegistry saveXattrAtURL:forSignature:error:]";
        v28 = 2080;
        if (!a5)
        {
          v23 = "(ignored by caller)";
        }

        v29 = v23;
        v30 = 2112;
        v31 = v10;
        v32 = 2112;
        v33 = v13;
        _os_log_error_impl(&dword_223E7A000, v14, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (!a5)
    {
      v15 = 0;
      goto LABEL_20;
    }

    v10 = v10;
    v15 = 0;
    v9 = *a5;
    *a5 = v10;
  }

LABEL_19:

LABEL_20:
  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)saveXattrBlob:(id)a3 forSignature:(id)a4 error:(id *)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8 && a4)
  {
    v9 = [(BRCStageRegistry *)self urlForXattrSignature:a4];
    v37 = 0;
    v10 = [v8 writeToURL:v9 options:2 error:&v37];
    v11 = v37;
    v12 = v11;
    if (v10)
    {
LABEL_4:
      v13 = 1;
LABEL_32:

      goto LABEL_33;
    }

    if ([v11 br_isCocoaErrorCode:516])
    {
      v18 = brc_bread_crumbs();
      v13 = 1;
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [BRCStageRegistry saveXattrBlob:forSignature:error:];
      }

      goto LABEL_30;
    }

    if (([v12 br_isCocoaErrorCode:4] & 1) != 0 || objc_msgSend(v12, "br_isCocoaErrorCode:", 260))
    {
      v20 = [MEMORY[0x277CCAA00] defaultManager];
      v21 = [v9 URLByDeletingLastPathComponent];
      v36 = v12;
      v22 = [v20 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:&v36];
      v23 = v36;

      if (v22)
      {
      }

      else
      {
        v24 = [v23 br_isCocoaErrorCode:516];

        if ((v24 & 1) == 0)
        {
          v18 = v23;
          if (v18)
          {
            v30 = brc_bread_crumbs();
            v31 = brc_default_log();
            if (os_log_type_enabled(v31, 0x90u))
            {
              v34 = "(passed to caller)";
              *buf = 136315906;
              v39 = "[BRCStageRegistry saveXattrBlob:forSignature:error:]";
              v40 = 2080;
              if (!a5)
              {
                v34 = "(ignored by caller)";
              }

              v41 = v34;
              v42 = 2112;
              v43 = v18;
              v44 = 2112;
              v45 = v30;
              _os_log_error_impl(&dword_223E7A000, v31, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
            }
          }

          if (a5)
          {
            goto LABEL_29;
          }

          goto LABEL_38;
        }
      }

      v35 = v23;
      v25 = [v8 writeToURL:v9 options:2 error:&v35];
      v12 = v35;

      if (v25)
      {
        goto LABEL_4;
      }

      if ([v12 br_isCocoaErrorCode:516])
      {
        v18 = brc_bread_crumbs();
        v13 = 1;
        v19 = brc_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [BRCStageRegistry saveXattrBlob:forSignature:error:];
        }

        goto LABEL_30;
      }
    }

    v18 = v12;
    if (v18)
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, 0x90u))
      {
        v33 = "(passed to caller)";
        *buf = 136315906;
        v39 = "[BRCStageRegistry saveXattrBlob:forSignature:error:]";
        v40 = 2080;
        if (!a5)
        {
          v33 = "(ignored by caller)";
        }

        v41 = v33;
        v42 = 2112;
        v43 = v18;
        v44 = 2112;
        v45 = v26;
        _os_log_error_impl(&dword_223E7A000, v27, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a5)
    {
LABEL_29:
      v18 = v18;
      v13 = 0;
      v19 = *a5;
      *a5 = v18;
      v12 = v18;
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

LABEL_38:
    v13 = 0;
    v12 = v18;
    goto LABEL_31;
  }

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    [BRCStageRegistry saveXattrBlob:forSignature:error:];
  }

  v12 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Asked to save xattr without signature or data"];
  if (v12)
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      v32 = "(passed to caller)";
      *buf = 136315906;
      v39 = "[BRCStageRegistry saveXattrBlob:forSignature:error:]";
      v40 = 2080;
      if (!a5)
      {
        v32 = "(ignored by caller)";
      }

      v41 = v32;
      v42 = 2112;
      v43 = v12;
      v44 = 2112;
      v45 = v16;
      _os_log_error_impl(&dword_223E7A000, v17, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a5)
  {
    v12 = v12;
    v13 = 0;
    v9 = *a5;
    *a5 = v12;
    goto LABEL_32;
  }

  v13 = 0;
LABEL_33:

  v28 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)loadXattrBlobForSignature:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = [(BRCStageRegistry *)self urlForXattrSignature:?];
    v20 = 0;
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5 options:1 error:&v20];
    v7 = v20;
    v8 = v20;
    v9 = v8;
    if (!v6)
    {
      v9 = v8;
      if (v9)
      {
        v10 = brc_bread_crumbs();
        v11 = brc_default_log();
        if (os_log_type_enabled(v11, 0x90u))
        {
          v19 = "(passed to caller)";
          *buf = 136315906;
          v22 = "[BRCStageRegistry loadXattrBlobForSignature:error:]";
          v23 = 2080;
          if (!a4)
          {
            v19 = "(ignored by caller)";
          }

          v24 = v19;
          v25 = 2112;
          v26 = v9;
          v27 = 2112;
          v28 = v10;
          _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (a4)
      {
        objc_storeStrong(a4, v7);
      }
    }

    goto LABEL_16;
  }

  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [BRCStageRegistry loadXattrBlobForSignature:error:];
  }

  v9 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Asked for xattr without signature"];
  if (v9)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      v18 = "(passed to caller)";
      *buf = 136315906;
      v22 = "[BRCStageRegistry loadXattrBlobForSignature:error:]";
      v23 = 2080;
      if (!a4)
      {
        v18 = "(ignored by caller)";
      }

      v24 = v18;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v14;
      _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a4)
  {
    v9 = v9;
    v6 = 0;
    v5 = *a4;
    *a4 = v9;
LABEL_16:

    goto LABEL_17;
  }

  v6 = 0;
LABEL_17:

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)urlForXattrSignature:(id)a3
{
  if (a3)
  {
    v4 = self->_stageDirectoryPath[7];
    v5 = [a3 brc_hexadecimalString];
    v6 = [(NSString *)v4 stringByAppendingPathComponent:v5];

    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [BRCStageRegistry loadXattrBlobForSignature:error:];
    }

    v7 = 0;
  }

  return v7;
}

uint64_t __95__BRCStageRegistry_FPFSAdditions___moveFromURLToTargetStageLocation_stageIndex_filename_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [*(*(a1 + 32) + 8) fileUnlinker];
  [v4 renameAndUnlinkInBackgroundItemAt:a2 path:*(a1 + 40)];

  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = [*(a1 + 48) path];
    v12 = *(a1 + 40);
    v13 = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    v17 = 2112;
    v18 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] remembering %@ in stage at %@%@", &v13, 0x20u);
  }

  v7 = [*(a1 + 48) path];
  v8 = BRCRenameAt(-1, v7, a2, *(a1 + 40), 0);

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)saveXattrsForURL:(id)a3 withMaximumSize:(unint64_t)a4 xattrSignature:(id *)a5 error:(id *)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v23 = 0;
  v9 = [BRFieldXattrBlob loadXattrsFromURL:a3 structuralBlob:0 contentBlob:&v25 localBlob:0 withMaximumSize:a4 error:&v23];
  v10 = v23;
  v24 = v10;
  if (!v9)
  {
    v14 = v10;
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, 0x90u))
    {
      [BRCStageRegistry(FPFSAdditions) saveXattrsForURL:withMaximumSize:xattrSignature:error:];
    }

    if (a6)
    {
      v17 = v14;
      v13 = 0;
      *a6 = v14;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ([v25 length])
  {
    v11 = [v25 brc_signature];
    if ([(BRCStageRegistry *)self saveXattrBlob:v25 forSignature:v11 error:&v24])
    {
      if (a5)
      {
        v12 = v11;
        *a5 = v11;
      }

      goto LABEL_7;
    }

    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, 0x90u))
    {
      v22 = [v11 brc_hexadecimalString];
      *buf = 138412802;
      v27 = v22;
      v28 = 2112;
      v29 = v24;
      v30 = 2112;
      v31 = v18;
      _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] failed saving xattrs blob signature: %@ error:%@%@", buf, 0x20u);
    }

    if (a6)
    {
      *a6 = v24;
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

LABEL_7:
  v13 = 1;
LABEL_18:

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)cloneFileURL:(id)a3 toUploadStageID:(id)a4 liveStageFilename:(id)a5 error:(id *)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __88__BRCStageRegistry_FPFSAdditions__cloneFileURL_toUploadStageID_liveStageFilename_error___block_invoke;
  v26[3] = &unk_278506628;
  v26[4] = self;
  v13 = v11;
  v27 = v13;
  v14 = v10;
  v28 = v14;
  v15 = v12;
  v29 = v15;
  if ([(BRCStageRegistry *)self _performInStageDirectory:2 block:v26])
  {
    v16 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (v16)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        v25 = "(passed to caller)";
        *buf = 136315906;
        v32 = "[BRCStageRegistry(FPFSAdditions) cloneFileURL:toUploadStageID:liveStageFilename:error:]";
        v33 = 2080;
        if (!a6)
        {
          v25 = "(ignored by caller)";
        }

        v34 = v25;
        v35 = 2112;
        v36 = v16;
        v37 = 2112;
        v38 = v17;
        _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a6)
    {
      v19 = v16;
      *a6 = v16;
    }

    v20 = 0;
  }

  else
  {

    [(BRCStageRegistry *)self markUploadActiveForStageID:v13];
    v21 = MEMORY[0x277CBEBC0];
    v30[0] = self->_stageDirectoryPath[2];
    v30[1] = v13;
    v30[2] = v15;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
    v20 = [v21 fileURLWithPathComponents:v22];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __88__BRCStageRegistry_FPFSAdditions__cloneFileURL_toUploadStageID_liveStageFilename_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = [*(*(a1 + 32) + 8) fileUnlinker];
  [v4 renameAndUnlinkInBackgroundItemAt:a2 path:*(a1 + 40)];

  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v20 = [*(a1 + 48) path];
    v21 = *(a1 + 40);
    v22 = 138412802;
    v23 = v20;
    v24 = 2112;
    v25 = v21;
    v26 = 2112;
    v27 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] remembering %@ in live stage at %@%@", &v22, 0x20u);
  }

  v7 = BRCMkdirAt(a2, *(a1 + 40), 448);
  if (!v7)
  {
    v8 = [*(a1 + 40) fileSystemRepresentation];
    v14 = BRCOpenAt(a2, v8, 33028, v9, v10, v11, v12, v13, v22);
    if (v14)
    {
      v15 = v14;
      v16 = [*(a1 + 48) path];
      v7 = BRCCloneAt(-1, v16, v15, *(a1 + 56));

      v17 = *__error();
      close(v15);
      *__error() = v17;
    }

    else
    {
      v7 = 0xFFFFFFFFLL;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)clonePackageExistingContentFromSourceURL:(id)a3 stageID:(id)a4 error:(id *)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(BRCStageRegistry *)self createURLForDownloadWithStageID:a4 name:@"brpackage-existing-content"];
  if (v9)
  {
    v10 = [BRCFileSystemWrapper cloneFromURL:v8 toURL:v9 error:a5]== 0;
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (v11)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        v17 = "(passed to caller)";
        v18 = 136315906;
        v19 = "[BRCStageRegistry(FPFSAdditions) clonePackageExistingContentFromSourceURL:stageID:error:]";
        v20 = 2080;
        if (!a5)
        {
          v17 = "(ignored by caller)";
        }

        v21 = v17;
        v22 = 2112;
        v23 = v11;
        v24 = 2112;
        v25 = v12;
        _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", &v18, 0x2Au);
      }
    }

    if (a5)
    {
      v14 = v11;
      *a5 = v11;
    }

    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)unlinkPackageAuxiliaryContentsForStageID:(id)a3
{
  v4 = a3;
  v10 = [(BRCStageRegistry *)self createURLForDownloadWithStageID:v4 name:@"brpackage-existing-content"];
  v5 = [(BRCAccountSession *)self->_session fileUnlinker];
  v6 = [v10 path];
  [v5 renameAndUnlinkInBackgroundItemAtPath:v6];

  v7 = [(BRCStageRegistry *)self createURLForDownloadWithStageID:v4 name:@"brpackage-dlspec"];

  v8 = [(BRCAccountSession *)self->_session fileUnlinker];
  v9 = [v7 path];
  [v8 renameAndUnlinkInBackgroundItemAtPath:v9];
}

- (id)_liveURLForliveStageFilename:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBC0];
  v10[0] = self->_stageDirectoryPath[6];
  v10[1] = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:v10 count:2];
  v7 = [v3 fileURLWithPathComponents:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)unlinkLiveStageFilename:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCStageRegistry(FPFSAdditions) unlinkLiveStageFilename:];
    }

    v7 = [(BRCStageRegistry *)self _liveURLForliveStageFilename:v4];
    v8 = [(BRCAccountSession *)self->_session fileUnlinker];
    v9 = [v7 path];
    [v8 renameAndUnlinkInBackgroundItemAtPath:v9];
  }

  else
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BRCStageRegistry(FPFSAdditions) unlinkLiveStageFilename:];
    }
  }
}

- (id)createStageURLForThumbnailFromLiveStageFilename:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__46;
  v24 = __Block_byref_object_dispose__46;
  v25 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__BRCStageRegistry_FPFSAdditions__createStageURLForThumbnailFromLiveStageFilename_error___block_invoke;
  v16[3] = &unk_278506650;
  v7 = v6;
  v17 = v7;
  v18 = self;
  v19 = &v20;
  if ([(BRCStageRegistry *)self _performInStageDirectory:6 block:v16])
  {

    v8 = v21[5];
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (v9)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, 0x90u))
      {
        v15 = "(passed to caller)";
        *buf = 136315906;
        v27 = "[BRCStageRegistry(FPFSAdditions) createStageURLForThumbnailFromLiveStageFilename:error:]";
        v28 = 2080;
        if (!a4)
        {
          v15 = "(ignored by caller)";
        }

        v29 = v15;
        v30 = 2112;
        v31 = v9;
        v32 = 2112;
        v33 = v10;
        _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a4)
    {
      v12 = v9;
      *a4 = v9;
    }

    v8 = 0;
  }

  _Block_object_dispose(&v20, 8);

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __89__BRCStageRegistry_FPFSAdditions__createStageURLForThumbnailFromLiveStageFilename_error___block_invoke(void *a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"thumbnail-%@", a1[4]];
  v3 = v2;
  if (*(a1[5] + 64))
  {
    v4 = MEMORY[0x277CBEBC0];
    v12[0] = *(a1[5] + 64);
    v12[1] = v2;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v6 = [v4 fileURLWithPathComponents:v5];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
    v9 = 1;
  }

  else
  {
    *__error() = 22;
    v5 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      __89__BRCStageRegistry_FPFSAdditions__createStageURLForThumbnailFromLiveStageFilename_error___block_invoke_cold_1();
    }

    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)createStageURLFromLiveURLForItem:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [v8 fileIDForUpload];

  if (v9)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__46;
    v31 = __Block_byref_object_dispose__46;
    v32 = 0;
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __82__BRCStageRegistry_FPFSAdditions__createStageURLFromLiveURLForItem_options_error___block_invoke;
    v22 = &unk_278506678;
    v23 = v8;
    v24 = self;
    v25 = &v27;
    v26 = a4;
    v10 = MEMORY[0x22AA4A310](&v19);
    if ([(BRCStageRegistry *)self _performInStageDirectory:6 block:v10, v19, v20, v21, v22])
    {
      v11 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
      if (v11)
      {
        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, 0x90u))
        {
          v18 = "(passed to caller)";
          *buf = 136315906;
          v34 = "[BRCStageRegistry(FPFSAdditions) createStageURLFromLiveURLForItem:options:error:]";
          v35 = 2080;
          if (!a5)
          {
            v18 = "(ignored by caller)";
          }

          v36 = v18;
          v37 = 2112;
          v38 = v11;
          v39 = 2112;
          v40 = v12;
          _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (a5)
      {
        v14 = v11;
        *a5 = v11;
      }

      v15 = 0;
    }

    else
    {
      v15 = v28[5];
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __82__BRCStageRegistry_FPFSAdditions__createStageURLFromLiveURLForItem_options_error___block_invoke(uint64_t a1, int a2)
{
  v55[2] = *MEMORY[0x277D85DE8];
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) liveStageFilename];
  if (!v5)
  {
    v6 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __82__BRCStageRegistry_FPFSAdditions__createStageURLFromLiveURLForItem_options_error___block_invoke_cold_4(v4);
    }

    goto LABEL_23;
  }

  v6 = [*(*(a1 + 40) + 64) stringByAppendingPathComponent:v5];
  if (!v6)
  {
    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      __82__BRCStageRegistry_FPFSAdditions__createStageURLFromLiveURLForItem_options_error___block_invoke_cold_3(v4);
    }

    v27 = __error();
    v28 = 22;
LABEL_22:
    *v27 = v28;
    goto LABEL_23;
  }

  v49 = 0;
  v48 = 0;
  v7 = openat(a2, [v5 fileSystemRepresentation], 2129924);
  if (v7 < 0)
  {
    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      __82__BRCStageRegistry_FPFSAdditions__createStageURLFromLiveURLForItem_options_error___block_invoke_cold_2();
    }

    goto LABEL_23;
  }

  v8 = v7;
  v9 = _fstatItem(v7, &v49, &v48, 0, 0);
  v10 = *__error();
  close(v8);
  *__error() = v10;
  if ((v9 & 0x80000000) == 0)
  {
    v11 = v49;
    v12 = [*v4 fileIDForUpload];
    if (v11 == [v12 unsignedLongLongValue])
    {
      v13 = v48;
      v14 = [*v4 generationIDForUpload];
      v15 = [v14 fsGenerationID];
      v16 = [v15 unsignedIntValue];

      if (v13 == v16)
      {
        v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
        v18 = *(a1 + 40);
        if ((*(a1 + 56) & 2) != 0)
        {
          v37 = [*v4 liveStageFilename];
          v47 = 0;
          v23 = [v18 createStageURLForThumbnailFromLiveStageFilename:v37 error:&v47];
          v38 = v47;

          if (v38)
          {

            v39 = brc_bread_crumbs();
            v40 = brc_default_log();
            if (os_log_type_enabled(v40, 0x90u))
            {
              __82__BRCStageRegistry_FPFSAdditions__createStageURLFromLiveURLForItem_options_error___block_invoke_cold_1(v4);
            }

            v23 = 0;
            goto LABEL_34;
          }
        }

        else
        {
          v19 = [v18[1] downloadStagePathForCurrentPersona];
          v20 = [MEMORY[0x277CCAD78] UUID];
          v21 = [v20 UUIDString];
          v22 = [v19 stringByAppendingFormat:@"%@-%@", v5, v21];

          v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:v22];
        }

        v41 = [MEMORY[0x277CCAA00] defaultManager];
        v46 = 0;
        v42 = [v41 copyItemAtURL:v17 toURL:v23 error:&v46];
        v38 = v46;

        if (v42)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v23);
          v34 = 0;
LABEL_35:

          goto LABEL_24;
        }

        v43 = brc_bread_crumbs();
        v44 = brc_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
        {
          v45 = *v4;
          *buf = 138412802;
          v51 = v45;
          v52 = 2112;
          v53 = v38;
          v54 = 2112;
          v55[0] = v43;
          _os_log_fault_impl(&dword_223E7A000, v44, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Couldn't copy item to restaged url for %@ - %@%@", buf, 0x20u);
        }

        *__error() = 5;
LABEL_34:
        v34 = 0xFFFFFFFFLL;
        goto LABEL_35;
      }
    }

    else
    {
    }

    v31 = brc_bread_crumbs();
    v32 = brc_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *v4;
      *buf = 138413058;
      v51 = v33;
      v52 = 2048;
      v53 = v49;
      v54 = 1024;
      LODWORD(v55[0]) = v48;
      WORD2(v55[0]) = 2112;
      *(v55 + 6) = v31;
      _os_log_impl(&dword_223E7A000, v32, OS_LOG_TYPE_DEFAULT, "[WARNING] File inode changed in live stage for %@ ino:%llu gen:%u%@", buf, 0x26u);
    }

    v27 = __error();
    v28 = 4;
    goto LABEL_22;
  }

LABEL_23:
  v34 = 0xFFFFFFFFLL;
LABEL_24:

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

- (id)downloadStageURLWithStageID:(id)a3
{
  v3 = [(NSString *)self->_stageDirectoryPath[1] stringByAppendingFormat:@"/%@/%@", a3, @"item"];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3 isDirectory:0];

  return v4;
}

- (BOOL)rescueUnuploadedFile:(unint64_t)a3 error:(id *)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCACA8];
  v8 = [(BRCAccountSession *)self->_session volume];
  v9 = [v7 br_pathWithDeviceID:objc_msgSend(v8 fileID:{"deviceID"), a3}];

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
  v36 = 0;
  v11 = [(BRCStageRegistry *)self _pathInStage:a3 index:&v36 generationID:0];
  v12 = v36;

  if (v11 && v12 == 2)
  {
    v13 = brc_bread_crumbs();
    v14 = 1;
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(BRCStageRegistry(FPFSAdditions) *)v13 rescueUnuploadedFile:a3 error:v15];
    }
  }

  else
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [v10 lastPathComponent];
    v18 = [v17 brc_stringByDeletingPathExtension];
    v19 = [MEMORY[0x277CCAD78] UUID];
    v20 = [v19 UUIDString];
    v21 = [v10 lastPathComponent];
    v22 = [v21 br_pathExtension];
    v23 = [v16 br_representableHFSFileNameWithBase:v18 suffix:v20 extension:v22 makeDotFile:0];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __62__BRCStageRegistry_FPFSAdditions__rescueUnuploadedFile_error___block_invoke;
    v33[3] = &unk_2785066A0;
    v34 = v10;
    v13 = v23;
    v35 = v13;
    v24 = [(BRCStageRegistry *)self _performInStageDirectory:2 block:v33];
    v14 = v24 == 0;
    if (v24)
    {
      v25 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:v24];
      if (v25)
      {
        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v31 = "(passed to caller)";
          *buf = 136315906;
          v38 = "[BRCStageRegistry(FPFSAdditions) rescueUnuploadedFile:error:]";
          v39 = 2080;
          if (!v32)
          {
            v31 = "(ignored by caller)";
          }

          v40 = v31;
          v41 = 2112;
          v42 = v25;
          v43 = 2112;
          v44 = v26;
          _os_log_debug_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (v32)
      {
        v28 = v25;
        *v32 = v25;
      }
    }

    v15 = v34;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __62__BRCStageRegistry_FPFSAdditions__rescueUnuploadedFile_error___block_invoke(uint64_t a1, int a2)
{
  *&v24[13] = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) path];
  v5 = BRCRenameAt(-1, v4, a2, *(a1 + 40), 0);

  if (v5 < 0)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v14 = [*(a1 + 32) absoluteString];
      v15 = *(a1 + 40);
      v16 = *__error();
      v17 = 138413314;
      v18 = v14;
      v19 = 1024;
      v20 = a2;
      v21 = 2112;
      v22 = v15;
      v23 = 1024;
      *v24 = v16;
      v24[2] = 2112;
      *&v24[3] = v9;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] renameat(-1, '%@', %d, '%@') failed %{errno}d%@", &v17, 0x2Cu);
    }

    result = *__error();
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = [*(a1 + 32) absoluteString];
      v13 = *(a1 + 40);
      v17 = 138413058;
      v18 = v12;
      v19 = 1024;
      v20 = a2;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      *v24 = v6;
      _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] renameat(-1, '%@', %d, '%@') succeeded%@", &v17, 0x26u);
    }

    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)existsInUploadOrLiveItemsStage:(unint64_t)a3 generationID:(unsigned int *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = 0;
  if (a3)
  {
    v5 = [(BRCStageRegistry *)self _pathInStage:a3 index:&v12 generationID:a4];
    v6 = 0;
    if (v5 && (v12 & 0xFB) == 2)
    {
      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        if (v12 == 6)
        {
          v11 = "live items stage";
        }

        else
        {
          v11 = "uploads stage";
        }

        v14 = a3;
        v15 = 2080;
        v16 = v11;
        v17 = 2112;
        v18 = v7;
        _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] fileID:%llu is in the %s%@", buf, 0x20u);
      }

      v6 = 1;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_openStageDirectory:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_pathInStage:index:generationID:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)existsInStage:generationID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] fileID:0 doesn't exist in stage (metadata-only update)%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__BRCStageRegistry_lowDiskStatusChangedForDevice_hasEnoughSpace___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] running GC because we are in low disk space%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)purgableSpace
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v9 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  v6 = 138412802;
  v7 = v3;
  OUTLINED_FUNCTION_10_2();
  v8 = v1;
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] fts_open(%@) failed %{errno}d%@", &v6, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)purgeGraveyardSpace:(uint64_t)a1 withUrgency:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 24);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_purgeAllUploadsWithIncludeActiveItems:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_purgeAllUploadsWithIncludeActiveItems:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__BRCStageRegistry__processPendingListDatabaseObjects___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __43__BRCStageRegistry__removeUnusedXattrBlobs__block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: components.count == 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __95__BRCStageRegistry__garbageCollectItemsIncludingActiveItems_stageIndex_maxAge_deletePredicate___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __95__BRCStageRegistry__garbageCollectItemsIncludingActiveItems_stageIndex_maxAge_deletePredicate___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_garbageCollectUploadThumbnailsIncludingActiveUploads:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)garbageCollectSpace:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__BRCStageRegistry__updatePersistedStateWithLatestGCStartTime___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 176);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
  v9 = *MEMORY[0x277D85DE8];
}

void __26__BRCStageRegistry_resume__block_invoke_cold_1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !_persistedState%@", &v7, 0xCu);
  }

  *a2 = *a1;
  v6 = *MEMORY[0x277D85DE8];
}

void __26__BRCStageRegistry_resume__block_invoke_cold_2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _persistedState%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __26__BRCStageRegistry_resume__block_invoke_2_cold_4()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)saveXattrAtURL:forSignature:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Asked to save xattr without url%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveXattrBlob:forSignature:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Asked to save xattr without signature or data%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveXattrBlob:forSignature:error:.cold.2()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 path];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)loadXattrBlobForSignature:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Asked for xattr without signature%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end