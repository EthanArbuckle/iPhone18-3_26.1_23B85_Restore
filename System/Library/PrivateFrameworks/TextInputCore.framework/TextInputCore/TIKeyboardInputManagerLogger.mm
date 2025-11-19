@interface TIKeyboardInputManagerLogger
+ (BOOL)createTypologyDirectoryAtURL:(id)a3;
+ (id)_writeToFileWithTypologyLog:(id)a3 directoryURL:(id)a4 requireDeviceUnlocked:(BOOL)a5;
+ (id)accessibilityConfigInfo;
+ (void)_backgroundPruneLogsWithPreferences:(id)a3;
+ (void)_backgroundWriteLog:(id)a3 preferences:(id)a4 completion:(id)a5;
+ (void)_writeHumanReadableTraceForTypologyLog:(id)a3 directoryURL:(id)a4;
+ (void)pruneTypologyLogsAtDirectoryURL:(id)a3 toMaxNumBytes:(int64_t)a4 expirationInterval:(double)a5 satisfyingPredicate:(id)a6;
+ (void)submitAggregrateDictionaryReport:(id)a3 inputModeIdentifier:(id)a4;
- (BOOL)allowTypologyLogForKeyboardState:(id)a3;
- (BOOL)isInternalDeviceWithForcedTypologyLoggingForTesting;
- (BOOL)shouldWriteToSyslogForKeyboardState:(id)a3;
- (TIKeyboardInputManagerLogger)initWithTypologyPreferences:(id)a3;
- (id)writeToFile;
- (void)_tryWriteToSyslogWithTrace:(id)a3;
- (void)backgroundWriteLogs;
- (void)dealloc;
- (void)didReachMaximumEntries:(id)a3;
- (void)disableTypologyLogIfNecessaryForKeyboardState:(id)a3;
- (void)logAutocorrections:(id)a3 trace:(id)a4 forKeyboardState:(id)a5 requestToken:(id)a6;
- (void)logCandidateResultSet:(id)a3 trace:(id)a4 forKeyboardState:(id)a5 requestToken:(id)a6;
- (void)logHitKeyCode:(int64_t)a3 forTouchEvent:(id)a4 keyboardState:(id)a5;
- (void)logKeyboardConfig:(id)a3 forSyncToKeyboardState:(id)a4;
- (void)logKeyboardConfig:(id)a3 textToCommit:(id)a4 forAcceptedCandidate:(id)a5 keyboardState:(id)a6;
- (void)logKeyboardLayout:(id)a3 name:(id)a4;
- (void)logKeyboardOutput:(id)a3 keyboardConfiguration:(id)a4 trace:(id)a5 forKeyboardInput:(id)a6 keyboardState:(id)a7;
- (void)logReceivedCandidateRejected:(id)a3;
- (void)logReceivedLastAcceptedCandidateCorrected;
- (void)logReceivedSetOriginalInput:(id)a3;
- (void)logReceivedSkipHitTestForTouchEvent:(id)a3 forKeyboardState:(id)a4;
- (void)logReceivedTextAccepted:(id)a3;
- (void)logRefinements:(id)a3 forCandidate:(id)a4 keyboardState:(id)a5;
- (void)logReplacements:(id)a3 forString:(id)a4 keyLayout:(id)a5;
- (void)setConfig:(id)a3;
- (void)tryStartingTypologyLogForSyncToKeyboardState:(id)a3;
@end

@implementation TIKeyboardInputManagerLogger

- (void)dealloc
{
  v3 = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [v3 finalizeComputation];

  v4 = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  v5 = [v4 aggregateReport];

  v6 = [(TIKeyboardInputManagerLogger *)self inputModeIdentifier];
  [TIKeyboardInputManagerLogger submitAggregrateDictionaryReport:v5 inputModeIdentifier:v6];

  [(TIKeyboardInputManagerLogger *)self backgroundWriteLogs];
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerLogger;
  [(TIKeyboardInputManagerLogger *)&v7 dealloc];
}

- (void)backgroundWriteLogs
{
  v4 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  v3 = [(TIKeyboardInputManagerLogger *)self typologyPreferences];
  if (v4 && TI_DEVICE_UNLOCKED() && [v3 typologyLoggingEnabled])
  {
    [objc_opt_class() _backgroundWriteLog:v4 preferences:v3 completion:&__block_literal_global_83];
  }
}

