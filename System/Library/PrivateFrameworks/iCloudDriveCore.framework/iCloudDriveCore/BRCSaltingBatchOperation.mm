@interface BRCSaltingBatchOperation
- (BRCSaltingBatchOperation)initWithParentItem:(id)item sessionContext:(id)context;
- (id)_createStructureRecordForParentItem;
- (id)_createStructureRecordForServerItem:(id)item salt:(id)salt;
- (id)_createStructureRecordWithRecordID:(id)d serverItem:(id)item;
- (id)getOrGenerateChildBasehashSaltingKey;
- (void)_buildRecordsWithCompletion:(id)completion;
- (void)_createCKOperationForRecords:(id)records completion:(id)completion;
- (void)_saltChildRecordFields:(id)fields serverItem:(id)item basehashSalt:(id)salt;
- (void)_sendRecordBatch:(id)batch completion:(id)completion;
- (void)_updateRootItemInClientDB;
- (void)_updateRootItemInServerDB;
- (void)_updateSaltingInfoInClientDBWithRecords:(id)records;
- (void)_updateSaltingInfoInServerDBWithRecords:(id)records;
- (void)_updateServerTruthForItemID:(id)d;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRCSaltingBatchOperation

- (id)getOrGenerateChildBasehashSaltingKey
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [(BRCClientZone *)self->_parentClientZone childBaseSaltForItemID:self->_parentItemID];
  if (v3)
  {
    brc_generateBogusKey = [MEMORY[0x277CBEA90] brc_generateBogusKey];
    v5 = [v3 isEqualToData:brc_generateBogusKey];

    if (v5)
    {
      v12 = @"br_bougusSaltingKey";
      v13[0] = MEMORY[0x277CBEC38];
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      parentPluginFields = self->_parentPluginFields;
      self->_parentPluginFields = v6;
    }

    brc_generateSaltingKey = v3;
  }

  else
  {
    brc_generateSaltingKey = [MEMORY[0x277CBEA90] brc_generateSaltingKey];
  }

  v9 = brc_generateSaltingKey;

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BRCSaltingBatchOperation)initWithParentItem:(id)item sessionContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
  if (itemCopy)
  {
    if ([itemCopy isDirectory])
    {
      itemID = [itemCopy itemID];
      v9 = [itemID debugItemIDStringWithVerbose:1];
      v10 = [@"metadata-salting/" stringByAppendingString:v9];

      serverZone = [itemCopy serverZone];
      metadataSyncContext = [serverZone metadataSyncContext];
      v28.receiver = self;
      v28.super_class = BRCSaltingBatchOperation;
      v13 = [(_BRCOperation *)&v28 initWithName:v10 syncContext:metadataSyncContext sessionContext:contextCopy];

      if (v13)
      {
        itemID2 = [itemCopy itemID];
        parentItemID = v13->_parentItemID;
        v13->_parentItemID = itemID2;

        if ([(BRCItemID *)v13->_parentItemID isNonDesktopRoot])
        {
          folderAppLibraryRootRecord = [itemCopy folderAppLibraryRootRecord];
          appLibraryRootRecord = v13->_appLibraryRootRecord;
          v13->_appLibraryRootRecord = folderAppLibraryRootRecord;
        }

        itemID3 = [itemCopy itemID];
        serverZone2 = [itemCopy serverZone];
        v20 = [itemID3 directoryStructureRecordIDInZone:serverZone2];
        parentRecordID = v13->_parentRecordID;
        v13->_parentRecordID = v20;

        clientZone = [itemCopy clientZone];
        parentClientZone = v13->_parentClientZone;
        v13->_parentClientZone = clientZone;

        v24 = [BRCUserDefaults defaultsForMangledID:0];
        v13->_batchSize = [v24 enhancedDrivePrivacyBasehashSaltingBatchSize];
      }

      self = v13;
      selfCopy = self;
      goto LABEL_12;
    }
  }

  else
  {
    [BRCSaltingBatchOperation initWithParentItem:sessionContext:];
  }

  v10 = brc_bread_crumbs();
  v26 = brc_default_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [BRCSaltingBatchOperation initWithParentItem:sessionContext:];
  }

  selfCopy = 0;
LABEL_12:

  return selfCopy;
}

