@interface RTNavigationRouteSummary
- (BOOL)isEqual:(id)a3;
- (RTNavigationRouteSummary)initWithCoder:(id)a3;
- (RTNavigationRouteSummary)initWithOriginMapItem:(id)a3 destinationMapItem:(id)a4 travelTime:(double)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTNavigationRouteSummary

- (RTNavigationRouteSummary)initWithOriginMapItem:(id)a3 destinationMapItem:(id)a4 travelTime:(double)a5
{
  v9 = a3;
  v10 = a4;
  if (v10)
  {
    v16.receiver = self;
    v16.super_class = RTNavigationRouteSummary;
    v11 = [(RTNavigationRouteSummary *)&v16 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_originMapItem, a3);
      objc_storeStrong(&v12->_destinationMapItem, a4);
      v12->_travelTime = a5;
    }

    self = v12;
    v13 = self;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinationMapItem", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTNavigationRouteSummary *)self originMapItem];
  v5 = [(RTNavigationRouteSummary *)self destinationMapItem];
  [(RTNavigationRouteSummary *)self travelTime];
  v7 = [v3 stringWithFormat:@"origin map item, %@, destination map item, %@, travelTime, %.2f", v4, v5, v6];

  return v7;
}

- (RTNavigationRouteSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"OriginMapItem"];
  v6 = [v4 decodeObjectForKey:@"DestinationMapItem"];
  [v4 decodeDoubleForKey:@"TravelTime"];
  v8 = v7;

  v9 = [(RTNavigationRouteSummary *)self initWithOriginMapItem:v5 destinationMapItem:v6 travelTime:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  originMapItem = self->_originMapItem;
  v5 = a3;
  [v5 encodeObject:originMapItem forKey:@"OriginMapItem"];
  [v5 encodeObject:self->_destinationMapItem forKey:@"DestinationMapItem"];
  [v5 encodeDouble:@"TravelTime" forKey:self->_travelTime];
}

- (unint64_t)hash
{
  v3 = [(RTNavigationRouteSummary *)self originMapItem];
  v4 = [v3 hash];
  v5 = [(RTNavigationRouteSummary *)self destinationMapItem];
  v6 = [v5 hash] ^ v4;
  v7 = MEMORY[0x277CCABB0];
  [(RTNavigationRouteSummary *)self travelTime];
  v8 = [v7 numberWithDouble:?];
  v9 = [v8 hash];

  return v6 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTNavigationRouteSummary *)self originMapItem];
      v7 = [(RTNavigationRouteSummary *)v5 originMapItem];
      if ([v6 isEqualToMapItem:v7])
      {
        v8 = [(RTNavigationRouteSummary *)self destinationMapItem];
        v9 = [(RTNavigationRouteSummary *)v5 destinationMapItem];
        if ([v8 isEqualToMapItem:v9])
        {
          [(RTNavigationRouteSummary *)self travelTime];
          v11 = v10;
          [(RTNavigationRouteSummary *)v5 travelTime];
          v13 = v11 == v12;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

@end