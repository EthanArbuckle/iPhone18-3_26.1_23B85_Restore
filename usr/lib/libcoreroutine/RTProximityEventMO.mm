@interface RTProximityEventMO
+ (id)managedObjectWithEventID:(id)d startDate:(id)date endDate:(id)endDate relationship:(int64_t)relationship socialScore:(double)score frequency:(id)frequency recency:(id)recency significance:(id)self0 inManagedObjectContext:(id)self1;
+ (id)managedObjectWithProximityEvent:(id)event inManagedObjectContext:(id)context;
@end

@implementation RTProximityEventMO

+ (id)managedObjectWithProximityEvent:(id)event inManagedObjectContext:(id)context
{
  eventCopy = event;
  contextCopy = context;
  v7 = contextCopy;
  if (!eventCopy)
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

  if (contextCopy)
  {
    eventID = [eventCopy eventID];
    startDate = [eventCopy startDate];
    endDate = [eventCopy endDate];
    relationship = [eventCopy relationship];
    [eventCopy socialScore];
    v13 = v12;
    combinedFrequencyScores = [eventCopy combinedFrequencyScores];
    combinedRecencyScores = [eventCopy combinedRecencyScores];
    combinedSignificanceScores = [eventCopy combinedSignificanceScores];
    v17 = [RTProximityEventMO managedObjectWithEventID:eventID startDate:startDate endDate:endDate relationship:relationship socialScore:combinedFrequencyScores frequency:combinedRecencyScores recency:v13 significance:combinedSignificanceScores inManagedObjectContext:v7];

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

+ (id)managedObjectWithEventID:(id)d startDate:(id)date endDate:(id)endDate relationship:(int64_t)relationship socialScore:(double)score frequency:(id)frequency recency:(id)recency significance:(id)self0 inManagedObjectContext:(id)self1
{
  dCopy = d;
  dateCopy = date;
  endDateCopy = endDate;
  frequencyCopy = frequency;
  recencyCopy = recency;
  significanceCopy = significance;
  contextCopy = context;
  v24 = contextCopy;
  if (contextCopy)
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
    v28 = contextCopy;
    v29 = dCopy;
    v30 = dateCopy;
    v31 = endDateCopy;
    relationshipCopy = relationship;
    scoreCopy = score;
    v32 = frequencyCopy;
    v33 = recencyCopy;
    v34 = significanceCopy;
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