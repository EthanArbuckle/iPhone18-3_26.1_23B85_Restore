@interface TAVisitSnapshot
- (BOOL)isEqual:(id)a3;
- (BOOL)setDepartureVisit:(id)a3;
- (TAVisitSnapshot)initWithCoder:(id)a3;
- (TAVisitSnapshot)initWithTACLVisit:(id)a3 uniqueUTBufferCap:(unint64_t)a4 displayEventBufferSizeCap:(unint64_t)a5 maxNSigmaBetweenLastLocationAndVisit:(unint64_t)a6;
- (double)getDisplayOnTimeUntilEndDate:(id)a3;
- (double)getDurationOfVisitEntryConsideredWithDisplayOnBudget:(double)a3;
- (double)getDurationOfVisitExitConsideredWithDisplayOnBudget:(double)a3;
- (id)getArrivalDelay;
- (id)getDepartureDelay;
- (id)getEntryAdvertisementsWithDisplayOnBudget:(double)a3;
- (id)getEntryIntervalEvaluatedUntil;
- (id)getExitAdvertisementsWithDisplayOnBudget:(double)a3;
- (id)getLocationRepresentingSnapshot;
- (id)mostRecentAdvertisementDate;
- (unint64_t)evaluateSnapshotQualityWithMinDwellDuration:(double)a3 minDisplayOnDuration:(double)a4;
- (void)addScanState:(id)a3;
- (void)addSystemState:(id)a3;
- (void)addUTAdvertisement:(id)a3;
- (void)calculateExitIntervalWithDisplayOnBudget:(double)a3;
- (void)closeSnapshotCleanup;
- (void)encodeWithCoder:(id)a3;
- (void)pruneDisplayEvents;
- (void)setRepresentativeVisit:(id)a3;
- (void)updateEntryIntervalWithDisplayOnBudget:(double)a3 evaluateToEnd:(BOOL)a4;
- (void)updateLatestLocation:(id)a3;
- (void)updateLoiType:(id)a3;
@end

@implementation TAVisitSnapshot

- (TAVisitSnapshot)initWithTACLVisit:(id)a3 uniqueUTBufferCap:(unint64_t)a4 displayEventBufferSizeCap:(unint64_t)a5 maxNSigmaBetweenLastLocationAndVisit:(unint64_t)a6
{
  v10 = a3;
  v37.receiver = self;
  v37.super_class = TAVisitSnapshot;
  v11 = [(TAVisitSnapshot *)&v37 init];
  v12 = v11;
  if (v11)
  {
    v11->_isClosed = 0;
    v13 = [v10 copy];
    representativeVisit = v12->_representativeVisit;
    v12->_representativeVisit = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    latestUtAdvertisements = v12->_latestUtAdvertisements;
    v12->_latestUtAdvertisements = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    earliestUtAdvertisements = v12->_earliestUtAdvertisements;
    v12->_earliestUtAdvertisements = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB40]);
    lruUtAdvertisementCache = v12->_lruUtAdvertisementCache;
    v12->_lruUtAdvertisementCache = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    displayEvents = v12->_displayEvents;
    v12->_displayEvents = v21;

    v12->_uniqueUTBufferSizeCap = a4;
    v12->_displayEventBufferSizeCap = a5;
    v23 = [TALocationLite alloc];
    v24 = [v10 getDate];
    [v10 coordinate];
    v26 = v25;
    [v10 coordinate];
    v28 = v27;
    [v10 horizontalAccuracy];
    v30 = [(TALocationLite *)v23 initWithTimestamp:v24 latitude:v26 longitude:v28 horizontalAccuracy:v29];
    latestLocation = v12->_latestLocation;
    v12->_latestLocation = v30;

    v12->_loiType = 0;
    v32 = [MEMORY[0x277CBEAA8] distantPast];
    lastLoiTypeUpdateTime = v12->_lastLoiTypeUpdateTime;
    v12->_lastLoiTypeUpdateTime = v32;

    distanceToClosestLoi = v12->_distanceToClosestLoi;
    v12->_distanceToClosestLoi = 0;

    v12->_latestLocationInsideVisit = 1;
    entryDurationOfConsiderationClosed = v12->_entryDurationOfConsiderationClosed;
    v12->_entryDurationOfConsiderationClosed = 0;

    v12->_maxNSigmaBetweenLastLocationAndVisit = a6;
  }

  return v12;
}

- (void)setRepresentativeVisit:(id)a3
{
  v4 = a3;
  if ([(TAVisitSnapshot *)self isClosed])
  {
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [TAVisitSnapshot setRepresentativeVisit:];
    }
  }

  else
  {
    representativeVisit = self->_representativeVisit;
    p_representativeVisit = &self->_representativeVisit;
    v7 = [(TACLVisit *)representativeVisit arrivalDate];
    v8 = [v4 departureDate];
    v9 = [v7 laterDate:v8];

    v10 = [TACLVisit alloc];
    [v4 coordinate];
    v12 = v11;
    v14 = v13;
    [v4 horizontalAccuracy];
    v16 = v15;
    v17 = [(TACLVisit *)*p_representativeVisit arrivalDate];
    v18 = [v4 detectionDate];
    v19 = -[TACLVisit initWithCoordinate:horizontalAccuracy:arrivalDate:departureDate:detectionDate:confidence:](v10, "initWithCoordinate:horizontalAccuracy:arrivalDate:departureDate:detectionDate:confidence:", v17, v9, v18, [v4 confidence], v12, v14, v16);
    v20 = *p_representativeVisit;
    *p_representativeVisit = v19;

    v21 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [(TAVisitSnapshot *)v21 setRepresentativeVisit:v4, p_representativeVisit];
    }
  }
}

