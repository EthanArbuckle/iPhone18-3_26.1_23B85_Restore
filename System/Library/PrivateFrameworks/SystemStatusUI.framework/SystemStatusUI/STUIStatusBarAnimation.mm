@interface STUIStatusBarAnimation
+ (STUIStatusBarAnimation)animationWithBlock:(id)block;
+ (void)_addAnimations:(id)animations toDispatchGroup:(id)group;
+ (void)_addAnimations:(id)animations toPreparingAnimations:(id)preparingAnimations exclusiveAnimations:(id)exclusiveAnimations visitedDisplayItemIdentifiers:(id)identifiers;
+ (void)initialize;
+ (void)prepareAnimations:(id)animations forStatusBar:(id)bar;
- (NSSet)effectiveDelayedItemIdentifiers;
- (STUIStatusBarAnimation)parentAnimation;
- (id)_dependentItemIdentifiersEnabledOnly:(BOOL)only;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_prepareForStatusBar:(id)bar preparingAnimations:(id)animations exclusiveAnimations:(id)exclusiveAnimations;
- (void)addCompletionHandler:(id)handler;
- (void)addSubAnimation:(id)animation forDisplayItemWithIdentifier:(id)identifier;
- (void)addTimeout:(double)timeout withHandler:(id)handler;
- (void)addTotalCompletionHandler:(id)handler;
- (void)cancel;
- (void)performForStatusBar:(id)bar;
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
      selfCopy = self;
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
    subAnimations = [(STUIStatusBarAnimation *)self subAnimations];
    v10 = [subAnimations countByEnumeratingWithState:&v14 objects:v22 count:16];
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
            objc_enumerationMutation(subAnimations);
          }

          [*(*(&v14 + 1) + 8 * v13++) cancel];
        }

        while (v11 != v13);
        v11 = [subAnimations countByEnumeratingWithState:&v14 objects:v22 count:16];
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
    delayedItemIdentifiers = [(STUIStatusBarAnimation *)self delayedItemIdentifiers];
    v4 = [delayedItemIdentifiers mutableCopy];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    delayedDisplayItemPlacements = [(STUIStatusBarAnimation *)self delayedDisplayItemPlacements];
    v6 = [delayedDisplayItemPlacements countByEnumeratingWithState:&v25 objects:v30 count:16];
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
            objc_enumerationMutation(delayedDisplayItemPlacements);
          }

          identifier = [*(*(&v25 + 1) + 8 * i) identifier];
          v11 = [STUIStatusBarItem itemIdentifierForDisplayItemIdentifier:identifier];
          [v4 addObject:v11];
        }

        v7 = [delayedDisplayItemPlacements countByEnumeratingWithState:&v25 objects:v30 count:16];
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
    subAnimations = [(STUIStatusBarAnimation *)self subAnimations];
    v15 = [subAnimations countByEnumeratingWithState:&v21 objects:v29 count:16];
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
            objc_enumerationMutation(subAnimations);
          }

          effectiveDelayedItemIdentifiers = [*(*(&v21 + 1) + 8 * j) effectiveDelayedItemIdentifiers];
          [v4 unionSet:effectiveDelayedItemIdentifiers];
        }

        v16 = [subAnimations countByEnumeratingWithState:&v21 objects:v29 count:16];
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
  if (objc_opt_class() == self)
  {
    v2 = [MEMORY[0x277CBEB58] set];
    v3 = _statusBarRunningAnimations;
    _statusBarRunningAnimations = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

+ (STUIStatusBarAnimation)animationWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(self);
  [v5 setAnimationBlock:blockCopy];

  v6 = [MEMORY[0x277CBEB98] set];
  [v5 setDelayedItemIdentifiers:v6];

  v7 = [MEMORY[0x277CBEB98] set];
  [v5 setDelayedDisplayItemPlacements:v7];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)addCompletionHandler:(id)handler
{
  handlerCopy = handler;
  completionHandlers = self->_completionHandlers;
  aBlock = handlerCopy;
  if (!completionHandlers)
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = self->_completionHandlers;
    self->_completionHandlers = array;

    handlerCopy = aBlock;
    completionHandlers = self->_completionHandlers;
  }

  v8 = _Block_copy(handlerCopy);
  [(NSMutableArray *)completionHandlers addObject:v8];
}

