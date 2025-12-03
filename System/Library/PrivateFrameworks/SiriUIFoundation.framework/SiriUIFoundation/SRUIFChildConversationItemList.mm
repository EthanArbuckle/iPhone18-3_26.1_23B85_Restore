@interface SRUIFChildConversationItemList
- (BOOL)itemIsRestoredAtIndex:(int64_t)index;
- (SRUIFChildConversationItemList)initWithConversation:(id)conversation parentItemIdentifier:(id)identifier;
- (id)_identifierOfItemAtIndex:(int64_t)index;
- (id)_indexPathForItemAtIndex:(int64_t)index;
- (id)_indexPathForLastRestoredItem;
- (id)identifiersForItemsAtIndexes:(id)indexes;
- (id)itemAtIndex:(int64_t)index;
- (id)itemWithIdentifier:(id)identifier;
- (int64_t)numberOfItems;
- (void)_addItemsForAceObjects:(id)objects type:(int64_t)type dialogPhase:(id)phase asChildrenOfItemWithIdentifier:(id)identifier;
- (void)addItemsForAceObjects:(id)objects type:(int64_t)type dialogPhase:(id)phase asChildrenOfItemAtIndex:(int64_t)index;
- (void)removeItemsAtIndexes:(id)indexes;
- (void)removeItemsWithIdentifiers:(id)identifiers;
@end

@implementation SRUIFChildConversationItemList

- (SRUIFChildConversationItemList)initWithConversation:(id)conversation parentItemIdentifier:(id)identifier
{
  conversationCopy = conversation;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = SRUIFChildConversationItemList;
  v9 = [(SRUIFChildConversationItemList *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conversation, conversation);
    v11 = [identifierCopy copy];
    parentItemIdentifier = v10->_parentItemIdentifier;
    v10->_parentItemIdentifier = v11;
  }

  return v10;
}

- (int64_t)numberOfItems
{
  _conversation = [(SRUIFChildConversationItemList *)self _conversation];
  _parentItemIdentifier = [(SRUIFChildConversationItemList *)self _parentItemIdentifier];
  v5 = [_conversation numberOfChildrenForItemWithIdentifier:_parentItemIdentifier];

  return v5;
}

- (id)itemAtIndex:(int64_t)index
{
  _conversation = [(SRUIFChildConversationItemList *)self _conversation];
  v6 = [(SRUIFChildConversationItemList *)self _indexPathForItemAtIndex:index];
  v7 = [_conversation itemAtIndexPath:v6];

  return v7;
}

- (id)itemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _conversation = [(SRUIFChildConversationItemList *)self _conversation];
  v6 = [_conversation itemWithIdentifier:identifierCopy];

  identifier = [v6 identifier];
  v8 = [_conversation parentOfItemWithIdentifier:identifier];

  identifier2 = [v8 identifier];
  _parentItemIdentifier = [(SRUIFChildConversationItemList *)self _parentItemIdentifier];
  v11 = _parentItemIdentifier;
  if (identifier2 == _parentItemIdentifier)
  {
  }

  else
  {
    identifier3 = [v8 identifier];
    _parentItemIdentifier2 = [(SRUIFChildConversationItemList *)self _parentItemIdentifier];
    v14 = [identifier3 isEqual:_parentItemIdentifier2];

    if (v14)
    {
      goto LABEL_6;
    }

    identifier2 = v6;
    v6 = 0;
  }

LABEL_6:

  return v6;
}

- (void)addItemsForAceObjects:(id)objects type:(int64_t)type dialogPhase:(id)phase asChildrenOfItemAtIndex:(int64_t)index
{
  phaseCopy = phase;
  objectsCopy = objects;
  v12 = [(SRUIFChildConversationItemList *)self _identifierOfItemAtIndex:index];
  [(SRUIFChildConversationItemList *)self _addItemsForAceObjects:objectsCopy type:type dialogPhase:phaseCopy asChildrenOfItemWithIdentifier:v12];
}

