id _uiQueue()
{
  if (_uiQueue_onceToken != -1)
  {
    _uiQueue_cold_1();
  }

  v1 = _uiQueue_uiQueue;

  return v1;
}

uint64_t ___isUnlockDialogPresent_block_invoke(uint64_t result)
{
  if (_gUnlockNotification)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void SystemPowerCallback(void *a1, uint64_t a2, int a3, intptr_t a4)
{
  v6 = a1;
  if (a3 != -536870288)
  {
    if (a3 == -536870144)
    {
      v7 = v6;
      EnableAccessoryPower();
      goto LABEL_6;
    }

    if (a3 != -536870272)
    {
      goto LABEL_7;
    }
  }

  v7 = v6;
  IOAllowPowerChange([v6 systemPowerPort], a4);
LABEL_6:
  v6 = v7;
LABEL_7:
}

void EnableAccessoryPower()
{
  connect = 0;
  existing = -1431655766;
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 1;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v2 = &_os_log_default;
    v1 = &_os_log_default;
  }

  else
  {
    v2 = *gLogObjects;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "kern_return_t EnableAccessoryPower(void)";
    _os_log_impl(&def_3A0E8, v2, OS_LOG_TYPE_DEFAULT, "%s Enabling Accessory Power.\n", buf, 0xCu);
  }

  v3 = IOServiceMatching("IOAccessoryManager");
  if (IOServiceGetMatchingServices(kIOMainPortDefault, v3, &existing))
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v4 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v4 = &_os_log_default;
      v25 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      EnableAccessoryPower_cold_3();
    }
  }

  else
  {
    v5 = IOIteratorNext(existing);
    if (v5)
    {
      v6 = v5;
      do
      {
        PrimaryPort = IOAccessoryManagerGetPrimaryPort();
        if (IOAccessoryManagerPowerModeIsSupported() && PrimaryPort != 512)
        {
          v8 = gLogObjects;
          v9 = gNumLogObjects;
          if (gLogObjects)
          {
            v10 = gNumLogObjects < 1;
          }

          else
          {
            v10 = 1;
          }

          if (v10)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v29 = v8;
              v30 = 1024;
              v31 = v9;
              _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v11 = &_os_log_default;
            v12 = &_os_log_default;
          }

          else
          {
            v12 = *gLogObjects;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v29 = "kern_return_t EnableAccessoryPower(void)";
            v30 = 1024;
            v31 = PrimaryPort;
            _os_log_impl(&def_3A0E8, v12, OS_LOG_TYPE_DEFAULT, "%s Enabling Accessory Power on port %d.\n", buf, 0x12u);
          }

          v13 = IOServiceOpen(v6, mach_task_self_, 0, &connect);
          if (v13)
          {
            v14 = v13;
            v15 = gLogObjects;
            v16 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 1)
            {
              v17 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v29 = v15;
                v30 = 1024;
                v31 = v16;
                _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v23 = &_os_log_default;
              v17 = &_os_log_default;
            }

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v29 = "kern_return_t EnableAccessoryPower(void)";
              v30 = 1024;
              v31 = v14;
              _os_log_error_impl(&def_3A0E8, v17, OS_LOG_TYPE_ERROR, "%s IOServiceOpen failed: %#x\n", buf, 0x12u);
            }
          }

          else
          {
            v18 = IOAccessoryManagerConfigurePower();
            if (v18)
            {
              v19 = v18;
              v20 = gLogObjects;
              v21 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 1)
              {
                v22 = *gLogObjects;
              }

              else
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v29 = v20;
                  v30 = 1024;
                  v31 = v21;
                  _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v24 = &_os_log_default;
                v22 = &_os_log_default;
              }

              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v29 = "kern_return_t EnableAccessoryPower(void)";
                v30 = 1024;
                v31 = v19;
                v32 = 1024;
                v33 = PrimaryPort;
                _os_log_error_impl(&def_3A0E8, v22, OS_LOG_TYPE_ERROR, "%s IOAccessoryManagerConfigurePower didn't enable power %#x for primaryPort: %d\n", buf, 0x18u);
              }
            }

            IOServiceClose(connect);
          }
        }

        IOObjectRelease(v6);
        v6 = IOIteratorNext(existing);
      }

      while (v6);
    }

    IOObjectRelease(existing);
  }
}

void IOAccessoryManagerEventCallback(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (!v5)
  {
    goto LABEL_236;
  }

  PrimaryPort = IOAccessoryManagerGetPrimaryPort();
  v175 = -1;
  v174 = -1;
  v173 = 0;
  v172 = 0;
  v171 = -21846;
  v170 = -1431655766;
  if (!a2)
  {
    if (gLogObjects)
    {
      v22 = gNumLogObjects < 1;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v25 = &_os_log_default;
      v23 = &_os_log_default;
    }

    else
    {
      v25 = *gLogObjects;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      IOAccessoryManagerEventCallback_cold_24();
    }

    goto LABEL_41;
  }

  v7 = PrimaryPort;
  if (a3 > -469794793)
  {
    if (a3 <= -469794726)
    {
      if ((a3 + 469794746) < 2)
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v24 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [AirplaneMode init];
          }

          v24 = &_os_log_default;
          v49 = &_os_log_default;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 67109888;
          *v177 = -469794746;
          *&v177[4] = 1024;
          *&v177[6] = -469794745;
          *v178 = 1024;
          *&v178[2] = a3;
          v179 = 1024;
          v180 = v7;
          _os_log_impl(&def_3A0E8, v24, OS_LOG_TYPE_INFO, "kIOAccessoryManagerMessageAccIDScorpiusUnknown(%x)/Pencil(%x) %x recieved on primaryPort: %d", buf, 0x1Au);
        }

        out_token = -1;
        if (!notify_register_check("com.apple.accessories.scp.objdetect", &out_token))
        {
          if (a3 == -469794745)
          {
            v57 = 2;
          }

          else
          {
            v57 = 1;
          }

          notify_set_state(out_token, v57);
          notify_cancel(out_token);
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v58 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [AirplaneMode init];
            }

            v58 = &_os_log_default;
            v84 = &_os_log_default;
          }

          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            *v177 = "com.apple.accessories.scp.objdetect";
            _os_log_impl(&def_3A0E8, v58, OS_LOG_TYPE_INFO, "Post notification %s!", buf, 0xCu);
          }

          notify_post("com.apple.accessories.scp.objdetect");
          goto LABEL_236;
        }

        if (gLogObjects && gNumLogObjects >= 1)
        {
          v30 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [AirplaneMode init];
          }

          v30 = &_os_log_default;
          v60 = &_os_log_default;
        }

        if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
LABEL_129:

          goto LABEL_236;
        }

        *buf = 136315138;
        *v177 = "com.apple.accessories.scp.objdetect";
        v52 = "Faied to register for %s notification!";
        v53 = v30;
        v54 = OS_LOG_TYPE_DEFAULT;
        v55 = 12;
LABEL_128:
        _os_log_impl(&def_3A0E8, v53, v54, v52, buf, v55);
        goto LABEL_129;
      }

      if (a3 != -469794792)
      {
        goto LABEL_236;
      }

LABEL_55:
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v30 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v30 = &_os_log_default;
        v50 = &_os_log_default;
      }

      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        goto LABEL_129;
      }

      if (a3 == -469794797)
      {
        v51 = "kIOAccessoryManagerMessageAccessoryDetected";
      }

      else
      {
        v51 = "kIOAccessoryManagerMessageAccessoryRemoved";
      }

      *buf = 136315394;
      *v177 = v51;
      *&v177[8] = 1024;
      *v178 = v7;
      v52 = "%s received on primaryPort: %d";
      v53 = v30;
      v54 = OS_LOG_TYPE_INFO;
      v55 = 18;
      goto LABEL_128;
    }

    if (a3 != -469794716)
    {
      if (a3 != -469794725)
      {
        goto LABEL_236;
      }

      if (!IOAccessoryManagerGetDigitalID())
      {
        LOBYTE(out_token) = 0;
        v152 = _digitalIDSupportsTransport(&v170, 0);
        v150 = _digitalIDSupportsTransport(&v170, 1);
        cf = _digitalIDSupportsTransport(&v170, 2);
        v73 = _digitalIDSupportsTransport(&v170, 3);
        _generateUART_MB_AIDB_AccessoryConnectionStatisticsEvent(v5, v7, &v170);
        if (IOAccessoryManagerGetUSBConnectType())
        {
          v175 = -1;
        }

        _hook_digitalIDAttached(&out_token);
        if (out_token == 1)
        {
          _generateUnlockDialogSeenAnalyticEvent(a2, v5);
        }

        if (v7 == 256 || v7 == 1)
        {
          v74 = logObjectForModule(0);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            v75 = [NSData dataWithBytes:&v170 length:6];
            *buf = 138412290;
            *v177 = v75;
            _os_log_impl(&def_3A0E8, v74, OS_LOG_TYPE_DEFAULT, "IOAccessoryManagerEventCallback kIOAccessoryManagerMessageAccIDDigitalID launching clients due to accDigitalID: %@", buf, 0xCu);
          }

          [v5 launchDigitalIDClients];
        }

        v76 = [AttachEvent alloc];
        v77 = [NSNumber numberWithUnsignedLongLong:systemInfo_getCurrentUnixTimeMS()];
        v78 = [NSNumber numberWithInt:v175];
        v79 = [NSNumber numberWithInt:v7];
        v80 = [v5 restrictedModeEnabled];
        v81 = out_token;
        v82 = [NSData dataWithBytes:&v170 length:6];
        BYTE2(v148) = v73;
        BYTE1(v148) = cf;
        LOBYTE(v148) = v150;
        v17 = [AttachEvent initWithTimestamp:v76 connectType:"initWithTimestamp:connectType:primaryPort:restrictedModeEnabled:dialogShown:supportsUSB:supportsUART:supportsMB:supportsAIDBulkPipes:digitalID:" primaryPort:v77 restrictedModeEnabled:v78 dialogShown:v79 supportsUSB:v80 supportsUART:v81 supportsMB:v152 supportsAIDBulkPipes:v148 digitalID:v82];

        v83 = [v5 rmEventArray];
        [v83 addObject:v17];

        _cacheDigitalID(v5, v7, &v170);
        goto LABEL_235;
      }

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v25 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v25 = &_os_log_default;
        v85 = &_os_log_default;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        IOAccessoryManagerEventCallback_cold_12();
      }

      goto LABEL_41;
    }

LABEL_51:
    v26 = [v5 carPlayEventQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __IOAccessoryManagerEventCallback_block_invoke_876;
    block[3] = &unk_59250;
    v27 = v5;
    v163 = v27;
    dispatch_async(v26, block);

    v28 = [NSNumber numberWithUnsignedLongLong:systemInfo_getCurrentUnixTimeMS()];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v29 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v29 = &_os_log_default;
      v31 = &_os_log_default;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *v177 = v7;
      _os_log_impl(&def_3A0E8, v29, OS_LOG_TYPE_INFO, "kIOAccessoryManagerMessageDetach/AccIDNoneConnected received on primaryPort: %d", buf, 8u);
    }

    v32 = [v27 chargeConfigDict];
    v33 = [NSNumber numberWithInt:v7];
    [v32 removeObjectForKey:v33];

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v34 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v34 = &_os_log_default;
      v35 = &_os_log_default;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v36 = [v27 chargeConfigDict];
      *buf = 138412290;
      *v177 = v36;
      _os_log_impl(&def_3A0E8, v34, OS_LOG_TYPE_INFO, "chargeConfigDict: %@", buf, 0xCu);
    }

    if (gLogObjects && gNumLogObjects >= 4)
    {
      v37 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v37 = &_os_log_default;
      v38 = &_os_log_default;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&def_3A0E8, v37, OS_LOG_TYPE_DEFAULT, "_hook_detach() called!", buf, 2u);
    }

    v39 = [DetachEvent alloc];
    v40 = [NSNumber numberWithInt:v7];
    v41 = -[DetachEvent initWithTimestamp:primaryPort:restrictedModeEnabled:](v39, "initWithTimestamp:primaryPort:restrictedModeEnabled:", v28, v40, [v27 restrictedModeEnabled]);

    v42 = [v27 rmEventArray];
    [v42 addObject:v41];

    v43 = dispatch_walltime(0, 65000000000);
    v44 = [v27 ioAccessoryEventQueue];
    v158[0] = _NSConcreteStackBlock;
    v158[1] = 3221225472;
    v158[2] = __IOAccessoryManagerEventCallback_block_invoke_877;
    v158[3] = &unk_59A58;
    v45 = v27;
    v159 = v45;
    v46 = v28;
    v160 = v46;
    v161 = v7;
    dispatch_after(v43, v44, v158);

    _updateCachedAccessoryDetachTimes(v45, v7);
    _removeCachedDigitalID(v45, v7);
    out_token = -1;
    if (notify_register_check("com.apple.accessories.scp.objdetect", &out_token))
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v47 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v47 = &_os_log_default;
        v59 = &_os_log_default;
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *v177 = "com.apple.accessories.scp.objdetect";
        _os_log_impl(&def_3A0E8, v47, OS_LOG_TYPE_DEFAULT, "Failed to register for %s notification!", buf, 0xCu);
      }
    }

    else
    {
      notify_set_state(out_token, 0);
      notify_cancel(out_token);
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v56 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v56 = &_os_log_default;
        v72 = &_os_log_default;
      }

      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *v177 = "com.apple.accessories.scp.objdetect";
        _os_log_impl(&def_3A0E8, v56, OS_LOG_TYPE_INFO, "Post notification %s!", buf, 0xCu);
      }

      notify_post("com.apple.accessories.scp.objdetect");
    }

    goto LABEL_236;
  }

  if (a3 <= -469794798)
  {
    if (a3 == -536870896)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v48 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v48 = &_os_log_default;
        v61 = &_os_log_default;
      }

      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *v177 = v7;
        _os_log_impl(&def_3A0E8, v48, OS_LOG_TYPE_INFO, "kIOMessageServiceIsTerminated recieved on primaryPort: %d", buf, 8u);
      }

      v62 = [NSNumber numberWithInt:v7];
      v63 = [v5 doAttachEventsForPrimaryPortExistInList:v62];

      if (v63)
      {
        v64 = [NSNumber numberWithUnsignedLongLong:systemInfo_getCurrentUnixTimeMS()];
        v65 = [DetachEvent alloc];
        v66 = [NSNumber numberWithInt:v7];
        v67 = -[DetachEvent initWithTimestamp:primaryPort:restrictedModeEnabled:](v65, "initWithTimestamp:primaryPort:restrictedModeEnabled:", v64, v66, [v5 restrictedModeEnabled]);

        v68 = [v5 rmEventArray];
        [v68 addObject:v67];

        v69 = dispatch_walltime(0, 65000000000);
        v70 = [v5 ioAccessoryEventQueue];
        v154[0] = _NSConcreteStackBlock;
        v154[1] = 3221225472;
        v154[2] = __IOAccessoryManagerEventCallback_block_invoke_879;
        v154[3] = &unk_59A58;
        v155 = v5;
        v156 = v64;
        v157 = v7;
        v71 = v64;
        dispatch_after(v69, v70, v154);
      }

      _updateCachedAccessoryDetachTimes(v5, v7);
      _removeCachedDigitalID(v5, v7);
      goto LABEL_236;
    }

    if (a3 != -469794799)
    {
      goto LABEL_236;
    }

    goto LABEL_51;
  }

  if (a3 == -469794797)
  {
    goto LABEL_55;
  }

  if (a3 == -469794796)
  {
    if (!IOAccessoryPortGetServiceWithPort())
    {
      v25 = logObjectForModule(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        IOAccessoryManagerEventCallback_cold_20();
      }

      goto LABEL_41;
    }

    IOAccessoryPortGetManagerPrimaryPort();
    if (!IOAccessoryManagerGetServiceWithPrimaryPort())
    {
      v25 = logObjectForModule(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        IOAccessoryManagerEventCallback_cold_19();
      }

      goto LABEL_41;
    }

    if (IOAccessoryManagerGetUSBConnectType())
    {
      v25 = logObjectForModule(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        IOAccessoryManagerEventCallback_cold_13();
      }

LABEL_41:

      goto LABEL_236;
    }

    if (IOAccessoryManagerGetUSBConnectTypePublished())
    {
      v25 = logObjectForModule(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        IOAccessoryManagerEventCallback_cold_16();
      }

      goto LABEL_41;
    }

    LOBYTE(out_token) = 0;
    v92 = logObjectForModule(0);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *v177 = v7;
      *&v177[4] = 1024;
      *&v177[6] = v175;
      *v178 = 1024;
      *&v178[2] = v174;
      _os_log_impl(&def_3A0E8, v92, OS_LOG_TYPE_DEFAULT, "kIOAccessoryManagerMessageUSBConnectChange primaryPort: %d, connectType: %d, connectTypePublished: %d", buf, 0x14u);
    }

    _hook_usbConnectTypeChanged(v175, v174, &out_token);
    if (out_token == 1)
    {
      v93 = [NSNumber numberWithInt:v7];
      [v5 updateRMDialogShownForPrimaryPort:v93];

      _generateUnlockDialogSeenAnalyticEvent(a2, v5);
    }

    v94 = [v5 chargeConfigDict];

    if (!v94)
    {
      v95 = +[NSMutableDictionary dictionary];
      [v5 setChargeConfigDict:v95];
    }

    v96 = [v5 chargeConfigDict];
    v97 = [NSNumber numberWithInt:v7];
    v17 = [v96 objectForKey:v97];

    if (v17)
    {
      v98 = [v17 objectForKey:@"lightningCableType"];
      v99 = v98;
      if (!v98 || (v100 = [v98 intValue], v100 == v175))
      {
        v101 = 0;
LABEL_200:

        v112 = logObjectForModule(0);
        if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
        {
          v113 = [v5 chargeConfigDict];
          *buf = 138412290;
          *v177 = v113;
          _os_log_impl(&def_3A0E8, v112, OS_LOG_TYPE_INFO, "chargeConfigDict: %@", buf, 0xCu);
        }

        if (!v175)
        {
          v114 = [v5 cachedUSBConnectType];
          if (v114)
          {
            v115 = v114;
            v116 = v175;
            v117 = [v5 cachedUSBConnectType];
            v118 = [v117 intValue];

            if (v116 != v118)
            {
              v119 = [NSNumber numberWithUnsignedLongLong:systemInfo_getCurrentUnixTimeMS()];
              [v5 setLastUSBAccessoryDetachTime:v119];

              v120 = [v5 pluginDefaults];
              v121 = [v5 lastUSBAccessoryDetachTime];
              [v120 setObject:v121 forKey:@"lastUSBDetach"];

              v122 = logObjectForModule(0);
              if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
              {
                v123 = [v5 lastUSBAccessoryDetachTime];
                *buf = 138412546;
                *v177 = v123;
                *&v177[8] = 1024;
                *v178 = v175;
                _os_log_impl(&def_3A0E8, v122, OS_LOG_TYPE_INFO, "lastUSBAccessoryDetachTime: %@, connectType: %d", buf, 0x12u);
              }
            }
          }

          v124 = [v5 carPlayEventQueue];
          v168[0] = _NSConcreteStackBlock;
          v168[1] = 3221225472;
          v168[2] = __IOAccessoryManagerEventCallback_block_invoke;
          v168[3] = &unk_59250;
          v169 = v5;
          dispatch_async(v124, v168);
        }

        if (v101)
        {
          if (IOAccessoryManagerGetDigitalID())
          {
            v125 = logObjectForModule(0);
            if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
            {
              IOAccessoryManagerEventCallback_cold_12();
            }
          }

          else
          {
            *buf = 0;
            USBCurrentLimit = IOAccessoryManagerGetUSBCurrentLimit();
            if (USBCurrentLimit != -536870183 && USBCurrentLimit)
            {
              v134 = logObjectForModule(0);
              if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
              {
                IOAccessoryManagerEventCallback_cold_14();
              }
            }

            else
            {
              v127 = [NSNumber numberWithInt:v175];
              v128 = [NSNumber numberWithInt:v7];
              v129 = [NSData dataWithBytes:&v170 length:6];
              [v5 updateUSBConectType:v127 ForPrimaryPort:v128 WithDigitalID:v129];

              v130 = CFStringCreateFromCFData([NSData dataWithBytes:&v170 length:6], @"%02X");
              v183[0] = @"lightningCableType";
              v153 = [NSNumber numberWithInt:v175];
              v184[0] = v153;
              v183[1] = @"unlockedSinceBoot";
              v131 = [NSNumber numberWithBool:MKBDeviceUnlockedSinceBoot() != 0];
              v184[1] = v131;
              v183[2] = @"deviceIsPowered";
              v132 = [NSNumber numberWithBool:*buf != 0];
              v184[2] = v132;
              v183[3] = @"lightningDigitalID";
              v151 = v130;
              if (v130)
              {
                v133 = CFRetain(v130);
              }

              else
              {
                v133 = 0;
              }

              v184[3] = v133;
              v183[4] = @"lightningPrimaryPortNumber";
              v135 = [NSNumber numberWithInt:v7];
              v184[4] = v135;
              v183[5] = @"screenIsLocked";
              v136 = MKBGetDeviceLockState();
              v137 = (v136 - 1) < 2;
              if (v136 == 3)
              {
                v137 = 0;
              }

              if (v136)
              {
                v138 = v137;
              }

              else
              {
                v138 = 0;
              }

              v139 = [NSNumber numberWithBool:v138];
              v184[5] = v139;
              v140 = [NSDictionary dictionaryWithObjects:v184 forKeys:v183 count:6];
              v141 = [NSMutableDictionary dictionaryWithDictionary:v140];

              v142 = [v5 analyticsQueue];
              v165[0] = _NSConcreteStackBlock;
              v165[1] = 3221225472;
              v165[2] = __IOAccessoryManagerEventCallback_block_invoke_874;
              v165[3] = &unk_59A30;
              v134 = v141;
              v166 = v134;
              v167 = v175;
              dispatch_async(v142, v165);

              if (v151)
              {
                CFRelease(v151);
              }
            }
          }
        }

        v143 = v175;
        if (v175 - 2 <= 3)
        {
          _generateUSBAccessoryConnectionStatisticsEvent(v5, v7, &v170, v175);
          v144 = logObjectForModule(0);
          if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v177 = v175;
            _os_log_impl(&def_3A0E8, v144, OS_LOG_TYPE_DEFAULT, "IOAccessoryManagerEventCallback kIOAccessoryManagerMessageUSBConnectChange launching clients due to connectType: %d", buf, 8u);
          }

          [v5 launchDigitalIDClients];
          v143 = v175;
        }

        v145 = [NSNumber numberWithInt:v143];
        [v5 setCachedUSBConnectType:v145];

        v146 = [v5 pluginDefaults];
        v147 = [v5 cachedUSBConnectType];
        [v146 setObject:v147 forKey:@"cachedUSBConnectType"];

        goto LABEL_235;
      }

      v110 = [NSNumber numberWithInt:?];
      [v17 setObject:v110 forKey:@"lightningCableType"];
    }

    else
    {
      v185 = @"lightningCableType";
      v108 = [NSNumber numberWithInt:v175];
      v186 = v108;
      v109 = [NSDictionary dictionaryWithObjects:&v186 forKeys:&v185 count:1];
      v99 = [NSMutableDictionary dictionaryWithDictionary:v109];

      v110 = [v5 chargeConfigDict];
      v111 = [NSNumber numberWithInt:v7];
      [v110 setObject:v99 forKey:v111];
    }

    v101 = v175 - 1 < 0xFFFFFFFE;
    goto LABEL_200;
  }

  if (a3 == -469794795 && (PrimaryPort == 256 || PrimaryPort == 1))
  {
    out_token = 0;
    USBChargingVoltage = IOAccessoryManagerGetUSBChargingVoltage();
    v9 = 0;
    if (USBChargingVoltage != -536870183 && USBChargingVoltage)
    {
      v10 = logObjectForModule(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        IOAccessoryManagerEventCallback_cold_11();
      }

      v9 = 1;
    }

    v11 = IOAccessoryManagerGetUSBCurrentLimit();
    if (v11 != -536870183 && v11)
    {
      v17 = logObjectForModule(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        IOAccessoryManagerEventCallback_cold_14();
      }

      goto LABEL_235;
    }

    _hook_currentLimitChanged();
    if ((v9 & 1) == 0)
    {
      v12 = logObjectForModule(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 67109632;
        *v177 = v7;
        *&v177[4] = 1024;
        *&v177[6] = v172;
        *v178 = 1024;
        *&v178[2] = out_token;
        _os_log_impl(&def_3A0E8, v12, OS_LOG_TYPE_INFO, "kIOAccessoryManagerMessageUSBCurrentLimitChange primaryPort: %d, currentLimit: %d, chargeVoltage: %d", buf, 0x14u);
      }

      v13 = [v5 chargeConfigDict];

      if (!v13)
      {
        v14 = +[NSMutableDictionary dictionary];
        [v5 setChargeConfigDict:v14];
      }

      v15 = [v5 chargeConfigDict];
      v16 = [NSNumber numberWithInt:v7];
      v17 = [v15 objectForKey:v16];

      if (!v17)
      {
        v181[0] = @"lightningCableType";
        v86 = [NSNumber numberWithInt:0];
        v182[0] = v86;
        v181[1] = @"chargingVoltage";
        v87 = [NSNumber numberWithUnsignedInt:out_token];
        v182[1] = v87;
        v181[2] = @"chargingCurrent";
        v88 = [NSNumber numberWithUnsignedInt:v172];
        v182[2] = v88;
        v89 = [NSDictionary dictionaryWithObjects:v182 forKeys:v181 count:3];
        v18 = [NSMutableDictionary dictionaryWithDictionary:v89];

        v90 = [v5 chargeConfigDict];
        v91 = [NSNumber numberWithInt:v7];
        [v90 setObject:v18 forKey:v91];

LABEL_194:
        v106 = logObjectForModule(0);
        if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
        {
          v107 = [v5 chargeConfigDict];
          *buf = 138412290;
          *v177 = v107;
          _os_log_impl(&def_3A0E8, v106, OS_LOG_TYPE_INFO, "chargeConfigDict: %@", buf, 0xCu);
        }

LABEL_235:
        goto LABEL_236;
      }

      v18 = [v17 objectForKey:@"chargingVoltage"];
      v19 = [v17 objectForKey:@"chargingCurrent"];
      if (v18)
      {
        v20 = [v18 intValue];
        v21 = out_token;
        if (v20 == out_token)
        {
LABEL_188:
          if (v19)
          {
            v103 = [v19 intValue];
            v104 = v172;
            if (v103 == v172)
            {
              goto LABEL_193;
            }
          }

          else
          {
            v104 = v172;
          }

          v105 = [NSNumber numberWithInt:v104];
          [v17 setObject:v105 forKey:@"chargingCurrent"];

LABEL_193:
          goto LABEL_194;
        }
      }

      else
      {
        v21 = out_token;
      }

      v102 = [NSNumber numberWithInt:v21];
      [v17 setObject:v102 forKey:@"chargingVoltage"];

      goto LABEL_188;
    }
  }

