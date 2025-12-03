@interface REMAccountChangeItem
+ (id)_emptyListIDsOrderingWithAccountID:(id)d;
+ (void)initialize;
- (BOOL)canCopyReminderLosslesslyToAccountChangeItem:(id)item;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)selector;
- (REMAccountCapabilities)capabilities;
- (REMAccountChangeItem)initWithObjectID:(id)d type:(int64_t)type name:(id)name insertIntoSaveRequest:(id)request;
- (REMAccountChangeItem)initWithSaveRequest:(id)request storage:(id)storage capabilities:(id)capabilities changedKeysObserver:(id)observer;
- (REMAccountGroupContextChangeItem)groupContext;
- (REMAccountPinnedListsContextChangeItem)pinnedListsContext;
- (id)accountTypeHost;
- (id)changedKeys;
- (id)lowLevelRemoveMergeableOrderingNodeIDFromOrdering:(id)ordering;
- (id)mergeableOrderingNodesByOrderingMergeableOrderingNodes:(id)nodes;
- (id)resolutionTokenKeyForChangedKey:(id)key;
- (id)shallowCopyWithSaveRequest:(id)request;
- (id)templatesContextChangeItem;
- (id)valueForUndefinedKey:(id)key;
- (void)_editListIDsOrderingUsingBlock:(id)block;
- (void)_lowLevelAddMergeableOrderingNodeToOrdering:(id)ordering atIndexOfSibling:(id)sibling isAfter:(BOOL)after withParentMergeableOrderingNode:(id)node;
- (void)_lowLevelApplyUndoToOrdering:(id)ordering;
- (void)_reassignMergeableOrderingNode:(id)node withParentListChangeItem:(id)item;
- (void)addMergeableOrderingNode:(id)node;
- (void)addSmartListChangeItem:(id)item;
- (void)capabilities;
- (void)insertMergeableOrderingNode:(id)node afterMergeableOrderingNode:(id)orderingNode;
- (void)insertMergeableOrderingNode:(id)node beforeMergeableOrderingNode:(id)orderingNode;
- (void)insertSmartListChangeItem:(id)item afterSmartListChangeItem:(id)changeItem;
- (void)insertSmartListChangeItem:(id)item beforeSmartListChangeItem:(id)changeItem;
- (void)lowLevelAddMergeableOrderingNodeIDToOrdering:(id)ordering withParentMergeableOrderingNode:(id)node;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)test_lowLevelEditOrderingByMovingListObjectID:(id)d toTarget:(unint64_t)target;
- (void)undeleteListWithID:(id)d usingUndo:(id)undo;
- (void)undeleteSmartListWithID:(id)d usingUndo:(id)undo;
@end

@implementation REMAccountChangeItem

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = __sKeysToObserve_0;
    __sKeysToObserve_0 = &unk_1F0D998C8;

    __resolutionTokenKeyDenylist = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D998E0];

    MEMORY[0x1EEE66BB8]();
  }
}

- (REMAccountChangeItem)initWithSaveRequest:(id)request storage:(id)storage capabilities:(id)capabilities changedKeysObserver:(id)observer
{
  requestCopy = request;
  storageCopy = storage;
  capabilitiesCopy = capabilities;
  observerCopy = observer;
  if (storageCopy)
  {
    v22.receiver = self;
    v22.super_class = REMAccountChangeItem;
    v15 = [(REMAccountChangeItem *)&v22 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_saveRequest, request);
      objc_storeStrong(&v16->_storage, storage);
      objc_storeStrong(&v16->_changedKeysObserver, observer);
      saveRequest = v16->_saveRequest;
      objectID = [(REMAccountStorage *)v16->_storage objectID];
      [(REMSaveRequest *)saveRequest _trackAccountCapabilities:capabilitiesCopy forObjectID:objectID];
    }

    self = v16;
    selfCopy = self;
  }

  else
  {
    v20 = +[REMLogStore write];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [REMAccountChangeItem initWithSaveRequest:storage:capabilities:changedKeysObserver:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "storage");
    selfCopy = 0;
  }

  return selfCopy;
}

