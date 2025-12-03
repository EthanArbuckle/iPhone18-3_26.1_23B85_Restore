@interface BRCPCSChainEnumerator
- (BRCPCSChainEnumerator)initWithPCSChainInfo:(id)info clientZone:(id)zone;
- (id)nextObject;
- (void)nextObject;
@end

@implementation BRCPCSChainEnumerator

- (BRCPCSChainEnumerator)initWithPCSChainInfo:(id)info clientZone:(id)zone
{
  infoCopy = info;
  zoneCopy = zone;
  v18.receiver = self;
  v18.super_class = BRCPCSChainEnumerator;
  v8 = [(BRCPCSChainEnumerator *)&v18 init];
  if (v8)
  {
    mangledID = [zoneCopy mangledID];
    v10 = [BRCUserDefaults defaultsForMangledID:mangledID];
    *(v8 + 1) = [v10 pcsChainingMaxPathDepth];

    objc_storeStrong(v8 + 2, zone);
    v11 = objc_opt_new();
    v12 = *(v8 + 3);
    *(v8 + 3) = v11;

    if ([infoCopy itemType] == 9)
    {
      itemID = [infoCopy itemID];
      v14 = *(v8 + 5);
      *(v8 + 5) = itemID;

      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [BRCPCSChainEnumerator initWithPCSChainInfo:? clientZone:?];
      }
    }

    else
    {
      v15 = [[BRCPCSChainBreadthEnumerator alloc] initWithPCSChainInfo:infoCopy clientZone:zoneCopy];
      [*(v8 + 3) addObject:v15];
    }
  }

  return v8;
}

- (id)nextObject
{
  v28 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_stack count])
  {
    *&v3 = 138412546;
    v23 = v3;
    while (1)
    {
      lastObject = [(NSMutableArray *)self->_stack lastObject];
      nextObject = [lastObject nextObject];
      v6 = nextObject;
      if (!nextObject)
      {
        v12 = brc_bread_crumbs();
        v13 = brc_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [(BRCPCSChainEnumerator *)lastObject nextObject];
        }

        [(NSMutableArray *)self->_stack removeLastObject];
        chainInfo = [lastObject chainInfo];
        goto LABEL_20;
      }

      if ([nextObject itemType] == 9)
      {
        v15 = brc_bread_crumbs();
        v16 = brc_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [(BRCPCSChainEnumerator *)v6 nextObject];
        }

        itemID = [v6 itemID];
        v18 = 40;
        goto LABEL_22;
      }

      if ([v6 itemType])
      {
        itemID2 = [v6 itemID];

        if (!itemID2)
        {
          [BRCPCSChainEnumerator nextObject];
        }

        chainInfo = v6;
LABEL_20:
        v11 = chainInfo;
        goto LABEL_23;
      }

      if ([(NSMutableArray *)self->_stack count]>= self->_maxPathDepth)
      {
        break;
      }

      v7 = brc_bread_crumbs();
      v8 = brc_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        itemID3 = [v6 itemID];
        *buf = v23;
        v25 = itemID3;
        v26 = 2112;
        v27 = v7;
        _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Enumerating pcs under new directory %@%@", buf, 0x16u);
      }

      v9 = [[BRCPCSChainBreadthEnumerator alloc] initWithPCSChainInfo:v6 clientZone:self->_clientZone];
      [(NSMutableArray *)self->_stack addObject:v9];

      if (![(NSMutableArray *)self->_stack count])
      {
        goto LABEL_10;
      }
    }

    itemID = [MEMORY[0x277CCA9B8] brc_errorFolderHierarchyTooDeep];
    v18 = 32;
LABEL_22:
    v20 = *(&self->super.super.isa + v18);
    *(&self->super.super.isa + v18) = itemID;

    v11 = 0;
LABEL_23:
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)initWithPCSChainInfo:(uint64_t *)a1 clientZone:.cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_8(v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)nextObject
{
  v11 = *MEMORY[0x277D85DE8];
  chainInfo = [self chainInfo];
  itemID = [chainInfo itemID];
  OUTLINED_FUNCTION_1_0();
  v10 = a2;
  OUTLINED_FUNCTION_8(&dword_223E7A000, a3, v7, "[DEBUG] Finished enumerating pcs under directory %@%@", v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end