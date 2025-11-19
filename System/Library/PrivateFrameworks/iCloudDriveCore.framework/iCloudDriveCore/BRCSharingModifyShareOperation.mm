@interface BRCSharingModifyShareOperation
- (BOOL)_shouldFetchSharingIdentity:(BOOL)a3;
- (BRCSharingModifyShareOperation)initWithName:(id)a3 zone:(id)a4 share:(id)a5 sessionContext:(id)a6;
- (id)createActivity;
- (void)_performAfterCopyingPublicSharingKeyWithRecordID:(id)a3 completion:(id)a4;
- (void)_performAfterFetchingiWorkRoutingTokenIfNecessary:(id)a3 completion:(id)a4;
- (void)_performAfterFetchingiWorkSharingIdentityOnItem:(id)a3 wantRoutingKey:(BOOL)a4 completion:(id)a5;
- (void)_performAfterGettingPublicSharingKeyForRecord:(id)a3 completion:(id)a4;
- (void)_performAfterPreparingSharingIdentityIfNecessaryWhenWantRoutingKey:(BOOL)a3 completion:(id)a4;
- (void)_updateDBAndSyncDownIfNeededWithShare:(id)a3 recordsToLearnCKInfo:(id)a4;
- (void)main;
@end

@implementation BRCSharingModifyShareOperation

- (BRCSharingModifyShareOperation)initWithName:(id)a3 zone:(id)a4 share:(id)a5 sessionContext:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a3;
  v15 = [v11 metadataSyncContext];
  v25.receiver = self;
  v25.super_class = BRCSharingModifyShareOperation;
  v16 = [(_BRCOperation *)&v25 initWithName:v14 syncContext:v15 sessionContext:v13];

  if (v16)
  {
    v17 = [MEMORY[0x277CBC4F8] br_sharingMisc];
    [(_BRCOperation *)v16 setGroup:v17];

    [(_BRCOperation *)v16 setNonDiscretionary:1];
    objc_storeStrong(&v16->_serverZone, a4);
    objc_storeStrong(&v16->_share, a5);
    v18 = [v12 recordID];
    v19 = [v18 brc_shareItemID];
    itemID = v16->_itemID;
    v16->_itemID = v19;

    if (!v16->_itemID)
    {
      [BRCSharingModifyShareOperation initWithName:zone:share:sessionContext:];
    }

    v21 = [(_BRCOperation *)v16 callbackQueue];
    v22 = [v11 session];
    v23 = [v22 clientTruthWorkloop];
    dispatch_set_target_queue(v21, v23);
  }

  return v16;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "BRCSharingModifyShareOperation/? (subclass activity missing)", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_updateDBAndSyncDownIfNeededWithShare:(id)a3 recordsToLearnCKInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRCServerZone *)self->_serverZone clientZone];
  v9 = [v8 db];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __93__BRCSharingModifyShareOperation__updateDBAndSyncDownIfNeededWithShare_recordsToLearnCKInfo___block_invoke;
  v17 = &unk_278505640;
  v18 = v8;
  v19 = v7;
  v20 = self;
  v21 = v6;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  [v9 groupInBatch:&v14];

  v13 = [v12 db];
  [v13 flushToMakeEditsVisibleToIPCReaders];
}

