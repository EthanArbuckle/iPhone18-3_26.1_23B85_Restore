@interface REMAccountChangeItem
+ (id)_emptyListIDsOrderingWithAccountID:(id)a3;
+ (void)initialize;
- (BOOL)canCopyReminderLosslesslyToAccountChangeItem:(id)a3;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)a3;
- (REMAccountCapabilities)capabilities;
- (REMAccountChangeItem)initWithObjectID:(id)a3 type:(int64_t)a4 name:(id)a5 insertIntoSaveRequest:(id)a6;
- (REMAccountChangeItem)initWithSaveRequest:(id)a3 storage:(id)a4 capabilities:(id)a5 changedKeysObserver:(id)a6;
- (REMAccountGroupContextChangeItem)groupContext;
- (REMAccountPinnedListsContextChangeItem)pinnedListsContext;
- (id)accountTypeHost;
- (id)changedKeys;
- (id)lowLevelRemoveMergeableOrderingNodeIDFromOrdering:(id)a3;
- (id)mergeableOrderingNodesByOrderingMergeableOrderingNodes:(id)a3;
- (id)resolutionTokenKeyForChangedKey:(id)a3;
- (id)shallowCopyWithSaveRequest:(id)a3;
- (id)templatesContextChangeItem;
- (id)valueForUndefinedKey:(id)a3;
- (void)_editListIDsOrderingUsingBlock:(id)a3;
- (void)_lowLevelAddMergeableOrderingNodeToOrdering:(id)a3 atIndexOfSibling:(id)a4 isAfter:(BOOL)a5 withParentMergeableOrderingNode:(id)a6;
- (void)_lowLevelApplyUndoToOrdering:(id)a3;
- (void)_reassignMergeableOrderingNode:(id)a3 withParentListChangeItem:(id)a4;
- (void)addMergeableOrderingNode:(id)a3;
- (void)addSmartListChangeItem:(id)a3;
- (void)capabilities;
- (void)insertMergeableOrderingNode:(id)a3 afterMergeableOrderingNode:(id)a4;
- (void)insertMergeableOrderingNode:(id)a3 beforeMergeableOrderingNode:(id)a4;
- (void)insertSmartListChangeItem:(id)a3 afterSmartListChangeItem:(id)a4;
- (void)insertSmartListChangeItem:(id)a3 beforeSmartListChangeItem:(id)a4;
- (void)lowLevelAddMergeableOrderingNodeIDToOrdering:(id)a3 withParentMergeableOrderingNode:(id)a4;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)test_lowLevelEditOrderingByMovingListObjectID:(id)a3 toTarget:(unint64_t)a4;
- (void)undeleteListWithID:(id)a3 usingUndo:(id)a4;
- (void)undeleteSmartListWithID:(id)a3 usingUndo:(id)a4;
@end

@implementation REMAccountChangeItem

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = __sKeysToObserve_0;
    __sKeysToObserve_0 = &unk_1F0D998C8;

    __resolutionTokenKeyDenylist = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D998E0];

    MEMORY[0x1EEE66BB8]();
  }
}

- (REMAccountChangeItem)initWithSaveRequest:(id)a3 storage:(id)a4 capabilities:(id)a5 changedKeysObserver:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v12)
  {
    v22.receiver = self;
    v22.super_class = REMAccountChangeItem;
    v15 = [(REMAccountChangeItem *)&v22 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_saveRequest, a3);
      objc_storeStrong(&v16->_storage, a4);
      objc_storeStrong(&v16->_changedKeysObserver, a6);
      saveRequest = v16->_saveRequest;
      v18 = [(REMAccountStorage *)v16->_storage objectID];
      [(REMSaveRequest *)saveRequest _trackAccountCapabilities:v13 forObjectID:v18];
    }

    self = v16;
    v19 = self;
  }

  else
  {
    v20 = +[REMLogStore write];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [REMAccountChangeItem initWithSaveRequest:storage:capabilities:changedKeysObserver:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "storage");
    v19 = 0;
  }

  return v19;
}

