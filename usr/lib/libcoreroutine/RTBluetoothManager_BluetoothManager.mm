@interface RTBluetoothManager_BluetoothManager
- (BluetoothManager)bluetoothManager;
- (int64_t)getCarKitConnectionStateFromConnectedDevices:(id)a3;
- (void)_fetchCarKitConnectedStateWithHandler:(id)a3;
- (void)_shutdownWithHandler:(id)a3;
- (void)dealloc;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)setCarKitConnectionState:(int64_t)a3;
- (void)setObservingConnections:(BOOL)a3;
- (void)shouldObserveConnections;
- (void)updateConnections;
@end

@implementation RTBluetoothManager_BluetoothManager

- (BluetoothManager)bluetoothManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__RTBluetoothManager_BluetoothManager_bluetoothManager__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  if (bluetoothManager_onceToken != -1)
  {
    dispatch_once(&bluetoothManager_onceToken, block);
  }

  v2 = [MEMORY[0x277CF3248] sharedInstance];

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RTBluetoothManager_BluetoothManager;
  [(RTBluetoothManager_BluetoothManager *)&v4 dealloc];
}

- (void)_shutdownWithHandler:(id)a3
{
  v6 = a3;
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, 0);
    v5 = v6;
  }
}

- (void)updateConnections
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RTBluetoothManager_BluetoothManager_updateConnections__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)setObservingConnections:(BOOL)a3
{
  if (self->_observingConnections != a3)
  {
    self->_observingConnections = a3;
    if (a3)
    {
      v5 = MEMORY[0x277CBEB98];
      v6 = [(RTBluetoothManager_BluetoothManager *)self bluetoothManager];
      v7 = [v6 connectedDevices];
      v8 = [v5 setWithArray:v7];
      [(RTBluetoothManager_BluetoothManager *)self setConnectedDevices:v8];

      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 addObserver:self selector:sel_updateConnections name:*MEMORY[0x277CF3190] object:0];

      v10 = [MEMORY[0x277CCAB98] defaultCenter];
      [v10 addObserver:self selector:sel_updateConnections name:*MEMORY[0x277CF31A0] object:0];

      v13 = [MEMORY[0x277CCAB98] defaultCenter];
      [v13 addObserver:self selector:sel_updateConnections name:*MEMORY[0x277CF3168] object:0];
    }

    else
    {
      [(RTBluetoothManager_BluetoothManager *)self setConnectedDevices:0];
      [(RTBluetoothManager_BluetoothManager *)self setCarKitConnectionState:0];
      v11 = [MEMORY[0x277CCAB98] defaultCenter];
      [v11 removeObserver:self name:*MEMORY[0x277CF3190] object:0];

      v12 = [MEMORY[0x277CCAB98] defaultCenter];
      [v12 removeObserver:self name:*MEMORY[0x277CF31A0] object:0];

      v13 = [MEMORY[0x277CCAB98] defaultCenter];
      [v13 removeObserver:self name:*MEMORY[0x277CF3168] object:0];
    }
  }
}

- (void)shouldObserveConnections
{
  v3 = +[(RTNotification *)RTBluetoothManagerNotificationConnected];
  if ([(RTNotifier *)self getNumberOfObservers:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = +[(RTNotification *)RTBluetoothManagerNotificationDisconnected];
    if ([(RTNotifier *)self getNumberOfObservers:v5])
    {
      v4 = 1;
    }

    else
    {
      v6 = +[(RTNotification *)RTBluetoothManagerNotificationCarKitConnectionStateChanged];
      v4 = [(RTNotifier *)self getNumberOfObservers:v6]!= 0;
    }
  }

  [(RTBluetoothManager_BluetoothManager *)self setObservingConnections:v4];
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = RTBluetoothManager_BluetoothManager;
  [(RTBluetoothManager *)&v11 internalAddObserver:a3 name:v6];
  v7 = +[(RTNotification *)RTBluetoothManagerNotificationConnected];
  if (([v6 isEqualToString:v7] & 1) == 0)
  {
    v8 = +[(RTNotification *)RTBluetoothManagerNotificationDisconnected];
    if (![v6 isEqualToString:v8])
    {
      v9 = +[(RTNotification *)RTBluetoothManagerNotificationCarKitConnectionStateChanged];
      v10 = [v6 isEqualToString:v9];

      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  [(RTBluetoothManager_BluetoothManager *)self shouldObserveConnections];
LABEL_6:
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = RTBluetoothManager_BluetoothManager;
  [(RTBluetoothManager *)&v11 internalRemoveObserver:a3 name:v6];
  v7 = +[(RTNotification *)RTBluetoothManagerNotificationConnected];
  if (([v6 isEqualToString:v7] & 1) == 0)
  {
    v8 = +[(RTNotification *)RTBluetoothManagerNotificationDisconnected];
    if (![v6 isEqualToString:v8])
    {
      v9 = +[(RTNotification *)RTBluetoothManagerNotificationCarKitConnectionStateChanged];
      v10 = [v6 isEqualToString:v9];

      if ((v10 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

LABEL_5:
  [(RTBluetoothManager_BluetoothManager *)self shouldObserveConnections];
LABEL_6:
}

- (int64_t)getCarKitConnectionStateFromConnectedDevices:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = [v3 predicateWithBlock:&__block_literal_global_22];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  v7 = [v6 count];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

- (void)_fetchCarKitConnectedStateWithHandler:(id)a3
{
  v8 = a3;
  v4 = [(RTBluetoothManager_BluetoothManager *)self bluetoothManager];

  if (v4)
  {
    v5 = [(RTBluetoothManager_BluetoothManager *)self bluetoothManager];
    v6 = [v5 connectedDevices];
    v7 = [(RTBluetoothManager_BluetoothManager *)self getCarKitConnectionStateFromConnectedDevices:v6];
  }

  else
  {
    v7 = 0;
  }

  v8[2](v8, v7);
}

- (void)setCarKitConnectionState:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_carKitConnectionState != a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityBluetooth);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [RTBluetoothManager carKitConnectionStateToString:self->_carKitConnectionState];
        v7 = [RTBluetoothManager carKitConnectionStateToString:a3];
        v9 = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "CarKit connection state changed from, %@, to, %@", &v9, 0x16u);
      }
    }

    self->_carKitConnectionState = a3;
    v8 = [[RTBluetoothManagerNotificationCarKitConnectionStateChanged alloc] initWithCarKitConnectionState:self->_carKitConnectionState];
    [(RTNotifier *)self postNotification:v8];
  }
}

@end