@interface RTVehicleLocationHistoryController
- (BOOL)_deleteVehicleEventsBeforeDate:(id)a3;
- (BOOL)_evaluateUsualLocationWithVehicleEvent:(id)a3;
- (BOOL)_persistVehicleEventToHistory:(id)a3;
- (RTVehicleLocationHistoryController)initWithQueue:(id)a3 managedObjectContext:(id)a4;
- (id)_getAllVehicleEventsFromHistory;
- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5;
@end

@implementation RTVehicleLocationHistoryController

- (RTVehicleLocationHistoryController)initWithQueue:(id)a3 managedObjectContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RTVehicleLocationHistoryController;
  v9 = [(RTVehicleLocationHistoryController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeStrong(&v10->_managedObjectContext, a4);
  }

  return v10;
}

- (BOOL)_evaluateUsualLocationWithVehicleEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 nearbyLocationOfInterest];

  if (v5)
  {
    v6 = [(RTVehicleLocationHistoryController *)self _getAllVehicleEventsFromHistory];
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__25;
    v32 = __Block_byref_object_dispose__25;
    v33 = 0;
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __77__RTVehicleLocationHistoryController__evaluateUsualLocationWithVehicleEvent___block_invoke;
    v25 = &unk_2788C70F8;
    v7 = v4;
    v26 = v7;
    v27 = &v28;
    [v6 enumerateObjectsUsingBlock:&v22];
    if (v29[5])
    {
      v8 = [v7 location];
      [v8 latitude];
      v9 = [v7 location];
      [v9 longitude];
      v10 = [v29[5] location];
      [v10 latitude];
      v11 = [v29[5] location];
      [v11 longitude];
      RTCommonCalculateDistance();
      v13 = v12;

      v14 = [v7 location];
      [v14 horizontalUncertainty];
      v16 = v15;
      v17 = [v29[5] location];
      [v17 horizontalUncertainty];
      v19 = v16 + 20.0 + v18;

      v20 = 130.0;
      if (v19 <= 130.0)
      {
        v20 = v19;
      }

      LOBYTE(v5) = v13 < v20;
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    _Block_object_dispose(&v28, 8);
  }

  return v5;
}

void __77__RTVehicleLocationHistoryController__evaluateUsualLocationWithVehicleEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  v7 = [*(a1 + 32) nearbyLocationOfInterest];
  v8 = [v7 location];
  [v8 latitude];
  v9 = [*(a1 + 32) nearbyLocationOfInterest];
  v10 = [v9 location];
  [v10 longitude];
  v11 = [v15 location];
  [v11 latitude];
  v12 = [v15 location];
  [v12 longitude];
  RTCommonCalculateDistance();
  v14 = v13;

  if (v14 < 250.0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)_persistVehicleEventToHistory:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 nearbyLocationOfInterest];

  if (v5)
  {
    v6 = [(RTVehicleLocationHistoryController *)self managedObjectContext];

    if (v6)
    {
      *v19 = 0;
      v20 = v19;
      v21 = 0x3032000000;
      v22 = __Block_byref_object_copy__25;
      v23 = __Block_byref_object_dispose__25;
      v24 = 0;
      v7 = [(RTVehicleLocationHistoryController *)self managedObjectContext];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __68__RTVehicleLocationHistoryController__persistVehicleEventToHistory___block_invoke;
      v15[3] = &unk_2788C51F0;
      v16 = v4;
      v17 = self;
      v18 = v19;
      [v7 performBlockAndWait:v15];

      v8 = *(v20 + 5);
      v9 = v8 == 0;
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (v8)
      {
        if (v10)
        {
          v11 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [*(v20 + 5) description];
            *buf = 138412290;
            v26 = v12;
            _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "Error persisting the vehicle event to history, %@", buf, 0xCu);
          }

LABEL_19:
        }
      }

      else if (v10)
      {
        v11 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "Persisted a vehicle event to history.", buf, 2u);
        }

        goto LABEL_19;
      }

      _Block_object_dispose(v19, 8);
      goto LABEL_21;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "managedObjectContext is nil, not persisting vehicle event to history.", v19, 2u);
      }

LABEL_14:
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "vehicle event is not close to any LOIs, not persisting to history.", v19, 2u);
    }

    goto LABEL_14;
  }

  v9 = 0;
LABEL_21:

  return v9;
}

void __68__RTVehicleLocationHistoryController__persistVehicleEventToHistory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [RTVehicleEventHistoryMO managedObjectWithVehicleEvent:v2 inManagedObjectContext:v3];

  v5 = [*(a1 + 40) managedObjectContext];
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  [v5 save:&obj];
  objc_storeStrong((v6 + 40), obj);
}

