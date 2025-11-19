@interface RTGeoRoadData
+ (id)createWithGeoRoadDataMO:(id)a3;
+ (id)createWithManagedObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRoad:(id)a3;
- (NSString)description;
- (RTGeoRoadData)initWithCoder:(id)a3;
- (RTGeoRoadData)initWithclRoadID:(unint64_t)a3 geoRoadID:(unint64_t)a4 roadTraversedCount:(unsigned int)a5 geoRoadStartLatitude:(double)a6 geoRoadStartLongitude:(double)a7 geoRoadEndLatitude:(double)a8 geoRoadEndLongitude:(double)a9 geoRoadClass:(int64_t)a10 geoFormOfWay:(int64_t)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)managedObjectWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTGeoRoadData

- (RTGeoRoadData)initWithclRoadID:(unint64_t)a3 geoRoadID:(unint64_t)a4 roadTraversedCount:(unsigned int)a5 geoRoadStartLatitude:(double)a6 geoRoadStartLongitude:(double)a7 geoRoadEndLatitude:(double)a8 geoRoadEndLongitude:(double)a9 geoRoadClass:(int64_t)a10 geoFormOfWay:(int64_t)a11
{
  v21.receiver = self;
  v21.super_class = RTGeoRoadData;
  result = [(RTGeoRoadData *)&v21 init];
  if (result)
  {
    result->_clRoadID = a3;
    result->_geoRoadID = a4;
    result->_roadTraversedCount = a5;
    result->_geoRoadStartLatitude = a6;
    result->_geoRoadStartLongitude = a7;
    result->_geoRoadEndLatitude = a8;
    result->_geoRoadEndLongitude = a9;
    result->_geoRoadClass = a10;
    result->_geoFormOfWay = a11;
  }

  return result;
}

- (RTGeoRoadData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"clRoadID"];
  v6 = [v4 decodeInt64ForKey:@"geoRoadID"];
  v7 = [v4 decodeInt32ForKey:@"roadTraversedCount"];
  [v4 decodeDoubleForKey:@"geoRoadStartLatitude"];
  v9 = v8;
  [v4 decodeDoubleForKey:@"geoRoadStartLongitude"];
  v11 = v10;
  [v4 decodeDoubleForKey:@"geoRoadEndLatitude"];
  v13 = v12;
  [v4 decodeDoubleForKey:@"geoRoadEndLongitude"];
  v15 = v14;
  v16 = [v4 decodeIntForKey:@"geoRoadClass"];
  v17 = [v4 decodeIntForKey:@"geoRoadFormOfWay"];

  return [(RTGeoRoadData *)self initWithclRoadID:v5 geoRoadID:v6 roadTraversedCount:v7 geoRoadStartLatitude:v16 geoRoadStartLongitude:v17 geoRoadEndLatitude:v9 geoRoadEndLongitude:v11 geoRoadClass:v13 geoFormOfWay:v15];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[RTGeoRoadData clRoadID](self forKey:{"clRoadID"), @"clRoadID"}];
  [v4 encodeInt64:-[RTGeoRoadData geoRoadID](self forKey:{"geoRoadID"), @"geoRoadID"}];
  [v4 encodeInt32:-[RTGeoRoadData roadTraversedCount](self forKey:{"roadTraversedCount"), @"roadTraversedCount"}];
  [v4 encodeInt64:-[RTGeoRoadData geoRoadClass](self forKey:{"geoRoadClass"), @"geoRoadClass"}];
  [v4 encodeInt64:-[RTGeoRoadData geoFormOfWay](self forKey:{"geoFormOfWay"), @"geoRoadFormOfWay"}];
  [(RTGeoRoadData *)self geoRoadStartLatitude];
  [v4 encodeDouble:@"geoRoadStartLatitude" forKey:?];
  [(RTGeoRoadData *)self geoRoadStartLongitude];
  [v4 encodeDouble:@"geoRoadStartLongitude" forKey:?];
  [(RTGeoRoadData *)self geoRoadEndLatitude];
  [v4 encodeDouble:@"geoRoadEndLatitude" forKey:?];
  [(RTGeoRoadData *)self geoRoadEndLongitude];
  [v4 encodeDouble:@"geoRoadEndLongitude" forKey:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  clRoadID = self->_clRoadID;
  geoRoadID = self->_geoRoadID;
  roadTraversedCount = self->_roadTraversedCount;
  geoRoadStartLatitude = self->_geoRoadStartLatitude;
  geoRoadStartLongitude = self->_geoRoadStartLongitude;
  geoRoadEndLatitude = self->_geoRoadEndLatitude;
  geoRoadEndLongitude = self->_geoRoadEndLongitude;
  geoRoadClass = self->_geoRoadClass;
  geoFormOfWay = self->_geoFormOfWay;

  return [v4 initWithclRoadID:clRoadID geoRoadID:geoRoadID roadTraversedCount:roadTraversedCount geoRoadStartLatitude:geoRoadClass geoRoadStartLongitude:geoFormOfWay geoRoadEndLatitude:geoRoadStartLatitude geoRoadEndLongitude:geoRoadStartLongitude geoRoadClass:geoRoadEndLatitude geoFormOfWay:geoRoadEndLongitude];
}

