@interface REMBaseSectionChangeItem
+ (id)cdEntityName;
+ (id)keysToObserve;
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
+ (void)cdEntityName;
+ (void)initialize;
+ (void)newObjectID;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)selector;
- (NSString)description;
- (REMAccountCapabilities)accountCapabilities;
- (REMBaseSectionChangeItem)initWithSaveRequest:(id)request storage:(id)storage accountCapabilities:(id)capabilities changedKeysObserver:(id)observer;
- (id)changedKeys;
- (id)resolutionTokenKeyForChangedKey:(id)key;
- (id)shallowCopyWithSaveRequest:(id)request;
- (id)valueForUndefinedKey:(id)key;
- (void)accountCapabilities;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation REMBaseSectionChangeItem

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __resolutionTokenKeyDenylist_1 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D99958];

    MEMORY[0x1EEE66BB8]();
  }
}

+ (id)keysToObserve
{
  if (keysToObserve_onceToken_0 != -1)
  {
    +[REMBaseSectionChangeItem keysToObserve];
  }

  v3 = keysToObserve___sKeysToObserve_0;

  return v3;
}

void __41__REMBaseSectionChangeItem_keysToObserve__block_invoke()
{
  v0 = keysToObserve___sKeysToObserve_0;
  keysToObserve___sKeysToObserve_0 = &unk_1F0D99970;
}

- (REMBaseSectionChangeItem)initWithSaveRequest:(id)request storage:(id)storage accountCapabilities:(id)capabilities changedKeysObserver:(id)observer
{
  requestCopy = request;
  storageCopy = storage;
  capabilitiesCopy = capabilities;
  observerCopy = observer;
  if (storageCopy)
  {
    v23.receiver = self;
    v23.super_class = REMBaseSectionChangeItem;
    v16 = [(REMBaseSectionChangeItem *)&v23 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_saveRequest, request);
      objc_storeStrong(&v17->_storage, storage);
      objc_storeStrong(&v17->_changedKeysObserver, observer);
      saveRequest = v17->_saveRequest;
      objectID = [(REMBaseSectionStorage *)v17->_storage objectID];
      [(REMSaveRequest *)saveRequest _trackAccountCapabilities:capabilitiesCopy forObjectID:objectID];
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    v21 = +[REMLogStore write];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [REMTemplateChangeItem initWithSaveRequest:a2 storage:? changedKeysObserver:?];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "storage");
    selfCopy = 0;
  }

  return selfCopy;
}

- (REMAccountCapabilities)accountCapabilities
{
  storage = [(REMBaseSectionChangeItem *)self storage];
  if (!storage)
  {
    goto LABEL_3;
  }

  v4 = storage;
  saveRequest = [(REMBaseSectionChangeItem *)self saveRequest];
  objectID = [(REMBaseSectionChangeItem *)self objectID];
  v7 = [saveRequest _trackedAccountCapabilitiesForObjectID:objectID];

  if (!v7)
  {
LABEL_3:
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(REMBaseSectionChangeItem *)self accountCapabilities];
    }

    v7 = [[REMAccountCapabilities alloc] initWithAccountType:0];
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storage = [(REMBaseSectionChangeItem *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, storage];

  return v6;
}

+ (id)newObjectID
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(self);
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    +[REMBaseSectionChangeItem newObjectID];
  }

  return +[REMBaseSectionStorage newObjectID];
}

+ (id)objectIDWithUUID:(id)d
{
  dCopy = d;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromClass(self);
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    +[REMBaseSectionChangeItem objectIDWithUUID:];
  }

  v9 = [REMBaseSectionStorage objectIDWithUUID:dCopy];

  return v9;
}

+ (id)cdEntityName
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(self);
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    +[REMBaseSectionChangeItem cdEntityName];
  }

  v7 = +[REMBaseSectionStorage cdEntityName];

  return v7;
}

- (BOOL)isUnsupported
{
  storage = [(REMBaseSectionChangeItem *)self storage];
  isUnsupported = [storage isUnsupported];

  return isUnsupported;
}