- (id)_getAllVehicleEventsFromHistory
{
  v3 = [(RTVehicleLocationHistoryController *)self managedObjectContext];

  if (v3)
  {
    *buf = 0;
    v16 = buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__25;
    v19 = __Block_byref_object_dispose__25;
    v20 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__25;
    v13 = __Block_byref_object_dispose__25;
    v14 = 0;
    v4 = [(RTVehicleLocationHistoryController *)self managedObjectContext];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__RTVehicleLocationHistoryController__getAllVehicleEventsFromHistory__block_invoke;
    v8[3] = &unk_2788C7148;
    v8[4] = self;
    v8[5] = buf;
    v8[6] = &v9;
    [v4 performBlockAndWait:v8];

    v5 = v10[5];
    _Block_object_dispose(&v9, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "managedObjectContext is nil, not fetching from history.", buf, 2u);
      }
    }

    v5 = 0;
  }

  return v5;
}

void __69__RTVehicleLocationHistoryController__getAllVehicleEventsFromHistory__block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"date" ascending:0];
  v20[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  v4 = [*(a1 + 32) managedObjectContext];
  v5 = +[(NSManagedObject *)RTVehicleEventHistoryMO];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [v4 fetchAllWithEntityName:v5 predicate:0 sortDescriptors:v3 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v7 count];
      v10 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 134218242;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Retrieved %lu vehicle events from history, error, %@.", buf, 0x16u);
    }
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v11 = objc_opt_new();
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__RTVehicleLocationHistoryController__getAllVehicleEventsFromHistory__block_invoke_21;
    v14[3] = &unk_2788C7120;
    v14[4] = *(a1 + 48);
    [v7 enumerateObjectsUsingBlock:v14];
  }
}

void __69__RTVehicleLocationHistoryController__getAllVehicleEventsFromHistory__block_invoke_21(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D01160];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 locLatitude];
  [v6 doubleValue];
  v8 = v7;
  v9 = [v4 locLongitude];
  [v9 doubleValue];
  v11 = v10;
  v12 = [v4 locUncertainty];
  [v12 doubleValue];
  v14 = v13;
  v15 = [v4 locDate];
  v23 = [v5 initWithLatitude:v15 longitude:v8 horizontalUncertainty:v11 date:v14];

  v16 = objc_alloc(MEMORY[0x277D01420]);
  v17 = [v4 date];
  v18 = objc_alloc(MEMORY[0x277CCAD78]);
  v19 = [v4 identifier];

  v20 = [v18 initWithUUIDString:v19];
  LOBYTE(v22) = 1;
  v21 = [v16 initWithDate:v17 location:v23 vehicleIdentifier:0 userSetLocation:0 notes:0 identifier:v20 photo:0 mapItem:0 confirmed:v22];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v21];
}

- (BOOL)_deleteVehicleEventsBeforeDate:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTVehicleLocationHistoryController *)self managedObjectContext];

  if (v5)
  {
    *v17 = 0;
    v18 = v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__25;
    v21 = __Block_byref_object_dispose__25;
    v22 = 0;
    v6 = [(RTVehicleLocationHistoryController *)self managedObjectContext];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__RTVehicleLocationHistoryController__deleteVehicleEventsBeforeDate___block_invoke;
    v13[3] = &unk_2788C51F0;
    v14 = v4;
    v15 = self;
    v16 = v17;
    [v6 performBlockAndWait:v13];

    v7 = *(v18 + 5);
    v8 = v7 == 0;
    if (v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [*(v18 + 5) description];
        *buf = 138739971;
        v24 = v10;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "Error deleting history parked event, %{sensitive}@", buf, 0xCu);
      }
    }

    _Block_object_dispose(v17, 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "No managed object context, not deleting.", v17, 2u);
      }
    }

    v8 = 0;
  }

  return v8;
}

void __69__RTVehicleLocationHistoryController__deleteVehicleEventsBeforeDate___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(date <= %@)", *(a1 + 32)];
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = +[(NSManagedObject *)RTVehicleEventHistoryMO];
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  [v3 deleteAllWithEntityName:v4 predicate:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 40) managedObjectContext];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    [v6 save:&v8];
    objc_storeStrong((v7 + 40), v8);
  }
}

- (void)performPurgeOfType:(int64_t)a3 referenceDate:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(RTVehicleLocationHistoryController *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__RTVehicleLocationHistoryController_performPurgeOfType_referenceDate_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __82__RTVehicleLocationHistoryController_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) <= 2uLL && (v2 = *(a1 + 32)) != 0)
  {
    v3 = v2;
    [*(a1 + 40) _deleteVehicleEventsBeforeDate:v2];
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

@end