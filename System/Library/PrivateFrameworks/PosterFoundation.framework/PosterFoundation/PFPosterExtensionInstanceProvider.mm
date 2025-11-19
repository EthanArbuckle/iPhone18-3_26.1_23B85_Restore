@interface PFPosterExtensionInstanceProvider
- (NSSet)activeExtensionInstances;
- (PFPosterExtensionInstanceProvider)initWithDefaultInstanceIdentifier:(id)a3;
- (id)acquireInstanceForExtension:(id)a3 reason:(id)a4 error:(id *)a5;
- (id)instanceForExtension:(id)a3 reason:(id)a4;
- (void)cancel;
- (void)extensionInstanceDidInvalidate:(id)a3;
- (void)noteExtensionsWereUpdated:(id)a3;
- (void)relinquishExtensionInstance:(id)a3 reason:(id)a4;
@end

@implementation PFPosterExtensionInstanceProvider

- (PFPosterExtensionInstanceProvider)initWithDefaultInstanceIdentifier:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PFPosterExtensionInstanceProvider;
  v5 = [(PFPosterExtensionInstanceProvider *)&v13 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 copy];
    }

    else
    {
      v6 = [MEMORY[0x1E696AFB0] pf_defaultInstanceIdentifier];
    }

    defaultInstanceIdentifier = v5->_defaultInstanceIdentifier;
    v5->_defaultInstanceIdentifier = v6;

    v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    extensionBundleInstanceToReasonMap = v5->_extensionBundleInstanceToReasonMap;
    v5->_extensionBundleInstanceToReasonMap = v8;

    v10 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    extensionBundleIdentifierWithReasonToInstanceMap = v5->_extensionBundleIdentifierWithReasonToInstanceMap;
    v5->_extensionBundleIdentifierWithReasonToInstanceMap = v10;
  }

  return v5;
}

- (id)acquireInstanceForExtension:(id)a3 reason:(id)a4 error:(id *)a5
{
  v42[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_1F425B6D8;
  }

  if (v8)
  {
    v11 = [v8 posterExtensionBundleIdentifier];
    v32 = -[NSObject stringByAppendingFormat:](v11, "stringByAppendingFormat:", @"-['%@']", v10);
    v12 = self;
    objc_sync_enter(v12);
    v13 = [(NSMapTable *)v12->_extensionBundleIdentifierWithReasonToInstanceMap objectForKey:v32];
    if (v13)
    {
      if (![(__CFString *)v10 isEqualToString:@"Editing"])
      {
        v18 = [v13 instanceIdentifier];
        v26 = [(NSMapTable *)v12->_extensionBundleInstanceToReasonMap objectForKey:v18];
        [v26 addObject:v10];

        v27 = PFLogExtensionInstance();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [v8 posterExtensionBundleIdentifier];
          v29 = [v13 instanceIdentifier];
          *buf = 134218754;
          v34 = v12;
          v35 = 2112;
          v36 = v28;
          v37 = 2114;
          v38 = v29;
          v39 = 2114;
          v40 = v10;
          _os_log_impl(&dword_1C269D000, v27, OS_LOG_TYPE_DEFAULT, "(%p) extension '%@' has instance %{public}@; will use for reason '%{public}@'", buf, 0x2Au);
        }

        v17 = v13;
        goto LABEL_26;
      }

      [(PFPosterExtensionInstanceProvider *)v12 relinquishExtensionInstance:v13 reason:v10];
    }

    if ([(__CFString *)v10 isEqualToString:@"Editing"])
    {
      v14 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    }

    else
    {
      v14 = [MEMORY[0x1E696AFB0] pf_UUIDFromArbitraryString:v10];
    }

    v18 = v14;
    v19 = [(__CFString *)v10 length];
    defaultInstanceIdentifier = v18;
    if (!v19)
    {
      defaultInstanceIdentifier = v12->_defaultInstanceIdentifier;
    }

    v21 = defaultInstanceIdentifier;
    v22 = [[PFPosterExtensionInstance alloc] initWithExtension:v8 instanceIdentifier:v21];

    [(PFPosterExtensionInstance *)v22 addInstanceObserver:v12];
    v23 = [(NSMapTable *)v12->_extensionBundleInstanceToReasonMap objectForKey:v21];
    if (!v23)
    {
      v23 = objc_opt_new();
      [(NSMapTable *)v12->_extensionBundleInstanceToReasonMap setObject:v23 forKey:v21];
    }

    [v23 addObject:v10];
    v24 = PFLogExtensionInstance();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v8 posterExtensionBundleIdentifier];
      *buf = 134218754;
      v34 = v12;
      v35 = 2112;
      v36 = v25;
      v37 = 2114;
      v38 = v21;
      v39 = 2114;
      v40 = v10;
      _os_log_impl(&dword_1C269D000, v24, OS_LOG_TYPE_DEFAULT, "(%p) extension '%@' booted new instance %{public}@ for reason '%{public}@'", buf, 0x2Au);
    }

    [(NSMapTable *)v12->_extensionBundleIdentifierWithReasonToInstanceMap setObject:v22 forKey:v32];
    v17 = v22;

