@interface REMSmartListChangeItem
+ (void)initialize;
- (BOOL)isPinned;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)a3;
- (REMAccountCapabilities)accountCapabilities;
- (REMSmartListChangeItem)initWithCustomSmartListObjectID:(id)a3 insertIntoAccountChangeItem:(id)a4 withParentListChangeItem:(id)a5;
- (REMSmartListChangeItem)initWithCustomSmartListObjectID:(id)a3 insertIntoListSublistContextChangeItem:(id)a4;
- (REMSmartListChangeItem)initWithSaveRequest:(id)a3 storage:(id)a4 changedKeysObserver:(id)a5;
- (REMSmartListCustomContextChangeItem)customContext;
- (REMSmartListSectionContextChangeItem)sectionsContextChangeItem;
- (id)changedKeys;
- (id)removeFromParentAllowingUndoWithAccountChangeItem:(id)a3;
- (id)resolutionTokenKeyForChangedKey:(id)a3;
- (id)shallowCopyWithSaveRequest:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (void)assertIsCustomSmartListWithAction:(id)a3;
- (void)setIsPinned:(BOOL)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation REMSmartListChangeItem

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = __sKeysToObserve_2;
    __sKeysToObserve_2 = &unk_1F0D99A00;

    __resolutionTokenKeyDenylist_2 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D99A18];

    MEMORY[0x1EEE66BB8]();
  }
}

- (REMSmartListChangeItem)initWithSaveRequest:(id)a3 storage:(id)a4 changedKeysObserver:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v18.receiver = self;
    v18.super_class = REMSmartListChangeItem;
    v13 = [(REMSmartListChangeItem *)&v18 init];
    p_isa = &v13->super.isa;
    if (v13)
    {
      objc_storeStrong(&v13->_saveRequest, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 3, a5);
    }

    self = p_isa;
    v15 = self;
  }

  else
  {
    v16 = +[REMLogStore write];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [REMTemplateChangeItem initWithSaveRequest:a2 storage:? changedKeysObserver:?];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "storage");
    v15 = 0;
  }

  return v15;
}

- (REMSmartListChangeItem)initWithCustomSmartListObjectID:(id)a3 insertIntoAccountChangeItem:(id)a4 withParentListChangeItem:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v8 capabilities];
  v12 = [v11 supportsCustomSmartLists];

  if ((v12 & 1) == 0)
  {
    [REMSmartListChangeItem initWithCustomSmartListObjectID:v8 insertIntoAccountChangeItem:? withParentListChangeItem:?];
  }

  v13 = [REMSmartListStorage alloc];
  v14 = [v8 objectID];
  v15 = [(REMSmartListStorage *)v13 initWithObjectID:v10 accountID:v14 smartListType:@"com.apple.reminders.smartlist.custom"];

  v16 = [v8 objectID];
  [(REMSmartListStorage *)v15 setParentAccountID:v16];

  v17 = +[REMManualOrdering newObjectID];
  v18 = [REMManualOrdering alloc];
  v19 = [v10 uuid];
  v20 = [v19 UUIDString];
  v21 = objc_opt_new();
  v22 = [(REMManualOrdering *)v18 initWithObjectID:v17 listType:2 listID:v20 modifiedDate:v21];

  [(REMSmartListStorage *)v15 setManualOrdering:v22];
  v23 = [v9 objectID];
  [(REMSmartListStorage *)v15 setParentListID:v23];

  [v8 lowLevelAddMergeableOrderingNodeIDToOrdering:v10 withParentMergeableOrderingNode:v9];
  v24 = [v8 saveRequest];
  v25 = [(REMSmartListChangeItem *)self initWithSaveRequest:v24 storage:v15 observeInitialValues:1];

  return v25;
}

- (REMSmartListChangeItem)initWithCustomSmartListObjectID:(id)a3 insertIntoListSublistContextChangeItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 listChangeItem];
  v9 = [v8 saveRequest];
  v10 = [v9 _updateAccountWithListChangeItem:v8];

  v11 = [v6 listChangeItem];

  v12 = [(REMSmartListChangeItem *)self initWithCustomSmartListObjectID:v7 insertIntoAccountChangeItem:v10 withParentListChangeItem:v11];
  return v12;
}

- (id)changedKeys
{
  v2 = [(REMSmartListChangeItem *)self changedKeysObserver];
  v3 = [v2 changedKeys];

  return v3;
}

