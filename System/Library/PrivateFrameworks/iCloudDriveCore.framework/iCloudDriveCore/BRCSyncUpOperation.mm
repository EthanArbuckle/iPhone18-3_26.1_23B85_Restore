@interface BRCSyncUpOperation
+ (id)syncUpOperationForZone:(id)zone sessionContext:(id)context syncUpCallback:(id)callback maxCost:(float)cost retryAfter:(unint64_t *)after;
- (BOOL)_handlePermissionErrorForItem:(id)item inZone:(id)zone;
- (BOOL)_performMetadataSaltingOperationIfNecessaryWithCompletion:(id)completion;
- (BOOL)_performPCSChainOperationIfNecessaryWithCompletion:(id)completion;
- (BOOL)_recordIsIWorkShareable:(id)shareable;
- (BOOL)prepareWithMaxCost:(float)cost retryAfter:(unint64_t *)after;
- (BRCSyncUpOperation)initWithZone:(id)zone sessionContext:(id)context syncUpCallback:(id)callback;
- (id)createActivity;
- (void)_checkRecordPackageItems:(id)items inZone:(id)zone;
- (void)_handleErrorForRecord:(id)record inZone:(id)zone error:(id)error;
- (void)_handleStaleRecordUpdate:(id)update item:(id)item inZone:(id)zone;
- (void)_handleSyncUpErrorForRecord:(id)record error:(id)error;
- (void)_handleUnkownItem:(id)item;
- (void)_markItemBacklistedFromSyncWithMinimumSupportedOS:(id)s minimumSupportedOSName:(id)name;
- (void)_markRecordNeedingRemapToNewParent:(id)parent newParentName:(id)name inZone:(id)zone itemIDsAlreadyRemapped:(id)remapped;
- (void)_markRecordNeedingRemapToNewRecordName:(id)name newRecordName:(id)recordName inZone:(id)zone itemIDsAlreadyRemapped:(id)remapped;
- (void)_performModifyRecordsOrBatchOperationWithCompletion:(id)completion;
- (void)_performShareUpdateAndModifyRecordsWithCompletion:(id)completion;
- (void)_performUpdateSharingProtectionDataIfNecessary:(id)necessary;
- (void)_remapItemIDToNewItemID:(id)d newItemID:(id)iD inZone:(id)zone itemIDsAlreadyRemapped:(id)remapped;
- (void)_reportSyncUpErrorForItem:(id)item error:(id)error;
- (void)_rescanItem:(id)item;
- (void)_reuploadItemInContainerWithRecord:(id)record inZone:(id)zone error:(id)error;
- (void)_scheduleShareUpdateAndModifyRecordsAndZoneCreationOperation;
- (void)_setSharingFieldsOnContentRecord:(id)record withProtectionData:(id)data baseToken:(id)token routingKey:(id)key forceOverwrite:(BOOL)overwrite;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
- (void)performShareUpdate:(id)update;
@end

@implementation BRCSyncUpOperation

- (BOOL)prepareWithMaxCost:(float)cost retryAfter:(unint64_t *)after
{
  v201 = *MEMORY[0x277D85DE8];
  clientZone = [(BRCServerZone *)self->_serverZone clientZone];
  if ([clientZone isSyncBlocked])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [BRCSyncUpOperation prepareWithMaxCost:retryAfter:];
    }

LABEL_5:
    v7 = 0;
    goto LABEL_127;
  }

  if (([clientZone isCloudDocsZone] & 1) == 0 && objc_msgSend(clientZone, "isPrivateZone") && !-[BRCServerZone hasFetchedServerZoneState](self->_serverZone, "hasFetchedServerZoneState"))
  {
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    asPrivateClientZone = [clientZone asPrivateClientZone];
    appLibraries = [asPrivateClientZone appLibraries];

    v10 = [appLibraries countByEnumeratingWithState:&v180 objects:v200 count:16];
    if (v10)
    {
      v11 = *v181;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v181 != v11)
          {
            objc_enumerationMutation(appLibraries);
          }

          if ((~[*(*(&v180 + 1) + 8 * i) state] & 0x140000) != 0)
          {
            v15 = brc_bread_crumbs();
            v16 = brc_default_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              [BRCSyncUpOperation prepareWithMaxCost:retryAfter:];
            }

            goto LABEL_24;
          }
        }

        v10 = [appLibraries countByEnumeratingWithState:&v180 objects:v200 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperation prepareWithMaxCost:retryAfter:];
    }

    [clientZone clearSyncUpError];
    if (after)
    {
      v7 = 0;
      *after = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_127;
    }

    goto LABEL_5;
  }

LABEL_24:
  v155 = [[BRCSyncUpEnumerator alloc] initWithClientZone:clientZone];
  batchSize = [(BRCSyncUpEnumerator *)v155 batchSize];
  v18 = [clientZone db];
  [v18 assertOnQueue];

  memset(v179, 0, sizeof(v179));
  __brc_create_section(0, "[BRCSyncUpOperation prepareWithMaxCost:retryAfter:]", 118, 0, v179);
  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v185 = v179[0];
    v186 = 2112;
    v187 = clientZone;
    v188 = 1024;
    *v189 = batchSize;
    *&v189[4] = 2112;
    *&v189[6] = v19;
    _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Sync: syncing up clientZone %@. batch size - %u%@", buf, 0x26u);
  }

  v21 = batchSize;
  v153 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:batchSize];
  v22 = MEMORY[0x277CCACA8];
  operationID = [(_BRCOperation *)self operationID];
  uUIDString = [operationID UUIDString];
  v25 = [v22 stringWithFormat:@"sync-up-%@", uUIDString];
  stageID = self->_stageID;
  self->_stageID = v25;

  syncUpStager = [(BRCSessionContext *)self->super._sessionContext syncUpStager];
  [syncUpStager associateSyncUpStageID:self->_stageID withOperation:self];

  v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v21];
  recordsToSave = self->_recordsToSave;
  self->_recordsToSave = v28;

  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  packagesInFlight = self->_packagesInFlight;
  self->_packagesInFlight = v30;

  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  createdAppLibraryNames = self->_createdAppLibraryNames;
  self->_createdAppLibraryNames = v32;

  v34 = objc_alloc_init(MEMORY[0x277CBEB40]);
  deletedRecordIDs = self->_deletedRecordIDs;
  self->_deletedRecordIDs = v34;

  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  iworkUnsharedShareIDs = self->_iworkUnsharedShareIDs;
  self->_iworkUnsharedShareIDs = v36;

  v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
  renamedShareIDsToNames = self->_renamedShareIDsToNames;
  self->_renamedShareIDsToNames = v38;

  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  recordsNeedingNewSharingProtectionInfo = self->_recordsNeedingNewSharingProtectionInfo;
  self->_recordsNeedingNewSharingProtectionInfo = v40;

  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  recordsNeedingUpdatedSharingProtectionInfo = self->_recordsNeedingUpdatedSharingProtectionInfo;
  self->_recordsNeedingUpdatedSharingProtectionInfo = v42;

  v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
  recordIDsToDeleteToEtags = self->_recordIDsToDeleteToEtags;
  self->_recordIDsToDeleteToEtags = v44;

  v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
  pluginFieldsForRecordDeletesByID = self->_pluginFieldsForRecordDeletesByID;
  self->_pluginFieldsForRecordDeletesByID = v46;

  v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
  conflictLosersToResolveByRecordID = self->_conflictLosersToResolveByRecordID;
  self->_conflictLosersToResolveByRecordID = v48;

  selfCopy3 = self;
  v156 = [[BRCSyncUpOperationBuilder alloc] initWithSessionContext:self->super._sessionContext syncUpOperation:self];
  v51 = 0;
  v52 = 0.0;
  while (1)
  {
    v53 = [(NSMutableArray *)selfCopy3->_recordsToSave count];
    if (v53 + [(NSMutableOrderedSet *)selfCopy3->_deletedRecordIDs count]+ 2 > v21 || [(NSMutableArray *)selfCopy3->_iworkUnsharedShareIDs count]+ 1 > v21)
    {
      v56 = v51;
      goto LABEL_45;
    }

    nextObject = [(BRCSyncUpEnumerator *)v155 nextObject];

    if (!nextObject)
    {
      break;
    }

    v55 = objc_autoreleasePoolPush();
    v56 = nextObject;
    [(BRCSyncUpOperationBuilder *)v156 addItem:nextObject];
    selfCopy3 = self;
    v58 = v57;
    if (v57 <= 0.0)
    {
      itemNeedingBasehashSalting = [(BRCSyncUpOperationBuilder *)v156 itemNeedingBasehashSalting];
      itemNeedingBasehashSalting = self->_itemNeedingBasehashSalting;
      self->_itemNeedingBasehashSalting = itemNeedingBasehashSalting;

      if (itemNeedingBasehashSalting || ([(BRCSyncUpOperationBuilder *)v156 itemNeedingPCSChaining], v62 = objc_claimAutoreleasedReturnValue(), itemNeedingPCSChaining = self->_itemNeedingPCSChaining, self->_itemNeedingPCSChaining = v62, itemNeedingPCSChaining, v62))
      {
        v59 = 1;
      }

      else
      {
        itemID = [nextObject itemID];
        isDocumentsFolder = [itemID isDocumentsFolder];

        if ((isDocumentsFolder & 1) == 0)
        {
          v66 = brc_bread_crumbs();
          v67 = brc_default_log();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v185 = nextObject;
            v186 = 2112;
            v187 = v66;
            _os_log_debug_impl(&dword_223E7A000, v67, OS_LOG_TYPE_DEBUG, "[DEBUG] ignoring item with negative cost for now %@%@", buf, 0x16u);
          }
        }

        v59 = 0;
      }

      selfCopy3 = self;
      v56 = nextObject;
    }

    else
    {
      [v153 addObject:nextObject];
      v52 = v52 + v58;
      v59 = v52 >= cost;
    }

    objc_autoreleasePoolPop(v55);
    v51 = v56;
    if (v59)
    {
      goto LABEL_45;
    }
  }

  v56 = 0;
