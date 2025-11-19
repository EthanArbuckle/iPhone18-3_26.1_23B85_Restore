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
  v2 = [(BRCServerItem *)self parentItemIDOnServer];
  v3 = [v2 isSharedZoneRoot];

  return v3;
}

- (id)fallbackParentAppLibraryOnFS
{
  session = self->super._session;
  v4 = [(BRCServerItem *)self clientZone];
  v5 = [v4 asSharedClientZone];
  v6 = [(BRCSharedServerItem *)self st];
  v7 = [v6 logicalName];
  v8 = [v7 br_pathExtension];
  v9 = [v8 lowercaseString];
  v10 = [(BRCAccountSession *)session fallbackAppLibraryForClientZone:v5 extension:v9];

  return v10;
}

- (id)fallbackParentItemOnFS
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(BRCSharedServerItem *)self fallbackParentAppLibraryOnFS];
  v4 = [v3 defaultClientZone];
  v5 = [(BRCSharedServerItem *)self fallbackParentItemIDOnFS];
  v6 = [v4 itemByItemID:v5];

  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v16 = [(BRCSharedServerItem *)self fallbackParentItemIDOnFS];
      v17 = [v3 mangledID];
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 2112;
      v23 = v10;
      _os_log_fault_impl(&dword_223E7A000, v11, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't find %@ in %@%@", &v18, 0x20u);
    }

    v7 = [(BRCAccountSession *)self->super._session appLibraryByID:*MEMORY[0x277CFAD68]];

    v12 = [v7 defaultClientZone];
    v13 = [v7 documentsFolderItemID];
    v6 = [v12 itemByItemID:v13];

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
  v3 = [(BRCSharedServerItem *)self fallbackParentAppLibraryOnFS];
  db = self->super._db;
  v5 = [(BRCServerItem *)self session];
  v6 = [v5 clientDB];

  if (db == v6)
  {
    v7 = self->super._db;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__BRCSharedServerItem_fallbackParentItemIDOnFS__block_invoke;
    v10[3] = &unk_2784FFA48;
    v11 = v3;
    [(BRCPQLConnection *)v7 performWithFlags:4 action:v10];
  }

  v8 = [v3 documentsFolderItemID];

  return v8;
}

- (id)parentItemOnFS
{
  if ([(BRCSharedServerItem *)self isSharedToMeChildItem])
  {
    v3 = [(BRCServerItem *)self clientZone];
    v4 = [(BRCServerItem *)self parentItemIDOnServer];
    v5 = [v3 serverItemByItemID:v4];
LABEL_5:

    goto LABEL_6;
  }

  v6 = [(BRCAccountSession *)self->super._session itemFetcher];
  v3 = [v6 serverAliasItemForSharedItem:self];

  if (v3)
  {
    v4 = [v3 clientZone];
    v7 = [v3 itemID];
    v5 = [v4 serverItemByItemID:v7 dbFacade:self->super._dbFacade];

    goto LABEL_5;
  }

  v5 = [(BRCSharedServerItem *)self fallbackParentServerItemOnFS];
LABEL_6:

  return v5;
}

- (id)parentLocalItemOnFS
{
  if ([(BRCSharedServerItem *)self isSharedToMeChildItem])
  {
    v3 = [(BRCServerItem *)self clientZone];
    v4 = [(BRCServerItem *)self parentItemIDOnServer];
    v5 = [v3 itemByItemID:v4];
LABEL_7:

    goto LABEL_8;
  }

  v6 = [(BRCAccountSession *)self->super._session itemFetcher];
  v3 = [v6 serverAliasItemForSharedItem:self];

  if (v3)
  {
    dbFacade = self->super._dbFacade;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [BRCSharedServerItem parentLocalItemOnFS];
    }

    v4 = [v3 clientZone];
    v8 = [v3 parentItemIDOnFS];
    v5 = [v4 itemByItemID:v8 dbFacade:self->super._dbFacade];

    goto LABEL_7;
  }

  v5 = [(BRCSharedServerItem *)self fallbackParentItemOnFS];
LABEL_8:

  return v5;
}

- (id)aliasDerivedStructure
{
  v16.receiver = self;
  v16.super_class = BRCSharedServerItem;
  v3 = [(BRCServerItem *)&v16 st];
  if ([(BRCSharedServerItem *)self isSharedToMeTopLevelItem])
  {
    v4 = [(BRCAccountSession *)self->super._session itemFetcher];
    v5 = [v4 serverAliasItemForSharedItem:self dbFacade:self->super._dbFacade];

    v6 = [v3 copy];
    v7 = [v5 st];
    v8 = [v7 ckInfo];
    [v6 setCkInfo:v8];

    v9 = [v5 st];
    [v6 setLastUsedTime:{objc_msgSend(v9, "lastUsedTime")}];

    v10 = [v5 st];
    v11 = [v10 finderTags];
    [v6 setFinderTags:v11];

    v12 = [v5 st];
    [v6 setFavoriteRank:{objc_msgSend(v12, "favoriteRank")}];

    v13 = [v5 st];
    v14 = [v13 logicalName];

    if (v14)
    {
      [v6 setLogicalName:v14];
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
    v16 = [(BRCServerItem *)self itemID];
    *buf = 134218498;
    v19 = v15;
    v20 = 2112;
    v21 = v16;
    v22 = 2112;
    v23 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx computing the parent item id of %@%@", buf, 0x20u);
  }

  if ([(BRCSharedServerItem *)self isSharedToMeChildItem])
  {
    v5 = [(BRCServerItem *)self parentItemIDOnServer];
  }

  else
  {
    v6 = [(BRCAccountSession *)self->super._session itemFetcher];
    v7 = [v6 serverAliasItemForSharedItem:self dbFacade:self->super._dbFacade];

    if (v7)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(BRCSharedServerItem *)v7 parentItemIDOnFS];
      }

      v5 = [v7 parentItemIDOnFS];
    }

    else
    {
      v5 = [(BRCSharedServerItem *)self fallbackParentItemIDOnFS];
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = [v5 debugItemIDString];
        [(BRCSharedServerItem *)v12 parentItemIDOnFS:v10];
      }
    }
  }

  __brc_leave_section(v17);
  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)parentZoneOnFS
{
  if ([(BRCSharedServerItem *)self isSharedToMeChildItem])
  {
    v3 = [(BRCServerItem *)self serverZone];
  }

  else
  {
    v4 = [(BRCAccountSession *)self->super._session itemFetcher];
    v5 = [v4 serverAliasItemForSharedItem:self];

    if (v5)
    {
      v3 = [v5 serverZone];
    }

    else
    {
      v6 = [(BRCSharedServerItem *)self fallbackParentAppLibraryOnFS];
      v7 = [v6 defaultClientZone];
      v3 = [v7 serverZone];
    }
  }

  return v3;
}

@end