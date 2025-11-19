@interface AVIndependentSoundInput
- (AVIndependentSoundInput)initWithExpectedFormat:(id)a3 deliverSamples:(id)a4;
- (BOOL)isRecording;
- (BOOL)setupAudioSession;
- (BOOL)startRecording:(int)a3;
- (BOOL)startRunningAudioEngine;
- (void)_addRecordedSpeechSampleData:(signed __int16 *)a3 length:(unsigned int)a4;
- (void)_appendPCMBuffer:(id)a3;
- (void)_convertAndFeedPCMBufferAVAudioPCMBuffer:(id)a3;
- (void)_drainAndClearAudioConverter;
- (void)_handleConfigurationChangeNotification:(id)a3;
- (void)activateNotifications;
- (void)deactivateNotifications;
- (void)dealloc;
- (void)stopRecording;
- (void)stopRunningAudioEngine;
@end

@implementation AVIndependentSoundInput

- (AVIndependentSoundInput)initWithExpectedFormat:(id)a3 deliverSamples:(id)a4
{
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = AVIndependentSoundInput;
  v9 = [(AVIndependentSoundInput *)&v21 init];
  if (!v9)
  {
    goto LABEL_3;
  }

  v10 = dispatch_queue_create("RDAudioBufferQueue", 0);
  v11 = *(v9 + 2);
  *(v9 + 2) = v10;

  dispatch_queue_set_specific(*(v9 + 2), v9, v9, 0);
  objc_storeStrong(v9 + 6, a3);
  v12 = objc_retainBlock(v8);
  v13 = *(v9 + 5);
  *(v9 + 5) = v12;

  v14 = objc_alloc_init(AVAudioEngine);
  v15 = *(v9 + 4);
  *(v9 + 4) = v14;

  v16 = [v9 setupAudioSession];
  *(v9 + 24) = v16;
  if ((v16 & 1) == 0)
  {
    v18 = RXOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "AVI:ERROR in setting up the audio session", v20, 2u);
    }

    v17 = 0;
  }

  else
  {
LABEL_3:
    v17 = v9;
  }

  return v17;
}

- (BOOL)setupAudioSession
{
  v2 = objc_alloc_init(AVAudioSessionRouteControl);
  [v2 setRouteControlOptions:1];
  v3 = +[AVAudioSession sharedInstance];
  v18 = 0;
  [v3 setPreferredRouteControlConfig:v2 error:&v18];
  v4 = v18;

  if (v4)
  {
    v5 = RXOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v4;
      v6 = "AVI:Error setting preffered route: %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, buf, 0xCu);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v7 = +[AVAudioSession sharedInstance];
  v17 = 0;
  [v7 setCategory:AVAudioSessionCategoryRecord withOptions:131073 error:&v17];
  v4 = v17;

  if (!v4)
  {
    v8 = +[AVAudioSession sharedInstance];
    v5 = [v8 preferredRouteControlConfig];

    if ([v2 routeControlOptions] != 1)
    {
      v10 = RXOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "AVI:no independent route", buf, 2u);
      }

      v4 = 0;
      goto LABEL_16;
    }

    v9 = +[AVAudioSession sharedInstance];
    v16 = 0;
    [v9 setAllowHapticsAndSystemSoundsDuringRecording:1 error:&v16];
    v4 = v16;

    if (v4)
    {
      v10 = RXOSLog();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

        goto LABEL_17;
      }

      *buf = 138412290;
      v20 = v4;
      v11 = "AVI:Error setting haptics and sounds during recording: %@";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
      goto LABEL_16;
    }

    if (_os_feature_enabled_impl())
    {
      v14 = +[AVAudioSession sharedInstance];
      v15 = 0;
      [v14 setMXSessionProperty:kMXSessionProperty_PrefersNoInterruptionsDuringRemoteDeviceControl value:&__kCFBooleanTrue error:&v15];
      v4 = v15;

      if (v4)
      {
        v10 = RXOSLog();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }

        *buf = 138412290;
        v20 = v4;
        v11 = "AVI:Error setting MX property for non-interruption: %@";
        goto LABEL_12;
      }
    }

    else
    {
      v4 = 0;
    }

    v12 = 1;
    goto LABEL_18;
  }

  v5 = RXOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v20 = v4;
    v6 = "AVI:Error setting audio session category: %@";
    goto LABEL_7;
  }

LABEL_17:
  v12 = 0;
LABEL_18:

  return v12;
}

- (void)activateNotifications
{
  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "AVI:AV activateNotifications", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleConfigurationChangeNotification:" name:AVAudioEngineConfigurationChangeNotification object:self->_audioEngine];
}

