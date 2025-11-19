@interface RTLearnedPlaceMO
+ (id)fetchRequest;
+ (id)fetchRequestSortedByCreation;
+ (id)managedObjectWithPlace:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5;
- (void)didSave;
@end

@implementation RTLearnedPlaceMO

+ (id)fetchRequestSortedByCreation
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 fetchRequest];
  v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"creationDate" ascending:1];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 setSortDescriptors:v4];

  return v2;
}

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"RTLearnedPlaceMO"];

  return v2;
}

+ (id)managedObjectWithPlace:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: place";
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_16;
  }

  v10 = [v7 mapItem];

  if (!v10)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: place.mapItem";
    goto LABEL_15;
  }

  if (!v9)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: managedObjectContext";
    goto LABEL_15;
  }

  v11 = [v8 managedObjectContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_8:
    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__177;
    v26 = __Block_byref_object_dispose__177;
    v27 = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __80__RTLearnedPlaceMO_managedObjectWithPlace_managedObject_inManagedObjectContext___block_invoke;
    v17[3] = &unk_2788C5DA0;
    v21 = buf;
    v18 = v8;
    v19 = v9;
    v20 = v7;
    [v19 performBlockAndWait:v17];
    v14 = *(v23 + 5);

    _Block_object_dispose(buf, 8);
    goto LABEL_17;
  }

  v13 = [v8 managedObjectContext];
  if ((-[NSObject allowTombstones](v13, "allowTombstones") & 1) != 0 || ([v8 flags] & 1) == 0)
  {

    goto LABEL_8;
  }

LABEL_16:

  v14 = 0;
LABEL_17:

  return v14;
}

void __80__RTLearnedPlaceMO_managedObjectWithPlace_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [[RTLearnedPlaceMO alloc] initWithContext:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = [*(a1 + 48) customLabel];
  [*(*(*(a1 + 56) + 8) + 40) setCustomLabel:v4];

  v5 = [*(a1 + 48) identifier];
  [*(*(*(a1 + 56) + 8) + 40) setIdentifier:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "type")}];
  [*(*(*(a1 + 56) + 8) + 40) setType:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "typeSource")}];
  [*(*(*(a1 + 56) + 8) + 40) setTypeSource:v7];

  v8 = [*(a1 + 48) creationDate];
  [*(*(*(a1 + 56) + 8) + 40) setCreationDate:v8];

  v9 = [*(a1 + 48) expirationDate];
  [*(*(*(a1 + 56) + 8) + 40) setExpirationDate:v9];

  v10 = +[RTMapItemMO fetchRequest];
  v11 = MEMORY[0x277CCAC30];
  v12 = [*(a1 + 48) mapItem];
  v13 = [v12 identifier];
  v14 = [v11 predicateWithFormat:@"%K == %@", @"identifier", v13];
  [v10 setPredicate:v14];

  v15 = *(a1 + 40);
  v21 = 0;
  v16 = [v15 executeFetchRequest:v10 error:&v21];
  v17 = v21;
  v18 = [*(a1 + 48) mapItem];
  v19 = [v16 firstObject];
  v20 = [RTMapItemMO managedObjectWithMapItem:v18 managedObject:v19 inManagedObjectContext:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setMapItem:v20];
}

- (void)didSave
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = [(RTLearnedPlaceMO *)self managedObjectContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(RTLearnedPlaceMO *)self managedObjectContext];
    v7 = [v6 options];

    v8 = v7 & 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(RTLearnedPlaceMO *)self managedObjectContext];
  v10 = [v9 transactionAuthor];
  if ([v10 hasPrefix:@"NSCloudKitMirroringDelegate"])
  {
    goto LABEL_7;
  }

  v11 = [(RTLearnedPlaceMO *)self managedObjectContext];
  v12 = [v11 transactionAuthor];
  if (([v12 hasPrefix:@"RTPersistenceStoreImporter"] | v8))
  {

LABEL_7:
    goto LABEL_8;
  }

  v13 = [(RTLearnedPlaceMO *)self mapItem];

  if (v13)
  {
    goto LABEL_9;
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = [(RTCloudManagedObject *)self identifier];
  v16 = [(RTLearnedPlaceMO *)self managedObjectContext];
  v17 = [v16 transactionAuthor];
  v9 = [v14 stringWithFormat:@"map item is nil for place with identifier, %@, transactionAuthor, %@", v15, v17];

  v18 = _rt_log_facility_get_os_log(RTLogFacilityLearnedLocation);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v32 = v9;
    _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
  }

  v19 = MEMORY[0x277CCACA8];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = NSStringFromSelector(a2);
  v23 = [v19 stringWithFormat:@"%@.%@.detectedNilMapItem", v21, v22];

  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"This device detected an unexpected state in the learned location graph of CoreRoutine. Please file a radar to help diagnose the issue."];
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", v23, v9];
  v26 = MEMORY[0x277CCACA8];
  v27 = [MEMORY[0x277CBEAA8] date];
  v28 = [v27 stringFromDate];
  v29 = [v26 stringWithFormat:@"issue detected at %@", v28];

  [RTRadarUtilities promptUserToCreateRadarForAssertionIdentifier:v23 alertMessage:v24 radarTitle:v25 radarDescription:v29 handler:0];
LABEL_8:

LABEL_9:
  v30.receiver = self;
  v30.super_class = RTLearnedPlaceMO;
  [(RTLearnedPlaceMO *)&v30 didSave];
}

@end