@interface BRCSyncUpOperationBuilder
- (BOOL)_checkIfShouldDedicateOpToPCSChainingItem:(id)a3;
- (BOOL)_checkIfShouldDedicateOpToSaltingBasehashItem:(id)a3;
- (BOOL)_recoverItemIDChangedWhileUploadingIfNecessary:(id)a3;
- (BOOL)_validateSharedDocumentFieldsForRecord:(id)a3 item:(id)a4;
- (BOOL)checkIfSyncAllowedInSharedZoneForItem:(id)a3;
- (BRCSyncUpOperationBuilder)initWithSessionContext:(id)a3 syncUpOperation:(id)a4;
- (float)addDeletionOfAlias:(id)a3;
- (float)addDeletionOfDirectory:(id)a3;
- (float)addDeletionOfDocument:(id)a3;
- (float)addDeletionOfFinderBookmark:(id)a3;
- (float)addDeletionOfItem:(id)a3;
- (float)addDeletionOfRecordID:(id)a3 ckInfo:(id)a4;
- (float)addDeletionOfSharedTopLevelItem:(id)a3;
- (float)addEditOfDirectory:(id)a3;
- (float)addEditOfDocument:(id)a3;
- (float)addEditOfFinderBookmark:(id)a3;
- (float)addEditOfSharedTopLevelItem:(id)a3;
- (float)addEditOfSymlink:(id)a3;
- (float)addItem:(id)a3;
- (float)fakeSyncForItem:(id)a3 serverItem:(id)a4 inZone:(id)a5;
- (id)_generateChildBasehashSaltGetterBlock;
- (id)_generateSaltGetterBlock;
- (id)_getChildBasehashSaltForItem:(id)a3;
- (id)_getChildBasehashSaltForItemID:(id)a3;
- (id)_getSaltForItem:(id)a3;
- (unsigned)shouldPCSChainStatusForItem:(id)a3;
- (void)handleDeletionOfSharedItem:(id)a3;
- (void)handleEditOfSharedItem:(id)a3;
- (void)prepareAppLibraryRootSyncUpForItem:(id)a3;
@end

@implementation BRCSyncUpOperationBuilder

- (BRCSyncUpOperationBuilder)initWithSessionContext:(id)a3 syncUpOperation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = BRCSyncUpOperationBuilder;
  v9 = [(BRCSyncUpOperationBuilder *)&v22 init];
  if (v9)
  {
    v10 = objc_opt_new();
    fullyChainedParentIDWhitelist = v9->_fullyChainedParentIDWhitelist;
    v9->_fullyChainedParentIDWhitelist = v10;

    v12 = objc_opt_new();
    halfChainedParentIDWhitelist = v9->_halfChainedParentIDWhitelist;
    v9->_halfChainedParentIDWhitelist = v12;

    v14 = objc_opt_new();
    parentItemIDToChildBasehashSalt = v9->_parentItemIDToChildBasehashSalt;
    v9->_parentItemIDToChildBasehashSalt = v14;

    objc_storeStrong(&v9->_sessionContext, a3);
    objc_storeStrong(&v9->_op, a4);
    v16 = [(BRCSyncUpOperation *)v9->_op serverZone];
    v17 = [v16 clientZone];
    v18 = [v17 mangledID];
    v19 = [BRCUserDefaults defaultsForMangledID:v18];
    defaults = v9->_defaults;
    v9->_defaults = v19;
  }

  return v9;
}

- (unsigned)shouldPCSChainStatusForItem:(id)a3
{
  v4 = a3;
  if (![v4 isSharedToMeChildItem])
  {
    v32 = 0;
    v6 = [v4 isNewToServer:&v32];
    if ([v4 isSharedToMeTopLevelItem])
    {
      v7 = [v4 asSharedToMeTopLevelItem];
      v8 = [v7 sharedAliasItemID];
    }

    else
    {
      v8 = [v4 itemID];
    }

    v9 = [v4 st];
    v10 = [v9 parentID];

    v11 = [v4 appLibrary];
    v12 = [v11 mangledID];
    v13 = [BRCUserDefaults defaultsForMangledID:v12];

    v14 = [(BRCSyncUpOperation *)self->_op serverZone];
    v15 = [v14 clientZone];

    if (![v15 isPrivateZone] || (objc_msgSend(v8, "isDocumentsFolder") & 1) != 0 || (objc_msgSend(v4, "parentClientZone"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToClientZone:", v15), v16, !v17))
    {
      v5 = 1;
LABEL_15:

      goto LABEL_16;
    }

    v31 = [v15 asPrivateClientZone];
    v18 = [(BRCSessionContext *)self->_sessionContext accountFacade];
    if ([v13 optimisticallyPCSChainWithAccountFacade:v18])
    {
      v19 = [(BRCSessionContext *)self->_sessionContext accountFacade];
      v20 = [v13 optimisticallyPCSChainDuringResetWithAccountFacade:v19];
      v21 = v20 | v32 ^ 1;
    }

    else
    {
      v21 = 0;
    }

    v23 = [v13 should2PhasePCSChain];
    v24 = [v31 pcsChainStateForItem:v8];
    if ((v24 & 0xFFFFFFFE) == 2)
    {
      if ([v4 isDirectory])
      {
        [(NSMutableSet *)self->_fullyChainedParentIDWhitelist addObject:v8];
      }

      if (v6)
      {
        v5 = 8;
      }

      else
      {
        v5 = 16;
      }

      goto LABEL_52;
    }

    v25 = v24;
    if (([(NSMutableSet *)self->_fullyChainedParentIDWhitelist containsObject:v10]& 1) != 0)
    {
LABEL_25:
      [(NSMutableSet *)self->_fullyChainedParentIDWhitelist addObject:v10];
      if ([v4 isDirectory])
      {
        [(NSMutableSet *)self->_fullyChainedParentIDWhitelist addObject:v8];
      }

      v5 = 8;
      goto LABEL_52;
    }

    if (([(NSMutableSet *)self->_halfChainedParentIDWhitelist containsObject:v10]& 1) != 0)
    {
      v26 = 4;
    }

    else
    {
      v26 = [v31 pcsChainStateForItem:v10];
      if ((v26 & 0xFFFFFFFE) == 2)
      {
        goto LABEL_25;
      }
    }

    v30 = v26;
    if ((v21 & 1) != 0 && [v4 isInDocumentOrTrashScope])
    {
      if ([v4 isDirectory])
      {
        if (v30 < 2 || ([v31 parentIDHasLiveUnchainedChildren:v8] & 1) != 0)
        {
          if (!((v25 < 2) | v6 & 1))
          {
LABEL_51:
            v5 = 1;
            goto LABEL_52;
          }

          goto LABEL_42;
        }

        [(NSMutableSet *)self->_fullyChainedParentIDWhitelist addObject:v8];
LABEL_54:
        v5 = 4;
        goto LABEL_52;
      }

      if (v25 < 2)
      {
        v28 = v23;
      }

      else
      {
        v28 = 0;
      }

      if (v30 >= 2 && !v28)
      {
        goto LABEL_54;
      }

      v29 = [v4 isDocument];
      if (v25 > 1 || (v29 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v27 = v6 ^ 1;
      if (v25 < 2)
      {
        v27 = 1;
      }

      if (v27)
      {
        goto LABEL_51;
      }

      if ([v4 isDirectory])
      {
LABEL_42:
        [(NSMutableSet *)self->_halfChainedParentIDWhitelist addObject:v8];
      }
    }

    v5 = 2;
LABEL_52:

    goto LABEL_15;
  }

  v5 = 8;
  if ([v4 hasValidCKInfo])
  {
    if ([v4 isKnownByServer])
    {
      v5 = 32;
    }

    else
    {
      v5 = 8;
    }
  }

LABEL_16:

  return v5;
}

- (BOOL)_checkIfShouldDedicateOpToSaltingBasehashItem:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 isDead] & 1) == 0 && objc_msgSend(v4, "shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:", 0))
  {
    v5 = [v4 st];
    v6 = [v5 parentID];

    v7 = [v4 parentClientZone];
    v8 = [v7 saltingStateForItemID:v6];
    if (v8 > 2)
    {
      if (v8 == -1 && !self->_rootChildBasehashSalt && [v6 isNonDesktopRoot])
      {
        v15 = [(NSMutableDictionary *)self->_parentItemIDToChildBasehashSalt objectForKeyedSubscript:v6];

        if (v15)
        {
          [BRCSyncUpOperationBuilder _checkIfShouldDedicateOpToSaltingBasehashItem:];
        }

        v16 = [v4 parentClientZone];
        v17 = [v16 asPrivateClientZone];
        v18 = [v17 childBaseSaltForItemID:v6];
        rootChildBasehashSalt = self->_rootChildBasehashSalt;
        self->_rootChildBasehashSalt = v18;

        v20 = self->_rootChildBasehashSalt;
        if (!v20)
        {
          v21 = [MEMORY[0x277CBEA90] brc_generateSaltingKey];
          v22 = self->_rootChildBasehashSalt;
          self->_rootChildBasehashSalt = v21;

          v23 = brc_bread_crumbs();
          v24 = brc_default_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v37 = [(NSData *)self->_rootChildBasehashSalt brc_truncatedSHA256];
            v38 = [v37 brc_hexadecimalString];
            v39 = [v6 debugDescription];
            v40 = 138412802;
            v41 = v38;
            v42 = 2112;
            v43 = v39;
            v44 = 2112;
            v45 = v23;
            _os_log_debug_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] Generated root child basehash salt %@ for %@%@", &v40, 0x20u);
          }

          v20 = self->_rootChildBasehashSalt;
        }

        [(NSMutableDictionary *)self->_parentItemIDToChildBasehashSalt setObject:v20 forKeyedSubscript:v6];
      }
    }

    else if (([v4 localDiffs] & 0x1000000060) != 0)
    {
      v9 = [v7 itemByItemID:v6];
      v10 = [v9 asDirectory];
      itemNeedingBasehashSalting = self->_itemNeedingBasehashSalting;
      self->_itemNeedingBasehashSalting = v10;

      v12 = brc_bread_crumbs();
      v13 = 1;
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [BRCSyncUpOperationBuilder _checkIfShouldDedicateOpToSaltingBasehashItem:v6];
      }

      goto LABEL_26;
    }

    if (![v4 isDirectory])
    {
      v13 = 0;
      goto LABEL_28;
    }

    v25 = [v4 clientZone];
    v26 = [v4 itemID];
    v12 = [v25 childBaseSaltForItemID:v26];

    if (!v12)
    {
      parentItemIDToChildBasehashSalt = self->_parentItemIDToChildBasehashSalt;
      v28 = [v4 itemID];
      v29 = [(NSMutableDictionary *)parentItemIDToChildBasehashSalt objectForKeyedSubscript:v28];

      if (v29)
      {
        [BRCSyncUpOperationBuilder _checkIfShouldDedicateOpToSaltingBasehashItem:];
      }

      v12 = [MEMORY[0x277CBEA90] brc_generateSaltingKey];
      v30 = brc_bread_crumbs();
      v31 = brc_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v35 = [v4 itemID];
        v36 = [v35 debugDescription];
        v40 = 138412802;
        v41 = v12;
        v42 = 2112;
        v43 = v36;
        v44 = 2112;
        v45 = v30;
        _os_log_debug_impl(&dword_223E7A000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] Generated child basehash salt %@ for %@%@", &v40, 0x20u);
      }
    }

    v32 = self->_parentItemIDToChildBasehashSalt;
    v14 = [v4 itemID];
    [(NSMutableDictionary *)v32 setObject:v12 forKeyedSubscript:v14];
    v13 = 0;