void __93__BRCSharingModifyShareOperation__updateDBAndSyncDownIfNeededWithShare_recordsToLearnCKInfo___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) learnCKInfosFromSavedRecords:*(a1 + 40) isOutOfBandModifyRecords:1];
  v2 = [*(a1 + 32) itemByItemID:*(*(a1 + 48) + 536)];
  v3 = [v2 asShareableItem];

  if (v3)
  {
    v4 = [v3 sharingOptions];
    if ((v4 & 0x7C) != 0 && !*(a1 + 56))
    {
      v4 &= 0xFFFFFFFFFFFFFF83;
    }

    v5 = v4 | 4;
    if (!*(a1 + 56))
    {
      v5 = v4;
    }

    if ((v4 & 4) != 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    if (((v6 & 8) == 0) != [*(a1 + 56) publicPermission] > 1)
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 ^ 8;
    }

    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = [*(a1 + 56) participants];
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v9)
    {
      v10 = *v25;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          if ([v12 role] != 1 && objc_msgSend(v12, "permission") > 1)
          {
            LODWORD(v9) = 1;
            goto LABEL_27;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_27:

    if (((v7 & 0x40) == 0) != v9)
    {
      v17 = v7;
    }

    else
    {
      v17 = v7 ^ 0x40;
    }

    if (([*(a1 + 56) publicPermission] == 2) == ((v17 & 0x10) == 0))
    {
      v17 ^= 0x10uLL;
    }

    if (v17 != [v3 sharingOptions])
    {
      if (*(a1 + 56) || ([v3 clientZone], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isPrivateZone"), v18, v19))
      {
        [v3 setSharingOptions:v17];
      }
    }

    v20 = [MEMORY[0x277CBEAA8] date];
    [v3 updateWithLastUsedDate:v20];

    [v3 markNeedsUploadOrSyncingUp];
    [v3 saveToDB];
  }

  else
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(a1 + 48) + 536);
      v16 = *(a1 + 32);
      *buf = 138412802;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't find item %@ in zone %@%@", buf, 0x20u);
    }
  }

  v21 = [*(a1 + 32) serverItemByItemID:*(*(a1 + 48) + 536)];
  v22 = v21;
  if (!v21 || (*(a1 + 56) != 0) == (([v21 sharingOptions] & 4) == 0))
  {
    [*(a1 + 32) scheduleSyncDownFirst];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_performAfterCopyingPublicSharingKeyWithRecordID:(id)a3 completion:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CBC3E0]);
  v19[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v10 = [v8 initWithRecordIDs:v9];

  [v10 setShouldFetchAssetContent:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94__BRCSharingModifyShareOperation__performAfterCopyingPublicSharingKeyWithRecordID_completion___block_invoke;
  v15[3] = &unk_278503E90;
  v16 = v6;
  v17 = self;
  v18 = v7;
  v11 = v7;
  v12 = v6;
  [v10 setFetchRecordsCompletionBlock:v15];
  v13 = [(_BRCOperation *)self callbackQueue];
  [v10 setCallbackQueue:v13];

  [(_BRCOperation *)self addSubOperation:v10];
  v14 = *MEMORY[0x277D85DE8];
}

void __94__BRCSharingModifyShareOperation__performAfterCopyingPublicSharingKeyWithRecordID_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = [a2 objectForKeyedSubscript:a1[4]];
  v6 = v14;
  v7 = v5;
  if (!v14)
  {
    v8 = [v5 encryptedPublicSharingKey];

    if (v8 || ([MEMORY[0x277CCA9B8] brc_errorPermissionError:@"Couldn't get public sharing key"], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      objc_storeStrong((a1[5] + 544), v7);
      v9 = [v7 encryptedPublicSharingKey];
      [*(a1[5] + 528) setPublicSharingIdentity:v9];

      v10 = [v7 displayedHostname];
      [*(a1[5] + 528) setDisplayedHostname:v10];

      v11 = [v7 routingKey];
      [*(a1[5] + 528) setRoutingKey:v11];

      v6 = 0;
    }

    else
    {
      v6 = v12;
    }
  }

  v13 = a1[5];
  v15 = v6;
  (*(a1[6] + 16))();
}

- (void)_performAfterGettingPublicSharingKeyForRecord:(id)a3 completion:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [BRCSharingModifyShareOperation _performAfterGettingPublicSharingKeyForRecord:completion:];
  }

  if (!v6)
  {
    [BRCSharingModifyShareOperation _performAfterGettingPublicSharingKeyForRecord:completion:];
  }

  v10 = [v6 recordID];
  [v6 setWantsPublicSharingKey:1];
  v11 = objc_alloc(MEMORY[0x277CBC4A0]);
  v21[0] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v13 = [v11 initWithRecordsToSave:v12 recordIDsToDelete:0];

  [v13 setAtomic:1];
  [v13 setSavePolicy:0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __91__BRCSharingModifyShareOperation__performAfterGettingPublicSharingKeyForRecord_completion___block_invoke;
  v18[3] = &unk_2785067F8;
  v19 = v10;
  v20 = v7;
  v18[4] = self;
  v14 = v10;
  v15 = v7;
  [v13 setModifyRecordsCompletionBlock:v18];
  v16 = [(_BRCOperation *)self callbackQueue];
  [v13 setCallbackQueue:v16];

  [(_BRCOperation *)self addSubOperation:v13];
  v17 = *MEMORY[0x277D85DE8];
}

