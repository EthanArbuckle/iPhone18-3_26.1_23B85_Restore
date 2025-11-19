@interface RTLearnedLocationOfInterestMO
+ (id)fetchRequest;
+ (id)fetchRequestSortedByCreation;
+ (id)managedObjectWithLocationOfInterest:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5;
- (id)mapItem;
- (void)setMapItem:(id)a3;
- (void)updateWithLearnedLocation:(id)a3;
@end

@implementation RTLearnedLocationOfInterestMO

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"RTLearnedLocationOfInterestMO"];

  return v2;
}

+ (id)fetchRequestSortedByCreation
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 fetchRequest];
  v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"placeCreationDate" ascending:1];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 setSortDescriptors:v4];

  return v2;
}

- (id)mapItem
{
  [(RTLearnedLocationOfInterestMO *)self willAccessValueForKey:@"mapItem"];
  v3 = [(RTLearnedLocationOfInterestMO *)self cachedMapItem];

  if (!v3)
  {
    v4 = [(RTLearnedLocationOfInterestMO *)self placeMapItemIdentifier];
    v8 = 0;
    v5 = [RTMapItemMO mapItemForIdentifier:v4 error:&v8];
    [(RTLearnedLocationOfInterestMO *)self setCachedMapItem:v5];
  }

  [(RTLearnedLocationOfInterestMO *)self didAccessValueForKey:@"mapItem"];
  v6 = [(RTLearnedLocationOfInterestMO *)self cachedMapItem];

  return v6;
}

- (void)setMapItem:(id)a3
{
  v4 = a3;
  [(RTLearnedLocationOfInterestMO *)self willChangeValueForKey:@"mapItem"];
  v5 = [v4 identifier];

  [(RTLearnedLocationOfInterestMO *)self setPlaceMapItemIdentifier:v5];
  [(RTLearnedLocationOfInterestMO *)self setCachedMapItem:0];

  [(RTLearnedLocationOfInterestMO *)self didChangeValueForKey:@"mapItem"];
}

+ (id)managedObjectWithLocationOfInterest:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5
{
  v89 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v60 = a4;
  v8 = a5;
  v58 = v8;
  v59 = v7;
  if (!v7)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationOfInterest", buf, 2u);
    }

    goto LABEL_11;
  }

  v9 = v8;
  if (!v8)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectContext", buf, 2u);
    }

LABEL_11:

    v64 = 0;
    goto LABEL_34;
  }

  *buf = 0;
  v82 = buf;
  v83 = 0x3032000000;
  v84 = __Block_byref_object_copy__93;
  v85 = __Block_byref_object_dispose__93;
  v86 = 0;
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __106__RTLearnedLocationOfInterestMO_managedObjectWithLocationOfInterest_managedObject_inManagedObjectContext___block_invoke;
  v76[3] = &unk_2788CC7A8;
  v61 = v7;
  v77 = v61;
  v80 = buf;
  v78 = v9;
  v10 = v60;
  v79 = v10;
  v65 = v78;
  [v78 performBlockAndWait:v76];
  if ([*(v82 + 5) count])
  {
    if (v10)
    {
      v64 = v10;
    }

    else
    {
      v64 = [[RTLearnedLocationOfInterestMO alloc] initWithContext:v65];
    }

    v12 = [v61 location];
    [(RTLearnedLocationOfInterestMO *)v64 updateWithLearnedLocation:v12];

    v13 = [v61 identifier];
    [(RTLearnedLocationOfInterestMO *)v64 setIdentifier:v13];

    v14 = [v61 place];
    v15 = [v14 customLabel];
    [(RTLearnedLocationOfInterestMO *)v64 setPlaceCustomLabel:v15];

    v16 = [v61 place];
    v17 = [v16 identifier];
    [(RTLearnedLocationOfInterestMO *)v64 setPlaceIdentifier:v17];

    v18 = MEMORY[0x277CCABB0];
    v19 = [v61 place];
    v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v19, "type")}];
    [(RTLearnedLocationOfInterestMO *)v64 setPlaceType:v20];

    v21 = MEMORY[0x277CCABB0];
    v22 = [v61 place];
    v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "typeSource")}];
    [(RTLearnedLocationOfInterestMO *)v64 setPlaceTypeSource:v23];

    v24 = [v61 place];
    v25 = [v24 mapItem];
    v26 = [v25 identifier];
    [(RTLearnedLocationOfInterestMO *)v64 setPlaceMapItemIdentifier:v26];

    v27 = [v61 place];
    v28 = [v27 creationDate];
    [(RTLearnedLocationOfInterestMO *)v64 setPlaceCreationDate:v28];

    v29 = [v61 place];
    v30 = [v29 expirationDate];
    [(RTLearnedLocationOfInterestMO *)v64 setPlaceExpirationDate:v30];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v31 = [v61 visits];
    v32 = [v31 countByEnumeratingWithState:&v72 objects:v88 count:16];
    if (v32)
    {
      v33 = *v73;
      obj = v31;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v73 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v72 + 1) + 8 * i);
          v36 = +[RTLearnedLocationOfInterestVisitMO fetchRequest];
          v37 = MEMORY[0x277CCAC30];
          v38 = [v35 identifier];
          v39 = [v37 predicateWithFormat:@"%K == %@", @"identifier", v38, v58];
          [v36 setPredicate:v39];

          v71 = 0;
          v40 = [v65 executeFetchRequest:v36 error:&v71];
          v41 = v71;
          v42 = [v40 firstObject];
          v43 = [RTLearnedLocationOfInterestVisitMO managedObjectWithVisit:v35 managedObject:v42 inManagedObjectContext:v65];

          if (v43)
          {
            [(RTLearnedLocationOfInterestMO *)v64 addVisitsObject:v43];
          }
        }

        v31 = obj;
        v32 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
      }

      while (v32);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v44 = [v61 transitions];
    v45 = [v44 countByEnumeratingWithState:&v67 objects:v87 count:16];
    if (v45)
    {
      v46 = *v68;
      obja = v44;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v68 != v46)
          {
            objc_enumerationMutation(obja);
          }

          v48 = *(*(&v67 + 1) + 8 * j);
          v49 = +[RTLearnedLocationOfInterestTransitionMO fetchRequest];
          v50 = MEMORY[0x277CCAC30];
          v51 = [v48 identifier];
          v52 = [v50 predicateWithFormat:@"%K == %@", @"identifier", v51];
          [v49 setPredicate:v52];

          v66 = 0;
          v53 = [v65 executeFetchRequest:v49 error:&v66];
          v54 = v66;
          v55 = [v53 firstObject];
          v56 = [RTLearnedLocationOfInterestTransitionMO managedObjectWithTransition:v48 managedObject:v55 inManagedObjectContext:v65];

          if (v56)
          {
            [(RTLearnedLocationOfInterestMO *)v64 addTransitionsObject:v56];
          }
        }

        v44 = obja;
        v45 = [obja countByEnumeratingWithState:&v67 objects:v87 count:16];
      }

      while (v45);
    }
  }

  else
  {
    v64 = 0;
  }

  _Block_object_dispose(buf, 8);
