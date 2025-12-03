@interface PXFeedViewModel
- (PXAnonymousViewController)presentingViewController;
- (PXAssetCollectionActionPerformerDelegate)assetCollectionActionPerformerDelegate;
- (PXFeedViewActionPerformer)actionPerformer;
- (PXFeedViewModel)init;
- (PXFeedViewModel)initWithDataSourceManager:(id)manager specManager:(id)specManager itemLayoutFactory:(id)factory placeholderFactory:(id)placeholderFactory wantsEmbeddedScrollView:(BOOL)view visibleRectChangeObserver:(id)observer;
- (PXFeedViewModel)initWithFeedViewConfiguration:(id)configuration;
- (void)_invalidateDataSource;
- (void)_invalidateSelectionSnapshot;
- (void)_invalidateSpec;
- (void)_updateDataSource;
- (void)_updateSelectionSnapshot;
- (void)_updateSpec;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)registerAccessoryTapToRadarDiagnosticsProvider:(id)provider;
- (void)setActionPerformer:(id)performer;
- (void)setAssetCollectionActionPerformerDelegate:(id)delegate;
- (void)setDataSource:(id)source;
- (void)setIsActive:(BOOL)active;
- (void)setPresentingViewController:(id)controller;
- (void)setSelectionSnapshot:(id)snapshot;
- (void)setSpec:(id)spec;
- (void)setSubtitle:(id)subtitle;
@end

@implementation PXFeedViewModel

