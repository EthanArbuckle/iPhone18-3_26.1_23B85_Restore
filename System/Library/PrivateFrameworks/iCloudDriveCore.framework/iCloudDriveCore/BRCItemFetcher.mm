@interface BRCItemFetcher
- (BRCItemFetcher)initWithSessionContext:(id)context localItemBuilder:(id)builder serverItemBuilder:(id)itemBuilder;
- (id)itemByFileObjectID:(id)d dbFacade:(id)facade;
- (id)itemByItemGlobalID:(id)d dbFacade:(id)facade;
- (id)localAliasForSharedItem:(id)item inZone:(id)zone;
- (id)serverAliasItemForSharedItem:(id)item dbFacade:(id)facade;
- (id)serverAliasItemForSharedItem:(id)item inZone:(id)zone dbFacade:(id)facade;
@end

@implementation BRCItemFetcher

- (BRCItemFetcher)initWithSessionContext:(id)context localItemBuilder:(id)builder serverItemBuilder:(id)itemBuilder
{
  contextCopy = context;
  builderCopy = builder;
  itemBuilderCopy = itemBuilder;
  v19.receiver = self;
  v19.super_class = BRCItemFetcher;
  v11 = [(BRCItemFetcher *)&v19 init];
  if (v11)
  {
    zoneAppRetriever = [contextCopy zoneAppRetriever];
    zoneAppRetriever = v11->_zoneAppRetriever;
    v11->_zoneAppRetriever = zoneAppRetriever;

    clientReadWriteDatabaseFacade = [contextCopy clientReadWriteDatabaseFacade];
    defaultClientDBFacade = v11->_defaultClientDBFacade;
    v11->_defaultClientDBFacade = clientReadWriteDatabaseFacade;

    serverReadWriteDatabaseFacade = [contextCopy serverReadWriteDatabaseFacade];
    defaultServerDBFacade = v11->_defaultServerDBFacade;
    v11->_defaultServerDBFacade = serverReadWriteDatabaseFacade;

    objc_storeStrong(&v11->_localItemBuilder, builder);
    objc_storeStrong(&v11->_serverItemBuilder, itemBuilder);
  }

  return v11;
}

- (id)itemByFileObjectID:(id)d dbFacade:(id)facade
{
  dCopy = d;
  facadeCopy = facade;
  if (!dCopy)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(BRCItemFetcher *)v14 itemByFileObjectID:v15 dbFacade:v16, v17, v18, v19, v20, v21];
    }

LABEL_15:

    v13 = 0;
    goto LABEL_16;
  }

  type = [dCopy type];
  rawID = [dCopy rawID];
  if (type <= 3)
  {
    if (type)
    {
      if (type == 1)
      {
        zoneAppRetriever = self->_zoneAppRetriever;
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:rawID];
        v12 = [(BRCZoneAppRetriever *)zoneAppRetriever appLibraryByRowID:v11];

        v13 = [v12 fetchRootItemWithFacade:facadeCopy];

        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(BRCItemFetcher *)v14 itemByFileObjectID:v15 dbFacade:v28, v29, v30, v31, v32, v33];
    }

    goto LABEL_15;
  }

  if (type != 4)
  {
    if (type != 5)
    {
LABEL_12:
      v13 = [(BRCItemFetcher *)self itemByRowID:rawID dbFacade:facadeCopy];
      goto LABEL_16;
    }

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(BRCItemFetcher *)v14 itemByFileObjectID:v15 dbFacade:v22, v23, v24, v25, v26, v27];
    }

    goto LABEL_15;
  }

  v35 = self->_zoneAppRetriever;
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:rawID];
  v37 = [(BRCZoneAppRetriever *)v35 appLibraryByRowID:v36];

  if (([v37 includesDataScope] & 1) == 0)
  {
    [BRCItemFetcher itemByFileObjectID:dbFacade:];
  }

  v13 = [v37 fetchDocumentsDirectoryItemWithFacade:facadeCopy];

LABEL_16:

  return v13;
}

