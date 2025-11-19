@interface SAScenarioClassifier
+ (id)convertSAScenarioClassToString:(unint64_t)a3;
- (BOOL)_hasAllSafeLocationStatesKnown;
- (BOOL)_isInsideAnySafeLocation;
- (BOOL)_setNewScenarioClass:(unint64_t)a3;
- (SAScenarioClassifier)initWithDeviceUuid:(id)a3 scenarioClass:(unint64_t)a4 unsafeLocation:(id)a5;
- (id)_findSafeLocationWithUUID:(id)a3;
- (id)getCurrentTime;
- (void)_addSafeLocation:(id)a3;
- (void)_addUnsafeLocation:(id)a3;
- (void)_notifyAllClientsOfScenarioChangeFrom:(unint64_t)a3 to:(unint64_t)a4;
- (void)_removeSafeLocation:(id)a3;
- (void)_removeUnsafeLocation:(id)a3;
- (void)addClient:(id)a3;
- (void)dealloc;
- (void)didDetermineState:(unint64_t)a3 forSafeLocation:(id)a4 forDevice:(id)a5;
- (void)didDetermineState:(unint64_t)a3 forUnsafeLocation:(id)a4 forDevice:(id)a5;
- (void)ingestTAEvent:(id)a3;
- (void)removeClient:(id)a3;
@end

@implementation SAScenarioClassifier

- (SAScenarioClassifier)initWithDeviceUuid:(id)a3 scenarioClass:(unint64_t)a4 unsafeLocation:(id)a5
{
  v8 = a3;
  v9 = a5;
  v22.receiver = self;
  v22.super_class = SAScenarioClassifier;
  v10 = [(SAScenarioClassifier *)&v22 init];
  if (v10)
  {
    v11 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    clients = v10->_clients;
    v10->_clients = v11;

    v10->_scenarioClassification = a4;
    v13 = [(SAScenarioClassifier *)v10 getCurrentTime];
    scenarioChangeDate = v10->_scenarioChangeDate;
    v10->_scenarioChangeDate = v13;

    v15 = [v8 copy];
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
      objc_storeStrong(&v10->_currentUnsafeLocation, a5);
    }
  }

  return v10;
}

- (void)dealloc
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [(SAScenarioClassifier *)self currentUnsafeLocation];

  if (v3)
  {
    v4 = [(SAScenarioClassifier *)self currentUnsafeLocation];
    [(SAScenarioClassifier *)self _removeUnsafeLocation:v4];
  }

  v5 = [(SAScenarioClassifier *)self safeLocations];
  v6 = [v5 allObjects];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v6;
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

- (BOOL)_setNewScenarioClass:(unint64_t)a3
{
  v5 = [(SAScenarioClassifier *)self scenarioClassification];
  [(SAScenarioClassifier *)self setScenarioClassification:a3];
  v6 = [(SAScenarioClassifier *)self scenarioClassification];
  if (v6 != v5)
  {
    v7 = [(SAScenarioClassifier *)self getCurrentTime];
    scenarioChangeDate = self->_scenarioChangeDate;
    self->_scenarioChangeDate = v7;

    [(SAScenarioClassifier *)self _notifyAllClientsOfScenarioChangeFrom:v5 to:[(SAScenarioClassifier *)self scenarioClassification]];
  }

  return v6 != v5;
}

- (BOOL)_isInsideAnySafeLocation
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(SAScenarioClassifier *)self safeLocations];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [(SAScenarioClassifier *)self statesBySafeLocation];
        v10 = [v9 objectForKeyedSubscript:v8];
        v11 = [v10 isEqual:&unk_287710120];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v3 = [(SAScenarioClassifier *)self safeLocations];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [(SAScenarioClassifier *)self statesBySafeLocation];
        v10 = [v9 objectForKeyedSubscript:v8];
        v11 = [v10 isEqual:&unk_287710138];

        if (v11)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

+ (id)convertSAScenarioClassToString:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B9C8A0[a3 - 1];
  }
}

