@interface SOSEmergencyCallVoiceLoopManager
+ (BOOL)_activeCallSupportsDTMF;
+ (id)_activeCallPreferringEmergencyOrSOS;
+ (id)_messageKeyForReason:(int64_t)a3 shortVersion:(BOOL)a4;
+ (id)_validDTMFDigits;
- (BOOL)_isSpeaking;
- (BOOL)callSupportsRemoteControl;
- (BOOL)outputToTelephonyUplink;
- (CLLocation)locationToSynthesize;
- (SOSEmergencyCallVoiceLoopManager)initWithReason:(int64_t)a3;
- (SOSEmergencyCallVoiceLoopManager)initWithReason:(int64_t)a3 playbackMode:(int64_t)a4;
- (SOSEmergencyCallVoiceLoopManagerDelegate)delegate;
- (SOSVoiceUtterer)localVoiceUtterer;
- (SOSVoiceUtterer)uplinkVoiceUtterer;
- (id)_coordinatesStringFromLocation:(id)a3 shortVersion:(BOOL)a4;
- (id)_languageToUseInVoiceLoopForCountryCode:(id)a3;
- (id)_overrideLocation;
- (id)_preferredVoiceLanguageForCountryCode:(id)a3;
- (id)localizedStringForKey:(id)a3;
- (id)stopConfirmationUtterancesForPlaybackState:(unint64_t)a3 remoteVariant:(BOOL)a4 verbalizedActionOut:(unint64_t *)a5;
- (id)voiceLanguage;
- (unint64_t)_loopPhaseFromUtteranceIndex:(unint64_t)a3;
- (void)_handleDTMFMessageRepeatCommand;
- (void)_handleDTMFMessageResumeCommand;
- (void)_handleDTMFMessageStopCommand;
- (void)_handleRemoteDTMFDigits:(id)a3;
- (void)_speakLoopMessage;
- (void)_startListeningForRemoteControl;
- (void)_startLoopPlayback;
- (void)_stopListeningForRemoteControl;
- (void)_stopMessagePlayback;
- (void)_updateLocation:(id)a3;
- (void)callCenter:(id)a3 reportedCall:(id)a4 receivedDTMFUpdate:(id)a5;
- (void)dealloc;
- (void)invalidate;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)setPlaybackState:(unint64_t)a3;
- (void)setPlayingLoopIndex:(unint64_t)a3;
- (void)shiftedLocationIfApplicable:(id)a3 withcompletion:(id)a4;
- (void)speakResponseUtteranceVariants:(id)a3;
- (void)speakUtteranceVariants:(id)a3 withPlaybackState:(unint64_t)a4;
- (void)startLoopPlayback;
- (void)startMessagePlayback;
- (void)stopLoopPlayback;
- (void)stopMessagePlayback;
- (void)voiceUtterer:(id)a3 didFinishSpeakingUtterances:(id)a4;
- (void)voiceUtterer:(id)a3 willStartSpeakingUtteranceAtIndex:(unint64_t)a4 fromUtterances:(id)a5;
@end

@implementation SOSEmergencyCallVoiceLoopManager

