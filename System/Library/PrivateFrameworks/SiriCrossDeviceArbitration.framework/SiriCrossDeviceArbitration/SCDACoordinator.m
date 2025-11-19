@interface SCDACoordinator
+ (void)clearCurrentCoordinator;
+ (void)didChangeDefaults;
+ (void)initialize;
- (BOOL)_deviceShouldContinue:(id)a3;
- (BOOL)_shouldContinueFor:(id)a3;
- (BOOL)_shouldHandleEmergency;
- (BOOL)_testAndUpdateWedgeFilter:(id)a3;
- (BOOL)inTask;
- (SCDACoordinator)initWithDelegate:(id)a3;
- (id)_phsSetupRecord;
- (id)_sortedReplies:(id)a3;
- (id)_stateAsString:(unint64_t)a3;
- (id)_testAndFilterAdvertisementsFromContextCollector:(id)a3 voiceTriggerEndTime:(double)a4 advertisementDispatchTime:(double)a5 advertisement:(id)a6;
- (id)alertFiringRecord;
- (id)carplayRecord;
- (id)continuationRecord;
- (id)directTriggerRecord;
- (id)emergencyHandledRecord;
- (id)emergencyRecord;
- (id)emptyRecord;
- (id)inEarRecord;
- (id)inTaskRecord;
- (id)lateSuppressionRecord;
- (id)outgoingRecord;
- (id)overrideRecord;
- (id)rtsTriggerRecord;
- (id)voiceTriggerRecord;
- (id)winningAdvertisement;
- (int)_myriadStateForSelf:(unint64_t)a3;
- (unint64_t)_nextElectionPublisherState;
- (void)_addElectionAdvertisementDataToMyriadSession:(id)a3;
- (void)_addTriggerRecordToReplies;
- (void)_adjustActionWindowsFromSlowdown:(int)a3;
- (void)_advertise:(id)a3 afterDelay:(float)a4 maxInterval:(float)a5 voiceTriggerLatency:(float)a6 andMoveTo:(unint64_t)a7;
- (void)_advertiseIndefinite:(id)a3;
- (void)_advertiseSlowdown;
- (void)_advertiseSuppressTriggerInOutput;
- (void)_advertiseTrigger;
- (void)_advertiseWith:(id)a3 afterDelay:(float)a4 maxInterval:(float)a5 voiceTriggerLatency:(float)a6 thenExecute:(id)a7;
- (void)_ageWedgeFilter;
- (void)_cancelOverallTimeout;
- (void)_clearMyriadSession;
- (void)_clearWiProxReadinessTimer;
- (void)_computeElectionParticipantIds:(id)a3;
- (void)_createDispatchTimerFor:(double)a3 toExecute:(id)a4;
- (void)_createDispatchTimerForEvent:(id)a3 toExecute:(id)a4;
- (void)_createDispatchTimerWithTime:(unint64_t)a3 toExecute:(id)a4;
- (void)_createElectionParticipantIdVendorIfRequired;
- (void)_createMyriadSessionIfRequired;
- (void)_createWaitWiProxTimer:(int64_t)a3 waitBlock:(id)a4;
- (void)_duringNextWindowEnterState:(unint64_t)a3;
- (void)_duringNextWindowExecute:(id)a3;
- (void)_endAdvertising:(id)a3;
- (void)_endAdvertisingWithDeviceProhibitions:(id)a3;
- (void)_enterState:(unint64_t)a3;
- (void)_enteringIntoState:(unint64_t)a3 fromState:(unint64_t)a4;
- (void)_faceDetectedElection;
- (void)_forceLocalWinner:(id)a3 withRecord:(id)a4;
- (void)_handleStateMachineErrorIfNeeded;
- (void)_initializeTimer;
- (void)_initializeWiProxReadinessTimer;
- (void)_invalidateTimerHandler;
- (void)_loseElection;
- (void)_readDefaults;
- (void)_resetActionWindows;
- (void)_resetAdvertisementTimings;
- (void)_setMyriadContext:(id)a3;
- (void)_setOverallTimeout;
- (void)_setupActionWindows;
- (void)_signalEmergencyCallHandled;
- (void)_startAdvertising:(id)a3 afterDelay:(float)a4 maxInterval:(float)a5;
- (void)_startAdvertisingFromInTaskVoiceTrigger;
- (void)_startAdvertisingFromSetupMode;
- (void)_startAdvertisingFromVoiceTrigger;
- (void)_startListening:(id)a3;
- (void)_startListeningAfterWiProxIsReady:(BOOL)a3 inState:(unint64_t)a4 completion:(id)a5;
- (void)_startTimer:(id)a3 for:(float)a4 thenEnterState:(unint64_t)a5;
- (void)_startTimer:(id)a3 for:(float)a4 thenExecute:(id)a5;
- (void)_stopAdvertising:(id)a3;
- (void)_stopAdvertisingAndListening;
- (void)_stopListening:(id)a3;
- (void)_suspendWiProxReadinessTimer;
- (void)_trackHeySiriStartedAdvertisingAt:(unint64_t)a3;
- (void)_triggerABCForType:(id)a3 context:(id)a4;
- (void)_unduck;
- (void)_updateRepliesWith:(id)a3 id:(id)a4 data:(id)a5;
- (void)_waitWiProx:(int64_t)a3 andExecute:(id)a4;
- (void)_winElection;
- (void)advertiseWith:(id)a3;
- (void)advertiseWith:(id)a3 afterDelay:(float)a4 maxInterval:(float)a5;
- (void)dealloc;
- (void)endAdvertising:(id)a3;
- (void)endAdvertisingAfterDelay:(float)a3;
- (void)endAdvertisingWithDeviceProhibitions:(id)a3;
- (void)endTask;
- (void)endWaitingForEmergency;
- (void)enterState:(unint64_t)a3;
- (void)faceDetectedBoostWithContext:(id)a3;
- (void)heySiri:(id)a3 failedToStartAdvertisingWithError:(id)a4;
- (void)heySiri:(id)a3 failedToStartScanningWithError:(id)a4;
- (void)heySiri:(id)a3 foundDevice:(id)a4 withInfo:(id)a5;
- (void)heySiriAdvertisingPending:(id)a3;
- (void)heySiriDidUpdateState:(id)a3;
- (void)heySiriStartedAdvertising:(id)a3;
- (void)heySiriStartedAdvertisingAt:(id)a3 timeStamp:(unint64_t)a4;
- (void)heySiriStartedScanning:(id)a3;
- (void)heySiriStoppedAdvertising:(id)a3;
- (void)heySiriStoppedScanning:(id)a3;
- (void)injectAdvertisementForTesting:(id)a3 forDevice:(id)a4;
- (void)myriadSession:(id)a3;
- (void)notifyCurrentDecisionResult;
- (void)notifyObserver:(id)a3 didReceiveNotificationWithToken:(int)a4;
- (void)preheatWiProx;
- (void)readDefaults;
- (void)resetMyriadCoordinator:(id)a3;
- (void)resetReplies;
- (void)resetStateMachine;
- (void)setCurrentRequestId:(id)a3;
- (void)setInTask:(BOOL)a3;
- (void)setupAdvIntervalsInDelay:(float *)a3 interval:(float *)a4 voiceTriggerLatency:(float *)a5 withSlowdown:(int)a6;
- (void)setupEnabled:(BOOL)a3;
- (void)startAdvertising:(id)a3 afterDelay:(float)a4 maxInterval:(float)a5;
- (void)startAdvertisingEmergency;
- (void)startAdvertisingEmergencyHandled;
- (void)startAdvertisingEmergencySignal;
- (void)startAdvertisingForPHSSetupAfterDelay:(float)a3 maxInterval:(float)a4;
- (void)startAdvertisingFromAlertFiringVoiceTriggerWithContext:(id)a3;
- (void)startAdvertisingFromCarPlayTrigger;
- (void)startAdvertisingFromDirectTriggerWithContext:(id)a3;
- (void)startAdvertisingFromInEarTrigger;
- (void)startAdvertisingFromInTaskTriggerWithContext:(id)a3;
- (void)startAdvertisingFromInTaskVoiceTriggerWithContext:(id)a3;
- (void)startAdvertisingFromOutgoingTriggerWithContext:(id)a3;
- (void)startAdvertisingFromVoiceTriggerAdjusted:(char)a3 withContext:(id)a4;
- (void)startAdvertisingFromVoiceTriggerWithContext:(id)a3;
- (void)startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:(id)a3 withContext:(id)a4;
- (void)startAdvertisingSlowdown:(unsigned __int16)a3;
- (void)startListening;
- (void)startListening:(id)a3;
- (void)startListeningToEmergencySignal;
- (void)startResponseAdvertising:(unsigned __int16)a3;
- (void)startWatchAdvertisingFromDirectTriggerWithContext:(id)a3;
- (void)startWatchAdvertisingFromVoiceTriggerWithContext:(id)a3;
- (void)stopListening;
- (void)stopListening:(id)a3;
- (void)updateRequestId:(id)a3;
- (void)waitWiProx:(int64_t)a3 andExecute:(id)a4;
@end

@implementation SCDACoordinator

- (void)_createMyriadSessionIfRequired
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_myriadSession || ![(SCDACoordinator *)self _shouldCreateMyriadSessionInCurrentState])
  {
    v13 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      myriadState = self->_myriadState;
      v12 = v13;
      v15 = [(SCDACoordinator *)self _stateAsString:myriadState];
      v16 = v15;
      v17 = @"not nil";
      myriadSession = self->_myriadSession;
      v21 = "[SCDACoordinator _createMyriadSessionIfRequired]";
      v20 = 136315650;
      v22 = 2112;
      if (!myriadSession)
      {
        v17 = @"nil";
      }

      v23 = v15;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_1DA758000, v12, OS_LOG_TYPE_INFO, "%s #scda not initializing myriad session, myriad is in state %@ (_myriadSession is %@)", &v20, 0x20u);

      goto LABEL_11;
    }
  }

  else
  {
    v3 = [SCDASession newWithBuilder:&__block_literal_global_2341];
    v4 = self->_myriadSession;
    self->_myriadSession = v3;

    v5 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v6 = self->_myriadSession;
      v7 = v5;
      v8 = [(SCDASession *)v6 sessionId];
      v9 = [(SCDACoordinator *)self _stateAsString:self->_myriadState];
      v20 = 136315650;
      v21 = "[SCDACoordinator _createMyriadSessionIfRequired]";
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_1DA758000, v7, OS_LOG_TYPE_INFO, "%s #scda Initialized myriad session %@ when myriad is in state %@", &v20, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 scdaWillStartWithSession:self->_myriadSession];
LABEL_11:
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __49__SCDACoordinator__createMyriadSessionIfRequired__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [v2 UUID];
  [v3 setSessionId:v4];
}

- (void)_initializeTimer
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SCDACoordinator _initializeTimer]";
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_myriadWorkQueue);
  v6 = self->_timer;
  self->_timer = v5;

  dispatch_source_set_event_handler(self->_timer, &__block_literal_global_237);
  dispatch_resume(self->_timer);
  eventToken = self->_eventToken;
  self->_eventToken = 0;

  v8 = *MEMORY[0x1E69E9840];
}

- (id)directTriggerRecord
{
  v3 = [SCDARecord alloc];
  v4 = [(SCDAContext *)self->_currentMyriadContext perceptualAudioHash];
  v5 = [(SCDARecord *)v3 initWithDirectTrigger:v4 device:self->_device];

  return v5;
}

- (void)_stopAdvertisingAndListening
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__SCDACoordinator__stopAdvertisingAndListening__block_invoke;
  v13[3] = &unk_1E85D3850;
  v13[4] = self;
  [(SCDACoordinator *)self _waitWiProx:2000 andExecute:v13];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 scdaAdvertisingDidEnd:self];
    }
  }

  v8 = objc_loadWeakRetained(&self->_delegate);
  if (v8)
  {
    v9 = v8;
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 scdaListeningDidEnd:self];
    }
  }
}

void __47__SCDACoordinator__stopAdvertisingAndListening__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SCDACoordinator _stopAdvertisingAndListening]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE stopping advertising and scanning of HeySiri advertisements", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 221) == 1)
  {
    [*(v3 + 248) stopScanningAndAdvertising];
    *(*(a1 + 32) + 322) = 0;
    *(*(a1 + 32) + 323) = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_setupActionWindows
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] date];
  triggerTime = self->_triggerTime;
  self->_triggerTime = v3;

  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    dateFormat = self->_dateFormat;
    v8 = self->_triggerTime;
    v9 = v5;
    v10 = [(NSDateFormatter *)dateFormat stringFromDate:v8];
    v11 = 136315394;
    v12 = "[SCDACoordinator _setupActionWindows]";
    v13 = 2112;
    v14 = v10;
    _os_log_debug_impl(&dword_1DA758000, v9, OS_LOG_TYPE_DEBUG, "%s BTLE action window trigger time: %@", &v11, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_setOverallTimeout
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_overallTimeout)
  {
    [(SCDACoordinator *)self _cancelOverallTimeout];
  }

  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[SCDACoordinator _setOverallTimeout]";
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s BTLE Coordinator setting overall timeout", buf, 0xCu);
  }

  v4 = [SCDAWatchdogTimer alloc];
  myriadWorkQueue = self->_myriadWorkQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__SCDACoordinator__setOverallTimeout__block_invoke;
  v9[3] = &unk_1E85D3850;
  v9[4] = self;
  v6 = [(SCDAWatchdogTimer *)v4 initWithTimeoutInterval:myriadWorkQueue onQueue:v9 timeoutHandler:31.0];
  overallTimeout = self->_overallTimeout;
  self->_overallTimeout = v6;

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_advertiseTrigger
{
  v48[2] = *MEMORY[0x1E69E9840];
  triggerRecord = self->_triggerRecord;
  if (triggerRecord)
  {
    v4 = [(SCDARecord *)triggerRecord asAdvertisementData];

    if (v4)
    {
      v43 = 1056964608;
      v42 = 0;
      v5 = [(SCDARecord *)self->_triggerRecord recordType];
      [SCDAElectionWindow electionWindowTimeRemaining:[(SCDARecord *)self->_triggerRecord voiceTriggerMachTime] fromNow:mach_absolute_time()];
      if (v6 <= 0.0)
      {
        if (v5 == 4)
        {
          [(SCDADevice *)self->_device trumpDelay];
          *&v9 = v9;
          HIDWORD(v43) = LODWORD(v9);
          if (+[SCDAUtilities isATV](SCDAUtilities, "isATV") || +[SCDAUtilities isNano])
          {
            LODWORD(v43) = 1061158912;
          }
        }

        else if (self->_clientIsInEarActivation || self->_clientRespondingToCarPlay)
        {
          [(SCDADevice *)self->_device inEarDelay];
          *&v10 = v10;
          HIDWORD(v43) = LODWORD(v10);
          [(SCDADevice *)self->_device inEarInterval];
          *&v11 = v11;
          LODWORD(v43) = LODWORD(v11);
        }

        if (self->_isDelayingAdvertisement)
        {
          HIDWORD(v43) = 0;
          self->_isDelayingAdvertisement = 0;
        }
      }

      else
      {
        [(SCDACoordinator *)self setupAdvIntervalsInDelay:&v43 + 4 interval:&v43 voiceTriggerLatency:&v42 withSlowdown:0];
      }

      if (v5 != 4)
      {
        [(SCDANotifyStatePublisher *)self->_electionBeginPublisher publishState:[(SCDACoordinator *)self _nextElectionPublisherState]];
      }

      v12 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        slowdownMsecs = self->_slowdownMsecs;
        testInducedSlowdownMsecs = self->_testInducedSlowdownMsecs;
        v15 = v12;
        v16 = [(SCDACoordinator *)self _stateAsString];
        *buf = 136315906;
        v45 = "[SCDACoordinator _advertiseTrigger]";
        v46 = 1024;
        *v47 = testInducedSlowdownMsecs;
        *&v47[4] = 1024;
        *&v47[6] = slowdownMsecs;
        LOWORD(v48[0]) = 2112;
        *(v48 + 2) = v16;
        _os_log_impl(&dword_1DA758000, v15, OS_LOG_TYPE_INFO, "%s BTLE checking if slowdown needed testmsecs=%d msecs=%d state=%@", buf, 0x22u);
      }

      v17 = self->_testInducedSlowdownMsecs;
      if (v17 >= 1 && !self->_clientDoneRespondingToSlowdown)
      {
        v29 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v45 = "[SCDACoordinator _advertiseTrigger]";
          _os_log_impl(&dword_1DA758000, v29, OS_LOG_TYPE_INFO, "%s BTLE advertising TEST INDUCED slowdown delay, 2nd pass seen", buf, 0xCu);
          v17 = self->_testInducedSlowdownMsecs;
        }

        v30 = [(SCDACoordinator *)self slowdownRecord:v17];
        v8 = [v30 asAdvertisementData];

        self->_slowdownMsecs = 0;
        self->_clientIsRespondingToSlowdown = 0;
        maxSlowdownRecord = self->_maxSlowdownRecord;
        self->_maxSlowdownRecord = 0;

        LODWORD(v25) = HIDWORD(v43);
        LODWORD(v26) = v43;
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __36__SCDACoordinator__advertiseTrigger__block_invoke;
        v38[3] = &unk_1E85D3490;
        v39 = HIDWORD(v43);
        v40 = v43;
        v41 = v42;
        v38[4] = self;
        *&v27 = COERCE_UNSIGNED_INT(-3.0);
        v28 = v38;
        goto LABEL_37;
      }

      v18 = self->_slowdownMsecs;
      if (v18 <= 0)
      {
        v19 = SCDALogContextCore;
      }

      else
      {
        v19 = SCDALogContextCore;
        if (self->_clientIsRespondingToSlowdown)
        {
          if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v45 = "[SCDACoordinator _advertiseTrigger]";
            _os_log_impl(&dword_1DA758000, v19, OS_LOG_TYPE_INFO, "%s BTLE advertising slowdown delay, 2nd pass seen", buf, 0xCu);
            v18 = self->_slowdownMsecs;
          }

          *buf = 0;
          v36 = 0;
          v37 = 1056964608;
          [(SCDACoordinator *)self setupAdvIntervalsInDelay:buf interval:&v37 voiceTriggerLatency:&v36 withSlowdown:v18];
          [(SCDACoordinator *)self _adjustActionWindowsFromSlowdown:self->_slowdownMsecs];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v21 = objc_opt_respondsToSelector();

          if (v21)
          {
            v22 = objc_loadWeakRetained(&self->_delegate);
            *&v23 = self->_slowdownMsecs;
            [v22 myriadCoordinator:self willStartAdvertisingWithSlowDownInterval:v23];
          }

          self->_slowdownMsecs = 0;
          self->_clientIsRespondingToSlowdown = 0;
          v24 = self->_maxSlowdownRecord;
          self->_maxSlowdownRecord = 0;

          [(SCDARecord *)self->_triggerRecord generateTiebreaker];
          v8 = [(SCDARecord *)self->_triggerRecord asAdvertisementData];
          LODWORD(v25) = *buf;
          LODWORD(v27) = v36;
          LODWORD(v26) = v37;
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __36__SCDACoordinator__advertiseTrigger__block_invoke_341;
          v35[3] = &unk_1E85D3850;
          v35[4] = self;
          v28 = v35;
LABEL_37:
          [(SCDACoordinator *)self _advertiseWith:v8 afterDelay:v28 maxInterval:v25 voiceTriggerLatency:v26 thenExecute:v27];
          goto LABEL_38;
        }
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v45 = "[SCDACoordinator _advertiseTrigger]";
        v46 = 2048;
        *v47 = *(&v43 + 1);
        *&v47[8] = 2048;
        v48[0] = *&v43;
        _os_log_impl(&dword_1DA758000, v19, OS_LOG_TYPE_INFO, "%s BTLE computed advertising delay: %f finished, interval: %f", buf, 0x20u);
      }

      v8 = [(SCDARecord *)self->_triggerRecord asAdvertisementData];
      LODWORD(v25) = HIDWORD(v43);
      LODWORD(v26) = v43;
      LODWORD(v27) = v42;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __36__SCDACoordinator__advertiseTrigger__block_invoke_342;
      v34[3] = &unk_1E85D3850;
      v34[4] = self;
      v28 = v34;
      goto LABEL_37;
    }
  }

  v7 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    v33 = self->_triggerRecord;
    *buf = 136315394;
    v45 = "[SCDACoordinator _advertiseTrigger]";
    v46 = 2112;
    *v47 = v33;
    _os_log_error_impl(&dword_1DA758000, v7, OS_LOG_TYPE_ERROR, "%s Skipping advertising requested with nil _triggerRecord %@", buf, 0x16u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  [(SCDACoordinator *)self _endAdvertisingWithDeviceProhibitions:v8];
LABEL_38:

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_winElection
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[SCDACoordinator _winElection]";
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEFAULT, "%s BTLE notify myriad won", &v13, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 scdaShouldContinue:self];
    }
  }

  [(SCDACoordinator *)self _endAdvertisingAnalyticsContext:1];
  kdebug_trace();
  v9 = [MEMORY[0x1E696AE30] processInfo];
  [v9 systemUptime];
  v11 = v10;

  [(SCDAGoodnessScoreEvaluator *)self->_goodnessScoreEvaluator setLastActivationTime:v11];
  self->_lastDecision = 1;
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_cancelOverallTimeout
{
  v12 = *MEMORY[0x1E69E9840];
  overallTimeout = self->_overallTimeout;
  if (overallTimeout)
  {
    v4 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[SCDACoordinator _cancelOverallTimeout]";
      _os_log_impl(&dword_1DA758000, v4, OS_LOG_TYPE_INFO, "%s BTLE Coordinator cancelling overall timeout", &v10, 0xCu);
      overallTimeout = self->_overallTimeout;
    }

    [(SCDAWatchdogTimer *)overallTimeout cancelIfNotAlreadyCanceled];
    v5 = self->_overallTimeout;
    self->_overallTimeout = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 myriadCoordinatorOverallTimerCancelled:self];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_createElectionParticipantIdVendorIfRequired
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (!obj->_electionParticipantIdVendor)
  {
    v3 = objc_alloc_init(SCDAElectionParticipantIdVendor);
    electionParticipantIdVendor = obj->_electionParticipantIdVendor;
    obj->_electionParticipantIdVendor = v3;

    v2 = obj;
  }

  objc_sync_exit(v2);
}

- (void)_ageWedgeFilter
{
  p_previousTrumps = &self->_previousTrumps;
  previousTrumps = self->_previousTrumps;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SCDACoordinator__ageWedgeFilter__block_invoke;
  v7[3] = &unk_1E85D3570;
  v7[4] = self;
  [(NSMutableDictionary *)previousTrumps enumerateKeysAndObjectsUsingBlock:v7];
  objc_storeStrong(p_previousTrumps, self->_incomingTrumps);
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:16];
  incomingTrumps = self->_incomingTrumps;
  self->_incomingTrumps = v5;
}

- (void)resetReplies
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1E696AD98];
    replies = self->_replies;
    v11 = v3;
    v12 = [v9 numberWithUnsignedInteger:{-[NSMutableDictionary count](replies, "count")}];
    v13 = 136315394;
    v14 = "[SCDACoordinator resetReplies]";
    v15 = 2112;
    v16 = v12;
    _os_log_debug_impl(&dword_1DA758000, v11, OS_LOG_TYPE_DEBUG, "%s #scda resetReplies will clear %@ replies", &v13, 0x16u);
  }

  objc_storeStrong(&self->_repliesBeforeDecision, self->_replies);
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:16];
  v5 = self->_replies;
  self->_replies = v4;

  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:16];
  replyCounts = self->_replyCounts;
  self->_replyCounts = v6;

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_resetAdvertisementTimings
{
  advertTriggerAdvStartTime = self->_advTiming.advertTriggerAdvStartTime;
  self->_advTiming.advertTriggerAdvStartTime = 0;

  advertTriggerEndTime = self->_advTiming.advertTriggerEndTime;
  self->_advTiming.advertTriggerEndTime = 0;
}

- (unint64_t)_nextElectionPublisherState
{
  electionPublisherState = self->_electionPublisherState;
  if (electionPublisherState + 1 > 1)
  {
    v3 = electionPublisherState + 1;
  }

  else
  {
    v3 = 1;
  }

  self->_electionPublisherState = v3;
  return v3;
}

