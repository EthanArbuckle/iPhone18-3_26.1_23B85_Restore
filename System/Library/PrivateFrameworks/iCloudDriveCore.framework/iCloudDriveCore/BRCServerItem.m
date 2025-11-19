@interface BRCServerItem
- (BOOL)aliasTargetIsShared;
- (BOOL)canPathMatchMergeWithLocalItem:(id)a3;
- (BOOL)hasShareIDAndIsOwnedByMe;
- (BOOL)isDocument;
- (BOOL)isSharedByMe;
- (BOOL)isSharedToMeChildItem;
- (BOOL)isSharedToMeTopLevelItem;
- (BOOL)validateLoggingToFile:(__sFILE *)a3;
- (BRCItemGlobalID)itemGlobalID;
- (BRCServerItem)initWithServerItem:(id)a3;
- (BRCSharedServerItem)asSharedItem;
- (id)aliasTargetAppLibrary;
- (id)aliasTargetClientZone;
- (id)appLibraryForRootItem;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithContext:(id)a3;
- (id)initFromPQLResultSet:(id)a3 serverZone:(id)a4 error:(id *)a5;
- (id)newLocalItemWithDBRowID:(unint64_t)a3;
- (id)parentItemIDOnServer;
- (id)parentItemOnFS;
- (id)parentLocalItemOnFS;
- (id)predictedAppLibrary;
- (id)sideCarInfo;
- (unint64_t)diffAgainstServerItem:(id)a3;
- (void)appLibraryForRootItem;
- (void)asSharedItem;
- (void)overrideCKInfoIfNecessaryForOutOfBandSyncOpWithLocalItem:(id)a3;
- (void)parentLocalItemOnFS;
@end

@implementation BRCServerItem

- (BOOL)isDocument
{
  v3 = [(BRCStatInfo *)self->_st type];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(BRCStatInfo *)self->_st type]== 6;
  }

  return v3;
}

- (id)parentItemIDOnServer
{
  v3 = [(BRCServerItem *)self itemID];
  if ([v3 isDocumentsFolder])
  {
    v4 = [(BRCServerItem *)self clientZone];
    v5 = [v4 isCloudDocsZone];

    if (v5)
    {
      v6 = [(BRCServerItem *)self clientZone];
      v7 = [v6 asPrivateClientZone];
      v8 = [v7 rootItemID];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = [(BRCStatInfo *)self->_st parentID];
LABEL_6:

  return v8;
}

- (BOOL)isSharedToMeTopLevelItem
{
  v2 = [(BRCServerItem *)self parentItemIDOnServer];
  v3 = [v2 isSharedZoneRoot];

  return v3;
}

- (id)parentLocalItemOnFS
{
  dbFacade = self->_dbFacade;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BRCServerItem parentLocalItemOnFS];
  }

  clientZone = self->_clientZone;
  v5 = [(BRCStatInfo *)self->_st parentID];
  v6 = [(BRCClientZone *)clientZone itemByItemID:v5 dbFacade:self->_dbFacade];

  return v6;
}

- (id)sideCarInfo
{
  v3 = objc_alloc_init(BRCSideCarInfo);
  [(BRCSideCarInfo *)v3 setFavoriteRank:[(BRCStatInfo *)self->_st favoriteRank]];
  [(BRCSideCarInfo *)v3 setLastUsedTime:[(BRCStatInfo *)self->_st lastUsedTime]];
  v4 = [(BRCStatInfo *)self->_st finderTags];
  [(BRCSideCarInfo *)v3 setFinderTags:v4];

  [(BRCSideCarInfo *)v3 setCkInfo:self->_sideCarCKInfo];

  return v3;
}

- (id)predictedAppLibrary
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(BRCServerItem *)self clientZone];
  v4 = [v3 db];
  [v4 assertOnQueue];

  v5 = [(BRCServerItem *)self parentLocalItemOnFS];
  v6 = [v5 appLibrary];
  v7 = [v6 dbRowID];

  if (!v7)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't figure out the expected app library; falling back to clouddocs%@", &v15, 0xCu);
    }

    v10 = [(BRCAccountSession *)self->_session cloudDocsClientZone];
    v11 = [v10 defaultAppLibrary];
    v7 = [v11 dbRowID];
  }

  v12 = [(BRCAccountSession *)self->_session appLibraryByRowID:v7];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isSharedByMe
{
  v3 = [(BRCServerItem *)self isShared];
  if (v3)
  {
    LOBYTE(v3) = ![(BRCClientZone *)self->_clientZone isSharedZone];
  }

  return v3;
}