LABEL_236:
}

id acc_userDefaults_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyStringForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 stringForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyArrayForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 arrayForKey:a1];

  return v3;
}

uint64_t acc_userDefaults_copyDictionaryForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 dictionaryForKey:a1];

  return v3;
}

id acc_userDefaults_copyIntegerForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  v3 = [v2 integerForKey:a1];

  return v3;
}

double acc_userDefaults_copyDoubleForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaults];
  [v2 doubleForKey:a1];
  v4 = v3;

  return v4;
}

void acc_userDefaults_setArrayForKey(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setObject:a2 forKey:a1];
}

void acc_userDefaults_setIntegerForKey(uint64_t a1, uint64_t a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setInteger:a2 forKey:a1];
}

void acc_userDefaults_setDoubleForKey(uint64_t a1, double a2)
{
  v4 = +[ACCUserDefaults sharedDefaults];
  [v4 setDouble:a1 forKey:a2];
}

id acc_userDefaultsIapd_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyStringForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 stringForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyArrayForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 arrayForKey:a1];

  return v3;
}

uint64_t acc_userDefaultsIapd_copyDictionaryForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 dictionaryForKey:a1];

  return v3;
}

id acc_userDefaultsIapd_copyIntegerForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  v3 = [v2 integerForKey:a1];

  return v3;
}

double acc_userDefaultsIapd_copyDoubleForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsIapd];
  [v2 doubleForKey:a1];
  v4 = v3;

  return v4;
}

id acc_userDefaultsLogging_BOOLForKey(uint64_t a1)
{
  v2 = +[ACCUserDefaults sharedDefaultsLogging];
  v3 = [v2 BOOLForKey:a1];

  return v3;
}

id acc_userNotifications_generateIdentifier(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a1 && a2)
  {
    v3 = [NSString stringWithFormat:@"%@_%@", a1, a2];
    v2 = vars8;
  }

  return v3;
}

ACCUserNotification *acc_userNotifications_accessoryNotSupported()
{
  v0 = objc_alloc_init(ACCUserNotification);
  [(ACCUserNotification *)v0 setType:2];
  v1 = acc_strings_bundle();
  v2 = [v1 localizedStringForKey:@"Accessory Not Supported" value:&stru_5A178 table:0];
  [(ACCUserNotification *)v0 setTitle:v2];

  v3 = acc_strings_bundle();
  v4 = [v3 localizedStringForKey:@"This accessory is not supported by this device." value:&stru_5A178 table:0];
  [(ACCUserNotification *)v0 setMessage:v4];

  [(ACCUserNotification *)v0 setIsModal:0];
  [(ACCUserNotification *)v0 setPresentViaSystemAperture:1];

  return v0;
}

ACCUserNotification *acc_userNotifications_chargingNotSupported()
{
  v0 = objc_alloc_init(ACCUserNotification);
  [(ACCUserNotification *)v0 setType:2];
  v1 = acc_strings_bundle();
  v2 = [v1 localizedStringForKey:@"Charging Not Supported" value:&stru_5A178 table:0];
  [(ACCUserNotification *)v0 setTitle:v2];

  v3 = acc_strings_bundle();
  v4 = [v3 localizedStringForKey:@"Charging with this accessory is not supported by Apple Device." value:&stru_5A178 table:0];
  [(ACCUserNotification *)v0 setMessage:v4];

  v5 = acc_strings_bundle();
  v6 = [v5 localizedStringForKey:@"Dismiss" value:&stru_5A178 table:0];
  [(ACCUserNotification *)v0 setDefaultButtonName:v6];

  [(ACCUserNotification *)v0 setIsModal:0];

  return v0;
}

ACCUserNotification *acc_userNotifications_unlockToUseAccessories()
{
  v0 = objc_alloc_init(ACCUserNotification);
  [(ACCUserNotification *)v0 setType:2];
  v1 = acc_strings_bundle();
  v2 = [v1 localizedStringForKey:@"Accessory Connected" value:&stru_5A178 table:0];
  [(ACCUserNotification *)v0 setTitle:v2];

  v3 = acc_strings_bundle();
  v4 = [v3 localizedStringForKey:@"Unlock %@ to use accessories" value:&stru_5A178 table:0];
  v5 = [NSString stringWithFormat:v4, systemInfo_copyDeviceClass()];
  [(ACCUserNotification *)v0 setMessage:v5];

  [(ACCUserNotification *)v0 setIsModal:0];
  [(ACCUserNotification *)v0 setDismissOnUnlock:1];
  [(ACCUserNotification *)v0 setIgnoreQuietMode:1];
  [(ACCUserNotification *)v0 setSystemSoundID:&off_63618];

  return v0;
}

ACCUserNotification *acc_userNotifications_disabledHSAID()
{
  v0 = objc_alloc_init(ACCUserNotification);
  [(ACCUserNotification *)v0 setType:1];
  v1 = acc_strings_bundle();
  v2 = [v1 localizedStringForKey:@"Serial Boot-Arg Detected" value:&stru_5A178 table:0];
  [(ACCUserNotification *)v0 setTitle:v2];

  v3 = acc_strings_bundle();
  v4 = [v3 localizedStringForKey:@"There are known compatibility issues with the 'serial' boot-arg and Smart Connector accessories value:even for those not using HSAID. Please disable the 'serial' boot-arg when using Smart Connector accessories." table:{&stru_5A178, 0}];
  [(ACCUserNotification *)v0 setMessage:v4];

  [(ACCUserNotification *)v0 setIsModal:0];

  return v0;
}

void sub_8BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_92B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void _userNotificationCallback(const void *a1, uint64_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    _userNotificationCallback_cold_1();
  }

  v4 = [NSValue valueWithPointer:a1];
  v5 = +[IOUserNotification _notificationMapTableLock];
  [v5 lock];

  v6 = +[IOUserNotification _notificationMapTable];
  v7 = [v6 objectForKey:v4];

  v8 = +[IOUserNotification _notificationMapTableLock];
  [v8 unlock];

  if (v7)
  {
    v9 = +[IOUserNotification _notificationMapTableLock];
    [v9 lock];

    v10 = +[IOUserNotification _notificationMapTable];
    [v10 removeObjectForKey:v4];

    v11 = +[IOUserNotification _notificationMapTableLock];
    [v11 unlock];

    CFRetain(a1);
    v12 = [v7 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___userNotificationCallback_block_invoke;
    block[3] = &unk_59348;
    v14 = v7;
    v15 = a2;
    v16 = a1;
    dispatch_async(v12, block);

    if (!a1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    _userNotificationCallback_cold_2();
    if (!a1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a1)
  {
LABEL_8:
    CFRelease(a1);
  }

LABEL_9:
}

void sub_9B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___userNotificationCallback_block_invoke(uint64_t a1)
{
  [*(a1 + 32) setVisible:0];
  v2 = *(a1 + 40);
  if ((~*(a1 + 40) & 3) == 0)
  {
    [*(a1 + 32) setNotificationCancelled:1];
    v2 = *(a1 + 40);
  }

  if ((v2 & 3) == 0)
  {
    v3 = [*(a1 + 32) buttonsMutable];
    v4 = [v3 count];

    if (!v4)
    {
      v5 = [*(a1 + 32) buttonsMutable];
      v6 = [IOUserNotificationButton buttonWithTitle:&stru_5A178];
      [v5 addObject:v6];
    }

    [*(a1 + 32) setResponseReceived:1];
    v7 = [*(a1 + 32) buttonsMutable];
    v8 = [v7 objectAtIndexedSubscript:0];
    [v8 setSelected:1];

    v2 = *(a1 + 40);
  }

  if ((v2 & 3) == 1)
  {
    [*(a1 + 32) setResponseReceived:1];
    v9 = [*(a1 + 32) buttonsMutable];
    v10 = [v9 objectAtIndexedSubscript:1];
    [v10 setSelected:1];

    v2 = *(a1 + 40);
  }

  v11 = v2 & 3;
  if (v11 == 2)
  {
    [*(a1 + 32) setResponseReceived:1];
    v12 = [*(a1 + 32) buttonsMutable];
    v13 = [v12 objectAtIndexedSubscript:2];
    [v13 setSelected:1];

    v11 = *(a1 + 40) & 3;
  }

  [*(a1 + 32) setResponse:v11];
  v14 = [*(a1 + 32) optionsMutable];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = ___userNotificationCallback_block_invoke_2;
  v17[3] = &__block_descriptor_40_e41_v32__0__IOUserNotificationOption_8Q16_B24l;
  v17[4] = *(a1 + 40);
  [v14 enumerateObjectsUsingBlock:v17];

  v15 = [*(a1 + 32) responseHandler];

  if (v15)
  {
    v16 = [*(a1 + 32) responseHandler];
    v16[2](v16, *(a1 + 32), 0);
  }

  CFRelease(*(a1 + 48));
}

void sub_D490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_E0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  objc_destroyWeak((v11 + 64));
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  objc_destroyWeak((v12 - 112));
  _Unwind_Resume(a1);
}

void sub_E65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_EA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id _platform()
{
  v0 = MGCopyAnswer();

  return v0;
}

id _productVersion()
{
  v0 = MGCopyAnswer();

  return v0;
}

id _modelNumber()
{
  v0 = MGCopyAnswer();

  return v0;
}

id _productType()
{
  v0 = MGCopyAnswer();

  return v0;
}

CFStringRef CFCreateUUIDString()
{
  v0 = CFUUIDCreate(kCFAllocatorDefault);
  v1 = CFUUIDCreateString(kCFAllocatorDefault, v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

CFStringRef CFArrayCreateRawValuesString(const __CFArray *a1, int a2)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppend(Mutable, @"{\n");
  v5.length = CFArrayGetCount(a1);
  if (a2)
  {
    v6 = _CFArraySetPrintRawValuesApplierFunctionHex;
  }

  else
  {
    v6 = _CFArraySetPrintRawValuesApplierFunctionDecimal;
  }

  v5.location = 0;
  CFArrayApplyFunction(a1, v5, v6, Mutable);
  CFStringAppend(Mutable, @"}");
  Copy = CFStringCreateCopy(kCFAllocatorDefault, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

CFStringRef CFSetCreateRawValuesString(const __CFSet *a1, int a2)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppend(Mutable, @"{\n");
  if (a2)
  {
    v5 = _CFArraySetPrintRawValuesApplierFunctionHex;
  }

  else
  {
    v5 = _CFArraySetPrintRawValuesApplierFunctionDecimal;
  }

  CFSetApplyFunction(a1, v5, Mutable);
  CFStringAppend(Mutable, @"}");
  Copy = CFStringCreateCopy(kCFAllocatorDefault, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

CFStringRef CFDictCreateRawKeyValueString(const __CFDictionary *a1, int a2)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppend(Mutable, @"{\n");
  if (a2)
  {
    v5 = _CFDictPrintRawKeyValueApplierFunctionHex;
  }

  else
  {
    v5 = _CFDictPrintRawKeyValueApplierFunctionDecimal;
  }

  CFDictionaryApplyFunction(a1, v5, Mutable);
  CFStringAppend(Mutable, @"}");
  Copy = CFStringCreateCopy(kCFAllocatorDefault, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

__CFString *CFStringCreateFromCFData(const __CFData *a1, const __CFString *a2)
{
  if (!a1)
  {
    return &stru_5A178;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (Length >= 1)
  {
    do
    {
      v7 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, a2, v7);
      --Length;
    }

    while (Length);
  }

  Copy = CFStringCreateCopy(kCFAllocatorDefault, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

CFStringRef CFStringCreateFromFormat(uint64_t a1, const __CFString *a2)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppendFormat(Mutable, 0, a2, a1);
  Copy = CFStringCreateCopy(kCFAllocatorDefault, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

CFSetRef CFDictionaryGetKeys(const __CFDictionary *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2 ? &kCFTypeSetCallBacks : 0;
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, v3);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  CFDictionaryApplyFunction(a1, CFDictionaryApplierFunction_addKeyToMutableSet, Mutable);
  Copy = CFSetCreateCopy(kCFAllocatorDefault, v5);
  CFRelease(v5);
  return Copy;
}

void CFDictionaryApplierFunction_addKeyToMutableSet(void *value, int a2, CFMutableSetRef theSet)
{
  if (value)
  {
    if (theSet)
    {
      CFSetAddValue(theSet, value);
    }
  }
}

char *createCStringFromCFString(const __CFString *a1, CFStringEncoding a2)
{
  bufferSize = 0;
  if (!a1)
  {
    return 0;
  }

  v9.length = CFStringGetLength(a1);
  v9.location = 0;
  CFStringGetBytes(a1, v9, 0x8000100u, 0, 0, 0, 0, &bufferSize);
  v4 = malloc_type_malloc(++bufferSize, 0xAE6E017BuLL);
  CString = CFStringGetCString(a1, v4, bufferSize, a2);
  if (v4)
  {
    v6 = CString == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    free(v4);
    return 0;
  }

  return v4;
}

void CFDictionaryApplierFunction_addValueToMutableDictionary(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (key)
  {
    if (theDict)
    {
      CFDictionaryAddValue(theDict, key, value);
    }
  }
}

void CFDictionaryApplierFunction_setValueInMutableDictionary(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (key)
  {
    if (theDict)
    {
      CFDictionarySetValue(theDict, key, value);
    }
  }
}

void executeOnMainThreadSync(uint64_t a1)
{
  if (pthread_main_np())
  {
    v2 = *(a1 + 16);

    v2(a1);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = __executeOnMainThreadSync_block_invoke;
    block[3] = &unk_59600;
    block[4] = a1;
    dispatch_sync(&_dispatch_main_q, block);
  }
}

void executeOnMainThreadAsync(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __executeOnMainThreadAsync_block_invoke;
  block[3] = &unk_59628;
  block[4] = a1;
  dispatch_async(&_dispatch_main_q, block);
}

void init_logging_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __init_logging_modules_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_modules_onceToken, block);
  }
}

void __init_logging_modules_block_invoke(uint64_t a1)
{
  v2 = "_NSZone=}16@0:8";
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + v3);
      if (!v7)
      {
        v7 = "<Undefined>";
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v12) = v4;
          _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
          v6 = *(a1 + 32);
          v7 = "<Undefined>";
        }
      }

      v8 = *(v6 + v3 + 8);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __init_logging_modules_block_invoke_cold_1(v15, v4, &v16);
          v8 = "<Undefined>";
        }
      }

      v9 = os_log_create(v7, v8);
      *(*(a1 + 40) + 8 * v4) = v9;
      if (v9)
      {
        ++v5;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v12 = v7;
          v13 = 2080;
          v14 = v8;
          _os_log_debug_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = v7;
        v13 = 2080;
        v14 = v8;
        _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v10 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v10);
    v2 = "^{_NSZone=}16@0:8" + 2;
  }

  else
  {
    LODWORD(v10) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 221);
    LODWORD(v12) = v5;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v10) = *(a1 + 48);
  }

  gLogObjects = *(a1 + 40);
  gNumLogObjects = v10;
}

