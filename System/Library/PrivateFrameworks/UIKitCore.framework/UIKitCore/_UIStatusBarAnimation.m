@interface _UIStatusBarAnimation
+ (_UIStatusBarAnimation)animationWithBlock:(id)a3;
+ (void)_addAnimations:(id)a3 toDispatchGroup:(id)a4;
+ (void)_addAnimations:(id)a3 toPreparingAnimations:(id)a4 exclusiveAnimations:(id)a5 visitedDisplayItemIdentifiers:(id)a6;
+ (void)initialize;
+ (void)prepareAnimations:(id)a3 forStatusBar:(id)a4;
- (NSSet)effectiveDelayedItemIdentifiers;
- (_UIStatusBarAnimation)parentAnimation;
- (id)_dependentItemIdentifiersEnabledOnly:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_prepareForStatusBar:(id)a3 preparingAnimations:(id)a4 exclusiveAnimations:(id)a5;
- (void)addCompletionHandler:(id)a3;
- (void)addSubAnimation:(id)a3 forDisplayItemWithIdentifier:(id)a4;
- (void)addTimeout:(double)a3 withHandler:(id)a4;
- (void)addTotalCompletionHandler:(id)a3;
- (void)cancel;
- (void)performForStatusBar:(id)a3;
@end

@implementation _UIStatusBarAnimation

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x1E695DFA8] set];
    v3 = _statusBarRunningAnimations;
    _statusBarRunningAnimations = v2;
  }
}

+ (_UIStatusBarAnimation)animationWithBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setAnimationBlock:v4];

  v6 = [MEMORY[0x1E695DFD8] set];
  [v5 setDelayedItemIdentifiers:v6];

  v7 = [MEMORY[0x1E695DFD8] set];
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

  v13 = [(_UIStatusBarIdentifier *)self->_displayItemIdentifier copy];
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
    v6 = [MEMORY[0x1E695DF70] array];
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
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = dispatch_group_create();
  v7[0] = self;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [_UIStatusBarAnimation _addAnimations:v6 toDispatchGroup:v5];

  dispatch_group_notify(v5, MEMORY[0x1E69E96A0], v4);
}

+ (void)prepareAnimations:(id)a3 forStatusBar:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E695DF90];
  v8 = a3;
  v9 = [v7 dictionary];
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v11 = [MEMORY[0x1E695DFD8] set];
  [a1 _addAnimations:v8 toPreparingAnimations:v9 exclusiveAnimations:v10 visitedDisplayItemIdentifiers:v11];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56___UIStatusBarAnimation_prepareAnimations_forStatusBar___block_invoke;
  v15[3] = &unk_1E7121CE8;
  v16 = v6;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v6;
  [v13 enumerateKeysAndObjectsUsingBlock:v15];
}

+ (void)_addAnimations:(id)a3 toPreparingAnimations:(id)a4 exclusiveAnimations:(id)a5 visitedDisplayItemIdentifiers:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v9;
  v13 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v32 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        v17 = [v16 displayItemIdentifier];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = [MEMORY[0x1E695DFB0] null];
        }

        v20 = v19;

        v21 = [v16 displayItemIdentifier];
        if (v21)
        {
          v22 = v21;
          v23 = [v12 containsObject:v20];

          if (v23)
          {
            v29 = [MEMORY[0x1E696AAA8] currentHandler];
            [v29 handleFailureInMethod:a2 object:a1 file:@"_UIStatusBarAnimation.m" lineNumber:115 description:{@"Several animations are targeting the same display item with identifier %@ in the same tree", v20}];
          }
        }

        v24 = [v10 objectForKeyedSubscript:v20];
        if (!v24)
        {
          v24 = [MEMORY[0x1E695DFA8] set];
          [v10 setObject:v24 forKeyedSubscript:v20];
        }

        [v24 addObject:v16];
        v25 = [v16 exclusivityGroupIdentifier];
        if (v25)
        {
          v26 = [v11 objectForKeyedSubscript:v25];
          if (!v26)
          {
            v26 = [MEMORY[0x1E695DFA8] set];
            [v11 setObject:v26 forKeyedSubscript:v25];
          }

          [v26 addObject:v16];
        }

        v27 = [v16 subAnimations];
        v28 = [v12 setByAddingObject:v20];
        [a1 _addAnimations:v27 toPreparingAnimations:v10 exclusiveAnimations:v11 visitedDisplayItemIdentifiers:v28];
      }

      v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }
}

