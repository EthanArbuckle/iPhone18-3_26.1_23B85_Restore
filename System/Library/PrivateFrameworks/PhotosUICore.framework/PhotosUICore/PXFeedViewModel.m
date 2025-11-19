@interface PXFeedViewModel
- (PXAnonymousViewController)presentingViewController;
- (PXAssetCollectionActionPerformerDelegate)assetCollectionActionPerformerDelegate;
- (PXFeedViewActionPerformer)actionPerformer;
- (PXFeedViewModel)init;
- (PXFeedViewModel)initWithDataSourceManager:(id)a3 specManager:(id)a4 itemLayoutFactory:(id)a5 placeholderFactory:(id)a6 wantsEmbeddedScrollView:(BOOL)a7 visibleRectChangeObserver:(id)a8;
- (PXFeedViewModel)initWithFeedViewConfiguration:(id)a3;
- (void)_invalidateDataSource;
- (void)_invalidateSelectionSnapshot;
- (void)_invalidateSpec;
- (void)_updateDataSource;
- (void)_updateSelectionSnapshot;
- (void)_updateSpec;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)registerAccessoryTapToRadarDiagnosticsProvider:(id)a3;
- (void)setActionPerformer:(id)a3;
- (void)setAssetCollectionActionPerformerDelegate:(id)a3;
- (void)setDataSource:(id)a3;
- (void)setIsActive:(BOOL)a3;
- (void)setPresentingViewController:(id)a3;
- (void)setSelectionSnapshot:(id)a3;
- (void)setSpec:(id)a3;
- (void)setSubtitle:(id)a3;
@end

@implementation PXFeedViewModel

- (PXFeedViewModel)initWithFeedViewConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 feedConfiguration];
  v6 = [v5 dataSourceManager];
  v7 = [v4 extendedTraitCollection];

  v8 = [v5 specManagerWithExtendedTraitCollection:v7];

  v9 = [v5 itemLayoutFactory];
  v10 = [v5 placeholderFactory];
  v11 = [v5 wantsEmbeddedScrollView];
  v12 = [v5 visibleRectChangeObserver];
  v13 = [(PXFeedViewModel *)self initWithDataSourceManager:v6 specManager:v8 itemLayoutFactory:v9 placeholderFactory:v10 wantsEmbeddedScrollView:v11 visibleRectChangeObserver:v12];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__PXFeedViewModel_PXFeedDataSourceManager__initWithFeedViewConfiguration___block_invoke;
  v16[3] = &unk_1E7741100;
  v17 = v5;
  v14 = v5;
  [(PXFeedViewModel *)v13 performChanges:v16];

  return v13;
}

void __74__PXFeedViewModel_PXFeedDataSourceManager__initWithFeedViewConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 localizedSubtitle];
  [v3 setSubtitle:v4];
}

- (PXAnonymousViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (PXAssetCollectionActionPerformerDelegate)assetCollectionActionPerformerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_assetCollectionActionPerformerDelegate);

  return WeakRetained;
}

- (PXFeedViewActionPerformer)actionPerformer
{
  WeakRetained = objc_loadWeakRetained(&self->_actionPerformer);

  return WeakRetained;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PXFeedViewModel isActive](self, "isActive")}];
  [v4 setObject:v5 forKeyedSubscript:@"isActive"];

  v6 = [(PXFeedViewModel *)self dataSource];
  [v4 setObject:v6 forKeyedSubscript:@"dataSource"];

  v7 = [(PXFeedViewModel *)self spec];
  [v4 setObject:v7 forKeyedSubscript:@"spec"];

  v8 = [(PXFeedViewModel *)self itemLayoutFactory];
  [v4 setObject:v8 forKeyedSubscript:@"itemLayoutFactory"];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = [(PXFeedViewModel *)self accessoryTapToRadarDiagnosticsProviders];
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v9);
        }

        [v4 addSubprovider:*(*(&v14 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__PXFeedViewModel_observable_didChange_context___block_invoke;
  v5[3] = &unk_1E772E9F0;
  v5[4] = self;
  v5[5] = a5;
  v5[6] = a4;
  v5[7] = a2;
  [(PXFeedViewModel *)self performChanges:v5];
}

void __48__PXFeedViewModel_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4 == DataSourceManagerObservationContext)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      goto LABEL_11;
    }

    v6 = v3;
    [*(a1 + 32) _invalidateDataSource];
    goto LABEL_10;
  }

  if (v4 == SelectionManagerObservationContext)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      goto LABEL_11;
    }

    v6 = v3;
    [*(a1 + 32) _invalidateSelectionSnapshot];
    goto LABEL_10;
  }

  if (v4 != SpecManagerObservationContext)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXFeedViewModel.m" lineNumber:202 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (*(a1 + 48))
  {
    v6 = v3;
    [*(a1 + 32) _invalidateSpec];
LABEL_10:
    v3 = v6;
  }