LABEL_26:

LABEL_28:
    goto LABEL_29;
  }

  v13 = 0;
LABEL_29:

  v33 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_checkIfShouldDedicateOpToPCSChainingItem:(id)a3
{
  v5 = a3;
  if ([v5 isDead])
  {
    goto LABEL_11;
  }

  v6 = [v5 appLibrary];
  v7 = [v6 mangledID];
  v8 = [BRCUserDefaults defaultsForMangledID:v7];
  v9 = [v8 should2PhasePCSChain];

  if (([v5 isDeadOrMissingInServerTruth] & 1) != 0 || (objc_msgSend(v5, "localDiffs") & 0x20) == 0 || (objc_msgSend(v5, "isDirectory") & 1) == 0 && (objc_msgSend(v5, "isDocument") & v9) != 1)
  {
    goto LABEL_11;
  }

  v10 = [v5 itemID];
  if ([v10 isDocumentsFolder])
  {
    goto LABEL_7;
  }

  v11 = [v5 clientZone];
  v12 = [v11 isPrivateZone];

  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = [v5 clientZone];
  v10 = [v13 asPrivateClientZone];

  fullyChainedParentIDWhitelist = self->_fullyChainedParentIDWhitelist;
  v15 = [v5 st];
  v16 = [v15 parentID];
  if ([(NSMutableSet *)fullyChainedParentIDWhitelist containsObject:v16])
  {
  }

  else
  {
    v19 = [v5 st];
    v20 = [v19 parentID];
    v21 = [v10 pcsChainStateForItem:v20] & 0xFFFFFFFE;

    if (v21 != 2)
    {
LABEL_7:

LABEL_11:
      v17 = 0;
      goto LABEL_12;
    }
  }

  v22 = [v5 itemID];
  v23 = [v10 pcsChainStateForItem:v22];

  if (((v23 < 2) & v9) == 0)
  {
    if ((v23 & 0xFFFFFFFE) == 2)
    {
      goto LABEL_7;
    }

    v26 = [v5 itemID];
    v27 = [v10 parentIDHasLiveUnchainedChildren:v26];

    if (!v27)
    {
      goto LABEL_7;
    }
  }

  v24 = brc_bread_crumbs();
  v25 = brc_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [BRCSyncUpOperationBuilder _checkIfShouldDedicateOpToPCSChainingItem:v5];
  }

  objc_storeStrong(&self->_itemNeedingPCSChaining, a3);
  v17 = 1;
LABEL_12:

  return v17;
}

- (BOOL)checkIfSyncAllowedInSharedZoneForItem:(id)a3
{
  v4 = a3;
  v5 = [(BRCSyncUpOperation *)self->_op serverZone];
  if (![v5 isSharedZone] || objc_msgSend(v4, "isSharedToMeTopLevelItem") && (objc_msgSend(v4, "isDead") & 1) != 0)
  {
    v6 = 1;
    goto LABEL_25;
  }

  if ([v4 isDeadOrMissingInServerTruth] && objc_msgSend(v4, "isSharedToMeTopLevelItem"))
  {
    v7 = [v4 serverZone];
    if (([v7 state] & 4) != 0)
    {
    }

    else
    {
      v8 = [v4 localDiffs];

      if ((v8 & 0x400000000000000) != 0)
      {
        v9 = brc_bread_crumbs();
        v10 = brc_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [BRCSyncUpOperationBuilder checkIfSyncAllowedInSharedZoneForItem:];
        }

LABEL_24:
        v6 = 0;
        goto LABEL_25;
      }
    }

    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperationBuilder checkIfSyncAllowedInSharedZoneForItem:];
    }

    [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:v4 serverItem:0 inZone:v5];
    goto LABEL_24;
  }

  v11 = [v4 clientZone];
  v12 = [v4 itemID];
  v13 = [v11 serverItemByItemID:v12];

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v4;
  }

  v15 = [v14 sharingOptions];
  v6 = (v15 & 0x20) == 0;
  if ((v15 & 0x20) != 0)
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperationBuilder checkIfSyncAllowedInSharedZoneForItem:v4];
    }

    [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:v4 serverItem:v13 inZone:v5];
  }

LABEL_25:
  return v6;
}

- (float)addDeletionOfItem:(id)a3
{
  v4 = a3;
  if ([v4 isSharedToMeTopLevelItem])
  {
    [BRCSyncUpOperationBuilder addDeletionOfItem:];
  }

  v5 = [v4 structureRecordID];
  v6 = [v4 st];

  v7 = [v6 ckInfo];

  [(BRCSyncUpOperationBuilder *)self addDeletionOfRecordID:v5 ckInfo:v7];
  v9 = v8;

  return v9;
}

- (float)addDeletionOfRecordID:(id)a3 ckInfo:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_op;
  v9 = [(BRCSyncUpOperation *)v8 deletedRecordIDs];
  [v9 addObject:v6];

  if ([v7 hasEtag])
  {
    v10 = [v7 etag];
    v11 = [(BRCSyncUpOperation *)v8 recordIDsToDeleteToEtags];
    v12 = v11;
    v13 = v10;
    v14 = v6;
LABEL_7:
    [v11 setObject:v13 forKeyedSubscript:v14];
    goto LABEL_8;
  }

  if ([v7 hasEtagBeforeCrossZoneMove])
  {
    v15 = [(BRCSyncUpOperation *)v8 pluginFieldsForRecordDeletesByID];
    v10 = [v15 objectForKeyedSubscript:v6];

    if (!v10)
    {
      v10 = objc_opt_new();
      v16 = [(BRCSyncUpOperation *)v8 pluginFieldsForRecordDeletesByID];
      [v16 setObject:v10 forKeyedSubscript:v6];
    }

    v12 = [v7 etagBeforeCrossZoneMove];
    v14 = @"br_etagInPreviousZone";
    v11 = v10;
    v13 = v12;
    goto LABEL_7;
  }

  v10 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = v10;
    _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] item should really have an etag%@", &v27, 0xCu);
  }

LABEL_8:

  if ([v7 hasDeletionChangeToken])
  {
    v17 = [(__CFString *)v6 recordName];
    v18 = [v17 hasPrefix:@"shareAlias/"];

    if ((v18 & 1) == 0)
    {
      v19 = [(BRCSyncUpOperation *)v8 pluginFieldsForRecordDeletesByID];
      v20 = [v19 objectForKeyedSubscript:v6];

      if (!v20)
      {
        v20 = objc_opt_new();
        v21 = [(BRCSyncUpOperation *)v8 pluginFieldsForRecordDeletesByID];
        [v21 setObject:v20 forKeyedSubscript:v6];
      }

      v22 = [v7 deletionChangeToken];
      [v20 setObject:v22 forKeyedSubscript:@"br_deleteChangeToken"];
    }
  }

  [(BRCUserDefaults *)self->_defaults syncUpStructureDeleteCost];
  v24 = v23;

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (id)_getChildBasehashSaltForItemID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_parentItemIDToChildBasehashSalt objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x277CBEB68] null];

    if (v6 == v7)
    {
      v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = [(BRCSyncUpOperation *)self->_op serverZone];
  v10 = [v9 clientZone];
  v6 = [v10 childBaseSaltForItemID:v4];

  if (v6)
  {
    [(NSMutableDictionary *)self->_parentItemIDToChildBasehashSalt setObject:v6 forKeyedSubscript:v4];
LABEL_6:
    v8 = v6;
    v6 = v8;
    goto LABEL_7;
  }

  v12 = [MEMORY[0x277CBEB68] null];
  [(NSMutableDictionary *)self->_parentItemIDToChildBasehashSalt setObject:v12 forKeyedSubscript:v4];

  v8 = 0;
  v6 = 0;
LABEL_7:

  return v8;
}

