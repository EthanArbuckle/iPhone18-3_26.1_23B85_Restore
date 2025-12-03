@interface WLDeviceDiscoveryController
+ (id)sharedInstance;
- (WLDeviceDiscoveryController)init;
- (WLSourceDevice)sourceDevice;
- (id)_ssidWithSecret:(id)secret;
- (id)listenForConnectionOnSocket:(int)socket withConnectionHandler:(id)handler;
- (int)acceptIncomingConnectionWithListenerSocket:(int)socket nonBlocking:(BOOL)blocking;
- (int)createListenerSocketOnPort:(unint64_t)port;
- (void)_allowConnectionsFromAnyAddress;
- (void)_enableSoftAPWithSSID:(id)d password:(id)password channels:(id)channels secret:(id)secret srp:(id)srp completion:(id)completion enabled:(BOOL)enabled error:(id)self0 channel:(id)self1 currentChannel:(int64_t)self2;
- (void)_postSourceDevicesDidChangeNotification;
- (void)_queue_startDiscoveryWithPreGeneratedCode:(id)code completion:(id)completion;
- (void)_queue_stopDeviceDiscoveryWithCompletion:(id)completion;
- (void)_queue_stopWiFiAndDeviceDiscoveryWithCompletion:(id)completion;
- (void)attemptDirectConnectionToAddress:(id)address;
- (void)deviceDiscoverySocketHandler:(id)handler didDiscoverCandidate:(id)candidate;
- (void)deviceDiscoverySocketHandler:(id)handler didFailToHandshakeWithSourceDevice:(id)device error:(id)error;
- (void)deviceDiscoverySocketHandler:(id)handler didFinishHandshakeWithSourceDevice:(id)device;
- (void)enableSoftAPWithSSID:(id)d password:(id)password channels:(id)channels secret:(id)secret srp:(id)srp completion:(id)completion;
- (void)importLocalContent;
- (void)setNextIncomingConnectionHandler:(id)handler;
- (void)softAPDidStart:(BOOL)start ssid:(id)ssid psk:(id)psk secret:(id)secret srp:(id)srp channel:(id)channel error:(id)error completion:(id)self0;
- (void)startWiFiAndDeviceDiscoveryWithPreGeneratedCode:(id)code completion:(id)completion;
- (void)stopDeviceDiscoveryWithCompletion:(id)completion;
- (void)stopWiFiAndDeviceDiscoveryWithCompletion:(id)completion;
@end

@implementation WLDeviceDiscoveryController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[WLDeviceDiscoveryController sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

uint64_t __45__WLDeviceDiscoveryController_sharedInstance__block_invoke()
{
  sharedInstance_instance_0 = objc_alloc_init(WLDeviceDiscoveryController);

  return MEMORY[0x2821F96F8]();
}

- (WLDeviceDiscoveryController)init
{
  v10.receiver = self;
  v10.super_class = WLDeviceDiscoveryController;
  v2 = [(WLDeviceDiscoveryController *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_starting = 0;
    v2->_listenerSocket = -1;
    array = [MEMORY[0x277CBEB18] array];
    socketHandlers = v3->_socketHandlers;
    v3->_socketHandlers = array;

    array2 = [MEMORY[0x277CBEB18] array];
    sourceDevices = v3->_sourceDevices;
    v3->_sourceDevices = array2;

    v8 = dispatch_queue_create("com.apple.welcomekitcore.discoveryRequestSerialQueue", 0);
    [(WLDeviceDiscoveryController *)v3 setQueue:v8];
  }

  return v3;
}

- (WLSourceDevice)sourceDevice
{
  v3 = self->_sourceDevices;
  objc_sync_enter(v3);
  firstObject = [(NSMutableArray *)self->_sourceDevices firstObject];
  objc_sync_exit(v3);

  return firstObject;
}

- (void)startWiFiAndDeviceDiscoveryWithPreGeneratedCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__WLDeviceDiscoveryController_startWiFiAndDeviceDiscoveryWithPreGeneratedCode_completion___block_invoke;
  v11[3] = &unk_279EB52F0;
  objc_copyWeak(&v14, &location);
  v12 = codeCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = codeCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __90__WLDeviceDiscoveryController_startWiFiAndDeviceDiscoveryWithPreGeneratedCode_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 8) = 1;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __90__WLDeviceDiscoveryController_startWiFiAndDeviceDiscoveryWithPreGeneratedCode_completion___block_invoke_2;
    v5[3] = &unk_279EB52C8;
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v3 _queue_startDiscoveryWithPreGeneratedCode:v4 completion:v5];
  }
}

