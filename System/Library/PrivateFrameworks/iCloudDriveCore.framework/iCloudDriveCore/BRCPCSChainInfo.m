@interface BRCPCSChainInfo
- (BRCPCSChainInfo)initWithItemID:(id)a3 parentID:(id)a4 structuralCKInfo:(id)a5 contentCKInfo:(id)a6 itemType:(char)a7 aliasTargetZoneIsShared:(BOOL)a8 chainState:(unsigned int)a9;
@end

@implementation BRCPCSChainInfo

- (BRCPCSChainInfo)initWithItemID:(id)a3 parentID:(id)a4 structuralCKInfo:(id)a5 contentCKInfo:(id)a6 itemType:(char)a7 aliasTargetZoneIsShared:(BOOL)a8 chainState:(unsigned int)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v22 = a6;
  v23.receiver = self;
  v23.super_class = BRCPCSChainInfo;
  v19 = [(BRCPCSChainInfo *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_itemID, a3);
    objc_storeStrong(&v20->_parentID, a4);
    v20->_itemType = a7;
    objc_storeStrong(&v20->_structuralCKInfo, a5);
    objc_storeStrong(&v20->_contentCKInfo, a6);
    v20->_chainState = a9;
    v20->_aliasTargetZoneIsShared = a8;
    if (!v16 || !v17)
    {
      [BRCPCSChainInfo initWithItemID:parentID:structuralCKInfo:contentCKInfo:itemType:aliasTargetZoneIsShared:chainState:];
    }
  }

  return v20;
}

- (void)initWithItemID:parentID:structuralCKInfo:contentCKInfo:itemType:aliasTargetZoneIsShared:chainState:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: itemID && parentID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end