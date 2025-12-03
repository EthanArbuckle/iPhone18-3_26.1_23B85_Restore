@interface SOSEmergencyCallVoiceLoopManager
+ (BOOL)_activeCallSupportsDTMF;
+ (id)_activeCallPreferringEmergencyOrSOS;
+ (id)_messageKeyForReason:(int64_t)reason shortVersion:(BOOL)version;
+ (id)_validDTMFDigits;
- (BOOL)_isSpeaking;
- (BOOL)callSupportsRemoteControl;
- (BOOL)outputToTelephonyUplink;
- (CLLocation)locationToSynthesize;
- (SOSEmergencyCallVoiceLoopManager)initWithReason:(int64_t)reason;
- (SOSEmergencyCallVoiceLoopManager)initWithReason:(int64_t)reason playbackMode:(int64_t)mode;
- (SOSEmergencyCallVoiceLoopManagerDelegate)delegate;
- (SOSVoiceUtterer)localVoiceUtterer;
- (SOSVoiceUtterer)uplinkVoiceUtterer;
- (id)_coordinatesStringFromLocation:(id)location shortVersion:(BOOL)version;
- (id)_languageToUseInVoiceLoopForCountryCode:(id)code;
- (id)_overrideLocation;
- (id)_preferredVoiceLanguageForCountryCode:(id)code;
- (id)localizedStringForKey:(id)key;
- (id)stopConfirmationUtterancesForPlaybackState:(unint64_t)state remoteVariant:(BOOL)variant verbalizedActionOut:(unint64_t *)out;
- (id)voiceLanguage;
- (unint64_t)_loopPhaseFromUtteranceIndex:(unint64_t)index;
- (void)_handleDTMFMessageRepeatCommand;
- (void)_handleDTMFMessageResumeCommand;
- (void)_handleDTMFMessageStopCommand;
- (void)_handleRemoteDTMFDigits:(id)digits;
- (void)_speakLoopMessage;
- (void)_startListeningForRemoteControl;
- (void)_startLoopPlayback;
- (void)_stopListeningForRemoteControl;
- (void)_stopMessagePlayback;
- (void)_updateLocation:(id)location;
- (void)callCenter:(id)center reportedCall:(id)call receivedDTMFUpdate:(id)update;
- (void)dealloc;
- (void)invalidate;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)setPlaybackState:(unint64_t)state;
- (void)setPlayingLoopIndex:(unint64_t)index;
- (void)shiftedLocationIfApplicable:(id)applicable withcompletion:(id)withcompletion;
- (void)speakResponseUtteranceVariants:(id)variants;
- (void)speakUtteranceVariants:(id)variants withPlaybackState:(unint64_t)state;
- (void)startLoopPlayback;
- (void)startMessagePlayback;
- (void)stopLoopPlayback;
- (void)stopMessagePlayback;
- (void)voiceUtterer:(id)utterer didFinishSpeakingUtterances:(id)utterances;
- (void)voiceUtterer:(id)utterer willStartSpeakingUtteranceAtIndex:(unint64_t)index fromUtterances:(id)utterances;
@end

@implementation SOSEmergencyCallVoiceLoopManager

- (SOSEmergencyCallVoiceLoopManager)initWithReason:(int64_t)reason
{
  v12.receiver = self;
  v12.super_class = SOSEmergencyCallVoiceLoopManager;
  v4 = [(SOSEmergencyCallVoiceLoopManager *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_reason = reason;
    v6 = objc_alloc(MEMORY[0x277CBFC10]);
    v7 = +[SOSUtilities sosLocationBundle];
    v8 = [v6 initWithEffectiveBundle:v7 delegate:v5 onQueue:MEMORY[0x277D85CD0]];
    locationManager = v5->_locationManager;
    v5->_locationManager = v8;

    [(CLLocationManager *)v5->_locationManager setDesiredAccuracy:-1.0];
    [(CLLocationManager *)v5->_locationManager startUpdatingLocation];
    location = [(CLLocationManager *)v5->_locationManager location];
    [(SOSEmergencyCallVoiceLoopManager *)v5 _updateLocation:location];

    [(SOSEmergencyCallVoiceLoopManager *)v5 _startListeningForRemoteControl];
  }

  return v5;
}

- (void)dealloc
{
  [(SOSEmergencyCallVoiceLoopManager *)self invalidate];
  v3.receiver = self;
  v3.super_class = SOSEmergencyCallVoiceLoopManager;
  [(SOSEmergencyCallVoiceLoopManager *)&v3 dealloc];
}

- (void)startLoopPlayback
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sos_voiceloop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[SOSEmergencyCallVoiceLoopManager startLoopPlayback]";
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  _activeCallSupportsDTMF = [objc_opt_class() _activeCallSupportsDTMF];
  v5 = [SOSVoiceLoopAnalyticsReporter alloc];
  reason = self->_reason;
  voiceLanguage = [(SOSEmergencyCallVoiceLoopManager *)self voiceLanguage];
  v8 = [(SOSVoiceLoopAnalyticsReporter *)v5 initWithReason:reason language:voiceLanguage dtmfAvailable:_activeCallSupportsDTMF];
  loopAnalyticsReporter = self->_loopAnalyticsReporter;
  self->_loopAnalyticsReporter = v8;

  [(SOSEmergencyCallVoiceLoopManager *)self _startLoopPlayback];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopLoopPlayback
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = sos_voiceloop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SOSEmergencyCallVoiceLoopManager stopLoopPlayback]";
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  if ([(SOSEmergencyCallVoiceLoopManager *)self playbackState]== 100)
  {
    [(SOSVoiceLoopAnalyticsReporter *)self->_loopAnalyticsReporter reportVoiceLoopWillStopLocally];
    [(SOSEmergencyCallVoiceLoopManager *)self _stopMessagePlayback];
  }

  else
  {
    v4 = sos_voiceloop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SOSEmergencyCallVoiceLoopManager *)v4 stopLoopPlayback];
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = sos_voiceloop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[SOSEmergencyCallVoiceLoopManager invalidate]";
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  [(SOSVoiceLoopAnalyticsReporter *)self->_loopAnalyticsReporter reportVoiceLoopWillTerminate];
  loopAnalyticsReporter = self->_loopAnalyticsReporter;
  self->_loopAnalyticsReporter = 0;

  [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
  locationManager = self->_locationManager;
  self->_locationManager = 0;

  [(SOSEmergencyCallVoiceLoopManager *)self _stopMessagePlayback];
  [(SOSEmergencyCallVoiceLoopManager *)self _stopListeningForRemoteControl];
  v6 = *MEMORY[0x277D85DE8];
}