LABEL_11:
}

- (void)_updateSpec
{
  v4 = [(PXFeedViewModel *)self specManager];
  v3 = [v4 spec];
  [(PXFeedViewModel *)self setSpec:v3];
}

- (void)_invalidateSpec
{
  v2 = [(PXFeedViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateSpec];
}

- (void)_updateSelectionSnapshot
{
  v4 = [(PXFeedViewModel *)self selectionManager];
  v3 = [v4 selectionSnapshot];
  [(PXFeedViewModel *)self setSelectionSnapshot:v3];
}

- (void)_invalidateSelectionSnapshot
{
  v2 = [(PXFeedViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateSelectionSnapshot];
}

- (void)_updateDataSource
{
  v4 = [(PXFeedViewModel *)self dataSourceManager];
  v3 = [v4 dataSource];
  [(PXFeedViewModel *)self setDataSource:v3];
}

- (void)_invalidateDataSource
{
  v2 = [(PXFeedViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDataSource];
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  subtitle = self->_subtitle;
  if (subtitle != v4)
  {
    v9 = v4;
    v6 = [(NSString *)subtitle isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_subtitle;
      self->_subtitle = v7;

      [(PXFeedViewModel *)self signalChange:16];
      v4 = v9;
    }
  }
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_spec != v5)
  {
    v8 = v5;
    v7 = [(PXFeedViewLayoutSpec *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_spec, a3);
      [(PXFeedViewModel *)self signalChange:8];
      v6 = v8;
    }
  }
}

- (void)setSelectionSnapshot:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_selectionSnapshot != v5)
  {
    v8 = v5;
    v7 = [(PXSelectionSnapshot *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_selectionSnapshot, a3);
      [(PXFeedViewModel *)self signalChange:4];
      v6 = v8;
    }
  }
}

- (void)setDataSource:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_dataSource != v5)
  {
    v8 = v5;
    v7 = [(PXSectionedDataSource *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dataSource, a3);
      [(PXFeedViewModel *)self signalChange:2];
      v6 = v8;
    }
  }
}

- (void)setPresentingViewController:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->_presentingViewController);

    if (v6)
    {
      PXAssertGetLog();
    }

    objc_storeWeak(&self->_presentingViewController, v4);
  }
}

- (void)setAssetCollectionActionPerformerDelegate:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_assetCollectionActionPerformerDelegate);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->_assetCollectionActionPerformerDelegate);

    if (v6)
    {
      PXAssertGetLog();
    }

    objc_storeWeak(&self->_assetCollectionActionPerformerDelegate, v4);
  }
}

- (void)setActionPerformer:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_actionPerformer);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->_actionPerformer);

    if (v6)
    {
      PXAssertGetLog();
    }

    objc_storeWeak(&self->_actionPerformer, v4);
  }
}

- (void)setIsActive:(BOOL)a3
{
  if (self->_isActive != a3)
  {
    self->_isActive = a3;
    [(PXFeedViewModel *)self signalChange:1];
  }
}