void __90__WLDeviceDiscoveryController_startWiFiAndDeviceDiscoveryWithPreGeneratedCode_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v18 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ((a2 & 1) == 0)
  {
    v16 = [MEMORY[0x277D7B8D0] sharedInstance];
    [v16 wifiDidFail];
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    (*(v17 + 16))(v17, a2, v18, v13, v14, a6, v15);
  }
}

- (void)_queue_startDiscoveryWithPreGeneratedCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  if ([(WLDeviceDiscoveryController *)self _shouldForceDiscoveryError])
  {
    _WLLog();
    if (completionCopy)
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:{MEMORY[0x277CBEC10], self}];
      (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, -1, v8);
    }
  }

  else
  {
    [(WLDeviceDiscoveryController *)self _allowConnectionsFromAnyAddress];
    if (codeCopy)
    {
      _generatePairingSecret = codeCopy;
    }

    else
    {
      _generatePairingSecret = [(WLDeviceDiscoveryController *)self _generatePairingSecret];
    }

    v10 = _generatePairingSecret;
    self->_countOfPairingAttemptsWithCurrentSecret = 0;
    v11 = objc_alloc_init(WLAutomation);
    automation = self->_automation;
    self->_automation = v11;

    [(WLAutomation *)self->_automation writeCodeForTestAutomationIfNeeded:v10];
    v13 = self->_sourceDevices;
    objc_sync_enter(v13);
    [(NSMutableArray *)self->_sourceDevices removeAllObjects];
    objc_sync_exit(v13);

    [(WLDeviceDiscoveryController *)self _postSourceDevicesDidChangeNotification];
    v14 = [v10 substringWithRange:{0, 2}];
    v15 = [(WLDeviceDiscoveryController *)self _ssidWithSecret:v14];
    v16 = [v10 substringWithRange:{2, objc_msgSend(v10, "length") - 2}];
    [(WLDeviceDiscoveryController *)self setSsid:v15];
    objc_initWeak(&location, self);
    v17 = +[WLWiFiController sharedInstance];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __84__WLDeviceDiscoveryController__queue_startDiscoveryWithPreGeneratedCode_completion___block_invoke;
    v21[3] = &unk_279EB5318;
    objc_copyWeak(&v27, &location);
    v18 = v15;
    v22 = v18;
    v23 = 0;
    v19 = v10;
    v24 = v19;
    v20 = v16;
    v25 = v20;
    v26 = completionCopy;
    [v17 preferredChannel:v21];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

void __84__WLDeviceDiscoveryController__queue_startDiscoveryWithPreGeneratedCode_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v6 = [v4 initWithObjects:{v5, 0}];

  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  _WLLog();
  [WeakRetained enableSoftAPWithSSID:*(a1 + 32) password:*(a1 + 40) channels:v6 secret:*(a1 + 48) srp:*(a1 + 56) completion:{*(a1 + 64), WeakRetained, v7, v8, v6}];
}

- (void)enableSoftAPWithSSID:(id)d password:(id)password channels:(id)channels secret:(id)secret srp:(id)srp completion:(id)completion
{
  dCopy = d;
  passwordCopy = password;
  channelsCopy = channels;
  secretCopy = secret;
  srpCopy = srp;
  completionCopy = completion;
  lastObject = [channelsCopy lastObject];
  [channelsCopy removeLastObject];
  _WLLog();
  objc_initWeak(&location, self);
  v21 = [WLWiFiController sharedInstance:self];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __92__WLDeviceDiscoveryController_enableSoftAPWithSSID_password_channels_secret_srp_completion___block_invoke;
  v29[3] = &unk_279EB5340;
  objc_copyWeak(&v37, &location);
  v22 = dCopy;
  v30 = v22;
  v23 = passwordCopy;
  v31 = v23;
  v24 = channelsCopy;
  v32 = v24;
  v25 = secretCopy;
  v33 = v25;
  v26 = srpCopy;
  v34 = v26;
  v27 = completionCopy;
  v36 = v27;
  v28 = lastObject;
  v35 = v28;
  [v21 enableSoftAPWithSSID:v22 password:v23 channel:v28 completion:v29];

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

void __92__WLDeviceDiscoveryController_enableSoftAPWithSSID_password_channels_secret_srp_completion___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  LOBYTE(v8) = a2;
  [WeakRetained _enableSoftAPWithSSID:*(a1 + 32) password:*(a1 + 40) channels:*(a1 + 48) secret:*(a1 + 56) srp:*(a1 + 64) completion:*(a1 + 80) enabled:v8 error:v7 channel:*(a1 + 72) currentChannel:a3];
}

