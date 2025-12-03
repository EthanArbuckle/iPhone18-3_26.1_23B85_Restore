@interface BRCServerItem
- (BOOL)aliasTargetIsShared;
- (BOOL)canPathMatchMergeWithLocalItem:(id)item;
- (BOOL)hasShareIDAndIsOwnedByMe;
- (BOOL)isDocument;
- (BOOL)isSharedByMe;
- (BOOL)isSharedToMeChildItem;
- (BOOL)isSharedToMeTopLevelItem;
- (BOOL)validateLoggingToFile:(__sFILE *)file;
- (BRCItemGlobalID)itemGlobalID;
- (BRCServerItem)initWithServerItem:(id)item;
- (BRCSharedServerItem)asSharedItem;
- (id)aliasTargetAppLibrary;
- (id)aliasTargetClientZone;
- (id)appLibraryForRootItem;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithContext:(id)context;
- (id)initFromPQLResultSet:(id)set serverZone:(id)zone error:(id *)error;
- (id)newLocalItemWithDBRowID:(unint64_t)d;
- (id)parentItemIDOnServer;
- (id)parentItemOnFS;
- (id)parentLocalItemOnFS;
- (id)predictedAppLibrary;
- (id)sideCarInfo;
- (unint64_t)diffAgainstServerItem:(id)item;
- (void)appLibraryForRootItem;
- (void)asSharedItem;
- (void)overrideCKInfoIfNecessaryForOutOfBandSyncOpWithLocalItem:(id)item;
- (void)parentLocalItemOnFS;
@end

@implementation BRCServerItem

- (BOOL)isDocument
{
  type = [(BRCStatInfo *)self->_st type];
  if (type != 1)
  {
    LOBYTE(type) = [(BRCStatInfo *)self->_st type]== 6;
  }

  return type;
}

- (id)parentItemIDOnServer
{
  itemID = [(BRCServerItem *)self itemID];
  if ([itemID isDocumentsFolder])
  {
    clientZone = [(BRCServerItem *)self clientZone];
    isCloudDocsZone = [clientZone isCloudDocsZone];

    if (isCloudDocsZone)
    {
      clientZone2 = [(BRCServerItem *)self clientZone];
      asPrivateClientZone = [clientZone2 asPrivateClientZone];
      rootItemID = [asPrivateClientZone rootItemID];

      goto LABEL_6;
    }
  }

  else
  {
  }

  rootItemID = [(BRCStatInfo *)self->_st parentID];
LABEL_6:

  return rootItemID;
}

- (BOOL)isSharedToMeTopLevelItem
{
  parentItemIDOnServer = [(BRCServerItem *)self parentItemIDOnServer];
  isSharedZoneRoot = [parentItemIDOnServer isSharedZoneRoot];

  return isSharedZoneRoot;
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
  parentID = [(BRCStatInfo *)self->_st parentID];
  v6 = [(BRCClientZone *)clientZone itemByItemID:parentID dbFacade:self->_dbFacade];

  return v6;
}

- (id)sideCarInfo
{
  v3 = objc_alloc_init(BRCSideCarInfo);
  [(BRCSideCarInfo *)v3 setFavoriteRank:[(BRCStatInfo *)self->_st favoriteRank]];
  [(BRCSideCarInfo *)v3 setLastUsedTime:[(BRCStatInfo *)self->_st lastUsedTime]];
  finderTags = [(BRCStatInfo *)self->_st finderTags];
  [(BRCSideCarInfo *)v3 setFinderTags:finderTags];

  [(BRCSideCarInfo *)v3 setCkInfo:self->_sideCarCKInfo];

  return v3;
}

- (id)predictedAppLibrary
{
  v17 = *MEMORY[0x277D85DE8];
  clientZone = [(BRCServerItem *)self clientZone];
  v4 = [clientZone db];
  [v4 assertOnQueue];

  parentLocalItemOnFS = [(BRCServerItem *)self parentLocalItemOnFS];
  appLibrary = [parentLocalItemOnFS appLibrary];
  dbRowID = [appLibrary dbRowID];

  if (!dbRowID)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Couldn't figure out the expected app library; falling back to clouddocs%@", &v15, 0xCu);
    }

    cloudDocsClientZone = [(BRCAccountSession *)self->_session cloudDocsClientZone];
    defaultAppLibrary = [cloudDocsClientZone defaultAppLibrary];
    dbRowID = [defaultAppLibrary dbRowID];
  }

  v12 = [(BRCAccountSession *)self->_session appLibraryByRowID:dbRowID];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isSharedByMe
{
  isShared = [(BRCServerItem *)self isShared];
  if (isShared)
  {
    LOBYTE(isShared) = ![(BRCClientZone *)self->_clientZone isSharedZone];
  }

  return isShared;
}

