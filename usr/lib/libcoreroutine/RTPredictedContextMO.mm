@interface RTPredictedContextMO
+ (id)managedObjectWithPredictedContext:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation RTPredictedContextMO

+ (id)managedObjectWithPredictedContext:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5
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
    v13 = "Invalid parameter not satisfying: predictedContext";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_7;
  }

  if (v9)
  {
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__181;
    v24 = __Block_byref_object_dispose__181;
    v25 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __95__RTPredictedContextMO_managedObjectWithPredictedContext_managedObject_inManagedObjectContext___block_invoke;
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

void __95__RTPredictedContextMO_managedObjectWithPredictedContext_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [[RTPredictedContextMO alloc] initWithContext:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = [MEMORY[0x277CBEAA8] now];
  [*(*(*(a1 + 56) + 8) + 40) setSubmissionDate:v4];

  [*(*(*(a1 + 56) + 8) + 40) setContextType:0];
  v5 = [*(a1 + 48) dateInterval];
  v6 = [v5 startDate];
  v7 = [v6 date];
  [*(*(*(a1 + 56) + 8) + 40) setPredictionStartDate:v7];

  v8 = [*(a1 + 48) dateInterval];
  v9 = [v8 startDate];
  [v9 confidenceInterval];
  [*(*(*(a1 + 56) + 8) + 40) setPredictionStartDateConfidenceInterval:?];

  v10 = [*(a1 + 48) dateInterval];
  v11 = [v10 endDate];
  v12 = [v11 date];
  [*(*(*(a1 + 56) + 8) + 40) setPredictionEndDate:v12];

  v13 = [*(a1 + 48) dateInterval];
  v14 = [v13 endDate];
  [v14 confidenceInterval];
  [*(*(*(a1 + 56) + 8) + 40) setPredictionEndDateConfidenceInterval:?];

  [*(a1 + 48) probability];
  [*(*(*(a1 + 56) + 8) + 40) setProbability:?];
  v15 = MEMORY[0x277D01208];
  v16 = [*(a1 + 48) predictionSources];
  [*(*(*(a1 + 56) + 8) + 40) setPredictionSourceMask:{objc_msgSend(v15, "maskForSources:", v16)}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = *(*(*(a1 + 56) + 8) + 40);
    v18 = *(a1 + 48);
    [v17 setContextType:1];
    v19 = [v18 locationOfInterest];
    [*(*(*(a1 + 56) + 8) + 40) setLocationOfInterestType:{objc_msgSend(v19, "type")}];

    v20 = [v18 locationOfInterest];
    v21 = [v20 location];
    [v21 latitude];
    [*(*(*(a1 + 56) + 8) + 40) setLocationLatitude:?];

    v22 = [v18 locationOfInterest];
    v23 = [v22 location];
    [v23 longitude];
    [*(*(*(a1 + 56) + 8) + 40) setLocationLongitude:?];

    v32 = [v18 locationOfInterest];
    v24 = [v32 identifier];
    [*(*(*(a1 + 56) + 8) + 40) setLoiIdentifier:v24];

LABEL_7:

    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    v30 = *(*(*(a1 + 56) + 8) + 40);
    v32 = *(a1 + 48);
    [v30 setContextType:4];
    [*(*(*(a1 + 56) + 8) + 40) setWorkoutActivityType:{objc_msgSend(v32, "workoutActivityType")}];
    v31 = [v32 sourceBundleIdentifier];
    [*(*(*(a1 + 56) + 8) + 40) setSourceBundleIdentifier:v31];

    [*(*(*(a1 + 56) + 8) + 40) setWorkoutLocationType:{objc_msgSend(v32, "workoutLocationType")}];
    goto LABEL_7;
  }

  v25 = *(a1 + 48);
  [*(*(*(a1 + 56) + 8) + 40) setContextType:2];
  v26 = [v25 predictedContextTransports];
  v27 = [v26 count];

  if (v27)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__181;
    v38 = __Block_byref_object_dispose__181;
    v28 = [v25 predictedContextTransports];
    v39 = [v28 firstObject];

    v29 = [v25 predictedContextTransports];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __95__RTPredictedContextMO_managedObjectWithPredictedContext_managedObject_inManagedObjectContext___block_invoke_2;
    v33[3] = &unk_2788D1130;
    v33[4] = &v34;
    [v29 enumerateObjectsUsingBlock:v33];

    [*(*(*(a1 + 56) + 8) + 40) setTransportMode:{objc_msgSend(v35[5], "transportMode")}];
    _Block_object_dispose(&v34, 8);
  }
}

void __95__RTPredictedContextMO_managedObjectWithPredictedContext_managedObject_inManagedObjectContext___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 probability];
  v5 = v4;
  [*(*(*(a1 + 32) + 8) + 40) probability];
  if (v5 > v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

@end