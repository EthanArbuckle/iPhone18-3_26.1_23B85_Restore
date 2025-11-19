@interface PGHighlightStatisticsEstimator
- (PGHighlightStatisticsEstimator)initWithWorkingContext:(id)a3;
- (id)_collectDetailsForAggregations:(id)a3 inGraph:(id)a4 curationContext:(id)a5;
- (id)_collectDetailsForTripsAndWeekends:(id)a3 inGraph:(id)a4 curationContext:(id)a5;
- (id)_createHighlightEstimatesDictionaryWithCurationContext:(id)a3;
- (id)_highlightEstimatesDescriptionWithData:(id)a3;
- (id)_stringDescriptionForHomeWorkAggregations:(id)a3;
- (id)_stringDescriptionForMomentsDetails:(id)a3;
- (id)_stringDescriptionForTripWeekendDetails:(id)a3;
- (id)highlightEstimatesDescriptionWithCurationContext:(id)a3;
- (id)highlightEstimatesDictionaryWithCurationContext:(id)a3;
- (unint64_t)_numberOfUtilityAssetsForAssetCollection:(id)a3;
@end

@implementation PGHighlightStatisticsEstimator

- (id)_stringDescriptionForMomentsDetails:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v25 = [MEMORY[0x277CCAB68] stringWithString:@"\n\tmomentName\tassets\tcurated assets\tutility assets\tinteresting\tmeanings"];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"name"];
        v10 = [v8 objectForKeyedSubscript:@"assetCount"];
        v11 = [v10 unsignedIntegerValue];

        v12 = [v8 objectForKeyedSubscript:@"curatedAssetCount"];
        v13 = [v12 unsignedIntegerValue];

        v14 = [v8 objectForKeyedSubscript:@"utilityAssetCount"];
        v15 = [v14 unsignedIntegerValue];

        v16 = [v8 objectForKeyedSubscript:@"isInteresting"];
        v17 = [v16 BOOLValue];
        v18 = @"NO";
        if (v17)
        {
          v18 = @"YES";
        }

        v19 = v18;

        v20 = [v8 objectForKeyedSubscript:@"meanings"];
        v21 = [v20 componentsJoinedByString:{@", "}];

        [v25 appendFormat:@"\n\t%@\t%lu\t%lu\t%lu\t%@\t%@", v9, v11, v13, v15, v19, v21];
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)_stringDescriptionForHomeWorkAggregations:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v28 = [MEMORY[0x277CCAB68] stringWithString:@"\n\t  aggregation identifier\t\t\tassets\tcurated assets\tutility assets\tmoments\tassets per moment"];
  v26 = [v3 count];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v30;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"name"];
        v12 = [v10 objectForKeyedSubscript:@"assetCount"];
        v13 = [v12 unsignedIntegerValue];

        v14 = [v10 objectForKeyedSubscript:@"curatedAssetCount"];
        v15 = [v14 unsignedIntegerValue];

        v16 = [v10 objectForKeyedSubscript:@"aggregationAvgAssetCountPerMoment"];
        [v16 doubleValue];
        v18 = v17;

        v19 = [v10 objectForKeyedSubscript:@"momentCount"];
        v20 = [v19 unsignedIntegerValue];

        v21 = [v10 objectForKeyedSubscript:@"utilityAssetCount"];
        v22 = [v21 unsignedIntegerValue];

        v6 += v20;
        v8 = v8 + v13;
        [v28 appendFormat:@"\n\t- %@\t%lu\t%lu\t%lu\t%lu\t%.1f", v11, v13, v15, v22, v20, v18];
      }

      v5 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v8 = 0.0;
  }

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n- number of aggregations: %lu\n- number of moments: %lu\n- avg number of assets per aggregation: %f\n\nDetails:\n%@", v26, v6, v8 / v26, v28];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_stringDescriptionForTripWeekendDetails:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] stringWithString:@"\n\tname\tassets\tcurated assets\tutility assets\tmoments"];
  v23 = [v3 count];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"name"];
        v12 = [v10 objectForKeyedSubscript:@"assetCount"];
        v13 = [v12 unsignedIntegerValue];

        v14 = [v10 objectForKeyedSubscript:@"curatedAssetCount"];
        v15 = [v14 unsignedIntegerValue];

        v16 = [v10 objectForKeyedSubscript:@"utilityAssetCount"];
        v17 = [v16 unsignedIntegerValue];

        v18 = [v10 objectForKeyedSubscript:@"momentCount"];
        v19 = [v18 unsignedIntegerValue];

        [v4 appendFormat:@"\n\t%@\t%lu\t%lu\t%lu\t%lu", v11, v13, v15, v17, v19];
        v8 = v8 + v13;
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
  }

  v20 = [MEMORY[0x277CCAB68] stringWithFormat:@"(count %lu, avg assets per trip %f)\n%@", v23, v8 / v23, v4];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_highlightEstimatesDescriptionWithData:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = [v3 objectForKeyedSubscript:@"generalInfo"];
  v6 = [v5 objectForKeyedSubscript:@"assetCount"];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v5 objectForKeyedSubscript:@"utilityAssetCount"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v5 objectForKeyedSubscript:@"momentCount"];
  v11 = [v10 unsignedIntegerValue];

  v12 = [v5 objectForKeyedSubscript:@"highlightCount"];
  v13 = [v12 unsignedIntegerValue];

  v14 = [v5 objectForKeyedSubscript:@"avgAssetCountPerMoment"];
  [v14 doubleValue];
  v16 = v15;

  v68 = v5;
  v17 = [v5 objectForKeyedSubscript:@"avgCuratedAssetCountPerMoment"];
  [v17 doubleValue];
  v19 = v18;

  [v4 appendFormat:@"\nnumber of assets: %lu", v7];
  [v4 appendFormat:@"\nnumber of utility assets: %lu", v9];
  [v4 appendFormat:@"\nnumber of moments: %lu", v11];
  [v4 appendFormat:@"\nnumber of highlights: %lu", v13];
  [v4 appendFormat:@"\navg assets per moment: %f", v16];
  v70 = v4;
  [v4 appendFormat:@"\navg curated assets per moment: %f", v19];
  v20 = [MEMORY[0x277CCAB68] stringWithString:@"\n\nmoments count per year:"];
  v21 = [MEMORY[0x277CCAB68] stringWithString:@"\n\navg assets per moment per year:"];
  v22 = [v3 objectForKeyedSubscript:@"momentsByYear"];
  v69 = v3;
  v73 = [v3 objectForKeyedSubscript:@"avgAssetsPerMomentByYear"];
  v74 = v22;
  v23 = [v22 allKeys];
  v24 = [v23 sortedArrayUsingSelector:sel_compare_];

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v66 = v24;
  obj = [v24 reverseObjectEnumerator];
  v25 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v76;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v76 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v75 + 1) + 8 * i);
        v30 = [v74 objectForKeyedSubscript:v29];
        v31 = [v30 unsignedIntegerValue];

        [v20 appendFormat:@"\n %@: %lu", v29, v31];
        v32 = [v73 objectForKeyedSubscript:v29];
        [v32 doubleValue];
        v34 = v33;

        [v21 appendFormat:@"\n %@: %f", v29, v34];
      }

      v26 = [obj countByEnumeratingWithState:&v75 objects:v79 count:16];
    }

    while (v26);
  }

  v65 = v20;
  [v70 appendString:v20];
  v61 = v21;
  [v70 appendString:v21];
  obja = [v69 objectForKeyedSubscript:@"trips"];
  v35 = MEMORY[0x277CCACA8];
  v36 = [(PGHighlightStatisticsEstimator *)self _stringDescriptionForTripWeekendDetails:obja];
  v63 = [v35 stringWithFormat:@"\n\n################################\n\nTrip Statistics: %@", v36];

  v64 = [v69 objectForKeyedSubscript:@"weekends"];
  v37 = MEMORY[0x277CCACA8];
  v38 = [(PGHighlightStatisticsEstimator *)self _stringDescriptionForTripWeekendDetails:v64];
  v62 = [v37 stringWithFormat:@"\n\n################################\n\nWeekend Statistics: %@", v38];

  [v70 appendString:v63];
  [v70 appendString:v62];
  v60 = [v69 objectForKeyedSubscript:@"homeAggregations"];
  v39 = MEMORY[0x277CCACA8];
  v40 = [(PGHighlightStatisticsEstimator *)self _stringDescriptionForHomeWorkAggregations:v60];
  v57 = [v39 stringWithFormat:@"\n\n################################\n\nHome Aggregation Statistics:%@", v40];

  v59 = [v69 objectForKeyedSubscript:@"homeSupersetAggregations"];
  v41 = MEMORY[0x277CCACA8];
  v42 = [(PGHighlightStatisticsEstimator *)self _stringDescriptionForHomeWorkAggregations:v59];
  v43 = [v41 stringWithFormat:@"\n\n################################\n\nHome Superset Aggregation Statistics:%@", v42];

  v58 = [v69 objectForKeyedSubscript:@"workAggregations"];
  v44 = MEMORY[0x277CCACA8];
  v45 = [(PGHighlightStatisticsEstimator *)self _stringDescriptionForHomeWorkAggregations:v58];
  v46 = [v44 stringWithFormat:@"\n\n################################\n\nWork Aggregation Statistics:%@", v45];

  [v70 appendString:v57];
  [v70 appendString:v46];
  [v70 appendString:v43];
  v47 = [v69 objectForKeyedSubscript:@"singleMoments"];
  v48 = MEMORY[0x277CCACA8];
  v49 = [(PGHighlightStatisticsEstimator *)self _stringDescriptionForMomentsDetails:v47];
  v50 = [v48 stringWithFormat:@"Moments that are not in Trips/Weekends/Aggregations: %@", v49];

  [v70 appendFormat:@"\n\n################################\n\n%@", v50];
  v51 = [v69 objectForKeyedSubscript:@"moments"];
  v52 = MEMORY[0x277CCACA8];
  v53 = [(PGHighlightStatisticsEstimator *)self _stringDescriptionForMomentsDetails:v51];
  v54 = [v52 stringWithFormat:@"Moment Statistics: %@", v53];

  [v70 appendFormat:@"\n\n################################\n\n%@", v54];
  v55 = *MEMORY[0x277D85DE8];

  return v70;
}

