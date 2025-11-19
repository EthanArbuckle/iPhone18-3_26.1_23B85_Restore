@interface PXStoryResourcesDataSourceManager
- (PXStoryResourcesDataSource)dataSource;
- (PXStoryResourcesDataSourceManager)init;
- (PXStoryResourcesDataSourceManager)initWithRecipeManager:(id)a3;
- (void)_invalidateDataSource;
- (void)_invalidateIsDataSourceFinal;
- (void)_invalidateRecipe;
- (void)_updateDataSource;
- (void)_updateIsDataSourceFinal;
- (void)_updateRecipe;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)setDataSource:(id)a3;
- (void)setIsDataSourceFinal:(BOOL)a3;
- (void)setRecipe:(id)a3;
@end

@implementation PXStoryResourcesDataSourceManager

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__PXStoryResourcesDataSourceManager_observable_didChange_context___block_invoke;
  v5[3] = &unk_1E7746748;
  v5[4] = self;
  v5[5] = a5;
  v5[6] = a4;
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
  v3 = [(PXStoryResourcesDataSourceManager *)self recipeManager];
  -[PXStoryResourcesDataSourceManager setIsDataSourceFinal:](self, "setIsDataSourceFinal:", ([v3 recipeAttributes] & 3) != 0);
}

- (void)_invalidateIsDataSourceFinal
{
  v2 = [(PXStoryResourcesDataSourceManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateIsDataSourceFinal];
}

- (void)_updateDataSource
{
  v3 = [(PXStoryResourcesDataSourceManager *)self recipe];
  v14 = [PXStoryResourcesDataSource alloc];
  v4 = [v3 keyAsset];
  v5 = [v3 curatedAssets];
  v6 = [v3 allAssets];
  v7 = [v3 movieHighlights];
  v8 = [v3 detailedSaliency];
  v9 = [v3 chapterCollection];
  v10 = [v3 assetCollection];
  if (v3)
  {
    [v3 overallDurationInfo];
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v11 = [(PXStoryResourcesDataSourceManager *)self configuration];
  v12 = [(PXStoryResourcesDataSource *)v14 initWithKeyAsset:v4 displayAssets:v5 availableDisplayAssets:v6 movieHighlights:v7 detailedSaliency:v8 chapterCollection:v9 audioAssets:0 assetCollection:v10 overallDurationInfo:v16 storyConfiguration:v11];
  v15 = v4;
  v13 = v12;
  [(PXStoryResourcesDataSourceManager *)self setDataSource:v12];
}

- (void)_invalidateDataSource
{
  v2 = [(PXStoryResourcesDataSourceManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDataSource];
}

- (void)_updateRecipe
{
  v4 = [(PXStoryResourcesDataSourceManager *)self recipeManager];
  v3 = [v4 recipe];
  [(PXStoryResourcesDataSourceManager *)self setRecipe:v3];
}

- (void)_invalidateRecipe
{
  v2 = [(PXStoryResourcesDataSourceManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateRecipe];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryResourcesDataSourceManager;
  [(PXStoryResourcesDataSourceManager *)&v4 didPerformChanges];
  v3 = [(PXStoryResourcesDataSourceManager *)self updater];
  [v3 updateIfNeeded];
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryResourcesDataSourceManager *)self storyQueue];
  dispatch_assert_queue_V2(v5);

  v6.receiver = self;
  v6.super_class = PXStoryResourcesDataSourceManager;
  [(PXStoryResourcesDataSourceManager *)&v6 performChanges:v4];
}

- (void)setIsDataSourceFinal:(BOOL)a3
{
  if (self->_isDataSourceFinal != a3)
  {
    if (!a3 && self->_isDataSourceFinal)
    {
      PXAssertGetLog();
    }

    self->_isDataSourceFinal = a3;
    [(PXStoryResourcesDataSourceManager *)self signalChange:2];
  }
}

- (void)setDataSource:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_dataSource != v5)
  {
    v8 = v5;
    v7 = [(PXStoryResourcesDataSource *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dataSource, a3);
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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXStoryResourcesDataSourceManager.m" lineNumber:90 description:@"data source not set"];

    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (void)setRecipe:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_recipe != v5 && ([(PXStoryRecipe *)v5 isEqual:?]& 1) == 0)
  {
    v7 = self->_recipe;
    objc_storeStrong(&self->_recipe, a3);
    v8 = [(PXStoryRecipe *)v6 keyAsset];
    v9 = [(PXStoryRecipe *)v7 keyAsset];
    if (v8 == v9 || [v8 isEqual:v9])
    {
      v10 = [(PXStoryRecipe *)v6 curatedAssets];
      v11 = [(PXStoryRecipe *)v7 curatedAssets];
      if (v10 == v11 || [v10 isEqual:v11])
      {
        v12 = [(PXStoryRecipe *)v6 movieHighlights];
        v13 = [(PXStoryRecipe *)v7 movieHighlights];
        if (v12 == v13 || [v12 isEqual:v13])
        {
          v29 = v12;
          v14 = [(PXStoryRecipe *)v6 detailedSaliency];
          v15 = [(PXStoryRecipe *)v7 detailedSaliency];
          if (v14 == v15 || [v14 isEqual:v15])
          {
            v27 = v13;
            v28 = v15;
            v16 = [(PXStoryRecipe *)v6 chapterCollection];
            v17 = [(PXStoryRecipe *)v7 chapterCollection];
            if (v16 == v17 || [v16 isEqual:v17])
            {
              v25 = v16;
              v26 = v17;
              v18 = [(PXStoryRecipe *)v6 assetCollection];
              v19 = [(PXStoryRecipe *)v7 assetCollection];
              v20 = v18;
              if (v18 == v19)
              {
                v22 = v19;
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

                v19 = v22;
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

            v13 = v27;
            v15 = v28;
          }

          v12 = v29;
        }
      }
    }

LABEL_20:
    [(PXStoryResourcesDataSourceManager *)self _invalidateDataSource];
LABEL_21:
  }
}

- (PXStoryResourcesDataSourceManager)initWithRecipeManager:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PXStoryResourcesDataSourceManager;
  v6 = [(PXStoryResourcesDataSourceManager *)&v17 init];
  v7 = v6;
  if (v6)
  {
    [(PXStoryResourcesDataSourceManager *)v6 copyLogConfigurationFrom:v5];
    objc_storeStrong(&v7->_recipeManager, a3);
    [(PXStoryRecipeManager *)v7->_recipeManager registerChangeObserver:v7 context:RecipeManagerObservationContext_97872];
    v8 = [(PXStoryRecipeManager *)v7->_recipeManager storyQueue];
    storyQueue = v7->_storyQueue;
    v7->_storyQueue = v8;

    v10 = [(PXStoryRecipeManager *)v7->_recipeManager configuration];
    configuration = v7->_configuration;
    v7->_configuration = v10;

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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryResourcesDataSourceManager.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXStoryResourcesDataSourceManager init]"}];

  abort();
}

@end