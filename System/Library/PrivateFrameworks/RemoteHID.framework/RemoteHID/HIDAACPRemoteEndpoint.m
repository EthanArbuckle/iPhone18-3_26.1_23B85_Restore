@interface HIDAACPRemoteEndpoint
- (void)addDevice:(id)a3;
- (void)handlePropertyChange:(id)a3;
- (void)registerPropertyNotification:(id)a3;
- (void)removeAllDevices;
@end

@implementation HIDAACPRemoteEndpoint

- (void)addDevice:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = HIDAACPRemoteEndpoint;
  [(HIDRemoteEndpoint *)&v5 addDevice:v4];
  [(HIDAACPRemoteEndpoint *)self registerPropertyNotification:v4];
}

- (void)removeAllDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(HIDRemoteEndpoint *)self devices];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__HIDAACPRemoteEndpoint_removeAllDevices__block_invoke;
  v6[3] = &unk_279AFD140;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];

  if (*(v8 + 24) == 1)
  {
    v4 = [(HIDAACPRemoteEndpoint *)self server];
    [v4 timeSyncEnable:0 forEndpointID:{-[HIDRemoteEndpoint endpointID](self, "endpointID")}];
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

- (void)registerPropertyNotification:(id)a3
{
  v4 = a3;
  notification = 0;
  [v4 setEndpoint:self];
  [v4 setPropertyPort:IONotificationPortCreate(*MEMORY[0x277CD2898])];
  v5 = [v4 propertyPort];
  v6 = [(HIDAACPRemoteEndpoint *)self server];
  v7 = [v6 queue];
  IONotificationPortSetDispatchQueue(v5, v7);

  if (IOServiceAddInterestNotification([v4 propertyPort], objc_msgSend(v4, "service"), "IOGeneralInterest", HIDTimeSyncPropertyHandler, v4, &notification))
  {
    __assert_rtn("[HIDAACPRemoteEndpoint registerPropertyNotification:]", "HIDRemoteDeviceAACPServer.mm", 79, "0 == status");
  }

  [v4 setPropertyNotify:notification];
}

- (void)handlePropertyChange:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v5 = [v4 propertyForKey:@"TimeSyncEnabled"];
  v6 = [v5 isEqual:MEMORY[0x277CBEC38]];
  if (v6 != [v4 enableTS])
  {
    v7 = [(HIDRemoteEndpoint *)self devices];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __46__HIDAACPRemoteEndpoint_handlePropertyChange___block_invoke;
    v13 = &unk_279AFD168;
    v8 = v4;
    v14 = v8;
    v15 = &v16;
    [v7 enumerateObjectsUsingBlock:&v10];

    [v8 setEnableTS:{v6, v10, v11, v12, v13}];
    if ((v17[3] & 1) == 0)
    {
      v9 = [(HIDAACPRemoteEndpoint *)self server];
      [v9 timeSyncEnable:v6 forEndpointID:{objc_msgSend(v8, "endpointID")}];
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