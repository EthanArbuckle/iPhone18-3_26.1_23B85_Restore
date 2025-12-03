@interface PLThumbnailResourceDataStore
+ (BOOL)resourceIsSquare:(id)square;
+ (id)_tableFormatsByTableTypeFromFormats:(id)formats;
- (BOOL)thumbnailForKey:(id)key matchesAssetID:(id)d;
- (CGImage)newTableThumbImageForKey:(id)key;
- (NSArray)thumbnailFormats;
- (PLImageTableEntryFooter_s)_tableFooterForKey:(id)key;
- (PLThumbnailResourceDataStore)initWithPathManager:(id)manager;
- (id)_makeThumbnailManager;
- (id)keyFromKeyStruct:(const void *)struct;
- (id)requestLocalAvailabilityChange:(signed __int16)change forResource:(id)resource options:(id)options completion:(id)completion;
- (id)resourceDataForKey:(id)key assetID:(id)d;
- (id)resourceURLForKey:(id)key;
- (id)virtualResourcesForAsset:(id)asset options:(unsigned __int16)options;
- (void)_installBackgroundWatcher;
- (void)_startWatchingThumbnailConfigFile;
- (void)_stopWatchingThumbnailConfigFile;
- (void)dealloc;
- (void)invalidateThumbnailManager;
- (void)overrideThumbnailFormatsWithFormatIDs:(id)ds;
@end

@implementation PLThumbnailResourceDataStore

- (id)_makeThumbnailManager
{
  v3 = [PLThumbnailManager alloc];
  pathManager = [(PLResourceDataStore *)self pathManager];
  v5 = [(PLThumbnailManager *)v3 initWithPhotoLibraryPathManager:pathManager storeFromMigration:0];

  pathManager2 = [(PLResourceDataStore *)self pathManager];
  LODWORD(pathManager) = [(PLThumbnailManagerCore *)PLThumbnailManager isSuppressingTargetConfigDueToPendingThumbMigrationForPathManager:pathManager2];

  if (pathManager)
  {
    [(PLThumbnailResourceDataStore *)self _startWatchingThumbnailConfigFile];
  }

  if ((PLIsForegroundApplication() & 1) != 0 || MEMORY[0x19EAEE520]())
  {
    pathManager3 = [(PLResourceDataStore *)self pathManager];
    v8 = [(PLThumbnailManagerCore *)PLThumbnailManager isSuppressingTargetConfigDueToPendingThumbMigrationForPathManager:pathManager3];

    if (v8)
    {
      [(PLThumbnailResourceDataStore *)self _installBackgroundWatcher];
    }
  }

  return v5;
}

- (NSArray)thumbnailFormats
{
  overridenThumbnailFormats = self->_overridenThumbnailFormats;
  if (overridenThumbnailFormats)
  {
    objectValue = overridenThumbnailFormats;
  }

  else
  {
    objectValue = [(PLLazyObject *)self->_lazyThumbnailFormats objectValue];
  }

  return objectValue;
}

- (BOOL)thumbnailForKey:(id)key matchesAssetID:(id)d
{
  dCopy = d;
  v7 = [(PLThumbnailResourceDataStore *)self _tableFooterForKey:key];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_alloc(MEMORY[0x1E69BF320]) initWithCFUUIDBytes:{*&v8->var0.var0, *&v8->var0.var8}];
    uuid = [dCopy uuid];
    v11 = [v9 isEqualToString:uuid];

    free(v8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGImage)newTableThumbImageForKey:(id)key
{
  v11 = -1;
  v12 = 0;
  [key tableType:&v12 index:&v11];
  thumbnailFormatsByTableType = [(PLThumbnailResourceDataStore *)self thumbnailFormatsByTableType];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
  v6 = [thumbnailFormatsByTableType objectForKeyedSubscript:v5];

  thumbnailManager = [(PLThumbnailResourceDataStore *)self thumbnailManager];
  v8 = [thumbnailManager thumbManagerForFormatID:{objc_msgSend(v6, "formatID")}];

  v9 = [v8 createImageWithIdentifier:0 orIndex:v11];
  return v9;
}

- (id)requestLocalAvailabilityChange:(signed __int16)change forResource:(id)resource options:(id)options completion:(id)completion
{
  completionCopy = completion;
  [resource localAvailability];
  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PLThumbnailResourceDataStore" code:0 userInfo:0];
  (*(completionCopy + 2))(completionCopy, v8, 0, 0);

  return 0;
}