- (void)_createCKOperationForRecords:(id)records completion:(id)completion
{
  completionCopy = completion;
  v7 = MEMORY[0x277CBC4A0];
  recordsCopy = records;
  v9 = [[v7 alloc] initWithRecordsToSave:recordsCopy recordIDsToDelete:0];

  [v9 setSavePolicy:0];
  [v9 setAtomic:1];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__BRCSaltingBatchOperation__createCKOperationForRecords_completion___block_invoke;
  v16[3] = &unk_278507F58;
  v16[4] = self;
  [v9 setPerRecordCompletionBlock:v16];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __68__BRCSaltingBatchOperation__createCKOperationForRecords_completion___block_invoke_5;
  v14 = &unk_278503070;
  v15 = completionCopy;
  v10 = completionCopy;
  [v9 setModifyRecordsCompletionBlock:&v11];
  [(_BRCOperation *)self addSubOperation:v9, v11, v12, v13, v14];
}

void __68__BRCSaltingBatchOperation__createCKOperationForRecords_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 brc_isCloudKitAtomicFailure] & 1) == 0)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      v11 = 138412802;
      v12 = v5;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&dword_223E7A000, v9, 0x90u, "[ERROR] Salting operation for recordID %@ with error %@%@", &v11, 0x20u);
    }
  }

  [*(*(a1 + 32) + 512) handleSaltingErrorIfNeeded:v7 record:v5];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sendRecordBatch:(id)batch completion:(id)completion
{
  batchCopy = batch;
  completionCopy = completion;
  if ([batchCopy count])
  {
    [(BRCSaltingBatchOperation *)self _createCKOperationForRecords:batchCopy completion:completionCopy];
  }

  else
  {
    callbackQueue = [(_BRCOperation *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__BRCSaltingBatchOperation__sendRecordBatch_completion___block_invoke;
    block[3] = &unk_278501520;
    v10 = completionCopy;
    dispatch_async(callbackQueue, block);
  }
}

- (id)_createStructureRecordWithRecordID:(id)d serverItem:(id)item
{
  dCopy = d;
  itemCopy = item;
  if ([itemCopy isBRAlias])
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BRCSaltingBatchOperation _createStructureRecordWithRecordID:serverItem:];
    }

    v9 = 0;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"structure" recordID:dCopy];
    if ([itemCopy isSharedToMeTopLevelItem])
    {
      asSharedItem = [itemCopy asSharedItem];
      originalSt = [asSharedItem originalSt];
      ckInfo = [originalSt ckInfo];
    }

    else
    {
      asSharedItem = [itemCopy st];
      ckInfo = [asSharedItem ckInfo];
    }

    [v9 serializeSystemFields:ckInfo];
  }

  return v9;
}

