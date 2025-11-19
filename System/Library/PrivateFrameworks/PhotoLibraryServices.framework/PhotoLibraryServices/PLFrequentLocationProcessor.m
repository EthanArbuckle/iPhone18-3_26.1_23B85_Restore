@interface PLFrequentLocationProcessor
+ (double)_computeWeekendFrequencyForMoments:(id)a3;
+ (id)_clustersFromLocationsOfInterest:(id)a3 forItems:(id)a4 remainingItemsToCluster:(id *)a5 progressBlock:(id)a6;
+ (id)_coarseClustersForItems:(id)a3 progressBlock:(id)a4;
+ (id)_finalClustersFromCoarseClusters:(id)a3 progressBlock:(id)a4;
+ (id)processFrequentLocationsWithItemSubset:(id)a3 locationsOfInterest:(id)a4 progressBlock:(id)a5;
+ (id)processFrequentLocationsWithItems:(id)a3 locationsOfInterest:(id)a4 progressBlock:(id)a5;
+ (id)processFrequentLocationsWithSortedMoments:(id)a3 locationsOfInterest:(id)a4 progressBlock:(id)a5;
+ (id)sortDescriptorsForLocationsOfInterest;
@end

@implementation PLFrequentLocationProcessor

+ (id)sortDescriptorsForLocationsOfInterest
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"type" ascending:1 comparator:&__block_literal_global_29];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1 comparator:{&__block_literal_global_32, v2}];
  v7[1] = v3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"identifier" ascending:1];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

uint64_t __68__PLFrequentLocationProcessor_sortDescriptorsForLocationsOfInterest__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 mapItemLocation];
  v7 = [v6 location];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [v4 routineLocation];
    v9 = [v10 location];
  }

  v11 = [v5 mapItemLocation];
  v12 = [v11 location];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = [v5 routineLocation];
    v14 = [v15 location];
  }

  v16 = MEMORY[0x1E696AD98];
  [v9 coordinate];
  v17 = [v16 numberWithDouble:?];
  v18 = [v17 hash];
  v19 = MEMORY[0x1E696AD98];
  [v9 coordinate];
  v21 = [v19 numberWithDouble:v20];
  v22 = [v21 hash];

  v23 = MEMORY[0x1E696AD98];
  [v14 coordinate];
  v24 = [v23 numberWithDouble:?];
  v25 = [v24 hash];
  v26 = MEMORY[0x1E696AD98];
  [v14 coordinate];
  v28 = [v26 numberWithDouble:v27];
  v29 = [v28 hash];

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22 ^ v18];
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v29 ^ v25];
  v32 = [v30 compare:v31];

  return v32;
}

uint64_t __68__PLFrequentLocationProcessor_sortDescriptorsForLocationsOfInterest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 intValue];
  v6 = [v4 intValue];

  switch(v5)
  {
    case -1:
      v7 = v6 + 1;
      if ((v6 + 1) <= 2)
      {
        v8 = &unk_19C60FE48;
        return v8[v7];
      }

      break;
    case 1:
      v7 = v6 + 1;
      if ((v6 + 1) < 3)
      {
        v8 = &unk_19C60FE30;
        return v8[v7];
      }

      break;
    case 0:
      v7 = v6 + 1;
      if ((v6 + 1) < 3)
      {
        v8 = &unk_19C60FE18;
        return v8[v7];
      }

      break;
  }

  return 0;
}

