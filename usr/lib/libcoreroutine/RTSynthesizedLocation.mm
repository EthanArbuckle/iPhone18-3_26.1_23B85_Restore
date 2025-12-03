@interface RTSynthesizedLocation
+ (id)createWithManagedObject:(id)object;
+ (id)createWithSynhtesizedLocationMO:(id)o;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLocation:(id)location;
- (CLLocationCoordinate2D)coordinate;
- (NSString)description;
- (RTSynthesizedLocation)initWithCLLocation:(id)location;
- (RTSynthesizedLocation)initWithCLTripSegmentLocation:(id)location;
- (RTSynthesizedLocation)initWithCoder:(id)coder;
- (RTSynthesizedLocation)initWithCoordinate:(CLLocationCoordinate2D)coordinate altitude:(double)altitude horizontalAccuracy:(double)accuracy verticalAccuracy:(double)verticalAccuracy course:(double)course courseAccuracy:(double)courseAccuracy speed:(double)speed speedAccuracy:(double)self0 geoRoadClass:(int64_t)self1 geoFormOfWay:(int64_t)self2 locationType:(int64_t)self3 timestamp:(id)self4 clRoadID:(unint64_t)self5;
- (RTSynthesizedLocation)initWithCoordinate:(CLLocationCoordinate2D)coordinate altitude:(double)altitude horizontalAccuracy:(double)accuracy verticalAccuracy:(double)verticalAccuracy course:(double)course courseAccuracy:(double)courseAccuracy speed:(double)speed speedAccuracy:(double)self0 geoRoadClass:(int64_t)self1 geoFormOfWay:(int64_t)self2 locationType:(int64_t)self3 timestamp:(id)self4 clRoadID:(unint64_t)self5 downsamplingLevel:(int64_t)self6;
- (id)managedObjectWithContext:(id)context;
- (int64_t)convertCLLocationType:(int)type;
- (int64_t)convertFormOfWay:(int)way;
- (int64_t)convertGeoRoadClass:(int)class;
- (int64_t)convertReconstructedLocationType:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTSynthesizedLocation

- (int64_t)convertGeoRoadClass:(int)class
{
  if (class > 9)
  {
    return 0;
  }

  else
  {
    return qword_230AFDCD0[class];
  }
}

- (int64_t)convertFormOfWay:(int)way
{
  if ((way - 1) > 0x15)
  {
    return 0;
  }

  else
  {
    return qword_230AFDD20[way - 1];
  }
}

