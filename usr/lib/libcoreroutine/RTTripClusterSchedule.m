@interface RTTripClusterSchedule
+ (id)createWithManagedObject:(id)a3;
+ (id)createWithTripClusterScheduleMO:(id)a3;
+ (int)getTimeIDFromDate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSchedule:(id)a3;
- (NSString)description;
- (RTTripClusterSchedule)initWithClusterID:(id)a3 timeID:(int)a4 count:(int)a5;
- (RTTripClusterSchedule)initWithCoder:(id)a3;
- (RTTripClusterSchedule)initWithTimeAndClusterID:(id)a3 time:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)managedObjectWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTTripClusterSchedule

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
      v6 = [objc_opt_class() createWithTripClusterScheduleMO:v5];

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
      v15 = "+[RTTripClusterSchedule(RTCoreDataTransformable) createWithManagedObject:]";
      v16 = 1024;
      v17 = 32;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, managedObject, %@, is not supported by RTTripClusterSchedule+CoreDataReadable (in %s:%d)", &v10, 0x26u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)createWithTripClusterScheduleMO:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 clusterID];

  if (v5)
  {
    v6 = [v3 clusterID];

    v4 = v6;
  }

  if ([v3 timeID])
  {
    v7 = [v3 timeID];
  }

  else
  {
    v7 = 0;
  }

  if ([v3 count])
  {
    v8 = [v3 count];
  }

  else
  {
    v8 = 0;
  }

  v9 = [[RTTripClusterSchedule alloc] initWithClusterID:v4 timeID:v7 count:v8];

  return v9;
}

- (id)managedObjectWithContext:(id)a3
{
  if (a3)
  {
    v3 = [RTTripClusterScheduleMO managedObjectWithTripClusterSchedule:self inManagedObjectContext:a3];
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

- (RTTripClusterSchedule)initWithClusterID:(id)a3 timeID:(int)a4 count:(int)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = RTTripClusterSchedule;
  v10 = [(RTTripClusterSchedule *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_clusterID, a3);
    v11->_timeID = a4;
    v11->_count = a5;
  }

  return v11;
}

+ (int)getTimeIDFromDate:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 component:512 fromDate:v4];

  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [v7 component:32 fromDate:v4];

  return v8 / 4 + 6 * v6 - 6;
}

- (RTTripClusterSchedule)initWithTimeAndClusterID:(id)a3 time:(id)a4
{
  v7 = a3;
  v8 = [RTTripClusterSchedule getTimeIDFromDate:a4];
  v12.receiver = self;
  v12.super_class = RTTripClusterSchedule;
  v9 = [(RTTripClusterSchedule *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clusterID, a3);
    v10->_timeID = v8;
    v10->_count = 1;
  }

  return v10;
}

- (RTTripClusterSchedule)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"clusterID"];
  v6 = [v4 decodeIntForKey:@"timeID"];
  v7 = [v4 decodeIntForKey:@"count"];

  v8 = [(RTTripClusterSchedule *)self initWithClusterID:v5 timeID:v6 count:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(RTTripClusterSchedule *)self clusterID];
  [v5 encodeObject:v4 forKey:@"clusterID"];

  [v5 encodeInt:-[RTTripClusterSchedule timeID](self forKey:{"timeID"), @"timeID"}];
  [v5 encodeInt:-[RTTripClusterSchedule count](self forKey:{"count"), @"count"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  clusterID = self->_clusterID;
  timeID = self->_timeID;
  count = self->_count;

  return [v4 initWithClusterID:clusterID timeID:timeID count:count];
}

- (BOOL)isEqualToSchedule:(id)a3
{
  v4 = a3;
  v5 = [(RTTripClusterSchedule *)self clusterID];
  v6 = [v4 clusterID];
  if (v5 == v6 && (v7 = -[RTTripClusterSchedule timeID](self, "timeID"), v7 == [v4 timeID]))
  {
    v8 = [(RTTripClusterSchedule *)self count];
    v9 = v8 == [v4 count];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(RTTripClusterSchedule *)self isEqualToSchedule:v5];
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTTripClusterSchedule *)self clusterID];
  v5 = [v4 UUIDString];
  v6 = [v3 stringWithFormat:@"clusterID, %@, timeID, %d, count, %d", v5, -[RTTripClusterSchedule timeID](self, "timeID"), -[RTTripClusterSchedule count](self, "count")];

  return v6;
}

@end