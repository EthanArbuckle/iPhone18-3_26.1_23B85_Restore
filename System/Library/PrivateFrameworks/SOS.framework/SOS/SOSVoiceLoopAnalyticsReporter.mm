@interface SOSVoiceLoopAnalyticsReporter
- (SOSVoiceLoopAnalyticsReporter)initWithReason:(int64_t)reason language:(id)language dtmfAvailable:(BOOL)available;
- (VLAR_DTMFStateRecord)state;
- (double)_elapsedSeconds;
- (id)_newEventReportWithTrigger:(id)trigger;
- (void)_noteLoopInternalResumed;
- (void)_noteLoopStoppedBy:(unint64_t)by eventReport:(id)report;
- (void)_submitReport:(id)report;
- (void)reportVoiceLoopDidFinishHandlingDTMFDigitReceived:(char)received;
- (void)reportVoiceLoopDidReceiveCommand:(unint64_t)command;
- (void)reportVoiceLoopIndexChanged:(unint64_t)changed;
- (void)reportVoiceLoopLoopPhaseChanged:(unint64_t)changed;
- (void)reportVoiceLoopPlaybackStateChanged:(unint64_t)changed;
- (void)reportVoiceLoopSupportsDTMF:(BOOL)f;
- (void)reportVoiceLoopWillPerformAction:(unint64_t)action;
- (void)reportVoiceLoopWillStopLocally;
- (void)reportVoiceLoopWillTerminate;
- (void)setState:(VLAR_DTMFStateRecord *)state;
@end

@implementation SOSVoiceLoopAnalyticsReporter

- (SOSVoiceLoopAnalyticsReporter)initWithReason:(int64_t)reason language:(id)language dtmfAvailable:(BOOL)available
{
  languageCopy = language;
  v22.receiver = self;
  v22.super_class = SOSVoiceLoopAnalyticsReporter;
  v9 = [(SOSVoiceLoopAnalyticsReporter *)&v22 init];
  v10 = v9;
  if (v9)
  {
    v9->_voiceLoopReason = reason;
    if (languageCopy)
    {
      v11 = languageCopy;
    }

    else
    {
      v11 = @"Unknown";
    }

    objc_storeStrong(&v9->_language, v11);
    v12 = [MEMORY[0x277CBEAA8] now];
    loopStartDate = v10->_loopStartDate;
    v10->_loopStartDate = v12;

    v10->_state.dtmfAvailable = available;
    v14 = objc_alloc_init(VLAR_DTMFEventsAccumulator);
    dtmfEventAccumulator = v10->_dtmfEventAccumulator;
    v10->_dtmfEventAccumulator = v14;

    v16 = objc_alloc_init(VLAR_DTMFCommandsAccumulator);
    dtmfCommandsAccumulator = v10->_dtmfCommandsAccumulator;
    v10->_dtmfCommandsAccumulator = v16;

    v18 = objc_alloc_init(VLAR_DTMFActionsAccumulator);
    dtmfActionsAccumulator = v10->_dtmfActionsAccumulator;
    v10->_dtmfActionsAccumulator = v18;

    capture_FirstDTMFDigit = v10->_capture_FirstDTMFDigit;
    v10->_capture_FirstDTMFDigit = &stru_2875C9CD8;

    v10->_capture_Loop_StoppedBy = 0;
  }

  return v10;
}

- (double)_elapsedSeconds
{
  v3 = [MEMORY[0x277CBEAA8] now];
  [v3 timeIntervalSinceDate:self->_loopStartDate];
  v5 = v4;

  return v5;
}

- (void)reportVoiceLoopWillStopLocally
{
  v3 = sos_vlar_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "reportVoiceLoopWillStopLocally", v5, 2u);
  }

  v4 = [(SOSVoiceLoopAnalyticsReporter *)self _newEventReportWithTrigger:@"LoopStoppedLocally"];
  [(SOSVoiceLoopAnalyticsReporter *)self _noteLoopStoppedBy:1 eventReport:v4];
  [(SOSVoiceLoopAnalyticsReporter *)self _submitReport:v4];
}

- (void)reportVoiceLoopWillTerminate
{
  v3 = sos_vlar_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "reportVoiceLoopWillTerminate", v5, 2u);
  }

  v4 = [(SOSVoiceLoopAnalyticsReporter *)self _newEventReportWithTrigger:@"SessionEnded"];
  [(SOSVoiceLoopAnalyticsReporter *)self _submitReport:v4];
}

