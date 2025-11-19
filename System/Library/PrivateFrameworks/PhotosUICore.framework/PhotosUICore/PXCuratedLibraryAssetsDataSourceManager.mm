@interface PXCuratedLibraryAssetsDataSourceManager
- (BOOL)forceAccurateAllSectionsIfNeeded;
- (BOOL)forceAccurateSection:(int64_t)a3 andSectionsBeforeAndAfter:(int64_t)a4;
- (BOOL)forceAccurateSectionsIfNeeded:(id)a3;
- (BOOL)forceAccurateSectionsIfNeeded:(id)a3 inZoomLevel:(int64_t)a4;
- (BOOL)forceAllPhotosAccurateIfNeeded;
- (PXAssetsDataSourceManager)currentAssetsDataSourceManager;
- (PXCuratedLibraryAssetsDataSourceManager)init;
- (PXCuratedLibraryAssetsDataSourceManager)initWithConfiguration:(id)a3;
- (PXCuratedLibraryAssetsDataSourceManagerDelegate)delegate;
- (PXPhotoKitAssetsDataSourceManager)currentPhotoKitAssetsDataSourceManager;
- (id)_photosDataSourceForZoomLevel:(int64_t)a3;
- (id)assetCollectionReferencesInDataSourceForZoomLevel:(int64_t)a3 withParentAssetCollectionReference:(id)a4;
- (id)assetCollectionReferencesInDataSourceForZoomLevel:(int64_t)a3 withParentAssetCollectionReference:(id)a4 assetCollectionReferenceWithSameKeyAssetAsParent:(id *)a5;
- (id)assetsInAssetCollection:(id)a3;
- (id)dataSourceForZoomLevel:(int64_t)a3;
- (id)dataSourceManagerForZoomLevel:(int64_t)a3;
- (id)firstAssetCollectionReferenceInDataSourceForZoomLevel:(int64_t)a3 withParent:(id)a4;
- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4;
- (id)visualPositionsChangeDetailsFromDataSourceIdentifier:(int64_t)a3 toDataSourceIdentifier:(int64_t)a4;
- (int64_t)transitionTypeFromDataSourceIdentifier:(int64_t)a3 toDataSourceIdentifier:(int64_t)a4;
- (unint64_t)libraryStateForZoomLevel:(int64_t)a3;
- (void)_enumeratePhotoKitDataDataSourceManagers:(id)a3;
- (void)_invalidateCuration;
- (void)_invalidateDataSource;
- (void)_invalidateDataSourceManagers;
- (void)_invalidateDataSourceProperties;
- (void)_invalidatePropertiesDerivedFromZoomLevel;
- (void)_updateCuration;
- (void)_updateDataSource;
- (void)_updateDataSourceManagers;
- (void)_updateDataSourceProperties;
- (void)_updatePropertiesDerivedFromZoomLevel;
- (void)didPerformChanges;
- (void)loadIfNeeded;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3;
- (void)setAllPhotosFilterPredicate:(id)a3;
- (void)setAllPhotosSortDescriptors:(id)a3;
- (void)setCanIncludeUnsavedSyndicatedAssets:(BOOL)a3;
- (void)setCanLoadData:(BOOL)a3;
- (void)setCurationEnabled:(BOOL)a3 forAssetCollection:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setLibraryFilter:(int64_t)a3;
- (void)setTransientKeyAsset:(id)a3 forAssetCollection:(id)a4 zoomLevel:(int64_t)a5;
- (void)setWantsCuration:(BOOL)a3;
- (void)setZoomLevel:(int64_t)a3;
- (void)setZoomLevelForCurrentDataSourceManager:(int64_t)a3;
@end

@implementation PXCuratedLibraryAssetsDataSourceManager

- (void)loadIfNeeded
{
  if (![(PXCuratedLibraryAssetsDataSourceManager *)self canLoadData])
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __55__PXCuratedLibraryAssetsDataSourceManager_loadIfNeeded__block_invoke;
    v3[3] = &unk_1E774A5F0;
    v3[4] = self;
    [(PXCuratedLibraryAssetsDataSourceManager *)self performChanges:v3];
  }
}

uint64_t __55__PXCuratedLibraryAssetsDataSourceManager_loadIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCanLoadData:1];
  v2 = *(a1 + 32);

  return [v2 _invalidatePropertiesDerivedFromZoomLevel];
}

