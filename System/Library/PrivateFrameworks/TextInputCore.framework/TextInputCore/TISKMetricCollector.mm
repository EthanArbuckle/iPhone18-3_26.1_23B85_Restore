@interface TISKMetricCollector
+ (BOOL)isSensorKitSupported:(id)a3;
- (double)totalTimeSpan;
- (double)totalTimeSpanFromLastTap;
- (id)_consumeTypingSession:(id)a3;
- (id)_insertEmojiSwitchEvents:(id)a3;
- (id)_mapIDToLayout:(unint64_t)a3;
- (id)_retrieveSavedSessionSampleArray;
- (id)eventsDescription:(BOOL)a3;
- (id)getWordBucketCategoryForWord:(id)a3;
- (id)init:(id)a3 wordsThreshold:(unint64_t)a4 accentedLanguage:(BOOL)a5 skipTCCAuthorization:(BOOL)a6;
- (id)lemmatizeWord:(id)a3;
- (id)loadDataWithFilename:(id)a3;
- (id)privateEventsDescription;
- (int64_t)findIndexSessionStatsFromArray:(id)a3 thatHasLayout:(id)a4;
- (void)_clear;
- (void)_coalesceTaps;
- (void)_consumeDeleteWordEvent:(id)a3;
- (void)_consumeInputsAndTouches:(id)a3 occurenceTime:(double)a4 emojiSearchMode:(BOOL)a5;
- (void)_consumeUserAction:(id)a3;
- (void)_consumeWordEntry:(id)a3;
- (void)_haltSessionTypingTimer:(id)a3 event:(id)a4;
- (void)_loadStatsFromDataStore;
- (void)_mapTapsToEvents;
- (void)_metricWalk;
- (void)_persistSavedSessionStatsArray;
- (void)_processEvents;
- (void)_resetConsumeState;
- (void)_setupTCCAuthNotification;
- (void)dealloc;
- (void)handleTypingSession:(id)a3;
- (void)loadEmojiBucketDictionaryIfNecessary;
- (void)loadWordBucketDictionaryIfNecessary;
- (void)placeTaskOnWorkQueue:(id)a3;
- (void)processNewSessionStatsArray:(id)a3;
- (void)removeSessionStatsWithNegativeDurationFromArray:(id)a3 ForTypingSession:(id)a4;
- (void)sessionDidEnd:(id)a3 aligned:(id)a4;
- (void)setupSessionStatsForLayouts;
- (void)testTCCAuthorization;
@end

@implementation TISKMetricCollector

- (void)removeSessionStatsWithNegativeDurationFromArray:(id)a3 ForTypingSession:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__TISKMetricCollector_removeSessionStatsWithNegativeDurationFromArray_ForTypingSession___block_invoke;
  v11[3] = &unk_27872EC30;
  v12 = v6;
  v13 = self;
  v14 = v8;
  v9 = v8;
  v10 = v6;
  [v7 enumerateObjectsUsingBlock:v11];
  [v7 removeObjectsAtIndexes:v9];
}