- (void)addTotalCompletionHandler:(id)handler
{
  v7[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = dispatch_group_create();
  v7[0] = self;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [STUIStatusBarAnimation _addAnimations:v6 toDispatchGroup:v5];

  dispatch_group_notify(v5, MEMORY[0x277D85CD0], handlerCopy);
}

+ (void)prepareAnimations:(id)animations forStatusBar:(id)bar
{
  barCopy = bar;
  v7 = MEMORY[0x277CBEB38];
  animationsCopy = animations;
  dictionary = [v7 dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v11 = [MEMORY[0x277CBEB98] set];
  [self _addAnimations:animationsCopy toPreparingAnimations:dictionary exclusiveAnimations:dictionary2 visitedDisplayItemIdentifiers:v11];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__STUIStatusBarAnimation_prepareAnimations_forStatusBar___block_invoke;
  v15[3] = &unk_279D38DF0;
  v16 = barCopy;
  v17 = dictionary;
  v18 = dictionary2;
  v12 = dictionary2;
  v13 = dictionary;
  v14 = barCopy;
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

+ (void)_addAnimations:(id)animations toPreparingAnimations:(id)preparingAnimations exclusiveAnimations:(id)exclusiveAnimations visitedDisplayItemIdentifiers:(id)identifiers
{
  v34 = *MEMORY[0x277D85DE8];
  animationsCopy = animations;
  preparingAnimationsCopy = preparingAnimations;
  exclusiveAnimationsCopy = exclusiveAnimations;
  identifiersCopy = identifiers;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = animationsCopy;
  v12 = [animationsCopy countByEnumeratingWithState:&v29 objects:v33 count:16];
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
        displayItemIdentifier = [v16 displayItemIdentifier];
        v18 = displayItemIdentifier;
        if (displayItemIdentifier)
        {
          null = displayItemIdentifier;
        }

        else
        {
          null = [MEMORY[0x277CBEB68] null];
        }

        v20 = null;

        v21 = [preparingAnimationsCopy objectForKeyedSubscript:v20];
        if (!v21)
        {
          v21 = [MEMORY[0x277CBEB58] set];
          [preparingAnimationsCopy setObject:v21 forKeyedSubscript:v20];
        }

        [v21 addObject:v16];
        exclusivityGroupIdentifier = [v16 exclusivityGroupIdentifier];
        if (exclusivityGroupIdentifier)
        {
          v23 = [exclusiveAnimationsCopy objectForKeyedSubscript:exclusivityGroupIdentifier];
          if (!v23)
          {
            v23 = [MEMORY[0x277CBEB58] set];
            [exclusiveAnimationsCopy setObject:v23 forKeyedSubscript:exclusivityGroupIdentifier];
          }

          [v23 addObject:v16];
        }

        subAnimations = [v16 subAnimations];
        v25 = [identifiersCopy setByAddingObject:v20];
        [self _addAnimations:subAnimations toPreparingAnimations:preparingAnimationsCopy exclusiveAnimations:exclusiveAnimationsCopy visitedDisplayItemIdentifiers:v25];
      }

      v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v13);
  }
}

