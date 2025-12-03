@interface BRCSharingSaveShareOperation
- (BRCSharingSaveShareOperation)initWithShare:(id)share zone:(id)zone sessionContext:(id)context;
- (id)createActivity;
- (void)main;
- (void)performAfterUnsharingParentShareTurdIfNecessary:(id)necessary;
@end

@implementation BRCSharingSaveShareOperation

- (BRCSharingSaveShareOperation)initWithShare:(id)share zone:(id)zone sessionContext:(id)context
{
  v8 = MEMORY[0x277CBC4F8];
  contextCopy = context;
  zoneCopy = zone;
  shareCopy = share;
  br_sharingMisc = [v8 br_sharingMisc];
  [(_BRCOperation *)self setGroup:br_sharingMisc];

  recordID = [shareCopy recordID];
  recordName = [recordID recordName];
  v15 = [@"sharing/save-share" stringByAppendingPathComponent:recordName];

  v18.receiver = self;
  v18.super_class = BRCSharingSaveShareOperation;
  v16 = [(BRCSharingModifyShareOperation *)&v18 initWithName:v15 zone:zoneCopy share:shareCopy sessionContext:contextCopy];

  return v16;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sharing/save-share", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)performAfterUnsharingParentShareTurdIfNecessary:(id)necessary
{
  v30 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  mangledID = [(BRCServerZone *)self->super._serverZone mangledID];
  v6 = [BRCUserDefaults defaultsForMangledID:mangledID];
  maxSyncPathDepth = [v6 maxSyncPathDepth];

  clientZone = [(BRCServerZone *)self->super._serverZone clientZone];
  v9 = [clientZone db];
  itemID = self->super._itemID;
  dbRowID = [(BRCServerZone *)self->super._serverZone dbRowID];
  dbRowID2 = [(BRCServerZone *)self->super._serverZone dbRowID];
  v13 = [v9 itemIDWithSQL:{@" WITH RECURSIVE item_parents (item_id, item_sharing_options, item_parent_id) AS(         SELECT item_id, item_sharing_options, item_parent_id FROM server_items           WHERE item_id = %@ AND zone_rowid = %@       UNION ALL          SELECT li.item_id, li.item_sharing_options, li.item_parent_id FROM server_items AS li     INNER JOIN item_parents AS p WHERE li.zone_rowid = %@ AND p.item_parent_id = li.item_id          LIMIT %u)        SELECT item_id FROM item_parents WHERE (item_sharing_options & %lu) == 4 AND item_id != %@ ", itemID, dbRowID, dbRowID2, maxSyncPathDepth, 124, self->super._itemID}];

  if (v13)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Unsharing turd folder share %@%@", buf, 0x16u);
    }

    v16 = objc_alloc(MEMORY[0x277CBC5D0]);
    zoneID = [(BRCServerZone *)self->super._serverZone zoneID];
    v18 = [v16 initShareIDWithItemID:v13 zoneID:zoneID];

    v19 = objc_alloc(MEMORY[0x277CBC4A0]);
    v25 = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    v21 = [v19 initWithRecordsToSave:0 recordIDsToDelete:v20];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __80__BRCSharingSaveShareOperation_performAfterUnsharingParentShareTurdIfNecessary___block_invoke;
    v23[3] = &unk_2785030C0;
    v23[4] = self;
    v24 = necessaryCopy;
    [v21 setModifyRecordsCompletionBlock:v23];
    [(_BRCOperation *)self addSubOperation:v21];
  }

  else
  {
    (*(necessaryCopy + 2))(necessaryCopy, self, 0);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  if (self->super._share)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__BRCSharingSaveShareOperation_main__block_invoke;
    v6[3] = &unk_2784FFCE0;
    v6[4] = self;
    [(BRCSharingModifyShareOperation *)self performAfterPreparingSharingIdentityIfNecessary:v6];
  }

  else
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [BRCSharingSaveShareOperation main];
    }

    v5 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: no share record"];
    [(_BRCOperation *)self completedWithResult:0 error:v5];
  }
}

