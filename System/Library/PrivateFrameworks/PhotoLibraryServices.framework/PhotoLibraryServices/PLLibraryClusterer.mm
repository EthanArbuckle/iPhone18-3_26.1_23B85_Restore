@interface PLLibraryClusterer
+ (BOOL)_momentEligibleForSplit:(id)split;
+ (BOOL)highlightSplitBasedOnLocationTypeEnabled;
+ (BOOL)highlightSplitBasedOnOriginatorsEnabled;
+ (BOOL)highlightSplitBasedOnTimeAndLocationEnabled;
+ (void)initialize;
- (PLLibraryClusterer)initWithLocalCreationDateCreator:(id)creator frequentLocationManager:(id)manager;
- (PLLibraryClustererDelegate)delegate;
- (id)_eligibleClusterForMoment:(id)moment inMomentsByLocationType:(id)type;
- (id)_momentsGroupedByDayWithMomentsSortedByDate:(id)date;
- (id)_momentsSplitBetweenOriginatorsWithMoments:(id)moments;
- (id)_momentsSplitOnLocationTypeWithMoments:(id)moments;
- (id)_momentsSplitWithinDayWithMoments:(id)moments;
- (id)_startDateComponentsForMomentCluster:(id)cluster;
- (id)locationBasedMomentClustersForMomentsSortedByDate:(id)date;
- (id)momentClustersForMomentsSortedByDate:(id)date allowLocationSplits:(BOOL)splits allowExternalSplits:(BOOL)externalSplits;
- (void)_createMomentsForDailyAssets:(id)assets currentMomentExistingMomentData:(id)data;
- (void)_mergeMomentsIntoClustersBasedOnTimeWithMoments:(id)moments clusters:(id)clusters;
- (void)processMomentsWithAssets:(id)assets;
@end

@implementation PLLibraryClusterer

+ (BOOL)_momentEligibleForSplit:(id)split
{
  splitCopy = split;
  localStartDate = [splitCopy localStartDate];
  localEndDate = [splitCopy localEndDate];
  [localEndDate timeIntervalSinceDate:localStartDate];
  v7 = v6;
  pl_numberOfAssets = [splitCopy pl_numberOfAssets];
  processedLocation = [splitCopy processedLocation];

  v10 = processedLocation == 4 || v7 >= 1800.0 && pl_numberOfAssets > 6;
  return v10;
}

+ (BOOL)highlightSplitBasedOnOriginatorsEnabled
{
  if (highlightSplitBasedOnOriginatorsEnabled_onceToken != -1)
  {
    dispatch_once(&highlightSplitBasedOnOriginatorsEnabled_onceToken, &__block_literal_global_12_111219);
  }

  return highlightSplitBasedOnOriginatorsEnabled_highlightSplitBasedOnOriginatorsEnabled;
}

void __61__PLLibraryClusterer_highlightSplitBasedOnOriginatorsEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  highlightSplitBasedOnOriginatorsEnabled_highlightSplitBasedOnOriginatorsEnabled = [v0 BOOLForKey:@"PLLibraryClustererEnableHighlightSplitBasedOnOriginators"];
}

+ (BOOL)highlightSplitBasedOnLocationTypeEnabled
{
  if (highlightSplitBasedOnLocationTypeEnabled_onceToken != -1)
  {
    dispatch_once(&highlightSplitBasedOnLocationTypeEnabled_onceToken, &__block_literal_global_10);
  }

  return highlightSplitBasedOnLocationTypeEnabled_highlightSplitBasedOnLocationTypeEnabled;
}

void __62__PLLibraryClusterer_highlightSplitBasedOnLocationTypeEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  highlightSplitBasedOnLocationTypeEnabled_highlightSplitBasedOnLocationTypeEnabled = [v0 BOOLForKey:@"PLLibraryClustererEnableHighlightSplitBasedOnLocationType"];
}

+ (BOOL)highlightSplitBasedOnTimeAndLocationEnabled
{
  if (highlightSplitBasedOnTimeAndLocationEnabled_onceToken != -1)
  {
    dispatch_once(&highlightSplitBasedOnTimeAndLocationEnabled_onceToken, &__block_literal_global_111228);
  }

  return highlightSplitBasedOnTimeAndLocationEnabled_highlightSplitBasedOnTimeAndLocationEnabled;
}

void __65__PLLibraryClusterer_highlightSplitBasedOnTimeAndLocationEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  highlightSplitBasedOnTimeAndLocationEnabled_highlightSplitBasedOnTimeAndLocationEnabled = [v0 BOOLForKey:@"PLLibraryClustererEnableHighlightSplitBasedOnTimeAndLocation"];
}

+ (void)initialize
{
  v6[3] = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___PLLibraryClusterer;
  objc_msgSendSuper2(&v4, sel_initialize);
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5[0] = @"PLLibraryClustererEnableHighlightSplitBasedOnTimeAndLocation";
  v5[1] = @"PLLibraryClustererEnableHighlightSplitBasedOnLocationType";
  v6[0] = MEMORY[0x1E695E118];
  v6[1] = MEMORY[0x1E695E118];
  v5[2] = @"PLLibraryClustererEnableHighlightSplitBasedOnOriginators";
  v6[2] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  [standardUserDefaults registerDefaults:v3];
}

