@interface _PBFPosterExtensionDataStoreAssertionController
- (BOOL)_appendAssertion:(id)assertion forIdentity:(id)identity;
- (BOOL)_internalLock_appendAssertion:(id)assertion forIdentity:(id)identity;
- (BOOL)_internalLock_removeAssertion:(id)assertion forIdentity:(id)identity;
- (BOOL)_removeAssertion:(id)assertion forIdentity:(id)identity;
- (BOOL)acquireInUseAssertionForIdentity:(id)identity reason:(id)reason;
- (BOOL)invalidateInUseAssertionForIdentity:(id)identity reason:(id)reason;
- (NSMapTable)inUseAssertionsByIdentity;
- (NSString)description;
- (_PBFPosterExtensionDataStoreAssertionController)init;
- (_PBFPosterExtensionDataStoreAssertionController)initWithController:(id)controller;
- (id)inUsePosterPathIdentitiesForReason:(id)reason;
- (int64_t)_numberOfInUseAssertionsForIdentity:(id)identity;
- (int64_t)numberOfAssertionsForReason:(id)reason;
- (void)invalidate;
@end

@implementation _PBFPosterExtensionDataStoreAssertionController

- (_PBFPosterExtensionDataStoreAssertionController)initWithController:(id)controller
{
  controllerCopy = controller;
  v5 = [(_PBFPosterExtensionDataStoreAssertionController *)self init];
  if (v5)
  {
    inUseAssertionsByIdentity = [controllerCopy inUseAssertionsByIdentity];
    v7 = [inUseAssertionsByIdentity mutableCopy];
    v8 = v7;
    if (v7)
    {
      strongToStrongObjectsMapTable = v7;
    }

    else
    {
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    }

    internalLock_inUseAssertionsByIdentity = v5->_internalLock_inUseAssertionsByIdentity;
    v5->_internalLock_inUseAssertionsByIdentity = strongToStrongObjectsMapTable;
  }

  return v5;
}

- (_PBFPosterExtensionDataStoreAssertionController)init
{
  v7.receiver = self;
  v7.super_class = _PBFPosterExtensionDataStoreAssertionController;
  v2 = [(_PBFPosterExtensionDataStoreAssertionController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_internalLock._os_unfair_lock_opaque = 0;
    if (!v2->_internalLock_inUseAssertionsByIdentity)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      internalLock_inUseAssertionsByIdentity = v3->_internalLock_inUseAssertionsByIdentity;
      v3->_internalLock_inUseAssertionsByIdentity = strongToStrongObjectsMapTable;
    }
  }

  return v3;
}

- (NSString)description
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = [MEMORY[0x277CF0C00] builderWithObject:self];
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  os_unfair_lock_lock(&self->_internalLock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(NSMapTable *)self->_internalLock_inUseAssertionsByIdentity keyEnumerator];
  v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_internalLock_inUseAssertionsByIdentity objectForKey:v8];
        v10 = [strongToStrongObjectsMapTable objectForKey:v8];
        if (!v10)
        {
          v10 = objc_opt_new();
          [strongToStrongObjectsMapTable setObject:v10 forKey:v8];
        }

        objectEnumerator = [v9 objectEnumerator];
        allObjects = [objectEnumerator allObjects];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __62___PBFPosterExtensionDataStoreAssertionController_description__block_invoke;
        v19[3] = &unk_2782C8D78;
        v20 = v10;
        v13 = v10;
        [allObjects enumerateObjectsUsingBlock:v19];
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_internalLock);
  dictionaryRepresentation = [strongToStrongObjectsMapTable dictionaryRepresentation];
  [v17 appendDictionarySection:dictionaryRepresentation withName:@"assertion reasons for URL" skipIfEmpty:0];

  build = [v17 build];

  return build;
}

- (NSMapTable)inUseAssertionsByIdentity
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = [(NSMapTable *)self->_internalLock_inUseAssertionsByIdentity copy];
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

