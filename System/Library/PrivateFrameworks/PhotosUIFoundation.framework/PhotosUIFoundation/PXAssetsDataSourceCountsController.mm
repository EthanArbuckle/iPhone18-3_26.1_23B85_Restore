@interface PXAssetsDataSourceCountsController
- (PXAssetsDataSourceCountsController)init;
- (PXAssetsDataSourceCountsController)initWithAssetsDataSourceManager:(id)manager;
- (void)_dataSourceManagerDidChange;
- (void)_handlePreparationCompletion;
- (void)_prepareCounts;
- (void)_prepareDataSource:(id)source;
- (void)_updateCounts;
- (void)assetsDataSourceManagerDidFinishBackgroundFetching:(id)fetching;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)prepareCountsIfNeeded;
- (void)setCounts:(id *)counts;
- (void)setGuestCounts:(id *)counts;
@end

@implementation PXAssetsDataSourceCountsController

- (void)prepareCountsIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PFAssetsDataSourceCountsGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543618;
    v5 = objc_opt_class();
    v6 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1B3F73000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Prepare Counts If Needed", &v4, 0x16u);
  }

  [(PXAssetsDataSourceCountsController *)self _prepareCounts];
}

- (void)_prepareCounts
{
  v30 = *MEMORY[0x1E69E9840];
  isPreparingAssetTypeCounts = [(PXAssetsDataSourceCountsController *)self isPreparingAssetTypeCounts];
  hasUsableCounts = [(PXAssetsDataSourceCountsController *)self hasUsableCounts];
  v5 = hasUsableCounts;
  if (isPreparingAssetTypeCounts || hasUsableCounts)
  {
    assetsDataSourceManager = PFAssetsDataSourceCountsGetLog();
    if (os_log_type_enabled(assetsDataSourceManager, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 1024;
      *&buf[24] = isPreparingAssetTypeCounts;
      *&buf[28] = 1024;
      *&buf[30] = v5;
      _os_log_impl(&dword_1B3F73000, assetsDataSourceManager, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Skipping Prepare (preparing:%d || usable:%d)", buf, 0x22u);
    }
  }

  else
  {
    assetsDataSourceManager = [(PXAssetsDataSourceCountsController *)self assetsDataSourceManager];
    dataSource = [assetsDataSourceManager dataSource];
    isBackgroundFetching = [assetsDataSourceManager isBackgroundFetching];
    areAllSectionsConsideredAccurate = [dataSource areAllSectionsConsideredAccurate];
    v10 = PFAssetsDataSourceCountsGetLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if ((isBackgroundFetching & 1) != 0 || !areAllSectionsConsideredAccurate)
    {
      if (v11)
      {
        *buf = 138544130;
        *&buf[4] = objc_opt_class();
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 1024;
        *&buf[24] = isBackgroundFetching;
        *&buf[28] = 1024;
        *&buf[30] = areAllSectionsConsideredAccurate;
        _os_log_impl(&dword_1B3F73000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Skipping Prepare (fetching:%d || !accurate:%d)", buf, 0x22u);
      }
    }

    else
    {
      if (v11)
      {
        *buf = 138543618;
        *&buf[4] = objc_opt_class();
        *&buf[12] = 2048;
        *&buf[14] = self;
        _os_log_impl(&dword_1B3F73000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> ⎡ Will Prepare Asset Type Counts", buf, 0x16u);
      }

      [(PXAssetsDataSourceCountsController *)self setIsPreparingAssetTypeCounts:1];
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      numberOfSections = [dataSource numberOfSections];
      if (numberOfSections >= 1)
      {
        v13 = numberOfSections;
        v14 = 0;
        v15.f64[0] = NAN;
        v15.f64[1] = NAN;
        v23 = vnegq_f64(v15);
        do
        {
          *buf = [dataSource identifier];
          *&buf[8] = v14;
          *&buf[16] = v23;
          v16 = [dataSource assetsInSectionIndexPath:buf];
          if (v16)
          {
            [v10 addObject:v16];
          }

          ++v14;
        }

        while (v13 != v14);
      }

      objc_initWeak(buf, self);
      prepareCountsQueue = self->_prepareCountsQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__PXAssetsDataSourceCountsController__prepareCounts__block_invoke;
      block[3] = &unk_1E7BB6C78;
      objc_copyWeak(&v26, buf);
      v25 = dataSource;
      dispatch_async(prepareCountsQueue, block);

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }

    isPreparingAssetTypeCounts2 = [(PXAssetsDataSourceCountsController *)self isPreparingAssetTypeCounts];
    hasUsableCounts2 = [(PXAssetsDataSourceCountsController *)self hasUsableCounts];
    v20 = isPreparingAssetTypeCounts2 || hasUsableCounts2;
    v21 = PFAssetsDataSourceCountsGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      *buf = 138544386;
      *&buf[4] = v22;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 1024;
      *&buf[24] = v20;
      *&buf[28] = 1024;
      *&buf[30] = isPreparingAssetTypeCounts2;
      v28 = 1024;
      v29 = hasUsableCounts2;
      _os_log_impl(&dword_1B3F73000, v21, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Is Prepared:%d (preparing:%d || usable:%d)", buf, 0x28u);
    }

    [(PXAssetsDataSourceCountsController *)self setWaitingToPrepare:!v20];
  }
}

- (void)assetsDataSourceManagerDidFinishBackgroundFetching:(id)fetching
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = PFAssetsDataSourceCountsGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543618;
    v6 = objc_opt_class();
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1B3F73000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Received assetsDataSourceManagerDidFinishBackgroundFetching", &v5, 0x16u);
  }

  [(PXAssetsDataSourceCountsController *)self _dataSourceManagerDidChange];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  v17 = *MEMORY[0x1E69E9840];
  observableCopy = observable;
  if (AssetsDataSourceManagerObserverContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsDataSourceCountsController.m" lineNumber:195 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if (changeCopy)
  {
    v11 = PFAssetsDataSourceCountsGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543618;
      v14 = objc_opt_class();
      v15 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1B3F73000, v11, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Received PXDataSourceManagerChangedDataSource", &v13, 0x16u);
    }

    [(PXAssetsDataSourceCountsController *)self _dataSourceManagerDidChange];
  }
}

- (void)_dataSourceManagerDidChange
{
  if ([(PXAssetsDataSourceCountsController *)self waitingToPrepare])
  {

    [(PXAssetsDataSourceCountsController *)self _prepareCounts];
  }

  else
  {

    [(PXAssetsDataSourceCountsController *)self _updateCounts];
  }
}

- (void)_updateCounts
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(PXAssetsDataSourceCountsController *)self hasUsableCounts])
  {
    assetsDataSourceManager = [(PXAssetsDataSourceCountsController *)self assetsDataSourceManager];
    dataSource = [assetsDataSourceManager dataSource];
    *buf = PXDisplayAssetDetailedCountsUndefined;
    *&buf[16] = 0x7FFFFFFFFFFFFFFFLL;
    v12 = PXDisplayAssetDetailedCountsUndefined;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if ([dataSource getAssetCounts:buf guestAssetCounts:&v12 allowFetch:0])
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __51__PXAssetsDataSourceCountsController__updateCounts__block_invoke;
      v7[3] = &__block_descriptor_80_e53_v16__0___PXMutableAssetsDataSourceCountsController__8l;
      v8 = *buf;
      v9 = *&buf[16];
      v10 = v12;
      v11 = v13;
      [(PXObservable *)self performChanges:v7];
    }

    else
    {
      v5 = PFAssetsDataSourceCountsGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        *v14 = 138543618;
        v15 = v6;
        v16 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1B3F73000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Re-Prepare Counts", v14, 0x16u);
      }

      [(PXAssetsDataSourceCountsController *)self setHasUsableCounts:0];
      [(PXAssetsDataSourceCountsController *)self _prepareCounts];
    }
  }

  else
  {
    assetsDataSourceManager = PFAssetsDataSourceCountsGetLog();
    if (os_log_type_enabled(assetsDataSourceManager, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_1B3F73000, assetsDataSourceManager, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Skipping Update", buf, 0x16u);
    }
  }
}

