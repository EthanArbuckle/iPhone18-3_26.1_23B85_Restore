@interface RBAssertionCollection
- (BOOL)hasAssertion:(id)a3;
- (BOOL)hasAssertionsForOriginator:(id)a3;
- (BOOL)hasAssertionsForOriginator:(id)a3 exceedingCount:(unint64_t)a4;
- (BOOL)hasResolvedAssertion:(id)a3;
- (RBAssertionCollection)init;
- (id)allAssertions;
- (id)assertionWithIdentifier:(id)a3;
- (id)assertionsForOriginator:(id)a3;
- (id)assertionsForTarget:(id)a3;
- (id)assertionsForTargetIdentity:(id)a3;
- (unint64_t)assertionCountForOriginator:(id)a3;
- (unint64_t)assertionCountForTargetProcessIdentity:(id)a3;
- (unint64_t)count;
- (void)addAssertion:(id)a3;
- (void)enumerateAssertionsForOriginator:(id)a3 withBlock:(id)a4;
- (void)enumerateAssertionsForProcessTargetsWithBlock:(id)a3;
- (void)enumerateAssertionsForSystemTargetWithBlock:(id)a3;
- (void)enumerateAssertionsForTargetProcessIdentity:(id)a3 withBlock:(id)a4;
- (void)enumerateAssertionsWithBlock:(id)a3;
- (void)noteResolvedAssertion:(id)a3;
- (void)removeAssertion:(id)a3;
@end

@implementation RBAssertionCollection

- (unint64_t)count
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_assertionsByIdentifier count];
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (RBAssertionCollection)init
{
  v17.receiver = self;
  v17.super_class = RBAssertionCollection;
  v2 = [(RBAssertionCollection *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock = 0;
    v4 = [MEMORY[0x277CBEB38] dictionary];
    assertionsByIdentifier = v3->_assertionsByIdentifier;
    v3->_assertionsByIdentifier = v4;

    v6 = [MEMORY[0x277CBEB58] set];
    processAssertions = v3->_processAssertions;
    v3->_processAssertions = v6;

    v8 = [MEMORY[0x277CBEB58] set];
    systemAssertions = v3->_systemAssertions;
    v3->_systemAssertions = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    assertionsByTargetProcessIdentity = v3->_assertionsByTargetProcessIdentity;
    v3->_assertionsByTargetProcessIdentity = v10;

    v12 = [MEMORY[0x277CBEB38] dictionary];
    assertionsByOriginator = v3->_assertionsByOriginator;
    v3->_assertionsByOriginator = v12;

    v14 = [MEMORY[0x277CBEB58] set];
    resolvedIdentifiers = v3->_resolvedIdentifiers;
    v3->_resolvedIdentifiers = v14;
  }

  return v3;
}

- (id)allAssertions
{
  os_unfair_recursive_lock_lock_with_options();
  processAssertions = self->_processAssertions;
  if (self->_systemAssertions)
  {
    if (processAssertions)
    {
      v4 = [(NSMutableSet *)processAssertions setByAddingObjectsFromSet:?];
      goto LABEL_6;
    }

    processAssertions = self->_systemAssertions;
  }

  v4 = [(NSMutableSet *)processAssertions copy];
LABEL_6:
  v5 = v4;
  os_unfair_recursive_lock_unlock();

  return v5;
}

- (void)enumerateAssertionsWithBlock:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_assertionsByIdentifier allValues];
  os_unfair_recursive_lock_unlock();
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      v4[2](v4, v11, &v18);
      LOBYTE(v11) = v18;
      objc_autoreleasePoolPop(v12);
      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)enumerateAssertionsForSystemTargetWithBlock:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableSet *)self->_systemAssertions allObjects];
  os_unfair_recursive_lock_unlock();
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      v4[2](v4, v11, &v18);
      LOBYTE(v11) = v18;
      objc_autoreleasePoolPop(v12);
      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)enumerateAssertionsForProcessTargetsWithBlock:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableSet *)self->_processAssertions allObjects];
  os_unfair_recursive_lock_unlock();
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      v4[2](v4, v11, &v18);
      LOBYTE(v11) = v18;
      objc_autoreleasePoolPop(v12);
      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)enumerateAssertionsForTargetProcessIdentity:(id)a3 withBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_recursive_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity objectForKey:v6];
  v9 = [v8 allObjects];

  os_unfair_recursive_lock_unlock();
  v22 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      v16 = objc_autoreleasePoolPush();
      v7[2](v7, v15, &v22);
      LOBYTE(v15) = v22;
      objc_autoreleasePoolPop(v16);
      if (v15)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)enumerateAssertionsForOriginator:(id)a3 withBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_recursive_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)self->_assertionsByOriginator objectForKey:v6];
  v9 = [v8 allObjects];

  os_unfair_recursive_lock_unlock();
  v22 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      v16 = objc_autoreleasePoolPush();
      v7[2](v7, v15, &v22);
      LOBYTE(v15) = v22;
      objc_autoreleasePoolPop(v16);
      if (v15)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)assertionWithIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_assertionsByIdentifier objectForKeyedSubscript:v4];

  os_unfair_recursive_lock_unlock();

  return v5;
}

