@interface REMTemplateChangeItem
+ (void)initialize;
- (BOOL)isUnsupported;
- (BOOL)respondsToSelector:(SEL)a3;
- (REMAccountCapabilities)accountCapabilities;
- (REMListBadge)badge;
- (REMTemplateChangeItem)initWithObjectID:(id)a3 name:(id)a4 configuration:(id)a5 insertIntoAccountChangeItem:(id)a6;
- (REMTemplateChangeItem)initWithSaveRequest:(id)a3 storage:(id)a4 changedKeysObserver:(id)a5;
- (REMTemplateSectionContextChangeItem)sectionsContextChangeItem;
- (id)changedKeys;
- (id)resolutionTokenKeyForChangedKey:(id)a3;
- (id)shallowCopyWithSaveRequest:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (void)setBadge:(id)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation REMTemplateChangeItem

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = __sKeysToObserve_1;
    __sKeysToObserve_1 = &unk_1F0D998F8;

    __resolutionTokenKeyDenylist_0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0D99910];

    MEMORY[0x1EEE66BB8]();
  }
}

- (REMTemplateChangeItem)initWithSaveRequest:(id)a3 storage:(id)a4 changedKeysObserver:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v18.receiver = self;
    v18.super_class = REMTemplateChangeItem;
    v13 = [(REMTemplateChangeItem *)&v18 init];
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

- (REMTemplateChangeItem)initWithObjectID:(id)a3 name:(id)a4 configuration:(id)a5 insertIntoAccountChangeItem:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 capabilities];
  LOBYTE(a3) = [v14 supportsTemplates];

  if ((a3 & 1) == 0)
  {
    [REMTemplateChangeItem initWithObjectID:v10 name:? configuration:? insertIntoAccountChangeItem:?];
  }

  v15 = [REMTemplateStorage alloc];
  v16 = [v10 objectID];
  v17 = [(REMTemplateStorage *)v15 initWithObjectID:v13 accountID:v16 name:v12];

  v18 = [v10 objectID];
  [(REMTemplateStorage *)v17 setParentAccountID:v18];

  [(REMTemplateStorage *)v17 setConfiguration:v11];
  v19 = +[REMManualOrdering newObjectID];
  v20 = [REMManualOrdering alloc];
  v21 = [v13 uuid];

  v22 = [v21 UUIDString];
  v23 = objc_opt_new();
  v24 = [(REMManualOrdering *)v20 initWithObjectID:v19 listType:6 listID:v22 modifiedDate:v23];

  [(REMTemplateStorage *)v17 setUnsavedManualOrdering:v24];
  v25 = [v10 saveRequest];
  v26 = [(REMTemplateChangeItem *)self initWithSaveRequest:v25 storage:v17 observeInitialValues:1];

  return v26;
}

- (id)changedKeys
{
  v2 = [(REMTemplateChangeItem *)self changedKeysObserver];
  v3 = [v2 changedKeys];

  return v3;
}

- (id)resolutionTokenKeyForChangedKey:(id)a3
{
  v3 = __resolutionTokenKeyDenylist_0;
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

- (REMAccountCapabilities)accountCapabilities
{
  v2 = [(REMTemplateChangeItem *)self storage];
  v3 = [v2 accountCapabilities];

  return v3;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(REMTemplateChangeItem *)self storage];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = REMTemplateChangeItem;
  if ([(REMTemplateChangeItem *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(REMTemplateChangeItem *)self storage];
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(REMTemplateChangeItem *)self saveRequest];
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

  v11 = [(REMTemplateChangeItem *)self storage];
  [v11 setValue:v7 forKey:v6];
}

- (void)setBadge:(id)a3
{
  v4 = [a3 rawValue];
  [(REMTemplateChangeItem *)self setBadgeEmblem:v4];
}

- (REMListBadge)badge
{
  v2 = [(REMTemplateChangeItem *)self badgeEmblem];
  if (v2)
  {
    v3 = [[REMListBadge alloc] initWithRawValue:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isUnsupported
{
  v2 = [(REMTemplateChangeItem *)self storage];
  v3 = [v2 isUnsupported];

  return v3;
}

- (id)shallowCopyWithSaveRequest:(id)a3
{
  v5 = a3;
  v6 = [(REMTemplateChangeItem *)self storage];

  if (v6)
  {
    v7 = [REMTemplateChangeItem alloc];
    v8 = [(REMTemplateChangeItem *)self storage];
    v9 = [(REMTemplateChangeItem *)self changedKeysObserver];
    v10 = [(REMTemplateChangeItem *)v7 initWithSaveRequest:v5 storage:v8 changedKeysObserver:v9];
  }

  else
  {
    v11 = +[REMLogStore write];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(REMTemplateChangeItem *)self shallowCopyWithSaveRequest:a2];
    }

    v10 = [(REMTemplateChangeItem *)self storage];

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

- (REMTemplateSectionContextChangeItem)sectionsContextChangeItem
{
  v3 = [(REMTemplateChangeItem *)self accountCapabilities];
  v4 = [v3 supportsSections];

  if (v4)
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