- (id)virtualResourcesForAsset:(id)asset options:(unsigned __int16)options
{
  v43 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (![assetCopy hasTableThumbs] || (objc_msgSend(assetCopy, "isDeleted") & 1) != 0)
  {
    v35 = MEMORY[0x1E695E0F0];
    goto LABEL_4;
  }

  v35 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(&unk_1F0FBF3E8, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = [&unk_1F0FBF3E8 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(&unk_1F0FBF3E8);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        thumbnailFormatsByTableType = [(PLThumbnailResourceDataStore *)self thumbnailFormatsByTableType];
        v13 = [thumbnailFormatsByTableType objectForKeyedSubscript:v11];

        if (v13 && [v13 isTable])
        {
          longValue = [v11 longValue];
          v15 = +[PLResourceRecipe recipeFromID:](PLResourceRecipe, "recipeFromID:", (2 * [v13 formatID]) | 0x30001);
          v16 = [(PLVirtualResource *)[PLTableThumbnailVirtualResource alloc] initWithRecipe:v15 forAsset:assetCopy];
          if ([v13 isSquare])
          {
            [v13 dimension];
            [(PLVirtualResource *)v16 setUnorientedWidth:v17];
            [v13 dimension];
            goto LABEL_21;
          }

          if ([v13 formatMode] == 2)
          {
            width = [assetCopy width];
            height = [assetCopy height];
            if (width <= height)
            {
              v21 = height;
            }

            else
            {
              v21 = width;
            }

            v22 = v21;
            [v13 dimension];
            v24 = v23 / v22;
            -[PLVirtualResource setUnorientedWidth:](v16, "setUnorientedWidth:", (v24 * [assetCopy width]));
            v18 = v24 * [assetCopy height];
LABEL_21:
            [(PLVirtualResource *)v16 setUnorientedHeight:v18];
          }

          width2 = [assetCopy width];
          if ([assetCopy height] * width2 < 1)
          {
            v29 = 0.0;
          }

          else
          {
            unorientedWidth = [(PLVirtualResource *)v16 unorientedWidth];
            v27 = ([(PLVirtualResource *)v16 unorientedHeight]* unorientedWidth);
            width3 = [assetCopy width];
            *&v29 = v27 / ([assetCopy height] * width3);
          }

          [(PLVirtualResource *)v16 setScale:v29];
          codecFourCharCodeName = [v15 codecFourCharCodeName];
          [(PLVirtualResource *)v16 setCodecFourCharCodeName:codecFourCharCodeName];

          v31 = [v15 uti];
          [(PLVirtualResource *)v16 setUniformTypeIdentifier:v31];

          [(PLVirtualResource *)v16 setDataStore:self];
          [(PLVirtualResource *)v16 setDataStoreSubtype:longValue];
          v37 = 0;
          v36 = 4 * (longValue & 7);
          effectiveThumbnailIndex = [assetCopy effectiveThumbnailIndex];
          v33 = ((effectiveThumbnailIndex & 0x7FFFFFF) << 6) | v36 & 0x3F | (v37 << 32) & 0xFFFFFFFE0000003FLL;
          v36 = (effectiveThumbnailIndex << 6) | v36 & 0x3F;
          v37 = BYTE4(v33);
          v34 = [[PLThumbnailResourceDataStoreKey alloc] initWithKeyStruct:&v36];
          [(PLVirtualResource *)v16 setDataStoreKey:v34];
          [v35 addObject:v16];
        }
      }

      v8 = [&unk_1F0FBF3E8 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v8);
  }

LABEL_4:

  return v35;
}

- (id)resourceURLForKey:(id)key
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLThumbnailResourceDataStore.m" lineNumber:258 description:@"resourceURLForKey is not supported for PLThumbnailResourceDataStore."];

  return 0;
}

- (id)resourceDataForKey:(id)key assetID:(id)d
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLThumbnailResourceDataStore.m" lineNumber:252 description:@"resourceDataForKey is not supported for PLThumbnailResourceDataStore."];

  return 0;
}

- (id)keyFromKeyStruct:(const void *)struct
{
  v3 = [[PLThumbnailResourceDataStoreKey alloc] initWithKeyStruct:struct];

  return v3;
}

- (void)dealloc
{
  clientBackgroundTransitionObserverToken = self->_clientBackgroundTransitionObserverToken;
  if (clientBackgroundTransitionObserverToken)
  {
    v4 = MEMORY[0x1E696AD88];
    v5 = clientBackgroundTransitionObserverToken;
    defaultCenter = [v4 defaultCenter];
    [defaultCenter removeObserver:v5];
  }

  v7.receiver = self;
  v7.super_class = PLThumbnailResourceDataStore;
  [(PLThumbnailResourceDataStore *)&v7 dealloc];
}

