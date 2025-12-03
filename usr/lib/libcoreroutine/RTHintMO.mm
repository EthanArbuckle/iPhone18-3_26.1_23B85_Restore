@interface RTHintMO
+ (id)managedObjectWithHint:(id)hint inManagedObjectContext:(id)context;
+ (id)managedObjectWithLatitude:(double)latitude longitude:(double)longitude horizontalUncertainty:(double)uncertainty source:(int64_t)source date:(id)date inManagedObjectContext:(id)context;
@end

@implementation RTHintMO

+ (id)managedObjectWithHint:(id)hint inManagedObjectContext:(id)context
{
  hintCopy = hint;
  contextCopy = context;
  v7 = contextCopy;
  if (!hintCopy)
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

  if (contextCopy)
  {
    location = [hintCopy location];
    [location latitude];
    v10 = v9;
    location2 = [hintCopy location];
    [location2 longitude];
    v13 = v12;
    location3 = [hintCopy location];
    [location3 horizontalUncertainty];
    v16 = v15;
    source = [hintCopy source];
    date = [hintCopy date];
    v19 = [RTHintMO managedObjectWithLatitude:source longitude:date horizontalUncertainty:v7 source:v10 date:v13 inManagedObjectContext:v16];

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

+ (id)managedObjectWithLatitude:(double)latitude longitude:(double)longitude horizontalUncertainty:(double)uncertainty source:(int64_t)source date:(id)date inManagedObjectContext:(id)context
{
  dateCopy = date;
  contextCopy = context;
  v15 = contextCopy;
  if (contextCopy)
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
    v19 = contextCopy;
    latitudeCopy = latitude;
    longitudeCopy = longitude;
    uncertaintyCopy = uncertainty;
    sourceCopy = source;
    v20 = dateCopy;
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