@interface BRCPCSChainInfo
- (BRCPCSChainInfo)initWithItemID:(id)d parentID:(id)iD structuralCKInfo:(id)info contentCKInfo:(id)kInfo itemType:(char)type aliasTargetZoneIsShared:(BOOL)shared chainState:(unsigned int)state;
@end

@implementation BRCPCSChainInfo

- (BRCPCSChainInfo)initWithItemID:(id)d parentID:(id)iD structuralCKInfo:(id)info contentCKInfo:(id)kInfo itemType:(char)type aliasTargetZoneIsShared:(BOOL)shared chainState:(unsigned int)state
{
  dCopy = d;
  iDCopy = iD;
  infoCopy = info;
  kInfoCopy = kInfo;
  v23.receiver = self;
  v23.super_class = BRCPCSChainInfo;
  v19 = [(BRCPCSChainInfo *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_itemID, d);
    objc_storeStrong(&v20->_parentID, iD);
    v20->_itemType = type;
    objc_storeStrong(&v20->_structuralCKInfo, info);
    objc_storeStrong(&v20->_contentCKInfo, kInfo);
    v20->_chainState = state;
    v20->_aliasTargetZoneIsShared = shared;
    if (!dCopy || !iDCopy)
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