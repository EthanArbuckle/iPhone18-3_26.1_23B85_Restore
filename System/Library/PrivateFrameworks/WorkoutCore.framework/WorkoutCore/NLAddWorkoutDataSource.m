@interface NLAddWorkoutDataSource
+ (id)NLAddWorkoutAllSortedRowsIsWheelchairUser:(BOOL)a3 supportsPairedWatchFeatures:(BOOL)a4 supportsExternalHeartRateSensorFeatures:(BOOL)a5;
+ (id)addWorkoutPopularRows:(int64_t)a3;
@end

@implementation NLAddWorkoutDataSource

+ (id)addWorkoutPopularRows:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v18[3] = a1;
  v18[2] = a2;
  v18[1] = a3;
  v18[0] = _NLPopularAddWorkoutTypes(a3);
  location = 0;
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v18[0]);
  v12 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v9);
      v3 = [WOStandardWorkoutAddWorkoutRow alloc];
      v13 = [(WOStandardWorkoutAddWorkoutRow *)v3 initWithActivityType:v15];
      if ([v15 identifier] == 3000)
      {
        v4 = [v15 auxiliaryTypeIdentifier];
        if (v4 == *MEMORY[0x277CCE1E0])
        {
          objc_storeStrong(&location, v13);
        }
      }

      [v16 addObject:v13];
      objc_storeStrong(&v13, 0);
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  [v16 sortUsingComparator:&__block_literal_global];
  if (location)
  {
    [v16 removeObject:location];
    [v16 insertObject:location atIndex:0];
  }

  v6 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v18, 0);
  *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __48__NLAddWorkoutDataSource_addWorkoutPopularRows___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v6 = [location[0] localizedTitle];
  v5 = [v8 localizedTitle];
  v7 = [v6 compare:? options:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7;
}

+ (id)NLAddWorkoutAllSortedRowsIsWheelchairUser:(BOOL)a3 supportsPairedWatchFeatures:(BOOL)a4 supportsExternalHeartRateSensorFeatures:(BOOL)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v53 = a1;
  v52 = a2;
  v51 = a3;
  v50 = a4;
  v49 = a5;
  v48 = [MEMORY[0x277D0A810] otherWorkoutActivityTypes];
  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v48);
  v31 = [obj countByEnumeratingWithState:__b objects:v56 count:16];
  if (v31)
  {
    v27 = *__b[2];
    v28 = 0;
    v29 = v31;
    while (1)
    {
      v26 = v28;
      if (*__b[2] != v27)
      {
        objc_enumerationMutation(obj);
      }

      v46 = *(__b[1] + 8 * v28);
      v44 = [v46 integerValue];
      v24 = v47;
      v25 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:v44 isIndoor:0 metadata:0];
      [v24 addObject:?];
      MEMORY[0x277D82BD8](v25);
      ++v28;
      if (v26 + 1 >= v29)
      {
        v28 = 0;
        v29 = [obj countByEnumeratingWithState:__b objects:v56 count:16];
        if (!v29)
        {
          break;
        }
      }
    }
  }

  v5 = MEMORY[0x277D82BD8](obj);
  v43 = [MEMORY[0x277D0A810] optimizedActivityTypesWithIsWheelchairUser:v51 isSwimmingSupported:MEMORY[0x20F2E82F0](v5)];
  v42 = [v47 arrayByAddingObjectsFromArray:v43];
  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(v39, 0, sizeof(v39));
  v22 = MEMORY[0x277D82BE0](v42);
  v23 = [v22 countByEnumeratingWithState:v39 objects:v55 count:16];
  if (v23)
  {
    v19 = *v39[2];
    v20 = 0;
    v21 = v23;
    while (1)
    {
      v18 = v20;
      if (*v39[2] != v19)
      {
        objc_enumerationMutation(v22);
      }

      v40 = *(v39[1] + 8 * v20);
      if ([MEMORY[0x277D0A810] shouldDisambiguateOnLocationType:{objc_msgSend(v40, "effectiveTypeIdentifier")}])
      {
        v17 = objc_alloc(MEMORY[0x277D0A810]);
        v16 = [v40 effectiveTypeIdentifier];
        location = [v17 initWithActivityTypeIdentifier:v16 isIndoor:{objc_msgSend(v40, "isIndoor") ^ 1}];
        if (([v42 containsObject:location] & 1) == 0)
        {
          [v41 addObject:location];
        }

        objc_storeStrong(&location, 0);
      }

      ++v20;
      if (v18 + 1 >= v21)
      {
        v20 = 0;
        v21 = [v22 countByEnumeratingWithState:v39 objects:v55 count:16];
        if (!v21)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v22);
  v13 = [v42 arrayByAddingObjectsFromArray:v41];
  v37 = [v13 mutableCopy];
  MEMORY[0x277D82BD8](v13);
  v36 = [MEMORY[0x277D0A810] unsupportedActivityTypesWithIsWheelchairUser:v51 isSwimmingSupported:1 supportsPairedWatchFeatures:v50 supportsExternalHeartRateSensorFeatures:v49];
  [v37 removeObjectsInArray:v36];
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(v33, 0, sizeof(v33));
  v14 = MEMORY[0x277D82BE0](v37);
  v15 = [v14 countByEnumeratingWithState:v33 objects:v54 count:16];
  if (v15)
  {
    v10 = *v33[2];
    v11 = 0;
    v12 = v15;
    while (1)
    {
      v9 = v11;
      if (*v33[2] != v10)
      {
        objc_enumerationMutation(v14);
      }

      v34 = *(v33[1] + 8 * v11);
      v6 = [WOStandardWorkoutAddWorkoutRow alloc];
      v32 = [(WOStandardWorkoutAddWorkoutRow *)v6 initWithActivityType:v34];
      [v35 addObject:v32];
      objc_storeStrong(&v32, 0);
      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [v14 countByEnumeratingWithState:v33 objects:v54 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v14);
  [v35 sortUsingComparator:&__block_literal_global_302];
  v8 = MEMORY[0x277D82BE0](v35);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __136__NLAddWorkoutDataSource_NLAddWorkoutAllSortedRowsIsWheelchairUser_supportsPairedWatchFeatures_supportsExternalHeartRateSensorFeatures___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v6 = [location[0] localizedTitle];
  v5 = [v8 localizedTitle];
  v7 = [v6 localizedCaseInsensitiveCompare:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7;
}

@end