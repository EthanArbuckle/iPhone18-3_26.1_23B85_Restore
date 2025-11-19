@interface STUIStatusBarAnimation
+ (STUIStatusBarAnimation)animationWithBlock:(id)a3;
+ (void)_addAnimations:(id)a3 toDispatchGroup:(id)a4;
+ (void)_addAnimations:(id)a3 toPreparingAnimations:(id)a4 exclusiveAnimations:(id)a5 visitedDisplayItemIdentifiers:(id)a6;
+ (void)initialize;
+ (void)prepareAnimations:(id)a3 forStatusBar:(id)a4;
- (NSSet)effectiveDelayedItemIdentifiers;
- (STUIStatusBarAnimation)parentAnimation;
- (id)_dependentItemIdentifiersEnabledOnly:(BOOL)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_prepareForStatusBar:(id)a3 preparingAnimations:(id)a4 exclusiveAnimations:(id)a5;
- (void)addCompletionHandler:(id)a3;
- (void)addSubAnimation:(id)a3 forDisplayItemWithIdentifier:(id)a4;
- (void)addTimeout:(double)a3 withHandler:(id)a4;
- (void)addTotalCompletionHandler:(id)a3;
- (void)cancel;
- (void)performForStatusBar:(id)a3;
@end

@implementation STUIStatusBarAnimation

- (void)cancel
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_enabled)
  {
    v3 = _STUIStatusBar_Log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v25 = self;
      _os_log_impl(&dword_26C4DD000, v3, OS_LOG_TYPE_DEBUG, "cancel %@", buf, 0xCu);
    }

    self->_enabled = 0;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = self->_completionHandlers;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v18 + 1) + 8 * v8++) + 16))();
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v6);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [(STUIStatusBarAnimation *)self subAnimations];
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

          [*(*(&v14 + 1) + 8 * v13++) cancel];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v11);
    }
  }
}

- (NSSet)effectiveDelayedItemIdentifiers
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_enabled)
  {
    v3 = [(STUIStatusBarAnimation *)self delayedItemIdentifiers];
    v4 = [v3 mutableCopy];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [(STUIStatusBarAnimation *)self delayedDisplayItemPlacements];
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v25 + 1) + 8 * i) identifier];
          v11 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:v10];
          [v4 addObject:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }

    delaysDependentItems = self->_delaysDependentItems;
    if (delaysDependentItems || self->_delaysAnimatingItems)
    {
      v13 = [(STUIStatusBarAnimation *)self _dependentItemIdentifiersEnabledOnly:!delaysDependentItems];
      [v4 unionSet:v13];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [(STUIStatusBarAnimation *)self subAnimations];
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v21 + 1) + 8 * j) effectiveDelayedItemIdentifiers];
          [v4 unionSet:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x277CBEB58] set];
    v3 = _statusBarRunningAnimations;
    _statusBarRunningAnimations = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

+ (STUIStatusBarAnimation)animationWithBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setAnimationBlock:v4];

  v6 = [MEMORY[0x277CBEB98] set];
  [v5 setDelayedItemIdentifiers:v6];

  v7 = [MEMORY[0x277CBEB98] set];
  [v5 setDelayedDisplayItemPlacements:v7];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = _Block_copy(self->_animationBlock);
  v6 = v4[13];
  v4[13] = v5;

  v7 = _Block_copy(self->_prepareBlock);
  v8 = v4[7];
  v4[7] = v7;

  v4[6] = self->_type;
  *(v4 + 10) = self->_enabled;
  v4[2] = self->_priority;
  v9 = [(NSString *)self->_identifier copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_exclusivityGroupIdentifier copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(STUIStatusBarIdentifier *)self->_displayItemIdentifier copy];
  v14 = v4[3];
  v4[3] = v13;

  v15 = [(NSSet *)self->_delayedItemIdentifiers copy];
  v16 = v4[8];
  v4[8] = v15;

  v17 = [(NSSet *)self->_delayedDisplayItemPlacements copy];
  v18 = v4[9];
  v4[9] = v17;

  *(v4 + 8) = self->_delaysAnimatingItems;
  *(v4 + 9) = self->_delaysDependentItems;
  v4[12] = *&self->_timeout;
  v19 = _Block_copy(self->_timeoutBlock);
  v20 = v4[14];
  v4[14] = v19;

  return v4;
}