- (id)_collectDetailsForAggregations:(id)a3 inGraph:(id)a4 curationContext:(id)a5
{
  v97 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v59 = a4;
  v57 = a5;
  v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v68 = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  v60 = v8;
  v9 = [v8 allKeys];
  v10 = [v9 sortedArrayUsingSelector:sel_localizedCompare_];

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v10;
  v61 = [obj countByEnumeratingWithState:&v86 objects:v96 count:16];
  if (v61)
  {
    v56 = *v87;
    do
    {
      v11 = 0;
      do
      {
        if (*v87 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v86 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [v60 objectForKeyedSubscript:v12];
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v82 objects:v95 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v83;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v83 != v19)
              {
                objc_enumerationMutation(v15);
              }

              v18 += [*(*(&v82 + 1) + 8 * i) numberOfAssets];
            }

            v17 = [v15 countByEnumeratingWithState:&v82 objects:v95 count:16];
          }

          while (v17);
        }

        else
        {
          v18 = 0;
        }

        [v15 count];
        v21 = v18;
        v22 = [v15 count];
        v23 = [v59 momentsResultForMomentNodes:v15 inPhotoLibrary:v68 sortChronologically:0];
        v73 = [MEMORY[0x277CBEB18] array];
        v72 = [v68 librarySpecificFetchOptions];
        [v72 setIncludeGuestAssets:1];
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v69 = v23;
        v24 = [v69 countByEnumeratingWithState:&v78 objects:v94 count:16];
        context = v13;
        v67 = v11;
        v64 = v12;
        v65 = v15;
        if (v24)
        {
          v25 = v24;
          v26 = 0;
          v70 = *v79;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v79 != v70)
              {
                objc_enumerationMutation(v69);
              }

              v28 = *(*(&v78 + 1) + 8 * j);
              v29 = objc_autoreleasePoolPush();
              v30 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v28 options:v72];
              v31 = [v30 fetchedObjects];
              [v73 addObjectsFromArray:v31];

              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v32 = v30;
              v33 = [v32 countByEnumeratingWithState:&v74 objects:v93 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = *v75;
                do
                {
                  for (k = 0; k != v34; ++k)
                  {
                    if (*v75 != v35)
                    {
                      objc_enumerationMutation(v32);
                    }

                    v26 += [(PGHighlightStatisticsEstimator *)self _isUtilityAsset:*(*(&v74 + 1) + 8 * k)];
                  }

                  v34 = [v32 countByEnumeratingWithState:&v74 objects:v93 count:16];
                }

                while (v34);
              }

              objc_autoreleasePoolPop(v29);
            }

            v25 = [v69 countByEnumeratingWithState:&v78 objects:v94 count:16];
          }

          while (v25);
        }

        else
        {
          v26 = 0;
        }

        v37 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
        v92 = v37;
        v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
        [v73 sortUsingDescriptors:v38];

        v71 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssets:v73 title:0 identifier:0 photoLibrary:v68];
        v63 = [[PGCurationOptions alloc] initWithDuration:2];
        v39 = [(PGManagerWorkingContext *)self->_workingContext curationManager];
        v40 = [v39 curatedAssetsForAssetCollection:v71 options:v63 curationContext:v57 progressBlock:0];
        v62 = [v40 count];

        v41 = MEMORY[0x277CCACA8];
        v42 = [v65 firstObject];
        v43 = [v42 name];
        v44 = [v65 lastObject];
        v45 = [v44 name];
        v46 = [v41 stringWithFormat:@"%@ (%@ - %@)", v64, v43, v45];

        v91[0] = v46;
        v90[0] = @"name";
        v90[1] = @"assetCount";
        v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
        v91[1] = v47;
        v90[2] = @"curatedAssetCount";
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v62];
        v91[2] = v48;
        v90[3] = @"utilityAssetCount";
        v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
        v91[3] = v49;
        v90[4] = @"aggregationAvgAssetCountPerMoment";
        v50 = [MEMORY[0x277CCABB0] numberWithDouble:v21 / v22];
        v91[4] = v50;
        v90[5] = @"momentCount";
        v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v65, "count")}];
        v91[5] = v51;
        v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:6];

        [v58 addObject:v52];
        objc_autoreleasePoolPop(context);
        v11 = v67 + 1;
      }

      while (v67 + 1 != v61);
      v61 = [obj countByEnumeratingWithState:&v86 objects:v96 count:16];
    }

    while (v61);
  }

  v53 = *MEMORY[0x277D85DE8];

  return v58;
}

