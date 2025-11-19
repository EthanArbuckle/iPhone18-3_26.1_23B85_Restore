@interface TAVisitState
+ (id)visitStateTypeToString:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInSensitiveVisit;
- (BOOL)setState:(unint64_t)a3;
- (BOOL)shouldCreateNewVisitSnapshotFromUnknownState:(id)a3;
- (TAVisitState)initWithCoder:(id)a3;
- (TAVisitState)initWithSettings:(id)a3 scanRequestSettings:(id)a4;
- (id)description;
- (id)getDisplayEventsWithFirstPrecedingInInterval:(id)a3 store:(id)a4;
- (id)getLatestValidVisit;
- (id)getLatestValidVisitArrivalDate;
- (id)getLatestValidVisitDepartureDate;
- (unint64_t)evaluateLatestVisitSnapshotAndRecoverIfNecessaryWithStore:(id)a3 andAppendOutgoingRequestsTo:(id)a4;
- (unint64_t)stateTransitionDecisionGivenTACLVisit:(id)a3;
- (void)closeLatestInterVisitSnapshotWithStore:(id)a3 arrivalVisit:(id)a4;
- (void)closeVisitSnapshotWithStore:(id)a3 visit:(id)a4;
- (void)description;
- (void)encodeWithCoder:(id)a3;
- (void)ingestTAEvent:(id)a3 store:(id)a4 appendOutgoingRequestsTo:(id)a5;
- (void)issueInterVisitScanRequestIfNecessaryWithClosedSnapshot:(id)a3 store:(id)a4 andAppendOutgoingRequestsTo:(id)a5;
- (void)issueVisitEntryScanRequestIfNecessaryWithOpenSnapshot:(id)a3 clock:(id)a4 andAppendOutgoingRequestsTo:(id)a5;
- (void)labelLoiTypeForLastVisitSnapshot:(id)a3;
- (void)mergeWithAnotherTAVisitState:(id)a3;
- (void)notifyObserversOfMetricsHint:(unint64_t)a3;
- (void)notifyObserversOfStateChangeFromState:(unint64_t)a3 toState:(unint64_t)a4;
- (void)openInterVisitBackupSnapshotWithArrivalVisit:(id)a3;
- (void)openInterVisitSnapshotWithStore:(id)a3 departureVisit:(id)a4;
- (void)openVisitSnapshotWithStore:(id)a3 visit:(id)a4 andAppendOutgoingRequestsTo:(id)a5;
- (void)performStateTransitionDecision:(unint64_t)a3 store:(id)a4 visit:(id)a5 andAppendOutgoingRequestsTo:(id)a6;
- (void)purgeInterVisitSnapshotBufferWithCurrentDate:(id)a3;
- (void)purgeVisitSnapshotBufferWithCurrentDate:(id)a3;
- (void)purgeWithClock:(id)a3;
- (void)recoverInterVisitSnapshotWithArrivalVisit:(id)a3 store:(id)a4;
- (void)resetInterVisitBackupSnapshot;
- (void)updateImportantLOIs:(id)a3 currentDate:(id)a4;
- (void)updateInterVisitBackupSnapshotWithStore:(id)a3;
- (void)updateInterVisitSnapshot:(id)a3 store:(id)a4;
- (void)updateInterVisitSnapshotWithStore:(id)a3;
@end

@implementation TAVisitState

- (BOOL)isInSensitiveVisit
{
  if (self->_state != 1)
  {
    return 0;
  }

  v3 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
  if (v3)
  {
    v4 = [(TAVisitStateSettings *)self->_settings sensitiveLOITypes];
    if (v4)
    {
      v5 = [(TAVisitStateSettings *)self->_settings sensitiveLOITypes];
      v6 = MEMORY[0x277CCABB0];
      v7 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
      v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "loiType")}];
      v9 = [v5 containsObject:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)getLatestValidVisitDepartureDate
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(TACircularBuffer *)self->_visitSnapshotBuffer bufferCopy];
  v3 = [v2 reverseObjectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 isClosed])
        {
          v8 = [v7 representativeVisit];
          v4 = [v8 departureDate];

          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (TAVisitState)initWithSettings:(id)a3 scanRequestSettings:(id)a4
{
  v7 = a3;
  v8 = a4;
  v25.receiver = self;
  v25.super_class = TAVisitState;
  v9 = [(TAVisitState *)&v25 init];
  v10 = v9;
  if (v9)
  {
    v9->_state = 0;
    objc_storeStrong(&v9->_settings, a3);
    v11 = [[TACircularBuffer alloc] initWithCapacity:[(TAVisitStateSettings *)v10->_settings visitSnapshotCapacity]];
    visitSnapshotBuffer = v10->_visitSnapshotBuffer;
    v10->_visitSnapshotBuffer = v11;

    v13 = [[TACircularBuffer alloc] initWithCapacity:[(TAVisitStateSettings *)v10->_settings interVisitMetricSnapshotCapacity]];
    interVisitMetricSnapshotBuffer = v10->_interVisitMetricSnapshotBuffer;
    v10->_interVisitMetricSnapshotBuffer = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    importantLois = v10->_importantLois;
    v10->_importantLois = v15;

    v17 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v10->_observers;
    v10->_observers = v17;

    v19 = [[TAScanRequest alloc] initWithSettings:v8];
    scanRequest = v10->_scanRequest;
    v10->_scanRequest = v19;

    interVisitMetricsSnapshotBackup = v10->_interVisitMetricsSnapshotBackup;
    v10->_interVisitMetricsSnapshotBackup = 0;

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    nextPredictedLOIs = v10->_nextPredictedLOIs;
    v10->_nextPredictedLOIs = v22;
  }

  return v10;
}

+ (id)visitStateTypeToString:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_279DD1EB8[a3];
  }
}

