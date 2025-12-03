@interface PXStoryOneUpViewModel
- (BOOL)canPresentOneUp;
- (PXStoryClipSpriteReferencesProvider)spriteReferencesProvider;
- (PXStoryOneUpViewModel)init;
- (PXStoryOneUpViewModel)initWithResourcesDataSourceManager:(id)manager mediaProvider:(id)provider;
- (id)spriteReferenceForAssetReference:(id)reference;
- (int64_t)_clipIdentifierForAssetReference:(id)reference failureHandler:(id)handler;
- (void)_invalidateAssetsDataSourceManager;
- (void)_invalidateHiddenClipIdentifier;
- (void)_invalidateInitialAssetReference;
- (void)_invalidateVisibleClipIdentifier;
- (void)_updateAssetsDataSourceManager;
- (void)_updateHiddenClipIdentifier;
- (void)_updateInitialAssetReference;
- (void)_updateVisibleClipIdentifier;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)setHiddenAssetReference:(id)reference;
- (void)setOneUpPresentation:(id)presentation;
- (void)setSpriteReferencesProvider:(id)provider;
- (void)setTimeline:(id)timeline;
- (void)setVisibleAssetReference:(id)reference;
@end

@implementation PXStoryOneUpViewModel

- (PXStoryClipSpriteReferencesProvider)spriteReferencesProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_spriteReferencesProvider);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PXStoryOneUpViewModel_observable_didChange_context___block_invoke;
  v5[3] = &unk_1E7746748;
  v5[4] = self;
  v5[5] = context;
  v5[6] = change;
  v5[7] = a2;
  [(PXStoryOneUpViewModel *)self performChanges:v5];
}

void __54__PXStoryOneUpViewModel_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) != ResourcesDataSourceManagerObservationContext_143456)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXStoryOneUpViewModel.m" lineNumber:257 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (*(a1 + 48))
  {
    v5 = v3;
    [*(a1 + 32) _invalidateAssetsDataSourceManager];
    [*(a1 + 32) _invalidateInitialAssetReference];
    [*(a1 + 32) _invalidateVisibleClipIdentifier];
    [*(a1 + 32) _invalidateHiddenClipIdentifier];
    v3 = v5;
  }
}

- (void)_updateHiddenClipIdentifier
{
  hiddenAssetReference = [(PXStoryOneUpViewModel *)self hiddenAssetReference];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PXStoryOneUpViewModel__updateHiddenClipIdentifier__block_invoke;
  v5[3] = &unk_1E774C648;
  v6 = hiddenAssetReference;
  v4 = hiddenAssetReference;
  [(PXStoryOneUpViewModel *)self setHiddenClipIdentifier:[(PXStoryOneUpViewModel *)self _clipIdentifierForAssetReference:v4 failureHandler:v5]];
}

void __52__PXStoryOneUpViewModel__updateHiddenClipIdentifier__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PLStoryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "Can't resolve a hidden clip identifier for 1up from hidden asset reference %@", &v4, 0xCu);
  }
}

- (void)_invalidateHiddenClipIdentifier
{
  updater = [(PXStoryOneUpViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateHiddenClipIdentifier];
}

- (void)_updateVisibleClipIdentifier
{
  visibleAssetReference = [(PXStoryOneUpViewModel *)self visibleAssetReference];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__PXStoryOneUpViewModel__updateVisibleClipIdentifier__block_invoke;
  v5[3] = &unk_1E774C648;
  v6 = visibleAssetReference;
  v4 = visibleAssetReference;
  [(PXStoryOneUpViewModel *)self setVisibleClipIdentifier:[(PXStoryOneUpViewModel *)self _clipIdentifierForAssetReference:v4 failureHandler:v5]];
}

void __53__PXStoryOneUpViewModel__updateVisibleClipIdentifier__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PLStoryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "Can't resolve a visible clip identifier for 1up from visible asset reference %@", &v4, 0xCu);
  }
}