- (BOOL)hasShareIDAndIsOwnedByMe
{
  isOwnedByMe = [(BRCServerItem *)self isOwnedByMe];
  if (isOwnedByMe)
  {
    return (LOBYTE(self->_sharingOptions) >> 2) & 1;
  }

  return isOwnedByMe;
}

- (BOOL)isSharedToMeChildItem
{
  isSharedToMe = [(BRCServerItem *)self isSharedToMe];
  if (isSharedToMe)
  {
    LOBYTE(isSharedToMe) = ![(BRCServerItem *)self isSharedToMeTopLevelItem];
  }

  return isSharedToMe;
}

- (BRCItemGlobalID)itemGlobalID
{
  v3 = [BRCItemGlobalID alloc];
  dbRowID = [(BRCClientZone *)self->_clientZone dbRowID];
  v5 = [(BRCItemGlobalID *)v3 initWithZoneRowID:dbRowID itemID:self->_itemID];

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

- (BRCServerItem)initWithServerItem:(id)item
{
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = BRCServerItem;
  v5 = [(BRCServerItem *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_itemID, *(itemCopy + 10));
    objc_storeStrong(&v6->_ownerKey, *(itemCopy + 9));
    objc_storeStrong(&v6->_sideCarCKInfo, *(itemCopy + 6));
    v7 = [*(itemCopy + 13) copy];
    st = v6->_st;
    v6->_st = v7;

    v9 = [*(itemCopy + 14) copy];
    latestVersion = v6->_latestVersion;
    v6->_latestVersion = v9;

    v11 = [*(itemCopy + 15) copy];
    serverMetrics = v6->_serverMetrics;
    v6->_serverMetrics = v11;

    objc_storeStrong(&v6->_serverZone, *(itemCopy + 16));
    objc_storeStrong(&v6->_clientZone, *(itemCopy + 17));
    v6->_session = *(itemCopy + 1);
    v6->_sharingOptions = *(itemCopy + 3);
    v6->_pcsChainState = *(itemCopy + 15);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithServerItem:self];
}

- (id)initFromPQLResultSet:(id)set serverZone:(id)zone error:(id *)error
{
  setCopy = set;
  zoneCopy = zone;
  v35.receiver = self;
  v35.super_class = BRCServerItem;
  v9 = [(BRCServerItem *)&v35 init];
  if (v9)
  {
    v9->_session = [zoneCopy session];
    v10 = [setCopy db];
    db = v9->_db;
    v9->_db = v10;

    v12 = [(BRCAccountSession *)v9->_session getClientDBFacadeFromDB:v9->_db];
    dbFacade = v9->_dbFacade;
    v9->_dbFacade = v12;

    objc_storeStrong(&v9->_serverZone, zone);
    clientZone = [(BRCServerZone *)v9->_serverZone clientZone];
    clientZone = v9->_clientZone;
    v9->_clientZone = clientZone;

    v9->_rank = [setCopy longLongAtIndex:1];
    v16 = [setCopy stringAtIndex:2];
    originalName = v9->_originalName;
    v9->_originalName = v16;

    v9->_pcsChainState = [setCopy intAtIndex:3];
    v18 = [setCopy objectOfClass:objc_opt_class() atIndex:4];
    itemID = v9->_itemID;
    v9->_itemID = v18;

    v20 = [setCopy numberAtIndex:5];
    ownerKey = v9->_ownerKey;
    v9->_ownerKey = v20;

    v9->_sharingOptions = [setCopy integerAtIndex:6];
    v22 = [setCopy objectOfClass:objc_opt_class() atIndex:7];
    sideCarCKInfo = v9->_sideCarCKInfo;
    v9->_sideCarCKInfo = v22;

    v24 = [(BRCStatInfo *)[BRCServerStatInfo alloc] initFromResultSet:setCopy pos:8];
    st = v9->_st;
    v9->_st = v24;

    if ([(BRCServerZone *)v9->_serverZone isSharedZone]&& (v9->_sharingOptions & 0x48) == 0 && [(BRCStatInfo *)v9->_st state]!= 1)
    {
      [BRCServerItem initFromPQLResultSet:serverZone:error:];
    }

    if ([(BRCServerItem *)v9 isDocument])
    {
      v26 = [[BRCVersion alloc] initFromResultSet:setCopy pos:24];
      latestVersion = v9->_latestVersion;
      v9->_latestVersion = v26;

      if ([(BRCStatInfo *)v9->_st isExecutable]&& [(BRCVersion *)v9->_latestVersion isPackage])
      {
        v9->_st->super._mode &= ~2u;
      }
    }

    else if ([(BRCServerItem *)v9 isDirectory])
    {
      v9->_directoryMtime = [setCopy longLongAtIndex:26];
    }

    else if ([(BRCServerItem *)v9 isSymLink])
    {
      v28 = [setCopy objectOfClass:objc_opt_class() atIndex:24];
      symlinkTarget = v9->_symlinkTarget;
      v9->_symlinkTarget = v28;
    }

    v30 = [[BRCBasehashSaltInfo alloc] initFromResultSet:setCopy pos:36];
    basehashSaltInfo = v9->_basehashSaltInfo;
    v9->_basehashSaltInfo = v30;

    v32 = [objc_alloc(MEMORY[0x277CFAEC0]) initFromResultSet:setCopy pos:39];
    serverMetrics = v9->_serverMetrics;
    v9->_serverMetrics = v32;
  }

  return v9;
}

- (BOOL)validateLoggingToFile:(__sFILE *)file
{
  LODWORD(v5) = [(BRCStatInfo *)self->_st check:self->_itemID logToFile:file];
  latestVersion = self->_latestVersion;
  if (latestVersion)
  {
    if (v5)
    {
      LOBYTE(v5) = [(BRCVersion *)latestVersion check:self->_itemID logToFile:file];
    }

    if ([(BRCServerItem *)self isDirectory])
    {
      v5 = "item %s is a directory with a version\n";
LABEL_9:
      fprintf(file, v5, [(BRCItemID *)self->_itemID UTF8String]);
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

- (unint64_t)diffAgainstServerItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy[10];
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
  v11 = itemCopy[9];
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
  if (self->_sharingOptions != itemCopy[3])
  {
    v10 |= 0x40000000uLL;
  }

  v16 = itemCopy[6];
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
  v21 = [(BRCStatInfo *)self->_st diffAgainst:itemCopy[13]]| v10;
  if (-[BRCServerItem isDocument](self, "isDocument") && [itemCopy isDocument])
  {
    v21 |= [(BRCVersion *)self->_latestVersion diffAgainst:itemCopy[14]];
  }

  return v21;
}

- (id)descriptionWithContext:(id)context
{
  contextCopy = context;
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:128];
  if (contextCopy)
  {
    mangledID = [BRCDumpContext stringFromItemID:self->_itemID context:contextCopy];
    [v5 appendFormat:@"i:%@ ", mangledID];
  }

  else
  {
    mangledID = [(BRCClientZone *)self->_clientZone mangledID];
    debugItemIDString = [(BRCItemID *)self->_itemID debugItemIDString];
    [v5 appendFormat:@"i:%@:%@ ", mangledID, debugItemIDString];
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
    etag = [(BRFieldCKInfo *)sideCarCKInfo etag];
    [v5 appendFormat:@"ppm:%@ ", etag];
  }

  v11 = [(BRCStatInfo *)self->_st descriptionWithContext:contextCopy origName:self->_originalName];
  [v5 appendFormat:@"st{%@}", v11];

  if ([(BRCServerItem *)self isSharedToMeTopLevelItem])
  {
    asSharedItem = [(BRCServerItem *)self asSharedItem];
    aliasDerivedStructureForDescription = [asSharedItem aliasDerivedStructureForDescription];
    v14 = [aliasDerivedStructureForDescription descriptionWithContext:contextCopy origName:self->_originalName];
    [v5 appendFormat:@" alias-st{%@}", v14];
  }

  latestVersion = self->_latestVersion;
  if (latestVersion)
  {
    v16 = [(BRCVersion *)latestVersion descriptionWithContext:contextCopy];
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
    fp_obfuscatedPath = [(NSString *)self->_symlinkTarget fp_obfuscatedPath];
    [v5 appendFormat:@" target:%@", fp_obfuscatedPath];
  }

  v21 = [BRCUserDefaults defaultsForMangledID:0];
  supportsEnhancedDrivePrivacy = [v21 supportsEnhancedDrivePrivacy];

  if (supportsEnhancedDrivePrivacy)
  {
    if ([(BRCServerItem *)self isDirectory])
    {
      saltingState = [(BRCBasehashSaltInfo *)self->_basehashSaltInfo saltingState];
      if (saltingState > 3)
      {
        v24 = @"no server item";
      }

      else
      {
        v24 = off_278504608[saltingState];
      }

      [v5 appendFormat:@" salt-st{%@}", v24];
      childBasehashSalt = [(BRCBasehashSaltInfo *)self->_basehashSaltInfo childBasehashSalt];
      if (childBasehashSalt)
      {
        brc_generateBogusKey = [MEMORY[0x277CBEA90] brc_generateBogusKey];
        v27 = [childBasehashSalt isEqualToData:brc_generateBogusKey];

        if (v27)
        {
          brc_hexadecimalString = @"bogus-salt";
        }

        else
        {
          brc_truncatedSHA256 = [childBasehashSalt brc_truncatedSHA256];
          brc_hexadecimalString = [brc_truncatedSHA256 brc_hexadecimalString];
        }

        [v5 appendFormat:@" child-valid{%@}", brc_hexadecimalString];
      }
    }

    basehashSaltValidation = [(BRCBasehashSaltInfo *)self->_basehashSaltInfo basehashSaltValidation];
    v31 = basehashSaltValidation;
    if (basehashSaltValidation)
    {
      brc_hexadecimalString2 = [basehashSaltValidation brc_hexadecimalString];
      [v5 appendFormat:@" base-valid{%@}", brc_hexadecimalString2];
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
    appLibraryRowID = [(BRCItemID *)self->_itemID appLibraryRowID];
    v6 = [(BRCAccountSession *)session appLibraryByRowID:appLibraryRowID];
  }

  else
  {
    appLibraryRowID = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(BRCServerItem *)p_itemID appLibraryForRootItem];
    }

    v6 = 0;
  }

  return v6;
}

- (id)newLocalItemWithDBRowID:(unint64_t)d
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

  return [v14 _initWithServerItem:self dbRowID:d];
}

