@interface PCWorkoutAnnotationManager
- (BOOL)isDominantPlaceForVisits:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (PCWorkoutAnnotationManager)init;
- (double)overlapsIndexOfBaseEvents:(id)a3 contextEvents:(id)a4;
- (id)annotateBaseEvents:(id)a3 contextEvents:(id)a4;
- (id)annotateEventBundle:(id)a3 withContextEvents:(id)a4 andBaseEventReference:(id)a5;
- (id)getBaseEvents:(id)a3;
- (id)getContextEventsForBaseEvents:(id)a3 events:(id)a4;
- (id)groupedEventsFromEvents:(id)a3;
- (id)intervalsFromEvents:(id)a3 boundaryInterval:(id)a4;
- (id)majorVisitsFromVisits:(id)a3 referenceDate:(id)a4;
- (id)performAnnotationWithEventsInternal:(id)a3;
- (id)referenceDateFromStartDate:(id)a3 endDate:(id)a4 index:(double)a5;
- (id)removeDuplicateWorkouts:(id)a3;
- (id)removePhoneActivitiesOverlappingWorkouts:(id)a3;
- (id)timespanFromEvents:(id)a3 boundaryInterval:(id)a4;
@end

@implementation PCWorkoutAnnotationManager

- (PCWorkoutAnnotationManager)init
{
  v7.receiver = self;
  v7.super_class = PCWorkoutAnnotationManager;
  v2 = [(PCWorkoutAnnotationManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 24) = xmmword_1CEF0BE30;
    *(v2 + 40) = xmmword_1CEF0BE40;
    *(v2 + 7) = 0x409C200000000000;
    v2[16] = 0;
    v4 = objc_alloc_init(PCTimeZoneManager);
    timeZoneManager = v3->timeZoneManager;
    v3->timeZoneManager = v4;
  }

  return v3;
}

- (id)getBaseEvents:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"%K IN %@ AND %K.%K !=[c] %@", @"category", &unk_1F4BDDFF0, @"workoutEvent", @"workoutType", @"HKWorkoutActivityTypeCooldown"];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  return v6;
}

- (id)groupedEventsFromEvents:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 count])
  {
    v28 = MEMORY[0x1E695E0F0];
    goto LABEL_24;
  }

  v31 = self;
  v40 = objc_opt_new();
  [v4 valueForKeyPath:@"@distinctUnionOfObjects.workoutEvent.workoutType"];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (!v35)
  {
    goto LABEL_20;
  }

  v5 = *v42;
  v6 = 0x1E696A000uLL;
  v32 = *v42;
  v33 = v4;
  do
  {
    v7 = 0;
    do
    {
      if (*v42 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v39 = v7;
      v38 = [*(v6 + 3608) predicateWithFormat:@"%K.%K = %@", @"workoutEvent", @"workoutType", *(*(&v41 + 1) + 8 * v7)];
      v8 = [v4 filteredArrayUsingPredicate:?];
      v36 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"startDate" ascending:1];
      v45 = v36;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
      v37 = v8;
      v10 = [v8 sortedArrayUsingDescriptors:v9];

      v11 = objc_opt_new();
      v12 = [v10 firstObject];
      [v11 addObject:v12];

      if ([v10 count] < 2)
      {
        goto LABEL_17;
      }

      if ([v10 count] >= 2)
      {
        v13 = 1;
        while (1)
        {
          v14 = [v10 objectAtIndex:v13 - 1];
          v15 = [v10 objectAtIndex:v13];
          v16 = [v15 startDate];
          v17 = [v14 endDate];
          [v16 timeIntervalSinceDate:v17];
          if (v18 <= 300.0)
          {
            break;
          }

          v19 = [v15 startDate];
          v20 = [v14 endDate];
          v21 = [v19 isBeforeDate:v20];

          if ((v21 & 1) == 0)
          {
            v22 = [v11 copy];
            [v40 addObject:v22];

            v16 = v11;
            v11 = objc_opt_new();
LABEL_14:
          }

          [v11 addObject:v15];

          if ([v10 count] <= ++v13)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_14;
      }

LABEL_16:
      v5 = v32;
      v4 = v33;
      v6 = 0x1E696A000;
      if ([v11 count])
      {
LABEL_17:
        v23 = [v11 copy];
        [v40 addObject:v23];
      }

      v7 = v39 + 1;
    }

    while (v39 + 1 != v35);
    v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  }

  while (v35);
LABEL_20:
  v24 = v40;
  v25 = v24;
  if (![(PCWorkoutAnnotationManager *)v31 allowDuplicatedWorkouts])
  {
    v26 = [(PCWorkoutAnnotationManager *)v31 removePhoneActivitiesOverlappingWorkouts:v24];
    v25 = [(PCWorkoutAnnotationManager *)v31 removeDuplicateWorkouts:v26];
  }

  v27 = [v25 sortedArrayUsingComparator:&__block_literal_global_4];
  v28 = [v27 copy];

LABEL_24:
  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

uint64_t __54__PCWorkoutAnnotationManager_groupedEventsFromEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 firstObject];
  v6 = [v5 startDate];
  v7 = [v4 firstObject];

  v8 = [v7 startDate];
  v9 = [v6 compare:v8];

  return v9;
}

