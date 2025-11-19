@interface BRCSaltingBatchOperation
- (BRCSaltingBatchOperation)initWithParentItem:(id)a3 sessionContext:(id)a4;
- (id)_createStructureRecordForParentItem;
- (id)_createStructureRecordForServerItem:(id)a3 salt:(id)a4;
- (id)_createStructureRecordWithRecordID:(id)a3 serverItem:(id)a4;
- (id)getOrGenerateChildBasehashSaltingKey;
- (void)_buildRecordsWithCompletion:(id)a3;
- (void)_createCKOperationForRecords:(id)a3 completion:(id)a4;
- (void)_saltChildRecordFields:(id)a3 serverItem:(id)a4 basehashSalt:(id)a5;
- (void)_sendRecordBatch:(id)a3 completion:(id)a4;
- (void)_updateRootItemInClientDB;
- (void)_updateRootItemInServerDB;
- (void)_updateSaltingInfoInClientDBWithRecords:(id)a3;
- (void)_updateSaltingInfoInServerDBWithRecords:(id)a3;
- (void)_updateServerTruthForItemID:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRCSaltingBatchOperation

- (id)getOrGenerateChildBasehashSaltingKey
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [(BRCClientZone *)self->_parentClientZone childBaseSaltForItemID:self->_parentItemID];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEA90] brc_generateBogusKey];
    v5 = [v3 isEqualToData:v4];

    if (v5)
    {
      v12 = @"br_bougusSaltingKey";
      v13[0] = MEMORY[0x277CBEC38];
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      parentPluginFields = self->_parentPluginFields;
      self->_parentPluginFields = v6;
    }

    v8 = v3;
  }

  else
  {
    v8 = [MEMORY[0x277CBEA90] brc_generateSaltingKey];
  }

  v9 = v8;

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BRCSaltingBatchOperation)initWithParentItem:(id)a3 sessionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if ([v6 isDirectory])
    {
      v8 = [v6 itemID];
      v9 = [v8 debugItemIDStringWithVerbose:1];
      v10 = [@"metadata-salting/" stringByAppendingString:v9];

      v11 = [v6 serverZone];
      v12 = [v11 metadataSyncContext];
      v28.receiver = self;
      v28.super_class = BRCSaltingBatchOperation;
      v13 = [(_BRCOperation *)&v28 initWithName:v10 syncContext:v12 sessionContext:v7];

      if (v13)
      {
        v14 = [v6 itemID];
        parentItemID = v13->_parentItemID;
        v13->_parentItemID = v14;

        if ([(BRCItemID *)v13->_parentItemID isNonDesktopRoot])
        {
          v16 = [v6 folderAppLibraryRootRecord];
          appLibraryRootRecord = v13->_appLibraryRootRecord;
          v13->_appLibraryRootRecord = v16;
        }

        v18 = [v6 itemID];
        v19 = [v6 serverZone];
        v20 = [v18 directoryStructureRecordIDInZone:v19];
        parentRecordID = v13->_parentRecordID;
        v13->_parentRecordID = v20;

        v22 = [v6 clientZone];
        parentClientZone = v13->_parentClientZone;
        v13->_parentClientZone = v22;

        v24 = [BRCUserDefaults defaultsForMangledID:0];
        v13->_batchSize = [v24 enhancedDrivePrivacyBasehashSaltingBatchSize];
      }

      self = v13;
      v25 = self;
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

  v25 = 0;
LABEL_12:

  return v25;
}

- (void)_createCKOperationForRecords:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBC4A0];
  v8 = a3;
  v9 = [[v7 alloc] initWithRecordsToSave:v8 recordIDsToDelete:0];

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
  v15 = v6;
  v10 = v6;
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

- (void)_sendRecordBatch:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    [(BRCSaltingBatchOperation *)self _createCKOperationForRecords:v6 completion:v7];
  }

  else
  {
    v8 = [(_BRCOperation *)self callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__BRCSaltingBatchOperation__sendRecordBatch_completion___block_invoke;
    block[3] = &unk_278501520;
    v10 = v7;
    dispatch_async(v8, block);
  }
}

- (id)_createStructureRecordWithRecordID:(id)a3 serverItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isBRAlias])
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
    v9 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"structure" recordID:v5];
    if ([v6 isSharedToMeTopLevelItem])
    {
      v10 = [v6 asSharedItem];
      v11 = [v10 originalSt];
      v12 = [v11 ckInfo];
    }

    else
    {
      v10 = [v6 st];
      v12 = [v10 ckInfo];
    }

    [v9 serializeSystemFields:v12];
  }

  return v9;
}

