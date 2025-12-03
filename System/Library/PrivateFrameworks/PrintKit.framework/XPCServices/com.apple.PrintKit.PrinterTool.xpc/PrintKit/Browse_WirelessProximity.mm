@interface Browse_WirelessProximity
- (Browse_WirelessProximity)initWithQueue:(id)queue;
- (void)_entityResolved:(id)resolved;
- (void)cancel;
- (void)deviceScannerDidUpdateState:(id)state;
- (void)scanner:(id)scanner didFailToRegisterDevices:(id)devices withError:(id)error;
- (void)scanner:(id)scanner foundDevice:(id)device withData:(id)data;
- (void)start;
@end

@implementation Browse_WirelessProximity

- (Browse_WirelessProximity)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = Browse_WirelessProximity;
  v6 = [(Browse_WirelessProximity *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = objc_opt_new();
    beaconToEntityMap = v7->_beaconToEntityMap;
    v7->_beaconToEntityMap = v8;
  }

  return v7;
}

- (void)start
{
  if (+[PKDefaults airPrintBeaconDiscoveryAllowed])
  {
    v3 = [objc_alloc(off_1000C7838()) initWithDelegate:self queue:self->_queue];
    scanner = self->_scanner;
    self->_scanner = v3;

    v5 = self->_scanner;

    [(WPDeviceScanner *)v5 registerForDevicesMatching:&off_1000B9180 options:0];
  }
}

- (void)cancel
{
  scanner = self->_scanner;
  if (scanner)
  {
    [(WPDeviceScanner *)scanner unregisterAllDeviceChanges];
    [(WPDeviceScanner *)self->_scanner invalidate];
    v4 = self->_scanner;
    self->_scanner = 0;
  }
}

- (void)deviceScannerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412802;
    selfCopy = self;
    v8 = 2112;
    v9 = stateCopy;
    v10 = 2048;
    state = [stateCopy state];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ scanner %@ state: %ld", &v6, 0x20u);
  }
}

- (void)scanner:(id)scanner didFailToRegisterDevices:(id)devices withError:(id)error
{
  scannerCopy = scanner;
  errorCopy = error;
  v9 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138413058;
    selfCopy = self;
    v12 = 2112;
    v13 = scannerCopy;
    v14 = 2048;
    state = [scannerCopy state];
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ didFailToRegisterDevices scanner %@ state: %ld error %@", &v10, 0x2Au);
  }
}

- (void)scanner:(id)scanner foundDevice:(id)device withData:(id)data
{
  deviceCopy = device;
  dataCopy = data;
  dispatch_assert_queue_V2(self->_queue);
  v9 = [(NSMutableDictionary *)self->_beaconToEntityMap objectForKey:deviceCopy];
  if (v9)
  {
    v10 = [dataCopy objectForKeyedSubscript:@"kPuckID"];
    v11 = [dataCopy objectForKeyedSubscript:@"kPuckRSSI"];
    [v9 updateWithPuckID:v10 rssi:v11];
  }

  else
  {
    v12 = [WPBrowse_Entity alloc];
    v13 = [dataCopy objectForKeyedSubscript:@"kPuckID"];
    v14 = [dataCopy objectForKeyedSubscript:@"kPuckAirPrintData"];
    v15 = [dataCopy objectForKeyedSubscript:@"kPuckRSSI"];
    v16 = [(WPBrowse_Entity *)v12 initWithPuckID:v13 airPrintData:v14 rssi:v15];

    if (v16)
    {
      [(NSMutableDictionary *)self->_beaconToEntityMap setObject:v16 forKey:deviceCopy];
      objc_initWeak(location, self);
      v17 = self->_queue;
      v18 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100036928;
      block[3] = &unk_1000A2B48;
      v22 = v16;
      v23 = v17;
      v19 = v17;
      objc_copyWeak(&v24, location);
      dispatch_async(v18, block);

      objc_destroyWeak(&v24);
      objc_destroyWeak(location);
    }

    else
    {
      v20 = _PKLogCategory(PKLogCategoryDiscovery[0]);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *location = 138412547;
        *&location[4] = self;
        v26 = 2113;
        v27 = dataCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ not creating browse entity for device with data %{private}@", location, 0x16u);
      }
    }
  }
}

- (void)_entityResolved:(id)resolved
{
  resolvedCopy = resolved;
  txtRecordDictionary = [resolvedCopy txtRecordDictionary];

  if (txtRecordDictionary)
  {
    v6 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = resolvedCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resolved %@, adding to found printer list", &v8, 0xCu);
    }

    addEntity = [(Browse_Implementation *)self addEntity];
    (*(addEntity + 16))(addEntity, resolvedCopy);
  }

  else
  {
    addEntity = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(addEntity, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = resolvedCopy;
      _os_log_impl(&_mh_execute_header, addEntity, OS_LOG_TYPE_DEFAULT, "Couldn't reach %@, not adding", &v8, 0xCu);
    }
  }
}

@end