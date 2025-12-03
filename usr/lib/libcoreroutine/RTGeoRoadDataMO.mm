@interface RTGeoRoadDataMO
+ (id)managedObjectWithGeoRoadData:(id)data inManagedObjectContext:(id)context;
@end

@implementation RTGeoRoadDataMO

+ (id)managedObjectWithGeoRoadData:(id)data inManagedObjectContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v7 = contextCopy;
  if (!dataCopy)
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

  if (contextCopy)
  {
    v8 = [[RTGeoRoadDataMO alloc] initWithContext:contextCopy];
    -[RTGeoRoadDataMO setClRoadID:](v8, "setClRoadID:", [dataCopy clRoadID]);
    -[RTGeoRoadDataMO setGeoRoadID:](v8, "setGeoRoadID:", [dataCopy geoRoadID]);
    -[RTGeoRoadDataMO setRoadTraversedCount:](v8, "setRoadTraversedCount:", [dataCopy roadTraversedCount]);
    [dataCopy geoRoadStartLatitude];
    [(RTGeoRoadDataMO *)v8 setGeoRoadStartLatitude:?];
    [dataCopy geoRoadStartLongitude];
    [(RTGeoRoadDataMO *)v8 setGeoRoadStartLongitude:?];
    [dataCopy geoRoadEndLatitude];
    [(RTGeoRoadDataMO *)v8 setGeoRoadEndLatitude:?];
    [dataCopy geoRoadEndLongitude];
    [(RTGeoRoadDataMO *)v8 setGeoRoadEndLongitude:?];
    -[RTGeoRoadDataMO setGeoRoadClass:](v8, "setGeoRoadClass:", [dataCopy geoRoadClass]);
    -[RTGeoRoadDataMO setGeoFormOfWay:](v8, "setGeoFormOfWay:", [dataCopy geoFormOfWay]);
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