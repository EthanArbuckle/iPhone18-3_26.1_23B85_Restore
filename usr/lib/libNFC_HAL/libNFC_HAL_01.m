uint64_t NFHardwareSerialGetDefaultInterfaceType()
{
  v28 = *MEMORY[0x29EDCA608];
  properties = 0;
  LODWORD(v0) = sub_297F62950("AppleStockholmControl", "nfc,primary,gpio");
  if (v0)
  {
LABEL_13:
    IOObjectRelease(v0);
    v7 = sub_297F62950("AppleStockholmSPMI", "nfc,primary,spmi");
    v8 = v7;
    if (v7)
    {
      v9 = IORegistryEntryCreateCFProperties(v7, &properties, *MEMORY[0x29EDB8ED8], 0);
      if (v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = properties == 0;
      }

      if (v10)
      {
        v11 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(6, "%s:%i Could not get valid dictionary from from IO service object, err: 0x%x.", "NFHardwareSerialGetDefaultInterfaceType", 471, v9);
        }

        dispatch_get_specific(*v11);
        v13 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v23 = "NFHardwareSerialGetDefaultInterfaceType";
          v24 = 1024;
          v25 = 471;
          v26 = 1024;
          LODWORD(v27) = v9;
          _os_log_impl(&dword_297F52000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Could not get valid dictionary from from IO service object, err: 0x%x.", buf, 0x18u);
        }

        v0 = 2;
      }

      else
      {
        v17 = CFDictionaryContainsKey(properties, @"stockholm-spmi-data-socket");
        v0 = 2;
        if (v17)
        {
          Value = CFDictionaryGetValue(properties, @"stockholm-spmi-data-socket");
          if (CFBooleanGetValue(Value))
          {
            v0 = 3;
          }

          else
          {
            v0 = 2;
          }
        }
      }

      if (properties)
      {
        CFRelease(properties);
        properties = 0;
      }
    }

    else
    {
      v14 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(6, "%s:%i Could not find service: %s", "NFHardwareSerialGetDefaultInterfaceType", 463, "AppleStockholmSPMI");
      }

      dispatch_get_specific(*v14);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        v23 = "NFHardwareSerialGetDefaultInterfaceType";
        v24 = 1024;
        v25 = 463;
        v26 = 2080;
        v27 = "AppleStockholmSPMI";
        _os_log_impl(&dword_297F52000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Could not find service: %s", buf, 0x1Cu);
      }

      v0 = 1;
    }

    IOObjectRelease(v8);
    goto LABEL_36;
  }

  v1 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v2 = NFLogGetLogger();
  if (v2)
  {
    v2(6, "%s:%i Could not find service, trying slow path: %s", "NFHardwareSerialGetDefaultInterfaceType", 447, "AppleStockholmControl");
  }

  dispatch_get_specific(*v1);
  v3 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v23 = "NFHardwareSerialGetDefaultInterfaceType";
    v24 = 1024;
    v25 = 447;
    v26 = 2080;
    v27 = "AppleStockholmControl";
    _os_log_impl(&dword_297F52000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Could not find service, trying slow path: %s", buf, 0x1Cu);
  }

  sub_297F62E64();
  v0 = sub_297F63448("nfc,primary,gpio");
  if (v0)
  {
    v4 = sub_297F62950("AppleStockholmControl", "nfc,primary,gpio");
    if (v4)
    {
      goto LABEL_12;
    }

    v5 = 100;
    do
    {
      usleep(0x186A0u);
      v4 = sub_297F62950("AppleStockholmControl", "nfc,primary,gpio");
      if (v4)
      {
        break;
      }
    }

    while (v5-- > 1);
    if (v4)
    {
LABEL_12:
      IOObjectRelease(v4);
    }

    goto LABEL_13;
  }

LABEL_36:
  v19 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t sub_297F62950(const char *a1, const char *a2)
{
  v42 = *MEMORY[0x29EDCA608];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    v18 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to create property matching dictionary", "_NFHardwareFindMatchingService", 364);
    }

    dispatch_get_specific(*v18);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v37 = "_NFHardwareFindMatchingService";
      v38 = 1024;
      v39 = 364;
      _os_log_impl(&dword_297F52000, v20, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to create property matching dictionary", buf, 0x12u);
    }

    goto LABEL_23;
  }

  v5 = Mutable;
  v6 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (!v6)
  {
    v21 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i Failed to create CF property string", "_NFHardwareFindMatchingService", 369);
    }

    dispatch_get_specific(*v21);
    v23 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446466;
    v37 = "_NFHardwareFindMatchingService";
    v38 = 1024;
    v39 = 369;
    v24 = "%{public}s:%i Failed to create CF property string";
    goto LABEL_21;
  }

  v7 = v6;
  CFDictionarySetValue(v5, @"IONameMatched", v6);
  CFRelease(v7);
  v8 = IOServiceMatching(a1);
  if (!v8)
  {
    v25 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v26 = NFLogGetLogger();
    if (v26)
    {
      v26(3, "%s:%i Failed to create matching dictionary", "_NFHardwareFindMatchingService", 378);
    }

    dispatch_get_specific(*v25);
    v23 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136446466;
    v37 = "_NFHardwareFindMatchingService";
    v38 = 1024;
    v39 = 378;
    v24 = "%{public}s:%i Failed to create matching dictionary";
LABEL_21:
    _os_log_impl(&dword_297F52000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x12u);
LABEL_22:
    CFRelease(v5);
LABEL_23:
    v27 = 0;
    goto LABEL_24;
  }

  v9 = v8;
  CFDictionarySetValue(v8, @"IOPropertyMatch", v5);
  CFRelease(v5);
  existing = 0;
  MatchingServices = IOServiceGetMatchingServices(*MEMORY[0x29EDBB110], v9, &existing);
  if (MatchingServices)
  {
    v11 = MatchingServices;
    v12 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Failed to lookup service : 0x%x", "_NFHardwareFindMatchingService", 403, v11);
    }

    dispatch_get_specific(*v12);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 136446722;
    v37 = "_NFHardwareFindMatchingService";
    v38 = 1024;
    v39 = 403;
    v40 = 1024;
    v41 = v11;
    v15 = "%{public}s:%i Failed to lookup service : 0x%x";
    v16 = v14;
    v17 = 24;
    goto LABEL_37;
  }

  if (!existing || !IOIteratorIsValid(existing))
  {
    v33 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v34(3, "%s:%i Failed to get iterator for service", "_NFHardwareFindMatchingService", 395);
    }

    dispatch_get_specific(*v33);
    v32 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 136446466;
    v37 = "_NFHardwareFindMatchingService";
    v38 = 1024;
    v39 = 395;
    v15 = "%{public}s:%i Failed to get iterator for service";
    goto LABEL_36;
  }

  v27 = IOIteratorNext(existing);
  if (v27)
  {
    goto LABEL_39;
  }

  v30 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v31 = NFLogGetLogger();
  if (v31)
  {
    v31(3, "%s:%i Failed to get valid service", "_NFHardwareFindMatchingService", 399);
  }

  dispatch_get_specific(*v30);
  v32 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v37 = "_NFHardwareFindMatchingService";
    v38 = 1024;
    v39 = 399;
    v15 = "%{public}s:%i Failed to get valid service";
LABEL_36:
    v16 = v32;
    v17 = 18;
LABEL_37:
    _os_log_impl(&dword_297F52000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
  }

LABEL_38:
  v27 = 0;
LABEL_39:
  if (existing)
  {
    IOObjectRelease(existing);
  }

LABEL_24:
  v28 = *MEMORY[0x29EDCA608];
  return v27;
}

void sub_297F62E64()
{
  v35 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ----------------------- IOService plane --------------------------", "_NFHardwareDumpIOKit", 322);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v28 = "_NFHardwareDumpIOKit";
    v29 = 1024;
    v30 = 322;
    _os_log_impl(&dword_297F52000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ----------------------- IOService plane --------------------------", buf, 0x12u);
  }

  v3 = *MEMORY[0x29EDBB110];
  v4 = IOServiceNameMatching("stockholm");
  MatchingService = IOServiceGetMatchingService(v3, v4);
  dispatch_get_specific(*v0);
  v6 = NFLogGetLogger();
  if (v6)
  {
    v6(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 324, "stockholm", MatchingService);
  }

  dispatch_get_specific(*v0);
  v7 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v28 = "_NFHardwareDumpIOKit";
    v29 = 1024;
    v30 = 324;
    v31 = 2080;
    v32 = "stockholm";
    v33 = 1024;
    v34 = MatchingService;
    _os_log_impl(&dword_297F52000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(MatchingService);
  v8 = IOServiceNameMatching("stockholm-spmi");
  v9 = IOServiceGetMatchingService(v3, v8);
  dispatch_get_specific(*v0);
  v10 = NFLogGetLogger();
  if (v10)
  {
    v10(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 328, "stockholm-spmi", v9);
  }

  dispatch_get_specific(*v0);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v28 = "_NFHardwareDumpIOKit";
    v29 = 1024;
    v30 = 328;
    v31 = 2080;
    v32 = "stockholm-spmi";
    v33 = 1024;
    v34 = v9;
    _os_log_impl(&dword_297F52000, v11, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(v9);
  v12 = IOServiceNameMatching("AppleStockholmSPMI");
  v13 = IOServiceGetMatchingService(v3, v12);
  dispatch_get_specific(*v0);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v14(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 332, "AppleStockholmSPMI", v13);
  }

  dispatch_get_specific(*v0);
  v15 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v28 = "_NFHardwareDumpIOKit";
    v29 = 1024;
    v30 = 332;
    v31 = 2080;
    v32 = "AppleStockholmSPMI";
    v33 = 1024;
    v34 = v13;
    _os_log_impl(&dword_297F52000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(v13);
  v16 = IOServiceNameMatching("AppleStockholmControl");
  v17 = IOServiceGetMatchingService(v3, v16);
  dispatch_get_specific(*v0);
  v18 = NFLogGetLogger();
  if (v18)
  {
    v18(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 336, "AppleStockholmControl", v17);
  }

  dispatch_get_specific(*v0);
  v19 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v28 = "_NFHardwareDumpIOKit";
    v29 = 1024;
    v30 = 336;
    v31 = 2080;
    v32 = "AppleStockholmControl";
    v33 = 1024;
    v34 = v17;
    _os_log_impl(&dword_297F52000, v19, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(v17);
  v20 = IOServiceNameMatching("AppleStockholmControlUserClient");
  v21 = IOServiceGetMatchingService(v3, v20);
  dispatch_get_specific(*v0);
  v22 = NFLogGetLogger();
  if (v22)
  {
    v22(3, "%s:%i Matched name %s, returned 0x%04x", "_NFHardwareDumpIOKit", 340, "AppleStockholmControlUserClient", v21);
  }

  dispatch_get_specific(*v0);
  v23 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v28 = "_NFHardwareDumpIOKit";
    v29 = 1024;
    v30 = 340;
    v31 = 2080;
    v32 = "AppleStockholmControlUserClient";
    v33 = 1024;
    v34 = v21;
    _os_log_impl(&dword_297F52000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i Matched name %s, returned 0x%04x", buf, 0x22u);
  }

  IOObjectRelease(v21);
  dispatch_get_specific(*v0);
  v24 = NFLogGetLogger();
  if (v24)
  {
    v24(6, "%s:%i ----------------------- IOService plane --------------------------", "_NFHardwareDumpIOKit", 344);
  }

  dispatch_get_specific(*v0);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v28 = "_NFHardwareDumpIOKit";
    v29 = 1024;
    v30 = 344;
    _os_log_impl(&dword_297F52000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ----------------------- IOService plane --------------------------", buf, 0x12u);
  }

  sub_297F67B20("stockholm");
  sub_297F67B20("stockholm-spmi");
  sub_297F67B20("AppleStockholmSPMI");
  sub_297F67B20("AppleStockholmControl");
  sub_297F67B20("AppleStockholmControlUserClient");
  sub_297F67B20("hammerfest");
  sub_297F67B20("AppleHammerfestSPMI");
  sub_297F67B20("AppleHammerfestControl");
  v26 = *MEMORY[0x29EDCA608];
}

uint64_t sub_297F63448(const char *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  object = 0;
  RootEntry = IORegistryGetRootEntry(*MEMORY[0x29EDBB110]);
  if (MEMORY[0x29C27C2E0](RootEntry, "IOService", 1, &object))
  {
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to create iterator", "_NFHardwareLookInTree", 308);
    }

    dispatch_get_specific(*v3);
    v5 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v11 = "_NFHardwareLookInTree";
      v12 = 1024;
      v13 = 308;
      _os_log_impl(&dword_297F52000, v5, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to create iterator", buf, 0x12u);
    }

    v6 = 0;
  }

  else
  {
    v6 = sub_297F6835C(object, a1);
    IOObjectRelease(object);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

BOOL NFHardwareSerialIsHammerfestAlive()
{
  v23 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NFHardwareSerialIsHammerfestAlive", 501);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v18 = "NFHardwareSerialIsHammerfestAlive";
    v19 = 1024;
    v20 = 501;
    _os_log_impl(&dword_297F52000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  v3 = sub_297F62950("AppleStockholmSPMI", "nfc,secondary,spmi");
  v4 = v3;
  if (v3)
  {
    properties = 0;
    v5 = IORegistryEntryCreateCFProperties(v3, &properties, *MEMORY[0x29EDB8ED8], 0);
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = properties == 0;
    }

    if (v6)
    {
      dispatch_get_specific(*v0);
      v7 = NFLogGetLogger();
      if (v7)
      {
        v7(3, "%s:%i Could not get valid dictionary from from IO service object, err: 0x%x.", "NFHardwareSerialIsHammerfestAlive", 516, v5);
      }

      dispatch_get_specific(*v0);
      v8 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v18 = "NFHardwareSerialIsHammerfestAlive";
        v19 = 1024;
        v20 = 516;
        v21 = 1024;
        LODWORD(v22) = v5;
        _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_ERROR, "%{public}s:%i Could not get valid dictionary from from IO service object, err: 0x%x.", buf, 0x18u);
      }
    }

    else if (CFDictionaryContainsKey(properties, @"hammerfest-data-available-event"))
    {
      Value = CFDictionaryGetValue(properties, @"hammerfest-data-available-event");
      v11 = CFBooleanGetValue(Value) != 0;
      goto LABEL_22;
    }

    v11 = 0;
LABEL_22:
    if (properties)
    {
      CFRelease(properties);
    }

    goto LABEL_24;
  }

  dispatch_get_specific(*v0);
  v9 = NFLogGetLogger();
  if (v9)
  {
    v9(6, "%s:%i Could not find service: %s", "NFHardwareSerialIsHammerfestAlive", 508, "AppleHammerfestSPMI");
  }

  dispatch_get_specific(*v0);
  v10 = NFSharedLogGetLogger();
  v11 = 0;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v18 = "NFHardwareSerialIsHammerfestAlive";
    v19 = 1024;
    v20 = 508;
    v21 = 2080;
    v22 = "AppleHammerfestSPMI";
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Could not find service: %s", buf, 0x1Cu);
    v11 = 0;
  }

LABEL_24:
  IOObjectRelease(v4);
  v14 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t NFHardwareSerialIsSupported(const char *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = "nfc,primary,gpio";
  if (a1 && strcasestr(a1, "hammerfest"))
  {
    v1 = "nfc,secondary,gpio";
  }

  LODWORD(result) = sub_297F62950("AppleStockholmControl", v1);
  if (result)
  {
    goto LABEL_10;
  }

  v3 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Could not find service with: %s, retrying slow path", "NFHardwareSerialIsSupported", 544, v1);
  }

  dispatch_get_specific(*v3);
  v5 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v8 = "NFHardwareSerialIsSupported";
    v9 = 1024;
    v10 = 544;
    v11 = 2080;
    v12 = v1;
    _os_log_impl(&dword_297F52000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Could not find service with: %s, retrying slow path", buf, 0x1Cu);
  }

  sub_297F62E64();
  result = sub_297F63448(v1);
  if (result)
  {
LABEL_10:
    IOObjectRelease(result);
    result = 1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NFHardwareSerialReadBlockAbort(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  sub_297F54914(*(*(a1 + 8) + 88), 4, 0, 0);
  v2 = *(a1 + 8);
  if (!*(v2 + 120))
  {
    dispatch_suspend(*(v2 + 112));
    ++*(*(a1 + 8) + 120);
    v3 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      mach_continuous_time();
      v6 = *(*(a1 + 8) + 128);
      ElapsedTimeInMillisecondsFromMachTime = GetElapsedTimeInMillisecondsFromMachTime();
      v5(6, "%s:%i Read aborted while in progress since %llu.", "NFHardwareSerialReadBlockAbort", 610, ElapsedTimeInMillisecondsFromMachTime);
    }

    dispatch_get_specific(*v3);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      mach_continuous_time();
      v9 = *(*(a1 + 8) + 128);
      *buf = 136446722;
      v13 = "NFHardwareSerialReadBlockAbort";
      v14 = 1024;
      v15 = 610;
      v16 = 2048;
      v17 = GetElapsedTimeInMillisecondsFromMachTime();
      _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Read aborted while in progress since %llu.", buf, 0x1Cu);
    }

    *(*(a1 + 8) + 128) = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t NFHardwareSerialWriteBlockAbort(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  sub_297F54914(*(*(a1 + 8) + 88), 6, 0, 0);
  v2 = *(a1 + 8);
  if (!*(v2 + 144))
  {
    dispatch_suspend(*(v2 + 136));
    v3 = *(a1 + 8);
    ++*(v3 + 144);
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
    *(v3 + 168) = 0;
    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i Write aborted while in progress.", "NFHardwareSerialWriteBlockAbort", 628);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v10 = "NFHardwareSerialWriteBlockAbort";
      v11 = 1024;
      v12 = 628;
      _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Write aborted while in progress.", buf, 0x12u);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t NFHardwareSerialFlush(int *a1)
{
  v39 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 1);
  if (*(v2 + 97) == 1)
  {
    sub_297F64074(a1, 1);
    goto LABEL_5;
  }

  if (*(v2 + 120))
  {
    dispatch_source_set_event_handler(*(v2 + 112), &unk_2A1E95D48);
    dispatch_resume(*(v2 + 112));
    dispatch_source_cancel(*(v2 + 112));
    dispatch_release(*(v2 + 112));
    *(v2 + 112) = 0;
    while (1)
    {
LABEL_5:
      while (1)
      {
        v3 = read(*a1, &v30, 1uLL);
        if (v3 < 0)
        {
          break;
        }

        if (!v3)
        {
          v17 = MEMORY[0x29EDC9730];
          dispatch_get_specific(*MEMORY[0x29EDC9730]);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            Logger(3, "%s:%i Unexpected result", "NFHardwareSerialFlush", 825);
          }

          dispatch_get_specific(*v17);
          v19 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            v32 = "NFHardwareSerialFlush";
            v33 = 1024;
            v34 = 825;
            v14 = "%{public}s:%i Unexpected result";
            v15 = v19;
            v16 = 18;
LABEL_18:
            _os_log_impl(&dword_297F52000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
          }

          goto LABEL_19;
        }
      }

      if (*__error() == 35)
      {
        break;
      }

      if (*__error() != 4)
      {
        v4 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v5 = NFLogGetLogger();
        if (v5)
        {
          v6 = v5;
          v7 = __error();
          v8 = strerror(*v7);
          v9 = __error();
          v6(3, "%s:%i %s errno=%d ", "NFHardwareSerialFlush", 819, v8, *v9);
        }

        dispatch_get_specific(*v4);
        v10 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = __error();
          v12 = strerror(*v11);
          v13 = *__error();
          *buf = 136446978;
          v32 = "NFHardwareSerialFlush";
          v33 = 1024;
          v34 = 819;
          v35 = 2080;
          v36 = v12;
          v37 = 1024;
          v38 = v13;
          v14 = "%{public}s:%i %s errno=%d ";
          v15 = v10;
          v16 = 34;
          goto LABEL_18;
        }

LABEL_19:
        v20 = 0;
        goto LABEL_21;
      }
    }

    v20 = 1;
LABEL_21:
    if (*(v2 + 97) == 1)
    {
      sub_297F64074(a1, 0);
    }

    else if (!*(v2 + 112))
    {
      *(v2 + 112) = dispatch_source_create(MEMORY[0x29EDCA5B8], *a1, 0, *(v2 + 104));
      dispatch_set_qos_class_fallback();
      dispatch_source_set_event_handler(*(v2 + 112), &unk_2A1E95D68);
      dispatch_source_set_cancel_handler(*(v2 + 112), &unk_2A1E95D88);
      dispatch_activate(*(v2 + 112));
      dispatch_suspend(*(v2 + 112));
      *(v2 + 120) = 1;
      *(*(a1 + 1) + 128) = 0;
    }

    sub_297F54914(*(v2 + 88), 9, 0, 0);
  }

  else
  {
    v23 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v25 = v24;
      mach_continuous_time();
      v26 = *(*(a1 + 1) + 128);
      ElapsedTimeInMillisecondsFromMachTime = GetElapsedTimeInMillisecondsFromMachTime();
      v25(3, "%s:%i Error : read in progress since %llu", "NFHardwareSerialFlush", 789, ElapsedTimeInMillisecondsFromMachTime);
    }

    dispatch_get_specific(*v23);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      mach_continuous_time();
      v29 = *(*(a1 + 1) + 128);
      *buf = 136446722;
      v32 = "NFHardwareSerialFlush";
      v33 = 1024;
      v34 = 789;
      v35 = 2048;
      v36 = GetElapsedTimeInMillisecondsFromMachTime();
      _os_log_impl(&dword_297F52000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i Error : read in progress since %llu", buf, 0x1Cu);
    }

    v20 = 0;
  }

  v21 = *MEMORY[0x29EDCA608];
  return v20;
}

BOOL sub_297F64074(int *a1, int a2)
{
  v44 = *MEMORY[0x29EDCA608];
  v4 = fcntl(*a1, 3, 0);
  if (v4 != -1)
  {
    if (a2)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    if (fcntl(*a1, 4, v4 & 0xFFFFFFFB | v5))
    {
      v6 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        v9 = __error();
        v10 = strerror(*v9);
        v11 = __error();
        v8(3, "%s:%i %s errno=%d Failed to set flags", "_NFHardwareSerialSetNonBlock", 115, v10, *v11);
      }

      dispatch_get_specific(*v6);
      v12 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v14 = __error();
        v15 = strerror(*v14);
        v16 = *__error();
        *buf = 136446978;
        v37 = "_NFHardwareSerialSetNonBlock";
        v38 = 1024;
        v39 = 115;
        v40 = 2080;
        v41 = v15;
        v42 = 1024;
        v43 = v16;
        v17 = "%{public}s:%i %s errno=%d Failed to set flags";
LABEL_14:
        _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, v17, buf, 0x22u);
        result = 0;
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    v27 = fcntl(*a1, 3, 0);
    v28 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v29 = NFLogGetLogger();
    if ((v27 & 4) != 0)
    {
      if (v29)
      {
        v29(6, "%s:%i Socket is non-blocking", "_NFHardwareSerialSetNonBlock", 120);
      }

      dispatch_get_specific(*v28);
      v34 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 136446466;
      v37 = "_NFHardwareSerialSetNonBlock";
      v38 = 1024;
      v39 = 120;
      v31 = "%{public}s:%i Socket is non-blocking";
      v32 = v34;
      v33 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (v29)
      {
        v29(3, "%s:%i Socket is blocking !!", "_NFHardwareSerialSetNonBlock", 122);
      }

      dispatch_get_specific(*v28);
      v30 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 136446466;
      v37 = "_NFHardwareSerialSetNonBlock";
      v38 = 1024;
      v39 = 122;
      v31 = "%{public}s:%i Socket is blocking !!";
      v32 = v30;
      v33 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_297F52000, v32, v33, v31, buf, 0x12u);
LABEL_25:
    result = 1;
    goto LABEL_26;
  }

  v18 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v20 = v19;
    v21 = __error();
    v22 = strerror(*v21);
    v23 = __error();
    v20(3, "%s:%i %s errno=%d Failed to get flags", "_NFHardwareSerialSetNonBlock", 109, v22, *v23);
  }

  dispatch_get_specific(*v18);
  v12 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v24 = __error();
    v25 = strerror(*v24);
    v26 = *__error();
    *buf = 136446978;
    v37 = "_NFHardwareSerialSetNonBlock";
    v38 = 1024;
    v39 = 109;
    v40 = 2080;
    v41 = v25;
    v42 = 1024;
    v43 = v26;
    v17 = "%{public}s:%i %s errno=%d Failed to get flags";
    goto LABEL_14;
  }

