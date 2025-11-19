@interface RDSoundInputImpl
+ (BOOL)isCSVADHidden;
+ (BOOL)isCSVADPresent;
+ (BOOL)isCallActive;
+ (BOOL)isHearstConnected;
- (BOOL)isRecording;
- (RDSoundInputImpl)initWithExpectedFormat:(const AudioStreamBasicDescription *)a3 deliverSamples:(id)a4;
- (void)_callStatusChanged:(id)a3;
- (void)_handleSpeechDetectionVADPresentChange:(id)a3;
- (void)_handleSpeechSomeClientActiveDidChange:(id)a3;
- (void)_handleSystemControllerDied:(id)a3;
- (void)_startObservingSpeechClientsActive;
- (void)_startObservingSpeechDetectionVADPresence;
- (void)_startObservingSystemControllerLifecycle;
- (void)_stopObservingSpeechClientsActive;
- (void)stopRecording;
@end

@implementation RDSoundInputImpl

- (RDSoundInputImpl)initWithExpectedFormat:(const AudioStreamBasicDescription *)a3 deliverSamples:(id)a4
{
  v6 = a4;
  v18.receiver = self;
  v18.super_class = RDSoundInputImpl;
  v7 = [(RDSoundInputImpl *)&v18 init];
  if (v7)
  {
    v8 = [[AVAudioFormat alloc] initWithStreamDescription:a3];
    if (qword_10010E478 != -1)
    {
      sub_1000C8FD4();
    }

    if (RXIsUseIndependentVADEnabled() && byte_10010E471 == 1)
    {
      v9 = [[AVIndependentSoundInput alloc] initWithExpectedFormat:v8 deliverSamples:v6];
      avIndependenRouteSoundInput = v7->_avIndependenRouteSoundInput;
      v7->_avIndependenRouteSoundInput = v9;
    }

    if (RXIsUseIndependentVADEnabled() && byte_10010E471 == 1)
    {
      if (v7->_avIndependenRouteSoundInput)
      {
        v7->_hasIndependentRouteCapability = 1;
        CFPreferencesSetAppValue(@"RXUsingIndependentVAD", kCFBooleanTrue, @"com.apple.SpeechRecognitionCore.speechrecognitiond");
        v11 = RXOSLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device supports independent route", v17, 2u);
        }
      }
    }

    else
    {
      v7->_hasIndependentRouteCapability = 0;
      CFPreferencesSetAppValue(@"RXUsingIndependentVAD", kCFBooleanFalse, @"com.apple.SpeechRecognitionCore.speechrecognitiond");
      v12 = [[CSSoundInput alloc] initWithDeliverSamples:v6];
      csSoundInput = v7->_csSoundInput;
      v7->_csSoundInput = v12;

      v14 = [[AVSoundInput alloc] initWithExpectedFormat:v8 deliverSamples:v6];
      avSoundInput = v7->_avSoundInput;
      v7->_avSoundInput = v14;

      [(RDSoundInputImpl *)v7 _startObservingSystemControllerLifecycle];
      [(RDSoundInputImpl *)v7 _startObservingSpeechDetectionVADPresence];
    }
  }

  return v7;
}

- (void)_startObservingSystemControllerLifecycle
{
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 removeObserver:self name:AVSystemController_ServerConnectionDiedNotification object:0];

  v11 = [NSArray arrayWithObject:AVSystemController_ServerConnectionDiedNotification];
  v3 = +[AVSystemController sharedAVSystemController];
  [v3 setAttribute:v11 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = AVSystemController_ServerConnectionDiedNotification;
  v6 = +[AVSystemController sharedAVSystemController];
  [v4 addObserver:self selector:"_handleSystemControllerDied:" name:v5 object:v6];

  v7 = +[TUCallCenter sharedInstance];
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"_callStatusChanged:" name:TUCallCenterCallStatusChangedNotification object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"_callStatusChanged:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
}

- (void)_handleSystemControllerDied:(id)a3
{
  v4 = RXOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RDSoundInput::AVSystemControllerDied", v5, 2u);
  }

  [(RDSoundInputImpl *)self _startObservingSystemControllerLifecycle];
  [(RDSoundInputImpl *)self _startObservingSpeechDetectionVADPresence];
  [(RDSoundInputImpl *)self _handleSpeechDetectionVADPresentChange:0];
}

- (void)_startObservingSpeechDetectionVADPresence
{
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:AVSystemController_SpeechDetectionDevicePresentDidChangeNotification object:0];

  v8 = [NSArray arrayWithObject:AVSystemController_SpeechDetectionDevicePresentDidChangeNotification];
  v3 = +[AVSystemController sharedAVSystemController];
  [v3 setAttribute:v8 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = AVSystemController_SpeechDetectionDevicePresentDidChangeNotification;
  v6 = +[AVSystemController sharedAVSystemController];
  [v4 addObserver:self selector:"_handleSpeechDetectionVADPresentChange:" name:v5 object:v6];
}

- (void)_startObservingSpeechClientsActive
{
  v7 = +[NSNotificationCenter defaultCenter];
  v3 = AVSystemController_SomeClientIsActiveDidChangeNotification;
  v4 = +[AVSystemController sharedInstance];
  [v7 removeObserver:self name:v3 object:v4];

  v8 = +[NSNotificationCenter defaultCenter];
  v5 = AVSystemController_SomeClientIsActiveDidChangeNotification;
  v6 = +[AVSystemController sharedInstance];
  [v8 addObserver:self selector:"_handleSpeechSomeClientActiveDidChange:" name:v5 object:v6];
}

