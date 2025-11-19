@interface RTLearnedPlaceTypeInferenceMO
+ (id)initWithLearnedPlaceTypeInference:(id)a3 managedObjectContext:(id)a4;
+ (id)managedObjectWithIdentifier:(id)a3 sessionId:(id)a4 learnedPlaceIdentifier:(id)a5 placeType:(unint64_t)a6 metricSource:(unint64_t)a7 creationDate:(id)a8 managedObjectContext:(id)a9;
@end

@implementation RTLearnedPlaceTypeInferenceMO

+ (id)initWithLearnedPlaceTypeInference:(id)a3 managedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v20 = 0;
    v16 = "Invalid parameter not satisfying: learnedPlaceTypeInference";
    v17 = &v20;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, v17, 2u);
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = [v5 identifier];
    v9 = [v5 sessionId];
    v10 = [v5 learnedPlaceIdentifier];
    v11 = [v5 placeType];
    v12 = [v5 metricSource];
    v13 = [v5 creationDate];
    v14 = [RTLearnedPlaceTypeInferenceMO managedObjectWithIdentifier:v8 sessionId:v9 learnedPlaceIdentifier:v10 placeType:v11 metricSource:v12 creationDate:v13 managedObjectContext:v7];

    goto LABEL_8;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v16 = "Invalid parameter not satisfying: managedObjectContext";
    v17 = buf;
    goto LABEL_12;
  }

LABEL_7:

  v14 = 0;
LABEL_8:

  return v14;
}

+ (id)managedObjectWithIdentifier:(id)a3 sessionId:(id)a4 learnedPlaceIdentifier:(id)a5 placeType:(unint64_t)a6 metricSource:(unint64_t)a7 creationDate:(id)a8 managedObjectContext:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = a9;
  v19 = v18;
  if (v18)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__17;
    v35 = __Block_byref_object_dispose__17;
    v36 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __151__RTLearnedPlaceTypeInferenceMO_managedObjectWithIdentifier_sessionId_learnedPlaceIdentifier_placeType_metricSource_creationDate_managedObjectContext___block_invoke;
    v22[3] = &unk_2788C5E90;
    v28 = &v31;
    v23 = v18;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v29 = a6;
    v30 = a7;
    v27 = v17;
    [v23 performBlockAndWait:v22];
    v20 = v32[5];

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t __151__RTLearnedPlaceTypeInferenceMO_managedObjectWithIdentifier_sessionId_learnedPlaceIdentifier_placeType_metricSource_creationDate_managedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [[RTLearnedPlaceTypeInferenceMO alloc] initWithContext:*(a1 + 32)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 72) + 8) + 40) setIdentifier:*(a1 + 40)];
  [*(*(*(a1 + 72) + 8) + 40) setSessionId:*(a1 + 48)];
  [*(*(*(a1 + 72) + 8) + 40) setLearnedPlaceIdentifier:*(a1 + 56)];
  [*(*(*(a1 + 72) + 8) + 40) setPlaceType:*(a1 + 80)];
  [*(*(*(a1 + 72) + 8) + 40) setMetricSource:*(a1 + 88)];
  v5 = *(a1 + 64);
  v6 = *(*(*(a1 + 72) + 8) + 40);

  return [v6 setCreationDate:v5];
}

@end