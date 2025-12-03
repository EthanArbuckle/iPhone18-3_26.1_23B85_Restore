@interface RTTripClusterRoadTransitionsMO
+ (id)managedObjectWithTripClusterRoadTransitions:(id)transitions inManagedObjectContext:(id)context;
@end

@implementation RTTripClusterRoadTransitionsMO

+ (id)managedObjectWithTripClusterRoadTransitions:(id)transitions inManagedObjectContext:(id)context
{
  transitionsCopy = transitions;
  contextCopy = context;
  v7 = contextCopy;
  if (!transitionsCopy)
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

  if (contextCopy)
  {
    v8 = [[RTTripClusterRoadTransitionsMO alloc] initWithContext:contextCopy];
    clusterID = [transitionsCopy clusterID];
    [(RTTripClusterRoadTransitionsMO *)v8 setClusterID:clusterID];

    -[RTTripClusterRoadTransitionsMO setClRoadIDFrom:](v8, "setClRoadIDFrom:", [transitionsCopy clRoadIDFrom]);
    -[RTTripClusterRoadTransitionsMO setClRoadIDTo:](v8, "setClRoadIDTo:", [transitionsCopy clRoadIDTo]);
    -[RTTripClusterRoadTransitionsMO setCount:](v8, "setCount:", [transitionsCopy count]);
    [transitionsCopy fromStartLatitude];
    [(RTTripClusterRoadTransitionsMO *)v8 setFromStartLatitude:?];
    [transitionsCopy fromStartLongitude];
    [(RTTripClusterRoadTransitionsMO *)v8 setFromStartLongitude:?];
    [transitionsCopy toStartLatitude];
    [(RTTripClusterRoadTransitionsMO *)v8 setToStartLatitude:?];
    [transitionsCopy toStartLongitude];
    [(RTTripClusterRoadTransitionsMO *)v8 setToStartLongitude:?];
    [transitionsCopy fromEndLatitude];
    [(RTTripClusterRoadTransitionsMO *)v8 setFromEndLatitude:?];
    [transitionsCopy fromEndLongitude];
    [(RTTripClusterRoadTransitionsMO *)v8 setFromEndLongitude:?];
    [transitionsCopy toEndLatitude];
    [(RTTripClusterRoadTransitionsMO *)v8 setToEndLatitude:?];
    [transitionsCopy toEndLongitude];
    [(RTTripClusterRoadTransitionsMO *)v8 setToEndLongitude:?];
    startDate = [transitionsCopy startDate];
    [(RTTripClusterRoadTransitionsMO *)v8 setStartDate:startDate];

    -[RTTripClusterRoadTransitionsMO setStartRoadCount:](v8, "setStartRoadCount:", [transitionsCopy startRoadCount]);
    -[RTTripClusterRoadTransitionsMO setEndRoadCount:](v8, "setEndRoadCount:", [transitionsCopy endRoadCount]);
    -[RTTripClusterRoadTransitionsMO setRoadSequenceNumber:](v8, "setRoadSequenceNumber:", [transitionsCopy roadSequenceNumber]);
    [transitionsCopy familiarityMetric];
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