- (void)logKeyboardLayout:(id)a3 name:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D6F4F0];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setName:v7];

  [v9 setKeyboardLayout:v8];
  v10 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [v10 logRecord:v9];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:0])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v11 = TIOSLogFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = MEMORY[0x277CCACA8];
        v14 = [v9 shortDescription];
        v15 = [v13 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logKeyboardLayout:name:]", v14];
        *buf = 138412290;
        v17 = v15;
        _os_log_debug_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logReceivedLastAcceptedCandidateCorrected
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D6F4F8]);
  v4 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [v4 logRecord:v3];

  v5 = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [v5 visitRecordLastAcceptedCandidateCorrected:v3];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:0])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v6 = TIOSLogFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = MEMORY[0x277CCACA8];
        v9 = [v3 shortDescription];
        v10 = [v8 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logReceivedLastAcceptedCandidateCorrected]", v9];
        *buf = 138412290;
        v12 = v10;
        _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logReceivedCandidateRejected:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D6F4C8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setCandidate:v5];

  v7 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [v7 logRecord:v6];

  v8 = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [v8 visitRecordCandidateRejected:v6];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:0])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v9 = TIOSLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [v6 shortDescription];
        v13 = [v11 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logReceivedCandidateRejected:]", v12];
        *buf = 138412290;
        v15 = v13;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logReceivedTextAccepted:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D6F530];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setCandidate:v5];

  v7 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [v7 logRecord:v6];

  v8 = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [v8 visitRecordTextAccepted:v6];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:0])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v9 = TIOSLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [v6 shortDescription];
        v13 = [v11 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logReceivedTextAccepted:]", v12];
        *buf = 138412290;
        v15 = v13;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logReceivedSetOriginalInput:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D6F518];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setOriginalInput:v5];

  v7 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [v7 logRecord:v6];

  v8 = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [v8 visitRecordSetOriginalInput:v6];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:0])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v9 = TIOSLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [v6 shortDescription];
        v13 = [v11 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logReceivedSetOriginalInput:]", v12];
        *buf = 138412290;
        v15 = v13;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)logReceivedSkipHitTestForTouchEvent:(id)a3 forKeyboardState:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:v7];
  v8 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  v9 = [v8 loggedRecordOfClass:objc_opt_class()];

  if ((v9 & 1) == 0)
  {
    v10 = [v7 keyLayout];
    [(TIKeyboardInputManagerLogger *)self logKeyboardLayout:v10 name:&stru_283FDFAF8];
  }

  if (![v6 stage])
  {
    v11 = objc_alloc_init(MEMORY[0x277D6F4D8]);
    [v11 setKeyboardState:v7];
    v12 = [(TIKeyboardInputManagerLogger *)self typologyLog];
    [v12 logRecord:v11];
  }

  v13 = objc_alloc_init(MEMORY[0x277D6F520]);
  [v13 setTouchEvent:v6];
  [v13 setKeyboardState:v7];
  v14 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [v14 logRecord:v13];

  v15 = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [v15 visitRecordSkipHitTest:v13];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:v7])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v16 = TIOSLogFacility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = MEMORY[0x277CCACA8];
        v19 = [v13 shortDescription];
        v20 = [v18 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logReceivedSkipHitTestForTouchEvent:forKeyboardState:]", v19];
        *buf = 138412290;
        v22 = v20;
        _os_log_debug_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)logHitKeyCode:(int64_t)a3 forTouchEvent:(id)a4 keyboardState:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:v9];
  v10 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  v11 = [v10 loggedRecordOfClass:objc_opt_class()];

  if ((v11 & 1) == 0)
  {
    v12 = [v9 keyLayout];
    [(TIKeyboardInputManagerLogger *)self logKeyboardLayout:v12 name:&stru_283FDFAF8];
  }

  if (![v8 stage])
  {
    v13 = objc_alloc_init(MEMORY[0x277D6F4D8]);
    [v13 setKeyboardState:v9];
    v14 = [(TIKeyboardInputManagerLogger *)self typologyLog];
    [v14 logRecord:v13];
  }

  v15 = objc_alloc_init(MEMORY[0x277D6F4E0]);
  [v15 setKeyCode:a3];
  [v15 setTouchEvent:v8];
  [v15 setKeyboardState:v9];
  v16 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [v16 logRecord:v15];

  v17 = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [v17 visitRecordHitTest:v15];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:v9])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v18 = TIOSLogFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v20 = MEMORY[0x277CCACA8];
        v21 = [v15 shortDescription];
        v22 = [v20 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logHitKeyCode:forTouchEvent:keyboardState:]", v21];
        *buf = 138412290;
        v24 = v22;
        _os_log_debug_impl(&dword_22CA55000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)logRefinements:(id)a3 forCandidate:(id)a4 keyboardState:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:v8];
  v11 = objc_alloc_init(MEMORY[0x277D6F508]);
  [v11 setCandidate:v9];

  [v11 setRefinements:v10];
  [v11 setKeyboardState:v8];
  v12 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [v12 logRecord:v11];

  v13 = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [v13 visitRecordRefinements:v11];

  LODWORD(self) = [(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:v8];
  if (self)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v14 = TIOSLogFacility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = [v11 shortDescription];
        v18 = [v16 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logRefinements:forCandidate:keyboardState:]", v17];
        *buf = 138412290;
        v20 = v18;
        _os_log_debug_impl(&dword_22CA55000, v14, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)logReplacements:(id)a3 forString:(id)a4 keyLayout:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D6F510];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(v8);
  [v12 setCandidates:v11];

  [v12 setString:v10];
  [v12 setKeyLayout:v9];

  v13 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [v13 logRecord:v12];

  v14 = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [v14 visitRecordReplacements:v12];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:0])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v15 = TIOSLogFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = MEMORY[0x277CCACA8];
        v18 = [v12 shortDescription];
        v19 = [v17 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logReplacements:forString:keyLayout:]", v18];
        *buf = 138412290;
        v21 = v19;
        _os_log_debug_impl(&dword_22CA55000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)logKeyboardConfig:(id)a3 textToCommit:(id)a4 forAcceptedCandidate:(id)a5 keyboardState:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:v10];
  if (v11)
  {
    v14 = objc_alloc_init(MEMORY[0x277D6F4D8]);
    [v14 setKeyboardState:v10];
    v15 = [(TIKeyboardInputManagerLogger *)self typologyLog];
    [v15 logRecord:v14];
  }

  v16 = objc_alloc_init(MEMORY[0x277D6F4B8]);
  [v16 setKeyboardConfig:v13];

  [v16 setTextToCommit:v12];
  [v16 setCandidate:v11];

  [v16 setKeyboardState:v10];
  v17 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [v17 logRecord:v16];

  v18 = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [v18 visitRecordAcceptedCandidate:v16];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:v10])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v19 = TIOSLogFacility();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v21 = MEMORY[0x277CCACA8];
        v22 = [v16 shortDescription];
        v23 = [v21 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logKeyboardConfig:textToCommit:forAcceptedCandidate:keyboardState:]", v22];
        *buf = 138412290;
        v25 = v23;
        _os_log_debug_impl(&dword_22CA55000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)logCandidateResultSet:(id)a3 trace:(id)a4 forKeyboardState:(id)a5 requestToken:(id)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:v12];
  v14 = objc_alloc_init(MEMORY[0x277D6F4D0]);
  [v14 setResultSet:v13];

  [v14 setKeyboardState:v12];
  [v14 setRequestToken:v11];

  v15 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [v15 logRecord:v14 trace:v10];

  v16 = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [v16 visitRecordCandidateResultSet:v14];

  LODWORD(v16) = [(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:v12];
  if (v16)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v17 = TIOSLogFacility();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v19 = MEMORY[0x277CCACA8];
        v20 = [v14 shortDescription];
        v21 = [v19 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logCandidateResultSet:trace:forKeyboardState:requestToken:]", v20];
        *buf = 138412290;
        v23 = v21;
        _os_log_debug_impl(&dword_22CA55000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    if ([v10 length])
    {
      [(TIKeyboardInputManagerLogger *)self _tryWriteToSyslogWithTrace:v10];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)logAutocorrections:(id)a3 trace:(id)a4 forKeyboardState:(id)a5 requestToken:(id)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:v12];
  v14 = objc_alloc_init(MEMORY[0x277D6F4C0]);
  [v14 setAutocorrections:v13];

  [v14 setListUIDisplayed:{objc_msgSend(v12, "autocorrectionListUIDisplayed")}];
  [v14 setKeyboardState:v12];
  [v14 setRequestToken:v11];

  v15 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [v15 logRecord:v14 trace:v10];

  v16 = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [v16 visitRecordAutocorrections:v14];

  LODWORD(v16) = [(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:v12];
  if (v16)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v17 = TIOSLogFacility();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v19 = MEMORY[0x277CCACA8];
        v20 = [v14 shortDescription];
        v21 = [v19 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logAutocorrections:trace:forKeyboardState:requestToken:]", v20];
        *buf = 138412290;
        v23 = v21;
        _os_log_debug_impl(&dword_22CA55000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    if ([v10 length])
    {
      [(TIKeyboardInputManagerLogger *)self _tryWriteToSyslogWithTrace:v10];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)logKeyboardOutput:(id)a3 keyboardConfiguration:(id)a4 trace:(id)a5 forKeyboardInput:(id)a6 keyboardState:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a4;
  v16 = a3;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:v14];
  v17 = [v13 touchEvent];

  if (!v17)
  {
    v18 = objc_alloc_init(MEMORY[0x277D6F4D8]);
    [v18 setKeyboardState:v14];
    v19 = [(TIKeyboardInputManagerLogger *)self typologyLog];
    [v19 logRecord:v18];
  }

  v20 = objc_alloc_init(MEMORY[0x277D6F4E8]);
  [v20 setOutput:v16];

  [v20 setKeyboardConfig:v15];
  [v20 setKeyboardState:v14];
  [v20 setInput:v13];
  v21 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [v21 logRecord:v20 trace:v12];

  v22 = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [v22 visitRecordKeyboardInput:v20];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:v14])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v23 = TIOSLogFacility();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v25 = MEMORY[0x277CCACA8];
        v26 = [v20 shortDescription];
        v27 = [v25 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logKeyboardOutput:keyboardConfiguration:trace:forKeyboardInput:keyboardState:]", v26];
        *buf = 138412290;
        v29 = v27;
        _os_log_debug_impl(&dword_22CA55000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    if ([v12 length])
    {
      [(TIKeyboardInputManagerLogger *)self _tryWriteToSyslogWithTrace:v12];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)logKeyboardConfig:(id)a3 forSyncToKeyboardState:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  [(TIKeyboardInputManagerLogger *)self disableTypologyLogIfNecessaryForKeyboardState:v6];
  [(TIKeyboardInputManagerLogger *)self tryStartingTypologyLogForSyncToKeyboardState:v6];
  v8 = objc_alloc_init(MEMORY[0x277D6F4D8]);
  [v8 setKeyboardState:v6];
  v9 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [v9 logRecord:v8];

  v10 = objc_alloc_init(MEMORY[0x277D6F528]);
  [v10 setKeyboardConfig:v7];

  [v10 setKeyboardState:v6];
  v11 = [(TIKeyboardInputManagerLogger *)self inputModeIdentifier];

  if (!v11)
  {
    v12 = [v6 inputMode];
    [(TIKeyboardInputManagerLogger *)self setInputModeIdentifier:v12];
  }

  v13 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [v13 logRecord:v10];

  v14 = [(TIKeyboardInputManagerLogger *)self typologyStatistic];
  [v14 visitRecordSync:v10];

  if ([(TIKeyboardInputManagerLogger *)self shouldWriteToSyslogForKeyboardState:v6])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v15 = TIOSLogFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = MEMORY[0x277CCACA8];
        v18 = [v10 shortDescription];
        v19 = [v17 stringWithFormat:@"%s %@", "-[TIKeyboardInputManagerLogger logKeyboardConfig:forSyncToKeyboardState:]", v18];
        *buf = 138412290;
        v21 = v19;
        _os_log_debug_impl(&dword_22CA55000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_tryWriteToSyslogWithTrace:(id)a3
{
  v3 = a3;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    v5 = v3;
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    v3 = v5;
  }

  if (TICanLogMessageAtLevel_logLevel >= 3)
  {
    v4 = v3;
    [v3 enumerateLinesUsingBlock:&__block_literal_global_101];
    v3 = v4;
  }
}

void __59__TIKeyboardInputManagerLogger__tryWriteToSyslogWithTrace___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 3)
  {
    v3 = TIOSLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = [(__CFString *)v2 length];
      v7 = @" ";
      if (v6)
      {
        v7 = v2;
      }

      v8 = [v5 stringWithFormat:@"%s %@\n", "-[TIKeyboardInputManagerLogger _tryWriteToSyslogWithTrace:]_block_invoke", v7];
      *buf = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)setConfig:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  [v5 setConfig:v4];
}

