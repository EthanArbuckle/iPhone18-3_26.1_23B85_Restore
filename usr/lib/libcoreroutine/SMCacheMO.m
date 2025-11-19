@interface SMCacheMO
+ (id)getLocationMOFromLocation:(id)a3 context:(id)a4;
+ (id)getLocationMOFromLocations:(id)a3 context:(id)a4;
+ (id)managedObjectWithCache:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation SMCacheMO

+ (id)managedObjectWithCache:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    if (v7)
    {
      *buf = 0;
      v19 = buf;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__43;
      v22 = __Block_byref_object_dispose__43;
      v23 = 0;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __73__SMCacheMO_managedObjectWithCache_managedObject_inManagedObjectContext___block_invoke;
      v13[3] = &unk_2788C5DA0;
      v17 = buf;
      v14 = v8;
      v15 = v9;
      v16 = v7;
      [v15 performBlockAndWait:v13];
      v10 = *(v19 + 5);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectContext", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

void __73__SMCacheMO_managedObjectWithCache_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [[SMCacheMO alloc] initWithContext:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = [*(a1 + 48) identifier];
  [*(*(*(a1 + 56) + 8) + 40) setIdentifier:v4];

  v5 = +[SMDeviceStatusMO fetchRequest];
  v6 = MEMORY[0x277CCAC30];
  v7 = [*(a1 + 48) deviceStatus];
  v8 = [v7 identifier];
  v9 = [v6 predicateWithFormat:@"%K == %@", @"identifier", v8];
  [v5 setPredicate:v9];

  v10 = *(a1 + 40);
  v33 = 0;
  v11 = [v10 executeFetchRequest:v5 error:&v33];
  v12 = v33;
  v13 = [*(a1 + 48) deviceStatus];
  v14 = [v11 firstObject];
  v15 = [SMDeviceStatusMO managedObjectWithDeviceStatus:v13 managedObject:v14 inManagedObjectContext:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setDeviceStatus:v15];

  v16 = [*(a1 + 48) locationsDuringSession];
  v17 = [SMCacheMO getLocationMOFromLocations:v16 context:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setLocationsDuringSession:v17];

  v18 = [*(a1 + 48) unlockLocation];
  v19 = [SMCacheMO getLocationMOFromLocation:v18 context:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setUnlockLocation:v19];

  v20 = [*(a1 + 48) lockLocation];
  v21 = [SMCacheMO getLocationMOFromLocation:v20 context:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setLockLocation:v21];

  v22 = [*(a1 + 48) mostRecentLocation];
  v23 = [SMCacheMO getLocationMOFromLocation:v22 context:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setMostRecentLocation:v23];

  v24 = [*(a1 + 48) startingLocation];
  v25 = [SMCacheMO getLocationMOFromLocation:v24 context:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setStartingLocation:v25];

  v26 = [*(a1 + 48) offWristLocation];
  v27 = [SMCacheMO getLocationMOFromLocation:v26 context:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setOffWristLocation:v27];

  v28 = [*(a1 + 48) parkedCarLocation];
  v29 = [SMCacheMO getLocationMOFromLocation:v28 context:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setParkedCarLocation:v29];

  v30 = [*(a1 + 48) destinationMapItem];
  [*(*(*(a1 + 56) + 8) + 40) setDestinationMapItem:v30];

  v31 = [*(a1 + 48) workoutEvents];
  v32 = [SMWorkoutEventMO getWorkoutEventMOFromWorkoutEvents:v31 context:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setWorkoutEvents:v32];
}

+ (id)getLocationMOFromLocations:(id)a3 context:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v5, "count")}];
  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [SMCacheMO getLocationMOFromLocation:*(*(&v15 + 1) + 8 * i) context:v6, v15];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  return v7;
}

+ (id)getLocationMOFromLocation:(id)a3 context:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    v7 = +[SMLocationMO fetchRequest];
    v8 = MEMORY[0x277CCAC30];
    v9 = [v6 identifier];
    v10 = [v8 predicateWithFormat:@"%K == %@", @"identifier", v9];
    [v7 setPredicate:v10];

    v15 = 0;
    v11 = [v5 executeFetchRequest:v7 error:&v15];
    v12 = [v11 firstObject];
    v13 = [SMLocationMO managedObjectWithLocation:v6 managedObject:v12 inManagedObjectContext:v5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end