void __88__TISKMetricCollector_removeSessionStatsWithNegativeDurationFromArray_ForTypingSession___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 keyedMetrics];
  v7 = [v6 objectForKey:kTISKTotalSessionTypingDuration];

  if (v7)
  {
    [v7 doubleValue];
    if (v8 < 0.0)
    {
      v9 = v8;
      if (*(a1 + 32))
      {
        v38 = a3;
        v39 = v5;
        v10 = objc_alloc(MEMORY[0x277CBEB18]);
        v11 = [*(a1 + 32) userActionHistory];
        log = [v10 initWithCapacity:{objc_msgSend(v11, "count")}];

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v37 = a1;
        v12 = [*(a1 + 32) userActionHistory];
        v13 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v42;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v42 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v41 + 1) + 8 * i);
              v18 = [v17 actionType];
              v19 = @"ot";
              if (v18 <= 5)
              {
                v19 = off_27872EC68[v18];
              }

              v20 = MEMORY[0x277CCACA8];
              [v17 startTime];
              v22 = v21;
              [v17 endTime];
              v24 = [v20 stringWithFormat:@"%@:%f:%f", v19, v22, v23];
              [log addObject:v24];
            }

            v14 = [v12 countByEnumeratingWithState:&v41 objects:v45 count:16];
          }

          while (v14);
        }

        v25 = [log componentsJoinedByString:@"|"];
        v26 = IXADefaultLogFacility();
        v5 = v39;
        a1 = v37;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = MEMORY[0x277CCACA8];
          v29 = [v39 startTime];
          v30 = [v39 endTime];
          v31 = [*(v37 + 40) privateEventsDescription];
          v32 = [v28 stringWithFormat:@"%s [SK TypingTimer][SK Duration] Removing negative duration sessionStats found while reporting: %f %@ %@\n%@\n%@", "-[TISKMetricCollector removeSessionStatsWithNegativeDurationFromArray:ForTypingSession:]_block_invoke", *&v9, v29, v30, v25, v31];
          *buf = 138412290;
          v47 = v32;
          _os_log_error_impl(&dword_22CA55000, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        a3 = v38;
      }

      else
      {
        log = IXADefaultLogFacility();
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v33 = MEMORY[0x277CCACA8];
          v34 = [v5 startTime];
          v35 = [v5 endTime];
          v36 = [v33 stringWithFormat:@"%s [SK TypingTimer][SK Duration] Removing negative duration sessionStats found while loading: %f %@ %@", "-[TISKMetricCollector removeSessionStatsWithNegativeDurationFromArray:ForTypingSession:]_block_invoke", *&v9, v34, v35];
          *buf = 138412290;
          v47 = v36;
          _os_log_error_impl(&dword_22CA55000, log, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      [*(a1 + 48) addIndex:a3];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_persistSavedSessionStatsArray
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  userModelDataStore = self->_userModelDataStore;
  v5 = [(TIInputMode *)self->_inputMode normalizedIdentifier];
  [(TIUserModelDataStore *)userModelDataStore purgeDataForKey:@"SensorKitDataKey" forInputMode:v5 beforeDate:v3];

  if ([(NSMutableArray *)self->_savedSessionStatsArray count])
  {
    savedSessionStatsArray = self->_savedSessionStatsArray;
    v15 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:savedSessionStatsArray requiringSecureCoding:1 error:&v15];
    v8 = v15;
    if (v8)
    {
      v9 = IXADefaultLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = [(TIInputMode *)self->_inputMode normalizedIdentifier];
        v12 = [v10 stringWithFormat:@"%s [SensorKit] failed to archive stats for input mode %@", "-[TISKMetricCollector _persistSavedSessionStatsArray]", v11];
        *buf = 138412290;
        v17 = v12;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    else
    {
      v13 = self->_userModelDataStore;
      v9 = [(TIInputMode *)self->_inputMode normalizedIdentifier];
      [(TIUserModelDataStore *)v13 addValue:&unk_28400BBF8 andSecondaryValue:&unk_28400BBF8 andRealValue:&unk_28400BBF8 andProperties:v7 forKey:@"SensorKitDataKey" forInputMode:v9 forDate:v3];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_retrieveSavedSessionSampleArray
{
  v31 = *MEMORY[0x277D85DE8];
  userModelDataStore = self->_userModelDataStore;
  v4 = [(TIInputMode *)self->_inputMode normalizedIdentifier];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  v6 = [(TIUserModelDataStore *)userModelDataStore getAllValuesForKey:@"SensorKitDataKey" forInputMode:v4 sinceDate:v5];

  if (v6 && [v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = MEMORY[0x277CCAAC8];
    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v7 properties];
    v28 = 0;
    v13 = [v8 unarchivedObjectOfClasses:v11 fromData:v12 error:&v28];
    v14 = v28;

    if (v14)
    {
      v15 = IXADefaultLogFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = [(TIInputMode *)self->_inputMode normalizedIdentifier];
        v27 = [v25 stringWithFormat:@"%s [SensorKit] failed to unarchive stats for input mode %@", "-[TISKMetricCollector _retrieveSavedSessionSampleArray]", v26];
        *buf = 138412290;
        v30 = v27;
        _os_log_debug_impl(&dword_22CA55000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v16 = [MEMORY[0x277CCAB58] indexSet];
    if ([v13 count])
    {
      v17 = 0;
      do
      {
        v18 = [v13 objectAtIndexedSubscript:v17];
        v19 = [v18 startTime];
        [v19 timeIntervalSinceNow];
        v21 = fabs(v20);

        if (v21 > 86400.0)
        {
          [v16 addIndex:v17];
        }

        ++v17;
      }

      while (v17 < [v13 count]);
    }

    [v13 removeObjectsAtIndexes:v16];
  }

  else
  {
    v13 = 0;
  }

  v22 = [v13 copy];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)_loadStatsFromDataStore
{
  if (!self->_isLoaded)
  {
    self->_isLoaded = 1;
    v4 = [(TISKMetricCollector *)self _retrieveSavedSessionSampleArray];
    if (v4)
    {
      v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
      savedSessionStatsArray = self->_savedSessionStatsArray;
      self->_savedSessionStatsArray = v5;

      [(TISKMetricCollector *)self removeSessionStatsWithNegativeDurationFromArray:self->_savedSessionStatsArray ForTypingSession:0];
    }

    MEMORY[0x2821F96F8]();
  }
}

- (void)handleTypingSession:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_isTCCAuthorized)
  {
    v16 = IXADefaultLogFacility();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
LABEL_17:

      v18 = [MEMORY[0x277CBEB18] array];
      savedSessionStatsArray = self->_savedSessionStatsArray;
      self->_savedSessionStatsArray = v18;
      goto LABEL_18;
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] failed TCC authorization - dropping session", "-[TISKMetricCollector handleTypingSession:]"];
    *buf = 138412290;
    v26 = v17;
LABEL_20:
    _os_log_debug_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);

    goto LABEL_17;
  }

  v5 = [(TISKMetricCollector *)self dataWriter];
  if (!v5 || (v6 = v5, -[TISKMetricCollector dataWriter](self, "dataWriter"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isReady], v7, v6, (v8 & 1) == 0))
  {
    v16 = IXADefaultLogFacility();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] writer is not ready - dropping session", "-[TISKMetricCollector handleTypingSession:]"];
    *buf = 138412290;
    v26 = v17;
    goto LABEL_20;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  savedSessionStatsArray = [v4 userActionHistory];
  v10 = [savedSessionStatsArray countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
LABEL_6:
    v13 = 0;
    while (1)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(savedSessionStatsArray);
      }

      [*(*(&v20 + 1) + 8 * v13) occurenceTime];
      if (v14 < 0.0)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [savedSessionStatsArray countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:

    v15 = +[TISKMetricDefinition metricDefinitions];
    [(TISKMetricCollector *)self _loadStatsFromDataStore];
    savedSessionStatsArray = [(TISKMetricCollector *)self consumeTypingSession:v4];
    if (savedSessionStatsArray)
    {
      [(TISKMetricCollector *)self removeSessionStatsWithNegativeDurationFromArray:self->_savedSessionStatsArray ForTypingSession:v4];
      [(TISKMetricCollector *)self processNewSessionStatsArray:savedSessionStatsArray];
      [(TISKMetricCollector *)self _persistSavedSessionStatsArray];
      [(TISKMetricCollector *)self _clear];
    }
  }

LABEL_18:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)sessionDidEnd:(id)a3 aligned:(id)a4
{
  location[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = IXADefaultLogFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] enqueue session", "-[TISKMetricCollector sessionDidEnd:aligned:]"];
    LODWORD(location[0]) = 138412290;
    *(location + 4) = v11;
    _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", location, 0xCu);
  }

  v7 = v5;
  objc_initWeak(location, self);
  workQueue = self->_workQueue;
  objc_copyWeak(&v13, location);
  v12 = v7;
  v9 = v7;
  TIDispatchAsync();

  objc_destroyWeak(&v13);
  objc_destroyWeak(location);

  v10 = *MEMORY[0x277D85DE8];
}

void __45__TISKMetricCollector_sessionDidEnd_aligned___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = IXADefaultLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] dequeue session", "-[TISKMetricCollector sessionDidEnd:aligned:]_block_invoke"];
      *buf = 138412290;
      v7 = v5;
      _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    [WeakRetained handleTypingSession:*(a1 + 32)];
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)processNewSessionStatsArray:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if (([v9 isEmpty] & 1) == 0 && !-[TISKMetricCollector publishIfSessionStatsHasWordCountMoreThanThreshold:withSessionStartTime:](self, "publishIfSessionStatsHasWordCountMoreThanThreshold:withSessionStartTime:", v9, 1))
        {
          savedSessionStatsArray = self->_savedSessionStatsArray;
          v11 = [v9 layout];
          v12 = [(TISKMetricCollector *)self findIndexSessionStatsFromArray:savedSessionStatsArray thatHasLayout:v11];

          if (v12 == -1)
          {
            v16 = IXADefaultLogFacility();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] savedSessionStats is nil", "-[TISKMetricCollector processNewSessionStatsArray:]"];
              *buf = 138412290;
              v25 = v18;
              _os_log_debug_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            [(NSMutableArray *)self->_savedSessionStatsArray addObject:v9];
          }

          else
          {
            v13 = [(NSMutableArray *)self->_savedSessionStatsArray objectAtIndex:v12];
            v14 = IXADefaultLogFacility();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] savedSessionStats not nil, savedSessionStats class %@", "-[TISKMetricCollector processNewSessionStatsArray:]", objc_opt_class()];
              *buf = 138412290;
              v25 = v17;
              _os_log_debug_impl(&dword_22CA55000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
            }

            v15 = [v13 sessionIds];

            if (v15)
            {
              [v13 merge:v9];
              if ([(TISKMetricCollector *)self publishIfSessionStatsHasWordCountMoreThanThreshold:v13 withSessionStartTime:0])
              {
                [(NSMutableArray *)self->_savedSessionStatsArray removeObjectAtIndex:v12];
              }
            }

            else
            {
              [(NSMutableArray *)self->_savedSessionStatsArray removeObjectAtIndex:v12];
              [(NSMutableArray *)self->_savedSessionStatsArray addObject:v9];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (double)totalTimeSpanFromLastTap
{
  v3 = [(NSArray *)self->_sortedEvents count];
  v4 = 0.0;
  if ((v3 - 1) >= 0)
  {
    v5 = v3;
    do
    {
      v6 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:--v5];
      v7 = [v6 tap];
      if (v7)
      {
        v8 = v7;
        v9 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v5];
        v10 = [v9 tap];
        v11 = [v10 lastTouch];

        if (v11)
        {
          v12 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v5];
          v13 = [v12 tap];

          v14 = [v13 lastTouch];
          [v14 timestamp];
          v16 = v15;
          v17 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:0];
          [v17 touchDownTimestamp];
          v4 = v16 - v18;

          return v4;
        }
      }

      else
      {
      }
    }

    while (v5 > 0);
  }

  return v4;
}