- (void)_noteLoopStoppedBy:(unint64_t)by eventReport:(id)report
{
  v28 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v7 = sos_vlar_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    byCopy2 = by;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_INFO, "_noteLoopStoppedBy:%tu", buf, 0xCu);
  }

  p_capture_Loop_StoppedBy = &self->_capture_Loop_StoppedBy;
  if (self->_capture_Loop_StoppedBy)
  {
    v9 = sos_vlar_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SOSVoiceLoopAnalyticsReporter *)p_capture_Loop_StoppedBy _noteLoopStoppedBy:v9 eventReport:v10, v11, v12, v13, v14, v15];
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!reportCopy || ([reportCopy state], v25 != 100))
  {
    v9 = sos_vlar_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (reportCopy)
      {
        [reportCopy state];
        v21 = v22;
      }

      else
      {
        v21 = 0;
      }

      *buf = 134217984;
      byCopy2 = v21;
      _os_log_error_impl(&dword_264323000, v9, OS_LOG_TYPE_ERROR, "_noteLoopStoppedBy but unexpected playbackState:%tu", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = sos_vlar_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    byCopy2 = by;
    _os_log_impl(&dword_264323000, v16, OS_LOG_TYPE_DEFAULT, "_noteLoopStoppedBy:%tu, capturing", buf, 0xCu);
  }

  self->_capture_Loop_StoppedBy = by;
  [reportCopy state];
  self->_capture_Loop_StoppedAt_Iteration = v24;
  [reportCopy state];
  self->_capture_Loop_StoppedAt_Phase = v23;
  [reportCopy elapsedSeconds];
  self->_capture_Loop_StoppedAt_Seconds = v17;
  self->_capture_Loop_CompletedIterations = self->_capture_Loop_StoppedAt_Iteration - 1;
  v18 = sos_vlar_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    capture_Loop_CompletedIterations = self->_capture_Loop_CompletedIterations;
    *buf = 134217984;
    byCopy2 = capture_Loop_CompletedIterations;
    _os_log_impl(&dword_264323000, v18, OS_LOG_TYPE_DEFAULT, "Reporting SOS loop played %lu times", buf, 0xCu);
  }

  [SOSCoreAnalyticsReporter reportSOSNumberOfVoiceLoops:self->_capture_Loop_CompletedIterations];
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_noteLoopInternalResumed
{
  v3 = sos_vlar_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "_noteLoopInternalResumed", v4, 2u);
  }

  self->_capture_Loop_StoppedBy = 0;
}

