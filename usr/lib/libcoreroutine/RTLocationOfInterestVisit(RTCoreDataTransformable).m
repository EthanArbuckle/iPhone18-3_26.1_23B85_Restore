@interface RTLocationOfInterestVisit(RTCoreDataTransformable)
+ (id)createWithLearnedLocationOfInterestVisitMO:()RTCoreDataTransformable;
+ (id)createWithManagedObject:()RTCoreDataTransformable;
@end

@implementation RTLocationOfInterestVisit(RTCoreDataTransformable)

+ (id)createWithManagedObject:()RTCoreDataTransformable
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithLearnedLocationOfInterestVisitMO:v3];
      goto LABEL_8;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412802;
      v8 = v3;
      v9 = 2080;
      v10 = "+[RTLocationOfInterestVisit(RTCoreDataTransformable) createWithManagedObject:]";
      v11 = 1024;
      v12 = 33;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "managedObject, %@, is not supported by RTLocationOfInterestVisit+CoreDataTransformable (in %s:%d)", &v7, 0x1Cu);
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

+ (id)createWithLearnedLocationOfInterestVisitMO:()RTCoreDataTransformable
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D01160]);
    v5 = [v3 locationLatitude];
    [v5 doubleValue];
    v7 = v6;
    v8 = [v3 locationLongitude];
    [v8 doubleValue];
    v10 = v9;
    v11 = [v3 locationHorizontalUncertainty];
    [v11 doubleValue];
    v13 = v12;
    v14 = [v3 locationAltitude];
    [v14 doubleValue];
    v16 = v15;
    v17 = [v3 locationVerticalUncertainty];
    [v17 doubleValue];
    v19 = v18;
    v20 = [v3 locationReferenceFrame];
    v21 = [v20 intValue];
    v22 = [v3 locationSourceAccuracy];
    v23 = [v4 initWithLatitude:0 longitude:v21 horizontalUncertainty:objc_msgSend(v22 altitude:"intValue") verticalUncertainty:v7 date:v10 referenceFrame:v13 speed:v16 sourceAccuracy:{v19, 0.0}];

    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x277D01188]);
      v25 = [v3 identifier];
      v26 = [v3 entryDate];
      v27 = [v3 exitDate];
      v28 = [v3 locationOfInterestConfidence];
      [v28 doubleValue];
      v30 = v29;
      v31 = [v3 locationOfInterestSource];
      v32 = [v24 initWithIdentifier:v25 entry:v26 exit:v27 location:v23 locationOfInterestConfidence:objc_msgSend(v31 locationOfInterestSource:{"unsignedIntegerValue"), v30}];
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *v35 = 0;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: learnedLocationOfInterestVisitMO", v35, 2u);
    }

    v32 = 0;
  }

  return v32;
}

@end