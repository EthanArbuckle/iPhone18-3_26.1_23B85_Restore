@interface RepeatedConnFailureDetector
- (RepeatedConnFailureDetector)init;
- (void)_excessiveConnFailuresDetectedOn:(id)a3 owner:(id)a4;
- (void)_flush;
- (void)dealloc;
- (void)noteSuspectFlow:(id)a3 withOwner:(id)a4;
@end

@implementation RepeatedConnFailureDetector

- (void)_flush
{
  v57 = *MEMORY[0x277D85DE8];
  v41 = [MEMORY[0x277CBEAA8] date];
  [(NSDate *)v41 timeIntervalSinceReferenceDate];
  v4 = v3;
  v42 = [MEMORY[0x277CBEB18] array];
  v5 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    flowRecords = self->_flowRecords;
    *buf = 138412290;
    v53 = flowRecords;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "RCF: Attempting to flush, flow records are %@", buf, 0xCu);
  }

  v7 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    reportDampeners = self->_reportDampeners;
    *buf = 138412290;
    v53 = reportDampeners;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "RCF: Before flush, dampeners are %@", buf, 0xCu);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = self->_flowRecords;
  v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v48;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v47 + 1) + 8 * i);
        v15 = [(NSMutableDictionary *)self->_flowRecords objectForKeyedSubscript:v14];
        [v15 lastConnectionFailTime];
        if (v4 - v16 > 80.0)
        {
          v17 = flowLogHandle;
          if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v53 = v14;
            v54 = 2112;
            v55 = v15;
            _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "RCF: aged out failure tracker %@ -> %@", buf, 0x16u);
          }

          [v42 addObject:v14];
        }
      }

      v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v11);
  }

  [(NSMutableDictionary *)self->_flowRecords removeObjectsForKeys:v42];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v18 = self->_reportDampeners;
  v19 = [(NSMutableDictionary *)v18 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v44;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v43 + 1) + 8 * j);
        v24 = [(NSMutableDictionary *)self->_reportDampeners objectForKeyedSubscript:v23];
        v25 = [v24 suppressReportingUntil];
        [v25 timeIntervalSinceNow];
        v27 = v26;

        if (v27 < 0.0)
        {
          v28 = objc_alloc(MEMORY[0x277CBEAA8]);
          v29 = [v24 suppressReportingUntil];
          v30 = [v28 initWithTimeInterval:v29 sinceDate:3600.0];

          if (![v24 numSuppressedReports] || (objc_msgSend(v30, "timeIntervalSinceNow"), v31 < 0.0))
          {
            if ([v24 numSuppressedReports])
            {
              v32 = flowLogHandle;
              if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
              {
                v33 = v32;
                v34 = [v24 numSuppressedReports];
                *buf = 138412546;
                v53 = v23;
                v54 = 2048;
                v55 = v34;
                _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_ERROR, "RCF: Process %@ had %lld connection failures unreported when flushing dampener cache", buf, 0x16u);
              }
            }

            [v42 addObject:v23];
          }
        }
      }

      v20 = [(NSMutableDictionary *)v18 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v20);
  }

  [(NSMutableDictionary *)self->_reportDampeners removeObjectsForKeys:v42];
  v35 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v36 = self->_flowRecords;
    *buf = 138412290;
    v53 = v36;
    _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEBUG, "RCF: After flush, flow records are %@", buf, 0xCu);
  }

  v37 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v38 = self->_reportDampeners;
    *buf = 138412290;
    v53 = v38;
    _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEBUG, "RCF: After flush, dampeners are %@", buf, 0xCu);
  }

  lastFlush = self->_lastFlush;
  self->_lastFlush = v41;

  v40 = *MEMORY[0x277D85DE8];
}

