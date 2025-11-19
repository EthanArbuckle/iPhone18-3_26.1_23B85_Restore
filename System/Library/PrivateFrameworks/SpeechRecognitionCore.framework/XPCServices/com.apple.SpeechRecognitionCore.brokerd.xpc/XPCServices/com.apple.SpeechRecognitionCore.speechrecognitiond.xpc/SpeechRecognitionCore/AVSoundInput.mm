@interface AVSoundInput
- (AVSoundInput)initWithExpectedFormat:(id)a3 deliverSamples:(id)a4;
- (BOOL)isRecording;
- (BOOL)setupAudioSession;
- (BOOL)setupDefaultAudioSession:(unint64_t)a3;
- (BOOL)startRecording:(int)a3;
- (BOOL)startRunningAudioEngine;
- (void)_addRecordedSpeechSampleData:(signed __int16 *)a3 length:(unsigned int)a4;
- (void)_appendPCMBuffer:(id)a3;
- (void)_convertAndFeedPCMBufferAVAudioPCMBuffer:(id)a3;
- (void)_didReceiveSiriSettingChanged:(BOOL)a3;
- (void)_drainAndClearAudioConverter;
- (void)_handleAudioSessionInterruption:(id)a3;
- (void)_handleConfigurationChangeNotification:(id)a3;
- (void)_handleRouteChange:(id)a3;
- (void)_recordingStateChanged:(id)a3;
- (void)activateNotifications;
- (void)deactivateNotifications;
- (void)dealloc;
- (void)stopRecording;
@end

@implementation AVSoundInput

- (AVSoundInput)initWithExpectedFormat:(id)a3 deliverSamples:(id)a4
{
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = AVSoundInput;
  v9 = [(AVSoundInput *)&v26 init];
  if (v9)
  {
    v10 = dispatch_queue_create("RDAudioBufferQueue", 0);
    v11 = *(v9 + 2);
    *(v9 + 2) = v10;

    dispatch_queue_set_specific(*(v9 + 2), v9, v9, 0);
    objc_storeStrong(v9 + 6, a3);
    v12 = objc_retainBlock(v8);
    v13 = *(v9 + 5);
    *(v9 + 5) = v12;

    *(v9 + 25) = +[RDSoundInputImpl isHearstConnected];
    *(v9 + 24) = AFPreferencesAssistantEnabled() != 0;
    *(v9 + 26) = 0;
    v14 = objc_alloc_init(AVAudioEngine);
    v15 = *(v9 + 4);
    *(v9 + 4) = v14;

    v16 = +[AVSystemController sharedAVSystemController];
    v29 = AVSystemController_SomeClientIsActiveDidChangeNotification;
    v17 = [NSArray arrayWithObjects:&v29 count:1];
    v25 = 0;
    [v16 setAttribute:v17 forKey:AVSystemController_SubscribeToNotificationsAttribute error:&v25];
    v18 = v25;

    if (v18)
    {
      v19 = [v18 description];
      v20 = RXOSLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = v19;
        v22 = [v19 UTF8String];
        *buf = 136315138;
        v28 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "AVSystemController_SubscribeToNotificationsAttribute Failed, Error = %s", buf, 0xCu);
      }
    }

    if (([v9 setupAudioSession] & 1) == 0)
    {
      v23 = RXOSLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "ERROR in setting up the audio session", buf, 2u);
      }
    }
  }

  return v9;
}

