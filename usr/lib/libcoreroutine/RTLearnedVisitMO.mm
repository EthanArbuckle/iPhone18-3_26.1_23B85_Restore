@interface RTLearnedVisitMO
+ (id)fetchRequest;
+ (id)managedObjectWithVisit:(id)visit finerGranularityInferredMapItem:(id)item place:(id)place inManagedObjectContext:(id)context;
+ (id)managedObjectWithVisit:(id)visit finerGranularityInferredMapItem:(id)item place:(id)place managedObject:(id)object inManagedObjectContext:(id)context;
+ (id)managedObjectWithVisit:(id)visit place:(id)place inManagedObjectContext:(id)context;
- (BOOL)intersectsWithVisit:(id)visit distanceCalculator:(id)calculator;
- (BOOL)overlapsWithVisit:(id)visit;
- (NSDateInterval)interval;
- (NSNumber)locationHorizontalUncertainty;
- (id)finerGranularityInferredMapItem;
- (id)finerGranularityMapItem;
- (void)setFinerGranularityMapItem:(id)item;
- (void)setLocationHorizontalUncertainty:(id)uncertainty;
@end

@implementation RTLearnedVisitMO

+ (id)fetchRequest
{
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"RTLearnedVisitMO"];

  return v2;
}

- (NSNumber)locationHorizontalUncertainty
{
  [(RTLearnedVisitMO *)self willAccessValueForKey:@"locationUncertainty"];
  v3 = [(RTLearnedVisitMO *)self primitiveValueForKey:@"locationUncertainty"];
  [(RTLearnedVisitMO *)self didAccessValueForKey:@"locationUncertainty"];

  return v3;
}

- (void)setLocationHorizontalUncertainty:(id)uncertainty
{
  uncertaintyCopy = uncertainty;
  locationUncertainty = [(RTLearnedVisitMO *)self locationUncertainty];
  v5 = [uncertaintyCopy isEqual:locationUncertainty];

  if ((v5 & 1) == 0)
  {
    [(RTCloudManagedObject *)self willChangeValueForKey:@"locationUncertainty"];
    [(RTLearnedVisitMO *)self setPrimitiveValue:uncertaintyCopy forKey:@"locationUncertainty"];
    [(RTLearnedVisitMO *)self didChangeValueForKey:@"locationUncertainty"];
  }
}

- (id)finerGranularityMapItem
{
  v20 = *MEMORY[0x277D85DE8];
  [(RTLearnedVisitMO *)self willAccessValueForKey:@"finerGranularityMapItem"];
  cachedFinerGranularityMapItem = [(RTLearnedVisitMO *)self cachedFinerGranularityMapItem];

  if (!cachedFinerGranularityMapItem)
  {
    finerGranularityMapItemIdentifier = [(RTLearnedVisitMO *)self finerGranularityMapItemIdentifier];
    v13 = 0;
    v6 = [RTMapItemMO mapItemForIdentifier:finerGranularityMapItemIdentifier error:&v13];
    v7 = v13;
    [(RTLearnedVisitMO *)self setCachedFinerGranularityMapItem:v6];

    if (v7)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        finerGranularityMapItemIdentifier2 = [(RTLearnedVisitMO *)self finerGranularityMapItemIdentifier];
        *buf = 138412802;
        v15 = v11;
        v16 = 2112;
        v17 = v7;
        v18 = 2112;
        v19 = finerGranularityMapItemIdentifier2;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@, Error fulfilling transient property finerGranularityMapItemIdentifier, %@, map item identifier, %@", buf, 0x20u);
      }
    }
  }

  [(RTLearnedVisitMO *)self didAccessValueForKey:@"finerGranularityMapItem"];
  cachedFinerGranularityMapItem2 = [(RTLearnedVisitMO *)self cachedFinerGranularityMapItem];

  return cachedFinerGranularityMapItem2;
}

- (void)setFinerGranularityMapItem:(id)item
{
  itemCopy = item;
  [(RTCloudManagedObject *)self willChangeValueForKey:@"finerGranularityMapItem"];
  identifier = [itemCopy identifier];
  [(RTLearnedVisitMO *)self setFinerGranularityMapItemIdentifier:identifier];

  [(RTLearnedVisitMO *)self setCachedFinerGranularityMapItem:itemCopy];

  [(RTLearnedVisitMO *)self didChangeValueForKey:@"finerGranularityMapItem"];
}

