@interface RTTripClusterRouteMO
+ (id)managedObjectWithTripClusterLocations:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTTripClusterRouteMO

+ (id)managedObjectWithTripClusterLocations:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
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

  if (v6)
  {
    v8 = [[RTTripClusterRouteMO alloc] initWithContext:v6];
    -[RTTripClusterRouteMO setClRoadID:](v8, "setClRoadID:", [v5 clRoadID]);
    v9 = [v5 clusterID];
    [(RTTripClusterRouteMO *)v8 setClusterID:v9];

    [v5 latitude];
    [(RTTripClusterRouteMO *)v8 setLatitude:?];
    [v5 longitude];
    [(RTTripClusterRouteMO *)v8 setLongitude:?];
    [v5 course];
    [(RTTripClusterRouteMO *)v8 setCourse:?];
    -[RTTripClusterRouteMO setSequence:](v8, "setSequence:", [v5 sequence]);
    -[RTTripClusterRouteMO setFollowedByUTurn:](v8, "setFollowedByUTurn:", [v5 followedByUTurn]);
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