- (void)notifyObserversOfStateChangeFromState:(unint64_t)a3 toState:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSHashTable *)self->_observers allObjects];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 visitState:self didChangeStateFromType:a3 toType:a4];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversOfMetricsHint:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSHashTable *)self->_observers allObjects];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 visitState:self didIssueMetricsSubmissionHint:a3];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)ingestTAEvent:(id)a3 store:(id)a4 appendOutgoingRequestsTo:(id)a5
{
  v63 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isMemberOfClass:objc_opt_class()])
  {
    v49 = v10;
    v50 = self;
    v51 = v9;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v11 = [(TACircularBuffer *)self->_visitSnapshotBuffer bufferCopy];
    v12 = [v11 reverseObjectEnumerator];

    v13 = [v12 countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v53;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v53 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v52 + 1) + 8 * i);
          v18 = [v8 getDate];
          v19 = [v17 representativeVisit];
          v20 = [v19 arrivalDate];
          v21 = [v18 compare:v20];

          if (v21 == 1)
          {
            v29 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
            {
              [TAVisitState ingestTAEvent:v29 store:? appendOutgoingRequestsTo:?];
            }

            [v17 addUTAdvertisement:v8];
            goto LABEL_21;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    self = v50;
    v9 = v51;
    v10 = v49;
    if ([(TACircularBuffer *)v50->_interVisitMetricSnapshotBuffer count])
    {
      v30 = [(TACircularBuffer *)v50->_interVisitMetricSnapshotBuffer lastObject];
      v31 = [v30 isClosed];

      if ((v31 & 1) == 0)
      {
        scanRequest = v50->_scanRequest;
        v22 = [v51 deviceRecord];
        v33 = [v51 clock];
        [(TAScanRequest *)scanRequest scheduleInterVisitScanForAdvertisement:v8 deviceRecord:v22 clock:v33];

LABEL_24:
      }
    }
  }

  else
  {
    if ([v8 isMemberOfClass:objc_opt_class()])
    {
      if (![(TACircularBuffer *)self->_visitSnapshotBuffer count])
      {
        goto LABEL_27;
      }

      v22 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
      if (([v22 isClosed] & 1) == 0)
      {
        v23 = [v8 getDate];
        v24 = [v22 latestLocation];
        [v24 getDate];
        v26 = v25 = v10;
        v27 = [v23 compare:v26];

        v10 = v25;
        if (v27 == 1)
        {
          v28 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
          {
            [TAVisitState ingestTAEvent:v28 store:? appendOutgoingRequestsTo:?];
          }

          [v22 updateLatestLocation:v8];
        }
      }

      goto LABEL_24;
    }

    if ([v8 isMemberOfClass:objc_opt_class()])
    {
      v34 = [v9 clock];
      [(TAVisitState *)self updateImportantLOIs:v8 currentDate:v34];
    }

    else if ([v8 isMemberOfClass:objc_opt_class()])
    {
      if ([v8 isTemporalOrderSensical])
      {
        v39 = [(TAVisitState *)self stateTransitionDecisionGivenTACLVisit:v8];
        self->_lastStateTransition = v39;
        [(TAVisitState *)self performStateTransitionDecision:v39 store:v9 visit:v8 andAppendOutgoingRequestsTo:v10];
      }

      else
      {
        v41 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
        {
          [TAVisitState ingestTAEvent:v41 store:? appendOutgoingRequestsTo:?];
        }
      }
    }

    else if ([v8 isMemberOfClass:objc_opt_class()])
    {
      if ([v8 systemStateType] == 2)
      {
        v40 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
        v22 = v40;
        if (v40)
        {
          [v40 addSystemState:v8];
        }

        goto LABEL_24;
      }
    }

    else if ([v8 isMemberOfClass:objc_opt_class()])
    {
      if ([(TACircularBuffer *)self->_visitSnapshotBuffer count])
      {
        v22 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
        if (([v22 isClosed] & 1) == 0)
        {
          v42 = [v8 getDate];
          v43 = [v22 representativeVisit];
          [v43 arrivalDate];
          v45 = v44 = v10;
          v46 = [v42 compare:v45];

          v10 = v44;
          if (v46 == 1)
          {
            v47 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
            {
              [TAVisitState ingestTAEvent:v47 store:? appendOutgoingRequestsTo:?];
            }

            [v22 addScanState:v8];
          }
        }

        goto LABEL_24;
      }
    }

    else if ([v8 isMemberOfClass:objc_opt_class()])
    {
      v48 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        v57 = 0;
        v58 = 2082;
        v59 = "";
        v60 = 2117;
        v61 = v8;
        _os_log_impl(&dword_26F2E2000, v48, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAVisitState adding PLOI, PLOI:%{sensitive}@}", buf, 0x1Cu);
      }

      [(NSMutableArray *)self->_nextPredictedLOIs addObject:v8];
    }
  }

LABEL_27:
  v35 = self->_scanRequest;
  v36 = [v9 clock];
  v37 = [(TAScanRequest *)v35 evictScheduledInterVisitScanWithClock:v36];

  if (v37)
  {
    [v10 addObject:v37];
  }

  [(TAVisitState *)self updateInterVisitSnapshotWithStore:v9];
  [(TAVisitState *)self updateInterVisitBackupSnapshotWithStore:v9];

  v38 = *MEMORY[0x277D85DE8];
}

- (void)purgeWithClock:(id)a3
{
  v4 = a3;
  [(TAVisitState *)self purgeVisitSnapshotBufferWithCurrentDate:v4];
  [(TAVisitState *)self purgeInterVisitSnapshotBufferWithCurrentDate:v4];
}

- (BOOL)setState:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  state = self->_state;
  self->_state = a3;
  v5 = TAStatusLog;
  if (state == a3)
  {
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [TAVisitState setState:];
    }
  }

  else
  {
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v5;
      v8 = [TAVisitState visitStateTypeToString:state];
      v9 = [TAVisitState visitStateTypeToString:self->_state];
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_26F2E2000, v7, OS_LOG_TYPE_DEFAULT, "#TAVisitState changing state from %@ to %@", &v12, 0x16u);
    }

    [(NSMutableArray *)self->_nextPredictedLOIs removeAllObjects];
    [(TAVisitState *)self notifyObserversOfStateChangeFromState:state toState:self->_state];
  }

  result = state != a3;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)stateTransitionDecisionGivenTACLVisit:(id)a3
{
  v4 = a3;
  v5 = v4;
  state = self->_state;
  if (state != 2)
  {
    if (state == 1)
    {
      if ([(TACircularBuffer *)self->_visitSnapshotBuffer count])
      {
        v8 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
        v9 = [v8 isClosed];

        if (v9)
        {
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
          {
            [TAVisitState stateTransitionDecisionGivenTACLVisit:];
          }
        }

        else if ([v5 isTemporalOrderSensical])
        {
          if ([v5 hasDepartureDate])
          {
            v7 = 1;
            goto LABEL_41;
          }

          v19 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
          {
            [TAVisitState stateTransitionDecisionGivenTACLVisit:v19];
          }
        }

        else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
        {
          [TAVisitState stateTransitionDecisionGivenTACLVisit:];
        }
      }

      else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
      {
        [TAVisitState stateTransitionDecisionGivenTACLVisit:];
      }
    }

    else
    {
      if (state)
      {
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
        {
          [TAVisitState stateTransitionDecisionGivenTACLVisit:];
        }

        goto LABEL_40;
      }

      if ([v4 hasArrivalDate] && (objc_msgSend(v5, "hasDepartureDate") & 1) != 0)
      {
        v7 = 4;
        goto LABEL_41;
      }

      if ([v5 hasArrivalDate])
      {
        v7 = 3;
        goto LABEL_41;
      }

      v18 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }

    goto LABEL_40;
  }

  v10 = [(TACircularBuffer *)self->_visitSnapshotBuffer bufferCopy];
  if ([v10 count])
  {
    v11 = [(TACircularBuffer *)self->_visitSnapshotBuffer bufferCopy];
    v12 = [v11 lastObject];
    v13 = [v12 representativeVisit];
    v14 = [v13 arrivalDate];
    v15 = [v5 arrivalDate];
    v16 = [v14 compare:v15];

    if (v16 == 1)
    {
      v17 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
        [TAVisitState stateTransitionDecisionGivenTACLVisit:v17];
      }

      goto LABEL_40;
    }
  }

  else
  {
  }

  if (![v5 hasArrivalDate] || !objc_msgSend(v5, "hasDepartureDate"))
  {
    if ([v5 hasArrivalDate])
    {
      v7 = 2;
      goto LABEL_41;
    }

    v18 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
LABEL_30:
      [TAVisitState stateTransitionDecisionGivenTACLVisit:v18];
    }

