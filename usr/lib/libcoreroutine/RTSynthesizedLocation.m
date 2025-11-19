@interface RTSynthesizedLocation
+ (id)createWithManagedObject:(id)a3;
+ (id)createWithSynhtesizedLocationMO:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLocation:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (NSString)description;
- (RTSynthesizedLocation)initWithCLLocation:(id)a3;
- (RTSynthesizedLocation)initWithCLTripSegmentLocation:(id)a3;
- (RTSynthesizedLocation)initWithCoder:(id)a3;
- (RTSynthesizedLocation)initWithCoordinate:(CLLocationCoordinate2D)a3 altitude:(double)a4 horizontalAccuracy:(double)a5 verticalAccuracy:(double)a6 course:(double)a7 courseAccuracy:(double)a8 speed:(double)a9 speedAccuracy:(double)a10 geoRoadClass:(int64_t)a11 geoFormOfWay:(int64_t)a12 locationType:(int64_t)a13 timestamp:(id)a14 clRoadID:(unint64_t)a15;
- (RTSynthesizedLocation)initWithCoordinate:(CLLocationCoordinate2D)a3 altitude:(double)a4 horizontalAccuracy:(double)a5 verticalAccuracy:(double)a6 course:(double)a7 courseAccuracy:(double)a8 speed:(double)a9 speedAccuracy:(double)a10 geoRoadClass:(int64_t)a11 geoFormOfWay:(int64_t)a12 locationType:(int64_t)a13 timestamp:(id)a14 clRoadID:(unint64_t)a15 downsamplingLevel:(int64_t)a16;
- (id)managedObjectWithContext:(id)a3;
- (int64_t)convertCLLocationType:(int)a3;
- (int64_t)convertFormOfWay:(int)a3;
- (int64_t)convertGeoRoadClass:(int)a3;
- (int64_t)convertReconstructedLocationType:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTSynthesizedLocation

- (int64_t)convertGeoRoadClass:(int)a3
{
  if (a3 > 9)
  {
    return 0;
  }

  else
  {
    return qword_230AFDCD0[a3];
  }
}

- (int64_t)convertFormOfWay:(int)a3
{
  if ((a3 - 1) > 0x15)
  {
    return 0;
  }

  else
  {
    return qword_230AFDD20[a3 - 1];
  }
}

