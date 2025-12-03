@interface SKUIIndexBarControlController
- (SKUIIndexBarControlController)init;
- (SKUIIndexBarControlController)initWithIndexBarControl:(id)control;
- (SKUIIndexBarControlControllerDataSource)dataSource;
- (SKUIIndexBarControlControllerDelegate)delegate;
- (id)_URLForEntryDescriptor:(id)descriptor;
- (id)_cachedEntryForEntryDescriptor:(id)descriptor;
- (id)_combinedEntryDescriptor;
- (id)_entryDescriptorAtIndexPath:(id)path;
- (id)_entryForEntryDescriptor:(id)descriptor loadingIfNeeded:(BOOL)needed;
- (id)_placeholderEntryForEntryDescriptor:(id)descriptor;
- (id)combinedEntryForIndexBarControl:(id)control;
- (id)indexBarControl:(id)control entryAtIndexPath:(id)path;
- (int64_t)indexBarControl:(id)control numberOfEntriesInSection:(int64_t)section;
- (int64_t)numberOfSectionsInIndexBarControl:(id)control;
- (void)_artworkRequestDidLoadImageNotification:(id)notification;
- (void)_cancelLoadForEntryDescriptors:(id)descriptors;
- (void)_configureEntry:(id)entry withEntryDescriptor:(id)descriptor;
- (void)_finishLoadForRequestID:(id)d withResultingImage:(id)image;
- (void)_loadEntryForEntryDescriptor:(id)descriptor;
- (void)_updateCachedEntry:(id)entry forEntryDescriptor:(id)descriptor;
- (void)dealloc;
- (void)indexBarControl:(id)control didSelectEntryAtIndexPath:(id)path;
- (void)indexBarControlDidSelectBeyondBottom:(id)bottom;
- (void)indexBarControlDidSelectBeyondTop:(id)top;
- (void)init;
- (void)reloadCombinedEntryDescriptor;
- (void)reloadData;
- (void)reloadEntryDescriptorAtIndexPath:(id)path;
- (void)reloadSections:(id)sections;
- (void)setDataSource:(id)source;
- (void)setDelegate:(id)delegate;
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__artworkRequestDidLoadImageNotification_ name:@"SKUIArtworkRequestDidLoadImageNotification" object:0];
  }

  return v3;
}

- (SKUIIndexBarControlController)initWithIndexBarControl:(id)control
{
  controlCopy = control;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIIndexBarControlController initWithIndexBarControl:];
  }

  v6 = [(SKUIIndexBarControlController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_indexBarControl, control);
    [(SKUIIndexBarControl *)v7->_indexBarControl setDataSource:v7];
    [(SKUIIndexBarControl *)v7->_indexBarControl setDelegate:v7];
    indexBarControl = v7->_indexBarControl;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SKUIIndexBarControl *)indexBarControl setBackgroundColor:clearColor];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SKUIArtworkRequestDidLoadImageNotification" object:0];
  [(SKUIIndexBarControl *)self->_indexBarControl setDataSource:0];
  [(SKUIIndexBarControl *)self->_indexBarControl setDelegate:0];

  v4.receiver = self;
  v4.super_class = SKUIIndexBarControlController;
  [(SKUIIndexBarControlController *)&v4 dealloc];
}

