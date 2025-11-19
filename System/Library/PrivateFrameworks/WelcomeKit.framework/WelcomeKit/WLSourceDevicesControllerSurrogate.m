@interface WLSourceDevicesControllerSurrogate
- (WLSourceDevicesControllerSurrogate)initWithDelegate:(id)a3;
- (void)scheduleSurrogateDeviceDiscovery;
- (void)startWiFiAndDeviceDiscoveryWithCompletion:(id)a3;
- (void)stopDeviceDiscoveryWithCompletion:(id)a3;
- (void)stopWiFiAndDeviceDiscoveryWithCompletion:(id)a3;
@end

@implementation WLSourceDevicesControllerSurrogate

- (WLSourceDevicesControllerSurrogate)initWithDelegate:(id)a3
{
  v7.receiver = self;
  v7.super_class = WLSourceDevicesControllerSurrogate;
  v3 = [(WLSourceDevicesController *)&v7 initWithDelegate:a3];
  if (v3)
  {
    v4 = dispatch_queue_create("com.apple.welcomekit.sourceDeviceControllerSurrogate", 0);
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v4;
  }

  return v3;
}

- (void)startWiFiAndDeviceDiscoveryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_time(0, 500000000);
  serialQueue = self->_serialQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__WLSourceDevicesControllerSurrogate_startWiFiAndDeviceDiscoveryWithCompletion___block_invoke;
  v8[3] = &unk_279EB4260;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_after(v5, serialQueue, v8);
}

void __80__WLSourceDevicesControllerSurrogate_startWiFiAndDeviceDiscoveryWithCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 48) = 1;
  v2 = [MEMORY[0x277CCAD78] UUID];
  obj = [v2 UUIDString];

  objc_storeStrong((*(a1 + 32) + 56), obj);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%06u", arc4random_uniform(0xF423Fu)];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, 1, @"fake ssid", @"fake psk", v3, -1, 0);
  }
}

- (void)scheduleSurrogateDeviceDiscovery
{
  v3 = dispatch_time(0, 1000000000);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__WLSourceDevicesControllerSurrogate_scheduleSurrogateDeviceDiscovery__block_invoke;
  block[3] = &unk_279EB4288;
  block[4] = self;
  dispatch_after(v3, serialQueue, block);
}

void __70__WLSourceDevicesControllerSurrogate_scheduleSurrogateDeviceDiscovery__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 56))
  {
    v3 = objc_alloc_init(WLSourceDevice);
    [(WLSourceDevice *)v3 setName:@"UI Test Mode"];
    v2 = [*(a1 + 32) delegate];
    [v2 sourceDeviceController:*(a1 + 32) didDiscoverDevice:v3];
  }
}

- (void)stopDeviceDiscoveryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_time(0, 100000000);
  serialQueue = self->_serialQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__WLSourceDevicesControllerSurrogate_stopDeviceDiscoveryWithCompletion___block_invoke;
  v8[3] = &unk_279EB4260;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_after(v5, serialQueue, v8);
}

uint64_t __72__WLSourceDevicesControllerSurrogate_stopDeviceDiscoveryWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48) == 1)
  {
    v3 = *(v2 + 56);
    *(v2 + 56) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)stopWiFiAndDeviceDiscoveryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = dispatch_time(0, 100000000);
  serialQueue = self->_serialQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__WLSourceDevicesControllerSurrogate_stopWiFiAndDeviceDiscoveryWithCompletion___block_invoke;
  v8[3] = &unk_279EB4260;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_after(v5, serialQueue, v8);
}

uint64_t __79__WLSourceDevicesControllerSurrogate_stopWiFiAndDeviceDiscoveryWithCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 48) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

@end