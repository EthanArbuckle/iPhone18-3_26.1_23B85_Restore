@interface RTVisitMO
+ (id)managedObjectWithVisit:(id)visit inManagedObjectContext:(id)context;
- (id)description;
- (id)finerGranularityMapItem;
- (id)mapItem;
- (id)placeInferenceLoiIdentifier;
- (void)setFinerGranularityMapItem:(id)item;
- (void)setMapItem:(id)item;
- (void)setPlaceInferenceLoiIdentifier:(id)identifier;
@end

@implementation RTVisitMO

- (id)mapItem
{
  v20 = *MEMORY[0x277D85DE8];
  [(RTVisitMO *)self willAccessValueForKey:@"mapItem"];
  cachedMapItem = [(RTVisitMO *)self cachedMapItem];

  if (!cachedMapItem)
  {
    placeInferenceMapItemIdentifier = [(RTVisitMO *)self placeInferenceMapItemIdentifier];
    v13 = 0;
    v6 = [RTMapItemMO mapItemForIdentifier:placeInferenceMapItemIdentifier error:&v13];
    v7 = v13;
    [(RTVisitMO *)self setCachedMapItem:v6];

    if (v7)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        placeInferenceMapItemIdentifier2 = [(RTVisitMO *)self placeInferenceMapItemIdentifier];
        *buf = 138412803;
        v15 = v11;
        v16 = 2117;
        v17 = v7;
        v18 = 2112;
        v19 = placeInferenceMapItemIdentifier2;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@, Error fulfilling transient property mapItem, %{sensitive}@, map item identifier, %@", buf, 0x20u);
      }
    }
  }

  [(RTVisitMO *)self didAccessValueForKey:@"mapItem"];
  cachedMapItem2 = [(RTVisitMO *)self cachedMapItem];

  return cachedMapItem2;
}

- (id)finerGranularityMapItem
{
  v20 = *MEMORY[0x277D85DE8];
  [(RTVisitMO *)self willAccessValueForKey:@"finerGranularityMapItem"];
  cachedFinerGranularityMapItem = [(RTVisitMO *)self cachedFinerGranularityMapItem];

  if (!cachedFinerGranularityMapItem)
  {
    placeInferenceFinerGranularityMapItemIdentifier = [(RTVisitMO *)self placeInferenceFinerGranularityMapItemIdentifier];
    v13 = 0;
    v6 = [RTMapItemMO mapItemForIdentifier:placeInferenceFinerGranularityMapItemIdentifier error:&v13];
    v7 = v13;
    [(RTVisitMO *)self setCachedFinerGranularityMapItem:v6];

    if (v7)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        placeInferenceFinerGranularityMapItemIdentifier2 = [(RTVisitMO *)self placeInferenceFinerGranularityMapItemIdentifier];
        *buf = 138412803;
        v15 = v11;
        v16 = 2117;
        v17 = v7;
        v18 = 2112;
        v19 = placeInferenceFinerGranularityMapItemIdentifier2;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@, Error fulfilling transient property finerGranularityMapItem, %{sensitive}@, map item identifier, %@", buf, 0x20u);
      }
    }
  }

  [(RTVisitMO *)self didAccessValueForKey:@"finerGranularityMapItem"];
  cachedFinerGranularityMapItem2 = [(RTVisitMO *)self cachedFinerGranularityMapItem];

  return cachedFinerGranularityMapItem2;
}