- (id)_getChildBasehashSaltForItem:(id)a3
{
  v4 = a3;
  if ([v4 shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:1] && objc_msgSend(v4, "isDirectory"))
  {
    v5 = [v4 itemID];
    v6 = [(BRCSyncUpOperationBuilder *)self _getChildBasehashSaltForItemID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_getSaltForItem:(id)a3
{
  v4 = a3;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  v6 = [v5 supportsEnhancedDrivePrivacy];

  if (v6 && ([v4 isSharedToMeTopLevelItem] & 1) == 0)
  {
    v8 = [v4 st];
    v9 = [v8 parentID];

    if (!v9)
    {
      [BRCSyncUpOperationBuilder _getSaltForItem:];
    }

    v7 = [(BRCSyncUpOperationBuilder *)self _getChildBasehashSaltForItemID:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_generateSaltGetterBlock
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__BRCSyncUpOperationBuilder__generateSaltGetterBlock__block_invoke;
  v5[3] = &unk_2785045C8;
  v5[4] = self;
  v2 = MEMORY[0x22AA4A310](v5, a2);
  v3 = MEMORY[0x22AA4A310]();

  return v3;
}

- (id)_generateChildBasehashSaltGetterBlock
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__BRCSyncUpOperationBuilder__generateChildBasehashSaltGetterBlock__block_invoke;
  v5[3] = &unk_2785045C8;
  v5[4] = self;
  v2 = MEMORY[0x22AA4A310](v5, a2);
  v3 = MEMORY[0x22AA4A310]();

  return v3;
}

- (float)addEditOfSharedTopLevelItem:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_op;
  v6 = [(BRCSyncUpOperation *)v5 serverZone];
  v7 = [v6 isSharedZone];

  if (!v7)
  {
    v10 = [v4 localDiffs];
    v11 = [v4 parentClientZone];
    v12 = [(BRCSyncUpOperation *)v5 serverZone];
    v13 = [v12 clientZone];
    v14 = [v11 isEqualToClientZone:v13];

    if ((v14 & 1) == 0)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 138412546;
        v36 = v4;
        v37 = 2112;
        v38 = v24;
        _os_log_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEFAULT, "[WARNING] Fake syncing up share alias in the wrong zone! %@%@", &v35, 0x16u);
      }

      goto LABEL_15;
    }

    if ((v10 & 0x1A69) == 0)
    {
LABEL_16:
      v8 = [(BRCSyncUpOperation *)v5 serverZone];
      [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:v4 serverItem:0 inZone:v8];
      goto LABEL_17;
    }

    v15 = [v4 session];
    v16 = [v15 itemFetcher];
    v17 = [(BRCSyncUpOperation *)v5 serverZone];
    v18 = [v16 serverAliasItemForSharedItem:v4 inZone:v17];

    v19 = [(BRCSyncUpOperationBuilder *)self shouldPCSChainStatusForItem:v4];
    v20 = [(BRCSyncUpOperation *)v5 serverZone];
    v8 = [v4 structureRecordBeingDeadInServerTruth:v18 == 0 shouldPCSChainStatus:v19 inZone:v20];

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      if ((v19 & 0x2C) != 0)
      {
        v33 = "pcs chained ";
      }

      else
      {
        v33 = "";
      }

      v34 = [v8 description];
      v35 = 136315650;
      v36 = v33;
      v37 = 2112;
      v38 = v34;
      v39 = 2112;
      v40 = v21;
      _os_log_debug_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] Syncing up %sshared document alias record %@%@", &v35, 0x20u);
    }

    if (v8)
    {
      v23 = [(BRCSyncUpOperation *)v5 recordsToSave];
      [v23 addObject:v8];

      if ([v4 isFromInitialScan])
      {
        [(BRCUserDefaults *)self->_defaults syncUpInitialItemCost];
      }

      else
      {
        v31 = [v4 isKnownByServer];
        defaults = self->_defaults;
        if (v31)
        {
          [(BRCUserDefaults *)defaults syncUpStructureEditCost];
        }

        else
        {
          [(BRCUserDefaults *)defaults syncUpStructureCreateCost];
        }
      }

      goto LABEL_17;
    }

LABEL_22:
    v26 = -1.0;
    goto LABEL_18;
  }

  if (![v4 isDocument])
  {
    if ([v4 isDirectory])
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [BRCSyncUpOperationBuilder addEditOfSharedTopLevelItem:];
      }

LABEL_15:

      goto LABEL_16;
    }

    v29 = brc_bread_crumbs();
    v30 = brc_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      [BRCSyncUpOperationBuilder addEditOfSharedTopLevelItem:];
    }

    goto LABEL_22;
  }

  v8 = [v4 asDocument];
  [(BRCSyncUpOperationBuilder *)self addEditOfDocument:v8];
LABEL_17:
  v26 = v9;

LABEL_18:
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (float)addDeletionOfSharedTopLevelItem:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BRCSyncUpOperation *)self->_op serverZone];
  v6 = [v5 isSharedZone];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CBC5D0]);
    v8 = [v4 asShareableItem];
    v9 = [v7 initShareIDWithShareableItem:v8];

    v10 = [(BRCSyncUpOperation *)self->_op deletedRecordIDs];
    [v10 addObject:v9];

    [(BRCUserDefaults *)self->_defaults syncUpDocumentDeleteCost];
    v12 = v11;
  }

  else
  {
    v13 = [(BRCSyncUpOperation *)self->_op serverZone];
    v9 = [v4 structureRecordIDInZone:v13];

    if (v9)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [BRCSyncUpOperationBuilder addDeletionOfSharedTopLevelItem:];
      }

      v16 = [v4 st];
      v17 = [v16 ckInfo];
      [(BRCSyncUpOperationBuilder *)self addDeletionOfRecordID:v9 ckInfo:v17];
      v12 = v18;
    }

    else
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = v19;
        _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] syncing the structure of an item without an alias item%@", &v24, 0xCu);
      }

      v16 = [(BRCSyncUpOperation *)self->_op serverZone];
      [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:v4 serverItem:0 inZone:v16];
      v12 = v21;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)prepareAppLibraryRootSyncUpForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 appLibrary];
  v6 = [v5 mangledID];

  if (v6)
  {
    v7 = [v4 clientZone];
    if (([v7 isPrivateZone] & 1) == 0)
    {
LABEL_10:

      goto LABEL_11;
    }

    v8 = [v4 appLibrary];
    if (([v8 state] & 0x300002) != 0x200000)
    {
LABEL_9:

      goto LABEL_10;
    }

    v9 = [(BRCSyncUpOperation *)self->_op createdAppLibraryNames];
    v10 = [v6 appLibraryOrZoneName];
    if ([v9 containsObject:v10])
    {
LABEL_8:

      goto LABEL_9;
    }

    v11 = [v4 clientZone];
    v12 = [v11 zoneName];
    if (![v12 isEqualToString:*MEMORY[0x277CFAD68]] || (objc_msgSend(v6, "isCloudDocsMangledID") & 1) != 0)
    {

      goto LABEL_8;
    }

    v13 = [v4 appLibrary];
    v38 = [v13 isiCloudDesktopAppLibrary];

    if ((v38 & 1) == 0)
    {
      v14 = objc_alloc(MEMORY[0x277CBC5F8]);
      v15 = [v4 clientZone];
      v16 = [v15 zoneName];
      v17 = [v14 initWithZoneName:v16 ownerName:*MEMORY[0x277CBBF28]];

      v18 = [v4 appLibrary];
      v19 = [v18 childBasehashSalt];

      v20 = [MEMORY[0x277CBC5A0] rootAppLibraryRecordForAppLibraryID:v6 zoneID:v17];
      v21 = v20;
      if (v19)
      {
        [v20 brc_fillWithChildBasehashSalt:v19];
        v22 = [v4 appLibrary];
        v23 = [v22 saltingState];

        if (v23 <= 1)
        {
          v24 = 3;
        }

        else
        {
          v24 = v23;
        }

        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
        [v21 setObject:v25 forKeyedSubscript:@"saltingState"];
      }

      v26 = [v4 appLibrary];
      if ([v26 includesDataScope])
      {
      }

      else
      {
        [v4 appLibrary];
        v27 = v39 = v17;
        [v27 mangledID];
        v28 = v37 = v19;
        v29 = [BRCUserDefaults defaultsForMangledID:v28];
        v30 = [(BRCSessionContext *)self->_sessionContext accountFacade];
        v31 = [v29 optimisticallyPCSChainWithAccountFacade:v30];

        v19 = v37;
        v17 = v39;

        if (v31)
        {
          [v21 setWantsChainPCS:1];
        }
      }

      if (v21)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [BRCSyncUpOperationBuilder prepareAppLibraryRootSyncUpForItem:];
        }

        v34 = [(BRCSyncUpOperation *)self->_op recordsToSave];
        [v34 addObject:v21];

        v35 = [(BRCSyncUpOperation *)self->_op createdAppLibraryNames];
        v36 = [v6 appLibraryOrZoneName];
        [v35 addObject:v36];
      }
    }
  }

LABEL_11:
}