- (void)_invalidateDataSourceManagers
{
  v2 = [(PXCuratedLibraryAssetsDataSourceManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDataSourceManagers];
}

- (void)_invalidatePropertiesDerivedFromZoomLevel
{
  v2 = [(PXCuratedLibraryAssetsDataSourceManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updatePropertiesDerivedFromZoomLevel];
}

- (void)_invalidateDataSourceProperties
{
  v2 = [(PXCuratedLibraryAssetsDataSourceManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDataSourceProperties];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryAssetsDataSourceManager;
  [(PXCuratedLibraryAssetsDataSourceManager *)&v4 didPerformChanges];
  v3 = [(PXCuratedLibraryAssetsDataSourceManager *)self updater];
  [v3 updateIfNeeded];
}

- (void)_updateDataSourceManagers
{
  v42 = *MEMORY[0x1E69E9840];
  if ([(PXCuratedLibraryAssetsDataSourceManager *)self canLoadData])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v27 = [(PXCuratedLibraryAssetsDataSourceManager *)self libraryFilter];
    for (i = 1; i != 5; ++i)
    {
      v5 = [(PXCuratedLibraryAssetsDataSourceManager *)self configuration];
      v6 = [v5 configurationForZoomLevel:i];

      v7 = [v6 assetsDataSourceManager];
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:i];
      [v3 setObject:v7 forKeyedSubscript:v8];

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __68__PXCuratedLibraryAssetsDataSourceManager__updateDataSourceManagers__block_invoke;
      v39[3] = &unk_1E774A6E0;
      v39[4] = self;
      v39[5] = i;
      [v7 performChanges:v39];
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = [(NSDictionary *)self->_dataSourceManagerByZoomLevel objectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v36;
      do
      {
        v13 = 0;
        do
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v35 + 1) + 8 * v13++) unregisterChangeObserver:self context:PXZoomLevelDataSourceManagerObservationContext];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v11);
    }

    [(PXContentSyndicationConfigurationProvider *)self->_contentSyndicationConfigurationProvider unregisterChangeObserver:self context:PXContentSyndicationConfigurationObservationContext_246500];
    contentSyndicationConfigurationProvider = self->_contentSyndicationConfigurationProvider;
    self->_contentSyndicationConfigurationProvider = 0;

    v15 = [v3 copy];
    dataSourceManagerByZoomLevel = self->_dataSourceManagerByZoomLevel;
    self->_dataSourceManagerByZoomLevel = v15;

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __68__PXCuratedLibraryAssetsDataSourceManager__updateDataSourceManagers__block_invoke_2;
    v34[3] = &__block_descriptor_40_e46_v24__0q8__PXPhotoKitAssetsDataSourceManager_16l;
    v34[4] = v27;
    [(PXCuratedLibraryAssetsDataSourceManager *)self _enumeratePhotoKitDataDataSourceManagers:v34];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = [(NSDictionary *)self->_dataSourceManagerByZoomLevel objectEnumerator];
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        v21 = 0;
        do
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v30 + 1) + 8 * v21++) registerChangeObserver:self context:PXZoomLevelDataSourceManagerObservationContext];
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v19);
    }

    v22 = [(PXCuratedLibraryAssetsDataSourceManagerConfiguration *)self->_configuration photoLibrary];
    v23 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:v22];
    v24 = self->_contentSyndicationConfigurationProvider;
    self->_contentSyndicationConfigurationProvider = v23;

    [(PXContentSyndicationConfigurationProvider *)self->_contentSyndicationConfigurationProvider registerChangeObserver:self context:PXContentSyndicationConfigurationObservationContext_246500];
    v25 = [off_1E7721858 sharedScheduler];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __68__PXCuratedLibraryAssetsDataSourceManager__updateDataSourceManagers__block_invoke_3;
    v28[3] = &unk_1E774C620;
    v28[4] = self;
    v29 = v3;
    v26 = v3;
    [v25 scheduleTaskAfterCATransactionCommits:v28];

    [(PXCuratedLibraryAssetsDataSourceManager *)self _invalidateDataSource];
  }
}

void __68__PXCuratedLibraryAssetsDataSourceManager__updateDataSourceManagers__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setBackgroundFetchOriginSection:0x7FFFFFFFFFFFFFFFLL];
  if (*(a1 + 40) == 4)
  {
    v3 = [*(a1 + 32) allPhotosFilterPredicate];
    [v4 setFilterPredicate:v3];
  }
}

- (void)_invalidateDataSource
{
  v2 = [(PXCuratedLibraryAssetsDataSourceManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDataSource];
}

- (void)_updateDataSourceProperties
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __70__PXCuratedLibraryAssetsDataSourceManager__updateDataSourceProperties__block_invoke;
  v2[3] = &unk_1E774A790;
  v2[4] = self;
  [(PXCuratedLibraryAssetsDataSourceManager *)self _enumeratePhotoKitDataDataSourceManagers:v2];
}

void __70__PXCuratedLibraryAssetsDataSourceManager__updateDataSourceProperties__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 photosDataSourceIfExists];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __70__PXCuratedLibraryAssetsDataSourceManager__updateDataSourceProperties__block_invoke_2;
  v14 = &unk_1E774A768;
  v15 = *(a1 + 32);
  v16 = v5;
  v18 = a2;
  v7 = v6;
  v17 = v7;
  v8 = v5;
  v9 = _Block_copy(&v11);
  v10 = v9;
  if (v7)
  {
    [v7 performChanges:{v9, v11, v12, v13, v14, v15, v16, v17, v18}];
  }

  else
  {
    (*(v9 + 2))(v9);
  }
}

void __70__PXCuratedLibraryAssetsDataSourceManager__updateDataSourceProperties__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryFilter];
  if (v2 != [*(a1 + 40) libraryFilter])
  {
    [*(a1 + 40) setLibraryFilter:v2];
    v3 = *(a1 + 56);
    if (v3 != 4)
    {
      v4 = *(a1 + 48);
      if (v4)
      {
        v5 = [v4 photoLibrary];
        v6 = PXCuratedLibraryFetchHighlights(v3, v5, v2);

        [*(a1 + 48) setCollectionListFetchResult:v6];
      }
    }
  }

  if (*(a1 + 56) == 4)
  {
    [*(a1 + 40) setFilterPredicate:*(*(a1 + 32) + 224)];
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 232);

    [v7 setSortDescriptors:v8];
  }
}

- (void)_updatePropertiesDerivedFromZoomLevel
{
  [(PXCuratedLibraryAssetsDataSourceManager *)self setZoomLevelForCurrentDataSourceManager:[(PXCuratedLibraryAssetsDataSourceManager *)self zoomLevel]];

  [(PXCuratedLibraryAssetsDataSourceManager *)self setWantsCuration:1];
}