LABEL_45:
  v151 = v56;
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  itemsNeedingUnshare = [(BRCSyncUpEnumerator *)v155 itemsNeedingUnshare];
  v69 = [itemsNeedingUnshare countByEnumeratingWithState:&v175 objects:v199 count:16];
  if (v69)
  {
    v158 = *v176;
    obj = itemsNeedingUnshare;
    do
    {
      v159 = v69;
      for (j = 0; j != v159; ++j)
      {
        if (*v176 != v158)
        {
          objc_enumerationMutation(obj);
        }

        v71 = *(*(&v175 + 1) + 8 * j);
        v72 = [objc_alloc(MEMORY[0x277CBC5D0]) initShareIDWithShareableItem:v71];
        [(NSMutableOrderedSet *)self->_deletedRecordIDs addObject:v72];
        if ([v71 isDocument])
        {
          asDocument = [v71 asDocument];
          baseRecord = [asDocument baseRecord];
          currentVersion = [asDocument currentVersion];
          ckInfo = [currentVersion ckInfo];
          [baseRecord serializeSystemFields:ckInfo];
        }

        else
        {
          baseRecord = [v71 baseStructureRecord];
          asDocument = [v71 st];
          currentVersion = [asDocument ckInfo];
          [baseRecord serializeSystemFields:currentVersion];
        }

        v173 = 0u;
        v174 = 0u;
        v171 = 0u;
        v172 = 0u;
        v77 = self->_recordsToSave;
        v78 = [(NSMutableArray *)v77 countByEnumeratingWithState:&v171 objects:v198 count:16];
        if (v78)
        {
          v79 = *v172;
          while (2)
          {
            for (k = 0; k != v78; ++k)
            {
              if (*v172 != v79)
              {
                objc_enumerationMutation(v77);
              }

              recordID = [*(*(&v171 + 1) + 8 * k) recordID];
              recordID2 = [baseRecord recordID];
              v83 = [recordID isEqual:recordID2];

              if (v83)
              {

                goto LABEL_63;
              }
            }

            v78 = [(NSMutableArray *)v77 countByEnumeratingWithState:&v171 objects:v198 count:16];
            if (v78)
            {
              continue;
            }

            break;
          }
        }

        [(NSMutableArray *)self->_recordsToSave addObject:baseRecord];
LABEL_63:
      }

      itemsNeedingUnshare = obj;
      v69 = [obj countByEnumeratingWithState:&v175 objects:v199 count:16];
    }

    while (v69);
  }

  selfCopy8 = self;
  if (self->_itemNeedingBasehashSalting || self->_itemNeedingPCSChaining)
  {
    v85 = brc_bread_crumbs();
    v86 = brc_default_log();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
    {
      v145 = self->_itemNeedingBasehashSalting;
      v146 = @"salting";
      if (!v145)
      {
        v146 = @"pcs chaining";
        v145 = self->_itemNeedingPCSChaining;
      }

      *buf = 138412802;
      v185 = v146;
      v186 = 2112;
      v187 = v145;
      v188 = 2112;
      *v189 = v85;
      _os_log_debug_impl(&dword_223E7A000, v86, OS_LOG_TYPE_DEBUG, "[DEBUG] Dedicating this sync up operation to %@ %@%@", buf, 0x20u);
    }

    selfCopy8 = self;
    [(NSMutableArray *)self->_recordsToSave removeAllObjects];
    v87 = v151;
    [(NSMutableOrderedSet *)self->_deletedRecordIDs removeAllObjects];
    [(NSMutableArray *)self->_iworkUnsharedShareIDs removeAllObjects];
    [(NSMutableDictionary *)self->_renamedShareIDsToNames removeAllObjects];
    [(NSMutableDictionary *)self->_recordIDsToDeleteToEtags removeAllObjects];
    [(NSMutableDictionary *)self->_pluginFieldsForRecordDeletesByID removeAllObjects];
    [(NSMutableDictionary *)self->_conflictLosersToResolveByRecordID removeAllObjects];
    [(NSMutableArray *)self->_recordsNeedingUpdatedSharingProtectionInfo removeAllObjects];
    [(NSMutableArray *)self->_recordsNeedingNewSharingProtectionInfo removeAllObjects];
    [(NSMutableArray *)self->_createdAppLibraryNames removeAllObjects];
    v88 = 1;
  }

  else
  {
    v88 = 0;
    v87 = v151;
  }

  [(BRCSyncUpEnumerator *)v155 invalidate];
  if ([(NSMutableArray *)selfCopy8->_recordsToSave count]== 1)
  {
    firstObject = [(NSMutableArray *)selfCopy8->_recordsToSave firstObject];
    recordID3 = [firstObject recordID];
    brc_isDocumentsFolderRecordID = [recordID3 brc_isDocumentsFolderRecordID];

    selfCopy8 = self;
    v87 = v151;
    if (brc_isDocumentsFolderRecordID)
    {
      v92 = brc_bread_crumbs();
      v93 = brc_default_log();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
      {
        [BRCSyncUpOperation prepareWithMaxCost:retryAfter:];
      }

      [(NSMutableArray *)self->_recordsToSave removeAllObjects];
      v87 = v151;
      goto LABEL_75;
    }
  }

  if (v88)
  {
LABEL_75:
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v94 = v153;
    v95 = [v94 countByEnumeratingWithState:&v167 objects:v197 count:16];
    if (v95)
    {
      v96 = *v168;
      do
      {
        v97 = 0;
        v98 = v87;
        do
        {
          if (*v168 != v96)
          {
            objc_enumerationMutation(v94);
          }

          v87 = *(*(&v167 + 1) + 8 * v97);

          dbRowID = [(BRCServerZone *)self->_serverZone dbRowID];
          [v87 markLatestSyncRequestFailedInZone:dbRowID];

          ++v97;
          v98 = v87;
        }

        while (v95 != v97);
        v95 = [v94 countByEnumeratingWithState:&v167 objects:v197 count:16];
      }

      while (v95);
    }

    [v94 removeAllObjects];
    selfCopy8 = self;
    v87 = 0;
  }

  if ([(NSMutableArray *)selfCopy8->_recordsToSave count]|| [(NSMutableOrderedSet *)selfCopy8->_deletedRecordIDs count]|| [(NSMutableArray *)selfCopy8->_iworkUnsharedShareIDs count]|| [(NSMutableDictionary *)selfCopy8->_renamedShareIDsToNames count]|| selfCopy8->_itemNeedingPCSChaining || selfCopy8->_itemNeedingBasehashSalting)
  {
    if (!selfCopy8->_itemNeedingPCSChaining && !selfCopy8->_itemNeedingBasehashSalting)
    {
      selfCopy8->_requestID = [clientZone allocateSyncUpRequestID];
      v160 = [v153 count];
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v100 = v153;
      v101 = [v100 countByEnumeratingWithState:&v163 objects:v196 count:16];
      v102 = v87;
      if (v101)
      {
        v103 = *v164;
        do
        {
          v104 = 0;
          v105 = v102;
          do
          {
            if (*v164 != v103)
            {
              objc_enumerationMutation(v100);
            }

            v102 = *(*(&v163 + 1) + 8 * v104);

            v106 = objc_autoreleasePoolPush();
            if ([v102 isDocument])
            {
              asDocument2 = [v102 asDocument];
              analyticsReporter = [(BRCSessionContext *)self->super._sessionContext analyticsReporter];
              itemID2 = [asDocument2 itemID];
              v162[0] = MEMORY[0x277D85DD0];
              v162[1] = 3221225472;
              v162[2] = __52__BRCSyncUpOperation_prepareWithMaxCost_retryAfter___block_invoke;
              v162[3] = &unk_278502FA8;
              v162[4] = self;
              v162[5] = v160;
              [analyticsReporter lookupFSEventToSyncUpEventByItemID:itemID2 accessor:v162];
            }

            [v102 saveToDBAndValidateLocalDiffs];
            objc_autoreleasePoolPop(v106);
            ++v104;
            v105 = v102;
          }

          while (v101 != v104);
          v101 = [v100 countByEnumeratingWithState:&v163 objects:v196 count:16];
        }

        while (v101);
      }

      v87 = 0;
      selfCopy8 = self;
    }

    mangledID = [(BRCServerZone *)selfCopy8->_serverZone mangledID];
    v111 = [BRCUserDefaults defaultsForMangledID:mangledID];
    if ([v111 destroyiWorkShares])
    {
      v112 = [(NSMutableArray *)selfCopy8->_iworkUnsharedShareIDs count]== 0;

      selfCopy15 = self;
      if (!v112)
      {
        v114 = brc_bread_crumbs();
        v115 = brc_default_log();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
        {
          [BRCSyncUpOperation prepareWithMaxCost:retryAfter:];
        }

        selfCopy15 = self;
        [(NSMutableOrderedSet *)self->_deletedRecordIDs addObjectsFromArray:self->_iworkUnsharedShareIDs];
        [(NSMutableArray *)self->_iworkUnsharedShareIDs removeAllObjects];
      }
    }

    else
    {

      selfCopy15 = self;
    }

    if ([clientZone isPrivateZone])
    {
      asPrivateClientZone2 = [clientZone asPrivateClientZone];
      defaultAppLibrary = [asPrivateClientZone2 defaultAppLibrary];
      rootRecordCreated = [defaultAppLibrary rootRecordCreated];

      selfCopy15 = self;
      if ((rootRecordCreated & 1) == 0)
      {
        v119 = MEMORY[0x277CBC5A0];
        zoneID = [(BRCServerZone *)self->_serverZone zoneID];
        v121 = [v119 rootDirectoryRecordForZoneID:zoneID];

        rootChildBasehashSalt = [(BRCSyncUpOperationBuilder *)v156 rootChildBasehashSalt];
        selfCopy14 = self;
        v124 = rootChildBasehashSalt;
        if (rootChildBasehashSalt)
        {
          [v121 brc_fillWithChildBasehashSalt:rootChildBasehashSalt];
          asPrivateClientZone3 = [clientZone asPrivateClientZone];
          defaultAppLibrary2 = [asPrivateClientZone3 defaultAppLibrary];

          if (([defaultAppLibrary2 state] & 0x200000) != 0 || objc_msgSend(defaultAppLibrary2, "saltingState") < 2)
          {
            saltingState = 3;
          }

          else
          {
            saltingState = [defaultAppLibrary2 saltingState];
          }

          v128 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:saltingState];
          [v121 setObject:v128 forKeyedSubscript:@"saltingState"];

          selfCopy14 = self;
        }

        [(NSMutableArray *)selfCopy14->_recordsToSave insertObject:v121 atIndex:0];
        v129 = brc_bread_crumbs();
        v130 = brc_default_log();
        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
        {
          [BRCSyncUpOperation prepareWithMaxCost:retryAfter:];
        }

        selfCopy15 = self;
      }
    }

    v131 = brc_bread_crumbs();
    v132 = brc_default_log();
    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
    {
      requestID = selfCopy15->_requestID;
      v140 = [(NSMutableArray *)selfCopy15->_recordsToSave count];
      v141 = [(NSMutableOrderedSet *)selfCopy15->_deletedRecordIDs count];
      v142 = [(NSMutableArray *)selfCopy15->_iworkUnsharedShareIDs count];
      v143 = [(NSMutableDictionary *)selfCopy15->_renamedShareIDsToNames count];
      v144 = [v153 count];
      *buf = 134219522;
      v185 = requestID;
      v186 = 2048;
      v187 = v140;
      v188 = 2048;
      *v189 = v141;
      *&v189[8] = 2048;
      *&v189[10] = v142;
      v190 = 2048;
      v191 = v143;
      v192 = 2048;
      v193 = v144;
      v194 = 2112;
      v195 = v131;
      _os_log_debug_impl(&dword_223E7A000, v132, OS_LOG_TYPE_DEBUG, "[DEBUG] preparing to send in requestID:%lld: %lu records, delete %lu recordIDs, unshare %lu iwork shares, rename %lu shares, about %lu items%@", buf, 0x48u);
    }

    v133 = brc_bread_crumbs();
    v134 = brc_default_log();
    if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
    {
      v135 = [v153 count];
      mangledID2 = [clientZone mangledID];
      *buf = 134218498;
      v185 = v135;
      v186 = 2112;
      v187 = mangledID2;
      v188 = 2112;
      *v189 = v133;
      _os_log_impl(&dword_223E7A000, v134, OS_LOG_TYPE_DEFAULT, "[NOTICE] sending %lu items to the cloud for %@\n%@", buf, 0x20u);
    }

    if (after)
    {
      *after = 0;
    }

    self->_cost = v52;
    v7 = 1;
  }

  else
  {
    v147 = brc_bread_crumbs();
    v148 = brc_default_log();
    if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperation prepareWithMaxCost:retryAfter:];
    }

    if ([v153 count])
    {
      v149 = brc_bread_crumbs();
      v150 = brc_default_log();
      if (os_log_type_enabled(v150, OS_LOG_TYPE_FAULT))
      {
        [BRCSyncUpOperation prepareWithMaxCost:retryAfter:];
      }
    }

    [clientZone clearSyncUpError];
    v7 = 0;
    if (after)
    {
      *after = [(BRCSyncUpEnumerator *)v155 retryAfter];
    }
  }

  __brc_leave_section(v179);
LABEL_127:

  v137 = *MEMORY[0x277D85DE8];
  return v7;
}

void __52__BRCSyncUpOperation_prepareWithMaxCost_retryAfter___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setSyncUpBatchSize:v3];
  [*(a1 + 32) associateCKOperationsToEventMetric:v4];
}