- (void)addCompletionHandler:(id)a3
{
  v4 = a3;
  completionHandlers = self->_completionHandlers;
  aBlock = v4;
  if (!completionHandlers)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = self->_completionHandlers;
    self->_completionHandlers = v6;

    v4 = aBlock;
    completionHandlers = self->_completionHandlers;
  }

  v8 = _Block_copy(v4);
  [(NSMutableArray *)completionHandlers addObject:v8];
}

- (void)addTotalCompletionHandler:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = dispatch_group_create();
  v7[0] = self;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [STUIStatusBarAnimation _addAnimations:v6 toDispatchGroup:v5];

  dispatch_group_notify(v5, MEMORY[0x277D85CD0], v4);
}

+ (void)prepareAnimations:(id)a3 forStatusBar:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBEB38];
  v8 = a3;
  v9 = [v7 dictionary];
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = [MEMORY[0x277CBEB98] set];
  [a1 _addAnimations:v8 toPreparingAnimations:v9 exclusiveAnimations:v10 visitedDisplayItemIdentifiers:v11];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__STUIStatusBarAnimation_prepareAnimations_forStatusBar___block_invoke;
  v15[3] = &unk_279D38DF0;
  v16 = v6;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v6;
  [v13 enumerateKeysAndObjectsUsingBlock:v15];
}

void __57__STUIStatusBarAnimation_prepareAnimations_forStatusBar___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = v4;
  while ([v4 count])
  {
    v5 = [v6 anyObject];
    [v5 _prepareForStatusBar:a1[4] preparingAnimations:a1[5] exclusiveAnimations:a1[6]];

    v4 = v6;
  }
}

+ (void)_addAnimations:(id)a3 toPreparingAnimations:(id)a4 exclusiveAnimations:(id)a5 visitedDisplayItemIdentifiers:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28 = a6;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v9;
  v12 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = [v16 displayItemIdentifier];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = [MEMORY[0x277CBEB68] null];
        }

        v20 = v19;

        v21 = [v10 objectForKeyedSubscript:v20];
        if (!v21)
        {
          v21 = [MEMORY[0x277CBEB58] set];
          [v10 setObject:v21 forKeyedSubscript:v20];
        }

        [v21 addObject:v16];
        v22 = [v16 exclusivityGroupIdentifier];
        if (v22)
        {
          v23 = [v11 objectForKeyedSubscript:v22];
          if (!v23)
          {
            v23 = [MEMORY[0x277CBEB58] set];
            [v11 setObject:v23 forKeyedSubscript:v22];
          }

          [v23 addObject:v16];
        }

        v24 = [v16 subAnimations];
        v25 = [v28 setByAddingObject:v20];
        [a1 _addAnimations:v24 toPreparingAnimations:v10 exclusiveAnimations:v11 visitedDisplayItemIdentifiers:v25];
      }

      v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }
}

- (void)_prepareForStatusBar:(id)a3 preparingAnimations:(id)a4 exclusiveAnimations:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _STUIStatusBar_Log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v46 = self;
    _os_log_impl(&dword_26C4DD000, v11, OS_LOG_TYPE_DEBUG, "prepare %@", buf, 0xCu);
  }

  if (!self->_displayItemIdentifier)
  {
    v13 = 0;
    goto LABEL_17;
  }

  v12 = [v9 objectForKeyedSubscript:?];
  v13 = v12;
  if (!v12)
  {
LABEL_17:
    if (self->_exclusivityGroupIdentifier && ([v10 objectForKeyedSubscript:?], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = v20;
      v21 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v36;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v36 != v23)
            {
              objc_enumerationMutation(v14);
            }

            v25 = *(*(&v35 + 1) + 8 * i);
            if ([v25 priority] > self->_priority)
            {
              [v25 _prepareForStatusBar:v8 preparingAnimations:v9 exclusiveAnimations:v10];
              if ([v25 isEnabled])
              {
                v31 = v14;
                goto LABEL_46;
              }
            }
          }

          v22 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_parentAnimation);

    if (WeakRetained)
    {
      v27 = objc_loadWeakRetained(&self->_parentAnimation);
      [v27 _prepareForStatusBar:v8 preparingAnimations:v9 exclusiveAnimations:v10];

      v28 = objc_loadWeakRetained(&self->_parentAnimation);
      v29 = [v28 isEnabled];

      if (!v29)
      {
        goto LABEL_47;
      }
    }

    if (self->_displayItemIdentifier)
    {
      v30 = [v8 stateForDisplayItemWithIdentifier:?];
      v31 = [v30 displayItem];
      self->_enabled = [v30 prepareAnimation:self];
      p_enabled = &self->_enabled;

      if (!self->_enabled)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v31 = 0;
      self->_enabled = 1;
      p_enabled = &self->_enabled;
    }

    prepareBlock = self->_prepareBlock;
    if (prepareBlock && (prepareBlock[2](prepareBlock, self, v31) & 1) == 0)
    {
      [(STUIStatusBarAnimation *)self cancel];
    }

