@interface WLWiFiController
+ (id)sharedInstance;
- (WLWiFiController)init;
- (id)_initWithWiFiManager:(id)manager netrbClient:(id)client;
- (id)_networkRecordFromSSID:(id)d password:(id)password channel:(id)channel;
- (id)_startedNetwork;
- (unint64_t)_newRequestID;
- (void)_disableSoftAPWithCompletion:(id)completion;
- (void)_enableSoftAPWithSSID:(id)d password:(id)password channel:(id)channel completion:(id)completion;
- (void)_ensureStartedNetworkReflectsPreferences;
- (void)_startWiFiWithSSID:(id)d password:(id)password channel:(id)channel completion:(id)completion;
- (void)_stopWiFiWithCompletion:(id)completion;
- (void)disableSoftAPWithCompletion:(id)completion;
- (void)enableSoftAPWithSSID:(id)d password:(id)password channel:(id)channel completion:(id)completion;
@end

@implementation WLWiFiController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[WLWiFiController sharedInstance];
  }

  v3 = sharedInstance_instance_1;

  return v3;
}

uint64_t __34__WLWiFiController_sharedInstance__block_invoke()
{
  sharedInstance_instance_1 = objc_alloc_init(WLWiFiController);

  return MEMORY[0x2821F96F8]();
}

- (WLWiFiController)init
{
  v3 = objc_alloc_init(WLWiFiManager);
  v4 = objc_alloc_init(WLNETRBClient);
  v5 = [(WLWiFiController *)self _initWithWiFiManager:v3 netrbClient:v4];

  return v5;
}

- (id)_initWithWiFiManager:(id)manager netrbClient:(id)client
{
  managerCopy = manager;
  clientCopy = client;
  v13.receiver = self;
  v13.super_class = WLWiFiController;
  v9 = [(WLWiFiController *)&v13 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.welcomekitcore.wificontroller.requestqueue", 0);
    requestQueue = v9->_requestQueue;
    v9->_requestQueue = v10;

    objc_storeStrong(&v9->_wifiManager, manager);
    objc_storeStrong(&v9->_netrbClient, client);
  }

  return v9;
}

- (unint64_t)_newRequestID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lastRequestID + 1;
  selfCopy->_lastRequestID = v3;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)enableSoftAPWithSSID:(id)d password:(id)password channel:(id)channel completion:(id)completion
{
  dCopy = d;
  passwordCopy = password;
  channelCopy = channel;
  completionCopy = completion;
  _WLLog();
  if ([MEMORY[0x277D7B8B0] BOOLForKey:{*MEMORY[0x277D7B8E8], self}] == 1)
  {
    _WLLog();
    completionCopy[2](completionCopy, 1, -1, 0);
  }

  else if (-[WLWiFiController hasSoftAPCapability](self, "hasSoftAPCapability") && [dCopy length])
  {
    _newRequestID = [(WLWiFiController *)self _newRequestID];
    _WLLog();
    requestQueue = self->_requestQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__WLWiFiController_enableSoftAPWithSSID_password_channel_completion___block_invoke;
    block[3] = &unk_279EB62B0;
    v21 = _newRequestID;
    block[4] = self;
    v17 = dCopy;
    v18 = passwordCopy;
    v19 = channelCopy;
    v20 = completionCopy;
    dispatch_async(requestQueue, block);
  }

  else
  {
    _WLLog();
    completionCopy[2](completionCopy, 0, -1, 0);
  }
}

void __69__WLWiFiController_enableSoftAPWithSSID_password_channel_completion___block_invoke(uint64_t a1)
{
  v8 = *(a1 + 72);
  _WLLog();
  dispatch_suspend(*(*(a1 + 32) + 8));
  [*(a1 + 32) _ensureStartedNetworkReflectsPreferences];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__WLWiFiController_enableSoftAPWithSSID_password_channel_completion___block_invoke_2;
  v10[3] = &unk_279EB6288;
  v9 = *(a1 + 32);
  v2 = *(&v9 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v11 = v9;
  v12 = v5;
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v13 = v6;
  v14 = v7;
  [v9 _disableSoftAPWithCompletion:v10];
}

void __69__WLWiFiController_enableSoftAPWithSSID_password_channel_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__WLWiFiController_enableSoftAPWithSSID_password_channel_completion___block_invoke_3;
  v8[3] = &unk_279EB6260;
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v9 = v6;
  v10 = v7;
  v8[4] = *(a1 + 32);
  [v2 _enableSoftAPWithSSID:v3 password:v4 channel:v5 completion:v8];
}

