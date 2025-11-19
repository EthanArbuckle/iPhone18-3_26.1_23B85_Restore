@interface SBHReusableViewMap
- (BOOL)isViewRecycled:(id)a3;
- (SBHReusableViewMap)init;
- (SBHReusableViewMap)initWithDelegate:(id)a3;
- (SBHReusableViewMapDelegate)delegate;
- (id)dequeueReusableViewOfClass:(Class)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)newViewOfClass:(Class)a3;
- (id)succinctDescription;
- (id)viewOfClass:(Class)a3;
- (unint64_t)recycledViewCount;
- (void)addRecycledViewsOfClass:(Class)a3 upToCount:(unint64_t)a4;
- (void)dealloc;
- (void)enumerateRecycledViewsUsingBlock:(id)a3;
- (void)purgeAllViews;
- (void)purgeView:(id)a3;
- (void)purgeViewsForClass:(Class)a3;
- (void)recycleView:(id)a3;
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
    v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    recycledViewsByClass = v2->_recycledViewsByClass;
    v2->_recycledViewsByClass = v3;
  }

  return v2;
}

- (SBHReusableViewMap)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SBHReusableViewMap *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
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
  v3 = [(NSMapTable *)self->_recycledViewsByClass objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(v3);
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
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v14.receiver = self;
  v14.super_class = SBHReusableViewMap;
  [(SBHReusableViewMap *)&v14 dealloc];
}

- (id)viewOfClass:(Class)a3
{
  v5 = [(SBHReusableViewMap *)self dequeueReusableViewOfClass:?];
  if (!v5)
  {
    v5 = [(SBHReusableViewMap *)self newViewOfClass:a3];
  }

  return v5;
}

- (id)newViewOfClass:(Class)a3
{
  v5 = [(SBHReusableViewMap *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 viewMap:self makeNewViewOfClass:a3], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_alloc_init(a3);
  }

  return v6;
}

- (id)dequeueReusableViewOfClass:(Class)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [(NSMapTable *)self->_recycledViewsByClass objectForKey:?];
  v6 = [v5 anyObject];
  if (v6)
  {
    [v5 removeObject:v6];
    v7 = [v6 layer];
    [v7 clearHasBeenCommitted];

    v8 = SBLogReusableViewCache();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134218498;
      v11 = self;
      v12 = 2112;
      v13 = a3;
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

  return v6;
}

- (void)recycleView:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(SBHReusableViewMap *)self delegate];
    if (self->_invalidated)
    {
      v6 = 0;
    }

    else
    {
      v7 = objc_opt_class();
      v8 = [(NSMapTable *)self->_recycledViewsByClass objectForKey:v7];
      v9 = [v8 count];
      if (v9 >= [v5 viewMap:self maxRecycledViewsOfClass:v7] || (objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend(v4, "isEligibleForReuse") || (objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend(v5, "viewMap:shouldRecycleView:", self, v4))
      {
        v12 = SBLogReusableViewCache();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          v24 = self;
          v25 = 2112;
          v26 = v7;
          v27 = 2048;
          v28 = v4;
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
        v11 = v4;
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
          v24 = self;
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

    v16 = [v5 recycledViewsContainerProviderForViewMap:self];
    v17 = [v16 recycledViewsContainer];
    v18 = v17;
    if (v6 && v17 && ([v17 window], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "window"), v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v19 == v20))
    {
      [v18 addSubview:v4];
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        [v5 viewMap:self willDiscardView:v4];
      }

      [v4 removeFromSuperview];
    }
  }
}

- (BOOL)isViewRecycled:(id)a3
{
  v4 = a3;
  v5 = [(SBHReusableViewMap *)self delegate];
  v6 = [v5 recycledViewsContainerProviderForViewMap:self];
  v7 = [v6 recycledViewsContainer];
  if (v7)
  {
    v8 = [v4 isDescendantOfView:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)purgeViewsForClass:(Class)a3
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
  v6 = [(NSMapTable *)self->_recycledViewsByClass objectForKey:a3, 0];
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

  [(NSMapTable *)self->_recycledViewsByClass removeObjectForKey:a3];
}

- (void)purgeView:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogReusableViewCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBHReusableViewMap *)self purgeView:v4, v5];
  }

  [v4 removeFromSuperview];
  [v4 prepareForReuse];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(NSMapTable *)self->_recycledViewsByClass keyEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMapTable *)self->_recycledViewsByClass objectForKey:*(*(&v12 + 1) + 8 * v10)];
        [v11 removeObject:v4];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)purgeAllViews
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_DEBUG, "(%p) purge all reusable views", &v2, 0xCu);
}

- (void)addRecycledViewsOfClass:(Class)a3 upToCount:(unint64_t)a4
{
  v7 = [(NSMapTable *)self->_recycledViewsByClass count];
  v8 = a4 - v7;
  if (a4 > v7)
  {
    do
    {
      v9 = [(SBHReusableViewMap *)self newViewOfClass:a3];
      if (v9)
      {
        [(SBHReusableViewMap *)self recycleView:v9];
      }

      --v8;
    }

    while (v8);
  }
}

- (void)enumerateRecycledViewsUsingBlock:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(NSMapTable *)self->_recycledViewsByClass objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
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
          objc_enumerationMutation(v5);
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

              v4[2](v4, *(*(&v16 + 1) + 8 * j), &v24);
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

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
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
  v2 = [(SBHReusableViewMap *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHReusableViewMap *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHReusableViewMap *)self succinctDescriptionBuilder];
  v5 = [v4 appendUnsignedInteger:-[SBHReusableViewMap recycledViewCount](self withName:{"recycledViewCount"), @"recycledViewCount"}];
  v6 = [v4 appendUnsignedInteger:-[SBHReusableViewMap viewRecyclingCount](self withName:{"viewRecyclingCount"), @"viewRecyclingCount"}];

  return v4;
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