- (int64_t)convertCLLocationType:(int)a3
{
  if ((a3 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_230AFDDD0[a3 - 1];
  }
}

- (int64_t)convertReconstructedLocationType:(id)a3
{
  v4 = a3;
  v5 = [v4 isOriginalLocationType];
  v6 = [v4 isInertialIntegrated];
  v7 = [v4 isLinearInterpolated];
  v8 = [v4 isMapMatched];
  if ([v4 isOriginalLocationType])
  {
    v9 = -[RTSynthesizedLocation convertCLLocationType:](self, "convertCLLocationType:", [v4 locType]);
  }

  else
  {
    v10 = -[RTSynthesizedLocation convertCLLocationType:](self, "convertCLLocationType:", [v4 locTypeStart]);
    v9 = -[RTSynthesizedLocation convertCLLocationType:](self, "convertCLLocationType:", [v4 locTypeStop]) | v10;
  }

  v11 = v5;
  if (v6)
  {
    v11 = v5 | 2;
  }

  if (v7)
  {
    v11 |= 4uLL;
  }

  if (v8)
  {
    v12 = v11 | 8;
  }

  else
  {
    v12 = v11;
  }

  return v9 | v12;
}

- (RTSynthesizedLocation)initWithCLTripSegmentLocation:(id)a3
{
  v4 = a3;
  [v4 latitude];
  v30 = v5;
  [v4 longitude];
  v7 = v6;
  v8 = -[RTSynthesizedLocation convertGeoRoadClass:](self, "convertGeoRoadClass:", [v4 mapsRoadClass]);
  v9 = -[RTSynthesizedLocation convertFormOfWay:](self, "convertFormOfWay:", [v4 mapsFormOfWay]);
  v10 = [(RTSynthesizedLocation *)self convertReconstructedLocationType:v4];
  v11 = [RTSynthesizedLocation alloc];
  [v4 altitude];
  v13 = v12;
  [v4 horizontalAccuracy];
  v15 = v14;
  [v4 altitudeAccuracy];
  v17 = v16;
  [v4 course];
  v19 = v18;
  [v4 courseAccuracy];
  v21 = v20;
  [v4 speed];
  v23 = v22;
  [v4 speedAccuracy];
  v25 = v24;
  v26 = [v4 timestamp];
  v27 = [v4 clRoadID];

  v28 = [(RTSynthesizedLocation *)v11 initWithCoordinate:v8 altitude:v9 horizontalAccuracy:v10 verticalAccuracy:v26 course:v27 courseAccuracy:0 speed:v30 speedAccuracy:v7 geoRoadClass:v13 geoFormOfWay:v15 locationType:v17 timestamp:v19 clRoadID:v21 downsamplingLevel:v23, v25];
  return v28;
}

- (RTSynthesizedLocation)initWithCLLocation:(id)a3
{
  v4 = a3;
  v5 = [RTSynthesizedLocation alloc];
  [v4 coordinate];
  v26 = v6;
  v8 = v7;
  [v4 altitude];
  v10 = v9;
  [v4 horizontalAccuracy];
  v12 = v11;
  [v4 verticalAccuracy];
  v14 = v13;
  [v4 course];
  v16 = v15;
  [v4 courseAccuracy];
  v18 = v17;
  [v4 speed];
  v20 = v19;
  [v4 speedAccuracy];
  v22 = v21;
  v23 = [v4 timestamp];

  v24 = [(RTSynthesizedLocation *)v5 initWithCoordinate:0 altitude:0 horizontalAccuracy:1 verticalAccuracy:v23 course:0 courseAccuracy:0 speed:v26 speedAccuracy:v8 geoRoadClass:v10 geoFormOfWay:v12 locationType:v14 timestamp:v16 clRoadID:v18 downsamplingLevel:v20, v22];
  return v24;
}

- (RTSynthesizedLocation)initWithCoordinate:(CLLocationCoordinate2D)a3 altitude:(double)a4 horizontalAccuracy:(double)a5 verticalAccuracy:(double)a6 course:(double)a7 courseAccuracy:(double)a8 speed:(double)a9 speedAccuracy:(double)a10 geoRoadClass:(int64_t)a11 geoFormOfWay:(int64_t)a12 locationType:(int64_t)a13 timestamp:(id)a14 clRoadID:(unint64_t)a15 downsamplingLevel:(int64_t)a16
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v31 = a14;
  v35.receiver = self;
  v35.super_class = RTSynthesizedLocation;
  v32 = [(RTSynthesizedLocation *)&v35 init];
  v33 = v32;
  if (v32)
  {
    v32->_coordinate.latitude = latitude;
    v32->_coordinate.longitude = longitude;
    v32->_altitude = a4;
    v32->_horizontalAccuracy = a5;
    v32->_verticalAccuracy = a6;
    v32->_course = a7;
    v32->_courseAccuracy = a8;
    v32->_speed = a9;
    v32->_speedAccuracy = a10;
    v32->_geoRoadClass = a11;
    v32->_geoFormOfWay = a12;
    v32->_locationType = a13;
    objc_storeStrong(&v32->_timestamp, a14);
    v33->_downsamplingLevel = a16;
    v33->_clRoadID = a15;
  }

  return v33;
}

- (RTSynthesizedLocation)initWithCoordinate:(CLLocationCoordinate2D)a3 altitude:(double)a4 horizontalAccuracy:(double)a5 verticalAccuracy:(double)a6 course:(double)a7 courseAccuracy:(double)a8 speed:(double)a9 speedAccuracy:(double)a10 geoRoadClass:(int64_t)a11 geoFormOfWay:(int64_t)a12 locationType:(int64_t)a13 timestamp:(id)a14 clRoadID:(unint64_t)a15
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v27 = a14;
  v28 = [[RTSynthesizedLocation alloc] initWithCoordinate:a11 altitude:a12 horizontalAccuracy:a13 verticalAccuracy:v27 course:a15 courseAccuracy:0 speed:latitude speedAccuracy:longitude geoRoadClass:a4 geoFormOfWay:a5 locationType:a6 timestamp:a7 clRoadID:a8 downsamplingLevel:a9, *&a10];

  return v28;
}