- (id)_collectDetailsForTripsAndWeekends:(id)a3 inGraph:(id)a4 curationContext:(id)a5
{
  v71 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v46 = a5;
  v47 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v45 = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  v10 = [PGTitleGenerationContext alloc];
  v11 = [(PGManagerWorkingContext *)self->_workingContext serviceManager];
  v48 = v9;
  v44 = [(PGTitleGenerationContext *)v10 initWithGraph:v9 serviceManager:v11];

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v8;
  v49 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v49)
  {
    v43 = *v64;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v64 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v63 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v57 = [[PGHighlightTitleGenerator alloc] initWithCollection:v13 curatedAssetCollection:0 keyAsset:0 createVerboseTitle:0 titleGenerationContext:v44];
        v14 = [(PGHighlightTitleGenerator *)v57 titleTuple];
        v15 = [v14 title];
        v16 = [v15 stringValue];
        v17 = [v16 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_2843F5C58];

        v56 = v14;
        v18 = [v14 subtitle];
        v19 = [v18 stringValue];

        v54 = v19;
        v55 = v17;
        v53 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@ – %@", v17, v19];
        v20 = [v13 eventCollection];
        v21 = [v20 eventMomentNodes];
        v50 = [v21 numberOfAssets];

        v22 = [v13 fetchAssetCollectionInPhotoLibrary:v45];
        v23 = +[PGCurationOptions defaultOptions];
        v24 = [(PGManagerWorkingContext *)self->_workingContext curationManager];
        v52 = v22;
        v25 = [v24 curatedAssetsForAssetCollection:v22 options:v23 curationContext:v46 progressBlock:0];

        v51 = v25;
        v26 = [v25 count];
        v27 = [v13 eventEnrichmentMomentNodes];
        v28 = [v27 temporarySet];

        v29 = [v48 momentsResultForMomentNodes:v28 inPhotoLibrary:v45 sortChronologically:0];
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v30 = [v29 countByEnumeratingWithState:&v59 objects:v69 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = 0;
          v33 = *v60;
          do
          {
            for (j = 0; j != v31; ++j)
            {
              if (*v60 != v33)
              {
                objc_enumerationMutation(v29);
              }

              v32 += [(PGHighlightStatisticsEstimator *)self _numberOfUtilityAssetsForAssetCollection:*(*(&v59 + 1) + 8 * j)];
            }

            v31 = [v29 countByEnumeratingWithState:&v59 objects:v69 count:16];
          }

          while (v31);
        }

        else
        {
          v32 = 0;
        }

        v68[0] = v53;
        v67[0] = @"name";
        v67[1] = @"assetCount";
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v50];
        v68[1] = v35;
        v67[2] = @"curatedAssetCount";
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
        v68[2] = v36;
        v67[3] = @"utilityAssetCount";
        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v32];
        v68[3] = v37;
        v67[4] = @"momentCount";
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
        v68[4] = v38;
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:5];

        [v47 addObject:v39];
        objc_autoreleasePoolPop(context);
      }

      v49 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
    }

    while (v49);
  }

  v40 = *MEMORY[0x277D85DE8];

  return v47;
}