- (double)totalTimeSpan
{
  v3 = 0.0;
  if (![(NSArray *)self->_sortedEvents count])
  {
LABEL_5:
    v7 = 0;
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v4 = 0;
  while (1)
  {
    v5 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v4];
    v6 = [v5 hasTimestamp];

    if (v6)
    {
      break;
    }

    if (++v4 >= [(NSArray *)self->_sortedEvents count])
    {
      goto LABEL_5;
    }
  }

  v7 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v4];
  if (!v7)
  {
    goto LABEL_6;
  }

  v10 = [(NSArray *)self->_sortedEvents count];
  while ((--v10 & 0x8000000000000000) == 0)
  {
    v11 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v10];
    v12 = [v11 hasTimestamp];

    if (v12)
    {
      v8 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v10];
      goto LABEL_14;
    }
  }

  v8 = 0;
LABEL_14:
  if (v7 != v8)
  {
    [v8 touchUpTimestamp];
    v14 = v13;
    [v7 touchDownTimestamp];
    v3 = v14 - v15;
  }

LABEL_7:

  return v3;
}

- (id)privateEventsDescription
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_sortedEvents;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) privateDescription];
        [v3 appendString:v9];

        [v3 appendString:@"|"];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)eventsDescription:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAB68] string];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_sortedEvents;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 description];
        [v5 appendString:v12];

        if (v3 && [v11 type] != 13 && objc_msgSend(v11, "type") != 14 && objc_msgSend(v11, "type") != 7 && objc_msgSend(v11, "type") != 11)
        {
          v13 = MEMORY[0x277CCACA8];
          [v11 touchDownTimestamp];
          v15 = v14;
          [v11 touchUpTimestamp];
          v17 = [v13 stringWithFormat:@":%lf->%lf", v15, v16, v20];
          [v5 appendString:v17];
        }

        [v5 appendString:@"|"];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_coalesceTaps
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  taps = self->_taps;
  self->_taps = v3;

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v5 = [(NSMutableArray *)self->_touches count];
  v6 = 0;
  if (!v5)
  {
    goto LABEL_21;
  }

  do
  {
    v7 = v6;
    v19 = [(NSMutableArray *)self->_touches objectAtIndex:0];

    [(NSMutableArray *)self->_touches removeObjectAtIndex:0];
    v8 = [(NSMutableArray *)self->_layoutIDs objectAtIndex:0];
    v9 = [v8 integerValue];

    [(NSMutableArray *)self->_layoutIDs removeObjectAtIndex:0];
    v10 = [v19 pathIndex];
    v11 = [TISKTap alloc];
    v12 = [(TISKMetricCollector *)self _mapIDToLayout:v9];
    v13 = [(TISKTap *)v11 init:v19 layout:v12];

    [v13 setPathIndex:v10];
    if (![(NSMutableArray *)self->_touches count])
    {
      goto LABEL_15;
    }

    v14 = 0;
    while (1)
    {
      v15 = v19;
      v19 = [(NSMutableArray *)self->_touches objectAtIndex:v14];

      if ([v19 pathIndex] == v10)
      {
        break;
      }

LABEL_12:
      if ([(NSMutableArray *)self->_touches count]<= ++v14)
      {
        goto LABEL_15;
      }
    }

    if ([v19 stage] == 1)
    {
      [v13 addDragTouch:v19];
LABEL_11:
      v20 = v14;
      std::vector<unsigned long>::push_back[abi:nn200100](&v21, &v20);
      goto LABEL_12;
    }

    if ([v19 stage] != 2 && objc_msgSend(v19, "stage") != 3 && objc_msgSend(v19, "stage") != 5)
    {
      if (![v19 stage])
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    [v13 setLastTouch:v19];
    v20 = v14;
    std::vector<unsigned long>::push_back[abi:nn200100](&v21, &v20);
LABEL_15:
    [(NSMutableArray *)self->_taps addObject:v13];
    v16 = v21;
    if ((((v22 - v21) >> 3) - 1) >= 0)
    {
      v17 = 8 * (((v22 - v21) >> 3) - 1);
      do
      {
        [(NSMutableArray *)self->_touches removeObjectAtIndex:*&v16[v17]];
        [(NSMutableArray *)self->_layoutIDs removeObjectAtIndex:*&v16[v17]];
        v17 -= 8;
      }

      while (v17 != -8);
    }

    v22 = v16;

    v18 = [(NSMutableArray *)self->_touches count];
    v6 = v19;
  }

  while (v18);
  if (v16)
  {
    operator delete(v16);
  }

LABEL_21:

  MEMORY[0x2821F96F8]();
}

- (id)_mapIDToLayout:(unint64_t)a3
{
  accentedLayoutsMap = self->_accentedLayoutsMap;
  if (accentedLayoutsMap)
  {
    v6 = [(NSMutableArray *)accentedLayoutsMap objectAtIndexedSubscript:a3];
  }

  else
  {
    v7 = [(TITypingSession *)self->_typingSession layouts];
    v6 = [v7 objectAtIndexedSubscript:a3];
  }

  return v6;
}

