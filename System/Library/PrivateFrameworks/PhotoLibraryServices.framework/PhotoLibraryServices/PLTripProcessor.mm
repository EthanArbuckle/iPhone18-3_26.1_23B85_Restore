@interface PLTripProcessor
+ (BOOL)_isCurrentMomentOutlierWithPreviousMoment:(id)moment currentMoment:(id)currentMoment nextMoment:(id)nextMoment;
+ (BOOL)_isTimeDeltaViableForDistanceDeltaBetweenPreviousMoment:(id)moment currentMoment:(id)currentMoment;
+ (BOOL)tripsEligibleForMoments:(id)moments frequentLocations:(id)locations;
+ (double)_minimumDistanceBetweenFrequentLocations:(id)locations andItem:(id)item;
+ (double)_timeIntervalBetweenItem:(id)item andItem:(id)andItem;
+ (id)_filterFrequentLocations:(id)locations forDateInterval:(id)interval;
+ (id)_generateTripFromTripsMoments:(id)moments withLastHomeVisitDate:(id)date andLastItem:(id)item;
+ (id)_splitTripsMomentsFromTripsMoments:(id)moments;
+ (id)_tripFromTripMoments:(id)moments withLastHomeVisitDate:(id)date andLastItem:(id)item;
+ (id)processTripsWithItems:(id)items frequentLocations:(id)locations lastHomeVisitDate:(id)date progressBlock:(id)block;
+ (unint64_t)_numberOfAssetsInItems:(id)items;
+ (void)_removeOutliersFromTripsMoments:(id)moments;
@end

@implementation PLTripProcessor

+ (BOOL)_isTimeDeltaViableForDistanceDeltaBetweenPreviousMoment:(id)moment currentMoment:(id)currentMoment
{
  momentCopy = moment;
  currentMomentCopy = currentMoment;
  pl_endDate = [momentCopy pl_endDate];
  pl_startDate = [currentMomentCopy pl_startDate];
  [pl_endDate timeIntervalSinceDate:pl_startDate];
  v10 = fabs(v9);

  if (v10 <= 172800.0)
  {
    [currentMomentCopy pl_coordinate];
    [momentCopy pl_coordinate];
    CLLocationCoordinate2DGetDistanceFrom();
    v11 = v12 <= 70000.0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_isCurrentMomentOutlierWithPreviousMoment:(id)moment currentMoment:(id)currentMoment nextMoment:(id)nextMoment
{
  v43 = *MEMORY[0x1E69E9840];
  momentCopy = moment;
  currentMomentCopy = currentMoment;
  nextMomentCopy = nextMoment;
  [momentCopy pl_coordinate];
  v11 = v10;
  v13 = v12;
  [currentMomentCopy pl_coordinate];
  v16 = PLAzimuthDistancePairFrom(v11, v13, v14, v15);
  v18 = v17;
  [currentMomentCopy pl_coordinate];
  v20 = v19;
  v22 = v21;
  [nextMomentCopy pl_coordinate];
  v25 = v16 - PLAzimuthDistancePairFrom(v20, v22, v23, v24);
  if (v25 >= 0.0)
  {
    v27 = v25;
  }

  else
  {
    v27 = -v25;
  }

  v28 = v27 > 1.0;
  if (v18 <= 300000.0)
  {
    v28 = 0;
  }

  v29 = v26 > 300000.0 && v28;
  if (v29)
  {
    v30 = PLMomentsGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      pl_uuid = [currentMomentCopy pl_uuid];
      pl_uuid2 = [momentCopy pl_uuid];
      pl_uuid3 = [nextMomentCopy pl_uuid];
      v35 = 138413058;
      v36 = pl_uuid;
      v37 = 2048;
      v38 = v27;
      v39 = 2112;
      v40 = pl_uuid2;
      v41 = 2112;
      v42 = pl_uuid3;
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEBUG, "Determined trip moment %@ is outlier due to angle %f between previous (%@) and next (%@)", &v35, 0x2Au);
    }
  }

  return v29;
}