LABEL_26:
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297F64428()
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Error ! Unexpected invocation of read handler", "NFHardwareSerialFlush_block_invoke", 838);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v5 = "NFHardwareSerialFlush_block_invoke";
    v6 = 1024;
    v7 = 838;
    _os_log_impl(&dword_297F52000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Error ! Unexpected invocation of read handler", buf, 0x12u);
  }

  v3 = *MEMORY[0x29EDCA608];
}

BOOL NFHardwareSerialReset(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if ((**(a1 + 8) & 1) == 0)
    {
      v2 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(6, "%s:%i ", "NFHardwareSerialReset", 863);
      }

      dispatch_get_specific(*v2);
      v4 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v25 = "NFHardwareSerialReset";
        v26 = 1024;
        v27 = 863;
        _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
      }

      v5 = 0;
      while (1)
      {
        v23 = 3;
        if (setsockopt(*a1, 2, -2147191792, &v23, 4u))
        {
          break;
        }

        if (++v5 == 4)
        {
          goto LABEL_10;
        }
      }

      dispatch_get_specific(*v2);
      v13 = NFLogGetLogger();
      if (v13)
      {
        v14 = v13;
        v15 = __error();
        v16 = strerror(*v15);
        v17 = __error();
        v14(3, "%s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL:TIOCFLUSH - attempt %d - ", "NFHardwareSerialReset", 871, v16, *v17, v5);
      }

      dispatch_get_specific(*v2);
      v18 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v19 = __error();
      v20 = strerror(*v19);
      v21 = *__error();
      *buf = 136447234;
      v25 = "NFHardwareSerialReset";
      v26 = 1024;
      v27 = 871;
      v28 = 2080;
      v29 = v20;
      v30 = 1024;
      v31 = v21;
      v32 = 1024;
      v33 = v5;
      v10 = "%{public}s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL:TIOCFLUSH - attempt %d - ";
      v11 = v18;
      v12 = 40;
LABEL_19:
      _os_log_impl(&dword_297F52000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
LABEL_20:
      result = 0;
      goto LABEL_21;
    }

LABEL_10:
    result = 1;
  }

  else
  {
    v7 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v8 = NFLogGetLogger();
    if (v8)
    {
      v8(3, "%s:%i Serial device not opened!", "NFHardwareSerialReset", 855);
    }

    dispatch_get_specific(*v7);
    v9 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v25 = "NFHardwareSerialReset";
      v26 = 1024;
      v27 = 855;
      v10 = "%{public}s:%i Serial device not opened!";
      v11 = v9;
      v12 = 18;
      goto LABEL_19;
    }
  }

LABEL_21:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NFHardwareSerialSetBaudRate(uint64_t a1, speed_t a2)
{
  v63 = *MEMORY[0x29EDCA608];
  v52 = a2;
  if (a1)
  {
    if (**(a1 + 8))
    {
      goto LABEL_19;
    }

    v4 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(6, "%s:%i baudRate=%lu", "NFHardwareSerialSetBaudRate", 890, a2);
    }

    dispatch_get_specific(*v4);
    v6 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v54 = "NFHardwareSerialSetBaudRate";
      v55 = 1024;
      v56 = 890;
      v57 = 2048;
      v58 = a2;
      _os_log_impl(&dword_297F52000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s:%i baudRate=%lu", buf, 0x1Cu);
    }

    v7 = *(a1 + 8);
    if (*(v7 + 1) == 1)
    {
      v51 = 72;
      if (getsockopt(*a1, 2, 1078490131, (v7 + 8), &v51))
      {
        dispatch_get_specific(*v4);
        v8 = NFLogGetLogger();
        if (v8)
        {
          v9 = v8;
          v10 = __error();
          v11 = strerror(*v10);
          v12 = __error();
          v9(3, "%s:%i %s errno=%d getsockopt: SYSPROTO_CONTROL", "NFHardwareSerialSetBaudRate", 897, v11, *v12);
        }

        dispatch_get_specific(*v4);
        v13 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        v14 = __error();
        v15 = strerror(*v14);
        v16 = *__error();
        *buf = 136446978;
        v54 = "NFHardwareSerialSetBaudRate";
        v55 = 1024;
        v56 = 897;
        v57 = 2080;
        v58 = v15;
        v59 = 1024;
        v60 = v16;
        v17 = "%{public}s:%i %s errno=%d getsockopt: SYSPROTO_CONTROL";
        goto LABEL_13;
      }

      if (cfsetspeed((*(a1 + 8) + 8), a2))
      {
        dispatch_get_specific(*v4);
        v24 = NFLogGetLogger();
        if (v24)
        {
          v25 = v24;
          v26 = __error();
          v27 = strerror(*v26);
          v28 = __error();
          v25(3, "%s:%i %s errno=%d baudRate=%lu", "NFHardwareSerialSetBaudRate", 902, v27, *v28, a2);
        }

        dispatch_get_specific(*v4);
        v29 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        v30 = __error();
        v31 = strerror(*v30);
        v32 = *__error();
        *buf = 136447234;
        v54 = "NFHardwareSerialSetBaudRate";
        v55 = 1024;
        v56 = 902;
        v57 = 2080;
        v58 = v31;
        v59 = 1024;
        v60 = v32;
        v61 = 2048;
        v62 = a2;
        v17 = "%{public}s:%i %s errno=%d baudRate=%lu";
        v18 = v29;
        goto LABEL_29;
      }

      if (setsockopt(*a1, 2, -2142735340, (v7 + 8), 0x48u))
      {
        dispatch_get_specific(*v4);
        v43 = NFLogGetLogger();
        if (v43)
        {
          v44 = v43;
          v45 = __error();
          v46 = strerror(*v45);
          v47 = __error();
          v44(3, "%s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL", "NFHardwareSerialSetBaudRate", 907, v46, *v47);
        }

        dispatch_get_specific(*v4);
        v13 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        v48 = __error();
        v49 = strerror(*v48);
        v50 = *__error();
        *buf = 136446978;
        v54 = "NFHardwareSerialSetBaudRate";
        v55 = 1024;
        v56 = 907;
        v57 = 2080;
        v58 = v49;
        v59 = 1024;
        v60 = v50;
        v17 = "%{public}s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL";
LABEL_13:
        v18 = v13;
        v19 = 34;
LABEL_30:
        _os_log_impl(&dword_297F52000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
LABEL_31:
        result = 0;
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if ((ioctl(*a1, 0x80085402uLL, &v52) & 0x80000000) == 0)
    {
LABEL_19:
      result = 1;
      goto LABEL_32;
    }

    dispatch_get_specific(*v4);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v34 = v33;
      v35 = __error();
      v36 = strerror(*v35);
      v37 = __error();
      v34(3, "%s:%i %s errno=%d baudRate=%lu", "NFHardwareSerialSetBaudRate", 914, v36, *v37, v52);
    }

    dispatch_get_specific(*v4);
    v38 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v39 = __error();
      v40 = strerror(*v39);
      v41 = *__error();
      *buf = 136447234;
      v54 = "NFHardwareSerialSetBaudRate";
      v55 = 1024;
      v56 = 914;
      v57 = 2080;
      v58 = v40;
      v59 = 1024;
      v60 = v41;
      v61 = 2048;
      v62 = v52;
      v17 = "%{public}s:%i %s errno=%d baudRate=%lu";
      v18 = v38;
LABEL_29:
      v19 = 44;
      goto LABEL_30;
    }
  }

  else
  {
    v20 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v21 = NFLogGetLogger();
    if (v21)
    {
      v21(3, "%s:%i Serial device not opened!", "NFHardwareSerialSetBaudRate", 881);
    }

    dispatch_get_specific(*v20);
    v22 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v54 = "NFHardwareSerialSetBaudRate";
      v55 = 1024;
      v56 = 881;
      v17 = "%{public}s:%i Serial device not opened!";
      v18 = v22;
      v19 = 18;
      goto LABEL_30;
    }
  }

LABEL_32:
  v42 = *MEMORY[0x29EDCA608];
  return result;
}

void NFHardwareSerialEnableLog(uint64_t a1, char a2)
{
  v3 = *(*(a1 + 8) + 88);
  os_unfair_lock_lock((v3 + 92));
  *(v3 + 88) = a2 ^ 1;

  os_unfair_lock_unlock((v3 + 92));
}

