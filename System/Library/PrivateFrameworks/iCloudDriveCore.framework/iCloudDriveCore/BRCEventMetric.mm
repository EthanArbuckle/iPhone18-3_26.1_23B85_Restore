@interface BRCEventMetric
- (BRCEventMetric)initWithEventName:(id)a3;
- (double)duration;
- (id)description;
- (void)associateWithCompletedOperation:(id)a3;
@end

@implementation BRCEventMetric

- (BRCEventMetric)initWithEventName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRCEventMetric;
  v6 = [(BRCEventMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventName, a3);
    v7->_isCKMetric = 1;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  eventName = self->_eventName;
  [(BRCEventMetric *)self duration];
  v6 = v5;
  v7 = [(BRCEventMetric *)self subDescription];
  v8 = [v3 stringWithFormat:@"<%@ t:%.2fs%@>", eventName, v6, v7];

  return v8;
}

- (double)duration
{
  endTime = self->_endTime;
  if (endTime)
  {
    startTime = self->_startTime;

    [(NSDate *)endTime timeIntervalSinceDate:startTime];
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSinceDate:self->_startTime];
    v8 = v7;

    return v8;
  }

  return result;
}

- (void)associateWithCompletedOperation:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_isCKMetric)
  {
    associatedCKEventMetricIfAvailable = self->_associatedCKEventMetricIfAvailable;
    if (!associatedCKEventMetricIfAvailable)
    {
      v6 = [objc_alloc(MEMORY[0x277CBC358]) initWithEventName:self->_eventName];
      v7 = self->_associatedCKEventMetricIfAvailable;
      self->_associatedCKEventMetricIfAvailable = v6;

      associatedCKEventMetricIfAvailable = self->_associatedCKEventMetricIfAvailable;
    }

    [associatedCKEventMetricIfAvailable associateWithCompletedOperation:v4];
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412802;
      v12 = objc_opt_class();
      v13 = 2112;
      v14 = self;
      v15 = 2112;
      v16 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] associated %@ to event metric %@%@", &v11, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end