+ (id)_filterFrequentLocations:(id)locations forDateInterval:(id)interval
{
  v22 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  intervalCopy = interval;
  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = locationsCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        dateInterval = [v13 dateInterval];
        v15 = [dateInterval intersectsDateInterval:intervalCopy];

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (double)_minimumDistanceBetweenFrequentLocations:(id)locations andItem:(id)item
{
  v78 = *MEMORY[0x1E69E9840];
  locationsCopy = locations;
  itemCopy = item;
  if (![locationsCopy count])
  {
    goto LABEL_8;
  }

  [itemCopy pl_coordinate];
  latitude = v79.latitude;
  longitude = v79.longitude;
  if (!CLLocationCoordinate2DIsValid(v79))
  {
    goto LABEL_8;
  }

  v10 = latitude != 0.0;
  if (longitude != 0.0)
  {
    v10 = 1;
  }

  v11 = 1.79769313e308;
  if (v10)
  {
    if (latitude == 40.0 && longitude == -100.0)
    {
LABEL_8:
      v11 = 1.79769313e308;
      goto LABEL_9;
    }

    [itemCopy pl_coordinate];
    v71 = v13;
    v72 = v14;
    pl_startDate = [itemCopy pl_startDate];
    [pl_startDate timeIntervalSinceReferenceDate];
    v17 = v16;

    pl_endDate = [itemCopy pl_endDate];
    [pl_endDate timeIntervalSinceReferenceDate];
    v20 = v19;

    if (v17 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v17;
    }

    if (v17 < v20)
    {
      v17 = v20;
    }

    v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v21 + -2592000.0];
    v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v17 + 5184000.0];
    v24 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v22 endDate:v23];
    v25 = [self _filterFrequentLocations:locationsCopy forDateInterval:v24];
    if (![v25 count])
    {
      v26 = locationsCopy;

      v25 = v26;
    }

    v61 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileslideshow"];
    v62 = v25;
    if ([v61 BOOLForKey:@"PLOnlyUsePrimaryLocationsForTrip"])
    {
      v56 = v24;
      v57 = v23;
      v58 = v22;
      v60 = locationsCopy;
      v27 = PLMomentsGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = itemCopy;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEBUG, "Finding primary frequent locations for %@", buf, 0xCu);
      }

      v59 = itemCopy;

      allObjects = [v25 allObjects];
      v29 = [allObjects sortedArrayUsingComparator:&__block_literal_global_19_69525];

      v30 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v31 = [v29 objectAtIndexedSubscript:0];
      sortedMoments = [v31 sortedMoments];
      v33 = [sortedMoments count];

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v34 = v29;
      v35 = [v34 countByEnumeratingWithState:&v67 objects:v77 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = v33;
        v38 = *v68;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v68 != v38)
            {
              objc_enumerationMutation(v34);
            }

            v40 = *(*(&v67 + 1) + 8 * i);
            sortedMoments2 = [v40 sortedMoments];
            v42 = [sortedMoments2 count];

            if (v37 * 0.8 >= v42)
            {
              v43 = PLMomentsGetLog();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218498;
                *&buf[4] = v42;
                *&buf[12] = 2112;
                *&buf[14] = v40;
                v75 = 2048;
                v76 = v37 * 0.8;
                _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEBUG, "[Reject] Current score: %f for %@ (below threshold of %f)", buf, 0x20u);
              }
            }

            else
            {
              [v30 addObject:v40];
              v43 = PLMomentsGetLog();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218242;
                *&buf[4] = v42;
                *&buf[12] = 2112;
                *&buf[14] = v40;
                _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEBUG, "Current score: %f for %@", buf, 0x16u);
              }

              v37 = v42;
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v67 objects:v77 count:16];
        }

        while (v36);
      }

      v44 = PLMomentsGetLog();
      v24 = v56;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v45 = [v30 count];
        v46 = [v62 count];
        *buf = 134218240;
        *&buf[4] = v45;
        *&buf[12] = 2048;
        *&buf[14] = v46;
        _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_DEBUG, "Found (%lu/%lu) primary frequent locations for trip generation", buf, 0x16u);
      }

      itemCopy = v59;
      locationsCopy = v60;
      v23 = v57;
      v22 = v58;
    }

    else
    {
      v30 = v25;
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v47 = v30;
    v48 = [v47 countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v64;
      v11 = 1.79769313e308;
      do
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v64 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = *(*(&v63 + 1) + 8 * j);
          *buf = 0;
          *&buf[8] = 0;
          [v52 coordinate];
          *buf = v53;
          *&buf[8] = v54;
          CLLocationCoordinate2DGetDistanceFrom();
          if (v11 >= v55)
          {
            v11 = v55;
          }
        }

        v49 = [v47 countByEnumeratingWithState:&v63 objects:v73 count:16];
      }

      while (v49);
    }

    else
    {
      v11 = 1.79769313e308;
    }
  }

