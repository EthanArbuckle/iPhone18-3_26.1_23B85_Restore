@interface ASMResourceManagerDaemon
+ (id)sharedInstance;
- (ASMResourceManagerDaemon)init;
- (id)_availablePeripheralWithIdentifier:(id)identifier;
- (id)availablePeripherals;
- (void)_activate;
- (void)_addPeripheralToAvailableMap:(id)map;
- (void)_handleXPCLaunchEvent;
- (void)_invalidate;
- (void)_peripheralControlEnsureStarted;
- (void)_peripheralControlEnsureStopped;
- (void)_polarisResourceProviderEnsureStarted;
- (void)_polarisResourceProviderEnsureStopped;
- (void)_polarisResourceStart:(id)start;
- (void)_polarisResourceStop:(id)stop;
- (void)_prefsChanged;
- (void)_removeAllPeripheralsFromAvailableMap;
- (void)_removePeripheralFromAvailableMap:(id)map;
- (void)activate;
- (void)invalidate;
@end

@implementation ASMResourceManagerDaemon

+ (id)sharedInstance
{
  if (qword_10001A620 != -1)
  {
    sub_10000936C();
  }

  v3 = qword_10001A618;

  return v3;
}

- (ASMResourceManagerDaemon)init
{
  v8.receiver = self;
  v8.super_class = ASMResourceManagerDaemon;
  v2 = [(ASMResourceManagerDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ASMResourceManagerDaemon.daemon.queue", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v2->_prefsChangedNotifyToken = -1;
    v6 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005B08;
  block[3] = &unk_1000143A0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (self->_prefsChangedNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100005C48;
    handler[3] = &unk_100014650;
    handler[4] = self;
    notify_register_dispatch("com.apple.AccessorySensorManager.prefsChanged", &self->_prefsChangedNotifyToken, dispatchQueue, handler);
  }

  [(ASMResourceManagerDaemon *)self _prefsChanged];
  [(ASMResourceManagerDaemon *)self _peripheralControlEnsureStarted];
  v4 = [PSExecutionSession uniqueSessionWithName:@"AccessorySensorManager"];
  polarisSession = self->_polarisSession;
  self->_polarisSession = v4;

  [(ASMResourceManagerDaemon *)self _polarisResourceProviderEnsureStarted];
  [(ASMResourceManagerDaemon *)self _handleXPCLaunchEvent];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005D24;
  block[3] = &unk_1000143A0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  [(ASMResourceManagerDaemon *)self _peripheralControlEnsureStopped];
  [(ASMResourceManagerDaemon *)self _polarisResourceProviderEnsureStopped];
  polarisSession = self->_polarisSession;
  if (polarisSession)
  {
    [(PSExecutionSession *)polarisSession deleteSession];
    v4 = self->_polarisSession;
  }

  else
  {
    v4 = 0;
  }

  self->_polarisSession = 0;

  [(ASMOpenDomainGraphProvider *)self->_openDomainGraphProvider invalidate];
  openDomainGraphProvider = self->_openDomainGraphProvider;
  self->_openDomainGraphProvider = 0;

  [(ASMResourceManagerDaemon *)self _removeAllPeripheralsFromAvailableMap];
}

- (void)_prefsChanged
{
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefsOpenDomainInputGraph != v3)
  {
    if (dword_10001A408 <= 30 && (dword_10001A408 != -1 || _LogCategory_Initialize()))
    {
      sub_1000093D4();
    }

    self->_prefsOpenDomainInputGraph = v3;
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_prefsFakeSensorAvailable != v4)
  {
    if (dword_10001A408 <= 30 && (dword_10001A408 != -1 || _LogCategory_Initialize()))
    {
      sub_10000942C();
    }

    self->_prefsFakeSensorAvailable = v4;
  }

  v5 = CFPrefs_GetInt64() != 0;
  if (self->_prefsAllowDebugGATTCharacteristic != v5)
  {
    if (dword_10001A408 <= 30 && (dword_10001A408 != -1 || _LogCategory_Initialize()))
    {
      sub_100009484();
    }

    self->_prefsAllowDebugGATTCharacteristic = v5;
  }

  v6 = CFPrefs_GetInt64() != 0;
  if (self->_prefsDebugFlush != v6)
  {
    if (dword_10001A408 <= 30 && (dword_10001A408 != -1 || _LogCategory_Initialize()))
    {
      sub_1000094DC();
    }

    self->_prefsDebugFlush = v6;
  }
}

- (void)_peripheralControlEnsureStarted
{
  p_peripheralControl = &self->_peripheralControl;
  v3 = self->_peripheralControl;
  if (!v3)
  {
    v4 = +[ASMPeripheralControl sharedInstance];
    objc_storeStrong(p_peripheralControl, v4);
    [(ASMPeripheralControl *)*p_peripheralControl activate];
    v3 = v4;
  }
}

- (void)_peripheralControlEnsureStopped
{
  [(ASMPeripheralControl *)self->_peripheralControl invalidate];
  peripheralControl = self->_peripheralControl;
  self->_peripheralControl = 0;
}

- (void)_polarisResourceProviderEnsureStarted
{
  v3 = self->_polarisResourceProvider;
  if (!v3)
  {
    v3 = objc_alloc_init(ASMPolarisResourceProvider);
    polarisResourceProvider = self->_polarisResourceProvider;
    self->_polarisResourceProvider = v3;

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000061AC;
    v6[3] = &unk_100014678;
    v6[4] = self;
    [(ASMPolarisResourceProvider *)v3 setResourceStartHandler:v6];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000062C0;
    v5[3] = &unk_100014678;
    v5[4] = self;
    [(ASMPolarisResourceProvider *)v3 setResourceStopHandler:v5];
    [(ASMPolarisResourceProvider *)v3 activateWithExecutionSession:self->_polarisSession];
  }
}

- (void)_polarisResourceProviderEnsureStopped
{
  [(ASMPolarisResourceProvider *)self->_polarisResourceProvider invalidate];
  polarisResourceProvider = self->_polarisResourceProvider;
  self->_polarisResourceProvider = 0;
}

- (void)_polarisResourceStart:(id)start
{
  startCopy = start;
  [startCopy type];
  if (dword_10001A408 <= 90 && (dword_10001A408 != -1 || _LogCategory_Initialize()))
  {
    sub_100009534(startCopy);
  }
}

- (void)_polarisResourceStop:(id)stop
{
  stopCopy = stop;
  [stopCopy type];
  if (dword_10001A408 <= 90 && (dword_10001A408 != -1 || _LogCategory_Initialize()))
  {
    sub_100009578(stopCopy);
  }
}

- (void)_handleXPCLaunchEvent
{
  if (dword_10001A408 <= 30 && (dword_10001A408 != -1 || _LogCategory_Initialize()))
  {
    sub_1000095BC();
  }

  dispatchQueue = self->_dispatchQueue;

  xpc_set_event_stream_handler("com.apple.AudioAccessoryDiscovery", dispatchQueue, &stru_1000146B8);
}

- (id)availablePeripherals
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_availablePeripheralMap copy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(NSMutableDictionary);
  }

  v6 = v5;

  objc_sync_exit(selfCopy);

  return v6;
}

