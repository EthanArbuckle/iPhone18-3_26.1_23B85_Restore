@interface SKUIIndexBarControlController
- (SKUIIndexBarControlController)init;
- (SKUIIndexBarControlController)initWithIndexBarControl:(id)a3;
- (SKUIIndexBarControlControllerDataSource)dataSource;
- (SKUIIndexBarControlControllerDelegate)delegate;
- (id)_URLForEntryDescriptor:(id)a3;
- (id)_cachedEntryForEntryDescriptor:(id)a3;
- (id)_combinedEntryDescriptor;
- (id)_entryDescriptorAtIndexPath:(id)a3;
- (id)_entryForEntryDescriptor:(id)a3 loadingIfNeeded:(BOOL)a4;
- (id)_placeholderEntryForEntryDescriptor:(id)a3;
- (id)combinedEntryForIndexBarControl:(id)a3;
- (id)indexBarControl:(id)a3 entryAtIndexPath:(id)a4;
- (int64_t)indexBarControl:(id)a3 numberOfEntriesInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInIndexBarControl:(id)a3;
- (void)_artworkRequestDidLoadImageNotification:(id)a3;
- (void)_cancelLoadForEntryDescriptors:(id)a3;
- (void)_configureEntry:(id)a3 withEntryDescriptor:(id)a4;
- (void)_finishLoadForRequestID:(id)a3 withResultingImage:(id)a4;
- (void)_loadEntryForEntryDescriptor:(id)a3;
- (void)_updateCachedEntry:(id)a3 forEntryDescriptor:(id)a4;
- (void)dealloc;
- (void)indexBarControl:(id)a3 didSelectEntryAtIndexPath:(id)a4;
- (void)indexBarControlDidSelectBeyondBottom:(id)a3;
- (void)indexBarControlDidSelectBeyondTop:(id)a3;
- (void)init;
- (void)reloadCombinedEntryDescriptor;
- (void)reloadData;
- (void)reloadEntryDescriptorAtIndexPath:(id)a3;
- (void)reloadSections:(id)a3;
- (void)setDataSource:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation SKUIIndexBarControlController

- (SKUIIndexBarControlController)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIndexBarControlController init];
  }

  v8.receiver = self;
  v8.super_class = SKUIIndexBarControlController;
  v3 = [(SKUIIndexBarControlController *)&v8 init];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:1];
    entryDescriptorToCachedEntry = v3->_entryDescriptorToCachedEntry;
    v3->_entryDescriptorToCachedEntry = v4;

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v3 selector:sel__artworkRequestDidLoadImageNotification_ name:@"SKUIArtworkRequestDidLoadImageNotification" object:0];
  }

  return v3;
}

- (SKUIIndexBarControlController)initWithIndexBarControl:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIndexBarControlController initWithIndexBarControl:];
  }

  v6 = [(SKUIIndexBarControlController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_indexBarControl, a3);
    [(SKUIIndexBarControl *)v7->_indexBarControl setDataSource:v7];
    [(SKUIIndexBarControl *)v7->_indexBarControl setDelegate:v7];
    indexBarControl = v7->_indexBarControl;
    v9 = [MEMORY[0x277D75348] clearColor];
    [(SKUIIndexBarControl *)indexBarControl setBackgroundColor:v9];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"SKUIArtworkRequestDidLoadImageNotification" object:0];
  [(SKUIIndexBarControl *)self->_indexBarControl setDataSource:0];
  [(SKUIIndexBarControl *)self->_indexBarControl setDelegate:0];

  v4.receiver = self;
  v4.super_class = SKUIIndexBarControlController;
  [(SKUIIndexBarControlController *)&v4 dealloc];
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_dataSource, obj);
    *&self->_dataSourceDelegateFlags = *&self->_dataSourceDelegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;

    v6 = objc_loadWeakRetained(&self->_dataSource);
    if (objc_opt_respondsToSelector())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *&self->_dataSourceDelegateFlags = *&self->_dataSourceDelegateFlags & 0xFD | v7;

    [(SKUIIndexBarControlController *)self reloadData];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_dataSourceDelegateFlags = *&self->_dataSourceDelegateFlags & 0xFB | v6;

    v7 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&self->_dataSourceDelegateFlags = *&self->_dataSourceDelegateFlags & 0xF7 | v8;

    v9 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v10 = 16;
    }

    else
    {
      v10 = 0;
    }

    *&self->_dataSourceDelegateFlags = *&self->_dataSourceDelegateFlags & 0xEF | v10;
  }
}