- (PLLibraryClustererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_momentsGroupedByDayWithMomentsSortedByDate:(id)date
{
  v65 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v6 = [[PLClusterTimeInfo alloc] initWithCalendar:self->_calendar];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = dateCopy;
  v7 = [obj countByEnumeratingWithState:&v51 objects:v64 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v52;
    *&v8 = 138543362;
    v38 = v8;
    v41 = v6;
    v42 = array2;
    v40 = *v52;
    do
    {
      v11 = 0;
      v43 = v9;
      do
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v51 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        startDate = [v12 startDate];
        if (startDate)
        {
          goto LABEL_26;
        }

        v46 = v13;
        distantFuture = [MEMORY[0x1E695DF00] distantFuture];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v45 = v12;
        assets = [v12 assets];
        v17 = [assets countByEnumeratingWithState:&v47 objects:v63 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = 0;
          v20 = *v48;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v48 != v20)
              {
                objc_enumerationMutation(assets);
              }

              v22 = *(*(&v47 + 1) + 8 * i);
              dateCreated = [v22 dateCreated];
              v24 = [distantFuture compare:dateCreated];

              if (v24 == 1)
              {
                dateCreated2 = [v22 dateCreated];

                v26 = v22;
                distantFuture = dateCreated2;
                v19 = v26;
              }
            }

            v18 = [assets countByEnumeratingWithState:&v47 objects:v63 count:16];
          }

          while (v18);
        }

        else
        {
          v19 = 0;
        }

        uuid = [v19 uuid];
        startDate = [v19 pl_date];
        v28 = PLMomentsGetLog();
        v12 = v45;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          uuid2 = [v45 uuid];
          isDeleted = [v45 isDeleted];
          *buf = 138544130;
          v56 = uuid2;
          v57 = 1026;
          v58 = isDeleted;
          v59 = 2112;
          v60 = startDate;
          v61 = 2114;
          v62 = uuid;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_FAULT, "[MomentsGeneration] Moment start date unexpectedly nil. uuid %{public}@, isDeleted %{public}d. Taking asset date %@ %{public}@", buf, 0x26u);
        }

        if (startDate)
        {
          v31 = startDate;
        }

        else
        {
          v32 = PLMomentsGetLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = v38;
            v56 = uuid;
            _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "[MomentsGeneration] Fallback asset start date nil %{public}@.", buf, 0xCu);
          }
        }

        v6 = v41;
        array2 = v42;
        v10 = v40;
        v9 = v43;
        v13 = v46;
        if (startDate)
        {
LABEL_26:
          if (![(PLClusterTimeInfo *)v6 utcDateBelongsInCluster:startDate, v38])
          {
            if ([array2 count])
            {
              v33 = [array2 copy];
              [array addObject:v33];

              [array2 removeAllObjects];
            }

            [(PLClusterTimeInfo *)v6 reset];
          }

          [array2 addObject:v12];
          localStartDate = [v12 localStartDate];
          [(PLClusterTimeInfo *)v6 updateWithUTCDate:startDate localDate:localStartDate];
        }

        else
        {
          [v42 addObject:v45];
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v11 != v9);
      v35 = [obj countByEnumeratingWithState:&v51 objects:v64 count:16];
      v9 = v35;
    }

    while (v35);
  }

  if ([array2 count])
  {
    v36 = [array2 copy];
    [array addObject:v36];
  }

  return array;
}

- (id)_startDateComponentsForMomentCluster:(id)cluster
{
  calendar = self->_calendar;
  startDate = [cluster startDate];
  v5 = [(NSCalendar *)calendar components:12 fromDate:startDate];

  return v5;
}

