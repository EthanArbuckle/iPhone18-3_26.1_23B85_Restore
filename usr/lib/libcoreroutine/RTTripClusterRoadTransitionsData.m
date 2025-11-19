@interface RTTripClusterRoadTransitionsData
+ (id)createWithManagedObject:(id)a3;
+ (id)createWithTripClusterRoadTransitionsDataMO:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRoadTransitionsData:(id)a3;
- (NSString)description;
- (RTTripClusterRoadTransitionsData)initWithClusterID:(id)a3 roadTransitions:(id)a4;
- (RTTripClusterRoadTransitionsData)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)managedObjectWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripClusterRoadTransitionsData

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
      v6 = [objc_opt_class() createWithTripClusterRoadTransitionsDataMO:v5];

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
      v15 = "+[RTTripClusterRoadTransitionsData(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 33;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTTripClusterRoadTransitions+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithTripClusterRoadTransitionsDataMO:(id)a3
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
  v8 = [v3 roadTransitions];

  if (v8)
  {
    v9 = [v3 roadTransitions];

    v7 = v9;
  }

  v10 = [[RTTripClusterRoadTransitionsData alloc] initWithClusterID:v4 roadTransitions:v7];

  return v10;
}

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTTripClusterRoadTransitionsData2MO managedObjectWithTripClusterRoadTransitions:self inManagedObjectContext:a3];
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

- (RTTripClusterRoadTransitionsData)initWithClusterID:(id)a3 roadTransitions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RTTripClusterRoadTransitionsData;
  v9 = [(RTTripClusterRoadTransitionsData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clusterID, a3);
    objc_storeStrong(&v10->_roadTransitions, a4);
  }

  return v10;
}

- (RTTripClusterRoadTransitionsData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"clusterID"];
  v6 = [v4 decodeObjectForKey:@"roadTransitions"];

  v7 = [(RTTripClusterRoadTransitionsData *)self initWithClusterID:v5 roadTransitions:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RTTripClusterRoadTransitionsData *)self clusterID];
  [v4 encodeObject:v5 forKey:@"clusterID"];

  v6 = [(RTTripClusterRoadTransitionsData *)self roadTransitions];
  [v4 encodeObject:v6 forKey:@"roadTransitions"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  roadTransitions = self->_roadTransitions;
  clusterID = self->_clusterID;

  return [v4 initWithClusterID:clusterID roadTransitions:roadTransitions];
}

- (BOOL)isEqualToRoadTransitionsData:(id)a3
{
  v4 = a3;
  v5 = [(RTTripClusterRoadTransitionsData *)self clusterID];
  v6 = [v4 clusterID];
  if ([v5 isEqual:v6])
  {
    v7 = [(RTTripClusterRoadTransitionsData *)self roadTransitions];
    v8 = [v4 roadTransitions];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterRoadTransitionsData *)self isEqualToRoadTransitionsData:v5];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTTripClusterRoadTransitionsData *)self clusterID];
  v5 = [v4 UUIDString];
  v6 = [(RTTripClusterRoadTransitionsData *)self roadTransitions];
  v7 = [v3 stringWithFormat:@"clusterID, %@, dataLength, %lu", v5, objc_msgSend(v6, "length")];

  return v7;
}

@end