- (id)resolutionTokenKeyForChangedKey:(id)a3
{
  v3 = __resolutionTokenKeyDenylist_2;
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

- (id)shallowCopyWithSaveRequest:(id)a3
{
  v5 = a3;
  v6 = [(REMSmartListChangeItem *)self storage];

  if (v6)
  {
    v7 = [REMSmartListChangeItem alloc];
    v8 = [(REMSmartListChangeItem *)self storage];
    v9 = [(REMSmartListChangeItem *)self changedKeysObserver];
    v10 = [(REMSmartListChangeItem *)v7 initWithSaveRequest:v5 storage:v8 changedKeysObserver:v9];
  }

  else
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(REMTemplateChangeItem *)self shallowCopyWithSaveRequest:a2];
    }

    v10 = [(REMSmartListChangeItem *)self storage];

    if (v10)
    {
      v10 = 0;
    }

    else
    {
      NSLog(&cfstr_SIsUnexpectedl.isa, "self.storage");
    }
  }

  return v10;
}

- (void)assertIsCustomSmartListWithAction:(id)a3
{
  v4 = a3;
  v5 = [(REMSmartListChangeItem *)self smartListType];
  v6 = [@"com.apple.reminders.smartlist.custom" isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(REMSmartListChangeItem *)v4 assertIsCustomSmartListWithAction:?];
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    v10 = [(REMSmartListChangeItem *)self remObjectID];
    [v8 raise:v9 format:{@"Action is only applicable to CSL {action: %@, smartList: %@}", v4, v10}];
  }
}

- (REMAccountCapabilities)accountCapabilities
{
  v2 = [(REMSmartListChangeItem *)self storage];
  v3 = [v2 accountCapabilities];

  return v3;
}

- (BOOL)isPinned
{
  v2 = [(REMSmartListChangeItem *)self pinnedDate];
  v3 = v2 != 0;

  return v3;
}

- (void)setIsPinned:(BOOL)a3
{
  v3 = a3;
  v5 = [(REMSmartListChangeItem *)self accountCapabilities];
  v6 = [v5 supportsPinnedLists];

  if (v6)
  {
    if ([(REMSmartListChangeItem *)self isPinned]!= v3)
    {
      if (v3)
      {
        v8 = [MEMORY[0x1E695DF00] now];
        [(REMSmartListChangeItem *)self setPinnedDate:v8];
      }

      else
      {

        [(REMSmartListChangeItem *)self setPinnedDate:0];
      }
    }
  }

  else
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [REMSmartListChangeItem setIsPinned:?];
    }
  }
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(REMSmartListChangeItem *)self storage];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = REMSmartListChangeItem;
  if ([(REMSmartListChangeItem *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(REMSmartListChangeItem *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMSmartListChangeItem *)self saveRequest];
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

  v11 = [(REMSmartListChangeItem *)self storage];
  [v11 setValue:v7 forKey:v6];
}

- (BOOL)isUnsupported
{
  v2 = [(REMSmartListChangeItem *)self storage];
  v3 = [v2 isUnsupported];

  return v3;
}

- (id)removeFromParentAllowingUndoWithAccountChangeItem:(id)a3
{
  v4 = a3;
  v5 = [(REMSmartListChangeItem *)self parentAccountID];

  if (v5)
  {
    v6 = [(REMSmartListChangeItem *)self saveRequest];
    v7 = [(REMSmartListChangeItem *)self parentAccountID];
    v8 = [v6 _trackedAccountChangeItemForObjectID:v7];

    if (!v8 || v8 != v4)
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D930];
      v11 = [(REMSmartListChangeItem *)self parentAccountID];
      v12 = [v4 objectID];
      [v9 raise:v10 format:{@"REMSmartListChangeItem tries to remove itself from an untracked or unknown account change item {parentAccountID: %@, accountChangeItem.objectID: %@}", v11, v12}];
    }

    v13 = [(REMSmartListChangeItem *)self objectID];
    v14 = [v8 lowLevelRemoveMergeableOrderingNodeIDFromOrdering:v13];
  }

  else
  {
    v14 = 0;
  }

  [(REMSmartListChangeItem *)self setParentAccountID:0];
  [(REMSmartListChangeItem *)self setParentListID:0];

  return v14;
}

- (REMSmartListCustomContextChangeItem)customContext
{
  v3 = [(REMSmartListChangeItem *)self smartListType];
  v4 = [v3 isEqualToString:@"com.apple.reminders.smartlist.custom"];

  if (v4)
  {
    v5 = [[REMSmartListCustomContextChangeItem alloc] initWithSmartListChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (REMSmartListSectionContextChangeItem)sectionsContextChangeItem
{
  v3 = [(REMSmartListChangeItem *)self accountCapabilities];
  v4 = [v3 supportsSections];

  if (v4)
  {
    v5 = [[REMSmartListSectionContextChangeItem alloc] initWithSmartListChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithCustomSmartListObjectID:(void *)a1 insertIntoAccountChangeItem:withParentListChangeItem:.cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[REMLogStore write];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v9 = [a1 remObjectID];
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)assertIsCustomSmartListWithAction:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = [a2 remObjectID];
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setIsPinned:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 objectID];
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

@end