- (BOOL)intersectsWithVisit:(id)visit distanceCalculator:(id)calculator
{
  visitCopy = visit;
  calculatorCopy = calculator;
  if (visitCopy == self)
  {
    v47 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = visitCopy;
      v54 = objc_alloc(MEMORY[0x277D01160]);
      locationLatitude = [(RTLearnedVisitMO *)self locationLatitude];
      [locationLatitude doubleValue];
      v10 = v9;
      locationLongitude = [(RTLearnedVisitMO *)self locationLongitude];
      [locationLongitude doubleValue];
      v12 = v11;
      locationHorizontalUncertainty = [(RTLearnedVisitMO *)self locationHorizontalUncertainty];
      [locationHorizontalUncertainty doubleValue];
      v15 = v14;
      locationAltitude = [(RTLearnedVisitMO *)self locationAltitude];
      [locationAltitude doubleValue];
      v18 = v17;
      locationVerticalUncertainty = [(RTLearnedVisitMO *)self locationVerticalUncertainty];
      [locationVerticalUncertainty doubleValue];
      v21 = v20;
      [(RTLearnedVisitMO *)self entryDate];
      v22 = v56 = calculatorCopy;
      locationReferenceFrame = [(RTLearnedVisitMO *)self locationReferenceFrame];
      [locationReferenceFrame doubleValue];
      v25 = v24;
      locationSourceAccuracy = [(RTLearnedVisitMO *)self locationSourceAccuracy];
      v55 = [v54 initWithLatitude:v22 longitude:v25 horizontalUncertainty:objc_msgSend(locationSourceAccuracy altitude:"intValue") verticalUncertainty:v10 date:v12 referenceFrame:v15 speed:v18 sourceAccuracy:{v21, 0.0}];

      v49 = objc_alloc(MEMORY[0x277D01160]);
      locationLatitude2 = [(RTLearnedVisitMO *)v8 locationLatitude];
      [locationLatitude2 doubleValue];
      v28 = v27;
      locationLongitude2 = [(RTLearnedVisitMO *)v8 locationLongitude];
      [locationLongitude2 doubleValue];
      v30 = v29;
      locationHorizontalUncertainty2 = [(RTLearnedVisitMO *)v8 locationHorizontalUncertainty];
      [locationHorizontalUncertainty2 doubleValue];
      v33 = v32;
      locationAltitude2 = [(RTLearnedVisitMO *)v8 locationAltitude];
      [locationAltitude2 doubleValue];
      v36 = v35;
      locationVerticalUncertainty2 = [(RTLearnedVisitMO *)v8 locationVerticalUncertainty];
      [locationVerticalUncertainty2 doubleValue];
      v39 = v38;
      entryDate = [(RTLearnedVisitMO *)v8 entryDate];
      locationReferenceFrame2 = [(RTLearnedVisitMO *)v8 locationReferenceFrame];
      [locationReferenceFrame2 doubleValue];
      v43 = v42;
      locationSourceAccuracy2 = [(RTLearnedVisitMO *)v8 locationSourceAccuracy];
      v45 = [v49 initWithLatitude:entryDate longitude:v43 horizontalUncertainty:objc_msgSend(locationSourceAccuracy2 altitude:"intValue") verticalUncertainty:v28 date:v30 referenceFrame:v33 speed:v36 sourceAccuracy:{v39, 0.0}];

      calculatorCopy = v56;
      v57 = 0;
      [v56 distanceFromLocation:v55 toLocation:v45 error:&v57];
      v47 = 0;
      if (!v57 && v46 <= 200.0)
      {
        v47 = [(RTLearnedVisitMO *)self overlapsWithVisit:v8];
      }
    }

    else
    {
      v47 = 0;
    }
  }

  return v47;
}

