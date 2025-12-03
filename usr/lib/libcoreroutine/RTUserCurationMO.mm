@interface RTUserCurationMO
+ (id)managedObjectWithUserCuration:(id)curation managedObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation RTUserCurationMO

+ (id)managedObjectWithUserCuration:(id)curation managedObject:(id)object inManagedObjectContext:(id)context
{
  curationCopy = curation;
  objectCopy = object;
  contextCopy = context;
  v12 = contextCopy;
  if (!curationCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      goto LABEL_12;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: userCuration";
LABEL_18:
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    goto LABEL_11;
  }

  if (!contextCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: managedObjectContext";
    goto LABEL_18;
  }

  managedObjectContext = [objectCopy managedObjectContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_7:
    *buf = 0;
    v28 = buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__75;
    v31 = __Block_byref_object_dispose__75;
    v32 = 0;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __87__RTUserCurationMO_managedObjectWithUserCuration_managedObject_inManagedObjectContext___block_invoke;
    v20[3] = &unk_2788CAC20;
    v24 = buf;
    v21 = objectCopy;
    v22 = v12;
    v23 = curationCopy;
    selfCopy = self;
    v26 = a2;
    [v22 performBlockAndWait:v20];
    v16 = *(v28 + 5);

    _Block_object_dispose(buf, 8);
    goto LABEL_13;
  }

  managedObjectContext2 = [objectCopy managedObjectContext];
  if (([managedObjectContext2 allowTombstones] & 1) != 0 || (objc_msgSend(objectCopy, "flags") & 1) == 0)
  {

    goto LABEL_7;
  }

LABEL_12:
  v16 = 0;
LABEL_13:

  return v16;
}

void __87__RTUserCurationMO_managedObjectWithUserCuration_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [[RTUserCurationMO alloc] initWithContext:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = [*(a1 + 48) identifier];
  [*(*(*(a1 + 56) + 8) + 40) setIdentifier:v4];

  v5 = [*(a1 + 48) expirationDate];
  [*(*(*(a1 + 56) + 8) + 40) setExpirationDate:v5];

  v6 = [*(a1 + 48) submissionDate];
  [*(*(*(a1 + 56) + 8) + 40) setSubmissionDate:v6];

  v7 = [*(a1 + 48) visitEntryDate];
  [*(*(*(a1 + 56) + 8) + 40) setVisitEntryDate:v7];

  v8 = [*(a1 + 48) visitExitDate];
  [*(*(*(a1 + 56) + 8) + 40) setVisitExitDate:v8];

  v9 = [*(a1 + 48) visitIdentifier];
  [*(*(*(a1 + 56) + 8) + 40) setVisitIdentifier:v9];

  v10 = MEMORY[0x277CCAC30];
  v11 = [*(a1 + 40) currentDevice];
  v12 = [v11 identifier];
  v13 = [v10 predicateWithFormat:@"%K.%K == %@", @"device", @"identifier", v12];

  v14 = [*(a1 + 48) originalLabel];

  if (v14)
  {
    v15 = [*(a1 + 48) originalLabel];
    v16 = [RTMapItemMO fetchManagedObjectsForMapItem:v15 predicate:v13 inManagedObjectContext:*(a1 + 40)];

    if (v16 && [v16 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v34 = NSStringFromClass(*(a1 + 64));
          v35 = NSStringFromSelector(*(a1 + 72));
          v36 = [*(a1 + 48) originalLabel];
          v37 = [v16 firstObject];
          *buf = 138413058;
          v43 = v34;
          v44 = 2112;
          v45 = v35;
          v46 = 2112;
          v47 = v36;
          v48 = 2112;
          v49 = v37;
          _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "%@ %@, found an existing map item for original label, %@, map item, %@", buf, 0x2Au);
        }
      }

      v18 = [v16 firstObject];
      [*(*(*(a1 + 56) + 8) + 40) setOriginalLabel:v18];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v28 = NSStringFromClass(*(a1 + 64));
          v29 = NSStringFromSelector(*(a1 + 72));
          v30 = [*(a1 + 48) originalLabel];
          *buf = 138412802;
          v43 = v28;
          v44 = 2112;
          v45 = v29;
          v46 = 2112;
          v47 = v30;
          _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "%@ %@, no existing map item found, creating one for original label, %@", buf, 0x20u);
        }
      }

      v18 = [*(a1 + 48) originalLabel];
      v20 = [RTMapItemMO managedObjectWithMapItem:v18 inManagedObjectContext:*(a1 + 40)];
      [*(*(*(a1 + 56) + 8) + 40) setOriginalLabel:v20];
    }

    [*(a1 + 40) save:0];
  }

  v21 = [*(a1 + 48) curatedLabel];

  if (v21)
  {
    v22 = [*(a1 + 48) curatedLabel];
    v23 = [RTMapItemMO fetchManagedObjectsForMapItem:v22 predicate:v13 inManagedObjectContext:*(a1 + 40)];

    if (v23 && [v23 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v24 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v38 = NSStringFromClass(*(a1 + 64));
          v39 = NSStringFromSelector(*(a1 + 72));
          v40 = [*(a1 + 48) curatedLabel];
          v41 = [v23 firstObject];
          *buf = 138413058;
          v43 = v38;
          v44 = 2112;
          v45 = v39;
          v46 = 2112;
          v47 = v40;
          v48 = 2112;
          v49 = v41;
          _os_log_debug_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEBUG, "%@ %@, found an existing map item for curated label, %@, map item, %@", buf, 0x2Au);
        }
      }

      v25 = [v23 firstObject];
      [*(*(*(a1 + 56) + 8) + 40) setCuratedLabel:v25];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v26 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v31 = NSStringFromClass(*(a1 + 64));
          v32 = NSStringFromSelector(*(a1 + 72));
          v33 = [*(a1 + 48) curatedLabel];
          *buf = 138412802;
          v43 = v31;
          v44 = 2112;
          v45 = v32;
          v46 = 2112;
          v47 = v33;
          _os_log_debug_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEBUG, "%@ %@, no existing map item found, creating one for curated label, %@", buf, 0x20u);
        }
      }

      v25 = [*(a1 + 48) curatedLabel];
      v27 = [RTMapItemMO managedObjectWithMapItem:v25 inManagedObjectContext:*(a1 + 40)];
      [*(*(*(a1 + 56) + 8) + 40) setCuratedLabel:v27];
    }

    [*(a1 + 40) save:0];
  }
}

@end