- (void)invalidate
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_internalLock);
  self->_internalLock_invalidated = 1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(NSMapTable *)self->_internalLock_inUseAssertionsByIdentity copy];
  keyEnumerator = [v3 keyEnumerator];

  v5 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = [(NSMapTable *)self->_internalLock_inUseAssertionsByIdentity objectForKey:*(*(&v18 + 1) + 8 * v8)];
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v15;
          do
          {
            v13 = 0;
            do
            {
              if (*v15 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v14 + 1) + 8 * v13++) invalidate];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v11);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [keyEnumerator countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  [(NSMapTable *)self->_internalLock_inUseAssertionsByIdentity removeAllObjects];
  os_unfair_lock_unlock(&self->_internalLock);
}

- (BOOL)acquireInUseAssertionForIdentity:(id)identity reason:(id)reason
{
  identityCopy = identity;
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [_PBFPosterExtensionDataStoreAssertionController acquireInUseAssertionForIdentity:a2 reason:?];
  }

  v9 = reasonCopy;
  if (identityCopy)
  {
    v10 = objc_alloc(MEMORY[0x277CF0CE8]);
    stablePersistenceIdentifier = [identityCopy stablePersistenceIdentifier];
    v12 = [v10 initWithIdentifier:stablePersistenceIdentifier forReason:v9 invalidationBlock:&__block_literal_global_25];

    v13 = [(_PBFPosterExtensionDataStoreAssertionController *)self _appendAssertion:v12 forIdentity:identityCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)invalidateInUseAssertionForIdentity:(id)identity reason:(id)reason
{
  v26 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [_PBFPosterExtensionDataStoreAssertionController invalidateInUseAssertionForIdentity:a2 reason:?];
  }

  v9 = reasonCopy;
  if (identityCopy)
  {
    os_unfair_lock_lock(&self->_internalLock);
    [(NSMapTable *)self->_internalLock_inUseAssertionsByIdentity objectForKey:identityCopy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v24 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
LABEL_5:
      v14 = 0;
      while (1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        reason = [v15 reason];
        v17 = [reason isEqualToString:v9];

        if (v17)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v12)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v18 = v15;

      if (!v18)
      {
        goto LABEL_14;
      }

      v19 = [(_PBFPosterExtensionDataStoreAssertionController *)self _internalLock_removeAssertion:v18 forIdentity:identityCopy];
    }

    else
    {
LABEL_11:

      v18 = 0;
LABEL_14:
      v19 = 0;
    }

    os_unfair_lock_unlock(&self->_internalLock);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (int64_t)numberOfAssertionsForReason:(id)reason
{
  v3 = [(_PBFPosterExtensionDataStoreAssertionController *)self inUsePosterPathIdentitiesForReason:reason];
  v4 = [v3 count];

  return v4;
}

- (id)inUsePosterPathIdentitiesForReason:(id)reason
{
  v31 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = objc_opt_new();
  os_unfair_lock_lock(&self->_internalLock);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  selfCopy = self;
  obj = [(NSMapTable *)self->_internalLock_inUseAssertionsByIdentity keyEnumerator];
  v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v18 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = [(NSMapTable *)selfCopy->_internalLock_inUseAssertionsByIdentity objectForKey:v7];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v22;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(v8);
              }

              reason = [*(*(&v21 + 1) + 8 * j) reason];
              v14 = [reason isEqual:reasonCopy];

              if (v14)
              {
                [v5 addObject:v7];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v10);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  os_unfair_lock_unlock(&selfCopy->_internalLock);
  v15 = [v5 copy];

  return v15;
}

- (int64_t)_numberOfInUseAssertionsForIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_lock(&self->_internalLock);
  if (self->_internalLock_invalidated)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(NSMapTable *)self->_internalLock_inUseAssertionsByIdentity objectForKey:identityCopy];
    v5 = [v6 count];
  }

  os_unfair_lock_unlock(&self->_internalLock);

  return v5;
}

- (BOOL)_appendAssertion:(id)assertion forIdentity:(id)identity
{
  assertionCopy = assertion;
  identityCopy = identity;
  os_unfair_lock_lock(&self->_internalLock);
  v8 = !self->_internalLock_invalidated && [(_PBFPosterExtensionDataStoreAssertionController *)self _internalLock_appendAssertion:assertionCopy forIdentity:identityCopy];
  os_unfair_lock_unlock(&self->_internalLock);

  return v8;
}

