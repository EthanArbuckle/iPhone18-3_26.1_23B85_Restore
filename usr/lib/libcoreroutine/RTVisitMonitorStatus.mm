@interface RTVisitMonitorStatus
- (BOOL)invalid;
- (RTVisitMonitorStatus)initWithMonitoringVisitIncidents:(BOOL)a3 monitoringLeechedVisitIncidents:(BOOL)a4 monitoringLowConfidenceVisitIncidents:(BOOL)a5 feedBufferReferenceCounter:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation RTVisitMonitorStatus

- (RTVisitMonitorStatus)initWithMonitoringVisitIncidents:(BOOL)a3 monitoringLeechedVisitIncidents:(BOOL)a4 monitoringLowConfidenceVisitIncidents:(BOOL)a5 feedBufferReferenceCounter:(unint64_t)a6
{
  v18 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = RTVisitMonitorStatus;
  v10 = [(RTVisitMonitorStatus *)&v15 init];
  v11 = v10;
  if (v10 && (v10->_monitoringVisitIncidents = a3, v10->_monitoringLeechedVisitIncidents = a4, v10->_monitoringLowConfidenceVisitIncidents = a5, v10->_feedBufferReferenceCounter = a6, [(RTVisitMonitorStatus *)v10 invalid]))
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
  v6 = [(RTVisitMonitorStatus *)self feedBufferReferenceCounter];
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

  v10 = [v3 stringWithFormat:@"%@, feedBufferReferenceCounter, %lu, monitoringVisitIncidents, %@, monitoringLeechedVisitIncidents, %@, monitoringLowConfVisitIncidents, %@", v5, v6, v7, v8, v9];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(RTVisitMonitorStatus *)self monitoringVisitIncidents];
  v6 = [(RTVisitMonitorStatus *)self monitoringLeechedVisitIncidents];
  v7 = [(RTVisitMonitorStatus *)self monitoringLowConfidenceVisitIncidents];
  v8 = [(RTVisitMonitorStatus *)self feedBufferReferenceCounter];

  return [v4 initWithMonitoringVisitIncidents:v5 monitoringLeechedVisitIncidents:v6 monitoringLowConfidenceVisitIncidents:v7 feedBufferReferenceCounter:v8];
}

@end