- (void)_saltChildRecordFields:(id)fields serverItem:(id)item basehashSalt:(id)salt
{
  v31[1] = *MEMORY[0x277D85DE8];
  fieldsCopy = fields;
  itemCopy = item;
  saltCopy = salt;
  if (!saltCopy)
  {
    [BRCSaltingBatchOperation _saltChildRecordFields:serverItem:basehashSalt:];
  }

  if ([(BRCItemID *)self->_parentItemID isNonDesktopRoot])
  {
    zoneAppRetriever = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
    appLibraryRowID = [(BRCItemID *)self->_parentItemID appLibraryRowID];
    v13 = [zoneAppRetriever appLibraryByRowID:appLibraryRowID];
    isCloudDocsAppLibrary = [v13 isCloudDocsAppLibrary];
  }

  else
  {
    isCloudDocsAppLibrary = 0;
  }

  isDocumentsFolder = [(BRCItemID *)self->_parentItemID isDocumentsFolder];
  v16 = [itemCopy st];
  logicalName = [v16 logicalName];

  [fieldsCopy serializeFilename:logicalName forCreation:0 basehashSalt:saltCopy parentIDIsCloudDocsRoot:isCloudDocsAppLibrary parentIDIsDocumentsFolder:isDocumentsFolder];
  v29 = 0;
  v18 = [logicalName br_stringByDeletingPathBounceNo:0 andPathExtension:&v29];
  v19 = v29;
  v30 = @"br_saltingUpdate";
  brc_SHA256 = [v18 brc_SHA256];
  v31[0] = brc_SHA256;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  [fieldsCopy setPluginFields:v21];

  v22 = [itemCopy st];
  [fieldsCopy seralizeBirthtime:{objc_msgSend(v22, "birthtime")}];

  v23 = [itemCopy st];
  logicalName2 = [v23 logicalName];
  [fieldsCopy serializeSpecialIdentityForFilename:logicalName2 parentIDIsCloudDocsRoot:isCloudDocsAppLibrary parentIDisDocumentsFolder:isDocumentsFolder];

  parentItemIDOnServer = [itemCopy parentItemIDOnServer];
  serverZone = [itemCopy serverZone];
  v27 = [parentItemIDOnServer validatingDirectoryReferenceInZone:serverZone];
  [fieldsCopy setObject:v27 forKeyedSubscript:@"parent"];

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_createStructureRecordForServerItem:(id)item salt:(id)salt
{
  itemCopy = item;
  saltCopy = salt;
  if (!itemCopy)
  {
    [BRCSaltingBatchOperation _createStructureRecordForServerItem:salt:];
  }

  itemID = [itemCopy itemID];
  v9 = [itemCopy st];
  type = [v9 type];
  serverZone = [(BRCClientZone *)self->_parentClientZone serverZone];
  v12 = [itemID structureRecordIDForItemType:type zone:serverZone aliasTargetZoneIsShared:{objc_msgSend(itemCopy, "aliasTargetIsShared")}];

  v13 = [(BRCSaltingBatchOperation *)self _createStructureRecordWithRecordID:v12 serverItem:itemCopy];
  [(BRCSaltingBatchOperation *)self _saltChildRecordFields:v13 serverItem:itemCopy basehashSalt:saltCopy];

  return v13;
}

- (id)_createStructureRecordForParentItem
{
  if ([(BRCItemID *)self->_parentItemID isNonDesktopRoot])
  {
    appLibraryRootRecord = self->_appLibraryRootRecord;
    if (!appLibraryRootRecord)
    {
      [(BRCSaltingBatchOperation *)&self->_appLibraryRootRecord _createStructureRecordForParentItem];
      appLibraryRootRecord = v11;
    }

    v4 = appLibraryRootRecord;
  }

  else
  {
    v5 = [(BRCClientZone *)self->_parentClientZone serverItemByItemID:self->_parentItemID];
    if (!v5)
    {
      [BRCSaltingBatchOperation _createStructureRecordForParentItem];
    }

    v4 = [(BRCSaltingBatchOperation *)self _createStructureRecordWithRecordID:self->_parentRecordID serverItem:v5];
  }

  if (!v4)
  {
    [BRCSaltingBatchOperation _createStructureRecordForParentItem];
  }

  [(CKRecord *)v4 brc_fillWithChildBasehashSalt:self->_childBaseSalt];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_parentSaltingState];
  [(CKRecord *)v4 setObject:v6 forKeyedSubscript:@"saltingState"];

  if (self->_parentPluginFields)
  {
    pluginFields = [(CKRecord *)v4 pluginFields];
    if (pluginFields)
    {
      pluginFields2 = [(CKRecord *)v4 pluginFields];
      v9 = [pluginFields2 mutableCopy];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSDictionary count](self->_parentPluginFields, "count")}];
    }

    [v9 addEntriesFromDictionary:self->_parentPluginFields];
    [(CKRecord *)v4 setPluginFields:v9];
  }

  return v4;
}

- (void)_updateRootItemInServerDB
{
  if (![(BRCItemID *)self->_parentItemID isNonDesktopRoot])
  {
    serverZone = [(BRCClientZone *)self->_parentClientZone serverZone];
    v3 = [serverZone db];
    childBaseSalt = self->_childBaseSalt;
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_parentSaltingState];
    parentItemID = self->_parentItemID;
    dbRowID = [(BRCClientZone *)self->_parentClientZone dbRowID];
    [v3 execute:{@"UPDATE server_items SET child_basehash_salt = %@, salting_state = %@ WHERE item_id = %@ AND zone_rowid = %@ ", childBaseSalt, v5, parentItemID, dbRowID}];
  }
}

- (void)_updateRootItemInClientDB
{
  if ([(BRCItemID *)self->_parentItemID isNonDesktopRoot]&& !self->_parentItemEncounteredValidationError)
  {
    v6 = [(BRCClientZone *)self->_parentClientZone db];
    childBaseSalt = self->_childBaseSalt;
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_parentSaltingState];
    appLibraryRowID = [(BRCItemID *)self->_parentItemID appLibraryRowID];
    [v6 execute:{@"UPDATE app_libraries SET child_basehash_salt = %@, salting_state = %@ WHERE rowid = %@ ", childBaseSalt, v4, appLibraryRowID}];
  }
}