CFNumberRef acc_analytics_createBucketizedAnalyticEventDuration(unint64_t a1)
{
  if (a1 > 299)
  {
    if (a1 > 0x258)
    {
      if (a1 > 0x708)
      {
        if (a1 > 0xE10)
        {
          if (a1 > 0x3840)
          {
            if (a1 > 0xA8C0)
            {
              if (a1 > 0x15180)
              {
                if (a1 > 0x3F480)
                {
                  if (a1 > 0x93A80)
                  {
                    v1 = 10;
                  }

                  else
                  {
                    v1 = 9;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  valuePtr = v1;
  return CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
}

CFNumberRef acc_analytics_createBucketizedUnlockDialogAnalyticEventTime(unint64_t a1)
{
  if (a1 > 3599)
  {
    if (a1 > 0x1518)
    {
      if (a1 > 0x1C20)
      {
        if (a1 > 0x2A30)
        {
          if (a1 > 0x3840)
          {
            if (a1 > 0x7080)
            {
              if (a1 > 0xA8C0)
              {
                if (a1 > 0x15180)
                {
                  if (a1 > 0x3F480)
                  {
                    v1 = 10;
                  }

                  else
                  {
                    v1 = 9;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  valuePtr = v1;
  return CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
}

CFNumberRef acc_analytics_createBucketizedWiredAuthDuration(unint64_t a1)
{
  if (a1 > 0x1F3)
  {
    if (a1 > 0x3E8)
    {
      if (a1 > 0x5DC)
      {
        if (a1 > 0x7D0)
        {
          if (a1 > 0x1388)
          {
            if (a1 > 0x2710)
            {
              if (a1 > 0x3A98)
              {
                if (a1 > 0x4E20)
                {
                  if (a1 > 0x7530)
                  {
                    v1 = 10;
                  }

                  else
                  {
                    v1 = 9;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  valuePtr = v1;
  return CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
}

CFNumberRef acc_analytics_createBucketizedInductiveAuthDuration(unint64_t a1)
{
  if (a1 > 0xE)
  {
    if (a1 > 0x1E)
    {
      if (a1 > 0x2D)
      {
        if (a1 > 0x3C)
        {
          if (a1 > 0x5A)
          {
            if (a1 > 0x78)
            {
              if (a1 > 0x96)
              {
                if (a1 > 0xB4)
                {
                  if (a1 > 0xFA)
                  {
                    v1 = 10;
                  }

                  else
                  {
                    v1 = 9;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  valuePtr = v1;
  return CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
}

CFNumberRef acc_analytics_createBucketizedBatteryChargeLevel(unsigned int a1)
{
  if (a1 > 9)
  {
    if (a1 > 0x14)
    {
      if (a1 > 0x1E)
      {
        if (a1 > 0x28)
        {
          if (a1 > 0x32)
          {
            if (a1 > 0x3C)
            {
              if (a1 > 0x46)
              {
                if (a1 > 0x50)
                {
                  if (a1 > 0x5A)
                  {
                    v1 = 10;
                  }

                  else
                  {
                    v1 = 9;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  valuePtr = v1;
  return CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
}

CFNumberRef acc_analytics_createBucketizedBatteryChargeDelta(int a1)
{
  if (a1 > -90)
  {
    if (a1 > -80)
    {
      if (a1 > -70)
      {
        if (a1 > -60)
        {
          if (a1 > -50)
          {
            if (a1 > -40)
            {
              if (a1 > -30)
              {
                if (a1 > -20)
                {
                  if (a1 > -10)
                  {
                    if (a1 <= 0)
                    {
                      v1 = 10;
                    }

                    else if (a1 > 0xA)
                    {
                      if (a1 > 0x14)
                      {
                        if (a1 > 0x1E)
                        {
                          if (a1 > 0x28)
                          {
                            if (a1 > 0x32)
                            {
                              if (a1 > 0x3C)
                              {
                                if (a1 > 0x46)
                                {
                                  if (a1 > 0x50)
                                  {
                                    if (a1 > 0x5A)
                                    {
                                      v1 = 20;
                                    }

                                    else
                                    {
                                      v1 = 19;
                                    }
                                  }

                                  else
                                  {
                                    v1 = 18;
                                  }
                                }

                                else
                                {
                                  v1 = 17;
                                }
                              }

                              else
                              {
                                v1 = 16;
                              }
                            }

                            else
                            {
                              v1 = 15;
                            }
                          }

                          else
                          {
                            v1 = 14;
                          }
                        }

                        else
                        {
                          v1 = 13;
                        }
                      }

                      else
                      {
                        v1 = 12;
                      }
                    }

                    else
                    {
                      v1 = 11;
                    }
                  }

                  else
                  {
                    v1 = 9;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  valuePtr = v1;
  return CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
}

CFNumberRef acc_analytics_createBucketizeBatteryPackConnectionDuration(unint64_t a1)
{
  if (a1 > 0x1B773F)
  {
    if (a1 > 0x36F267)
    {
      if (a1 > 0x6DE0E7)
      {
        if (a1 > 0xDBBDE7)
        {
          if (a1 > 0x1B777E7)
          {
            if (a1 > 0x29331E7)
            {
              if (a1 > 0x5265FE7)
              {
                if (a1 > 0xF7317E7)
                {
                  if (a1 > 0x240C87E7)
                  {
                    v1 = 10;
                  }

                  else
                  {
                    v1 = 9;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  valuePtr = v1;
  return CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
}

CFNumberRef acc_analytics_createBucketizePowerSourceChargingTime(unint64_t a1)
{
  if (a1 > 0x3E7)
  {
    if (a1 > 0xDBB9F)
    {
      if (a1 > 0x1B7B27)
      {
        if (a1 > 0x36F267)
        {
          if (a1 > 0x6DE0E7)
          {
            if (a1 > 0xDBBDE7)
            {
              if (a1 > 0x1B777E7)
              {
                if (a1 > 0x29331E7)
                {
                  if (a1 > 0x5265FE7)
                  {
                    if (a1 > 0xF7317E7)
                    {
                      if (a1 > 0x240C87E7)
                      {
                        v1 = 12;
                      }

                      else
                      {
                        v1 = 11;
                      }
                    }

                    else
                    {
                      v1 = 10;
                    }
                  }

                  else
                  {
                    v1 = 9;
                  }
                }

                else
                {
                  v1 = 8;
                }
              }

              else
              {
                v1 = 7;
              }
            }

            else
            {
              v1 = 6;
            }
          }

          else
          {
            v1 = 5;
          }
        }

        else
        {
          v1 = 4;
        }
      }

      else
      {
        v1 = 3;
      }
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 1;
  }

  valuePtr = v1;
  return CFNumberCreate(kCFAllocatorDefault, kCFNumberCharType, &valuePtr);
}

void __38__ueaPluginSystemSettingsMonitor_init__block_invoke(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"airplaneModeOrBTSettingChanged:" name:ueaPluginSystemSettingsAirplaneModeChanged object:0];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:"airplaneModeOrBTSettingChanged:" name:ueaPluginSystemSettingsBluetoothSettomgChanged object:0];

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
    *buf = 0;
    _os_log_impl(&def_3A0E8, v4, OS_LOG_TYPE_INFO, "Registered for : airplaneMode and bluetooth setting change", buf, 2u);
  }

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v6 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v6 = &_os_log_default;
    v7 = &_os_log_default;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&def_3A0E8, v6, OS_LOG_TYPE_DEFAULT, "Init _airplaneMode", v17, 2u);
  }

  v8 = objc_alloc_init(AirplaneMode);
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  *(v9 + 16) = v8;

  if (gLogObjects && gNumLogObjects >= 3)
  {
    v11 = *(gLogObjects + 16);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v11 = &_os_log_default;
    v12 = &_os_log_default;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&def_3A0E8, v11, OS_LOG_TYPE_DEFAULT, "Init _bluetoothSetting", v16, 2u);
  }

  v13 = objc_alloc_init(BluetoothSetting);
  v14 = *(a1 + 32);
  v15 = *(v14 + 24);
  *(v14 + 24) = v13;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

uint64_t _serviceAdded(void *a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      [a1 _handleServiceAdded:v5];
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

unint64_t systemInfo_getCurrentUnixTime()
{
  v0 = +[NSDate date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = vcvtad_u64_f64(v2);
  if (v2 <= 0.0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

unint64_t systemInfo_getCurrentUnixTimeMS()
{
  v0 = +[NSDate date];
  [v0 timeIntervalSince1970];
  v2 = v1;

  v3 = vcvtad_u64_f64(v2 * 1000.0);
  if (v2 <= 0.0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t systemInfo_isInternalBuild()
{
  if (systemInfo_isInternalBuild_onceToken != -1)
  {
    systemInfo_isInternalBuild_cold_1();
  }

  return systemInfo_isInternalBuild_internalBuild;
}

uint64_t systemInfo_isDeveloperBuild()
{
  if (systemInfo_isDeveloperBuild_onceToken != -1)
  {
    systemInfo_isDeveloperBuild_cold_1();
  }

  return systemInfo_isDeveloperBuild_developerBuild;
}

void __systemInfo_isDeveloperBuild_block_invoke(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    systemInfo_isDeveloperBuild_developerBuild = CFEqual(v1, @"Beta") != 0;

    CFRelease(v2);
  }

  else
  {
    systemInfo_isDeveloperBuild_developerBuild = 0;
  }
}

uint64_t systemInfo_systemSupportsPearl()
{
  if (systemInfo_systemSupportsPearl_onceToken != -1)
  {
    systemInfo_systemSupportsPearl_cold_1();
  }

  return systemInfo_systemSupportsPearl_supportsPearl;
}

uint64_t systemInfo_systemSupportsWAPI()
{
  if (systemInfo_systemSupportsWAPI_onceToken != -1)
  {
    systemInfo_systemSupportsWAPI_cold_1();
  }

  return systemInfo_systemSupportsWAPI_supportsWAPI;
}

id systemInfo_isHomePod()
{
  v0 = MGCopyAnswer();
  v1 = [v0 isEqualToString:@"AudioAccessory"];

  return v1;
}

uint64_t systemInfo_copyRegionCode()
{
  if (systemInfo_copyRegionCode_onceToken != -1)
  {
    systemInfo_copyRegionCode_cold_1();
  }

  if (systemInfo_copyRegionCode_regionCode)
  {
    v0 = CFGetTypeID(systemInfo_copyRegionCode_regionCode);
    if (v0 == CFStringGetTypeID())
    {
      return systemInfo_copyRegionCode_regionCode;
    }
  }

  result = 0;
  systemInfo_copyRegionCode_regionCode = 0;
  return result;
}

void acc_restrictedMode_accessoryAttached()
{
  v1[0] = 1;
  v0 = ACMKernelControl(34);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_INFO, "acmStatus (accessoryAttached): %d", v1, 8u);
  }
}

void acc_restrictedMode_accessoryDetached()
{
  v1[0] = 1;
  v0 = ACMKernelControl(37);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_INFO, "acmStatus (accessoryDetached): %d", v1, 8u);
  }
}

id acc_strings_bundle()
{
  v0 = acc_strings_bundle_bundle;
  if (!acc_strings_bundle_bundle)
  {
    v1 = [NSBundle bundleWithIdentifier:kACCIdentifiers_CoreAccessoriesBundleID];
    v2 = acc_strings_bundle_bundle;
    acc_strings_bundle_bundle = v1;

    v0 = acc_strings_bundle_bundle;
  }

  return v0;
}

id acc_strings_placeholder_Unknown()
{
  v0 = acc_strings_bundle();
  v1 = [v0 localizedStringForKey:@"Unknown" value:&stru_5A178 table:0];

  return v1;
}

CFBundleRef acc_strings_bundleCF()
{
  result = acc_strings_bundleCF_bundle;
  if (!acc_strings_bundleCF_bundle)
  {
    result = CFBundleGetBundleWithIdentifier(kCFACCIdentifiers_CoreAccessoriesBundleID);
    acc_strings_bundleCF_bundle = result;
  }

  return result;
}

void printDictionaryDelta(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[NSMutableSet set];
  v6 = [v3 allKeys];
  [v5 addObjectsFromArray:v6];

  v7 = [v4 allKeys];
  [v5 addObjectsFromArray:v7];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v22;
    *&v10 = 138412802;
    v20 = v10;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v3 objectForKeyedSubscript:{v14, v20, v21}];
        v16 = [v4 objectForKeyedSubscript:v14];
        v17 = [v15 isEqual:v16];

        if ((v17 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v3 objectForKeyedSubscript:v14];
          v19 = [v4 objectForKeyedSubscript:v14];
          *buf = v20;
          v26 = v14;
          v27 = 2112;
          v28 = v18;
          v29 = 2112;
          v30 = v19;
          _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@: %@ -> %@", buf, 0x20u);
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v11);
  }
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

ACCUserNotification *ACCUNCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v19 = objc_alloc_init(ACCUserNotification);
  [(ACCUserNotification *)v19 setType:a1];
  [(ACCUserNotification *)v19 setTitle:a2];
  [(ACCUserNotification *)v19 setMessage:a3];
  [(ACCUserNotification *)v19 setDefaultButtonName:a4];
  [(ACCUserNotification *)v19 setOtherButtonName:a5];
  [(ACCUserNotification *)v19 setIconURL:a6];
  [(ACCUserNotification *)v19 setIsModal:a7];
  [(ACCUserNotification *)v19 setTimeout:a9];
  [(ACCUserNotification *)v19 setIdentifier:a8];
  [(ACCUserNotification *)v19 setGroupIdentifier:a10];
  return v19;
}

BOOL ACCUNSetModal(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 setIsModal:a2];
  }

  return a1 != 0;
}

BOOL ACCUNSetDismissOnUnlock(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 setDismissOnUnlock:a2];
  }

  return a1 != 0;
}

BOOL ACCUNSetIdentifier(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 setIdentifier:a2];
  }

  return a1 != 0;
}

BOOL ACCUNSetGroupIdentifier(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 setGroupIdentifier:a2];
  }

  return a1 != 0;
}

void *ACCUNCopyUUIDString(void *result)
{
  if (result)
  {
    [result uuid];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

id logObjectForModule(int a1)
{
  if (gLogObjects)
  {
    v1 = gNumLogObjects <= a1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      logObjectForModule_cold_1();
    }

    v3 = &_os_log_default;
    v2 = &_os_log_default;
  }

  else
  {
    v3 = *(gLogObjects + 8 * a1);
  }

  return v3;
}

void __43__accessorydMatchingPlugin_initWithModule___block_invoke(id a1, int a2)
{
  state64 = 0xAAAAAAAAAAAAAAAALL;
  notify_get_state(a2, &state64);
  v2 = state64;
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 4;
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
    v5 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "YES";
    if (!v2)
    {
      v6 = "NO";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v6;
    _os_log_impl(&def_3A0E8, v5, OS_LOG_TYPE_INFO, "SpringBoard lock state changed! (newSpringBoardLockState: %s)", &buf, 0xCu);
  }

  if (!v2)
  {
    *&v16 = 0;
    *(&v16 + 1) = &v16;
    *&v17 = 0x2020000000;
    BYTE8(v17) = 0;
    v7 = _uiQueue();
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v21 = ___isUnlockDialogPresent_block_invoke;
    v22 = &unk_59998;
    v23 = &v16;
    dispatch_sync(v7, &buf);

    LODWORD(v7) = *(*(&v16 + 1) + 24);
    _Block_object_dispose(&v16, 8);
    if (v7 == 1)
    {
      _dismissUnlockDialog();
    }

    else if ([_userNotificationsTRM count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = [_userNotificationsTRM allValues];
      v9 = [v8 countByEnumeratingWithState:&v16 objects:&buf count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            v14 = +[ACCUserNotificationManager sharedManager];
            [v14 updateNotification:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:&buf count:16];
        }

        while (v10);
      }
    }
  }
}

void __35__accessorydMatchingPlugin_dealloc__block_invoke(id a1)
{
  if (_gTRMNotificationTimer)
  {
    dispatch_source_cancel(_gTRMNotificationTimer);
  }
}

id __66__accessorydMatchingPlugin_startIOAccessoryManagerEventMonitoring__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isIOAccessoryManagerMonitorRunning];
  if ((result & 1) == 0)
  {
    if (![*(a1 + 32) ioAccessoryManagerClassNotify])
    {
      [*(a1 + 32) setIoAccessoryManagerClassNotify:IONotificationPortCreate(kIOMainPortDefault)];
    }

    v3 = [*(a1 + 32) ioAccessoryManagerClassNotify];
    v4 = [*(a1 + 32) ioAccessoryEventQueue];
    IONotificationPortSetDispatchQueue(v3, v4);

    v5 = [*(a1 + 32) ioAccessoryManagerClassNotify];
    v6 = IOServiceMatching("IOAccessoryManager");
    v7 = IOServiceAddMatchingNotification(v5, "IOServiceFirstPublish", v6, IOAccessoryManagerAdded, *(a1 + 32), (*(a1 + 32) + 28));
    if (v7)
    {
      v8 = v7;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
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

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __66__accessorydMatchingPlugin_startIOAccessoryManagerEventMonitoring__block_invoke_cold_2(v8);
      }
    }

    else
    {
      IOAccessoryManagerAdded(*(a1 + 32), [*(a1 + 32) ioAccessoryManagerClassIteratorArrived]);
    }

    v11 = [*(a1 + 32) ioAccessoryManagerClassNotify];
    v12 = IOServiceMatching("IOAccessoryManager");
    if (IOServiceAddMatchingNotification(v11, "IOServiceTerminate", v12, IOAccessoryManagerTerminated, *(a1 + 32), (*(a1 + 32) + 32)))
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v13 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v13 = &_os_log_default;
        v14 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __66__accessorydMatchingPlugin_startIOAccessoryManagerEventMonitoring__block_invoke_cold_4();
      }
    }

    else
    {
      IOAccessoryManagerTerminated(*(a1 + 32), [*(a1 + 32) ioAccessoryManagerClassIteratorTerminated]);
    }

    return [*(a1 + 32) setIsIOAccessoryManagerMonitorRunning:1];
  }

  return result;
}

void IOAccessoryManagerAdded(void *a1, io_iterator_t a2)
{
  v3 = a1;
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    name = kRegulatoryDomainUpdateNotification;
    v76 = kCFACCUserDefaultsKey_EnableChinaInductiveTx;
    v74 = a2;
    do
    {
      notification = 0;
      PrimaryPort = IOAccessoryManagerGetPrimaryPort();
      v86 = -21846;
      v85 = -1431655766;
      v7 = IOServiceAddInterestNotification([v3 ioAccessoryManagerClassNotify], v5, "IOGeneralInterest", IOAccessoryManagerEventCallback, v3, &notification);
      if (v7)
      {
        v8 = v7;
        v9 = gLogObjects;
        v10 = gNumLogObjects;
        if (gLogObjects)
        {
          v11 = gNumLogObjects < 1;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v90 = v9;
            *&v90[8] = 1024;
            v91[0] = v10;
            _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v12 = &_os_log_default;
          v13 = &_os_log_default;
        }

        else
        {
          v13 = *gLogObjects;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *v90 = "void IOAccessoryManagerAdded(void *, io_iterator_t)";
          *&v90[8] = 1024;
          v91[0] = v8;
          _os_log_error_impl(&def_3A0E8, v13, OS_LOG_TYPE_ERROR, "%s IOServiceAddInterestNotification fail status: %02X\n", buf, 0x12u);
        }
      }

      else
      {
        [v3 setDigitalIDMatchingEnabled:1];
      }

      switch(PrimaryPort)
      {
        case 1:
          goto LABEL_19;
        case 0x200:
          v17 = acc_userDefaults_BOOLForKey(v76);
          v18 = gLogObjects;
          v19 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v20 = *gLogObjects;
          }

          else
          {
            v20 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v90 = v18;
              *&v90[8] = 1024;
              v91[0] = v19;
              _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v21 = &_os_log_default;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v90 = v17 ^ 1;
            _os_log_impl(&def_3A0E8, v20, OS_LOG_TYPE_DEFAULT, "kIOAccessoryPortID0Pin: _notifyDriverOfInductiveTxSetting: disableChinaInductiveTx:%x", buf, 8u);
          }

          v22 = systemInfo_copyRegionCode();
          if (v22)
          {
            v23 = v22;
            if ((CFEqual(v22, @"CH") == 0) | v17 & 1)
            {
              v24 = 1;
            }

            else
            {
              v44 = systemInfo_copyProductType();
              if (v44)
              {
                v45 = v44;
                v24 = CFStringCompare(v44, @"iPhone13,1", 0) == kCFCompareEqualTo || CFStringCompare(v45, @"iPhone13,2", 0) == kCFCompareEqualTo || CFStringCompare(v45, @"iPhone13,3", 0) == kCFCompareEqualTo || CFStringCompare(v45, @"iPhone13,4", 0) == kCFCompareEqualTo || CFStringCompare(v45, @"iPhone14,2", 0) == kCFCompareEqualTo || CFStringCompare(v45, @"iPhone14,3", 0) == kCFCompareEqualTo || CFStringCompare(v45, @"iPhone14,4", 0) == kCFCompareEqualTo || CFStringCompare(v45, @"iPhone14,5", 0) == kCFCompareEqualTo || CFStringCompare(v45, @"iPhone14,6", 0) == kCFCompareEqualTo || CFStringCompare(v45, @"iPhone14,7", 0) == kCFCompareEqualTo || CFStringCompare(v45, @"iPhone14,8", 0) == kCFCompareEqualTo || CFStringCompare(v45, @"iPhone15,2", 0) == kCFCompareEqualTo || CFStringCompare(v45, @"iPhone15,3", 0) == kCFCompareEqualTo || CFStringCompare(v45, @"iPhone15,4", 0) == kCFCompareEqualTo || CFStringCompare(v45, @"iPhone15,5", 0) == kCFCompareEqualTo || CFStringCompare(v45, @"iPhone16,1", 0) == kCFCompareEqualTo || CFStringCompare(v45, @"iPhone16,2", 0) == kCFCompareEqualTo;
                CFRelease(v45);
              }

              else
              {
                v24 = 0;
              }
            }

            CFRelease(v23);
          }

          else
          {
            v24 = 1;
          }

          v46 = gLogObjects;
          v47 = gNumLogObjects;
          v48 = &_os_log_default;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v48 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v90 = v46;
              *&v90[8] = 1024;
              v91[0] = v47;
              _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v49 = &_os_log_default;
          }

          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *v90 = v24;
            _os_log_impl(&def_3A0E8, v48, OS_LOG_TYPE_INFO, "_notifyDriverOfInductiveTxSetting:%d", buf, 8u);
          }

          connect = 0;
          v50 = IOServiceOpen(v5, mach_task_self_, 0, &connect);
          if (v50 || !connect)
          {
            v53 = logObjectForModule(0);
            if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_134;
            }

            *buf = 67109632;
            *v90 = v50;
            *&v90[4] = 1024;
            *&v90[6] = connect;
            LOWORD(v91[0]) = 1024;
            *(v91 + 2) = v5;
            v54 = v53;
            v55 = "_notifyDriverOfInductiveTxSetting: IOServiceOpen fail kernStatus:%02X, ioConnForService:%04X ioService:%d";
            v71 = 20;
          }

          else
          {
            if (v24)
            {
              v51 = IOAccessoryManagerAllowFeatures();
              if (v51)
              {
                v52 = v51;
                v53 = logObjectForModule(0);
                if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109376;
                  *v90 = 0x200000;
                  *&v90[4] = 1024;
                  *&v90[6] = v52;
                  v54 = v53;
                  v55 = "_notifyDriverOfInductiveTxSetting: IOAccMgrAllowFeatures 0x%x fail kernStatus:%02X";
                  goto LABEL_132;
                }

LABEL_134:
              }

LABEL_88:
              if (connect)
              {
                IOServiceClose(connect);
              }

              DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
              CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, RegulatoryDomainChanged, name, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
              _checkFor128KHzRestriction();
              break;
            }

            v56 = IOAccessoryManagerRevokeFeatures();
            if (!v56)
            {
              goto LABEL_88;
            }

            v72 = v56;
            v53 = logObjectForModule(0);
            if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_134;
            }

            *buf = 67109376;
            *v90 = 0x200000;
            *&v90[4] = 1024;
            *&v90[6] = v72;
            v54 = v53;
            v55 = "_notifyDriverOfInductiveTxSetting: IOAccMgrRevokeFeatures 0x%x fail kernStatus:%02X";
LABEL_132:
            v71 = 14;
          }

          _os_log_error_impl(&def_3A0E8, v54, OS_LOG_TYPE_ERROR, v55, buf, v71);
          goto LABEL_134;
        case 0x100:
LABEL_19:
          connect = -1;
          v84 = 0;
          if (IOAccessoryManagerGetDigitalID())
          {
            goto LABEL_138;
          }

          LOBYTE(v83) = 0;
          v14 = gLogObjects;
          v15 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v16 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v90 = v14;
              *&v90[8] = 1024;
              v91[0] = v15;
              _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v25 = &_os_log_default;
            v16 = &_os_log_default;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [NSData dataWithBytes:&v85 length:6];
            *buf = 138412290;
            *v90 = v26;
            _os_log_impl(&def_3A0E8, v16, OS_LOG_TYPE_DEFAULT, "IOAccessoryManagerAdded launching clients due to accDigitalID: %@", buf, 0xCu);
          }

          if (IOAccessoryManagerGetUSBConnectType())
          {
            connect = -1;
          }

          v81 = _digitalIDSupportsTransport(&v85, 0);
          v79 = _digitalIDSupportsTransport(&v85, 1);
          v78 = _digitalIDSupportsTransport(&v85, 2);
          v77 = _digitalIDSupportsTransport(&v85, 3);
          _hook_digitalIDAttached(&v83);
          if (v83 == 1)
          {
            _generateUnlockDialogSeenAnalyticEvent(v5, v3);
          }

          v80 = [v3 launchDigitalIDClients];
          v27 = [AttachEvent alloc];
          v28 = [NSNumber numberWithUnsignedLongLong:systemInfo_getCurrentUnixTimeMS()];
          v29 = [NSNumber numberWithInt:connect];
          v30 = [NSNumber numberWithInt:PrimaryPort];
          v31 = [v3 restrictedModeEnabled];
          v32 = v3;
          v33 = v83;
          v34 = [NSData dataWithBytes:&v85 length:6];
          BYTE2(v73) = v77;
          BYTE1(v73) = v78;
          LOBYTE(v73) = v79;
          v35 = v33;
          v3 = v32;
          v36 = [AttachEvent initWithTimestamp:v27 connectType:"initWithTimestamp:connectType:primaryPort:restrictedModeEnabled:dialogShown:supportsUSB:supportsUART:supportsMB:supportsAIDBulkPipes:digitalID:" primaryPort:v28 restrictedModeEnabled:v29 dialogShown:v30 supportsUSB:v31 supportsUART:v35 supportsMB:v81 supportsAIDBulkPipes:v73 digitalID:v34];

          v37 = [v3 rmEventArray];
          [v37 addObject:v36];

          a2 = v74;
          if ((v80 & 1) == 0)
          {
LABEL_138:
            if (IOAccessoryManagerGetUSBConnectType() || connect - 2 > 3)
            {
              goto LABEL_117;
            }

            v83 = -1;
            USBConnectTypePublished = IOAccessoryManagerGetUSBConnectTypePublished();
            if (USBConnectTypePublished)
            {
              v39 = USBConnectTypePublished;
              v40 = gLogObjects;
              v41 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 1)
              {
                v42 = *gLogObjects;
                v43 = &_os_log_default;
              }

              else
              {
                v43 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v90 = v40;
                  *&v90[8] = 1024;
                  v91[0] = v41;
                  _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v61 = &_os_log_default;
                v42 = &_os_log_default;
              }

              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                *v90 = v39;
                _os_log_error_impl(&def_3A0E8, v42, OS_LOG_TYPE_ERROR, "IOAccessoryManagerGetUSBConnectTypePublished failed with error: 0x%08x", buf, 8u);
              }
            }

            else
            {
              v82 = 0;
              v58 = gLogObjects;
              v59 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 1)
              {
                v60 = *gLogObjects;
              }

              else
              {
                v60 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v90 = v58;
                  *&v90[8] = 1024;
                  v91[0] = v59;
                  _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v62 = &_os_log_default;
              }

              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v90 = PrimaryPort;
                *&v90[4] = 1024;
                *&v90[6] = connect;
                LOWORD(v91[0]) = 1024;
                *(v91 + 2) = v83;
                _os_log_impl(&def_3A0E8, v60, OS_LOG_TYPE_DEFAULT, "IOAccessoryManagerAdded primaryPort: %d, connectType: %d, connectTypePublished: %d", buf, 0x14u);
              }

              _hook_usbConnectTypeChanged(connect, v83, &v82);
              if (v82 == 1)
              {
                v63 = [NSNumber numberWithInt:PrimaryPort];
                [v3 updateRMDialogShownForPrimaryPort:v63];

                _generateUnlockDialogSeenAnalyticEvent(v5, v3);
              }

              v43 = &_os_log_default;
            }

            v64 = gLogObjects;
            v65 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 1)
            {
              v43 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v90 = v64;
                *&v90[8] = 1024;
                v91[0] = v65;
                _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v66 = &_os_log_default;
            }

            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v90 = connect;
              _os_log_impl(&def_3A0E8, v43, OS_LOG_TYPE_DEFAULT, "IOAccessoryManagerAdded launching clients due to cableType: %d", buf, 8u);
            }

            if (([v3 launchDigitalIDClients] & 1) == 0)
            {
LABEL_117:
              v67 = gLogObjects;
              v68 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 1)
              {
                v69 = *gLogObjects;
              }

              else
              {
                v69 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  *v90 = v67;
                  *&v90[8] = 1024;
                  v91[0] = v68;
                  _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v70 = &_os_log_default;
              }

              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&def_3A0E8, v69, OS_LOG_TYPE_DEFAULT, "Enabling acc_power for primary ports", buf, 2u);
              }

              EnableAccessoryPower();
            }
          }

          break;
      }

      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }
}

void IOAccessoryManagerTerminated(void *a1, io_iterator_t a2)
{
  v3 = a1;
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    do
    {
      PrimaryPort = IOAccessoryManagerGetPrimaryPort();
      v7 = [v3 chargeConfigDict];
      v8 = [NSNumber numberWithInt:PrimaryPort];
      [v7 removeObjectForKey:v8];

      v9 = gLogObjects;
      v10 = gNumLogObjects;
      if (gLogObjects)
      {
        v11 = gNumLogObjects < 1;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v16 = v9;
          v17 = 1024;
          v18 = v10;
          _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v12 = &_os_log_default;
        v13 = &_os_log_default;
      }

      else
      {
        v13 = *gLogObjects;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v3 chargeConfigDict];
        *buf = 138412290;
        v16 = v14;
        _os_log_impl(&def_3A0E8, v13, OS_LOG_TYPE_INFO, "chargeConfigDict: %@", buf, 0xCu);
      }

      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }
}

void __65__accessorydMatchingPlugin_stopIOAccessoryManagerEventMonitoring__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) digitalIDTokenSet];
  v3 = [v2 count];

  if (!v3 && [*(a1 + 32) isIOAccessoryManagerMonitorRunning])
  {
    if ([*(a1 + 32) digitalIDMatchingEnabled] && objc_msgSend(*(a1 + 32), "ioAccessoryManagerClassNotify"))
    {
      IONotificationPortDestroy([*(a1 + 32) ioAccessoryManagerClassNotify]);
      [*(a1 + 32) setIoAccessoryManagerClassNotify:0];
      [*(a1 + 32) setDigitalIDMatchingEnabled:0];
    }

    v4 = *(a1 + 32);

    [v4 setIsIOAccessoryManagerMonitorRunning:0];
  }
}

id __67__accessorydMatchingPlugin_startUSBRestrictedModeTimeoutMonitoring__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isUSBRestrictedModeTimeoutMonitorRunning];
  if ((result & 1) == 0)
  {
    if (![*(a1 + 32) ioResourceNotifyPort])
    {
      [*(a1 + 32) setIoResourceNotifyPort:IONotificationPortCreate(kIOMainPortDefault)];
    }

    v3 = [*(a1 + 32) ioResourceNotifyPort];
    v4 = [*(a1 + 32) ioAccessoryEventQueue];
    IONotificationPortSetDispatchQueue(v3, v4);

    v5 = IOServiceMatching("IOResources");
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(v5, @"IOResourceMatch", @"AppleUSBRestrictedModeTimeout");
      v7 = IOServiceAddMatchingNotification([*(a1 + 32) ioResourceNotifyPort], "IOServicePublish", v6, USBRestrictedModeTimeoutChange, *(a1 + 32), (*(a1 + 32) + 44));
      if (v7)
      {
        v8 = v7;
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v9 = *gLogObjects;
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

        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __67__accessorydMatchingPlugin_startUSBRestrictedModeTimeoutMonitoring__block_invoke_cold_2(v8);
        }
      }

      else
      {
        USBRestrictedModeTimeoutChange(*(a1 + 32), [*(a1 + 32) ioResourceIterator]);
      }
    }

    return [*(a1 + 32) setIsUSBRestrictedModeTimeoutMonitorRunning:1];
  }

  return result;
}

void USBRestrictedModeTimeoutChange(void *a1, io_iterator_t a2)
{
  v3 = a1;
  for (i = IOIteratorNext(a2); i; i = IOIteratorNext(a2))
  {
    CFProperty = IORegistryEntryCreateCFProperty(i, @"AppleUSBRestrictedModeTimeout", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v6 = CFProperty;
      valuePtr = -1431655766;
      CFNumberGetValue(CFProperty, kCFNumberIntType, &valuePtr);
      [v3 setUsbRestrictedModeTimeout:valuePtr];
      CFRelease(v6);
    }
  }
}

void __66__accessorydMatchingPlugin_stopUSBRestrictedModeTimeoutMonitoring__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) digitalIDTokenSet];
  v3 = [v2 count];

  if (!v3 && [*(a1 + 32) isUSBRestrictedModeTimeoutMonitorRunning])
  {
    if ([*(a1 + 32) ioResourceNotifyPort])
    {
      IONotificationPortDestroy([*(a1 + 32) ioResourceNotifyPort]);
      [*(a1 + 32) setIoResourceNotifyPort:0];
    }

    v4 = *(a1 + 32);

    [v4 setIsUSBRestrictedModeTimeoutMonitorRunning:0];
  }
}

void serviceAddedTRM(void *a1, io_iterator_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 4;
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
    v6 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    serviceAddedTRM_cold_2();
  }

  v7 = a1;
  v8 = IOIteratorNext(a2);
  if (v8)
  {
    v10 = v8;
    *&v9 = 134218240;
    v22 = v9;
    do
    {
      CFProperty = IORegistryEntryCreateCFProperty(v10, @"IOAccessoryPrimaryDevicePort", kCFAllocatorDefault, 0);
      v12 = [CFProperty intValue];

      v13 = gLogObjects;
      v14 = gNumLogObjects;
      if (gLogObjects)
      {
        v15 = gNumLogObjects < 4;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = v22;
          v27 = v13;
          v28 = 1024;
          v29 = v14;
          _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v16 = &_os_log_default;
        v17 = &_os_log_default;
      }

      else
      {
        v17 = *(gLogObjects + 24);
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v27) = v12;
        _os_log_impl(&def_3A0E8, v17, OS_LOG_TYPE_INFO, "Registering for TRM interest notifications (primaryPortNumber: %d)...", buf, 8u);
      }

      notification = 0;
      if (IOServiceAddInterestNotification([v7 ioNotifyPortTRM], v10, "IOGeneralInterest", serviceNotificationTRM, v7, &notification))
      {
        v18 = gLogObjects;
        v19 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v20 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v27 = v18;
            v28 = 1024;
            v29 = v19;
            _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v21 = &_os_log_default;
          v20 = &_os_log_default;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          serviceAddedTRM_cold_3(&v23, v24);
        }
      }

      IOObjectRelease(v10);
      v10 = IOIteratorNext(a2);
    }

    while (v10);
  }

  [v7 trmStatusDidChange];
}

id serviceRemovedTRM(void *a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    serviceRemovedTRM_cold_2();
  }

  return [a1 trmStatusDidChange];
}

void IOAccessoryPortAdded(void *a1, io_iterator_t a2)
{
  v5 = a1;
  v3 = IOIteratorNext(a2);
  if (v3)
  {
    v4 = v3;
    do
    {
      if (IOAccessoryPortGetPort() == 2)
      {
        [v5 handleUSBPortAdded];
      }

      IOObjectRelease(v4);
      v4 = IOIteratorNext(a2);
    }

    while (v4);
  }
}

void IOAccessoryPortTerminated(void *a1, io_iterator_t a2)
{
  v3 = a1;
  v4 = IOIteratorNext(a2);
  if (v4)
  {
    v5 = v4;
    do
    {
      if (IOAccessoryPortGetPort() == 2 && IOAccessoryPortGetManagerPrimaryPort() == 1)
      {
        [v3 handleUSBPortTerminated];
        v6 = gLogObjects;
        v7 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v8 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v11 = v6;
            v12 = 1024;
            v13 = v7;
            _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v9 = &_os_log_default;
          v8 = &_os_log_default;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v11) = v5;
          _os_log_impl(&def_3A0E8, v8, OS_LOG_TYPE_INFO, "Terminated kIOAccessoryPortIDUSB port with service %d", buf, 8u);
        }
      }

      IOObjectRelease(v5);
      v5 = IOIteratorNext(a2);
    }

    while (v5);
  }
}

id __50__accessorydMatchingPlugin_startBluetoothMatching__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) connectedToBTServer];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) attachToBTServer];
    v4 = *(a1 + 32);

    return [v4 setConnectedToBTServer:v3];
  }

  return result;
}

id __49__accessorydMatchingPlugin_stopBluetoothMatching__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) connectedToBTServer];
  if (result)
  {
    result = [*(a1 + 32) detachFromBTServer];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 setConnectedToBTServer:0];
    }
  }

  return result;
}

void BTSessionCallback(id a1, int a2, int a3, void *a4)
{
  v7 = a4;
  if (a2 == 2)
  {
    v9 = v7;
    v8 = [v7 btSession] == a1;
    v7 = v9;
    if (v8)
    {
      [v9 setBtSession:0];
      [v9 setConnectedToBTServer:0];
      [v9 startBluetoothMatching];
      goto LABEL_9;
    }
  }

  else if (!a2 && a1 && !a3)
  {
    v9 = v7;
    [v7 setBtSession:a1];
    [v9 findKnownBTDevices];
    BTServiceAddCallbacks();
LABEL_9:
    v7 = v9;
  }
}

void __66__accessorydMatchingPlugin_setRoleSwapMaskDueToCarPlayStateChange__block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) carPlayEventQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __66__accessorydMatchingPlugin_setRoleSwapMaskDueToCarPlayStateChange__block_invoke_2;
  v5[3] = &unk_59920;
  v5[4] = *(a1 + 32);
  v6 = a2;
  dispatch_async(v4, v5);
}

