@interface RTPlaceInferenceQuery(RTCoreDataTransformable)
+ (id)createWithManagedObject:()RTCoreDataTransformable;
+ (id)createWithPlaceInferenceQueryMO:()RTCoreDataTransformable;
- (id)managedObjectWithContext:()RTCoreDataTransformable;
@end

@implementation RTPlaceInferenceQuery(RTCoreDataTransformable)

+ (id)createWithManagedObject:()RTCoreDataTransformable
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [objc_opt_class() createWithPlaceInferenceQueryMO:v5];

      goto LABEL_8;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = 138413058;
      v11 = v9;
      v12 = 2112;
      v14 = 2080;
      v13 = v4;
      v15 = "+[RTPlaceInferenceQuery(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 36;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTPlaceInferenceQuery+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithPlaceInferenceQueryMO:()RTCoreDataTransformable
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277D01160]);
  [v3 locationLatitude];
  v6 = v5;
  [v3 locationLongitude];
  v8 = v7;
  [v3 locationUncertainty];
  v10 = v9;
  locationDate = [v3 locationDate];
  locationReferenceFrame = [v3 locationReferenceFrame];
  v13 = [v4 initWithLatitude:locationDate longitude:objc_msgSend(locationReferenceFrame horizontalUncertainty:"intValue") date:v6 referenceFrame:{v8, v10}];

  mapItem = [v3 mapItem];

  if (mapItem)
  {
    v15 = MEMORY[0x277D011A0];
    mapItem2 = [v3 mapItem];
    mapItem = [v15 createWithManagedObject:mapItem2];
  }

  v17 = objc_alloc(MEMORY[0x277D011D8]);
  userType = [v3 userType];
  unsignedIntegerValue = [userType unsignedIntegerValue];
  userTypeSource = [v3 userTypeSource];
  unsignedIntegerValue2 = [userTypeSource unsignedIntegerValue];
  placeType = [v3 placeType];
  unsignedIntegerValue3 = [placeType unsignedIntegerValue];
  [v3 confidence];
  v36 = [v17 initWithMapItem:mapItem userType:unsignedIntegerValue userTypeSource:unsignedIntegerValue2 placeType:unsignedIntegerValue3 referenceLocation:v13 confidence:0 loiIdentifier:?];

  v24 = objc_alloc(MEMORY[0x277D011E8]);
  identifier = [v3 identifier];
  date = [v3 date];
  errorCode = [v3 errorCode];
  integerValue = [errorCode integerValue];
  fidelityPolicyMask = [v3 fidelityPolicyMask];
  v35 = v13;
  unsignedIntegerValue4 = [fidelityPolicyMask unsignedIntegerValue];
  [v3 sourceIdentifier];
  v32 = v31 = mapItem;
  v33 = [v24 initWithIdentifier:identifier date:date errorCode:integerValue fidelityPolicyMask:unsignedIntegerValue4 placeInference:v36 sourceIdentifier:v32];

  return v33;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [RTPlaceInferenceQueryMO managedObjectWithPlaceInferenceQuery:self inManagedObjectContext:a3];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

@end