- (void)_readDefaults
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[SCDACoordinator _readDefaults]";
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s #scda reading defaults", &v18, 0xCu);
  }

  self->_coordinationEnabled = [(SCDAPreferences *)self->_preferences coordinationEnabled];
  v4 = [(SCDAPreferences *)self->_preferences deviceGroup];
  LOBYTE(v5) = v4;
  self->_deviceGroup = v4;
  if (!self->_coordinationEnabled)
  {
    if (!v4)
    {
      v5 = (arc4random_uniform(0xBu) - 11);
    }

    self->_deviceGroup = v5;
  }

  if (v5)
  {
    v6 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v18 = 136315394;
      v19 = "[SCDACoordinator _readDefaults]";
      v20 = 1024;
      LODWORD(v21) = v5;
      _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s #scda overriding device group: %du", &v18, 0x12u);
      LOBYTE(v5) = self->_deviceGroup;
    }

    [(SCDADevice *)self->_device overrideDeviceGroup:v5];
  }

  self->_BLEActivityEnabled = [(SCDAPreferences *)self->_preferences BLEActivityEnabled];
  self->_constantGoodness = [(SCDAPreferences *)self->_preferences constantGoodnessScore];
  [(SCDAPreferences *)self->_preferences deviceSlowDown];
  self->_testInducedSlowdownMsecs = (v7 * 1000.0);
  self->_deviceVTEndtimeDistanceThreshold = 0.5;
  if ([(SCDAPreferences *)self->_preferences myriadServerHasProvisioned])
  {
    v8 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "[SCDACoordinator _readDefaults]";
      _os_log_impl(&dword_1DA758000, v8, OS_LOG_TYPE_INFO, "%s #scda reading server provisioned defaults", &v18, 0xCu);
    }

    v9 = [(SCDAPreferences *)self->_preferences deviceClass];
    if (!v9)
    {
      v9 = [(SCDADevice *)self->_device deviceClass];
    }

    device = self->_device;
    [(SCDAPreferences *)self->_preferences deviceAdjust];
    v12 = v11;
    [(SCDAPreferences *)self->_preferences deviceTrumpDelay];
    [(SCDADevice *)device overrideLocalConfiguration:v9 deviceAdjust:v12 trumpDelay:?];
    [(SCDAPreferences *)self->_preferences voiceTriggerEndtimeDelayThreshold];
    v14 = v13;
    self->_deviceVTEndtimeDistanceThreshold = v13;
    v15 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v16 = self->_device;
      v18 = 136315650;
      v19 = "[SCDACoordinator _readDefaults]";
      v20 = 2112;
      v21 = v16;
      v22 = 2048;
      v23 = v14;
      _os_log_impl(&dword_1DA758000, v15, OS_LOG_TYPE_INFO, "%s %@, vt_endtime threshold %f", &v18, 0x20u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __34__SCDACoordinator__ageWedgeFilter__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = [a3 intValue];
  if (v5 >= 2)
  {
    v6 = v5;
    v7 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v10];

    if (!v7)
    {
      v8 = *(*(a1 + 32) + 72);
      v9 = [MEMORY[0x1E696AD98] numberWithInt:(v6 - 1)];
      [v8 setObject:v9 forKey:v10];
    }
  }
}

- (void)resetMyriadCoordinator:(id)a3
{
  v4 = a3;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__SCDACoordinator_resetMyriadCoordinator___block_invoke;
  v7[3] = &unk_1E85D32E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(myriadWorkQueue, v7);
}

uint64_t __42__SCDACoordinator_resetMyriadCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _enterState:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)myriadSession:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, self->_myriadSession);
  }
}

- (void)startAdvertisingEmergencySignal
{
  [(SCDACoordinator *)self _setupActionWindows];

  [(SCDACoordinator *)self _enterState:8];
}

- (void)endWaitingForEmergency
{
  if (+[SCDAUtilities isCommunal])
  {
    myriadWorkQueue = self->_myriadWorkQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__SCDACoordinator_endWaitingForEmergency__block_invoke;
    block[3] = &unk_1E85D3850;
    block[4] = self;
    dispatch_async(myriadWorkQueue, block);
  }
}

void __41__SCDACoordinator_endWaitingForEmergency__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if ((v2 - 4) >= 2)
  {
    if (v2 == 722471300)
    {
      v5 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315138;
        v8 = "[SCDACoordinator endWaitingForEmergency]_block_invoke";
        _os_log_debug_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEBUG, "%s Attempting to end emergency while in no activity state, ignoring.", &v7, 0xCu);
      }
    }

    else
    {
      *(v1 + 176) = 20;
      v3 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v7 = 136315138;
        v8 = "[SCDACoordinator endWaitingForEmergency]_block_invoke";
        v4 = "%s Setting Emergency Continuation to End Early";
        goto LABEL_9;
      }
    }
  }

  else
  {
    [v1 resetStateMachine];
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[SCDACoordinator endWaitingForEmergency]_block_invoke";
      v4 = "%s Ending Emergency Flow Early";
LABEL_9:
      _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, v4, &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)startListeningToEmergencySignal
{
  [(SCDACoordinator *)self _setupActionWindows];

  [(SCDACoordinator *)self _enterState:7];
}

- (void)injectAdvertisementForTesting:(id)a3 forDevice:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = getWPHeySiriKeyManufacturerData();
    v10 = v9;
    if (v9)
    {
      v13 = v9;
      v14[0] = v6;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [(SCDACoordinator *)self heySiri:self->_heySiriBTLE foundDevice:v8 withInfo:v11];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)notifyObserver:(id)a3 didReceiveNotificationWithToken:(int)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [(SCDANotifyObserver *)v6 name];
    v11 = 136315650;
    v12 = "[SCDACoordinator notifyObserver:didReceiveNotificationWithToken:]";
    v13 = 2112;
    v14 = v9;
    v15 = 1024;
    v16 = a4;
    _os_log_impl(&dword_1DA758000, v8, OS_LOG_TYPE_INFO, "%s Notification received: %@ (%d)", &v11, 0x1Cu);
  }

  if (self->_preferencesChangedNotification == v6)
  {
    [(SCDACoordinator *)self _readDefaults];
  }

  else if (self->_myriadStateMachineForceNoActivityObserver == v6)
  {
    if (SCDAIsInternalInstall_onceToken != -1)
    {
      dispatch_once(&SCDAIsInternalInstall_onceToken, &__block_literal_global_1238);
    }

    if (SCDAIsInternalInstall_isInternal == 1)
    {
      [(SCDACoordinator *)self _enterState:0];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_signalEmergencyCallHandled
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[SCDACoordinator _signalEmergencyCallHandled]";
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 scdaCoordinatorDidHandleEmergency:self];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)heySiri:(id)a3 failedToStartScanningWithError:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a4;
  kdebug_trace();
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SCDACoordinator heySiri:failedToStartScanningWithError:]";
    v9 = 2112;
    v10 = v4;
    _os_log_error_impl(&dword_1DA758000, v5, OS_LOG_TYPE_ERROR, "%s BTLE daemon failed to start scanning with error %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)heySiriStoppedScanning:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SCDACoordinator heySiriStoppedScanning:]";
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s BTLE daemon scanning ends", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 myriadCoordinatorBTLEDidEndScanning:self];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)heySiriStartedScanning:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SCDACoordinator heySiriStartedScanning:]";
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s BTLE daemon scanning begins", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 myriadCoordinatorBTLEDidStartScanning:self];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)heySiri:(id)a3 failedToStartAdvertisingWithError:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[SCDACoordinator heySiri:failedToStartAdvertisingWithError:]";
    v9 = 2112;
    v10 = v4;
    _os_log_error_impl(&dword_1DA758000, v5, OS_LOG_TYPE_ERROR, "%s BTLE daemon failed to start advertising with error %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)heySiriStoppedAdvertising:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (self->_myriadState != 5)
  {
    myriadInstrumentation = self->_myriadInstrumentation;
    v5 = [(SCDACoordinator *)self _myriadStateForSelf:?];
    v6 = [(SCDASession *)self->_myriadSession sessionId];
    [(SCDAInstrumentation *)myriadInstrumentation logCDAElectionAdvertisingEnded:v5 withCdaId:v6 withTimestamp:mach_absolute_time()];
  }

  v7 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = mach_absolute_time();
    v14 = 136315394;
    v15 = "[SCDACoordinator heySiriStoppedAdvertising:]";
    v16 = 2048;
    Milliseconds = SCDAMachAbsoluteTimeGetMilliseconds(v9);
    _os_log_impl(&dword_1DA758000, v8, OS_LOG_TYPE_INFO, "%s BTLE daemon advertising ends at: %lld", &v14, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 myriadCoordinatorBTLEDidEndAdvertising:self];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)heySiriAdvertisingPending:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SCDACoordinator heySiriAdvertisingPending:]";
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s BTLE daemon advertising overridden and now pending", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_trackHeySiriStartedAdvertisingAt:(unint64_t)a3
{
  kdebug_trace();
  if (self->_myriadState != 5)
  {
    myriadInstrumentation = self->_myriadInstrumentation;
    v6 = [(SCDACoordinator *)self _myriadStateForSelf:?];
    v7 = [(SCDASession *)self->_myriadSession sessionId];
    [(SCDAInstrumentation *)myriadInstrumentation logCDAElectionAdvertisingStarted:v6 withCdaId:v7 withTimestamp:a3];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 myriadCoordinatorBTLEDidStartAdvertising:self];
  }
}

- (void)heySiriStartedAdvertising:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (+[SCDAUtilities isHorseman](SCDAUtilities, "isHorseman", a3) || +[SCDAUtilities isATV](SCDAUtilities, "isATV") || +[SCDAUtilities isNano])
  {
    v4 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[SCDACoordinator heySiriStartedAdvertising:]";
      _os_log_impl(&dword_1DA758000, v4, OS_LOG_TYPE_INFO, "%s No longer used by this device.", &v9, 0xCu);
    }
  }

  else
  {
    v5 = mach_absolute_time();
    v6 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v9 = 136315394;
      v10 = "[SCDACoordinator heySiriStartedAdvertising:]";
      v11 = 2048;
      Milliseconds = SCDAMachAbsoluteTimeGetMilliseconds(v5);
      _os_log_impl(&dword_1DA758000, v7, OS_LOG_TYPE_INFO, "%s BTLE daemon advertising begins at: %lld", &v9, 0x16u);
    }

    [(SCDACoordinator *)self _trackHeySiriStartedAdvertisingAt:v5];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)heySiriStartedAdvertisingAt:(id)a3 timeStamp:(unint64_t)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (+[SCDAUtilities isHorseman](SCDAUtilities, "isHorseman", a3) || +[SCDAUtilities isATV](SCDAUtilities, "isATV") || +[SCDAUtilities isNano])
  {
    v6 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v10 = 136315394;
      v11 = "[SCDACoordinator heySiriStartedAdvertisingAt:timeStamp:]";
      v12 = 2048;
      Milliseconds = SCDAMachAbsoluteTimeGetMilliseconds(a4);
      _os_log_impl(&dword_1DA758000, v7, OS_LOG_TYPE_INFO, "%s BTLE daemon advertising begins at: %lld", &v10, 0x16u);
    }

    [(SCDACoordinator *)self _trackHeySiriStartedAdvertisingAt:a4];
  }

  else
  {
    v9 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[SCDACoordinator heySiriStartedAdvertisingAt:timeStamp:]";
      _os_log_impl(&dword_1DA758000, v9, OS_LOG_TYPE_INFO, "%s Not yet supported on this device.", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)heySiri:(id)a3 foundDevice:(id)a4 withInfo:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v31 = a4;
  v30 = a5;
  [(SCDACoordinator *)self _createElectionParticipantIdVendorIfRequired];
  [(SCDAElectionParticipantIdVendor *)self->_electionParticipantIdVendor fetchBTLEAddressIfRequired];
  v8 = getWPHeySiriKeyManufacturerData();
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v9 = getWPHeySiriKeyDeviceAddressSymbolLoc_ptr;
  v41 = getWPHeySiriKeyDeviceAddressSymbolLoc_ptr;
  if (!getWPHeySiriKeyDeviceAddressSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getWPHeySiriKeyDeviceAddressSymbolLoc_block_invoke;
    *&buf[24] = &unk_1E85D3638;
    *&buf[32] = &v38;
    v10 = WirelessProximityLibrary();
    v11 = dlsym(v10, "WPHeySiriKeyDeviceAddress");
    *(*(*&buf[32] + 8) + 24) = v11;
    getWPHeySiriKeyDeviceAddressSymbolLoc_ptr = *(*(*&buf[32] + 8) + 24);
    v9 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (!v9)
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v12 = *v9;
  v13 = v12;
  if (v8)
  {
    v14 = [v30 objectForKey:v8];
    if (v13)
    {
LABEL_6:
      v15 = [v30 objectForKey:v13];
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
    if (v12)
    {
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_9:
  v16 = [SCDAElectionParticipantIdVendor computeId:v15 withPayload:v14];
  v17 = [[SCDARecord alloc] initWithDeviceID:v31 data:v14 electionParticipantId:v16];
  [(SCDARecord *)v17 setRecordType:9];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = objc_loadWeakRetained(&self->_delegate);
    [v20 myriadCoordinator:self didReceiveAdvertisement:v17];
  }

  if ([(SCDARecord *)v17 deviceGroup]== self->_deviceGroup)
  {
    v21 = [(SCDARecord *)v17 deviceID];
    v22 = [v21 UUIDString];

    myriadWorkQueue = self->_myriadWorkQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__SCDACoordinator_heySiri_foundDevice_withInfo___block_invoke;
    block[3] = &unk_1E85D3610;
    block[4] = self;
    v33 = v31;
    v34 = v15;
    v35 = v17;
    v36 = v14;
    v37 = v22;
    v24 = v22;
    dispatch_async(myriadWorkQueue, block);
  }

  else
  {
    v25 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v26 = v25;
      v27 = [(SCDARecord *)v17 deviceGroup];
      *buf = 136315906;
      *&buf[4] = "[SCDACoordinator heySiri:foundDevice:withInfo:]";
      *&buf[12] = 1024;
      *&buf[14] = v27;
      *&buf[18] = 2112;
      *&buf[20] = v31;
      *&buf[28] = 2112;
      *&buf[30] = v14;
      _os_log_impl(&dword_1DA758000, v26, OS_LOG_TYPE_INFO, "%s BTLE ignoring advert from other deviceGroup %d: %@ data= %@", buf, 0x26u);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __48__SCDACoordinator_heySiri_foundDevice_withInfo___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v3[1];
    v5 = v2;
    v6 = [v3 _stateAsString:v4];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v46 = 136316418;
    v47 = "[SCDACoordinator heySiri:foundDevice:withInfo:]_block_invoke";
    v48 = 2112;
    v49 = v6;
    v50 = 2112;
    v51 = v7;
    v52 = 2112;
    v53 = v8;
    v54 = 2112;
    v55 = v9;
    v56 = 2112;
    v57 = v10;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s #scda BTLE processing advert in state: %@ from: %@ BTLE address= %@ record= %@ advData= %@", &v46, 0x3Eu);
  }

  v11 = *(a1 + 32);
  switch(v11[1])
  {
    case 0:
    case 3:
    case 4:
    case 6:
    case 9:
    case 0xBLL:
    case 0xDLL:
    case 0x10:
      v12 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v13 = v12;
        v14 = [v11 _stateAsString];
        v15 = *(a1 + 40);
        v16 = *(a1 + 64);
        v46 = 136315906;
        v47 = "[SCDACoordinator heySiri:foundDevice:withInfo:]_block_invoke";
        v48 = 2112;
        v49 = v14;
        v50 = 2112;
        v51 = v15;
        v52 = 2112;
        v53 = v16;
        _os_log_impl(&dword_1DA758000, v13, OS_LOG_TYPE_INFO, "%s BTLE ignoring advert while in state %@: %@ data= %@", &v46, 0x2Au);
      }

      goto LABEL_36;
    case 1:
    case 0xELL:
    case 0xFLL:
      if (![*(a1 + 32) _testAndUpdateWedgeFilter:*(a1 + 56)])
      {
        goto LABEL_36;
      }

      if (![*(a1 + 56) isSlowdown])
      {
        goto LABEL_14;
      }

      v17 = *(a1 + 32);
      v18 = *(v17 + 208);
      if (!v18)
      {
        goto LABEL_11;
      }

      v19 = [v18 slowdownDelay];
      if (v19 < [*(a1 + 56) slowdownDelay])
      {
        v17 = *(a1 + 32);
LABEL_11:
        objc_storeStrong((v17 + 208), *(a1 + 56));
        *(*(a1 + 32) + 225) = 1;
        v20 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
        {
          v21 = *(a1 + 64);
          v22 = *(a1 + 40);
          v23 = *(*(a1 + 32) + 208);
          v24 = v20;
          v25 = [v23 slowdownDelay];
          v46 = 136315906;
          v47 = "[SCDACoordinator heySiri:foundDevice:withInfo:]_block_invoke";
          v48 = 2112;
          v49 = v22;
          v50 = 2112;
          v51 = v21;
          v52 = 1024;
          LODWORD(v53) = v25;
          _os_log_impl(&dword_1DA758000, v24, OS_LOG_TYPE_INFO, "%s BTLE heard slowdown advert from: %@ data= %@, max delay is now %d msecs", &v46, 0x26u);
        }

        kdebug_trace();
      }

LABEL_14:
      *(*(a1 + 32) + 472) = mach_absolute_time();
      goto LABEL_15;
    case 2:
      v33 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v34 = *(a1 + 40);
        v35 = *(a1 + 64);
        v46 = 136315650;
        v47 = "[SCDACoordinator heySiri:foundDevice:withInfo:]_block_invoke";
        v48 = 2112;
        v49 = v34;
        v50 = 2112;
        v51 = v35;
        _os_log_impl(&dword_1DA758000, v33, OS_LOG_TYPE_INFO, "%s BTLE suppressing straggler response to: %@ data= %@", &v46, 0x20u);
        v11 = *(a1 + 32);
      }

      v31 = v11;
      v32 = 3;
      goto LABEL_30;
    case 5:
      v36 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v37 = *(a1 + 40);
        v38 = *(a1 + 64);
        v46 = 136315650;
        v47 = "[SCDACoordinator heySiri:foundDevice:withInfo:]_block_invoke";
        v48 = 2112;
        v49 = v37;
        v50 = 2112;
        v51 = v38;
        _os_log_impl(&dword_1DA758000, v36, OS_LOG_TYPE_INFO, "%s BTLE heard another device sending continuation: %@ data= %@", &v46, 0x20u);
      }

      goto LABEL_36;
    case 7:
      if ([*(a1 + 56) isAnEmergency])
      {
        goto LABEL_28;
      }

      goto LABEL_36;
    case 8:
    case 0xCLL:
      v26 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v27 = *(a1 + 56);
        v46 = 136315394;
        v47 = "[SCDACoordinator heySiri:foundDevice:withInfo:]_block_invoke";
        v48 = 2112;
        v49 = v27;
        _os_log_impl(&dword_1DA758000, v26, OS_LOG_TYPE_INFO, "%s BTLE heard a record waiting for a emergency handled notice: %@ ", &v46, 0x16u);
      }

      if (![*(a1 + 56) isAnEmergencyHandled])
      {
        goto LABEL_36;
      }

      v28 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v29 = *(a1 + 40);
        v30 = *(a1 + 64);
        v46 = 136315650;
        v47 = "[SCDACoordinator heySiri:foundDevice:withInfo:]_block_invoke";
        v48 = 2112;
        v49 = v29;
        v50 = 2112;
        v51 = v30;
        _os_log_impl(&dword_1DA758000, v28, OS_LOG_TYPE_INFO, "%s BTLE heard an emergency declaration was handled: %@ data= %@", &v46, 0x20u);
      }

      [*(a1 + 32) _signalEmergencyCallHandled];
      v31 = *(a1 + 32);
      v32 = 4;
      goto LABEL_30;
    case 0xALL:
      if ([*(a1 + 56) isAContinuation])
      {
        v39 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
        {
          v40 = *(a1 + 40);
          v41 = *(a1 + 64);
          v46 = 136315650;
          v47 = "[SCDACoordinator heySiri:foundDevice:withInfo:]_block_invoke";
          v48 = 2112;
          v49 = v40;
          v50 = 2112;
          v51 = v41;
          _os_log_impl(&dword_1DA758000, v39, OS_LOG_TYPE_INFO, "%s BTLE heard a continuation: %@ data= %@", &v46, 0x20u);
        }

        [*(a1 + 32) _stopListening:0];
        [*(a1 + 32) _enterState:7];
      }

      else if ([*(a1 + 56) isAnEmergency])
      {
        v43 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
        {
          v44 = *(a1 + 40);
          v45 = *(a1 + 64);
          v46 = 136315650;
          v47 = "[SCDACoordinator heySiri:foundDevice:withInfo:]_block_invoke";
          v48 = 2112;
          v49 = v44;
          v50 = 2112;
          v51 = v45;
          _os_log_impl(&dword_1DA758000, v43, OS_LOG_TYPE_INFO, "%s BTLE heard an emergency declaration: %@ data= %@", &v46, 0x20u);
        }

LABEL_28:
        if ([*(a1 + 32) _shouldHandleEmergency])
        {
          v31 = *(a1 + 32);
          v32 = 9;
LABEL_30:
          [v31 enterState:v32];
        }
      }

      else
      {
LABEL_15:
        [*(a1 + 32) _updateRepliesWith:*(a1 + 56) id:*(a1 + 72) data:*(a1 + 64)];
      }

LABEL_36:
      v42 = *MEMORY[0x1E69E9840];
      return;
    case 0x11:
      [*(a1 + 32) _testAndUpdateWedgeFilter:*(a1 + 56)];
      goto LABEL_36;
    default:
      goto LABEL_36;
  }
}

- (void)heySiriDidUpdateState:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    *buf = 136315394;
    v13 = "[SCDACoordinator heySiriDidUpdateState:]";
    v14 = 2048;
    v15 = [v4 state];
    _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s BTLE daemon state changed to: %ld", buf, 0x16u);
  }

  myriadWorkQueue = self->_myriadWorkQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__SCDACoordinator_heySiriDidUpdateState___block_invoke;
  v10[3] = &unk_1E85D38A0;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(myriadWorkQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __41__SCDACoordinator_heySiriDidUpdateState___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 216) = [*(a1 + 40) state] == 3;
  v2 = *(a1 + 32);
  if (*(v2 + 216) == 1)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[SCDACoordinator heySiriDidUpdateState:]_block_invoke";
      _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s BTLE daemon wiprox state signaling", &v9, 0xCu);
      v2 = *(a1 + 32);
    }

    v4 = MEMORY[0x1E1270630](*(v2 + 336));
    [*(a1 + 32) _clearWiProxReadinessTimer];
    if (v4)
    {
      v4[2](v4);
    }

    if (*(*(a1 + 32) + 464))
    {
      v5 = MEMORY[0x1E1270630]();
      v6 = *(a1 + 32);
      v7 = *(v6 + 464);
      *(v6 + 464) = 0;

      if (v5)
      {
        v5[2](v5);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_triggerABCForType:(id)a3 context:(id)a4
{
  advContextManager = self->_advContextManager;
  if (advContextManager)
  {
    [(SCDAAdvertisementContextManager *)advContextManager triggerABCForType:@"Myriad" subType:a3 context:a4];
  }
}

- (void)waitWiProx:(int64_t)a3 andExecute:(id)a4
{
  v6 = a4;
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SCDACoordinator_waitWiProx_andExecute___block_invoke;
  block[3] = &unk_1E85D35E8;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(myriadWorkQueue, block);
}

- (void)_waitWiProx:(int64_t)a3 andExecute:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  BTLEReady = self->_BTLEReady;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __42__SCDACoordinator__waitWiProx_andExecute___block_invoke;
  v18 = &unk_1E85D32E8;
  v19 = self;
  v8 = v6;
  v20 = v8;
  v9 = MEMORY[0x1E1270630](&v15);
  v10 = [(WPHeySiri *)self->_heySiriBTLE state:v15];
  v11 = v10;
  if (!BTLEReady && v10 == 3 && self->_BLEActivityEnabled)
  {
    v12 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[SCDACoordinator _waitWiProx:andExecute:]";
      _os_log_error_impl(&dword_1DA758000, v12, OS_LOG_TYPE_ERROR, "%s #scda BTLE became ready without updateState call, updating state then dispatching completion", buf, 0xCu);
    }

    [(SCDACoordinator *)self heySiriDidUpdateState:self->_heySiriBTLE];
    goto LABEL_12;
  }

  if (BTLEReady || !self->_BLEActivityEnabled)
  {
LABEL_12:
    v9[2](v9);
    goto LABEL_13;
  }

  v13 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "[SCDACoordinator _waitWiProx:andExecute:]";
    v23 = 2048;
    v24 = a3;
    v25 = 2048;
    v26 = v11;
    _os_log_impl(&dword_1DA758000, v13, OS_LOG_TYPE_INFO, "%s #scda BTLE not ready, waiting to execute for up to %ld msecs (current HeySiri WPState %ld)", buf, 0x20u);
  }

  [(SCDACoordinator *)self _createWaitWiProxTimer:a3 waitBlock:v9];
LABEL_13:

  v14 = *MEMORY[0x1E69E9840];
}