- (SOSEmergencyCallVoiceLoopManager)initWithReason:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = SOSEmergencyCallVoiceLoopManager;
  v4 = [(SOSEmergencyCallVoiceLoopManager *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_reason = a3;
    v6 = objc_alloc(MEMORY[0x277CBFC10]);
    v7 = +[SOSUtilities sosLocationBundle];
    v8 = [v6 initWithEffectiveBundle:v7 delegate:v5 onQueue:MEMORY[0x277D85CD0]];
    locationManager = v5->_locationManager;
    v5->_locationManager = v8;

    [(CLLocationManager *)v5->_locationManager setDesiredAccuracy:-1.0];
    [(CLLocationManager *)v5->_locationManager startUpdatingLocation];
    v10 = [(CLLocationManager *)v5->_locationManager location];
    [(SOSEmergencyCallVoiceLoopManager *)v5 _updateLocation:v10];

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

  v4 = [objc_opt_class() _activeCallSupportsDTMF];
  v5 = [SOSVoiceLoopAnalyticsReporter alloc];
  reason = self->_reason;
  v7 = [(SOSEmergencyCallVoiceLoopManager *)self voiceLanguage];
  v8 = [(SOSVoiceLoopAnalyticsReporter *)v5 initWithReason:reason language:v7 dtmfAvailable:v4];
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

- (SOSEmergencyCallVoiceLoopManager)initWithReason:(int64_t)a3 playbackMode:(int64_t)a4
{
  v5 = [(SOSEmergencyCallVoiceLoopManager *)self initWithReason:a3];
  v6 = v5;
  if (v5)
  {
    [(SOSEmergencyCallVoiceLoopManager *)v5 setTestMode:a4 == 1];
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
  v2 = [(SOSEmergencyCallVoiceLoopManager *)self testMode];
  if (v2)
  {
    v3 = sos_voiceloop_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "SOSEmergencyCallVoiceLoopManager testMode == YES, => outputToTelephonyUplink = NO", v5, 2u);
    }
  }

  return !v2;
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

- (void)speakUtteranceVariants:(id)a3 withPlaybackState:(unint64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = sos_voiceloop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v18 = 136315650;
    v19 = "[SOSEmergencyCallVoiceLoopManager speakUtteranceVariants:withPlaybackState:]";
    v20 = 2048;
    v21 = a4;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_INFO, "%s - newPlaybackState:%tu, utteranceVariants:%@", &v18, 0x20u);
  }

  v8 = [SOSUtilities BOOLOverrideForDefaultsKey:@"debug.voiceloop.audio.playRemoteAsLocal" defaultValue:0];
  v9 = [SOSUtilities BOOLOverrideForDefaultsKey:@"debug.voiceloop.audio.playLocalAsRemote" defaultValue:0];
  if (v8)
  {
    [v6 remoteUtterances];
  }

  else
  {
    [v6 localUtterances];
  }
  v10 = ;
  if (v9)
  {
    [v6 localUtterances];
  }

  else
  {
    [v6 remoteUtterances];
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
  v15 = v14;
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
    v19 = a4;
    _os_log_impl(&dword_264323000, v15, OS_LOG_TYPE_DEFAULT, "speakUtteranceVariants - setting newPlaybackState:%tu", &v18, 0xCu);
  }

  [(SOSEmergencyCallVoiceLoopManager *)self setPlaybackState:a4];
  if (v12)
  {
    v16 = [(SOSEmergencyCallVoiceLoopManager *)self localVoiceUtterer];
    [v16 speakUtterances:v10];
  }

  if (v13)
  {
    v15 = [(SOSEmergencyCallVoiceLoopManager *)self uplinkVoiceUtterer];
    [v15 speakUtterances:v11];
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

- (void)setPlaybackState:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_playbackState != a3)
  {
    v5 = sos_voiceloop_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      playbackState = self->_playbackState;
      v11 = 134218240;
      v12 = playbackState;
      v13 = 2048;
      v14 = a3;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "setPlaybackState: %tu => %tu", &v11, 0x16u);
    }

    v7 = self->_playbackState;
    self->_playbackState = a3;
    v8 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
    [v8 reportVoiceLoopPlaybackStateChanged:a3];

    if (a3 == 100)
    {
      v9 = [(SOSEmergencyCallVoiceLoopManager *)self delegate];
      [v9 voiceLoopManagerDidStartLoopPlayback:self];
LABEL_8:

      goto LABEL_9;
    }

    if (v7 == 100)
    {
      v9 = [(SOSEmergencyCallVoiceLoopManager *)self delegate];
      [v9 voiceLoopManagerDidStopLoopPlayback:self];
      goto LABEL_8;
    }
  }

LABEL_9:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setPlayingLoopIndex:(unint64_t)a3
{
  v5 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
  [v5 reportVoiceLoopIndexChanged:a3];

  if (self->_playingLoopIndex != a3)
  {
    self->_playingLoopIndex = a3;
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
    v9 = [(SOSEmergencyCallVoiceLoopManager *)self playingLoopIndex];
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "%s - Playing SOS loop #: %lu", &v6, 0x16u);
  }

  v4 = [(SOSEmergencyCallVoiceLoopManager *)self emergencyDescriptorUtteranceVariantsForRepeatVariant:0];
  [(SOSEmergencyCallVoiceLoopManager *)self speakUtteranceVariants:v4 withPlaybackState:100];

  v5 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_loopPhaseFromUtteranceIndex:(unint64_t)a3
{
  if (a3 < 3)
  {
    return 100 * a3 + 100;
  }

  v4 = sos_voiceloop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [SOSEmergencyCallVoiceLoopManager _loopPhaseFromUtteranceIndex:];
  }

  return 0;
}