LABEL_40:
    v7 = 0;
    goto LABEL_41;
  }

  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    [TAVisitState stateTransitionDecisionGivenTACLVisit:];
  }

  v7 = 5;
LABEL_41:

  return v7;
}

- (void)performStateTransitionDecision:(unint64_t)a3 store:(id)a4 visit:(id)a5 andAppendOutgoingRequestsTo:(id)a6
{
  v68 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      [(TAVisitState *)self openVisitSnapshotWithStore:v10 visit:v11 andAppendOutgoingRequestsTo:v12];
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v28 = [(NSMutableDictionary *)self->_importantLois allValues];
      v29 = [v28 countByEnumeratingWithState:&v56 objects:v66 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v57;
        do
        {
          v32 = 0;
          do
          {
            if (*v57 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = [*(*(&v56 + 1) + 8 * v32) bufferCopy];
            [(TAVisitState *)self labelLoiTypeForLastVisitSnapshot:v33];

            ++v32;
          }

          while (v30 != v32);
          v30 = [v28 countByEnumeratingWithState:&v56 objects:v66 count:16];
        }

        while (v30);
      }

      v34 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
      v35 = [v10 clock];
      [(TAVisitState *)self issueVisitEntryScanRequestIfNecessaryWithOpenSnapshot:v34 clock:v35 andAppendOutgoingRequestsTo:v12];

      goto LABEL_35;
    }

    if (a3 == 4)
    {
      if ([(TAVisitState *)self shouldCreateNewVisitSnapshotFromUnknownState:v11])
      {
        [(TAVisitState *)self openVisitSnapshotWithStore:v10 visit:v11 andAppendOutgoingRequestsTo:v12];
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v39 = [(NSMutableDictionary *)self->_importantLois allValues];
        v40 = [v39 countByEnumeratingWithState:&v52 objects:v65 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v53;
          do
          {
            v43 = 0;
            do
            {
              if (*v53 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = [*(*(&v52 + 1) + 8 * v43) bufferCopy];
              [(TAVisitState *)self labelLoiTypeForLastVisitSnapshot:v44];

              ++v43;
            }

            while (v41 != v43);
            v41 = [v39 countByEnumeratingWithState:&v52 objects:v65 count:16];
          }

          while (v41);
        }

        [(TAVisitState *)self closeVisitSnapshotWithStore:v10 visit:v11];
      }

      [(TAVisitState *)self openInterVisitSnapshotWithStore:v10 departureVisit:v11];
      v45 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];

      if (v45)
      {
        v46 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
        [(TAVisitState *)self issueInterVisitScanRequestIfNecessaryWithClosedSnapshot:v46 store:v10 andAppendOutgoingRequestsTo:v12];
      }

      goto LABEL_51;
    }

    if (a3 != 5)
    {
LABEL_36:
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
      {
        [TAVisitState performStateTransitionDecision:store:visit:andAppendOutgoingRequestsTo:];
      }

      goto LABEL_53;
    }

    [(TAVisitState *)self closeLatestInterVisitSnapshotWithStore:v10 arrivalVisit:v11];
    [(TAVisitState *)self notifyObserversOfMetricsHint:1];
    [(TAVisitState *)self openVisitSnapshotWithStore:v10 visit:v11 andAppendOutgoingRequestsTo:v12];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v21 = [(NSMutableDictionary *)self->_importantLois allValues];
    v22 = [v21 countByEnumeratingWithState:&v48 objects:v64 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v49;
      do
      {
        v25 = 0;
        do
        {
          if (*v49 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v48 + 1) + 8 * v25) bufferCopy];
          [(TAVisitState *)self labelLoiTypeForLastVisitSnapshot:v26];

          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v48 objects:v64 count:16];
      }

      while (v23);
    }

    [(TAVisitState *)self openInterVisitBackupSnapshotWithArrivalVisit:v11];
    [(TAVisitState *)self closeVisitSnapshotWithStore:v10 visit:v11];
    if ([(TAVisitState *)self evaluateLatestVisitSnapshotAndRecoverIfNecessaryWithStore:v10 andAppendOutgoingRequestsTo:v12]== 1)
    {
      [(TAVisitState *)self openInterVisitSnapshotWithStore:v10 departureVisit:v11];
      v27 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
      [(TAVisitState *)self issueInterVisitScanRequestIfNecessaryWithClosedSnapshot:v27 store:v10 andAppendOutgoingRequestsTo:v12];

      [(TAVisitState *)self notifyObserversOfMetricsHint:0];
      [(TAVisitState *)self notifyObserversOfMetricsHint:2];
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          [(TAVisitState *)self openVisitSnapshotWithStore:v10 visit:v11 andAppendOutgoingRequestsTo:v12];
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v13 = [(NSMutableDictionary *)self->_importantLois allValues];
          v14 = [v13 countByEnumeratingWithState:&v60 objects:v67 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v61;
            do
            {
              v17 = 0;
              do
              {
                if (*v61 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = [*(*(&v60 + 1) + 8 * v17) bufferCopy];
                [(TAVisitState *)self labelLoiTypeForLastVisitSnapshot:v18];

                ++v17;
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v60 objects:v67 count:16];
            }

            while (v15);
          }

          v19 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
          v20 = [v10 clock];
          [(TAVisitState *)self issueVisitEntryScanRequestIfNecessaryWithOpenSnapshot:v19 clock:v20 andAppendOutgoingRequestsTo:v12];

          [(TAVisitState *)self closeLatestInterVisitSnapshotWithStore:v10 arrivalVisit:v11];
          [(TAVisitState *)self notifyObserversOfMetricsHint:1];
LABEL_35:
          [(TAVisitState *)self openInterVisitBackupSnapshotWithArrivalVisit:v11];
          v36 = self;
          v37 = 1;
LABEL_52:
          [(TAVisitState *)v36 setState:v37];
          goto LABEL_53;
        }

        goto LABEL_36;
      }

      [(TAVisitState *)self closeVisitSnapshotWithStore:v10 visit:v11];
      if ([(TAVisitState *)self evaluateLatestVisitSnapshotAndRecoverIfNecessaryWithStore:v10 andAppendOutgoingRequestsTo:v12]== 1)
      {
        [(TAVisitState *)self openInterVisitSnapshotWithStore:v10 departureVisit:v11];
        v38 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
        [(TAVisitState *)self issueInterVisitScanRequestIfNecessaryWithClosedSnapshot:v38 store:v10 andAppendOutgoingRequestsTo:v12];

        [(TAVisitState *)self notifyObserversOfMetricsHint:0];
        [(TAVisitState *)self notifyObserversOfMetricsHint:2];
      }

LABEL_51:
      v36 = self;
      v37 = 2;
      goto LABEL_52;
    }

    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [TAVisitState performStateTransitionDecision:store:visit:andAppendOutgoingRequestsTo:];
    }
  }

LABEL_53:

  v47 = *MEMORY[0x277D85DE8];
}

