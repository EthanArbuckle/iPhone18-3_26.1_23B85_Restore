@interface RTTripClusterRoute
+ (id)createWithManagedObject:(id)a3;
+ (id)createWithTripClusterLocationsMO:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRoute:(id)a3;
- (NSString)description;
- (RTTripClusterRoute)initWithClusterID:(id)a3 clRoadID:(unint64_t)a4 latitude:(double)a5 longitude:(double)a6 course:(double)a7 sequence:(unsigned __int16)a8 followedByUTurn:(BOOL)a9;
- (RTTripClusterRoute)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)managedObjectWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripClusterRoute

- (RTTripClusterRoute)initWithClusterID:(id)a3 clRoadID:(unint64_t)a4 latitude:(double)a5 longitude:(double)a6 course:(double)a7 sequence:(unsigned __int16)a8 followedByUTurn:(BOOL)a9
{
  v17 = a3;
  v21.receiver = self;
  v21.super_class = RTTripClusterRoute;
  v18 = [(RTTripClusterRoute *)&v21 init];
  v19 = v18;
  if (v18)
  {
    v18->_clRoadID = a4;
    objc_storeStrong(&v18->_clusterID, a3);
    v19->_latitude = a5;
    v19->_longitude = a6;
    v19->_sequence = a8;
    v19->_course = a7;
    v19->_followedByUTurn = a9;
  }

  return v19;
}

- (RTTripClusterRoute)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"clRoadID"];
  v6 = [v4 decodeObjectForKey:@"clusterID"];
  [v4 decodeDoubleForKey:@"latitude"];
  v8 = v7;
  [v4 decodeDoubleForKey:@"longitude"];
  v10 = v9;
  [v4 decodeDoubleForKey:@"course"];
  v12 = v11;
  v13 = [v4 decodeIntForKey:@"sequence"];
  v14 = [v4 decodeBoolForKey:@"uturn"];

  v15 = [(RTTripClusterRoute *)self initWithClusterID:v6 clRoadID:v5 latitude:v13 longitude:v14 course:v8 sequence:v10 followedByUTurn:v12];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt64:-[RTTripClusterRoute clRoadID](self forKey:{"clRoadID"), @"clRoadID"}];
  v4 = [(RTTripClusterRoute *)self clusterID];
  [v5 encodeObject:v4 forKey:@"clusterID"];

  [(RTTripClusterRoute *)self latitude];
  [v5 encodeDouble:@"latitude" forKey:?];
  [(RTTripClusterRoute *)self longitude];
  [v5 encodeDouble:@"longitude" forKey:?];
  [(RTTripClusterRoute *)self course];
  [v5 encodeDouble:@"course" forKey:?];
  [v5 encodeInt:-[RTTripClusterRoute sequence](self forKey:{"sequence"), @"sequence"}];
  [v5 encodeBool:-[RTTripClusterRoute followedByUTurn](self forKey:{"followedByUTurn"), @"uturn"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  clRoadID = self->_clRoadID;
  clusterID = self->_clusterID;
  latitude = self->_latitude;
  longitude = self->_longitude;
  course = self->_course;
  sequence = self->_sequence;
  followedByUTurn = self->_followedByUTurn;

  return [v4 initWithClusterID:clusterID clRoadID:clRoadID latitude:sequence longitude:followedByUTurn course:latitude sequence:longitude followedByUTurn:course];
}

- (BOOL)isEqualToRoute:(id)a3
{
  v4 = a3;
  v5 = [(RTTripClusterRoute *)self clusterID];
  v6 = [v4 clusterID];
  if (v5 == v6 && (v7 = -[RTTripClusterRoute clRoadID](self, "clRoadID"), v7 == [v4 clRoadID]) && (-[RTTripClusterRoute latitude](self, "latitude"), v9 = v8, objc_msgSend(v4, "latitude"), vabdd_f64(v9, v10) < 0.0000001) && (-[RTTripClusterRoute longitude](self, "longitude"), v12 = v11, objc_msgSend(v4, "longitude"), vabdd_f64(v12, v13) < 0.0000001) && (-[RTTripClusterRoute course](self, "course"), v15 = v14, objc_msgSend(v4, "course"), vabdd_f64(v15, v16) < 0.001) && (v17 = -[RTTripClusterRoute sequence](self, "sequence"), v17 == objc_msgSend(v4, "sequence")))
  {
    v18 = [(RTTripClusterRoute *)self followedByUTurn];
    v19 = v18 ^ [v4 followedByUTurn] ^ 1;
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterRoute *)self isEqualToRoute:v5];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTTripClusterRoute *)self clusterID];
  v5 = [v4 UUIDString];
  v6 = [(RTTripClusterRoute *)self clRoadID];
  v7 = [(RTTripClusterRoute *)self sequence];
  [(RTTripClusterRoute *)self latitude];
  v9 = v8;
  [(RTTripClusterRoute *)self longitude];
  v11 = v10;
  [(RTTripClusterRoute *)self course];
  v13 = [v3 stringWithFormat:@"clusterID, %@, clRoadID, %llu, sequence, %d, lat, %.7f, lon, %.7f, course, %.3f, uturn, %d", v5, v6, v7, v9, v11, v12, -[RTTripClusterRoute followedByUTurn](self, "followedByUTurn")];

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
      v13 = v4;
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

+ (id)createWithTripClusterLocationsMO:(id)a3
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

  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v3 clusterID];

  if (v6)
  {
    v7 = [v3 clusterID];

    v5 = v7;
  }

  [v3 latitude];
  v8 = 0.0;
  v9 = 0.0;
  if (v10 != 0.0)
  {
    [v3 latitude];
    v9 = v11;
  }

  [v3 longitude];
  if (v12 != 0.0)
  {
    [v3 longitude];
    v8 = v13;
  }

  if (v3)
  {
    [v3 course];
    v15 = v14;
  }

  else
  {
    v15 = -1.0;
  }

  if ([v3 sequence])
  {
    v16 = [v3 sequence];
  }

  else
  {
    v16 = 0;
  }

  if ([v3 followedByUTurn])
  {
    v17 = [v3 followedByUTurn];
  }

  else
  {
    v17 = 0;
  }

  v18 = [[RTTripClusterRoute alloc] initWithClusterID:v5 clRoadID:v4 latitude:v16 longitude:v17 course:v9 sequence:v8 followedByUTurn:v15];

  return v18;
}

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTTripClusterRouteMO managedObjectWithTripClusterLocations:self inManagedObjectContext:a3];
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