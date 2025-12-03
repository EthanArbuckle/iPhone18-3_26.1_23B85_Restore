@interface PXImportController
+ (id)assetsForModels:(id)models;
+ (id)importFilesAtURLs:(id)ls photoLibrary:(id)library collection:(id)collection checkDuplicates:(BOOL)duplicates referenced:(BOOL)referenced delegate:(id)delegate completionHandler:(id)handler;
+ (id)importOperationQueue;
+ (id)itemsConstrainedByAvailableDiskSpaceFromItems:(id)items additionalBytesRequired:(int64_t *)required;
+ (int64_t)diskSpaceRequiredToImportItems:(id)items;
+ (void)favoriteAssetsFromImportResults:(id)results photoLibrary:(id)library;
- (PXImportController)init;
- (PXImportController)initWithImportSource:(id)source photoLibrary:(id)library imageFormat:(unsigned __int16)format dateOrder:(int64_t)order;
- (PXImportControllerTopLevelCompletionDelegate)importCompletionDelegate;
- (id)createDataSourceManagerWithLogIdentifier:(id)identifier;
- (id)pauseChangeDeliveryForImportAssetsDataSourceManager:(id)manager withTimeout:(double)timeout identifier:(id)identifier;
- (id)selectedItems;
- (id)viewModelMapForImportAssetsDataSourceManager:(id)manager;
- (void)adoptImportSource:(id)source;
- (void)assetLoadingPowerAssertionTimerFired;
- (void)capabilitiesDidChangeForImportSource:(id)source;
- (void)completedImportRecord:(id)record;
- (void)dealloc;
- (void)deleteItems:(id)items withCompletionHandler:(id)handler;
- (void)deselectItem:(id)item;
- (void)finishDeletingItems;
- (void)finishImportingWithResults:(id)results;
- (void)handleImportSourceModifiedAssets;
- (void)importItems:(id)items configuration:(id)configuration completion:(id)completion;
- (void)importSource:(id)source didAddAssets:(id)assets;
- (void)importSource:(id)source didRemoveAssets:(id)assets;
- (void)loadAssets;
- (void)nameDidChangeForImportSource:(id)source;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)removeDataSourceManager:(id)manager;
- (void)restartTimedAssetsLoadingPowerAssertion;
- (void)resumeChangeDeliveryAndBackgroundLoadingForImportAssetsDataSourceManager:(id)manager token:(id)token;
- (void)selectItem:(id)item;
- (void)setAlreadyImportedItemsSelectable:(BOOL)selectable;
- (void)setDeletingAssets:(BOOL)assets;
- (void)setHasLoadedInitialBatchOfAssets:(BOOL)assets;
- (void)setImportingAssets:(BOOL)assets;
- (void)setLoadingContent:(BOOL)content;
- (void)setLoadingInitialBatchOfAssets:(BOOL)assets;
- (void)setSelected:(BOOL)selected forItems:(id)items;
- (void)setUserRequiredToTrustHostOnSourceDevice:(BOOL)device;
- (void)startInitialBatchOfAssetsTimerWithTimeout:(double)timeout;
- (void)stopImport;
- (void)stopTimedAssetsLoadingPowerAssertion;
@end

@implementation PXImportController

- (PXImportControllerTopLevelCompletionDelegate)importCompletionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_importCompletionDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v30 = *MEMORY[0x1E69E9840];
  if ((change & 1) != 0 && PXImportControllerSelectionManagerObserverContext == context)
  {
    selectionManager = [(PXImportController *)self selectionManager];
    selectionSnapshot = [selectionManager selectionSnapshot];

    dataSource = [selectionSnapshot dataSource];
    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
    v10 = objc_opt_new();
    if ([selectedIndexPaths count] >= 1)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __51__PXImportController_observable_didChange_context___block_invoke;
      v25[3] = &unk_1E7743210;
      v26 = dataSource;
      v27 = v10;
      v28 = selectionSnapshot;
      [selectedIndexPaths enumerateItemIndexPathsUsingBlock:v25];
    }

    v19 = selectedIndexPaths;
    v20 = dataSource;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_lastSelectedModels;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if (([v10 containsObject:{v16, v19, v20, v21}] & 1) == 0 && objc_msgSend(v16, "isSelected") && (objc_msgSend(v16, "isDeleted") & 1) == 0)
          {
            [v16 performChanges:&__block_literal_global_348];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v13);
    }

    [(PXImportController *)self setLastSelectionSnapshot:selectionSnapshot];
    v17 = [v10 copy];
    lastSelectedModels = self->_lastSelectedModels;
    self->_lastSelectedModels = v17;
  }
}

void __51__PXImportController_observable_didChange_context___block_invoke(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 32);
  v5 = a2[1];
  v13 = *a2;
  v14 = v5;
  v6 = [v4 assetReferenceAtItemIndexPath:&v13];
  v7 = [v6 asset];
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
  }

  v8 = *(a1 + 48);
  v9 = a2[1];
  v13 = *a2;
  v14 = v9;
  v10 = [v8 isIndexPathSelected:&v13];
  if (v10 != [v7 isSelected])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__PXImportController_observable_didChange_context___block_invoke_2;
    v11[3] = &__block_descriptor_33_e40_v16__0___PXMutableImportItemViewModel__8l;
    v12 = v10;
    [v7 performChanges:v11];
  }
}

- (void)assetLoadingPowerAssertionTimerFired
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = _importControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[PXImportController assetLoadingPowerAssertionTimerFired]";
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  [(PXImportController *)self stopTimedAssetsLoadingPowerAssertion];
}

- (void)stopTimedAssetsLoadingPowerAssertion
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _importControllerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[PXImportController stopTimedAssetsLoadingPowerAssertion]";
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_INFO, "%s", &v8, 0xCu);
  }

  assetLoadingPowerAssertionTimer = [(PXImportController *)self assetLoadingPowerAssertionTimer];
  isValid = [assetLoadingPowerAssertionTimer isValid];

  if (isValid)
  {
    assetLoadingPowerAssertionTimer2 = [(PXImportController *)self assetLoadingPowerAssertionTimer];
    [assetLoadingPowerAssertionTimer2 invalidate];

    [(PXImportController *)self setAssetLoadingPowerAssertionTimer:0];
    powerController = [(PXImportController *)self powerController];
    [powerController removePowerAssertionForIdentifier:-[PXImportController loadAssetsPowerAssertionIdentifier](self withReason:"loadAssetsPowerAssertionIdentifier") completion:{4, 0}];
  }
}

