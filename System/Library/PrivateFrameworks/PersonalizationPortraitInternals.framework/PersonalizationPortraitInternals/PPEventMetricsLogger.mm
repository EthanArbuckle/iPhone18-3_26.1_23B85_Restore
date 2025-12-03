@interface PPEventMetricsLogger
+ (id)defaultLogger;
+ (unint64_t)numberOfDaysBetweenDate:(id)date andDate:(id)andDate;
- (BOOL)_removeInteractionsSummaryLogsFromLogsAndResetStoreAge:(id)age;
- (BOOL)resetLogs;
- (BOOL)storeToDisk;
- (PPEventMetricsLogger)init;
- (PPEventMetricsLogger)initWithCoder:(id)coder;
- (PPEventMetricsLogger)initWithFileName:(id)name;
- (double)_storeAge;
- (id)_createRTCReporting;
- (id)_descriptionForActionType:(unsigned __int16)type;
- (id)_descriptionForInterface:(unsigned __int16)interface;
- (id)_descriptionForPPRTCCategory:(unsigned __int16)category;
- (id)_interactionAttributesForEventHighlight:(id)highlight;
- (id)allowedLogFromLog:(id)log;
- (id)eventsAndExtraordinaryEventsDictFromDate:(id)date;
- (id)loggedInteractionsSummaryMetrics;
- (id)logsToSend;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)logNewInteractionSummaryWithDictionary:(id)dictionary;
- (void)sendRTCLogsWithCompletion:(id)completion;
- (void)updateAndScheduleDiskWrite;
@end

@implementation PPEventMetricsLogger

- (void)dealloc
{
  v3 = pp_events_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEBUG, "PPEventMetricsLogger going away now", buf, 2u);
  }

  pthread_mutex_destroy(&self->_lock);
  dispatch_source_cancel(self->_persistenceTimerSource);
  v4.receiver = self;
  v4.super_class = PPEventMetricsLogger;
  [(PPEventMetricsLogger *)&v4 dealloc];
}

- (id)loggedInteractionsSummaryMetrics
{
  pthread_mutex_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_loggedInteractionsSummary copy];
  pthread_mutex_unlock(&self->_lock);

  return v3;
}

- (id)_descriptionForPPRTCCategory:(unsigned __int16)category
{
  if ((category + 1) > 0xAu)
  {
    return @"unknown";
  }

  else
  {
    return off_278972870[(category + 1)];
  }
}

- (id)_descriptionForActionType:(unsigned __int16)type
{
  if (type > 4u)
  {
    return @"unknown";
  }

  else
  {
    return off_278972848[type];
  }
}

- (id)_descriptionForInterface:(unsigned __int16)interface
{
  if (interface > 0xAu)
  {
    return @"unknown";
  }

  else
  {
    return off_2789727F0[interface];
  }
}

- (id)_interactionAttributesForEventHighlight:(id)highlight
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  highlightCopy = highlight;
  v5 = [v3 alloc];
  features = [highlightCopy features];

  v7 = [features _pas_componentsJoinedByString:{@", "}];
  v8 = [v5 initWithFormat:@"[%@]", v7, @"rankingFeatures"];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)allowedLogFromLog:(id)log
{
  logCopy = log;
  [logCopy removeObjectForKey:@"eventIdentifier"];
  [logCopy removeObjectForKey:@"expirationDate"];

  return logCopy;
}