- (void)_invalidateCuration
{
  v2 = [(PXCuratedLibraryAssetsDataSourceManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCuration];
}

- (void)_updateCuration
{
  p_delegateRespondsTo = &self->_delegateRespondsTo;
  if (self->_delegateRespondsTo.isSelectingAssets && (-[PXCuratedLibraryAssetsDataSourceManager delegate](self, "delegate"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isSelectingAssetsFromCuratedLibraryAssetsDataSourceManager:self], v4, (v5 & 1) != 0) || !p_delegateRespondsTo->visibleAssetCollections)
  {
    v8 = 0;
  }

  else
  {
    v6 = [(PXCuratedLibraryAssetsDataSourceManager *)self delegate];
    v8 = [v6 visibleAssetCollectionsFromCuratedLibraryAssetsDataSourceManager:self];
  }

  v7 = [(PXCuratedLibraryAssetsDataSourceManager *)self _photosDataSourceForZoomLevel:3];
  [v7 setWantsCurationForAllCollections:-[PXCuratedLibraryAssetsDataSourceManager wantsCuration](self collectionsToDiff:{"wantsCuration"), v8}];
}

- (PXCuratedLibraryAssetsDataSourceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateDataSource
{
  v121 = *MEMORY[0x1E69E9840];
  if ([(PXCuratedLibraryAssetsDataSourceManager *)self canLoadData])
  {
    v4 = [(PXCuratedLibraryAssetsDataSourceManager *)self zoomLevelForCurrentDataSourceManager];
    v5 = [(PXCuratedLibraryAssetsDataSourceManager *)self currentDataSourceZoomLevel];
    [(PXCuratedLibraryAssetsDataSourceManager *)self setCurrentDataSourceZoomLevel:v4];
    if (v4 == 4 && (v5 | 4) != 4)
    {
      isForcingSections = self->_isForcingSections;
      self->_isForcingSections = 1;
      if ([(PXCuratedLibraryAssetsDataSourceManager *)self forceAllPhotosAccurateIfNeeded])
      {
        [(PXCuratedLibraryAssetsDataSourceManager *)self signalChange:4];
      }

      self->_isForcingSections = isForcingSections;
    }

    dataSourceManagerByZoomLevel = self->_dataSourceManagerByZoomLevel;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    v9 = [(NSDictionary *)dataSourceManagerByZoomLevel objectForKeyedSubscript:v8];

    if (!v9)
    {
      v51 = [MEMORY[0x1E696AAA8] currentHandler];
      [v51 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManager.m" lineNumber:549 description:{@"missing data source manager for zoom level %li", v4}];
    }

    v10 = [(PXCuratedLibraryAssetsDataSourceManager *)self currentDataSource];
    v11 = [v9 dataSource];
    [(PXCuratedLibraryAssetsDataSourceManager *)self setCurrentDataSource:v11];
    if (v10 == v11 || ([v10 isEqual:v11] & 1) != 0)
    {
      goto LABEL_133;
    }

    if (v5 == v4)
    {
      v12 = [v9 changeHistory];
      v13 = [v12 changeDetailsFromDataSourceIdentifier:objc_msgSend(v10 toDataSourceIdentifier:{"identifier"), objc_msgSend(v11, "identifier")}];

      v14 = 0;
      v15 = 0;
LABEL_132:
      v93[0] = MEMORY[0x1E69E9820];
      v93[1] = 3221225472;
      v93[2] = __60__PXCuratedLibraryAssetsDataSourceManager__updateDataSource__block_invoke_5;
      v93[3] = &unk_1E774A7E0;
      v93[4] = self;
      v94 = v13;
      v95 = v15;
      v98 = v14;
      v96 = v10;
      v11 = v11;
      v97 = v11;
      v69 = v13;
      v70 = v15;
      [(PXCuratedLibraryAssetsDataSourceManager *)self performChanges:v93];

LABEL_133:
      return;
    }

    v14 = 0;
    if (v4 == 4 || v5 == 4)
    {
      v15 = 0;
      v13 = 0;
      goto LABEL_132;
    }

    v90 = [(PXCuratedLibraryAssetsDataSourceManager *)self delegate];
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    if (self->_delegateRespondsTo.willTransitionFromZoomLevelToZoomLevel)
    {
      [v90 curatedLibraryAssetsDataSourceManager:self willTransitionFromZoomLevel:v5 toZoomLevel:v4];
    }

    if (!self->_delegateRespondsTo.dominantAssetCollectionReferenceForZoomLevel)
    {
      v89 = 0;
      v15 = 0;
      v13 = 0;
LABEL_129:
      if (p_delegateRespondsTo->didTransitionFromZoomLevelToZoomLevel)
      {
        [v90 curatedLibraryAssetsDataSourceManager:self didTransitionFromZoomLevel:v5 toZoomLevel:v4];
      }

      v14 = v89;
      goto LABEL_132;
    }

    v87 = [v90 curatedLibraryAssetsDataSourceManager:self dominantAssetCollectionReferenceForZoomLevel:v5];
    if (!v87)
    {
      v89 = 0;
      v15 = 0;
      v13 = 0;
LABEL_128:
      p_delegateRespondsTo = &self->_delegateRespondsTo;
      goto LABEL_129;
    }

    if (!self->_delegateRespondsTo.dominantAssetCollectionReferenceForZoomLevel || ([v90 curatedLibraryAssetsDataSourceManager:self dominantAssetCollectionReferenceForZoomLevel:v4], (oslog = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v17 = [(PXCuratedLibraryAssetsDataSourceManager *)self configuration];
      oslog = [v17 keyAssetCollectionReferenceInDataSource:v11 zoomLevel:v4 matchingAssetCollectionReference:v87 fromDataSource:v10 zoomLevel:v5];

      if (!oslog)
      {
        oslog = PLCuratedLibraryGetLog();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v87;
          *&buf[12] = 2048;
          *&buf[14] = v4;
          _os_log_impl(&dword_1A3C1C000, oslog, OS_LOG_TYPE_DEFAULT, "Couldn't find a match for %@ in zoom level %li. Transitions might not work as expected.", buf, 0x16u);
        }

        v89 = 0;
        v15 = 0;
        v13 = 0;
        goto LABEL_127;
      }
    }

    memset(buf, 0, 32);
    if (v10)
    {
      [v10 indexPathForAssetCollectionReference:v87];
    }

    v113 = 0u;
    v114 = 0u;
    if (v11)
    {
      [v11 indexPathForAssetCollectionReference:oslog];
      v18 = v113;
    }

    else
    {
      v18 = 0;
    }

    v89 = 0;
    if (*buf == *off_1E7721F68 || (v83 = *off_1E7721F68, v18 == *off_1E7721F68))
    {
      v13 = 0;
      v15 = 0;
LABEL_127:

      goto LABEL_128;
    }

    v79 = [v10 numberOfSections];
    v81 = [v11 numberOfSections];
    v91 = *&buf[8];
    v84 = *(&v113 + 1);
    if (!self->_delegateRespondsTo.transitionTypeFromZoomLevelToZoomLevel || (v89 = [v90 curatedLibraryAssetsDataSourceManager:self transitionTypeFromZoomLevel:v5 toZoomLevel:v4]) == 0)
    {
      PXAssertGetLog();
    }

    v19 = self->_isForcingSections;
    self->_isForcingSections = 1;
    if (v5)
    {
      v20 = 5;
    }

    else
    {
      v20 = 0;
    }

    *v116 = 0;
    v117 = v116;
    v118 = 0x2020000000;
    v119 = 0;
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = __60__PXCuratedLibraryAssetsDataSourceManager__updateDataSource__block_invoke;
    v112[3] = &unk_1E774A618;
    v112[4] = v116;
    v112[5] = v84;
    v112[6] = v20;
    [v9 performChanges:v112];
    if (v117[24] == 1)
    {
      v88 = [v9 dataSource];

      [(PXCuratedLibraryAssetsDataSourceManager *)self setCurrentDataSource:v88];
      if ([v88 numberOfSections] != v81)
      {
        v21 = [MEMORY[0x1E696AAA8] currentHandler];
        [v21 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManager.m" lineNumber:608 description:{@"Faulting in section:%ld +- %ld should not change the number of sections:%ld != %ld", v84, v20, v81, objc_msgSend(v88, "numberOfSections")}];
      }
    }

    else
    {
      v88 = v11;
    }

    v22 = oslog;
    self->_isForcingSections = v19;
    v76 = __60__PXCuratedLibraryAssetsDataSourceManager__updateDataSource__block_invoke_2(v10, v5, v91);
    v75 = __60__PXCuratedLibraryAssetsDataSourceManager__updateDataSource__block_invoke_2(v88, v4, v84);
    if (v5 >= v4)
    {
      v23 = v4;
    }

    else
    {
      v23 = v5;
    }

    if (v5 <= v4)
    {
      v24 = v4;
    }

    else
    {
      v24 = v5;
    }

    if (v23 != 2 || v24 != 3)
    {
      if (v5 == 1 && v4 == 2)
      {
        v36 = 1;
      }

      else
      {
        v38 = v5 == 2 && v4 == 1;
        v36 = v38 << 63 >> 63;
      }

      goto LABEL_103;
    }

    if (v5 == 2)
    {
      v25 = v87;
    }

    else
    {
      v25 = oslog;
    }

    if (v5 != 2)
    {
      v22 = v87;
    }

    v26 = v25;
    v27 = v22;
    v28 = [v26 assetCollection];
    v73 = v26;
    v77 = v27;
    v29 = [v27 keyAssetReference];
    v30 = [v29 asset];
    v31 = [v30 creationDate];

    if (PXCuratedLibraryAssetsCollectionRepresentsChapterHeader(v28, 2))
    {
      if (v5 != 2 || *&buf[8] + 1 >= v79)
      {
        goto LABEL_75;
      }

      v110 = *buf + __PAIR128__(1, 0);
      v32.f64[0] = NAN;
      v32.f64[1] = NAN;
      v111 = vnegq_f64(v32);
      v33 = [v10 assetCollectionAtSectionIndexPath:&v110];
      v34 = [oslog assetCollection];
      v35 = [v33 isEqual:v34];
    }

    else
    {
      v39 = [v28 startDate];
      v40 = [v28 endDate];
      v35 = [v31 px_isBetweenDate:v39 andDate:v40];
    }

    if ((v35 & 1) == 0)
    {
      v42 = [v28 startDate];
      [v31 timeIntervalSinceDate:v42];
      v44 = v43;
      v45 = v43 >= 0.0;

      v41 = v31;
      if (v5 == 2)
      {
        v46 = [v76 containsIndex:v91];
        v47 = -1;
        if (v44 >= 0.0)
        {
          v47 = 1;
        }

        if (!v46)
        {
          v47 = 0;
        }

        if (v89 == 1)
        {
          if (v46)
          {
            v52 = v44 < 0.0;
          }

          else
          {
            v52 = v45;
          }

          v48 = [PXVisualPositionsChangeDetails changeDetailsWithCountBeforeChanges:v79 anchorInserted:v52 indexBeforeChanges:v47 + v91 headerIndexesBeforeChanges:v76 countAfterChanges:v81 anchorIndexAfterChanges:v84 headerIndexesAfterChanges:v75];
        }

        else
        {
          if (v89 != 2)
          {
            goto LABEL_76;
          }

          LOBYTE(v71) = 1;
          v48 = [PXVisualPositionsChangeDetails changeDetailsWithCountBeforeChanges:v79 anchorIndexBeforeChanges:v47 + v91 headerIndexesBeforeChanges:v76 countAfterChanges:v81 anchorIndexAfterChanges:v84 headerIndexesAfterChanges:v75 reloadAllIncludingAnchor:v71];
        }
      }

      else
      {
        v49 = [v75 containsIndex:v84];
        v50 = -1;
        if (v44 >= 0.0)
        {
          v50 = 1;
        }

        if (!v49)
        {
          v50 = 0;
        }

        if (v89 == 1)
        {
          if (v49)
          {
            v53 = v44 < 0.0;
          }

          else
          {
            v53 = v45;
          }

          v48 = [PXVisualPositionsChangeDetails changeDetailsWithCountBeforeChanges:v79 anchorIndexBeforeChanges:v91 headerIndexesBeforeChanges:v76 countAfterChanges:v81 anchorRemoved:v53 indexAfterChanges:v50 + v84 headerIndexesAfterChanges:v75];
        }

        else
        {
          if (v89 != 2)
          {
            goto LABEL_76;
          }

          LOBYTE(v71) = 1;
          v48 = [PXVisualPositionsChangeDetails changeDetailsWithCountBeforeChanges:v79 anchorIndexBeforeChanges:v91 headerIndexesBeforeChanges:v76 countAfterChanges:v81 anchorIndexAfterChanges:v50 + v84 headerIndexesAfterChanges:v75 reloadAllIncludingAnchor:v71];
        }
      }

      v15 = v48;
      goto LABEL_101;
    }

LABEL_75:
    v41 = v31;
LABEL_76:
    v15 = 0;
LABEL_101:

    if (v15)
    {
      goto LABEL_109;
    }

    v36 = 0;
LABEL_103:
    if (v89 == 1)
    {
      v54 = [PXVisualPositionsChangeDetails changeDetailsWithCountBeforeChanges:v79 anchorIndexBeforeChanges:v91 headerIndexesBeforeChanges:v76 countAfterChanges:v81 anchorIndexAfterChanges:v84 headerIndexesAfterChanges:v75 anchorFan:v36 anchorReload:0];
    }

    else
    {
      if (v89 != 2)
      {
        v15 = 0;
LABEL_109:
        v92 = [v15 arrayChangeDetailsWithItemsChanged:1];
        v55 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v56 = [off_1E7721450 changeDetailsWithNoIncrementalChanges];
        v57 = [v92 changedIndexes];
        v107[0] = MEMORY[0x1E69E9820];
        v107[1] = 3221225472;
        v107[2] = __60__PXCuratedLibraryAssetsDataSourceManager__updateDataSource__block_invoke_4;
        v107[3] = &unk_1E774A7B8;
        v78 = v55;
        v108 = v78;
        v74 = v56;
        v109 = v74;
        [v57 enumerateIndexesUsingBlock:v107];

        v58 = v84 - 1;
        v59 = 3;
        v60.f64[0] = NAN;
        v60.f64[1] = NAN;
        v85 = vnegq_f64(v60);
        do
        {
          v61 = [v92 indexAfterRevertingChangesFromIndex:v58];
          if (v61 <= 0x7FFFFFFFFFFFFFFELL)
          {
            v62 = [v10 numberOfSections];
            if ((v58 & 0x8000000000000000) == 0 && v61 < v62 && v58 < [v88 numberOfSections])
            {
              v110 = 0u;
              v111 = 0u;
              v105[0] = [v10 identifier];
              v105[1] = v61;
              v106 = v85;
              if (v10)
              {
                [v10 keyAssetIndexPathForSectionIndexPath:v105];
                v63 = 0uLL;
              }

              else
              {
                v63 = 0uLL;
                v110 = 0u;
                v111 = 0u;
              }

              v103 = v63;
              v104 = v63;
              v101[0] = [v88 identifier];
              v101[1] = v58;
              v102 = v85;
              if (v88)
              {
                [v88 keyAssetIndexPathForSectionIndexPath:v101];
                v64 = v103;
              }

              else
              {
                v64 = 0;
                v103 = 0u;
                v104 = 0u;
              }

              if (v110 != v83 && v64 != v83)
              {
                v99 = v110;
                v100 = v111;
                v80 = [v10 assetAtItemIndexPath:&v99];
                v99 = v103;
                v100 = v104;
                v82 = [v88 assetAtItemIndexPath:&v99];
                if ([v80 isEqual:v82])
                {
                  v72 = v111.f64[0];
                  v65 = [v10 numberOfItemsInSection:*(&v110 + 1)];
                  v66 = [off_1E7721450 changeDetailsWithOldKeyItemIndex:*&v72 oldCount:v65 newKeyItemIndex:*&v104.f64[0] newCount:{objc_msgSend(v88, "numberOfItemsInSection:", *(&v103 + 1))}];
                  v67 = [MEMORY[0x1E696AD98] numberWithInteger:v58];
                  [v78 setObject:v66 forKeyedSubscript:v67];
                }
              }
            }
          }

          ++v58;
          --v59;
        }

        while (v59);
        v68 = [[off_1E77218B0 alloc] initWithFromDataSourceIdentifier:objc_msgSend(v10 toDataSourceIdentifier:"identifier") sectionChanges:objc_msgSend(v88 itemChangeDetailsBySection:"identifier") subitemChangeDetailsByItemBySection:{v92, v78, 0}];
        v115 = v68;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v115 count:1];

        _Block_object_dispose(v116, 8);
        v11 = v88;
        goto LABEL_127;
      }

      LOBYTE(v71) = 0;
      v54 = [PXVisualPositionsChangeDetails changeDetailsWithCountBeforeChanges:v79 anchorIndexBeforeChanges:v91 headerIndexesBeforeChanges:v76 countAfterChanges:v81 anchorIndexAfterChanges:v84 headerIndexesAfterChanges:v75 reloadAllIncludingAnchor:v71];
    }

    v15 = v54;
    goto LABEL_109;
  }
}

uint64_t __60__PXCuratedLibraryAssetsDataSourceManager__updateDataSource__block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 currentDataSource];
  [v2 setDataSource:v3 changeDetailsArray:*(a1 + 40)];

  [*(a1 + 32) setLastVisualPositionsChangeDetails:*(a1 + 48)];
  [*(a1 + 32) setLastTransitionType:*(a1 + 72)];
  [*(a1 + 32) setLastVisualPositionsChangeFromDataSourceIdentifier:{objc_msgSend(*(a1 + 56), "identifier")}];
  v4 = [*(a1 + 64) identifier];
  v5 = *(a1 + 32);

  return [v5 setLastVisualPositionsChangeToDataSourceIdentifier:v4];
}

uint64_t __68__PXCuratedLibraryAssetsDataSourceManager__updateDataSourceManagers__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) zoomLevel];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:v2];
  v5 = [v3 objectForKeyedSubscript:v4];
  [v5 performChanges:&__block_literal_global_246532];

  v6 = *(a1 + 40);

  return [v6 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_240];
}