LABEL_40:
    if (*p_enabled && self->_displayItemIdentifier)
    {
      [v13 removeAllObjects];
    }

    v34 = _STUIStatusBar_Log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v46 = self;
      _os_log_impl(&dword_26C4DD000, v34, OS_LOG_TYPE_DEBUG, "prepared %@", buf, 0xCu);
    }

LABEL_46:
LABEL_47:

    goto LABEL_48;
  }

  if ([v12 containsObject:self])
  {
    [v13 removeObject:self];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = [v13 copy];
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v40;
LABEL_8:
      v18 = 0;
      while (1)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v39 + 1) + 8 * v18);
        if ([v19 priority] > self->_priority)
        {
          [v19 _prepareForStatusBar:v8 preparingAnimations:v9 exclusiveAnimations:v10];
          if ([v19 isEnabled])
          {
            goto LABEL_47;
          }
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
          if (v16)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    goto LABEL_17;
  }

LABEL_48:
}

+ (void)_addAnimations:(id)a3 toDispatchGroup:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 isEnabled])
        {
          dispatch_group_enter(v7);
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __57__STUIStatusBarAnimation__addAnimations_toDispatchGroup___block_invoke;
          v14[3] = &unk_279D37E28;
          v15 = v7;
          [v12 addCompletionHandler:v14];
        }

        v13 = [v12 subAnimations];
        [a1 _addAnimations:v13 toDispatchGroup:v7];
      }

      v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)performForStatusBar:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_enabled)
  {
    v5 = _STUIStatusBar_Log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      _os_log_impl(&dword_26C4DD000, v5, OS_LOG_TYPE_DEBUG, "perform %@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x2020000000;
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [(STUIStatusBarAnimation *)self subAnimations];
    v7 = STUIStatusBarGetPriorityComparator();
    v8 = [v6 sortedArrayUsingComparator:v7];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __46__STUIStatusBarAnimation_performForStatusBar___block_invoke;
    v30[3] = &unk_279D38E18;
    v30[4] = self;
    v9 = v4;
    v31 = v9;
    p_buf = &buf;
    [v8 enumerateObjectsUsingBlock:v30];
    [_statusBarRunningAnimations addObject:self];
    if (self->_displayItemIdentifier)
    {
      v10 = [v9 displayItemWithIdentifier:?];
    }

    else
    {
      v10 = 0;
    }

    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__STUIStatusBarAnimation_performForStatusBar___block_invoke_2;
    aBlock[3] = &unk_279D38E40;
    aBlock[4] = self;
    aBlock[5] = v28;
    v11 = _Block_copy(aBlock);
    (*(self->_animationBlock + 2))();
    timeout = self->_timeout;
    if (timeout > 0.0)
    {
      v13 = dispatch_time(0, (timeout * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__STUIStatusBarAnimation_performForStatusBar___block_invoke_23;
      block[3] = &unk_279D38E68;
      v26 = v28;
      block[4] = self;
      v25 = v11;
      dispatch_after(v13, MEMORY[0x277D85CD0], block);
    }

    v14 = *(*(&buf + 1) + 24);
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [v8 count];
      [v8 subarrayWithRange:{v14, v15 - *(*(&buf + 1) + 24)}];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v16 = v21 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v20 objects:v33 count:16];
      if (v17)
      {
        v18 = *v21;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v21 != v18)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v20 + 1) + 8 * i) performForStatusBar:{v9, v20}];
          }

          v17 = [v16 countByEnumeratingWithState:&v20 objects:v33 count:16];
        }

        while (v17);
      }
    }

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(&buf, 8);
  }
}

