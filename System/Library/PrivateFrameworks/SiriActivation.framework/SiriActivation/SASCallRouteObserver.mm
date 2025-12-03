@interface SASCallRouteObserver
- (SASCallRouteObserver)init;
- (void)_updateCallAudioRouteAllowedForRoute:(id)route;
- (void)routesChangedForRouteController:(id)controller;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation SASCallRouteObserver

- (void)startObserving
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698D0A0];
  v4 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[SASCallRouteObserver startObserving]";
    _os_log_impl(&dword_1C8137000, v4, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if ([MEMORY[0x1E698D148] isBlushingPhantomEnabled])
  {
    objc_initWeak(buf, self);
    mEMORY[0x1E69D8A50] = [MEMORY[0x1E69D8A50] sharedInstance];
    queue = [mEMORY[0x1E69D8A50] queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__SASCallRouteObserver_startObserving__block_invoke;
    block[3] = &unk_1E82F36D0;
    objc_copyWeak(&v10, buf);
    dispatch_async(queue, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    v7 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[SASCallRouteObserver startObserving]";
      _os_log_impl(&dword_1C8137000, v7, OS_LOG_TYPE_DEFAULT, "%s SIC not enabled, not observing call route", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)stopObserving
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[SASCallRouteObserver stopObserving]";
    _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if ([MEMORY[0x1E698D148] isBlushingPhantomEnabled])
  {
    objc_initWeak(buf, self);
    mEMORY[0x1E69D8A50] = [MEMORY[0x1E69D8A50] sharedInstance];
    queue = [mEMORY[0x1E69D8A50] queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__SASCallRouteObserver_stopObserving__block_invoke;
    block[3] = &unk_1E82F36D0;
    objc_copyWeak(&v8, buf);
    dispatch_async(queue, block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (SASCallRouteObserver)init
{
  v6.receiver = self;
  v6.super_class = SASCallRouteObserver;
  v2 = [(SASCallRouteObserver *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("SASCallRouteObserverQueue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_isCallAudioRouteAllowed = [MEMORY[0x1E698D148] isBlushingPhantomEnabled] ^ 1;
  }

  return v2;
}

void __38__SASCallRouteObserver_startObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [MEMORY[0x1E69D8A50] sharedInstance];
    v3 = [v2 routeController];

    [v3 addDelegate:v5];
    v4 = [v3 pickedRoute];
    [v5 _updateCallAudioRouteAllowedForRoute:v4];

    WeakRetained = v5;
  }
}

void __37__SASCallRouteObserver_stopObserving__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [MEMORY[0x1E69D8A50] sharedInstance];
    v3 = [v2 routeController];

    [v3 removeDelegate:v4];
    [v4 _updateCallAudioRouteAllowedForRoute:0];

    WeakRetained = v4;
  }
}

- (void)routesChangedForRouteController:(id)controller
{
  v4 = MEMORY[0x1E69D8A50];
  controllerCopy = controller;
  sharedInstance = [v4 sharedInstance];
  queue = [sharedInstance queue];
  dispatch_assert_queue_V2(queue);

  pickedRoute = [controllerCopy pickedRoute];

  [(SASCallRouteObserver *)self _updateCallAudioRouteAllowedForRoute:pickedRoute];
}

- (void)_updateCallAudioRouteAllowedForRoute:(id)route
{
  routeCopy = route;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__SASCallRouteObserver__updateCallAudioRouteAllowedForRoute___block_invoke;
  block[3] = &unk_1E82F37D0;
  objc_copyWeak(&v9, &location);
  v8 = routeCopy;
  v6 = routeCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __61__SASCallRouteObserver__updateCallAudioRouteAllowedForRoute___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ((([*(a1 + 32) isSpeaker] & 1) != 0 || objc_msgSend(*(a1 + 32), "isReceiver")) && MEMORY[0x1CCA6FEC0]())
    {
      v3 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v25 = "[SASCallRouteObserver _updateCallAudioRouteAllowedForRoute:]_block_invoke";
        _os_log_impl(&dword_1C8137000, v3, OS_LOG_TYPE_DEFAULT, "%s built-in route in-call with echo cancellation", buf, 0xCu);
      }

      v4 = 1;
      v5 = 1;
      if ([WeakRetained isCallAudioRouteAllowed])
      {
        goto LABEL_28;
      }
    }

    else if ([*(a1 + 32) isBluetooth] && objc_msgSend(*(a1 + 32), "bluetoothEndpointType") == 1)
    {
      v6 = [MEMORY[0x1E69AED08] sharedAVSystemController];
      v7 = [v6 pickableRoutesForCategory:*MEMORY[0x1E698D298] andMode:@"SpeechRecognition"];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = v7;
      v5 = [v8 countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v5)
      {
        v9 = *v21;
        v10 = MEMORY[0x1E69AEC80];
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v21 != v9)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            v13 = [v12 objectForKeyedSubscript:{*v10, v20}];
            v14 = [v13 BOOLValue];

            if (v14)
            {
              v15 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69AEC10]];
              v5 = v15 != 0;

              goto LABEL_23;
            }
          }

          v5 = [v8 countByEnumeratingWithState:&v20 objects:v30 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:

      v16 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v25 = "[SASCallRouteObserver _updateCallAudioRouteAllowedForRoute:]_block_invoke";
        v26 = 1024;
        v27 = v5;
        _os_log_impl(&dword_1C8137000, v16, OS_LOG_TYPE_DEFAULT, "%s bluetooth route in-call, supportsDoAP=%i", buf, 0x12u);
      }

      v4 = v5;

      if (v5 == [WeakRetained isCallAudioRouteAllowed])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
      if (([WeakRetained isCallAudioRouteAllowed] & 1) == 0)
      {
LABEL_28:
        [WeakRetained setIsCallAudioRouteAllowed:{v5, v20}];
        goto LABEL_29;
      }
    }

    v17 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      *buf = 136315650;
      v25 = "[SASCallRouteObserver _updateCallAudioRouteAllowedForRoute:]_block_invoke";
      v26 = 1024;
      v27 = v4;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&dword_1C8137000, v17, OS_LOG_TYPE_DEFAULT, "%s Updating isCallAudioRouteAllowed: %i for route %@", buf, 0x1Cu);
    }

    goto LABEL_28;
  }

LABEL_29:

  v19 = *MEMORY[0x1E69E9840];
}

@end