- (void)reloadCombinedEntryDescriptor
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->_combinedEntryDescriptor)
  {
    v4[0] = self->_combinedEntryDescriptor;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
    [(SKUIIndexBarControlController *)self _cancelLoadForEntryDescriptors:v3];
  }

  self->_hasValidCombinedEntryDescriptor = 0;
  [(SKUIIndexBarControl *)self->_indexBarControl reloadCombinedEntry];
}

- (void)reloadEntryDescriptorAtIndexPath:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMapTable *)self->_indexPathToEntryDescriptor objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [(SKUIIndexBarControlController *)self _cancelLoadForEntryDescriptors:v7];

    [(NSMapTable *)self->_indexPathToEntryDescriptor removeObjectForKey:v4];
    v8 = [(NSMapTable *)self->_indexPathToEntryDescriptor objectEnumerator];
    v9 = [v8 allObjects];
    v10 = [v9 containsObject:v6];

    if ((v10 & 1) == 0)
    {
      [(NSMapTable *)self->_entryDescriptorToCachedEntry removeObjectForKey:v6];
    }
  }
}

- (void)reloadSections:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __48__SKUIIndexBarControlController_reloadSections___block_invoke;
  v21[3] = &unk_2781FA850;
  v21[4] = self;
  v6 = v5;
  v22 = v6;
  [v4 enumerateIndexesUsingBlock:v21];
  if ([v6 count])
  {
    v16 = v4;
    [(SKUIIndexBarControlController *)self _cancelLoadForEntryDescriptors:v6];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          v13 = [(NSMapTable *)self->_indexPathToEntryDescriptor objectEnumerator];
          v14 = [v13 allObjects];
          v15 = [v14 containsObject:v12];

          if ((v15 & 1) == 0)
          {
            [(NSMapTable *)self->_entryDescriptorToCachedEntry removeObjectForKey:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v9);
    }

    v4 = v16;
  }

  [(SKUIIndexBarControl *)self->_indexBarControl reloadSections:v4];
}

void __48__SKUIIndexBarControlController_reloadSections___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(*(a1 + 32) + 32) copy];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 section] == a2)
        {
          v10 = [*(*(a1 + 32) + 32) objectForKey:v9];
          if (v10)
          {
            [*(a1 + 40) addObject:v10];
          }

          [*(*(a1 + 32) + 32) removeObjectForKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)reloadData
{
  self->_hasValidCombinedEntryDescriptor = 0;
  v3 = [(NSMapTable *)self->_indexPathToEntryDescriptor objectEnumerator];
  v4 = [v3 allObjects];
  [(SKUIIndexBarControlController *)self _cancelLoadForEntryDescriptors:v4];

  indexPathToEntryDescriptor = self->_indexPathToEntryDescriptor;
  self->_indexPathToEntryDescriptor = 0;

  indexBarControl = self->_indexBarControl;

  [(SKUIIndexBarControl *)indexBarControl reloadData];
}

- (id)combinedEntryForIndexBarControl:(id)a3
{
  if (*&self->_dataSourceDelegateFlags)
  {
    v5 = [(SKUIIndexBarControlController *)self _combinedEntryDescriptor];
    if (v5)
    {
      v3 = [(SKUIIndexBarControlController *)self _entryForEntryDescriptor:v5 loadingIfNeeded:1];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = +[SKUIIndexBarEntry systemCombinedEntry];
  }

  return v3;
}

- (id)indexBarControl:(id)a3 entryAtIndexPath:(id)a4
{
  v5 = [(SKUIIndexBarControlController *)self _entryDescriptorAtIndexPath:a4];
  v6 = [(SKUIIndexBarControlController *)self _entryForEntryDescriptor:v5 loadingIfNeeded:1];

  return v6;
}

- (int64_t)numberOfSectionsInIndexBarControl:(id)a3
{
  v4 = a3;
  if (self->_indexBarControl == v4)
  {
    if ((*&self->_dataSourceDelegateFlags & 2) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v5 = [WeakRetained numberOfSectionsInIndexBarControlController:self];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)indexBarControl:(id)a3 numberOfEntriesInSection:(int64_t)a4
{
  if (self->_indexBarControl != a3)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v8 = [WeakRetained indexBarControlController:self numberOfEntryDescriptorsInSection:a4];

  return v8;
}

- (void)indexBarControl:(id)a3 didSelectEntryAtIndexPath:(id)a4
{
  if ((*&self->_dataSourceDelegateFlags & 4) != 0)
  {
    v6 = a4;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained indexBarControlController:self didSelectEntryDescriptorAtIndexPath:v6];
  }
}

- (void)indexBarControlDidSelectBeyondBottom:(id)a3
{
  if ((*&self->_dataSourceDelegateFlags & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained indexBarControlControllerDidSelectBeyondBottom:self];
  }
}

- (void)indexBarControlDidSelectBeyondTop:(id)a3
{
  if ((*&self->_dataSourceDelegateFlags & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained indexBarControlControllerDidSelectBeyondTop:self];
  }
}

- (void)_artworkRequestDidLoadImageNotification:(id)a3
{
  v4 = a3;
  v8 = [v4 object];
  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(v8, "requestIdentifier")}];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:@"SKUIArtworkRequestImageKey"];

  [(SKUIIndexBarControlController *)self _finishLoadForRequestID:v5 withResultingImage:v7];
}

