@interface TAVisitSnapshot
- (BOOL)isEqual:(id)equal;
- (BOOL)setDepartureVisit:(id)visit;
- (TAVisitSnapshot)initWithCoder:(id)coder;
- (TAVisitSnapshot)initWithTACLVisit:(id)visit uniqueUTBufferCap:(unint64_t)cap displayEventBufferSizeCap:(unint64_t)sizeCap maxNSigmaBetweenLastLocationAndVisit:(unint64_t)andVisit;
- (double)getDisplayOnTimeUntilEndDate:(id)date;
- (double)getDurationOfVisitEntryConsideredWithDisplayOnBudget:(double)budget;
- (double)getDurationOfVisitExitConsideredWithDisplayOnBudget:(double)budget;
- (id)getArrivalDelay;
- (id)getDepartureDelay;
- (id)getEntryAdvertisementsWithDisplayOnBudget:(double)budget;
- (id)getEntryIntervalEvaluatedUntil;
- (id)getExitAdvertisementsWithDisplayOnBudget:(double)budget;
- (id)getLocationRepresentingSnapshot;
- (id)mostRecentAdvertisementDate;
- (unint64_t)evaluateSnapshotQualityWithMinDwellDuration:(double)duration minDisplayOnDuration:(double)onDuration;
- (void)addScanState:(id)state;
- (void)addSystemState:(id)state;
- (void)addUTAdvertisement:(id)advertisement;
- (void)calculateExitIntervalWithDisplayOnBudget:(double)budget;
- (void)closeSnapshotCleanup;
- (void)encodeWithCoder:(id)coder;
- (void)pruneDisplayEvents;
- (void)setRepresentativeVisit:(id)visit;
- (void)updateEntryIntervalWithDisplayOnBudget:(double)budget evaluateToEnd:(BOOL)end;
- (void)updateLatestLocation:(id)location;
- (void)updateLoiType:(id)type;
@end

@implementation TAVisitSnapshot

- (TAVisitSnapshot)initWithTACLVisit:(id)visit uniqueUTBufferCap:(unint64_t)cap displayEventBufferSizeCap:(unint64_t)sizeCap maxNSigmaBetweenLastLocationAndVisit:(unint64_t)andVisit
{
  visitCopy = visit;
  v37.receiver = self;
  v37.super_class = TAVisitSnapshot;
  v11 = [(TAVisitSnapshot *)&v37 init];
  v12 = v11;
  if (v11)
  {
    v11->_isClosed = 0;
    v13 = [visitCopy copy];
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

    v12->_uniqueUTBufferSizeCap = cap;
    v12->_displayEventBufferSizeCap = sizeCap;
    v23 = [TALocationLite alloc];
    getDate = [visitCopy getDate];
    [visitCopy coordinate];
    v26 = v25;
    [visitCopy coordinate];
    v28 = v27;
    [visitCopy horizontalAccuracy];
    v30 = [(TALocationLite *)v23 initWithTimestamp:getDate latitude:v26 longitude:v28 horizontalAccuracy:v29];
    latestLocation = v12->_latestLocation;
    v12->_latestLocation = v30;

    v12->_loiType = 0;
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    lastLoiTypeUpdateTime = v12->_lastLoiTypeUpdateTime;
    v12->_lastLoiTypeUpdateTime = distantPast;

    distanceToClosestLoi = v12->_distanceToClosestLoi;
    v12->_distanceToClosestLoi = 0;

    v12->_latestLocationInsideVisit = 1;
    entryDurationOfConsiderationClosed = v12->_entryDurationOfConsiderationClosed;
    v12->_entryDurationOfConsiderationClosed = 0;

    v12->_maxNSigmaBetweenLastLocationAndVisit = andVisit;
  }

  return v12;
}

