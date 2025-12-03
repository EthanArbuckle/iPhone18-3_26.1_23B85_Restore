@interface RTLearnedTransitionMO
+ (id)fetchRequest;
+ (id)managedObjectWithTransition:(id)transition managedObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation RTLearnedTransitionMO

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"RTLearnedTransitionMO"];

  return v2;
}

+ (id)managedObjectWithTransition:(id)transition managedObject:(id)object inManagedObjectContext:(id)context
{
  transitionCopy = transition;
  objectCopy = object;
  contextCopy = context;
  v11 = contextCopy;
  if (!transitionCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: transition";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_17;
  }

  if (!contextCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: managedObjectContext";
    goto LABEL_16;
  }

  if (objectCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v17 = "Invalid parameter not satisfying: [managedObject isKindOfClass:[RTLearnedTransitionMO class]]";
        goto LABEL_16;
      }

LABEL_17:

      goto LABEL_18;
    }
  }

  managedObjectContext = [objectCopy managedObjectContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_9:
    *buf = 0;
    v26 = buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__165;
    v29 = __Block_byref_object_dispose__165;
    v30 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __90__RTLearnedTransitionMO_managedObjectWithTransition_managedObject_inManagedObjectContext___block_invoke;
    v19[3] = &unk_2788C59F8;
    v23 = buf;
    v24 = a2;
    v20 = transitionCopy;
    v21 = objectCopy;
    v22 = v11;
    [v22 performBlockAndWait:v19];
    v15 = *(v26 + 5);

    _Block_object_dispose(buf, 8);
    goto LABEL_19;
  }

  managedObjectContext2 = [objectCopy managedObjectContext];
  if (([managedObjectContext2 allowTombstones] & 1) != 0 || (objc_msgSend(objectCopy, "flags") & 1) == 0)
  {

    goto LABEL_9;
  }

LABEL_18:
  v15 = 0;
LABEL_19:

  return v15;
}

void __90__RTLearnedTransitionMO_managedObjectWithTransition_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) visitIdentifierOrigin];

  if (v2)
  {
    v3 = +[RTLearnedVisitMO fetchRequest];
    v4 = MEMORY[0x277CCAC30];
    v5 = [*(a1 + 32) visitIdentifierOrigin];
    v6 = [v4 predicateWithFormat:@"%K == %@", @"identifier", v5];
    [v3 setPredicate:v6];

    [v3 setReturnsObjectsAsFaults:1];
    [v3 setFetchLimit:1];
    v33 = 0;
    v7 = [v3 execute:&v33];
    v8 = v33;
    v2 = [v7 firstObject];

    if (v8)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412802;
        v35 = v10;
        v36 = 2112;
        v37 = v3;
        v38 = 2112;
        v39 = v8;
        _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@, encountered error performing fetch, %@, error, %@", buf, 0x20u);
      }

      goto LABEL_15;
    }

    if (!v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412546;
        v35 = v12;
        v36 = 2112;
        v37 = v3;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, no results returned for fetch of transition origin, %@", buf, 0x16u);
      }
    }
  }

  v3 = [*(a1 + 32) visitIdentifierDestination];

  if (!v3)
  {
    goto LABEL_28;
  }

  v8 = +[RTLearnedVisitMO fetchRequest];
  v13 = MEMORY[0x277CCAC30];
  v14 = [*(a1 + 32) visitIdentifierDestination];
  v15 = [v13 predicateWithFormat:@"%K == %@", @"identifier", v14];
  [v8 setPredicate:v15];

  [v8 setReturnsObjectsAsFaults:1];
  [v8 setFetchLimit:1];
  v32 = 0;
  v16 = [v8 execute:&v32];
  v9 = v32;
  v3 = [v16 firstObject];

  if (v9)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_14:

LABEL_15:
LABEL_29:

      goto LABEL_30;
    }

    v28 = NSStringFromSelector(*(a1 + 64));
    *buf = 138412802;
    v35 = v28;
    v36 = 2112;
    v37 = v8;
    v38 = 2112;
    v39 = v9;
    v29 = "%@, encountered error performing fetch, %@, error, %@";
    v30 = v17;
    v31 = 32;
LABEL_33:
    _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);

    goto LABEL_14;
  }

  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412546;
        v35 = v27;
        v36 = 2112;
        v37 = v8;
        _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, no results returned for fetch of transition destination, %@", buf, 0x16u);
      }
    }

    v3 = 0;
    goto LABEL_28;
  }

  if (!v2)
  {
LABEL_28:
    v8 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    v9 = NSStringFromSelector(*(a1 + 64));
    v17 = [*(a1 + 32) visitIdentifierOrigin];
    v28 = [*(a1 + 32) visitIdentifierDestination];
    *buf = 138413315;
    v35 = v9;
    v36 = 2112;
    v37 = v17;
    v38 = 2117;
    v39 = v2;
    v40 = 2112;
    v41 = v28;
    v42 = 2117;
    v43 = v3;
    v29 = "%@, attempting to create a transition with nonexistent endpoints. origin, identifier, %@, visit, %{sensitive}@, destination, identifier, %@, visit, %{sensitive}@";
    v30 = v8;
    v31 = 52;
    goto LABEL_33;
  }

  v18 = *(a1 + 40);
  v19 = v18;
  if (!v18)
  {
    v19 = [[RTLearnedTransitionMO alloc] initWithContext:*(a1 + 48)];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v19);
  if (!v18)
  {
  }

  v20 = [*(a1 + 32) identifier];
  [*(*(*(a1 + 56) + 8) + 40) setIdentifier:v20];

  v21 = [*(a1 + 32) startDate];
  [*(*(*(a1 + 56) + 8) + 40) setStartDate:v21];

  v22 = [*(a1 + 32) stopDate];
  [*(*(*(a1 + 56) + 8) + 40) setStopDate:v22];

  v23 = [*(a1 + 32) creationDate];
  [*(*(*(a1 + 56) + 8) + 40) setCreationDate:v23];

  v24 = [*(a1 + 32) expirationDate];
  [*(*(*(a1 + 56) + 8) + 40) setExpirationDate:v24];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "predominantMotionActivityType")}];
  [*(*(*(a1 + 56) + 8) + 40) setPredominantMotionActivityType:v25];

  [*(*(*(a1 + 56) + 8) + 40) setOrigin:v2];
  [*(*(*(a1 + 56) + 8) + 40) setDestination:v3];
LABEL_30:
}

@end