- (id)writeToFile
{
  v3 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  v4 = [(TIKeyboardInputManagerLogger *)self typologyPreferences];
  v5 = v4;
  if (v3 && [v4 typologyLoggingEnabled] && ((TI_DEVICE_UNLOCKED() & 1) != 0 || -[TIKeyboardInputManagerLogger isInternalDeviceWithForcedTypologyLoggingForTesting](self, "isInternalDeviceWithForcedTypologyLoggingForTesting")))
  {
    v6 = [v5 typologyDirectoryURL];
    v7 = [TIKeyboardInputManagerLogger _writeToFileWithTypologyLog:v3 directoryURL:v6 requireDeviceUnlocked:[(TIKeyboardInputManagerLogger *)self isInternalDeviceWithForcedTypologyLoggingForTesting]^ 1];
    v8 = [(TIKeyboardInputManagerLogger *)self typologyLog];
    [v8 setDelegate:0];

    [(TIKeyboardInputManagerLogger *)self setTypologyLog:0];
    [(TIKeyboardInputManagerLogger *)self setSbsOverrideLoggingCapture:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isInternalDeviceWithForcedTypologyLoggingForTesting
{
  v2 = [(TIKeyboardInputManagerLogger *)self typologyPreferences];
  v3 = [v2 isInternalDeviceWithForcedTypologyLoggingForTesting];

  return v3;
}

- (void)didReachMaximumEntries:(id)a3
{
  v20 = a3;
  v4 = [(TIKeyboardInputManagerLogger *)self typologyPreferences];
  v5 = [(TIKeyboardInputManagerLogger *)self typologyLog];
  if (v5)
  {
    v6 = v5;
    v7 = [(TIKeyboardInputManagerLogger *)self typologyLog];
    if (v7 == v20)
    {
      v8 = [v4 persistenceStrategy];

      if (v8 != 1)
      {
        goto LABEL_6;
      }

      v6 = [(TIKeyboardInputManagerLogger *)self typologyLog];
      [v6 setDelegate:0];
      v19 = objc_alloc(MEMORY[0x277D6F4B0]);
      v9 = [v6 uuid];
      v10 = [v6 partIndex];
      v11 = [v6 date];
      v12 = [v6 systemVersion];
      v13 = [v6 buildVersion];
      v14 = [v6 clientIdentifier];
      v15 = [v6 config];
      v16 = v10 + 1;
      v17 = v9;
      v7 = [v19 initWithUUID:v9 partIndex:v16 date:v11 systemVersion:v12 buildVersion:v13 clientIdentifier:v14 config:v15];

      [(TIKeyboardInputManagerLogger *)self setTypologyLog:v7];
      v18 = [(TIKeyboardInputManagerLogger *)self typologyLog];
      [v18 setDelegate:self];

      [objc_opt_class() _backgroundWriteLog:v6 preferences:v4 completion:&__block_literal_global_16865];
    }
  }

LABEL_6:
}

- (void)disableTypologyLogIfNecessaryForKeyboardState:(id)a3
{
  v6 = a3;
  v4 = [(TIKeyboardInputManagerLogger *)self typologyLog];

  if (v4 && ![(TIKeyboardInputManagerLogger *)self allowTypologyLogForKeyboardState:v6])
  {
    v5 = [(TIKeyboardInputManagerLogger *)self typologyLog];
    [v5 setDelegate:0];

    [(TIKeyboardInputManagerLogger *)self setTypologyLog:0];
    [(TIKeyboardInputManagerLogger *)self setSbsOverrideLoggingCapture:0];
  }
}

- (void)tryStartingTypologyLogForSyncToKeyboardState:(id)a3
{
  v10 = a3;
  v4 = [(TIKeyboardInputManagerLogger *)self typologyLog];

  if (!v4 && [(TIKeyboardInputManagerLogger *)self allowTypologyLogForKeyboardState:v10])
  {
    v5 = [(TIKeyboardInputManagerLogger *)self typologyPreferences];
    v6 = [v5 typologyLoggingEnabledByProfile];

    if (v6)
    {
      v7 = objc_alloc_init(TIStatusBarStyleOverrideLoggingCapture);
      [(TIKeyboardInputManagerLogger *)self setSbsOverrideLoggingCapture:v7];
    }

    v8 = objc_alloc_init(MEMORY[0x277D6F4B0]);
    [(TIKeyboardInputManagerLogger *)self setTypologyLog:v8];

    v9 = [(TIKeyboardInputManagerLogger *)self typologyLog];
    [v9 setDelegate:self];
  }
}

- (BOOL)allowTypologyLogForKeyboardState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  if ([v4 secureTextEntry])
  {
    goto LABEL_3;
  }

  v6 = [v5 clientIdentifier];
  if ([v6 isEqualToString:@"com.apple.mobilesafari"])
  {
    v7 = [v5 wordLearningEnabled];

    if ((v7 & 1) == 0)
    {
LABEL_3:
      [(TIKeyboardInputManagerLogger *)self setHadSecureText:1];
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (![(TIKeyboardInputManagerLogger *)self hadSecureText])
  {
    v10 = [(TIKeyboardInputManagerLogger *)self typologyPreferences];
    v8 = [v10 typologyLoggingEnabled];

    goto LABEL_10;
  }

LABEL_9:
  v8 = 0;
LABEL_10:

  return v8;
}

- (BOOL)shouldWriteToSyslogForKeyboardState:(id)a3
{
  v3 = a3;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel < 2)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 secureTextEntry] ^ 1;
  }

  return v4;
}

- (TIKeyboardInputManagerLogger)initWithTypologyPreferences:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15.receiver = self;
  v15.super_class = TIKeyboardInputManagerLogger;
  v6 = [(TIKeyboardInputManagerLogger *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_typologyPreferences, a3);
    v8 = [MEMORY[0x277D6F540] statistic];
    v16[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

    v10 = [MEMORY[0x277D6F538] statisticCompositeWithStatistics:v9];
    typologyStatistic = v7->_typologyStatistic;
    v7->_typologyStatistic = v10;
  }

  v12 = [(TIKeyboardInputManagerLogger *)v7 typologyStatistic];
  [v12 prepareForComputation];

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (void)pruneTypologyLogsAtDirectoryURL:(id)a3 toMaxNumBytes:(int64_t)a4 expirationInterval:(double)a5 satisfyingPredicate:(id)a6
{
  v45[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = *MEMORY[0x277CBE7B0];
  v12 = *MEMORY[0x277CBE838];
  v45[0] = *MEMORY[0x277CBE7B0];
  v45[1] = v12;
  v34 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v32 = v13;
  v33 = v9;
  v15 = [v14 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:v13 options:4 error:0];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __117__TIKeyboardInputManagerLogger_pruneTypologyLogsAtDirectoryURL_toMaxNumBytes_expirationInterval_satisfyingPredicate___block_invoke;
  v42[3] = &unk_2787325A8;
  v31 = v10;
  v43 = v31;
  v30 = [v15 indexesOfObjectsPassingTest:v42];
  v16 = [v15 objectsAtIndexes:?];

  v17 = [v16 sortedArrayUsingComparator:&__block_literal_global_97_16891];

  v35 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-a5];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v39;
    do
    {
      v23 = 0;
      do
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v38 + 1) + 8 * v23);
        v37 = 0;
        [v24 getResourceValue:&v37 forKey:v11 error:0];
        v25 = v37;
        v26 = v25;
        if (v21 > a4 || ([v25 earlierDate:v35], v27 = objc_claimAutoreleasedReturnValue(), v27, v27 == v26))
        {
          v28 = [MEMORY[0x277CCAA00] defaultManager];
          [v28 removeItemAtURL:v24 error:0];
        }

        else
        {
          v36 = 0;
          [v24 getResourceValue:&v36 forKey:v34 error:0];
          v21 += [v36 integerValue];
        }

        ++v23;
      }

      while (v20 != v23);
      v20 = [v18 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v20);
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __117__TIKeyboardInputManagerLogger_pruneTypologyLogsAtDirectoryURL_toMaxNumBytes_expirationInterval_satisfyingPredicate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = 0;
  v4 = *MEMORY[0x277CBE7B0];
  v5 = a3;
  [a2 getResourceValue:&v10 forKey:v4 error:0];
  v9 = 0;
  v6 = v10;
  [v5 getResourceValue:&v9 forKey:v4 error:0];

  v7 = [v9 compare:v6];
  return v7;
}