- (void)_invalidateVisibleClipIdentifier
{
  updater = [(PXStoryOneUpViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateVisibleClipIdentifier];
}

- (void)_updateInitialAssetReference
{
  v17 = *MEMORY[0x1E69E9840];
  initialClipIdentifier = [(PXStoryOneUpViewModel *)self initialClipIdentifier];
  timeline = [(PXStoryOneUpViewModel *)self timeline];
  resourcesDataSourceManager = [(PXStoryOneUpViewModel *)self resourcesDataSourceManager];
  dataSource = [resourcesDataSourceManager dataSource];

  v7 = 0;
  if (initialClipIdentifier && timeline && dataSource)
  {
    v8 = [timeline indexOfResourceForClipWithIdentifier:initialClipIdentifier inResourcesDataSource:dataSource resourceKind:1];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = PLStoryGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v15 = 134217984;
        *&v15[4] = initialClipIdentifier;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Can't resolve an initial asset reference for 1up from resource of clip with id %lu", v15, 0xCu);
      }

      v7 = 0;
    }

    else
    {
      v10 = v8;
      v9 = [dataSource displayAssetResourceAtIndex:v8];
      if ([v9 px_storyResourceKind]== 1)
      {
        px_storyResourceDisplayAsset = [v9 px_storyResourceDisplayAsset];
        assetsDataSourceManager = [(PXStoryOneUpViewModel *)self assetsDataSourceManager];
        dataSource2 = [assetsDataSourceManager dataSource];
        identifier = [dataSource2 identifier];

        *v15 = identifier;
        *&v15[8] = 0;
        *&v15[16] = v10;
        v16 = 0x7FFFFFFFFFFFFFFFLL;
        v7 = [[off_1E7721490 alloc] initWithSectionObject:0 itemObject:px_storyResourceDisplayAsset subitemObject:0 indexPath:v15];
      }

      else
      {
        px_storyResourceDisplayAsset = PLStoryGetLog();
        if (os_log_type_enabled(px_storyResourceDisplayAsset, OS_LOG_TYPE_ERROR))
        {
          *v15 = 138412546;
          *&v15[4] = v9;
          *&v15[12] = 2048;
          *&v15[14] = initialClipIdentifier;
          _os_log_impl(&dword_1A3C1C000, px_storyResourceDisplayAsset, OS_LOG_TYPE_ERROR, "Can't resolve an initial asset reference for 1up from resource %@ of clip with id %lu", v15, 0x16u);
        }

        v7 = 0;
      }
    }
  }

  [(PXStoryOneUpViewModel *)self setInitialAssetReference:v7];
}

- (void)_invalidateInitialAssetReference
{
  updater = [(PXStoryOneUpViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateInitialAssetReference];
}

- (void)_updateAssetsDataSourceManager
{
  resourcesDataSourceManager = [(PXStoryOneUpViewModel *)self resourcesDataSourceManager];
  dataSource = [resourcesDataSourceManager dataSource];

  displayAssets = [dataSource displayAssets];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[PXPhotosDataSourceConfiguration alloc] initWithAssetFetchResult:displayAssets options:0];
    v6 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v5];
    v7 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v6];
    [(PXStoryOneUpViewModel *)self setAssetsDataSourceManager:v7];
  }
}

