@interface PLCompactMomentClustering
- (PLCompactMomentClustering)initWithDataManager:(id)a3 frequentLocations:(id)a4;
- (id)_assetClustersFromDataClusters:(id)a3;
- (id)_clusterAssetsWithUnusableLocation:(id)a3;
- (id)_clusterAssetsWithUsableLocation:(id)a3;
- (id)_mergeAssetClustersWithLocation:(id)a3 withAssetClustersWithoutLocation:(id)a4;
- (id)_processedLocationTypeByAssetUUIDFromAssets:(id)a3;
- (id)_runDBSCANClusteringWithAssets:(id)a3;
- (id)_shareStateByAssetUUIDFromAssets:(id)a3 momentHasMixedOwnership:(BOOL *)a4;
- (id)assetsByLocationTypeFromAssets:(id)a3;
- (id)createAssetClustersForAssetsInDay:(id)a3;
- (id)newAssetClusterFromAssetsSortedByDate:(id)a3;
- (unsigned)_validLocationTypeForBucketingAssets:(unsigned __int16)a3;
- (void)dealloc;
@end

@implementation PLCompactMomentClustering

- (id)_clusterAssetsWithUnusableLocation:(id)a3
{
  if (![a3 count])
  {
    return MEMORY[0x1E695E0F0];
  }

  v4 = [(PLDataClustering *)[PLDBSCANClustering alloc] initWithDistanceBlock:&__block_literal_global_246];
  [(PLDataDensityClustering *)v4 setMaximumDistance:10800.0];
  [(PLDataDensityClustering *)v4 setMinimumNumberOfObjects:1];
  v5 = [(PLDBSCANClustering *)v4 performWithDataset:a3 progressBlock:0];

  return v5;
}

- (id)_clusterAssetsWithUsableLocation:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (![a3 count])
  {
    return MEMORY[0x1E695E0F0];
  }

  if ([(NSSet *)self->_locationsOfInterest count]|| [(NSSet *)self->_frequentLocations count])
  {
    v5 = [(PLCompactMomentClustering *)self _processedLocationTypeByAssetUUIDFromAssets:a3];
    v6 = [v5 allValues];
    v7 = [v6 firstObject];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v6);
          }

          if (![*(*(&v22 + 1) + 8 * v11) isEqualToNumber:v7])
          {
            v12 = 1;
            goto LABEL_16;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
  }

  else
  {
    v12 = 0;
    v5 = 0;
  }

LABEL_16:
  v21 = 0;
  v14 = [(PLCompactMomentClustering *)self _shareStateByAssetUUIDFromAssets:a3 momentHasMixedOwnership:&v21];
  v15 = [PLDBSCANClustering alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __62__PLCompactMomentClustering__clusterAssetsWithUsableLocation___block_invoke;
  v18[3] = &unk_1E7564598;
  v19 = v12;
  v20 = v21;
  v18[4] = v5;
  v18[5] = v14;
  v16 = [(PLDataClustering *)v15 initWithDistanceBlock:v18];
  [(PLDataDensityClustering *)v16 setMaximumDistance:10800.0];
  [(PLDataDensityClustering *)v16 setMinimumNumberOfObjects:1];
  v13 = [(PLDBSCANClustering *)v16 performWithDataset:a3 progressBlock:0];

  return v13;
}

double __62__PLCompactMomentClustering__clusterAssetsWithUsableLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  [objc_msgSend(a2 "pl_date")];
  v7 = fabs(v6);
  if (v7 <= 10800.0)
  {
    if (*(a1 + 48) == 1)
    {
      v8 = [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(a2, "pl_uuid")), "unsignedShortValue"}];
      if (v8 != [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(a3, "pl_uuid")), "unsignedShortValue"}])
      {
        return 10801.0;
      }
    }

    if (*(a1 + 49) == 1)
    {
      v9 = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{objc_msgSend(a2, "pl_uuid")), "unsignedShortValue"}];
      v10 = (v9 == 2) ^ ([objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{objc_msgSend(a3, "pl_uuid")), "unsignedShortValue"}] == 2);
    }

    else
    {
      v10 = 0;
    }

    [a2 pl_coordinate];
    [a3 pl_coordinate];
    [a2 pl_gpsHorizontalAccuracy];
    v14 = fmin(fmax(v13, 0.0), 5000.0);
    [a3 pl_gpsHorizontalAccuracy];
    v16 = fmin(fmax(v15, 0.0), 5000.0);
    CLLocationCoordinate2DGetDistanceFrom();
    v18 = fmax(v17 + (v14 + v16) * -0.5, 0.0);
    if (v7 > 300.0 || (v10 & 1) != 0)
    {
      if ((v7 > 7200.0) | v10 & 1)
      {
        return v18 * 3.6 + 7200.0;
      }

      else if (v18 / v7 >= 60.0)
      {
        return 10801.0;
      }
    }

    else if (v18 >= 10000.0)
    {
      return 10801.0;
    }
  }

  return v7;
}

