@interface SMLocationMO
+ (id)managedObjectWithLocation:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation SMLocationMO

+ (id)managedObjectWithLocation:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v7)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: location";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_7;
  }

  if (v9)
  {
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__100;
    v24 = __Block_byref_object_dispose__100;
    v25 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79__SMLocationMO_managedObjectWithLocation_managedObject_inManagedObjectContext___block_invoke;
    v15[3] = &unk_2788C5DA0;
    v19 = buf;
    v16 = v8;
    v17 = v10;
    v18 = v7;
    [v17 performBlockAndWait:v15];
    v11 = *(v21 + 5);

    _Block_object_dispose(buf, 8);
    goto LABEL_8;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v13 = "Invalid parameter not satisfying: managedObjectContext";
    goto LABEL_12;
  }

LABEL_7:

  v11 = 0;
LABEL_8:

  return v11;
}

uint64_t __79__SMLocationMO_managedObjectWithLocation_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [[SMLocationMO alloc] initWithContext:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = [*(a1 + 48) identifier];
  [*(*(*(a1 + 56) + 8) + 40) setIdentifier:v4];

  [*(a1 + 48) altitude];
  [*(*(*(a1 + 56) + 8) + 40) setAltitude:?];
  [*(a1 + 48) hunc];
  [*(*(*(a1 + 56) + 8) + 40) setHunc:?];
  [*(a1 + 48) latitude];
  [*(*(*(a1 + 56) + 8) + 40) setLatitude:?];
  [*(a1 + 48) longitude];
  [*(*(*(a1 + 56) + 8) + 40) setLongitude:?];
  v5 = [*(a1 + 48) date];
  [*(*(*(a1 + 56) + 8) + 40) setDate:v5];

  [*(a1 + 48) vunc];
  v6 = *(*(*(a1 + 56) + 8) + 40);

  return [v6 setVunc:?];
}

@end