- (BOOL)hasShareIDAndIsOwnedByMe
{
  v3 = [(BRCServerItem *)self isOwnedByMe];
  if (v3)
  {
    return (LOBYTE(self->_sharingOptions) >> 2) & 1;
  }

  return v3;
}

- (BOOL)isSharedToMeChildItem
{
  v3 = [(BRCServerItem *)self isSharedToMe];
  if (v3)
  {
    LOBYTE(v3) = ![(BRCServerItem *)self isSharedToMeTopLevelItem];
  }

  return v3;
}

- (BRCItemGlobalID)itemGlobalID
{
  v3 = [BRCItemGlobalID alloc];
  v4 = [(BRCClientZone *)self->_clientZone dbRowID];
  v5 = [(BRCItemGlobalID *)v3 initWithZoneRowID:v4 itemID:self->_itemID];

  return v5;
}

- (BRCSharedServerItem)asSharedItem
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [(BRCServerItem *)v2 asSharedItem];
  }

  return 0;
}

- (BRCServerItem)initWithServerItem:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BRCServerItem;
  v5 = [(BRCServerItem *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_itemID, *(v4 + 10));
    objc_storeStrong(&v6->_ownerKey, *(v4 + 9));
    objc_storeStrong(&v6->_sideCarCKInfo, *(v4 + 6));
    v7 = [*(v4 + 13) copy];
    st = v6->_st;
    v6->_st = v7;

    v9 = [*(v4 + 14) copy];
    latestVersion = v6->_latestVersion;
    v6->_latestVersion = v9;

    v11 = [*(v4 + 15) copy];
    serverMetrics = v6->_serverMetrics;
    v6->_serverMetrics = v11;

    objc_storeStrong(&v6->_serverZone, *(v4 + 16));
    objc_storeStrong(&v6->_clientZone, *(v4 + 17));
    v6->_session = *(v4 + 1);
    v6->_sharingOptions = *(v4 + 3);
    v6->_pcsChainState = *(v4 + 15);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithServerItem:self];
}

- (id)initFromPQLResultSet:(id)a3 serverZone:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v35.receiver = self;
  v35.super_class = BRCServerItem;
  v9 = [(BRCServerItem *)&v35 init];
  if (v9)
  {
    v9->_session = [v8 session];
    v10 = [v7 db];
    db = v9->_db;
    v9->_db = v10;

    v12 = [(BRCAccountSession *)v9->_session getClientDBFacadeFromDB:v9->_db];
    dbFacade = v9->_dbFacade;
    v9->_dbFacade = v12;

    objc_storeStrong(&v9->_serverZone, a4);
    v14 = [(BRCServerZone *)v9->_serverZone clientZone];
    clientZone = v9->_clientZone;
    v9->_clientZone = v14;

    v9->_rank = [v7 longLongAtIndex:1];
    v16 = [v7 stringAtIndex:2];
    originalName = v9->_originalName;
    v9->_originalName = v16;

    v9->_pcsChainState = [v7 intAtIndex:3];
    v18 = [v7 objectOfClass:objc_opt_class() atIndex:4];
    itemID = v9->_itemID;
    v9->_itemID = v18;

    v20 = [v7 numberAtIndex:5];
    ownerKey = v9->_ownerKey;
    v9->_ownerKey = v20;

    v9->_sharingOptions = [v7 integerAtIndex:6];
    v22 = [v7 objectOfClass:objc_opt_class() atIndex:7];
    sideCarCKInfo = v9->_sideCarCKInfo;
    v9->_sideCarCKInfo = v22;

    v24 = [(BRCStatInfo *)[BRCServerStatInfo alloc] initFromResultSet:v7 pos:8];
    st = v9->_st;
    v9->_st = v24;

    if ([(BRCServerZone *)v9->_serverZone isSharedZone]&& (v9->_sharingOptions & 0x48) == 0 && [(BRCStatInfo *)v9->_st state]!= 1)
    {
      [BRCServerItem initFromPQLResultSet:serverZone:error:];
    }

    if ([(BRCServerItem *)v9 isDocument])
    {
      v26 = [[BRCVersion alloc] initFromResultSet:v7 pos:24];
      latestVersion = v9->_latestVersion;
      v9->_latestVersion = v26;

      if ([(BRCStatInfo *)v9->_st isExecutable]&& [(BRCVersion *)v9->_latestVersion isPackage])
      {
        v9->_st->super._mode &= ~2u;
      }
    }

    else if ([(BRCServerItem *)v9 isDirectory])
    {
      v9->_directoryMtime = [v7 longLongAtIndex:26];
    }

    else if ([(BRCServerItem *)v9 isSymLink])
    {
      v28 = [v7 objectOfClass:objc_opt_class() atIndex:24];
      symlinkTarget = v9->_symlinkTarget;
      v9->_symlinkTarget = v28;
    }

    v30 = [[BRCBasehashSaltInfo alloc] initFromResultSet:v7 pos:36];
    basehashSaltInfo = v9->_basehashSaltInfo;
    v9->_basehashSaltInfo = v30;

    v32 = [objc_alloc(MEMORY[0x277CFAEC0]) initFromResultSet:v7 pos:39];
    serverMetrics = v9->_serverMetrics;
    v9->_serverMetrics = v32;
  }

  return v9;
}

