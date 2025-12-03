@interface BRCSharedServerItem
- (BOOL)isSharedToMeTopLevelItem;
- (id)aliasDerivedStructure;
- (id)fallbackParentAppLibraryOnFS;
- (id)fallbackParentItemIDOnFS;
- (id)fallbackParentItemOnFS;
- (id)originalSt;
- (id)parentItemIDOnFS;
- (id)parentItemOnFS;
- (id)parentLocalItemOnFS;
- (id)parentZoneOnFS;
@end

@implementation BRCSharedServerItem

- (BOOL)isSharedToMeTopLevelItem
{
  parentItemIDOnServer = [(BRCServerItem *)self parentItemIDOnServer];
  isSharedZoneRoot = [parentItemIDOnServer isSharedZoneRoot];

  return isSharedZoneRoot;
}

- (id)fallbackParentAppLibraryOnFS
{
  session = self->super._session;
  clientZone = [(BRCServerItem *)self clientZone];
  asSharedClientZone = [clientZone asSharedClientZone];
  v6 = [(BRCSharedServerItem *)self st];
  logicalName = [v6 logicalName];
  br_pathExtension = [logicalName br_pathExtension];
  lowercaseString = [br_pathExtension lowercaseString];
  v10 = [(BRCAccountSession *)session fallbackAppLibraryForClientZone:asSharedClientZone extension:lowercaseString];

  return v10;
}

- (id)fallbackParentItemOnFS
{
  v24 = *MEMORY[0x277D85DE8];
  fallbackParentAppLibraryOnFS = [(BRCSharedServerItem *)self fallbackParentAppLibraryOnFS];
  defaultClientZone = [fallbackParentAppLibraryOnFS defaultClientZone];
  fallbackParentItemIDOnFS = [(BRCSharedServerItem *)self fallbackParentItemIDOnFS];
  v6 = [defaultClientZone itemByItemID:fallbackParentItemIDOnFS];

  if (v6)
  {
    v7 = fallbackParentAppLibraryOnFS;
  }

  else
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      fallbackParentItemIDOnFS2 = [(BRCSharedServerItem *)self fallbackParentItemIDOnFS];
      mangledID = [fallbackParentAppLibraryOnFS mangledID];
      v18 = 138412802;
      v19 = fallbackParentItemIDOnFS2;
      v20 = 2112;
      v21 = mangledID;
      v22 = 2112;
      v23 = v10;
      _os_log_fault_impl(&dword_223E7A000, v11, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't find %@ in %@%@", &v18, 0x20u);
    }

    v7 = [(BRCAccountSession *)self->super._session appLibraryByID:*MEMORY[0x277CFAD68]];

    defaultClientZone2 = [v7 defaultClientZone];
    documentsFolderItemID = [v7 documentsFolderItemID];
    v6 = [defaultClientZone2 itemByItemID:documentsFolderItemID];

    if (!v6)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [(BRCSharedServerItem *)v14 fallbackParentItemOnFS];
      }

      v6 = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)fallbackParentItemIDOnFS
{
  fallbackParentAppLibraryOnFS = [(BRCSharedServerItem *)self fallbackParentAppLibraryOnFS];
  db = self->super._db;
  session = [(BRCServerItem *)self session];
  clientDB = [session clientDB];

  if (db == clientDB)
  {
    v7 = self->super._db;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__BRCSharedServerItem_fallbackParentItemIDOnFS__block_invoke;
    v10[3] = &unk_2784FFA48;
    v11 = fallbackParentAppLibraryOnFS;
    [(BRCPQLConnection *)v7 performWithFlags:4 action:v10];
  }

  documentsFolderItemID = [fallbackParentAppLibraryOnFS documentsFolderItemID];

  return documentsFolderItemID;
}

- (id)parentItemOnFS
{
  if ([(BRCSharedServerItem *)self isSharedToMeChildItem])
  {
    clientZone = [(BRCServerItem *)self clientZone];
    parentItemIDOnServer = [(BRCServerItem *)self parentItemIDOnServer];
    fallbackParentServerItemOnFS = [clientZone serverItemByItemID:parentItemIDOnServer];
LABEL_5:

    goto LABEL_6;
  }

  itemFetcher = [(BRCAccountSession *)self->super._session itemFetcher];
  clientZone = [itemFetcher serverAliasItemForSharedItem:self];

  if (clientZone)
  {
    parentItemIDOnServer = [clientZone clientZone];
    itemID = [clientZone itemID];
    fallbackParentServerItemOnFS = [parentItemIDOnServer serverItemByItemID:itemID dbFacade:self->super._dbFacade];

    goto LABEL_5;
  }

  fallbackParentServerItemOnFS = [(BRCSharedServerItem *)self fallbackParentServerItemOnFS];
LABEL_6:

  return fallbackParentServerItemOnFS;
}

