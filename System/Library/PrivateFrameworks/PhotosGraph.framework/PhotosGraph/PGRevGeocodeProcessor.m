@interface PGRevGeocodeProcessor
+ (id)momentsRequiringRevGeocodingWithUUIDs:(id)a3 inPhotoLibrary:(id)a4 defaultToAllAssets:(BOOL)a5 loggingConnection:(id)a6;
+ (id)reverseGeoFetchOptionsForPhotoLibrary:(id)a3;
- (BOOL)_populateCacheWithRegions:(id)a3 withProgressBlock:(id)a4;
- (BOOL)_regionIsHome:(id)a3;
- (BOOL)_revGeocodeAssetClusters:(id)a3 progressBlock:(id)a4;
- (BOOL)_setRevGeoLocationData:(id)a3 onAssets:(id)a4;
- (BOOL)revGeocodeAssets:(id)a3 progressBlock:(id)a4;
- (BOOL)revGeocodeMoments:(id)a3 progressBlock:(id)a4;
- (PGRevGeocodeProcessor)initWithPhotoLibrary:(id)a3 homeLocations:(id)a4 loggingConnection:(id)a5 locationCache:(id)a6;
- (PHPhotoLibrary)photoLibrary;
- (id)_clusterAssets:(id)a3 assetsWithInvalidLocationInMoment:(id *)a4;
- (id)_clusterAssetsInMoment:(id)a3 assetsWithInvalidLocationInMoment:(id *)a4;
- (id)_revGeoLocationDataForRegion:(id)a3;
- (void)_processMetricsOfAssetClustersInMoment:(id)a3;
- (void)_resetMetrics;
- (void)_updateGeoInfoForAssetClusters:(id)a3 progressBlock:(id)a4;
@end

@implementation PGRevGeocodeProcessor

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (void)_resetMetrics
{
  self->_numberOfAssetClustersRevGeocoded = 0;
  *&self->_numberOfAssetClusters100mPlusFromCenter = 0u;
  *&self->_numberOfAssetClustersWithin50mOfCenter = 0u;
  *&self->_numberOfAssetClustersWithin10mOfCenter = 0u;
  *&self->_sumNumberOfAssetsPerCluster = 0u;
  *&self->_sumNumberOfAssetClustersPerMoment = 0u;
}

- (void)_processMetricsOfAssetClustersInMoment:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = a3;
  v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v28)
  {
    v27 = *v36;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v35 + 1) + 8 * i);
        v6 = [v5 assets];
        v7 = [v6 count];

        v8 = [v5 region];
        v33 = 0;
        v34 = 0;
        [v8 center];
        v33 = v9;
        v34 = v10;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v11 = [v5 assets];
        v12 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v30;
          v15 = 0.0;