- (id)resolutionTokenKeyForChangedKey:(id)key
{
  v3 = __resolutionTokenKeyDenylist_1;
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
  storage = [(REMBaseSectionChangeItem *)self storage];

  if (storage)
  {
    objectID = [(REMBaseSectionChangeItem *)self objectID];
    v8 = [requestCopy _trackedAccountCapabilitiesForObjectID:objectID];

    if (v8)
    {
LABEL_16:
      v13 = objc_alloc(objc_opt_class());
      storage2 = [(REMBaseSectionChangeItem *)self storage];
      changedKeysObserver = [(REMBaseSectionChangeItem *)self changedKeysObserver];
      storage3 = [v13 initWithSaveRequest:requestCopy storage:storage2 accountCapabilities:v8 changedKeysObserver:changedKeysObserver];

      goto LABEL_17;
    }

    objectID2 = [(REMBaseSectionChangeItem *)self objectID];

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
        [(REMBaseSectionChangeItem *)self shallowCopyWithSaveRequest:a2];
      }
    }

    goto LABEL_15;
  }

  v11 = +[REMLogStore write];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    [(REMTemplateChangeItem *)self shallowCopyWithSaveRequest:a2];
  }

  storage3 = [(REMBaseSectionChangeItem *)self storage];

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

- (id)changedKeys
{
  changedKeysObserver = [(REMBaseSectionChangeItem *)self changedKeysObserver];
  changedKeys = [changedKeysObserver changedKeys];

  return changedKeys;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  storage = [(REMBaseSectionChangeItem *)self storage];
  v6 = [storage valueForKey:keyCopy];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = REMBaseSectionChangeItem;
  if ([(REMBaseSectionChangeItem *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    storage = [(REMBaseSectionChangeItem *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  saveRequest = [(REMBaseSectionChangeItem *)self saveRequest];
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

  storage = [(REMBaseSectionChangeItem *)self storage];
  [storage setValue:valueCopy forKey:keyCopy];
}

- (void)accountCapabilities
{
  v10 = *MEMORY[0x1E69E9840];
  objectID = [self objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v2, v3, "trackedAccountCapabilities is unexpectedly nil when getting baseSectionChangeItem.accountCapabilities {objectID: %{public}@}", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)newObjectID
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = +[REMLogStore write];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v3, v4, "rem_log_fault_if (![NSStringFromClass([REMBaseSectionChangeItem class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMBaseSectionStorage called '- [REMBaseSectionStorage newObjectID]'. The subclass should override this method. {callstack: %@}", v5, v6, v7, v8, v9);
  }

  v1 = *MEMORY[0x1E69E9840];
}

+ (void)objectIDWithUUID:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = +[REMLogStore write];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v2 = [MEMORY[0x1E696AF00] callStackSymbols];
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v3, v4, "rem_log_fault_if (![NSStringFromClass([REMBaseSectionChangeItem class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMBaseSectionStorage called '- [REMBaseSectionStorage objectIDWithUUID:]'. The subclass should override this method. {callstack: %@}", v5, v6, v7, v8, v9);
  }

  v1 = *MEMORY[0x1E69E9840];
}

+ (void)cdEntityName
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = +[REMLogStore write];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_8(&dword_19A0DB000, v3, v4, "rem_log_fault_if (![NSStringFromClass([REMBaseSectionChangeItem class]) isEqualToString:NSStringFromClass(self)]) -- A subclass of REMBaseSectionStorage called '- [REMBaseSectionStorage cdEntityName]'. The subclass should override this method. {callstack: %@}", v5, v6, v7, v8, v9);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (void)shallowCopyWithSaveRequest:(uint64_t)a1 .cold.2(uint64_t a1, const char *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  v7 = [v3 stringWithFormat:@"%@.%@"];
  OUTLINED_FUNCTION_1(&dword_19A0DB000, v8, v9, "[%{public}@] self.objectID should not be nil when copying this change item {self: %@}", v10, v11, v12, v13, v5, v6, 2u);

  v14 = *MEMORY[0x1E69E9840];
}

@end