- (void)registerAccessoryTapToRadarDiagnosticsProvider:(id)a3
{
  v7 = a3;
  if (!self->_accessoryTapToRadarDiagnosticsProviders)
  {
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    accessoryTapToRadarDiagnosticsProviders = self->_accessoryTapToRadarDiagnosticsProviders;
    self->_accessoryTapToRadarDiagnosticsProviders = v4;
  }

  v6 = [(PXFeedViewModel *)self accessoryTapToRadarDiagnosticsProviders];
  [v6 addObject:v7];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXFeedViewModel;
  [(PXFeedViewModel *)&v4 didPerformChanges];
  v3 = [(PXFeedViewModel *)self updater];
  [v3 updateIfNeeded];
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXFeedViewModel;
  [(PXFeedViewModel *)&v3 performChanges:a3];
}

- (PXFeedViewModel)initWithDataSourceManager:(id)a3 specManager:(id)a4 itemLayoutFactory:(id)a5 placeholderFactory:(id)a6 wantsEmbeddedScrollView:(BOOL)a7 visibleRectChangeObserver:(id)a8
{
  v30 = a3;
  v29 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v33.receiver = self;
  v33.super_class = PXFeedViewModel;
  v18 = [(PXFeedViewModel *)&v33 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_dataSourceManager, a3);
    [(PXSectionedDataSourceManager *)v19->_dataSourceManager registerChangeObserver:v19 context:DataSourceManagerObservationContext];
    v20 = [(PXSectionedDataSourceManager *)v19->_dataSourceManager changeHistory];
    dataSourceChangeHistory = v19->_dataSourceChangeHistory;
    v19->_dataSourceChangeHistory = v20;

    v22 = [[off_1E77218C8 alloc] initWithDataSourceManager:v19->_dataSourceManager];
    selectionManager = v19->_selectionManager;
    v19->_selectionManager = v22;

    [(PXSectionedSelectionManager *)v19->_selectionManager registerChangeObserver:v19 context:SelectionManagerObservationContext];
    objc_storeStrong(&v19->_specManager, a4);
    [(PXFeedViewLayoutSpecManager *)v19->_specManager registerChangeObserver:v19 context:SpecManagerObservationContext];
    objc_storeStrong(&v19->_itemLayoutFactory, a5);
    objc_storeStrong(&v19->_placeholderFactory, a6);
    objc_storeStrong(&v19->_storyQueue, MEMORY[0x1E69E96A0]);
    v19->_wantsEmbeddedScrollView = a7;
    v24 = [v17 copy];
    visibleRectChangeObserver = v19->_visibleRectChangeObserver;
    v19->_visibleRectChangeObserver = v24;

    v26 = [[off_1E7721940 alloc] initWithTarget:v19 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v19->_updater;
    v19->_updater = v26;

    [(PXUpdater *)v19->_updater addUpdateSelector:sel__updateDataSource];
    [(PXUpdater *)v19->_updater addUpdateSelector:sel__updateSelectionSnapshot];
    [(PXUpdater *)v19->_updater addUpdateSelector:sel__updateSpec];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __144__PXFeedViewModel_initWithDataSourceManager_specManager_itemLayoutFactory_placeholderFactory_wantsEmbeddedScrollView_visibleRectChangeObserver___block_invoke;
    v31[3] = &unk_1E774C5F8;
    v32 = v19;
    [(PXFeedViewModel *)v32 performChanges:v31];
  }

  return v19;
}

uint64_t __144__PXFeedViewModel_initWithDataSourceManager_specManager_itemLayoutFactory_placeholderFactory_wantsEmbeddedScrollView_visibleRectChangeObserver___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateDataSource];
  [*(a1 + 32) _invalidateSelectionSnapshot];
  v2 = *(a1 + 32);

  return [v2 _invalidateSpec];
}

- (PXFeedViewModel)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFeedViewModel.m" lineNumber:31 description:{@"%s is not available as initializer", "-[PXFeedViewModel init]"}];

  abort();
}

@end