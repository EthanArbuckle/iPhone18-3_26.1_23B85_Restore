@interface RTTripClusterRoute
+ (id)createWithManagedObject:(id)object;
+ (id)createWithTripClusterLocationsMO:(id)o;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRoute:(id)route;
- (NSString)description;
- (RTTripClusterRoute)initWithClusterID:(id)d clRoadID:(unint64_t)iD latitude:(double)latitude longitude:(double)longitude course:(double)course sequence:(unsigned __int16)sequence followedByUTurn:(BOOL)turn;
- (RTTripClusterRoute)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)managedObjectWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripClusterRoute

- (RTTripClusterRoute)initWithClusterID:(id)d clRoadID:(unint64_t)iD latitude:(double)latitude longitude:(double)longitude course:(double)course sequence:(unsigned __int16)sequence followedByUTurn:(BOOL)turn
{
  dCopy = d;
  v21.receiver = self;
  v21.super_class = RTTripClusterRoute;
  v18 = [(RTTripClusterRoute *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_clRoadID = iD;
    objc_storeStrong(&v18->_clusterID, d);
    v19->_latitude = latitude;
    v19->_longitude = longitude;
    v19->_sequence = sequence;
    v19->_course = course;
    v19->_followedByUTurn = turn;
  }

  return v19;
}

- (RTTripClusterRoute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"clRoadID"];
  v6 = [coderCopy decodeObjectForKey:@"clusterID"];
  [coderCopy decodeDoubleForKey:@"latitude"];
  v8 = v7;
  [coderCopy decodeDoubleForKey:@"longitude"];
  v10 = v9;
  [coderCopy decodeDoubleForKey:@"course"];
  v12 = v11;
  v13 = [coderCopy decodeIntForKey:@"sequence"];
  v14 = [coderCopy decodeBoolForKey:@"uturn"];

  v15 = [(RTTripClusterRoute *)self initWithClusterID:v6 clRoadID:v5 latitude:v13 longitude:v14 course:v8 sequence:v10 followedByUTurn:v12];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[RTTripClusterRoute clRoadID](self forKey:{"clRoadID"), @"clRoadID"}];
  clusterID = [(RTTripClusterRoute *)self clusterID];
  [coderCopy encodeObject:clusterID forKey:@"clusterID"];

  [(RTTripClusterRoute *)self latitude];
  [coderCopy encodeDouble:@"latitude" forKey:?];
  [(RTTripClusterRoute *)self longitude];
  [coderCopy encodeDouble:@"longitude" forKey:?];
  [(RTTripClusterRoute *)self course];
  [coderCopy encodeDouble:@"course" forKey:?];
  [coderCopy encodeInt:-[RTTripClusterRoute sequence](self forKey:{"sequence"), @"sequence"}];
  [coderCopy encodeBool:-[RTTripClusterRoute followedByUTurn](self forKey:{"followedByUTurn"), @"uturn"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  clRoadID = self->_clRoadID;
  clusterID = self->_clusterID;
  latitude = self->_latitude;
  longitude = self->_longitude;
  course = self->_course;
  sequence = self->_sequence;
  followedByUTurn = self->_followedByUTurn;

  return [v4 initWithClusterID:clusterID clRoadID:clRoadID latitude:sequence longitude:followedByUTurn course:latitude sequence:longitude followedByUTurn:course];
}

- (BOOL)isEqualToRoute:(id)route
{
  routeCopy = route;
  clusterID = [(RTTripClusterRoute *)self clusterID];
  clusterID2 = [routeCopy clusterID];
  if (clusterID == clusterID2 && (v7 = -[RTTripClusterRoute clRoadID](self, "clRoadID"), v7 == [routeCopy clRoadID]) && (-[RTTripClusterRoute latitude](self, "latitude"), v9 = v8, objc_msgSend(routeCopy, "latitude"), vabdd_f64(v9, v10) < 0.0000001) && (-[RTTripClusterRoute longitude](self, "longitude"), v12 = v11, objc_msgSend(routeCopy, "longitude"), vabdd_f64(v12, v13) < 0.0000001) && (-[RTTripClusterRoute course](self, "course"), v15 = v14, objc_msgSend(routeCopy, "course"), vabdd_f64(v15, v16) < 0.001) && (v17 = -[RTTripClusterRoute sequence](self, "sequence"), v17 == objc_msgSend(routeCopy, "sequence")))
  {
    followedByUTurn = [(RTTripClusterRoute *)self followedByUTurn];
    v19 = followedByUTurn ^ [routeCopy followedByUTurn] ^ 1;
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterRoute *)self isEqualToRoute:v5];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  clusterID = [(RTTripClusterRoute *)self clusterID];
  uUIDString = [clusterID UUIDString];
  clRoadID = [(RTTripClusterRoute *)self clRoadID];
  sequence = [(RTTripClusterRoute *)self sequence];
  [(RTTripClusterRoute *)self latitude];
  v9 = v8;
  [(RTTripClusterRoute *)self longitude];
  v11 = v10;
  [(RTTripClusterRoute *)self course];
  v13 = [v3 stringWithFormat:@"clusterID, %@, clRoadID, %llu, sequence, %d, lat, %.7f, lon, %.7f, course, %.3f, uturn, %d", uUIDString, clRoadID, sequence, v9, v11, v12, -[RTTripClusterRoute followedByUTurn](self, "followedByUTurn")];

  return v13;
}

