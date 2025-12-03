@interface RTTripClusterMO
+ (id)managedObjectWithTripCluster:(id)cluster inManagedObjectContext:(id)context;
@end

@implementation RTTripClusterMO

+ (id)managedObjectWithTripCluster:(id)cluster inManagedObjectContext:(id)context
{
  clusterCopy = cluster;
  contextCopy = context;
  v7 = contextCopy;
  if (!clusterCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v17 = 0;
    v13 = "Invalid parameter not satisfying: tripCluster";
    v14 = &v17;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, v14, 2u);
    goto LABEL_7;
  }

  if (contextCopy)
  {
    v8 = [[RTTripClusterMO alloc] initWithContext:contextCopy];
    clusterID = [clusterCopy clusterID];
    [(RTTripClusterMO *)v8 setClusterID:clusterID];

    [clusterCopy startLatitude];
    [(RTTripClusterMO *)v8 setStartLatitude:?];
    [clusterCopy startLongitude];
    [(RTTripClusterMO *)v8 setStartLongitude:?];
    [clusterCopy endLatitude];
    [(RTTripClusterMO *)v8 setEndLatitude:?];
    [clusterCopy endLongitude];
    [(RTTripClusterMO *)v8 setEndLongitude:?];
    -[RTTripClusterMO setCountOfTraversal:](v8, "setCountOfTraversal:", [clusterCopy countOfTraversal]);
    -[RTTripClusterMO setModeOfTransport:](v8, "setModeOfTransport:", [clusterCopy modeOfTransport]);
    lastTimeTaken = [clusterCopy lastTimeTaken];
    [(RTTripClusterMO *)v8 setLastTimeTaken:lastTimeTaken];

    [clusterCopy avgTripTime];
    [(RTTripClusterMO *)v8 setAvgTripTime:?];
    [clusterCopy minTripTime];
    [(RTTripClusterMO *)v8 setMinTripTime:?];
    [clusterCopy maxTripTime];
    [(RTTripClusterMO *)v8 setMaxTripTime:?];
    [clusterCopy avgTripDistance];
    [(RTTripClusterMO *)v8 setAvgTripDistance:?];
    [clusterCopy minTripDistance];
    [(RTTripClusterMO *)v8 setMinTripDistance:?];
    [clusterCopy maxTripDistance];
    [(RTTripClusterMO *)v8 setMaxTripDistance:?];
    commuteID = [clusterCopy commuteID];
    [(RTTripClusterMO *)v8 setCommuteID:commuteID];

    -[RTTripClusterMO setIsLocked:](v8, "setIsLocked:", [clusterCopy isLocked]);
    [clusterCopy avgBikeDistance];
    [(RTTripClusterMO *)v8 setAvgBikeDistance:?];
    [clusterCopy avgBikeTime];
    [(RTTripClusterMO *)v8 setAvgBikeTime:?];
    [clusterCopy avgWalkDistance];
    [(RTTripClusterMO *)v8 setAvgWalkDistance:?];
    [clusterCopy avgWalkTime];
    [(RTTripClusterMO *)v8 setAvgWalkTime:?];
    -[RTTripClusterMO setCountOfBikeTraversal:](v8, "setCountOfBikeTraversal:", [clusterCopy countOfBikeTraversal]);
    -[RTTripClusterMO setCountOfWalkTraversal:](v8, "setCountOfWalkTraversal:", [clusterCopy countOfWalkTraversal]);
    -[RTTripClusterMO setClusterOrder:](v8, "setClusterOrder:", [clusterCopy clusterOrder]);
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