+ (id)_messageKeyForReason:(int64_t)a3 shortVersion:(BOOL)a4
{
  v4 = a4;
  if (a3 == 1)
  {
    v5 = @"NEWTON_WATCH";
  }

  else if (a3 == 2)
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
  if (v4)
  {
    v7 = @"BRIEF";
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"SOS_VOICELOOP_SPEECH_%@_INTRO_%@", v7, v5];

  return v8;
}

- (void)voiceUtterer:(id)a3 willStartSpeakingUtteranceAtIndex:(unint64_t)a4 fromUtterances:(id)a5
{
  v7 = [(SOSEmergencyCallVoiceLoopManager *)self playbackState:a3];
  v9 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
  if (v7 == 100)
  {
    v8 = [(SOSEmergencyCallVoiceLoopManager *)self _loopPhaseFromUtteranceIndex:a4];
  }

  else
  {
    v8 = 0;
  }

  [v9 reportVoiceLoopLoopPhaseChanged:v8];
}

- (void)voiceUtterer:(id)a3 didFinishSpeakingUtterances:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(SOSEmergencyCallVoiceLoopManager *)self _isSpeaking])
  {
    v6 = sos_voiceloop_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      localVoiceUtterer = self->_localVoiceUtterer;
      v8 = localVoiceUtterer == v5;
      v9 = [(SOSVoiceUtterer *)localVoiceUtterer isSpeaking];
      uplinkVoiceUtterer = self->_uplinkVoiceUtterer;
      v20 = 67109888;
      *v21 = v8;
      *&v21[4] = 1024;
      *&v21[6] = v9;
      v22 = 1024;
      v23 = uplinkVoiceUtterer == v5;
      v24 = 1024;
      v25 = [(SOSVoiceUtterer *)uplinkVoiceUtterer isSpeaking];
      _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "didFinishSpeakingUtterances - !doneSpeaking; NOP until notified after doneSpeaking (isLocalUtterer:%{BOOL}d localUttererSpeaking:%{BOOL}d isRemoteUtterer:%{BOOL}d remoteUttererSpeaking:%{BOOL}d", &v20, 0x1Au);
    }

LABEL_10:

    goto LABEL_14;
  }

  v11 = [(SOSEmergencyCallVoiceLoopManager *)self playbackState];
  v12 = sos_voiceloop_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11 == 100)
  {
    if (v13)
    {
      v20 = 134217984;
      *v21 = [(SOSEmergencyCallVoiceLoopManager *)self playingLoopIndex];
      _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "didFinishSpeakingUtterances - Finished spoken portion of loop: %lu", &v20, 0xCu);
    }

    v14 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
    [v14 reportVoiceLoopLoopPhaseChanged:10000];

    v15 = sos_voiceloop_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_264323000, v15, OS_LOG_TYPE_DEFAULT, "didFinishSpeakingUtterances - More loops to come; Creating new timer", &v20, 2u);
    }

    v16 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel__speakLoopMessage selector:0 userInfo:0 repeats:5.0];
    messageRepeatTimer = self->_messageRepeatTimer;
    self->_messageRepeatTimer = v16;

    v18 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v18 addTimer:self->_messageRepeatTimer forMode:*MEMORY[0x277CBE738]];

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

