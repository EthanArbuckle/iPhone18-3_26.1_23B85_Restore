@interface RTLearnedLocationOfInterestMO
+ (id)fetchRequest;
+ (id)fetchRequestSortedByCreation;
+ (id)managedObjectWithLocationOfInterest:(id)interest managedObject:(id)object inManagedObjectContext:(id)context;
- (id)mapItem;
- (void)setMapItem:(id)item;
- (void)updateWithLearnedLocation:(id)location;
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
  fetchRequest = [self fetchRequest];
  v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"placeCreationDate" ascending:1];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [fetchRequest setSortDescriptors:v4];

  return fetchRequest;
}

- (id)mapItem
{
  [(RTLearnedLocationOfInterestMO *)self willAccessValueForKey:@"mapItem"];
  cachedMapItem = [(RTLearnedLocationOfInterestMO *)self cachedMapItem];

  if (!cachedMapItem)
  {
    placeMapItemIdentifier = [(RTLearnedLocationOfInterestMO *)self placeMapItemIdentifier];
    v8 = 0;
    v5 = [RTMapItemMO mapItemForIdentifier:placeMapItemIdentifier error:&v8];
    [(RTLearnedLocationOfInterestMO *)self setCachedMapItem:v5];
  }

  [(RTLearnedLocationOfInterestMO *)self didAccessValueForKey:@"mapItem"];
  cachedMapItem2 = [(RTLearnedLocationOfInterestMO *)self cachedMapItem];

  return cachedMapItem2;
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
  [(RTLearnedLocationOfInterestMO *)self willChangeValueForKey:@"mapItem"];
  identifier = [itemCopy identifier];

  [(RTLearnedLocationOfInterestMO *)self setPlaceMapItemIdentifier:identifier];
  [(RTLearnedLocationOfInterestMO *)self setCachedMapItem:0];

  [(RTLearnedLocationOfInterestMO *)self didChangeValueForKey:@"mapItem"];
}

+ (id)managedObjectWithLocationOfInterest:(id)interest managedObject:(id)object inManagedObjectContext:(id)context
{
  v89 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  objectCopy = object;
  contextCopy = context;
  v58 = contextCopy;
  v59 = interestCopy;
  if (!interestCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationOfInterest", buf, 2u);
    }

    goto LABEL_11;
  }

  v9 = contextCopy;
  if (!contextCopy)
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
  v61 = interestCopy;
  v77 = v61;
  v80 = buf;
  v78 = v9;
  v10 = objectCopy;
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

    location = [v61 location];
    [(RTLearnedLocationOfInterestMO *)v64 updateWithLearnedLocation:location];

    identifier = [v61 identifier];
    [(RTLearnedLocationOfInterestMO *)v64 setIdentifier:identifier];

    place = [v61 place];
    customLabel = [place customLabel];
    [(RTLearnedLocationOfInterestMO *)v64 setPlaceCustomLabel:customLabel];

    place2 = [v61 place];
    identifier2 = [place2 identifier];
    [(RTLearnedLocationOfInterestMO *)v64 setPlaceIdentifier:identifier2];

    v18 = MEMORY[0x277CCABB0];
    place3 = [v61 place];
    v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(place3, "type")}];
    [(RTLearnedLocationOfInterestMO *)v64 setPlaceType:v20];

    v21 = MEMORY[0x277CCABB0];
    place4 = [v61 place];
    v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(place4, "typeSource")}];
    [(RTLearnedLocationOfInterestMO *)v64 setPlaceTypeSource:v23];

    place5 = [v61 place];
    mapItem = [place5 mapItem];
    identifier3 = [mapItem identifier];
    [(RTLearnedLocationOfInterestMO *)v64 setPlaceMapItemIdentifier:identifier3];

    place6 = [v61 place];
    creationDate = [place6 creationDate];
    [(RTLearnedLocationOfInterestMO *)v64 setPlaceCreationDate:creationDate];

    place7 = [v61 place];
    expirationDate = [place7 expirationDate];
    [(RTLearnedLocationOfInterestMO *)v64 setPlaceExpirationDate:expirationDate];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    visits = [v61 visits];
    v32 = [visits countByEnumeratingWithState:&v72 objects:v88 count:16];
    if (v32)
    {
      v33 = *v73;
      obj = visits;
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
          identifier4 = [v35 identifier];
          v39 = [v37 predicateWithFormat:@"%K == %@", @"identifier", identifier4, v58];
          [v36 setPredicate:v39];

          v71 = 0;
          v40 = [v65 executeFetchRequest:v36 error:&v71];
          v41 = v71;
          firstObject = [v40 firstObject];
          v43 = [RTLearnedLocationOfInterestVisitMO managedObjectWithVisit:v35 managedObject:firstObject inManagedObjectContext:v65];

          if (v43)
          {
            [(RTLearnedLocationOfInterestMO *)v64 addVisitsObject:v43];
          }
        }

        visits = obj;
        v32 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
      }

      while (v32);
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    transitions = [v61 transitions];
    v45 = [transitions countByEnumeratingWithState:&v67 objects:v87 count:16];
    if (v45)
    {
      v46 = *v68;
      obja = transitions;
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
          identifier5 = [v48 identifier];
          v52 = [v50 predicateWithFormat:@"%K == %@", @"identifier", identifier5];
          [v49 setPredicate:v52];

          v66 = 0;
          v53 = [v65 executeFetchRequest:v49 error:&v66];
          v54 = v66;
          firstObject2 = [v53 firstObject];
          v56 = [RTLearnedLocationOfInterestTransitionMO managedObjectWithTransition:v48 managedObject:firstObject2 inManagedObjectContext:v65];

          if (v56)
          {
            [(RTLearnedLocationOfInterestMO *)v64 addTransitionsObject:v56];
          }
        }

        transitions = obja;
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