- (BOOL)setupAudioSession
{
  v3 = +[AVAudioSession sharedInstance];
  v21 = 0;
  [v3 setPrefersNoMicrophoneUsageIndicator:1 error:&v21];
  v4 = v21;

  if (v4)
  {
    v5 = RXOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SRC:Failed to suppress mic indicator", buf, 2u);
    }
  }

  v6 = +[AVAudioSession sharedInstance];
  v20 = 0;
  [v6 setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:41 error:&v20];
  v7 = v20;

  if (v7)
  {
    v8 = RXOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "startRecording error setting AVAudioSession category: %@", buf, 0xCu);
    }
  }

  else
  {
    self->_isUsingTelephonyVAD = 0;
    if ([(AVSoundInput *)self setupDefaultAudioSession:41])
    {
      v10 = +[AVAudioSession sharedInstance];
      v19 = 0;
      [v10 setAllowHapticsAndSystemSoundsDuringRecording:1 error:&v19];
      v11 = v19;

      if (v11)
      {
        v12 = RXOSLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "startRecording error setting haptics: %@", buf, 0xCu);
        }
      }

      v13 = +[AVAudioSession sharedInstance];
      v18 = 0;
      [v13 preferDecoupledIO:1 error:&v18];
      v7 = v18;

      if (v7)
      {
        v14 = RXOSLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = v7;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "startRecording error setting AVAudioSession DecoupledIO: %@", buf, 0xCu);
        }
      }

      else
      {
        if (!_os_feature_enabled_impl())
        {
          return 1;
        }

        v15 = +[AVAudioSession sharedInstance];
        v17 = 0;
        [v15 setMXSessionProperty:kMXSessionProperty_PrefersNoInterruptionsDuringRemoteDeviceControl value:&__kCFBooleanTrue error:&v17];
        v7 = v17;

        if (!v7)
        {
          return 1;
        }

        v16 = RXOSLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = v7;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "AV:Error setting MX property for non-interruption: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v7 = RXOSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "failed to setupDefaultAudioSession", buf, 2u);
      }
    }
  }

  return 0;
}

- (BOOL)setupDefaultAudioSession:(unint64_t)a3
{
  v5 = +[AVAudioSession sharedInstance];
  v19 = 0;
  [v5 setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:a3 error:&v19];
  v6 = v19;

  if (v6)
  {
    v7 = RXOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "startRecording error setting AVAudioSession category: %@", buf, 0xCu);
    }
  }

  else if (+[RDSoundInputImpl isCallActive](RDSoundInputImpl, "isCallActive") && +[RDSoundInputImpl isHearstConnected])
  {
    v8 = RXOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Another call is active and AirPods connected", buf, 2u);
    }

    v9 = +[AVAudioSession sharedInstance];
    v18 = 0;
    [v9 setAudioHardwareControlFlags:0 error:&v18];
    v10 = v18;

    if (!v10)
    {
      result = 1;
      self->_isUsingTelephonyVAD = 1;
      return result;
    }

    v11 = RXOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "startRecording error setting AVAudioSession hardware control flags to 0: %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = RXOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No other call is active or AirpPods are not connected", buf, 2u);
    }

    v13 = +[AVAudioSession sharedInstance];
    v17 = 0;
    [v13 setAudioHardwareControlFlags:18 error:&v17];
    v14 = v17;

    if (!v14)
    {
      self->_isUsingTelephonyVAD = 0;
      return 1;
    }

    v15 = RXOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "startRecording error setting AVAudioSession hardware control flags: %@", buf, 0xCu);
    }
  }

  return 0;
}

- (BOOL)startRecording:(int)a3
{
  if (+[RDSoundInputImpl_iOS_Shared isSystemSleeping])
  {
    v5 = RXOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "System is sleeping, so don't start recording";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&_mh_execute_header, v7, v8, v6, buf, 2u);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if ([(AVAudioEngine *)self->_audioEngine isRunning])
  {
    if (a3 == 1 && self->_isUsingTelephonyVAD)
    {
      v5 = RXOSLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "AV is already running using Telephony VAD";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    if (a3 != 1 && !self->_isUsingTelephonyVAD)
    {
      v5 = RXOSLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "AV is already running";
        goto LABEL_13;
      }

LABEL_23:
      v17 = 1;
      goto LABEL_28;
    }

    [(AVSoundInput *)self stopRecording];
    [(AVSoundInput *)self activateNotifications];
  }

  v10 = [(AVSoundInput *)self setupAudioSession];
  v11 = RXOSLog();
  v5 = v11;
  if ((v10 & 1) == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "AVAudioSession setup failed";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      goto LABEL_26;
    }

LABEL_27:
    v17 = 0;
    goto LABEL_28;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    isUsingTelephonyVAD = self->_isUsingTelephonyVAD;
    *buf = 67109120;
    LODWORD(v30) = isUsingTelephonyVAD;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting to record from AV and isUsingTelephonyVAD = %d", buf, 8u);
  }

  v13 = +[AVAudioSession sharedInstance];
  v28 = 0;
  v14 = [v13 setActive:1 error:&v28];
  v5 = v28;

  if ((v14 & 1) == 0)
  {
    v19 = RXOSLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v5 localizedDescription];
      *buf = 138412546;
      v30 = v5;
      v31 = 2112;
      v32 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "AVAudioSession set active failed with error code:{%@}, error message: {%@}", buf, 0x16u);
    }

    goto LABEL_27;
  }

  if ([(AVSoundInput *)self startRunningAudioEngine])
  {
    v15 = RXOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_isUsingTelephonyVAD;
      *buf = 67109120;
      LODWORD(v30) = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Started Recording from AV and isUsingTelephonyVAD = %d", buf, 8u);
    }

    goto LABEL_23;
  }

  v21 = RXOSLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not start recording from AV, deactivating the audio session", buf, 2u);
  }

  v22 = +[AVAudioSession sharedInstance];
  v27 = v5;
  v23 = [v22 setActive:0 withOptions:1 error:&v27];
  v24 = v27;

  if (v23)
  {
    v25 = RXOSLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Could not start recording from AV, Audio Session deactivated", buf, 2u);
    }
  }

  else
  {
    v25 = RXOSLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [v24 localizedDescription];
      *buf = 138412546;
      v30 = v24;
      v31 = 2112;
      v32 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "AVAudioSession could not deactivate, error code:{%@}, error message: {%@}", buf, 0x16u);
    }
  }

  v17 = 0;
  v5 = v24;
