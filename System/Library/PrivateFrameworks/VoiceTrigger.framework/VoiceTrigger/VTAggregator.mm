@interface VTAggregator
+ (id)sharedAggregator;
- (VTAggregator)init;
- (id)_makeKeyWithLanguageAndAssetString:(id)string;
- (id)_makeKeyWithLanguageCode:(id)code;
- (void)_addValueForScalarKey:(id)key withValue:(int64_t)value;
- (void)_logUptime;
- (void)_pushValueForDistributionKey:(id)key withValue:(double)value;
- (void)cumulativeUptime:(id *)uptime cumulativeDowntime:(id *)downtime reset:(BOOL)reset;
- (void)logActivation;
- (void)logFalseWakeUp:(BOOL)up;
- (void)logProfileUpdateNumDeletedUttsStrategy:(int)strategy;
- (void)logProfileUpdateNumDiscardedUttsPHS:(int)s;
- (void)logProfileUpdateNumPrunedUttsPHS:(int)s;
- (void)logProfileUpdateNumRetainedUttsPHS:(int)s;
- (void)logProfileUpdateScoreMSE:(double)e;
- (void)logProfileUpdateUtt:(id)utt withScore:(double)score;
- (void)logRecognizerTimedOut;
- (void)logSecondPassResult:(BOOL)result;
- (void)logTdPsrExtraAudioSamplesProcessed:(unint64_t)processed;
- (void)logTdPsrFailedDuringSATDetection;
- (void)logTdPsrFailedDuringSATRetraining;
- (void)logTdPsrSATDetectionTimedOut;
- (void)logTdPsrSATDetectionWaitTimeMs:(double)ms;
- (void)logTdPsrSATRetrainingTimedOut;
- (void)logTdPsrSATRetrainingWaitTimeMs:(double)ms;
- (void)logTimeVoiceTriggerTransitionsToState:(unint64_t)state;
- (void)logVoiceProfilePruningFailureWithReasonCode:(unint64_t)code;
- (void)logZeroRunAudio:(int)audio;
- (void)setAssetString:(id)string;
- (void)setLanguageCode:(id)code;
@end

@implementation VTAggregator

- (void)_pushValueForDistributionKey:(id)key withValue:(double)value
{
  v15 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v6 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = keyCopy;
    v13 = 2050;
    valueCopy = value;
    _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "Pushing value for distribution key %{public}@ : %{public}lf", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__VTAggregator__pushValueForDistributionKey_withValue___block_invoke;
  v8[3] = &unk_2784ECCD0;
  v9 = keyCopy;
  valueCopy2 = value;
  v7 = keyCopy;
  softLink_AnalyticsSendEventLazy(v8);
}

id __55__VTAggregator__pushValueForDistributionKey_withValue___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)_addValueForScalarKey:(id)key withValue:(int64_t)value
{
  v15 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v6 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = keyCopy;
    v13 = 2050;
    valueCopy = value;
    _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "Adding value for scalar key %{public}@ : %{public}lld", buf, 0x16u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__VTAggregator__addValueForScalarKey_withValue___block_invoke;
  v8[3] = &unk_2784ECCD0;
  v9 = keyCopy;
  valueCopy2 = value;
  v7 = keyCopy;
  softLink_AnalyticsSendEventLazy(v8);
}

id __48__VTAggregator__addValueForScalarKey_withValue___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v5 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:v1];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)_makeKeyWithLanguageAndAssetString:(id)string
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [(VTAggregator *)self _makeKey:string];
  v6 = [v4 stringWithFormat:@"%@.%@.%@", v5, self->_languageCode, self->_assetString];

  return v6;
}

- (id)_makeKeyWithLanguageCode:(id)code
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [(VTAggregator *)self _makeKey:code];
  v6 = [v4 stringWithFormat:@"%@.%@", v5, self->_languageCode];

  return v6;
}

- (void)logVoiceProfilePruningFailureWithReasonCode:(unint64_t)code
{
  v5 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"profileUpdateFailCode"];
  [(VTAggregator *)self _addValueForScalarKey:v5 withValue:code];
}

