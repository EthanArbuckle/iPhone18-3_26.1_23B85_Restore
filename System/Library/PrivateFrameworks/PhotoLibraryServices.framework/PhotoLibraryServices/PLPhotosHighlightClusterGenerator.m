@interface PLPhotosHighlightClusterGenerator
- (BOOL)_isRecent:(id)a3;
- (NSArray)allMomentsSorted;
- (PLMomentGenerationDataManagement)dataManager;
- (PLPhotosHighlightClusterGenerator)initWithDataManager:(id)a3 frequentLocationManager:(id)a4 recentHighlightDateInterval:(id)a5 localCreationDateCreator:(id)a6;
- (id)_aggregationHighlightClustersForMoments:(id)a3;
- (id)_aggregationsInSortedMoments:(id)a3 unavailableMoments:(id)a4 intersectingMoments:(id)a5;
- (id)_ongoingTripsInRecentMoments:(id)a3;
- (id)_recentHighlightClusterWithRecentMoments:(id)a3;
- (id)_recentHighlightClusterWithRecentMoments:(id)a3 intersectingMoments:(id)a4;
- (id)_recentMoments;
- (id)_remainingHighlightClustersWithClusters:(id)a3 intersectingMoments:(id)a4 allowExternalSplits:(BOOL)a5;
- (id)_remainingMomentsFromMoments:(id)a3 includeAllTripHighlightClusters:(BOOL)a4;
- (id)_tripHighlightClustersForMoments:(id)a3 tripType:(unint64_t)a4;
- (id)_tripsInMoments:(id)a3;
- (id)highlightClustersIntersectingMoments:(id)a3 includeAllTripHighlightClusters:(BOOL)a4;
- (id)recentMomentsInMomentClusters:(id)a3;
@end

@implementation PLPhotosHighlightClusterGenerator

- (PLMomentGenerationDataManagement)dataManager
{
  WeakRetained = objc_loadWeakRetained(&self->_dataManager);

  return WeakRetained;
}

- (id)_remainingHighlightClustersWithClusters:(id)a3 intersectingMoments:(id)a4 allowExternalSplits:(BOOL)a5
{
  v5 = a5;
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    v29 = v8;
    v30 = v9;
    v27 = *v36;
    v28 = v10;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v35 + 1) + 8 * i) moments];
        v16 = [MEMORY[0x1E695DFD8] setWithArray:v15];
        v17 = [v8 intersectsSet:v16];

        if (v17)
        {
          v18 = [MEMORY[0x1E695DFD8] setWithArray:v15];
          v19 = [[PLPhotosHighlightCluster alloc] initWithMoments:v18];
          if (v5)
          {
            v20 = v5;
            v33 = 0u;
            v34 = 0u;
            v31 = 0u;
            v32 = 0u;
            v21 = v15;
            v22 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v32;
              while (2)
              {
                for (j = 0; j != v23; ++j)
                {
                  if (*v32 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  if (([*(*(&v31 + 1) + 8 * j) pl_originatorState] & 8) != 0)
                  {
                    [(PLPhotosHighlightCluster *)v19 setType:7];
                    goto LABEL_18;
                  }
                }

                v23 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
                if (v23)
                {
                  continue;
                }

                break;
              }
            }

LABEL_18:

            v5 = v20;
            v8 = v29;
            v9 = v30;
            v13 = v27;
            v10 = v28;
          }

          [v9 addObject:v19];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v12);
  }

  return v9;
}

- (id)_aggregationHighlightClustersForMoments:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(PLLibraryClusterer *)self->_clusterer momentClustersForMomentsSortedByDate:v4 allowLocationSplits:0 allowExternalSplits:0];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x1E695DFA8]);
        v13 = [v11 moments];
        v14 = [v12 initWithArray:v13];

        v15 = [[PLPhotosHighlightCluster alloc] initWithMoments:v14];
        [(PLPhotosHighlightCluster *)v15 setType:6];
        [v5 addObject:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = [PLPhotosHighlightCluster alloc];
  v17 = [MEMORY[0x1E695DFD8] setWithArray:v4];
  v18 = [(PLPhotosHighlightCluster *)v16 initWithMoments:v17];

  [(PLPhotosHighlightCluster *)v18 setType:3];
  [(PLPhotosHighlightCluster *)v18 setKind:3];
  [v5 addObject:v18];

  return v5;
}