- (id)placeInferenceLoiIdentifier
{
  v23 = *MEMORY[0x277D85DE8];
  [(RTVisitMO *)self willAccessValueForKey:@"placeInferenceLoiIdentifier"];
  cachedPlaceInferenceLoiIdentifier = [(RTVisitMO *)self cachedPlaceInferenceLoiIdentifier];

  if (!cachedPlaceInferenceLoiIdentifier)
  {
    placeInferenceMapItemIdentifier = [(RTVisitMO *)self placeInferenceMapItemIdentifier];

    if (placeInferenceMapItemIdentifier)
    {
      v6 = +[RTLearnedLocationOfInterestMO fetchRequest];
      [v6 setReturnsObjectsAsFaults:0];
      [v6 setFetchLimit:1];
      v7 = MEMORY[0x277CCAC30];
      placeInferenceMapItemIdentifier2 = [(RTVisitMO *)self placeInferenceMapItemIdentifier];
      v9 = [v7 predicateWithFormat:@"%K == %@", @"placeMapItemIdentifier", placeInferenceMapItemIdentifier2];
      [v6 setPredicate:v9];

      v18 = 0;
      v10 = [v6 execute:&v18];
      v11 = v18;
      if (v11)
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v17 = NSStringFromSelector(a2);
          *buf = 138412546;
          v20 = v17;
          v21 = 2112;
          v22 = v11;
          _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@, Error fulfilling transient property placeInferenceLoiIdentifier, %@", buf, 0x16u);
        }
      }

      firstObject = [v10 firstObject];
      identifier = [firstObject identifier];
      [(RTVisitMO *)self setCachedPlaceInferenceLoiIdentifier:identifier];
    }
  }

  [(RTVisitMO *)self didAccessValueForKey:@"placeInferenceLoiIdentifier"];
  cachedPlaceInferenceLoiIdentifier2 = [(RTVisitMO *)self cachedPlaceInferenceLoiIdentifier];

  return cachedPlaceInferenceLoiIdentifier2;
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
  [(RTVisitMO *)self willChangeValueForKey:@"mapItem"];
  identifier = [itemCopy identifier];
  [(RTVisitMO *)self setPlaceInferenceMapItemIdentifier:identifier];

  [(RTVisitMO *)self setCachedMapItem:itemCopy];

  [(RTVisitMO *)self didChangeValueForKey:@"mapItem"];
}

- (void)setFinerGranularityMapItem:(id)item
{
  itemCopy = item;
  [(RTVisitMO *)self willChangeValueForKey:@"finerGranularityMapItem"];
  identifier = [itemCopy identifier];
  [(RTVisitMO *)self setPlaceInferenceFinerGranularityMapItemIdentifier:identifier];

  [(RTVisitMO *)self setCachedFinerGranularityMapItem:itemCopy];

  [(RTVisitMO *)self didChangeValueForKey:@"finerGranularityMapItem"];
}

- (void)setPlaceInferenceLoiIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(RTVisitMO *)self willChangeValueForKey:@"placeInferenceLoiIdentifier"];
  [(RTVisitMO *)self setCachedPlaceInferenceLoiIdentifier:identifierCopy];

  [(RTVisitMO *)self didChangeValueForKey:@"placeInferenceLoiIdentifier"];
}

