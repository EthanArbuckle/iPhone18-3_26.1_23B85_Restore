@interface RTLearnedLocationOfInterestVisitMO
+ (id)fetchRequest;
+ (id)managedObjectWithVisit:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation RTLearnedLocationOfInterestVisitMO

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"RTLearnedLocationOfInterestVisitMO"];

  return v2;
}

+ (id)managedObjectWithVisit:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5
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
    v13 = "Invalid parameter not satisfying: visit";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_7;
  }

  if (v9)
  {
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__71;
    v24 = __Block_byref_object_dispose__71;
    v25 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __98__RTLearnedLocationOfInterestVisitMO_managedObjectWithVisit_managedObject_inManagedObjectContext___block_invoke;
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

void __98__RTLearnedLocationOfInterestVisitMO_managedObjectWithVisit_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [[RTLearnedLocationOfInterestVisitMO alloc] initWithContext:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = MEMORY[0x277CCABB0];
  v5 = [*(a1 + 48) location];
  [v5 confidence];
  v6 = [v4 numberWithDouble:?];
  [*(*(*(a1 + 56) + 8) + 40) setConfidence:v6];

  v7 = MEMORY[0x277CCABB0];
  v8 = [*(a1 + 48) location];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "dataPointCount")}];
  [*(*(*(a1 + 56) + 8) + 40) setDataPointCount:v9];

  v10 = [*(a1 + 48) entryDate];
  [*(*(*(a1 + 56) + 8) + 40) setEntryDate:v10];

  v11 = [*(a1 + 48) exitDate];
  [*(*(*(a1 + 56) + 8) + 40) setExitDate:v11];

  v12 = [*(a1 + 48) identifier];
  [*(*(*(a1 + 56) + 8) + 40) setIdentifier:v12];

  v13 = [*(a1 + 48) creationDate];
  [*(*(*(a1 + 56) + 8) + 40) setCreationDate:v13];

  v14 = [*(a1 + 48) expirationDate];
  [*(*(*(a1 + 56) + 8) + 40) setExpirationDate:v14];

  v15 = MEMORY[0x277CCABB0];
  v16 = [*(a1 + 48) location];
  v17 = [v16 location];
  [v17 latitude];
  v18 = [v15 numberWithDouble:?];
  [*(*(*(a1 + 56) + 8) + 40) setLocationLatitude:v18];

  v19 = MEMORY[0x277CCABB0];
  v20 = [*(a1 + 48) location];
  v21 = [v20 location];
  [v21 longitude];
  v22 = [v19 numberWithDouble:?];
  [*(*(*(a1 + 56) + 8) + 40) setLocationLongitude:v22];

  v23 = MEMORY[0x277CCABB0];
  v24 = [*(a1 + 48) location];
  v25 = [v24 location];
  [v25 horizontalUncertainty];
  v26 = [v23 numberWithDouble:?];
  [*(*(*(a1 + 56) + 8) + 40) setLocationHorizontalUncertainty:v26];

  v27 = MEMORY[0x277CCABB0];
  v28 = [*(a1 + 48) location];
  v29 = [v28 location];
  [v29 altitude];
  v30 = [v27 numberWithDouble:?];
  [*(*(*(a1 + 56) + 8) + 40) setLocationAltitude:v30];

  v31 = MEMORY[0x277CCABB0];
  v32 = [*(a1 + 48) location];
  v33 = [v32 location];
  [v33 verticalUncertainty];
  v34 = [v31 numberWithDouble:?];
  [*(*(*(a1 + 56) + 8) + 40) setLocationVerticalUncertainty:v34];

  v35 = MEMORY[0x277CCABB0];
  v36 = [*(a1 + 48) location];
  v37 = [v36 location];
  v38 = [v35 numberWithUnsignedInteger:{objc_msgSend(v37, "sourceAccuracy")}];
  [*(*(*(a1 + 56) + 8) + 40) setLocationSourceAccuracy:v38];

  v39 = MEMORY[0x277CCABB0];
  v40 = [*(a1 + 48) location];
  v41 = [v40 location];
  v42 = [v39 numberWithUnsignedInt:{objc_msgSend(v41, "referenceFrame")}];
  [*(*(*(a1 + 56) + 8) + 40) setLocationReferenceFrame:v42];

  v43 = MEMORY[0x277CCABB0];
  [*(a1 + 48) placeConfidence];
  v44 = [v43 numberWithDouble:?];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfInterestConfidence:v44];

  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "placeSource")}];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfInterestSource:v45];
}

@end