- (BOOL)validateLoggingToFile:(__sFILE *)a3
{
  LODWORD(v5) = [(BRCStatInfo *)self->_st check:self->_itemID logToFile:a3];
  latestVersion = self->_latestVersion;
  if (latestVersion)
  {
    if (v5)
    {
      LOBYTE(v5) = [(BRCVersion *)latestVersion check:self->_itemID logToFile:a3];
    }

    if ([(BRCServerItem *)self isDirectory])
    {
      v5 = "item %s is a directory with a version\n";
LABEL_9:
      fprintf(a3, v5, [(BRCItemID *)self->_itemID UTF8String]);
      LOBYTE(v5) = 0;
    }
  }

  else if ([(BRCServerItem *)self isDocument]&& ![(BRCServerItem *)self isDead])
  {
    v5 = "item %s is a live document without a version\n";
    goto LABEL_9;
  }

  return v5;
}

- (unint64_t)diffAgainstServerItem:(id)a3
{
  v4 = a3;
  v5 = v4[10];
  v6 = self->_itemID;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_6;
  }

  if (v7)
  {
    v9 = [(BRCItemID *)v6 isEqual:v7];

    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v10 = 0x80000000;
LABEL_9:
  v11 = v4[9];
  v12 = self->_ownerKey;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_16;
  }

  if (!v13)
  {

    goto LABEL_15;
  }

  v15 = [(BRCUserRowID *)v12 isEqual:v13];

  if ((v15 & 1) == 0)
  {
LABEL_15:
    v10 |= 0x20000000uLL;
  }

LABEL_16:
  if (self->_sharingOptions != v4[3])
  {
    v10 |= 0x40000000uLL;
  }

  v16 = v4[6];
  v17 = self->_sideCarCKInfo;
  v18 = v16;
  v19 = v18;
  if (v17 == v18)
  {
  }

  else
  {
    if (v18)
    {
      v20 = [(BRFieldCKInfo *)v17 isEqual:v18];

      if (v20)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v10 |= 0x100000000000000uLL;
  }

LABEL_25:
  v21 = [(BRCStatInfo *)self->_st diffAgainst:v4[13]]| v10;
  if (-[BRCServerItem isDocument](self, "isDocument") && [v4 isDocument])
  {
    v21 |= [(BRCVersion *)self->_latestVersion diffAgainst:v4[14]];
  }

  return v21;
}