- (id)removePhoneActivitiesOverlappingWorkouts:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v34 = objc_opt_new();
    v4 = objc_opt_new();
    v31 = objc_opt_new();
    v32 = v3;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v50;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v50 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v49 + 1) + 8 * i);
          v11 = [v10 firstObject];
          v12 = [v11 category];

          if (v12 == 2)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v7);
    }

    [v34 addObjectsFromArray:v4];
    v13 = v31;
    if ([v31 count])
    {
      v3 = v32;
      if (![v4 count])
      {
        goto LABEL_36;
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = v31;
      v37 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
      if (!v37)
      {
        goto LABEL_33;
      }

      v35 = v4;
      v36 = *v46;
      while (1)
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v46 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v45 + 1) + 8 * j);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v16 = v4;
          v17 = [v16 countByEnumeratingWithState:&v41 objects:v53 count:16];
          if (!v17)
          {

LABEL_30:
            [v34 addObject:{v15, v31}];
            continue;
          }

          v18 = v17;
          v38 = j;
          v39 = v16;
          v19 = 0;
          v40 = *v42;
          do
          {
            for (k = 0; k != v18; ++k)
            {
              if (*v42 != v40)
              {
                objc_enumerationMutation(v39);
              }

              v21 = *(*(&v41 + 1) + 8 * k);
              v22 = [v15 firstObject];
              v23 = [v22 startDate];
              v24 = [v15 lastObject];
              v25 = [v24 endDate];
              v26 = [PCContextAnnotationUtilities predicateWithStartDate:v23 endDate:v25];

              v27 = [v21 filteredArrayUsingPredicate:v26];
              if ([v27 count])
              {
                ++v19;
              }
            }

            v18 = [v39 countByEnumeratingWithState:&v41 objects:v53 count:16];
          }

          while (v18);

          v4 = v35;
          j = v38;
          if (!v19)
          {
            goto LABEL_30;
          }
        }

        v37 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (!v37)
        {
LABEL_33:

          v5 = v34;
          v13 = v31;
          v3 = v32;
          goto LABEL_36;
        }
      }
    }

    v3 = v32;