LABEL_9:

  return v11;
}

BOOL __68__PLTripProcessor__minimumDistanceBetweenFrequentLocations_andItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 sortedMoments];
  v6 = [v5 count];
  v7 = [v4 sortedMoments];

  v8 = v6 < [v7 count];
  return v8;
}

+ (unint64_t)_numberOfAssetsInItems:(id)items
{
  v15 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [itemsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v6 += [*(*(&v10 + 1) + 8 * i) pl_numberOfAssets];
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (double)_timeIntervalBetweenItem:(id)item andItem:(id)andItem
{
  if (item == andItem || !item || !andItem)
  {
    return 0.0;
  }

  andItemCopy = andItem;
  pl_startDate = [item pl_startDate];
  [pl_startDate timeIntervalSinceReferenceDate];
  v8 = v7;
  pl_startDate2 = [andItemCopy pl_startDate];

  [pl_startDate2 timeIntervalSinceReferenceDate];
  v11 = vabdd_f64(v8, v10);

  return v11;
}

+ (BOOL)tripsEligibleForMoments:(id)moments frequentLocations:(id)locations
{
  v21 = *MEMORY[0x1E69E9840];
  momentsCopy = moments;
  locationsCopy = locations;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = momentsCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [self _minimumDistanceBetweenFrequentLocations:locationsCopy andItem:{*(*(&v16 + 1) + 8 * i), v16}];
        if (v13 >= 70000.0)
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

+ (id)_tripFromTripMoments:(id)moments withLastHomeVisitDate:(id)date andLastItem:(id)item
{
  v36 = *MEMORY[0x1E69E9840];
  momentsCopy = moments;
  dateCopy = date;
  itemCopy = item;
  v11 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_69536];
  v12 = [momentsCopy filteredArrayUsingPredicate:v11];

  if ([v12 count] < 2 || (objc_msgSend(v12, "firstObject"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "lastObject"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "_timeIntervalBetweenItem:andItem:", v13, v14), v16 = v15, v14, v13, v16 < 28800.0) || objc_msgSend(self, "_numberOfAssetsInItems:", v12) < 8)
  {
    v17 = 0;
    goto LABEL_5;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = momentsCopy;
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
LABEL_10:
    v23 = 0;
    while (1)
    {
      if (*v32 != v22)
      {
        objc_enumerationMutation(v19);
      }

      if (([*(*(&v31 + 1) + 8 * v23) pl_originatorState] & 7) != 4)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v21)
        {
          goto LABEL_10;
        }

        v17 = 0;
        lastObject = v19;
        goto LABEL_26;
      }
    }
  }

  v25 = v16 >= 345600.0;
  lastObject = [v19 lastObject];
  if (lastObject == itemCopy)
  {
    date = [MEMORY[0x1E695DF00] date];
    pl_endDate = [lastObject pl_endDate];
    [date timeIntervalSinceDate:pl_endDate];
    if (v28 > 518400.0)
    {

      goto LABEL_25;
    }

    if (dateCopy)
    {
      pl_endDate2 = [lastObject pl_endDate];
      v30 = [pl_endDate2 compare:dateCopy];

      if (v30 != 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v25 = 2;
  }

LABEL_25:
  v17 = [[PLTrip alloc] initWithItems:v19 type:v25];
LABEL_26:

LABEL_5:

  return v17;
}

+ (void)_removeOutliersFromTripsMoments:(id)moments
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = moments;
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        array = [MEMORY[0x1E695DF70] array];
        if (([v8 count] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v10 = 1;
          do
          {
            v11 = [v8 objectAtIndexedSubscript:v10 - 1];
            v12 = [v8 objectAtIndexedSubscript:v10];
            v13 = [v8 objectAtIndexedSubscript:++v10];
            if ([self _isCurrentMomentOutlierWithPreviousMoment:v11 currentMoment:v12 nextMoment:v13])
            {
              [array addObject:v12];
            }
          }

          while (v10 < [v8 count] - 1);
        }

        [v8 removeObjectsInArray:array];

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

+ (id)_splitTripsMomentsFromTripsMoments:(id)moments
{
  v41 = *MEMORY[0x1E69E9840];
  momentsCopy = moments;
  array = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = momentsCopy;
  v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v29)
  {
    v28 = *v36;
    do
    {
      v6 = 0;
      do
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v6;
        v7 = *(*(&v35 + 1) + 8 * v6);
        array2 = [MEMORY[0x1E695DF70] array];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = 0;
          v13 = *v32;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v32 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v31 + 1) + 8 * i);
              if (v12)
              {
                [self _timeIntervalBetweenItem:*(*(&v31 + 1) + 8 * i) andItem:v12];
                v17 = v16;
                [v15 pl_coordinate];
                [v12 pl_coordinate];
                CLLocationCoordinate2DGetDistanceFrom();
                v19 = 2500000.0;
                if (v17 > 172800.0)
                {
                  v19 = v17 / 86400.0 * -375000.0 + 3250000.0;
                }

                if (v18 > v19)
                {
                  v20 = [array2 mutableCopy];
                  [array addObject:v20];

                  [array2 removeAllObjects];
                }
              }

              [array2 addObject:v15];
              [v15 pl_coordinate];
              latitude = v43.latitude;
              longitude = v43.longitude;
              if (CLLocationCoordinate2DIsValid(v43))
              {
                v23 = latitude != 0.0;
                if (longitude != 0.0)
                {
                  v23 = 1;
                }

                if (v23 && (latitude != 40.0 || longitude != -100.0))
                {
                  v25 = v15;

                  v12 = v25;
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v11);
        }

        else
        {
          v12 = 0;
        }

        [array addObject:array2];
        v6 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v29);
  }

  return array;
}