- (void)_stopObservingSpeechClientsActive
{
  v5 = +[NSNotificationCenter defaultCenter];
  v3 = AVSystemController_SomeClientIsActiveDidChangeNotification;
  v4 = +[AVSystemController sharedInstance];
  [v5 removeObserver:self name:v3 object:v4];
}

- (void)stopRecording
{
  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "RDSoundInputImpl_iOS:stoppingRecording", buf, 2u);
  }

  if (RXIsUseIndependentVADEnabled() && self->_hasIndependentRouteCapability)
  {
    v4 = [(RDSoundInputImpl *)self avIndependenRouteSoundInput];
    [v4 stopRecording];
  }

  else
  {
    if (+[RDSoundInputImpl isCSVADPresent])
    {
      [(RDSoundInputImpl *)self csSoundInput];
    }

    else
    {
      [(RDSoundInputImpl *)self avSoundInput];
    }
    v4 = ;
    [v4 stopRecording];
  }

  v5 = RXOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "RDSoundInputImpl_iOS:stoppedRecording", v6, 2u);
  }

  [AudioNotification sendLiveRecordingOffNotificationWithInterrupt:0];
}

- (BOOL)isRecording
{
  if (+[RDSoundInputImpl isCSVADPresent])
  {
    v3 = [(RDSoundInputImpl *)self csSoundInput];
    v4 = [v3 isRecording] != 0;
  }

  else
  {
    v3 = [(RDSoundInputImpl *)self avSoundInput];
    v4 = [v3 isRecording];
  }

  return v4;
}

- (void)_handleSpeechDetectionVADPresentChange:(id)a3
{
  v4 = a3;
  if (!+[RDSoundInputImpl_iOS_Shared isCarPlayActive]|| self->_hasIndependentRouteCapability)
  {
    v5 = RXOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Speech detection VAD status changed = %@", buf, 0xCu);
    }

    if (!self->_hasIndependentRouteCapability)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000DE38;
      block[3] = &unk_1000FDD28;
      block[4] = self;
      dispatch_async(gRDServerQueue, block);
    }
  }
}

- (void)_handleSpeechSomeClientActiveDidChange:(id)a3
{
  v4 = a3;
  v5 = gRDServerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000DEE4;
  v7[3] = &unk_1000FE300;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_callStatusChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = RXOSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v15 = [v5 status];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RDSoundInputImpl:_callStatusChanged:%d", buf, 8u);
  }

  if (v5)
  {
    if ([v5 status] == 4 || objc_msgSend(v5, "status") == 3)
    {
      v7 = gRDServerQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000E1AC;
      block[3] = &unk_1000FE300;
      v8 = v13;
      v13[0] = v5;
      v13[1] = self;
      v9 = block;
    }

    else
    {
      if ([v5 status] != 6)
      {
        goto LABEL_8;
      }

      v7 = gRDServerQueue;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10000E260;
      v10[3] = &unk_1000FE300;
      v8 = v11;
      v11[0] = v5;
      v11[1] = self;
      v9 = v10;
    }

    dispatch_async(v7, v9);
  }

LABEL_8:
}

+ (BOOL)isCSVADPresent
{
  if (+[RDSoundInputImpl_iOS_Shared isCarPlayActive])
  {
    return 1;
  }

  v3 = +[AVSystemController sharedAVSystemController];
  v4 = [v3 attributeForKey:AVSystemController_SpeechDetectionDevicePresentAttribute];
  v2 = [v4 BOOLValue];

  return v2;
}

+ (BOOL)isCSVADHidden
{
  if (+[RDSoundInputImpl_iOS_Shared isCarPlayActive])
  {
    return 0;
  }

  v3 = +[AVSystemController sharedAVSystemController];
  v4 = [v3 attributeForKey:AVSystemController_ActiveClientPIDsThatHideTheSpeechDetectionDeviceAttribute];

  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    v6 = [NSNumber numberWithInt:getpid()];
    v7 = [v5 isEqual:v6];

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v2 = ([v4 count] != 0) & v8;

  return v2;
}

+ (BOOL)isCallActive
{
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 attributeForKey:AVSystemController_CallIsActive];

  v4 = +[AVSystemController sharedAVSystemController];
  v5 = [v4 attributeForKey:AVSystemController_RecordingClientPIDsAttribute];

  [v5 count];
  v6 = +[AVSystemController sharedAVSystemController];
  v7 = [v6 attributeForKey:AVSystemController_CallIsActive];
  v8 = [v7 BOOLValue];

  return v8;
}

+ (BOOL)isHearstConnected
{
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 attributeForKey:AVSystemController_PickableRoutesAttribute];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 objectForKey:{AVSystemController_RouteDescriptionKey_IsPreferredExternalRoute, v17}];
        if (![v9 BOOLValue])
        {
          goto LABEL_12;
        }

        v10 = [v8 objectForKey:AVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_InEarDetectSupported];
        if (([v10 BOOLValue] & 1) == 0)
        {

LABEL_12:
          continue;
        }

        v11 = [v8 objectForKey:AVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_IsActive];
        v12 = [v11 BOOLValue];

        if (v12)
        {
          v13 = [v8 objectForKey:AVSystemController_RouteDescriptionKey_BTDetails_SupportsDoAP];
          v14 = [v13 BOOLValue];

          if (v14)
          {
            LODWORD(v5) = 1;
            goto LABEL_15;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

LABEL_15:

  v15 = RXOSLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Airpods Connected=%d", buf, 8u);
  }

  return v5;
}

@end