- (void)_updateServerTruthForItemID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToItemID:self->_parentItemID])
  {
    [(BRCSaltingBatchOperation *)self _updateRootItemInServerDB];
  }

  else
  {
    serverZone = [(BRCClientZone *)self->_parentClientZone serverZone];
    v5 = [serverZone db];
    [v5 execute:{@"UPDATE server_items SET basehash_salt_validation_key = %@  WHERE item_id = %@", self->_baseHashSaltValidationKey, dCopy}];
  }
}

- (void)_buildRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->super._sessionContext clientReadWriteDatabaseFacade];
  workloop = [clientReadWriteDatabaseFacade workloop];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__BRCSaltingBatchOperation__buildRecordsWithCompletion___block_invoke;
  v8[3] = &unk_278500048;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(workloop, v8);
}

void __56__BRCSaltingBatchOperation__buildRecordsWithCompletion___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = [BRCFlatLevelSaltingEnumerator newEnumeratorForItemID:*(*(a1 + 32) + 520) clientZone:*(*(a1 + 32) + 512)];
  v3 = [*(a1 + 32) getOrGenerateChildBasehashSaltingKey];
  v4 = *(a1 + 32);
  v5 = *(v4 + 568);
  *(v4 + 568) = v3;

  v6 = [*(*(a1 + 32) + 568) brc_truncatedSHA256];
  v7 = *(a1 + 32);
  v8 = *(v7 + 560);
  *(v7 + 560) = v6;

  v9 = [*(*(a1 + 32) + 512) saltingStateForItemID:*(*(a1 + 32) + 520)];
  if (v9 >= 3)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v30 = [*(a1 + 32) operationID];
      v31 = v30;
      v32 = *(*(a1 + 32) + 528);
      v33 = @"fully salted";
      if (v9 == -1)
      {
        v33 = @"no server item";
      }

      *buf = 138413058;
      v40 = v30;
      v41 = 2112;
      v42 = v32;
      v43 = 2112;
      v44 = v33;
      v45 = 2112;
      v46 = v10;
      _os_log_fault_impl(&dword_223E7A000, v11, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: operation %@ is trying to salt record %@ while it is in %@ state%@", buf, 0x2Au);
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *(a1 + 40);
    v14 = [*(*(a1 + 32) + 528) debugDescription];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v16 = [v12 brc_errorInvalidParameter:v14 value:v15];
    (*(v13 + 16))(v13, 0, 0, v16);
  }

  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(*(a1 + 32) + 504)];
  v18 = [v2 nextObject];
  if (v18)
  {
    v38 = v9;
    v19 = 0;
    while (1)
    {
      v20 = *(a1 + 32);
      v21 = v20[63];
      if (v21 <= ++v19)
      {
        break;
      }

      v22 = [v20 _createStructureRecordForServerItem:v18 salt:v20[71]];
      if (v22)
      {
        [v17 addObject:v22];
      }

      v23 = [v2 nextObject];

      v18 = v23;
      if (!v23)
      {
        v24 = 3;
        goto LABEL_14;
      }
    }

    v24 = 2;
LABEL_14:
    *(*(a1 + 32) + 536) = v24;
    v25 = *(a1 + 32);
    if (*(v25 + 536) == v38)
    {
      if (v21 > v19)
      {
        goto LABEL_26;
      }

      v28 = [v25 _createStructureRecordForServerItem:v18 salt:*(v25 + 568)];
      if (!v28)
      {
        __56__BRCSaltingBatchOperation__buildRecordsWithCompletion___block_invoke_cold_1();
      }

      [v17 addObject:v28];
      goto LABEL_25;
    }

    LODWORD(v9) = v38;
  }

  else
  {
    *(*(a1 + 32) + 536) = 3;
    if (*(*(a1 + 32) + 536) == v9)
    {
      goto LABEL_26;
    }
  }

  v26 = brc_bread_crumbs();
  v27 = brc_default_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    if (v9 > 3)
    {
      v34 = @"no server item";
    }

    else
    {
      v34 = off_278507FC8[v9];
    }

    v35 = *(*(a1 + 32) + 528);
    v36 = *(*(a1 + 32) + 536);
    if (v36 > 3)
    {
      v37 = @"no server item";
    }

    else
    {
      v37 = off_278507FC8[v36];
    }

    *buf = 138413058;
    v40 = v35;
    v41 = 2112;
    v42 = v34;
    v43 = 2112;
    v44 = v37;
    v45 = 2112;
    v46 = v26;
    _os_log_debug_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] Moving salting parent record ID %@ from %@ to %@%@", buf, 0x2Au);
  }

  v28 = [*(a1 + 32) _createStructureRecordForParentItem];
  if (!v28)
  {
    __56__BRCSaltingBatchOperation__buildRecordsWithCompletion___block_invoke_cold_2();
  }

  [v17 insertObject:v28 atIndex:0];
