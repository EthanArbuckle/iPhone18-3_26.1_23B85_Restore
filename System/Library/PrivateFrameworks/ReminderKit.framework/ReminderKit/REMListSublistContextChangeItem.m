@interface REMListSublistContextChangeItem
- (REMListSublistContextChangeItem)initWithListChangeItem:(id)a3;
- (id)_accountChangeItem;
- (void)addMergeableOrderingNode:(id)a3;
- (void)addSmartListChangeItem:(id)a3;
- (void)insertMergeableOrderingNode:(id)a3 afterMergeableOrderingNode:(id)a4;
- (void)insertMergeableOrderingNode:(id)a3 beforeMergeableOrderingNode:(id)a4;
- (void)insertSmartListChangeItem:(id)a3 afterSmartListChangeItem:(id)a4;
- (void)insertSmartListChangeItem:(id)a3 beforeSmartListChangeItem:(id)a4;
- (void)undeleteChildListWithID:(id)a3 usingUndo:(id)a4;
- (void)undeleteChildSmartListWithID:(id)a3 usingUndo:(id)a4;
@end

@implementation REMListSublistContextChangeItem

- (REMListSublistContextChangeItem)initWithListChangeItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMListSublistContextChangeItem;
  v6 = [(REMListSublistContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listChangeItem, a3);
  }

  return v7;
}

- (void)addSmartListChangeItem:(id)a3
{
  v4 = a3;
  [v4 assertIsCustomSmartListWithAction:@"-[REMListSublistContextChangeItem addSmartListChangeItem:]"];
  [(REMListSublistContextChangeItem *)self _insertMergeableOrderingNode:v4 adjacentToMergeableOrderingNode:0 isAfter:0];
}

- (void)insertSmartListChangeItem:(id)a3 beforeSmartListChangeItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 assertIsCustomSmartListWithAction:@"-[REMListSublistContextChangeItem insertSmartListChangeItem:beforeSmartListChangeItem:]"];
  [v6 assertIsCustomSmartListWithAction:@"-[REMListSublistContextChangeItem insertSmartListChangeItem:beforeSmartListChangeItem:] (sibling)"];
  [(REMListSublistContextChangeItem *)self _insertMergeableOrderingNode:v7 adjacentToMergeableOrderingNode:v6 isAfter:0];
}

- (void)insertSmartListChangeItem:(id)a3 afterSmartListChangeItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 assertIsCustomSmartListWithAction:@"-[REMListSublistContextChangeItem insertSmartListChangeItem:afterSmartListChangeItem:]"];
  [v6 assertIsCustomSmartListWithAction:@"-[REMListSublistContextChangeItem insertSmartListChangeItem:afterSmartListChangeItem:] (sibling)"];
  [(REMListSublistContextChangeItem *)self _insertMergeableOrderingNode:v7 adjacentToMergeableOrderingNode:v6 isAfter:1];
}

- (void)addMergeableOrderingNode:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 assertIsCustomSmartListWithAction:@"-[REMListSublistContextChangeItem addMergeableOrderingNode:]"];
  }

  [(REMListSublistContextChangeItem *)self _insertMergeableOrderingNode:v4 adjacentToMergeableOrderingNode:0 isAfter:0];
}

- (void)insertMergeableOrderingNode:(id)a3 beforeMergeableOrderingNode:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 assertIsCustomSmartListWithAction:@"-[REMListSublistContextChangeItem insertMergeableOrderingNode:beforeMergeableOrderingNode:]"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 assertIsCustomSmartListWithAction:@"-[REMListSublistContextChangeItem insertMergeableOrderingNode:beforeMergeableOrderingNode:] (sibling)"];
  }

  [(REMListSublistContextChangeItem *)self _insertMergeableOrderingNode:v7 adjacentToMergeableOrderingNode:v6 isAfter:0];
}

- (void)insertMergeableOrderingNode:(id)a3 afterMergeableOrderingNode:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem insertMergeableOrderingNode:afterMergeableOrderingNode:]"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem insertMergeableOrderingNode:afterMergeableOrderingNode:] (sibling)"];
  }

  [(REMListSublistContextChangeItem *)self _insertMergeableOrderingNode:v7 adjacentToMergeableOrderingNode:v6 isAfter:1];
}

- (void)undeleteChildListWithID:(id)a3 usingUndo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMListSublistContextChangeItem *)self _accountChangeItem];
  [v8 undeleteListWithID:v7 usingUndo:v6];

  v12 = [(REMListSublistContextChangeItem *)self listChangeItem];
  v9 = [v12 childListIDsToUndelete];
  v10 = [v9 setByAddingObject:v7];

  v11 = [(REMListSublistContextChangeItem *)self listChangeItem];
  [v11 setChildListIDsToUndelete:v10];
}

- (void)undeleteChildSmartListWithID:(id)a3 usingUndo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMListSublistContextChangeItem *)self _accountChangeItem];
  [v8 undeleteSmartListWithID:v7 usingUndo:v6];

  v12 = [(REMListSublistContextChangeItem *)self listChangeItem];
  v9 = [v12 childSmartListIDsToUndelete];
  v10 = [v9 setByAddingObject:v7];

  v11 = [(REMListSublistContextChangeItem *)self listChangeItem];
  [v11 setChildSmartListIDsToUndelete:v10];
}

- (id)_accountChangeItem
{
  v3 = [(REMListSublistContextChangeItem *)self listChangeItem];
  v4 = [v3 saveRequest];
  v5 = [(REMListSublistContextChangeItem *)self listChangeItem];
  v6 = [v4 _updateAccountWithListChangeItem:v5];

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