+ (id)_coarseClustersForItems:(id)a3 progressBlock:(id)a4
{
  v76 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v45 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [MEMORY[0x1E695DFA0] orderedSet];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PLFrequentLocationProcessor__coarseClustersForItems_progressBlock___block_invoke;
  aBlock[3] = &unk_1E7573D90;
  v9 = v8;
  v70 = v9;
  v58 = v7;
  v71 = v58;
  v44 = v6;
  v72 = v44;
  v10 = _Block_copy(aBlock);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v5;
  v52 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v52)
  {
    v11 = *v66;
    v47 = v10;
    v48 = v9;
    v46 = *v66;
    do
    {
      for (i = 0; i != v52; ++i)
      {
        if (*v66 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v65 + 1) + 8 * i);
        v14 = [v13 pl_startDate];
        v15 = [v13 pl_endDate];
        v55 = v14;
        v16 = v14;
        v17 = v13;
        v54 = [v16 dateByAddingTimeInterval:-7776000.0];
        v10[2](v10);
        if (![v58 count])
        {
          goto LABEL_25;
        }

        v53 = i;
        v63 = 0;
        v64 = 0;
        [v13 pl_coordinate];
        v63 = v18;
        v64 = v19;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v20 = v9;
        v21 = [v20 countByEnumeratingWithState:&v59 objects:v74 count:16];
        if (!v21)
        {

LABEL_25:
          v37 = v15;
          v38 = [PLFrequentLocation alloc];
          v73 = v17;
          v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
          v40 = [(PLFrequentLocation *)v38 initWithSortedMoments:v39];

          [v58 setObject:v40 forKeyedSubscript:v37];
          [v9 addObject:v37];

          v15 = v37;
          goto LABEL_26;
        }

        v22 = v21;
        v57 = v20;
        v50 = v17;
        v51 = v15;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = *v60;
        v56 = 1;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v60 != v26)
            {
              objc_enumerationMutation(v57);
            }

            v28 = *(*(&v59 + 1) + 8 * j);
            v29 = [v58 objectForKeyedSubscript:v28];
            [v29 coordinate];
            CLLocationCoordinate2DGetDistanceFrom();
            v31 = v30;
            v32 = [v29 sortedMoments];
            v33 = [v32 count];

            if (v31 < 5000.0 && v33 > v23)
            {
              v35 = v29;

              v36 = v28;
              v56 = 0;
              v23 = v33;
              v24 = v35;
              v25 = v36;
            }
          }

          v22 = [v57 countByEnumeratingWithState:&v59 objects:v74 count:16];
        }

        while (v22);

        if (v24)
        {
          [v24 addMomentToSortedMoments:v50];
          [v58 removeObjectForKey:v25];
          v17 = v50;
          v15 = v51;
          [v58 setObject:v24 forKeyedSubscript:v51];
          [v57 removeObject:v25];
          [v57 addObject:v51];

          v10 = v47;
          v9 = v48;
          v11 = v46;
          i = v53;
        }

        else
        {

          v10 = v47;
          v9 = v48;
          v11 = v46;
          i = v53;
          v17 = v50;
          v15 = v51;
        }

        if (v56)
        {
          goto LABEL_25;
        }

LABEL_26:
      }

      v52 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v52);
  }

  v41 = [MEMORY[0x1E695DF00] distantFuture];
  (v10[2])(v10, v41);

  v42 = v44;
  return v44;
}

void __69__PLFrequentLocationProcessor__coarseClustersForItems_progressBlock___block_invoke(id *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([a1[4] count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = a1[4];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if ([v10 compare:{v3, v14}] == 1)
        {
          break;
        }

        [v4 addObject:v10];
        v11 = [a1[5] objectForKeyedSubscript:v10];
        v12 = [v11 sortedMoments];
        v13 = [v12 count];

        if (v13 >= 7)
        {
          [a1[6] addObject:v11];
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if ([v4 count])
    {
      [a1[4] removeObjectsInArray:v4];
      [a1[5] removeObjectsForKeys:v4];
    }
  }
}

+ (id)_finalClustersFromCoarseClusters:(id)a3 progressBlock:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [(PLDataClustering *)[PLDBSCANClustering alloc] initWithDistanceBlock:&__block_literal_global_20];
  [(PLDataDensityClustering *)v8 setMaximumDistance:250.0];
  [(PLDataDensityClustering *)v8 setMinimumNumberOfObjects:7];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v5;
  v33 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v33)
  {
    v32 = *v46;
    v38 = v8;
    v39 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v46 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v9;
        v10 = *(*(&v45 + 1) + 8 * v9);
        context = objc_autoreleasePoolPush();
        v11 = [v10 sortedMoments];
        v40 = [v11 count];
        v34 = v11;
        if (v40 < 0x801)
        {
          v20 = [(PLDBSCANClustering *)v8 performWithDataset:v11 progressBlock:v6];
        }

        else
        {
          v37 = [MEMORY[0x1E695DF70] array];
          v12 = 0;
          v13 = vcvtpd_u64_f64(v40 / ceil(vcvtd_n_f64_u64(v40, 0xBuLL)));
          v14 = v40;
          do
          {
            v15 = objc_autoreleasePoolPush();
            v16 = v14 - v13;
            if (v14 >= v13)
            {
              v17 = v13;
            }

            else
            {
              v17 = v14;
            }

            v18 = [v11 subarrayWithRange:{v12, v17}];
            v19 = [(PLDBSCANClustering *)v8 performWithDataset:v18 progressBlock:v39];
            [v37 addObjectsFromArray:v19];

            v8 = v38;
            objc_autoreleasePoolPop(v15);
            v12 += v13;
            v14 = v16;
          }

          while (v12 < v40);
          v20 = v37;
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v42;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v42 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = [*(*(&v41 + 1) + 8 * i) objects];
              v27 = +[PLMediaMiningUtilities sortDescriptorsForSortingItemsByTime];
              v28 = [v26 sortedArrayUsingDescriptors:v27];

              v29 = [[PLFrequentLocation alloc] initWithSortedMoments:v28];
              [v7 addObject:v29];
            }

            v23 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v23);
        }

        objc_autoreleasePoolPop(context);
        v9 = v36 + 1;
        v8 = v38;
        v6 = v39;
      }

      while (v36 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v33);
  }

  return v7;
}

