@interface RTTripClusterRouteMO
+ (id)managedObjectWithTripClusterLocations:(id)locations inManagedObjectContext:(id)context;
@end

@implementation RTTripClusterRouteMO

+ (id)managedObjectWithTripClusterLocations:(id)locations inManagedObjectContext:(id)context
{
  locationsCopy = locations;
  contextCopy = context;
  v7 = contextCopy;
  if (!locationsCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v15 = 0;
    v11 = "Invalid parameter not satisfying: tripClusterLocations";
    v12 = &v15;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    goto LABEL_7;
  }

  if (contextCopy)
  {
    v8 = [[RTTripClusterRouteMO alloc] initWithContext:contextCopy];
    -[RTTripClusterRouteMO setClRoadID:](v8, "setClRoadID:", [locationsCopy clRoadID]);
    clusterID = [locationsCopy clusterID];
    [(RTTripClusterRouteMO *)v8 setClusterID:clusterID];

    [locationsCopy latitude];
    [(RTTripClusterRouteMO *)v8 setLatitude:?];
    [locationsCopy longitude];
    [(RTTripClusterRouteMO *)v8 setLongitude:?];
    [locationsCopy course];
    [(RTTripClusterRouteMO *)v8 setCourse:?];
    -[RTTripClusterRouteMO setSequence:](v8, "setSequence:", [locationsCopy sequence]);
    -[RTTripClusterRouteMO setFollowedByUTurn:](v8, "setFollowedByUTurn:", [locationsCopy followedByUTurn]);
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