- (BRCSyncUpOperation)initWithZone:(id)zone sessionContext:(id)context syncUpCallback:(id)callback
{
  zoneCopy = zone;
  callbackCopy = callback;
  contextCopy = context;
  zoneName = [zoneCopy zoneName];
  v13 = [@"sync-up/" stringByAppendingString:zoneName];

  ownerName = [zoneCopy ownerName];
  v15 = [ownerName isEqualToString:*MEMORY[0x277CBBF28]];

  if ((v15 & 1) == 0)
  {
    ownerName2 = [zoneCopy ownerName];
    v17 = [v13 stringByAppendingFormat:@":%@", ownerName2];

    v13 = v17;
  }

  metadataSyncContext = [zoneCopy metadataSyncContext];
  v24.receiver = self;
  v24.super_class = BRCSyncUpOperation;
  v19 = [(_BRCOperation *)&v24 initWithName:v13 syncContext:metadataSyncContext sessionContext:contextCopy];

  if (v19)
  {
    [(BRCSyncUpOperation *)v19 setQueuePriority:4];
    callbackQueue = [(_BRCOperation *)v19 callbackQueue];
    clientReadWriteDatabaseFacade = [(BRCSessionContext *)v19->super._sessionContext clientReadWriteDatabaseFacade];
    workloop = [clientReadWriteDatabaseFacade workloop];
    dispatch_set_target_queue(callbackQueue, workloop);

    objc_storeStrong(&v19->_serverZone, zone);
    objc_storeStrong(&v19->_syncUpCallback, callback);
  }

  return v19;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync-up", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

+ (id)syncUpOperationForZone:(id)zone sessionContext:(id)context syncUpCallback:(id)callback maxCost:(float)cost retryAfter:(unint64_t *)after
{
  callbackCopy = callback;
  contextCopy = context;
  zoneCopy = zone;
  v15 = [[self alloc] initWithZone:zoneCopy sessionContext:contextCopy syncUpCallback:callbackCopy];

  *&v16 = cost;
  if ([v15 prepareWithMaxCost:after retryAfter:v16])
  {
    v17 = v15;
  }

  else
  {
    completionBlock = [v15 completionBlock];
    v19 = completionBlock;
    if (completionBlock)
    {
      (*(completionBlock + 16))(completionBlock);
    }

    v17 = 0;
  }

  return v17;
}

- (BOOL)_performMetadataSaltingOperationIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  if (![v5 supportsEnhancedDrivePrivacy])
  {

    goto LABEL_6;
  }

  itemNeedingBasehashSalting = self->_itemNeedingBasehashSalting;

  if (!itemNeedingBasehashSalting)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_9;
  }

  appLibrary = [(BRCLocalItem *)self->_itemNeedingBasehashSalting appLibrary];
  callbackQueue = [(_BRCOperation *)self callbackQueue];
  v9 = callbackQueue;
  if (callbackQueue)
  {
    serialQueue = callbackQueue;
  }

  else
  {
    v12 = [appLibrary db];
    serialQueue = [v12 serialQueue];
  }

  v13 = [appLibrary db];
  serialQueue2 = [v13 serialQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__BRCSyncUpOperation__performMetadataSaltingOperationIfNecessaryWithCompletion___block_invoke;
  v18[3] = &unk_278500CE0;
  v18[4] = self;
  v19 = appLibrary;
  v20 = serialQueue;
  v21 = completionCopy;
  v15 = serialQueue;
  v16 = appLibrary;
  dispatch_sync(serialQueue2, v18);

  v11 = 1;
LABEL_9:

  return v11;
}

void __80__BRCSyncUpOperation__performMetadataSaltingOperationIfNecessaryWithCompletion___block_invoke(id *a1)
{
  v2 = [[BRCSaltingBatchOperation alloc] initWithParentItem:*(a1[4] + 77) sessionContext:*(a1[4] + 32)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__BRCSyncUpOperation__performMetadataSaltingOperationIfNecessaryWithCompletion___block_invoke_2;
  v8[3] = &unk_278502FD0;
  v7 = *(a1 + 2);
  v3 = *(&v7 + 1);
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [(BRCSaltingBatchOperation *)v2 setMetadataCompletionBlock:v8];
  [a1[4] addSubOperation:v2];
}

void __80__BRCSyncUpOperation__performMetadataSaltingOperationIfNecessaryWithCompletion___block_invoke_2(uint64_t a1, int a2, int a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(*(a1 + 32) + 616);
    *buf = 138413314;
    v23 = v17;
    v24 = 1024;
    v25 = a2;
    v26 = 1024;
    v27 = a3;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Finished metadata salting a batch for item %@ when completed: %d validation: %d error: %@%@", buf, 0x2Cu);
  }

  if (v7 || a3)
  {
    v10 = [*(a1 + 40) db];
    v11 = [v10 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__BRCSyncUpOperation__performMetadataSaltingOperationIfNecessaryWithCompletion___block_invoke_24;
    block[3] = &unk_278500CE0;
    *&v12 = *(a1 + 40);
    *(&v12 + 1) = *(a1 + 32);
    v18 = v12;
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    v20 = v18;
    v21 = v15;
    dispatch_async(v11, block);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __80__BRCSyncUpOperation__performMetadataSaltingOperationIfNecessaryWithCompletion___block_invoke_24(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(a1 + 32) defaultClientZone];
  v4 = [*(*(v2 + 8) + 616) itemID];
  v5 = [v3 itemByItemID:v4];

  if (v5 && ([v5 isZoneRoot] & 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __80__BRCSyncUpOperation__performMetadataSaltingOperationIfNecessaryWithCompletion___block_invoke_24_cold_1();
    }

    v8 = *(*(a1 + 40) + 512);
    v9 = [*(a1 + 32) defaultClientZone];
    v10 = [v9 dbRowID];
    [v8 postponeSyncUpCallback:v5 inZone:v10];
  }

  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __80__BRCSyncUpOperation__performMetadataSaltingOperationIfNecessaryWithCompletion___block_invoke_24_cold_2();
  }

  v13 = [*(a1 + 32) defaultClientZone];
  [v13 scheduleSyncDown];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__BRCSyncUpOperation__performMetadataSaltingOperationIfNecessaryWithCompletion___block_invoke_25;
  block[3] = &unk_278501520;
  v14 = *(a1 + 48);
  v16 = *(a1 + 56);
  dispatch_async(v14, block);
}

- (BOOL)_performPCSChainOperationIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  itemNeedingPCSChaining = self->_itemNeedingPCSChaining;
  if (itemNeedingPCSChaining)
  {
    appLibrary = [(BRCLocalItem *)self->_itemNeedingPCSChaining appLibrary];
    callbackQueue = [(_BRCOperation *)self callbackQueue];
    v8 = callbackQueue;
    if (callbackQueue)
    {
      serialQueue = callbackQueue;
    }

    else
    {
      v10 = [appLibrary db];
      serialQueue = [v10 serialQueue];
    }

    v11 = [appLibrary db];
    serialQueue2 = [v11 serialQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __73__BRCSyncUpOperation__performPCSChainOperationIfNecessaryWithCompletion___block_invoke;
    v16[3] = &unk_278500CE0;
    v16[4] = self;
    v17 = appLibrary;
    v18 = serialQueue;
    v19 = completionCopy;
    v13 = serialQueue;
    v14 = appLibrary;
    dispatch_sync(serialQueue2, v16);
  }

  return itemNeedingPCSChaining != 0;
}

void __73__BRCSyncUpOperation__performPCSChainOperationIfNecessaryWithCompletion___block_invoke(id *a1)
{
  v2 = [*(a1[4] + 76) itemID];
  v3 = [a1[5] defaultClientZone];
  v4 = [v3 serverItemByItemID:v2];

  v5 = [[BRCPCSChainingOperation alloc] initWithRootItem:v4 appLibrary:a1[5] sessionContext:*(a1[4] + 32) syncUpCallback:*(a1[4] + 64)];
  [(BRCPCSChainingOperation *)v5 setShouldFillBatch:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__BRCSyncUpOperation__performPCSChainOperationIfNecessaryWithCompletion___block_invoke_2;
  v7[3] = &unk_278503020;
  v8 = a1[5];
  v9 = v2;
  v10 = a1[4];
  v11 = a1[6];
  v12 = a1[7];
  v6 = v2;
  [(BRCPCSChainingOperation *)v5 setPcsChainCompletionBlock:v7];
  [a1[4] addSubOperation:v5];
}

void __73__BRCSyncUpOperation__performPCSChainOperationIfNecessaryWithCompletion___block_invoke_2(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109890;
    v28 = a2;
    v29 = 2112;
    v30 = v8;
    v31 = 2112;
    v32 = v9;
    v33 = 2112;
    v34 = v10;
    _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Finished PCS chaining a batch when completed: %d listOp: %@ error: %@%@", buf, 0x26u);
  }

  if (v9)
  {
    v12 = [*(a1 + 32) db];
    v13 = [v12 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__BRCSyncUpOperation__performPCSChainOperationIfNecessaryWithCompletion___block_invoke_29;
    block[3] = &unk_278502FF8;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v20 = *(a1 + 48);
    v16 = *(&v20 + 1);
    *&v17 = v14;
    *(&v17 + 1) = v15;
    v25 = v20;
    v24 = v17;
    v26 = *(a1 + 64);
    dispatch_async(v13, block);

    v18 = v24;
  }

  else
  {
    if (!v8)
    {
      (*(*(a1 + 64) + 16))();
      goto LABEL_8;
    }

    [v8 beginObservingChangesWithDelegate:0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __73__BRCSyncUpOperation__performPCSChainOperationIfNecessaryWithCompletion___block_invoke_3;
    v21[3] = &unk_278501F20;
    v22 = *(a1 + 64);
    [v8 addPreFlushDirectoryListCompletionBlock:v21];
    v18 = v22;
  }

LABEL_8:
  v19 = *MEMORY[0x277D85DE8];
}

void __73__BRCSyncUpOperation__performPCSChainOperationIfNecessaryWithCompletion___block_invoke_29(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultClientZone];
  v3 = [v2 itemByItemID:*(a1 + 40)];

  if (v3)
  {
    v4 = *(*(a1 + 48) + 512);
    v5 = [*(a1 + 32) defaultClientZone];
    v6 = [v5 dbRowID];
    [v4 postponeSyncUpCallback:v3 inZone:v6];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__BRCSyncUpOperation__performPCSChainOperationIfNecessaryWithCompletion___block_invoke_2_30;
  block[3] = &unk_278501520;
  v7 = *(a1 + 56);
  v9 = *(a1 + 64);
  dispatch_async(v7, block);
}

- (void)_performModifyRecordsOrBatchOperationWithCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  clientZone = [(BRCServerZone *)self->_serverZone clientZone];
  if (![(BRCSyncUpOperation *)self _performMetadataSaltingOperationIfNecessaryWithCompletion:completionCopy]&& ![(BRCSyncUpOperation *)self _performPCSChainOperationIfNecessaryWithCompletion:completionCopy])
  {
    v6 = [(NSMutableArray *)self->_recordsToSave count];
    if (v6 + [(NSMutableOrderedSet *)self->_deletedRecordIDs count])
    {
      v7 = objc_alloc_init(MEMORY[0x277CBC4A0]);
      [v7 setRecordsToSave:self->_recordsToSave];
      array = [(NSMutableOrderedSet *)self->_deletedRecordIDs array];
      [v7 setRecordIDsToDelete:array];

      [v7 setRecordIDsToDeleteToEtags:self->_recordIDsToDeleteToEtags];
      if ([(NSMutableDictionary *)self->_pluginFieldsForRecordDeletesByID count])
      {
        [v7 setPluginFieldsForRecordDeletesByID:self->_pluginFieldsForRecordDeletesByID];
      }

      if ([(NSMutableDictionary *)self->_conflictLosersToResolveByRecordID count])
      {
        [v7 setConflictLosersToResolveByRecordID:self->_conflictLosersToResolveByRecordID];
      }

      [v7 setSavePolicy:0];
      v9 = [MEMORY[0x277CBEA90] dataWithBytes:&self->_requestID length:8];
      [v7 setClientChangeTokenData:v9];

      [v7 setAtomic:1];
      v10 = [clientZone db];
      serialQueue = [v10 serialQueue];
      v22 = v7;
      [v7 setCallbackQueue:serialQueue];

      v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSMutableArray count](self->_recordsToSave, "count")}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v13 = self->_recordsToSave;
      v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v29;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v28 + 1) + 8 * i);
            recordID = [v18 recordID];
            [v12 setObject:v18 forKeyedSubscript:recordID];
          }

          v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v15);
      }

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __74__BRCSyncUpOperation__performModifyRecordsOrBatchOperationWithCompletion___block_invoke;
      v25[3] = &unk_278503048;
      v25[4] = self;
      v26 = clientZone;
      v27 = v12;
      v20 = v12;
      [v22 setPerRecordCompletionBlock:v25];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __74__BRCSyncUpOperation__performModifyRecordsOrBatchOperationWithCompletion___block_invoke_36;
      v23[3] = &unk_278503070;
      v24 = completionCopy;
      [v22 setModifyRecordsCompletionBlock:v23];
      [(_BRCOperation *)self addSubOperation:v22];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __74__BRCSyncUpOperation__performModifyRecordsOrBatchOperationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    memset(v21, 0, sizeof(v21));
    __brc_create_section(0, "[BRCSyncUpOperation _performModifyRecordsOrBatchOperationWithCompletion:]_block_invoke", 489, 0, v21);
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v18 = v21[0];
      v19 = [v5 recordID];
      v20 = [v19 recordName];
      *buf = 134218754;
      v23 = v18;
      v24 = 2112;
      v25 = v20;
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx sync-up error for record %@: %@%@", buf, 0x2Au);
    }

    [*(a1 + 32) _handleSyncUpErrorForRecord:v5 error:v7];
    __brc_leave_section(v21);
  }

  else if (v5)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = (a1 + 32);
    [v10 _checkRecordPackageItems:v5 inZone:v11];
    v13 = v12[2];
    v14 = [v5 recordID];
    v15 = [v13 objectForKeyedSubscript:v14];

    v16 = [*(*v12 + 256) bouncingAnalyzer];
    [v16 analyzeServerBouncingOriginalRecord:v15 savedRecord:v5];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  syncUpCompletionBlock = self->_syncUpCompletionBlock;
  if (syncUpCompletionBlock)
  {
    clientZone = [(BRCServerZone *)self->_serverZone clientZone];
    syncUpCompletionBlock[2](syncUpCompletionBlock, clientZone, resultCopy, errorCopy);

    v10 = self->_syncUpCompletionBlock;
    self->_syncUpCompletionBlock = 0;
  }

  [(BRCSyncUpOperation *)self hash];
  kdebug_trace();
  v11.receiver = self;
  v11.super_class = BRCSyncUpOperation;
  [(_BRCOperation *)&v11 finishWithResult:resultCopy error:errorCopy];
}

