@interface RTHistoryEntryRoute
- (RTHistoryEntryRoute)initWithIdentifier:(id)identifier usageDate:(id)date originLocation:(id)location originMapItem:(id)item destinationLocation:(id)destinationLocation destinationMapItem:(id)mapItem navigationWasInterrupted:(BOOL)interrupted;
- (id)description;
@end

@implementation RTHistoryEntryRoute

- (RTHistoryEntryRoute)initWithIdentifier:(id)identifier usageDate:(id)date originLocation:(id)location originMapItem:(id)item destinationLocation:(id)destinationLocation destinationMapItem:(id)mapItem navigationWasInterrupted:(BOOL)interrupted
{
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dateCopy = date;
  locationCopy = location;
  itemCopy = item;
  destinationLocationCopy = destinationLocation;
  mapItemCopy = mapItem;
  v20 = mapItemCopy;
  if (!destinationLocationCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[RTHistoryEntryRoute initWithIdentifier:usageDate:originLocation:originMapItem:destinationLocation:destinationMapItem:navigationWasInterrupted:]";
      v34 = 1024;
      v35 = 33;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinationLocation (in %s:%d)", buf, 0x12u);
    }

    if (v20)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!mapItemCopy)
  {
LABEL_9:
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "[RTHistoryEntryRoute initWithIdentifier:usageDate:originLocation:originMapItem:destinationLocation:destinationMapItem:navigationWasInterrupted:]";
      v34 = 1024;
      v35 = 34;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinationMapItem (in %s:%d)", buf, 0x12u);
    }

LABEL_12:
    selfCopy = 0;
    goto LABEL_13;
  }

  v31.receiver = self;
  v31.super_class = RTHistoryEntryRoute;
  v21 = [(RTHistoryEntryRoute *)&v31 init];
  if (v21)
  {
    v22 = [identifierCopy copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [dateCopy copy];
    usageDate = v21->_usageDate;
    v21->_usageDate = v24;

    objc_storeStrong(&v21->_originLocation, location);
    objc_storeStrong(&v21->_originMapItem, item);
    objc_storeStrong(&v21->_destinationLocation, destinationLocation);
    objc_storeStrong(&v21->_destinationMapItem, mapItem);
    v21->_navigationWasInterrupted = interrupted;
  }

  self = v21;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  stringFromDate = [(NSDate *)self->_usageDate stringFromDate];
  v6 = stringFromDate;
  if (self->_navigationWasInterrupted)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"identifier, %@, usageDate, %@, originLocation, %@, originMapItem, %@, destinationLocation, %@, destinationMapItem, %@, navigationWasInterrupted, %@", identifier, stringFromDate, *&self->_originLocation, self->_destinationLocation, self->_destinationMapItem, v7];

  return v8;
}

@end