- (void)restartTimedAssetsLoadingPowerAssertion
{
  v14 = *MEMORY[0x1E69E9840];
  assetLoadingPowerAssertionTimer = [(PXImportController *)self assetLoadingPowerAssertionTimer];
  isValid = [assetLoadingPowerAssertionTimer isValid];

  v5 = _importControllerLog();
  v6 = v5;
  if (isValid)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v11 = "[PXImportController restartTimedAssetsLoadingPowerAssertion]";
      v12 = 2048;
      v13 = 0x4024000000000000;
      _os_log_debug_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "%s: Timer already running, resetting timeout to %.0f seconds.", buf, 0x16u);
    }

    assetLoadingPowerAssertionTimer2 = [(PXImportController *)self assetLoadingPowerAssertionTimer];
    [assetLoadingPowerAssertionTimer2 invalidate];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v11 = "[PXImportController restartTimedAssetsLoadingPowerAssertion]";
      v12 = 2048;
      v13 = 0x4024000000000000;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_INFO, "%s: Timer not running, taking assets-loading power assertion and starting timer for %.0f seconds.", buf, 0x16u);
    }

    assetLoadingPowerAssertionTimer2 = [(PXImportController *)self powerController];
    [assetLoadingPowerAssertionTimer2 addPowerAssertionForIdentifier:-[PXImportController loadAssetsPowerAssertionIdentifier](self withReason:"loadAssetsPowerAssertionIdentifier") completion:{4, 0}];
  }

  v8 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel_assetLoadingPowerAssertionTimerFired selector:0 userInfo:0 repeats:10.0];
  [(PXImportController *)self setAssetLoadingPowerAssertionTimer:v8];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PXImportController_restartTimedAssetsLoadingPowerAssertion__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __61__PXImportController_restartTimedAssetsLoadingPowerAssertion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetLoadingPowerAssertionTimer];

  if (v2)
  {
    v4 = [MEMORY[0x1E695DFD0] mainRunLoop];
    v3 = [*(a1 + 32) assetLoadingPowerAssertionTimer];
    [v4 addTimer:v3 forMode:*MEMORY[0x1E695D918]];
  }
}

uint64_t __49__PXImportController_stopObservingImportProgress__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) importProgress];
  [v2 removeObserver:*(a1 + 32) forKeyPath:@"fractionCompleted" context:PXImportProgressObservationContext];

  [*(a1 + 32) setImportProgress:0];
  v3 = *(a1 + 32);

  return [v3 sendActionProgress:0.0];
}

void __50__PXImportController_startObservingImportProgress__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 importProgress];
  [v3 fractionCompleted];
  [v2 sendActionProgress:?];

  v4 = [*(a1 + 32) importProgress];
  [v4 addObserver:*(a1 + 32) forKeyPath:@"fractionCompleted" options:0 context:PXImportProgressObservationContext];
}

void __41__PXImportController_sendActionProgress___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) importProgress];
  v12[0] = @"PXImportControllerFractionCompleted";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  v13[0] = v3;
  v12[1] = @"PXImportControllerCompletedItemCount";
  v4 = MEMORY[0x1E696AD98];
  if (v2)
  {
    v5 = [v2 completedUnitCount];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v4 numberWithLongLong:v5];
  v13[1] = v6;
  v12[2] = @"PXImportControllerTotalItemCount";
  v7 = MEMORY[0x1E696AD98];
  if (v2)
  {
    v8 = [v2 totalUnitCount];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v7 numberWithLongLong:v8];
  v13[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 postNotificationName:@"PXImportControllerProgressNotification" object:*(a1 + 32) userInfo:v10];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  v11 = objectCopy;
  if (PXImportProgressObservationContext == context)
  {
    [objectCopy fractionCompleted];
    [(PXImportController *)self sendActionProgress:?];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PXImportController;
    [(PXImportController *)&v12 observeValueForKeyPath:path ofObject:objectCopy change:change context:context];
  }
}

- (void)setAlreadyImportedItemsSelectable:(BOOL)selectable
{
  if (self->_alreadyImportedItemsSelectable != selectable)
  {
    self->_alreadyImportedItemsSelectable = selectable;
    selectionManager = [(PXImportController *)self selectionManager];
    selectionSnapshot = [selectionManager selectionSnapshot];

    dataSource = [selectionSnapshot dataSource];
    if (self->_alreadyImportedItemsSelectable)
    {
      alreadyImportedItemsSelectable = 1;
    }

    else
    {
      v8 = +[PXImportItemViewModel alreadyImportedGroupIdentifier];
      v9 = [dataSource assetCollectionForIdentifier:v8];
      if (v9)
      {
        v10 = [dataSource sectionForAssetCollection:v9];
        selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
        v12 = objc_alloc_init(off_1E77217C8);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __56__PXImportController_setAlreadyImportedItemsSelectable___block_invoke;
        v21[3] = &unk_1E7741510;
        v23 = v10;
        v13 = v12;
        v22 = v13;
        [selectedIndexPaths enumerateAllIndexPathsUsingBlock:v21];
        selectionManager2 = [(PXImportController *)self selectionManager];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __56__PXImportController_setAlreadyImportedItemsSelectable___block_invoke_2;
        v19[3] = &unk_1E7744008;
        v20 = v13;
        v15 = v13;
        [selectionManager2 performChanges:v19];
      }

      alreadyImportedItemsSelectable = self->_alreadyImportedItemsSelectable;
    }

    dataSourceManager = [(PXImportController *)self dataSourceManager];
    [dataSourceManager setAlreadyImportedItemsSelectable:alreadyImportedItemsSelectable];

    otherDataSourceManagersQueue = [(PXImportController *)self otherDataSourceManagersQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__PXImportController_setAlreadyImportedItemsSelectable___block_invoke_3;
    v18[3] = &unk_1E774C648;
    v18[4] = self;
    dispatch_sync(otherDataSourceManagersQueue, v18);
  }
}

uint64_t __56__PXImportController_setAlreadyImportedItemsSelectable___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(a2 + 8) != *(result + 40))
  {
    v7 = v2;
    v8 = v3;
    v4 = *(result + 32);
    v5 = *(a2 + 16);
    v6[0] = *a2;
    v6[1] = v5;
    return [v4 addIndexPath:v6];
  }

  return result;
}

void __56__PXImportController_setAlreadyImportedItemsSelectable___block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) otherDataSourceManagers];
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

        [*(*(&v7 + 1) + 8 * v6++) setAlreadyImportedItemsSelectable:*(*(a1 + 32) + 110)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)selectedItems
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  selectionManager = [(PXImportController *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__187529;
  v17 = __Block_byref_object_dispose__187530;
  v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(selectedIndexPaths, "count")}];
  dataSource = [selectionSnapshot dataSource];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__PXImportController_selectedItems__block_invoke;
  v10[3] = &unk_1E77414E8;
  v7 = dataSource;
  v11 = v7;
  v12 = &v13;
  [selectedIndexPaths enumerateAllIndexPathsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __35__PXImportController_selectedItems__block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = [v3 assetAtItemIndexPath:v6];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
}

- (void)deselectItem:(id)item
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  selectionManager = [(PXImportController *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  dataSource = [selectionSnapshot dataSource];
  v8 = dataSource;
  v18 = 0u;
  v19 = 0u;
  if (dataSource)
  {
    [dataSource itemIndexPathForItem:itemCopy];
  }

  *buf = v18;
  *&buf[16] = v19;
  if ([selectionSnapshot isIndexPathSelected:buf])
  {
    selectionManager2 = [(PXImportController *)self selectionManager];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __35__PXImportController_deselectItem___block_invoke;
    v15[3] = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
    v16 = v18;
    v17 = v19;
    [selectionManager2 performChanges:v15];

    selectionManager3 = [(PXImportController *)self selectionManager];
    selectionSnapshot2 = [selectionManager3 selectionSnapshot];

    v12 = _importControllerLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      selectedIndexPaths = [selectionSnapshot2 selectedIndexPaths];
      v14 = [selectedIndexPaths count];
      *buf = 136315650;
      *&buf[4] = "[PXImportController deselectItem:]";
      *&buf[12] = 2112;
      *&buf[14] = itemCopy;
      *&buf[22] = 2048;
      *&buf[24] = v14;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_INFO, "%s: %@ (selected count %lu)", buf, 0x20u);
    }
  }
}

