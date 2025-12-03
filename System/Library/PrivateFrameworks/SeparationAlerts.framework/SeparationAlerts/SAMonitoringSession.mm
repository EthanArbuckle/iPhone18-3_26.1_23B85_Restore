@interface SAMonitoringSession
- (BOOL)isEqual:(id)equal;
- (SAMonitoringSession)initWithCoder:(id)coder;
- (SAMonitoringSession)initWithDeviceUUID:(id)d state:(unint64_t)state geofence:(id)geofence scenario:(unint64_t)scenario trackedTravelingStartDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SAMonitoringSession

- (SAMonitoringSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SAMonitoringSessionIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"SAMonitoringSessionState"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SAMonitoringSessionGeofence"];
  v8 = [coderCopy decodeIntegerForKey:@"SAMonitoringSessionScenario"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SAMonitoringSessionTrackedTravelingStartDate"];

  v10 = [(SAMonitoringSession *)self initWithDeviceUUID:v5 state:v6 geofence:v7 scenario:v8 trackedTravelingStartDate:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceUUID = [(SAMonitoringSession *)self deviceUUID];
  [coderCopy encodeObject:deviceUUID forKey:@"SAMonitoringSessionIdentifier"];

  [coderCopy encodeInteger:-[SAMonitoringSession state](self forKey:{"state"), @"SAMonitoringSessionState"}];
  geofence = [(SAMonitoringSession *)self geofence];
  [coderCopy encodeObject:geofence forKey:@"SAMonitoringSessionGeofence"];

  [coderCopy encodeInteger:-[SAMonitoringSession scenario](self forKey:{"scenario"), @"SAMonitoringSessionScenario"}];
  trackedTravelingStartDate = [(SAMonitoringSession *)self trackedTravelingStartDate];
  [coderCopy encodeObject:trackedTravelingStartDate forKey:@"SAMonitoringSessionTrackedTravelingStartDate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SAMonitoringSession allocWithZone:zone];
  deviceUUID = [(SAMonitoringSession *)self deviceUUID];
  state = [(SAMonitoringSession *)self state];
  geofence = [(SAMonitoringSession *)self geofence];
  scenario = [(SAMonitoringSession *)self scenario];
  trackedTravelingStartDate = [(SAMonitoringSession *)self trackedTravelingStartDate];
  v10 = [(SAMonitoringSession *)v4 initWithDeviceUUID:deviceUUID state:state geofence:geofence scenario:scenario trackedTravelingStartDate:trackedTravelingStartDate];

  return v10;
}

- (SAMonitoringSession)initWithDeviceUUID:(id)d state:(unint64_t)state geofence:(id)geofence scenario:(unint64_t)scenario trackedTravelingStartDate:(id)date
{
  dCopy = d;
  geofenceCopy = geofence;
  dateCopy = date;
  v30.receiver = self;
  v30.super_class = SAMonitoringSession;
  v15 = [(SAMonitoringSession *)&v30 init];
  if (v15)
  {
    v16 = [dCopy copy];
    deviceUUID = v15->_deviceUUID;
    v15->_deviceUUID = v16;

    v15->_state = state;
    v18 = [geofenceCopy copy];
    geofence = v15->_geofence;
    v15->_geofence = v18;

    v15->_scenario = scenario;
    v20 = [dateCopy copy];
    trackedTravelingStartDate = v15->_trackedTravelingStartDate;
    v15->_trackedTravelingStartDate = v20;

    trackedTravelingStartLocation = v15->_trackedTravelingStartLocation;
    v15->_trackedTravelingStartLocation = 0;

    travelingGeofenceExitDate = v15->_travelingGeofenceExitDate;
    v15->_travelingGeofenceExitDate = 0;

    firstNotWithYouLocation = v15->_firstNotWithYouLocation;
    v15->_firstNotWithYouLocation = 0;

    earlyVehicularStateChangeDate = v15->_earlyVehicularStateChangeDate;
    v15->_earlyVehicularStateChangeDate = 0;

    v26 = [[SAScenarioClassifier alloc] initWithDeviceUuid:v15->_deviceUUID scenarioClass:scenario unsafeLocation:0];
    scenarioClassifier = v15->_scenarioClassifier;
    v15->_scenarioClassifier = v26;

    *&v15->_earlyVehicularTrigger = 0;
    lastAlertDateInCurrentTravelingSession = v15->_lastAlertDateInCurrentTravelingSession;
    v15->_lastAlertDateInCurrentTravelingSession = 0;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      deviceUUID = [(SAMonitoringSession *)self deviceUUID];
      deviceUUID2 = [(SAMonitoringSession *)v7 deviceUUID];
      if (deviceUUID != deviceUUID2)
      {
        deviceUUID3 = [(SAMonitoringSession *)self deviceUUID];
        deviceUUID4 = [(SAMonitoringSession *)v7 deviceUUID];
        if (![deviceUUID3 isEqual:deviceUUID4])
        {
          v10 = 0;
          goto LABEL_30;
        }
      }

      state = [(SAMonitoringSession *)self state];
      if (state != [(SAMonitoringSession *)v7 state])
      {
        v10 = 0;
        goto LABEL_29;
      }

      geofence = [(SAMonitoringSession *)self geofence];
      geofence2 = [(SAMonitoringSession *)v7 geofence];
      if (geofence != geofence2)
      {
        geofence3 = [(SAMonitoringSession *)self geofence];
        geofence4 = [(SAMonitoringSession *)v7 geofence];
        if (![geofence3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_27;
        }

        v34 = geofence3;
      }

      scenario = [(SAMonitoringSession *)self scenario];
      if (scenario != [(SAMonitoringSession *)v7 scenario])
      {
        v10 = 0;
        geofence3 = v34;
        if (geofence == geofence2)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      trackedTravelingStartDate = [(SAMonitoringSession *)self trackedTravelingStartDate];
      [(SAMonitoringSession *)v7 trackedTravelingStartDate];
      v32 = geofence;
      v33 = trackedTravelingStartDate;
      v31 = v30 = geofence2;
      v17 = trackedTravelingStartDate == v31;
      geofence3 = v34;
      if (!v17)
      {
        v26 = deviceUUID3;
        trackedTravelingStartDate2 = [(SAMonitoringSession *)self trackedTravelingStartDate];
        trackedTravelingStartDate3 = [(SAMonitoringSession *)v7 trackedTravelingStartDate];
        v29 = trackedTravelingStartDate2;
        if (![trackedTravelingStartDate2 isEqual:?])
        {
          v10 = 0;
          v23 = v33;
          v24 = v31;
          deviceUUID3 = v26;
          goto LABEL_25;
        }

        deviceUUID3 = v26;
      }

      trackedTravelingStartLocation = [(SAMonitoringSession *)self trackedTravelingStartLocation];
      trackedTravelingStartLocation2 = [(SAMonitoringSession *)v7 trackedTravelingStartLocation];
      v21 = trackedTravelingStartLocation2;
      if (trackedTravelingStartLocation == trackedTravelingStartLocation2)
      {

        v10 = 1;
      }

      else
      {
        trackedTravelingStartLocation3 = [(SAMonitoringSession *)self trackedTravelingStartLocation];
        trackedTravelingStartLocation4 = [(SAMonitoringSession *)v7 trackedTravelingStartLocation];
        v10 = [trackedTravelingStartLocation3 isEqual:trackedTravelingStartLocation4];

        geofence3 = v34;
      }

      v23 = v33;
      v24 = v31;
      if (v33 == v31)
      {
LABEL_26:

        geofence = v32;
        geofence2 = v30;
        if (v32 == v30)
        {
LABEL_28:

LABEL_29:
          if (deviceUUID == deviceUUID2)
          {
LABEL_31:

            goto LABEL_32;
          }

LABEL_30:

          goto LABEL_31;
        }

LABEL_27:

        goto LABEL_28;
      }

LABEL_25:

      goto LABEL_26;
    }

    v10 = 0;
  }

LABEL_32:

  return v10;
}

- (id)descriptionDictionary
{
  v19[7] = *MEMORY[0x277D85DE8];
  v18[0] = @"EventType";
  v3 = objc_opt_class();
  v17 = NSStringFromClass(v3);
  v19[0] = v17;
  v18[1] = @"SAMonitoringSessionIdentifier";
  deviceUUID = [(SAMonitoringSession *)self deviceUUID];
  v4 = [deviceUUID description];
  v19[1] = v4;
  v18[2] = @"SAMonitoringSessionState";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAMonitoringSession state](self, "state")}];
  v19[2] = v5;
  v18[3] = @"SAMonitoringSessionGeofence";
  geofence = [(SAMonitoringSession *)self geofence];
  v7 = [geofence description];
  v19[3] = v7;
  v18[4] = @"SAMonitoringSessionScenario";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAMonitoringSession scenario](self, "scenario")}];
  v19[4] = v8;
  v18[5] = @"SAMonitoringSessionTrackedTravelingStartDate";
  trackedTravelingStartDate = [(SAMonitoringSession *)self trackedTravelingStartDate];
  v10 = [trackedTravelingStartDate description];
  v19[5] = v10;
  v18[6] = @"SAMonitoringSessionTrackedTravelingStartLocation";
  trackedTravelingStartLocation = [(SAMonitoringSession *)self trackedTravelingStartLocation];
  v12 = [trackedTravelingStartLocation description];
  v19[6] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:7];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)description
{
  descriptionDictionary = [(SAMonitoringSession *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      [(SAConnectionEvent *)v6 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v4;
  }

  v8 = string;

  return v8;
}

@end