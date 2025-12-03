@interface RTPointOfInterest(RTCoreDataTransformable)
+ (id)createWithManagedObject:()RTCoreDataTransformable;
+ (id)createWithPointOfInterestMO:()RTCoreDataTransformable;
- (id)managedObjectWithContext:()RTCoreDataTransformable;
@end

@implementation RTPointOfInterest(RTCoreDataTransformable)

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
      v6 = [objc_opt_class() createWithPointOfInterestMO:v5];

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
      v15 = "+[RTPointOfInterest(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 38;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTPointOfInterest+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithPointOfInterestMO:()RTCoreDataTransformable
{
  v3 = MEMORY[0x277D01160];
  v4 = a3;
  v5 = [v3 alloc];
  locationLatitude = [v4 locationLatitude];
  [locationLatitude doubleValue];
  v8 = v7;
  locationLongitude = [v4 locationLongitude];
  [locationLongitude doubleValue];
  v11 = [v5 initWithLatitude:0 longitude:v8 horizontalUncertainty:v10 date:-1.0];

  v12 = objc_alloc(MEMORY[0x277D011F0]);
  identifier = [v4 identifier];
  applePaySupport = [v4 applePaySupport];
  filtered = [v4 filtered];
  fullyCoversTile = [v4 fullyCoversTile];
  muid = [v4 muid];
  unsignedIntegerValue = [muid unsignedIntegerValue];
  polygon = [v4 polygon];

  v20 = [v12 initWithIdentifier:identifier applePaySupport:applePaySupport filtered:filtered fullyCoversTile:fullyCoversTile location:v11 muid:unsignedIntegerValue polygon:polygon];

  return v20;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [RTPointOfInterestMO managedObjectWithPointOfInterest:self inManagedObjectContext:a3];
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