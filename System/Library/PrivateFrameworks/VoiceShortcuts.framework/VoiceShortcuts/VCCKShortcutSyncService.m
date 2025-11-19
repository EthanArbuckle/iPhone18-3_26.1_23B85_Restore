@interface VCCKShortcutSyncService
- (BOOL)mergeLocalOrderingChangesWithRemoteOrderingChangesFromOrderingRecord:(id)a3;
- (CKRecordZoneID)shortcutsZoneID;
- (Class)cloudKitWorkflowClass;
- (NSArray)pendingShortcutsZoneChanges;
- (VCCKShortcutSyncService)initWithContainer:(id)a3 database:(id)a4 applicationObserver:(id)a5 debuggingOptions:(unint64_t)a6 logger:(id)a7;
- (id)autoShortcutsPreferencesRecordForRecordID:(id)a3;
- (id)autoShortcutsPreferencesWithCloudKitAutoShortcutsPreferences:(id)a3;
- (id)collectionIdentifierForRecordID:(id)a3;
- (id)fetchCloudKitRecordIDsForAllVisibleWorkflows;
- (id)folderRecordForRecordID:(id)a3;
- (id)libraryRecordForRecordID:(id)a3;
- (id)recordToSaveForRecordID:(id)a3;
- (id)syncEngine:(id)a3 nextRecordZoneChangeBatchForContext:(id)a4;
- (id)syncFlagsRecord;
- (id)workflowOrderingRecordForRecordID:(id)a3;
- (id)workflowRecordForRecordID:(id)a3;
- (id)workflowRecordWithIdentifier:(id)a3 properties:(id)a4;
- (void)addRecordIDsToSave:(id)a3 recordIDsToDelete:(id)a4;
- (void)createShortcutsZone;
- (void)databaseDidChange:(id)a3 modified:(id)a4 inserted:(id)a5 removed:(id)a6;
- (void)dealloc;
- (void)enableCoherenceSync;
- (void)fetchChangesInShortcutsZoneWithCompletion:(id)a3;
- (void)handleDeletedRecordWithID:(id)a3;
- (void)handleFetchedAutoShortcutsPreferencesRecord:(id)a3;
- (void)handleFetchedCollectionOrderingRecord:(id)a3;
- (void)handleFetchedDeletionOfAutoShortcutsPreferencesWithRecordID:(id)a3;
- (void)handleFetchedDeletionOfRecordWithID:(id)a3;
- (void)handleFetchedFolderRecord:(id)a3;
- (void)handleFetchedLegacyOrderingRecord:(id)a3;
- (void)handleFetchedSyncFlagsRecord:(id)a3;
- (void)handleFetchedWorkflowRecord:(id)a3;
- (void)handleSavedAutoShortcutsPreferencesRecord:(id)a3;
- (void)handleSavedFolderRecord:(id)a3;
- (void)handleSavedLibraryRecord:(id)a3;
- (void)handleSavedSyncFlagsRecord:(id)a3;
- (void)handleSavedWorkflowOrderingRecord:(id)a3;
- (void)handleSavedWorkflowRecord:(id)a3;
- (void)handleSendAutoShortcutsPreferencesConflictWithClientRecord:(id)a3 serverRecord:(id)a4 ancestorRecord:(id)a5;
- (void)handleSendFolderConflictWithClientRecord:(id)a3 serverRecord:(id)a4 ancestorRecord:(id)a5;
- (void)handleSendLibraryConflictWithClientRecord:(id)a3 serverRecord:(id)a4 ancestorRecord:(id)a5;
- (void)handleSendSyncFlagsConflictWithClientRecord:(id)a3 serverRecord:(id)a4 ancestorRecord:(id)a5;
- (void)handleSendWorkflowConflictWithClientRecord:(id)a3 serverRecord:(id)a4 ancestorRecord:(id)a5;
- (void)handleSendWorkflowOrderingConflictWithClientRecord:(id)a3 serverRecord:(id)a4 ancestorRecord:(id)a5;
- (void)handleServerRecordChangedError:(id)a3;
- (void)handleUnknownItemErrorForRecord:(id)a3;
- (void)modifyPendingChangesInShortcutsZoneWithCompletion:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)sendChangedFoldersAndCollections;
- (void)sendChangedWorkflows;
- (void)sendLibraryIfNeeded;
- (void)sendSyncFlagsIfNeeded;
- (void)startObservingUserDefaults;
- (void)startWithCompletionHandler:(id)a3;
- (void)stopObservingUserDefaults;
- (void)syncEngine:(id)a3 handleEvent:(id)a4;
- (void)syncEngineDidDeleteRecordWithID:(id)a3;
- (void)syncEngineDidDeleteRecordZoneWithID:(id)a3;
- (void)syncEngineDidFetchRecord:(id)a3;
- (void)syncEngineDidSaveRecord:(id)a3;
- (void)syncEngineDidSaveRecordZone:(id)a3;
- (void)syncEngineDidUpdateMetadata:(id)a3;
- (void)syncEngineFailedToDeleteRecordWithID:(id)a3 error:(id)a4;
- (void)syncEngineFailedToDeleteRecordZoneWithID:(id)a3 error:(id)a4;
- (void)syncEngineFailedToSaveRecord:(id)a3 error:(id)a4;
- (void)syncEngineFailedToSaveRecordZone:(id)a3 error:(id)a4;
- (void)syncEngineRecordWithIDWasDeleted:(id)a3 recordType:(id)a4;
- (void)syncEngineZoneWithIDChanged:(id)a3;
- (void)syncEngineZoneWithIDWasDeleted:(id)a3;
- (void)syncEngineZoneWithIDWasPurged:(id)a3;
@end

@implementation VCCKShortcutSyncService

- (void)syncEngineDidUpdateMetadata:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[VCCKShortcutSyncService syncEngineDidUpdateMetadata:]";
    v12 = 2048;
    v13 = [v4 length];
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Received updated metadata from sync engine, length = %lu", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__VCCKShortcutSyncService_syncEngineDidUpdateMetadata___block_invoke;
  v8[3] = &unk_2788FFFC0;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  VCCKPerformBlockInsideAutoreleasePoolInTransaction(@"VCCKShortcutSyncService.didUpdateMetadata", v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __55__VCCKShortcutSyncService_syncEngineDidUpdateMetadata___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__VCCKShortcutSyncService_syncEngineDidUpdateMetadata___block_invoke_2;
  v3[3] = &unk_2788FE6E8;
  v4 = *(a1 + 40);
  [v2 updateSyncTokenWithBlock:v3];
}

- (void)syncEngineRecordWithIDWasDeleted:(id)a3 recordType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__VCCKShortcutSyncService_syncEngineRecordWithIDWasDeleted_recordType___block_invoke;
  v10[3] = &unk_2789000F8;
  v11 = v6;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v6;
  VCCKPerformBlockInsideAutoreleasePoolInTransaction(@"VCCKShortcutSyncService.recordWithIDWasDeleted", v10);
}

void __71__VCCKShortcutSyncService_syncEngineRecordWithIDWasDeleted_recordType___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v26 = 136315650;
    v27 = "[VCCKShortcutSyncService syncEngineRecordWithIDWasDeleted:recordType:]_block_invoke";
    v28 = 2114;
    v29 = v3;
    v30 = 2114;
    v31 = v4;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_INFO, "%s Sync engine fetched deletion of CKRecord with CKRecordID %{public}@ of type %{public}@", &v26, 0x20u);
  }

  [*(*(a1 + 48) + 48) logDeletionFetched:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277D7C1F0] recordType];
  if ([v5 isEqualToString:v6])
  {

LABEL_6:
    v9 = getWFCloudKitSyncLogObject();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      goto LABEL_11;
    }

    v26 = 136315138;
    v27 = "[VCCKShortcutSyncService syncEngineRecordWithIDWasDeleted:recordType:]_block_invoke";
    v10 = "%s Fetched record deletion of collection ordering record, not handling";
    goto LABEL_8;
  }

  v7 = *(a1 + 40);
  v8 = [MEMORY[0x277D7C1A0] recordType];
  LODWORD(v7) = [v7 isEqualToString:v8];

  if (v7)
  {
    goto LABEL_6;
  }

  v14 = *(a1 + 40);
  v15 = [MEMORY[0x277D7C208] recordType];
  LODWORD(v14) = [v14 isEqualToString:v15];

  if (v14)
  {
    v9 = getWFCloudKitSyncLogObject();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v26 = 136315138;
    v27 = "[VCCKShortcutSyncService syncEngineRecordWithIDWasDeleted:recordType:]_block_invoke";
    v10 = "%s Fetched record deletion of legacy workflow ordering record";
    v11 = v9;
    v12 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_9;
  }

  v16 = *(a1 + 40);
  v17 = [objc_msgSend(*(a1 + 48) "cloudKitWorkflowClass")];
  if ([v16 isEqualToString:v17])
  {

LABEL_18:
    [*(a1 + 48) handleFetchedDeletionOfRecordWithID:*(a1 + 32)];
    goto LABEL_11;
  }

  v18 = *(a1 + 40);
  v19 = [MEMORY[0x277D7C1F8] recordType];
  LODWORD(v18) = [v18 isEqualToString:v19];

  if (v18)
  {
    goto LABEL_18;
  }

  v20 = *(a1 + 40);
  v21 = [MEMORY[0x277D7C228] recordType];
  LODWORD(v20) = [v20 isEqualToString:v21];

  if (v20)
  {
    v9 = getWFCloudKitSyncLogObject();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v26 = 136315138;
    v27 = "[VCCKShortcutSyncService syncEngineRecordWithIDWasDeleted:recordType:]_block_invoke";
    v10 = "%s Fetched unexpected record deletion of sync flags record, not handling";
LABEL_8:
    v11 = v9;
    v12 = OS_LOG_TYPE_ERROR;
LABEL_9:
    _os_log_impl(&dword_23103C000, v11, v12, v10, &v26, 0xCu);
    goto LABEL_10;
  }

  v22 = *(a1 + 40);
  v23 = [MEMORY[0x277D7C1E8] recordType];
  LODWORD(v22) = [v22 isEqualToString:v23];

  if (v22)
  {
    [*(a1 + 48) handleFetchedDeletionOfAutoShortcutsPreferencesWithRecordID:*(a1 + 32)];
  }

  else
  {
    v24 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 40);
      v26 = 136315394;
      v27 = "[VCCKShortcutSyncService syncEngineRecordWithIDWasDeleted:recordType:]_block_invoke";
      v28 = 2114;
      v29 = v25;
      _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_ERROR, "%s Fetched record deletion of unexpected type: %{public}@", &v26, 0x16u);
    }
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)syncEngineDidFetchRecord:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__VCCKShortcutSyncService_syncEngineDidFetchRecord___block_invoke;
  v6[3] = &unk_2788FFFC0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  VCCKPerformBlockInsideAutoreleasePoolInTransaction(@"VCCKShortcutSyncService.didFetchRecord", v6);
}

void __52__VCCKShortcutSyncService_syncEngineDidFetchRecord___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) recordID];
    v4 = *(a1 + 32);
    *buf = 136315650;
    v49 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
    v50 = 2114;
    v51 = v3;
    v52 = 2112;
    v53 = v4;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_INFO, "%s Sync engine fetched CKRecord with CKRecordID %{public}@, record = %@", buf, 0x20u);
  }

  [*(*(a1 + 40) + 48) logRecordFetched:*(a1 + 32)];
  v5 = [*(a1 + 32) recordType];
  v6 = [MEMORY[0x277D7C1F0] recordType];
  if ([v5 isEqualToString:v6])
  {

    goto LABEL_6;
  }

  v7 = [*(a1 + 32) recordType];
  v8 = [MEMORY[0x277D7C1A0] recordType];
  v9 = [v7 isEqualToString:v8];

  if (!v9)
  {
    v13 = [*(a1 + 32) recordType];
    v14 = [MEMORY[0x277D7C208] recordType];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      if (![*(a1 + 40) coherenceSyncEnabled])
      {
        [*(a1 + 40) handleFetchedLegacyOrderingRecord:*(a1 + 32)];
        goto LABEL_12;
      }

      v10 = getWFCloudKitSyncLogObject();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      *buf = 136315138;
      v49 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
      v11 = "%s Skipping fetched legacy workflow ordering record because coherence sync is enabled";
      goto LABEL_9;
    }

    v16 = [*(a1 + 32) recordType];
    v17 = [MEMORY[0x277D7C248] recordType];
    v18 = [v16 isEqualToString:v17];

    if (v18)
    {
      if ([*(a1 + 40) coherenceSyncEnabled])
      {
        v10 = getWFCloudKitSyncLogObject();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          goto LABEL_10;
        }

        *buf = 136315138;
        v49 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
        v11 = "%s Skipping fetched workflow record because coherence sync is enabled";
        goto LABEL_9;
      }

      goto LABEL_26;
    }

    v19 = [*(a1 + 32) recordType];
    v20 = [MEMORY[0x277D7C240] recordType];
    v21 = [v19 isEqualToString:v20];

    if (v21)
    {
      if (([*(a1 + 40) coherenceSyncEnabled] & 1) == 0)
      {
        if (([*(a1 + 40) debuggingOptions] & 2) != 0)
        {
          v10 = getWFCloudKitSyncLogObject();
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            goto LABEL_10;
          }

          *buf = 136315138;
          v49 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
          v11 = "%s Skipping fetched workflow v2 record because the migration was disabled by a debugging option and this device is not using Coherence sync";
          goto LABEL_9;
        }

        [*(a1 + 40) enableCoherenceSync];
      }

LABEL_26:
      [*(a1 + 40) handleFetchedWorkflowRecord:*(a1 + 32)];
      goto LABEL_12;
    }

    v22 = [*(a1 + 32) recordType];
    v23 = [MEMORY[0x277D7C1F8] recordType];
    v24 = [v22 isEqualToString:v23];

    if (v24)
    {
      if (![*(a1 + 40) coherenceSyncEnabled])
      {
        [*(a1 + 40) handleFetchedFolderRecord:*(a1 + 32)];
        goto LABEL_12;
      }

      v10 = getWFCloudKitSyncLogObject();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      *buf = 136315138;
      v49 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
      v11 = "%s Skipping fetched folder record because coherence sync is enabled";
      goto LABEL_9;
    }

    v25 = [*(a1 + 32) recordType];
    v26 = [MEMORY[0x277D7C228] recordType];
    v27 = [v25 isEqualToString:v26];

    if (v27)
    {
      [*(a1 + 40) handleFetchedSyncFlagsRecord:*(a1 + 32)];
      goto LABEL_12;
    }

    v28 = [*(a1 + 32) recordType];
    v29 = [MEMORY[0x277D7C1E8] recordType];
    v30 = [v28 isEqualToString:v29];

    if (v30)
    {
      [*(a1 + 40) handleFetchedAutoShortcutsPreferencesRecord:*(a1 + 32)];
      goto LABEL_12;
    }

    v31 = [*(a1 + 32) recordType];
    v32 = [MEMORY[0x277D7C210] recordType];
    v33 = [v31 isEqualToString:v32];

    if (!v33)
    {
      v38 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v45 = [*(a1 + 32) recordType];
        *buf = 136315394;
        v49 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
        v50 = 2114;
        v51 = v45;
        _os_log_impl(&dword_23103C000, v38, OS_LOG_TYPE_ERROR, "%s Fetched record of unexpected type: %{public}@", buf, 0x16u);
      }

      goto LABEL_51;
    }

    if (([*(a1 + 40) coherenceSyncEnabled] & 1) == 0)
    {
      if (([*(a1 + 40) debuggingOptions] & 2) != 0)
      {
        v10 = getWFCloudKitSyncLogObject();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          goto LABEL_10;
        }

        *buf = 136315138;
        v49 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
        v11 = "%s Skipping fetched library record because the migration was disabled by a debugging option and this device is not using Coherence sync";
        goto LABEL_9;
      }

      [*(a1 + 40) enableCoherenceSync];
    }

    v34 = *(a1 + 32);
    v35 = [*(a1 + 40) database];
    v36 = [*(a1 + 40) logger];
    v47 = 0;
    v37 = [_TtC14VoiceShortcuts26VCCKLibrarySyncCoordinator handleFetchedLibraryRecord:v34 database:v35 logger:v36 error:&v47];
    v38 = v47;

    v39 = getWFCloudKitSyncLogObject();
    v40 = v39;
    if (v37)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v49 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
        v41 = "%s Handled fetched library record";
        v42 = v40;
        v43 = OS_LOG_TYPE_INFO;
        v44 = 12;
LABEL_49:
        _os_log_impl(&dword_23103C000, v42, v43, v41, buf, v44);
      }
    }

    else if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v46 = *(a1 + 32);
      *buf = 136315650;
      v49 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
      v50 = 2114;
      v51 = v46;
      v52 = 2114;
      v53 = v38;
      v41 = "%s Failed to handle fetched library record: %{public}@ - %{public}@";
      v42 = v40;
      v43 = OS_LOG_TYPE_ERROR;
      v44 = 32;
      goto LABEL_49;
    }

LABEL_51:
    goto LABEL_12;
  }

LABEL_6:
  if (![*(a1 + 40) coherenceSyncEnabled])
  {
    [*(a1 + 40) handleFetchedCollectionOrderingRecord:*(a1 + 32)];
    goto LABEL_12;
  }

  v10 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v49 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
    v11 = "%s Skipping fetched collection record because coherence sync is enabled";
LABEL_9:
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_INFO, v11, buf, 0xCu);
  }

LABEL_10:

LABEL_12:
  v12 = *MEMORY[0x277D85DE8];
}

- (void)syncEngineFailedToDeleteRecordWithID:(id)a3 error:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v7 domain];
    v13 = 136316162;
    v14 = "[VCCKShortcutSyncService syncEngineFailedToDeleteRecordWithID:error:]";
    v15 = 2114;
    v16 = v9;
    v17 = 2050;
    v18 = [v7 code];
    v19 = 2114;
    v20 = v7;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Sync engine failed to delete CKRecord: error domain = %{public}@, code = %{public}ld, error = %{public}@, recordID = %{public}@", &v13, 0x34u);
  }

  logger = self->_logger;
  v11 = [v7 description];
  [(WFCloudKitSyncEventLogger *)logger logRecordDeleteFailed:v6 error:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)syncEngineDidDeleteRecordWithID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__VCCKShortcutSyncService_syncEngineDidDeleteRecordWithID___block_invoke;
  v6[3] = &unk_2788FFFC0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  VCCKPerformBlockInsideAutoreleasePoolInTransaction(@"VCCKShortcutSyncService.didDeleteRecordWithID", v6);
}

