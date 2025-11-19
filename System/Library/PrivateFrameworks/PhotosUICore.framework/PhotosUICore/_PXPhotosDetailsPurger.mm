@interface _PXPhotosDetailsPurger
+ (id)sharedPurger;
- (_PXPhotosDetailsPurger)init;
- (void)_purgeAllViewControllers;
- (void)detailsViewControllerDidAppear:(id)a3;
- (void)didReceiveMemoryWarning:(id)a3;
- (void)purgeOldViewControllers;
@end

@implementation _PXPhotosDetailsPurger

- (void)_purgeAllViewControllers
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(NSHashTable *)self->_allViewControllers allObjects];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) purgeIfPossible];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)purgeOldViewControllers
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(NSPointerArray *)self->_lastUsedViewControllers allObjects];
  v5 = [v3 setWithArray:v4];

  v6 = [(NSHashTable *)self->_allViewControllers allObjects];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (([v5 containsObject:v11] & 1) == 0)
        {
          v12 = [v11 navigationController];
          if (!v12 || (v13 = v12, [v11 navigationController], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "topViewController"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, v15 != v11))
          {
            [v11 purgeIfPossible];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)detailsViewControllerDidAppear:(id)a3
{
  v11 = a3;
  [(NSHashTable *)self->_allViewControllers addObject:?];
  v4 = [(NSPointerArray *)self->_lastUsedViewControllers count];
  if (v4 >= 1)
  {
    v5 = v4 + 1;
    do
    {
      if (![(NSPointerArray *)self->_lastUsedViewControllers pointerAtIndex:v5 - 2])
      {
        [(NSPointerArray *)self->_lastUsedViewControllers removePointerAtIndex:v5 - 2];
      }

      --v5;
    }

    while (v5 > 1);
  }

  if ([(NSPointerArray *)self->_lastUsedViewControllers count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [(NSPointerArray *)self->_lastUsedViewControllers pointerAtIndex:v6];
      if (v7 == v11)
      {
        break;
      }

      if (++v6 >= [(NSPointerArray *)self->_lastUsedViewControllers count])
      {
        goto LABEL_12;
      }
    }

    [(NSPointerArray *)self->_lastUsedViewControllers removePointerAtIndex:v6];
  }

LABEL_12:
  [(NSPointerArray *)self->_lastUsedViewControllers addPointer:v11];
  v8 = +[PXPhotosDetailsSettings sharedInstance];
  v9 = [v8 detailViewsToKeepLoaded];

  if ([(NSPointerArray *)self->_lastUsedViewControllers count]> v9)
  {
    v10 = [(NSPointerArray *)self->_lastUsedViewControllers count]- v9;
    if (v10 >= 1)
    {
      do
      {
        [(NSPointerArray *)self->_lastUsedViewControllers removePointerAtIndex:0];
        --v10;
      }

      while (v10);
    }
  }
}

- (void)didReceiveMemoryWarning:(id)a3
{
  v4 = +[PXPhotosDetailsSettings sharedInstance];
  v5 = [v4 purgeOnMemoryWarning];

  if (v5)
  {

    [(_PXPhotosDetailsPurger *)self _purgeAllViewControllers];
  }
}

- (_PXPhotosDetailsPurger)init
{
  v9.receiver = self;
  v9.super_class = _PXPhotosDetailsPurger;
  v2 = [(_PXPhotosDetailsPurger *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    allViewControllers = v2->_allViewControllers;
    v2->_allViewControllers = v3;

    v5 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
    lastUsedViewControllers = v2->_lastUsedViewControllers;
    v2->_lastUsedViewControllers = v5;

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v2 selector:sel_didReceiveMemoryWarning_ name:*MEMORY[0x1E69DDAD8] object:0];
  }

  return v2;
}

+ (id)sharedPurger
{
  if (sharedPurger_onceToken != -1)
  {
    dispatch_once(&sharedPurger_onceToken, &__block_literal_global_71931);
  }

  v3 = sharedPurger_sharedPurger;

  return v3;
}

@end