@interface PFPosterExtensionInstanceProvider
- (NSSet)activeExtensionInstances;
- (PFPosterExtensionInstanceProvider)initWithDefaultInstanceIdentifier:(id)identifier;
- (id)acquireInstanceForExtension:(id)extension reason:(id)reason error:(id *)error;
- (id)instanceForExtension:(id)extension reason:(id)reason;
- (void)cancel;
- (void)extensionInstanceDidInvalidate:(id)invalidate;
- (void)noteExtensionsWereUpdated:(id)updated;
- (void)relinquishExtensionInstance:(id)instance reason:(id)reason;
@end

@implementation PFPosterExtensionInstanceProvider

- (PFPosterExtensionInstanceProvider)initWithDefaultInstanceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = PFPosterExtensionInstanceProvider;
  v5 = [(PFPosterExtensionInstanceProvider *)&v13 init];
  if (v5)
  {
    if (identifierCopy)
    {
      pf_defaultInstanceIdentifier = [identifierCopy copy];
    }

    else
    {
      pf_defaultInstanceIdentifier = [MEMORY[0x1E696AFB0] pf_defaultInstanceIdentifier];
    }

    defaultInstanceIdentifier = v5->_defaultInstanceIdentifier;
    v5->_defaultInstanceIdentifier = pf_defaultInstanceIdentifier;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    extensionBundleInstanceToReasonMap = v5->_extensionBundleInstanceToReasonMap;
    v5->_extensionBundleInstanceToReasonMap = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    extensionBundleIdentifierWithReasonToInstanceMap = v5->_extensionBundleIdentifierWithReasonToInstanceMap;
    v5->_extensionBundleIdentifierWithReasonToInstanceMap = strongToStrongObjectsMapTable2;
  }

  return v5;
}

- (id)acquireInstanceForExtension:(id)extension reason:(id)reason error:(id *)error
{
  v42[2] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  reasonCopy = reason;
  if (reasonCopy)
  {
    v10 = reasonCopy;
  }

  else
  {
    v10 = &stru_1F425B6D8;
  }

  if (extensionCopy)
  {
    posterExtensionBundleIdentifier = [extensionCopy posterExtensionBundleIdentifier];
    v32 = -[NSObject stringByAppendingFormat:](posterExtensionBundleIdentifier, "stringByAppendingFormat:", @"-['%@']", v10);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = [(NSMapTable *)selfCopy->_extensionBundleIdentifierWithReasonToInstanceMap objectForKey:v32];
    if (v13)
    {
      if (![(__CFString *)v10 isEqualToString:@"Editing"])
      {
        instanceIdentifier = [v13 instanceIdentifier];
        v26 = [(NSMapTable *)selfCopy->_extensionBundleInstanceToReasonMap objectForKey:instanceIdentifier];
        [v26 addObject:v10];

        v27 = PFLogExtensionInstance();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          posterExtensionBundleIdentifier2 = [extensionCopy posterExtensionBundleIdentifier];
          instanceIdentifier2 = [v13 instanceIdentifier];
          *buf = 134218754;
          v34 = selfCopy;
          v35 = 2112;
          v36 = posterExtensionBundleIdentifier2;
          v37 = 2114;
          v38 = instanceIdentifier2;
          v39 = 2114;
          v40 = v10;
          _os_log_impl(&dword_1C269D000, v27, OS_LOG_TYPE_DEFAULT, "(%p) extension '%@' has instance %{public}@; will use for reason '%{public}@'", buf, 0x2Au);
        }

        v17 = v13;
        goto LABEL_26;
      }

      [(PFPosterExtensionInstanceProvider *)selfCopy relinquishExtensionInstance:v13 reason:v10];
    }

    if ([(__CFString *)v10 isEqualToString:@"Editing"])
    {
      v14 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    }

    else
    {
      v14 = [MEMORY[0x1E696AFB0] pf_UUIDFromArbitraryString:v10];
    }

    instanceIdentifier = v14;
    v19 = [(__CFString *)v10 length];
    defaultInstanceIdentifier = instanceIdentifier;
    if (!v19)
    {
      defaultInstanceIdentifier = selfCopy->_defaultInstanceIdentifier;
    }

    v21 = defaultInstanceIdentifier;
    v22 = [[PFPosterExtensionInstance alloc] initWithExtension:extensionCopy instanceIdentifier:v21];

    [(PFPosterExtensionInstance *)v22 addInstanceObserver:selfCopy];
    v23 = [(NSMapTable *)selfCopy->_extensionBundleInstanceToReasonMap objectForKey:v21];
    if (!v23)
    {
      v23 = objc_opt_new();
      [(NSMapTable *)selfCopy->_extensionBundleInstanceToReasonMap setObject:v23 forKey:v21];
    }

    [v23 addObject:v10];
    v24 = PFLogExtensionInstance();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      posterExtensionBundleIdentifier3 = [extensionCopy posterExtensionBundleIdentifier];
      *buf = 134218754;
      v34 = selfCopy;
      v35 = 2112;
      v36 = posterExtensionBundleIdentifier3;
      v37 = 2114;
      v38 = v21;
      v39 = 2114;
      v40 = v10;
      _os_log_impl(&dword_1C269D000, v24, OS_LOG_TYPE_DEFAULT, "(%p) extension '%@' booted new instance %{public}@ for reason '%{public}@'", buf, 0x2Au);
    }

    [(NSMapTable *)selfCopy->_extensionBundleIdentifierWithReasonToInstanceMap setObject:v22 forKey:v32];
    v17 = v22;