void __66__accessorydMatchingPlugin_setRoleSwapMaskDueToCarPlayStateChange__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == [*(a1 + 32) isCarPlayAllowed])
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 1;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v6 = &_os_log_default;
      v3 = &_os_log_default;
    }

    else
    {
      v6 = *gLogObjects;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      v8 = [*(a1 + 32) isCarPlayAllowed];
      v11 = 136315650;
      v12 = "[accessorydMatchingPlugin setRoleSwapMaskDueToCarPlayStateChange]_block_invoke";
      v13 = 1024;
      v14 = v7;
      v15 = 1024;
      v16 = v8;
      _os_log_impl(&def_3A0E8, v6, OS_LOG_TYPE_INFO, "%s role swap mask properly configured, carplayAllowed: %d self.isCarPlayAllowed = %d", &v11, 0x18u);
    }
  }

  else
  {
    [*(a1 + 32) setIsCarPlayAllowed:?];
    [*(a1 + 32) setRoleSwapMaskWritten:0];
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 1;
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

      v9 = &_os_log_default;
      v5 = &_os_log_default;
    }

    else
    {
      v9 = *gLogObjects;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) isCarPlayAllowed];
      v11 = 136315394;
      v12 = "[accessorydMatchingPlugin setRoleSwapMaskDueToCarPlayStateChange]_block_invoke_2";
      v13 = 1024;
      v14 = v10;
      _os_log_impl(&def_3A0E8, v9, OS_LOG_TYPE_DEFAULT, "%s self.isCarPlayAllowed: %d", &v11, 0x12u);
    }

    [*(a1 + 32) setRoleSwapMaskForUSBPort];
  }
}

void __46__accessorydMatchingPlugin_handleUSBPortAdded__block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) carPlayEventQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __46__accessorydMatchingPlugin_handleUSBPortAdded__block_invoke_2;
  v5[3] = &unk_59920;
  v5[4] = *(a1 + 32);
  v6 = a2;
  dispatch_async(v4, v5);
}