- (void)reportVoiceLoopPlaybackStateChanged:(unint64_t)changed
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = sos_vlar_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    changedCopy = changed;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "reportVoiceLoopPlaybackStateChanged:%zd", &v7, 0xCu);
  }

  self->_state.playbackState = changed;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)reportVoiceLoopIndexChanged:(unint64_t)changed
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = sos_vlar_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    changedCopy = changed;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "reportVoiceLoopIndexChanged:%tu", &v7, 0xCu);
  }

  self->_state.loopIteration = changed;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)reportVoiceLoopLoopPhaseChanged:(unint64_t)changed
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = sos_vlar_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    changedCopy = changed;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "reportVoiceLoopLoopPhaseChanged:%zd", &v11, 0xCu);
  }

  self->_state.loopPhase = changed;
  [(SOSVoiceLoopAnalyticsReporter *)self capture_FirstLoopSilence_Seconds];
  if (changed == 10000 && v6 <= 0.0 && self->_state.playbackState == 100)
  {
    [(SOSVoiceLoopAnalyticsReporter *)self _elapsedSeconds];
    self->_capture_FirstLoopSilence_Seconds = v7;
    v8 = sos_vlar_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      capture_FirstLoopSilence_Seconds = self->_capture_FirstLoopSilence_Seconds;
      v11 = 134217984;
      changedCopy = *&capture_FirstLoopSilence_Seconds;
      _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "_capture_FirstLoopSilence_Seconds:%0.3f", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)reportVoiceLoopDidReceiveCommand:(unint64_t)command
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = sos_vlar_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    commandCopy3 = command;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "reportVoiceLoopDidReceiveCommand:%zd", buf, 0xCu);
  }

  dtmfCommandsAccumulator = self->_dtmfCommandsAccumulator;
  [(SOSVoiceLoopAnalyticsReporter *)self state];
  [(VLAR_DTMFCommandsAccumulator *)dtmfCommandsAccumulator noteDidReceiveDTMFCommand:command withPlaybackState:v38];
  activeDTMFEventReport = [(SOSVoiceLoopAnalyticsReporter *)self activeDTMFEventReport];
  v8 = activeDTMFEventReport;
  if (!activeDTMFEventReport)
  {
    v10 = sos_vlar_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SOSVoiceLoopAnalyticsReporter *)command reportVoiceLoopDidReceiveCommand:v10, v11, v12, v13, v14, v15, v16];
    }

    goto LABEL_28;
  }

  if ([activeDTMFEventReport command])
  {
    v9 = sos_vlar_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SOSVoiceLoopAnalyticsReporter reportVoiceLoopDidReceiveCommand:v8];
    }
  }

  else
  {
    [v8 setCommand:command];
  }

  reportedCommands = [(VLAR_DTMFCommandsAccumulator *)self->_dtmfCommandsAccumulator reportedCommands];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:command];
  v19 = [reportedCommands indexOfObject:v18];

  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = sos_vlar_log();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    *buf = 134217984;
    commandCopy3 = command;
    v21 = "reportVoiceLoopDidReceiveCommand:%tu command not reportable, ignoring for capture";
    v22 = v20;
    v23 = OS_LOG_TYPE_INFO;
  }

  else
  {
    [(SOSVoiceLoopAnalyticsReporter *)self capture_FirstDTMFCommand_Seconds];
    if (v24 > 0.0)
    {
      v20 = sos_vlar_log();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      [(SOSVoiceLoopAnalyticsReporter *)self capture_FirstDTMFCommand_Seconds];
      *buf = 134218240;
      commandCopy3 = command;
      v41 = 2048;
      v42 = v25;
      v21 = "reportVoiceLoopDidReceiveCommand:%tu but already have capture_FirstDTMFCommand_Seconds:%0.3f, ignoring";
      v22 = v20;
      v23 = OS_LOG_TYPE_INFO;
      v26 = 22;
      goto LABEL_20;
    }

    [v8 elapsedSeconds];
    self->_capture_FirstDTMFCommand_Seconds = v27;
    v20 = sos_vlar_log();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    capture_FirstDTMFCommand_Seconds = self->_capture_FirstDTMFCommand_Seconds;
    *buf = 134217984;
    commandCopy3 = *&capture_FirstDTMFCommand_Seconds;
    v21 = "_capture_FirstDTMFCommand_Seconds:%0.3f";
    v22 = v20;
    v23 = OS_LOG_TYPE_DEFAULT;
  }

  v26 = 12;
LABEL_20:
  _os_log_impl(&dword_264323000, v22, v23, v21, buf, v26);
LABEL_21:

  if (command == 200)
  {
    [(SOSVoiceLoopAnalyticsReporter *)self capture_FirstRepeatCommand_Seconds];
    if (v29 <= 0.0)
    {
      [v8 elapsedSeconds];
      self->_capture_FirstRepeatCommand_Seconds = v35;
      v10 = sos_vlar_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        capture_FirstRepeatCommand_Seconds = self->_capture_FirstRepeatCommand_Seconds;
        *buf = 134217984;
        commandCopy3 = *&capture_FirstRepeatCommand_Seconds;
        v31 = "_capture_FirstRepeatCommand_Seconds:%0.3f";
        v32 = v10;
        v33 = OS_LOG_TYPE_DEFAULT;
        v34 = 12;
        goto LABEL_27;
      }
    }

    else
    {
      v10 = sos_vlar_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        [(SOSVoiceLoopAnalyticsReporter *)self capture_FirstRepeatCommand_Seconds];
        *buf = 134218240;
        commandCopy3 = 200;
        v41 = 2048;
        v42 = v30;
        v31 = "reportVoiceLoopDidReceiveCommand:%tu but already have capture_FirstRepeatCommand_Seconds:%0.3f, ignoring";
        v32 = v10;
        v33 = OS_LOG_TYPE_INFO;
        v34 = 22;
LABEL_27:
        _os_log_impl(&dword_264323000, v32, v33, v31, buf, v34);
      }
    }

LABEL_28:
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)reportVoiceLoopWillPerformAction:(unint64_t)action
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = sos_vlar_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    actionCopy = action;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "reportVoiceLoopWillPerformAction:%zd", &v17, 0xCu);
  }

  [(VLAR_DTMFActionsAccumulator *)self->_dtmfActionsAccumulator noteDTMFAction:action];
  activeDTMFEventReport = [(SOSVoiceLoopAnalyticsReporter *)self activeDTMFEventReport];
  v7 = activeDTMFEventReport;
  if (!activeDTMFEventReport)
  {
    v8 = sos_vlar_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SOSVoiceLoopAnalyticsReporter *)action reportVoiceLoopWillPerformAction:v8, v9, v10, v11, v12, v13, v14];
    }

    goto LABEL_9;
  }

  if ([activeDTMFEventReport action])
  {
    v8 = sos_vlar_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SOSVoiceLoopAnalyticsReporter reportVoiceLoopWillPerformAction:v7];
    }