void __68__PXCuratedLibraryAssetsDataSourceManager__updateDataSourceManagers__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [off_1E7721858 sharedScheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__PXCuratedLibraryAssetsDataSourceManager__updateDataSourceManagers__block_invoke_6;
  v6[3] = &unk_1E774C648;
  v7 = v3;
  v5 = v3;
  [v4 scheduleMainQueueTask:v6];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXZoomLevelDataSourceManagerObservationContext == a5)
  {
    if ((v6 & 1) != 0 && !self->_isForcingSections)
    {
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __72__PXCuratedLibraryAssetsDataSourceManager_observable_didChange_context___block_invoke;
      v20 = &unk_1E774A5F0;
      v21 = self;
      v10 = &v17;
      goto LABEL_5;
    }
  }

  else
  {
    if (PXContentSyndicationConfigurationObservationContext_246500 != a5)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManager.m" lineNumber:808 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((v6 & 5) != 0)
    {
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __72__PXCuratedLibraryAssetsDataSourceManager_observable_didChange_context___block_invoke_2;
      v15 = &unk_1E774A5F0;
      v16 = self;
      v10 = &v12;
LABEL_5:
      [(PXCuratedLibraryAssetsDataSourceManager *)self performChanges:v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21];
    }
  }
}

uint64_t __72__PXCuratedLibraryAssetsDataSourceManager_observable_didChange_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateDataSource];
  v2 = *(a1 + 32);

  return [v2 signalChange:4];
}

