@interface TAStore
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldAddTACLVisit:(id)visit;
- (BOOL)shouldAddTALocationLite:(id)lite;
- (BOOL)shouldAddTASPAdvertisement:(id)advertisement;
- (NSString)description;
- (TAStore)initWithEventBufferSettings:(id)settings scanRequestSettings:(id)requestSettings visitStateSettings:(id)stateSettings deviceRecordSettings:(id)recordSettings;
- (unint64_t)hash;
- (void)addTAEvent:(id)event andAppendOutgoingRequestsTo:(id)to;
- (void)requestAIS:(id)s;
- (void)updateClock:(id)clock;
- (void)visitState:(id)state didChangeStateFromType:(unint64_t)type toType:(unint64_t)toType;
- (void)visitState:(id)state didIssueMetricsSubmissionHint:(unint64_t)hint;
@end

@implementation TAStore

- (TAStore)initWithEventBufferSettings:(id)settings scanRequestSettings:(id)requestSettings visitStateSettings:(id)stateSettings deviceRecordSettings:(id)recordSettings
{
  settingsCopy = settings;
  requestSettingsCopy = requestSettings;
  stateSettingsCopy = stateSettings;
  recordSettingsCopy = recordSettings;
  v26.receiver = self;
  v26.super_class = TAStore;
  v14 = [(TAStore *)&v26 init];
  if (v14)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    clock = v14->_clock;
    v14->_clock = distantPast;

    v17 = [[TAVisitState alloc] initWithSettings:stateSettingsCopy scanRequestSettings:requestSettingsCopy];
    visitState = v14->_visitState;
    v14->_visitState = v17;

    v19 = [[TADeviceRecord alloc] initWithSettings:recordSettingsCopy];
    deviceRecord = v14->_deviceRecord;
    v14->_deviceRecord = v19;

    [(TADeviceRecord *)v14->_deviceRecord setDelegate:v14];
    v21 = [[TAEventBuffer alloc] initWithSettings:settingsCopy];
    eventBuffer = v14->_eventBuffer;
    v14->_eventBuffer = v21;

    v23 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v14->_observers;
    v14->_observers = v23;

    [(TAVisitState *)v14->_visitState addObserver:v14];
  }

  return v14;
}

- (void)requestAIS:(id)s
{
  v23 = *MEMORY[0x277D85DE8];
  sCopy = s;
  v5 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    identifier = [sCopy identifier];
    uUIDString = [identifier UUIDString];
    *buf = 136446210;
    uTF8String = [uUIDString UTF8String];
    _os_log_impl(&dword_26F2E2000, v6, OS_LOG_TYPE_DEFAULT, "#TAStore request for AIS fetch %{public}s", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [(TAStore *)self observers];
  v10 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(observers);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 didRequestAIS:sCopy];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)visitState:(id)state didChangeStateFromType:(unint64_t)type toType:(unint64_t)toType
{
  v22 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v9 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [TAStore visitState:v9 didChangeStateFromType:? toType:?];
  }

  [(TADeviceRecord *)self->_deviceRecord updateDeviceRecordOnSessionChange:stateCopy WithCurrentDate:self->_clock];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v11 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(allObjects);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 visitState:stateCopy didChangeStateFromType:type toType:toType];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [allObjects countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)visitState:(id)state didIssueMetricsSubmissionHint:(unint64_t)hint
{
  v19 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v8 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(allObjects);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 visitState:stateCopy didIssueMetricsSubmissionHint:hint];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [allObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateClock:(id)clock
{
  clock = self->_clock;
  getDate = [clock getDate];
  v5 = [(NSDate *)clock laterDate:getDate];
  v6 = self->_clock;
  self->_clock = v5;
}

- (BOOL)shouldAddTASPAdvertisement:(id)advertisement
{
  advertisementCopy = advertisement;
  if ([advertisementCopy getDeviceType] != 1 && objc_msgSend(advertisementCopy, "getDeviceType") != 2 && objc_msgSend(advertisementCopy, "getDeviceType") != 3 && objc_msgSend(advertisementCopy, "getDeviceType") != 4)
  {
    v9 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [TAStore shouldAddTASPAdvertisement:v9];
    }

    goto LABEL_17;
  }

  getType = [advertisementCopy getType];
  switch(getType)
  {
    case 2:
      v7 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
      {
        [TAStore shouldAddTASPAdvertisement:v7];
      }

      break;
    case 1:
      v6 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
      {
        [TAStore shouldAddTASPAdvertisement:v6];
      }

      goto LABEL_17;
    case 0:
      v5 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
      {
        [TAStore shouldAddTASPAdvertisement:v5];
      }

LABEL_17:
      v8 = 0;
      goto LABEL_18;
  }

  v8 = 1;
LABEL_18:

  return v8;
}

