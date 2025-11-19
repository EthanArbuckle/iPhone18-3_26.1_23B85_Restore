@interface PXStoryOneUpViewModel
- (BOOL)canPresentOneUp;
- (PXStoryClipSpriteReferencesProvider)spriteReferencesProvider;
- (PXStoryOneUpViewModel)init;
- (PXStoryOneUpViewModel)initWithResourcesDataSourceManager:(id)a3 mediaProvider:(id)a4;
- (id)spriteReferenceForAssetReference:(id)a3;
- (int64_t)_clipIdentifierForAssetReference:(id)a3 failureHandler:(id)a4;
- (void)_invalidateAssetsDataSourceManager;
- (void)_invalidateHiddenClipIdentifier;
- (void)_invalidateInitialAssetReference;
- (void)_invalidateVisibleClipIdentifier;
- (void)_updateAssetsDataSourceManager;
- (void)_updateHiddenClipIdentifier;
- (void)_updateInitialAssetReference;
- (void)_updateVisibleClipIdentifier;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)setHiddenAssetReference:(id)a3;
- (void)setOneUpPresentation:(id)a3;
- (void)setSpriteReferencesProvider:(id)a3;
- (void)setTimeline:(id)a3;
- (void)setVisibleAssetReference:(id)a3;
@end

@implementation PXStoryOneUpViewModel

- (PXStoryClipSpriteReferencesProvider)spriteReferencesProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_spriteReferencesProvider);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__PXStoryOneUpViewModel_observable_didChange_context___block_invoke;
  v5[3] = &unk_1E7746748;
  v5[4] = self;
  v5[5] = a5;
  v5[6] = a4;
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
  v3 = [(PXStoryOneUpViewModel *)self hiddenAssetReference];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PXStoryOneUpViewModel__updateHiddenClipIdentifier__block_invoke;
  v5[3] = &unk_1E774C648;
  v6 = v3;
  v4 = v3;
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
  v2 = [(PXStoryOneUpViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateHiddenClipIdentifier];
}

- (void)_updateVisibleClipIdentifier
{
  v3 = [(PXStoryOneUpViewModel *)self visibleAssetReference];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__PXStoryOneUpViewModel__updateVisibleClipIdentifier__block_invoke;
  v5[3] = &unk_1E774C648;
  v6 = v3;
  v4 = v3;
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
  v2 = [(PXStoryOneUpViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateVisibleClipIdentifier];
}

- (void)_updateInitialAssetReference
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PXStoryOneUpViewModel *)self initialClipIdentifier];
  v4 = [(PXStoryOneUpViewModel *)self timeline];
  v5 = [(PXStoryOneUpViewModel *)self resourcesDataSourceManager];
  v6 = [v5 dataSource];

  v7 = 0;
  if (v3 && v4 && v6)
  {
    v8 = [v4 indexOfResourceForClipWithIdentifier:v3 inResourcesDataSource:v6 resourceKind:1];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = PLStoryGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v15 = 134217984;
        *&v15[4] = v3;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Can't resolve an initial asset reference for 1up from resource of clip with id %lu", v15, 0xCu);
      }

      v7 = 0;
    }

    else
    {
      v10 = v8;
      v9 = [v6 displayAssetResourceAtIndex:v8];
      if ([v9 px_storyResourceKind]== 1)
      {
        v11 = [v9 px_storyResourceDisplayAsset];
        v12 = [(PXStoryOneUpViewModel *)self assetsDataSourceManager];
        v13 = [v12 dataSource];
        v14 = [v13 identifier];

        *v15 = v14;
        *&v15[8] = 0;
        *&v15[16] = v10;
        v16 = 0x7FFFFFFFFFFFFFFFLL;
        v7 = [[off_1E7721490 alloc] initWithSectionObject:0 itemObject:v11 subitemObject:0 indexPath:v15];
      }

      else
      {
        v11 = PLStoryGetLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *v15 = 138412546;
          *&v15[4] = v9;
          *&v15[12] = 2048;
          *&v15[14] = v3;
          _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Can't resolve an initial asset reference for 1up from resource %@ of clip with id %lu", v15, 0x16u);
        }

        v7 = 0;
      }
    }
  }

  [(PXStoryOneUpViewModel *)self setInitialAssetReference:v7];
}

