@interface BluetoothSetting
- (BluetoothSetting)init;
- (void)btSettingChanged:(id)a3;
- (void)dealloc;
@end

@implementation BluetoothSetting

- (BluetoothSetting)init
{
  v9.receiver = self;
  v9.super_class = BluetoothSetting;
  v2 = [(BluetoothSetting *)&v9 init];
  if (v2)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 3;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v5 = &_os_log_default;
      v4 = &_os_log_default;
    }

    else
    {
      v5 = *(gLogObjects + 16);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(BluetoothSetting *)v5 init];
    }

    v2->_initComplete = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __24__BluetoothSetting_init__block_invoke;
    block[3] = &unk_59250;
    v8 = v2;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v2;
}

void __24__BluetoothSetting_init__block_invoke(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"btSettingChanged:" name:BluetoothStateChangedNotification object:0];

  v3 = +[BluetoothManager sharedInstance];
  *(*(a1 + 32) + 8) = [v3 powerState] == 2;

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v4 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v4 = &_os_log_default;
    v5 = &_os_log_default;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(a1 + 32) + 8);
    v7[0] = 67109120;
    v7[1] = v6;
    _os_log_impl(&def_3A0E8, v4, OS_LOG_TYPE_INFO, "Registered for BluetoothStateChangedNotification: bluetoothEnabled = %d", v7, 8u);
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    bluetoothEnabled = self->_bluetoothEnabled;
    *buf = 67109120;
    v10 = bluetoothEnabled;
    _os_log_impl(&def_3A0E8, v6, OS_LOG_TYPE_INFO, "Unregistered for BluetoothStateChangedNotification: bluetoothEnabled = %d", buf, 8u);
  }

  v8.receiver = self;
  v8.super_class = BluetoothSetting;
  [(BluetoothSetting *)&v8 dealloc];
}

- (void)btSettingChanged:(id)a3
{
  v4 = +[BluetoothManager sharedInstance];
  v5 = [v4 powerState];

  if (gLogObjects)
  {
    v6 = gNumLogObjects < 3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v18 = v5;
    _os_log_impl(&def_3A0E8, v8, OS_LOG_TYPE_INFO, "btSettingChanged: powerState = %d", buf, 8u);
  }

  if (v5 == 1)
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v9 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v9 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&def_3A0E8, v9, OS_LOG_TYPE_INFO, "btSettingChanged: transitioning... check again later", buf, 2u);
    }

    v12 = dispatch_time(0, 100000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __37__BluetoothSetting_btSettingChanged___block_invoke;
    block[3] = &unk_59250;
    block[4] = self;
    dispatch_after(v12, &_dispatch_main_q, block);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v10 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v10 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      bluetoothEnabled = self->_bluetoothEnabled;
      *buf = 67109376;
      v18 = bluetoothEnabled;
      v19 = 1024;
      v20 = v5 == 2;
      _os_log_impl(&def_3A0E8, v10, OS_LOG_TYPE_INFO, "btSettingChanged: bluetoothEnabled = %d -> %d", buf, 0xEu);
    }

    self->_bluetoothEnabled = v5 == 2;
    self->_initComplete = 1;
    v15 = +[NSNotificationCenter defaultCenter];
    [v15 postNotificationName:ueaPluginSystemSettingsBluetoothSettomgChanged object:0];
  }
}

@end