- (void)_prepareForStatusBar:(id)a3 preparingAnimations:(id)a4 exclusiveAnimations:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_displayItemIdentifier)
  {
    v12 = 0;
    goto LABEL_15;
  }

  v11 = [v9 objectForKeyedSubscript:?];
  v12 = v11;
  if (!v11)
  {
LABEL_15:
    if (self->_exclusivityGroupIdentifier && ([v10 objectForKeyedSubscript:?], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v13 = v19;
      v20 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v34;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v34 != v22)
            {
              objc_enumerationMutation(v13);
            }

            v24 = *(*(&v33 + 1) + 8 * i);
            if ([v24 priority] > self->_priority)
            {
              [v24 _prepareForStatusBar:v8 preparingAnimations:v9 exclusiveAnimations:v10];
              if ([v24 isEnabled])
              {
                v30 = v13;
                goto LABEL_41;
              }
            }
          }

          v21 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_parentAnimation);

    if (WeakRetained)
    {
      v26 = objc_loadWeakRetained(&self->_parentAnimation);
      [v26 _prepareForStatusBar:v8 preparingAnimations:v9 exclusiveAnimations:v10];

      v27 = objc_loadWeakRetained(&self->_parentAnimation);
      v28 = [v27 isEnabled];

      if (!v28)
      {
        goto LABEL_42;
      }
    }

    if (self->_displayItemIdentifier)
    {
      v29 = [v8 stateForDisplayItemWithIdentifier:?];
      v30 = [v29 displayItem];
      self->_enabled = [v29 prepareAnimation:self];
      p_enabled = &self->_enabled;

      if (!self->_enabled)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v30 = 0;
      self->_enabled = 1;
      p_enabled = &self->_enabled;
    }

    prepareBlock = self->_prepareBlock;
    if (prepareBlock && (prepareBlock[2](prepareBlock, self, v30) & 1) == 0)
    {
      [(_UIStatusBarAnimation *)self cancel];
    }

LABEL_38:
    if (*p_enabled && self->_displayItemIdentifier)
    {
      [v12 removeAllObjects];
    }

LABEL_41:

LABEL_42:
    goto LABEL_43;
  }

  if ([v11 containsObject:self])
  {
    [v12 removeObject:self];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = [v12 copy];
    v14 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v38;
LABEL_6:
      v17 = 0;
      while (1)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v37 + 1) + 8 * v17);
        if ([v18 priority] > self->_priority)
        {
          [v18 _prepareForStatusBar:v8 preparingAnimations:v9 exclusiveAnimations:v10];
          if ([v18 isEnabled])
          {
            goto LABEL_42;
          }
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
          if (v15)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    goto LABEL_15;
  }

LABEL_43:
}

+ (void)_addAnimations:(id)a3 toDispatchGroup:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
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
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __56___UIStatusBarAnimation__addAnimations_toDispatchGroup___block_invoke;
          v14[3] = &unk_1E70F5DB8;
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
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_enabled)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0x7FFFFFFFFFFFFFFFLL;
    v5 = [(_UIStatusBarAnimation *)self subAnimations];
    v6 = _UIStatusBarGetPriorityComparator();
    v7 = [v5 sortedArrayUsingComparator:v6];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __45___UIStatusBarAnimation_performForStatusBar___block_invoke;
    v29[3] = &unk_1E7121D10;
    v29[4] = self;
    v8 = v4;
    v30 = v8;
    v31 = &v32;
    [v7 enumerateObjectsUsingBlock:v29];
    [_statusBarRunningAnimations addObject:self];
    if (self->_displayItemIdentifier)
    {
      v9 = [v8 displayItemWithIdentifier:?];
    }

    else
    {
      v9 = 0;
    }

    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v28 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __45___UIStatusBarAnimation_performForStatusBar___block_invoke_2;
    aBlock[3] = &unk_1E70FF890;
    aBlock[4] = self;
    aBlock[5] = v27;
    v10 = _Block_copy(aBlock);
    (*(self->_animationBlock + 2))();
    timeout = self->_timeout;
    if (timeout > 0.0)
    {
      v12 = dispatch_time(0, (timeout * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45___UIStatusBarAnimation_performForStatusBar___block_invoke_3;
      block[3] = &unk_1E7121D38;
      v25 = v27;
      block[4] = self;
      v24 = v10;
      dispatch_after(v12, MEMORY[0x1E69E96A0], block);
    }

    v13 = v33[3];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = [v7 count];
      [v7 subarrayWithRange:{v13, v14 - v33[3]}];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v15 = v20 = 0u;
      v16 = [v15 countByEnumeratingWithState:&v19 objects:v36 count:16];
      if (v16)
      {
        v17 = *v20;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v20 != v17)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v19 + 1) + 8 * i) performForStatusBar:{v8, v19}];
          }

          v16 = [v15 countByEnumeratingWithState:&v19 objects:v36 count:16];
        }

        while (v16);
      }
    }

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(&v32, 8);
  }
}