uint64_t __35__PXImportController_deselectItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setSelectedState:0 forIndexPath:v4];
}

- (void)selectItem:(id)item
{
  v21 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([itemCopy isSelectable])
  {
    selectionManager = [(PXImportController *)self selectionManager];
    selectionSnapshot = [selectionManager selectionSnapshot];

    dataSource = [selectionSnapshot dataSource];
    v8 = dataSource;
    v18 = 0u;
    v19 = 0u;
    if (dataSource)
    {
      [dataSource itemIndexPathForItem:itemCopy];
    }

    *buf = v18;
    *&buf[16] = v19;
    if (([selectionSnapshot isIndexPathSelected:buf] & 1) == 0)
    {
      selectionManager2 = [(PXImportController *)self selectionManager];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __33__PXImportController_selectItem___block_invoke;
      v15[3] = &__block_descriptor_64_e37_v16__0___PXMutableSelectionManager__8l;
      v16 = v18;
      v17 = v19;
      [selectionManager2 performChanges:v15];

      selectionManager3 = [(PXImportController *)self selectionManager];
      selectionSnapshot2 = [selectionManager3 selectionSnapshot];

      v12 = _importControllerLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        selectedIndexPaths = [selectionSnapshot2 selectedIndexPaths];
        v14 = [selectedIndexPaths count];
        *buf = 136315650;
        *&buf[4] = "[PXImportController selectItem:]";
        *&buf[12] = 2112;
        *&buf[14] = itemCopy;
        *&buf[22] = 2048;
        *&buf[24] = v14;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_INFO, "%s: %@ (selected count %lu)", buf, 0x20u);
      }
    }
  }
}

uint64_t __33__PXImportController_selectItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  v4[0] = *(a1 + 32);
  v4[1] = v2;
  return [a2 setSelectedState:1 forIndexPath:v4];
}

- (void)setSelected:(BOOL)selected forItems:(id)items
{
  selectedCopy = selected;
  v35 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  selectionManager = [(PXImportController *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  dataSource = [selectionSnapshot dataSource];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v11 = [selectedIndexPaths mutableCopy];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = itemsCopy;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        memset(buf, 0, 32);
        if (dataSource)
        {
          [dataSource itemIndexPathForItem:v17];
        }

        v28[0] = *buf;
        v28[1] = *&buf[16];
        if (selectedCopy)
        {
          [v11 addIndexPath:v28];
        }

        else
        {
          [v11 removeIndexPath:v28];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v14);
  }

  selectionManager2 = [(PXImportController *)self selectionManager];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __43__PXImportController_setSelected_forItems___block_invoke;
  v26[3] = &unk_1E7744008;
  v27 = v11;
  v19 = v11;
  [selectionManager2 performChanges:v26];

  selectionManager3 = [(PXImportController *)self selectionManager];
  selectionSnapshot2 = [selectionManager3 selectionSnapshot];

  v22 = _importControllerLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = [v12 count];
    selectedIndexPaths2 = [selectionSnapshot2 selectedIndexPaths];
    v25 = [selectedIndexPaths2 count];
    *buf = 136315906;
    *&buf[4] = "[PXImportController setSelected:forItems:]";
    *&buf[12] = 1024;
    *&buf[14] = selectedCopy;
    *&buf[18] = 2048;
    *&buf[20] = v23;
    *&buf[28] = 2048;
    *&buf[30] = v25;
    _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_INFO, "%s: Selected: %d (%lu models) (selected count %lu)", buf, 0x26u);
  }
}

- (void)finishDeletingItems
{
  deleteAction = [(PXImportController *)self deleteAction];
  didSucceed = [deleteAction didSucceed];
  error = [deleteAction error];
  deleteCompletionHandler = [(PXImportController *)self deleteCompletionHandler];
  v6 = [deleteCompletionHandler copy];

  [(PXImportController *)self setDeleteCompletionHandler:0];
  [(PXImportController *)self setDeleteAction:0];
  [(PXImportController *)self performChanges:&__block_literal_global_331];
  powerController = [(PXImportController *)self powerController];
  [powerController removePowerAssertionForIdentifier:-[PXImportController deleteAssetsPowerAssertionIdentifier](self withReason:"deleteAssetsPowerAssertionIdentifier") completion:{2, 0}];

  if (v6)
  {
    (v6)[2](v6, didSucceed, error);
  }

  [(PXImportMediaLoadingCoordinator *)self->_mediaLoadingCoordinator setPaused:0];
}

- (void)deleteItems:(id)items withCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  handlerCopy = handler;
  v9 = _importControllerLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[PXImportController deleteItems:withCompletionHandler:]";
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  deleteAction = [(PXImportController *)self deleteAction];
  v11 = deleteAction == 0;

  if (!v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportController.m" lineNumber:809 description:@"Attempted to delete import items while another delete is in progress"];
  }

  v12 = [PXImportItemViewModel importAssetsFromModels:itemsCopy];
  v13 = [[PXImportDeleteAction alloc] initWithAssets:v12];
  [(PXImportDeleteAction *)v13 setImportController:self];
  [(PXImportController *)self setDeleteCompletionHandler:handlerCopy];
  objc_initWeak(buf, self);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56__PXImportController_deleteItems_withCompletionHandler___block_invoke;
  v25[3] = &unk_1E774C318;
  objc_copyWeak(&v26, buf);
  [(PXImportDeleteAction *)v13 setCompletionBlock:v25];
  [(PXImportController *)self setDeleteAction:v13];
  [(PXImportController *)self performChanges:&__block_literal_global_329_187540];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = itemsCopy;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v15)
  {
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [(PXImportController *)self deselectItem:*(*(&v21 + 1) + 8 * v17++), v21];
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v15);
  }

  powerController = [(PXImportController *)self powerController];
  [powerController addPowerAssertionForIdentifier:-[PXImportController deleteAssetsPowerAssertionIdentifier](self withReason:"deleteAssetsPowerAssertionIdentifier") completion:{2, 0}];

  importOperationQueue = [objc_opt_class() importOperationQueue];
  [importOperationQueue addOperation:v13];

  [(PXImportMediaLoadingCoordinator *)self->_mediaLoadingCoordinator setPaused:1];
  objc_destroyWeak(&v26);
  objc_destroyWeak(buf);
}

void __56__PXImportController_deleteItems_withCompletionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _importControllerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[PXImportController deleteItems:withCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "%s: Delete operation done", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PXImportController_deleteItems_withCompletionHandler___block_invoke_327;
  block[3] = &unk_1E774C318;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v4);
}

void __56__PXImportController_deleteItems_withCompletionHandler___block_invoke_327(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishDeletingItems];
}

- (void)setDeletingAssets:(BOOL)assets
{
  if (self->_deletingAssets != assets)
  {
    self->_deletingAssets = assets;
    [(PXImportController *)self signalChange:4];
  }
}