- (void)openVisitSnapshotWithStore:(id)a3 visit:(id)a4 andAppendOutgoingRequestsTo:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v30 = a5;
  v10 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_DEFAULT, "#TAVisitState creating new snapshot", buf, 2u);
  }

  v11 = [[TAVisitSnapshot alloc] initWithTACLVisit:v9 uniqueUTBufferCap:[(TAVisitStateSettings *)self->_settings uniqueUTObservationCapPerVisit] displayEventBufferSizeCap:[(TAVisitStateSettings *)self->_settings visitDisplayBufferCapacity] maxNSigmaBetweenLastLocationAndVisit:[(TAVisitStateSettings *)self->_settings maxNSigmaBetweenLastLocationAndVisit]];
  v12 = MEMORY[0x277CCA970];
  v13 = [v9 arrivalDate];
  v14 = [v9 departureDate];
  v15 = [v12 createIntervalSafelyWithStartDate:v13 endDate:v14];

  v16 = [v8 eventBuffer];
  v17 = [v16 getAllTAEventsOf:objc_opt_class() between:v15];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      v22 = 0;
      do
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(TAVisitSnapshot *)v11 addUTAdvertisement:*(*(&v35 + 1) + 8 * v22++)];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v20);
  }

  v23 = [(TAVisitState *)self getDisplayEventsWithFirstPrecedingInInterval:v15 store:v8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      v27 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(TAVisitSnapshot *)v11 addSystemState:*(*(&v31 + 1) + 8 * v27++)];
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v25);
  }

  v28 = [(TACircularBuffer *)self->_visitSnapshotBuffer add:v11];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)closeVisitSnapshotWithStore:(id)a3 visit:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 hasDepartureDate])
  {
    v6 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];

    if (v6)
    {
      v7 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
      v8 = [v7 isClosed];

      if (v8)
      {
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
        {
          [TAVisitState closeVisitSnapshotWithStore:visit:];
        }
      }

      else
      {
        v9 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
        v10 = [v9 setDepartureVisit:v5];

        if ((v10 & 1) == 0 && os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
        {
          [TAVisitState closeVisitSnapshotWithStore:visit:];
        }

        v28 = v5;
        v11 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          visitSnapshotBuffer = self->_visitSnapshotBuffer;
          v13 = v11;
          v14 = [(TACircularBuffer *)visitSnapshotBuffer lastObject];
          v15 = [v14 latestUtAdvertisements];
          *buf = 134349056;
          v35 = [v15 count];
          _os_log_impl(&dword_26F2E2000, v13, OS_LOG_TYPE_DEFAULT, "#TAVisitState closing snapshot. Closed snapshot has %{public}lu objects.", buf, 0xCu);
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v16 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
        v17 = [v16 latestUtAdvertisements];
        v18 = [v17 allKeys];

        v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v30;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v30 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = TAStatusLog;
              if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
              {
                v24 = *(*(&v29 + 1) + 8 * i);
                v25 = v23;
                v26 = [v24 hexString];
                *buf = 138477827;
                v35 = v26;
                _os_log_impl(&dword_26F2E2000, v25, OS_LOG_TYPE_DEFAULT, "#TAVisitState keys in snapshot:%{private}@", buf, 0xCu);
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v20);
        }

        v5 = v28;
      }
    }

    else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      [TAVisitState closeVisitSnapshotWithStore:visit:];
    }
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
  {
    [TAVisitState closeVisitSnapshotWithStore:visit:];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)updateImportantLOIs:(id)a3 currentDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  importantLois = self->_importantLois;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "type")}];
  v10 = [(NSMutableDictionary *)importantLois objectForKey:v9];

  if (!v10)
  {
    v10 = [[TACircularBuffer alloc] initWithCapacity:[(TAVisitStateSettings *)self->_settings loiBufferPerTypeCapacity]];
    v11 = self->_importantLois;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "type")}];
    [(NSMutableDictionary *)v11 setObject:v10 forKey:v12];
  }

  v13 = [(TACircularBuffer *)v10 bufferCopy];
  v14 = [v13 indexOfObject:v6 inSortedRange:0 options:-[TACircularBuffer count](v10 usingComparator:{"count"), 1024, &__block_literal_global_3}];

  if (v14 >= [(TACircularBuffer *)v10 count])
  {
    v16 = [(TACircularBuffer *)v10 add:v6];
  }

  else
  {
    v15 = [(TACircularBuffer *)v10 insert:v6 at:v14];
  }

  v17 = [(TACircularBuffer *)v10 firstObject];
  v18 = [v17 getDate];
  [v7 timeIntervalSinceDate:v18];
  v20 = v19;
  [(TAVisitStateSettings *)self->_settings loiBufferTimeIntervalOfRetention];
  v22 = v21;

  if (v20 >= v22)
  {
    v23 = MEMORY[0x277CCAC30];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __48__TAVisitState_updateImportantLOIs_currentDate___block_invoke_2;
    v30 = &unk_279DD1E98;
    v31 = v7;
    v32 = self;
    v24 = [v23 predicateWithBlock:&v27];
    v25 = [(TACircularBuffer *)v10 removeUntilFirstPredicateFail:v24, v27, v28, v29, v30];
  }

  v26 = [(TACircularBuffer *)v10 bufferCopy];
  [(TAVisitState *)self labelLoiTypeForLastVisitSnapshot:v26];
}

uint64_t __48__TAVisitState_updateImportantLOIs_currentDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 getDate];
  v6 = [v4 getDate];

  v7 = [v5 compare:v6];
  return v7;
}

BOOL __48__TAVisitState_updateImportantLOIs_currentDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 getDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;
  [*(*(a1 + 40) + 56) loiBufferTimeIntervalOfRetention];
  v8 = v6 > v7;

  return v8;
}

- (void)labelLoiTypeForLastVisitSnapshot:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(TACircularBuffer *)self->_visitSnapshotBuffer count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          v11 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
          [v11 updateLoiType:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)issueVisitEntryScanRequestIfNecessaryWithOpenSnapshot:(id)a3 clock:(id)a4 andAppendOutgoingRequestsTo:(id)a5
{
  v9 = a5;
  v8 = [(TAScanRequest *)self->_scanRequest evaluateVisitEntry:a3 clock:a4];
  if (v8)
  {
    [v9 addObject:v8];
  }
}

- (void)issueInterVisitScanRequestIfNecessaryWithClosedSnapshot:(id)a3 store:(id)a4 andAppendOutgoingRequestsTo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isClosed])
  {
    v11 = [v8 representativeVisit];
    v12 = [v11 departureDate];

    v13 = [v9 clock];
    v14 = [v13 compare:v12];

    if (v14 == -1)
    {
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
        [TAVisitState issueInterVisitScanRequestIfNecessaryWithClosedSnapshot:store:andAppendOutgoingRequestsTo:];
      }
    }

    else
    {
      v15 = MEMORY[0x277CCA970];
      v16 = [v9 clock];
      v26 = v12;
      v17 = [v15 createIntervalSafelyWithStartDate:v12 endDate:v16];

      scanRequest = self->_scanRequest;
      v19 = [(TAVisitState *)self getDisplayEventsWithFirstPrecedingInInterval:v17 store:v9];
      v20 = [v9 eventBuffer];
      v21 = [v20 getAllTAEventsOf:objc_opt_class() between:v17];
      v22 = [v9 deviceRecord];
      [v9 clock];
      v24 = v23 = v10;
      v25 = [(TAScanRequest *)scanRequest evaluateInterVisitAfterVisitExit:v8 displayEvents:v19 advertisements:v21 deviceRecord:v22 clock:v24];

      v10 = v23;
      if (v25)
      {
        [v23 addObject:v25];
      }

      v12 = v26;
    }
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
  {
    [TAVisitState issueInterVisitScanRequestIfNecessaryWithClosedSnapshot:store:andAppendOutgoingRequestsTo:];
  }
}

