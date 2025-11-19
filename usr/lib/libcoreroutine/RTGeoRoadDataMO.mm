@interface RTGeoRoadDataMO
+ (id)managedObjectWithGeoRoadData:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTGeoRoadDataMO

+ (id)managedObjectWithGeoRoadData:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v14 = 0;
    v10 = "Invalid parameter not satisfying: geoRoadData";
    v11 = &v14;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = [[RTGeoRoadDataMO alloc] initWithContext:v6];
    -[RTGeoRoadDataMO setClRoadID:](v8, "setClRoadID:", [v5 clRoadID]);
    -[RTGeoRoadDataMO setGeoRoadID:](v8, "setGeoRoadID:", [v5 geoRoadID]);
    -[RTGeoRoadDataMO setRoadTraversedCount:](v8, "setRoadTraversedCount:", [v5 roadTraversedCount]);
    [v5 geoRoadStartLatitude];
    [(RTGeoRoadDataMO *)v8 setGeoRoadStartLatitude:?];
    [v5 geoRoadStartLongitude];
    [(RTGeoRoadDataMO *)v8 setGeoRoadStartLongitude:?];
    [v5 geoRoadEndLatitude];
    [(RTGeoRoadDataMO *)v8 setGeoRoadEndLatitude:?];
    [v5 geoRoadEndLongitude];
    [(RTGeoRoadDataMO *)v8 setGeoRoadEndLongitude:?];
    -[RTGeoRoadDataMO setGeoRoadClass:](v8, "setGeoRoadClass:", [v5 geoRoadClass]);
    -[RTGeoRoadDataMO setGeoFormOfWay:](v8, "setGeoFormOfWay:", [v5 geoFormOfWay]);
    goto LABEL_8;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v13 = 0;
    v10 = "Invalid parameter not satisfying: managedObjectContext";
    v11 = &v13;
    goto LABEL_12;
  }

LABEL_7:

  v8 = 0;
LABEL_8:

  return v8;
}

@end