LABEL_36:
    v28 = v5;
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)removeDuplicateWorkouts:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_opt_new();
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v3;
    v5 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v47;
      v40 = v4;
      v41 = v3;
      v39 = *v47;
      do
      {
        v8 = 0;
        v42 = v6;
        do
        {
          if (*v47 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v46 + 1) + 8 * v8);
          if ([v9 count] > 1)
          {
            v45 = v8;
            v10 = objc_opt_new();
            v44 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"startDate" ascending:1];
            v50 = v44;
            v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
            v12 = [v9 sortedArrayUsingDescriptors:v11];

            v13 = [v12 firstObject];
            if ([v12 count] < 2)
            {
              v36 = v13;
            }

            else
            {
              v14 = 1;
              do
              {
                v15 = [v12 objectAtIndex:v14];
                v16 = objc_alloc(MEMORY[0x1E696AB80]);
                v17 = [v13 startDate];
                v18 = [v13 endDate];
                v19 = [v16 initWithStartDate:v17 endDate:v18];

                v20 = objc_alloc(MEMORY[0x1E696AB80]);
                v21 = [v15 startDate];
                v22 = [v15 endDate];
                v23 = [v20 initWithStartDate:v21 endDate:v22];

                v24 = [v23 intersectionWithDateInterval:v19];
                [v19 duration];
                v26 = v25;
                v27 = v15;
                [v19 duration];
                v29 = v28;
                [v23 duration];
                if (v29 <= v30)
                {
                  v32 = v27;
                }

                else
                {
                  [v23 duration];
                  v26 = v31;
                  v32 = v13;
                }

                if (v26 <= 0.0 || ([v24 duration], v33 / v26 <= 0.5))
                {
                  [v10 addObject:v13];
                  v34 = [v12 count] - 1;
                  v35 = v27;
                }

                else
                {
                  v34 = [v12 count] - 1;
                  v35 = v32;
                }

                if (v14 == v34)
                {
                  [v10 addObject:v35];
                }

                v36 = v35;

                ++v14;
                v13 = v36;
              }

              while ([v12 count] > v14);
            }

            v4 = v40;
            [v40 addObject:v10];

            v3 = v41;
            v6 = v42;
            v7 = v39;
            v8 = v45;
          }

          else
          {
            [v4 addObject:v9];
          }

          ++v8;
        }

        while (v8 != v6);
        v6 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)getContextEventsForBaseEvents:(id)a3 events:(id)a4
{
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AE18];
  v6 = a4;
  v7 = a3;
  v8 = [v5 predicateWithFormat:@"%K IN %@", @"category", &unk_1F4BDE008];
  v9 = [v7 firstObject];
  v10 = [v9 startDate];
  v11 = [v10 dateByAddingTimeInterval:-60.0];

  v12 = [v7 lastObject];

  v13 = [v12 endDate];
  v14 = [PCContextAnnotationUtilities predicateWithStartDate:v11 endDate:v13];

  v15 = MEMORY[0x1E696AB28];
  v21[0] = v8;
  v21[1] = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v17 = [v15 andPredicateWithSubpredicates:v16];

  v18 = [v6 filteredArrayUsingPredicate:v17];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)annotateBaseEvents:(id)a3 contextEvents:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = objc_opt_new();
    [v8 addObjectsFromArray:v6];
    v9 = [PCEventBundle alloc];
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [MEMORY[0x1E695DF00] date];
    v12 = [(PCEventBundle *)v9 initWithBundleIdentifier:v10 creationDate:v11];

    [(PCEventBundle *)v12 setInterfaceType:1];
    [(PCEventBundle *)v12 setBundleSuperType:2];
    [(PCEventBundle *)v12 setBundleSubType:1];
    v13 = [v6 firstObject];
    v14 = [v13 startDate];
    [(PCEventBundle *)v12 setStartDate:v14];

    v15 = [v6 lastObject];
    v16 = [v15 endDate];
    [(PCEventBundle *)v12 setEndDate:v16];

    v17 = [PCContextAnnotationUtilities extractActivityType:v6];
    [(PCEventBundle *)v12 setActivityType:v17];

    v18 = [v6 firstObject];
    v19 = [v18 workoutEvent];
    v20 = [v19 sourceBundleIdentifier];
    [(PCEventBundle *)v12 setSourceBundleIdentifier:v20];

    v21 = [v6 firstObject];
    v22 = [v21 workoutEvent];
    v23 = [v22 workoutLocationStart];
    [(PCEventBundle *)v12 setWorkoutLocationStart:v23];

    v24 = [v6 firstObject];
    v25 = [v24 workoutEvent];
    v26 = [v25 hkObjectIdentifier];
    [(PCEventBundle *)v12 setHkObjectIdentifier:v26];

    v27 = [v6 firstObject];
    v28 = [v27 workoutEvent];
    -[PCEventBundle setWorkoutSessionLocationType:](v12, "setWorkoutSessionLocationType:", [v28 workoutSessionLocationType]);

    v29 = [v6 firstObject];
    v30 = [v29 workoutEvent];
    -[PCEventBundle setWorkoutSwimmingLocationType:](v12, "setWorkoutSwimmingLocationType:", [v30 workoutSwimmingLocationType]);

    v31 = [v6 firstObject];
    v32 = [v31 startDate];
    v33 = [PCTime timeForDate:v32 timeZoneManager:self->timeZoneManager];
    [(PCEventBundle *)v12 setTime:v33];

    v34 = [(PCWorkoutAnnotationManager *)self annotateEventBundle:v12 withContextEvents:v7 andBaseEventReference:v6];
    v35 = [(PCEventBundle *)v12 location];
    if (v35)
    {
    }

    else
    {
      v36 = [(PCEventBundle *)v12 workoutLocationStart];

      if (v36)
      {
        v37 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [(PCEventBundle *)v12 workoutLocationStart];
          v39 = [(PCEventBundle *)v12 hkObjectIdentifier];
          v48 = 138740227;
          v49 = v38;
          v50 = 2114;
          v51 = v39;
          _os_log_impl(&dword_1CEE74000, v37, OS_LOG_TYPE_DEFAULT, "EventBundle has no associated visit, using HealthKit workout location=%{sensitive}@, workout=%{public}@", &v48, 0x16u);
        }

        v40 = [(PCEventBundle *)v12 workoutLocationStart];
        [(PCEventBundle *)v12 setLocation:v40];
      }
    }

    [v8 addObjectsFromArray:v34];
    v41 = [v8 copy];
    [(PCEventBundle *)v12 setEvents:v41];

    [(PCEventBundle *)v12 setPropertiesBasedOnEvents];
    v42 = [v6 firstObject];
    v43 = [v42 startDate];
    [(PCEventBundle *)v12 setStartDate:v43];

    v44 = [v6 lastObject];
    v45 = [v44 endDate];
    [(PCEventBundle *)v12 setEndDate:v45];
  }

  else
  {
    v12 = 0;
  }

  v46 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)annotateEventBundle:(id)a3 withContextEvents:(id)a4 andBaseEventReference:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %lu", @"category", 1];
  v11 = [v8 filteredArrayUsingPredicate:v10];
  v12 = [v7 startDate];
  v13 = [v7 endDate];
  v14 = [(PCWorkoutAnnotationManager *)self referenceDateFromStartDate:v12 endDate:v13 index:0.2];

  v15 = [(PCWorkoutAnnotationManager *)self majorVisitsFromVisits:v11 referenceDate:v14];
  v16 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134349568;
    v22 = [v8 count];
    v23 = 2050;
    v24 = [v11 count];
    v25 = 2050;
    v26 = [v15 count];
    _os_log_impl(&dword_1CEE74000, v16, OS_LOG_TYPE_INFO, "WorkoutAnnotation: annotateEventBundle, contextEventsCount, %{public}lu, visitsCount, %{public}lu, majorVisitsCount, %{public}lu", buf, 0x20u);
  }

  if (v15 && [v15 count])
  {
    v17 = [PCContextAnnotationUtilities annotateEventBundle:v7 visitEvents:v15];
    [v9 addObjectsFromArray:v17];
  }

  v18 = [v9 copy];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)majorVisitsFromVisits:(id)a3 referenceDate:(id)a4
{
  v62[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 count])
  {
    v62[0] = @"routineEvent";
    v62[1] = @"placeName";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
    v34 = v5;
    v8 = [PCContextAnnotationUtilities groupedEventsFromEvents:v5 nestedPropertyPath:v7];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__PCWorkoutAnnotationManager_majorVisitsFromVisits_referenceDate___block_invoke;
    aBlock[3] = &unk_1E83B82B8;
    v33 = v6;
    v35 = v6;
    v49 = v35;
    v9 = _Block_copy(aBlock);
    v10 = [v8 allValues];
    v38 = [v10 firstObject];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v39 = v8;
    obj = [v8 allKeys];
    v11 = [obj countByEnumeratingWithState:&v44 objects:v61 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v45;
      v14 = 1.79769313e308;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v44 + 1) + 8 * i);
          v17 = [v39 objectForKey:{v16, v33}];
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v18 = [v17 countByEnumeratingWithState:&v40 objects:v60 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v41;
            v21 = 1.79769313e308;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v41 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = fmin(v9[2](v9, *(*(&v40 + 1) + 8 * j)), v21);
              }

              v19 = [v17 countByEnumeratingWithState:&v40 objects:v60 count:16];
            }

            while (v19);
          }

          else
          {
            v21 = 1.79769313e308;
          }

          v23 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = NSStringFromSelector(a2);
            *buf = 138413059;
            v51 = v24;
            v52 = 2112;
            v53 = v35;
            v54 = 2117;
            v55 = v16;
            v56 = 2048;
            v57 = v21;
            _os_log_impl(&dword_1CEE74000, v23, OS_LOG_TYPE_DEBUG, "WorkoutAnnotation: %@, referenceDate=%@, group=%{sensitive}@, distance=%f", buf, 0x2Au);
          }

          if (v21 < v14)
          {
            v25 = v17;

            v38 = v25;
            v14 = v21;
          }
        }

        v12 = [obj countByEnumeratingWithState:&v44 objects:v61 count:16];
      }

      while (v12);
    }

    else
    {
      v14 = 1.79769313e308;
    }

    v27 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    v26 = v38;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = NSStringFromSelector(a2);
      v29 = [v39 count];
      *buf = 138413314;
      v51 = v28;
      v30 = -1.0;
      v52 = 2112;
      if (v14 != 1.79769313e308)
      {
        v30 = v14;
      }

      v53 = v35;
      v54 = 2048;
      v55 = v29;
      v56 = 2048;
      v57 = v30;
      v58 = 2112;
      v59 = v38;
      _os_log_impl(&dword_1CEE74000, v27, OS_LOG_TYPE_INFO, "WorkoutAnnotation: %@, referenceDate=%@, groupedEventCount, %lu, minDistance=%f, topEvents=%@", buf, 0x34u);
    }

    v6 = v33;
    v5 = v34;
  }

  else
  {
    v26 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v26;
}