- (id)_insertEmojiSwitchEvents:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (![v3 count])
  {
    v43 = v3;
    goto LABEL_55;
  }

  v4 = 0x277CBE000uLL;
  v5 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v57 = v3;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v63 objects:v67 count:16];
  v62 = v5;
  if (!v7)
  {
    v12 = 0;
    v11 = 0;
    v42 = v6;
    goto LABEL_37;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = *v64;
  v60 = v6;
  do
  {
    v14 = 0;
    v15 = v11;
    do
    {
      if (*v64 != v13)
      {
        objc_enumerationMutation(v6);
      }

      v16 = *(*(&v63 + 1) + 8 * v14);
      v17 = [v16 type];
      if (v17 <= 0x11)
      {
        if (((1 << v17) & 0x1ABFD) != 0)
        {
          v18 = [v16 emojiSearchMode];
          if (v9)
          {
            if (v18)
            {
              goto LABEL_11;
            }

            if (v10)
            {
              v26 = [TISKEmojiSearchEvent alloc];
              [v12 touchUpTimestamp];
              v28 = -[TISKEmojiSearchEvent init:engaged:order:](v26, "init:engaged:order:", 0, [v15 order] + 1, v27);
              [v62 addObject:v28];
            }

            v29 = [TISKEmojiSwitchEvent alloc];
            [v12 touchUpTimestamp];
            v25 = -[TISKEmojiSwitchEvent init:emojiSearchMode:order:](v29, "init:emojiSearchMode:order:", 0, [v15 order] + 2, v30);
            v9 = 0;
            v10 = 0;
            goto LABEL_25;
          }

          if (!v18)
          {
            v9 = 0;
            goto LABEL_27;
          }

          v19 = [TISKEmojiSwitchEvent alloc];
          [v16 touchDownTimestamp];
          v9 = 1;
          v21 = -[TISKEmojiSwitchEvent init:emojiSearchMode:order:](v19, "init:emojiSearchMode:order:", 1, [v16 order] - 2, v20);
          v22 = v62;
          [v62 addObject:v21];

          v23 = [TISKEmojiSearchEvent alloc];
          [v16 touchDownTimestamp];
          v25 = -[TISKEmojiSearchEvent init:engaged:order:](v23, "init:engaged:order:", 1, [v16 order] - 1, v24);
          v10 = 1;
        }

        else
        {
          if (v17 == 12)
          {
            if (v10 & 1 | ((v9 & 1) == 0))
            {
              goto LABEL_27;
            }

            v34 = [TISKEmojiSearchEvent alloc];
            [v16 touchDownTimestamp];
            v10 = 1;
            v33 = -[TISKEmojiSearchEvent init:engaged:order:](v34, "init:engaged:order:", 1, [v16 order] - 1, v35);
          }

          else
          {
            if (v17 != 17)
            {
              goto LABEL_27;
            }

            if (v9)
            {
LABEL_11:
              v9 = 1;
              goto LABEL_27;
            }

            v31 = [TISKEmojiSwitchEvent alloc];
            [v16 touchDownTimestamp];
            v9 = 1;
            v33 = -[TISKEmojiSwitchEvent init:emojiSearchMode:order:](v31, "init:emojiSearchMode:order:", 1, [v16 order] - 1, v32);
          }

          v25 = v33;
LABEL_25:
          v22 = v62;
        }

        [v22 addObject:v25];

        v6 = v60;
      }

LABEL_27:
      v11 = v16;

      if ([v11 hasTimestamp])
      {
        v36 = v11;

        v12 = v36;
      }

      ++v14;
      v15 = v11;
    }

    while (v8 != v14);
    v8 = [v6 countByEnumeratingWithState:&v63 objects:v67 count:16];
  }

  while (v8);

  if (v9)
  {
    v5 = v62;
    if (v10)
    {
      v37 = [TISKEmojiSearchEvent alloc];
      [v12 touchUpTimestamp];
      v39 = -[TISKEmojiSearchEvent init:engaged:order:](v37, "init:engaged:order:", 0, [v11 order] + 1, v38);
      [v62 addObject:v39];
    }

    v40 = [TISKEmojiSwitchEvent alloc];
    [v12 touchUpTimestamp];
    v42 = -[TISKEmojiSwitchEvent init:emojiSearchMode:order:](v40, "init:emojiSearchMode:order:", 0, [v11 order] + 2, v41);
    [v62 addObject:v42];
    v4 = 0x277CBE000;
LABEL_37:
  }

  else
  {
    v5 = v62;
    v4 = 0x277CBE000uLL;
  }

  v44 = *(v4 + 2840);
  v43 = objc_opt_new();
  if ([v6 count])
  {
    v59 = v43;
    v61 = 0;
    v45 = 0;
    v46 = 0;
    while (1)
    {
      v47 = v61;
      if ([v5 count] <= v61)
      {
        break;
      }

      v48 = v46;
      v49 = [v6 objectAtIndexedSubscript:v45];
      v50 = [v49 order];
      v51 = [v5 objectAtIndexedSubscript:v61];
      if (v50 >= [v51 order])
      {
        ++v61;
        v52 = [v5 objectAtIndexedSubscript:v47];
        v46 = v48;
      }

      else
      {
        v46 = (v48 + 1);
        v52 = [v6 objectAtIndexedSubscript:v45];
      }

      [v59 addObject:v52];

      v45 = v46;
      v5 = v62;
      if ([v6 count] <= v46)
      {
        v47 = v61;
        goto LABEL_49;
      }
    }

    v45 = v46;
LABEL_49:
    v43 = v59;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  if ([v6 count] > v45)
  {
    do
    {
      v53 = [v6 objectAtIndexedSubscript:v45];
      [v43 addObject:v53];

      ++v45;
    }

    while ([v6 count] > v45);
  }

  for (; [v5 count] > v47; ++v47)
  {
    v54 = [v5 objectAtIndexedSubscript:v47];
    [v43 addObject:v54];
  }

  v3 = v58;
LABEL_55:

  v55 = *MEMORY[0x277D85DE8];

  return v43;
}

- (void)_mapTapsToEvents
{
  v2 = self;
  v60 = *MEMORY[0x277D85DE8];
  v3 = [(TITypingSession *)self->_typingSession layouts];
  v4 = [v3 objectAtIndexedSubscript:0];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v2->_taps;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_30;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v56;
  v51 = *v56;
  do
  {
    v9 = 0;
    v52 = v6;
    do
    {
      if (*v56 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v55 + 1) + 8 * v9);
      if ([v10 isDownUpTap])
      {
        if (v7)
        {
          v11 = [v7 emojiSearchMode];
          v12 = [v7 order] + 10;
        }

        else
        {
          v11 = 0;
          v12 = 0;
        }

        v13 = [v10 layout];

        v54 = v11;
        if (v7 && v4 != v13)
        {
          [v4 frame];
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v22 = [v10 layout];
          [v22 frame];
          v62.origin.x = v23;
          v62.origin.y = v24;
          v62.size.width = v25;
          v62.size.height = v26;
          v61.origin.x = v15;
          v61.origin.y = v17;
          v61.size.width = v19;
          v61.size.height = v21;
          v27 = CGRectEqualToRect(v61, v62);

          if (v27)
          {
            v28 = [TISKLayoutSwitchEvent alloc];
            [v7 touchUpTimestamp];
            v30 = v29;
            v31 = [v10 layout];
            v32 = [(TISKLayoutSwitchEvent *)v28 init:v31 layout:v11 emojiSearchMode:v12 order:v30];
          }

          else
          {
            currentSessionStatsArray = v2->_currentSessionStatsArray;
            v34 = [v10 layout];
            v35 = [(TISKMetricCollector *)v2 findIndexSessionStatsFromArray:currentSessionStatsArray thatHasLayout:v34];

            v31 = [(NSMutableArray *)v2->_currentSessionStatsArray objectAtIndex:v35];
            v32 = [[TISKBucketSwitchEvent alloc] init:v31 emojiSearchMode:v11 order:v12];
          }

          v36 = v32;

          ++v12;
          [(NSMutableArray *)v2->_events addObject:v36];
          v37 = [v10 layout];

          v4 = v37;
        }

        v38 = v2;
        touchToEventMap = v2->_touchToEventMap;
        v40 = MEMORY[0x277CCABB0];
        v41 = [v10 lastTouch];
        v42 = [v40 numberWithLong:v41];
        v43 = [(NSMutableDictionary *)touchToEventMap objectForKey:v42];

        if (v43)
        {
          [v43 setTap:v10];
          v2 = v38;
          v6 = v52;
          goto LABEL_22;
        }

        v44 = [v10 stringForIntendedKey];
        v45 = v44;
        v6 = v52;
        if (v44)
        {
          v46 = [v44 isEqualToString:@"shift"];
          v47 = off_27872D6B8;
          v2 = v38;
          if ((v46 & 1) != 0 || (v48 = [v45 isEqualToString:@"more"], v47 = off_27872D690, v48))
          {
            v43 = [objc_alloc(*v47) init:v10 emojiSearchMode:v54 order:v12];
            [(NSMutableArray *)v38->_events addObject:v43];

LABEL_22:
            v45 = v43;

            v7 = v45;
          }
        }

        else
        {
          v2 = v38;
        }

        v8 = v51;
      }

      ++v9;
    }

    while (v6 != v9);
    v49 = [(NSMutableArray *)obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    v6 = v49;
  }

  while (v49);
LABEL_30:

  v50 = *MEMORY[0x277D85DE8];
}

- (void)_metricWalk
{
  currentSessionStatsArray = self->_currentSessionStatsArray;
  v4 = [(TITypingSession *)self->_typingSession layouts];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [(TISKMetricCollector *)self findIndexSessionStatsFromArray:currentSessionStatsArray thatHasLayout:v5];

  v7 = [(NSMutableArray *)self->_currentSessionStatsArray objectAtIndex:v6];
  if (![(NSArray *)self->_sortedEvents count])
  {
    goto LABEL_32;
  }

  v8 = 0;
  v15 = 0;
  do
  {
    if (!v8)
    {
      [v7 addSample:&unk_28400BBE0 forKey:kTISKEpisodeCount];
    }

    v9 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v8];
    v10 = [v9 type];
    if (v10 > 12)
    {
      if ((v10 - 15) < 2 || v10 == 13)
      {
        [(TISKMetricCollector *)self _haltSessionTypingTimer:v7 event:v15];

LABEL_16:
        v15 = 0;
        goto LABEL_28;
      }

      if (v10 == 14)
      {
        [(TISKMetricCollector *)self _haltSessionTypingTimer:v7 event:v15];

        [v9 reportToSession:v7];
        v13 = [v9 sessionStats];

        v15 = 0;
        v7 = v13;
        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if (v10 == 7)
    {
      goto LABEL_9;
    }

    if (v10 != 10)
    {
      if (v10 == 11)
      {
LABEL_9:
        [v9 reportToSession:v7];
        goto LABEL_28;
      }

LABEL_23:
      if (!v15)
      {
        [v7 startTypingTimerWithEvent:v9];
      }

      [v9 reportToSession:v7];
      [v9 reportInterKeyTiming:v7 previousEvent:v15];
      goto LABEL_26;
    }

    [v9 reportToSession:v7];
    if (!v15)
    {
      goto LABEL_16;
    }

    if ([v15 type] == 5 || objc_msgSend(v15, "type") == 2)
    {
      v12 = [v15 tap];
      [v9 setTap:v12];

LABEL_26:
      if ([v9 hasTimestamp])
      {
        v14 = v9;

        v15 = v14;
      }
    }

LABEL_28:

    ++v8;
  }

  while ([(NSArray *)self->_sortedEvents count]> v8);
  if (!v15)
  {
LABEL_32:
    v15 = 0;
    goto LABEL_33;
  }

  if ([v15 type] != 14)
  {
    [v7 haltTypingTimerWithEvent:v15];
    goto LABEL_34;
  }

LABEL_33:
  [v7 haltTypingTimer];
LABEL_34:
}

- (id)getWordBucketCategoryForWord:(id)a3
{
  v4 = a3;
  [(TISKMetricCollector *)self loadWordBucketDictionaryIfNecessary];
  v5 = [v4 lowercaseString];

  v6 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];

  v8 = [MEMORY[0x277D6F320] createStringByReplacingStylizedQuotesToStraightQuotes:v7];

  v9 = [(NSDictionary *)self->_wordBucketDictionary objectForKey:v8];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [(TISKMetricCollector *)self lemmatizeWord:v8];
    v10 = [(NSDictionary *)self->_wordBucketDictionary objectForKey:v11];

    if (!v10)
    {
      if (self->_previousWord)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", self->_previousWord, v8];
        v10 = [(NSDictionary *)self->_wordBucketDictionary objectForKey:v12];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  previousWord = self->_previousWord;
  self->_previousWord = v8;

  return v10;
}

- (id)lemmatizeWord:(id)a3
{
  [(NLTagger *)self->_tagger setString:a3];
  tagger = self->_tagger;
  v5 = *MEMORY[0x277CD8958];

  return [(NLTagger *)tagger tagAtIndex:0 unit:0 scheme:v5 tokenRange:0];
}

- (void)loadEmojiBucketDictionaryIfNecessary
{
  if (!self->_emojiBuckets)
  {
    v4 = [(TISKMetricCollector *)self loadDataWithFilename:@"emojiBuckets"];
    emojiBuckets = self->_emojiBuckets;
    self->_emojiBuckets = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (void)loadWordBucketDictionaryIfNecessary
{
  if (!self->_wordBucketDictionary)
  {
    v4 = [(TISKMetricCollector *)self loadDataWithFilename:@"wordBuckets"];
    wordBucketDictionary = self->_wordBucketDictionary;
    self->_wordBucketDictionary = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (void)_haltSessionTypingTimer:(id)a3 event:(id)a4
{
  if (a4)
  {
    [a3 haltTypingTimerWithEvent:a4];
  }

  else
  {
    [a3 haltTypingTimer];
  }
}

- (void)_processEvents
{
  v38 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_events count])
  {
    if ([(NSMutableArray *)self->_events count])
    {
      v3 = 0;
      do
      {
        v4 = [(NSMutableArray *)self->_events objectAtIndexedSubscript:v3];
        if ([v4 isMissingATouch])
        {
          v5 = -[TISKTouchlessInputEvent init:order:]([TISKTouchlessInputEvent alloc], "init:order:", [v4 emojiSearchMode], objc_msgSend(v4, "order"));
          [(NSMutableArray *)self->_events setObject:v5 atIndexedSubscript:v3];
        }

        ++v3;
      }

      while (v3 < [(NSMutableArray *)self->_events count]);
    }

    v6 = MEMORY[0x277CBEB18];
    v7 = [(NSMutableArray *)self->_events sortedArrayUsingComparator:&__block_literal_global_224];
    v8 = [v6 arrayWithArray:v7];

    v9 = [(TISKMetricCollector *)self _insertEmojiSwitchEvents:v8];
    sortedEvents = self->_sortedEvents;
    self->_sortedEvents = v9;

    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy_;
    v35 = __Block_byref_object_dispose_;
    v36 = [MEMORY[0x277CBEB18] array];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __37__TISKMetricCollector__processEvents__block_invoke_225;
    aBlock[3] = &unk_278733760;
    aBlock[4] = &v31;
    v11 = _Block_copy(aBlock);
    if ([(NSArray *)self->_sortedEvents count])
    {
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v14 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v13];
        if ([v14 type] == 3)
        {
          break;
        }

        if ([v14 type] != 11)
        {
          v11[2](v11);
          if (![v14 type])
          {
            [v14 setWordPosition:v12];
            if (v12 == 4)
            {
              for (i = 0; i != -5; --i)
              {
                v16 = [(NSArray *)self->_sortedEvents objectAtIndexedSubscript:v13 + i];
                [v16 setIsShortWord:0];
              }
            }

            else if (v12 >= 5)
            {
              [v14 setIsShortWord:0];
            }

            ++v12;
            goto LABEL_14;
          }

          goto LABEL_13;
        }

LABEL_14:

        if (++v13 >= [(NSArray *)self->_sortedEvents count])
        {
          goto LABEL_23;
        }
      }

      [v32[5] addObject:v14];
LABEL_13:
      v12 = 0;
      goto LABEL_14;
    }

LABEL_23:
    v11[2](v11);
    [(TISKMetricCollector *)self _metricWalk];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = self->_currentSessionStatsArray;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v26 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v26 + 1) + 8 * j);
          v23 = [v22 startTime];
          [(TISKMetricCollector *)self totalTimeSpan];
          v24 = [v23 dateByAddingTimeInterval:?];
          [v22 setEndTime:v24];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v26 objects:v37 count:16];
      }

      while (v19);
    }

    _Block_object_dispose(&v31, 8);
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __37__TISKMetricCollector__processEvents__block_invoke_225(uint64_t a1)
{
  if ([*(*(*(a1 + 32) + 8) + 40) count] >= 2)
  {
    v2 = [*(*(*(a1 + 32) + 8) + 40) count] - 1;
    if (v2 >= 0)
    {
      v3 = 0;
      do
      {
        v4 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndex:v2];
        [v4 setDeletePostion:v3];

        --v2;
        ++v3;
      }

      while (v2 != -1);
    }
  }

  v5 = *(*(*(a1 + 32) + 8) + 40);

  return [v5 removeAllObjects];
}