LABEL_8:
          v16 = 0;
          while (1)
          {
            if (*v30 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = [*(*(&v29 + 1) + 8 * v16) location];
            [v17 coordinate];

            CLLocationCoordinate2DGetDistanceFrom();
            if (v15 < v18)
            {
              v15 = v18;
            }

            if (v15 >= 100.0)
            {
              break;
            }

            if (v13 == ++v16)
            {
              v13 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
              if (v13)
              {
                goto LABEL_8;
              }

              break;
            }
          }

          v19 = 104;
          if (v15 < 100.0)
          {
            v19 = 96;
          }

          p_numberOfAssetClustersWithin50mOfCenter = (self + v19);
          if (v15 < 50.0)
          {
            p_numberOfAssetClustersWithin50mOfCenter = &self->_numberOfAssetClustersWithin50mOfCenter;
          }

          if (v15 < 20.0)
          {
            p_numberOfAssetClustersWithin50mOfCenter = &self->_numberOfAssetClustersWithin20mOfCenter;
          }

          if (v15 < 10.0)
          {
            p_numberOfAssetClustersWithin50mOfCenter = &self->_numberOfAssetClustersWithin10mOfCenter;
          }
        }

        else
        {

          p_numberOfAssetClustersWithin50mOfCenter = &self->_numberOfAssetClustersWithin10mOfCenter;
        }

        *p_numberOfAssetClustersWithin50mOfCenter = *p_numberOfAssetClustersWithin50mOfCenter + 1.0;
        v21 = self->_sumSquareNumberOfAssetsPerCluster + (v7 * v7);
        self->_sumNumberOfAssetsPerCluster = self->_sumNumberOfAssetsPerCluster + v7;
        self->_sumSquareNumberOfAssetsPerCluster = v21;
      }

      v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v28);
  }

  v22 = [obj count];
  v23 = self->_sumSquareNumberOfAssetClustersPerMoment + (v22 * v22);
  self->_sumNumberOfAssetClustersPerMoment = self->_sumNumberOfAssetClustersPerMoment + v22;
  self->_sumSquareNumberOfAssetClustersPerMoment = v23;
  v24.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v24.i64[1] = v22;
  *&self->_numberOfMomentsRevGeocoded = vaddq_s64(*&self->_numberOfMomentsRevGeocoded, v24);

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_clusterAssets:(id)a3 assetsWithInvalidLocationInMoment:(id *)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB18] array];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v54;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v54 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v53 + 1) + 8 * i);
        v13 = MEMORY[0x277D3ACD0];
        [v12 locationCoordinate];
        if ([v13 canUseCoordinate:?])
        {
          v14 = v7;
        }

        else
        {
          v14 = v6;
        }

        [v14 addObject:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v9);
  }

  if (a4)
  {
    v15 = v6;
    *a4 = v6;
  }

  if ([v7 count])
  {
    v40 = v6;
    v16 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:&__block_literal_global_56004];
    [v16 setMaximumDistance:20.0];
    [v16 setMinimumNumberOfObjects:1];
    v38 = v16;
    v39 = v7;
    v17 = [v16 performWithDataset:v7 progressBlock:0];
    v43 = [MEMORY[0x277CBEB18] array];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v42 = v17;
    v18 = [v42 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v50;
      v21 = *MEMORY[0x277CE4208];
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v50 != v20)
          {
            objc_enumerationMutation(v42);
          }

          v23 = *(*(&v49 + 1) + 8 * j);
          v24 = [v23 meanRegion:20.0];
          if (v24)
          {
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v25 = [v23 objects];
            v26 = [v25 countByEnumeratingWithState:&v45 objects:v57 count:16];
            v27 = v21;
            if (v26)
            {
              v28 = v26;
              v29 = *v46;
              v27 = v21;
              do
              {
                for (k = 0; k != v28; ++k)
                {
                  if (*v46 != v29)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v31 = [*(*(&v45 + 1) + 8 * k) coarseLocationProperties];
                  [v31 gpsHorizontalAccuracy];
                  v27 = fmax(v27, v32);
                }

                v28 = [v25 countByEnumeratingWithState:&v45 objects:v57 count:16];
              }

              while (v28);
            }

            [v24 setClsHorizontalAccuracy:v27];
            v33 = [PGAssetCluster alloc];
            v34 = [v23 objects];
            v35 = [(PGAssetCluster *)v33 initWithAssets:v34 region:v24];

            [v43 addObject:v35];
          }
        }

        v19 = [v42 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v19);
    }

    [(PGRevGeocodeProcessor *)self _processMetricsOfAssetClustersInMoment:v43];
    v7 = v39;
    v6 = v40;
  }

  else
  {
    v43 = MEMORY[0x277CBEBF8];
  }

  v36 = *MEMORY[0x277D85DE8];

  return v43;
}

double __74__PGRevGeocodeProcessor__clusterAssets_assetsWithInvalidLocationInMoment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 coarseLocationProperties];
  [v6 gpsHorizontalAccuracy];
  v8 = v7;

  v9 = [v5 coarseLocationProperties];
  [v9 gpsHorizontalAccuracy];
  v11 = v10;

  LODWORD(v9) = [MEMORY[0x277D3ACD0] horizontalAccuracyIsCoarse:v8];
  v12 = 21.0;
  if (v9 == [MEMORY[0x277D3ACD0] horizontalAccuracyIsCoarse:v11])
  {
    [v4 locationCoordinate];
    [v5 locationCoordinate];
    CLLocationCoordinate2DGetDistanceFrom();
    v12 = v13;
  }

  return v12;
}

