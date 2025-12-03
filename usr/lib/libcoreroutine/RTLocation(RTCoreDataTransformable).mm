@interface RTLocation(RTCoreDataTransformable)
+ (id)createWithManagedObject:()RTCoreDataTransformable;
+ (id)createWithMapItemMO:()RTCoreDataTransformable;
@end

@implementation RTLocation(RTCoreDataTransformable)

+ (id)createWithManagedObject:()RTCoreDataTransformable
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_opt_class() createWithMapItemMO:v3];
      goto LABEL_8;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412802;
      v8 = v3;
      v9 = 2080;
      v10 = "+[RTLocation(RTCoreDataTransformable) createWithManagedObject:]";
      v11 = 1024;
      v12 = 32;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "managedObject, %@, is not supported by RTLocation+CoreDataTransformable (in %s:%d)", &v7, 0x1Cu);
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

+ (id)createWithMapItemMO:()RTCoreDataTransformable
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D01160]);
    latitude = [v3 latitude];
    [latitude doubleValue];
    v7 = v6;
    longitude = [v3 longitude];
    [longitude doubleValue];
    v10 = v9;
    uncertainty = [v3 uncertainty];
    [uncertainty doubleValue];
    v13 = v12;
    creationDate = [v3 creationDate];
    referenceFrame = [v3 referenceFrame];
    v16 = [v4 initWithLatitude:creationDate longitude:objc_msgSend(referenceFrame horizontalUncertainty:"intValue") date:v7 referenceFrame:{v10, v13}];
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapItemMO", v19, 2u);
    }

    v16 = 0;
  }

  return v16;
}

@end