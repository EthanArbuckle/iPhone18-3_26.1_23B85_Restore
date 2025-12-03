@interface HIDAACPRemoteEndpoint
- (void)addDevice:(id)device;
- (void)handlePropertyChange:(id)change;
- (void)registerPropertyNotification:(id)notification;
- (void)removeAllDevices;
@end

@implementation HIDAACPRemoteEndpoint

- (void)addDevice:(id)device
{
  deviceCopy = device;
  v5.receiver = self;
  v5.super_class = HIDAACPRemoteEndpoint;
  [(HIDRemoteEndpoint *)&v5 addDevice:deviceCopy];
  [(HIDAACPRemoteEndpoint *)self registerPropertyNotification:deviceCopy];
}

- (void)removeAllDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  devices = [(HIDRemoteEndpoint *)self devices];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__HIDAACPRemoteEndpoint_removeAllDevices__block_invoke;
  v6[3] = &unk_279AFD140;
  v6[4] = &v7;
  [devices enumerateObjectsUsingBlock:v6];

  if (*(v8 + 24) == 1)
  {
    server = [(HIDAACPRemoteEndpoint *)self server];
    [server timeSyncEnable:0 forEndpointID:{-[HIDRemoteEndpoint endpointID](self, "endpointID")}];
  }

  v5.receiver = self;
  v5.super_class = HIDAACPRemoteEndpoint;
  [(HIDRemoteEndpoint *)&v5 removeAllDevices];
  _Block_object_dispose(&v7, 8);
}

uint64_t __41__HIDAACPRemoteEndpoint_removeAllDevices__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 enableTS];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (void)registerPropertyNotification:(id)notification
{
  notificationCopy = notification;
  notification = 0;
  [notificationCopy setEndpoint:self];
  [notificationCopy setPropertyPort:IONotificationPortCreate(*MEMORY[0x277CD2898])];
  propertyPort = [notificationCopy propertyPort];
  server = [(HIDAACPRemoteEndpoint *)self server];
  queue = [server queue];
  IONotificationPortSetDispatchQueue(propertyPort, queue);

  if (IOServiceAddInterestNotification([notificationCopy propertyPort], objc_msgSend(notificationCopy, "service"), "IOGeneralInterest", HIDTimeSyncPropertyHandler, notificationCopy, &notification))
  {
    __assert_rtn("[HIDAACPRemoteEndpoint registerPropertyNotification:]", "HIDRemoteDeviceAACPServer.mm", 79, "0 == status");
  }

  [notificationCopy setPropertyNotify:notification];
}

- (void)handlePropertyChange:(id)change
{
  changeCopy = change;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [changeCopy propertyForKey:@"TimeSyncEnabled"];
  v6 = [v5 isEqual:MEMORY[0x277CBEC38]];
  if (v6 != [changeCopy enableTS])
  {
    devices = [(HIDRemoteEndpoint *)self devices];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __46__HIDAACPRemoteEndpoint_handlePropertyChange___block_invoke;
    v13 = &unk_279AFD168;
    v8 = changeCopy;
    v14 = v8;
    v15 = &v16;
    [devices enumerateObjectsUsingBlock:&v10];

    [v8 setEnableTS:{v6, v10, v11, v12, v13}];
    if ((v17[3] & 1) == 0)
    {
      server = [(HIDAACPRemoteEndpoint *)self server];
      [server timeSyncEnable:v6 forEndpointID:{objc_msgSend(v8, "endpointID")}];
    }
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __46__HIDAACPRemoteEndpoint_handlePropertyChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) != v3 && [v3 enableTS])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return MEMORY[0x2821F96F8]();
}

@end