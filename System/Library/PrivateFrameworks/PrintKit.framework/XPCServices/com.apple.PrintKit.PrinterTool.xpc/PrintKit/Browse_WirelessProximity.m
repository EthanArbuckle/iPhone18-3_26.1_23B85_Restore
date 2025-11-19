@interface Browse_WirelessProximity
- (Browse_WirelessProximity)initWithQueue:(id)a3;
- (void)_entityResolved:(id)a3;
- (void)cancel;
- (void)deviceScannerDidUpdateState:(id)a3;
- (void)scanner:(id)a3 didFailToRegisterDevices:(id)a4 withError:(id)a5;
- (void)scanner:(id)a3 foundDevice:(id)a4 withData:(id)a5;
- (void)start;
@end

@implementation Browse_WirelessProximity

- (Browse_WirelessProximity)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = Browse_WirelessProximity;
  v6 = [(Browse_WirelessProximity *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
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

- (void)deviceScannerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412802;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    v10 = 2048;
    v11 = [v4 state];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ scanner %@ state: %ld", &v6, 0x20u);
  }
}

- (void)scanner:(id)a3 didFailToRegisterDevices:(id)a4 withError:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138413058;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    v14 = 2048;
    v15 = [v7 state];
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ didFailToRegisterDevices scanner %@ state: %ld error %@", &v10, 0x2Au);
  }
}

- (void)scanner:(id)a3 foundDevice:(id)a4 withData:(id)a5
{
  v7 = a4;
  v8 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v9 = [(NSMutableDictionary *)self->_beaconToEntityMap objectForKey:v7];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"kPuckID"];
    v11 = [v8 objectForKeyedSubscript:@"kPuckRSSI"];
    [v9 updateWithPuckID:v10 rssi:v11];
  }

  else
  {
    v12 = [WPBrowse_Entity alloc];
    v13 = [v8 objectForKeyedSubscript:@"kPuckID"];
    v14 = [v8 objectForKeyedSubscript:@"kPuckAirPrintData"];
    v15 = [v8 objectForKeyedSubscript:@"kPuckRSSI"];
    v16 = [(WPBrowse_Entity *)v12 initWithPuckID:v13 airPrintData:v14 rssi:v15];

    if (v16)
    {
      [(NSMutableDictionary *)self->_beaconToEntityMap setObject:v16 forKey:v7];
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
        v27 = v8;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ not creating browse entity for device with data %{private}@", location, 0x16u);
      }
    }
  }
}

- (void)_entityResolved:(id)a3
{
  v4 = a3;
  v5 = [v4 txtRecordDictionary];

  if (v5)
  {
    v6 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resolved %@, adding to found printer list", &v8, 0xCu);
    }

    v7 = [(Browse_Implementation *)self addEntity];
    (*(v7 + 16))(v7, v4);
  }

  else
  {
    v7 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Couldn't reach %@, not adding", &v8, 0xCu);
    }
  }
}

@end