- (id)parentLocalItemOnFS
{
  if ([(BRCSharedServerItem *)self isSharedToMeChildItem])
  {
    clientZone = [(BRCServerItem *)self clientZone];
    parentItemIDOnServer = [(BRCServerItem *)self parentItemIDOnServer];
    fallbackParentItemOnFS = [clientZone itemByItemID:parentItemIDOnServer];
LABEL_7:

    goto LABEL_8;
  }

  itemFetcher = [(BRCAccountSession *)self->super._session itemFetcher];
  clientZone = [itemFetcher serverAliasItemForSharedItem:self];

  if (clientZone)
  {
    dbFacade = self->super._dbFacade;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [BRCSharedServerItem parentLocalItemOnFS];
    }

    parentItemIDOnServer = [clientZone clientZone];
    parentItemIDOnFS = [clientZone parentItemIDOnFS];
    fallbackParentItemOnFS = [parentItemIDOnServer itemByItemID:parentItemIDOnFS dbFacade:self->super._dbFacade];

    goto LABEL_7;
  }

  fallbackParentItemOnFS = [(BRCSharedServerItem *)self fallbackParentItemOnFS];
LABEL_8:

  return fallbackParentItemOnFS;
}

- (id)aliasDerivedStructure
{
  v16.receiver = self;
  v16.super_class = BRCSharedServerItem;
  v3 = [(BRCServerItem *)&v16 st];
  if ([(BRCSharedServerItem *)self isSharedToMeTopLevelItem])
  {
    itemFetcher = [(BRCAccountSession *)self->super._session itemFetcher];
    v5 = [itemFetcher serverAliasItemForSharedItem:self dbFacade:self->super._dbFacade];

    v6 = [v3 copy];
    v7 = [v5 st];
    ckInfo = [v7 ckInfo];
    [v6 setCkInfo:ckInfo];

    v9 = [v5 st];
    [v6 setLastUsedTime:{objc_msgSend(v9, "lastUsedTime")}];

    v10 = [v5 st];
    finderTags = [v10 finderTags];
    [v6 setFinderTags:finderTags];

    v12 = [v5 st];
    [v6 setFavoriteRank:{objc_msgSend(v12, "favoriteRank")}];

    v13 = [v5 st];
    logicalName = [v13 logicalName];

    if (logicalName)
    {
      [v6 setLogicalName:logicalName];
    }

    objc_storeStrong(&self->_aliasDerivedStructureForDescription, v6);
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)originalSt
{
  v4.receiver = self;
  v4.super_class = BRCSharedServerItem;
  v2 = [(BRCServerItem *)&v4 st];

  return v2;
}

- (id)parentItemIDOnFS
{
  v24 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  __brc_create_section(0, "[BRCSharedServerItem parentItemIDOnFS]", 153, 0, v17);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v15 = v17[0];
    itemID = [(BRCServerItem *)self itemID];
    *buf = 134218498;
    v19 = v15;
    v20 = 2112;
    v21 = itemID;
    v22 = 2112;
    v23 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx computing the parent item id of %@%@", buf, 0x20u);
  }

  if ([(BRCSharedServerItem *)self isSharedToMeChildItem])
  {
    parentItemIDOnServer = [(BRCServerItem *)self parentItemIDOnServer];
  }

  else
  {
    itemFetcher = [(BRCAccountSession *)self->super._session itemFetcher];
    v7 = [itemFetcher serverAliasItemForSharedItem:self dbFacade:self->super._dbFacade];

    if (v7)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(BRCSharedServerItem *)v7 parentItemIDOnFS];
      }

      parentItemIDOnServer = [v7 parentItemIDOnFS];
    }

    else
    {
      parentItemIDOnServer = [(BRCSharedServerItem *)self fallbackParentItemIDOnFS];
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        debugItemIDString = [parentItemIDOnServer debugItemIDString];
        [(BRCSharedServerItem *)debugItemIDString parentItemIDOnFS:v10];
      }
    }
  }

  __brc_leave_section(v17);
  v13 = *MEMORY[0x277D85DE8];

  return parentItemIDOnServer;
}

- (id)parentZoneOnFS
{
  if ([(BRCSharedServerItem *)self isSharedToMeChildItem])
  {
    serverZone = [(BRCServerItem *)self serverZone];
  }

  else
  {
    itemFetcher = [(BRCAccountSession *)self->super._session itemFetcher];
    v5 = [itemFetcher serverAliasItemForSharedItem:self];

    if (v5)
    {
      serverZone = [v5 serverZone];
    }

    else
    {
      fallbackParentAppLibraryOnFS = [(BRCSharedServerItem *)self fallbackParentAppLibraryOnFS];
      defaultClientZone = [fallbackParentAppLibraryOnFS defaultClientZone];
      serverZone = [defaultClientZone serverZone];
    }
  }

  return serverZone;
}

@end