- (id)_tripHighlightClustersForMoments:(id)a3 tripType:(unint64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [(PLLibraryClusterer *)self->_clusterer momentClustersForMomentsSortedByDate:v5 allowLocationSplits:_os_feature_enabled_impl() ^ 1 allowExternalSplits:1];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = objc_alloc(MEMORY[0x1E695DFA8]);
        v14 = [v12 moments];
        v15 = [v13 initWithArray:v14];

        v16 = [[PLPhotosHighlightCluster alloc] initWithMoments:v15];
        [(PLPhotosHighlightCluster *)v16 setType:5];
        [v6 addObject:v16];
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v17 = [PLPhotosHighlightCluster alloc];
  v18 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  v19 = [(PLPhotosHighlightCluster *)v17 initWithMoments:v18];

  v20 = 0x400010002uLL >> (16 * a4);
  if (a4 >= 3)
  {
    LOBYTE(v20) = 0;
  }

  [(PLPhotosHighlightCluster *)v19 setType:v20 & 7];
  [(PLPhotosHighlightCluster *)v19 setKind:3];
  [v6 addObject:v19];

  return v6;
}

- (id)_aggregationsInSortedMoments:(id)a3 unavailableMoments:(id)a4 intersectingMoments:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = a4;
  v8 = a5;
  v9 = [(PLLibraryClusterer *)self->_clusterer momentClustersForMomentsSortedByDate:a3 allowLocationSplits:0 allowExternalSplits:0];
  v25 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = MEMORY[0x1E695DFD8];
        v17 = [v15 moments];
        v18 = [v16 setWithArray:v17];
        v19 = [v8 intersectsSet:v18];

        if (v19)
        {
          [v25 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v20 = objc_alloc_init(PLAggregationProcessor);
  v21 = [(PLAggregationProcessor *)v20 sortedNeighborMomentClustersOfMomentClusters:v25 forAllMomentClusters:v10];
  v22 = [(PLAggregationProcessor *)v20 processAggregationsWithSortedMomentClusters:v21 momentsContainedInOtherHighlights:v24 progressBlock:0];

  return v22;
}

- (id)_tripsInMoments:(id)a3
{
  frequentLocationManager = self->_frequentLocationManager;
  v5 = a3;
  v6 = [(PLFrequentLocationManager *)frequentLocationManager momentGenerationDataManager];
  v7 = [v6 lastLocationOfInterestVisit];

  v8 = [v7 visitInterval];
  v9 = [v8 endDate];

  v10 = [(PLFrequentLocationManager *)self->_frequentLocationManager currentFrequentLocations];
  v11 = [PLTripProcessor processTripsWithItems:v5 frequentLocations:v10 lastHomeVisitDate:v9 progressBlock:0];

  v12 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_67294];
  v13 = [v11 filteredArrayUsingPredicate:v12];

  return v13;
}

- (id)_ongoingTripsInRecentMoments:(id)a3
{
  v4 = a3;
  v5 = [(PLFrequentLocationManager *)self->_frequentLocationManager currentFrequentLocations];
  v6 = [PLTripProcessor tripsEligibleForMoments:v4 frequentLocations:v5];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E696AB80]);
    v8 = [(NSDateInterval *)self->_recentHighlightsDateInterval startDate];
    v9 = [v8 dateByAddingTimeInterval:-5184000.0];
    v10 = [(NSDateInterval *)self->_recentHighlightsDateInterval endDate];
    v11 = [v7 initWithStartDate:v9 endDate:v10];

    WeakRetained = objc_loadWeakRetained(&self->_dataManager);
    v13 = [v11 startDate];
    v14 = [v11 endDate];
    v15 = [WeakRetained momentsBetweenDate:v13 andDate:v14 sorted:0 excludeExternal:1];

    v16 = [v4 setByAddingObjectsFromArray:v15];
    v17 = [(PLPhotosHighlightClusterGenerator *)self _tripsInMoments:v16];
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  return v17;
}