- (void)openInterVisitSnapshotWithStore:(id)a3 departureVisit:(id)a4
{
  v6 = a4;
  v7 = a3;
  v16 = [v6 departureDate];
  v8 = MEMORY[0x277CCA970];
  v9 = [v6 departureDate];
  v10 = [v6 detectionDate];

  v11 = [v8 createIntervalSafelyWithStartDate:v9 endDate:v10];

  v12 = [[TAInterVisitMetricsSnapshot alloc] initWithTime:v16 maxUniqueAddresses:[(TAVisitStateSettings *)self->_settings uniqueUTObservationCapPerVisit]];
  [(TAVisitStateSettings *)self->_settings thresholdOfLocationRelevance];
  v13 = [TAFilterGeneral filteredInterVisitMetadataWithVisitAdjustment:v7 inInterval:v11 withLocRelevanceThreshold:?];
  v14 = [v11 endDate];
  [(TAInterVisitMetricsSnapshot *)v12 updateInterVisitMetric:v13 store:v7 withUpdatedTime:v14 andCloseSnapshot:0];

  v15 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer add:v12];
}

- (void)closeLatestInterVisitSnapshotWithStore:(id)a3 arrivalVisit:(id)a4
{
  v17 = a3;
  v6 = a4;
  if ([(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer count])
  {
    v7 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer lastObject];
    v8 = [v7 isClosed];

    if ((v8 & 1) == 0)
    {
      v9 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer lastObject];
      v10 = [v9 lastUpdateTime];
      v11 = [v6 arrivalDate];
      v12 = [v10 laterDate:v11];

      v13 = MEMORY[0x277CCA970];
      v14 = [v9 lastUpdateTime];
      v15 = [v13 createIntervalSafelyWithStartDate:v14 endDate:v12];

      [(TAVisitStateSettings *)self->_settings thresholdOfLocationRelevance];
      v16 = [TAFilterGeneral filteredInterVisitMetadataWithVisitAdjustment:v17 inInterval:v15 withLocRelevanceThreshold:?];
      [v9 updateInterVisitMetric:v16 store:v17 withUpdatedTime:v12 andCloseSnapshot:1];

      [v9 visitEntryDelayCorrection:v6 store:v17];
    }
  }
}

- (void)updateInterVisitSnapshotWithStore:(id)a3
{
  v4 = a3;
  if (self->_state == 2)
  {
    if (-[TACircularBuffer count](self->_interVisitMetricSnapshotBuffer, "count") && (-[TACircularBuffer lastObject](self->_interVisitMetricSnapshotBuffer, "lastObject"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isClosed], v5, !v6))
    {
      v7 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer lastObject];
      [(TAVisitState *)self updateInterVisitSnapshot:v7 store:v4];
    }

    else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [TAVisitState updateInterVisitSnapshotWithStore:];
    }
  }
}

- (void)openInterVisitBackupSnapshotWithArrivalVisit:(id)a3
{
  v6 = [a3 arrivalDate];
  v4 = [[TAInterVisitMetricsSnapshot alloc] initWithTime:v6 maxUniqueAddresses:[(TAVisitStateSettings *)self->_settings uniqueUTObservationCapPerVisit]];
  interVisitMetricsSnapshotBackup = self->_interVisitMetricsSnapshotBackup;
  self->_interVisitMetricsSnapshotBackup = v4;
}

- (void)resetInterVisitBackupSnapshot
{
  interVisitMetricsSnapshotBackup = self->_interVisitMetricsSnapshotBackup;
  self->_interVisitMetricsSnapshotBackup = 0;
  MEMORY[0x2821F96F8]();
}

- (void)updateInterVisitBackupSnapshotWithStore:(id)a3
{
  v4 = a3;
  if (self->_state == 1)
  {
    interVisitMetricsSnapshotBackup = self->_interVisitMetricsSnapshotBackup;
    if (interVisitMetricsSnapshotBackup && ![(TAInterVisitMetricsSnapshot *)interVisitMetricsSnapshotBackup isClosed])
    {
      [(TAVisitState *)self updateInterVisitSnapshot:self->_interVisitMetricsSnapshotBackup store:v4];
    }

    else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      [TAVisitState updateInterVisitBackupSnapshotWithStore:];
    }
  }
}

- (unint64_t)evaluateLatestVisitSnapshotAndRecoverIfNecessaryWithStore:(id)a3 andAppendOutgoingRequestsTo:(id)a4
{
  *&v27[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(TACircularBuffer *)self->_visitSnapshotBuffer count])
  {
    v8 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
    v9 = [v8 isClosed];

    if (v9)
    {
      v10 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
      [(TAVisitStateSettings *)self->_settings qualitySnapshotDwellDuration];
      v12 = v11;
      [(TAVisitStateSettings *)self->_settings qualitySnapshotDisplayOnDuration];
      v14 = [v10 evaluateSnapshotQualityWithMinDwellDuration:v12 minDisplayOnDuration:v13];
      v15 = TAStatusLog;
      if (v14 == 1)
      {
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v26) = 0;
          _os_log_impl(&dword_26F2E2000, v15, OS_LOG_TYPE_DEFAULT, "#TAVisitState Visit snapshot quality is good.", &v26, 2u);
        }

        goto LABEL_24;
      }

      if (v14 != 2)
      {
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
        {
          [TAVisitState evaluateLatestVisitSnapshotAndRecoverIfNecessaryWithStore:andAppendOutgoingRequestsTo:];
        }

        goto LABEL_24;
      }

      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v10 representativeVisit];
        v18 = [v17 description];
        v26 = 138739971;
        *v27 = v18;
        _os_log_impl(&dword_26F2E2000, v16, OS_LOG_TYPE_DEFAULT, "#TAVisitState Visit snapshot quality is bad. Performing operations to remove bad visit: %{sensitive}@", &v26, 0xCu);
      }

      v19 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer lastObject];

      if (v19)
      {
        v20 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer lastObject];
        [v20 updateWithInterVisitMetricsSnapshot:self->_interVisitMetricsSnapshotBackup store:v6];
      }

      else
      {
        if (!self->_interVisitMetricsSnapshotBackup)
        {
LABEL_23:
          v23 = [(TACircularBuffer *)self->_visitSnapshotBuffer removeLastObject];
LABEL_24:
          [(TAVisitState *)self resetInterVisitBackupSnapshot];

          goto LABEL_25;
        }

        v21 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 68289026;
          v27[0] = 0;
          LOWORD(v27[1]) = 2082;
          *(&v27[1] + 2) = "";
          _os_log_impl(&dword_26F2E2000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAVisitState using intervisit backup for first intervisit snapshot}", &v26, 0x12u);
        }

        v22 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer add:self->_interVisitMetricsSnapshotBackup];
        v20 = [(TACircularBuffer *)self->_visitSnapshotBuffer lastObject];
        [(TAVisitState *)self issueInterVisitScanRequestIfNecessaryWithClosedSnapshot:v20 store:v6 andAppendOutgoingRequestsTo:v7];
      }

      goto LABEL_23;
    }

    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      [TAVisitState evaluateLatestVisitSnapshotAndRecoverIfNecessaryWithStore:andAppendOutgoingRequestsTo:];
    }
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
  {
    [TAVisitState evaluateLatestVisitSnapshotAndRecoverIfNecessaryWithStore:andAppendOutgoingRequestsTo:];
  }

  v14 = 0;
