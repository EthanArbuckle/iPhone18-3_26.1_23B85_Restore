@interface RTGeoRoadData
+ (id)createWithGeoRoadDataMO:(id)o;
+ (id)createWithManagedObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRoad:(id)road;
- (NSString)description;
- (RTGeoRoadData)initWithCoder:(id)coder;
- (RTGeoRoadData)initWithclRoadID:(unint64_t)d geoRoadID:(unint64_t)iD roadTraversedCount:(unsigned int)count geoRoadStartLatitude:(double)latitude geoRoadStartLongitude:(double)longitude geoRoadEndLatitude:(double)endLatitude geoRoadEndLongitude:(double)endLongitude geoRoadClass:(int64_t)self0 geoFormOfWay:(int64_t)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)managedObjectWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTGeoRoadData

- (RTGeoRoadData)initWithclRoadID:(unint64_t)d geoRoadID:(unint64_t)iD roadTraversedCount:(unsigned int)count geoRoadStartLatitude:(double)latitude geoRoadStartLongitude:(double)longitude geoRoadEndLatitude:(double)endLatitude geoRoadEndLongitude:(double)endLongitude geoRoadClass:(int64_t)self0 geoFormOfWay:(int64_t)self1
{
  v21.receiver = self;
  v21.super_class = RTGeoRoadData;
  result = [(RTGeoRoadData *)&v21 init];
  if (result)
  {
    result->_clRoadID = d;
    result->_geoRoadID = iD;
    result->_roadTraversedCount = count;
    result->_geoRoadStartLatitude = latitude;
    result->_geoRoadStartLongitude = longitude;
    result->_geoRoadEndLatitude = endLatitude;
    result->_geoRoadEndLongitude = endLongitude;
    result->_geoRoadClass = class;
    result->_geoFormOfWay = way;
  }

  return result;
}

- (RTGeoRoadData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"clRoadID"];
  v6 = [coderCopy decodeInt64ForKey:@"geoRoadID"];
  v7 = [coderCopy decodeInt32ForKey:@"roadTraversedCount"];
  [coderCopy decodeDoubleForKey:@"geoRoadStartLatitude"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"geoRoadStartLongitude"];
  v11 = v10;
  [coderCopy decodeDoubleForKey:@"geoRoadEndLatitude"];
  v13 = v12;
  [coderCopy decodeDoubleForKey:@"geoRoadEndLongitude"];
  v15 = v14;
  v16 = [coderCopy decodeIntForKey:@"geoRoadClass"];
  v17 = [coderCopy decodeIntForKey:@"geoRoadFormOfWay"];

  return [(RTGeoRoadData *)self initWithclRoadID:v5 geoRoadID:v6 roadTraversedCount:v7 geoRoadStartLatitude:v16 geoRoadStartLongitude:v17 geoRoadEndLatitude:v9 geoRoadEndLongitude:v11 geoRoadClass:v13 geoFormOfWay:v15];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[RTGeoRoadData clRoadID](self forKey:{"clRoadID"), @"clRoadID"}];
  [coderCopy encodeInt64:-[RTGeoRoadData geoRoadID](self forKey:{"geoRoadID"), @"geoRoadID"}];
  [coderCopy encodeInt32:-[RTGeoRoadData roadTraversedCount](self forKey:{"roadTraversedCount"), @"roadTraversedCount"}];
  [coderCopy encodeInt64:-[RTGeoRoadData geoRoadClass](self forKey:{"geoRoadClass"), @"geoRoadClass"}];
  [coderCopy encodeInt64:-[RTGeoRoadData geoFormOfWay](self forKey:{"geoFormOfWay"), @"geoRoadFormOfWay"}];
  [(RTGeoRoadData *)self geoRoadStartLatitude];
  [coderCopy encodeDouble:@"geoRoadStartLatitude" forKey:?];
  [(RTGeoRoadData *)self geoRoadStartLongitude];
  [coderCopy encodeDouble:@"geoRoadStartLongitude" forKey:?];
  [(RTGeoRoadData *)self geoRoadEndLatitude];
  [coderCopy encodeDouble:@"geoRoadEndLatitude" forKey:?];
  [(RTGeoRoadData *)self geoRoadEndLongitude];
  [coderCopy encodeDouble:@"geoRoadEndLongitude" forKey:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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

- (BOOL)isEqualToRoad:(id)road
{
  roadCopy = road;
  geoRoadID = [(RTGeoRoadData *)self geoRoadID];
  if (geoRoadID == [roadCopy geoRoadID] && (v6 = -[RTGeoRoadData clRoadID](self, "clRoadID"), v6 == objc_msgSend(roadCopy, "clRoadID")) && (v7 = -[RTGeoRoadData roadTraversedCount](self, "roadTraversedCount"), v7 == objc_msgSend(roadCopy, "roadTraversedCount")) && (-[RTGeoRoadData geoRoadEndLatitude](self, "geoRoadEndLatitude"), v9 = v8, objc_msgSend(roadCopy, "geoRoadEndLatitude"), vabdd_f64(v9, v10) < 0.0000001) && (-[RTGeoRoadData geoRoadEndLongitude](self, "geoRoadEndLongitude"), v12 = v11, objc_msgSend(roadCopy, "geoRoadEndLongitude"), vabdd_f64(v12, v13) < 0.0000001) && (-[RTGeoRoadData geoRoadStartLatitude](self, "geoRoadStartLatitude"), v15 = v14, objc_msgSend(roadCopy, "geoRoadStartLatitude"), vabdd_f64(v15, v16) < 0.0000001) && (-[RTGeoRoadData geoRoadStartLongitude](self, "geoRoadStartLongitude"), v18 = v17, objc_msgSend(roadCopy, "geoRoadStartLongitude"), vabdd_f64(v18, v19) < 0.0000001) && (v20 = -[RTGeoRoadData geoRoadClass](self, "geoRoadClass"), v20 == objc_msgSend(roadCopy, "geoRoadClass")))
  {
    geoFormOfWay = [(RTGeoRoadData *)self geoFormOfWay];
    v22 = geoFormOfWay == [roadCopy geoFormOfWay];
  }

  else
  {
    v22 = 0;
  }

  return v22;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTGeoRoadData *)self isEqualToRoad:v5];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  clRoadID = [(RTGeoRoadData *)self clRoadID];
  geoRoadID = [(RTGeoRoadData *)self geoRoadID];
  roadTraversedCount = [(RTGeoRoadData *)self roadTraversedCount];
  geoRoadClass = [(RTGeoRoadData *)self geoRoadClass];
  geoFormOfWay = [(RTGeoRoadData *)self geoFormOfWay];
  [(RTGeoRoadData *)self geoRoadStartLatitude];
  v10 = v9;
  [(RTGeoRoadData *)self geoRoadStartLongitude];
  v12 = v11;
  [(RTGeoRoadData *)self geoRoadEndLatitude];
  v14 = v13;
  [(RTGeoRoadData *)self geoRoadEndLongitude];
  return [v3 stringWithFormat:@"clRoadID, %llu, geoRoadID, %llu, roadTraversedCount, %ld, geoRoadClass, %ld, geoFormOfWay, %ld, geoStartLat, %.6f, geoStartLon, %.6f, geoEndLat, %.6f, geoEndLon, %.6f", clRoadID, geoRoadID, roadTraversedCount, geoRoadClass, geoFormOfWay, v10, v12, v14, v15];
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
      v13 = objectCopy;
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

