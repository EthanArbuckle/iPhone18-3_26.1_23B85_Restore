@interface RTHistoryEntryPlaceDisplay
- (RTHistoryEntryPlaceDisplay)initWithIdentifier:(id)identifier usageDate:(id)date location:(id)location mapItem:(id)item;
- (id)description;
@end

@implementation RTHistoryEntryPlaceDisplay

- (RTHistoryEntryPlaceDisplay)initWithIdentifier:(id)identifier usageDate:(id)date location:(id)location mapItem:(id)item
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dateCopy = date;
  locationCopy = location;
  itemCopy = item;
  v14 = itemCopy;
  if (!locationCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[RTHistoryEntryPlaceDisplay initWithIdentifier:usageDate:location:mapItem:]";
      v27 = 1024;
      v28 = 31;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location (in %s:%d)", buf, 0x12u);
    }

    if (v14)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!itemCopy)
  {
LABEL_9:
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[RTHistoryEntryPlaceDisplay initWithIdentifier:usageDate:location:mapItem:]";
      v27 = 1024;
      v28 = 32;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: mapItem (in %s:%d)", buf, 0x12u);
    }

LABEL_12:
    selfCopy = 0;
    goto LABEL_13;
  }

  v24.receiver = self;
  v24.super_class = RTHistoryEntryPlaceDisplay;
  v15 = [(RTHistoryEntryPlaceDisplay *)&v24 init];
  if (v15)
  {
    v16 = [identifierCopy copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = [dateCopy copy];
    usageDate = v15->_usageDate;
    v15->_usageDate = v18;

    objc_storeStrong(&v15->_location, location);
    objc_storeStrong(&v15->_mapItem, item);
  }

  self = v15;
  selfCopy = self;
LABEL_13:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  stringFromDate = [(NSDate *)self->_usageDate stringFromDate];
  v6 = [v3 stringWithFormat:@"identifier, %@, usageDate, %@, location, %@, mapItem, %@", identifier, stringFromDate, self->_location, self->_mapItem];

  return v6;
}

@end