+ (id)_generateTripFromTripsMoments:(id)moments withLastHomeVisitDate:(id)date andLastItem:(id)item
{
  v116 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  itemCopy = item;
  momentsCopy = moments;
  [self _removeOutliersFromTripsMoments:momentsCopy];
  selfCopy = self;
  v9 = [self _splitTripsMomentsFromTripsMoments:momentsCopy];

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v107 objects:v115 count:16];
  if (!v11)
  {
    v13 = 0;
    goto LABEL_17;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v108;
  do
  {
    v15 = 0;
    do
    {
      if (*v108 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v107 + 1) + 8 * v15);
      if (!v13)
      {
        goto LABEL_10;
      }

      firstObject = [*(*(&v107 + 1) + 8 * v15) firstObject];
      v18 = v13;
      lastObject = [v13 lastObject];
      pl_endDate = [lastObject pl_endDate];
      pl_startDate = [firstObject pl_startDate];
      [pl_endDate timeIntervalSinceDate:pl_startDate];
      v23 = fabs(v22);

      if (v23 > 172800.0 || ([firstObject pl_coordinate], v105 = v24, v106 = v25, objc_msgSend(lastObject, "pl_coordinate"), v103 = v26, v104 = v27, CLLocationCoordinate2DGetDistanceFrom(), v28 > 70000.0))
      {

        v13 = v18;
LABEL_10:
        firstObject = v13;
        v13 = v16;
        goto LABEL_11;
      }

      v13 = v18;
      [v18 addObjectsFromArray:v16];
      [array2 addObject:v16];

LABEL_11:
      ++v15;
    }

    while (v12 != v15);
    v29 = [obj countByEnumeratingWithState:&v107 objects:v115 count:16];
    v12 = v29;
  }

  while (v29);