void __36__BRCSharingSaveShareOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v7 = *(*(a1 + 32) + 536);
    v8 = *(*(a1 + 32) + 520);
    v9 = [v8 clientZone];
    if ([*(*(a1 + 32) + 528) isKnownToServer])
    {
      v10 = 0;
    }

    else
    {
      v10 = [v9 isPrivateZone];
    }

    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    [v11 addObject:*(*(a1 + 32) + 528)];
    v12 = [v9 itemByItemID:v7];
    v86 = [v9 serverItemByItemID:v7];
    if (([v12 isShareableItem] & 1) == 0)
    {
      v17 = *(a1 + 32);
      v18 = [MEMORY[0x277CCA9B8] brc_errorItemNotShareable];
      [v17 completedWithResult:0 error:v18];

      goto LABEL_76;
    }

    v85 = v11;
    v13 = [v12 localDiffs];
    v14 = [v12 inFlightSyncUpDiffs];
    if (([v12 sharingOptions] & 0x48) != 0 && (objc_msgSend(v12, "sharingOptions") & 4) == 0)
    {
      v15 = *(a1 + 32);
      v16 = [MEMORY[0x277CCA9B8] brc_errorItemAlreadyPartOfAShare];
      [v15 completedWithResult:0 error:v16];

LABEL_12:
      v11 = v85;
LABEL_76:

      goto LABEL_77;
    }

    v79 = v10;
    v82 = v8;
    v83 = v9;
    v84 = v7;
    v19 = [v12 appLibrary];
    v20 = [v19 mangledID];
    v21 = [BRCUserDefaults defaultsForMangledID:v20];
    v22 = [v21 preventSharingFolderWithPendingDelete];

    if (v22)
    {
      if ([v12 isDirectory])
      {
        if (([v12 isShared] & 1) == 0)
        {
          v23 = [v12 asDirectory];
          v24 = [v23 containsPendingDeleteDocuments];

          if (v24)
          {
            v25 = *(a1 + 32);
            v26 = [MEMORY[0x277CCA9B8] brc_errorNotInCloud:0];
            [v25 completedWithResult:0 error:v26];

            v9 = v83;
            v7 = v84;
            v8 = v82;
            goto LABEL_12;
          }
        }
      }
    }

    v27 = v14 | v13;
    if ([v12 isDirectory] && (objc_msgSend(v12, "isSharedToMeTopLevelItem") & 1) == 0 && objc_msgSend(v86, "pcsChainState") != 2 && objc_msgSend(v86, "pcsChainState") != 3 && (v27 & 0x1000000000000000) == 0)
    {
      v42 = *(a1 + 32);
      v43 = brc_bread_crumbs();
      v44 = brc_default_log();
      v7 = v84;
      v11 = v85;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        __36__BRCSharingSaveShareOperation_main__block_invoke_cold_2(v12, v43, v44);
      }

      v45 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CFACB0];
      v47 = [v12 itemID];
      v48 = [v45 br_errorWithDomain:v46 code:15 description:{@"unreachable: directory %@ isn't pcs chained", v47}];

      [v42 completedWithResult:0 error:v48];
      v8 = v82;
      v9 = v83;
      goto LABEL_76;
    }

    if ([v12 isInTrashScope])
    {
      v28 = *(a1 + 32);
      v29 = [MEMORY[0x277CCA9B8] brc_errorItemInTrash];
      [v28 completedWithResult:0 error:v29];
    }

    v7 = v84;
    if (!v86 || (v27 & 0x40) != 0)
    {
      v30 = v12;
    }

    else
    {
      v30 = v86;
    }

    v31 = [v30 st];
    v32 = [v31 logicalName];

    v81 = v32;
    if ([v12 isDocument])
    {
      v33 = [v12 asDocument];
      v34 = [v33 currentVersion];
      v35 = [v34 originalPOSIXName];
      if ([v35 isEqualToString:v32])
      {
        v36 = 0;
      }

      else
      {
        v37 = [v12 clientZone];
        v36 = [v37 isPrivateZone];
      }
    }

    else
    {
      v36 = 0;
    }

    v38 = v36 | v79;
    if ((v36 | v79))
    {
      v39 = v36;
      v40 = *(*(a1 + 32) + 544);
      v9 = v83;
      if (!v40)
      {
        if ([v12 isDocument])
        {
          v41 = [v12 asDocument];
          [v41 baseRecord];
        }

        else
        {
          v41 = [v12 asDirectory];
          [v41 folderRootStructureRecord];
        }
        v40 = ;

        if (!v40)
        {
          v67 = brc_bread_crumbs();
          v68 = brc_default_log();
          v7 = v84;
          if (os_log_type_enabled(v68, 0x90u))
          {
            *buf = 138412802;
            v93 = v84;
            v94 = 2112;
            v95 = v12;
            v96 = 2112;
            v97 = v67;
            _os_log_error_impl(&dword_223E7A000, v68, 0x90u, "[ERROR] Couldn't get base record for %@, %@%@", buf, 0x20u);
          }

          v69 = *(a1 + 32);
          v70 = brc_bread_crumbs();
          v71 = brc_default_log();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
          {
            __36__BRCSharingSaveShareOperation_main__block_invoke_cold_3();
          }

          v72 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: couldn't get base record"];
          [v69 completedWithResult:0 error:v72];

          v11 = v85;
          goto LABEL_75;
        }
      }

      v49 = [v40 routingKey];
      if (v49)
      {
        [v40 setRoutingKey:v49];
      }

      else
      {
        v50 = [*(*(a1 + 32) + 528) routingKey];
        [v40 setRoutingKey:v50];
      }

      v51 = v39;

      v52 = [v40 baseToken];
      if (v52)
      {
        [v40 setBaseToken:v52];
      }

      else
      {
        v53 = [*(*(a1 + 32) + 528) baseToken];
        [v40 setBaseToken:v53];
      }

      v54 = [v40 mutableEncryptedPublicSharingKeyData];
      if (v54)
      {
        [v40 setMutableEncryptedPublicSharingKeyData:v54];
      }

      else
      {
        v55 = [*(*(a1 + 32) + 528) publicSharingIdentity];
        [v40 setMutableEncryptedPublicSharingKeyData:v55];
      }

      if ([v12 isDocument])
      {
        v56 = [v12 asDocument];
        [v56 currentVersion];
      }

      else
      {
        v56 = [v12 asDirectory];
        [v56 st];
      }
      v57 = ;
      v58 = [v57 ckInfo];
      [v40 serializeSystemFields:v58];

      if (v51)
      {
        v59 = [BRCUserDefaults defaultsForMangledID:0];
        v60 = [v59 supportsEnhancedDrivePrivacy];

        if (v60)
        {
          v61 = [v83 asPrivateClientZone];
          v62 = [v61 childBaseSaltForItemID:v84];

          v63 = [v12 appLibrary];
          if ([v63 isCloudDocsAppLibrary])
          {
            v64 = [v12 clientZone];
            if ([v64 isCloudDocsZone])
            {
              [v12 parentItemIDInZone];
              v65 = v80 = v63;
              v66 = [v65 isNonDesktopRoot];

              v63 = v80;
            }

            else
            {
              v66 = 0;
            }
          }

          else
          {
            v66 = 0;
          }

          v73 = [v12 parentItemIDInZone];
          v60 = [v73 isDocumentsFolder];
        }

        else
        {
          v62 = 0;
          v66 = 0;
        }

        [v40 serializeFilename:v81 forCreation:0 setExtension:0 basehashSalt:v62 parentIDIsCloudDocsRoot:v66 parentIDIsDocumentsFolder:v60];
      }

      [v85 addObject:v40];

      v7 = v84;
    }

    v74 = *(*(a1 + 32) + 528);
    v75 = [v12 st];
    v76 = [v75 logicalName];
    [v74 brc_updateWithLogicalName:v76 isFolder:{objc_msgSend(v12, "isDirectory")}];

    v77 = *(a1 + 32);
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __36__BRCSharingSaveShareOperation_main__block_invoke_136;
    v87[3] = &unk_2785068C0;
    v87[4] = v77;
    v91 = v38 & 1;
    v11 = v85;
    v88 = v85;
    v89 = v12;
    v9 = v83;
    v90 = v83;
    [v77 performAfterUnsharingParentShareTurdIfNecessary:v87];