void __51__PXAssetsDataSourceCountsController__updateCounts__block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v3 = a2;
  [v3 setCounts:&v4];
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  [v3 setGuestCounts:&v4];
}

- (void)_handlePreparationCompletion
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = PFAssetsDataSourceCountsGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543618;
    v5 = objc_opt_class();
    v6 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1B3F73000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> ⎣ Did Prepare Asset Type Counts", &v4, 0x16u);
  }

  [(PXAssetsDataSourceCountsController *)self setIsPreparingAssetTypeCounts:0];
  [(PXAssetsDataSourceCountsController *)self setHasUsableCounts:1];
  [(PXAssetsDataSourceCountsController *)self _updateCounts];
}

- (void)_prepareDataSource:(id)source
{
  v19 = *MEMORY[0x1E69E9840];
  prepareCountsQueue = self->_prepareCountsQueue;
  sourceCopy = source;
  dispatch_assert_queue_V2(prepareCountsQueue);
  v6 = [sourceCopy getAssetCounts:0 guestAssetCounts:0 allowFetch:1];

  v7 = PFAssetsDataSourceCountsGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = @"NO";
    if (v6)
    {
      v9 = @"YES";
    }

    v10 = v9;
    *buf = 138543874;
    v14 = v8;
    v15 = 2048;
    selfCopy = self;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_1B3F73000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> ⎜ Prepare Asset Type Counts success:%@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PXAssetsDataSourceCountsController__prepareDataSource___block_invoke;
  block[3] = &unk_1E7BB8858;
  objc_copyWeak(&v12, buf);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __57__PXAssetsDataSourceCountsController__prepareDataSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePreparationCompletion];
}