LABEL_9:

    goto LABEL_11;
  }

  [v7 setAction:action];
LABEL_11:
  if (action == 5000)
  {
    [(SOSVoiceLoopAnalyticsReporter *)self _noteLoopInternalResumed];
  }

  else if (action == 100)
  {
    activeDTMFEventReport2 = [(SOSVoiceLoopAnalyticsReporter *)self activeDTMFEventReport];
    [(SOSVoiceLoopAnalyticsReporter *)self _noteLoopStoppedBy:2 eventReport:activeDTMFEventReport2];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)reportVoiceLoopDidFinishHandlingDTMFDigitReceived:(char)received
{
  receivedCopy = received;
  v9 = *MEMORY[0x277D85DE8];
  v5 = sos_vlar_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67240192;
    v8[1] = receivedCopy;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "reportVoiceLoopDidFinishHandlingDTMFDigitReceived:%{public}c", v8, 8u);
  }

  activeDTMFEventReport = [(SOSVoiceLoopAnalyticsReporter *)self activeDTMFEventReport];
  [(SOSVoiceLoopAnalyticsReporter *)self _submitReport:activeDTMFEventReport];

  [(SOSVoiceLoopAnalyticsReporter *)self setActiveDTMFEventReport:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)reportVoiceLoopSupportsDTMF:(BOOL)f
{
  fCopy = f;
  v17 = *MEMORY[0x277D85DE8];
  v5 = sos_vlar_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v16) = fCopy;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_INFO, "reportVoiceLoopSupportsDTMF:%{BOOL}d", buf, 8u);
  }

  if (fCopy)
  {
    if ([(SOSVoiceLoopAnalyticsReporter *)self capture_DTMFAvail_FirstTrue_LoopIteration])
    {
      goto LABEL_12;
    }

    [(SOSVoiceLoopAnalyticsReporter *)self state];
    self->_capture_DTMFAvail_FirstTrue_LoopIteration = v14;
    v6 = sos_vlar_log();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    capture_DTMFAvail_FirstTrue_LoopIteration = self->_capture_DTMFAvail_FirstTrue_LoopIteration;
    *buf = 134217984;
    v16 = capture_DTMFAvail_FirstTrue_LoopIteration;
    v8 = "_capture_DTMFAvail_FirstTrue_LoopIteration:%tu";
    goto LABEL_10;
  }

  if ([(SOSVoiceLoopAnalyticsReporter *)self capture_DTMFAvail_FirstFalse_LoopIteration])
  {
    goto LABEL_12;
  }

  [(SOSVoiceLoopAnalyticsReporter *)self state];
  self->_capture_DTMFAvail_FirstFalse_LoopIteration = v13;
  v6 = sos_vlar_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    capture_DTMFAvail_FirstFalse_LoopIteration = self->_capture_DTMFAvail_FirstFalse_LoopIteration;
    *buf = 134217984;
    v16 = capture_DTMFAvail_FirstFalse_LoopIteration;
    v8 = "_capture_DTMFAvail_FirstFalse_LoopIteration:%tu";
LABEL_10:
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
  }

LABEL_11:

LABEL_12:
  if (self->_state.dtmfAvailable != fCopy)
  {
    self->_state.dtmfAvailable = fCopy;
    v10 = 168;
    if (fCopy)
    {
      v10 = 160;
    }

    ++*(&self->super.isa + v10);
    v11 = [(SOSVoiceLoopAnalyticsReporter *)self _newEventReportWithTrigger:@"DTMFEnabledChanged"];
    [(SOSVoiceLoopAnalyticsReporter *)self _submitReport:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_newEventReportWithTrigger:(id)trigger
{
  triggerCopy = trigger;
  v5 = [VLAR_DTMFEventReport alloc];
  [(SOSVoiceLoopAnalyticsReporter *)self state];
  v6 = [(VLAR_DTMFEventReport *)v5 initWithTrigger:triggerCopy state:&v9 loopStartDate:self->_loopStartDate];

  language = [(SOSVoiceLoopAnalyticsReporter *)self language];
  [(VLAR_DTMFEventReport *)v6 setLanguage:language];

  [(VLAR_DTMFEventReport *)v6 setVoiceLoopReason:[(SOSVoiceLoopAnalyticsReporter *)self voiceLoopReason]];
  return v6;
}

- (void)_submitReport:(id)report
{
  v64 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v5 = sos_vlar_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v63 = reportCopy;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "_submitReport:%{public}@", buf, 0xCu);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v60[0] = @"event_Trigger";
  trigger = [reportCopy trigger];
  v61[0] = trigger;
  v60[1] = @"event_ElapsedSeconds";
  v6 = MEMORY[0x277CCABB0];
  [reportCopy elapsedSeconds];
  v48 = [v6 numberWithDouble:?];
  v61[1] = v48;
  v60[2] = @"event_SOSVoiceLanguage";
  language = [reportCopy language];
  v61[2] = language;
  v60[3] = @"event_SOSVoiceEventVariant";
  voiceLoopReason = [reportCopy voiceLoopReason];
  if (voiceLoopReason > 2)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_279B53CE8[voiceLoopReason];
  }

  v61[3] = v9;
  v60[4] = @"event_PlaybackState";
  v10 = MEMORY[0x277CCABB0];
  if (reportCopy)
  {
    [reportCopy state];
    v11 = v57;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v10 numberWithUnsignedInteger:v11];
  v61[4] = v12;
  v60[5] = @"event_LoopIteration";
  v13 = MEMORY[0x277CCABB0];
  if (reportCopy)
  {
    [reportCopy state];
    v14 = v56;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v13 numberWithUnsignedInteger:v14];
  v61[5] = v15;
  v60[6] = @"event_LoopPhase";
  v16 = MEMORY[0x277CCABB0];
  if (reportCopy)
  {
    [reportCopy state];
    v17 = v55;
  }

  else
  {
    v17 = 0;
  }

  v18 = [v16 numberWithUnsignedInteger:v17];
  v61[6] = v18;
  v60[7] = @"event_DTMFAvailable";
  v19 = MEMORY[0x277CCABB0];
  if (reportCopy)
  {
    [reportCopy state];
    v20 = v54;
  }

  else
  {
    v20 = 0;
  }

  v21 = [v19 numberWithBool:v20 & 1];
  v61[7] = v21;
  v60[8] = @"event_DTMFCommand";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(reportCopy, "command")}];
  v61[8] = v22;
  v60[9] = @"event_DTMFAction";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(reportCopy, "action")}];
  v61[9] = v23;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:10];

  v58[0] = @"capture_FirstDTMFDigit";
  capture_FirstDTMFDigit = [(SOSVoiceLoopAnalyticsReporter *)self capture_FirstDTMFDigit];
  v59[0] = capture_FirstDTMFDigit;
  v58[1] = @"capture_FirstDTMFDigit_Seconds";
  v24 = MEMORY[0x277CCABB0];
  [(SOSVoiceLoopAnalyticsReporter *)self capture_FirstDTMFDigit_Seconds];
  v49 = [v24 numberWithDouble:?];
  v59[1] = v49;
  v58[2] = @"capture_FirstDTMFCommand_Seconds";
  v25 = MEMORY[0x277CCABB0];
  [(SOSVoiceLoopAnalyticsReporter *)self capture_FirstDTMFCommand_Seconds];
  v47 = [v25 numberWithDouble:?];
  v59[2] = v47;
  v58[3] = @"capture_FirstLoopSilence_Seconds";
  v26 = MEMORY[0x277CCABB0];
  [(SOSVoiceLoopAnalyticsReporter *)self capture_FirstLoopSilence_Seconds];
  v46 = [v26 numberWithDouble:?];
  v59[3] = v46;
  v58[4] = @"capture_Loop_StoppedBy";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SOSVoiceLoopAnalyticsReporter capture_Loop_StoppedBy](self, "capture_Loop_StoppedBy")}];
  v59[4] = v45;
  v58[5] = @"capture_Loop_StoppedAt_Iteration";
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SOSVoiceLoopAnalyticsReporter capture_Loop_StoppedAt_Iteration](self, "capture_Loop_StoppedAt_Iteration")}];
  v59[5] = v44;
  v58[6] = @"capture_Loop_StoppedAt_Phase";
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SOSVoiceLoopAnalyticsReporter capture_Loop_StoppedAt_Phase](self, "capture_Loop_StoppedAt_Phase")}];
  v59[6] = v43;
  v58[7] = @"capture_Loop_StoppedAt_Seconds";
  v27 = MEMORY[0x277CCABB0];
  [(SOSVoiceLoopAnalyticsReporter *)self capture_Loop_StoppedAt_Seconds];
  v28 = [v27 numberWithDouble:?];
  v59[7] = v28;
  v58[8] = @"capture_Loop_CompletedIterations";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SOSVoiceLoopAnalyticsReporter capture_Loop_CompletedIterations](self, "capture_Loop_CompletedIterations")}];
  v59[8] = v29;
  v58[9] = @"capture_FirstRepeatCommand_Seconds";
  v30 = MEMORY[0x277CCABB0];
  [(SOSVoiceLoopAnalyticsReporter *)self capture_FirstRepeatCommand_Seconds];
  v31 = [v30 numberWithDouble:?];
  v59[9] = v31;
  v58[10] = @"capture_DTMFAvail_FirstTrue_LoopIteration";
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SOSVoiceLoopAnalyticsReporter capture_DTMFAvail_FirstTrue_LoopIteration](self, "capture_DTMFAvail_FirstTrue_LoopIteration")}];
  v59[10] = v32;
  v58[11] = @"capture_DTMFAvail_FirstFalse_LoopIteration";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SOSVoiceLoopAnalyticsReporter capture_DTMFAvail_FirstFalse_LoopIteration](self, "capture_DTMFAvail_FirstFalse_LoopIteration")}];
  v59[11] = v33;
  v58[12] = @"nDTMFAvailNoToYes";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SOSVoiceLoopAnalyticsReporter nDTMFAvailNoToYes](self, "nDTMFAvailNoToYes")}];
  v59[12] = v34;
  v58[13] = @"nDTMFAvailYesToNo";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SOSVoiceLoopAnalyticsReporter nDTMFAvailYesToNo](self, "nDTMFAvailYesToNo")}];
  v59[13] = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:14];

  [dictionary addEntriesFromDictionary:v52];
  [dictionary addEntriesFromDictionary:v36];
  analyticsDataDict = [(VLAR_DTMFEventsAccumulator *)self->_dtmfEventAccumulator analyticsDataDict];
  [dictionary addEntriesFromDictionary:analyticsDataDict];

  analyticsDataDict2 = [(VLAR_DTMFCommandsAccumulator *)self->_dtmfCommandsAccumulator analyticsDataDict];
  [dictionary addEntriesFromDictionary:analyticsDataDict2];

  analyticsDataDict3 = [(VLAR_DTMFActionsAccumulator *)self->_dtmfActionsAccumulator analyticsDataDict];
  [dictionary addEntriesFromDictionary:analyticsDataDict3];

  v40 = sos_vlar_log();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v63 = dictionary;
    _os_log_impl(&dword_264323000, v40, OS_LOG_TYPE_DEFAULT, "_submitReport => data:%{public}@", buf, 0xCu);
  }

  v41 = dictionary;
  AnalyticsSendEventLazy();

  v42 = *MEMORY[0x277D85DE8];
}