- (void)_prepareForStatusBar:(id)bar preparingAnimations:(id)animations exclusiveAnimations:(id)exclusiveAnimations
{
  v47 = *MEMORY[0x277D85DE8];
  barCopy = bar;
  animationsCopy = animations;
  exclusiveAnimationsCopy = exclusiveAnimations;
  v11 = _STUIStatusBar_Log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_26C4DD000, v11, OS_LOG_TYPE_DEBUG, "prepare %@", buf, 0xCu);
  }

  if (!self->_displayItemIdentifier)
  {
    v13 = 0;
    goto LABEL_17;
  }

  v12 = [animationsCopy objectForKeyedSubscript:?];
  v13 = v12;
  if (!v12)
  {
LABEL_17:
    if (self->_exclusivityGroupIdentifier && ([exclusiveAnimationsCopy objectForKeyedSubscript:?], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
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
              [v25 _prepareForStatusBar:barCopy preparingAnimations:animationsCopy exclusiveAnimations:exclusiveAnimationsCopy];
              if ([v25 isEnabled])
              {
                displayItem = v14;
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
      [v27 _prepareForStatusBar:barCopy preparingAnimations:animationsCopy exclusiveAnimations:exclusiveAnimationsCopy];

      v28 = objc_loadWeakRetained(&self->_parentAnimation);
      isEnabled = [v28 isEnabled];

      if (!isEnabled)
      {
        goto LABEL_47;
      }
    }

    if (self->_displayItemIdentifier)
    {
      v30 = [barCopy stateForDisplayItemWithIdentifier:?];
      displayItem = [v30 displayItem];
      self->_enabled = [v30 prepareAnimation:self];
      p_enabled = &self->_enabled;

      if (!self->_enabled)
      {
        goto LABEL_40;
      }
    }

    else
    {
      displayItem = 0;
      self->_enabled = 1;
      p_enabled = &self->_enabled;
    }

    prepareBlock = self->_prepareBlock;
    if (prepareBlock && (prepareBlock[2](prepareBlock, self, displayItem) & 1) == 0)
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
      selfCopy2 = self;
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
          [v19 _prepareForStatusBar:barCopy preparingAnimations:animationsCopy exclusiveAnimations:exclusiveAnimationsCopy];
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

+ (void)_addAnimations:(id)animations toDispatchGroup:(id)group
{
  v21 = *MEMORY[0x277D85DE8];
  animationsCopy = animations;
  groupCopy = group;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [animationsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(animationsCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 isEnabled])
        {
          dispatch_group_enter(groupCopy);
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __57__STUIStatusBarAnimation__addAnimations_toDispatchGroup___block_invoke;
          v14[3] = &unk_279D37E28;
          v15 = groupCopy;
          [v12 addCompletionHandler:v14];
        }

        subAnimations = [v12 subAnimations];
        [self _addAnimations:subAnimations toDispatchGroup:groupCopy];
      }

      v9 = [animationsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)performForStatusBar:(id)bar
{
  v37 = *MEMORY[0x277D85DE8];
  barCopy = bar;
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
    subAnimations = [(STUIStatusBarAnimation *)self subAnimations];
    v7 = STUIStatusBarGetPriorityComparator();
    v8 = [subAnimations sortedArrayUsingComparator:v7];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __46__STUIStatusBarAnimation_performForStatusBar___block_invoke;
    v30[3] = &unk_279D38E18;
    v30[4] = self;
    v9 = barCopy;
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

- (void)addTimeout:(double)timeout withHandler:(id)handler
{
  if (self->_timeout == 0.0)
  {
    self->_timeout = timeout;
    [(STUIStatusBarAnimation *)self setTimeoutBlock:handler];
  }
}

- (void)addSubAnimation:(id)animation forDisplayItemWithIdentifier:(id)identifier
{
  animationCopy = animation;
  identifierCopy = identifier;
  if (!self->_subAnimations)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    subAnimations = self->_subAnimations;
    self->_subAnimations = v8;
  }

  v10 = [animationCopy copy];

  [v10 setDisplayItemIdentifier:identifierCopy];
  [v10 setParentAnimation:self];
  [(NSMutableArray *)self->_subAnimations addObject:v10];
}

- (id)_dependentItemIdentifiersEnabledOnly:(BOOL)only
{
  onlyCopy = only;
  v19 = *MEMORY[0x277D85DE8];
  if (only && !self->_enabled)
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
    subAnimations = [(STUIStatusBarAnimation *)self subAnimations];
    v8 = [subAnimations countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(subAnimations);
          }

          v12 = [*(*(&v14 + 1) + 8 * i) _dependentItemIdentifiersEnabledOnly:onlyCopy];
          [v5 unionSet:v12];
        }

        v9 = [subAnimations countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STUIStatusBarAnimation *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  displayItemIdentifier = [(STUIStatusBarAnimation *)self displayItemIdentifier];
  v5 = [v3 appendObject:displayItemIdentifier withName:@"displayItemIdentifier" skipIfNil:1];

  identifier = [(STUIStatusBarAnimation *)self identifier];
  v7 = [v3 appendObject:identifier withName:@"identifier" skipIfNil:1];

  type = [(STUIStatusBarAnimation *)self type];
  if (type > 3)
  {
    v9 = @"(unknown)";
  }

  else
  {
    v9 = off_279D38E88[type];
  }

  [v3 appendString:v9 withName:@"type"];
  v10 = [v3 appendBool:-[STUIStatusBarAnimation isEnabled](self withName:{"isEnabled"), @"enabled"}];
  v11 = [v3 appendInteger:-[STUIStatusBarAnimation priority](self withName:{"priority"), @"priority"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarAnimation *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarAnimation *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STUIStatusBarAnimation *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

  delayedItemIdentifiers = [(STUIStatusBarAnimation *)self delayedItemIdentifiers];
  allObjects = [delayedItemIdentifiers allObjects];
  [succinctDescriptionBuilder appendArraySection:allObjects withName:@"delayedItemIdentifiers" skipIfEmpty:1];

  subAnimations = [(STUIStatusBarAnimation *)self subAnimations];
  [succinctDescriptionBuilder appendArraySection:subAnimations withName:@"subAnimations" skipIfEmpty:1];

  return succinctDescriptionBuilder;
}

- (STUIStatusBarAnimation)parentAnimation
{
  WeakRetained = objc_loadWeakRetained(&self->_parentAnimation);

  return WeakRetained;
}

@end