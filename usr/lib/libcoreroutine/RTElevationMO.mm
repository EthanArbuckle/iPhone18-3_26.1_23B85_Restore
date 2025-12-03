@interface RTElevationMO
+ (id)managedObjectWithElevation:(id)elevation inManagedObjectContext:(id)context;
@end

@implementation RTElevationMO

+ (id)managedObjectWithElevation:(id)elevation inManagedObjectContext:(id)context
{
  elevationCopy = elevation;
  contextCopy = context;
  v7 = contextCopy;
  if (!elevationCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v16 = 0;
    v12 = "Invalid parameter not satisfying: elevation";
    v13 = &v16;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    goto LABEL_7;
  }

  if (contextCopy)
  {
    v8 = [[RTElevationMO alloc] initWithContext:contextCopy];
    [elevationCopy elevation];
    [(RTElevationMO *)v8 setElevation:?];
    startDate = [elevationCopy startDate];
    [(RTElevationMO *)v8 setStartDate:startDate];

    endDate = [elevationCopy endDate];
    [(RTElevationMO *)v8 setEndDate:endDate];

    [elevationCopy elevationUncertainty];
    [(RTElevationMO *)v8 setElevationUncertainty:?];
    -[RTElevationMO setEstimationStatus:](v8, "setEstimationStatus:", [elevationCopy estimationStatus]);
    goto LABEL_8;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v15 = 0;
    v12 = "Invalid parameter not satisfying: managedObjectContext";
    v13 = &v15;
    goto LABEL_12;
  }

LABEL_7:

  v8 = 0;
LABEL_8:

  return v8;
}

@end