- (void)_excessiveConnFailuresDetectedOn:(id)a3 owner:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 processName];
  v9 = [(NSMutableDictionary *)self->_reportDampeners objectForKeyedSubscript:v8];
  if (!v9)
  {
    v9 = objc_alloc_init(ReportDampener);
    v10 = [MEMORY[0x277CBEAA8] distantPast];
    [(ReportDampener *)v9 setSuppressReportingUntil:v10];

    [(NSMutableDictionary *)self->_reportDampeners setObject:v9 forKeyedSubscript:v8];
  }

  [v6 _logFailure];
  v11 = [(ReportDampener *)v9 suppressReportingUntil];
  [v11 timeIntervalSinceNow];
  v13 = v12;

  if (v13 >= 0.0)
  {
    v17 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v8;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "RCF: Repeated conn failure report suppressed for %@", &v19, 0xCu);
    }

    v16 = [(ReportDampener *)v9 numSuppressedReports]+ 1;
    v15 = v9;
  }

  else
  {
    [v6 _reportFailure:-[ReportDampener numSuppressedReports](v9 owner:{"numSuppressedReports"), v7}];
    v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:3600.0];
    [(ReportDampener *)v9 setSuppressReportingUntil:v14];

    v15 = v9;
    v16 = 0;
  }

  [(ReportDampener *)v15 setNumSuppressedReports:v16];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)noteSuspectFlow:(id)a3 withOwner:(id)a4
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = COERCE_DOUBLE(a3);
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [*&v6 remoteAddress];
  v10 = [*&v6 interfaceIndex];
  [*&v6 processName];
  v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  [(NSDate *)self->_lastFlush timeIntervalSinceNow];
  v13 = v12;
  if (v12 < -300.0)
  {
    v14 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v62 = -v13;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "RCF: Time since last flush %.3f, time to flush again", buf, 0xCu);
    }

    [(RepeatedConnFailureDetector *)self _flush];
  }

  if (![(NSSet *)self->_whitelistedDaemons containsObject:*&v11])
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%d", *&v11, v9, v10];
    v17 = [(NSMutableDictionary *)self->_flowRecords objectForKeyedSubscript:v16];
    if (v17)
    {
      v18 = v17;
      [*&v6 flowStartTimeIntervalSinceReferenceDate];
      v20 = v19;
      [*&v6 flowDuration];
      v22 = v20 + v21;
      [(ConnectionFailureTracker *)v18 lastConnectionFailTime];
      v24 = v20 - v23;
      v25 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v26 = v25;
        v27 = timeStringMillisecondsFromReferenceInterval(v22);
        *buf = 138413059;
        v62 = v11;
        v63 = 2112;
        v64 = *&v27;
        v65 = 2113;
        *v66 = v16;
        *&v66[8] = 2112;
        v67 = v18;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "RCF: For %@ connection failing at %@ found existing tracker %{private}@ -> %@", buf, 0x2Au);
      }

      if (v24 > 2.0)
      {
        v28 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v62 = v11;
          v63 = 2048;
          v64 = v24;
          _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_INFO, "RCF: Existing failure tracker for %@, gap %.3f > allowed, clear old failure records", buf, 0x16u);
        }

        [(ConnectionFailureTracker *)v18 noteInitialSnapshot:*&v6];
        goto LABEL_41;
      }

      v31 = [(ConnectionFailureTracker *)v18 failedFlows];
      v32 = v31;
      if (v24 >= 0.0)
      {
        v44 = [v31 count];

        if (v44 >= 0xA)
        {
          v45 = [(ConnectionFailureTracker *)v18 failedFlows];
          [v45 removeObjectAtIndex:0];
        }

        v46 = objc_alloc_init(ConnectionFailureInstance);
        [*&v6 flowStartTimeIntervalSinceReferenceDate];
        [(ConnectionFailureInstance *)v46 setFlowStart:?];
        [*&v6 flowDuration];
        [(ConnectionFailureInstance *)v46 setFlowDuration:?];
        v47 = [(ConnectionFailureTracker *)v18 failedFlows];
        [v47 addObject:v46];

        [(ConnectionFailureTracker *)v18 setLastConnectionFailTime:v22];
        [(ConnectionFailureTracker *)v18 setNumConsecutiveFailures:[(ConnectionFailureTracker *)v18 numConsecutiveFailures]+ 1];
        v48 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
        {
          v49 = v48;
          v58 = [(ConnectionFailureTracker *)v18 numConsecutiveFailures];
          loga = [(ConnectionFailureTracker *)v18 failedFlows];
          v50 = [loga count];
          *buf = 138413058;
          v62 = v11;
          v63 = 2112;
          v64 = *&v7;
          v65 = 1024;
          *v66 = v58;
          *&v66[4] = 1024;
          *&v66[6] = v50;
          _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_INFO, "RCF: Existing failure tracker for %@ owner %@, count now %d, saved %d", buf, 0x22u);
        }

        if ([(ConnectionFailureTracker *)v18 numConsecutiveFailures]>= 20)
        {
          [(ConnectionFailureTracker *)v18 lastConnectionFailTime];
          v52 = v51;
          [(ConnectionFailureTracker *)v18 firstConnectionFailTime];
          if (v52 - v53 > 1200.0)
          {
            v54 = flowLogHandle;
            if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138477827;
              v62 = v6;
              _os_log_impl(&dword_23255B000, v54, OS_LOG_TYPE_INFO, "RCF: Excessive failure detection triggered by snapshot %{private}@", buf, 0xCu);
            }

            [(RepeatedConnFailureDetector *)self _excessiveConnFailuresDetectedOn:v18 owner:v7];
            [(NSMutableDictionary *)self->_flowRecords removeObjectForKey:v16];
          }
        }

        goto LABEL_41;
      }

      v33 = [v31 lastObject];

      v34 = flowLogHandle;
      if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      log = v34;
      [v33 flowStart];
      v57 = timeStringMillisecondsFromReferenceInterval(v35);
      [v33 flowDuration];
      v37 = v36;
      [*&v6 flowStartTimeIntervalSinceReferenceDate];
      v39 = timeStringMillisecondsFromReferenceInterval(v38);
      [*&v6 flowDuration];
      *buf = 138413571;
      v62 = v11;
      v63 = 2112;
      v64 = *&v57;
      v65 = 2048;
      *v66 = v37;
      *&v66[8] = 2112;
      v67 = v39;
      v68 = 2048;
      v69 = v40;
      v70 = 2113;
      v71 = v9;
      v41 = log;
      _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "RCF: Apparently overlapping connection attempts from %@, %@ %.3f and %@ %.3f to %{private}@, ignore", buf, 0x3Eu);
    }

    else
    {
      if ([(NSMutableDictionary *)self->_flowRecords count]>= 0x14)
      {
        v29 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_INFO, "RCF: Tracking at maximum, attempt flush", buf, 2u);
        }

        [(RepeatedConnFailureDetector *)self _flush];
      }

      if ([(NSMutableDictionary *)self->_flowRecords count]>= 0x14)
      {
        v30 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v62 = v11;
          _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_INFO, "RCF: Tracking at maximum, skip creation of new failure tracker for %@", buf, 0xCu);
        }

        *&v18 = 0.0;
        goto LABEL_43;
      }

      *&v18 = COERCE_DOUBLE(objc_alloc_init(ConnectionFailureTracker));
      if (![(ConnectionFailureTracker *)v18 noteInitialSnapshot:*&v6])
      {
LABEL_43:

        goto LABEL_44;
      }

      [(NSMutableDictionary *)self->_flowRecords setObject:v18 forKeyedSubscript:v16];
      v42 = flowLogHandle;
      if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
      {
LABEL_41:
        v55 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v62 = *&v18;
          _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_DEBUG, "RCF: failure tracker now %@", buf, 0xCu);
        }

        goto LABEL_43;
      }

      v33 = v42;
      [(ConnectionFailureTracker *)v18 lastConnectionFailTime];
      v41 = timeStringMillisecondsFromReferenceInterval(v43);
      *buf = 138413059;
      v62 = v11;
      v63 = 2112;
      v64 = *&v41;
      v65 = 2113;
      *v66 = v16;
      *&v66[8] = 2112;
      v67 = v18;
      _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEBUG, "RCF: For %@ connection failing at %@, create new tracker %{private}@ -> %@", buf, 0x2Au);
    }

LABEL_30:
    goto LABEL_41;
  }

  v15 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v62 = v11;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "RCF: Ignoring suspect flow from whitelisted daemon %@", buf, 0xCu);
  }

LABEL_44:

  objc_autoreleasePoolPop(v8);
  v56 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "RCF: Deallocating handler %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = RepeatedConnFailureDetector;
  [(RepeatedConnFailureDetector *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (RepeatedConnFailureDetector)init
{
  v17 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = RepeatedConnFailureDetector;
  v2 = [(RepeatedConnFailureDetector *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    flowRecords = v2->_flowRecords;
    v2->_flowRecords = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    reportDampeners = v2->_reportDampeners;
    v2->_reportDampeners = v5;

    v7 = [MEMORY[0x277CBEAA8] date];
    lastFlush = v2->_lastFlush;
    v2->_lastFlush = v7;

    v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"nsurlsessiond", @"mediaserverd", @"mediaplaybackd", @"audiomxd", @"airplayd", @"avconferenced", @"com.apple.WebKit", @"assistantd", @"symptomsd", 0}];
    whitelistedDaemons = v2->_whitelistedDaemons;
    v2->_whitelistedDaemons = v9;

    v11 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v2;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "RCF created handler %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

@end