- (id)_clusterAssetsInMoment:(id)a3 assetsWithInvalidLocationInMoment:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [(PGRevGeocodeProcessor *)self photoLibrary];
  v9 = [v7 reverseGeoFetchOptionsForPhotoLibrary:v8];

  v10 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v6 options:v9];

  v11 = [(PGRevGeocodeProcessor *)self _clusterAssets:v10 assetsWithInvalidLocationInMoment:a4];

  return v11;
}

- (BOOL)_regionIsHome:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 radius];
  v6 = v5;
  [v4 center];
  v25 = v7;
  v26 = v8;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [(PGRevGeocodeProcessor *)self homeLocations];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v10)
  {
    v11 = v6 + 100.0;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v21 + 1) + 8 * i) coordinate];
        v19 = v14;
        v20 = v15;
        CLLocationCoordinate2DGetDistanceFrom();
        if (v16 <= v11)
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:{16, v19, v20}];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_revGeoLocationDataForRegion:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(CLSLocationCache *)self->_locationCache placemarksForLocation:v4];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v18 + 1) + 8 * i) revGeoLocationData];
        if (v10)
        {
          v14 = v10;
          v15 = [MEMORY[0x277D3AD68] infoFromPlistData:v10];
          [v15 setIsHome:{-[PGRevGeocodeProcessor _regionIsHome:](self, "_regionIsHome:", v4)}];
          v13 = [v15 plistData];

          v12 = v5;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = +[PGLogging sharedLogging];
  v12 = [v11 loggingConnection];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138478083;
    v23 = v4;
    v24 = 2113;
    v25 = v5;
    _os_log_error_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_ERROR, "AssetsRevGeocoding: placemarks for region (%{private}@) did not contain rev geo data: (%{private}@)", buf, 0x16u);
  }

  v13 = 0;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)_populateCacheWithRegions:(id)a3 withProgressBlock:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D27720];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithLocationCache:self->_locationCache];
  v10 = objc_alloc(MEMORY[0x277D277A0]);
  v23[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v12 = [v10 initWithQueryPerformers:v11];

  v13 = [(PGRevGeocodeProcessor *)self loggingConnection];
  [v12 setLoggingConnection:v13];

  v20 = 0;
  v14 = [v12 createCacheForRegions:v8 progressBlock:v7 error:&v20];

  v15 = v20;
  if ((v14 & 1) == 0)
  {
    v16 = +[PGLogging sharedLogging];
    v17 = [v16 loggingConnection];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v15;
      _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "AssetsRevGeocoding: Could not create cache for regions with error (%@)", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_updateGeoInfoForAssetClusters:(id)a3 progressBlock:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8)
  {
    v9 = v8;
    v26 = v7;
    v10 = _Block_copy(v7);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 1.0 / v9;
      v15 = *v30;
      v16 = 0.0;
      v17 = 0.0;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          if (v10)
          {
            Current = CFAbsoluteTimeGetCurrent();
            if (Current - v17 >= 0.01)
            {
              v28 = 0;
              v10[2](v10, &v28, v16);
              if (v28)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v34 = 337;
                  v35 = 2080;
                  v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGRevGeocodeProcessor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                objc_autoreleasePoolPop(v20);

                v7 = v26;
                v6 = v27;
                goto LABEL_23;
              }

              v17 = Current;
            }
          }

          v22 = [v19 region];
          v23 = [(PGRevGeocodeProcessor *)self _revGeoLocationDataForRegion:v22];

          v24 = [v19 assets];
          [(PGRevGeocodeProcessor *)self _setRevGeoLocationData:v23 onAssets:v24];

          v16 = v14 + v16;
          objc_autoreleasePoolPop(v20);
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v17 = 0.0;
    }

    v7 = v26;
    v6 = v27;
    if (v10)
    {
      if (CFAbsoluteTimeGetCurrent() - v17 >= 0.01)
      {
        v28 = 0;
        v10[2](v10, &v28, 1.0);
        if (v28)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v34 = 345;
            v35 = 2080;
            v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGRevGeocodeProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

LABEL_23:
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)_revGeocodeAssetClusters:(id)a3 progressBlock:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _Block_copy(v7);
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v9 = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v48 count:16];
  if (v11)
  {
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v32 + 1) + 8 * i) region];
        [v9 addObject:v14];
      }

      v11 = [v10 countByEnumeratingWithState:&v32 objects:v48 count:16];
    }

    while (v11);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __64__PGRevGeocodeProcessor__revGeocodeAssetClusters_progressBlock___block_invoke;
  v27[3] = &unk_27888A188;
  v15 = v8;
  v28 = v15;
  v29 = &v36;
  v30 = &v40;
  v31 = 0x3F847AE147AE147BLL;
  if ([(PGRevGeocodeProcessor *)self _populateCacheWithRegions:v9 withProgressBlock:v27])
  {
    if (!v15 || (Current = CFAbsoluteTimeGetCurrent(), Current - v37[3] < 0.01) || (v37[3] = Current, v26 = 0, (*(v15 + 2))(v15, &v26, 0.5), v17 = *(v41 + 24) | v26, *(v41 + 24) = v17, (v17 & 1) == 0))
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __64__PGRevGeocodeProcessor__revGeocodeAssetClusters_progressBlock___block_invoke_276;
      v21[3] = &unk_27888A188;
      v22 = v15;
      v23 = &v36;
      v24 = &v40;
      v25 = 0x3F847AE147AE147BLL;
      [(PGRevGeocodeProcessor *)self _updateGeoInfoForAssetClusters:v10 progressBlock:v21];

      v18 = 1;
      goto LABEL_16;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v45 = 313;
      v46 = 2080;
      v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGRevGeocodeProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  v18 = 0;
LABEL_16:

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void __64__PGRevGeocodeProcessor__revGeocodeAssetClusters_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __64__PGRevGeocodeProcessor__revGeocodeAssetClusters_progressBlock___block_invoke_276(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)_setRevGeoLocationData:(id)a3 onAssets:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v5 = a4;
  v40 = [MEMORY[0x277D27728] sharedLocationShifter];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v49;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v49 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v48 + 1) + 8 * i);
        v13 = [v12 photosOneUpProperties];
        v14 = [v13 shiftedLocationIsValid];

        if (v14)
        {
          v15 = [MEMORY[0x277CBEB68] null];
          [v6 addObject:v15];
        }

        else
        {
          v16 = [v12 location];
          v15 = v16;
          if (v16 && ([v16 coordinate], v18 = v17, v20 = v19, (objc_msgSend(MEMORY[0x277D3ACD0], "canUseCoordinate:") & 1) != 0) && (objc_msgSend(MEMORY[0x277D27728], "isLocationShiftRequiredForCoordinate:", v18, v20) & 1) != 0)
          {
            [v40 shiftedCoordinateForOriginalCoordinate:{v18, v20}];
            v23 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v21 longitude:v22];
          }

          else
          {
            v23 = [MEMORY[0x277CBEB68] null];
          }

          v24 = v23;
          [v6 addObject:v23];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v9);
  }

  v25 = [v7 count];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    while (1)
    {
      v28 = v27 + 1000;
      v29 = v27 + 1000 >= v26 ? v26 : v27 + 1000;
      v30 = [(PGRevGeocodeProcessor *)self photoLibrary];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __57__PGRevGeocodeProcessor__setRevGeoLocationData_onAssets___block_invoke;
      v42[3] = &unk_278886880;
      v46 = v27;
      v47 = v29;
      v43 = v7;
      v44 = v6;
      v45 = v39;
      v41 = 0;
      v31 = [v30 performChangesAndWait:v42 error:&v41];
      v32 = v41;

      if ((v31 & 1) == 0)
      {
        break;
      }

      v27 = v28;
      if (v28 >= v26)
      {
        goto LABEL_23;
      }
    }

    v34 = +[PGLogging sharedLogging];
    v35 = [v34 loggingConnection];

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v53 = v32;
      _os_log_error_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_ERROR, "AssetsRevGeocoding: Error saving reverse geocoding data to database: %@", buf, 0xCu);
    }

    v33 = 0;
  }

  else
  {
LABEL_23:
    v33 = 1;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v33;
}