- (id)localAliasForSharedItem:(id)item inZone:(id)zone
{
  zoneCopy = zone;
  itemCopy = item;
  serverZone = [itemCopy serverZone];
  isSharedZone = [serverZone isSharedZone];

  if ((isSharedZone & 1) == 0)
  {
    [BRCItemFetcher localAliasForSharedItem:inZone:];
  }

  v10 = MEMORY[0x277CCACA8];
  itemID = [itemCopy itemID];
  itemIDString = [itemID itemIDString];
  serverZone2 = [itemCopy serverZone];

  mangledID = [serverZone2 mangledID];
  v15 = [v10 unsaltedBookmarkDataWithItemResolutionString:itemIDString serverZoneMangledID:mangledID];

  v16 = [(BRCClientDatabaseFacade *)self->_defaultClientDBFacade localAliasForItemWithBookmarkData:v15 inZone:zoneCopy itemBuilder:self->_localItemBuilder];

  return v16;
}

- (id)itemByItemGlobalID:(id)d dbFacade:(id)facade
{
  dCopy = d;
  facadeCopy = facade;
  itemID = [dCopy itemID];
  isNonDesktopRoot = [itemID isNonDesktopRoot];

  if (isNonDesktopRoot)
  {
    localItemBuilder = self->_localItemBuilder;
    itemID2 = [dCopy itemID];
    v12 = [(BRCLocalItemBuilder *)localItemBuilder newZoneRootWithItemID:itemID2];
LABEL_5:
    v16 = v12;
    goto LABEL_6;
  }

  zoneAppRetriever = self->_zoneAppRetriever;
  zoneRowID = [dCopy zoneRowID];
  v15 = [(BRCZoneAppRetriever *)zoneAppRetriever serverZoneByRowID:zoneRowID];
  itemID2 = [v15 clientZone];

  if (itemID2)
  {
    v12 = [facadeCopy localItemByItemGlobalID:dCopy itemBuilder:self->_localItemBuilder];
    goto LABEL_5;
  }

  v16 = 0;
LABEL_6:

  return v16;
}

- (id)serverAliasItemForSharedItem:(id)item inZone:(id)zone dbFacade:(id)facade
{
  facadeCopy = facade;
  zoneCopy = zone;
  itemCopy = item;
  serverZone = [itemCopy serverZone];
  isSharedZone = [serverZone isSharedZone];

  if ((isSharedZone & 1) == 0)
  {
    [BRCItemFetcher serverAliasItemForSharedItem:inZone:dbFacade:];
  }

  v13 = MEMORY[0x277CCACA8];
  itemID = [itemCopy itemID];
  itemIDString = [itemID itemIDString];
  serverZone2 = [itemCopy serverZone];

  mangledID = [serverZone2 mangledID];
  v18 = [v13 unsaltedBookmarkDataWithItemResolutionString:itemIDString serverZoneMangledID:mangledID];

  v19 = [facadeCopy serverAliasItemForItemWithBookmarkData:v18 inZone:zoneCopy itemBuilder:self->_serverItemBuilder];

  return v19;
}

- (id)serverAliasItemForSharedItem:(id)item dbFacade:(id)facade
{
  itemCopy = item;
  facadeCopy = facade;
  zoneAppRetriever = self->_zoneAppRetriever;
  clientZone = [itemCopy clientZone];
  zoneName = [clientZone zoneName];
  v11 = [(BRCZoneAppRetriever *)zoneAppRetriever privateClientZoneByID:zoneName];

  if (!v11 || ([v11 serverZone], v12 = objc_claimAutoreleasedReturnValue(), -[BRCItemFetcher serverAliasItemForSharedItem:inZone:dbFacade:](self, "serverAliasItemForSharedItem:inZone:dbFacade:", itemCopy, v12, facadeCopy), v13 = objc_claimAutoreleasedReturnValue(), v12, !v13))
  {
    v13 = [(BRCItemFetcher *)self serverAliasItemForSharedItem:itemCopy inZone:0 dbFacade:facadeCopy];
  }

  return v13;
}

- (void)itemByFileObjectID:dbFacade:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: appLibrary.includesDataScope%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)itemByFileObjectID:(uint64_t)a3 dbFacade:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, a2, a3, "[CRIT] UNREACHABLE: There is no local item for BRFileObjectIDTypeRootContainer%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)itemByFileObjectID:(uint64_t)a3 dbFacade:(uint64_t)a4 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, a2, a3, "[CRIT] UNREACHABLE: fileobjectID has an invalid type%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)itemByFileObjectID:(uint64_t)a3 dbFacade:(uint64_t)a4 .cold.4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, a2, a3, "[CRIT] UNREACHABLE: Can't compute a BRCLocalItem for a nil BRFileObjectID%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)localAliasForSharedItem:inZone:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: item.serverZone.isSharedZone%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)serverAliasItemForSharedItem:inZone:dbFacade:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: item.serverZone.isSharedZone%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end