- (REMAccountChangeItem)initWithObjectID:(id)d type:(int64_t)type name:(id)name insertIntoSaveRequest:(id)request
{
  requestCopy = request;
  nameCopy = name;
  dCopy = d;
  v13 = [REMAccountChangeItem _emptyListIDsOrderingWithAccountID:dCopy];
  v14 = [[REMAccountStorage alloc] initWithObjectID:dCopy type:type name:nameCopy listIDsMergeableOrdering:v13];

  v15 = [[REMAccountCapabilities alloc] initWithAccountType:type];
  v16 = [(REMAccountChangeItem *)self initWithSaveRequest:requestCopy storage:v14 capabilities:v15 observeInitialValues:1];

  return v16;
}

- (id)shallowCopyWithSaveRequest:(id)request
{
  requestCopy = request;
  storage = [(REMAccountChangeItem *)self storage];

  if (storage)
  {
    objectID = [(REMAccountChangeItem *)self objectID];
    v8 = [requestCopy _trackedAccountCapabilitiesForObjectID:objectID];

    if (v8)
    {
      goto LABEL_16;
    }

    objectID2 = [(REMAccountChangeItem *)self objectID];

    if (objectID2)
    {
      if (!requestCopy)
      {
        goto LABEL_15;
      }

      v10 = +[REMLogStore write];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(REMReminderChangeItem *)self shallowCopyWithSaveRequest:a2, v10];
      }
    }

    else
    {
      v10 = +[REMLogStore write];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [REMAccountChangeItem shallowCopyWithSaveRequest:];
      }
    }

LABEL_15:
    v13 = [REMAccountCapabilities alloc];
    storage2 = [(REMAccountChangeItem *)self storage];
    v8 = -[REMAccountCapabilities initWithAccountType:](v13, "initWithAccountType:", [storage2 type]);

    if (!v8)
    {
      v8 = +[REMLogStore write];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [REMAccountChangeItem shallowCopyWithSaveRequest:v8];
      }

      storage4 = 0;
      goto LABEL_17;
    }

LABEL_16:
    v15 = [REMAccountChangeItem alloc];
    storage3 = [(REMAccountChangeItem *)self storage];
    changedKeysObserver = [(REMAccountChangeItem *)self changedKeysObserver];
    storage4 = [(REMAccountChangeItem *)v15 initWithSaveRequest:requestCopy storage:storage3 capabilities:v8 changedKeysObserver:changedKeysObserver];

LABEL_17:
    goto LABEL_18;
  }

  v11 = +[REMLogStore write];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    [REMAccountChangeItem shallowCopyWithSaveRequest:];
  }

  storage4 = [(REMAccountChangeItem *)self storage];

  if (storage4)
  {
    storage4 = 0;
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "self.storage");
  }

LABEL_18:

  return storage4;
}

- (REMAccountCapabilities)capabilities
{
  storage = [(REMAccountChangeItem *)self storage];

  if (storage)
  {
    saveRequest = [(REMAccountChangeItem *)self saveRequest];
    objectID = [(REMAccountChangeItem *)self objectID];
    v6 = [saveRequest _trackedAccountCapabilitiesForObjectID:objectID];

    if (!v6)
    {
      v7 = +[REMLogStore write];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(REMAccountChangeItem *)self capabilities];
      }

      v8 = [REMAccountCapabilities alloc];
      storage2 = [(REMAccountChangeItem *)self storage];
      v6 = -[REMAccountCapabilities initWithAccountType:](v8, "initWithAccountType:", [storage2 type]);

      if (!v6)
      {
        [REMAccountChangeItem capabilities];
      }
    }
  }

  else
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [REMAccountChangeItem shallowCopyWithSaveRequest:];
    }

    storage3 = [(REMAccountChangeItem *)self storage];

    if (!storage3)
    {
      NSLog(&cfstr_SIsUnexpectedl.isa, "self.storage");
    }

    v6 = 0;
  }

  return v6;
}