- (id)_shareStateByAssetUUIDFromAssets:(id)a3 momentHasMixedOwnership:(BOOL *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a3;
  v7 = [a3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {
    v15 = 0;
    if (!a4)
    {
      return v6;
    }

    goto LABEL_9;
  }

  v8 = v7;
  v17 = a4;
  v9 = 0;
  v10 = 0;
  v11 = *v20;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v19 + 1) + 8 * i);
      v14 = [v13 shareState];
      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", v14), objc_msgSend(v13, "uuid")}];
      v9 |= v14 != 2;
      v10 |= v14 == 2;
    }

    v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v8);
  v15 = v9 & v10;
  a4 = v17;
  if (v17)
  {
LABEL_9:
    *a4 = v15 & 1;
  }

  return v6;
}

- (unsigned)_validLocationTypeForBucketingAssets:(unsigned __int16)a3
{
  if ((a3 - 1) > 4)
  {
    return 6;
  }

  else
  {
    return word_19C60B0F0[(a3 - 1)];
  }
}

- (id)_processedLocationTypeByAssetUUIDFromAssets:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(PLCompactMomentClustering *)self _validLocationTypeForBucketingAssets:[PLMomentGenerationUtils locationTypeForAsset:v10 locationsOfInterest:self->_locationsOfInterest frequentLocations:self->_frequentLocations]];
        [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", v11), objc_msgSend(v10, "uuid")}];
      }

      v7 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)_assetClustersFromDataClusters:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [a3 count];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  context = objc_autoreleasePoolPush();
  obj = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 approximateRegionWithMaximumRadius:100.0];
        v12 = [v10 objects];
        v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"pl_date" ascending:1];
        v13 = -[PLAssetCluster initWithAssetsSortedByDate:region:]([PLAssetCluster alloc], "initWithAssetsSortedByDate:region:", [v12 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v21, 1)}], v11);
        [v5 addObject:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(context);
  return v5;
}

