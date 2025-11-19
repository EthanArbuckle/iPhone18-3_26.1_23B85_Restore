@interface PUIReusableViewMap
- (BOOL)isViewRecycled:(id)a3;
- (PUIReusableViewMap)init;
- (PUIReusableViewMap)initWithDelegate:(id)a3;
- (PUIReusableViewMapDelegate)delegate;
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

@implementation PUIReusableViewMap

- (PUIReusableViewMap)init
{
  v6.receiver = self;
  v6.super_class = PUIReusableViewMap;
  v2 = [(PUIReusableViewMap *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    recycledViewsByClass = v2->_recycledViewsByClass;
    v2->_recycledViewsByClass = v3;
  }

  return v2;
}

- (PUIReusableViewMap)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(PUIReusableViewMap *)self init];
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
  v14.super_class = PUIReusableViewMap;
  [(PUIReusableViewMap *)&v14 dealloc];
}

- (id)viewOfClass:(Class)a3
{
  v5 = [(PUIReusableViewMap *)self dequeueReusableViewOfClass:?];
  if (!v5)
  {
    v5 = [(PUIReusableViewMap *)self newViewOfClass:a3];
  }

  return v5;
}

- (id)newViewOfClass:(Class)a3
{
  v5 = [(PUIReusableViewMap *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 viewMap:self makeNewViewOfClass:a3], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_alloc_init(a3);
  }

  return v6;
}

- (id)dequeueReusableViewOfClass:(Class)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(NSMapTable *)self->_recycledViewsByClass objectForKey:?];
  v6 = [v5 anyObject];
  if (v6)
  {
    [v5 removeObject:v6];
    v7 = [v6 layer];
    [v7 clearHasBeenCommitted];

    [v6 setHidden:0];
    v8 = PUILogReusableViewCache();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v13 = 134218498;
    v14 = self;
    v15 = 2112;
    v16 = a3;
    v17 = 2048;
    v18 = [v5 count];
    v9 = "(%p) dequeued reusable view of class: %@ (%lu remaining)";
    v10 = v8;
    v11 = 32;
  }

  else
  {
    v8 = PUILogReusableViewCache();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v13 = 134218242;
    v14 = self;
    v15 = 2112;
    v16 = a3;
    v9 = "(%p) could not dequeue reusable view of class: %@";
    v10 = v8;
    v11 = 22;
  }

  _os_log_impl(&dword_1A8C85000, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
LABEL_7:

  return v6;
}

- (void)recycleView:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(PUIReusableViewMap *)self delegate];
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
        v11 = PUILogReusableViewCache();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v22 = self;
          v23 = 2112;
          v24 = v7;
          v25 = 2048;
          v26 = v4;
          _os_log_impl(&dword_1A8C85000, v11, OS_LOG_TYPE_DEFAULT, "(%p) will not recycle reusable view of class: %@/%p", buf, 0x20u);
        }

        v6 = 0;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v10 = MEMORY[0x1E69DD250];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __34__PUIReusableViewMap_recycleView___block_invoke;
          v19[3] = &unk_1E7854320;
          v20 = v4;
          [v10 performWithoutAnimation:v19];
        }

        if (v8)
        {
          [v8 addObject:v4];
        }

        else
        {
          recycledViewsByClass = self->_recycledViewsByClass;
          v13 = [MEMORY[0x1E695DFA8] setWithObject:v4];
          [(NSMapTable *)recycledViewsByClass setObject:v13 forKey:v7];
        }

        v11 = PUILogReusableViewCache();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v22 = self;
          v23 = 2112;
          v24 = v7;
          v25 = 2048;
          v26 = (v9 + 1);
          _os_log_impl(&dword_1A8C85000, v11, OS_LOG_TYPE_DEFAULT, "(%p) recycled reusable view of class: %@ (%lu total)", buf, 0x20u);
        }

        v6 = 1;
      }
    }

    v14 = [v5 recycledViewsContainerProviderForViewMap:self];
    v15 = [v14 recycledViewsContainer];
    v16 = v15;
    if (v6 && v15 && ([v15 window], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "window"), v18 = objc_claimAutoreleasedReturnValue(), v18, v17, v17 == v18))
    {
      [v16 addSubview:v4];
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
  v5 = [(PUIReusableViewMap *)self delegate];
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
  v20 = *MEMORY[0x1E69E9840];
  v5 = PUILogReusableViewCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v17 = self;
    v18 = 2112;
    v19 = a3;
    _os_log_impl(&dword_1A8C85000, v5, OS_LOG_TYPE_DEFAULT, "(%p) purge reusable views of class: %@", buf, 0x16u);
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
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PUILogReusableViewCache();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 134218498;
    v20 = self;
    v21 = 2048;
    v22 = v4;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_1A8C85000, v5, OS_LOG_TYPE_DEFAULT, "(%p) purging %p / %@", buf, 0x20u);
  }

  [v4 removeFromSuperview];
  if (objc_opt_respondsToSelector())
  {
    [v4 prepareForReuse];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(NSMapTable *)self->_recycledViewsByClass keyEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(NSMapTable *)self->_recycledViewsByClass objectForKey:*(*(&v14 + 1) + 8 * v12)];
        [v13 removeObject:v4];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)purgeAllViews
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = PUILogReusableViewCache();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = self;
    _os_log_impl(&dword_1A8C85000, v3, OS_LOG_TYPE_DEFAULT, "(%p) purge all reusable views", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(NSMapTable *)self->_recycledViewsByClass keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PUIReusableViewMap *)self purgeViewsForClass:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(NSMapTable *)self->_recycledViewsByClass removeAllObjects];
}

- (void)addRecycledViewsOfClass:(Class)a3 upToCount:(unint64_t)a4
{
  v7 = [(NSMapTable *)self->_recycledViewsByClass count];
  v8 = a4 - v7;
  if (a4 > v7)
  {
    do
    {
      v9 = [(PUIReusableViewMap *)self newViewOfClass:a3];
      if (v9)
      {
        [(PUIReusableViewMap *)self recycleView:v9];
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
  v2 = [(PUIReusableViewMap *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PUIReusableViewMap *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(PUIReusableViewMap *)self succinctDescriptionBuilder];
  v5 = [v4 appendUnsignedInteger:-[PUIReusableViewMap recycledViewCount](self withName:{"recycledViewCount"), @"recycledViewCount"}];
  v6 = [v4 appendUnsignedInteger:-[PUIReusableViewMap viewRecyclingCount](self withName:{"viewRecyclingCount"), @"viewRecyclingCount"}];

  return v4;
}

- (PUIReusableViewMapDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end