- (REMAccountGroupContextChangeItem)groupContext
{
  capabilities = [(REMAccountChangeItem *)self capabilities];
  supportsGroups = [capabilities supportsGroups];

  if (supportsGroups)
  {
    v5 = [[REMAccountGroupContextChangeItem alloc] initWithAccountChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (REMAccountPinnedListsContextChangeItem)pinnedListsContext
{
  capabilities = [(REMAccountChangeItem *)self capabilities];
  supportsPinnedLists = [capabilities supportsPinnedLists];

  if (supportsPinnedLists)
  {
    v5 = [[REMAccountPinnedListsContextChangeItem alloc] initWithAccountChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)templatesContextChangeItem
{
  capabilities = [(REMAccountChangeItem *)self capabilities];
  supportsTemplates = [capabilities supportsTemplates];

  if (supportsTemplates)
  {
    v5 = [[REMAccountTemplatesContextChangeItem alloc] initWithAccountChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  storage = [(REMAccountChangeItem *)self storage];
  v6 = [storage valueForKey:keyCopy];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = REMAccountChangeItem;
  if ([(REMAccountChangeItem *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    storage = [(REMAccountChangeItem *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  saveRequest = [(REMAccountChangeItem *)self saveRequest];
  isSaved = [saveRequest isSaved];

  if (isSaved)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_INFO, "REMSaveRequest.isSaved MUST be FALSE", v12, 2u);
    }
  }

  storage = [(REMAccountChangeItem *)self storage];
  [storage setValue:valueCopy forKey:keyCopy];
}

- (id)resolutionTokenKeyForChangedKey:(id)key
{
  v3 = __resolutionTokenKeyDenylist;
  keyCopy = key;
  if ([v3 containsObject:keyCopy])
  {
    v5 = 0;
  }

  else
  {
    v5 = keyCopy;
  }

  v6 = v5;

  return v5;
}

- (id)changedKeys
{
  changedKeysObserver = [(REMAccountChangeItem *)self changedKeysObserver];
  changedKeys = [changedKeysObserver changedKeys];

  return changedKeys;
}

- (id)accountTypeHost
{
  storage = [(REMAccountChangeItem *)self storage];
  accountTypeHost = [storage accountTypeHost];

  return accountTypeHost;
}

- (BOOL)isUnsupported
{
  storage = [(REMAccountChangeItem *)self storage];
  isUnsupported = [storage isUnsupported];

  return isUnsupported;
}

- (void)addSmartListChangeItem:(id)item
{
  itemCopy = item;
  [itemCopy assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem addSmartListChangeItem:]"];
  [(REMAccountChangeItem *)self insertMergeableOrderingNode:itemCopy adjacentToMergeableOrderingNode:0 isAfter:1 withParentMergeableOrderingNode:0];
}

- (void)insertSmartListChangeItem:(id)item beforeSmartListChangeItem:(id)changeItem
{
  changeItemCopy = changeItem;
  itemCopy = item;
  [itemCopy assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem insertSmartListChangeItem:beforeSmartListChangeItem:]"];
  [changeItemCopy assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem insertSmartListChangeItem:beforeSmartListChangeItem:] (sibling)"];
  [(REMAccountChangeItem *)self insertMergeableOrderingNode:itemCopy adjacentToMergeableOrderingNode:changeItemCopy isAfter:0 withParentMergeableOrderingNode:0];
}

- (void)insertSmartListChangeItem:(id)item afterSmartListChangeItem:(id)changeItem
{
  changeItemCopy = changeItem;
  itemCopy = item;
  [itemCopy assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem insertSmartListChangeItem:afterSmartListChangeItem:]"];
  [changeItemCopy assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem insertSmartListChangeItem:afterSmartListChangeItem:] (sibling)"];
  [(REMAccountChangeItem *)self insertMergeableOrderingNode:itemCopy adjacentToMergeableOrderingNode:changeItemCopy isAfter:1 withParentMergeableOrderingNode:0];
}

- (void)addMergeableOrderingNode:(id)node
{
  nodeCopy = node;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [nodeCopy assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem addMergeableOrderingNode:]"];
  }

  [(REMAccountChangeItem *)self insertMergeableOrderingNode:nodeCopy adjacentToMergeableOrderingNode:0 isAfter:1 withParentMergeableOrderingNode:0];
}

- (void)insertMergeableOrderingNode:(id)node beforeMergeableOrderingNode:(id)orderingNode
{
  nodeCopy = node;
  orderingNodeCopy = orderingNode;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [nodeCopy assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem insertMergeableOrderingNode:beforeMergeableOrderingNode:]"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [orderingNodeCopy assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem insertMergeableOrderingNode:beforeMergeableOrderingNode:] (sibling)"];
  }

  [(REMAccountChangeItem *)self insertMergeableOrderingNode:nodeCopy adjacentToMergeableOrderingNode:orderingNodeCopy isAfter:0 withParentMergeableOrderingNode:0];
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

  [(REMAccountChangeItem *)self insertMergeableOrderingNode:nodeCopy adjacentToMergeableOrderingNode:orderingNodeCopy isAfter:1 withParentMergeableOrderingNode:0];
}

- (void)undeleteListWithID:(id)d usingUndo:(id)undo
{
  undoCopy = undo;
  dCopy = d;
  listIDsToUndelete = [(REMAccountChangeItem *)self listIDsToUndelete];
  v8 = [listIDsToUndelete setByAddingObject:dCopy];

  [(REMAccountChangeItem *)self setListIDsToUndelete:v8];
  [(REMAccountChangeItem *)self _lowLevelApplyUndoToOrdering:undoCopy];
}

- (void)undeleteSmartListWithID:(id)d usingUndo:(id)undo
{
  undoCopy = undo;
  dCopy = d;
  smartListIDsToUndelete = [(REMAccountChangeItem *)self smartListIDsToUndelete];
  v8 = [smartListIDsToUndelete setByAddingObject:dCopy];

  [(REMAccountChangeItem *)self setSmartListIDsToUndelete:v8];
  [(REMAccountChangeItem *)self _lowLevelApplyUndoToOrdering:undoCopy];
}

- (id)mergeableOrderingNodesByOrderingMergeableOrderingNodes:(id)nodes
{
  v32 = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(nodesCopy, "count")}];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(nodesCopy, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = nodesCopy;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        remObjectID = [v11 remObjectID];
        uuid = [remObjectID uuid];
        uUIDString = [uuid UUIDString];

        if ([uUIDString length])
        {
          [v5 setObject:v11 forKeyedSubscript:uUIDString];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  listIDsMergeableOrdering = [(REMAccountChangeItem *)self listIDsMergeableOrdering];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __79__REMAccountChangeItem_mergeableOrderingNodesByOrderingMergeableOrderingNodes___block_invoke;
  v24[3] = &unk_1E7508648;
  v16 = v5;
  v25 = v16;
  v17 = v23;
  v26 = v17;
  [listIDsMergeableOrdering enumerateObjectsUsingBlock:v24];

  if ([v16 count])
  {
    v18 = +[REMLogStore write];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [REMAccountChangeItem mergeableOrderingNodesByOrderingMergeableOrderingNodes:v16];
    }
  }

  v19 = v26;
  v20 = v17;

  v21 = *MEMORY[0x1E69E9840];
  return v17;
}

void __79__REMAccountChangeItem_mergeableOrderingNodesByOrderingMergeableOrderingNodes___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKey:?];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
    [*(a1 + 32) removeObjectForKey:v4];
  }
}

- (BOOL)canCopyReminderLosslesslyToAccountChangeItem:(id)item
{
  itemCopy = item;
  v5 = objc_opt_class();
  type = [(REMAccountChangeItem *)self type];
  type2 = [itemCopy type];
  accountTypeHost = [itemCopy accountTypeHost];

  LOBYTE(type) = [v5 canCopyReminderLosslesslyFromAccountWithType:type toAccountWithType:type2 accountTypeHost:accountTypeHost];
  return type;
}

- (void)lowLevelAddMergeableOrderingNodeIDToOrdering:(id)ordering withParentMergeableOrderingNode:(id)node
{
  orderingCopy = ordering;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __101__REMAccountChangeItem_lowLevelAddMergeableOrderingNodeIDToOrdering_withParentMergeableOrderingNode___block_invoke;
  v7[3] = &unk_1E7508670;
  v8 = orderingCopy;
  v6 = orderingCopy;
  [(REMAccountChangeItem *)self _editListIDsOrderingUsingBlock:v7];
}

void __101__REMAccountChangeItem_lowLevelAddMergeableOrderingNodeIDToOrdering_withParentMergeableOrderingNode___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) uuid];
  v4 = [v3 UUIDString];
  v5 = [v6 addObject:v4];
}