uint64_t __37__TISKMetricCollector__processEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 order];
  v6 = [v4 order];

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (void)_consumeInputsAndTouches:(id)a3 occurenceTime:(double)a4 emojiSearchMode:(BOOL)a5
{
  v33 = a5;
  v39 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = a3;
  v7 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        v12 = [v11 touchEvent];

        if (v12)
        {
          eventOrder = self->_eventOrder;
          v14 = [(TITypingSession *)self->_typingSession sessionParams];
          v15 = [v14 wordSeparator];
          v16 = [TISKInputEvent makeInputEvent:v11 emojiSearchMode:v33 order:eventOrder wordSeparator:v15 accentedLanguage:self->_accentedLanguage];

          touchToEventMap = self->_touchToEventMap;
          v18 = MEMORY[0x277CCABB0];
          v19 = [v11 touchEvent];
          v20 = [v18 numberWithLong:v19];
          [(NSMutableDictionary *)touchToEventMap setObject:v16 forKey:v20];
          goto LABEL_8;
        }

        v16 = [v11 string];
        if (![v16 length])
        {
          goto LABEL_10;
        }

        v21 = [v11 string];
        v22 = [(TITypingSession *)self->_typingSession sessionParams];
        v23 = [v22 wordSeparator];
        v24 = [v21 isEqualToString:v23];

        if ((v24 & 1) == 0)
        {
          v25 = [v11 string];
          v26 = [v25 _containsEmoji];

          if (v26)
          {
            [(TISKMetricCollector *)self loadEmojiBucketDictionaryIfNecessary];
            v27 = [TISKEmojiInputEvent alloc];
            v28 = self->_eventOrder;
            emojiBuckets = self->_emojiBuckets;
            v19 = [v11 string];
            v20 = [(NSDictionary *)emojiBuckets objectForKey:v19];
            v16 = [(TISKEmojiInputEvent *)v27 init:v33 emojiSearchMode:v28 order:v20 emojiBucketCategory:a4];
LABEL_8:
          }

          else
          {
            v16 = [[TISKTouchlessInputEvent alloc] init:v33 order:self->_eventOrder];
          }

          self->_eventOrder += 100;
          [(NSMutableArray *)self->_events addObject:v16];
LABEL_10:
        }

        ++v10;
      }

      while (v8 != v10);
      v30 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      v8 = v30;
    }

    while (v30);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_consumeDeleteWordEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 keyboardState];
  v6 = [v5 emojiSearchMode];

  v7 = [v4 allKeyboardInputs];
  [v4 occurenceTime];
  [(TISKMetricCollector *)self _consumeInputsAndTouches:v7 occurenceTime:v6 emojiSearchMode:?];

  touches = self->_touches;
  v9 = [v4 allTouches];
  [(NSMutableArray *)touches addObjectsFromArray:v9];

  layoutIDs = self->_layoutIDs;
  v11 = [v4 touchLayoutsM];

  [(NSMutableArray *)layoutIDs addObjectsFromArray:v11];
  events = self->_events;
  v13 = [[TISKWordDeleteEvent alloc] initWithEmojiSearchMode:v6 order:self->_eventOrder];
  [(NSMutableArray *)events addObject:v13];
}