- (void)_invalidateInitialAssetReference
{
  v2 = [(PXStoryOneUpViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateInitialAssetReference];
}

- (void)_updateAssetsDataSourceManager
{
  v3 = [(PXStoryOneUpViewModel *)self resourcesDataSourceManager];
  v8 = [v3 dataSource];

  v4 = [v8 displayAssets];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[PXPhotosDataSourceConfiguration alloc] initWithAssetFetchResult:v4 options:0];
    v6 = [[PXPhotosDataSource alloc] initWithPhotosDataSourceConfiguration:v5];
    v7 = [[PXPhotoKitAssetsDataSourceManager alloc] initWithPhotosDataSource:v6];
    [(PXStoryOneUpViewModel *)self setAssetsDataSourceManager:v7];
  }
}

- (void)_invalidateAssetsDataSourceManager
{
  v2 = [(PXStoryOneUpViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAssetsDataSourceManager];
}

- (int64_t)_clipIdentifierForAssetReference:(id)a3 failureHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    [v6 indexPath];
    v8 = [(PXStoryOneUpViewModel *)self timeline];
    v9 = [(PXStoryOneUpViewModel *)self resourcesDataSourceManager];
    v10 = [v9 dataSource];
    v11 = [v8 identifierOfFirstClipContainingResourceAtIndex:v13 inResourcesDataSource:v10 resourceKind:1];

    if (v7 && !v11)
    {
      v7[2](v7);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setOneUpPresentation:(id)a3
{
  v5 = a3;
  if (self->_oneUpPresentation != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_oneUpPresentation, a3);
    v5 = v6;
  }
}

- (void)setSpriteReferencesProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_spriteReferencesProvider);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_spriteReferencesProvider, obj);
    self->_spriteReferencesProviderRespondsTo.spriteReferenceForClipWithIdentifier = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setHiddenAssetReference:(id)a3
{
  objc_storeStrong(&self->_hiddenAssetReference, a3);

  [(PXStoryOneUpViewModel *)self _invalidateHiddenClipIdentifier];
}

- (void)setVisibleAssetReference:(id)a3
{
  objc_storeStrong(&self->_visibleAssetReference, a3);

  [(PXStoryOneUpViewModel *)self _invalidateVisibleClipIdentifier];
}

- (BOOL)canPresentOneUp
{
  v3 = [(PXStoryOneUpViewModel *)self assetsDataSourceManager];
  if (v3)
  {
    v4 = [(PXStoryOneUpViewModel *)self oneUpPresentation];
    v5 = [v4 canStart];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)spriteReferenceForAssetReference:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PXStoryOneUpViewModel_spriteReferenceForAssetReference___block_invoke;
    v11[3] = &unk_1E774C648;
    v12 = v4;
    v6 = [(PXStoryOneUpViewModel *)self _clipIdentifierForAssetReference:v12 failureHandler:v11];
    if (v6 && self->_spriteReferencesProviderRespondsTo.spriteReferenceForClipWithIdentifier)
    {
      v7 = v6;
      v8 = [(PXStoryOneUpViewModel *)self spriteReferencesProvider];
      v9 = [v8 spriteReferenceForClipWithIdentifier:v7];
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

- (void)setTimeline:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_timeline != v5)
  {
    v8 = v5;
    v7 = [(PXStoryTimeline *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_timeline, a3);
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
  v3 = [(PXStoryOneUpViewModel *)self updater];
  [v3 updateIfNeeded];
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXStoryOneUpViewModel;
  [(PXStoryOneUpViewModel *)&v3 performChanges:a3];
}

- (PXStoryOneUpViewModel)initWithResourcesDataSourceManager:(id)a3 mediaProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PXStoryOneUpViewModel;
  v9 = [(PXStoryOneUpViewModel *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourcesDataSourceManager, a3);
    [(PXStoryResourcesDataSourceManager *)v10->_resourcesDataSourceManager registerChangeObserver:v10 context:ResourcesDataSourceManagerObservationContext_143456];
    objc_storeStrong(&v10->_mediaProvider, a4);
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryOneUpViewModel.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXStoryOneUpViewModel init]"}];

  abort();
}

@end