id __46__accessorydMatchingPlugin_handleUSBPortAdded__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setIsCarPlayAllowed:*(a1 + 40)];
  [*(a1 + 32) setRoleSwapMaskWritten:0];
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) isCarPlayAllowed];
    v7 = 136315394;
    v8 = "[accessorydMatchingPlugin handleUSBPortAdded]_block_invoke_2";
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&def_3A0E8, v4, OS_LOG_TYPE_DEFAULT, "%s self.isCarPlayAllowed = %d", &v7, 0x12u);
  }

  return [*(a1 + 32) setRoleSwapMaskForUSBPort];
}

uint64_t _shouldPresentTRMDialog()
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v0 = IOServiceMatching("IOAccessoryTRM");
  existing = 0;
  if (!IOServiceGetMatchingServices(kIOMainPortDefault, v0, &existing))
  {
    v1 = 0;
    while (1)
    {
      v2 = IOIteratorNext(existing);
      v3 = v2;
      if (!v2)
      {
        break;
      }

      parent = 0;
      if (IORegistryEntryGetParentEntry(v2, "IOService", &parent))
      {
        v4 = 1;
      }

      else
      {
        v4 = parent == 0;
      }

      if (v4 || (v5 = IORegistryEntryCreateCFProperty(parent, @"PortType", kCFAllocatorDefault, 0), v6 = [v5 intValue], v5, v7 = IORegistryEntryCreateCFProperty(parent, @"PortNumber", kCFAllocatorDefault, 0), v8 = objc_msgSend(v7, "intValue"), v7, IOObjectRelease(parent), v6 != 2))
      {
        CFProperty = IORegistryEntryCreateCFProperty(v3, @"SupervisedAccessoryAttached", kCFAllocatorDefault, 0);
        v13 = [CFProperty BOOLValue];

        v14 = IORegistryEntryCreateCFProperty(v3, @"SupervisedTransportsRestricted", kCFAllocatorDefault, 0);
        v15 = [v14 BOOLValue];

        v16 = IORegistryEntryCreateCFProperty(v3, @"IOAccessoryPrimaryDevicePort", kCFAllocatorDefault, 0);
        v17 = [v16 intValue];

        v18 = gLogObjects;
        v19 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v20 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v40 = v18;
            *&v40[8] = 1024;
            v41[0] = v19;
            _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v21 = &_os_log_default;
          v20 = &_os_log_default;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 67109632;
          *v40 = v13;
          *&v40[4] = 1024;
          *&v40[6] = v15;
          LOWORD(v41[0]) = 1024;
          *(v41 + 2) = v17;
          _os_log_impl(&def_3A0E8, v20, OS_LOG_TYPE_INFO, "supervisedAccessoryAttached: %d, supervisedTransportsRestricted: %d, primaryPortNumber: %d", buf, 0x14u);
        }

        if ((v13 & v15) == 1)
        {
          *(v36 + 24) = 1;
        }

        ++v1;
      }

      else
      {
        v9 = gLogObjects;
        v10 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v11 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v40 = v9;
            *&v40[8] = 1024;
            v41[0] = v10;
            _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v22 = &_os_log_default;
          v11 = &_os_log_default;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *v40 = v8;
          _os_log_debug_impl(&def_3A0E8, v11, OS_LOG_TYPE_DEBUG, "Ignoring USB-C port... (portNumber: %d)", buf, 8u);
        }
      }

      IOObjectRelease(v3);
    }

    IOObjectRelease(existing);
    if (gLogObjects)
    {
      v23 = gNumLogObjects < 4;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v25 = &_os_log_default;
      v24 = &_os_log_default;
    }

    else
    {
      v25 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      _shouldPresentTRMDialog_cold_2();
    }

    v26 = _uiQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___shouldPresentTRMDialog_block_invoke;
    block[3] = &unk_59998;
    block[4] = &v35;
    dispatch_sync(v26, block);

    if (gLogObjects && gNumLogObjects >= 4)
    {
      v27 = *(gLogObjects + 24);
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

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v36 + 24))
      {
        v29 = "YES";
      }

      else
      {
        v29 = "NO";
      }

      *buf = 136315138;
      *v40 = v29;
      _os_log_impl(&def_3A0E8, v27, OS_LOG_TYPE_DEFAULT, "shouldPresentTRMDialog: %s", buf, 0xCu);
    }
  }

  v30 = *(v36 + 24);
  _Block_object_dispose(&v35, 8);
  return v30;
}

void sub_20414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _dismissUnlockDialog()
{
  v0 = _uiQueue();
  dispatch_sync(v0, &__block_literal_global_935);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&def_3A0E8, v4, OS_LOG_TYPE_DEFAULT, "User notification already exists for port! (port: %@, userNotification: %@)", &v10, 0x16u);
  }

  v7 = _mainTransportTypeForPort(*(a1 + 32));
  v8 = [*(a1 + 32) deviceDescription];
  v9 = _messageWithMainTransportTypeAndDeviceDescription(v7, v8);

  [*(*(*(a1 + 40) + 8) + 40) setMessage:v9];
}

id _messageWithMainTransportTypeAndDeviceDescription(int a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 stringByReplacingOccurrencesOfString:@"Apple Inc. " withString:&stru_5A178];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"Apple withString:{Inc. ", &stru_5A178}];

    v7 = acc_strings_bundle();
    v8 = _localizedStringFromTableInBundle(@"Do you want to connect %@ to this %@?", v7);
    v9 = systemInfo_copyDeviceClass();
    v10 = [NSString stringWithFormat:v8, v6, v9];
  }

  else
  {
    if ((a1 - 2) >= 2)
    {
      acc_strings_bundle();
      if (a1 == 4)
        v6 = {;
        v11 = @"Do you want to connect the Thunderbolt accessory to this %@?";
      }

      else
        v6 = {;
        v11 = @"Do you want to connect the accessory to this %@?";
      }
    }

    else
    {
      v6 = acc_strings_bundle();
      v11 = @"Do you want to connect the USB accessory to this %@?";
    }

    v7 = _localizedStringFromTableInBundle(v11, v6);
    v8 = systemInfo_copyDeviceClass();
    v10 = [NSString stringWithFormat:v7, v8];
  }

  return v10;
}

uint64_t _mainTransportTypeForPort(void *a1)
{
  v1 = a1;
  v2 = [v1 transportsUnauthorized];
  v3 = [v2 containsObject:@"CIO"];

  if (v3)
  {
    v4 = 4;
  }

  else
  {
    v5 = [v1 transportsUnauthorized];
    v6 = [v5 containsObject:@"USB2"];

    if (v6)
    {
      v4 = 2;
    }

    else
    {
      v7 = [v1 transportsUnauthorized];
      v8 = [v7 containsObject:@"USB3"];

      if (v8)
      {
        v4 = 3;
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

void __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_308(uint64_t a1)
{
  v2 = _uiQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_2;
  block[3] = &unk_594D8;
  v8 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  dispatch_sync(v2, block);
}

void __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_2(uint64_t a1)
{
  v2 = _trmDialogTimer();
  dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);

  v3 = _trmDialogTimer();
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_3;
  handler[3] = &unk_594D8;
  v10 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  dispatch_source_set_event_handler(v3, handler);

  v6 = _trmDialogTimer();
  dispatch_resume(v6);
}

id _trmDialogTimer()
{
  if (_trmDialogTimer_onceToken != -1)
  {
    _trmDialogTimer_cold_1();
  }

  v1 = _gTRMNotificationTimer;

  return v1;
}

void __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_3(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&def_3A0E8, v4, OS_LOG_TYPE_DEFAULT, "TRM dialog timer fired!", buf, 2u);
  }

  v5 = _uiQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_309;
  block[3] = &unk_59998;
  block[4] = *(a1 + 48);
  dispatch_sync(v5, block);

  if (_shouldPresentTRMDialog())
  {
    v6 = _uiQueue();
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_312;
    v11[3] = &unk_594D8;
    v14 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v12 = v7;
    v13 = v8;
    dispatch_async(v6, v11);

    v9 = v12;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v9 = *(gLogObjects + 24);
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

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&def_3A0E8, v9, OS_LOG_TYPE_DEFAULT, "TRM dialog should no longer be presented, not presenting dialog!", buf, 2u);
    }
  }
}

void __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_309(uint64_t a1)
{
  _gTRMNotificationTimerRunning = 0;
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "NO";
    if (_gTRMNotificationTimerRunning)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    if (*(*(*(a1 + 32) + 8) + 40))
    {
      v5 = "YES";
    }

    v7 = 136315394;
    v8 = v6;
    v9 = 2080;
    v10 = v5;
    _os_log_impl(&def_3A0E8, v4, OS_LOG_TYPE_DEFAULT, "_gTRMNotificationTimerRunning: %s, userNotification: %s", &v7, 0x16u);
  }
}

void __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_312(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (_acc_userNotifications_TRMUserNotification_onceToken != -1)
  {
    __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_312_cold_1();
  }

  if (v2)
  {
    v3 = _mainTransportTypeForPort(v2);
    v4 = [v2 deviceDescription];
    v5 = _messageWithMainTransportTypeAndDeviceDescription(v3, v4);
    [_acc_userNotifications_TRMUserNotification_userNotification setMessage:v5];
  }

  v6 = _mainTransportTypeForPort(v2);
  v7 = @"com.apple.graphic-icon.usb";
  if (v6 == 4)
  {
    v7 = @"com.apple.graphic-icon.thunderbolt";
  }

  v29[0] = @"ISIconType";
  v29[1] = @"ISIconDecorationType";
  *buf = v7;
  *&buf[8] = @"com.apple.graphic-icon.privacy";
  v29[2] = @"ISIconDecorationPosition";
  *&buf[16] = &off_63660;
  v8 = [NSDictionary dictionaryWithObjects:buf forKeys:v29 count:3];
  [_acc_userNotifications_TRMUserNotification_userNotification setIconConfiguration:v8];

  v9 = _acc_userNotifications_TRMUserNotification_userNotification;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (*(*(a1 + 40) + 16) != 1 || _gUnlockNotification)
  {
    v13 = _userNotificationsTRM;
    v14 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) registryEntryID]);
    v15 = [v13 objectForKeyedSubscript:v14];

    if (v15)
    {
      return;
    }

    if (gLogObjects && gNumLogObjects >= 4)
    {
      v16 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v16 = &_os_log_default;
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&def_3A0E8, v16, OS_LOG_TYPE_DEFAULT, "Presenting TRM notification...", buf, 2u);
    }

    v18 = _userNotificationsTRM;
    v19 = *(*(*(a1 + 48) + 8) + 40);
    v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) registryEntryID]);
    [v18 setObject:v19 forKey:v20];

    v21 = +[ACCUserNotificationManager sharedManager];
    v22 = *(*(*(a1 + 48) + 8) + 40);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_317;
    v27[3] = &unk_59A08;
    v28 = *(a1 + 32);
    [v21 presentNotification:v22 completionHandler:v27];

    if (gLogObjects && gNumLogObjects >= 4)
    {
      v23 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v23 = &_os_log_default;
      v24 = &_os_log_default;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = "NO";
      if (_gTRMNotificationTimerRunning)
      {
        v26 = "YES";
      }

      else
      {
        v26 = "NO";
      }

      if (*(*(*(a1 + 48) + 8) + 40))
      {
        v25 = "YES";
      }

      *buf = 136315394;
      *&buf[4] = v26;
      *&buf[12] = 2080;
      *&buf[14] = v25;
      _os_log_impl(&def_3A0E8, v23, OS_LOG_TYPE_DEFAULT, "_gTRMNotificationTimerRunning: %s, userNotification: %s", buf, 0x16u);
    }

    v12 = v28;
  }

  else
  {
    [*(*(*(a1 + 48) + 8) + 40) setDismissOnUnlock:1];
    objc_storeStrong(&_gUnlockNotification, *(*(*(a1 + 48) + 8) + 40));
    v12 = +[ACCUserNotificationManager sharedManager];
    [v12 presentNotification:_gUnlockNotification completionHandler:&__block_literal_global_316];
  }
}

void __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_2_314(id a1, int a2)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_2_314_cold_2();
  }

  v5 = _gUnlockNotification;
  _gUnlockNotification = 0;
}

void __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_317(uint64_t a1, int a2)
{
  if (!a2)
  {
    v3 = 2;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v3 = 3;
LABEL_5:
    objc_initWeak(&location, *(a1 + 32));
    v4 = *(a1 + 32);
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_2_318;
    v10 = &unk_599E0;
    objc_copyWeak(&v11, &location);
    [v4 setUserAuthorizationStatus:v3 completionHandler:&v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v5 = _userNotificationsTRM;
  v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) registryEntryID]);
  [v5 removeObjectForKey:v6];
}

void sub_21744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_2_318(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 4;
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
      v6 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v8 = 138412546;
      v9 = WeakRetained;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&def_3A0E8, v6, OS_LOG_TYPE_DEFAULT, "Error setting user authorization status for port %@! (error: %@)", &v8, 0x16u);
    }
  }
}

void __55__accessorydMatchingPlugin_addUserNotificationForPort___block_invoke_320(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (_gTRMNotificationTimerRunning)
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    v6 = _userNotificationsTRM;
    v7 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) registryEntryID]);
    v8 = [v6 objectForKeyedSubscript:v7];
    *v25 = 136315650;
    *&v25[4] = "[accessorydMatchingPlugin addUserNotificationForPort:]_block_invoke";
    if (v8)
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    *&v25[12] = 2080;
    *&v25[14] = v5;
    v26 = 2080;
    v27 = v9;
    _os_log_impl(&def_3A0E8, v4, OS_LOG_TYPE_DEFAULT, "%s: (_gTRMNotificationTimerRunning: %s, userNotification: %s)", v25, 0x20u);
  }

  if ((_gTRMNotificationTimerRunning & 1) != 0 || (v10 = _userNotificationsTRM, +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) registryEntryID]), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v13 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v13 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&def_3A0E8, v13, OS_LOG_TYPE_DEFAULT, "TRM dialog timer already running or dialog already up - not starting timer again.", v25, 2u);
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v15 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v15 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 67109120;
      *&v25[4] = 1500;
      _os_log_impl(&def_3A0E8, v15, OS_LOG_TYPE_DEFAULT, "Starting TRM dialog timer for %dms...", v25, 8u);
    }

    _gTRMNotificationTimerRunning = 1;
    v17 = _trmDialogTimer();
    v18 = dispatch_time(0, 1500000000);
    dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);

    if (gLogObjects && gNumLogObjects >= 4)
    {
      v13 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v13 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (_gTRMNotificationTimerRunning)
      {
        v20 = "YES";
      }

      else
      {
        v20 = "NO";
      }

      v21 = _userNotificationsTRM;
      v22 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) registryEntryID]);
      v23 = [v21 objectForKeyedSubscript:v22];
      if (v23)
      {
        v24 = "YES";
      }

      else
      {
        v24 = "NO";
      }

      *v25 = 136315394;
      *&v25[4] = v20;
      *&v25[12] = 2080;
      *&v25[14] = v24;
      _os_log_impl(&def_3A0E8, v13, OS_LOG_TYPE_DEFAULT, "_gTRMNotificationTimerRunning: %s, userNotification: %s", v25, 0x16u);
    }
  }
}

void __58__accessorydMatchingPlugin_removeUserNotificationForPort___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [_userNotificationsTRM objectForKeyedSubscript:*(a1 + 32)];
  if (v2)
  {
    v3 = +[ACCUserNotificationManager sharedManager];
    [v3 dismissNotification:v2];

    [_userNotificationsTRM removeObjectForKey:*v1];
  }

  else
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 4;
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
      v6 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__accessorydMatchingPlugin_removeUserNotificationForPort___block_invoke_cold_2(v1);
    }
  }
}

uint64_t serviceAddedLDCM(void *a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v4 = result;
    while (1)
    {
      v5 = gLogObjects;
      v6 = gNumLogObjects;
      if (!gLogObjects || gNumLogObjects < 5)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v33 = v5;
          v34 = 1024;
          v35 = v6;
          _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v8 = &_os_log_default;
        v9 = &_os_log_default;
      }

      else
      {
        v9 = *(gLogObjects + 32);
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        serviceAddedLDCM_cold_1(&v25, v26);
      }

      v10 = a1;
      CFProperty = IORegistryEntryCreateCFProperty(v4, @"IOAccessoryPrimaryDevicePort", kCFAllocatorDefault, 0);
      v12 = [CFProperty intValue];

      v13 = gLogObjects;
      v14 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 5)
      {
        v15 = *(gLogObjects + 32);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v33 = v13;
          v34 = 1024;
          v35 = v14;
          _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v16 = &_os_log_default;
        v15 = &_os_log_default;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v33) = v12;
        _os_log_impl(&def_3A0E8, v15, OS_LOG_TYPE_DEFAULT, "Registering for LDCM interest notifications (primaryPortNumber: %d)...", buf, 8u);
      }

      notification = [v10 ioNotificationLDCM];
      if (notification)
      {
        break;
      }

      if (IOServiceAddInterestNotification([v10 ioNotifyPortLDCM], v4, "IOGeneralInterest", serviceNotificationLDCM, v10, &notification))
      {
        v20 = gLogObjects;
        v21 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 5)
        {
          v19 = *(gLogObjects + 32);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v33 = v20;
            v34 = 1024;
            v35 = v21;
            _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          v23 = &_os_log_default;
          v19 = &_os_log_default;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          serviceAddedTRM_cold_3(&v29, v30);
        }

        goto LABEL_40;
      }

      serviceLDCMMitigationStatusChanged(v10, v4);
LABEL_41:

      IOObjectRelease(v4);
      result = IOIteratorNext(iterator);
      v4 = result;
      if (!result)
      {
        return result;
      }
    }

    v17 = gLogObjects;
    v18 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v19 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v33 = v17;
        v34 = 1024;
        v35 = v18;
        _os_log_error_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
      }

      v22 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      serviceAddedLDCM_cold_2(&v27, v28);
    }

LABEL_40:

    goto LABEL_41;
  }

  return result;
}

void __51__accessorydMatchingPlugin_portManager_didAddPort___block_invoke(uint64_t a1)
{
  v1 = _portsPendingUserAuthorization;
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v2 registryEntryID]);
  [v1 setObject:v2 forKey:v3];
}

void __54__accessorydMatchingPlugin_portManager_didRemovePort___block_invoke(uint64_t a1)
{
  v1 = _portsPendingUserAuthorization;
  v2 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) registryEntryID]);
  [v1 removeObjectForKey:v2];
}

void __75__accessorydMatchingPlugin_portManager_didUpdateAuthorizationStateForPort___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) authorizationRequired] && objc_msgSend(*(a1 + 32), "userAuthorizationPending") && objc_msgSend(*(a1 + 32), "userAuthorizationStatus") == 1)
  {
    v2 = _portsPendingUserAuthorization;
    v3 = *(a1 + 32);
    v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 registryEntryID]);
    [v2 setObject:v3 forKey:?];
  }

  else
  {
    v4 = _portsPendingUserAuthorization;
    v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [*(a1 + 32) registryEntryID]);
    [v4 removeObjectForKey:?];
  }
}

uint64_t accessorydMatchingPlugin_Initialize(uint64_t a1)
{
  gAccessorydMatchingPlugin = [[accessorydMatchingPlugin alloc] initWithModule:a1];

  return _objc_release_x1();
}

void BTServiceCallback(uint64_t a1, uint64_t a2, int a3, int a4, int a5, void *a6)
{
  if (!a3 && a4 == 11 && !a5)
  {
    v6 = a6;
    if (v6 && BTDeviceGetSupportedServices())
    {
      if (gLogObjects && gNumLogObjects >= 2)
      {
        v7 = *(gLogObjects + 8);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v7 = &_os_log_default;
        v8 = &_os_log_default;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        BTServiceCallback_cold_2();
      }
    }
  }
}

uint64_t _digitalIDSupportsTransport(char *a1, int a2)
{
  v2 = *a1;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if ((v2 & 0x24) == 4)
      {
        if (gLogObjects)
        {
          v5 = gNumLogObjects < 1;
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [AirplaneMode init];
          }

          v4 = &_os_log_default;
          v6 = &_os_log_default;
        }

        else
        {
          v4 = *gLogObjects;
        }

        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_47;
        }

        v13 = 0;
        v8 = "Accessory's digitalID supports MikeyBus";
        v9 = &v13;
        goto LABEL_46;
      }
    }

    else if (*a1 & 0x20) == 0 && (a1[2])
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v4 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v4 = &_os_log_default;
        v11 = &_os_log_default;
      }

      if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      v12 = 0;
      v8 = "Accessory's digitalID supports AIDB Bulk Pipes";
      v9 = &v12;
      goto LABEL_46;
    }

    return 0;
  }

  result = 0;
  if (a2)
  {
    if ((v2 & 0x20) == 0 && (v2 & 3) != 0)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v4 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v4 = &_os_log_default;
        v10 = &_os_log_default;
      }

      if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        goto LABEL_47;
      }

      v14 = 0;
      v8 = "Accessory's digitalID supports UART";
      v9 = &v14;
      goto LABEL_46;
    }
  }

  else if ((v2 & 0x20) == 0 && (v2 & 0x18) != 0)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v4 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v4 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_47;
    }

    v15 = 0;
    v8 = "Accessory's digitalID supports USB";
    v9 = &v15;
