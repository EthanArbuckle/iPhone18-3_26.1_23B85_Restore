@interface RTSynthesizedLocationMO
+ (id)managedObjectWithSynthesizedLocation:(id)location inManagedObjectContext:(id)context;
@end

@implementation RTSynthesizedLocationMO

+ (id)managedObjectWithSynthesizedLocation:(id)location inManagedObjectContext:(id)context
{
  locationCopy = location;
  contextCopy = context;
  v7 = contextCopy;
  if (!locationCopy)
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

  if (contextCopy)
  {
    v8 = [[RTSynthesizedLocationMO alloc] initWithContext:contextCopy];
    [locationCopy coordinate];
    [(RTSynthesizedLocationMO *)v8 setLatitude:?];
    [locationCopy coordinate];
    [(RTSynthesizedLocationMO *)v8 setLongitude:v9];
    [locationCopy altitude];
    [(RTSynthesizedLocationMO *)v8 setAltitude:?];
    [locationCopy horizontalAccuracy];
    [(RTSynthesizedLocationMO *)v8 setHorizontalAccuracy:?];
    [locationCopy verticalAccuracy];
    [(RTSynthesizedLocationMO *)v8 setVerticalAccuracy:?];
    [locationCopy speed];
    [(RTSynthesizedLocationMO *)v8 setSpeed:?];
    [locationCopy course];
    [(RTSynthesizedLocationMO *)v8 setCourse:?];
    [locationCopy speedAccuracy];
    [(RTSynthesizedLocationMO *)v8 setSpeedAccuracy:?];
    [locationCopy courseAccuracy];
    [(RTSynthesizedLocationMO *)v8 setCourseAccuracy:?];
    timestamp = [locationCopy timestamp];
    [(RTSynthesizedLocationMO *)v8 setTimestamp:timestamp];

    -[RTSynthesizedLocationMO setDownsamplingLevel:](v8, "setDownsamplingLevel:", [locationCopy downsamplingLevel]);
    -[RTSynthesizedLocationMO setGeoRoadClass:](v8, "setGeoRoadClass:", [locationCopy geoRoadClass]);
    -[RTSynthesizedLocationMO setGeoFormOfWay:](v8, "setGeoFormOfWay:", [locationCopy geoFormOfWay]);
    -[RTSynthesizedLocationMO setLocationType:](v8, "setLocationType:", [locationCopy locationType]);
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