LABEL_26:
    objc_sync_exit(v12);

    goto LABEL_27;
  }

  if (a5)
  {
    v15 = MEMORY[0x1E696ABC0];
    v41[0] = *MEMORY[0x1E696A588];
    v41[1] = @"reason";
    v42[0] = @"cannot acquire instance for nil extension";
    v42[1] = v10;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
    *a5 = [v15 pf_errorWithCode:3 userInfo:v16];
  }

  v11 = PFLogExtensionInstance();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [PFPosterExtensionInstanceProvider acquireInstanceForExtension:v10 reason:v11 error:?];
  }

  v17 = 0;
LABEL_27:

  v30 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)relinquishExtensionInstance:(id)a3 reason:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [PFPosterExtensionInstanceProvider relinquishExtensionInstance:a2 reason:?];
  }

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = &stru_1F425B6D8;
  }

  v10 = [v7 extension];
  v11 = [v10 posterExtensionBundleIdentifier];

  v12 = [v11 stringByAppendingFormat:@"-['%@']", v9];
  v13 = self;
  objc_sync_enter(v13);
  v14 = [v7 instanceIdentifier];
  v15 = PFLogExtensionInstance();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v7 instanceIdentifier];
    *buf = 134218754;
    v20 = v13;
    v21 = 2112;
    v22 = v11;
    v23 = 2114;
    v24 = v16;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_1C269D000, v15, OS_LOG_TYPE_DEFAULT, "(%p) relinquish extension '%@'/%{public}@ for reason '%{public}@'", buf, 0x2Au);
  }

  v17 = [(NSMapTable *)v13->_extensionBundleInstanceToReasonMap objectForKey:v14];
  [v17 removeObject:v9];
  if (![v17 count])
  {
    [(NSMapTable *)v13->_extensionBundleIdentifierWithReasonToInstanceMap removeObjectForKey:v12];
    [(NSMapTable *)v13->_extensionBundleInstanceToReasonMap removeObjectForKey:v14];
    [v7 invalidate];
  }

  objc_sync_exit(v13);
  v18 = *MEMORY[0x1E69E9840];
}

- (NSSet)activeExtensionInstances
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(NSMapTable *)v2->_extensionBundleIdentifierWithReasonToInstanceMap objectEnumerator];
  v5 = [v4 allObjects];
  v6 = [v3 setWithArray:v5];

  objc_sync_exit(v2);

  return v6;
}

