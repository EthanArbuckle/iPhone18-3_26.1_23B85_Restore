@interface SATravelTypeClassifier
+ (id)convertSATravelTypeToString:(unint64_t)string;
- (BOOL)_setNewTravelType:(unint64_t)type hints:(unint64_t)hints;
- (SATravelTypeClassifier)initWithClock:(id)clock;
- (id)_vehicularHintsToString:(unint64_t)string;
- (void)_handleUserActivityEvent:(id)event;
- (void)_handleVehicleStateEvent:(id)event;
- (void)_notifyAllClientsOfTravelTypeChangeFrom:(unint64_t)from to:(unint64_t)to hints:(unint64_t)hints;
- (void)addClient:(id)client;
- (void)ingestTAEvent:(id)event;
- (void)removeClient:(id)client;
@end

@implementation SATravelTypeClassifier

- (SATravelTypeClassifier)initWithClock:(id)clock
{
  clockCopy = clock;
  v12.receiver = self;
  v12.super_class = SATravelTypeClassifier;
  v6 = [(SATravelTypeClassifier *)&v12 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    clients = v6->_clients;
    v6->_clients = v7;

    v6->_currentTravelType = 0;
    objc_storeStrong(&v6->_clock, clock);
    getCurrentTime = [(SATimeServiceProtocol *)v6->_clock getCurrentTime];
    currentTravelTypeChangeDate = v6->_currentTravelTypeChangeDate;
    v6->_currentTravelTypeChangeDate = getCurrentTime;
  }

  return v6;
}

+ (id)convertSATravelTypeToString:(unint64_t)string
{
  v3 = @"Unknown";
  if (string == 1)
  {
    v3 = @"Vehicular";
  }

  if (string == 2)
  {
    return @"NonVehicular";
  }

  else
  {
    return v3;
  }
}

- (id)_vehicularHintsToString:(unint64_t)string
{
  stringCopy = string;
  v4 = objc_alloc_init(MEMORY[0x277CCACA8]);
  v5 = v4;
  if (stringCopy)
  {
    v6 = @"M";
  }

  else
  {
    v6 = @"-";
  }

  v7 = [v4 stringByAppendingString:v6];
  if ((stringCopy & 2) != 0)
  {
    v8 = @"G";
  }

  else
  {
    v8 = @"-";
  }

  v9 = [v5 stringByAppendingString:v8];
  if ((stringCopy & 4) != 0)
  {
    v10 = @"C";
  }

  else
  {
    v10 = @"-";
  }

  v11 = [v5 stringByAppendingString:v10];
  if ((stringCopy & 8) != 0)
  {
    v12 = @"W";
  }

  else
  {
    v12 = @"-";
  }

  v13 = [v5 stringByAppendingString:v12];
  if ((stringCopy & 0x10) != 0)
  {
    v14 = @"B";
  }

  else
  {
    v14 = @"-";
  }

  v15 = [v5 stringByAppendingString:v14];

  return v5;
}

- (BOOL)_setNewTravelType:(unint64_t)type hints:(unint64_t)hints
{
  currentTravelType = [(SATravelTypeClassifier *)self currentTravelType];
  [(SATravelTypeClassifier *)self setCurrentTravelType:type];
  currentTravelType2 = [(SATravelTypeClassifier *)self currentTravelType];
  if (currentTravelType2 != currentTravelType)
  {
    getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
    [(SATravelTypeClassifier *)self setCurrentTravelTypeChangeDate:getCurrentTime];

    [(SATravelTypeClassifier *)self _notifyAllClientsOfTravelTypeChangeFrom:currentTravelType to:[(SATravelTypeClassifier *)self currentTravelType] hints:hints];
  }

  return currentTravelType2 != currentTravelType;
}

- (void)_handleVehicleStateEvent:(id)event
{
  v34 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  vehicularState = [eventCopy vehicularState];
  vehicularHints = [eventCopy vehicularHints];

  switch(vehicularState)
  {
    case 2:
      v19 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [SATravelTypeClassifier convertSATravelTypeToString:[(SATravelTypeClassifier *)self currentTravelType]];
        uTF8String = [v21 UTF8String];
        v23 = [(SATravelTypeClassifier *)self _vehicularHintsToString:vehicularHints];
        v25 = 68289795;
        v26 = 2082;
        v27 = "";
        v28 = 2081;
        v29 = uTF8String;
        v30 = 2081;
        v31 = "Vehicular";
        v32 = 2081;
        uTF8String2 = [v23 UTF8String];
        _os_log_impl(&dword_2656EA000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SATravelTypeClassifier handleVehicleState, curr:%{private}s, new:%{private}s, hints:%{private}s}", &v25, 0x30u);
      }

      selfCopy2 = self;
      v18 = 1;
      goto LABEL_12;
    case 1:
      v12 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = [SATravelTypeClassifier convertSATravelTypeToString:[(SATravelTypeClassifier *)self currentTravelType]];
        uTF8String3 = [v14 UTF8String];
        v16 = [(SATravelTypeClassifier *)self _vehicularHintsToString:vehicularHints];
        v25 = 68289795;
        v26 = 2082;
        v27 = "";
        v28 = 2081;
        v29 = uTF8String3;
        v30 = 2081;
        v31 = "NonVehicular";
        v32 = 2081;
        uTF8String2 = [v16 UTF8String];
        _os_log_impl(&dword_2656EA000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SATravelTypeClassifier handleVehicleState, curr:%{private}s, new:%{private}s, hints:%{private}s}", &v25, 0x30u);
      }

      selfCopy2 = self;
      v18 = 2;
