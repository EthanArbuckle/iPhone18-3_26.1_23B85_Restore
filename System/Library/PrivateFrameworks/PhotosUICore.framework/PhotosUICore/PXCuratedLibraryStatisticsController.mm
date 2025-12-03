@interface PXCuratedLibraryStatisticsController
+ (PXCuratedLibraryStatisticsController)defaultController;
- (_PXLayoutGeometry)_layoutGeometryBufferWithCount:(int64_t)count;
- (void)_enumerateDaysSectionsForViewModel:(id)model extendedTraitCollection:(id)collection usingBlock:(id)block;
- (void)collectStatisticsForViewModel:(id)model extendedTraitCollection:(id)collection resultHandler:(id)handler;
- (void)dealloc;
@end

@implementation PXCuratedLibraryStatisticsController

- (_PXLayoutGeometry)_layoutGeometryBufferWithCount:(int64_t)count
{
  reusableLayoutGeometriesCapacity = self->_reusableLayoutGeometriesCapacity;
  if (reusableLayoutGeometriesCapacity < count)
  {
    if (reusableLayoutGeometriesCapacity)
    {
      do
      {
        reusableLayoutGeometriesCapacity *= 2;
      }

      while (reusableLayoutGeometriesCapacity < count);
    }

    else
    {
      reusableLayoutGeometriesCapacity = count;
    }

    self->_reusableLayoutGeometriesCapacity = reusableLayoutGeometriesCapacity;
    _PXGArrayResize();
  }

  return self->_resuableLayoutGeometries;
}

- (void)_enumerateDaysSectionsForViewModel:(id)model extendedTraitCollection:(id)collection usingBlock:(id)block
{
  modelCopy = model;
  collectionCopy = collection;
  blockCopy = block;
  v33 = modelCopy;
  assetsDataSourceManager = [modelCopy assetsDataSourceManager];
  [assetsDataSourceManager performChanges:&__block_literal_global_20];
  v31 = assetsDataSourceManager;
  v12 = [assetsDataSourceManager dataSourceForZoomLevel:3];
  numberOfSections = [v12 numberOfSections];
  v34 = 0;
  v14 = [[off_1E77214C8 alloc] initWithExtendedTraitCollection:collectionCopy];
  selfCopy = self;
  [v14 setConfiguratorSource:self];
  v30 = v14;
  v15 = [[off_1E77214C0 alloc] initWithSection:0 dataSource:v12 loadingStatusManager:0 assetImportStatusManager:0 inlinePlaybackController:0 zoomLevel:3 spec:v14];
  v32 = collectionCopy;
  [collectionCopy layoutReferenceSize];
  [v15 setReferenceSize:?];
  v16 = numberOfSections - 1;
  if (numberOfSections >= 1)
  {
    v17 = 0;
    while (1)
    {
      v18 = objc_autoreleasePoolPush();
      [v15 setDataSource:v12 section:v17];
      [v15 updateAsRootIfNeeded];
      bodyContentLayout = [v15 bodyContentLayout];
      if (bodyContentLayout)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_5;
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v26 = objc_opt_class();
        v25 = NSStringFromClass(v26);
        px_descriptionForAssertionMessage = [bodyContentLayout px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PXCuratedLibraryStatisticsController.m" lineNumber:83 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sectionLayout.bodyContentLayout", v25, px_descriptionForAssertionMessage}];
      }

      else
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PXCuratedLibraryStatisticsController.m" lineNumber:83 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sectionLayout.bodyContentLayout", v25}];
      }

LABEL_5:
      newGenerator = [bodyContentLayout newGenerator];
      blockCopy[2](blockCopy, newGenerator, v12, v17, &v34);
      v21 = v34;

      objc_autoreleasePoolPop(v18);
      if ((v21 & 1) == 0 && v16 != v17++)
      {
        continue;
      }

      break;
    }
  }
}

- (void)collectStatisticsForViewModel:(id)model extendedTraitCollection:(id)collection resultHandler:(id)handler
{
  handlerCopy = handler;
  collectionCopy = collection;
  modelCopy = model;
  v12 = objc_alloc_init(PXMutableCuratedLibraryStatistics);
  v13 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v14 = [[PXCuratedLibraryVideoPlaybackController alloc] initViewViewModel:modelCopy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __108__PXCuratedLibraryStatisticsController_collectStatisticsForViewModel_extendedTraitCollection_resultHandler___block_invoke;
  v18[3] = &unk_1E77315F8;
  v21 = v14;
  v22 = a2;
  v18[4] = self;
  v19 = v13;
  v20 = v12;
  v15 = v14;
  v16 = v12;
  v17 = v13;
  [(PXCuratedLibraryStatisticsController *)self _enumerateDaysSectionsForViewModel:modelCopy extendedTraitCollection:collectionCopy usingBlock:v18];

  handlerCopy[2](handlerCopy, v16, 0);
}

void __108__PXCuratedLibraryStatisticsController_collectStatisticsForViewModel_extendedTraitCollection_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 itemCount];
  [v7 getGeometries:objc_msgSend(*(a1 + 32) inRange:"_layoutGeometryBufferWithCount:" withKind:{v9), 0, v9, 0}];
  v20 = v7;
  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = *(a1 + 64);
    v17 = *(a1 + 32);
    v18 = objc_opt_class();
    v15 = NSStringFromClass(v18);
    v19 = [v20 px_descriptionForAssertionMessage];
    [v11 handleFailureInMethod:v16 object:v17 file:@"PXCuratedLibraryStatisticsController.m" lineNumber:52 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"layoutGenerator", v15, v19}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = *(a1 + 64);
    v13 = *(a1 + 32);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v11 handleFailureInMethod:v12 object:v13 file:@"PXCuratedLibraryStatisticsController.m" lineNumber:52 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"layoutGenerator", v15}];
  }

LABEL_3:
  [v20 minHeroItemsSize];

  v10 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, v9}];
  [*(a1 + 40) removeAllIndexes];
  if (v9 >= 1)
  {
    PXSizeApproximatelyEqualOrBiggerThanSize();
  }

  [*(a1 + 48) appendStatisticsForSection:a4 assetsDataSource:v8 playbackController:*(a1 + 56) visibleItems:v10 heroItems:*(a1 + 40) keyItem:{objc_msgSend(v20, "keyItemIndex")}];
}

- (void)dealloc
{
  free(self->_resuableLayoutGeometries);
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryStatisticsController;
  [(PXCuratedLibraryStatisticsController *)&v3 dealloc];
}

+ (PXCuratedLibraryStatisticsController)defaultController
{
  if (defaultController_onceToken != -1)
  {
    dispatch_once(&defaultController_onceToken, &__block_literal_global_40959);
  }

  v3 = defaultController_defaultController;

  return v3;
}

void __57__PXCuratedLibraryStatisticsController_defaultController__block_invoke()
{
  v0 = objc_alloc_init(PXCuratedLibraryStatisticsController);
  v1 = defaultController_defaultController;
  defaultController_defaultController = v0;
}

@end