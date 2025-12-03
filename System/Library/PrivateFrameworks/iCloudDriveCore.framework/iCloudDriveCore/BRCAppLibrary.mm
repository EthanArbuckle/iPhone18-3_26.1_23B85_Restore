@interface BRCAppLibrary
+ (void)didListItemID:(id)d sessionContext:(id)context;
- (BOOL)hasLocalChanges;
- (BOOL)hasUbiquitousDocuments;
- (BOOL)integrityCheckBoosting;
- (BOOL)isDocumentScopePublic;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAppLibrary:(id)library;
- (BOOL)isForeground;
- (BOOL)isGreedy;
- (BOOL)isStillTargetingSharedServerZone:(id)zone;
- (BOOL)isiCloudDesktopAppLibrary;
- (BOOL)recreateDocumentsFolderIfNeededInDB;
- (BOOL)setStateBits:(unsigned int)bits;
- (BOOL)zoneHasPendingTargetShareAlias;
- (BRCAppLibrary)init;
- (BRCAppLibrary)initWithMangledID:(id)d dbRowID:(id)iD zoneRowID:(id)rowID db:(id)db plist:(id)plist session:(id)session initialCreation:(BOOL)creation createdRootOnDisk:(BOOL)self0 createdCZMMoved:(BOOL)self1 rootFileID:(id)self2 childBasehashSalt:(id)self3 saltingState:(unsigned int)self4;
- (BRCPrivateClientZone)defaultClientZone;
- (BRCSyncContext)transferSyncContext;
- (BRCSyncContext)transferSyncContextIfExists;
- (NSMutableDictionary)plist;
- (NSString)absolutePath;
- (NSString)identifier;
- (NSURL)url;
- (id)_bundleIDsDescription;
- (id)_recursivelyDeleteItemsUnderItemID:(id)d filterPredicate:(id)predicate;
- (id)_targetSharedServerZonesEnumerator;
- (id)_unwrappedDescriptionWithContext:(id)context;
- (id)containerMetadataFilledWithTCCInfo;
- (id)createDocumentsFolder;
- (id)deleteAppLibrary;
- (id)descriptionWithContext:(id)context;
- (id)documentsFolder;
- (id)documentsFolderFileObjectID;
- (id)documentsFolderItemID;
- (id)fetchDocumentsDirectoryItem;
- (id)fetchDocumentsDirectoryItemWithFacade:(id)facade;
- (id)fetchRootItem;
- (id)fetchRootItemWithFacade:(id)facade;
- (id)itemsEnumeratorWithRankMin:(unint64_t)min rankMax:(unint64_t)max namePrefix:(id)prefix withDeadItems:(BOOL)items shouldIncludeFolders:(BOOL)folders shouldIncludeOnlyFolders:(BOOL)onlyFolders shouldIncludeDocumentsScope:(BOOL)scope shouldIncludeDataScope:(BOOL)self0 shouldIncludeExternalScope:(BOOL)self1 shouldIncludeTrashScope:(BOOL)self2 count:(unint64_t)self3 db:(id)self4;
- (id)rootFileObjectID;
- (id)rootItemGlobalID;
- (id)rootItemID;
- (int64_t)throttleHashWithItemID:(id)d;
- (unsigned)_activateState:(unsigned int)state origState:(unsigned int)origState;
- (void)_addTargetSharedServerZone:(id)zone;
- (void)_addTargetSharedServerZoneForSharedItem:(id)item;
- (void)_removeAllTargetSharedServerZonesWhenNoLongerForeground;
- (void)_removeTargetSharedServerZoneIfNecessary:(id)necessary;
- (void)_resolveTargetSharedClientZonesWhenBecameForeground;
- (void)_updateIsInCloudDocsZone;
- (void)activate;
- (void)addForegroundClient:(id)client;
- (void)close;
- (void)didReceiveHandoffRequest;
- (void)didUpdateDocumentScopePublic;
- (void)didUpdatePristineness;
- (void)dumpToContext:(id)context;
- (void)fetchPristineness;
- (void)fetchTrashItems;
- (void)flushAndForceIngestRootAndDocumentsFolder;
- (void)integrityCheckBoosting;
- (void)isGreedy;
- (void)listOperation:(id)operation wasReplacedByOperation:(id)byOperation;
- (void)recomputeShouldEvictState;
- (void)registerQueryIsRecursive:(BOOL)recursive;
- (void)reimportLibraryRootAndFinishResetWithCompletion:(id)completion;
- (void)removeForegroundClient:(id)client;
- (void)resetChildBasehashSalt;
- (void)resumeQueryBasedSyncIfNecessary;
- (void)scheduleContainerMetadataSyncUp;
- (void)scheduleFullLibraryContentsFetch;
- (void)setChildBasehashSalt:(id)salt;
- (void)setContainerMetadataEtag:(id)etag;
- (void)setContainerMetadataNeedsSyncUp:(BOOL)up;
- (void)setNeedsSave:(BOOL)save;
- (void)setSaltingState:(unsigned int)state;
- (void)unregisterQueryIsRecursive:(BOOL)recursive;
- (void)updateWithPlist:(id)plist;
- (void)waitForRootIngestionWithCompletion:(id)completion;
- (void)zoneDidChangeMovedToCloudDocsState;
@end

@implementation BRCAppLibrary

- (BRCPrivateClientZone)defaultClientZone
{
  WeakRetained = objc_loadWeakRetained(&self->_defaultClientZone);

  return WeakRetained;
}

- (BOOL)isDocumentScopePublic
{
  containerMetadata = [(BRCAppLibrary *)self containerMetadata];
  isDocumentScopePublic = [containerMetadata isDocumentScopePublic];

  return isDocumentScopePublic;
}

- (id)rootFileObjectID
{
  v2 = [objc_alloc(MEMORY[0x277CFAE48]) initWithRowID:-[BRCALRowID unsignedLongLongValue](self->_dbRowID type:{"unsignedLongLongValue"), 1}];

  return v2;
}

- (id)documentsFolderFileObjectID
{
  if ([(BRCAppLibrary *)self includesDataScope])
  {
    v3 = [objc_alloc(MEMORY[0x277CFAE48]) initWithRowID:-[BRCALRowID unsignedLongValue](self->_dbRowID type:{"unsignedLongValue"), 4}];
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [BRCAppLibrary(FPFSAdditions) documentsFolderFileObjectID];
    }

    v3 = 0;
  }

  return v3;
}

- (id)documentsFolder
{
  if ([(BRCAppLibrary *)self includesDataScope])
  {
    v3 = [BRCItemGlobalID alloc];
    zoneRowID = [(BRCAppLibrary *)self zoneRowID];
    documentsFolderItemID = [(BRCAppLibrary *)self documentsFolderItemID];
    v6 = [(BRCItemGlobalID *)v3 initWithZoneRowID:zoneRowID itemID:documentsFolderItemID];

    itemFetcher = [(BRCAccountSession *)self->_session itemFetcher];
    dbFacade = [(BRCAppLibrary *)self dbFacade];
    v9 = [itemFetcher itemByItemGlobalID:v6 dbFacade:dbFacade];
    asDirectory = [v9 asDirectory];
  }

  else
  {
    asDirectory = [(BRCAppLibrary *)self fetchRootItem];
  }

  return asDirectory;
}

- (id)createDocumentsFolder
{
  session = [(BRCAppLibrary *)self session];
  fsImporter = [session fsImporter];
  v5 = *MEMORY[0x277CFAD90];
  fetchRootItem = [(BRCAppLibrary *)self fetchRootItem];
  v7 = [fsImporter createAndImportNewDirectoryWithLogicalName:v5 parentItem:fetchRootItem error:0];

  return v7;
}

- (BOOL)recreateDocumentsFolderIfNeededInDB
{
  v18 = *MEMORY[0x277D85DE8];
  if (![(BRCAppLibrary *)self includesDataScope])
  {
    goto LABEL_8;
  }

  documentsFolder = [(BRCAppLibrary *)self documentsFolder];
  if (documentsFolder)
  {
LABEL_7:

LABEL_8:
    result = 1;
    goto LABEL_9;
  }

  memset(v11, 0, sizeof(v11));
  __brc_create_section(0, "[BRCAppLibrary(FPFSAdditions) recreateDocumentsFolderIfNeededInDB]", 58, 0, v11);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    mangledID = self->_mangledID;
    *buf = 134218498;
    v13 = v11[0];
    v14 = 2112;
    v15 = mangledID;
    v16 = 2112;
    v17 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Creating a documents folder for app library %@%@", buf, 0x20u);
  }

  documentsFolder = [(BRCAppLibrary *)self createDocumentsFolder];
  if (documentsFolder)
  {
    __brc_leave_section(v11);
    goto LABEL_7;
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, 0x90u))
  {
    [(BRCAppLibrary(FPFSAdditions) *)self recreateDocumentsFolderIfNeededInDB];
  }

  __brc_leave_section(v11);
  result = 0;
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)registerQueryIsRecursive:(BOOL)recursive
{
  atomic_fetch_add(&self->_activeQueries, 1uLL);
  if (recursive)
  {
    atomic_fetch_add(&self->_activeRecursiveQueries, 1uLL);
  }
}