LABEL_46:
    _os_log_impl(&def_3A0E8, v4, OS_LOG_TYPE_INFO, v8, v9, 2u);
LABEL_47:

    return 1;
  }

  return result;
}

void _hook_digitalIDAttached(_BYTE *a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&def_3A0E8, v4, OS_LOG_TYPE_DEFAULT, "_hook_digitalIDAttached() called!", v5, 2u);
  }

  if (a1)
  {
    *a1 = 0;
  }
}

void _generateUnlockDialogSeenAnalyticEvent(uint64_t a1, void *a2)
{
  v2 = a2;
  v33 = -1;
  v32 = 0;
  v31 = -21846;
  v29 = 0;
  v30 = -1431655766;
  v28 = 0;
  if (!v2)
  {
    _generateUnlockDialogSeenAnalyticEvent_cold_10();
    goto LABEL_29;
  }

  if (IOAccessoryManagerGetDigitalID())
  {
    _generateUnlockDialogSeenAnalyticEvent_cold_1();
    goto LABEL_29;
  }

  v3 = CFStringCreateFromCFData([NSData dataWithBytes:&v30 length:6], @"%02X");
  if (!v3)
  {
    _generateUnlockDialogSeenAnalyticEvent_cold_9();
    goto LABEL_29;
  }

  v4 = v3;
  if (IOAccessoryPortGetServiceWithPort())
  {
    ManagerPrimaryPort = IOAccessoryPortGetManagerPrimaryPort();
    if (IOAccessoryManagerGetServiceWithPrimaryPort())
    {
      if (IOAccessoryManagerGetUSBConnectType())
      {
        v17 = logObjectForModule(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          IOAccessoryManagerEventCallback_cold_13();
        }
      }

      else
      {
        USBChargingVoltage = IOAccessoryManagerGetUSBChargingVoltage();
        if (USBChargingVoltage != -536870183 && USBChargingVoltage)
        {
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v17 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [AirplaneMode init];
            }

            v17 = &_os_log_default;
            v18 = &_os_log_default;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            IOAccessoryManagerEventCallback_cold_11();
          }
        }

        else
        {
          USBCurrentLimit = IOAccessoryManagerGetUSBCurrentLimit();
          if (USBCurrentLimit != -536870183 && USBCurrentLimit)
          {
            if (gLogObjects && gNumLogObjects >= 1)
            {
              v17 = *gLogObjects;
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                [AirplaneMode init];
              }

              v17 = &_os_log_default;
              v19 = &_os_log_default;
            }

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              IOAccessoryManagerEventCallback_cold_14();
            }
          }

          else
          {
            v35[0] = @"lightningCableType";
            v25 = [NSNumber numberWithInt:v33];
            v36[0] = v25;
            v35[1] = @"lightningPrimaryPortNumber";
            v24 = [NSNumber numberWithInt:ManagerPrimaryPort];
            v36[1] = v24;
            v35[2] = @"lightningDigitalID";
            v23 = CFRetain(v4);
            v36[2] = v23;
            v35[3] = @"deviceIsPowered";
            v22 = [NSNumber numberWithBool:v28 != 0];
            v36[3] = v22;
            v35[4] = @"chargingVoltage";
            v21 = [NSNumber numberWithInt:v29];
            v36[4] = v21;
            v35[5] = @"chargingCurrent";
            v20 = [NSNumber numberWithInt:v28];
            v36[5] = v20;
            v36[6] = @"1.2";
            v35[6] = @"eventVersion";
            v35[7] = @"unlockedSinceBoot";
            v8 = [NSNumber numberWithBool:MKBDeviceUnlockedSinceBoot() != 0];
            v36[7] = v8;
            v35[8] = @"supportsUSB";
            v9 = [NSNumber numberWithBool:_digitalIDSupportsTransport(&v30, 0)];
            v36[8] = v9;
            v35[9] = @"supportsUART";
            v10 = [NSNumber numberWithBool:_digitalIDSupportsTransport(&v30, 1)];
            v36[9] = v10;
            v35[10] = @"supportsMikeyBus";
            v11 = [NSNumber numberWithBool:_digitalIDSupportsTransport(&v30, 2)];
            v36[10] = v11;
            v35[11] = @"supportsAIDBulkPipes";
            v12 = [NSNumber numberWithBool:_digitalIDSupportsTransport(&v30, 3)];
            v36[11] = v12;
            v35[12] = @"restrictedModeTimeout";
            v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v2 usbRestrictedModeTimeout]);
            v36[12] = v13;
            v14 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:13];
            v15 = [NSMutableDictionary dictionaryWithDictionary:v14];

            v16 = [v2 analyticsQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = ___generateUnlockDialogSeenAnalyticEvent_block_invoke;
            block[3] = &unk_59250;
            v27 = v15;
            v17 = v15;
            dispatch_async(v16, block);
          }
        }
      }

      goto LABEL_28;
    }

    _generateUnlockDialogSeenAnalyticEvent_cold_7(&v34);
  }

  else
  {
    _generateUnlockDialogSeenAnalyticEvent_cold_8(&v34);
  }

  v17 = v34;
LABEL_28:

  CFRelease(v4);
LABEL_29:
}

void _hook_usbConnectTypeChanged(int a1, int a2, _BYTE *a3)
{
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 4;
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
    v8 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&def_3A0E8, v8, OS_LOG_TYPE_DEFAULT, "_hook_usbConnectTypeChanged() called!", v15, 2u);
  }

  if (_hook_usbConnectTypeChanged_onceToken != -1)
  {
    _hook_usbConnectTypeChanged_cold_2();
  }

  if (gLogObjects && gNumLogObjects >= 4)
  {
    v9 = *(gLogObjects + 24);
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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109632;
    v15[1] = a1;
    v16 = 1024;
    v17 = a2;
    v18 = 1024;
    v19 = _hook_usbConnectTypeChanged_previousConnectTypePublished;
    _os_log_impl(&def_3A0E8, v9, OS_LOG_TYPE_DEFAULT, "_hook_usbConnectTypeChanged: (connectType: %d, connectTypePublished: %d, previousConnectTypePublished: %d)", v15, 0x14u);
  }

  if ((_hook_usbConnectTypeChanged_usbTypeCDevice & 1) == 0)
  {
    if ((a2 - 2) > 3)
    {
      if ((a2 + 1) <= 1 && (_hook_usbConnectTypeChanged_previousConnectTypePublished - 2) <= 3)
      {
        if (gLogObjects && gNumLogObjects >= 4)
        {
          v12 = *(gLogObjects + 24);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [AirplaneMode init];
          }

          v12 = &_os_log_default;
          v14 = &_os_log_default;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15[0]) = 0;
          _os_log_impl(&def_3A0E8, v12, OS_LOG_TYPE_DEFAULT, "USB was detached!", v15, 2u);
        }

        acc_restrictedMode_accessoryDetached();
      }
    }

    else if ((_hook_usbConnectTypeChanged_previousConnectTypePublished + 1) <= 1)
    {
      if (gLogObjects && gNumLogObjects >= 4)
      {
        v11 = *(gLogObjects + 24);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v11 = &_os_log_default;
        v13 = &_os_log_default;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&def_3A0E8, v11, OS_LOG_TYPE_DEFAULT, "USB was attached!", v15, 2u);
      }

      acc_restrictedMode_accessoryAttached();
    }
  }

  _hook_usbConnectTypeChanged_previousConnectTypePublished = a2;
  if (a3)
  {
    *a3 = 0;
  }
}

uint64_t RegulatoryDomainChanged()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 3;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v2 = &_os_log_default;
    v1 = &_os_log_default;
  }

  else
  {
    v2 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&def_3A0E8, v2, OS_LOG_TYPE_DEFAULT, "Detected change in Regulatory Domain", v4, 2u);
  }

  return _checkFor128KHzRestriction();
}

uint64_t _checkFor128KHzRestriction()
{
  connect = 0;
  ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
  if (!ServiceWithPrimaryPort)
  {
    _checkFor128KHzRestriction_cold_7(buf);
    goto LABEL_52;
  }

  v1 = ServiceWithPrimaryPort;
  v2 = IOServiceOpen(ServiceWithPrimaryPort, mach_task_self_, 0, &connect);
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = connect == 0;
  }

  if (v3)
  {
    v19 = v2;
    v20 = logObjectForModule(2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "_checkFor128KHzRestriction";
      v23 = 1024;
      v24 = v19;
      v25 = 1024;
      v26 = connect;
      v27 = 1024;
      v28 = v1;
      _os_log_error_impl(&def_3A0E8, v20, OS_LOG_TYPE_ERROR, "%s: IOServiceOpen fail kernStatus:%02X, ioConnForService:%04X ioService:%d", buf, 0x1Eu);
    }

    goto LABEL_53;
  }

  if (!objc_opt_class())
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v7 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v7 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _checkFor128KHzRestriction_cold_5();
    }

    goto LABEL_44;
  }

  v4 = +[RDEstimate currentEstimates];
  v5 = v4;
  if (!v4 || ![v4 count])
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v6 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v6 = &_os_log_default;
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&def_3A0E8, v6, OS_LOG_TYPE_DEFAULT, "No current location estimates, using last known location estimates", buf, 2u);
    }

    v7 = +[RDEstimate lastKnownEstimates];

    if (!v7 || ![v7 count])
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v13 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v13 = &_os_log_default;
        v16 = &_os_log_default;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&def_3A0E8, v13, OS_LOG_TYPE_DEFAULT, "No last known location estimates", buf, 2u);
      }

      goto LABEL_44;
    }

    v5 = v7;
  }

  if (![v5 count])
  {
LABEL_27:
    v7 = v5;
LABEL_44:

    v17 = IOAccessoryManagerRevokeFeatures();
    if (!v17)
    {
      goto LABEL_45;
    }

    _checkFor128KHzRestriction_cold_6(v17, buf);
    goto LABEL_52;
  }

  v9 = 0;
  while (1)
  {
    v10 = [v5 objectAtIndexedSubscript:v9];
    v11 = [v10 countryCode];
    v12 = [v11 isEqualToString:@"CN"];

    if (v12)
    {
      break;
    }

    if ([v5 count]<= ++v9)
    {
      goto LABEL_27;
    }
  }

  v15 = IOAccessoryManagerAllowFeatures();
  if (v15)
  {
    _checkFor128KHzRestriction_cold_2(v15, buf);
LABEL_52:
    v20 = *buf;
LABEL_53:
  }

LABEL_45:
  result = connect;
  if (connect)
  {
    return IOServiceClose(connect);
  }

  return result;
}

void _generateUART_MB_AIDB_AccessoryConnectionStatisticsEvent(void *a1, uint64_t a2, char *a3)
{
  v5 = a1;
  v6 = _digitalIDSupportsTransport(a3, 1);
  v7 = _digitalIDSupportsTransport(a3, 2);
  v8 = _digitalIDSupportsTransport(a3, 3);
  if ((v6 & 1) == 0 && (v7 & 1) == 0 && !v8)
  {
    goto LABEL_58;
  }

  v73 = v5;
  v72 = v8;
  if (v6)
  {
    v9 = v5;
    CurrentUnixTimeMS = systemInfo_getCurrentUnixTimeMS();
    v11 = [v9 uartAccessoryDetachTimesDict];
    v12 = CFStringCreateFromFormat(a2, @"%d");
    v13 = [v11 objectForKey:v12];

    if (v13)
    {
      v14 = [v13 unsignedLongLongValue];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v15 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v15 = &_os_log_default;
        v16 = &_os_log_default;
      }

      v71 = CurrentUnixTimeMS - v14;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 134218496;
        v79 = CurrentUnixTimeMS;
        v80 = 2048;
        v81 = [v13 unsignedLongLongValue];
        v82 = 2048;
        v83 = CurrentUnixTimeMS - v14;
        _os_log_impl(&def_3A0E8, v15, OS_LOG_TYPE_INFO, "now: %llu, lastUARTAccessoryDetachTime: %llu, lastUARTDetachEventDuration: %llu", buf, 0x20u);
      }

      v17 = [v9 uartAccessoryDetachTimesDict];
      v18 = CFStringCreateFromFormat(a2, @"%d");
      [v17 removeObjectForKey:v18];

      v19 = [v9 pluginDefaults];
      v20 = [v9 uartAccessoryDetachTimesDict];
      [v19 setObject:v20 forKey:@"uartDetachTimes"];
    }

    else
    {
      v71 = 0;
    }

    v5 = v73;
    v8 = v72;
    if (v7)
    {
LABEL_19:
      v21 = v5;
      v22 = systemInfo_getCurrentUnixTimeMS();
      v23 = [v21 mikeyBusAccessoryDetachTimesDict];
      v24 = CFStringCreateFromFormat(a2, @"%d");
      v25 = [v23 objectForKey:v24];

      if (v25)
      {
        v26 = [v25 unsignedLongLongValue];
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v27 = *gLogObjects;
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

        v70 = v22 - v26;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v29 = [v25 unsignedLongLongValue];
          *buf = 134218496;
          v79 = v22;
          v80 = 2048;
          v81 = v29;
          v82 = 2048;
          v83 = v22 - v26;
          _os_log_impl(&def_3A0E8, v27, OS_LOG_TYPE_INFO, "now: %llu, lastMikeyBusAccessoryDetachTime: %llu, lastMikeyBusDetachEventDuration: %llu", buf, 0x20u);
        }

        v30 = [v21 mikeyBusAccessoryDetachTimesDict];
        v31 = CFStringCreateFromFormat(a2, @"%d");
        [v30 removeObjectForKey:v31];

        v32 = [v21 pluginDefaults];
        v33 = [v21 mikeyBusAccessoryDetachTimesDict];
        [v32 setObject:v33 forKey:@"mikeyBusDetachTimes"];
      }

      else
      {
        v70 = 0;
      }

      v5 = v73;
      if (v72)
      {
        goto LABEL_30;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v71 = 0;
    if (v7)
    {
      goto LABEL_19;
    }
  }

  v70 = 0;
  if (v8)
  {
LABEL_30:
    v34 = v5;
    v35 = systemInfo_getCurrentUnixTimeMS();
    v36 = [v34 aidBulkPipeAccessoryDetachTimesDict];
    v37 = CFStringCreateFromFormat(a2, @"%d");
    v38 = [v36 objectForKey:v37];

    if (v38)
    {
      v39 = [v38 unsignedLongLongValue];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v40 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v40 = &_os_log_default;
        v41 = &_os_log_default;
      }

      v42 = v35 - v39;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v43 = [v38 unsignedLongLongValue];
        *buf = 134218496;
        v79 = v35;
        v80 = 2048;
        v81 = v43;
        v82 = 2048;
        v83 = v42;
        _os_log_impl(&def_3A0E8, v40, OS_LOG_TYPE_INFO, "now: %llu, lastAIDBulkPipeAccessoryDetachTime: %llu, lastMikeyBusDetachEventDuration: %llu", buf, 0x20u);
      }

      v69 = v42;

      v44 = [v34 aidBulkPipeAccessoryDetachTimesDict];
      v45 = CFStringCreateFromFormat(a2, @"%d");
      [v44 removeObjectForKey:v45];

      v46 = [v34 pluginDefaults];
      v47 = [v34 aidBulkPipeAccessoryDetachTimesDict];
      [v46 setObject:v47 forKey:@"aidBulkPipeDetachTimes"];
    }

    else
    {
      v69 = 0;
    }

    v5 = v73;
    goto LABEL_41;
  }

LABEL_11:
  v69 = 0;
LABEL_41:
  v48 = CFStringCreateFromCFData([NSData dataWithBytes:a3 length:6], @"%02X");
  v76[0] = @"screenIsLocked";
  v49 = MKBGetDeviceLockState();
  v50 = (v49 - 1) < 2;
  if (v49 == 3)
  {
    v50 = 0;
  }

  if (v49)
  {
    v51 = v50;
  }

  else
  {
    v51 = 0;
  }

  v52 = [NSNumber numberWithBool:v51, NSMutableDictionary];
  v77[0] = v52;
  v76[1] = @"unlockedSinceBoot";
  v53 = [NSNumber numberWithBool:MKBDeviceUnlockedSinceBoot() != 0];
  v77[1] = v53;
  v76[2] = @"lightningDigitalID";
  v68 = v48;
  if (v48)
  {
    v54 = CFRetain(v48);
  }

  else
  {
    v54 = 0;
  }

  v77[2] = v54;
  v76[3] = @"lightningPrimaryPortNumber";
  v55 = [NSNumber numberWithInt:a2];
  v77[3] = v55;
  v76[4] = @"supportsUART";
  v56 = [NSNumber numberWithBool:v6];
  v77[4] = v56;
  v76[5] = @"supportsMikeyBus";
  v57 = [NSNumber numberWithBool:v7];
  v77[5] = v57;
  v76[6] = @"supportsAIDBulkPipes";
  v58 = [NSNumber numberWithBool:v72];
  v77[6] = v58;
  v77[7] = @"1.0";
  v76[7] = @"eventVersion";
  v76[8] = @"restrictedModeTimeout";
  v59 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 usbRestrictedModeTimeout]);
  v77[8] = v59;
  v60 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:9];
  v61 = [v67 dictionaryWithDictionary:v60];

  if (v71)
  {
    BucketizedAnalyticEventDuration = acc_analytics_createBucketizedAnalyticEventDuration(v71 / 0x3E8);
    [v61 setObject:BucketizedAnalyticEventDuration forKey:@"timeSinceLastUARTDetach"];
  }

  if (v70)
  {
    v63 = acc_analytics_createBucketizedAnalyticEventDuration(v70 / 0x3E8);
    [v61 setObject:v63 forKey:@"timeSinceLastMikeyBusDetach"];
  }

  v5 = v73;
  if (v69)
  {
    v64 = acc_analytics_createBucketizedAnalyticEventDuration(v69 / 0x3E8);
    [v61 setObject:v64 forKey:@"timeSinceLastAIDBulkPipeDetach"];
  }

  v65 = [v73 analyticsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___generateUART_MB_AIDB_AccessoryConnectionStatisticsEvent_block_invoke;
  block[3] = &unk_59250;
  v66 = v61;
  v75 = v66;
  dispatch_async(v65, block);

  if (v68)
  {
    CFRelease(v68);
  }

LABEL_58:
}

void _cacheDigitalID(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 digitalIDCacheDict];

  if (!v6)
  {
    v7 = +[NSMutableDictionary dictionary];
    [v5 setDigitalIDCacheDict:v7];
  }

  v8 = [v5 digitalIDCacheDict];
  v9 = [NSData dataWithBytes:a3 length:6];
  v10 = CFStringCreateFromFormat(a2, @"%d");
  [v8 setObject:v9 forKey:v10];

  v11 = [v5 pluginDefaults];
  v12 = [v5 digitalIDCacheDict];
  [v11 setObject:v12 forKey:@"cachedDigitalID"];

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v13 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v13 = &_os_log_default;
    v14 = &_os_log_default;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = [v5 digitalIDCacheDict];
    v16 = 138412290;
    v17 = v15;
    _os_log_impl(&def_3A0E8, v13, OS_LOG_TYPE_INFO, "kIOAccessoryManagerMessageAccIDDigitalID digitalIDCacheDict: %@", &v16, 0xCu);
  }
}

void __IOAccessoryManagerEventCallback_block_invoke_874(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = @"com.apple.accessories.cable.typeChanged";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&def_3A0E8, v4, OS_LOG_TYPE_DEFAULT, "CoreAnalytics event: %@\neventDict: %@", &v8, 0x16u);
  }

  v6 = *(a1 + 32);
  AnalyticsSendEvent();
  if (*(a1 + 40) != 1)
  {
    v7 = [ACCAnalytics loggerForUser:0];
    [v7 logACCAnalyticsForEventNamed:@"accessoryCableTypeChanged" withAttributes:*(a1 + 32)];
  }
}