- (void)performShareUpdate:(id)update
{
  v30 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if ([(NSMutableArray *)self->_iworkUnsharedShareIDs count]|| [(NSMutableDictionary *)self->_renamedShareIDsToNames count])
  {
    serverZone = [(BRCSyncUpOperation *)self serverZone];
    isPrivateZone = [serverZone isPrivateZone];

    if ((isPrivateZone & 1) == 0)
    {
      [BRCSyncUpOperation performShareUpdate:];
    }

    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      renamedShareIDsToNames = self->_renamedShareIDsToNames;
      iworkUnsharedShareIDs = self->_iworkUnsharedShareIDs;
      *buf = 138412802;
      v25 = renamedShareIDsToNames;
      v26 = 2112;
      v27 = iworkUnsharedShareIDs;
      v28 = 2112;
      v29 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Fetching share IDs shared by us for renames: %@ and unshare: %@%@", buf, 0x20u);
    }

    v9 = MEMORY[0x277CBEB58];
    allKeys = [(NSMutableDictionary *)self->_renamedShareIDsToNames allKeys];
    v11 = [v9 setWithArray:allKeys];

    [v11 addObjectsFromArray:self->_iworkUnsharedShareIDs];
    v12 = objc_alloc(MEMORY[0x277CBC3E0]);
    allObjects = [v11 allObjects];
    v14 = [v12 initWithRecordIDs:allObjects];

    [v14 setShouldFetchAssetContent:0];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __41__BRCSyncUpOperation_performShareUpdate___block_invoke;
    v21 = &unk_2785030E8;
    selfCopy = self;
    v23 = updateCopy;
    [v14 setFetchRecordsCompletionBlock:&v18];
    [(_BRCOperation *)self addSubOperation:v14, v18, v19, v20, v21];
  }

  else
  {
    (*(updateCopy + 2))(updateCopy, self, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __41__BRCSyncUpOperation_performShareUpdate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __41__BRCSyncUpOperation_performShareUpdate___block_invoke_2;
    v59[3] = &unk_278503098;
    v8 = v6;
    v60 = v8;
    if ([v8 brc_checkErrorsFromCloudKit:v59])
    {
      v9 = *(a1 + 32);
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v64 = v8;
        v65 = 2112;
        v66 = v10;
        _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] got an error while fetching the records and shares %@, but ignoring it%@", buf, 0x16u);
      }
    }
  }

  v40 = v7;
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = [v5 allKeys];
  v48 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v48)
  {
    v13 = *v56;
    v14 = *MEMORY[0x277CBC050];
    v42 = *MEMORY[0x277CBC0A0];
    v41 = *MEMORY[0x277CFAD00];
    v43 = v5;
    v44 = a1;
    v45 = *MEMORY[0x277CBC050];
    v46 = *v56;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v55 + 1) + 8 * i);
        v17 = [v5 objectForKeyedSubscript:v16];
        v18 = [v17 recordType];
        v19 = [v18 isEqualToString:v14];

        if (v19)
        {
          v20 = v12;
          v21 = v17;
          v22 = [*(*(a1 + 32) + 560) containsObject:v16];
          v23 = [*(*(a1 + 32) + 568) objectForKeyedSubscript:v16];

          if (v22)
          {
            [v21 setPublicPermission:1];
            v24 = [v21 participants];
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v25 = [v24 countByEnumeratingWithState:&v51 objects:v61 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v52;
              do
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v52 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v51 + 1) + 8 * j);
                  if ([v29 role] != 1)
                  {
                    [v21 removeParticipant:v29];
                  }
                }

                v26 = [v24 countByEnumeratingWithState:&v51 objects:v61 count:16];
              }

              while (v26);
              v5 = v43;
              a1 = v44;
            }

            v12 = v20;
            v13 = v46;
LABEL_28:
          }

          else
          {
            v12 = v20;
            v13 = v46;
            if (v23)
            {
              v24 = [*(*(a1 + 32) + 568) objectForKeyedSubscript:v16];
              v30 = [v21 objectForKeyedSubscript:v42];
              [v21 brc_updateWithLogicalName:v24 isFolder:{objc_msgSend(v30, "isEqualToString:", v41)}];

              goto LABEL_28;
            }
          }

          [v12 addObject:v21];

          v14 = v45;
        }
      }

      v48 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v48);
  }

  if ([v12 count])
  {
    v31 = brc_bread_crumbs();
    v32 = brc_default_log();
    v33 = v40;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      __41__BRCSyncUpOperation_performShareUpdate___block_invoke_cold_1();
    }

    v34 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:v12 recordIDsToDelete:0];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __41__BRCSyncUpOperation_performShareUpdate___block_invoke_43;
    v49[3] = &unk_2785030C0;
    v35 = *(a1 + 40);
    v49[4] = *(a1 + 32);
    v50 = v35;
    [v34 setModifyRecordsCompletionBlock:v49];
    [*(a1 + 32) addSubOperation:v34];
  }

  else
  {
    v36 = brc_bread_crumbs();
    v37 = brc_default_log();
    v33 = v40;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      __41__BRCSyncUpOperation_performShareUpdate___block_invoke_cold_2();
    }

    v38 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __41__BRCSyncUpOperation_performShareUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    if ([v3 code] == 11)
    {

LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }

    v9 = [v3 code];

    if (v9 == 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] Got a permanent error %@ when fetching records and shares%@", &v12, 0x16u);
  }

  v8 = 1;
LABEL_10:

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_performShareUpdateAndModifyRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__BRCSyncUpOperation__performShareUpdateAndModifyRecordsWithCompletion___block_invoke;
  v6[3] = &unk_278503138;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(BRCSyncUpOperation *)self performShareUpdate:v6];
}

void __72__BRCSyncUpOperation__performShareUpdateAndModifyRecordsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__BRCSyncUpOperation__performShareUpdateAndModifyRecordsWithCompletion___block_invoke_2;
    v7[3] = &unk_278503110;
    v6 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v6 _performModifyRecordsOrBatchOperationWithCompletion:v7];
  }
}

- (void)_scheduleShareUpdateAndModifyRecordsAndZoneCreationOperation
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __82__BRCSyncUpOperation__scheduleShareUpdateAndModifyRecordsAndZoneCreationOperation__block_invoke;
  v2[3] = &unk_2785025A8;
  v2[4] = self;
  [(BRCSyncUpOperation *)self _performShareUpdateAndModifyRecordsWithCompletion:v2];
}

void __82__BRCSyncUpOperation__scheduleShareUpdateAndModifyRecordsAndZoneCreationOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
LABEL_7:
    [*(a1 + 32) completedWithResult:v5 error:v6];
    goto LABEL_8;
  }

  if (![*(*(a1 + 32) + 648) shouldRecreateServerZoneAfterError:v6])
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      __82__BRCSyncUpOperation__scheduleShareUpdateAndModifyRecordsAndZoneCreationOperation__block_invoke_cold_1();
    }

    goto LABEL_7;
  }

  objc_initWeak(&location, *(a1 + 32));
  v7 = [*(*(a1 + 32) + 648) clientZone];
  v8 = [v7 asPrivateClientZone];
  v9 = [*(a1 + 32) group];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__BRCSyncUpOperation__scheduleShareUpdateAndModifyRecordsAndZoneCreationOperation__block_invoke_2;
  v12[3] = &unk_2784FF1F0;
  objc_copyWeak(&v13, &location);
  [v8 createCloudKitZoneWithGroup:v9 completion:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
LABEL_8:
}

void __82__BRCSyncUpOperation__scheduleShareUpdateAndModifyRecordsAndZoneCreationOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (v5)
  {
    [WeakRetained completedWithResult:0 error:v5];
  }

  else
  {
    [WeakRetained _scheduleShareUpdateAndModifyRecordsAndZoneCreationOperation];
  }
}