uint64_t __78__PLFrequentLocationProcessor__finalClustersFromCoarseClusters_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 pl_coordinate];
  [v4 pl_coordinate];

  return CLLocationCoordinate2DGetDistanceFrom();
}

+ (id)_clustersFromLocationsOfInterest:(id)a3 forItems:(id)a4 remainingItemsToCluster:(id *)a5 progressBlock:(id)a6
{
  v44 = a5;
  v76 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v45 = a6;
  v48 = _Block_copy(v45);
  v46 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v67;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v67 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v66 + 1) + 8 * i);
        v17 = [MEMORY[0x1E695DF70] array];
        [v10 setObject:v17 forKey:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v66 objects:v75 count:16];
    }

    while (v13);
  }

  v18 = [v9 count];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v9;
  v19 = v48;
  v50 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v50)
  {
    v20 = 1.0 / v18;
    v49 = *v63;
    v21 = 0.0;
    while (2)
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v63 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v62 + 1) + 8 * j);
        v24 = objc_autoreleasePoolPush();
        if (v19)
        {
          v61 = 0;
          (v19)[2](v19, &v61, v21);
          if (v61)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              v73 = 265;
              _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
            }

            objc_autoreleasePoolPop(v24);
            v42 = obj;

            v34 = MEMORY[0x1E695E0F0];
            goto LABEL_44;
          }
        }

        v25 = [v23 pl_location];
        if (v25)
        {
          v51 = v23;
          v52 = v24;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v26 = v11;
          v27 = [v26 countByEnumeratingWithState:&v57 objects:v71 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v58;
            while (2)
            {
              for (k = 0; k != v28; ++k)
              {
                if (*v58 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v57 + 1) + 8 * k);
                [v31 distanceFromLocation:v25];
                if (v32 <= 500.0)
                {
                  v33 = [v10 objectForKey:v31];
                  [v33 addObject:v51];

                  goto LABEL_26;
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v57 objects:v71 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

          [v46 addObject:v51];
LABEL_26:
          v19 = v48;
          v24 = v52;
        }

        v21 = v20 + v21;

        objc_autoreleasePoolPop(v24);
      }

      v50 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
      if (v50)
      {
        continue;
      }

      break;
    }
  }

  v34 = [MEMORY[0x1E695DF70] array];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v35 = v11;
  v36 = [v35 countByEnumeratingWithState:&v53 objects:v70 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v54;
    do
    {
      for (m = 0; m != v37; ++m)
      {
        if (*v54 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = [v10 objectForKey:{*(*(&v53 + 1) + 8 * m), v44}];
        if ([v40 count])
        {
          v41 = [[PLFrequentLocation alloc] initWithSortedMoments:v40];
          [v34 addObject:v41];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v53 objects:v70 count:16];
    }

    while (v37);
  }

  if (v44)
  {
    *v44 = v46;
  }

  v19 = v48;
  v42 = obj;
LABEL_44:

  return v34;
}

+ (double)_computeWeekendFrequencyForMoments:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v6)
  {
    v15 = 0.0;
    goto LABEL_14;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v19;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v18 + 1) + 8 * i);
      v12 = [v11 pl_startDate];
      if ([v4 isDateInWeekend:v12])
      {
      }

      else
      {
        v13 = [v11 pl_endDate];
        v14 = [v4 isDateInWeekend:v13];

        if (!v14)
        {
          continue;
        }
      }

      ++v8;
    }

    v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v7);
  v15 = v8;