+ (id)managedObjectWithVisit:(id)visit inManagedObjectContext:(id)context
{
  v80 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  contextCopy = context;
  v8 = contextCopy;
  if (visitCopy)
  {
    if (contextCopy)
    {
      placeInference = [visitCopy placeInference];
      mapItem = [placeInference mapItem];

      if (mapItem && ([visitCopy placeInference], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "mapItem"), v12 = objc_claimAutoreleasedReturnValue(), v73 = 0, +[RTMapItemMO updateDatabaseWithMapItem:managedObjectContext:error:](RTMapItemMO, "updateDatabaseWithMapItem:managedObjectContext:error:", v12, v8, &v73), v13 = v73, v12, v11, v13))
      {
        v14 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
LABEL_12:

          goto LABEL_14;
        }

        v15 = NSStringFromSelector(a2);
        *buf = 138412803;
        v75 = v15;
        v76 = 2117;
        v77 = visitCopy;
        v78 = 2112;
        v79 = v13;
      }

      else
      {
        placeInference2 = [visitCopy placeInference];
        finerGranularityMapItem = [placeInference2 finerGranularityMapItem];

        if (!finerGranularityMapItem || ([visitCopy placeInference], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "finerGranularityMapItem"), v20 = objc_claimAutoreleasedReturnValue(), v72 = 0, +[RTMapItemMO updateDatabaseWithMapItem:managedObjectContext:error:](RTMapItemMO, "updateDatabaseWithMapItem:managedObjectContext:error:", v20, v8, &v72), v13 = v72, v20, v19, !v13))
        {
          v21 = [[RTVisitMO alloc] initWithContext:v8];
          v23 = MEMORY[0x277CCABB0];
          [visitCopy confidence];
          v24 = [v23 numberWithDouble:?];
          [(RTVisitMO *)v21 setConfidence:v24];

          v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(visitCopy, "dataPointCount")}];
          [(RTVisitMO *)v21 setDataPointCount:v25];

          date = [visitCopy date];
          [(RTVisitMO *)v21 setDetectionDate:date];

          entry = [visitCopy entry];
          [(RTVisitMO *)v21 setEntryDate:entry];

          exit = [visitCopy exit];
          [(RTVisitMO *)v21 setExitDate:exit];

          v29 = MEMORY[0x277CCABB0];
          location = [visitCopy location];
          [location latitude];
          v31 = [v29 numberWithDouble:?];
          [(RTVisitMO *)v21 setLocationLatitude:v31];

          v32 = MEMORY[0x277CCABB0];
          location2 = [visitCopy location];
          [location2 longitude];
          v34 = [v32 numberWithDouble:?];
          [(RTVisitMO *)v21 setLocationLongitude:v34];

          v35 = MEMORY[0x277CCABB0];
          location3 = [visitCopy location];
          [location3 horizontalUncertainty];
          v37 = [v35 numberWithDouble:?];
          [(RTVisitMO *)v21 setLocationUncertainty:v37];

          v38 = MEMORY[0x277CCABB0];
          location4 = [visitCopy location];
          v40 = [v38 numberWithUnsignedInt:{objc_msgSend(location4, "referenceFrame")}];
          [(RTVisitMO *)v21 setLocationReferenceFrame:v40];

          location5 = [visitCopy location];
          date2 = [location5 date];
          [(RTVisitMO *)v21 setLocationDate:date2];

          placeInference3 = [visitCopy placeInference];
          [placeInference3 confidence];
          if (v44 == 0.0)
          {
            [(RTVisitMO *)v21 setPlaceInferenceConfidence:0];
          }

          else
          {
            v45 = MEMORY[0x277CCABB0];
            placeInference4 = [visitCopy placeInference];
            [placeInference4 confidence];
            v47 = [v45 numberWithDouble:?];
            [(RTVisitMO *)v21 setPlaceInferenceConfidence:v47];
          }

          placeInference5 = [visitCopy placeInference];
          mapItem2 = [placeInference5 mapItem];
          identifier = [mapItem2 identifier];
          [(RTVisitMO *)v21 setPlaceInferenceMapItemIdentifier:identifier];

          placeInference6 = [visitCopy placeInference];
          [placeInference6 finerGranularityMapItemConfidence];
          if (v52 == 0.0)
          {
            [(RTVisitMO *)v21 setPlaceInferenceFinerGranularityMapItemConfidence:0];
          }

          else
          {
            v53 = MEMORY[0x277CCABB0];
            placeInference7 = [visitCopy placeInference];
            [placeInference7 finerGranularityMapItemConfidence];
            v55 = [v53 numberWithDouble:?];
            [(RTVisitMO *)v21 setPlaceInferenceFinerGranularityMapItemConfidence:v55];
          }

          placeInference8 = [visitCopy placeInference];
          finerGranularityMapItem2 = [placeInference8 finerGranularityMapItem];
          identifier2 = [finerGranularityMapItem2 identifier];
          [(RTVisitMO *)v21 setPlaceInferenceFinerGranularityMapItemIdentifier:identifier2];

          placeInference9 = [visitCopy placeInference];
          if ([placeInference9 placeType])
          {
            v60 = MEMORY[0x277CCABB0];
            placeInference10 = [visitCopy placeInference];
            v62 = [v60 numberWithUnsignedInteger:{objc_msgSend(placeInference10, "placeType")}];
            [(RTVisitMO *)v21 setPlaceInferencePlaceType:v62];
          }

          else
          {
            [(RTVisitMO *)v21 setPlaceInferencePlaceType:0];
          }

          placeInference11 = [visitCopy placeInference];
          if ([placeInference11 userType])
          {
            v64 = MEMORY[0x277CCABB0];
            placeInference12 = [visitCopy placeInference];
            v66 = [v64 numberWithUnsignedInteger:{objc_msgSend(placeInference12, "userType")}];
            [(RTVisitMO *)v21 setPlaceInferenceUserType:v66];
          }

          else
          {
            [(RTVisitMO *)v21 setPlaceInferenceUserType:0];
          }

          placeInference13 = [visitCopy placeInference];
          if ([placeInference13 userTypeSource])
          {
            v68 = MEMORY[0x277CCABB0];
            placeInference14 = [visitCopy placeInference];
            v70 = [v68 numberWithUnsignedInteger:{objc_msgSend(placeInference14, "userTypeSource")}];
            [(RTVisitMO *)v21 setPlaceInferenceUserTypeSource:v70];
          }

          else
          {
            [(RTVisitMO *)v21 setPlaceInferenceUserTypeSource:0];
          }

          v71 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(visitCopy, "source")}];
          [(RTVisitMO *)v21 setSource:v71];

          v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(visitCopy, "type")}];
          [(RTVisitMO *)v21 setType:v13];
          goto LABEL_15;
        }

        v14 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        v15 = NSStringFromSelector(a2);
        *buf = 138412803;
        v75 = v15;
        v76 = 2117;
        v77 = visitCopy;
        v78 = 2112;
        v79 = v13;
      }

      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@, error persisting visit, %{sensitive}@, error, %@", buf, 0x20u);

      goto LABEL_12;
    }

    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: managedObjectContext";
