@interface REMListChangeItem
+ (void)initialize;
- (BOOL)_lowLevelAddReminderIDToOrdering:(id)a3 relativeToSiblingID:(id)a4 isAfter:(BOOL)a5;
- (BOOL)isOwnedByMe;
- (BOOL)isPinned;
- (BOOL)isShared;
- (BOOL)isUnsupported;
- (BOOL)optimisticallyInsertReminderIDToOrderingForReminderChangeItemBeingSaved:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (NSString)description;
- (REMAccountCapabilities)accountCapabilities;
- (REMListAppearanceContextChangeItem)appearanceContext;
- (REMListAutoCategorizeContextChangeItem)autoCategorizeContextChangeItem;
- (REMListCalDAVNotificationContextChangeItem)calDAVNotificationContext;
- (REMListChangeItem)initWithObjectID:(id)a3 name:(id)a4 insertIntoListSublistContextChangeItem:(id)a5;
- (REMListChangeItem)initWithSaveRequest:(id)a3 storage:(id)a4 accountCapabilities:(id)a5 changedKeysObserver:(id)a6;
- (REMListGroceryContextChangeItem)groceryContextChangeItem;
- (REMListSectionContextChangeItem)sectionsContextChangeItem;
- (REMListShareeContextChangeItem)shareeContext;
- (REMListSublistContextChangeItem)sublistContext;
- (id)_testingOnly_listShareeContextChangeItem;
- (id)changedKeys;
- (id)ekColor;
- (id)lowLevelRemoveReminderIDFromOrdering:(id)a3;
- (id)removeFromAccountAllowingUndo;
- (id)resolutionTokenKeyForChangedKey:(id)a3;
- (id)shallowCopyWithSaveRequest:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (void)_editReminderIDsOrderingUsingBlock:(id)a3;
- (void)_lowLevelAddReminderChangeItemToOrdering:(id)a3 atIndexOfSibling:(id)a4 isAfter:(BOOL)a5 withParent:(id)a6;
- (void)_lowLevelApplyUndoToOrdering:(id)a3;
- (void)_reassignReminderChangeItem:(id)a3 withParentReminderChangeItem:(id)a4;
- (void)_testingOnly_setReminderIDsMergeableOrder:(id)a3;
- (void)accountCapabilities;
- (void)copyListDataFrom:(id)a3;
- (void)lowLevelAddReminderIDToOrdering:(id)a3 withParentReminderChangeItem:(id)a4;
- (void)setDaDisplayOrder:(int64_t)a3;
- (void)setIsPinned:(BOOL)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)undeleteReminderWithID:(id)a3 usingUndo:(id)a4;
- (void)undeleteRemindersWithoutUndoWithIDs:(id)a3;
- (void)undeleteRemindersWithoutUndoWithIDs:(id)a3 isCalDAV:(BOOL)a4;
@end

@implementation REMListChangeItem

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = __sKeysToObserve_3;
    __sKeysToObserve_3 = &unk_1F0D99A30;

    __resolutionTokenKeyDenylist_3 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D99A48];

    MEMORY[0x1EEE66BB8]();
  }
}

- (REMListChangeItem)initWithSaveRequest:(id)a3 storage:(id)a4 accountCapabilities:(id)a5 changedKeysObserver:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v12)
  {
    v22.receiver = self;
    v22.super_class = REMListChangeItem;
    v15 = [(REMListChangeItem *)&v22 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_saveRequest, a3);
      objc_storeStrong(&v16->_storage, a4);
      objc_storeStrong(&v16->_changedKeysObserver, a6);
      saveRequest = v16->_saveRequest;
      v18 = [(REMListStorage *)v16->_storage objectID];
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
      [REMReminderChangeItem initWithSaveRequest:storage:accountCapabilities:changedKeysObserver:];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "storage");
    v19 = 0;
  }

  return v19;
}

- (REMListChangeItem)initWithObjectID:(id)a3 name:(id)a4 insertIntoListSublistContextChangeItem:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v8 listChangeItem];
  v12 = [v11 saveRequest];
  v13 = [v12 _updateAccountWithListChangeItem:v11];

  v14 = [v8 listChangeItem];

  v15 = [(REMListChangeItem *)self initWithObjectID:v10 name:v9 insertIntoAccountChangeItem:v13 isGroup:0 withParentList:v14];
  return v15;
}