- (void)updateWithLearnedLocation:(id)location
{
  if (location)
  {
    v4 = MEMORY[0x277CCABB0];
    locationCopy = location;
    [locationCopy confidence];
    v6 = [v4 numberWithDouble:?];
    [(RTLearnedLocationOfInterestMO *)self setConfidence:v6];

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(locationCopy, "dataPointCount")}];
    [(RTLearnedLocationOfInterestMO *)self setDataPointCount:v7];

    v8 = MEMORY[0x277CCABB0];
    location = [locationCopy location];
    [location latitude];
    v10 = [v8 numberWithDouble:?];
    [(RTLearnedLocationOfInterestMO *)self setLocationLatitude:v10];

    v11 = MEMORY[0x277CCABB0];
    location2 = [locationCopy location];
    [location2 longitude];
    v13 = [v11 numberWithDouble:?];
    [(RTLearnedLocationOfInterestMO *)self setLocationLongitude:v13];

    v14 = MEMORY[0x277CCABB0];
    location3 = [locationCopy location];
    [location3 horizontalUncertainty];
    v16 = [v14 numberWithDouble:?];
    [(RTLearnedLocationOfInterestMO *)self setLocationHorizontalUncertainty:v16];

    v17 = MEMORY[0x277CCABB0];
    location4 = [locationCopy location];
    [location4 altitude];
    v19 = [v17 numberWithDouble:?];
    [(RTLearnedLocationOfInterestMO *)self setLocationAltitude:v19];

    v20 = MEMORY[0x277CCABB0];
    location5 = [locationCopy location];
    [location5 verticalUncertainty];
    v22 = [v20 numberWithDouble:?];
    [(RTLearnedLocationOfInterestMO *)self setLocationVerticalUncertainty:v22];

    v23 = MEMORY[0x277CCABB0];
    location6 = [locationCopy location];
    v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(location6, "sourceAccuracy")}];
    [(RTLearnedLocationOfInterestMO *)self setLocationSourceAccuracy:v25];

    v26 = MEMORY[0x277CCABB0];
    location7 = [locationCopy location];

    v27 = [v26 numberWithUnsignedInt:{objc_msgSend(location7, "referenceFrame")}];
    [(RTLearnedLocationOfInterestMO *)self setLocationReferenceFrame:v27];
  }
}

@end