- (void)completedImportRecord:(id)record
{
  v15 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v5 = _importDataLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    importAsset = [recordCopy importAsset];
    fileName = [importAsset fileName];
    *buf = 136315394;
    v12 = "[PXImportController completedImportRecord:]";
    v13 = 2112;
    v14 = fileName;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_INFO, "%s: import complete for %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__PXImportController_completedImportRecord___block_invoke;
  v9[3] = &unk_1E774C620;
  v9[4] = self;
  v10 = recordCopy;
  v8 = recordCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __44__PXImportController_completedImportRecord___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) dataSourceManager];
  v3 = [v2 unfilteredDataSource];

  v4 = [*(a1 + 40) importAsset];
  v5 = [v4 uuid];
  v6 = [v3 itemForImportAssetUuid:v5];

  if (v6)
  {
    [*(a1 + 32) deselectItem:v6];
    v7 = [*(a1 + 40) exceptions];
    v8 = [v7 count];

    v9 = *(*(a1 + 32) + 176);
    if (v8)
    {
      v10 = [v9 errorItems];

      if (!v10)
      {
        v11 = objc_opt_new();
        [*(*(a1 + 32) + 176) setErrorItems:v11];
      }

      v12 = [*(*(a1 + 32) + 176) errorItems];
      [v12 addObject:v6];

      v13 = &__block_literal_global_320_187548;
    }

    else
    {
      v15 = [v9 importedItems];

      if (!v15)
      {
        v16 = objc_opt_new();
        [*(*(a1 + 32) + 176) setImportedItems:v16];
      }

      v17 = [*(*(a1 + 32) + 176) importedItems];
      [v17 addObject:v6];

      v18 = _importDataLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v23 = "[PXImportController completedImportRecord:]_block_invoke";
        _os_log_debug_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEBUG, "%s: ====   TBD:  move imported items into the top section? ===", buf, 0xCu);
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __44__PXImportController_completedImportRecord___block_invoke_321;
      v21[3] = &unk_1E77414C0;
      v21[4] = *(a1 + 32);
      v13 = v21;
    }

    [v6 performChanges:v13];
  }

  else
  {
    v14 = _importDataLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v19 = [*(a1 + 40) importAsset];
      v20 = [v19 fileName];
      *buf = 136315394;
      v23 = "[PXImportController completedImportRecord:]_block_invoke_2";
      v24 = 2112;
      v25 = v20;
      _os_log_debug_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEBUG, "%s: Model not found in data source for import item %@", buf, 0x16u);
    }
  }
}

void __44__PXImportController_completedImportRecord___block_invoke_321(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 176);
  v4 = a2;
  v3 = [v2 startDate];
  [v4 setImportDate:v3];

  [v4 setState:2];
}

- (void)finishImportingWithResults:(id)results
{
  v48 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v5 = _importControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v47 = "[PXImportController finishImportingWithResults:]";
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v33 = "[PXImportController finishImportingWithResults:]";
    _PFAssertContinueHandler();
  }

  [(PXImportController *)self stopObservingImportProgress];
  importSessionInfo = [(PXImportController *)self importSessionInfo];
  [importSessionInfo setImportComplete:1];

  date = [MEMORY[0x1E695DF00] date];
  importSessionInfo2 = [(PXImportController *)self importSessionInfo];
  [importSessionInfo2 setEndDate:date];

  v9 = MEMORY[0x1E695DFA8];
  importSessionInfo3 = [(PXImportController *)self importSessionInfo];
  itemsToImport = [importSessionInfo3 itemsToImport];
  v12 = [v9 setWithCapacity:{objc_msgSend(itemsToImport, "count")}];

  importSessionInfo4 = [(PXImportController *)self importSessionInfo];
  errorItems = [importSessionInfo4 errorItems];
  [v12 addObjectsFromArray:errorItems];

  importSessionInfo5 = [(PXImportController *)self importSessionInfo];
  importedItems = [importSessionInfo5 importedItems];
  [v12 addObjectsFromArray:importedItems];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = v12;
  v18 = [v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v18)
  {
    v19 = *v41;
    do
    {
      v20 = 0;
      do
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v17);
        }

        [(PXImportController *)self deselectItem:*(*(&v40 + 1) + 8 * v20++)];
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v18);
  }

  v21 = MEMORY[0x1E695DFA8];
  importSessionInfo6 = [(PXImportController *)self importSessionInfo];
  itemsToImport2 = [importSessionInfo6 itemsToImport];
  v24 = [v21 setWithArray:itemsToImport2];

  [v24 minusSet:v17];
  if ([v24 count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v26)
    {
      v27 = *v37;
      do
      {
        v28 = 0;
        do
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v36 + 1) + 8 * v28++) performChanges:&__block_literal_global_316_187558];
        }

        while (v26 != v28);
        v26 = [v25 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v26);
    }
  }

  importCompletionHandler = [(PXImportController *)self importCompletionHandler];
  importSessionInfo7 = [(PXImportController *)self importSessionInfo];
  [(PXImportController *)self setImportCompletionHandler:0];
  [(PXImportController *)self setImportSessionInfo:0];
  [(PXImportController *)self setImportProgress:0];
  [(PXImportController *)self performChanges:&__block_literal_global_318];
  if (importCompletionHandler)
  {
    (importCompletionHandler)[2](importCompletionHandler, importSessionInfo7, resultsCopy);
  }

  objc_initWeak(buf, self);
  importCompletionDelegate = [(PXImportController *)self importCompletionDelegate];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __49__PXImportController_finishImportingWithResults___block_invoke_3;
  v34[3] = &unk_1E774C318;
  objc_copyWeak(&v35, buf);
  [importCompletionDelegate importController:self didCompleteImportWithImportSession:importSessionInfo7 results:resultsCopy completion:v34];

  mediaLoadingCoordinator = [(PXImportController *)self mediaLoadingCoordinator];
  [mediaLoadingCoordinator setPaused:0];

  objc_destroyWeak(&v35);
  objc_destroyWeak(buf);
}

void __49__PXImportController_finishImportingWithResults___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained powerController];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 removePowerAssertionForIdentifier:objc_msgSend(v3 withReason:"importAssetsPowerAssertionIdentifier") completion:{1, 0}];
}

- (void)stopImport
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _importControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[PXImportController stopImport]";
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  if (![(PXImportController *)self isImportingAssets])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportController.m" lineNumber:685 description:@"Attempted to stop import while there was no active import."];
  }

  [(PXImportSessionInfo *)self->_importSessionInfo setImportStopped:1];
  importProgress = [(PXImportController *)self importProgress];
  [importProgress cancel];

  mediaLoadingCoordinator = [(PXImportController *)self mediaLoadingCoordinator];
  [mediaLoadingCoordinator setPaused:0];
}

