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
  v11 = [v3 locationDate];
  v12 = [v3 locationReferenceFrame];
  v13 = [v4 initWithLatitude:v11 longitude:objc_msgSend(v12 horizontalUncertainty:"intValue") date:v6 referenceFrame:{v8, v10}];

  v14 = [v3 mapItem];

  if (v14)
  {
    v15 = MEMORY[0x277D011A0];
    v16 = [v3 mapItem];
    v14 = [v15 createWithManagedObject:v16];
  }

  v17 = objc_alloc(MEMORY[0x277D011D8]);
  v18 = [v3 userType];
  v19 = [v18 unsignedIntegerValue];
  v20 = [v3 userTypeSource];
  v21 = [v20 unsignedIntegerValue];
  v22 = [v3 placeType];
  v23 = [v22 unsignedIntegerValue];
  [v3 confidence];
  v36 = [v17 initWithMapItem:v14 userType:v19 userTypeSource:v21 placeType:v23 referenceLocation:v13 confidence:0 loiIdentifier:?];

  v24 = objc_alloc(MEMORY[0x277D011E8]);
  v25 = [v3 identifier];
  v26 = [v3 date];
  v27 = [v3 errorCode];
  v28 = [v27 integerValue];
  v29 = [v3 fidelityPolicyMask];
  v35 = v13;
  v30 = [v29 unsignedIntegerValue];
  [v3 sourceIdentifier];
  v32 = v31 = v14;
  v33 = [v24 initWithIdentifier:v25 date:v26 errorCode:v28 fidelityPolicyMask:v30 placeInference:v36 sourceIdentifier:v32];

  return v33;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [RTPlaceInferenceQueryMO managedObjectWithPlaceInferenceQuery:a1 inManagedObjectContext:a3];
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