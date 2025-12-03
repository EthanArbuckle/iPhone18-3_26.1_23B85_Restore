@interface RTTripClusterWaypointData
+ (id)createWithManagedObject:(id)object;
+ (id)createWithTripClusterWaypointDataMO:(id)o;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWaypointData:(id)data;
- (NSString)description;
- (RTTripClusterWaypointData)initWithClusterID:(id)d waypoints:(id)waypoints;
- (RTTripClusterWaypointData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)managedObjectWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripClusterWaypointData

- (RTTripClusterWaypointData)initWithClusterID:(id)d waypoints:(id)waypoints
{
  dCopy = d;
  waypointsCopy = waypoints;
  v12.receiver = self;
  v12.super_class = RTTripClusterWaypointData;
  v9 = [(RTTripClusterWaypointData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clusterID, d);
    objc_storeStrong(&v10->_waypoints, waypoints);
  }

  return v10;
}

- (RTTripClusterWaypointData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"clusterID"];
  v6 = [coderCopy decodeObjectForKey:@"waypoints"];

  v7 = [(RTTripClusterWaypointData *)self initWithClusterID:v5 waypoints:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clusterID = [(RTTripClusterWaypointData *)self clusterID];
  [coderCopy encodeObject:clusterID forKey:@"clusterID"];

  waypoints = [(RTTripClusterWaypointData *)self waypoints];
  [coderCopy encodeObject:waypoints forKey:@"waypoints"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  waypoints = self->_waypoints;
  clusterID = self->_clusterID;

  return [v4 initWithClusterID:clusterID waypoints:waypoints];
}

- (BOOL)isEqualToWaypointData:(id)data
{
  dataCopy = data;
  clusterID = [(RTTripClusterWaypointData *)self clusterID];
  clusterID2 = [dataCopy clusterID];
  if ([clusterID isEqual:clusterID2])
  {
    waypoints = [(RTTripClusterWaypointData *)self waypoints];
    waypoints2 = [dataCopy waypoints];
    v9 = [waypoints isEqual:waypoints2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterWaypointData *)self isEqualToWaypointData:v5];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  clusterID = [(RTTripClusterWaypointData *)self clusterID];
  uUIDString = [clusterID UUIDString];
  waypoints = [(RTTripClusterWaypointData *)self waypoints];
  v7 = [v3 stringWithFormat:@"clusterID, %@, dataLength, %lu", uUIDString, objc_msgSend(waypoints, "length")];

  return v7;
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
      v13 = objectCopy;
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

+ (id)createWithTripClusterWaypointDataMO:(id)o
{
  oCopy = o;
  uUID = [MEMORY[0x277CCAD78] UUID];
  clusterID = [oCopy clusterID];

  if (clusterID)
  {
    clusterID2 = [oCopy clusterID];

    uUID = clusterID2;
  }

  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  waypoints = [oCopy waypoints];

  if (waypoints)
  {
    waypoints2 = [oCopy waypoints];

    v7 = waypoints2;
  }

  v10 = [[RTTripClusterWaypointData alloc] initWithClusterID:uUID waypoints:v7];

  return v10;
}

- (id)managedObjectWithContext:(id)context
{
  if (context)
  {
    v3 = [RTTripClusterWaypointDataMO managedObjectWithTripClusterWaypoints:self inManagedObjectContext:context];
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