- (id)_mergeAssetClustersWithLocation:(id)a3 withAssetClustersWithoutLocation:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v37 = [a3 count];
  v41 = [MEMORY[0x1E695DF90] dictionary];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = a4;
  v40 = [a4 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v40)
  {
    v39 = *v54;
    do
    {
      v5 = 0;
      do
      {
        if (*v54 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v5;
        v6 = *(*(&v53 + 1) + 8 * v5);
        v7 = [v6 startDate];
        v42 = v6;
        v8 = [v6 endDate];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v9 = [a3 countByEnumeratingWithState:&v49 objects:v58 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = *v50;
          v13 = 0x7FFFFFFFFFFFFFFFLL;
          v14 = -10800.0;
          do
          {
            v15 = 0;
            v16 = v11;
            do
            {
              if (*v50 != v12)
              {
                objc_enumerationMutation(a3);
              }

              [objc_msgSend(v8 earlierDate:{objc_msgSend(*(*(&v49 + 1) + 8 * v15), "endDate")), "timeIntervalSinceDate:", objc_msgSend(v7, "laterDate:", objc_msgSend(*(*(&v49 + 1) + 8 * v15), "startDate"))}];
              if (v17 > v14)
              {
                v14 = v17;
                v13 = v16;
              }

              ++v16;
              ++v15;
            }

            while (v10 != v15);
            v11 += v10;
            v10 = [a3 countByEnumeratingWithState:&v49 objects:v58 count:16];
          }

          while (v10);
        }

        else
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
        v19 = [v41 objectForKeyedSubscript:v18];
        if (!v19)
        {
          v19 = [MEMORY[0x1E695DF70] array];
          [v41 setObject:v19 forKeyedSubscript:v18];
        }

        [v19 addObject:v42];
        v5 = v43 + 1;
      }

      while (v43 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v40);
  }

  v20 = [MEMORY[0x1E695DF70] array];
  if (v37)
  {
    for (i = 0; i != v37; ++i)
    {
      v22 = [a3 objectAtIndexedSubscript:i];
      v23 = [v41 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", i)}];
      if (v23)
      {
        v24 = v23;
        v25 = [objc_msgSend(v22 "assets")];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v26 = [v24 countByEnumeratingWithState:&v45 objects:v57 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v46;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v46 != v28)
              {
                objc_enumerationMutation(v24);
              }

              [v25 addObjectsFromArray:{objc_msgSend(*(*(&v45 + 1) + 8 * j), "assets")}];
            }

            v27 = [v24 countByEnumeratingWithState:&v45 objects:v57 count:16];
          }

          while (v27);
        }

        if ([v25 count])
        {
          [v25 sortUsingDescriptors:{objc_msgSend(objc_msgSend(v25, "firstObject"), "assetComparisonSortDescriptors")}];
          v30 = [v22 location];
          if (v30)
          {
            v31 = objc_alloc(MEMORY[0x1E695FBB0]);
            [v30 coordinate];
            v30 = [v31 initWithCenter:objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0] radius:"UUID") identifier:{"UUIDString"), v32, v33, 0.0}];
          }

          v34 = [[PLAssetCluster alloc] initWithAssetsSortedByDate:v25 region:v30];
          [v20 addObject:v34];
        }

        else
        {
        }
      }

      else
      {
        [v20 addObject:v22];
      }
    }
  }

  v35 = [v41 objectForKeyedSubscript:&unk_1F0FBA7B0];
  if (v35)
  {
    [v20 addObjectsFromArray:v35];
  }

  return v20;
}

- (id)_runDBSCANClusteringWithAssets:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (![a3 count])
  {
    return MEMORY[0x1E695E0F0];
  }

  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        [v11 pl_coordinate];
        latitude = v29.latitude;
        longitude = v29.longitude;
        if (!CLLocationCoordinate2DIsValid(v29))
        {
          goto LABEL_16;
        }

        v14 = latitude != 0.0;
        if (longitude != 0.0)
        {
          v14 = 1;
        }

        if (!v14 || (latitude == 40.0 ? (v15 = longitude == -100.0) : (v15 = 0), v16 = v5, v15))
        {
LABEL_16:
          v16 = v6;
        }

        [v16 addObject:v11];
      }

      v8 = [a3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v17 = [(PLCompactMomentClustering *)self _clusterAssetsWithUsableLocation:v5];
  v18 = [(PLCompactMomentClustering *)self _clusterAssetsWithUnusableLocation:v6];
  v19 = [(PLCompactMomentClustering *)self _assetClustersFromDataClusters:v17];
  v20 = [(PLCompactMomentClustering *)self _assetClustersFromDataClusters:v18];
  if ([v19 count])
  {
    if ([v20 count])
    {
      v20 = [(PLCompactMomentClustering *)self _mergeAssetClustersWithLocation:v19 withAssetClustersWithoutLocation:v20];
    }

    else
    {
      v20 = v19;
    }
  }

  v22 = [v20 mutableCopy];
  [v22 sortUsingDescriptors:{+[PLAssetCluster sortByTimeSortDescriptors](PLAssetCluster, "sortByTimeSortDescriptors")}];
  return v22;
}