- (void)unregisterQueryIsRecursive:(BOOL)recursive
{
  if (recursive)
  {
    atomic_fetch_add(&self->_activeRecursiveQueries, 0xFFFFFFFFFFFFFFFFLL);
  }

  atomic_fetch_add(&self->_activeQueries, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)_recursivelyDeleteItemsUnderItemID:(id)d filterPredicate:(id)predicate
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  predicateCopy = predicate;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  itemFetcher = [(BRCAccountSession *)self->_session itemFetcher];
  v9 = [itemFetcher enumerateChildrenOfItemGlobalID:dCopy dbFacade:self->_dbFacade sortOrder:0 offset:0 limit:0xFFFFFFFFLL];

  v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v29;
    *&v11 = 138412546;
    v27 = v11;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        if ([predicateCopy evaluateWithObject:{v15, v27}])
        {
          v16 = brc_bread_crumbs();
          v17 = brc_default_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = v27;
            v33 = v15;
            v34 = 2112;
            v35 = v16;
            _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] Recurisvely deleting %@%@", buf, 0x16u);
          }

          [v15 markRemovedFromFilesystemRecursively:1];
          if (([v15 saveToDB] & 1) == 0)
          {
            v19 = [v15 db];
            lastError = [v19 lastError];
            v21 = lastError;
            if (lastError)
            {
              v22 = lastError;
            }

            else
            {
              v23 = brc_bread_crumbs();
              v24 = brc_default_log();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
              {
                [BRCAppLibrary(FPFSAdditions) _recursivelyDeleteItemsUnderItemID:filterPredicate:];
              }

              v22 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Failed to save to db without an error"];
            }

            v18 = v22;

            goto LABEL_19;
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_19:

  v25 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)deleteAppLibrary
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCAppLibrary(FPFSAdditions) deleteAppLibrary];
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  db = self->_db;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__BRCAppLibrary_FPFSAdditions__deleteAppLibrary__block_invoke;
  v8[3] = &unk_2784FF030;
  v8[4] = self;
  v8[5] = &v9;
  [(BRCPQLConnection *)db groupInBatch:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __48__BRCAppLibrary_FPFSAdditions__deleteAppLibrary__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) includesDataScope] & 1) == 0)
  {
    v12 = *(a1 + 32);
    v13 = [v12 rootItemGlobalID];
    v14 = [MEMORY[0x277CCAC30] predicateWithValue:1];
    v4 = [v12 _recursivelyDeleteItemsUnderItemID:v13 filterPredicate:v14];

    if (v4)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
    }

    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v26 = [*(a1 + 32) rootItemGlobalID];
      v28 = 138412802;
      v29 = v26;
      v30 = 2112;
      v31 = v4;
      v32 = 2112;
      v33 = v15;
      _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Recursively delete items under rootItemGlobalID %@ - %@%@", &v28, 0x20u);
    }

    goto LABEL_12;
  }

  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __48__BRCAppLibrary_FPFSAdditions__deleteAppLibrary__block_invoke_cold_1();
  }

  v4 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global];
  v5 = *(a1 + 32);
  v6 = [v5 rootItemGlobalID];
  v7 = [v5 _recursivelyDeleteItemsUnderItemID:v6 filterPredicate:v4];

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v25 = [*(a1 + 32) rootItemGlobalID];
    v28 = 138412802;
    v29 = v25;
    v30 = 2112;
    v31 = v7;
    v32 = 2112;
    v33 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Recursively delete items under rootItemGlobalID %@ - %@%@", &v28, 0x20u);
  }

  if (!v7)
  {
    v18 = *(a1 + 32);
    v19 = [v18 documentsFolder];
    v20 = [v19 itemGlobalID];
    v21 = [MEMORY[0x277CCAC30] predicateWithValue:1];
    v15 = [v18 _recursivelyDeleteItemsUnderItemID:v20 filterPredicate:v21];

    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v27 = [*(a1 + 32) rootItemGlobalID];
      v28 = 138412802;
      v29 = v27;
      v30 = 2112;
      v31 = v15;
      v32 = 2112;
      v33 = v22;
      _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] Recursively delete items under rootItemGlobalID %@ - %@%@", &v28, 0x20u);
    }

    if (!v15)
    {
      goto LABEL_13;
    }

    v24 = *(*(a1 + 40) + 8);
    v15 = v15;
    v16 = *(v24 + 40);
    *(v24 + 40) = v15;
LABEL_12:

LABEL_13:
    [*(*(a1 + 32) + 64) flush];
    goto LABEL_14;
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;

LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __48__BRCAppLibrary_FPFSAdditions__deleteAppLibrary__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 itemID];
  v3 = [v2 isDocumentsFolder];

  return v3 ^ 1u;
}

- (BOOL)isiCloudDesktopAppLibrary
{
  if ([(BRCAppLibrary *)self isDesktopAppLibrary])
  {
    return 1;
  }

  return [(BRCAppLibrary *)self isDocumentsAppLibrary];
}

- (void)setNeedsSave:(BOOL)save
{
  if (self->_needsSave != save)
  {
    if (save)
    {
      [(BRCPQLConnection *)self->_db forceBatchStart];
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [BRCAppLibrary setNeedsSave:];
      }
    }

    self->_needsSave = save;
  }
}

- (NSString)absolutePath
{
  v13 = *MEMORY[0x277D85DE8];
  br_currentMobileDocumentsDir = [MEMORY[0x277CCACA8] br_currentMobileDocumentsDir];
  pathRelativeToRoot = [(BRCAppLibrary *)self pathRelativeToRoot];
  v5 = [br_currentMobileDocumentsDir stringByAppendingPathComponent:pathRelativeToRoot];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] no path for an app library%@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSURL)url
{
  absolutePath = [(BRCAppLibrary *)self absolutePath];
  if (absolutePath)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:absolutePath isDirectory:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BRCAppLibrary)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[BRCAppLibrary init]"];
  [v3 raise:v4 format:{@"Don't call %@.", v5}];

  return 0;
}

- (BRCAppLibrary)initWithMangledID:(id)d dbRowID:(id)iD zoneRowID:(id)rowID db:(id)db plist:(id)plist session:(id)session initialCreation:(BOOL)creation createdRootOnDisk:(BOOL)self0 createdCZMMoved:(BOOL)self1 rootFileID:(id)self2 childBasehashSalt:(id)self3 saltingState:(unsigned int)self4
{
  dCopy = d;
  iDCopy = iD;
  obj = rowID;
  rowIDCopy = rowID;
  dbCopy = db;
  plistCopy = plist;
  sessionCopy = session;
  sessionCopy2 = session;
  fileIDCopy = fileID;
  saltCopy = salt;
  if (iDCopy)
  {
    if (rowIDCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BRCAppLibrary initWithMangledID:dbRowID:zoneRowID:db:plist:session:initialCreation:createdRootOnDisk:createdCZMMoved:rootFileID:childBasehashSalt:saltingState:];
    if (rowIDCopy)
    {
      goto LABEL_3;
    }
  }

  [BRCAppLibrary initWithMangledID:dbRowID:zoneRowID:db:plist:session:initialCreation:createdRootOnDisk:createdCZMMoved:rootFileID:childBasehashSalt:saltingState:];
LABEL_3:
  if (([dCopy isPrivate] & 1) == 0)
  {
    [BRCAppLibrary initWithMangledID:dbRowID:zoneRowID:db:plist:session:initialCreation:createdRootOnDisk:createdCZMMoved:rootFileID:childBasehashSalt:saltingState:];
  }

  v54.receiver = self;
  v54.super_class = BRCAppLibrary;
  v25 = [(BRCAppLibrary *)&v54 init];
  if (v25)
  {
    v47 = iDCopy;
    v45 = plistCopy;
    if (plistCopy && creation)
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        [BRCAppLibrary initWithMangledID:dbRowID:zoneRowID:db:plist:session:initialCreation:createdRootOnDisk:createdCZMMoved:rootFileID:childBasehashSalt:saltingState:];
      }
    }

    appLibraryOrZoneName = [dCopy appLibraryOrZoneName];
    v29 = brc_task_tracker_create([appLibraryOrZoneName UTF8String]);
    tracker = v25->_tracker;
    v25->_tracker = v29;

    objc_storeStrong(&v25->_db, db);
    v31 = [sessionCopy2 getClientDBFacadeFromDB:dbCopy];
    dbFacade = v25->_dbFacade;
    v25->_dbFacade = v31;

    objc_storeStrong(&v25->_dbRowID, iD);
    objc_storeStrong(&v25->_zoneRowID, obj);
    objc_storeStrong(&v25->_session, sessionCopy);
    v33 = objc_opt_new();
    targetSharedServerZones = v25->_targetSharedServerZones;
    v25->_targetSharedServerZones = v33;

    v35 = [MEMORY[0x277CBEB58] set];
    foregroundClients = v25->_foregroundClients;
    v25->_foregroundClients = v35;

    objc_storeStrong(&v25->_fileID, fileID);
    objc_storeStrong(&v25->_mangledID, d);
    appLibraryOrZoneName2 = [dCopy appLibraryOrZoneName];
    appLibraryID = v25->_appLibraryID;
    v25->_appLibraryID = appLibraryOrZoneName2;

    if (creation)
    {
      state = v25->_state;
      v25->_state = state | 0x140000;
      plistCopy = v46;
      if (moved)
      {
        v25->_state = state | 0x340000;
      }
    }

    else
    {
      plistCopy = v46;
      if (!v47)
      {
        [BRCAppLibrary initWithMangledID:dbRowID:zoneRowID:db:plist:session:initialCreation:createdRootOnDisk:createdCZMMoved:rootFileID:childBasehashSalt:saltingState:];
      }

      [(BRCAppLibrary *)v25 updateWithPlist:v46];
    }

    v40 = [MEMORY[0x277CFAE20] containerForMangledID:dCopy];
    containerMetadata = v25->_containerMetadata;
    v25->_containerMetadata = v40;

    [(BRCAppLibrary *)v25 _updateIsInCloudDocsZone];
    v25->_saltingState = state;
    objc_storeStrong(&v25->_childBasehashSalt, salt);
    v42 = dispatch_group_create();
    forceIngestionGroup = v25->_forceIngestionGroup;
    v25->_forceIngestionGroup = v42;

    iDCopy = v47;
  }

  return v25;
}

- (void)updateWithPlist:(id)plist
{
  plistCopy = plist;
  v5 = [plistCopy objectForKeyedSubscript:@"state"];
  self->_state = [v5 unsignedIntValue];

  v6 = [plistCopy objectForKeyedSubscript:@"fileID"];
  fileID = self->_fileID;
  self->_fileID = v6;

  v8 = [plistCopy objectForKeyedSubscript:@"generationID"];
  generationID = self->_generationID;
  self->_generationID = v8;

  v10 = [plistCopy objectForKeyedSubscript:@"metadataChangetag"];
  containerMetadataEtag = self->_containerMetadataEtag;
  self->_containerMetadataEtag = v10;

  v12 = [plistCopy objectForKeyedSubscript:@"metadataNeedsSyncUp"];

  self->_containerMetadataNeedsSyncUp = [v12 BOOLValue];
  v13 = ([(BRCAppLibrary *)self state]>> 18) & 1;
  containerMetadata = self->_containerMetadata;

  [(BRContainer *)containerMetadata setIsInInitialState:v13];
}

- (NSMutableDictionary)plist
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:12];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_state];
  [v3 setObject:v4 forKeyedSubscript:@"state"];

  fileID = self->_fileID;
  if (fileID)
  {
    [v3 setObject:fileID forKeyedSubscript:@"fileID"];
  }

  generationID = self->_generationID;
  if (generationID)
  {
    [v3 setObject:generationID forKeyedSubscript:@"generationID"];
  }

  containerMetadataEtag = self->_containerMetadataEtag;
  if (containerMetadataEtag)
  {
    [v3 setObject:containerMetadataEtag forKeyedSubscript:@"metadataChangetag"];
  }

  if (self->_containerMetadataNeedsSyncUp)
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"metadataNeedsSyncUp"];
  }

  [v3 setObject:self->_rootQuotaUsage forKeyedSubscript:@"rootQuota"];

  return v3;
}