- (void)_cancelLoadForEntryDescriptors:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(SKUIIndexBarControlController *)self _URLForEntryDescriptor:v9];
        if (v10)
        {
          v11 = [(SKUIResourceLoader *)self->_resourceLoader requestIdentifierForCacheKey:v10];
          if (v11)
          {
            v12 = [(NSMapTable *)self->_requestIDToDescriptors objectForKey:v11];
            if ([v12 count])
            {
              [v12 removeObject:v9];
              if (![v12 count])
              {
                [(NSMapTable *)self->_requestIDToDescriptors removeObjectForKey:v11];
                if (![(NSMapTable *)self->_requestIDToDescriptors count])
                {
                  requestIDToDescriptors = self->_requestIDToDescriptors;
                  self->_requestIDToDescriptors = 0;
                }

                -[SKUIResourceLoader trySetReason:forRequestWithIdentifier:](self->_resourceLoader, "trySetReason:forRequestWithIdentifier:", 0, [v11 unsignedIntegerValue]);
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)_cachedEntryForEntryDescriptor:(id)a3
{
  v4 = a3;
  entryDescriptorToCachedEntry = self->_entryDescriptorToCachedEntry;
  if (entryDescriptorToCachedEntry)
  {
    v6 = NSMapGet(entryDescriptorToCachedEntry, v4);
    if (v6)
    {
      goto LABEL_13;
    }
  }

  v7 = [v4 entryDescriptorType];
  switch(v7)
  {
    case 0:
      [v4 size];
      v6 = [SKUIIndexBarEntry placeholderEntryWithSize:?];
      if (!v6)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    case 3:
      v8 = [v4 image];
      v9 = [SKUIIndexBarEntry entryWithImage:v8];
      break;
    case 1:
      v8 = [v4 attributedString];
      v9 = [SKUIIndexBarEntry entryWithAttributedString:v8];
      break;
    default:
      v6 = 0;
      goto LABEL_13;
  }

  v6 = v9;

  if (v6)
  {
LABEL_11:
    [(SKUIIndexBarControlController *)self _configureEntry:v6 withEntryDescriptor:v4];
    [(NSMapTable *)self->_entryDescriptorToCachedEntry setObject:v6 forKey:v4];
  }

LABEL_13:

  return v6;
}

- (id)_combinedEntryDescriptor
{
  if (!self->_hasValidCombinedEntryDescriptor)
  {
    if (*&self->_dataSourceDelegateFlags)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v4 = [WeakRetained combinedEntryDescriptorForIndexBarControlController:self];
      combinedEntryDescriptor = self->_combinedEntryDescriptor;
      self->_combinedEntryDescriptor = v4;
    }

    self->_hasValidCombinedEntryDescriptor = 1;
  }

  v6 = self->_combinedEntryDescriptor;

  return v6;
}

- (void)_configureEntry:(id)a3 withEntryDescriptor:(id)a4
{
  v5 = a4;
  v7 = a3;
  [v5 contentEdgeInsets];
  [v7 setContentEdgeInsets:?];
  v6 = [v5 visibilityPriority];

  [v7 setVisibilityPriority:v6];
}

- (id)_entryDescriptorAtIndexPath:(id)a3
{
  v4 = a3;
  indexPathToEntryDescriptor = self->_indexPathToEntryDescriptor;
  if (!indexPathToEntryDescriptor || (v6 = NSMapGet(indexPathToEntryDescriptor, v4)) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v6 = [WeakRetained indexBarControlController:self entryDescriptorAtIndexPath:v4];

    v8 = self->_indexPathToEntryDescriptor;
    if (!v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:1];
      v10 = self->_indexPathToEntryDescriptor;
      self->_indexPathToEntryDescriptor = v9;

      v8 = self->_indexPathToEntryDescriptor;
    }

    [(NSMapTable *)v8 setObject:v6 forKey:v4];
  }

  return v6;
}

- (id)_entryForEntryDescriptor:(id)a3 loadingIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SKUIIndexBarControlController *)self _cachedEntryForEntryDescriptor:v6];
  if (!v7)
  {
    v7 = [(SKUIIndexBarControlController *)self _placeholderEntryForEntryDescriptor:v6];
    if (v4)
    {
      [(SKUIIndexBarControlController *)self _loadEntryForEntryDescriptor:v6];
    }
  }

  return v7;
}