- (id)createAssetClustersForAssetsInDay:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __63__PLCompactMomentClustering_createAssetClustersForAssetsInDay___block_invoke;
  v57[3] = &unk_1E7564548;
  v57[4] = v6;
  [a3 enumerateObjectsUsingBlock:v57];
  if ([v6 count])
  {
    v7 = [MEMORY[0x1E696AD50] indexSet];
    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __63__PLCompactMomentClustering_createAssetClustersForAssetsInDay___block_invoke_2;
    v56[3] = &unk_1E7564570;
    v56[4] = a3;
    v56[5] = v5;
    v56[6] = v7;
    [v6 enumerateKeysAndObjectsUsingBlock:v56];
    a3 = [a3 mutableCopy];
    [a3 removeObjectsAtIndexes:v7];
  }

  else
  {
    v8 = a3;
  }

  v44 = [a3 count];
  if (v44 < 0x801)
  {
    [v5 addObjectsFromArray:{-[PLCompactMomentClustering _runDBSCANClusteringWithAssets:](self, "_runDBSCANClusteringWithAssets:", a3)}];
  }

  else
  {
    [objc_msgSend(objc_msgSend(a3 "lastObject")];
    v10 = v9;
    Log = PLMomentsGetLog();
    v12 = os_log_type_enabled(Log, OS_LOG_TYPE_INFO);
    if (v10 >= 7200.0)
    {
      if (v12)
      {
        *buf = 134217984;
        v63 = v44;
        _os_log_impl(&dword_19BF1F000, Log, OS_LOG_TYPE_INFO, "[MomentsGeneration].CompactMoments Using partial clustering for %lu items.", buf, 0xCu);
      }

      v25 = 0;
      v26 = 0;
      v41 = v44 - 1;
      v42 = self;
      v27 = 2048;
      v47 = v5;
      v43 = a3;
      do
      {
        while (1)
        {
          if (v25 + v27 >= v44)
          {
            v27 = v44 - v25;
          }

          v28 = -[PLCompactMomentClustering _runDBSCANClusteringWithAssets:](self, "_runDBSCANClusteringWithAssets:", [a3 subarrayWithRange:{v25, v27}]);
          v29 = [v28 count];
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v30 = [v28 countByEnumeratingWithState:&v52 objects:v61 count:16];
          if (v30)
          {
            break;
          }

          v26 = 0;
          v25 += v27;
          self = v42;
          v5 = v47;
          a3 = v43;
          if (v25 > v41)
          {
            goto LABEL_24;
          }
        }

        v31 = v30;
        v45 = v27;
        v46 = v25;
        v32 = 0;
        v33 = 0;
        v34 = *v53;
        v35 = v29 - 1;
        v5 = v47;
        do
        {
          v36 = 0;
          v37 = v32;
          do
          {
            if (*v53 != v34)
            {
              objc_enumerationMutation(v28);
            }

            v38 = *(*(&v52 + 1) + 8 * v36);
            if (v35 == v37)
            {
              if (v26)
              {
                v60[0] = v26;
                v60[1] = v38;
                v33 = +[PLAssetCluster mergedCluster:](PLAssetCluster, "mergedCluster:", [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2]);
              }

              else
              {
                v33 = *(*(&v52 + 1) + 8 * v36);
              }
            }

            else if (v37 || !v26)
            {
              [v5 addObject:v38];
            }

            else
            {
              v59[0] = v26;
              v59[1] = v38;
              v5 = v47;
              [v47 addObject:{+[PLAssetCluster mergedCluster:](PLAssetCluster, "mergedCluster:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v59, 2))}];
              v26 = 0;
            }

            ++v37;
            ++v36;
          }

          while (v31 != v36);
          v32 += v31;
          v31 = [v28 countByEnumeratingWithState:&v52 objects:v61 count:16];
        }

        while (v31);
        v27 = v45;
        v25 = v45 + v46;
        v26 = v33;
        self = v42;
        a3 = v43;
      }

      while (v45 + v46 <= v41);
      if (v33)
      {
        [v5 addObject:v33];
      }
    }

    else
    {
      if (v12)
      {
        *buf = 134217984;
        v63 = v44;
        _os_log_impl(&dword_19BF1F000, Log, OS_LOG_TYPE_INFO, "[MomentsGeneration].CompactMoments Numbers of assets %lu exceeding clustering limit, but are close in time.", buf, 0xCu);
      }

      if ([(NSSet *)self->_locationsOfInterest count]|| [(NSSet *)self->_frequentLocations count])
      {
        v13 = PLMomentsGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "[MomentsGeneration].CompactMoments Trying to split based off of home/work/frequentLocation before defaulting to tagging as one cluster.", buf, 2u);
        }

        v14 = -[PLCompactMomentClustering assetsByLocationTypeFromAssets:](self, "assetsByLocationTypeFromAssets:", [MEMORY[0x1E695DFD8] setWithArray:a3]);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v48 objects:v58 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v49;
          v18 = MEMORY[0x1E695E0F0];
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v49 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v20 = [v14 objectForKeyedSubscript:*(*(&v48 + 1) + 8 * i)];
              v21 = [objc_msgSend(v20 "anyObject")];
              if (v21)
              {
                v22 = v21;
              }

              else
              {
                v22 = v18;
              }

              v23 = -[PLCompactMomentClustering newAssetClusterFromAssetsSortedByDate:](self, "newAssetClusterFromAssetsSortedByDate:", [v20 sortedArrayUsingDescriptors:v22]);
              [v5 addObject:v23];
            }

            v16 = [v14 countByEnumeratingWithState:&v48 objects:v58 count:16];
          }

          while (v16);
        }
      }

      else
      {
        v39 = PLMomentsGetLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_INFO, "[MomentsGeneration].CompactMoments Not trying to split cluster based off locationType since locationsOfInterest and frequentLocations are empty. Tagging as one cluster.", buf, 2u);
        }

        v40 = [(PLCompactMomentClustering *)self newAssetClusterFromAssetsSortedByDate:a3];
        [v5 addObject:v40];
      }
    }
  }