- (void)shiftedLocationIfApplicable:(id)a3 withcompletion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    v12 = [(SOSEmergencyCallVoiceLoopManager *)self locationShifter];
    v13 = [(SOSEmergencyCallVoiceLoopManager *)self locationShifter];
    v14 = [objc_opt_class() isLocationShiftRequiredForLocation:v6];
    *buf = 138412546;
    *&buf[4] = v12;
    *&buf[12] = 1024;
    *&buf[14] = v14;
    _os_log_impl(&dword_264323000, v11, OS_LOG_TYPE_DEFAULT, "Location shifter: %@ - isLocationShiftRequiredForLocation: %{BOOL}d", buf, 0x12u);
  }

  if (v6 && (-[SOSEmergencyCallVoiceLoopManager locationShifter](self, "locationShifter"), (v15 = objc_claimAutoreleasedReturnValue()) != 0) && (-[SOSEmergencyCallVoiceLoopManager locationShifter](self, "locationShifter"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [objc_opt_class() isLocationShiftRequiredForLocation:v6], v16, v15, v17))
  {
    objc_initWeak(buf, self);
    v18 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__SOSEmergencyCallVoiceLoopManager_shiftedLocationIfApplicable_withcompletion___block_invoke;
    block[3] = &unk_279B53D30;
    v22 = v7;
    objc_copyWeak(&v23, buf);
    v21 = v6;
    dispatch_async(v18, block);

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  else
  {
    (*(v7 + 2))(v7, v6);
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

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v5 = a4;
  v6 = sos_voiceloop_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "Received location update", v8, 2u);
  }

  v7 = [v5 lastObject];

  [(SOSEmergencyCallVoiceLoopManager *)self _updateLocation:v7];
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = sos_voiceloop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "locationManager:didFailWithError:%{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (CLLocation)locationToSynthesize
{
  if ([SOSUtilities BOOLOverrideForDefaultsKey:@"debug.voiceloop.demo.fakeLocation" defaultValue:0])
  {
    v3 = [(SOSEmergencyCallVoiceLoopManager *)self _overrideLocation];
  }

  else
  {
    v3 = self->_locationToSynthesize;
  }

  return v3;
}

- (void)_updateLocation:(id)a3
{
  v4 = a3;
  if (!v4)
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
    [v4 horizontalAccuracy];
    if (v7 <= v8 || ([v4 horizontalAccuracy], v9 <= 0.0))
    {
      v10 = [v4 timestamp];
      v11 = [(CLLocation *)self->_locationToSynthesize timestamp];
      [v10 timeIntervalSinceDate:v11];
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
  [(SOSEmergencyCallVoiceLoopManager *)self shiftedLocationIfApplicable:v4 withcompletion:v15];
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

- (id)_coordinatesStringFromLocation:(id)a3 shortVersion:(BOOL)a4
{
  v4 = a4;
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = sos_voiceloop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v32 = v6;
    v33 = 1024;
    v34 = v4;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "Creating location string from location:%@ shortVersion:%{BOOL}d", buf, 0x12u);
  }

  if (v6)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v8 setNumberStyle:1];
    [v8 setMaximumFractionDigits:4];
    v9 = [(SOSEmergencyCallVoiceLoopManager *)self voiceLanguage];
    if (v9)
    {
      [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v9];
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
    [v6 coordinate];
    v14 = [v13 numberWithDouble:?];
    v15 = [v8 stringFromNumber:v14];

    v16 = MEMORY[0x277CCABB0];
    [v6 coordinate];
    v18 = [v16 numberWithDouble:v17];
    v19 = [v8 stringFromNumber:v18];

    v20 = MEMORY[0x277CCABB0];
    [v6 horizontalAccuracy];
    LODWORD(v22) = vcvtpd_s64_f64(v21);
    v23 = [v20 numberWithInt:v22];
    v24 = [v8 stringFromNumber:v23];

    if (v4)
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

- (id)_languageToUseInVoiceLoopForCountryCode:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sos_voiceloop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v4;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "_languageToUseInVoiceLoopForCountryCode:%{public}@", &v12, 0xCu);
  }

  if ([(__CFString *)v4 isEqualToString:@"IN"])
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
    v7 = [(SOSEmergencyCallVoiceLoopManager *)self _preferredVoiceLanguageForCountryCode:v4];
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

- (id)_preferredVoiceLanguageForCountryCode:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v3 = sos_voiceloop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v26;
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
  v6 = [v4 preferredLanguagesForRegion:v26];
  v7 = sos_voiceloop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "Preferred filtered languages retrieved: %{public}@", &buf, 0xCu);
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizations];

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

        v14 = [MEMORY[0x277CBEAF8] languageFromLanguage:*(*(&v27 + 1) + 8 * i) byReplacingRegion:{v26, v24}];
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
        v18 = [v16 preferredLocalizationsFromArray:v9 forPreferences:v17];
        v19 = [v18 firstObject];

        v20 = [MEMORY[0x277CB84A8] voiceWithLanguage:v19];

        if (v19 && v20)
        {
          v21 = sos_voiceloop_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = v24;
            *(&buf + 4) = v19;
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

  v19 = 0;
LABEL_22:

  v22 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)localizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = [(SOSEmergencyCallVoiceLoopManager *)self voiceLanguage];
  v6 = [SOSVoiceUtterance localizedStringForKey:v4 forLocalization:v5];

  return v6;
}

