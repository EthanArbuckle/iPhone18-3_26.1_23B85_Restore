@interface RTLearnedPlaceTypeInferenceMO
+ (id)initWithLearnedPlaceTypeInference:(id)inference managedObjectContext:(id)context;
+ (id)managedObjectWithIdentifier:(id)identifier sessionId:(id)id learnedPlaceIdentifier:(id)placeIdentifier placeType:(unint64_t)type metricSource:(unint64_t)source creationDate:(id)date managedObjectContext:(id)context;
@end

@implementation RTLearnedPlaceTypeInferenceMO

+ (id)initWithLearnedPlaceTypeInference:(id)inference managedObjectContext:(id)context
{
  inferenceCopy = inference;
  contextCopy = context;
  v7 = contextCopy;
  if (!inferenceCopy)
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

  if (contextCopy)
  {
    identifier = [inferenceCopy identifier];
    sessionId = [inferenceCopy sessionId];
    learnedPlaceIdentifier = [inferenceCopy learnedPlaceIdentifier];
    placeType = [inferenceCopy placeType];
    metricSource = [inferenceCopy metricSource];
    creationDate = [inferenceCopy creationDate];
    v14 = [RTLearnedPlaceTypeInferenceMO managedObjectWithIdentifier:identifier sessionId:sessionId learnedPlaceIdentifier:learnedPlaceIdentifier placeType:placeType metricSource:metricSource creationDate:creationDate managedObjectContext:v7];

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

+ (id)managedObjectWithIdentifier:(id)identifier sessionId:(id)id learnedPlaceIdentifier:(id)placeIdentifier placeType:(unint64_t)type metricSource:(unint64_t)source creationDate:(id)date managedObjectContext:(id)context
{
  identifierCopy = identifier;
  idCopy = id;
  placeIdentifierCopy = placeIdentifier;
  dateCopy = date;
  contextCopy = context;
  v19 = contextCopy;
  if (contextCopy)
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
    v23 = contextCopy;
    v24 = identifierCopy;
    v25 = idCopy;
    v26 = placeIdentifierCopy;
    typeCopy = type;
    sourceCopy = source;
    v27 = dateCopy;
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