LABEL_24:
  [v5 sortUsingDescriptors:{+[PLAssetCluster sortByTimeSortDescriptors](PLAssetCluster, "sortByTimeSortDescriptors")}];

  return v5;
}

uint64_t __63__PLCompactMomentClustering_createAssetClustersForAssetsInDay___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [PLMomentGenerationUtils shouldConsiderAssetAsOutlierForMomentClustering:a2];
  if (result)
  {
    result = [PLMomentGenerationUtils externalOriginatorStateForAsset:a2];
    if (result)
    {
      v7 = result;
      v8 = [*(a1 + 32) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithShort:", result)}];
      if (!v8)
      {
        v8 = [MEMORY[0x1E696AD50] indexSet];
        [*(a1 + 32) setObject:v8 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithShort:", v7)}];
      }

      return [v8 addIndex:a3];
    }
  }

  return result;
}

uint64_t __63__PLCompactMomentClustering_createAssetClustersForAssetsInDay___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -[PLAssetCluster initWithAssetsSortedByDate:region:]([PLAssetCluster alloc], "initWithAssetsSortedByDate:region:", [*(a1 + 32) objectsAtIndexes:a3], 0);
  [*(a1 + 40) addObject:v5];

  v6 = *(a1 + 48);

  return [v6 addIndexes:a3];
}

- (id)assetsByLocationTypeFromAssets:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [(PLCompactMomentClustering *)self _processedLocationTypeByAssetUUIDFromAssets:a3];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [objc_msgSend(v6 objectForKeyedSubscript:{objc_msgSend(v11, "uuid")), "unsignedShortValue"}];
        v13 = [v5 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", v12)}];
        if (!v13)
        {
          v13 = [MEMORY[0x1E695DFA8] set];
          [v5 setObject:v13 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", v12)}];
        }

        [v13 addObject:v11];
      }

      v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)newAssetClusterFromAssetsSortedByDate:(id)a3
{
  v4 = [+[PLDataCluster clusterWithObjects:](PLDataCluster approximateRegionWithMaximumRadius:"approximateRegionWithMaximumRadius:", 100.0];
  v5 = [PLAssetCluster alloc];

  return [(PLAssetCluster *)v5 initWithAssetsSortedByDate:a3 region:v4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLCompactMomentClustering;
  [(PLCompactMomentClustering *)&v3 dealloc];
}

- (PLCompactMomentClustering)initWithDataManager:(id)a3 frequentLocations:(id)a4
{
  v11.receiver = self;
  v11.super_class = PLCompactMomentClustering;
  v6 = [(PLCompactMomentClustering *)&v11 init];
  if (v6)
  {
    v7 = [a3 locationsOfInterest];
    v6->_locationsOfInterest = v7;
    v8 = v7;
    v6->_frequentLocations = a4;
    v9 = a4;
  }

  return v6;
}

@end