void __72__PXCuratedLibraryAssetsDataSourceManager_observable_didChange_context___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 192);
  v3 = a2;
  [v3 setCanIncludeUnsavedSyndicatedAssets:{objc_msgSend(v2, "showUnsavedSyndicatedContentInPhotosGrids")}];
}

uint64_t __60__PXCuratedLibraryAssetsDataSourceManager__updateDataSource__block_invoke(void *a1, void *a2)
{
  result = [a2 forceAccurateSection:a1[5] andSectionsBeforeAndAfter:a1[6]];
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

id __60__PXCuratedLibraryAssetsDataSourceManager__updateDataSource__block_invoke_2(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v7 = [v5 numberOfSections];
  v8 = [v5 identifier];
  v9 = a3 - 6;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v14 = vnegq_f64(v10);
  do
  {
    if (v9 + 1 >= 0 && v9 + 1 < v7)
    {
      v15[0] = v8;
      v15[1] = v9 + 1;
      v16 = v14;
      v11 = [v5 assetCollectionAtSectionIndexPath:v15];
      if (PXCuratedLibraryAssetsCollectionRepresentsChapterHeader(v11, a2))
      {
        [v6 addIndex:v9 + 1];
      }
    }

    ++v9;
  }

  while (v9 < a3 + 5);
  v12 = [v6 copy];

  return v12;
}

void __60__PXCuratedLibraryAssetsDataSourceManager__updateDataSource__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v3 setObject:v2 forKeyedSubscript:v4];
}

- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    PXAssertGetLog();
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__PXCuratedLibraryAssetsDataSourceManager_resumeChangeDeliveryAndBackgroundLoading___block_invoke;
  v5[3] = &unk_1E774C200;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __84__PXCuratedLibraryAssetsDataSourceManager_resumeChangeDeliveryAndBackgroundLoading___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) dataSourceManagerForZoomLevel:{objc_msgSend(a2, "integerValue")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__PXCuratedLibraryAssetsDataSourceManager_resumeChangeDeliveryAndBackgroundLoading___block_invoke_2;
  v8[3] = &unk_1E774A6B8;
  v9 = v5;
  v7 = v5;
  [v6 performChanges:v8];
}

- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  dataSourceManagerByZoomLevel = self->_dataSourceManagerByZoomLevel;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__PXCuratedLibraryAssetsDataSourceManager_pauseChangeDeliveryWithTimeout_identifier___block_invoke;
  v14[3] = &unk_1E774A690;
  v17 = a3;
  v15 = v6;
  v9 = v7;
  v16 = v9;
  v10 = v6;
  [(NSDictionary *)dataSourceManagerByZoomLevel enumerateKeysAndObjectsUsingBlock:v14];
  v11 = v16;
  v12 = v9;

  return v9;
}

void __85__PXCuratedLibraryAssetsDataSourceManager_pauseChangeDeliveryWithTimeout_identifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PXCuratedLibraryAssetsDataSourceManager_pauseChangeDeliveryWithTimeout_identifier___block_invoke_2;
  v7[3] = &unk_1E774A668;
  v11 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v5;
  v6 = v5;
  [a3 performChanges:v7];
}

void __85__PXCuratedLibraryAssetsDataSourceManager_pauseChangeDeliveryWithTimeout_identifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 pauseChangeDeliveryWithTimeout:*(a1 + 32) identifier:*(a1 + 56)];
  [*(a1 + 40) setObject:v3 forKeyedSubscript:*(a1 + 48)];
}

- (BOOL)forceAccurateSectionsIfNeeded:(id)a3 inZoomLevel:(int64_t)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = [(PXCuratedLibraryAssetsDataSourceManager *)self dataSourceManagerForZoomLevel:a4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__PXCuratedLibraryAssetsDataSourceManager_forceAccurateSectionsIfNeeded_inZoomLevel___block_invoke;
  v10[3] = &unk_1E774A640;
  v12 = &v13;
  v8 = v6;
  v11 = v8;
  [v7 performChanges:v10];
  LOBYTE(self) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return self;
}

uint64_t __85__PXCuratedLibraryAssetsDataSourceManager_forceAccurateSectionsIfNeeded_inZoomLevel___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 forceAccurateSectionsIfNeeded:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)forceAccurateAllSectionsIfNeeded
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(NSDictionary *)self->_dataSourceManagerByZoomLevel objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __75__PXCuratedLibraryAssetsDataSourceManager_forceAccurateAllSectionsIfNeeded__block_invoke;
        v9[3] = &unk_1E774A5C8;
        v9[4] = &v14;
        [v6 performChanges:v9];
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v18 count:16];
    }

    while (v3);
  }

  v7 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v7;
}

uint64_t __75__PXCuratedLibraryAssetsDataSourceManager_forceAccurateAllSectionsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 forceAccurateAllSectionsIfNeeded];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (BOOL)forceAccurateSection:(int64_t)a3 andSectionsBeforeAndAfter:(int64_t)a4
{
  v6 = [(PXCuratedLibraryAssetsDataSourceManager *)self currentAssetsDataSourceManager];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __90__PXCuratedLibraryAssetsDataSourceManager_forceAccurateSection_andSectionsBeforeAndAfter___block_invoke;
  v8[3] = &unk_1E774A618;
  v8[4] = &v9;
  v8[5] = a3;
  v8[6] = a4;
  [v6 performChanges:v8];
  LOBYTE(a4) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return a4;
}

uint64_t __90__PXCuratedLibraryAssetsDataSourceManager_forceAccurateSection_andSectionsBeforeAndAfter___block_invoke(void *a1, void *a2)
{
  result = [a2 forceAccurateSection:a1[5] andSectionsBeforeAndAfter:a1[6]];
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

- (BOOL)forceAccurateSectionsIfNeeded:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(PXCuratedLibraryAssetsDataSourceManager *)self forceAccurateSectionsIfNeeded:v4 inZoomLevel:[(PXCuratedLibraryAssetsDataSourceManager *)self currentDataSourceZoomLevel]];

  return self;
}