void __69__WLWiFiController_enableSoftAPWithSSID_password_channel_completion___block_invoke_3(void *a1)
{
  (*(a1[5] + 16))();
  v3 = a1[6];
  _WLLog();
  v2 = *(a1[4] + 8);

  dispatch_resume(v2);
}

- (void)_enableSoftAPWithSSID:(id)d password:(id)password channel:(id)channel completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__WLWiFiController__enableSoftAPWithSSID_password_channel_completion___block_invoke;
  v12[3] = &unk_279EB6300;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [(WLWiFiController *)self _startWiFiWithSSID:d password:password channel:channel completion:v12];
}

void __70__WLWiFiController__enableSoftAPWithSSID_password_channel_completion___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  _WLLog();
  if (a2)
  {
    v8 = *(*(a1 + 32) + 48);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__WLWiFiController__enableSoftAPWithSSID_password_channel_completion___block_invoke_2;
    v9[3] = &unk_279EB62D8;
    v10 = *(a1 + 40);
    v11 = a3;
    v9[4] = *(a1 + 32);
    [v8 startDHCPWithCompletion:v9];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __70__WLWiFiController__enableSoftAPWithSSID_password_channel_completion___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    _WLLog();
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    _WLLog();
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __70__WLWiFiController__enableSoftAPWithSSID_password_channel_completion___block_invoke_3;
    v6[3] = &unk_279EB53B8;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v5 _stopWiFiWithCompletion:v6];
  }
}

- (void)disableSoftAPWithCompletion:(id)completion
{
  completionCopy = completion;
  _newRequestID = [(WLWiFiController *)self _newRequestID];
  _WLLog();
  requestQueue = self->_requestQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WLWiFiController_disableSoftAPWithCompletion___block_invoke;
  block[3] = &unk_279EB6350;
  v9 = completionCopy;
  v10 = _newRequestID;
  block[4] = self;
  v6 = completionCopy;
  dispatch_async(requestQueue, block);
}

void __48__WLWiFiController_disableSoftAPWithCompletion___block_invoke(uint64_t a1)
{
  v5 = *(a1 + 48);
  _WLLog();
  dispatch_suspend(*(*(a1 + 32) + 8));
  [*(a1 + 32) _ensureStartedNetworkReflectsPreferences];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__WLWiFiController_disableSoftAPWithCompletion___block_invoke_2;
  v6[3] = &unk_279EB6328;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v6[4] = *(a1 + 32);
  [v2 _disableSoftAPWithCompletion:v6];
}

void __48__WLWiFiController_disableSoftAPWithCompletion___block_invoke_2(void *a1)
{
  (*(a1[5] + 16))();
  v3 = a1[6];
  _WLLog();
  v2 = *(a1[4] + 8);

  dispatch_resume(v2);
}

- (void)_disableSoftAPWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  startedNetwork = selfCopy->_startedNetwork;
  objc_sync_exit(selfCopy);

  _WLLog();
  if (startedNetwork)
  {
    netrbClient = selfCopy->_netrbClient;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__WLWiFiController__disableSoftAPWithCompletion___block_invoke;
    v8[3] = &unk_279EB63A0;
    v8[4] = selfCopy;
    v9 = completionCopy;
    [(WLNETRBClient *)netrbClient stopDHCPWithCompletion:v8];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

void __49__WLWiFiController__disableSoftAPWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  _WLLog();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__WLWiFiController__disableSoftAPWithCompletion___block_invoke_2;
  v6[3] = &unk_279EB6378;
  v8 = v2;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v4 _stopWiFiWithCompletion:{v6, a2}];
}

void __49__WLWiFiController__disableSoftAPWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  _WLLog();
  (*(*(a1 + 32) + 16))(*(a1 + 32), a2);
}

- (void)_ensureStartedNetworkReflectsPreferences
{
  if (!self->_didConsultPreferencesForStartedNetwork)
  {
    self->_didConsultPreferencesForStartedNetwork = 1;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    p_startedNetwork = &selfCopy->_startedNetwork;
    v11 = selfCopy->_startedNetwork;
    objc_sync_exit(selfCopy);

    v5 = v11;
    if (!v11)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v7 = [standardUserDefaults stringForKey:*MEMORY[0x277D7B8E0]];

      if (v7)
      {
        createDeviceClient = [(WLWiFiManager *)selfCopy->_wifiManager createDeviceClient];
        v9 = [createDeviceClient hostedNetworkMatchingSSID:v7];
        if (v9)
        {
          v10 = selfCopy;
          objc_sync_enter(v10);
          objc_storeStrong(p_startedNetwork, v9);
          objc_sync_exit(v10);
        }
      }

      v5 = 0;
    }
  }
}