- (BOOL)overlapsWithVisit:(id)visit
{
  visitCopy = visit;
  if (visitCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = visitCopy;
      interval = [(RTLearnedVisitMO *)self interval];
      interval2 = [(RTLearnedVisitMO *)v5 interval];

      v8 = [interval intersectsDateInterval:interval2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)managedObjectWithVisit:(id)visit place:(id)place inManagedObjectContext:(id)context
{
  if (place)
  {
    v5 = [self managedObjectWithVisit:visit finerGranularityInferredMapItem:0 place:place managedObject:0 inManagedObjectContext:context];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)managedObjectWithVisit:(id)visit finerGranularityInferredMapItem:(id)item place:(id)place inManagedObjectContext:(id)context
{
  if (place)
  {
    v6 = [self managedObjectWithVisit:visit finerGranularityInferredMapItem:item place:place managedObject:0 inManagedObjectContext:context];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: place", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

+ (id)managedObjectWithVisit:(id)visit finerGranularityInferredMapItem:(id)item place:(id)place managedObject:(id)object inManagedObjectContext:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  itemCopy = item;
  placeCopy = place;
  objectCopy = object;
  contextCopy = context;
  v17 = contextCopy;
  if (!visitCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit", buf, 2u);
    }

    goto LABEL_19;
  }

  if (!contextCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: managedObjectContext", buf, 2u);
    }

    goto LABEL_19;
  }

  if (objectCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [managedObject isKindOfClass:[RTLearnedVisitMO class]]", buf, 2u);
      }

LABEL_19:

      goto LABEL_20;
    }
  }

  if (!itemCopy || ([itemCopy mapItem], v18 = objc_claimAutoreleasedReturnValue(), v32 = 0, +[RTMapItemMO updateDatabaseWithMapItem:managedObjectContext:error:](RTMapItemMO, "updateDatabaseWithMapItem:managedObjectContext:error:", v18, v17, &v32), v19 = v32, v18, !v19))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v34 = __Block_byref_object_copy__199;
    v35 = __Block_byref_object_dispose__199;
    v36 = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __118__RTLearnedVisitMO_managedObjectWithVisit_finerGranularityInferredMapItem_place_managedObject_inManagedObjectContext___block_invoke;
    v25[3] = &unk_2788D34E0;
    v31 = buf;
    v26 = objectCopy;
    v27 = v17;
    v28 = visitCopy;
    v29 = placeCopy;
    v30 = itemCopy;
    [v27 performBlockAndWait:v25];
    v22 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
    goto LABEL_21;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v24 = NSStringFromSelector(a2);
    *buf = 138412803;
    *&buf[4] = v24;
    *&buf[12] = 2117;
    *&buf[14] = visitCopy;
    *&buf[22] = 2112;
    v34 = v19;
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@, error persisting visit, %{sensitive}@, error, %@", buf, 0x20u);
  }

LABEL_20:
  v22 = 0;
LABEL_21:

  return v22;
}