- (id)lowLevelRemoveMergeableOrderingNodeIDFromOrdering:(id)ordering
{
  v22 = *MEMORY[0x1E69E9840];
  orderingCopy = ordering;
  listIDsMergeableOrdering = [(REMAccountChangeItem *)self listIDsMergeableOrdering];
  uuid = [orderingCopy uuid];
  uUIDString = [uuid UUIDString];
  v8 = [listIDsMergeableOrdering indexOfEqualObject:uUIDString];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = +[REMLogStore write];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      listIDsMergeableOrdering2 = [(REMAccountChangeItem *)self listIDsMergeableOrdering];
      [(REMAccountChangeItem *)orderingCopy lowLevelRemoveMergeableOrderingNodeIDFromOrdering:listIDsMergeableOrdering2, buf, v9];
    }
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__REMAccountChangeItem_lowLevelRemoveMergeableOrderingNodeIDFromOrdering___block_invoke;
    v14[3] = &unk_1E7508698;
    v14[4] = &v15;
    v14[5] = v8;
    [(REMAccountChangeItem *)self _editListIDsOrderingUsingBlock:v14];
  }

  v11 = v16[5];
  _Block_object_dispose(&v15, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

uint64_t __74__REMAccountChangeItem_lowLevelRemoveMergeableOrderingNodeIDFromOrdering___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 removeObjectAtIndex:*(a1 + 40)];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

