@interface ueaPluginSystemSettingsMonitor
- (ueaPluginSystemSettingsMonitor)init;
- (void)airplaneModeOrBTSettingChanged:(id)a3;
- (void)notifyDriverOfBluetoothSetting:(BOOL)a3 andAirplaneMode:(BOOL)a4;
@end

@implementation ueaPluginSystemSettingsMonitor

- (ueaPluginSystemSettingsMonitor)init
{
  v7.receiver = self;
  v7.super_class = ueaPluginSystemSettingsMonitor;
  v2 = [(ueaPluginSystemSettingsMonitor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_initComplete = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __38__ueaPluginSystemSettingsMonitor_init__block_invoke;
    block[3] = &unk_59250;
    v6 = v2;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v3;
}

- (void)airplaneModeOrBTSettingChanged:(id)a3
{
  v4 = [(AirplaneMode *)self->_airplaneMode airplaneMode];
  v5 = [(BluetoothSetting *)self->_bluetoothSetting bluetoothEnabled];
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
    v19 = 67109376;
    v20 = v5;
    v21 = 1024;
    v22 = v4;
    _os_log_impl(&def_3A0E8, v8, OS_LOG_TYPE_INFO, "airplaneModeOrBTSettingChanged: current bt: %d, apm: %d", &v19, 0xEu);
  }

  if (!self->_initComplete && [(AirplaneMode *)self->_airplaneMode initComplete]&& [(BluetoothSetting *)self->_bluetoothSetting initComplete])
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
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = [(AirplaneMode *)self->_airplaneMode initComplete];
      v12 = [(BluetoothSetting *)self->_bluetoothSetting initComplete];
      initComplete = self->_initComplete;
      v19 = 67109888;
      v20 = v11;
      v21 = 1024;
      v22 = v12;
      v23 = 1024;
      v24 = initComplete;
      v25 = 1024;
      v26 = 1;
      _os_log_impl(&def_3A0E8, v9, OS_LOG_TYPE_INFO, "airplaneModeOrBTSettingChanged: initComplete (%d, %d) %d -> %d", &v19, 0x1Au);
    }

    self->_initComplete = 1;
  }

  if (self->_initComplete)
  {
    [(ueaPluginSystemSettingsMonitor *)self notifyDriverOfBluetoothSetting:v5 andAirplaneMode:v4];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v14 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v14 = &_os_log_default;
      v15 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = [(AirplaneMode *)self->_airplaneMode initComplete];
      v17 = [(BluetoothSetting *)self->_bluetoothSetting initComplete];
      v18 = self->_initComplete;
      v19 = 67110144;
      v20 = v5;
      v21 = 1024;
      v22 = v4;
      v23 = 1024;
      v24 = v16;
      v25 = 1024;
      v26 = v17;
      v27 = 1024;
      v28 = v18;
      _os_log_impl(&def_3A0E8, v14, OS_LOG_TYPE_INFO, "airplaneModeOrBTSettingChanged: current bt: %d, apm: %d, not initComplete yet! (%d, %d) %d", &v19, 0x20u);
    }
  }
}

- (void)notifyDriverOfBluetoothSetting:(BOOL)a3 andAirplaneMode:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v31 = v5;
    v32 = 1024;
    v33 = v4;
    _os_log_impl(&def_3A0E8, v9, OS_LOG_TYPE_INFO, "notifyDriverOfBluetoothSetting:andAirplaneMode: bt %d, apm %d", buf, 0xEu);
  }

  connect = 0;
  ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
  v11 = IOServiceOpen(ServiceWithPrimaryPort, mach_task_self_, 0, &connect);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = connect == 0;
  }

  if (v12)
  {
    v13 = v11;
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v14 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v14 = &_os_log_default;
      v25 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      v31 = v13;
      v32 = 1024;
      v33 = connect;
      v34 = 1024;
      v35 = ServiceWithPrimaryPort;
      _os_log_error_impl(&def_3A0E8, v14, OS_LOG_TYPE_ERROR, "IOServiceOpen fail kernStatus:%02X, ioConnForService:%04X ioService:%d", buf, 0x14u);
    }
  }

  else
  {
    v15 = !v4;
    if (v4)
    {
      v16 = 0x10000;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = 0x10000;
    }

    else
    {
      v17 = 0;
    }

    v18 = [(AirplaneMode *)self->_airplaneMode initComplete];
    v19 = v17 | 0x40000;
    if (!v18)
    {
      v19 = v17;
    }

    v20 = !v5;
    if (v5)
    {
      v21 = v16;
    }

    else
    {
      v21 = v16 | 0x20000;
    }

    if (v20)
    {
      v22 = v19;
    }

    else
    {
      v22 = v19 | 0x20000;
    }

    if ([(BluetoothSetting *)self->_bluetoothSetting initComplete])
    {
      v23 = v22 | 0x80000;
    }

    else
    {
      v23 = v22;
    }

    if (v21 && IOAccessoryManagerRevokeFeatures())
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v24 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v24 = &_os_log_default;
        v26 = &_os_log_default;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [ueaPluginSystemSettingsMonitor notifyDriverOfBluetoothSetting:andAirplaneMode:];
      }
    }

    if (v23 && IOAccessoryManagerAllowFeatures())
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v27 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v27 = &_os_log_default;
        v28 = &_os_log_default;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [ueaPluginSystemSettingsMonitor notifyDriverOfBluetoothSetting:andAirplaneMode:];
      }
    }

    IOServiceClose(connect);
  }
}

@end