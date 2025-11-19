@interface RTTripClusterRoadTransitionsMO
+ (id)managedObjectWithTripClusterRoadTransitions:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTTripClusterRoadTransitionsMO

+ (id)managedObjectWithTripClusterRoadTransitions:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v16 = 0;
    v12 = "Invalid parameter not satisfying: tripClusterRoadTransitions";
    v13 = &v16;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = [[RTTripClusterRoadTransitionsMO alloc] initWithContext:v6];
    v9 = [v5 clusterID];
    [(RTTripClusterRoadTransitionsMO *)v8 setClusterID:v9];

    -[RTTripClusterRoadTransitionsMO setClRoadIDFrom:](v8, "setClRoadIDFrom:", [v5 clRoadIDFrom]);
    -[RTTripClusterRoadTransitionsMO setClRoadIDTo:](v8, "setClRoadIDTo:", [v5 clRoadIDTo]);
    -[RTTripClusterRoadTransitionsMO setCount:](v8, "setCount:", [v5 count]);
    [v5 fromStartLatitude];
    [(RTTripClusterRoadTransitionsMO *)v8 setFromStartLatitude:?];
    [v5 fromStartLongitude];
    [(RTTripClusterRoadTransitionsMO *)v8 setFromStartLongitude:?];
    [v5 toStartLatitude];
    [(RTTripClusterRoadTransitionsMO *)v8 setToStartLatitude:?];
    [v5 toStartLongitude];
    [(RTTripClusterRoadTransitionsMO *)v8 setToStartLongitude:?];
    [v5 fromEndLatitude];
    [(RTTripClusterRoadTransitionsMO *)v8 setFromEndLatitude:?];
    [v5 fromEndLongitude];
    [(RTTripClusterRoadTransitionsMO *)v8 setFromEndLongitude:?];
    [v5 toEndLatitude];
    [(RTTripClusterRoadTransitionsMO *)v8 setToEndLatitude:?];
    [v5 toEndLongitude];
    [(RTTripClusterRoadTransitionsMO *)v8 setToEndLongitude:?];
    v10 = [v5 startDate];
    [(RTTripClusterRoadTransitionsMO *)v8 setStartDate:v10];

    -[RTTripClusterRoadTransitionsMO setStartRoadCount:](v8, "setStartRoadCount:", [v5 startRoadCount]);
    -[RTTripClusterRoadTransitionsMO setEndRoadCount:](v8, "setEndRoadCount:", [v5 endRoadCount]);
    -[RTTripClusterRoadTransitionsMO setRoadSequenceNumber:](v8, "setRoadSequenceNumber:", [v5 roadSequenceNumber]);
    [v5 familiarityMetric];
    [(RTTripClusterRoadTransitionsMO *)v8 setFamiliarityMetric:?];
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