void __91__BRCSharingModifyShareOperation__performAfterGettingPublicSharingKeyForRecord_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [v6 objectAtIndexedSubscript:0];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 count];
  if (!v7 && !v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __91__BRCSharingModifyShareOperation__performAfterGettingPublicSharingKeyForRecord_completion___block_invoke_cold_1();
    }

    v7 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: no records and no error"];
  }

  v12 = [v8 encryptedPublicSharingKey];
  if (!(v12 | v7))
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      __91__BRCSharingModifyShareOperation__performAfterGettingPublicSharingKeyForRecord_completion___block_invoke_cold_2();
    }

    v7 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: no error and no sharing key"];
  }

  if (v7)
  {
    if (([v7 brc_containsCloudKitErrorCode:12] & 1) != 0 || objc_msgSend(v7, "brc_containsCloudKitErrorCode:", 10))
    {
      [*(a1 + 32) _performAfterCopyingPublicSharingKeyWithRecordID:*(a1 + 40) completion:*(a1 + 48)];
    }

    else
    {
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, 0x90u))
      {
        __91__BRCSharingModifyShareOperation__performAfterGettingPublicSharingKeyForRecord_completion___block_invoke_cold_3();
      }

      v25 = *(a1 + 48);
      v26 = *(a1 + 32);
      v27 = [v7 brc_cloudKitErrorForRecordID:*(a1 + 40)];
      (*(v25 + 16))(v25, v26, v27);
    }
  }

  else
  {
    v15 = [*(*(a1 + 32) + 520) clientZone];
    v16 = [v15 db];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __91__BRCSharingModifyShareOperation__performAfterGettingPublicSharingKeyForRecord_completion___block_invoke_14;
    v33 = &unk_2784FF788;
    v34 = *(a1 + 32);
    v35 = v6;
    [v16 groupInBatch:&v30];

    objc_storeStrong((*(a1 + 32) + 544), v8);
    v17 = [v8 encryptedPublicSharingKey];
    [*(*(a1 + 32) + 528) setPublicSharingIdentity:v17];

    v18 = [v8 displayedHostname];
    [*(*(a1 + 32) + 528) setDisplayedHostname:v18];

    v19 = [v8 routingKey];
    [*(*(a1 + 32) + 528) setRoutingKey:v19];

    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(*(a1 + 32) + 528);
      *buf = 138412546;
      v37 = v29;
      v38 = 2112;
      v39 = v20;
      _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] Got sharing identity for share - %@%@", buf, 0x16u);
    }

    v22 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __91__BRCSharingModifyShareOperation__performAfterGettingPublicSharingKeyForRecord_completion___block_invoke_14(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 520) clientZone];
  [v2 learnCKInfosFromSavedRecords:*(a1 + 40) isOutOfBandModifyRecords:1];
}

- (BOOL)_shouldFetchSharingIdentity:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKShare *)self->_share publicSharingIdentity];
  v6 = v5 != 0;
  if (v5)
  {
    v7 = !v3;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = [(CKShare *)self->_share routingKey];
    v6 = v8 != 0;
  }

  return !v6;
}

- (void)_performAfterFetchingiWorkRoutingTokenIfNecessary:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKShare *)self->_share routingKey];

  if (v8)
  {
    goto LABEL_4;
  }

  v9 = [v6 routingKey];

  if (v9)
  {
    v10 = [v6 routingKey];
    [(CKShare *)self->_share setRoutingKey:v10];

LABEL_4:
    v7[2](v7, self, 0);
    goto LABEL_5;
  }

  v11 = [(CKShare *)self->_share publicSharingIdentity];
  if (v11 && (v12 = v11, [(CKShare *)self->_share baseToken], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BRCSharingModifyShareOperation _performAfterFetchingiWorkRoutingTokenIfNecessary:completion:];
    }

    v16 = [(CKShare *)self->_share publicSharingIdentity];
    [v6 setMutableEncryptedPublicSharingKeyData:v16];

    v17 = [(CKShare *)self->_share baseToken];
    [v6 setBaseToken:v17];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __95__BRCSharingModifyShareOperation__performAfterFetchingiWorkRoutingTokenIfNecessary_completion___block_invoke;
    v21[3] = &unk_278506820;
    v21[4] = self;
    v22 = v7;
    [(BRCSharingModifyShareOperation *)self _performAfterGettingPublicSharingKeyForRecord:v6 completion:v21];
  }

  else
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [BRCSharingModifyShareOperation _performAfterFetchingiWorkRoutingTokenIfNecessary:completion:];
    }

    v20 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: no public sharing identity. avoiding breaking iwork shares"];
    (v7)[2](v7, self, v20);
  }

