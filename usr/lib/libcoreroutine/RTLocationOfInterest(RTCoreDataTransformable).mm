@interface RTLocationOfInterest(RTCoreDataTransformable)
+ (id)createWithLearnedLocationOfInterestMO:()RTCoreDataTransformable;
+ (id)createWithLearnedLocationOfInterestVisitMO:()RTCoreDataTransformable;
+ (id)createWithManagedObject:()RTCoreDataTransformable;
@end

@implementation RTLocationOfInterest(RTCoreDataTransformable)

+ (id)createWithManagedObject:()RTCoreDataTransformable
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    LOWORD(v12) = 0;
    v7 = "Invalid parameter not satisfying: managedObject";
    v8 = v6;
    v9 = 2;
LABEL_15:
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, v7, &v12, v9);
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [objc_opt_class() createWithLearnedLocationOfInterestMO:v4];
LABEL_8:
    v10 = v5;

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [objc_opt_class() createWithLearnedLocationOfInterestVisitMO:v4];
    goto LABEL_8;
  }

  v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412802;
    v13 = v3;
    v14 = 2080;
    v15 = "+[RTLocationOfInterest(RTCoreDataTransformable) createWithManagedObject:]";
    v16 = 1024;
    v17 = 40;
    v7 = "managedObject, %@, is not supported by RTLearnedLocationOfInterest+CoreDataReadable (in %s:%d)";
    v8 = v6;
    v9 = 28;
    goto LABEL_15;
  }

LABEL_10:

  v10 = 0;
LABEL_11:

  return v10;
}

+ (id)createWithLearnedLocationOfInterestMO:()RTCoreDataTransformable
{
  v57[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 identifier];

  if (!v4)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      v49 = 0;
      goto LABEL_13;
    }

    *buf = 0;
    v50 = "Invalid parameter not satisfying: learnedLocationOfInterestMO.identifier";
LABEL_17:
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v50, buf, 2u);
    goto LABEL_8;
  }

  v5 = [v3 placeIdentifier];

  if (!v5)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v50 = "Invalid parameter not satisfying: learnedLocationOfInterestMO.placeIdentifier";
    goto LABEL_17;
  }

  v6 = [_RTMap alloc];
  v7 = [v3 visits];
  v8 = [v7 array];
  v9 = [(_RTMap *)v6 initWithInput:v8];
  v10 = [(_RTMap *)v9 withBlock:&__block_literal_global_34];

  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"entryDate" ascending:1];
  v57[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
  v13 = [v10 sortedArrayUsingDescriptors:v12];

  v14 = MEMORY[0x277D011A0];
  v15 = [v3 mapItem];
  v16 = [v14 createWithManagedObject:v15];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277D01160]);
    v53 = [v3 locationLatitude];
    [v53 doubleValue];
    v19 = v18;
    v20 = [v3 locationLongitude];
    [v20 doubleValue];
    v22 = v21;
    v23 = [v3 locationHorizontalUncertainty];
    [v23 doubleValue];
    v25 = v24;
    v26 = [v3 locationAltitude];
    [v26 doubleValue];
    v28 = v27;
    [v3 locationVerticalUncertainty];
    v29 = v52 = v10;
    [v29 doubleValue];
    v31 = v30;
    [MEMORY[0x277CBEAA8] date];
    v32 = v55 = v16;
    [v3 locationReferenceFrame];
    v33 = v54 = v11;
    v34 = [v33 intValue];
    v35 = [v3 locationSourceAccuracy];
    v36 = [v17 initWithLatitude:v32 longitude:v34 horizontalUncertainty:objc_msgSend(v35 altitude:"intValue") verticalUncertainty:v19 date:v22 referenceFrame:v25 speed:v28 sourceAccuracy:{v31, 0.0}];

    v37 = objc_alloc(MEMORY[0x277D01170]);
    v38 = [v3 confidence];
    [v38 doubleValue];
    v40 = v39;
    v41 = [v3 identifier];
    v42 = [v3 placeType];
    v43 = [v42 unsignedIntValue];
    v44 = [v3 placeTypeSource];
    v45 = [v44 unsignedIntegerValue];
    v46 = [v3 placeCustomLabel];
    v47 = v37;
    v16 = v55;
    v48 = v45;
    v10 = v52;
    v49 = [v47 initWithLocation:v36 confidence:v41 identifier:v43 type:v48 typeSource:v52 visits:v46 customLabel:v40 mapItem:v55];

    v11 = v54;
  }

  else
  {
    v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapItem", buf, 2u);
    }

    v49 = 0;
  }

LABEL_13:

  return v49;
}

+ (id)createWithLearnedLocationOfInterestVisitMO:()RTCoreDataTransformable
{
  v51[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      v40 = 0;
      goto LABEL_23;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: learnedLocationOfInterestVisitMO";
LABEL_27:
    _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, v41, buf, 2u);
    goto LABEL_10;
  }

  v5 = [v3 identifier];

  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: learnedLocationOfInterestVisitMO.identifier";
    goto LABEL_27;
  }

  v6 = [v4 locationOfInterest];
  v7 = [v6 identifier];

  if (v7)
  {
    v8 = [MEMORY[0x277D01188] createWithManagedObject:v4];
    if (v8)
    {
      v9 = MEMORY[0x277D011A0];
      v10 = [v6 mapItem];
      v11 = [v9 createWithManagedObject:v10];

      if (v11)
      {
        v43 = objc_alloc(MEMORY[0x277D01160]);
        v47 = [v6 locationLatitude];
        [v47 doubleValue];
        v13 = v12;
        v45 = [v6 locationLongitude];
        [v45 doubleValue];
        v15 = v14;
        v16 = [v6 locationHorizontalUncertainty];
        [v16 doubleValue];
        v18 = v17;
        v19 = [v6 locationAltitude];
        [v19 doubleValue];
        v21 = v20;
        v22 = [v6 locationVerticalUncertainty];
        [v22 doubleValue];
        v24 = v23;
        v25 = [MEMORY[0x277CBEAA8] date];
        v26 = [v6 locationReferenceFrame];
        v27 = [v26 intValue];
        [v6 locationSourceAccuracy];
        v28 = v49 = v11;
        v44 = [v43 initWithLatitude:v25 longitude:v27 horizontalUncertainty:objc_msgSend(v28 altitude:"intValue") verticalUncertainty:v13 date:v15 referenceFrame:v18 speed:v21 sourceAccuracy:{v24, 0.0}];

        v29 = objc_alloc(MEMORY[0x277D01170]);
        v48 = [v6 confidence];
        [v48 doubleValue];
        v31 = v30;
        v32 = [v6 identifier];
        v46 = [v6 placeType];
        [v46 unsignedIntValue];
        v33 = [v6 placeTypeSource];
        [v33 unsignedIntegerValue];
        v51[0] = v8;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
        [v6 placeCustomLabel];
        v36 = v35 = v8;
        v37 = v29;
        v38 = v32;
        v11 = v49;
        v39 = v44;
        v40 = [v37 initWithLocation:v31 confidence:v49 identifier:? type:? typeSource:? visits:? customLabel:? mapItem:?];

        v8 = v35;
      }

      else
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapItem", buf, 2u);
        }

        v40 = 0;
      }
    }

    else
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit", buf, 2u);
      }

      v40 = 0;
    }
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedLocationOfInterestMO.identifier", buf, 2u);
    }

    v40 = 0;
  }

LABEL_23:

  return v40;
}

@end