@interface SRUIFChildConversationItemList
- (BOOL)itemIsRestoredAtIndex:(int64_t)a3;
- (SRUIFChildConversationItemList)initWithConversation:(id)a3 parentItemIdentifier:(id)a4;
- (id)_identifierOfItemAtIndex:(int64_t)a3;
- (id)_indexPathForItemAtIndex:(int64_t)a3;
- (id)_indexPathForLastRestoredItem;
- (id)identifiersForItemsAtIndexes:(id)a3;
- (id)itemAtIndex:(int64_t)a3;
- (id)itemWithIdentifier:(id)a3;
- (int64_t)numberOfItems;
- (void)_addItemsForAceObjects:(id)a3 type:(int64_t)a4 dialogPhase:(id)a5 asChildrenOfItemWithIdentifier:(id)a6;
- (void)addItemsForAceObjects:(id)a3 type:(int64_t)a4 dialogPhase:(id)a5 asChildrenOfItemAtIndex:(int64_t)a6;
- (void)removeItemsAtIndexes:(id)a3;
- (void)removeItemsWithIdentifiers:(id)a3;
@end

@implementation SRUIFChildConversationItemList

- (SRUIFChildConversationItemList)initWithConversation:(id)a3 parentItemIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SRUIFChildConversationItemList;
  v9 = [(SRUIFChildConversationItemList *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conversation, a3);
    v11 = [v8 copy];
    parentItemIdentifier = v10->_parentItemIdentifier;
    v10->_parentItemIdentifier = v11;
  }

  return v10;
}

- (int64_t)numberOfItems
{
  v3 = [(SRUIFChildConversationItemList *)self _conversation];
  v4 = [(SRUIFChildConversationItemList *)self _parentItemIdentifier];
  v5 = [v3 numberOfChildrenForItemWithIdentifier:v4];

  return v5;
}

- (id)itemAtIndex:(int64_t)a3
{
  v5 = [(SRUIFChildConversationItemList *)self _conversation];
  v6 = [(SRUIFChildConversationItemList *)self _indexPathForItemAtIndex:a3];
  v7 = [v5 itemAtIndexPath:v6];

  return v7;
}

- (id)itemWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SRUIFChildConversationItemList *)self _conversation];
  v6 = [v5 itemWithIdentifier:v4];

  v7 = [v6 identifier];
  v8 = [v5 parentOfItemWithIdentifier:v7];

  v9 = [v8 identifier];
  v10 = [(SRUIFChildConversationItemList *)self _parentItemIdentifier];
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    v12 = [v8 identifier];
    v13 = [(SRUIFChildConversationItemList *)self _parentItemIdentifier];
    v14 = [v12 isEqual:v13];

    if (v14)
    {
      goto LABEL_6;
    }

    v9 = v6;
    v6 = 0;
  }

LABEL_6:

  return v6;
}

- (void)addItemsForAceObjects:(id)a3 type:(int64_t)a4 dialogPhase:(id)a5 asChildrenOfItemAtIndex:(int64_t)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [(SRUIFChildConversationItemList *)self _identifierOfItemAtIndex:a6];
  [(SRUIFChildConversationItemList *)self _addItemsForAceObjects:v11 type:a4 dialogPhase:v10 asChildrenOfItemWithIdentifier:v12];
}

- (id)identifiersForItemsAtIndexes:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 setWithCapacity:{objc_msgSend(v5, "count")}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SRUIFChildConversationItemList_identifiersForItemsAtIndexes___block_invoke;
  v10[3] = &unk_279C61940;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [v5 enumerateIndexesUsingBlock:v10];

  v8 = v7;
  return v7;
}

void __63__SRUIFChildConversationItemList_identifiersForItemsAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _identifierOfItemAtIndex:a2];
  [v2 addObject:v3];
}

- (void)removeItemsAtIndexes:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 setWithCapacity:{objc_msgSend(v5, "count")}];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__SRUIFChildConversationItemList_removeItemsAtIndexes___block_invoke;
  v12 = &unk_279C61940;
  v13 = v6;
  v14 = self;
  v7 = v6;
  [v5 enumerateIndexesUsingBlock:&v9];

  v8 = [(SRUIFChildConversationItemList *)self _conversation:v9];
  [v8 removeItemsWithIdentifiers:v7];
}

void __55__SRUIFChildConversationItemList_removeItemsAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _identifierOfItemAtIndex:a2];
  [v2 addObject:v3];
}

- (void)removeItemsWithIdentifiers:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 setWithCapacity:{objc_msgSend(v5, "count")}];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __61__SRUIFChildConversationItemList_removeItemsWithIdentifiers___block_invoke;
  v12 = &unk_279C61968;
  v13 = self;
  v14 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:&v9];

  v8 = [(SRUIFChildConversationItemList *)self _conversation:v9];
  [v8 removeItemsWithIdentifiers:v7];
}

void __61__SRUIFChildConversationItemList_removeItemsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) _conversation];
  v4 = [v3 hasItemWithIdentifier:v5];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (BOOL)itemIsRestoredAtIndex:(int64_t)a3
{
  v5 = [(SRUIFChildConversationItemList *)self _indexPathForLastRestoredItem];
  if (v5)
  {
    v6 = [(SRUIFChildConversationItemList *)self _indexPathForItemAtIndex:a3];
    v7 = [v6 compare:v5] != 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_identifierOfItemAtIndex:(int64_t)a3
{
  v3 = [(SRUIFChildConversationItemList *)self itemAtIndex:a3];
  v4 = [v3 identifier];

  return v4;
}

- (id)_indexPathForItemAtIndex:(int64_t)a3
{
  v5 = [(SRUIFChildConversationItemList *)self _conversation];
  v6 = [(SRUIFChildConversationItemList *)self _parentItemIdentifier];
  v7 = [v5 indexPathForItemWithIdentifier:v6];
  v8 = [v7 indexPathByAddingIndex:a3];

  return v8;
}

- (id)_indexPathForLastRestoredItem
{
  v2 = [(SRUIFChildConversationItemList *)self _conversation];
  v3 = [v2 lastRestoredItem];
  v4 = v3;
  if (v3 && ([v3 identifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v2, "hasItemWithIdentifier:", v5), v5, v6))
  {
    v7 = [v4 identifier];
    v8 = [v2 indexPathForItemWithIdentifier:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_addItemsForAceObjects:(id)a3 type:(int64_t)a4 dialogPhase:(id)a5 asChildrenOfItemWithIdentifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(SRUIFChildConversationItemList *)self _conversation];
  [v13 addItemsForAceObjects:v12 type:a4 dialogPhase:v11 asChildrenOfItemWithIdentifier:v10];
}

@end