double __66__PCWorkoutAnnotationManager_majorVisitsFromVisits_referenceDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startDate];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = fabs(v5);
  v7 = [v3 endDate];

  [v7 timeIntervalSinceDate:*(a1 + 32)];
  v9 = fmin(v6, fabs(v8));

  return v9;
}

- (BOOL)isDominantPlaceForVisits:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v41[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v32 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"endDate" ascending:1];
    v41[0] = v32;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    v12 = [v8 sortedArrayUsingDescriptors:v11];

    v13 = objc_alloc(MEMORY[0x1E696AB80]);
    v14 = [v12 firstObject];
    v15 = [v14 startDate];
    v16 = [v12 lastObject];
    v17 = [v16 endDate];
    v18 = [v13 initWithStartDate:v15 endDate:v17];

    v19 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:v10];
    [v19 duration];
    v21 = v20;
    v22 = [v18 intersectionWithDateInterval:v19];
    [v22 duration];
    v24 = v23;

    if (v21 != 0.0)
    {
      v26 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218752;
        v34 = [v8 count];
        v35 = 2048;
        v36 = v24;
        v37 = 2048;
        v38 = v21;
        v39 = 2048;
        v40 = v24 / v21;
        _os_log_impl(&dword_1CEE74000, v26, OS_LOG_TYPE_DEBUG, "WorkoutAnnotation: isDominantPlaceForVisits, visits.count, %lu, interaction, %f, workoutDuration, %f, overlap, %f", buf, 0x2Au);
      }

      if (v24 / v21 > 0.5)
      {
        v25 = 1;
        goto LABEL_11;
      }

      [(PCWorkoutAnnotationManager *)self visitMinimumIntersectionWithActivityAbsoluteTime];
      if (v24 > v27)
      {
        v28 = [v12 firstObject];
        v29 = [v28 routineEvent];
        v25 = [v29 placeUserType] != 1;

        goto LABEL_11;
      }
    }

    v25 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v25 = 0;
