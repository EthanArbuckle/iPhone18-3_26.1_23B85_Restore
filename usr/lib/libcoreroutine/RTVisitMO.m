@interface RTVisitMO
+ (id)managedObjectWithVisit:(id)a3 inManagedObjectContext:(id)a4;
- (id)description;
- (id)finerGranularityMapItem;
- (id)mapItem;
- (id)placeInferenceLoiIdentifier;
- (void)setFinerGranularityMapItem:(id)a3;
- (void)setMapItem:(id)a3;
- (void)setPlaceInferenceLoiIdentifier:(id)a3;
@end

@implementation RTVisitMO

- (id)mapItem
{
  v20 = *MEMORY[0x277D85DE8];
  [(RTVisitMO *)self willAccessValueForKey:@"mapItem"];
  v4 = [(RTVisitMO *)self cachedMapItem];

  if (!v4)
  {
    v5 = [(RTVisitMO *)self placeInferenceMapItemIdentifier];
    v13 = 0;
    v6 = [RTMapItemMO mapItemForIdentifier:v5 error:&v13];
    v7 = v13;
    [(RTVisitMO *)self setCachedMapItem:v6];

    if (v7)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        v12 = [(RTVisitMO *)self placeInferenceMapItemIdentifier];
        *buf = 138412803;
        v15 = v11;
        v16 = 2117;
        v17 = v7;
        v18 = 2112;
        v19 = v12;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@, Error fulfilling transient property mapItem, %{sensitive}@, map item identifier, %@", buf, 0x20u);
      }
    }
  }

  [(RTVisitMO *)self didAccessValueForKey:@"mapItem"];
  v9 = [(RTVisitMO *)self cachedMapItem];

  return v9;
}

- (id)finerGranularityMapItem
{
  v20 = *MEMORY[0x277D85DE8];
  [(RTVisitMO *)self willAccessValueForKey:@"finerGranularityMapItem"];
  v4 = [(RTVisitMO *)self cachedFinerGranularityMapItem];

  if (!v4)
  {
    v5 = [(RTVisitMO *)self placeInferenceFinerGranularityMapItemIdentifier];
    v13 = 0;
    v6 = [RTMapItemMO mapItemForIdentifier:v5 error:&v13];
    v7 = v13;
    [(RTVisitMO *)self setCachedFinerGranularityMapItem:v6];

    if (v7)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        v12 = [(RTVisitMO *)self placeInferenceFinerGranularityMapItemIdentifier];
        *buf = 138412803;
        v15 = v11;
        v16 = 2117;
        v17 = v7;
        v18 = 2112;
        v19 = v12;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "%@, Error fulfilling transient property finerGranularityMapItem, %{sensitive}@, map item identifier, %@", buf, 0x20u);
      }
    }
  }

  [(RTVisitMO *)self didAccessValueForKey:@"finerGranularityMapItem"];
  v9 = [(RTVisitMO *)self cachedFinerGranularityMapItem];

  return v9;
}

- (id)placeInferenceLoiIdentifier
{
  v23 = *MEMORY[0x277D85DE8];
  [(RTVisitMO *)self willAccessValueForKey:@"placeInferenceLoiIdentifier"];
  v4 = [(RTVisitMO *)self cachedPlaceInferenceLoiIdentifier];

  if (!v4)
  {
    v5 = [(RTVisitMO *)self placeInferenceMapItemIdentifier];

    if (v5)
    {
      v6 = +[RTLearnedLocationOfInterestMO fetchRequest];
      [v6 setReturnsObjectsAsFaults:0];
      [v6 setFetchLimit:1];
      v7 = MEMORY[0x277CCAC30];
      v8 = [(RTVisitMO *)self placeInferenceMapItemIdentifier];
      v9 = [v7 predicateWithFormat:@"%K == %@", @"placeMapItemIdentifier", v8];
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

      v13 = [v10 firstObject];
      v14 = [v13 identifier];
      [(RTVisitMO *)self setCachedPlaceInferenceLoiIdentifier:v14];
    }
  }

  [(RTVisitMO *)self didAccessValueForKey:@"placeInferenceLoiIdentifier"];
  v15 = [(RTVisitMO *)self cachedPlaceInferenceLoiIdentifier];

  return v15;
}

- (void)setMapItem:(id)a3
{
  v4 = a3;
  [(RTVisitMO *)self willChangeValueForKey:@"mapItem"];
  v5 = [v4 identifier];
  [(RTVisitMO *)self setPlaceInferenceMapItemIdentifier:v5];

  [(RTVisitMO *)self setCachedMapItem:v4];

  [(RTVisitMO *)self didChangeValueForKey:@"mapItem"];
}