- (void)addTimeout:(double)a3 withHandler:(id)a4
{
  if (self->_timeout == 0.0)
  {
    self->_timeout = a3;
    [(_UIStatusBarAnimation *)self setTimeoutBlock:a4];
  }
}

- (void)cancel
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_enabled)
  {
    self->_enabled = 0;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = self->_completionHandlers;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        v7 = 0;
        do
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v17 + 1) + 8 * v7++) + 16))();
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v5);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [(_UIStatusBarAnimation *)self subAnimations];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v12++) cancel];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (void)addSubAnimation:(id)a3 forDisplayItemWithIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8 && self->_displayItemIdentifier == v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIStatusBarAnimation.m" lineNumber:343 description:@"Can't add a sub-animation for the same display item"];
  }

  if (self->_enabled)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIStatusBarAnimation.m" lineNumber:344 description:@"Sub-animations can't be added during prepare"];
  }

  if (!self->_subAnimations)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    subAnimations = self->_subAnimations;
    self->_subAnimations = v10;
  }

  v14 = [v7 copy];

  [v14 setDisplayItemIdentifier:v9];
  [v14 setParentAnimation:self];
  [(NSMutableArray *)self->_subAnimations addObject:v14];
}

- (NSSet)effectiveDelayedItemIdentifiers
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_enabled)
  {
    v3 = [(_UIStatusBarAnimation *)self delayedItemIdentifiers];
    v4 = [v3 mutableCopy];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [(_UIStatusBarAnimation *)self delayedDisplayItemPlacements];
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
          v11 = [_UIStatusBarItem itemIdentifierForDisplayItemIdentifier:v10];
          [v4 addObject:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }

    delaysDependentItems = self->_delaysDependentItems;
    if (delaysDependentItems || self->_delaysAnimatingItems)
    {
      v13 = [(_UIStatusBarAnimation *)self _dependentItemIdentifiersEnabledOnly:!delaysDependentItems];
      [v4 unionSet:v13];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = [(_UIStatusBarAnimation *)self subAnimations];
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
    v4 = [MEMORY[0x1E695DFD8] set];
  }

  return v4;
}

- (id)_dependentItemIdentifiersEnabledOnly:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  if (a3 && !self->_enabled)
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    if (self->_displayItemIdentifier)
    {
      v6 = [_UIStatusBarItem itemIdentifierForDisplayItemIdentifier:?];
      [v5 addObject:v6];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(_UIStatusBarAnimation *)self subAnimations];
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

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel_displayItemIdentifier);
  v13 = v3;
  v4 = NSStringFromSelector(sel_identifier);
  v14 = v4;
  v5 = NSStringFromSelector(sel_type);
  v15 = v5;
  v6 = NSStringFromSelector(sel_enabled);
  v16 = v6;
  v7 = NSStringFromSelector(sel_priority);
  v17 = v7;
  v8 = NSStringFromSelector(sel_delayedItemIdentifiers);
  v18 = v8;
  v9 = NSStringFromSelector(sel_subAnimations);
  v19 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:7];
  v11 = [UIDescriptionBuilder descriptionForObject:self keys:v10, v13, v14, v15, v16, v17, v18];

  return v11;
}

- (_UIStatusBarAnimation)parentAnimation
{
  WeakRetained = objc_loadWeakRetained(&self->_parentAnimation);

  return WeakRetained;
}

@end