- (int64_t)convertCLLocationType:(int)type
{
  if ((type - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_230AFDDD0[type - 1];
  }
}

- (int64_t)convertReconstructedLocationType:(id)type
{
  typeCopy = type;
  isOriginalLocationType = [typeCopy isOriginalLocationType];
  isInertialIntegrated = [typeCopy isInertialIntegrated];
  isLinearInterpolated = [typeCopy isLinearInterpolated];
  isMapMatched = [typeCopy isMapMatched];
  if ([typeCopy isOriginalLocationType])
  {
    v9 = -[RTSynthesizedLocation convertCLLocationType:](self, "convertCLLocationType:", [typeCopy locType]);
  }

  else
  {
    v10 = -[RTSynthesizedLocation convertCLLocationType:](self, "convertCLLocationType:", [typeCopy locTypeStart]);
    v9 = -[RTSynthesizedLocation convertCLLocationType:](self, "convertCLLocationType:", [typeCopy locTypeStop]) | v10;
  }

  v11 = isOriginalLocationType;
  if (isInertialIntegrated)
  {
    v11 = isOriginalLocationType | 2;
  }

  if (isLinearInterpolated)
  {
    v11 |= 4uLL;
  }

  if (isMapMatched)
  {
    v12 = v11 | 8;
  }

  else
  {
    v12 = v11;
  }

  return v9 | v12;
}

- (RTSynthesizedLocation)initWithCLTripSegmentLocation:(id)location
{
  locationCopy = location;
  [locationCopy latitude];
  v30 = v5;
  [locationCopy longitude];
  v7 = v6;
  v8 = -[RTSynthesizedLocation convertGeoRoadClass:](self, "convertGeoRoadClass:", [locationCopy mapsRoadClass]);
  v9 = -[RTSynthesizedLocation convertFormOfWay:](self, "convertFormOfWay:", [locationCopy mapsFormOfWay]);
  v10 = [(RTSynthesizedLocation *)self convertReconstructedLocationType:locationCopy];
  v11 = [RTSynthesizedLocation alloc];
  [locationCopy altitude];
  v13 = v12;
  [locationCopy horizontalAccuracy];
  v15 = v14;
  [locationCopy altitudeAccuracy];
  v17 = v16;
  [locationCopy course];
  v19 = v18;
  [locationCopy courseAccuracy];
  v21 = v20;
  [locationCopy speed];
  v23 = v22;
  [locationCopy speedAccuracy];
  v25 = v24;
  timestamp = [locationCopy timestamp];
  clRoadID = [locationCopy clRoadID];

  v28 = [(RTSynthesizedLocation *)v11 initWithCoordinate:v8 altitude:v9 horizontalAccuracy:v10 verticalAccuracy:timestamp course:clRoadID courseAccuracy:0 speed:v30 speedAccuracy:v7 geoRoadClass:v13 geoFormOfWay:v15 locationType:v17 timestamp:v19 clRoadID:v21 downsamplingLevel:v23, v25];
  return v28;
}

- (RTSynthesizedLocation)initWithCLLocation:(id)location
{
  locationCopy = location;
  v5 = [RTSynthesizedLocation alloc];
  [locationCopy coordinate];
  v26 = v6;
  v8 = v7;
  [locationCopy altitude];
  v10 = v9;
  [locationCopy horizontalAccuracy];
  v12 = v11;
  [locationCopy verticalAccuracy];
  v14 = v13;
  [locationCopy course];
  v16 = v15;
  [locationCopy courseAccuracy];
  v18 = v17;
  [locationCopy speed];
  v20 = v19;
  [locationCopy speedAccuracy];
  v22 = v21;
  timestamp = [locationCopy timestamp];

  v24 = [(RTSynthesizedLocation *)v5 initWithCoordinate:0 altitude:0 horizontalAccuracy:1 verticalAccuracy:timestamp course:0 courseAccuracy:0 speed:v26 speedAccuracy:v8 geoRoadClass:v10 geoFormOfWay:v12 locationType:v14 timestamp:v16 clRoadID:v18 downsamplingLevel:v20, v22];
  return v24;
}

- (RTSynthesizedLocation)initWithCoordinate:(CLLocationCoordinate2D)coordinate altitude:(double)altitude horizontalAccuracy:(double)accuracy verticalAccuracy:(double)verticalAccuracy course:(double)course courseAccuracy:(double)courseAccuracy speed:(double)speed speedAccuracy:(double)self0 geoRoadClass:(int64_t)self1 geoFormOfWay:(int64_t)self2 locationType:(int64_t)self3 timestamp:(id)self4 clRoadID:(unint64_t)self5 downsamplingLevel:(int64_t)self6
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  timestampCopy = timestamp;
  v35.receiver = self;
  v35.super_class = RTSynthesizedLocation;
  v32 = [(RTSynthesizedLocation *)&v35 init];
  v33 = v32;
  if (v32)
  {
    v32->_coordinate.latitude = latitude;
    v32->_coordinate.longitude = longitude;
    v32->_altitude = altitude;
    v32->_horizontalAccuracy = accuracy;
    v32->_verticalAccuracy = verticalAccuracy;
    v32->_course = course;
    v32->_courseAccuracy = courseAccuracy;
    v32->_speed = speed;
    v32->_speedAccuracy = speedAccuracy;
    v32->_geoRoadClass = class;
    v32->_geoFormOfWay = way;
    v32->_locationType = type;
    objc_storeStrong(&v32->_timestamp, timestamp);
    v33->_downsamplingLevel = level;
    v33->_clRoadID = d;
  }

  return v33;
}