- (void)_invalidateAssetsDataSourceManager
{
  updater = [(PXStoryOneUpViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateAssetsDataSourceManager];
}

- (int64_t)_clipIdentifierForAssetReference:(id)reference failureHandler:(id)handler
{
  referenceCopy = reference;
  handlerCopy = handler;
  if (referenceCopy)
  {
    [referenceCopy indexPath];
    timeline = [(PXStoryOneUpViewModel *)self timeline];
    resourcesDataSourceManager = [(PXStoryOneUpViewModel *)self resourcesDataSourceManager];
    dataSource = [resourcesDataSourceManager dataSource];
    v11 = [timeline identifierOfFirstClipContainingResourceAtIndex:v13 inResourcesDataSource:dataSource resourceKind:1];

    if (handlerCopy && !v11)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setOneUpPresentation:(id)presentation
{
  presentationCopy = presentation;
  if (self->_oneUpPresentation != presentationCopy)
  {
    v6 = presentationCopy;
    objc_storeStrong(&self->_oneUpPresentation, presentation);
    presentationCopy = v6;
  }
}

- (void)setSpriteReferencesProvider:(id)provider
{
  obj = provider;
  WeakRetained = objc_loadWeakRetained(&self->_spriteReferencesProvider);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_spriteReferencesProvider, obj);
    self->_spriteReferencesProviderRespondsTo.spriteReferenceForClipWithIdentifier = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setHiddenAssetReference:(id)reference
{
  objc_storeStrong(&self->_hiddenAssetReference, reference);

  [(PXStoryOneUpViewModel *)self _invalidateHiddenClipIdentifier];
}

- (void)setVisibleAssetReference:(id)reference
{
  objc_storeStrong(&self->_visibleAssetReference, reference);

  [(PXStoryOneUpViewModel *)self _invalidateVisibleClipIdentifier];
}

- (BOOL)canPresentOneUp
{
  assetsDataSourceManager = [(PXStoryOneUpViewModel *)self assetsDataSourceManager];
  if (assetsDataSourceManager)
  {
    oneUpPresentation = [(PXStoryOneUpViewModel *)self oneUpPresentation];
    canStart = [oneUpPresentation canStart];
  }

  else
  {
    canStart = 0;
  }

  return canStart;
}

- (id)spriteReferenceForAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = referenceCopy;
  if (referenceCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PXStoryOneUpViewModel_spriteReferenceForAssetReference___block_invoke;
    v11[3] = &unk_1E774C648;
    v12 = referenceCopy;
    v6 = [(PXStoryOneUpViewModel *)self _clipIdentifierForAssetReference:v12 failureHandler:v11];
    if (v6 && self->_spriteReferencesProviderRespondsTo.spriteReferenceForClipWithIdentifier)
    {
      v7 = v6;
      spriteReferencesProvider = [(PXStoryOneUpViewModel *)self spriteReferencesProvider];
      v9 = [spriteReferencesProvider spriteReferenceForClipWithIdentifier:v7];
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

void __58__PXStoryOneUpViewModel_spriteReferenceForAssetReference___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PLStoryGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "Can't resolve a clip identifier for 1up from asset reference %@", &v4, 0xCu);
  }
}

- (void)setTimeline:(id)timeline
{
  timelineCopy = timeline;
  v6 = timelineCopy;
  if (self->_timeline != timelineCopy)
  {
    v8 = timelineCopy;
    v7 = [(PXStoryTimeline *)timelineCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_timeline, timeline);
      [(PXStoryOneUpViewModel *)self _invalidateInitialAssetReference];
      [(PXStoryOneUpViewModel *)self _invalidateVisibleClipIdentifier];
      [(PXStoryOneUpViewModel *)self _invalidateHiddenClipIdentifier];
      v6 = v8;
    }
  }
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryOneUpViewModel;
  [(PXStoryOneUpViewModel *)&v4 didPerformChanges];
  updater = [(PXStoryOneUpViewModel *)self updater];
  [updater updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXStoryOneUpViewModel;
  [(PXStoryOneUpViewModel *)&v3 performChanges:changes];
}

- (PXStoryOneUpViewModel)initWithResourcesDataSourceManager:(id)manager mediaProvider:(id)provider
{
  managerCopy = manager;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = PXStoryOneUpViewModel;
  v9 = [(PXStoryOneUpViewModel *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourcesDataSourceManager, manager);
    [(PXStoryResourcesDataSourceManager *)v10->_resourcesDataSourceManager registerChangeObserver:v10 context:ResourcesDataSourceManagerObservationContext_143456];
    objc_storeStrong(&v10->_mediaProvider, provider);
    v11 = [[off_1E7721940 alloc] initWithTarget:v10 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v10->_updater;
    v10->_updater = v11;

    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateAssetsDataSourceManager];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateInitialAssetReference];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateVisibleClipIdentifier];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateHiddenClipIdentifier];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__PXStoryOneUpViewModel_initWithResourcesDataSourceManager_mediaProvider___block_invoke;
    v14[3] = &unk_1E774C5F8;
    v15 = v10;
    [(PXStoryOneUpViewModel *)v15 performChanges:v14];
  }

  return v10;
}

- (PXStoryOneUpViewModel)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryOneUpViewModel.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXStoryOneUpViewModel init]"}];

  abort();
}

@end