- (void)close
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  appLibraryID = [v0 appLibraryID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)activate
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !_activated%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (unsigned)_activateState:(unsigned int)state origState:(unsigned int)origState
{
  v52 = *MEMORY[0x277D85DE8];
  [(BRCPQLConnection *)self->_db assertOnQueue];
  defaultClientZone = [(BRCAppLibrary *)self defaultClientZone];
  if (state != 0x1000000 && (state & 0x1000000) != 0)
  {
    [BRCAppLibrary _activateState:origState:];
  }

  if (self->_state != state)
  {
    [(BRCAppLibrary *)self setNeedsSave:1];
    self->_state = state;
  }

  if ([(BRCAppLibrary *)self isCloudDocsAppLibrary]|| [(BRCAppLibrary *)self isiCloudDesktopAppLibrary])
  {
    state = self->_state & 0xFFFBFFFF;
    self->_state = state;
  }

  else
  {
    state = self->_state;
  }

  v9 = state ^ origState;
  if (state != origState)
  {
    if (self->_needsSave)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v42 = BRCPrettyPrintBitmapWithContext(origState, &applibrary_state_entries, 0);
        *buf = 138412802;
        selfCopy2 = self;
        v48 = 2112;
        v49 = v42;
        v50 = 2112;
        v51 = v10;
        _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ state changed, was %@%@", buf, 0x20u);
      }
    }

    if ((v9 & 0x1000000) != 0)
    {
      if ((self->_state & 8) != 0)
      {
        [(BRCAppLibrary *)self reimportLibraryRootAndFinishResetWithCompletion:0];
      }
    }

    else if ((v9 & 0x800000) != 0)
    {
      rootFileObjectID = [(BRCAppLibrary *)self rootFileObjectID];
      asString = [rootFileObjectID asString];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __42__BRCAppLibrary__activateState_origState___block_invoke;
      v45[3] = &unk_2784FF540;
      v45[4] = self;
      [BRCImportUtil forceIngestionForItemID:asString completionHandler:v45];

      if (![(BRCAppLibrary *)self isCloudDocsAppLibrary])
      {
        documentsFolderFileObjectID = [(BRCAppLibrary *)self documentsFolderFileObjectID];
        asString2 = [documentsFolderFileObjectID asString];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __42__BRCAppLibrary__activateState_origState___block_invoke_33;
        v44[3] = &unk_2784FF540;
        v44[4] = self;
        [BRCImportUtil forceIngestionForItemID:asString2 completionHandler:v44];
      }

      if ((origState & 0x800000) == 0)
      {
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          selfCopy2 = self;
          v48 = 2112;
          v49 = v16;
          _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEFAULT, "[NOTICE] evicting everything in %@ because the app was removed%@", buf, 0x16u);
        }

        br_sharedProviderManager = [MEMORY[0x277CC64A8] br_sharedProviderManager];
        rootFileObjectID2 = [(BRCAppLibrary *)self rootFileObjectID];
        asString3 = [rootFileObjectID2 asString];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __42__BRCAppLibrary__activateState_origState___block_invoke_35;
        v43[3] = &unk_2784FF540;
        v43[4] = self;
        [br_sharedProviderManager evictItemWithIdentifier:asString3 completionHandler:v43];
      }
    }

    if ((v9 & 0x40000) != 0)
    {
      state = [(BRCAppLibrary *)self state];
      [(BRContainer *)self->_containerMetadata setIsInInitialState:(state >> 18) & 1];
      [MEMORY[0x277CFAE20] postContainerListUpdateNotification];
      if ((v9 & 0x1000000) == 0)
      {
        [(BRCAppLibrary *)self didUpdatePristineness];
      }

      if ([(BRContainer *)self->_containerMetadata isInInitialState])
      {
        if ([(NSString *)self->_appLibraryID isEqualToString:*MEMORY[0x277CFAB80]])
        {
          defaultClientZone2 = [(BRCAppLibrary *)self defaultClientZone];
          hasCompletedInitialSyncDownOnce = [defaultClientZone2 hasCompletedInitialSyncDownOnce];

          if ((hasCompletedInitialSyncDownOnce & 1) == 0)
          {
            [(BRCAppLibrary *)self addForegroundClient:self];
          }
        }
      }

      WeakRetained = objc_loadWeakRetained(&self->_pristineFetchOp);
      v25 = WeakRetained;
      if ((state & 0x40000) == 0 && WeakRetained)
      {
        [WeakRetained endObservingChangesWithDelegate:self];
        objc_storeWeak(&self->_pristineFetchOp, 0);
      }
    }

    if ((v9 & 0x4000000) != 0 && ([(BRCAppLibrary *)self state]& 0x4000000) != 0)
    {
      includesDataScope = [(BRCAppLibrary *)self includesDataScope];
      if ((origState & 0x1000000) == 0 && includesDataScope)
      {
        defaultClientZone3 = [(BRCAppLibrary *)self defaultClientZone];
        documentsFolderItemID = [(BRCAppLibrary *)self documentsFolderItemID];
        v29 = [defaultClientZone3 itemByItemID:documentsFolderItemID];
        asDirectory = [v29 asDirectory];

        clientZone = [asDirectory clientZone];
        itemID = [asDirectory itemID];
        v33 = [clientZone serverItemByItemID:itemID];

        v34 = [asDirectory st];
        v35 = v34;
        if (v33)
        {
          v36 = [v33 st];
          [v35 setType:{objc_msgSend(v36, "type")}];
        }

        else
        {
          [v34 setType:0];
        }

        v37 = brc_bread_crumbs();
        v38 = brc_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          [BRCAppLibrary _activateState:origState:];
        }

        [asDirectory saveToDB];
      }
    }

    if (([(BRCAppLibrary *)self state]& 0x4040000) == 0x40000)
    {
      [(BRCAppLibrary *)self fetchPristineness];
    }

    if ((v9 & 0x4000000) != 0 && ([(BRCAppLibrary *)self state]& 0x14000000) == 0x4000000)
    {
      [(BRCAppLibrary *)self fetchTrashItems];
    }

    if ((origState & 0x140000) != 0 && (v9 & 0x140000) != 0)
    {
      [defaultClientZone scheduleSyncUp];
    }

    if ((v9 & 0x200000) != 0 && ![(BRCAppLibrary *)self isCloudDocsAppLibrary])
    {
      [(BRCAppLibrary *)self zoneDidChangeMovedToCloudDocsState];
      if ([(BRCAppLibrary *)self wasMovedToCloudDocs])
      {
        applyScheduler = [(BRCAccountSession *)self->_session applyScheduler];
        [applyScheduler didCompleteCrossZoneMigrationForAppLibrary:self];
      }
    }
  }

  [defaultClientZone _flushIdleBlocksIfNeeded];

  v40 = *MEMORY[0x277D85DE8];
  return v9;
}

void __42__BRCAppLibrary__activateState_origState___block_invoke()
{
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __42__BRCAppLibrary__activateState_origState___block_invoke_cold_1();
  }
}

void __42__BRCAppLibrary__activateState_origState___block_invoke_33()
{
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __42__BRCAppLibrary__activateState_origState___block_invoke_33_cold_1();
  }
}

void __42__BRCAppLibrary__activateState_origState___block_invoke_35(uint64_t a1, void *a2)
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
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Finish evicting %@ with error %@%@", &v8, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)setStateBits:(unsigned int)bits
{
  state = self->_state;
  v4 = (bits & ~state) != 0;
  [(BRCAppLibrary *)self _activateState:state | bits origState:?];
  return v4;
}

- (void)didUpdateDocumentScopePublic
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    appLibraryID = [(BRCAppLibrary *)self appLibraryID];
    containerMetadata = [(BRCAppLibrary *)self containerMetadata];
    isDocumentScopePublic = [containerMetadata isDocumentScopePublic];
    v8 = @"private";
    *v14 = 138412802;
    *&v14[4] = appLibraryID;
    *&v14[12] = 2112;
    if (isDocumentScopePublic)
    {
      v8 = @"public";
    }

    *&v14[14] = v8;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_INFO, "[INFO] %@ becomes %@%@", v14, 0x20u);
  }

  defaultClientZone = [(BRCAppLibrary *)self defaultClientZone];
  [(BRCAccountSession *)self->_session recomputeAppSyncBlockStateForPrivateClientZone:defaultClientZone];
  [(BRCAppLibrary *)self fetchPristineness];
  containerMetadata2 = [(BRCAppLibrary *)self containerMetadata];
  if ([containerMetadata2 isDocumentScopePublic])
  {
    wasMovedToCloudDocs = [(BRCAppLibrary *)self wasMovedToCloudDocs];

    if (!wasMovedToCloudDocs)
    {
      [defaultClientZone clearAndRefetchRecentAndFavoriteDocuments];
    }
  }

  else
  {
  }

  documentsFolder = [(BRCAppLibrary *)self documentsFolder];
  [documentsFolder documentsDirectoryUpdatedDocumentsScopePublic];
  [documentsFolder saveToDB];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)didUpdatePristineness
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    appLibraryID = [(BRCAppLibrary *)self appLibraryID];
    state = self->_state;
    v10 = 138412802;
    v11 = appLibraryID;
    if ((state & 0x40000) != 0)
    {
      v7 = @"pristine";
    }

    else
    {
      v7 = @"non-pristine";
    }

    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_INFO, "[INFO] %@ becomes %@%@", &v10, 0x20u);
  }

  documentsFolder = [(BRCAppLibrary *)self documentsFolder];
  [documentsFolder markForceNotify];
  [documentsFolder saveToDB];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isGreedy
{
  session = [(BRCAppLibrary *)self session];
  hasOptimizeStorageEnabled = [session hasOptimizeStorageEnabled];

  if (hasOptimizeStorageEnabled)
  {
    v5 = [BRCUserDefaults defaultsForMangledID:self->_mangledID];
    if ([v5 shouldAppLibraryBeGreedy])
    {
      v6 = brc_bread_crumbs();
      v7 = brc_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [BRCAppLibrary isGreedy];
      }

LABEL_16:
      isGreedy = 1;
      goto LABEL_17;
    }

    if (![(BRCAppLibrary *)self shouldEvictUploadedItems])
    {
      session2 = [(BRCAppLibrary *)self session];
      isGreedy = [session2 isGreedy];

      goto LABEL_17;
    }

    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCAppLibrary isGreedy];
    }
  }

  else
  {
    if (![(BRCAppLibrary *)self shouldEvictUploadedItems])
    {
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [BRCAppLibrary isGreedy];
      }

      goto LABEL_16;
    }

    v5 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRCAppLibrary isGreedy];
    }
  }

  isGreedy = 0;
LABEL_17:

  return isGreedy;
}

- (BOOL)isEqualToAppLibrary:(id)library
{
  libraryCopy = library;
  mangledID = [libraryCopy mangledID];
  if (mangledID)
  {
    v6 = [(BRMangledID *)self->_mangledID isEqualToMangledID:libraryCopy[6]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BRCAppLibrary *)self isEqualToAppLibrary:equalCopy];
  }

  return v5;
}