- (id)_recentHighlightClusterWithRecentMoments:(id)a3 intersectingMoments:(id)a4
{
  v6 = a3;
  if ([v6 intersectsSet:a4])
  {
    v7 = [(PLPhotosHighlightClusterGenerator *)self _recentHighlightClusterWithRecentMoments:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_recentHighlightClusterWithRecentMoments:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [[PLPhotosHighlightCluster alloc] initWithMoments:v3];
    [(PLPhotosHighlightCluster *)v4 setCategory:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_recentMoments
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(NSDateInterval *)self->_recentHighlightsDateInterval startDate];
  v4 = [v3 dateByAddingTimeInterval:-86400.0];

  v5 = [(NSDateInterval *)self->_recentHighlightsDateInterval endDate];
  v6 = [v5 dateByAddingTimeInterval:86400.0];

  v7 = [(PLPhotosHighlightClusterGenerator *)self dataManager];
  v8 = [v7 momentsBetweenDate:v4 andDate:v6 sorted:1 excludeExternal:1];

  if ([v8 count])
  {
    v9 = [(PLLibraryClusterer *)self->_clusterer momentClustersForMomentsSortedByDate:v8 allowLocationSplits:0 allowExternalSplits:0];
    v10 = [(PLPhotosHighlightClusterGenerator *)self recentMomentsInMomentClusters:v9];
  }

  else
  {
    v11 = PLMomentsGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "No recent moments found for date interval: %@ - %@", &v13, 0x16u);
    }

    v10 = [MEMORY[0x1E695DFD8] set];
  }

  return v10;
}