- (id)assertionsForTarget:(id)a3
{
  v4 = a3;
  if ([v4 isSystem])
  {
    os_unfair_recursive_lock_lock_with_options();
    v5 = [(NSMutableSet *)self->_systemAssertions copy];
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    v6 = [v4 identity];
    v5 = [(RBAssertionCollection *)self assertionsForTargetIdentity:v6];
  }

  return v5;
}

- (id)assertionsForTargetIdentity:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity objectForKey:v4];

  v6 = [v5 copy];
  os_unfair_recursive_lock_unlock();

  return v6;
}

- (id)assertionsForOriginator:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_assertionsByOriginator objectForKey:v4];

  v6 = [v5 copy];
  os_unfair_recursive_lock_unlock();

  return v6;
}

- (void)removeAssertion:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_recursive_lock_lock_with_options();
  v5 = [v4 target];
  v6 = [v4 originator];
  v7 = [v6 identifier];

  v8 = [v4 identifier];
  v9 = [v5 identity];
  [(NSMutableDictionary *)self->_assertionsByIdentifier removeObjectForKey:v8];
  [(NSMutableSet *)self->_resolvedIdentifiers removeObject:v8];
  v10 = [(NSMutableDictionary *)self->_assertionsByOriginator objectForKeyedSubscript:v7];
  v11 = v10;
  if (v10)
  {
    [v10 removeObject:v4];
  }

  if (![v11 count])
  {
    [(NSMutableDictionary *)self->_assertionsByOriginator removeObjectForKey:v7];
  }

  v12 = rbs_assertion_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v24 = [(NSMutableDictionary *)self->_assertionsByIdentifier count];
    *buf = 67109634;
    *v28 = v24;
    *&v28[4] = 2114;
    *&v28[6] = v7;
    *&v28[14] = 1024;
    *&v28[16] = [v11 count];
    _os_log_debug_impl(&dword_262485000, v12, OS_LOG_TYPE_DEBUG, "Now tracking %u assertions (%{public}@ holds %u).", buf, 0x18u);
  }

  v13 = rbs_assertion_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

  if (v14)
  {
    v15 = rbs_assertion_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(RBAssertionCollection *)v8 removeAssertion:v5, v15];
    }

    [v11 enumerateObjectsUsingBlock:&__block_literal_global_13];
  }

  if ([v5 isSystem])
  {
    [(NSMutableSet *)self->_systemAssertions removeObject:v4];
  }

  else
  {
    [(NSMutableSet *)self->_processAssertions removeObject:v4];
    v16 = [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity objectForKey:v9];
    [v16 removeObject:v4];
    if (![v16 count])
    {
      [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity removeObjectForKey:v9];
    }

    v17 = rbs_assertion_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity objectForKeyedSubscript:v9];
      v19 = [v18 count];
      *buf = 138543618;
      *v28 = v9;
      *&v28[8] = 2048;
      *&v28[10] = v19;
      _os_log_impl(&dword_262485000, v17, OS_LOG_TYPE_INFO, "%{public}@ is now targeted by %lu assertions", buf, 0x16u);
    }

    v20 = rbs_assertion_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

    if (v21)
    {
      v22 = [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity objectForKeyedSubscript:v9];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __41__RBAssertionCollection_removeAssertion___block_invoke_2;
      v25[3] = &unk_279B32ED8;
      v26 = v7;
      [v22 enumerateObjectsUsingBlock:v25];
    }
  }

  os_unfair_recursive_lock_unlock();

  v23 = *MEMORY[0x277D85DE8];
}

void __41__RBAssertionCollection_removeAssertion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = rbs_assertion_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __41__RBAssertionCollection_removeAssertion___block_invoke_cold_1(v2);
  }
}

void __41__RBAssertionCollection_removeAssertion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = rbs_assertion_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __41__RBAssertionCollection_removeAssertion___block_invoke_2_cold_1(a1, v3);
  }
}