- (id)getEntryIntervalEvaluatedUntil
{
  displayOnCalculator = self->_displayOnCalculator;
  if (displayOnCalculator)
  {
    displayOnCalculator = [displayOnCalculator evaluatedUntil];
    v2 = vars8;
  }

  return displayOnCalculator;
}

- (void)addScanState:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 state] == 1)
  {
    v5 = MEMORY[0x277CCA970];
    v6 = [(TACLVisit *)self->_representativeVisit arrivalDate];
    v7 = [(TACLVisit *)self->_representativeVisit departureDate];
    v8 = [v5 createIntervalSafelyWithStartDate:v6 endDate:v7];

    v9 = [v4 getDate];
    LOBYTE(v7) = [v8 containsDate:v9];

    if (v7)
    {
      displayOnCalculator = self->_displayOnCalculator;
      v11 = [v4 getDate];
      v12 = v11;
      if (!displayOnCalculator)
      {
        entryDurationOfConsiderationClosed = self->_entryDurationOfConsiderationClosed;
        self->_entryDurationOfConsiderationClosed = v11;

        goto LABEL_9;
      }

      [(TADisplayOnCalculator *)displayOnCalculator completeDisplayOnWithEndDate:v11];
    }

    else
    {
      v13 = TAStatusLog;
      if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        goto LABEL_10;
      }

      v14 = v13;
      v12 = [v4 description];
      v17 = 136380931;
      v18 = [v12 UTF8String];
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&dword_26F2E2000, v14, OS_LOG_TYPE_DEFAULT, "#TAVisitSnapshot Scan completed: %{private}s not in valid time range %{public}@", &v17, 0x16u);
    }

    goto LABEL_9;
  }

LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addUTAdvertisement:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCA970];
  v6 = [(TACLVisit *)self->_representativeVisit arrivalDate];
  v7 = [(TACLVisit *)self->_representativeVisit departureDate];
  v8 = [v5 createIntervalSafelyWithStartDate:v6 endDate:v7];

  v9 = [v4 getDate];
  LOBYTE(v7) = [v8 containsDate:v9];

  if (v7)
  {
    if (self->_latestLocationInsideVisit)
    {
      v10 = [v4 address];
      if ([(NSMutableOrderedSet *)self->_lruUtAdvertisementCache containsObject:v10])
      {
        [(NSMutableOrderedSet *)self->_lruUtAdvertisementCache removeObject:v10];
      }

      while ([(NSMutableOrderedSet *)self->_lruUtAdvertisementCache count]>= self->_uniqueUTBufferSizeCap && [(NSMutableOrderedSet *)self->_lruUtAdvertisementCache count])
      {
        v11 = [(NSMutableOrderedSet *)self->_lruUtAdvertisementCache firstObject];
        [(NSMutableDictionary *)self->_latestUtAdvertisements removeObjectForKey:v11];
        [(NSMutableDictionary *)self->_earliestUtAdvertisements removeObjectForKey:v11];
        [(NSMutableOrderedSet *)self->_lruUtAdvertisementCache removeObject:v11];
      }

      [(NSMutableOrderedSet *)self->_lruUtAdvertisementCache addObject:v10];
      v12 = [(NSMutableDictionary *)self->_latestUtAdvertisements objectForKey:v10];

      latestUtAdvertisements = self->_latestUtAdvertisements;
      if (v12)
      {
        v14 = [(NSMutableDictionary *)latestUtAdvertisements objectForKey:v10];
        if ([v14 isPosh])
        {
          v15 = [v4 isPosh];

          if ((v15 & 1) == 0)
          {
LABEL_20:
            v22 = [(NSMutableDictionary *)self->_earliestUtAdvertisements objectForKey:v10];

            if (!v22)
            {
              [(NSMutableDictionary *)self->_earliestUtAdvertisements setObject:v4 forKey:v10];
            }

            goto LABEL_22;
          }
        }

        else
        {
        }

        latestUtAdvertisements = self->_latestUtAdvertisements;
      }

      [(NSMutableDictionary *)latestUtAdvertisements setObject:v4 forKey:v10];
      goto LABEL_20;
    }

    v21 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v21;
      v10 = [v4 description];
      v24 = 136380675;
      v25 = [v10 UTF8String];
      v18 = "#TAVisitSnapshot Advertisement %{private}s not added to snapshot due to latest location not inside visit";
      v19 = v17;
      v20 = 12;
      goto LABEL_16;
    }
  }

  else
  {
    v16 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v10 = [v4 description];
      v24 = 136380931;
      v25 = [v10 UTF8String];
      v26 = 2114;
      v27 = v8;
      v18 = "#TAVisitSnapshot Advertisement %{private}s not in valid time range %{public}@";
      v19 = v17;
      v20 = 22;
LABEL_16:
      _os_log_impl(&dword_26F2E2000, v19, OS_LOG_TYPE_DEFAULT, v18, &v24, v20);

LABEL_22:
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)addSystemState:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 systemStateType] == 2)
  {
    v5 = MEMORY[0x277CCA970];
    if ([(NSMutableArray *)self->_displayEvents count])
    {
      [(TACLVisit *)self->_representativeVisit arrivalDate];
    }

    else
    {
      [MEMORY[0x277CBEAA8] distantPast];
    }
    v6 = ;
    v7 = [(TACLVisit *)self->_representativeVisit departureDate];
    v8 = [v5 createIntervalSafelyWithStartDate:v6 endDate:v7];

    v9 = [v4 getDate];
    LOBYTE(v7) = [v8 containsDate:v9];

    if ((v7 & 1) == 0)
    {
      v19 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v23 = 67240450;
        v24 = [v4 isOn];
        v25 = 2114;
        v26 = v8;
        _os_log_impl(&dword_26F2E2000, v20, OS_LOG_TYPE_DEFAULT, "#TAVisitSnapshot System display state isOn: %{public}d not in valid time range %{public}@", &v23, 0x12u);
      }

      goto LABEL_16;
    }

    v10 = [(NSMutableArray *)self->_displayEvents lastObject];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 getDate];
      v13 = [v4 getDate];
      v14 = [v12 compare:v13];

      if (v14 == 1)
      {
        v15 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          v17 = [v4 isOn];
          v18 = [v11 getDate];
          v23 = 67240450;
          v24 = v17;
          v25 = 2114;
          v26 = v18;
          _os_log_impl(&dword_26F2E2000, v16, OS_LOG_TYPE_DEFAULT, "#TAVisitSnapshot System display state isOn: %{public}d received out of order, after %{public}@", &v23, 0x12u);
        }

        goto LABEL_15;
      }

      v21 = [v11 isOn];
      if (v21 == [v4 isOn])
      {
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }
    }

    [(NSMutableArray *)self->_displayEvents addObject:v4];
    if ([(NSMutableArray *)self->_displayEvents count]> self->_displayEventBufferSizeCap)
    {
      [(TAVisitSnapshot *)self pruneDisplayEvents];
    }

    goto LABEL_15;
  }

LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)setDepartureVisit:(id)a3
{
  v4 = a3;
  if ([(TAVisitSnapshot *)self isClosed])
  {
    v5 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAVisitSnapshot *)v4 setDepartureVisit:v5];
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  if (![v4 hasDepartureDate])
  {
    v7 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAVisitSnapshot *)v4 setDepartureVisit:v7];
    }

    goto LABEL_11;
  }

  if (![v4 isTemporalOrderSensical])
  {
    v8 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAVisitSnapshot *)v8 setDepartureVisit:v4];
    }

    goto LABEL_11;
  }

  [(TAVisitSnapshot *)self setRepresentativeVisit:v4];
  [(TAVisitSnapshot *)self closeSnapshotCleanup];
  v6 = 1;
  self->_isClosed = 1;
LABEL_12:

  return v6;
}

- (void)closeSnapshotCleanup
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableDictionary *)self->_earliestUtAdvertisements allKeys];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_earliestUtAdvertisements objectForKeyedSubscript:v8];
        v10 = [v9 getDate];
        v11 = [(TACLVisit *)self->_representativeVisit departureDate];
        v12 = [v10 compare:v11];

        if (v12 == 1)
        {
          [(NSMutableDictionary *)self->_latestUtAdvertisements removeObjectForKey:v8];
          [(NSMutableDictionary *)self->_earliestUtAdvertisements removeObjectForKey:v8];
          [(NSMutableOrderedSet *)self->_lruUtAdvertisementCache removeObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v13 = [(NSMutableArray *)self->_displayEvents count];
  if (v13 >= 1)
  {
    v14 = (v13 & 0x7FFFFFFF) + 1;
    while (1)
    {
      v15 = [(NSMutableArray *)self->_displayEvents objectAtIndexedSubscript:v14 - 2];
      v16 = [v15 getDate];
      v17 = [(TACLVisit *)self->_representativeVisit departureDate];
      v18 = [v16 compare:v17];

      if (v18 != 1)
      {
        break;
      }

      [(NSMutableArray *)self->_displayEvents removeLastObject];

      if (--v14 <= 1)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_16:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)calculateExitIntervalWithDisplayOnBudget:(double)a3
{
  if ([(TAVisitSnapshot *)self isClosed])
  {
    if (!self->_exitIntervalBeginning)
    {
      v5 = [(TACLVisit *)self->_representativeVisit arrivalDate];
      exitIntervalBeginning = self->_exitIntervalBeginning;
      self->_exitIntervalBeginning = v5;

      if ([(NSMutableArray *)self->_displayEvents count])
      {
        v7 = [(TACLVisit *)self->_representativeVisit departureDate];
        v8 = [(NSMutableArray *)self->_displayEvents count];
        if (a3 <= 0.0 || v8 < 1)
        {
          v16 = v7;
        }

        else
        {
          v9 = v8 & 0x7FFFFFFF;
          while (1)
          {
            v10 = [(NSMutableArray *)self->_displayEvents objectAtIndexedSubscript:v9 - 1];
            if ([v10 isOn])
            {
              v11 = [v10 getDate];
              [v7 timeIntervalSinceDate:v11];
              v13 = v12;

              if (v13 > 0.0)
              {
                if (v13 > a3)
                {
                  v14 = [v7 dateByAddingTimeInterval:-a3];
                  v15 = self->_exitIntervalBeginning;
                  self->_exitIntervalBeginning = v14;
                }

                a3 = a3 - v13;
              }
            }

            v18 = [v10 getDate];

            if (a3 <= 0.0)
            {
              break;
            }

            v16 = v18;
            v7 = v18;
            if (v9-- <= 1)
            {
              goto LABEL_20;
            }
          }

          v16 = v18;
        }

LABEL_20:
        v19 = v16;
        [(NSMutableArray *)self->_displayEvents removeAllObjects];
      }
    }
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    [TAVisitSnapshot calculateExitIntervalWithDisplayOnBudget:];
  }
}

- (double)getDisplayOnTimeUntilEndDate:(id)a3
{
  v4 = a3;
  v5 = [TADisplayOnCalculator alloc];
  v6 = [(TACLVisit *)self->_representativeVisit arrivalDate];
  v7 = [(TADisplayOnCalculator *)v5 initWithStartTime:v6];

  displayEvents = self->_displayEvents;
  v9 = [(NSMutableDictionary *)self->_latestUtAdvertisements allValues];
  [(TADisplayOnCalculator *)v7 calculateDisplayOnWithEvents:displayEvents advertisements:v9 endDate:v4];
  v11 = v10;

  return v11;
}

- (void)updateEntryIntervalWithDisplayOnBudget:(double)a3 evaluateToEnd:(BOOL)a4
{
  v4 = a4;
  if (!self->_displayOnCalculator)
  {
    v7 = [TADisplayOnCalculator alloc];
    v8 = [(TACLVisit *)self->_representativeVisit arrivalDate];
    v9 = [(TADisplayOnCalculator *)v7 initWithStartTime:v8 budget:a3];
    displayOnCalculator = self->_displayOnCalculator;
    self->_displayOnCalculator = v9;
  }

  entryDurationOfConsiderationClosed = self->_entryDurationOfConsiderationClosed;
  if (entryDurationOfConsiderationClosed)
  {
    v12 = entryDurationOfConsiderationClosed;
LABEL_5:
    v13 = v12;
LABEL_6:
    v14 = self->_displayOnCalculator;
    displayEvents = self->_displayEvents;
    v16 = [(NSMutableDictionary *)self->_latestUtAdvertisements allValues];
    [(TADisplayOnCalculator *)v14 calculateDisplayOnWithEvents:displayEvents advertisements:v16 endDate:v13];

    if (self->_entryDurationOfConsiderationClosed)
    {
      [(TADisplayOnCalculator *)self->_displayOnCalculator completeDisplayOnWithEndDate:?];
    }

    goto LABEL_8;
  }

  if (!v4)
  {
    v13 = [(TAVisitSnapshot *)self mostRecentAdvertisementDate];
    v17 = [(TADisplayOnCalculator *)self->_displayOnCalculator evaluatedUntil];
    v18 = [v13 compare:v17];

    if (v18 != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if ([(TAVisitSnapshot *)self isClosed])
  {
    v12 = [(TACLVisit *)self->_representativeVisit departureDate];
    goto LABEL_5;
  }

  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
  {
    [TAVisitSnapshot updateEntryIntervalWithDisplayOnBudget:evaluateToEnd:];
  }

  v13 = 0;
LABEL_8:
}

- (id)getEntryAdvertisementsWithDisplayOnBudget:(double)a3
{
  [(TAVisitSnapshot *)self updateEntryIntervalWithDisplayOnBudget:0 evaluateToEnd:a3];
  v4 = [(TADisplayOnCalculator *)self->_displayOnCalculator evaluatedUntil];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    earliestUtAdvertisements = self->_earliestUtAdvertisements;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__TAVisitSnapshot_getEntryAdvertisementsWithDisplayOnBudget___block_invoke;
    v11[3] = &unk_279DD1F78;
    v11[4] = self;
    v7 = v5;
    v12 = v7;
    [(NSMutableDictionary *)earliestUtAdvertisements enumerateKeysAndObjectsUsingBlock:v11];
    v8 = v12;
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEAC0] dictionary];
  }

  return v9;
}

void __61__TAVisitSnapshot_getEntryAdvertisementsWithDisplayOnBudget___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 getDate];
  v7 = [*(*(a1 + 32) + 96) evaluatedUntil];
  v8 = [v6 compare:v7];

  if (v8 != 1)
  {
    [*(a1 + 40) setObject:v5 forKey:v9];
  }
}