- (void)_enableSoftAPWithSSID:(id)d password:(id)password channels:(id)channels secret:(id)secret srp:(id)srp completion:(id)completion enabled:(BOOL)enabled error:(id)self0 channel:(id)self1 currentChannel:(int64_t)self2
{
  dCopy = d;
  passwordCopy = password;
  channelsCopy = channels;
  secretCopy = secret;
  srpCopy = srp;
  completionCopy = completion;
  errorCopy = error;
  channelCopy = channel;
  objc_initWeak(location, self);
  queue = [(WLDeviceDiscoveryController *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __130__WLDeviceDiscoveryController__enableSoftAPWithSSID_password_channels_secret_srp_completion_enabled_error_channel_currentChannel___block_invoke;
  block[3] = &unk_279EB5368;
  objc_copyWeak(v44, location);
  enabledCopy = enabled;
  v36 = errorCopy;
  v37 = channelsCopy;
  v38 = channelCopy;
  v39 = dCopy;
  v40 = passwordCopy;
  v41 = secretCopy;
  v42 = srpCopy;
  v43 = completionCopy;
  v44[1] = currentChannel;
  v26 = completionCopy;
  v27 = srpCopy;
  v28 = secretCopy;
  v29 = passwordCopy;
  v30 = dCopy;
  v31 = channelCopy;
  v32 = channelsCopy;
  v33 = errorCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v44);
  objc_destroyWeak(location);
}

void __130__WLDeviceDiscoveryController__enableSoftAPWithSSID_password_channels_secret_srp_completion_enabled_error_channel_currentChannel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  if ((!*(a1 + 112) || *(a1 + 32)) && [*(a1 + 40) count])
  {
    v6 = *(a1 + 48);
    _WLLog();
    [WeakRetained enableSoftAPWithSSID:*(a1 + 56) password:*(a1 + 64) channels:*(a1 + 40) secret:*(a1 + 72) srp:*(a1 + 80) completion:{*(a1 + 88), WeakRetained, v6}];
  }

  else
  {
    v2 = *(a1 + 48);
    if (*(a1 + 104) < 1)
    {
      v4 = WeakRetained;
    }

    else
    {
      v7 = *(a1 + 104);
      _WLLog();
      v3 = [MEMORY[0x277CCABB0] numberWithInteger:{*(a1 + 104), WeakRetained, v7}];

      v4 = WeakRetained;
      v2 = v3;
    }

    v5 = *(a1 + 32);
    [v4 softAPDidStart:*(a1 + 112) ssid:*(a1 + 56) psk:*(a1 + 64) secret:*(a1 + 72) srp:*(a1 + 80) channel:v2 error:v5 completion:*(a1 + 88)];
  }
}