- (id)descriptionWithContext:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:128];
  if (v4)
  {
    v6 = [BRCDumpContext stringFromItemID:self->_itemID context:v4];
    [v5 appendFormat:@"i:%@ ", v6];
  }

  else
  {
    v6 = [(BRCClientZone *)self->_clientZone mangledID];
    v7 = [(BRCItemID *)self->_itemID debugItemIDString];
    [v5 appendFormat:@"i:%@:%@ ", v6, v7];
  }

  if ([(BRCUserRowID *)self->_ownerKey BOOLValue])
  {
    [v5 appendFormat:@"o:%@ ", self->_ownerKey];
  }

  [v5 appendFormat:@"rk:%lld ", self->_rank];
  v8 = self->_pcsChainState - 1;
  if (v8 <= 3)
  {
    [v5 appendString:off_2785045E8[v8]];
  }

  if (self->_directoryMtime)
  {
    [v5 appendFormat:@"mt:%lld ", self->_directoryMtime];
  }

  sideCarCKInfo = self->_sideCarCKInfo;
  if (sideCarCKInfo)
  {
    v10 = [(BRFieldCKInfo *)sideCarCKInfo etag];
    [v5 appendFormat:@"ppm:%@ ", v10];
  }

  v11 = [(BRCStatInfo *)self->_st descriptionWithContext:v4 origName:self->_originalName];
  [v5 appendFormat:@"st{%@}", v11];

  if ([(BRCServerItem *)self isSharedToMeTopLevelItem])
  {
    v12 = [(BRCServerItem *)self asSharedItem];
    v13 = [v12 aliasDerivedStructureForDescription];
    v14 = [v13 descriptionWithContext:v4 origName:self->_originalName];
    [v5 appendFormat:@" alias-st{%@}", v14];
  }

  latestVersion = self->_latestVersion;
  if (latestVersion)
  {
    v16 = [(BRCVersion *)latestVersion descriptionWithContext:v4];
    [v5 appendFormat:@" ct{%@}", v16];
  }

  serverMetrics = self->_serverMetrics;
  if (serverMetrics)
  {
    v18 = [(BRServerMetrics *)serverMetrics description];
    [v5 appendFormat:@" sm{%@}", v18];
  }

  if (self->_sharingOptions)
  {
    v19 = BRCPrettyPrintBitmap();
    [v5 appendFormat:@" sharing-options:{%@}", v19];
  }

  if ([(BRCServerItem *)self isSymLink])
  {
    v20 = [(NSString *)self->_symlinkTarget fp_obfuscatedPath];
    [v5 appendFormat:@" target:%@", v20];
  }

  v21 = [BRCUserDefaults defaultsForMangledID:0];
  v22 = [v21 supportsEnhancedDrivePrivacy];

  if (v22)
  {
    if ([(BRCServerItem *)self isDirectory])
    {
      v23 = [(BRCBasehashSaltInfo *)self->_basehashSaltInfo saltingState];
      if (v23 > 3)
      {
        v24 = @"no server item";
      }

      else
      {
        v24 = off_278504608[v23];
      }

      [v5 appendFormat:@" salt-st{%@}", v24];
      v25 = [(BRCBasehashSaltInfo *)self->_basehashSaltInfo childBasehashSalt];
      if (v25)
      {
        v26 = [MEMORY[0x277CBEA90] brc_generateBogusKey];
        v27 = [v25 isEqualToData:v26];

        if (v27)
        {
          v28 = @"bogus-salt";
        }

        else
        {
          v29 = [v25 brc_truncatedSHA256];
          v28 = [v29 brc_hexadecimalString];
        }

        [v5 appendFormat:@" child-valid{%@}", v28];
      }
    }

    v30 = [(BRCBasehashSaltInfo *)self->_basehashSaltInfo basehashSaltValidation];
    v31 = v30;
    if (v30)
    {
      v32 = [v30 brc_hexadecimalString];
      [v5 appendFormat:@" base-valid{%@}", v32];
    }
  }

  return v5;
}

- (id)appLibraryForRootItem
{
  if (![(BRCServerItem *)self isFSRoot])
  {
    [BRCServerItem appLibraryForRootItem];
  }

  p_itemID = &self->_itemID;
  if (-[BRCItemID isNonDesktopRoot](self->_itemID, "isNonDesktopRoot") || [*p_itemID isDocumentsFolder])
  {
    session = self->_session;
    v5 = [(BRCItemID *)self->_itemID appLibraryRowID];
    v6 = [(BRCAccountSession *)session appLibraryByRowID:v5];
  }

  else
  {
    v5 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(BRCServerItem *)p_itemID appLibraryForRootItem];
    }

    v6 = 0;
  }

  return v6;
}