int *NFHardwareSerialOpen(const char *a1, NSObject *a2, BOOL a3)
{
  v184 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v163 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i FAILED: %s", "NFHardwareSerialOpen", 1133, "devicePath != ((void*)0)");
    }

    dispatch_get_specific(*v163);
    v165 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
    {
      LODWORD(handler[0]) = 136446722;
      *(handler + 4) = "NFHardwareSerialOpen";
      WORD6(handler[0]) = 1024;
      *(handler + 14) = 1133;
      WORD1(handler[1]) = 2080;
      *(&handler[1] + 4) = "devicePath != ((void*)0)";
      _os_log_impl(&dword_297F52000, v165, OS_LOG_TYPE_ERROR, "%{public}s:%i FAILED: %s", handler, 0x1Cu);
    }

    abort();
  }

  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x10800407411B482uLL);
  if (!v6)
  {
    goto LABEL_65;
  }

  v7 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10B0040E9A660C4uLL);
  if (!v7)
  {
    goto LABEL_65;
  }

  v8 = v7;
  *(v6 + 1) = v7;
  v9 = strcasestr(a1, "hammerfest") == 0;
  v8[96] = v9;
  v10 = sub_297F68B54(v9);
  *(v8 + 11) = v10;
  v11 = 1;
  sub_297F54914(v10, 1, 0, 0);
  v8[97] = a3;
  if (strlen(a1) >= 5)
  {
    v11 = strncmp(a1, "/dev/", 5uLL) != 0;
  }

  v8[1] = v11;
  *v8 = strcasestr(a1, "spmi") != 0;
  if (v8[1])
  {
    v167 = 0;
    v168 = 0u;
    v183 = 0;
    v181 = 0u;
    v182 = 0u;
    v180 = 0u;
    memset(handler, 0, sizeof(handler));
    v12 = *(v6 + 1);
    v166 = 72;
    v13 = socket(32, 1, 2);
    *v6 = v13;
    if (v13 < 0)
    {
      v31 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v32 = NFLogGetLogger();
      if (v32)
      {
        v33 = v32;
        v34 = __error();
        v35 = strerror(*v34);
        v36 = __error();
        v33(3, "%s:%i %s errno=%d socket", "_NFHardwareSerialOpenSocket", 1007, v35, *v36);
      }

      dispatch_get_specific(*v31);
      v37 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = __error();
        v39 = strerror(*v38);
        v40 = *__error();
        *buf = 136446978;
        v170 = "_NFHardwareSerialOpenSocket";
        v171 = 1024;
        v172 = 1007;
        v173 = 2080;
        v174 = v39;
        v175 = 1024;
        v176 = v40;
        _os_log_impl(&dword_297F52000, v37, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d socket", buf, 0x22u);
      }

      *v6 = 0;
      goto LABEL_39;
    }

    v183 = 0;
    v181 = 0u;
    v182 = 0u;
    v180 = 0u;
    memset(handler, 0, sizeof(handler));
    __strlcpy_chk();
    if (ioctl(*v6, 0xC0644E03uLL, handler))
    {
      v14 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v16 = v15;
        v17 = __error();
        v18 = strerror(*v17);
        v19 = __error();
        v16(3, "%s:%i %s errno=%d ioctl: CTLIOCGINFO", "_NFHardwareSerialOpenSocket", 1016, v18, *v19);
      }

      dispatch_get_specific(*v14);
      v20 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      v21 = __error();
      v22 = strerror(*v21);
      v23 = *__error();
      *buf = 136446978;
      v170 = "_NFHardwareSerialOpenSocket";
      v171 = 1024;
      v172 = 1016;
      v173 = 2080;
      v174 = v22;
      v175 = 1024;
      v176 = v23;
      v24 = "%{public}s:%i %s errno=%d ioctl: CTLIOCGINFO";
      goto LABEL_37;
    }

    *&v167.sa_len = 139296;
    *&v167.sa_data[2] = handler[0];
    *&v167.sa_data[6] = 0;
    if (connect(*v6, &v167, 0x20u))
    {
      v62 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v63 = NFLogGetLogger();
      if (v63)
      {
        v64 = v63;
        v65 = __error();
        v66 = strerror(*v65);
        v67 = __error();
        v64(3, "%s:%i %s errno=%d connect", "_NFHardwareSerialOpenSocket", 1027, v66, *v67);
      }

      dispatch_get_specific(*v62);
      v20 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      v68 = __error();
      v69 = strerror(*v68);
      v70 = *__error();
      *buf = 136446978;
      v170 = "_NFHardwareSerialOpenSocket";
      v171 = 1024;
      v172 = 1027;
      v173 = 2080;
      v174 = v69;
      v175 = 1024;
      v176 = v70;
      v24 = "%{public}s:%i %s errno=%d connect";
      goto LABEL_37;
    }

    if (*(*(v6 + 1) + 97) == 1)
    {
      v86 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v87 = NFLogGetLogger();
      if (v87)
      {
        v87(6, "%s:%i Using blocking socket for relay", "_NFHardwareSerialOpenSocket", 1032);
      }

      dispatch_get_specific(*v86);
      v88 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v170 = "_NFHardwareSerialOpenSocket";
        v171 = 1024;
        v172 = 1032;
        _os_log_impl(&dword_297F52000, v88, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Using blocking socket for relay", buf, 0x12u);
      }
    }

    else if (!sub_297F64074(v6, 1))
    {
      v113 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v114 = NFLogGetLogger();
      if (v114)
      {
        v115 = v114;
        v116 = __error();
        v117 = strerror(*v116);
        v118 = __error();
        v115(3, "%s:%i %s errno=%d Failed to set non-blocking.", "_NFHardwareSerialOpenSocket", 1035, v117, *v118);
      }

      dispatch_get_specific(*v113);
      v20 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      v119 = __error();
      v120 = strerror(*v119);
      v121 = *__error();
      *buf = 136446978;
      v170 = "_NFHardwareSerialOpenSocket";
      v171 = 1024;
      v172 = 1035;
      v173 = 2080;
      v174 = v120;
      v175 = 1024;
      v176 = v121;
      v24 = "%{public}s:%i %s errno=%d Failed to set non-blocking.";
LABEL_37:
      v71 = v20;
      v72 = 34;
LABEL_38:
      _os_log_impl(&dword_297F52000, v71, OS_LOG_TYPE_ERROR, v24, buf, v72);
LABEL_39:
      v73 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v74 = NFLogGetLogger();
      if (v74)
      {
        v74(3, "%s:%i failed to open socket %s", "NFHardwareSerialOpen", 1163, a1);
      }

      dispatch_get_specific(*v73);
      v75 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_65;
      }

      LODWORD(handler[0]) = 136446722;
      *(handler + 4) = "NFHardwareSerialOpen";
      WORD6(handler[0]) = 1024;
      *(handler + 14) = 1163;
      WORD1(handler[1]) = 2080;
      *(&handler[1] + 4) = a1;
      v76 = "%{public}s:%i failed to open socket %s";
LABEL_64:
      _os_log_impl(&dword_297F52000, v75, OS_LOG_TYPE_ERROR, v76, handler, 0x1Cu);
LABEL_65:
      NFHardwareSerialClose(v6);
      v6 = 0;
      goto LABEL_66;
    }

    if ((**(v6 + 1) & 1) == 0)
    {
      if (getsockopt(*v6, 2, 1078490131, (v12 + 8), &v166))
      {
        v104 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v105 = NFLogGetLogger();
        if (v105)
        {
          v106 = v105;
          v107 = __error();
          v108 = strerror(*v107);
          v109 = __error();
          v106(3, "%s:%i %s errno=%d getsockopt: SYSPROTO_CONTROL", "_NFHardwareSerialOpenSocket", 1048, v108, *v109);
        }

        dispatch_get_specific(*v104);
        v20 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        v110 = __error();
        v111 = strerror(*v110);
        v112 = *__error();
        *buf = 136446978;
        v170 = "_NFHardwareSerialOpenSocket";
        v171 = 1024;
        v172 = 1048;
        v173 = 2080;
        v174 = v111;
        v175 = 1024;
        v176 = v112;
        v24 = "%{public}s:%i %s errno=%d getsockopt: SYSPROTO_CONTROL";
        goto LABEL_37;
      }

      *(v12 + 24) = 232192;
      *(v12 + 8) |= 4uLL;
      cfmakeraw((v12 + 8));
      if (cfsetspeed((*(v6 + 1) + 8), 0x1C200uLL))
      {
        v132 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v133 = NFLogGetLogger();
        if (v133)
        {
          v134 = v133;
          v135 = __error();
          v136 = strerror(*v135);
          v137 = __error();
          v134(3, "%s:%i %s errno=%d baudRate=%d", "_NFHardwareSerialOpenSocket", 1062, v136, *v137, 115200);
        }

        dispatch_get_specific(*v132);
        v138 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        v139 = __error();
        v140 = strerror(*v139);
        v141 = *__error();
        *buf = 136447234;
        v170 = "_NFHardwareSerialOpenSocket";
        v171 = 1024;
        v172 = 1062;
        v173 = 2080;
        v174 = v140;
        v175 = 1024;
        v176 = v141;
        v177 = 1024;
        v178 = 115200;
        v24 = "%{public}s:%i %s errno=%d baudRate=%d";
        v71 = v138;
        v72 = 40;
        goto LABEL_38;
      }

      if (setsockopt(*v6, 2, -2142735340, (v12 + 8), 0x48u))
      {
        v142 = MEMORY[0x29EDC9730];
        dispatch_get_specific(*MEMORY[0x29EDC9730]);
        v143 = NFLogGetLogger();
        if (v143)
        {
          v144 = v143;
          v145 = __error();
          v146 = strerror(*v145);
          v147 = __error();
          v144(3, "%s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL", "_NFHardwareSerialOpenSocket", 1067, v146, *v147);
        }

        dispatch_get_specific(*v142);
        v20 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        v148 = __error();
        v149 = strerror(*v148);
        v150 = *__error();
        *buf = 136446978;
        v170 = "_NFHardwareSerialOpenSocket";
        v171 = 1024;
        v172 = 1067;
        v173 = 2080;
        v174 = v149;
        v175 = 1024;
        v176 = v150;
        v24 = "%{public}s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL";
        goto LABEL_37;
      }
    }

    goto LABEL_15;
  }

  v25 = *(v6 + 1);
  v26 = open(a1, 131078);
  *v6 = v26;
  if (v26 < 0)
  {
    v41 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v42 = NFLogGetLogger();
    if (v42)
    {
      v43 = v42;
      v44 = __error();
      v45 = strerror(*v44);
      v46 = __error();
      v43(3, "%s:%i %s errno=%d open", "_NFHardwareSerialOpenDeviceNode", 941, v45, *v46);
    }

    dispatch_get_specific(*v41);
    v47 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = __error();
      v49 = strerror(*v48);
      v50 = *__error();
      LODWORD(handler[0]) = 136446978;
      *(handler + 4) = "_NFHardwareSerialOpenDeviceNode";
      WORD6(handler[0]) = 1024;
      *(handler + 14) = 941;
      WORD1(handler[1]) = 2080;
      *(&handler[1] + 4) = v49;
      WORD6(handler[1]) = 1024;
      *(&handler[1] + 14) = v50;
      _os_log_impl(&dword_297F52000, v47, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d open", handler, 0x22u);
    }

    *v6 = 0;
    goto LABEL_60;
  }

  if (**(v6 + 1))
  {
    goto LABEL_15;
  }

  if (ioctl(v26, 0x2000740DuLL))
  {
    v51 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v52 = NFLogGetLogger();
    if (v52)
    {
      v53 = v52;
      v54 = __error();
      v55 = strerror(*v54);
      v56 = __error();
      v53(3, "%s:%i %s errno=%d ioctl: TIOCEXCL", "_NFHardwareSerialOpenDeviceNode", 954, v55, *v56);
    }

    dispatch_get_specific(*v51);
    v57 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v58 = __error();
    v59 = strerror(*v58);
    v60 = *__error();
    LODWORD(handler[0]) = 136446978;
    *(handler + 4) = "_NFHardwareSerialOpenDeviceNode";
    WORD6(handler[0]) = 1024;
    *(handler + 14) = 954;
    WORD1(handler[1]) = 2080;
    *(&handler[1] + 4) = v59;
    WORD6(handler[1]) = 1024;
    *(&handler[1] + 14) = v60;
    v61 = "%{public}s:%i %s errno=%d ioctl: TIOCEXCL";
    goto LABEL_58;
  }

  if (tcgetattr(*v6, (v25 + 8)))
  {
    v77 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v78 = NFLogGetLogger();
    if (v78)
    {
      v79 = v78;
      v80 = __error();
      v81 = strerror(*v80);
      v82 = __error();
      v79(3, "%s:%i %s errno=%d tcgetattr", "_NFHardwareSerialOpenDeviceNode", 960, v81, *v82);
    }

    dispatch_get_specific(*v77);
    v57 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v83 = __error();
    v84 = strerror(*v83);
    v85 = *__error();
    LODWORD(handler[0]) = 136446978;
    *(handler + 4) = "_NFHardwareSerialOpenDeviceNode";
    WORD6(handler[0]) = 1024;
    *(handler + 14) = 960;
    WORD1(handler[1]) = 2080;
    *(&handler[1] + 4) = v84;
    WORD6(handler[1]) = 1024;
    *(&handler[1] + 14) = v85;
    v61 = "%{public}s:%i %s errno=%d tcgetattr";
    goto LABEL_58;
  }

  if (fcntl(*v6, 4, 0))
  {
    v89 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v90 = NFLogGetLogger();
    if (v90)
    {
      v91 = v90;
      v92 = __error();
      v93 = strerror(*v92);
      v94 = __error();
      v91(3, "%s:%i %s errno=%d fcntl: F_SETFL", "_NFHardwareSerialOpenDeviceNode", 966, v93, *v94);
    }

    dispatch_get_specific(*v89);
    v57 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v95 = __error();
    v96 = strerror(*v95);
    v97 = *__error();
    LODWORD(handler[0]) = 136446978;
    *(handler + 4) = "_NFHardwareSerialOpenDeviceNode";
    WORD6(handler[0]) = 1024;
    *(handler + 14) = 966;
    WORD1(handler[1]) = 2080;
    *(&handler[1] + 4) = v96;
    WORD6(handler[1]) = 1024;
    *(&handler[1] + 14) = v97;
    v61 = "%{public}s:%i %s errno=%d fcntl: F_SETFL";
LABEL_58:
    v98 = v57;
    v99 = 34;
LABEL_59:
    _os_log_impl(&dword_297F52000, v98, OS_LOG_TYPE_ERROR, v61, handler, v99);
    goto LABEL_60;
  }

  *(v25 + 8) |= 4uLL;
  *(v25 + 16) = xmmword_297F6C070;
  *(v25 + 32) = 0;
  *(v25 + 56) = 1;
  if (cfsetispeed((*(v6 + 1) + 8), 0x1C200uLL) || cfsetospeed((*(v6 + 1) + 8), 0x1C200uLL))
  {
    v122 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v123 = NFLogGetLogger();
    if (v123)
    {
      v124 = v123;
      v125 = __error();
      v126 = strerror(*v125);
      v127 = __error();
      v124(3, "%s:%i %s errno=%d baudRate=%d", "_NFHardwareSerialOpenDeviceNode", 979, v126, *v127, 115200);
    }

    dispatch_get_specific(*v122);
    v128 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v129 = __error();
    v130 = strerror(*v129);
    v131 = *__error();
    LODWORD(handler[0]) = 136447234;
    *(handler + 4) = "_NFHardwareSerialOpenDeviceNode";
    WORD6(handler[0]) = 1024;
    *(handler + 14) = 979;
    WORD1(handler[1]) = 2080;
    *(&handler[1] + 4) = v130;
    WORD6(handler[1]) = 1024;
    *(&handler[1] + 14) = v131;
    WORD1(handler[2]) = 1024;
    DWORD1(handler[2]) = 115200;
    v61 = "%{public}s:%i %s errno=%d baudRate=%d";
    goto LABEL_84;
  }

  if (tcsetattr(*v6, 0, (*(v6 + 1) + 8)))
  {
    v151 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v152 = NFLogGetLogger();
    if (v152)
    {
      v153 = v152;
      v154 = __error();
      v155 = strerror(*v154);
      v156 = __error();
      v153(3, "%s:%i %s errno=%d baudRate=%d", "_NFHardwareSerialOpenDeviceNode", 984, v155, *v156, 115200);
    }

    dispatch_get_specific(*v151);
    v128 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_60;
    }

    v157 = __error();
    v158 = strerror(*v157);
    v159 = *__error();
    LODWORD(handler[0]) = 136447234;
    *(handler + 4) = "_NFHardwareSerialOpenDeviceNode";
    WORD6(handler[0]) = 1024;
    *(handler + 14) = 984;
    WORD1(handler[1]) = 2080;
    *(&handler[1] + 4) = v158;
    WORD6(handler[1]) = 1024;
    *(&handler[1] + 14) = v159;
    WORD1(handler[2]) = 1024;
    DWORD1(handler[2]) = 115200;
    v61 = "%{public}s:%i %s errno=%d baudRate=%d";