LABEL_17:
  v74 = v13;

  [obj removeObjectsInArray:array2];
  array3 = [MEMORY[0x1E695DF70] array];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v78 = obj;
  v83 = [v78 countByEnumeratingWithState:&v99 objects:v114 count:16];
  v30 = 0;
  if (!v83)
  {
    goto LABEL_54;
  }

  v79 = array;
  v80 = *v100;
  while (2)
  {
    v31 = 0;
    while (2)
    {
      if (*v100 != v80)
      {
        objc_enumerationMutation(v78);
      }

      v32 = *(*(&v99 + 1) + 8 * v31);
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v33 = v32;
      v34 = [v33 countByEnumeratingWithState:&v95 objects:v113 count:{16, v74}];
      if (!v34)
      {
        array4 = v33;
        goto LABEL_50;
      }

      v35 = v34;
      v84 = v31;
      v36 = 0;
      v37 = *v96;
      v38 = 0.0;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          v40 = v30;
          if (*v96 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v41 = *(*(&v95 + 1) + 8 * i);
          if (v40)
          {
            pl_originatorState = [*(*(&v95 + 1) + 8 * i) pl_originatorState];
            pl_originatorState2 = [v40 pl_originatorState];
            if (pl_originatorState != pl_originatorState2 && (pl_originatorState == 4 || pl_originatorState2 == 4))
            {
              v105 = 0;
              v106 = 0;
              [v41 pl_coordinate];
              v105 = v45;
              v106 = v46;
              v103 = 0;
              v104 = 0;
              [v40 pl_coordinate];
              v103 = v47;
              v104 = v48;
              CLLocationCoordinate2DGetDistanceFrom();
              v50 = v49;
              [v41 pl_startDate];
              v51 = obja = v36;
              pl_endDate2 = [v40 pl_endDate];
              [v51 timeIntervalSinceDate:pl_endDate2];
              v54 = fabs(v53);
              pl_endDate3 = [v41 pl_endDate];
              pl_startDate2 = [v40 pl_startDate];
              [pl_endDate3 timeIntervalSinceDate:pl_startDate2];
              v58 = fmin(v54, fabs(v57));

              v38 = v38 + fmax(v50, 1.0) / fmax(v58, 1.0);
              v36 = obja + 1;
            }
          }

          v30 = v41;
        }

        v35 = [v33 countByEnumeratingWithState:&v95 objects:v113 count:16];
      }

      while (v35);

      if (v36)
      {
        array = v79;
        v31 = v84;
        if (v38 / v36 > 60.0)
        {
          array4 = [MEMORY[0x1E695DF70] array];
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v60 = v33;
          v61 = [v60 countByEnumeratingWithState:&v91 objects:v112 count:16];
          if (v61)
          {
            v62 = v61;
            v63 = *v92;
            do
            {
              for (j = 0; j != v62; ++j)
              {
                if (*v92 != v63)
                {
                  objc_enumerationMutation(v60);
                }

                v65 = *(*(&v91 + 1) + 8 * j);
                if ([v65 pl_originatorState] == 4)
                {
                  [array4 addObject:v65];
                }
              }

              v62 = [v60 countByEnumeratingWithState:&v91 objects:v112 count:16];
            }

            while (v62);
          }

          [v60 removeObjectsInArray:array4];
          [array3 addObject:array4];
LABEL_50:
        }
      }

      else
      {
        array = v79;
        v31 = v84;
      }

      if (++v31 != v83)
      {
        continue;
      }

      break;
    }

    v83 = [v78 countByEnumeratingWithState:&v99 objects:v114 count:16];
    if (v83)
    {
      continue;
    }

    break;
  }

LABEL_54:

  [v78 addObjectsFromArray:array3];
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v66 = v78;
  v67 = [v66 countByEnumeratingWithState:&v87 objects:v111 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v88;
    do
    {
      for (k = 0; k != v68; ++k)
      {
        if (*v88 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = [selfCopy _tripFromTripMoments:*(*(&v87 + 1) + 8 * k) withLastHomeVisitDate:dateCopy andLastItem:{itemCopy, v74}];
        if (v71)
        {
          [array addObject:v71];
        }
      }

      v68 = [v66 countByEnumeratingWithState:&v87 objects:v111 count:16];
    }

    while (v68);
  }

  v72 = array;
  return array;
}