- (void)_notifyAllClientsOfScenarioChangeFrom:(unint64_t)a3 to:(unint64_t)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(SAScenarioClassifier *)self deviceUuid];
    v10 = [SAScenarioClassifier convertSAScenarioClassToString:a3];
    v11 = [v10 UTF8String];
    v12 = [SAScenarioClassifier convertSAScenarioClassToString:a4];
    *buf = 68289795;
    v27 = 2082;
    v28 = "";
    v29 = 2113;
    v30 = v9;
    v31 = 2081;
    v32 = v11;
    v33 = 2081;
    v34 = [v12 UTF8String];
    _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAScenarioClassifier notifyScenarioChange, device:%{private}@, from:%{private}s, to:%{private}s}", buf, 0x30u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [(SAScenarioClassifier *)self clients];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        v19 = [(SAScenarioClassifier *)self deviceUuid];
        [v18 didChangeScenarioClassFrom:a3 to:a4 forDevice:v19];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)didDetermineState:(unint64_t)a3 forUnsafeLocation:(id)a4 forDevice:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(SAScenarioClassifier *)self deviceUuid];
  v11 = [v9 isEqual:v10];

  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = [(SAScenarioClassifier *)self currentUnsafeLocation];

  if (!v12 && [(SAScenarioClassifier *)self scenarioClassification]== 2)
  {
    v13 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 68289283;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2113;
      v31 = v9;
      _os_log_impl(&dword_2656EA000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAScenarioClassifier setting current unsafe location from nil, device:%{private}@}", &v26, 0x1Cu);
    }

    [(SAScenarioClassifier *)self setCurrentUnsafeLocation:v8];
  }

  v14 = [(SAScenarioClassifier *)self currentUnsafeLocation];
  v15 = [v14 identifier];
  v16 = [v8 identifier];
  v17 = [v15 isEqual:v16];

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
      v31 = v9;
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
    v31 = v9;
    v32 = 2049;
    v33 = a3;
    _os_log_impl(&dword_2656EA000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAScenarioClassifier didDetermineState unsafe, device:%{private}@, state:%{private}ld}", &v26, 0x26u);
  }

  v19 = [(SAScenarioClassifier *)self scenarioClassification];
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      if (v19 != 3)
      {
        if (v19 == 4)
        {
          v20 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
          {
            v26 = 68289283;
            v27 = 0;
            v28 = 2082;
            v29 = "";
            v30 = 2113;
            v31 = v9;
            v21 = "{msg%{public}.0s:#SAScenarioClassifier forUnsafeLocation not supported, device:%{private}@}";
LABEL_22:
            v22 = v20;
            goto LABEL_23;
          }
        }

        goto LABEL_24;
      }

      if (a3 == 2)
      {
        v25 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
        {
          v26 = 68289283;
          v27 = 0;
          v28 = 2082;
          v29 = "";
          v30 = 2113;
          v31 = v9;
          _os_log_impl(&dword_2656EA000, v25, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAScenarioClassifier forUnsafeLocation unexpected, device:%{private}@}", &v26, 0x1Cu);
        }

        goto LABEL_35;
      }

LABEL_32:
      if (a3 == 1)
      {
        [(SAScenarioClassifier *)self _setNewScenarioClass:2];
      }

      goto LABEL_24;
    }

    if (a3 != 2)
    {
      goto LABEL_24;
    }

    v24 = [(SAScenarioClassifier *)self currentUnsafeLocation];
    [(SAScenarioClassifier *)self setLastUnsafeLocation:v24];

    [(SAScenarioClassifier *)self setCurrentUnsafeLocation:0];
    if (![(SAScenarioClassifier *)self _setNewScenarioClass:3])
    {
      goto LABEL_24;
    }

LABEL_35:
    [(SAScenarioClassifier *)self _removeUnsafeLocation:v8];
    goto LABEL_24;
  }

  if (!v19)
  {
    if (a3 != 2)
    {
      goto LABEL_32;
    }

    [(SAScenarioClassifier *)self _setNewScenarioClass:3];
    goto LABEL_35;
  }

  if (v19 == 1)
  {
    v20 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v26 = 68289283;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2113;
      v31 = v9;
      v21 = "{msg%{public}.0s:#SAScenarioClassifier forUnsafeLocation in safe, device:%{private}@}";
      goto LABEL_22;
    }
  }

LABEL_24:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)didDetermineState:(unint64_t)a3 forSafeLocation:(id)a4 forDevice:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(SAScenarioClassifier *)self deviceUuid];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = [(SAScenarioClassifier *)self safeLocations];
    v13 = [v12 containsObject:v8];

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
        v28 = v9;
        v29 = 2049;
        v30 = a3;
        _os_log_impl(&dword_2656EA000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAScenarioClassifier didDetermineState safe, device:%{private}@, state:%{private}ld}", &v23, 0x26u);
      }

      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v16 = [(SAScenarioClassifier *)self statesBySafeLocation];
      [v16 setObject:v15 forKeyedSubscript:v8];

      if (a3)
      {
        v17 = [(SAScenarioClassifier *)self scenarioClassification];
        if (v17 > 1)
        {
          if (v17 == 2)
          {
            if (a3 != 1)
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
              v28 = v9;
              _os_log_impl(&dword_2656EA000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning #SAScenarioClassifier forSafeLocation in unsafe, device:%{private}@}", &v23, 0x1Cu);
            }
          }

          else
          {
            if (v17 != 3)
            {
              if (v17 == 4)
              {
                v18 = TASALog;
                if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
                {
                  v23 = 68289283;
                  v24 = 0;
                  v25 = 2082;
                  v26 = "";
                  v27 = 2113;
                  v28 = v9;
                  _os_log_impl(&dword_2656EA000, v18, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAScenarioClassifier forSafeLocation not supported, device:%{private}@}", &v23, 0x1Cu);
                }
              }

              goto LABEL_27;
            }

            if (a3 != 1)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_25;
        }

        if (v17)
        {
          if (v17 != 1 || a3 != 2 || [(SAScenarioClassifier *)self _isInsideAnySafeLocation]|| ![(SAScenarioClassifier *)self _hasAllSafeLocationStatesKnown])
          {
            goto LABEL_27;
          }
        }

        else if (a3 == 1 || [(SAScenarioClassifier *)self _isInsideAnySafeLocation])
        {
LABEL_25:
          v20 = self;
          v21 = 1;
LABEL_26:
          [(SAScenarioClassifier *)v20 _setNewScenarioClass:v21];
          goto LABEL_27;
        }

        v20 = self;
        v21 = 3;
        goto LABEL_26;
      }
    }
  }

