@interface REMTemplateChangeItem
+ (void)initialize;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)selector;
- (REMAccountCapabilities)accountCapabilities;
- (REMListBadge)badge;
- (REMTemplateChangeItem)initWithObjectID:(id)d name:(id)name configuration:(id)configuration insertIntoAccountChangeItem:(id)item;
- (REMTemplateChangeItem)initWithSaveRequest:(id)request storage:(id)storage changedKeysObserver:(id)observer;
- (REMTemplateSectionContextChangeItem)sectionsContextChangeItem;
- (id)changedKeys;
- (id)resolutionTokenKeyForChangedKey:(id)key;
- (id)shallowCopyWithSaveRequest:(id)request;
- (id)valueForUndefinedKey:(id)key;
- (void)setBadge:(id)badge;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation REMTemplateChangeItem

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = __sKeysToObserve_1;
    __sKeysToObserve_1 = &unk_1F0D998F8;

    __resolutionTokenKeyDenylist_0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D99910];

    MEMORY[0x1EEE66BB8]();
  }
}

- (REMTemplateChangeItem)initWithSaveRequest:(id)request storage:(id)storage changedKeysObserver:(id)observer
{
  requestCopy = request;
  storageCopy = storage;
  observerCopy = observer;
  if (storageCopy)
  {
    v18.receiver = self;
    v18.super_class = REMTemplateChangeItem;
    v13 = [(REMTemplateChangeItem *)&v18 init];
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

- (REMTemplateChangeItem)initWithObjectID:(id)d name:(id)name configuration:(id)configuration insertIntoAccountChangeItem:(id)item
{
  itemCopy = item;
  configurationCopy = configuration;
  nameCopy = name;
  dCopy = d;
  capabilities = [itemCopy capabilities];
  LOBYTE(d) = [capabilities supportsTemplates];

  if ((d & 1) == 0)
  {
    [REMTemplateChangeItem initWithObjectID:itemCopy name:? configuration:? insertIntoAccountChangeItem:?];
  }

  v15 = [REMTemplateStorage alloc];
  objectID = [itemCopy objectID];
  v17 = [(REMTemplateStorage *)v15 initWithObjectID:dCopy accountID:objectID name:nameCopy];

  objectID2 = [itemCopy objectID];
  [(REMTemplateStorage *)v17 setParentAccountID:objectID2];

  [(REMTemplateStorage *)v17 setConfiguration:configurationCopy];
  v19 = +[REMManualOrdering newObjectID];
  v20 = [REMManualOrdering alloc];
  uuid = [dCopy uuid];

  uUIDString = [uuid UUIDString];
  v23 = objc_opt_new();
  v24 = [(REMManualOrdering *)v20 initWithObjectID:v19 listType:6 listID:uUIDString modifiedDate:v23];

  [(REMTemplateStorage *)v17 setUnsavedManualOrdering:v24];
  saveRequest = [itemCopy saveRequest];
  v26 = [(REMTemplateChangeItem *)self initWithSaveRequest:saveRequest storage:v17 observeInitialValues:1];

  return v26;
}

- (id)changedKeys
{
  changedKeysObserver = [(REMTemplateChangeItem *)self changedKeysObserver];
  changedKeys = [changedKeysObserver changedKeys];

  return changedKeys;
}

- (id)resolutionTokenKeyForChangedKey:(id)key
{
  v3 = __resolutionTokenKeyDenylist_0;
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

- (REMAccountCapabilities)accountCapabilities
{
  storage = [(REMTemplateChangeItem *)self storage];
  accountCapabilities = [storage accountCapabilities];

  return accountCapabilities;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  storage = [(REMTemplateChangeItem *)self storage];
  v6 = [storage valueForKey:keyCopy];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = REMTemplateChangeItem;
  if ([(REMTemplateChangeItem *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    storage = [(REMTemplateChangeItem *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  saveRequest = [(REMTemplateChangeItem *)self saveRequest];
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

  storage = [(REMTemplateChangeItem *)self storage];
  [storage setValue:valueCopy forKey:keyCopy];
}

- (void)setBadge:(id)badge
{
  rawValue = [badge rawValue];
  [(REMTemplateChangeItem *)self setBadgeEmblem:rawValue];
}

- (REMListBadge)badge
{
  badgeEmblem = [(REMTemplateChangeItem *)self badgeEmblem];
  if (badgeEmblem)
  {
    v3 = [[REMListBadge alloc] initWithRawValue:badgeEmblem];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isUnsupported
{
  storage = [(REMTemplateChangeItem *)self storage];
  isUnsupported = [storage isUnsupported];

  return isUnsupported;
}

- (id)shallowCopyWithSaveRequest:(id)request
{
  requestCopy = request;
  storage = [(REMTemplateChangeItem *)self storage];

  if (storage)
  {
    v7 = [REMTemplateChangeItem alloc];
    storage2 = [(REMTemplateChangeItem *)self storage];
    changedKeysObserver = [(REMTemplateChangeItem *)self changedKeysObserver];
    storage3 = [(REMTemplateChangeItem *)v7 initWithSaveRequest:requestCopy storage:storage2 changedKeysObserver:changedKeysObserver];
  }

  else
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(REMTemplateChangeItem *)self shallowCopyWithSaveRequest:a2];
    }

    storage3 = [(REMTemplateChangeItem *)self storage];

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

- (REMTemplateSectionContextChangeItem)sectionsContextChangeItem
{
  accountCapabilities = [(REMTemplateChangeItem *)self accountCapabilities];
  supportsSections = [accountCapabilities supportsSections];

  if (supportsSections)
  {
    v5 = [[REMTemplateSectionContextChangeItem alloc] initWithTemplateChangeItem:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithSaveRequest:(uint64_t)a1 storage:(const char *)a2 changedKeysObserver:.cold.1(uint64_t a1, const char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  v7 = [v3 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v8, v9, "[%{public}@] Passing in nil '%s'", v10, v11, v12, v13, v5, v6, v15);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)initWithObjectID:(void *)a1 name:configuration:insertIntoAccountChangeItem:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = +[REMLogStore write];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = [a1 remObjectID];
    v5 = 138543362;
    v6 = v4;
    _os_log_fault_impl(&dword_19A0DB000, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!accountChangeItem.capabilities.supportsTemplates) -- Attempt to create REMTemplateChangeItem into account not supporting templates {account: %{public}@}", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)shallowCopyWithSaveRequest:(uint64_t)a1 .cold.1(uint64_t a1, const char *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  v7 = [v3 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v8, v9, "[%{public}@] Passing in nil '%s'", v10, v11, v12, v13, v5, v6, v15);

  v14 = *MEMORY[0x1E69E9840];
}

@end