- (void)_setSharingFieldsOnContentRecord:(id)record withProtectionData:(id)data baseToken:(id)token routingKey:(id)key forceOverwrite:(BOOL)overwrite
{
  overwriteCopy = overwrite;
  v37 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dataCopy = data;
  tokenCopy = token;
  keyCopy = key;
  recordType = [recordCopy recordType];
  v16 = [recordType isEqualToString:@"content"];

  if (v16)
  {
    if (dataCopy)
    {
LABEL_3:
      mutableEncryptedPublicSharingKeyData = [recordCopy mutableEncryptedPublicSharingKeyData];
      if (mutableEncryptedPublicSharingKeyData)
      {
        v18 = mutableEncryptedPublicSharingKeyData;
        mutableEncryptedPublicSharingKeyData2 = [recordCopy mutableEncryptedPublicSharingKeyData];
        v20 = [mutableEncryptedPublicSharingKeyData2 isEqualToData:dataCopy];

        if ((v20 & 1) == 0)
        {
          v21 = brc_bread_crumbs();
          v22 = brc_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            mutableEncryptedPublicSharingKeyData3 = [recordCopy mutableEncryptedPublicSharingKeyData];
            v27 = 138412802;
            v28 = dataCopy;
            v29 = 2112;
            v30 = mutableEncryptedPublicSharingKeyData3;
            v31 = 2112;
            v32 = v21;
            _os_log_fault_impl(&dword_223E7A000, v22, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Protection data mismatch between share and record being shared! (%@ vs %@)%@", &v27, 0x20u);
          }

          if (overwriteCopy)
          {
            [recordCopy setMutableEncryptedPublicSharingKeyData:dataCopy];
          }
        }
      }

      if (tokenCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  else
  {
    [BRCSyncUpOperation _setSharingFieldsOnContentRecord:withProtectionData:baseToken:routingKey:forceOverwrite:];
    if (dataCopy)
    {
      goto LABEL_3;
    }
  }

  [BRCSyncUpOperation _setSharingFieldsOnContentRecord:withProtectionData:baseToken:routingKey:forceOverwrite:];
  if (tokenCopy)
  {
LABEL_10:
    [recordCopy setBaseToken:tokenCopy];
  }

LABEL_11:
  if (keyCopy)
  {
    [recordCopy setRoutingKey:keyCopy];
  }

  v23 = brc_bread_crumbs();
  v24 = brc_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v27 = 138413314;
    v28 = recordCopy;
    v29 = 2112;
    v30 = dataCopy;
    v31 = 2112;
    v32 = tokenCopy;
    v33 = 2112;
    v34 = keyCopy;
    v35 = 2112;
    v36 = v23;
    _os_log_debug_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] updated content record %@ with protectionData %@ baseToken %@ routingKey %@%@", &v27, 0x34u);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)_recordIsIWorkShareable:(id)shareable
{
  shareableCopy = shareable;
  v4 = [shareableCopy objectForKeyedSubscript:@"extension"];
  if (v4)
  {
    iWorkShareableExtensions = [MEMORY[0x277CFAEE0] iWorkShareableExtensions];
    v6 = [shareableCopy objectForKeyedSubscript:@"extension"];
    lowercaseString = [v6 lowercaseString];
    v8 = [iWorkShareableExtensions containsObject:lowercaseString];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_performUpdateSharingProtectionDataIfNecessary:(id)necessary
{
  v35[4] = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  if ([(NSMutableArray *)self->_recordsNeedingUpdatedSharingProtectionInfo count])
  {
    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = necessaryCopy;
    if ([(NSMutableArray *)self->_recordsNeedingUpdatedSharingProtectionInfo count])
    {
      v5 = 0;
      do
      {
        v6 = [(NSMutableArray *)self->_recordsNeedingUpdatedSharingProtectionInfo objectAtIndexedSubscript:v5];
        v7 = objc_alloc(MEMORY[0x277CBC5D0]);
        recordID = [v6 recordID];
        v9 = [v7 initShareIDWithRecordID:recordID serverZone:self->_serverZone];

        [v27 addObject:v9];
        recordType = [v6 recordType];
        v11 = [recordType isEqualToString:@"content"];

        if (v11)
        {
          recordID2 = [v6 recordID];
          [v27 addObject:recordID2];
          goto LABEL_6;
        }

        while (++v5 < [(NSMutableArray *)self->_recordsNeedingUpdatedSharingProtectionInfo count])
        {
          recordID2 = [(NSMutableArray *)self->_recordsNeedingUpdatedSharingProtectionInfo objectAtIndexedSubscript:v5];
          v13 = objc_alloc(MEMORY[0x277CBC5D0]);
          recordID3 = [v6 recordID];
          v15 = [v13 initShareIDWithRecordID:recordID3 serverZone:self->_serverZone];

          if (([v15 isEqual:v9] & 1) == 0)
          {

            break;
          }

          recordType2 = [recordID2 recordType];
          v17 = [recordType2 isEqualToString:@"content"];

          if (v17)
          {
            v12RecordID = [recordID2 recordID];
            [v27 addObject:v12RecordID];
          }

LABEL_6:
        }
      }

      while (v5 < [(NSMutableArray *)self->_recordsNeedingUpdatedSharingProtectionInfo count]);
    }

    ckContainer = [(BRCSyncContext *)self->super._syncContext ckContainer];
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = __Block_byref_object_copy__24;
    v33[4] = __Block_byref_object_dispose__24;
    v34 = 0;
    v20 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:v27];
    [v20 setShouldFetchAssetContent:0];
    v21 = *MEMORY[0x277CBC150];
    v35[0] = *MEMORY[0x277CBC138];
    v35[1] = v21;
    v22 = *MEMORY[0x277CBC140];
    v35[2] = *MEMORY[0x277CBC148];
    v35[3] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
    [v20 setDesiredKeys:v23];

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __69__BRCSyncUpOperation__performUpdateSharingProtectionDataIfNecessary___block_invoke;
    v32[3] = &unk_278503160;
    v32[4] = self;
    v32[5] = v33;
    [v20 setPerRecordCompletionBlock:v32];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __69__BRCSyncUpOperation__performUpdateSharingProtectionDataIfNecessary___block_invoke_50;
    v28[3] = &unk_2785031B0;
    v31 = v33;
    v30 = v26;
    v28[4] = self;
    v24 = ckContainer;
    v29 = v24;
    [v20 setFetchRecordsCompletionBlock:v28];
    [(_BRCOperation *)self addSubOperation:v20];

    necessaryCopy = v26;
    _Block_object_dispose(v33, 8);
  }

  else
  {
    (*(necessaryCopy + 2))(necessaryCopy, self, 0);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __69__BRCSyncUpOperation__performUpdateSharingProtectionDataIfNecessary___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v81 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9 && ([v9 brc_isCloudKitUnknownItemError] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  v11 = [v7 recordType];
  v12 = [v11 isEqualToString:*MEMORY[0x277CBC050]];

  if (v12)
  {
    v13 = v7;
    v14 = [v13 publicSharingIdentity];

    if (!v14)
    {
      __69__BRCSyncUpOperation__performUpdateSharingProtectionDataIfNecessary___block_invoke_cold_3();
    }

    v15 = [v13 publicSharingIdentity];
    v60 = [v13 routingKey];
    v16 = [v13 baseToken];

    v67 = [v8 brc_shareItemID];
    v56 = 0;
    v63 = 0;
    v17 = 0;
    if (!v15)
    {
      goto LABEL_58;
    }

LABEL_28:
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = *(*(a1 + 32) + 584);
    v66 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
    if (!v66)
    {
      goto LABEL_57;
    }

    v61 = v17;
    v52 = v10;
    v53 = v8;
    v54 = v7;
    LOBYTE(v35) = 0;
    v65 = *v69;
    v36 = *MEMORY[0x277CBC150];
    v59 = *MEMORY[0x277CBC138];
    v58 = *MEMORY[0x277CBC148];
    v57 = *MEMORY[0x277CBC140];
    *&v34 = 138412802;
    v51 = v34;
    v64 = *MEMORY[0x277CBC150];
    v55 = v16;
    while (1)
    {
      for (i = 0; i != v66; ++i)
      {
        v38 = v35;
        if (*v69 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v68 + 1) + 8 * i);
        v40 = [v39 recordID];
        v41 = [*(*(a1 + 32) + 256) zoneAppRetriever];
        v42 = [v40 brc_itemIDWithZoneAppRetriever:v41];

        v35 = [v67 isEqualToItemID:v42];
        if (v35)
        {
          if ([*(a1 + 32) _recordIsIWorkShareable:v39])
          {
            v43 = a1;
            v44 = [v39 encryptedValues];
            v45 = [v44 objectForKeyedSubscript:v36];

            if (!v45)
            {
              v46 = [v39 encryptedValues];
              [v46 setObject:v15 forKeyedSubscript:v36];
              goto LABEL_43;
            }

            if (([v15 isEqualToData:v45] & 1) == 0)
            {
              v46 = brc_bread_crumbs();
              v47 = brc_default_log();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
              {
                *buf = v51;
                v74 = v45;
                v75 = 2112;
                v76 = v15;
                v77 = 2112;
                v78 = v46;
                _os_log_fault_impl(&dword_223E7A000, v47, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: protection data mismatch! ignoring content records version (%@ to %@)%@", buf, 0x20u);
              }

LABEL_43:
            }

            a1 = v43;
            v16 = v55;
          }

          if (v16)
          {
            [v39 setObject:v16 forKeyedSubscript:v59];
          }

          if (v61)
          {
            [v39 setObject:v61 forKeyedSubscript:v58];
          }

          if (v63)
          {
            [v39 setObject:v63 forKeyedSubscript:v57];
          }

          v48 = [v39 recordType];
          v49 = [v48 isEqualToString:@"content"];

          if (v49)
          {
            [*(a1 + 32) _setSharingFieldsOnContentRecord:v39 withProtectionData:v15 baseToken:v16 routingKey:v60 forceOverwrite:v56];
          }

          goto LABEL_53;
        }

        if (v38)
        {

          v8 = v53;
          v7 = v54;
          v10 = v52;
          v17 = v61;
          goto LABEL_56;
        }

LABEL_53:

        v36 = v64;
      }

      v66 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
      if (!v66)
      {
        v8 = v53;
        v7 = v54;
        v10 = v52;
        v17 = v61;
        goto LABEL_57;
      }
    }
  }

  v18 = [v7 recordType];
  v19 = [v18 isEqualToString:@"content"];

  if (v19)
  {
    v20 = [v7 mutableEncryptedPublicSharingKeyData];
    v21 = v20;
    v22 = MEMORY[0x277CBC150];
    if (v20)
    {
      v15 = v20;
      v23 = *v22;
    }

    else
    {
      v24 = [v7 encryptedValues];
      v23 = *v22;
      v15 = [v24 objectForKeyedSubscript:v23];
    }

    v25 = [v7 mutableEncryptedPublicSharingKeyData];
    v56 = v25 != 0;

    v26 = [v7 encryptedValues];
    v27 = [v26 objectForKeyedSubscript:v23];

    if (v27)
    {
      if ([v27 isEqualToData:v15])
      {
        [*(a1 + 32) _recordIsIWorkShareable:v7];
        goto LABEL_24;
      }

      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        *buf = 138413058;
        v74 = v15;
        v75 = 2112;
        v76 = v27;
        v77 = 2112;
        v78 = v7;
        v79 = 2112;
        v80 = v28;
        _os_log_fault_impl(&dword_223E7A000, v29, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: protection data mismatch between content public sharing identity and web sharing data (%@ vs %@) for %@%@", buf, 0x2Au);
      }
    }

    else
    {
      if (![*(a1 + 32) _recordIsIWorkShareable:v7])
      {
        goto LABEL_24;
      }

      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        __69__BRCSyncUpOperation__performUpdateSharingProtectionDataIfNecessary___block_invoke_cold_2();
      }
    }

LABEL_24:
    v60 = [v7 routingKey];
    v30 = [v7 baseToken];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBC138]];
    }

    v16 = v32;

    v33 = [*(*(a1 + 32) + 256) zoneAppRetriever];
    v67 = [v8 brc_itemIDWithZoneAppRetriever:v33];

    v17 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBC148]];
    v63 = [v7 objectForKeyedSubscript:*MEMORY[0x277CBC140]];

    if (!v15)
    {
LABEL_58:

      goto LABEL_59;
    }

    goto LABEL_28;
  }

  if (v7)
  {
    obj = brc_bread_crumbs();
    v40 = brc_default_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      __69__BRCSyncUpOperation__performUpdateSharingProtectionDataIfNecessary___block_invoke_cold_1();
    }

    v15 = 0;
    v60 = 0;
    v16 = 0;
    v67 = 0;
    v17 = 0;
    v63 = 0;
LABEL_56:

LABEL_57:
    goto LABEL_58;
  }

  v15 = 0;
  v60 = 0;
  v16 = 0;
  v67 = 0;
  v17 = 0;

LABEL_59:
  v50 = *MEMORY[0x277D85DE8];
}