- (void)test_lowLevelEditOrderingByMovingListObjectID:(id)d toTarget:(unint64_t)target
{
  dCopy = d;
  listIDsMergeableOrdering = [(REMAccountChangeItem *)self listIDsMergeableOrdering];
  uuid = [dCopy uuid];
  uUIDString = [uuid UUIDString];
  v10 = [listIDsMergeableOrdering indexOfEqualObject:uUIDString];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [REMAccountChangeItem test_lowLevelEditOrderingByMovingListObjectID:dCopy toTarget:self];
    }

LABEL_8:

    goto LABEL_9;
  }

  listIDsMergeableOrdering2 = [(REMAccountChangeItem *)self listIDsMergeableOrdering];
  v13 = [listIDsMergeableOrdering2 count];

  if (v13 <= target)
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [REMAccountChangeItem test_lowLevelEditOrderingByMovingListObjectID:dCopy toTarget:self];
    }

    goto LABEL_8;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__REMAccountChangeItem_test_lowLevelEditOrderingByMovingListObjectID_toTarget___block_invoke;
  v14[3] = &__block_descriptor_48_e41_v16__0__REMMutableCRMergeableOrderedSet_8l;
  v14[4] = target;
  v14[5] = v10;
  [(REMAccountChangeItem *)self _editListIDsOrderingUsingBlock:v14];
LABEL_9:
}

void *__79__REMAccountChangeItem_test_lowLevelEditOrderingByMovingListObjectID_toTarget___block_invoke(void *result, void *a2)
{
  if (result[5] != result[4])
  {
    return [a2 moveObjectFromIndex:v2 toIndex:v3];
  }

  return result;
}

+ (id)_emptyListIDsOrderingWithAccountID:(id)d
{
  v3 = [REMAccountStorage listIDsMergeableOrderingReplicaIDSourceWithAccountID:d];
  v4 = [REMCRMergeableOrderedSet alloc];
  orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
  v6 = [(REMCRMergeableOrderedSet *)v4 initWithReplicaIDSource:v3 orderedSet:orderedSet];

  return v6;
}

- (void)_reassignMergeableOrderingNode:(id)node withParentListChangeItem:(id)item
{
  nodeCopy = node;
  itemCopy = item;
  [nodeCopy removeFromParentWithAccountChangeItem:self];
  objectID = [(REMAccountChangeItem *)self objectID];
  [nodeCopy setParentOwnerID:objectID];

  objectID2 = [(REMAccountChangeItem *)self objectID];
  [nodeCopy setAccountID:objectID2];

  if (itemCopy)
  {
    remObjectID = [itemCopy remObjectID];
    [nodeCopy setParentSubContainerID:remObjectID];
  }
}

