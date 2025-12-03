@interface SMSuggestionMO
+ (id)initWithSuggestion:(id)suggestion managedObjectContext:(id)context;
+ (id)managedObjectWithSuggestionTrigger:(unint64_t)trigger suggestionUserType:(unint64_t)type suppressionReason:(unint64_t)reason sessionType:(unint64_t)sessionType sourceLocationLatitude:(double)latitude sourceLocationLongitude:(double)longitude destinationLocationLatitude:(double)locationLatitude destinationLocationLongitude:(double)self0 buddyEmail:(id)self1 buddyPhoneNumber:(id)self2 startDate:(id)self3 endDate:(id)self4 creationDate:(id)self5 managedObjectContext:(id)self6;
@end

@implementation SMSuggestionMO

+ (id)initWithSuggestion:(id)suggestion managedObjectContext:(id)context
{
  suggestionCopy = suggestion;
  contextCopy = context;
  v7 = contextCopy;
  if (!suggestionCopy)
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

  if (contextCopy)
  {
    suggestionTrigger = [suggestionCopy suggestionTrigger];
    suggestionUserType = [suggestionCopy suggestionUserType];
    suppressionReason = [suggestionCopy suppressionReason];
    sessionType = [suggestionCopy sessionType];
    sourceLocation = [suggestionCopy sourceLocation];
    [sourceLocation latitude];
    v9 = v8;
    sourceLocation2 = [suggestionCopy sourceLocation];
    [sourceLocation2 longitude];
    v11 = v10;
    destinationLocation = [suggestionCopy destinationLocation];
    [destinationLocation latitude];
    v13 = v12;
    destinationLocation2 = [suggestionCopy destinationLocation];
    [destinationLocation2 longitude];
    v15 = v14;
    buddy = [suggestionCopy buddy];
    email = [buddy email];
    buddy2 = [suggestionCopy buddy];
    phoneNumber = [buddy2 phoneNumber];
    dateInterval = [suggestionCopy dateInterval];
    startDate = [dateInterval startDate];
    dateInterval2 = [suggestionCopy dateInterval];
    endDate = [dateInterval2 endDate];
    creationDate = [suggestionCopy creationDate];
    v23 = email;
    v24 = [SMSuggestionMO managedObjectWithSuggestionTrigger:suggestionTrigger suggestionUserType:suggestionUserType suppressionReason:suppressionReason sessionType:sessionType sourceLocationLatitude:email sourceLocationLongitude:phoneNumber destinationLocationLatitude:v9 destinationLocationLongitude:v11 buddyEmail:v13 buddyPhoneNumber:v15 startDate:startDate endDate:endDate creationDate:creationDate managedObjectContext:v7];

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

+ (id)managedObjectWithSuggestionTrigger:(unint64_t)trigger suggestionUserType:(unint64_t)type suppressionReason:(unint64_t)reason sessionType:(unint64_t)sessionType sourceLocationLatitude:(double)latitude sourceLocationLongitude:(double)longitude destinationLocationLatitude:(double)locationLatitude destinationLocationLongitude:(double)self0 buddyEmail:(id)self1 buddyPhoneNumber:(id)self2 startDate:(id)self3 endDate:(id)self4 creationDate:(id)self5 managedObjectContext:(id)self6
{
  emailCopy = email;
  numberCopy = number;
  dateCopy = date;
  endDateCopy = endDate;
  creationDateCopy = creationDate;
  contextCopy = context;
  v30 = contextCopy;
  if (contextCopy)
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
    v35 = contextCopy;
    triggerCopy = trigger;
    typeCopy = type;
    reasonCopy = reason;
    sessionTypeCopy = sessionType;
    latitudeCopy = latitude;
    longitudeCopy = longitude;
    locationLatitudeCopy = locationLatitude;
    locationLongitudeCopy = locationLongitude;
    v36 = emailCopy;
    v37 = numberCopy;
    v38 = dateCopy;
    v39 = endDateCopy;
    v40 = creationDateCopy;
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