- (REMAccountChangeItem)initWithObjectID:(id)a3 type:(int64_t)a4 name:(id)a5 insertIntoSaveRequest:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [REMAccountChangeItem _emptyListIDsOrderingWithAccountID:v12];
  v14 = [[REMAccountStorage alloc] initWithObjectID:v12 type:a4 name:v11 listIDsMergeableOrdering:v13];

  v15 = [[REMAccountCapabilities alloc] initWithAccountType:a4];
  v16 = [(REMAccountChangeItem *)self initWithSaveRequest:v10 storage:v14 capabilities:v15 observeInitialValues:1];

  return v16;
}

- (id)shallowCopyWithSaveRequest:(id)a3
{
  v5 = a3;
  v6 = [(REMAccountChangeItem *)self storage];

  if (v6)
  {
    v7 = [(REMAccountChangeItem *)self objectID];
    v8 = [v5 _trackedAccountCapabilitiesForObjectID:v7];

    if (v8)
    {
      goto LABEL_16;
    }

    v9 = [(REMAccountChangeItem *)self objectID];

    if (v9)
    {
      if (!v5)
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
    v14 = [(REMAccountChangeItem *)self storage];
    v8 = -[REMAccountCapabilities initWithAccountType:](v13, "initWithAccountType:", [v14 type]);

    if (!v8)
    {
      v8 = +[REMLogStore write];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [REMAccountChangeItem shallowCopyWithSaveRequest:v8];
      }

      v12 = 0;
      goto LABEL_17;
    }

LABEL_16:
    v15 = [REMAccountChangeItem alloc];
    v16 = [(REMAccountChangeItem *)self storage];
    v17 = [(REMAccountChangeItem *)self changedKeysObserver];
    v12 = [(REMAccountChangeItem *)v15 initWithSaveRequest:v5 storage:v16 capabilities:v8 changedKeysObserver:v17];

LABEL_17:
    goto LABEL_18;
  }

  v11 = +[REMLogStore write];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    [REMAccountChangeItem shallowCopyWithSaveRequest:];
  }

  v12 = [(REMAccountChangeItem *)self storage];

  if (v12)
  {
    v12 = 0;
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "self.storage");
  }

LABEL_18:

  return v12;
}

- (REMAccountCapabilities)capabilities
{
  v3 = [(REMAccountChangeItem *)self storage];

  if (v3)
  {
    v4 = [(REMAccountChangeItem *)self saveRequest];
    v5 = [(REMAccountChangeItem *)self objectID];
    v6 = [v4 _trackedAccountCapabilitiesForObjectID:v5];

    if (!v6)
    {
      v7 = +[REMLogStore write];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(REMAccountChangeItem *)self capabilities];
      }

      v8 = [REMAccountCapabilities alloc];
      v9 = [(REMAccountChangeItem *)self storage];
      v6 = -[REMAccountCapabilities initWithAccountType:](v8, "initWithAccountType:", [v9 type]);

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

    v11 = [(REMAccountChangeItem *)self storage];

    if (!v11)
    {
      NSLog(&cfstr_SIsUnexpectedl.isa, "self.storage");
    }

    v6 = 0;
  }

  return v6;
}

- (REMAccountGroupContextChangeItem)groupContext
{
  v3 = [(REMAccountChangeItem *)self capabilities];
  v4 = [v3 supportsGroups];

  if (v4)
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
  v3 = [(REMAccountChangeItem *)self capabilities];
  v4 = [v3 supportsPinnedLists];

  if (v4)
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
  v3 = [(REMAccountChangeItem *)self capabilities];
  v4 = [v3 supportsTemplates];

  if (v4)
  {
    v5 = [[REMAccountTemplatesContextChangeItem alloc] initWithAccountChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(REMAccountChangeItem *)self storage];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = REMAccountChangeItem;
  if ([(REMAccountChangeItem *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(REMAccountChangeItem *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMAccountChangeItem *)self saveRequest];
  v9 = [v8 isSaved];

  if (v9)
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_INFO, "REMSaveRequest.isSaved MUST be FALSE", v12, 2u);
    }
  }

  v11 = [(REMAccountChangeItem *)self storage];
  [v11 setValue:v7 forKey:v6];
}

