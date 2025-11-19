@interface CSDProximityController
- (BOOL)isInterfaceOrientationPortrait;
- (BOOL)isProximitySensorCovered;
- (BOOL)isProximitySensorEnabled;
- (BOOL)shouldEnableProximitySensor;
- (CSDProximityController)initWithQueue:(id)a3 proximitySensorObserver:(id)a4 voiceOverObserver:(id)a5;
- (CSDProximityController)initWithQueue:(id)a3 routeController:(id)a4 callCenterObserver:(id)a5 interfaceOrientationObserver:(id)a6 proximitySensorObserver:(id)a7 voiceOverObserver:(id)a8;
- (int)proximityDetectionMode;
- (void)callCenterObserver:(id)a3 callChanged:(id)a4;
- (void)dealloc;
- (void)routesChangedForRouteController:(id)a3;
- (void)setInterfaceOrientationPortrait:(BOOL)a3;
- (void)setProximitySensorCovered:(BOOL)a3;
- (void)setProximitySensorEnabled:(BOOL)a3;
- (void)updateProximitySensorState;
- (void)updateVoiceOverRoutingForCurrentProximityState;
@end

@implementation CSDProximityController

- (void)updateProximitySensorState
{
  v3 = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDProximityController *)self shouldEnableProximitySensor];

  [(CSDProximityController *)self setProximitySensorEnabled:v4];
}

- (BOOL)shouldEnableProximitySensor
{
  v3 = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(v3);

  if (!_TUIsInternalInstall() || (+[NSUserDefaults tu_defaults](NSUserDefaults, "tu_defaults"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 BOOLForKey:@"ForceDisableCallProximity"], v4, (v5 & 1) == 0))
  {
    if ([(CSDProximityController *)self isInterfaceOrientationPortrait]|| [(CSDProximityController *)self isProximitySensorCovered])
    {
      v7 = [(CSDProximityController *)self callCenterObserver];
      v8 = [v7 callContainer];
      v9 = [v8 anyCallPassesTest:&stru_10061A178];

      if (v9)
      {
        v10 = sub_100004778();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          v11 = "Proximity detection should be disabled; video call exists";
LABEL_16:
          v23 = v10;
          v24 = 2;
          goto LABEL_17;
        }
      }

      else
      {
        v12 = [(CSDProximityController *)self callCenterObserver];
        v13 = [v12 callContainer];
        v14 = [v13 anyCallPassesTest:&stru_10061A198];

        if (v14)
        {
          v15 = [(CSDProximityController *)self routeController];
          v10 = [v15 pickedRoute];

          v16 = [v10 isReceiver];
          v17 = [v10 isSpeaker];
          v18 = [(CSDProximityController *)self voiceOverRunningDeterminationHandler];
          v19 = v18[2]();

          v20 = [(CSDProximityController *)self voiceOverTouchShouldRouteToSpeakerDeterminationHandler];
          v21 = v20[2]();

          v22 = [(CSDProximityController *)self brailleScreenInputDeterminationHandler];
          LOBYTE(v20) = v22[2]();

          if (v20)
          {
            v6 = 0;
          }

          else
          {
            v6 = v16 | v17 & v19 & v21;
          }

          v26 = sub_100004778();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = 67110144;
            v28 = v6 & 1;
            v29 = 1024;
            v30 = v16;
            v31 = 1024;
            v32 = v17;
            v33 = 1024;
            v34 = v19;
            v35 = 1024;
            v36 = v21;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Proximity detection should be %d since isReceiver: %d, isSpeaker: %d, isVoiceOverRunning: %d, shouldAutoSelectRouteWithVoiceOver: %d", &v27, 0x20u);
          }

          goto LABEL_19;
        }

        v10 = sub_100004778();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          v11 = "Proximity detection should be disabled; eligible audio call does not exist";
          goto LABEL_16;
        }
      }
    }

    else
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 67109376;
        v28 = [(CSDProximityController *)self isProximitySensorCovered];
        v29 = 1024;
        v30 = [(CSDProximityController *)self isInterfaceOrientationPortrait];
        v11 = "Proximity detection should be disabled; isInterfaceOrientationPortrait: %d, isProximitySensorCovered: %d";
        v23 = v10;
        v24 = 14;
LABEL_17:
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v11, &v27, v24);
      }
    }

    v6 = 0;