- (float)fakeSyncForItem:(id)a3 serverItem:(id)a4 inZone:(id)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 st];
  v11 = [v10 ckInfo];
  v12 = [v11 etag];
  if (v12 || ![v7 isSharedToMeChildItem])
  {
  }

  else
  {
    v13 = [v9 isSharedZone];

    if (v13)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [BRCSyncUpOperationBuilder fakeSyncForItem:serverItem:inZone:];
      }

      [v7 prepareForSyncUpSideCarZone];
      [v7 markLatestSyncRequestAcknowledgedInZone:&unk_2837B0298];
    }
  }

  v16 = [v7 localDiffs];
  v17 = [v9 dbRowID];
  v18 = [v7 inFlightSyncUpDiffsInZoneRowID:v17];

  if ([v7 isSharedToMeChildItem])
  {
    v19 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:v7];
    v20 = [v19 brc_shareItemID];
    v21 = [v7 clientZone];
    v22 = [v21 serverItemByItemID:v20];
    v23 = [v22 isLive];

    if ((v23 & 1) == 0)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v61 = v7;
        v62 = 2112;
        v63 = v24;
        _os_log_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEFAULT, "[WARNING] Marking %@ as rejected because the root share is dead%@", buf, 0x16u);
      }
    }

    v26 = v23 ^ 1;
LABEL_14:

    goto LABEL_18;
  }

  if ([v7 isSharedToMeTopLevelItem])
  {
    v27 = [v7 clientZone];
    v28 = [v7 itemID];
    v29 = [v27 serverItemByItemID:v28];
    v30 = [v29 isLive];

    if ((v30 & 1) == 0)
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v61 = v7;
        v62 = 2112;
        v63 = v19;
        _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] Marking %@ as rejected because the server item is dead%@", buf, 0x16u);
      }

      v26 = 1;
      goto LABEL_14;
    }
  }

  v26 = 0;
LABEL_18:
  if ([v7 isDocumentBeingCopiedToNewZone])
  {
    v31 = brc_bread_crumbs();
    v32 = brc_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      [BRCSyncUpOperationBuilder fakeSyncForItem:serverItem:inZone:];
    }
  }

  v33 = v18 | v16;
  if (v26)
  {
    [v7 markForceRejected];
    goto LABEL_39;
  }

  if (([v7 isKnownByServer] & 1) != 0 || !objc_msgSend(v7, "isSharedToMeChildItem"))
  {
    [v7 prepareForSyncUpInZone:v9];
    v38 = [v9 dbRowID];
    [v7 markLatestSyncRequestAcknowledgedInZone:v38];

    if (([v8 sharingOptions] & 0x20) != 0 && objc_msgSend(v7, "isDocument"))
    {
      v39 = [v7 asDocument];
      v40 = [v39 currentVersion];
      v41 = [v40 ckInfo];
      if (v41)
      {

        if ((v33 & 0x180000) != 0)
        {
          v42 = [v7 asDocument];
          v43 = [v42 currentVersion];
          v44 = MEMORY[0x277CCA9B8];
          v45 = [v7 asDocument];
          v46 = [v45 fileIDForUpload];
          v47 = [v44 brc_errorItemIneligibleFromSyncForInode:v46 localizedDescription:0];
          [v43 setUploadError:v47];
        }
      }

      else
      {
      }
    }

LABEL_39:
    v37 = 0;
    if ((v33 & 0x1000000000000000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if ([v7 isDocument])
  {
    v34 = [v7 asDocument];
    v35 = [v34 currentVersion];
    v36 = [MEMORY[0x277CCA9B8] brc_errorItemIneligibleFromSyncForInode:0 localizedDescription:0];
    [v35 setUploadError:v36];
  }

  v37 = 1;
  if ((v33 & 0x1000000000000000) == 0)
  {
LABEL_40:
    if (v8)
    {
      goto LABEL_42;
    }

    v48 = [v9 clientZone];
    v49 = [v7 itemID];
    v8 = [v48 serverItemByItemID:v49];

    if (v8)
    {
LABEL_42:
      memset(v59, 0, sizeof(v59));
      __brc_create_section(0, "[BRCSyncUpOperationBuilder fakeSyncForItem:serverItem:inZone:]", 559, 0, v59);
      v50 = brc_bread_crumbs();
      v51 = brc_default_log();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        v61 = v59[0];
        v62 = 2112;
        v63 = v8;
        v64 = 2112;
        v65 = v50;
        _os_log_debug_impl(&dword_223E7A000, v51, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx re-scheduling apply jobs for %@ because it finished sync-up%@", buf, 0x20u);
      }

      v52 = [v9 clientZone];
      [v52 scheduleApplyWithLocalItem:v7 serverItem:v8];

      __brc_leave_section(v59);
    }
  }

LABEL_45:
  [v7 saveToDB];
  if (v37)
  {
    v53 = [*(v58 + 56) syncUpCallback];
    v54 = [v9 dbRowID];
    [v53 ineligibleSyncUpCallback:v7 inZone:v54];
  }

  v55 = *MEMORY[0x277D85DE8];
  return -1.0;
}

- (void)handleDeletionOfSharedItem:(id)a3
{
  v4 = MEMORY[0x277CBC5D0];
  v5 = a3;
  v7 = [[v4 alloc] initShareIDWithShareableItem:v5];

  v6 = [(BRCSyncUpOperation *)self->_op deletedRecordIDs];
  [v6 addObject:v7];
}

- (void)handleEditOfSharedItem:(id)a3
{
  v4 = a3;
  if ([v4 itemScope] == 3)
  {
    v5 = [objc_alloc(MEMORY[0x277CBC5D0]) initShareIDWithShareableItem:v4];
    v6 = [v4 st];
    v7 = [v6 iWorkShareable];

    op = self->_op;
    if (v7)
    {
      [(BRCSyncUpOperation *)op iworkUnsharedShareIDs];
    }

    else
    {
      [(BRCSyncUpOperation *)op deletedRecordIDs];
    }
    v14 = ;
    [v14 addObject:v5];

    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperationBuilder handleEditOfSharedItem:];
    }

LABEL_10:

    goto LABEL_11;
  }

  if (([v4 localDiffs] & 0x40) != 0)
  {
    v5 = [objc_alloc(MEMORY[0x277CBC5D0]) initShareIDWithShareableItem:v4];
    v9 = [v4 st];
    v10 = [v9 logicalName];
    v11 = [(BRCSyncUpOperation *)self->_op renamedShareIDsToNames];
    [v11 setObject:v10 forKeyedSubscript:v5];

    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperationBuilder handleEditOfSharedItem:];
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (float)addEditOfDirectory:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 isDeadOrMissingInServerTruth];
  v6 = (v5 & 1) != 0 || ([v4 localDiffs] & 0x3FFE) != 0;
  v7 = [v4 isKnownByServer];
  v8 = [v4 itemID];
  if ([v8 isDocumentsFolder])
  {
    v9 = [v4 appLibrary];
    v10 = (([v9 state] & 0x40000) == 0) | v7;

    v11 = -1.0;
    if ((v10 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  if ([v4 hasShareIDAndIsOwnedByMe])
  {
    v12 = [v4 asShareableItem];
    [(BRCSyncUpOperationBuilder *)self handleEditOfSharedItem:v12];
  }

  if (v6)
  {
    v13 = [(BRCSyncUpOperationBuilder *)self shouldPCSChainStatusForItem:v4];
    v14 = [(BRCSyncUpOperation *)self->_op stageID];
    v15 = [(BRCSyncUpOperationBuilder *)self _generateSaltGetterBlock];
    v16 = [(BRCSyncUpOperationBuilder *)self _generateChildBasehashSaltGetterBlock];
    v17 = [v4 structureRecordBeingDeadInServerTruth:v5 stageID:v14 shouldPCSChainStatus:v13 saltGetter:v15 childBasehashSaltGetter:v16];

    if (v17)
    {
      if ([v4 shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:0] && objc_msgSend(v4, "isNewToServer:", 0))
      {
        v18 = [v17 encryptedValues];
        v19 = [v18 objectForKeyedSubscript:@"childBasehashSalt"];

        if (!v19)
        {
          [BRCSyncUpOperationBuilder addEditOfDirectory:];
        }

        [v17 setObject:&unk_2837B02B0 forKeyedSubscript:@"saltingState"];
      }

      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v30 = "half chained ";
        if (v13 != 2)
        {
          v30 = "";
        }

        if ((v13 & 0x2C) != 0)
        {
          v31 = "pcs chained ";
        }

        else
        {
          v31 = v30;
        }

        v32 = [v17 description];
        v33 = v32;
        v34 = "\n(dead in server truth)";
        v35 = 136315906;
        v36 = v31;
        if (!v5)
        {
          v34 = "";
        }

        v37 = 2112;
        v38 = v32;
        v39 = 2080;
        v40 = v34;
        v41 = 2112;
        v42 = v20;
        _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] Syncing up %sdirectory record %@%s%@", &v35, 0x2Au);
      }

      v22 = [(BRCSyncUpOperation *)self->_op recordsToSave];
      [v22 addObject:v17];

      if ([v4 isFromInitialScan])
      {
        [(BRCUserDefaults *)self->_defaults syncUpInitialItemCost];
      }

      else
      {
        v26 = [v4 isKnownByServer];
        defaults = self->_defaults;
        if (v26)
        {
          [(BRCUserDefaults *)defaults syncUpStructureEditCost];
        }

        else
        {
          [(BRCUserDefaults *)defaults syncUpStructureCreateCost];
        }
      }

      v11 = v23;
    }

    else
    {
      v11 = -1.0;
    }
  }

  else
  {
    v24 = [(BRCSyncUpOperation *)self->_op serverZone];
    [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:v4 serverItem:0 inZone:v24];
    v11 = v25;
  }

LABEL_27:

  v28 = *MEMORY[0x277D85DE8];
  return v11;
}

- (float)addDeletionOfDirectory:(id)a3
{
  v4 = a3;
  if ([v4 hasShareIDAndIsOwnedByMe])
  {
    v5 = [v4 asShareableItem];
    [(BRCSyncUpOperationBuilder *)self handleDeletionOfSharedItem:v5];
  }

  if ([v4 isSharedToMeTopLevelItem])
  {
    [BRCSyncUpOperationBuilder addDeletionOfDirectory:];
  }

  [(BRCSyncUpOperationBuilder *)self addDeletionOfItem:v4];
  v7 = v6;

  return v7;
}