- (void)_consumeWordEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 keyboardState];
  v6 = [v5 emojiSearchMode];

  v7 = [v4 allKeyboardInputs];
  [v4 occurenceTime];
  [(TISKMetricCollector *)self _consumeInputsAndTouches:v7 occurenceTime:v6 emojiSearchMode:?];

  [(TISKMetricCollector *)self _consumePathsAndPredictions:v4 emojiSearchMode:v6];
  touches = self->_touches;
  v9 = [v4 allTouches];
  [(NSMutableArray *)touches addObjectsFromArray:v9];

  layoutIDs = self->_layoutIDs;
  v11 = [v4 touchLayoutsM];

  [(NSMutableArray *)layoutIDs addObjectsFromArray:v11];
}

- (void)_consumeUserAction:(id)a3
{
  v10 = a3;
  if ([v10 actionType] == 2 && -[NSMutableArray count](self->_events, "count"))
  {
    events = self->_events;
    v5 = [TISKCursorMoveEvent alloc];
    [v10 occurenceTime];
    v7 = v6;
    v8 = [v10 keyboardState];
    v9 = -[TISKCursorMoveEvent init:emojiSearchMode:order:](v5, "init:emojiSearchMode:order:", [v8 emojiSearchMode], self->_eventOrder, v7);
    [(NSMutableArray *)events addObject:v9];

    self->_eventOrder += 100;
  }
}

