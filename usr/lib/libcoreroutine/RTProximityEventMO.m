@interface RTProximityEventMO
+ (id)managedObjectWithEventID:(id)a3 startDate:(id)a4 endDate:(id)a5 relationship:(int64_t)a6 socialScore:(double)a7 frequency:(id)a8 recency:(id)a9 significance:(id)a10 inManagedObjectContext:(id)a11;
+ (id)managedObjectWithProximityEvent:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTProximityEventMO

+ (id)managedObjectWithProximityEvent:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v23 = 0;
    v19 = "Invalid parameter not satisfying: proximityEvent";
    v20 = &v23;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = [v5 eventID];
    v9 = [v5 startDate];
    v10 = [v5 endDate];
    v11 = [v5 relationship];
    [v5 socialScore];
    v13 = v12;
    v14 = [v5 combinedFrequencyScores];
    v15 = [v5 combinedRecencyScores];
    v16 = [v5 combinedSignificanceScores];
    v17 = [RTProximityEventMO managedObjectWithEventID:v8 startDate:v9 endDate:v10 relationship:v11 socialScore:v14 frequency:v15 recency:v13 significance:v16 inManagedObjectContext:v7];

    goto LABEL_8;
  }

  v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v19 = "Invalid parameter not satisfying: managedObjectContext";
    v20 = buf;
    goto LABEL_12;
  }

LABEL_7:

  v17 = 0;
LABEL_8:

  return v17;
}

+ (id)managedObjectWithEventID:(id)a3 startDate:(id)a4 endDate:(id)a5 relationship:(int64_t)a6 socialScore:(double)a7 frequency:(id)a8 recency:(id)a9 significance:(id)a10 inManagedObjectContext:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = v23;
  if (v23)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__192;
    v42 = __Block_byref_object_dispose__192;
    v43 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __144__RTProximityEventMO_managedObjectWithEventID_startDate_endDate_relationship_socialScore_frequency_recency_significance_inManagedObjectContext___block_invoke;
    v27[3] = &unk_2788D2CC0;
    v35 = &v38;
    v28 = v23;
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v36 = a6;
    v37 = a7;
    v32 = v20;
    v33 = v21;
    v34 = v22;
    [v28 performBlockAndWait:v27];
    v25 = v39[5];

    _Block_object_dispose(&v38, 8);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

uint64_t __144__RTProximityEventMO_managedObjectWithEventID_startDate_endDate_relationship_socialScore_frequency_recency_significance_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [[RTProximityEventMO alloc] initWithContext:*(a1 + 32)];
  v3 = *(*(a1 + 88) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 88) + 8) + 40) setEventID:*(a1 + 40)];
  [*(*(*(a1 + 88) + 8) + 40) setStartDate:*(a1 + 48)];
  [*(*(*(a1 + 88) + 8) + 40) setEndDate:*(a1 + 56)];
  [*(*(*(a1 + 88) + 8) + 40) setRelationship:*(a1 + 96)];
  [*(*(*(a1 + 88) + 8) + 40) setSocialScore:*(a1 + 104)];
  [*(*(*(a1 + 88) + 8) + 40) setFrequencyTransformable:*(a1 + 64)];
  [*(*(*(a1 + 88) + 8) + 40) setRecencyTransformable:*(a1 + 72)];
  v5 = *(a1 + 80);
  v6 = *(*(*(a1 + 88) + 8) + 40);

  return [v6 setSignificanceTransformable:v5];
}

@end