- (void)setRepresentativeVisit:(id)visit
{
  visitCopy = visit;
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
    arrivalDate = [(TACLVisit *)representativeVisit arrivalDate];
    departureDate = [visitCopy departureDate];
    v9 = [arrivalDate laterDate:departureDate];

    v10 = [TACLVisit alloc];
    [visitCopy coordinate];
    v12 = v11;
    v14 = v13;
    [visitCopy horizontalAccuracy];
    v16 = v15;
    arrivalDate2 = [(TACLVisit *)*p_representativeVisit arrivalDate];
    detectionDate = [visitCopy detectionDate];
    v19 = -[TACLVisit initWithCoordinate:horizontalAccuracy:arrivalDate:departureDate:detectionDate:confidence:](v10, "initWithCoordinate:horizontalAccuracy:arrivalDate:departureDate:detectionDate:confidence:", arrivalDate2, v9, detectionDate, [visitCopy confidence], v12, v14, v16);
    v20 = *p_representativeVisit;
    *p_representativeVisit = v19;

    v21 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [(TAVisitSnapshot *)v21 setRepresentativeVisit:visitCopy, p_representativeVisit];
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

- (void)addScanState:(id)state
{
  v21 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if ([stateCopy state] == 1)
  {
    v5 = MEMORY[0x277CCA970];
    arrivalDate = [(TACLVisit *)self->_representativeVisit arrivalDate];
    departureDate = [(TACLVisit *)self->_representativeVisit departureDate];
    v8 = [v5 createIntervalSafelyWithStartDate:arrivalDate endDate:departureDate];

    getDate = [stateCopy getDate];
    LOBYTE(departureDate) = [v8 containsDate:getDate];

    if (departureDate)
    {
      displayOnCalculator = self->_displayOnCalculator;
      getDate2 = [stateCopy getDate];
      v12 = getDate2;
      if (!displayOnCalculator)
      {
        entryDurationOfConsiderationClosed = self->_entryDurationOfConsiderationClosed;
        self->_entryDurationOfConsiderationClosed = getDate2;

        goto LABEL_9;
      }

      [(TADisplayOnCalculator *)displayOnCalculator completeDisplayOnWithEndDate:getDate2];
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
      v12 = [stateCopy description];
      v17 = 136380931;
      uTF8String = [v12 UTF8String];
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&dword_26F2E2000, v14, OS_LOG_TYPE_DEFAULT, "#TAVisitSnapshot Scan completed: %{private}s not in valid time range %{public}@", &v17, 0x16u);
    }

    goto LABEL_9;
  }

LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addUTAdvertisement:(id)advertisement
{
  v28 = *MEMORY[0x277D85DE8];
  advertisementCopy = advertisement;
  v5 = MEMORY[0x277CCA970];
  arrivalDate = [(TACLVisit *)self->_representativeVisit arrivalDate];
  departureDate = [(TACLVisit *)self->_representativeVisit departureDate];
  v8 = [v5 createIntervalSafelyWithStartDate:arrivalDate endDate:departureDate];

  getDate = [advertisementCopy getDate];
  LOBYTE(departureDate) = [v8 containsDate:getDate];

  if (departureDate)
  {
    if (self->_latestLocationInsideVisit)
    {
      address = [advertisementCopy address];
      if ([(NSMutableOrderedSet *)self->_lruUtAdvertisementCache containsObject:address])
      {
        [(NSMutableOrderedSet *)self->_lruUtAdvertisementCache removeObject:address];
      }

      while ([(NSMutableOrderedSet *)self->_lruUtAdvertisementCache count]>= self->_uniqueUTBufferSizeCap && [(NSMutableOrderedSet *)self->_lruUtAdvertisementCache count])
      {
        firstObject = [(NSMutableOrderedSet *)self->_lruUtAdvertisementCache firstObject];
        [(NSMutableDictionary *)self->_latestUtAdvertisements removeObjectForKey:firstObject];
        [(NSMutableDictionary *)self->_earliestUtAdvertisements removeObjectForKey:firstObject];
        [(NSMutableOrderedSet *)self->_lruUtAdvertisementCache removeObject:firstObject];
      }

      [(NSMutableOrderedSet *)self->_lruUtAdvertisementCache addObject:address];
      v12 = [(NSMutableDictionary *)self->_latestUtAdvertisements objectForKey:address];

      latestUtAdvertisements = self->_latestUtAdvertisements;
      if (v12)
      {
        v14 = [(NSMutableDictionary *)latestUtAdvertisements objectForKey:address];
        if ([v14 isPosh])
        {
          isPosh = [advertisementCopy isPosh];

          if ((isPosh & 1) == 0)
          {
LABEL_20:
            v22 = [(NSMutableDictionary *)self->_earliestUtAdvertisements objectForKey:address];

            if (!v22)
            {
              [(NSMutableDictionary *)self->_earliestUtAdvertisements setObject:advertisementCopy forKey:address];
            }

            goto LABEL_22;
          }
        }

        else
        {
        }

        latestUtAdvertisements = self->_latestUtAdvertisements;
      }

      [(NSMutableDictionary *)latestUtAdvertisements setObject:advertisementCopy forKey:address];
      goto LABEL_20;
    }

    v21 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v21;
      address = [advertisementCopy description];
      v24 = 136380675;
      uTF8String = [address UTF8String];
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
      address = [advertisementCopy description];
      v24 = 136380931;
      uTF8String = [address UTF8String];
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

- (void)addSystemState:(id)state
{
  v27 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if ([stateCopy systemStateType] == 2)
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
    departureDate = [(TACLVisit *)self->_representativeVisit departureDate];
    v8 = [v5 createIntervalSafelyWithStartDate:v6 endDate:departureDate];

    getDate = [stateCopy getDate];
    LOBYTE(departureDate) = [v8 containsDate:getDate];

    if ((departureDate & 1) == 0)
    {
      v19 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v19;
        v23 = 67240450;
        isOn = [stateCopy isOn];
        v25 = 2114;
        v26 = v8;
        _os_log_impl(&dword_26F2E2000, v20, OS_LOG_TYPE_DEFAULT, "#TAVisitSnapshot System display state isOn: %{public}d not in valid time range %{public}@", &v23, 0x12u);
      }

      goto LABEL_16;
    }

    lastObject = [(NSMutableArray *)self->_displayEvents lastObject];
    v11 = lastObject;
    if (lastObject)
    {
      getDate2 = [lastObject getDate];
      getDate3 = [stateCopy getDate];
      v14 = [getDate2 compare:getDate3];

      if (v14 == 1)
      {
        v15 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          isOn2 = [stateCopy isOn];
          getDate4 = [v11 getDate];
          v23 = 67240450;
          isOn = isOn2;
          v25 = 2114;
          v26 = getDate4;
          _os_log_impl(&dword_26F2E2000, v16, OS_LOG_TYPE_DEFAULT, "#TAVisitSnapshot System display state isOn: %{public}d received out of order, after %{public}@", &v23, 0x12u);
        }

        goto LABEL_15;
      }

      isOn3 = [v11 isOn];
      if (isOn3 == [stateCopy isOn])
      {
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }
    }

    [(NSMutableArray *)self->_displayEvents addObject:stateCopy];
    if ([(NSMutableArray *)self->_displayEvents count]> self->_displayEventBufferSizeCap)
    {
      [(TAVisitSnapshot *)self pruneDisplayEvents];
    }

    goto LABEL_15;
  }

LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)setDepartureVisit:(id)visit
{
  visitCopy = visit;
  if ([(TAVisitSnapshot *)self isClosed])
  {
    v5 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAVisitSnapshot *)visitCopy setDepartureVisit:v5];
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  if (![visitCopy hasDepartureDate])
  {
    v7 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAVisitSnapshot *)visitCopy setDepartureVisit:v7];
    }

    goto LABEL_11;
  }

  if (![visitCopy isTemporalOrderSensical])
  {
    v8 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAVisitSnapshot *)v8 setDepartureVisit:visitCopy];
    }

    goto LABEL_11;
  }

  [(TAVisitSnapshot *)self setRepresentativeVisit:visitCopy];
  [(TAVisitSnapshot *)self closeSnapshotCleanup];
  v6 = 1;
  self->_isClosed = 1;