LABEL_5:
}

void __95__BRCSharingModifyShareOperation__performAfterFetchingiWorkRoutingTokenIfNecessary_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(*(a1 + 32) + 544) routingKey];
  if (!(v4 | v5))
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __95__BRCSharingModifyShareOperation__performAfterFetchingiWorkRoutingTokenIfNecessary_completion___block_invoke_cold_1();
    }

    v4 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: no routing key on share identity prepared record"];
  }

  v8 = [*(*(a1 + 32) + 528) publicSharingIdentity];
  v9 = [*(*(a1 + 32) + 544) encryptedPublicSharingKey];
  v10 = [v8 isEqualToData:v9];

  if ((v10 & 1) == 0)
  {
    __95__BRCSharingModifyShareOperation__performAfterFetchingiWorkRoutingTokenIfNecessary_completion___block_invoke_cold_2();
  }

  v11 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

- (void)_performAfterFetchingiWorkSharingIdentityOnItem:(id)a3 wantRoutingKey:(BOOL)a4 completion:(id)a5
{
  v33[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(CKShare *)self->_share baseToken];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  v12 = [(CKShare *)self->_share publicSharingIdentity];
  if (v12)
  {
    v13 = v12;
    if (a4)
    {
      v14 = [(CKShare *)self->_share routingKey];

      if (!v14)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v9[2](v9, self, 0);
    goto LABEL_12;
  }

LABEL_7:
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [BRCSharingModifyShareOperation _performAfterFetchingiWorkSharingIdentityOnItem:wantRoutingKey:completion:];
  }

  v17 = [v8 documentRecordID];
  v18 = objc_alloc(MEMORY[0x277CBC3E0]);
  v33[0] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v20 = [v18 initWithRecordIDs:v19];

  v21 = *MEMORY[0x277CBC150];
  v32[0] = *MEMORY[0x277CBC138];
  v32[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  [v20 setDesiredKeys:v22];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __108__BRCSharingModifyShareOperation__performAfterFetchingiWorkSharingIdentityOnItem_wantRoutingKey_completion___block_invoke;
  v26[3] = &unk_278506848;
  v27 = v17;
  v28 = v8;
  v29 = self;
  v31 = a4;
  v30 = v9;
  v23 = v17;
  [v20 setFetchRecordsCompletionBlock:v26];
  v24 = [(_BRCOperation *)self callbackQueue];
  [v20 setCallbackQueue:v24];

  [(_BRCOperation *)self addSubOperation:v20];
LABEL_12:

  v25 = *MEMORY[0x277D85DE8];
}

void __108__BRCSharingModifyShareOperation__performAfterFetchingiWorkSharingIdentityOnItem_wantRoutingKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CBC138]];
  v8 = [v6 mutableEncryptedPublicSharingKeyData];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [v6 encryptedValues];
    v9 = [v10 objectForKeyedSubscript:*MEMORY[0x277CBC150]];

    if (!v9)
    {
      goto LABEL_8;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __108__BRCSharingModifyShareOperation__performAfterFetchingiWorkSharingIdentityOnItem_wantRoutingKey_completion___block_invoke_cold_1();
    }

    v13 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: sharing identity isn't encrypted data"];

    v9 = 0;
    v5 = v13;
  }

LABEL_8:
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        __108__BRCSharingModifyShareOperation__performAfterFetchingiWorkSharingIdentityOnItem_wantRoutingKey_completion___block_invoke_cold_2();
      }

      v16 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: base token isn't a string"];

      v7 = 0;
      v5 = v16;
    }
  }

  if (v9)
  {
    v17 = v7 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17 && !v5)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v41 = v7;
      v42 = 2112;
      v43 = v9;
      v44 = 2112;
      v45 = v18;
      _os_log_fault_impl(&dword_223E7A000, v19, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: no base token %@ or sharing identity %@ and no error%@", buf, 0x20u);
    }

    v5 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: no base token %@ or sharing identity %@ and no error", v7, v9}];
    v20 = [*(a1 + 40) clientZone];
    v21 = [v20 itemByRowID:{objc_msgSend(*(a1 + 40), "dbRowID")}];
    v22 = [v21 asDocument];

    [v22 forceiWorkSharingInfoResend];
    [v22 saveToDB];
  }

  if (v5)
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, 0x90u))
    {
      __108__BRCSharingModifyShareOperation__performAfterFetchingiWorkSharingIdentityOnItem_wantRoutingKey_completion___block_invoke_cold_3();
    }