LABEL_27:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)addClient:(id)a3
{
  v4 = a3;
  v5 = [(SAScenarioClassifier *)self clients];
  [v5 addObject:v4];
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  v5 = [(SAScenarioClassifier *)self clients];
  [v5 removeObject:v4];
}

- (void)ingestTAEvent:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 eventType];
    if (!v6)
    {
      v7 = [v5 safeLocation];
      [(SAScenarioClassifier *)self _addSafeLocation:v7];
      goto LABEL_29;
    }

    if (v6 == 1)
    {
      v7 = [v5 safeLocation];
      [(SAScenarioClassifier *)self _removeSafeLocation:v7];
      if ([(SAScenarioClassifier *)self _isInsideAnySafeLocation])
      {
        v8 = self;
        v9 = 1;
LABEL_6:
        [(SAScenarioClassifier *)v8 _setNewScenarioClass:v9];
LABEL_29:

LABEL_40:
        goto LABEL_41;
      }

      if ([(SAScenarioClassifier *)self scenarioClassification]!= 1)
      {
        goto LABEL_29;
      }

      [v7 latitude];
      v25 = v24;
      [v7 longitude];
      v27 = CLLocationCoordinate2DMake(v25, v26);
      v28 = [(SAScenarioClassifier *)self currentVisit];
      v29 = [v28 containsCoordinate:{v27.latitude, v27.longitude}];

      if (!v29)
      {
        v8 = self;
        v9 = 3;
        goto LABEL_6;
      }

      [(SAScenarioClassifier *)self _setNewScenarioClass:2];
      v30 = [(SAScenarioClassifier *)self currentVisit];
      [(SAScenarioClassifier *)self _addUnsafeLocation:v30];
LABEL_28:

      goto LABEL_29;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
    if ([v7 hasArrivalDate] && (objc_msgSend(v7, "hasDepartureDate") & 1) == 0)
    {
      v31 = objc_alloc(MEMORY[0x277CCACA8]);
      v32 = [(SAScenarioClassifier *)self deviceUuid];
      v33 = [v32 UUIDString];
      v34 = [v31 initWithFormat:@"unsafe_%@", v33];

      v35 = objc_alloc(MEMORY[0x277CBFBC8]);
      [v7 coordinate];
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

      v30 = v36;
      v37 = [(SAScenarioClassifier *)self deviceUuid];
      *buf = 68289283;
      v44 = 0;
      v45 = 2082;
      v46 = "";
      v47 = 2113;
      v48 = v37;
      _os_log_impl(&dword_2656EA000, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning #SAScenarioClassifier visit while in safe, device:%{private}@}", buf, 0x1Cu);

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
    v39 = [(SAScenarioClassifier *)self deviceUuid];
    *buf = 68289283;
    v44 = 0;
    v45 = 2082;
    v46 = "";
    v47 = 2113;
    v48 = v39;
    _os_log_impl(&dword_2656EA000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning #SAScenarioClassifier visit while in unsafe, device:%{private}@}", buf, 0x1Cu);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_41;
    }

    v10 = v4;
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
    v18 = [(SAScenarioClassifier *)self deviceUuid];
    v19 = [v18 UUIDString];
    v20 = [v17 initWithFormat:@"unsafe_%@", v19];

    v5 = [objc_alloc(MEMORY[0x277CBFBC8]) initWithCenter:v20 radius:v14.latitude identifier:{v14.longitude, v16}];
    [v5 setGeoReferenceFrame:{objc_msgSend(v10, "referenceFrame")}];
    [(SAScenarioClassifier *)self setCurrentVisit:v5];
    if ([(SAScenarioClassifier *)self scenarioClassification]== 1)
    {
      v21 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v23 = [(SAScenarioClassifier *)self deviceUuid];
        *buf = 68289283;
        v44 = 0;
        v45 = 2082;
        v46 = "";
        v47 = 2113;
        v48 = v23;
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

    v39 = v40;
    v41 = [(SAScenarioClassifier *)self deviceUuid];
    *buf = 68289283;
    v44 = 0;
    v45 = 2082;
    v46 = "";
    v47 = 2113;
    v48 = v41;
    _os_log_impl(&dword_2656EA000, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning #SAScenarioClassifier LOI while in unsafe, device:%{private}@}", buf, 0x1Cu);
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

- (void)_addUnsafeLocation:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SAScenarioClassifier *)self currentUnsafeLocation];

  if (v5)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [(SAScenarioClassifier *)self deviceUuid];
      v9 = [(SAScenarioClassifier *)self currentUnsafeLocation];
      v10 = [v9 identifier];
      v11 = [(CLRegion *)v4 identifier];
      v21[0] = 68289795;
      v21[1] = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2113;
      v25 = v8;
      v26 = 2113;
      v27 = v10;
      v28 = 2113;
      v29 = v11;
      _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAScenarioClassifier addUnsafeLocation replacing already existing unsafe, device:%{private}@, old:%{private}@, new:%{private}@}", v21, 0x30u);
    }

    v12 = [(SAScenarioClassifier *)self delegate];
    v13 = [(SAScenarioClassifier *)self currentUnsafeLocation];
    v14 = [(SAScenarioClassifier *)self deviceUuid];
    [v12 stopMonitorUnsafeLocationExit:v13 forDevice:v14];

    currentUnsafeLocation = self->_currentUnsafeLocation;
    self->_currentUnsafeLocation = 0;
  }

  v16 = self->_currentUnsafeLocation;
  self->_currentUnsafeLocation = v4;
  v17 = v4;

  v18 = [(SAScenarioClassifier *)self delegate];
  v19 = [(SAScenarioClassifier *)self deviceUuid];
  [v18 startMonitorUnsafeLocationExit:v17 forDevice:v19];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_removeUnsafeLocation:(id)a3
{
  currentUnsafeLocation = self->_currentUnsafeLocation;
  self->_currentUnsafeLocation = 0;
  v5 = a3;

  v7 = [(SAScenarioClassifier *)self delegate];
  v6 = [(SAScenarioClassifier *)self deviceUuid];
  [v7 stopMonitorUnsafeLocationExit:v5 forDevice:v6];
}

