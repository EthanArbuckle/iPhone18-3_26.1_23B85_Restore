@interface REMSmartListChangeItem
+ (void)initialize;
- (BOOL)isPinned;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)selector;
- (REMAccountCapabilities)accountCapabilities;
- (REMSmartListChangeItem)initWithCustomSmartListObjectID:(id)d insertIntoAccountChangeItem:(id)item withParentListChangeItem:(id)changeItem;
- (REMSmartListChangeItem)initWithCustomSmartListObjectID:(id)d insertIntoListSublistContextChangeItem:(id)item;
- (REMSmartListChangeItem)initWithSaveRequest:(id)request storage:(id)storage changedKeysObserver:(id)observer;
- (REMSmartListCustomContextChangeItem)customContext;
- (REMSmartListSectionContextChangeItem)sectionsContextChangeItem;
- (id)changedKeys;
- (id)removeFromParentAllowingUndoWithAccountChangeItem:(id)item;
- (id)resolutionTokenKeyForChangedKey:(id)key;
- (id)shallowCopyWithSaveRequest:(id)request;
- (id)valueForUndefinedKey:(id)key;
- (void)assertIsCustomSmartListWithAction:(id)action;
- (void)setIsPinned:(BOOL)pinned;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation REMSmartListChangeItem

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = __sKeysToObserve_2;
    __sKeysToObserve_2 = &unk_1F0D99A00;

    __resolutionTokenKeyDenylist_2 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D99A18];

    MEMORY[0x1EEE66BB8]();
  }
}

- (REMSmartListChangeItem)initWithSaveRequest:(id)request storage:(id)storage changedKeysObserver:(id)observer
{
  requestCopy = request;
  storageCopy = storage;
  observerCopy = observer;
  if (storageCopy)
  {
    v18.receiver = self;
    v18.super_class = REMSmartListChangeItem;
    v13 = [(REMSmartListChangeItem *)&v18 init];
    p_isa = &v13->super.isa;
    if (v13)
    {
      objc_storeStrong(&v13->_saveRequest, request);
      objc_storeStrong(p_isa + 2, storage);
      objc_storeStrong(p_isa + 3, observer);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v16 = +[REMLogStore write];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [REMTemplateChangeItem initWithSaveRequest:a2 storage:? changedKeysObserver:?];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "storage");
    selfCopy = 0;
  }

  return selfCopy;
}

- (REMSmartListChangeItem)initWithCustomSmartListObjectID:(id)d insertIntoAccountChangeItem:(id)item withParentListChangeItem:(id)changeItem
{
  itemCopy = item;
  changeItemCopy = changeItem;
  dCopy = d;
  capabilities = [itemCopy capabilities];
  supportsCustomSmartLists = [capabilities supportsCustomSmartLists];

  if ((supportsCustomSmartLists & 1) == 0)
  {
    [REMSmartListChangeItem initWithCustomSmartListObjectID:itemCopy insertIntoAccountChangeItem:? withParentListChangeItem:?];
  }

  v13 = [REMSmartListStorage alloc];
  objectID = [itemCopy objectID];
  v15 = [(REMSmartListStorage *)v13 initWithObjectID:dCopy accountID:objectID smartListType:@"com.apple.reminders.smartlist.custom"];

  objectID2 = [itemCopy objectID];
  [(REMSmartListStorage *)v15 setParentAccountID:objectID2];

  v17 = +[REMManualOrdering newObjectID];
  v18 = [REMManualOrdering alloc];
  uuid = [dCopy uuid];
  uUIDString = [uuid UUIDString];
  v21 = objc_opt_new();
  v22 = [(REMManualOrdering *)v18 initWithObjectID:v17 listType:2 listID:uUIDString modifiedDate:v21];

  [(REMSmartListStorage *)v15 setManualOrdering:v22];
  objectID3 = [changeItemCopy objectID];
  [(REMSmartListStorage *)v15 setParentListID:objectID3];

  [itemCopy lowLevelAddMergeableOrderingNodeIDToOrdering:dCopy withParentMergeableOrderingNode:changeItemCopy];
  saveRequest = [itemCopy saveRequest];
  v25 = [(REMSmartListChangeItem *)self initWithSaveRequest:saveRequest storage:v15 observeInitialValues:1];

  return v25;
}

- (REMSmartListChangeItem)initWithCustomSmartListObjectID:(id)d insertIntoListSublistContextChangeItem:(id)item
{
  itemCopy = item;
  dCopy = d;
  listChangeItem = [itemCopy listChangeItem];
  saveRequest = [listChangeItem saveRequest];
  v10 = [saveRequest _updateAccountWithListChangeItem:listChangeItem];

  listChangeItem2 = [itemCopy listChangeItem];

  v12 = [(REMSmartListChangeItem *)self initWithCustomSmartListObjectID:dCopy insertIntoAccountChangeItem:v10 withParentListChangeItem:listChangeItem2];
  return v12;
}