- (float)addDeletionOfAlias:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 targetClientZone];
  if ([v5 isSharedZone])
  {
    v6 = [v4 targetItemID];
    v7 = [v5 itemByItemID:v6];
    v8 = [v7 asSharedToMeTopLevelItem];

    v9 = [v8 parentClientZone];
    v10 = [v4 clientZone];
    v11 = [v9 isEqualToClientZone:v10];

    if (v11)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412546;
        v21 = v4;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] Faking sync for alias item alive in the same zone as the target %@%@", &v20, 0x16u);
      }

      v14 = [v4 serverZone];
      [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:v4 serverItem:0 inZone:v14];
      v16 = v15;

      goto LABEL_10;
    }
  }

  if ([v4 isSharedToMeTopLevelItem])
  {
    [BRCSyncUpOperationBuilder addDeletionOfAlias:];
  }

  [(BRCSyncUpOperationBuilder *)self addDeletionOfItem:v4];
  v16 = v17;
LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (float)addDeletionOfDocument:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_op;
  if ([v4 hasShareIDAndIsOwnedByMe])
  {
    v6 = [v4 asShareableItem];
    [(BRCSyncUpOperationBuilder *)self handleDeletionOfSharedItem:v6];
  }

  v7 = [v4 currentVersion];
  v8 = [v7 ckInfo];

  if (([v8 hasEtag] & 1) != 0 || objc_msgSend(v8, "hasEtagBeforeCrossZoneMove"))
  {
    v9 = [v4 documentRecordID];
    [(BRCSyncUpOperationBuilder *)self addDeletionOfRecordID:v9 ckInfo:v8];
    [(BRCSyncUpOperationBuilder *)self addDeletionOfItem:v4];
    v10 = [v4 isInDocumentScope];
    defaults = self->_defaults;
    if (v10)
    {
      [(BRCUserDefaults *)defaults syncUpDocumentDeleteCost];
    }

    else
    {
      [(BRCUserDefaults *)defaults syncUpDataDeleteCost];
    }

    v13 = v12;
  }

  else
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412546;
      v24 = self;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Not syncing deletion of ETag-less version: %@%@", &v23, 0x16u);
    }

    v16 = [v4 clientZone];
    v17 = [v4 itemID];
    v9 = [v16 serverItemByItemID:v17];

    if ([v9 isLive])
    {
      v18 = [v4 clientZone];
      [v18 scheduleApplyWithLocalItem:v4 serverItem:v9];
    }

    v19 = [(BRCSyncUpOperation *)v5 serverZone];
    [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:v4 serverItem:v9 inZone:v19];
    v13 = v20;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_recoverItemIDChangedWhileUploadingIfNecessary:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 currentVersion];
  v6 = [v5 uploadedAssets];

  if (v6)
  {
    v7 = [v6 recordID];
    v8 = [(BRCSessionContext *)self->_sessionContext zoneAppRetriever];
    v9 = [v7 brc_itemIDWithZoneAppRetriever:v8];

    if (v9 && ([v4 itemID], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToItemID:", v10), v10, (v11 & 1) == 0))
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v18 = [v4 itemID];
        v19 = 138412802;
        v20 = v9;
        v21 = 2112;
        v22 = v18;
        v23 = 2112;
        v24 = v13;
        _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ItemID changed while uploading (%@ -> %@), starting over%@", &v19, 0x20u);
      }

      v15 = [v4 currentVersion];
      [v15 clearUploadedAssets];

      [v4 markNeedsUploadOrSyncingUp];
      [v4 saveToDB];
      v12 = 1;
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

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_validateSharedDocumentFieldsForRecord:(id)a3 item:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BRCSyncUpOperationBuilder *)self _recoverItemIDChangedWhileUploadingIfNecessary:v7])
  {
    goto LABEL_5;
  }

  v8 = [v7 session];
  v9 = [v6 validateEnhancedDrivePrivacyFieldsWithSession:v8 error:0];

  if ((v9 & 1) == 0)
  {
    v11 = [v7 currentVersion];
    [v11 clearUploadedAssets];

    [v7 markNeedsUploadOrSyncingUp];
    [v7 saveToDB];
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = 1;
LABEL_6:

  return v10;
}

- (float)addEditOfDocument:(id)a3
{
  v162 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v153 = self->_op;
  v5 = [v4 isDeadOrMissingInServerTruth];
  v6 = [v4 localDiffs];
  v7 = [v4 st];
  v8 = [v7 ckInfo];
  v9 = v8;
  if (!v8 || (v5 & 1) != 0)
  {
    v11 = [v4 st];
    LODWORD(v10) = [v11 iWorkShareable];

    if ((v10 & v5) == 1)
    {
      v12 = [v4 sharingOptions] & 4;
      v13 = v12 == 0;
      v10 = v12 >> 2;
      goto LABEL_7;
    }
  }

  else
  {

    LOBYTE(v10) = 0;
  }

  v13 = 0;
LABEL_7:
  v14 = v6 & 0x3FFE;
  v15 = v6 & 0x1FE0000;
  if (![v4 sharingOptions])
  {
    goto LABEL_16;
  }

  v16 = [v4 currentVersion];
  v17 = [v16 ckInfo];
  if (v17)
  {

    goto LABEL_16;
  }

  v18 = [v4 clientZone];
  if ([v18 isPrivateZone])
  {
  }

  else
  {
    v19 = [v4 isSharedToMeTopLevelItem];

    if (!v19)
    {
      goto LABEL_16;
    }
  }

  v20 = brc_bread_crumbs();
  v21 = brc_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [BRCSyncUpOperationBuilder addEditOfDocument:];
  }

  LOBYTE(v10) = 1;