LABEL_14:

  v16 = [v5 count];
  return v15 / v16;
}

+ (id)processFrequentLocationsWithItemSubset:(id)a3 locationsOfInterest:(id)a4 progressBlock:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _Block_copy(v10);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v34 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __104__PLFrequentLocationProcessor_processFrequentLocationsWithItemSubset_locationsOfInterest_progressBlock___block_invoke;
  v31[3] = &unk_1E7573D48;
  v12 = v11;
  v32 = v12;
  v33 = &v35;
  v13 = [a1 _clustersFromLocationsOfInterest:v9 forItems:v8 remainingItemsToCluster:&v34 progressBlock:v31];
  v14 = v34;
  if (*(v36 + 24) != 1)
  {
    v16 = [MEMORY[0x1E695DF70] arrayWithArray:v13];
    if ([v14 count])
    {
      v22 = v16;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __104__PLFrequentLocationProcessor_processFrequentLocationsWithItemSubset_locationsOfInterest_progressBlock___block_invoke_10;
      v28[3] = &unk_1E7573D48;
      v17 = v12;
      v29 = v17;
      v30 = &v35;
      v23 = [a1 _coarseClustersForItems:v14 progressBlock:v28];
      if (*(v36 + 24) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          buf = 67109120;
          v40 = 207;
          _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
        }

        v16 = v22;
        goto LABEL_19;
      }

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __104__PLFrequentLocationProcessor_processFrequentLocationsWithItemSubset_locationsOfInterest_progressBlock___block_invoke_11;
      v25[3] = &unk_1E7573D48;
      v26 = v17;
      v27 = &v35;
      [a1 _finalClustersFromCoarseClusters:v23 progressBlock:v25];
      v18 = v16 = v22;
      v19 = *(v36 + 24);
      if (v19 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          buf = 67109120;
          v40 = 212;
          _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
        }
      }

      else
      {
        [v22 addObjectsFromArray:v18];
      }

      if (v19)
      {
        goto LABEL_19;
      }
    }

    [v16 sortUsingComparator:{&__block_literal_global_14, v22}];
    if (!v12 || (v24 = 0, (*(v12 + 2))(v12, &v24, 1.0), v20 = *(v36 + 24) | v24, *(v36 + 24) = v20, (v20 & 1) == 0))
    {
      v15 = v16;
      goto LABEL_21;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      buf = 67109120;
      v40 = 230;
      _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
    }

LABEL_19:
    v15 = MEMORY[0x1E695E0F0];
LABEL_21:

    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    buf = 67109120;
    v40 = 196;
    _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
  }

  v15 = MEMORY[0x1E695E0F0];
LABEL_22:

  _Block_object_dispose(&v35, 8);

  return v15;
}

