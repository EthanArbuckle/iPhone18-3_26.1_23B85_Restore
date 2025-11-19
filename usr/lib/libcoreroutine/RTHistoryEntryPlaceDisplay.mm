@interface RTHistoryEntryPlaceDisplay
- (RTHistoryEntryPlaceDisplay)initWithIdentifier:(id)a3 usageDate:(id)a4 location:(id)a5 mapItem:(id)a6;
- (id)description;
@end

@implementation RTHistoryEntryPlaceDisplay

- (RTHistoryEntryPlaceDisplay)initWithIdentifier:(id)a3 usageDate:(id)a4 location:(id)a5 mapItem:(id)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v12)
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

  if (!v13)
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
    v20 = 0;
    goto LABEL_13;
  }

  v24.receiver = self;
  v24.super_class = RTHistoryEntryPlaceDisplay;
  v15 = [(RTHistoryEntryPlaceDisplay *)&v24 init];
  if (v15)
  {
    v16 = [v10 copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v18 = [v11 copy];
    usageDate = v15->_usageDate;
    v15->_usageDate = v18;

    objc_storeStrong(&v15->_location, a5);
    objc_storeStrong(&v15->_mapItem, a6);
  }

  self = v15;
  v20 = self;
LABEL_13:

  return v20;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  v5 = [(NSDate *)self->_usageDate stringFromDate];
  v6 = [v3 stringWithFormat:@"identifier, %@, usageDate, %@, location, %@, mapItem, %@", identifier, v5, self->_location, self->_mapItem];

  return v6;
}

@end