- (id)_startedNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  requestQueue = self->_requestQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__WLWiFiController__startedNetwork__block_invoke;
  v5[3] = &unk_279EB63C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(requestQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __35__WLWiFiController__startedNetwork__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureStartedNetworkReflectsPreferences];
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 40));
  objc_sync_exit(obj);
}

- (void)_startWiFiWithSSID:(id)d password:(id)password channel:(id)channel completion:(id)completion
{
  dCopy = d;
  passwordCopy = password;
  channelCopy = channel;
  completionCopy = completion;
  createDeviceClient = [(WLWiFiManager *)self->_wifiManager createDeviceClient];
  if (createDeviceClient)
  {
    v15 = [(WLWiFiController *)self _networkRecordFromSSID:dCopy password:passwordCopy channel:channelCopy];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__WLWiFiController__startWiFiWithSSID_password_channel_completion___block_invoke;
    v16[3] = &unk_279EB63F0;
    v16[4] = self;
    v17 = completionCopy;
    [createDeviceClient startNetworkWithHostRole:2 request:v15 completion:v16];
  }

  else
  {
    _WLLog();
    (*(completionCopy + 2))(completionCopy, 0, -1, 0);
  }
}

void __67__WLWiFiController__startWiFiWithSSID_password_channel_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3 != 0;
  _WLLog();
  if (v3)
  {
    v4 = [v3 ssid];
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v5 setObject:v4 forKey:*MEMORY[0x277D7B8E0]];
  }

  else
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v4 removeObjectForKey:*MEMORY[0x277D7B8E0]];
  }

  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = *(a1 + 32);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;
  v10 = v3;

  objc_sync_exit(v6);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3 != 0, [v10 channel], 0);
}

- (id)_networkRecordFromSSID:(id)d password:(id)password channel:(id)channel
{
  dCopy = d;
  v7 = MEMORY[0x277CBEB38];
  channelCopy = channel;
  dictionary = [v7 dictionary];
  [dictionary setObject:MEMORY[0x277CBEC38] forKey:@"HIDDEN_NETWORK"];
  v10 = [MEMORY[0x277CCABB0] numberWithShort:1];
  [dictionary setObject:v10 forKey:@"AP_MODE_AUTH_LOWER"];

  v11 = [MEMORY[0x277CCABB0] numberWithShort:0];
  [dictionary setObject:v11 forKey:@"AP_MODE_AUTH_UPPER"];

  v12 = [dCopy dataUsingEncoding:4];
  [dictionary setObject:dCopy forKey:@"SSID_STR"];
  [dictionary setObject:v12 forKey:@"AP_MODE_SSID_BYTES"];
  [dictionary setObject:channelCopy forKey:@"CHANNEL"];

  v13 = dCopy;
  v14 = MEMORY[0x277CCABB0];
  if (v13)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithShort:8];
    [dictionary setObject:v15 forKey:@"AP_MODE_AUTH_UPPER"];

    [dictionary setObject:v13 forKey:@"AP_MODE_KEY"];
    v14 = MEMORY[0x277CCABB0];
    v16 = 10;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v14 numberWithInt:v16];
  [dictionary setObject:v17 forKey:@"AP_MODE_CYPHER_TYPE"];

  v18 = [dictionary copy];

  return v18;
}

- (void)_stopWiFiWithCompletion:(id)completion
{
  completionCopy = completion;
  _WLLog();
  createDeviceClient = [(WLWiFiManager *)self->_wifiManager createDeviceClient];
  if (createDeviceClient)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = selfCopy->_startedNetwork;
    objc_sync_exit(selfCopy);

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__WLWiFiController__stopWiFiWithCompletion___block_invoke;
    v8[3] = &unk_279EB63A0;
    v8[4] = selfCopy;
    v9 = completionCopy;
    [createDeviceClient stopNetwork:v7 completion:v8];
  }

  else
  {
    _WLLog();
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

uint64_t __44__WLWiFiController__stopWiFiWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  _WLLog();
  if (v2)
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v4 removeObjectForKey:*MEMORY[0x277D7B8E0]];

    v5 = *(a1 + 32);
    objc_sync_enter(v5);
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;

    objc_sync_exit(v5);
  }

  v8 = *(*(a1 + 40) + 16);

  return v8();
}

@end