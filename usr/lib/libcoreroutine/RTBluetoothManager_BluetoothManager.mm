@interface RTBluetoothManager_BluetoothManager
- (BluetoothManager)bluetoothManager;
- (int64_t)getCarKitConnectionStateFromConnectedDevices:(id)devices;
- (void)_fetchCarKitConnectedStateWithHandler:(id)handler;
- (void)_shutdownWithHandler:(id)handler;
- (void)dealloc;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)setCarKitConnectionState:(int64_t)state;
- (void)setObservingConnections:(BOOL)connections;
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

  mEMORY[0x277CF3248] = [MEMORY[0x277CF3248] sharedInstance];

  return mEMORY[0x277CF3248];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = RTBluetoothManager_BluetoothManager;
  [(RTBluetoothManager_BluetoothManager *)&v4 dealloc];
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v5 = handlerCopy;
  }
}

- (void)updateConnections
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RTBluetoothManager_BluetoothManager_updateConnections__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)setObservingConnections:(BOOL)connections
{
  if (self->_observingConnections != connections)
  {
    self->_observingConnections = connections;
    if (connections)
    {
      v5 = MEMORY[0x277CBEB98];
      bluetoothManager = [(RTBluetoothManager_BluetoothManager *)self bluetoothManager];
      connectedDevices = [bluetoothManager connectedDevices];
      v8 = [v5 setWithArray:connectedDevices];
      [(RTBluetoothManager_BluetoothManager *)self setConnectedDevices:v8];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel_updateConnections name:*MEMORY[0x277CF3190] object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel_updateConnections name:*MEMORY[0x277CF31A0] object:0];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter3 addObserver:self selector:sel_updateConnections name:*MEMORY[0x277CF3168] object:0];
    }

    else
    {
      [(RTBluetoothManager_BluetoothManager *)self setConnectedDevices:0];
      [(RTBluetoothManager_BluetoothManager *)self setCarKitConnectionState:0];
      defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter4 removeObserver:self name:*MEMORY[0x277CF3190] object:0];

      defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter5 removeObserver:self name:*MEMORY[0x277CF31A0] object:0];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter3 removeObserver:self name:*MEMORY[0x277CF3168] object:0];
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

- (void)internalAddObserver:(id)observer name:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = RTBluetoothManager_BluetoothManager;
  [(RTBluetoothManager *)&v11 internalAddObserver:observer name:nameCopy];
  v7 = +[(RTNotification *)RTBluetoothManagerNotificationConnected];
  if (([nameCopy isEqualToString:v7] & 1) == 0)
  {
    v8 = +[(RTNotification *)RTBluetoothManagerNotificationDisconnected];
    if (![nameCopy isEqualToString:v8])
    {
      v9 = +[(RTNotification *)RTBluetoothManagerNotificationCarKitConnectionStateChanged];
      v10 = [nameCopy isEqualToString:v9];

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

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = RTBluetoothManager_BluetoothManager;
  [(RTBluetoothManager *)&v11 internalRemoveObserver:observer name:nameCopy];
  v7 = +[(RTNotification *)RTBluetoothManagerNotificationConnected];
  if (([nameCopy isEqualToString:v7] & 1) == 0)
  {
    v8 = +[(RTNotification *)RTBluetoothManagerNotificationDisconnected];
    if (![nameCopy isEqualToString:v8])
    {
      v9 = +[(RTNotification *)RTBluetoothManagerNotificationCarKitConnectionStateChanged];
      v10 = [nameCopy isEqualToString:v9];

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

- (int64_t)getCarKitConnectionStateFromConnectedDevices:(id)devices
{
  v3 = MEMORY[0x277CCAC30];
  devicesCopy = devices;
  v5 = [v3 predicateWithBlock:&__block_literal_global_22];
  v6 = [devicesCopy filteredArrayUsingPredicate:v5];

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

- (void)_fetchCarKitConnectedStateWithHandler:(id)handler
{
  handlerCopy = handler;
  bluetoothManager = [(RTBluetoothManager_BluetoothManager *)self bluetoothManager];

  if (bluetoothManager)
  {
    bluetoothManager2 = [(RTBluetoothManager_BluetoothManager *)self bluetoothManager];
    connectedDevices = [bluetoothManager2 connectedDevices];
    v7 = [(RTBluetoothManager_BluetoothManager *)self getCarKitConnectionStateFromConnectedDevices:connectedDevices];
  }

  else
  {
    v7 = 0;
  }

  handlerCopy[2](handlerCopy, v7);
}

- (void)setCarKitConnectionState:(int64_t)state
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_carKitConnectionState != state)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityBluetooth);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [RTBluetoothManager carKitConnectionStateToString:self->_carKitConnectionState];
        v7 = [RTBluetoothManager carKitConnectionStateToString:state];
        v9 = 138412546;
        v10 = v6;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "CarKit connection state changed from, %@, to, %@", &v9, 0x16u);
      }
    }

    self->_carKitConnectionState = state;
    v8 = [[RTBluetoothManagerNotificationCarKitConnectionStateChanged alloc] initWithCarKitConnectionState:self->_carKitConnectionState];
    [(RTNotifier *)self postNotification:v8];
  }
}

@end