- (void)_lowLevelAddMergeableOrderingNodeToOrdering:(id)ordering atIndexOfSibling:(id)sibling isAfter:(BOOL)after withParentMergeableOrderingNode:(id)node
{
  orderingCopy = ordering;
  siblingCopy = sibling;
  nodeCopy = node;
  accountID = [orderingCopy accountID];
  if (!accountID)
  {
    goto LABEL_13;
  }

  v12 = accountID;
  accountID2 = [orderingCopy accountID];
  objectID = [(REMAccountChangeItem *)self objectID];
  v15 = [accountID2 isEqual:objectID];

  if ((v15 & 1) == 0)
  {
LABEL_13:
    [REMAccountChangeItem _lowLevelAddMergeableOrderingNodeToOrdering:atIndexOfSibling:isAfter:withParentMergeableOrderingNode:];
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0x7FFFFFFFFFFFFFFFLL;
  remObjectID = [orderingCopy remObjectID];
  listIDsMergeableOrdering = [(REMAccountChangeItem *)self listIDsMergeableOrdering];
  uuid = [remObjectID uuid];
  uUIDString = [uuid UUIDString];
  v37 = [listIDsMergeableOrdering indexOfEqualObject:uUIDString];

  listIDsMergeableOrdering2 = [(REMAccountChangeItem *)self listIDsMergeableOrdering];
  v36 = [listIDsMergeableOrdering2 count];

  if (!siblingCopy)
  {
    goto LABEL_12;
  }

  accountID3 = [orderingCopy accountID];
  accountID4 = [siblingCopy accountID];
  if (([accountID3 isEqual:accountID4] & 1) == 0)
  {

    v27 = 0;
LABEL_16:

    goto LABEL_17;
  }

  parentSubContainerID = [orderingCopy parentSubContainerID];
  if (!parentSubContainerID)
  {
    parentSubContainerID2 = [siblingCopy parentSubContainerID];
    if (!parentSubContainerID2)
    {

LABEL_15:
      accountID3 = siblingCopy;
      listIDsMergeableOrdering3 = [(REMAccountChangeItem *)self listIDsMergeableOrdering];
      remObjectID2 = [accountID3 remObjectID];
      uuid2 = [remObjectID2 uuid];
      uUIDString2 = [uuid2 UUIDString];
      v32 = [listIDsMergeableOrdering3 indexOfEqualObject:uUIDString2];
      v50[3] = v32;

      v27 = v50[3] == 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_16;
    }
  }

  parentSubContainerID3 = [orderingCopy parentSubContainerID];
  parentSubContainerID4 = [siblingCopy parentSubContainerID];
  v26 = [parentSubContainerID3 isEqual:parentSubContainerID4];

  if (parentSubContainerID)
  {
  }

  else
  {
  }

  if (v26)
  {
    goto LABEL_15;
  }

LABEL_12:
  v27 = 0;
LABEL_17:
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __125__REMAccountChangeItem__lowLevelAddMergeableOrderingNodeToOrdering_atIndexOfSibling_isAfter_withParentMergeableOrderingNode___block_invoke;
  v40[3] = &unk_1E75086E0;
  afterCopy = after;
  v44 = &v49;
  v45 = v37;
  v33 = remObjectID;
  v41 = v33;
  v48 = v27;
  v34 = nodeCopy;
  v42 = v34;
  selfCopy = self;
  v46 = v36;
  [(REMAccountChangeItem *)self _editListIDsOrderingUsingBlock:v40];

  _Block_object_dispose(&v49, 8);
}

void __125__REMAccountChangeItem__lowLevelAddMergeableOrderingNodeToOrdering_atIndexOfSibling_isAfter_withParentMergeableOrderingNode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 24);
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(a1 + 81) == 1)
    {
      v6 = +[REMLogStore write];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        __125__REMAccountChangeItem__lowLevelAddMergeableOrderingNodeToOrdering_atIndexOfSibling_isAfter_withParentMergeableOrderingNode___block_invoke_cold_1(a1, v6);
      }
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = v7;
      v9 = [*(a1 + 48) listIDsMergeableOrdering];
      v10 = [v8 remObjectID];
      v11 = [v10 uuid];
      v12 = [v11 UUIDString];
      v13 = [v9 indexOfEqualObject:v12];

      if (v13 != 0x7FFFFFFFFFFFFFFFLL && (*(a1 + 80) & 1) == 0)
      {
        *(*(*(a1 + 56) + 8) + 24) = v13 + 1;
      }
    }

    v14 = *(a1 + 64);
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [*(a1 + 32) uuid];
      v16 = [v15 UUIDString];

      if (*(a1 + 80) == 1)
      {
        v17 = [v3 addObject:v16];
      }

      else
      {
        v23 = [v3 insertObject:v16 atIndex:0];
      }

      goto LABEL_24;
    }

    if (*(a1 + 80) != 1)
    {
      if (!v14)
      {
        goto LABEL_28;
      }

      v22 = v3;
LABEL_27:
      v24 = [v22 moveObjectFromIndex:? toIndex:?];
      goto LABEL_28;
    }

    v20 = *(a1 + 72) - 1;
  }

  else
  {
    if (*(a1 + 80) == 1)
    {
      *(v4 + 24) = v5 + 1;
    }

    v14 = *(a1 + 64);
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [*(a1 + 32) uuid];
      v18 = [v16 UUIDString];
      v19 = [v3 insertObject:v18 atIndex:*(*(*(a1 + 56) + 8) + 24)];

LABEL_24:
      goto LABEL_28;
    }

    v21 = *(*(*(a1 + 56) + 8) + 24);
    v20 = (__PAIR128__(v21, v14) - v21) >> 64;
  }

  if (v14 != v20)
  {
    v22 = v3;
    goto LABEL_27;
  }

