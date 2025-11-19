@interface RTHintMO
+ (id)managedObjectWithHint:(id)a3 inManagedObjectContext:(id)a4;
+ (id)managedObjectWithLatitude:(double)a3 longitude:(double)a4 horizontalUncertainty:(double)a5 source:(int64_t)a6 date:(id)a7 inManagedObjectContext:(id)a8;
@end

@implementation RTHintMO

+ (id)managedObjectWithHint:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v25 = 0;
    v21 = "Invalid parameter not satisfying: hint";
    v22 = &v25;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, v21, v22, 2u);
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = [v5 location];
    [v8 latitude];
    v10 = v9;
    v11 = [v5 location];
    [v11 longitude];
    v13 = v12;
    v14 = [v5 location];
    [v14 horizontalUncertainty];
    v16 = v15;
    v17 = [v5 source];
    v18 = [v5 date];
    v19 = [RTHintMO managedObjectWithLatitude:v17 longitude:v18 horizontalUncertainty:v7 source:v10 date:v13 inManagedObjectContext:v16];

    goto LABEL_8;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v24 = 0;
    v21 = "Invalid parameter not satisfying: managedObjectContext";
    v22 = &v24;
    goto LABEL_12;
  }

LABEL_7:

  v19 = 0;
LABEL_8:

  return v19;
}

+ (id)managedObjectWithLatitude:(double)a3 longitude:(double)a4 horizontalUncertainty:(double)a5 source:(int64_t)a6 date:(id)a7 inManagedObjectContext:(id)a8
{
  v13 = a7;
  v14 = a8;
  v15 = v14;
  if (v14)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__102;
    v30 = __Block_byref_object_dispose__102;
    v31 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __105__RTHintMO_managedObjectWithLatitude_longitude_horizontalUncertainty_source_date_inManagedObjectContext___block_invoke;
    v18[3] = &unk_2788CD948;
    v21 = &v26;
    v19 = v14;
    v22 = a3;
    v23 = a4;
    v24 = a5;
    v25 = a6;
    v20 = v13;
    [v19 performBlockAndWait:v18];
    v16 = v27[5];

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __105__RTHintMO_managedObjectWithLatitude_longitude_horizontalUncertainty_source_date_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [[RTHintMO alloc] initWithContext:*(a1 + 32)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 48) + 8) + 40) setLatitude:*(a1 + 56)];
  [*(*(*(a1 + 48) + 8) + 40) setLongitude:*(a1 + 64)];
  [*(*(*(a1 + 48) + 8) + 40) setHorizontalUncertainty:*(a1 + 72)];
  [*(*(*(a1 + 48) + 8) + 40) setSource:*(a1 + 80)];
  v5 = *(a1 + 40);
  v6 = *(*(*(a1 + 48) + 8) + 40);

  return [v6 setDate:v5];
}

@end