void _generateUSBAccessoryConnectionStatisticsEvent(void *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v7 = a1;
  if (_digitalIDSupportsTransport(a3, 0))
  {
    v8 = [v7 lastUSBAccessoryDetachTime];

    v36 = v7;
    if (v8)
    {
      v9 = v7;
      CurrentUnixTimeMS = systemInfo_getCurrentUnixTimeMS();
      v11 = [v9 lastUSBAccessoryDetachTime];
      v12 = [v11 unsignedLongLongValue];

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v13 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v13 = &_os_log_default;
        v15 = &_os_log_default;
      }

      v14 = CurrentUnixTimeMS - v12;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v16 = [v9 lastUSBAccessoryDetachTime];
        *buf = 134218496;
        v42 = CurrentUnixTimeMS;
        v43 = 2048;
        v44 = [v16 unsignedLongLongValue];
        v45 = 2048;
        v46 = v14;
        _os_log_impl(&def_3A0E8, v13, OS_LOG_TYPE_INFO, "now: %llu, lastUSBAccessoryDetachTime: %llu, lastUSBDetachEventDuration: %llu", buf, 0x20u);
      }

      [v9 setLastUSBAccessoryDetachTime:0];
      v17 = [v9 pluginDefaults];
      [v17 removeObjectForKey:@"lastUSBDetach"];

      v7 = v36;
    }

    else
    {
      v14 = 0;
    }

    v18 = CFStringCreateFromCFData([NSData dataWithBytes:a3 length:6], @"%02X");
    v39[0] = @"screenIsLocked";
    v19 = MKBGetDeviceLockState();
    v20 = (v19 - 1) < 2;
    if (v19 == 3)
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = [NSNumber numberWithBool:v21, NSMutableDictionary];
    v40[0] = v22;
    v39[1] = @"unlockedSinceBoot";
    v23 = [NSNumber numberWithBool:MKBDeviceUnlockedSinceBoot() != 0];
    v40[1] = v23;
    v39[2] = @"lightningDigitalID";
    v35 = v14;
    if (v18)
    {
      v24 = CFRetain(v18);
    }

    else
    {
      v24 = 0;
    }

    v40[2] = v24;
    v39[3] = @"lightningPrimaryPortNumber";
    v25 = [NSNumber numberWithInt:a2];
    v40[3] = v25;
    v39[4] = @"supportsUSB";
    v26 = [NSNumber numberWithBool:1];
    v40[4] = v26;
    v40[5] = @"1.0";
    v39[5] = @"eventVersion";
    v39[6] = @"lightningCableType";
    v27 = [NSNumber numberWithInt:a4];
    v40[6] = v27;
    v39[7] = @"restrictedModeTimeout";
    v28 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 usbRestrictedModeTimeout]);
    v40[7] = v28;
    v29 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:8];
    v30 = [v34 dictionaryWithDictionary:v29];

    if (v35)
    {
      BucketizedAnalyticEventDuration = acc_analytics_createBucketizedAnalyticEventDuration(v35 / 0x3E8);
      [v30 setObject:BucketizedAnalyticEventDuration forKey:@"timeSinceLastUSBDetach"];
    }

    v7 = v36;
    v32 = [v36 analyticsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___generateUSBAccessoryConnectionStatisticsEvent_block_invoke;
    block[3] = &unk_59250;
    v33 = v30;
    v38 = v33;
    dispatch_async(v32, block);

    if (v18)
    {
      CFRelease(v18);
    }
  }
}

void _hook_currentLimitChanged()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 4;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v2 = &_os_log_default;
    v1 = &_os_log_default;
  }

  else
  {
    v2 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&def_3A0E8, v2, OS_LOG_TYPE_DEFAULT, "_hook_currentLimitChanged() called!", buf, 2u);
  }

  *buf = 0;
  if (!IOAccessoryPortGetServiceWithPort())
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v4 = *gLogObjects;
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

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      IOAccessoryManagerEventCallback_cold_20();
    }

    goto LABEL_32;
  }

  IOAccessoryPortGetManagerPrimaryPort();
  if (!IOAccessoryManagerGetServiceWithPrimaryPort())
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v4 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v4 = &_os_log_default;
      v6 = &_os_log_default;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      IOAccessoryManagerEventCallback_cold_19();
    }

LABEL_32:

    v3 = 0;
    goto LABEL_33;
  }

  if (IOAccessoryManagerGetUSBCurrentLimit())
  {
    v3 = 0;
  }

  else
  {
    v3 = *buf;
  }

LABEL_33:
  if (gLogObjects && gNumLogObjects >= 4)
  {
    v7 = *(gLogObjects + 24);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v7 = &_os_log_default;
    v8 = &_os_log_default;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v3;
    LOWORD(v18) = 1024;
    *(&v18 + 2) = _hook_currentLimitChanged_previousUSBCurrentLimitMA;
    _os_log_impl(&def_3A0E8, v7, OS_LOG_TYPE_DEFAULT, "_hook_currentLimitChanged: (usbCurrentLimitMA: %dma, previousUSBCurrentLimitMA: %dma)", buf, 0xEu);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = _uiQueue();
  *buf = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = ___isTRMDialogTimerRunning_block_invoke;
  v20 = &unk_59998;
  v21 = &v13;
  dispatch_sync(v9, buf);

  LODWORD(v9) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  if (v9 == 1 && _hook_currentLimitChanged_previousUSBCurrentLimitMA <= 0x1F3 && v3 >= 0x1F4)
  {
    if (gLogObjects && gNumLogObjects >= 4)
    {
      v10 = *(gLogObjects + 24);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v10 = &_os_log_default;
      v11 = &_os_log_default;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = (SBSBatteryUIDismissDuration * 1000.0);
      _os_log_impl(&def_3A0E8, v10, OS_LOG_TYPE_DEFAULT, "Resetting TRM dialog timer to %ums...", buf, 8u);
    }

    v12 = _uiQueue();
    dispatch_sync(v12, &__block_literal_global_886);
  }

  _hook_currentLimitChanged_previousUSBCurrentLimitMA = v3;
}

uint64_t __IOAccessoryManagerEventCallback_block_invoke_875(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412546;
    v9 = @"com.apple.accessories.charging.configurationChanged";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&def_3A0E8, v4, OS_LOG_TYPE_DEFAULT, "CoreAnalytics event: %@\neventDict: %@", &v8, 0x16u);
  }

  v6 = *(a1 + 32);
  return AnalyticsSendEvent();
}

void __IOAccessoryManagerEventCallback_block_invoke_877(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [NSNumber numberWithInt:*(a1 + 48)];
  [v1 processAnalyticsEventListUsingTime:v2 scanReason:0 primaryPort:v3];
}

void _updateCachedAccessoryDetachTimes(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 digitalIDCacheDict];
  v5 = CFStringCreateFromFormat(a2, @"%d");
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = [NSNumber numberWithUnsignedLongLong:systemInfo_getCurrentUnixTimeMS()];
    v27 = -21846;
    v26 = -1431655766;
    [v6 getBytes:&v26 length:6];
    if (_digitalIDSupportsTransport(&v26, 1))
    {
      v8 = [v3 uartAccessoryDetachTimesDict];
      v9 = CFStringCreateFromFormat(a2, @"%d");
      [v8 setObject:v7 forKey:v9];

      v10 = [v3 pluginDefaults];
      v11 = [v3 uartAccessoryDetachTimesDict];
      [v10 setObject:v11 forKey:@"uartDetachTimes"];

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v12 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v12 = &_os_log_default;
        v13 = &_os_log_default;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v29 = v7;
        v30 = 1024;
        v31 = a2;
        _os_log_impl(&def_3A0E8, v12, OS_LOG_TYPE_INFO, "kIOAccessoryManagerMessageDetach/kIOAccessoryManagerMessageAccIDNoneConnected lastUARTAccessoryDetachTime: %@ for primaryPort: %d", buf, 0x12u);
      }
    }

    if (_digitalIDSupportsTransport(&v26, 2))
    {
      v14 = [v3 mikeyBusAccessoryDetachTimesDict];
      v15 = CFStringCreateFromFormat(a2, @"%d");
      [v14 setObject:v7 forKey:v15];

      v16 = [v3 pluginDefaults];
      v17 = [v3 mikeyBusAccessoryDetachTimesDict];
      [v16 setObject:v17 forKey:@"mikeyBusDetachTimes"];

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v18 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v18 = &_os_log_default;
        v19 = &_os_log_default;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v29 = v7;
        v30 = 1024;
        v31 = a2;
        _os_log_impl(&def_3A0E8, v18, OS_LOG_TYPE_INFO, "kIOAccessoryManagerMessageDetach/kIOAccessoryManagerMessageAccIDNoneConnected lastMikeyBusAccessoryDetachTime: %@ for primaryPort: %d", buf, 0x12u);
      }
    }

    if (_digitalIDSupportsTransport(&v26, 3))
    {
      v20 = [v3 aidBulkPipeAccessoryDetachTimesDict];
      v21 = CFStringCreateFromFormat(a2, @"%d");
      [v20 setObject:v7 forKey:v21];

      v22 = [v3 pluginDefaults];
      v23 = [v3 aidBulkPipeAccessoryDetachTimesDict];
      [v22 setObject:v23 forKey:@"aidBulkPipeDetachTimes"];

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v24 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        v24 = &_os_log_default;
        v25 = &_os_log_default;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v29 = v7;
        v30 = 1024;
        v31 = a2;
        _os_log_impl(&def_3A0E8, v24, OS_LOG_TYPE_INFO, "kIOAccessoryManagerMessageDetach/kIOAccessoryManagerMessageAccIDNoneConnected lastAIDBulkPipeAccessoryDetachTime: %@ for primaryPort: %d", buf, 0x12u);
      }
    }
  }
}

void _removeCachedDigitalID(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 digitalIDCacheDict];
  v5 = CFStringCreateFromFormat(a2, @"%02X");
  [v4 removeObjectForKey:v5];

  v6 = [v3 pluginDefaults];
  v7 = [v3 digitalIDCacheDict];
  [v6 setObject:v7 forKey:@"cachedDigitalID"];

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v8 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v8 = &_os_log_default;
    v9 = &_os_log_default;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = [v3 digitalIDCacheDict];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&def_3A0E8, v8, OS_LOG_TYPE_INFO, "kIOAccessoryManagerMessageDetach/kIOAccessoryManagerMessageAccIDNoneConnected digitalIDCacheDict: %@", &v11, 0xCu);
  }
}

void __IOAccessoryManagerEventCallback_block_invoke_879(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [NSNumber numberWithInt:*(a1 + 48)];
  [v1 processAnalyticsEventListUsingTime:v2 scanReason:0 primaryPort:v3];
}

void ___generateUSBAccessoryConnectionStatisticsEvent_block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = @"com.apple.accessories.connection.statistics";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&def_3A0E8, v4, OS_LOG_TYPE_DEFAULT, "CoreAnalytics event: %@\neventDict: %@", &v9, 0x16u);
  }

  v6 = *(a1 + 32);
  AnalyticsSendEvent();
  v7 = *(a1 + 32);
  AnalyticsSendEvent();
  if (systemInfo_isInternalBuild())
  {
    v8 = [ACCAnalytics loggerForUser:0];
    [v8 logACCAnalyticsForEventNamed:@"accessoryConnectionStatistics" withAttributes:*(a1 + 32)];
  }
}

void ___hook_currentLimitChanged_block_invoke(id a1)
{
  _gTRMNotificationTimerRunning = 1;
  source = _trmDialogTimer();
  v1 = dispatch_time(0, (SBSBatteryUIDismissDuration * 1000000000.0));
  dispatch_source_set_timer(source, v1, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);
}

uint64_t ___isTRMDialogTimerRunning_block_invoke(uint64_t result)
{
  if (_gTRMNotificationTimerRunning == 1)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void ___generateUnlockDialogSeenAnalyticEvent_block_invoke(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v23 = 138412546;
    v24 = @"com.apple.accessories.unlockDialogSeen";
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&def_3A0E8, v4, OS_LOG_TYPE_DEFAULT, "CoreAnalytics event: %@\neventDict: %@", &v23, 0x16u);
  }

  v6 = *(a1 + 32);
  AnalyticsSendEvent();
  if (systemInfo_systemSupportsPearl() && systemInfo_isInternalBuild())
  {
    v7 = *(a1 + 32);
    v8 = IOServiceMatching("ApplePearlSEPDriver");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"CombinedSequenceEnabled", kCFAllocatorDefault, 0);
      v12 = IORegistryEntryCreateCFProperty(v10, @"CombinedSequenceAutoSet", kCFAllocatorDefault, 0);
      v13 = v12;
      if (CFProperty && v12)
      {
        v14 = [v12 BOOLValue];
        v15 = [CFProperty BOOLValue];
        if (v14)
        {
          v16 = @"autoDisabled";
          v17 = @"autoEnabled";
        }

        else
        {
          v16 = @"explicitlyDisabled";
          v17 = @"explicitlyEnabled";
        }

        if (v15)
        {
          v16 = v17;
        }

        v20 = v16;
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v18 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [AirplaneMode init];
          }

          v18 = &_os_log_default;
          v21 = &_os_log_default;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          ___generateUnlockDialogSeenAnalyticEvent_block_invoke_cold_3();
        }

        v20 = @"errorOccurred";
      }

      IOObjectRelease(v10);
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        CFProperty = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [AirplaneMode init];
        }

        CFProperty = &_os_log_default;
        v19 = &_os_log_default;
      }

      if (os_log_type_enabled(CFProperty, OS_LOG_TYPE_ERROR))
      {
        ___generateUnlockDialogSeenAnalyticEvent_block_invoke_cold_5();
      }

      v20 = @"errorOccurred";
    }

    [v7 setObject:v20 forKey:@"fastPathState"];
  }

  v22 = [ACCAnalytics loggerForUser:1];
  [v22 logACCAnalyticsForEventNamed:@"accessoryUnlockDialogSeen" withAttributes:*(a1 + 32)];
}

id serviceNotificationTRM(void *a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 4;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    serviceNotificationTRM_cold_2();
  }

  return [a1 trmStatusDidChange];
}

void serviceNotificationLDCM(void *a1, io_registry_entry_t a2, int a3)
{
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 5;
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
    v8 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    serviceNotificationLDCM_cold_2();
  }

  if (a3 == -469794613)
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v9 = *(gLogObjects + 32);
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
      *v11 = 0;
      _os_log_impl(&def_3A0E8, v9, OS_LOG_TYPE_INFO, "LDCM mitigation state changed!", v11, 2u);
    }

    serviceLDCMMitigationStatusChanged(a1, a2);
  }
}

void serviceLDCMMitigationStatusChanged(void *a1, io_registry_entry_t a2)
{
  v3 = a1;
  CFProperty = IORegistryEntryCreateCFProperty(a2, @"MitigationsStatus", kCFAllocatorDefault, 0);
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 5;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [AirplaneMode init];
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 32);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    serviceLDCMMitigationStatusChanged_cold_2();
  }

  if ([CFProperty unsignedIntValue] == 2)
  {
    v8 = +[NSProcessInfo processInfo];
    v9 = [v8 processName];
    v10 = [NSString stringWithFormat:@"%@ (%i) : %p", v9, getpid(), v3];

    v11 = [[IOUIAngelService alloc] initWithIdentifier:v10];
    [v3 setAngelServiceLDCM:v11];

    v12 = [v3 angelServiceLDCM];
    [v12 setDelegate:v3];

    v13 = [v3 angelServiceLDCM];
    [v13 activate];

    if (gLogObjects && gNumLogObjects >= 5)
    {
      v14 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v14 = &_os_log_default;
      v16 = &_os_log_default;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      serviceLDCMMitigationStatusChanged_cold_6();
    }

    v17 = [v3 angelServiceLDCM];
    [v17 setIntrusiveUI:1 completion:&__block_literal_global_915];
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 5)
    {
      v15 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v15 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      serviceLDCMMitigationStatusChanged_cold_4();
    }

    v10 = [v3 angelServiceLDCM];
    [v10 setIntrusiveUI:0 completion:&__block_literal_global_918];
  }
}

void __serviceLDCMMitigationStatusChanged_block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects <= 4;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (v2)
  {
    if (v5)
    {
      v6 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v6 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __serviceLDCMMitigationStatusChanged_block_invoke_cold_2();
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v6 = &_os_log_default;
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __serviceLDCMMitigationStatusChanged_block_invoke_cold_4();
    }
  }
}

void __serviceLDCMMitigationStatusChanged_block_invoke_916(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogObjects)
  {
    v4 = gNumLogObjects <= 4;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (v2)
  {
    if (v5)
    {
      v6 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v6 = &_os_log_default;
      v7 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __serviceLDCMMitigationStatusChanged_block_invoke_cold_2();
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(gLogObjects + 32);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v6 = &_os_log_default;
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __serviceLDCMMitigationStatusChanged_block_invoke_916_cold_4();
    }
  }
}

void ___uiQueue_block_invoke(id a1)
{
  _uiQueue_uiQueue = dispatch_queue_create("com.apple.accessorydMatchingPlugin.uiQueue", 0);

  _objc_release_x1();
}

void ___trmDialogTimer_block_invoke(id a1)
{
  v3 = dispatch_get_global_queue(2, 0);
  v1 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  v2 = _gTRMNotificationTimer;
  _gTRMNotificationTimer = v1;
}

void ___shouldPresentTRMDialog_block_invoke(uint64_t a1)
{
  v2 = [_portsPendingUserAuthorization count];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 4;
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
    v5 = *(gLogObjects + 24);
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = v2;
    _os_log_impl(&def_3A0E8, v5, OS_LOG_TYPE_INFO, "numPortsPendingUserAuthorization: %lu", &v6, 0xCu);
  }

  if (v2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void ___dismissUnlockDialog_block_invoke(id a1)
{
  if (_gUnlockNotification)
  {
    if (gLogObjects)
    {
      v1 = gNumLogObjects < 4;
    }

    else
    {
      v1 = 1;
    }

    if (v1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [AirplaneMode init];
      }

      v3 = &_os_log_default;
      v2 = &_os_log_default;
    }

    else
    {
      v3 = *(gLogObjects + 24);
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&def_3A0E8, v3, OS_LOG_TYPE_DEFAULT, "Dismissing unlock notification...", v6, 2u);
    }

    v4 = +[ACCUserNotificationManager sharedManager];
    [v4 dismissNotification:_gUnlockNotification];

    v5 = _gUnlockNotification;
    _gUnlockNotification = 0;
  }
}

id _localizedStringFromTableInBundle(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v4)
  {
    v6 = 0;
    v15 = 0;
    goto LABEL_21;
  }

  v6 = [v4 localizations];
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = CFPreferencesCopyValue(@"AppleLanguages", kCFPreferencesAnyApplication, @"mobile", kCFPreferencesAnyHost);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v8 = [NSBundle preferredLocalizationsFromArray:v6 forPreferences:v7];
  if (![v8 count])
  {

LABEL_19:
LABEL_20:
    v15 = [v5 localizedStringForKey:v3 value:v3 table:{@"Localizable", v17}];
    goto LABEL_21;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v5 localizedStringForKey:v3 value:0 table:@"Localizable" localization:{*(*(&v17 + 1) + 8 * i), v17}];
        if (v14)
        {
          v15 = v14;
          goto LABEL_16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_16:

  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v15;
}

void OUTLINED_FUNCTION_9(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x12u);
}

_BYTE *OUTLINED_FUNCTION_14(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_16(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

BOOL OUTLINED_FUNCTION_18()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL OUTLINED_FUNCTION_20(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_24(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

const char *acm_mem_alloc_info(const char *result, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    _allocatedMem_0 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, _allocatedMem_3, v8, a5, v6);
  }

  return result;
}

const char *acm_mem_free_info(const char *result, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    v6 = _allocatedMem_0 - a3;
    if (_allocatedMem_0 < a3)
    {
      v6 = 0;
    }

    _allocatedMem_0 = v6;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v7 = "NULL";
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = "NULL";
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "NULL";
    }

    if (a6)
    {
      v7 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v8, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, _allocatedMem_3, v9, a5, v7);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t DeserializeVerifyAclConstraint(int a1, uint64_t a2, unsigned int a3, _OWORD *a4, void *a5, _DWORD *a6, void *a7, unsigned int *a8, BOOL *a9, _DWORD *a10, void *a11, _DWORD *a12)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v12 = 4294967293;
  if (a2 && a4 && a5 && a6 && a9 && a10 && a11 && a12 && a3 >= 0x10)
  {
    v16 = a3;
    *a4 = *a2;
    v37 = 16;
    if ((a3 & 0xFFFFFFFC) == 0x10)
    {
      v12 = 4294967293;
    }

    else
    {
      v20 = *(a2 + 16);
      v37 = 20;
      v21 = acm_mem_alloc_data(v20);
      acm_mem_alloc_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 534, "DeserializeVerifyAclConstraint");
      if (v21)
      {
        if (v16 - 20 < v20)
        {
          goto LABEL_24;
        }

        memcpy(v21, (a2 + 20), v20);
        v22 = v20 + 20;
        v37 = v20 + 20;
        v33 = a5;
        if (a1 != 32)
        {
          v26 = 0;
          v34 = 0;
          goto LABEL_19;
        }

        if (v16 - v22 < 4)
        {
LABEL_24:
          v26 = 0;
          v34 = 0;
        }

        else
        {
          v31 = a7;
          v23 = a8;
          v24 = *(a2 + v22);
          v25 = v20 + 24;
          v37 = v20 + 24;
          v26 = acm_mem_alloc_data(v24);
          acm_mem_alloc_info("<data>", v26, v24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 546, "DeserializeVerifyAclConstraint");
          v34 = v24;
          if (!v26)
          {
            v12 = 4294967292;
LABEL_26:
            acm_mem_free_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 582, "DeserializeVerifyAclConstraint");
            acm_mem_free_data(v21, v20);
            if (v26)
            {
              acm_mem_free_info("<data>", v26, v34, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 585, "DeserializeVerifyAclConstraint");
              acm_mem_free_data(v26, v34);
            }

            goto LABEL_30;
          }

          if (v16 - v25 >= v24)
          {
            memcpy(v26, (a2 + v25), v24);
            v22 = v25 + v24;
            v37 = v25 + v24;
            a8 = v23;
            a7 = v31;
LABEL_19:
            if (v22 != v16)
            {
              v27 = *(a2 + v22) != 0;
              v37 = v22 + 1;
              if (v16 - (v22 + 1) >= 4)
              {
                v32 = v20;
                v28 = v26;
                v29 = *(a2 + v22 + 1);
                v37 = v22 + 5;
                v12 = deserializeParameters(a2, v16, &v37, &v36, &v35);
                if (!v12)
                {
                  *v33 = v21;
                  *a7 = v28;
                  *a8 = v34;
                  *a6 = v32;
                  *a9 = v27;
                  *a10 = v29;
                  *a11 = v36;
                  *a12 = v35;
                  return v12;
                }

                v26 = v28;
                v20 = v32;
                goto LABEL_26;
              }
            }
          }
        }

        v12 = 4294967293;
        goto LABEL_26;
      }

      v12 = 4294967292;
    }
  }