- (id)logsToSend
{
  pthread_mutex_lock(&self->_lock);
  v13 = objc_opt_new();
  if ([(NSMutableArray *)self->_loggedInteractionsSummary count])
  {
    v3 = 0;
    while (1)
    {
      v4 = [(NSMutableArray *)self->_loggedInteractionsSummary objectAtIndexedSubscript:v3];
      v5 = [v4 objectForKeyedSubscript:@"categoryLog"];
      v6 = [(PPEventMetricsLogger *)self _descriptionForPPRTCCategory:8];
      if (([v5 isEqualToString:v6] & 1) == 0)
      {
        break;
      }

      v7 = objc_opt_new();
      v8 = [(NSMutableArray *)self->_loggedInteractionsSummary objectAtIndexedSubscript:v3];
      v9 = [v8 objectForKeyedSubscript:@"expirationDate"];
      v10 = [v7 compare:v9];

      if (v10 == 1)
      {
        v11 = objc_alloc(MEMORY[0x277CBEB38]);
        v4 = [(NSMutableArray *)self->_loggedInteractionsSummary objectAtIndexedSubscript:v3];
        v5 = [v11 initWithDictionary:v4 copyItems:1];
        [v13 addObject:v5];
LABEL_7:
      }

      if (++v3 >= [(NSMutableArray *)self->_loggedInteractionsSummary count])
      {
        goto LABEL_9;
      }
    }

    goto LABEL_7;
  }

LABEL_9:
  pthread_mutex_unlock(&self->_lock);

  return v13;
}

- (BOOL)_removeInteractionsSummaryLogsFromLogsAndResetStoreAge:(id)age
{
  v19 = *MEMORY[0x277D85DE8];
  ageCopy = age;
  pthread_mutex_lock(&self->_lock);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_storeCreationDate = v5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = ageCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NSMutableArray *)self->_loggedInteractionsSummary removeObject:*(*(&v14 + 1) + 8 * v10++), v14];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  pthread_mutex_unlock(&self->_lock);
  storeToDisk = [(PPEventMetricsLogger *)self storeToDisk];

  v12 = *MEMORY[0x277D85DE8];
  return storeToDisk;
}

- (double)_storeAge
{
  pthread_mutex_lock(&self->_lock);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3 - self->_storeCreationDate;
  pthread_mutex_unlock(&self->_lock);
  return v4;
}

- (BOOL)resetLogs
{
  pthread_mutex_lock(&self->_lock);
  v3 = objc_opt_new();
  loggedInteractionsSummary = self->_loggedInteractionsSummary;
  self->_loggedInteractionsSummary = v3;

  pthread_mutex_unlock(&self->_lock);

  return [(PPEventMetricsLogger *)self storeToDisk];
}

- (id)eventsAndExtraordinaryEventsDictFromDate:(id)date
{
  v33 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (dateCopy)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = objc_opt_new();
    [v5 setDay:-7];
    v6 = [currentCalendar dateByAddingComponents:v5 toDate:dateCopy options:0];
    if (v6)
    {
      v7 = +[PPLocalEventStore defaultStore];
      v8 = [v7 eventHighlightsFrom:v6 to:dateCopy options:1];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        LODWORD(v12) = 0;
        v13 = *v21;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v12 = v12 + [*(*(&v20 + 1) + 8 * i) isExtraordinary];
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
        }

        while (v11);
      }

      else
      {
        v12 = 0;
      }

      v24[0] = @"eventHighlightsCount";
      v16 = [MEMORY[0x277CCABB0] numberWithInt:v12];
      v24[1] = @"ekEventsCount";
      v25[0] = v16;
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSObject count](v9, "count")}];
      v25[1] = v17;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    }

    else
    {
      v9 = pp_default_log_handle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v28 = currentCalendar;
        v29 = 2112;
        v30 = v5;
        v31 = 2112;
        v32 = dateCopy;
        _os_log_fault_impl(&dword_23224A000, v9, OS_LOG_TYPE_FAULT, "eventsAndExtraordinaryEventsDictFromDate failed to get startDate from c:%@ add:%@ d:%@", buf, 0x20u);
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)logNewInteractionSummaryWithDictionary:(id)dictionary
{
  v9 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = pp_events_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = dictionaryCopy;
    _os_log_debug_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEBUG, "PPEventMetricsLogger: log new interaction summary: %@", &v7, 0xCu);
  }

  pthread_mutex_lock(&self->_lock);
  [(NSMutableArray *)self->_loggedInteractionsSummary addObject:dictionaryCopy];
  pthread_mutex_unlock(&self->_lock);
  [(PPEventMetricsLogger *)self updateAndScheduleDiskWrite];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateAndScheduleDiskWrite
{
  v3 = pp_events_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEBUG, "PPEventMetricsLogger: updating and scheduling disk write", buf, 2u);
  }

  v4 = pp_events_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEBUG, "PPEventMetricsLogger: updating and scheduling disk write for real", v7, 2u);
  }

  persistenceTimerSource = self->_persistenceTimerSource;
  v6 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(persistenceTimerSource, v6, 0xFFFFFFFFFFFFFFFFLL, 0xB2D05E00uLL);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pthread_mutex_lock(&self->_lock);
  [coderCopy encodeObject:self->_path forKey:@"path"];
  [coderCopy encodeObject:self->_loggedInteractionsSummary forKey:@"loggedInteractionsSummary"];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_storeCreationDate];
  [coderCopy encodeObject:v5 forKey:@"storeCreationDate"];

  pthread_mutex_unlock(&self->_lock);
}