LABEL_35:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_14;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v16 = "Invalid parameter not satisfying: visit";
    goto LABEL_35;
  }

LABEL_14:
  v21 = 0;
LABEL_15:

  return v21;
}

- (id)description
{
  v17 = MEMORY[0x277CCACA8];
  confidence = [(RTVisitMO *)self confidence];
  dataPointCount = [(RTVisitMO *)self dataPointCount];
  detectionDate = [(RTVisitMO *)self detectionDate];
  stringFromDate = [detectionDate stringFromDate];
  entryDate = [(RTVisitMO *)self entryDate];
  stringFromDate2 = [entryDate stringFromDate];
  exitDate = [(RTVisitMO *)self exitDate];
  stringFromDate3 = [exitDate stringFromDate];
  locationLatitude = [(RTVisitMO *)self locationLatitude];
  locationLongitude = [(RTVisitMO *)self locationLongitude];
  locationUncertainty = [(RTVisitMO *)self locationUncertainty];
  locationReferenceFrame = [(RTVisitMO *)self locationReferenceFrame];
  locationDate = [(RTVisitMO *)self locationDate];
  stringFromDate4 = [locationDate stringFromDate];
  placeInferenceConfidence = [(RTVisitMO *)self placeInferenceConfidence];
  placeInferenceMapItemIdentifier = [(RTVisitMO *)self placeInferenceMapItemIdentifier];
  placeInferenceFinerGranularityMapItemConfidence = [(RTVisitMO *)self placeInferenceFinerGranularityMapItemConfidence];
  placeInferenceFinerGranularityMapItemIdentifier = [(RTVisitMO *)self placeInferenceFinerGranularityMapItemIdentifier];
  placeInferencePlaceType = [(RTVisitMO *)self placeInferencePlaceType];
  placeInferenceUserType = [(RTVisitMO *)self placeInferenceUserType];
  placeInferenceUserTypeSource = [(RTVisitMO *)self placeInferenceUserTypeSource];
  source = [(RTVisitMO *)self source];
  type = [(RTVisitMO *)self type];
  v18 = [v17 stringWithFormat:@"confidence, %@, dataPointCount, %@, detectionDate, %@, entryDate, %@, exitDate, %@, locationLatitude, %@, locationLongitude, %@, locationUncertainty, %@, locationReferenceFrame, %@, locationDate, %@, placeInferenceConfidence, %@, placeInferenceMapItemIdentifier, %@, placeInferenceFinerGranularityMapItemConfidence, %@, placeInferenceFinerGranularityMapItemIdentifier, %@, placeInferencePlaceType, %@, placeInferenceUserType, %@, placeInferenceUserTypeSource, %@, source, %@, type, %@", confidence, dataPointCount, stringFromDate, stringFromDate2, stringFromDate3, locationLatitude, locationLongitude, locationUncertainty, locationReferenceFrame, stringFromDate4, placeInferenceConfidence, placeInferenceMapItemIdentifier, placeInferenceFinerGranularityMapItemConfidence, placeInferenceFinerGranularityMapItemIdentifier, placeInferencePlaceType, placeInferenceUserType, placeInferenceUserTypeSource, source, type];

  return v18;
}

@end