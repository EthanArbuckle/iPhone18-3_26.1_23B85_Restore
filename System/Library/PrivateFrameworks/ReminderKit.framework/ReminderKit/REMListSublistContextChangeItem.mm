@interface REMListSublistContextChangeItem
- (REMListSublistContextChangeItem)initWithListChangeItem:(id)item;
- (id)_accountChangeItem;
- (void)addMergeableOrderingNode:(id)node;
- (void)addSmartListChangeItem:(id)item;
- (void)insertMergeableOrderingNode:(id)node afterMergeableOrderingNode:(id)orderingNode;
- (void)insertMergeableOrderingNode:(id)node beforeMergeableOrderingNode:(id)orderingNode;
- (void)insertSmartListChangeItem:(id)item afterSmartListChangeItem:(id)changeItem;
- (void)insertSmartListChangeItem:(id)item beforeSmartListChangeItem:(id)changeItem;
- (void)undeleteChildListWithID:(id)d usingUndo:(id)undo;
- (void)undeleteChildSmartListWithID:(id)d usingUndo:(id)undo;
@end

@implementation REMListSublistContextChangeItem

- (REMListSublistContextChangeItem)initWithListChangeItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = REMListSublistContextChangeItem;
  v6 = [(REMListSublistContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listChangeItem, item);
  }

  return v7;
}

- (void)addSmartListChangeItem:(id)item
{
  itemCopy = item;
  [itemCopy assertIsCustomSmartListWithAction:@"-[REMListSublistContextChangeItem addSmartListChangeItem:]"];
  [(REMListSublistContextChangeItem *)self _insertMergeableOrderingNode:itemCopy adjacentToMergeableOrderingNode:0 isAfter:0];
}

- (void)insertSmartListChangeItem:(id)item beforeSmartListChangeItem:(id)changeItem
{
  changeItemCopy = changeItem;
  itemCopy = item;
  [itemCopy assertIsCustomSmartListWithAction:@"-[REMListSublistContextChangeItem insertSmartListChangeItem:beforeSmartListChangeItem:]"];
  [changeItemCopy assertIsCustomSmartListWithAction:@"-[REMListSublistContextChangeItem insertSmartListChangeItem:beforeSmartListChangeItem:] (sibling)"];
  [(REMListSublistContextChangeItem *)self _insertMergeableOrderingNode:itemCopy adjacentToMergeableOrderingNode:changeItemCopy isAfter:0];
}

- (void)insertSmartListChangeItem:(id)item afterSmartListChangeItem:(id)changeItem
{
  changeItemCopy = changeItem;
  itemCopy = item;
  [itemCopy assertIsCustomSmartListWithAction:@"-[REMListSublistContextChangeItem insertSmartListChangeItem:afterSmartListChangeItem:]"];
  [changeItemCopy assertIsCustomSmartListWithAction:@"-[REMListSublistContextChangeItem insertSmartListChangeItem:afterSmartListChangeItem:] (sibling)"];
  [(REMListSublistContextChangeItem *)self _insertMergeableOrderingNode:itemCopy adjacentToMergeableOrderingNode:changeItemCopy isAfter:1];
}

- (void)addMergeableOrderingNode:(id)node
{
  nodeCopy = node;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [nodeCopy assertIsCustomSmartListWithAction:@"-[REMListSublistContextChangeItem addMergeableOrderingNode:]"];
  }

  [(REMListSublistContextChangeItem *)self _insertMergeableOrderingNode:nodeCopy adjacentToMergeableOrderingNode:0 isAfter:0];
}

- (void)insertMergeableOrderingNode:(id)node beforeMergeableOrderingNode:(id)orderingNode
{
  nodeCopy = node;
  orderingNodeCopy = orderingNode;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [nodeCopy assertIsCustomSmartListWithAction:@"-[REMListSublistContextChangeItem insertMergeableOrderingNode:beforeMergeableOrderingNode:]"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [orderingNodeCopy assertIsCustomSmartListWithAction:@"-[REMListSublistContextChangeItem insertMergeableOrderingNode:beforeMergeableOrderingNode:] (sibling)"];
  }

  [(REMListSublistContextChangeItem *)self _insertMergeableOrderingNode:nodeCopy adjacentToMergeableOrderingNode:orderingNodeCopy isAfter:0];
}

- (void)insertMergeableOrderingNode:(id)node afterMergeableOrderingNode:(id)orderingNode
{
  nodeCopy = node;
  orderingNodeCopy = orderingNode;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [nodeCopy assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem insertMergeableOrderingNode:afterMergeableOrderingNode:]"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [orderingNodeCopy assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem insertMergeableOrderingNode:afterMergeableOrderingNode:] (sibling)"];
  }

  [(REMListSublistContextChangeItem *)self _insertMergeableOrderingNode:nodeCopy adjacentToMergeableOrderingNode:orderingNodeCopy isAfter:1];
}

- (void)undeleteChildListWithID:(id)d usingUndo:(id)undo
{
  undoCopy = undo;
  dCopy = d;
  _accountChangeItem = [(REMListSublistContextChangeItem *)self _accountChangeItem];
  [_accountChangeItem undeleteListWithID:dCopy usingUndo:undoCopy];

  listChangeItem = [(REMListSublistContextChangeItem *)self listChangeItem];
  childListIDsToUndelete = [listChangeItem childListIDsToUndelete];
  v10 = [childListIDsToUndelete setByAddingObject:dCopy];

  listChangeItem2 = [(REMListSublistContextChangeItem *)self listChangeItem];
  [listChangeItem2 setChildListIDsToUndelete:v10];
}

- (void)undeleteChildSmartListWithID:(id)d usingUndo:(id)undo
{
  undoCopy = undo;
  dCopy = d;
  _accountChangeItem = [(REMListSublistContextChangeItem *)self _accountChangeItem];
  [_accountChangeItem undeleteSmartListWithID:dCopy usingUndo:undoCopy];

  listChangeItem = [(REMListSublistContextChangeItem *)self listChangeItem];
  childSmartListIDsToUndelete = [listChangeItem childSmartListIDsToUndelete];
  v10 = [childSmartListIDsToUndelete setByAddingObject:dCopy];

  listChangeItem2 = [(REMListSublistContextChangeItem *)self listChangeItem];
  [listChangeItem2 setChildSmartListIDsToUndelete:v10];
}

- (id)_accountChangeItem
{
  listChangeItem = [(REMListSublistContextChangeItem *)self listChangeItem];
  saveRequest = [listChangeItem saveRequest];
  listChangeItem2 = [(REMListSublistContextChangeItem *)self listChangeItem];
  v6 = [saveRequest _updateAccountWithListChangeItem:listChangeItem2];

  return v6;
}

- (void)_insertMergeableOrderingNode:adjacentToMergeableOrderingNode:isAfter:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x1E69E9840];
  v2 = [v1 remObjectID];
  v3 = [v0 listChangeItem];
  v10 = [v3 objectID];
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

@end