- (unint64_t)_numberOfUtilityAssetsForAssetCollection:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  v7 = +[PGCurationManager assetPropertySetsForCuration];
  [v6 addFetchPropertySets:v7];

  [v6 setIncludeGuestAssets:1];
  v8 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v4 options:v6];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 += [(PGHighlightStatisticsEstimator *)self _isUtilityAsset:*(*(&v16 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_createHighlightEstimatesDictionaryWithCurationContext:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__54617;
  v20 = __Block_byref_object_dispose__54618;
  v21 = 0;
  v5 = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  workingContext = self->_workingContext;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__PGHighlightStatisticsEstimator__createHighlightEstimatesDictionaryWithCurationContext___block_invoke;
  v11[3] = &unk_278889308;
  v7 = v5;
  v12 = v7;
  v13 = self;
  v8 = v4;
  v14 = v8;
  v15 = &v16;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v11];
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __89__PGHighlightStatisticsEstimator__createHighlightEstimatesDictionaryWithCurationContext___block_invoke(uint64_t a1, void *a2)
{
  v122 = *MEMORY[0x277D85DE8];
  v62 = a2;
  v72 = [v62 graph];
  v2 = [v72 momentNodesSortedByDate];
  v78 = [MEMORY[0x277CBEB38] dictionary];
  v92 = [MEMORY[0x277CBEB38] dictionary];
  v68 = [MEMORY[0x277CBEB38] dictionary];
  v66 = [MEMORY[0x277CBEB38] dictionary];
  v64 = [MEMORY[0x277CBEB38] dictionary];
  v70 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v65 = [MEMORY[0x277CBEB18] array];
  v63 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:v72];
  v77 = [v72 meNodeCollection];
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v2;
  v73 = [obj countByEnumeratingWithState:&v109 objects:v121 count:16];
  if (!v73)
  {
    v67 = 0;
    v75 = 0;
    v76 = 0;
    v3 = 0.0;
    v4 = 0.0;
    goto LABEL_30;
  }

  v67 = 0;
  v75 = 0;
  v76 = 0;
  v71 = *v110;
  v3 = 0.0;
  v4 = 0.0;
  do
  {
    for (i = 0; i != v73; ++i)
    {
      if (*v110 != v71)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v109 + 1) + 8 * i);
      context = objc_autoreleasePoolPush();
      v7 = [v72 momentForMomentNode:v6 inPhotoLibrary:*(a1 + 32)];
      if (v7)
      {
        v93 = [v6 numberOfAssets];
        v87 = [[PGCurationOptions alloc] initWithDuration:2];
        v8 = [*(*(a1 + 40) + 8) curationManager];
        v9 = [v8 curatedAssetsForAssetCollection:v7 options:v87 curationContext:*(a1 + 48) progressBlock:0];
        v83 = [v9 count];

        v10 = [MEMORY[0x277CBEB58] set];
        v107[0] = MEMORY[0x277D85DD0];
        v107[1] = 3221225472;
        v107[2] = __89__PGHighlightStatisticsEstimator__createHighlightEstimatesDictionaryWithCurationContext___block_invoke_2;
        v107[3] = &unk_2788877E0;
        v85 = v10;
        v108 = v85;
        [v6 enumerateMeaningNodesUsingBlock:v107];
        v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:1 selector:sel_localizedCompare_];
        v120 = v11;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v120 count:1];
        v81 = [v85 sortedArrayUsingDescriptors:v12];

        v13 = [v6 isSmartInteresting];
        v79 = [*(a1 + 40) _numberOfUtilityAssetsForAssetCollection:v7];
        v118[0] = @"name";
        v14 = [v6 name];
        v119[0] = v14;
        v118[1] = @"assetCount";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v93];
        v119[1] = v15;
        v118[2] = @"curatedAssetCount";
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v83];
        v119[2] = v16;
        v118[3] = @"utilityAssetCount";
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v79];
        v119[3] = v17;
        v118[4] = @"isInteresting";
        v18 = [MEMORY[0x277CCABB0] numberWithBool:v13];
        v118[5] = @"meanings";
        v119[4] = v18;
        v119[5] = v81;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:6];

        [v70 addObject:v19];
        v20 = [v6 localStartDate];
        v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(MEMORY[0x277D27690], "yearFromDate:", v20)}];
        v22 = [v78 objectForKeyedSubscript:v21];
        v23 = [v22 unsignedIntegerValue];

        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23 + 1];
        [v78 setObject:v24 forKeyedSubscript:v21];

        v25 = [v92 objectForKeyedSubscript:v21];
        v26 = [v25 unsignedIntegerValue];

        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26 + v93];
        [v92 setObject:v27 forKeyedSubscript:v21];

        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%lu", v21, objc_msgSend(MEMORY[0x277D27690], "weekOfYearFromDate:", v20)];
        v29 = [v6 happensPartiallyAtHomeOrWorkOfPersonNodes:v77];
        v30 = [v6 happensPartiallyAtHomeOfPersonNodes:v77];
        v103 = 0;
        v104 = &v103;
        v105 = 0x2020000000;
        v106 = 0;
        if (v13 & 1 | ((v30 & 1) == 0))
        {
          if (v13 & 1 | ((v29 & 1) == 0))
          {
            if (v13)
            {
              goto LABEL_23;
            }

            v31 = [v6 addressNodes];
            if ([v31 count] == 1)
            {
              v99[0] = MEMORY[0x277D85DD0];
              v99[1] = 3221225472;
              v99[2] = __89__PGHighlightStatisticsEstimator__createHighlightEstimatesDictionaryWithCurationContext___block_invoke_3;
              v99[3] = &unk_2788863F8;
              v99[4] = v6;
              v100 = v64;
              v101 = v28;
              v102 = &v103;
              [v63 enumerateIdentifiersAsCollectionsWithBlock:v99];
            }

            if (v29)
            {
              goto LABEL_25;
            }

LABEL_22:
            if (v13 & 1 | ((v104[3] & 1) == 0))
            {
              goto LABEL_23;
            }

            goto LABEL_25;
          }

          v32 = [v66 objectForKeyedSubscript:v28];
          if (!v32)
          {
            v32 = [MEMORY[0x277CBEB18] array];
            [v66 setObject:v32 forKeyedSubscript:v28];
          }
        }

        else
        {
          v32 = [v68 objectForKeyedSubscript:v28];
          if (!v32)
          {
            v32 = [MEMORY[0x277CBEB18] array];
            [v68 setObject:v32 forKeyedSubscript:v28];
          }
        }

        [v32 addObject:v6];

        if ((v29 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v13)
        {
LABEL_23:
          if (([v6 isPartOfTrip] & 1) == 0)
          {
            [v65 addObject:v19];
            ++v67;
          }
        }

LABEL_25:
        _Block_object_dispose(&v103, 8);

        v75 += v93;
        v76 += v79;
        v4 = v4 + v93;
        v3 = v3 + v83;
      }

      objc_autoreleasePoolPop(context);
    }

    v73 = [obj countByEnumeratingWithState:&v109 objects:v121 count:16];
  }

  while (v73);