- (void)deactivateNotifications
{
  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "AVI:AV deactivateNotifications", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:AVAudioEngineConfigurationChangeNotification object:self->_audioEngine];
}

- (void)_handleConfigurationChangeNotification:(id)a3
{
  v4 = a3;
  v5 = RXOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AVI::Audio configuration changed = %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007F4C;
  block[3] = &unk_1000FE108;
  block[4] = self;
  dispatch_async(gRDServerQueue, block);
}

- (BOOL)startRecording:(int)a3
{
  v4 = RXOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AVI:startRecording", buf, 2u);
  }

  if (+[RDSoundInputImpl_iOS_Shared isSystemSleeping])
  {
    v5 = RXOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AVI:System is sleeping, so don't start recording", buf, 2u);
    }

    v6 = 0;
    goto LABEL_33;
  }

  if (![(AVAudioEngine *)self->_audioEngine isRunning])
  {
    [(AVIndependentSoundInput *)self stopRunningAudioEngine];
    if ([(AVIndependentSoundInput *)self audioSessionSetupCompleted])
    {
      v5 = 0;
    }

    else
    {
      v7 = +[AVAudioSession sharedInstance];
      v21 = 0;
      v8 = [v7 setActive:1 error:&v21];
      v5 = v21;

      v9 = RXOSLog();
      v10 = v9;
      if ((v8 & 1) == 0)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v17 = [v5 localizedDescription];
          *buf = 138412546;
          v23 = v5;
          v24 = 2112;
          v25 = v17;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "AVI:AVAudioSession set active failed with error code:{%@}, error message: {%@}", buf, 0x16u);
        }

        v6 = 0;
        goto LABEL_32;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AVI:Audio Session already active", buf, 2u);
      }
    }

    [(AVIndependentSoundInput *)self activateNotifications];
    v11 = [(AVIndependentSoundInput *)self startRunningAudioEngine];
    v12 = RXOSLog();
    v10 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AVI:Started Recording from AV", buf, 2u);
      }

      v6 = 1;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "AVI:Could not start recording from AV, deactivating the audio session", buf, 2u);
      }

      v13 = +[AVAudioSession sharedInstance];
      v20 = v5;
      v14 = [v13 setActive:0 withOptions:1 error:&v20];
      v15 = v20;

      v16 = RXOSLog();
      v10 = v16;
      if (v14)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AVI:Could not start recording from AV, Audio Session deactivated", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = [v15 localizedDescription];
        *buf = 138412546;
        v23 = v15;
        v24 = 2112;
        v25 = v18;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "AVI:AVAudioSession could not deactivate, error code:{%@}, error message: {%@}", buf, 0x16u);
      }

      v6 = 0;
      v5 = v15;
    }

LABEL_32:

    goto LABEL_33;
  }

  v5 = RXOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "AVI:AV is already running", buf, 2u);
  }

  v6 = 1;
LABEL_33:

  return v6;
}

- (BOOL)startRunningAudioEngine
{
  v3 = [(AVAudioEngine *)self->_audioEngine inputNode];
  v4 = [v3 inputFormatForBus:0];
  if ([v4 channelCount])
  {
    v5 = +[AVAudioSession sharedInstance];
    v6 = [v5 availableInputs];

    [v3 removeTapOnBus:0];
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100008604;
    v13[3] = &unk_1000FE158;
    objc_copyWeak(&v14, &location);
    [v3 installTapOnBus:0 bufferSize:1024 format:v4 block:v13];
    objc_destroyWeak(&v14);
    audioEngine = self->_audioEngine;
    v12 = 0;
    v8 = [(AVAudioEngine *)audioEngine startAndReturnError:&v12];
    v9 = v12;
    if ((v8 & 1) == 0)
    {
      v10 = RXOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "AVI:Error Starting engine: %@", buf, 0xCu);
      }
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v6 = RXOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "AVI:No audio input available, channel count 0", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)stopRunningAudioEngine
{
  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AVI:stopRunningAudioEngine", v5, 2u);
  }

  v4 = [(AVAudioEngine *)self->_audioEngine inputNode];
  [v4 removeTapOnBus:0];

  [(AVAudioEngine *)self->_audioEngine stop];
}

- (void)stopRecording
{
  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AVI:StopRecording from AV", buf, 2u);
  }

  [(AVIndependentSoundInput *)self deactivateNotifications];
  [(AVIndependentSoundInput *)self stopRunningAudioEngine];
  if (dispatch_get_specific(self) == self)
  {
    [(AVIndependentSoundInput *)self _drainAndClearAudioConverter];
  }

  else
  {
    avAudioBufferQueue = self->_avAudioBufferQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000895C;
    block[3] = &unk_1000FE108;
    block[4] = self;
    dispatch_async(avAudioBufferQueue, block);
  }

  v5 = +[AVAudioSession sharedInstance];
  v8 = 0;
  [v5 setActive:0 withOptions:1 error:&v8];
  v6 = v8;

  if (v6)
  {
    v7 = RXOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "AVI:stopRecording : error stopping AVAudioSession: %@", buf, 0xCu);
    }
  }
}