- (void)setTransientKeyAsset:(id)a3 forAssetCollection:(id)a4 zoomLevel:(int64_t)a5
{
  v11 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    v10 = [(PXCuratedLibraryAssetsDataSourceManager *)self _photosDataSourceForZoomLevel:a5];
    [v10 setKeyAsset:v11 forAssetCollection:v9];
  }
}

- (id)firstAssetCollectionReferenceInDataSourceForZoomLevel:(int64_t)a3 withParent:(id)a4
{
  v4 = [(PXCuratedLibraryAssetsDataSourceManager *)self assetCollectionReferencesInDataSourceForZoomLevel:a3 withParentAssetCollectionReference:a4];
  v5 = [v4 firstObject];

  return v5;
}

- (id)assetCollectionReferencesInDataSourceForZoomLevel:(int64_t)a3 withParentAssetCollectionReference:(id)a4 assetCollectionReferenceWithSameKeyAssetAsParent:(id *)a5
{
  v8 = a4;
  v9 = [(PXCuratedLibraryAssetsDataSourceManager *)self dataSourceForZoomLevel:a3];
  v10 = [v9 assetCollectionReferencesWithParentAssetCollectionReference:v8 assetCollectionReferenceWithSameKeyAssetAsParent:a5];

  return v10;
}

- (id)assetCollectionReferencesInDataSourceForZoomLevel:(int64_t)a3 withParentAssetCollectionReference:(id)a4
{
  v6 = a4;
  v7 = [(PXCuratedLibraryAssetsDataSourceManager *)self dataSourceForZoomLevel:a3];
  v8 = [v7 assetCollectionReferencesWithParentAssetCollectionReference:v6];

  return v8;
}

- (BOOL)forceAllPhotosAccurateIfNeeded
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [(PXCuratedLibraryAssetsDataSourceManager *)self dataSourceManagerForZoomLevel:4];
  v3 = [v2 dataSource];
  v4 = [v3 areAllSectionsConsideredAccurate];

  if ((v4 & 1) == 0)
  {
    v5 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Forcing all photos to be accurate.", buf, 2u);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__PXCuratedLibraryAssetsDataSourceManager_forceAllPhotosAccurateIfNeeded__block_invoke;
    v8[3] = &unk_1E774A5C8;
    v8[4] = &v10;
    [v2 performChanges:v8];
  }

  v6 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __73__PXCuratedLibraryAssetsDataSourceManager_forceAllPhotosAccurateIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 forceAccurateAllSectionsIfNeeded];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (PXPhotoKitAssetsDataSourceManager)currentPhotoKitAssetsDataSourceManager
{
  dataSourceManagerByZoomLevel = self->_dataSourceManagerByZoomLevel;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXCuratedLibraryAssetsDataSourceManager zoomLevelForCurrentDataSourceManager](self, "zoomLevelForCurrentDataSourceManager")}];
  v4 = [(NSDictionary *)dataSourceManagerByZoomLevel objectForKeyedSubscript:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (PXAssetsDataSourceManager)currentAssetsDataSourceManager
{
  dataSourceManagerByZoomLevel = self->_dataSourceManagerByZoomLevel;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXCuratedLibraryAssetsDataSourceManager zoomLevelForCurrentDataSourceManager](self, "zoomLevelForCurrentDataSourceManager")}];
  v4 = [(NSDictionary *)dataSourceManagerByZoomLevel objectForKeyedSubscript:v3];

  return v4;
}

- (id)_photosDataSourceForZoomLevel:(int64_t)a3
{
  dataSourceManagerByZoomLevel = self->_dataSourceManagerByZoomLevel;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSDictionary *)dataSourceManagerByZoomLevel objectForKeyedSubscript:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 photosDataSource];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_enumeratePhotoKitDataDataSourceManagers:(id)a3
{
  v8 = a3;
  for (i = 1; i != 5; ++i)
  {
    dataSourceManagerByZoomLevel = self->_dataSourceManagerByZoomLevel;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:i];
    v7 = [(NSDictionary *)dataSourceManagerByZoomLevel objectForKeyedSubscript:v6];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8[2](v8, i, v7);
    }
  }
}

- (unint64_t)libraryStateForZoomLevel:(int64_t)a3
{
  dataSourceManagerByZoomLevel = self->_dataSourceManagerByZoomLevel;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSDictionary *)dataSourceManagerByZoomLevel objectForKeyedSubscript:v6];
  v8 = [v7 dataSource];

  v9 = [(PXCuratedLibraryAssetsDataSourceManager *)self _photosDataSourceForZoomLevel:a3];
  v10 = [v9 isBackgroundFetching];
  if (v8 && [v8 containsAnyItems])
  {
    v10 |= 2uLL;
  }

  return v10;
}

- (id)dataSourceForZoomLevel:(int64_t)a3
{
  v3 = [(PXCuratedLibraryAssetsDataSourceManager *)self dataSourceManagerForZoomLevel:a3];
  v4 = [v3 dataSource];

  return v4;
}

- (id)dataSourceManagerForZoomLevel:(int64_t)a3
{
  dataSourceManagerByZoomLevel = self->_dataSourceManagerByZoomLevel;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v8 = [(NSDictionary *)dataSourceManagerByZoomLevel objectForKeyedSubscript:v7];

  if (!v8)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManager.m" lineNumber:225 description:{@"missing data source manager for zoom level %li", a3}];
  }

  return v8;
}

- (void)setLibraryFilter:(int64_t)a3
{
  if (self->_libraryFilter != a3)
  {
    self->_libraryFilter = a3;
    [(PXCuratedLibraryAssetsDataSourceManager *)self _invalidateDataSourceProperties];
  }
}

- (void)setCanIncludeUnsavedSyndicatedAssets:(BOOL)a3
{
  if (self->_canIncludeUnsavedSyndicatedAssets != a3)
  {
    self->_canIncludeUnsavedSyndicatedAssets = a3;
    v8 = [(PXCuratedLibraryAssetsDataSourceManager *)self _photosDataSourceForZoomLevel:4];
    [v8 setCanIncludeUnsavedSyndicatedAssets:self->_canIncludeUnsavedSyndicatedAssets];
    v4 = +[PXContentSyndicationSettings sharedInstance];
    v5 = [v4 enableFilteringCuratedGridsForContentSyndication];

    if (v5)
    {
      for (i = 1; i != 4; ++i)
      {
        v7 = [(PXCuratedLibraryAssetsDataSourceManager *)self _photosDataSourceForZoomLevel:i];
        [v7 setCanIncludeUnsavedSyndicatedAssets:self->_canIncludeUnsavedSyndicatedAssets];
      }
    }

    [(PXCuratedLibraryAssetsDataSourceManager *)self signalChange:64];
  }
}

