@interface RTTripSegmentInertialDataMO
+ (id)managedObjectWithTripSegmentInertialData:(id)data inManagedObjectContext:(id)context;
@end

@implementation RTTripSegmentInertialDataMO

+ (id)managedObjectWithTripSegmentInertialData:(id)data inManagedObjectContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v7 = contextCopy;
  if (!dataCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v15 = 0;
    v11 = "Invalid parameter not satisfying: inertialData";
    v12 = &v15;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    goto LABEL_7;
  }

  if (contextCopy)
  {
    v8 = [[RTTripSegmentInertialDataMO alloc] initWithContext:contextCopy];
    timestamp = [dataCopy timestamp];
    [(RTTripSegmentInertialDataMO *)v8 setTimestamp:timestamp];

    [dataCopy dataPeriod_s];
    [(RTTripSegmentInertialDataMO *)v8 setDataPeriodSec:?];
    [dataCopy deltaCourse_rad];
    [(RTTripSegmentInertialDataMO *)v8 setDeltaCourseRad:?];
    [dataCopy deltaSpeed_mps];
    [(RTTripSegmentInertialDataMO *)v8 setDeltaSpeedMps:?];
    [dataCopy deltaCourseVar_rad2];
    [(RTTripSegmentInertialDataMO *)v8 setDeltaCourseVarRad2:?];
    [dataCopy deltaSpeedVar_mps2];
    [(RTTripSegmentInertialDataMO *)v8 setDeltaSpeedVarMps2:?];
    [dataCopy deltaCourseSpeedCovar_radmps];
    [(RTTripSegmentInertialDataMO *)v8 setDeltaCourseSpeedCovRadMps:?];
    goto LABEL_8;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v14 = 0;
    v11 = "Invalid parameter not satisfying: managedObjectContext";
    v12 = &v14;
    goto LABEL_12;
  }

LABEL_7:

  v8 = 0;
LABEL_8:

  return v8;
}

@end