- (id)parentItemOnFS
{
  serverZone = self->_serverZone;
  parentID = [(BRCStatInfo *)self->_st parentID];
  v5 = [(BRCServerZone *)serverZone itemByItemID:parentID db:self->_db];

  return v5;
}

- (BOOL)aliasTargetIsShared
{
  _aliasTargetMangledID = [(BRCStatInfo *)self->_st _aliasTargetMangledID];
  isShared = [_aliasTargetMangledID isShared];

  return isShared;
}

- (id)aliasTargetClientZone
{
  session = self->_session;
  _aliasTargetMangledID = [(BRCStatInfo *)self->_st _aliasTargetMangledID];
  v4 = [(BRCAccountSession *)session clientZoneByMangledID:_aliasTargetMangledID];

  return v4;
}

- (id)aliasTargetAppLibrary
{
  session = self->_session;
  _aliasTargetMangledID = [(BRCStatInfo *)self->_st _aliasTargetMangledID];
  v4 = [(BRCAccountSession *)session appLibraryByMangledID:_aliasTargetMangledID];

  return v4;
}

- (BOOL)canPathMatchMergeWithLocalItem:(id)item
{
  st = self->_st;
  itemCopy = item;
  v5 = [BRCItemID structureRecordPrefixForItemType:[(BRCStatInfo *)st type] targetZoneShared:1];
  v6 = [itemCopy st];

  v7 = +[BRCItemID structureRecordPrefixForItemType:targetZoneShared:](BRCItemID, "structureRecordPrefixForItemType:targetZoneShared:", [v6 type], 1);

  LOBYTE(itemCopy) = [v5 isEqualToString:v7];
  return itemCopy;
}