LABEL_16:
  v152 = v10;
  v22 = v15 != 0;
  v23 = v14 != 0;
  v24 = [v4 localDiffs];
  v25 = (v24 >> 59) & 1;
  v26 = ((v24 & 0x800000000000000) != 0) | v5;
  v27 = v26 | v22;
  v28 = [v4 serverZone];
  v29 = [v28 isSharedZone];

  if (v29)
  {
    v30 = [v4 isSharedToMeChildItem];
    v31 = [v4 clientZone];
    v32 = [v4 itemID];
    v33 = [v31 serverItemByItemID:v32];

    if (v5 && ([v4 isSharedToMeTopLevelItem] & 1) != 0 || (v33 ? (v34 = v33) : (v34 = v4), (objc_msgSend(v34, "sharingOptions") & 0x20) != 0))
    {
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [BRCSyncUpOperationBuilder addEditOfDocument:];
      }

      v27 = 0;
    }
  }

  else
  {
    v30 = v26 | v23;
  }

  v37 = v25 | v13;
  v38 = [(BRCSyncUpOperationBuilder *)self shouldPCSChainStatusForItem:v4];
  if (((v38 & 4) == 0) | v27 & 1)
  {
    v39 = v38;
  }

  else
  {
    v39 = 2;
  }

  if (v30 & 1 | ((v38 & 6) == 0))
  {
    v40 = v39;
  }

  else
  {
    v40 = 1;
  }

  v41 = v40;
  if ((v40 & 0xC) != 0)
  {
    v42 = brc_bread_crumbs();
    v43 = brc_default_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperationBuilder addEditOfDocument:];
    }

    v30 = 1;
  }

  else if ((v27 & 1) == 0)
  {
    v151 = v40;
    v48 = 0;
    v45 = 0;
    v53 = 0;
    goto LABEL_49;
  }

  v44 = [v4 currentVersion];
  v45 = [v44 uploadedAssets];

  if ([v45 brc_isfakeRecordWithErrorMarkerFor20716676])
  {
    v46 = brc_bread_crumbs();
    v47 = brc_default_log();
    if (os_log_type_enabled(v47, 0x90u))
    {
      [BRCSyncUpOperationBuilder addEditOfDocument:];
    }

    [v4 markForceUpload];
    [v4 saveToDB];
    v48 = 0;
    goto LABEL_62;
  }

  if (v45)
  {
    v49 = -1.0;
    if (![(BRCSyncUpOperationBuilder *)self _validateSharedDocumentFieldsForRecord:v45 item:v4])
    {
      v48 = 0;
      goto LABEL_63;
    }

    v50 = [v45 objectForKeyedSubscript:@"thumb1024"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v151 = v41;
    if (isKindOfClass)
    {
      v52 = [v45 objectForKeyedSubscript:@"thumb1024"];
      if ([v52 isRereferencedAssetUpload])
      {
        v48 = 0;
      }

      else
      {
        v77 = [v52 fileURL];
        v155 = 0;
        v78 = [v77 checkResourceIsReachableAndReturnError:&v155];
        v144 = v155;

        if ((v78 & 1) == 0)
        {
          v108 = brc_bread_crumbs();
          v109 = brc_default_log();
          if (os_log_type_enabled(v109, 0x90u))
          {
            [BRCSyncUpOperationBuilder addEditOfDocument:];
          }

          [v4 markForceUpload];
          [v4 saveToDB];

          v62 = v153;
          v48 = v144;
          goto LABEL_64;
        }

        v48 = v144;
      }
    }

    else
    {
      v48 = 0;
    }

    v79 = [v4 currentVersion];
    v80 = [v79 isPackage];

    v149 = v37;
    if (v80)
    {
      v145 = v48;
      v81 = [v45 objectForKeyedSubscript:@"pkgContent"];
      if (v81)
      {
        v82 = v81;
        v83 = [v45 objectForKeyedSubscript:@"pkgManifest"];
        if (v83)
        {
          v84 = v83;
          v85 = [v45 objectForKeyedSubscript:@"pkgSignature"];

          if (v85)
          {
            v86 = [v45 objectForKeyedSubscript:@"pkgContent"];
            v87 = [v45 objectForKeyedSubscript:@"pkgManifest"];
            v88 = [v45 objectForKeyedSubscript:@"thumb1024"];
            Current = CFAbsoluteTimeGetCurrent();
            v48 = v145;
            if ([v87 size] && (objc_msgSend(v87, "uploadReceiptExpiration"), v90 < Current) || objc_msgSend(v88, "size") && (objc_msgSend(v88, "uploadReceiptExpiration"), v91 < Current))
            {
              v92 = brc_bread_crumbs();
              v93 = brc_default_log();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v157 = v4;
                v158 = 2112;
                v159 = v92;
                _os_log_impl(&dword_223E7A000, v93, OS_LOG_TYPE_DEFAULT, "[WARNING] Forcing re-upload of an item which has an expired put receipt - %@%@", buf, 0x16u);
              }

              [v4 markForceUpload];
              [v4 saveToDB];

LABEL_131:
              goto LABEL_63;
            }

            goto LABEL_144;
          }
        }

        else
        {
        }
      }

      v110 = brc_bread_crumbs();
      v111 = brc_default_log();
      v48 = v145;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
      {
        [BRCSyncUpOperationBuilder addEditOfDocument:];
      }

LABEL_120:

      [v4 markForceUpload];
      [v4 saveToDB];
      goto LABEL_63;
    }

    v94 = [v45 objectForKeyedSubscript:@"fileContent"];
    if (v94)
    {
    }

    else
    {
      v95 = [v45 objectForKeyedSubscript:@"bookmarkContent"];

      if (!v95)
      {
        v110 = brc_bread_crumbs();
        v111 = brc_default_log();
        if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
        {
          [BRCSyncUpOperationBuilder addEditOfDocument:];
        }

        goto LABEL_120;
      }
    }

    v86 = [v45 objectForKeyedSubscript:@"fileContent"];
    v96 = [v45 objectForKeyedSubscript:@"thumb1024"];
    v97 = CFAbsoluteTimeGetCurrent();
    if ([v86 size])
    {
      [v86 uploadReceiptExpiration];
      if (v98 >= v97)
      {
        v146 = v48;
        v99 = v86;
        v100 = [v86 deviceID];
        v101 = [v100 longLongValue];
        v102 = [(BRCSessionContext *)self->_sessionContext volume];
        if (v101 == [v102 deviceID])
        {
          if (![v96 size])
          {

            v48 = v146;
            v86 = v99;
LABEL_143:

LABEL_144:
            goto LABEL_145;
          }

          [v96 uploadReceiptExpiration];
          v104 = v103;

          v48 = v146;
          v86 = v99;
          if (v104 >= v97)
          {
            goto LABEL_143;
          }
        }

        else
        {

          v48 = v146;
          v86 = v99;
        }
      }
    }

    else
    {
      if (![v96 size])
      {
        goto LABEL_143;
      }

      [v96 uploadReceiptExpiration];
      if (v105 >= v97)
      {
        goto LABEL_143;
      }
    }

    v112 = brc_bread_crumbs();
    v113 = brc_default_log();
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v157 = v4;
      v158 = 2112;
      v159 = v112;
      _os_log_impl(&dword_223E7A000, v113, OS_LOG_TYPE_DEFAULT, "[WARNING] Forcing re-upload of an item which has an expired put receipt - %@%@", buf, 0x16u);
    }

    [v4 markForceUpload];
    [v4 saveToDB];

    goto LABEL_131;
  }

  if ([v4 contentRecordNeedsForceAllFieldsWhenDeadInServerTruth:v5])
  {
    v65 = brc_bread_crumbs();
    v66 = brc_default_log();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperationBuilder addEditOfDocument:];
    }

    [v4 markForceUpload];
    [v4 saveToDB];
    v48 = 0;
    goto LABEL_61;
  }

  v149 = v37;
  v151 = v41;
  v45 = [v4 baseRecord];
  v48 = 0;
LABEL_145:
  v118 = v48;
  v119 = [v4 localDiffs];
  v120 = [(BRCSyncUpOperationBuilder *)self _getSaltForItem:v4];
  v154 = v48;
  LOBYTE(v119) = [v45 serializeVersion:v4 diffs:v119 deadInServerTruth:v5 basehashSalt:v120 error:&v154];
  v48 = v154;

  if ((v119 & 1) == 0)
  {
    v137 = brc_bread_crumbs();
    v138 = brc_default_log();
    v62 = v153;
    if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v157 = v48;
      v158 = 2112;
      v159 = v4;
      v160 = 2112;
      v161 = v137;
      _os_log_debug_impl(&dword_223E7A000, v138, OS_LOG_TYPE_DEBUG, "[DEBUG] Error creating record %@ for item %@%@", buf, 0x20u);
    }

    v49 = -1.0;
    goto LABEL_64;
  }

  v121 = [v4 session];
  v122 = [v45 validateEnhancedDrivePrivacyFieldsWithSession:v121 error:0];

  v49 = -1.0;
  if (!v122)
  {
    goto LABEL_63;
  }

  v123 = [v4 resolvedConflictLoserEtags];
  if ([v123 count])
  {
    v124 = [v123 allObjects];
    v125 = [(BRCSyncUpOperation *)v153 conflictLosersToResolveByRecordID];
    v126 = [v45 recordID];
    [v125 setObject:v124 forKeyedSubscript:v126];
  }

  v143 = v123;
  v53 = v45 != 0;
  v37 = v149;
  if (!v45)
  {
    goto LABEL_162;
  }

  if ((v151 & 0x2C) != 0)
  {
    v147 = [v4 itemID];
    v127 = [v4 serverZone];
    v128 = [v127 zoneID];
    [v147 pcsChainDocumentStructureReferenceInZoneID:v128];
    v130 = v129 = v48;
    [v45 setParent:v130];

    v48 = v129;
  }

  v131 = brc_bread_crumbs();
  v132 = brc_default_log();
  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
  {
    v148 = v48;
    if ((v151 & 0x2C) != 0)
    {
      v140 = "pcs chained ";
    }

    else
    {
      v140 = "";
    }

    v141 = [v45 description];
    *buf = 136315650;
    v157 = v140;
    v48 = v148;
    v158 = 2112;
    v159 = v141;
    v160 = 2112;
    v161 = v131;
    _os_log_debug_impl(&dword_223E7A000, v132, OS_LOG_TYPE_DEBUG, "[DEBUG] Syncing up %sversion record %@%@", buf, 0x20u);
  }

  v133 = brc_bread_crumbs();
  v134 = brc_default_log();
  if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
  {
    v142 = "";
    *buf = 138412802;
    v157 = v4;
    if (v5)
    {
      v142 = "\n(dead in server truth)";
    }

    v158 = 2080;
    v159 = v142;
    v160 = 2112;
    v161 = v133;
    _os_log_debug_impl(&dword_223E7A000, v134, OS_LOG_TYPE_DEBUG, "[DEBUG] for %@%s%@", buf, 0x20u);
  }

  v135 = [(BRCSyncUpOperation *)v153 recordsToSave];
  [v135 addObject:v45];

  v37 = v149;
  if (v152)
  {
    v136 = [(BRCSyncUpOperation *)v153 recordsNeedingUpdatedSharingProtectionInfo];
LABEL_161:
    v139 = v136;
    [v136 addObject:v45];

    goto LABEL_162;
  }

  if (v149)
  {
    v136 = [(BRCSyncUpOperation *)v153 recordsNeedingNewSharingProtectionInfo];
    goto LABEL_161;
  }

LABEL_162:

LABEL_49:
  if ([v4 hasShareIDAndIsOwnedByMe])
  {
    v54 = [v4 asShareableItem];
    [(BRCSyncUpOperationBuilder *)self handleEditOfSharedItem:v54];
  }

  if ((v30 & 1) == 0)
  {
    if (!v53)
    {
      v62 = v153;
      v69 = [(BRCSyncUpOperation *)v153 serverZone];
      [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:v4 serverItem:0 inZone:v69];
      v49 = v70;

      goto LABEL_64;
    }

    v62 = v153;
    goto LABEL_76;
  }

  v55 = [(BRCSyncUpOperation *)v153 stageID];
  v56 = [(BRCSyncUpOperationBuilder *)self _generateSaltGetterBlock];
  v57 = [v4 structureRecordBeingDeadInServerTruth:v5 stageID:v55 shouldPCSChainStatus:v151 saltGetter:v56 childBasehashSaltGetter:0];

  if (!v57)
  {
LABEL_61:
    v45 = 0;
LABEL_62:
    v49 = -1.0;
LABEL_63:
    v62 = v153;
    goto LABEL_64;
  }

  v58 = brc_bread_crumbs();
  v59 = brc_default_log();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
  {
    v114 = "";
    if (v151 == 2)
    {
      v114 = "half chained ";
    }

    v150 = v37;
    if ((v151 & 0x2C) != 0)
    {
      v115 = "pcs chained ";
    }

    else
    {
      v115 = v114;
    }

    v116 = [v57 description];
    *buf = 136315650;
    v157 = v115;
    v37 = v150;
    v158 = 2112;
    v159 = v116;
    v160 = 2112;
    v161 = v58;
    _os_log_debug_impl(&dword_223E7A000, v59, OS_LOG_TYPE_DEBUG, "[DEBUG] Syncing up %sdocument structure record %@%@", buf, 0x20u);
  }

  v60 = brc_bread_crumbs();
  v61 = brc_default_log();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    v117 = "";
    *buf = 138412802;
    v157 = v4;
    if (v5)
    {
      v117 = "\n(dead in server truth)";
    }

    v158 = 2080;
    v159 = v117;
    v160 = 2112;
    v161 = v60;
    _os_log_debug_impl(&dword_223E7A000, v61, OS_LOG_TYPE_DEBUG, "[DEBUG] for %@%s%@", buf, 0x20u);
  }

  v62 = v153;
  v63 = [(BRCSyncUpOperation *)v153 recordsToSave];
  [v63 addObject:v57];

  if (v152)
  {
    v64 = [(BRCSyncUpOperation *)v153 recordsNeedingUpdatedSharingProtectionInfo];
LABEL_73:
    v71 = v64;
    [v64 addObject:v57];

    goto LABEL_74;
  }

  if (v37)
  {
    v64 = [(BRCSyncUpOperation *)v153 recordsNeedingNewSharingProtectionInfo];
    goto LABEL_73;
  }