LABEL_84:
    v98 = v128;
    v99 = 40;
    goto LABEL_59;
  }

  if (*(*(v6 + 1) + 97) == 1)
  {
    v160 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v161 = NFLogGetLogger();
    if (v161)
    {
      v161(6, "%s:%i Using blocking socket for relay", "_NFHardwareSerialOpenDeviceNode", 989);
    }

    dispatch_get_specific(*v160);
    v162 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(handler[0]) = 136446466;
      *(handler + 4) = "_NFHardwareSerialOpenDeviceNode";
      WORD6(handler[0]) = 1024;
      *(handler + 14) = 989;
      _os_log_impl(&dword_297F52000, v162, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Using blocking socket for relay", handler, 0x12u);
    }

    goto LABEL_15;
  }

  if (!sub_297F64074(v6, 1))
  {
LABEL_60:
    v100 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v101 = NFLogGetLogger();
    if (v101)
    {
      v101(3, "%s:%i failed to open device %s", "NFHardwareSerialOpen", 1169, a1);
    }

    dispatch_get_specific(*v100);
    v75 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_65;
    }

    LODWORD(handler[0]) = 136446722;
    *(handler + 4) = "NFHardwareSerialOpen";
    WORD6(handler[0]) = 1024;
    *(handler + 14) = 1169;
    WORD1(handler[1]) = 2080;
    *(&handler[1] + 4) = a1;
    v76 = "%{public}s:%i failed to open device %s";
    goto LABEL_64;
  }

LABEL_15:
  *(v8 + 13) = a2;
  dispatch_retain(a2);
  v27 = *(v6 + 1);
  if ((*(v27 + 97) & 1) == 0)
  {
    v28 = *v6;
    *(v27 + 112) = dispatch_source_create(MEMORY[0x29EDCA5B8], v28, 0, *(v27 + 104));
    dispatch_set_qos_class_fallback();
    dispatch_source_set_event_handler(*(v27 + 112), &unk_2A1E95DA8);
    dispatch_source_set_cancel_handler(*(v27 + 112), &unk_2A1E95DC8);
    dispatch_activate(*(v27 + 112));
    dispatch_suspend(*(v27 + 112));
    *(v27 + 120) = 1;
    *(*(v6 + 1) + 128) = 0;
    *(v27 + 152) = 0;
    *(v27 + 160) = 0;
    v29 = dispatch_source_create(MEMORY[0x29EDCA5E0], v28, 0, *(v27 + 104));
    *(v27 + 136) = v29;
    dispatch_source_set_event_handler(v29, &unk_2A1E95DE8);
    v30 = *(v27 + 136);
    *&handler[0] = MEMORY[0x29EDCA5F8];
    *(&handler[0] + 1) = 0x40000000;
    *&handler[1] = sub_297F68A5C;
    *(&handler[1] + 1) = &unk_29EE86C10;
    LODWORD(handler[2]) = v28;
    dispatch_source_set_cancel_handler(v30, handler);
    dispatch_activate(*(v27 + 136));
    dispatch_suspend(*(v27 + 136));
    *(v27 + 144) = 1;
  }

LABEL_66:
  v102 = *MEMORY[0x29EDCA608];
  return v6;
}

void NFHardwareSerialClose(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NFHardwareSerialClose", 1187);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "NFHardwareSerialClose";
    v12 = 1024;
    v13 = 1187;
    _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  if (a1)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      sub_297F54914(*(v5 + 88), 2, 0, 0);
      v6 = *(a1 + 8);
      if (!*(v6 + 136) && (*a1 & 0x80000000) == 0)
      {
        close(*a1);
        *a1 = -1;
        v6 = *(a1 + 8);
      }

      if ((*(v6 + 97) & 1) == 0)
      {
        if (*(v6 + 112))
        {
          dispatch_source_set_event_handler(*(v6 + 112), &unk_2A1E95E08);
          v7 = *(a1 + 8);
          if (*(v7 + 120))
          {
            dispatch_resume(*(v7 + 112));
            v7 = *(a1 + 8);
          }

          dispatch_source_cancel(*(v7 + 112));
          dispatch_release(*(*(a1 + 8) + 112));
          v6 = *(a1 + 8);
          *(v6 + 112) = 0;
        }

        if (*(v6 + 136))
        {
          dispatch_source_set_event_handler(*(v6 + 136), &unk_2A1E95E28);
          v8 = *(a1 + 8);
          if (*(v8 + 144))
          {
            dispatch_resume(*(v8 + 136));
            v8 = *(a1 + 8);
          }

          dispatch_source_cancel(*(v8 + 136));
          dispatch_release(*(*(a1 + 8) + 136));
          v6 = *(a1 + 8);
          *(v6 + 136) = 0;
        }
      }

      if (*(v6 + 104))
      {
        dispatch_release(*(v6 + 104));
        v6 = *(a1 + 8);
        *(v6 + 104) = 0;
      }

      if (*(v6 + 176))
      {
        IONotificationPortDestroy(*(v6 + 176));
        v6 = *(a1 + 8);
        *(v6 + 176) = 0;
      }

      if (*(v6 + 184))
      {
        IOObjectRelease(*(v6 + 184));
        v6 = *(a1 + 8);
        *(v6 + 184) = 0;
      }

      free(v6);
    }

    free(a1);
  }

  v9 = *MEMORY[0x29EDCA608];
}

uint64_t NFHardwareSerialHasCTS(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      LOBYTE(v1) = *v1 ^ 1;
    }
  }

  else
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

uint64_t NFHardwareSerialGetCTS(uint64_t result)
{
  v47 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    goto LABEL_42;
  }

  v1 = *(result + 8);
  if (!v1)
  {
LABEL_8:
    result = 0;
    goto LABEL_42;
  }

  if (*v1 != 1)
  {
    v38 = 0;
    if (v1[1] == 1)
    {
      v37 = 4;
      v5 = getsockopt(*result, 2, 1074033770, &v38, &v37);
      v6 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      v8 = Logger;
      if (v5)
      {
        if (Logger)
        {
          v9 = __error();
          v10 = strerror(*v9);
          v11 = __error();
          v8(3, "%s:%i %s errno=%d getsockopt: SYSPROTO_CONTROL", "NFHardwareSerialGetCTS", 1267, v10, *v11);
        }

        dispatch_get_specific(*v6);
        v12 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        v13 = __error();
        v14 = strerror(*v13);
        v15 = *__error();
        *buf = 136446978;
        v40 = "NFHardwareSerialGetCTS";
        v41 = 1024;
        v42 = 1267;
        v43 = 2080;
        v44 = v14;
        v45 = 1024;
        v46 = v15;
        v16 = "%{public}s:%i %s errno=%d getsockopt: SYSPROTO_CONTROL";
LABEL_20:
        _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, v16, buf, 0x22u);
LABEL_21:
        result = 0xFFFFFFFFLL;
        goto LABEL_42;
      }

      if (Logger)
      {
        v27 = "HIGH";
        if ((v38 & 0x20) == 0)
        {
          v27 = "LOW";
        }

        Logger(6, "%s:%i Flow is %s (line=%x)", "NFHardwareSerialGetCTS", 1271, v27, v38);
      }

      dispatch_get_specific(*v6);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = "HIGH";
        *buf = 136446978;
        v40 = "NFHardwareSerialGetCTS";
        v41 = 1024;
        if ((v38 & 0x20) == 0)
        {
          v29 = "LOW";
        }

        v42 = 1271;
        v43 = 2080;
        v44 = v29;
        v45 = 1024;
        v46 = v38;
        v30 = "%{public}s:%i Flow is %s (line=%x)";
        v31 = v28;
        v32 = 34;
        goto LABEL_40;
      }
    }

    else
    {
      v17 = ioctl(*result, 0x4004746AuLL, &v38);
      v18 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v19 = NFLogGetLogger();
      v20 = v19;
      if (v17)
      {
        if (v19)
        {
          v21 = __error();
          v22 = strerror(*v21);
          v23 = __error();
          v20(3, "%s:%i %s errno=%d TIOCMSET", "NFHardwareSerialGetCTS", 1275, v22, *v23);
        }

        dispatch_get_specific(*v18);
        v12 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_21;
        }

        v24 = __error();
        v25 = strerror(*v24);
        v26 = *__error();
        *buf = 136446978;
        v40 = "NFHardwareSerialGetCTS";
        v41 = 1024;
        v42 = 1275;
        v43 = 2080;
        v44 = v25;
        v45 = 1024;
        v46 = v26;
        v16 = "%{public}s:%i %s errno=%d TIOCMSET";
        goto LABEL_20;
      }

      if (v19)
      {
        if ((v38 & 0x20) != 0)
        {
          v33 = "HIGH";
        }

        else
        {
          v33 = "LOW";
        }

        v19(6, "%s:%i Flow is %s", "NFHardwareSerialGetCTS", 1278, v33);
      }

      dispatch_get_specific(*v18);
      v34 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        if ((v38 & 0x20) != 0)
        {
          v35 = "HIGH";
        }

        else
        {
          v35 = "LOW";
        }

        *buf = 136446722;
        v40 = "NFHardwareSerialGetCTS";
        v41 = 1024;
        v42 = 1278;
        v43 = 2080;
        v44 = v35;
        v30 = "%{public}s:%i Flow is %s";
        v31 = v34;
        v32 = 28;
LABEL_40:
        _os_log_impl(&dword_297F52000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      }
    }

    result = (v38 >> 5) & 1;
    goto LABEL_42;
  }

  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v3 = NFLogGetLogger();
  if (v3)
  {
    v3(6, "%s:%i Ignoring for SPMI", "NFHardwareSerialGetCTS", 1257);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    *buf = 136446466;
    v40 = "NFHardwareSerialGetCTS";
    v41 = 1024;
    v42 = 1257;
    _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Ignoring for SPMI", buf, 0x12u);
    goto LABEL_8;
  }

LABEL_42:
  v36 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NFHardwareSerialSetCRCEnabled(uint64_t a1, int a2)
{
  v35 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  if (*v2 != 1)
  {
    goto LABEL_13;
  }

  v26 = a2;
  v3 = *a1;
  if (v2[1] != 1)
  {
    if (ioctl(v3, 0x80047301uLL, &v26))
    {
      v15 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v17 = Logger;
        v18 = __error();
        v19 = strerror(*v18);
        v20 = __error();
        v17(3, "%s:%i %s errno=%d IO_STOCKHOLM_CRC", "NFHardwareSerialSetCRCEnabled", 1301, v19, *v20);
      }

      dispatch_get_specific(*v15);
      v21 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = __error();
        v23 = strerror(*v22);
        v24 = *__error();
        *buf = 136446978;
        v28 = "NFHardwareSerialSetCRCEnabled";
        v29 = 1024;
        v30 = 1301;
        v31 = 2080;
        v32 = v23;
        v33 = 1024;
        v34 = v24;
        _os_log_impl(&dword_297F52000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d IO_STOCKHOLM_CRC", buf, 0x22u);
      }
    }

    goto LABEL_13;
  }

  if (!setsockopt(v3, 2, -2147192063, &v26, 4u))
  {
LABEL_13:
    result = 1;
    goto LABEL_14;
  }

  v4 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v5 = NFLogGetLogger();
  if (v5)
  {
    v6 = v5;
    v7 = __error();
    v8 = strerror(*v7);
    v9 = __error();
    v6(3, "%s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL", "NFHardwareSerialSetCRCEnabled", 1295, v8, *v9);
  }

  dispatch_get_specific(*v4);
  v10 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v12 = __error();
    v13 = strerror(*v12);
    v14 = *__error();
    *buf = 136446978;
    v28 = "NFHardwareSerialSetCRCEnabled";
    v29 = 1024;
    v30 = 1295;
    v31 = 2080;
    v32 = v13;
    v33 = 1024;
    v34 = v14;
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL", buf, 0x22u);
    result = 0;
  }

LABEL_14:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NFHardwareSerialSetOnDemandClientMode(uint64_t a1, int a2)
{
  v35 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  if (*v2 != 1)
  {
    goto LABEL_14;
  }

  v26 = a2;
  v3 = *a1;
  if (v2[1] == 1)
  {
    if (setsockopt(v3, 2, -2147192062, &v26, 4u))
    {
      v4 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        v7 = __error();
        v8 = strerror(*v7);
        v9 = __error();
        v6(3, "%s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL:IO_STOCKHOLM_ON_DEMAND_CLIENT", "NFHardwareSerialSetOnDemandClientMode", 1321, v8, *v9);
      }

      dispatch_get_specific(*v4);
      v10 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v12 = __error();
        v13 = strerror(*v12);
        v14 = *__error();
        *buf = 136446978;
        v28 = "NFHardwareSerialSetOnDemandClientMode";
        v29 = 1024;
        v30 = 1321;
        v31 = 2080;
        v32 = v13;
        v33 = 1024;
        v34 = v14;
        v15 = "%{public}s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL:IO_STOCKHOLM_ON_DEMAND_CLIENT";
LABEL_13:
        _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, v15, buf, 0x22u);
        result = 0;
        goto LABEL_15;
      }

      goto LABEL_15;
    }

LABEL_14:
    result = 1;
    goto LABEL_15;
  }

  if (!ioctl(v3, 0x80047302uLL, &v26))
  {
    goto LABEL_14;
  }

  v16 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v17 = NFLogGetLogger();
  if (v17)
  {
    v18 = v17;
    v19 = __error();
    v20 = strerror(*v19);
    v21 = __error();
    v18(3, "%s:%i %s errno=%d IO_STOCKHOLM_ON_DEMAND_CLIENT", "NFHardwareSerialSetOnDemandClientMode", 1327, v20, *v21);
  }

  dispatch_get_specific(*v16);
  v10 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v22 = __error();
    v23 = strerror(*v22);
    v24 = *__error();
    *buf = 136446978;
    v28 = "NFHardwareSerialSetOnDemandClientMode";
    v29 = 1024;
    v30 = 1327;
    v31 = 2080;
    v32 = v23;
    v33 = 1024;
    v34 = v24;
    v15 = "%{public}s:%i %s errno=%d IO_STOCKHOLM_ON_DEMAND_CLIENT";
    goto LABEL_13;
  }