- (RTSynthesizedLocation)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"latitude"];
  v30 = v5;
  [v4 decodeDoubleForKey:@"longitude"];
  v7 = v6;
  [v4 decodeDoubleForKey:@"altitude"];
  v9 = v8;
  [v4 decodeDoubleForKey:@"horizontalUncertainty"];
  v11 = v10;
  [v4 decodeDoubleForKey:@"verticalUncertainty"];
  v13 = v12;
  [v4 decodeDoubleForKey:@"speed"];
  v15 = v14;
  [v4 decodeDoubleForKey:@"speedAccuracy"];
  v17 = v16;
  [v4 decodeDoubleForKey:@"course"];
  v19 = v18;
  [v4 decodeDoubleForKey:@"courseAccuracy"];
  v21 = v20;
  v22 = [v4 decodeIntForKey:@"geoRoadClass"];
  v23 = [v4 decodeIntForKey:@"geoFormOfWay"];
  v24 = [v4 decodeIntForKey:@"locationType"];
  v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  v26 = [v4 decodeIntForKey:@"downsamplingLevel"];
  v27 = [v4 decodeInt64ForKey:@"clRoadID"];

  v28 = [(RTSynthesizedLocation *)self initWithCoordinate:v22 altitude:v23 horizontalAccuracy:v24 verticalAccuracy:v25 course:v27 courseAccuracy:v26 speed:v30 speedAccuracy:v7 geoRoadClass:v9 geoFormOfWay:v11 locationType:v13 timestamp:v19 clRoadID:v21 downsamplingLevel:v15, v17];
  return v28;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [(RTSynthesizedLocation *)self coordinate];
  [v6 encodeDouble:@"latitude" forKey:?];
  [(RTSynthesizedLocation *)self coordinate];
  [v6 encodeDouble:@"longitude" forKey:v4];
  [(RTSynthesizedLocation *)self altitude];
  [v6 encodeDouble:@"altitude" forKey:?];
  [(RTSynthesizedLocation *)self horizontalAccuracy];
  [v6 encodeDouble:@"horizontalUncertainty" forKey:?];
  [(RTSynthesizedLocation *)self verticalAccuracy];
  [v6 encodeDouble:@"verticalUncertainty" forKey:?];
  [(RTSynthesizedLocation *)self speed];
  [v6 encodeDouble:@"speed" forKey:?];
  [(RTSynthesizedLocation *)self speedAccuracy];
  [v6 encodeDouble:@"speedAccuracy" forKey:?];
  [(RTSynthesizedLocation *)self course];
  [v6 encodeDouble:@"course" forKey:?];
  [(RTSynthesizedLocation *)self courseAccuracy];
  [v6 encodeDouble:@"courseAccuracy" forKey:?];
  [v6 encodeInt64:-[RTSynthesizedLocation geoRoadClass](self forKey:{"geoRoadClass"), @"geoRoadClass"}];
  [v6 encodeInt64:-[RTSynthesizedLocation geoFormOfWay](self forKey:{"geoFormOfWay"), @"geoFormOfWay"}];
  [v6 encodeInt64:-[RTSynthesizedLocation locationType](self forKey:{"locationType"), @"locationType"}];
  v5 = [(RTSynthesizedLocation *)self timestamp];
  [v6 encodeObject:v5 forKey:@"timestamp"];

  [v6 encodeInt64:-[RTSynthesizedLocation downsamplingLevel](self forKey:{"downsamplingLevel"), @"downsamplingLevel"}];
  [v6 encodeInt64:-[RTSynthesizedLocation clRoadID](self forKey:{"clRoadID"), @"clRoadID"}];
}