void __118__RTLearnedVisitMO_managedObjectWithVisit_finerGranularityInferredMapItem_place_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [[RTLearnedVisitMO alloc] initWithContext:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = MEMORY[0x277CCABB0];
  v5 = [*(a1 + 48) location];
  [v5 confidence];
  v6 = [v4 numberWithDouble:?];
  [*(*(*(a1 + 72) + 8) + 40) setConfidence:v6];

  v7 = MEMORY[0x277CCABB0];
  v8 = [*(a1 + 48) location];
  v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "dataPointCount")}];
  [*(*(*(a1 + 72) + 8) + 40) setDataPointCount:v9];

  v10 = [*(a1 + 48) entryDate];
  [*(*(*(a1 + 72) + 8) + 40) setEntryDate:v10];

  v11 = [*(a1 + 48) exitDate];
  [*(*(*(a1 + 72) + 8) + 40) setExitDate:v11];

  v12 = [*(a1 + 48) identifier];
  [*(*(*(a1 + 72) + 8) + 40) setIdentifier:v12];

  v13 = [*(a1 + 48) creationDate];
  [*(*(*(a1 + 72) + 8) + 40) setCreationDate:v13];

  v14 = [*(a1 + 48) expirationDate];
  [*(*(*(a1 + 72) + 8) + 40) setExpirationDate:v14];

  v15 = MEMORY[0x277CCABB0];
  v16 = [*(a1 + 48) location];
  v17 = [v16 location];
  [v17 latitude];
  v18 = [v15 numberWithDouble:?];
  [*(*(*(a1 + 72) + 8) + 40) setLocationLatitude:v18];

  v19 = MEMORY[0x277CCABB0];
  v20 = [*(a1 + 48) location];
  v21 = [v20 location];
  [v21 longitude];
  v22 = [v19 numberWithDouble:?];
  [*(*(*(a1 + 72) + 8) + 40) setLocationLongitude:v22];

  v23 = MEMORY[0x277CCABB0];
  v24 = [*(a1 + 48) location];
  v25 = [v24 location];
  [v25 horizontalUncertainty];
  v26 = [v23 numberWithDouble:?];
  [*(*(*(a1 + 72) + 8) + 40) setLocationHorizontalUncertainty:v26];

  v27 = MEMORY[0x277CCABB0];
  v28 = [*(a1 + 48) location];
  v29 = [v28 location];
  [v29 altitude];
  v30 = [v27 numberWithDouble:?];
  [*(*(*(a1 + 72) + 8) + 40) setLocationAltitude:v30];

  v31 = MEMORY[0x277CCABB0];
  v32 = [*(a1 + 48) location];
  v33 = [v32 location];
  [v33 verticalUncertainty];
  v34 = [v31 numberWithDouble:?];
  [*(*(*(a1 + 72) + 8) + 40) setLocationVerticalUncertainty:v34];

  v35 = MEMORY[0x277CCABB0];
  v36 = [*(a1 + 48) location];
  v37 = [v36 location];
  v38 = [v35 numberWithUnsignedInteger:{objc_msgSend(v37, "sourceAccuracy")}];
  [*(*(*(a1 + 72) + 8) + 40) setLocationSourceAccuracy:v38];

  v39 = MEMORY[0x277CCABB0];
  v40 = [*(a1 + 48) location];
  v41 = [v40 location];
  v42 = [v39 numberWithUnsignedInt:{objc_msgSend(v41, "referenceFrame")}];
  [*(*(*(a1 + 72) + 8) + 40) setLocationReferenceFrame:v42];

  v43 = MEMORY[0x277CCABB0];
  [*(a1 + 48) placeConfidence];
  v44 = [v43 numberWithDouble:?];
  [*(*(*(a1 + 72) + 8) + 40) setPlaceConfidence:v44];

  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 48), "placeSource")}];
  [*(*(*(a1 + 72) + 8) + 40) setPlaceSource:v45];

  if (*(a1 + 56))
  {
    v46 = +[RTLearnedPlaceMO fetchRequest];
    v47 = MEMORY[0x277CCAC30];
    v48 = [*(a1 + 56) identifier];
    v49 = [v47 predicateWithFormat:@"%K == %@", @"identifier", v48];
    [v46 setPredicate:v49];

    v50 = *(a1 + 40);
    v62 = 0;
    v51 = [v50 executeFetchRequest:v46 error:&v62];
    v52 = v62;
    v53 = *(a1 + 56);
    v54 = [v51 firstObject];
    v55 = [RTLearnedPlaceMO managedObjectWithPlace:v53 managedObject:v54 inManagedObjectContext:*(a1 + 40)];
    [*(*(*(a1 + 72) + 8) + 40) setPlace:v55];
  }

  v56 = *(a1 + 64);
  if (v56)
  {
    v57 = [v56 mapItem];
    v58 = [v57 identifier];
    [*(*(*(a1 + 72) + 8) + 40) setFinerGranularityMapItemIdentifier:v58];

    v59 = MEMORY[0x277CCABB0];
    [*(a1 + 64) confidence];
    v60 = [v59 numberWithDouble:?];
    [*(*(*(a1 + 72) + 8) + 40) setFinerGranularityMapItemConfidence:v60];

    v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 64), "source")}];
    [*(*(*(a1 + 72) + 8) + 40) setFinerGranularityMapItemSource:v61];
  }

  else
  {
    [*(*(*(a1 + 72) + 8) + 40) setFinerGranularityMapItemIdentifier:0];
    [*(*(*(a1 + 72) + 8) + 40) setFinerGranularityMapItemConfidence:0];
    [*(*(*(a1 + 72) + 8) + 40) setFinerGranularityMapItemSource:0];
  }
}

- (id)finerGranularityInferredMapItem
{
  finerGranularityMapItem = [(RTLearnedVisitMO *)self finerGranularityMapItem];

  if (finerGranularityMapItem)
  {
    v4 = objc_alloc(MEMORY[0x277D01128]);
    v5 = MEMORY[0x277D011A0];
    finerGranularityMapItem2 = [(RTLearnedVisitMO *)self finerGranularityMapItem];
    v7 = [v5 createWithManagedObject:finerGranularityMapItem2];
    finerGranularityMapItemConfidence = [(RTLearnedVisitMO *)self finerGranularityMapItemConfidence];
    [finerGranularityMapItemConfidence doubleValue];
    v10 = v9;
    finerGranularityMapItemSource = [(RTLearnedVisitMO *)self finerGranularityMapItemSource];
    v12 = [v4 initWithMapItem:v7 confidence:objc_msgSend(finerGranularityMapItemSource source:{"unsignedIntegerValue"), v10}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSDateInterval)interval
{
  interval = self->_interval;
  if (!interval)
  {
    v4 = objc_alloc(MEMORY[0x277CCA970]);
    entryDate = [(RTLearnedVisitMO *)self entryDate];
    exitDate = [(RTLearnedVisitMO *)self exitDate];
    v7 = [v4 initWithStartDate:entryDate endDate:exitDate];
    v8 = self->_interval;
    self->_interval = v7;

    interval = self->_interval;
  }

  v9 = interval;

  return v9;
}

@end