- (BOOL)isEqualToRoad:(id)a3
{
  v4 = a3;
  v5 = [(RTGeoRoadData *)self geoRoadID];
  if (v5 == [v4 geoRoadID] && (v6 = -[RTGeoRoadData clRoadID](self, "clRoadID"), v6 == objc_msgSend(v4, "clRoadID")) && (v7 = -[RTGeoRoadData roadTraversedCount](self, "roadTraversedCount"), v7 == objc_msgSend(v4, "roadTraversedCount")) && (-[RTGeoRoadData geoRoadEndLatitude](self, "geoRoadEndLatitude"), v9 = v8, objc_msgSend(v4, "geoRoadEndLatitude"), vabdd_f64(v9, v10) < 0.0000001) && (-[RTGeoRoadData geoRoadEndLongitude](self, "geoRoadEndLongitude"), v12 = v11, objc_msgSend(v4, "geoRoadEndLongitude"), vabdd_f64(v12, v13) < 0.0000001) && (-[RTGeoRoadData geoRoadStartLatitude](self, "geoRoadStartLatitude"), v15 = v14, objc_msgSend(v4, "geoRoadStartLatitude"), vabdd_f64(v15, v16) < 0.0000001) && (-[RTGeoRoadData geoRoadStartLongitude](self, "geoRoadStartLongitude"), v18 = v17, objc_msgSend(v4, "geoRoadStartLongitude"), vabdd_f64(v18, v19) < 0.0000001) && (v20 = -[RTGeoRoadData geoRoadClass](self, "geoRoadClass"), v20 == objc_msgSend(v4, "geoRoadClass")))
  {
    v21 = [(RTGeoRoadData *)self geoFormOfWay];
    v22 = v21 == [v4 geoFormOfWay];
  }

  else
  {
    v22 = 0;
  }

  return v22;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTGeoRoadData *)self isEqualToRoad:v5];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTGeoRoadData *)self clRoadID];
  v5 = [(RTGeoRoadData *)self geoRoadID];
  v6 = [(RTGeoRoadData *)self roadTraversedCount];
  v7 = [(RTGeoRoadData *)self geoRoadClass];
  v8 = [(RTGeoRoadData *)self geoFormOfWay];
  [(RTGeoRoadData *)self geoRoadStartLatitude];
  v10 = v9;
  [(RTGeoRoadData *)self geoRoadStartLongitude];
  v12 = v11;
  [(RTGeoRoadData *)self geoRoadEndLatitude];
  v14 = v13;
  [(RTGeoRoadData *)self geoRoadEndLongitude];
  return [v3 stringWithFormat:@"clRoadID, %llu, geoRoadID, %llu, roadTraversedCount, %ld, geoRoadClass, %ld, geoFormOfWay, %ld, geoStartLat, %.6f, geoStartLon, %.6f, geoEndLat, %.6f, geoEndLon, %.6f", v4, v5, v6, v7, v8, v10, v12, v14, v15];
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
      v6 = [objc_opt_class() createWithGeoRoadDataMO:v5];

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
      v15 = "+[RTGeoRoadData(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 33;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTTripSegment+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithGeoRoadDataMO:(id)a3
{
  v3 = a3;
  if ([v3 clRoadID])
  {
    v4 = [v3 clRoadID];
  }

  else
  {
    v4 = 0;
  }

  if ([v3 geoRoadID])
  {
    v5 = [v3 geoRoadID];
  }

  else
  {
    v5 = 0;
  }

  if ([v3 roadTraversedCount])
  {
    v6 = [v3 roadTraversedCount];
  }

  else
  {
    v6 = 0;
  }

  [v3 geoRoadStartLatitude];
  v7 = 0.0;
  v8 = 0.0;
  if (v9 != 0.0)
  {
    [v3 geoRoadStartLatitude];
    v8 = v10;
  }

  [v3 geoRoadStartLongitude];
  if (v11 != 0.0)
  {
    [v3 geoRoadStartLongitude];
    v7 = v12;
  }

  [v3 geoRoadEndLatitude];
  v13 = 0.0;
  v14 = 0.0;
  if (v15 != 0.0)
  {
    [v3 geoRoadEndLatitude];
    v14 = v16;
  }

  [v3 geoRoadEndLongitude];
  if (v17 != 0.0)
  {
    [v3 geoRoadEndLongitude];
    v13 = v18;
  }

  if ([v3 geoRoadClass])
  {
    v19 = [v3 geoRoadClass];
  }

  else
  {
    v19 = 0;
  }

  if ([v3 geoFormOfWay])
  {
    v20 = [v3 geoFormOfWay];
  }

  else
  {
    v20 = 0;
  }

  v21 = [[RTGeoRoadData alloc] initWithclRoadID:v4 geoRoadID:v5 roadTraversedCount:v6 geoRoadStartLatitude:v19 geoRoadStartLongitude:v20 geoRoadEndLatitude:v8 geoRoadEndLongitude:v7 geoRoadClass:v14 geoFormOfWay:v13];

  return v21;
}

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTGeoRoadDataMO managedObjectWithGeoRoadData:self inManagedObjectContext:a3];
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