void __57__PGRevGeocodeProcessor__setRevGeoLocationData_onAssets___block_invoke(uint64_t a1)
{
  for (i = *(a1 + 56); i < *(a1 + 64); ++i)
  {
    v3 = [*(a1 + 32) objectAtIndexedSubscript:i];
    v4 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v5 = [MEMORY[0x277CD97B0] changeRequestForAsset:v3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setShiftedLocation:v4];
    }

    [v5 setReverseLocationData:*(a1 + 48)];
    [v5 setReverseLocationDataIsValid:1];
  }
}

- (BOOL)revGeocodeMoments:(id)a3 progressBlock:(id)a4
{
  v81 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v53 = a4;
  v5 = _Block_copy(v53);
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  if (v5)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v70[3] >= 0.01)
    {
      v70[3] = Current;
      LOBYTE(info.numer) = 0;
      v5[2](v5, &info, 0.0);
      v7 = *(v74 + 24) | LOBYTE(info.numer);
      *(v74 + 24) = v7;
      if (v7)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v78 = 142;
          *&v78[4] = 2080;
          *&v78[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGRevGeocodeProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v8 = 0;
        goto LABEL_62;
      }
    }
  }

  v9 = [v55 count];
  if (!v9)
  {
    v8 = 1;
    goto LABEL_62;
  }

  v10 = [(PGRevGeocodeProcessor *)self loggingConnection];
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  spid = v11;
  v51 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ReverseGeocodeMoments", "", buf, 2u);
  }

  v52 = v13;

  info = 0;
  mach_timebase_info(&info);
  v14 = mach_absolute_time();
  [(PGRevGeocodeProcessor *)self _resetMetrics];
  v58 = [MEMORY[0x277CBEB18] array];
  v49 = v14;
  v56 = [MEMORY[0x277CBEB18] array];
  v54 = 0;
  v15 = 0.7 / v9;
  v16 = -v9;
  v17 = 0.0;
  v18 = 1;
  v19 = 1.0 / v9;
  do
  {
    v20 = objc_autoreleasePoolPush();
    if (!v5 || (v21 = CFAbsoluteTimeGetCurrent(), v21 - v70[3] < 0.01) || (v70[3] = v21, v67 = 0, v5[2](v5, &v67, v17), v22 = *(v74 + 24) | v67, *(v74 + 24) = v22, (v22 & 1) == 0))
    {
      v24 = [v55 objectAtIndexedSubscript:v18 - 1];
      v66 = 0;
      v25 = [(PGRevGeocodeProcessor *)self _clusterAssetsInMoment:v24 assetsWithInvalidLocationInMoment:&v66];
      v26 = v66;
      [v58 addObjectsFromArray:v25];
      if (v26)
      {
        [v56 addObjectsFromArray:v26];
      }

      if (v5)
      {
        v27 = CFAbsoluteTimeGetCurrent();
        if (v27 - v70[3] >= 0.01)
        {
          v70[3] = v27;
          v67 = 0;
          v5[2](v5, &v67, v17 + v19 * 0.5);
          v28 = *(v74 + 24) | v67;
          *(v74 + 24) = v28;
          if (v28)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v78 = 180;
              *&v78[4] = 2080;
              *&v78[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGRevGeocodeProcessor.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

LABEL_40:
            v23 = 0;
            goto LABEL_41;
          }
        }
      }

      v29 = [v56 count];
      v30 = v16 + v18;
      if (v29 && (v29 > 0x3E7 || !v30))
      {
        v31 = [(PGRevGeocodeProcessor *)self _setRevGeoLocationData:0 onAssets:v56];
        [v56 removeAllObjects];
        if (!v31)
        {
          v34 = +[PGLogging sharedLogging];
          v35 = [v34 loggingConnection];

          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_ERROR, "AssetsRevGeocoding: stopping reverse geocoding early", buf, 2u);
          }

          goto LABEL_40;
        }
      }

      if ([v58 count] > 0x3E7 || !v30)
      {
        v59[0] = MEMORY[0x277D85DD0];
        v59[1] = 3221225472;
        v59[2] = __57__PGRevGeocodeProcessor_revGeocodeMoments_progressBlock___block_invoke;
        v59[3] = &unk_278886858;
        v63 = v17;
        v64 = v15 * (v18 - v54);
        v60 = v5;
        v61 = &v69;
        v65 = 0x3F847AE147AE147BLL;
        v62 = &v73;
        if (![(PGRevGeocodeProcessor *)self _revGeocodeAssetClusters:v58 progressBlock:v59])
        {
          v32 = +[PGLogging sharedLogging];
          v33 = [v32 loggingConnection];

          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_ERROR, "AssetsRevGeocoding: stopping reverse geocoding early", buf, 2u);
          }

          goto LABEL_40;
        }

        [v58 removeAllObjects];

        v17 = v17 + v15 * (v18 - v54);
        v54 = v18;
      }

      v17 = v19 + v17;
      v23 = 1;
