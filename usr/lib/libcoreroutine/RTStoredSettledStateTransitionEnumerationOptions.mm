@interface RTStoredSettledStateTransitionEnumerationOptions
- (RTStoredSettledStateTransitionEnumerationOptions)initWithAscending:(BOOL)a3 dateInterval:(id)a4 limit:(id)a5 batchSize:(unint64_t)a6;
- (id)description;
@end

@implementation RTStoredSettledStateTransitionEnumerationOptions

- (RTStoredSettledStateTransitionEnumerationOptions)initWithAscending:(BOOL)a3 dateInterval:(id)a4 limit:(id)a5 batchSize:(unint64_t)a6
{
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v12 && ![v12 unsignedIntegerValue])
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !limit || (limit && limit.unsignedIntegerValue > 0)", buf, 2u);
    }

    v16 = 0;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = RTStoredSettledStateTransitionEnumerationOptions;
    v14 = [(RTStoredSettledStateTransitionEnumerationOptions *)&v19 init];
    v15 = v14;
    if (v14)
    {
      v14->_ascending = a3;
      objc_storeStrong(&v14->_dateInterval, a4);
      objc_storeStrong(&v15->_limit, a5);
      v15->_batchSize = a6;
    }

    self = v15;
    v16 = self;
  }

  return v16;
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

  v5 = [(NSDateInterval *)self->_dateInterval startDate];
  v6 = [v5 stringFromDate];
  v7 = [(NSDateInterval *)self->_dateInterval endDate];
  v8 = [v7 stringFromDate];
  v9 = [v3 stringWithFormat:@"ascending, %@, startDate, %@, endDate, %@, limit, %@", v4, v6, v8, self->_limit];

  return v9;
}

@end