LABEL_74:
  if (v53)
  {
    v45 = v57;
LABEL_76:
    v72 = [v4 isInDocumentScope];
    if ([v4 isFromInitialScan])
    {
      [(BRCUserDefaults *)self->_defaults syncUpInitialItemCost];
    }

    else
    {
      v74 = [v4 isKnownByServer];
      defaults = self->_defaults;
      if (v74)
      {
        if (v72)
        {
          [(BRCUserDefaults *)defaults syncUpDocumentEditCost];
        }

        else
        {
          [(BRCUserDefaults *)defaults syncUpDataEditCost];
        }
      }

      else if (v72)
      {
        [(BRCUserDefaults *)defaults syncUpDocumentCreateCost];
      }

      else
      {
        [(BRCUserDefaults *)defaults syncUpDataCreateCost];
      }
    }

    v49 = v73;
    goto LABEL_64;
  }

  if ([v4 isFromInitialScan])
  {
    [(BRCUserDefaults *)self->_defaults syncUpInitialItemCost];
  }

  else
  {
    v106 = [v4 isKnownByServer];
    v107 = self->_defaults;
    if (v106)
    {
      [(BRCUserDefaults *)v107 syncUpStructureEditCost];
    }

    else
    {
      [(BRCUserDefaults *)v107 syncUpStructureCreateCost];
    }
  }

  v49 = v76;
  v45 = v57;
LABEL_64:

  v67 = *MEMORY[0x277D85DE8];
  return v49;
}

- (float)addEditOfFinderBookmark:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 isDeadOrMissingInServerTruth];
  if ((v5 & 1) == 0)
  {
    v6 = [v4 st];
    v7 = [v6 ckInfo];
    v8 = [v7 etag];
    if (v8)
    {
      v9 = v8;
      v10 = [v4 currentVersion];
      v11 = [v10 ckInfo];
      v12 = [v11 etag];

      if (v12)
      {
        v13 = ([v4 localDiffs] & 0x3FFE) != 0;
        v14 = ([v4 localDiffs] & 0x1FE0000) != 0;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v13 = 1;
  v14 = 1;
LABEL_7:
  v15 = [(BRCSyncUpOperationBuilder *)self shouldPCSChainStatusForItem:v4];
  v16 = v15 & 0x2C;
  v17 = [v4 currentVersion];
  v18 = [v17 uploadedAssets];

  if (v18)
  {
    goto LABEL_13;
  }

  if (![v4 contentRecordNeedsForceAllFieldsWhenDeadInServerTruth:v5])
  {
    v18 = [v4 baseRecord];
LABEL_13:
    v22 = (v15 & 0x2C) != 0 || v13;
    if (!v14 && (v15 & 0x2C) == 0 && !v13)
    {
      v28 = [(BRCSyncUpOperation *)self->_op serverZone];
      [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:v4 serverItem:0 inZone:v28];
      v21 = v29;

LABEL_37:
      goto LABEL_38;
    }

    v23 = [(BRCSyncUpOperationBuilder *)self _getSaltForItem:v4];
    if (v14)
    {
      v54 = 0;
      v24 = [v18 serializeVersion:v4 diffs:objc_msgSend(v4 deadInServerTruth:"localDiffs") basehashSalt:v5 error:{v23, &v54}];
      v25 = v54;
      if ((v24 & 1) == 0)
      {
        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v56 = v25;
          v57 = 2112;
          v58 = v4;
          v59 = 2112;
          v60 = v26;
          _os_log_debug_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] Error creating record %@ for item %@%@", buf, 0x20u);
        }

        v21 = -1.0;
        goto LABEL_36;
      }
    }

    else
    {
      v25 = 0;
    }

    if (v22)
    {
      v52 = v23;
      v30 = v25;
      v31 = [v4 localDiffs];
      v32 = [(BRCSyncUpOperation *)self->_op stageID];
      v33 = [(BRCSyncUpOperationBuilder *)self _generateSaltGetterBlock];
      v53 = 0;
      LOBYTE(v31) = [v18 serializeStatInfo:v4 diffs:v31 stageID:v32 deadInServerTruth:v5 shouldPCSChainStatus:v15 basehashSaltGetter:v33 childBasehashSaltGetter:0 error:&v53];
      v34 = v53;

      if ((v31 & 1) == 0)
      {
        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        v25 = v30;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v56 = v34;
          v57 = 2112;
          v58 = v4;
          v59 = 2112;
          v60 = v41;
          _os_log_debug_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEBUG, "[DEBUG] Error creating record %@ for item %@%@", buf, 0x20u);
        }

        v21 = -1.0;
        v23 = v52;
        goto LABEL_36;
      }

      v25 = v30;
      v23 = v52;
    }

    v21 = -1.0;
    if ([(BRCSyncUpOperationBuilder *)self _validateSharedDocumentFieldsForRecord:v18 item:v4])
    {
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        if (v16)
        {
          v47 = "pcs chained ";
        }

        else
        {
          v47 = "";
        }

        [v18 description];
        v48 = v23;
        v50 = v49 = v25;
        *buf = 136315650;
        v56 = v47;
        v57 = 2112;
        v58 = v50;
        v59 = 2112;
        v60 = v35;
        _os_log_debug_impl(&dword_223E7A000, v36, OS_LOG_TYPE_DEBUG, "[DEBUG] Syncing up %sfinder alias record %@%@", buf, 0x20u);

        v25 = v49;
        v23 = v48;
      }

      v37 = brc_bread_crumbs();
      v38 = brc_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        v51 = "";
        *buf = 138412802;
        v56 = v4;
        if (v5)
        {
          v51 = "\n(dead in server truth)";
        }

        v57 = 2080;
        v58 = v51;
        v59 = 2112;
        v60 = v37;
        _os_log_debug_impl(&dword_223E7A000, v38, OS_LOG_TYPE_DEBUG, "[DEBUG] for %@%s%@", buf, 0x20u);
      }

      v39 = [(BRCSyncUpOperation *)self->_op recordsToSave];
      [v39 addObject:v18];

      if ([v4 isFromInitialScan])
      {
        [(BRCUserDefaults *)self->_defaults syncUpInitialItemCost];
      }

      else
      {
        v43 = [v4 isKnownByServer];
        defaults = self->_defaults;
        if (v43)
        {
          [(BRCUserDefaults *)defaults syncUpStructureEditCost];
        }

        else
        {
          [(BRCUserDefaults *)defaults syncUpStructureCreateCost];
        }
      }

      v21 = v40;
    }

LABEL_36:

    goto LABEL_37;
  }

  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [BRCSyncUpOperationBuilder addEditOfDocument:];
  }

  [v4 markForceUpload];
  [v4 saveToDB];
  v21 = -1.0;
LABEL_38:

  v45 = *MEMORY[0x277D85DE8];
  return v21;
}

- (float)addDeletionOfFinderBookmark:(id)a3
{
  op = self->_op;
  v5 = a3;
  v6 = [(BRCSyncUpOperation *)op deletedRecordIDs];
  v7 = [v5 documentRecordID];

  [v6 addObject:v7];
  defaults = self->_defaults;

  [(BRCUserDefaults *)defaults syncUpDocumentDeleteCost];
  return result;
}