- (void)logTdPsrExtraAudioSamplesProcessed:(unint64_t)processed
{
  v5 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"TdPsrExtraAudioSamplesProcessed"];
  [(VTAggregator *)self _pushValueForDistributionKey:v5 withValue:processed];
}

- (void)logTdPsrSATRetrainingTimedOut
{
  v3 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"TdPsrSATRetrainingTimedOut"];
  [(VTAggregator *)self _addValueForScalarKey:v3 withValue:1];
}

- (void)logTdPsrFailedDuringSATRetraining
{
  v3 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"TdPsrFailedDuringSATRetraining"];
  [(VTAggregator *)self _addValueForScalarKey:v3 withValue:1];
}

- (void)logTdPsrSATRetrainingWaitTimeMs:(double)ms
{
  v5 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"TdPsrSATRetrainingWaitTimeMs"];
  [(VTAggregator *)self _pushValueForDistributionKey:v5 withValue:ms];
}

- (void)logTdPsrSATDetectionTimedOut
{
  v3 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"TdPsrSATDetectionTimedOut"];
  [(VTAggregator *)self _addValueForScalarKey:v3 withValue:1];
}

- (void)logTdPsrFailedDuringSATDetection
{
  v3 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"TdPsrFailedDuringSATDetection"];
  [(VTAggregator *)self _addValueForScalarKey:v3 withValue:1];
}

- (void)logTdPsrSATDetectionWaitTimeMs:(double)ms
{
  v5 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"TdPsrSATDetectionTimeMs"];
  [(VTAggregator *)self _pushValueForDistributionKey:v5 withValue:ms];
}

- (void)logProfileUpdateScoreMSE:(double)e
{
  v5 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"profileUpdateScoreMSE"];
  [(VTAggregator *)self _pushValueForDistributionKey:v5 withValue:e];
}

- (void)logProfileUpdateNumRetainedUttsPHS:(int)s
{
  v5 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"profileUpdateNumRetainedUttsPHS"];
  [(VTAggregator *)self _pushValueForDistributionKey:v5 withValue:s];
}

- (void)logProfileUpdateNumDiscardedUttsPHS:(int)s
{
  v5 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"profileUpdateNumDiscardedUttsPHS"];
  [(VTAggregator *)self _pushValueForDistributionKey:v5 withValue:s];
}

- (void)logProfileUpdateNumPrunedUttsPHS:(int)s
{
  v5 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"profileUpdateNumPrunedUttsPHS"];
  [(VTAggregator *)self _pushValueForDistributionKey:v5 withValue:s];
}

- (void)logProfileUpdateNumDeletedUttsStrategy:(int)strategy
{
  v5 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"profileUpdateNumDeletedUttsStrategy"];
  [(VTAggregator *)self _pushValueForDistributionKey:v5 withValue:strategy];
}

- (void)logProfileUpdateUtt:(id)utt withScore:(double)score
{
  v6 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:utt];
  [(VTAggregator *)self _pushValueForDistributionKey:v6 withValue:score];
}

- (void)logRecognizerTimedOut
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "::: logging recognizer timeout in aggd", v5, 2u);
  }

  v4 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"recognizerTimeOut"];
  [(VTAggregator *)self _addValueForScalarKey:v4 withValue:1];
}

- (void)logZeroRunAudio:(int)audio
{
  v4 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "::: logging corrupt audio length in aggd", v6, 2u);
  }

  v5 = [(VTAggregator *)self _makeKeyWithLanguageCode:@"zeroRunAudio"];
  [(VTAggregator *)self _addValueForScalarKey:v5 withValue:1];
}