- (SOSEmergencyCallVoiceLoopManager)initWithReason:(int64_t)reason playbackMode:(int64_t)mode
{
  v5 = [(SOSEmergencyCallVoiceLoopManager *)self initWithReason:reason];
  v6 = v5;
  if (v5)
  {
    [(SOSEmergencyCallVoiceLoopManager *)v5 setTestMode:mode == 1];
  }

  return v6;
}

- (void)startMessagePlayback
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = sos_voiceloop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SOSEmergencyCallVoiceLoopManager startMessagePlayback]";
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(SOSEmergencyCallVoiceLoopManager *)self startLoopPlayback];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)stopMessagePlayback
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = sos_voiceloop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SOSEmergencyCallVoiceLoopManager stopMessagePlayback]";
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(SOSEmergencyCallVoiceLoopManager *)self stopLoopPlayback];
  v4 = *MEMORY[0x277D85DE8];
}

- (SOSVoiceUtterer)uplinkVoiceUtterer
{
  if (!self->_uplinkVoiceUtterer && [(SOSEmergencyCallVoiceLoopManager *)self outputToTelephonyUplink])
  {
    v3 = objc_alloc_init(SOSVoiceUtterer);
    uplinkVoiceUtterer = self->_uplinkVoiceUtterer;
    self->_uplinkVoiceUtterer = v3;

    [(SOSVoiceUtterer *)self->_uplinkVoiceUtterer setDelegate:self];
    [(SOSVoiceUtterer *)self->_uplinkVoiceUtterer setMixToTelephonyUplink:1];
  }

  v5 = self->_uplinkVoiceUtterer;

  return v5;
}

- (BOOL)outputToTelephonyUplink
{
  testMode = [(SOSEmergencyCallVoiceLoopManager *)self testMode];
  if (testMode)
  {
    v3 = sos_voiceloop_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "SOSEmergencyCallVoiceLoopManager testMode == YES, => outputToTelephonyUplink = NO", v5, 2u);
    }
  }

  return !testMode;
}

- (SOSVoiceUtterer)localVoiceUtterer
{
  if (!self->_localVoiceUtterer && [(SOSEmergencyCallVoiceLoopManager *)self outputToTelephonyUplink])
  {
    v3 = objc_alloc_init(SOSVoiceUtterer);
    localVoiceUtterer = self->_localVoiceUtterer;
    self->_localVoiceUtterer = v3;

    [(SOSVoiceUtterer *)self->_localVoiceUtterer setDelegate:self];
    [(SOSVoiceUtterer *)self->_localVoiceUtterer setMixToTelephonyUplink:0];
  }

  v5 = self->_localVoiceUtterer;

  return v5;
}

- (void)speakUtteranceVariants:(id)variants withPlaybackState:(unint64_t)state
{
  v24 = *MEMORY[0x277D85DE8];
  variantsCopy = variants;
  v7 = sos_voiceloop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v18 = 136315650;
    stateCopy2 = "[SOSEmergencyCallVoiceLoopManager speakUtteranceVariants:withPlaybackState:]";
    v20 = 2048;
    stateCopy = state;
    v22 = 2112;
    v23 = variantsCopy;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_INFO, "%s - newPlaybackState:%tu, utteranceVariants:%@", &v18, 0x20u);
  }

  v8 = [SOSUtilities BOOLOverrideForDefaultsKey:@"debug.voiceloop.audio.playRemoteAsLocal" defaultValue:0];
  v9 = [SOSUtilities BOOLOverrideForDefaultsKey:@"debug.voiceloop.audio.playLocalAsRemote" defaultValue:0];
  if (v8)
  {
    [variantsCopy remoteUtterances];
  }

  else
  {
    [variantsCopy localUtterances];
  }
  v10 = ;
  if (v9)
  {
    [variantsCopy localUtterances];
  }

  else
  {
    [variantsCopy remoteUtterances];
  }
  v11 = ;
  v12 = [v10 count];
  if ([(SOSEmergencyCallVoiceLoopManager *)self outputToTelephonyUplink])
  {
    v13 = [v11 count] != 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = sos_voiceloop_log();
  uplinkVoiceUtterer = v14;
  if (!v12 && !v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SOSEmergencyCallVoiceLoopManager speakUtteranceVariants:withPlaybackState:];
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134217984;
    stateCopy2 = state;
    _os_log_impl(&dword_264323000, uplinkVoiceUtterer, OS_LOG_TYPE_DEFAULT, "speakUtteranceVariants - setting newPlaybackState:%tu", &v18, 0xCu);
  }

  [(SOSEmergencyCallVoiceLoopManager *)self setPlaybackState:state];
  if (v12)
  {
    localVoiceUtterer = [(SOSEmergencyCallVoiceLoopManager *)self localVoiceUtterer];
    [localVoiceUtterer speakUtterances:v10];
  }

  if (v13)
  {
    uplinkVoiceUtterer = [(SOSEmergencyCallVoiceLoopManager *)self uplinkVoiceUtterer];
    [uplinkVoiceUtterer speakUtterances:v11];
LABEL_22:
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isSpeaking
{
  if ([(SOSVoiceUtterer *)self->_localVoiceUtterer isSpeaking])
  {
    return 1;
  }

  uplinkVoiceUtterer = self->_uplinkVoiceUtterer;

  return [(SOSVoiceUtterer *)uplinkVoiceUtterer isSpeaking];
}

- (void)_stopMessagePlayback
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = sos_voiceloop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SOSEmergencyCallVoiceLoopManager _stopMessagePlayback]";
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(SOSVoiceUtterer *)self->_localVoiceUtterer stopSpeaking];
  [(SOSVoiceUtterer *)self->_uplinkVoiceUtterer stopSpeaking];
  [(SOSEmergencyCallVoiceLoopManager *)self setPlaybackState:200];
  [(NSTimer *)self->_messageRepeatTimer invalidate];
  messageRepeatTimer = self->_messageRepeatTimer;
  self->_messageRepeatTimer = 0;

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setPlaybackState:(unint64_t)state
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_playbackState != state)
  {
    v5 = sos_voiceloop_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      playbackState = self->_playbackState;
      v11 = 134218240;
      v12 = playbackState;
      v13 = 2048;
      stateCopy = state;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "setPlaybackState: %tu => %tu", &v11, 0x16u);
    }

    v7 = self->_playbackState;
    self->_playbackState = state;
    loopAnalyticsReporter = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
    [loopAnalyticsReporter reportVoiceLoopPlaybackStateChanged:state];

    if (state == 100)
    {
      delegate = [(SOSEmergencyCallVoiceLoopManager *)self delegate];
      [delegate voiceLoopManagerDidStartLoopPlayback:self];
LABEL_8:

      goto LABEL_9;
    }

    if (v7 == 100)
    {
      delegate = [(SOSEmergencyCallVoiceLoopManager *)self delegate];
      [delegate voiceLoopManagerDidStopLoopPlayback:self];
      goto LABEL_8;
    }
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setPlayingLoopIndex:(unint64_t)index
{
  loopAnalyticsReporter = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
  [loopAnalyticsReporter reportVoiceLoopIndexChanged:index];

  if (self->_playingLoopIndex != index)
  {
    self->_playingLoopIndex = index;
  }
}

