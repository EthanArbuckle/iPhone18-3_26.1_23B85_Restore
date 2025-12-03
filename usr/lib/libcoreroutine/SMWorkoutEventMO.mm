@interface SMWorkoutEventMO
+ (id)getWorkoutEventMOFromWorkoutEvent:(id)event context:(id)context;
+ (id)getWorkoutEventMOFromWorkoutEvents:(id)events context:(id)context;
+ (id)managedObjectWithSMWorkoutEvent:(id)event managedObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation SMWorkoutEventMO

+ (id)managedObjectWithSMWorkoutEvent:(id)event managedObject:(id)object inManagedObjectContext:(id)context
{
  eventCopy = event;
  objectCopy = object;
  contextCopy = context;
  v10 = contextCopy;
  if (!eventCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: workoutEvent";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_7;
  }

  if (contextCopy)
  {
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__169;
    v24 = __Block_byref_object_dispose__169;
    v25 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __89__SMWorkoutEventMO_managedObjectWithSMWorkoutEvent_managedObject_inManagedObjectContext___block_invoke;
    v15[3] = &unk_2788C5DA0;
    v19 = buf;
    v16 = objectCopy;
    v17 = v10;
    v18 = eventCopy;
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

void __89__SMWorkoutEventMO_managedObjectWithSMWorkoutEvent_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [[SMWorkoutEventMO alloc] initWithContext:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = [*(a1 + 48) identifier];
  [*(*(*(a1 + 56) + 8) + 40) setIdentifier:v4];

  v5 = [*(a1 + 48) sessionIdentifier];
  [*(*(*(a1 + 56) + 8) + 40) setSessionIdentifier:v5];

  [*(*(*(a1 + 56) + 8) + 40) setActivityType:{objc_msgSend(*(a1 + 48), "activityType")}];
  [*(*(*(a1 + 56) + 8) + 40) setLocationType:{objc_msgSend(*(a1 + 48), "locationType")}];
  [*(*(*(a1 + 56) + 8) + 40) setSwimmingLocationType:{objc_msgSend(*(a1 + 48), "swimmingLocationType")}];
  [*(*(*(a1 + 56) + 8) + 40) setSessionState:{objc_msgSend(*(a1 + 48), "sessionState")}];
  [*(*(*(a1 + 56) + 8) + 40) setIsResumedSessionState:{objc_msgSend(*(a1 + 48), "isResumedSessionState")}];
  v6 = [*(a1 + 48) date];
  [*(*(*(a1 + 56) + 8) + 40) setDate:v6];

  v7 = +[SMLocationMO fetchRequest];
  v8 = MEMORY[0x277CCAC30];
  v9 = [*(a1 + 48) location];
  v10 = [v9 identifier];
  v11 = [v8 predicateWithFormat:@"%K == %@", @"identifier", v10];
  [v7 setPredicate:v11];

  v12 = *(a1 + 40);
  v20 = 0;
  v13 = [v12 executeFetchRequest:v7 error:&v20];
  v14 = v20;
  if (v14)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = [*(a1 + 48) location];
      *buf = 136315651;
      v22 = "+[SMWorkoutEventMO managedObjectWithSMWorkoutEvent:managedObject:inManagedObjectContext:]_block_invoke";
      v23 = 2117;
      v24 = v19;
      v25 = 2112;
      v26 = v14;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "SMWorkoutEventMO,%s,workoutEvent.location,%{sensitive}@,location fetch error,%@", buf, 0x20u);
    }
  }

  v16 = [*(a1 + 48) location];
  v17 = [v13 firstObject];
  v18 = [SMLocationMO managedObjectWithLocation:v16 managedObject:v17 inManagedObjectContext:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setLocation:v18];
}

+ (id)getWorkoutEventMOFromWorkoutEvents:(id)events context:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  contextCopy = context;
  v7 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = eventsCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [SMWorkoutEventMO getWorkoutEventMOFromWorkoutEvent:*(*(&v15 + 1) + 8 * i) context:contextCopy, v15];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)getWorkoutEventMOFromWorkoutEvent:(id)event context:(id)context
{
  contextCopy = context;
  eventCopy = event;
  v7 = +[SMWorkoutEventMO fetchRequest];
  v8 = MEMORY[0x277CCAC30];
  identifier = [eventCopy identifier];
  v10 = [v8 predicateWithFormat:@"%K == %@", @"identifier", identifier];
  [v7 setPredicate:v10];

  v15 = 0;
  v11 = [contextCopy executeFetchRequest:v7 error:&v15];
  firstObject = [v11 firstObject];
  v13 = [SMWorkoutEventMO managedObjectWithSMWorkoutEvent:eventCopy managedObject:firstObject inManagedObjectContext:contextCopy];

  return v13;
}

@end