- (id)_consumeTypingSession:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(TISKMetricCollector *)self _resetConsumeState];
  objc_storeStrong(&self->_typingSession, a3);
  [(TISKMetricCollector *)self setupSessionStatsForLayouts];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = v5;
  v6 = [v5 userActionHistory];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 keyboardState];
        v13 = [v12 textInputTraits];
        if ([v13 autocorrectionType] == 1)
        {
          v14 = [v11 keyboardState];
          v15 = [v14 emojiSearchMode];

          if (!v15)
          {
            continue;
          }
        }

        else
        {
        }

        v16 = [v11 actionType];
        if (v16 == 1)
        {
          [(TISKMetricCollector *)self _consumeDeleteWordEvent:v11];
        }

        else if (v16)
        {
          [(TISKMetricCollector *)self _consumeUserAction:v11];
        }

        else
        {
          [(TISKMetricCollector *)self _consumeWordEntry:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  while (1)
  {
    v17 = [(NSMutableArray *)self->_events lastObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      break;
    }

    [(NSMutableArray *)self->_events removeLastObject];
  }

  if ([(NSMutableArray *)self->_touches count])
  {
    [(TISKMetricCollector *)self _coalesceTaps];
    [(TISKMetricCollector *)self _mapTapsToEvents];
    [(TISKMetricCollector *)self _processEvents];
    v19 = self->_currentSessionStatsArray;
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)setupSessionStatsForLayouts
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(TITypingSession *)self->_typingSession layouts];
  v3 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v36;
    v30 = *v36;
    do
    {
      v6 = 0;
      v31 = v4;
      do
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v35 + 1) + 8 * v6);
        if ([(TISKMetricCollector *)self findIndexSessionStatsFromArray:self->_currentSessionStatsArray thatHasLayout:v7]== -1)
        {
          v34 = [TISKSessionStats alloc];
          v8 = [(TITypingSession *)self->_typingSession startTime];
          v9 = [(TITypingSession *)self->_typingSession endTime];
          identifier = self->_identifier;
          v10 = [(TITypingSession *)self->_typingSession locale];
          v11 = [v10 localeIdentifier];
          v12 = MEMORY[0x277CBEB18];
          v13 = [(TITypingSession *)self->_typingSession sessionId];
          v14 = [v13 UUIDString];
          v15 = [v12 arrayWithObject:v14];
          v16 = [(TISKSessionStats *)v34 init:v8 endDate:v9 identifier:identifier version:@"v.1.0" inputMode:v11 sessionIds:v15 layout:v7];

          v5 = v30;
          v4 = v31;

          [(NSMutableArray *)self->_currentSessionStatsArray addObject:v16];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v4);
  }

  if (self->_accentedLanguage)
  {
    v17 = [MEMORY[0x277CBEB38] dictionary];
    v18 = [MEMORY[0x277CBEB18] array];
    accentedLayoutsMap = self->_accentedLayoutsMap;
    self->_accentedLayoutsMap = v18;

    v20 = [(TITypingSession *)self->_typingSession layouts];
    v21 = [v20 count];

    if (v21)
    {
      v22 = 0;
      do
      {
        v23 = [(TITypingSession *)self->_typingSession layouts];
        v24 = [v23 objectAtIndexedSubscript:v22];

        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v24, "firstKeyString")}];
        v26 = [v17 objectForKey:v25];
        if (!v26)
        {
          [v17 setObject:v24 forKey:v25];
          v26 = v24;
        }

        [(NSMutableArray *)self->_accentedLayoutsMap setObject:v26 atIndexedSubscript:v22];

        ++v22;
        v27 = [(TITypingSession *)self->_typingSession layouts];
        v28 = [v27 count];
      }

      while (v22 < v28);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (int64_t)findIndexSessionStatsFromArray:(id)a3 thatHasLayout:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [v5 objectAtIndex:v7];
      v9 = [v8 layout];
      [v9 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [v6 frame];
      v25.origin.x = v18;
      v25.origin.y = v19;
      v25.size.width = v20;
      v25.size.height = v21;
      v24.origin.x = v11;
      v24.origin.y = v13;
      v24.size.width = v15;
      v24.size.height = v17;
      v22 = CGRectEqualToRect(v24, v25);

      if (v22)
      {
        break;
      }

      if (++v7 >= [v5 count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = -1;
  }

  return v7;
}

- (void)_clear
{
  events = self->_events;
  self->_events = 0;

  touches = self->_touches;
  self->_touches = 0;

  layoutIDs = self->_layoutIDs;
  self->_layoutIDs = 0;

  touchToEventMap = self->_touchToEventMap;
  self->_touchToEventMap = 0;

  sortedEvents = self->_sortedEvents;
  self->_sortedEvents = 0;

  currentSessionStatsArray = self->_currentSessionStatsArray;
  self->_currentSessionStatsArray = 0;

  accentedLayoutsMap = self->_accentedLayoutsMap;
  self->_accentedLayoutsMap = 0;
}

- (void)_resetConsumeState
{
  v3 = [MEMORY[0x277CBEB18] array];
  currentSessionStatsArray = self->_currentSessionStatsArray;
  self->_currentSessionStatsArray = v3;

  v5 = [MEMORY[0x277CBEB18] array];
  events = self->_events;
  self->_events = v5;

  v7 = [MEMORY[0x277CBEB18] array];
  touches = self->_touches;
  self->_touches = v7;

  v9 = [MEMORY[0x277CBEB18] array];
  layoutIDs = self->_layoutIDs;
  self->_layoutIDs = v9;

  v11 = [MEMORY[0x277CBEB38] dictionary];
  touchToEventMap = self->_touchToEventMap;
  self->_touchToEventMap = v11;

  sortedEvents = self->_sortedEvents;
  self->_sortedEvents = 0;

  self->_eventOrder = 100;
}

- (void)_setupTCCAuthNotification
{
  v17 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  handler = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __48__TISKMetricCollector__setupTCCAuthNotification__block_invoke;
  v12 = &unk_27872EC08;
  objc_copyWeak(&v13, &location);
  if (notify_register_dispatch("com.apple.tcc.access.changed", &self->_tccNotifyToken, workQueue, &handler))
  {
    v4 = IXADefaultLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = [(TIInputMode *)self->_inputMode normalizedIdentifier];
      v8 = [v6 stringWithFormat:@"%s [SensorKit] failed to setup notification with TCC for input mode %@", "-[TISKMetricCollector _setupTCCAuthNotification]", v7, handler, v10, v11, v12];
      *buf = 138412290;
      v16 = v8;
      _os_log_error_impl(&dword_22CA55000, v4, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    self->_tccNotifyToken = -1;
  }

  else
  {
    [(TISKMetricCollector *)self testTCCAuthorization];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__TISKMetricCollector__setupTCCAuthNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained testTCCAuthorization];
}

- (void)testTCCAuthorization
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D6C1F0];
  v4 = TCCAccessCopyBundleIdentifiersForService();
  v5 = v4;
  if (!self->_skipTCCAuthorization && ![v4 count])
  {
    dataWriter = IXADefaultLogFacility();
    if (os_log_type_enabled(dataWriter, OS_LOG_TYPE_DEBUG))
    {
      v15 = MEMORY[0x277CCACA8];
      v16 = [(TIInputMode *)self->_inputMode normalizedIdentifier];
      v17 = [v15 stringWithFormat:@"%s [SensorKit] TCC is not authorized for input mode %@", "-[TISKMetricCollector testTCCAuthorization]", v16];
      *buf = 138412290;
      v19 = v17;
      _os_log_debug_impl(&dword_22CA55000, dataWriter, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v7 = 0;
    goto LABEL_11;
  }

  v6 = IXADefaultLogFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [(TIInputMode *)self->_inputMode normalizedIdentifier];
    v14 = [v12 stringWithFormat:@"%s [SensorKit] Got TCC authorization for input mode %@", "-[TISKMetricCollector testTCCAuthorization]", v13];
    *buf = 138412290;
    v19 = v14;
    _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  if (!self->_dataWriter)
  {
    v8 = +[SRSensorWriterWrapper writerInstance];
    v9 = objc_alloc_init(SRSensorWriterWrapper);
    dataWriter = self->_dataWriter;
    self->_dataWriter = v9;
    v7 = 1;
LABEL_11:

    goto LABEL_12;
  }

  v7 = 1;
LABEL_12:
  self->_isTCCAuthorized = v7;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  tccNotifyToken = self->_tccNotifyToken;
  if (tccNotifyToken != -1)
  {
    notify_cancel(tccNotifyToken);
  }

  v4.receiver = self;
  v4.super_class = TISKMetricCollector;
  [(TISKMetricCollector *)&v4 dealloc];
}

- (id)loadDataWithFilename:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:v4 withExtension:@"plist"];

  v9 = 0;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v6 error:&v9];

  return v7;
}