- (void)_startLoopPlayback
{
  LODWORD(v2) = 1.0;
  [(SOSEmergencyCallVoiceLoopManager *)self setLoopVolume:v2];
  [(SOSEmergencyCallVoiceLoopManager *)self setPlayingLoopIndex:0];

  [(SOSEmergencyCallVoiceLoopManager *)self _speakLoopMessage];
}

- (void)_speakLoopMessage
{
  v10 = *MEMORY[0x277D85DE8];
  [(SOSEmergencyCallVoiceLoopManager *)self setPlayingLoopIndex:[(SOSEmergencyCallVoiceLoopManager *)self playingLoopIndex]+ 1];
  v3 = sos_voiceloop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SOSEmergencyCallVoiceLoopManager _speakLoopMessage]";
    v8 = 2048;
    playingLoopIndex = [(SOSEmergencyCallVoiceLoopManager *)self playingLoopIndex];
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s - Playing SOS loop #: %lu", &v6, 0x16u);
  }

  v4 = [(SOSEmergencyCallVoiceLoopManager *)self emergencyDescriptorUtteranceVariantsForRepeatVariant:0];
  [(SOSEmergencyCallVoiceLoopManager *)self speakUtteranceVariants:v4 withPlaybackState:100];

  v5 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_loopPhaseFromUtteranceIndex:(unint64_t)index
{
  if (index < 3)
  {
    return 100 * index + 100;
  }

  v4 = sos_voiceloop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [SOSEmergencyCallVoiceLoopManager _loopPhaseFromUtteranceIndex:];
  }

  return 0;
}

+ (id)_messageKeyForReason:(int64_t)reason shortVersion:(BOOL)version
{
  versionCopy = version;
  if (reason == 1)
  {
    v5 = @"NEWTON_WATCH";
  }

  else if (reason == 2)
  {
    v5 = @"KAPPA_PHONE";
  }

  else
  {
    v6 = sos_voiceloop_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[SOSEmergencyCallVoiceLoopManager _messageKeyForReason:shortVersion:];
    }

    v5 = 0;
  }

  v7 = @"LOOP";
  if (versionCopy)
  {
    v7 = @"BRIEF";
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"SOS_VOICELOOP_SPEECH_%@_INTRO_%@", v7, v5];

  return v8;
}

- (void)voiceUtterer:(id)utterer willStartSpeakingUtteranceAtIndex:(unint64_t)index fromUtterances:(id)utterances
{
  v7 = [(SOSEmergencyCallVoiceLoopManager *)self playbackState:utterer];
  loopAnalyticsReporter = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
  if (v7 == 100)
  {
    v8 = [(SOSEmergencyCallVoiceLoopManager *)self _loopPhaseFromUtteranceIndex:index];
  }

  else
  {
    v8 = 0;
  }

  [loopAnalyticsReporter reportVoiceLoopLoopPhaseChanged:v8];
}

- (void)voiceUtterer:(id)utterer didFinishSpeakingUtterances:(id)utterances
{
  v26 = *MEMORY[0x277D85DE8];
  uttererCopy = utterer;
  if ([(SOSEmergencyCallVoiceLoopManager *)self _isSpeaking])
  {
    v6 = sos_voiceloop_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      localVoiceUtterer = self->_localVoiceUtterer;
      v8 = localVoiceUtterer == uttererCopy;
      isSpeaking = [(SOSVoiceUtterer *)localVoiceUtterer isSpeaking];
      uplinkVoiceUtterer = self->_uplinkVoiceUtterer;
      v20 = 67109888;
      *v21 = v8;
      *&v21[4] = 1024;
      *&v21[6] = isSpeaking;
      v22 = 1024;
      v23 = uplinkVoiceUtterer == uttererCopy;
      v24 = 1024;
      isSpeaking2 = [(SOSVoiceUtterer *)uplinkVoiceUtterer isSpeaking];
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "didFinishSpeakingUtterances - !doneSpeaking; NOP until notified after doneSpeaking (isLocalUtterer:%{BOOL}d localUttererSpeaking:%{BOOL}d isRemoteUtterer:%{BOOL}d remoteUttererSpeaking:%{BOOL}d", &v20, 0x1Au);
    }

