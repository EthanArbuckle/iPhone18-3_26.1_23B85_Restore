@interface SAScenarioClassifier
+ (id)convertSAScenarioClassToString:(unint64_t)string;
- (BOOL)_hasAllSafeLocationStatesKnown;
- (BOOL)_isInsideAnySafeLocation;
- (BOOL)_setNewScenarioClass:(unint64_t)class;
- (SAScenarioClassifier)initWithDeviceUuid:(id)uuid scenarioClass:(unint64_t)class unsafeLocation:(id)location;
- (id)_findSafeLocationWithUUID:(id)d;
- (id)getCurrentTime;
- (void)_addSafeLocation:(id)location;
- (void)_addUnsafeLocation:(id)location;
- (void)_notifyAllClientsOfScenarioChangeFrom:(unint64_t)from to:(unint64_t)to;
- (void)_removeSafeLocation:(id)location;
- (void)_removeUnsafeLocation:(id)location;
- (void)addClient:(id)client;
- (void)dealloc;
- (void)didDetermineState:(unint64_t)state forSafeLocation:(id)location forDevice:(id)device;
- (void)didDetermineState:(unint64_t)state forUnsafeLocation:(id)location forDevice:(id)device;
- (void)ingestTAEvent:(id)event;
- (void)removeClient:(id)client;
@end

@implementation SAScenarioClassifier

- (SAScenarioClassifier)initWithDeviceUuid:(id)uuid scenarioClass:(unint64_t)class unsafeLocation:(id)location
{
  uuidCopy = uuid;
  locationCopy = location;
  v22.receiver = self;
  v22.super_class = SAScenarioClassifier;
  v10 = [(SAScenarioClassifier *)&v22 init];
  if (v10)
  {
    v11 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    clients = v10->_clients;
    v10->_clients = v11;

    v10->_scenarioClassification = class;
    getCurrentTime = [(SAScenarioClassifier *)v10 getCurrentTime];
    scenarioChangeDate = v10->_scenarioChangeDate;
    v10->_scenarioChangeDate = getCurrentTime;

    v15 = [uuidCopy copy];
    deviceUuid = v10->_deviceUuid;
    v10->_deviceUuid = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    safeLocations = v10->_safeLocations;
    v10->_safeLocations = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    statesBySafeLocation = v10->_statesBySafeLocation;
    v10->_statesBySafeLocation = v19;

    if (v10->_scenarioClassification == 2)
    {
      objc_storeStrong(&v10->_currentUnsafeLocation, location);
    }
  }

  return v10;
}

