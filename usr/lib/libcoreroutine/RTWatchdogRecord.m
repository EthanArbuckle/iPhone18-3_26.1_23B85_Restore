@interface RTWatchdogRecord
- (RTWatchdogProtocol)object;
- (RTWatchdogRecord)initWithObject:(id)a3 timeout:(double)a4;
- (double)getLatency;
- (id)description;
@end

@implementation RTWatchdogRecord

- (RTWatchdogRecord)initWithObject:(id)a3 timeout:(double)a4
{
  v6 = a3;
  if (!v6)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v13 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: object";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_9;
  }

  if (a4 <= 0.0)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: timeout > 0";
    goto LABEL_12;
  }

  v17.receiver = self;
  v17.super_class = RTWatchdogRecord;
  v7 = [(RTWatchdogRecord *)&v17 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_object, v6);
    v9 = [MEMORY[0x277CBEAA8] distantPast];
    checkInStartDate = v8->_checkInStartDate;
    v8->_checkInStartDate = v9;

    v11 = [MEMORY[0x277CBEAA8] distantPast];
    checkInStopDate = v8->_checkInStopDate;
    v8->_checkInStopDate = v11;

    v8->_timeout = a4;
  }

  self = v8;
  v13 = self;
LABEL_10:

  return v13;
}

- (double)getLatency
{
  checkInStopDate = self->_checkInStopDate;
  if (checkInStopDate)
  {
    checkInStartDate = self->_checkInStartDate;

    [(NSDate *)checkInStopDate timeIntervalSinceDate:checkInStartDate];
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    [v6 timeIntervalSinceDate:self->_checkInStartDate];
    v8 = v7;

    return v8;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCACA8];
  v5 = [(RTWatchdogRecord *)self object];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(RTWatchdogRecord *)self checkInStartDate];
  v9 = [v3 stringFromDate:v8];
  v10 = [(RTWatchdogRecord *)self checkInStopDate];
  v11 = [v3 stringFromDate:v10];
  [(RTWatchdogRecord *)self timeout];
  v13 = v12;
  [(RTWatchdogRecord *)self getLatency];
  v15 = [v4 stringWithFormat:@"object, %@, start, %@, stop, %@, timeout, %f, latency, %f", v7, v9, v11, v13, v14];

  return v15;
}

- (RTWatchdogProtocol)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end