- (RTSynthesizedLocation)initWithCoordinate:(CLLocationCoordinate2D)coordinate altitude:(double)altitude horizontalAccuracy:(double)accuracy verticalAccuracy:(double)verticalAccuracy course:(double)course courseAccuracy:(double)courseAccuracy speed:(double)speed speedAccuracy:(double)self0 geoRoadClass:(int64_t)self1 geoFormOfWay:(int64_t)self2 locationType:(int64_t)self3 timestamp:(id)self4 clRoadID:(unint64_t)self5
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  timestampCopy = timestamp;
  v28 = [[RTSynthesizedLocation alloc] initWithCoordinate:class altitude:way horizontalAccuracy:type verticalAccuracy:timestampCopy course:d courseAccuracy:0 speed:latitude speedAccuracy:longitude geoRoadClass:altitude geoFormOfWay:accuracy locationType:verticalAccuracy timestamp:course clRoadID:courseAccuracy downsamplingLevel:speed, *&speedAccuracy];

  return v28;
}

- (RTSynthesizedLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"latitude"];
  v30 = v5;
  [coderCopy decodeDoubleForKey:@"longitude"];
  v7 = v6;
  [coderCopy decodeDoubleForKey:@"altitude"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"horizontalUncertainty"];
  v11 = v10;
  [coderCopy decodeDoubleForKey:@"verticalUncertainty"];
  v13 = v12;
  [coderCopy decodeDoubleForKey:@"speed"];
  v15 = v14;
  [coderCopy decodeDoubleForKey:@"speedAccuracy"];
  v17 = v16;
  [coderCopy decodeDoubleForKey:@"course"];
  v19 = v18;
  [coderCopy decodeDoubleForKey:@"courseAccuracy"];
  v21 = v20;
  v22 = [coderCopy decodeIntForKey:@"geoRoadClass"];
  v23 = [coderCopy decodeIntForKey:@"geoFormOfWay"];
  v24 = [coderCopy decodeIntForKey:@"locationType"];
  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  v26 = [coderCopy decodeIntForKey:@"downsamplingLevel"];
  v27 = [coderCopy decodeInt64ForKey:@"clRoadID"];

  v28 = [(RTSynthesizedLocation *)self initWithCoordinate:v22 altitude:v23 horizontalAccuracy:v24 verticalAccuracy:v25 course:v27 courseAccuracy:v26 speed:v30 speedAccuracy:v7 geoRoadClass:v9 geoFormOfWay:v11 locationType:v13 timestamp:v19 clRoadID:v21 downsamplingLevel:v15, v17];
  return v28;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(RTSynthesizedLocation *)self coordinate];
  [coderCopy encodeDouble:@"latitude" forKey:?];
  [(RTSynthesizedLocation *)self coordinate];
  [coderCopy encodeDouble:@"longitude" forKey:v4];
  [(RTSynthesizedLocation *)self altitude];
  [coderCopy encodeDouble:@"altitude" forKey:?];
  [(RTSynthesizedLocation *)self horizontalAccuracy];
  [coderCopy encodeDouble:@"horizontalUncertainty" forKey:?];
  [(RTSynthesizedLocation *)self verticalAccuracy];
  [coderCopy encodeDouble:@"verticalUncertainty" forKey:?];
  [(RTSynthesizedLocation *)self speed];
  [coderCopy encodeDouble:@"speed" forKey:?];
  [(RTSynthesizedLocation *)self speedAccuracy];
  [coderCopy encodeDouble:@"speedAccuracy" forKey:?];
  [(RTSynthesizedLocation *)self course];
  [coderCopy encodeDouble:@"course" forKey:?];
  [(RTSynthesizedLocation *)self courseAccuracy];
  [coderCopy encodeDouble:@"courseAccuracy" forKey:?];
  [coderCopy encodeInt64:-[RTSynthesizedLocation geoRoadClass](self forKey:{"geoRoadClass"), @"geoRoadClass"}];
  [coderCopy encodeInt64:-[RTSynthesizedLocation geoFormOfWay](self forKey:{"geoFormOfWay"), @"geoFormOfWay"}];
  [coderCopy encodeInt64:-[RTSynthesizedLocation locationType](self forKey:{"locationType"), @"locationType"}];
  timestamp = [(RTSynthesizedLocation *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];

  [coderCopy encodeInt64:-[RTSynthesizedLocation downsamplingLevel](self forKey:{"downsamplingLevel"), @"downsamplingLevel"}];
  [coderCopy encodeInt64:-[RTSynthesizedLocation clRoadID](self forKey:{"clRoadID"), @"clRoadID"}];
}