- (id)_unwrappedDescriptionWithContext:(id)context
{
  contextCopy = context;
  transferSyncContextIfExists = [(BRCAppLibrary *)self transferSyncContextIfExists];

  if (transferSyncContextIfExists)
  {
    if ([(BRCAppLibrary *)self isForeground])
    {
      v6 = @"foreground";
      v7 = 7;
      goto LABEL_7;
    }

    v6 = @"background";
  }

  else
  {
    v6 = @"NA";
  }

  v7 = 2;
LABEL_7:
  v8 = [BRCDumpContext highlightedString:v6 type:v7 context:contextCopy];
  v9 = objc_alloc(MEMORY[0x277CCAB68]);
  fp_obfuscatedDotSeparatedComponents = [(NSString *)self->_appLibraryID fp_obfuscatedDotSeparatedComponents];
  dbRowID = self->_dbRowID;
  v12 = BRCPrettyPrintBitmapWithContext(self->_state, &applibrary_state_entries, contextCopy);
  v13 = [v9 initWithFormat:@"%@[%@] %@ {s:%@} ino:%@ gen:%@", fp_obfuscatedDotSeparatedComponents, dbRowID, v8, v12, self->_fileID, self->_generationID];

  [v13 appendString:@" queries:"];
  if ([(BRCAppLibrary *)self hasActiveQueries])
  {
    [v13 appendString:@"q"];
  }

  if ([(BRCAppLibrary *)self hasActiveRecursiveQueries])
  {
    [v13 appendString:@"r"];
  }

  if ([(BRCAppLibrary *)self containerMetadataNeedsSyncUp])
  {
    v14 = "needs-sync-up";
  }

  else
  {
    v14 = "idle";
  }

  containerMetadataEtag = [(BRCAppLibrary *)self containerMetadataEtag];
  containerMetadata = [(BRCAppLibrary *)self containerMetadata];
  shortDescription = [containerMetadata shortDescription];
  [v13 appendFormat:@" metadata:%s etag:%@ %@", v14, containerMetadataEtag, shortDescription];

  _bundleIDsDescription = [(BRCAppLibrary *)self _bundleIDsDescription];
  if (_bundleIDsDescription)
  {
    [v13 appendString:_bundleIDsDescription];
  }

  v19 = [BRCUserDefaults defaultsForMangledID:0];
  supportsEnhancedDrivePrivacy = [v19 supportsEnhancedDrivePrivacy];

  if (supportsEnhancedDrivePrivacy)
  {
    saltingState = self->_saltingState;
    v22 = saltingState > 3 ? @"no server item" : off_278501F40[saltingState];
    [v13 appendFormat:@" salt-st{%@}", v22];
    childBasehashSalt = self->_childBasehashSalt;
    if (childBasehashSalt)
    {
      brc_truncatedSHA256 = [(NSData *)childBasehashSalt brc_truncatedSHA256];
      brc_hexadecimalString = [brc_truncatedSHA256 brc_hexadecimalString];
      [v13 appendFormat:@" child-base-salt-validation{%@}", brc_hexadecimalString];
    }
  }

  return v13;
}

- (id)_bundleIDsDescription
{
  containerMetadata = [(BRCAppLibrary *)self containerMetadata];
  bundleIdentifiers = [containerMetadata bundleIdentifiers];

  if ([bundleIdentifiers count])
  {
    if (fp_shouldObfuscateFilenames())
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(bundleIdentifiers, "count")}];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __38__BRCAppLibrary__bundleIDsDescription__block_invoke;
      v12[3] = &unk_278501EF8;
      v5 = v4;
      v13 = v5;
      [bundleIdentifiers enumerateObjectsUsingBlock:v12];
      v6 = v5;

      bundleIdentifiers = v6;
    }

    v7 = MEMORY[0x277CCACA8];
    allObjects = [bundleIdentifiers allObjects];
    v9 = [allObjects componentsJoinedByString:{@", "}];
    v10 = [v7 stringWithFormat:@" bundles:{%@}", v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __38__BRCAppLibrary__bundleIDsDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 fp_obfuscatedDotSeparatedComponents];
  [v2 addObject:v3];
}

- (id)descriptionWithContext:(id)context
{
  v4 = MEMORY[0x277CCACA8];
  contextCopy = context;
  v6 = [v4 alloc];
  v7 = [(BRCAppLibrary *)self _unwrappedDescriptionWithContext:contextCopy];

  v8 = [v6 initWithFormat:@"<%@>", v7];

  return v8;
}

- (void)dumpToContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = [(BRCAppLibrary *)self descriptionWithContext:contextCopy];
  [contextCopy writeLineWithFormat:@"+ app library: %@", v5];

  if ([(BRCAppLibrary *)self isForeground])
  {
    [contextCopy pushIndentation];
    [contextCopy writeLineWithFormat:@"+ foreground clients:"];
    [contextCopy pushIndentation];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = [(NSMutableSet *)selfCopy->_foregroundClients copy];
    objc_sync_exit(selfCopy);

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", *(*(&v15 + 1) + 8 * v11)];
          br_obfuscatedDotOrTildaSeparatedComponents = [v12 br_obfuscatedDotOrTildaSeparatedComponents];
          [contextCopy writeLineWithFormat:@"%@", br_obfuscatedDotOrTildaSeparatedComponents];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [contextCopy popIndentation];
    [contextCopy popIndentation];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)itemsEnumeratorWithRankMin:(unint64_t)min rankMax:(unint64_t)max namePrefix:(id)prefix withDeadItems:(BOOL)items shouldIncludeFolders:(BOOL)folders shouldIncludeOnlyFolders:(BOOL)onlyFolders shouldIncludeDocumentsScope:(BOOL)scope shouldIncludeDataScope:(BOOL)self0 shouldIncludeExternalScope:(BOOL)self1 shouldIncludeTrashScope:(BOOL)self2 count:(unint64_t)self3 db:(id)self4
{
  onlyFoldersCopy = onlyFolders;
  foldersCopy = folders;
  itemsCopy = items;
  prefixCopy = prefix;
  dbCopy = db;
  if (itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__once != -1)
  {
    [BRCAppLibrary itemsEnumeratorWithRankMin:rankMax:namePrefix:withDeadItems:shouldIncludeFolders:shouldIncludeOnlyFolders:shouldIncludeDocumentsScope:shouldIncludeDataScope:shouldIncludeExternalScope:shouldIncludeTrashScope:count:db:];
  }

  if (scope || dataScope || externalScope)
  {
    maxCopy = max;
    minCopy = min;
    v58 = prefixCopy;
    if ([prefixCopy length])
    {
      v22 = [prefixCopy br_stringByBackslashEscapingCharactersInString:@"\\_%"];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%%", v22];
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%% %@%%", v22];
      v55 = [MEMORY[0x277D82C08] formatInjection:{@"AND (item_filename LIKE %@ ESCAPE '\\' OR item_filename LIKE %@ ESCAPE '\\')", v23, v24}];
    }

    else
    {
      v55 = [MEMORY[0x277D82C18] rawInjection:"" length:0];
    }

    if (scope || dataScope)
    {
      v25 = &itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInEitherScope;
      if (!scope || !dataScope)
      {
        v25 = &itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInDocumentScope;
      }

      if (!scope)
      {
        v25 = &itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInDataScope;
      }

      v19 = *v25;
    }

    else
    {
      v19 = 0;
    }

    v26 = itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInExternalScope;
    if (externalScope)
    {
      v27 = itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInExternalScope;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    selfCopy = self;
    if (v19 | v28)
    {
      v30 = itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInTrashScope;
      if (!trashScope)
      {
        v30 = 0;
      }

      v31 = v30;
      v32 = MEMORY[0x277D82C08];
      v33 = v19;
      v21 = dbCopy;
      v18 = v55;
      if (v19)
      {
        if (v28)
        {
          goto LABEL_26;
        }

        goto LABEL_50;
      }
    }

    else
    {
      [BRCAppLibrary itemsEnumeratorWithRankMin:rankMax:namePrefix:withDeadItems:shouldIncludeFolders:shouldIncludeOnlyFolders:shouldIncludeDocumentsScope:shouldIncludeDataScope:shouldIncludeExternalScope:shouldIncludeTrashScope:count:db:];
      v31 = v65;
      v32 = v66;
      v21 = dbCopy;
      v18 = v55;
    }

    v33 = [MEMORY[0x277D82C18] rawInjection:"0" length:1];
    if (v28)
    {
LABEL_26:
      if (v31)
      {
        goto LABEL_27;
      }

      goto LABEL_51;
    }

LABEL_50:
    v26 = [MEMORY[0x277D82C18] rawInjection:"0" length:1];
    if (v31)
    {
LABEL_27:
      v34 = [v32 formatInjection:{@"AND ((%@) OR (%@) OR (%@))", v33, v26, v31}];
      if (v28)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

LABEL_51:
    v44 = [MEMORY[0x277D82C18] rawInjection:"0" length:1];
    v34 = [v32 formatInjection:{@"AND ((%@) OR (%@) OR (%@))", v33, v26, v44}];

    if (v28)
    {
LABEL_29:
      if (!v19)
      {
      }

      dbRowID = selfCopy->_dbRowID;
      v36 = !foldersCopy || onlyFoldersCopy;
      if (itemsCopy)
      {
        if (v36)
        {
          v37 = &itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isFolder;
          if (!foldersCopy)
          {
            v37 = &itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isDocument;
          }

          v51 = v34;
          countCopy3 = count;
          v47 = v18;
          v49 = *v37;
          v45 = selfCopy->_dbRowID;
          v38 = @"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank,item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation    FROM client_items   WHERE item_notifs_rank >= %lld     AND item_notifs_rank < %lld     AND +app_library_rowid = %@     AND item_state IN (0, 1)     %@      %@      %@ ORDER BY item_notifs_rank   LIMIT %lld";
LABEL_40:
          v40 = [v21 fetch:{v38, minCopy, maxCopy, v45, v47, v49, v51, countCopy3}];
LABEL_44:
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __234__BRCAppLibrary_itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db___block_invoke_143;
          v63[3] = &unk_2784FF938;
          v63[4] = selfCopy;
          v64 = v21;
          v20 = [v40 enumerateObjects:v63];

          prefixCopy = v58;
          goto LABEL_45;
        }

        v41 = [MEMORY[0x277D82C18] rawInjection:"" length:0];
        v52 = v34;
        countCopy4 = count;
        v48 = v18;
        v50 = v41;
        v46 = dbRowID;
        v42 = @"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank,item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation    FROM client_items   WHERE item_notifs_rank >= %lld     AND item_notifs_rank < %lld     AND +app_library_rowid = %@     AND item_state IN (0, 1)     %@      %@      %@ ORDER BY item_notifs_rank   LIMIT %lld";
      }

      else
      {
        if (v36)
        {
          v39 = &itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isFolder;
          if (!foldersCopy)
          {
            v39 = &itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isDocument;
          }

          v51 = v34;
          countCopy3 = count;
          v47 = v18;
          v49 = *v39;
          v45 = selfCopy->_dbRowID;
          v38 = @"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank,item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation    FROM client_items   WHERE item_notifs_rank >= %lld     AND item_notifs_rank < %lld     AND +app_library_rowid = %@     AND item_state IN (0)     %@      %@      %@ ORDER BY item_notifs_rank   LIMIT %lld";
          goto LABEL_40;
        }

        v41 = [MEMORY[0x277D82C18] rawInjection:"" length:0];
        v52 = v34;
        countCopy4 = count;
        v48 = v18;
        v50 = v41;
        v46 = dbRowID;
        v42 = @"SELECT rowid, zone_rowid, item_id, item_creator_id, item_sharing_options, item_side_car_ckinfo, item_parent_zone_rowid, item_localsyncupstate, item_local_diffs, item_notifs_rank, app_library_rowid, item_min_supported_os_rowid, item_user_visible, item_stat_ckinfo, item_state, item_type, item_mode, item_birthtime, item_lastusedtime, item_favoriterank,item_parent_id, item_filename, item_hidden_ext, item_finder_tags, item_xattr_signature, item_trash_put_back_path, item_trash_put_back_parent_id, item_alias_target, item_creator, item_processing_stamp, item_bouncedname, item_scope, item_local_change_count, item_old_version_identifier, fp_creation_item_identifier, version_name, version_ckinfo, version_mtime, version_size, version_thumb_size, version_thumb_signature, version_content_signature, version_xattr_signature, version_edited_since_shared, version_device, version_conflict_loser_etags, version_quarantine_info, version_uploaded_assets, version_upload_error, version_old_zone_item_id, version_old_zone_rowid, version_local_change_count, version_old_version_identifier, item_live_conflict_loser_etags, item_file_id, item_generation    FROM client_items   WHERE item_notifs_rank >= %lld     AND item_notifs_rank < %lld     AND +app_library_rowid = %@     AND item_state IN (0)     %@      %@      %@ ORDER BY item_notifs_rank   LIMIT %lld";
      }

      v40 = [v21 fetch:{v42, minCopy, maxCopy, v46, v48, v50, v52, countCopy4}];

      goto LABEL_44;
    }

LABEL_28:

    goto LABEL_29;
  }

  v18 = brc_bread_crumbs();
  v19 = brc_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    [BRCAppLibrary itemsEnumeratorWithRankMin:rankMax:namePrefix:withDeadItems:shouldIncludeFolders:shouldIncludeOnlyFolders:shouldIncludeDocumentsScope:shouldIncludeDataScope:shouldIncludeExternalScope:shouldIncludeTrashScope:count:db:];
  }

  v20 = 0;
  v21 = dbCopy;
LABEL_45:

  return v20;
}

void __234__BRCAppLibrary_itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db___block_invoke()
{
  v14 = [MEMORY[0x277D82C18] rawInjection:"item_type != 3" length:14];
  v0 = [MEMORY[0x277D82C08] formatInjection:{@"item_scope = 2 AND %@", v14}];
  v1 = itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInDocumentScope;
  itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInDocumentScope = v0;

  v2 = [MEMORY[0x277D82C08] formatInjection:{@"item_scope = 1 AND %@", v14}];
  v3 = itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInDataScope;
  itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInDataScope = v2;

  v4 = [MEMORY[0x277D82C08] formatInjection:{@"(%@) OR (%@)", itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInDocumentScope, itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInDataScope}];
  v5 = itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInEitherScope;
  itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInEitherScope = v4;

  v6 = [MEMORY[0x277D82C08] formatInjection:@"(   item_scope = 2 OR item_scope = 1) AND item_type = 3"];
  v7 = itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInExternalScope;
  itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInExternalScope = v6;

  v8 = [MEMORY[0x277D82C18] rawInjection:"item_scope = 3" length:14];
  v9 = itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInTrashScope;
  itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInTrashScope = v8;

  v10 = [MEMORY[0x277D82C18] rawInjection:"AND item_type IN (1 length:{2, 8, 5, 6, 7)", 35}];
  v11 = itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isDocument;
  itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isDocument = v10;

  v12 = [MEMORY[0x277D82C18] rawInjection:"AND item_type = 0" length:17];
  v13 = itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isFolder;
  itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isFolder = v12;
}

