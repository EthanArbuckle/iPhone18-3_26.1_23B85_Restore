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
    locationLatitude = [v3 locationLatitude];
    [locationLatitude doubleValue];
    v7 = v6;
    locationLongitude = [v3 locationLongitude];
    [locationLongitude doubleValue];
    v10 = v9;
    locationHorizontalUncertainty = [v3 locationHorizontalUncertainty];
    [locationHorizontalUncertainty doubleValue];
    v13 = v12;
    locationAltitude = [v3 locationAltitude];
    [locationAltitude doubleValue];
    v16 = v15;
    locationVerticalUncertainty = [v3 locationVerticalUncertainty];
    [locationVerticalUncertainty doubleValue];
    v19 = v18;
    locationReferenceFrame = [v3 locationReferenceFrame];
    intValue = [locationReferenceFrame intValue];
    locationSourceAccuracy = [v3 locationSourceAccuracy];
    v23 = [v4 initWithLatitude:0 longitude:intValue horizontalUncertainty:objc_msgSend(locationSourceAccuracy altitude:"intValue") verticalUncertainty:v7 date:v10 referenceFrame:v13 speed:v16 sourceAccuracy:{v19, 0.0}];

    if (v23)
    {
      v24 = objc_alloc(MEMORY[0x277D01188]);
      identifier = [v3 identifier];
      entryDate = [v3 entryDate];
      exitDate = [v3 exitDate];
      locationOfInterestConfidence = [v3 locationOfInterestConfidence];
      [locationOfInterestConfidence doubleValue];
      v30 = v29;
      locationOfInterestSource = [v3 locationOfInterestSource];
      v32 = [v24 initWithIdentifier:identifier entry:entryDate exit:exitDate location:v23 locationOfInterestConfidence:objc_msgSend(locationOfInterestSource locationOfInterestSource:{"unsignedIntegerValue"), v30}];
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