- (VLAR_DTMFStateRecord)state
{
  v3 = *&self[6].playbackState;
  *&retstr->playbackState = *&self[5].loopPhase;
  *&retstr->loopPhase = v3;
  return self;
}

- (void)setState:(VLAR_DTMFStateRecord *)state
{
  v3 = *&state->loopPhase;
  *&self->_state.playbackState = *&state->playbackState;
  *&self->_state.loopPhase = v3;
}

- (void)_noteLoopStoppedBy:(uint64_t)a3 eventReport:(uint64_t)a4 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_1(&dword_264323000, a2, a3, "_noteLoopStoppedBy but already have capture_Loop_StoppedBy:%tu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)reportVoiceLoopDidReceiveCommand:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 command];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_264323000, v1, v2, "reportVoiceLoopDidReceiveCommand:%tu but already have activeDTMFEventReport.command:%tu; only 1 command expected per activeDTMFEventReport", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)reportVoiceLoopDidReceiveCommand:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_264323000, a2, a3, "reportVoiceLoopDidReceiveCommand:%tu with no activeDTMFEventReport", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)reportVoiceLoopWillPerformAction:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 action];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_264323000, v1, v2, "reportVoiceLoopWillPerformAction:%tu but already have activeDTMFEventReport.command:%tu; only 1 action expected per activeDTMFEventReport", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)reportVoiceLoopWillPerformAction:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_264323000, a2, a3, "reportVoiceLoopWillPerformAction:%tu with no activeDTMFEventReport", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end