uint64_t __59__VCCKShortcutSyncService_syncEngineDidDeleteRecordWithID___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[VCCKShortcutSyncService syncEngineDidDeleteRecordWithID:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_INFO, "%s Sync engine deleted CKRecord with CKRecordID %{public}@", &v6, 0x16u);
  }

  [*(*(a1 + 40) + 48) logRecordDeleted:*(a1 + 32)];
  result = [*(a1 + 40) handleDeletedRecordWithID:*(a1 + 32)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)syncEngineFailedToSaveRecord:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__VCCKShortcutSyncService_syncEngineFailedToSaveRecord_error___block_invoke;
  v10[3] = &unk_2789000F8;
  v11 = v7;
  v12 = v6;
  v13 = self;
  v8 = v6;
  v9 = v7;
  VCCKPerformBlockInsideAutoreleasePoolInTransaction(@"VCCKShortcutSyncService.failedToSaveRecord", v10);
}

void __62__VCCKShortcutSyncService_syncEngineFailedToSaveRecord_error___block_invoke(id *a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [a1[5] recordID];
    v8 = [a1[5] recordType];
    v9 = [a1[4] domain];
    v10 = [a1[4] code];
    v11 = a1[4];
    v12 = a1[5];
    *buf = 136316930;
    v38 = "[VCCKShortcutSyncService syncEngineFailedToSaveRecord:error:]_block_invoke";
    v39 = 2114;
    v40 = v7;
    v41 = 2114;
    v42 = v8;
    v43 = 2114;
    v44 = v9;
    v45 = 2050;
    v46 = v10;
    v47 = 2114;
    v48 = v11;
    v49 = 2112;
    v50 = v12;
    v51 = 2114;
    v52 = v5;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Sync engine failed to save CKRecord: %{public}@ (%{public}@), error domain = %{public}@, code = %{public}ld, error = %{public}@, record = %@, partial errors = %{public}@", buf, 0x52u);
  }

  v13 = a1[5];
  v14 = *(a1[6] + 6);
  v15 = [a1[4] description];
  [v14 logRecordPushFailed:v13 error:v15];

  v16 = [a1[5] recordType];
  v17 = [objc_msgSend(a1[6] "cloudKitWorkflowClass")];
  LODWORD(v15) = [v16 isEqualToString:v17];

  if (v15)
  {
    v18 = [a1[5] recordID];
    v19 = [v18 recordName];

    v20 = [a1[6] filesReferencedUntilSaved];
    [v20 setObject:0 forKeyedSubscript:v19];
  }

  v21 = a1[4];
  if (CKErrorIsCode())
  {
    [a1[6] handleServerRecordChangedError:a1[4]];
    goto LABEL_26;
  }

  v22 = a1[4];
  if (CKErrorIsCode())
  {
    [a1[6] handleUnknownItemErrorForRecord:a1[5]];
    goto LABEL_26;
  }

  v23 = a1[4];
  if (CKErrorIsCode())
  {
    v24 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [a1[5] recordID];
      *buf = 136315394;
      v38 = "[VCCKShortcutSyncService syncEngineFailedToSaveRecord:error:]_block_invoke";
      v39 = 2114;
      v40 = v25;
      _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_DEFAULT, "%s Zone not found error encountered, asking sync engine to create the Shortcuts zone, and re-saving record with identifier %{public}@", buf, 0x16u);
    }

    [a1[6] createShortcutsZone];
    v26 = a1[6];
    v27 = [a1[5] recordID];
    v36 = v27;
    v28 = MEMORY[0x277CBEA60];
    v29 = &v36;
LABEL_18:
    v30 = [v28 arrayWithObjects:v29 count:{1, v35, v36}];
    [v26 addRecordIDsToSave:v30 recordIDsToDelete:0];

    goto LABEL_26;
  }

  v31 = a1[4];
  if (CKErrorIsCode())
  {
    v32 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v38 = "[VCCKShortcutSyncService syncEngineFailedToSaveRecord:error:]_block_invoke";
      _os_log_impl(&dword_23103C000, v32, OS_LOG_TYPE_DEFAULT, "%s User deleted zone error encountered", buf, 0xCu);
    }

    [MEMORY[0x277D7C230] setZoneWasPurged:1];
    if ([MEMORY[0x277D7C230] ignoresUserDeletedZoneErrors])
    {
      v33 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v38 = "[VCCKShortcutSyncService syncEngineFailedToSaveRecord:error:]_block_invoke";
        _os_log_impl(&dword_23103C000, v33, OS_LOG_TYPE_DEFAULT, "%s User has consented to resuming sync, recreating the zone and retrying record upload", buf, 0xCu);
      }

      [a1[6] createShortcutsZone];
      v26 = a1[6];
      v27 = [a1[5] recordID];
      v35 = v27;
      v28 = MEMORY[0x277CBEA60];
      v29 = &v35;
      goto LABEL_18;
    }
  }

LABEL_26:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)syncEngineDidSaveRecord:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__VCCKShortcutSyncService_syncEngineDidSaveRecord___block_invoke;
  v6[3] = &unk_2788FFFC0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  VCCKPerformBlockInsideAutoreleasePoolInTransaction(@"VCCKShortcutSyncService.didSaveRecord", v6);
}

void __51__VCCKShortcutSyncService_syncEngineDidSaveRecord___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) recordID];
    v4 = *(a1 + 32);
    v34 = 136315650;
    v35 = "[VCCKShortcutSyncService syncEngineDidSaveRecord:]_block_invoke";
    v36 = 2114;
    v37 = v3;
    v38 = 2112;
    v39 = v4;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_INFO, "%s Sync engine saved CKRecord with CKRecordID %{public}@, record = %@", &v34, 0x20u);
  }

  [*(*(a1 + 40) + 48) logRecordPushed:*(a1 + 32)];
  v5 = [*(a1 + 32) recordType];
  v6 = [MEMORY[0x277D7C1F0] recordType];
  if ([v5 isEqualToString:v6])
  {

    goto LABEL_6;
  }

  v7 = [*(a1 + 32) recordType];
  v8 = [MEMORY[0x277D7C1A0] recordType];
  v9 = [v7 isEqualToString:v8];

  if (!v9)
  {
    v14 = [*(a1 + 32) recordType];
    v15 = [objc_msgSend(*(a1 + 40) "cloudKitWorkflowClass")];
    v16 = [v14 isEqualToString:v15];

    if (v16)
    {
      [*(a1 + 40) handleSavedWorkflowRecord:*(a1 + 32)];
      goto LABEL_33;
    }

    v17 = [*(a1 + 32) recordType];
    v18 = [MEMORY[0x277D7C228] recordType];
    v19 = [v17 isEqualToString:v18];

    if (v19)
    {
      [*(a1 + 40) handleSavedSyncFlagsRecord:*(a1 + 32)];
      goto LABEL_33;
    }

    v20 = [*(a1 + 32) recordType];
    v21 = [MEMORY[0x277D7C1F8] recordType];
    v22 = [v20 isEqualToString:v21];

    if (v22)
    {
      if (![*(a1 + 40) coherenceSyncEnabled])
      {
        [*(a1 + 40) handleSavedFolderRecord:*(a1 + 32)];
        goto LABEL_33;
      }

      v10 = getWFCloudKitSyncLogObject();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      v34 = 136315138;
      v35 = "[VCCKShortcutSyncService syncEngineDidSaveRecord:]_block_invoke";
      v11 = "%s Saved folder record but skipping handling it because coherence sync is enabled";
      v12 = v10;
      v13 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }

    v23 = [*(a1 + 32) recordType];
    v24 = [MEMORY[0x277D7C1E8] recordType];
    v25 = [v23 isEqualToString:v24];

    if (v25)
    {
      [*(a1 + 40) handleSavedAutoShortcutsPreferencesRecord:*(a1 + 32)];
      v26 = [*(a1 + 32) recordID];
      v27 = [v26 recordName];

      v28 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v34 = 136315394;
        v35 = "[VCCKShortcutSyncService syncEngineDidSaveRecord:]_block_invoke";
        v36 = 2114;
        v37 = v27;
        _os_log_impl(&dword_23103C000, v28, OS_LOG_TYPE_INFO, "%s Removing file representations for the auto shortcuts preferences record: %{public}@", &v34, 0x16u);
      }

      v29 = [*(a1 + 40) filesReferencedUntilSaved];
      [v29 removeObjectForKey:v27];
    }

    else
    {
      v30 = [*(a1 + 32) recordType];
      v31 = [MEMORY[0x277D7C210] recordType];
      if ([v30 isEqualToString:v31])
      {
        v32 = [*(a1 + 40) coherenceSyncEnabled];

        if (v32)
        {
          [*(a1 + 40) handleSavedLibraryRecord:*(a1 + 32)];
          goto LABEL_33;
        }
      }

      else
      {
      }

      v27 = getWFCloudKitSyncLogObject();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
LABEL_32:

        goto LABEL_33;
      }

      v29 = [*(a1 + 32) recordType];
      v34 = 136315394;
      v35 = "[VCCKShortcutSyncService syncEngineDidSaveRecord:]_block_invoke";
      v36 = 2114;
      v37 = v29;
      _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_ERROR, "%s Saved record of unexpected type: %{public}@", &v34, 0x16u);
    }

    goto LABEL_32;
  }

LABEL_6:
  if (![*(a1 + 40) coherenceSyncEnabled])
  {
    [*(a1 + 40) handleSavedWorkflowOrderingRecord:*(a1 + 32)];
    goto LABEL_33;
  }

  v10 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v34 = 136315138;
    v35 = "[VCCKShortcutSyncService syncEngineDidSaveRecord:]_block_invoke";
    v11 = "%s Saved collection record but skipping handling it because coherence sync is enabled";
    v12 = v10;
    v13 = OS_LOG_TYPE_ERROR;
LABEL_9:
    _os_log_impl(&dword_23103C000, v12, v13, v11, &v34, 0xCu);
  }

LABEL_10:

LABEL_33:
  v33 = *MEMORY[0x277D85DE8];
}

- (id)recordToSaveForRecordID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1171;
  v16 = __Block_byref_object_dispose__1172;
  v17 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__VCCKShortcutSyncService_recordToSaveForRecordID___block_invoke;
  v8[3] = &unk_278900198;
  v5 = v4;
  v9 = v5;
  v10 = self;
  v11 = &v12;
  VCCKPerformBlockInsideAutoreleasePoolInTransaction(@"VCCKShortcutSyncService.recordToSaveForRecordID", v8);
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __51__VCCKShortcutSyncService_recordToSaveForRecordID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v13 = 136315394;
    v14 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_INFO, "%s Sync engine is asking for CKRecord with ID %{public}@", &v13, 0x16u);
  }

  if (([MEMORY[0x277D7C1F0] isOrderingRecordID:*(a1 + 32)] & 1) == 0 && !objc_msgSend(MEMORY[0x277D7C1A0], "isOrderingRecordID:", *(a1 + 32)))
  {
    if ([MEMORY[0x277D7C228] isCloudKitSyncFlagsRecordID:*(a1 + 32)])
    {
      v8 = [*(a1 + 40) syncFlagsRecord];
      v9 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = 136315394;
        v14 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
        v15 = 2114;
        v16 = v8;
        v10 = "%s Returning sync flags CKRecord: %{public}@";
        goto LABEL_14;
      }
    }

    else
    {
      if (![MEMORY[0x277D7C1F8] isFolderRecordID:*(a1 + 32)])
      {
        if ([MEMORY[0x277D7C1E8] isAutoShortcutsPreferencesRecordID:*(a1 + 32)])
        {
          v8 = [*(a1 + 40) autoShortcutsPreferencesRecordForRecordID:*(a1 + 32)];
          v9 = getWFCloudKitSyncLogObject();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            goto LABEL_15;
          }

          v13 = 136315394;
          v14 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
          v15 = 2114;
          v16 = v8;
          v10 = "%s Returning auto shortcuts preferences CKRecord: %{public}@";
        }

        else if ([MEMORY[0x277D7C210] isLibraryRecordID:*(a1 + 32)] && objc_msgSend(*(a1 + 40), "coherenceSyncEnabled"))
        {
          v8 = [*(a1 + 40) libraryRecordForRecordID:*(a1 + 32)];
          v9 = getWFCloudKitSyncLogObject();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            goto LABEL_15;
          }

          v13 = 136315394;
          v14 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
          v15 = 2114;
          v16 = v8;
          v10 = "%s Returning library CKRecord: %{public}@";
        }

        else
        {
          v8 = [*(a1 + 40) workflowRecordForRecordID:*(a1 + 32)];
          v9 = getWFCloudKitSyncLogObject();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            goto LABEL_15;
          }

          v13 = 136315394;
          v14 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
          v15 = 2112;
          v16 = v8;
          v10 = "%s Returning workflow CKRecord: %@";
        }

        goto LABEL_14;
      }

      if ([*(a1 + 40) coherenceSyncEnabled])
      {
        v4 = getWFCloudKitSyncLogObject();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_16;
        }

        v13 = 136315138;
        v14 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
        v5 = "%s Asked for a folder record to save but returning nil because coherence sync is enabled";
        v6 = v4;
        v7 = OS_LOG_TYPE_INFO;
        goto LABEL_8;
      }

      v8 = [*(a1 + 40) folderRecordForRecordID:*(a1 + 32)];
      v9 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = 136315394;
        v14 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
        v15 = 2114;
        v16 = v8;
        v10 = "%s Returning folder CKRecord: %{public}@";
        goto LABEL_14;
      }
    }

LABEL_15:

    v11 = *(*(a1 + 48) + 8);
    v4 = *(v11 + 40);
    *(v11 + 40) = v8;
    goto LABEL_16;
  }

  if (![*(a1 + 40) coherenceSyncEnabled])
  {
    v8 = [*(a1 + 40) workflowOrderingRecordForRecordID:*(a1 + 32)];
    v9 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
      v15 = 2114;
      v16 = v8;
      v10 = "%s Returning workflow ordering CKRecord: %{public}@";
LABEL_14:
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_INFO, v10, &v13, 0x16u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v4 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
    v5 = "%s Asked for a collection record to save but returning nil because coherence sync is enabled";
    v6 = v4;
    v7 = OS_LOG_TYPE_ERROR;
LABEL_8:
    _os_log_impl(&dword_23103C000, v6, v7, v5, &v13, 0xCu);
  }

LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)syncEngineZoneWithIDWasPurged:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[VCCKShortcutSyncService syncEngineZoneWithIDWasPurged:]";
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Sync engine reports that CKRecordZone with identifier %{public}@ was purged", buf, 0x16u);
  }

  logger = self->_logger;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Zone purged: %@", v4];
  [(WFCloudKitSyncEventLogger *)logger logEvent:v7];

  v8 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
  LODWORD(logger) = [v4 isEqual:v8];

  if (logger)
  {
    [MEMORY[0x277D7C230] setZoneWasPurged:1];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)syncEngineZoneWithIDWasDeleted:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[VCCKShortcutSyncService syncEngineZoneWithIDWasDeleted:]";
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Sync engine reports that CKRecordZone with identifier %{public}@ was deleted", buf, 0x16u);
  }

  logger = self->_logger;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Zone deleted: %@", v4];
  [(WFCloudKitSyncEventLogger *)logger logEvent:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncEngineZoneWithIDChanged:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[VCCKShortcutSyncService syncEngineZoneWithIDChanged:]";
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Sync engine reports that CKRecordZone with identifier %{public}@ changed", buf, 0x16u);
  }

  logger = self->_logger;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Zone changed: %@", v4];
  [(WFCloudKitSyncEventLogger *)logger logEvent:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncEngineFailedToDeleteRecordZoneWithID:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v15 = "[VCCKShortcutSyncService syncEngineFailedToDeleteRecordZoneWithID:error:]";
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_FAULT, "%s Sync engine reports failure to delete CKRecordZone: %{public}@, zoneID = %{public}@. This is unexpected, as we should not be deleting any zones", buf, 0x20u);
  }

  logger = self->_logger;
  v10 = MEMORY[0x277CCACA8];
  v11 = [v7 description];
  v12 = [v10 stringWithFormat:@"Failed to delete record zone: %@. %@", v6, v11];
  [(WFCloudKitSyncEventLogger *)logger logError:v12];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)syncEngineFailedToSaveRecordZone:(id)a3 error:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v16 = "[VCCKShortcutSyncService syncEngineFailedToSaveRecordZone:error:]";
    v17 = 2114;
    v18 = v7;
    v19 = 2114;
    v20 = v6;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to save CKRecordZone: %{public}@, zone = %{public}@", buf, 0x20u);
  }

  logger = self->_logger;
  v10 = MEMORY[0x277CCACA8];
  v11 = [v6 zoneID];
  v12 = [v7 description];
  v13 = [v10 stringWithFormat:@"Failed to save record zone: %@. %@", v11, v12];
  [(WFCloudKitSyncEventLogger *)logger logError:v13];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)syncEngineDidDeleteRecordZoneWithID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v10 = "[VCCKShortcutSyncService syncEngineDidDeleteRecordZoneWithID:]";
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_FAULT, "%s Sync engine reports successful deletion of CKRecordZone with identifier %{public}@, but we should not be deleting any zones", buf, 0x16u);
  }

  logger = self->_logger;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Deleted record zone: %@", v4];
  [(WFCloudKitSyncEventLogger *)logger logEvent:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)syncEngineDidSaveRecordZone:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[VCCKShortcutSyncService syncEngineDidSaveRecordZone:]";
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Successfully saved CKRecordZone %{public}@", buf, 0x16u);
  }

  logger = self->_logger;
  v7 = MEMORY[0x277CCACA8];
  v8 = [v4 zoneID];
  v9 = [v7 stringWithFormat:@"Saved record zone: %@", v8];
  [(WFCloudKitSyncEventLogger *)logger logEvent:v9];

  v10 = [v4 zoneID];
  v11 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
  LODWORD(v9) = [v10 isEqual:v11];

  if (v9)
  {
    [MEMORY[0x277D7C230] setIgnoresUserDeletedZoneErrors:0];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)syncEngine:(id)a3 nextRecordZoneChangeBatchForContext:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(VCCKShortcutSyncService *)self syncEngine];

  if (v8 == v6)
  {
    v29 = v7;
    v30 = v6;
    v10 = [v7 options];
    v11 = [v10 scope];

    v12 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v13 = [(VCCKShortcutSyncService *)self syncEngine];
    v14 = [v13 state];
    v15 = [v14 pendingRecordZoneChanges];

    v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          v21 = [v20 recordID];
          v22 = [v11 containsRecordID:v21];

          if (v22)
          {
            [v12 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v17);
    }

    v23 = objc_opt_new();
    v24 = objc_alloc(MEMORY[0x277CBC730]);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __74__VCCKShortcutSyncService_syncEngine_nextRecordZoneChangeBatchForContext___block_invoke;
    v31[3] = &unk_2788FE7D8;
    v31[4] = self;
    v32 = v23;
    v25 = v23;
    v9 = [v24 initWithPendingChanges:v12 recordProvider:v31];
    v6 = v30;
    v26 = [v30 state];
    [v26 removePendingRecordZoneChanges:v25];

    v7 = v29;
  }

  else
  {
    v9 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v9;
}

