@interface CLLocation(RTCoreDataTransformable)
+ (id)createWithManagedObject:()RTCoreDataTransformable;
+ (id)createWithRTCLLocationMO:()RTCoreDataTransformable;
- (id)managedObjectWithContext:()RTCoreDataTransformable;
@end

@implementation CLLocation(RTCoreDataTransformable)

+ (id)createWithManagedObject:()RTCoreDataTransformable
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    LOWORD(v10) = 0;
    v6 = "Invalid parameter not satisfying: managedObject";
    v7 = v5;
    v8 = 2;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, v6, &v10, v8);
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_opt_class() createWithRTCLLocationMO:v3];
    goto LABEL_8;
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412802;
    v11 = v3;
    v12 = 2080;
    v13 = "+[CLLocation(RTCoreDataTransformable) createWithManagedObject:]";
    v14 = 1024;
    v15 = 31;
    v6 = "managedObject, %@, is not supported by CLLocation+CoreDataTransformable (in %s:%d)";
    v7 = v5;
    v8 = 28;
    goto LABEL_12;
  }

LABEL_7:

  v4 = 0;
LABEL_8:

  return v4;
}

+ (id)createWithRTCLLocationMO:()RTCoreDataTransformable
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CE41F8]) initWithRTCLLocationMO:v3];
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: rtCLLocationMO", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  v4 = a3;
  if (v4)
  {
    [self coordinate];
    v29 = v5;
    [self coordinate];
    v7 = v6;
    [self altitude];
    v9 = v8;
    [self horizontalAccuracy];
    v11 = v10;
    [self verticalAccuracy];
    v13 = v12;
    [self course];
    v15 = v14;
    [self courseAccuracy];
    v17 = v16;
    [self speed];
    v19 = v18;
    [self speedAccuracy];
    v21 = v20;
    timestamp = [self timestamp];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "type")}];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "signalEnvironmentType")}];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(self, "integrity")}];
    v26 = [RTCLLocationMO managedObjectWithLatitude:timestamp longitude:v23 altitude:v24 horizontalAccuracy:v25 verticalAccuracy:v4 course:v29 courseAccuracy:v7 speed:v9 speedAccuracy:v11 timestamp:v13 type:v15 signalEnvironmentType:v17 integrity:v19 inManagedObjectContext:v21];
  }

  else
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", buf, 2u);
    }

    v26 = 0;
  }

  return v26;
}

@end