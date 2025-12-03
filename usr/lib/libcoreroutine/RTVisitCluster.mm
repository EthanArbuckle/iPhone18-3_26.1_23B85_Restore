@interface RTVisitCluster
- (BOOL)isCompleteAndExitDateIsEqualToDate:(id)date;
- (BOOL)isDateInside:(id)inside;
- (BOOL)isExitDateBeforeDate:(id)date;
- (BOOL)isPartialAndExitDateIsEqualToDate:(id)date;
- (RTVisitCluster)initWithPoints:(id)points visit:(id)visit;
@end

@implementation RTVisitCluster

- (RTVisitCluster)initWithPoints:(id)points visit:(id)visit
{
  v23 = *MEMORY[0x277D85DE8];
  pointsCopy = points;
  visitCopy = visit;
  exit = [visitCopy exit];
  v10 = pointsCopy | exit;

  if (!v10)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTVisitCluster initWithPoints:visit:]";
      v21 = 1024;
      v22 = 23;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit.exit || points (in %s:%d)", buf, 0x12u);
    }
  }

  exit2 = [visitCopy exit];
  v13 = pointsCopy | exit2;

  if (v13)
  {
    v18.receiver = self;
    v18.super_class = RTVisitCluster;
    v14 = [(RTVisitCluster *)&v18 init];
    p_isa = &v14->super.isa;
    if (v14)
    {
      objc_storeStrong(&v14->_points, points);
      objc_storeStrong(p_isa + 2, visit);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isDateInside:(id)inside
{
  v14 = *MEMORY[0x277D85DE8];
  insideCopy = inside;
  if (!insideCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[RTVisitCluster isDateInside:]";
      v12 = 1024;
      v13 = 46;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", &v10, 0x12u);
    }

    goto LABEL_7;
  }

  entry = [(RTVisit *)self->_visit entry];
  v6 = [entry isAfterDate:insideCopy];

  if (v6)
  {
LABEL_7:
    LOBYTE(v7) = 0;
    goto LABEL_8;
  }

  v7 = ![(RTVisitCluster *)self isExitDateBeforeDate:insideCopy];
LABEL_8:

  return v7;
}

- (BOOL)isExitDateBeforeDate:(id)date
{
  v13 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (dateCopy)
  {
    exit = [(RTVisit *)self->_visit exit];
    v6 = [exit isBeforeDate:dateCopy];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[RTVisitCluster isExitDateBeforeDate:]";
      v11 = 1024;
      v12 = 63;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", &v9, 0x12u);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)isPartialAndExitDateIsEqualToDate:(id)date
{
  v14 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (dateCopy)
  {
    exit = [(RTVisit *)self->_visit exit];
    if (exit)
    {
      v6 = 0;
    }

    else
    {
      lastDate = [(RTVisitLocationPoints *)self->_points lastDate];
      v6 = [dateCopy isEqualToDate:lastDate];
    }
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[RTVisitCluster isPartialAndExitDateIsEqualToDate:]";
      v12 = 1024;
      v13 = 74;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", &v10, 0x12u);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)isCompleteAndExitDateIsEqualToDate:(id)date
{
  v14 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (dateCopy)
  {
    exit = [(RTVisit *)self->_visit exit];
    if (exit)
    {
      exit2 = [(RTVisit *)self->_visit exit];
      v7 = [dateCopy isEqualToDate:exit2];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[RTVisitCluster isCompleteAndExitDateIsEqualToDate:]";
      v12 = 1024;
      v13 = 83;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", &v10, 0x12u);
    }

    v7 = 0;
  }

  return v7;
}

@end