- (id)_momentsSplitBetweenOriginatorsWithMoments:(id)moments
{
  v72[1] = *MEMORY[0x1E69E9840];
  momentsCopy = moments;
  if ([objc_opt_class() highlightSplitBasedOnOriginatorsEnabled])
  {
    if ([momentsCopy count] > 1)
    {
      array = [MEMORY[0x1E695DF70] array];
      array2 = [MEMORY[0x1E695DF70] array];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v9 = momentsCopy;
      v10 = [v9 countByEnumeratingWithState:&v64 objects:v70 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v65;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v65 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v64 + 1) + 8 * i);
            originatorState = [v14 originatorState];
            if ((originatorState & 0x1C) != 0 && (originatorState & 3) == 0)
            {
              v17 = array2;
            }

            else
            {
              v17 = array;
            }

            [v17 addObject:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v64 objects:v70 count:16];
        }

        while (v11);
      }

      array3 = [MEMORY[0x1E695DF70] array];
      if ([array2 count] && objc_msgSend(array, "count"))
      {
        v43 = array3;
        v44 = v9;
        v46 = momentsCopy;
        array4 = [MEMORY[0x1E695DF70] array];
        array5 = [MEMORY[0x1E695DF70] array];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v45 = array2;
        obj = array2;
        v52 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
        if (v52)
        {
          v50 = *v61;
          v51 = array;
          v49 = array4;
          do
          {
            for (j = 0; j != v52; ++j)
            {
              if (*v61 != v50)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v60 + 1) + 8 * j);
              *buf = 0;
              v59 = 0;
              [v20 pl_coordinate];
              *buf = v21;
              v59 = v22;
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              v57 = 0u;
              v23 = array;
              v24 = [v23 countByEnumeratingWithState:&v54 objects:v68 count:16];
              if (v24)
              {
                v25 = v24;
                v53 = j;
                v26 = *v55;
                v27 = 1.79769313e308;
                while (2)
                {
                  for (k = 0; k != v25; ++k)
                  {
                    if (*v55 != v26)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v29 = *(*(&v54 + 1) + 8 * k);
                    startDate = [v20 startDate];
                    endDate = [v20 endDate];
                    startDate2 = [v29 startDate];
                    endDate2 = [v29 endDate];
                    v34 = startDate;
                    [startDate2 timeIntervalSinceDate:endDate];
                    v36 = v35;
                    if (v35 < 0.0)
                    {
                      [v34 timeIntervalSinceDate:endDate2];
                      if (v37 >= 0.0)
                      {
                        v36 = v37;
                      }

                      else
                      {
                        v36 = 0.0;
                      }
                    }

                    [v29 pl_coordinate];
                    CLLocationCoordinate2DGetDistanceFrom();
                    if (v36 <= 300.0)
                    {
                      if (v38 > 10000.0)
                      {

                        array4 = v49;
                        v39 = v49;
                        j = v53;
                        goto LABEL_45;
                      }
                    }

                    else
                    {
                      v27 = fmin(fmax(v38, 1.0) / fmax(v36, 1.0), v27);
                    }
                  }

                  v25 = [v23 countByEnumeratingWithState:&v54 objects:v68 count:16];
                  if (v25)
                  {
                    continue;
                  }

                  break;
                }

                array4 = v49;
                v39 = v49;
                j = v53;
                if (v27 <= 60.0)
                {
                  v39 = array5;
                }
              }

              else
              {

                v39 = array4;
              }

LABEL_45:
              [v39 addObject:v20];
              array = v51;
            }

            v52 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
          }

          while (v52);
        }

        array3 = v43;
        if ([array4 count])
        {
          v40 = [array mutableCopy];
          [v40 addObjectsFromArray:array5];
          [v43 addObject:v40];
          [v43 addObject:array4];
        }

        array2 = v45;
        momentsCopy = v46;
        v9 = v44;
      }

      if (![array3 count])
      {
        v41 = [MEMORY[0x1E695DF70] arrayWithArray:v9];
        [array3 addObject:v41];
      }
    }

    else
    {
      v71 = momentsCopy;
      array3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
    }
  }

  else
  {
    v5 = PLMomentsGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "[MomentsGeneration] Moments split between originators is disabled", buf, 2u);
    }

    v6 = [momentsCopy mutableCopy];
    v72[0] = v6;
    array3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
  }

  return array3;
}