- (id)changedKeys
{
  changedKeysObserver = [(REMSmartListChangeItem *)self changedKeysObserver];
  changedKeys = [changedKeysObserver changedKeys];

  return changedKeys;
}

- (id)resolutionTokenKeyForChangedKey:(id)key
{
  v3 = __resolutionTokenKeyDenylist_2;
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

- (id)shallowCopyWithSaveRequest:(id)request
{
  requestCopy = request;
  storage = [(REMSmartListChangeItem *)self storage];

  if (storage)
  {
    v7 = [REMSmartListChangeItem alloc];
    storage2 = [(REMSmartListChangeItem *)self storage];
    changedKeysObserver = [(REMSmartListChangeItem *)self changedKeysObserver];
    storage3 = [(REMSmartListChangeItem *)v7 initWithSaveRequest:requestCopy storage:storage2 changedKeysObserver:changedKeysObserver];
  }

  else
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(REMTemplateChangeItem *)self shallowCopyWithSaveRequest:a2];
    }

    storage3 = [(REMSmartListChangeItem *)self storage];

    if (storage3)
    {
      storage3 = 0;
    }

    else
    {
      NSLog(&cfstr_SIsUnexpectedl.isa, "self.storage");
    }
  }

  return storage3;
}

- (void)assertIsCustomSmartListWithAction:(id)action
{
  actionCopy = action;
  smartListType = [(REMSmartListChangeItem *)self smartListType];
  v6 = [@"com.apple.reminders.smartlist.custom" isEqual:smartListType];

  if ((v6 & 1) == 0)
  {
    v7 = +[REMLogStore write];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(REMSmartListChangeItem *)actionCopy assertIsCustomSmartListWithAction:?];
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    remObjectID = [(REMSmartListChangeItem *)self remObjectID];
    [v8 raise:v9 format:{@"Action is only applicable to CSL {action: %@, smartList: %@}", actionCopy, remObjectID}];
  }
}

- (REMAccountCapabilities)accountCapabilities
{
  storage = [(REMSmartListChangeItem *)self storage];
  accountCapabilities = [storage accountCapabilities];

  return accountCapabilities;
}

- (BOOL)isPinned
{
  pinnedDate = [(REMSmartListChangeItem *)self pinnedDate];
  v3 = pinnedDate != 0;

  return v3;
}

- (void)setIsPinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  accountCapabilities = [(REMSmartListChangeItem *)self accountCapabilities];
  supportsPinnedLists = [accountCapabilities supportsPinnedLists];

  if (supportsPinnedLists)
  {
    if ([(REMSmartListChangeItem *)self isPinned]!= pinnedCopy)
    {
      if (pinnedCopy)
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

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  storage = [(REMSmartListChangeItem *)self storage];
  v6 = [storage valueForKey:keyCopy];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = REMSmartListChangeItem;
  if ([(REMSmartListChangeItem *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    storage = [(REMSmartListChangeItem *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  saveRequest = [(REMSmartListChangeItem *)self saveRequest];
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

  storage = [(REMSmartListChangeItem *)self storage];
  [storage setValue:valueCopy forKey:keyCopy];
}

- (BOOL)isUnsupported
{
  storage = [(REMSmartListChangeItem *)self storage];
  isUnsupported = [storage isUnsupported];

  return isUnsupported;
}

- (id)removeFromParentAllowingUndoWithAccountChangeItem:(id)item
{
  itemCopy = item;
  parentAccountID = [(REMSmartListChangeItem *)self parentAccountID];

  if (parentAccountID)
  {
    saveRequest = [(REMSmartListChangeItem *)self saveRequest];
    parentAccountID2 = [(REMSmartListChangeItem *)self parentAccountID];
    v8 = [saveRequest _trackedAccountChangeItemForObjectID:parentAccountID2];

    if (!v8 || v8 != itemCopy)
    {
      v9 = MEMORY[0x1E695DF30];
      v10 = *MEMORY[0x1E695D930];
      parentAccountID3 = [(REMSmartListChangeItem *)self parentAccountID];
      objectID = [itemCopy objectID];
      [v9 raise:v10 format:{@"REMSmartListChangeItem tries to remove itself from an untracked or unknown account change item {parentAccountID: %@, accountChangeItem.objectID: %@}", parentAccountID3, objectID}];
    }

    objectID2 = [(REMSmartListChangeItem *)self objectID];
    v14 = [v8 lowLevelRemoveMergeableOrderingNodeIDFromOrdering:objectID2];
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
  smartListType = [(REMSmartListChangeItem *)self smartListType];
  v4 = [smartListType isEqualToString:@"com.apple.reminders.smartlist.custom"];

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
  accountCapabilities = [(REMSmartListChangeItem *)self accountCapabilities];
  supportsSections = [accountCapabilities supportsSections];

  if (supportsSections)
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