- (void)softAPDidStart:(BOOL)start ssid:(id)ssid psk:(id)psk secret:(id)secret srp:(id)srp channel:(id)channel error:(id)error completion:(id)self0
{
  v46[1] = *MEMORY[0x277D85DE8];
  ssidCopy = ssid;
  pskCopy = psk;
  secretCopy = secret;
  srpCopy = srp;
  channelCopy = channel;
  errorCopy = error;
  completionCopy = completion;
  v23 = completionCopy;
  if (self->_starting)
  {
    if ([ssidCopy isEqualToString:self->_ssid])
    {
      if (start)
      {
        if (self->_listenerSocket == -1 && (v24 = [(WLDeviceDiscoveryController *)self createListenerSocketOnPort:59523], self->_listenerSocket = v24, v24 == -1))
        {
          _WLLog();
          if (v23)
          {
            v23[2](v23, 0, 0, 0, 0, -1, 0);
          }
        }

        else
        {
          selfCopy = self;
          objc_sync_enter(selfCopy);
          v26 = selfCopy;
          listenerSocket = self->_listenerSocket;
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __91__WLDeviceDiscoveryController_softAPDidStart_ssid_psk_secret_srp_channel_error_completion___block_invoke;
          v40[3] = &unk_279EB5390;
          v28 = v26;
          v41 = v28;
          v42 = srpCopy;
          v29 = [(WLDeviceDiscoveryController *)v28 listenForConnectionOnSocket:listenerSocket withConnectionHandler:v40];
          incomingConnSource = v28->_incomingConnSource;
          v28->_incomingConnSource = v29;

          objc_sync_exit(v28);
          if (v23)
          {
            (v23)[2](v23, 1, ssidCopy, pskCopy, secretCopy, [channelCopy integerValue], 0);
          }
        }
      }

      else if (v23)
      {
        (v23)[2](v23, 0, 0, 0, 0, -1, errorCopy);
      }
    }

    else if (v23)
    {
      selfCopy2 = self;
      _WLLog();
      v34 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA450];
      v44 = @"a new SSID was already requested.";
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:{1, selfCopy2}];
      v36 = [v34 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v35];

      (v23)[2](v23, 0, 0, 0, 0, -1, v36);
    }
  }

  else if (completionCopy)
  {
    selfCopy3 = self;
    _WLLog();
    v31 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA450];
    v46[0] = @"it is being stopped.";
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:{1, selfCopy3}];
    v33 = [v31 errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:v32];

    (v23)[2](v23, 0, 0, 0, 0, -1, v33);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)stopDeviceDiscoveryWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__WLDeviceDiscoveryController_stopDeviceDiscoveryWithCompletion___block_invoke;
  block[3] = &unk_279EB53E0;
  objc_copyWeak(&v9, &location);
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __65__WLDeviceDiscoveryController_stopDeviceDiscoveryWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __65__WLDeviceDiscoveryController_stopDeviceDiscoveryWithCompletion___block_invoke_2;
    v3[3] = &unk_279EB53B8;
    v4 = *(a1 + 32);
    [WeakRetained _queue_stopDeviceDiscoveryWithCompletion:v3];
  }
}

uint64_t __65__WLDeviceDiscoveryController_stopDeviceDiscoveryWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)stopWiFiAndDeviceDiscoveryWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__WLDeviceDiscoveryController_stopWiFiAndDeviceDiscoveryWithCompletion___block_invoke;
  v7[3] = &unk_279EB52F0;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __72__WLDeviceDiscoveryController_stopWiFiAndDeviceDiscoveryWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 8) = 0;
    v5 = *(a1 + 32);
    _WLLog();
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __72__WLDeviceDiscoveryController_stopWiFiAndDeviceDiscoveryWithCompletion___block_invoke_2;
    v6[3] = &unk_279EB5408;
    v4 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v4;
    [v3 _queue_stopWiFiAndDeviceDiscoveryWithCompletion:{v6, v5}];
    [v3[8] deleteTestAutomationCachesIfNeeded];
  }
}

void __72__WLDeviceDiscoveryController_stopWiFiAndDeviceDiscoveryWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  _WLLog();

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v8);
  }
}

- (void)_queue_stopDeviceDiscoveryWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 1, 0);
  }
}

- (void)_queue_stopWiFiAndDeviceDiscoveryWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nextIncomingConnectionHandler = selfCopy->_nextIncomingConnectionHandler;
  if (nextIncomingConnectionHandler)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7B8F8] code:1 userInfo:0];
    nextIncomingConnectionHandler[2](nextIncomingConnectionHandler, 0, v6);

    v7 = selfCopy->_nextIncomingConnectionHandler;
    selfCopy->_nextIncomingConnectionHandler = 0;
  }

  objc_sync_exit(selfCopy);

  incomingConnSource = selfCopy->_incomingConnSource;
  if (incomingConnSource)
  {
    dispatch_source_cancel(incomingConnSource);
    v9 = selfCopy->_incomingConnSource;
    selfCopy->_incomingConnSource = 0;
  }

  _WLLog();
  v10 = +[WLWiFiController sharedInstance];
  [v10 disableSoftAPWithCompletion:&__block_literal_global_66];

  v11 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
    v11 = completionCopy;
  }
}

