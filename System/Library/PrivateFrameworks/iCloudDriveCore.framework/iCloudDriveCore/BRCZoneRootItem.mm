@interface BRCZoneRootItem
- (BOOL)isDirectoryFault;
- (BOOL)isUserVisible;
- (BOOL)saveToDB;
- (BRCZoneRootItem)initWithZoneRootItemID:(id)a3 session:(id)a4;
- (id)parentItemID;
- (id)parentItemOnFS;
- (id)st;
- (unsigned)itemScope;
- (void)parentItemID;
- (void)parentItemOnFS;
- (void)saveToDB;
- (void)st;
@end

@implementation BRCZoneRootItem

- (BRCZoneRootItem)initWithZoneRootItemID:(id)a3 session:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = BRCZoneRootItem;
  v9 = [(BRCZoneRootItem *)&v18 init];
  if (!v9)
  {
LABEL_11:
    v12 = v9;
    goto LABEL_12;
  }

  if (([v7 isNonDesktopRoot] & 1) == 0)
  {
    [BRCZoneRootItem initWithZoneRootItemID:session:];
  }

  objc_storeStrong(&v9->super.super._itemID, a3);
  v9->super.super._session = v8;
  if (![v7 isSharedZoneRoot])
  {
    v13 = [v7 appLibraryRowID];
    v14 = [(BRCAccountSession *)v8 appLibraryByRowID:v13];

    if (!v14)
    {
      [BRCZoneRootItem initWithZoneRootItemID:session:];
    }

    [(BRCLocalItem *)v9 setAppLibrary:v14];
    v15 = [v14 defaultClientZone];
    clientZone = v9->super.super._clientZone;
    v9->super.super._clientZone = v15;

    v9->super.super._serverZone = [(BRCClientZone *)v9->super.super._clientZone serverZone];
    goto LABEL_11;
  }

  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    [BRCZoneRootItem initWithZoneRootItemID:session:];
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (BOOL)isDirectoryFault
{
  v2 = [(BRCLocalItem *)self appLibrary];
  v3 = ([v2 state] & 0x2000000) == 0;

  return v3;
}

- (BOOL)saveToDB
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRCZoneRootItem saveToDB];
  }

  return 0;
}

- (id)parentItemOnFS
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [BRCZoneRootItem parentItemOnFS];
  }

  return 0;
}

- (id)parentItemID
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [BRCZoneRootItem parentItemID];
  }

  v5 = [(BRCLocalItem *)self itemID];

  return v5;
}

- (id)st
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [BRCZoneRootItem st];
  }

  v7.receiver = self;
  v7.super_class = BRCZoneRootItem;
  v5 = [(BRCLocalItem *)&v7 st];

  return v5;
}

- (BOOL)isUserVisible
{
  v2 = [(BRCLocalItem *)self appLibrary];
  v3 = [v2 includesDataScope];

  return v3 ^ 1;
}

- (unsigned)itemScope
{
  v2 = [(BRCLocalItem *)self appLibrary];
  v3 = [v2 includesDataScope];

  if (v3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)initWithZoneRootItemID:session:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: itemID.isNonDesktopRoot%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithZoneRootItemID:session:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: appLibrary%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithZoneRootItemID:session:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Constructing shared zone root item for itemID %@ is not supported%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)saveToDB
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] API MISUSE: can't save a zone root item%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)parentItemOnFS
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: asking the parent item of a root item%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)parentItemID
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: asking the parent item ID of a root item%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)st
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: asking the structural bit of a zone root is not supported%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end