- (id)newLocalItemWithDBRowID:(unint64_t)a3
{
  p_st = &self->_st;
  type = self->_st->super._type;
  if (type > 5)
  {
    if (self->_st->super._type > 8u)
    {
      if (type == 255 || type == 10)
      {
        goto LABEL_19;
      }

      if (type == 9)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (type - 7 < 2)
      {
        goto LABEL_19;
      }

      if (type == 6)
      {
        v7 = BRCFinderBookmarkItem;
        goto LABEL_29;
      }
    }

LABEL_22:
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [BRCServerItem newLocalItemWithDBRowID:?];
    }

    return 0;
  }

  if (self->_st->super._type > 2u)
  {
    if (type == 3)
    {
      v7 = BRCAliasItem;
      goto LABEL_29;
    }

    if (type != 4)
    {
      if (type == 5)
      {
        v7 = BRCSymlinkItem;
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_19:
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BRCServerItem newLocalItemWithDBRowID:?];
    }

    goto LABEL_22;
  }

  if (!self->_st->super._type)
  {
LABEL_26:
    v7 = BRCDirectoryItem;
    goto LABEL_29;
  }

  if (type != 1)
  {
    goto LABEL_19;
  }

  v7 = BRCDocumentItem;
LABEL_29:
  v14 = [v7 alloc];

  return [v14 _initWithServerItem:self dbRowID:a3];
}

- (id)parentItemOnFS
{
  serverZone = self->_serverZone;
  v4 = [(BRCStatInfo *)self->_st parentID];
  v5 = [(BRCServerZone *)serverZone itemByItemID:v4 db:self->_db];

  return v5;
}

- (BOOL)aliasTargetIsShared
{
  v2 = [(BRCStatInfo *)self->_st _aliasTargetMangledID];
  v3 = [v2 isShared];

  return v3;
}

- (id)aliasTargetClientZone
{
  session = self->_session;
  v3 = [(BRCStatInfo *)self->_st _aliasTargetMangledID];
  v4 = [(BRCAccountSession *)session clientZoneByMangledID:v3];

  return v4;
}

- (id)aliasTargetAppLibrary
{
  session = self->_session;
  v3 = [(BRCStatInfo *)self->_st _aliasTargetMangledID];
  v4 = [(BRCAccountSession *)session appLibraryByMangledID:v3];

  return v4;
}

- (BOOL)canPathMatchMergeWithLocalItem:(id)a3
{
  st = self->_st;
  v4 = a3;
  v5 = [BRCItemID structureRecordPrefixForItemType:[(BRCStatInfo *)st type] targetZoneShared:1];
  v6 = [v4 st];

  v7 = +[BRCItemID structureRecordPrefixForItemType:targetZoneShared:](BRCItemID, "structureRecordPrefixForItemType:targetZoneShared:", [v6 type], 1);

  LOBYTE(v4) = [v5 isEqualToString:v7];
  return v4;
}

- (void)overrideCKInfoIfNecessaryForOutOfBandSyncOpWithLocalItem:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 localDiffs] & 0x1000000000000000) != 0)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v13 = [(BRCItemID *)self->_itemID debugItemIDString];
      v14 = [v4 st];
      v15 = [v14 ckInfo];
      v16 = [(BRCStatInfo *)self->_st ckInfo];
      v17 = 138413058;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v5;
      _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ has an out of band sync ack -- using client truth ckinfo %@ rather than server info %@%@", &v17, 0x2Au);
    }

    v7 = [v4 st];
    v8 = [v7 ckInfo];
    [(BRCStatInfo *)self->_st setCkInfo:v8];

    if ([v4 isDocument])
    {
      v9 = [v4 asDocument];
      v10 = [v9 currentVersion];
      v11 = [v10 ckInfo];
      [(BRCVersion *)self->_latestVersion setCkInfo:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)asSharedItem
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Called -asSharedItem on a private item%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initFromPQLResultSet:serverZone:error:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: !_serverZone.isSharedZone || (_sharingOptions & BRCSharingItemHasCKShareMask) != 0 || _st.state == BRC_ITEM_STATE_TOMBSTONE%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)appLibraryForRootItem
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)newLocalItemWithDBRowID:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 25);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)newLocalItemWithDBRowID:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 25);
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)parentLocalItemOnFS
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: [_dbFacade isKindOfClass:[BRCClientDatabaseFacade class]]%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end