- (void)importLocalContent
{
  v5 = objc_alloc_init(MEMORY[0x277D7B8B8]);
  [v5 setName:@"Local Import"];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v5 setPersistentIdentifier:uUIDString];

  [v5 setIsLocal:1];
  _WLLog();
  [(WLDeviceDiscoveryController *)self deviceDiscoverySocketHandler:0 didFinishHandshakeWithSourceDevice:v5, self, v5];
}

- (void)attemptDirectConnectionToAddress:(id)address
{
  v4 = MEMORY[0x277D7B8B8];
  addressCopy = address;
  v11 = objc_alloc_init(v4);
  v6 = [addressCopy componentsSeparatedByString:@":"];

  v7 = [v6 objectAtIndexedSubscript:0];
  [v11 setIpAddress:v7];

  if ([v6 count] < 2)
  {
    [v11 setHttpPort:80];
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:1];
    [v11 setHttpPort:{objc_msgSend(v8, "integerValue")}];
  }

  [v11 setName:@"Direct Connection"];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v11 setPersistentIdentifier:uUIDString];

  _WLLog();
  [(WLDeviceDiscoveryController *)self deviceDiscoverySocketHandler:0 didFinishHandshakeWithSourceDevice:v11, self, v11];
}

- (void)setNextIncomingConnectionHandler:(id)handler
{
  if (handler)
  {
    obj = self;
    handlerCopy = handler;
    objc_sync_enter(obj);
    v5 = MEMORY[0x2743DF630](handlerCopy);

    nextIncomingConnectionHandler = obj->_nextIncomingConnectionHandler;
    obj->_nextIncomingConnectionHandler = v5;

    objc_sync_exit(obj);
  }
}

- (id)_ssidWithSecret:(id)secret
{
  v3 = [WLAuthenticationUtilities hashWithString:secret];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 substringToIndex:5];
  v6 = [v4 stringWithFormat:@"iOS %@", v5];

  return v6;
}

- (int)createListenerSocketOnPort:(unint64_t)port
{
  portCopy = port;
  v10 = *MEMORY[0x277D85DE8];
  v4 = socket(2, 1, 0);
  v8 = 1;
  setsockopt(v4, 0xFFFF, 4130, &v8, 4u);
  *&v9.sa_len = 528;
  *v9.sa_data = bswap32(portCopy) >> 16;
  *&v9.sa_data[2] = 0;
  *&v9.sa_data[10] = 0;
  v7 = 1;
  if (setsockopt(v4, 0xFFFF, 4, &v7, 4u) < 0 || bind(v4, &v9, 0x10u) < 0 || listen(v4, 128) < 0)
  {
    _WLLog();
    v4 = -1;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)listenForConnectionOnSocket:(int)socket withConnectionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = dispatch_source_create(MEMORY[0x277D85D28], socket, 0, MEMORY[0x277D85CD0]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__WLDeviceDiscoveryController_listenForConnectionOnSocket_withConnectionHandler___block_invoke;
  v9[3] = &unk_279EB5450;
  v10 = handlerCopy;
  socketCopy = socket;
  v7 = handlerCopy;
  dispatch_source_set_event_handler(v6, v9);
  dispatch_resume(v6);

  return v6;
}

uint64_t __81__WLDeviceDiscoveryController_listenForConnectionOnSocket_withConnectionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (int)acceptIncomingConnectionWithListenerSocket:(int)socket nonBlocking:(BOOL)blocking
{
  blockingCopy = blocking;
  v27 = *MEMORY[0x277D85DE8];
  *&v26.sa_len = 0;
  *&v26.sa_data[6] = 0;
  v24 = 16;
  v6 = accept(socket, &v26, &v24);
  v7 = v6;
  if (v6 == -1)
  {
    _WLLog();
LABEL_19:
    v7 = -1;
    goto LABEL_20;
  }

  v23 = 1;
  setsockopt(v6, 0xFFFF, 4130, &v23, 4u);
  v8 = fcntl(v7, 3, 0) & 0xFFFFFFFB;
  if (blockingCopy)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  if (fcntl(v7, 4, v8 | v9) == -1)
  {
    _WLLog();
    goto LABEL_19;
  }

  *&v25.sa_len = 0;
  *&v25.sa_data[6] = 0;
  v22 = 16;
  if (getpeername(v7, &v25, &v22) == -1)
  {
    _WLLog();
    goto LABEL_19;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12.s_addr = *&v25.sa_data[2];
  v13 = [v11 initWithCString:inet_ntoa(v12) encoding:4];
  v14 = +[WLWiFiController sharedInstance];
  v15 = [v14 isIPAddressInRange:v13];

  if ((v15 & 1) == 0)
  {
    _WLLog();
    goto LABEL_15;
  }

  allowedAddress = selfCopy->_allowedAddress;
  if (!allowedAddress)
  {
    _WLLog();
    objc_storeStrong(&selfCopy->_allowedAddress, v13);
    goto LABEL_17;
  }

  if (![(NSString *)allowedAddress isEqualToString:v13])
  {
LABEL_15:
    v17.s_addr = *&v25.sa_data[2];
    inet_ntoa(v17);
    v21 = selfCopy->_allowedAddress;
    _WLLog();
    close(v7);
    v7 = -1;
  }

LABEL_17:

  objc_sync_exit(selfCopy);
  if (v7 == -1)
  {
    goto LABEL_19;
  }

  v18.s_addr = *&v25.sa_data[2];
  inet_ntoa(v18);
  _WLLog();
LABEL_20:
  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)_allowConnectionsFromAnyAddress
{
  obj = self;
  objc_sync_enter(obj);
  allowedAddress = obj->_allowedAddress;
  _WLLog();
  v2 = obj->_allowedAddress;
  obj->_allowedAddress = 0;

  objc_sync_exit(obj);
}

- (void)_postSourceDevicesDidChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = *MEMORY[0x277D7B920];

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);
}

