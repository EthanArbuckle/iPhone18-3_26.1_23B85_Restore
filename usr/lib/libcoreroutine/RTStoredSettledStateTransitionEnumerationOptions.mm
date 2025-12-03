@interface RTStoredSettledStateTransitionEnumerationOptions
- (RTStoredSettledStateTransitionEnumerationOptions)initWithAscending:(BOOL)ascending dateInterval:(id)interval limit:(id)limit batchSize:(unint64_t)size;
- (id)description;
@end

@implementation RTStoredSettledStateTransitionEnumerationOptions

- (RTStoredSettledStateTransitionEnumerationOptions)initWithAscending:(BOOL)ascending dateInterval:(id)interval limit:(id)limit batchSize:(unint64_t)size
{
  intervalCopy = interval;
  limitCopy = limit;
  v13 = limitCopy;
  if (limitCopy && ![limitCopy unsignedIntegerValue])
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !limit || (limit && limit.unsignedIntegerValue > 0)", buf, 2u);
    }

    selfCopy = 0;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = RTStoredSettledStateTransitionEnumerationOptions;
    v14 = [(RTStoredSettledStateTransitionEnumerationOptions *)&v19 init];
    v15 = v14;
    if (v14)
    {
      v14->_ascending = ascending;
      objc_storeStrong(&v14->_dateInterval, interval);
      objc_storeStrong(&v15->_limit, limit);
      v15->_batchSize = size;
    }

    self = v15;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if (self->_ascending)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  stringFromDate = [startDate stringFromDate];
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  stringFromDate2 = [endDate stringFromDate];
  v9 = [v3 stringWithFormat:@"ascending, %@, startDate, %@, endDate, %@, limit, %@", v4, stringFromDate, stringFromDate2, self->_limit];

  return v9;
}

@end