LABEL_10:

    goto LABEL_14;
  }

  playbackState = [(SOSEmergencyCallVoiceLoopManager *)self playbackState];
  v12 = sos_voiceloop_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (playbackState == 100)
  {
    if (v13)
    {
      v20 = 134217984;
      *v21 = [(SOSEmergencyCallVoiceLoopManager *)self playingLoopIndex];
      _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "didFinishSpeakingUtterances - Finished spoken portion of loop: %lu", &v20, 0xCu);
    }

    loopAnalyticsReporter = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
    [loopAnalyticsReporter reportVoiceLoopLoopPhaseChanged:10000];

    v15 = sos_voiceloop_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_264323000, v15, OS_LOG_TYPE_DEFAULT, "didFinishSpeakingUtterances - More loops to come; Creating new timer", &v20, 2u);
    }

    v16 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__speakLoopMessage selector:0 userInfo:0 repeats:5.0];
    messageRepeatTimer = self->_messageRepeatTimer;
    self->_messageRepeatTimer = v16;

    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [currentRunLoop addTimer:self->_messageRepeatTimer forMode:*MEMORY[0x277CBE738]];

    v6 = [SOSUtilities numberOverrideForDefaultsKey:@"debug.voiceloop.loop.subsequent.volume" defaultValue:&unk_2875D2CC8];
    [v6 floatValue];
    [(SOSEmergencyCallVoiceLoopManager *)self setLoopVolume:?];
    goto LABEL_10;
  }

  if (v13)
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "didFinishSpeakingUtterances - !VoiceLoopPlaybackStatePlayingLoop - Done playing", &v20, 2u);
  }

  [(SOSEmergencyCallVoiceLoopManager *)self setPlaybackState:200];
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)shiftedLocationIfApplicable:(id)applicable withcompletion:(id)withcompletion
{
  v31 = *MEMORY[0x277D85DE8];
  applicableCopy = applicable;
  withcompletionCopy = withcompletion;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v8 = get_MKLocationShifterClass_softClass_0;
  v27 = get_MKLocationShifterClass_softClass_0;
  if (!get_MKLocationShifterClass_softClass_0)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __get_MKLocationShifterClass_block_invoke_0;
    v29 = &unk_279B53140;
    v30 = &v24;
    __get_MKLocationShifterClass_block_invoke_0(buf);
    v8 = v25[3];
  }

  v9 = v8;
  _Block_object_dispose(&v24, 8);
  v10 = objc_alloc_init(v8);
  [(SOSEmergencyCallVoiceLoopManager *)self setLocationShifter:v10];

  v11 = sos_voiceloop_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    locationShifter = [(SOSEmergencyCallVoiceLoopManager *)self locationShifter];
    locationShifter2 = [(SOSEmergencyCallVoiceLoopManager *)self locationShifter];
    v14 = [objc_opt_class() isLocationShiftRequiredForLocation:applicableCopy];
    *buf = 138412546;
    *&buf[4] = locationShifter;
    *&buf[12] = 1024;
    *&buf[14] = v14;
    _os_log_impl(&dword_264323000, v11, OS_LOG_TYPE_DEFAULT, "Location shifter: %@ - isLocationShiftRequiredForLocation: %{BOOL}d", buf, 0x12u);
  }

  if (applicableCopy && (-[SOSEmergencyCallVoiceLoopManager locationShifter](self, "locationShifter"), (v15 = objc_claimAutoreleasedReturnValue()) != 0) && (-[SOSEmergencyCallVoiceLoopManager locationShifter](self, "locationShifter"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [objc_opt_class() isLocationShiftRequiredForLocation:applicableCopy], v16, v15, v17))
  {
    objc_initWeak(buf, self);
    v18 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__SOSEmergencyCallVoiceLoopManager_shiftedLocationIfApplicable_withcompletion___block_invoke;
    block[3] = &unk_279B53D30;
    v22 = withcompletionCopy;
    objc_copyWeak(&v23, buf);
    v21 = applicableCopy;
    dispatch_async(v18, block);

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    (*(withcompletionCopy + 2))(withcompletionCopy, applicableCopy);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __79__SOSEmergencyCallVoiceLoopManager_shiftedLocationIfApplicable_withcompletion___block_invoke(uint64_t a1)
{
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v2 = dispatch_semaphore_create(0);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__SOSEmergencyCallVoiceLoopManager_shiftedLocationIfApplicable_withcompletion___block_invoke_2;
  v19[3] = &unk_279B53A68;
  v21 = v22;
  v20 = *(a1 + 40);
  v3 = MEMORY[0x266735F90](v19);
  v4 = sos_voiceloop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOS location shift started", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained locationShifter];
  v7 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__SOSEmergencyCallVoiceLoopManager_shiftedLocationIfApplicable_withcompletion___block_invoke_114;
  v14[3] = &unk_279B53A90;
  v15 = v7;
  v8 = v3;
  v17 = v8;
  v9 = v2;
  v16 = v9;
  v10 = MEMORY[0x277D85CD0];
  v11 = MEMORY[0x277D85CD0];
  [v6 shiftLocation:v15 withCompletionHandler:v14 callbackQueue:v10];

  v12 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v9, v12))
  {
    v13 = sos_voiceloop_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v13, OS_LOG_TYPE_DEFAULT, "SOS location shift timed out.", buf, 2u);
    }

    (*(v8 + 2))(v8, *(a1 + 32));
  }

  _Block_object_dispose(v22, 8);
}

