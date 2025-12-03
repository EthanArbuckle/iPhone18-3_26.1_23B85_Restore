@interface PLBatteryUIResponseTypeChargingStateIntervals
- (_PLTimeIntervalRange)range;
- (id)constructIntervalTuplesFromBattEntries:(id)entries lastBattEntry:(id)entry startOfRange:(id)range endOfRange:(id)ofRange;
- (id)constructIntervalTuplesFromEntries:(id)entries startOfRange:(id)range endOfRange:(id)ofRange allowOverflow:(BOOL)overflow;
- (id)constructSlowChargingIntervals:(id)intervals;
- (id)differenceBetweenSetAndIntersectingSet:(id)set intervalSetB:(id)b;
- (id)enforceGraphIntervalPrecedence:(id)precedence;
- (id)filterIntervals:(id)intervals withThreshold:(double)threshold;
- (id)getApplicableSlowChargingIntervalsGivenECIntervals:(id)intervals slowChargingIntervals:(id)chargingIntervals;
- (id)getBattUIEntriesWithKey:(id)key inRange:(_PLTimeIntervalRange)range;
- (id)getChargingStateIntervals:(id)intervals forGraphIntervalType:(signed __int16)type;
- (id)intersectionOfTwoSetsWithMergeThreshold:(int)threshold intervalSetA:(id)a intervalSetB:(id)b;
- (id)mapChargingStateIntervalsToGraphIntervals:(id)intervals;
- (id)mergeAllChargingIntervals:(id)intervals;
- (id)mergeIntervals:(id)intervals withTolerance:(double)tolerance;
- (id)result;
- (id)snapIntervals:(id)intervals;
- (id)unionBetweenSetAndIntersectingSet:(id)set intervalSetB:(id)b;
- (int)filterThreshold:(signed __int16)threshold;
- (void)configure:(id)configure;
- (void)getChargingStateIntervalsDictWithRange:(_PLTimeIntervalRange)range addToDailyArrays:(BOOL)arrays;
- (void)organizeStateIntervalsWithRange:(_PLTimeIntervalRange)range lastBattUIEntry:(id)entry chargingIntervalsDict:(id)dict addToDailyArrays:(BOOL)arrays;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeChargingStateIntervals

- (void)configure:(id)configure
{
  v42 = *MEMORY[0x277D85DE8];
  configureCopy = configure;
  v5 = [configureCopy objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [configureCopy objectForKeyedSubscript:@"end"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self setStart:v11];

  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self setEnd:v12];

  v13 = PLLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    start = [(PLBatteryUIResponseTypeChargingStateIntervals *)self start];
    v15 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self end];
    v38 = 138412546;
    v39 = start;
    v40 = 2112;
    v41 = v15;
    _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_INFO, "start=%@, end=%@", &v38, 0x16u);
  }

  start2 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self start];
  v17 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self end];
  [start2 timeIntervalSince1970];
  v19 = v18;
  [v17 timeIntervalSince1970];
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self setRange:v19, v20 - v19];

  [(PLBatteryUIResponseTypeChargingStateIntervals *)self setUseBattUIforEC:1];
  v21 = [configureCopy objectForKeyedSubscript:@"bucket"];
  [v21 doubleValue];
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self setBucketSize:?];

  [(PLBatteryUIResponseTypeChargingStateIntervals *)self setShouldSnapInterval:_os_feature_enabled_impl()];
  v22 = PLLogCommon();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    start3 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self start];
    v24 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self end];
    v38 = 138412546;
    v39 = start3;
    v40 = 2112;
    v41 = v24;
    _os_log_impl(&dword_25EE51000, v22, OS_LOG_TYPE_INFO, "after system to monotonic conversion: start=%@, end=%@", &v38, 0x16u);
  }

  [(PLBatteryUIResponseTypeChargingStateIntervals *)self range];
  v26 = v25;
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
  v28 = (v26 / v27);
  if (v28 < 2)
  {
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self range];
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self getChargingStateIntervalsDictWithRange:0 addToDailyArrays:?];
  }

  else
  {
    v29 = objc_opt_new();
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self setDailyChargingStateIntervalsDict:v29];

    v30 = objc_opt_new();
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self setDailyLastBattEntry:v30];

    v31 = 0.0;
    do
    {
      [(PLBatteryUIResponseTypeChargingStateIntervals *)self range];
      v33 = v32;
      [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
      v35 = v33 + v31 * v34;
      [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
      [(PLBatteryUIResponseTypeChargingStateIntervals *)self getChargingStateIntervalsDictWithRange:1 addToDailyArrays:v35, v36];
      v31 = v31 + 1.0;
      --v28;
    }

    while (v28);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)getChargingStateIntervalsDictWithRange:(_PLTimeIntervalRange)range addToDailyArrays:(BOOL)arrays
{
  arraysCopy = arrays;
  length = range.length;
  location = range.location;
  v47[2] = *MEMORY[0x277D85DE8];
  v41 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BatteryUI"];
  if ([(PLBatteryUIResponseTypeChargingStateIntervals *)self useBattUIforEC])
  {
    v7 = objc_alloc(MEMORY[0x277D3F260]);
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:location];
    v9 = [v7 initWithKey:@"timestamp" withValue:v8 withComparisonOperation:5];

    v10 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Level" withValue:&unk_287145430 withComparisonOperation:3];
    responderService = [(PLBatteryUIResponseTypeChargingStateIntervals *)self responderService];
    storage = [responderService storage];
    v47[0] = v9;
    v47[1] = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    v14 = [storage lastEntryForKey:v41 withComparisons:v13 isSingleton:0];
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self setLastBattEntry:v14];
  }

  v40 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5D8] andName:@"Charging"];
  v15 = objc_opt_new();
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self setChargingStateIntervalsDict:v15];

  v16 = 1;
  do
  {
    useBattUIforEC = [(PLBatteryUIResponseTypeChargingStateIntervals *)self useBattUIforEC];
    if (v16 == 1 && useBattUIforEC)
    {
      v18 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self getBattUIEntriesWithKey:v41 inRange:location, length];
      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v46 = v18;
        _os_log_impl(&dword_25EE51000, v19, OS_LOG_TYPE_INFO, "getBattUIEntriesWithKey=%@", buf, 0xCu);
      }

      chargingStateIntervalsDict = [(PLBatteryUIResponseTypeChargingStateIntervals *)self chargingStateIntervalsDict];
      chargingStateIntervalsDict2 = [MEMORY[0x277CCABB0] numberWithShort:1];
      [chargingStateIntervalsDict setObject:v18 forKeyedSubscript:chargingStateIntervalsDict2];
      goto LABEL_16;
    }

    v22 = MEMORY[0x277CCACA8];
    v23 = [MEMORY[0x277CCABB0] numberWithShort:v16];
    v18 = [v22 stringWithFormat:@"((timestamp BETWEEN %f AND %f) OR (%@ BETWEEN %f AND %f)) AND %@=%@", *&location, location + length, @"timestampEnd", *&location, location + length, @"intervalType", v23];

    v24 = PLLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v46 = v18;
      _os_log_impl(&dword_25EE51000, v24, OS_LOG_TYPE_INFO, "where=%@", buf, 0xCu);
    }

    responderService2 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self responderService];
    storage2 = [responderService2 storage];
    v42 = v18;
    v43[0] = @"where";
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
    v43[1] = @"order by";
    v44[0] = v27;
    v44[1] = &unk_287147C08;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
    chargingStateIntervalsDict = [storage2 entriesForKey:v40 withProperties:v28];

    v29 = PLLogCommon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v46 = chargingStateIntervalsDict;
      _os_log_impl(&dword_25EE51000, v29, OS_LOG_TYPE_INFO, "chargingStateEntries: %@", buf, 0xCu);
    }

    if (chargingStateIntervalsDict && [chargingStateIntervalsDict count])
    {
      chargingStateIntervalsDict2 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self chargingStateIntervalsDict];
      v30 = [MEMORY[0x277CCABB0] numberWithShort:v16];
      [chargingStateIntervalsDict2 setObject:chargingStateIntervalsDict forKeyedSubscript:v30];

