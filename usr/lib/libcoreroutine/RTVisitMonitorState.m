@interface RTVisitMonitorState
- (RTVisitMonitorState)initWithLastVisit:(id)a3 lastLowConfidenceVisit:(id)a4;
- (void)dump;
@end

@implementation RTVisitMonitorState

- (RTVisitMonitorState)initWithLastVisit:(id)a3 lastLowConfidenceVisit:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RTVisitMonitorState;
  v9 = [(RTVisitMonitorState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lastVisitIncident, a3);
    objc_storeStrong(&v10->_lastLowConfidenceVisitIncident, a4);
  }

  return v10;
}

- (void)dump
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = [(RTVisitMonitorState *)self lastVisitIncident];
      v7 = [(RTVisitMonitorState *)self lastLowConfidenceVisitIncident];
      v8 = 138412803;
      v9 = v5;
      v10 = 2117;
      v11 = v6;
      v12 = 2117;
      v13 = v7;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, lastVisit, %{sensitive}@, lastLowConfidenceVisit, %{sensitive}@", &v8, 0x20u);
    }
  }
}

@end