- (void)setAllPhotosSortDescriptors:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_allPhotosSortDescriptors != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      allPhotosSortDescriptors = self->_allPhotosSortDescriptors;
      self->_allPhotosSortDescriptors = v7;

      [(PXCuratedLibraryAssetsDataSourceManager *)self _invalidateDataSourceProperties];
      [(PXCuratedLibraryAssetsDataSourceManager *)self signalChange:32];
      v5 = v9;
    }
  }
}

- (void)setAllPhotosFilterPredicate:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_allPhotosFilterPredicate != v4)
  {
    v9 = v4;
    v6 = [(NSPredicate *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSPredicate *)v9 copy];
      allPhotosFilterPredicate = self->_allPhotosFilterPredicate;
      self->_allPhotosFilterPredicate = v7;

      [(PXCuratedLibraryAssetsDataSourceManager *)self _invalidateDataSourceProperties];
      [(PXCuratedLibraryAssetsDataSourceManager *)self signalChange:16];
      v5 = v9;
    }
  }
}

- (void)setZoomLevel:(int64_t)a3
{
  if (self->_zoomLevel != a3)
  {
    self->_zoomLevel = a3;
    [(PXCuratedLibraryAssetsDataSourceManager *)self signalChange:2];

    [(PXCuratedLibraryAssetsDataSourceManager *)self _invalidatePropertiesDerivedFromZoomLevel];
  }
}

- (int64_t)transitionTypeFromDataSourceIdentifier:(int64_t)a3 toDataSourceIdentifier:(int64_t)a4
{
  if ([(PXCuratedLibraryAssetsDataSourceManager *)self lastVisualPositionsChangeFromDataSourceIdentifier]!= a3 || [(PXCuratedLibraryAssetsDataSourceManager *)self lastVisualPositionsChangeToDataSourceIdentifier]!= a4)
  {
    return 0;
  }

  return [(PXCuratedLibraryAssetsDataSourceManager *)self lastTransitionType];
}

- (id)visualPositionsChangeDetailsFromDataSourceIdentifier:(int64_t)a3 toDataSourceIdentifier:(int64_t)a4
{
  if ([(PXCuratedLibraryAssetsDataSourceManager *)self lastVisualPositionsChangeFromDataSourceIdentifier]== a3 && [(PXCuratedLibraryAssetsDataSourceManager *)self lastVisualPositionsChangeToDataSourceIdentifier]== a4)
  {
    v6 = [(PXCuratedLibraryAssetsDataSourceManager *)self lastVisualPositionsChangeDetails];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)assetsInAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryAssetsDataSourceManager *)self dataSourceManagerForZoomLevel:3];
  v6 = [v5 dataSource];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [off_1E7721488 alloc];
    v8 = *(off_1E7722228 + 1);
    v13 = *off_1E7722228;
    v14 = v8;
    v9 = [v7 initWithAssetCollection:v4 keyAssetReference:0 indexPath:&v13];
    v13 = 0u;
    v14 = 0u;
    [v6 indexPathForAssetCollectionReference:v9];
    v10 = 0;
    if (v13 != *off_1E7721F68)
    {
      v12[0] = v13;
      v12[1] = v14;
      v10 = [v6 assetsInSectionIndexPath:v12];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setCurationEnabled:(BOOL)a3 forAssetCollection:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(PXCuratedLibraryAssetsDataSourceManager *)self _photosDataSourceForZoomLevel:3];
  [v7 setWantsCuration:v4 forAssetCollection:v6];
}

- (void)setWantsCuration:(BOOL)a3
{
  if (self->_wantsCuration != a3)
  {
    self->_wantsCuration = a3;
    [(PXCuratedLibraryAssetsDataSourceManager *)self _invalidateCuration];

    [(PXCuratedLibraryAssetsDataSourceManager *)self _invalidateDataSource];
  }
}

- (void)setZoomLevelForCurrentDataSourceManager:(int64_t)a3
{
  if (self->_zoomLevelForCurrentDataSourceManager != a3)
  {
    self->_zoomLevelForCurrentDataSourceManager = a3;
    [(PXCuratedLibraryAssetsDataSourceManager *)self _invalidateDataSource];
  }
}

- (void)setCanLoadData:(BOOL)a3
{
  if (self->_canLoadData != a3)
  {
    self->_canLoadData = a3;
    [(PXCuratedLibraryAssetsDataSourceManager *)self _invalidateDataSourceManagers];

    [(PXCuratedLibraryAssetsDataSourceManager *)self signalChange:8];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    p_delegateRespondsTo->isSelectingAssets = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->visibleAssetCollections = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->willTransitionFromZoomLevelToZoomLevel = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->didTransitionFromZoomLevelToZoomLevel = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->dominantAssetCollectionReferenceForZoomLevel = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->transitionTypeFromZoomLevelToZoomLevel = objc_opt_respondsToSelector() & 1;
  }
}

- (PXCuratedLibraryAssetsDataSourceManager)initWithConfiguration:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXCuratedLibraryAssetsDataSourceManager;
  v6 = [(PXSectionedDataSourceManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v7->_enableDays = [v5 enableDays];
    v7->_libraryFilter = 0;
    v8 = [[off_1E7721940 alloc] initWithTarget:v7 needsUpdateSelector:sel_setNeedsUpdate];
    updater = v7->_updater;
    v7->_updater = v8;

    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateDataSourceManagers];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateDataSourceProperties];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updatePropertiesDerivedFromZoomLevel];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateCuration];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateDataSource];
  }

  return v7;
}

- (PXCuratedLibraryAssetsDataSourceManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryAssetsDataSourceManager.m" lineNumber:69 description:{@"%s is not available as initializer", "-[PXCuratedLibraryAssetsDataSourceManager init]"}];

  abort();
}

@end