- (id)_eligibleClusterForMoment:(id)moment inMomentsByLocationType:(id)type
{
  momentCopy = moment;
  typeCopy = type;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__111317;
  v17 = __Block_byref_object_dispose__111318;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PLLibraryClusterer__eligibleClusterForMoment_inMomentsByLocationType___block_invoke;
  v10[3] = &unk_1E75771F8;
  v7 = momentCopy;
  v11 = v7;
  v12 = &v13;
  [typeCopy enumerateKeysAndObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __72__PLLibraryClusterer__eligibleClusterForMoment_inMomentsByLocationType___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  obj = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [*(a1 + 32) startDate];
        v12 = [*(a1 + 32) endDate];
        v13 = [v10 startDate];
        v14 = [v10 endDate];
        v15 = v11;
        [v13 timeIntervalSinceDate:v12];
        v17 = v16;
        if (v16 < 0.0)
        {
          [v15 timeIntervalSinceDate:v14];
          if (v18 < 0.0)
          {
            v17 = 0.0;
          }

          else
          {
            v17 = v18;
          }
        }

        if (v17 >= 1800.0)
        {
          [*(a1 + 32) pl_coordinate];
          [v10 pl_coordinate];
          CLLocationCoordinate2DGetDistanceFrom();
          if (v19 >= 500.0)
          {
            continue;
          }
        }

        objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
        *a4 = 1;
        goto LABEL_16;
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

- (id)_momentsSplitOnLocationTypeWithMoments:(id)moments
{
  v55[1] = *MEMORY[0x1E69E9840];
  momentsCopy = moments;
  if ([objc_opt_class() highlightSplitBasedOnLocationTypeEnabled])
  {
    if ([momentsCopy count] <= 1)
    {
      v54 = momentsCopy;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
      goto LABEL_50;
    }

    array = [MEMORY[0x1E695DF70] array];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    currentFrequentLocations = [(PLFrequentLocationManager *)self->_frequentLocationManager currentFrequentLocations];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__PLLibraryClusterer__momentsSplitOnLocationTypeWithMoments___block_invoke;
    aBlock[3] = &unk_1E75771D0;
    v10 = dictionary;
    v48 = v10;
    v42 = _Block_copy(aBlock);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v36 = momentsCopy;
    v11 = momentsCopy;
    v12 = [v11 countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (!v12)
    {
      goto LABEL_47;
    }

    v13 = v12;
    v14 = *v44;
    v37 = array;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v43 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        if (([objc_opt_class() _momentEligibleForSplit:v16] & 1) == 0)
        {
          [array addObject:v16];
          goto LABEL_37;
        }

        array2 = [(PLLibraryClusterer *)self _eligibleClusterForMoment:v16 inMomentsByLocationType:v10];
        if (array2)
        {
          goto LABEL_36;
        }

        processedLocation = [v16 processedLocation];
        if (processedLocation > 5)
        {
          if ((processedLocation - 8) >= 3)
          {
            if (processedLocation != 6)
            {
              if (processedLocation != 7)
              {
                goto LABEL_45;
              }

LABEL_32:
              v26 = array;
              goto LABEL_35;
            }

            goto LABEL_33;
          }
        }

        else
        {
          if (processedLocation > 2)
          {
            if ((processedLocation - 3) >= 2)
            {
              if (processedLocation == 5)
              {
LABEL_25:
                v21 = [PLMomentGenerationUtils frequentLocationNearMoment:v16 withFrequentLocations:currentFrequentLocations];
                v41 = v21;
                if (v21)
                {
                  centroid = [v21 centroid];
                  pl_location = [centroid pl_location];

                  if (pl_location)
                  {
                    centroid2 = [v41 centroid];
                    pl_location2 = [centroid2 pl_location];

                    array2 = [dictionary2 objectForKeyedSubscript:pl_location2];
                    if (!array2)
                    {
                      array2 = [MEMORY[0x1E695DF70] array];
                      [dictionary2 setObject:array2 forKeyedSubscript:pl_location2];
                    }
                  }

                  else
                  {
                    v27 = PLMomentsGetLog();
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                    {
                      centroid3 = [v41 centroid];
                      *buf = 138412546;
                      v50 = v41;
                      v51 = 2112;
                      v52 = centroid3;
                      v29 = centroid3;
                      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "[MomentsGeneration] matchedFrequentLocation (%@) centroid (%@) pl_location found to be nil.", buf, 0x16u);
                    }

                    array2 = (*(v42 + 2))(v42, 5);
                  }

                  array = v37;
                }

                else
                {
                  array2 = (*(v42 + 2))(v42, 5);
                }

                if (array2)
                {
                  goto LABEL_36;
                }
              }

LABEL_45:
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler handleFailureInMethod:a2 object:self file:@"PLLibraryClusterer.m" lineNumber:593 description:@"Each moments need a target array"];

              array2 = 0;
              goto LABEL_36;
            }

LABEL_33:
            v20 = *(v42 + 2);
            goto LABEL_34;
          }

          if (processedLocation)
          {
            if (processedLocation == 1)
            {
              goto LABEL_25;
            }

            if (processedLocation != 2)
            {
              goto LABEL_45;
            }

            goto LABEL_32;
          }
        }

        v20 = *(v42 + 2);
LABEL_34:
        v26 = v20();
LABEL_35:
        array2 = v26;
        if (!v26)
        {
          goto LABEL_45;
        }

LABEL_36:
        [array2 addObject:v16];

LABEL_37:
        objc_autoreleasePoolPop(v17);
        ++v15;
      }

      while (v13 != v15);
      v31 = [v11 countByEnumeratingWithState:&v43 objects:v53 count:16];
      v13 = v31;
      if (!v31)
      {
LABEL_47:

        v32 = objc_autoreleasePoolPush();
        allValues = [v10 allValues];
        v5 = [allValues mutableCopy];

        allValues2 = [dictionary2 allValues];
        [v5 addObjectsFromArray:allValues2];

        if ([array count])
        {
          [(PLLibraryClusterer *)self _mergeMomentsIntoClustersBasedOnTimeWithMoments:array clusters:v5];
        }

        objc_autoreleasePoolPop(v32);

        momentsCopy = v36;
        goto LABEL_50;
      }
    }
  }

  v6 = PLMomentsGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "[MomentsGeneration] Moments split on location type is disabled", buf, 2u);
  }

  v7 = [momentsCopy mutableCopy];
  v55[0] = v7;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];

LABEL_50:

  return v5;
}

id __61__PLLibraryClusterer__momentsSplitOnLocationTypeWithMoments___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a2];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }

  return v4;
}