id __74__VCCKShortcutSyncService_syncEngine_nextRecordZoneChangeBatchForContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) recordToSaveForRecordID:v3];
  if (!v4)
  {
    v5 = *(a1 + 40);
    v6 = [objc_alloc(MEMORY[0x277CBC718]) initWithRecordID:v3 type:0];
    [v5 addObject:v6];
  }

  return v4;
}

- (void)syncEngine:(id)a3 handleEvent:(id)a4
{
  v160 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 type];
  if (v6 <= 2)
  {
    if (!v6)
    {
      v15 = v5;
      if (v15)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v57 = v16;

      v58 = MEMORY[0x277CCAAB0];
      v59 = [v57 stateSerialization];

      v17 = [v58 wf_securelyArchivedDataWithRootObject:v59];

      [(VCCKShortcutSyncService *)self syncEngineDidUpdateMetadata:v17];
      goto LABEL_126;
    }

    if (v6 != 2)
    {
      goto LABEL_127;
    }

    v9 = v5;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v17 = v10;

    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v86 = [v17 modifications];
    v87 = [v86 countByEnumeratingWithState:&v144 objects:v159 count:16];
    if (v87)
    {
      v88 = v87;
      v89 = *v145;
      do
      {
        for (i = 0; i != v88; ++i)
        {
          if (*v145 != v89)
          {
            objc_enumerationMutation(v86);
          }

          v91 = [*(*(&v144 + 1) + 8 * i) zoneID];
          [(VCCKShortcutSyncService *)self syncEngineZoneWithIDChanged:v91];
        }

        v88 = [v86 countByEnumeratingWithState:&v144 objects:v159 count:16];
      }

      while (v88);
    }

    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v23 = [v17 deletions];
    v92 = [v23 countByEnumeratingWithState:&v140 objects:v158 count:16];
    if (!v92)
    {
      goto LABEL_125;
    }

    v93 = v92;
    v94 = *v141;
LABEL_115:
    v95 = 0;
    while (1)
    {
      if (*v141 != v94)
      {
        objc_enumerationMutation(v23);
      }

      v96 = *(*(&v140 + 1) + 8 * v95);
      v97 = [v96 reason];
      if (v97 == 1)
      {
        break;
      }

      if (!v97)
      {
        v98 = [v96 zoneID];
        [(VCCKShortcutSyncService *)self syncEngineZoneWithIDWasDeleted:v98];
LABEL_122:
      }

      if (v93 == ++v95)
      {
        v93 = [v23 countByEnumeratingWithState:&v140 objects:v158 count:16];
        if (!v93)
        {
          goto LABEL_125;
        }

        goto LABEL_115;
      }
    }

    v98 = [v96 zoneID];
    [(VCCKShortcutSyncService *)self syncEngineZoneWithIDWasPurged:v98];
    goto LABEL_122;
  }

  switch(v6)
  {
    case 3:
      v11 = v5;
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v17 = v12;

      v138 = 0u;
      v139 = 0u;
      v136 = 0u;
      v137 = 0u;
      v18 = [v17 modifications];
      v19 = [v18 countByEnumeratingWithState:&v136 objects:v157 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v137;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v137 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [(VCCKShortcutSyncService *)self syncEngineDidFetchRecord:*(*(&v136 + 1) + 8 * j)];
          }

          v20 = [v18 countByEnumeratingWithState:&v136 objects:v157 count:16];
        }

        while (v20);
      }

      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v23 = [v17 deletions];
      v24 = [v23 countByEnumeratingWithState:&v132 objects:v156 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v133;
        do
        {
          for (k = 0; k != v25; ++k)
          {
            if (*v133 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v132 + 1) + 8 * k);
            v29 = [v28 recordID];
            v30 = [v28 recordType];
            [(VCCKShortcutSyncService *)self syncEngineRecordWithIDWasDeleted:v29 recordType:v30];
          }

          v25 = [v23 countByEnumeratingWithState:&v132 objects:v156 count:16];
        }

        while (v25);
      }

      goto LABEL_125;
    case 4:
      v13 = v5;
      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v17 = v14;

      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v31 = [v17 savedZones];
      v32 = [v31 countByEnumeratingWithState:&v128 objects:v155 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v129;
        do
        {
          for (m = 0; m != v33; ++m)
          {
            if (*v129 != v34)
            {
              objc_enumerationMutation(v31);
            }

            [(VCCKShortcutSyncService *)self syncEngineDidSaveRecordZone:*(*(&v128 + 1) + 8 * m)];
          }

          v33 = [v31 countByEnumeratingWithState:&v128 objects:v155 count:16];
        }

        while (v33);
      }

      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v36 = [v17 failedZoneSaves];
      v37 = [v36 countByEnumeratingWithState:&v124 objects:v154 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v125;
        do
        {
          for (n = 0; n != v38; ++n)
          {
            if (*v125 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v124 + 1) + 8 * n);
            v42 = [v41 recordZone];
            v43 = [v41 error];
            [(VCCKShortcutSyncService *)self syncEngineFailedToSaveRecordZone:v42 error:v43];
          }

          v38 = [v36 countByEnumeratingWithState:&v124 objects:v154 count:16];
        }

        while (v38);
      }

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v44 = [v17 deletedZoneIDs];
      v45 = [v44 countByEnumeratingWithState:&v120 objects:v153 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v121;
        do
        {
          for (ii = 0; ii != v46; ++ii)
          {
            if (*v121 != v47)
            {
              objc_enumerationMutation(v44);
            }

            [(VCCKShortcutSyncService *)self syncEngineDidDeleteRecordZoneWithID:*(*(&v120 + 1) + 8 * ii)];
          }

          v46 = [v44 countByEnumeratingWithState:&v120 objects:v153 count:16];
        }

        while (v46);
      }

      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v49 = [v17 failedZoneDeletes];
      v23 = [v49 allKeys];

      v50 = [v23 countByEnumeratingWithState:&v116 objects:v152 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v117;
        do
        {
          for (jj = 0; jj != v51; ++jj)
          {
            if (*v117 != v52)
            {
              objc_enumerationMutation(v23);
            }

            v54 = *(*(&v116 + 1) + 8 * jj);
            v55 = [v17 failedZoneDeletes];
            v56 = [v55 objectForKey:v54];
            [(VCCKShortcutSyncService *)self syncEngineFailedToDeleteRecordZoneWithID:v54 error:v56];
          }

          v51 = [v23 countByEnumeratingWithState:&v116 objects:v152 count:16];
        }

        while (v51);
      }

      goto LABEL_125;
    case 5:
      v7 = v5;
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      v17 = v8;

      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v60 = [v17 savedRecords];
      v61 = [v60 countByEnumeratingWithState:&v112 objects:v151 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = *v113;
        do
        {
          for (kk = 0; kk != v62; ++kk)
          {
            if (*v113 != v63)
            {
              objc_enumerationMutation(v60);
            }

            [(VCCKShortcutSyncService *)self syncEngineDidSaveRecord:*(*(&v112 + 1) + 8 * kk)];
          }

          v62 = [v60 countByEnumeratingWithState:&v112 objects:v151 count:16];
        }

        while (v62);
      }

      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v65 = [v17 failedRecordSaves];
      v66 = [v65 countByEnumeratingWithState:&v108 objects:v150 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v109;
        do
        {
          for (mm = 0; mm != v67; ++mm)
          {
            if (*v109 != v68)
            {
              objc_enumerationMutation(v65);
            }

            v70 = *(*(&v108 + 1) + 8 * mm);
            v71 = [v70 record];
            v72 = [v70 error];
            [(VCCKShortcutSyncService *)self syncEngineFailedToSaveRecord:v71 error:v72];
          }

          v67 = [v65 countByEnumeratingWithState:&v108 objects:v150 count:16];
        }

        while (v67);
      }

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v73 = [v17 deletedRecordIDs];
      v74 = [v73 countByEnumeratingWithState:&v104 objects:v149 count:16];
      if (v74)
      {
        v75 = v74;
        v76 = *v105;
        do
        {
          for (nn = 0; nn != v75; ++nn)
          {
            if (*v105 != v76)
            {
              objc_enumerationMutation(v73);
            }

            [(VCCKShortcutSyncService *)self syncEngineDidDeleteRecordWithID:*(*(&v104 + 1) + 8 * nn)];
          }

          v75 = [v73 countByEnumeratingWithState:&v104 objects:v149 count:16];
        }

        while (v75);
      }

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v78 = [v17 failedRecordDeletes];
      v23 = [v78 allKeys];

      v79 = [v23 countByEnumeratingWithState:&v100 objects:v148 count:16];
      if (v79)
      {
        v80 = v79;
        v81 = *v101;
        do
        {
          for (i1 = 0; i1 != v80; ++i1)
          {
            if (*v101 != v81)
            {
              objc_enumerationMutation(v23);
            }

            v83 = *(*(&v100 + 1) + 8 * i1);
            v84 = [v17 failedRecordDeletes];
            v85 = [v84 objectForKey:v83];
            [(VCCKShortcutSyncService *)self syncEngineFailedToDeleteRecordWithID:v83 error:v85];
          }

          v80 = [v23 countByEnumeratingWithState:&v100 objects:v148 count:16];
        }

        while (v80);
      }

LABEL_125:

LABEL_126:
      break;
  }

LABEL_127:

  v99 = *MEMORY[0x277D85DE8];
}

- (id)fetchCloudKitRecordIDsForAllVisibleWorkflows
{
  v3 = [(VCCKShortcutSyncService *)self database];
  v4 = [v3 sortedVisibleWorkflowsByName];
  v5 = [v4 descriptors];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__VCCKShortcutSyncService_fetchCloudKitRecordIDsForAllVisibleWorkflows__block_invoke;
  v8[3] = &unk_2788FE7B0;
  v8[4] = self;
  v6 = [v5 if_map:v8];

  return v6;
}

id __71__VCCKShortcutSyncService_fetchCloudKitRecordIDsForAllVisibleWorkflows__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 cloudKitWorkflowClass];
  v6 = [*(a1 + 32) shortcutsZoneID];
  v7 = [v4 identifier];

  v8 = [v5 recordIDWithZoneID:v6 workflowID:v7];

  return v8;
}

- (void)databaseDidChange:(id)a3 modified:(id)a4 inserted:(id)a5 removed:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v22 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]";
    v23 = 2114;
    v24 = v9;
    v25 = 2114;
    v26 = v10;
    v27 = 2114;
    v28 = v11;
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_INFO, "%s Received database change: modified = %{public}@, inserted = %{public}@, removed = %{public}@", buf, 0x2Au);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__VCCKShortcutSyncService_databaseDidChange_modified_inserted_removed___block_invoke;
  v17[3] = &unk_2788FE788;
  v17[4] = self;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v13 = v11;
  v14 = v10;
  v15 = v9;
  VCCKPerformBlockInsideAutoreleasePoolInTransaction(@"VCCKShortcutSyncService.databaseResultChange", v17);

  v16 = *MEMORY[0x277D85DE8];
}

void __71__VCCKShortcutSyncService_databaseDidChange_modified_inserted_removed___block_invoke(id *a1)
{
  v140 = *MEMORY[0x277D85DE8];
  v106 = objc_opt_new();
  v105 = objc_opt_new();
  v107 = [a1[4] shortcutsZoneID];
  v103 = objc_opt_new();
  v104 = objc_opt_new();
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v2 = a1[5];
  v3 = [v2 countByEnumeratingWithState:&v125 objects:v139 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v126;
    *&v4 = 136315650;
    v99 = v4;
    v100 = v2;
    obj = *v126;
    do
    {
      v7 = 0;
      do
      {
        if (*v126 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v125 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        [*(a1[4] + 6) logDatabaseModify:v8 value:0];
        if (![v8 objectType])
        {
          v10 = [v8 identifier];
          v11 = v104;
LABEL_18:
          [v11 addObject:{v10, v99}];
          goto LABEL_30;
        }

        if ([v8 objectType] == 2)
        {
          if ([a1[4] coherenceSyncEnabled])
          {
            v10 = getWFCloudKitSyncLogObject();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v134 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
              _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_INFO, "%s Received database change for collections but skipping sync because coherence sync is enabled", buf, 0xCu);
            }

            goto LABEL_30;
          }

          v10 = [v8 identifier];
          v11 = v103;
          goto LABEL_18;
        }

        if ([v8 objectType] == 9)
        {
          v12 = MEMORY[0x277D7C1E8];
          v13 = [v8 identifier];
          v10 = [v12 recordIDWithZoneID:v107 identifier:v13];

          v14 = [MEMORY[0x277D7C1E8] identifierForRecordID:v10];
          v15 = [a1[4] database];
          v16 = [v15 autoShortcutsPreferencesForIdentifier:v14 error:0];

          v17 = [v16 lastSyncedHash];
          v18 = [v16 computedSyncHash];
          v19 = getWFCloudKitSyncLogObject();
          v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
          if (v17 == v18)
          {
            if (v20)
            {
              *buf = 136315138;
              v134 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
              _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_INFO, "%s Received database change for auto shortcuts preferences but the sync hashes remain the same, skipping sync up", buf, 0xCu);
            }
          }

          else
          {
            if (v20)
            {
              *buf = 136315138;
              v134 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
              _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_INFO, "%s Auto shortcuts preferences changed in the database; adding record id to save", buf, 0xCu);
            }

            [v106 addObject:v10];
          }

          v2 = v100;
          v6 = obj;

          goto LABEL_29;
        }

        if ([v8 objectType] == 10 && objc_msgSend(a1[4], "coherenceSyncEnabled"))
        {
          v21 = [a1[4] database];
          v124 = 0;
          v14 = [v21 recordWithDescriptor:v8 error:&v124];
          v10 = v124;

          if (v14)
          {
            v22 = [v14 lastSyncedHash];
            v23 = [v14 syncHash];
            v24 = getWFCloudKitSyncLogObject();
            v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
            if (v22 == v23)
            {
              if (v25)
              {
                *buf = 136315138;
                v134 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
                _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_INFO, "%s Received database change for library but the sync hashes remain the same, skipping sync up", buf, 0xCu);
              }
            }

            else
            {
              if (v25)
              {
                *buf = 136315138;
                v134 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
                _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_INFO, "%s Library changed in the database; adding record id to save", buf, 0xCu);
              }

              v26 = MEMORY[0x277D7C210];
              v27 = [v8 identifier];
              v24 = [v26 recordIDWithZoneID:v107 libraryIdentifier:v27];

              [v106 addObject:v24];
            }

            v2 = v100;
          }

          else
          {
            v24 = getWFCloudKitSyncLogObject();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
            {
              *buf = v99;
              v134 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
              v135 = 2114;
              v136 = v10;
              v137 = 2112;
              v138 = v8;
              _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_FAULT, "%s Failed to load WFLibraryRecord from descriptor: %{public}@, descriptor = %@", buf, 0x20u);
            }
          }

          v6 = obj;

LABEL_29:
LABEL_30:
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v28 = [v2 countByEnumeratingWithState:&v125 objects:v139 count:16];
      v5 = v28;
    }

    while (v28);
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v29 = a1[6];
  v30 = [v29 countByEnumeratingWithState:&v120 objects:v132 count:16];
  if (!v30)
  {
    goto LABEL_68;
  }

  v31 = v30;
  v32 = *v121;
  do
  {
    v33 = 0;
    do
    {
      if (*v121 != v32)
      {
        objc_enumerationMutation(v29);
      }

      v34 = *(*(&v120 + 1) + 8 * v33);
      v35 = objc_autoreleasePoolPush();
      [*(a1[4] + 6) logDatabaseInsert:v34 value:0];
      if (![v34 objectType])
      {
        v36 = [v34 identifier];
        v37 = v104;
        goto LABEL_55;
      }

      if ([v34 objectType] == 2)
      {
        if ([a1[4] coherenceSyncEnabled])
        {
          v36 = getWFCloudKitSyncLogObject();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v134 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
            _os_log_impl(&dword_23103C000, v36, OS_LOG_TYPE_INFO, "%s Received database change for collections but skipping sync because coherence sync is enabled", buf, 0xCu);
          }

          goto LABEL_56;
        }

        v36 = [v34 identifier];
        v37 = v103;
LABEL_55:
        [v37 addObject:{v36, v99}];
LABEL_56:

        goto LABEL_57;
      }

      if ([v34 objectType] == 9)
      {
        v38 = MEMORY[0x277D7C1E8];
        v39 = [v34 identifier];
        v36 = [v38 recordIDWithZoneID:v107 identifier:v39];

        v37 = v106;
        goto LABEL_55;
      }

      if ([v34 objectType] == 10 && objc_msgSend(a1[4], "coherenceSyncEnabled"))
      {
        v40 = MEMORY[0x277D7C210];
        v41 = [v34 identifier];
        v36 = [v40 recordIDWithZoneID:v107 libraryIdentifier:v41];

        [v106 addObject:v36];
        v42 = [a1[4] database];
        v43 = [v42 recordWithDescriptor:v34 properties:0 error:0];

        if (v43)
        {
          v44 = [v43 cloudKitRecordMetadata];

          if (!v44)
          {
            v45 = getWFCloudKitSyncLogObject();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v134 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
              _os_log_impl(&dword_23103C000, v45, OS_LOG_TYPE_INFO, "%s About to upload the library to CloudKit for the first time. Uploading all shortcut records to migrate to the Shortcut_v2 record", buf, 0xCu);
            }

            v46 = [a1[4] fetchCloudKitRecordIDsForAllVisibleWorkflows];
            [v106 addObjectsFromArray:v46];
          }
        }

        goto LABEL_56;
      }