+ (void)submitAggregrateDictionaryReport:(id)a3 inputModeIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (TI_DEVICE_UNLOCKED_SINCE_BOOT() && [v6 length])
  {
    v7 = v5;
    v8 = v6;
    TIDispatchAsync();
  }
}

void __85__TIKeyboardInputManagerLogger_submitAggregrateDictionaryReport_inputModeIdentifier___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __85__TIKeyboardInputManagerLogger_submitAggregrateDictionaryReport_inputModeIdentifier___block_invoke_2;
  v2[3] = &unk_278732580;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
}

void __85__TIKeyboardInputManagerLogger_submitAggregrateDictionaryReport_inputModeIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v8 length])
  {
    v6 = *(a1 + 32);
    v7 = TIStatisticGetKeyForInputMode();
    if (v7)
    {
      if ([v8 containsString:@".distr"])
      {
        [v5 doubleValue];
        TIStatisticDistributionPushValue();
      }

      else
      {
        [v5 longLongValue];
        TIStatisticScalarAddValue();
      }
    }
  }
}

+ (void)_backgroundPruneLogsWithPreferences:(id)a3
{
  v3 = a3;
  v4 = [v3 typologyDirectoryURL];
  [v3 maxBytesPersistedTypologyRecords];
  [v3 maxBytesPersistedTypologyTraceLogs];
  [v3 maxLifetimeInterval];

  v5 = _TIQueueLow();
  v7 = v4;
  v6 = v4;
  TIDispatchAsync();
}