- (id)getExitAdvertisementsWithDisplayOnBudget:(double)a3
{
  if (self->_exitIntervalBeginning || ([(TAVisitSnapshot *)self calculateExitIntervalWithDisplayOnBudget:a3], self->_exitIntervalBeginning))
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    latestUtAdvertisements = self->_latestUtAdvertisements;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__TAVisitSnapshot_getExitAdvertisementsWithDisplayOnBudget___block_invoke;
    v10[3] = &unk_279DD1F78;
    v10[4] = self;
    v6 = v4;
    v11 = v6;
    [(NSMutableDictionary *)latestUtAdvertisements enumerateKeysAndObjectsUsingBlock:v10];
    v7 = v11;
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  return v8;
}

void __60__TAVisitSnapshot_getExitAdvertisementsWithDisplayOnBudget___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 88);
  v7 = [v5 getDate];
  v8 = [v6 compare:v7];

  if (v8 != 1)
  {
    [*(a1 + 40) setObject:v5 forKey:v9];
  }
}

- (double)getDurationOfVisitExitConsideredWithDisplayOnBudget:(double)a3
{
  if ([(TAVisitSnapshot *)self isClosed])
  {
    [(TAVisitSnapshot *)self calculateExitIntervalWithDisplayOnBudget:a3];
    if (self->_exitIntervalBeginning)
    {
      v5 = [(TACLVisit *)self->_representativeVisit departureDate];
      [v5 timeIntervalSinceDate:self->_exitIntervalBeginning];
      v7 = v6;

      return v7;
    }

    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
    {
      [TAVisitSnapshot getDurationOfVisitExitConsideredWithDisplayOnBudget:];
    }
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    [TAVisitSnapshot getDurationOfVisitExitConsideredWithDisplayOnBudget:];
  }

  return 0.0;
}

- (double)getDurationOfVisitEntryConsideredWithDisplayOnBudget:(double)a3
{
  if ([(TAVisitSnapshot *)self isClosed])
  {
    [(TAVisitSnapshot *)self updateEntryIntervalWithDisplayOnBudget:1 evaluateToEnd:a3];
    displayOnCalculator = self->_displayOnCalculator;
    if (displayOnCalculator)
    {
      v6 = [(TADisplayOnCalculator *)displayOnCalculator evaluatedUntil];
      v7 = [(TACLVisit *)self->_representativeVisit arrivalDate];
      [v6 timeIntervalSinceDate:v7];
      v9 = v8;

      return v9;
    }
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    [TAVisitSnapshot getDurationOfVisitEntryConsideredWithDisplayOnBudget:];
  }

  return 0.0;
}

- (id)mostRecentAdvertisementDate
{
  v3 = [(NSMutableOrderedSet *)self->_lruUtAdvertisementCache lastObject];
  v4 = [(NSMutableDictionary *)self->_latestUtAdvertisements objectForKeyedSubscript:v3];
  v5 = [v4 getDate];

  return v5;
}