LABEL_75:
    v8 = v82;
    goto LABEL_76;
  }

  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, 0x90u))
  {
    __36__BRCSharingSaveShareOperation_main__block_invoke_cold_1();
  }

  [*(a1 + 32) completedWithResult:0 error:v4];
LABEL_77:

  v78 = *MEMORY[0x277D85DE8];
}

void __36__BRCSharingSaveShareOperation_main__block_invoke_136(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = v6;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to unshare turd - %@%@", buf, 0x16u);
    }
  }

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __36__BRCSharingSaveShareOperation_main__block_invoke_136_cold_1(a1, v9, v10);
  }

  v11 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:*(a1 + 40) recordIDsToDelete:0];
  [v11 setSavePolicy:0];
  [v11 setAtomic:1];
  objc_initWeak(buf, v11);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __36__BRCSharingSaveShareOperation_main__block_invoke_143;
  v21[3] = &unk_278506898;
  objc_copyWeak(&v24, buf);
  v12 = *(a1 + 40);
  v25 = *(a1 + 64);
  *&v13 = v12;
  *(&v13 + 1) = *(a1 + 32);
  v20 = v13;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  v22 = v20;
  v23 = v16;
  [v11 setModifyRecordsCompletionBlock:v21];
  v17 = [v11 callbackQueue];
  v18 = [*(a1 + 32) callbackQueue];
  dispatch_set_target_queue(v17, v18);

  [*(a1 + 32) addSubOperation:v11];
  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);

  v19 = *MEMORY[0x277D85DE8];
}

