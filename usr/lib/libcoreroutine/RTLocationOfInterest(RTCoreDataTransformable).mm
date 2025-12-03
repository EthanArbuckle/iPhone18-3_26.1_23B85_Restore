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
  identifier = [v3 identifier];

  if (!identifier)
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

  placeIdentifier = [v3 placeIdentifier];

  if (!placeIdentifier)
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
  visits = [v3 visits];
  array = [visits array];
  v9 = [(_RTMap *)v6 initWithInput:array];
  v10 = [(_RTMap *)v9 withBlock:&__block_literal_global_34];

  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"entryDate" ascending:1];
  v57[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
  v13 = [v10 sortedArrayUsingDescriptors:v12];

  v14 = MEMORY[0x277D011A0];
  mapItem = [v3 mapItem];
  v16 = [v14 createWithManagedObject:mapItem];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277D01160]);
    locationLatitude = [v3 locationLatitude];
    [locationLatitude doubleValue];
    v19 = v18;
    locationLongitude = [v3 locationLongitude];
    [locationLongitude doubleValue];
    v22 = v21;
    locationHorizontalUncertainty = [v3 locationHorizontalUncertainty];
    [locationHorizontalUncertainty doubleValue];
    v25 = v24;
    locationAltitude = [v3 locationAltitude];
    [locationAltitude doubleValue];
    v28 = v27;
    [v3 locationVerticalUncertainty];
    v29 = v52 = v10;
    [v29 doubleValue];
    v31 = v30;
    [MEMORY[0x277CBEAA8] date];
    v32 = v55 = v16;
    [v3 locationReferenceFrame];
    v33 = v54 = v11;
    intValue = [v33 intValue];
    locationSourceAccuracy = [v3 locationSourceAccuracy];
    v36 = [v17 initWithLatitude:v32 longitude:intValue horizontalUncertainty:objc_msgSend(locationSourceAccuracy altitude:"intValue") verticalUncertainty:v19 date:v22 referenceFrame:v25 speed:v28 sourceAccuracy:{v31, 0.0}];

    v37 = objc_alloc(MEMORY[0x277D01170]);
    confidence = [v3 confidence];
    [confidence doubleValue];
    v40 = v39;
    identifier2 = [v3 identifier];
    placeType = [v3 placeType];
    unsignedIntValue = [placeType unsignedIntValue];
    placeTypeSource = [v3 placeTypeSource];
    unsignedIntegerValue = [placeTypeSource unsignedIntegerValue];
    placeCustomLabel = [v3 placeCustomLabel];
    v47 = v37;
    v16 = v55;
    v48 = unsignedIntegerValue;
    v10 = v52;
    v49 = [v47 initWithLocation:v36 confidence:identifier2 identifier:unsignedIntValue type:v48 typeSource:v52 visits:placeCustomLabel customLabel:v40 mapItem:v55];

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
    locationOfInterest = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(locationOfInterest, OS_LOG_TYPE_ERROR))
    {
LABEL_10:
      v40 = 0;
      goto LABEL_23;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: learnedLocationOfInterestVisitMO";
LABEL_27:
    _os_log_error_impl(&dword_2304B3000, locationOfInterest, OS_LOG_TYPE_ERROR, v41, buf, 2u);
    goto LABEL_10;
  }

  identifier = [v3 identifier];

  if (!identifier)
  {
    locationOfInterest = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(locationOfInterest, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v41 = "Invalid parameter not satisfying: learnedLocationOfInterestVisitMO.identifier";
    goto LABEL_27;
  }

  locationOfInterest = [v4 locationOfInterest];
  identifier2 = [locationOfInterest identifier];

  if (identifier2)
  {
    v8 = [MEMORY[0x277D01188] createWithManagedObject:v4];
    if (v8)
    {
      v9 = MEMORY[0x277D011A0];
      mapItem = [locationOfInterest mapItem];
      v11 = [v9 createWithManagedObject:mapItem];

      if (v11)
      {
        v43 = objc_alloc(MEMORY[0x277D01160]);
        locationLatitude = [locationOfInterest locationLatitude];
        [locationLatitude doubleValue];
        v13 = v12;
        locationLongitude = [locationOfInterest locationLongitude];
        [locationLongitude doubleValue];
        v15 = v14;
        locationHorizontalUncertainty = [locationOfInterest locationHorizontalUncertainty];
        [locationHorizontalUncertainty doubleValue];
        v18 = v17;
        locationAltitude = [locationOfInterest locationAltitude];
        [locationAltitude doubleValue];
        v21 = v20;
        locationVerticalUncertainty = [locationOfInterest locationVerticalUncertainty];
        [locationVerticalUncertainty doubleValue];
        v24 = v23;
        date = [MEMORY[0x277CBEAA8] date];
        locationReferenceFrame = [locationOfInterest locationReferenceFrame];
        intValue = [locationReferenceFrame intValue];
        [locationOfInterest locationSourceAccuracy];
        v28 = v49 = v11;
        v44 = [v43 initWithLatitude:date longitude:intValue horizontalUncertainty:objc_msgSend(v28 altitude:"intValue") verticalUncertainty:v13 date:v15 referenceFrame:v18 speed:v21 sourceAccuracy:{v24, 0.0}];

        v29 = objc_alloc(MEMORY[0x277D01170]);
        confidence = [locationOfInterest confidence];
        [confidence doubleValue];
        v31 = v30;
        identifier3 = [locationOfInterest identifier];
        placeType = [locationOfInterest placeType];
        [placeType unsignedIntValue];
        placeTypeSource = [locationOfInterest placeTypeSource];
        [placeTypeSource unsignedIntegerValue];
        v51[0] = v8;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
        [locationOfInterest placeCustomLabel];
        v36 = v35 = v8;
        v37 = v29;
        v38 = identifier3;
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