LABEL_15:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NFHardwareSerialQuerySPMIError(uint64_t a1, void *a2, void *a3, int a4)
{
  v50 = *MEMORY[0x29EDCA608];
  v41 = 0;
  v8 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NFHardwareSerialQuerySPMIError", 1340);
  }

  dispatch_get_specific(*v8);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v43 = "NFHardwareSerialQuerySPMIError";
    v44 = 1024;
    v45 = 1340;
    _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  if (!a2 || !a3)
  {
    dispatch_get_specific(*v8);
    v24 = NFLogGetLogger();
    if (v24)
    {
      v24(3, "%s:%i Invalid parameter", "NFHardwareSerialQuerySPMIError", 1343);
    }

    dispatch_get_specific(*v8);
    v25 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136446466;
    v43 = "NFHardwareSerialQuerySPMIError";
    v44 = 1024;
    v45 = 1343;
    v21 = "%{public}s:%i Invalid parameter";
LABEL_18:
    v22 = v25;
    v23 = 18;
    goto LABEL_19;
  }

  v11 = *(a1 + 8);
  if ((*v11 & 1) == 0)
  {
    *a3 = 0;
    v26 = 1;
    goto LABEL_22;
  }

  if (v11[1] != 1)
  {
    dispatch_get_specific(*v8);
    v29 = NFLogGetLogger();
    if (v29)
    {
      v29(3, "%s:%i Not implemented.", "NFHardwareSerialQuerySPMIError", 1368);
    }

    dispatch_get_specific(*v8);
    v25 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 136446466;
    v43 = "NFHardwareSerialQuerySPMIError";
    v44 = 1024;
    v45 = 1368;
    v21 = "%{public}s:%i Not implemented.";
    goto LABEL_18;
  }

  v41 = *a3;
  if (getsockopt(*a1, 2, 1077965571, a2, &v41))
  {
    dispatch_get_specific(*v8);
    v12 = NFLogGetLogger();
    if (v12)
    {
      v13 = v12;
      v14 = __error();
      v15 = strerror(*v14);
      v16 = __error();
      v13(3, "%s:%i %s errno=%d getsockopt: SYSPROTO_CONTROL:IO_STOCKHOLM_SPMIERRORS", "NFHardwareSerialQuerySPMIError", 1356, v15, *v16);
    }

    dispatch_get_specific(*v8);
    v17 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    v18 = __error();
    v19 = strerror(*v18);
    v20 = *__error();
    *buf = 136446978;
    v43 = "NFHardwareSerialQuerySPMIError";
    v44 = 1024;
    v45 = 1356;
    v46 = 2080;
    v47 = v19;
    v48 = 1024;
    v49 = v20;
    v21 = "%{public}s:%i %s errno=%d getsockopt: SYSPROTO_CONTROL:IO_STOCKHOLM_SPMIERRORS";
    v22 = v17;
    v23 = 34;
LABEL_19:
    _os_log_impl(&dword_297F52000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
LABEL_20:
    v26 = 0;
    goto LABEL_22;
  }

  *a3 = v41;
  v40 = a4;
  v30 = setsockopt(*a1, 2, -2147192060, &v40, 4u);
  v26 = v30 == 0;
  if (v30)
  {
    dispatch_get_specific(*v8);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v32 = v31;
      v33 = __error();
      v34 = strerror(*v33);
      v35 = __error();
      v32(3, "%s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL:IO_STOCKHOLM_SPMI_CLEAR_ERRORS", "NFHardwareSerialQuerySPMIError", 1363, v34, *v35);
    }

    dispatch_get_specific(*v8);
    v36 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = __error();
      v38 = strerror(*v37);
      v39 = *__error();
      *buf = 136446978;
      v43 = "NFHardwareSerialQuerySPMIError";
      v44 = 1024;
      v45 = 1363;
      v46 = 2080;
      v47 = v38;
      v48 = 1024;
      v49 = v39;
      _os_log_impl(&dword_297F52000, v36, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d setsockopt: SYSPROTO_CONTROL:IO_STOCKHOLM_SPMI_CLEAR_ERRORS", buf, 0x22u);
    }
  }

LABEL_22:
  v27 = *MEMORY[0x29EDCA608];
  return v26;
}

BOOL NFHardwareSerialRegisterSPMIErrorCallback(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NFHardwareSerialRegisterSPMIErrorCallback", 1416);
  }

  dispatch_get_specific(*v6);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v32 = "NFHardwareSerialRegisterSPMIErrorCallback";
    v33 = 1024;
    v34 = 1416;
    _os_log_impl(&dword_297F52000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  if (a1)
  {
    if (!a2)
    {
      dispatch_get_specific(*v6);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(3, "%s:%i Invalid callback parameter", "NFHardwareSerialRegisterSPMIErrorCallback", 1423);
      }

      dispatch_get_specific(*v6);
      v11 = NFSharedLogGetLogger();
      result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 136446466;
        v32 = "NFHardwareSerialRegisterSPMIErrorCallback";
        v33 = 1024;
        v34 = 1423;
        v13 = "%{public}s:%i Invalid callback parameter";
        goto LABEL_21;
      }

      goto LABEL_25;
    }

    v9 = a1[1];
    if (*v9 == 1)
    {
      if (*(v9 + 192))
      {
        dispatch_get_specific(*v6);
        v10 = NFLogGetLogger();
        if (v10)
        {
          v10(3, "%s:%i Callback already registered", "NFHardwareSerialRegisterSPMIErrorCallback", 1434);
        }

        dispatch_get_specific(*v6);
        v11 = NFSharedLogGetLogger();
        result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 136446466;
          v32 = "NFHardwareSerialRegisterSPMIErrorCallback";
          v33 = 1024;
          v34 = 1434;
          v13 = "%{public}s:%i Callback already registered";
LABEL_21:
          _os_log_impl(&dword_297F52000, v11, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
          result = 0;
          goto LABEL_25;
        }

        goto LABEL_25;
      }

      if (!*(v9 + 176))
      {
        if (*(v9 + 96))
        {
          v17 = "AppleStockholmSPMI";
        }

        else
        {
          v17 = "AppleHammerfestSPMI";
        }

        dispatch_get_specific(*v6);
        v18 = NFLogGetLogger();
        if (v18)
        {
          v18(6, "%s:%i Creating IONotificationPort for %s", "NFHardwareSerialRegisterSPMIErrorCallback", 1440, v17);
        }

        dispatch_get_specific(*v6);
        v19 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v32 = "NFHardwareSerialRegisterSPMIErrorCallback";
          v33 = 1024;
          v34 = 1440;
          v35 = 2080;
          v36 = v17;
          _os_log_impl(&dword_297F52000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Creating IONotificationPort for %s", buf, 0x1Cu);
        }

        v20 = *MEMORY[0x29EDBB110];
        v21 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
        *(v9 + 176) = v21;
        if (!v21)
        {
          dispatch_get_specific(*v6);
          v28 = NFLogGetLogger();
          if (v28)
          {
            v28(3, "%s:%i Unable to create notify port", "NFHardwareSerialRegisterSPMIErrorCallback", 1444);
          }

          dispatch_get_specific(*v6);
          v11 = NFSharedLogGetLogger();
          result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
          if (result)
          {
            *buf = 136446466;
            v32 = "NFHardwareSerialRegisterSPMIErrorCallback";
            v33 = 1024;
            v34 = 1444;
            v13 = "%{public}s:%i Unable to create notify port";
            goto LABEL_21;
          }

          goto LABEL_25;
        }

        IONotificationPortSetDispatchQueue(v21, *(v9 + 104));
        v22 = IOServiceNameMatching(v17);
        MatchingService = IOServiceGetMatchingService(v20, v22);
        if (!MatchingService)
        {
          dispatch_get_specific(*v6);
          v29 = NFLogGetLogger();
          if (v29)
          {
            v29(3, "%s:%i Service %s not available", "NFHardwareSerialRegisterSPMIErrorCallback", 1452, v17);
          }

          dispatch_get_specific(*v6);
          v30 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v32 = "NFHardwareSerialRegisterSPMIErrorCallback";
            v33 = 1024;
            v34 = 1452;
            v35 = 2080;
            v36 = v17;
            _os_log_impl(&dword_297F52000, v30, OS_LOG_TYPE_ERROR, "%{public}s:%i Service %s not available", buf, 0x1Cu);
          }

          IONotificationPortDestroy(*(v9 + 176));
          result = 0;
          *(v9 + 176) = 0;
          goto LABEL_25;
        }

        v24 = MatchingService;
        v25 = IOServiceAddInterestNotification(*(v9 + 176), MatchingService, "IOGeneralInterest", sub_297F67880, a1, (v9 + 184));
        IOObjectRelease(v24);
        if (v25)
        {
          dispatch_get_specific(*v6);
          v26 = NFLogGetLogger();
          if (v26)
          {
            v26(3, "%s:%i Notification subscription failed: %d", "NFHardwareSerialRegisterSPMIErrorCallback", 1463, v25);
          }

          dispatch_get_specific(*v6);
          v27 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446722;
            v32 = "NFHardwareSerialRegisterSPMIErrorCallback";
            v33 = 1024;
            v34 = 1463;
            v35 = 1024;
            LODWORD(v36) = v25;
            _os_log_impl(&dword_297F52000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%i Notification subscription failed: %d", buf, 0x18u);
          }

          IONotificationPortDestroy(*(v9 + 176));
          result = 0;
          *(v9 + 176) = 0;
          *(v9 + 184) = 0;
          goto LABEL_25;
        }
      }

      *(v9 + 192) = a2;
      *(v9 + 200) = a3;
    }

    result = 1;
    goto LABEL_25;
  }

  dispatch_get_specific(*v6);
  v14 = NFLogGetLogger();
  if (v14)
  {
    v14(3, "%s:%i Invalid serial parameter", "NFHardwareSerialRegisterSPMIErrorCallback", 1419);
  }

  dispatch_get_specific(*v6);
  v11 = NFSharedLogGetLogger();
  result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 136446466;
    v32 = "NFHardwareSerialRegisterSPMIErrorCallback";
    v33 = 1024;
    v34 = 1419;
    v13 = "%{public}s:%i Invalid serial parameter";
    goto LABEL_21;
  }

LABEL_25:
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297F67880(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a3 != -469794815)
  {
    goto LABEL_25;
  }

  if (!a1)
  {
    v9 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Null serial", "_NFHardwareSerialSPMIIOServiceCallback", 1383);
    }

    dispatch_get_specific(*v9);
    v11 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 136446466;
    v19 = "_NFHardwareSerialSPMIIOServiceCallback";
    v20 = 1024;
    v21 = 1383;
    v12 = "%{public}s:%i Null serial";
LABEL_24:
    _os_log_impl(&dword_297F52000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x12u);
    goto LABEL_25;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v14 = NFLogGetLogger();
    if (v14)
    {
      v14(3, "%s:%i Null serial internals", "_NFHardwareSerialSPMIIOServiceCallback", 1389);
    }

    dispatch_get_specific(*v13);
    v11 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 136446466;
    v19 = "_NFHardwareSerialSPMIIOServiceCallback";
    v20 = 1024;
    v21 = 1389;
    v12 = "%{public}s:%i Null serial internals";
    goto LABEL_24;
  }

  v5 = *(v4 + 192);
  if (!v5)
  {
LABEL_25:
    v17 = *MEMORY[0x29EDCA608];
    return;
  }

  if (!a4)
  {
    v15 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v16(3, "%s:%i Got a null buffer", "_NFHardwareSerialSPMIIOServiceCallback", 1400);
    }

    dispatch_get_specific(*v15);
    v11 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 136446466;
    v19 = "_NFHardwareSerialSPMIIOServiceCallback";
    v20 = 1024;
    v21 = 1400;
    v12 = "%{public}s:%i Got a null buffer";
    goto LABEL_24;
  }

  for (i = 0; i < 0x40; i += *(a4 + i + 1) + 2)
  {
    if (!*(a4 + i))
    {
      break;
    }
  }

  v7 = *(v4 + 200);
  v8 = *MEMORY[0x29EDCA608];

  v5(v7, a4);
}

void sub_297F67B20(const char *a1)
{
  v57 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceNameMatching(a1);
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (MatchingService)
  {
    if (Logger)
    {
      Logger(6, "%s:%i %s found", "_NFHardwarePrintNode", 149, a1);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "_NFHardwarePrintNode";
      *&buf[12] = 1024;
      *&buf[14] = 149;
      *&buf[18] = 2080;
      *&buf[20] = a1;
      _os_log_impl(&dword_297F52000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s found", buf, 0x1Cu);
    }

    child = 0;
    if (IORegistryEntryGetChildEntry(MatchingService, "IOService", &child))
    {
      dispatch_get_specific(*v5);
      v8 = NFLogGetLogger();
      if (v8)
      {
        v8(6, "%s:%i %s has no child", "_NFHardwarePrintNode", 162, a1);
      }

      dispatch_get_specific(*v5);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 162;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        _os_log_impl(&dword_297F52000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has no child", buf, 0x1Cu);
      }
    }

    else if (child)
    {
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      v52 = 0u;
      v53 = 0u;
      memset(buf, 0, sizeof(buf));
      if (!MEMORY[0x29C27C310]())
      {
        dispatch_get_specific(*v5);
        v11 = NFLogGetLogger();
        if (v11)
        {
          v11(6, "%s:%i %s has child %s", "_NFHardwarePrintNode", 157, a1, buf);
        }

        dispatch_get_specific(*v5);
        v12 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 136446978;
          v44 = "_NFHardwarePrintNode";
          v45 = 1024;
          v46 = 157;
          v47 = 2080;
          v48 = a1;
          v49 = 2080;
          v50 = buf;
          _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has child %s", v43, 0x26u);
        }
      }

      IOObjectRelease(child);
    }

    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IONameMatch", 0, 0);
    if (CFProperty)
    {
      v14 = CFProperty;
      v15 = sub_297F682C4(CFProperty);
      dispatch_get_specific(*v5);
      v16 = NFLogGetLogger();
      if (v16)
      {
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = "??";
        }

        v16(6, "%s:%i %s has property %s : %s", "_NFHardwarePrintNode", 168, a1, "IONameMatch", v17);
      }

      dispatch_get_specific(*v5);
      v18 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (v15)
        {
          v19 = v15;
        }

        else
        {
          v19 = "??";
        }

        *buf = 136447234;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 168;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "IONameMatch";
        *&buf[38] = 2080;
        *&buf[40] = v19;
        _os_log_impl(&dword_297F52000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has property %s : %s", buf, 0x30u);
      }

      if (v15)
      {
        free(v15);
      }

      CFRelease(v14);
    }

    v20 = IORegistryEntryCreateCFProperty(MatchingService, @"IONameMatched", 0, 0);
    if (v20)
    {
      v21 = v20;
      v22 = sub_297F682C4(v20);
      dispatch_get_specific(*v5);
      v23 = NFLogGetLogger();
      if (v23)
      {
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = "??";
        }

        v23(6, "%s:%i %s has property %s : %s", "_NFHardwarePrintNode", 176, a1, "IONameMatched", v24);
      }

      dispatch_get_specific(*v5);
      v25 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        if (v22)
        {
          v26 = v22;
        }

        else
        {
          v26 = "??";
        }

        *buf = 136447234;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 176;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "IONameMatched";
        *&buf[38] = 2080;
        *&buf[40] = v26;
        _os_log_impl(&dword_297F52000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has property %s : %s", buf, 0x30u);
      }

      if (v22)
      {
        free(v22);
      }

      CFRelease(v21);
    }

    v27 = IORegistryEntryCreateCFProperty(MatchingService, @"IOMatchCategory", 0, 0);
    if (v27)
    {
      v28 = v27;
      v29 = sub_297F682C4(v27);
      dispatch_get_specific(*v5);
      v30 = NFLogGetLogger();
      if (v30)
      {
        if (v29)
        {
          v31 = v29;
        }

        else
        {
          v31 = "??";
        }

        v30(6, "%s:%i %s has property %s : %s", "_NFHardwarePrintNode", 184, a1, "IOMatchCategory", v31);
      }

      dispatch_get_specific(*v5);
      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        if (v29)
        {
          v33 = v29;
        }

        else
        {
          v33 = "??";
        }

        *buf = 136447234;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 184;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "IOMatchCategory";
        *&buf[38] = 2080;
        *&buf[40] = v33;
        _os_log_impl(&dword_297F52000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has property %s : %s", buf, 0x30u);
      }

      if (v29)
      {
        free(v29);
      }

      CFRelease(v28);
    }

    v34 = IORegistryEntryCreateCFProperty(MatchingService, @"IOUserClientClass", 0, 0);
    if (v34)
    {
      v35 = v34;
      v36 = sub_297F682C4(v34);
      dispatch_get_specific(*v5);
      v37 = NFLogGetLogger();
      if (v37)
      {
        if (v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = "??";
        }

        v37(6, "%s:%i %s has property %s : %s", "_NFHardwarePrintNode", 192, a1, "IOUserClientClass", v38);
      }

      dispatch_get_specific(*v5);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        if (v36)
        {
          v40 = v36;
        }

        else
        {
          v40 = "??";
        }

        *buf = 136447234;
        *&buf[4] = "_NFHardwarePrintNode";
        *&buf[12] = 1024;
        *&buf[14] = 192;
        *&buf[18] = 2080;
        *&buf[20] = a1;
        *&buf[28] = 2080;
        *&buf[30] = "IOUserClientClass";
        *&buf[38] = 2080;
        *&buf[40] = v40;
        _os_log_impl(&dword_297F52000, v39, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has property %s : %s", buf, 0x30u);
      }

      if (v36)
      {
        free(v36);
      }

      CFRelease(v35);
    }

    IOObjectRelease(MatchingService);
  }

  else
  {
    if (Logger)
    {
      Logger(6, "%s:%i %s NOT found", "_NFHardwarePrintNode", 199, a1);
    }

    dispatch_get_specific(*v5);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      *&buf[4] = "_NFHardwarePrintNode";
      *&buf[12] = 1024;
      *&buf[14] = 199;
      *&buf[18] = 2080;
      *&buf[20] = a1;
      _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s NOT found", buf, 0x1Cu);
    }
  }

  v41 = *MEMORY[0x29EDCA608];
}