- (id)recentMomentsInMomentClusters:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(PLPhotosHighlightClusterGenerator *)self _isRecent:v11, v14])
        {
          v12 = [v11 moments];
          [v5 addObjectsFromArray:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)_isRecent:(id)a3
{
  v4 = a3;
  v5 = [v4 startDate];
  v6 = [v4 endDate];

  v7 = 0;
  if (v5 && v6)
  {
    if ([(NSDateInterval *)self->_recentHighlightsDateInterval containsDate:v5])
    {
      v7 = [(NSDateInterval *)self->_recentHighlightsDateInterval containsDate:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_remainingMomentsFromMoments:(id)a3 includeAllTripHighlightClusters:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![v6 count])
  {
    v23 = PLMomentsGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v32 = "[PLPhotosHighlightClusterGenerator _remainingMomentsFromMoments:includeAllTripHighlightClusters:]";
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "%s called without any moments, returning all moments.", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (v4)
  {
LABEL_14:
    v22 = [(PLPhotosHighlightClusterGenerator *)self allMomentsSorted];
    goto LABEL_15;
  }

  v25 = self;
  v7 = [MEMORY[0x1E695DF00] distantFuture];
  v8 = [MEMORY[0x1E695DF00] distantPast];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      v14 = v7;
      v15 = v8;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v26 + 1) + 8 * v13);
        v17 = [v16 startDate];
        v7 = [v14 earlierDate:v17];

        v18 = [v16 endDate];
        v8 = [v15 laterDate:v18];

        ++v13;
        v14 = v7;
        v15 = v8;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v19 = [v7 dateByAddingTimeInterval:-2592000.0];

  v20 = [v8 dateByAddingTimeInterval:5184000.0];

  v21 = [(PLPhotosHighlightClusterGenerator *)v25 dataManager];
  v22 = [v21 momentsBetweenDate:v19 andDate:v20 sorted:1 excludeExternal:0];

LABEL_15:

  return v22;
}

- (id)highlightClustersIntersectingMoments:(id)a3 includeAllTripHighlightClusters:(BOOL)a4
{
  v131 = a4;
  v165 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v128 = v5;
  v7 = [v5 mutableCopy];
  v139 = [MEMORY[0x1E695DFA8] set];
  v8 = PLMomentGenerationGetLog();
  v9 = [(PLPhotosHighlightClusterGenerator *)self _recentMoments];
  v137 = [v9 mutableCopy];

  v10 = v8;
  v11 = os_signpost_id_generate(v10);
  info = 0;
  mach_timebase_info(&info);
  v12 = v10;
  v13 = v12;
  v134 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "OngoingTripHighlights", "", buf, 2u);
  }

  spid = v11;
  v129 = v13;

  v126 = mach_absolute_time();
  v14 = [(PLPhotosHighlightClusterGenerator *)self _ongoingTripsInRecentMoments:v137];
  v15 = PLMomentsGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v159 = v14;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Recent ongoing trips: %@", buf, 0xCu);
  }

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  obj = v14;
  v16 = [obj countByEnumeratingWithState:&v151 objects:v164 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v152;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v152 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v151 + 1) + 8 * i);
        v21 = [v20 items];
        v22 = [MEMORY[0x1E695DFD8] setWithArray:v21];
        if ([v7 intersectsSet:v22])
        {
          v23 = -[PLPhotosHighlightClusterGenerator _tripHighlightClustersForMoments:tripType:](self, "_tripHighlightClustersForMoments:tripType:", v21, [v20 type]);
          [v6 addObjectsFromArray:v23];

          [v137 minusSet:v22];
          [v7 minusSet:v22];
          [v139 unionSet:v22];
        }
      }

      v17 = [obj countByEnumeratingWithState:&v151 objects:v164 count:16];
    }

    while (v17);
  }

  v24 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v27 = v129;
  v28 = v27;
  if (v134 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v28, OS_SIGNPOST_INTERVAL_END, spid, "OngoingTripHighlights", "[HighlightsGeneration.OngoingTrips]", buf, 2u);
  }

  v29 = v28;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[HighlightsGeneration.OngoingTrips]"];
    *buf = 136315650;
    v159 = "OngoingTripHighlights";
    v160 = 2112;
    v161 = v30;
    v162 = 2048;
    v163 = ((((v24 - v126) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  if (![v7 count])
  {
    v45 = v6;
    goto LABEL_85;
  }

  v31 = v29;
  v32 = os_signpost_id_generate(v31);
  v150 = 0;
  mach_timebase_info(&v150);
  v33 = v31;
  v34 = v33;
  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v32, "RecentHighlights", "", buf, 2u);
  }

  v135 = mach_absolute_time();
  v35 = [(PLPhotosHighlightClusterGenerator *)self _recentHighlightClusterWithRecentMoments:v137 intersectingMoments:v7];
  [v139 unionSet:v137];
  [v7 minusSet:v137];
  if (v35)
  {
    [v6 addObject:v35];
  }

  v127 = v35;
  v36 = mach_absolute_time();
  v37 = v150.numer;
  v38 = v150.denom;
  v39 = v34;
  v40 = v39;
  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v40, OS_SIGNPOST_INTERVAL_END, v32, "RecentHighlights", "[HighlightsGeneration.Recents]", buf, 2u);
  }

  v41 = v40;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[HighlightsGeneration.Recents]"];
    *buf = 136315650;
    v159 = "RecentHighlights";
    v160 = 2112;
    v161 = v42;
    v162 = 2048;
    v163 = ((((v36 - v135) * v37) / v38) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  if ([v7 count] || v131)
  {
    spida = v29;
    v46 = MEMORY[0x1E695DFA0];
    v47 = [(PLPhotosHighlightClusterGenerator *)self _remainingMomentsFromMoments:v128 includeAllTripHighlightClusters:v131];
    v48 = [v46 orderedSetWithArray:v47];

    v136 = v48;
    [v48 minusSet:v137];
    v123 = v41;
    v49 = v41;
    v50 = os_signpost_id_generate(v49);
    v149 = 0;
    mach_timebase_info(&v149);
    v51 = v49;
    v52 = v51;
    v120 = v50 - 1;
    if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v52, OS_SIGNPOST_INTERVAL_BEGIN, v50, "TripHighlights", "", buf, 2u);
    }

    v113 = v50;
    v117 = v52;

    v115 = mach_absolute_time();
    v53 = [v136 set];
    v54 = [(PLPhotosHighlightClusterGenerator *)self _tripsInMoments:v53];

    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v130 = v54;
    v55 = [v130 countByEnumeratingWithState:&v145 objects:v157 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v146;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v146 != v57)
          {
            objc_enumerationMutation(v130);
          }

          v59 = *(*(&v145 + 1) + 8 * j);
          v60 = [v59 items];
          v61 = [MEMORY[0x1E695DFD8] setWithArray:v60];
          if (v131 || [v7 intersectsSet:v61])
          {
            v62 = -[PLPhotosHighlightClusterGenerator _tripHighlightClustersForMoments:tripType:](self, "_tripHighlightClustersForMoments:tripType:", v60, [v59 type]);
            [v6 addObjectsFromArray:v62];
          }

          [v136 minusSet:v61];
          [v7 minusSet:v61];
          [v139 unionSet:v61];
        }

        v56 = [v130 countByEnumeratingWithState:&v145 objects:v157 count:16];
      }

      while (v56);
    }

    v63 = mach_absolute_time();
    v64 = v149.numer;
    v65 = v149.denom;
    v66 = v117;
    v67 = v66;
    if (v120 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v67, OS_SIGNPOST_INTERVAL_END, v113, "TripHighlights", "[HighlightsGeneration.Trips]", buf, 2u);
    }

    v68 = v67;
    v29 = spida;
    v44 = v127;
    v41 = v123;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      v69 = (((v63 - v115) * v64) / v65) / 1000000.0;
      v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[HighlightsGeneration.Trips]"];
      *buf = 136315650;
      v159 = "TripHighlights";
      v160 = 2112;
      v161 = v70;
      v162 = 2048;
      v163 = v69;
      _os_log_impl(&dword_19BF1F000, v68, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
    }

    if (![v7 count])
    {
      v110 = v6;
      goto LABEL_83;
    }

    if (+[PLAggregationProcessor isEnabled])
    {
      v132 = v68;
      v71 = v68;
      v72 = os_signpost_id_generate(v71);
      v144 = 0;
      mach_timebase_info(&v144);
      v73 = v71;
      v74 = v73;
      v121 = v72 - 1;
      if (v72 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v74, OS_SIGNPOST_INTERVAL_BEGIN, v72, "AggregationHighlights", "", buf, 2u);
      }

      v114 = v72;
      v118 = v74;

      v116 = mach_absolute_time();
      v75 = [(PLPhotosHighlightClusterGenerator *)self allMomentsSorted];
      v76 = [(PLPhotosHighlightClusterGenerator *)self _aggregationsInSortedMoments:v75 unavailableMoments:v139 intersectingMoments:v7];

      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v77 = v76;
      v78 = [v77 countByEnumeratingWithState:&v140 objects:v156 count:16];
      if (v78)
      {
        v79 = v78;
        v80 = *v141;
        do
        {
          for (k = 0; k != v79; ++k)
          {
            if (*v141 != v80)
            {
              objc_enumerationMutation(v77);
            }

            v82 = [*(*(&v140 + 1) + 8 * k) moments];
            v83 = [(PLPhotosHighlightClusterGenerator *)self _aggregationHighlightClustersForMoments:v82];
            [v6 addObjectsFromArray:v83];

            v84 = [MEMORY[0x1E695DFD8] setWithArray:v82];
            [v136 minusSet:v84];
            [v7 minusSet:v84];
          }

          v79 = [v77 countByEnumeratingWithState:&v140 objects:v156 count:16];
        }

        while (v79);
      }

      v85 = mach_absolute_time();
      v87 = v144.numer;
      v86 = v144.denom;
      v88 = v118;
      v89 = v88;
      if (v121 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v88))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v89, OS_SIGNPOST_INTERVAL_END, v114, "AggregationHighlights", "[HighlightsGeneration.Aggregations]", buf, 2u);
      }

      v90 = v89;
      v29 = spida;
      v44 = v127;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
      {
        v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[HighlightsGeneration.Aggregations]"];
        *buf = 136315650;
        v159 = "AggregationHighlights";
        v160 = 2112;
        v161 = v91;
        v162 = 2048;
        v163 = ((((v85 - v116) * v87) / v86) / 1000000.0);
        _os_log_impl(&dword_19BF1F000, v90, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
      }

      v68 = v132;
      if (![v7 count])
      {
        v112 = v6;

LABEL_81:
        v41 = v123;
LABEL_83:

        goto LABEL_84;
      }
    }

    v92 = v68;
    v93 = os_signpost_id_generate(v92);
    v144 = 0;
    mach_timebase_info(&v144);
    v94 = v92;
    v95 = v94;
    v96 = v93 - 1;
    if (v93 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v94))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v95, OS_SIGNPOST_INTERVAL_BEGIN, v93, "DayHighlights", "", buf, 2u);
    }

    v119 = v93;

    v122 = mach_absolute_time();
    v97 = [v136 array];
    v98 = _os_feature_enabled_impl();
    v99 = _os_feature_enabled_impl();
    v133 = v97;
    v100 = [(PLLibraryClusterer *)self->_clusterer momentClustersForMomentsSortedByDate:v97 allowLocationSplits:v98 ^ 1u allowExternalSplits:v99 ^ 1u];
    v101 = [(PLPhotosHighlightClusterGenerator *)self _remainingHighlightClustersWithClusters:v100 intersectingMoments:v7 allowExternalSplits:v99 ^ 1u];
    [v6 addObjectsFromArray:v101];
    v102 = mach_absolute_time();
    v104 = v144.numer;
    v103 = v144.denom;
    v105 = v95;
    v106 = v105;
    if (v96 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v105))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v106, OS_SIGNPOST_INTERVAL_END, v119, "DayHighlights", "[HighlightsGeneration.Days]", buf, 2u);
    }

    v107 = v106;
    v29 = spida;
    v44 = v127;
    if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
    {
      v108 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[HighlightsGeneration.Days]"];
      *buf = 136315650;
      v159 = "DayHighlights";
      v160 = 2112;
      v161 = v108;
      v162 = 2048;
      v163 = ((((v102 - v122) * v104) / v103) / 1000000.0);
      _os_log_impl(&dword_19BF1F000, v107, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
    }

    v109 = v6;
    goto LABEL_81;
  }

  v43 = v6;
  v44 = v127;
LABEL_84:

LABEL_85:

  return v6;
}

- (NSArray)allMomentsSorted
{
  allMomentsSorted = self->_allMomentsSorted;
  if (!allMomentsSorted)
  {
    v4 = [(PLPhotosHighlightClusterGenerator *)self dataManager];
    v5 = [v4 allMomentsWithError:0];
    v6 = self->_allMomentsSorted;
    self->_allMomentsSorted = v5;

    allMomentsSorted = self->_allMomentsSorted;
  }

  return allMomentsSorted;
}

- (PLPhotosHighlightClusterGenerator)initWithDataManager:(id)a3 frequentLocationManager:(id)a4 recentHighlightDateInterval:(id)a5 localCreationDateCreator:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = PLPhotosHighlightClusterGenerator;
  v14 = [(PLPhotosHighlightClusterGenerator *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_dataManager, v10);
    objc_storeStrong(&v15->_frequentLocationManager, a4);
    objc_storeStrong(&v15->_recentHighlightsDateInterval, a5);
    v16 = [[PLLibraryClusterer alloc] initWithLocalCreationDateCreator:v13 frequentLocationManager:v15->_frequentLocationManager];
    clusterer = v15->_clusterer;
    v15->_clusterer = v16;
  }

  return v15;
}

@end