LABEL_12:

  return v6;
}

- (void)closeSnapshotCleanup
{
  v25 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_earliestUtAdvertisements allKeys];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_earliestUtAdvertisements objectForKeyedSubscript:v8];
        getDate = [v9 getDate];
        departureDate = [(TACLVisit *)self->_representativeVisit departureDate];
        v12 = [getDate compare:departureDate];

        if (v12 == 1)
        {
          [(NSMutableDictionary *)self->_latestUtAdvertisements removeObjectForKey:v8];
          [(NSMutableDictionary *)self->_earliestUtAdvertisements removeObjectForKey:v8];
          [(NSMutableOrderedSet *)self->_lruUtAdvertisementCache removeObject:v8];
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
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
      getDate2 = [v15 getDate];
      departureDate2 = [(TACLVisit *)self->_representativeVisit departureDate];
      v18 = [getDate2 compare:departureDate2];

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

- (void)calculateExitIntervalWithDisplayOnBudget:(double)budget
{
  if ([(TAVisitSnapshot *)self isClosed])
  {
    if (!self->_exitIntervalBeginning)
    {
      arrivalDate = [(TACLVisit *)self->_representativeVisit arrivalDate];
      exitIntervalBeginning = self->_exitIntervalBeginning;
      self->_exitIntervalBeginning = arrivalDate;

      if ([(NSMutableArray *)self->_displayEvents count])
      {
        departureDate = [(TACLVisit *)self->_representativeVisit departureDate];
        v8 = [(NSMutableArray *)self->_displayEvents count];
        if (budget <= 0.0 || v8 < 1)
        {
          v16 = departureDate;
        }

        else
        {
          v9 = v8 & 0x7FFFFFFF;
          while (1)
          {
            v10 = [(NSMutableArray *)self->_displayEvents objectAtIndexedSubscript:v9 - 1];
            if ([v10 isOn])
            {
              getDate = [v10 getDate];
              [departureDate timeIntervalSinceDate:getDate];
              v13 = v12;

              if (v13 > 0.0)
              {
                if (v13 > budget)
                {
                  v14 = [departureDate dateByAddingTimeInterval:-budget];
                  v15 = self->_exitIntervalBeginning;
                  self->_exitIntervalBeginning = v14;
                }

                budget = budget - v13;
              }
            }

            getDate2 = [v10 getDate];

            if (budget <= 0.0)
            {
              break;
            }

            v16 = getDate2;
            departureDate = getDate2;
            if (v9-- <= 1)
            {
              goto LABEL_20;
            }
          }

          v16 = getDate2;
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

- (double)getDisplayOnTimeUntilEndDate:(id)date
{
  dateCopy = date;
  v5 = [TADisplayOnCalculator alloc];
  arrivalDate = [(TACLVisit *)self->_representativeVisit arrivalDate];
  v7 = [(TADisplayOnCalculator *)v5 initWithStartTime:arrivalDate];

  displayEvents = self->_displayEvents;
  allValues = [(NSMutableDictionary *)self->_latestUtAdvertisements allValues];
  [(TADisplayOnCalculator *)v7 calculateDisplayOnWithEvents:displayEvents advertisements:allValues endDate:dateCopy];
  v11 = v10;

  return v11;
}

- (void)updateEntryIntervalWithDisplayOnBudget:(double)budget evaluateToEnd:(BOOL)end
{
  endCopy = end;
  if (!self->_displayOnCalculator)
  {
    v7 = [TADisplayOnCalculator alloc];
    arrivalDate = [(TACLVisit *)self->_representativeVisit arrivalDate];
    v9 = [(TADisplayOnCalculator *)v7 initWithStartTime:arrivalDate budget:budget];
    displayOnCalculator = self->_displayOnCalculator;
    self->_displayOnCalculator = v9;
  }

  entryDurationOfConsiderationClosed = self->_entryDurationOfConsiderationClosed;
  if (entryDurationOfConsiderationClosed)
  {
    departureDate = entryDurationOfConsiderationClosed;
LABEL_5:
    mostRecentAdvertisementDate = departureDate;
LABEL_6:
    v14 = self->_displayOnCalculator;
    displayEvents = self->_displayEvents;
    allValues = [(NSMutableDictionary *)self->_latestUtAdvertisements allValues];
    [(TADisplayOnCalculator *)v14 calculateDisplayOnWithEvents:displayEvents advertisements:allValues endDate:mostRecentAdvertisementDate];

    if (self->_entryDurationOfConsiderationClosed)
    {
      [(TADisplayOnCalculator *)self->_displayOnCalculator completeDisplayOnWithEndDate:?];
    }

    goto LABEL_8;
  }

  if (!endCopy)
  {
    mostRecentAdvertisementDate = [(TAVisitSnapshot *)self mostRecentAdvertisementDate];
    evaluatedUntil = [(TADisplayOnCalculator *)self->_displayOnCalculator evaluatedUntil];
    v18 = [mostRecentAdvertisementDate compare:evaluatedUntil];

    if (v18 != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if ([(TAVisitSnapshot *)self isClosed])
  {
    departureDate = [(TACLVisit *)self->_representativeVisit departureDate];
    goto LABEL_5;
  }

  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
  {
    [TAVisitSnapshot updateEntryIntervalWithDisplayOnBudget:evaluateToEnd:];
  }

  mostRecentAdvertisementDate = 0;
LABEL_8:
}

- (id)getEntryAdvertisementsWithDisplayOnBudget:(double)budget
{
  [(TAVisitSnapshot *)self updateEntryIntervalWithDisplayOnBudget:0 evaluateToEnd:budget];
  evaluatedUntil = [(TADisplayOnCalculator *)self->_displayOnCalculator evaluatedUntil];

  if (evaluatedUntil)
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
    dictionary = v7;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
  }

  return dictionary;
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

- (id)getExitAdvertisementsWithDisplayOnBudget:(double)budget
{
  if (self->_exitIntervalBeginning || ([(TAVisitSnapshot *)self calculateExitIntervalWithDisplayOnBudget:budget], self->_exitIntervalBeginning))
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

- (double)getDurationOfVisitExitConsideredWithDisplayOnBudget:(double)budget
{
  if ([(TAVisitSnapshot *)self isClosed])
  {
    [(TAVisitSnapshot *)self calculateExitIntervalWithDisplayOnBudget:budget];
    if (self->_exitIntervalBeginning)
    {
      departureDate = [(TACLVisit *)self->_representativeVisit departureDate];
      [departureDate timeIntervalSinceDate:self->_exitIntervalBeginning];
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

- (double)getDurationOfVisitEntryConsideredWithDisplayOnBudget:(double)budget
{
  if ([(TAVisitSnapshot *)self isClosed])
  {
    [(TAVisitSnapshot *)self updateEntryIntervalWithDisplayOnBudget:1 evaluateToEnd:budget];
    displayOnCalculator = self->_displayOnCalculator;
    if (displayOnCalculator)
    {
      evaluatedUntil = [(TADisplayOnCalculator *)displayOnCalculator evaluatedUntil];
      arrivalDate = [(TACLVisit *)self->_representativeVisit arrivalDate];
      [evaluatedUntil timeIntervalSinceDate:arrivalDate];
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
  lastObject = [(NSMutableOrderedSet *)self->_lruUtAdvertisementCache lastObject];
  v4 = [(NSMutableDictionary *)self->_latestUtAdvertisements objectForKeyedSubscript:lastObject];
  getDate = [v4 getDate];

  return getDate;
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

- (void)updateLatestLocation:(id)location
{
  v4 = [location copy];
  latestLocation = self->_latestLocation;
  self->_latestLocation = v4;

  if (self->_latestLocation)
  {
    v6 = [TALocationLite alloc];
    getDate = [(TACLVisit *)self->_representativeVisit getDate];
    [(TACLVisit *)self->_representativeVisit coordinate];
    v9 = v8;
    [(TACLVisit *)self->_representativeVisit coordinate];
    v11 = v10;
    [(TACLVisit *)self->_representativeVisit horizontalAccuracy];
    v13 = [(TALocationLite *)v6 initWithTimestamp:getDate latitude:v9 longitude:v11 horizontalAccuracy:v12];

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

- (void)updateLoiType:(id)type
{
  v48 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = [TALocationLite alloc];
  getDate = [(TACLVisit *)self->_representativeVisit getDate];
  [(TACLVisit *)self->_representativeVisit coordinate];
  v8 = v7;
  [(TACLVisit *)self->_representativeVisit coordinate];
  v10 = v9;
  [(TACLVisit *)self->_representativeVisit horizontalAccuracy];
  v12 = [(TALocationLite *)v5 initWithTimestamp:getDate latitude:v8 longitude:v10 horizontalAccuracy:v11];

  v13 = [TALocationLite alloc];
  getDate2 = [typeCopy getDate];
  [typeCopy latitude];
  v16 = v15;
  [typeCopy longitude];
  v18 = v17;
  [typeCopy horizontalAccuracy];
  v20 = [(TALocationLite *)v13 initWithTimestamp:getDate2 latitude:v16 longitude:v18 horizontalAccuracy:v19];

  [(TALocationLite *)v12 distanceFromLocation:v20];
  v22 = v21;
  if (v21 < 250.0)
  {
    p_lastLoiTypeUpdateTime = &self->_lastLoiTypeUpdateTime;
    lastLoiTypeUpdateTime = self->_lastLoiTypeUpdateTime;
    date = [typeCopy date];
    if ([(NSDate *)lastLoiTypeUpdateTime compare:date]!= NSOrderedAscending)
    {
      v26 = *p_lastLoiTypeUpdateTime;
      date2 = [typeCopy date];
      if ([v26 compare:date2])
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
            [(TAVisitSnapshot *)v28 updateLoiType:typeCopy, p_lastLoiTypeUpdateTime];
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
      v36 = TALocationOfInterestTypeToString([typeCopy type]);
      v42 = 138477827;
      v43 = *&v36;
      _os_log_impl(&dword_26F2E2000, v35, OS_LOG_TYPE_DEFAULT, "#TAVisitSnapshot update visit snapshot with LOI type %{private}@", &v42, 0xCu);
    }

    self->_loiType = [typeCopy type];
    date3 = [typeCopy date];
    v38 = self->_lastLoiTypeUpdateTime;
    self->_lastLoiTypeUpdateTime = date3;

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
    type = [typeCopy type];
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

  detectionDate = [(TACLVisit *)representativeVisit detectionDate];
  if (!detectionDate)
  {
    goto LABEL_5;
  }

  v5 = detectionDate;
  arrivalDate = [(TACLVisit *)self->_representativeVisit arrivalDate];

  if (!arrivalDate)
  {
    goto LABEL_5;
  }

  arrivalDate2 = [(TACLVisit *)self->_representativeVisit arrivalDate];
  detectionDate2 = [(TACLVisit *)self->_representativeVisit detectionDate];
  v9 = [arrivalDate2 compare:detectionDate2];

  if (v9 != 1)
  {
    v12 = MEMORY[0x277CCA970];
    arrivalDate3 = [(TACLVisit *)self->_representativeVisit arrivalDate];
    detectionDate3 = [(TACLVisit *)self->_representativeVisit detectionDate];
    v10 = [v12 createIntervalSafelyWithStartDate:arrivalDate3 endDate:detectionDate3];
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

  detectionDate = [(TACLVisit *)representativeVisit detectionDate];
  if (!detectionDate)
  {
    goto LABEL_5;
  }

  v5 = detectionDate;
  departureDate = [(TACLVisit *)self->_representativeVisit departureDate];

  if (!departureDate)
  {
    goto LABEL_5;
  }

  departureDate2 = [(TACLVisit *)self->_representativeVisit departureDate];
  detectionDate2 = [(TACLVisit *)self->_representativeVisit detectionDate];
  v9 = [departureDate2 compare:detectionDate2];

  if (v9 != 1)
  {
    v12 = MEMORY[0x277CCA970];
    departureDate3 = [(TACLVisit *)self->_representativeVisit departureDate];
    detectionDate3 = [(TACLVisit *)self->_representativeVisit detectionDate];
    v10 = [v12 createIntervalSafelyWithStartDate:departureDate3 endDate:detectionDate3];
  }

  else
  {
LABEL_5:
    v10 = 0;
  }

  return v10;
}

- (unint64_t)evaluateSnapshotQualityWithMinDwellDuration:(double)duration minDisplayOnDuration:(double)onDuration
{
  if ([(TAVisitSnapshot *)self isClosed])
  {
    departureDate = [(TACLVisit *)self->_representativeVisit departureDate];
    arrivalDate = [(TACLVisit *)self->_representativeVisit arrivalDate];
    [departureDate timeIntervalSinceDate:arrivalDate];
    v10 = v9;

    if (v10 >= duration)
    {
      departureDate2 = [(TACLVisit *)self->_representativeVisit departureDate];
      [(TAVisitSnapshot *)self getDisplayOnTimeUntilEndDate:departureDate2];
      v14 = v13;

      if (v14 >= onDuration)
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
  hasDepartureDate = [(TACLVisit *)self->_representativeVisit hasDepartureDate];
  representativeVisit = self->_representativeVisit;
  if (hasDepartureDate)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      isClosed = [(TAVisitSnapshot *)self isClosed];
      if (isClosed != [(TAVisitSnapshot *)v7 isClosed])
      {
        v9 = 0;
LABEL_78:

        goto LABEL_79;
      }

      representativeVisit = [(TAVisitSnapshot *)self representativeVisit];
      representativeVisit2 = [(TAVisitSnapshot *)v7 representativeVisit];
      if (representativeVisit != representativeVisit2)
      {
        representativeVisit3 = [(TAVisitSnapshot *)self representativeVisit];
        representativeVisit4 = [(TAVisitSnapshot *)v7 representativeVisit];
        if (![representativeVisit3 isEqual:representativeVisit4])
        {
          v9 = 0;
          goto LABEL_76;
        }
      }

      latestLocation = [(TAVisitSnapshot *)self latestLocation];
      latestLocation2 = [(TAVisitSnapshot *)v7 latestLocation];
      if (latestLocation != latestLocation2)
      {
        latestLocation3 = [(TAVisitSnapshot *)self latestLocation];
        latestLocation4 = [(TAVisitSnapshot *)v7 latestLocation];
        if (![latestLocation3 isEqual:?])
        {
          v9 = 0;
          goto LABEL_74;
        }

        v95 = latestLocation3;
      }

      loiType = [(TAVisitSnapshot *)self loiType];
      if (loiType == [(TAVisitSnapshot *)v7 loiType])
      {
        latestUtAdvertisements = [(TAVisitSnapshot *)self latestUtAdvertisements];
        [(TAVisitSnapshot *)v7 latestUtAdvertisements];
        v93 = representativeVisit4;
        v94 = latestUtAdvertisements;
        v92 = v91 = latestLocation2;
        v90 = latestLocation;
        if (latestUtAdvertisements != v92)
        {
          latestUtAdvertisements2 = [(TAVisitSnapshot *)self latestUtAdvertisements];
          latestUtAdvertisements3 = [(TAVisitSnapshot *)v7 latestUtAdvertisements];
          v87 = latestUtAdvertisements2;
          if (![latestUtAdvertisements2 isEqual:?])
          {
            v9 = 0;
            v18 = latestUtAdvertisements;
            v19 = v92;
            latestLocation3 = v95;
LABEL_72:

LABEL_73:
            latestLocation = v90;
            latestLocation2 = v91;
            representativeVisit4 = v93;
            if (v90 == v91)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          }
        }

        earliestUtAdvertisements = [(TAVisitSnapshot *)self earliestUtAdvertisements];
        earliestUtAdvertisements2 = [(TAVisitSnapshot *)v7 earliestUtAdvertisements];
        v89 = earliestUtAdvertisements;
        if (earliestUtAdvertisements != earliestUtAdvertisements2)
        {
          earliestUtAdvertisements3 = [(TAVisitSnapshot *)self earliestUtAdvertisements];
          earliestUtAdvertisements4 = [(TAVisitSnapshot *)v7 earliestUtAdvertisements];
          v85 = earliestUtAdvertisements3;
          if (![earliestUtAdvertisements3 isEqual:?])
          {
            v9 = 0;
            v22 = earliestUtAdvertisements2;
            v23 = v89;
            latestLocation3 = v95;
            goto LABEL_70;
          }
        }

        latestLocationInsideVisit = [(TAVisitSnapshot *)self latestLocationInsideVisit];
        if (latestLocationInsideVisit != [(TAVisitSnapshot *)v7 latestLocationInsideVisit])
        {
          v9 = 0;
          v22 = earliestUtAdvertisements2;
          v23 = v89;
          latestLocation3 = v95;
          if (v89 == earliestUtAdvertisements2)
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

        lruUtAdvertisementCache = [(TAVisitSnapshot *)self lruUtAdvertisementCache];
        lruUtAdvertisementCache2 = [(TAVisitSnapshot *)v7 lruUtAdvertisementCache];
        v83 = lruUtAdvertisementCache;
        if (lruUtAdvertisementCache != lruUtAdvertisementCache2)
        {
          lruUtAdvertisementCache3 = [(TAVisitSnapshot *)self lruUtAdvertisementCache];
          lruUtAdvertisementCache4 = [(TAVisitSnapshot *)v7 lruUtAdvertisementCache];
          v81 = lruUtAdvertisementCache3;
          if (![lruUtAdvertisementCache3 isEqual:?])
          {
            v9 = 0;
            v27 = v89;
            v29 = lruUtAdvertisementCache2;
            v28 = v83;
LABEL_68:

LABEL_69:
            v22 = earliestUtAdvertisements2;
            latestLocation3 = v95;
            v23 = v27;
            if (v27 == earliestUtAdvertisements2)
            {
              goto LABEL_71;
            }

            goto LABEL_70;
          }
        }

        uniqueUTBufferSizeCap = [(TAVisitSnapshot *)self uniqueUTBufferSizeCap];
        if (uniqueUTBufferSizeCap != [(TAVisitSnapshot *)v7 uniqueUTBufferSizeCap]|| (v31 = [(TAVisitSnapshot *)self displayEventBufferSizeCap], v31 != [(TAVisitSnapshot *)v7 displayEventBufferSizeCap]))
        {
          v9 = 0;
          goto LABEL_67;
        }

        displayEvents = [(TAVisitSnapshot *)self displayEvents];
        displayEvents2 = [(TAVisitSnapshot *)v7 displayEvents];
        v79 = displayEvents;
        if (displayEvents != displayEvents2)
        {
          displayEvents3 = [(TAVisitSnapshot *)self displayEvents];
          displayEvents4 = [(TAVisitSnapshot *)v7 displayEvents];
          v75 = displayEvents3;
          v35 = displayEvents3;
          v36 = displayEvents4;
          if (![v35 isEqual:displayEvents4])
          {
            v9 = 0;
            v40 = displayEvents2;
            goto LABEL_64;
          }

          v73 = v36;
        }

        exitIntervalBeginning = [(TAVisitSnapshot *)self exitIntervalBeginning];
        exitIntervalBeginning2 = [(TAVisitSnapshot *)v7 exitIntervalBeginning];
        v77 = exitIntervalBeginning;
        if (exitIntervalBeginning != exitIntervalBeginning2)
        {
          exitIntervalBeginning3 = [(TAVisitSnapshot *)self exitIntervalBeginning];
          exitIntervalBeginning4 = [(TAVisitSnapshot *)v7 exitIntervalBeginning];
          v71 = exitIntervalBeginning3;
          if (![exitIntervalBeginning3 isEqual:?])
          {
            v9 = 0;
            v39 = exitIntervalBeginning2;
LABEL_62:

LABEL_63:
            v40 = displayEvents2;
            v36 = v73;
            if (v79 == displayEvents2)
            {

              goto LABEL_66;
            }

LABEL_64:
            v55 = v40;

LABEL_66:
LABEL_67:
            v29 = lruUtAdvertisementCache2;
            v28 = v83;
            v27 = v89;
            if (v83 == lruUtAdvertisementCache2)
            {
              goto LABEL_69;
            }

            goto LABEL_68;
          }
        }

        displayOnCalculator = [(TAVisitSnapshot *)self displayOnCalculator];
        displayOnCalculator2 = [(TAVisitSnapshot *)v7 displayOnCalculator];
        v74 = displayOnCalculator;
        if (displayOnCalculator != displayOnCalculator2)
        {
          displayOnCalculator3 = [(TAVisitSnapshot *)self displayOnCalculator];
          displayOnCalculator4 = [(TAVisitSnapshot *)v7 displayOnCalculator];
          v67 = displayOnCalculator3;
          if (![displayOnCalculator3 isEqual:?])
          {
            v9 = 0;
            v43 = displayOnCalculator2;
LABEL_60:

LABEL_61:
            v39 = exitIntervalBeginning2;
            if (v77 == exitIntervalBeginning2)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          }
        }

        distanceToClosestLoi = [(TAVisitSnapshot *)self distanceToClosestLoi];
        distanceToClosestLoi2 = [(TAVisitSnapshot *)v7 distanceToClosestLoi];
        v69 = distanceToClosestLoi;
        if (distanceToClosestLoi != distanceToClosestLoi2)
        {
          distanceToClosestLoi3 = [(TAVisitSnapshot *)self distanceToClosestLoi];
          distanceToClosestLoi4 = [(TAVisitSnapshot *)v7 distanceToClosestLoi];
          v63 = distanceToClosestLoi3;
          if (![distanceToClosestLoi3 isEqual:?])
          {
            v9 = 0;
            v46 = distanceToClosestLoi2;
LABEL_58:

LABEL_59:
            v43 = displayOnCalculator2;
            if (v74 == displayOnCalculator2)
            {
              goto LABEL_61;
            }

            goto LABEL_60;
          }
        }

        entryDurationOfConsiderationClosed = [(TAVisitSnapshot *)self entryDurationOfConsiderationClosed];
        entryDurationOfConsiderationClosed2 = [(TAVisitSnapshot *)v7 entryDurationOfConsiderationClosed];
        v65 = entryDurationOfConsiderationClosed;
        if (entryDurationOfConsiderationClosed != entryDurationOfConsiderationClosed2)
        {
          entryDurationOfConsiderationClosed3 = [(TAVisitSnapshot *)self entryDurationOfConsiderationClosed];
          entryDurationOfConsiderationClosed4 = [(TAVisitSnapshot *)v7 entryDurationOfConsiderationClosed];
          v61 = entryDurationOfConsiderationClosed3;
          v50 = entryDurationOfConsiderationClosed3;
          v51 = entryDurationOfConsiderationClosed4;
          if (![v50 isEqual:entryDurationOfConsiderationClosed4])
          {
            v9 = 0;
            goto LABEL_55;
          }

          v60 = v51;
        }

        maxNSigmaBetweenLastLocationAndVisit = [(TAVisitSnapshot *)self maxNSigmaBetweenLastLocationAndVisit];
        if (maxNSigmaBetweenLastLocationAndVisit == [(TAVisitSnapshot *)v7 maxNSigmaBetweenLastLocationAndVisit])
        {
          lastLoiTypeUpdateTime = [(TAVisitSnapshot *)self lastLoiTypeUpdateTime];
          lastLoiTypeUpdateTime2 = [(TAVisitSnapshot *)v7 lastLoiTypeUpdateTime];
          v59 = lastLoiTypeUpdateTime;
          if (lastLoiTypeUpdateTime == lastLoiTypeUpdateTime2)
          {

            v9 = 1;
          }

          else
          {
            lastLoiTypeUpdateTime3 = [(TAVisitSnapshot *)self lastLoiTypeUpdateTime];
            lastLoiTypeUpdateTime4 = [(TAVisitSnapshot *)v7 lastLoiTypeUpdateTime];
            v9 = [lastLoiTypeUpdateTime3 isEqual:lastLoiTypeUpdateTime4];
          }
        }

        else
        {
          v9 = 0;
        }

        v51 = v60;
        if (v65 == entryDurationOfConsiderationClosed2)
        {

LABEL_57:
          v46 = distanceToClosestLoi2;
          if (v69 == distanceToClosestLoi2)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        }

LABEL_55:

        goto LABEL_57;
      }

      v9 = 0;
      latestLocation3 = v95;
      if (latestLocation == latestLocation2)
      {
LABEL_75:

        if (representativeVisit == representativeVisit2)
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

- (TAVisitSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = TAVisitSnapshot;
  v5 = [(TAVisitSnapshot *)&v43 init];
  if (v5)
  {
    v5->_isClosed = [coderCopy decodeBoolForKey:@"Closed"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RepVisit"];
    representativeVisit = v5->_representativeVisit;
    v5->_representativeVisit = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LatestLoc"];
    latestLocation = v5->_latestLocation;
    v5->_latestLocation = v8;

    v5->_loiType = [coderCopy decodeIntegerForKey:@"LOI"];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"LatestAdv"];
    latestUtAdvertisements = v5->_latestUtAdvertisements;
    v5->_latestUtAdvertisements = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"EarliestAdv"];
    earliestUtAdvertisements = v5->_earliestUtAdvertisements;
    v5->_earliestUtAdvertisements = v20;

    v5->_latestLocationInsideVisit = [coderCopy decodeBoolForKey:@"LatestLocInside"];
    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"LRUAdv"];
    lruUtAdvertisementCache = v5->_lruUtAdvertisementCache;
    v5->_lruUtAdvertisementCache = v25;

    v5->_uniqueUTBufferSizeCap = [coderCopy decodeIntegerForKey:@"numUnique"];
    v5->_displayEventBufferSizeCap = [coderCopy decodeIntegerForKey:@"numDisplay"];
    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"displayEvents"];
    displayEvents = v5->_displayEvents;
    v5->_displayEvents = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"exitBegin"];
    exitIntervalBeginning = v5->_exitIntervalBeginning;
    v5->_exitIntervalBeginning = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayOnCalc"];
    displayOnCalculator = v5->_displayOnCalculator;
    v5->_displayOnCalculator = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distanceToLOI"];
    distanceToClosestLoi = v5->_distanceToClosestLoi;
    v5->_distanceToClosestLoi = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entryDuration"];
    entryDurationOfConsiderationClosed = v5->_entryDurationOfConsiderationClosed;
    v5->_entryDurationOfConsiderationClosed = v38;

    v5->_maxNSigmaBetweenLastLocationAndVisit = [coderCopy decodeIntegerForKey:@"maxNSigma"];
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LoiUpdateTime"];
    lastLoiTypeUpdateTime = v5->_lastLoiTypeUpdateTime;
    v5->_lastLoiTypeUpdateTime = v40;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  isClosed = self->_isClosed;
  coderCopy = coder;
  [coderCopy encodeBool:isClosed forKey:@"Closed"];
  [coderCopy encodeObject:self->_representativeVisit forKey:@"RepVisit"];
  [coderCopy encodeObject:self->_latestLocation forKey:@"LatestLoc"];
  [coderCopy encodeInteger:self->_loiType forKey:@"LOI"];
  [coderCopy encodeObject:self->_latestUtAdvertisements forKey:@"LatestAdv"];
  [coderCopy encodeObject:self->_earliestUtAdvertisements forKey:@"EarliestAdv"];
  [coderCopy encodeBool:self->_latestLocationInsideVisit forKey:@"LatestLocInside"];
  [coderCopy encodeObject:self->_lruUtAdvertisementCache forKey:@"LRUAdv"];
  [coderCopy encodeInteger:self->_uniqueUTBufferSizeCap forKey:@"numUnique"];
  [coderCopy encodeInteger:self->_displayEventBufferSizeCap forKey:@"numDisplay"];
  [coderCopy encodeObject:self->_displayEvents forKey:@"displayEvents"];
  [coderCopy encodeObject:self->_exitIntervalBeginning forKey:@"exitBegin"];
  [coderCopy encodeObject:self->_displayOnCalculator forKey:@"displayOnCalc"];
  [coderCopy encodeObject:self->_distanceToClosestLoi forKey:@"distanceToLOI"];
  [coderCopy encodeObject:self->_entryDurationOfConsiderationClosed forKey:@"entryDuration"];
  [coderCopy encodeInteger:self->_maxNSigmaBetweenLastLocationAndVisit forKey:@"maxNSigma"];
  [coderCopy encodeObject:self->_lastLoiTypeUpdateTime forKey:@"LoiUpdateTime"];
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