- (void)overrideCKInfoIfNecessaryForOutOfBandSyncOpWithLocalItem:(id)item
{
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (([itemCopy localDiffs] & 0x1000000000000000) != 0)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      debugItemIDString = [(BRCItemID *)self->_itemID debugItemIDString];
      v14 = [itemCopy st];
      ckInfo = [v14 ckInfo];
      ckInfo2 = [(BRCStatInfo *)self->_st ckInfo];
      v17 = 138413058;
      v18 = debugItemIDString;
      v19 = 2112;
      v20 = ckInfo;
      v21 = 2112;
      v22 = ckInfo2;
      v23 = 2112;
      v24 = v5;
      _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ has an out of band sync ack -- using client truth ckinfo %@ rather than server info %@%@", &v17, 0x2Au);
    }

    v7 = [itemCopy st];
    ckInfo3 = [v7 ckInfo];
    [(BRCStatInfo *)self->_st setCkInfo:ckInfo3];

    if ([itemCopy isDocument])
    {
      asDocument = [itemCopy asDocument];
      currentVersion = [asDocument currentVersion];
      ckInfo4 = [currentVersion ckInfo];
      [(BRCVersion *)self->_latestVersion setCkInfo:ckInfo4];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)asSharedItem
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
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
  v7 = *self;
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