id __234__BRCAppLibrary_itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db___block_invoke_143(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 session];
  v8 = [v7 newLocalItemFromPQLResultSet:v6 db:*(a1 + 40) error:a3];

  return v8;
}

id __79__BRCAppLibrary_itemsEnumeratorChildOf_withDeadItems_rankMin_rankMax_count_db___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 session];
  v8 = [v7 newLocalItemFromPQLResultSet:v6 db:*(a1 + 40) error:a3];

  return v8;
}

- (void)resumeQueryBasedSyncIfNecessary
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__BRCAppLibrary_resumeQueryBasedSyncIfNecessary__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) session];
  v3 = [v2 clientTruthWorkloop];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__BRCAppLibrary_resumeQueryBasedSyncIfNecessary__block_invoke_2;
  v6[3] = &unk_2784FF478;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  dispatch_async(v3, v6);
}

uint64_t __48__BRCAppLibrary_resumeQueryBasedSyncIfNecessary__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isSyncBlocked];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 40);
    v3 = (a1 + 40);
    [v4 fetchPristineness];
    [*v3 scheduleFullLibraryContentsFetch];
    result = [*v3 state];
    if ((result & 0x14000000) == 0x4000000)
    {
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __48__BRCAppLibrary_resumeQueryBasedSyncIfNecessary__block_invoke_2_cold_1(v3);
      }

      return [*v3 fetchTrashItems];
    }
  }

  return result;
}

uint64_t __48__BRCAppLibrary_resumeQueryBasedSyncIfNecessary__block_invoke_149(uint64_t a1)
{
  [*(a1 + 32) clearStateBits:4];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)fetchPristineness
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)scheduleFullLibraryContentsFetch
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: We shouldn't be scheduling a full app library contents fetch when sync is blocked for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)fetchTrashItems
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __32__BRCAppLibrary_fetchTrashItems__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = [*(*(a1 + 32) + 64) serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__BRCAppLibrary_fetchTrashItems__block_invoke_2;
    block[3] = &unk_2784FF450;
    block[4] = *(a1 + 32);
    dispatch_async(v5, block);
  }
}

- (void)listOperation:(id)operation wasReplacedByOperation:(id)byOperation
{
  operationCopy = operation;
  byOperationCopy = byOperation;
  p_pristineFetchOp = &self->_pristineFetchOp;
  WeakRetained = objc_loadWeakRetained(&self->_pristineFetchOp);

  if (WeakRetained == operationCopy || (p_pristineFetchOp = &self->_trashFetchOp, v9 = objc_loadWeakRetained(&self->_trashFetchOp), v9, v9 == operationCopy))
  {
    objc_storeWeak(p_pristineFetchOp, byOperationCopy);
  }
}

- (int64_t)throttleHashWithItemID:(id)d
{
  dCopy = d;
  appLibraryID = [(BRCAppLibrary *)self appLibraryID];
  v6 = [appLibraryID hash];
  v7 = [dCopy hash];

  return v7 ^ v6;
}

- (BOOL)hasUbiquitousDocuments
{
  v2 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT 1 FROM client_items  WHERE item_type NOT IN (0, 9, 10, 4)    AND item_state IN (0)    AND app_library_rowid = %@ LIMIT 1", self->_dbRowID];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasLocalChanges
{
  v2 = [(PQLConnection *)self->_db numberWithSQL:@"SELECT auto_document_with_local_changes_count > 0 FROM app_libraries WHERE rowid = %@", self->_dbRowID];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)zoneHasPendingTargetShareAlias
{
  db = self->_db;
  WeakRetained = objc_loadWeakRetained(&self->_defaultClientZone);
  dbRowID = [WeakRetained dbRowID];
  v5 = [(PQLConnection *)db numberWithSQL:@"SELECT 1 FROM server_items AS si INNER JOIN client_unapplied_table AS cu ON cu.throttle_id = si.item_rank WHERE si.zone_rowid = %@ AND si.item_type = 3 AND si.item_alias_target like '%%:\\_%%' ESCAPE '\\' AND cu.throttle_state = 24 LIMIT 1", dbRowID];

  LOBYTE(WeakRetained) = [v5 BOOLValue];
  return WeakRetained;
}

- (void)addForegroundClient:(id)client
{
  v33 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (!clientCopy)
  {
    [BRCAppLibrary addForegroundClient:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v28 = selfCopy;
    v29 = 2112;
    v30 = clientCopy;
    v31 = 2112;
    v32 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - adding foreground client %@%@", buf, 0x20u);
  }

  v8 = [(NSMutableSet *)selfCopy->_foregroundClients count];
  if ([(NSMutableSet *)selfCopy->_foregroundClients containsObject:clientCopy])
  {
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      [BRCAppLibrary addForegroundClient:];
    }
  }

  [(NSMutableSet *)selfCopy->_foregroundClients addObject:clientCopy];
  if (!v8)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [BRCAppLibrary addForegroundClient:];
    }

    [(BRCAppLibrary *)selfCopy _resolveTargetSharedClientZonesWhenBecameForeground];
    defaultClientZone = [(BRCAppLibrary *)selfCopy defaultClientZone];
    serverZone = [defaultClientZone serverZone];

    mangledID = [(BRCAppLibrary *)selfCopy mangledID];
    v14 = [BRCUserDefaults defaultsForMangledID:mangledID];
    shouldBoostDefaultAndSharedZones = [v14 shouldBoostDefaultAndSharedZones];

    if (shouldBoostDefaultAndSharedZones & 1 | (([serverZone isCloudDocsZone] & 1) == 0))
    {
      [serverZone addForegroundClient:selfCopy];
    }

    else
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v16;
        _os_log_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] Preventing boosting default server zone%@", buf, 0xCu);
      }
    }

    transferSyncContext = [(BRCAppLibrary *)selfCopy transferSyncContext];
    [transferSyncContext addForegroundClient:selfCopy];
    if ((([(NSMutableSet *)selfCopy->_targetSharedServerZones count]== 0) & shouldBoostDefaultAndSharedZones) == 1)
    {
      serverState = [(BRCAccountSession *)selfCopy->_session serverState];
      sharedDatabaseChangeState = [serverState sharedDatabaseChangeState];
      hasNeverSyncedDown = [sharedDatabaseChangeState hasNeverSyncedDown];

      if (hasNeverSyncedDown)
      {
        serialQueue = [(BRCPQLConnection *)selfCopy->_db serialQueue];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __37__BRCAppLibrary_addForegroundClient___block_invoke;
        v26[3] = &unk_2784FF450;
        v26[4] = selfCopy;
        dispatch_async_with_logs_2(serialQueue, v26);
      }
    }
  }

  objc_sync_exit(selfCopy);

  v23 = *MEMORY[0x277D85DE8];
}

void __37__BRCAppLibrary_addForegroundClient___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) zoneHasPendingTargetShareAlias])
  {
    v2 = [*(*v1 + 56) syncContextProvider];
    v3 = [v2 sharedMetadataSyncContext];

    v4 = [BRCUserDefaults defaultsForMangledID:0];
    [v4 forceForegroundGracePeriod];
    v6 = v5;

    [v3 forceContainerForegroundForDuration:v6];
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __37__BRCAppLibrary_addForegroundClient___block_invoke_cold_1(v1);
    }
  }
}