- (PPEventMetricsLogger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PPEventMetricsLogger *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v6;

    v8 = objc_alloc(MEMORY[0x277CBEB98]);
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v8 initWithObjects:{v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"loggedInteractionsSummary"];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = objc_opt_new();
    }

    loggedInteractionsSummary = v5->_loggedInteractionsSummary;
    v5->_loggedInteractionsSummary = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeCreationDate"];
    [v21 doubleValue];
    v5->_storeCreationDate = v22;

    if (v5->_storeCreationDate == 0.0)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v5->_storeCreationDate = v23;
    }
  }

  return v5;
}

- (void)sendRTCLogsWithCompletion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = pp_events_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_INFO, "PPEventMetricsLogger: Sending privacy-aware suggestions log over the network", buf, 2u);
  }

  pthread_mutex_lock(&self->_lock);
  logsToSend = [(PPEventMetricsLogger *)self logsToSend];
  pthread_mutex_unlock(&self->_lock);
  v7 = [logsToSend count] == 0;
  v8 = pp_events_log_handle();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v9, OS_LOG_TYPE_INFO, "PPEventMetricsLogger: No RTC logs to send this time. Skipping.", buf, 2u);
    }

    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v13 = [logsToSend count];
      *buf = 134218242;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = logsToSend;
      _os_log_debug_impl(&dword_23224A000, v9, OS_LOG_TYPE_DEBUG, "PPEventMetricsLogger: Selected logs (%lu): %@", buf, 0x16u);
    }

    _createRTCReporting = [(PPEventMetricsLogger *)self _createRTCReporting];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v24 = 0;
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__PPEventMetricsLogger_sendRTCLogsWithCompletion___block_invoke;
    v14[3] = &unk_2789727D0;
    v18 = completionCopy;
    v15 = logsToSend;
    selfCopy = self;
    v11 = _createRTCReporting;
    v17 = v11;
    v19 = buf;
    v20 = v21;
    [v11 startConfigurationWithCompletionHandler:v14];

    _Block_object_dispose(v21, 8);
    _Block_object_dispose(buf, 8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __50__PPEventMetricsLogger_sendRTCLogsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v3 = *(a1 + 32);
    v30 = [v3 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (!v30)
    {
      goto LABEL_22;
    }

    v31 = 0;
    v5 = *v35;
    *&v4 = 138412290;
    v27 = v4;
    v28 = *v35;
    v29 = v3;
    while (1)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v34 + 1) + 8 * i);
        v8 = [v7 mutableCopy];
        v9 = *(a1 + 40);
        v10 = [v7 objectForKeyedSubscript:@"expirationDate"];
        v11 = [v9 eventsAndExtraordinaryEventsDictFromDate:v10];

        if (v11)
        {
          [v8 addEntriesFromDictionary:v11];
        }

        v12 = [*(a1 + 40) allowedLogFromLog:v8];
        v13 = *(a1 + 48);
        v33 = 0;
        v14 = [v13 sendMessageWithCategory:8 type:0 payload:v12 error:&v33];
        v15 = v33;
        if (v14)
        {
          *(*(*(a1 + 64) + 8) + 24) = 1;
          if (v31)
          {
            v31 = 1;
            goto LABEL_20;
          }

          v38 = @"storeAge";
          v17 = MEMORY[0x277CCABB0];
          v18 = *(a1 + 48);
          [*(a1 + 40) _storeAge];
          v19 = [v17 numberWithDouble:?];
          v39 = v19;
          v31 = 1;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          v32 = v15;
          LOBYTE(v18) = [v18 sendMessageWithCategory:2 type:0 payload:v20 error:&v32];
          v21 = v32;

          if (v18)
          {
            v15 = v21;
            v5 = v28;
            v3 = v29;
            goto LABEL_20;
          }

          v16 = pp_default_log_handle();
          v5 = v28;
          v3 = v29;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v27;
            v41 = v21;
            _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "PPEventMetricsLogger: Unable to send logs for storeAge: %@", buf, 0xCu);
          }

          v31 = 1;
          v15 = v21;
        }

        else
        {
          v16 = pp_default_log_handle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v27;
            v41 = v15;
            _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "PPEventMetricsLogger: Unable to send logs: %@", buf, 0xCu);
          }
        }

