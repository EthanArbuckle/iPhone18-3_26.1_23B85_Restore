@interface RTTripClusterRecency
+ (id)createWithManagedObject:(id)a3;
+ (id)createWithTripClusterRecencyMO:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecency:(id)a3;
- (NSString)description;
- (RTTripClusterRecency)initWithClusterID:(id)a3 startTime:(id)a4 endTime:(id)a5;
- (RTTripClusterRecency)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)managedObjectWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripClusterRecency

- (RTTripClusterRecency)initWithClusterID:(id)a3 startTime:(id)a4 endTime:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = RTTripClusterRecency;
  v12 = [(RTTripClusterRecency *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clusterID, a3);
    objc_storeStrong(&v13->_startTime, a4);
    objc_storeStrong(&v13->_endTime, a5);
  }

  return v13;
}

- (RTTripClusterRecency)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"clusterID"];
  v6 = [v4 decodeObjectForKey:@"startTime"];
  v7 = [v4 decodeObjectForKey:@"endTime"];

  v8 = [(RTTripClusterRecency *)self initWithClusterID:v5 startTime:v6 endTime:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RTTripClusterRecency *)self clusterID];
  [v4 encodeObject:v5 forKey:@"clusterID"];

  v6 = [(RTTripClusterRecency *)self startTime];
  [v4 encodeObject:v6 forKey:@"startTime"];

  v7 = [(RTTripClusterRecency *)self endTime];
  [v4 encodeObject:v7 forKey:@"endTime"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  clusterID = self->_clusterID;
  startTime = self->_startTime;
  endTime = self->_endTime;

  return [v4 initWithClusterID:clusterID startTime:startTime endTime:endTime];
}

- (BOOL)isEqualToRecency:(id)a3
{
  v4 = a3;
  v5 = [(RTTripClusterRecency *)self clusterID];
  v6 = [v4 clusterID];
  if ([v5 isEqual:v6])
  {
    v7 = [(RTTripClusterRecency *)self startTime];
    v8 = [v4 startTime];
    if ([v7 isEqual:v8])
    {
      v9 = [(RTTripClusterRecency *)self endTime];
      v10 = [v4 endTime];
      v11 = [v9 isEqual:v10];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterRecency *)self isEqualToRecency:v5];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTTripClusterRecency *)self clusterID];
  v5 = [v4 UUIDString];
  v6 = [(RTTripClusterRecency *)self startTime];
  v7 = [(RTTripClusterRecency *)self endTime];
  v8 = [v3 stringWithFormat:@"clusterID, %@, startTime, %@, endTime, %@", v5, v6, v7];

  return v8;
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
      v13 = v4;
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

+ (id)createWithTripClusterRecencyMO:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 clusterID];

  if (v5)
  {
    v6 = [v3 clusterID];

    v4 = v6;
  }

  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v3 startTime];

  if (v8)
  {
    v9 = [v3 startTime];

    v7 = v9;
  }

  v10 = [MEMORY[0x277CBEAA8] date];
  v11 = [v3 endTime];

  if (v11)
  {
    v12 = [v3 endTime];

    v10 = v12;
  }

  v13 = [[RTTripClusterRecency alloc] initWithClusterID:v4 startTime:v7 endTime:v10];

  return v13;
}

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTTripClusterRecencyMO managedObjectWithTripClusterRecency:self inManagedObjectContext:a3];
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