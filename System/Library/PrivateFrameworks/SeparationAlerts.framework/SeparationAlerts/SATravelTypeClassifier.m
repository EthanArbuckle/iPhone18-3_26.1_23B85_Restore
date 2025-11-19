@interface SATravelTypeClassifier
+ (id)convertSATravelTypeToString:(unint64_t)a3;
- (BOOL)_setNewTravelType:(unint64_t)a3 hints:(unint64_t)a4;
- (SATravelTypeClassifier)initWithClock:(id)a3;
- (id)_vehicularHintsToString:(unint64_t)a3;
- (void)_handleUserActivityEvent:(id)a3;
- (void)_handleVehicleStateEvent:(id)a3;
- (void)_notifyAllClientsOfTravelTypeChangeFrom:(unint64_t)a3 to:(unint64_t)a4 hints:(unint64_t)a5;
- (void)addClient:(id)a3;
- (void)ingestTAEvent:(id)a3;
- (void)removeClient:(id)a3;
@end

@implementation SATravelTypeClassifier

- (SATravelTypeClassifier)initWithClock:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SATravelTypeClassifier;
  v6 = [(SATravelTypeClassifier *)&v12 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    clients = v6->_clients;
    v6->_clients = v7;

    v6->_currentTravelType = 0;
    objc_storeStrong(&v6->_clock, a3);
    v9 = [(SATimeServiceProtocol *)v6->_clock getCurrentTime];
    currentTravelTypeChangeDate = v6->_currentTravelTypeChangeDate;
    v6->_currentTravelTypeChangeDate = v9;
  }

  return v6;
}

+ (id)convertSATravelTypeToString:(unint64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 1)
  {
    v3 = @"Vehicular";
  }

  if (a3 == 2)
  {
    return @"NonVehicular";
  }

  else
  {
    return v3;
  }
}

- (id)_vehicularHintsToString:(unint64_t)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCACA8]);
  v5 = v4;
  if (v3)
  {
    v6 = @"M";
  }

  else
  {
    v6 = @"-";
  }

  v7 = [v4 stringByAppendingString:v6];
  if ((v3 & 2) != 0)
  {
    v8 = @"G";
  }

  else
  {
    v8 = @"-";
  }

  v9 = [v5 stringByAppendingString:v8];
  if ((v3 & 4) != 0)
  {
    v10 = @"C";
  }

  else
  {
    v10 = @"-";
  }

  v11 = [v5 stringByAppendingString:v10];
  if ((v3 & 8) != 0)
  {
    v12 = @"W";
  }

  else
  {
    v12 = @"-";
  }

  v13 = [v5 stringByAppendingString:v12];
  if ((v3 & 0x10) != 0)
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

- (BOOL)_setNewTravelType:(unint64_t)a3 hints:(unint64_t)a4
{
  v7 = [(SATravelTypeClassifier *)self currentTravelType];
  [(SATravelTypeClassifier *)self setCurrentTravelType:a3];
  v8 = [(SATravelTypeClassifier *)self currentTravelType];
  if (v8 != v7)
  {
    v9 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
    [(SATravelTypeClassifier *)self setCurrentTravelTypeChangeDate:v9];

    [(SATravelTypeClassifier *)self _notifyAllClientsOfTravelTypeChangeFrom:v7 to:[(SATravelTypeClassifier *)self currentTravelType] hints:a4];
  }

  return v8 != v7;
}

- (void)_handleVehicleStateEvent:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 vehicularState];
  v6 = [v4 vehicularHints];

  switch(v5)
  {
    case 2:
      v19 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v21 = [SATravelTypeClassifier convertSATravelTypeToString:[(SATravelTypeClassifier *)self currentTravelType]];
        v22 = [v21 UTF8String];
        v23 = [(SATravelTypeClassifier *)self _vehicularHintsToString:v6];
        v25 = 68289795;
        v26 = 2082;
        v27 = "";
        v28 = 2081;
        v29 = v22;
        v30 = 2081;
        v31 = "Vehicular";
        v32 = 2081;
        v33 = [v23 UTF8String];
        _os_log_impl(&dword_2656EA000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SATravelTypeClassifier handleVehicleState, curr:%{private}s, new:%{private}s, hints:%{private}s}", &v25, 0x30u);
      }

      v17 = self;
      v18 = 1;
      goto LABEL_12;
    case 1:
      v12 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = [SATravelTypeClassifier convertSATravelTypeToString:[(SATravelTypeClassifier *)self currentTravelType]];
        v15 = [v14 UTF8String];
        v16 = [(SATravelTypeClassifier *)self _vehicularHintsToString:v6];
        v25 = 68289795;
        v26 = 2082;
        v27 = "";
        v28 = 2081;
        v29 = v15;
        v30 = 2081;
        v31 = "NonVehicular";
        v32 = 2081;
        v33 = [v16 UTF8String];
        _os_log_impl(&dword_2656EA000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SATravelTypeClassifier handleVehicleState, curr:%{private}s, new:%{private}s, hints:%{private}s}", &v25, 0x30u);
      }

      v17 = self;
      v18 = 2;
LABEL_12:
      [(SATravelTypeClassifier *)v17 _setNewTravelType:v18 hints:v6];
      break;
    case 0:
      v7 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [SATravelTypeClassifier convertSATravelTypeToString:[(SATravelTypeClassifier *)self currentTravelType]];
        v10 = [v9 UTF8String];
        v11 = [(SATravelTypeClassifier *)self _vehicularHintsToString:v6];
        v25 = 68289795;
        v26 = 2082;
        v27 = "";
        v28 = 2081;
        v29 = v10;
        v30 = 2081;
        v31 = "Unknown";
        v32 = 2081;
        v33 = [v11 UTF8String];
        _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SATravelTypeClassifier handleVehicleState, curr:%{private}s, new:%{private}s, hints:%{private}s}", &v25, 0x30u);
      }

      break;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleUserActivityEvent:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a3 activityType];
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
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
          v18 = [v7 UTF8String];
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
        v18 = [v7 UTF8String];
        v19 = 2081;
        v20 = "Unknown";
        goto LABEL_17;
      }
    }
  }

  else
  {
    switch(v4)
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
          v18 = [v7 UTF8String];
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
          v18 = [v7 UTF8String];
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
          v18 = [v7 UTF8String];
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

- (void)_notifyAllClientsOfTravelTypeChangeFrom:(unint64_t)a3 to:(unint64_t)a4 hints:(unint64_t)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [SATravelTypeClassifier convertSATravelTypeToString:a3];
    v12 = [v11 UTF8String];
    v13 = [SATravelTypeClassifier convertSATravelTypeToString:a4];
    buf = 68289539;
    v26 = 2082;
    v27 = "";
    v28 = 2081;
    v29 = v12;
    v30 = 2081;
    v31 = [v13 UTF8String];
    _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SATravelTypeClassifier notifyTravelTypeChange, from:%{private}s, to:%{private}s}", &buf, 0x26u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = [(SATravelTypeClassifier *)self clients];
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v14);
        }

        [*(*(&v20 + 1) + 8 * v18++) didChangeTravelTypeFrom:a3 to:a4 hints:a5];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)addClient:(id)a3
{
  v4 = a3;
  v5 = [(SATravelTypeClassifier *)self clients];
  [v5 addObject:v4];
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  v5 = [(SATravelTypeClassifier *)self clients];
  [v5 removeObject:v4];
}

- (void)ingestTAEvent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SATravelTypeClassifier *)self _handleVehicleStateEvent:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SATravelTypeClassifier *)self _handleUserActivityEvent:v4];
    }
  }
}

@end