- (id)init:(id)a3 wordsThreshold:(unint64_t)a4 accentedLanguage:(BOOL)a5 skipTCCAuthorization:(BOOL)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v40.receiver = self;
  v40.super_class = TISKMetricCollector;
  v12 = [(TISKMetricCollector *)&v40 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_inputMode, a3);
    currentSessionStatsArray = v13->_currentSessionStatsArray;
    v13->_currentSessionStatsArray = 0;

    v13->_wordPosition = -1;
    dataWriter = v13->_dataWriter;
    v13->_dataWriter = 0;

    v13->_wordAccumulationThreshold = 8;
    if (os_variant_has_internal_ui())
    {
      v13->_wordAccumulationThreshold = a4;
    }

    v16 = [MEMORY[0x277CBEB18] array];
    savedSessionStatsArray = v13->_savedSessionStatsArray;
    v13->_savedSessionStatsArray = v16;

    v13->_isLoaded = 0;
    v18 = [MEMORY[0x277D6F548] sharedUserModelDataStore];
    userModelDataStore = v13->_userModelDataStore;
    v13->_userModelDataStore = v18;

    v13->_accentedLanguage = a5;
    accentedLayoutsMap = v13->_accentedLayoutsMap;
    v13->_accentedLayoutsMap = 0;

    v21 = +[TICryptographer sharedCryptographer];
    v22 = [(TIInputMode *)v13->_inputMode normalizedIdentifier];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = @"KEYBOARD";
    }

    v25 = [v21 stringDigestForName:v24];
    identifier = v13->_identifier;
    v13->_identifier = v25;

    if (!v13->_identifier)
    {
      v13->_identifier = @"KEYBOARD-digest";
      v27 = IXADefaultLogFacility();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] _identifier is nil", "-[TISKMetricCollector init:wordsThreshold:accentedLanguage:skipTCCAuthorization:]"];
        *buf = 138412290;
        v42 = v39;
        _os_log_error_impl(&dword_22CA55000, v27, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_attr_make_with_qos_class(v28, QOS_CLASS_UTILITY, 0);

    v30 = dispatch_queue_create("com.apple.textInput.TCCNotification", v29);
    workQueue = v13->_workQueue;
    v13->_workQueue = v30;

    v13->_tccNotifyToken = -1;
    v13->_isTCCAuthorized = 0;
    v13->_skipTCCAuthorization = a6;
    v32 = objc_alloc(MEMORY[0x277CD89D8]);
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CD8958], 0}];
    v34 = [v32 initWithTagSchemes:v33];
    tagger = v13->_tagger;
    v13->_tagger = v34;

    previousWord = v13->_previousWord;
    v13->_previousWord = 0;
  }

  [(TISKMetricCollector *)v13 _setupTCCAuthNotification];

  v37 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)isSensorKitSupported:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a3 normalizedIdentifier];
  v4 = TIInputModeGetLanguage();

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [&unk_28400B868 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(&unk_28400B868);
        }

        if ([v4 isEqualToString:*(*(&v12 + 1) + 8 * i)])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [&unk_28400B868 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)placeTaskOnWorkQueue:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7 = v4;
  v6 = v4;
  TIDispatchAsync();
}

uint64_t __66__TISKMetricCollector_TISKSessionStatsTest__placeTaskOnWorkQueue___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = IXADefaultLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [SensorKit] dequeue session", "-[TISKMetricCollector(TISKSessionStatsTest) placeTaskOnWorkQueue:]_block_invoke"];
    *buf = 138412290;
    v7 = v5;
    _os_log_debug_impl(&dword_22CA55000, v2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

@end