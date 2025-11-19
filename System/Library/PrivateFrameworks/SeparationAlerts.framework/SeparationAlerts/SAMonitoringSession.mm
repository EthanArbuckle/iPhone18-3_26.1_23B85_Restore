@interface SAMonitoringSession
- (BOOL)isEqual:(id)a3;
- (SAMonitoringSession)initWithCoder:(id)a3;
- (SAMonitoringSession)initWithDeviceUUID:(id)a3 state:(unint64_t)a4 geofence:(id)a5 scenario:(unint64_t)a6 trackedTravelingStartDate:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SAMonitoringSession

- (SAMonitoringSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SAMonitoringSessionIdentifier"];
  v6 = [v4 decodeIntegerForKey:@"SAMonitoringSessionState"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SAMonitoringSessionGeofence"];
  v8 = [v4 decodeIntegerForKey:@"SAMonitoringSessionScenario"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SAMonitoringSessionTrackedTravelingStartDate"];

  v10 = [(SAMonitoringSession *)self initWithDeviceUUID:v5 state:v6 geofence:v7 scenario:v8 trackedTravelingStartDate:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SAMonitoringSession *)self deviceUUID];
  [v4 encodeObject:v5 forKey:@"SAMonitoringSessionIdentifier"];

  [v4 encodeInteger:-[SAMonitoringSession state](self forKey:{"state"), @"SAMonitoringSessionState"}];
  v6 = [(SAMonitoringSession *)self geofence];
  [v4 encodeObject:v6 forKey:@"SAMonitoringSessionGeofence"];

  [v4 encodeInteger:-[SAMonitoringSession scenario](self forKey:{"scenario"), @"SAMonitoringSessionScenario"}];
  v7 = [(SAMonitoringSession *)self trackedTravelingStartDate];
  [v4 encodeObject:v7 forKey:@"SAMonitoringSessionTrackedTravelingStartDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SAMonitoringSession allocWithZone:a3];
  v5 = [(SAMonitoringSession *)self deviceUUID];
  v6 = [(SAMonitoringSession *)self state];
  v7 = [(SAMonitoringSession *)self geofence];
  v8 = [(SAMonitoringSession *)self scenario];
  v9 = [(SAMonitoringSession *)self trackedTravelingStartDate];
  v10 = [(SAMonitoringSession *)v4 initWithDeviceUUID:v5 state:v6 geofence:v7 scenario:v8 trackedTravelingStartDate:v9];

  return v10;
}

- (SAMonitoringSession)initWithDeviceUUID:(id)a3 state:(unint64_t)a4 geofence:(id)a5 scenario:(unint64_t)a6 trackedTravelingStartDate:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v30.receiver = self;
  v30.super_class = SAMonitoringSession;
  v15 = [(SAMonitoringSession *)&v30 init];
  if (v15)
  {
    v16 = [v12 copy];
    deviceUUID = v15->_deviceUUID;
    v15->_deviceUUID = v16;

    v15->_state = a4;
    v18 = [v13 copy];
    geofence = v15->_geofence;
    v15->_geofence = v18;

    v15->_scenario = a6;
    v20 = [v14 copy];
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

    v26 = [[SAScenarioClassifier alloc] initWithDeviceUuid:v15->_deviceUUID scenarioClass:a6 unsafeLocation:0];
    scenarioClassifier = v15->_scenarioClassifier;
    v15->_scenarioClassifier = v26;

    *&v15->_earlyVehicularTrigger = 0;
    lastAlertDateInCurrentTravelingSession = v15->_lastAlertDateInCurrentTravelingSession;
    v15->_lastAlertDateInCurrentTravelingSession = 0;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(SAMonitoringSession *)self deviceUUID];
      v9 = [(SAMonitoringSession *)v7 deviceUUID];
      if (v8 != v9)
      {
        v3 = [(SAMonitoringSession *)self deviceUUID];
        v4 = [(SAMonitoringSession *)v7 deviceUUID];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_30;
        }
      }

      v11 = [(SAMonitoringSession *)self state];
      if (v11 != [(SAMonitoringSession *)v7 state])
      {
        v10 = 0;
        goto LABEL_29;
      }

      v12 = [(SAMonitoringSession *)self geofence];
      v13 = [(SAMonitoringSession *)v7 geofence];
      if (v12 != v13)
      {
        v14 = [(SAMonitoringSession *)self geofence];
        v35 = [(SAMonitoringSession *)v7 geofence];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_27;
        }

        v34 = v14;
      }

      v15 = [(SAMonitoringSession *)self scenario];
      if (v15 != [(SAMonitoringSession *)v7 scenario])
      {
        v10 = 0;
        v14 = v34;
        if (v12 == v13)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      v16 = [(SAMonitoringSession *)self trackedTravelingStartDate];
      [(SAMonitoringSession *)v7 trackedTravelingStartDate];
      v32 = v12;
      v33 = v16;
      v31 = v30 = v13;
      v17 = v16 == v31;
      v14 = v34;
      if (!v17)
      {
        v26 = v3;
        v18 = [(SAMonitoringSession *)self trackedTravelingStartDate];
        v28 = [(SAMonitoringSession *)v7 trackedTravelingStartDate];
        v29 = v18;
        if (![v18 isEqual:?])
        {
          v10 = 0;
          v23 = v33;
          v24 = v31;
          v3 = v26;
          goto LABEL_25;
        }

        v3 = v26;
      }

      v19 = [(SAMonitoringSession *)self trackedTravelingStartLocation];
      v20 = [(SAMonitoringSession *)v7 trackedTravelingStartLocation];
      v21 = v20;
      if (v19 == v20)
      {

        v10 = 1;
      }

      else
      {
        v27 = [(SAMonitoringSession *)self trackedTravelingStartLocation];
        v22 = [(SAMonitoringSession *)v7 trackedTravelingStartLocation];
        v10 = [v27 isEqual:v22];

        v14 = v34;
      }

      v23 = v33;
      v24 = v31;
      if (v33 == v31)
      {
LABEL_26:

        v12 = v32;
        v13 = v30;
        if (v32 == v30)
        {
LABEL_28:

LABEL_29:
          if (v8 == v9)
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
  v16 = [(SAMonitoringSession *)self deviceUUID];
  v4 = [v16 description];
  v19[1] = v4;
  v18[2] = @"SAMonitoringSessionState";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAMonitoringSession state](self, "state")}];
  v19[2] = v5;
  v18[3] = @"SAMonitoringSessionGeofence";
  v6 = [(SAMonitoringSession *)self geofence];
  v7 = [v6 description];
  v19[3] = v7;
  v18[4] = @"SAMonitoringSessionScenario";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAMonitoringSession scenario](self, "scenario")}];
  v19[4] = v8;
  v18[5] = @"SAMonitoringSessionTrackedTravelingStartDate";
  v9 = [(SAMonitoringSession *)self trackedTravelingStartDate];
  v10 = [v9 description];
  v19[5] = v10;
  v18[6] = @"SAMonitoringSessionTrackedTravelingStartLocation";
  v11 = [(SAMonitoringSession *)self trackedTravelingStartLocation];
  v12 = [v11 description];
  v19[6] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:7];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)description
{
  v3 = [(SAMonitoringSession *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      [(SAConnectionEvent *)v6 description];
    }

    v7 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

@end