LABEL_16:
    }

    v31 = v16++;
  }

  while (v31 < 0xA);
  v32 = PLLogCommon();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    chargingStateIntervalsDict3 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self chargingStateIntervalsDict];
    *buf = 138412290;
    v46 = chargingStateIntervalsDict3;
    _os_log_impl(&dword_25EE51000, v32, OS_LOG_TYPE_INFO, "charging state intervals dict: %@", buf, 0xCu);
  }

  if (arraysCopy)
  {
    chargingStateIntervalsDict4 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self chargingStateIntervalsDict];

    if (chargingStateIntervalsDict4)
    {
      dailyChargingStateIntervalsDict = [(PLBatteryUIResponseTypeChargingStateIntervals *)self dailyChargingStateIntervalsDict];
      chargingStateIntervalsDict5 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self chargingStateIntervalsDict];
      v37 = [chargingStateIntervalsDict5 mutableCopy];
      [dailyChargingStateIntervalsDict addObject:v37];
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (id)getBattUIEntriesWithKey:(id)key inRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v42 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  responderService = [(PLBatteryUIResponseTypeChargingStateIntervals *)self responderService];
  storage = [responderService storage];
  v10 = [storage entriesForKey:keyCopy inTimeRange:0 withFilters:{location, length}];

  lastObject = [v10 lastObject];
  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = lastObject;
    _os_log_impl(&dword_25EE51000, v12, OS_LOG_TYPE_INFO, "earliestEntry=%@", buf, 0xCu);
  }

  if (lastObject)
  {
    v13 = [lastObject objectForKeyedSubscript:@"IsCharging"];
    bOOLValue = [v13 BOOLValue];

    if (bOOLValue)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"timestamp < %f AND %@ = %d", *&location, @"IsCharging", 0];
      responderService2 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self responderService];
      storage2 = [responderService2 storage];
      v37 = v15;
      v38[0] = @"where";
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
      v39[0] = v18;
      v39[1] = &unk_287147C30;
      v38[1] = @"order by";
      v38[2] = @"limit";
      v39[2] = &unk_287145448;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
      v20 = [storage2 entriesForKey:keyCopy withProperties:v19];

      firstObject = [v20 firstObject];
      v22 = PLLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v41 = firstObject;
        _os_log_impl(&dword_25EE51000, v22, OS_LOG_TYPE_INFO, "latestNonConnectedEntryBeforeRange=%@", buf, 0xCu);
      }

      if (firstObject)
      {
        v23 = [firstObject objectForKeyedSubscript:@"timestamp"];
        [v23 doubleValue];
        v25 = v24;

        v36 = v15;
        v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v25];
        responderService3 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self responderService];
        storage3 = [responderService3 storage];
        v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:location + length];
        [v26 timeIntervalSince1970];
        v31 = v30;
        [v29 timeIntervalSince1970];
        v33 = [storage3 entriesForKey:keyCopy inTimeRange:0 withFilters:{v31, v32 - v31}];

        v10 = v33;
        v15 = v36;
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)run
{
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self range];
  v4 = v3;
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
  v6 = (v4 / v5);
  if (v6 < 2)
  {
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self range];
    v20 = v19;
    v22 = v21;
    lastBattEntry = [(PLBatteryUIResponseTypeChargingStateIntervals *)self lastBattEntry];
    chargingStateIntervalsDict = [(PLBatteryUIResponseTypeChargingStateIntervals *)self chargingStateIntervalsDict];
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self organizeStateIntervalsWithRange:lastBattEntry lastBattUIEntry:chargingStateIntervalsDict chargingIntervalsDict:0 addToDailyArrays:v20, v22];
  }

  else
  {
    v7 = objc_opt_new();
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self setResultArray:v7];

    for (i = 0; i != v6; ++i)
    {
      dailyChargingStateIntervalsDict = [(PLBatteryUIResponseTypeChargingStateIntervals *)self dailyChargingStateIntervalsDict];
      v10 = [dailyChargingStateIntervalsDict count];

      if (v10 <= i)
      {
        break;
      }

      [(PLBatteryUIResponseTypeChargingStateIntervals *)self range];
      v12 = v11;
      [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
      v14 = v12 + i * v13;
      [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
      v16 = v15;
      dailyChargingStateIntervalsDict2 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self dailyChargingStateIntervalsDict];
      v18 = [dailyChargingStateIntervalsDict2 objectAtIndexedSubscript:i];
      [(PLBatteryUIResponseTypeChargingStateIntervals *)self organizeStateIntervalsWithRange:0 lastBattUIEntry:v18 chargingIntervalsDict:1 addToDailyArrays:v14, v16];
    }
  }
}

