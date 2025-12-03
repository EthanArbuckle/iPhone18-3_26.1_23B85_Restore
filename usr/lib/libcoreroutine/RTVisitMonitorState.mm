@interface RTVisitMonitorState
- (RTVisitMonitorState)initWithLastVisit:(id)visit lastLowConfidenceVisit:(id)confidenceVisit;
- (void)dump;
@end

@implementation RTVisitMonitorState

- (RTVisitMonitorState)initWithLastVisit:(id)visit lastLowConfidenceVisit:(id)confidenceVisit
{
  visitCopy = visit;
  confidenceVisitCopy = confidenceVisit;
  v12.receiver = self;
  v12.super_class = RTVisitMonitorState;
  v9 = [(RTVisitMonitorState *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lastVisitIncident, visit);
    objc_storeStrong(&v10->_lastLowConfidenceVisitIncident, confidenceVisit);
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
      lastVisitIncident = [(RTVisitMonitorState *)self lastVisitIncident];
      lastLowConfidenceVisitIncident = [(RTVisitMonitorState *)self lastLowConfidenceVisitIncident];
      v8 = 138412803;
      v9 = v5;
      v10 = 2117;
      v11 = lastVisitIncident;
      v12 = 2117;
      v13 = lastLowConfidenceVisitIncident;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, lastVisit, %{sensitive}@, lastLowConfidenceVisit, %{sensitive}@", &v8, 0x20u);
    }
  }
}

@end