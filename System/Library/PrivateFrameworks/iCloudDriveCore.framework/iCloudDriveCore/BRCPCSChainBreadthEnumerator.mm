@interface BRCPCSChainBreadthEnumerator
- (BRCPCSChainBreadthEnumerator)initWithPCSChainInfo:(id)info clientZone:(id)zone;
- (id)nextObject;
- (void)dealloc;
- (void)nextObject;
@end

@implementation BRCPCSChainBreadthEnumerator

- (BRCPCSChainBreadthEnumerator)initWithPCSChainInfo:(id)info clientZone:(id)zone
{
  infoCopy = info;
  zoneCopy = zone;
  v15.receiver = self;
  v15.super_class = BRCPCSChainBreadthEnumerator;
  v9 = [(BRCPCSChainBreadthEnumerator *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_chainInfo, info);
    itemID = [(BRCPCSChainInfo *)v10->_chainInfo itemID];
    v12 = [zoneCopy unchainedItemInfoInServerTruthEnumeratorParentedTo:itemID];
    enumerator = v10->_enumerator;
    v10->_enumerator = v12;
  }

  return v10;
}

- (id)nextObject
{
  nextObject = [(PQLEnumeration *)self->_enumerator nextObject];
  v4 = nextObject;
  if (nextObject)
  {
    itemID = [nextObject itemID];

    if (!itemID)
    {
      [BRCPCSChainBreadthEnumerator nextObject];
    }
  }

  else
  {
    enumerator = self->_enumerator;
    self->_enumerator = 0;
  }

  return v4;
}

- (void)dealloc
{
  [(PQLEnumeration *)self->_enumerator close];
  v3.receiver = self;
  v3.super_class = BRCPCSChainBreadthEnumerator;
  [(BRCPCSChainBreadthEnumerator *)&v3 dealloc];
}

- (void)nextObject
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: info.itemID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end