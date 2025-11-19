@interface RTHistoryEntryRoute
- (RTHistoryEntryRoute)initWithIdentifier:(id)a3 usageDate:(id)a4 originLocation:(id)a5 originMapItem:(id)a6 destinationLocation:(id)a7 destinationMapItem:(id)a8 navigationWasInterrupted:(BOOL)a9;
- (id)description;
@end

@implementation RTHistoryEntryRoute

- (RTHistoryEntryRoute)initWithIdentifier:(id)a3 usageDate:(id)a4 originLocation:(id)a5 originMapItem:(id)a6 destinationLocation:(id)a7 destinationMapItem:(id)a8 navigationWasInterrupted:(BOOL)a9
{
  v36 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v30 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (!v18)
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

  if (!v19)
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
    v26 = 0;
    goto LABEL_13;
  }

  v31.receiver = self;
  v31.super_class = RTHistoryEntryRoute;
  v21 = [(RTHistoryEntryRoute *)&v31 init];
  if (v21)
  {
    v22 = [v15 copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v24 = [v16 copy];
    usageDate = v21->_usageDate;
    v21->_usageDate = v24;

    objc_storeStrong(&v21->_originLocation, a5);
    objc_storeStrong(&v21->_originMapItem, a6);
    objc_storeStrong(&v21->_destinationLocation, a7);
    objc_storeStrong(&v21->_destinationMapItem, a8);
    v21->_navigationWasInterrupted = a9;
  }

  self = v21;
  v26 = self;
LABEL_13:

  return v26;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  v5 = [(NSDate *)self->_usageDate stringFromDate];
  v6 = v5;
  if (self->_navigationWasInterrupted)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [v3 stringWithFormat:@"identifier, %@, usageDate, %@, originLocation, %@, originMapItem, %@, destinationLocation, %@, destinationMapItem, %@, navigationWasInterrupted, %@", identifier, v5, *&self->_originLocation, self->_destinationLocation, self->_destinationMapItem, v7];

  return v8;
}

@end