- (id)_momentsSplitWithinDayWithMoments:(id)moments
{
  v105[1] = *MEMORY[0x1E69E9840];
  momentsCopy = moments;
  selfCopy = self;
  v52 = momentsCopy;
  if ([objc_opt_class() highlightSplitBasedOnTimeAndLocationEnabled])
  {
    if ([momentsCopy count] > 1)
    {
      v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"localStartDate" ascending:1];
      v103 = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
      [v52 sortUsingDescriptors:v9];

      array = [MEMORY[0x1E695DF70] array];
      v84 = 0;
      v85 = &v84;
      v86 = 0x3032000000;
      v87 = __Block_byref_object_copy__111317;
      v88 = __Block_byref_object_dispose__111318;
      array2 = [MEMORY[0x1E695DF70] array];
      v80 = 0;
      v81 = &v80;
      v82 = 0x2020000000;
      v83 = 0;
      v74 = 0;
      v75 = &v74;
      v76 = 0x3032000000;
      v77 = __Block_byref_object_copy__111317;
      v78 = __Block_byref_object_dispose__111318;
      v79 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__PLLibraryClusterer__momentsSplitWithinDayWithMoments___block_invoke;
      aBlock[3] = &unk_1E7577180;
      aBlock[4] = &v84;
      aBlock[5] = &v74;
      aBlock[6] = &v80;
      v11 = _Block_copy(aBlock);
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __56__PLLibraryClusterer__momentsSplitWithinDayWithMoments___block_invoke_2;
      v69[3] = &unk_1E75771A8;
      v51 = array;
      v70 = v51;
      v72 = &v84;
      v59 = v11;
      v71 = v59;
      v56 = _Block_copy(v69);
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = v52;
      v12 = [obj countByEnumeratingWithState:&v65 objects:v102 count:16];
      if (v12)
      {
        v60 = *v66;
        do
        {
          v13 = 0;
          v61 = v12;
          do
          {
            if (*v66 != v60)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v65 + 1) + 8 * v13);
            v15 = objc_autoreleasePoolPush();
            localStartDate = [v14 localStartDate];
            localEndDate = [v14 localEndDate];
            v18 = [objc_opt_class() _momentEligibleForSplit:v14];
            v19 = v75[5];
            if ((v19 != 0) & v18) == 1 && (v81[3])
            {
              localStartDate2 = [v19 localStartDate];
              localEndDate2 = [v75[5] localEndDate];
              v64 = localStartDate2;
              v22 = localEndDate2;
              v23 = localStartDate;
              v24 = localEndDate;
              v62 = v22;
              [v23 timeIntervalSinceDate:v22];
              v26 = v25;
              if (v25 < 0.0)
              {
                [v64 timeIntervalSinceDate:v24];
                v26 = v27;
                if (v27 < 0.0)
                {
                  v26 = 0.0;
                }
              }

              if (v26 >= 10800.0)
              {
                if (v26 >= 21600.0)
                {
                  v41 = MEMORY[0x1E696AEC0];
                  v42 = [v64 description];
                  v43 = [v62 description];
                  approximateLocation = [v41 stringWithFormat:@"[%@ - %@]", v42, v43];

                  v44 = MEMORY[0x1E696AEC0];
                  v45 = [v23 description];
                  v46 = [v24 description];
                  v29 = [v44 stringWithFormat:@"[%@ - %@]", v45, v46];

                  v47 = PLMomentsGetLog();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                  {
                    uuid = [v14 uuid];
                    uuid2 = [v75[5] uuid];
                    *buf = 138413058;
                    v91 = uuid;
                    v92 = 2112;
                    v93 = v29;
                    v94 = 2112;
                    v95 = uuid2;
                    v96 = 2112;
                    v97 = approximateLocation;
                    _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_DEBUG, "[MomentsGeneration] Separated moment %@ %@ from moment %@ %@, 6 or more hours apart", buf, 0x2Au);
                  }

                  v56[2](v56, v14);
                }

                else
                {
                  approximateLocation = [v75[5] approximateLocation];
                  approximateLocation2 = [v14 approximateLocation];
                  v29 = approximateLocation2;
                  if (approximateLocation && approximateLocation2 && ([approximateLocation coordinate], objc_msgSend(v29, "coordinate"), CLLocationCoordinate2DGetDistanceFrom(), v31 = v30, -[PLLibraryClusterer _shouldSplitMomentsWithTimeDistance:locationDistance:](selfCopy, "_shouldSplitMomentsWithTimeDistance:locationDistance:", v26, v30)))
                  {
                    v32 = MEMORY[0x1E696AEC0];
                    v54 = [v64 description];
                    v33 = [v62 description];
                    v34 = [v32 stringWithFormat:@"[%@ - %@]", v54, v33];

                    v53 = v34;
                    v35 = MEMORY[0x1E696AEC0];
                    v36 = [v23 description];
                    v37 = [v24 description];
                    v55 = [v35 stringWithFormat:@"[%@ - %@]", v36, v37];

                    v38 = PLMomentsGetLog();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                    {
                      uuid3 = [v14 uuid];
                      uuid4 = [v75[5] uuid];
                      *buf = 138413570;
                      v91 = uuid3;
                      v92 = 2112;
                      v93 = v55;
                      v94 = 2112;
                      v95 = uuid4;
                      v96 = 2112;
                      v97 = v53;
                      v98 = 2048;
                      v99 = v26 / 3600.0;
                      v100 = 2048;
                      v101 = v31 / 1000.0;
                      _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEBUG, "[MomentsGeneration] Separated moment %@ %@ from moment %@ %@, %.1f hours and %.0f km apart", buf, 0x3Eu);
                    }

                    v56[2](v56, v14);
                  }

                  else
                  {
                    (*(v59 + 2))(v59, v14, 1);
                  }
                }
              }

              else
              {
                (*(v59 + 2))(v59, v14, 1);
              }
            }

            else
            {
              (*(v59 + 2))(v59, v14);
            }

            objc_autoreleasePoolPop(v15);
            ++v13;
          }

          while (v61 != v13);
          v12 = [obj countByEnumeratingWithState:&v65 objects:v102 count:16];
        }

        while (v12);
      }

      [v51 addObject:v85[5]];
      v5 = v51;

      _Block_object_dispose(&v74, 8);
      _Block_object_dispose(&v80, 8);
      _Block_object_dispose(&v84, 8);
    }

    else
    {
      v104 = momentsCopy;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
    }
  }

  else
  {
    v6 = PLMomentsGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "[MomentsGeneration] Moments split within day is disabled", buf, 2u);
    }

    v7 = [v52 mutableCopy];
    v105[0] = v7;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:1];
  }

  return v5;
}