void __42__SCDACoordinator__waitWiProx_andExecute___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 322);
  v4 = *(v2 + 323);
  label = dispatch_queue_get_label(0);
  v6 = label;
  if (label && !strcmp(label, scda_work_queue_label))
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))();
    }

    v12 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v13 = "NO";
      if (v4)
      {
        v14 = "YES";
      }

      else
      {
        v14 = "NO";
      }

      v15 = *(a1 + 32);
      v25 = "[SCDACoordinator _waitWiProx:andExecute:]_block_invoke";
      v16 = *(v15 + 323);
      v17 = *(v15 + 322);
      if (v16)
      {
        v18 = "YES";
      }

      else
      {
        v18 = "NO";
      }

      *buf = 136316162;
      if (v3)
      {
        v19 = "YES";
      }

      else
      {
        v19 = "NO";
      }

      v26 = 2080;
      v27 = v14;
      if (v17)
      {
        v13 = "YES";
      }

      v28 = 2080;
      v29 = v18;
      v30 = 2080;
      v31 = v19;
      v32 = 2080;
      v33 = v13;
      _os_log_impl(&dword_1DA758000, v12, OS_LOG_TYPE_INFO, "%s #scda didRequestForBTLEAdvertisement: %s -> %s, didRequestForBTLEScan: %s -> %s", buf, 0x34u);
    }
  }

  else
  {
    v7 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315651;
      v25 = "[SCDACoordinator _waitWiProx:andExecute:]_block_invoke";
      v26 = 2081;
      v27 = v6;
      v28 = 2081;
      v29 = scda_work_queue_label;
      _os_log_error_impl(&dword_1DA758000, v7, OS_LOG_TYPE_ERROR, "%s #scda Method called on unexpected thread (curr:%{private}s expected:%{private}s)", buf, 0x20u);
      v2 = *(a1 + 32);
    }

    v8 = *(v2 + 104);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__SCDACoordinator__waitWiProx_andExecute___block_invoke_371;
    block[3] = &unk_1E85D35C0;
    v9 = *(a1 + 40);
    v22 = v4;
    block[4] = *(a1 + 32);
    v21 = v9;
    v23 = v3;
    dispatch_async(v8, block);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __42__SCDACoordinator__waitWiProx_andExecute___block_invoke_371(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v4 = "NO";
    if (*(a1 + 48))
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    v6 = *(a1 + 32);
    if (*(v6 + 323))
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    if (*(a1 + 49))
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    if (*(v6 + 322))
    {
      v4 = "YES";
    }

    v10 = 136316162;
    v11 = "[SCDACoordinator _waitWiProx:andExecute:]_block_invoke";
    v12 = 2080;
    v13 = v5;
    v14 = 2080;
    v15 = v7;
    v16 = 2080;
    v17 = v8;
    v18 = 2080;
    v19 = v4;
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s #scda didRequestForBTLEAdvertisement: %s -> %s, didRequestForBTLEScan: %s -> %s", &v10, 0x34u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_createWaitWiProxTimer:(int64_t)a3 waitBlock:(id)a4
{
  v6 = a4;
  [(SCDACoordinator *)self _suspendWiProxReadinessTimer];
  waitTimer = self->_wiproxReadinessTimer.waitTimer;
  v8 = dispatch_time(0, 1000000 * a3);
  dispatch_source_set_timer(waitTimer, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__SCDACoordinator__createWaitWiProxTimer_waitBlock___block_invoke;
  v18[3] = &unk_1E85D3850;
  v18[4] = self;
  v9 = MEMORY[0x1E1270630](v18);
  dispatch_source_set_event_handler(self->_wiproxReadinessTimer.waitTimer, v9);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __52__SCDACoordinator__createWaitWiProxTimer_waitBlock___block_invoke_370;
  v16 = &unk_1E85D3598;
  v17 = v6;
  v10 = v6;
  v11 = MEMORY[0x1E1270630](&v13);
  waitBlock = self->_wiproxReadinessTimer.waitBlock;
  self->_wiproxReadinessTimer.waitBlock = v11;

  [(SCDACoordinator *)self _resumeWiProxReadinessTimer:v13];
}

uint64_t __52__SCDACoordinator__createWaitWiProxTimer_waitBlock___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[SCDACoordinator _createWaitWiProxTimer:waitBlock:]_block_invoke";
    _os_log_error_impl(&dword_1DA758000, v2, OS_LOG_TYPE_ERROR, "%s #scda BTLE WiProx readiness timer timed out, WiProx not called", &v5, 0xCu);
  }

  result = [*(a1 + 32) _clearWiProxReadinessTimer];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __52__SCDACoordinator__createWaitWiProxTimer_waitBlock___block_invoke_370(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SCDACoordinator _createWaitWiProxTimer:waitBlock:]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s #scda BTLE done waiting on WiProx to execute", &v5, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_clearWiProxReadinessTimer
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_wiproxReadinessTimer.waitTimer)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[SCDACoordinator _clearWiProxReadinessTimer]";
      _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s #scda WiProx readiness timer wait block cleared", &v6, 0xCu);
    }

    waitBlock = self->_wiproxReadinessTimer.waitBlock;
    self->_wiproxReadinessTimer.waitBlock = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_suspendWiProxReadinessTimer
{
  v7 = *MEMORY[0x1E69E9840];
  if (!self->_wiproxReadinessTimer.isWaitTimerSuspended)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[SCDACoordinator _suspendWiProxReadinessTimer]";
      _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s #scda WiProx readiness timer suspended", &v5, 0xCu);
    }

    self->_wiproxReadinessTimer.isWaitTimerSuspended = 1;
    dispatch_suspend(self->_wiproxReadinessTimer.waitTimer);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_initializeWiProxReadinessTimer
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[SCDACoordinator _initializeWiProxReadinessTimer]";
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s #scda WiProx readiness timer initialized", &v7, 0xCu);
  }

  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_myriadWorkQueue);
  waitTimer = self->_wiproxReadinessTimer.waitTimer;
  self->_wiproxReadinessTimer.waitTimer = v4;

  dispatch_source_set_event_handler(self->_wiproxReadinessTimer.waitTimer, &__block_literal_global_369);
  [(SCDACoordinator *)self _resumeWiProxReadinessTimer];
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)_testAndUpdateWedgeFilter:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "userConfidence") | (objc_msgSend(v4, "tieBreaker") << 8)}];
  if (![v4 isATrump])
  {
    goto LABEL_12;
  }

  incomingTrumps = self->_incomingTrumps;
  v7 = [MEMORY[0x1E696AD98] numberWithInt:20];
  [(NSMutableDictionary *)incomingTrumps setObject:v7 forKey:v5];

  v8 = [v4 deviceClass];
  v9 = [v4 productType];
  if (+[SCDAUtilities isHorseman]&& v8 == 6 && !v9)
  {
    v10 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v16 = 136315394;
      v17 = "[SCDACoordinator _testAndUpdateWedgeFilter:]";
      v18 = 2112;
      v19 = v4;
      v11 = "%s BTLE ignoring incoming event bad device class (watch) for Horseman %@";
LABEL_10:
      _os_log_impl(&dword_1DA758000, v10, OS_LOG_TYPE_INFO, v11, &v16, 0x16u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v12 = [(NSMutableDictionary *)self->_previousTrumps objectForKeyedSubscript:v5];

  if (!v12)
  {
LABEL_12:
    v13 = [v4 isSane];
    goto LABEL_13;
  }

  v10 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[SCDACoordinator _testAndUpdateWedgeFilter:]";
    v18 = 2112;
    v19 = v4;
    v11 = "%s BTLE ignoring as wedged suppress %@";
    goto LABEL_10;
  }

LABEL_11:
  v13 = 0;
LABEL_13:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (int)_myriadStateForSelf:(unint64_t)a3
{
  if (a3 < 0x12)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

- (void)notifyCurrentDecisionResult
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SCDACoordinator_notifyCurrentDecisionResult__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

void __46__SCDACoordinator_notifyCurrentDecisionResult__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2 == 14 || v2 == 1)
  {
    v4 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v5 = v4;
      v6 = [v1 _stateAsString:v2];
      v12 = 136315394;
      v13 = "[SCDACoordinator notifyCurrentDecisionResult]_block_invoke";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s BTLE ignoring decision result callback (state = %@)", &v12, 0x16u);
    }
  }

  else if (*(v1 + 304) == 1)
  {
    v8 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [v1 _stateAsString:v2];
      v12 = 136315394;
      v13 = "[SCDACoordinator notifyCurrentDecisionResult]_block_invoke";
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_1DA758000, v9, OS_LOG_TYPE_INFO, "%s BTLE reposting result win (state = %@)", &v12, 0x16u);

      v1 = *(a1 + 32);
    }

    [*(v1 + 424) publishState:{objc_msgSend(v1, "_nextElectionPublisherState")}];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_updateRepliesWith:(id)a3 id:(id)a4 data:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableDictionary *)self->_replies objectForKey:v9];
  v12 = v11;
  if (!v11)
  {
    v15 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *v25 = 136315650;
      *&v25[4] = "[SCDACoordinator _updateRepliesWith:id:data:]";
      *&v25[12] = 2112;
      *&v25[14] = v10;
      *&v25[22] = 2112;
      *v26 = v9;
      v16 = "%s BTLE Updating record table, data= %@, for %@";
LABEL_18:
      _os_log_impl(&dword_1DA758000, v15, OS_LOG_TYPE_INFO, v16, v25, 0x20u);
    }

LABEL_19:
    [(NSMutableDictionary *)self->_replies setObject:v8 forKey:v9, *v25, *&v25[16], *v26];
    replyCounts = self->_replyCounts;
    v19 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    v21 = replyCounts;
LABEL_20:
    [(NSMutableDictionary *)v21 setObject:v19 forKey:v9];

    goto LABEL_21;
  }

  if ([v11 isAContinuation] && (objc_msgSend(v8, "isAContinuation") & 1) == 0)
  {
    v22 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *v25 = 136315650;
      *&v25[4] = "[SCDACoordinator _updateRepliesWith:id:data:]";
      *&v25[12] = 2112;
      *&v25[14] = v10;
      *&v25[22] = 2112;
      *v26 = v9;
      _os_log_impl(&dword_1DA758000, v22, OS_LOG_TYPE_INFO, "%s BTLE Updating record table, data= %@, for %@", v25, 0x20u);
    }

    goto LABEL_15;
  }

  if (![v8 isALateSuppressionTrumpFor:v12])
  {
    if ([v8 isEqual:v12])
    {
      v17 = MEMORY[0x1E696AD98];
      v18 = [(NSMutableDictionary *)self->_replyCounts objectForKey:v9];
      v19 = [v17 numberWithInteger:{objc_msgSend(v18, "integerValue") + 1}];

      v20 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        *v25 = 136315650;
        *&v25[4] = "[SCDACoordinator _updateRepliesWith:id:data:]";
        *&v25[12] = 2112;
        *&v25[14] = v9;
        *&v25[22] = 2112;
        *v26 = v19;
        _os_log_impl(&dword_1DA758000, v20, OS_LOG_TYPE_INFO, "%s BTLE Incrementing record count for %@ to %@", v25, 0x20u);
      }

      v21 = self->_replyCounts;
      goto LABEL_20;
    }

    v15 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *v25 = 136315650;
      *&v25[4] = "[SCDACoordinator _updateRepliesWith:id:data:]";
      *&v25[12] = 2112;
      *&v25[14] = v12;
      *&v25[22] = 2112;
      *v26 = v8;
      v16 = "%s BTLE Updating record table with a newer advertisement(%@ -> %@)";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v13 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    *v25 = 136316162;
    *&v25[4] = "[SCDACoordinator _updateRepliesWith:id:data:]";
    *&v25[12] = 1024;
    *&v25[14] = [v12 goodness];
    *&v25[18] = 1024;
    *&v25[20] = [v8 goodness];
    *v26 = 2112;
    *&v26[2] = v10;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_1DA758000, v14, OS_LOG_TYPE_INFO, "%s BTLE Updating record table with a late suppression(%hhu -> %hhu), data= %@, for %@", v25, 0x2Cu);
  }

LABEL_15:
  [(NSMutableDictionary *)self->_replies setObject:v8 forKey:v9];
LABEL_21:

  v24 = *MEMORY[0x1E69E9840];
}

- (id)_sortedReplies:(id)a3
{
  v3 = [a3 allValues];
  v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_365];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v4 count] < 2)
  {
    [v5 addObjectsFromArray:v4];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __34__SCDACoordinator__sortedReplies___block_invoke_2;
    v9[3] = &unk_1E85D3548;
    v10 = v6;
    v11 = v5;
    v7 = v6;
    [v4 enumerateObjectsUsingBlock:v9];
  }

  return v5;
}

void __34__SCDACoordinator__sortedReplies___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 asAdvertisementData];
  if ([v4 isCollectedFromContextCollector])
  {
    if ([*(a1 + 32) containsObject:v3])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    [*(a1 + 32) addObject:v3];
    [*(a1 + 40) addObject:v4];
  }

LABEL_4:
}

uint64_t __34__SCDACoordinator__sortedReplies___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  if ([v6 deviceClass] == 10 && objc_msgSend(v6, "isATrump") && objc_msgSend(v7, "deviceClass") == 7 && (objc_msgSend(v7, "isATrump") & 1) != 0)
  {
    goto LABEL_21;
  }

  if ([v6 deviceClass] == 7 && objc_msgSend(v6, "isATrump") && objc_msgSend(v7, "deviceClass") == 10 && (objc_msgSend(v7, "isATrump") & 1) != 0)
  {
    v8 = -1;
    goto LABEL_20;
  }

  v9 = [v6 goodness];
  if (v9 == [v7 goodness])
  {
    v10 = [v6 userConfidence];
    v11 = [v7 userConfidence];
  }

  else
  {
    v10 = [v6 goodness];
    v11 = [v7 goodness];
  }

  v12 = v11;
  if (v10 == v11)
  {
    v10 = [v6 tieBreaker];
    v12 = [v7 tieBreaker];
    if ([v6 hasEqualAdvertisementData:v7])
    {
      if ([v6 isCollectedFromContextCollector] && !objc_msgSend(v7, "isCollectedFromContextCollector"))
      {
LABEL_21:
        v8 = 1;
        goto LABEL_20;
      }
    }
  }

  if (v10 < v12)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

LABEL_20:

  return v8;
}

- (BOOL)_shouldHandleEmergency
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(SCDACoordinator *)self _sortedReplies:self->_repliesBeforeDecision];
  v4 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    replies = self->_replies;
    *buf = 136315394;
    v25 = "[SCDACoordinator _shouldHandleEmergency]";
    v26 = 2112;
    v27 = replies;
    _os_log_impl(&dword_1DA758000, v4, OS_LOG_TYPE_INFO, "%s BTLE emergencyCallSummary: %@", buf, 0x16u);
  }

  [v3 enumerateObjectsUsingBlock:&__block_literal_global_362];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v19 + 1) + 8 * v10);
      if ([v11 deviceClass] == 2)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v13 = [v11 isMe];
    v14 = SCDALogContextCore;
    v15 = os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO);
    if (v13)
    {
      if (v15)
      {
        *buf = 136315138;
        v25 = "[SCDACoordinator _shouldHandleEmergency]";
        v16 = "%s BTLE Emergency call: this device should handle";
LABEL_19:
        _os_log_impl(&dword_1DA758000, v14, OS_LOG_TYPE_INFO, v16, buf, 0xCu);
      }
    }

    else if (v15)
    {
      *buf = 136315138;
      v25 = "[SCDACoordinator _shouldHandleEmergency]";
      v16 = "%s BTLE Emergency call: This device should NOT handle, another is better";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

LABEL_11:

  v12 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[SCDACoordinator _shouldHandleEmergency]";
    _os_log_impl(&dword_1DA758000, v12, OS_LOG_TYPE_INFO, "%s BTLE Emergency Call: No device available to handle this call", buf, 0xCu);
  }

  LOBYTE(v13) = 0;
LABEL_21:

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

void __41__SCDACoordinator__shouldHandleEmergency__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[SCDACoordinator _shouldHandleEmergency]_block_invoke";
    v9 = 2048;
    v10 = a3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s BTLE EmergencyCallSummary %lu: %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldContinueFor:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SCDACoordinator *)self _sortedReplies];
  lastWonBySmallAmountDate = self->_lastWonBySmallAmountDate;
  self->_lastWonBySmallAmountDate = 0;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v30;
LABEL_3:
    v12 = 0;
    v28 = v10 + v9;
    while (1)
    {
      if (*v30 != v11)
      {
        objc_enumerationMutation(v7);
      }

      if (v4)
      {
        v13 = *(*(&v29 + 1) + 8 * v12);
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v13, "deviceClass")}];
        v15 = [v4 containsObject:v14];

        if (!v15)
        {
          break;
        }
      }

      ++v10;
      if (v9 == ++v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
        v10 = v28;
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v18 = [v13 isATrump];
    v19 = [v13 isMe];
    v17 = v18 & v19;
    if ((v18 & 1) == 0)
    {
      v16 = v7;
      if ((v19 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v10 + 1 < [v7 count])
      {
        v20 = [v7 objectAtIndex:v10 + 1];
        v21 = [v13 goodness];
        if ((v21 - [v20 goodness]) <= 2)
        {
          v22 = SCDALogContextCore;
          if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v34 = "[SCDACoordinator _shouldContinueFor:]";
            _os_log_impl(&dword_1DA758000, v22, OS_LOG_TYPE_INFO, "%s #scda Won by a small margin, storing state to mitigate recency boost", buf, 0xCu);
          }

          v23 = [MEMORY[0x1E695DF00] date];
          v24 = *(v27 + 504);
          *(v27 + 504) = v23;
        }
      }

      v17 = 1;
    }

    v16 = v7;
  }

  else
  {
LABEL_10:

    v16 = [v7 firstObject];
    if (([v16 isMe] & 1) == 0 && objc_msgSend(v16, "isInEarTrump") && -[SCDARecord isInEarTrump](self->_triggerRecord, "isInEarTrump"))
    {
      v17 = 1;
    }

    else
    {
      v17 = [v16 isMe];
    }
  }

LABEL_25:

  v25 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)emptyRecord
{
  v2 = [[SCDARecord alloc] initWithEmpty:self->_device];

  return v2;
}

- (id)alertFiringRecord
{
  v3 = [SCDARecord alloc];
  v4 = [(SCDAContext *)self->_currentMyriadContext perceptualAudioHash];
  v5 = [(SCDARecord *)v3 initWithAlertFiringTrigger:v4 device:self->_device];

  return v5;
}

- (id)inEarRecord
{
  v3 = [SCDARecord alloc];
  v4 = [(SCDAContext *)self->_currentMyriadContext perceptualAudioHash];
  v5 = [(SCDARecord *)v3 initWithInEarTrigger:v4 device:self->_device];

  return v5;
}

- (id)inTaskRecord
{
  v3 = [SCDARecord alloc];
  v4 = [(SCDAContext *)self->_currentMyriadContext perceptualAudioHash];
  v5 = [(SCDARecord *)v3 initWithInTaskTrigger:v4 device:self->_device];

  return v5;
}

- (id)carplayRecord
{
  v3 = [SCDARecord alloc];
  v4 = [(SCDAContext *)self->_currentMyriadContext perceptualAudioHash];
  v5 = [(SCDARecord *)v3 initWithCarPlayTrigger:v4 device:self->_device];

  return v5;
}

- (id)overrideRecord
{
  v3 = [SCDARecord alloc];
  v4 = [(SCDAContext *)self->_currentMyriadContext perceptualAudioHash];
  v5 = [(SCDARecord *)v3 initWithOverrideTrigger:v4 device:self->_device];

  return v5;
}

- (id)emergencyHandledRecord
{
  v2 = [[SCDARecord alloc] initWithEmergencyHandled:self->_device];

  return v2;
}

- (id)emergencyRecord
{
  v2 = [[SCDARecord alloc] initWithEmergency:self->_device];

  return v2;
}

- (id)continuationRecord
{
  v2 = [[SCDARecord alloc] initWithContinuation:self->_device];

  return v2;
}

- (id)outgoingRecord
{
  v3 = [SCDARecord alloc];
  v4 = [(SCDAContext *)self->_currentMyriadContext perceptualAudioHash];
  v5 = [(SCDARecord *)v3 initWithOutgoing:v4 device:self->_device];

  return v5;
}

- (id)lateSuppressionRecord
{
  v2 = [[SCDARecord alloc] initWithLateSuppression:self->_lastPHash device:self->_device];

  return v2;
}

- (id)rtsTriggerRecord
{
  v2 = [[SCDARecord alloc] initWithRTS:self->_device];

  return v2;
}

- (id)_phsSetupRecord
{
  v2 = [[SCDARecord alloc] initWithPHS:self->_device];

  return v2;
}

- (id)voiceTriggerRecord
{
  v3 = [SCDARecord alloc];
  v4 = [(SCDAContext *)self->_currentMyriadContext perceptualAudioHash];
  v5 = [(SCDARecord *)v3 initWithVoiceTrigger:v4 device:self->_device];

  return v5;
}

- (void)_advertiseWith:(id)a3 afterDelay:(float)a4 maxInterval:(float)a5 voiceTriggerLatency:(float)a6 thenExecute:(id)a7
{
  v47 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a7;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __89__SCDACoordinator__advertiseWith_afterDelay_maxInterval_voiceTriggerLatency_thenExecute___block_invoke;
  v37[3] = &unk_1E85D34B8;
  v14 = v12;
  v38 = v14;
  v39 = self;
  v40 = a5;
  v41 = a4;
  v42 = a6;
  v15 = MEMORY[0x1E1270630](v37);
  previousAdvertisedData = self->_previousAdvertisedData;
  if (previousAdvertisedData && [(NSData *)previousAdvertisedData isEqualToData:v14])
  {
    v17 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v28 = self->_previousAdvertisedData;
      v29 = v17;
      [(NSData *)v28 description];
      v30 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136315394;
      v44 = "[SCDACoordinator _advertiseWith:afterDelay:maxInterval:voiceTriggerLatency:thenExecute:]";
      v45 = 2112;
      v46 = v30;
      _os_log_error_impl(&dword_1DA758000, v29, OS_LOG_TYPE_ERROR, "%s CRITICAL ERROR: BTLE error: attempting to readvertise %@; Myriad to stop advertising and proceed as if win occurred, multi-response likely", buf, 0x16u);
    }

    self->_stateMachineEncounteredError = 1;
    [(SCDACoordinator *)self _enterState:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v19 = WeakRetained;
      v20 = objc_loadWeakRetained(&self->_delegate);
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        v22 = objc_loadWeakRetained(&self->_delegate);
        *&v23 = a4;
        *&v24 = a5;
        [v22 scdaAdvertisingWillBeginWithDelay:v23 advertisingInterval:v24];
      }
    }

    v25 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v44 = "[SCDACoordinator _advertiseWith:afterDelay:maxInterval:voiceTriggerLatency:thenExecute:]";
      v45 = 2048;
      v46 = a4;
      _os_log_impl(&dword_1DA758000, v25, OS_LOG_TYPE_INFO, "%s BTLE starting advert delay timer for %f secs", buf, 0x16u);
    }

    if (a4 == 0.0)
    {
      (v15)[2](v15, v14, v13);
    }

    else
    {
      self->_isDelayingAdvertisement = 1;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __89__SCDACoordinator__advertiseWith_afterDelay_maxInterval_voiceTriggerLatency_thenExecute___block_invoke_358;
      v31[3] = &unk_1E85D34E0;
      v31[4] = self;
      v35 = a4;
      v36 = a5;
      v33 = v15;
      v32 = v14;
      v34 = v13;
      *&v26 = a4;
      [(SCDACoordinator *)self _startTimer:@"advert delay" for:v31 thenExecute:v26];
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __89__SCDACoordinator__advertiseWith_afterDelay_maxInterval_voiceTriggerLatency_thenExecute___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    *buf = 136315394;
    v49 = "[SCDACoordinator _advertiseWith:afterDelay:maxInterval:voiceTriggerLatency:thenExecute:]_block_invoke";
    v50 = 2112;
    v51 = v8;
    _os_log_impl(&dword_1DA758000, v7, OS_LOG_TYPE_INFO, "%s #scda BTLE delay finished, advertising: %@", buf, 0x16u);
  }

  [*(a1 + 40) _createElectionParticipantIdVendorIfRequired];
  [*(*(a1 + 40) + 256) fetchBTLEAddressIfRequired];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 80));
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained((*(a1 + 40) + 80));
    [v11 myriadCoordinator:*(a1 + 40) willStartAdvertisingUsingData:v5];
  }

  if ([*(a1 + 40) _shouldUseContextCollector])
  {
    v12 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v49 = "[SCDACoordinator _advertiseWith:afterDelay:maxInterval:voiceTriggerLatency:thenExecute:]_block_invoke";
      _os_log_impl(&dword_1DA758000, v12, OS_LOG_TYPE_INFO, "%s #scda removed the context collector push that was not working since SCDA extraction", buf, 0xCu);
    }
  }

  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __89__SCDACoordinator__advertiseWith_afterDelay_maxInterval_voiceTriggerLatency_thenExecute___block_invoke_349;
  v46[3] = &unk_1E85D32E8;
  v46[4] = v13;
  v15 = v6;
  v47 = v15;
  LODWORD(v16) = v14;
  [v13 _startTimer:@"advertise" for:v46 thenExecute:v16];
  kdebug_trace();
  v17 = *(a1 + 40);
  if (v17[1] != 5)
  {
    v18 = v17[61];
    v19 = [v17 _myriadStateForSelf:?];
    v21 = *(a1 + 48);
    v20 = *(a1 + 52);
    v22 = *(a1 + 56);
    v23 = [*(*(a1 + 40) + 392) sessionId];
    v24 = mach_absolute_time();
    LODWORD(v25) = v20;
    LODWORD(v26) = v21;
    LODWORD(v27) = v22;
    [v18 logCDAElectionAdvertisingStarting:v19 withDelay:v23 withInterval:v24 withVoiceTriggerLatency:v25 withCdaId:v26 withTimestamp:v27];
  }

  v28 = getWPHeySiriAdvertisingData();
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = v29;
  if (v28)
  {
    [v29 setObject:v5 forKey:v28];
  }

  v31 = *(a1 + 40);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __89__SCDACoordinator__advertiseWith_afterDelay_maxInterval_voiceTriggerLatency_thenExecute___block_invoke_2;
  v43[3] = &unk_1E85D3270;
  v43[4] = v31;
  v32 = v5;
  v44 = v32;
  v33 = v30;
  v45 = v33;
  [v31 _waitWiProxAndExecute:v43];
  v34 = objc_loadWeakRetained((*(a1 + 40) + 80));
  if (v34)
  {
    v35 = v34;
    v36 = objc_loadWeakRetained((*(a1 + 40) + 80));
    v37 = objc_opt_respondsToSelector();

    if (v37)
    {
      v38 = objc_loadWeakRetained((*(a1 + 40) + 80));
      [v38 scdaAdvertisingDidBegin:*(a1 + 40)];
    }
  }

  objc_storeStrong((*(a1 + 40) + 32), *(a1 + 32));
  v39 = *(a1 + 40);
  v40 = *(v39 + 160);
  if (v40)
  {
    v41 = [*(v39 + 264) electionParticipantId];
    [v40 setElectionParticipantId:v41];
  }

  v42 = *MEMORY[0x1E69E9840];
}