- (void)removeForegroundClient:(id)client
{
  v23 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (!clientCopy)
  {
    [BRCAppLibrary removeForegroundClient:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412802;
    v18 = selfCopy;
    v19 = 2112;
    v20 = clientCopy;
    v21 = 2112;
    v22 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - removing foreground client %@%@", &v17, 0x20u);
  }

  v8 = [(NSMutableSet *)selfCopy->_foregroundClients count];
  if (([(NSMutableSet *)selfCopy->_foregroundClients containsObject:clientCopy]& 1) == 0)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [BRCAppLibrary removeForegroundClient:];
    }
  }

  [(NSMutableSet *)selfCopy->_foregroundClients removeObject:clientCopy];
  if (v8 && ![(NSMutableSet *)selfCopy->_foregroundClients count])
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [BRCAppLibrary removeForegroundClient:];
    }

    [(BRCAppLibrary *)selfCopy _removeAllTargetSharedServerZonesWhenNoLongerForeground];
    defaultClientZone = [(BRCAppLibrary *)selfCopy defaultClientZone];
    serverZone = [defaultClientZone serverZone];

    [serverZone removeForegroundClient:selfCopy];
    transferSyncContext = [(BRCAppLibrary *)selfCopy transferSyncContext];
    [transferSyncContext removeForegroundClient:selfCopy];
  }

  objc_sync_exit(selfCopy);

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)isForeground
{
  transferSyncContextIfExists = [(BRCAppLibrary *)self transferSyncContextIfExists];
  isForeground = [transferSyncContextIfExists isForeground];

  return isForeground;
}

- (BOOL)integrityCheckBoosting
{
  v58 = *MEMORY[0x277D85DE8];
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  [clientDB assertOnQueue];

  defaultClientZone = [(BRCAppLibrary *)self defaultClientZone];
  serverZone = [defaultClientZone serverZone];
  metadataSyncContextIfExists = [serverZone metadataSyncContextIfExists];

  transferSyncContextIfExists = [(BRCAppLibrary *)self transferSyncContextIfExists];
  if ([(NSMutableSet *)self->_foregroundClients count])
  {
    if (transferSyncContextIfExists)
    {
      foregroundClients = [transferSyncContextIfExists foregroundClients];
      v9 = [foregroundClients containsObject:self];

      if ((v9 & 1) == 0)
      {
        v14 = brc_bread_crumbs();
        v29 = brc_default_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          [BRCAppLibrary integrityCheckBoosting];
        }

        goto LABEL_52;
      }
    }

    if (!metadataSyncContextIfExists)
    {
      goto LABEL_7;
    }

    foregroundClients2 = [metadataSyncContextIfExists foregroundClients];
    if ([foregroundClients2 containsObject:self])
    {

LABEL_7:
      mangledID = [(BRCAppLibrary *)self mangledID];
      v12 = [BRCUserDefaults defaultsForMangledID:mangledID];
      shouldBoostDefaultAndSharedZones = [v12 shouldBoostDefaultAndSharedZones];

      v14 = [(NSMutableSet *)self->_targetSharedServerZones mutableCopy];
      if (shouldBoostDefaultAndSharedZones)
      {
        v45 = transferSyncContextIfExists;
        [(BRCAppLibrary *)self _targetSharedServerZonesEnumerator];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v15 = v50 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v47 objects:v57 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v48;
          v44 = metadataSyncContextIfExists;
          obj = v15;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v48 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v47 + 1) + 8 * i);
              if (v14 && ([(BRCAppLibrary *)v14 containsObject:*(*(&v47 + 1) + 8 * i)]& 1) == 0)
              {
                v22 = brc_bread_crumbs();
                v38 = brc_default_log();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412802;
                  selfCopy4 = self;
                  v53 = 2112;
                  selfCopy3 = v20;
                  v55 = 2112;
                  v56 = v22;
                  _os_log_fault_impl(&dword_223E7A000, v38, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ has foreground clients but target shared zone %@ isn't targeted%@", buf, 0x20u);
                }

LABEL_46:

LABEL_50:
                transferSyncContextIfExists = v45;
                v30 = obj;
                v29 = obj;
                metadataSyncContextIfExists = v44;
                goto LABEL_51;
              }

              [(BRCAppLibrary *)v14 removeObject:v20];
              transferSyncContextIfExists2 = [(BRCAppLibrary *)v20 transferSyncContextIfExists];
              v22 = transferSyncContextIfExists2;
              if (transferSyncContextIfExists2)
              {
                foregroundClients3 = [transferSyncContextIfExists2 foregroundClients];
                v24 = [foregroundClients3 containsObject:self];

                if ((v24 & 1) == 0)
                {
                  v38 = brc_bread_crumbs();
                  v39 = brc_default_log();
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138412802;
                    selfCopy4 = v20;
                    v53 = 2112;
                    selfCopy3 = self;
                    v55 = 2112;
                    v56 = v38;
                    _os_log_fault_impl(&dword_223E7A000, v39, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: target shared zone %@ of %@ should be boosted%@", buf, 0x20u);
                  }

                  goto LABEL_46;
                }
              }

              metadataSyncContextIfExists2 = [(BRCAppLibrary *)v20 metadataSyncContextIfExists];
              v26 = metadataSyncContextIfExists2;
              if (metadataSyncContextIfExists2)
              {
                foregroundClients4 = [metadataSyncContextIfExists2 foregroundClients];
                v28 = [foregroundClients4 containsObject:self];

                if ((v28 & 1) == 0)
                {
                  v40 = brc_bread_crumbs();
                  v41 = brc_default_log();
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 138412802;
                    selfCopy4 = v20;
                    v53 = 2112;
                    selfCopy3 = self;
                    v55 = 2112;
                    v56 = v40;
                    _os_log_fault_impl(&dword_223E7A000, v41, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: target shared zone %@ of %@ should be boosted%@", buf, 0x20u);
                  }

                  goto LABEL_50;
                }
              }
            }

            v15 = obj;
            v17 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
            metadataSyncContextIfExists = v44;
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        transferSyncContextIfExists = v45;
      }

      if (!v14 || ![(BRCAppLibrary *)v14 count])
      {
        v35 = 1;
LABEL_53:

        goto LABEL_54;
      }

      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        selfCopy4 = self;
        v53 = 2112;
        selfCopy3 = v14;
        v55 = 2112;
        v56 = v29;
        _os_log_fault_impl(&dword_223E7A000, v30, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ has too many target shared server zones %@%@", buf, 0x20u);
      }

LABEL_51:

LABEL_52:
      v35 = 0;
      goto LABEL_53;
    }

    if (([(BRCAppLibrary *)self state]& 0x200000) != 0)
    {
      appLibraryID = [(BRCAppLibrary *)self appLibraryID];
      v37 = [appLibraryID isEqualToString:*MEMORY[0x277CFACE0]];

      if (v37)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v14 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      [BRCAppLibrary integrityCheckBoosting];
    }

    goto LABEL_52;
  }

  foregroundClients5 = [transferSyncContextIfExists foregroundClients];
  v32 = [foregroundClients5 containsObject:self];

  if (v32)
  {
    v14 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      [BRCAppLibrary integrityCheckBoosting];
    }

    goto LABEL_52;
  }

  foregroundClients6 = [metadataSyncContextIfExists foregroundClients];
  v34 = [foregroundClients6 containsObject:self];

  if (v34)
  {
    v14 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      [BRCAppLibrary integrityCheckBoosting];
    }

    goto LABEL_52;
  }

  v35 = 1;
LABEL_54:

  v42 = *MEMORY[0x277D85DE8];
  return v35;
}

- (void)recomputeShouldEvictState
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (BRCSyncContext)transferSyncContextIfExists
{
  syncContextProvider = [(BRCAccountSession *)self->_session syncContextProvider];
  mangledID = [(BRCAppLibrary *)self mangledID];
  v5 = [syncContextProvider transferSyncContextForMangledID:mangledID createIfNeeded:0];

  return v5;
}

- (BRCSyncContext)transferSyncContext
{
  syncContextProvider = [(BRCAccountSession *)self->_session syncContextProvider];
  mangledID = [(BRCAppLibrary *)self mangledID];
  v5 = [syncContextProvider transferSyncContextForMangledID:mangledID];

  return v5;
}

- (void)didReceiveHandoffRequest
{
  defaultClientZone = [(BRCAppLibrary *)self defaultClientZone];
  serverZone = [defaultClientZone serverZone];
  metadataSyncContext = [serverZone metadataSyncContext];

  transferSyncContext = [(BRCAppLibrary *)self transferSyncContext];
  if (metadataSyncContext != transferSyncContext)
  {
    [metadataSyncContext didReceiveHandoffRequest];
  }

  [transferSyncContext didReceiveHandoffRequest];
}

- (NSString)identifier
{
  mangledID = [(BRCAppLibrary *)self mangledID];
  mangledIDString = [mangledID mangledIDString];

  return mangledIDString;
}

- (id)_targetSharedServerZonesEnumerator
{
  dbRowID = self->_dbRowID;
  v4 = [(BRCPQLConnection *)self->_db fetch:@"SELECT DISTINCT ci.zone_rowid FROM client_items AS ci INNER JOIN client_zones AS cz ON ci.zone_rowid = cz.rowid WHERE ci.app_library_rowid = %@   AND ci.item_state IN (0)   AND (ci.item_sharing_options & 4) != 0   AND cz.zone_owner != %@", dbRowID, *MEMORY[0x277CBBF28]];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__BRCAppLibrary__targetSharedServerZonesEnumerator__block_invoke;
  v7[3] = &unk_2784FF910;
  v7[4] = self;
  v5 = [v4 enumerateObjects:v7];

  return v5;
}

id __51__BRCAppLibrary__targetSharedServerZonesEnumerator__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 numberAtIndex:0];
  v4 = [*(*(a1 + 32) + 56) serverZoneByRowID:v3];
  v5 = [v4 asSharedZone];

  return v5;
}

- (BOOL)isStillTargetingSharedServerZone:(id)zone
{
  v22 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  db = self->_db;
  dbRowID = self->_dbRowID;
  dbRowID = [zoneCopy dbRowID];
  v8 = [(PQLConnection *)db numberWithSQL:@"SELECT rowid FROM client_items WHERE app_library_rowid = %@ AND zone_rowid = %@ AND (item_sharing_options & 4) != 0 AND item_state IN (0) LIMIT 1", dbRowID, dbRowID];

  unsignedLongLongValue = [v8 unsignedLongLongValue];
  if (unsignedLongLongValue)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218754;
      v15 = unsignedLongLongValue;
      v16 = 2112;
      selfCopy = self;
      v18 = 2112;
      v19 = zoneCopy;
      v20 = 2112;
      v21 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Item with rowid %llu is still targeting %@ for %@%@", buf, 0x2Au);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return unsignedLongLongValue != 0;
}