LABEL_28:

  return v17;
}

- (BOOL)startRunningAudioEngine
{
  v3 = [(AVAudioEngine *)self->_audioEngine inputNode];
  v4 = [v3 inputFormatForBus:0];
  if ([v4 channelCount])
  {
    [v3 removeTapOnBus:0];
    objc_initWeak(&location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000A280;
    v12[3] = &unk_1000FE230;
    objc_copyWeak(&v13, &location);
    [v3 installTapOnBus:0 bufferSize:1024 format:v4 block:v12];
    objc_destroyWeak(&v13);
    audioEngine = self->_audioEngine;
    v11 = 0;
    v6 = [(AVAudioEngine *)audioEngine startAndReturnError:&v11];
    v7 = v11;
    if ((v6 & 1) == 0)
    {
      v8 = RXOSLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error Starting engine: %@", buf, 0xCu);
      }
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v9 = RXOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No audio input available, channel count 0", buf, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (void)stopRecording
{
  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "StopRecording from AV", buf, 2u);
  }

  v4 = [(AVAudioEngine *)self->_audioEngine inputNode];
  [v4 removeTapOnBus:0];

  [(AVAudioEngine *)self->_audioEngine stop];
  if (dispatch_get_specific(self) == self)
  {
    [(AVSoundInput *)self _drainAndClearAudioConverter];
  }

  else
  {
    avAudioBufferQueue = self->_avAudioBufferQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000A5A0;
    block[3] = &unk_1000FDD28;
    block[4] = self;
    dispatch_async(avAudioBufferQueue, block);
  }

  v6 = +[AVAudioSession sharedInstance];
  v9 = 0;
  [v6 setActive:0 withOptions:1 error:&v9];
  v7 = v9;

  if (v7)
  {
    v8 = RXOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "stopRecording : error stopping AVAudioSession: %@", buf, 0xCu);
    }
  }
}

- (BOOL)isRecording
{
  v2 = [(AVSoundInput *)self audioEngine];
  v3 = [v2 isRunning];

  return v3;
}

- (void)dealloc
{
  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deallocating RDSoundInputImpl_iOS_AV", buf, 2u);
  }

  [(AVSoundInput *)self stopRecording];
  [(AVSoundInput *)self deactivateNotifications];
  deliverSamples = self->_deliverSamples;
  if (deliverSamples)
  {
    self->_deliverSamples = 0;
  }

  if (dispatch_get_specific(self) != self)
  {
    dispatch_sync(self->_avAudioBufferQueue, &stru_1000FE250);
  }

  dispatch_queue_set_specific(self->_avAudioBufferQueue, self, 0, 0);
  v5 = RXOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "released RDAudioBufferQueue", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = AVSoundInput;
  [(AVSoundInput *)&v6 dealloc];
}

- (void)_appendPCMBuffer:(id)a3
{
  v9 = a3;
  v5 = [v9 format];
  v6 = [v5 isEqual:self->_expectedFormat];

  if (v6)
  {
    [(AVSoundInput *)self _drainAndClearAudioConverter];
    v7 = [v9 int16ChannelData];
    if (!v7)
    {
      v8 = +[NSAssertionHandler currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"RDSoundInputImpl_iOS_AV.m" lineNumber:309 description:@"Invalid audio format"];
    }

    -[AVSoundInput _addRecordedSpeechSampleData:length:](self, "_addRecordedSpeechSampleData:length:", *v7, [v9 frameLength]);
  }

  else
  {
    [(AVSoundInput *)self _convertAndFeedPCMBufferAVAudioPCMBuffer:v9];
  }
}