LABEL_12:

  v30 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)referenceDateFromStartDate:(id)a3 endDate:(id)a4 index:(double)a5
{
  v7 = a3;
  [a4 timeIntervalSinceDate:v7];
  if (v8 == 0.0)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v7 dateByAddingTimeInterval:v8 * a5];
  }

  v10 = v9;

  return v10;
}

- (id)performAnnotationWithEventsInternal:(id)a3
{
  v61[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEB0];
  v5 = a3;
  v43 = [[v4 alloc] initWithKey:@"startDate" ascending:1];
  v61[0] = v43;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
  v7 = [v5 sortedArrayUsingDescriptors:v6];

  v8 = [(PCWorkoutAnnotationManager *)self getBaseEvents:v7];
  v9 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
  v40 = self;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v8 count];
    v11 = [v8 firstObject];
    v12 = [v11 startDate];
    v13 = [v8 lastObject];
    v14 = [v13 endDate];
    *buf = 134218498;
    v50 = v10;
    v51 = 2112;
    v52 = v12;
    v53 = 2112;
    v54 = v14;
    _os_log_impl(&dword_1CEE74000, v9, OS_LOG_TYPE_INFO, "WorkoutAnnotation: Base Events, %lu, startDate, %@, endDate, %@", buf, 0x20u);

    self = v40;
  }

  if ([v8 count])
  {
    v15 = [(PCWorkoutAnnotationManager *)self groupBaseEvents:v8];
    v16 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v8 count];
      v18 = [v15 count];
      *buf = 134218240;
      v50 = v17;
      v51 = 2048;
      v52 = v18;
      _os_log_impl(&dword_1CEE74000, v16, OS_LOG_TYPE_INFO, "WorkoutAnnotation: Grouping the base events, events, %lu, groups, %lu", buf, 0x16u);
    }

    v38 = v8;

    v41 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v19 = v15;
    v44 = [v19 countByEnumeratingWithState:&v45 objects:v60 count:16];
    if (v44)
    {
      v20 = *v46;
      v39 = v19;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(v19);
          }

          v22 = *(*(&v45 + 1) + 8 * i);
          v59 = v43;
          v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
          v24 = [v22 sortedArrayUsingDescriptors:v23];

          v25 = [(PCWorkoutAnnotationManager *)self getContextEventsForBaseEvents:v24 events:v7];
          v26 = [(PCWorkoutAnnotationManager *)self annotateBaseEvents:v24 contextEvents:v25];
          v27 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v42 = [v24 count];
            v28 = v20;
            v29 = v7;
            v30 = [v25 count];
            v31 = [v26 placeName];
            v32 = [v26 location];
            *buf = 138413315;
            v50 = v26;
            v51 = 2048;
            v52 = v42;
            v53 = 2048;
            v54 = v30;
            v7 = v29;
            v20 = v28;
            v55 = 2117;
            v56 = v31;
            v57 = 2117;
            v58 = v32;
            _os_log_impl(&dword_1CEE74000, v27, OS_LOG_TYPE_INFO, "WorkoutAnnotation: EventBundle, %@, baseEventCount, %lu, contextEventCount, %lu, placeName, %{sensitive}@, location, %{sensitive}@", buf, 0x34u);

            self = v40;
            v19 = v39;
          }

          if (v26)
          {
            [v41 addObject:v26];
          }
        }

        v44 = [v19 countByEnumeratingWithState:&v45 objects:v60 count:16];
      }

      while (v44);
    }

    v33 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [v41 count];
      *buf = 134217984;
      v50 = v34;
      _os_log_impl(&dword_1CEE74000, v33, OS_LOG_TYPE_INFO, "WorkoutAnnotation: Event Bundles Count, %lu", buf, 0xCu);
    }

    v35 = [v41 copy];
    v8 = v38;
  }

  else
  {
    v19 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_INFO, "WorkoutAnnotation: No base events so bundling halted", buf, 2u);
    }

    v35 = MEMORY[0x1E695E0F0];
  }

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