- (void)_resolveTargetSharedClientZonesWhenBecameForeground
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  mangledID = [v0 mangledID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __68__BRCAppLibrary__resolveTargetSharedClientZonesWhenBecameForeground__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  [v4 _targetSharedServerZonesEnumerator];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v27 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v2 addObject:*(*(&v24 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v2;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        [*v3 _addTargetSharedServerZone:{v15, v20}];
        objc_autoreleasePoolPop(v16);
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v12);
  }

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    __68__BRCAppLibrary__resolveTargetSharedClientZonesWhenBecameForeground__block_invoke_cold_1(v3);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_removeAllTargetSharedServerZonesWhenNoLongerForeground
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __72__BRCAppLibrary__removeAllTargetSharedServerZonesWhenNoLongerForeground__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 96);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6++) removeForegroundClient:{*(a1 + 32), v9}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = [*(*(a1 + 32) + 96) removeAllObjects];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_addTargetSharedServerZoneForSharedItem:(id)item
{
  itemCopy = item;
  clientTruthWorkloop = [(BRCAccountSession *)self->_session clientTruthWorkloop];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__BRCAppLibrary__addTargetSharedServerZoneForSharedItem___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = itemCopy;
  v6 = itemCopy;
  dispatch_async_with_logs_2(clientTruthWorkloop, v7);
}

void __57__BRCAppLibrary__addTargetSharedServerZoneForSharedItem___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) serverZone];
  v2 = [v3 asSharedZone];
  [v1 _addTargetSharedServerZone:v2];
}

- (void)_removeTargetSharedServerZoneIfNecessary:(id)necessary
{
  v22 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  clientZone = [necessaryCopy clientZone];
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v17 = clientZone;
    v18 = 2112;
    selfCopy = self;
    v20 = 2112;
    v21 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] attempting to remove target server zone %@ from %@%@", buf, 0x20u);
  }

  clientTruthWorkloop = [(BRCAccountSession *)self->_session clientTruthWorkloop];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__BRCAppLibrary__removeTargetSharedServerZoneIfNecessary___block_invoke;
  v12[3] = &unk_2784FF4A0;
  v13 = necessaryCopy;
  selfCopy2 = self;
  v15 = clientZone;
  v9 = clientZone;
  v10 = necessaryCopy;
  dispatch_async_with_logs_2(clientTruthWorkloop, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __58__BRCAppLibrary__removeTargetSharedServerZoneIfNecessary___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) && ([*(*(a1 + 40) + 96) containsObject:?] & 1) != 0)
  {
    if ([*(a1 + 40) isStillTargetingSharedServerZone:*(a1 + 32)])
    {
      v2 = brc_bread_crumbs();
      v3 = brc_default_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 40);
        v4 = *(a1 + 48);
        v10 = 138412802;
        v11 = v4;
        v12 = 2112;
        v13 = v5;
        v14 = 2112;
        v15 = v2;
        v6 = "[DEBUG] not removing target shared zone %@ from %@, because it's still targeting it%@";
LABEL_13:
        _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, v6, &v10, 0x20u);
      }
    }

    else
    {
      if ([*(*(a1 + 40) + 104) count])
      {
        [*(a1 + 32) removeForegroundClient:*(a1 + 40)];
      }

      [*(*(a1 + 40) + 96) removeObject:*(a1 + 32)];
      v2 = brc_bread_crumbs();
      v3 = brc_default_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 40);
        v8 = *(a1 + 48);
        v10 = 138412802;
        v11 = v8;
        v12 = 2112;
        v13 = v9;
        v14 = 2112;
        v15 = v2;
        v6 = "[DEBUG] %@ is not a target shared zone of %@ anymore%@";
        goto LABEL_13;
      }
    }
  }

  else
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __58__BRCAppLibrary__removeTargetSharedServerZoneIfNecessary___block_invoke_cold_1(a1);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_addTargetSharedServerZone:(id)zone
{
  v23 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  clientZone = [zoneCopy clientZone];
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412802;
    selfCopy2 = clientZone;
    v19 = 2112;
    selfCopy = self;
    v21 = 2112;
    v22 = v6;
    _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] attempting to add target shared server zone %@ to %@%@", &v17, 0x20u);
  }

  clientTruthWorkloop = [(BRCAccountSession *)self->_session clientTruthWorkloop];
  dispatch_assert_queue_V2(clientTruthWorkloop);

  if (zoneCopy)
  {
    mangledID = [(BRCAppLibrary *)self mangledID];
    v10 = [BRCUserDefaults defaultsForMangledID:mangledID];
    shouldBoostDefaultAndSharedZones = [v10 shouldBoostDefaultAndSharedZones];

    if (shouldBoostDefaultAndSharedZones)
    {
      if ([(NSMutableSet *)self->_foregroundClients count])
      {
        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v17 = 138412802;
          selfCopy2 = self;
          v19 = 2112;
          selfCopy = clientZone;
          v21 = 2112;
          v22 = v12;
          _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] Added %@ as foreground client to %@%@", &v17, 0x20u);
        }

        [zoneCopy addForegroundClient:self];
      }

      [(NSMutableSet *)self->_targetSharedServerZones addObject:zoneCopy];
    }

    else
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [BRCAppLibrary _resolveTargetSharedClientZonesWhenBecameForeground];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)containerMetadataFilledWithTCCInfo
{
  containerMetadata = [(BRCAppLibrary *)self containerMetadata];
  v3 = +[BRCDaemonContainerHelper sharedHelper];
  [containerMetadata setIsCloudSyncTCCDisabled:{objc_msgSend(v3, "cloudSyncTCCDisabledForContainerMeta:", containerMetadata)}];

  return containerMetadata;
}

- (id)documentsFolderItemID
{
  includesDataScope = [(BRCAppLibrary *)self includesDataScope];
  v4 = [BRCItemID alloc];
  dbRowID = [(BRCAppLibrary *)self dbRowID];
  if (includesDataScope)
  {
    v6 = [(BRCItemID *)v4 initAsDocumentsWithAppLibraryRowID:dbRowID];
  }

  else
  {
    v6 = [(BRCItemID *)v4 _initAsLibraryRootWithAppLibraryRowID:dbRowID];
  }

  v7 = v6;

  return v7;
}

- (id)fetchRootItemWithFacade:(id)facade
{
  dbRowID = [(BRCAppLibrary *)self dbRowID];
  if (dbRowID)
  {
    v5 = [[BRCItemID alloc] _initAsLibraryRootWithAppLibraryRowID:dbRowID];
    v6 = [[BRCZoneRootItem alloc] initWithZoneRootItemID:v5 session:self->_session];
  }

  else
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BRCAppLibrary fetchRootItemWithFacade:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)fetchRootItem
{
  dbFacade = [(BRCAppLibrary *)self dbFacade];
  [dbFacade assertOnQueue];

  dbFacade2 = [(BRCAppLibrary *)self dbFacade];
  v5 = [(BRCAppLibrary *)self fetchRootItemWithFacade:dbFacade2];

  return v5;
}

- (id)fetchDocumentsDirectoryItemWithFacade:(id)facade
{
  facadeCopy = facade;
  defaultClientZone = [(BRCAppLibrary *)self defaultClientZone];
  documentsFolderItemID = [(BRCAppLibrary *)self documentsFolderItemID];
  v7 = [defaultClientZone itemByItemID:documentsFolderItemID dbFacade:facadeCopy];

  asDirectory = [v7 asDirectory];

  return asDirectory;
}

- (id)fetchDocumentsDirectoryItem
{
  dbFacade = [(BRCAppLibrary *)self dbFacade];
  v4 = [(BRCAppLibrary *)self fetchDocumentsDirectoryItemWithFacade:dbFacade];

  return v4;
}

- (id)rootItemID
{
  dbRowID = [(BRCAppLibrary *)self dbRowID];
  if (dbRowID)
  {
    v3 = [[BRCItemID alloc] _initAsLibraryRootWithAppLibraryRowID:dbRowID];
  }

  else
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [BRCAppLibrary fetchRootItemWithFacade:];
    }

    v3 = 0;
  }

  return v3;
}

- (id)rootItemGlobalID
{
  v3 = [BRCItemGlobalID alloc];
  defaultClientZone = [(BRCAppLibrary *)self defaultClientZone];
  dbRowID = [defaultClientZone dbRowID];
  rootItemID = [(BRCAppLibrary *)self rootItemID];
  v7 = [(BRCItemGlobalID *)v3 initWithZoneRowID:dbRowID itemID:rootItemID];

  return v7;
}

- (void)zoneDidChangeMovedToCloudDocsState
{
  [(BRCAppLibrary *)self _updateIsInCloudDocsZone];
  v2 = MEMORY[0x277CFAE20];

  [v2 postContainerListUpdateNotification];
}

- (void)_updateIsInCloudDocsZone
{
  defaultClientZone = [(BRCAppLibrary *)self defaultClientZone];
  -[BRContainer setIsInCloudDocsZone:](self->_containerMetadata, "setIsInCloudDocsZone:", [defaultClientZone isCloudDocsZone]);
}

- (void)setContainerMetadataEtag:(id)etag
{
  objc_storeStrong(&self->_containerMetadataEtag, etag);

  [(BRCAppLibrary *)self setNeedsSave:1];
}

- (void)setContainerMetadataNeedsSyncUp:(BOOL)up
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_containerMetadataNeedsSyncUp != up)
  {
    upCopy = up;
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = "NO";
      v9 = 138412802;
      selfCopy = self;
      if (upCopy)
      {
        v8 = "YES";
      }

      v11 = 2080;
      v12 = v8;
      v13 = 2112;
      v14 = v5;
      _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] container-metadata needs sync up for %@ changed to %s%@", &v9, 0x20u);
    }

    self->_containerMetadataNeedsSyncUp = upCopy;
    [(BRCAppLibrary *)self setNeedsSave:1];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)scheduleContainerMetadataSyncUp
{
  [(BRCAppLibrary *)self setContainerMetadataNeedsSyncUp:1];
  delegate = [(BRCAppLibrary *)self delegate];
  [delegate didChangeSyncStatusForContainerMetadataForContainer:self];
}

- (void)flushAndForceIngestRootAndDocumentsFolder
{
  dispatch_group_enter(self->_forceIngestionGroup);
  objc_initWeak(&location, self);
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__BRCAppLibrary_flushAndForceIngestRootAndDocumentsFolder__block_invoke;
  v4[3] = &unk_2784FF400;
  objc_copyWeak(&v5, &location);
  [clientDB scheduleFlushWithCheckpoint:0 whenFlushed:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __58__BRCAppLibrary_flushAndForceIngestRootAndDocumentsFolder__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained rootFileObjectID];
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __58__BRCAppLibrary_flushAndForceIngestRootAndDocumentsFolder__block_invoke_cold_1();
    }

    v6 = [v3 asString];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__BRCAppLibrary_flushAndForceIngestRootAndDocumentsFolder__block_invoke_176;
    v15[3] = &unk_2784FFFA8;
    v15[4] = v2;
    v7 = v3;
    v16 = v7;
    [BRCImportUtil forceIngestionForItemID:v6 completionHandler:v15];

    if ([v2 includesDataScope])
    {
      v8 = [v2 documentsFolderFileObjectID];
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __58__BRCAppLibrary_flushAndForceIngestRootAndDocumentsFolder__block_invoke_cold_2();
      }

      v11 = [v8 asString];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __58__BRCAppLibrary_flushAndForceIngestRootAndDocumentsFolder__block_invoke_177;
      v13[3] = &unk_2784FFFA8;
      v13[4] = v2;
      v14 = v8;
      v12 = v8;
      [BRCImportUtil forceIngestionForItemID:v11 completionHandler:v13];
    }
  }
}