LABEL_25:

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)getDisplayEventsWithFirstPrecedingInInterval:(id)a3 store:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 eventBuffer];
  v8 = [v7 getAllTAEventsOf:objc_opt_class() andEventSubtype:2 between:v6];

  v9 = MEMORY[0x277CCA970];
  v10 = [MEMORY[0x277CBEAA8] distantPast];
  v11 = [v6 startDate];

  v12 = [v9 createIntervalSafelyWithStartDate:v10 endDate:v11];

  v13 = [v5 eventBuffer];

  v14 = [v13 getAllTAEventsOf:objc_opt_class() andEventSubtype:2 between:v12];

  if (![v14 count] || objc_msgSend(v14, "count") && objc_msgSend(v8, "count") && (objc_msgSend(v14, "lastObject"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "firstObject"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqual:", v16), v16, v15, v17))
  {
    v18 = v8;
  }

  else
  {
    v19 = MEMORY[0x277CBEB18];
    v20 = [v14 lastObject];
    v18 = [v19 arrayWithObject:v20];

    [v18 addObjectsFromArray:v8];
  }

  return v18;
}

- (void)updateInterVisitSnapshot:(id)a3 store:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CBEAA8]);
  [(TAVisitStateSettings *)self->_settings interVisitSnapshotUpdateInterval];
  v10 = v9;
  v11 = [v6 lastUpdateTime];
  v12 = [v8 initWithTimeInterval:v11 sinceDate:v10];

  v13 = [v7 clock];
  v14 = [v12 compare:v13];

  if (v14 == -1)
  {
    v15 = MEMORY[0x277CCA970];
    v16 = [v6 lastUpdateTime];
    v17 = [v7 clock];
    v18 = [v15 createIntervalSafelyWithStartDate:v16 endDate:v17];

    [(TAVisitStateSettings *)self->_settings thresholdOfLocationRelevance];
    v19 = [TAFilterGeneral filteredInterVisitMetadataWithVisitAdjustment:v7 inInterval:v18 withLocRelevanceThreshold:?];
    v20 = [v18 endDate];
    [v6 updateInterVisitMetric:v19 store:v7 withUpdatedTime:v20 andCloseSnapshot:0];

    v21 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = [v6 accumulatedDeviceMetrics];
      v25 = 134283521;
      v26 = [v23 count];
      _os_log_impl(&dword_26F2E2000, v22, OS_LOG_TYPE_DEFAULT, "#TAVisitState inter-visit snapshot updated; tracking %{private}lu devices", &v25, 0xCu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)purgeVisitSnapshotBufferWithCurrentDate:(id)a3
{
  v4 = a3;
  if ([(TACircularBuffer *)self->_visitSnapshotBuffer count])
  {
    v5 = [(TACircularBuffer *)self->_visitSnapshotBuffer firstObject];
    if ([v5 isClosed])
    {
      v6 = [(TACircularBuffer *)self->_visitSnapshotBuffer firstObject];
      v7 = [v6 representativeVisit];
      v8 = [v7 departureDate];
      [v4 timeIntervalSinceDate:v8];
      v10 = v9;
      [(TAVisitStateSettings *)self->_settings snapshotBufferTimeIntervalOfRetention];
      v12 = v11;

      if (v10 >= v12)
      {
        v13 = MEMORY[0x277CCAC30];
        v16 = MEMORY[0x277D85DD0];
        v17 = 3221225472;
        v18 = __56__TAVisitState_purgeVisitSnapshotBufferWithCurrentDate___block_invoke;
        v19 = &unk_279DD1E98;
        v20 = v4;
        v21 = self;
        v14 = [v13 predicateWithBlock:&v16];
        v15 = [(TACircularBuffer *)self->_visitSnapshotBuffer removeUntilFirstPredicateFail:v14, v16, v17, v18, v19];
      }
    }

    else
    {
    }
  }
}

BOOL __56__TAVisitState_purgeVisitSnapshotBufferWithCurrentDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = v3;
    if ([v4 isClosed])
    {
      v5 = *(a1 + 32);
      v6 = [v4 representativeVisit];
      v7 = [v6 departureDate];
      [v5 timeIntervalSinceDate:v7];
      v9 = v8;
      [*(*(a1 + 40) + 56) snapshotBufferTimeIntervalOfRetention];
      v11 = v9 > v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      __56__TAVisitState_purgeVisitSnapshotBufferWithCurrentDate___block_invoke_cold_1(v12);
    }

    v11 = 1;
  }

  return v11;
}

- (void)purgeInterVisitSnapshotBufferWithCurrentDate:(id)a3
{
  v4 = a3;
  if ([(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer count])
  {
    v5 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer firstObject];
    if ([v5 isClosed])
    {
      v6 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer firstObject];
      v7 = [v6 lastUpdateTime];
      [v4 timeIntervalSinceDate:v7];
      v9 = v8;
      [(TAVisitStateSettings *)self->_settings snapshotBufferTimeIntervalOfRetention];
      v11 = v10;

      if (v9 >= v11)
      {
        v12 = MEMORY[0x277CCAC30];
        v15 = MEMORY[0x277D85DD0];
        v16 = 3221225472;
        v17 = __61__TAVisitState_purgeInterVisitSnapshotBufferWithCurrentDate___block_invoke;
        v18 = &unk_279DD1E98;
        v19 = v4;
        v20 = self;
        v13 = [v12 predicateWithBlock:&v15];
        v14 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer removeUntilFirstPredicateFail:v13, v15, v16, v17, v18];
      }
    }

    else
    {
    }
  }
}

BOOL __61__TAVisitState_purgeInterVisitSnapshotBufferWithCurrentDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = v3;
    if ([v4 isClosed])
    {
      v5 = *(a1 + 32);
      v6 = [v4 lastUpdateTime];
      [v5 timeIntervalSinceDate:v6];
      v8 = v7;
      [*(*(a1 + 40) + 56) snapshotBufferTimeIntervalOfRetention];
      v10 = v8 > v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      __61__TAVisitState_purgeInterVisitSnapshotBufferWithCurrentDate___block_invoke_cold_1(v11);
    }

    v10 = 1;
  }

  return v10;
}