uint64_t __104__PLFrequentLocationProcessor_processFrequentLocationsWithItemSubset_locationsOfInterest_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  result = *(a1 + 32);
  if (result)
  {
    v6 = 0;
    result = (*(result + 16))(result, &v6, a3 * 0.25);
    *(*(*(a1 + 40) + 8) + 24) |= v6;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t __104__PLFrequentLocationProcessor_processFrequentLocationsWithItemSubset_locationsOfInterest_progressBlock___block_invoke_10(uint64_t a1, _BYTE *a2, double a3)
{
  result = *(a1 + 32);
  if (result)
  {
    v6 = 0;
    result = (*(result + 16))(result, &v6, a3 * 0.25 + 0.25);
    *(*(*(a1 + 40) + 8) + 24) |= v6;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t __104__PLFrequentLocationProcessor_processFrequentLocationsWithItemSubset_locationsOfInterest_progressBlock___block_invoke_11(uint64_t a1, _BYTE *a2, double a3)
{
  result = *(a1 + 32);
  if (result)
  {
    v6 = 0;
    result = (*(result + 16))(result, &v6, a3 * 0.25 + 0.5);
    *(*(*(a1 + 40) + 8) + 24) |= v6;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t __104__PLFrequentLocationProcessor_processFrequentLocationsWithItemSubset_locationsOfInterest_progressBlock___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x1E696AD98];
  v7 = [v4 sortedMoments];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];

  v9 = MEMORY[0x1E696AD98];
  v10 = [v5 sortedMoments];
  v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];

  v12 = [v11 compare:v8];
  if (!v12)
  {
    v13 = [v5 dateInterval];
    v14 = [v4 dateInterval];
    v12 = [v13 compare:v14];
  }

  return v12;
}

+ (id)processFrequentLocationsWithSortedMoments:(id)a3 locationsOfInterest:(id)a4 progressBlock:(id)a5
{
  v140 = *MEMORY[0x1E69E9840];
  v88 = a3;
  v84 = a4;
  aBlock = a5;
  v7 = PLBackendGetLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  spid = v8;
  v74 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ProcessFrequentLocationsWithSortedMoments", "", &buf, 2u);
  }

  v75 = v10;

  v85 = _Block_copy(aBlock);
  v122 = 0;
  v123 = &v122;
  v124 = 0x2020000000;
  v125 = 0;
  v86 = [MEMORY[0x1E695DF70] array];
  v11 = [v88 count];
  v77 = [v88 firstObject];
  v76 = [v88 lastObject];
  v80 = [v77 pl_startDate];
  v79 = [v76 pl_endDate];
  [v80 timeIntervalSinceReferenceDate];
  v13 = v12;
  v90 = [MEMORY[0x1E695DF70] array];
  if (v11)
  {
    v14 = 0;
    if (v13 + -604800.0 >= -3000000000.0)
    {
      v15 = v13 + -604800.0;
    }

    else
    {
      v15 = -3000000000.0;
    }

    do
    {
      v16 = objc_autoreleasePoolPush();
      v17 = [v88 objectAtIndexedSubscript:v14];
      v18 = [v17 pl_startDate];
      [v18 timeIntervalSinceReferenceDate];
      v20 = v19;

      if (v20 > v15)
      {
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
        [v90 addObject:v21];

        do
        {
          v15 = v15 + 15724800.0;
        }

        while (v20 > v15);
      }

      objc_autoreleasePoolPop(v16);
      ++v14;
    }

    while (v14 != v11);
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  [v90 addObject:v22];

  if ([v90 count] <= 2)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
    [v90 addObject:v23];
  }

  v24 = PLBackendGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    buf = 134218498;
    v131 = v11;
    v132 = 2112;
    v133 = v80;
    v134 = 2112;
    v135 = v79;
    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Processing Frequent Locations for %tu moments from %@ to %@", &buf, 0x20u);
  }

  [v79 timeIntervalSinceDate:v80];
  v92 = 0;
  v26 = 1.0 / ceil(v25 / 15724800.0);
  v27 = v26;
  v28 = v86;
  while (v92 < [v90 count] - 2)
  {
    v87 = objc_autoreleasePoolPush();
    v29 = [v90 objectAtIndexedSubscript:v92];
    v30 = [v29 unsignedIntegerValue];

    v31 = [v90 objectAtIndexedSubscript:v92 + 2];
    v32 = [v31 unsignedIntegerValue];

    v91 = [v88 subarrayWithRange:{v30, v32 - v30}];
    v33 = PLBackendGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = [v91 firstObject];
      v35 = [v34 pl_startDate];
      v36 = [v91 lastObject];
      v37 = [v36 pl_endDate];
      buf = 134219010;
      v131 = v92;
      v132 = 2048;
      v133 = v30;
      v134 = 2048;
      v135 = v32;
      v136 = 2112;
      v137 = v35;
      v138 = 2112;
      v139 = v37;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEBUG, "Frequent Locations: Processing Batch %tu: indices %tu to %tu (from %@ to %@)", &buf, 0x34u);
    }

    v118[0] = MEMORY[0x1E69E9820];
    v118[1] = 3221225472;
    v118[2] = __107__PLFrequentLocationProcessor_processFrequentLocationsWithSortedMoments_locationsOfInterest_progressBlock___block_invoke;
    v118[3] = &unk_1E7573D00;
    v38 = v85;
    v121 = v27;
    v119 = v38;
    v120 = &v122;
    v39 = [a1 processFrequentLocationsWithItemSubset:v91 locationsOfInterest:v84 progressBlock:v118];
    if ([v39 count])
    {
      if (*(v123 + 24) == 1)
      {
        v40 = 1;
        v41 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          buf = 67109120;
          LODWORD(v131) = 125;
          _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
        }
      }

      else
      {
        v81 = [v39 firstObject];
        v82 = v39;
        v42 = [v81 momentsSet];
        v97 = [v42 count];

        v43 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v44 = v86;
        v45 = [v44 countByEnumeratingWithState:&v114 objects:v129 count:16];
        if (v45)
        {
          v46 = *v115;
          do
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v115 != v46)
              {
                objc_enumerationMutation(v44);
              }

              v48 = [*(*(&v114 + 1) + 8 * i) momentsSet];
              [v43 unionSet:v48];
            }

            v45 = [v44 countByEnumeratingWithState:&v114 objects:v129 count:16];
          }

          while (v45);
        }

        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        obj = v82;
        v49 = [obj countByEnumeratingWithState:&v110 objects:v128 count:16];
        if (v49)
        {
          v93 = *v111;
LABEL_34:
          v98 = 0;
          v94 = v49;
          while (1)
          {
            if (*v111 != v93)
            {
              objc_enumerationMutation(obj);
            }

            v50 = *(*(&v110 + 1) + 8 * v98);
            context = objc_autoreleasePoolPush();
            v51 = [v50 momentsSet];
            v99 = [v51 count];
            v52 = v97;
            if (v97 <= 7)
            {
              v52 = 7;
            }

            v95 = v52;
            v53 = v99 < v52;

            if (!v53)
            {
              [v44 sortUsingComparator:&__block_literal_global_91260];
              v108 = 0u;
              v109 = 0u;
              v106 = 0u;
              v107 = 0u;
              v100 = v44;
              v54 = [v100 countByEnumeratingWithState:&v106 objects:v127 count:16];
              if (v54)
              {
                v55 = *v107;
                while (2)
                {
                  for (j = 0; j != v54; ++j)
                  {
                    if (*v107 != v55)
                    {
                      objc_enumerationMutation(v100);
                    }

                    v57 = *(*(&v106 + 1) + 8 * j);
                    v58 = [v50 momentsSet];
                    v59 = [v57 momentsSet];
                    v60 = [v58 intersectsSet:v59];

                    if (v60)
                    {
                      v104 = 0u;
                      v105 = 0u;
                      v102 = 0u;
                      v103 = 0u;
                      v62 = [v50 sortedMoments];
                      v63 = [v62 countByEnumeratingWithState:&v102 objects:v126 count:16];
                      if (v63)
                      {
                        v64 = *v103;
                        do
                        {
                          for (k = 0; k != v63; ++k)
                          {
                            if (*v103 != v64)
                            {
                              objc_enumerationMutation(v62);
                            }

                            v66 = *(*(&v102 + 1) + 8 * k);
                            if (([v43 containsObject:v66] & 1) == 0)
                            {
                              [v57 addMomentToSortedMoments:v66];
                              [v43 addObject:v66];
                            }
                          }

                          v63 = [v62 countByEnumeratingWithState:&v102 objects:v126 count:16];
                        }

                        while (v63);
                      }

                      goto LABEL_59;
                    }
                  }

                  v54 = [v100 countByEnumeratingWithState:&v106 objects:v127 count:16];
                  if (v54)
                  {
                    continue;
                  }

                  break;
                }
              }

              [v100 addObject:v50];
              v61 = [v50 momentsSet];
              [v43 unionSet:v61];

LABEL_59:
              v97 = vcvtd_n_f64_u64(v97, 1uLL);
            }

            objc_autoreleasePoolPop(context);
            if (v99 < v95)
            {
              break;
            }

            if (++v98 == v94)
            {
              v49 = [obj countByEnumeratingWithState:&v110 objects:v128 count:16];
              if (v49)
              {
                goto LABEL_34;
              }

              break;
            }
          }
        }

        v40 = 0;
        v27 = v26 + v27;
        v39 = v82;
      }
    }

    else
    {
      v27 = v26 + v27;
      v40 = 9;
    }

    objc_autoreleasePoolPop(v87);
    v28 = v86;
    if (v40 != 9 && v40)
    {
      v69 = MEMORY[0x1E695E0F0];
      goto LABEL_78;
    }

    ++v92;
  }

  v67 = [v28 indexesOfObjectsPassingTest:&__block_literal_global_9_91261];
  [v28 removeObjectsAtIndexes:v67];
  if (v85 && (v101 = 0, (*(v85 + 2))(v85, &v101, 1.0), v68 = *(v123 + 24) | v101, *(v123 + 24) = v68, (v68 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      buf = 67109120;
      LODWORD(v131) = 180;
      _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
    }

    v69 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v70 = v75;
    v71 = v70;
    if (v74 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v71, OS_SIGNPOST_INTERVAL_END, spid, "ProcessFrequentLocationsWithSortedMoments", "", &buf, 2u);
    }

    v69 = v86;
  }