char *sub_297F682C4(const __CFString *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFStringGetTypeID())
  {
    v3 = malloc_type_calloc(0x100uLL, 1uLL, 0x100004077774924uLL);
    if (v3)
    {
      CFStringGetCString(a1, v3, 256, 0x8000100u);
    }

    return v3;
  }

  else
  {

    return strdup("");
  }
}

uint64_t sub_297F6835C(io_iterator_t a1, const char *a2)
{
  v36 = *MEMORY[0x29EDCA608];
  v29 = 0;
  if (a1 && IOIteratorIsValid(a1))
  {
    v4 = MEMORY[0x29EDC9730];
    while (1)
    {
      v5 = IOIteratorNext(a1);
      if (!v5)
      {
        v13 = 0;
        goto LABEL_51;
      }

      v6 = v5;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      memset(__s1, 0, sizeof(__s1));
      v7 = MEMORY[0x29C27C310](v5, __s1) ? 0 : strdup(__s1);
      CFProperty = IORegistryEntryCreateCFProperty(v6, @"IONameMatch", 0, 0);
      if (CFProperty)
      {
        v9 = CFProperty;
        v10 = sub_297F682C4(CFProperty);
        if (!v10)
        {
          goto LABEL_12;
        }

        v11 = v10;
        if (strcmp(v10, a2))
        {
          goto LABEL_11;
        }

        dispatch_get_specific(*v4);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          Logger(6, "%s:%i Found property %s : %s", "_NFHardwareIsEntryMatching", 214, "IONameMatch", v11);
        }

        dispatch_get_specific(*v4);
        v15 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *__s1 = 136446978;
          *&__s1[4] = "_NFHardwareIsEntryMatching";
          *&__s1[12] = 1024;
          *&__s1[14] = 214;
          *&__s1[18] = 2080;
          *&__s1[20] = "IONameMatch";
          *&__s1[28] = 2080;
          *&__s1[30] = v11;
          _os_log_impl(&dword_297F52000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found property %s : %s", __s1, 0x26u);
        }

        free(v11);
        CFRelease(v9);
        v16 = IORegistryEntryCreateCFProperty(v6, @"IOClass", 0, 0);
        if (v16)
        {
          break;
        }
      }

LABEL_13:
      if (MEMORY[0x29C27C300](v6, "IOService", &v29))
      {
        v12 = 0;
        v13 = 0;
      }

      else
      {
        IOObjectRelease(v6);
        v13 = sub_297F6835C(v29, a2);
        v12 = v13 != 0;
        LODWORD(v6) = v29;
      }

      IOObjectRelease(v6);
      if (v7)
      {
        free(v7);
      }

      if (v12)
      {
        goto LABEL_51;
      }

      if (!IOIteratorIsValid(a1))
      {
        goto LABEL_46;
      }
    }

    v9 = v16;
    v17 = sub_297F682C4(v16);
    if (v17)
    {
      v11 = v17;
      if (!strcmp(v17, "AppleStockholmControl"))
      {
        dispatch_get_specific(*v4);
        v18 = NFLogGetLogger();
        if (v18)
        {
          v18(6, "%s:%i Found property %s : %s", "_NFHardwareIsEntryMatching", 226, "IOPropertyMatch", v11);
        }

        dispatch_get_specific(*v4);
        v19 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *__s1 = 136446978;
          *&__s1[4] = "_NFHardwareIsEntryMatching";
          *&__s1[12] = 1024;
          *&__s1[14] = 226;
          *&__s1[18] = 2080;
          *&__s1[20] = "IOPropertyMatch";
          *&__s1[28] = 2080;
          *&__s1[30] = v11;
          _os_log_impl(&dword_297F52000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Found property %s : %s", __s1, 0x26u);
        }

        free(v11);
        CFRelease(v9);
        dispatch_get_specific(*v4);
        v20 = NFLogGetLogger();
        if (v20)
        {
          if (v7)
          {
            v21 = v7;
          }

          else
          {
            v21 = "??";
          }

          v20(6, "%s:%i %s has matching {%s / %s}", "_NFHardwareWalkTree", 274, v21, "AppleStockholmControl", a2);
        }

        dispatch_get_specific(*v4);
        v22 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          if (v7)
          {
            v23 = v7;
          }

          else
          {
            v23 = "??";
          }

          *__s1 = 136447234;
          *&__s1[4] = "_NFHardwareWalkTree";
          *&__s1[12] = 1024;
          *&__s1[14] = 274;
          *&__s1[18] = 2080;
          *&__s1[20] = v23;
          *&__s1[28] = 2080;
          *&__s1[30] = "AppleStockholmControl";
          *&__s1[38] = 2080;
          *&__s1[40] = a2;
          _os_log_impl(&dword_297F52000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s:%i %s has matching {%s / %s}", __s1, 0x30u);
        }

        if (v7)
        {
          free(v7);
        }

        v13 = v6;
        goto LABEL_51;
      }

LABEL_11:
      free(v11);
    }

LABEL_12:
    CFRelease(v9);
    goto LABEL_13;
  }

  v13 = 0;
LABEL_46:
  v24 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v25 = NFLogGetLogger();
  if (v25)
  {
    v25(3, "%s:%i Invalid iterator", "_NFHardwareWalkTree", 263);
  }

  dispatch_get_specific(*v24);
  v26 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *__s1 = 136446466;
    *&__s1[4] = "_NFHardwareWalkTree";
    *&__s1[12] = 1024;
    *&__s1[14] = 263;
    _os_log_impl(&dword_297F52000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i Invalid iterator", __s1, 0x12u);
  }

LABEL_51:
  v27 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_297F68880()
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Error ! Unexpected invocation of read handler", "_NFHardwareSerialCreateSources_block_invoke", 1083);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v5 = "_NFHardwareSerialCreateSources_block_invoke";
    v6 = 1024;
    v7 = 1083;
    _os_log_impl(&dword_297F52000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Error ! Unexpected invocation of read handler", buf, 0x12u);
  }

  v3 = *MEMORY[0x29EDCA608];
}

void sub_297F68970()
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Error ! Unexpected invocation of write handler", "_NFHardwareSerialCreateSources_block_invoke_2", 1093);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v5 = "_NFHardwareSerialCreateSources_block_invoke_2";
    v6 = 1024;
    v7 = 1093;
    _os_log_impl(&dword_297F52000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Error ! Unexpected invocation of write handler", buf, 0x12u);
  }

  v3 = *MEMORY[0x29EDCA608];
}

void sub_297F68A64()
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(3, "%s:%i Error ! Unexpected invocation of read handler", "_NFHardwareSerialDeleteSources_block_invoke", 1106);
  }

  dispatch_get_specific(*v0);
  v2 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v5 = "_NFHardwareSerialDeleteSources_block_invoke";
    v6 = 1024;
    v7 = 1106;
    _os_log_impl(&dword_297F52000, v2, OS_LOG_TYPE_ERROR, "%{public}s:%i Error ! Unexpected invocation of read handler", buf, 0x12u);
  }

  v3 = *MEMORY[0x29EDCA608];
}

char *sub_297F68B54(int a1)
{
  v27 = *MEMORY[0x29EDCA608];
  if ((!a1 || (v2 = qword_2A18BD258) == 0) && ((a1 & 1) != 0 || (v2 = qword_2A18BD250) == 0))
  {
    v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x1030040A57A3815uLL);
    if (v2)
    {
      if (sub_297F68F68())
      {
        *v2 = 0x10000000102ELL;
        v3 = 4096;
        *(v2 + 2) = 4096;
        v4 = 4158;
      }

      else if (a1)
      {
        if (NFLogGetProcessNCIOnly())
        {
          v5 = 260;
        }

        else
        {
          v5 = 1024;
        }

        *v2 = v5;
        *(v2 + 4) = 0x8000000080;
        v4 = v5 | 0x10;
        v3 = 128;
      }

      else
      {
        *v2 = 0x4000000104;
        *(v2 + 2) = 128;
        v3 = 64;
        v4 = 276;
      }

      v6 = (v3 * v4);
      *(v2 + 6) = v6;
      v7 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
      *(v2 + 2) = v7;
      *(v2 + 4) = v7;
      *(v2 + 5) = v7;
      *(v2 + 6) = 0;
      *(v2 + 14) = 0;
      v2[60] = a1;
      *(v2 + 8) = 0;
      v2[88] = 0;
      gettimeofday((v2 + 72), 0);
      *(v2 + 23) = 0;
      v8 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i NFHardwareSerialDebug size = %lu", "NFHardwareSerialDebugger", 143, 96);
      }

      dispatch_get_specific(*v8);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v22 = "NFHardwareSerialDebugger";
        v23 = 1024;
        v24 = 143;
        v25 = 2048;
        v26 = 96;
        _os_log_impl(&dword_297F52000, v10, OS_LOG_TYPE_ERROR, "%{public}s:%i NFHardwareSerialDebug size = %lu", buf, 0x1Cu);
      }

      dispatch_get_specific(*v8);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v11(3, "%s:%i NFHardwareSerialDebugMsg size = %lu", "NFHardwareSerialDebugger", 144, 16);
      }

      dispatch_get_specific(*v8);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v22 = "NFHardwareSerialDebugger";
        v23 = 1024;
        v24 = 144;
        v25 = 2048;
        v26 = 16;
        _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i NFHardwareSerialDebugMsg size = %lu", buf, 0x1Cu);
      }

      dispatch_get_specific(*v8);
      v13 = NFLogGetLogger();
      if (v13)
      {
        v13(3, "%s:%i s_compactTime size = %lu", "NFHardwareSerialDebugger", 145, 4);
      }

      dispatch_get_specific(*v8);
      v14 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v22 = "NFHardwareSerialDebugger";
        v23 = 1024;
        v24 = 145;
        v25 = 2048;
        v26 = 4;
        _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i s_compactTime size = %lu", buf, 0x1Cu);
      }

      dispatch_get_specific(*v8);
      v15 = NFLogGetLogger();
      if (v15)
      {
        v15(3, "%s:%i debugger->msgListLength size = %d", "NFHardwareSerialDebugger", 146, *(v2 + 6));
      }

      dispatch_get_specific(*v8);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v2 + 6);
        *buf = 136446722;
        v22 = "NFHardwareSerialDebugger";
        v23 = 1024;
        v24 = 146;
        v25 = 1024;
        LODWORD(v26) = v17;
        _os_log_impl(&dword_297F52000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i debugger->msgListLength size = %d", buf, 0x18u);
      }

      v18 = &qword_2A18BD250;
      if (a1)
      {
        v18 = &qword_2A18BD258;
      }

      *v18 = v2;
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return v2;
}

BOOL sub_297F68F68()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFBooleanGetValue(v0) != 0;
  CFRelease(v1);
  return v2;
}

char *NFHardwareSerialDebugLastMessage(int a1)
{
  v1 = &qword_2A18BD250;
  if (!a1)
  {
    v1 = &qword_2A18BD258;
  }

  v2 = *v1;
  if (!*v1)
  {
    return 0;
  }

  os_unfair_lock_lock((v2 + 92));
  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = strdup(v3);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock((v2 + 92));
  return v4;
}

void sub_297F6902C(int *a1, void (*a2)(void, CFDataRef))
{
  v71 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(a1 + 23);
  v4 = MEMORY[0x29EDC9730];
  if (*(a1 + 2))
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      free(v5);
      *(a1 + 8) = 0;
    }

    v6 = *(a1 + 6);
    if (!v6)
    {
      v6 = *(a1 + 4);
    }

    v7 = malloc_type_calloc(1uLL, 0x100uLL, 0x100004077774924uLL);
    *(a1 + 8) = v7;
    if (v7)
    {
      if (v6 != **(a1 + 5))
      {
        v8 = v7;
        v9 = 255;
        while (1)
        {
          if (*(v6 + 14) - 12 < 0xFFFFFFF5)
          {
            goto LABEL_41;
          }

          v10 = snprintf(v8, v9, "%s", *(&unk_29EE86C70 + *(v6 + 14)));
          v11 = __OFSUB__(v9, v10);
          v9 -= v10;
          if ((v9 < 0) ^ v11 | (v9 == 0))
          {
            goto LABEL_41;
          }

          v8 += v10;
          v12 = *(v6 + 6);
          v13._os_unfair_lock_opaque = *a1;
          if (*a1 >= v12)
          {
            v13._os_unfair_lock_opaque = *(v6 + 6);
          }

          os_unfair_lock_opaque = v13._os_unfair_lock_opaque;
          v15 = v6 + 15;
          v16 = *(a1 + 2) + a1[6];
          if (v6 + v12 + 15 > v16)
          {
            v17 = v16 - v15;
            if (v17 >= os_unfair_lock_opaque)
            {
              v18 = os_unfair_lock_opaque;
            }

            else
            {
              v18 = v17;
            }

            if (v18)
            {
              v19 = v18;
              do
              {
                v20 = *v15++;
                v21 = snprintf(v8, v9, "%02x", v20);
                v11 = __OFSUB__(v9, v21);
                v9 -= v21;
                if ((v9 < 0) ^ v11 | (v9 == 0))
                {
                  goto LABEL_41;
                }

                v8 += v21;
                --v19;
              }

              while (v19);
              v15 = *(a1 + 2);
            }

            else
            {
              v15 = *(a1 + 2);
            }

            os_unfair_lock_opaque -= v18;
          }

          if (os_unfair_lock_opaque)
          {
            break;
          }

LABEL_27:
          v6 = *v6;
          if (v6 == **(a1 + 5) || v9 <= 0)
          {
            goto LABEL_41;
          }
        }

        while (1)
        {
          v22 = *v15++;
          v23 = snprintf(v8, v9, "%02x", v22);
          v11 = __OFSUB__(v9, v23);
          v9 -= v23;
          if ((v9 < 0) ^ v11 | (v9 == 0))
          {
            break;
          }

          v8 += v23;
          if (!--os_unfair_lock_opaque)
          {
            goto LABEL_27;
          }
        }
      }
    }

    else
    {
      dispatch_get_specific(*v4);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i failed to allocate last msg buffer", "_NFHardwareSerialDebugSaveLastMessage", 201);
      }

      dispatch_get_specific(*v4);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v66 = "_NFHardwareSerialDebugSaveLastMessage";
        v67 = 1024;
        v68 = 201;
        _os_log_impl(&dword_297F52000, v28, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to allocate last msg buffer", buf, 0x12u);
      }
    }