void __56__PLLibraryClusterer__momentsSplitWithinDayWithMoments___block_invoke(void *a1, void *a2, char a3)
{
  v5 = a2;
  [*(*(a1[4] + 8) + 40) addObject:v5];
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  *(*(a1[6] + 8) + 24) |= a3;
}

void __56__PLLibraryClusterer__momentsSplitWithinDayWithMoments___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = *(*(a1[6] + 8) + 40);
  v8 = a2;
  [v3 addObject:v4];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  (*(a1[5] + 16))();
}

- (void)_mergeMomentsIntoClustersBasedOnTimeWithMoments:(id)moments clusters:(id)clusters
{
  v59 = *MEMORY[0x1E69E9840];
  momentsCopy = moments;
  clustersCopy = clusters;
  if ([clustersCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v37 = momentsCopy;
    v8 = momentsCopy;
    v41 = [v8 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v41)
    {
      v39 = array;
      v40 = *v54;
      v44 = clustersCopy;
      v38 = v8;
      do
      {
        v9 = 0;
        do
        {
          if (*v54 != v40)
          {
            objc_enumerationMutation(v8);
          }

          v10 = *(*(&v53 + 1) + 8 * v9);
          v11 = objc_autoreleasePoolPush();
          startDate = [v10 startDate];
          endDate = [v10 endDate];
          if (![clustersCopy count])
          {
            goto LABEL_24;
          }

          v42 = v11;
          v43 = v9;
          v13 = 0;
          v14 = 0x7FFFFFFFFFFFFFFFLL;
          v15 = INFINITY;
          do
          {
            context = objc_autoreleasePoolPush();
            v16 = [clustersCopy objectAtIndexedSubscript:v13];
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            obj = v16;
            v17 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v50;
              do
              {
                v20 = 0;
                do
                {
                  if (*v50 != v19)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v21 = *(*(&v49 + 1) + 8 * v20);
                  v22 = objc_autoreleasePoolPush();
                  startDate2 = [v21 startDate];
                  endDate2 = [v21 endDate];
                  v25 = startDate;
                  [startDate2 timeIntervalSinceDate:endDate];
                  v27 = v26;
                  if (v26 < 0.0)
                  {
                    [v25 timeIntervalSinceDate:endDate2];
                    if (v28 < 0.0)
                    {
                      v27 = 0.0;
                    }

                    else
                    {
                      v27 = v28;
                    }
                  }

                  if (v27 < v15)
                  {
                    v15 = v27;
                    v14 = v13;
                  }

                  objc_autoreleasePoolPop(v22);
                  ++v20;
                }

                while (v18 != v20);
                v18 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
              }

              while (v18);
            }

            objc_autoreleasePoolPop(context);
            ++v13;
            clustersCopy = v44;
          }

          while (v13 < [v44 count]);
          v8 = v38;
          array = v39;
          v11 = v42;
          v9 = v43;
          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_24:
            v29 = PLBackendGetLog();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "[MomentsGeneration] Best index not found in moment cluster generation", buf, 2u);
            }

            v14 = 0;
          }

          v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
          [array addObject:v30];

          objc_autoreleasePoolPop(v11);
          ++v9;
        }

        while (v9 != v41);
        v41 = [v8 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v41);
    }

    if ([v8 count])
    {
      v31 = 0;
      do
      {
        v32 = objc_autoreleasePoolPush();
        v33 = [v8 objectAtIndexedSubscript:v31];
        v34 = [array objectAtIndexedSubscript:v31];
        unsignedIntegerValue = [v34 unsignedIntegerValue];

        v36 = [clustersCopy objectAtIndexedSubscript:unsignedIntegerValue];
        [v36 addObject:v33];

        objc_autoreleasePoolPop(v32);
        ++v31;
      }

      while (v31 < [v8 count]);
    }

    momentsCopy = v37;
  }

  else
  {
    [clustersCopy addObject:momentsCopy];
  }
}