- (void)pruneDisplayEvents
{
  v3 = [(NSMutableArray *)self->_displayEvents count]- LODWORD(self->_displayEventBufferSizeCap);
  if (v3 >= 1)
  {
    do
    {
      [(NSMutableArray *)self->_displayEvents removeObjectAtIndex:0];
      --v3;
    }

    while (v3);
  }
}

- (void)updateLatestLocation:(id)a3
{
  v4 = [a3 copy];
  latestLocation = self->_latestLocation;
  self->_latestLocation = v4;

  if (self->_latestLocation)
  {
    v6 = [TALocationLite alloc];
    v7 = [(TACLVisit *)self->_representativeVisit getDate];
    [(TACLVisit *)self->_representativeVisit coordinate];
    v9 = v8;
    [(TACLVisit *)self->_representativeVisit coordinate];
    v11 = v10;
    [(TACLVisit *)self->_representativeVisit horizontalAccuracy];
    v13 = [(TALocationLite *)v6 initWithTimestamp:v7 latitude:v9 longitude:v11 horizontalAccuracy:v12];

    self->_latestLocationInsideVisit = ![(TALocationLite *)self->_latestLocation distanceToLocation:v13 satisfyNSigma:self->_maxNSigmaBetweenLastLocationAndVisit satisfyMinDistance:0.0];
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
  {
    [TAVisitSnapshot updateLatestLocation:];
  }

  v14 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [(TAVisitSnapshot *)self updateLatestLocation:v14];
  }
}

- (void)updateLoiType:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [TALocationLite alloc];
  v6 = [(TACLVisit *)self->_representativeVisit getDate];
  [(TACLVisit *)self->_representativeVisit coordinate];
  v8 = v7;
  [(TACLVisit *)self->_representativeVisit coordinate];
  v10 = v9;
  [(TACLVisit *)self->_representativeVisit horizontalAccuracy];
  v12 = [(TALocationLite *)v5 initWithTimestamp:v6 latitude:v8 longitude:v10 horizontalAccuracy:v11];

  v13 = [TALocationLite alloc];
  v14 = [v4 getDate];
  [v4 latitude];
  v16 = v15;
  [v4 longitude];
  v18 = v17;
  [v4 horizontalAccuracy];
  v20 = [(TALocationLite *)v13 initWithTimestamp:v14 latitude:v16 longitude:v18 horizontalAccuracy:v19];

  [(TALocationLite *)v12 distanceFromLocation:v20];
  v22 = v21;
  if (v21 < 250.0)
  {
    p_lastLoiTypeUpdateTime = &self->_lastLoiTypeUpdateTime;
    lastLoiTypeUpdateTime = self->_lastLoiTypeUpdateTime;
    v25 = [v4 date];
    if ([(NSDate *)lastLoiTypeUpdateTime compare:v25]!= NSOrderedAscending)
    {
      v26 = *p_lastLoiTypeUpdateTime;
      v27 = [v4 date];
      if ([v26 compare:v27])
      {

        goto LABEL_5;
      }

      distanceToClosestLoi = self->_distanceToClosestLoi;
      if (distanceToClosestLoi)
      {
        [(NSNumber *)distanceToClosestLoi doubleValue];
        v33 = v32;

        if (v22 >= v33)
        {
LABEL_5:
          v28 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
          {
            [(TAVisitSnapshot *)v28 updateLoiType:v4, p_lastLoiTypeUpdateTime];
          }

          goto LABEL_17;
        }

        goto LABEL_14;
      }
    }

LABEL_14:
    v34 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v34;
      v36 = TALocationOfInterestTypeToString([v4 type]);
      v42 = 138477827;
      v43 = *&v36;
      _os_log_impl(&dword_26F2E2000, v35, OS_LOG_TYPE_DEFAULT, "#TAVisitSnapshot update visit snapshot with LOI type %{private}@", &v42, 0xCu);
    }

    self->_loiType = [v4 type];
    v37 = [v4 date];
    v38 = self->_lastLoiTypeUpdateTime;
    self->_lastLoiTypeUpdateTime = v37;

    v39 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:v22];
    v40 = self->_distanceToClosestLoi;
    self->_distanceToClosestLoi = v39;

    goto LABEL_17;
  }

  v29 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    v30 = v29;
    v42 = 134284033;
    v43 = v22;
    v44 = 2049;
    v45 = [v4 type];
    v46 = 2049;
    v47 = v22 - 250.0;
    _os_log_debug_impl(&dword_26F2E2000, v30, OS_LOG_TYPE_DEBUG, "#TAVisitSnapshot the visit snapshot located %{private}f meters away from %{private}lu LOI type with %{private}f residual", &v42, 0x20u);
  }

LABEL_17:

  v41 = *MEMORY[0x277D85DE8];
}