LABEL_30:
  if (v36)
  {
    Util_SafeDeallocParameters(v36, v35);
  }

  return v12;
}

uint64_t DeserializeProcessAcl(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4, _DWORD *a5, void *a6, unsigned int *a7, _DWORD *a8, void *a9, _DWORD *a10)
{
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v10 = 4294967293;
  if (a1)
  {
    if (a3)
    {
      v11 = a4;
      if (a4)
      {
        if (a5)
        {
          v13 = a6;
          if (a6)
          {
            v14 = a7;
            if (a7)
            {
              v15 = a8;
              if (a8)
              {
                if (a9 && a10 && a2 >= 0x10)
                {
                  v17 = a2;
                  *a3 = *a1;
                  v40 = 16;
                  if ((a2 & 0xFFFFFFFC) == 0x10)
                  {
                    v10 = 4294967293;
                  }

                  else
                  {
                    v18 = *(a1 + 16);
                    v40 = 20;
                    v19 = acm_mem_alloc_data(v18);
                    acm_mem_alloc_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 724, "DeserializeProcessAcl");
                    if (v19)
                    {
                      if (v17 - 20 < v18 || (memcpy(v19, (a1 + 20), v18), v40 = v18 + 20, v17 - (v18 + 20) < 4))
                      {
                        v32 = 0;
                        v37 = 0;
                        v10 = 4294967293;
                      }

                      else
                      {
                        v36 = a5;
                        v20 = *(a1 + v18 + 20);
                        v21 = v18 + 24;
                        v40 = v18 + 24;
                        v37 = v20;
                        if (!v20)
                        {
                          v35 = 0;
                          goto LABEL_20;
                        }

                        v33 = v11;
                        v22 = v13;
                        v23 = v14;
                        v24 = v15;
                        v25 = v20;
                        v26 = acm_mem_alloc_data(v20);
                        acm_mem_alloc_info("<data>", v26, v25, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 736, "DeserializeProcessAcl");
                        if (v26)
                        {
                          v27 = v26;
                          if (v17 - v21 >= v25)
                          {
                            v13 = v22;
                            v35 = v27;
                            memcpy(v27, (a1 + v21), v25);
                            v21 += v25;
                            v40 = v21;
                            v15 = v24;
                            v14 = v23;
                            v11 = v33;
LABEL_20:
                            if (v17 - v21 < 4)
                            {
                              v10 = 4294967293;
                            }

                            else
                            {
                              v34 = v18;
                              v28 = v19;
                              v29 = v15;
                              v30 = *(a1 + v21);
                              v40 = v21 + 4;
                              v10 = deserializeParameters(a1, v17, &v40, &v39, &v38);
                              if (!v10)
                              {
                                *v11 = v28;
                                *v36 = v34;
                                *v13 = v35;
                                *v14 = v37;
                                *v29 = v30;
                                *a9 = v39;
                                *a10 = v38;
                                return v10;
                              }

                              v19 = v28;
                              v18 = v34;
                            }

                            v32 = v35;
                            goto LABEL_32;
                          }

                          v10 = 4294967293;
                          v32 = v26;
                        }

                        else
                        {
                          v32 = 0;
                          v10 = 4294967292;
                        }
                      }

LABEL_32:
                      acm_mem_free_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 765, "DeserializeProcessAcl");
                      acm_mem_free_data(v19, v18);
                      if (v32)
                      {
                        acm_mem_free_info("<data>", v32, v37, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 768, "DeserializeProcessAcl");
                        acm_mem_free_data(v32, v37);
                      }

                      goto LABEL_34;
                    }

                    v10 = 4294967292;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  if (v39)
  {
    Util_SafeDeallocParameters(v39, v38);
  }

  return v10;
}

uint64_t getRequirementDataSizeForVersion(unsigned int a1, _DWORD *a2)
{
  if (!a2)
  {
    getRequirementDataSizeForVersion_cold_2();
  }

  if (a1 > 1)
  {
    return a2[3];
  }

  v2 = *a2 - 1;
  if (v2 >= 0x1C || ((0xFFE7FE7u >> v2) & 1) == 0)
  {
    getRequirementDataSizeForVersion_cold_1();
  }

  return qword_517F0[v2];
}

uint64_t OUTLINED_FUNCTION_0_3@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  a2 = a1;

  return serializeParameters(v4, v3, v2, &a2);
}

uint64_t OUTLINED_FUNCTION_1_2()
{

  return memcmp(v1, v0, 0x20uLL);
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 0;
  *a4 = 24;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, void *a2)
{
  result = 0;
  *a2 = 16;
  return result;
}

void OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a9 = *v22 - v25;
  v29 = *(v27 + 8 * v26);

  SerializeRequirement(v24, v29, v23 + v25, &a9, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{

  return getLengthOfParameters(a2, a3, &a11);
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a10 = 0;
  a11 = 0;

  return DeserializeRequirement(v22 + v24, v23 - v24, &a11, &a10, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

__n128 OUTLINED_FUNCTION_12_0(__n128 *a1, uint64_t a2, __n128 *a3, _DWORD *a4)
{
  result = *a1;
  *a3 = *a1;
  *a4 = a1[1].n128_u32[0];
  return result;
}

__n128 OUTLINED_FUNCTION_17_0@<Q0>(unsigned __int32 a1@<W1>, unsigned __int32 a2@<W2>, __n128 *a3@<X3>, void *a4@<X4>, __n128 *a5@<X8>)
{
  result = *a5;
  *a3 = *a5;
  a3[1].n128_u32[0] = a1;
  a3[1].n128_u32[1] = a2;
  *a4 = 24;
  return result;
}

uint64_t serializeParameters(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  LODWORD(v6) = a2;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "serializeParameters");
  }

  v8 = 70;
  v9 = 4294967293;
  if (a3 && a4)
  {
    v10 = *a4;
    *(a3 + v10) = v6;
    v11 = v10 + 4;
    if (v6)
    {
      v6 = v6;
      while (1)
      {
        *__src = *a1;
        __n = *(a1 + 16);
        v12 = checkParameter(__src);
        if (v12)
        {
          break;
        }

        v13 = (a3 + v11);
        v14 = __n;
        *v13 = __src[0];
        v13[1] = v14;
        v11 += 8;
        if (v14)
        {
          memcpy((a3 + v11), __src[1], v14);
          v11 += v14;
        }

        a1 += 24;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }

      v9 = v12;
      v8 = 70;
    }

    else
    {
LABEL_11:
      v9 = 0;
      *a4 = v11;
      v8 = 10;
    }
  }

  if (v8 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "serializeParameters", v9);
  }

  return v9;
}

uint64_t deserializeParameters(uint64_t a1, unint64_t a2, unint64_t *a3, void *size, _DWORD *a5)
{
  p_cache = ACCAnalyticsLogger.cache;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "deserializeParameters");
  }

  v11 = 70;
  v12 = 4294967293;
  if (!a1 || !a3 || !size || !a5)
  {
    goto LABEL_24;
  }

  v13 = *a3;
  if (a2 <= *a3)
  {
    goto LABEL_22;
  }

  if (a2 - *a3 < 4 || (v14 = *(a1 + v13), v14 > 0xA))
  {
    v11 = 70;
    v12 = 4294967293;
    goto LABEL_24;
  }

  v13 += 4;
  if (!v14)
  {
LABEL_22:
    v20 = 0;
    v21 = 0;
LABEL_23:
    v12 = 0;
    *size = v21;
    *a5 = v20;
    v11 = 10;
    *a3 = v13;
    goto LABEL_24;
  }

  v15 = acm_mem_alloc_typed(24 * v14, 0x1080040388D5D28uLL);
  acm_mem_alloc_info("array of ACMParameter", v15, 24 * v14, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 196, "deserializeParameters");
  if (!v15)
  {
    v11 = 70;
    v12 = 4294967292;
    goto LABEL_24;
  }

  v25 = a5;
  v23 = v15;
  v24 = v14;
  v16 = v14;
  while (1)
  {
    *(v15 + 1) = 0;
    if (a2 - v13 < 8 || (*v15 = *(a1 + v13), a2 - (v13 + 4) < 4) || (v17 = *(a1 + v13 + 4), v15[4] = v17, v13 += 8, a2 - v13 < v17))
    {
      v11 = 70;
      v12 = 4294967293;
      goto LABEL_30;
    }

    v18 = checkParameter(v15);
    if (v18)
    {
      v12 = v18;
      v11 = 70;
      goto LABEL_30;
    }

    if (v17)
    {
      break;
    }

LABEL_20:
    v15 += 6;
    if (!--v16)
    {
      p_cache = (ACCAnalyticsLogger + 16);
      a5 = v25;
      v21 = v23;
      v20 = v24;
      goto LABEL_23;
    }
  }

  v19 = acm_mem_alloc_data(v17);
  acm_mem_alloc_info("<data>", v19, v17, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 214, "deserializeParameters");
  *(v15 + 1) = v19;
  if (v19)
  {
    memcpy(v19, (a1 + v13), v15[4]);
    v13 += v15[4];
    goto LABEL_20;
  }

  v11 = 70;
  v12 = 4294967292;
LABEL_30:
  p_cache = (ACCAnalyticsLogger + 16);
LABEL_24:
  if (v11 >= *(p_cache + 2580))
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "deserializeParameters", v12);
  }

  return v12;
}

uint64_t checkParameter(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  switch(*a1)
  {
    case 0:
    case 0xC:
      if (a1[4])
      {
        return 4294967293;
      }

      break;
    case 1:
    case 4:
    case 5:
    case 0xA:
      if (a1[4] != 4)
      {
        return 4294967293;
      }

      break;
    case 2:
    case 6:
    case 7:
      if (a1[4] != 16)
      {
        return 4294967293;
      }

      break;
    case 3:
      if ((a1[4] - 1001) < 0xFFFFFC18)
      {
        return 4294967293;
      }

      break;
    case 8:
    case 9:
    case 0xD:
    case 0xE:
      if (a1[4] != 1)
      {
        return 4294967293;
      }

      break;
    case 0xB:
      if (a1[4] > 0x400u)
      {
        return 4294967293;
      }

      break;
    default:
      return 4294967293;
  }

  return 0;
}

uint64_t crypto_encryptedTextLength(int a1, uint64_t a2)
{
  v2 = a2 + 32;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    return a2 + 33;
  }

  else
  {
    return v2;
  }
}

unint64_t crypto_plainTextLength(int a1, unint64_t a2)
{
  v2 = a2 - 33;
  v3 = a2 - 32;
  if (a2 <= 0x20)
  {
    v2 = 0;
  }

  if (a2 <= 0x1F)
  {
    v3 = 0;
  }

  if (a1 != 1)
  {
    v3 = 0;
  }

  if (a1 == 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t checkCCError(int a1, const char *a2)
{
  if (a1)
  {
    if (gACMLoggingLevel <= 0x46u)
    {
      printf("%s: %s: CoreCrypto - %s() failed, ccErr: %d.\n", "ACM", "checkCCError", a2, a1);
    }

    return 4294967264;
  }

  else
  {
    if (gACMLoggingLevel <= 0x1Eu)
    {
      printf("%s: %s: CoreCrypto - %s() succeeded, ccErr: %d.\n", "ACM", "checkCCError", a2, 0);
    }

    return 0;
  }
}

void OUTLINED_FUNCTION_3_1(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - a2, a2);
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14)
{
  a13 = 0u;
  a14 = 0u;

  return crypto_generateKeyFromSharedInfo(v14, a4, a5, a2, a3, a8, &a13);
}

uint64_t generateRandom(uint64_t a1, uint64_t a2)
{
  v2 = 70;
  v3 = 4294967293;
  if (!a1 || !a2)
  {
    goto LABEL_14;
  }

  v6 = platform_rng_state;
  if (platform_rng_state)
  {
    v3 = 0;
  }

  else
  {
    platform_rng_state = ccrng();
    v3 = checkCCError(-1, "ccrng");
    if (v3)
    {
      v6 = 0;
      v7 = 70;
      goto LABEL_8;
    }

    v6 = platform_rng_state;
  }

  v7 = 10;
LABEL_8:
  if (v7 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "platform_rng", v3);
  }

  v2 = 70;
  if (!v3)
  {
    v8 = (*v6)(v6, a2, a1);
    checkCCError(v8, "platform_rng");
    OUTLINED_FUNCTION_11_1();
    if (v9)
    {
      v2 = 10;
    }

    else
    {
      v2 = 70;
    }
  }

LABEL_14:
  if (v2 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "generateRandom", v3);
  }

  return v3;
}

void crypto_encryptText_version1()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_9_1();
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_1();
  v5 = (off_58B50)();
  OUTLINED_FUNCTION_3_1(v5, v6, v7, v8, v9, v10, v11, v12, v19);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v13 = v1 + 32;
            if (v1 != -32)
            {
              if (v13 > *v0)
              {
                goto LABEL_13;
              }

              OUTLINED_FUNCTION_2_2();
              v14 = ccgcm_init();
              if (!checkCCError(v14, "ccgcm_init") && !generateRandom(v3, 16))
              {
                OUTLINED_FUNCTION_0_4();
                v15 = ccgcm_set_iv();
                if (!checkCCError(v15, "ccgcm_set_iv"))
                {
                  OUTLINED_FUNCTION_2_2();
                  v16 = ccgcm_update();
                  if (!checkCCError(v16, "ccgcm_update"))
                  {
                    OUTLINED_FUNCTION_0_4();
                    v17 = ccgcm_finalize();
                    if (!checkCCError(v17, "ccgcm_finalize"))
                    {
LABEL_13:
                      *v0 = v13;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v18)
  {
    OUTLINED_FUNCTION_12_1();
    printf("%s: %s: returning, err = %ld.\n", v20, v21, v22);
  }

  OUTLINED_FUNCTION_15_1();
}

void crypto_encryptText_version2()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_9_1();
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_1();
  v5 = (off_58B50)();
  OUTLINED_FUNCTION_3_1(v5, v6, v7, v8, v9, v10, v11, v12, v23);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v13 = v1 + 33;
            if (v1 != -33)
            {
              if (v13 > *v0)
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_2_2();
              v14 = ccgcm_init();
              if (!checkCCError(v14, "ccgcm_init"))
              {
                *v3 = 2;
                v15 = (v3 + 1);
                OUTLINED_FUNCTION_13_1();
                if (!v16 && !generateRandom(v15, 16))
                {
                  OUTLINED_FUNCTION_0_4();
                  v17 = ccgcm_set_iv();
                  if (!checkCCError(v17, "ccgcm_set_iv"))
                  {
                    v18 = v15 + 16;
                    OUTLINED_FUNCTION_13_1();
                    if (!v19)
                    {
                      OUTLINED_FUNCTION_2_2();
                      v20 = ccgcm_update();
                      if (!checkCCError(v20, "ccgcm_update") && !__CFADD__(v18, v1))
                      {
                        OUTLINED_FUNCTION_0_4();
                        v21 = ccgcm_finalize();
                        if (!checkCCError(v21, "ccgcm_finalize"))
                        {
LABEL_16:
                          *v0 = v13;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v22)
  {
    OUTLINED_FUNCTION_12_1();
    printf("%s: %s: returning, err = %ld.\n", v24, v25, v26);
  }

  OUTLINED_FUNCTION_15_1();
}

void crypto_decryptText_version1()
{
  OUTLINED_FUNCTION_14_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_1();
  v10 = off_58B50();
  OUTLINED_FUNCTION_3_1(v10, v11, v12, v13, v14, v15, v16, v17, v24);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            v18 = v5 >= 0x20;
            v19 = v5 - 32;
            if (v18)
            {
              if (*v1 < v19)
              {
                goto LABEL_13;
              }

              OUTLINED_FUNCTION_2_2();
              v20 = ccgcm_init();
              if (!checkCCError(v20, "ccgcm_init"))
              {
                OUTLINED_FUNCTION_0_4();
                v21 = ccgcm_set_iv();
                if (!checkCCError(v21, "ccgcm_set_iv"))
                {
                  OUTLINED_FUNCTION_2_2();
                  v22 = ccgcm_update();
                  if (!checkCCError(v22, "ccgcm_update"))
                  {
                    OUTLINED_FUNCTION_0_4();
                    ccgcm_finalize();
                    v23 = cc_cmp_safe();
                    if (!checkCCError(v23, "cc_cmp_safe"))
                    {
LABEL_13:
                      *v1 = v19;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v18)
  {
    OUTLINED_FUNCTION_12_1();
    printf("%s: %s: returning, err = %ld.\n", v25, 0, 0);
  }

  OUTLINED_FUNCTION_15_1();
}

void crypto_decryptText_version2()
{
  OUTLINED_FUNCTION_14_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_1();
  v10 = off_58B50();
  OUTLINED_FUNCTION_3_1(v10, v11, v12, v13, v14, v15, v16, v17, v26);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            if (v5 >= 0x22)
            {
              v18 = v5 - 33;
              if (*v1 < v18)
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_13_1();
              if (!v19 && *v7 == 2)
              {
                OUTLINED_FUNCTION_2_2();
                v20 = ccgcm_init();
                if (!checkCCError(v20, "ccgcm_init"))
                {
                  OUTLINED_FUNCTION_0_4();
                  v21 = ccgcm_set_iv();
                  if (!checkCCError(v21, "ccgcm_set_iv"))
                  {
                    OUTLINED_FUNCTION_13_1();
                    if (!v22)
                    {
                      OUTLINED_FUNCTION_2_2();
                      v23 = ccgcm_update();
                      if (!checkCCError(v23, "ccgcm_update") && !__CFADD__(v7 + 17, v18))
                      {
                        OUTLINED_FUNCTION_0_4();
                        ccgcm_finalize();
                        v24 = cc_cmp_safe();
                        if (!checkCCError(v24, "cc_cmp_safe"))
                        {
LABEL_16:
                          *v1 = v18;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_0();
  if (v25)
  {
    OUTLINED_FUNCTION_12_1();
    printf("%s: %s: returning, err = %ld.\n", v27, 0, 0);
  }

  OUTLINED_FUNCTION_15_1();
}

uint64_t LibCall_ACMKernelControl_Block()
{
  v0 = off_58B58();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl_Block");
  }

  bzero(v17, 0x2000uLL);
  v16 = 0x2000;
  v12 = LibCall_ACMKernelControl(v11, v10, v8, v6, v4, v17, &v16);
  if (v2)
  {
    if (v16)
    {
      v13 = v17;
    }

    else
    {
      v13 = 0;
    }

    (*(v2 + 16))(v2, v13);
  }

  if (v12)
  {
    v14 = 70;
  }

  else
  {
    v14 = 10;
  }

  if (v14 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl_Block", v12);
  }

  return v12;
}

uint64_t LibCall_ACMSEPControl_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMSEPControl_Block");
  }

  bzero(v24, 0x400uLL);
  LibCall_ACMSEPControl(a1, a2, a3, a4, a5, a6, a7, v24, &v23, v21, v22, 1024, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8]);
  v17 = v16;
  if (a8)
  {
    if (v23)
    {
      v18 = v24;
    }

    else
    {
      v18 = 0;
    }

    (*(a8 + 16))(a8, v18);
  }

  if (v17)
  {
    v19 = 70;
  }

  else
  {
    v19 = 10;
  }

  if (v19 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSEPControl_Block", v17);
  }

  return v17;
}