uint64_t __68__TIKeyboardInputManagerLogger__backgroundPruneLogsWithPreferences___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [TIKeyboardInputManagerLogger pruneTypologyLogsAtDirectoryURL:*(result + 32) toMaxNumBytes:v2 expirationInterval:&__block_literal_global_87_16900 satisfyingPredicate:*(result + 48)];
  }

  if (*(v1 + 7) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = *(v1 + 4);
    v4 = v1[6];

    return [TIKeyboardInputManagerLogger pruneTypologyLogsAtDirectoryURL:"pruneTypologyLogsAtDirectoryURL:toMaxNumBytes:expirationInterval:satisfyingPredicate:" toMaxNumBytes:v3 expirationInterval:v4 satisfyingPredicate:?];
  }

  return result;
}

uint64_t __68__TIKeyboardInputManagerLogger__backgroundPruneLogsWithPreferences___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D6F4B0];
  v3 = [a2 lastPathComponent];
  v4 = [v2 isTraceLogFilename:v3];

  return v4;
}

uint64_t __68__TIKeyboardInputManagerLogger__backgroundPruneLogsWithPreferences___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D6F4B0];
  v3 = [a2 lastPathComponent];
  v4 = [v2 isTypologyLogFilename:v3];

  return v4;
}

+ (void)_backgroundWriteLog:(id)a3 preferences:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = _TIQueueLow();
  v14 = v8;
  v15 = v7;
  v16 = v9;
  v11 = v9;
  v12 = v7;
  v13 = v8;
  TIDispatchAsync();
}