- (void)_createMomentsForDailyAssets:(id)assets currentMomentExistingMomentData:(id)data
{
  assetsCopy = assets;
  dataCopy = data;
  if ([assetsCopy count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    dataManager = [WeakRetained dataManager];

    v9 = [PLCompactMomentClustering alloc];
    frequentLocationManager = [(PLLibraryClusterer *)self frequentLocationManager];
    currentFrequentLocations = [frequentLocationManager currentFrequentLocations];
    v12 = [(PLCompactMomentClustering *)v9 initWithDataManager:dataManager frequentLocations:currentFrequentLocations];

    v13 = [(PLCompactMomentClustering *)v12 createAssetClustersForAssetsInDay:assetsCopy];
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = [v14 libraryClusterer:self createMomentClustersForAssetClusters:v13 existingMomentDataForAssets:dataCopy];
  }
}

- (id)momentClustersForMomentsSortedByDate:(id)date allowLocationSplits:(BOOL)splits allowExternalSplits:(BOOL)externalSplits
{
  externalSplitsCopy = externalSplits;
  splitsCopy = splits;
  v42 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if ([dateCopy count])
  {
    v25 = dateCopy;
    selfCopy = self;
    v8 = [(PLLibraryClusterer *)self _momentsGroupedByDayWithMomentsSortedByDate:dateCopy];
    array = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v8;
    v30 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v30)
    {
      v29 = *v37;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v36 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v14 = v10;
          v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v33;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v33 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v32 + 1) + 8 * j);
                if (!externalSplitsCopy || (v20 = [*(*(&v32 + 1) + 8 * j) pl_originatorState], v21 = v12, (v20 & 8) == 0))
                {
                  v21 = v13;
                }

                [v21 addObject:v19];
              }

              v16 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v16);
          }

          if ([v12 count])
          {
            v22 = [[PLMomentCluster alloc] initWithMoments:v12];
            [array addObject:v22];
          }

          if ([v13 count])
          {
            if (splitsCopy)
            {
              v23 = [(PLLibraryClusterer *)selfCopy locationBasedMomentClustersForMomentsSortedByDate:v13];
              [array addObjectsFromArray:v23];
            }

            else
            {
              v23 = [[PLMomentCluster alloc] initWithMoments:v13];
              [array addObject:v23];
            }
          }

          objc_autoreleasePoolPop(v11);
        }

        v30 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v30);
    }

    dateCopy = v25;
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (id)locationBasedMomentClustersForMomentsSortedByDate:(id)date
{
  v70[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  if ([dateCopy count])
  {
    if ([dateCopy count] == 1)
    {
      array = [[PLMomentCluster alloc] initWithMoments:dateCopy];
      v70[0] = array;
      array6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
    }

    else
    {
      array = [MEMORY[0x1E695DF70] array];
      array2 = [MEMORY[0x1E695DF70] array];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v8 = dateCopy;
      v9 = [v8 countByEnumeratingWithState:&v61 objects:v69 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v62;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v62 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v61 + 1) + 8 * i);
            approximateLocation = [v13 approximateLocation];

            if (approximateLocation)
            {
              v15 = array;
            }

            else
            {
              v15 = array2;
            }

            [(PLMomentCluster *)v15 addObject:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v61 objects:v69 count:16];
        }

        while (v10);
      }

      if ([(PLMomentCluster *)array count]> 1)
      {
        array3 = [MEMORY[0x1E695DF70] array];
        v46 = [(PLLibraryClusterer *)self _momentsSplitOnLocationTypeWithMoments:array];
        [array3 addObjectsFromArray:?];
        array4 = [MEMORY[0x1E695DF70] array];
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v19 = array3;
        v20 = [(PLMomentCluster *)v19 countByEnumeratingWithState:&v57 objects:v67 count:16];
        obj = v19;
        if (v20)
        {
          v21 = v20;
          v22 = *v58;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v58 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v57 + 1) + 8 * j);
              v25 = objc_autoreleasePoolPush();
              v26 = [(PLLibraryClusterer *)self _momentsSplitBetweenOriginatorsWithMoments:v24];
              [array4 addObjectsFromArray:v26];

              objc_autoreleasePoolPop(v25);
            }

            v19 = obj;
            v21 = [(PLMomentCluster *)obj countByEnumeratingWithState:&v57 objects:v67 count:16];
          }

          while (v21);
        }

        v47 = dateCopy;

        [(PLLibraryClusterer *)self _mergeMomentsIntoClustersBasedOnTimeWithMoments:array2 clusters:array4];
        array5 = [MEMORY[0x1E695DF70] array];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v28 = array4;
        v29 = [v28 countByEnumeratingWithState:&v53 objects:v66 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v54;
          do
          {
            for (k = 0; k != v30; ++k)
            {
              if (*v54 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v53 + 1) + 8 * k);
              v34 = objc_autoreleasePoolPush();
              v35 = [(PLLibraryClusterer *)self _momentsSplitWithinDayWithMoments:v33];
              [array5 addObjectsFromArray:v35];

              objc_autoreleasePoolPop(v34);
            }

            v30 = [v28 countByEnumeratingWithState:&v53 objects:v66 count:16];
          }

          while (v30);
        }

        v45 = v28;

        array6 = [MEMORY[0x1E695DF70] array];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v36 = array5;
        v37 = [v36 countByEnumeratingWithState:&v49 objects:v65 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v50;
          do
          {
            for (m = 0; m != v38; ++m)
            {
              if (*v50 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v49 + 1) + 8 * m);
              v42 = objc_autoreleasePoolPush();
              v43 = [[PLMomentCluster alloc] initWithMoments:v41, v45];
              if (v43)
              {
                [array6 addObject:v43];
              }

              objc_autoreleasePoolPop(v42);
            }

            v38 = [v36 countByEnumeratingWithState:&v49 objects:v65 count:16];
          }

          while (v38);
        }

        dateCopy = v47;
        v16 = obj;
      }

      else
      {
        v16 = [[PLMomentCluster alloc] initWithMoments:v8];
        v68 = v16;
        array6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
      }
    }
  }

  else
  {
    array6 = MEMORY[0x1E695E0F0];
  }

  return array6;
}

