@interface RTVisitManagerVisitIncidentNotification
- (RTVisitManagerVisitIncidentNotification)initWithVisitIncident:(id)a3;
@end

@implementation RTVisitManagerVisitIncidentNotification

- (RTVisitManagerVisitIncidentNotification)initWithVisitIncident:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[RTVisitManagerVisitIncidentNotification initWithVisitIncident:]";
      v13 = 1024;
      v14 = 95;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visitIncident (in %s:%d)", buf, 0x12u);
    }
  }

  v10.receiver = self;
  v10.super_class = RTVisitManagerVisitIncidentNotification;
  v6 = [(RTNotification *)&v10 init];
  if (v6)
  {
    v7 = [v4 copy];
    visitIncident = v6->_visitIncident;
    v6->_visitIncident = v7;
  }

  return v6;
}

@end