void __58__BRCAppLibrary_flushAndForceIngestRootAndDocumentsFolder__block_invoke_176(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __58__BRCAppLibrary_flushAndForceIngestRootAndDocumentsFolder__block_invoke_176_cold_1(a1);
  }

  dispatch_group_leave(*(*(a1 + 32) + 32));
}

void __58__BRCAppLibrary_flushAndForceIngestRootAndDocumentsFolder__block_invoke_177(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __58__BRCAppLibrary_flushAndForceIngestRootAndDocumentsFolder__block_invoke_177_cold_1(a1);
  }
}

- (void)waitForRootIngestionWithCompletion:(id)completion
{
  completionCopy = completion;
  if (dispatch_group_wait(self->_forceIngestionGroup, 0))
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCAppLibrary waitForRootIngestionWithCompletion:];
    }

    rootFileObjectID = [(BRCAppLibrary *)self rootFileObjectID];
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCAppLibrary waitForRootIngestionWithCompletion:];
    }

    asString = [rootFileObjectID asString];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__BRCAppLibrary_waitForRootIngestionWithCompletion___block_invoke;
    v17[3] = &unk_278501F20;
    v18 = completionCopy;
    [BRCImportUtil forceIngestionForItemID:asString completionHandler:v17];

    if ([(BRCAppLibrary *)self includesDataScope])
    {
      documentsFolderFileObjectID = [(BRCAppLibrary *)self documentsFolderFileObjectID];
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [BRCAppLibrary waitForRootIngestionWithCompletion:];
      }

      asString2 = [documentsFolderFileObjectID asString];
      [BRCImportUtil forceIngestionForItemID:asString2 completionHandler:&__block_literal_global_180];
    }
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [BRCAppLibrary waitForRootIngestionWithCompletion:];
    }

    completionCopy[2](completionCopy);
  }
}

- (void)setChildBasehashSalt:(id)salt
{
  v23 = *MEMORY[0x277D85DE8];
  saltCopy = salt;
  v6 = saltCopy;
  if (self->_childBasehashSalt != saltCopy && ![(NSData *)saltCopy isEqualToData:?])
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      brc_truncatedSHA256 = [(NSData *)v6 brc_truncatedSHA256];
      brc_hexadecimalString = [brc_truncatedSHA256 brc_hexadecimalString];
      brc_truncatedSHA2562 = [(NSData *)self->_childBasehashSalt brc_truncatedSHA256];
      brc_hexadecimalString2 = [brc_truncatedSHA2562 brc_hexadecimalString];
      mangledID = [(BRCAppLibrary *)self mangledID];
      *buf = 138413058;
      v16 = brc_hexadecimalString;
      v17 = 2112;
      v18 = brc_hexadecimalString2;
      v19 = 2112;
      v20 = mangledID;
      v21 = 2112;
      v22 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Learning new child basehash salt %@ from %@ for %@%@", buf, 0x2Au);
    }

    objc_storeStrong(&self->_childBasehashSalt, salt);
    [(BRCAppLibrary *)self setNeedsSave:1];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)resetChildBasehashSalt
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.defaultClientZone.state & BRCClientZoneStateIsResetting%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)setSaltingState:(unsigned int)state
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->_saltingState != state)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      if (state > 3)
      {
        v8 = @"no server item";
      }

      else
      {
        v8 = off_278501F40[state];
      }

      saltingState = self->_saltingState;
      if (saltingState > 3)
      {
        v10 = @"no server item";
      }

      else
      {
        v10 = off_278501F40[saltingState];
      }

      mangledID = [(BRCAppLibrary *)self mangledID];
      v12 = 138413058;
      v13 = v8;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = mangledID;
      v18 = 2112;
      v19 = v5;
      _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] Learning salt state %@ from %@ for %@%@", &v12, 0x2Au);
    }

    self->_saltingState = state;
    [(BRCAppLibrary *)self setNeedsSave:1];
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)didListItemID:(id)d sessionContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  if ([dCopy isNonDesktopRoot])
  {
    zoneAppRetriever = [contextCopy zoneAppRetriever];
    appLibraryRowID = [dCopy appLibraryRowID];
    v8 = [zoneAppRetriever appLibraryByRowID:appLibraryRowID];

    [v8 setStateBits:0x2000000];
    if (([v8 isCloudDocsAppLibrary] & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (![dCopy isDocumentsFolder])
    {
      goto LABEL_8;
    }

    zoneAppRetriever2 = [contextCopy zoneAppRetriever];
    appLibraryRowID2 = [dCopy appLibraryRowID];
    v8 = [zoneAppRetriever2 appLibraryByRowID:appLibraryRowID2];
  }

  [v8 setStateBits:0x4000000];
LABEL_7:

LABEL_8:
}

- (void)reimportLibraryRootAndFinishResetWithCompletion:(id)completion
{
  completionCopy = completion;
  rootFileObjectID = [(BRCAppLibrary *)self rootFileObjectID];
  asString = [rootFileObjectID asString];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__BRCAppLibrary_BRCZoneReset__reimportLibraryRootAndFinishResetWithCompletion___block_invoke;
  v8[3] = &unk_2785014D0;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [BRCImportUtil reimportItemsBelowItemWithIdentifier:asString completionHandler:v8];
}

void __79__BRCAppLibrary_BRCZoneReset__reimportLibraryRootAndFinishResetWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ![v3 fp_isFileProviderError:-1005])
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v4);
    }
  }

  else
  {
    v5 = [*(a1 + 32) session];
    v6 = [v5 clientTruthWorkloop];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __79__BRCAppLibrary_BRCZoneReset__reimportLibraryRootAndFinishResetWithCompletion___block_invoke_2;
    v9[3] = &unk_278500048;
    v7 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v7;
    dispatch_async(v6, v9);
  }
}

uint64_t __79__BRCAppLibrary_BRCZoneReset__reimportLibraryRootAndFinishResetWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) clearStateBits:8];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __48__BRCAppLibrary_FPFSAdditions__deleteAppLibrary__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] App Library includes data scope%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)setNeedsSave:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithMangledID:dbRowID:zoneRowID:db:plist:session:initialCreation:createdRootOnDisk:createdCZMMoved:rootFileID:childBasehashSalt:saltingState:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: dbRowID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithMangledID:dbRowID:zoneRowID:db:plist:session:initialCreation:createdRootOnDisk:createdCZMMoved:rootFileID:childBasehashSalt:saltingState:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: zoneRowID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithMangledID:dbRowID:zoneRowID:db:plist:session:initialCreation:createdRootOnDisk:createdCZMMoved:rootFileID:childBasehashSalt:saltingState:.cold.3()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: mangledID.isPrivate%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithMangledID:dbRowID:zoneRowID:db:plist:session:initialCreation:createdRootOnDisk:createdCZMMoved:rootFileID:childBasehashSalt:saltingState:.cold.4()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, v0, v1, "[CRIT] API MISUSE: unexpected parameter%@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithMangledID:dbRowID:zoneRowID:db:plist:session:initialCreation:createdRootOnDisk:createdCZMMoved:rootFileID:childBasehashSalt:saltingState:.cold.5()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: dbRowID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)associateWithClientZone:offline:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: associating nil client zone for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_activateState:origState:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: state == BRCAppLibraryStateNotActivated || !(state & BRCAppLibraryStateNotActivated)%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_activateState:origState:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__BRCAppLibrary__activateState_origState___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 32) mangledID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __42__BRCAppLibrary__activateState_origState___block_invoke_33_cold_1()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 32) mangledID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)isGreedy
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] app library greediness enforced by user defaults%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)itemsEnumeratorWithRankMin:rankMax:namePrefix:withDeadItems:shouldIncludeFolders:shouldIncludeOnlyFolders:shouldIncludeDocumentsScope:shouldIncludeDataScope:shouldIncludeExternalScope:shouldIncludeTrashScope:count:db:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: asking for no scopes?%@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (id)itemsEnumeratorWithRankMin:rankMax:namePrefix:withDeadItems:shouldIncludeFolders:shouldIncludeOnlyFolders:shouldIncludeDocumentsScope:shouldIncludeDataScope:shouldIncludeExternalScope:shouldIncludeTrashScope:count:db:.cold.3()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v12 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v10 = 138412290;
    v11 = v4;
    OUTLINED_FUNCTION_0_2(&dword_223E7A000, v5, v6, "[CRIT] Assertion failed: docsOrDataScopeInjection || externalScopeInjection%@", &v10);
  }

  v7 = itemsEnumeratorWithRankMin_rankMax_namePrefix_withDeadItems_shouldIncludeFolders_shouldIncludeOnlyFolders_shouldIncludeDocumentsScope_shouldIncludeDataScope_shouldIncludeExternalScope_shouldIncludeTrashScope_count_db__isInTrashScope;
  if ((v3 & 1) == 0)
  {
    v7 = 0;
  }

  *v1 = v7;
  result = v7;
  *v0 = MEMORY[0x277D82C08];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void __48__BRCAppLibrary_resumeQueryBasedSyncIfNecessary__block_invoke_2_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addForegroundClient:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: client%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)addForegroundClient:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: ![_foregroundClients containsObject:client]%@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)addForegroundClient:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __37__BRCAppLibrary_addForegroundClient___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeForegroundClient:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: client%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)removeForegroundClient:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: [_foregroundClients containsObject:client]%@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)removeForegroundClient:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)integrityCheckBoosting
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: %@ has no foreground clients but the transfer sync contains self%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __68__BRCAppLibrary__resolveTargetSharedClientZonesWhenBecameForeground__block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*a1 + 96);
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __58__BRCAppLibrary__removeTargetSharedServerZoneIfNecessary___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchRootItemWithFacade:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: nil dbRowID for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __58__BRCAppLibrary_flushAndForceIngestRootAndDocumentsFolder__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__BRCAppLibrary_flushAndForceIngestRootAndDocumentsFolder__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__BRCAppLibrary_flushAndForceIngestRootAndDocumentsFolder__block_invoke_176_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void __58__BRCAppLibrary_flushAndForceIngestRootAndDocumentsFolder__block_invoke_177_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)waitForRootIngestionWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 mangledID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)waitForRootIngestionWithCompletion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)waitForRootIngestionWithCompletion:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)waitForRootIngestionWithCompletion:.cold.4()
{
  OUTLINED_FUNCTION_18();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [v0 mangledID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end