- (void)_convertAndFeedPCMBufferAVAudioPCMBuffer:(id)a3
{
  v19 = a3;
  v4 = [v19 format];
  v5 = self->_expectedFormat;
  v6 = [(AVAudioConverter *)self->_converter inputFormat];
  v7 = [v6 isEqual:v4];

  if ((v7 & 1) == 0)
  {
    [(AVSoundInput *)self _drainAndClearAudioConverter];
    v8 = [[AVAudioConverter alloc] initFromFormat:v4 toFormat:v5];
    converter = self->_converter;
    self->_converter = v8;

    [(AVAudioConverter *)self->_converter setSampleRateConverterQuality:127];
  }

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v10 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:self->_expectedFormat frameCapacity:8000];
  [v10 setFrameLength:8000];
  while (1)
  {
    v11 = self->_converter;
    v22 = v24;
    v23 = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000AC3C;
    v20[3] = &unk_1000FE278;
    v12 = v19;
    v21 = v12;
    v13 = [(AVAudioConverter *)v11 convertToBuffer:v10 error:&v23 withInputFromBlock:v20];
    v14 = v23;
    if (v13 == 2)
    {
      break;
    }

    if (v13 == 3)
    {
      v16 = RXOSLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not run audio converter %@", buf, 0xCu);
      }

      break;
    }

    v15 = [v10 int16ChannelData];
    if (!v15)
    {
      v17 = +[NSAssertionHandler currentHandler];
      [v17 handleFailureInMethod:a2 object:self file:@"RDSoundInputImpl_iOS_AV.m" lineNumber:356 description:@"Invalid audio format"];
    }

    -[AVSoundInput _addRecordedSpeechSampleData:length:](self, "_addRecordedSpeechSampleData:length:", *v15, [v10 frameLength]);
    if (v13 == 1)
    {
      break;
    }
  }

  _Block_object_dispose(v24, 8);
}

- (void)_addRecordedSpeechSampleData:(signed __int16 *)a3 length:(unsigned int)a4
{
  deliverSamples = self->_deliverSamples;
  if (deliverSamples)
  {
    deliverSamples[2](deliverSamples, a3, a4);
  }
}

- (void)_drainAndClearAudioConverter
{
  if (self->_converter)
  {
    v4 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:self->_expectedFormat frameCapacity:8000];
    [v4 setFrameLength:8000];
    while (1)
    {
      converter = self->_converter;
      v12 = 0;
      v6 = [(AVAudioConverter *)converter convertToBuffer:v4 error:&v12 withInputFromBlock:&stru_1000FE298];
      v7 = v12;
      if (v6 == 2)
      {
        break;
      }

      if (v6 == 3)
      {
        v9 = RXOSLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v14 = v7;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not drain converter %@", buf, 0xCu);
        }

        break;
      }

      v8 = [v4 int16ChannelData];
      if (!v8)
      {
        v11 = +[NSAssertionHandler currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"RDSoundInputImpl_iOS_AV.m" lineNumber:401 description:@"Invalid audio format"];
      }

      -[AVSoundInput _addRecordedSpeechSampleData:length:](self, "_addRecordedSpeechSampleData:length:", *v8, [v4 frameLength]);
      if (v6 == 1)
      {
        break;
      }
    }

    v10 = self->_converter;
    self->_converter = 0;
  }
}

