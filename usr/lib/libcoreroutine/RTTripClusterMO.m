@interface RTTripClusterMO
+ (id)managedObjectWithTripCluster:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTTripClusterMO

+ (id)managedObjectWithTripCluster:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
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

  if (v6)
  {
    v8 = [[RTTripClusterMO alloc] initWithContext:v6];
    v9 = [v5 clusterID];
    [(RTTripClusterMO *)v8 setClusterID:v9];

    [v5 startLatitude];
    [(RTTripClusterMO *)v8 setStartLatitude:?];
    [v5 startLongitude];
    [(RTTripClusterMO *)v8 setStartLongitude:?];
    [v5 endLatitude];
    [(RTTripClusterMO *)v8 setEndLatitude:?];
    [v5 endLongitude];
    [(RTTripClusterMO *)v8 setEndLongitude:?];
    -[RTTripClusterMO setCountOfTraversal:](v8, "setCountOfTraversal:", [v5 countOfTraversal]);
    -[RTTripClusterMO setModeOfTransport:](v8, "setModeOfTransport:", [v5 modeOfTransport]);
    v10 = [v5 lastTimeTaken];
    [(RTTripClusterMO *)v8 setLastTimeTaken:v10];

    [v5 avgTripTime];
    [(RTTripClusterMO *)v8 setAvgTripTime:?];
    [v5 minTripTime];
    [(RTTripClusterMO *)v8 setMinTripTime:?];
    [v5 maxTripTime];
    [(RTTripClusterMO *)v8 setMaxTripTime:?];
    [v5 avgTripDistance];
    [(RTTripClusterMO *)v8 setAvgTripDistance:?];
    [v5 minTripDistance];
    [(RTTripClusterMO *)v8 setMinTripDistance:?];
    [v5 maxTripDistance];
    [(RTTripClusterMO *)v8 setMaxTripDistance:?];
    v11 = [v5 commuteID];
    [(RTTripClusterMO *)v8 setCommuteID:v11];

    -[RTTripClusterMO setIsLocked:](v8, "setIsLocked:", [v5 isLocked]);
    [v5 avgBikeDistance];
    [(RTTripClusterMO *)v8 setAvgBikeDistance:?];
    [v5 avgBikeTime];
    [(RTTripClusterMO *)v8 setAvgBikeTime:?];
    [v5 avgWalkDistance];
    [(RTTripClusterMO *)v8 setAvgWalkDistance:?];
    [v5 avgWalkTime];
    [(RTTripClusterMO *)v8 setAvgWalkTime:?];
    -[RTTripClusterMO setCountOfBikeTraversal:](v8, "setCountOfBikeTraversal:", [v5 countOfBikeTraversal]);
    -[RTTripClusterMO setCountOfWalkTraversal:](v8, "setCountOfWalkTraversal:", [v5 countOfWalkTraversal]);
    -[RTTripClusterMO setClusterOrder:](v8, "setClusterOrder:", [v5 clusterOrder]);
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