- (id)getLatestValidVisitArrivalDate
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(TACircularBuffer *)self->_visitSnapshotBuffer bufferCopy];
  v3 = [v2 reverseObjectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 isClosed])
        {
          v8 = [v7 representativeVisit];
          v4 = [v8 arrivalDate];

          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getLatestValidVisit
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v2 = [(TACircularBuffer *)self->_visitSnapshotBuffer bufferCopy];
  v3 = [v2 reverseObjectEnumerator];

  if ([v3 countByEnumeratingWithState:v7 objects:v8 count:16])
  {
    v4 = [**(&v7[0] + 1) representativeVisit];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)mergeWithAnotherTAVisitState:(id)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v48 = a3;
  v4 = [v48 visitSnapshotBuffer];
  v5 = [v4 bufferCopy];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v61 objects:v82 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v62;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v62 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v61 + 1) + 8 * i);
        if ([v12 isClosed])
        {
          v13 = [(TACircularBuffer *)self->_visitSnapshotBuffer insert:v12 at:0];
          ++v9;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v61 objects:v82 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v14 = [v48 interVisitMetricSnapshotBuffer];
  v15 = [v14 bufferCopy];
  v16 = [v15 reverseObjectEnumerator];

  v17 = [v16 countByEnumeratingWithState:&v57 objects:v81 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v58;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v58 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v57 + 1) + 8 * j);
        if ([v22 isClosed])
        {
          v23 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer insert:v22 at:0];
          ++v19;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v57 objects:v81 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v44 = v19;
  v45 = v9;

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [v48 importantLois];
  v24 = [obj countByEnumeratingWithState:&v53 objects:v80 count:16];
  if (v24)
  {
    v25 = v24;
    v47 = *v54;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v54 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v53 + 1) + 8 * k);
        v28 = [v48 importantLois];
        v29 = [v28 objectForKeyedSubscript:v27];

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v30 = [v29 bufferCopy];
        v31 = [v30 countByEnumeratingWithState:&v49 objects:v79 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v50;
          do
          {
            for (m = 0; m != v32; ++m)
            {
              if (*v50 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v49 + 1) + 8 * m);
              v36 = [v35 getDate];
              [(TAVisitState *)self updateImportantLOIs:v35 currentDate:v36];
            }

            v32 = [v30 countByEnumeratingWithState:&v49 objects:v79 count:16];
          }

          while (v32);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v53 objects:v80 count:16];
    }

    while (v25);
  }

  v37 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    visitSnapshotBuffer = self->_visitSnapshotBuffer;
    v39 = v37;
    v40 = [(TACircularBuffer *)visitSnapshotBuffer count];
    v41 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer count];
    v42 = [(TAVisitState *)self importantLois];
    *buf = 68290307;
    v66 = 0;
    v67 = 2082;
    v68 = "";
    v69 = 2049;
    v70 = v45;
    v71 = 2049;
    v72 = v44;
    v73 = 2049;
    v74 = v40;
    v75 = 2049;
    v76 = v41;
    v77 = 2117;
    v78 = v42;
    _os_log_impl(&dword_26F2E2000, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAVisitState merging with other TAVisitState, numVisitSnapshotsAttemptedToAdd:%{private}llu, numInterVisitSnapshotsAttemptedToAdded:%{private}llu, self.numVisitSnapshot:%{private}lu, self.numInterVisitSnapshot:%{private}lu, self.importantLois:%{sensitive}@}", buf, 0x44u);
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldCreateNewVisitSnapshotFromUnknownState:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isTemporalOrderSensical] && objc_msgSend(v4, "hasDepartureDate"))
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(TAVisitState *)self visitSnapshotBuffer];
    v6 = [v5 bufferCopy];
    v7 = [v6 reverseObjectEnumerator];

    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v19 + 1) + 8 * i) representativeVisit];
          v13 = [v12 dateInterval];
          v14 = [v4 dateInterval];
          v15 = [v13 intersectsDateInterval:v14];

          if (v15)
          {
            v16 = 0;
            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v16 = 1;
LABEL_14:
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)recoverInterVisitSnapshotWithArrivalVisit:(id)a3 store:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 eventBuffer];
  v9 = [v8 getEarliestEventDate];

  v10 = [v6 arrivalDate];
  v11 = v10;
  if (v9 && v10 && [v10 compare:v9] != -1)
  {
    v12 = [MEMORY[0x277CCA970] createIntervalSafelyWithStartDate:v9 endDate:v11];
    v13 = [TAInterVisitMetricsSnapshot alloc];
    v14 = [v12 startDate];
    v15 = [(TAInterVisitMetricsSnapshot *)v13 initWithTime:v14 maxUniqueAddresses:[(TAVisitStateSettings *)self->_settings uniqueUTObservationCapPerVisit]];

    [(TAVisitStateSettings *)self->_settings thresholdOfLocationRelevance];
    v16 = [TAFilterGeneral filteredInterVisitMetadataWithVisitAdjustment:v7 inInterval:v12 withLocRelevanceThreshold:?];
    v17 = [v12 endDate];
    [(TAInterVisitMetricsSnapshot *)v15 updateInterVisitMetric:v16 store:v7 withUpdatedTime:v17 andCloseSnapshot:1];

    v18 = [(TACircularBuffer *)self->_interVisitMetricSnapshotBuffer add:v15];
    v19 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 68289539;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      v26 = 2113;
      v27 = v12;
      v28 = 2117;
      v29 = v6;
      _os_log_impl(&dword_26F2E2000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAVisitState recovered intervisit snapshot, interval:%{private}@, arrivalVisit:%{sensitive}@}", &v22, 0x26u);
    }
  }

  else
  {
    v20 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 68289026;
      v23 = 0;
      v24 = 2082;
      v25 = "";
      _os_log_impl(&dword_26F2E2000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAVisitState aborting intervisit snapshot recovery due unreasonable dates}", &v22, 0x12u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = @"StateType";
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v15[1] = @"State";
  v16[0] = v4;
  v5 = [TAVisitState visitStateTypeToString:self->_state];
  v16[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v14 = 0;
  v7 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v6 error:&v14];
  v8 = v14;
  if (v8)
  {
    v9 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAVisitState *)v9 description];
    }

    v10 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(TAVisitState *)self state];
      if (v7 != [(TAVisitState *)v6 state])
      {
        v11 = 0;
LABEL_41:

        goto LABEL_42;
      }

      v8 = [(TAVisitState *)self visitSnapshotBuffer];
      v9 = [(TAVisitState *)v6 visitSnapshotBuffer];
      if (v8 != v9)
      {
        v10 = [(TAVisitState *)self visitSnapshotBuffer];
        v56 = [(TAVisitState *)v6 visitSnapshotBuffer];
        v57 = v10;
        if (![v10 isEqual:?])
        {
          v11 = 0;
          goto LABEL_39;
        }
      }

      v12 = [(TAVisitState *)self interVisitMetricSnapshotBuffer];
      v13 = [(TAVisitState *)v6 interVisitMetricSnapshotBuffer];
      if (v12 != v13)
      {
        v3 = [(TAVisitState *)self interVisitMetricSnapshotBuffer];
        v54 = [(TAVisitState *)v6 interVisitMetricSnapshotBuffer];
        if (![v3 isEqual:?])
        {
          v11 = 0;
LABEL_37:

LABEL_38:
          if (v8 == v9)
          {
LABEL_40:

            goto LABEL_41;
          }

LABEL_39:

          goto LABEL_40;
        }
      }

      v14 = [(TAVisitState *)self importantLois];
      v15 = [(TAVisitState *)v6 importantLois];
      v55 = v14;
      v16 = v14 == v15;
      v17 = v15;
      if (v16)
      {
        v52 = v15;
      }

      else
      {
        v18 = [(TAVisitState *)self importantLois];
        v48 = [(TAVisitState *)v6 importantLois];
        v49 = v18;
        if (![v18 isEqual:?])
        {
          v11 = 0;
          v25 = v17;
          v26 = v55;
LABEL_35:

LABEL_36:
          if (v12 == v13)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        v52 = v17;
      }

      v19 = [(TAVisitState *)self settings];
      v20 = [(TAVisitState *)v6 settings];
      v50 = v19;
      v51 = v3;
      v16 = v19 == v20;
      v21 = v20;
      if (!v16)
      {
        v22 = [(TAVisitState *)self settings];
        v42 = [(TAVisitState *)v6 settings];
        v43 = v22;
        if (![v22 isEqual:?])
        {
          v23 = v52;
          v11 = 0;
          v24 = v50;
LABEL_33:

LABEL_34:
          v26 = v55;
          v25 = v23;
          v16 = v55 == v23;
          v3 = v51;
          if (v16)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }

      v27 = [(TAVisitState *)self scanRequest];
      v45 = [(TAVisitState *)v6 scanRequest];
      v46 = v27;
      v47 = v21;
      v44 = v13;
      if (v27 == v45)
      {
        v41 = v12;
        v30 = v52;
      }

      else
      {
        v28 = [(TAVisitState *)self scanRequest];
        v39 = [(TAVisitState *)v6 scanRequest];
        v40 = v28;
        v29 = [v28 isEqual:?];
        v30 = v52;
        if (!v29)
        {
          v11 = 0;
          v37 = v45;
          v36 = v46;
          goto LABEL_30;
        }

        v41 = v12;
      }

      v31 = [(TAVisitState *)self interVisitMetricsSnapshotBackup];
      v32 = [(TAVisitState *)v6 interVisitMetricsSnapshotBackup];
      v33 = v32;
      if (v31 == v32)
      {

        v11 = 1;
      }

      else
      {
        [(TAVisitState *)self interVisitMetricsSnapshotBackup];
        v34 = v53 = v30;
        v35 = [(TAVisitState *)v6 interVisitMetricsSnapshotBackup];
        v11 = [v34 isEqual:v35];

        v30 = v53;
      }

      v37 = v45;
      v36 = v46;
      v12 = v41;
      if (v46 == v45)
      {
        v23 = v30;
LABEL_32:

        v24 = v50;
        v21 = v47;
        v13 = v44;
        if (v50 == v47)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

LABEL_30:
      v23 = v30;

      goto LABEL_32;
    }

    v11 = 0;
  }

LABEL_42:

  return v11;
}