- (void)logTimeVoiceTriggerTransitionsToState:(unint64_t)state
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__VTAggregator_logTimeVoiceTriggerTransitionsToState___block_invoke;
  v6[3] = &unk_2784ECCA8;
  v7[1] = state;
  v6[4] = self;
  objc_copyWeak(v7, &location);
  dispatch_async(queue, v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __54__VTAggregator_logTimeVoiceTriggerTransitionsToState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  if (v1 != *(v2 + 8))
  {
    if (v1)
    {
      if (v1 == 1)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained _logUptime];

        dispatch_resume(*(*(a1 + 32) + 64));
      }
    }

    else
    {
      dispatch_suspend(*(v2 + 64));
      v5 = objc_loadWeakRetained((a1 + 40));
      [v5 _logUptime];
    }

    *(*(a1 + 32) + 8) = *(a1 + 48);
  }
}

- (void)_logUptime
{
  v13 = *MEMORY[0x277D85DE8];
  +[VTUtilities systemUpTime];
  v4 = v3;
  lastAggTime = self->_lastAggTime;
  if (lastAggTime > 0.0)
  {
    v6 = v4 - lastAggTime;
    if (self->_currentState == 1)
    {
      self->_cumulativeUptime = v6 + self->_cumulativeUptime;
      v7 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"uptimeSeconds"];
      [(VTAggregator *)self _pushValueForDistributionKey:v7 withValue:v6];

      v8 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134349056;
        v12 = v6;
        v9 = "::: VoiceTrigger has been ACTIVE for an interval of %{public}5.3f seconds.";
LABEL_7:
        _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, v9, &v11, 0xCu);
      }
    }

    else
    {
      self->_cumulativeDowntime = v6 + self->_cumulativeDowntime;
      v10 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"downtimeSeconds"];
      [(VTAggregator *)self _pushValueForDistributionKey:v10 withValue:v6];

      v8 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134349056;
        v12 = v6;
        v9 = "::: VoiceTrigger has been INACTIVE for an interval of %{public}5.3f seconds.";
        goto LABEL_7;
      }
    }
  }

  self->_lastAggTime = v4;
}

- (void)logFalseWakeUp:(BOOL)up
{
  v22 = *MEMORY[0x277D85DE8];
  if (up)
  {
    v4 = self->_numFalseWakeUp + 1;
    self->_numFalseWakeUp = v4;
    v5 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v19 = v4;
      _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "::: incrementing false wakeup to %{public}llu", buf, 0xCu);
    }
  }

  +[VTUtilities systemUpTime];
  lastAggTimeFalseWakeUp = self->_lastAggTimeFalseWakeUp;
  if (lastAggTimeFalseWakeUp <= 0.0)
  {
    self->_lastAggTimeFalseWakeUp = v6;
  }

  else
  {
    numFalseWakeUp = self->_numFalseWakeUp;
    if (numFalseWakeUp)
    {
      v9 = v6;
      v10 = v6 - lastAggTimeFalseWakeUp;
      v11 = VTLogContextFacilityVoiceTrigger;
      v12 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT);
      if (v10 <= 0.0)
      {
        if (v12)
        {
          *buf = 134349312;
          v19 = numFalseWakeUp;
          v20 = 2050;
          v21 = v10;
          _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "::: accumulated false wakeup count is %{public}llu so far, not reporting yet because it has been only %{public}.2f seconds since last report", buf, 0x16u);
        }
      }

      else
      {
        if (v12)
        {
          *buf = 134349312;
          v19 = numFalseWakeUp;
          v20 = 2050;
          v21 = v10;
          _os_log_impl(&dword_223A31000, v11, OS_LOG_TYPE_DEFAULT, "::: logging %{public}llu false wakeup during %{public}.2f seconds", buf, 0x16u);
        }

        v13 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"falseWakeUp"];
        [(VTAggregator *)self _addValueForScalarKey:v13 withValue:self->_numFalseWakeUp];

        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{self->_numFalseWakeUp, @"numFalseWakeUp"}];
        v16[1] = @"secondsSinceLastReport";
        v17[0] = v14;
        v15 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
        v17[1] = v15;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
        PLLogRegisteredEvent();

        self->_lastAggTimeFalseWakeUp = v9;
        self->_numFalseWakeUp = 0;
      }
    }
  }
}