LABEL_20:
      }

      v30 = [v3 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (!v30)
      {
LABEL_22:

        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 48) flushMessages];
          if (*(*(*(a1 + 72) + 8) + 24) == 1)
          {
            [*(a1 + 40) _removeInteractionsSummaryLogsFromLogsAndResetStoreAge:*(a1 + 32)];
          }

          else
          {
            v24 = pp_default_log_handle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_23224A000, v24, OS_LOG_TYPE_ERROR, "PPEventMetricsLogger: Unable to flush logs", buf, 2u);
            }
          }
        }

        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {
          v25 = *(*(*(a1 + 72) + 8) + 24);
        }

        else
        {
          v25 = 0;
        }

        result = (*(*(a1 + 56) + 16))(*(a1 + 56), v25 & 1, 0);
        goto LABEL_35;
      }
    }
  }

  v22 = pp_events_log_handle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v22, OS_LOG_TYPE_DEFAULT, "PPEventMetricsLogger: No RTC backends found, no logs will be sent at this time.", buf, 2u);
  }

  result = (*(*(a1 + 56) + 16))();
LABEL_35:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_createRTCReporting
{
  v15[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:CFAbsoluteTimeGetCurrent()];
  v3 = *MEMORY[0x277D44040];
  v14[0] = *MEMORY[0x277D44030];
  v14[1] = v3;
  v15[0] = &unk_284783BD0;
  v15[1] = &unk_284783BE8;
  v4 = *MEMORY[0x277D44010];
  v14[2] = *MEMORY[0x277D44080];
  v14[3] = v4;
  v15[2] = v2;
  v15[3] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v6 = *MEMORY[0x277D44098];
  v12[0] = *MEMORY[0x277D44090];
  v12[1] = v6;
  v13[0] = @"Suggestions";
  v13[1] = @"com.apple.PersonalizationPortrait";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v8 = objc_alloc(MEMORY[0x277D43FE0]);
  v9 = [v8 initWithSessionInfo:v5 userInfo:v7 frameworksToCheck:MEMORY[0x277CBEBF8]];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)storeToDisk
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = pp_events_log_handle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    path = self->_path;
    v9 = 138412290;
    v10 = path;
    _os_log_impl(&dword_23224A000, v3, OS_LOG_TYPE_INFO, "PPEventMetricsLogger: Persisting some logs to disk! path: %@", &v9, 0xCu);
  }

  pthread_mutex_lock(&self->_lock);
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v6 = [v5 writeToFile:self->_path atomically:0];
  pthread_mutex_unlock(&self->_lock);

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (PPEventMetricsLogger)initWithFileName:(id)name
{
  nameCopy = name;
  v6 = [(PPEventMetricsLogger *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, name);
  }

  return v7;
}