- (BOOL)isEqualToLocation:(id)location
{
  locationCopy = location;
  [(RTSynthesizedLocation *)self coordinate];
  v6 = v5;
  [locationCopy coordinate];
  if (v6 == v7 && (-[RTSynthesizedLocation coordinate](self, "coordinate"), v9 = v8, [locationCopy coordinate], v9 == v10) && (-[RTSynthesizedLocation altitude](self, "altitude"), v12 = v11, objc_msgSend(locationCopy, "altitude"), v12 == v13) && (-[RTSynthesizedLocation horizontalAccuracy](self, "horizontalAccuracy"), v15 = v14, objc_msgSend(locationCopy, "horizontalAccuracy"), v15 == v16) && (-[RTSynthesizedLocation verticalAccuracy](self, "verticalAccuracy"), v18 = v17, objc_msgSend(locationCopy, "verticalAccuracy"), v18 == v19) && (-[RTSynthesizedLocation course](self, "course"), v21 = v20, objc_msgSend(locationCopy, "course"), v21 == v22) && (-[RTSynthesizedLocation courseAccuracy](self, "courseAccuracy"), v24 = v23, objc_msgSend(locationCopy, "courseAccuracy"), v24 == v25) && (-[RTSynthesizedLocation speed](self, "speed"), v27 = v26, objc_msgSend(locationCopy, "speed"), v27 == v28) && (-[RTSynthesizedLocation speedAccuracy](self, "speedAccuracy"), v30 = v29, objc_msgSend(locationCopy, "speedAccuracy"), v30 == v31) && (v32 = -[RTSynthesizedLocation geoRoadClass](self, "geoRoadClass"), v32 == objc_msgSend(locationCopy, "geoRoadClass")) && (v33 = -[RTSynthesizedLocation geoFormOfWay](self, "geoFormOfWay"), v33 == objc_msgSend(locationCopy, "geoFormOfWay")) && (v34 = -[RTSynthesizedLocation locationType](self, "locationType"), v34 == objc_msgSend(locationCopy, "locationType")))
  {
    timestamp = [(RTSynthesizedLocation *)self timestamp];
    timestamp2 = [locationCopy timestamp];
    if ([timestamp isEqualToDate:timestamp2])
    {
      clRoadID = [(RTSynthesizedLocation *)self clRoadID];
      v38 = clRoadID == [locationCopy clRoadID];
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTSynthesizedLocation *)self isEqualToLocation:v5];
  }

  return v6;
}

