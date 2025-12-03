@interface REMListChangeItem
+ (void)initialize;
- (BOOL)_lowLevelAddReminderIDToOrdering:(id)ordering relativeToSiblingID:(id)d isAfter:(BOOL)after;
- (BOOL)isOwnedByMe;
- (BOOL)isPinned;
- (BOOL)isShared;
- (BOOL)isUnsupported;
- (BOOL)optimisticallyInsertReminderIDToOrderingForReminderChangeItemBeingSaved:(id)saved;
- (BOOL)respondsToSelector:(SEL)selector;
- (NSString)description;
- (REMAccountCapabilities)accountCapabilities;
- (REMListAppearanceContextChangeItem)appearanceContext;
- (REMListAutoCategorizeContextChangeItem)autoCategorizeContextChangeItem;
- (REMListCalDAVNotificationContextChangeItem)calDAVNotificationContext;
- (REMListChangeItem)initWithObjectID:(id)d name:(id)name insertIntoListSublistContextChangeItem:(id)item;
- (REMListChangeItem)initWithSaveRequest:(id)request storage:(id)storage accountCapabilities:(id)capabilities changedKeysObserver:(id)observer;
- (REMListGroceryContextChangeItem)groceryContextChangeItem;
- (REMListSectionContextChangeItem)sectionsContextChangeItem;
- (REMListShareeContextChangeItem)shareeContext;
- (REMListSublistContextChangeItem)sublistContext;
- (id)_testingOnly_listShareeContextChangeItem;
- (id)changedKeys;
- (id)ekColor;
- (id)lowLevelRemoveReminderIDFromOrdering:(id)ordering;
- (id)removeFromAccountAllowingUndo;
- (id)resolutionTokenKeyForChangedKey:(id)key;
- (id)shallowCopyWithSaveRequest:(id)request;
- (id)valueForUndefinedKey:(id)key;
- (void)_editReminderIDsOrderingUsingBlock:(id)block;
- (void)_lowLevelAddReminderChangeItemToOrdering:(id)ordering atIndexOfSibling:(id)sibling isAfter:(BOOL)after withParent:(id)parent;
- (void)_lowLevelApplyUndoToOrdering:(id)ordering;
- (void)_reassignReminderChangeItem:(id)item withParentReminderChangeItem:(id)changeItem;
- (void)_testingOnly_setReminderIDsMergeableOrder:(id)order;
- (void)accountCapabilities;
- (void)copyListDataFrom:(id)from;
- (void)lowLevelAddReminderIDToOrdering:(id)ordering withParentReminderChangeItem:(id)item;
- (void)setDaDisplayOrder:(int64_t)order;
- (void)setIsPinned:(BOOL)pinned;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)undeleteReminderWithID:(id)d usingUndo:(id)undo;
- (void)undeleteRemindersWithoutUndoWithIDs:(id)ds;
- (void)undeleteRemindersWithoutUndoWithIDs:(id)ds isCalDAV:(BOOL)v;
@end

@implementation REMListChangeItem

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = __sKeysToObserve_3;
    __sKeysToObserve_3 = &unk_1F0D99A30;

    __resolutionTokenKeyDenylist_3 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D99A48];

    MEMORY[0x1EEE66BB8]();
  }
}

- (REMListChangeItem)initWithSaveRequest:(id)request storage:(id)storage accountCapabilities:(id)capabilities changedKeysObserver:(id)observer
{
  requestCopy = request;
  storageCopy = storage;
  capabilitiesCopy = capabilities;
  observerCopy = observer;
  if (storageCopy)
  {
    v22.receiver = self;
    v22.super_class = REMListChangeItem;
    v15 = [(REMListChangeItem *)&v22 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_saveRequest, request);
      objc_storeStrong(&v16->_storage, storage);
      objc_storeStrong(&v16->_changedKeysObserver, observer);
      saveRequest = v16->_saveRequest;
      objectID = [(REMListStorage *)v16->_storage objectID];
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
      [REMReminderChangeItem initWithSaveRequest:storage:accountCapabilities:changedKeysObserver:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "storage");
    selfCopy = 0;
  }

  return selfCopy;
}

