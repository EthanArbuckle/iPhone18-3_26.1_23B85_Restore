@interface BRCRecentsEnumeratorBatch
- (BRCRecentsEnumeratorBatch)initWithBatchSize:(unint64_t)size;
- (void)addDeletionOfFileObjectID:(id)d rank:(unint64_t)rank;
- (void)addIndexOfItem:(id)item;
- (void)listItems:(id)items;
- (void)setRank:(unint64_t)rank;
@end

@implementation BRCRecentsEnumeratorBatch

- (BRCRecentsEnumeratorBatch)initWithBatchSize:(unint64_t)size
{
  v10.receiver = self;
  v10.super_class = BRCRecentsEnumeratorBatch;
  v4 = [(BRCRecentsEnumeratorBatch *)&v10 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:size];
    toIndexItems = v4->_toIndexItems;
    v4->_toIndexItems = v5;

    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:size];
    deletedItemIDs = v4->_deletedItemIDs;
    v4->_deletedItemIDs = v7;
  }

  return v4;
}

- (void)addIndexOfItem:(id)item
{
  itemCopy = item;
  v5 = [BRCNotification notificationGatheredFromItem:itemCopy];
  itemID = [itemCopy itemID];
  isDocumentsFolder = [itemID isDocumentsFolder];

  if (!isDocumentsFolder)
  {
    goto LABEL_4;
  }

  appLibrary = [itemCopy appLibrary];
  dbFacade = [itemCopy dbFacade];
  asFileProviderItem2 = [appLibrary fetchRootItemWithFacade:dbFacade];

  v11 = [BRCNotification notificationFromItem:asFileProviderItem2];
  v12 = MEMORY[0x277CFAE98];
  appLibrary2 = [itemCopy appLibrary];
  containerMetadata = [appLibrary2 containerMetadata];
  v15 = [v12 containerItemForContainer:containerMetadata withRepresentativeItem:v11];

  asFileProviderItem = [v15 asFileProviderItem];
  if (asFileProviderItem)
  {
    v17 = asFileProviderItem;
    [(NSFileProviderItem *)self->_toIndexItems addObject:asFileProviderItem];

LABEL_4:
    if ([v5 isDead])
    {
      fileObjectID = [v5 fileObjectID];
      -[BRCRecentsEnumeratorBatch addDeletionOfFileObjectID:rank:](self, "addDeletionOfFileObjectID:rank:", fileObjectID, [itemCopy notifsRank]);
    }

    asFileProviderItem2 = [v5 asFileProviderItem];
    if (asFileProviderItem2)
    {
      [(NSFileProviderItem *)self->_toIndexItems addObject:asFileProviderItem2];
      -[BRCRecentsEnumeratorBatch setRank:](self, "setRank:", [itemCopy notifsRank]);
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

- (void)addDeletionOfFileObjectID:(id)d rank:(unint64_t)rank
{
  [(NSMutableArray *)self->_deletedItemIDs addObject:d];

  [(BRCRecentsEnumeratorBatch *)self setRank:rank];
}

- (void)setRank:(unint64_t)rank
{
  if (self->_rank > rank)
  {
    [BRCRecentsEnumeratorBatch setRank:];
  }

  self->_rank = rank;
}

- (void)listItems:(id)items
{
  if (items)
  {
    (*(items + 2))(items, self->_toIndexItems, self->_deletedItemIDs);
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