- (id)_findSafeLocationWithUUID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SAScenarioClassifier *)self safeLocations];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v4 isEqual:v10];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)_addSafeLocation:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(SAScenarioClassifier *)self _findSafeLocationWithUUID:v5];

  if (v6)
  {
    v7 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [(SAScenarioClassifier *)self deviceUuid];
      v10 = [v4 identifier];
      v16[0] = 68289539;
      v16[1] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2113;
      v20 = v9;
      v21 = 2117;
      v22 = v10;
      _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAScenarioClassifier addSafeLocation replacing, device:%{private}@, location:%{sensitive}@}", v16, 0x26u);
    }

    [(SAScenarioClassifier *)self _removeSafeLocation:v6];
  }

  v11 = [(SAScenarioClassifier *)self safeLocations];
  [v11 addObject:v4];

  v12 = [(SAScenarioClassifier *)self statesBySafeLocation];
  [v12 setObject:&unk_287710138 forKeyedSubscript:v4];

  v13 = [(SAScenarioClassifier *)self delegate];
  v14 = [(SAScenarioClassifier *)self deviceUuid];
  [v13 startMonitorSafeLocation:v4 forDevice:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_removeSafeLocation:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(SAScenarioClassifier *)self _findSafeLocationWithUUID:v5];

  if (v6)
  {
    v7 = [(SAScenarioClassifier *)self delegate];
    v8 = [(SAScenarioClassifier *)self deviceUuid];
    [v7 stopMonitorSafeLocation:v6 forDevice:v8];

    v9 = [(SAScenarioClassifier *)self statesBySafeLocation];
    [v9 setObject:0 forKeyedSubscript:v6];

    v10 = [(SAScenarioClassifier *)self safeLocations];
    [v10 removeObject:v6];
  }

  else
  {
    v11 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [(SAScenarioClassifier *)self deviceUuid];
      v14 = [v4 identifier];
      v16[0] = 68289539;
      v16[1] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2113;
      v20 = v13;
      v21 = 2117;
      v22 = v14;
      _os_log_impl(&dword_2656EA000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAScenarioClassifier removeSafeLocation not in set, device:%{private}@, location:%{sensitive}@}", v16, 0x26u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)getCurrentTime
{
  v3 = [(SAScenarioClassifier *)self timeDelegate];

  if (v3)
  {
    v4 = [(SAScenarioClassifier *)self timeDelegate];
    v5 = [v4 getCurrentTime];
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] now];
  }

  return v5;
}

@end