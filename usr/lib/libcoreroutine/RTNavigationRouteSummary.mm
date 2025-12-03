@interface RTNavigationRouteSummary
- (BOOL)isEqual:(id)equal;
- (RTNavigationRouteSummary)initWithCoder:(id)coder;
- (RTNavigationRouteSummary)initWithOriginMapItem:(id)item destinationMapItem:(id)mapItem travelTime:(double)time;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTNavigationRouteSummary

- (RTNavigationRouteSummary)initWithOriginMapItem:(id)item destinationMapItem:(id)mapItem travelTime:(double)time
{
  itemCopy = item;
  mapItemCopy = mapItem;
  if (mapItemCopy)
  {
    v16.receiver = self;
    v16.super_class = RTNavigationRouteSummary;
    v11 = [(RTNavigationRouteSummary *)&v16 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_originMapItem, item);
      objc_storeStrong(&v12->_destinationMapItem, mapItem);
      v12->_travelTime = time;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinationMapItem", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  originMapItem = [(RTNavigationRouteSummary *)self originMapItem];
  destinationMapItem = [(RTNavigationRouteSummary *)self destinationMapItem];
  [(RTNavigationRouteSummary *)self travelTime];
  v7 = [v3 stringWithFormat:@"origin map item, %@, destination map item, %@, travelTime, %.2f", originMapItem, destinationMapItem, v6];

  return v7;
}

- (RTNavigationRouteSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"OriginMapItem"];
  v6 = [coderCopy decodeObjectForKey:@"DestinationMapItem"];
  [coderCopy decodeDoubleForKey:@"TravelTime"];
  v8 = v7;

  v9 = [(RTNavigationRouteSummary *)self initWithOriginMapItem:v5 destinationMapItem:v6 travelTime:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  originMapItem = self->_originMapItem;
  coderCopy = coder;
  [coderCopy encodeObject:originMapItem forKey:@"OriginMapItem"];
  [coderCopy encodeObject:self->_destinationMapItem forKey:@"DestinationMapItem"];
  [coderCopy encodeDouble:@"TravelTime" forKey:self->_travelTime];
}

- (unint64_t)hash
{
  originMapItem = [(RTNavigationRouteSummary *)self originMapItem];
  v4 = [originMapItem hash];
  destinationMapItem = [(RTNavigationRouteSummary *)self destinationMapItem];
  v6 = [destinationMapItem hash] ^ v4;
  v7 = MEMORY[0x277CCABB0];
  [(RTNavigationRouteSummary *)self travelTime];
  v8 = [v7 numberWithDouble:?];
  v9 = [v8 hash];

  return v6 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      originMapItem = [(RTNavigationRouteSummary *)self originMapItem];
      originMapItem2 = [(RTNavigationRouteSummary *)v5 originMapItem];
      if ([originMapItem isEqualToMapItem:originMapItem2])
      {
        destinationMapItem = [(RTNavigationRouteSummary *)self destinationMapItem];
        destinationMapItem2 = [(RTNavigationRouteSummary *)v5 destinationMapItem];
        if ([destinationMapItem isEqualToMapItem:destinationMapItem2])
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