- (void)importItems:(id)items configuration:(id)configuration completion:(id)completion
{
  v49 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  configurationCopy = configuration;
  completionCopy = completion;
  val = self;
  importSessionInfo = [(PXImportController *)self importSessionInfo];

  if (importSessionInfo)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportController.m" lineNumber:629 description:{@"%s: There is an import already in progress.", "-[PXImportController importItems:configuration:completion:]"}];
  }

  importProgress = [(PXImportController *)self importProgress];

  if (importProgress)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXImportController.m" lineNumber:630 description:{@"%s: Import progress should be nil when import is started.", "-[PXImportController importItems:configuration:completion:]"}];
  }

  if (![itemsCopy count])
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXImportController.m" lineNumber:631 description:{@"%s: There are no items to import.", "-[PXImportController importItems:configuration:completion:]"}];
  }

  v12 = _importControllerLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v45 = "[PXImportController importItems:configuration:completion:]";
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v13 = objc_alloc_init(PXImportSessionInfo);
  [(PXImportController *)self setImportSessionInfo:v13];

  date = [MEMORY[0x1E695DF00] date];
  importSessionInfo2 = [(PXImportController *)self importSessionInfo];
  [importSessionInfo2 setStartDate:date];

  importSessionInfo3 = [(PXImportController *)self importSessionInfo];
  [importSessionInfo3 setItemsToImport:itemsCopy];

  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = itemsCopy;
  v19 = [v18 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v19)
  {
    v20 = *v41;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v40 + 1) + 8 * i);
        [v22 performChanges:&__block_literal_global_306_187571];
        importAsset = [v22 importAsset];
        if (importAsset)
        {
          [v17 addObject:importAsset];
        }

        else
        {
          v24 = _importDataLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v45 = "[PXImportController importItems:configuration:completion:]";
            v46 = 2112;
            v47 = v22;
            _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_INFO, "%s: Warning: view model missing import asset: %@", buf, 0x16u);
          }
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v19);
  }

  [(PXImportController *)val setImportCompletionHandler:completionCopy];
  if (configurationCopy)
  {
    v25 = objc_alloc_init(MEMORY[0x1E6978888]);
    configurationCopy[2](configurationCopy, v25);
  }

  else
  {
    v25 = 0;
  }

  powerController = [(PXImportController *)val powerController];
  [powerController addPowerAssertionForIdentifier:-[PXImportController importAssetsPowerAssertionIdentifier](val withReason:"importAssetsPowerAssertionIdentifier") completion:{1, 0}];

  [(PXImportMediaLoadingCoordinator *)val->_mediaLoadingCoordinator setPaused:1];
  objc_initWeak(buf, val);
  mEMORY[0x1E6978878] = [MEMORY[0x1E6978878] sharedInstance];
  importSource = [(PXImportController *)val importSource];
  photoLibrary = [(PXImportController *)val photoLibrary];
  v39 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __59__PXImportController_importItems_configuration_completion___block_invoke_307;
  v37[3] = &unk_1E7741498;
  objc_copyWeak(&v38, buf);
  [mEMORY[0x1E6978878] importAssets:v17 fromImportSource:importSource intoLibrary:photoLibrary withOptions:v25 progress:&v39 delegate:val performanceDelegate:0 atEnd:v37];
  v30 = v39;

  [(PXImportController *)val setImportProgress:v30];
  [(PXImportController *)val startObservingImportProgress];
  [(PXImportController *)val performChangesOnMainQueue:&__block_literal_global_311_187575];
  objc_destroyWeak(&v38);

  objc_destroyWeak(buf);
}

void __59__PXImportController_importItems_configuration_completion___block_invoke_307(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v7, (a1 + 32));
  v5;
  px_dispatch_on_main_queue();
}

void __59__PXImportController_importItems_configuration_completion___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _importControllerLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[PXImportController importItems:configuration:completion:]_block_invoke_2";
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "%s: PHImportController completion block called", &v4, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained finishImportingWithResults:*(a1 + 32)];
}

- (void)setImportingAssets:(BOOL)assets
{
  if (self->_importingAssets != assets)
  {
    self->_importingAssets = assets;
    [(PXImportController *)self signalChange:2];
  }
}

- (void)setUserRequiredToTrustHostOnSourceDevice:(BOOL)device
{
  if (self->_userRequiredToTrustHostOnSourceDevice != device)
  {
    self->_userRequiredToTrustHostOnSourceDevice = device;
    [(PXImportController *)self signalChange:8];
  }
}

- (void)resumeChangeDeliveryAndBackgroundLoadingForImportAssetsDataSourceManager:(id)manager token:(id)token
{
  tokenCopy = token;
  photoLibrary = [(PXImportController *)self photoLibrary];
  [photoLibrary px_endPausingChanges:tokenCopy];
}

- (id)pauseChangeDeliveryForImportAssetsDataSourceManager:(id)manager withTimeout:(double)timeout identifier:(id)identifier
{
  identifierCopy = identifier;
  photoLibrary = [(PXImportController *)self photoLibrary];
  v9 = [photoLibrary px_beginPausingChangesWithTimeout:identifierCopy identifier:timeout];

  return v9;
}

- (id)viewModelMapForImportAssetsDataSourceManager:(id)manager
{
  managerCopy = manager;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__187529;
  v13 = __Block_byref_object_dispose__187530;
  v14 = 0;
  sharedViewModelsUpdateQueue = [(PXImportController *)self sharedViewModelsUpdateQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__PXImportController_viewModelMapForImportAssetsDataSourceManager___block_invoke;
  v8[3] = &unk_1E7749A28;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(sharedViewModelsUpdateQueue, v8);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __67__PXImportController_viewModelMapForImportAssetsDataSourceManager___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) sharedViewModelsById];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeDataSourceManager:(id)manager
{
  managerCopy = manager;
  otherDataSourceManagersQueue = [(PXImportController *)self otherDataSourceManagersQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PXImportController_removeDataSourceManager___block_invoke;
  v7[3] = &unk_1E774C620;
  v8 = managerCopy;
  selfCopy = self;
  v6 = managerCopy;
  dispatch_sync(otherDataSourceManagersQueue, v7);
}

void __46__PXImportController_removeDataSourceManager___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dataSourceManager];

  if (v2 == v3)
  {
    _PFAssertFailHandler();
    goto LABEL_7;
  }

  v4 = [*(a1 + 40) otherDataSourceManagers];
  v5 = [v4 member:*(a1 + 32)];

  if (!v5)
  {
LABEL_7:
    v6 = _PFAssertFailHandler();
    [(PXImportController *)v6 createDataSourceManagerWithLogIdentifier:v7, v8];
    return;
  }

  v9 = [*(a1 + 40) otherDataSourceManagers];
  [v9 removeObject:*(a1 + 32)];
}

- (id)createDataSourceManagerWithLogIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [PXImportAssetsDataSourceManager alloc];
  dataSourceManager = [(PXImportController *)self dataSourceManager];
  v7 = [(PXImportAssetsDataSourceManager *)v5 initWithAssetsFromDataSourceManager:dataSourceManager delegate:self logIdentifier:identifierCopy];

  otherDataSourceManagersQueue = [(PXImportController *)self otherDataSourceManagersQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__PXImportController_createDataSourceManagerWithLogIdentifier___block_invoke;
  v13[3] = &unk_1E774C620;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  dispatch_sync(otherDataSourceManagersQueue, v13);

  v10 = v14;
  v11 = v9;

  return v9;
}

void __63__PXImportController_createDataSourceManagerWithLogIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) otherDataSourceManagers];
  [v2 addObject:*(a1 + 40)];
}

- (void)nameDidChangeForImportSource:(id)source
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__PXImportController_nameDidChangeForImportSource___block_invoke;
  v3[3] = &unk_1E7741450;
  v3[4] = self;
  [(PXImportController *)self performChangesOnMainQueue:v3];
}

- (void)capabilitiesDidChangeForImportSource:(id)source
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__PXImportController_capabilitiesDidChangeForImportSource___block_invoke;
  v3[3] = &unk_1E7741450;
  v3[4] = self;
  [(PXImportController *)self performChangesOnMainQueue:v3];
}

