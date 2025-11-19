@interface CLTripSegmentInertialData(RTCoreDataTransformable)
+ (id)createWithManagedObject:()RTCoreDataTransformable;
+ (id)createWithTripSegmentInertialDataMO:()RTCoreDataTransformable;
- (id)managedObjectWithContext:()RTCoreDataTransformable;
@end

@implementation CLTripSegmentInertialData(RTCoreDataTransformable)

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
      v6 = [objc_opt_class() createWithTripSegmentInertialDataMO:v5];

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
      v15 = "+[CLTripSegmentInertialData(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 35;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTTripSegmentInertialData+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithTripSegmentInertialDataMO:()RTCoreDataTransformable
{
  v3 = MEMORY[0x277CBFC88];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 timestamp];
  [v4 dataPeriodSec];
  v8 = v7;
  [v4 deltaCourseRad];
  v10 = v9;
  [v4 deltaSpeedMps];
  v12 = v11;
  [v4 deltaCourseVarRad2];
  v14 = v13;
  [v4 deltaSpeedVarMps2];
  v16 = v15;
  [v4 deltaCourseSpeedCovRadMps];
  v18 = v17;

  v19 = [v5 initWithTime:v6 dataPeriodSec:v8 deltaCourseRad:v10 deltaSpeedMps:v12 deltaCourseVarRad2:v14 deltaSpeedVarMps2:v16 deltaCourseSpeedCovarRadMps:v18];

  return v19;
}

- (id)managedObjectWithContext:()RTCoreDataTransformable
{
  if (a3)
  {
    v3 = [RTTripSegmentInertialDataMO managedObjectWithTripSegmentInertialData:a1 inManagedObjectContext:a3];
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