uint64_t __89__SCDACoordinator__advertiseWith_afterDelay_maxInterval_voiceTriggerLatency_thenExecute___block_invoke_358(uint64_t a1)
{
  *(*(a1 + 32) + 229) = 0;
  v2 = [*(*(a1 + 32) + 160) recordType];
  v3 = 0;
  v4 = *(a1 + 32);
  if (v2 != 4)
  {
    v3 = *(v4 + 223) ^ 1;
  }

  if (*(v4 + 8) == 1 && (v3 & 1) == 0)
  {
    v5 = [MEMORY[0x1E695DF00] date];
    v6 = [v5 dateByAddingTimeInterval:*(a1 + 64)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 352);
    *(v7 + 352) = v6;

    v9 = [MEMORY[0x1E695DF00] date];
    v10 = [v9 dateByAddingTimeInterval:(*(a1 + 64) + *(a1 + 68))];
    v11 = *(a1 + 32);
    v12 = *(v11 + 360);
    *(v11 + 360) = v10;
  }

  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  v15 = *(*(a1 + 48) + 16);

  return v15();
}

uint64_t __89__SCDACoordinator__advertiseWith_afterDelay_maxInterval_voiceTriggerLatency_thenExecute___block_invoke_349(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1] == 1)
  {
    v3 = v2[61];
    v4 = [v2 _myriadStateForSelf:1];
    v5 = [*(*(a1 + 32) + 392) sessionId];
    [v3 logCDAElectionTimerEnded:v4 withCdaId:v5 withTimestamp:mach_absolute_time()];
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

uint64_t __89__SCDACoordinator__advertiseWith_afterDelay_maxInterval_voiceTriggerLatency_thenExecute___block_invoke_2(uint64_t result)
{
  v1 = result;
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(result + 32);
  if ((*(v2 + 221) & 1) != 0 || *(v2 + 217) == 1)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v4 = v3;
      v5 = mach_absolute_time();
      Milliseconds = SCDAMachAbsoluteTimeGetMilliseconds(v5);
      v7 = v1[5];
      v9 = 136315650;
      v10 = "[SCDACoordinator _advertiseWith:afterDelay:maxInterval:voiceTriggerLatency:thenExecute:]_block_invoke_2";
      v11 = 2048;
      v12 = Milliseconds;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1DA758000, v4, OS_LOG_TYPE_INFO, "%s BTLE daemon asked to start advertise at: %lld %@", &v9, 0x20u);

      v2 = v1[4];
    }

    [*(v2 + 248) startScanningAndAdvertisingWithData:v1[6]];
    *(v1[4] + 322) = 1;
    *(v1[4] + 323) = 1;
    result = [*(v1[4] + 256) fetchBTLEAddressIfRequired];
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_computeElectionParticipantIds:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  electionParticipantIdVendor = self->_electionParticipantIdVendor;
  if (!electionParticipantIdVendor)
  {
    v8 = SCDALogContextCore;
    if (!os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v12 = 136315138;
    v13 = "[SCDACoordinator _computeElectionParticipantIds:]";
    v9 = "%s #scda No electionParticipantIdVendor. ElectionParticipantId will not be created!";
LABEL_9:
    _os_log_debug_impl(&dword_1DA758000, v8, OS_LOG_TYPE_DEBUG, v9, &v12, 0xCu);
    goto LABEL_7;
  }

  if (!v4)
  {
    electionParticipantIds = self->_electionParticipantIds;
    self->_electionParticipantIds = 0;

    v8 = SCDALogContextCore;
    if (!os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v12 = 136315138;
    v13 = "[SCDACoordinator _computeElectionParticipantIds:]";
    v9 = "%s #scda No advertisement data. ElectionParticipantId will not be created!";
    goto LABEL_9;
  }

  v6 = [(SCDAElectionParticipantIdVendor *)electionParticipantIdVendor computeIds:v4];
  v7 = self->_electionParticipantIds;
  self->_electionParticipantIds = v6;

LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
}

- (void)advertiseWith:(id)a3 afterDelay:(float)a4 maxInterval:(float)a5
{
  v8 = a3;
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SCDACoordinator_advertiseWith_afterDelay_maxInterval___block_invoke;
  block[3] = &unk_1E85D3800;
  block[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_async(myriadWorkQueue, block);
}

uint64_t __56__SCDACoordinator_advertiseWith_afterDelay_maxInterval___block_invoke(uint64_t a1, double a2, double a3)
{
  *(*(a1 + 32) + 168) = 10;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  LODWORD(a2) = *(a1 + 48);
  LODWORD(a3) = *(a1 + 52);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__SCDACoordinator_advertiseWith_afterDelay_maxInterval___block_invoke_2;
  v6[3] = &unk_1E85D3850;
  v6[4] = v4;
  return [v4 _advertiseWith:v3 afterDelay:v6 maxInterval:a2 voiceTriggerLatency:a3 thenExecute:0.0];
}

void __56__SCDACoordinator_advertiseWith_afterDelay_maxInterval___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SCDACoordinator_advertiseWith_afterDelay_maxInterval___block_invoke_3;
  block[3] = &unk_1E85D3850;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)advertiseWith:(id)a3
{
  v4 = a3;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SCDACoordinator_advertiseWith___block_invoke;
  v7[3] = &unk_1E85D38A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(myriadWorkQueue, v7);
}

uint64_t __33__SCDACoordinator_advertiseWith___block_invoke(uint64_t a1, double a2, double a3)
{
  *(*(a1 + 32) + 168) = 10;
  LODWORD(a3) = 0.5;
  return [*(a1 + 32) _advertiseWith:*(a1 + 40) afterDelay:0 maxInterval:0.0 voiceTriggerLatency:a3 thenExecute:0.0];
}

- (void)_startAdvertising:(id)a3 afterDelay:(float)a4 maxInterval:(float)a5
{
  self->_recordType = 10;
  v10 = [a3 asAdvertisementData];
  *&v8 = a4;
  *&v9 = a5;
  [(SCDACoordinator *)self _advertiseWith:v10 afterDelay:0 maxInterval:v8 voiceTriggerLatency:v9 thenExecute:0.0];
}

- (void)startAdvertising:(id)a3 afterDelay:(float)a4 maxInterval:(float)a5
{
  v8 = a3;
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SCDACoordinator_startAdvertising_afterDelay_maxInterval___block_invoke;
  block[3] = &unk_1E85D3800;
  block[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_async(myriadWorkQueue, block);
}

uint64_t __59__SCDACoordinator_startAdvertising_afterDelay_maxInterval___block_invoke(uint64_t a1, double a2, double a3)
{
  LODWORD(a2) = *(a1 + 48);
  LODWORD(a3) = *(a1 + 52);
  return [*(a1 + 32) _startAdvertising:*(a1 + 40) afterDelay:a2 maxInterval:a3];
}

- (void)_advertiseIndefinite:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__SCDACoordinator__advertiseIndefinite___block_invoke;
  v6[3] = &unk_1E85D38A0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(SCDACoordinator *)self _waitWiProxAndExecute:v6];
}

void __40__SCDACoordinator__advertiseIndefinite___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = getWPHeySiriAdvertisingData();
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [*(a1 + 32) asAdvertisementData];
  if (v2)
  {
    [v3 setObject:v4 forKey:v2];
  }

  v5 = *(a1 + 40);
  if (*(v5 + 221) == 1)
  {
    v6 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = mach_absolute_time();
      v10 = 136315650;
      v11 = "[SCDACoordinator _advertiseIndefinite:]_block_invoke";
      v12 = 2048;
      Milliseconds = SCDAMachAbsoluteTimeGetMilliseconds(v8);
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_1DA758000, v7, OS_LOG_TYPE_INFO, "%s BTLE daemon asked to start advertise at: %lld %@", &v10, 0x20u);

      v5 = *(a1 + 40);
    }

    [*(v5 + 248) startScanningAndAdvertisingWithData:v3];
    *(*(a1 + 40) + 322) = 1;
    *(*(a1 + 40) + 323) = 1;
    [*(a1 + 40) _createElectionParticipantIdVendorIfRequired];
    [*(*(a1 + 40) + 256) fetchBTLEAddressIfRequired];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_advertise:(id)a3 afterDelay:(float)a4 maxInterval:(float)a5 voiceTriggerLatency:(float)a6 andMoveTo:(unint64_t)a7
{
  self->_nextState = a7;
  v11 = [a3 asAdvertisementData];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__SCDACoordinator__advertise_afterDelay_maxInterval_voiceTriggerLatency_andMoveTo___block_invoke;
  v14[3] = &unk_1E85D3850;
  v14[4] = self;
  *&v12 = a5;
  *&v13 = a6;
  [(SCDACoordinator *)self _advertiseWith:v11 afterDelay:v14 maxInterval:COERCE_DOUBLE(LODWORD(a4)) voiceTriggerLatency:v12 thenExecute:v13];
}

- (void)_advertiseSuppressTriggerInOutput
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = mach_absolute_time();
  if (_SCDAMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_SCDAMachAbsoluteTimeRate_onceToken, &__block_literal_global_42);
  }

  v4 = *&_SCDAMachAbsoluteTimeRate_rate;
  v5 = [(SCDARecord *)self->_triggerRecord voiceTriggerMachTime];
  if (_SCDAMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_SCDAMachAbsoluteTimeRate_onceToken, &__block_literal_global_42);
  }

  v6 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v14 = v4 * v3 / 1000000000.0 + *&_SCDAMachAbsoluteTimeRate_rate * v5 / -1000000000.0;
    previousState = self->_previousState;
    v16 = v6;
    v17 = [(SCDACoordinator *)self _stateAsString:previousState];
    v18 = [(SCDACoordinator *)self _stateAsString:self->_myriadState];
    clientIsDeciding = self->_clientIsDeciding;
    v20 = [(SCDARecord *)self->_triggerRecord voiceTriggerMachTime];
    *buf = 136316418;
    v25 = "[SCDACoordinator _advertiseSuppressTriggerInOutput]";
    v26 = 2112;
    v27 = v17;
    v28 = 2112;
    v29 = v18;
    v30 = 1024;
    v31 = clientIsDeciding;
    v32 = 2048;
    v33 = v20;
    v34 = 2048;
    v35 = v14;
    _os_log_debug_impl(&dword_1DA758000, v16, OS_LOG_TYPE_DEBUG, "%s fromState: %@, myriadState: %@, is _clientIsDeciding: %d, _voiceTriggerTime: %llu, secondsSinceVoiceTrigger: %f", buf, 0x3Au);
  }

  if ([(SCDACoordinator *)self _okayToSuppressOnOutput])
  {
    v23 = 1056964608;
    *buf = 0;
    if (self->_outgoingTrigger)
    {
      v23 = 1065353216;
      self->_outgoingTrigger = 0;
    }

    if (self->_clientRespondingToCarPlay)
    {
      *buf = 0;
      [(SCDADevice *)self->_device inEarInterval];
      *&v7 = v7;
      v23 = LODWORD(v7);
    }

    v22 = 0;
    [SCDAElectionWindow electionWindowTimeRemaining:[(SCDARecord *)self->_triggerRecord voiceTriggerMachTime] fromNow:mach_absolute_time()];
    if (v8 > 0.0)
    {
      [(SCDACoordinator *)self setupAdvIntervalsInDelay:buf interval:&v23 voiceTriggerLatency:&v22 withSlowdown:0];
    }

    v9 = [(SCDARecord *)self->_triggerRecord asAdvertisementData];
    [(SCDACoordinator *)self _createMyriadSessionIfRequired];
    [(SCDACoordinator *)self _addElectionAdvertisementDataToMyriadSession:v9];
    LODWORD(v11) = v23;
    LODWORD(v10) = *buf;
    LODWORD(v12) = v22;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __52__SCDACoordinator__advertiseSuppressTriggerInOutput__block_invoke;
    v21[3] = &unk_1E85D3850;
    v21[4] = self;
    [(SCDACoordinator *)self _advertiseWith:v9 afterDelay:v21 maxInterval:v10 voiceTriggerLatency:v11 thenExecute:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __52__SCDACoordinator__advertiseSuppressTriggerInOutput__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _endAdvertising:0];
  v2 = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  if (v4 <= 5)
  {
    if (v4 > 2)
    {
      [*(a1 + 32) _winElection];
      v2 = 4;
      goto LABEL_19;
    }

    if (!v4)
    {
LABEL_17:
      v2 = 2;
      goto LABEL_19;
    }

    if (v4 != 1)
    {
      if (v4 != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_4;
    }

LABEL_13:
    v5 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v8 = v5;
      v9 = [v3 _stateAsString:v4];
      v10 = [*(a1 + 32) _stateAsString:*(*(a1 + 32) + 8)];
      v11 = *(*(a1 + 32) + 228);
      v12 = 136315906;
      v13 = "[SCDACoordinator _advertiseSuppressTriggerInOutput]_block_invoke";
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 1024;
      v19 = v11;
      _os_log_debug_impl(&dword_1DA758000, v8, OS_LOG_TYPE_DEBUG, "%s fromState: %@, myriadState: %@, is _clientIsDeciding: %d", &v12, 0x26u);

      v3 = *(a1 + 32);
    }

    if (*(v3 + 228) == 1)
    {
      [v3 _winElection];
    }

    goto LABEL_17;
  }

  if (v4 <= 0x11)
  {
    if (((1 << v4) & 0x33F40) != 0)
    {
LABEL_4:
      v2 = *(v3 + 24);
      goto LABEL_19;
    }

    if (v4 == 7)
    {
      v2 = 10;
      goto LABEL_19;
    }

    if (v4 == 14)
    {
      goto LABEL_13;
    }
  }

LABEL_19:
  result = [*(a1 + 32) enterState:v2];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_advertiseSlowdown
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "[SCDACoordinator _advertiseSlowdown]";
    v13 = 2048;
    v14 = 0x3FDCCCCD00000000;
    v15 = 2048;
    v16 = 0x3FF0000000000000;
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s BTLE slowdown advertising delay: %f finished, interval: %f", buf, 0x20u);
  }

  self->_clientDoneRespondingToSlowdown = 0;
  maxSlowdownRecord = self->_maxSlowdownRecord;
  self->_maxSlowdownRecord = 0;

  kdebug_trace();
  v5 = [(SCDACoordinator *)self slowdownRecord:LOWORD(self->_slowdownMsecs)];
  v6 = [v5 asAdvertisementData];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__SCDACoordinator__advertiseSlowdown__block_invoke;
  v10[3] = &unk_1E85D3850;
  v10[4] = self;
  LODWORD(v7) = 1.0;
  LODWORD(v8) = -2.0;
  [(SCDACoordinator *)self _advertiseWith:v6 afterDelay:v10 maxInterval:COERCE_DOUBLE(1055286888) voiceTriggerLatency:v7 thenExecute:v8];

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __37__SCDACoordinator__advertiseSlowdown__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[SCDACoordinator _advertiseSlowdown]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE ending slowdown advertising, 2nd pass not seen", &v7, 0xCu);
  }

  [*(a1 + 32) _endAdvertising:0];
  *(*(a1 + 32) + 200) = 0;
  *(*(a1 + 32) + 225) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 208);
  *(v3 + 208) = 0;

  result = [*(a1 + 32) enterState:0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void __36__SCDACoordinator__advertiseTrigger__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v12 = *(a1 + 44);
  v13 = v2;
  v11 = *(a1 + 48);
  [*(a1 + 32) setupAdvIntervalsInDelay:&v13 interval:&v12 voiceTriggerLatency:&v11 withSlowdown:*(*(a1 + 32) + 204)];
  [*(a1 + 32) _adjustActionWindowsFromSlowdown:*(*(a1 + 32) + 204)];
  [*(*(a1 + 32) + 160) generateTiebreaker];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[SCDACoordinator _advertiseTrigger]_block_invoke";
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s BTLE advertising slowdown finished, advertising delayed trigger", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [v4[20] asAdvertisementData];
  LODWORD(v7) = v12;
  LODWORD(v6) = v13;
  LODWORD(v8) = v11;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__SCDACoordinator__advertiseTrigger__block_invoke_338;
  v10[3] = &unk_1E85D3850;
  v10[4] = *(a1 + 32);
  [v4 _advertiseWith:v5 afterDelay:v10 maxInterval:v6 voiceTriggerLatency:v7 thenExecute:v8];

  v9 = *MEMORY[0x1E69E9840];
}

void __36__SCDACoordinator__advertiseTrigger__block_invoke_341(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  [v1 _endAdvertisingWithDeviceProhibitions:v2];
}

void __36__SCDACoordinator__advertiseTrigger__block_invoke_342(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  [v1 _endAdvertisingWithDeviceProhibitions:v2];
}

void __36__SCDACoordinator__advertiseTrigger__block_invoke_338(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  [v1 _endAdvertisingWithDeviceProhibitions:v2];
}

- (void)setupAdvIntervalsInDelay:(float *)a3 interval:(float *)a4 voiceTriggerLatency:(float *)a5 withSlowdown:(int)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = a6 / 1000.0;
  v12 = [(SCDARecord *)self->_triggerRecord voiceTriggerMachTime];
  if (_SCDAMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_SCDAMachAbsoluteTimeRate_onceToken, &__block_literal_global_42);
  }

  v13 = v11;
  v14 = *&_SCDAMachAbsoluteTimeRate_rate * v12 / 1000000000.0;
  v15 = mach_absolute_time();
  if (_SCDAMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_SCDAMachAbsoluteTimeRate_onceToken, &__block_literal_global_42);
  }

  v16 = *&_SCDAMachAbsoluteTimeRate_rate * v15 / 1000000000.0;
  v17 = v16 - v14;
  v18 = v13;
  v19 = v14 + 1.45000005 + v18 - v16;
  v20 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v28 = 136316674;
    v29 = "[SCDACoordinator setupAdvIntervalsInDelay:interval:voiceTriggerLatency:withSlowdown:]";
    v30 = 2048;
    v31 = v14;
    v32 = 2048;
    v33 = v16 - v14;
    v34 = 2048;
    v35 = v14 + 1.45000005 + v18;
    v36 = 2048;
    v37 = v19;
    v38 = 1024;
    v39 = a6;
    v40 = 2048;
    v41 = v16;
    _os_log_impl(&dword_1DA758000, v20, OS_LOG_TYPE_INFO, "%s endTime: %f, timeSinceVoiceTrigger: %f, targetTime: %f, advInterval: %f, slowDown: %d (ms), timeSinceDeviceBoot: %f", &v28, 0x44u);
  }

  v21 = 1.0;
  if (v19 <= 1.0)
  {
    v22 = 0.0;
    v21 = 0.5;
    if (v19 >= 0.5)
    {
      v21 = v19;
    }
  }

  else if ((v19 + -1.0) <= 0.45)
  {
    v22 = v19 + -1.0;
  }

  else
  {
    v22 = 0.0;
  }

  if (SCDAIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&SCDAIsInternalInstall_onceToken, &__block_literal_global_1238);
  }

  if (SCDAIsInternalInstall_isInternal == 1)
  {
    [(SCDAPreferences *)self->_preferences testDeviceDelay];
    if (v23 != 0.0)
    {
      v22 = v23;
    }

    v24 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v28 = 136315906;
      v29 = "[SCDACoordinator setupAdvIntervalsInDelay:interval:voiceTriggerLatency:withSlowdown:]";
      v30 = 2048;
      v31 = v21;
      v32 = 2048;
      v33 = v22;
      v34 = 2048;
      v35 = v18;
      v25 = "%s adjusted advInterval: %f (secs) device delay: %f (secs), slowDown: %f (secs)";
LABEL_22:
      _os_log_impl(&dword_1DA758000, v24, OS_LOG_TYPE_INFO, v25, &v28, 0x2Au);
    }
  }

  else
  {
    v24 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v28 = 136315906;
      v29 = "[SCDACoordinator setupAdvIntervalsInDelay:interval:voiceTriggerLatency:withSlowdown:]";
      v30 = 2048;
      v31 = v21;
      v32 = 2048;
      v33 = v22;
      v34 = 2048;
      v35 = v18;
      v25 = "%s adjusted advInterval: %f (secs) adjusted delay: %f (secs), slowDown: %f (secs)";
      goto LABEL_22;
    }
  }

  *a3 = v22;
  *a4 = v21;
  v26 = v17;
  *a5 = v26;
  v27 = *MEMORY[0x1E69E9840];
}

- (void)_duringNextWindowEnterState:(unint64_t)a3
{
  self->_nextState = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SCDACoordinator__duringNextWindowEnterState___block_invoke;
  v5[3] = &unk_1E85D3418;
  objc_copyWeak(v6, &location);
  v6[1] = a3;
  [(SCDACoordinator *)self _duringNextWindowExecute:v5];
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __47__SCDACoordinator__duringNextWindowEnterState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained enterState:*(a1 + 40)];
}

- (void)_duringNextWindowExecute:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  triggerTime = self->_triggerTime;
  if (triggerTime)
  {
    v6 = SCDANextActionWindow(triggerTime, 1.5);
    v7 = [(NSDateFormatter *)self->_dateFormat stringFromDate:v6];
    v8 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[SCDACoordinator _duringNextWindowExecute:]";
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1DA758000, v8, OS_LOG_TYPE_INFO, "%s BTLE next action window: %@", &v11, 0x16u);
    }

    [(SCDACoordinator *)self _createDispatchTimerForEvent:v6 toExecute:v4];
  }

  else
  {
    v9 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[SCDACoordinator _duringNextWindowExecute:]";
      _os_log_error_impl(&dword_1DA758000, v9, OS_LOG_TYPE_ERROR, "%s BTLE Attempt to execute time windowed action when trigger time not initialized", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_adjustActionWindowsFromSlowdown:(int)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = [(NSDate *)self->_triggerTime dateByAddingTimeInterval:a3 / 1000.0];
    triggerTime = self->_triggerTime;
    self->_triggerTime = v5;

    v7 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      dateFormat = self->_dateFormat;
      v10 = self->_triggerTime;
      v11 = v7;
      v12 = [(NSDateFormatter *)dateFormat stringFromDate:v10];
      v13 = 136315650;
      v14 = "[SCDACoordinator _adjustActionWindowsFromSlowdown:]";
      v15 = 1024;
      v16 = a3;
      v17 = 2112;
      v18 = v12;
      _os_log_debug_impl(&dword_1DA758000, v11, OS_LOG_TYPE_DEBUG, "%s BTLE action window adjusted by slowdown signal %d msecs new time: %@", &v13, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_resetActionWindows
{
  triggerTime = self->_triggerTime;
  self->_triggerTime = 0;

  self->_slowdownMsecs = 0;
}

- (id)_testAndFilterAdvertisementsFromContextCollector:(id)a3 voiceTriggerEndTime:(double)a4 advertisementDispatchTime:(double)a5 advertisement:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a6;
  if (v9 && [v9 count])
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __128__SCDACoordinator__testAndFilterAdvertisementsFromContextCollector_voiceTriggerEndTime_advertisementDispatchTime_advertisement___block_invoke;
    v30[3] = &unk_1E85D3468;
    v33 = a4;
    v30[4] = self;
    v31 = v10;
    v12 = v11;
    v32 = v12;
    v25 = v9;
    [v9 enumerateKeysAndObjectsUsingBlock:v30];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = SCDALogContextCore;
          if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
          {
            v19 = *(*(&v26 + 1) + 8 * i);
            *buf = 136315394;
            v35 = "[SCDACoordinator _testAndFilterAdvertisementsFromContextCollector:voiceTriggerEndTime:advertisementDispatchTime:advertisement:]";
            v36 = 2112;
            v37 = v19;
            _os_log_impl(&dword_1DA758000, v18, OS_LOG_TYPE_INFO, "%s #scda %@", buf, 0x16u);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v15);
    }

    v20 = v32;
    v21 = v13;

    v9 = v25;
  }

  else
  {
    v22 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v35 = "[SCDACoordinator _testAndFilterAdvertisementsFromContextCollector:voiceTriggerEndTime:advertisementDispatchTime:advertisement:]";
      _os_log_impl(&dword_1DA758000, v22, OS_LOG_TYPE_INFO, "%s #scda Context collector returned 0 SCDAAdvertisementContextRecords instances", buf, 0xCu);
    }

    v21 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v21;
}

void __128__SCDACoordinator__testAndFilterAdvertisementsFromContextCollector_voiceTriggerEndTime_advertisementDispatchTime_advertisement___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 isSaneForVoiceTriggerEndTime:*(a1 + 56) endtimeDistanceThreshold:*(*(a1 + 32) + 88)])
  {
    v7 = [v6 recordForDeviceId:v5];
    v8 = v7;
    if (v7)
    {
      if ([v7 deviceGroup] == *(*(a1 + 32) + 96))
      {
        v9 = [v8 deviceID];
        if ([v9 isEqual:*(*(a1 + 32) + 272)])
        {
        }

        else
        {
          v15 = [v6 compareAdvertisementPayload:*(a1 + 40)];

          if ((v15 & 1) == 0)
          {
            [v8 setRecordType:9];
            [*(a1 + 48) addObject:v8];
          }
        }
      }

      else
      {
        v10 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
        {
          v11 = v10;
          v12 = [v8 deviceGroup];
          v13 = [v8 deviceID];
          v14 = [v6 advertisementPayload];
          v17 = 136315906;
          v18 = "[SCDACoordinator _testAndFilterAdvertisementsFromContextCollector:voiceTriggerEndTime:advertisementDispatchTime:advertisement:]_block_invoke";
          v19 = 1024;
          v20 = v12;
          v21 = 2112;
          v22 = v13;
          v23 = 2112;
          v24 = v14;
          _os_log_impl(&dword_1DA758000, v11, OS_LOG_TYPE_INFO, "%s #scda ignoring advert from other deviceGroup %d: %@ data=%@", &v17, 0x26u);
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_handleStateMachineErrorIfNeeded
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_stateMachineEncounteredError)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[SCDACoordinator _handleStateMachineErrorIfNeeded]";
      _os_log_error_impl(&dword_1DA758000, v3, OS_LOG_TYPE_ERROR, "%s BTLE notify Myriad win due to state machine error", &v11, 0xCu);
    }

    v4 = mach_absolute_time();
    if (_SCDAMachAbsoluteTimeRate_onceToken != -1)
    {
      dispatch_once(&_SCDAMachAbsoluteTimeRate_onceToken, &__block_literal_global_42);
    }

    self->_lastDecisionTime = (*&_SCDAMachAbsoluteTimeRate_rate * v4);
    if (SCDAIsInternalInstall_onceToken != -1)
    {
      dispatch_once(&SCDAIsInternalInstall_onceToken, &__block_literal_global_1238);
    }

    if (SCDAIsInternalInstall_isInternal == 1)
    {
      [(SCDACoordinator *)self _triggerABCForType:@"state_machine_error" context:0];
    }

    self->_lastDecision = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = objc_loadWeakRetained(&self->_delegate);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = objc_loadWeakRetained(&self->_delegate);
        [v9 scdaShouldContinue:self];
      }
    }

    kdebug_trace();
    [(SCDANotifyStatePublisher *)self->_electionWinPublisher publishState:[(SCDACoordinator *)self _nextElectionPublisherState]];
    self->_stateMachineEncounteredError = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_unduck
{
  if (self->_coordinationEnabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      v5 = objc_loadWeakRetained(&self->_delegate);
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = objc_loadWeakRetained(&self->_delegate);
        [v7 scdaShouldUnduck:self];
      }
    }
  }
}