LABEL_25:

LABEL_26:
  (*(*(a1 + 40) + 16))();

  v29 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  metadataCompletionBlock = self->_metadataCompletionBlock;
  if (metadataCompletionBlock)
  {
    metadataCompletionBlock[2](metadataCompletionBlock, [resultCopy BOOLValue], self->_parentItemEncounteredValidationError, errorCopy);
    v9 = self->_metadataCompletionBlock;
    self->_metadataCompletionBlock = 0;
  }

  v10.receiver = self;
  v10.super_class = BRCSaltingBatchOperation;
  [(_BRCOperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

- (void)_updateSaltingInfoInServerDBWithRecords:(id)records
{
  recordsCopy = records;
  serverZone = [(BRCClientZone *)self->_parentClientZone serverZone];
  v6 = [serverZone db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__BRCSaltingBatchOperation__updateSaltingInfoInServerDBWithRecords___block_invoke;
  v8[3] = &unk_278500FA8;
  v9 = recordsCopy;
  selfCopy = self;
  v7 = recordsCopy;
  [v6 performWithFlags:25 action:v8];
}

uint64_t __68__BRCSaltingBatchOperation__updateSaltingInfoInServerDBWithRecords___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = [v7 recordID];
        v9 = [*(*(a1 + 40) + 256) zoneAppRetriever];
        v10 = [v8 brc_itemIDWithZoneAppRetriever:v9];

        v11 = [v7 brc_oplockMergeEtag];
        if (v11)
        {
        }

        else
        {
          v12 = [v7 brc_updateDroppedReason];

          if (!v12)
          {
            [*(a1 + 40) _updateServerTruthForItemID:v10];
            goto LABEL_12;
          }
        }

        if ([v10 isEqualToItemID:*(*(a1 + 40) + 520)])
        {
          *(*(a1 + 40) + 576) = 1;
        }

        *(*(a1 + 40) + 536) = 2;
LABEL_12:

        ++v6;
      }

      while (v4 != v6);
      v13 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v4 = v13;
    }

    while (v13);
  }

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_updateSaltingInfoInClientDBWithRecords:(id)records
{
  recordsCopy = records;
  v5 = [(BRCClientZone *)self->_parentClientZone db];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__BRCSaltingBatchOperation__updateSaltingInfoInClientDBWithRecords___block_invoke;
  v7[3] = &unk_278500FA8;
  v7[4] = self;
  v8 = recordsCopy;
  v6 = recordsCopy;
  [v5 performWithFlags:25 action:v7];
}

uint64_t __68__BRCSaltingBatchOperation__updateSaltingInfoInClientDBWithRecords___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateRootItemInClientDB];
  [*(*(a1 + 32) + 512) learnCKInfosFromSavedRecords:*(a1 + 40) isOutOfBandModifyRecords:1];
  return 1;
}

- (void)main
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __32__BRCSaltingBatchOperation_main__block_invoke;
  v2[3] = &unk_278507FA8;
  v2[4] = self;
  [(BRCSaltingBatchOperation *)self _buildRecordsWithCompletion:v2];
}

uint64_t __32__BRCSaltingBatchOperation_main__block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__BRCSaltingBatchOperation_main__block_invoke_2;
  v5[3] = &unk_278507F80;
  v5[4] = v3;
  v6 = a3;
  return [v3 _sendRecordBatch:a2 completion:v5];
}

void __32__BRCSaltingBatchOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      __32__BRCSaltingBatchOperation_main__block_invoke_2_cold_1();
    }

    [*(a1 + 32) completedWithResult:0 error:v6];
  }

  else
  {
    [*(a1 + 32) _updateSaltingInfoInServerDBWithRecords:v5];
    [*(a1 + 32) _updateSaltingInfoInClientDBWithRecords:v5];
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
    [v9 completedWithResult:v10 error:0];
  }
}

@end