- (void)setFinerGranularityMapItem:(id)a3
{
  v4 = a3;
  [(RTVisitMO *)self willChangeValueForKey:@"finerGranularityMapItem"];
  v5 = [v4 identifier];
  [(RTVisitMO *)self setPlaceInferenceFinerGranularityMapItemIdentifier:v5];

  [(RTVisitMO *)self setCachedFinerGranularityMapItem:v4];

  [(RTVisitMO *)self didChangeValueForKey:@"finerGranularityMapItem"];
}

- (void)setPlaceInferenceLoiIdentifier:(id)a3
{
  v4 = a3;
  [(RTVisitMO *)self willChangeValueForKey:@"placeInferenceLoiIdentifier"];
  [(RTVisitMO *)self setCachedPlaceInferenceLoiIdentifier:v4];

  [(RTVisitMO *)self didChangeValueForKey:@"placeInferenceLoiIdentifier"];
}

+ (id)managedObjectWithVisit:(id)a3 inManagedObjectContext:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [v6 placeInference];
      v10 = [v9 mapItem];

      if (v10 && ([v6 placeInference], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "mapItem"), v12 = objc_claimAutoreleasedReturnValue(), v73 = 0, +[RTMapItemMO updateDatabaseWithMapItem:managedObjectContext:error:](RTMapItemMO, "updateDatabaseWithMapItem:managedObjectContext:error:", v12, v8, &v73), v13 = v73, v12, v11, v13))
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
        v77 = v6;
        v78 = 2112;
        v79 = v13;
      }

      else
      {
        v17 = [v6 placeInference];
        v18 = [v17 finerGranularityMapItem];

        if (!v18 || ([v6 placeInference], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "finerGranularityMapItem"), v20 = objc_claimAutoreleasedReturnValue(), v72 = 0, +[RTMapItemMO updateDatabaseWithMapItem:managedObjectContext:error:](RTMapItemMO, "updateDatabaseWithMapItem:managedObjectContext:error:", v20, v8, &v72), v13 = v72, v20, v19, !v13))
        {
          v21 = [[RTVisitMO alloc] initWithContext:v8];
          v23 = MEMORY[0x277CCABB0];
          [v6 confidence];
          v24 = [v23 numberWithDouble:?];
          [(RTVisitMO *)v21 setConfidence:v24];

          v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "dataPointCount")}];
          [(RTVisitMO *)v21 setDataPointCount:v25];

          v26 = [v6 date];
          [(RTVisitMO *)v21 setDetectionDate:v26];

          v27 = [v6 entry];
          [(RTVisitMO *)v21 setEntryDate:v27];

          v28 = [v6 exit];
          [(RTVisitMO *)v21 setExitDate:v28];

          v29 = MEMORY[0x277CCABB0];
          v30 = [v6 location];
          [v30 latitude];
          v31 = [v29 numberWithDouble:?];
          [(RTVisitMO *)v21 setLocationLatitude:v31];

          v32 = MEMORY[0x277CCABB0];
          v33 = [v6 location];
          [v33 longitude];
          v34 = [v32 numberWithDouble:?];
          [(RTVisitMO *)v21 setLocationLongitude:v34];

          v35 = MEMORY[0x277CCABB0];
          v36 = [v6 location];
          [v36 horizontalUncertainty];
          v37 = [v35 numberWithDouble:?];
          [(RTVisitMO *)v21 setLocationUncertainty:v37];

          v38 = MEMORY[0x277CCABB0];
          v39 = [v6 location];
          v40 = [v38 numberWithUnsignedInt:{objc_msgSend(v39, "referenceFrame")}];
          [(RTVisitMO *)v21 setLocationReferenceFrame:v40];

          v41 = [v6 location];
          v42 = [v41 date];
          [(RTVisitMO *)v21 setLocationDate:v42];

          v43 = [v6 placeInference];
          [v43 confidence];
          if (v44 == 0.0)
          {
            [(RTVisitMO *)v21 setPlaceInferenceConfidence:0];
          }

          else
          {
            v45 = MEMORY[0x277CCABB0];
            v46 = [v6 placeInference];
            [v46 confidence];
            v47 = [v45 numberWithDouble:?];
            [(RTVisitMO *)v21 setPlaceInferenceConfidence:v47];
          }

          v48 = [v6 placeInference];
          v49 = [v48 mapItem];
          v50 = [v49 identifier];
          [(RTVisitMO *)v21 setPlaceInferenceMapItemIdentifier:v50];

          v51 = [v6 placeInference];
          [v51 finerGranularityMapItemConfidence];
          if (v52 == 0.0)
          {
            [(RTVisitMO *)v21 setPlaceInferenceFinerGranularityMapItemConfidence:0];
          }

          else
          {
            v53 = MEMORY[0x277CCABB0];
            v54 = [v6 placeInference];
            [v54 finerGranularityMapItemConfidence];
            v55 = [v53 numberWithDouble:?];
            [(RTVisitMO *)v21 setPlaceInferenceFinerGranularityMapItemConfidence:v55];
          }

          v56 = [v6 placeInference];
          v57 = [v56 finerGranularityMapItem];
          v58 = [v57 identifier];
          [(RTVisitMO *)v21 setPlaceInferenceFinerGranularityMapItemIdentifier:v58];

          v59 = [v6 placeInference];
          if ([v59 placeType])
          {
            v60 = MEMORY[0x277CCABB0];
            v61 = [v6 placeInference];
            v62 = [v60 numberWithUnsignedInteger:{objc_msgSend(v61, "placeType")}];
            [(RTVisitMO *)v21 setPlaceInferencePlaceType:v62];
          }

          else
          {
            [(RTVisitMO *)v21 setPlaceInferencePlaceType:0];
          }

          v63 = [v6 placeInference];
          if ([v63 userType])
          {
            v64 = MEMORY[0x277CCABB0];
            v65 = [v6 placeInference];
            v66 = [v64 numberWithUnsignedInteger:{objc_msgSend(v65, "userType")}];
            [(RTVisitMO *)v21 setPlaceInferenceUserType:v66];
          }

          else
          {
            [(RTVisitMO *)v21 setPlaceInferenceUserType:0];
          }

          v67 = [v6 placeInference];
          if ([v67 userTypeSource])
          {
            v68 = MEMORY[0x277CCABB0];
            v69 = [v6 placeInference];
            v70 = [v68 numberWithUnsignedInteger:{objc_msgSend(v69, "userTypeSource")}];
            [(RTVisitMO *)v21 setPlaceInferenceUserTypeSource:v70];
          }

          else
          {
            [(RTVisitMO *)v21 setPlaceInferenceUserTypeSource:0];
          }

          v71 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "source")}];
          [(RTVisitMO *)v21 setSource:v71];

          v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "type")}];
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
        v77 = v6;
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
  v26 = [(RTVisitMO *)self confidence];
  v28 = [(RTVisitMO *)self dataPointCount];
  v21 = [(RTVisitMO *)self detectionDate];
  v15 = [v21 stringFromDate];
  v20 = [(RTVisitMO *)self entryDate];
  v27 = [v20 stringFromDate];
  v19 = [(RTVisitMO *)self exitDate];
  v25 = [v19 stringFromDate];
  v14 = [(RTVisitMO *)self locationLatitude];
  v24 = [(RTVisitMO *)self locationLongitude];
  v23 = [(RTVisitMO *)self locationUncertainty];
  v22 = [(RTVisitMO *)self locationReferenceFrame];
  v16 = [(RTVisitMO *)self locationDate];
  v13 = [v16 stringFromDate];
  v12 = [(RTVisitMO *)self placeInferenceConfidence];
  v3 = [(RTVisitMO *)self placeInferenceMapItemIdentifier];
  v4 = [(RTVisitMO *)self placeInferenceFinerGranularityMapItemConfidence];
  v5 = [(RTVisitMO *)self placeInferenceFinerGranularityMapItemIdentifier];
  v6 = [(RTVisitMO *)self placeInferencePlaceType];
  v7 = [(RTVisitMO *)self placeInferenceUserType];
  v8 = [(RTVisitMO *)self placeInferenceUserTypeSource];
  v9 = [(RTVisitMO *)self source];
  v10 = [(RTVisitMO *)self type];
  v18 = [v17 stringWithFormat:@"confidence, %@, dataPointCount, %@, detectionDate, %@, entryDate, %@, exitDate, %@, locationLatitude, %@, locationLongitude, %@, locationUncertainty, %@, locationReferenceFrame, %@, locationDate, %@, placeInferenceConfidence, %@, placeInferenceMapItemIdentifier, %@, placeInferenceFinerGranularityMapItemConfidence, %@, placeInferenceFinerGranularityMapItemIdentifier, %@, placeInferencePlaceType, %@, placeInferenceUserType, %@, placeInferenceUserTypeSource, %@, source, %@, type, %@", v26, v28, v15, v27, v25, v14, v24, v23, v22, v13, v12, v3, v4, v5, v6, v7, v8, v9, v10];

  return v18;
}

@end