LABEL_30:

  v80 = [obj count];
  v74 = [obj count];
  v33 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v92, "count")}];
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v34 = v78;
  v35 = [v34 countByEnumeratingWithState:&v95 objects:v117 count:16];
  if (v35)
  {
    v36 = *v96;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v96 != v36)
        {
          objc_enumerationMutation(v34);
        }

        v38 = *(*(&v95 + 1) + 8 * j);
        v39 = [v34 objectForKeyedSubscript:v38];
        v40 = [v39 unsignedIntegerValue];

        v41 = [v92 objectForKeyedSubscript:v38];
        [v41 doubleValue];
        v43 = v42;

        v44 = [MEMORY[0x277CCABB0] numberWithDouble:v43 / v40];
        [v33 setObject:v44 forKeyedSubscript:v38];
      }

      v35 = [v34 countByEnumeratingWithState:&v95 objects:v117 count:16];
    }

    while (v35);
  }

  v94 = [v72 longTripNodes];
  contexta = [v72 shortTripNodes];
  v88 = [*(a1 + 40) _collectDetailsForTripsAndWeekends:v94 inGraph:v72 curationContext:*(a1 + 48)];
  v86 = [*(a1 + 40) _collectDetailsForTripsAndWeekends:contexta inGraph:v72 curationContext:*(a1 + 48)];
  v84 = [*(a1 + 40) _collectDetailsForAggregations:v68 inGraph:v72 curationContext:*(a1 + 48)];
  v82 = [*(a1 + 40) _collectDetailsForAggregations:v66 inGraph:v72 curationContext:*(a1 + 48)];
  v45 = [*(a1 + 40) _collectDetailsForAggregations:v64 inGraph:v72 curationContext:*(a1 + 48)];
  v46 = [v94 count];
  v47 = [contexta count];
  v48 = [v68 count];
  v49 = [v64 count];
  v50 = [v66 count];
  v115[0] = @"assetCount";
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v75];
  v116[0] = v51;
  v115[1] = @"momentCount";
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(obj, "count")}];
  v116[1] = v52;
  v115[2] = @"highlightCount";
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v46 + v67 + v47 + v48 + v49 + v50];
  v116[2] = v53;
  v115[3] = @"avgAssetCountPerMoment";
  v54 = [MEMORY[0x277CCABB0] numberWithDouble:v4 / v80];
  v116[3] = v54;
  v115[4] = @"avgCuratedAssetCountPerMoment";
  v55 = [MEMORY[0x277CCABB0] numberWithDouble:v3 / v74];
  v116[4] = v55;
  v115[5] = @"utilityAssetCount";
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v76];
  v116[5] = v56;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:6];

  v113[0] = @"generalInfo";
  v113[1] = @"moments";
  v114[0] = v57;
  v114[1] = v70;
  v113[2] = @"singleMoments";
  v113[3] = @"trips";
  v114[2] = v65;
  v114[3] = v88;
  v113[4] = @"weekends";
  v113[5] = @"homeAggregations";
  v114[4] = v86;
  v114[5] = v84;
  v113[6] = @"workAggregations";
  v113[7] = @"homeSupersetAggregations";
  v114[6] = v82;
  v114[7] = v45;
  v113[8] = @"momentsByYear";
  v113[9] = @"avgAssetsPerMomentByYear";
  v114[8] = v34;
  v114[9] = v33;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:10];
  v59 = *(*(a1 + 56) + 8);
  v60 = *(v59 + 40);
  *(v59 + 40) = v58;

  v61 = *MEMORY[0x277D85DE8];
}

