@interface PXStoryResourcesDataSourceManager
- (PXStoryResourcesDataSource)dataSource;
- (PXStoryResourcesDataSourceManager)init;
- (PXStoryResourcesDataSourceManager)initWithRecipeManager:(id)manager;
- (void)_invalidateDataSource;
- (void)_invalidateIsDataSourceFinal;
- (void)_invalidateRecipe;
- (void)_updateDataSource;
- (void)_updateIsDataSourceFinal;
- (void)_updateRecipe;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)setDataSource:(id)source;
- (void)setIsDataSourceFinal:(BOOL)final;
- (void)setRecipe:(id)recipe;
@end

@implementation PXStoryResourcesDataSourceManager

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__PXStoryResourcesDataSourceManager_observable_didChange_context___block_invoke;
  v5[3] = &unk_1E7746748;
  v5[4] = self;
  v5[5] = context;
  v5[6] = change;
  v5[7] = a2;
  [(PXStoryResourcesDataSourceManager *)self performChanges:v5];
}

void __66__PXStoryResourcesDataSourceManager_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) != RecipeManagerObservationContext_97872)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXStoryResourcesDataSourceManager.m" lineNumber:173 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (*(a1 + 48))
  {
    v5 = v3;
    [*(a1 + 32) _invalidateRecipe];
    [*(a1 + 32) _invalidateIsDataSourceFinal];
    v3 = v5;
  }
}

- (void)_updateIsDataSourceFinal
{
  recipeManager = [(PXStoryResourcesDataSourceManager *)self recipeManager];
  -[PXStoryResourcesDataSourceManager setIsDataSourceFinal:](self, "setIsDataSourceFinal:", ([recipeManager recipeAttributes] & 3) != 0);
}