- (void)_saltChildRecordFields:(id)a3 serverItem:(id)a4 basehashSalt:(id)a5
{
  v31[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
  {
    [BRCSaltingBatchOperation _saltChildRecordFields:serverItem:basehashSalt:];
  }

  if ([(BRCItemID *)self->_parentItemID isNonDesktopRoot])
  {
    v11 = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
    v12 = [(BRCItemID *)self->_parentItemID appLibraryRowID];
    v13 = [v11 appLibraryByRowID:v12];
    v14 = [v13 isCloudDocsAppLibrary];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(BRCItemID *)self->_parentItemID isDocumentsFolder];
  v16 = [v9 st];
  v17 = [v16 logicalName];

  [v8 serializeFilename:v17 forCreation:0 basehashSalt:v10 parentIDIsCloudDocsRoot:v14 parentIDIsDocumentsFolder:v15];
  v29 = 0;
  v18 = [v17 br_stringByDeletingPathBounceNo:0 andPathExtension:&v29];
  v19 = v29;
  v30 = @"br_saltingUpdate";
  v20 = [v18 brc_SHA256];
  v31[0] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  [v8 setPluginFields:v21];

  v22 = [v9 st];
  [v8 seralizeBirthtime:{objc_msgSend(v22, "birthtime")}];

  v23 = [v9 st];
  v24 = [v23 logicalName];
  [v8 serializeSpecialIdentityForFilename:v24 parentIDIsCloudDocsRoot:v14 parentIDisDocumentsFolder:v15];

  v25 = [v9 parentItemIDOnServer];
  v26 = [v9 serverZone];
  v27 = [v25 validatingDirectoryReferenceInZone:v26];
  [v8 setObject:v27 forKeyedSubscript:@"parent"];

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_createStructureRecordForServerItem:(id)a3 salt:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [BRCSaltingBatchOperation _createStructureRecordForServerItem:salt:];
  }

  v8 = [v6 itemID];
  v9 = [v6 st];
  v10 = [v9 type];
  v11 = [(BRCClientZone *)self->_parentClientZone serverZone];
  v12 = [v8 structureRecordIDForItemType:v10 zone:v11 aliasTargetZoneIsShared:{objc_msgSend(v6, "aliasTargetIsShared")}];

  v13 = [(BRCSaltingBatchOperation *)self _createStructureRecordWithRecordID:v12 serverItem:v6];
  [(BRCSaltingBatchOperation *)self _saltChildRecordFields:v13 serverItem:v6 basehashSalt:v7];

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
    v7 = [(CKRecord *)v4 pluginFields];
    if (v7)
    {
      v8 = [(CKRecord *)v4 pluginFields];
      v9 = [v8 mutableCopy];
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
    v8 = [(BRCClientZone *)self->_parentClientZone serverZone];
    v3 = [v8 db];
    childBaseSalt = self->_childBaseSalt;
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_parentSaltingState];
    parentItemID = self->_parentItemID;
    v7 = [(BRCClientZone *)self->_parentClientZone dbRowID];
    [v3 execute:{@"UPDATE server_items SET child_basehash_salt = %@, salting_state = %@ WHERE item_id = %@ AND zone_rowid = %@ ", childBaseSalt, v5, parentItemID, v7}];
  }
}

- (void)_updateRootItemInClientDB
{
  if ([(BRCItemID *)self->_parentItemID isNonDesktopRoot]&& !self->_parentItemEncounteredValidationError)
  {
    v6 = [(BRCClientZone *)self->_parentClientZone db];
    childBaseSalt = self->_childBaseSalt;
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_parentSaltingState];
    v5 = [(BRCItemID *)self->_parentItemID appLibraryRowID];
    [v6 execute:{@"UPDATE app_libraries SET child_basehash_salt = %@, salting_state = %@ WHERE rowid = %@ ", childBaseSalt, v4, v5}];
  }
}

- (void)_updateServerTruthForItemID:(id)a3
{
  v6 = a3;
  if ([v6 isEqualToItemID:self->_parentItemID])
  {
    [(BRCSaltingBatchOperation *)self _updateRootItemInServerDB];
  }

  else
  {
    v4 = [(BRCClientZone *)self->_parentClientZone serverZone];
    v5 = [v4 db];
    [v5 execute:{@"UPDATE server_items SET basehash_salt_validation_key = %@  WHERE item_id = %@", self->_baseHashSaltValidationKey, v6}];
  }
}

- (void)_buildRecordsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BRCSessionContext *)self->super._sessionContext clientReadWriteDatabaseFacade];
  v6 = [v5 workloop];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__BRCSaltingBatchOperation__buildRecordsWithCompletion___block_invoke;
  v8[3] = &unk_278500048;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
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

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  metadataCompletionBlock = self->_metadataCompletionBlock;
  if (metadataCompletionBlock)
  {
    metadataCompletionBlock[2](metadataCompletionBlock, [v6 BOOLValue], self->_parentItemEncounteredValidationError, v7);
    v9 = self->_metadataCompletionBlock;
    self->_metadataCompletionBlock = 0;
  }

  v10.receiver = self;
  v10.super_class = BRCSaltingBatchOperation;
  [(_BRCOperation *)&v10 finishWithResult:v6 error:v7];
}

- (void)_updateSaltingInfoInServerDBWithRecords:(id)a3
{
  v4 = a3;
  v5 = [(BRCClientZone *)self->_parentClientZone serverZone];
  v6 = [v5 db];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__BRCSaltingBatchOperation__updateSaltingInfoInServerDBWithRecords___block_invoke;
  v8[3] = &unk_278500FA8;
  v9 = v4;
  v10 = self;
  v7 = v4;
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

- (void)_updateSaltingInfoInClientDBWithRecords:(id)a3
{
  v4 = a3;
  v5 = [(BRCClientZone *)self->_parentClientZone db];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__BRCSaltingBatchOperation__updateSaltingInfoInClientDBWithRecords___block_invoke;
  v7[3] = &unk_278500FA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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