- (void)logSecondPassResult:(BOOL)result
{
  resultCopy = result;
  v5 = VTLogContextFacilityVoiceTrigger;
  v6 = os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT);
  if (resultCopy)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "::: incrementing 2nd-pass accept in aggd", buf, 2u);
    }

    v7 = @"secondPassAccepted";
  }

  else
  {
    if (v6)
    {
      *v9 = 0;
      _os_log_impl(&dword_223A31000, v5, OS_LOG_TYPE_DEFAULT, "::: incrementing 2nd-pass reject in aggd", v9, 2u);
    }

    v7 = @"secondPassRejected";
  }

  v8 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:v7];
  [(VTAggregator *)self _addValueForScalarKey:v8 withValue:1];
}

- (void)logActivation
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "::: logging VT activation in aggd", v5, 2u);
  }

  v4 = [(VTAggregator *)self _makeKeyWithLanguageAndAssetString:@"activation"];
  [(VTAggregator *)self _addValueForScalarKey:v4 withValue:1];
}

- (void)setAssetString:(id)string
{
  stringCopy = string;
  assetString = self->_assetString;
  p_assetString = &self->_assetString;
  v8 = stringCopy;
  if (![(NSString *)assetString isEqualToString:?])
  {
    objc_storeStrong(p_assetString, string);
  }
}

- (void)setLanguageCode:(id)code
{
  codeCopy = code;
  languageCode = self->_languageCode;
  p_languageCode = &self->_languageCode;
  v8 = codeCopy;
  if (![(NSString *)languageCode isEqualToString:?])
  {
    objc_storeStrong(p_languageCode, code);
  }
}

- (void)cumulativeUptime:(id *)uptime cumulativeDowntime:(id *)downtime reset:(BOOL)reset
{
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__VTAggregator_cumulativeUptime_cumulativeDowntime_reset___block_invoke;
  v6[3] = &unk_2784ECC80;
  v6[4] = self;
  v6[5] = downtime;
  v6[6] = uptime;
  resetCopy = reset;
  dispatch_sync(queue, v6);
}

id __58__VTAggregator_cumulativeUptime_cumulativeDowntime_reset___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _logUptime];
  **(a1 + 40) = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 32) + 32)];
  result = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 32) + 24)];
  **(a1 + 48) = result;
  if (*(a1 + 56) == 1)
  {
    *(*(a1 + 32) + 32) = 0;
    *(*(a1 + 32) + 24) = 0;
  }

  return result;
}

- (VTAggregator)init
{
  v18.receiver = self;
  v18.super_class = VTAggregator;
  v2 = [(VTAggregator *)&v18 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 40) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 8) = 0u;
    v4 = *(v2 + 9);
    *(v2 + 9) = @"xx_XX";

    v5 = *(v3 + 10);
    *(v3 + 10) = @"unknown";

    v6 = AFPreferencesMobileUserSessionLanguage();
    [v3 setLanguageCode:v6];

    v7 = dispatch_queue_create("com.apple.voicetrigger.aggregator", 0);
    v8 = *(v3 + 7);
    *(v3 + 7) = v7;

    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v3 + 7));
    v10 = *(v3 + 8);
    *(v3 + 8) = v9;

    v11 = *(v3 + 8);
    v12 = dispatch_time(0, 900000000000);
    dispatch_source_set_timer(v11, v12, 0xD18C2E2800uLL, 0);
    objc_initWeak(&location, v3);
    v13 = *(v3 + 8);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __20__VTAggregator_init__block_invoke;
    v15[3] = &unk_2784ECDF8;
    objc_copyWeak(&v16, &location);
    dispatch_source_set_event_handler(v13, v15);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __20__VTAggregator_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _logUptime];
}

+ (id)sharedAggregator
{
  if (sharedAggregator_onceToken != -1)
  {
    dispatch_once(&sharedAggregator_onceToken, &__block_literal_global_5675);
  }

  v3 = sharedAggregator_sSharedAggregator;

  return v3;
}

uint64_t __32__VTAggregator_sharedAggregator__block_invoke()
{
  sharedAggregator_sSharedAggregator = objc_alloc_init(VTAggregator);

  return MEMORY[0x2821F96F8]();
}

@end