- (void)_invalidateIsDataSourceFinal
{
  updater = [(PXStoryResourcesDataSourceManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateIsDataSourceFinal];
}

- (void)_updateDataSource
{
  recipe = [(PXStoryResourcesDataSourceManager *)self recipe];
  v14 = [PXStoryResourcesDataSource alloc];
  keyAsset = [recipe keyAsset];
  curatedAssets = [recipe curatedAssets];
  allAssets = [recipe allAssets];
  movieHighlights = [recipe movieHighlights];
  detailedSaliency = [recipe detailedSaliency];
  chapterCollection = [recipe chapterCollection];
  assetCollection = [recipe assetCollection];
  if (recipe)
  {
    [recipe overallDurationInfo];
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  configuration = [(PXStoryResourcesDataSourceManager *)self configuration];
  v12 = [(PXStoryResourcesDataSource *)v14 initWithKeyAsset:keyAsset displayAssets:curatedAssets availableDisplayAssets:allAssets movieHighlights:movieHighlights detailedSaliency:detailedSaliency chapterCollection:chapterCollection audioAssets:0 assetCollection:assetCollection overallDurationInfo:v16 storyConfiguration:configuration];
  v15 = keyAsset;
  v13 = v12;
  [(PXStoryResourcesDataSourceManager *)self setDataSource:v12];
}

- (void)_invalidateDataSource
{
  updater = [(PXStoryResourcesDataSourceManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateDataSource];
}

- (void)_updateRecipe
{
  recipeManager = [(PXStoryResourcesDataSourceManager *)self recipeManager];
  recipe = [recipeManager recipe];
  [(PXStoryResourcesDataSourceManager *)self setRecipe:recipe];
}

- (void)_invalidateRecipe
{
  updater = [(PXStoryResourcesDataSourceManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateRecipe];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryResourcesDataSourceManager;
  [(PXStoryResourcesDataSourceManager *)&v4 didPerformChanges];
  updater = [(PXStoryResourcesDataSourceManager *)self updater];
  [updater updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  storyQueue = [(PXStoryResourcesDataSourceManager *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  v6.receiver = self;
  v6.super_class = PXStoryResourcesDataSourceManager;
  [(PXStoryResourcesDataSourceManager *)&v6 performChanges:changesCopy];
}

- (void)setIsDataSourceFinal:(BOOL)final
{
  if (self->_isDataSourceFinal != final)
  {
    if (!final && self->_isDataSourceFinal)
    {
      PXAssertGetLog();
    }

    self->_isDataSourceFinal = final;
    [(PXStoryResourcesDataSourceManager *)self signalChange:2];
  }
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  v6 = sourceCopy;
  if (self->_dataSource != sourceCopy)
  {
    v8 = sourceCopy;
    v7 = [(PXStoryResourcesDataSource *)sourceCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dataSource, source);
      [(PXStoryResourcesDataSourceManager *)self signalChange:1];
      v6 = v8;
    }
  }
}

- (PXStoryResourcesDataSource)dataSource
{
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryResourcesDataSourceManager.m" lineNumber:90 description:@"data source not set"];

    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (void)setRecipe:(id)recipe
{
  recipeCopy = recipe;
  v6 = recipeCopy;
  if (self->_recipe != recipeCopy && ([(PXStoryRecipe *)recipeCopy isEqual:?]& 1) == 0)
  {
    v7 = self->_recipe;
    objc_storeStrong(&self->_recipe, recipe);
    keyAsset = [(PXStoryRecipe *)v6 keyAsset];
    keyAsset2 = [(PXStoryRecipe *)v7 keyAsset];
    if (keyAsset == keyAsset2 || [keyAsset isEqual:keyAsset2])
    {
      curatedAssets = [(PXStoryRecipe *)v6 curatedAssets];
      curatedAssets2 = [(PXStoryRecipe *)v7 curatedAssets];
      if (curatedAssets == curatedAssets2 || [curatedAssets isEqual:curatedAssets2])
      {
        movieHighlights = [(PXStoryRecipe *)v6 movieHighlights];
        movieHighlights2 = [(PXStoryRecipe *)v7 movieHighlights];
        if (movieHighlights == movieHighlights2 || [movieHighlights isEqual:movieHighlights2])
        {
          v29 = movieHighlights;
          detailedSaliency = [(PXStoryRecipe *)v6 detailedSaliency];
          detailedSaliency2 = [(PXStoryRecipe *)v7 detailedSaliency];
          if (detailedSaliency == detailedSaliency2 || [detailedSaliency isEqual:detailedSaliency2])
          {
            v27 = movieHighlights2;
            v28 = detailedSaliency2;
            chapterCollection = [(PXStoryRecipe *)v6 chapterCollection];
            chapterCollection2 = [(PXStoryRecipe *)v7 chapterCollection];
            if (chapterCollection == chapterCollection2 || [chapterCollection isEqual:chapterCollection2])
            {
              v25 = chapterCollection;
              v26 = chapterCollection2;
              assetCollection = [(PXStoryRecipe *)v6 assetCollection];
              assetCollection2 = [(PXStoryRecipe *)v7 assetCollection];
              v20 = assetCollection;
              if (assetCollection == assetCollection2)
              {
                v22 = assetCollection2;
                if (v6)
                {
                  [(PXStoryRecipe *)v6 overallDurationInfo];
                }

                else
                {
                  memset(v34, 0, sizeof(v34));
                  v33 = 0u;
                  memset(&v32[4], 0, 32);
                }

                if (v7)
                {
                  [(PXStoryRecipe *)v7 overallDurationInfo];
                  v23 = v30[0];
                }

                else
                {
                  v23 = 0;
                  memset(v32, 0, 32);
                  v31 = 0u;
                  memset(v30, 0, sizeof(v30));
                }

                if (v32[4] != v23 || (v36 = v33, v35 = v31, time1 = *&v32[5], time2 = *&v30[1], CMTimeCompare(&time1, &time2)) || (*&time1.value = v36, time1.epoch = v34[0], *&time2.value = v35, time2.epoch = v32[0], CMTimeCompare(&time1, &time2)))
                {
                  v24 = 1;
                }

                else
                {
                  time1 = *&v34[1];
                  time2 = *&v32[1];
                  v24 = CMTimeCompare(&time1, &time2) != 0;
                }

                assetCollection2 = v22;
                v21 = v24;
              }

              else
              {
                v21 = 1;
              }

              if ((v21 & 1) == 0)
              {
                goto LABEL_21;
              }

              goto LABEL_20;
            }

            movieHighlights2 = v27;
            detailedSaliency2 = v28;
          }

          movieHighlights = v29;
        }
      }
    }

LABEL_20:
    [(PXStoryResourcesDataSourceManager *)self _invalidateDataSource];
LABEL_21:
  }
}

- (PXStoryResourcesDataSourceManager)initWithRecipeManager:(id)manager
{
  managerCopy = manager;
  v17.receiver = self;
  v17.super_class = PXStoryResourcesDataSourceManager;
  v6 = [(PXStoryResourcesDataSourceManager *)&v17 init];
  v7 = v6;
  if (v6)
  {
    [(PXStoryResourcesDataSourceManager *)v6 copyLogConfigurationFrom:managerCopy];
    objc_storeStrong(&v7->_recipeManager, manager);
    [(PXStoryRecipeManager *)v7->_recipeManager registerChangeObserver:v7 context:RecipeManagerObservationContext_97872];
    storyQueue = [(PXStoryRecipeManager *)v7->_recipeManager storyQueue];
    storyQueue = v7->_storyQueue;
    v7->_storyQueue = storyQueue;

    configuration = [(PXStoryRecipeManager *)v7->_recipeManager configuration];
    configuration = v7->_configuration;
    v7->_configuration = configuration;

    v12 = [[off_1E7721940 alloc] initWithTarget:v7 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v7->_updater;
    v7->_updater = v12;

    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateRecipe];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateDataSource];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateIsDataSourceFinal];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__PXStoryResourcesDataSourceManager_initWithRecipeManager___block_invoke;
    v15[3] = &unk_1E7738048;
    v16 = v7;
    [(PXStoryResourcesDataSourceManager *)v16 performChanges:v15];
  }

  return v7;
}

uint64_t __59__PXStoryResourcesDataSourceManager_initWithRecipeManager___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateRecipe];
  [*(a1 + 32) _invalidateDataSource];
  v2 = *(a1 + 32);

  return [v2 _invalidateIsDataSourceFinal];
}

- (PXStoryResourcesDataSourceManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryResourcesDataSourceManager.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXStoryResourcesDataSourceManager init]"}];

  abort();
}

@end