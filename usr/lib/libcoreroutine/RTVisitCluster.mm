@interface RTVisitCluster
- (BOOL)isCompleteAndExitDateIsEqualToDate:(id)a3;
- (BOOL)isDateInside:(id)a3;
- (BOOL)isExitDateBeforeDate:(id)a3;
- (BOOL)isPartialAndExitDateIsEqualToDate:(id)a3;
- (RTVisitCluster)initWithPoints:(id)a3 visit:(id)a4;
@end

@implementation RTVisitCluster

- (RTVisitCluster)initWithPoints:(id)a3 visit:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v8 exit];
  v10 = v7 | v9;

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

  v12 = [v8 exit];
  v13 = v7 | v12;

  if (v13)
  {
    v18.receiver = self;
    v18.super_class = RTVisitCluster;
    v14 = [(RTVisitCluster *)&v18 init];
    p_isa = &v14->super.isa;
    if (v14)
    {
      objc_storeStrong(&v14->_points, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isDateInside:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
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

  v5 = [(RTVisit *)self->_visit entry];
  v6 = [v5 isAfterDate:v4];

  if (v6)
  {
LABEL_7:
    LOBYTE(v7) = 0;
    goto LABEL_8;
  }

  v7 = ![(RTVisitCluster *)self isExitDateBeforeDate:v4];
LABEL_8:

  return v7;
}

- (BOOL)isExitDateBeforeDate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTVisit *)self->_visit exit];
    v6 = [v5 isBeforeDate:v4];
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

- (BOOL)isPartialAndExitDateIsEqualToDate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTVisit *)self->_visit exit];
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v8 = [(RTVisitLocationPoints *)self->_points lastDate];
      v6 = [v4 isEqualToDate:v8];
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

- (BOOL)isCompleteAndExitDateIsEqualToDate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTVisit *)self->_visit exit];
    if (v5)
    {
      v6 = [(RTVisit *)self->_visit exit];
      v7 = [v4 isEqualToDate:v6];
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