- (void)setDataSource:(id)source
{
  obj = source;
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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)reloadEntryDescriptorAtIndexPath:(id)path
{
  v11[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v5 = [(NSMapTable *)self->_indexPathToEntryDescriptor objectForKey:pathCopy];
  v6 = v5;
  if (v5)
  {
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [(SKUIIndexBarControlController *)self _cancelLoadForEntryDescriptors:v7];

    [(NSMapTable *)self->_indexPathToEntryDescriptor removeObjectForKey:pathCopy];
    objectEnumerator = [(NSMapTable *)self->_indexPathToEntryDescriptor objectEnumerator];
    allObjects = [objectEnumerator allObjects];
    v10 = [allObjects containsObject:v6];

    if ((v10 & 1) == 0)
    {
      [(NSMapTable *)self->_entryDescriptorToCachedEntry removeObjectForKey:v6];
    }
  }
}

- (void)reloadSections:(id)sections
{
  v24 = *MEMORY[0x277D85DE8];
  sectionsCopy = sections;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __48__SKUIIndexBarControlController_reloadSections___block_invoke;
  v21[3] = &unk_2781FA850;
  v21[4] = self;
  v6 = v5;
  v22 = v6;
  [sectionsCopy enumerateIndexesUsingBlock:v21];
  if ([v6 count])
  {
    v16 = sectionsCopy;
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
          objectEnumerator = [(NSMapTable *)self->_indexPathToEntryDescriptor objectEnumerator];
          allObjects = [objectEnumerator allObjects];
          v15 = [allObjects containsObject:v12];

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

    sectionsCopy = v16;
  }

  [(SKUIIndexBarControl *)self->_indexBarControl reloadSections:sectionsCopy];
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
  objectEnumerator = [(NSMapTable *)self->_indexPathToEntryDescriptor objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  [(SKUIIndexBarControlController *)self _cancelLoadForEntryDescriptors:allObjects];

  indexPathToEntryDescriptor = self->_indexPathToEntryDescriptor;
  self->_indexPathToEntryDescriptor = 0;

  indexBarControl = self->_indexBarControl;

  [(SKUIIndexBarControl *)indexBarControl reloadData];
}

- (id)combinedEntryForIndexBarControl:(id)control
{
  if (*&self->_dataSourceDelegateFlags)
  {
    _combinedEntryDescriptor = [(SKUIIndexBarControlController *)self _combinedEntryDescriptor];
    if (_combinedEntryDescriptor)
    {
      v3 = [(SKUIIndexBarControlController *)self _entryForEntryDescriptor:_combinedEntryDescriptor loadingIfNeeded:1];
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

- (id)indexBarControl:(id)control entryAtIndexPath:(id)path
{
  v5 = [(SKUIIndexBarControlController *)self _entryDescriptorAtIndexPath:path];
  v6 = [(SKUIIndexBarControlController *)self _entryForEntryDescriptor:v5 loadingIfNeeded:1];

  return v6;
}

- (int64_t)numberOfSectionsInIndexBarControl:(id)control
{
  controlCopy = control;
  if (self->_indexBarControl == controlCopy)
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

- (int64_t)indexBarControl:(id)control numberOfEntriesInSection:(int64_t)section
{
  if (self->_indexBarControl != control)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v8 = [WeakRetained indexBarControlController:self numberOfEntryDescriptorsInSection:section];

  return v8;
}

- (void)indexBarControl:(id)control didSelectEntryAtIndexPath:(id)path
{
  if ((*&self->_dataSourceDelegateFlags & 4) != 0)
  {
    pathCopy = path;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained indexBarControlController:self didSelectEntryDescriptorAtIndexPath:pathCopy];
  }
}

- (void)indexBarControlDidSelectBeyondBottom:(id)bottom
{
  if ((*&self->_dataSourceDelegateFlags & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained indexBarControlControllerDidSelectBeyondBottom:self];
  }
}

- (void)indexBarControlDidSelectBeyondTop:(id)top
{
  if ((*&self->_dataSourceDelegateFlags & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained indexBarControlControllerDidSelectBeyondTop:self];
  }
}

- (void)_artworkRequestDidLoadImageNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{objc_msgSend(object, "requestIdentifier")}];
  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKey:@"SKUIArtworkRequestImageKey"];

  [(SKUIIndexBarControlController *)self _finishLoadForRequestID:v5 withResultingImage:v7];
}

- (void)_cancelLoadForEntryDescriptors:(id)descriptors
{
  v19 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [descriptorsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(descriptorsCopy);
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

      v6 = [descriptorsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)_cachedEntryForEntryDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  entryDescriptorToCachedEntry = self->_entryDescriptorToCachedEntry;
  if (entryDescriptorToCachedEntry)
  {
    v6 = NSMapGet(entryDescriptorToCachedEntry, descriptorCopy);
    if (v6)
    {
      goto LABEL_13;
    }
  }

  entryDescriptorType = [descriptorCopy entryDescriptorType];
  switch(entryDescriptorType)
  {
    case 0:
      [descriptorCopy size];
      v6 = [SKUIIndexBarEntry placeholderEntryWithSize:?];
      if (!v6)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    case 3:
      image = [descriptorCopy image];
      v9 = [SKUIIndexBarEntry entryWithImage:image];
      break;
    case 1:
      image = [descriptorCopy attributedString];
      v9 = [SKUIIndexBarEntry entryWithAttributedString:image];
      break;
    default:
      v6 = 0;
      goto LABEL_13;
  }

  v6 = v9;

  if (v6)
  {
LABEL_11:
    [(SKUIIndexBarControlController *)self _configureEntry:v6 withEntryDescriptor:descriptorCopy];
    [(NSMapTable *)self->_entryDescriptorToCachedEntry setObject:v6 forKey:descriptorCopy];
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

- (void)_configureEntry:(id)entry withEntryDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  entryCopy = entry;
  [descriptorCopy contentEdgeInsets];
  [entryCopy setContentEdgeInsets:?];
  visibilityPriority = [descriptorCopy visibilityPriority];

  [entryCopy setVisibilityPriority:visibilityPriority];
}

- (id)_entryDescriptorAtIndexPath:(id)path
{
  pathCopy = path;
  indexPathToEntryDescriptor = self->_indexPathToEntryDescriptor;
  if (!indexPathToEntryDescriptor || (v6 = NSMapGet(indexPathToEntryDescriptor, pathCopy)) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v6 = [WeakRetained indexBarControlController:self entryDescriptorAtIndexPath:pathCopy];

    v8 = self->_indexPathToEntryDescriptor;
    if (!v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:1];
      v10 = self->_indexPathToEntryDescriptor;
      self->_indexPathToEntryDescriptor = v9;

      v8 = self->_indexPathToEntryDescriptor;
    }

    [(NSMapTable *)v8 setObject:v6 forKey:pathCopy];
  }

  return v6;
}

- (id)_entryForEntryDescriptor:(id)descriptor loadingIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  descriptorCopy = descriptor;
  v7 = [(SKUIIndexBarControlController *)self _cachedEntryForEntryDescriptor:descriptorCopy];
  if (!v7)
  {
    v7 = [(SKUIIndexBarControlController *)self _placeholderEntryForEntryDescriptor:descriptorCopy];
    if (neededCopy)
    {
      [(SKUIIndexBarControlController *)self _loadEntryForEntryDescriptor:descriptorCopy];
    }
  }

  return v7;
}

- (void)_finishLoadForRequestID:(id)d withResultingImage:(id)image
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  imageCopy = image;
  if (dCopy)
  {
    v8 = [(NSMapTable *)self->_requestIDToDescriptors objectForKey:dCopy];
    if (v8)
    {
      [(NSMapTable *)self->_requestIDToDescriptors removeObjectForKey:dCopy];
      if (![(NSMapTable *)self->_requestIDToDescriptors count])
      {
        requestIDToDescriptors = self->_requestIDToDescriptors;
        self->_requestIDToDescriptors = 0;
      }

      if (imageCopy)
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
              v16 = [SKUIIndexBarEntry entryWithImage:imageCopy];
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

- (void)_loadEntryForEntryDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v4 = [(SKUIIndexBarControlController *)self _URLForEntryDescriptor:?];
  if (v4)
  {
    v5 = [(SKUIResourceLoader *)self->_resourceLoader requestIdentifierForCacheKey:v4];
    if (v5 && ([(NSMapTable *)self->_requestIDToDescriptors objectForKey:v5], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      [v6 addObject:descriptorCopy];
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
      [v7 addObject:descriptorCopy];
      if (v10)
      {
        [(SKUIResourceLoader *)self->_resourceLoader loadResourceWithRequest:v10 reason:1];
      }

      v5 = v12;
    }
  }
}

- (id)_placeholderEntryForEntryDescriptor:(id)descriptor
{
  [descriptor size];

  return [SKUIIndexBarEntry placeholderEntryWithSize:?];
}

- (void)_updateCachedEntry:(id)entry forEntryDescriptor:(id)descriptor
{
  v20 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  descriptorCopy = descriptor;
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
        if ([v14 isEqual:descriptorCopy])
        {
          [(NSMapTable *)self->_entryDescriptorToCachedEntry setObject:entryCopy forKey:descriptorCopy];
          [(SKUIIndexBarControl *)self->_indexBarControl reloadEntryAtIndexPath:v13];
        }
      }

      v10 = [(NSMapTable *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if ([(SKUIIndexBarEntryDescriptor *)self->_combinedEntryDescriptor isEqual:descriptorCopy])
  {
    [(NSMapTable *)self->_entryDescriptorToCachedEntry setObject:entryCopy forKey:descriptorCopy];
    [(SKUIIndexBarControl *)self->_indexBarControl reloadCombinedEntry];
  }
}

- (id)_URLForEntryDescriptor:(id)descriptor
{
  artwork = [descriptor artwork];
  v4 = [artwork URL];

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