- (void)callCenter:(id)a3 reportedCall:(id)a4 receivedDTMFUpdate:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = sos_voiceloop_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "receivedDTMFUpdate:%{public}@ call:%@", &v12, 0x16u);
  }

  v10 = [v8 digits];
  [(SOSEmergencyCallVoiceLoopManager *)self _handleRemoteDTMFDigits:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)callSupportsRemoteControl
{
  v3 = [objc_opt_class() _activeCallSupportsDTMF];
  [(SOSVoiceLoopAnalyticsReporter *)self->_loopAnalyticsReporter reportVoiceLoopSupportsDTMF:v3];

  return [SOSUtilities BOOLOverrideForDefaultsKey:@"debug.voiceloop.call.supportsDTMF" defaultValue:v3];
}

+ (BOOL)_activeCallSupportsDTMF
{
  v2 = [objc_opt_class() _activeCallPreferringEmergencyOrSOS];
  v3 = [v2 supportsDTMFUpdates];

  return v3;
}

+ (id)_activeCallPreferringEmergencyOrSOS
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v3 = [MEMORY[0x277D6EDF8] sharedInstance];
  v4 = [v3 currentCalls];
  v5 = [v2 initWithArray:v4];

  v6 = [MEMORY[0x277D6EDF8] sharedInstance];
  v7 = [v6 callsOnDefaultPairedDevice];
  [v5 addObjectsFromArray:v7];

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
  v3 = [MEMORY[0x277D6EDF8] sharedInstance];
  [v3 addDelegate:self queue:MEMORY[0x277D85CD0]];
}

- (void)_stopListeningForRemoteControl
{
  v3 = [MEMORY[0x277D6EDF8] sharedInstance];
  [v3 removeDelegate:self];
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

- (void)_handleRemoteDTMFDigits:(id)a3
{
  v4 = a3;
  if ([v4 length] == 1)
  {
    v5 = [v4 characterAtIndex:0];
    v6 = [objc_opt_class() _validDTMFDigits];
    v7 = [v4 rangeOfCharacterFromSet:v6];

    if (!v7)
    {
      [(SOSEmergencyCallVoiceLoopManager *)self _handleDTMFDigit:v5];
      goto LABEL_7;
    }

    v8 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
    v9 = v5;
    [v8 reportVoiceLoopDidStartHandlingDTMFDigitReceived:v9];

    v10 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
    [v10 reportVoiceLoopDidFinishHandlingDTMFDigitReceived:v9];
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
  v3 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
  [v3 reportVoiceLoopDidReceiveCommand:100];

  v11 = 10000;
  v4 = [(SOSEmergencyCallVoiceLoopManager *)self playbackState];
  v5 = [(SOSEmergencyCallVoiceLoopManager *)self stopConfirmationUtterancesForPlaybackState:v4 remoteVariant:0 verbalizedActionOut:0];
  v6 = [(SOSEmergencyCallVoiceLoopManager *)self stopConfirmationUtterancesForPlaybackState:v4 remoteVariant:1 verbalizedActionOut:&v11];
  v7 = [SOSVoiceUtteranceVariants utteranceVariantsWithLocalUtterances:v5 remoteUtterances:v6];

  v8 = sos_voiceloop_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v13 = v4;
    v14 = 2048;
    v15 = v11;
    _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "_handleDTMFMessageStopCommand -- Stopping from playbackState: %tu (action: %tu)", buf, 0x16u);
  }

  v9 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
  [v9 reportVoiceLoopWillPerformAction:v11];

  [(SOSEmergencyCallVoiceLoopManager *)self speakResponseUtteranceVariants:v7];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_handleDTMFMessageRepeatCommand
{
  v3 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
  [v3 reportVoiceLoopDidReceiveCommand:200];

  v4 = [(SOSEmergencyCallVoiceLoopManager *)self playbackState];
  v5 = sos_voiceloop_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == 100)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "_handleDTMFMessageRepeatCommand - Received repeat, but not stopped; ignoring", buf, 2u);
    }

    v7 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
    [v7 reportVoiceLoopWillPerformAction:10000];
  }

  else
  {
    if (v6)
    {
      *v9 = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "_handleDTMFMessageRepeatCommand - Repeating", v9, 2u);
    }

    v8 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
    [v8 reportVoiceLoopWillPerformAction:200];

    [(SOSEmergencyCallVoiceLoopManager *)self _stopMessagePlayback];
    v7 = [(SOSEmergencyCallVoiceLoopManager *)self emergencyDescriptorUtteranceVariantsForRepeatVariant:1];
    [(SOSEmergencyCallVoiceLoopManager *)self speakUtteranceVariants:v7 withPlaybackState:400];
  }
}

