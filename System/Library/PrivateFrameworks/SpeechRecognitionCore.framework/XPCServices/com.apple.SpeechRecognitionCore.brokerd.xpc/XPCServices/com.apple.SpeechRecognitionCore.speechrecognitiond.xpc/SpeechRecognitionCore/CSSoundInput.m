@interface CSSoundInput
- (BOOL)startRecording;
- (CSSoundInput)initWithDeliverSamples:(id)a3;
- (void)commandControlListener:(id)a3 didStopUnexpectedly:(BOOL)a4;
- (void)commandControlListener:(id)a3 hasLPCMBufferAvailable:(id)a4;
- (void)dealloc;
- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5;
- (void)stopRecording;
@end

@implementation CSSoundInput

- (CSSoundInput)initWithDeliverSamples:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CSSoundInput;
  v5 = [(CSSoundInput *)&v15 init];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    deliverSamples = v5->_deliverSamples;
    v5->_deliverSamples = v6;

    v8 = objc_alloc_init(CSCommandControlListener);
    csCommandControlListener = v5->_csCommandControlListener;
    v5->_csCommandControlListener = v8;

    [(CSCommandControlListener *)v5->_csCommandControlListener setDelegate:v5];
    v10 = [AFNotifyObserver alloc];
    v11 = [[NSString alloc] initWithUTF8String:"com.apple.siri.client-state-changed"];
    v12 = [v10 initWithName:v11 options:1 queue:gRDServerQueue delegate:v5];
    siriObserver = v5->_siriObserver;
    v5->_siriObserver = v12;

    *&v5->_recording = 0;
  }

  return v5;
}

- (void)dealloc
{
  if ([(CSSoundInput *)self isRecording])
  {
    [(CSSoundInput *)self stopRecording];
  }

  [(CSCommandControlListener *)self->_csCommandControlListener setDelegate:0];
  csCommandControlListener = self->_csCommandControlListener;
  self->_csCommandControlListener = 0;

  deliverSamples = self->_deliverSamples;
  if (deliverSamples)
  {
    self->_deliverSamples = 0;
  }

  v5.receiver = self;
  v5.super_class = CSSoundInput;
  [(CSSoundInput *)&v5 dealloc];
}

- (BOOL)startRecording
{
  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "RDSoundInputImpl_iOS_CS:startRecording", buf, 2u);
  }

  if ([(CSSoundInput *)self isRecording])
  {
    [(CSSoundInput *)self stopRecording];
  }

  if (+[RDSoundInputImpl_iOS_Shared isSystemSleeping])
  {
    v4 = RXOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "System is sleeping, so don't start recording", buf, 2u);
    }

    v5 = 0;
  }

  else
  {
    v6 = dispatch_time(0, 3000000000);
    v7 = dispatch_semaphore_create(0);
    csCommandControlListener = self->_csCommandControlListener;
    v9 = +[CSCommandControlListenerOption defaultOption];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000409C;
    v14[3] = &unk_1000FDD00;
    v14[4] = self;
    v4 = v7;
    v15 = v4;
    [(CSCommandControlListener *)csCommandControlListener startListenWithOption:v9 completion:v14];

    if (dispatch_semaphore_wait(v4, v6))
    {
      v10 = RXOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Timed out waiting to start CS recording", buf, 2u);
      }
    }

    v11 = RXOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      recording = self->_recording;
      *buf = 67109120;
      v17 = recording;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Started recording from CS = %d", buf, 8u);
    }

    v5 = self->_recording != 0;
  }

  return v5;
}

- (void)stopRecording
{
  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping to record from CS", buf, 2u);
  }

  v4 = dispatch_time(0, 3000000000);
  v5 = dispatch_semaphore_create(0);
  csCommandControlListener = self->_csCommandControlListener;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000434C;
  v10[3] = &unk_1000FDD00;
  v10[4] = self;
  v7 = v5;
  v11 = v7;
  [(CSCommandControlListener *)csCommandControlListener stopListenWithCompletion:v10];
  if (dispatch_semaphore_wait(v7, v4))
  {
    v8 = RXOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Timed out waiting to stop CS recording", buf, 2u);
    }
  }

  v9 = RXOSLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Stopped to record from CS", buf, 2u);
  }
}

- (void)commandControlListener:(id)a3 hasLPCMBufferAvailable:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!self->_isSiriListeningOrSpeaking || !+[RDSoundInputImpl_iOS_Shared isCarPlayActive])
  {
    v7 = [v6 bytes];
    v8 = [v6 length];
    deliverSamples = self->_deliverSamples;
    if (deliverSamples)
    {
      if (self->_recording)
      {
        deliverSamples[2](deliverSamples, v7, v8 >> 1);
      }
    }
  }
}

- (void)commandControlListener:(id)a3 didStopUnexpectedly:(BOOL)a4
{
  v4 = a4;
  v6 = RXOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Stopped unexpectedly", buf, 2u);
  }

  self->_recording = 0;
  if (v4)
  {
    if (+[RDSoundInputImpl isCSVADPresent])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100004600;
      block[3] = &unk_1000FDD28;
      block[4] = self;
      dispatch_async(gRDServerQueue, block);
    }
  }
}

- (void)notifyObserver:(id)a3 didChangeStateFrom:(unint64_t)a4 to:(unint64_t)a5
{
  v8 = RXOSLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134218240;
    v22 = a4;
    v23 = 2048;
    v24 = a5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CS notification didChangeStateFrom %lld to %lld ", &v21, 0x16u);
  }

  v9 = RXOSLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"YES";
    if ((a5 & 4) == 0)
    {
      v10 = @"NO";
    }

    v21 = 138412290;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Siri is listening: %@", &v21, 0xCu);
  }

  v11 = RXOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"YES";
    if ((a5 & 8) == 0)
    {
      v12 = @"NO";
    }

    v21 = 138412290;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Siri is speaking: %@", &v21, 0xCu);
  }

  self->_isSiriListeningOrSpeaking = (a5 & 0xC) != 0;
  self->_isSiriIdle = a5 == 0;
  v13 = RXOSLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isSiriIdle)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v21 = 138412290;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Siri is idle: %@", &v21, 0xCu);
  }

  if (+[RDSoundInputImpl_iOS_Shared isCarPlayActive])
  {
    v15 = RXOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = +[RDSoundInputImpl_iOS_Shared isCarPlayActive];
      v17 = @"NO";
      if (v16)
      {
        v17 = @"YES";
      }

      v21 = 138412290;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "CarPlay Active?: %@", &v21, 0xCu);
    }

    recording = self->_recording;
    if (self->_isSiriIdle)
    {
      if (!self->_recording)
      {
        v19 = RXOSLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Start recording from CoreSpeech in CarPlay since Siri is Idle", &v21, 2u);
        }

        [(CSSoundInput *)self startRecording];
      }
    }

    else if (self->_recording)
    {
      v20 = RXOSLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Stop recording from CoreSpeech in CarPlay since Siri is active", &v21, 2u);
      }

      [(CSSoundInput *)self stopRecording];
    }
  }
}

@end