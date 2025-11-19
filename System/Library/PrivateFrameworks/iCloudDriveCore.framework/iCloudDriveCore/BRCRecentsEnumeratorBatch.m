@interface BRCRecentsEnumeratorBatch
- (BRCRecentsEnumeratorBatch)initWithBatchSize:(unint64_t)a3;
- (void)addDeletionOfFileObjectID:(id)a3 rank:(unint64_t)a4;
- (void)addIndexOfItem:(id)a3;
- (void)listItems:(id)a3;
- (void)setRank:(unint64_t)a3;
@end

@implementation BRCRecentsEnumeratorBatch

- (BRCRecentsEnumeratorBatch)initWithBatchSize:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = BRCRecentsEnumeratorBatch;
  v4 = [(BRCRecentsEnumeratorBatch *)&v10 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
    toIndexItems = v4->_toIndexItems;
    v4->_toIndexItems = v5;

    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
    deletedItemIDs = v4->_deletedItemIDs;
    v4->_deletedItemIDs = v7;
  }

  return v4;
}

- (void)addIndexOfItem:(id)a3
{
  v4 = a3;
  v5 = [BRCNotification notificationGatheredFromItem:v4];
  v6 = [v4 itemID];
  v7 = [v6 isDocumentsFolder];

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [v4 appLibrary];
  v9 = [v4 dbFacade];
  v10 = [v8 fetchRootItemWithFacade:v9];

  v11 = [BRCNotification notificationFromItem:v10];
  v12 = MEMORY[0x277CFAE98];
  v13 = [v4 appLibrary];
  v14 = [v13 containerMetadata];
  v15 = [v12 containerItemForContainer:v14 withRepresentativeItem:v11];

  v16 = [v15 asFileProviderItem];
  if (v16)
  {
    v17 = v16;
    [(NSFileProviderItem *)self->_toIndexItems addObject:v16];

LABEL_4:
    if ([v5 isDead])
    {
      v18 = [v5 fileObjectID];
      -[BRCRecentsEnumeratorBatch addDeletionOfFileObjectID:rank:](self, "addDeletionOfFileObjectID:rank:", v18, [v4 notifsRank]);
    }

    v10 = [v5 asFileProviderItem];
    if (v10)
    {
      [(NSFileProviderItem *)self->_toIndexItems addObject:v10];
      -[BRCRecentsEnumeratorBatch setRank:](self, "setRank:", [v4 notifsRank]);
    }

    goto LABEL_11;
  }

  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    [BRCRecentsEnumeratorBatch addIndexOfItem:];
  }

LABEL_11:
}

- (void)addDeletionOfFileObjectID:(id)a3 rank:(unint64_t)a4
{
  [(NSMutableArray *)self->_deletedItemIDs addObject:a3];

  [(BRCRecentsEnumeratorBatch *)self setRank:a4];
}

- (void)setRank:(unint64_t)a3
{
  if (self->_rank > a3)
  {
    [BRCRecentsEnumeratorBatch setRank:];
  }

  self->_rank = a3;
}

- (void)listItems:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, self->_toIndexItems, self->_deletedItemIDs);
  }
}

- (void)addIndexOfItem:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setRank:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: rank >= _rank%@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end