- (id)dictionaryRepresentation
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12[0] = @"latitude";
  v3 = MEMORY[0x277CCABB0];
  [(RTTripClusterRoute *)self latitude];
  v4 = [v3 numberWithDouble:?];
  v13[0] = v4;
  v12[1] = @"longitude";
  v5 = MEMORY[0x277CCABB0];
  [(RTTripClusterRoute *)self longitude];
  v6 = [v5 numberWithDouble:?];
  v13[1] = v6;
  v12[2] = @"course";
  v7 = MEMORY[0x277CCABB0];
  [(RTTripClusterRoute *)self course];
  v8 = [v7 numberWithDouble:?];
  v13[2] = v8;
  v12[3] = @"followedByUTurn";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[RTTripClusterRoute followedByUTurn](self, "followedByUTurn")}];
  v13[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
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
      v6 = [objc_opt_class() createWithTripClusterLocationsMO:v5];

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
      v15 = "+[RTTripClusterRoute(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 33;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTTripClusterRoute+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithTripClusterLocationsMO:(id)o
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

  uUID = [MEMORY[0x277CCAD78] UUID];
  clusterID = [oCopy clusterID];

  if (clusterID)
  {
    clusterID2 = [oCopy clusterID];

    uUID = clusterID2;
  }

  [oCopy latitude];
  v8 = 0.0;
  v9 = 0.0;
  if (v10 != 0.0)
  {
    [oCopy latitude];
    v9 = v11;
  }

  [oCopy longitude];
  if (v12 != 0.0)
  {
    [oCopy longitude];
    v8 = v13;
  }

  if (oCopy)
  {
    [oCopy course];
    v15 = v14;
  }

  else
  {
    v15 = -1.0;
  }

  if ([oCopy sequence])
  {
    sequence = [oCopy sequence];
  }

  else
  {
    sequence = 0;
  }

  if ([oCopy followedByUTurn])
  {
    followedByUTurn = [oCopy followedByUTurn];
  }

  else
  {
    followedByUTurn = 0;
  }

  v18 = [[RTTripClusterRoute alloc] initWithClusterID:uUID clRoadID:clRoadID latitude:sequence longitude:followedByUTurn course:v9 sequence:v8 followedByUTurn:v15];

  return v18;
}

- (id)managedObjectWithContext:(id)context
{
  if (context)
  {
    v3 = [RTTripClusterRouteMO managedObjectWithTripClusterLocations:self inManagedObjectContext:context];
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