void __36__BRCSharingSaveShareOperation_main__block_invoke_143(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = v7;
  v10 = [v6 count];
  v11 = [*(a1 + 32) count];
  v12 = v9;
  if (!v9)
  {
    v12 = 0;
    if (v10 != v11)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        __36__BRCSharingSaveShareOperation_main__block_invoke_143_cold_1();
      }

      v12 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: got an unexpected number of shares saved"];
    }
  }

  if (v12)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, 0x90u))
    {
      *buf = 138412802;
      v57 = WeakRetained;
      v58 = 2112;
      v59 = v12;
      v60 = 2112;
      v61 = v15;
      _os_log_error_impl(&dword_223E7A000, v16, 0x90u, "[ERROR] failed saving share %@: %@%@", buf, 0x20u);
    }

    v17 = [*(*(a1 + 40) + 528) recordID];
    v18 = [v12 brc_cloudKitErrorForRecordID:v17];

    if (*(a1 + 72) == 1 && [v18 brc_containsCloudKitUnderlyingErrorCode:2024])
    {
      v19 = [*(a1 + 32) objectAtIndexedSubscript:1];
      v20 = [v19 recordID];
      v21 = [v12 brc_cloudKitErrorForRecordID:v20];

      if ([v21 brc_isStaleRecordUpdateError])
      {
        v22 = [*(a1 + 48) clientZone];
        [v22 scheduleSyncDown];
      }
    }

    else
    {
      v21 = v18;
    }

    [*(a1 + 40) completedWithResult:0 error:v21];
    goto LABEL_32;
  }

  v23 = brc_bread_crumbs();
  v24 = brc_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    __36__BRCSharingSaveShareOperation_main__block_invoke_143_cold_2();
  }

  v25 = &off_2241AB000;
  if (*(a1 + 72) == 1)
  {
    v26 = [v6 objectAtIndexedSubscript:1];
    v27 = [v26 recordType];
    if (([v27 isEqualToString:@"content"]& 1) == 0)
    {
      v28 = [v6 objectAtIndexedSubscript:1];
      v29 = [v28 recordType];
      v30 = [v29 isEqualToString:@"structure"];

      if (v30)
      {
LABEL_23:
        v31 = [*(a1 + 56) db];
        v52[0] = MEMORY[0x277D85DD0];
        v25 = &off_2241AB000;
        v52[1] = 3221225472;
        v52[2] = __36__BRCSharingSaveShareOperation_main__block_invoke_147;
        v52[3] = &unk_2784FF788;
        v53 = *(a1 + 56);
        v54 = v6;
        [v31 groupInBatch:v52];

        goto LABEL_24;
      }

      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        __36__BRCSharingSaveShareOperation_main__block_invoke_143_cold_3();
      }
    }

    goto LABEL_23;
  }

