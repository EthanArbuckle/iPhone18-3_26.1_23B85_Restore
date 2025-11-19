@interface REMBaseSectionChangeItem
+ (id)cdEntityName;
+ (id)keysToObserve;
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
+ (void)cdEntityName;
+ (void)initialize;
+ (void)newObjectID;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)a3;
- (NSString)description;
- (REMAccountCapabilities)accountCapabilities;
- (REMBaseSectionChangeItem)initWithSaveRequest:(id)a3 storage:(id)a4 accountCapabilities:(id)a5 changedKeysObserver:(id)a6;
- (id)changedKeys;
- (id)resolutionTokenKeyForChangedKey:(id)a3;
- (id)shallowCopyWithSaveRequest:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (void)accountCapabilities;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation REMBaseSectionChangeItem

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

- (REMBaseSectionChangeItem)initWithSaveRequest:(id)a3 storage:(id)a4 accountCapabilities:(id)a5 changedKeysObserver:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v13)
  {
    v23.receiver = self;
    v23.super_class = REMBaseSectionChangeItem;
    v16 = [(REMBaseSectionChangeItem *)&v23 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_saveRequest, a3);
      objc_storeStrong(&v17->_storage, a4);
      objc_storeStrong(&v17->_changedKeysObserver, a6);
      saveRequest = v17->_saveRequest;
      v19 = [(REMBaseSectionStorage *)v17->_storage objectID];
      [(REMSaveRequest *)saveRequest _trackAccountCapabilities:v14 forObjectID:v19];
    }

    self = v17;
    v20 = self;
  }

  else
  {
    v21 = +[REMLogStore write];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [REMTemplateChangeItem initWithSaveRequest:a2 storage:? changedKeysObserver:?];
    }

    NSLog(&cfstr_SIsUnexpectedl.isa, "storage");
    v20 = 0;
  }

  return v20;
}

- (REMAccountCapabilities)accountCapabilities
{
  v3 = [(REMBaseSectionChangeItem *)self storage];
  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = v3;
  v5 = [(REMBaseSectionChangeItem *)self saveRequest];
  v6 = [(REMBaseSectionChangeItem *)self objectID];
  v7 = [v5 _trackedAccountCapabilitiesForObjectID:v6];

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
  v5 = [(REMBaseSectionChangeItem *)self storage];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)newObjectID
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(a1);
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    +[REMBaseSectionChangeItem newObjectID];
  }

  return +[REMBaseSectionStorage newObjectID];
}

+ (id)objectIDWithUUID:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromClass(a1);
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    +[REMBaseSectionChangeItem objectIDWithUUID:];
  }

  v9 = [REMBaseSectionStorage objectIDWithUUID:v4];

  return v9;
}

+ (id)cdEntityName
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromClass(a1);
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
  v2 = [(REMBaseSectionChangeItem *)self storage];
  v3 = [v2 isUnsupported];

  return v3;
}

- (id)resolutionTokenKeyForChangedKey:(id)a3
{
  v3 = __resolutionTokenKeyDenylist_1;
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
  v6 = [(REMBaseSectionChangeItem *)self storage];

  if (v6)
  {
    v7 = [(REMBaseSectionChangeItem *)self objectID];
    v8 = [v5 _trackedAccountCapabilitiesForObjectID:v7];

    if (v8)
    {
LABEL_16:
      v13 = objc_alloc(objc_opt_class());
      v14 = [(REMBaseSectionChangeItem *)self storage];
      v15 = [(REMBaseSectionChangeItem *)self changedKeysObserver];
      v12 = [v13 initWithSaveRequest:v5 storage:v14 accountCapabilities:v8 changedKeysObserver:v15];

      goto LABEL_17;
    }

    v9 = [(REMBaseSectionChangeItem *)self objectID];

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

  v12 = [(REMBaseSectionChangeItem *)self storage];

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

- (id)changedKeys
{
  v2 = [(REMBaseSectionChangeItem *)self changedKeysObserver];
  v3 = [v2 changedKeys];

  return v3;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(REMBaseSectionChangeItem *)self storage];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = REMBaseSectionChangeItem;
  if ([(REMBaseSectionChangeItem *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(REMBaseSectionChangeItem *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMBaseSectionChangeItem *)self saveRequest];
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

  v11 = [(REMBaseSectionChangeItem *)self storage];
  [v11 setValue:v7 forKey:v6];
}

- (void)accountCapabilities
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectID];
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
    v2 = [MEMORY[0x1E696AF00] callStackSymbols];
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
    v2 = [MEMORY[0x1E696AF00] callStackSymbols];
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