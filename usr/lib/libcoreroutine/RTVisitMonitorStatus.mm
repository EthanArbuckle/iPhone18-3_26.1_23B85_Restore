@interface RTVisitMonitorStatus
- (BOOL)invalid;
- (RTVisitMonitorStatus)initWithMonitoringVisitIncidents:(BOOL)incidents monitoringLeechedVisitIncidents:(BOOL)visitIncidents monitoringLowConfidenceVisitIncidents:(BOOL)confidenceVisitIncidents feedBufferReferenceCounter:(unint64_t)counter;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation RTVisitMonitorStatus

- (RTVisitMonitorStatus)initWithMonitoringVisitIncidents:(BOOL)incidents monitoringLeechedVisitIncidents:(BOOL)visitIncidents monitoringLowConfidenceVisitIncidents:(BOOL)confidenceVisitIncidents feedBufferReferenceCounter:(unint64_t)counter
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = RTVisitMonitorStatus;
  v10 = [(RTVisitMonitorStatus *)&v15 init];
  v11 = v10;
  if (v10 && (v10->_monitoringVisitIncidents = incidents, v10->_monitoringLeechedVisitIncidents = visitIncidents, v10->_monitoringLowConfidenceVisitIncidents = confidenceVisitIncidents, v10->_feedBufferReferenceCounter = counter, [(RTVisitMonitorStatus *)v10 invalid]))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v11;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "Invalid RTVisitMonitorStatus, %@", buf, 0xCu);
      }
    }

    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  feedBufferReferenceCounter = [(RTVisitMonitorStatus *)self feedBufferReferenceCounter];
  if ([(RTVisitMonitorStatus *)self monitoringVisitIncidents])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(RTVisitMonitorStatus *)self monitoringLeechedVisitIncidents])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(RTVisitMonitorStatus *)self monitoringLowConfidenceVisitIncidents])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v3 stringWithFormat:@"%@, feedBufferReferenceCounter, %lu, monitoringVisitIncidents, %@, monitoringLeechedVisitIncidents, %@, monitoringLowConfVisitIncidents, %@", v5, feedBufferReferenceCounter, v7, v8, v9];

  return v10;
}

- (BOOL)invalid
{
  if ([(RTVisitMonitorStatus *)self monitoringVisitIncidents])
  {
    v3 = [(RTVisitMonitorStatus *)self feedBufferReferenceCounter]== 0;
  }

  else
  {
    v3 = 0;
  }

  if ([(RTVisitMonitorStatus *)self monitoringLeechedVisitIncidents])
  {
    v4 = [(RTVisitMonitorStatus *)self feedBufferReferenceCounter]== 0;
  }

  else
  {
    v4 = 0;
  }

  if ([(RTVisitMonitorStatus *)self monitoringLowConfidenceVisitIncidents])
  {
    v5 = [(RTVisitMonitorStatus *)self feedBufferReferenceCounter]== 0;
  }

  else
  {
    v5 = 0;
  }

  if (![(RTVisitMonitorStatus *)self feedBufferReferenceCounter]|| [(RTVisitMonitorStatus *)self monitoringVisitIncidents]|| [(RTVisitMonitorStatus *)self monitoringLeechedVisitIncidents])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = ![(RTVisitMonitorStatus *)self monitoringLowConfidenceVisitIncidents];
  }

  return (v4 || v3) | v5 | v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  monitoringVisitIncidents = [(RTVisitMonitorStatus *)self monitoringVisitIncidents];
  monitoringLeechedVisitIncidents = [(RTVisitMonitorStatus *)self monitoringLeechedVisitIncidents];
  monitoringLowConfidenceVisitIncidents = [(RTVisitMonitorStatus *)self monitoringLowConfidenceVisitIncidents];
  feedBufferReferenceCounter = [(RTVisitMonitorStatus *)self feedBufferReferenceCounter];

  return [v4 initWithMonitoringVisitIncidents:monitoringVisitIncidents monitoringLeechedVisitIncidents:monitoringLeechedVisitIncidents monitoringLowConfidenceVisitIncidents:monitoringLowConfidenceVisitIncidents feedBufferReferenceCounter:feedBufferReferenceCounter];
}

@end