- (void)addAssertion:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_recursive_lock_lock_with_options();
  v5 = [v4 target];
  v6 = [v4 originator];
  v7 = [v6 identifier];

  v8 = [v4 identifier];
  v9 = [v5 identity];
  [(NSMutableDictionary *)self->_assertionsByIdentifier setObject:v4 forKeyedSubscript:v8];
  v10 = [(NSMutableDictionary *)self->_assertionsByOriginator objectForKey:v7];
  if (!v10)
  {
    v10 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)self->_assertionsByOriginator setObject:v10 forKey:v7];
  }

  [v10 addObject:v4];
  v11 = rbs_assertion_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(RBAssertionCollection *)v4 addAssertion:v11];
  }

  v12 = rbs_assertion_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v18 = [(NSMutableDictionary *)self->_assertionsByIdentifier count];
    v19 = 67109634;
    *v20 = v18;
    *&v20[4] = 2114;
    *&v20[6] = v7;
    v21 = 1024;
    v22 = [v10 count];
    _os_log_debug_impl(&dword_262485000, v12, OS_LOG_TYPE_DEBUG, "Now tracking %u assertions (%{public}@ holds %u).", &v19, 0x18u);
  }

  if ([v5 isSystem])
  {
    [(NSMutableSet *)self->_systemAssertions addObject:v4];
  }

  else
  {
    [(NSMutableSet *)self->_processAssertions addObject:v4];
    v13 = [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity objectForKey:v9];
    if (!v13)
    {
      v13 = [MEMORY[0x277CBEB58] set];
      [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity setObject:v13 forKey:v9];
    }

    [v13 addObject:v4];
    v14 = rbs_assertion_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity objectForKeyedSubscript:v9];
      v16 = [v15 count];
      v19 = 138543618;
      *v20 = v9;
      *&v20[8] = 1024;
      *&v20[10] = v16;
      _os_log_impl(&dword_262485000, v14, OS_LOG_TYPE_INFO, "%{public}@ is now targeted by %u assertions", &v19, 0x12u);
    }
  }

  os_unfair_recursive_lock_unlock();

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasAssertion:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  assertionsByIdentifier = self->_assertionsByIdentifier;
  v6 = [v4 identifier];

  v7 = [(NSMutableDictionary *)assertionsByIdentifier objectForKeyedSubscript:v6];
  LOBYTE(v4) = v7 != 0;

  os_unfair_recursive_lock_unlock();
  return v4;
}

- (BOOL)hasAssertionsForOriginator:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_assertionsByOriginator objectForKeyedSubscript:v4];

  LOBYTE(v4) = [v5 count] != 0;
  os_unfair_recursive_lock_unlock();
  return v4;
}

- (unint64_t)assertionCountForTargetProcessIdentity:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity objectForKeyedSubscript:v4];

  v6 = [v5 count];
  os_unfair_recursive_lock_unlock();
  return v6;
}

- (BOOL)hasAssertionsForOriginator:(id)a3 exceedingCount:(unint64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v7 = [(NSMutableDictionary *)self->_assertionsByOriginator objectForKeyedSubscript:v6];
  if ([v7 count] <= a4)
  {
    v14 = 0;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(NSMutableDictionary *)self->_assertionsByOriginator objectForKeyedSubscript:v6, 0];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v17 + 1) + 8 * i) isValid])
          {
            if (++v11 > a4)
            {
              v14 = 1;
              goto LABEL_14;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_14:
  }

  os_unfair_recursive_lock_unlock();

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (unint64_t)assertionCountForOriginator:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_assertionsByOriginator objectForKeyedSubscript:v4];

  v6 = [v5 count];
  os_unfair_recursive_lock_unlock();
  return v6;
}

- (void)noteResolvedAssertion:(id)a3
{
  resolvedIdentifiers = self->_resolvedIdentifiers;
  v4 = [a3 identifier];
  [(NSMutableSet *)resolvedIdentifiers addObject:v4];
}

- (BOOL)hasResolvedAssertion:(id)a3
{
  resolvedIdentifiers = self->_resolvedIdentifiers;
  v4 = [a3 identifier];
  LOBYTE(resolvedIdentifiers) = [(NSMutableSet *)resolvedIdentifiers containsObject:v4];

  return resolvedIdentifiers;
}

- (void)removeAssertion:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_262485000, log, OS_LOG_TYPE_DEBUG, "Removing assertion %{public}@ on %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __41__RBAssertionCollection_removeAssertion___block_invoke_cold_1(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [a1 target];
  v3 = [v2 identity];
  v4 = [a1 explanation];
  v5 = [a1 identifier];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_12(&dword_262485000, v6, v7, "> %{public}@ ['%{public}@'] [%{public}@]", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __41__RBAssertionCollection_removeAssertion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = [a2 explanation];
  v5 = [a2 identifier];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_12(&dword_262485000, v6, v7, "> %{public}@ ['%{public}@'] [%{public}@]", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)addAssertion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_262485000, a2, OS_LOG_TYPE_DEBUG, "Adding assertion %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end