- (TAVisitState)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = TAVisitState;
  v5 = [(TAVisitState *)&v35 init];
  if (v5)
  {
    v5->_state = [v4 decodeIntegerForKey:@"State"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Settings"];
    settings = v5->_settings;
    v5->_settings = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"VisitBuffer"];
    visitSnapshotBuffer = v5->_visitSnapshotBuffer;
    v5->_visitSnapshotBuffer = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"InterVisitBuffer"];
    interVisitMetricSnapshotBuffer = v5->_interVisitMetricSnapshotBuffer;
    v5->_interVisitMetricSnapshotBuffer = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v20 setWithObjects:{v21, v22, v23, v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"LOIs"];
    importantLois = v5->_importantLois;
    v5->_importantLois = v26;

    v28 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v5->_observers;
    v5->_observers = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ScanReq"];
    scanRequest = v5->_scanRequest;
    v5->_scanRequest = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InterBackup"];
    interVisitMetricsSnapshotBackup = v5->_interVisitMetricsSnapshotBackup;
    v5->_interVisitMetricsSnapshotBackup = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeInteger:state forKey:@"State"];
  [v5 encodeObject:self->_settings forKey:@"Settings"];
  [v5 encodeObject:self->_visitSnapshotBuffer forKey:@"VisitBuffer"];
  [v5 encodeObject:self->_interVisitMetricSnapshotBuffer forKey:@"InterVisitBuffer"];
  [v5 encodeObject:self->_importantLois forKey:@"LOIs"];
  [v5 encodeObject:self->_scanRequest forKey:@"ScanReq"];
  [v5 encodeObject:self->_interVisitMetricsSnapshotBackup forKey:@"InterBackup"];
}

- (void)ingestTAEvent:(void *)a1 store:appendOutgoingRequestsTo:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() description];
  [v3 UTF8String];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26F2E2000, v4, v5, "#TAVisitState Adding %{private}s to snapshot", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)ingestTAEvent:(void *)a1 store:appendOutgoingRequestsTo:.cold.2(void *a1)
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
  OUTLINED_FUNCTION_4(&dword_26F2E2000, v6, v7, "#TAVisitState not adding %{public}s due to %{public}s:%{sensitive}s", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)ingestTAEvent:(void *)a1 store:appendOutgoingRequestsTo:.cold.3(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() description];
  [v3 UTF8String];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26F2E2000, v4, v5, "Updating %{sensitive}s to snapshot", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)ingestTAEvent:(void *)a1 store:appendOutgoingRequestsTo:.cold.4(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() description];
  [v3 UTF8String];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26F2E2000, v4, v5, "#TAVisitState Considering to add %{private}s for snapshot", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stateTransitionDecisionGivenTACLVisit:(void *)a1 .cold.1(void *a1)
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
  OUTLINED_FUNCTION_4(&dword_26F2E2000, v6, v7, "#TAVisitState not adding %{public}s due to %{public}s:%{sensitive}s", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stateTransitionDecisionGivenTACLVisit:(void *)a1 .cold.2(void *a1)
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
  OUTLINED_FUNCTION_4(&dword_26F2E2000, v6, v7, "#TAVisitState not adding %{public}s due to %{public}s:%{sensitive}s", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)stateTransitionDecisionGivenTACLVisit:(void *)a1 .cold.5(void *a1)
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
  OUTLINED_FUNCTION_4(&dword_26F2E2000, v6, v7, "#TAVisitState not considering %{public}s due to %{public}s:%{sensitive}s", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __56__TAVisitState_purgeVisitSnapshotBufferWithCurrentDate___block_invoke_cold_1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_9();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1(&dword_26F2E2000, v5, v6, "#TAVisitState seeing class type %@ in a predicate supposed to be used for TAVisitSnapshot object only", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __61__TAVisitState_purgeInterVisitSnapshotBufferWithCurrentDate___block_invoke_cold_1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_9();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1(&dword_26F2E2000, v5, v6, "#TAVisitState seeing class type %@ in a predicate supposed to be used for TAInterVisitMetricsSnapshot object only", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)description
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_3();
  v9 = 2112;
  v10 = a3;
  _os_log_error_impl(&dword_26F2E2000, v4, OS_LOG_TYPE_ERROR, "%@ instance failed to create description:%@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end