- (id)getArrivalDelay
{
  representativeVisit = self->_representativeVisit;
  if (!representativeVisit)
  {
    goto LABEL_5;
  }

  v4 = [(TACLVisit *)representativeVisit detectionDate];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [(TACLVisit *)self->_representativeVisit arrivalDate];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [(TACLVisit *)self->_representativeVisit arrivalDate];
  v8 = [(TACLVisit *)self->_representativeVisit detectionDate];
  v9 = [v7 compare:v8];

  if (v9 != 1)
  {
    v12 = MEMORY[0x277CCA970];
    v13 = [(TACLVisit *)self->_representativeVisit arrivalDate];
    v14 = [(TACLVisit *)self->_representativeVisit detectionDate];
    v10 = [v12 createIntervalSafelyWithStartDate:v13 endDate:v14];
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10;
}

- (id)getDepartureDelay
{
  representativeVisit = self->_representativeVisit;
  if (!representativeVisit)
  {
    goto LABEL_5;
  }

  v4 = [(TACLVisit *)representativeVisit detectionDate];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [(TACLVisit *)self->_representativeVisit departureDate];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [(TACLVisit *)self->_representativeVisit departureDate];
  v8 = [(TACLVisit *)self->_representativeVisit detectionDate];
  v9 = [v7 compare:v8];

  if (v9 != 1)
  {
    v12 = MEMORY[0x277CCA970];
    v13 = [(TACLVisit *)self->_representativeVisit departureDate];
    v14 = [(TACLVisit *)self->_representativeVisit detectionDate];
    v10 = [v12 createIntervalSafelyWithStartDate:v13 endDate:v14];
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10;
}

- (unint64_t)evaluateSnapshotQualityWithMinDwellDuration:(double)a3 minDisplayOnDuration:(double)a4
{
  if ([(TAVisitSnapshot *)self isClosed])
  {
    v7 = [(TACLVisit *)self->_representativeVisit departureDate];
    v8 = [(TACLVisit *)self->_representativeVisit arrivalDate];
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;

    if (v10 >= a3)
    {
      v12 = [(TACLVisit *)self->_representativeVisit departureDate];
      [(TAVisitSnapshot *)self getDisplayOnTimeUntilEndDate:v12];
      v14 = v13;

      if (v14 >= a4)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [TAVisitSnapshot evaluateSnapshotQualityWithMinDwellDuration:minDisplayOnDuration:];
    }

    return 0;
  }
}

- (id)getLocationRepresentingSnapshot
{
  v3 = [TALocationLite alloc];
  v4 = [(TACLVisit *)self->_representativeVisit hasDepartureDate];
  representativeVisit = self->_representativeVisit;
  if (v4)
  {
    [(TACLVisit *)representativeVisit departureDate];
  }

  else
  {
    [(TACLVisit *)representativeVisit arrivalDate];
  }
  v6 = ;
  [(TACLVisit *)self->_representativeVisit coordinate];
  v8 = v7;
  [(TACLVisit *)self->_representativeVisit coordinate];
  v10 = v9;
  [(TACLVisit *)self->_representativeVisit horizontalAccuracy];
  v12 = [(TALocationLite *)v3 initWithTimestamp:v6 latitude:v8 longitude:v10 horizontalAccuracy:v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(TAVisitSnapshot *)self isClosed];
      if (v8 != [(TAVisitSnapshot *)v7 isClosed])
      {
        v9 = 0;
LABEL_78:

        goto LABEL_79;
      }

      v10 = [(TAVisitSnapshot *)self representativeVisit];
      v11 = [(TAVisitSnapshot *)v7 representativeVisit];
      if (v10 != v11)
      {
        v4 = [(TAVisitSnapshot *)self representativeVisit];
        v3 = [(TAVisitSnapshot *)v7 representativeVisit];
        if (![v4 isEqual:v3])
        {
          v9 = 0;
          goto LABEL_76;
        }
      }

      v12 = [(TAVisitSnapshot *)self latestLocation];
      v13 = [(TAVisitSnapshot *)v7 latestLocation];
      if (v12 != v13)
      {
        v14 = [(TAVisitSnapshot *)self latestLocation];
        v96 = [(TAVisitSnapshot *)v7 latestLocation];
        if (![v14 isEqual:?])
        {
          v9 = 0;
          goto LABEL_74;
        }

        v95 = v14;
      }

      v15 = [(TAVisitSnapshot *)self loiType];
      if (v15 == [(TAVisitSnapshot *)v7 loiType])
      {
        v16 = [(TAVisitSnapshot *)self latestUtAdvertisements];
        [(TAVisitSnapshot *)v7 latestUtAdvertisements];
        v93 = v3;
        v94 = v16;
        v92 = v91 = v13;
        v90 = v12;
        if (v16 != v92)
        {
          v17 = [(TAVisitSnapshot *)self latestUtAdvertisements];
          v86 = [(TAVisitSnapshot *)v7 latestUtAdvertisements];
          v87 = v17;
          if (![v17 isEqual:?])
          {
            v9 = 0;
            v18 = v16;
            v19 = v92;
            v14 = v95;
LABEL_72:

LABEL_73:
            v12 = v90;
            v13 = v91;
            v3 = v93;
            if (v90 == v91)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          }
        }

        v20 = [(TAVisitSnapshot *)self earliestUtAdvertisements];
        v88 = [(TAVisitSnapshot *)v7 earliestUtAdvertisements];
        v89 = v20;
        if (v20 != v88)
        {
          v21 = [(TAVisitSnapshot *)self earliestUtAdvertisements];
          v84 = [(TAVisitSnapshot *)v7 earliestUtAdvertisements];
          v85 = v21;
          if (![v21 isEqual:?])
          {
            v9 = 0;
            v22 = v88;
            v23 = v89;
            v14 = v95;
            goto LABEL_70;
          }
        }

        v24 = [(TAVisitSnapshot *)self latestLocationInsideVisit];
        if (v24 != [(TAVisitSnapshot *)v7 latestLocationInsideVisit])
        {
          v9 = 0;
          v22 = v88;
          v23 = v89;
          v14 = v95;
          if (v89 == v88)
          {
LABEL_71:

            v18 = v94;
            v19 = v92;
            if (v94 == v92)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          }

LABEL_70:

          goto LABEL_71;
        }

        v25 = [(TAVisitSnapshot *)self lruUtAdvertisementCache];
        v82 = [(TAVisitSnapshot *)v7 lruUtAdvertisementCache];
        v83 = v25;
        if (v25 != v82)
        {
          v26 = [(TAVisitSnapshot *)self lruUtAdvertisementCache];
          v80 = [(TAVisitSnapshot *)v7 lruUtAdvertisementCache];
          v81 = v26;
          if (![v26 isEqual:?])
          {
            v9 = 0;
            v27 = v89;
            v29 = v82;
            v28 = v83;
LABEL_68:

LABEL_69:
            v22 = v88;
            v14 = v95;
            v23 = v27;
            if (v27 == v88)
            {
              goto LABEL_71;
            }

            goto LABEL_70;
          }
        }

        v30 = [(TAVisitSnapshot *)self uniqueUTBufferSizeCap];
        if (v30 != [(TAVisitSnapshot *)v7 uniqueUTBufferSizeCap]|| (v31 = [(TAVisitSnapshot *)self displayEventBufferSizeCap], v31 != [(TAVisitSnapshot *)v7 displayEventBufferSizeCap]))
        {
          v9 = 0;
          goto LABEL_67;
        }

        v32 = [(TAVisitSnapshot *)self displayEvents];
        v78 = [(TAVisitSnapshot *)v7 displayEvents];
        v79 = v32;
        if (v32 != v78)
        {
          v33 = [(TAVisitSnapshot *)self displayEvents];
          v34 = [(TAVisitSnapshot *)v7 displayEvents];
          v75 = v33;
          v35 = v33;
          v36 = v34;
          if (![v35 isEqual:v34])
          {
            v9 = 0;
            v40 = v78;
            goto LABEL_64;
          }

          v73 = v36;
        }

        v37 = [(TAVisitSnapshot *)self exitIntervalBeginning];
        v76 = [(TAVisitSnapshot *)v7 exitIntervalBeginning];
        v77 = v37;
        if (v37 != v76)
        {
          v38 = [(TAVisitSnapshot *)self exitIntervalBeginning];
          v70 = [(TAVisitSnapshot *)v7 exitIntervalBeginning];
          v71 = v38;
          if (![v38 isEqual:?])
          {
            v9 = 0;
            v39 = v76;
LABEL_62:

LABEL_63:
            v40 = v78;
            v36 = v73;
            if (v79 == v78)
            {

              goto LABEL_66;
            }

LABEL_64:
            v55 = v40;

LABEL_66:
LABEL_67:
            v29 = v82;
            v28 = v83;
            v27 = v89;
            if (v83 == v82)
            {
              goto LABEL_69;
            }

            goto LABEL_68;
          }
        }

        v41 = [(TAVisitSnapshot *)self displayOnCalculator];
        v72 = [(TAVisitSnapshot *)v7 displayOnCalculator];
        v74 = v41;
        if (v41 != v72)
        {
          v42 = [(TAVisitSnapshot *)self displayOnCalculator];
          v66 = [(TAVisitSnapshot *)v7 displayOnCalculator];
          v67 = v42;
          if (![v42 isEqual:?])
          {
            v9 = 0;
            v43 = v72;
LABEL_60:

LABEL_61:
            v39 = v76;
            if (v77 == v76)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          }
        }

        v44 = [(TAVisitSnapshot *)self distanceToClosestLoi];
        v68 = [(TAVisitSnapshot *)v7 distanceToClosestLoi];
        v69 = v44;
        if (v44 != v68)
        {
          v45 = [(TAVisitSnapshot *)self distanceToClosestLoi];
          v62 = [(TAVisitSnapshot *)v7 distanceToClosestLoi];
          v63 = v45;
          if (![v45 isEqual:?])
          {
            v9 = 0;
            v46 = v68;
LABEL_58:

LABEL_59:
            v43 = v72;
            if (v74 == v72)
            {
              goto LABEL_61;
            }

            goto LABEL_60;
          }
        }

        v47 = [(TAVisitSnapshot *)self entryDurationOfConsiderationClosed];
        v64 = [(TAVisitSnapshot *)v7 entryDurationOfConsiderationClosed];
        v65 = v47;
        if (v47 != v64)
        {
          v48 = [(TAVisitSnapshot *)self entryDurationOfConsiderationClosed];
          v49 = [(TAVisitSnapshot *)v7 entryDurationOfConsiderationClosed];
          v61 = v48;
          v50 = v48;
          v51 = v49;
          if (![v50 isEqual:v49])
          {
            v9 = 0;
            goto LABEL_55;
          }

          v60 = v51;
        }

        v52 = [(TAVisitSnapshot *)self maxNSigmaBetweenLastLocationAndVisit];
        if (v52 == [(TAVisitSnapshot *)v7 maxNSigmaBetweenLastLocationAndVisit])
        {
          v53 = [(TAVisitSnapshot *)self lastLoiTypeUpdateTime];
          v58 = [(TAVisitSnapshot *)v7 lastLoiTypeUpdateTime];
          v59 = v53;
          if (v53 == v58)
          {

            v9 = 1;
          }

          else
          {
            v57 = [(TAVisitSnapshot *)self lastLoiTypeUpdateTime];
            v54 = [(TAVisitSnapshot *)v7 lastLoiTypeUpdateTime];
            v9 = [v57 isEqual:v54];
          }
        }

        else
        {
          v9 = 0;
        }

        v51 = v60;
        if (v65 == v64)
        {

LABEL_57:
          v46 = v68;
          if (v69 == v68)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        }

LABEL_55:

        goto LABEL_57;
      }

      v9 = 0;
      v14 = v95;
      if (v12 == v13)
      {
LABEL_75:

        if (v10 == v11)
        {
LABEL_77:

          goto LABEL_78;
        }

LABEL_76:

        goto LABEL_77;
      }

LABEL_74:

      goto LABEL_75;
    }

    v9 = 0;
  }

LABEL_79:

  return v9;
}