- (void)processMomentsWithAssets:(id)assets
{
  v48 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained logRoutineInformation];

    anyObject = [assetsCopy anyObject];
    assetComparisonSortDescriptors = [anyObject assetComparisonSortDescriptors];
    v8 = assetComparisonSortDescriptors;
    v9 = MEMORY[0x1E695E0F0];
    if (assetComparisonSortDescriptors)
    {
      v9 = assetComparisonSortDescriptors;
    }

    v10 = v9;

    v34 = v10;
    v35 = assetsCopy;
    v11 = [assetsCopy sortedArrayUsingDescriptors:v10];
    array = [MEMORY[0x1E695DF70] array];
    v40 = [MEMORY[0x1E695DFA8] set];
    v39 = [[PLClusterTimeInfo alloc] initWithCalendar:self->_calendar];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v42;
      v36 = *v42;
      v37 = v13;
      while (2)
      {
        v17 = 0;
        v38 = v15;
        do
        {
          if (*v42 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v41 + 1) + 8 * v17);
          v19 = objc_autoreleasePoolPush();
          if (([v18 isDeleted] & 1) == 0)
          {
            pl_date = [v18 pl_date];
            v21 = [v18 localDateAndCreateIfNeededWithLocalDateCreator:self->_localCreationDateCreator];
            if (!v21)
            {
              v32 = PLMomentsGetLog();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
              {
                uuid = [v18 uuid];
                *buf = 138543362;
                v46 = uuid;
                _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_FAULT, "Asset dateCreated unexpectedly nil. %{public}@", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v19);
              v31 = v34;
              assetsCopy = v35;
              v30 = v40;
              goto LABEL_24;
            }

            v22 = v21;
            if (![(PLClusterTimeInfo *)v39 utcDateBelongsInCluster:pl_date])
            {
              [(PLLibraryClusterer *)self _createMomentsForDailyAssets:array currentMomentExistingMomentData:v40];
              [array removeAllObjects];
              [v40 removeAllObjects];
              [(PLClusterTimeInfo *)v39 reset];
            }

            selfCopy = self;
            v24 = array;
            [array addObject:v18];
            [(PLClusterTimeInfo *)v39 updateWithUTCDate:pl_date localDate:v22];
            v25 = [PLExistingMomentData alloc];
            moment = [v18 moment];
            v27 = [(PLExistingMomentData *)v25 initWithMoment:moment];

            if (v27)
            {
              v28 = [v40 member:v27];
              v29 = v28;
              if (!v28)
              {
                [v40 addObject:v27];
                v28 = v27;
              }

              [v28 registerAsset:v18];
            }

            array = v24;
            self = selfCopy;
            v16 = v36;
            v13 = v37;
            v15 = v38;
          }

          objc_autoreleasePoolPop(v19);
          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v41 objects:v47 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v30 = v40;
    [(PLLibraryClusterer *)self _createMomentsForDailyAssets:array currentMomentExistingMomentData:v40];
    v31 = v34;
    assetsCopy = v35;
LABEL_24:
  }
}

- (PLLibraryClusterer)initWithLocalCreationDateCreator:(id)creator frequentLocationManager:(id)manager
{
  creatorCopy = creator;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = PLLibraryClusterer;
  v9 = [(PLLibraryClusterer *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_localCreationDateCreator, creator);
    objc_storeStrong(&v10->_frequentLocationManager, manager);
    v11 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    v12 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
    [(NSCalendar *)v11 setTimeZone:v12];

    calendar = v10->_calendar;
    v10->_calendar = v11;
  }

  return v10;
}

@end