LABEL_39:
    v37 = *(a1 + 48);
    v36 = *(a1 + 56);
    v23 = [v5 brc_cloudKitErrorForRecordID:*(a1 + 32)];
    (*(v36 + 16))(v36, v37, v23);
    goto LABEL_40;
  }

  v25 = [v6 encryptedValues];
  v26 = *MEMORY[0x277CBC150];
  v23 = [v25 objectForKeyedSubscript:*MEMORY[0x277CBC150]];

  if (!v23 || ([v9 isEqualToData:v23] & 1) == 0)
  {
    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v41 = v9;
      v42 = 2112;
      v43 = v23;
      v44 = 2112;
      v45 = v27;
      _os_log_fault_impl(&dword_223E7A000, v28, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Sharing identities don't match (%@ vs %@)! Trying to fix up the identities%@", buf, 0x20u);
    }

    if (v9)
    {
      v29 = [v6 encryptedValues];
      [v29 setObject:v9 forKeyedSubscript:v26];
    }
  }

  [*(*(a1 + 48) + 528) setBaseToken:v7];
  [*(*(a1 + 48) + 528) setPublicSharingIdentity:v9];
  v30 = [v6 displayedHostname];
  [*(*(a1 + 48) + 528) setDisplayedHostname:v30];

  objc_storeStrong((*(a1 + 48) + 544), v6);
  [*(*(a1 + 48) + 544) setBaseToken:v7];
  v31 = [*(*(a1 + 48) + 544) mutableEncryptedPublicSharingKeyData];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = v9;
  }

  [*(*(a1 + 48) + 544) setMutableEncryptedPublicSharingKeyData:v33];

  v34 = brc_bread_crumbs();
  v35 = brc_default_log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    v39 = *(*(a1 + 48) + 528);
    *buf = 138412546;
    v41 = v39;
    v42 = 2112;
    v43 = v34;
    _os_log_debug_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEBUG, "[DEBUG] Got iWork sharing identify for share - %@%@", buf, 0x16u);
  }

  if (*(a1 + 64) != 1)
  {
    goto LABEL_39;
  }

  [*(a1 + 48) _performAfterFetchingiWorkRoutingTokenIfNecessary:v6 completion:*(a1 + 56)];
LABEL_40:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_performAfterPreparingSharingIdentityIfNecessaryWhenWantRoutingKey:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(_BRCOperation *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __112__BRCSharingModifyShareOperation__performAfterPreparingSharingIdentityIfNecessaryWhenWantRoutingKey_completion___block_invoke;
  block[3] = &unk_278506870;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __112__BRCSharingModifyShareOperation__performAfterPreparingSharingIdentityIfNecessaryWhenWantRoutingKey_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 520) clientZone];
  v3 = [v2 itemByItemID:*(*(a1 + 32) + 536)];

  v4 = [v3 st];
  v5 = [v4 iWorkShareable];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 asDocument];
    [v6 _performAfterFetchingiWorkSharingIdentityOnItem:v7 wantRoutingKey:*(a1 + 48) completion:*(a1 + 40)];
LABEL_7:

    goto LABEL_8;
  }

  if ([v3 isDocument])
  {
    v8 = *(a1 + 32);
    v7 = [v3 asDocument];
    [v8 _performAfterFetchingSharingIdentityOnDocumentItem:v7 wantRoutingKey:*(a1 + 48) completion:*(a1 + 40)];
    goto LABEL_7;
  }

  if ([v3 isDirectory])
  {
    v9 = *(a1 + 32);
    v7 = [v3 asDirectory];
    [v9 _performAfterFetchingSharingIdentityOnDirectoryItem:v7 wantRoutingKey:*(a1 + 48) completion:*(a1 + 40)];
    goto LABEL_7;
  }

  v10 = *(a1 + 40);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    __112__BRCSharingModifyShareOperation__performAfterPreparingSharingIdentityIfNecessaryWhenWantRoutingKey_completion___block_invoke_cold_1();
  }

  v13 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: not a directory nor a document"];
  (*(v10 + 16))(v10, 0, v13);

LABEL_8:
}

- (void)main
{
  v2.receiver = self;
  v2.super_class = BRCSharingModifyShareOperation;
  [(_BRCOperation *)&v2 main];
}

@end