- (BOOL)isRecording
{
  v2 = [(AVIndependentSoundInput *)self audioEngine];
  v3 = [v2 isRunning];

  return v3;
}

- (void)dealloc
{
  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AVI:Deallocating RDSoundInputImpl_iOS_Independent_AV", buf, 2u);
  }

  if ([(AVIndependentSoundInput *)self isRecording])
  {
    [(AVIndependentSoundInput *)self stopRecording];
  }

  deliverSamples = self->_deliverSamples;
  if (deliverSamples)
  {
    self->_deliverSamples = 0;
  }

  if (dispatch_get_specific(self) != self)
  {
    dispatch_sync(self->_avAudioBufferQueue, &stru_1000FE178);
  }

  dispatch_queue_set_specific(self->_avAudioBufferQueue, self, 0, 0);
  v5.receiver = self;
  v5.super_class = AVIndependentSoundInput;
  [(AVIndependentSoundInput *)&v5 dealloc];
}

- (void)_appendPCMBuffer:(id)a3
{
  v8 = a3;
  v5 = [v8 format];
  v6 = [v5 isEqual:self->_expectedFormat];

  if (v6)
  {
    [(AVIndependentSoundInput *)self _drainAndClearAudioConverter];
    v7 = [v8 int16ChannelData];
    if (!v7)
    {
      sub_1000C8EE8(a2, self);
    }

    -[AVIndependentSoundInput _addRecordedSpeechSampleData:length:](self, "_addRecordedSpeechSampleData:length:", *v7, [v8 frameLength]);
  }

  else
  {
    [(AVIndependentSoundInput *)self _convertAndFeedPCMBufferAVAudioPCMBuffer:v8];
  }
}

- (void)_convertAndFeedPCMBufferAVAudioPCMBuffer:(id)a3
{
  v4 = a3;
  v19 = [v4 format];
  v18 = self->_expectedFormat;
  v5 = [(AVAudioConverter *)self->_converter inputFormat];
  v6 = [v5 isEqual:v19];

  if ((v6 & 1) == 0)
  {
    [(AVIndependentSoundInput *)self _drainAndClearAudioConverter];
    v7 = [[AVAudioConverter alloc] initFromFormat:v19 toFormat:v18];
    converter = self->_converter;
    self->_converter = v7;

    [(AVAudioConverter *)self->_converter setSampleRateConverterQuality:127];
  }

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v9 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:self->_expectedFormat frameCapacity:8000];
  [v9 setFrameLength:8000];
  while (1)
  {
    v10 = self->_converter;
    v22 = v24;
    v23 = 0;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100008E40;
    v20[3] = &unk_1000FE1A0;
    v11 = v4;
    v21 = v11;
    v12 = [(AVAudioConverter *)v10 convertToBuffer:v9 error:&v23 withInputFromBlock:v20];
    v13 = v23;
    if (v12 == 2)
    {
      break;
    }

    if (v12 == 3)
    {
      v15 = RXOSLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "AVI:Could not run audio converter %@", buf, 0xCu);
      }

      break;
    }

    v14 = [v9 int16ChannelData];
    if (!v14)
    {
      v16 = +[NSAssertionHandler currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"RDSoundInputImpl_iOS_Independent_AV.m" lineNumber:308 description:@"Invalid audio format"];
    }

    -[AVIndependentSoundInput _addRecordedSpeechSampleData:length:](self, "_addRecordedSpeechSampleData:length:", *v14, [v9 frameLength]);
    if (v12 == 1)
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
      v11 = 0;
      v6 = [(AVAudioConverter *)converter convertToBuffer:v4 error:&v11 withInputFromBlock:&stru_1000FE1E0];
      v7 = v11;
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
          v13 = v7;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "AVI:Could not drain converter %@", buf, 0xCu);
        }

        break;
      }

      v8 = [v4 int16ChannelData];
      if (!v8)
      {
        sub_1000C8F5C(a2, self);
      }

      -[AVIndependentSoundInput _addRecordedSpeechSampleData:length:](self, "_addRecordedSpeechSampleData:length:", *v8, [v4 frameLength]);
      if (v6 == 1)
      {
        break;
      }
    }

    v10 = self->_converter;
    self->_converter = 0;
  }
}

@end