- (void)noteExtensionsWereUpdated:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v26 = [v25 valueForKey:@"posterExtensionBundleIdentifier"];
  v4 = self;
  objc_sync_enter(v4);
  v5 = MEMORY[0x1E695DFD8];
  v6 = [(NSMapTable *)v4->_extensionBundleIdentifierWithReasonToInstanceMap keyEnumerator];
  v7 = [v6 allObjects];
  v8 = [v5 setWithArray:v7];

  v24 = v8;
  v9 = [v8 mutableCopy];
  [v9 minusSet:v26];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [(NSMapTable *)v4->_extensionBundleIdentifierWithReasonToInstanceMap copy];
  v11 = [v10 keyEnumerator];

  v12 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v12)
  {
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = [(NSMapTable *)v4->_extensionBundleIdentifierWithReasonToInstanceMap objectForKey:v15];
        v17 = [v16 extension];
        v18 = [v17 posterExtensionBundleIdentifier];

        if ([v9 containsObject:v18])
        {
          [v16 invalidate];
          [(NSMapTable *)v4->_extensionBundleIdentifierWithReasonToInstanceMap removeObjectForKey:v15];
          extensionBundleInstanceToReasonMap = v4->_extensionBundleInstanceToReasonMap;
          v20 = [v16 instanceIdentifier];
          [(NSMapTable *)extensionBundleInstanceToReasonMap removeObjectForKey:v20];

          v21 = PFLogExtensionInstance();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v16 instanceIdentifier];
            *buf = 134218498;
            v32 = v4;
            v33 = 2112;
            v34 = v18;
            v35 = 2114;
            v36 = v22;
            _os_log_impl(&dword_1C269D000, v21, OS_LOG_TYPE_DEFAULT, "(%p) cleaning up after now invalid extension '%@'/%{public}@", buf, 0x20u);
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v12);
  }

  objc_sync_exit(v4);
  v23 = *MEMORY[0x1E69E9840];
}

- (id)instanceForExtension:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 posterExtensionBundleIdentifier];
  v9 = [v8 stringByAppendingFormat:@"-['%@']", v7];
  v10 = self;
  objc_sync_enter(v10);
  v11 = [(NSMapTable *)v10->_extensionBundleIdentifierWithReasonToInstanceMap objectForKey:v9];
  objc_sync_exit(v10);

  return v11;
}

- (void)extensionInstanceDidInvalidate:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = PFLogExtensionInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 extension];
      v8 = [v7 posterExtensionBundleIdentifier];
      v9 = [v4 instanceIdentifier];
      *buf = 134218498;
      v27 = v5;
      v28 = 2112;
      v29 = v8;
      v30 = 2114;
      v31 = v9;
      _os_log_impl(&dword_1C269D000, v6, OS_LOG_TYPE_DEFAULT, "(%p) invalidated instance %@/%{public}@", buf, 0x20u);
    }

    v10 = objc_opt_new();
    v11 = [(NSMapTable *)v5->_extensionBundleIdentifierWithReasonToInstanceMap dictionaryRepresentation];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __68__PFPosterExtensionInstanceProvider_extensionInstanceDidInvalidate___block_invoke;
    v22[3] = &unk_1E81899D8;
    v23 = v4;
    v12 = v10;
    v24 = v12;
    [v11 enumerateKeysAndObjectsUsingBlock:v22];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v14)
    {
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v13);
          }

          [(NSMapTable *)v5->_extensionBundleIdentifierWithReasonToInstanceMap removeObjectForKey:*(*(&v18 + 1) + 8 * v16++), v18];
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v14);
    }

    objc_sync_exit(v5);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __68__PFPosterExtensionInstanceProvider_extensionInstanceDidInvalidate___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == a3)
  {
    return [*(result + 40) addObject:a2];
  }

  return result;
}

- (void)cancel
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = PFLogExtensionInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v2;
    _os_log_impl(&dword_1C269D000, v3, OS_LOG_TYPE_DEFAULT, "(%p) cancel", &v7, 0xCu);
  }

  v4 = [(NSMapTable *)v2->_extensionBundleIdentifierWithReasonToInstanceMap objectEnumerator];
  v5 = [v4 allObjects];
  [v5 enumerateObjectsUsingBlock:&__block_literal_global_236];

  [(NSMapTable *)v2->_extensionBundleIdentifierWithReasonToInstanceMap removeAllObjects];
  objc_sync_exit(v2);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)acquireInstanceForExtension:(uint64_t)a1 reason:(uint64_t)a2 error:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1C269D000, log, OS_LOG_TYPE_ERROR, "(%p) no extension specified; will not acquire instance for reason '%{public}@'", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)relinquishExtensionInstance:(const char *)a1 reason:.cold.1(const char *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"extensionInstance", v12, v13);
  }

  v11 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end