- (void)importSource:(id)source didRemoveAssets:(id)assets
{
  v45 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v6 = +[PXImportSettings sharedInstance];
  simulateEmptyImportSource = [v6 simulateEmptyImportSource];

  if ((simulateEmptyImportSource & 1) == 0)
  {
    v8 = _importDataLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v42 = "[PXImportController importSource:didRemoveAssets:]";
      v43 = 2048;
      v44 = [assetsCopy count];
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "%s: Did remove %tu assets", buf, 0x16u);
    }

    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(assetsCopy, "count")}];
    selfCopy = self;
    dataSourceManager = [(PXImportController *)self dataSourceManager];
    dataSource = [dataSourceManager dataSource];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = assetsCopy;
    v12 = assetsCopy;
    v13 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      do
      {
        v16 = 0;
        do
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(v12);
          }

          uuid = [*(*(&v36 + 1) + 8 * v16) uuid];
          v18 = [dataSource itemForImportAssetUuid:uuid];

          if (v18)
          {
            [v9 addObject:v18];
          }

          else
          {
            v19 = _importDataLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v42 = "[PXImportController importSource:didRemoveAssets:]";
              _os_log_debug_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEBUG, "%s: Unable to find view model for removed asset", buf, 0xCu);
            }
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v14);
    }

    [(PXImportController *)selfCopy handleImportSourceModifiedAssets];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PXImportController_importSource_didRemoveAssets___block_invoke;
    block[3] = &unk_1E774C620;
    v20 = v9;
    v34 = v20;
    v35 = selfCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    dataSourceManager2 = [(PXImportController *)selfCopy dataSourceManager];
    [dataSourceManager2 removeAssets:v12];

    otherDataSourceManagersQueue = [(PXImportController *)selfCopy otherDataSourceManagersQueue];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __51__PXImportController_importSource_didRemoveAssets___block_invoke_2;
    v31[3] = &unk_1E774C620;
    v31[4] = selfCopy;
    v23 = v12;
    v32 = v23;
    dispatch_sync(otherDataSourceManagersQueue, v31);

    sharedViewModelsUpdateQueue = [(PXImportController *)selfCopy sharedViewModelsUpdateQueue];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __51__PXImportController_importSource_didRemoveAssets___block_invoke_3;
    v28[3] = &unk_1E774C620;
    v29 = v23;
    v30 = selfCopy;
    dispatch_sync(sharedViewModelsUpdateQueue, v28);

    if ([v20 count])
    {
      deleteAction = [(PXImportController *)selfCopy deleteAction];
      [deleteAction didRemoveAssets:v20];
    }

    [(PXImportController *)selfCopy restartTimedAssetsLoadingPowerAssertion];
    [(PXImportController *)selfCopy performChangesOnMainQueue:&__block_literal_global_282_187598];

    assetsCopy = v27;
  }
}

void __51__PXImportController_importSource_didRemoveAssets___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
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

        [*(a1 + 40) deselectItem:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __51__PXImportController_importSource_didRemoveAssets___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) otherDataSourceManagers];
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

        [*(*(&v7 + 1) + 8 * v6++) removeAssets:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void __51__PXImportController_importSource_didRemoveAssets___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [*(a1 + 40) sharedViewModelsById];
        v9 = [v7 uuid];
        [v8 removeObjectForKey:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (void)importSource:(id)source didAddAssets:(id)assets
{
  assetsCopy = assets;
  v6 = +[PXImportSettings sharedInstance];
  simulateEmptyImportSource = [v6 simulateEmptyImportSource];

  if ((simulateEmptyImportSource & 1) == 0)
  {
    sharedViewModelsUpdateQueue = [(PXImportController *)self sharedViewModelsUpdateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__PXImportController_importSource_didAddAssets___block_invoke;
    block[3] = &unk_1E774C620;
    v9 = assetsCopy;
    v19 = v9;
    selfCopy = self;
    dispatch_sync(sharedViewModelsUpdateQueue, block);

    [(PXImportController *)self handleImportSourceModifiedAssets];
    dataSourceManager = [(PXImportController *)self dataSourceManager];
    [dataSourceManager addAssets:v9];

    otherDataSourceManagersQueue = [(PXImportController *)self otherDataSourceManagersQueue];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __48__PXImportController_importSource_didAddAssets___block_invoke_2;
    v15 = &unk_1E774C620;
    selfCopy2 = self;
    v17 = v9;
    dispatch_sync(otherDataSourceManagersQueue, &v12);

    [(PXImportController *)self restartTimedAssetsLoadingPowerAssertion:v12];
    [(PXImportController *)self performChangesOnMainQueue:&__block_literal_global_280_187600];
  }
}

void __48__PXImportController_importSource_didAddAssets___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [*(a1 + 40) sharedViewModelsById];
        v9 = [v7 uuid];
        v10 = [v8 objectForKeyedSubscript:v9];

        if (!v10)
        {
          v10 = [[PXImportItemViewModel alloc] initWithImportAsset:v7];
          v11 = [*(a1 + 40) sharedViewModelsById];
          v12 = [v7 uuid];
          [v11 setObject:v10 forKeyedSubscript:v12];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void __48__PXImportController_importSource_didAddAssets___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) otherDataSourceManagers];
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

        [*(*(&v7 + 1) + 8 * v6++) addAssets:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)startInitialBatchOfAssetsTimerWithTimeout:(double)timeout
{
  initialBatchOfAssetsTimer = [(PXImportController *)self initialBatchOfAssetsTimer];
  isValid = [initialBatchOfAssetsTimer isValid];

  if (isValid)
  {
    initialBatchOfAssetsTimer2 = [(PXImportController *)self initialBatchOfAssetsTimer];
    [initialBatchOfAssetsTimer2 invalidate];
  }

  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E695DFF0];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __64__PXImportController_startInitialBatchOfAssetsTimerWithTimeout___block_invoke;
  v13 = &unk_1E7747228;
  objc_copyWeak(&v14, &location);
  v9 = [v8 scheduledTimerWithTimeInterval:0 repeats:&v10 block:timeout];
  [(PXImportController *)self setInitialBatchOfAssetsTimer:v9, v10, v11, v12, v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __64__PXImportController_startInitialBatchOfAssetsTimerWithTimeout___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _importControllerLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Initial batch of assets have been loaded.", v7, 2u);
  }

  [v3 invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setInitialBatchOfAssetsTimer:0];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 performChangesOnMainQueue:&__block_literal_global_276_187603];
}

void __64__PXImportController_startInitialBatchOfAssetsTimerWithTimeout___block_invoke_274(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setLoadingInitialBatchOfAssets:0];
  [v2 setHasLoadedInitialBatchOfAssets:1];
}

- (void)handleImportSourceModifiedAssets
{
  [(PXImportController *)self setHasReceivedImportSourceAssetChanges:1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PXImportController_handleImportSourceModifiedAssets__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __54__PXImportController_handleImportSourceModifiedAssets__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) hasLoadedInitialBatchOfAssets];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) performChanges:&__block_literal_global_272_187605];
    v3 = *(a1 + 32);

    return [v3 startInitialBatchOfAssetsTimerWithTimeout:1.5];
  }

  return result;
}