LABEL_57:
      objc_autoreleasePoolPop(v35);
      ++v33;
    }

    while (v31 != v33);
    v47 = [v29 countByEnumeratingWithState:&v120 objects:v132 count:16];
    v31 = v47;
  }

  while (v47);
LABEL_68:

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v48 = a1[7];
  v49 = [v48 countByEnumeratingWithState:&v116 objects:v131 count:16];
  if (!v49)
  {
    goto LABEL_91;
  }

  v50 = v49;
  v51 = *v117;
  while (2)
  {
    v52 = 0;
    while (2)
    {
      if (*v117 != v51)
      {
        objc_enumerationMutation(v48);
      }

      v53 = *(*(&v116 + 1) + 8 * v52);
      v54 = objc_autoreleasePoolPush();
      [*(a1[4] + 6) logDatabaseRemove:v53];
      if (![v53 objectType])
      {
        v55 = [v53 identifier];
        v56 = v104;
        goto LABEL_83;
      }

      if ([v53 objectType] != 2)
      {
        if ([v53 objectType] == 9)
        {
          v57 = MEMORY[0x277D7C1E8];
          v58 = [v53 identifier];
          v59 = [v57 recordIDWithZoneID:v107 identifier:v58];
        }

        else
        {
          if ([v53 objectType] != 10 || !objc_msgSend(a1[4], "coherenceSyncEnabled"))
          {
            goto LABEL_85;
          }

          v60 = MEMORY[0x277D7C210];
          v58 = [v53 identifier];
          v59 = [v60 recordIDWithZoneID:v107 libraryIdentifier:v58];
        }

        v55 = v59;

        v56 = v105;
LABEL_83:
        [v56 addObject:{v55, v99}];
        goto LABEL_84;
      }

      if (![a1[4] coherenceSyncEnabled])
      {
        v55 = [v53 identifier];
        v56 = v103;
        goto LABEL_83;
      }

      v55 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v134 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
        _os_log_impl(&dword_23103C000, v55, OS_LOG_TYPE_INFO, "%s Received database change for collections but skipping sync because coherence sync is enabled", buf, 0xCu);
      }

LABEL_84:

LABEL_85:
      objc_autoreleasePoolPop(v54);
      if (v50 != ++v52)
      {
        continue;
      }

      break;
    }

    v61 = [v48 countByEnumeratingWithState:&v116 objects:v131 count:16];
    v50 = v61;
    if (v61)
    {
      continue;
    }

    break;
  }

LABEL_91:

  if (([a1[4] coherenceSyncEnabled] & 1) == 0)
  {
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    obja = v103;
    v62 = [obja countByEnumeratingWithState:&v112 objects:v130 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v113;
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v113 != v64)
          {
            objc_enumerationMutation(obja);
          }

          v66 = *(*(&v112 + 1) + 8 * i);
          v67 = [MEMORY[0x277D7C1F8] recordIDWithZoneID:v107 collectionIdentifier:{v66, v99}];
          v68 = [a1[4] database];
          v69 = [v68 desiredFolderSyncOperationForCollection:v66];

          v70 = [v69 operationType];
          v71 = v106;
          if (v70 == 1 || (v72 = [v69 operationType], v71 = v105, v72 == 2))
          {
            [v71 addObject:v67];
          }

          v73 = [a1[4] logger];
          [v73 logDesiredSyncOperationWithName:@"folder sync" operation:v69 identifier:v66];

          v74 = [MEMORY[0x277D7C1F0] recordIDWithZoneID:v107 collectionIdentifier:v66];
          v75 = [a1[4] database];
          v76 = [v75 desiredOrderingSyncOperationForCollection:v66];

          v77 = [v76 operationType];
          v78 = v106;
          if (v77 == 1 || (v79 = [v76 operationType], v78 = v105, v79 == 2))
          {
            [v78 addObject:v74];
          }

          v80 = [a1[4] logger];
          [v80 logDesiredSyncOperationWithName:@"ordering sync" operation:v76 identifier:v66];
        }

        v63 = [obja countByEnumeratingWithState:&v112 objects:v130 count:16];
      }

      while (v63);
    }
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v81 = v104;
  v82 = [v81 countByEnumeratingWithState:&v108 objects:v129 count:16];
  if (v82)
  {
    v83 = v82;
    v84 = *v109;
    do
    {
      for (j = 0; j != v83; ++j)
      {
        if (*v109 != v84)
        {
          objc_enumerationMutation(v81);
        }

        v86 = *(*(&v108 + 1) + 8 * j);
        v87 = [objc_msgSend(a1[4] cloudKitWorkflowClass];
        v88 = [a1[4] database];
        v89 = [v88 desiredSyncOperationForWorkflow:v86];

        v90 = [v89 operationType];
        v91 = v106;
        if (v90 == 1 || (v92 = [v89 operationType], v91 = v105, v92 == 2))
        {
          [v91 addObject:v87];
        }

        v93 = [a1[4] logger];
        [v93 logDesiredSyncOperationWithName:@"shortcut sync" operation:v89 identifier:v86];
      }

      v83 = [v81 countByEnumeratingWithState:&v108 objects:v129 count:16];
    }

    while (v83);
  }

  v94 = [v105 array];
  [v106 removeObjectsInArray:v94];

  v95 = a1[4];
  v96 = [v106 array];
  v97 = [v105 array];
  [v95 addRecordIDsToSave:v96 recordIDsToDelete:v97];

  v98 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (VCCKShortcutSyncServiceUserDefaultsChangedContext == a6)
  {
    if (([v10 isEqualToString:*MEMORY[0x277D7D078]] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", *MEMORY[0x277D7CC08]))
    {
      [(VCCKShortcutSyncService *)self sendSyncFlagsIfNeeded];
    }
  }

  else if (VCCKShortcutSyncServiceApplicationVisibilityChangedContext == a6)
  {
    v13 = [(VCCKShortcutSyncService *)self applicationObserver];
    v14 = [v13 isApplicationVisible];

    v15 = getWFCloudKitSyncLogObject();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        *buf = 136315138;
        v21 = "[VCCKShortcutSyncService observeValueForKeyPath:ofObject:change:context:]";
        _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEFAULT, "%s Application moved to foreground, performing immediate sync", buf, 0xCu);
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __74__VCCKShortcutSyncService_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v19[3] = &unk_2788FEEC0;
      v19[4] = self;
      [(VCCKShortcutSyncService *)self fetchChangesInShortcutsZoneWithCompletion:v19];
    }

    else
    {
      if (v16)
      {
        *buf = 136315138;
        v21 = "[VCCKShortcutSyncService observeValueForKeyPath:ofObject:change:context:]";
        _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEFAULT, "%s Application no longer in foreground.", buf, 0xCu);
      }
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = VCCKShortcutSyncService;
    [(VCCKShortcutSyncService *)&v18 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)startWithCompletionHandler:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VCCKShortcutSyncService *)self database];
  v6 = [v5 syncToken];
  v7 = [v6 syncEngineMetadata];

  v8 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[VCCKShortcutSyncService startWithCompletionHandler:]";
    v32 = 2048;
    v33 = [v7 length];
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Loaded sync engine metadata, length = %lu", buf, 0x16u);
  }

  if ([v7 length])
  {
    v29 = 0;
    v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v29];
    v10 = v29;
    if (v10)
    {
      v11 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v31 = "[VCCKShortcutSyncService startWithCompletionHandler:]";
        v32 = 2112;
        v33 = v10;
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s Failed to unarchive state serialization: %@", buf, 0x16u);
      }
    }

    else
    {
      if (v9)
      {
        v10 = 0;
        goto LABEL_16;
      }

      v12 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v31 = "[VCCKShortcutSyncService startWithCompletionHandler:]";
        _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEBUG, "%s Migrating from old sync engine metadata blob to new sync engine state serialization", buf, 0xCu);
      }

      v9 = [objc_alloc(MEMORY[0x277CBC758]) initWithDeprecatedData:v7];
      v13 = [MEMORY[0x277CCAAB0] wf_securelyArchivedDataWithRootObject:v9];
      v14 = [(VCCKShortcutSyncService *)self database];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __54__VCCKShortcutSyncService_startWithCompletionHandler___block_invoke;
      v27[3] = &unk_2788FE6E8;
      v28 = v13;
      v11 = v13;
      [v14 updateSyncTokenWithBlock:v27];
    }
  }

  else
  {
    v10 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[VCCKShortcutSyncService startWithCompletionHandler:]";
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s Sync engine metadata is empty, initializing configuration with nil state serialization", buf, 0xCu);
    }

    v9 = 0;
  }

LABEL_16:

  v15 = objc_alloc(MEMORY[0x277CBC6F0]);
  v16 = [(VCCKShortcutSyncService *)self container];
  v17 = [v16 privateCloudDatabase];
  v18 = [v15 initWithDatabase:v17 stateSerialization:v9 delegate:self];

  [v18 setApsMachServiceName:@"com.apple.aps.siriactionsd"];
  if (([(VCCKShortcutSyncService *)self debuggingOptions]& 1) != 0)
  {
    [v18 setAutomaticallySync:0];
  }

  v19 = [objc_alloc(MEMORY[0x277CBC6E8]) initWithConfiguration:v18];
  [(VCCKShortcutSyncService *)self setSyncEngine:v19];

  v20 = [(VCCKShortcutSyncService *)self database];
  [v20 addObjectObserver:self];

  [(VCCKShortcutSyncService *)self startObservingUserDefaults];
  v21 = [(VCCKShortcutSyncService *)self applicationObserver];
  [v21 addObserver:self forKeyPath:@"applicationVisible" options:0 context:VCCKShortcutSyncServiceApplicationVisibilityChangedContext];

  objc_initWeak(buf, self);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __54__VCCKShortcutSyncService_startWithCompletionHandler___block_invoke_252;
  v24[3] = &unk_2788FE760;
  objc_copyWeak(&v26, buf);
  v22 = v4;
  v25 = v22;
  [(VCCKShortcutSyncService *)self fetchChangesInShortcutsZoneWithCompletion:v24];

  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);

  v23 = *MEMORY[0x277D85DE8];
}

void __54__VCCKShortcutSyncService_startWithCompletionHandler___block_invoke_252(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  [WeakRetained sendChangedWorkflows];
  v6 = [WeakRetained database];
  v7 = [v6 coherenceSyncEnabled];

  if (v7)
  {
    [WeakRetained sendLibraryIfNeeded];
  }

  else
  {
    [WeakRetained sendChangedFoldersAndCollections];
  }

  [WeakRetained sendSyncFlagsIfNeeded];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__VCCKShortcutSyncService_startWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_2789001E0;
  v9 = *(a1 + 32);
  [WeakRetained modifyPendingChangesInShortcutsZoneWithCompletion:v8];

  objc_autoreleasePoolPop(v5);
}

- (void)stopObservingUserDefaults
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = WFUserDefaultsKeysToObserve();
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 removeObserver:self forKeyPath:*(*(&v20 + 1) + 8 * v8++) context:VCCKShortcutSyncServiceUserDefaultsChangedContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v9 = [MEMORY[0x277CBEBD0] systemShortcutsUserDefaults];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = WFSystemUserDefaultsKeysToObserve();
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v9 removeObserver:self forKeyPath:*(*(&v16 + 1) + 8 * v14++) context:{VCCKShortcutSyncServiceUserDefaultsChangedContext, v16}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)startObservingUserDefaults
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = WFUserDefaultsKeysToObserve();
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObserver:self forKeyPath:*(*(&v20 + 1) + 8 * v8++) options:0 context:VCCKShortcutSyncServiceUserDefaultsChangedContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v9 = [MEMORY[0x277CBEBD0] systemShortcutsUserDefaults];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = WFSystemUserDefaultsKeysToObserve();
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v9 addObserver:self forKeyPath:*(*(&v16 + 1) + 8 * v14++) options:0 context:{VCCKShortcutSyncServiceUserDefaultsChangedContext, v16}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleUnknownItemErrorForRecord:(id)a3
{
  v72 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 recordID];
    *buf = 136315650;
    v67 = "[VCCKShortcutSyncService handleUnknownItemErrorForRecord:]";
    v68 = 2114;
    v69 = v6;
    v70 = 2112;
    v71 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Handling CKErrorUnknownItem error for record with identifier %{public}@, record = %@", buf, 0x20u);
  }

  v7 = [v4 recordType];
  v8 = [MEMORY[0x277D7C1F0] recordType];
  if ([v7 isEqualToString:v8])
  {

    goto LABEL_6;
  }

  v9 = [v4 recordType];
  v10 = [MEMORY[0x277D7C1A0] recordType];
  v11 = [v9 isEqualToString:v10];

  if (!v11)
  {
    v21 = [v4 recordType];
    v22 = [MEMORY[0x277D7C228] recordType];
    v23 = [v21 isEqualToString:v22];

    if (v23)
    {
      v24 = [(VCCKShortcutSyncService *)self database];
      [v24 updateSyncTokenWithBlock:&__block_literal_global_246];

      [(VCCKShortcutSyncService *)self sendSyncFlagsIfNeeded];
      goto LABEL_13;
    }

    v25 = [v4 recordType];
    v26 = [(objc_class *)[(VCCKShortcutSyncService *)self cloudKitWorkflowClass] recordType];
    v27 = [v25 isEqualToString:v26];

    if (v27)
    {
      v28 = [(VCCKShortcutSyncService *)self cloudKitWorkflowClass];
      v29 = [v4 recordID];
      v13 = [(objc_class *)v28 workflowIdentifierForRecordID:v29];

      v30 = [(VCCKShortcutSyncService *)self database];
      [v30 setCloudKitMetadata:0 forWorkflowRecordWithIdentifier:v13 error:0];

      v16 = [v4 recordID];
      v64 = v16;
      v17 = MEMORY[0x277CBEA60];
      v18 = &v64;
LABEL_10:
      v19 = [v17 arrayWithObjects:v18 count:1];
      [(VCCKShortcutSyncService *)self addRecordIDsToSave:v19 recordIDsToDelete:0];

LABEL_11:
LABEL_12:

      goto LABEL_13;
    }

    v31 = [v4 recordType];
    v32 = [MEMORY[0x277D7C1F8] recordType];
    v33 = [v31 isEqualToString:v32];

    if (v33)
    {
      v34 = MEMORY[0x277D7C1F8];
      v35 = [v4 recordID];
      v13 = [v34 collectionIdentifierForRecordID:v35];

      if (!v13)
      {
        v16 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v55 = [v4 recordID];
          *buf = 136315394;
          v67 = "[VCCKShortcutSyncService handleUnknownItemErrorForRecord:]";
          v68 = 2114;
          v69 = v55;
          _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_ERROR, "%s Failed to get collection identifier from folder CKRecordID %{public}@", buf, 0x16u);
        }

        goto LABEL_11;
      }

      v36 = [(VCCKShortcutSyncService *)self database];
      [v36 setCloudKitMetadata:0 forFolderRecordWithIdentifier:v13 error:0];

      v16 = [v4 recordID];
      v63 = v16;
      v17 = MEMORY[0x277CBEA60];
      v18 = &v63;
      goto LABEL_10;
    }

    v37 = [v4 recordType];
    v38 = [MEMORY[0x277D7C1E8] recordType];
    v39 = [v37 isEqualToString:v38];

    if (v39)
    {
      v40 = MEMORY[0x277D7C1E8];
      v41 = [v4 recordID];
      v13 = [v40 identifierForRecordID:v41];

      if (v13)
      {
        v42 = [(VCCKShortcutSyncService *)self database];
        v60 = 0;
        v43 = [v42 autoShortcutsPreferencesForIdentifier:v13 error:&v60];
        v44 = v60;

        if (v43)
        {
          [v43 setCloudKitMetadata:0];
          v45 = [(VCCKShortcutSyncService *)self database];
          v59 = v44;
          v46 = [v45 updateAutoShortcutsPreferencesWithNewPreferences:v43 error:&v59];
          v47 = v59;

          if (v46)
          {
            v48 = [v4 recordID];
            v62 = v48;
            v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
            [(VCCKShortcutSyncService *)self addRecordIDsToSave:v49 recordIDsToDelete:0];
          }

          else
          {
            v48 = getWFCloudKitSyncLogObject();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v67 = "[VCCKShortcutSyncService handleUnknownItemErrorForRecord:]";
              v68 = 2112;
              v69 = v43;
              v70 = 2112;
              v71 = v47;
              _os_log_impl(&dword_23103C000, v48, OS_LOG_TYPE_ERROR, "%s Failed to update Auto Shortcuts Preferences (%@): %@", buf, 0x20u);
            }
          }

          v44 = v47;
        }

        else
        {
          v48 = getWFCloudKitSyncLogObject();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v67 = "[VCCKShortcutSyncService handleUnknownItemErrorForRecord:]";
            v68 = 2112;
            v69 = v13;
            v70 = 2112;
            v71 = v44;
            _os_log_impl(&dword_23103C000, v48, OS_LOG_TYPE_ERROR, "%s Failed to get Auto Shortcuts Preferences from identifier (%@): %@", buf, 0x20u);
          }
        }

        goto LABEL_12;
      }

      v56 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = [v4 recordID];
        *buf = 136315394;
        v67 = "[VCCKShortcutSyncService handleUnknownItemErrorForRecord:]";
        v68 = 2114;
        v69 = v57;
        v58 = "%s Failed to get preferences identifier from Auto Shortcuts Preferences CKRecordID %{public}@";
        goto LABEL_37;
      }
    }

    else
    {
      v50 = [v4 recordType];
      v51 = [MEMORY[0x277D7C210] recordType];
      if ([v50 isEqualToString:v51])
      {
        v52 = [(VCCKShortcutSyncService *)self coherenceSyncEnabled];

        if (v52)
        {
          v53 = [(VCCKShortcutSyncService *)self database];
          v54 = [_TtC14VoiceShortcuts26VCCKLibrarySyncCoordinator handleUnknownItemErrorForRecord:v4 database:v53 error:0];

          if (v54)
          {
            v13 = [v4 recordID];
            v61 = v13;
            v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
            [(VCCKShortcutSyncService *)self addRecordIDsToSave:v16 recordIDsToDelete:0];
            goto LABEL_11;
          }

          v56 = getWFCloudKitSyncLogObject();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v67 = "[VCCKShortcutSyncService handleUnknownItemErrorForRecord:]";
            v68 = 2114;
            v69 = v4;
            _os_log_impl(&dword_23103C000, v56, OS_LOG_TYPE_ERROR, "%s Failed to handle unknown item error for library record: %{public}@", buf, 0x16u);
          }

          goto LABEL_38;
        }
      }

      else
      {
      }

      v56 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = [v4 recordType];
        *buf = 136315394;
        v67 = "[VCCKShortcutSyncService handleUnknownItemErrorForRecord:]";
        v68 = 2114;
        v69 = v57;
        v58 = "%s Received unknown item error for CKRecord of unexpected type: %{public}@";