- (TAVisitSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = TAVisitSnapshot;
  v5 = [(TAVisitSnapshot *)&v43 init];
  if (v5)
  {
    v5->_isClosed = [v4 decodeBoolForKey:@"Closed"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RepVisit"];
    representativeVisit = v5->_representativeVisit;
    v5->_representativeVisit = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LatestLoc"];
    latestLocation = v5->_latestLocation;
    v5->_latestLocation = v8;

    v5->_loiType = [v4 decodeIntegerForKey:@"LOI"];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"LatestAdv"];
    latestUtAdvertisements = v5->_latestUtAdvertisements;
    v5->_latestUtAdvertisements = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"EarliestAdv"];
    earliestUtAdvertisements = v5->_earliestUtAdvertisements;
    v5->_earliestUtAdvertisements = v20;

    v5->_latestLocationInsideVisit = [v4 decodeBoolForKey:@"LatestLocInside"];
    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"LRUAdv"];
    lruUtAdvertisementCache = v5->_lruUtAdvertisementCache;
    v5->_lruUtAdvertisementCache = v25;

    v5->_uniqueUTBufferSizeCap = [v4 decodeIntegerForKey:@"numUnique"];
    v5->_displayEventBufferSizeCap = [v4 decodeIntegerForKey:@"numDisplay"];
    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"displayEvents"];
    displayEvents = v5->_displayEvents;
    v5->_displayEvents = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"exitBegin"];
    exitIntervalBeginning = v5->_exitIntervalBeginning;
    v5->_exitIntervalBeginning = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayOnCalc"];
    displayOnCalculator = v5->_displayOnCalculator;
    v5->_displayOnCalculator = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distanceToLOI"];
    distanceToClosestLoi = v5->_distanceToClosestLoi;
    v5->_distanceToClosestLoi = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entryDuration"];
    entryDurationOfConsiderationClosed = v5->_entryDurationOfConsiderationClosed;
    v5->_entryDurationOfConsiderationClosed = v38;

    v5->_maxNSigmaBetweenLastLocationAndVisit = [v4 decodeIntegerForKey:@"maxNSigma"];
    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LoiUpdateTime"];
    lastLoiTypeUpdateTime = v5->_lastLoiTypeUpdateTime;
    v5->_lastLoiTypeUpdateTime = v40;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  isClosed = self->_isClosed;
  v5 = a3;
  [v5 encodeBool:isClosed forKey:@"Closed"];
  [v5 encodeObject:self->_representativeVisit forKey:@"RepVisit"];
  [v5 encodeObject:self->_latestLocation forKey:@"LatestLoc"];
  [v5 encodeInteger:self->_loiType forKey:@"LOI"];
  [v5 encodeObject:self->_latestUtAdvertisements forKey:@"LatestAdv"];
  [v5 encodeObject:self->_earliestUtAdvertisements forKey:@"EarliestAdv"];
  [v5 encodeBool:self->_latestLocationInsideVisit forKey:@"LatestLocInside"];
  [v5 encodeObject:self->_lruUtAdvertisementCache forKey:@"LRUAdv"];
  [v5 encodeInteger:self->_uniqueUTBufferSizeCap forKey:@"numUnique"];
  [v5 encodeInteger:self->_displayEventBufferSizeCap forKey:@"numDisplay"];
  [v5 encodeObject:self->_displayEvents forKey:@"displayEvents"];
  [v5 encodeObject:self->_exitIntervalBeginning forKey:@"exitBegin"];
  [v5 encodeObject:self->_displayOnCalculator forKey:@"displayOnCalc"];
  [v5 encodeObject:self->_distanceToClosestLoi forKey:@"distanceToLOI"];
  [v5 encodeObject:self->_entryDurationOfConsiderationClosed forKey:@"entryDuration"];
  [v5 encodeInteger:self->_maxNSigmaBetweenLastLocationAndVisit forKey:@"maxNSigma"];
  [v5 encodeObject:self->_lastLoiTypeUpdateTime forKey:@"LoiUpdateTime"];
}