- (id)identifiersForItemsAtIndexes:(id)indexes
{
  v4 = MEMORY[0x277CBEB58];
  indexesCopy = indexes;
  v6 = [v4 setWithCapacity:{objc_msgSend(indexesCopy, "count")}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SRUIFChildConversationItemList_identifiersForItemsAtIndexes___block_invoke;
  v10[3] = &unk_279C61940;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [indexesCopy enumerateIndexesUsingBlock:v10];

  v8 = v7;
  return v7;
}

void __63__SRUIFChildConversationItemList_identifiersForItemsAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _identifierOfItemAtIndex:a2];
  [v2 addObject:v3];
}

- (void)removeItemsAtIndexes:(id)indexes
{
  v4 = MEMORY[0x277CBEB58];
  indexesCopy = indexes;
  v6 = [v4 setWithCapacity:{objc_msgSend(indexesCopy, "count")}];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__SRUIFChildConversationItemList_removeItemsAtIndexes___block_invoke;
  v12 = &unk_279C61940;
  v13 = v6;
  selfCopy = self;
  v7 = v6;
  [indexesCopy enumerateIndexesUsingBlock:&v9];

  v8 = [(SRUIFChildConversationItemList *)self _conversation:v9];
  [v8 removeItemsWithIdentifiers:v7];
}

void __55__SRUIFChildConversationItemList_removeItemsAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _identifierOfItemAtIndex:a2];
  [v2 addObject:v3];
}

- (void)removeItemsWithIdentifiers:(id)identifiers
{
  v4 = MEMORY[0x277CBEB58];
  identifiersCopy = identifiers;
  v6 = [v4 setWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __61__SRUIFChildConversationItemList_removeItemsWithIdentifiers___block_invoke;
  v12 = &unk_279C61968;
  selfCopy = self;
  v14 = v6;
  v7 = v6;
  [identifiersCopy enumerateObjectsUsingBlock:&v9];

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

- (BOOL)itemIsRestoredAtIndex:(int64_t)index
{
  _indexPathForLastRestoredItem = [(SRUIFChildConversationItemList *)self _indexPathForLastRestoredItem];
  if (_indexPathForLastRestoredItem)
  {
    v6 = [(SRUIFChildConversationItemList *)self _indexPathForItemAtIndex:index];
    v7 = [v6 compare:_indexPathForLastRestoredItem] != 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_identifierOfItemAtIndex:(int64_t)index
{
  v3 = [(SRUIFChildConversationItemList *)self itemAtIndex:index];
  identifier = [v3 identifier];

  return identifier;
}

- (id)_indexPathForItemAtIndex:(int64_t)index
{
  _conversation = [(SRUIFChildConversationItemList *)self _conversation];
  _parentItemIdentifier = [(SRUIFChildConversationItemList *)self _parentItemIdentifier];
  v7 = [_conversation indexPathForItemWithIdentifier:_parentItemIdentifier];
  v8 = [v7 indexPathByAddingIndex:index];

  return v8;
}

- (id)_indexPathForLastRestoredItem
{
  _conversation = [(SRUIFChildConversationItemList *)self _conversation];
  lastRestoredItem = [_conversation lastRestoredItem];
  v4 = lastRestoredItem;
  if (lastRestoredItem && ([lastRestoredItem identifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(_conversation, "hasItemWithIdentifier:", v5), v5, v6))
  {
    identifier = [v4 identifier];
    v8 = [_conversation indexPathForItemWithIdentifier:identifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_addItemsForAceObjects:(id)objects type:(int64_t)type dialogPhase:(id)phase asChildrenOfItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  phaseCopy = phase;
  objectsCopy = objects;
  _conversation = [(SRUIFChildConversationItemList *)self _conversation];
  [_conversation addItemsForAceObjects:objectsCopy type:type dialogPhase:phaseCopy asChildrenOfItemWithIdentifier:identifierCopy];
}

@end