void __75__TIKeyboardInputManagerLogger__backgroundWriteLog_preferences_completion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) typologyDirectoryURL];
  v2 = [TIKeyboardInputManagerLogger _writeToFileWithTypologyLog:*(a1 + 40) directoryURL:v4 requireDeviceUnlocked:1];
  v3 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
}

+ (void)_writeHumanReadableTraceForTypologyLog:(id)a3 directoryURL:(id)a4
{
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (TI_DEVICE_UNLOCKED() && [objc_opt_class() createTypologyDirectoryAtURL:v6])
  {
    v7 = MEMORY[0x277CCAB68];
    v8 = [v5 date];
    v9 = [MEMORY[0x277CBEAF8] currentLocale];
    v10 = [v8 descriptionWithLocale:v9];
    v11 = [v7 stringWithFormat:@"Date: %@\n", v10];

    v12 = [v5 systemVersion];
    v13 = [v5 buildVersion];
    [v11 appendFormat:@"iOS version: %@ (%@)\n", v12, v13];

    v14 = [v5 filename];
    v15 = [v14 stringByReplacingOccurrencesOfString:@"typology" withString:@"typologyTrace" options:8 range:{0, objc_msgSend(v14, "length")}];

    v16 = [v15 stringByReplacingOccurrencesOfString:@".plist" withString:@".log" options:12 range:{0, objc_msgSend(v15, "length")}];

    v17 = [v6 URLByAppendingPathComponent:v16];
    v37 = *MEMORY[0x277CCA1B0];
    v38[0] = *MEMORY[0x277CCA190];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = [v17 path];
    v21 = [v11 dataUsingEncoding:4];
    v22 = [v19 createFileAtPath:v20 contents:v21 attributes:v18];

    if (v22)
    {
      v34 = 0;
      v23 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v17 error:&v34];
      v24 = v34;
      v25 = v24;
      if (v23 && !v24)
      {
        [v23 seekToEndOfFile];
        [v11 setString:&stru_283FDFAF8];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __84__TIKeyboardInputManagerLogger__writeHumanReadableTraceForTypologyLog_directoryURL___block_invoke;
        v31[3] = &unk_278732510;
        v26 = v11;
        v32 = v26;
        v33 = v23;
        v27 = v23;
        [v5 enumerateTraceRecordsWithBlock:v31];
        v28 = [v26 dataUsingEncoding:4];
        [v27 writeData:v28];

        [v26 setString:&stru_283FDFAF8];
        [v27 closeFile];

LABEL_12:
        goto LABEL_13;
      }
    }

    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v27 = TIOSLogFacility();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s failed to write trace", "+[TIKeyboardInputManagerLogger _writeHumanReadableTraceForTypologyLog:directoryURL:]"];
      *buf = 138412290;
      v36 = v30;
      _os_log_debug_impl(&dword_22CA55000, v27, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:

  v29 = *MEMORY[0x277D85DE8];
}

void __84__TIKeyboardInputManagerLogger__writeHumanReadableTraceForTypologyLog_directoryURL___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = [v8 logText];
  [v4 appendString:v5];

  [*(a1 + 32) appendString:@"\n"];
  if ([*(a1 + 32) length] >= 0x7D1)
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) dataUsingEncoding:4];
    [v6 writeData:v7];

    [*(a1 + 32) setString:&stru_283FDFAF8];
  }

  objc_autoreleasePoolPop(v3);
}