LABEL_24:
  v32 = [v6 objectAtIndexedSubscript:0];
  v33 = [v32 recordType];
  v34 = [v33 isEqualToString:*MEMORY[0x277CBC050]];

  if ((v34 & 1) == 0)
  {
    __36__BRCSharingSaveShareOperation_main__block_invoke_143_cold_4();
  }

  v35 = [v6 objectAtIndexedSubscript:0];
  v36 = *(a1 + 40);
  v37 = *(v36 + 528);
  *(v36 + 528) = v35;

  [*(a1 + 56) scheduleSyncDownFirst];
  v38 = brc_bread_crumbs();
  v39 = brc_default_log();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    v48 = *(*(a1 + 40) + 528);
    *buf = 138412546;
    v57 = v48;
    v58 = 2112;
    v59 = v38;
    _os_log_debug_impl(&dword_223E7A000, v39, OS_LOG_TYPE_DEBUG, "[DEBUG] Saved share %@%@", buf, 0x16u);
  }

  v40 = *(a1 + 40);
  v41 = v40[66];
  if (*(a1 + 72))
  {
    v42 = [v6 lastObject];
    v55 = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
    [v40 _updateDBAndSyncDownIfNeededWithShare:v41 recordsToLearnCKInfo:v43];
  }

  else
  {
    [*(a1 + 40) _updateDBAndSyncDownIfNeededWithShare:v40[66] recordsToLearnCKInfo:0];
  }

  v44 = [*(a1 + 48) fileObjectID];
  v45 = [v44 asString];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = *(v25 + 435);
  v49[2] = __36__BRCSharingSaveShareOperation_main__block_invoke_149;
  v49[3] = &unk_2784FFFA8;
  v46 = *(a1 + 40);
  v50 = v44;
  v51 = v46;
  v21 = v44;
  [BRCImportUtil forceIngestionForItemID:v45 completionHandler:v49];

LABEL_32:
  v47 = *MEMORY[0x277D85DE8];
}

void __36__BRCSharingSaveShareOperation_main__block_invoke_147(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) objectAtIndexedSubscript:1];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v1 learnCKInfosFromSavedRecords:v3 isOutOfBandModifyRecords:1];

  v4 = *MEMORY[0x277D85DE8];
}

void __36__BRCSharingSaveShareOperation_main__block_invoke_149(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = 138412802;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Done forceIngestionForItemID %@ with error - %@%@", &v8, 0x20u);
  }

  [*(a1 + 40) completedWithResult:*(*(a1 + 40) + 528) error:0];
  v6 = *MEMORY[0x277D85DE8];
}

@end