- (void)stopListening:(id)a3
{
  v4 = a3;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__SCDACoordinator_stopListening___block_invoke;
  v7[3] = &unk_1E85D32E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(myriadWorkQueue, v7);
}

- (void)stopListening
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SCDACoordinator_stopListening__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

- (void)_stopListening:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v20 = "[SCDACoordinator _stopListening:]";
    _os_log_debug_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __34__SCDACoordinator__stopListening___block_invoke;
  v16 = &unk_1E85D32E8;
  v17 = self;
  v6 = v4;
  v18 = v6;
  [(SCDACoordinator *)self _waitWiProxAndExecute:&v13];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 scdaListeningDidEnd:{self, v13, v14, v15, v16, v17}];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __34__SCDACoordinator__stopListening___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[SCDACoordinator _stopListening:]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE stopping to scan HeySiri advertisements", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 221) == 1)
  {
    [*(v3 + 248) stopScanning];
    *(*(a1 + 32) + 322) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_stopAdvertising:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v20 = "[SCDACoordinator _stopAdvertising:]";
    _os_log_debug_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __36__SCDACoordinator__stopAdvertising___block_invoke;
  v16 = &unk_1E85D32E8;
  v17 = self;
  v6 = v4;
  v18 = v6;
  [(SCDACoordinator *)self _waitWiProxAndExecute:&v13];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 scdaAdvertisingDidEnd:{self, v13, v14, v15, v16, v17}];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __36__SCDACoordinator__stopAdvertising___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[SCDACoordinator _stopAdvertising:]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE stopping advertising HeySiri advertisements", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 221) == 1)
  {
    [*(v3 + 248) stopAdvertising];
    *(*(a1 + 32) + 323) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startListening:(id)a3
{
  v4 = a3;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SCDACoordinator_startListening___block_invoke;
  v7[3] = &unk_1E85D32E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(myriadWorkQueue, v7);
}

- (void)startListening
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SCDACoordinator_startListening__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

- (void)_startListeningAfterWiProxIsReady:(BOOL)a3 inState:(unint64_t)a4 completion:(id)a5
{
  v6 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (v6 && !self->_BTLEReady)
  {
    v9 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v17 = "[SCDACoordinator _startListeningAfterWiProxIsReady:inState:completion:]";
      v18 = 2048;
      v19 = a4;
      _os_log_impl(&dword_1DA758000, v9, OS_LOG_TYPE_INFO, "%s Waiting for wiprox to be ready in state: %lu", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__SCDACoordinator__startListeningAfterWiProxIsReady_inState_completion___block_invoke;
    v13[3] = &unk_1E85D3440;
    objc_copyWeak(v15, buf);
    v15[1] = a4;
    v14 = v8;
    v10 = MEMORY[0x1E1270630](v13);
    waitForWiproxReadinessToScan = self->_waitForWiproxReadinessToScan;
    self->_waitForWiproxReadinessToScan = v10;

    objc_destroyWeak(v15);
    objc_destroyWeak(buf);
  }

  else
  {
    [(SCDACoordinator *)self _startListening:v8];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __72__SCDACoordinator__startListeningAfterWiProxIsReady_inState_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    if (v4 == *(a1 + 48))
    {
      v5 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v7 = 136315394;
        v8 = "[SCDACoordinator _startListeningAfterWiProxIsReady:inState:completion:]_block_invoke";
        v9 = 2048;
        v10 = v4;
        _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s starting to scan in state: %lu", &v7, 0x16u);
      }

      [v3 _startListening:*(a1 + 32)];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_startListening:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v20 = "[SCDACoordinator _startListening:]";
    _os_log_debug_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __35__SCDACoordinator__startListening___block_invoke;
  v16 = &unk_1E85D32E8;
  v17 = self;
  v6 = v4;
  v18 = v6;
  [(SCDACoordinator *)self _waitWiProxAndExecute:&v13];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 scdaListeningDidBegin:{self, v13, v14, v15, v16, v17}];
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __35__SCDACoordinator__startListening___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 221) == 1)
  {
    [*(v2 + 248) startScanning];
    *(*(a1 + 32) + 322) = 1;
    [*(a1 + 32) _createElectionParticipantIdVendorIfRequired];
    [*(*(a1 + 32) + 256) fetchBTLEAddressIfRequired];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_enteringIntoState:(unint64_t)a3 fromState:(unint64_t)a4
{
  if (a4 == 1)
  {
    self->_clientIsDeciding = 0;
    [(SCDACoordinator *)self _resetAdvertisementTimings];
  }
}

- (id)_stateAsString:(unint64_t)a3
{
  if (a3 > 0x11)
  {
    return @"<SCDA_State_ERROR>";
  }

  else
  {
    return off_1E85D3690[a3];
  }
}

- (void)enterState:(unint64_t)a3
{
  myriadWorkQueue = self->_myriadWorkQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__SCDACoordinator_enterState___block_invoke;
  v4[3] = &unk_1E85D3360;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(myriadWorkQueue, v4);
}

- (void)_addTriggerRecordToReplies
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(SCDARecord *)self->_triggerRecord deviceID];
  v4 = [v3 UUIDString];

  v5 = SCDALogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    triggerRecord = self->_triggerRecord;
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = triggerRecord;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEFAULT, "Adding advertisement to replies: %{public}@ -> %{public}@", &v8, 0x16u);
  }

  [(NSMutableDictionary *)self->_replies setObject:self->_triggerRecord forKey:v4];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_enterState:(unint64_t)a3
{
  v102 = *MEMORY[0x1E69E9840];
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [(SCDACoordinator *)self _stateAsString];
    v8 = [(SCDACoordinator *)self _stateAsString:a3];
    *buf = 136315650;
    v92 = "[SCDACoordinator _enterState:]";
    v93 = 2112;
    *v94 = v7;
    *&v94[8] = 2112;
    v95 = *&v8;
    _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s BTLE Coordinator altered state: %@ -> %@", buf, 0x20u);
  }

  self->_previousState = self->_myriadState;
  self->_myriadState = a3;
  [(SCDACoordinator *)self _enteringIntoState:a3 fromState:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 myriadCoordinator:self didEnterState:self->_myriadState fromState:self->_previousState];
  }

  [(SCDACoordinator *)self _invalidateTimerHandler];
  switch(a3)
  {
    case 0uLL:
      overrideMyriadRecord = self->_overrideMyriadRecord;
      self->_overrideMyriadRecord = 0;

      *&self->_clientIsInEarActivation = 0;
      *&self->_clientRespondingToCarPlay = 0;
      [(SCDACoordinator *)self _stopAdvertisingAndListening];
      [(SCDACoordinator *)self _resetActionWindows];
      if (self->_ducking)
      {
        [(SCDACoordinator *)self _unduck];
      }

      timer = self->_timer;
      if (timer)
      {
        if (!dispatch_source_testcancel(self->_timer))
        {
          dispatch_source_cancel(timer);
          v15 = SCDALogContextCore;
          if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
          {
            timerLabel = self->_timerLabel;
            myriadState = self->_myriadState;
            v18 = v15;
            v19 = [(SCDACoordinator *)self _stateAsString:myriadState];
            *buf = 136315650;
            v92 = "[SCDACoordinator _enterState:]";
            v93 = 2112;
            *v94 = timerLabel;
            *&v94[8] = 2112;
            v95 = *&v19;
            _os_log_impl(&dword_1DA758000, v18, OS_LOG_TYPE_INFO, "%s BTLE timer %@ cancelled (%@)", buf, 0x20u);
          }
        }
      }

      [(SCDACoordinator *)self _cancelOverallTimeout];
      [(SCDACoordinator *)self _clearWiProxReadinessTimer];
      [(SCDACoordinator *)self resetReplies];
      v20 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:16];
      repliesBeforeDecision = self->_repliesBeforeDecision;
      self->_repliesBeforeDecision = v20;

      [(SCDACoordinator *)self _handleStateMachineErrorIfNeeded];
      eventToken = self->_eventToken;
      self->_eventToken = 0;

      self->_recordType = 0;
      self->_previousState = 0;
      [(SCDACoordinator *)self _resetAdvertisementTimings];
      myriadInstrumentation = self->_myriadInstrumentation;
      v24 = [(SCDACoordinator *)self _myriadStateForSelf:self->_myriadState];
      v25 = [(SCDASession *)self->_myriadSession sessionId];
      [(SCDAInstrumentation *)myriadInstrumentation logCDADeviceStateActivityEnded:v24 withCdaId:v25 withTimestamp:mach_absolute_time()];

      [(SCDACoordinator *)self _clearMyriadSession];
      [(SCDAAdvertisementContextManager *)self->_advContextManager reset];
      currentMyriadContext = self->_currentMyriadContext;
      self->_currentMyriadContext = 0;

      waitForWiproxReadinessToScan = self->_waitForWiproxReadinessToScan;
      self->_waitForWiproxReadinessToScan = 0;

      v28 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v92 = "[SCDACoordinator _enterState:]";
        _os_log_debug_impl(&dword_1DA758000, v28, OS_LOG_TYPE_DEBUG, "%s #scda clearing trigger record", buf, 0xCu);
      }

      triggerRecord = self->_triggerRecord;
      self->_triggerRecord = 0;

      [(SCDAPowerAssertionManager *)self->_powerAssertionManager releaseAllPowerAssertions];
      goto LABEL_92;
    case 1uLL:
      v54 = self->_triggerRecord;
      if (v54 && ([(SCDARecord *)v54 asAdvertisementData], (v55 = objc_claimAutoreleasedReturnValue()) != 0) && (v56 = v55, [(SCDARecord *)self->_triggerRecord deviceID], v57 = objc_claimAutoreleasedReturnValue(), v57, v56, v57))
      {
        v58 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
        {
          coordinationEnabled = self->_coordinationEnabled;
          BLEActivityEnabled = self->_BLEActivityEnabled;
          *buf = 136315650;
          v92 = "[SCDACoordinator _enterState:]";
          v93 = 1024;
          *v94 = coordinationEnabled;
          *&v94[4] = 1024;
          *&v94[6] = BLEActivityEnabled;
          _os_log_impl(&dword_1DA758000, v58, OS_LOG_TYPE_INFO, "%s #scda coordinationEnabled=%d, BLEActivityEnabled=%d ", buf, 0x18u);
        }

        if ([(SCDACoordinator *)self _shouldStopListeningBeforeAdvertising])
        {
          v61 = SCDALogContextCore;
          if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v92 = "[SCDACoordinator _enterState:]";
            _os_log_impl(&dword_1DA758000, v61, OS_LOG_TYPE_INFO, "%s #scda Force stopping BTLE scan", buf, 0xCu);
          }

          [(SCDACoordinator *)self _stopListening:0];
        }

        if ([(SCDAContext *)self->_currentMyriadContext activationSource]!= 13 || [(SCDARecord *)self->_triggerRecord recordType]== 4)
        {
          goto LABEL_60;
        }

        v62 = mach_absolute_time();
        TimeInterval = SCDAMachAbsoluteTimeGetTimeInterval(v62 - [(SCDARecord *)self->_triggerRecord voiceTriggerMachTime]);
        v64 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
        {
          latestRecordReceivedTime = self->_latestRecordReceivedTime;
          v65 = self->_currentMyriadContext;
          v67 = v64;
          v68 = [(SCDAContext *)v65 activationExpirationTime];
          *buf = 136316418;
          v92 = "[SCDACoordinator _enterState:]";
          v93 = 2048;
          *v94 = 13;
          *&v94[8] = 2048;
          v95 = TimeInterval;
          v96 = 2048;
          v97 = latestRecordReceivedTime;
          v98 = 2048;
          v99 = v62;
          v100 = 2048;
          v101 = v68;
          _os_log_impl(&dword_1DA758000, v67, OS_LOG_TYPE_INFO, "%s Activation source: %ld, Time since activation: %f, last election record received time: %llu, current time: %llu, activation expiration time: %llu", buf, 0x3Eu);
        }

        if (TimeInterval <= 0.949999988 || (v69 = [(SCDAContext *)self->_currentMyriadContext activationExpirationTime]) == 0 || v62 >= v69 || (v70 = self->_latestRecordReceivedTime, v70 < [(SCDARecord *)self->_triggerRecord voiceTriggerMachTime]))
        {
LABEL_60:
          self->_ducking = 1;
          self->_nTimesContinued = 0;
          [(SCDACoordinator *)self _addTriggerRecordToReplies];
          self->_lastPHash = [(SCDARecord *)self->_triggerRecord pHash];
          [(SCDACoordinator *)self _createMyriadSessionIfRequired];
          v71 = [(SCDARecord *)self->_triggerRecord asAdvertisementData];
          [(SCDACoordinator *)self _addElectionAdvertisementDataToMyriadSession:v71];

          [(SCDACoordinator *)self _setupActionWindows];
          [(SCDACoordinator *)self _setOverallTimeout];
          [(SCDACoordinator *)self _advertiseTrigger];
          goto LABEL_92;
        }

        myriadWorkQueue = self->_myriadWorkQueue;
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 3221225472;
        v89[2] = __31__SCDACoordinator__enterState___block_invoke_246;
        v89[3] = &unk_1E85D3850;
        v89[4] = self;
        v86 = v89;
      }

      else
      {
        v84 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
        {
          v88 = self->_triggerRecord;
          *buf = 136315394;
          v92 = "[SCDACoordinator _enterState:]";
          v93 = 2114;
          *v94 = v88;
          _os_log_error_impl(&dword_1DA758000, v84, OS_LOG_TYPE_ERROR, "%s canceling advertising with nil trigger record, this likely means Siri UI was already dismissed %{public}@", buf, 0x16u);
        }

        myriadWorkQueue = self->_myriadWorkQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __31__SCDACoordinator__enterState___block_invoke;
        block[3] = &unk_1E85D3850;
        block[4] = self;
        v86 = block;
      }

      dispatch_async(myriadWorkQueue, v86);
      goto LABEL_92;
    case 2uLL:
      self->_slowdownMsecs = 0;
      v42 = @"listen late";
      LODWORD(v12) = 1.0;
      v43 = self;
      v44 = 4;
      goto LABEL_76;
    case 3uLL:
      v51 = [(SCDACoordinator *)self lateSuppressionRecord];
      v52 = SCDALogForCategory(0);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v92 = v51;
        _os_log_impl(&dword_1DA758000, v52, OS_LOG_TYPE_DEFAULT, "Suppressing late arriver with advertisement: %{public}@", buf, 0xCu);
      }

      self->_recordType = 17;
      goto LABEL_72;
    case 4uLL:
      nTimesContinued = self->_nTimesContinued;
      if (nTimesContinued <= 4)
      {
        self->_nTimesContinued = nTimesContinued + 1;
      }

      else
      {
        [(SCDAPowerAssertionManager *)self->_powerAssertionManager releaseAllPowerAssertions];
        v40 = self->_nTimesContinued;
        self->_nTimesContinued = v40 + 1;
        if (v40 >= 20)
        {
          [(SCDACoordinator *)self _enterState:0];
          goto LABEL_92;
        }
      }

      [(SCDACoordinator *)self _stopAdvertisingAndListening];
      v37 = self;
      v38 = 5;
LABEL_89:
      [(SCDACoordinator *)v37 _duringNextWindowEnterState:v38];
      goto LABEL_92;
    case 5uLL:
      v72 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v73 = self->_nTimesContinued;
        *buf = 136315394;
        v92 = "[SCDACoordinator _enterState:]";
        v93 = 1024;
        *v94 = v73;
        _os_log_impl(&dword_1DA758000, v72, OS_LOG_TYPE_INFO, "%s BTLE task continuation: %d", buf, 0x12u);
      }

      if (!+[SCDAUtilities isCommunal])
      {
        v79 = self;
        v80 = 4;
        goto LABEL_91;
      }

      self->_recordType = 3;
      v74 = [(SCDACoordinator *)self continuationRecord];
      v75 = SCDALogForCategory(0);
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v92 = 0;
        _os_log_impl(&dword_1DA758000, v75, OS_LOG_TYPE_INFO, "Advertising continuation: %{public}@", buf, 0xCu);
      }

      [(SCDACoordinator *)self _advertise:v74 andMoveTo:4];
      v46 = 0;
      v51 = 0;
      break;
    case 6uLL:
      v51 = [(SCDACoordinator *)self lateSuppressionRecord];
      v77 = SCDALogForCategory(0);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v92 = v51;
        _os_log_impl(&dword_1DA758000, v77, OS_LOG_TYPE_DEFAULT, "Sending suppression(DT) advertisement: %{public}@", buf, 0xCu);
      }

LABEL_72:
      [(SCDACoordinator *)self _advertise:v51 andMoveTo:4];
      v46 = 0;
      goto LABEL_94;
    case 7uLL:
      v53 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v92 = "[SCDACoordinator _enterState:]";
        _os_log_impl(&dword_1DA758000, v53, OS_LOG_TYPE_INFO, "%s BTLE task SCDA_WAIT_EMERGENCY_OR_TASK only stopping advertising, not listening", buf, 0xCu);
      }

      [(SCDACoordinator *)self _stopAdvertising:0];
      [(SCDACoordinator *)self _startListening:0];
      [(SCDAPowerAssertionManager *)self->_powerAssertionManager releaseAllPowerAssertions];
      self->_slowdownMsecs = 0;
      v37 = self;
      v38 = 10;
      goto LABEL_89;
    case 8uLL:
      self->_recordType = 5;
      v46 = [(SCDACoordinator *)self emergencyRecord];
      v81 = SCDALogForCategory(0);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v92 = v46;
        _os_log_impl(&dword_1DA758000, v81, OS_LOG_TYPE_DEFAULT, "Advertising emergency record: %{public}@", buf, 0xCu);
      }

      [(SCDACoordinator *)self _advertise:v46 andMoveTo:11];
      v82 = objc_loadWeakRetained(&self->_delegate);
      v83 = objc_opt_respondsToSelector();

      if ((v83 & 1) == 0)
      {
        goto LABEL_93;
      }

      v50 = objc_loadWeakRetained(&self->_delegate);
      [v50 myriadCoordinatorIsAdvertisingEmergency:self];
      goto LABEL_82;
    case 9uLL:
      v45 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v92 = "[SCDACoordinator _enterState:]";
        _os_log_impl(&dword_1DA758000, v45, OS_LOG_TYPE_DEFAULT, "%s BTLE emergency is being handled", buf, 0xCu);
      }

      self->_recordType = 6;
      v46 = [(SCDACoordinator *)self emergencyHandledRecord];
      v47 = SCDALogForCategory(0);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v92 = v46;
        _os_log_impl(&dword_1DA758000, v47, OS_LOG_TYPE_DEFAULT, "Advertising emergency handled record: %{public}@", buf, 0xCu);
      }

      [(SCDACoordinator *)self _advertise:v46 andMoveTo:4];
      [(SCDAEmergencyCallPunchout *)self->_callPunchout initiateEmergencyCallMyriad];
      v48 = objc_loadWeakRetained(&self->_delegate);
      v49 = objc_opt_respondsToSelector();

      if ((v49 & 1) == 0)
      {
        goto LABEL_93;
      }

      v50 = objc_loadWeakRetained(&self->_delegate);
      [v50 scdaCoordinatorWillHandleEmergency:self];
LABEL_82:

      goto LABEL_93;
    case 0xAuLL:
      nTimesExtended = self->_nTimesExtended;
      self->_nTimesExtended = nTimesExtended + 1;
      if (nTimesExtended > 18)
      {
        goto LABEL_77;
      }

      [(SCDACoordinator *)self _startListening:0];
      v42 = @"listen wait/emergency";
      LODWORD(v12) = 0.75;
      goto LABEL_75;
    case 0xBuLL:
      v36 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v92 = "[SCDACoordinator _enterState:]";
        _os_log_impl(&dword_1DA758000, v36, OS_LOG_TYPE_INFO, "%s BTLE task SCDA_WAIT_EMERGENCY_HANDLED only stopping advertising, not listening", buf, 0xCu);
      }

      [(SCDACoordinator *)self _stopAdvertising:0];
      v37 = self;
      v38 = 12;
      goto LABEL_89;
    case 0xCuLL:
      v41 = self->_nTimesExtended;
      self->_nTimesExtended = v41 + 1;
      if (v41 > 18)
      {
LABEL_77:
        v79 = self;
        v80 = 0;
LABEL_91:
        [(SCDACoordinator *)v79 enterState:v80];
      }

      else
      {
        [(SCDACoordinator *)self _startListening:0];
        v42 = @"listen emergency handled";
        LODWORD(v12) = 0.75;
        v43 = self;
        v44 = 11;
LABEL_76:
        [(SCDACoordinator *)v43 _startTimer:v42 for:v44 thenEnterState:v12];
      }

LABEL_92:
      v46 = 0;
LABEL_93:
      v51 = 0;
LABEL_94:
      v74 = 0;
      break;
    case 0xDuLL:
      v76 = [(SCDACoordinator *)self _phsSetupRecord];
      [(SCDACoordinator *)self _advertiseIndefinite:v76];

      goto LABEL_92;
    case 0xEuLL:
      v30 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        v31 = self->_coordinationEnabled;
        v32 = self->_BLEActivityEnabled;
        *buf = 136315650;
        v92 = "[SCDACoordinator _enterState:]";
        v93 = 1024;
        *v94 = v31;
        *&v94[4] = 1024;
        *&v94[6] = v32;
        _os_log_impl(&dword_1DA758000, v30, OS_LOG_TYPE_INFO, "%s #scda coordinationEnabled=%d, BLEActivityEnabled=%d ", buf, 0x18u);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.myriad.decision.won", 0, 0, 1u);
      [(SCDACoordinator *)self _cancelOverallTimeout];
      v34 = SCDALogForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = self->_triggerRecord;
        *buf = 138543362;
        v92 = v35;
        _os_log_impl(&dword_1DA758000, v34, OS_LOG_TYPE_DEFAULT, "Advertising ~OUTGOING_TRIGGER: %{public}@", buf, 0xCu);
      }

      self->_nTimesContinued = 0;
      [(SCDACoordinator *)self _addTriggerRecordToReplies];
      [(SCDACoordinator *)self _advertiseSuppressTriggerInOutput];
      goto LABEL_92;
    case 0xFuLL:
      [(SCDACoordinator *)self resetReplies];
      [(SCDACoordinator *)self _createMyriadSessionIfRequired];
      [(SCDACoordinator *)self _startListeningAfterWiProxIsReady:+[SCDAUtilities inState:"isMac"]completion:15, 0];
      v42 = @"preheat timer";
      LODWORD(v12) = 2.0;
      goto LABEL_75;
    case 0x10uLL:
      self->_recordType = 16;
      [(SCDACoordinator *)self _advertiseSlowdown];
      goto LABEL_92;
    case 0x11uLL:
      [(SCDACoordinator *)self _createMyriadSessionIfRequired];
      [(SCDACoordinator *)self _startListening:0];
      v42 = @"filter initialization timer";
      LODWORD(v12) = 1.0;
LABEL_75:
      v43 = self;
      v44 = 0;
      goto LABEL_76;
    default:
      goto LABEL_92;
  }

  v87 = *MEMORY[0x1E69E9840];
}

uint64_t __31__SCDACoordinator__enterState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loseElection];
  v2 = *(a1 + 32);

  return [v2 _enterState:0];
}

uint64_t __31__SCDACoordinator__enterState___block_invoke_246(uint64_t a1)
{
  [*(a1 + 32) _loseElection];
  v2 = *(a1 + 32);

  return [v2 _enterState:0];
}

uint64_t __37__SCDACoordinator__setOverallTimeout__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[SCDACoordinator _setOverallTimeout]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE Coordinator hitting overall timeout, resetting to NoActivity and declaring loss", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3[1])
  {
    [v3 _loseElection];
    v3 = *(a1 + 32);
  }

  result = [v3 _enterState:0];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_startTimer:(id)a3 for:(float)a4 thenEnterState:(unint64_t)a5
{
  v8 = a3;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__SCDACoordinator__startTimer_for_thenEnterState___block_invoke;
  v10[3] = &unk_1E85D3418;
  objc_copyWeak(v11, &location);
  v11[1] = a5;
  *&v9 = a4;
  [(SCDACoordinator *)self _startTimer:v8 for:v10 thenExecute:v9];
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __50__SCDACoordinator__startTimer_for_thenEnterState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _enterState:*(a1 + 40)];
}