- (double)overlapsIndexOfBaseEvents:(id)a3 contextEvents:(id)a4
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    if ([v7 count])
    {
      v8 = objc_alloc(MEMORY[0x1E696AB80]);
      v9 = [v6 firstObject];
      v10 = [v9 startDate];
      v11 = [v6 lastObject];
      v12 = [v11 endDate];
      v13 = [v8 initWithStartDate:v10 endDate:v12];

      v14 = [(PCWorkoutAnnotationManager *)self timespanFromEvents:v6 boundaryInterval:0];
      v52 = v13;
      v15 = [(PCWorkoutAnnotationManager *)self timespanFromEvents:v7 boundaryInterval:v13];
      v51 = [v6 arrayByAddingObjectsFromArray:v7];
      v49 = [PCWorkoutAnnotationManager timespanFromEvents:"timespanFromEvents:boundaryInterval:" boundaryInterval:?];
      v54 = v14;
      v16 = [v14 objectEnumerator];
      v53 = v15;
      v17 = [v15 objectEnumerator];
      v18 = [v16 nextObject];
      v19 = [v17 nextObject];
      v20 = v19;
      v21 = 0.0;
      if (v18 && v19)
      {
        v22 = 0.0;
        do
        {
          v23 = [v18 intersectionWithDateInterval:v20];
          v24 = v23;
          if (v23)
          {
            [v23 duration];
            v22 = v22 + v25;
          }

          v26 = [v18 endDate];
          v27 = [v20 endDate];
          v28 = [v26 isBeforeDate:v27];

          if (v28)
          {
            v29 = [v16 nextObject];
            v30 = v18;
            v18 = v29;
          }

          else
          {
            v31 = [v17 nextObject];
            v30 = v20;
            v20 = v31;
          }
        }

        while (v18 && v20);
      }

      else
      {
        v22 = 0.0;
      }

      v55 = v7;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v33 = v49;
      v34 = [v33 countByEnumeratingWithState:&v56 objects:v78 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v57;
        v21 = 0.0;
        do
        {
          v37 = 0;
          do
          {
            if (*v57 != v36)
            {
              objc_enumerationMutation(v33);
            }

            [*(*(&v56 + 1) + 8 * v37) duration];
            v21 = v21 + v38;
            ++v37;
          }

          while (v35 != v37);
          v35 = [v33 countByEnumeratingWithState:&v56 objects:v78 count:16];
        }

        while (v35);
      }

      if (v21 <= 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v22 / v21;
      }

      v39 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v47 = [v6 count];
        v50 = [v6 firstObject];
        v40 = [v50 startDate];
        v48 = [v6 lastObject];
        v41 = [v48 endDate];
        v46 = [v55 count];
        v42 = [v54 count];
        v43 = [v53 count];
        *buf = 134220034;
        v61 = v47;
        v62 = 2112;
        v63 = v40;
        v64 = 2112;
        v65 = v41;
        v66 = 2048;
        v67 = v46;
        v68 = 2048;
        v69 = v42;
        v70 = 2048;
        v71 = v43;
        v72 = 2048;
        v73 = v22;
        v74 = 2048;
        v75 = v21;
        v76 = 2048;
        v77 = v32;
        _os_log_impl(&dword_1CEE74000, v39, OS_LOG_TYPE_DEBUG, "WorkoutAnnotation: base events, %lu, startDate, %@, endDate, %@, context events, %lu, base events intervals, %lu, context events intervals, %lu, intersection, %f, total duration, %f, overlaps score, %f", buf, 0x5Cu);
      }

      v7 = v55;
    }

    else
    {
      v32 = 1.0;
    }
  }

  else
  {
    v32 = -1.0;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v32;
}

