@interface SBHReusableViewMap
- (BOOL)isViewRecycled:(id)recycled;
- (SBHReusableViewMap)init;
- (SBHReusableViewMap)initWithDelegate:(id)delegate;
- (SBHReusableViewMapDelegate)delegate;
- (id)dequeueReusableViewOfClass:(Class)class;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)newViewOfClass:(Class)class;
- (id)succinctDescription;
- (id)viewOfClass:(Class)class;
- (unint64_t)recycledViewCount;
- (void)addRecycledViewsOfClass:(Class)class upToCount:(unint64_t)count;
- (void)dealloc;
- (void)enumerateRecycledViewsUsingBlock:(id)block;
- (void)purgeAllViews;
- (void)purgeView:(id)view;
- (void)purgeViewsForClass:(Class)class;
- (void)recycleView:(id)view;
@end

@implementation SBHReusableViewMap

- (SBHReusableViewMapDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBHReusableViewMap)init
{
  v6.receiver = self;
  v6.super_class = SBHReusableViewMap;
  v2 = [(SBHReusableViewMap *)&v6 init];
  if (v2)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    recycledViewsByClass = v2->_recycledViewsByClass;
    v2->_recycledViewsByClass = weakToStrongObjectsMapTable;
  }

  return v2;
}

- (SBHReusableViewMap)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(SBHReusableViewMap *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)dealloc
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  objectEnumerator = [(NSMapTable *)self->_recycledViewsByClass objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v16;
          do
          {
            v13 = 0;
            do
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v15 + 1) + 8 * v13++) removeFromSuperview];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v14.receiver = self;
  v14.super_class = SBHReusableViewMap;
  [(SBHReusableViewMap *)&v14 dealloc];
}

- (id)viewOfClass:(Class)class
{
  v5 = [(SBHReusableViewMap *)self dequeueReusableViewOfClass:?];
  if (!v5)
  {
    v5 = [(SBHReusableViewMap *)self newViewOfClass:class];
  }

  return v5;
}

- (id)newViewOfClass:(Class)class
{
  delegate = [(SBHReusableViewMap *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([delegate viewMap:self makeNewViewOfClass:class], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_alloc_init(class);
  }

  return v6;
}

- (id)dequeueReusableViewOfClass:(Class)class
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(NSMapTable *)self->_recycledViewsByClass objectForKey:?];
  anyObject = [v5 anyObject];
  if (anyObject)
  {
    [v5 removeObject:anyObject];
    layer = [anyObject layer];
    [layer clearHasBeenCommitted];

    v8 = SBLogReusableViewCache();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134218498;
      selfCopy = self;
      v12 = 2112;
      classCopy = class;
      v14 = 2048;
      v15 = [v5 count];
      _os_log_debug_impl(&dword_1BEB18000, v8, OS_LOG_TYPE_DEBUG, "(%p) dequeued reusable view of class: %@ (%lu remaining)", &v10, 0x20u);
    }
  }

  else
  {
    v8 = SBLogReusableViewCache();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SBHReusableViewMap dequeueReusableViewOfClass:];
    }
  }

  return anyObject;
}

- (void)recycleView:(id)view
{
  v29 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (viewCopy)
  {
    delegate = [(SBHReusableViewMap *)self delegate];
    if (self->_invalidated)
    {
      v6 = 0;
    }

    else
    {
      v7 = objc_opt_class();
      v8 = [(NSMapTable *)self->_recycledViewsByClass objectForKey:v7];
      v9 = [v8 count];
      if (v9 >= [delegate viewMap:self maxRecycledViewsOfClass:v7] || (objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend(viewCopy, "isEligibleForReuse") || (objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend(delegate, "viewMap:shouldRecycleView:", self, viewCopy))
      {
        v12 = SBLogReusableViewCache();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          selfCopy2 = self;
          v25 = 2112;
          v26 = v7;
          v27 = 2048;
          v28 = viewCopy;
          _os_log_debug_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEBUG, "(%p) will not recycle reusable view of class: %@/%p", buf, 0x20u);
        }

        v6 = 0;
      }

      else
      {
        v10 = MEMORY[0x1E69DD250];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __34__SBHReusableViewMap_recycleView___block_invoke;
        v21[3] = &unk_1E8088C90;
        v11 = viewCopy;
        v22 = v11;
        [v10 performWithoutAnimation:v21];
        if (v8)
        {
          [v8 addObject:v11];
        }

        else
        {
          recycledViewsByClass = self->_recycledViewsByClass;
          v14 = [MEMORY[0x1E695DFA8] setWithObject:v11];
          [(NSMapTable *)recycledViewsByClass setObject:v14 forKey:v7];
        }

        v15 = SBLogReusableViewCache();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          selfCopy2 = self;
          v25 = 2112;
          v26 = v7;
          v27 = 2048;
          v28 = (v9 + 1);
          _os_log_debug_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEBUG, "(%p) recycled reusable view of class: %@ (%lu total)", buf, 0x20u);
        }

        v6 = 1;
        v12 = v22;
      }
    }

    v16 = [delegate recycledViewsContainerProviderForViewMap:self];
    recycledViewsContainer = [v16 recycledViewsContainer];
    v18 = recycledViewsContainer;
    if (v6 && recycledViewsContainer && ([recycledViewsContainer window], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(viewCopy, "window"), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v19 == v20))
    {
      [v18 addSubview:viewCopy];
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [delegate viewMap:self willDiscardView:viewCopy];
      }

      [viewCopy removeFromSuperview];
    }
  }
}