void __52__PXAssetsDataSourceCountsController__prepareCounts__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _prepareDataSource:*(a1 + 32)];
}

- (void)setGuestCounts:(id *)counts
{
  v24 = *MEMORY[0x1E69E9840];
  p_guestCounts = &self->_guestCounts;
  if (counts->var0 != self->_guestCounts.photosCount || counts->var1 != self->_guestCounts.videosCount || counts->var2 != self->_guestCounts.othersCount)
  {
    v8 = PFAssetsDataSourceCountsGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      var0 = counts->var0;
      var1 = counts->var1;
      var2 = counts->var2;
      v14 = 138544386;
      v15 = v9;
      v16 = 2048;
      selfCopy = self;
      v18 = 2048;
      v19 = var0;
      v20 = 2048;
      v21 = var1;
      v22 = 2048;
      v23 = var2;
      _os_log_impl(&dword_1B3F73000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> >>> Guest Counts (photos:%lu, videos:%lu, others:%lu)", &v14, 0x34u);
    }

    v13 = *&counts->var0;
    p_guestCounts->othersCount = counts->var2;
    *&p_guestCounts->photosCount = v13;
    [(PXObservable *)self signalChange:1];
  }
}

- (void)setCounts:(id *)counts
{
  v24 = *MEMORY[0x1E69E9840];
  p_counts = &self->_counts;
  if (counts->var0 != self->_counts.photosCount || counts->var1 != self->_counts.videosCount || counts->var2 != self->_counts.othersCount)
  {
    v8 = PFAssetsDataSourceCountsGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      var0 = counts->var0;
      var1 = counts->var1;
      var2 = counts->var2;
      v14 = 138544386;
      v15 = v9;
      v16 = 2048;
      selfCopy = self;
      v18 = 2048;
      v19 = var0;
      v20 = 2048;
      v21 = var1;
      v22 = 2048;
      v23 = var2;
      _os_log_impl(&dword_1B3F73000, v8, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> >>> Counts (photos:%lu, videos:%lu, others:%lu)", &v14, 0x34u);
    }

    v13 = *&counts->var0;
    p_counts->othersCount = counts->var2;
    *&p_counts->photosCount = v13;
    [(PXObservable *)self signalChange:1];
  }
}

- (PXAssetsDataSourceCountsController)initWithAssetsDataSourceManager:(id)manager
{
  managerCopy = manager;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsDataSourceCountsController.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"assetsDataSourceManager"}];
  }

  v15.receiver = self;
  v15.super_class = PXAssetsDataSourceCountsController;
  v7 = [(PXObservable *)&v15 init];
  v8 = v7;
  if (v7)
  {
    *(v7 + 17) = 0x7FFFFFFFFFFFFFFFLL;
    *(v7 + 120) = PXDisplayAssetDetailedCountsUndefined;
    *(v7 + 20) = 0x7FFFFFFFFFFFFFFFLL;
    *(v7 + 9) = PXDisplayAssetDetailedCountsUndefined;
    objc_storeStrong(v7 + 14, manager);
    [(PXAssetsDataSourceManager *)v8->_assetsDataSourceManager registerChangeObserver:v8 context:AssetsDataSourceManagerObserverContext];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);

    v11 = dispatch_queue_create("com.apple.photos.datasourcecountscontroller", v10);
    prepareCountsQueue = v8->_prepareCountsQueue;
    v8->_prepareCountsQueue = v11;
  }

  return v8;
}

- (PXAssetsDataSourceCountsController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsDataSourceCountsController.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXAssetsDataSourceCountsController init]"}];

  abort();
}

@end