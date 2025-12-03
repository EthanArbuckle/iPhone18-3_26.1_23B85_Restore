@interface RTTripClusterRoadTransitionsData
+ (id)createWithManagedObject:(id)object;
+ (id)createWithTripClusterRoadTransitionsDataMO:(id)o;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRoadTransitionsData:(id)data;
- (NSString)description;
- (RTTripClusterRoadTransitionsData)initWithClusterID:(id)d roadTransitions:(id)transitions;
- (RTTripClusterRoadTransitionsData)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)managedObjectWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTTripClusterRoadTransitionsData

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
      v13 = objectCopy;
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

+ (id)createWithTripClusterRoadTransitionsDataMO:(id)o
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
  roadTransitions = [oCopy roadTransitions];

  if (roadTransitions)
  {
    roadTransitions2 = [oCopy roadTransitions];

    v7 = roadTransitions2;
  }

  v10 = [[RTTripClusterRoadTransitionsData alloc] initWithClusterID:uUID roadTransitions:v7];

  return v10;
}

- (id)managedObjectWithContext:(id)context
{
  if (context)
  {
    v3 = [RTTripClusterRoadTransitionsData2MO managedObjectWithTripClusterRoadTransitions:self inManagedObjectContext:context];
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

- (RTTripClusterRoadTransitionsData)initWithClusterID:(id)d roadTransitions:(id)transitions
{
  dCopy = d;
  transitionsCopy = transitions;
  v12.receiver = self;
  v12.super_class = RTTripClusterRoadTransitionsData;
  v9 = [(RTTripClusterRoadTransitionsData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clusterID, d);
    objc_storeStrong(&v10->_roadTransitions, transitions);
  }

  return v10;
}

- (RTTripClusterRoadTransitionsData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"clusterID"];
  v6 = [coderCopy decodeObjectForKey:@"roadTransitions"];

  v7 = [(RTTripClusterRoadTransitionsData *)self initWithClusterID:v5 roadTransitions:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clusterID = [(RTTripClusterRoadTransitionsData *)self clusterID];
  [coderCopy encodeObject:clusterID forKey:@"clusterID"];

  roadTransitions = [(RTTripClusterRoadTransitionsData *)self roadTransitions];
  [coderCopy encodeObject:roadTransitions forKey:@"roadTransitions"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  roadTransitions = self->_roadTransitions;
  clusterID = self->_clusterID;

  return [v4 initWithClusterID:clusterID roadTransitions:roadTransitions];
}

- (BOOL)isEqualToRoadTransitionsData:(id)data
{
  dataCopy = data;
  clusterID = [(RTTripClusterRoadTransitionsData *)self clusterID];
  clusterID2 = [dataCopy clusterID];
  if ([clusterID isEqual:clusterID2])
  {
    roadTransitions = [(RTTripClusterRoadTransitionsData *)self roadTransitions];
    roadTransitions2 = [dataCopy roadTransitions];
    v9 = [roadTransitions isEqual:roadTransitions2];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterRoadTransitionsData *)self isEqualToRoadTransitionsData:v5];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  clusterID = [(RTTripClusterRoadTransitionsData *)self clusterID];
  uUIDString = [clusterID UUIDString];
  roadTransitions = [(RTTripClusterRoadTransitionsData *)self roadTransitions];
  v7 = [v3 stringWithFormat:@"clusterID, %@, dataLength, %lu", uUIDString, objc_msgSend(roadTransitions, "length")];

  return v7;
}

@end