- (BOOL)isViewRecycled:(id)recycled
{
  recycledCopy = recycled;
  delegate = [(SBHReusableViewMap *)self delegate];
  v6 = [delegate recycledViewsContainerProviderForViewMap:self];
  recycledViewsContainer = [v6 recycledViewsContainer];
  if (recycledViewsContainer)
  {
    v8 = [recycledCopy isDescendantOfView:recycledViewsContainer];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)purgeViewsForClass:(Class)class
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = SBLogReusableViewCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SBHReusableViewMap purgeViewsForClass:];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(NSMapTable *)self->_recycledViewsByClass objectForKey:class, 0];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) removeFromSuperview];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(NSMapTable *)self->_recycledViewsByClass removeObjectForKey:class];
}

- (void)purgeView:(id)view
{
  v17 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = SBLogReusableViewCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBHReusableViewMap *)self purgeView:viewCopy, v5];
  }

  [viewCopy removeFromSuperview];
  [viewCopy prepareForReuse];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  keyEnumerator = [(NSMapTable *)self->_recycledViewsByClass keyEnumerator];
  v7 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = [(NSMapTable *)self->_recycledViewsByClass objectForKey:*(*(&v12 + 1) + 8 * v10)];
        [v11 removeObject:viewCopy];

        ++v10;
      }

      while (v8 != v10);
      v8 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)purgeAllViews
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  selfCopy = self;
  _os_log_debug_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_DEBUG, "(%p) purge all reusable views", &v2, 0xCu);
}

- (void)addRecycledViewsOfClass:(Class)class upToCount:(unint64_t)count
{
  v7 = [(NSMapTable *)self->_recycledViewsByClass count];
  v8 = count - v7;
  if (count > v7)
  {
    do
    {
      v9 = [(SBHReusableViewMap *)self newViewOfClass:class];
      if (v9)
      {
        [(SBHReusableViewMap *)self recycleView:v9];
      }

      --v8;
    }

    while (v8);
  }
}

- (void)enumerateRecycledViewsUsingBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v24 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  objectEnumerator = [(NSMapTable *)self->_recycledViewsByClass objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v16 objects:v25 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v17;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v17 != v14)
              {
                objc_enumerationMutation(v11);
              }

              blockCopy[2](blockCopy, *(*(&v16 + 1) + 8 * j), &v24);
              if (v24)
              {

                goto LABEL_18;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v16 objects:v25 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }

LABEL_18:
}

- (unint64_t)recycledViewCount
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_recycledViewsByClass;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(NSMapTable *)self->_recycledViewsByClass objectForKey:*(*(&v11 + 1) + 8 * i), v11];
        v6 += [v9 count];
      }

      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHReusableViewMap *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHReusableViewMap *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHReusableViewMap *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendUnsignedInteger:-[SBHReusableViewMap recycledViewCount](self withName:{"recycledViewCount"), @"recycledViewCount"}];
  v6 = [succinctDescriptionBuilder appendUnsignedInteger:-[SBHReusableViewMap viewRecyclingCount](self withName:{"viewRecyclingCount"), @"viewRecyclingCount"}];

  return succinctDescriptionBuilder;
}

- (void)purgeView:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 134218498;
  v9 = a1;
  v10 = 2048;
  v11 = a2;
  v12 = 2112;
  v13 = v7;
  _os_log_debug_impl(&dword_1BEB18000, a3, OS_LOG_TYPE_DEBUG, "(%p) purging %p / %@", &v8, 0x20u);
}

@end