- (id)resolutionTokenKeyForChangedKey:(id)a3
{
  v3 = __resolutionTokenKeyDenylist;
  v4 = a3;
  if ([v3 containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v5;
}

- (id)changedKeys
{
  v2 = [(REMAccountChangeItem *)self changedKeysObserver];
  v3 = [v2 changedKeys];

  return v3;
}

- (id)accountTypeHost
{
  v2 = [(REMAccountChangeItem *)self storage];
  v3 = [v2 accountTypeHost];

  return v3;
}

- (BOOL)isUnsupported
{
  v2 = [(REMAccountChangeItem *)self storage];
  v3 = [v2 isUnsupported];

  return v3;
}

- (void)addSmartListChangeItem:(id)a3
{
  v4 = a3;
  [v4 assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem addSmartListChangeItem:]"];
  [(REMAccountChangeItem *)self insertMergeableOrderingNode:v4 adjacentToMergeableOrderingNode:0 isAfter:1 withParentMergeableOrderingNode:0];
}

- (void)insertSmartListChangeItem:(id)a3 beforeSmartListChangeItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem insertSmartListChangeItem:beforeSmartListChangeItem:]"];
  [v6 assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem insertSmartListChangeItem:beforeSmartListChangeItem:] (sibling)"];
  [(REMAccountChangeItem *)self insertMergeableOrderingNode:v7 adjacentToMergeableOrderingNode:v6 isAfter:0 withParentMergeableOrderingNode:0];
}

- (void)insertSmartListChangeItem:(id)a3 afterSmartListChangeItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem insertSmartListChangeItem:afterSmartListChangeItem:]"];
  [v6 assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem insertSmartListChangeItem:afterSmartListChangeItem:] (sibling)"];
  [(REMAccountChangeItem *)self insertMergeableOrderingNode:v7 adjacentToMergeableOrderingNode:v6 isAfter:1 withParentMergeableOrderingNode:0];
}

- (void)addMergeableOrderingNode:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem addMergeableOrderingNode:]"];
  }

  [(REMAccountChangeItem *)self insertMergeableOrderingNode:v4 adjacentToMergeableOrderingNode:0 isAfter:1 withParentMergeableOrderingNode:0];
}

- (void)insertMergeableOrderingNode:(id)a3 beforeMergeableOrderingNode:(id)a4
{
  v7 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem insertMergeableOrderingNode:beforeMergeableOrderingNode:]"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 assertIsCustomSmartListWithAction:@"-[REMAccountChangeItem insertMergeableOrderingNode:beforeMergeableOrderingNode:] (sibling)"];
  }

  [(REMAccountChangeItem *)self insertMergeableOrderingNode:v7 adjacentToMergeableOrderingNode:v6 isAfter:0 withParentMergeableOrderingNode:0];
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

  [(REMAccountChangeItem *)self insertMergeableOrderingNode:v7 adjacentToMergeableOrderingNode:v6 isAfter:1 withParentMergeableOrderingNode:0];
}

- (void)undeleteListWithID:(id)a3 usingUndo:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(REMAccountChangeItem *)self listIDsToUndelete];
  v8 = [v7 setByAddingObject:v6];

  [(REMAccountChangeItem *)self setListIDsToUndelete:v8];
  [(REMAccountChangeItem *)self _lowLevelApplyUndoToOrdering:v9];
}

- (void)undeleteSmartListWithID:(id)a3 usingUndo:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(REMAccountChangeItem *)self smartListIDsToUndelete];
  v8 = [v7 setByAddingObject:v6];

  [(REMAccountChangeItem *)self setSmartListIDsToUndelete:v8];
  [(REMAccountChangeItem *)self _lowLevelApplyUndoToOrdering:v9];
}