LABEL_41:
    v29 = a1[2];
    if (!sub_297F68F68())
    {
      buf[0] = 0;
      v30 = *MEMORY[0x29EDB8FA0];
      v31 = *(a1 + 60) ? @"com.apple.stockholm" : *MEMORY[0x29EDB8FA0];
      CFPreferencesAppSynchronize(v31);
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"UARTDumpMaxEntries", v31, buf);
      if (buf[0])
      {
        v29 = AppIntegerValue;
      }
    }

    v33 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v34(6, "%s:%i Printing last %ld messages", "NFHardwareSerialDebugDump_wCB", 412, v29);
    }

    dispatch_get_specific(*v33);
    v35 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v66 = "NFHardwareSerialDebugDump_wCB";
      v67 = 1024;
      v68 = 412;
      v69 = 2048;
      v70 = v29;
      _os_log_impl(&dword_297F52000, v35, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Printing last %ld messages", buf, 0x1Cu);
    }

    v36 = malloc_type_calloc(1uLL, *a1, 0x100004077774924uLL);
    v37 = *MEMORY[0x29EDB8ED8];
    v38 = *(a1 + 4);
    while (1)
    {
      if (*(v38 + 14))
      {
        if (*(v38 + 14) < 0xCu)
        {
          v39 = a1[14];
          if (v29 > v39)
          {
            v40 = *(&unk_29EE86C70 + *(v38 + 14));
            v41 = "";
            if (*a1 < *(v38 + 6))
            {
              v41 = "TRUNCATED";
            }

            v42 = *(v38 + 2);
            v43 = *(a1 + 9) + (*&v42 & 0x3FFFFFLL);
            v44 = a1[20] + 1000 * (v42 >> 22);
            if (v44 > 0xF423F)
            {
              v44 -= 1000000;
              ++v43;
            }

            snprintf(buf, 0x80uLL, "%ld.%.3d %s %s", v43, v44, v40, v41);
            v45 = *(a1 + 4);
            v46 = *(v45 + 12);
            if (*a1 >= v46)
            {
              v47._os_unfair_lock_opaque = *(v45 + 12);
            }

            else
            {
              v47._os_unfair_lock_opaque = *a1;
            }

            v48 = (v45 + 15);
            v49 = v45 + 15 + v46;
            v50 = *(a1 + 2) + a1[6];
            if (v49 > v50)
            {
              v51 = v50 - v48;
              if (v47._os_unfair_lock_opaque >= v51)
              {
                v52 = v51;
              }

              else
              {
                v52 = v47._os_unfair_lock_opaque;
              }

              memcpy(v36, v48, v52);
              memcpy(&v36[v52], *(a1 + 2), v47._os_unfair_lock_opaque - v52);
              v48 = v36;
            }

            if (a2)
            {
              v53 = CFDataCreate(v37, v48, v47._os_unfair_lock_opaque);
              if (v53)
              {
                v54 = v53;
                a2(*(*(a1 + 4) + 14), v53);
                CFRelease(v54);
              }

              else
              {
                dispatch_get_specific(*MEMORY[0x29EDC9730]);
                v55 = NFLogGetLogger();
                if (v55)
                {
                  v55(3, "%s:%i failed to msg", "NFHardwareSerialDebugDump_wCB", 476);
                }

                dispatch_get_specific(*MEMORY[0x29EDC9730]);
                v56 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  *v61 = 136446466;
                  v62 = "NFHardwareSerialDebugDump_wCB";
                  v63 = 1024;
                  v64 = 476;
                  _os_log_impl(&dword_297F52000, v56, OS_LOG_TYPE_ERROR, "%{public}s:%i failed to msg", v61, 0x12u);
                }
              }
            }

            v57 = *(a1 + 60);
            NFSharedDumpTransport();
            v38 = *(a1 + 4);
            LODWORD(v39) = a1[14];
          }

          *(v38 + 14) = 0;
          v38 = *v38;
          *(a1 + 4) = v38;
          goto LABEL_78;
        }

        *(v38 + 14) = 0;
      }

      v38 = *v38;
      *(a1 + 4) = v38;
      LODWORD(v39) = a1[14];
LABEL_78:
      a1[14] = v39 - 1;
      if (v38 == **(a1 + 5))
      {
        free(v36);
        v58 = *(a1 + 2);
        *(a1 + 4) = v58;
        *(a1 + 5) = v58;
        *v58 = v58;
        v59 = *(a1 + 60);
        NFSharedDumpTransport();
        os_unfair_lock_unlock(a1 + 23);
        goto LABEL_80;
      }
    }
  }

  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  v25 = NFLogGetLogger();
  if (v25)
  {
    v25(3, "%s:%i Buffers not allocated", "NFHardwareSerialDebugDump_wCB", 390);
  }

  dispatch_get_specific(*v4);
  v26 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v66 = "NFHardwareSerialDebugDump_wCB";
    v67 = 1024;
    v68 = 390;
    _os_log_impl(&dword_297F52000, v26, OS_LOG_TYPE_ERROR, "%{public}s:%i Buffers not allocated", buf, 0x12u);
  }

LABEL_80:
  v60 = *MEMORY[0x29EDCA608];
}

void NFHardwareSerialDump_0()
{
  if (qword_2A18BD258)
  {
    sub_297F6902C(qword_2A18BD258, 0);
    v0 = vars8;
  }

  v1 = qword_2A18BD250;
  if (qword_2A18BD250)
  {

    sub_297F6902C(v1, 0);
  }
}

char **NFHardwareInterfaceOpen(const char *a1, NSObject *a2)
{
  v68 = *MEMORY[0x29EDCA608];
  v4 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  if (!v4)
  {
    v13 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Failed to allocate interface %s", "NFHardwareInterfaceOpen", 66, a1);
    }

    dispatch_get_specific(*v13);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v63 = "NFHardwareInterfaceOpen";
      v64 = 1024;
      v65 = 66;
      v66 = 2080;
      v67 = a1;
      _os_log_impl(&dword_297F52000, v15, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate interface %s", buf, 0x1Cu);
    }

    goto LABEL_50;
  }

  v5 = v4;
  v6 = malloc_type_calloc(1uLL, 0x110uLL, 0x900403F894496uLL);
  if (!v6)
  {
    v16 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v17(3, "%s:%i Failed to allocate interface %s", "NFHardwareInterfaceOpen", 72, a1);
    }

    dispatch_get_specific(*v16);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v63 = "NFHardwareInterfaceOpen";
      v64 = 1024;
      v65 = 72;
      v66 = 2080;
      v67 = a1;
      _os_log_impl(&dword_297F52000, v18, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to allocate interface %s", buf, 0x1Cu);
    }

    goto LABEL_49;
  }

  v7 = v6;
  *v5 = v6;
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = "com.apple.stockholm";
  }

  v9 = strdup(v8);
  *v7 = v9;
  if (!strncmp("com.apple.", v9, 0xAuLL))
  {
    v19 = NFHardwareSerialOpen(v9, a2, 0);
    *(v7 + 18) = v19;
    *(v7 + 1) = NFHardwareSerialSetBaudRate;
    *(v7 + 2) = 0;
    *(v7 + 3) = NFHardwareSerialReadBlock;
    *(v7 + 4) = 0;
    *(v7 + 5) = NFHardwareSerialWriteBlock;
    *(v7 + 6) = 0;
    *(v7 + 7) = NFHardwareSerialReadBlockAbort;
    *(v7 + 8) = NFHardwareSerialWriteBlockAbort;
    *(v7 + 9) = NFHardwareSerialFlush;
    *(v7 + 10) = NFHardwareSerialReset;
    *(v7 + 11) = NFHardwareSerialSetLogFunction;
    *(v7 + 12) = NFHardwareSerialEnableLog;
    v61 = v8;
    if (!v19 || (v20 = *(v19 + 1)) == 0 || (v21 = NFHardwareSerialGetCTS, *v20 == 1))
    {
      v21 = 0;
    }

    *(v7 + 13) = v21;
    *(v7 + 14) = NFHardwareSerialSetCRCEnabled;
    *(v7 + 15) = NFHardwareSerialSetOnDemandClientMode;
    *(v7 + 16) = NFHardwareSerialQuerySPMIError;
    *(v7 + 17) = NFHardwareSerialClose;
    if (strcasestr(*v7, "hammerfest"))
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    v23 = NFHardwareGPIOOpen(v22);
    *(v7 + 33) = v23;
    *(v7 + 19) = NFHardwareGPIOSetDeviceWake;
    v24 = NFHardwareSerialRegisterSPMIErrorCallback;
    v25 = NFHardwareGPIOConfigureHammerfestSPMI;
    v26 = NFHardwareGPIOValidateSPMIConfig;
    v27 = NFHardwareGPIOClose;
    v28 = NFHardwareGPIOSPMIvGPIO;
    v29 = NFHardwareGPIOSPMIFollowerReset;
    v30 = NFHardwareGPIOWasItSPMINack;
    v31 = NFHardwareGPIOIsHostWakeCapable;
    v32 = NFHardwareGPIOSetDownloadRequest;
    v33 = NFHardwareGPIOSetVBAT;
    v34 = NFHardwareGPIOSetPMUStandbyPowerEnabled;
    v35 = NFHardwareGPIOSetPower;
    v36 = 240;
    v37 = 216;
    v38 = 208;
    v39 = 256;
    v40 = 248;
    v41 = 232;
    v42 = 224;
    v43 = 200;
    v44 = 192;
    v45 = 184;
    v46 = 176;
    v47 = 168;
    v48 = 160;
    v49 = NFHardwareGPIOSetPMUStandbyPowerEnabled;
  }

  else
  {
    if (strncmp("/dev/", v9, 5uLL))
    {
      v10 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      v11 = NFLogGetLogger();
      if (v11)
      {
        v11(3, "%s:%i Unknown interface %s", "NFHardwareInterfaceOpen", 257, v8);
      }

      dispatch_get_specific(*v10);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v63 = "NFHardwareInterfaceOpen";
        v64 = 1024;
        v65 = 257;
        v66 = 2080;
        v67 = v8;
        _os_log_impl(&dword_297F52000, v12, OS_LOG_TYPE_ERROR, "%{public}s:%i Unknown interface %s", buf, 0x1Cu);
      }

LABEL_48:
      free(*v7);
      free(v7);
LABEL_49:
      free(v5);
LABEL_50:
      v5 = 0;
      goto LABEL_51;
    }

    v50 = NFHardwareSerialOpen(v9, a2, 0);
    *(v7 + 18) = v50;
    *(v7 + 1) = NFHardwareSerialSetBaudRate;
    *(v7 + 2) = 0;
    *(v7 + 3) = NFHardwareSerialReadBlock;
    *(v7 + 4) = 0;
    *(v7 + 5) = NFHardwareSerialWriteBlock;
    *(v7 + 6) = 0;
    *(v7 + 7) = NFHardwareSerialReadBlockAbort;
    *(v7 + 8) = NFHardwareSerialWriteBlockAbort;
    *(v7 + 9) = NFHardwareSerialFlush;
    *(v7 + 10) = NFHardwareSerialReset;
    *(v7 + 11) = NFHardwareSerialSetLogFunction;
    *(v7 + 12) = NFHardwareSerialEnableLog;
    v61 = v8;
    if (!v50 || (v51 = *(v50 + 1)) == 0 || (v52 = NFHardwareSerialGetCTS, *v51 == 1))
    {
      v52 = 0;
    }

    *(v7 + 13) = v52;
    *(v7 + 14) = NFHardwareSerialSetCRCEnabled;
    *(v7 + 15) = NFHardwareSerialSetOnDemandClientMode;
    *(v7 + 17) = NFHardwareSerialClose;
    if (strcasestr(*v7, "hammerfest"))
    {
      v53 = 1;
    }

    else
    {
      v53 = 2;
    }

    v23 = NFHardwareGPIOOpen(v53);
    v35 = v23;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    v24 = NFHardwareGPIOClose;
    v28 = NFHardwareGPIOWasItSPMINack;
    v29 = NFHardwareGPIOIsHostWakeCapable;
    v31 = NFHardwareGPIOSetDownloadRequest;
    v49 = NFHardwareGPIOSetVBAT;
    v32 = NFHardwareGPIOSetPMUStandbyPowerEnabled;
    v33 = NFHardwareGPIOSetPower;
    v34 = NFHardwareGPIOSetDeviceWake;
    v36 = 256;
    v37 = 128;
    v38 = 248;
    v39 = 232;
    v40 = 224;
    v41 = 200;
    v42 = 192;
    v43 = 184;
    v44 = 176;
    v45 = 168;
    v46 = 160;
    v47 = 152;
    v48 = 264;
    v30 = NFHardwareGPIOSetPMUStandbyPowerEnabled;
  }

  *&v7[v48] = v35;
  *&v7[v47] = v34;
  *&v7[v46] = v33;
  *&v7[v45] = v32;
  *&v7[v44] = v49;
  *&v7[v43] = v31;
  *&v7[v42] = v30;
  *&v7[v41] = v29;
  *&v7[v40] = v28;
  *&v7[v39] = v27;
  *&v7[v38] = v26;
  *&v7[v37] = v25;
  *&v7[v36] = v24;
  if (!v23 || !*(v7 + 18))
  {
    v54 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    v55 = NFLogGetLogger();
    if (v55)
    {
      v55(3, "%s:%i Failed to create context for interface %s", "NFHardwareInterfaceOpen", 265, v61);
    }

    dispatch_get_specific(*v54);
    v56 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v63 = "NFHardwareInterfaceOpen";
      v64 = 1024;
      v65 = 265;
      v66 = 2080;
      v67 = v61;
      _os_log_impl(&dword_297F52000, v56, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to create context for interface %s", buf, 0x1Cu);
    }

    if (*(v7 + 18))
    {
      v57 = *(v7 + 17);
      if (v57)
      {
        v57();
      }
    }

    if (*(v7 + 33))
    {
      v58 = *(v7 + 32);
      if (v58)
      {
        v58();
      }
    }

    goto LABEL_48;
  }

LABEL_51:
  v59 = *MEMORY[0x29EDCA608];
  return v5;
}

void NFHardwareInterfaceClose(void **a1)
{
  v2 = *a1;
  v3 = *(*a1 + 17);
  if (v3)
  {
    v3(v2[18]);
  }

  v4 = v2[32];
  if (v4)
  {
    v4(v2[33]);
  }

  free(*v2);
  *v2 = 0;
  free(*a1);

  free(a1);
}