LABEL_19:

    return v6 & 1;
  }

  v6 = 0;
  return v6 & 1;
}

- (BOOL)isInterfaceOrientationPortrait
{
  v3 = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(v3);

  return self->_interfaceOrientationPortrait;
}

- (void)updateVoiceOverRoutingForCurrentProximityState
{
  v3 = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v24[0] = 67109120;
    v24[1] = [(CSDProximityController *)self isProximitySensorCovered];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling proximity sensor covered changed to %d", v24, 8u);
  }

  v5 = [(CSDProximityController *)self voiceOverRunningDeterminationHandler];
  v6 = v5[2]();

  if (v6)
  {
    v7 = [(CSDProximityController *)self callCenterObserver];
    v8 = [v7 callContainer];
    v9 = [v8 anyCallPassesTest:&stru_10061A1B8];

    if (v9)
    {
      v10 = [(CSDProximityController *)self voiceOverTouchShouldRouteToSpeakerDeterminationHandler];
      v11 = v10[2]();

      if ([(CSDProximityController *)self isProximitySensorCovered])
      {
        v12 = [(CSDProximityController *)self routeController];
        v13 = [v12 pickedRoute];
        v14 = [v13 isSpeaker] & v11;

        if (v14 == 1)
        {
          v15 = sub_100004778();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v24[0]) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "VoiceOver is enabled and the proximity sensor is covered, changing the audio route from speaker to receiver.", v24, 2u);
          }

          v16 = [(CSDProximityController *)self routeController];
          v17 = [(CSDProximityController *)self routeController];
          v18 = [v17 receiverRoute];
LABEL_15:
          v23 = v18;
          [v16 pickRoute:v18];

          return;
        }
      }

      if (![(CSDProximityController *)self isProximitySensorCovered])
      {
        v19 = [(CSDProximityController *)self routeController];
        v20 = [v19 pickedRoute];
        v21 = [v20 isReceiver] & v11;

        if (v21 == 1)
        {
          v22 = sub_100004778();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v24[0]) = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "VoiceOver is enabled and the proximity sensor is uncovered, changing the audio route from receiver to speaker.", v24, 2u);
          }

          v16 = [(CSDProximityController *)self routeController];
          v17 = [(CSDProximityController *)self routeController];
          v18 = [v17 speakerRoute];
          goto LABEL_15;
        }
      }
    }
  }
}

- (BOOL)isProximitySensorCovered
{
  v3 = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(v3);

  return self->_proximitySensorCovered;
}

- (CSDProximityController)initWithQueue:(id)a3 proximitySensorObserver:(id)a4 voiceOverObserver:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(FBSOrientationObserver);
  v12 = objc_alloc_init(CSDCallCenterObserver);
  v13 = +[TUCallCenter sharedInstance];
  v14 = [v13 routeController];

  v15 = [(CSDProximityController *)self initWithQueue:v10 routeController:v14 callCenterObserver:v12 interfaceOrientationObserver:v11 proximitySensorObserver:v9 voiceOverObserver:v8];
  return v15;
}