- (void)organizeStateIntervalsWithRange:(_PLTimeIntervalRange)range lastBattUIEntry:(id)entry chargingIntervalsDict:(id)dict addToDailyArrays:(BOOL)arrays
{
  arraysCopy = arrays;
  length = range.length;
  location = range.location;
  v35 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  dictCopy = dict;
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self range];
  v14 = v13;
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __136__PLBatteryUIResponseTypeChargingStateIntervals_organizeStateIntervalsWithRange_lastBattUIEntry_chargingIntervalsDict_addToDailyArrays___block_invoke;
  v26 = &unk_279A5BAF8;
  selfCopy = self;
  v32 = (v14 / v15);
  v16 = dictCopy;
  v30 = location;
  v31 = length;
  v28 = v16;
  v29 = entryCopy;
  v17 = entryCopy;
  [v16 enumerateKeysAndObjectsUsingBlock:&v23];
  selfCopy = [(PLBatteryUIResponseTypeChargingStateIntervals *)self mapChargingStateIntervalsToGraphIntervals:v16, v23, v24, v25, v26, selfCopy];
  v19 = PLLogCommon();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = selfCopy;
    _os_log_impl(&dword_25EE51000, v19, OS_LOG_TYPE_INFO, "graph charging state intervals: %@", buf, 0xCu);
  }

  if (arraysCopy)
  {
    resultArray = [(PLBatteryUIResponseTypeChargingStateIntervals *)self resultArray];
    v21 = [selfCopy copy];
    [resultArray addObject:v21];
  }

  else
  {
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self setResultDict:selfCopy];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __136__PLBatteryUIResponseTypeChargingStateIntervals_organizeStateIntervalsWithRange_lastBattUIEntry_chargingIntervalsDict_addToDailyArrays___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) useBattUIforEC] && objc_msgSend(v5, "intValue") == 1)
  {
    v7 = *(a1 + 32);
    if (*(a1 + 72) >= 2)
    {
      v8 = [v6 lastObject];
      v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(a1 + 56)];
      v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(a1 + 56) + *(a1 + 64)];
      v11 = [v7 constructIntervalTuplesFromBattEntries:v6 lastBattEntry:v8 startOfRange:v9 endOfRange:v10];
      [*(a1 + 40) setObject:v11 forKeyedSubscript:v5];

      goto LABEL_11;
    }

    v15 = *(a1 + 48);
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(a1 + 56)];
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(a1 + 56) + *(a1 + 64)];
    v14 = [v7 constructIntervalTuplesFromBattEntries:v6 lastBattEntry:v15 startOfRange:v8 endOfRange:v9];
  }

  else
  {
    v12 = [v5 intValue];
    v13 = *(a1 + 32);
    v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(a1 + 56)];
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(a1 + 56) + *(a1 + 64)];
    if (v12 == 9)
    {
      [v13 constructIntervalTuplesFromEntries:v6 startOfRange:v8 endOfRange:v9 allowOverflow:1];
    }

    else
    {
      [v13 constructIntervalTuplesFromEntries:v6 startOfRange:v8 endOfRange:v9];
    }
    v14 = ;
  }

  v10 = v14;
  [*(a1 + 40) setObject:v14 forKeyedSubscript:v5];
LABEL_11:

  v16 = PLLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [*(a1 + 40) objectForKeyedSubscript:v5];
    v19 = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v17;
    _os_log_impl(&dword_25EE51000, v16, OS_LOG_TYPE_INFO, "after converting PLEntry to interval tuples for chargingIntervalType=%@, intervals=%@", &v19, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)result
{
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self range];
  v4 = v3;
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
  if ((v4 / v5) < 2)
  {
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self resultDict];
  }

  else
  {
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self resultArray];
  }
  v6 = ;

  return v6;
}

- (_PLTimeIntervalRange)range
{
  objc_copyStruct(v4, &self->_range, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t __82__PLBatteryUIResponseTypeChargingStateIntervals_IntervalOperation__sortIntervals___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectAtIndex:0];
  v6 = [v4 objectAtIndex:0];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)mergeIntervals:(id)intervals withTolerance:(double)tolerance
{
  intervalsCopy = intervals;
  if ([intervalsCopy count])
  {
    v7 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self sortIntervals:intervalsCopy];
    v8 = objc_opt_new();
    firstObject = [v7 firstObject];
    [v8 addObject:firstObject];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __97__PLBatteryUIResponseTypeChargingStateIntervals_IntervalOperation__mergeIntervals_withTolerance___block_invoke;
    v12[3] = &unk_279A5C028;
    v10 = v8;
    v13 = v10;
    toleranceCopy = tolerance;
    [v7 enumerateObjectsUsingBlock:v12];
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

void __97__PLBatteryUIResponseTypeChargingStateIntervals_IntervalOperation__mergeIntervals_withTolerance___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v17 = v5;
    v6 = [*(a1 + 32) lastObject];
    v7 = [v17 objectAtIndexedSubscript:0];
    v8 = [v7 intValue] - *(a1 + 40);
    v9 = [v6 objectAtIndexedSubscript:1];
    v10 = [v9 intValue];

    if (v8 <= v10)
    {
      v11 = [v17 objectAtIndexedSubscript:1];
      v12 = [v11 intValue];
      v13 = [v6 objectAtIndexedSubscript:1];
      v14 = [v13 intValue];

      if (v12 > v14)
      {
        v15 = [v6 mutableCopy];
        v16 = [v17 objectAtIndexedSubscript:1];
        [v15 setObject:v16 atIndexedSubscript:1];

        [*(a1 + 32) removeLastObject];
        [*(a1 + 32) addObject:v15];
      }
    }

    else
    {
      [*(a1 + 32) addObject:v17];
    }

    v5 = v17;
  }
}

- (id)filterIntervals:(id)intervals withThreshold:(double)threshold
{
  intervalsCopy = intervals;
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __98__PLBatteryUIResponseTypeChargingStateIntervals_IntervalOperation__filterIntervals_withThreshold___block_invoke;
  v9[3] = &unk_279A5C050;
  thresholdCopy = threshold;
  v7 = v6;
  v10 = v7;
  [intervalsCopy enumerateObjectsUsingBlock:v9];

  return v7;
}

void __98__PLBatteryUIResponseTypeChargingStateIntervals_IntervalOperation__filterIntervals_withThreshold___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectAtIndexedSubscript:1];
  v4 = [v3 intValue];
  v5 = [v7 objectAtIndexedSubscript:0];
  v6 = (v4 - [v5 intValue]);

  if (*(a1 + 40) <= v6)
  {
    [*(a1 + 32) addObject:v7];
  }
}