- (PLThumbnailResourceDataStore)initWithPathManager:(id)manager
{
  managerCopy = manager;
  v33.receiver = self;
  v33.super_class = PLThumbnailResourceDataStore;
  v6 = [(PLResourceDataStore *)&v33 initWithPathManager:managerCopy];
  v7 = v6;
  if (v6)
  {
    pathManager = [(PLResourceDataStore *)v6 pathManager];

    if (!pathManager)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"PLThumbnailResourceDataStore.m" lineNumber:208 description:{@"Invalid parameter not satisfying: %@", @"self.pathManager"}];
    }

    v9 = objc_initWeak(&location, v7);

    v10 = objc_alloc(MEMORY[0x1E69BF270]);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __52__PLThumbnailResourceDataStore_initWithPathManager___block_invoke;
    v30[3] = &unk_1E7576828;
    objc_copyWeak(&v31, &location);
    v11 = [v10 initWithRetriableBlock:v30];
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
    lazyThumbnailManager = v7->_lazyThumbnailManager;
    v7->_lazyThumbnailManager = v11;

    v13 = objc_initWeak(&location, v7);
    v14 = objc_alloc(MEMORY[0x1E69BF270]);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __52__PLThumbnailResourceDataStore_initWithPathManager___block_invoke_2;
    v27[3] = &unk_1E7573318;
    objc_copyWeak(&v29, &location);
    v28 = managerCopy;
    v15 = [v14 initWithRetriableBlock:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
    lazyThumbnailFormats = v7->_lazyThumbnailFormats;
    v7->_lazyThumbnailFormats = v15;

    v17 = objc_initWeak(&location, v7);
    v18 = objc_alloc(MEMORY[0x1E69BF270]);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __52__PLThumbnailResourceDataStore_initWithPathManager___block_invoke_3;
    v25[3] = &unk_1E7576828;
    objc_copyWeak(&v26, &location);
    v19 = [v18 initWithRetriableBlock:v25];
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    lazyThumbnailFormatsByTableType = v7->_lazyThumbnailFormatsByTableType;
    v7->_lazyThumbnailFormatsByTableType = v19;

    v7->_observersLock._os_unfair_lock_opaque = 0;
    if (PLIsAssetsd())
    {
      v21 = objc_alloc_init(PLThumbnailIndexes);
      thumbnailIndexes = v7->_thumbnailIndexes;
      v7->_thumbnailIndexes = v21;
    }
  }

  return v7;
}

id __52__PLThumbnailResourceDataStore_initWithPathManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _makeThumbnailManager];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __52__PLThumbnailResourceDataStore_initWithPathManager___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [(PLThumbnailManagerCore *)PLThumbnailManager thumbnailFormatsForConfigPhase:1 withPathManager:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __52__PLThumbnailResourceDataStore_initWithPathManager___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_opt_class();
    v3 = [WeakRetained thumbnailFormats];
    v4 = [v2 _tableFormatsByTableTypeFromFormats:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)overrideThumbnailFormatsWithFormatIDs:(id)ds
{
  v19 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x1E69BF260] formatWithID:{objc_msgSend(*(*(&v14 + 1) + 8 * v10), "intValue", v14)}];
        [(NSArray *)v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  overridenThumbnailFormats = self->_overridenThumbnailFormats;
  self->_overridenThumbnailFormats = v5;
  v13 = v5;

  [(PLLazyObject *)self->_lazyThumbnailFormats resetObject];
  [(PLLazyObject *)self->_lazyThumbnailFormatsByTableType resetObject];
}

- (void)invalidateThumbnailManager
{
  [(PLThumbnailResourceDataStore *)self _stopWatchingThumbnailConfigFile];
  [(PLLazyObject *)self->_lazyThumbnailManager resetObject];
  [(PLLazyObject *)self->_lazyThumbnailFormats resetObject];
  lazyThumbnailFormatsByTableType = self->_lazyThumbnailFormatsByTableType;

  [(PLLazyObject *)lazyThumbnailFormatsByTableType resetObject];
}

- (void)_installBackgroundWatcher
{
  os_unfair_lock_lock(&self->_observersLock);
  if (!self->_clientBackgroundTransitionObserverToken)
  {
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = DCIM_applicationBackgroundedNotificationName();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__PLThumbnailResourceDataStore__installBackgroundWatcher__block_invoke;
    v7[3] = &unk_1E75668F0;
    objc_copyWeak(&v8, &location);
    v5 = [defaultCenter addObserverForName:v4 object:0 queue:0 usingBlock:v7];
    clientBackgroundTransitionObserverToken = self->_clientBackgroundTransitionObserverToken;
    self->_clientBackgroundTransitionObserverToken = v5;

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

void __57__PLThumbnailResourceDataStore__installBackgroundWatcher__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateThumbnailManager];
}