- (void)_startTimer:(id)a3 for:(float)a4 thenExecute:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = SCDALogContextCore;
  v11 = a4;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "[SCDACoordinator _startTimer:for:thenExecute:]";
    v20 = 2112;
    v21 = v8;
    v22 = 2048;
    v23 = v11;
    _os_log_impl(&dword_1DA758000, v10, OS_LOG_TYPE_INFO, "%s BTLE starting %@ timer for %f secs", buf, 0x20u);
  }

  timerLabel = self->_timerLabel;
  self->_timerLabel = v8;
  v13 = v8;

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __47__SCDACoordinator__startTimer_for_thenExecute___block_invoke;
  v16[3] = &unk_1E85D32E8;
  v16[4] = self;
  v17 = v9;
  v14 = v9;
  [(SCDACoordinator *)self _createDispatchTimerFor:v16 toExecute:v11];

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __47__SCDACoordinator__startTimer_for_thenExecute___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 120);
    v6 = 136315394;
    v7 = "[SCDACoordinator _startTimer:for:thenExecute:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE %@ timer fires", &v6, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_createDispatchTimerForEvent:(id)a3 toExecute:(id)a4
{
  v6 = a4;
  [a3 timeIntervalSince1970];
  v8.tv_sec = v7;
  v8.tv_nsec = ((v7 - v7) * 1000000000.0);
  [(SCDACoordinator *)self _createDispatchTimerWithTime:dispatch_walltime(&v8 toExecute:0), v6];
}

- (void)_createDispatchTimerFor:(double)a3 toExecute:(id)a4
{
  v5 = (a3 * 1000000000.0);
  v6 = a4;
  [(SCDACoordinator *)self _createDispatchTimerWithTime:dispatch_time(0 toExecute:v5), v6];
}

- (void)_createDispatchTimerWithTime:(unint64_t)a3 toExecute:(id)a4
{
  v6 = a4;
  dispatch_suspend(self->_timer);
  dispatch_source_set_timer(self->_timer, a3, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v7 = [MEMORY[0x1E696AFB0] UUID];
  objc_storeStrong(&self->_eventToken, v7);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__SCDACoordinator__createDispatchTimerWithTime_toExecute___block_invoke;
  v11[3] = &unk_1E85D37D8;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v8 = v6;
  v9 = v7;
  v10 = MEMORY[0x1E1270630](v11);
  dispatch_source_set_event_handler(self->_timer, v10);
  dispatch_resume(self->_timer);
}

void __58__SCDACoordinator__createDispatchTimerWithTime_toExecute___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(v4 + 136);
    v6 = *(v4 + 120);
    v9 = 136315906;
    v10 = "[SCDACoordinator _createDispatchTimerWithTime:toExecute:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s #scda Event token: %@, current event token: %@ for timer: %@", &v9, 0x2Au);
  }

  if (*(*(a1 + 40) + 136))
  {
    if ([*(a1 + 32) isEqual:?])
    {
      v7 = *(a1 + 48);
      if (v7)
      {
        (*(v7 + 16))();
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_invalidateTimerHandler
{
  eventToken = self->_eventToken;
  self->_eventToken = 0;

  v4 = [(NSString *)self->_timerLabel hasSuffix:@"-Invalidated"];
  timerLabel = self->_timerLabel;
  if (v4)
  {
    v6 = timerLabel;
  }

  else
  {
    v6 = [(NSString *)timerLabel stringByAppendingString:@"-Invalidated"];
  }

  v7 = self->_timerLabel;
  self->_timerLabel = v6;

  MEMORY[0x1EEE66BB8]();
}

- (void)_clearMyriadSession
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_myriadSession)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
      [v5 scdaWillEndSession:self->_myriadSession];
    }

    v6 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      myriadSession = self->_myriadSession;
      v8 = v6;
      v9 = [(SCDASession *)myriadSession sessionId];
      v13 = 136315394;
      v14 = "[SCDACoordinator _clearMyriadSession]";
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_1DA758000, v8, OS_LOG_TYPE_INFO, "%s #scda Clearing myriad session %@", &v13, 0x16u);
    }

    v10 = [(SCDASession *)self->_myriadSession electionAdvertisementDataByIds];
    [v10 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_235];

    v11 = self->_myriadSession;
    self->_myriadSession = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __38__SCDACoordinator__clearMyriadSession__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "[SCDACoordinator _clearMyriadSession]_block_invoke";
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s #scda Election advertisement %@ -> %@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateRequestId:(id)a3
{
  v4 = a3;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__SCDACoordinator_updateRequestId___block_invoke;
  v7[3] = &unk_1E85D38A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(myriadWorkQueue, v7);
}

void __35__SCDACoordinator_updateRequestId___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = 136315394;
    v11 = "[SCDACoordinator updateRequestId:]_block_invoke";
    v12 = 2112;
    v13 = v9;
    _os_log_debug_impl(&dword_1DA758000, v2, OS_LOG_TYPE_DEBUG, "%s #scda requestIdNotification: %@", &v10, 0x16u);
  }

  v3 = *(a1 + 40);
  v4 = objc_alloc(MEMORY[0x1E696AFB0]);
  v5 = [*(a1 + 32) userInfo];
  v6 = [v5 objectForKeyedSubscript:@"requestId"];
  v7 = [v4 initWithUUIDString:v6];
  [v3 setCurrentRequestId:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_addElectionAdvertisementDataToMyriadSession:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [(SCDACoordinator *)self _myriadSession];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __64__SCDACoordinator__addElectionAdvertisementDataToMyriadSession___block_invoke;
    v18[3] = &unk_1E85D33B0;
    v18[4] = self;
    v7 = v4;
    v19 = v7;
    v8 = v5;
    v20 = v8;
    v9 = [v6 mutatedCopyWithMutator:v18];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 myriadCoordinator:self didAddAdvertisement:v7 toSession:self->_myriadSession];
    }

    objc_storeStrong(&self->_myriadSession, v9);
    v13 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      myriadSession = self->_myriadSession;
      v15 = v13;
      v16 = [(SCDASession *)myriadSession sessionId];
      *buf = 136315650;
      v22 = "[SCDACoordinator _addElectionAdvertisementDataToMyriadSession:]";
      v23 = 2112;
      v24 = v7;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&dword_1DA758000, v15, OS_LOG_TYPE_INFO, "%s #scda Election advertisement %@ added to myriad session %@", buf, 0x20u);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __64__SCDACoordinator__addElectionAdvertisementDataToMyriadSession___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 _myriadSession];
  v7 = [v5 electionAdvertisementDataByIds];

  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v7];
  [v6 setObject:a1[5] forKey:a1[6]];
  [v4 setCurrentElectionAdvertisementId:a1[6]];
  [v4 setCurrentElectionAdvertisementData:a1[5]];
  [v4 setElectionAdvertisementDataByIds:v6];
}

- (void)_loseElection
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[SCDACoordinator _loseElection]";
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEFAULT, "%s BTLE notify myriad loss", &v13, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v5 = WeakRetained, v6 = objc_loadWeakRetained(&self->_delegate), v7 = objc_opt_respondsToSelector(), v6, v5, (v7 & 1) != 0))
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 scdaShouldAbortAnotherDeviceBetter:self];

    self->_nTimesExtended = 0;
  }

  else
  {
    v9 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = objc_loadWeakRetained(&self->_delegate);
      v13 = 136315394;
      v14 = "[SCDACoordinator _loseElection]";
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_1DA758000, v10, OS_LOG_TYPE_INFO, "%s BTLE unable to cancel against: %@", &v13, 0x16u);
    }
  }

  [(SCDACoordinator *)self _endAdvertisingAnalyticsContext:0];
  kdebug_trace();
  [(SCDANotifyStatePublisher *)self->_electionLossPublisher publishState:[(SCDACoordinator *)self _nextElectionPublisherState]];
  [(SCDAGoodnessScoreEvaluator *)self->_goodnessScoreEvaluator setLastActivationTime:0.0];
  self->_lastDecision = 0;
  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)_deviceShouldContinue:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v23 = "[SCDACoordinator _deviceShouldContinue:]";
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  if (self->_coordinationEnabled)
  {
    if (self->_clientIsInEarActivation && [(SCDARecord *)self->_triggerRecord isATrump])
    {
      v6 = ![(SCDARecord *)self->_triggerRecord isInEarTrump];
    }

    else
    {
      v6 = 0;
    }

    v9 = [(SCDACoordinator *)self _shouldContinueFor:v4];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    if (([(SCDARecord *)self->_triggerRecord context]& 1) != 0)
    {
      replies = self->_replies;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __41__SCDACoordinator__deviceShouldContinue___block_invoke;
      v17[3] = &unk_1E85D3388;
      v17[4] = &v18;
      [(NSMutableDictionary *)replies enumerateKeysAndObjectsUsingBlock:v17];
    }

    v11 = [(SCDARecord *)self->_triggerRecord recordType];
    if ((v11 == 4) | (v6 | v9) & 1)
    {
      v8 = *(v19 + 24) ^ 1;
    }

    else
    {
      v8 = 0;
    }

    v12 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      clientIsInEarActivation = self->_clientIsInEarActivation;
      v14 = *(v19 + 24);
      *buf = 136316418;
      v23 = "[SCDACoordinator _deviceShouldContinue:]";
      v24 = 2048;
      v25 = v8 & 1;
      v26 = 2048;
      v27 = 0;
      v28 = 2048;
      v29 = v11 == 4;
      v30 = 2048;
      v31 = clientIsInEarActivation;
      v32 = 2048;
      v33 = v14;
      _os_log_impl(&dword_1DA758000, v12, OS_LOG_TYPE_INFO, "%s BTLE deviceShouldContinue:%ld coordinationDisabled:%ld, isDirectlyActivating:%ld, isInEarTrigger:%ld, suppressLateTrigger:removed setupRecordSuppression:%ld.", buf, 0x3Eu);
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v7 = SCDALogContextCore;
    v8 = 1;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = "[SCDACoordinator _deviceShouldContinue:]";
      v8 = 1;
      _os_log_impl(&dword_1DA758000, v7, OS_LOG_TYPE_INFO, "%s Coordination disabled, continuing with the request)", buf, 0xCu);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

void __41__SCDACoordinator__deviceShouldContinue___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if ([a3 isSetup])
  {
    v6 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[SCDACoordinator _deviceShouldContinue:]_block_invoke";
      _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s Setup record found while detecting attention, losing election", &v8, 0xCu);
    }

    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_forceLocalWinner:(id)a3 withRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SCDACoordinator__forceLocalWinner_withRecord___block_invoke;
  block[3] = &unk_1E85D3270;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(myriadWorkQueue, block);
}

uint64_t __48__SCDACoordinator__forceLocalWinner_withRecord___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 160);
    v12 = 136315650;
    v13 = "[SCDACoordinator _forceLocalWinner:withRecord:]_block_invoke";
    v14 = 2114;
    v15 = v3;
    v16 = 2114;
    v17 = v4;
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_DEFAULT, "%s #scda force win on this device with context: %{public}@, triggerRecord: %{public}@", &v12, 0x20u);
  }

  v5 = *(a1 + 40);
  if (v5[221] == 1)
  {
    [v5 _createElectionParticipantIdVendorIfRequired];
    [*(*(a1 + 40) + 256) fetchBTLEAddressIfRequired];
    v5 = *(a1 + 40);
  }

  [v5 _winElection];
  *(*(a1 + 40) + 228) = 0;
  [*(a1 + 40) _setMyriadContext:*(a1 + 32)];
  [*(a1 + 40) _createMyriadSessionIfRequired];
  v6 = *(a1 + 40);
  v7 = v6[61];
  v8 = [v6 _myriadStateForSelf:v6[1]];
  v9 = [*(*(a1 + 40) + 392) sessionId];
  [v7 logCDADeviceStateActivityStartedOrChanged:v8 withTrigger:5 withCdaId:v9 withTimestamp:mach_absolute_time()];

  [*(*(a1 + 40) + 488) updateIsTrump:1 withReason:5];
  objc_storeStrong((*(a1 + 40) + 160), *(a1 + 48));
  result = [*(a1 + 40) _enterState:14];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)faceDetectedBoostWithContext:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v4;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEFAULT, "faceDetectedBoostWithContext: %{public}@", buf, 0xCu);
  }

  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SCDACoordinator_faceDetectedBoostWithContext___block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);

  v7 = *MEMORY[0x1E69E9840];
}

void __48__SCDACoordinator_faceDetectedBoostWithContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = v1[1];
  if (v2 != 1)
  {
    v5 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v1 stateAsString:v2];
      v10 = 136315394;
      v11 = "[SCDACoordinator faceDetectedBoostWithContext:]_block_invoke";
      v12 = 2114;
      v13 = v7;
      _os_log_error_impl(&dword_1DA758000, v6, OS_LOG_TYPE_ERROR, "%s #scda attention boost arrived in wrong state: %{public}@", &v10, 0x16u);
    }

    goto LABEL_10;
  }

  if (!v1[20])
  {
    v8 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[SCDACoordinator faceDetectedBoostWithContext:]_block_invoke";
      _os_log_error_impl(&dword_1DA758000, v8, OS_LOG_TYPE_ERROR, "%s #scda attention boost arrived with nil _triggerRecord, likely Siri was dismissed already.", &v10, 0xCu);
    }

LABEL_10:
    v9 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);

  [v4 _faceDetectedElection];
}

- (void)_faceDetectedElection
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(SCDARecord *)self->_triggerRecord rawAudioGoodnessScore];
  v4 = [(SCDARecord *)self->_triggerRecord userConfidence];
  v5 = [(SCDARecord *)self->_triggerRecord tieBreaker];
  v6 = SCDALogContextCore;
  if (!v3 && os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315138;
    v13 = "[SCDACoordinator _faceDetectedElection]";
    _os_log_error_impl(&dword_1DA758000, v6, OS_LOG_TYPE_ERROR, "%s #scda attention Original goodness before attention arrived was zero - likely an invalid Myriad advertisement from this device could make it lose an election", &v12, 0xCu);
    v6 = SCDALogContextCore;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315138;
    v13 = "[SCDACoordinator _faceDetectedElection]";
    _os_log_debug_impl(&dword_1DA758000, v6, OS_LOG_TYPE_DEBUG, "%s #scda attention Original confidence was 0", &v12, 0xCu);
    v6 = SCDALogContextCore;
  }

LABEL_6:
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315138;
    v13 = "[SCDACoordinator _faceDetectedElection]";
    _os_log_debug_impl(&dword_1DA758000, v6, OS_LOG_TYPE_DEBUG, "%s #scda attention boost arrived, reformulating record", &v12, 0xCu);
    v6 = SCDALogContextCore;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    triggerRecord = self->_triggerRecord;
    v12 = 136315394;
    v13 = "[SCDACoordinator _faceDetectedElection]";
    v14 = 2112;
    v15 = triggerRecord;
    _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s #scda attention original record: %@", &v12, 0x16u);
  }

  [(SCDARecord *)self->_triggerRecord setRawAudioGoodnessScore:[(SCDARecord *)self->_triggerRecord rawAudioGoodnessScore] withBump:255];
  [(SCDARecord *)self->_triggerRecord setUserConfidence:v3];
  if (!v4 || v5 == v4)
  {
    v8 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315138;
      v13 = "[SCDACoordinator _faceDetectedElection]";
      _os_log_debug_impl(&dword_1DA758000, v8, OS_LOG_TYPE_DEBUG, "%s #scda attention originalTB and originalConfidence collision, generating a new random TB", &v12, 0xCu);
    }

    [(SCDARecord *)self->_triggerRecord generateTiebreaker];
  }

  else
  {
    [(SCDARecord *)self->_triggerRecord setTieBreaker:v4];
  }

  [(SCDARecord *)self->_triggerRecord setContext:[(SCDARecord *)self->_triggerRecord context]| 1];
  v9 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v10 = self->_triggerRecord;
    v12 = 136315394;
    v13 = "[SCDACoordinator _faceDetectedElection]";
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_1DA758000, v9, OS_LOG_TYPE_INFO, "%s #scda attention reformulated record: %@", &v12, 0x16u);
  }

  [(SCDAInstrumentation *)self->_myriadInstrumentation updateIsTrump:1 withReason:8];
  [(SCDACoordinator *)self _enterState:1];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)setCurrentRequestId:(id)a3
{
  v4 = a3;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SCDACoordinator_setCurrentRequestId___block_invoke;
  v7[3] = &unk_1E85D38A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(myriadWorkQueue, v7);
}

- (id)winningAdvertisement
{
  if (SCDAIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&SCDAIsInternalInstall_onceToken, &__block_literal_global_1238);
  }

  if (SCDAIsInternalInstall_isInternal == 1)
  {
    v3 = [(SCDACoordinator *)self _sortedReplies];
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setupEnabled:(BOOL)a3
{
  myriadWorkQueue = self->_myriadWorkQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__SCDACoordinator_setupEnabled___block_invoke;
  v4[3] = &unk_1E85D3828;
  v5 = a3;
  v4[4] = self;
  dispatch_async(myriadWorkQueue, v4);
}

void __32__SCDACoordinator_setupEnabled___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 _stateAsString];
    v9 = 136315650;
    v10 = "[SCDACoordinator setupEnabled:]_block_invoke";
    v11 = 1024;
    v12 = v3;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s #scda setupEnabled: %d, current state: %@", &v9, 0x1Cu);
  }

  v7 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    *(v7 + 220) = 0;
    *(*(a1 + 32) + 217) = 1;
  }

  else
  {
    *(*(a1 + 32) + 220) = [*(v7 + 456) coordinationEnabled];
    *(*(a1 + 32) + 217) = 0;
    [*(a1 + 32) _enterState:0];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setInTask:(BOOL)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[SCDACoordinator setInTask:]";
    _os_log_error_impl(&dword_1DA758000, v3, OS_LOG_TYPE_ERROR, "%s Myriad _inTask is removed. This method is deprecated and does nothing.", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)inTask
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "[SCDACoordinator inTask]";
    _os_log_error_impl(&dword_1DA758000, v2, OS_LOG_TYPE_ERROR, "%s Myriad _inTask is removed. This method is deprecated and always returns NO.", &v5, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)endTask
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__SCDACoordinator_endTask__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

void __26__SCDACoordinator_endTask__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SCDACoordinator endTask]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_DEFAULT, "%s Clearing trigger record", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = 0;

  v5 = *MEMORY[0x1E69E9840];
}

- (void)endAdvertisingWithDeviceProhibitions:(id)a3
{
  v4 = a3;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SCDACoordinator_endAdvertisingWithDeviceProhibitions___block_invoke;
  v7[3] = &unk_1E85D38A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(myriadWorkQueue, v7);
}

- (void)_endAdvertisingWithDeviceProhibitions:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_coordinationEnabled)
  {
    v5 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v18 = "[SCDACoordinator _endAdvertisingWithDeviceProhibitions:]";
      _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s BTLE advertising is being ignored", buf, 0xCu);
    }
  }

  maxSlowdownRecord = self->_maxSlowdownRecord;
  if (maxSlowdownRecord && (v7 = [(SCDARecord *)maxSlowdownRecord slowdownDelay]) != 0 && self->_clientIsRespondingToSlowdown && !self->_clientDoneRespondingToSlowdown)
  {
    self->_slowdownMsecs = v7;
    v15 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "[SCDACoordinator _endAdvertisingWithDeviceProhibitions:]";
      v19 = 1024;
      v20 = v7;
      _os_log_impl(&dword_1DA758000, v15, OS_LOG_TYPE_INFO, "%s BTLE detected a slowdown signal for %d msecs, resetting election for later time", buf, 0x12u);
    }

    [(SCDACoordinator *)self _advertiseTrigger];
  }

  else
  {
    self->_clientIsDeciding = 1;
    if ([(SCDACoordinator *)self _deviceShouldContinue:v4])
    {
      if ([(NSMutableDictionary *)self->_replies count]>= 2)
      {
        [(SCDAPowerAssertionManager *)self->_powerAssertionManager takePowerAssertionWithName:0];
      }

      [(SCDACoordinator *)self _winElection];
      [(SCDANotifyStatePublisher *)self->_electionWinPublisher publishState:[(SCDACoordinator *)self _nextElectionPublisherState]];
      v8 = 0.0;
      v9 = @"listening late";
      v10 = 2;
    }

    else
    {
      [(SCDACoordinator *)self _loseElection];
      if (+[SCDAUtilities deviceCanMakeEmergencyCall])
      {
        v8 = 1.0;
        v9 = @"wait until after suppress";
        v10 = 7;
      }

      else
      {
        [(SCDACoordinator *)self _stopListening:0];
        v11 = SCDALogContextCore;
        v8 = 0.0;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v18 = "[SCDACoordinator _endAdvertisingWithDeviceProhibitions:]";
          _os_log_debug_impl(&dword_1DA758000, v11, OS_LOG_TYPE_DEBUG, "%s #scda lost and no need to wait for emergency", buf, 0xCu);
        }

        v10 = 0;
        v9 = &stru_1F5626F50;
      }
    }

    v12 = mach_absolute_time();
    if (_SCDAMachAbsoluteTimeRate_onceToken != -1)
    {
      dispatch_once(&_SCDAMachAbsoluteTimeRate_onceToken, &__block_literal_global_42);
    }

    self->_lastDecisionTime = (*&_SCDAMachAbsoluteTimeRate_rate * v12);
    self->_clientDoneRespondingToSlowdown = 0;
    [(SCDACoordinator *)self _cancelOverallTimeout];
    [(SCDACoordinator *)self _endAdvertising:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__SCDACoordinator__endAdvertisingWithDeviceProhibitions___block_invoke;
    v16[3] = &unk_1E85D3360;
    v16[4] = self;
    v16[5] = v10;
    [(SCDACoordinator *)self _startTimer:v9 for:v16 thenExecute:COERCE_DOUBLE(LODWORD(v8))];
    [(SCDACoordinator *)self _ageWedgeFilter];
    [(SCDACoordinator *)self resetReplies];
    self->_clientIsInEarActivation = 0;
    v13 = self->_maxSlowdownRecord;
    self->_maxSlowdownRecord = 0;

    self->_clientIsRespondingToSlowdown = 0;
    [(SCDACoordinator *)self _resetAdvertisementTimings];
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __57__SCDACoordinator__endAdvertisingWithDeviceProhibitions___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 228) = 0;
  return [*(a1 + 32) _enterState:v1];
}

void __51__SCDACoordinator__endAdvertisingAnalyticsContext___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if ([v7 isMe])
  {
    v8 = objc_alloc_init(MEMORY[0x1E69CE940]);
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(*(*(a1 + 32) + 8) + 40) setDeviceClass:{+[SCDADevice cdaDeviceClassForSCDADeviceClass:andProducType:](SCDADevice, "cdaDeviceClassForSCDADeviceClass:andProducType:", objc_msgSend(v7, "deviceClass"), objc_msgSend(v7, "productType"))}];
    [*(*(*(a1 + 32) + 8) + 40) setProductType:{objc_msgSend(v7, "productType")}];
    [*(*(*(a1 + 32) + 8) + 40) setGoodnessScore:{objc_msgSend(v7, "goodness")}];
    v11 = *(*(*(a1 + 32) + 8) + 40);
    v12 = [v7 electionParticipantId];
    v13 = SCDAToSISchemaUUID(v12);
    [v11 setElectionParticipantId:v13];

    if (*(a1 + 64) == 1)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 32) + 8) + 40));
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      *(*(*(a1 + 56) + 8) + 24) = [*(*(*(a1 + 48) + 8) + 40) rawAudioGoodnessScore];
    }

    else
    {
      v14 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
      {
        v16 = v14;
        v17 = 136315394;
        v18 = "[SCDACoordinator _endAdvertisingAnalyticsContext:]_block_invoke";
        v19 = 1024;
        v20 = [v7 rawAudioGoodnessScore];
        _os_log_debug_impl(&dword_1DA758000, v16, OS_LOG_TYPE_DEBUG, "%s #myriad lost with rawScore: %d", &v17, 0x12u);
      }
    }

    *a4 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __51__SCDACoordinator__endAdvertisingAnalyticsContext___block_invoke_190(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v15 = a2;
  if (*(a1 + 32))
  {
    v7 = objc_alloc_init(MEMORY[0x1E69CE8C8]);
    [v7 setAudioHash:{objc_msgSend(v15, "pHash")}];
    [v7 setGoodnessScore:{objc_msgSend(v15, "goodness")}];
    [v7 setConfidenceScore:{objc_msgSend(v15, "userConfidence")}];
    [v7 setDeviceClass:{+[SCDADevice cdaDeviceClassForSCDADeviceClass:andProducType:](SCDADevice, "cdaDeviceClassForSCDADeviceClass:andProducType:", objc_msgSend(v15, "deviceClass"), objc_msgSend(v15, "productType"))}];
    [v7 setDeviceGroup:{objc_msgSend(v15, "deviceGroup")}];
    [v7 setProductType:{objc_msgSend(v15, "productType")}];
    [v7 setTieBreaker:{objc_msgSend(v15, "tieBreaker")}];
    [v7 setIsFromContextCollector:{objc_msgSend(v15, "isCollectedFromContextCollector") != 0}];
    [v7 setIsSelf:{objc_msgSend(v15, "isMe")}];
    [*(a1 + 32) addObject:v7];
  }

  v8 = objc_alloc_init(MEMORY[0x1E69CE940]);
  [v8 setDeviceClass:{+[SCDADevice cdaDeviceClassForSCDADeviceClass:andProducType:](SCDADevice, "cdaDeviceClassForSCDADeviceClass:andProducType:", objc_msgSend(v15, "deviceClass"), objc_msgSend(v15, "productType"))}];
  [v8 setProductType:{objc_msgSend(v15, "productType")}];
  [v8 setGoodnessScore:{objc_msgSend(v15, "goodness")}];
  v9 = [v15 isMe];
  v10 = [v15 electionParticipantId];
  v11 = v10;
  if (v9)
  {

    if (v11)
    {
      v12 = [v15 electionParticipantId];
      v13 = SCDAToSISchemaUUID(v12);
      [v8 setElectionParticipantId:v13];
    }

    else
    {
      v12 = [*(*(*(a1 + 48) + 8) + 40) electionParticipantId];
      [v8 setElectionParticipantId:v12];
    }

    v11 = [*(*(*(a1 + 48) + 8) + 40) rotatedElectionParticipantId];
    [v8 setRotatedElectionParticipantId:v11];
  }

  else
  {
    v14 = SCDAToSISchemaUUID(v10);
    [v8 setElectionParticipantId:v14];
  }

  [*(a1 + 40) addObject:v8];
  if (a3 >= 9)
  {
    *a4 = 1;
  }
}