- (id)intersectionOfTwoSetsWithMergeThreshold:(int)threshold intervalSetA:(id)a intervalSetB:(id)b
{
  v59[2] = *MEMORY[0x277D85DE8];
  aCopy = a;
  bCopy = b;
  v53 = objc_opt_new();
  v55 = [aCopy count];
  v56 = [bCopy count];
  if (v55 && v56)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v57 = v11;
      v58 = v10;
      v12 = [aCopy objectAtIndexedSubscript:v9];
      v13 = [v12 objectAtIndexedSubscript:0];
      intValue = [v13 intValue];

      v15 = [bCopy objectAtIndexedSubscript:v8];
      v16 = [v15 objectAtIndexedSubscript:0];
      intValue2 = [v16 intValue];

      if (intValue <= intValue2)
      {
        v18 = intValue2;
      }

      else
      {
        v18 = intValue;
      }

      v19 = [aCopy objectAtIndexedSubscript:v9];
      v20 = [v19 objectAtIndexedSubscript:1];
      intValue3 = [v20 intValue];

      v22 = [bCopy objectAtIndexedSubscript:v8];
      v23 = [v22 objectAtIndexedSubscript:1];
      intValue4 = [v23 intValue];

      if (intValue3 >= intValue4)
      {
        v25 = intValue4;
      }

      else
      {
        v25 = intValue3;
      }

      if (v18 < v25)
      {
        v26 = [aCopy objectAtIndexedSubscript:v9];
        v27 = [v26 objectAtIndexedSubscript:0];
        intValue5 = [v27 intValue];

        v29 = [bCopy objectAtIndexedSubscript:v8];
        v30 = [v29 objectAtIndexedSubscript:0];
        intValue6 = [v30 intValue];

        if (intValue5 >= intValue6)
        {
          v32 = intValue6;
        }

        else
        {
          v32 = intValue5;
        }

        if (v18 - threshold >= v32)
        {
          v32 = v18;
        }

        v54 = v32;
        v33 = [aCopy objectAtIndexedSubscript:v9];
        v34 = [v33 objectAtIndexedSubscript:1];
        intValue7 = [v34 intValue];

        v36 = [bCopy objectAtIndexedSubscript:v8];
        v37 = [v36 objectAtIndexedSubscript:1];
        intValue8 = [v37 intValue];

        if (intValue7 <= intValue8)
        {
          v39 = intValue8;
        }

        else
        {
          v39 = intValue7;
        }

        if ((v25 + threshold) <= v39)
        {
          v40 = v25;
        }

        else
        {
          v40 = v39;
        }

        v41 = [MEMORY[0x277CCABB0] numberWithInt:v54];
        v59[0] = v41;
        v42 = [MEMORY[0x277CCABB0] numberWithInt:v40];
        v59[1] = v42;
        v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
        [v53 addObject:v43];
      }

      v44 = [aCopy objectAtIndexedSubscript:v9];
      v45 = [v44 objectAtIndexedSubscript:1];
      intValue9 = [v45 intValue];
      v47 = [bCopy objectAtIndexedSubscript:v8];
      v48 = [v47 objectAtIndexedSubscript:1];
      intValue10 = [v48 intValue];

      if (intValue9 < intValue10)
      {
        v8 = v57;
      }

      else
      {
        v8 = v57 + 1;
      }

      if (intValue9 >= intValue10)
      {
        v9 = v58;
      }

      else
      {
        v9 = v58 + 1;
      }

      if (v55 <= v9)
      {
        break;
      }

      v10 = v9;
      v11 = v8;
    }

    while (v56 > v8);
  }

  v50 = *MEMORY[0x277D85DE8];

  return v53;
}

- (id)differenceBetweenSetAndIntersectingSet:(id)set intervalSetB:(id)b
{
  v28[2] = *MEMORY[0x277D85DE8];
  setCopy = set;
  bCopy = b;
  if ([setCopy count] && objc_msgSend(bCopy, "count"))
  {
    firstObject = [setCopy firstObject];
    v9 = [firstObject objectAtIndexedSubscript:0];

    lastObject = [setCopy lastObject];
    v11 = [lastObject objectAtIndexedSubscript:1];

    v12 = objc_opt_new();
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__1;
    v26 = __Block_byref_object_dispose__1;
    v13 = v9;
    v27 = v13;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __120__PLBatteryUIResponseTypeChargingStateIntervals_IntervalOperation__differenceBetweenSetAndIntersectingSet_intervalSetB___block_invoke;
    v19[3] = &unk_279A5C078;
    v21 = &v22;
    v14 = v12;
    v20 = v14;
    [bCopy enumerateObjectsUsingBlock:v19];
    if (([v23[5] isEqualToNumber:v11] & 1) == 0)
    {
      v28[0] = v23[5];
      v28[1] = v11;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      [v14 addObject:v15];
    }

    v16 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self intersectionOfTwoSets:setCopy intervalSetB:v14];

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v16 = setCopy;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __120__PLBatteryUIResponseTypeChargingStateIntervals_IntervalOperation__differenceBetweenSetAndIntersectingSet_intervalSetB___block_invoke(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = [v3 objectAtIndexedSubscript:0];
  LOBYTE(v4) = [v4 isEqualToNumber:v5];

  if ((v4 & 1) == 0)
  {
    v6 = *(a1 + 32);
    v13[0] = *(*(*(a1 + 40) + 8) + 40);
    v7 = [v3 objectAtIndexedSubscript:0];
    v13[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    [v6 addObject:v8];
  }

  v9 = [v3 objectAtIndexedSubscript:1];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)unionBetweenSetAndIntersectingSet:(id)set intervalSetB:(id)b
{
  v45[2] = *MEMORY[0x277D85DE8];
  setCopy = set;
  bCopy = b;
  v7 = [bCopy count];
  v8 = setCopy;
  if (v7 && (v9 = [setCopy count], v8 = bCopy, v9))
  {
    v10 = objc_opt_new();
    v11 = [setCopy count];
    v42 = [bCopy count];
    if (v11 | v42)
    {
      v12 = 0;
      v13 = 0;
      v43 = 0;
      v44 = 0;
      v40 = v11;
      v41 = setCopy;
      do
      {
        if (v11 == v13)
        {
          v14 = [bCopy objectAtIndexedSubscript:v12];
          ++v44;
        }

        else
        {
          v15 = [setCopy objectAtIndexedSubscript:v13];
          v14 = v15;
          if (v42 == v12)
          {
            ++v43;
          }

          else
          {
            v16 = [v15 objectAtIndexedSubscript:0];
            intValue = [v16 intValue];
            v18 = [bCopy objectAtIndexedSubscript:v12];
            v19 = [v18 objectAtIndexedSubscript:0];
            intValue2 = [v19 intValue];

            if (intValue >= intValue2)
            {
              v14 = [bCopy objectAtIndexedSubscript:v12];
              ++v44;
              setCopy = v41;
            }

            else
            {
              setCopy = v41;
              v14 = [v41 objectAtIndexedSubscript:v13];
              ++v43;
            }

            v11 = v40;
          }
        }

        if (![v10 count])
        {
          goto LABEL_15;
        }

        lastObject = [v10 lastObject];
        v22 = [lastObject objectAtIndexedSubscript:1];
        intValue3 = [v22 intValue];
        v24 = [v14 objectAtIndexedSubscript:0];
        intValue4 = [v24 intValue];

        if (intValue3 >= intValue4)
        {
          v26 = [v14 objectAtIndexedSubscript:1];
          intValue5 = [v26 intValue];

          lastObject2 = [v10 lastObject];
          v29 = [lastObject2 objectAtIndexedSubscript:1];
          intValue6 = [v29 intValue];

          if (intValue5 <= intValue6)
          {
            v31 = intValue6;
          }

          else
          {
            v31 = intValue5;
          }

          lastObject3 = [v10 lastObject];
          v33 = [lastObject3 objectAtIndexedSubscript:0];
          intValue7 = [v33 intValue];

          [v10 removeLastObject];
          v35 = [MEMORY[0x277CCABB0] numberWithInt:intValue7];
          v45[0] = v35;
          v36 = [MEMORY[0x277CCABB0] numberWithInt:v31];
          v45[1] = v36;
          v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
          [v10 addObject:v37];
        }

        else
        {
LABEL_15:
          [v10 addObject:v14];
        }

        v13 = v43;
        v12 = v44;
      }

      while (v11 > v43 || v42 > v44);
    }
  }

  else
  {
    v10 = v8;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)constructIntervalTuplesFromEntries:(id)entries startOfRange:(id)range endOfRange:(id)ofRange allowOverflow:(BOOL)overflow
{
  rangeCopy = range;
  ofRangeCopy = ofRange;
  entriesCopy = entries;
  v12 = objc_opt_new();
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __133__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__constructIntervalTuplesFromEntries_startOfRange_endOfRange_allowOverflow___block_invoke;
  v21[3] = &unk_279A5E938;
  v22 = rangeCopy;
  v23 = monotonicDate;
  overflowCopy = overflow;
  v24 = ofRangeCopy;
  v14 = v12;
  v25 = v14;
  v15 = ofRangeCopy;
  v16 = monotonicDate;
  v17 = rangeCopy;
  [entriesCopy enumerateObjectsUsingBlock:v21];

  v18 = v25;
  v19 = v14;

  return v14;
}

void __133__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__constructIntervalTuplesFromEntries_startOfRange_endOfRange_allowOverflow___block_invoke(uint64_t a1, void *a2)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CCABB0];
  v5 = [v3 entryDate];
  [v5 timeIntervalSinceDate:*(a1 + 32)];
  v6 = [v4 numberWithDouble:?];

  v7 = [v3 objectForKeyedSubscript:@"timestampEnd"];

  if (v7)
  {
    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __133__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__constructIntervalTuplesFromEntries_startOfRange_endOfRange_allowOverflow___block_invoke_cold_1(v3);
    }

    v9 = [v3 objectForKeyedSubscript:@"timestampEnd"];
    v10 = MEMORY[0x277CCABB0];
    [v9 timeIntervalSinceDate:*(a1 + 32)];
    v11 = [v10 numberWithDouble:?];
  }

  else
  {
    v12 = MEMORY[0x277CCABB0];
    [*(a1 + 40) timeIntervalSinceDate:*(a1 + 32)];
    v11 = [v12 numberWithDouble:?];
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    v13 = MEMORY[0x277CCABB0];
    v14 = [v6 intValue];
    [*(a1 + 32) timeIntervalSinceDate:*(a1 + 32)];
    if (v15 <= v14)
    {
      v15 = v14;
    }

    v16 = [v13 numberWithDouble:v15];

    v6 = v16;
  }

  v17 = MEMORY[0x277CCABB0];
  v18 = [v6 intValue];
  v19 = [v11 intValue];
  if (v18 <= v19)
  {
    v18 = v19;
  }

  [*(a1 + 48) timeIntervalSinceDate:*(a1 + 32)];
  if (v20 > v18)
  {
    v20 = v18;
  }

  v21 = [v17 numberWithDouble:v20];

  v25[0] = v6;
  v25[1] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v23 = PLLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    __133__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__constructIntervalTuplesFromEntries_startOfRange_endOfRange_allowOverflow___block_invoke_cold_2(v22, v3, v23);
  }

  [*(a1 + 56) addObject:v22];
  v24 = *MEMORY[0x277D85DE8];
}