void __89__PGHighlightStatisticsEstimator__createHighlightEstimatesDictionaryWithCurationContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 label];
  [v2 addObject:v3];
}

void __89__PGHighlightStatisticsEstimator__createHighlightEstimatesDictionaryWithCurationContext___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 momentNodes];
  v7 = [v6 containsNode:*(a1 + 32)];

  if (v7)
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
    if (!v8)
    {
      v9 = [MEMORY[0x277CBEB18] array];
      [*(a1 + 40) setObject:v9 forKeyedSubscript:*(a1 + 48)];
      v8 = v9;
    }

    v10 = v8;
    [v8 addObject:*(a1 + 32)];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)highlightEstimatesDescriptionWithCurationContext:(id)a3
{
  v4 = [(PGHighlightStatisticsEstimator *)self highlightEstimatesDictionaryWithCurationContext:a3];
  v5 = [(PGHighlightStatisticsEstimator *)self _highlightEstimatesDescriptionWithData:v4];

  return v5;
}

- (id)highlightEstimatesDictionaryWithCurationContext:(id)a3
{
  highlightEstimatesDictionary = self->_highlightEstimatesDictionary;
  if (!highlightEstimatesDictionary)
  {
    v5 = [(PGHighlightStatisticsEstimator *)self _createHighlightEstimatesDictionaryWithCurationContext:a3];
    v6 = self->_highlightEstimatesDictionary;
    self->_highlightEstimatesDictionary = v5;

    highlightEstimatesDictionary = self->_highlightEstimatesDictionary;
  }

  return highlightEstimatesDictionary;
}

- (PGHighlightStatisticsEstimator)initWithWorkingContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGHighlightStatisticsEstimator;
  v6 = [(PGHighlightStatisticsEstimator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workingContext, a3);
  }

  return v7;
}

@end