- (REMAccountCapabilities)accountCapabilities
{
  v3 = [(REMListChangeItem *)self storage];
  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = v3;
  v5 = [(REMListChangeItem *)self saveRequest];
  v6 = [(REMListChangeItem *)self objectID];
  v7 = [v5 _trackedAccountCapabilitiesForObjectID:v6];

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

- (id)shallowCopyWithSaveRequest:(id)a3
{
  v5 = a3;
  v6 = [(REMListChangeItem *)self storage];

  if (v6)
  {
    v7 = [(REMListChangeItem *)self objectID];
    v8 = [v5 _trackedAccountCapabilitiesForObjectID:v7];

    if (v8)
    {
LABEL_16:
      v13 = [REMListChangeItem alloc];
      v14 = [(REMListChangeItem *)self storage];
      v15 = [(REMListChangeItem *)self changedKeysObserver];
      v12 = [(REMListChangeItem *)v13 initWithSaveRequest:v5 storage:v14 accountCapabilities:v8 changedKeysObserver:v15];

      goto LABEL_17;
    }

    v9 = [(REMListChangeItem *)self objectID];

    if (v9)
    {
      if (!v5)
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

  v12 = [(REMListChangeItem *)self storage];

  if (v12)
  {
    v12 = 0;
  }

  else
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "self.storage");
  }

LABEL_17:

  return v12;
}

- (REMListAppearanceContextChangeItem)appearanceContext
{
  v3 = [(REMListChangeItem *)self accountCapabilities];
  v4 = [v3 supportsListAppearance];

  if (v4)
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
  v3 = [(REMListChangeItem *)self accountCapabilities];
  v4 = [v3 supportsCalDAVNotifications];

  if (v4)
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
  v3 = [(REMListChangeItem *)self accountCapabilities];
  v4 = [v3 supportsListShareesMutation];

  if (v4)
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
  v5 = [(REMListChangeItem *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (id)removeFromAccountAllowingUndo
{
  v3 = [(REMListChangeItem *)self parentAccountID];

  if (v3)
  {
    v4 = [(REMListChangeItem *)self saveRequest];
    v5 = [v4 _updateAccountWithListChangeItem:self];

    v6 = [(REMListChangeItem *)self objectID];
    v3 = [v5 lowLevelRemoveMergeableOrderingNodeIDFromOrdering:v6];
  }

  [(REMListChangeItem *)self setParentAccountID:0];
  [(REMListChangeItem *)self setParentListID:0];

  return v3;
}

- (void)undeleteReminderWithID:(id)a3 usingUndo:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [(REMListChangeItem *)self reminderIDsToUndelete];
  v8 = [v7 setByAddingObject:v6];

  [(REMListChangeItem *)self setReminderIDsToUndelete:v8];
  [(REMListChangeItem *)self _lowLevelApplyUndoToOrdering:v9];
}

- (BOOL)optimisticallyInsertReminderIDToOrderingForReminderChangeItemBeingSaved:(id)a3
{
  v4 = a3;
  v5 = [v4 saveRequest];
  v6 = [(REMListChangeItem *)self saveRequest];

  if (v5 == v6)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [REMListChangeItem optimisticallyInsertReminderIDToOrderingForReminderChangeItemBeingSaved:?];
    }

    v14 = 0;
  }

  else
  {
    v7 = [v4 objectID];
    v8 = [(REMListChangeItem *)self reminderIDsMergeableOrdering];
    v9 = [v8 indexOfObject:v7];

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v4 listChangeItem];
      v11 = [v10 reminderIDsMergeableOrdering];

      v12 = [v11 indexOfObject:v7];
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

        v15 = [v11 objectAtIndexedSubscript:v16];
        v17 = self;
        v18 = v7;
        v19 = v15;
        v20 = 1;
      }

      else
      {
        if ([v11 count] < 2)
        {
          v15 = 0;
        }

        else
        {
          v15 = [v11 objectAtIndexedSubscript:1];
        }

        v17 = self;
        v18 = v7;
        v19 = v15;
        v20 = 0;
      }

      v14 = [(REMListChangeItem *)v17 _lowLevelAddReminderIDToOrdering:v18 relativeToSiblingID:v19 isAfter:v20];

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
  v3 = [(REMListChangeItem *)self accountCapabilities];
  v4 = [v3 supportsSections];

  if (v4)
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
  v3 = [(REMListChangeItem *)self accountCapabilities];
  v4 = [v3 supportsSections];

  if (v4)
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
  v3 = [(REMListChangeItem *)self accountCapabilities];
  v4 = [v3 supportsSections];

  if (v4)
  {
    v5 = [[REMListAutoCategorizeContextChangeItem alloc] initWithListChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)undeleteRemindersWithoutUndoWithIDs:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(REMListChangeItem *)self reminderIDsToUndelete];
    v6 = [v5 setByAddingObjectsFromArray:v4];
    [(REMListChangeItem *)self setReminderIDsToUndelete:v6];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__REMListChangeItem_undeleteRemindersWithoutUndoWithIDs___block_invoke;
    v7[3] = &unk_1E7509728;
    v8 = v4;
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

- (void)undeleteRemindersWithoutUndoWithIDs:(id)a3 isCalDAV:(BOOL)a4
{
  v4 = a4;
  [(REMListChangeItem *)self undeleteRemindersWithoutUndoWithIDs:a3];
  if (v4)
  {

    [(REMListChangeItem *)self setRemindersICSDisplayOrderChanged:1];
  }
}

- (void)lowLevelAddReminderIDToOrdering:(id)a3 withParentReminderChangeItem:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7)
  {
    v10 = v7;
    v11 = [(REMListChangeItem *)self reminderIDsMergeableOrdering];
    v12 = [v10 objectID];
    v13 = [v11 indexOfObject:v12];

    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = +[REMLogStore write];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v17 = [(REMListChangeItem *)self objectID];
        v18 = [v10 objectID];
        *buf = 138412802;
        v23 = v17;
        v24 = 2112;
        v25 = v6;
        v26 = 2112;
        v27 = v18;
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
  v20 = v6;
  v21 = v9;
  v15 = v6;
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

- (id)lowLevelRemoveReminderIDFromOrdering:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(REMListChangeItem *)self reminderIDsMergeableOrdering];
  v6 = [v5 indexOfObject:v4];

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
      v8 = [(REMListChangeItem *)self reminderIDsMergeableOrdering];
      [(REMListChangeItem *)v4 lowLevelRemoveReminderIDFromOrdering:v8, buf, v7];
    }
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__REMListChangeItem_lowLevelRemoveReminderIDFromOrdering___block_invoke;
    v12[3] = &unk_1E75097A0;
    v15 = v6;
    v13 = v4;
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