- (PPEventMetricsLogger)init
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = PPEventMetricsLogger;
  v2 = [(PPEventMetricsLogger *)&v20 init];
  v3 = v2;
  if (v2)
  {
    path = v2->_path;
    v2->_path = 0;

    v5 = objc_opt_new();
    loggedInteractionsSummary = v3->_loggedInteractionsSummary;
    v3->_loggedInteractionsSummary = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v8 = dispatch_queue_create("com.apple.suggestd.pp-interactions-write-queue", v7);
    interactionsWriteQueue = v3->_interactionsWriteQueue;
    v3->_interactionsWriteQueue = v8;

    v21.__sig = 0;
    *v21.__opaque = 0;
    pthread_mutexattr_init(&v21);
    pthread_mutexattr_settype(&v21, 2);
    pthread_mutex_init(&v3->_lock, &v21);
    pthread_mutexattr_destroy(&v21);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_BACKGROUND, 0);
    v12 = dispatch_queue_create("pp-rtc-persist", v11);

    v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v12);
    persistenceTimerSource = v3->_persistenceTimerSource;
    v3->_persistenceTimerSource = v13;

    objc_initWeak(&v21, v3);
    v15 = v3->_persistenceTimerSource;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __28__PPEventMetricsLogger_init__block_invoke;
    v18[3] = &unk_2789797B8;
    objc_copyWeak(&v19, &v21);
    dispatch_source_set_event_handler(v15, v18);
    dispatch_resume(v3->_persistenceTimerSource);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v3;
}

void __28__PPEventMetricsLogger_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained storeToDisk];
}

+ (unint64_t)numberOfDaysBetweenDate:(id)date andDate:(id)andDate
{
  v5 = MEMORY[0x277CBEA80];
  andDateCopy = andDate;
  dateCopy = date;
  v8 = [v5 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v10 = [v9 components:16 fromDate:dateCopy toDate:andDateCopy options:0];

  v11 = [v10 day];
  return v11;
}

+ (id)defaultLogger
{
  if (defaultLogger_onceToken != -1)
  {
    dispatch_once(&defaultLogger_onceToken, &__block_literal_global_3771);
  }

  v3 = defaultLogger_sharedLogger;

  return v3;
}

void __37__PPEventMetricsLogger_defaultLogger__block_invoke()
{
  v0 = +[PPPaths topDirectory];
  v1 = [v0 stringByAppendingPathComponent:@"pp-privacyAwareLogging.ser"];

  v2 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v2 fileExistsAtPath:v1])
  {
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [v3 attributesOfItemAtPath:v1 error:0];
    v5 = [v4 fileSize];

    if (v5)
    {
      v6 = pp_events_log_handle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Attempt to read stored logs", buf, 2u);
      }

      v7 = objc_alloc(MEMORY[0x277CCAAC8]);
      v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v1];
      v9 = [v7 initForReadingFromData:v8 error:0];

      [v9 setDecodingFailurePolicy:0];
      v10 = [v9 decodeTopLevelObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308] error:0];
      v11 = defaultLogger_sharedLogger;
      defaultLogger_sharedLogger = v10;

      goto LABEL_10;
    }
  }

  else
  {
  }

  v12 = pp_events_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 0;
    _os_log_debug_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEBUG, "New logging store", v15, 2u);
  }

  v13 = [[PPEventMetricsLogger alloc] initWithFileName:v1];
  v14 = defaultLogger_sharedLogger;
  defaultLogger_sharedLogger = v13;

LABEL_10:
}

@end