- (void)endAdvertising:(id)a3
{
  v4 = a3;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SCDACoordinator_endAdvertising___block_invoke;
  v7[3] = &unk_1E85D32E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(myriadWorkQueue, v7);
}

- (void)_endAdvertising:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315138;
    v15 = "[SCDACoordinator _endAdvertising:]";
    _os_log_debug_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEBUG, "%s ", &v14, 0xCu);
  }

  kdebug_trace();
  [(SCDACoordinator *)self _createElectionParticipantIdVendorIfRequired];
  [(SCDAElectionParticipantIdVendor *)self->_electionParticipantIdVendor fetchBTLEAddressIfRequired];
  if (self->_myriadState != 5)
  {
    myriadInstrumentation = self->_myriadInstrumentation;
    v7 = [(SCDACoordinator *)self _myriadStateForSelf:?];
    v8 = [(SCDASession *)self->_myriadSession sessionId];
    [(SCDAInstrumentation *)myriadInstrumentation logCDAElectionAdvertisingEnding:v7 withCdaId:v8 withTimestamp:mach_absolute_time()];
  }

  [(SCDACoordinator *)self _stopAdvertising:v4];
  if ([(SCDARecord *)self->_triggerRecord recordType]== 4 || self->_clientIsWatchActivation)
  {
    v9 = [MEMORY[0x1E696AE30] processInfo];
    [v9 systemUptime];
    v11 = v10;

    [(SCDAGoodnessScoreEvaluator *)self->_goodnessScoreEvaluator setLastActivationTime:v11];
    v12 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v14 = 136315394;
      v15 = "[SCDACoordinator _endAdvertising:]";
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&dword_1DA758000, v12, OS_LOG_TYPE_INFO, "%s BTLE activation time %f", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)endAdvertisingAfterDelay:(float)a3
{
  myriadWorkQueue = self->_myriadWorkQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SCDACoordinator_endAdvertisingAfterDelay___block_invoke;
  v4[3] = &unk_1E85D32C0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(myriadWorkQueue, v4);
}

uint64_t __44__SCDACoordinator_endAdvertisingAfterDelay___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SCDACoordinator_endAdvertisingAfterDelay___block_invoke_2;
  v4[3] = &unk_1E85D32C0;
  v5 = v2;
  v4[4] = v1;
  return [v1 _startTimer:@"end advert delay" for:v4 thenExecute:?];
}

uint64_t __44__SCDACoordinator_endAdvertisingAfterDelay___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v6 = 136315394;
    v7 = "[SCDACoordinator endAdvertisingAfterDelay:]_block_invoke_2";
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE ending advertising after %f secs delay", &v6, 0x16u);
  }

  result = [*(a1 + 32) enterState:0];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startAdvertisingSlowdown:(unsigned __int16)a3
{
  myriadWorkQueue = self->_myriadWorkQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SCDACoordinator_startAdvertisingSlowdown___block_invoke;
  v4[3] = &unk_1E85D3298;
  v5 = a3;
  v4[4] = self;
  dispatch_async(myriadWorkQueue, v4);
}

uint64_t __44__SCDACoordinator_startAdvertisingSlowdown___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v6 = 136315394;
    v7 = "[SCDACoordinator startAdvertisingSlowdown:]_block_invoke";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE advertising slowdown: %d msecs", &v6, 0x12u);
  }

  [*(a1 + 32) _initializeTimer];
  *(*(a1 + 32) + 200) = *(a1 + 40);
  *(*(a1 + 32) + 225) = 1;
  result = [*(a1 + 32) _enterState:16];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startResponseAdvertising:(unsigned __int16)a3
{
  myriadWorkQueue = self->_myriadWorkQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SCDACoordinator_startResponseAdvertising___block_invoke;
  v4[3] = &unk_1E85D3298;
  v4[4] = self;
  v5 = a3;
  dispatch_async(myriadWorkQueue, v4);
}

void __44__SCDACoordinator_startResponseAdvertising___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[SCDACoordinator startResponseAdvertising:]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE suppressing stragglers", &v6, 0xCu);
  }

  [*(a1 + 32) _initializeTimer];
  v3 = [*(a1 + 32) responseObject:*(a1 + 40)];
  LODWORD(v4) = 1.0;
  [*(a1 + 32) _startAdvertising:v3 afterDelay:0.0 maxInterval:v4];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)startAdvertisingFromAlertFiringVoiceTriggerWithContext:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEFAULT, "startAdvertisingFromAlertFiringVoiceTriggerWithContext: %{public}@", buf, 0xCu);
  }

  myriadWorkQueue = self->_myriadWorkQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__SCDACoordinator_startAdvertisingFromAlertFiringVoiceTriggerWithContext___block_invoke;
  v9[3] = &unk_1E85D38A0;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(myriadWorkQueue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __74__SCDACoordinator_startAdvertisingFromAlertFiringVoiceTriggerWithContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[SCDACoordinator startAdvertisingFromAlertFiringVoiceTriggerWithContext:]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE voice trigger during alert heard", &v12, 0xCu);
  }

  [*(a1 + 32) _setMyriadContext:*(a1 + 40)];
  [*(a1 + 32) _createMyriadSessionIfRequired];
  v3 = *(a1 + 32);
  v4 = v3[61];
  v5 = [v3 _myriadStateForSelf:v3[1]];
  v6 = [*(*(a1 + 32) + 392) sessionId];
  [v4 logCDADeviceStateActivityStartedOrChanged:v5 withTrigger:8 withCdaId:v6 withTimestamp:mach_absolute_time()];

  [*(*(a1 + 32) + 488) updateIsTrump:1 withReason:2];
  [*(a1 + 32) _initializeTimer];
  v7 = [*(a1 + 32) alertFiringRecord];
  v8 = *(a1 + 32);
  v9 = *(v8 + 160);
  *(v8 + 160) = v7;

  *(*(a1 + 32) + 168) = 4;
  result = [*(a1 + 32) _enterState:1];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startAdvertisingFromInTaskVoiceTriggerWithContext:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v4;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEFAULT, "startAdvertisingFromInTaskVoiceTriggerWithContext: %{public}@", buf, 0xCu);
  }

  myriadWorkQueue = self->_myriadWorkQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__SCDACoordinator_startAdvertisingFromInTaskVoiceTriggerWithContext___block_invoke;
  v9[3] = &unk_1E85D38A0;
  v10 = v4;
  v11 = self;
  v7 = v4;
  dispatch_async(myriadWorkQueue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __69__SCDACoordinator_startAdvertisingFromInTaskVoiceTriggerWithContext___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = [v5 debugDescription];
    v8 = 136315394;
    v9 = "[SCDACoordinator startAdvertisingFromInTaskVoiceTriggerWithContext:]_block_invoke";
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&dword_1DA758000, v6, OS_LOG_TYPE_DEBUG, "%s BTLE voice trigger while inTask with context: %@", &v8, 0x16u);
  }

  [*(a1 + 40) _setMyriadContext:*(a1 + 32)];
  result = [*(a1 + 40) _startAdvertisingFromInTaskVoiceTrigger];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startAdvertisingFromInTaskTriggerWithContext:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEFAULT, "startAdvertisingFromInTaskTriggerWithContext: %{public}@", &v7, 0xCu);
  }

  [(SCDACoordinator *)self startAdvertisingFromInTaskVoiceTriggerWithContext:v4];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_startAdvertisingFromSetupMode
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SCDACoordinator _startAdvertisingFromSetupMode]";
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s BTLE setup-mode voice trigger heard", &v10, 0xCu);
  }

  [(SCDACoordinator *)self _createMyriadSessionIfRequired];
  myriadInstrumentation = self->_myriadInstrumentation;
  v5 = [(SCDACoordinator *)self _myriadStateForSelf:self->_myriadState];
  v6 = [(SCDASession *)self->_myriadSession sessionId];
  [(SCDAInstrumentation *)myriadInstrumentation logCDADeviceStateActivityStartedOrChanged:v5 withTrigger:0 withCdaId:v6 withTimestamp:mach_absolute_time()];

  v7 = [(SCDACoordinator *)self _phsSetupRecord];
  triggerRecord = self->_triggerRecord;
  self->_triggerRecord = v7;

  [(SCDACoordinator *)self _enterState:1];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)_startAdvertisingFromInTaskVoiceTrigger
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[SCDACoordinator _startAdvertisingFromInTaskVoiceTrigger]";
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s BTLE in-task voice trigger heard", &v11, 0xCu);
  }

  [(SCDACoordinator *)self _createMyriadSessionIfRequired];
  myriadInstrumentation = self->_myriadInstrumentation;
  v5 = [(SCDACoordinator *)self _myriadStateForSelf:self->_myriadState];
  v6 = [(SCDASession *)self->_myriadSession sessionId];
  [(SCDAInstrumentation *)myriadInstrumentation logCDADeviceStateActivityStartedOrChanged:v5 withTrigger:6 withCdaId:v6 withTimestamp:mach_absolute_time()];

  [(SCDAInstrumentation *)self->_myriadInstrumentation updateIsTrump:1 withReason:7];
  [(SCDACoordinator *)self _initializeTimer];
  if ([(SCDARecord *)self->_triggerRecord recordType]== 4)
  {
    v7 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[SCDACoordinator _startAdvertisingFromInTaskVoiceTrigger]";
      _os_log_error_impl(&dword_1DA758000, v7, OS_LOG_TYPE_ERROR, "%s In-task trigger detected while direct activating. We shouldn't demote direct triggers.", &v11, 0xCu);
    }

    self->_recordType = 4;
    v8 = [(SCDACoordinator *)self directTriggerRecord];
  }

  else
  {
    self->_recordType = 8;
    v8 = [(SCDACoordinator *)self inTaskRecord];
  }

  triggerRecord = self->_triggerRecord;
  self->_triggerRecord = v8;

  [(SCDACoordinator *)self _enterState:1];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)startAdvertisingEmergency
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SCDACoordinator_startAdvertisingEmergency__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

uint64_t __44__SCDACoordinator_startAdvertisingEmergency__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[SCDACoordinator startAdvertisingEmergency]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE sending emergency beacon", &v11, 0xCu);
  }

  [*(a1 + 32) _createMyriadSessionIfRequired];
  v3 = *(a1 + 32);
  v4 = v3[61];
  v5 = [v3 _myriadStateForSelf:v3[1]];
  v6 = [*(*(a1 + 32) + 392) sessionId];
  [v4 logCDADeviceStateActivityStartedOrChanged:v5 withTrigger:7 withCdaId:v6 withTimestamp:mach_absolute_time()];

  [*(a1 + 32) _initializeTimer];
  *(*(a1 + 32) + 320) = 1;
  v7 = [MEMORY[0x1E696AE30] processInfo];
  [v7 systemUptime];
  *(*(a1 + 32) + 312) = v8;

  result = [*(a1 + 32) _duringNextWindowEnterState:8];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startAdvertisingEmergencyHandled
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SCDACoordinator_startAdvertisingEmergencyHandled__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

uint64_t __51__SCDACoordinator_startAdvertisingEmergencyHandled__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SCDACoordinator startAdvertisingEmergencyHandled]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE handling emergency beacon", &v5, 0xCu);
  }

  [*(a1 + 32) _initializeTimer];
  result = [*(a1 + 32) _enterState:9];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startAdvertisingFromCarPlayTrigger
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SCDACoordinator_startAdvertisingFromCarPlayTrigger__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

uint64_t __53__SCDACoordinator_startAdvertisingFromCarPlayTrigger__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[SCDACoordinator startAdvertisingFromCarPlayTrigger]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE trumping from in CarPlay trigger", &v13, 0xCu);
  }

  [*(a1 + 32) _createMyriadSessionIfRequired];
  v3 = *(a1 + 32);
  v4 = v3[61];
  v5 = [v3 _myriadStateForSelf:v3[1]];
  v6 = [*(*(a1 + 32) + 392) sessionId];
  [v4 logCDADeviceStateActivityStartedOrChanged:v5 withTrigger:4 withCdaId:v6 withTimestamp:mach_absolute_time()];

  [*(a1 + 32) _initializeTimer];
  v7 = [*(a1 + 32) carplayRecord];
  v8 = *(a1 + 32);
  v9 = *(v8 + 160);
  *(v8 + 160) = v7;

  [*(*(a1 + 32) + 160) setRawAudioGoodnessScore:0 withBump:243];
  *(*(a1 + 32) + 227) = 1;
  *(*(a1 + 32) + 168) = 2;
  v10 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "[SCDACoordinator startAdvertisingFromCarPlayTrigger]_block_invoke";
    _os_log_debug_impl(&dword_1DA758000, v10, OS_LOG_TYPE_DEBUG, "%s #myriad CarPlay override", &v13, 0xCu);
  }

  result = [*(a1 + 32) _forceLocalWinner:0 withRecord:*(*(a1 + 32) + 160)];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startAdvertisingFromInEarTrigger
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SCDACoordinator_startAdvertisingFromInEarTrigger__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

uint64_t __51__SCDACoordinator_startAdvertisingFromInEarTrigger__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v16 = 136315138;
    v17 = "[SCDACoordinator startAdvertisingFromInEarTrigger]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE trumping from in ear voice trigger", &v16, 0xCu);
  }

  [*(a1 + 32) _createMyriadSessionIfRequired];
  v3 = *(a1 + 32);
  v4 = v3[61];
  v5 = [v3 _myriadStateForSelf:v3[1]];
  v6 = [*(*(a1 + 32) + 392) sessionId];
  [v4 logCDADeviceStateActivityStartedOrChanged:v5 withTrigger:3 withCdaId:v6 withTimestamp:mach_absolute_time()];

  [*(a1 + 32) _initializeTimer];
  if ([*(*(a1 + 32) + 160) goodness] >= 0xF9)
  {
    v7 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(a1 + 32) + 160);
      v14 = v7;
      v15 = [v13 goodness];
      v16 = 136315394;
      v17 = "[SCDACoordinator startAdvertisingFromInEarTrigger]_block_invoke";
      v18 = 1024;
      v19 = v15;
      _os_log_error_impl(&dword_1DA758000, v14, OS_LOG_TYPE_ERROR, "%s Unexpectedly lowering goodness score %du for in ear trigger", &v16, 0x12u);
    }
  }

  v8 = [*(a1 + 32) inEarRecord];
  v9 = *(a1 + 32);
  v10 = *(v9 + 160);
  *(v9 + 160) = v8;

  [*(*(a1 + 32) + 160) setRawAudioGoodnessScore:0 withBump:248];
  *(*(a1 + 32) + 223) = 1;
  *(*(a1 + 32) + 168) = 7;
  result = [*(a1 + 32) _enterState:1];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startAdvertisingFromOutgoingTriggerWithContext:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEFAULT, "startAdvertisingFromOutgoingTrigger: %{public}@", buf, 0xCu);
  }

  myriadWorkQueue = self->_myriadWorkQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__SCDACoordinator_startAdvertisingFromOutgoingTriggerWithContext___block_invoke;
  v9[3] = &unk_1E85D38A0;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(myriadWorkQueue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __66__SCDACoordinator_startAdvertisingFromOutgoingTriggerWithContext___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v16 = 136315138;
    v17 = "[SCDACoordinator startAdvertisingFromOutgoingTriggerWithContext:]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE suppressing trigger in audio output", &v16, 0xCu);
  }

  [*(a1 + 32) _setMyriadContext:*(a1 + 40)];
  [*(a1 + 32) _createMyriadSessionIfRequired];
  v3 = *(a1 + 32);
  v4 = v3[61];
  v5 = [v3 _myriadStateForSelf:v3[1]];
  v6 = [*(*(a1 + 32) + 392) sessionId];
  [v4 logCDADeviceStateActivityStartedOrChanged:v5 withTrigger:5 withCdaId:v6 withTimestamp:mach_absolute_time()];

  [*(*(a1 + 32) + 488) updateIsTrump:1 withReason:5];
  [*(a1 + 32) _initializeTimer];
  v7 = [*(a1 + 32) outgoingRecord];
  v8 = *(a1 + 32);
  v9 = *(v8 + 160);
  *(v8 + 160) = v7;

  *(*(a1 + 32) + 222) = 1;
  *(*(a1 + 32) + 168) = 11;
  v10 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(*(a1 + 32) + 160);
    v14 = v10;
    v15 = [v13 voiceTriggerMachTime];
    v16 = 136315394;
    v17 = "[SCDACoordinator startAdvertisingFromOutgoingTriggerWithContext:]_block_invoke";
    v18 = 2048;
    v19 = v15;
    _os_log_debug_impl(&dword_1DA758000, v14, OS_LOG_TYPE_DEBUG, "%s #scda _voiceTriggerTime: %llu", &v16, 0x16u);
  }

  result = [*(a1 + 32) _enterState:14];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startAdvertisingFromDirectTriggerWithContext:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEFAULT, "startAdvertisingFromDirectTriggerWithContext: %{public}@", buf, 0xCu);
  }

  myriadWorkQueue = self->_myriadWorkQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__SCDACoordinator_startAdvertisingFromDirectTriggerWithContext___block_invoke;
  v9[3] = &unk_1E85D38A0;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(myriadWorkQueue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __64__SCDACoordinator_startAdvertisingFromDirectTriggerWithContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[SCDACoordinator startAdvertisingFromDirectTriggerWithContext:]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE trumping", &v12, 0xCu);
  }

  [*(a1 + 32) _setMyriadContext:*(a1 + 40)];
  [*(a1 + 32) _createMyriadSessionIfRequired];
  v3 = *(a1 + 32);
  v4 = v3[61];
  v5 = [v3 _myriadStateForSelf:v3[1]];
  v6 = [*(*(a1 + 32) + 392) sessionId];
  [v4 logCDADeviceStateActivityStartedOrChanged:v5 withTrigger:1 withCdaId:v6 withTimestamp:mach_absolute_time()];

  [*(*(a1 + 32) + 488) updateIsTrump:1 withReason:6];
  [*(a1 + 32) _initializeTimer];
  v7 = [*(a1 + 32) directTriggerRecord];
  v8 = *(a1 + 32);
  v9 = *(v8 + 160);
  *(v8 + 160) = v7;

  *(*(a1 + 32) + 168) = 4;
  result = [*(a1 + 32) _enterState:1];
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startWatchAdvertisingFromDirectTriggerWithContext:(id)a3
{
  v4 = a3;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__SCDACoordinator_startWatchAdvertisingFromDirectTriggerWithContext___block_invoke;
  v7[3] = &unk_1E85D38A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(myriadWorkQueue, v7);
}

uint64_t __69__SCDACoordinator_startWatchAdvertisingFromDirectTriggerWithContext___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v20 = 136315138;
    v21 = "[SCDACoordinator startWatchAdvertisingFromDirectTriggerWithContext:]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s BTLE trumping", &v20, 0xCu);
  }

  [*(a1 + 32) _setMyriadContext:*(a1 + 40)];
  [*(a1 + 32) _createMyriadSessionIfRequired];
  v3 = [*(a1 + 40) activationSource];
  if (v3 == 3)
  {
    v4 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v20 = 136315138;
      v21 = "[SCDACoordinator startWatchAdvertisingFromDirectTriggerWithContext:]_block_invoke";
      _os_log_debug_impl(&dword_1DA758000, v4, OS_LOG_TYPE_DEBUG, "%s Setting RAISE_TO_SPEAK Trump Reason for DirectTrigger", &v20, 0xCu);
    }

    v5 = 1;
  }

  else
  {
    v5 = 6;
  }

  v6 = *(a1 + 32);
  v7 = v6[61];
  v8 = [v6 _myriadStateForSelf:v6[1]];
  v9 = [*(*(a1 + 32) + 392) sessionId];
  [v7 logCDADeviceStateActivityStartedOrChanged:v8 withTrigger:1 withCdaId:v9 withTimestamp:mach_absolute_time()];

  [*(*(a1 + 32) + 488) updateIsTrump:1 withReason:v5];
  [*(a1 + 32) _initializeTimer];
  v10 = *(a1 + 32);
  if (v3 == 3)
  {
    v11 = [v10 rtsTriggerRecord];
    v12 = *(a1 + 32);
    v13 = *(v12 + 160);
    *(v12 + 160) = v11;

    *(*(a1 + 32) + 168) = 13;
    v14 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v20 = 136315138;
      v21 = "[SCDACoordinator startWatchAdvertisingFromDirectTriggerWithContext:]_block_invoke";
      _os_log_debug_impl(&dword_1DA758000, v14, OS_LOG_TYPE_DEBUG, "%s Configured RAISE_TO_SPEAK record", &v20, 0xCu);
    }
  }

  else
  {
    v15 = [v10 directTriggerRecord];
    v16 = *(a1 + 32);
    v17 = *(v16 + 160);
    *(v16 + 160) = v15;

    *(*(a1 + 32) + 168) = 4;
  }

  *(*(a1 + 32) + 224) = 1;
  result = [*(a1 + 32) _enterState:1];
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startWatchAdvertisingFromVoiceTriggerWithContext:(id)a3
{
  v4 = a3;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__SCDACoordinator_startWatchAdvertisingFromVoiceTriggerWithContext___block_invoke;
  v7[3] = &unk_1E85D38A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(myriadWorkQueue, v7);
}

void __68__SCDACoordinator_startWatchAdvertisingFromVoiceTriggerWithContext___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v23 = 136315138;
    v24 = "[SCDACoordinator startWatchAdvertisingFromVoiceTriggerWithContext:]_block_invoke";
    _os_log_impl(&dword_1DA758000, v2, OS_LOG_TYPE_INFO, "%s ", &v23, 0xCu);
  }

  [*(a1 + 32) _setMyriadContext:*(a1 + 40)];
  [*(a1 + 32) _createMyriadSessionIfRequired];
  v3 = *(a1 + 32);
  v4 = v3[61];
  v5 = [v3 _myriadStateForSelf:v3[1]];
  v6 = [*(*(a1 + 32) + 392) sessionId];
  [v4 logCDADeviceStateActivityStartedOrChanged:v5 withTrigger:2 withCdaId:v6 withTimestamp:mach_absolute_time()];

  [*(a1 + 32) _initializeTimer];
  v7 = [*(a1 + 32) voiceTriggerRecord];
  v8 = *(a1 + 32);
  v9 = *(v8 + 160);
  *(v8 + 160) = v7;

  v10 = objc_alloc_init(SCDAGoodnessScoreContext);
  v11 = *(*(a1 + 32) + 504);
  if (v11)
  {
    [v11 timeIntervalSinceNow];
    v13 = -v12;
    [*(*(a1 + 32) + 456) recencyBoostDecayInterval];
    if (v14 > v13)
    {
      [(SCDAGoodnessScoreContext *)v10 setRecentlyWonBySmallAmount:1];
    }
  }

  v15 = [*(*(a1 + 32) + 384) getMyriadAdjustedBoostForGoodnessScoreContext:v10];
  v16 = [*(*(a1 + 32) + 160) rawAudioGoodnessScore];
  [*(*(a1 + 32) + 160) setRawAudioGoodnessScore:v16 withBump:v15];
  if (v16 >= 0x19)
  {
    v18 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315650;
      v24 = "[SCDACoordinator startWatchAdvertisingFromVoiceTriggerWithContext:]_block_invoke";
      v25 = 1024;
      v26 = v16;
      v27 = 1024;
      v28 = 25;
      _os_log_impl(&dword_1DA758000, v18, OS_LOG_TYPE_DEFAULT, "%s #scda watch trumping due to threshold for rawAudioGoodnessScore: %u >= %u", &v23, 0x18u);
    }

    goto LABEL_12;
  }

  if (!v16)
  {
    v17 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315138;
      v24 = "[SCDACoordinator startWatchAdvertisingFromVoiceTriggerWithContext:]_block_invoke";
      _os_log_error_impl(&dword_1DA758000, v17, OS_LOG_TYPE_ERROR, "%s #scda watch trumping due to score being 0; watch might win election for little reason", &v23, 0xCu);
    }

LABEL_12:
    v19 = [*(a1 + 32) thresholdTriggerRecordLoudnessMissing:v16 < 0x19];
    v20 = *(a1 + 32);
    v21 = *(v20 + 160);
    *(v20 + 160) = v19;

    [*(*(a1 + 32) + 488) updateIsTrump:1 withReason:3];
  }

  *(*(a1 + 32) + 224) = 1;
  *(*(a1 + 32) + 168) = 20;
  [*(a1 + 32) _enterState:1];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:(id)a3 withContext:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SCDALogForCategory(1);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_1DA758000, v8, OS_LOG_TYPE_DEFAULT, "startAdvertisingFromVoiceTriggerWithGoodnessScoreContext: %{public}@ context: %{public}@", buf, 0x16u);
  }

  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__SCDACoordinator_startAdvertisingFromVoiceTriggerWithGoodnessScoreContext_withContext___block_invoke;
  block[3] = &unk_1E85D3270;
  block[4] = self;
  v14 = v7;
  v15 = v6;
  v10 = v6;
  v11 = v7;
  dispatch_async(myriadWorkQueue, block);

  v12 = *MEMORY[0x1E69E9840];
}

