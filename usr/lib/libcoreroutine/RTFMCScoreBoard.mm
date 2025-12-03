@interface RTFMCScoreBoard
- (RTFMCScoreBoard)initWithLocationType:(int)type;
- (void)assistanceEvent;
- (void)clearScoreBoard;
- (void)copyToMetric:(id)metric;
- (void)engagementEvent;
- (void)parkingEvent;
- (void)suppressedEvent;
@end

@implementation RTFMCScoreBoard

- (RTFMCScoreBoard)initWithLocationType:(int)type
{
  v7.receiver = self;
  v7.super_class = RTFMCScoreBoard;
  v4 = [(RTFMCScoreBoard *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_locationType = type;
    [(RTFMCScoreBoard *)v4 clearScoreBoard];
  }

  return v5;
}

- (void)clearScoreBoard
{
  date = [MEMORY[0x277CBEAA8] date];
  [(RTFMCScoreBoard *)self setCreationDate:date];

  [(RTFMCScoreBoard *)self setEngaged:0];
  [(RTFMCScoreBoard *)self setAssisted:0];
  [(RTFMCScoreBoard *)self setParkingEvents:0];
  [(RTFMCScoreBoard *)self setEngagedParkingEvents:0];
  [(RTFMCScoreBoard *)self setAssistedParkingEvents:0];
  [(RTFMCScoreBoard *)self setEngagements:0];
  [(RTFMCScoreBoard *)self setAssistances:0];

  [(RTFMCScoreBoard *)self setSuppressedEvents:0];
}

- (void)copyToMetric:(id)metric
{
  v4 = MEMORY[0x277CBEAA8];
  metricCopy = metric;
  date = [v4 date];
  creationDate = [(RTFMCScoreBoard *)self creationDate];
  [date timeIntervalSinceDate:creationDate];
  [metricCopy setDuration:v7];

  [metricCopy setParkingEvents:{-[RTFMCScoreBoard parkingEvents](self, "parkingEvents")}];
  [metricCopy setEngagedParkingEvents:{-[RTFMCScoreBoard engagedParkingEvents](self, "engagedParkingEvents")}];
  [metricCopy setAssistedParkingEvents:{-[RTFMCScoreBoard assistedParkingEvents](self, "assistedParkingEvents")}];
  [metricCopy setEngagements:{-[RTFMCScoreBoard engagements](self, "engagements")}];
  [metricCopy setAssistances:{-[RTFMCScoreBoard assistances](self, "assistances")}];
  [metricCopy setSuppressedParkingEvents:{-[RTFMCScoreBoard suppressedEvents](self, "suppressedEvents")}];
  [metricCopy setLocationType:{-[RTFMCScoreBoard locationType](self, "locationType")}];
}

- (void)parkingEvent
{
  [(RTFMCScoreBoard *)self setParkingEvents:[(RTFMCScoreBoard *)self parkingEvents]+ 1];
  [(RTFMCScoreBoard *)self setEngaged:0];
  [(RTFMCScoreBoard *)self setAssisted:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "FMC scoreboard: parked", v4, 2u);
    }
  }
}

- (void)assistanceEvent
{
  [(RTFMCScoreBoard *)self setAssistances:[(RTFMCScoreBoard *)self assistances]+ 1];
  if ([(RTFMCScoreBoard *)self assisted])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v3 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v6 = 0;
    v4 = "FMC scoreboard: assistance";
    v5 = &v6;
    goto LABEL_8;
  }

  [(RTFMCScoreBoard *)self setAssistedParkingEvents:[(RTFMCScoreBoard *)self assistedParkingEvents]+ 1];
  [(RTFMCScoreBoard *)self setAssisted:1];
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    return;
  }

  v3 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v4 = "FMC scoreboard: first assistance";
    v5 = buf;
LABEL_8:
    _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
  }

LABEL_9:
}

- (void)engagementEvent
{
  [(RTFMCScoreBoard *)self setEngagements:[(RTFMCScoreBoard *)self engagements]+ 1];
  if ([(RTFMCScoreBoard *)self engaged])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v3 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v6 = 0;
    v4 = "FMC scoreboard: engagement";
    v5 = &v6;
    goto LABEL_8;
  }

  [(RTFMCScoreBoard *)self setEngagedParkingEvents:[(RTFMCScoreBoard *)self engagedParkingEvents]+ 1];
  [(RTFMCScoreBoard *)self setEngaged:1];
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    return;
  }

  v3 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v4 = "FMC scoreboard: first engagement";
    v5 = buf;
LABEL_8:
    _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
  }

LABEL_9:
}

- (void)suppressedEvent
{
  [(RTFMCScoreBoard *)self setSuppressedEvents:[(RTFMCScoreBoard *)self suppressedEvents]+ 1];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityVehicleLocation);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "FMC scoreboard: suppression", v3, 2u);
    }
  }
}

@end