- (void)_lowLevelApplyUndoToOrdering:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__REMListChangeItem__lowLevelApplyUndoToOrdering___block_invoke;
  v6[3] = &unk_1E7509728;
  v7 = v4;
  v5 = v4;
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

- (BOOL)_lowLevelAddReminderIDToOrdering:(id)a3 relativeToSiblingID:(id)a4 isAfter:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    if (v5)
    {
      v13 = [(REMListChangeItem *)self reminderIDsMergeableOrdering];
      v14 = [v13 count];
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_8;
  }

  v10 = [(REMListChangeItem *)self reminderIDsMergeableOrdering];
  v11 = [v10 indexOfObject:v9];

  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v11 + v5;
LABEL_8:
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__REMListChangeItem__lowLevelAddReminderIDToOrdering_relativeToSiblingID_isAfter___block_invoke;
    v16[3] = &unk_1E7509750;
    v17 = v8;
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
  v2 = [(REMListChangeItem *)self changedKeysObserver];
  v3 = [v2 changedKeys];

  return v3;
}

- (id)ekColor
{
  v2 = [(REMListChangeItem *)self storage];
  v3 = [v2 ekColor];

  return v3;
}

- (void)setDaDisplayOrder:(int64_t)a3
{
  v5 = [(REMListChangeItem *)self storage];
  v6 = [v5 daDisplayOrder];

  if (v6 != a3)
  {
    v7 = [(REMListChangeItem *)self saveRequest];
    v8 = [v7 _updateAccountWithListChangeItem:self];

    if (v8)
    {
      [v8 setListsDADisplayOrderChanged:1];
      v9 = [(REMListChangeItem *)self storage];
      [v9 setDaDisplayOrder:a3];

      v10 = [(REMListChangeItem *)self changedKeysObserver];
      [v10 keyDidChange:@"daDisplayOrder"];
    }

    else
    {
      [REMListChangeItem setDaDisplayOrder:?];
      v10 = v11;
    }
  }
}