LABEL_34:

  return v64;
}

void __106__RTLearnedLocationOfInterestMO_managedObjectWithLocationOfInterest_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = +[RTMapItemMO fetchRequest];
  v3 = MEMORY[0x277CCAC30];
  v4 = [*(a1 + 32) place];
  v5 = [v4 mapItem];
  v6 = [v5 identifier];
  v7 = [v3 predicateWithFormat:@"%K == %@", @"identifier", v6];
  [v2 setPredicate:v7];

  v8 = *(a1 + 40);
  v15 = 0;
  v9 = [v8 executeFetchRequest:v2 error:&v15];
  v10 = v15;
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;

  if (![*(*(*(a1 + 56) + 8) + 40) count])
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = @"update";
      if (!*(a1 + 48))
      {
        v14 = @"create";
      }

      *buf = 138412802;
      v17 = v14;
      v18 = 2080;
      v19 = "+[RTLearnedLocationOfInterestMO managedObjectWithLocationOfInterest:managedObject:inManagedObjectContext:]_block_invoke";
      v20 = 1024;
      v21 = 56;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "attempting to %@ a learnedLocationOfInterest without a backing mapItem (in %s:%d)", buf, 0x1Cu);
    }
  }
}

- (void)updateWithLearnedLocation:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = a3;
    [v5 confidence];
    v6 = [v4 numberWithDouble:?];
    [(RTLearnedLocationOfInterestMO *)self setConfidence:v6];

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "dataPointCount")}];
    [(RTLearnedLocationOfInterestMO *)self setDataPointCount:v7];

    v8 = MEMORY[0x277CCABB0];
    v9 = [v5 location];
    [v9 latitude];
    v10 = [v8 numberWithDouble:?];
    [(RTLearnedLocationOfInterestMO *)self setLocationLatitude:v10];

    v11 = MEMORY[0x277CCABB0];
    v12 = [v5 location];
    [v12 longitude];
    v13 = [v11 numberWithDouble:?];
    [(RTLearnedLocationOfInterestMO *)self setLocationLongitude:v13];

    v14 = MEMORY[0x277CCABB0];
    v15 = [v5 location];
    [v15 horizontalUncertainty];
    v16 = [v14 numberWithDouble:?];
    [(RTLearnedLocationOfInterestMO *)self setLocationHorizontalUncertainty:v16];

    v17 = MEMORY[0x277CCABB0];
    v18 = [v5 location];
    [v18 altitude];
    v19 = [v17 numberWithDouble:?];
    [(RTLearnedLocationOfInterestMO *)self setLocationAltitude:v19];

    v20 = MEMORY[0x277CCABB0];
    v21 = [v5 location];
    [v21 verticalUncertainty];
    v22 = [v20 numberWithDouble:?];
    [(RTLearnedLocationOfInterestMO *)self setLocationVerticalUncertainty:v22];

    v23 = MEMORY[0x277CCABB0];
    v24 = [v5 location];
    v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v24, "sourceAccuracy")}];
    [(RTLearnedLocationOfInterestMO *)self setLocationSourceAccuracy:v25];

    v26 = MEMORY[0x277CCABB0];
    v28 = [v5 location];

    v27 = [v26 numberWithUnsignedInt:{objc_msgSend(v28, "referenceFrame")}];
    [(RTLearnedLocationOfInterestMO *)self setLocationReferenceFrame:v27];
  }
}

@end