LABEL_37:
        _os_log_impl(&dword_23103C000, v56, OS_LOG_TYPE_ERROR, v58, buf, 0x16u);
      }
    }

LABEL_38:

    goto LABEL_13;
  }

LABEL_6:
  v12 = [v4 recordID];
  v13 = [(VCCKShortcutSyncService *)self collectionIdentifierForRecordID:v12];

  if (v13)
  {
    v14 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v67 = "[VCCKShortcutSyncService handleUnknownItemErrorForRecord:]";
      v68 = 2114;
      v69 = v13;
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_DEFAULT, "%s Handling CKErrorUnknownItem for collection with identifier %{public}@", buf, 0x16u);
    }

    v15 = [(VCCKShortcutSyncService *)self database];
    [v15 setCloudKitMetadata:0 forOrderingRecordWithIdentifier:v13 error:0];

    v16 = [v4 recordID];
    v65 = v16;
    v17 = MEMORY[0x277CBEA60];
    v18 = &v65;
    goto LABEL_10;
  }

LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleServerRecordChangedError:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBBFE0]];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
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

  v8 = v7;

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v4 userInfo];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277CBBFD8]];

  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [v8 recordType];
  v18 = [MEMORY[0x277D7C1F0] recordType];
  v19 = [v17 isEqualToString:v18];

  if (v19)
  {
    [(VCCKShortcutSyncService *)self handleSendWorkflowOrderingConflictWithClientRecord:v8 serverRecord:v12 ancestorRecord:v16];
  }

  else
  {
    v20 = [v8 recordType];
    v21 = [MEMORY[0x277D7C228] recordType];
    v22 = [v20 isEqualToString:v21];

    if (v22)
    {
      [(VCCKShortcutSyncService *)self handleSendSyncFlagsConflictWithClientRecord:v8 serverRecord:v12 ancestorRecord:v16];
    }

    else
    {
      v23 = [v8 recordType];
      v24 = [(objc_class *)[(VCCKShortcutSyncService *)self cloudKitWorkflowClass] recordType];
      v25 = [v23 isEqualToString:v24];

      if (v25)
      {
        [(VCCKShortcutSyncService *)self handleSendWorkflowConflictWithClientRecord:v8 serverRecord:v12 ancestorRecord:v16];
      }

      else
      {
        v26 = [v8 recordType];
        v27 = [MEMORY[0x277D7C1F8] recordType];
        v28 = [v26 isEqualToString:v27];

        if (v28)
        {
          [(VCCKShortcutSyncService *)self handleSendFolderConflictWithClientRecord:v8 serverRecord:v12 ancestorRecord:v16];
        }

        else
        {
          v29 = [v8 recordType];
          v30 = [MEMORY[0x277D7C1E8] recordType];
          v31 = [v29 isEqualToString:v30];

          if (v31)
          {
            [(VCCKShortcutSyncService *)self handleSendAutoShortcutsPreferencesConflictWithClientRecord:v8 serverRecord:v12 ancestorRecord:v16];
          }

          else
          {
            v32 = [v8 recordType];
            v33 = [MEMORY[0x277D7C210] recordType];
            if ([v32 isEqualToString:v33])
            {
              v34 = [(VCCKShortcutSyncService *)self coherenceSyncEnabled];

              if (v34)
              {
                [(VCCKShortcutSyncService *)self handleSendLibraryConflictWithClientRecord:v8 serverRecord:v12 ancestorRecord:v16];
                goto LABEL_33;
              }
            }

            else
            {
            }

            v35 = getWFCloudKitSyncLogObject();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v36 = [v8 recordType];
              v38 = 136315394;
              v39 = "[VCCKShortcutSyncService handleServerRecordChangedError:]";
              v40 = 2114;
              v41 = v36;
              _os_log_impl(&dword_23103C000, v35, OS_LOG_TYPE_ERROR, "%s Received record changed error for CKRecord of unexpected type: %{public}@", &v38, 0x16u);
            }
          }
        }
      }
    }
  }

LABEL_33:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)handleSendFolderConflictWithClientRecord:(id)a3 serverRecord:(id)a4 ancestorRecord:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[VCCKShortcutSyncService handleSendFolderConflictWithClientRecord:serverRecord:ancestorRecord:]";
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s Handling CKErrorServerRecordChanged error for sent folder", buf, 0xCu);
  }

  v8 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v8 withRecord:v6 setNilValues:0];
  v9 = MEMORY[0x277D7C1F8];
  v10 = [v6 recordID];
  v11 = [v9 collectionIdentifierForRecordID:v10];

  if (v11)
  {
    v12 = [(VCCKShortcutSyncService *)self database];
    v13 = [v8 recordSystemFieldsData];
    v20 = 0;
    v14 = [v12 setCloudKitMetadata:v13 forFolderRecordWithIdentifier:v11 error:&v20];
    v15 = v20;

    if (v14)
    {
      v16 = [v6 recordID];
      v21 = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
      [(VCCKShortcutSyncService *)self addRecordIDsToSave:v17 recordIDsToDelete:0];
    }

    else
    {
      v16 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v23 = "[VCCKShortcutSyncService handleSendFolderConflictWithClientRecord:serverRecord:ancestorRecord:]";
        v24 = 2114;
        v25 = v11;
        v26 = 2114;
        v27 = v15;
        _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_ERROR, "%s Failed to handle fetched folder record %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v15 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [v6 recordID];
      *buf = 136315394;
      v23 = "[VCCKShortcutSyncService handleSendFolderConflictWithClientRecord:serverRecord:ancestorRecord:]";
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_ERROR, "%s Invalid folder record ID: %{public}@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleSendWorkflowConflictWithClientRecord:(id)a3 serverRecord:(id)a4 ancestorRecord:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 recordChangeTag];
    v13 = [v9 recordChangeTag];
    v14 = [v10 recordChangeTag];
    *buf = 136315906;
    v32 = "[VCCKShortcutSyncService handleSendWorkflowConflictWithClientRecord:serverRecord:ancestorRecord:]";
    v33 = 2114;
    v34 = v12;
    v35 = 2114;
    v36 = v13;
    v37 = 2114;
    v38 = v14;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Handling CKErrorServerRecordChanged error for sent workflow, clientRecord.recordChangeTag = %{public}@, serverRecord.recordChangeTag = %{public}@, ancestorRecord.recordChangeTag = %{public}@", buf, 0x2Au);
  }

  v15 = [v8 recordChangeTag];

  if (v15)
  {
    v16 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[VCCKShortcutSyncService handleSendWorkflowConflictWithClientRecord:serverRecord:ancestorRecord:]";
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_DEFAULT, "%s Server workflow record changed since last sync, trying to fetch changes in Shortcuts zone to handle", buf, 0xCu);
    }

    [(VCCKShortcutSyncService *)self fetchChangesInShortcutsZone];
  }

  else
  {
    [(VCCKShortcutSyncService *)self cloudKitWorkflowClass];
    v17 = objc_opt_new();
    [MEMORY[0x277D7C200] hydrateItem:v17 withRecord:v9 setNilValues:0];
    v18 = [(VCCKShortcutSyncService *)self cloudKitWorkflowClass];
    v19 = [v9 recordID];
    v20 = [(objc_class *)v18 workflowIdentifierForRecordID:v19];

    v21 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[VCCKShortcutSyncService handleSendWorkflowConflictWithClientRecord:serverRecord:ancestorRecord:]";
      _os_log_impl(&dword_23103C000, v21, OS_LOG_TYPE_DEFAULT, "%s Persisting server CKRecord metadata and retrying upload of this change", buf, 0xCu);
    }

    v22 = [(VCCKShortcutSyncService *)self database];
    v23 = [v17 recordSystemFieldsData];
    v29 = 0;
    v24 = [v22 setCloudKitMetadata:v23 forWorkflowRecordWithIdentifier:v20 error:&v29];
    v25 = v29;

    if (v24)
    {
      v26 = [v9 recordID];
      v30 = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      [(VCCKShortcutSyncService *)self addRecordIDsToSave:v27 recordIDsToDelete:0];
    }

    else
    {
      v26 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v32 = "[VCCKShortcutSyncService handleSendWorkflowConflictWithClientRecord:serverRecord:ancestorRecord:]";
        v33 = 2114;
        v34 = v20;
        v35 = 2114;
        v36 = v25;
        _os_log_impl(&dword_23103C000, v26, OS_LOG_TYPE_ERROR, "%s Failed to handle update workflow record cloudkit metadata %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleSendLibraryConflictWithClientRecord:(id)a3 serverRecord:(id)a4 ancestorRecord:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 recordChangeTag];
    v13 = [v9 recordChangeTag];
    v14 = [v10 recordChangeTag];
    *buf = 136315906;
    v21 = "[VCCKShortcutSyncService handleSendLibraryConflictWithClientRecord:serverRecord:ancestorRecord:]";
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = v13;
    v26 = 2114;
    v27 = v14;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Handling CKErrorServerRecordChanged error for sent library, clientRecord.recordChangeTag = %{public}@, serverRecord.recordChangeTag = %{public}@, ancestorRecord.recordChangeTag = %{public}@", buf, 0x2Au);
  }

  v15 = [(VCCKShortcutSyncService *)self syncEngine];
  v16 = [v15 database];
  v17 = [v9 recordID];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__VCCKShortcutSyncService_handleSendLibraryConflictWithClientRecord_serverRecord_ancestorRecord___block_invoke;
  v19[3] = &unk_2788FE738;
  v19[4] = self;
  [v16 fetchRecordWithID:v17 completionHandler:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __97__VCCKShortcutSyncService_handleSendLibraryConflictWithClientRecord_serverRecord_ancestorRecord___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) database];
    v5 = [*(a1 + 32) logger];
    v15 = 0;
    v6 = [_TtC14VoiceShortcuts26VCCKLibrarySyncCoordinator handleServerRecordChangedErrorForRecord:v3 database:v4 logger:v5 error:&v15];
    v7 = v15;

    v8 = getWFCloudKitSyncLogObject();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v17 = "[VCCKShortcutSyncService handleSendLibraryConflictWithClientRecord:serverRecord:ancestorRecord:]_block_invoke";
        v10 = "%s Successfully handled server record change for library";
        v11 = v9;
        v12 = OS_LOG_TYPE_DEBUG;
        v13 = 12;
LABEL_9:
        _os_log_impl(&dword_23103C000, v11, v12, v10, buf, v13);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[VCCKShortcutSyncService handleSendLibraryConflictWithClientRecord:serverRecord:ancestorRecord:]_block_invoke";
      v18 = 2114;
      v19 = v7;
      v10 = "%s Failed to handle CKErrorServerRecordChanged error for library: %{public}@";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v7 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v17 = "[VCCKShortcutSyncService handleSendLibraryConflictWithClientRecord:serverRecord:ancestorRecord:]_block_invoke";
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Failed to fetch server record for library", buf, 0xCu);
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleSendAutoShortcutsPreferencesConflictWithClientRecord:(id)a3 serverRecord:(id)a4 ancestorRecord:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 recordChangeTag];
    v13 = [v9 recordChangeTag];
    v14 = [v10 recordChangeTag];
    *buf = 136315906;
    v23 = "[VCCKShortcutSyncService handleSendAutoShortcutsPreferencesConflictWithClientRecord:serverRecord:ancestorRecord:]";
    v24 = 2114;
    v25 = v12;
    v26 = 2114;
    v27 = v13;
    v28 = 2114;
    v29 = v14;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Handling CKErrorServerRecordChanged error for sent auto shortcuts preferences, clientRecord.recordChangeTag = %{public}@, serverRecord.recordChangeTag = %{public}@, ancestorRecord.recordChangeTag = %{public}@", buf, 0x2Au);
  }

  v15 = [(VCCKShortcutSyncService *)self syncEngine];
  v16 = [v15 database];
  v17 = [v9 recordID];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __114__VCCKShortcutSyncService_handleSendAutoShortcutsPreferencesConflictWithClientRecord_serverRecord_ancestorRecord___block_invoke;
  v20[3] = &unk_2788FE710;
  v20[4] = self;
  v21 = v9;
  v18 = v9;
  [v16 fetchRecordWithID:v17 completionHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __114__VCCKShortcutSyncService_handleSendAutoShortcutsPreferencesConflictWithClientRecord_serverRecord_ancestorRecord___block_invoke(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D7C1E8];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [MEMORY[0x277D7C200] hydrateItem:v5 withRecord:v4 setNilValues:0];

  v6 = [v5 appDescriptor];

  if (v6)
  {
    v7 = [*(a1 + 32) autoShortcutsPreferencesWithCloudKitAutoShortcutsPreferences:v5];
    v8 = [*(a1 + 32) database];
    v17 = 0;
    [v8 mergeAutoShortcutsPreferencesWithNewPreferences:v7 error:&v17];
    v9 = v17;

    if (v9)
    {
      v10 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "[VCCKShortcutSyncService handleSendAutoShortcutsPreferencesConflictWithClientRecord:serverRecord:ancestorRecord:]_block_invoke";
        v21 = 2114;
        v22 = v9;
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Failed to merge auto shortcuts preferences with error: %{public}@", buf, 0x16u);
      }
    }

    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) recordID];
    v18 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    [v11 addRecordIDsToSave:v13 recordIDsToDelete:0];
  }

  else
  {
    v14 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v20 = "[VCCKShortcutSyncService handleSendAutoShortcutsPreferencesConflictWithClientRecord:serverRecord:ancestorRecord:]_block_invoke";
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_FAULT, "%s Server record for auto shortcuts preferences has a nil app descriptor", buf, 0xCu);
    }

    v15 = *(a1 + 32);
    v7 = [*(a1 + 40) recordID];
    v23[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [v15 addRecordIDsToSave:0 recordIDsToDelete:v9];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleSendSyncFlagsConflictWithClientRecord:(id)a3 serverRecord:(id)a4 ancestorRecord:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[VCCKShortcutSyncService handleSendSyncFlagsConflictWithClientRecord:serverRecord:ancestorRecord:]";
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s Handling CKErrorServerRecordChanged error for sent sync flags", buf, 0xCu);
  }

  v8 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v8 withRecord:v6 setNilValues:0];

  v9 = [(VCCKShortcutSyncService *)self database];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__VCCKShortcutSyncService_handleSendSyncFlagsConflictWithClientRecord_serverRecord_ancestorRecord___block_invoke;
  v12[3] = &unk_2788FE6E8;
  v13 = v8;
  v10 = v8;
  [v9 updateSyncTokenWithBlock:v12];

  [(VCCKShortcutSyncService *)self sendSyncFlagsIfNeeded];
  v11 = *MEMORY[0x277D85DE8];
}

void __99__VCCKShortcutSyncService_handleSendSyncFlagsConflictWithClientRecord_serverRecord_ancestorRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recordSystemFieldsData];
  [v3 setSyncFlagsCloudKitRecordMetadata:v4];
}

- (void)handleSendWorkflowOrderingConflictWithClientRecord:(id)a3 serverRecord:(id)a4 ancestorRecord:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[VCCKShortcutSyncService handleSendWorkflowOrderingConflictWithClientRecord:serverRecord:ancestorRecord:]";
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s Handling CKErrorServerRecordChanged error for sent workflow ordering", buf, 0xCu);
  }

  if ([(VCCKShortcutSyncService *)self mergeLocalOrderingChangesWithRemoteOrderingChangesFromOrderingRecord:v6])
  {
    v8 = [v6 recordID];
    v11 = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [(VCCKShortcutSyncService *)self addRecordIDsToSave:v9 recordIDsToDelete:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchedDeletionOfAutoShortcutsPreferencesWithRecordID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[VCCKShortcutSyncService handleFetchedDeletionOfAutoShortcutsPreferencesWithRecordID:]";
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling fetched deleted record with CKRecordID: %{public}@", buf, 0x16u);
  }

  v6 = [MEMORY[0x277D7C1E8] identifierForRecordID:v4];
  v7 = [(VCCKShortcutSyncService *)self database];
  v9 = 0;
  [v7 deleteAutoShortcutsPreferencesForIdentifier:v6 error:&v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchedDeletionOfRecordWithID:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v33 = "[VCCKShortcutSyncService handleFetchedDeletionOfRecordWithID:]";
    v34 = 2114;
    v35 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling fetched deleted record with CKRecordID: %{public}@", buf, 0x16u);
  }

  v6 = [MEMORY[0x277D7C1F8] isFolderRecordID:v4];
  v7 = [(VCCKShortcutSyncService *)self coherenceSyncEnabled];
  if (v6)
  {
    if (v7)
    {
      v8 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v33 = "[VCCKShortcutSyncService handleFetchedDeletionOfRecordWithID:]";
        v9 = "%s Ignoring deleted folder record, since coherence sync is enabled";
LABEL_22:
        v24 = v8;
        v25 = OS_LOG_TYPE_INFO;
        v26 = 12;
LABEL_23:
        _os_log_impl(&dword_23103C000, v24, v25, v9, buf, v26);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    v18 = [MEMORY[0x277D7C1F8] collectionIdentifierForRecordID:v4];
    if (!v18)
    {
      v8 = getWFCloudKitSyncLogObject();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 136315394;
      v33 = "[VCCKShortcutSyncService handleFetchedDeletionOfRecordWithID:]";
      v34 = 2114;
      v35 = v4;
      v9 = "%s Malformed folder identifier: %{public}@";
      v24 = v8;
      v25 = OS_LOG_TYPE_ERROR;
      v26 = 22;
      goto LABEL_23;
    }

    v8 = v18;
    v19 = [(VCCKShortcutSyncService *)self database];
    v11 = [v19 collectionWithIdentifier:v8];

    if (v11)
    {
      v20 = [(VCCKShortcutSyncService *)self database];
      v31 = 0;
      v21 = [v20 deleteReference:v11 tombstone:0 error:&v31];
      v17 = v31;

      if ((v21 & 1) == 0)
      {
        v22 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      goto LABEL_33;
    }

    v17 = getWFCloudKitSyncLogObject();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 136315394;
    v33 = "[VCCKShortcutSyncService handleFetchedDeletionOfRecordWithID:]";
    v34 = 2114;
    v35 = v4;
    v23 = "%s No local descriptor found for fetched folder deletion with CKRecordID %{public}@";
    goto LABEL_32;
  }

  if (!v7 || ([MEMORY[0x277D7C240] isShortcutV2RecordID:v4] & 1) != 0)
  {
    v8 = [(objc_class *)[(VCCKShortcutSyncService *)self cloudKitWorkflowClass] workflowIdentifierForRecordID:v4];
    v10 = [(VCCKShortcutSyncService *)self database];
    v11 = [v10 referenceForWorkflowID:v8 includingTombstones:1];

    if (v11)
    {
      v12 = [(VCCKShortcutSyncService *)self coherenceSyncEnabled];
      v13 = [(VCCKShortcutSyncService *)self database];
      v14 = v13;
      if (v12)
      {
        v15 = [v11 identifier];
        v30 = 0;
        v16 = [v14 deleteWorkflowRecordWithIdentifier:v15 error:&v30];
        v17 = v30;

        if (v16)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v29 = 0;
        v27 = [v13 deleteReference:v11 tombstone:0 error:&v29];
        v17 = v29;

        if (v27)
        {
          goto LABEL_33;
        }
      }

      v22 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        *buf = 136315650;
        v33 = "[VCCKShortcutSyncService handleFetchedDeletionOfRecordWithID:]";
        v34 = 2114;
        v35 = v17;
        v36 = 2112;
        v37 = v11;
        _os_log_impl(&dword_23103C000, v22, OS_LOG_TYPE_ERROR, "%s Failed to delete descriptor for fetched deletion: %{public}@, localDescriptor = %@", buf, 0x20u);
      }

LABEL_27:

      goto LABEL_33;
    }

    v17 = getWFCloudKitSyncLogObject();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
LABEL_33:

      goto LABEL_34;
    }

    *buf = 136315394;
    v33 = "[VCCKShortcutSyncService handleFetchedDeletionOfRecordWithID:]";
    v34 = 2114;
    v35 = v4;
    v23 = "%s No local descriptor found for fetched workflow or folder deletion with CKRecordID %{public}@";
LABEL_32:
    _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_DEFAULT, v23, buf, 0x16u);
    goto LABEL_33;
  }

  v8 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v33 = "[VCCKShortcutSyncService handleFetchedDeletionOfRecordWithID:]";
    v9 = "%s Ignoring deleted shortcut v1 record, since coherence sync is enabled";
    goto LABEL_22;
  }