- (id)mergeableOrderingNodesByOrderingMergeableOrderingNodes:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v4;
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
        v12 = [v11 remObjectID];
        v13 = [v12 uuid];
        v14 = [v13 UUIDString];

        if ([v14 length])
        {
          [v5 setObject:v11 forKeyedSubscript:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v15 = [(REMAccountChangeItem *)self listIDsMergeableOrdering];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __79__REMAccountChangeItem_mergeableOrderingNodesByOrderingMergeableOrderingNodes___block_invoke;
  v24[3] = &unk_1E7508648;
  v16 = v5;
  v25 = v16;
  v17 = v23;
  v26 = v17;
  [v15 enumerateObjectsUsingBlock:v24];

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

- (BOOL)canCopyReminderLosslesslyToAccountChangeItem:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(REMAccountChangeItem *)self type];
  v7 = [v4 type];
  v8 = [v4 accountTypeHost];

  LOBYTE(v6) = [v5 canCopyReminderLosslesslyFromAccountWithType:v6 toAccountWithType:v7 accountTypeHost:v8];
  return v6;
}

- (void)lowLevelAddMergeableOrderingNodeIDToOrdering:(id)a3 withParentMergeableOrderingNode:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __101__REMAccountChangeItem_lowLevelAddMergeableOrderingNodeIDToOrdering_withParentMergeableOrderingNode___block_invoke;
  v7[3] = &unk_1E7508670;
  v8 = v5;
  v6 = v5;
  [(REMAccountChangeItem *)self _editListIDsOrderingUsingBlock:v7];
}

void __101__REMAccountChangeItem_lowLevelAddMergeableOrderingNodeIDToOrdering_withParentMergeableOrderingNode___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) uuid];
  v4 = [v3 UUIDString];
  v5 = [v6 addObject:v4];
}

- (id)lowLevelRemoveMergeableOrderingNodeIDFromOrdering:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(REMAccountChangeItem *)self listIDsMergeableOrdering];
  v6 = [v4 uuid];
  v7 = [v6 UUIDString];
  v8 = [v5 indexOfEqualObject:v7];

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
      v10 = [(REMAccountChangeItem *)self listIDsMergeableOrdering];
      [(REMAccountChangeItem *)v4 lowLevelRemoveMergeableOrderingNodeIDFromOrdering:v10, buf, v9];
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

- (void)test_lowLevelEditOrderingByMovingListObjectID:(id)a3 toTarget:(unint64_t)a4
{
  v6 = a3;
  v7 = [(REMAccountChangeItem *)self listIDsMergeableOrdering];
  v8 = [v6 uuid];
  v9 = [v8 UUIDString];
  v10 = [v7 indexOfEqualObject:v9];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [REMAccountChangeItem test_lowLevelEditOrderingByMovingListObjectID:v6 toTarget:self];
    }

LABEL_8:

    goto LABEL_9;
  }

  v12 = [(REMAccountChangeItem *)self listIDsMergeableOrdering];
  v13 = [v12 count];

  if (v13 <= a4)
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [REMAccountChangeItem test_lowLevelEditOrderingByMovingListObjectID:v6 toTarget:self];
    }

    goto LABEL_8;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__REMAccountChangeItem_test_lowLevelEditOrderingByMovingListObjectID_toTarget___block_invoke;
  v14[3] = &__block_descriptor_48_e41_v16__0__REMMutableCRMergeableOrderedSet_8l;
  v14[4] = a4;
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

+ (id)_emptyListIDsOrderingWithAccountID:(id)a3
{
  v3 = [REMAccountStorage listIDsMergeableOrderingReplicaIDSourceWithAccountID:a3];
  v4 = [REMCRMergeableOrderedSet alloc];
  v5 = [MEMORY[0x1E695DFB8] orderedSet];
  v6 = [(REMCRMergeableOrderedSet *)v4 initWithReplicaIDSource:v3 orderedSet:v5];

  return v6;
}