void __69__BRCSyncUpOperation__performUpdateSharingProtectionDataIfNecessary___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v32 = a2;
  v5 = a3;
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = dispatch_group_create();
    v8 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v9 = *MEMORY[0x277CBC150];
    v10 = *MEMORY[0x277CFACB0];
    *&v11 = 138412290;
    v31 = v11;
    while (1)
    {
      if (v8 >= [*(*(a1 + 32) + 584) count])
      {
        _Block_object_dispose(&v39, 8);
        v28 = *(a1 + 32);
        v29 = *(*(*(a1 + 56) + 8) + 40);
        (*(*(a1 + 48) + 16))();

        goto LABEL_18;
      }

      v12 = [*(*(a1 + 32) + 584) objectAtIndexedSubscript:v40[3]];
      v13 = [v12 encryptedValues];
      v14 = [v13 objectForKeyedSubscript:v9];
      if (v14)
      {
      }

      else
      {
        v15 = [*(a1 + 32) _recordIsIWorkShareable:v12];

        if (!v15)
        {
          goto LABEL_16;
        }

        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v44 = v12;
          v45 = 2112;
          v46 = v16;
          _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] record %@ still needs web sharing protection data%@", buf, 0x16u);
        }

        dispatch_group_enter(v7);
        v18 = *(a1 + 40);
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __69__BRCSyncUpOperation__performUpdateSharingProtectionDataIfNecessary___block_invoke_51;
        v33[3] = &unk_278503188;
        v37 = *(a1 + 56);
        v19 = v12;
        v20 = *(a1 + 32);
        v34 = v19;
        v35 = v20;
        v38 = &v39;
        v21 = v7;
        v36 = v21;
        [v18 getNewWebSharingIdentityDataWithCompletionHandler:v33];
        v22 = dispatch_time(0, 10000000000);
        if (dispatch_group_wait(v21, v22))
        {
          v23 = brc_bread_crumbs();
          v24 = brc_default_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            *buf = v31;
            v44 = v23;
            _os_log_fault_impl(&dword_223E7A000, v24, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Timed out while waiting for new web-sharing identity%@", buf, 0xCu);
          }

          v25 = [MEMORY[0x277CCA9B8] br_errorWithDomain:v10 code:15 description:@"unreachable: Timed out while waiting for new web-sharing identity"];
          v26 = *(*(a1 + 56) + 8);
          v27 = *(v26 + 40);
          *(v26 + 40) = v25;
        }

        v13 = v34;
      }

LABEL_16:
      v8 = v40[3] + 1;
      v40[3] = v8;
    }
  }

  v6 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
LABEL_18:

  v30 = *MEMORY[0x277D85DE8];
}

void __69__BRCSyncUpOperation__performUpdateSharingProtectionDataIfNecessary___block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __69__BRCSyncUpOperation__performUpdateSharingProtectionDataIfNecessary___block_invoke_51_cold_1();
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  v9 = [*(a1 + 32) encryptedValues];
  v10 = *MEMORY[0x277CBC150];
  [v9 setObject:v5 forKeyedSubscript:*MEMORY[0x277CBC150]];

  v11 = objc_alloc(MEMORY[0x277CBC5D0]);
  v12 = [*(a1 + 32) recordID];
  v13 = [v11 initShareIDWithRecordID:v12 serverZone:*(*(a1 + 40) + 648)];

  for (i = *(*(*(a1 + 64) + 8) + 24) + 1; i < [*(*(a1 + 40) + 584) count]; ++i)
  {
    v15 = [*(*(a1 + 40) + 584) objectAtIndexedSubscript:i];
    v16 = objc_alloc(MEMORY[0x277CBC5D0]);
    v17 = [v15 recordID];
    v18 = [v16 initShareIDWithRecordID:v17 serverZone:*(*(a1 + 40) + 648)];

    if (![v18 isEqual:v13])
    {

      break;
    }

    v19 = [v15 encryptedValues];
    [v19 setObject:v5 forKeyedSubscript:v10];

    *(*(*(a1 + 64) + 8) + 24) = i;
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)main
{
  [(BRCSyncUpOperation *)self hash];
  kdebug_trace();
  ckContainer = [(BRCSyncContext *)self->super._syncContext ckContainer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__BRCSyncUpOperation_main__block_invoke;
  v5[3] = &unk_278503200;
  v5[4] = self;
  v6 = ckContainer;
  v4 = ckContainer;
  [(BRCSyncUpOperation *)self _performUpdateSharingProtectionDataIfNecessary:v5];
}

void __26__BRCSyncUpOperation_main__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (a3)
  {

    [v4 completedWithResult:0 error:a3];
    return;
  }

  if (([v4[72] count] & 1) == 0 && objc_msgSend(*(*v5 + 72), "count"))
  {
    v6 = dispatch_group_create();
    if ([*(*v5 + 72) count])
    {
      v7 = 0;
      do
      {
        dispatch_group_enter(v6);
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __26__BRCSyncUpOperation_main__block_invoke_2;
        v17[3] = &unk_2785031D8;
        v17[4] = v8;
        v19 = v7;
        v18 = v6;
        [v9 getNewWebSharingIdentityDataWithCompletionHandler:v17];

        v7 += 2;
      }

      while (v7 < [*(*(a1 + 32) + 576) count]);
    }

    dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
LABEL_15:

    goto LABEL_16;
  }

  if ([*(*v5 + 72) count])
  {
    v6 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __26__BRCSyncUpOperation_main__block_invoke_cold_1();
    }

    goto LABEL_15;
  }

LABEL_16:
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __26__BRCSyncUpOperation_main__block_invoke_cold_2();
  }

  if ([*(*v5 + 81) isPrivateZone] && (objc_msgSend(*(*v5 + 81), "hasFetchedServerZoneState") & 1) == 0)
  {
    v13 = [*(*v5 + 81) clientZone];
    v14 = [v13 asPrivateClientZone];
    v15 = [*v5 group];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __26__BRCSyncUpOperation_main__block_invoke_58;
    v16[3] = &unk_2784FF540;
    v16[4] = *v5;
    [v14 createCloudKitZoneWithGroup:v15 completion:v16];
  }

  else
  {
    [*v5 _scheduleShareUpdateAndModifyRecordsAndZoneCreationOperation];
  }
}

void __26__BRCSyncUpOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 576) objectAtIndexedSubscript:*(a1 + 48)];
  v8 = [*(*(a1 + 32) + 576) objectAtIndexedSubscript:*(a1 + 48) + 1];
  v9 = [v7 recordID];
  v10 = [*(*(a1 + 32) + 256) zoneAppRetriever];
  v11 = [v9 brc_itemIDWithZoneAppRetriever:v10];

  v12 = [v8 recordID];
  v13 = [*(*(a1 + 32) + 256) zoneAppRetriever];
  v14 = [v12 brc_itemIDWithZoneAppRetriever:v13];

  if (v5 && !v6 && ([v11 isEqualToItemID:v14] & 1) != 0)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __26__BRCSyncUpOperation_main__block_invoke_2_cold_3();
    }

    v17 = [v7 encryptedValues];
    v18 = *MEMORY[0x277CBC150];
    [v17 setObject:v5 forKeyedSubscript:*MEMORY[0x277CBC150]];

    v19 = [v8 encryptedValues];
    [v19 setObject:v5 forKeyedSubscript:v18];
    goto LABEL_12;
  }

  if (([v11 isEqual:v14] & 1) == 0)
  {
    __26__BRCSyncUpOperation_main__block_invoke_2_cold_1();
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    __26__BRCSyncUpOperation_main__block_invoke_2_cold_2();
    goto LABEL_9;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_9:
  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, 0x90u))
  {
    v22 = [v7 recordID];
    v23 = 138412802;
    v24 = v22;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v19;
    _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] Failed getting web sharing identity for %@ - %@%@", &v23, 0x20u);
  }

LABEL_12:
  dispatch_group_leave(*(a1 + 40));

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __26__BRCSyncUpOperation_main__block_invoke_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 completedWithResult:0 error:a2];
  }

  else
  {
    return [v2 _scheduleShareUpdateAndModifyRecordsAndZoneCreationOperation];
  }
}

- (void)_handleSyncUpErrorForRecord:(id)record error:(id)error
{
  recordCopy = record;
  errorCopy = error;
  if ([errorCopy brc_isCloudKitAtomicFailure])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperation _handleSyncUpErrorForRecord:error:];
    }
  }

  else
  {
    v10 = self->_serverZone;
    clientZone = [(BRCServerZone *)v10 clientZone];
    v12 = objc_opt_new();
    v13 = [clientZone db];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__BRCSyncUpOperation__handleSyncUpErrorForRecord_error___block_invoke;
    v15[3] = &unk_278503228;
    v16 = recordCopy;
    selfCopy = self;
    v18 = clientZone;
    v19 = errorCopy;
    v20 = v12;
    v21 = v10;
    v8 = v10;
    v14 = v12;
    v9 = clientZone;
    [v13 groupInBatch:v15];
  }
}