void __88__SCDACoordinator_startAdvertisingFromVoiceTriggerWithGoodnessScoreContext_withContext___block_invoke(id *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  [a1[4] _setMyriadContext:a1[5]];
  v2 = [a1[6] adjustedScoreOverride];

  if (v2)
  {
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v4 = a1[6];
      v5 = v3;
      v6 = [v4 adjustedScoreOverride];
      v37 = 136315394;
      v38 = "[SCDACoordinator startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:withContext:]_block_invoke";
      v39 = 1024;
      *v40 = [v6 unsignedCharValue];
      _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s #scda adjustedScoreOverride was set: %du", &v37, 0x12u);
    }

    v7 = [a1[6] adjustedScoreOverride];
    *(a1[4] + 184) = [v7 unsignedCharValue];
  }

  v8 = *(a1[4] + 63);
  if (v8)
  {
    [v8 timeIntervalSinceNow];
    v10 = -v9;
    [*(a1[4] + 57) recencyBoostDecayInterval];
    if (v11 > v10)
    {
      [a1[6] setRecentlyWonBySmallAmount:1];
    }
  }

  *(a1[4] + 184) += [*(a1[4] + 48) getMyriadAdjustedBoostForGoodnessScoreContext:a1[6]];
  v12 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v13 = a1[6];
    v14 = v12;
    v15 = [v13 adjustedScoreOverride];
    v16 = *(a1[4] + 184);
    v37 = 136315650;
    v38 = "[SCDACoordinator startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:withContext:]_block_invoke";
    v39 = 2112;
    *v40 = v15;
    *&v40[8] = 1024;
    *v41 = v16;
    _os_log_impl(&dword_1DA758000, v14, OS_LOG_TYPE_INFO, "%s #scda adjustedScoreOverride: %@, _incomingAdjustment %d", &v37, 0x1Cu);
  }

  v17 = a1[4];
  v18 = v17[24];
  v17[24] = 0;

  v19 = [a1[5] overrideState];
  if (v19)
  {
    v20 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v37 = 136315394;
      v38 = "[SCDACoordinator startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:withContext:]_block_invoke";
      v39 = 2112;
      *v40 = v19;
      _os_log_impl(&dword_1DA758000, v20, OS_LOG_TYPE_INFO, "%s #scda Goodness score override state %@", &v37, 0x16u);
    }

    v21 = [v19 overrideOption];
    if (v21 == 2)
    {
      [a1[4] startAdvertisingFromInEarTrigger];
    }

    else if (v21 == 1)
    {
      v22 = [a1[4] overrideRecord];
      v23 = a1[4];
      v24 = v23[24];
      v23[24] = v22;

      [*(a1[4] + 61) updateIsTrump:1 withReason:6];
    }
  }

  v25 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v26 = a1[4];
    v27 = a1[5];
    v28 = v26[217];
    LODWORD(v26) = v26[184];
    v29 = a1[6];
    v37 = 136316162;
    v38 = "[SCDACoordinator startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:withContext:]_block_invoke";
    v39 = 1024;
    *v40 = v28;
    *&v40[4] = 1024;
    *&v40[6] = v26;
    *v41 = 2112;
    *&v41[2] = v27;
    v42 = 2112;
    v43 = v29;
    _os_log_impl(&dword_1DA758000, v25, OS_LOG_TYPE_INFO, "%s BTLE startFromVoiceTrigger inTask=REMOVED, inSetupMode=%d, incomingAdjustment=%d,  context=%@, goodnessScoreContext=%@", &v37, 0x2Cu);
  }

  if (v19 && a1[5] && ([v19 reason], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqualToString:", @"CarPlay request"), v30, v31))
  {
    v32 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v37 = 136315394;
      v38 = "[SCDACoordinator startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:withContext:]_block_invoke";
      v39 = 2112;
      *v40 = v19;
      _os_log_debug_impl(&dword_1DA758000, v32, OS_LOG_TYPE_DEBUG, "%s #myriad CarPlay override %@", &v37, 0x16u);
    }

    [a1[4] _initializeTimer];
    v33 = [a1[4] carplayRecord];
    v34 = a1[4];
    v35 = v34[20];
    v34[20] = v33;

    *(a1[4] + 227) = 1;
    [a1[4] _forceLocalWinner:a1[5] withRecord:*(a1[4] + 20)];
  }

  else
  {
    [a1[4] _createMyriadSessionIfRequired];
    [a1[4] _startAdvertisingFromVoiceTrigger];
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)startAdvertisingFromVoiceTriggerAdjusted:(char)a3 withContext:(id)a4
{
  v4 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = SCDALogForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109378;
    *v17 = v4;
    *&v17[4] = 2114;
    *&v17[6] = v6;
    _os_log_impl(&dword_1DA758000, v7, OS_LOG_TYPE_DEFAULT, "startAdvertisingFromVoiceTriggerAdjusted: %du context: %{public}@", &v16, 0x12u);
  }

  v8 = [(SCDADevice *)self->_device deviceAdjust_DEPRECATED];
  if ([(SCDAGoodnessScoreEvaluator *)self->_goodnessScoreEvaluator deviceAdjustTrialEnabled])
  {
    LOBYTE(v8) = [(SCDAGoodnessScoreEvaluator *)self->_goodnessScoreEvaluator deviceAdjustTrialValue];
    v9 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v16 = 136315394;
      *v17 = "[SCDACoordinator startAdvertisingFromVoiceTriggerAdjusted:withContext:]";
      *&v17[8] = 1024;
      *&v17[10] = v8;
      _os_log_impl(&dword_1DA758000, v9, OS_LOG_TYPE_INFO, "%s #scda Logging Trial defined Device Adjust Value: %du", &v16, 0x12u);
    }
  }

  else if ([v6 activationSource] == 13 && -[SCDADevice deviceClass](self->_device, "deviceClass") == 3)
  {
    v10 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v16 = 136315394;
      *v17 = "[SCDACoordinator startAdvertisingFromVoiceTriggerAdjusted:withContext:]";
      *&v17[8] = 1024;
      *&v17[10] = v8;
      _os_log_debug_impl(&dword_1DA758000, v10, OS_LOG_TYPE_DEBUG, "%s #scda removing negative iPad device boost (adding %d back) due to activationSource", &v16, 0x12u);
    }

    LOBYTE(v4) = v4 - v8;
  }

  v11 = SCDALogContextCore;
  v12 = v4;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315650;
    *v17 = "[SCDACoordinator startAdvertisingFromVoiceTriggerAdjusted:withContext:]";
    *&v17[8] = 1024;
    *&v17[10] = v8;
    v18 = 1024;
    v19 = v12;
    _os_log_debug_impl(&dword_1DA758000, v11, OS_LOG_TYPE_DEBUG, "%s #scda _deviceAdjust=%d, adjustment= %d", &v16, 0x18u);
  }

  v13 = objc_alloc_init(SCDAGoodnessScoreContext);
  v14 = [MEMORY[0x1E696AD98] numberWithChar:v12];
  [(SCDAGoodnessScoreContext *)v13 setAdjustedScoreOverride:v14];

  [(SCDACoordinator *)self startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:v13 withContext:v6];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)resetStateMachine
{
  v3 = SCDALogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_DEFAULT, "reset state machine", v4, 2u);
  }

  [(SCDACoordinator *)self enterState:0];
}

- (void)_startAdvertisingFromVoiceTrigger
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->_inSetupMode)
  {
    v3 = *MEMORY[0x1E69E9840];

    [(SCDACoordinator *)self _startAdvertisingFromSetupMode];
  }

  else
  {
    [(SCDACoordinator *)self _initializeTimer];
    v4 = [(SCDACoordinator *)self voiceTriggerRecord];
    v5 = [SCDAVoiceTriggerCalculation calculateRepeatVoiceTrigger:v4 withOldRecord:self->_triggerRecord device:self->_device adjustment:self->_incomingAdjustment constantGoodness:self->_constantGoodness evaluator:self->_goodnessScoreEvaluator andContext:self->_currentMyriadContext];
    triggerRecord = self->_triggerRecord;
    self->_triggerRecord = v5;

    self->_clientIsInEarActivation = [(SCDARecord *)self->_triggerRecord recordType]== 7;
    self->_incomingAdjustment = 0;
    if (self->_wasEmergency)
    {
      v7 = [MEMORY[0x1E696AE30] processInfo];
      [v7 systemUptime];
      v9 = v8 - self->_lastEmergencyAttempt;

      if (v9 < 70.0)
      {
        v10 = [(SCDARecord *)self->_triggerRecord goodness];
        v11 = v10 >= 0xC ? 12 : v10;
        [(SCDARecord *)self->_triggerRecord setRawAudioGoodnessScore:0 withBump:v11];
        v12 = SCDALogContextCore;
        if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
        {
          v13 = self->_triggerRecord;
          v14 = v12;
          *buf = 136315650;
          v25 = "[SCDACoordinator _startAdvertisingFromVoiceTrigger]";
          v26 = 2048;
          v27 = v9;
          v28 = 1024;
          v29 = [(SCDARecord *)v13 goodness];
          _os_log_impl(&dword_1DA758000, v14, OS_LOG_TYPE_INFO, "%s #scda Downgrading goodness as HS invocation too soon %f for score %d", buf, 0x1Cu);
        }
      }

      self->_lastEmergencyAttempt = 0.0;
      self->_wasEmergency = 0;
    }

    overrideMyriadRecord = self->_overrideMyriadRecord;
    if (overrideMyriadRecord)
    {
      v16 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v25 = "[SCDACoordinator _startAdvertisingFromVoiceTrigger]";
        v26 = 2112;
        v27 = *&overrideMyriadRecord;
        _os_log_impl(&dword_1DA758000, v16, OS_LOG_TYPE_INFO, "%s #scda BTLE overriding to goodness %@", buf, 0x16u);
        overrideMyriadRecord = self->_overrideMyriadRecord;
      }

      v17 = overrideMyriadRecord;
      v18 = self->_overrideMyriadRecord;
      self->_overrideMyriadRecord = 0;

      v19 = self->_triggerRecord;
      self->_triggerRecord = v17;
    }

    myriadInstrumentation = self->_myriadInstrumentation;
    v21 = [(SCDACoordinator *)self _myriadStateForSelf:self->_myriadState];
    v22 = [(SCDASession *)self->_myriadSession sessionId];
    [(SCDAInstrumentation *)myriadInstrumentation logCDADeviceStateActivityStartedOrChanged:v21 withTrigger:2 withCdaId:v22 withTimestamp:mach_absolute_time()];

    [(SCDACoordinator *)self enterState:1];
    v23 = *MEMORY[0x1E69E9840];
  }
}

- (void)startAdvertisingFromVoiceTriggerWithContext:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SCDALogForCategory(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_DEFAULT, "startAdvertisingFromVoiceTrigger: %{public}@", buf, 0xCu);
  }

  myriadWorkQueue = self->_myriadWorkQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__SCDACoordinator_startAdvertisingFromVoiceTriggerWithContext___block_invoke;
  v9[3] = &unk_1E85D38A0;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(myriadWorkQueue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __63__SCDACoordinator_startAdvertisingFromVoiceTriggerWithContext___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) _setMyriadContext:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v3[227] == 1)
  {
    v3[227] = 0;
  }

  else
  {
    v4 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v5 = v3[217];
      v6 = *(a1 + 40);
      v8 = 136315650;
      v9 = "[SCDACoordinator startAdvertisingFromVoiceTriggerWithContext:]_block_invoke";
      v10 = 1024;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1DA758000, v4, OS_LOG_TYPE_INFO, "%s BTLE startFromVoiceTrigger inTask=REMOVED, inSetupMode=%d, context=%@", &v8, 0x1Cu);
      v3 = *(a1 + 32);
    }

    [v3 _createMyriadSessionIfRequired];
    result = [*(a1 + 32) _startAdvertisingFromVoiceTrigger];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startAdvertisingForPHSSetupAfterDelay:(float)a3 maxInterval:(float)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[SCDACoordinator startAdvertisingForPHSSetupAfterDelay:maxInterval:]";
    _os_log_impl(&dword_1DA758000, v7, OS_LOG_TYPE_INFO, "%s ", &v13, 0xCu);
  }

  v8 = [(SCDACoordinator *)self _phsSetupRecord];
  v9 = [v8 asAdvertisementData];
  *&v10 = a3;
  *&v11 = a4;
  [(SCDACoordinator *)self advertiseWith:v9 afterDelay:v10 maxInterval:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)preheatWiProx
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SCDACoordinator_preheatWiProx__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

uint64_t __32__SCDACoordinator_preheatWiProx__block_invoke(uint64_t result)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(result + 32);
  if (!*(v1 + 8))
  {
    v2 = result;
    v3 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v4 = *(v1 + 204);
      v6 = 136315394;
      v7 = "[SCDACoordinator preheatWiProx]_block_invoke";
      v8 = 1024;
      v9 = v4;
      _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s Preheat shows slowdown for this device as %d msecs", &v6, 0x12u);
      v1 = *(v2 + 32);
    }

    if (*(v1 + 204))
    {
      result = [v1 startAdvertisingSlowdown:*(v1 + 204)];
    }

    else
    {
      [v1 _initializeTimer];
      result = [*(v2 + 32) enterState:15];
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_setMyriadContext:(id)a3
{
  v4 = [a3 copy];
  currentMyriadContext = self->_currentMyriadContext;
  self->_currentMyriadContext = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)readDefaults
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SCDACoordinator_readDefaults__block_invoke;
  block[3] = &unk_1E85D3850;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

- (void)dealloc
{
  [(SCDACoordinator *)self _clearWiProxReadinessTimer];
  [(SCDAPowerAssertionManager *)self->_powerAssertionManager releaseAllPowerAssertions];
  if (self->_BLEActivityEnabled)
  {
    [(WPHeySiri *)self->_heySiriBTLE stopScanningAndAdvertising];
    [(WPHeySiri *)self->_heySiriBTLE invalidate];
    self->_heySiriBTLEState = 0;
  }

  electionParticipantIdVendor = self->_electionParticipantIdVendor;
  self->_electionParticipantIdVendor = 0;

  v4.receiver = self;
  v4.super_class = SCDACoordinator;
  [(SCDACoordinator *)&v4 dealloc];
}

- (SCDACoordinator)initWithDelegate:(id)a3
{
  v103 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v95.receiver = self;
  v95.super_class = SCDACoordinator;
  v5 = [(SCDACoordinator *)&v95 init];
  if (!v5)
  {
LABEL_26:
    v7 = v5;
    goto LABEL_27;
  }

  if (!_currentCoordinator)
  {
    kdebug_trace();
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
    *(v5 + 3) = 0;
    objc_storeWeak(v5 + 10, v4);
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:16];
    v9 = *(v5 + 5);
    *(v5 + 5) = v8;

    v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:16];
    v11 = *(v5 + 6);
    *(v5 + 6) = v10;

    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:16];
    v13 = *(v5 + 7);
    *(v5 + 7) = v12;

    v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:16];
    v15 = *(v5 + 9);
    *(v5 + 9) = v14;

    v16 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:16];
    v17 = *(v5 + 8);
    *(v5 + 8) = v16;

    v18 = *(v5 + 4);
    *(v5 + 4) = 0;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_USER_INTERACTIVE, 0);

    v21 = dispatch_queue_create(scda_work_queue_label, v20);
    v22 = *(v5 + 13);
    *(v5 + 13) = v21;

    v23 = dispatch_queue_create(scda_context_queue_label, v20);
    v24 = *(v5 + 14);
    *(v5 + 14) = v23;

    if (*(v5 + 14))
    {
      v25 = [[SCDAAdvertisementContextManager alloc] initWithQueue:*(v5 + 14)];
      v26 = *(v5 + 46);
      *(v5 + 46) = v25;
    }

    v27 = [MEMORY[0x1E698D168] defaultContext];
    *(v5 + 108) = 0;
    *(v5 + 113) = 0;
    *(v5 + 223) = 0;
    v5[228] = 0;
    v28 = *(v5 + 63);
    *(v5 + 63) = 0;

    v5[184] = 0;
    *(v5 + 50) = 0;
    v29 = [[SCDAPowerAssertionManager alloc] initWithIdentifier:@"com.apple.assistant.myriad"];
    v30 = *(v5 + 19);
    *(v5 + 19) = v29;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, notificationCallback, @"com.apple.siri.myriad.apayload", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, outputTriggerSeenCallback, @"com.apple.siri.corespeech.selftrigger", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, emergencyCallback, @"com.apple.siri.myriad.falseemergency", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, myriadDecisionRequestCallback, @"com.apple.siri.myriad.get.decision", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, inEarTriggerSeenCallback, @"com.apple.siri.myriad.in.ear", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, carplayTriggerSeenCallback, @"com.apple.siri.myriad.jarvis", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v32 = [MEMORY[0x1E696AFB0] UUID];
    v33 = *(v5 + 34);
    *(v5 + 34) = v32;

    v34 = [[SCDADevice alloc] initWithSelfID:*(v5 + 34)];
    v35 = *(v5 + 64);
    *(v5 + 64) = v34;

    v36 = *(v5 + 20);
    *(v5 + 20) = 0;

    *(v5 + 21) = 0;
    objc_storeStrong(&_currentCoordinator, v5);
    v5[222] = 0;
    v5[225] = 0;
    v37 = *(v5 + 15);
    *(v5 + 15) = &stru_1F5626F50;

    *(v5 + 22) = 0;
    v38 = *(v5 + 26);
    *(v5 + 26) = 0;

    *(v5 + 153) = 0;
    v39 = *(v5 + 35);
    *(v5 + 35) = 0;

    *(v5 + 37) = 0;
    v5[304] = 0;
    v40 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v41 = *(v5 + 30);
    *(v5 + 30) = v40;

    [*(v5 + 30) setDateFormat:@"hh:mm:ss.SSS"];
    v42 = objc_alloc_init(SCDAEmergencyCallPunchout);
    v43 = *(v5 + 36);
    *(v5 + 36) = v42;

    v44 = [SCDAPreferences alloc];
    v45 = +[SCDAAssistantPreferences sharedPreferences];
    v46 = [(SCDAPreferences *)v44 initWithDeviceInstanceContext:v27 preferences:v45];
    v47 = *(v5 + 57);
    *(v5 + 57) = v46;

    [v5 _readDefaults];
    if (v5[220] == 1)
    {
      v48 = objc_alloc_init(SCDAInstrumentation);
      v49 = *(v5 + 61);
      *(v5 + 61) = v48;
    }

    v50 = [SCDAGoodnessScoreEvaluator alloc];
    v51 = +[SCDAAssistantPreferences sharedPreferences];
    v52 = [(SCDAGoodnessScoreEvaluator *)v50 initWithDeviceInstanceContext:v27 preferences:v51 queue:*(v5 + 13) instrumentation:*(v5 + 61)];
    v53 = *(v5 + 48);
    *(v5 + 48) = v52;

    [*(v5 + 48) setLastActivationTime:0.0];
    v54 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      v55 = v5[220];
      v56 = v5[221];
      v57 = v54;
      v58 = +[SCDAUtilities isCommunal];
      *buf = 136315906;
      *&buf[4] = "[SCDACoordinator initWithDelegate:]";
      *&buf[12] = 1024;
      *&buf[14] = v55;
      *&buf[18] = 1024;
      *&buf[20] = v56;
      LOWORD(v101) = 1024;
      *(&v101 + 2) = v58;
      _os_log_impl(&dword_1DA758000, v57, OS_LOG_TYPE_INFO, "%s #scda coordinationEnabled=%d, BLEActivityEnabled=%d communal=%d", buf, 0x1Eu);

      v54 = SCDALogContextCore;
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v59 = *(v5 + 64);
      v60 = *(v5 + 11);
      *buf = 136315650;
      *&buf[4] = "[SCDACoordinator initWithDelegate:]";
      *&buf[12] = 2112;
      *&buf[14] = v59;
      *&buf[22] = 2048;
      v101 = v60;
      _os_log_impl(&dword_1DA758000, v54, OS_LOG_TYPE_INFO, "%s %@, vt_endtime threshold %f", buf, 0x20u);
    }

    v61 = *(v5 + 17);
    *(v5 + 17) = 0;

    v62 = *(v5 + 49);
    *(v5 + 49) = 0;

    [v5 _initializeTimer];
    *(v5 + 161) = 0;
    [v5 _initializeWiProxReadinessTimer];
    [v5 _resetAdvertisementTimings];
    if (v5[221] == 1)
    {
      v96 = 0;
      v97 = &v96;
      v98 = 0x2050000000;
      v63 = getWPHeySiriClass_softClass;
      v99 = getWPHeySiriClass_softClass;
      if (!getWPHeySiriClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getWPHeySiriClass_block_invoke;
        v101 = &unk_1E85D3638;
        v102 = &v96;
        __getWPHeySiriClass_block_invoke(buf);
        v63 = v97[3];
      }

      v64 = v63;
      _Block_object_dispose(&v96, 8);
      v65 = [[v63 alloc] initWithDelegate:v5 queue:*(v5 + 13)];
    }

    else
    {
      v65 = 0;
    }

    v66 = *(v5 + 31);
    *(v5 + 31) = v65;

    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __36__SCDACoordinator_initWithDelegate___block_invoke;
    v93[3] = &unk_1E85D3850;
    v67 = v5;
    v94 = v67;
    [v67 waitWiProx:2000 andExecute:v93];
    v68 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[SCDACoordinator initWithDelegate:]";
      _os_log_impl(&dword_1DA758000, v68, OS_LOG_TYPE_DEFAULT, "%s Initialized MyriadCoordinator", buf, 0xCu);
    }

    v69 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v69 addObserver:v67 selector:sel_updateRequestId_ name:@"RequestIdForMyriad" object:0];

    *(v67 + 39) = 0;
    v70 = [SCDANotifyStatePublisher alloc];
    v71 = [MEMORY[0x1E696AEC0] stringWithCString:"com.apple.siri.myriad.decision.begin" encoding:4];
    v72 = [(SCDANotifyStatePublisher *)v70 initWithName:v71 queue:*(v5 + 13)];
    v73 = *(v67 + 50);
    *(v67 + 50) = v72;

    v74 = [SCDANotifyStatePublisher alloc];
    v75 = [MEMORY[0x1E696AEC0] stringWithCString:"com.apple.siri.myriad.decision.won" encoding:4];
    v76 = [(SCDANotifyStatePublisher *)v74 initWithName:v75 queue:*(v5 + 13)];
    v77 = *(v67 + 51);
    *(v67 + 51) = v76;

    v78 = [SCDANotifyStatePublisher alloc];
    v79 = [MEMORY[0x1E696AEC0] stringWithCString:"com.apple.siri.myriad.decision.lost" encoding:4];
    v80 = [(SCDANotifyStatePublisher *)v78 initWithName:v79 queue:*(v5 + 13)];
    v81 = *(v67 + 52);
    *(v67 + 52) = v80;

    v82 = [SCDANotifyStatePublisher alloc];
    v83 = [MEMORY[0x1E696AEC0] stringWithCString:"com.apple.siri.myriad.repost.decision.won" encoding:4];
    v84 = [(SCDANotifyStatePublisher *)v82 initWithName:v83 queue:*(v5 + 13)];
    v85 = *(v67 + 53);
    *(v67 + 53) = v84;

    *(v67 + 56) = 0;
    v86 = observerWithNotificationName("com.apple.siri.myriad.readdefaults", v27, 1, v67, *(v5 + 13));
    v87 = *(v67 + 54);
    *(v67 + 54) = v86;

    if (SCDAIsInternalInstall_onceToken != -1)
    {
      dispatch_once(&SCDAIsInternalInstall_onceToken, &__block_literal_global_1238);
    }

    if (SCDAIsInternalInstall_isInternal == 1)
    {
      v88 = SCDAForceNoActivityNotifyStateObserver(v27, 1, v67, *(v5 + 13));
      v89 = *(v67 + 55);
      *(v67 + 55) = v88;
    }

    v90 = *(v67 + 62);
    *(v67 + 62) = 0;

    kdebug_trace();
    goto LABEL_26;
  }

  v6 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "[SCDACoordinator initWithDelegate:]";
    _os_log_error_impl(&dword_1DA758000, v6, OS_LOG_TYPE_ERROR, "%s Attempt to initialize MyriadCoordinator when one already exists.", buf, 0xCu);
  }

  v7 = 0;
LABEL_27:

  v91 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __36__SCDACoordinator_initWithDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 221) == 1)
  {
    [*(v2 + 248) stopScanningAndAdvertising];
    [*(a1 + 32) _createElectionParticipantIdVendorIfRequired];
    [*(*(a1 + 32) + 256) fetchBTLEAddressIfRequired];
    v2 = *(a1 + 32);
  }

  *(v2 + 322) = 0;
  *(*(a1 + 32) + 323) = 0;
  v3 = *(a1 + 32);

  return [v3 enterState:17];
}

+ (void)clearCurrentCoordinator
{
  v2 = _currentCoordinator;
  _currentCoordinator = 0;
}

+ (void)didChangeDefaults
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.myriad.readdefaults", 0, 0, 1u);
}

+ (void)initialize
{
  if (SCDALogInitIfNeeded_once != -1)
  {
    dispatch_once(&SCDALogInitIfNeeded_once, &__block_literal_global_498);
  }
}

@end