- (BOOL)shouldAddTALocationLite:(id)lite
{
  liteCopy = lite;
  [liteCopy horizontalAccuracy];
  if (v5 >= 0.0)
  {
    [liteCopy horizontalAccuracy];
    if (v7 > 70.0)
    {
      v8 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
      {
        [TAStore shouldAddTALocationLite:v8];
      }

      goto LABEL_10;
    }

    if ([liteCopy isSimulatedOrSpoofed])
    {
      v9 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
      {
        [TAStore shouldAddTALocationLite:v9];
      }

      goto LABEL_10;
    }

    lastLocationDate = self->_lastLocationDate;
    getDate = [liteCopy getDate];
    v14 = getDate;
    if (lastLocationDate)
    {
      v15 = [(NSDate *)lastLocationDate compare:getDate];

      if (v15 != -1)
      {
LABEL_20:
        v10 = 1;
        goto LABEL_11;
      }

      getDate2 = [liteCopy getDate];
      [getDate2 timeIntervalSinceDate:self->_lastLocationDate];
      v18 = v17;

      if (v18 < 15.0)
      {
        v19 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
        {
          [(TAStore *)v19 shouldAddTALocationLite:liteCopy];
        }

        goto LABEL_10;
      }

      getDate3 = [liteCopy getDate];
      v20 = self->_lastLocationDate;
      self->_lastLocationDate = getDate3;
    }

    else
    {
      v20 = self->_lastLocationDate;
      self->_lastLocationDate = getDate;
    }

    goto LABEL_20;
  }

  v6 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [TAStore shouldAddTALocationLite:v6];
  }

LABEL_10:
  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)shouldAddTACLVisit:(id)visit
{
  visitCopy = visit;
  if ([visitCopy confidence] != 2)
  {
    v5 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [TAStore shouldAddTACLVisit:v5];
    }

    goto LABEL_8;
  }

  if (([visitCopy isTemporalOrderSensical] & 1) == 0)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [TAStore shouldAddTACLVisit:v6];
    }

LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v4 = 1;
LABEL_9:

  return v4;
}

- (void)addTAEvent:(id)event andAppendOutgoingRequestsTo:(id)to
{
  eventCopy = event;
  toCopy = to;
  [(TAStore *)self updateClock:eventCopy];
  if (!toCopy)
  {
    v8 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      [TAStore addTAEvent:v8 andAppendOutgoingRequestsTo:?];
    }
  }

  if ([eventCopy isMemberOfClass:objc_opt_class()])
  {
    if (![(TAStore *)self shouldAddTASPAdvertisement:eventCopy])
    {
      goto LABEL_15;
    }
  }

  else if ([eventCopy isMemberOfClass:objc_opt_class()])
  {
    if (![(TAStore *)self shouldAddTALocationLite:eventCopy])
    {
      goto LABEL_15;
    }
  }

  else if ([eventCopy isMemberOfClass:objc_opt_class()] && !-[TAStore shouldAddTACLVisit:](self, "shouldAddTACLVisit:", eventCopy))
  {
    goto LABEL_15;
  }

  [(TAEventBuffer *)self->_eventBuffer ingestTAEvent:eventCopy];
  [(TADeviceRecord *)self->_deviceRecord ingestTAEvent:eventCopy andAppendOutgoingRequestsTo:toCopy];
  [(TAVisitState *)self->_visitState ingestTAEvent:eventCopy store:self appendOutgoingRequestsTo:toCopy];
  if (-[TAVisitState isInSensitiveVisit](self->_visitState, "isInSensitiveVisit") && [eventCopy isMemberOfClass:objc_opt_class()])
  {
    [(TADeviceRecord *)self->_deviceRecord forceStagedDetectionsToSurfaceImmediatelyWithAdvertisement:eventCopy withReason:1];
  }