LABEL_34:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchedAutoShortcutsPreferencesRecord:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "[VCCKShortcutSyncService handleFetchedAutoShortcutsPreferencesRecord:]";
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Handling fetched auto shortcuts preferences record: %@", buf, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x277D7C1E8]);
  [MEMORY[0x277D7C200] hydrateItem:v6 withRecord:v4 setNilValues:0];
  v7 = MEMORY[0x277D7C1E8];
  v8 = [v4 recordID];
  v9 = [v7 identifierForRecordID:v8];

  v10 = [(VCCKShortcutSyncService *)self database];
  v27 = 0;
  v11 = [v10 autoShortcutsPreferencesForIdentifier:v9 error:&v27];
  v12 = v27;

  v13 = [v11 cloudKitMetadata];
  v14 = v4;
  if (v13)
  {
    v15 = [MEMORY[0x277D7C200] recordFromSystemFieldsData:v13 error:0];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v15 modificationDate];
  v17 = [v14 modificationDate];
  v18 = v17;
  if (v16 && v17 && [v16 compare:v17] != -1)
  {
    v19 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 136316162;
      v29 = "VCCKCheckRemoteModificationDateNewerThanLocal";
      v30 = 2114;
      v31 = v18;
      v32 = 2114;
      v33 = v16;
      v34 = 2112;
      v35 = v14;
      v36 = 2112;
      v37 = v15;
      _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_FAULT, "%s Remote record modification date %{public}@ is not greater than local record modification date %{public}@, remote record = %@, local record = %@", buf, 0x34u);
    }

    v20 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v29 = "[VCCKShortcutSyncService handleFetchedAutoShortcutsPreferencesRecord:]";
      _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_INFO, "%s Remote modification date is older than the one saved locally, skipping updating local auto shortcuts preferences", buf, 0xCu);
    }

    v21 = v12;
  }

  else
  {

    v22 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v29 = "[VCCKShortcutSyncService handleFetchedAutoShortcutsPreferencesRecord:]";
      _os_log_impl(&dword_23103C000, v22, OS_LOG_TYPE_INFO, "%s Remote modification date is newer than the one saved locally, updating local auto shortcuts preferences", buf, 0xCu);
    }

    v20 = [(VCCKShortcutSyncService *)self autoShortcutsPreferencesWithCloudKitAutoShortcutsPreferences:v6];
    v23 = [(VCCKShortcutSyncService *)self database];
    v26 = v12;
    [v23 updateAutoShortcutsPreferencesWithNewPreferences:v20 error:&v26];
    v21 = v26;

    if (v21)
    {
      v24 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "[VCCKShortcutSyncService handleFetchedAutoShortcutsPreferencesRecord:]";
        v30 = 2114;
        v31 = v21;
        _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_ERROR, "%s Failed to save auto shortcuts preferences with error: %{public}@", buf, 0x16u);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchedSyncFlagsRecord:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[VCCKShortcutSyncService handleFetchedSyncFlagsRecord:]";
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Handling fetched sync flags CKRecord: %{public}@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v6 withRecord:v4 setNilValues:0];
  v7 = [(VCCKShortcutSyncService *)self database];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__VCCKShortcutSyncService_handleFetchedSyncFlagsRecord___block_invoke;
  v10[3] = &unk_2788FE6E8;
  v8 = v6;
  v11 = v8;
  [v7 updateSyncTokenWithBlock:v10];

  if ([v8 migratedVoiceShortcuts])
  {
    [MEMORY[0x277D7C230] setVoiceShortcutMigrationDidSync:1];
  }

  if ([v8 defaultShortcutsVersion])
  {
    [MEMORY[0x277D7C230] setDefaultShortcutsVersion:{objc_msgSend(v8, "defaultShortcutsVersion")}];
  }

  [MEMORY[0x277D7C230] setLastSyncedFlagsHash:{objc_msgSend(MEMORY[0x277D7C230], "syncedFlagsHash")}];

  v9 = *MEMORY[0x277D85DE8];
}

void __56__VCCKShortcutSyncService_handleFetchedSyncFlagsRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recordSystemFieldsData];
  [v3 setSyncFlagsCloudKitRecordMetadata:v4];
}

- (void)handleFetchedFolderRecord:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 recordID];
    *buf = 136315650;
    v21 = "[VCCKShortcutSyncService handleFetchedFolderRecord:]";
    v22 = 2114;
    v23 = v6;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling fetched folder CKRecord with CKRecordID %{public}@, CKRecord = %@", buf, 0x20u);
  }

  v7 = MEMORY[0x277D7C1F8];
  v8 = [v4 recordID];
  v9 = [v7 collectionIdentifierForRecordID:v8];

  if (v9)
  {
    v10 = objc_opt_new();
    [MEMORY[0x277D7C200] hydrateItem:v10 withRecord:v4 setNilValues:0];
    v11 = [(VCCKShortcutSyncService *)self database];
    v12 = [v10 name];
    v13 = [v10 icon];
    v14 = [v10 encryptedSchemaVersion];
    v15 = [v10 recordSystemFieldsData];
    v19 = 0;
    LOBYTE(v14) = [v11 handleFetchedFolderRecordWithIdentifier:v9 name:v12 icon:v13 encryptedSchemaVersion:v14 cloudKitMetadata:v15 error:&v19];
    v16 = v19;

    if ((v14 & 1) == 0)
    {
      v17 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v21 = "[VCCKShortcutSyncService handleFetchedFolderRecord:]";
        v22 = 2114;
        v23 = v9;
        v24 = 2114;
        v25 = v16;
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_ERROR, "%s Failed to handle fetched folder record %{public}@: %{public}@", buf, 0x20u);
      }
    }

    goto LABEL_10;
  }

  v10 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v16 = [v4 recordID];
    *buf = 136315394;
    v21 = "[VCCKShortcutSyncService handleFetchedFolderRecord:]";
    v22 = 2114;
    v23 = v16;
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Failed to retrieve collection identifier from folder CKRecord, CKRecordID = %{public}@", buf, 0x16u);
LABEL_10:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchedWorkflowRecord:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 recordID];
    *buf = 136315650;
    v30 = "[VCCKShortcutSyncService handleFetchedWorkflowRecord:]";
    v31 = 2114;
    v32 = v6;
    v33 = 2112;
    v34 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling fetched workflow CKRecord with CKRecordID %{public}@, CKRecord = %@", buf, 0x20u);
  }

  [(VCCKShortcutSyncService *)self cloudKitWorkflowClass];
  v7 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v7 withRecord:v4 setNilValues:0];
  v28 = 0;
  v8 = [v7 recordRepresentationWithError:&v28];
  v9 = v28;
  if (v8)
  {
    v10 = [(VCCKShortcutSyncService *)self cloudKitWorkflowClass];
    v11 = [v4 recordID];
    v12 = [(objc_class *)v10 workflowIdentifierForRecordID:v11];

    v13 = [(VCCKShortcutSyncService *)self database];
    v14 = [v4 recordChangeTag];
    v15 = [v4 modificationDate];
    v27 = v9;
    v16 = [v13 handleFetchedWorkflowRecord:v8 identifier:v12 recordChangeTag:v14 modificationDate:v15 error:&v27];
    v26 = v27;

    if (v16)
    {
      if ([v16 resultType] == 3)
      {
        logger = self->_logger;
        v18 = MEMORY[0x277CCACA8];
        v19 = [v16 reason];
        v20 = [v18 stringWithFormat:@"conflicted workflow: %@ (reason: %@)", v12, v19];
        [(WFCloudKitSyncEventLogger *)logger logEvent:v20];

LABEL_12:
        v21 = v26;
        goto LABEL_13;
      }

      v21 = v26;
      if ([v16 resultType])
      {
        goto LABEL_14;
      }

      v23 = self->_logger;
      v24 = MEMORY[0x277CCACA8];
      v19 = [v16 reason];
      v25 = [v24 stringWithFormat:@"ignored workflow: %@ (reason: %@)", v12, v19];
      [(WFCloudKitSyncEventLogger *)v23 logEvent:v25];
    }

    else
    {
      v19 = getWFCloudKitSyncLogObject();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 136315394;
      v30 = "[VCCKShortcutSyncService handleFetchedWorkflowRecord:]";
      v31 = 2114;
      v21 = v26;
      v32 = v26;
      _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_ERROR, "%s Failed to handle fetched workflow record: %{public}@", buf, 0x16u);
    }

LABEL_13:

LABEL_14:
    goto LABEL_15;
  }

  v12 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v30 = "[VCCKShortcutSyncService handleFetchedWorkflowRecord:]";
    v31 = 2114;
    v32 = v9;
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_ERROR, "%s Failed to create WFWorkflowRecord from WFCloudKitWorkflow: %{public}@", buf, 0x16u);
  }

  v21 = v9;
LABEL_15:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleFetchedLegacyOrderingRecord:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v14 = "[VCCKShortcutSyncService handleFetchedLegacyOrderingRecord:]";
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling fetched legacy ordering CKRecord: %{public}@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v6 withRecord:v4 setNilValues:0];
  v7 = [v6 collectionIdentifier];

  if (v7)
  {
    v8 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[VCCKShortcutSyncService handleFetchedLegacyOrderingRecord:]";
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Received legacy per-collection ordering CKRecord, ignoring", buf, 0xCu);
    }
  }

  else
  {
    v9 = [(VCCKShortcutSyncService *)self database];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__VCCKShortcutSyncService_handleFetchedLegacyOrderingRecord___block_invoke;
    v11[3] = &unk_2788FE6E8;
    v12 = v6;
    [v9 updateSyncTokenWithBlock:v11];

    v8 = v12;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __61__VCCKShortcutSyncService_handleFetchedLegacyOrderingRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 orderedWorkflowIDs];
  [v3 setLastOrdering:v4];
}

- (void)handleFetchedCollectionOrderingRecord:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[VCCKShortcutSyncService handleFetchedCollectionOrderingRecord:]";
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling fetched collection ordering CKRecord: %{public}@", &v7, 0x16u);
  }

  [(VCCKShortcutSyncService *)self mergeLocalOrderingChangesWithRemoteOrderingChangesFromOrderingRecord:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)mergeLocalOrderingChangesWithRemoteOrderingChangesFromOrderingRecord:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 recordID];
  v6 = [(VCCKShortcutSyncService *)self collectionIdentifierForRecordID:v5];

  if (v6)
  {
    v20 = v6;
    v7 = objc_opt_new();
    [MEMORY[0x277D7C200] hydrateItem:v7 withRecord:v4 setNilValues:0];
    v8 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[VCCKShortcutSyncService mergeLocalOrderingChangesWithRemoteOrderingChangesFromOrderingRecord:]";
      v24 = 2114;
      v25 = v7;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_INFO, "%s Merging local ordering changes with remote ordering changes from %{public}@", buf, 0x16u);
    }

    v9 = [(VCCKShortcutSyncService *)self database];
    v10 = [v7 orderedWorkflowIDs];
    v11 = [v10 array];
    v12 = [v7 orderedFolderIDs];
    v13 = [v12 array];
    v14 = [v7 recordSystemFieldsData];
    v21 = 0;
    v15 = [v9 handleFetchedOrderingRecordWithIdentifier:v20 shortcuts:v11 folders:v13 cloudKitMetadata:v14 error:&v21];
    v16 = v21;

    if ((v15 & 1) == 0)
    {
      v17 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v23 = "[VCCKShortcutSyncService mergeLocalOrderingChangesWithRemoteOrderingChangesFromOrderingRecord:]";
        v24 = 2114;
        v25 = v4;
        v26 = 2114;
        v27 = v16;
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_ERROR, "%s Failed to handle fetched ordering record collectionIdentifier %{public}@: %{public}@", buf, 0x20u);
      }
    }

    v6 = v20;
  }

  else
  {
    v7 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[VCCKShortcutSyncService mergeLocalOrderingChangesWithRemoteOrderingChangesFromOrderingRecord:]";
      v24 = 2114;
      v25 = v4;
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Malformed ordering record, missing collectionIdentifier: %{public}@", buf, 0x16u);
    }

    v15 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)handleDeletedRecordWithID:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[VCCKShortcutSyncService handleDeletedRecordWithID:]";
    v22 = 2114;
    v23 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling deleted record CKRecord: %{public}@", buf, 0x16u);
  }

  if (![MEMORY[0x277D7C1F8] isFolderRecordID:v4])
  {
    v9 = [(objc_class *)[(VCCKShortcutSyncService *)self cloudKitWorkflowClass] workflowIdentifierForRecordID:v4];
    v10 = [(VCCKShortcutSyncService *)self database];
    v11 = [v10 referenceForWorkflowID:v9 includingTombstones:1];

    if (v11)
    {
      if (![v11 isDeleted])
      {
        v16 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = [v11 name];
          *buf = 136315650;
          v21 = "[VCCKShortcutSyncService handleDeletedRecordWithID:]";
          v22 = 2112;
          v23 = v17;
          v24 = 2112;
          v25 = v11;
          _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_ERROR, "%s Sync engine has finished deleting workflow with name %@, but it is no longer a tombstone, so we're not deleting it, deletedWorkflowReference = %@", buf, 0x20u);
        }

        goto LABEL_22;
      }

      v9 = v11;
LABEL_10:
      v12 = [(VCCKShortcutSyncService *)self database];
      v19 = 0;
      v13 = [v12 deleteReference:v9 tombstone:0 error:&v19];
      v14 = v19;

      if ((v13 & 1) == 0)
      {
        v15 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v21 = "[VCCKShortcutSyncService handleDeletedRecordWithID:]";
          v22 = 2112;
          v23 = v9;
          v24 = 2114;
          v25 = v14;
          _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_ERROR, "%s Failed to delete tombstone for descriptor = %@, error = %{public}@", buf, 0x20u);
        }
      }

      goto LABEL_18;
    }

LABEL_15:

    goto LABEL_16;
  }

  v6 = [MEMORY[0x277D7C1F8] collectionIdentifierForRecordID:v4];
  if (!v6)
  {
    v9 = 0;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = [(VCCKShortcutSyncService *)self database];
  v9 = [v8 collectionWithIdentifier:v7];

  if (v9)
  {
    goto LABEL_10;
  }

LABEL_16:
  v9 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v14 = [v4 recordName];
    *buf = 136315394;
    v21 = "[VCCKShortcutSyncService handleDeletedRecordWithID:]";
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, "%s Unable to find descriptor to delete from record ID %{public}@", buf, 0x16u);
LABEL_18:
  }

LABEL_22:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)handleSavedLibraryRecord:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 recordID];
    v7 = [v6 recordName];
    v12 = 136315394;
    v13 = "[VCCKShortcutSyncService handleSavedLibraryRecord:]";
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Handling saved library record: %{public}@", &v12, 0x16u);
  }

  v8 = [(VCCKShortcutSyncService *)self database];
  v9 = [_TtC14VoiceShortcuts26VCCKLibrarySyncCoordinator handleSavedLibraryRecord:v4 database:v8 error:0];

  if (!v9)
  {
    v10 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "[VCCKShortcutSyncService handleSavedLibraryRecord:]";
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Failed to save library record: %{public}@", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleSavedAutoShortcutsPreferencesRecord:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[VCCKShortcutSyncService handleSavedAutoShortcutsPreferencesRecord:]";
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Handling saved auto shortcuts preferences record: %@", buf, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x277D7C1E8]);
  [MEMORY[0x277D7C200] hydrateItem:v6 withRecord:v4 setNilValues:0];
  v7 = MEMORY[0x277D7C1E8];
  v8 = [v4 recordID];
  v9 = [v7 identifierForRecordID:v8];

  v10 = [(VCCKShortcutSyncService *)self database];
  v19 = 0;
  v11 = [v10 autoShortcutsPreferencesForIdentifier:v9 error:&v19];
  v12 = v19;

  v13 = [v6 recordSystemFieldsData];
  [v11 setCloudKitMetadata:v13];

  [v11 setLastSyncedHash:{objc_msgSend(v11, "computedSyncHash")}];
  v14 = [(VCCKShortcutSyncService *)self database];
  v18 = v12;
  [v14 updateAutoShortcutsPreferencesWithNewPreferences:v11 error:&v18];
  v15 = v18;

  if (v15)
  {
    v16 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[VCCKShortcutSyncService handleSavedAutoShortcutsPreferencesRecord:]";
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_ERROR, "%s Failed to save auto shortcuts preferences record with error: %{public}@", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)handleSavedSyncFlagsRecord:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[VCCKShortcutSyncService handleSavedSyncFlagsRecord:]";
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling saved sync flags CKRecord: %{public}@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v6 withRecord:v4 setNilValues:0];
  v7 = [(VCCKShortcutSyncService *)self database];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__VCCKShortcutSyncService_handleSavedSyncFlagsRecord___block_invoke;
  v10[3] = &unk_2788FE6E8;
  v8 = v6;
  v11 = v8;
  [v7 updateSyncTokenWithBlock:v10];

  if ([v8 migratedVoiceShortcuts])
  {
    [MEMORY[0x277D7C230] setVoiceShortcutMigrationDidSync:1];
  }

  if ([v8 defaultShortcutsVersion])
  {
    [MEMORY[0x277D7C230] setDefaultShortcutsVersion:{objc_msgSend(v8, "defaultShortcutsVersion")}];
  }

  [MEMORY[0x277D7C230] setLastSyncedFlagsHash:{objc_msgSend(MEMORY[0x277D7C230], "syncedFlagsHash")}];

  v9 = *MEMORY[0x277D85DE8];
}

