@interface RTTransitMetricPeriod
- (BOOL)stayAtHomeTogether:(id)together;
- (BOOL)travelTogether:(id)together;
- (RTTransitMetricPeriod)initWithJourneyPeriod:(id)period homeStayPeriod:(id)stayPeriod;
@end

@implementation RTTransitMetricPeriod

- (RTTransitMetricPeriod)initWithJourneyPeriod:(id)period homeStayPeriod:(id)stayPeriod
{
  periodCopy = period;
  stayPeriodCopy = stayPeriod;
  v9 = stayPeriodCopy;
  if (!periodCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: journeyPeriod";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_9;
  }

  if (!stayPeriodCopy)
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
    objc_storeStrong(&v10->_journeyPeriod, period);
    objc_storeStrong(p_isa + 2, stayPeriod);
  }

  self = p_isa;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (BOOL)travelTogether:(id)together
{
  togetherCopy = together;
  journeyPeriod = [(RTTransitMetricPeriod *)self journeyPeriod];
  startDate = [journeyPeriod startDate];
  exitDate = [togetherCopy exitDate];
  if ([startDate isBeforeDate:exitDate])
  {
    entryDate = [togetherCopy entryDate];
    journeyPeriod2 = [(RTTransitMetricPeriod *)self journeyPeriod];
    endDate = [journeyPeriod2 endDate];
    v11 = [entryDate isBeforeDate:endDate];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)stayAtHomeTogether:(id)together
{
  togetherCopy = together;
  homeStayPeriod = [(RTTransitMetricPeriod *)self homeStayPeriod];
  startDate = [homeStayPeriod startDate];
  exitDate = [togetherCopy exitDate];
  if ([startDate isBeforeDate:exitDate])
  {
    entryDate = [togetherCopy entryDate];
    homeStayPeriod2 = [(RTTransitMetricPeriod *)self homeStayPeriod];
    endDate = [homeStayPeriod2 endDate];
    v11 = [entryDate isBeforeDate:endDate];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end