- (id)constructIntervalTuplesFromBattEntries:(id)entries lastBattEntry:(id)entry startOfRange:(id)range endOfRange:(id)ofRange
{
  v64 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  entryCopy = entry;
  rangeCopy = range;
  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_INFO, "Creating charging intervals", buf, 2u);
  }

  v49 = objc_opt_new();
  if (entryCopy)
  {
    v11 = [entryCopy objectForKeyedSubscript:@"IsCharging"];
    LODWORD(v12) = [v11 BOOLValue];

    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [(PLBatteryUIResponseTypeChargingIntervals *)v12 run];
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeChargingStateIntervals(Utilities) constructIntervalTuplesFromBattEntries:entriesCopy lastBattEntry:? startOfRange:? endOfRange:?];
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  reverseObjectEnumerator = [entriesCopy reverseObjectEnumerator];
  v16 = [reverseObjectEnumerator countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v16)
  {
    v17 = v16;
    v47 = entryCopy;
    v48 = entriesCopy;
    v18 = *v52;
    v19 = 0.0;
    while (1)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v52 != v18)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v21 = *(*(&v51 + 1) + 8 * i);
        v22 = [v21 objectForKeyedSubscript:{@"Level", v47, v48}];
        intValue = [v22 intValue];

        if (intValue < 0)
        {
          v29 = PLLogCommon();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            [(PLBatteryUIResponseTypeChargingIntervals *)v61 run:v21];
          }
        }

        else
        {
          v24 = [v21 objectForKeyedSubscript:@"IsCharging"];
          bOOLValue = [v24 BOOLValue];

          if ((v12 & 1) == bOOLValue)
          {
            continue;
          }

          entryDate = [v21 entryDate];
          [entryDate timeIntervalSinceDate:rangeCopy];
          v28 = v27;

          if (bOOLValue)
          {
            LOBYTE(v12) = 1;
            v19 = v28;
            continue;
          }

          v30 = [MEMORY[0x277CCABB0] numberWithInt:v19];
          v60[0] = v30;
          v31 = [MEMORY[0x277CCABB0] numberWithInt:v28];
          v60[1] = v31;
          v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];

          [v49 addObject:v29];
          v12 = PLLogCommon();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v32 = [v29 objectAtIndexedSubscript:0];
            v33 = [v29 objectAtIndexedSubscript:1];
            *buf = 138412546;
            v57 = v32;
            v58 = 2112;
            v59 = v33;
            _os_log_debug_impl(&dword_25EE51000, v12, OS_LOG_TYPE_DEBUG, "Created charging interval: [%@ %@]", buf, 0x16u);
          }

          LOBYTE(v12) = 0;
        }
      }

      v17 = [reverseObjectEnumerator countByEnumeratingWithState:&v51 objects:v63 count:16];
      if (!v17)
      {

        entryCopy = v47;
        entriesCopy = v48;
        if (v12)
        {
          v34 = v19;
          goto LABEL_31;
        }

        goto LABEL_38;
      }
    }
  }

  if (v12)
  {
    v34 = 0;
LABEL_31:
    firstObject = [entriesCopy firstObject];
    if (firstObject)
    {
      v36 = PLLogCommon();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [(PLBatteryUIResponseTypeChargingIntervals *)v36 run];
      }

      entryDate2 = [firstObject entryDate];
      [entryDate2 timeIntervalSinceDate:rangeCopy];
      v39 = v38;

      v40 = [MEMORY[0x277CCABB0] numberWithInt:v34];
      v55[0] = v40;
      v41 = [MEMORY[0x277CCABB0] numberWithInt:v39];
      v55[1] = v41;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];

      [v49 addObject:v42];
      v43 = PLLogCommon();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIService batteryLevelsAndChargingIntervalsInRange:v42 withDataRange:?];
      }
    }
  }

LABEL_38:
  v44 = PLLogCommon();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v57 = v49;
    _os_log_impl(&dword_25EE51000, v44, OS_LOG_TYPE_INFO, "Charging intervals: %@", buf, 0xCu);
  }

  v45 = *MEMORY[0x277D85DE8];

  return v49;
}