- (void)activateNotifications
{
  objc_initWeak(&location, self);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = objc_loadWeakRetained(&location);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, sub_10000B1F0, kAFPreferencesDidChangeDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  if (!self->_isSiriEnabled)
  {
    v13 = RXOSLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Activating notifications with Siri disabled", v15, 2u);
    }

    v11 = +[NSNotificationCenter defaultCenter];
    v12 = +[AVAudioSession sharedInstance];
    [v11 addObserver:self selector:"_handleAudioSessionInterruption:" name:AVAudioSessionInterruptionNotification object:v12];
    goto LABEL_9;
  }

  v5 = RXOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Activating notifications with Siri enabled", buf, 2u);
  }

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = AVSystemController_SomeClientIsActiveDidChangeNotification;
  v8 = +[AVSystemController sharedInstance];
  [v6 addObserver:self selector:"_recordingStateChanged:" name:v7 object:v8];

  v9 = +[NSNotificationCenter defaultCenter];
  v10 = +[AVAudioSession sharedInstance];
  [v9 addObserver:self selector:"_handleRouteChange:" name:AVAudioSessionRouteChangeNotification object:v10];

  if (self->_isHearstConnectedFlag)
  {
    v11 = +[NSNotificationCenter defaultCenter];
    v12 = +[AVAudioSession sharedInstance];
    [v11 addObserver:self selector:"_handleAudioSessionInterruption:" name:AVAudioSessionInterruptionNotification object:v12];
LABEL_9:
  }

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"_handleConfigurationChangeNotification:" name:AVAudioEngineConfigurationChangeNotification object:self->_audioEngine];

  self->_isNotificationActivated = 1;
  objc_destroyWeak(&location);
}

- (void)deactivateNotifications
{
  if (self->_isNotificationActivated)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, kAFPreferencesDidChangeDarwinNotification, 0);
    isSiriEnabled = self->_isSiriEnabled;
    v5 = RXOSLog();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (isSiriEnabled)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dectivating notifications with Siri enabled", buf, 2u);
      }

      if (self->_isHearstConnectedFlag)
      {
        v7 = +[NSNotificationCenter defaultCenter];
        [v7 removeObserver:self name:AVAudioSessionInterruptionNotification object:0];
      }

      v8 = +[NSNotificationCenter defaultCenter];
      [v8 removeObserver:self name:AVSystemController_SomeClientIsActiveDidChangeNotification object:0];

      v9 = +[NSNotificationCenter defaultCenter];
      [v9 removeObserver:self name:AVAudioSessionRouteChangeNotification object:0];
    }

    else
    {
      if (v6)
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dectivating notifications with Siri disabled", v11, 2u);
      }

      v9 = +[NSNotificationCenter defaultCenter];
      [v9 removeObserver:self name:AVAudioSessionInterruptionNotification object:0];
    }

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 removeObserver:self name:AVAudioEngineConfigurationChangeNotification object:self->_audioEngine];

    self->_isNotificationActivated = 0;
  }
}

- (void)_didReceiveSiriSettingChanged:(BOOL)a3
{
  if (self->_isSiriEnabled != a3)
  {
    v3 = a3;
    self->_isSiriEnabled = a3;
    v5 = +[NSNotificationCenter defaultCenter];
    v11 = v5;
    if (v3)
    {
      [v5 removeObserver:self name:AVAudioSessionInterruptionNotification object:0];

      v12 = +[NSNotificationCenter defaultCenter];
      [v12 removeObserver:self name:AVAudioEngineConfigurationChangeNotification object:0];

      v13 = +[NSNotificationCenter defaultCenter];
      v6 = AVSystemController_SomeClientIsActiveDidChangeNotification;
      v7 = +[AVSystemController sharedInstance];
      [v13 addObserver:self selector:"_recordingStateChanged:" name:v6 object:v7];

      v14 = +[NSNotificationCenter defaultCenter];
      v8 = +[AVAudioSession sharedInstance];
      [v14 addObserver:self selector:"_handleRouteChange:" name:AVAudioSessionRouteChangeNotification object:v8];

      v9 = RXOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Stopping the AV session for CS to take over as Siri is enabled", buf, 2u);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000B818;
      block[3] = &unk_1000FDD28;
      block[4] = self;
      dispatch_async(gRDServerQueue, block);
    }

    else
    {
      [v5 removeObserver:self name:AVSystemController_SomeClientIsActiveDidChangeNotification object:0];

      v15 = +[NSNotificationCenter defaultCenter];
      [v15 removeObserver:self name:AVAudioSessionRouteChangeNotification object:0];

      v16 = +[NSNotificationCenter defaultCenter];
      v10 = +[AVAudioSession sharedInstance];
      [v16 addObserver:self selector:"_handleAudioSessionInterruption:" name:AVAudioSessionInterruptionNotification object:v10];

      v17 = +[NSNotificationCenter defaultCenter];
      [v17 addObserver:self selector:"_handleConfigurationChangeNotification:" name:AVAudioEngineConfigurationChangeNotification object:self->_audioEngine];
    }
  }
}