void __79__SOSEmergencyCallVoiceLoopManager_shiftedLocationIfApplicable_withcompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SOSEmergencyCallVoiceLoopManager_shiftedLocationIfApplicable_withcompletion___block_invoke_3;
  block[3] = &unk_279B53A40;
  v6 = *(a1 + 32);
  v4 = v6;
  v9 = v6;
  v8 = v3;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__79__SOSEmergencyCallVoiceLoopManager_shiftedLocationIfApplicable_withcompletion___block_invoke_3(void *result)
{
  v1 = *(result[6] + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(result[5] + 16))(result[5], result[4]);
  }

  return result;
}

void __79__SOSEmergencyCallVoiceLoopManager_shiftedLocationIfApplicable_withcompletion___block_invoke_114(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sos_voiceloop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOS location shift completed. Shifted from %@ to %@", &v7, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  dispatch_semaphore_signal(*(a1 + 40));

  v6 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  v6 = sos_voiceloop_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "Received location update", v8, 2u);
  }

  lastObject = [locationsCopy lastObject];

  [(SOSEmergencyCallVoiceLoopManager *)self _updateLocation:lastObject];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v9 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = sos_voiceloop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = errorCopy;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "locationManager:didFailWithError:%{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (CLLocation)locationToSynthesize
{
  if ([SOSUtilities BOOLOverrideForDefaultsKey:@"debug.voiceloop.demo.fakeLocation" defaultValue:0])
  {
    _overrideLocation = [(SOSEmergencyCallVoiceLoopManager *)self _overrideLocation];
  }

  else
  {
    _overrideLocation = self->_locationToSynthesize;
  }

  return _overrideLocation;
}

- (void)_updateLocation:(id)location
{
  locationCopy = location;
  if (!locationCopy)
  {
    v14 = sos_voiceloop_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SOSEmergencyCallVoiceLoopManager _updateLocation:v14];
    }

    goto LABEL_11;
  }

  locationToSynthesize = self->_locationToSynthesize;
  if (locationToSynthesize)
  {
    [(CLLocation *)locationToSynthesize horizontalAccuracy];
    v7 = v6;
    [locationCopy horizontalAccuracy];
    if (v7 <= v8 || ([locationCopy horizontalAccuracy], v9 <= 0.0))
    {
      timestamp = [locationCopy timestamp];
      timestamp2 = [(CLLocation *)self->_locationToSynthesize timestamp];
      [timestamp timeIntervalSinceDate:timestamp2];
      v13 = v12;

      if (v13 <= 5.0)
      {
        v14 = sos_voiceloop_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [SOSEmergencyCallVoiceLoopManager _updateLocation:];
        }

LABEL_11:

        goto LABEL_12;
      }
    }
  }

  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__SOSEmergencyCallVoiceLoopManager__updateLocation___block_invoke;
  v15[3] = &unk_279B53D58;
  objc_copyWeak(&v16, &location);
  [(SOSEmergencyCallVoiceLoopManager *)self shiftedLocationIfApplicable:locationCopy withcompletion:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
LABEL_12:
}