- (id)getApplicableSlowChargingIntervalsGivenECIntervals:(id)intervals slowChargingIntervals:(id)chargingIntervals
{
  intervalsCopy = intervals;
  chargingIntervalsCopy = chargingIntervals;
  v36 = chargingIntervalsCopy;
  if ([intervalsCopy count] && objc_msgSend(chargingIntervalsCopy, "count"))
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__14;
    v42 = __Block_byref_object_dispose__14;
    v43 = objc_opt_new();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __133__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__getApplicableSlowChargingIntervalsGivenECIntervals_slowChargingIntervals___block_invoke;
    v37[3] = &unk_279A5E960;
    v37[4] = &v38;
    [intervalsCopy enumerateObjectsUsingBlock:v37];
    v7 = [intervalsCopy count];
    v35 = [chargingIntervalsCopy count];
    v34 = objc_opt_new();
    if (v7 && v35)
    {
      v8 = 0;
      v32 = 0;
      v33 = 0;
      LODWORD(v9) = 0;
      do
      {
        v9 = v9;
        while (1)
        {
          v10 = [intervalsCopy objectAtIndexedSubscript:{v8, v32}];
          v11 = [v10 objectAtIndexedSubscript:0];
          intValue = [v11 intValue];
          v13 = [intervalsCopy objectAtIndexedSubscript:v8];
          v14 = [v13 objectAtIndexedSubscript:1];
          v15 = intValue - [v14 intValue];

          v16 = v15 >= 0 ? v15 : -v15;
          if (v16 > 0x12B)
          {
            break;
          }

          v8 = ++v9;
          if (v7 <= v9)
          {
            goto LABEL_20;
          }
        }

        v17 = [v39[5] objectAtIndexedSubscript:v8];
        v18 = [v17 objectAtIndexedSubscript:0];
        intValue2 = [v18 intValue];
        v20 = [v36 objectAtIndexedSubscript:v33];
        v21 = [v20 objectAtIndexedSubscript:1];
        intValue3 = [v21 intValue];

        if (intValue2 >= intValue3)
        {
          v32 = (v32 + 1);
        }

        else
        {
          v23 = [v39[5] objectAtIndexedSubscript:v8];
          v24 = [v23 objectAtIndexedSubscript:1];
          intValue4 = [v24 intValue];
          v26 = [v36 objectAtIndexedSubscript:v33];
          v27 = [v26 objectAtIndexedSubscript:0];
          intValue5 = [v27 intValue];

          if (intValue4 > intValue5)
          {
            v29 = [intervalsCopy objectAtIndexedSubscript:v8];
            [v34 addObject:v29];
          }

          LODWORD(v9) = v9 + 1;
        }

        if (v7 <= v9)
        {
          break;
        }

        v8 = v9;
        v33 = v32;
      }

      while (v35 > v32);
    }

LABEL_20:
    _Block_object_dispose(&v38, 8);

    v30 = v34;
  }

  else
  {
    v30 = MEMORY[0x277CBEBF8];
  }

  return v30;
}

void __133__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__getApplicableSlowChargingIntervalsGivenECIntervals_slowChargingIntervals___block_invoke(uint64_t a1, void *a2)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:1];
  v5 = [v4 intValue];

  v6 = [v3 objectAtIndexedSubscript:0];
  v7 = [v6 intValue] + 60.0;

  v8 = v5;
  if (v7 <= v5)
  {
    v8 = v7;
  }

  v9 = v8;
  v10 = [v3 objectAtIndexedSubscript:1];
  v11 = [v10 intValue];

  v12 = [v3 objectAtIndexedSubscript:0];

  v13 = [v12 intValue] + 300.0;
  v14 = v11;
  if (v13 <= v11)
  {
    v14 = v13;
  }

  v15 = v14;
  v16 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  v20[0] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  v20[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v18];
  v19 = *MEMORY[0x277D85DE8];
}

- (id)constructSlowChargingIntervals:(id)intervals
{
  v30 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = intervalsCopy;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "chargingStateIntervals=%@", buf, 0xCu);
  }

  v6 = [intervalsCopy objectForKeyedSubscript:&unk_287146D80];
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v6;
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_INFO, "externalConnectedIntervals=%@", buf, 0xCu);
  }

  v8 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self getChargingStateIntervals:intervalsCopy forGraphIntervalType:2];
  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v8;
    _os_log_impl(&dword_25EE51000, v9, OS_LOG_TYPE_INFO, "allSlowChargingIntervals=%@", buf, 0xCu);
  }

  v10 = _os_feature_enabled_impl();
  v11 = 60.0;
  if (v10)
  {
    v11 = 900.0;
  }

  v12 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self mergeIntervals:v8 withTolerance:v11];
  v13 = PLLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = v12;
    _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_INFO, "allSlowChargingIntervalsMerged=%@", buf, 0xCu);
  }

  array = [MEMORY[0x277CBEA60] array];
  if ([v12 count])
  {
    v15 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self getApplicableSlowChargingIntervalsGivenECIntervals:v6 slowChargingIntervals:v12];

    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v15;
      _os_log_impl(&dword_25EE51000, v16, OS_LOG_TYPE_INFO, "sortedAndFilteredSlowChargingIntervals=%@", buf, 0xCu);
    }
  }

  else
  {
    v15 = array;
  }

  v17 = objc_opt_new();
  if ([v15 count])
  {
    v18 = MEMORY[0x277CCABB0];
    [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
    v19 = [v18 numberWithDouble:?];
    v26[0] = &unk_287146D98;
    v26[1] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v27 = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];

    v22 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self intersectionOfTwoSets:v21 intervalSetB:v15];

    v23 = PLLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v22;
      _os_log_impl(&dword_25EE51000, v23, OS_LOG_TYPE_INFO, "Found slow charging intervals=%@", buf, 0xCu);
    }

    [v17 setObject:v22 forKeyedSubscript:&unk_287146DB0];
  }

  else
  {
    v22 = v15;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)snapIntervals:(id)intervals
{
  v45 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  v38 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = intervalsCopy;
  v4 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v37 = *v40;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v40 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v39 + 1) + 8 * i);
        v8 = MEMORY[0x277CBEAA8];
        v9 = [v7 objectAtIndexedSubscript:0];
        [v9 doubleValue];
        v10 = [v8 dateWithTimeIntervalSince1970:?];
        convertFromMonotonicToSystem = [v10 convertFromMonotonicToSystem];
        [convertFromMonotonicToSystem timeIntervalSince1970];
        v13 = v12;

        v14 = MEMORY[0x277CBEAA8];
        v15 = [v7 objectAtIndexedSubscript:1];
        [v15 doubleValue];
        v16 = [v14 dateWithTimeIntervalSince1970:?];
        convertFromMonotonicToSystem2 = [v16 convertFromMonotonicToSystem];
        [convertFromMonotonicToSystem2 timeIntervalSince1970];
        v19 = v18;

        v20 = v19 % 3600;
        v21 = v13 - (v13 % 3600);
        if (v20 <= 0)
        {
          v22 = v19 - v20;
        }

        else
        {
          v22 = v19 - v20 + 3600.0;
        }

        v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v21];
        convertFromSystemToMonotonic = [v23 convertFromSystemToMonotonic];
        [convertFromSystemToMonotonic timeIntervalSince1970];
        v26 = v25;

        v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v22];
        convertFromSystemToMonotonic2 = [v27 convertFromSystemToMonotonic];
        [convertFromSystemToMonotonic2 timeIntervalSince1970];
        v30 = v29;

        v31 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
        v43[0] = v31;
        v32 = [MEMORY[0x277CCABB0] numberWithDouble:v30];
        v43[1] = v32;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
        [v38 addObject:v33];
      }

      v5 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v5);
  }

  v34 = *MEMORY[0x277D85DE8];

  return v38;
}