- (void)_finishLoadForRequestID:(id)a3 withResultingImage:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(NSMapTable *)self->_requestIDToDescriptors objectForKey:v6];
    if (v8)
    {
      [(NSMapTable *)self->_requestIDToDescriptors removeObjectForKey:v6];
      if (![(NSMapTable *)self->_requestIDToDescriptors count])
      {
        requestIDToDescriptors = self->_requestIDToDescriptors;
        self->_requestIDToDescriptors = 0;
      }

      if (v7)
      {
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v17 = v8;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            v14 = 0;
            do
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v18 + 1) + 8 * v14);
              v16 = [SKUIIndexBarEntry entryWithImage:v7];
              [(SKUIIndexBarControlController *)self _configureEntry:v16 withEntryDescriptor:v15];
              [(SKUIIndexBarControlController *)self _updateCachedEntry:v16 forEntryDescriptor:v15];

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v12);
        }

        v8 = v17;
      }
    }
  }
}

- (void)_loadEntryForEntryDescriptor:(id)a3
{
  v13 = a3;
  v4 = [(SKUIIndexBarControlController *)self _URLForEntryDescriptor:?];
  if (v4)
  {
    v5 = [(SKUIResourceLoader *)self->_resourceLoader requestIdentifierForCacheKey:v4];
    if (v5 && ([(NSMapTable *)self->_requestIDToDescriptors objectForKey:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      [v6 addObject:v13];
    }

    else
    {
      if (!self->_requestIDToDescriptors)
      {
        v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:1];
        requestIDToDescriptors = self->_requestIDToDescriptors;
        self->_requestIDToDescriptors = v8;
      }

      v10 = objc_alloc_init(SKUIArtworkRequest);
      [(SKUIResourceRequest *)v10 setCacheKey:v4];
      v11 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
      [(SKUIArtworkRequest *)v10 setDataConsumer:v11];

      [(SKUIArtworkRequest *)v10 setURL:v4];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SKUIResourceRequest requestIdentifier](v10, "requestIdentifier")}];

      v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      [(NSMapTable *)self->_requestIDToDescriptors setObject:v7 forKey:v12];
      [v7 addObject:v13];
      if (v10)
      {
        [(SKUIResourceLoader *)self->_resourceLoader loadResourceWithRequest:v10 reason:1];
      }

      v5 = v12;
    }
  }
}

- (id)_placeholderEntryForEntryDescriptor:(id)a3
{
  [a3 size];

  return [SKUIIndexBarEntry placeholderEntryWithSize:?];
}

- (void)_updateCachedEntry:(id)a3 forEntryDescriptor:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_indexPathToEntryDescriptor;
  v9 = [(NSMapTable *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [(NSMapTable *)self->_indexPathToEntryDescriptor objectForKey:v13, v15];
        if ([v14 isEqual:v7])
        {
          [(NSMapTable *)self->_entryDescriptorToCachedEntry setObject:v6 forKey:v7];
          [(SKUIIndexBarControl *)self->_indexBarControl reloadEntryAtIndexPath:v13];
        }
      }

      v10 = [(NSMapTable *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if ([(SKUIIndexBarEntryDescriptor *)self->_combinedEntryDescriptor isEqual:v7])
  {
    [(NSMapTable *)self->_entryDescriptorToCachedEntry setObject:v6 forKey:v7];
    [(SKUIIndexBarControl *)self->_indexBarControl reloadCombinedEntry];
  }
}

- (id)_URLForEntryDescriptor:(id)a3
{
  v3 = [a3 artwork];
  v4 = [v3 URL];

  return v4;
}

- (SKUIIndexBarControlControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (SKUIIndexBarControlControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIndexBarControlController init]";
}

- (void)initWithIndexBarControl:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIIndexBarControlController initWithIndexBarControl:]";
}

@end