void __46__STUIStatusBarAnimation_performForStatusBar___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = [v8 priority];
  if (v7 <= [*(a1 + 32) priority])
  {
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *a4 = 1;
  }

  else
  {
    [v8 performForStatusBar:*(a1 + 40)];
  }
}

void __46__STUIStatusBarAnimation_performForStatusBar___block_invoke_2(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 40) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    v5 = _STUIStatusBar_Log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 32);
      *buf = 67109378;
      v19 = a2;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_26C4DD000, v5, OS_LOG_TYPE_DEBUG, "perform completed (finished: %d) for %@", buf, 0x12u);
    }

    [_statusBarRunningAnimations removeObject:*(a1 + 32)];
    v7 = *(a1 + 32);
    if (*(v7 + 10) == 1)
    {
      *(v7 + 10) = 0;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = *(*(a1 + 32) + 120);
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v14;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v8);
            }

            (*(*(*(&v13 + 1) + 8 * i) + 16))(*(*(&v13 + 1) + 8 * i));
          }

          v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v10);
      }
    }
  }
}

uint64_t __46__STUIStatusBarAnimation_performForStatusBar___block_invoke_23(uint64_t result)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = _STUIStatusBar_Log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_26C4DD000, v2, OS_LOG_TYPE_FAULT, "Status bar animation took longer than expected and was ended early.", v4, 2u);
    }

    v3 = *(*(v1 + 32) + 112);
    if (v3)
    {
      (*(v3 + 16))();
    }

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

- (void)addTimeout:(double)a3 withHandler:(id)a4
{
  if (self->_timeout == 0.0)
  {
    self->_timeout = a3;
    [(STUIStatusBarAnimation *)self setTimeoutBlock:a4];
  }
}

- (void)addSubAnimation:(id)a3 forDisplayItemWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_subAnimations)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    subAnimations = self->_subAnimations;
    self->_subAnimations = v8;
  }

  v10 = [v6 copy];

  [v10 setDisplayItemIdentifier:v7];
  [v10 setParentAnimation:self];
  [(NSMutableArray *)self->_subAnimations addObject:v10];
}

- (id)_dependentItemIdentifiersEnabledOnly:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  if (a3 && !self->_enabled)
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB58] set];
    if (self->_displayItemIdentifier)
    {
      v6 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:?];
      [v5 addObject:v6];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(STUIStatusBarAnimation *)self subAnimations];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) _dependentItemIdentifiersEnabledOnly:v3];
          [v5 unionSet:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(STUIStatusBarAnimation *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(STUIStatusBarAnimation *)self displayItemIdentifier];
  v5 = [v3 appendObject:v4 withName:@"displayItemIdentifier" skipIfNil:1];

  v6 = [(STUIStatusBarAnimation *)self identifier];
  v7 = [v3 appendObject:v6 withName:@"identifier" skipIfNil:1];

  v8 = [(STUIStatusBarAnimation *)self type];
  if (v8 > 3)
  {
    v9 = @"(unknown)";
  }

  else
  {
    v9 = off_279D38E88[v8];
  }

  [v3 appendString:v9 withName:@"type"];
  v10 = [v3 appendBool:-[STUIStatusBarAnimation isEnabled](self withName:{"isEnabled"), @"enabled"}];
  v11 = [v3 appendInteger:-[STUIStatusBarAnimation priority](self withName:{"priority"), @"priority"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarAnimation *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarAnimation *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(STUIStatusBarAnimation *)self succinctDescriptionBuilder];
  [v7 setUseDebugDescription:v4];
  [v7 setActiveMultilinePrefix:v6];

  v8 = [(STUIStatusBarAnimation *)self delayedItemIdentifiers];
  v9 = [v8 allObjects];
  [v7 appendArraySection:v9 withName:@"delayedItemIdentifiers" skipIfEmpty:1];

  v10 = [(STUIStatusBarAnimation *)self subAnimations];
  [v7 appendArraySection:v10 withName:@"subAnimations" skipIfEmpty:1];

  return v7;
}

- (STUIStatusBarAnimation)parentAnimation
{
  WeakRetained = objc_loadWeakRetained(&self->_parentAnimation);

  return WeakRetained;
}

@end