- (PXFeedViewModel)initWithFeedViewConfiguration:(id)configuration
{
  configurationCopy = configuration;
  feedConfiguration = [configurationCopy feedConfiguration];
  dataSourceManager = [feedConfiguration dataSourceManager];
  extendedTraitCollection = [configurationCopy extendedTraitCollection];

  v8 = [feedConfiguration specManagerWithExtendedTraitCollection:extendedTraitCollection];

  itemLayoutFactory = [feedConfiguration itemLayoutFactory];
  placeholderFactory = [feedConfiguration placeholderFactory];
  wantsEmbeddedScrollView = [feedConfiguration wantsEmbeddedScrollView];
  visibleRectChangeObserver = [feedConfiguration visibleRectChangeObserver];
  v13 = [(PXFeedViewModel *)self initWithDataSourceManager:dataSourceManager specManager:v8 itemLayoutFactory:itemLayoutFactory placeholderFactory:placeholderFactory wantsEmbeddedScrollView:wantsEmbeddedScrollView visibleRectChangeObserver:visibleRectChangeObserver];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__PXFeedViewModel_PXFeedDataSourceManager__initWithFeedViewConfiguration___block_invoke;
  v16[3] = &unk_1E7741100;
  v17 = feedConfiguration;
  v14 = feedConfiguration;
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

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  v19 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PXFeedViewModel isActive](self, "isActive")}];
  [containerCopy setObject:v5 forKeyedSubscript:@"isActive"];

  dataSource = [(PXFeedViewModel *)self dataSource];
  [containerCopy setObject:dataSource forKeyedSubscript:@"dataSource"];

  spec = [(PXFeedViewModel *)self spec];
  [containerCopy setObject:spec forKeyedSubscript:@"spec"];

  itemLayoutFactory = [(PXFeedViewModel *)self itemLayoutFactory];
  [containerCopy setObject:itemLayoutFactory forKeyedSubscript:@"itemLayoutFactory"];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  accessoryTapToRadarDiagnosticsProviders = [(PXFeedViewModel *)self accessoryTapToRadarDiagnosticsProviders];
  v10 = [accessoryTapToRadarDiagnosticsProviders countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(accessoryTapToRadarDiagnosticsProviders);
        }

        [containerCopy addSubprovider:*(*(&v14 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [accessoryTapToRadarDiagnosticsProviders countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__PXFeedViewModel_observable_didChange_context___block_invoke;
  v5[3] = &unk_1E772E9F0;
  v5[4] = self;
  v5[5] = context;
  v5[6] = change;
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
  specManager = [(PXFeedViewModel *)self specManager];
  spec = [specManager spec];
  [(PXFeedViewModel *)self setSpec:spec];
}

- (void)_invalidateSpec
{
  updater = [(PXFeedViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateSpec];
}

- (void)_updateSelectionSnapshot
{
  selectionManager = [(PXFeedViewModel *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  [(PXFeedViewModel *)self setSelectionSnapshot:selectionSnapshot];
}

- (void)_invalidateSelectionSnapshot
{
  updater = [(PXFeedViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateSelectionSnapshot];
}

- (void)_updateDataSource
{
  dataSourceManager = [(PXFeedViewModel *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  [(PXFeedViewModel *)self setDataSource:dataSource];
}

- (void)_invalidateDataSource
{
  updater = [(PXFeedViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateDataSource];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  subtitle = self->_subtitle;
  if (subtitle != subtitleCopy)
  {
    v9 = subtitleCopy;
    v6 = [(NSString *)subtitle isEqual:subtitleCopy];
    subtitleCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_subtitle;
      self->_subtitle = v7;

      [(PXFeedViewModel *)self signalChange:16];
      subtitleCopy = v9;
    }
  }
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  v6 = specCopy;
  if (self->_spec != specCopy)
  {
    v8 = specCopy;
    v7 = [(PXFeedViewLayoutSpec *)specCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_spec, spec);
      [(PXFeedViewModel *)self signalChange:8];
      v6 = v8;
    }
  }
}

- (void)setSelectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v6 = snapshotCopy;
  if (self->_selectionSnapshot != snapshotCopy)
  {
    v8 = snapshotCopy;
    v7 = [(PXSelectionSnapshot *)snapshotCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_selectionSnapshot, snapshot);
      [(PXFeedViewModel *)self signalChange:4];
      v6 = v8;
    }
  }
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  v6 = sourceCopy;
  if (self->_dataSource != sourceCopy)
  {
    v8 = sourceCopy;
    v7 = [(PXSectionedDataSource *)sourceCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dataSource, source);
      [(PXFeedViewModel *)self signalChange:2];
      v6 = v8;
    }
  }
}

- (void)setPresentingViewController:(id)controller
{
  v7 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  if (WeakRetained != controllerCopy)
  {
    v6 = objc_loadWeakRetained(&self->_presentingViewController);

    if (v6)
    {
      PXAssertGetLog();
    }

    objc_storeWeak(&self->_presentingViewController, controllerCopy);
  }
}

- (void)setAssetCollectionActionPerformerDelegate:(id)delegate
{
  v7 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_assetCollectionActionPerformerDelegate);

  if (WeakRetained != delegateCopy)
  {
    v6 = objc_loadWeakRetained(&self->_assetCollectionActionPerformerDelegate);

    if (v6)
    {
      PXAssertGetLog();
    }

    objc_storeWeak(&self->_assetCollectionActionPerformerDelegate, delegateCopy);
  }
}

- (void)setActionPerformer:(id)performer
{
  v7 = *MEMORY[0x1E69E9840];
  performerCopy = performer;
  WeakRetained = objc_loadWeakRetained(&self->_actionPerformer);

  if (WeakRetained != performerCopy)
  {
    v6 = objc_loadWeakRetained(&self->_actionPerformer);

    if (v6)
    {
      PXAssertGetLog();
    }

    objc_storeWeak(&self->_actionPerformer, performerCopy);
  }
}

- (void)setIsActive:(BOOL)active
{
  if (self->_isActive != active)
  {
    self->_isActive = active;
    [(PXFeedViewModel *)self signalChange:1];
  }
}

- (void)registerAccessoryTapToRadarDiagnosticsProvider:(id)provider
{
  providerCopy = provider;
  if (!self->_accessoryTapToRadarDiagnosticsProviders)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    accessoryTapToRadarDiagnosticsProviders = self->_accessoryTapToRadarDiagnosticsProviders;
    self->_accessoryTapToRadarDiagnosticsProviders = weakObjectsHashTable;
  }

  accessoryTapToRadarDiagnosticsProviders = [(PXFeedViewModel *)self accessoryTapToRadarDiagnosticsProviders];
  [accessoryTapToRadarDiagnosticsProviders addObject:providerCopy];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXFeedViewModel;
  [(PXFeedViewModel *)&v4 didPerformChanges];
  updater = [(PXFeedViewModel *)self updater];
  [updater updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXFeedViewModel;
  [(PXFeedViewModel *)&v3 performChanges:changes];
}

- (PXFeedViewModel)initWithDataSourceManager:(id)manager specManager:(id)specManager itemLayoutFactory:(id)factory placeholderFactory:(id)placeholderFactory wantsEmbeddedScrollView:(BOOL)view visibleRectChangeObserver:(id)observer
{
  managerCopy = manager;
  specManagerCopy = specManager;
  factoryCopy = factory;
  placeholderFactoryCopy = placeholderFactory;
  observerCopy = observer;
  v33.receiver = self;
  v33.super_class = PXFeedViewModel;
  v18 = [(PXFeedViewModel *)&v33 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_dataSourceManager, manager);
    [(PXSectionedDataSourceManager *)v19->_dataSourceManager registerChangeObserver:v19 context:DataSourceManagerObservationContext];
    changeHistory = [(PXSectionedDataSourceManager *)v19->_dataSourceManager changeHistory];
    dataSourceChangeHistory = v19->_dataSourceChangeHistory;
    v19->_dataSourceChangeHistory = changeHistory;

    v22 = [[off_1E77218C8 alloc] initWithDataSourceManager:v19->_dataSourceManager];
    selectionManager = v19->_selectionManager;
    v19->_selectionManager = v22;

    [(PXSectionedSelectionManager *)v19->_selectionManager registerChangeObserver:v19 context:SelectionManagerObservationContext];
    objc_storeStrong(&v19->_specManager, specManager);
    [(PXFeedViewLayoutSpecManager *)v19->_specManager registerChangeObserver:v19 context:SpecManagerObservationContext];
    objc_storeStrong(&v19->_itemLayoutFactory, factory);
    objc_storeStrong(&v19->_placeholderFactory, placeholderFactory);
    objc_storeStrong(&v19->_storyQueue, MEMORY[0x1E69E96A0]);
    v19->_wantsEmbeddedScrollView = view;
    v24 = [observerCopy copy];
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedViewModel.m" lineNumber:31 description:{@"%s is not available as initializer", "-[PXFeedViewModel init]"}];

  abort();
}

@end