- (float)addEditOfSymlink:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 isDeadOrMissingInServerTruth];
  v6 = [(BRCSyncUpOperationBuilder *)self shouldPCSChainStatusForItem:v4];
  v7 = [(BRCSyncUpOperation *)self->_op stageID];
  v8 = [(BRCSyncUpOperationBuilder *)self _generateSaltGetterBlock];
  v9 = [v4 structureRecordBeingDeadInServerTruth:v5 stageID:v7 shouldPCSChainStatus:v6 saltGetter:v8 childBasehashSaltGetter:0];

  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if ((v6 & 0x2C) != 0)
      {
        v19 = "pcs chained ";
      }

      else
      {
        v19 = "";
      }

      v20 = [v9 description];
      v21 = v20;
      v22 = "\n(dead in server truth)";
      v23 = 136315906;
      v24 = v19;
      if (!v5)
      {
        v22 = "";
      }

      v25 = 2112;
      v26 = v20;
      v27 = 2080;
      v28 = v22;
      v29 = 2112;
      v30 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Syncing up %ssymlink record %@%s%@", &v23, 0x2Au);
    }

    v12 = [(BRCSyncUpOperation *)self->_op recordsToSave];
    [v12 addObject:v9];

    if ([v4 isFromInitialScan])
    {
      [(BRCUserDefaults *)self->_defaults syncUpInitialItemCost];
    }

    else
    {
      v15 = [v4 isKnownByServer];
      defaults = self->_defaults;
      if (v15)
      {
        [(BRCUserDefaults *)defaults syncUpStructureEditCost];
      }

      else
      {
        [(BRCUserDefaults *)defaults syncUpStructureCreateCost];
      }
    }

    v14 = v13;
  }

  else
  {
    v14 = -1.0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (float)addItem:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 appLibrary];

  if (!v5)
  {
    v18 = +[BRCAutoBugCaptureReporter sharedABCReporter];
    [v18 captureLogsForOperationType:@"SyncHealth" ofSubtype:@"SyncUp" withContext:@"AppLibrary is nil"];

    v19 = [(BRCSessionContext *)self->_sessionContext analyticsReporter];
    [v19 aggregateReportForAppTelemetryIdentifier:216 error:0];

    v6 = -1.0;
    goto LABEL_18;
  }

  [(BRCSyncUpOperationBuilder *)self prepareAppLibraryRootSyncUpForItem:v4];
  v6 = -1.0;
  if ([(BRCSyncUpOperationBuilder *)self checkIfSyncAllowedInSharedZoneForItem:v4]&& ![(BRCSyncUpOperationBuilder *)self _checkIfShouldDedicateOpToSaltingBasehashItem:v4]&& ![(BRCSyncUpOperationBuilder *)self _checkIfShouldDedicateOpToPCSChainingItem:v4])
  {
    v7 = [(BRCSyncUpOperation *)self->_op serverZone];
    v8 = [v7 mangledID];
    v9 = [BRCUserDefaults defaultsForMangledID:v8];
    v10 = [v9 preventRecordSyncWithoutDiffs];

    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = [v4 clientZone];
    v12 = [v4 itemID];
    v13 = [v11 serverItemByItemID:v12];

    if (!v13 || (v14 = [v4 diffAgainstServerItem:v13], (objc_msgSend(v4, "metadataSyncUpMask:", 1) & v14) != 0) || (objc_msgSend(v4, "forceNeedsSyncUpWithoutDiffs") & 1) != 0)
    {

LABEL_10:
      if ([v4 isDead])
      {
        if ([v4 isDeadOrMissingInServerTruth])
        {
          if ([v4 isSharedToMeTopLevelItem])
          {
            v15 = [v4 asSharedToMeTopLevelItem];
            [v15 insertTombstoneAliasRecordInZone:0];
          }

          v16 = brc_bread_crumbs();
          v17 = brc_default_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [BRCSyncUpOperationBuilder addItem:];
          }

          [v4 markNeedsDeleteWhenAlreadyDeadInServerTruth];
          [v4 saveToDB];
          goto LABEL_18;
        }

        v43 = 0;
        v44 = 0;
        v45 = 0;
        __brc_create_section(0, "[BRCSyncUpOperationBuilder addItem:]", 1142, 0, &v43);
        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v39 = v43;
          v40 = [v4 st];
          v41 = BRCPrettyPrintEnumWithContext([v40 type], &brc_item_type_pretty_entries, 0);
          *buf = 134218754;
          v47 = v39;
          v48 = 2112;
          v49 = v41;
          v50 = 2112;
          v51 = v4;
          v52 = 2112;
          v53 = v26;
          _os_log_debug_impl(&dword_223E7A000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Deleting %@ record for %@%@", buf, 0x2Au);
        }

        if ([v4 isSharedToMeTopLevelItem])
        {
          v28 = [v4 asSharedToMeTopLevelItem];
          [(BRCSyncUpOperationBuilder *)self addDeletionOfSharedTopLevelItem:v28];
        }

        else if ([v4 isFinderBookmark])
        {
          v28 = [v4 asFinderBookmark];
          [(BRCSyncUpOperationBuilder *)self addDeletionOfFinderBookmark:v28];
        }

        else if ([v4 isDocument])
        {
          v28 = [v4 asDocument];
          [(BRCSyncUpOperationBuilder *)self addDeletionOfDocument:v28];
        }

        else if ([v4 isDirectory])
        {
          v28 = [v4 asDirectory];
          [(BRCSyncUpOperationBuilder *)self addDeletionOfDirectory:v28];
        }

        else
        {
          if (![v4 isBRAlias])
          {
            [(BRCSyncUpOperationBuilder *)self addDeletionOfItem:v4];
            v6 = v42;
            goto LABEL_49;
          }

          v28 = [v4 asBRAlias];
          [(BRCSyncUpOperationBuilder *)self addDeletionOfAlias:v28];
        }

        v6 = v29;

LABEL_49:
        __brc_leave_section(&v43);
LABEL_50:
        if (v6 >= 0.0)
        {
          v37 = [(BRCSyncUpOperation *)self->_op serverZone];
          [v4 prepareForSyncUpInZone:v37];
        }

        goto LABEL_18;
      }

      v43 = 0;
      v44 = 0;
      v45 = 0;
      __brc_create_section(0, "[BRCSyncUpOperationBuilder addItem:]", 1158, 0, &v43);
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v34 = v43;
        v35 = [v4 itemID];
        v36 = [v35 debugItemIDString];
        *buf = 134218498;
        v47 = v34;
        v48 = 2112;
        v49 = v36;
        v50 = 2112;
        v51 = v22;
        _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx preparing sync-up of %@%@", buf, 0x20u);
      }

      if ([v4 isSharedToMeTopLevelItem])
      {
        v24 = [v4 asSharedToMeTopLevelItem];
        [(BRCSyncUpOperationBuilder *)self addEditOfSharedTopLevelItem:v24];
      }

      else if ([v4 isFinderBookmark])
      {
        v24 = [v4 asFinderBookmark];
        [(BRCSyncUpOperationBuilder *)self addEditOfFinderBookmark:v24];
      }

      else if ([v4 isSymLink])
      {
        v24 = [v4 asSymlink];
        [(BRCSyncUpOperationBuilder *)self addEditOfSymlink:v24];
      }

      else if ([v4 isDocument])
      {
        v24 = [v4 asDocument];
        [(BRCSyncUpOperationBuilder *)self addEditOfDocument:v24];
      }

      else
      {
        if (![v4 isDirectory])
        {
          v24 = brc_bread_crumbs();
          v38 = brc_default_log();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            [BRCSyncUpOperationBuilder addItem:];
          }

          v6 = 0.0;
          goto LABEL_45;
        }

        v24 = [v4 asDirectory];
        [(BRCSyncUpOperationBuilder *)self addEditOfDirectory:v24];
      }

      v6 = v25;
LABEL_45:

      __brc_leave_section(&v43);
      goto LABEL_50;
    }

    v30 = brc_bread_crumbs();
    v31 = brc_default_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v47 = v4;
      v48 = 2112;
      v49 = v13;
      v50 = 2112;
      v51 = v30;
      _os_log_impl(&dword_223E7A000, v31, OS_LOG_TYPE_DEFAULT, "[WARNING] Faking sync for item because it doesn't have field differences with the server item %@ vs %@%@", buf, 0x20u);
    }

    v32 = [(BRCSyncUpOperation *)self->_op serverZone];
    [(BRCSyncUpOperationBuilder *)self fakeSyncForItem:v4 serverItem:v13 inZone:v32];
    v6 = v33;
  }

LABEL_18:

  v20 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_checkIfShouldDedicateOpToSaltingBasehashItem:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _parentItemIDToChildBasehashSalt[parentItemID] == nil%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_checkIfShouldDedicateOpToSaltingBasehashItem:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugItemIDString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Sync: Dedicating sync op to metadata salting %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_checkIfShouldDedicateOpToSaltingBasehashItem:.cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _parentItemIDToChildBasehashSalt[item.itemID] == nil%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_checkIfShouldDedicateOpToPCSChainingItem:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 itemID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] Sync: Dedicating sync op to pcs chaining %@%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)checkIfSyncAllowedInSharedZoneForItem:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 itemID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v2, v3, "[DEBUG] shared document %@ is read-only, do not sync%@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)checkIfSyncAllowedInSharedZoneForItem:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Waiting on server full sync before we fake sync shared to me top level item which is missing in the server truth%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)checkIfSyncAllowedInSharedZoneForItem:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Not allowing re-creation of shared to me top level item when the item is dead in the server truth%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addDeletionOfItem:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !item.isSharedToMeTopLevelItem%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_getSaltForItem:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: parentItemID != nil%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)addEditOfSharedTopLevelItem:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: unsupported top level item kind%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)addEditOfSharedTopLevelItem:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [0 description];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Fake syncing up shared folder record %@%@", v3, v4, v5, v6, v8);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addDeletionOfSharedTopLevelItem:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Deleting alias in private zone %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)prepareAppLibraryRootSyncUpForItem:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Syncing up root app library record %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)fakeSyncForItem:serverItem:inZone:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Also faking sync in side car for child item not known to the server %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)fakeSyncForItem:serverItem:inZone:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleEditOfSharedItem:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Editing name on shareID %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)handleEditOfSharedItem:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Unsharing %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)addEditOfDirectory:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: record.encryptedValues[kBRRecordKeyChildBasehashSalt]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)addDeletionOfDirectory:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !item.isSharedToMeTopLevelItem%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)addDeletionOfAlias:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !item.isSharedToMeTopLevelItem%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)addEditOfDocument:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] We need to update sharing info for this reset item%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addEditOfDocument:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] shared document is read-only, do not sync its version%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addEditOfDocument:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] will pcs chain records%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addEditOfDocument:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] thumbnail not found.  Force upload again%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)addEditOfDocument:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addEditOfDocument:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addEditOfDocument:.cold.7()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] forcing upload of %@\n(dead in server truth)%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)addEditOfDocument:.cold.8()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)addItem:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addItem:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Deleting dead record already dead in the server truth %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end