- (void)_handleAudioSessionInterruption:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:AVAudioSessionInterruptionTypeKey];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 objectForKey:AVAudioSessionInterruptionOptionKey];
  v8 = [v7 unsignedIntegerValue];

  if (v6)
  {
    if (v6 == 1)
    {
      v9 = RXOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Interruption: Audio Interruption started", buf, 2u);
      }

      v10 = gRDServerQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000BA50;
      block[3] = &unk_1000FDD28;
      block[4] = self;
      v11 = block;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = RXOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Interruption: Audio Interruption ended", buf, 2u);
    }

    if ((v8 & 1) != 0 && ![(AVSoundInput *)self isRecording])
    {
      v10 = gRDServerQueue;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000BA88;
      v13[3] = &unk_1000FDD28;
      v13[4] = self;
      v11 = v13;
LABEL_6:
      dispatch_async(v10, v11);
    }
  }
}

- (void)_handleRouteChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 valueForKey:AVAudioSessionRouteChangeReasonKey];
  v7 = [v6 intValue];

  if (v7 == 1)
  {
    if (!self->_isHearstConnectedFlag && +[RDSoundInputImpl isHearstConnected])
    {
      self->_isHearstConnectedFlag = 1;
      v10 = +[NSNotificationCenter defaultCenter];
      v11 = +[AVAudioSession sharedInstance];
      [v10 addObserver:self selector:"_handleAudioSessionInterruption:" name:AVAudioSessionInterruptionNotification object:v11];

      v12 = RXOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "handleRouteChange: AirPods are connected", buf, 2u);
      }
    }
  }

  else if (v7 == 2 && self->_isHearstConnectedFlag && !+[RDSoundInputImpl isHearstConnected])
  {
    self->_isHearstConnectedFlag = 0;
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 removeObserver:self name:AVAudioSessionInterruptionNotification object:0];

    v9 = RXOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "handleRouteChange: AirPods are disconnected", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000BD34;
    block[3] = &unk_1000FDD28;
    block[4] = self;
    dispatch_async(gRDServerQueue, block);
  }
}

- (void)_handleConfigurationChangeNotification:(id)a3
{
  v4 = a3;
  v5 = RXOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Audio configuration changed = %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000BEAC;
  block[3] = &unk_1000FDD28;
  block[4] = self;
  dispatch_async(gRDServerQueue, block);
}

- (void)_recordingStateChanged:(id)a3
{
  v4 = RXOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Entering _recordingStateChanged", buf, 2u);
  }

  if (self->_isSiriEnabled)
  {
    v5 = +[AVSystemController sharedAVSystemController];
    v6 = [v5 attributeForKey:AVSystemController_ActiveClientPIDsThatHideTheSpeechDetectionDeviceAttribute];

    v7 = RXOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "AVSystemController :: Recording state changed. List of recording client PIDs : %@", buf, 0xCu);
    }

    if (!v6)
    {
      goto LABEL_14;
    }

    if (![v6 count])
    {
      goto LABEL_27;
    }

    if ([v6 count] == 1 && (objc_msgSend(v6, "objectAtIndex:", 0), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "intValue"), v10 = v9 == getpid(), v8, v10))
    {
      if (+[RDSoundInputImpl isHearstConnected])
      {
        v11 = RXOSLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "AirPods are connected so keep the AV session active", buf, 2u);
        }

        goto LABEL_27;
      }

      if (+[RDSoundInputImpl isCSVADPresent])
      {
        v18 = RXOSLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Stopping the AV session for CS to take over", buf, 2u);
        }

        v16 = gRDServerQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000C244;
        block[3] = &unk_1000FDD28;
        block[4] = self;
        v17 = block;
        goto LABEL_26;
      }
    }

    else
    {
LABEL_14:
      v12 = +[RDSoundInputImpl isCSVADPresent];
      if (v6)
      {
        v13 = v12;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        goto LABEL_27;
      }

      v14 = [NSNumber numberWithInt:getpid()];
      if ([v6 containsObject:v14])
      {
      }

      else
      {
        v15 = +[RDSoundInputImpl isCallActive];

        if ((v15 & 1) == 0)
        {
          v16 = gRDServerQueue;
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_10000C24C;
          v19[3] = &unk_1000FDD28;
          v19[4] = self;
          v17 = v19;
LABEL_26:
          dispatch_async(v16, v17);
        }
      }
    }

LABEL_27:
  }
}

@end