- (void)loadAssets
{
  v26 = *MEMORY[0x1E69E9840];
  importSource = [(PXImportController *)self importSource];

  if (!importSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = NSStringFromSelector(sel_adoptImportSource_);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportController.m" lineNumber:345 description:{@"%@ was asked to load assets with a nil import source. Call %@ first to set an import source.", self, v21}];
  }

  v5 = _importControllerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[PXImportController loadAssets]";
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "%s: start", buf, 0xCu);
  }

  if (![(PXImportController *)self hasLoadedAssets])
  {
    [(PXImportController *)self performChangesOnMainQueue:&__block_literal_global_264_187610];
    dateOrder = [(PXImportController *)self dateOrder];
    v7 = +[PXImportSettings sharedInstance];
    assetEnumerationBehavior = [v7 assetEnumerationBehavior];

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __32__PXImportController_loadAssets__block_invoke_2;
    aBlock[3] = &unk_1E7741428;
    objc_copyWeak(&v23, buf);
    aBlock[4] = self;
    v9 = _Block_copy(aBlock);
    +[PXImportSettings sharedInstance];
    if (assetEnumerationBehavior)
      v10 = {;
      assetEnumerationBatchSize = [v10 assetEnumerationBatchSize];

      importSource = self->_importSource;
      photoLibrary = [(PXImportController *)self photoLibrary];
      v14 = [(PHImportSource *)importSource loadAssetsForLibrary:photoLibrary allowDuplicates:0 order:dateOrder batchSize:assetEnumerationBatchSize atEnd:v9];
    }

    else
      v15 = {;
      [v15 assetEnumerationBatchInterval];
      v17 = v16;

      v18 = self->_importSource;
      photoLibrary = [(PXImportController *)self photoLibrary];
      v19 = [(PHImportSource *)v18 loadAssetsForLibrary:photoLibrary allowDuplicates:0 order:dateOrder batchInterval:v9 atEnd:v17];
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

void __32__PXImportController_loadAssets__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _importControllerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[PXImportController loadAssets]_block_invoke_2";
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "%s: done", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setHasLoadedAssets:1];

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 mediaLoadingCoordinator];
  [v10 setPaused:0];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __32__PXImportController_loadAssets__block_invoke_266;
  v14[3] = &unk_1E7748228;
  objc_copyWeak(&v18, (a1 + 40));
  v11 = *(a1 + 32);
  v15 = v6;
  v16 = v11;
  v17 = v5;
  v12 = v5;
  v13 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v14);

  objc_destroyWeak(&v18);
}

void __32__PXImportController_loadAssets__block_invoke_266(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (([WeakRetained hasReceivedImportSourceAssetChanges] & 1) == 0)
  {
    v3 = objc_loadWeakRetained((a1 + 56));
    v4 = [v3 initialBatchOfAssetsTimer];

    if (v4)
    {
      goto LABEL_5;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained startInitialBatchOfAssetsTimerWithTimeout:5.0];
  }

LABEL_5:
  v5 = objc_loadWeakRetained((a1 + 56));
  [v5 performChanges:&__block_literal_global_269_187613];

  if ([*(a1 + 32) count])
  {
    v6 = _importControllerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543362;
      v10 = v8;
      _os_log_error_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Exceptions during asset loading: %{public}@", &v9, 0xCu);
    }

    v7 = [*(a1 + 40) importCompletionDelegate];
    [v7 importController:*(a1 + 40) didLoadAssets:*(a1 + 48) exceptions:*(a1 + 32)];
  }
}

void __32__PXImportController_loadAssets__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setLoadingContent:1];
  [v2 setLoadingInitialBatchOfAssets:1];
}

- (void)setLoadingInitialBatchOfAssets:(BOOL)assets
{
  if (self->_loadingInitialBatchOfAssets != assets)
  {
    self->_loadingInitialBatchOfAssets = assets;
    [(PXImportController *)self signalChange:32];
  }
}

- (void)setHasLoadedInitialBatchOfAssets:(BOOL)assets
{
  if (self->_hasLoadedInitialBatchOfAssets != assets)
  {
    self->_hasLoadedInitialBatchOfAssets = assets;
    [(PXImportController *)self signalChange:16];
  }
}

- (void)setLoadingContent:(BOOL)content
{
  if (self->_loadingContent != content)
  {
    self->_loadingContent = content;
    [(PXImportController *)self signalChange:1];
  }
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v5 = "[PXImportController performChanges:]";
    _PFAssertContinueHandler();
  }

  v6.receiver = self;
  v6.super_class = PXImportController;
  [(PXImportController *)&v6 performChanges:changesCopy, v5];
}

- (void)dealloc
{
  [(NSTimer *)self->_initialBatchOfAssetsTimer invalidate];
  initialBatchOfAssetsTimer = self->_initialBatchOfAssetsTimer;
  self->_initialBatchOfAssetsTimer = 0;

  v4.receiver = self;
  v4.super_class = PXImportController;
  [(PXImportController *)&v4 dealloc];
}

void __30__PXImportController_shutdown__block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopObservingImportProgress];
  [*(a1 + 32) stopTimedAssetsLoadingPowerAssertion];
  [*(a1 + 32) performChanges:&__block_literal_global_187621];
  [*(*(a1 + 32) + 216) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 216);
  *(v2 + 216) = 0;

  [*(*(a1 + 32) + 296) shutdown];
  v4 = *(a1 + 32);
  v5 = *(v4 + 296);
  *(v4 + 296) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 160);
  *(v6 + 160) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 272);
  *(v8 + 272) = 0;
}

void __30__PXImportController_shutdown__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setHasLoadedInitialBatchOfAssets:0];
  [v2 setLoadingInitialBatchOfAssets:0];
}

- (void)adoptImportSource:(id)source
{
  sourceCopy = source;
  importSource = self->_importSource;
  if (importSource != sourceCopy)
  {
    v8 = sourceCopy;
    [(PHImportSource *)importSource removeImportSourceObserver:self];
    objc_storeStrong(&self->_importSource, source);
    assets = [(PHImportSource *)v8 assets];
    [(PXImportController *)self importSource:v8 didAddAssets:assets];

    [(PHImportSource *)v8 addImportSourceObserver:self];
    sourceCopy = v8;
  }
}

- (PXImportController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportController.m" lineNumber:152 description:{@"%s is not available as initializer", "-[PXImportController init]"}];

  abort();
}

- (PXImportController)initWithImportSource:(id)source photoLibrary:(id)library imageFormat:(unsigned __int16)format dateOrder:(int64_t)order
{
  formatCopy = format;
  sourceCopy = source;
  libraryCopy = library;
  v45.receiver = self;
  v45.super_class = PXImportController;
  v13 = [(PXImportController *)&v45 init];
  v14 = v13;
  if (v13)
  {
    v13->_dateOrder = order;
    objc_storeStrong(&v13->_importSource, source);
    [(PHImportSource *)v14->_importSource addImportSourceObserver:v14];
    objc_storeStrong(&v14->_photoLibrary, library);
    v14->_imageFormat = formatCopy;
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sharedViewModelsById = v14->_sharedViewModelsById;
    v14->_sharedViewModelsById = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_UTILITY, 0);

    v19 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v19 stringWithFormat:@"%@-sharedViewModelsUpdateQueue", v21];
    v23 = dispatch_queue_create([v22 UTF8String], v18);
    sharedViewModelsUpdateQueue = v14->_sharedViewModelsUpdateQueue;
    v14->_sharedViewModelsUpdateQueue = v23;

    v25 = MEMORY[0x1E696AEC0];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = [v25 stringWithFormat:@"%@-otherDataSourceManagersQueue", v27];
    v29 = dispatch_queue_create([v28 UTF8String], v18);
    otherDataSourceManagersQueue = v14->_otherDataSourceManagersQueue;
    v14->_otherDataSourceManagersQueue = v29;

    v31 = [[PXImportAssetsDataSourceManager alloc] initWithDelegate:v14 logIdentifier:@"primary"];
    dataSourceManager = v14->_dataSourceManager;
    v14->_dataSourceManager = v31;

    v33 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    otherDataSourceManagers = v14->_otherDataSourceManagers;
    v14->_otherDataSourceManagers = v33;

    v14->_alreadyImportedItemsSelectable = 1;
    v35 = [(PXImportController *)v14 createDataSourceManagerWithLogIdentifier:@"selection"];
    [v35 setDispatchesDataSourceUpdatesOnMainQueue:1];
    v36 = [[off_1E77218C8 alloc] initWithDataSourceManager:v35];
    selectionManager = v14->_selectionManager;
    v14->_selectionManager = v36;

    [(PXSectionedSelectionManager *)v14->_selectionManager registerChangeObserver:v14 context:PXImportControllerSelectionManagerObserverContext];
    v38 = [[PXImportMediaProvider alloc] initWithImageFormat:formatCopy];
    importMediaProvider = v14->_importMediaProvider;
    v14->_importMediaProvider = v38;

    v40 = +[PXPowerController sharedController];
    powerController = v14->_powerController;
    v14->_powerController = v40;

    v14->_importAssetsPowerAssertionIdentifier = [(PXPowerController *)v14->_powerController generateAssertionIdentifier];
    v14->_deleteAssetsPowerAssertionIdentifier = [(PXPowerController *)v14->_powerController generateAssertionIdentifier];
    v14->_loadAssetsPowerAssertionIdentifier = [(PXPowerController *)v14->_powerController generateAssertionIdentifier];
    v42 = [[PXImportMediaLoadingCoordinator alloc] initWithImportController:v14];
    mediaLoadingCoordinator = v14->_mediaLoadingCoordinator;
    v14->_mediaLoadingCoordinator = v42;
  }

  return v14;
}