uint64_t NFHardwareInterfaceResetSerial(uint64_t *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i ", "NFHardwareInterfaceResetSerial", 300);
  }

  dispatch_get_specific(*v2);
  v4 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "NFHardwareInterfaceResetSerial";
    v10 = 1024;
    v11 = 300;
    _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:%i ", buf, 0x12u);
  }

  v5 = *(v1 + 80);
  if (v5)
  {
    result = v5(*(v1 + 144));
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NFHardwareInterfaceSetPower(uint64_t a1)
{
  v1 = *(*a1 + 160);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetPMUStandbyEnabled(uint64_t a1)
{
  v1 = *(*a1 + 168);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetVBAT(uint64_t a1)
{
  v1 = *(*a1 + 176);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetDownloadRequest(uint64_t a1)
{
  v1 = *(*a1 + 184);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetPMUStandbyPowerEnabled(uint64_t a1)
{
  v1 = *(*a1 + 192);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetDeviceWake(uint64_t a1)
{
  v1 = *(*a1 + 152);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetLogFunction(uint64_t a1)
{
  v1 = *(*a1 + 88);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceEnableLog(uint64_t result)
{
  v1 = *(*result + 96);
  if (v1)
  {
    return v1(*(*result + 144));
  }

  return result;
}

uint64_t NFHardwareInterfaceSetBaudRate(uint64_t a1)
{
  v1 = *(*a1 + 8);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceRead(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = *(*a1 + 16);
  if (v1)
  {
    v2 = *(*a1 + 144);
    v3 = *MEMORY[0x29EDCA608];

    return v1(v2);
  }

  else
  {
    v5 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i No interface defined for reading", "NFHardwareInterfaceRead", 385);
    }

    dispatch_get_specific(*v5);
    v7 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v10 = "NFHardwareInterfaceRead";
      v11 = 1024;
      v12 = 385;
      _os_log_impl(&dword_297F52000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%i No interface defined for reading", buf, 0x12u);
    }

    v8 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t NFHardwareInterfaceWrite(uint64_t a1)
{
  v1 = *(*a1 + 32);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 0;
  }
}

uint64_t NFHardwareInterfaceReadAbort(uint64_t a1)
{
  v1 = *(*a1 + 48);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceReadBlockAbort(uint64_t a1)
{
  v1 = *(*a1 + 56);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 0;
  }
}

uint64_t NFHardwareInterfaceWriteBlockAbort(uint64_t a1)
{
  v1 = *(*a1 + 64);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 0;
  }
}

uint64_t NFHardwareInterfaceFlush(uint64_t a1)
{
  v1 = *(*a1 + 72);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceGetFlowControl(uint64_t a1)
{
  v1 = *(*a1 + 104);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetCRCEnabled(uint64_t a1)
{
  v1 = *(*a1 + 112);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetOnDemandClientMode(uint64_t a1)
{
  v1 = *(*a1 + 120);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceIsHostWakeCapable(uint64_t a1)
{
  v1 = *(*a1 + 200);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 0;
  }
}

uint64_t NFHardwareInterfaceFollowerReset(uint64_t a1)
{
  v1 = *(*a1 + 232);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 0;
  }
}

uint64_t NFHardwareInterfaceSendSPMIvGPIO(uint64_t a1)
{
  v1 = *(*a1 + 248);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceRegisterSPMIErrorCallback(uint64_t a1)
{
  v1 = *(*a1 + 240);
  if (v1)
  {
    return v1(*(*a1 + 144));
  }

  else
  {
    return 1;
  }
}

BOOL NFHardwareDebug(void **a1)
{
  v91 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    global_queue = dispatch_get_global_queue(25, 0);
    v4 = NFHardwareInterfaceOpen("/dev/tty.stockholm", global_queue);
    if (v4)
    {
      v2 = v4;
      if (*(*v4 + 13))
      {
        goto LABEL_6;
      }

      NFHardwareInterfaceClose(v4);
    }

LABEL_136:
    result = 1;
    goto LABEL_137;
  }

  v2 = a1;
  if (!*(*a1 + 13))
  {
    goto LABEL_136;
  }

LABEL_6:
  v5 = MEMORY[0x29EDC9730];
  dispatch_get_specific(*MEMORY[0x29EDC9730]);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i HW Debugging - current FLOW CHECK", "NFHardwareDebug", 557);
  }

  dispatch_get_specific(*v5);
  v7 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v86 = "NFHardwareDebug";
    v87 = 1024;
    v88 = 557;
    _os_log_impl(&dword_297F52000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - current FLOW CHECK", buf, 0x12u);
  }

  v8 = *(*v2 + 13);
  if (v8)
  {
    v9 = v8(*(*v2 + 18)) != 0;
  }

  else
  {
    v9 = 1;
  }

  usleep(0xF4240u);
  dispatch_get_specific(*v5);
  v10 = NFLogGetLogger();
  if (v10)
  {
    v10(6, "%s:%i HW Debugging starting - OFF", "NFHardwareDebug", 563);
  }

  dispatch_get_specific(*v5);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v86 = "NFHardwareDebug";
    v87 = 1024;
    v88 = 563;
    _os_log_impl(&dword_297F52000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging starting - OFF", buf, 0x12u);
  }

  v12 = *(*v2 + 20);
  if (v12 && (v12(*(*v2 + 33), 0) & 1) == 0)
  {
    dispatch_get_specific(*v5);
    v13 = NFLogGetLogger();
    if (v13)
    {
      v13(3, "%s:%i Error", "NFHardwareDebug", 566);
    }

    dispatch_get_specific(*v5);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v86 = "NFHardwareDebug";
      v87 = 1024;
      v88 = 566;
      _os_log_impl(&dword_297F52000, v14, OS_LOG_TYPE_ERROR, "%{public}s:%i Error", buf, 0x12u);
    }
  }

  usleep(0x4E20u);
  dispatch_get_specific(*v5);
  v15 = NFLogGetLogger();
  if (v15)
  {
    v15(6, "%s:%i HW Debugging - FLOW CHECK - EXPECTED OFF", "NFHardwareDebug", 574);
  }

  dispatch_get_specific(*v5);
  v16 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v86 = "NFHardwareDebug";
    v87 = 1024;
    v88 = 574;
    _os_log_impl(&dword_297F52000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - FLOW CHECK - EXPECTED OFF", buf, 0x12u);
  }

  v17 = *(*v2 + 13);
  if (v17)
  {
    v18 = 2 * (v17(*(*v2 + 18)) != 0);
  }

  else
  {
    v18 = 2;
  }

  v84 = v18;
  dispatch_get_specific(*v5);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v19(6, "%s:%i HW Debugging - ON", "NFHardwareDebug", 578);
  }

  dispatch_get_specific(*v5);
  v20 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v86 = "NFHardwareDebug";
    v87 = 1024;
    v88 = 578;
    _os_log_impl(&dword_297F52000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - ON", buf, 0x12u);
  }

  v21 = *(*v2 + 20);
  if (v21 && (v21(*(*v2 + 33), 1) & 1) == 0)
  {
    dispatch_get_specific(*v5);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v22(3, "%s:%i Error", "NFHardwareDebug", 587);
    }

    dispatch_get_specific(*v5);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v86 = "NFHardwareDebug";
      v87 = 1024;
      v88 = 587;
      _os_log_impl(&dword_297F52000, v23, OS_LOG_TYPE_ERROR, "%{public}s:%i Error", buf, 0x12u);
    }
  }

  usleep(0x4E20u);
  dispatch_get_specific(*v5);
  v24 = NFLogGetLogger();
  if (v24)
  {
    v24(6, "%s:%i HW Debugging - FLOW CHECK - EXPECTED ON", "NFHardwareDebug", 591);
  }

  dispatch_get_specific(*v5);
  v25 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v86 = "NFHardwareDebug";
    v87 = 1024;
    v88 = 591;
    _os_log_impl(&dword_297F52000, v25, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - FLOW CHECK - EXPECTED ON", buf, 0x12u);
  }

  v26 = *(*v2 + 13);
  if (v26)
  {
    v27 = 4 * (v26(*(*v2 + 18)) != 0);
  }

  else
  {
    v27 = 4;
  }

  v83 = v27;
  dispatch_get_specific(*v5);
  v28 = NFLogGetLogger();
  if (v28)
  {
    v28(6, "%s:%i HW Debugging - SLEEP + wait 1.5s", "NFHardwareDebug", 596);
  }

  dispatch_get_specific(*v5);
  v29 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v86 = "NFHardwareDebug";
    v87 = 1024;
    v88 = 596;
    _os_log_impl(&dword_297F52000, v29, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - SLEEP + wait 1.5s", buf, 0x12u);
  }

  v30 = *(*v2 + 19);
  if (v30 && (v30(*(*v2 + 33), 0) & 1) == 0)
  {
    dispatch_get_specific(*v5);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v31(3, "%s:%i Error", "NFHardwareDebug", 599);
    }

    dispatch_get_specific(*v5);
    v32 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v86 = "NFHardwareDebug";
      v87 = 1024;
      v88 = 599;
      _os_log_impl(&dword_297F52000, v32, OS_LOG_TYPE_ERROR, "%{public}s:%i Error", buf, 0x12u);
    }
  }

  usleep(0x30D40u);
  v33 = *(*v2 + 13);
  if (v33)
  {
    v34 = 8 * (v33(*(*v2 + 18)) != 0);
  }

  else
  {
    v34 = 8;
  }

  usleep(0x30D40u);
  v35 = *(*v2 + 13);
  if (v35)
  {
    v36 = 16 * (v35(*(*v2 + 18)) != 0);
  }

  else
  {
    v36 = 16;
  }

  v79 = v36;
  usleep(0x30D40u);
  v37 = *(*v2 + 13);
  if (v37)
  {
    v38 = 32 * (v37(*(*v2 + 18)) != 0);
  }

  else
  {
    v38 = 32;
  }

  v82 = v38;
  usleep(0x30D40u);
  v39 = *(*v2 + 13);
  if (v39)
  {
    v40 = (v39(*(*v2 + 18)) != 0) << 6;
  }

  else
  {
    v40 = 64;
  }

  v81 = v40;
  usleep(0x30D40u);
  v41 = *(*v2 + 13);
  if (v41)
  {
    v42 = (v41(*(*v2 + 18)) != 0) << 7;
  }

  else
  {
    v42 = 128;
  }

  v80 = v42;
  usleep(0x30D40u);
  v43 = *(*v2 + 13);
  if (v43)
  {
    v44 = (v43(*(*v2 + 18)) != 0) << 8;
  }

  else
  {
    v44 = 256;
  }

  v78 = v44;
  usleep(0x30D40u);
  v45 = *(*v2 + 13);
  if (v45)
  {
    v46 = (v45(*(*v2 + 18)) != 0) << 9;
  }

  else
  {
    v46 = 512;
  }

  usleep(0x30D40u);
  dispatch_get_specific(*v5);
  v47 = NFLogGetLogger();
  if (v47)
  {
    v47(6, "%s:%i HW Debugging - FLOW CHECK - EXPECTED OFF", "NFHardwareDebug", 632);
  }

  dispatch_get_specific(*v5);
  v48 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v86 = "NFHardwareDebug";
    v87 = 1024;
    v88 = 632;
    _os_log_impl(&dword_297F52000, v48, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - FLOW CHECK - EXPECTED OFF", buf, 0x12u);
  }

  v49 = *(*v2 + 13);
  if (v49)
  {
    v50 = (v49(*(*v2 + 18)) != 0) << 10;
  }

  else
  {
    v50 = 1024;
  }

  dispatch_get_specific(*v5);
  v51 = NFLogGetLogger();
  if (v51)
  {
    v51(6, "%s:%i HW Debugging - WAKE", "NFHardwareDebug", 636);
  }

  dispatch_get_specific(*v5);
  v52 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v86 = "NFHardwareDebug";
    v87 = 1024;
    v88 = 636;
    _os_log_impl(&dword_297F52000, v52, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - WAKE", buf, 0x12u);
  }

  v53 = *(*v2 + 19);
  if (v53 && (v53(*(*v2 + 33), 1) & 1) == 0)
  {
    dispatch_get_specific(*v5);
    v54 = NFLogGetLogger();
    if (v54)
    {
      v54(3, "%s:%i Error", "NFHardwareDebug", 639);
    }

    dispatch_get_specific(*v5);
    v55 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v86 = "NFHardwareDebug";
      v87 = 1024;
      v88 = 639;
      _os_log_impl(&dword_297F52000, v55, OS_LOG_TYPE_ERROR, "%{public}s:%i Error", buf, 0x12u);
    }
  }

  usleep(0x4E20u);
  dispatch_get_specific(*v5);
  v56 = NFLogGetLogger();
  if (v56)
  {
    v56(6, "%s:%i HW Debugging - FLOW CHECK - EXPECTED ON", "NFHardwareDebug", 643);
  }

  dispatch_get_specific(*v5);
  v57 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v86 = "NFHardwareDebug";
    v87 = 1024;
    v88 = 643;
    _os_log_impl(&dword_297F52000, v57, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - FLOW CHECK - EXPECTED ON", buf, 0x12u);
  }

  v58 = *(*v2 + 13);
  if (v58)
  {
    v59 = (v58(*(*v2 + 18)) != 0) << 11;
  }

  else
  {
    v59 = 2048;
  }

  dispatch_get_specific(*v5);
  v60 = NFLogGetLogger();
  if (v60)
  {
    v60(6, "%s:%i HW Debugging - POWERING OFF", "NFHardwareDebug", 647);
  }

  v61 = v84 | v9 | v83;
  dispatch_get_specific(*v5);
  v62 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v86 = "NFHardwareDebug";
    v87 = 1024;
    v88 = 647;
    _os_log_impl(&dword_297F52000, v62, OS_LOG_TYPE_DEFAULT, "%{public}s:%i HW Debugging - POWERING OFF", buf, 0x12u);
  }

  v63 = v61 | v34;
  v64 = *(*v2 + 19);
  if (v64 && (v64(*(*v2 + 33), 0) & 1) == 0)
  {
    dispatch_get_specific(*v5);
    v65 = NFLogGetLogger();
    if (v65)
    {
      v65(3, "%s:%i Error", "NFHardwareDebug", 649);
    }

    dispatch_get_specific(*v5);
    v66 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v86 = "NFHardwareDebug";
      v87 = 1024;
      v88 = 649;
      _os_log_impl(&dword_297F52000, v66, OS_LOG_TYPE_ERROR, "%{public}s:%i Error", buf, 0x12u);
    }
  }

  v67 = v63 | v79;
  v68 = *(*v2 + 20);
  if (v68 && (v68(*(*v2 + 33), 0) & 1) == 0)
  {
    dispatch_get_specific(*v5);
    v69 = NFLogGetLogger();
    if (v69)
    {
      v69(3, "%s:%i Error", "NFHardwareDebug", 651);
    }

    dispatch_get_specific(*v5);
    v70 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v86 = "NFHardwareDebug";
      v87 = 1024;
      v88 = 651;
      _os_log_impl(&dword_297F52000, v70, OS_LOG_TYPE_ERROR, "%{public}s:%i Error", buf, 0x12u);
    }
  }

  if (!a1)
  {
    NFHardwareInterfaceClose(v2);
  }

  v71 = v67 | v82 | v81 | v80 | v78 | v46 | v50 | v59;
  dispatch_get_specific(*v5);
  v72 = NFLogGetLogger();
  if (v71 == 4095)
  {
    if (v72)
    {
      v72(3, "%s:%i HW error : unit is not powering cycling.", "NFHardwareDebug", 667);
    }

    dispatch_get_specific(*v5);
    v73 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v86 = "NFHardwareDebug";
      v87 = 1024;
      v88 = 667;
      v75 = "%{public}s:%i HW error : unit is not powering cycling.";
      goto LABEL_130;
    }
  }

  else
  {
    if (v71)
    {
      if (v72)
      {
        v72(3, "%s:%i HW debugging result : 0x%04X", "NFHardwareDebug", 670, v71);
      }

      dispatch_get_specific(*v5);
      v76 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v86 = "NFHardwareDebug";
        v87 = 1024;
        v88 = 670;
        v89 = 1024;
        v90 = v67 | v82 | v81 | v80 | v78 | v46 | v50 | v59;
        _os_log_impl(&dword_297F52000, v76, OS_LOG_TYPE_ERROR, "%{public}s:%i HW debugging result : 0x%04X", buf, 0x18u);
      }

      goto LABEL_136;
    }

    if (v72)
    {
      v72(3, "%s:%i HW error : unit is not powering on.", "NFHardwareDebug", 664);
    }

    dispatch_get_specific(*v5);
    v73 = NFSharedLogGetLogger();
    result = os_log_type_enabled(v73, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136446466;
      v86 = "NFHardwareDebug";
      v87 = 1024;
      v88 = 664;
      v75 = "%{public}s:%i HW error : unit is not powering on.";
LABEL_130:
      _os_log_impl(&dword_297F52000, v73, OS_LOG_TYPE_ERROR, v75, buf, 0x12u);
      result = 0;
    }
  }

LABEL_137:
  v77 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t NFHardwareInterfaceValidateSPMIConfig(uint64_t a1)
{
  v1 = *(*a1 + 208);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceSetSPMIConfig(uint64_t a1)
{
  v1 = *(*a1 + 216);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 1;
  }
}

uint64_t NFHardwareInterfaceWasItNACK(uint64_t a1)
{
  v1 = *(*a1 + 224);
  if (v1)
  {
    return v1(*(*a1 + 264));
  }

  else
  {
    return 0;
  }
}

uint64_t NFHardwareInterfaceIsSupported(char *__s2)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!__s2 || !strncmp("com.apple.", __s2, 0xAuLL) || !strncmp("/dev/", __s2, 5uLL))
  {
    v7 = *MEMORY[0x29EDCA608];

    return NFHardwareSerialIsSupported(__s2);
  }

  else
  {
    v2 = MEMORY[0x29EDC9730];
    dispatch_get_specific(*MEMORY[0x29EDC9730]);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      Logger(3, "%s:%i Unmatched interface %s", "NFHardwareInterfaceIsSupported", 720, __s2);
    }

    dispatch_get_specific(*v2);
    v4 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v9 = "NFHardwareInterfaceIsSupported";
      v10 = 1024;
      v11 = 720;
      v12 = 2080;
      v13 = __s2;
      _os_log_impl(&dword_297F52000, v4, OS_LOG_TYPE_ERROR, "%{public}s:%i Unmatched interface %s", buf, 0x1Cu);
    }

    v5 = *MEMORY[0x29EDCA608];
    return 0;
  }
}

uint64_t NFHardwareInterfaceHasExternalSPMIIRQ(UInt8 *a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = *MEMORY[0x29EDBB110];
  v3 = IOServiceNameMatching("stockholm-spmi");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    v5 = IOServiceNameMatching("stockholm");
    v6 = IOServiceGetMatchingService(v2, v5);
    if (v6)
    {
      v7 = v6;
      v8 = IORegistryEntrySearchCFProperty(v6, "IOService", @"se-spmi-irq", *MEMORY[0x29EDB8ED8], 0);
      if (v8)
      {
        v9 = v8;
        TypeID = CFDataGetTypeID();
        if (TypeID == CFGetTypeID(v9))
        {
          BytePtr = CFDataGetBytePtr(v9);
          if (BytePtr)
          {
            v12 = BytePtr;
            if (CFDataGetLength(v9))
            {
              *a1 = *v12;
            }
          }

          v13 = 1;
        }

        else
        {
          v13 = 0;
        }

        CFRelease(v9);
      }

      else
      {
        v13 = 0;
      }

      IOObjectRelease(v7);
    }

    else
    {
      v14 = MEMORY[0x29EDC9730];
      dispatch_get_specific(*MEMORY[0x29EDC9730]);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        Logger(3, "%s:%i Unexpected state.", "NFHardwareInterfaceHasExternalSPMIIRQ", 753);
      }

      dispatch_get_specific(*v14);
      v16 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v20 = "NFHardwareInterfaceHasExternalSPMIIRQ";
        v21 = 1024;
        v22 = 753;
        _os_log_impl(&dword_297F52000, v16, OS_LOG_TYPE_ERROR, "%{public}s:%i Unexpected state.", buf, 0x12u);
      }

      v13 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x29EDCA608];
  return v13;
}