+ (id)accessibilityConfigInfo
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.Accessibility"];
  v3 = [v2 objectForKey:@"AccessibilityEnabled"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = [v2 BOOLForKey:@"FullKeyboardAccessEnabled"];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    [v5 setObject:v7 forKey:@"FullKeyboardAccessEnabled"];

    v8 = [v2 BOOLForKey:@"VoiceOverTouchUIEnabled"];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    [v5 setObject:v9 forKey:@"VoiceOverTouchUIEnabled"];

    v10 = [v2 BOOLForKey:@"VoiceOverTouchEnabled"];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    [v5 setObject:v11 forKey:@"VoiceOverTouchEnabled"];

    v12 = [v2 BOOLForKey:@"VOTIsRunningKey"];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    [v5 setObject:v13 forKey:@"VOTIsRunningKey"];

    v14 = [v2 integerForKey:@"VoiceOverTouchTypingMode"];
    v15 = @"Standard Typing";
    if (v14 == 2)
    {
      v15 = @"Direct Touch Typing";
    }

    if (v14 == 1)
    {
      v16 = @"Touch Typing";
    }

    else
    {
      v16 = v15;
    }

    [v5 setObject:v16 forKey:@"VoiceOverTouchTypingMode"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_writeToFileWithTypologyLog:(id)a3 directoryURL:(id)a4 requireDeviceUnlocked:(BOOL)a5
{
  v5 = a5;
  v27[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8 && (!v5 || TI_DEVICE_UNLOCKED()) && [objc_opt_class() createTypologyDirectoryAtURL:v9])
  {
    v10 = [v8 recommendedTypologyLogFilename];
    v11 = [v9 URLByAppendingPathComponent:v10];

    v12 = [v8 recommendedTraceLogFilename];
    v13 = [v9 URLByAppendingPathComponent:v12];

    v14 = [a1 accessibilityConfigInfo];
    v24 = 0;
    v15 = [v8 writeToTypologyLogFile:v11 andTraceLogFile:v13 withAccessibilityInfo:v14 error:&v24];
    v16 = v24;

    if (v15)
    {
      v27[0] = v11;
      v27[1] = v13;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    }

    else
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v18 = TIOSLogFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v21 = MEMORY[0x277CCACA8];
        v22 = [v8 filename];
        v23 = [v21 stringWithFormat:@"%s Error serializing and writing property list %@: %@", "+[TIKeyboardInputManagerLogger _writeToFileWithTypologyLog:directoryURL:requireDeviceUnlocked:]", v22, v16];
        *buf = 138412290;
        v26 = v23;
        _os_log_debug_impl(&dword_22CA55000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (BOOL)createTypologyDirectoryAtURL:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v12 = 0;
  v6 = [v5 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v12];

  v7 = v12;
  if ((v6 & 1) == 0)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v8 = TIOSLogFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s failed to create typology directory: %@", "+[TIKeyboardInputManagerLogger createTypologyDirectoryAtURL:]", v7];
      *buf = 138412290;
      v14 = v11;
      _os_log_debug_impl(&dword_22CA55000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

@end