LABEL_28:
}

- (void)_lowLevelApplyUndoToOrdering:(id)ordering
{
  orderingCopy = ordering;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__REMAccountChangeItem__lowLevelApplyUndoToOrdering___block_invoke;
  v6[3] = &unk_1E7508670;
  v7 = orderingCopy;
  v5 = orderingCopy;
  [(REMAccountChangeItem *)self _editListIDsOrderingUsingBlock:v6];
}

- (void)_editListIDsOrderingUsingBlock:(id)block
{
  blockCopy = block;
  saveRequest = [(REMAccountChangeItem *)self saveRequest];
  isSaved = [saveRequest isSaved];

  if (isSaved)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_INFO, "REMSaveRequest.isSaved MUST be FALSE", v16, 2u);
    }
  }

  storage = [(REMAccountChangeItem *)self storage];
  listIDsMergeableOrdering = [storage listIDsMergeableOrdering];

  mutableOrderedSet = [listIDsMergeableOrdering mutableOrderedSet];
  saveRequest2 = [(REMAccountChangeItem *)self saveRequest];
  replicaManagerProvider = [saveRequest2 replicaManagerProvider];
  [mutableOrderedSet setReplicaManagerProvider:replicaManagerProvider];

  blockCopy[2](blockCopy, mutableOrderedSet);
  immutableOrderedSet = [mutableOrderedSet immutableOrderedSet];
  storage2 = [(REMAccountChangeItem *)self storage];
  [storage2 setListIDsMergeableOrdering:immutableOrderedSet];

  changedKeysObserver = [(REMAccountChangeItem *)self changedKeysObserver];
  [changedKeysObserver keyDidChange:@"listIDsMergeableOrdering"];
}

- (void)initWithSaveRequest:storage:capabilities:changedKeysObserver:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = NSStringFromSelector(v0);
  v5 = [v1 stringWithFormat:@"%@.%@", v3, v4];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_fault_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)shallowCopyWithSaveRequest:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = NSStringFromSelector(v0);
  v11 = [v1 stringWithFormat:@"%@.%@", v3, v4];
  OUTLINED_FUNCTION_1_5();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)shallowCopyWithSaveRequest:(os_log_t)log .cold.3(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "trackedAccountCapabilities";
  _os_log_fault_impl(&dword_19A0DB000, log, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!trackedAccountCapabilities) -- invalid nil value for '%s'", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)shallowCopyWithSaveRequest:.cold.4()
{
  OUTLINED_FUNCTION_4();
  v12 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AEC0];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = NSStringFromSelector(v0);
  v5 = [v1 stringWithFormat:@"%@.%@", v3, v4];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_5();
  _os_log_fault_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)capabilities
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = +[REMLogStore write];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (void)mergeableOrderingNodesByOrderingMergeableOrderingNodes:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 allKeys];
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)lowLevelRemoveMergeableOrderingNodeIDFromOrdering:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_19A0DB000, log, OS_LOG_TYPE_FAULT, "Tried to remove node not present in ordering list {objectID: %{public}@, ordering: %{public}@}", buf, 0x16u);
}

- (void)test_lowLevelEditOrderingByMovingListObjectID:(uint64_t)a1 toTarget:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 listIDsMergeableOrdering];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)test_lowLevelEditOrderingByMovingListObjectID:(uint64_t)a1 toTarget:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 listIDsMergeableOrdering];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_lowLevelAddMergeableOrderingNodeToOrdering:atIndexOfSibling:isAfter:withParentMergeableOrderingNode:.cold.1()
{
  v0 = +[REMLogStore write];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void __125__REMAccountChangeItem__lowLevelAddMergeableOrderingNodeToOrdering_atIndexOfSibling_isAfter_withParentMergeableOrderingNode___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Failed to find the insert after index of the given sibling list -- Appending to the end {objectID: %@}.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end