+ (id)createWithGeoRoadDataMO:(id)o
{
  oCopy = o;
  if ([oCopy clRoadID])
  {
    clRoadID = [oCopy clRoadID];
  }

  else
  {
    clRoadID = 0;
  }

  if ([oCopy geoRoadID])
  {
    geoRoadID = [oCopy geoRoadID];
  }

  else
  {
    geoRoadID = 0;
  }

  if ([oCopy roadTraversedCount])
  {
    roadTraversedCount = [oCopy roadTraversedCount];
  }

  else
  {
    roadTraversedCount = 0;
  }

  [oCopy geoRoadStartLatitude];
  v7 = 0.0;
  v8 = 0.0;
  if (v9 != 0.0)
  {
    [oCopy geoRoadStartLatitude];
    v8 = v10;
  }

  [oCopy geoRoadStartLongitude];
  if (v11 != 0.0)
  {
    [oCopy geoRoadStartLongitude];
    v7 = v12;
  }

  [oCopy geoRoadEndLatitude];
  v13 = 0.0;
  v14 = 0.0;
  if (v15 != 0.0)
  {
    [oCopy geoRoadEndLatitude];
    v14 = v16;
  }

  [oCopy geoRoadEndLongitude];
  if (v17 != 0.0)
  {
    [oCopy geoRoadEndLongitude];
    v13 = v18;
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

  v21 = [[RTGeoRoadData alloc] initWithclRoadID:clRoadID geoRoadID:geoRoadID roadTraversedCount:roadTraversedCount geoRoadStartLatitude:geoRoadClass geoRoadStartLongitude:geoFormOfWay geoRoadEndLatitude:v8 geoRoadEndLongitude:v7 geoRoadClass:v14 geoFormOfWay:v13];

  return v21;
}

- (id)managedObjectWithContext:(id)context
{
  if (context)
  {
    v3 = [RTGeoRoadDataMO managedObjectWithGeoRoadData:self inManagedObjectContext:context];
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