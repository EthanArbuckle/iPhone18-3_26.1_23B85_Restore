@interface AirplaneMode
- (AirplaneMode)init;
- (void)airplaneModeChanged;
- (void)dealloc;
@end

@implementation AirplaneMode

- (AirplaneMode)init
{
  v9.receiver = self;
  v9.super_class = AirplaneMode;
  v2 = [(AirplaneMode *)&v9 init];
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
      [(AirplaneMode *)v5 init];
    }

    v2->_initComplete = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __20__AirplaneMode_init__block_invoke;
    block[3] = &unk_59250;
    v8 = v2;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v2;
}

id __20__AirplaneMode_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(RadiosPreferences);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  [*(*(a1 + 32) + 16) setDelegate:?];
  *(*(a1 + 32) + 8) = [*(*(a1 + 32) + 16) airplaneMode];
  if (gLogObjects && gNumLogObjects >= 3)
  {
    v5 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v5 = &_os_log_default;
    v6 = &_os_log_default;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = *(*(a1 + 32) + 8);
    v9[0] = 67109120;
    v9[1] = v7;
    _os_log_impl(&def_3A0E8, v5, OS_LOG_TYPE_INFO, "Init RadiosPreferences: airplaneMode = %d", v9, 8u);
  }

  return [*(a1 + 32) airplaneModeChanged];
}

- (void)dealloc
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

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    airplaneMode = self->_airplaneMode;
    *buf = 67109120;
    v10 = airplaneMode;
    _os_log_impl(&def_3A0E8, v5, OS_LOG_TYPE_INFO, "Dealloc RadiosPreferences: airplaneMode = %d", buf, 8u);
  }

  [(RadiosPreferences *)self->_radiosPreferences setDelegate:0];
  radiosPreferences = self->_radiosPreferences;
  self->_radiosPreferences = 0;

  v8.receiver = self;
  v8.super_class = AirplaneMode;
  [(AirplaneMode *)&v8 dealloc];
}

- (void)airplaneModeChanged
{
  v3 = [(RadiosPreferences *)self->_radiosPreferences airplaneMode];
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
    airplaneMode = self->_airplaneMode;
    v9[0] = 67109376;
    v9[1] = airplaneMode;
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&def_3A0E8, v6, OS_LOG_TYPE_INFO, "airplaneMode = %d -> %d", v9, 0xEu);
  }

  self->_airplaneMode = v3;
  self->_initComplete = 1;
  v8 = +[NSNotificationCenter defaultCenter];
  [v8 postNotificationName:ueaPluginSystemSettingsAirplaneModeChanged object:0];
}

@end