LABEL_26:
    objc_sync_exit(selfCopy);

    goto LABEL_27;
  }

  if (error)
  {
    v15 = MEMORY[0x1E696ABC0];
    v41[0] = *MEMORY[0x1E696A588];
    v41[1] = @"reason";
    v42[0] = @"cannot acquire instance for nil extension";
    v42[1] = v10;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
    *error = [v15 pf_errorWithCode:3 userInfo:v16];
  }

  posterExtensionBundleIdentifier = PFLogExtensionInstance();
  if (os_log_type_enabled(posterExtensionBundleIdentifier, OS_LOG_TYPE_ERROR))
  {
    [PFPosterExtensionInstanceProvider acquireInstanceForExtension:v10 reason:posterExtensionBundleIdentifier error:?];
  }

  v17 = 0;
LABEL_27:

  v30 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)relinquishExtensionInstance:(id)instance reason:(id)reason
{
  v27 = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  reasonCopy = reason;
  if (!instanceCopy)
  {
    [PFPosterExtensionInstanceProvider relinquishExtensionInstance:a2 reason:?];
  }

  if (reasonCopy)
  {
    v9 = reasonCopy;
  }

  else
  {
    v9 = &stru_1F425B6D8;
  }

  extension = [instanceCopy extension];
  posterExtensionBundleIdentifier = [extension posterExtensionBundleIdentifier];

  v12 = [posterExtensionBundleIdentifier stringByAppendingFormat:@"-['%@']", v9];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  instanceIdentifier = [instanceCopy instanceIdentifier];
  v15 = PFLogExtensionInstance();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    instanceIdentifier2 = [instanceCopy instanceIdentifier];
    *buf = 134218754;
    v20 = selfCopy;
    v21 = 2112;
    v22 = posterExtensionBundleIdentifier;
    v23 = 2114;
    v24 = instanceIdentifier2;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&dword_1C269D000, v15, OS_LOG_TYPE_DEFAULT, "(%p) relinquish extension '%@'/%{public}@ for reason '%{public}@'", buf, 0x2Au);
  }

  v17 = [(NSMapTable *)selfCopy->_extensionBundleInstanceToReasonMap objectForKey:instanceIdentifier];
  [v17 removeObject:v9];
  if (![v17 count])
  {
    [(NSMapTable *)selfCopy->_extensionBundleIdentifierWithReasonToInstanceMap removeObjectForKey:v12];
    [(NSMapTable *)selfCopy->_extensionBundleInstanceToReasonMap removeObjectForKey:instanceIdentifier];
    [instanceCopy invalidate];
  }

  objc_sync_exit(selfCopy);
  v18 = *MEMORY[0x1E69E9840];
}

- (NSSet)activeExtensionInstances
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E695DFD8];
  objectEnumerator = [(NSMapTable *)selfCopy->_extensionBundleIdentifierWithReasonToInstanceMap objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v6 = [v3 setWithArray:allObjects];

  objc_sync_exit(selfCopy);

  return v6;
}

