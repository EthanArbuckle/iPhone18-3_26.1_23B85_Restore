@interface RTTripClusterRecency
+ (id)createWithManagedObject:(id)object;
+ (id)createWithTripClusterRecencyMO:(id)o;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecency:(id)recency;
- (NSString)description;
- (RTTripClusterRecency)initWithClusterID:(id)d startTime:(id)time endTime:(id)endTime;
- (RTTripClusterRecency)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)managedObjectWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripClusterRecency

- (RTTripClusterRecency)initWithClusterID:(id)d startTime:(id)time endTime:(id)endTime
{
  dCopy = d;
  timeCopy = time;
  endTimeCopy = endTime;
  v15.receiver = self;
  v15.super_class = RTTripClusterRecency;
  v12 = [(RTTripClusterRecency *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clusterID, d);
    objc_storeStrong(&v13->_startTime, time);
    objc_storeStrong(&v13->_endTime, endTime);
  }

  return v13;
}

- (RTTripClusterRecency)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"clusterID"];
  v6 = [coderCopy decodeObjectForKey:@"startTime"];
  v7 = [coderCopy decodeObjectForKey:@"endTime"];

  v8 = [(RTTripClusterRecency *)self initWithClusterID:v5 startTime:v6 endTime:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clusterID = [(RTTripClusterRecency *)self clusterID];
  [coderCopy encodeObject:clusterID forKey:@"clusterID"];

  startTime = [(RTTripClusterRecency *)self startTime];
  [coderCopy encodeObject:startTime forKey:@"startTime"];

  endTime = [(RTTripClusterRecency *)self endTime];
  [coderCopy encodeObject:endTime forKey:@"endTime"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  clusterID = self->_clusterID;
  startTime = self->_startTime;
  endTime = self->_endTime;

  return [v4 initWithClusterID:clusterID startTime:startTime endTime:endTime];
}

- (BOOL)isEqualToRecency:(id)recency
{
  recencyCopy = recency;
  clusterID = [(RTTripClusterRecency *)self clusterID];
  clusterID2 = [recencyCopy clusterID];
  if ([clusterID isEqual:clusterID2])
  {
    startTime = [(RTTripClusterRecency *)self startTime];
    startTime2 = [recencyCopy startTime];
    if ([startTime isEqual:startTime2])
    {
      endTime = [(RTTripClusterRecency *)self endTime];
      endTime2 = [recencyCopy endTime];
      v11 = [endTime isEqual:endTime2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterRecency *)self isEqualToRecency:v5];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  clusterID = [(RTTripClusterRecency *)self clusterID];
  uUIDString = [clusterID UUIDString];
  startTime = [(RTTripClusterRecency *)self startTime];
  endTime = [(RTTripClusterRecency *)self endTime];
  v8 = [v3 stringWithFormat:@"clusterID, %@, startTime, %@, endTime, %@", uUIDString, startTime, endTime];

  return v8;
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
      v6 = [objc_opt_class() createWithTripClusterRecencyMO:v5];

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
      v15 = "+[RTTripClusterRecency(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 32;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTTripClusterRecency+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithTripClusterRecencyMO:(id)o
{
  oCopy = o;
  v4 = objc_opt_new();
  clusterID = [oCopy clusterID];

  if (clusterID)
  {
    clusterID2 = [oCopy clusterID];

    v4 = clusterID2;
  }

  date = [MEMORY[0x277CBEAA8] date];
  startTime = [oCopy startTime];

  if (startTime)
  {
    startTime2 = [oCopy startTime];

    date = startTime2;
  }

  date2 = [MEMORY[0x277CBEAA8] date];
  endTime = [oCopy endTime];

  if (endTime)
  {
    endTime2 = [oCopy endTime];

    date2 = endTime2;
  }

  v13 = [[RTTripClusterRecency alloc] initWithClusterID:v4 startTime:date endTime:date2];

  return v13;
}

- (id)managedObjectWithContext:(id)context
{
  if (context)
  {
    v3 = [RTTripClusterRecencyMO managedObjectWithTripClusterRecency:self inManagedObjectContext:context];
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