+ (id)processTripsWithItems:(id)items frequentLocations:(id)locations lastHomeVisitDate:(id)date progressBlock:(id)block
{
  v127 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  locationsCopy = locations;
  dateCopy = date;
  blockCopy = block;
  if (![locationsCopy count] || !objc_msgSend(itemsCopy, "count"))
  {
    v69 = MEMORY[0x1E695E0F0];
    goto LABEL_93;
  }

  v89 = dateCopy;
  v13 = PLMomentGenerationGetLog();
  v14 = os_signpost_id_generate(v13);
  info = 0;
  mach_timebase_info(&info);
  v15 = v13;
  v16 = v15;
  v84 = v14 - 1;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "TripsProcessing", "", buf, 2u);
  }

  spid = v14;
  v87 = v16;
  v88 = itemsCopy;

  v83 = mach_absolute_time();
  v85 = blockCopy;
  v92 = _Block_copy(blockCopy);
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v18 = objc_opt_new();
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v86 = locationsCopy;
  v19 = locationsCopy;
  v20 = [v19 countByEnumeratingWithState:&v113 objects:v126 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v114;
    do
    {
      v23 = 0;
      v24 = distantPast;
      do
      {
        if (*v114 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v113 + 1) + 8 * v23);
        sortedMoments = [v25 sortedMoments];
        [v18 addObjectsFromArray:sortedMoments];

        dateInterval = [v25 dateInterval];
        endDate = [dateInterval endDate];
        distantPast = [v24 laterDate:endDate];

        ++v23;
        v24 = distantPast;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v113 objects:v126 count:16];
    }

    while (v21);
  }

  if (!v89 || [v89 compare:distantPast] == -1)
  {
    v29 = distantPast;

    v89 = v29;
  }

  v30 = v92;
  v31 = +[PLMediaMiningUtilities sortDescriptorsForSortingItemsByTime];
  v32 = [v88 sortedArrayUsingDescriptors:v31];

  lastObject = [v32 lastObject];
  v33 = objc_opt_new();
  v91 = objc_opt_new();
  v34 = [v32 count];
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v35 = v32;
  v95 = v35;
  v102 = [v35 countByEnumeratingWithState:&v109 objects:v125 count:16];
  if (!v102)
  {
    v103 = 0;
    goto LABEL_86;
  }

  v103 = 0;
  v36 = 1.0 / v34;
  v101 = *v110;
  v37 = 0.0;
  while (2)
  {
    v38 = 0;
    do
    {
      if (*v110 != v101)
      {
        objc_enumerationMutation(v35);
      }

      v39 = *(*(&v109 + 1) + 8 * v38);
      if (v30)
      {
        v108 = 0;
        (v30)[2](v30, &v108, v37);
        if (v108)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(v119) = 93;
            _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
          }

          v69 = MEMORY[0x1E695E0F0];
          v70 = v35;
          goto LABEL_91;
        }
      }

      v40 = objc_autoreleasePoolPush();
      if (([v39 pl_originatorState] & 8) == 0)
      {
        [v39 pl_coordinate];
        latitude = v129.latitude;
        longitude = v129.longitude;
        if (!CLLocationCoordinate2DIsValid(v129))
        {
          goto LABEL_29;
        }

        v43 = latitude != 0.0;
        if (longitude != 0.0)
        {
          v43 = 1;
        }

        if (v43)
        {
          v60 = v39;
          pl_locationType = [v39 pl_locationType];
          if (latitude != 40.0 || longitude != -100.0)
          {
            v63 = pl_locationType;
            [self _timeIntervalBetweenItem:v60 andItem:v103];
            v46 = v64;
            v65 = v60;

            if (v63 == 10)
            {
              v99 = 1;
              v103 = v65;
              v44 = v60;
              v47 = 0;
              v35 = v95;
              v30 = v92;
            }

            else
            {
              v30 = v92;
              if ([v18 containsObject:v65])
              {
                v103 = v65;
                v100 = 0;
                v99 = 1;
                v44 = v60;
                v47 = 1;
                v35 = v95;
                goto LABEL_35;
              }

              [self _minimumDistanceBetweenFrequentLocations:v19 andItem:v65];
              v99 = 1;
              v103 = v65;
              v44 = v60;
              v47 = v67 < 70000.0;
              v35 = v95;
            }

LABEL_32:
            v100 = 0;
            if (!v47 && v46 <= 518400.0)
            {
              [v33 addObject:v44];
              v47 = 0;
              v100 = 1;
            }

LABEL_35:
            if (([v44 pl_originatorState] & 3) != 0)
            {
              v48 = 0;
              if (!v47)
              {
                goto LABEL_57;
              }
            }

            else
            {
              v48 = [v44 pl_originatorState] != 0;
              if (!v47)
              {
                goto LABEL_57;
              }
            }

            if (!v48)
            {
LABEL_40:
              v97 = v47;
              v106 = 0u;
              v107 = 0u;
              v104 = 0u;
              v105 = 0u;
              v98 = v33;
              reverseObjectEnumerator = [v33 reverseObjectEnumerator];
              v50 = [reverseObjectEnumerator countByEnumeratingWithState:&v104 objects:v124 count:16];
              if (v50)
              {
                v51 = v50;
                v93 = v44;
                v94 = v40;
                v52 = 0;
                v53 = *v105;
                do
                {
                  v54 = 0;
                  v55 = v52;
                  v52 += v51;
                  do
                  {
                    if (*v105 != v53)
                    {
                      objc_enumerationMutation(reverseObjectEnumerator);
                    }

                    [*(*(&v104 + 1) + 8 * v54) pl_coordinate];
                    v56 = v130.latitude;
                    v57 = v130.longitude;
                    if (CLLocationCoordinate2DIsValid(v130))
                    {
                      v58 = v56 != 0.0;
                      if (v57 != 0.0)
                      {
                        v58 = 1;
                      }

                      if (v58 && (v56 != 40.0 || v57 != -100.0))
                      {
                        v52 = v55;
                        goto LABEL_60;
                      }
                    }

                    ++v55;
                    ++v54;
                  }

                  while (v51 != v54);
                  v51 = [reverseObjectEnumerator countByEnumeratingWithState:&v104 objects:v124 count:16];
                }

                while (v51);
LABEL_60:

                v30 = v92;
                v44 = v93;
                v33 = v98;
                v40 = v94;
                if (v52)
                {
                  [v98 removeObjectsInRange:{objc_msgSend(v98, "count") - v52, v52}];
                }
              }

              else
              {
              }

              if ([v33 count])
              {
                [v91 addObject:v33];
                v66 = objc_opt_new();

                v33 = v66;
              }

              v35 = v95;

              if ((v97 | v100 | v99 ^ 1))
              {
                v103 = 0;
              }

              else
              {
                [v33 addObject:v44];
                v103 = v44;
              }

              goto LABEL_74;
            }

LABEL_57:
            if (((v100 | v48) & 1) != 0 && v44 != lastObject)
            {
              goto LABEL_74;
            }

            goto LABEL_40;
          }
        }

        else
        {
LABEL_29:
          v60 = v39;
          [v39 pl_locationType];
        }

        if (![v33 count])
        {
          goto LABEL_74;
        }

        v44 = v60;
        [self _timeIntervalBetweenItem:v60 andItem:v103];
        v46 = v45;
        v99 = 0;
        v47 = 0;
        goto LABEL_32;
      }