- (id)timespanFromEvents:(id)a3 boundaryInterval:(id)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v37 = v7;
    v38 = v6;
    v8 = [(PCWorkoutAnnotationManager *)self intervalsFromEvents:v6 boundaryInterval:v7];
    v35 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
    v45[0] = v35;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    v36 = v8;
    v10 = [v8 sortedArrayUsingDescriptors:v9];

    v39 = objc_opt_new();
    v11 = [v10 firstObject];
    v12 = [v11 startDate];

    v13 = [v10 firstObject];
    v14 = [v13 endDate];

    v15 = [v12 dateByAddingTimeInterval:300.0];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v16 = v10;
    v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v41;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v41 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v40 + 1) + 8 * i);
          v22 = [v21 startDate];
          v23 = [v22 isAfterDate:v15];

          if (v23)
          {
            if ([v12 isBeforeDate:v14])
            {
              v24 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v12 endDate:v14];
              [v39 addObject:v24];
            }

            v25 = [v21 startDate];

            v12 = v25;
          }

          else
          {
            v26 = [v21 endDate];
            v27 = [v26 isAfterDate:v15];

            if (!v27)
            {
              continue;
            }
          }

          v28 = [v21 endDate];

          v29 = [v21 endDate];
          v30 = [v29 dateByAddingTimeInterval:300.0];

          v14 = v28;
          v15 = v30;
        }

        v18 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v18);
    }

    if (v12 && v14 && [v12 isBeforeDate:v14])
    {
      v31 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v12 endDate:v14];
      [v39 addObject:v31];
    }

    v32 = [v39 copy];

    v7 = v37;
    v6 = v38;
  }

  else
  {
    v32 = MEMORY[0x1E695E0F0];
  }

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)intervalsFromEvents:(id)a3 boundaryInterval:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v30;
    *&v8 = 138412546;
    v27 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [v12 startDate];
        if (v13)
        {
          v14 = v13;
          v15 = [v12 endDate];

          if (v15)
          {
            v16 = [v12 startDate];
            v17 = [v12 endDate];
            v18 = [v16 isBeforeDate:v17];

            if (v18)
            {
              v19 = objc_alloc(MEMORY[0x1E696AB80]);
              v20 = [v12 startDate];
              v21 = [v12 endDate];
              v22 = [v19 initWithStartDate:v20 endDate:v21];

              [v5 addObject:v22];
            }

            else
            {
              v22 = _plc_log_get_normal_handle(PCLogCategoryWorkoutPredictor);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v23 = NSStringFromSelector(a2);
                *buf = v27;
                v34 = v23;
                v35 = 2112;
                v36 = v12;
                _os_log_impl(&dword_1CEE74000, v22, OS_LOG_TYPE_ERROR, "%@, discard event with wrong start/end date, event, %@ ", buf, 0x16u);
              }
            }
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v9);
  }

  v24 = [v5 copy];
  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

@end