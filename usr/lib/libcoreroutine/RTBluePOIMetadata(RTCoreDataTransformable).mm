@interface RTBluePOIMetadata(RTCoreDataTransformable)
+ (id)createWithBluePOIMetadataMO:()RTCoreDataTransformable;
+ (id)createWithManagedObject:()RTCoreDataTransformable;
- (id)managedObjectWithContext:()RTCoreDataTransformable;
- (void)updateManagedObject:()RTCoreDataTransformable;
@end

@implementation RTBluePOIMetadata(RTCoreDataTransformable)

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
      v6 = [objc_opt_class() createWithBluePOIMetadataMO:v5];

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
      v15 = "+[RTBluePOIMetadata(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 37;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTBluePOIMetadata+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithBluePOIMetadataMO:()RTCoreDataTransformable
{
  v3 = MEMORY[0x277D010A8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 identifier];
  v7 = [v4 categoryDenyList];
  v8 = [v4 geoCacheInfo];
  v9 = [v4 modelCalibrationParameters];

  v10 = [v5 initWithIdentifier:v6 categoryDenyList:v7 geoCacheInfo:v8 modelCalibrationParameters:v9];

  return v10;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [RTBluePOIMetadataMO managedObjectWithBluePOIMetadata:a1 inManagedObjectContext:a3];
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

- (void)updateManagedObject:()RTCoreDataTransformable
{
  v6 = a3;
  v4 = [v6 managedObjectContext];
  v5 = [RTBluePOIMetadataMO managedObjectWithBluePOIMetadata:a1 managedObject:v6 inManagedObjectContext:v4];
}

@end