LABEL_41:

      goto LABEL_42;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v78 = 167;
      *&v78[4] = 2080;
      *&v78[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGRevGeocodeProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v23 = 0;
LABEL_42:
    objc_autoreleasePoolPop(v20);
    if ((v23 & 1) == 0)
    {
      v8 = 0;
LABEL_60:
      v45 = v56;
      goto LABEL_61;
    }

    ++v18;
  }

  while (v16 + v18 != 1);
  v36 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v39 = v52;
  v40 = v39;
  if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
  {
    numberOfMomentsRevGeocoded = self->_numberOfMomentsRevGeocoded;
    *buf = 134217984;
    *v78 = numberOfMomentsRevGeocoded;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v40, OS_SIGNPOST_INTERVAL_END, spid, "ReverseGeocodeMoments", "[REVGEO] Reverse geocode %lu moments", buf, 0xCu);
  }

  v42 = v40;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"[REVGEO] Reverse geocode %lu moments", self->_numberOfMomentsRevGeocoded];
    *buf = 136315650;
    *v78 = "ReverseGeocodeMoments";
    *&v78[8] = 2112;
    *&v78[10] = v43;
    v79 = 2048;
    v80 = ((((v36 - v49) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  if (!v5)
  {
    v8 = 1;
    goto LABEL_60;
  }

  v44 = CFAbsoluteTimeGetCurrent();
  v45 = v56;
  if (v44 - v70[3] >= 0.01 && (v70[3] = v44, v67 = 0, v5[2](v5, &v67, 1.0), v46 = *(v74 + 24) | v67, *(v74 + 24) = v46, (v46 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v78 = 224;
      *&v78[4] = 2080;
      *&v78[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGRevGeocodeProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

LABEL_61:

LABEL_62:
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(&v73, 8);

  v47 = *MEMORY[0x277D85DE8];
  return v8;
}

void __57__PGRevGeocodeProcessor_revGeocodeMoments_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *(*(a1 + 40) + 8);
    if (Current - *(v9 + 24) >= *(a1 + 72))
    {
      *(v9 + 24) = Current;
      (*(*(a1 + 32) + 16))(v6 + a3 * v7);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)revGeocodeAssets:(id)a3 progressBlock:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v30 = a4;
  v31 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = [v12 locationDataProperties];
        [v13 coordinate];
        v15 = v14;
        v17 = v16;

        if ([MEMORY[0x277D3ACD0] canUseCoordinate:{v15, v17}])
        {
          v18 = objc_alloc(MEMORY[0x277CBFBC8]);
          v19 = [MEMORY[0x277CCAD78] UUID];
          v20 = [v19 UUIDString];
          v21 = [v18 initWithCenter:v20 radius:v15 identifier:{v17, 20.0}];

          v22 = [v12 coarseLocationProperties];
          [v22 gpsHorizontalAccuracy];
          [v21 setClsHorizontalAccuracy:?];

          v23 = [PGAssetCluster alloc];
          v36 = v12;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
          v25 = [(PGAssetCluster *)v23 initWithAssets:v24 region:v21];

          [v31 addObject:v25];
        }

        else
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v9);
  }

  [(PGRevGeocodeProcessor *)self _setRevGeoLocationData:0 onAssets:v6];
  v26 = [(PGRevGeocodeProcessor *)self _revGeocodeAssetClusters:v31 progressBlock:v30];

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (PGRevGeocodeProcessor)initWithPhotoLibrary:(id)a3 homeLocations:(id)a4 loggingConnection:(id)a5 locationCache:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = PGRevGeocodeProcessor;
  v14 = [(PGRevGeocodeProcessor *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_photoLibrary, v10);
    objc_storeStrong(&v15->_homeLocations, a4);
    objc_storeStrong(&v15->_loggingConnection, a5);
    objc_storeStrong(&v15->_locationCache, a6);
  }

  return v15;
}

+ (id)reverseGeoFetchOptionsForPhotoLibrary:(id)a3
{
  v8[3] = *MEMORY[0x277D85DE8];
  v3 = [a3 librarySpecificFetchOptions];
  v4 = *MEMORY[0x277CD9AC8];
  v8[0] = *MEMORY[0x277CD9A70];
  v8[1] = v4;
  v8[2] = *MEMORY[0x277CD9AF8];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  [v3 addFetchPropertySets:v5];

  [v3 setIncludeGuestAssets:1];
  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)momentsRequiringRevGeocodingWithUUIDs:(id)a3 inPhotoLibrary:(id)a4 defaultToAllAssets:(BOOL)a5 loggingConnection:(id)a6
{
  v7 = a5;
  v44[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = a4;
  v12 = os_signpost_id_generate(v10);
  v13 = v10;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MomentsRequiringRevGeocoding", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v15 = mach_absolute_time();
  v16 = [v11 librarySpecificFetchOptions];

  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SUBQUERY(%K, $asset, $asset.%K == NO).@count != 0", @"assets", @"additionalAttributes.reverseLocationDataIsValid"];
  if ([v9 count])
  {
    v35 = v15;
    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"uuid", v9];
    v19 = MEMORY[0x277CCA920];
    v44[0] = v17;
    v44[1] = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v21 = [v19 andPredicateWithSubpredicates:v20];

    v17 = v21;
  }

  else
  {
    if (!v7)
    {
      v24 = 0;
      goto LABEL_14;
    }

    v35 = v15;
  }

  [v16 setInternalPredicate:v17];
  v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v43 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  [v16 setSortDescriptors:v23];

  v24 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:v16];
  v25 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v28 = v14;
  v29 = v28;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    v30 = [v24 count];
    *buf = 134217984;
    v38 = v30;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, v12, "MomentsRequiringRevGeocoding", "[REVGEO] Fetch %lu moments requiring reverse geocoding", buf, 0xCu);
  }

  v31 = v29;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"[REVGEO] Fetch %lu moments requiring reverse geocoding", objc_msgSend(v24, "count")];
    *buf = 136315650;
    v38 = "MomentsRequiringRevGeocoding";
    v39 = 2112;
    v40 = v32;
    v41 = 2048;
    v42 = ((((v25 - v35) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

LABEL_14:
  v33 = *MEMORY[0x277D85DE8];

  return v24;
}

@end