- (CSDProximityController)initWithQueue:(id)a3 routeController:(id)a4 callCenterObserver:(id)a5 interfaceOrientationObserver:(id)a6 proximitySensorObserver:(id)a7 voiceOverObserver:(id)a8
{
  v33 = a3;
  v32 = a4;
  v15 = a5;
  v31 = a6;
  v30 = a7;
  v16 = a8;
  v45.receiver = self;
  v45.super_class = CSDProximityController;
  v17 = [(CSDProximityController *)&v45 init];
  if (v17)
  {
    if (!v15)
    {
      sub_100471730();
    }

    if (!v31)
    {
      sub_1004717A0();
    }

    if (!v32)
    {
      sub_100471810();
    }

    if (!v30)
    {
      sub_100471880();
    }

    if (v33)
    {
      if (v16)
      {
LABEL_12:
        objc_storeStrong(&v17->_queue, a3);
        objc_storeStrong(&v17->_proximitySensorObserver, a7);
        [(CSDProximitySensorObserver *)v17->_proximitySensorObserver addDelegate:v17 queue:v17->_queue];
        objc_storeStrong(&v17->_voiceOverObserver, a8);
        objc_storeStrong(&v17->_callCenterObserver, a5);
        [(CSDCallCenterObserver *)v17->_callCenterObserver setTriggers:67108897];
        [(CSDCallCenterObserver *)v17->_callCenterObserver setDelegate:v17];
        objc_storeStrong(&v17->_interfaceOrientationObserver, a6);
        objc_initWeak(&location, v17);
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_10007B62C;
        v42[3] = &unk_10061A0F0;
        objc_copyWeak(&v43, &location);
        v18 = objc_retainBlock(v42);
        [(CSDOrientationObserver *)v17->_interfaceOrientationObserver setHandler:v18];
        [(CSDOrientationObserver *)v17->_interfaceOrientationObserver activeInterfaceOrientationWithCompletion:v18];
        objc_storeStrong(&v17->_routeController, a4);
        v19 = +[TUCallCenter sharedInstance];
        v20 = [v19 queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10007B7C0;
        block[3] = &unk_100619D38;
        v21 = v17;
        v41 = v21;
        dispatch_async(v20, block);

        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10007B7CC;
        v38[3] = &unk_10061A118;
        objc_copyWeak(&v39, &location);
        v22 = objc_retainBlock(v38);
        voiceOverRunningDeterminationHandler = v21->_voiceOverRunningDeterminationHandler;
        v21->_voiceOverRunningDeterminationHandler = v22;

        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_10007B81C;
        v36[3] = &unk_10061A118;
        objc_copyWeak(&v37, &location);
        v24 = objc_retainBlock(v36);
        voiceOverTouchShouldRouteToSpeakerDeterminationHandler = v21->_voiceOverTouchShouldRouteToSpeakerDeterminationHandler;
        v21->_voiceOverTouchShouldRouteToSpeakerDeterminationHandler = v24;

        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_10007B86C;
        v34[3] = &unk_10061A118;
        objc_copyWeak(&v35, &location);
        v26 = objc_retainBlock(v34);
        brailleScreenInputDeterminationHandler = v21->_brailleScreenInputDeterminationHandler;
        v21->_brailleScreenInputDeterminationHandler = v26;

        proximityChangeHandler = v21->_proximityChangeHandler;
        v21->_proximityChangeHandler = &stru_10061A158;

        [(CSDProximityController *)v21 updateProximitySensorState];
        objc_destroyWeak(&v35);
        objc_destroyWeak(&v37);
        objc_destroyWeak(&v39);

        objc_destroyWeak(&v43);
        objc_destroyWeak(&location);
        goto LABEL_13;
      }
    }

    else
    {
      sub_1004718F0();
      if (v16)
      {
        goto LABEL_12;
      }
    }

    sub_100471960();
    goto LABEL_12;
  }

LABEL_13:

  return v17;
}

- (void)dealloc
{
  [(CSDProximityController *)self setProximitySensorEnabled:0];
  [(CSDOrientationObserver *)self->_interfaceOrientationObserver invalidate];
  v3.receiver = self;
  v3.super_class = CSDProximityController;
  [(CSDProximityController *)&v3 dealloc];
}

- (void)setInterfaceOrientationPortrait:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(v5);

  if (self->_interfaceOrientationPortrait != v3)
  {
    self->_interfaceOrientationPortrait = v3;

    [(CSDProximityController *)self updateProximitySensorState];
  }
}

- (int)proximityDetectionMode
{
  v3 = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(v3);

  return self->_proximityDetectionMode;
}

- (void)setProximitySensorCovered:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(v5);

  if (self->_proximitySensorCovered != v3)
  {
    self->_proximitySensorCovered = v3;
    [(CSDProximityController *)self updateProximitySensorState];

    [(CSDProximityController *)self updateVoiceOverRoutingForCurrentProximityState];
  }
}

- (BOOL)isProximitySensorEnabled
{
  v3 = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(v3);

  return [(CSDProximityController *)self proximityDetectionMode]== 3;
}

- (void)setProximitySensorEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSDProximityController *)self queue];
  dispatch_assert_queue_V2(v5);

  if (v3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  [(CSDProximityController *)self setProximityDetectionMode:v6];
}

- (void)callCenterObserver:(id)a3 callChanged:(id)a4
{
  v5 = [(CSDProximityController *)self queue:a3];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating proximity sensor state; calls changed.", v7, 2u);
  }

  [(CSDProximityController *)self updateProximitySensorState];
}

- (void)routesChangedForRouteController:(id)a3
{
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDProximityController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007BE98;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v6, block);
}

@end