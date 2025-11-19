@interface SMSuggestionMO
+ (id)initWithSuggestion:(id)a3 managedObjectContext:(id)a4;
+ (id)managedObjectWithSuggestionTrigger:(unint64_t)a3 suggestionUserType:(unint64_t)a4 suppressionReason:(unint64_t)a5 sessionType:(unint64_t)a6 sourceLocationLatitude:(double)a7 sourceLocationLongitude:(double)a8 destinationLocationLatitude:(double)a9 destinationLocationLongitude:(double)a10 buddyEmail:(id)a11 buddyPhoneNumber:(id)a12 startDate:(id)a13 endDate:(id)a14 creationDate:(id)a15 managedObjectContext:(id)a16;
@end

@implementation SMSuggestionMO

+ (id)initWithSuggestion:(id)a3 managedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v40 = 0;
    v26 = "Invalid parameter not satisfying: suggestion";
    v27 = &v40;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, v26, v27, 2u);
    goto LABEL_7;
  }

  if (v6)
  {
    v33 = [v5 suggestionTrigger];
    v35 = [v5 suggestionUserType];
    v32 = [v5 suppressionReason];
    v31 = [v5 sessionType];
    v38 = [v5 sourceLocation];
    [v38 latitude];
    v9 = v8;
    v37 = [v5 sourceLocation];
    [v37 longitude];
    v11 = v10;
    v36 = [v5 destinationLocation];
    [v36 latitude];
    v13 = v12;
    v34 = [v5 destinationLocation];
    [v34 longitude];
    v15 = v14;
    v30 = [v5 buddy];
    v16 = [v30 email];
    v29 = [v5 buddy];
    v17 = [v29 phoneNumber];
    v18 = [v5 dateInterval];
    v19 = [v18 startDate];
    v20 = [v5 dateInterval];
    v21 = [v20 endDate];
    v22 = [v5 creationDate];
    v23 = v16;
    v24 = [SMSuggestionMO managedObjectWithSuggestionTrigger:v33 suggestionUserType:v35 suppressionReason:v32 sessionType:v31 sourceLocationLatitude:v16 sourceLocationLongitude:v17 destinationLocationLatitude:v9 destinationLocationLongitude:v11 buddyEmail:v13 buddyPhoneNumber:v15 startDate:v19 endDate:v21 creationDate:v22 managedObjectContext:v7];

    goto LABEL_8;
  }

  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v26 = "Invalid parameter not satisfying: managedObjectContext";
    v27 = buf;
    goto LABEL_12;
  }

LABEL_7:

  v24 = 0;
LABEL_8:

  return v24;
}

+ (id)managedObjectWithSuggestionTrigger:(unint64_t)a3 suggestionUserType:(unint64_t)a4 suppressionReason:(unint64_t)a5 sessionType:(unint64_t)a6 sourceLocationLatitude:(double)a7 sourceLocationLongitude:(double)a8 destinationLocationLatitude:(double)a9 destinationLocationLongitude:(double)a10 buddyEmail:(id)a11 buddyPhoneNumber:(id)a12 startDate:(id)a13 endDate:(id)a14 creationDate:(id)a15 managedObjectContext:(id)a16
{
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v28 = a15;
  v29 = a16;
  v30 = v29;
  if (v29)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__95;
    v54 = __Block_byref_object_dispose__95;
    v55 = 0;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __286__SMSuggestionMO_managedObjectWithSuggestionTrigger_suggestionUserType_suppressionReason_sessionType_sourceLocationLatitude_sourceLocationLongitude_destinationLocationLatitude_destinationLocationLongitude_buddyEmail_buddyPhoneNumber_startDate_endDate_creationDate_managedObjectContext___block_invoke;
    v34[3] = &unk_2788CCB40;
    v41 = &v50;
    v35 = v29;
    v42 = a3;
    v43 = a4;
    v44 = a5;
    v45 = a6;
    v46 = a7;
    v47 = a8;
    v48 = a9;
    v49 = a10;
    v36 = v24;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    [v35 performBlockAndWait:v34];
    v31 = v51[5];

    _Block_object_dispose(&v50, 8);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

uint64_t __286__SMSuggestionMO_managedObjectWithSuggestionTrigger_suggestionUserType_suppressionReason_sessionType_sourceLocationLatitude_sourceLocationLongitude_destinationLocationLatitude_destinationLocationLongitude_buddyEmail_buddyPhoneNumber_startDate_endDate_creationDate_managedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [[SMSuggestionMO alloc] initWithContext:*(a1 + 32)];
  v3 = *(*(a1 + 80) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 80) + 8) + 40) setSuggestionTrigger:*(a1 + 88)];
  [*(*(*(a1 + 80) + 8) + 40) setSuggestionUserType:*(a1 + 96)];
  [*(*(*(a1 + 80) + 8) + 40) setSuppressionReason:*(a1 + 104)];
  [*(*(*(a1 + 80) + 8) + 40) setSessionType:*(a1 + 112)];
  [*(*(*(a1 + 80) + 8) + 40) setSourceLocationLatitude:*(a1 + 120)];
  [*(*(*(a1 + 80) + 8) + 40) setSourceLocationLongitude:*(a1 + 128)];
  [*(*(*(a1 + 80) + 8) + 40) setDestinationLocationLatitude:*(a1 + 136)];
  [*(*(*(a1 + 80) + 8) + 40) setDestinationLocationLongitude:*(a1 + 144)];
  [*(*(*(a1 + 80) + 8) + 40) setBuddyEmail:*(a1 + 40)];
  [*(*(*(a1 + 80) + 8) + 40) setBuddyPhoneNumber:*(a1 + 48)];
  [*(*(*(a1 + 80) + 8) + 40) setStartDate:*(a1 + 56)];
  [*(*(*(a1 + 80) + 8) + 40) setEndDate:*(a1 + 64)];
  v5 = *(a1 + 72);
  v6 = *(*(*(a1 + 80) + 8) + 40);

  return [v6 setCreationDate:v5];
}

@end