- (void)noteExtensionsWereUpdated:(id)updated
{
  v38 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  v26 = [updatedCopy valueForKey:@"posterExtensionBundleIdentifier"];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = MEMORY[0x1E695DFD8];
  keyEnumerator = [(NSMapTable *)selfCopy->_extensionBundleIdentifierWithReasonToInstanceMap keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v8 = [v5 setWithArray:allObjects];

  v24 = v8;
  v9 = [v8 mutableCopy];
  [v9 minusSet:v26];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [(NSMapTable *)selfCopy->_extensionBundleIdentifierWithReasonToInstanceMap copy];
  keyEnumerator2 = [v10 keyEnumerator];

  v12 = [keyEnumerator2 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v12)
  {
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(keyEnumerator2);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = [(NSMapTable *)selfCopy->_extensionBundleIdentifierWithReasonToInstanceMap objectForKey:v15];
        extension = [v16 extension];
        posterExtensionBundleIdentifier = [extension posterExtensionBundleIdentifier];

        if ([v9 containsObject:posterExtensionBundleIdentifier])
        {
          [v16 invalidate];
          [(NSMapTable *)selfCopy->_extensionBundleIdentifierWithReasonToInstanceMap removeObjectForKey:v15];
          extensionBundleInstanceToReasonMap = selfCopy->_extensionBundleInstanceToReasonMap;
          instanceIdentifier = [v16 instanceIdentifier];
          [(NSMapTable *)extensionBundleInstanceToReasonMap removeObjectForKey:instanceIdentifier];

          v21 = PFLogExtensionInstance();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            instanceIdentifier2 = [v16 instanceIdentifier];
            *buf = 134218498;
            v32 = selfCopy;
            v33 = 2112;
            v34 = posterExtensionBundleIdentifier;
            v35 = 2114;
            v36 = instanceIdentifier2;
            _os_log_impl(&dword_1C269D000, v21, OS_LOG_TYPE_DEFAULT, "(%p) cleaning up after now invalid extension '%@'/%{public}@", buf, 0x20u);
          }
        }
      }

      v12 = [keyEnumerator2 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v12);
  }

  objc_sync_exit(selfCopy);
  v23 = *MEMORY[0x1E69E9840];
}

- (id)instanceForExtension:(id)extension reason:(id)reason
{
  extensionCopy = extension;
  reasonCopy = reason;
  posterExtensionBundleIdentifier = [extensionCopy posterExtensionBundleIdentifier];
  reasonCopy = [posterExtensionBundleIdentifier stringByAppendingFormat:@"-['%@']", reasonCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = [(NSMapTable *)selfCopy->_extensionBundleIdentifierWithReasonToInstanceMap objectForKey:reasonCopy];
  objc_sync_exit(selfCopy);

  return v11;
}

- (void)extensionInstanceDidInvalidate:(id)invalidate
{
  v32 = *MEMORY[0x1E69E9840];
  invalidateCopy = invalidate;
  if (invalidateCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = PFLogExtensionInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      extension = [invalidateCopy extension];
      posterExtensionBundleIdentifier = [extension posterExtensionBundleIdentifier];
      instanceIdentifier = [invalidateCopy instanceIdentifier];
      *buf = 134218498;
      v27 = selfCopy;
      v28 = 2112;
      v29 = posterExtensionBundleIdentifier;
      v30 = 2114;
      v31 = instanceIdentifier;
      _os_log_impl(&dword_1C269D000, v6, OS_LOG_TYPE_DEFAULT, "(%p) invalidated instance %@/%{public}@", buf, 0x20u);
    }

    v10 = objc_opt_new();
    dictionaryRepresentation = [(NSMapTable *)selfCopy->_extensionBundleIdentifierWithReasonToInstanceMap dictionaryRepresentation];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __68__PFPosterExtensionInstanceProvider_extensionInstanceDidInvalidate___block_invoke;
    v22[3] = &unk_1E81899D8;
    v23 = invalidateCopy;
    v12 = v10;
    v24 = v12;
    [dictionaryRepresentation enumerateKeysAndObjectsUsingBlock:v22];

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

          [(NSMapTable *)selfCopy->_extensionBundleIdentifierWithReasonToInstanceMap removeObjectForKey:*(*(&v18 + 1) + 8 * v16++), v18];
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v14);
    }

    objc_sync_exit(selfCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = PFLogExtensionInstance();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = selfCopy;
    _os_log_impl(&dword_1C269D000, v3, OS_LOG_TYPE_DEFAULT, "(%p) cancel", &v7, 0xCu);
  }

  objectEnumerator = [(NSMapTable *)selfCopy->_extensionBundleIdentifierWithReasonToInstanceMap objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  [allObjects enumerateObjectsUsingBlock:&__block_literal_global_236];

  [(NSMapTable *)selfCopy->_extensionBundleIdentifierWithReasonToInstanceMap removeAllObjects];
  objc_sync_exit(selfCopy);

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