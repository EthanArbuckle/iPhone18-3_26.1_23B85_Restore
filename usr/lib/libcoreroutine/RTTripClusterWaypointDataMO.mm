@interface RTTripClusterWaypointDataMO
+ (id)managedObjectWithTripClusterWaypoints:(id)waypoints inManagedObjectContext:(id)context;
@end

@implementation RTTripClusterWaypointDataMO

+ (id)managedObjectWithTripClusterWaypoints:(id)waypoints inManagedObjectContext:(id)context
{
  waypointsCopy = waypoints;
  contextCopy = context;
  v7 = contextCopy;
  if (!waypointsCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v16 = 0;
    v12 = "Invalid parameter not satisfying: tripClusterWaypointsData";
    v13 = &v16;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    goto LABEL_7;
  }

  if (contextCopy)
  {
    v8 = [[RTTripClusterWaypointDataMO alloc] initWithContext:contextCopy];
    clusterID = [waypointsCopy clusterID];
    [(RTTripClusterWaypointDataMO *)v8 setClusterID:clusterID];

    waypoints = [waypointsCopy waypoints];
    [(RTTripClusterWaypointDataMO *)v8 setWaypoints:waypoints];

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