LABEL_78:
  _Block_object_dispose(&v122, 8);

  return v69;
}

uint64_t __107__PLFrequentLocationProcessor_processFrequentLocationsWithSortedMoments_locationsOfInterest_progressBlock___block_invoke(uint64_t a1, _BYTE *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v5 = 0;
    result = (*(result + 16))(result, &v5, *(a1 + 48));
    *(*(*(a1 + 40) + 8) + 24) |= v5;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

BOOL __107__PLFrequentLocationProcessor_processFrequentLocationsWithSortedMoments_locationsOfInterest_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 dateInterval];
  [v2 duration];
  v4 = v3 < 3888000.0;

  return v4;
}

BOOL __107__PLFrequentLocationProcessor_processFrequentLocationsWithSortedMoments_locationsOfInterest_progressBlock___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 momentsSet];
  v7 = [v6 count];
  v8 = [v4 momentsSet];
  v9 = [v8 count];

  if (v7 == v9)
  {
    v10 = [v5 sortedMoments];

    v11 = [v10 firstObject];
    v12 = [v11 pl_startDate];
    v13 = [v4 sortedMoments];
    v14 = [v13 firstObject];
    v15 = [v14 pl_startDate];
    v16 = v12 < v15;
  }

  else
  {
    v10 = [v5 momentsSet];

    v17 = [v10 count];
    v11 = [v4 momentsSet];
    v16 = v17 > [v11 count];
  }

  return v16;
}

+ (id)processFrequentLocationsWithItems:(id)a3 locationsOfInterest:(id)a4 progressBlock:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _Block_copy(v10);
  v12 = [MEMORY[0x1E695DFD8] set];
  if ([v8 count])
  {
    v13 = +[PLMediaMiningUtilities sortDescriptorsForSortingItemsByTime];
    v14 = [v8 sortedArrayUsingDescriptors:v13];

    v15 = [a1 sortDescriptorsForLocationsOfInterest];
    v16 = [v9 sortedArrayUsingDescriptors:v15];

    v17 = [a1 processFrequentLocationsWithSortedMoments:v14 locationsOfInterest:v16 progressBlock:v10];
    if (v11 && (v21 = 0, v11[2](v11, &v21, 1.0), v21 == 1))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v23 = 55;
        _os_log_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
      }

      v18 = v12;
    }

    else
    {
      v18 = [MEMORY[0x1E695DFD8] setWithArray:v17];
    }

    v19 = v18;
  }

  else
  {
    v19 = [MEMORY[0x1E695DFD8] set];
  }

  return v19;
}

@end