void __56__BRCSyncUpOperation__handleSyncUpErrorForRecord_error___block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  v3 = [*(a1 + 32) recordID];
  v4 = [*(*(v2 + 8) + 256) zoneAppRetriever];
  v5 = [v3 brc_itemIDWithZoneAppRetriever:v4];

  v6 = [*(v2 + 16) itemByItemID:v5];
  v7 = [*(v2 + 16) mangledID];
  v8 = [BRCUserDefaults defaultsForMangledID:v7];
  v9 = [v8 skipPerItemSyncUpThrottling];

  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __56__BRCSyncUpOperation__handleSyncUpErrorForRecord_error___block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) _handleErrorForRecord:*(a1 + 32) inZone:*(a1 + 48) error:*(a1 + 56)];
  }

  if (([*(a1 + 56) brc_isCloudKitUnknownItemError] & 1) != 0 || objc_msgSend(*(a1 + 56), "brc_isCloudKitErrorMissingContentRecordForNewStructureRecord"))
  {
    [*(a1 + 40) _handleUnkownItem:v6];
LABEL_9:
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_10;
  }

  if (([*(a1 + 56) brc_isStaleRecordUpdateError] & 1) != 0 || objc_msgSend(*(a1 + 56), "brc_isReferenceValidationError"))
  {
    [*(a1 + 40) _handleStaleRecordUpdate:*(a1 + 32) item:v6 inZone:*(a1 + 48)];
    goto LABEL_9;
  }

  if ([*(a1 + 56) brc_containsCloudKitErrorCode:10] && (objc_msgSend(*(a1 + 40), "_handlePermissionErrorForItem:inZone:", v6, *(a1 + 48)) & 1) != 0)
  {
    goto LABEL_9;
  }

  if ([*(a1 + 56) brc_isCloudKitErrorRequiringAssetRescan])
  {
    [*(a1 + 40) _rescanItem:v6];
    goto LABEL_9;
  }

  if ([*(a1 + 56) brc_isCloudKitErrorRequiringAssetReupload])
  {
    [*(a1 + 40) _reuploadItemInContainerWithRecord:*(a1 + 32) inZone:*(a1 + 48) error:*(a1 + 56)];
    goto LABEL_9;
  }

  v17 = *(a1 + 56);
  v71 = 0;
  v18 = [v17 brc_isCloudKitErrorUnsupportedOSForItemAndGetMinimumSupported:&v71];
  v15 = v71;
  if (v18)
  {
    [*(a1 + 40) _markItemBacklistedFromSyncWithMinimumSupportedOS:v6 minimumSupportedOSName:v15];
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  v19 = *(a1 + 56);
  v70 = 0;
  v20 = [v19 brc_isCloudKitErrorReparentedToNewParent:&v70];
  v14 = v70;
  if (v20)
  {
    [*(a1 + 40) _markRecordNeedingRemapToNewParent:*(a1 + 32) newParentName:v14 inZone:*(a1 + 48) itemIDsAlreadyRemapped:*(a1 + 64)];
    v12 = 0;
    v13 = 0;
    goto LABEL_10;
  }

  v21 = *(a1 + 56);
  v69 = 0;
  v22 = [v21 brc_isCloudKitErrorRemappedToNewRecordName:&v69];
  v13 = v69;
  if (v22)
  {
    [*(a1 + 40) _markRecordNeedingRemapToNewRecordName:*(a1 + 32) newRecordName:v13 inZone:*(a1 + 48) itemIDsAlreadyRemapped:*(a1 + 64)];
LABEL_30:
    v12 = 0;
    goto LABEL_10;
  }

  if ([*(a1 + 56) brc_isIndividualItemBlacklistError])
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, 0x90u))
    {
      __56__BRCSyncUpOperation__handleSyncUpErrorForRecord_error___block_invoke_cold_2();
    }

    v25 = *(a1 + 48);
    v26 = *(*(a1 + 40) + 512);
    v27 = [v25 dbRowID];
    [v26 blockSyncUpCallback:v6 inZone:v27];

    goto LABEL_30;
  }

  if ([*(a1 + 56) brc_containsCloudKitErrorCode:15] && objc_msgSend(*(a1 + 56), "brc_containsCloudKitUnderlyingErrorCode:", 2040))
  {
    v28 = [*v2 recordID];
    v29 = [v28 brc_isZoneRootRecordID];

    if (v29)
    {
      if ([*(a1 + 48) isPrivateZone])
      {
        v30 = [*(a1 + 48) asPrivateClientZone];
        v31 = [v30 defaultAppLibrary];
        [v31 setStateBits:2];
      }
    }

    else
    {
      v45 = [*v2 recordID];
      v46 = [v45 brc_isAppLibraryRootRecordID];

      if (v46)
      {
        v47 = [*(*(a1 + 40) + 256) zoneAppRetriever];
        v48 = [*(a1 + 32) recordID];
        v49 = [v48 brc_appLibraryRootZoneName];
        v50 = [v47 appLibraryByID:v49];

        [v50 setStateBits:2];
      }
    }

    goto LABEL_30;
  }

  if ([*(a1 + 56) brc_isCloudKitPCSChainingError])
  {
    v32 = [*v2 parent];

    if (!v32)
    {
      v63 = [*(a1 + 48) serverItemByItemID:v5];
      if ([v6 isZoneRoot])
      {
        goto LABEL_52;
      }

      v38 = *(a1 + 48);
      v61 = [v6 st];
      v39 = [v61 parentID];
      v40 = [v38 serverItemByItemID:v39];

      v62 = v40;
      if (!v40)
      {
LABEL_52:
        v62 = 0;
      }

      else if (![v40 pcsChainState])
      {
        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v73 = v41;
          _os_log_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEFAULT, "[WARNING] Updating parent item to be chained because it is unknown and we encountered a PCS error%@", buf, 0xCu);
        }

        v43 = *(*(a1 + 40) + 256);
        v67[0] = MEMORY[0x277D85DD0];
        v67[1] = 3221225472;
        v67[2] = __56__BRCSyncUpOperation__handleSyncUpErrorForRecord_error___block_invoke_59;
        v67[3] = &unk_2784FFF58;
        v62 = v62;
        v68 = v62;
        [v43 performAsyncOnServerReadWriteDatabaseWorkloop:v67];
        v44 = v68;
LABEL_61:

        goto LABEL_30;
      }

      if (v63 && ![v63 pcsChainState])
      {
        v57 = brc_bread_crumbs();
        v58 = brc_default_log();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v73 = v57;
          _os_log_impl(&dword_223E7A000, v58, OS_LOG_TYPE_DEFAULT, "[WARNING] Updating local item to be chained because it is unknown and we encountered a PCS error%@", buf, 0xCu);
        }

        v59 = *(*(a1 + 40) + 256);
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __56__BRCSyncUpOperation__handleSyncUpErrorForRecord_error___block_invoke_62;
        v65[3] = &unk_2784FFF58;
        v66 = v63;
        [v59 performAsyncOnServerReadWriteDatabaseWorkloop:v65];
        v44 = v66;
      }

      else
      {
        v51 = brc_bread_crumbs();
        v52 = brc_default_log();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = *v2;
          *buf = 138412546;
          v73 = v53;
          v74 = 2112;
          v75 = v51;
          _os_log_impl(&dword_223E7A000, v52, OS_LOG_TYPE_DEFAULT, "[WARNING] Encountered an unknown pcs error for %@%@", buf, 0x16u);
        }

        *(*(a1 + 40) + 520) = 1;
        v44 = [*(a1 + 40) serverZone];
        v54 = [v44 clientZone];
        v55 = [*(a1 + 32) recordID];
        v56 = [v54 locateRecordIfNecessaryForRecordID:v55 isUserWaiting:0];
      }

      goto LABEL_61;
    }
  }

  v33 = *(a1 + 56);
  v64 = 0;
  v34 = [v33 brc_isCloudKitShouldBeUsingEnhancedDrivePrivacyWithFieldName:&v64];
  v12 = v64;
  if (v34)
  {
    v35 = brc_bread_crumbs();
    v36 = brc_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v60 = *(a1 + 72);
      *buf = 138412802;
      v73 = v60;
      v74 = 2112;
      v75 = v12;
      v76 = 2112;
      v77 = v35;
      _os_log_debug_impl(&dword_223E7A000, v36, OS_LOG_TYPE_DEBUG, "[DEBUG] Enabling server zone %@ to use enhanced drive privacy (fieldName %@)%@", buf, 0x20u);
    }

    [*(a1 + 48) setStateBits:0x400000];
  }

  else if (([*(a1 + 48) handleSaltingErrorIfNeeded:*(a1 + 56) record:*(a1 + 32)] & 1) == 0)
  {
    v37 = [*(a1 + 32) parent];
    *(*(a1 + 40) + 520) = v37 != 0;
  }

LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
}

void __56__BRCSyncUpOperation__handleSyncUpErrorForRecord_error___block_invoke_59(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 itemID];
  v5 = [*(a1 + 32) serverZone];
  v6 = [v5 dbRowID];
  [v4 updatePCSChainingStateForItemWithUnkownPCSState:3 itemID:v7 zoneRowID:v6];
}

void __56__BRCSyncUpOperation__handleSyncUpErrorForRecord_error___block_invoke_62(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 itemID];
  v5 = [*(a1 + 32) serverZone];
  v6 = [v5 dbRowID];
  [v4 updatePCSChainingStateForItemWithUnkownPCSState:3 itemID:v7 zoneRowID:v6];
}

- (void)_reportSyncUpErrorForItem:(id)item error:(id)error
{
  sessionContext = self->super._sessionContext;
  errorCopy = error;
  itemCopy = item;
  localItemSyncErrorReporter = [(BRCSessionContext *)sessionContext localItemSyncErrorReporter];
  dbRowID = [itemCopy dbRowID];

  [localItemSyncErrorReporter reportSyncUpErrorForItemWithRowID:dbRowID error:errorCopy underlyingError:0];
}

- (void)_handleErrorForRecord:(id)record inZone:(id)zone error:(id)error
{
  zoneCopy = zone;
  errorCopy = error;
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v13 = [recordName hasPrefix:@"shareAlias/"];

  if (!v13)
  {
    recordID2 = [recordCopy recordID];

    zoneAppRetriever = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
    v28 = [recordID2 brc_itemIDWithZoneAppRetriever:zoneAppRetriever];

    v23 = [zoneCopy itemByItemID:v28];

    goto LABEL_12;
  }

  v14 = [recordCopy objectForKeyedSubscript:@"target"];

  if (!v14)
  {
    v23 = 0;
    clientZone = zoneCopy;
    goto LABEL_11;
  }

  zoneAppRetriever2 = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
  recordID3 = [v14 recordID];
  zoneID = [recordID3 zoneID];
  v18 = [zoneAppRetriever2 serverZoneByCKZoneID:zoneID];
  clientZone = [v18 clientZone];

  if (!clientZone)
  {
    goto LABEL_8;
  }

  recordID4 = [v14 recordID];
  zoneAppRetriever3 = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
  v22 = [recordID4 brc_itemIDWithZoneAppRetriever:zoneAppRetriever3];
  v23 = [clientZone itemByItemID:v22];

  if (![v23 syncUpState])
  {
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      [BRCSyncUpOperation _handleErrorForRecord:inZone:error:];
    }

LABEL_8:
    v23 = 0;
  }

LABEL_11:

  zoneCopy = clientZone;
LABEL_12:
  v29 = brc_bread_crumbs();
  v30 = brc_default_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [BRCSyncUpOperation _handleErrorForRecord:inZone:error:];
  }

  if (v23)
  {
    v31 = +[BRCUploadV1PerformanceTrackerManager sharedManager];
    trackerForCurrentPersona = [v31 trackerForCurrentPersona];

    fileObjectID = [v23 fileObjectID];
    asString = [fileObjectID asString];
    [trackerForCurrentPersona finishTrackingItemWithIdentifier:asString];

    if (([v23 isZoneRoot] & 1) == 0)
    {
      syncUpCallback = [(BRCSyncUpOperation *)self syncUpCallback];
      dbRowID = [zoneCopy dbRowID];
      v37 = [syncUpCallback postponeSyncUpCallback:v23 inZone:dbRowID];

      mangledID = [zoneCopy mangledID];
      v39 = [BRCUserDefaults defaultsForMangledID:mangledID];
      syncUpRetryCountForFailure = [v39 syncUpRetryCountForFailure];

      if (v37 > syncUpRetryCountForFailure)
      {
        [(BRCSyncUpOperation *)self _reportSyncUpErrorForItem:v23 error:errorCopy];
      }
    }
  }

  [(BRCSyncUpOperation *)self setThrottledItemInBatch:1];
}

- (void)_reuploadItemInContainerWithRecord:(id)record inZone:(id)zone error:(id)error
{
  zoneCopy = zone;
  recordID = [record recordID];
  zoneAppRetriever = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
  v10 = [recordID brc_itemIDWithZoneAppRetriever:zoneAppRetriever];

  v11 = [zoneCopy itemByItemID:v10];

  if ([v11 isDocument] && objc_msgSend(v11, "syncUpState") == 4 && (objc_msgSend(v11, "isDead") & 1) == 0)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperation _reuploadItemInContainerWithRecord:inZone:error:];
    }

    asDocument = [v11 asDocument];
    [asDocument markNeedsReading];

    [v11 saveToDB];
  }

  else
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperation _reuploadItemInContainerWithRecord:inZone:error:];
    }
  }
}

- (void)_rescanItem:(id)item
{
  itemCopy = item;
  if ([itemCopy isDocument] && objc_msgSend(itemCopy, "syncUpState") == 4 && (objc_msgSend(itemCopy, "isDead") & 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperation _rescanItem:];
    }

    asDocument = [itemCopy asDocument];
    [asDocument reIngestFromFileProvider];

    [itemCopy saveToDB];
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperation _rescanItem:];
    }
  }
}

- (BOOL)_handlePermissionErrorForItem:(id)item inZone:(id)zone
{
  v31 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  zoneCopy = zone;
  mangledID = [zoneCopy mangledID];
  v8 = [BRCUserDefaults defaultsForMangledID:mangledID];

  if (![itemCopy isSharedToMeChildItem] || !objc_msgSend(v8, "changeItemIDOnUnknownItem"))
  {
    goto LABEL_6;
  }

  v9 = [MEMORY[0x277CBC5D0] brc_fetchShareIDWithSharedItem:itemCopy];
  brc_shareItemID = [v9 brc_shareItemID];
  maxSyncPathDepth = [v8 maxSyncPathDepth];
  v12 = [itemCopy db];
  itemID = [itemCopy itemID];
  dbRowID = [zoneCopy dbRowID];
  dbRowID2 = [zoneCopy dbRowID];
  v16 = [v12 itemIDWithSQL:{@" WITH RECURSIVE item_parents (item_id, item_sharing_options, item_parent_id) AS(         SELECT item_id, item_sharing_options, item_parent_id FROM server_items           WHERE item_id = %@ AND zone_rowid = %@       UNION ALL          SELECT li.item_id, li.item_sharing_options, li.item_parent_id FROM server_items AS li     INNER JOIN item_parents AS p WHERE li.zone_rowid = %@ AND p.item_parent_id = li.item_id          LIMIT %u)        SELECT item_id FROM item_parents WHERE (item_sharing_options & 4) != 0", itemID, dbRowID, dbRowID2, maxSyncPathDepth}];

  if (brc_shareItemID && [v16 isEqualToItemID:brc_shareItemID])
  {

LABEL_6:
    saveToDB = 0;
    goto LABEL_7;
  }

  v20 = brc_bread_crumbs();
  v21 = brc_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    itemID2 = [itemCopy itemID];
    *buf = 138413058;
    v24 = brc_shareItemID;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = itemID2;
    v29 = 2112;
    v30 = v20;
    _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] We changed share roots from %@ to %@ on %@ and got a permission error so behaving like an unknown item%@", buf, 0x2Au);
  }

  [itemCopy handleUnknownItemError];
  saveToDB = [itemCopy saveToDB];

LABEL_7:
  v18 = *MEMORY[0x277D85DE8];
  return saveToDB;
}