void __52__SOSEmergencyCallVoiceLoopManager__updateLocation___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = sos_voiceloop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "Updating location: %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLocationToSynthesize:v3];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_coordinatesStringFromLocation:(id)location shortVersion:(BOOL)version
{
  versionCopy = version;
  v35 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v7 = sos_voiceloop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = locationCopy;
    v33 = 1024;
    v34 = versionCopy;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "Creating location string from location:%@ shortVersion:%{BOOL}d", buf, 0x12u);
  }

  if (locationCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v8 setNumberStyle:1];
    [v8 setMaximumFractionDigits:4];
    voiceLanguage = [(SOSEmergencyCallVoiceLoopManager *)self voiceLanguage];
    if (voiceLanguage)
    {
      [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:voiceLanguage];
    }

    else
    {
      [MEMORY[0x277CBEAF8] currentLocale];
    }
    v11 = ;
    [v8 setLocale:v11];
    v12 = sos_voiceloop_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = v11;
      _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "Setting locale %{public}@ for number formatter", buf, 0xCu);
    }

    v13 = MEMORY[0x277CCABB0];
    [locationCopy coordinate];
    v14 = [v13 numberWithDouble:?];
    v15 = [v8 stringFromNumber:v14];

    v16 = MEMORY[0x277CCABB0];
    [locationCopy coordinate];
    v18 = [v16 numberWithDouble:v17];
    v19 = [v8 stringFromNumber:v18];

    v20 = MEMORY[0x277CCABB0];
    [locationCopy horizontalAccuracy];
    LODWORD(v22) = vcvtpd_s64_f64(v21);
    v23 = [v20 numberWithInt:v22];
    v24 = [v8 stringFromNumber:v23];

    if (versionCopy)
    {
      v25 = @"SOS_VOICELOOP_SPEECH_BRIEF_LOCATION";
    }

    else
    {
      v25 = @"SOS_VOICELOOP_SPEECH_LOOP_LOCATION";
    }

    v26 = MEMORY[0x277CCACA8];
    v27 = [(SOSEmergencyCallVoiceLoopManager *)self localizedStringForKey:v25];
    v10 = [v26 stringWithFormat:v27, v15, v19, v24];
  }

  else
  {
    v10 = 0;
  }

  v28 = sos_voiceloop_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v10;
    _os_log_impl(&dword_264323000, v28, OS_LOG_TYPE_DEFAULT, "New location string: %@", buf, 0xCu);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)voiceLanguage
{
  v16 = *MEMORY[0x277D85DE8];
  if (![(NSString *)self->_voiceLanguage length])
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.SOS"];
    v4 = [v3 valueForKey:@"SimulateActiveCountry"];
    if (v4)
    {
      v5 = sos_voiceloop_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = v4;
        _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "Setting to TEST country code: %{public}@", &v14, 0xCu);
      }

      v6 = v4;
    }

    else
    {
      v6 = CPPhoneNumberCopyNetworkCountryCode();
    }

    v7 = v6;
    v8 = sos_voiceloop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = v7;
      _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "Active country code: %{public}@", &v14, 0xCu);
    }

    v9 = [(SOSEmergencyCallVoiceLoopManager *)self _languageToUseInVoiceLoopForCountryCode:v7];
    voiceLanguage = self->_voiceLanguage;
    self->_voiceLanguage = v9;
  }

  v11 = self->_voiceLanguage;
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_languageToUseInVoiceLoopForCountryCode:(id)code
{
  v14 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v5 = sos_voiceloop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = codeCopy;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "_languageToUseInVoiceLoopForCountryCode:%{public}@", &v12, 0xCu);
  }

  if ([(__CFString *)codeCopy isEqualToString:@"IN"])
  {
    v6 = sos_voiceloop_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = @"en_GB";
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "Forcing language to: %{public}@", &v12, 0xCu);
    }

    v7 = @"en_GB";
  }

  else
  {
    v7 = [(SOSEmergencyCallVoiceLoopManager *)self _preferredVoiceLanguageForCountryCode:codeCopy];
  }

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"en_GB";
  }

  v9 = v8;

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_preferredVoiceLanguageForCountryCode:(id)code
{
  v41 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v3 = sos_voiceloop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = codeCopy;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "_preferredVoiceLanguageForCountryCode:%{public}@", &buf, 0xCu);
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v4 = getIntlUtilityClass_softClass;
  v34 = getIntlUtilityClass_softClass;
  if (!getIntlUtilityClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v38 = __getIntlUtilityClass_block_invoke;
    v39 = &unk_279B53140;
    v40 = &v31;
    __getIntlUtilityClass_block_invoke(&buf);
    v4 = v32[3];
  }

  v5 = v4;
  _Block_object_dispose(&v31, 8);
  v6 = [v4 preferredLanguagesForRegion:codeCopy];
  v7 = sos_voiceloop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "Preferred filtered languages retrieved: %{public}@", &buf, 0xCu);
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  localizations = [v8 localizations];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v10)
  {
    v12 = *v28;
    *&v11 = 138543362;
    v24 = v11;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [MEMORY[0x277CBEAF8] languageFromLanguage:*(*(&v27 + 1) + 8 * i) byReplacingRegion:{codeCopy, v24}];
        v15 = sos_voiceloop_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = v24;
          *(&buf + 4) = v14;
          _os_log_impl(&dword_264323000, v15, OS_LOG_TYPE_DEFAULT, "Language with region: %{public}@", &buf, 0xCu);
        }

        v16 = MEMORY[0x277CCA8D8];
        v35 = v14;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
        v18 = [v16 preferredLocalizationsFromArray:localizations forPreferences:v17];
        firstObject = [v18 firstObject];

        v20 = [MEMORY[0x277CB84A8] voiceWithLanguage:firstObject];

        if (firstObject && v20)
        {
          v21 = sos_voiceloop_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = v24;
            *(&buf + 4) = firstObject;
            _os_log_impl(&dword_264323000, v21, OS_LOG_TYPE_DEFAULT, "Language selected for speaking: %{public}@", &buf, 0xCu);
          }

          goto LABEL_22;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  firstObject = 0;
LABEL_22:

  v22 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  voiceLanguage = [(SOSEmergencyCallVoiceLoopManager *)self voiceLanguage];
  v6 = [SOSVoiceUtterance localizedStringForKey:keyCopy forLocalization:voiceLanguage];

  return v6;
}

- (void)callCenter:(id)center reportedCall:(id)call receivedDTMFUpdate:(id)update
{
  v16 = *MEMORY[0x277D85DE8];
  callCopy = call;
  updateCopy = update;
  v9 = sos_voiceloop_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = updateCopy;
    v14 = 2112;
    v15 = callCopy;
    _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "receivedDTMFUpdate:%{public}@ call:%@", &v12, 0x16u);
  }

  digits = [updateCopy digits];
  [(SOSEmergencyCallVoiceLoopManager *)self _handleRemoteDTMFDigits:digits];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)callSupportsRemoteControl
{
  _activeCallSupportsDTMF = [objc_opt_class() _activeCallSupportsDTMF];
  [(SOSVoiceLoopAnalyticsReporter *)self->_loopAnalyticsReporter reportVoiceLoopSupportsDTMF:_activeCallSupportsDTMF];

  return [SOSUtilities BOOLOverrideForDefaultsKey:@"debug.voiceloop.call.supportsDTMF" defaultValue:_activeCallSupportsDTMF];
}

+ (BOOL)_activeCallSupportsDTMF
{
  _activeCallPreferringEmergencyOrSOS = [objc_opt_class() _activeCallPreferringEmergencyOrSOS];
  supportsDTMFUpdates = [_activeCallPreferringEmergencyOrSOS supportsDTMFUpdates];

  return supportsDTMFUpdates;
}

