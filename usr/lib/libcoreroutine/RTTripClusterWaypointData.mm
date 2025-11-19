@interface RTTripClusterWaypointData
+ (id)createWithManagedObject:(id)a3;
+ (id)createWithTripClusterWaypointDataMO:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToWaypointData:(id)a3;
- (NSString)description;
- (RTTripClusterWaypointData)initWithClusterID:(id)a3 waypoints:(id)a4;
- (RTTripClusterWaypointData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)managedObjectWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripClusterWaypointData

- (RTTripClusterWaypointData)initWithClusterID:(id)a3 waypoints:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RTTripClusterWaypointData;
  v9 = [(RTTripClusterWaypointData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clusterID, a3);
    objc_storeStrong(&v10->_waypoints, a4);
  }

  return v10;
}

- (RTTripClusterWaypointData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"clusterID"];
  v6 = [v4 decodeObjectForKey:@"waypoints"];

  v7 = [(RTTripClusterWaypointData *)self initWithClusterID:v5 waypoints:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RTTripClusterWaypointData *)self clusterID];
  [v4 encodeObject:v5 forKey:@"clusterID"];

  v6 = [(RTTripClusterWaypointData *)self waypoints];
  [v4 encodeObject:v6 forKey:@"waypoints"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  waypoints = self->_waypoints;
  clusterID = self->_clusterID;

  return [v4 initWithClusterID:clusterID waypoints:waypoints];
}

- (BOOL)isEqualToWaypointData:(id)a3
{
  v4 = a3;
  v5 = [(RTTripClusterWaypointData *)self clusterID];
  v6 = [v4 clusterID];
  if ([v5 isEqual:v6])
  {
    v7 = [(RTTripClusterWaypointData *)self waypoints];
    v8 = [v4 waypoints];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterWaypointData *)self isEqualToWaypointData:v5];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTTripClusterWaypointData *)self clusterID];
  v5 = [v4 UUIDString];
  v6 = [(RTTripClusterWaypointData *)self waypoints];
  v7 = [v3 stringWithFormat:@"clusterID, %@, dataLength, %lu", v5, objc_msgSend(v6, "length")];

  return v7;
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
      v6 = [objc_opt_class() createWithTripClusterWaypointDataMO:v5];

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
      v15 = "+[RTTripClusterWaypointData(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 33;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTTripClusterWaypoint+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithTripClusterWaypointDataMO:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v3 clusterID];

  if (v5)
  {
    v6 = [v3 clusterID];

    v4 = v6;
  }

  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v8 = [v3 waypoints];

  if (v8)
  {
    v9 = [v3 waypoints];

    v7 = v9;
  }

  v10 = [[RTTripClusterWaypointData alloc] initWithClusterID:v4 waypoints:v7];

  return v10;
}

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTTripClusterWaypointDataMO managedObjectWithTripClusterWaypoints:self inManagedObjectContext:a3];
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