- (void)_handleDTMFMessageResumeCommand
{
  v3 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
  [v3 reportVoiceLoopDidReceiveCommand:5000];

  v4 = [(SOSEmergencyCallVoiceLoopManager *)self playbackState];
  v5 = sos_voiceloop_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == 100)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "_handleDTMFMessageResumeCommand - Received resume, but not stopped; ignoring", buf, 2u);
    }

    v7 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
    [v7 reportVoiceLoopWillPerformAction:10000];
  }

  else
  {
    if (v6)
    {
      *v9 = 0;
      _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "_handleDTMFMessageResumeCommand - Resuming", v9, 2u);
    }

    v8 = [(SOSEmergencyCallVoiceLoopManager *)self loopAnalyticsReporter];
    [v8 reportVoiceLoopWillPerformAction:5000];

    [(SOSEmergencyCallVoiceLoopManager *)self _stopMessagePlayback];
    [(SOSEmergencyCallVoiceLoopManager *)self _startLoopPlayback];
  }
}

- (id)stopConfirmationUtterancesForPlaybackState:(unint64_t)a3 remoteVariant:(BOOL)a4 verbalizedActionOut:(unint64_t *)a5
{
  v6 = a4;
  v36 = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = 10000;
  if (a3 > 299)
  {
    if (a3 == 300 || a3 == 400)
    {
      v10 = 300;
    }
  }

  else if (a3 == 100)
  {
    if (v6)
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
    v21 = [(SOSEmergencyCallVoiceLoopManager *)self voiceLanguage];
    v22 = [(SOSVoiceUtterance *)v20 initWithLocalizedMessageString:v16 voiceLanguage:v21];
    [v9 addObject:v22];

    v10 = 100;
  }

  else if (a3 == 200)
  {
    if (v6)
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
    v18 = [(SOSEmergencyCallVoiceLoopManager *)self voiceLanguage];
    v19 = [(SOSVoiceUtterance *)v17 initWithLocalizedMessageString:v13 voiceLanguage:v18];
    [v9 addObject:v19];

    v10 = 400;
  }

  v23 = sos_voiceloop_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 134218754;
    v29 = a3;
    v30 = 1024;
    v31 = v6;
    v32 = 2114;
    v33 = v9;
    v34 = 2048;
    v35 = v10;
    _os_log_impl(&dword_264323000, v23, OS_LOG_TYPE_INFO, "stopConfirmationUtterancesForPlaybackState:%tu remoteVariant:%{BOOL}d => %{public}@ (action: %tu)", buf, 0x26u);
  }

  if (a5)
  {
    *a5 = v10;
  }

  if ([v9 count])
  {
    v24 = v9;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  v26 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)speakResponseUtteranceVariants:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sos_voiceloop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "speakResponseUtteranceVariants:%{public}@", &v7, 0xCu);
  }

  [(SOSEmergencyCallVoiceLoopManager *)self _stopMessagePlayback];
  [(SOSEmergencyCallVoiceLoopManager *)self speakUtteranceVariants:v4 withPlaybackState:300];

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
    v24 = [MEMORY[0x277CBEAA8] date];
    v22 = [v23 initWithCoordinate:v24 altitude:v21 horizontalAccuracy:v20 verticalAccuracy:v10 timestamp:{v13, v13}];
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