- (REMListChangeItem)initWithObjectID:(id)d name:(id)name insertIntoListSublistContextChangeItem:(id)item
{
  itemCopy = item;
  nameCopy = name;
  dCopy = d;
  listChangeItem = [itemCopy listChangeItem];
  saveRequest = [listChangeItem saveRequest];
  v13 = [saveRequest _updateAccountWithListChangeItem:listChangeItem];

  listChangeItem2 = [itemCopy listChangeItem];

  v15 = [(REMListChangeItem *)self initWithObjectID:dCopy name:nameCopy insertIntoAccountChangeItem:v13 isGroup:0 withParentList:listChangeItem2];
  return v15;
}

- (REMAccountCapabilities)accountCapabilities
{
  storage = [(REMListChangeItem *)self storage];
  if (!storage)
  {
    goto LABEL_3;
  }

  v4 = storage;
  saveRequest = [(REMListChangeItem *)self saveRequest];
  objectID = [(REMListChangeItem *)self objectID];
  v7 = [saveRequest _trackedAccountCapabilitiesForObjectID:objectID];

  if (!v7)
  {
LABEL_3:
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(REMListChangeItem *)self accountCapabilities];
    }

    v7 = [[REMAccountCapabilities alloc] initWithAccountType:0];
  }

  return v7;
}

- (id)shallowCopyWithSaveRequest:(id)request
{
  requestCopy = request;
  storage = [(REMListChangeItem *)self storage];

  if (storage)
  {
    objectID = [(REMListChangeItem *)self objectID];
    v8 = [requestCopy _trackedAccountCapabilitiesForObjectID:objectID];

    if (v8)
    {
LABEL_16:
      v13 = [REMListChangeItem alloc];
      storage2 = [(REMListChangeItem *)self storage];
      changedKeysObserver = [(REMListChangeItem *)self changedKeysObserver];
      storage3 = [(REMListChangeItem *)v13 initWithSaveRequest:requestCopy storage:storage2 accountCapabilities:v8 changedKeysObserver:changedKeysObserver];

      goto LABEL_17;
    }

    objectID2 = [(REMListChangeItem *)self objectID];

    if (objectID2)
    {
      if (!requestCopy)
      {
LABEL_15:
        v8 = [[REMAccountCapabilities alloc] initWithAccountType:0];
        goto LABEL_16;
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
        [REMReminderChangeItem shallowCopyWithSaveRequest:];
      }
    }

    goto LABEL_15;
  }

  v11 = +[REMLogStore write];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    [REMReminderChangeItem shallowCopyWithSaveRequest:];
  }

  storage3 = [(REMListChangeItem *)self storage];

  if (storage3)
  {
    storage3 = 0;
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "self.storage");
  }

LABEL_17:

  return storage3;
}