- (NSString)description
{
  v25 = MEMORY[0x277CCACA8];
  [(RTSynthesizedLocation *)self coordinate];
  v24 = v3;
  [(RTSynthesizedLocation *)self coordinate];
  v23 = v4;
  [(RTSynthesizedLocation *)self altitude];
  v6 = v5;
  [(RTSynthesizedLocation *)self horizontalAccuracy];
  v8 = v7;
  [(RTSynthesizedLocation *)self verticalAccuracy];
  v10 = v9;
  [(RTSynthesizedLocation *)self course];
  v12 = v11;
  [(RTSynthesizedLocation *)self courseAccuracy];
  v14 = v13;
  [(RTSynthesizedLocation *)self speed];
  v16 = v15;
  [(RTSynthesizedLocation *)self speedAccuracy];
  v18 = v17;
  timestamp = [(RTSynthesizedLocation *)self timestamp];
  [timestamp timeIntervalSinceReferenceDate];
  v20 = [v25 stringWithFormat:@"lat, %.6f, lon, %.6f, alt, %.2f, hunc, %.2f, vunc, %.2f, course, %.2f, cunc, %.2f, speed, %.2f, sunc, %.1f, timestamp, %.3f, downsamplingLevel, %lu, geoRoadClass, %ld, formOfWay, %ld, locationType, %ld, BC, %ld, II, %ld, LI, %ld, MM, %ld, EA, %ld, WiFi, %ld, GPS, %ld, LOI, %ld, clRoadID, %llu", v24, v23, v6, v8, v10, v12, v14, v16, v18, v19, -[RTSynthesizedLocation downsamplingLevel](self, "downsamplingLevel"), -[RTSynthesizedLocation geoRoadClass](self, "geoRoadClass"), -[RTSynthesizedLocation geoFormOfWay](self, "geoFormOfWay"), -[RTSynthesizedLocation locationType](self, "locationType"), -[RTSynthesizedLocation locationType](self, "locationType") & 1, (-[RTSynthesizedLocation locationType](self, "locationType") >> 1) & 1, (-[RTSynthesizedLocation locationType](self, "locationType") >> 2) & 1, (-[RTSynthesizedLocation locationType](self, "locationType") >> 3) & 1, (-[RTSynthesizedLocation locationType](self, "locationType") >> 4) & 1, (-[RTSynthesizedLocation locationType](self, "locationType") >> 6) & 1, (-[RTSynthesizedLocation locationType](self, "locationType") >> 5) & 1, (-[RTSynthesizedLocation locationType](self, "locationType") >> 7) & 1, -[RTSynthesizedLocation clRoadID](self, "clRoadID")];

  return v20;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

+ (id)createWithManagedObject:(id)object
{
  v18 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if (objectCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objectCopy;
      v6 = [objc_opt_class() createWithSynhtesizedLocationMO:v5];

      goto LABEL_8;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = 138413058;
      v11 = v9;
      v12 = 2112;
      v14 = 2080;
      v13 = objectCopy;
      v15 = "+[RTSynthesizedLocation(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 34;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTTripSegment+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithSynhtesizedLocationMO:(id)o
{
  oCopy = o;
  [oCopy latitude];
  v30 = v4;
  [oCopy longitude];
  v6 = v5;
  if ([oCopy downsamplingLevel])
  {
    downsamplingLevel = [oCopy downsamplingLevel];
  }

  else
  {
    downsamplingLevel = 0;
  }

  if ([oCopy geoRoadClass])
  {
    geoRoadClass = [oCopy geoRoadClass];
  }

  else
  {
    geoRoadClass = 0;
  }

  if ([oCopy geoFormOfWay])
  {
    geoFormOfWay = [oCopy geoFormOfWay];
  }

  else
  {
    geoFormOfWay = 0;
  }

  if ([oCopy locationType])
  {
    locationType = [oCopy locationType];
  }

  else
  {
    locationType = 0;
  }

  if ([oCopy clRoadID])
  {
    clRoadID = [oCopy clRoadID];
  }

  else
  {
    clRoadID = 0;
  }

  v12 = [RTSynthesizedLocation alloc];
  [oCopy altitude];
  v14 = v13;
  [oCopy horizontalAccuracy];
  v16 = v15;
  [oCopy verticalAccuracy];
  v18 = v17;
  [oCopy course];
  v20 = v19;
  [oCopy courseAccuracy];
  v22 = v21;
  [oCopy speed];
  v24 = v23;
  [oCopy speedAccuracy];
  v26 = v25;
  timestamp = [oCopy timestamp];
  v28 = [(RTSynthesizedLocation *)v12 initWithCoordinate:geoRoadClass altitude:geoFormOfWay horizontalAccuracy:locationType verticalAccuracy:timestamp course:clRoadID courseAccuracy:downsamplingLevel speed:v30 speedAccuracy:v6 geoRoadClass:v14 geoFormOfWay:v16 locationType:v18 timestamp:v20 clRoadID:v22 downsamplingLevel:v24, v26];

  return v28;
}

- (id)managedObjectWithContext:(id)context
{
  if (context)
  {
    v3 = [RTSynthesizedLocationMO managedObjectWithSynthesizedLocation:self inManagedObjectContext:context];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

@end