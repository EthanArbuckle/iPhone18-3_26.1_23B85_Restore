@interface RTTripClusterRecencyMO
+ (id)managedObjectWithTripClusterRecency:(id)recency inManagedObjectContext:(id)context;
@end

@implementation RTTripClusterRecencyMO

+ (id)managedObjectWithTripClusterRecency:(id)recency inManagedObjectContext:(id)context
{
  recencyCopy = recency;
  contextCopy = context;
  v7 = contextCopy;
  if (!recencyCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v17 = 0;
    v13 = "Invalid parameter not satisfying: tripClusterRecency";
    v14 = &v17;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, v14, 2u);
    goto LABEL_7;
  }

  if (contextCopy)
  {
    v8 = [[RTTripClusterRecencyMO alloc] initWithContext:contextCopy];
    clusterID = [recencyCopy clusterID];
    [(RTTripClusterRecencyMO *)v8 setClusterID:clusterID];

    startTime = [recencyCopy startTime];
    [(RTTripClusterRecencyMO *)v8 setStartTime:startTime];

    endTime = [recencyCopy endTime];
    [(RTTripClusterRecencyMO *)v8 setEndTime:endTime];

    goto LABEL_8;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v16 = 0;
    v13 = "Invalid parameter not satisfying: managedObjectContext";
    v14 = &v16;
    goto LABEL_12;
  }

LABEL_7:

  v8 = 0;
LABEL_8:

  return v8;
}

@end