LABEL_15:
  [(TAEventBuffer *)self->_eventBuffer purgeWithClock:self->_clock];
  [(TAVisitState *)self->_visitState purgeWithClock:self->_clock];
  [(TADeviceRecord *)self->_deviceRecord purgeWithClock:self->_clock andAppendOutgoingRequestsTo:toCopy];
  [(TADeviceRecord *)self->_deviceRecord checkForScanRequestsWithClock:self->_clock andAppendOutgoingRequestsTo:toCopy];
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_clock hash];
  v4 = [(TAEventBuffer *)self->_eventBuffer hash]^ v3;
  v5 = [(TADeviceRecord *)self->_deviceRecord hash];
  return v4 ^ v5 ^ [(TAVisitState *)self->_visitState hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    eventBuffer = [(TAStore *)self eventBuffer];
    eventBuffer2 = [v6 eventBuffer];
    if (eventBuffer != eventBuffer2)
    {
      eventBuffer3 = [(TAStore *)self eventBuffer];
      [v6 eventBuffer];
      v33 = v32 = eventBuffer3;
      if (![eventBuffer3 isEqual:?])
      {
        v10 = 0;
        goto LABEL_22;
      }
    }

    deviceRecord = [(TAStore *)self deviceRecord];
    deviceRecord2 = [v6 deviceRecord];
    if (deviceRecord != deviceRecord2)
    {
      deviceRecord3 = [(TAStore *)self deviceRecord];
      deviceRecord4 = [v6 deviceRecord];
      if (![deviceRecord3 isEqual:?])
      {
        v10 = 0;
LABEL_20:

LABEL_21:
        if (eventBuffer == eventBuffer2)
        {
LABEL_23:

          goto LABEL_24;
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    visitState = [(TAStore *)self visitState];
    visitState2 = [v6 visitState];
    v31 = visitState;
    v15 = visitState == visitState2;
    v16 = visitState2;
    if (v15)
    {
      v28 = deviceRecord3;
      v29 = deviceRecord2;
    }

    else
    {
      visitState3 = [(TAStore *)self visitState];
      visitState4 = [v6 visitState];
      v26 = visitState3;
      if (![visitState3 isEqual:?])
      {
        v10 = 0;
        v23 = v31;
        goto LABEL_18;
      }

      v28 = deviceRecord3;
      v29 = deviceRecord2;
    }

    v27 = v16;
    clock = [(TAStore *)self clock];
    clock2 = [v6 clock];
    v20 = clock2;
    if (clock == clock2)
    {

      v10 = 1;
    }

    else
    {
      clock3 = [(TAStore *)self clock];
      clock4 = [v6 clock];
      v10 = [clock3 isEqual:clock4];
    }

    v23 = v31;
    v16 = v27;
    deviceRecord3 = v28;
    deviceRecord2 = v29;
    if (v31 == v27)
    {
LABEL_19:

      if (deviceRecord == deviceRecord2)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_18:

    goto LABEL_19;
  }

  v10 = 0;
LABEL_24:

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  clock = [(TAStore *)self clock];
  v6 = [v3 stringWithFormat:@"<%@: %p clock: '%@'>", v4, self, clock];;

  return v6;
}

- (void)shouldAddTASPAdvertisement:(void *)a1 .cold.1(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_10();
  v4 = NSStringFromClass(v3);
  [v4 UTF8String];
  v5 = [OUTLINED_FUNCTION_8() description];
  [v5 UTF8String];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_2(&dword_26F2E2000, v6, v7, "#TAStore not adding %{public}s due to %{public}s:%{private}s", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)shouldAddTASPAdvertisement:(void *)a1 .cold.3(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_10();
  v4 = NSStringFromClass(v3);
  [v4 UTF8String];
  v5 = [OUTLINED_FUNCTION_8() description];
  [v5 UTF8String];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_2(&dword_26F2E2000, v6, v7, "#TAStore not adding %{public}s due to %{public}s:%{private}s", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)shouldAddTASPAdvertisement:(void *)a1 .cold.4(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_10();
  v4 = NSStringFromClass(v3);
  [v4 UTF8String];
  v5 = [OUTLINED_FUNCTION_8() description];
  [v5 UTF8String];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_2(&dword_26F2E2000, v6, v7, "#TAStore not adding %{public}s due to %{public}s:%{private}s", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)shouldAddTALocationLite:(void *)a1 .cold.1(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 UTF8String];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"sampling policy at one location every %.2lf seconds", 0x402E000000000000];
  v8 = [v7 UTF8String];
  v9 = [a2 description];
  *buf = 136446723;
  v12 = v6;
  v13 = 2081;
  v14 = v8;
  v15 = 2085;
  v16 = [v9 UTF8String];
  _os_log_debug_impl(&dword_26F2E2000, v3, OS_LOG_TYPE_DEBUG, "#TAStore not adding %{public}s due to %{private}s:%{sensitive}s", buf, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)shouldAddTALocationLite:(void *)a1 .cold.2(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_10();
  v4 = NSStringFromClass(v3);
  [v4 UTF8String];
  v5 = [OUTLINED_FUNCTION_8() description];
  [v5 UTF8String];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2(&dword_26F2E2000, v6, v7, "#TAStore not adding %{public}s due to %{public}s:%{sensitive}s", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)shouldAddTALocationLite:(void *)a1 .cold.3(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_10();
  v4 = NSStringFromClass(v3);
  [v4 UTF8String];
  v5 = [OUTLINED_FUNCTION_8() description];
  [v5 UTF8String];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2(&dword_26F2E2000, v6, v7, "#TAStore not adding %{public}s due to %{public}s:%{sensitive}s", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)shouldAddTALocationLite:(void *)a1 .cold.4(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_10();
  v4 = NSStringFromClass(v3);
  [v4 UTF8String];
  v5 = [OUTLINED_FUNCTION_8() description];
  [v5 UTF8String];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2(&dword_26F2E2000, v6, v7, "#TAStore not adding %{public}s due to %{public}s:%{sensitive}s", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)shouldAddTACLVisit:(void *)a1 .cold.1(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_10();
  v4 = NSStringFromClass(v3);
  [v4 UTF8String];
  v5 = [OUTLINED_FUNCTION_8() description];
  [v5 UTF8String];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_2_2(&dword_26F2E2000, v6, v7, "#TAStore not adding %{public}s due to %{public}s:%{sensitive}s", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)shouldAddTACLVisit:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = OUTLINED_FUNCTION_10();
  v4 = NSStringFromClass(v3);
  [v4 UTF8String];
  v5 = [OUTLINED_FUNCTION_8() description];
  [v5 UTF8String];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(&dword_26F2E2000, v1, OS_LOG_TYPE_ERROR, "#TAStore not adding %{public}s due to %{public}s:%{sensitive}s", v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

@end