- (void)deviceDiscoverySocketHandler:(id)handler didDiscoverCandidate:(id)candidate
{
  handlerCopy = handler;
  candidateCopy = candidate;
  _WLLog();
  v7 = self->_sourceDevices;
  objc_sync_enter(v7);
  [(NSMutableArray *)self->_sourceDevices removeAllObjects:self];
  [(NSMutableArray *)self->_sourceDevices addObject:candidateCopy];
  objc_sync_exit(v7);

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D7B918], 0, 0, 1u);
}

- (void)deviceDiscoverySocketHandler:(id)handler didFinishHandshakeWithSourceDevice:(id)device
{
  handlerCopy = handler;
  deviceCopy = device;
  _WLLog();
  v7 = self->_sourceDevices;
  objc_sync_enter(v7);
  [(NSMutableArray *)self->_sourceDevices removeAllObjects:self];
  [(NSMutableArray *)self->_sourceDevices addObject:deviceCopy];
  objc_sync_exit(v7);

  [(WLDeviceDiscoveryController *)self _postSourceDevicesDidChangeNotification];
}

- (void)deviceDiscoverySocketHandler:(id)handler didFailToHandshakeWithSourceDevice:(id)device error:(id)error
{
  handlerCopy = handler;
  deviceCopy = device;
  errorCopy = error;
  _WLLog();
  close([handlerCopy sockfd]);
  [handlerCopy suspend];
  v11 = self->_socketHandlers;
  objc_sync_enter(v11);
  [(NSMutableArray *)self->_socketHandlers removeObject:handlerCopy];
  objc_sync_exit(v11);

  [(WLDeviceDiscoveryController *)self _allowConnectionsFromAnyAddress];
  mEMORY[0x277D7B8D0] = [MEMORY[0x277D7B8D0] sharedInstance];
  [mEMORY[0x277D7B8D0] deviceDidFailWithAuthenticationError];

  _WLLog();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D7B928], 0, 0, 1u);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __101__WLDeviceDiscoveryController_deviceDiscoverySocketHandler_didFailToHandshakeWithSourceDevice_error___block_invoke;
  v14[3] = &unk_279EB5478;
  v14[4] = self;
  [(WLDeviceDiscoveryController *)self stopWiFiAndDeviceDiscoveryWithCompletion:v14, self];
}

void __101__WLDeviceDiscoveryController_deviceDiscoverySocketHandler_didFailToHandshakeWithSourceDevice_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithBool:a2];
  _WLLog();
}

@end