- (BOOL)isPinned
{
  v2 = [(REMListChangeItem *)self pinnedDate];
  v3 = v2 != 0;

  return v3;
}

- (void)setIsPinned:(BOOL)a3
{
  v3 = a3;
  v5 = [(REMListChangeItem *)self accountCapabilities];
  v6 = [v5 supportsPinnedLists];

  if (v6)
  {
    if ([(REMListChangeItem *)self isPinned]!= v3)
    {
      if (v3)
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

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(REMListChangeItem *)self storage];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = REMListChangeItem;
  if ([(REMListChangeItem *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(REMListChangeItem *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMListChangeItem *)self saveRequest];
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

  v11 = [(REMListChangeItem *)self storage];
  [v11 setValue:v7 forKey:v6];
}

- (void)_reassignReminderChangeItem:(id)a3 withParentReminderChangeItem:(id)a4
{
  v10 = a3;
  v6 = a4;
  [v10 removeFromList];
  v7 = [(REMListChangeItem *)self objectID];
  [v10 setListID:v7];

  v8 = [(REMListChangeItem *)self accountID];
  [v10 setAccountID:v8];

  if (v6)
  {
    v9 = [v6 objectID];
    [v10 setParentReminderID:v9];
  }
}

- (void)_lowLevelAddReminderChangeItemToOrdering:(id)a3 atIndexOfSibling:(id)a4 isAfter:(BOOL)a5 withParent:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 listID];
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v13;
  v15 = [v10 listID];
  v16 = [(REMListChangeItem *)self objectID];
  v17 = [v15 isEqual:v16];

  if ((v17 & 1) == 0)
  {
LABEL_23:
    [REMListChangeItem _lowLevelAddReminderChangeItemToOrdering:atIndexOfSibling:isAfter:withParent:];
  }

  v18 = [v10 objectID];
  v19 = v11;
  if (!v19)
  {
    goto LABEL_15;
  }

  v20 = [v10 listID];
  v21 = [v19 listID];
  v22 = [v20 isEqual:v21];

  if (!v22)
  {
    goto LABEL_15;
  }

  v23 = [v10 parentReminderID];
  if (v23 || ([v19 parentReminderID], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v24 = [v10 parentReminderID];
    v25 = [v19 parentReminderID];
    v26 = [v24 isEqual:v25];

    if (v23)
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

  v27 = [(REMListChangeItem *)self reminderIDsMergeableOrdering];
  v28 = [v19 objectID];
  v29 = [v27 indexOfObject:v28];

  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v31 = v29 + v7;
    goto LABEL_21;
  }

  v30 = +[REMLogStore write];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
  {
    [REMListChangeItem _lowLevelAddReminderChangeItemToOrdering:atIndexOfSibling:isAfter:withParent:];
  }

LABEL_15:
  v31 = 0x7FFFFFFFFFFFFFFFLL;
  if (v12)
  {
    v32 = v12;
    v33 = [(REMListChangeItem *)self reminderIDsMergeableOrdering];
    v34 = [v32 objectID];

    v35 = [v33 indexOfObject:v34];
    if (v35 != 0x7FFFFFFFFFFFFFFFLL && !v7)
    {
      v31 = v35 + 1;
    }
  }

LABEL_21:
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __98__REMListChangeItem__lowLevelAddReminderChangeItemToOrdering_atIndexOfSibling_isAfter_withParent___block_invoke;
  v39[3] = &unk_1E75097C8;
  v40 = v18;
  v41 = v31;
  v42 = v7;
  v37 = v18;
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

- (void)_editReminderIDsOrderingUsingBlock:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(REMListChangeItem *)self saveRequest];
  v6 = [v5 isSaved];

  if (v6)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_INFO, "REMSaveRequest.isSaved MUST be FALSE", &v24, 2u);
    }
  }

  v8 = [(REMListChangeItem *)self saveRequest];
  v9 = [v8 applyCRDTsWithoutMerging];

  if ((v9 & 1) == 0)
  {
    v10 = [(REMListChangeItem *)self storage];
    v11 = [v10 reminderIDsMergeableOrdering];

    v12 = [v11 mutableCopy];
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v4[2](v4, v12, v13);
    v14 = [MEMORY[0x1E695DFB8] orderedSetWithOrderedSet:v12];
    v15 = [(REMListChangeItem *)self storage];
    [v15 setReminderIDsMergeableOrdering:v14];

    v16 = +[REMLogStore write];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [(REMListChangeItem *)self objectID];
      v18 = [(REMListChangeItem *)self saveRequest];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
      v24 = 138412802;
      v25 = v17;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_19A0DB000, v16, OS_LOG_TYPE_INFO, "REMListChangeItem updated storage.reminderIDsMergeableOrdering {objectID: %@, saveReq: %@, ordering.count: %@}", &v24, 0x20u);
    }

    if ([v13 count])
    {
      v20 = [(REMListChangeItem *)self reminderIDsOrderingHints];
      v21 = [v20 mutableCopy];

      [v21 addEntriesFromDictionary:v13];
      [(REMListChangeItem *)self setReminderIDsOrderingHints:v21];
    }

    v22 = [(REMListChangeItem *)self changedKeysObserver];
    [v22 keyDidChange:@"reminderIDsMergeableOrdering"];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)resolutionTokenKeyForChangedKey:(id)a3
{
  v3 = __resolutionTokenKeyDenylist_3;
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

- (BOOL)isShared
{
  v2 = self;
  v3 = [(REMListChangeItem *)self sharees];
  LOBYTE(v2) = +[REMList isSharedWithShareeCount:sharingStatus:](REMList, "isSharedWithShareeCount:sharingStatus:", [v3 count], -[REMListChangeItem sharingStatus](v2, "sharingStatus"));

  return v2;
}

- (BOOL)isOwnedByMe
{
  v2 = [(REMListChangeItem *)self sharingStatus];

  return [REMList isOwnedByMeWithSharingStatus:v2];
}

- (BOOL)isUnsupported
{
  v2 = [(REMListChangeItem *)self storage];
  v3 = [v2 isUnsupported];

  return v3;
}

- (void)copyListDataFrom:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  [(REMListChangeItem *)self setName:v5];

  v6 = [v4 color];
  [(REMListChangeItem *)self setColor:v6];

  -[REMListChangeItem setDaDisplayOrder:](self, "setDaDisplayOrder:", [v4 daDisplayOrder]);
  v7 = [v4 lastUserAccessDate];
  [(REMListChangeItem *)self setLastUserAccessDate:v7];

  v8 = [v4 sortingStyle];
  [(REMListChangeItem *)self setSortingStyle:v8];

  v9 = [v4 pinnedDate];
  [(REMListChangeItem *)self setPinnedDate:v9];

  if ([v4 isGroup])
  {
    v10 = [(REMListChangeItem *)self accountCapabilities];
    v11 = [v10 supportsGroups];

    if ((v11 & 1) == 0)
    {
      v12 = +[REMLogStore write];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [REMListChangeItem(AccountDataMoving) copyListDataFrom:v4];
      }
    }
  }
}

- (void)_testingOnly_setReminderIDsMergeableOrder:(id)a3
{
  v4 = [MEMORY[0x1E695DFB8] orderedSetWithOrderedSet:a3];
  v5 = [(REMListChangeItem *)self storage];
  [v5 setReminderIDsMergeableOrdering:v4];

  v6 = [(REMListChangeItem *)self changedKeysObserver];
  [v6 keyDidChange:@"reminderIDsMergeableOrdering"];
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
  v1 = [a1 objectID];
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