- (void)dealloc
{
  v27 = *MEMORY[0x277D85DE8];
  currentUnsafeLocation = [(SAScenarioClassifier *)self currentUnsafeLocation];

  if (currentUnsafeLocation)
  {
    currentUnsafeLocation2 = [(SAScenarioClassifier *)self currentUnsafeLocation];
    [(SAScenarioClassifier *)self _removeUnsafeLocation:currentUnsafeLocation2];
  }

  safeLocations = [(SAScenarioClassifier *)self safeLocations];
  allObjects = [safeLocations allObjects];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = allObjects;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SAScenarioClassifier *)self _removeSafeLocation:*(*(&v22 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  currentUnsafeLocation = self->_currentUnsafeLocation;
  self->_currentUnsafeLocation = 0;

  currentVisit = self->_currentVisit;
  self->_currentVisit = 0;

  lastUnsafeLocation = self->_lastUnsafeLocation;
  self->_lastUnsafeLocation = 0;

  statesBySafeLocation = self->_statesBySafeLocation;
  self->_statesBySafeLocation = 0;

  safeLocations = self->_safeLocations;
  self->_safeLocations = 0;

  deviceUuid = self->_deviceUuid;
  self->_deviceUuid = 0;

  scenarioChangeDate = self->_scenarioChangeDate;
  self->_scenarioChangeDate = 0;

  delegate = self->_delegate;
  self->_delegate = 0;

  v21.receiver = self;
  v21.super_class = SAScenarioClassifier;
  [(SAScenarioClassifier *)&v21 dealloc];
  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setNewScenarioClass:(unint64_t)class
{
  scenarioClassification = [(SAScenarioClassifier *)self scenarioClassification];
  [(SAScenarioClassifier *)self setScenarioClassification:class];
  scenarioClassification2 = [(SAScenarioClassifier *)self scenarioClassification];
  if (scenarioClassification2 != scenarioClassification)
  {
    getCurrentTime = [(SAScenarioClassifier *)self getCurrentTime];
    scenarioChangeDate = self->_scenarioChangeDate;
    self->_scenarioChangeDate = getCurrentTime;

    [(SAScenarioClassifier *)self _notifyAllClientsOfScenarioChangeFrom:scenarioClassification to:[(SAScenarioClassifier *)self scenarioClassification]];
  }

  return scenarioClassification2 != scenarioClassification;
}

- (BOOL)_isInsideAnySafeLocation
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  safeLocations = [(SAScenarioClassifier *)self safeLocations];
  v4 = [safeLocations countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(safeLocations);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        statesBySafeLocation = [(SAScenarioClassifier *)self statesBySafeLocation];
        v10 = [statesBySafeLocation objectForKeyedSubscript:v8];
        v11 = [v10 isEqual:&unk_287710120];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v5 = [safeLocations countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_hasAllSafeLocationStatesKnown
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  safeLocations = [(SAScenarioClassifier *)self safeLocations];
  v4 = [safeLocations countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(safeLocations);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        statesBySafeLocation = [(SAScenarioClassifier *)self statesBySafeLocation];
        v10 = [statesBySafeLocation objectForKeyedSubscript:v8];
        v11 = [v10 isEqual:&unk_287710138];

        if (v11)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v5 = [safeLocations countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)convertSAScenarioClassToString:(unint64_t)string
{
  if (string - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B9C8A0[string - 1];
  }
}

- (void)_notifyAllClientsOfScenarioChangeFrom:(unint64_t)from to:(unint64_t)to
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    deviceUuid = [(SAScenarioClassifier *)self deviceUuid];
    v10 = [SAScenarioClassifier convertSAScenarioClassToString:from];
    uTF8String = [v10 UTF8String];
    v12 = [SAScenarioClassifier convertSAScenarioClassToString:to];
    *buf = 68289795;
    v27 = 2082;
    v28 = "";
    v29 = 2113;
    v30 = deviceUuid;
    v31 = 2081;
    v32 = uTF8String;
    v33 = 2081;
    uTF8String2 = [v12 UTF8String];
    _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAScenarioClassifier notifyScenarioChange, device:%{private}@, from:%{private}s, to:%{private}s}", buf, 0x30u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  clients = [(SAScenarioClassifier *)self clients];
  v14 = [clients countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(clients);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        deviceUuid2 = [(SAScenarioClassifier *)self deviceUuid];
        [v18 didChangeScenarioClassFrom:from to:to forDevice:deviceUuid2];

        ++v17;
      }

      while (v15 != v17);
      v15 = [clients countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)didDetermineState:(unint64_t)state forUnsafeLocation:(id)location forDevice:(id)device
{
  v34 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  deviceCopy = device;
  deviceUuid = [(SAScenarioClassifier *)self deviceUuid];
  v11 = [deviceCopy isEqual:deviceUuid];

  if (!v11)
  {
    goto LABEL_24;
  }

  currentUnsafeLocation = [(SAScenarioClassifier *)self currentUnsafeLocation];

  if (!currentUnsafeLocation && [(SAScenarioClassifier *)self scenarioClassification]== 2)
  {
    v13 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 68289283;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2113;
      v31 = deviceCopy;
      _os_log_impl(&dword_2656EA000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAScenarioClassifier setting current unsafe location from nil, device:%{private}@}", &v26, 0x1Cu);
    }

    [(SAScenarioClassifier *)self setCurrentUnsafeLocation:locationCopy];
  }

  currentUnsafeLocation2 = [(SAScenarioClassifier *)self currentUnsafeLocation];
  identifier = [currentUnsafeLocation2 identifier];
  identifier2 = [locationCopy identifier];
  v17 = [identifier isEqual:identifier2];

  v18 = TASALog;
  if ((v17 & 1) == 0)
  {
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v26 = 68289283;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2113;
      v31 = deviceCopy;
      v21 = "{msg%{public}.0s:#SAScenarioClassifier forUnsafeLocation location, device:%{private}@}";
      v22 = v18;
LABEL_23:
      _os_log_impl(&dword_2656EA000, v22, OS_LOG_TYPE_ERROR, v21, &v26, 0x1Cu);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 68289539;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2113;
    v31 = deviceCopy;
    v32 = 2049;
    stateCopy = state;
    _os_log_impl(&dword_2656EA000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAScenarioClassifier didDetermineState unsafe, device:%{private}@, state:%{private}ld}", &v26, 0x26u);
  }

  scenarioClassification = [(SAScenarioClassifier *)self scenarioClassification];
  if (scenarioClassification > 1)
  {
    if (scenarioClassification != 2)
    {
      if (scenarioClassification != 3)
      {
        if (scenarioClassification == 4)
        {
          v20 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
          {
            v26 = 68289283;
            v27 = 0;
            v28 = 2082;
            v29 = "";
            v30 = 2113;
            v31 = deviceCopy;
            v21 = "{msg%{public}.0s:#SAScenarioClassifier forUnsafeLocation not supported, device:%{private}@}";
LABEL_22:
            v22 = v20;
            goto LABEL_23;
          }
        }

        goto LABEL_24;
      }

      if (state == 2)
      {
        v25 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
        {
          v26 = 68289283;
          v27 = 0;
          v28 = 2082;
          v29 = "";
          v30 = 2113;
          v31 = deviceCopy;
          _os_log_impl(&dword_2656EA000, v25, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAScenarioClassifier forUnsafeLocation unexpected, device:%{private}@}", &v26, 0x1Cu);
        }

        goto LABEL_35;
      }

LABEL_32:
      if (state == 1)
      {
        [(SAScenarioClassifier *)self _setNewScenarioClass:2];
      }

      goto LABEL_24;
    }

    if (state != 2)
    {
      goto LABEL_24;
    }

    currentUnsafeLocation3 = [(SAScenarioClassifier *)self currentUnsafeLocation];
    [(SAScenarioClassifier *)self setLastUnsafeLocation:currentUnsafeLocation3];

    [(SAScenarioClassifier *)self setCurrentUnsafeLocation:0];
    if (![(SAScenarioClassifier *)self _setNewScenarioClass:3])
    {
      goto LABEL_24;
    }

LABEL_35:
    [(SAScenarioClassifier *)self _removeUnsafeLocation:locationCopy];
    goto LABEL_24;
  }

  if (!scenarioClassification)
  {
    if (state != 2)
    {
      goto LABEL_32;
    }

    [(SAScenarioClassifier *)self _setNewScenarioClass:3];
    goto LABEL_35;
  }

  if (scenarioClassification == 1)
  {
    v20 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v26 = 68289283;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2113;
      v31 = deviceCopy;
      v21 = "{msg%{public}.0s:#SAScenarioClassifier forUnsafeLocation in safe, device:%{private}@}";
      goto LABEL_22;
    }
  }

LABEL_24:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)didDetermineState:(unint64_t)state forSafeLocation:(id)location forDevice:(id)device
{
  v31 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  deviceCopy = device;
  deviceUuid = [(SAScenarioClassifier *)self deviceUuid];
  v11 = [deviceCopy isEqual:deviceUuid];

  if (v11)
  {
    safeLocations = [(SAScenarioClassifier *)self safeLocations];
    v13 = [safeLocations containsObject:locationCopy];

    if (v13)
    {
      v14 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 68289539;
        v24 = 0;
        v25 = 2082;
        v26 = "";
        v27 = 2113;
        v28 = deviceCopy;
        v29 = 2049;
        stateCopy = state;
        _os_log_impl(&dword_2656EA000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAScenarioClassifier didDetermineState safe, device:%{private}@, state:%{private}ld}", &v23, 0x26u);
      }

      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
      statesBySafeLocation = [(SAScenarioClassifier *)self statesBySafeLocation];
      [statesBySafeLocation setObject:v15 forKeyedSubscript:locationCopy];

      if (state)
      {
        scenarioClassification = [(SAScenarioClassifier *)self scenarioClassification];
        if (scenarioClassification > 1)
        {
          if (scenarioClassification == 2)
          {
            if (state != 1)
            {
              goto LABEL_27;
            }

            v19 = TASALog;
            if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
            {
              v23 = 68289283;
              v24 = 0;
              v25 = 2082;
              v26 = "";
              v27 = 2113;
              v28 = deviceCopy;
              _os_log_impl(&dword_2656EA000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning #SAScenarioClassifier forSafeLocation in unsafe, device:%{private}@}", &v23, 0x1Cu);
            }
          }

          else
          {
            if (scenarioClassification != 3)
            {
              if (scenarioClassification == 4)
              {
                v18 = TASALog;
                if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
                {
                  v23 = 68289283;
                  v24 = 0;
                  v25 = 2082;
                  v26 = "";
                  v27 = 2113;
                  v28 = deviceCopy;
                  _os_log_impl(&dword_2656EA000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAScenarioClassifier forSafeLocation not supported, device:%{private}@}", &v23, 0x1Cu);
                }
              }

              goto LABEL_27;
            }

            if (state != 1)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_25;
        }

        if (scenarioClassification)
        {
          if (scenarioClassification != 1 || state != 2 || [(SAScenarioClassifier *)self _isInsideAnySafeLocation]|| ![(SAScenarioClassifier *)self _hasAllSafeLocationStatesKnown])
          {
            goto LABEL_27;
          }
        }

        else if (state == 1 || [(SAScenarioClassifier *)self _isInsideAnySafeLocation])
        {
LABEL_25:
          selfCopy2 = self;
          v21 = 1;
LABEL_26:
          [(SAScenarioClassifier *)selfCopy2 _setNewScenarioClass:v21];
          goto LABEL_27;
        }

        selfCopy2 = self;
        v21 = 3;
        goto LABEL_26;
      }
    }
  }

LABEL_27:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)addClient:(id)client
{
  clientCopy = client;
  clients = [(SAScenarioClassifier *)self clients];
  [clients addObject:clientCopy];
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  clients = [(SAScenarioClassifier *)self clients];
  [clients removeObject:clientCopy];
}

- (void)ingestTAEvent:(id)event
{
  v49 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
    eventType = [v5 eventType];
    if (!eventType)
    {
      safeLocation = [v5 safeLocation];
      [(SAScenarioClassifier *)self _addSafeLocation:safeLocation];
      goto LABEL_29;
    }

    if (eventType == 1)
    {
      safeLocation = [v5 safeLocation];
      [(SAScenarioClassifier *)self _removeSafeLocation:safeLocation];
      if ([(SAScenarioClassifier *)self _isInsideAnySafeLocation])
      {
        selfCopy2 = self;
        v9 = 1;
LABEL_6:
        [(SAScenarioClassifier *)selfCopy2 _setNewScenarioClass:v9];
LABEL_29:

LABEL_40:
        goto LABEL_41;
      }

      if ([(SAScenarioClassifier *)self scenarioClassification]!= 1)
      {
        goto LABEL_29;
      }

      [safeLocation latitude];
      v25 = v24;
      [safeLocation longitude];
      v27 = CLLocationCoordinate2DMake(v25, v26);
      currentVisit = [(SAScenarioClassifier *)self currentVisit];
      v29 = [currentVisit containsCoordinate:{v27.latitude, v27.longitude}];

      if (!v29)
      {
        selfCopy2 = self;
        v9 = 3;
        goto LABEL_6;
      }

      [(SAScenarioClassifier *)self _setNewScenarioClass:2];
      currentVisit2 = [(SAScenarioClassifier *)self currentVisit];
      [(SAScenarioClassifier *)self _addUnsafeLocation:currentVisit2];
LABEL_28:

      goto LABEL_29;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    safeLocation = eventCopy;
    if ([safeLocation hasArrivalDate] && (objc_msgSend(safeLocation, "hasDepartureDate") & 1) == 0)
    {
      v31 = objc_alloc(MEMORY[0x277CCACA8]);
      deviceUuid = [(SAScenarioClassifier *)self deviceUuid];
      uUIDString = [deviceUuid UUIDString];
      v34 = [v31 initWithFormat:@"unsafe_%@", uUIDString];

      v35 = objc_alloc(MEMORY[0x277CBFBC8]);
      [safeLocation coordinate];
      v5 = [v35 initWithCenter:v34 radius:? identifier:?];
      [(SAScenarioClassifier *)self setCurrentVisit:v5];
    }

    else
    {
      v5 = 0;
    }

    if ([(SAScenarioClassifier *)self scenarioClassification]== 1)
    {
      v36 = TASALog;
      if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      currentVisit2 = v36;
      deviceUuid2 = [(SAScenarioClassifier *)self deviceUuid];
      *buf = 68289283;
      v44 = 0;
      v45 = 2082;
      v46 = "";
      v47 = 2113;
      v48 = deviceUuid2;
      _os_log_impl(&dword_2656EA000, currentVisit2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning #SAScenarioClassifier visit while in safe, device:%{private}@}", buf, 0x1Cu);

      goto LABEL_28;
    }

    if ([(SAScenarioClassifier *)self scenarioClassification]!= 2)
    {
      goto LABEL_38;
    }

    v38 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v20 = v38;
    deviceUuid3 = [(SAScenarioClassifier *)self deviceUuid];
    *buf = 68289283;
    v44 = 0;
    v45 = 2082;
    v46 = "";
    v47 = 2113;
    v48 = deviceUuid3;
    _os_log_impl(&dword_2656EA000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning #SAScenarioClassifier visit while in unsafe, device:%{private}@}", buf, 0x1Cu);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_41;
    }

    v10 = eventCopy;
    [v10 latitude];
    v12 = v11;
    [v10 longitude];
    v14 = CLLocationCoordinate2DMake(v12, v13);
    [v10 horizontalAccuracy];
    if (v15 >= 100.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 100.0;
    }

    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    deviceUuid4 = [(SAScenarioClassifier *)self deviceUuid];
    uUIDString2 = [deviceUuid4 UUIDString];
    v20 = [v17 initWithFormat:@"unsafe_%@", uUIDString2];

    v5 = [objc_alloc(MEMORY[0x277CBFBC8]) initWithCenter:v20 radius:v14.latitude identifier:{v14.longitude, v16}];
    [v5 setGeoReferenceFrame:{objc_msgSend(v10, "referenceFrame")}];
    [(SAScenarioClassifier *)self setCurrentVisit:v5];
    if ([(SAScenarioClassifier *)self scenarioClassification]== 1)
    {
      v21 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        deviceUuid5 = [(SAScenarioClassifier *)self deviceUuid];
        *buf = 68289283;
        v44 = 0;
        v45 = 2082;
        v46 = "";
        v47 = 2113;
        v48 = deviceUuid5;
        _os_log_impl(&dword_2656EA000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning #SAScenarioClassifier LOI while in safe, device:%{private}@}", buf, 0x1Cu);
      }

      goto LABEL_40;
    }

    if ([(SAScenarioClassifier *)self scenarioClassification]!= 2)
    {
      goto LABEL_37;
    }

    v40 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    deviceUuid3 = v40;
    deviceUuid6 = [(SAScenarioClassifier *)self deviceUuid];
    *buf = 68289283;
    v44 = 0;
    v45 = 2082;
    v46 = "";
    v47 = 2113;
    v48 = deviceUuid6;
    _os_log_impl(&dword_2656EA000, deviceUuid3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning #SAScenarioClassifier LOI while in unsafe, device:%{private}@}", buf, 0x1Cu);
  }

LABEL_37:
LABEL_38:

  if (v5)
  {
    [(SAScenarioClassifier *)self _addUnsafeLocation:v5];
    goto LABEL_40;
  }

LABEL_41:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_addUnsafeLocation:(id)location
{
  v30 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  currentUnsafeLocation = [(SAScenarioClassifier *)self currentUnsafeLocation];

  if (currentUnsafeLocation)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      deviceUuid = [(SAScenarioClassifier *)self deviceUuid];
      currentUnsafeLocation2 = [(SAScenarioClassifier *)self currentUnsafeLocation];
      identifier = [currentUnsafeLocation2 identifier];
      identifier2 = [(CLRegion *)locationCopy identifier];
      v21[0] = 68289795;
      v21[1] = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2113;
      v25 = deviceUuid;
      v26 = 2113;
      v27 = identifier;
      v28 = 2113;
      v29 = identifier2;
      _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAScenarioClassifier addUnsafeLocation replacing already existing unsafe, device:%{private}@, old:%{private}@, new:%{private}@}", v21, 0x30u);
    }

    delegate = [(SAScenarioClassifier *)self delegate];
    currentUnsafeLocation3 = [(SAScenarioClassifier *)self currentUnsafeLocation];
    deviceUuid2 = [(SAScenarioClassifier *)self deviceUuid];
    [delegate stopMonitorUnsafeLocationExit:currentUnsafeLocation3 forDevice:deviceUuid2];

    currentUnsafeLocation = self->_currentUnsafeLocation;
    self->_currentUnsafeLocation = 0;
  }

  v16 = self->_currentUnsafeLocation;
  self->_currentUnsafeLocation = locationCopy;
  v17 = locationCopy;

  delegate2 = [(SAScenarioClassifier *)self delegate];
  deviceUuid3 = [(SAScenarioClassifier *)self deviceUuid];
  [delegate2 startMonitorUnsafeLocationExit:v17 forDevice:deviceUuid3];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_removeUnsafeLocation:(id)location
{
  currentUnsafeLocation = self->_currentUnsafeLocation;
  self->_currentUnsafeLocation = 0;
  locationCopy = location;

  delegate = [(SAScenarioClassifier *)self delegate];
  deviceUuid = [(SAScenarioClassifier *)self deviceUuid];
  [delegate stopMonitorUnsafeLocationExit:locationCopy forDevice:deviceUuid];
}

- (id)_findSafeLocationWithUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  safeLocations = [(SAScenarioClassifier *)self safeLocations];
  v6 = [safeLocations countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(safeLocations);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [dCopy isEqual:identifier];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [safeLocations countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_addSafeLocation:(id)location
{
  v23 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  identifier = [locationCopy identifier];
  v6 = [(SAScenarioClassifier *)self _findSafeLocationWithUUID:identifier];

  if (v6)
  {
    v7 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      deviceUuid = [(SAScenarioClassifier *)self deviceUuid];
      identifier2 = [locationCopy identifier];
      v16[0] = 68289539;
      v16[1] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2113;
      v20 = deviceUuid;
      v21 = 2117;
      v22 = identifier2;
      _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAScenarioClassifier addSafeLocation replacing, device:%{private}@, location:%{sensitive}@}", v16, 0x26u);
    }

    [(SAScenarioClassifier *)self _removeSafeLocation:v6];
  }

  safeLocations = [(SAScenarioClassifier *)self safeLocations];
  [safeLocations addObject:locationCopy];

  statesBySafeLocation = [(SAScenarioClassifier *)self statesBySafeLocation];
  [statesBySafeLocation setObject:&unk_287710138 forKeyedSubscript:locationCopy];

  delegate = [(SAScenarioClassifier *)self delegate];
  deviceUuid2 = [(SAScenarioClassifier *)self deviceUuid];
  [delegate startMonitorSafeLocation:locationCopy forDevice:deviceUuid2];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_removeSafeLocation:(id)location
{
  v23 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  identifier = [locationCopy identifier];
  v6 = [(SAScenarioClassifier *)self _findSafeLocationWithUUID:identifier];

  if (v6)
  {
    delegate = [(SAScenarioClassifier *)self delegate];
    deviceUuid = [(SAScenarioClassifier *)self deviceUuid];
    [delegate stopMonitorSafeLocation:v6 forDevice:deviceUuid];

    statesBySafeLocation = [(SAScenarioClassifier *)self statesBySafeLocation];
    [statesBySafeLocation setObject:0 forKeyedSubscript:v6];

    safeLocations = [(SAScenarioClassifier *)self safeLocations];
    [safeLocations removeObject:v6];
  }

  else
  {
    v11 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      deviceUuid2 = [(SAScenarioClassifier *)self deviceUuid];
      identifier2 = [locationCopy identifier];
      v16[0] = 68289539;
      v16[1] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2113;
      v20 = deviceUuid2;
      v21 = 2117;
      v22 = identifier2;
      _os_log_impl(&dword_2656EA000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAScenarioClassifier removeSafeLocation not in set, device:%{private}@, location:%{sensitive}@}", v16, 0x26u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)getCurrentTime
{
  timeDelegate = [(SAScenarioClassifier *)self timeDelegate];

  if (timeDelegate)
  {
    timeDelegate2 = [(SAScenarioClassifier *)self timeDelegate];
    getCurrentTime = [timeDelegate2 getCurrentTime];
  }

  else
  {
    getCurrentTime = [MEMORY[0x277CBEAA8] now];
  }

  return getCurrentTime;
}

@end