- (REMListAppearanceContextChangeItem)appearanceContext
{
  accountCapabilities = [(REMListChangeItem *)self accountCapabilities];
  supportsListAppearance = [accountCapabilities supportsListAppearance];

  if (supportsListAppearance)
  {
    v5 = [[REMListAppearanceContextChangeItem alloc] initWithListChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (REMListSublistContextChangeItem)sublistContext
{
  if ([(REMListChangeItem *)self isGroup])
  {
    v3 = [[REMListSublistContextChangeItem alloc] initWithListChangeItem:self];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (REMListCalDAVNotificationContextChangeItem)calDAVNotificationContext
{
  accountCapabilities = [(REMListChangeItem *)self accountCapabilities];
  supportsCalDAVNotifications = [accountCapabilities supportsCalDAVNotifications];

  if (supportsCalDAVNotifications)
  {
    v5 = [[REMListCalDAVNotificationContextChangeItem alloc] initWithListChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (REMListShareeContextChangeItem)shareeContext
{
  accountCapabilities = [(REMListChangeItem *)self accountCapabilities];
  supportsListShareesMutation = [accountCapabilities supportsListShareesMutation];

  if (supportsListShareesMutation)
  {
    v5 = [[REMListShareeContextChangeItem alloc] initWithListChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storage = [(REMListChangeItem *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, storage];

  return v6;
}

- (id)removeFromAccountAllowingUndo
{
  parentAccountID = [(REMListChangeItem *)self parentAccountID];

  if (parentAccountID)
  {
    saveRequest = [(REMListChangeItem *)self saveRequest];
    v5 = [saveRequest _updateAccountWithListChangeItem:self];

    objectID = [(REMListChangeItem *)self objectID];
    parentAccountID = [v5 lowLevelRemoveMergeableOrderingNodeIDFromOrdering:objectID];
  }

  [(REMListChangeItem *)self setParentAccountID:0];
  [(REMListChangeItem *)self setParentListID:0];

  return parentAccountID;
}

- (void)undeleteReminderWithID:(id)d usingUndo:(id)undo
{
  undoCopy = undo;
  dCopy = d;
  reminderIDsToUndelete = [(REMListChangeItem *)self reminderIDsToUndelete];
  v8 = [reminderIDsToUndelete setByAddingObject:dCopy];

  [(REMListChangeItem *)self setReminderIDsToUndelete:v8];
  [(REMListChangeItem *)self _lowLevelApplyUndoToOrdering:undoCopy];
}

- (BOOL)optimisticallyInsertReminderIDToOrderingForReminderChangeItemBeingSaved:(id)saved
{
  savedCopy = saved;
  saveRequest = [savedCopy saveRequest];
  saveRequest2 = [(REMListChangeItem *)self saveRequest];

  if (saveRequest == saveRequest2)
  {
    objectID = +[REMLogStore write];
    if (os_log_type_enabled(objectID, OS_LOG_TYPE_FAULT))
    {
      [REMListChangeItem optimisticallyInsertReminderIDToOrderingForReminderChangeItemBeingSaved:?];
    }

    v14 = 0;
  }

  else
  {
    objectID = [savedCopy objectID];
    reminderIDsMergeableOrdering = [(REMListChangeItem *)self reminderIDsMergeableOrdering];
    v9 = [reminderIDsMergeableOrdering indexOfObject:objectID];

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      listChangeItem = [savedCopy listChangeItem];
      reminderIDsMergeableOrdering2 = [listChangeItem reminderIDsMergeableOrdering];

      v12 = [reminderIDsMergeableOrdering2 indexOfObject:objectID];
      if (v12)
      {
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = +[REMLogStore write];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            [REMListChangeItem optimisticallyInsertReminderIDToOrderingForReminderChangeItemBeingSaved:];
          }

LABEL_20:

          v14 = 0;
          goto LABEL_21;
        }

        v16 = v12 - 1;
        if (v12 < 1)
        {
          v13 = +[REMLogStore write];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            [REMListChangeItem optimisticallyInsertReminderIDToOrderingForReminderChangeItemBeingSaved:];
          }

          goto LABEL_20;
        }

        v15 = [reminderIDsMergeableOrdering2 objectAtIndexedSubscript:v16];
        selfCopy2 = self;
        v18 = objectID;
        v19 = v15;
        v20 = 1;
      }

      else
      {
        if ([reminderIDsMergeableOrdering2 count] < 2)
        {
          v15 = 0;
        }

        else
        {
          v15 = [reminderIDsMergeableOrdering2 objectAtIndexedSubscript:1];
        }

        selfCopy2 = self;
        v18 = objectID;
        v19 = v15;
        v20 = 0;
      }

      v14 = [(REMListChangeItem *)selfCopy2 _lowLevelAddReminderIDToOrdering:v18 relativeToSiblingID:v19 isAfter:v20];

LABEL_21:
      goto LABEL_22;
    }

    v14 = 1;
  }

LABEL_22:

  return v14;
}

- (REMListSectionContextChangeItem)sectionsContextChangeItem
{
  accountCapabilities = [(REMListChangeItem *)self accountCapabilities];
  supportsSections = [accountCapabilities supportsSections];

  if (supportsSections)
  {
    v5 = [[REMListSectionContextChangeItem alloc] initWithListChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (REMListGroceryContextChangeItem)groceryContextChangeItem
{
  accountCapabilities = [(REMListChangeItem *)self accountCapabilities];
  supportsSections = [accountCapabilities supportsSections];

  if (supportsSections)
  {
    v5 = [[REMListGroceryContextChangeItem alloc] initWithListChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (REMListAutoCategorizeContextChangeItem)autoCategorizeContextChangeItem
{
  accountCapabilities = [(REMListChangeItem *)self accountCapabilities];
  supportsSections = [accountCapabilities supportsSections];

  if (supportsSections)
  {
    v5 = [[REMListAutoCategorizeContextChangeItem alloc] initWithListChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)undeleteRemindersWithoutUndoWithIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    reminderIDsToUndelete = [(REMListChangeItem *)self reminderIDsToUndelete];
    v6 = [reminderIDsToUndelete setByAddingObjectsFromArray:dsCopy];
    [(REMListChangeItem *)self setReminderIDsToUndelete:v6];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__REMListChangeItem_undeleteRemindersWithoutUndoWithIDs___block_invoke;
    v7[3] = &unk_1E7509728;
    v8 = dsCopy;
    [(REMListChangeItem *)self _editReminderIDsOrderingUsingBlock:v7];
  }
}

void __57__REMListChangeItem_undeleteRemindersWithoutUndoWithIDs___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{*(*(&v10 + 1) + 8 * v8++), v10}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)undeleteRemindersWithoutUndoWithIDs:(id)ds isCalDAV:(BOOL)v
{
  vCopy = v;
  [(REMListChangeItem *)self undeleteRemindersWithoutUndoWithIDs:ds];
  if (vCopy)
  {

    [(REMListChangeItem *)self setRemindersICSDisplayOrderChanged:1];
  }
}

- (void)lowLevelAddReminderIDToOrdering:(id)ordering withParentReminderChangeItem:(id)item
{
  v28 = *MEMORY[0x1E69E9840];
  orderingCopy = ordering;
  itemCopy = item;
  v8 = itemCopy;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (itemCopy)
  {
    v10 = itemCopy;
    reminderIDsMergeableOrdering = [(REMListChangeItem *)self reminderIDsMergeableOrdering];
    objectID = [v10 objectID];
    v13 = [reminderIDsMergeableOrdering indexOfObject:objectID];

    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = +[REMLogStore write];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        objectID2 = [(REMListChangeItem *)self objectID];
        objectID3 = [v10 objectID];
        *buf = 138412802;
        v23 = objectID2;
        v24 = 2112;
        v25 = orderingCopy;
        v26 = 2112;
        v27 = objectID3;
        _os_log_fault_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_FAULT, "Tried to add a new subtask with a parent reminder but could not find the parent reminder in the list's reminder IDs ordering {listID: %@, reminderID: %@, parentReminderID: %@}.", buf, 0x20u);
      }
    }

    else
    {
      v9 = v13 + 1;
    }
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __82__REMListChangeItem_lowLevelAddReminderIDToOrdering_withParentReminderChangeItem___block_invoke;
  v19[3] = &unk_1E7509750;
  v20 = orderingCopy;
  v21 = v9;
  v15 = orderingCopy;
  [(REMListChangeItem *)self _editReminderIDsOrderingUsingBlock:v19];

  v16 = *MEMORY[0x1E69E9840];
}

void __82__REMListChangeItem_lowLevelAddReminderIDToOrdering_withParentReminderChangeItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 40);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = a3;
    v8 = a2;
    v6 = [v8 count];
    [v8 addObject:*(a1 + 32)];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = a3;
    [a2 insertObject:v9 atIndex:v6];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v6];
  [a3 setObject:v11 forKey:*(a1 + 32)];
}

- (id)lowLevelRemoveReminderIDFromOrdering:(id)ordering
{
  v23 = *MEMORY[0x1E69E9840];
  orderingCopy = ordering;
  reminderIDsMergeableOrdering = [(REMListChangeItem *)self reminderIDsMergeableOrdering];
  v6 = [reminderIDsMergeableOrdering indexOfObject:orderingCopy];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      reminderIDsMergeableOrdering2 = [(REMListChangeItem *)self reminderIDsMergeableOrdering];
      [(REMListChangeItem *)orderingCopy lowLevelRemoveReminderIDFromOrdering:reminderIDsMergeableOrdering2, buf, v7];
    }
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__REMListChangeItem_lowLevelRemoveReminderIDFromOrdering___block_invoke;
    v12[3] = &unk_1E75097A0;
    v15 = v6;
    v13 = orderingCopy;
    v14 = &v16;
    [(REMListChangeItem *)self _editReminderIDsOrderingUsingBlock:v12];
    v7 = v13;
  }

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void __58__REMListChangeItem_lowLevelRemoveReminderIDFromOrdering___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(REMMutableCRUndo);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __58__REMListChangeItem_lowLevelRemoveReminderIDFromOrdering___block_invoke_2;
  v11 = &unk_1E7509778;
  v13 = *(a1 + 48);
  v12 = *(a1 + 32);
  [(REMMutableCRUndo *)v4 addUndoBlock:&v8];
  [v3 removeObjectAtIndex:{*(a1 + 48), v8, v9, v10, v11}];

  v5 = [(REMMutableCRUndo *)v4 immutableCopy];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __58__REMListChangeItem_lowLevelRemoveReminderIDFromOrdering___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 count];
  if (v3 >= *(a1 + 40))
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = v3;
  }

  [v5 insertObject:*(a1 + 32) atIndex:v4];
}

- (void)_lowLevelApplyUndoToOrdering:(id)ordering
{
  orderingCopy = ordering;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__REMListChangeItem__lowLevelApplyUndoToOrdering___block_invoke;
  v6[3] = &unk_1E7509728;
  v7 = orderingCopy;
  v5 = orderingCopy;
  [(REMListChangeItem *)self _editReminderIDsOrderingUsingBlock:v6];
}

void __50__REMListChangeItem__lowLevelApplyUndoToOrdering___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 32) undoBlocks];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8++) + 16))();
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)_lowLevelAddReminderIDToOrdering:(id)ordering relativeToSiblingID:(id)d isAfter:(BOOL)after
{
  afterCopy = after;
  orderingCopy = ordering;
  dCopy = d;
  if (!dCopy)
  {
    if (afterCopy)
    {
      reminderIDsMergeableOrdering = [(REMListChangeItem *)self reminderIDsMergeableOrdering];
      v14 = [reminderIDsMergeableOrdering count];
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_8;
  }

  reminderIDsMergeableOrdering2 = [(REMListChangeItem *)self reminderIDsMergeableOrdering];
  v11 = [reminderIDsMergeableOrdering2 indexOfObject:dCopy];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v11 + afterCopy;
LABEL_8:
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__REMListChangeItem__lowLevelAddReminderIDToOrdering_relativeToSiblingID_isAfter___block_invoke;
    v16[3] = &unk_1E7509750;
    v17 = orderingCopy;
    v18 = v14;
    [(REMListChangeItem *)self _editReminderIDsOrderingUsingBlock:v16];

    v12 = 1;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

void __82__REMListChangeItem__lowLevelAddReminderIDToOrdering_relativeToSiblingID_isAfter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  [a2 insertObject:v5 atIndex:v6];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(a1 + 40)];
  [v7 setObject:v8 forKey:*(a1 + 32)];
}