LABEL_12:
      [(SATravelTypeClassifier *)selfCopy2 _setNewTravelType:v18 hints:vehicularHints];
      break;
    case 0:
      v7 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [SATravelTypeClassifier convertSATravelTypeToString:[(SATravelTypeClassifier *)self currentTravelType]];
        uTF8String4 = [v9 UTF8String];
        v11 = [(SATravelTypeClassifier *)self _vehicularHintsToString:vehicularHints];
        v25 = 68289795;
        v26 = 2082;
        v27 = "";
        v28 = 2081;
        v29 = uTF8String4;
        v30 = 2081;
        v31 = "Unknown";
        v32 = 2081;
        uTF8String2 = [v11 UTF8String];
        _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SATravelTypeClassifier handleVehicleState, curr:%{private}s, new:%{private}s, hints:%{private}s}", &v25, 0x30u);
      }

      break;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleUserActivityEvent:(id)event
{
  v21 = *MEMORY[0x277D85DE8];
  activityType = [event activityType];
  if (activityType <= 1)
  {
    if (activityType)
    {
      if (activityType == 1)
      {
        v8 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
        {
          v6 = v8;
          v7 = [SATravelTypeClassifier convertSATravelTypeToString:[(SATravelTypeClassifier *)self currentTravelType]];
          v13 = 68289539;
          v14 = 0;
          v15 = 2082;
          v16 = "";
          v17 = 2081;
          uTF8String = [v7 UTF8String];
          v19 = 2081;
          v20 = "NonVehicular - Static";
          goto LABEL_17;
        }
      }
    }

    else
    {
      v11 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
      {
        v6 = v11;
        v7 = [SATravelTypeClassifier convertSATravelTypeToString:[(SATravelTypeClassifier *)self currentTravelType]];
        v13 = 68289539;
        v14 = 0;
        v15 = 2082;
        v16 = "";
        v17 = 2081;
        uTF8String = [v7 UTF8String];
        v19 = 2081;
        v20 = "Unknown";
        goto LABEL_17;
      }
    }
  }

  else
  {
    switch(activityType)
    {
      case 2:
        v9 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
        {
          v6 = v9;
          v7 = [SATravelTypeClassifier convertSATravelTypeToString:[(SATravelTypeClassifier *)self currentTravelType]];
          v13 = 68289539;
          v14 = 0;
          v15 = 2082;
          v16 = "";
          v17 = 2081;
          uTF8String = [v7 UTF8String];
          v19 = 2081;
          v20 = "NonVehicular - Pedestrian";
          goto LABEL_17;
        }

        break;
      case 3:
        v10 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
        {
          v6 = v10;
          v7 = [SATravelTypeClassifier convertSATravelTypeToString:[(SATravelTypeClassifier *)self currentTravelType]];
          v13 = 68289539;
          v14 = 0;
          v15 = 2082;
          v16 = "";
          v17 = 2081;
          uTF8String = [v7 UTF8String];
          v19 = 2081;
          v20 = "Vehicular";
          goto LABEL_17;
        }

        break;
      case 4:
        v5 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
        {
          v6 = v5;
          v7 = [SATravelTypeClassifier convertSATravelTypeToString:[(SATravelTypeClassifier *)self currentTravelType]];
          v13 = 68289539;
          v14 = 0;
          v15 = 2082;
          v16 = "";
          v17 = 2081;
          uTF8String = [v7 UTF8String];
          v19 = 2081;
          v20 = "NonVehicular - Cycling";
LABEL_17:
          _os_log_impl(&dword_2656EA000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SATravelTypeClassifier handleUserActivity, curr:%{private}s, new:%{private}s}", &v13, 0x26u);
        }

        break;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_notifyAllClientsOfTravelTypeChangeFrom:(unint64_t)from to:(unint64_t)to hints:(unint64_t)hints
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [SATravelTypeClassifier convertSATravelTypeToString:from];
    uTF8String = [v11 UTF8String];
    v13 = [SATravelTypeClassifier convertSATravelTypeToString:to];
    buf = 68289539;
    v26 = 2082;
    v27 = "";
    v28 = 2081;
    v29 = uTF8String;
    v30 = 2081;
    uTF8String2 = [v13 UTF8String];
    _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SATravelTypeClassifier notifyTravelTypeChange, from:%{private}s, to:%{private}s}", &buf, 0x26u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  clients = [(SATravelTypeClassifier *)self clients];
  v15 = [clients countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(clients);
        }

        [*(*(&v20 + 1) + 8 * v18++) didChangeTravelTypeFrom:from to:to hints:hints];
      }

      while (v16 != v18);
      v16 = [clients countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)addClient:(id)client
{
  clientCopy = client;
  clients = [(SATravelTypeClassifier *)self clients];
  [clients addObject:clientCopy];
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  clients = [(SATravelTypeClassifier *)self clients];
  [clients removeObject:clientCopy];
}

- (void)ingestTAEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SATravelTypeClassifier *)self _handleVehicleStateEvent:eventCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SATravelTypeClassifier *)self _handleUserActivityEvent:eventCopy];
    }
  }
}

@end