+ (id)_activeCallPreferringEmergencyOrSOS
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  currentCalls = [mEMORY[0x277D6EDF8] currentCalls];
  v5 = [v2 initWithArray:currentCalls];

  mEMORY[0x277D6EDF8]2 = [MEMORY[0x277D6EDF8] sharedInstance];
  callsOnDefaultPairedDevice = [mEMORY[0x277D6EDF8]2 callsOnDefaultPairedDevice];
  [v5 addObjectsFromArray:callsOnDefaultPairedDevice];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (v14)
        {
          if (([*(*(&v18 + 1) + 8 * i) isEmergency] & 1) != 0 || objc_msgSend(v14, "isSOS"))
          {
            v15 = v14;

            v11 = v15;
            goto LABEL_16;
          }

          if (!v11)
          {
            v11 = v14;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_16:

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_startListeningForRemoteControl
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  [mEMORY[0x277D6EDF8] addDelegate:self queue:MEMORY[0x277D85CD0]];
}

- (void)_stopListeningForRemoteControl
{
  mEMORY[0x277D6EDF8] = [MEMORY[0x277D6EDF8] sharedInstance];
  [mEMORY[0x277D6EDF8] removeDelegate:self];
}

+ (id)_validDTMFDigits
{
  if (_validDTMFDigits_onceToken != -1)
  {
    +[SOSEmergencyCallVoiceLoopManager _validDTMFDigits];
  }

  v3 = _validDTMFDigits_validDTMFDigits;

  return v3;
}

uint64_t __52__SOSEmergencyCallVoiceLoopManager__validDTMFDigits__block_invoke()
{
  _validDTMFDigits_validDTMFDigits = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789#*"];

  return MEMORY[0x2821F96F8]();
}

- (void)_handleRemoteDTMFDigits:(id)digits
{
  digitsCopy = digits;
  if ([digitsCopy length] == 1)
  {
    v5 = [digitsCopy characterAtIndex:0];
    _validDTMFDigits = [objc_opt_class() _validDTMFDigits];
    v7 = [digitsCopy rangeOfCharacterFromSet:_validDTMFDigits];

    if (!v7)
    {
      [(SOSEmergencyCallVoiceLoopManager *)self _handleDTMFDigit:v5];
      goto LABEL_7;
    }

    loopAnalyticsReporter = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
    v9 = v5;
    [loopAnalyticsReporter reportVoiceLoopDidStartHandlingDTMFDigitReceived:v9];

    loopAnalyticsReporter2 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
    [loopAnalyticsReporter2 reportVoiceLoopDidFinishHandlingDTMFDigitReceived:v9];
  }

  v11 = sos_voiceloop_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [SOSEmergencyCallVoiceLoopManager _handleRemoteDTMFDigits:];
  }

LABEL_7:
}

- (void)_handleDTMFMessageStopCommand
{
  v16 = *MEMORY[0x277D85DE8];
  loopAnalyticsReporter = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
  [loopAnalyticsReporter reportVoiceLoopDidReceiveCommand:100];

  v11 = 10000;
  playbackState = [(SOSEmergencyCallVoiceLoopManager *)self playbackState];
  v5 = [(SOSEmergencyCallVoiceLoopManager *)self stopConfirmationUtterancesForPlaybackState:playbackState remoteVariant:0 verbalizedActionOut:0];
  v6 = [(SOSEmergencyCallVoiceLoopManager *)self stopConfirmationUtterancesForPlaybackState:playbackState remoteVariant:1 verbalizedActionOut:&v11];
  v7 = [SOSVoiceUtteranceVariants utteranceVariantsWithLocalUtterances:v5 remoteUtterances:v6];

  v8 = sos_voiceloop_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v13 = playbackState;
    v14 = 2048;
    v15 = v11;
    _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "_handleDTMFMessageStopCommand -- Stopping from playbackState: %tu (action: %tu)", buf, 0x16u);
  }

  loopAnalyticsReporter2 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
  [loopAnalyticsReporter2 reportVoiceLoopWillPerformAction:v11];

  [(SOSEmergencyCallVoiceLoopManager *)self speakResponseUtteranceVariants:v7];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleDTMFMessageRepeatCommand
{
  loopAnalyticsReporter = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
  [loopAnalyticsReporter reportVoiceLoopDidReceiveCommand:200];

  playbackState = [(SOSEmergencyCallVoiceLoopManager *)self playbackState];
  v5 = sos_voiceloop_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (playbackState == 100)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "_handleDTMFMessageRepeatCommand - Received repeat, but not stopped; ignoring", buf, 2u);
    }

    loopAnalyticsReporter2 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
    [loopAnalyticsReporter2 reportVoiceLoopWillPerformAction:10000];
  }

  else
  {
    if (v6)
    {
      *v9 = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "_handleDTMFMessageRepeatCommand - Repeating", v9, 2u);
    }

    loopAnalyticsReporter3 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
    [loopAnalyticsReporter3 reportVoiceLoopWillPerformAction:200];

    [(SOSEmergencyCallVoiceLoopManager *)self _stopMessagePlayback];
    loopAnalyticsReporter2 = [(SOSEmergencyCallVoiceLoopManager *)self emergencyDescriptorUtteranceVariantsForRepeatVariant:1];
    [(SOSEmergencyCallVoiceLoopManager *)self speakUtteranceVariants:loopAnalyticsReporter2 withPlaybackState:400];
  }
}

- (void)_handleDTMFMessageResumeCommand
{
  loopAnalyticsReporter = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
  [loopAnalyticsReporter reportVoiceLoopDidReceiveCommand:5000];

  playbackState = [(SOSEmergencyCallVoiceLoopManager *)self playbackState];
  v5 = sos_voiceloop_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (playbackState == 100)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "_handleDTMFMessageResumeCommand - Received resume, but not stopped; ignoring", buf, 2u);
    }

    loopAnalyticsReporter2 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
    [loopAnalyticsReporter2 reportVoiceLoopWillPerformAction:10000];
  }

  else
  {
    if (v6)
    {
      *v9 = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "_handleDTMFMessageResumeCommand - Resuming", v9, 2u);
    }

    loopAnalyticsReporter3 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
    [loopAnalyticsReporter3 reportVoiceLoopWillPerformAction:5000];

    [(SOSEmergencyCallVoiceLoopManager *)self _stopMessagePlayback];
    [(SOSEmergencyCallVoiceLoopManager *)self _startLoopPlayback];
  }
}