- (id)changedKeys
{
  changedKeysObserver = [(REMListChangeItem *)self changedKeysObserver];
  changedKeys = [changedKeysObserver changedKeys];

  return changedKeys;
}

- (id)ekColor
{
  storage = [(REMListChangeItem *)self storage];
  ekColor = [storage ekColor];

  return ekColor;
}

- (void)setDaDisplayOrder:(int64_t)order
{
  storage = [(REMListChangeItem *)self storage];
  daDisplayOrder = [storage daDisplayOrder];

  if (daDisplayOrder != order)
  {
    saveRequest = [(REMListChangeItem *)self saveRequest];
    v8 = [saveRequest _updateAccountWithListChangeItem:self];

    if (v8)
    {
      [v8 setListsDADisplayOrderChanged:1];
      storage2 = [(REMListChangeItem *)self storage];
      [storage2 setDaDisplayOrder:order];

      changedKeysObserver = [(REMListChangeItem *)self changedKeysObserver];
      [changedKeysObserver keyDidChange:@"daDisplayOrder"];
    }

    else
    {
      [REMListChangeItem setDaDisplayOrder:?];
      changedKeysObserver = v11;
    }
  }
}

- (BOOL)isPinned
{
  pinnedDate = [(REMListChangeItem *)self pinnedDate];
  v3 = pinnedDate != 0;

  return v3;
}