- (void)_addPeripheralToAvailableMap:(id)map
{
  mapCopy = map;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = mapCopy;
  availablePeripheralMap = selfCopy->_availablePeripheralMap;
  if (!availablePeripheralMap)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = selfCopy->_availablePeripheralMap;
    selfCopy->_availablePeripheralMap = v7;

    availablePeripheralMap = selfCopy->_availablePeripheralMap;
    v5 = mapCopy;
  }

  bluetoothUUID = [v5 bluetoothUUID];
  [(NSMutableDictionary *)availablePeripheralMap setObject:mapCopy forKeyedSubscript:bluetoothUUID];

  if (dword_10001A408 <= 30 && (dword_10001A408 != -1 || _LogCategory_Initialize()))
  {
    [(NSMutableDictionary *)selfCopy->_availablePeripheralMap count];
    LogPrintF();
  }

  objc_sync_exit(selfCopy);
}

- (id)_availablePeripheralWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  availablePeripheralMap = selfCopy->_availablePeripheralMap;
  if (availablePeripheralMap)
  {
    v7 = [(NSMutableDictionary *)availablePeripheralMap objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)_removePeripheralFromAvailableMap:(id)map
{
  mapCopy = map;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  availablePeripheralMap = selfCopy->_availablePeripheralMap;
  if (availablePeripheralMap)
  {
    [(NSMutableDictionary *)availablePeripheralMap setObject:0 forKeyedSubscript:mapCopy];
    if (![(NSMutableDictionary *)selfCopy->_availablePeripheralMap count])
    {
      v6 = selfCopy->_availablePeripheralMap;
      selfCopy->_availablePeripheralMap = 0;
    }

    if (dword_10001A408 <= 30 && (dword_10001A408 != -1 || _LogCategory_Initialize()))
    {
      [(NSMutableDictionary *)selfCopy->_availablePeripheralMap count];
      LogPrintF();
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_removeAllPeripheralsFromAvailableMap
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  availablePeripheralMap = obj->_availablePeripheralMap;
  if (availablePeripheralMap)
  {
    [(NSMutableDictionary *)availablePeripheralMap removeAllObjects];
    v4 = obj->_availablePeripheralMap;
    obj->_availablePeripheralMap = 0;

    v2 = obj;
  }

  objc_sync_exit(v2);
}

@end