- (BOOL)_internalLock_appendAssertion:(id)assertion forIdentity:(id)identity
{
  assertionCopy = assertion;
  identityCopy = identity;
  if (!identityCopy)
  {
    [_PBFPosterExtensionDataStoreAssertionController _internalLock_appendAssertion:a2 forIdentity:?];
  }

  if (!assertionCopy)
  {
    [_PBFPosterExtensionDataStoreAssertionController _internalLock_appendAssertion:a2 forIdentity:?];
  }

  v9 = identityCopy;
  if (self->_internalLock_invalidated)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(NSMapTable *)self->_internalLock_inUseAssertionsByIdentity objectForKey:identityCopy];
    v10 = v11 == 0;
    if (!v11)
    {
      v11 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
      [(NSMapTable *)self->_internalLock_inUseAssertionsByIdentity setObject:v11 forKey:v9];
    }

    allObjects = [v11 allObjects];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __93___PBFPosterExtensionDataStoreAssertionController__internalLock_appendAssertion_forIdentity___block_invoke;
    v16[3] = &unk_2782C8DC0;
    v13 = assertionCopy;
    v17 = v13;
    v14 = [allObjects bs_containsObjectPassingTest:v16];

    if (v14)
    {
      [_PBFPosterExtensionDataStoreAssertionController _internalLock_appendAssertion:a2 forIdentity:?];
    }

    [v11 addObject:v13];
  }

  return v10;
}

- (BOOL)_removeAssertion:(id)assertion forIdentity:(id)identity
{
  assertionCopy = assertion;
  identityCopy = identity;
  if (!identityCopy)
  {
    [_PBFPosterExtensionDataStoreAssertionController _removeAssertion:a2 forIdentity:?];
  }

  if (!assertionCopy)
  {
    [_PBFPosterExtensionDataStoreAssertionController _removeAssertion:a2 forIdentity:?];
  }

  v9 = identityCopy;
  if (self->_internalLock_invalidated)
  {
    v10 = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_internalLock);
    v10 = [(_PBFPosterExtensionDataStoreAssertionController *)self _internalLock_removeAssertion:assertionCopy forIdentity:v9];
    os_unfair_lock_unlock(&self->_internalLock);
  }

  return v10;
}

- (BOOL)_internalLock_removeAssertion:(id)assertion forIdentity:(id)identity
{
  assertionCopy = assertion;
  identityCopy = identity;
  if (!identityCopy)
  {
    [_PBFPosterExtensionDataStoreAssertionController _internalLock_removeAssertion:a2 forIdentity:?];
  }

  if (!assertionCopy)
  {
    [_PBFPosterExtensionDataStoreAssertionController _internalLock_removeAssertion:a2 forIdentity:?];
  }

  v9 = identityCopy;
  if (self->_internalLock_invalidated)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(NSMapTable *)self->_internalLock_inUseAssertionsByIdentity objectForKey:identityCopy];
    if (([v11 containsObject:assertionCopy] & 1) == 0)
    {
      [_PBFPosterExtensionDataStoreAssertionController _internalLock_removeAssertion:a2 forIdentity:?];
    }

    [v11 removeObject:assertionCopy];
    [assertionCopy invalidate];
    v12 = [v11 count];
    v10 = v12 == 0;
    if (!v12)
    {
      [(NSMapTable *)self->_internalLock_inUseAssertionsByIdentity removeObjectForKey:v9];
    }
  }

  return v10;
}

- (void)acquireInUseAssertionForIdentity:(char *)a1 reason:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"isActiveReason", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidateInUseAssertionForIdentity:(char *)a1 reason:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"isActiveReason", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_internalLock_appendAssertion:(char *)a1 forIdentity:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"![[assertions allObjects] bs_containsObjectPassingTest:^BOOL(BSSimpleAssertion *otherAssertions) { return [[otherAssertions reason] isEqual:[assertion reason]]; }]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_internalLock_appendAssertion:(char *)a1 forIdentity:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"assertion", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_internalLock_appendAssertion:(char *)a1 forIdentity:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identity", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_removeAssertion:(char *)a1 forIdentity:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"assertion", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_removeAssertion:(char *)a1 forIdentity:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identity", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_internalLock_removeAssertion:(char *)a1 forIdentity:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[assertions containsObject:assertion]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_internalLock_removeAssertion:(char *)a1 forIdentity:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"assertion", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_internalLock_removeAssertion:(char *)a1 forIdentity:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identity", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end