- (void)_reassignMergeableOrderingNode:(id)a3 withParentListChangeItem:(id)a4
{
  v10 = a3;
  v6 = a4;
  [v10 removeFromParentWithAccountChangeItem:self];
  v7 = [(REMAccountChangeItem *)self objectID];
  [v10 setParentOwnerID:v7];

  v8 = [(REMAccountChangeItem *)self objectID];
  [v10 setAccountID:v8];

  if (v6)
  {
    v9 = [v6 remObjectID];
    [v10 setParentSubContainerID:v9];
  }
}

- (void)_lowLevelAddMergeableOrderingNodeToOrdering:(id)a3 atIndexOfSibling:(id)a4 isAfter:(BOOL)a5 withParentMergeableOrderingNode:(id)a6
{
  v9 = a3;
  v10 = a4;
  v38 = a6;
  v11 = [v9 accountID];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = [v9 accountID];
  v14 = [(REMAccountChangeItem *)self objectID];
  v15 = [v13 isEqual:v14];

  if ((v15 & 1) == 0)
  {
LABEL_13:
    [REMAccountChangeItem _lowLevelAddMergeableOrderingNodeToOrdering:atIndexOfSibling:isAfter:withParentMergeableOrderingNode:];
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0x7FFFFFFFFFFFFFFFLL;
  v16 = [v9 remObjectID];
  v17 = [(REMAccountChangeItem *)self listIDsMergeableOrdering];
  v18 = [v16 uuid];
  v19 = [v18 UUIDString];
  v37 = [v17 indexOfEqualObject:v19];

  v20 = [(REMAccountChangeItem *)self listIDsMergeableOrdering];
  v36 = [v20 count];

  if (!v10)
  {
    goto LABEL_12;
  }

  v21 = [v9 accountID];
  v22 = [v10 accountID];
  if (([v21 isEqual:v22] & 1) == 0)
  {

    v27 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v23 = [v9 parentSubContainerID];
  if (!v23)
  {
    v35 = [v10 parentSubContainerID];
    if (!v35)
    {

LABEL_15:
      v21 = v10;
      v28 = [(REMAccountChangeItem *)self listIDsMergeableOrdering];
      v29 = [v21 remObjectID];
      v30 = [v29 uuid];
      v31 = [v30 UUIDString];
      v32 = [v28 indexOfEqualObject:v31];
      v50[3] = v32;

      v27 = v50[3] == 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_16;
    }
  }

  v24 = [v9 parentSubContainerID];
  v25 = [v10 parentSubContainerID];
  v26 = [v24 isEqual:v25];

  if (v23)
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
  v47 = a5;
  v44 = &v49;
  v45 = v37;
  v33 = v16;
  v41 = v33;
  v48 = v27;
  v34 = v38;
  v42 = v34;
  v43 = self;
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

- (void)_lowLevelApplyUndoToOrdering:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__REMAccountChangeItem__lowLevelApplyUndoToOrdering___block_invoke;
  v6[3] = &unk_1E7508670;
  v7 = v4;
  v5 = v4;
  [(REMAccountChangeItem *)self _editListIDsOrderingUsingBlock:v6];
}

- (void)_editListIDsOrderingUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(REMAccountChangeItem *)self saveRequest];
  v6 = [v5 isSaved];

  if (v6)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_INFO, "REMSaveRequest.isSaved MUST be FALSE", v16, 2u);
    }
  }

  v8 = [(REMAccountChangeItem *)self storage];
  v9 = [v8 listIDsMergeableOrdering];

  v10 = [v9 mutableOrderedSet];
  v11 = [(REMAccountChangeItem *)self saveRequest];
  v12 = [v11 replicaManagerProvider];
  [v10 setReplicaManagerProvider:v12];

  v4[2](v4, v10);
  v13 = [v10 immutableOrderedSet];
  v14 = [(REMAccountChangeItem *)self storage];
  [v14 setListIDsMergeableOrdering:v13];

  v15 = [(REMAccountChangeItem *)self changedKeysObserver];
  [v15 keyDidChange:@"listIDsMergeableOrdering"];
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