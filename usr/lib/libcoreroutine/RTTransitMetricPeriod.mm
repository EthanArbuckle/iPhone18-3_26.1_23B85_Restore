@interface RTTransitMetricPeriod
- (BOOL)stayAtHomeTogether:(id)a3;
- (BOOL)travelTogether:(id)a3;
- (RTTransitMetricPeriod)initWithJourneyPeriod:(id)a3 homeStayPeriod:(id)a4;
@end

@implementation RTTransitMetricPeriod

- (RTTransitMetricPeriod)initWithJourneyPeriod:(id)a3 homeStayPeriod:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v12 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: journeyPeriod";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_9;
  }

  if (!v8)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: homeStayPeriod";
    goto LABEL_12;
  }

  v16.receiver = self;
  v16.super_class = RTTransitMetricPeriod;
  v10 = [(RTTransitMetricPeriod *)&v16 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_journeyPeriod, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  self = p_isa;
  v12 = self;
LABEL_10:

  return v12;
}

- (BOOL)travelTogether:(id)a3
{
  v4 = a3;
  v5 = [(RTTransitMetricPeriod *)self journeyPeriod];
  v6 = [v5 startDate];
  v7 = [v4 exitDate];
  if ([v6 isBeforeDate:v7])
  {
    v8 = [v4 entryDate];
    v9 = [(RTTransitMetricPeriod *)self journeyPeriod];
    v10 = [v9 endDate];
    v11 = [v8 isBeforeDate:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)stayAtHomeTogether:(id)a3
{
  v4 = a3;
  v5 = [(RTTransitMetricPeriod *)self homeStayPeriod];
  v6 = [v5 startDate];
  v7 = [v4 exitDate];
  if ([v6 isBeforeDate:v7])
  {
    v8 = [v4 entryDate];
    v9 = [(RTTransitMetricPeriod *)self homeStayPeriod];
    v10 = [v9 endDate];
    v11 = [v8 isBeforeDate:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end