+ (id)importFilesAtURLs:(id)ls photoLibrary:(id)library collection:(id)collection checkDuplicates:(BOOL)duplicates referenced:(BOOL)referenced delegate:(id)delegate completionHandler:(id)handler
{
  referencedCopy = referenced;
  duplicatesCopy = duplicates;
  libraryCopy = library;
  handlerCopy = handler;
  delegateCopy = delegate;
  collectionCopy = collection;
  lsCopy = ls;
  px_isFavoritesSmartAlbum = [collectionCopy px_isFavoritesSmartAlbum];
  v21 = objc_alloc_init(MEMORY[0x1E6978888]);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (px_isFavoritesSmartAlbum)
  {
    v23 = 0;
  }

  else
  {
    v23 = collectionCopy;
  }

  if (isKindOfClass)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  [v21 setDestinationAlbum:v24];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = collectionCopy;
  }

  else
  {
    v25 = 0;
  }

  [v21 setDestinationFolder:v25];

  destinationFolder = [v21 destinationFolder];
  [v21 setPreserveFolderStructure:destinationFolder != 0];

  [v21 setAllowDuplicates:!duplicatesCopy];
  [v21 setShouldImportAsReferenced:referencedCopy];
  mEMORY[0x1E6978878] = [MEMORY[0x1E6978878] sharedInstance];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __118__PXImportController_importFilesAtURLs_photoLibrary_collection_checkDuplicates_referenced_delegate_completionHandler___block_invoke;
  v32[3] = &unk_1E7741400;
  v36 = px_isFavoritesSmartAlbum;
  v34 = handlerCopy;
  selfCopy = self;
  v33 = libraryCopy;
  v28 = handlerCopy;
  v29 = libraryCopy;
  v30 = [mEMORY[0x1E6978878] importUrls:lsCopy intoLibrary:v29 withOptions:v21 delegate:delegateCopy performanceDelegate:0 atEnd:v32];

  return v30;
}

void __118__PXImportController_importFilesAtURLs_photoLibrary_collection_checkDuplicates_referenced_delegate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 48) favoriteAssetsFromImportResults:v3 photoLibrary:*(a1 + 32)];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v4;
    v3;
    px_dispatch_on_main_queue();
  }
}

+ (void)favoriteAssetsFromImportResults:(id)results photoLibrary:(id)library
{
  libraryCopy = library;
  [results importRecords];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

void __67__PXImportController_favoriteAssetsFromImportResults_photoLibrary___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x1E6978648] changeRequestForAsset:{*(*(&v7 + 1) + 8 * v5), v7}];
        [v6 setFavorite:1];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __67__PXImportController_favoriteAssetsFromImportResults_photoLibrary___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "Error marking assets as favorite: %@", &v5, 0xCu);
    }
  }
}

+ (id)itemsConstrainedByAvailableDiskSpaceFromItems:(id)items additionalBytesRequired:(int64_t *)required
{
  v44 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  systemPhotoLibraryURL = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
  path = [systemPhotoLibraryURL path];

  v8 = [MEMORY[0x1E69BF208] diskSpaceAvailableForPath:path];
  v28 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = itemsCopy;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    requiredCopy = required;
    v27 = path;
    v12 = 0;
    v13 = 0;
    v14 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        importAsset = [v16 importAsset];
        approximateBytesRequiredToImport = [importAsset approximateBytesRequiredToImport];

        if (!approximateBytesRequiredToImport)
        {
          _PFAssertContinueHandler();
        }

        v13 += approximateBytesRequiredToImport;
        v19 = v13 + 0x200000;
        if (v13 + 0x200000 >= v8)
        {
          v12 = 1;
        }

        else
        {
          [v28 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v43 count:16];
    }

    while (v11);

    if (v12)
    {
      v20 = v13 + 0x200000 - v8;
    }

    else
    {
      v20 = 0;
    }

    required = requiredCopy;
    path = v27;
  }

  else
  {

    v20 = 0;
    v19 = 0x200000;
  }

  *required = v20;
  v21 = _importControllerLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v23 = [v9 count];
    v24 = *required;
    v25 = [v28 count];
    *buf = 134219008;
    v34 = v23;
    v35 = 2048;
    v36 = v19;
    v37 = 2048;
    v38 = v8;
    v39 = 2048;
    v40 = v24;
    v41 = 2048;
    v42 = v25;
    _os_log_debug_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_DEBUG, "%lu items totalling %lld bytes with %lld bytes available leaves %lld additional bytes required. (%lu items importable.)", buf, 0x34u);
  }

  return v28;
}

+ (int64_t)diskSpaceRequiredToImportItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [itemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(itemsCopy);
        }

        importAsset = [*(*(&v13 + 1) + 8 * i) importAsset];
        approximateBytesRequiredToImport = [importAsset approximateBytesRequiredToImport];

        if (!approximateBytesRequiredToImport)
        {
          _PFAssertContinueHandler();
        }

        v6 += approximateBytesRequiredToImport;
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
    v11 = v6 + 0x200000;
  }

  else
  {
    v11 = 0x200000;
  }

  return v11;
}

+ (id)assetsForModels:(id)models
{
  v17 = *MEMORY[0x1E69E9840];
  modelsCopy = models;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(modelsCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = modelsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        importAsset = [*(*(&v12 + 1) + 8 * i) importAsset];
        if (importAsset)
        {
          [v4 addObject:importAsset];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)importOperationQueue
{
  if (importOperationQueue_onceToken != -1)
  {
    dispatch_once(&importOperationQueue_onceToken, &__block_literal_global_230_187671);
  }

  v3 = importOperationQueue__importQueue;

  return v3;
}

uint64_t __42__PXImportController_importOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = importOperationQueue__importQueue;
  importOperationQueue__importQueue = v0;

  [importOperationQueue__importQueue setQualityOfService:25];
  v2 = importOperationQueue__importQueue;

  return [v2 setMaxConcurrentOperationCount:2];
}

@end