LABEL_74:
      v37 = v36 + v37;
      objc_autoreleasePoolPop(v40);
      ++v38;
    }

    while (v38 != v102);
    v68 = [v35 countByEnumeratingWithState:&v109 objects:v125 count:16];
    v102 = v68;
    if (v68)
    {
      continue;
    }

    break;
  }

LABEL_86:

  v69 = [self _generateTripFromTripsMoments:v91 withLastHomeVisitDate:v89 andLastItem:lastObject];
  v71 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v74 = v87;
  v75 = v74;
  if (v84 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v74))
  {
    v76 = v33;
    v77 = [v88 count];
    v78 = [v69 count];
    *buf = 134218240;
    v119 = v77;
    v33 = v76;
    v35 = v95;
    v120 = 2048;
    v121 = v78;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v75, OS_SIGNPOST_INTERVAL_END, spid, "TripsProcessing", "[HighlightsGeneration] Trips Processing for %lu moments, %lu trips", buf, 0x16u);
  }

  v70 = v75;
  if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
  {
    v79 = (((v71 - v83) * numer) / denom) / 1000000.0;
    v35 = v95;
    v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[HighlightsGeneration] Trips Processing for %lu moments, %lu trips", objc_msgSend(v88, "count"), objc_msgSend(v69, "count")];
    *buf = 136315650;
    v119 = "TripsProcessing";
    v120 = 2112;
    v121 = v80;
    itemsCopy = v88;
    v30 = v92;
    v122 = 2048;
    v123 = v79;
    _os_log_impl(&dword_19BF1F000, v70, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  else
  {
LABEL_91:
    itemsCopy = v88;
  }

  blockCopy = v85;
  locationsCopy = v86;
  dateCopy = v89;
LABEL_93:

  return v69;
}

@end