- (void)_stopWatchingThumbnailConfigFile
{
  os_unfair_lock_lock(&self->_observersLock);
  configWatcherSource = self->_configWatcherSource;
  if (configWatcherSource)
  {
    dispatch_source_cancel(configWatcherSource);
    v4 = self->_configWatcherSource;
    self->_configWatcherSource = 0;
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)_startWatchingThumbnailConfigFile
{
  location[3] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_observersLock);
  if (!self->_configWatcherSource)
  {
    pathManager = [(PLResourceDataStore *)self pathManager];
    v4 = [(PLThumbnailManagerCore *)PLThumbnailManager thumbnailConfigurationPathWithPathManager:pathManager];

    v5 = open([v4 fileSystemRepresentation], 0x8000);
    if (v5 < 0)
    {
      v8 = PLImageManagerGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v4;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Unable to watch thumbnail config, cannot open file at path: %@", location, 0xCu);
      }
    }

    else
    {
      v6 = v5;
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);

      v9 = dispatch_queue_create("com.apple.photos.thumbconfigwatcher", v8);
      v10 = dispatch_source_create(MEMORY[0x1E69E9728], v6, 1uLL, v9);
      configWatcherSource = self->_configWatcherSource;
      self->_configWatcherSource = v10;

      objc_initWeak(location, self);
      v12 = self->_configWatcherSource;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __65__PLThumbnailResourceDataStore__startWatchingThumbnailConfigFile__block_invoke;
      handler[3] = &unk_1E75788C0;
      objc_copyWeak(&v17, location);
      dispatch_source_set_event_handler(v12, handler);
      v13 = self->_configWatcherSource;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __65__PLThumbnailResourceDataStore__startWatchingThumbnailConfigFile__block_invoke_2;
      v14[3] = &__block_descriptor_36_e5_v8__0l;
      v15 = v6;
      dispatch_source_set_cancel_handler(v13, v14);
      dispatch_resume(self->_configWatcherSource);
      objc_destroyWeak(&v17);
      objc_destroyWeak(location);
    }
  }

  os_unfair_lock_unlock(&self->_observersLock);
}

void __65__PLThumbnailResourceDataStore__startWatchingThumbnailConfigFile__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained invalidateThumbnailManager];
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"PLThumbnailResourceDataStoreThumbnailManagerConfigDidChange" object:v3];

    WeakRetained = v3;
  }
}

- (PLImageTableEntryFooter_s)_tableFooterForKey:(id)key
{
  if (!key)
  {
    return 0;
  }

  v11 = -1;
  v12 = 0;
  [key tableType:&v12 index:&v11];
  thumbnailFormatsByTableType = [(PLThumbnailResourceDataStore *)self thumbnailFormatsByTableType];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
  v6 = [thumbnailFormatsByTableType objectForKeyedSubscript:v5];

  if (v6)
  {
    thumbnailManager = [(PLThumbnailResourceDataStore *)self thumbnailManager];
    v8 = [thumbnailManager thumbManagerForFormatID:{objc_msgSend(v6, "formatID")}];

    if (v8)
    {
      v9 = [v8 tableFooterForIndex:v11];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)resourceIsSquare:(id)square
{
  squareCopy = square;
  v4 = [squareCopy dataStoreSubtype] == 1 || objc_msgSend(squareCopy, "dataStoreSubtype") == 0;

  return v4;
}

+ (id)_tableFormatsByTableTypeFromFormats:(id)formats
{
  v26[1] = *MEMORY[0x1E69E9840];
  formatsCopy = formats;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dimension" ascending:1];
  v26[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v20 = formatsCopy;
  v7 = [formatsCopy sortedArrayUsingDescriptors:v6];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if ([v13 isTable])
        {
          if ([v13 isSquare])
          {
            v14 = [v4 objectForKeyedSubscript:&unk_1F0FBAF30];

            if (v14)
            {
              v15 = [v4 objectForKeyedSubscript:&unk_1F0FBAF48];

              if (v15)
              {
                continue;
              }

              v16 = &unk_1F0FBAF48;
            }

            else
            {
              v16 = &unk_1F0FBAF30;
            }
          }

          else
          {
            v17 = [v4 objectForKeyedSubscript:&unk_1F0FBAF60];

            if (v17)
            {
              v18 = [v4 objectForKeyedSubscript:&unk_1F0FBAF78];

              if (v18)
              {
                continue;
              }

              v16 = &unk_1F0FBAF78;
            }

            else
            {
              v16 = &unk_1F0FBAF60;
            }
          }

          [v4 setObject:v13 forKeyedSubscript:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  return v4;
}

@end