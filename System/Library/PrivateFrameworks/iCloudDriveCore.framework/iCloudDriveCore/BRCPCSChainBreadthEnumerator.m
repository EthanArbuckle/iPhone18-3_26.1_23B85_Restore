@interface BRCPCSChainBreadthEnumerator
- (BRCPCSChainBreadthEnumerator)initWithPCSChainInfo:(id)a3 clientZone:(id)a4;
- (id)nextObject;
- (void)dealloc;
- (void)nextObject;
@end

@implementation BRCPCSChainBreadthEnumerator

- (BRCPCSChainBreadthEnumerator)initWithPCSChainInfo:(id)a3 clientZone:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = BRCPCSChainBreadthEnumerator;
  v9 = [(BRCPCSChainBreadthEnumerator *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_chainInfo, a3);
    v11 = [(BRCPCSChainInfo *)v10->_chainInfo itemID];
    v12 = [v8 unchainedItemInfoInServerTruthEnumeratorParentedTo:v11];
    enumerator = v10->_enumerator;
    v10->_enumerator = v12;
  }

  return v10;
}

- (id)nextObject
{
  v3 = [(PQLEnumeration *)self->_enumerator nextObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 itemID];

    if (!v5)
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