- (void)_handleUnkownItem:(id)item
{
  itemCopy = item;
  [itemCopy handleUnknownItemError];
  [itemCopy saveToDB];
}

- (void)_handleStaleRecordUpdate:(id)update item:(id)item inZone:(id)zone
{
  updateCopy = update;
  itemCopy = item;
  zoneCopy = zone;
  parentItemIDInZone = [itemCopy parentItemIDInZone];
  v11 = parentItemIDInZone;
  if (parentItemIDInZone && ([parentItemIDInZone isNonDesktopRoot] & 1) == 0)
  {
    clientZone = [itemCopy clientZone];
    v13 = [clientZone itemByItemID:v11];

    if ([v13 isDeadOrMissingInServerTruth])
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [BRCSyncUpOperation _handleStaleRecordUpdate:item:inZone:];
      }

      [v13 markForceNeedsSyncUp];
      [v13 saveToDB];
    }
  }

  if ([itemCopy isDeadOrMissingInServerTruth])
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperation _handleStaleRecordUpdate:item:inZone:];
    }

    [itemCopy markForceRejected];
    [itemCopy markNeedsUploadOrSyncingUp];
    [itemCopy saveToDB];
  }

  else
  {
    recordID = [updateCopy recordID];
    v19 = [zoneCopy locateRecordIfNecessaryForRecordID:recordID isUserWaiting:0];
  }
}

- (void)_markItemBacklistedFromSyncWithMinimumSupportedOS:(id)s minimumSupportedOSName:(id)name
{
  sCopy = s;
  [sCopy markNeedsOSUpgradeToSyncUpWithName:name];
  [sCopy saveToDB];
}

- (void)_remapItemIDToNewItemID:(id)d newItemID:(id)iD inZone:(id)zone itemIDsAlreadyRemapped:(id)remapped
{
  dCopy = d;
  iDCopy = iD;
  zoneCopy = zone;
  remappedCopy = remapped;
  if ([remappedCopy containsObject:dCopy])
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BRCSyncUpOperation _remapItemIDToNewItemID:newItemID:inZone:itemIDsAlreadyRemapped:];
    }
  }

  else
  {
    [remappedCopy addObject:dCopy];
    v15 = [zoneCopy db];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __86__BRCSyncUpOperation__remapItemIDToNewItemID_newItemID_inZone_itemIDsAlreadyRemapped___block_invoke;
    v16[3] = &unk_278503250;
    v17 = zoneCopy;
    v18 = dCopy;
    v19 = iDCopy;
    [v15 groupInTransaction:v16];

    v13 = v17;
  }
}

uint64_t __86__BRCSyncUpOperation__remapItemIDToNewItemID_newItemID_inZone_itemIDsAlreadyRemapped___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) itemByItemID:*(a1 + 40)];
  if ([v2 isKnownByServer])
  {
    __86__BRCSyncUpOperation__remapItemIDToNewItemID_newItemID_inZone_itemIDsAlreadyRemapped___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) serverItemByItemID:*(a1 + 48)];
  v4 = [*(a1 + 32) itemByItemID:*(a1 + 48)];
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v21 = 138412802;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] We were told to remap to an item %@ -> %@ which is already in our client truth%@", &v21, 0x20u);
    }

    if ([v4 isDirectory] && objc_msgSend(v2, "isDirectory"))
    {
      v9 = [v2 asDirectory];
      v10 = [v4 asDirectory];
      v11 = [v9 mergeContentsIntoDirectory:v10];

      goto LABEL_18;
    }

    if ([v4 isOnDisk])
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v12;
        _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] Item is also on disk, marking the item as rejected%@", &v21, 0xCu);
      }

      [v4 markForceRejected];
      v14 = objc_opt_new();
      [v4 learnItemID:v14 serverItem:0];

      if (([v4 saveToDB] & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      [v4 markNeedsDeleteForRescheduleOfItem:v3];
      if (![v4 saveToDB])
      {
LABEL_13:
        v11 = 0;
        goto LABEL_18;
      }
    }
  }

  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v21 = 138412802;
    v22 = v19;
    v23 = 2112;
    v24 = v20;
    v25 = 2112;
    v26 = v15;
    _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] The server wasn't able to remap parentID %@ to pcs chained parent %@ so doing it now%@", &v21, 0x20u);
  }

  [v2 learnItemID:*(a1 + 48) serverItem:v3];
  v11 = [v2 saveToDB];
LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_markRecordNeedingRemapToNewParent:(id)parent newParentName:(id)name inZone:(id)zone itemIDsAlreadyRemapped:(id)remapped
{
  parentCopy = parent;
  zoneCopy = zone;
  remappedCopy = remapped;
  nameCopy = name;
  v14 = [parentCopy objectForKeyedSubscript:@"parent"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    recordID = [v14 recordID];
  }

  else
  {
    recordID = 0;
  }

  v16 = objc_alloc(MEMORY[0x277CBC5D0]);
  serverZone = [zoneCopy serverZone];
  zoneID = [serverZone zoneID];
  v19 = [v16 initWithRecordName:nameCopy zoneID:zoneID];

  zoneAppRetriever = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
  v21 = [v19 brc_itemIDWithZoneAppRetriever:zoneAppRetriever];

  zoneAppRetriever2 = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
  v23 = [recordID brc_itemIDWithZoneAppRetriever:zoneAppRetriever2];

  if (v23)
  {
    [(BRCSyncUpOperation *)self _remapItemIDToNewItemID:v23 newItemID:v21 inZone:zoneCopy itemIDsAlreadyRemapped:remappedCopy];
  }

  else
  {
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      [BRCSyncUpOperation _markRecordNeedingRemapToNewParent:newParentName:inZone:itemIDsAlreadyRemapped:];
    }
  }
}

- (void)_markRecordNeedingRemapToNewRecordName:(id)name newRecordName:(id)recordName inZone:(id)zone itemIDsAlreadyRemapped:(id)remapped
{
  v10 = MEMORY[0x277CBC5D0];
  remappedCopy = remapped;
  zoneCopy = zone;
  recordNameCopy = recordName;
  nameCopy = name;
  v15 = [v10 alloc];
  serverZone = [zoneCopy serverZone];
  zoneID = [serverZone zoneID];
  v23 = [v15 initWithRecordName:recordNameCopy zoneID:zoneID];

  zoneAppRetriever = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
  v19 = [v23 brc_itemIDWithZoneAppRetriever:zoneAppRetriever];

  recordID = [nameCopy recordID];

  zoneAppRetriever2 = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
  v22 = [recordID brc_itemIDWithZoneAppRetriever:zoneAppRetriever2];

  [(BRCSyncUpOperation *)self _remapItemIDToNewItemID:v22 newItemID:v19 inZone:zoneCopy itemIDsAlreadyRemapped:remappedCopy];
}

- (void)_checkRecordPackageItems:(id)items inZone:(id)zone
{
  itemsCopy = items;
  zoneCopy = zone;
  recordID = [itemsCopy recordID];
  recordName = [recordID recordName];
  v10 = [recordName hasPrefix:@"documentContent/"];

  if (v10)
  {
    recordID2 = [itemsCopy recordID];
    zoneAppRetriever = [(BRCSessionContext *)self->super._sessionContext zoneAppRetriever];
    v13 = [recordID2 brc_itemIDWithZoneAppRetriever:zoneAppRetriever];

    v14 = [zoneCopy itemByItemID:v13];
    if (([v14 isDocumentBeingCopiedToNewZone] & 1) == 0)
    {
      v15 = [v14 st];
      filename = [v15 filename];
      br_pathExtension = [filename br_pathExtension];

      if (([br_pathExtension isEqualToString:@"key"] & 1) != 0 || (objc_msgSend(br_pathExtension, "isEqualToString:", @"numbers") & 1) != 0 || objc_msgSend(br_pathExtension, "isEqualToString:", @"pages"))
      {
        v18 = [itemsCopy objectForKeyedSubscript:@"pkgContent"];
        v19 = v18;
        if (v18 && ![v18 itemCount])
        {
          v20 = brc_bread_crumbs();
          v21 = brc_default_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            [BRCSyncUpOperation _checkRecordPackageItems:inZone:];
          }
        }
      }
    }
  }
}

- (void)prepareWithMaxCost:retryAfter:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] %@ is not pristine and needs sync%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)prepareWithMaxCost:retryAfter:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Avoid syncing up a pristine zone%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)prepareWithMaxCost:retryAfter:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] We shouldn't sync only the documents record%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)prepareWithMaxCost:retryAfter:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] destroying shares instead of unsharing%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)prepareWithMaxCost:retryAfter:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Because this is our first time syncing up, adding %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)prepareWithMaxCost:retryAfter:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] no record needs syncing at the moment.%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)prepareWithMaxCost:retryAfter:.cold.7()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: items.count == 0%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)prepareWithMaxCost:retryAfter:.cold.8()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Can't prepare sync for a zone that is blocked%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __80__BRCSyncUpOperation__performMetadataSaltingOperationIfNecessaryWithCompletion___block_invoke_24_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Postponing sync up for item %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __80__BRCSyncUpOperation__performMetadataSaltingOperationIfNecessaryWithCompletion___block_invoke_24_cold_2()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*v0 defaultClientZone];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)performShareUpdate:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.serverZone.isPrivateZone%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __41__BRCSyncUpOperation_performShareUpdate___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Saving shares %@ shared by us for unshare and rename%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __41__BRCSyncUpOperation_performShareUpdate___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] No shares need saving%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __82__BRCSyncUpOperation__scheduleShareUpdateAndModifyRecordsAndZoneCreationOperation__block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_setSharingFieldsOnContentRecord:withProtectionData:baseToken:routingKey:forceOverwrite:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: [contentRecord.recordType isEqualToString:kBRRecordTypeContent]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_setSharingFieldsOnContentRecord:withProtectionData:baseToken:routingKey:forceOverwrite:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: protectionData%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __69__BRCSyncUpOperation__performUpdateSharingProtectionDataIfNecessary___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: !fetchedRecord%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__BRCSyncUpOperation__performUpdateSharingProtectionDataIfNecessary___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

void __69__BRCSyncUpOperation__performUpdateSharingProtectionDataIfNecessary___block_invoke_cold_3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: share.publicSharingIdentity%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __69__BRCSyncUpOperation__performUpdateSharingProtectionDataIfNecessary___block_invoke_51_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

void __26__BRCSyncUpOperation_main__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: invalid sharing records count%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __26__BRCSyncUpOperation_main__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_18();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 504);
  v8 = [*(*v0 + 648) clientZone];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void __26__BRCSyncUpOperation_main__block_invoke_2_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: [firstItemID isEqual:secondItemID]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __26__BRCSyncUpOperation_main__block_invoke_2_cold_2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: error%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __26__BRCSyncUpOperation_main__block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 recordID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleSyncUpErrorForRecord:error:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 recordID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __56__BRCSyncUpOperation__handleSyncUpErrorForRecord_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*v0 recordID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __56__BRCSyncUpOperation__handleSyncUpErrorForRecord_error___block_invoke_cold_2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_handleErrorForRecord:inZone:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleErrorForRecord:inZone:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] handling error for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_reuploadItemInContainerWithRecord:inZone:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] item %@ needs to be re-uploaded%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_reuploadItemInContainerWithRecord:inZone:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] item %@ doesn't need to be reuploaded%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_rescanItem:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] item %@ needs to be re-scanned%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_rescanItem:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] item %@ doesn't need to be re-scanned%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_handleStaleRecordUpdate:item:inZone:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Forcing sync up of dead parent %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_handleStaleRecordUpdate:item:inZone:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Forcing item dead in the server truth to re-upload as a rejected item - %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_remapItemIDToNewItemID:newItemID:inZone:itemIDsAlreadyRemapped:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] We already remapped %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __86__BRCSyncUpOperation__remapItemIDToNewItemID_newItemID_inZone_itemIDsAlreadyRemapped___block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !item.isKnownByServer%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_markRecordNeedingRemapToNewParent:newParentName:inZone:itemIDsAlreadyRemapped:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_checkRecordPackageItems:inZone:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

@end