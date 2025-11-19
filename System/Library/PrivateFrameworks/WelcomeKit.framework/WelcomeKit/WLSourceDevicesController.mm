@interface WLSourceDevicesController
- (WLSourceDevicesController)init;
- (WLSourceDevicesController)initWithDelegate:(id)a3;
- (WLSourceDevicesDelegate)delegate;
- (void)attemptDirectConnectionToAddress:(id)a3;
- (void)dealloc;
- (void)startWiFiAndDeviceDiscoveryWithCompletion:(id)a3;
- (void)stopDeviceDiscoveryWithCompletion:(id)a3;
- (void)stopWiFiAndDeviceDiscoveryWithCompletion:(id)a3;
@end

@implementation WLSourceDevicesController

- (WLSourceDevicesController)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(WLSourceDevicesController *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (WLSourceDevicesController)init
{
  v7.receiver = self;
  v7.super_class = WLSourceDevicesController;
  v2 = [(WLDaemonConnection *)&v7 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _didDiscoverCandidate, @"com.apple.welcomekit.device.discovered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v4, v2, _sourceDevicesDidChange, @"com.apple.welcomekit.sourceDevicesChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, v2, _wifiAndDeviceDiscoveryDidGetInterrupted, @"com.apple.welcomekit.wifiAndDeviceDiscoveryDidBecomeInvalid", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.welcomekit.device.discovered", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"com.apple.welcomekit.sourceDevicesChanged", 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, @"com.apple.welcomekit.wifiAndDeviceDiscoveryDidBecomeInvalid", 0);
  v6.receiver = self;
  v6.super_class = WLSourceDevicesController;
  [(WLSourceDevicesController *)&v6 dealloc];
}

- (void)startWiFiAndDeviceDiscoveryWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__WLSourceDevicesController_startWiFiAndDeviceDiscoveryWithCompletion___block_invoke;
  v9[3] = &unk_279EB4128;
  v9[4] = self;
  v5 = [(WLDaemonConnection *)self daemonWithErrorHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__WLSourceDevicesController_startWiFiAndDeviceDiscoveryWithCompletion___block_invoke_2;
  v7[3] = &unk_279EB41E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 startWiFiAndDeviceDiscovery:v7];
}

void __71__WLSourceDevicesController_startWiFiAndDeviceDiscoveryWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v23 = a3;
  v14 = a4;
  v15 = a5;
  v21 = a7;
  v22 = *(a1 + 40);
  if (v22)
  {
    (*(v22 + 16))(v22, a2, v23, v14, v15, a6, v21);
  }

  if (v21)
  {
    _WLLog(v7, 0, @"%@: Error from daemon starting wifi and device discovery - %@", v16, v17, v18, v19, v20, *(a1 + 32));
  }
}

- (void)stopDeviceDiscoveryWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__WLSourceDevicesController_stopDeviceDiscoveryWithCompletion___block_invoke;
  v9[3] = &unk_279EB4128;
  v9[4] = self;
  v5 = [(WLDaemonConnection *)self daemonWithErrorHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__WLSourceDevicesController_stopDeviceDiscoveryWithCompletion___block_invoke_2;
  v7[3] = &unk_279EB4210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 stopDeviceDiscovery:v7];
}

uint64_t __63__WLSourceDevicesController_stopDeviceDiscoveryWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v12 = *(a1 + 40);
  v14 = v6;
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v6);
    v6 = v14;
  }

  if (v6)
  {
    _WLLog(v3, 0, @"%@: Error from daemon stopping device discovery - %@", v7, v8, v9, v10, v11, *(a1 + 32));
  }

  return MEMORY[0x2821F9730]();
}

- (void)stopWiFiAndDeviceDiscoveryWithCompletion:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__WLSourceDevicesController_stopWiFiAndDeviceDiscoveryWithCompletion___block_invoke;
  v9[3] = &unk_279EB4128;
  v9[4] = self;
  v5 = [(WLDaemonConnection *)self daemonWithErrorHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__WLSourceDevicesController_stopWiFiAndDeviceDiscoveryWithCompletion___block_invoke_2;
  v7[3] = &unk_279EB4210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 stopWiFiAndDeviceDiscovery:v7];
}

uint64_t __70__WLSourceDevicesController_stopWiFiAndDeviceDiscoveryWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v12 = *(a1 + 40);
  v14 = v6;
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v6);
    v6 = v14;
  }

  if (v6)
  {
    _WLLog(v3, 0, @"%@: Error from daemon stopping wifi and device discovery - %@", v7, v8, v9, v10, v11, *(a1 + 32));
  }

  return MEMORY[0x2821F9730]();
}

- (void)attemptDirectConnectionToAddress:(id)a3
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__WLSourceDevicesController_attemptDirectConnectionToAddress___block_invoke;
  v6[3] = &unk_279EB4128;
  v6[4] = self;
  v4 = a3;
  v5 = [(WLDaemonConnection *)self daemonWithErrorHandler:v6];
  [v5 attemptDirectConnectionToAddress:v4];
}

- (WLSourceDevicesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end