- (void)setIsPinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  accountCapabilities = [(REMListChangeItem *)self accountCapabilities];
  supportsPinnedLists = [accountCapabilities supportsPinnedLists];

  if (supportsPinnedLists)
  {
    if ([(REMListChangeItem *)self isPinned]!= pinnedCopy)
    {
      if (pinnedCopy)
      {
        v8 = [MEMORY[0x1E695DF00] now];
        [(REMListChangeItem *)self setPinnedDate:v8];
      }

      else
      {

        [(REMListChangeItem *)self setPinnedDate:0];
      }
    }
  }

  else
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [REMListChangeItem setIsPinned:?];
    }
  }
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  storage = [(REMListChangeItem *)self storage];
  v6 = [storage valueForKey:keyCopy];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = REMListChangeItem;
  if ([(REMListChangeItem *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    storage = [(REMListChangeItem *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  saveRequest = [(REMListChangeItem *)self saveRequest];
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

  storage = [(REMListChangeItem *)self storage];
  [storage setValue:valueCopy forKey:keyCopy];
}

- (void)_reassignReminderChangeItem:(id)item withParentReminderChangeItem:(id)changeItem
{
  itemCopy = item;
  changeItemCopy = changeItem;
  [itemCopy removeFromList];
  objectID = [(REMListChangeItem *)self objectID];
  [itemCopy setListID:objectID];

  accountID = [(REMListChangeItem *)self accountID];
  [itemCopy setAccountID:accountID];

  if (changeItemCopy)
  {
    objectID2 = [changeItemCopy objectID];
    [itemCopy setParentReminderID:objectID2];
  }
}

- (void)_lowLevelAddReminderChangeItemToOrdering:(id)ordering atIndexOfSibling:(id)sibling isAfter:(BOOL)after withParent:(id)parent
{
  afterCopy = after;
  orderingCopy = ordering;
  siblingCopy = sibling;
  parentCopy = parent;
  listID = [orderingCopy listID];
  if (!listID)
  {
    goto LABEL_23;
  }

  v14 = listID;
  listID2 = [orderingCopy listID];
  objectID = [(REMListChangeItem *)self objectID];
  v17 = [listID2 isEqual:objectID];

  if ((v17 & 1) == 0)
  {
LABEL_23:
    [REMListChangeItem _lowLevelAddReminderChangeItemToOrdering:atIndexOfSibling:isAfter:withParent:];
  }

  objectID2 = [orderingCopy objectID];
  v19 = siblingCopy;
  if (!v19)
  {
    goto LABEL_15;
  }

  listID3 = [orderingCopy listID];
  listID4 = [v19 listID];
  v22 = [listID3 isEqual:listID4];

  if (!v22)
  {
    goto LABEL_15;
  }

  parentReminderID = [orderingCopy parentReminderID];
  if (parentReminderID || ([v19 parentReminderID], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    parentReminderID2 = [orderingCopy parentReminderID];
    parentReminderID3 = [v19 parentReminderID];
    v26 = [parentReminderID2 isEqual:parentReminderID3];

    if (parentReminderID)
    {

      if (!v26)
      {
        goto LABEL_15;
      }
    }

    else
    {

      if ((v26 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  reminderIDsMergeableOrdering = [(REMListChangeItem *)self reminderIDsMergeableOrdering];
  objectID3 = [v19 objectID];
  v29 = [reminderIDsMergeableOrdering indexOfObject:objectID3];

  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v31 = v29 + afterCopy;
    goto LABEL_21;
  }

  v30 = +[REMLogStore write];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
  {
    [REMListChangeItem _lowLevelAddReminderChangeItemToOrdering:atIndexOfSibling:isAfter:withParent:];
  }

LABEL_15:
  v31 = 0x7FFFFFFFFFFFFFFFLL;
  if (parentCopy)
  {
    v32 = parentCopy;
    reminderIDsMergeableOrdering2 = [(REMListChangeItem *)self reminderIDsMergeableOrdering];
    objectID4 = [v32 objectID];

    v35 = [reminderIDsMergeableOrdering2 indexOfObject:objectID4];
    if (v35 != 0x7FFFFFFFFFFFFFFFLL && !afterCopy)
    {
      v31 = v35 + 1;
    }
  }

LABEL_21:
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __98__REMListChangeItem__lowLevelAddReminderChangeItemToOrdering_atIndexOfSibling_isAfter_withParent___block_invoke;
  v39[3] = &unk_1E75097C8;
  v40 = objectID2;
  v41 = v31;
  v42 = afterCopy;
  v37 = objectID2;
  [(REMListChangeItem *)self _editReminderIDsOrderingUsingBlock:v39];
}

void __98__REMListChangeItem__lowLevelAddReminderChangeItemToOrdering_atIndexOfSibling_isAfter_withParent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(a1 + 48) == 1)
    {
      v6 = [v8 count];
      [v8 addObject:*(a1 + 32)];
    }

    else
    {
      [v8 insertObject:*(a1 + 32) atIndex:0];
      v6 = 0;
    }
  }

  else
  {
    [v8 insertObject:*(a1 + 32) atIndex:*(a1 + 40)];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v6];
  [v5 setObject:v7 forKey:*(a1 + 32)];
}

- (void)_editReminderIDsOrderingUsingBlock:(id)block
{
  v30 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  saveRequest = [(REMListChangeItem *)self saveRequest];
  isSaved = [saveRequest isSaved];

  if (isSaved)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_INFO, "REMSaveRequest.isSaved MUST be FALSE", &v24, 2u);
    }
  }

  saveRequest2 = [(REMListChangeItem *)self saveRequest];
  applyCRDTsWithoutMerging = [saveRequest2 applyCRDTsWithoutMerging];

  if ((applyCRDTsWithoutMerging & 1) == 0)
  {
    storage = [(REMListChangeItem *)self storage];
    reminderIDsMergeableOrdering = [storage reminderIDsMergeableOrdering];

    v12 = [reminderIDsMergeableOrdering mutableCopy];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    blockCopy[2](blockCopy, v12, dictionary);
    v14 = [MEMORY[0x1E695DFB8] orderedSetWithOrderedSet:v12];
    storage2 = [(REMListChangeItem *)self storage];
    [storage2 setReminderIDsMergeableOrdering:v14];

    v16 = +[REMLogStore write];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      objectID = [(REMListChangeItem *)self objectID];
      saveRequest3 = [(REMListChangeItem *)self saveRequest];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
      v24 = 138412802;
      v25 = objectID;
      v26 = 2112;
      v27 = saveRequest3;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_INFO, "REMListChangeItem updated storage.reminderIDsMergeableOrdering {objectID: %@, saveReq: %@, ordering.count: %@}", &v24, 0x20u);
    }

    if ([dictionary count])
    {
      reminderIDsOrderingHints = [(REMListChangeItem *)self reminderIDsOrderingHints];
      v21 = [reminderIDsOrderingHints mutableCopy];

      [v21 addEntriesFromDictionary:dictionary];
      [(REMListChangeItem *)self setReminderIDsOrderingHints:v21];
    }

    changedKeysObserver = [(REMListChangeItem *)self changedKeysObserver];
    [changedKeysObserver keyDidChange:@"reminderIDsMergeableOrdering"];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)resolutionTokenKeyForChangedKey:(id)key
{
  v3 = __resolutionTokenKeyDenylist_3;
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

- (BOOL)isShared
{
  selfCopy = self;
  sharees = [(REMListChangeItem *)self sharees];
  LOBYTE(selfCopy) = +[REMList isSharedWithShareeCount:sharingStatus:](REMList, "isSharedWithShareeCount:sharingStatus:", [sharees count], -[REMListChangeItem sharingStatus](selfCopy, "sharingStatus"));

  return selfCopy;
}

- (BOOL)isOwnedByMe
{
  sharingStatus = [(REMListChangeItem *)self sharingStatus];

  return [REMList isOwnedByMeWithSharingStatus:sharingStatus];
}

- (BOOL)isUnsupported
{
  storage = [(REMListChangeItem *)self storage];
  isUnsupported = [storage isUnsupported];

  return isUnsupported;
}

- (void)copyListDataFrom:(id)from
{
  fromCopy = from;
  name = [fromCopy name];
  [(REMListChangeItem *)self setName:name];

  color = [fromCopy color];
  [(REMListChangeItem *)self setColor:color];

  -[REMListChangeItem setDaDisplayOrder:](self, "setDaDisplayOrder:", [fromCopy daDisplayOrder]);
  lastUserAccessDate = [fromCopy lastUserAccessDate];
  [(REMListChangeItem *)self setLastUserAccessDate:lastUserAccessDate];

  sortingStyle = [fromCopy sortingStyle];
  [(REMListChangeItem *)self setSortingStyle:sortingStyle];

  pinnedDate = [fromCopy pinnedDate];
  [(REMListChangeItem *)self setPinnedDate:pinnedDate];

  if ([fromCopy isGroup])
  {
    accountCapabilities = [(REMListChangeItem *)self accountCapabilities];
    supportsGroups = [accountCapabilities supportsGroups];

    if ((supportsGroups & 1) == 0)
    {
      v12 = +[REMLogStore write];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [REMListChangeItem(AccountDataMoving) copyListDataFrom:fromCopy];
      }
    }
  }
}

- (void)_testingOnly_setReminderIDsMergeableOrder:(id)order
{
  v4 = [MEMORY[0x1E695DFB8] orderedSetWithOrderedSet:order];
  storage = [(REMListChangeItem *)self storage];
  [storage setReminderIDsMergeableOrdering:v4];

  changedKeysObserver = [(REMListChangeItem *)self changedKeysObserver];
  [changedKeysObserver keyDidChange:@"reminderIDsMergeableOrdering"];
}

- (id)_testingOnly_listShareeContextChangeItem
{
  v2 = [[REMListShareeContextChangeItem alloc] initWithListChangeItem:self];

  return v2;
}

- (void)initWithObjectID:name:insertIntoAccountChangeItem:isGroup:withParentList:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3(&dword_19A0DB000, v0, v1, "Tried to initialize a nested group {listChangeItem: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)accountCapabilities
{
  v8 = *MEMORY[0x1E69E9840];
  objectID = [self objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)optimisticallyInsertReminderIDToOrderingForReminderChangeItemBeingSaved:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3(&dword_19A0DB000, v0, v1, "objectID of reminderChangeItem does not exist in its listChangeItem.reminderIDsMergeableOrdering {objectID: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)optimisticallyInsertReminderIDToOrderingForReminderChangeItemBeingSaved:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3(&dword_19A0DB000, v0, v1, "Unexpected index of objectID in reminderIDsMergeableOrdering {index: %ld}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)optimisticallyInsertReminderIDToOrderingForReminderChangeItemBeingSaved:(void *)a1 .cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 saveRequest];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)insertReminderChangeItem:adjacentToReminderChangeItem:isAfter:withParentReminderChangeItem:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [v1 accountID];
  v3 = [v0 accountID];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)insertReminderChangeItem:(uint64_t)a1 adjacentToReminderChangeItem:(void *)a2 isAfter:withParentReminderChangeItem:.cold.2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 accountID];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)insertReminderChangeItem:(uint64_t)a1 adjacentToReminderChangeItem:(void *)a2 isAfter:withParentReminderChangeItem:.cold.3(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [a2 accountID];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)lowLevelRemoveReminderIDFromOrdering:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_19A0DB000, log, OS_LOG_TYPE_FAULT, "Tried to remove reminder not present in ordering list {objectID: %@, ordering: %@}", buf, 0x16u);
}

- (void)setDaDisplayOrder:(NSObject *)a1 .cold.1(NSObject **a1)
{
  v2 = +[REMLogStore write];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_19A0DB000, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (accountChangeItem == nil) -- accountChangeItem is nil. Unable to update account when setting daDisplayOrder.", v3, 2u);
  }

  *a1 = v2;
}

- (void)setDaIsNotificationsCollection:.cold.1()
{
  v0 = +[REMLogStore write];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v1, v2, v3, v4, v5, 2u);
  }
}

- (void)setIsPinned:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_lowLevelAddReminderChangeItemToOrdering:atIndexOfSibling:isAfter:withParent:.cold.1()
{
  v0 = +[REMLogStore write];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v1, v2, v3, v4, v5, 2u);
  }
}

- (void)_lowLevelAddReminderChangeItemToOrdering:atIndexOfSibling:isAfter:withParent:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3(&dword_19A0DB000, v0, v1, "Failed to find the insert after index of the given sibling reminder -- Appending to the end {objectID: %@}.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end