- (id)stopConfirmationUtterancesForPlaybackState:(unint64_t)state remoteVariant:(BOOL)variant verbalizedActionOut:(unint64_t *)out
{
  variantCopy = variant;
  v36 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v10 = 10000;
  if (state > 299)
  {
    if (state == 300 || state == 400)
    {
      v10 = 300;
    }
  }

  else if (state == 100)
  {
    if (variantCopy)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [(SOSEmergencyCallVoiceLoopManager *)self localizedStringForKey:@"SOS_VOICELOOP_SPEECH_LOOP_STOPPED_HOW_TO_REPEAT"];
      v16 = [v14 stringWithFormat:v15, 49];
    }

    else
    {
      v16 = [(SOSEmergencyCallVoiceLoopManager *)self localizedStringForKey:@"SOS_VOICELOOP_SPEECH_LOOP_STOPPED_REMOTELY"];
    }

    v20 = [SOSVoiceUtterance alloc];
    voiceLanguage = [(SOSEmergencyCallVoiceLoopManager *)self voiceLanguage];
    v22 = [(SOSVoiceUtterance *)v20 initWithLocalizedMessageString:v16 voiceLanguage:voiceLanguage];
    [array addObject:v22];

    v10 = 100;
  }

  else if (state == 200)
  {
    if (variantCopy)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [(SOSEmergencyCallVoiceLoopManager *)self localizedStringForKey:@"SOS_VOICELOOP_SPEECH_LOOP_STOPPED_HOW_TO_REPEAT"];
      v13 = [v11 stringWithFormat:v12, 49];
    }

    else
    {
      v13 = 0;
    }

    v17 = [SOSVoiceUtterance alloc];
    voiceLanguage2 = [(SOSEmergencyCallVoiceLoopManager *)self voiceLanguage];
    v19 = [(SOSVoiceUtterance *)v17 initWithLocalizedMessageString:v13 voiceLanguage:voiceLanguage2];
    [array addObject:v19];

    v10 = 400;
  }

  v23 = sos_voiceloop_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 134218754;
    stateCopy = state;
    v30 = 1024;
    v31 = variantCopy;
    v32 = 2114;
    v33 = array;
    v34 = 2048;
    v35 = v10;
    _os_log_impl(&dword_264323000, v23, OS_LOG_TYPE_INFO, "stopConfirmationUtterancesForPlaybackState:%tu remoteVariant:%{BOOL}d => %{public}@ (action: %tu)", buf, 0x26u);
  }

  if (out)
  {
    *out = v10;
  }

  if ([array count])
  {
    v24 = array;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  v26 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)speakResponseUtteranceVariants:(id)variants
{
  v9 = *MEMORY[0x277D85DE8];
  variantsCopy = variants;
  v5 = sos_voiceloop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = variantsCopy;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "speakResponseUtteranceVariants:%{public}@", &v7, 0xCu);
  }

  [(SOSEmergencyCallVoiceLoopManager *)self _stopMessagePlayback];
  [(SOSEmergencyCallVoiceLoopManager *)self speakUtteranceVariants:variantsCopy withPlaybackState:300];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_overrideLocation
{
  v2 = [SOSUtilities numberOverrideForDefaultsKey:@"debug.voiceloop.demo.fakeLocation.lat" defaultValue:&unk_2875D2B60];
  [v2 doubleValue];
  v4 = v3;

  v5 = [SOSUtilities numberOverrideForDefaultsKey:@"debug.voiceloop.demo.fakeLocation.long" defaultValue:&unk_2875D2B60];
  [v5 doubleValue];
  v7 = v6;

  v8 = [SOSUtilities numberOverrideForDefaultsKey:@"debug.voiceloop.demo.fakeLocation.elev" defaultValue:&unk_2875D2B60];
  [v8 doubleValue];
  v10 = v9;

  v11 = [SOSUtilities numberOverrideForDefaultsKey:@"debug.voiceloop.demo.fakeLocation.accuracy" defaultValue:&unk_2875D2B78];
  [v11 doubleValue];
  v13 = v12;

  if (v10 == 0.0 && v7 == 0.0 && v4 == 0.0)
  {
    v16 = @"ApplePark";
  }

  else
  {
    v16 = &stru_2875C9CD8;
  }

  v17 = [SOSUtilities stringOverrideForDefaultsKey:@"debug.voiceloop.demo.fakeLocation.poi" defaultValue:v16];
  if ([v17 isEqualToIgnoringCase:@"ApplePark"])
  {
    v7 = -122.01;
    v18 = 37.3353;
  }

  else
  {
    v18 = v4;
  }

  v19 = [v17 isEqualToIgnoringCase:@"NENA2024"];
  if (v19)
  {
    v20 = -81.52789;
  }

  else
  {
    v20 = v7;
  }

  if (v19)
  {
    v21 = 28.34244;
  }

  else
  {
    v21 = v18;
  }

  if (v21 == 0.0 && v20 == 0.0 && v10 == 0.0)
  {
    v22 = 0;
  }

  else
  {
    if (v19)
    {
      v13 = 30.0;
    }

    v23 = objc_alloc(MEMORY[0x277CE41F8]);
    date = [MEMORY[0x277CBEAA8] date];
    v22 = [v23 initWithCoordinate:date altitude:v21 horizontalAccuracy:v20 verticalAccuracy:v10 timestamp:{v13, v13}];
  }

  return v22;
}

- (SOSEmergencyCallVoiceLoopManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)speakUtteranceVariants:withPlaybackState:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_264323000, v0, v1, "speakUtteranceVariants - nothing to speak for utteranceVariants:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_emergencyDescriptorUtterancesForRemoteVariant:repeatVariant:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_264323000, v0, v1, "Location but no locationString; location: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_loopPhaseFromUtteranceIndex:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_264323000, v0, v1, "_loopPhaseFromUtteranceIndex - Unexpected index:%tu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_messageKeyForReason:shortVersion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_264323000, v0, v1, "_messageKeyForReason - Unexpected reason:%ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateLocation:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_264323000, v0, OS_LOG_TYPE_DEBUG, "Ignoring location: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_handleRemoteDTMFDigits:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1(&dword_264323000, v0, v1, "Unexpected dtmfUpdateDigits:%{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end