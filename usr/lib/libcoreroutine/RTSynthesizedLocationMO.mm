@interface RTSynthesizedLocationMO
+ (id)managedObjectWithSynthesizedLocation:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTSynthesizedLocationMO

+ (id)managedObjectWithSynthesizedLocation:(id)a3 inManagedObjectContext:(id)a4
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
    v12 = "Invalid parameter not satisfying: synthesizedLocation";
    v13 = &v16;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, v12, v13, 2u);
    goto LABEL_7;
  }

  if (v6)
  {
    v8 = [[RTSynthesizedLocationMO alloc] initWithContext:v6];
    [v5 coordinate];
    [(RTSynthesizedLocationMO *)v8 setLatitude:?];
    [v5 coordinate];
    [(RTSynthesizedLocationMO *)v8 setLongitude:v9];
    [v5 altitude];
    [(RTSynthesizedLocationMO *)v8 setAltitude:?];
    [v5 horizontalAccuracy];
    [(RTSynthesizedLocationMO *)v8 setHorizontalAccuracy:?];
    [v5 verticalAccuracy];
    [(RTSynthesizedLocationMO *)v8 setVerticalAccuracy:?];
    [v5 speed];
    [(RTSynthesizedLocationMO *)v8 setSpeed:?];
    [v5 course];
    [(RTSynthesizedLocationMO *)v8 setCourse:?];
    [v5 speedAccuracy];
    [(RTSynthesizedLocationMO *)v8 setSpeedAccuracy:?];
    [v5 courseAccuracy];
    [(RTSynthesizedLocationMO *)v8 setCourseAccuracy:?];
    v10 = [v5 timestamp];
    [(RTSynthesizedLocationMO *)v8 setTimestamp:v10];

    -[RTSynthesizedLocationMO setDownsamplingLevel:](v8, "setDownsamplingLevel:", [v5 downsamplingLevel]);
    -[RTSynthesizedLocationMO setGeoRoadClass:](v8, "setGeoRoadClass:", [v5 geoRoadClass]);
    -[RTSynthesizedLocationMO setGeoFormOfWay:](v8, "setGeoFormOfWay:", [v5 geoFormOfWay]);
    -[RTSynthesizedLocationMO setLocationType:](v8, "setLocationType:", [v5 locationType]);
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