void __54__VCCKShortcutSyncService_handleSavedSyncFlagsRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recordSystemFieldsData];
  [v3 setSyncFlagsCloudKitRecordMetadata:v4];
}

- (void)handleSavedFolderRecord:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 recordID];
    *buf = 136315650;
    v23 = "[VCCKShortcutSyncService handleSavedFolderRecord:]";
    v24 = 2114;
    v25 = v6;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling saved folder CKRecord with CKRecordID %{public}@, folderRecord = %@", buf, 0x20u);
  }

  v7 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v7 withRecord:v4 setNilValues:0];
  v8 = MEMORY[0x277D7C1F8];
  v9 = [v4 recordID];
  v10 = [v8 collectionIdentifierForRecordID:v9];

  if (v10)
  {
    v11 = [(VCCKShortcutSyncService *)self database];
    v12 = [v7 name];
    v13 = [v7 icon];
    v14 = [v7 encryptedSchemaVersion];
    v15 = [v7 recordSystemFieldsData];
    v21 = 0;
    LOBYTE(v14) = [v11 handleFetchedFolderRecordWithIdentifier:v10 name:v12 icon:v13 encryptedSchemaVersion:v14 cloudKitMetadata:v15 error:&v21];
    v16 = v21;

    if ((v14 & 1) == 0)
    {
      v17 = getWFCloudKitSyncLogObject();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_10:

        goto LABEL_11;
      }

      *buf = 136315394;
      v23 = "[VCCKShortcutSyncService handleSavedFolderRecord:]";
      v24 = 2114;
      v25 = v16;
      v18 = "%s Failed to handle saved folder record: %{public}@";
      v19 = v17;
LABEL_9:
      _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_ERROR, v18, buf, 0x16u);
      goto LABEL_10;
    }
  }

  else
  {
    v16 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v4 recordID];
      *buf = 136315394;
      v23 = "[VCCKShortcutSyncService handleSavedFolderRecord:]";
      v24 = 2114;
      v25 = v17;
      v18 = "%s Invalid folder record ID: %{public}@";
      v19 = v16;
      goto LABEL_9;
    }
  }

LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleSavedWorkflowRecord:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 recordID];
    *buf = 136315650;
    v22 = "[VCCKShortcutSyncService handleSavedWorkflowRecord:]";
    v23 = 2114;
    v24 = v6;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling saved workflow CKRecord with CKRecordID %{public}@, workflowRecord = %@", buf, 0x20u);
  }

  [(VCCKShortcutSyncService *)self cloudKitWorkflowClass];
  v7 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v7 withRecord:v4 setNilValues:0];
  v8 = [v4 recordID];
  v9 = [v8 recordName];

  v10 = [(VCCKShortcutSyncService *)self filesReferencedUntilSaved];
  [v10 setObject:0 forKeyedSubscript:v9];

  v11 = [(VCCKShortcutSyncService *)self cloudKitWorkflowClass];
  v12 = [v4 recordID];
  v13 = [(objc_class *)v11 workflowIdentifierForRecordID:v12];

  v14 = [(VCCKShortcutSyncService *)self database];
  v15 = [v7 recordSystemFieldsData];
  v20 = 0;
  v16 = [v14 handleUploadedWorkflowRecordWithIdentifier:v13 cloudKitMetadata:v15 syncHash:objc_msgSend(v7 encryptedSchemaVersion:"cachedSyncHash") error:{objc_msgSend(v7, "encryptedSchemaVersion"), &v20}];
  v17 = v20;

  if ((v16 & 1) == 0)
  {
    v18 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[VCCKShortcutSyncService handleSavedWorkflowRecord:]";
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_ERROR, "%s Failed to handle saved workflow record: %{public}@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleSavedWorkflowOrderingRecord:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "[VCCKShortcutSyncService handleSavedWorkflowOrderingRecord:]";
    v24 = 2114;
    v25 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling saved workflow ordering CKRecord: %{public}@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v6 withRecord:v4 setNilValues:0];
  v7 = [v4 recordID];
  v8 = [(VCCKShortcutSyncService *)self collectionIdentifierForRecordID:v7];

  if (v8)
  {
    v20 = v4;
    v9 = [(VCCKShortcutSyncService *)self database];
    v10 = [v6 orderedWorkflowIDs];
    v11 = [v10 array];
    v12 = [v6 orderedFolderIDs];
    v13 = [v12 array];
    v14 = [v6 recordSystemFieldsData];
    v21 = 0;
    v15 = [v9 handleFetchedOrderingRecordWithIdentifier:v8 shortcuts:v11 folders:v13 cloudKitMetadata:v14 error:&v21];
    v16 = v21;

    if ((v15 & 1) == 0)
    {
      v17 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "[VCCKShortcutSyncService handleSavedWorkflowOrderingRecord:]";
        v24 = 2114;
        v25 = v16;
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_ERROR, "%s Failed to handle saved folder ordering record: %{public}@", buf, 0x16u);
      }
    }

    v4 = v20;
  }

  else
  {
    v16 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = [v4 recordID];
      *buf = 136315394;
      v23 = "[VCCKShortcutSyncService handleSavedWorkflowOrderingRecord:]";
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_ERROR, "%s Unable to retrieve collection identifier from ordering CKRecord with identifier %@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)autoShortcutsPreferencesWithCloudKitAutoShortcutsPreferences:(id)a3
{
  v3 = MEMORY[0x277D7C180];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 appDescriptor];
  v7 = [v4 isSiriEnabled];
  v8 = [v4 isSpotlightEnabled];
  v9 = [v4 disabledAutoShortcuts];
  v10 = [v4 recordSystemFieldsData];

  v11 = [v5 initWithAppDescriptor:v6 isSiriEnabled:v7 isSpotlightEnabled:v8 disabledAutoShortcuts:v9 cloudKitMetadata:v10];
  [v11 setLastSyncedHash:{objc_msgSend(v11, "computedSyncHash")}];

  return v11;
}

- (id)libraryRecordForRecordID:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "[VCCKShortcutSyncService libraryRecordForRecordID:]";
    v29 = 2114;
    v30 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Constructing library CKRecord for recordID: %{public}@", buf, 0x16u);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277D7C210] libraryIdentifierFromRecordID:v4 error:0];
  if (v7)
  {
    v8 = v7;
    v9 = objc_autoreleasePoolPush();
    v10 = [objc_alloc(MEMORY[0x277D79EF0]) initWithIdentifier:v8 objectType:10];
    v11 = [(VCCKShortcutSyncService *)self database];
    v26 = 0;
    v12 = [v11 recordWithDescriptor:v10 properties:0 error:&v26];
    v13 = v26;

    if (v12)
    {
      v14 = objc_alloc(MEMORY[0x277D7C210]);
      v15 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
      v16 = [v14 initWithLibraryRecord:v12 zoneID:v15];

      v17 = [v12 cloudKitRecordMetadata];
      [v16 setRecordSystemFieldsData:v17];
    }

    else
    {
      v17 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v28 = "[VCCKShortcutSyncService libraryRecordForRecordID:]";
        v29 = 2114;
        v30 = v13;
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_ERROR, "%s Failed to fetch library record with error: %{public}@", buf, 0x16u);
      }

      v16 = 0;
    }

    objc_autoreleasePoolPop(v9);
    if (v12 && v16)
    {
      v18 = [v16 dataFileRepresentation];
      v19 = [MEMORY[0x277CBEB98] setWithObject:v18];
      v20 = [(VCCKShortcutSyncService *)self filesReferencedUntilSaved];
      [v20 setObject:v19 forKeyedSubscript:v8];

      v21 = MEMORY[0x277D7C200];
      v22 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
      v23 = [v21 createRecordFromItem:v16 zoneID:v22];

      goto LABEL_16;
    }
  }

  else
  {
    v8 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[VCCKShortcutSyncService libraryRecordForRecordID:]";
      v29 = 2114;
      v30 = v4;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to get identifier from library CKRecord with CKRecordID %{public}@", buf, 0x16u);
    }
  }

  v23 = 0;
LABEL_16:

  objc_autoreleasePoolPop(v6);
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)autoShortcutsPreferencesRecordForRecordID:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v27 = "[VCCKShortcutSyncService autoShortcutsPreferencesRecordForRecordID:]";
    v28 = 2114;
    v29 = v4;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Constructing auto shortcuts preferences CKRecord for recordID: %{public}@", buf, 0x16u);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277D7C1E8] identifierForRecordID:v4];
  if (!v7)
  {
    v8 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[VCCKShortcutSyncService autoShortcutsPreferencesRecordForRecordID:]";
      v28 = 2114;
      v29 = v4;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to get identifier from auto shortcuts preferences CKRecord with CKRecordID %{public}@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v8 = v7;
  v9 = objc_autoreleasePoolPush();
  v10 = [(VCCKShortcutSyncService *)self database];
  v25 = 0;
  v11 = [v10 autoShortcutsPreferencesForIdentifier:v8 error:&v25];
  v12 = v25;

  if (!v11)
  {
    v22 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v27 = "[VCCKShortcutSyncService autoShortcutsPreferencesRecordForRecordID:]";
      v28 = 2114;
      v29 = v8;
      v30 = 2114;
      v31 = v12;
      _os_log_impl(&dword_23103C000, v22, OS_LOG_TYPE_DEFAULT, "%s Unable to find auto shortcuts preferences in the database with identifier: %{public}@, error: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v13 = [objc_alloc(MEMORY[0x277D7C1E8]) initWithAutoShortcutsPreferences:v11 identifier:v4];

  objc_autoreleasePoolPop(v9);
  v14 = MEMORY[0x277D7C200];
  v15 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
  v16 = [v14 createRecordFromItem:v13 zoneID:v15];

  v17 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v4 recordName];
    *buf = 136315394;
    v27 = "[VCCKShortcutSyncService autoShortcutsPreferencesRecordForRecordID:]";
    v28 = 2114;
    v29 = v18;
    _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_INFO, "%s Setting file representations for the auto shortcuts preferences record: %{public}@", buf, 0x16u);
  }

  v19 = [(VCCKShortcutSyncService *)self filesReferencedUntilSaved];
  v20 = [v13 fileRepresentations];
  v21 = [v4 recordName];
  [v19 setObject:v20 forKey:v21];

LABEL_14:
  objc_autoreleasePoolPop(v6);

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)folderRecordForRecordID:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v27 = "[VCCKShortcutSyncService folderRecordForRecordID:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Constructing folder CKRecord", buf, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277D7C1F8] collectionIdentifierForRecordID:v4];
  if (!v7)
  {
    v8 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[VCCKShortcutSyncService folderRecordForRecordID:]";
      v28 = 2114;
      v29 = v4;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to get collection identifier from folder CKRecord with CKRecordID %{public}@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v8 = v7;
  v9 = [(VCCKShortcutSyncService *)self database];
  v10 = [v9 desiredFolderSyncOperationForCollection:v8];

  if ([v10 operationType] != 1)
  {
    v21 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v27 = "[VCCKShortcutSyncService folderRecordForRecordID:]";
      v28 = 2114;
      v29 = v8;
      _os_log_impl(&dword_23103C000, v21, OS_LOG_TYPE_INFO, "%s Collection's folder doesn't need sync, so not constructing record: %{public}@", buf, 0x16u);
    }

LABEL_12:
    objc_autoreleasePoolPop(v6);
    v20 = 0;
LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  v11 = [(VCCKShortcutSyncService *)self database];
  v25 = 0;
  v12 = [v11 folderRecordForCollection:v8 error:&v25];
  v13 = v25;

  if (v12)
  {
    v14 = objc_alloc(MEMORY[0x277D7C1F8]);
    v15 = [v12 name];
    v16 = [v14 initWithIdentifier:v4 name:v15 icon:objc_msgSend(v12 encryptedSchemaVersion:{"icon"), objc_msgSend(v12, "encryptedSchemaVersion")}];

    v17 = [v12 cloudKitMetadata];
    [v16 setRecordSystemFieldsData:v17];

    v18 = MEMORY[0x277D7C200];
    v19 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
    v20 = [v18 createRecordFromItem:v16 zoneID:v19];
  }

  else
  {
    v16 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[VCCKShortcutSyncService folderRecordForRecordID:]";
      v28 = 2114;
      v29 = v8;
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_ERROR, "%s Unable to get folder record for collection: %{public}@", buf, 0x16u);
    }

    v20 = 0;
  }

  objc_autoreleasePoolPop(v6);
  if (!v12)
  {
    goto LABEL_13;
  }

  v20 = v20;
  v22 = v20;