- (id)mergeAllChargingIntervals:(id)intervals
{
  v22 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  v4 = objc_opt_new();
  v5 = [intervalsCopy objectForKeyedSubscript:&unk_287146D80];
  v6 = [intervalsCopy objectForKeyedSubscript:&unk_287146DC8];
  if ([v6 count])
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v6;
      _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_INFO, "adding paused charging intervals =%@", &v20, 0xCu);
    }

    [v4 setObject:v6 forKeyedSubscript:@"PLBatteryUIPausedChargingIntervalsKey"];
  }

  v8 = [intervalsCopy objectForKeyedSubscript:&unk_287146DB0];
  if ([v8 count])
  {
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v8;
      _os_log_impl(&dword_25EE51000, v9, OS_LOG_TYPE_INFO, "adding slow charging intervals =%@", &v20, 0xCu);
    }

    [v4 setObject:v8 forKeyedSubscript:@"PLBatteryUIChargingSpeedIntervalsKey"];
  }

  v10 = [intervalsCopy objectForKeyedSubscript:&unk_287146DE0];
  if ([v10 count])
  {
    v11 = PLLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v10;
      _os_log_impl(&dword_25EE51000, v11, OS_LOG_TYPE_INFO, "adding paused slow charging intervals =%@", &v20, 0xCu);
    }

    [v4 setObject:v10 forKeyedSubscript:@"PLBatteryUIPausedSlowChargingIntervalsKey"];
  }

  v12 = [intervalsCopy objectForKeyedSubscript:&unk_287146DF8];
  if ([v12 count])
  {
    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v12;
      _os_log_impl(&dword_25EE51000, v13, OS_LOG_TYPE_INFO, "adding stopped charging intervals =%@", &v20, 0xCu);
    }

    [v4 setObject:v12 forKeyedSubscript:@"PLBatteryUIStoppedChargingIntervalsKey"];
  }

  v14 = [intervalsCopy objectForKeyedSubscript:&unk_287146E10];
  if ([v14 count])
  {
    v15 = PLLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v14;
      _os_log_impl(&dword_25EE51000, v15, OS_LOG_TYPE_INFO, "adding stopped slow charging intervals =%@", &v20, 0xCu);
    }

    [v4 setObject:v14 forKeyedSubscript:@"PLBatteryUIStoppedSlowChargingIntervalsKey"];
  }

  if ([v5 count])
  {
    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v5;
      _os_log_impl(&dword_25EE51000, v16, OS_LOG_TYPE_INFO, "adding edited charging intervals =%@", &v20, 0xCu);
    }

    [v4 setObject:v5 forKeyedSubscript:@"PLBatteryUIChargingIntervalsKey"];
  }

  v17 = PLLogCommon();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v20 = 138412290;
    v21 = v4;
    _os_log_impl(&dword_25EE51000, v17, OS_LOG_TYPE_INFO, "charging intervals result =%@", &v20, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)enforceGraphIntervalPrecedence:(id)precedence
{
  *&v47[5] = *MEMORY[0x277D85DE8];
  v4 = [precedence mutableCopy];
  v5 = 1;
  v6 = 0x277CCA000uLL;
  do
  {
    v7 = (v5 + 1);
    v45 = v5;
    v43 = v5;
    v42 = v5 + 1;
    do
    {
      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        v47[0] = v45;
        LOWORD(v47[1]) = 1024;
        *(&v47[1] + 2) = v7;
        _os_log_impl(&dword_25EE51000, v8, OS_LOG_TYPE_INFO, "precedence lower=%d higher=%d", buf, 0xEu);
      }

      v9 = [*(v6 + 2992) numberWithInt:v45];
      v10 = [v4 objectForKeyedSubscript:v9];

      v11 = PLLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v47 = v10;
        _os_log_impl(&dword_25EE51000, v11, OS_LOG_TYPE_INFO, "lowerPrecedenceIntervals from constructGraphIntervalsWithPrecedence %@=", buf, 0xCu);
      }

      v12 = [*(v6 + 2992) numberWithInt:v7];
      v13 = [v4 objectForKeyedSubscript:v12];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v47 = v13;
        _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_INFO, "higherPrecedenceIntervals from constructGraphIntervalsWithPrecedence %@=", buf, 0xCu);
      }

      v15 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self intersectionOfTwoSetsWithMergeThreshold:[(PLBatteryUIResponseTypeChargingStateIntervals *)self filterThreshold:v43] intervalSetA:v10 intervalSetB:v13];
      if ([v15 count])
      {
        v16 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self unionBetweenSetAndIntersectingSet:v15 intervalSetB:v13];
        v17 = [*(v6 + 2992) numberWithInt:v7];
        [v4 setObject:v16 forKeyedSubscript:v17];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [*(v6 + 2992) numberWithInt:v7];
          v20 = [v4 objectForKeyedSubscript:v19];
          *buf = 138412290;
          *v47 = v20;
          _os_log_impl(&dword_25EE51000, v18, OS_LOG_TYPE_INFO, "higher precedence after merging=%@", buf, 0xCu);
        }
      }

      v21 = PLLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v47 = v15;
        _os_log_impl(&dword_25EE51000, v21, OS_LOG_TYPE_INFO, "lowerIntersectsHigher from constructGraphIntervalsWithPrecedence %@=", buf, 0xCu);
      }

      v22 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self differenceBetweenSetAndIntersectingSet:v10 intervalSetB:v15];
      v23 = PLLogCommon();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v47 = v22;
        _os_log_impl(&dword_25EE51000, v23, OS_LOG_TYPE_INFO, "lowerWithoutHigher from constructGraphIntervalsWithPrecedence %@=", buf, 0xCu);
      }

      if ([v22 count])
      {
        v24 = [*(v6 + 2992) numberWithInt:v45];
        [v4 objectForKeyedSubscript:v24];
        v44 = v15;
        v25 = v10;
        v26 = v4;
        selfCopy = self;
        v29 = v28 = v6;
        v30 = [(PLBatteryUIResponseTypeChargingStateIntervals *)selfCopy intersectionOfTwoSets:v29 intervalSetB:v22];

        v31 = [*(v28 + 2992) numberWithInt:v45];
        v32 = [v26 objectForKeyedSubscript:v31];

        v33 = [*(v28 + 2992) numberWithInt:v45];
        v34 = v32 == 0;
        v6 = v28;
        self = selfCopy;
        v4 = v26;
        v10 = v25;
        v15 = v44;
        if (v34)
        {
          v35 = v22;
        }

        else
        {
          v35 = v30;
        }

        v36 = v4;
      }

      else
      {
        v30 = objc_opt_new();
        v33 = [*(v6 + 2992) numberWithInt:v45];
        v36 = v4;
        v35 = v30;
      }

      [v36 setObject:v35 forKeyedSubscript:v33];

      v7 = (v7 + 1);
    }

    while (v7 != 7);
    v5 = v42;
  }

  while (v42 != 6);
  v37 = [*(v6 + 2992) numberWithInt:6];
  v38 = [v4 objectForKeyedSubscript:v37];

  v39 = [*(v6 + 2992) numberWithInt:6];
  [v4 setObject:v38 forKeyedSubscript:v39];

  v40 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)mapChargingStateIntervalsToGraphIntervals:(id)intervals
{
  v55 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v54 = intervalsCopy;
    _os_log_impl(&dword_25EE51000, v5, OS_LOG_TYPE_INFO, "chargingStateIntervals=%@", buf, 0xCu);
  }

  v6 = [intervalsCopy objectForKeyedSubscript:&unk_287146D80];
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v54 = v6;
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_INFO, "externalConnectedIntervals=%@", buf, 0xCu);
  }

  v8 = _os_feature_enabled_impl();
  v9 = 60.0;
  if (v8)
  {
    v9 = 900.0;
  }

  v10 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self mergeIntervals:v6 withTolerance:v9];
  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v54 = v10;
    _os_log_impl(&dword_25EE51000, v11, OS_LOG_TYPE_INFO, "allExternalConnectedIntervalsMerged=%@", buf, 0xCu);
  }

  v12 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self filterIntervals:v10 withThreshold:60.0];
  v47 = v10;
  v48 = v6;
  if ([(PLBatteryUIResponseTypeChargingStateIntervals *)self shouldSnapInterval])
  {
    v13 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self snapIntervals:v12];

    if (_os_feature_enabled_impl())
    {
      v14 = 900.0;
    }

    else
    {
      v14 = 60.0;
    }

    v15 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self mergeIntervals:v13 withTolerance:v14];

    v12 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self filterIntervals:v15 withThreshold:60.0];
  }

  [intervalsCopy setObject:v12 forKeyedSubscript:&unk_287146D80];
  v16 = objc_opt_new();
  v17 = MEMORY[0x277CCABB0];
  [(PLBatteryUIResponseTypeChargingStateIntervals *)self bucketSize];
  [v17 numberWithDouble:?];
  v51 = v50 = &unk_287146D98;
  v46 = v51;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:2];
  v52 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];

  v45 = v19;
  v20 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self intersectionOfTwoSets:v19 intervalSetB:v12];

  [v16 setObject:v20 forKeyedSubscript:&unk_287146D80];
  v21 = PLLogCommon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v54 = v16;
    _os_log_impl(&dword_25EE51000, v21, OS_LOG_TYPE_INFO, "chargingEntries after slow charging determination is %@=", buf, 0xCu);
  }

  v22 = v20;
  v23 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self getChargingStateIntervals:intervalsCopy forGraphIntervalType:3];
  v49 = intervalsCopy;
  v24 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self getChargingStateIntervals:intervalsCopy forGraphIntervalType:4];
  v44 = v23;
  v25 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self filterIntervals:v23 withThreshold:900.0];
  v43 = v24;
  v26 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self filterIntervals:v24 withThreshold:900.0];
  if (_os_feature_enabled_impl())
  {
    v27 = 900.0;
  }

  else
  {
    v27 = 60.0;
  }

  v42 = v25;
  v28 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self mergeIntervals:v25 withTolerance:v27];
  if (_os_feature_enabled_impl())
  {
    v29 = 900.0;
  }

  else
  {
    v29 = 60.0;
  }

  v41 = v26;
  v30 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self mergeIntervals:v26 withTolerance:v29];
  v40 = v28;
  v31 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self intersectionOfTwoSets:v22 intervalSetB:v28];
  [v16 setObject:v31 forKeyedSubscript:&unk_287146DC8];
  v32 = [v16 objectForKeyedSubscript:&unk_287146DB0];
  v33 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self intersectionOfTwoSets:v32 intervalSetB:v31];
  if ([v33 count])
  {
    [v16 setObject:v33 forKeyedSubscript:&unk_287146DE0];
  }

  v34 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self intersectionOfTwoSets:v22 intervalSetB:v30];
  [v16 setObject:v34 forKeyedSubscript:&unk_287146DF8];
  v35 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self intersectionOfTwoSets:v32 intervalSetB:v34];
  if ([v35 count])
  {
    [v16 setObject:v35 forKeyedSubscript:&unk_287146E10];
  }

  v36 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self enforceGraphIntervalPrecedence:v16];

  v37 = [(PLBatteryUIResponseTypeChargingStateIntervals *)self mergeAllChargingIntervals:v36];

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)getChargingStateIntervals:(id)intervals forGraphIntervalType:(signed __int16)type
{
  intervalsCopy = intervals;
  v7 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __107__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__getChargingStateIntervals_forGraphIntervalType___block_invoke;
  v12[3] = &unk_279A5E988;
  typeCopy = type;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  [intervalsCopy enumerateKeysAndObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __107__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__getChargingStateIntervals_forGraphIntervalType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = (a1 + 48);
  v7 = *(a1 + 48);
  if (v7 > 2)
  {
    if (v7 == 4)
    {
      if (![*(a1 + 32) isStoppedChargingIntervalType:{objc_msgSend(v5, "intValue")}])
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v7 == 3)
    {
      if (![*(a1 + 32) isPausedChargingIntervalType:{objc_msgSend(v5, "intValue")}])
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (v7 == 1)
    {
      if ([v5 intValue] != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v7 == 2)
    {
      if (![MEMORY[0x277D3F058] supportsSlowCharging] || !objc_msgSend(*(a1 + 32), "isChargingSpeedIntervalType:", objc_msgSend(v5, "intValue")))
      {
        goto LABEL_18;
      }

LABEL_17:
      [*(a1 + 40) addObjectsFromArray:v6];
      goto LABEL_18;
    }
  }

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __107__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__getChargingStateIntervals_forGraphIntervalType___block_invoke_cold_1(v8, v9);
  }

LABEL_18:
}

- (int)filterThreshold:(signed __int16)threshold
{
  if (threshold - 3 >= 4)
  {
    return 60;
  }

  else
  {
    return 900;
  }
}

void __133__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__constructIntervalTuplesFromEntries_startOfRange_endOfRange_allowOverflow___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 objectForKeyedSubscript:@"timestampEnd"];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __133__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__constructIntervalTuplesFromEntries_startOfRange_endOfRange_allowOverflow___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "adding interval=%@ for entry=%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void __107__PLBatteryUIResponseTypeChargingStateIntervals_Utilities__getChargingStateIntervals_forGraphIntervalType___block_invoke_cold_1(__int16 *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_25EE51000, a2, OS_LOG_TYPE_ERROR, "Unrecognized graphIntervalType=%d", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

@end