- (void)setRepresentativeVisit:(id *)a3 .cold.1(void *a1, void *a2, id *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 description];
  v7 = [*a3 description];
  v9 = 138740227;
  v10 = v6;
  v11 = 2117;
  v12 = v7;
  _os_log_debug_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "#TAVisitSnapshot _setRepresentativeVisit with input %{sensitive}@ and adjusted representativeVisit to %{sensitive}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setDepartureVisit:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138739971;
  v4 = a1;
  _os_log_error_impl(&dword_26F2E2000, a2, OS_LOG_TYPE_ERROR, "#TAVisitSnapshot dropping departure POI b/c there is no departure date: %{sensitive}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setDepartureVisit:(void *)a1 .cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 departureDate];
  v5 = [a2 arrivalDate];
  v7 = 138478083;
  v8 = v4;
  v9 = 2113;
  v10 = v5;
  _os_log_error_impl(&dword_26F2E2000, v3, OS_LOG_TYPE_ERROR, "#TAVisitSnapshot dropping departure POI b/c the departure date %{private}@ is earlier than the arrival date %{private}@ of the current snapshot", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setDepartureVisit:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138739971;
  v4 = a1;
  _os_log_error_impl(&dword_26F2E2000, a2, OS_LOG_TYPE_ERROR, "#TAVisitSnapshot departure POI populated already; drop TACLVisit %{sensitive}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateLatestLocation:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (*(a1 + 9))
  {
    v2 = "is";
  }

  else
  {
    v2 = "not";
  }

  v4 = 136446210;
  v5 = v2;
  _os_log_debug_impl(&dword_26F2E2000, a2, OS_LOG_TYPE_DEBUG, "#TAVisitSnapshot latestLocation %{public}s inside visit", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateLoiType:(id *)a3 .cold.1(void *a1, void *a2, id *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 type];
  v7 = [a2 date];
  v8 = [v7 getDateString];
  v9 = [*a3 getDateString];
  v11 = 134284035;
  v12 = v6;
  v13 = 2113;
  v14 = v8;
  v15 = 2113;
  v16 = v9;
  _os_log_debug_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "#TAVisitSnapshot skip updating LOI type %{private}lu as it was too old: incoming loi date %{private}@, current loiType update date, %{private}@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

@end