LABEL_14:

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)workflowRecordForRecordID:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[VCCKShortcutSyncService workflowRecordForRecordID:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Constructing workflow CKRecord", buf, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [(objc_class *)[(VCCKShortcutSyncService *)self cloudKitWorkflowClass] workflowIdentifierForRecordID:v4];
  v8 = [(VCCKShortcutSyncService *)self database];
  v9 = [v8 desiredSyncOperationForWorkflow:v7];

  if ([v9 operationType] == 1)
  {
    v10 = [(VCCKShortcutSyncService *)self workflowRecordWithIdentifier:v7 properties:0];
    if (v10)
    {
      v11 = [objc_alloc(-[VCCKShortcutSyncService cloudKitWorkflowClass](self "cloudKitWorkflowClass"))];
      if (([v11 isValidForSyncing]& 1) != 0)
      {
        v12 = [v11 serializedDataFile];
        v13 = [v4 recordName];
        v14 = [MEMORY[0x277CBEB98] setWithObject:v12];
        [(VCCKShortcutSyncService *)self filesReferencedUntilSaved];
        v15 = v22 = v6;
        [v15 setObject:v14 forKeyedSubscript:v13];

        v16 = MEMORY[0x277D7C200];
        v17 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
        v18 = v16;
        v6 = v22;
        v19 = [v18 createRecordFromItem:v11 zoneID:v17];
      }

      else
      {
        v12 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v24 = "[VCCKShortcutSyncService workflowRecordForRecordID:]";
          v25 = 2112;
          v26 = v11;
          _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_ERROR, "%s Not creating a CKRecord from WFCloudKitWorkflow instance because it's not valid: %@", buf, 0x16u);
        }

        v19 = 0;
      }
    }

    else
    {
      v11 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v24 = "[VCCKShortcutSyncService workflowRecordForRecordID:]";
        v25 = 2114;
        v26 = v7;
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Failed to load record for workflow with identifier %{public}@, has the workflow been deleted?", buf, 0x16u);
      }

      v19 = 0;
    }
  }

  else
  {
    v10 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v24 = "[VCCKShortcutSyncService workflowRecordForRecordID:]";
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_INFO, "%s Shortcut doesn't need sync, so not constructing record: %{public}@", buf, 0x16u);
    }

    v19 = 0;
  }

  objc_autoreleasePoolPop(v6);
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)syncFlagsRecord
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = "[VCCKShortcutSyncService syncFlagsRecord]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEFAULT, "%s Constructing sync flags CKRecord", &v12, 0xCu);
  }

  v4 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
  v5 = [objc_alloc(MEMORY[0x277D7C228]) initWithZoneID:v4];
  [v5 setMigratedVoiceShortcuts:{objc_msgSend(MEMORY[0x277D7C230], "voiceShortcutMigrationDidRun")}];
  [v5 setDefaultShortcutsVersion:{objc_msgSend(MEMORY[0x277D7C230], "defaultShortcutsVersion")}];
  v6 = [(VCCKShortcutSyncService *)self database];
  v7 = [v6 syncToken];
  v8 = [v7 syncFlagsCloudKitRecordMetadata];
  [v5 setRecordSystemFieldsData:v8];

  v9 = [MEMORY[0x277D7C200] createRecordFromItem:v5 zoneID:v4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)workflowOrderingRecordForRecordID:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[VCCKShortcutSyncService workflowOrderingRecordForRecordID:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Constructing workflow ordering CKRecord", buf, 0xCu);
  }

  v6 = [(VCCKShortcutSyncService *)self collectionIdentifierForRecordID:v4];
  if (v6)
  {
    v7 = [(VCCKShortcutSyncService *)self database];
    v8 = [v7 desiredOrderingSyncOperationForCollection:v6];

    if ([v8 operationType] == 1)
    {
      v9 = [(VCCKShortcutSyncService *)self database];
      v28 = 0;
      v10 = [v9 orderingRecordForCollection:v6 error:&v28];
      v11 = v28;

      if (v10)
      {
        v12 = objc_alloc(MEMORY[0x277D7C1F0]);
        v27 = v8;
        v13 = MEMORY[0x277CBEB70];
        v14 = [v10 shortcuts];
        v15 = [v13 orderedSetWithArray:v14];
        v16 = MEMORY[0x277CBEB70];
        v17 = [v10 folders];
        v18 = [v16 orderedSetWithArray:v17];
        v19 = [v12 initWithIdentifier:v4 orderedWorkflowIDs:v15 orderedFolderIDs:v18];

        v20 = [v10 cloudKitMetadata];
        [v19 setRecordSystemFieldsData:v20];

        v21 = MEMORY[0x277D7C200];
        v22 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
        v23 = v21;
        v8 = v27;
        v24 = [v23 createRecordFromItem:v19 zoneID:v22];
      }

      else
      {
        v19 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v30 = "[VCCKShortcutSyncService workflowOrderingRecordForRecordID:]";
          v31 = 2114;
          v32 = v6;
          v33 = 2114;
          v34 = v11;
          _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_INFO, "%s Could not create ordering record for collection %{public}@: %{public}@", buf, 0x20u);
        }

        v24 = 0;
      }
    }

    else
    {
      v11 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v30 = "[VCCKShortcutSyncService workflowOrderingRecordForRecordID:]";
        v31 = 2114;
        v32 = v6;
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_INFO, "%s Collection doesn't need sync, so not constructing ordering record: %{public}@", buf, 0x16u);
      }

      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)collectionIdentifierForRecordID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[VCCKShortcutSyncService collectionIdentifierForRecordID:]";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s Getting collection identifier from CKRecordID", &v10, 0xCu);
  }

  v5 = 0x277D7C1F0;
  if (([MEMORY[0x277D7C1F0] isOrderingRecordID:v3] & 1) == 0 && (v5 = 0x277D7C1A0, !objc_msgSend(MEMORY[0x277D7C1A0], "isOrderingRecordID:", v3)) || (objc_msgSend(*v5, "collectionIdentifierForRecordID:", v3), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[VCCKShortcutSyncService collectionIdentifierForRecordID:]";
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Failed to get collection identifier from CKRecordID %{public}@", &v10, 0x16u);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)sendSyncFlagsIfNeeded
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D7C230] syncedFlagsHash];
  v4 = [MEMORY[0x277D7C230] lastSyncedFlagsHash];
  v5 = getWFCloudKitSyncLogObject();
  v6 = v5;
  if (v3 == v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v13 = "[VCCKShortcutSyncService sendSyncFlagsIfNeeded]";
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s Synced flags hash hasn't changed, bailing out", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[VCCKShortcutSyncService sendSyncFlagsIfNeeded]";
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Sending sync flags", buf, 0xCu);
    }

    v7 = MEMORY[0x277D7C228];
    v8 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
    v6 = [v7 recordIDWithZoneID:v8];

    v11 = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [(VCCKShortcutSyncService *)self addRecordIDsToSave:v9 recordIDsToDelete:0];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addRecordIDsToSave:(id)a3 recordIDsToDelete:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count] || objc_msgSend(v7, "count"))
  {
    v8 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v38 = "[VCCKShortcutSyncService addRecordIDsToSave:recordIDsToDelete:]";
      v39 = 2114;
      v40 = v6;
      v41 = 2114;
      v42 = v7;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_INFO, "%s Adding identifiers to save: %{public}@, identifiers to delete %{public}@", buf, 0x20u);
    }

    v9 = [MEMORY[0x277CBEB18] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        v14 = 0;
        do
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [objc_alloc(MEMORY[0x277CBC718]) initWithRecordID:*(*(&v31 + 1) + 8 * v14) type:0];
          [v9 addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v12);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        v20 = 0;
        do
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * v20);
          v22 = objc_alloc(MEMORY[0x277CBC718]);
          v23 = [v22 initWithRecordID:v21 type:{1, v27}];
          [v9 addObject:v23];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v18);
    }

    v24 = [(VCCKShortcutSyncService *)self syncEngine];
    v25 = [v24 state];
    [v25 addPendingRecordZoneChanges:v9];
  }

  else
  {
    v9 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v38 = "[VCCKShortcutSyncService addRecordIDsToSave:recordIDsToDelete:]";
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_INFO, "%s No changes to save or delete, bailing out", buf, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)sendLibraryIfNeeded
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v22 = 136315138;
    v23 = "[VCCKShortcutSyncService sendLibraryIfNeeded]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_INFO, "%s Sending library if changed", &v22, 0xCu);
  }

  v4 = [(VCCKShortcutSyncService *)self database];
  v5 = [v4 latestLibraryIdentifier];

  v6 = [objc_alloc(MEMORY[0x277D79EF0]) initWithIdentifier:v5 objectType:10];
  v7 = [(VCCKShortcutSyncService *)self database];
  v8 = [v7 recordWithDescriptor:v6 properties:0 error:0];

  if (v8)
  {
    v9 = [v8 cloudKitRecordMetadata];
    if (!v9 || (v10 = v9, v11 = [v8 syncHash], v12 = objc_msgSend(v8, "lastSyncedHash"), v10, v11 != v12))
    {
      v13 = objc_opt_new();
      v14 = MEMORY[0x277D7C210];
      v15 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
      v16 = [v14 recordIDWithZoneID:v15 libraryIdentifier:v5];

      [v13 addObject:v16];
      v17 = [v8 cloudKitRecordMetadata];

      if (!v17)
      {
        v18 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v22 = 136315138;
          v23 = "[VCCKShortcutSyncService sendLibraryIfNeeded]";
          _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_INFO, "%s About to upload the library to CloudKit for the first time. Uploading all shortcut records to migrate to the Shortcut_v2 record", &v22, 0xCu);
        }

        v19 = [(VCCKShortcutSyncService *)self fetchCloudKitRecordIDsForAllVisibleWorkflows];
        [v13 addObjectsFromArray:v19];
      }

      v20 = [v13 array];
      [(VCCKShortcutSyncService *)self addRecordIDsToSave:v20 recordIDsToDelete:MEMORY[0x277CBEBF8]];
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)sendChangedFoldersAndCollections
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v38 = objc_opt_new();
  v4 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v45 = "[VCCKShortcutSyncService sendChangedFoldersAndCollections]";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s Sending changed folders and collections", buf, 0xCu);
  }

  v5 = WFGetBuiltInCollectionIdentifiers();
  v36 = WFGetAzulBuiltInCollectionIdentifiers();
  v6 = [(VCCKShortcutSyncService *)self database];
  v7 = [v6 allCollectionIdentifiersForSync];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        if ([v5 containsObject:v12])
        {
          v13 = [v36 containsObject:v12];
          v14 = 0x277D7C1A0;
          if (!v13)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v15 = [(VCCKShortcutSyncService *)self database];
          v16 = [v15 desiredFolderSyncOperationForCollection:v12];

          v17 = MEMORY[0x277D7C1F8];
          v18 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
          v19 = [v17 recordIDWithZoneID:v18 collectionIdentifier:v12];

          v20 = [v16 operationType];
          v21 = v3;
          if (v20 == 1 || (v22 = [v16 operationType], v21 = v38, v22 == 2))
          {
            [v21 addObject:v19];
          }

          if ([v16 operationType])
          {
            v23 = [(VCCKShortcutSyncService *)self logger];
            [v23 logDesiredSyncOperationWithName:@"folder sync" operation:v16 identifier:v12];
          }
        }

        v14 = 0x277D7C1F0;
LABEL_18:
        v24 = *v14;
        v25 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
        v26 = [v24 recordIDWithZoneID:v25 collectionIdentifier:v12];

        v27 = [(VCCKShortcutSyncService *)self database];
        v28 = [v27 desiredOrderingSyncOperationForCollection:v12];

        v29 = [v28 operationType];
        v30 = v3;
        if (v29 == 1 || (v31 = [v28 operationType], v30 = v38, v31 == 2))
        {
          [v30 addObject:v26];
        }

        if ([v28 operationType])
        {
          v32 = [(VCCKShortcutSyncService *)self logger];
          [v32 logDesiredSyncOperationWithName:@"ordering sync" operation:v28 identifier:v12];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v9);
  }

  v33 = [v3 allObjects];
  v34 = [v38 allObjects];
  [(VCCKShortcutSyncService *)self addRecordIDsToSave:v33 recordIDsToDelete:v34];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)sendChangedWorkflows
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v19 = objc_opt_new();
  v4 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v27 = "[VCCKShortcutSyncService sendChangedWorkflows]";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s Sending changed workflows", buf, 0xCu);
  }

  v5 = [(VCCKShortcutSyncService *)self database];
  v6 = [v5 allWorkflowIdentifiersForSync];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = [(VCCKShortcutSyncService *)self database];
        v13 = [v12 desiredSyncOperationForWorkflow:v11];

        v14 = v3;
        if ([v13 operationType] == 1 || (v14 = v19, objc_msgSend(v13, "operationType") == 2))
        {
          v15 = [(VCCKShortcutSyncService *)self cloudKitWorkflowClass];
          v16 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
          v17 = [(objc_class *)v15 recordIDWithZoneID:v16 workflowID:v11];
          [v14 addObject:v17];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  [(VCCKShortcutSyncService *)self addRecordIDsToSave:v3 recordIDsToDelete:v19];
  v18 = *MEMORY[0x277D85DE8];
}

- (id)workflowRecordWithIdentifier:(id)a3 properties:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277D79EF0];
  v8 = a4;
  v9 = [[v7 alloc] initWithIdentifier:v6 objectType:0];
  v10 = [(VCCKShortcutSyncService *)self database];
  v16 = 0;
  v11 = [v10 recordWithDescriptor:v9 properties:v8 error:&v16];

  v12 = v16;
  if (!v11)
  {
    v13 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v18 = "[VCCKShortcutSyncService workflowRecordWithIdentifier:properties:]";
      v19 = 2114;
      v20 = v12;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_FAULT, "%s Failed to load WFWorkflowRecord from identifier: %{public}@, descriptor = %@", buf, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)createShortcutsZone
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[VCCKShortcutSyncService createShortcutsZone]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_INFO, "%s Creating Shortcuts zone", buf, 0xCu);
  }

  v4 = objc_alloc(MEMORY[0x277CBC728]);
  v5 = objc_alloc(MEMORY[0x277CBC5E8]);
  v6 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
  v7 = [v5 initWithZoneID:v6];
  v8 = [v4 initWithZone:v7];

  v9 = [(VCCKShortcutSyncService *)self syncEngine];
  v10 = [v9 state];
  v13 = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v10 addPendingDatabaseChanges:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)enableCoherenceSync
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[VCCKShortcutSyncService enableCoherenceSync]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_INFO, "%s Enabling coherence sync", &v7, 0xCu);
  }

  v4 = [(VCCKShortcutSyncService *)self logger];
  [v4 logEvent:@"enable coherence sync (live)"];

  v5 = [(VCCKShortcutSyncService *)self database];
  [v5 updateSyncTokenWithBlock:&__block_literal_global_1250];

  [MEMORY[0x277CBEBD0] resetSyncUnavailableMessage];
  [(VCCKShortcutSyncService *)self setCoherenceSyncEnabled:1];
  v6 = *MEMORY[0x277D85DE8];
}

- (CKRecordZoneID)shortcutsZoneID
{
  v2 = objc_alloc(MEMORY[0x277CBC5F8]);
  v3 = [v2 initWithZoneName:*MEMORY[0x277D7CBD0] ownerName:*MEMORY[0x277CBBF28]];

  return v3;
}

- (NSArray)pendingShortcutsZoneChanges
{
  v2 = [(VCCKShortcutSyncService *)self syncEngine];
  v3 = [v2 state];
  v4 = [v3 pendingRecordZoneChanges];

  return v4;
}

- (Class)cloudKitWorkflowClass
{
  v2 = [(VCCKShortcutSyncService *)self coherenceSyncEnabled];
  v3 = 0x277D7C240;
  if (!v2)
  {
    v3 = 0x277D7C248;
  }

  v4 = *v3;
  v5 = objc_opt_class();

  return v5;
}

- (void)modifyPendingChangesInShortcutsZoneWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[VCCKShortcutSyncService modifyPendingChangesInShortcutsZoneWithCompletion:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Modifying pending changes in Shortcuts zone", buf, 0xCu);
  }

  v6 = VCOSTransactionWithName(@"VCCKShortcutSyncService.modifyPendingChangesInShortcutsZoneWithCompletion");
  v7 = [(VCCKShortcutSyncService *)self syncEngine];
  v8 = [(VCCKShortcutSyncService *)self sendChangesOptions];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__VCCKShortcutSyncService_modifyPendingChangesInShortcutsZoneWithCompletion___block_invoke;
  v12[3] = &unk_2788FF4B8;
  v13 = v6;
  v14 = v4;
  v9 = v6;
  v10 = v4;
  [v7 sendChangesWithOptions:v8 completionHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __77__VCCKShortcutSyncService_modifyPendingChangesInShortcutsZoneWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFCloudKitSyncLogObject();
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v12 = 136315394;
    v13 = "[VCCKShortcutSyncService modifyPendingChangesInShortcutsZoneWithCompletion:]_block_invoke";
    v14 = 2114;
    v15 = v3;
    v6 = "%s Error modifying changes in the Shortcuts zone: %{public}@";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v12 = 136315138;
    v13 = "[VCCKShortcutSyncService modifyPendingChangesInShortcutsZoneWithCompletion:]_block_invoke";
    v6 = "%s Finished modifying changes in the Shortcuts zone";
    v7 = v5;
    v8 = OS_LOG_TYPE_INFO;
    v9 = 12;
  }

  _os_log_impl(&dword_23103C000, v7, v8, v6, &v12, v9);
LABEL_7:

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)fetchChangesInShortcutsZoneWithCompletion:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[VCCKShortcutSyncService fetchChangesInShortcutsZoneWithCompletion:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Fetching changes in Shortcuts zone", buf, 0xCu);
  }

  v6 = VCOSTransactionWithName(@"VCCKShortcutSyncService.fetchChangesInShortcutsZoneWithCompletion");
  v7 = [(VCCKShortcutSyncService *)self syncEngine];
  v8 = [(VCCKShortcutSyncService *)self fetchChangesOptions];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__VCCKShortcutSyncService_fetchChangesInShortcutsZoneWithCompletion___block_invoke;
  v12[3] = &unk_2788FE6C0;
  v13 = v6;
  v14 = v4;
  v12[4] = self;
  v9 = v6;
  v10 = v4;
  [v7 fetchChangesWithOptions:v8 completionHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __69__VCCKShortcutSyncService_fetchChangesInShortcutsZoneWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFCloudKitSyncLogObject();
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[VCCKShortcutSyncService fetchChangesInShortcutsZoneWithCompletion:]_block_invoke";
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Finished fetching changes in the Shortcuts zone", &v11, 0xCu);
    }

    v3 = v5;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    v12 = "[VCCKShortcutSyncService fetchChangesInShortcutsZoneWithCompletion:]_block_invoke";
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_ERROR, "%s Error fetching changes in the Shortcuts zone: %{public}@", &v11, 0x16u);
  }

  if (VCCloudKitErrorContainsErrorWithCode(v3, 26))
  {
    v6 = getWFCloudKitSyncLogObject();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:

      [*(a1 + 32) createShortcutsZone];
LABEL_12:

      v3 = 0;
      goto LABEL_13;
    }

    v11 = 136315138;
    v12 = "[VCCKShortcutSyncService fetchChangesInShortcutsZoneWithCompletion:]_block_invoke";
    v7 = "%s Zone not found error encountered, asking sync engine to create the Shortcuts zone";
LABEL_7:
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, v7, &v11, 0xCu);
    goto LABEL_8;
  }

  if (VCCloudKitErrorContainsErrorWithCode(v3, 28))
  {
    v10 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[VCCKShortcutSyncService fetchChangesInShortcutsZoneWithCompletion:]_block_invoke";
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s User deleted zone error encountered", &v11, 0xCu);
    }

    [MEMORY[0x277D7C230] setZoneWasPurged:1];
    if ([MEMORY[0x277D7C230] ignoresUserDeletedZoneErrors])
    {
      v6 = getWFCloudKitSyncLogObject();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      v11 = 136315138;
      v12 = "[VCCKShortcutSyncService fetchChangesInShortcutsZoneWithCompletion:]_block_invoke";
      v7 = "%s User has consented to resuming sync, recreating the zone";
      goto LABEL_7;
    }
  }

LABEL_13:
  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[VCCKShortcutSyncService dealloc]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEFAULT, "%s VCCKShortcutSyncService dealloc", buf, 0xCu);
  }

  [(VCCKShortcutSyncService *)self stopObservingUserDefaults];
  v4 = [(VCCKShortcutSyncService *)self applicationObserver];
  [v4 removeObserver:self forKeyPath:@"applicationVisible" context:VCCKShortcutSyncServiceApplicationVisibilityChangedContext];

  v6.receiver = self;
  v6.super_class = VCCKShortcutSyncService;
  [(VCCKShortcutSyncService *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (VCCKShortcutSyncService)initWithContainer:(id)a3 database:(id)a4 applicationObserver:(id)a5 debuggingOptions:(unint64_t)a6 logger:(id)a7
{
  v45[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v42 = a7;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v40 = [MEMORY[0x277CCA890] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"VCCKShortcutSyncService.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"container"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v41 = [MEMORY[0x277CCA890] currentHandler];
  [v41 handleFailureInMethod:a2 object:self file:@"VCCKShortcutSyncService.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"database"}];

LABEL_3:
  v43.receiver = self;
  v43.super_class = VCCKShortcutSyncService;
  v17 = [(VCCKShortcutSyncService *)&v43 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_container, a3);
    objc_storeStrong(&v18->_database, a4);
    objc_storeStrong(&v18->_applicationObserver, a5);
    v18->_debuggingOptions = a6;
    objc_storeStrong(&v18->_logger, a7);
    v19 = objc_alloc(MEMORY[0x277CBC740]);
    v20 = MEMORY[0x277CBEB98];
    v21 = [(VCCKShortcutSyncService *)v18 shortcutsZoneID];
    v45[0] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
    v23 = [v20 setWithArray:v22];
    v24 = [v19 initWithZoneIDs:v23];

    v25 = [objc_alloc(MEMORY[0x277CBC738]) initWithScope:v24];
    sendChangesOptions = v18->_sendChangesOptions;
    v18->_sendChangesOptions = v25;

    v27 = objc_alloc(MEMORY[0x277CBC700]);
    v28 = MEMORY[0x277CBEB98];
    v29 = [(VCCKShortcutSyncService *)v18 shortcutsZoneID];
    v44 = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v31 = [v28 setWithArray:v30];
    v32 = [v27 initWithZoneIDs:v31];

    v33 = [objc_alloc(MEMORY[0x277CBC6F8]) initWithScope:v32];
    fetchChangesOptions = v18->_fetchChangesOptions;
    v18->_fetchChangesOptions = v33;

    v35 = objc_opt_new();
    filesReferencedUntilSaved = v18->_filesReferencedUntilSaved;
    v18->_filesReferencedUntilSaved = v35;

    v18->_coherenceSyncEnabled = [v15 coherenceSyncEnabled];
    v37 = v18;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v18;
}

@end