- (BOOL)isEqualToLocation:(id)a3
{
  v4 = a3;
  [(RTSynthesizedLocation *)self coordinate];
  v6 = v5;
  [v4 coordinate];
  if (v6 == v7 && (-[RTSynthesizedLocation coordinate](self, "coordinate"), v9 = v8, [v4 coordinate], v9 == v10) && (-[RTSynthesizedLocation altitude](self, "altitude"), v12 = v11, objc_msgSend(v4, "altitude"), v12 == v13) && (-[RTSynthesizedLocation horizontalAccuracy](self, "horizontalAccuracy"), v15 = v14, objc_msgSend(v4, "horizontalAccuracy"), v15 == v16) && (-[RTSynthesizedLocation verticalAccuracy](self, "verticalAccuracy"), v18 = v17, objc_msgSend(v4, "verticalAccuracy"), v18 == v19) && (-[RTSynthesizedLocation course](self, "course"), v21 = v20, objc_msgSend(v4, "course"), v21 == v22) && (-[RTSynthesizedLocation courseAccuracy](self, "courseAccuracy"), v24 = v23, objc_msgSend(v4, "courseAccuracy"), v24 == v25) && (-[RTSynthesizedLocation speed](self, "speed"), v27 = v26, objc_msgSend(v4, "speed"), v27 == v28) && (-[RTSynthesizedLocation speedAccuracy](self, "speedAccuracy"), v30 = v29, objc_msgSend(v4, "speedAccuracy"), v30 == v31) && (v32 = -[RTSynthesizedLocation geoRoadClass](self, "geoRoadClass"), v32 == objc_msgSend(v4, "geoRoadClass")) && (v33 = -[RTSynthesizedLocation geoFormOfWay](self, "geoFormOfWay"), v33 == objc_msgSend(v4, "geoFormOfWay")) && (v34 = -[RTSynthesizedLocation locationType](self, "locationType"), v34 == objc_msgSend(v4, "locationType")))
  {
    v35 = [(RTSynthesizedLocation *)self timestamp];
    v36 = [v4 timestamp];
    if ([v35 isEqualToDate:v36])
    {
      v37 = [(RTSynthesizedLocation *)self clRoadID];
      v38 = v37 == [v4 clRoadID];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTSynthesizedLocation *)self isEqualToLocation:v5];
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
  v22 = [(RTSynthesizedLocation *)self timestamp];
  [v22 timeIntervalSinceReferenceDate];
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

+ (id)createWithManagedObject:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
      v13 = v4;
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

+ (id)createWithSynhtesizedLocationMO:(id)a3
{
  v3 = a3;
  [v3 latitude];
  v30 = v4;
  [v3 longitude];
  v6 = v5;
  if ([v3 downsamplingLevel])
  {
    v7 = [v3 downsamplingLevel];
  }

  else
  {
    v7 = 0;
  }

  if ([v3 geoRoadClass])
  {
    v8 = [v3 geoRoadClass];
  }

  else
  {
    v8 = 0;
  }

  if ([v3 geoFormOfWay])
  {
    v9 = [v3 geoFormOfWay];
  }

  else
  {
    v9 = 0;
  }

  if ([v3 locationType])
  {
    v10 = [v3 locationType];
  }

  else
  {
    v10 = 0;
  }

  if ([v3 clRoadID])
  {
    v11 = [v3 clRoadID];
  }

  else
  {
    v11 = 0;
  }

  v12 = [RTSynthesizedLocation alloc];
  [v3 altitude];
  v14 = v13;
  [v3 horizontalAccuracy];
  v16 = v15;
  [v3 verticalAccuracy];
  v18 = v17;
  [v3 course];
  v20 = v19;
  [v3 courseAccuracy];
  v22 = v21;
  [v3 speed];
  v24 = v23;
  [v3 speedAccuracy];
  v26 = v25;
  v27 = [v3 timestamp];
  v28 = [(RTSynthesizedLocation *)v12 initWithCoordinate:v8 altitude:v9 horizontalAccuracy:v10 verticalAccuracy:v27 course:v11 courseAccuracy:v7 speed:v30 speedAccuracy:v6 geoRoadClass:v14 geoFormOfWay:v16 locationType:v18 timestamp:v20 clRoadID:v22 downsamplingLevel:v24, v26];

  return v28;
}

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTSynthesizedLocationMO managedObjectWithSynthesizedLocation:self inManagedObjectContext:a3];
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