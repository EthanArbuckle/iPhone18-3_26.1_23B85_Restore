void sub_32D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    ramrod_log_msg("updater_log: %s", a2, a3, a4, a5, a6, a7, a8, a2);
  }
}

CFMutableDictionaryRef ramrod_update_copy_deviceinfo(int a1, CFErrorRef *a2)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = Mutable;
  if (Mutable)
  {
    v6 = &kCFBooleanTrue;
    if (!a1)
    {
      v6 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(Mutable, @"PreflightRequired", *v6);
    CFDictionarySetValue(v5, @"PreflightContext", @"BootedOS");
    updated = ramrod_update_copy_deviceinfo_with_options(v5, a2);
  }

  else
  {
    sub_D88A0();
    updated = 0;
  }

  AMSupportSafeRelease();
  return updated;
}

BOOL ramrod_should_update_rose(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = 0;
    v9 = "Skipping checking Rose for booted update\n";
  }

  else
  {
    has_rose = ramrod_device_has_rose();
    v8 = has_rose != 0;
    if (has_rose)
    {
      v9 = "Rose is present. Will update\n";
    }

    else
    {
      v9 = "Rose not present\n";
    }
  }

  ramrod_log_msg(v9, a2, a3, a4, a5, a6, a7, a8, v12);
  return v8;
}

uint64_t ramrod_device_has_rose()
{
  v0 = IOServiceNameMatching("rose");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (!MatchingService)
  {
    ramrod_log_msg("Service does not exist\n", v1, v2, v3, v4, v5, v6, v7, v51);
    v42 = 0;
    goto LABEL_18;
  }

  if (!ramrod_should_do_legacy_restored_internal_behaviors())
  {
    goto LABEL_17;
  }

  valuePtr = 0;
  v9 = MGCopyAnswer();
  v17 = v9;
  if (!v9)
  {
    v41 = "Failed to get HW model\n";
    goto LABEL_16;
  }

  v18 = CFGetTypeID(v9);
  if (v18 != CFStringGetTypeID())
  {
    v41 = "HW model is not a string\n";
    goto LABEL_16;
  }

  if (!CFStringHasSuffix(v17, @"DEV"))
  {
    v41 = "Not a DEV board\n";
LABEL_16:
    ramrod_log_msg(v41, v10, v11, v12, v13, v14, v15, v16, v51);
    goto LABEL_17;
  }

  ramrod_log_msg("DEV board\n", v10, v11, v12, v13, v14, v15, v16, v51);
  v26 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
  if (!v26)
  {
    ramrod_log_msg("Failed to create zero\n", v19, v20, v21, v22, v23, v24, v25, v52);
    goto LABEL_17;
  }

  v27 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"ECID", kCFAllocatorDefault, 1u);
  v35 = v27;
  if (!v27)
  {
    v40 = "ECID property does not exist\n";
    goto LABEL_28;
  }

  v36 = CFGetTypeID(v27);
  if (v36 != CFNumberGetTypeID())
  {
    v40 = "ECID property is not a number\n";
    goto LABEL_28;
  }

  if (CFNumberCompare(v26, v35, 0) == kCFCompareEqualTo)
  {
    v40 = "ECID property is zero\n";
    goto LABEL_28;
  }

  v37 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"ChipID", kCFAllocatorDefault, 1u);
  v38 = v37;
  if (!v37)
  {
    v40 = "ChipID property does not exist\n";
    goto LABEL_28;
  }

  v39 = CFGetTypeID(v37);
  if (v39 != CFNumberGetTypeID())
  {
    v40 = "ChipID property is not a number\n";
    goto LABEL_28;
  }

  if (CFNumberCompare(v26, v38, 0))
  {
LABEL_17:
    v42 = 1;
    goto LABEL_18;
  }

  v40 = "ChipID property is zero\n";
LABEL_28:
  ramrod_log_msg(v40, v28, v29, v30, v31, v32, v33, v34, v52);
  v42 = 0;
LABEL_18:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  ramrod_log_msg("result: %u\n", v43, v44, v45, v46, v47, v48, v49, v42);
  return v42;
}

BOOL ramrod_should_update_centauri(int a1)
{
  v9 = os_variant_uses_ephemeral_storage();
  if (v9)
  {
    v10 = "ramrod_update running in limited environment\n";
  }

  else
  {
    v10 = "ramrod_update running in normal env\n";
  }

  ramrod_log_msg(v10, v2, v3, v4, v5, v6, v7, v8, v19);
  if (a1 && v9)
  {
    ramrod_log_msg("Skipping checking Centauri in NeRD for bootedUpdate=true\n", v11, v12, v13, v14, v15, v16, v17, v20);
    return 0;
  }

  else
  {

    return ramrod_device_has_centauri();
  }
}

BOOL ramrod_device_has_centauri()
{
  v0 = IOServiceNameMatching("centauri");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  v9 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  ramrod_log_msg("%s: %s\n", v2, v3, v4, v5, v6, v7, v8, "ramrod_device_has_centauri");
  return v9 != 0;
}

uint64_t ramrod_write_ean(const __CFDictionary *a1, CFErrorRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {

    return sub_33250(a1, 0, 0, 0, a5, a6, a7, a8);
  }

  else
  {
    sub_D88B4(a2, a2, a3, a4, a5, a6, a7, a8);
    return 0;
  }
}

uint64_t sub_33250(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  connect = 0;
  if (!a1)
  {
    ramrod_log_msg("ean_dictionary is NULL\n", a2, a3, a4, a5, a6, a7, a8, v26);
    return 0;
  }

  v8 = a4;
  if (!CFDictionaryGetCount(a1))
  {
    return 1;
  }

  v12 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v12);
  v21 = MatchingService;
  if (!MatchingService)
  {
    v25 = "IOServiceGetMatchingService failed to find kNVMeEANServiceMatchName\n";
LABEL_18:
    ramrod_log_msg(v25, v14, v15, v16, v17, v18, v19, v20, v26);
    goto LABEL_19;
  }

  v22 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
  if (v22)
  {
    ramrod_log_msg("IOServiceOpen returned result=0x%04x\n", v14, v15, v16, v17, v18, v19, v20, v22);
LABEL_19:
    v23 = 0;
    goto LABEL_7;
  }

  if (!connect)
  {
    v25 = "IOServiceOpen returned IO_OBJECT_NULL\n";
    goto LABEL_18;
  }

  v28 = v8;
  v23 = 1;
  BYTE1(v28) = 1;
  context[0] = connect;
  context[3] = 0;
  context[4] = CFDictionaryGetCount(a1);
  context[1] = a2;
  context[2] = a3;
  CFDictionaryApplyFunction(a1, sub_43330, context);
  if (!BYTE1(v28))
  {
    v25 = "Failed to write to EAN namespace\n";
    goto LABEL_18;
  }

LABEL_7:
  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v21)
  {
    IOObjectRelease(v21);
  }

  return v23;
}

uint64_t ramrod_erase_ean_key(const __CFString *a1, CFErrorRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    sub_D892C(a2, a2, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  if (!sub_33448(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    CFStringGetCStringPtr(a1, 0x8000100u);
    ramrod_log_msg("%s: %s does not exist.\n", v24, v25, v26, v27, v28, v29, v30, "ramrod_erase_ean_key");
    return 1;
  }

  if (sub_335B8(a1, v10, v11, v12, v13, v14, v15, v16))
  {
    return 1;
  }

  sub_D88F0(a2, v17, v18, v19, v20, v21, v22, v23);
  return 0;
}

uint64_t sub_33448(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  input = 0;
  outputCnt = 1;
  connect = 0;
  output = 0;
  if (!a1)
  {
    v23 = "key is NULL.\n";
LABEL_14:
    ramrod_log_msg(v23, a2, a3, a4, a5, a6, a7, a8, outputStruct);
    v19 = 0;
    goto LABEL_7;
  }

  v8 = sub_430C4(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v8)
  {
    v23 = "payloadType is invalid.\n";
    goto LABEL_14;
  }

  v9 = v8;
  v10 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v10);
  v19 = MatchingService;
  if (MatchingService)
  {
    v20 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
    if (v20)
    {
      ramrod_log_msg("IOServiceOpen returned result=0x%04x.\n", v12, v13, v14, v15, v16, v17, v18, v20);
      goto LABEL_7;
    }

    if (connect)
    {
      input = v9;
      v21 = IOConnectCallMethod(connect, 3u, &input, 1u, 0, 0, &output, &outputCnt, 0, 0);
      if (!v21)
      {
        goto LABEL_7;
      }

      outputStruct = v21;
      v24 = "getSize failed, kernResult = 0x%x.\n";
    }

    else
    {
      v24 = "IOServiceOpen returned IO_OBJECT_NULL.\n";
    }
  }

  else
  {
    v24 = "IOServiceGetMatchingService failed to find kNVMeEANServiceMatchName.\n";
  }

  ramrod_log_msg(v24, v12, v13, v14, v15, v16, v17, v18, outputStruct);
LABEL_7:
  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v19)
  {
    IOObjectRelease(v19);
  }

  return output;
}

uint64_t sub_335B8(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  connect = 0;
  input = 0;
  output = 0;
  outputCnt = 1;
  if (a1)
  {
    v15 = sub_430C4(a1, a2, a3, a4, a5, a6, a7, a8);
    if (!v15)
    {
      ramrod_log_msg("payloadType is invalid.\n", v8, v9, v10, v11, v12, v13, v14, outputStruct);
      v25 = 0;
      goto LABEL_7;
    }

    v16 = IOServiceMatching("AppleNVMeEAN");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v16);
    v25 = MatchingService;
    if (!MatchingService)
    {
      v29 = "IOServiceGetMatchingService failed to find kNVMeEANServiceMatchName.\n";
LABEL_18:
      ramrod_log_msg(v29, v18, v19, v20, v21, v22, v23, v24, outputStruct);
      goto LABEL_19;
    }

    v26 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
    if (!v26)
    {
      if (connect)
      {
        input = v15;
        ramrod_log_msg("Erasing EAN key %c%c%c%c.\n", v18, v19, v20, v21, v22, v23, v24, SBYTE3(v15));
        v15 = 1;
        v27 = IOConnectCallMethod(connect, 5u, &input, 1u, 0, 0, &output, &outputCnt, 0, 0);
        if (!v27)
        {
          goto LABEL_7;
        }

        outputStruct = v27;
        v29 = "eraseImage failed, kernResult = 0x%x.\n";
      }

      else
      {
        v29 = "IOServiceOpen returned IO_OBJECT_NULL.\n";
      }

      goto LABEL_18;
    }

    ramrod_log_msg("IOServiceOpen returned result=0x%04x.\n", v18, v19, v20, v21, v22, v23, v24, v26);
  }

  else
  {
    ramrod_log_msg("key is NULL.\n", a2, a3, a4, a5, a6, a7, a8, outputStruct);
    v25 = 0;
  }

LABEL_19:
  v15 = 0;
LABEL_7:
  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v25)
  {
    IOObjectRelease(v25);
  }

  return v15;
}

uint64_t ramrod_copy_fdr_data_instance(uint64_t a1, uint64_t a2, const __CFDictionary *a3, CFErrorRef *a4)
{
  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a3);
    if (!MutableCopy)
    {
      sub_D8968(a4, v6, v7, v8, v9, v10, v11, v12);
LABEL_25:
      v43 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!MutableCopy)
    {
      sub_D8AD0(a4, v14, v15, v16, v17, v18, v19, v20);
      goto LABEL_25;
    }
  }

  CFDictionaryAddValue(MutableCopy, @"VerifyData", kCFBooleanFalse);
  CFDictionaryAddValue(MutableCopy, @"GetCombined", kCFBooleanTrue);
  CFDictionaryAddValue(MutableCopy, @"StripImg4", kCFBooleanFalse);
  if (!CFDictionaryContainsKey(MutableCopy, @"DataDirectory"))
  {
    ramrod_log_msg("WARNING: using default FDR location of %s\n", v21, v22, v23, v24, v25, v26, v27, "/mnt1");
    v35 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s/FactoryData/%@", "/mnt6", @"/System/Library/Caches/com.apple.factorydata");
    if (!v35)
    {
      sub_D8A94(a4, v28, v29, v30, v31, v32, v33, v34);
      goto LABEL_25;
    }

    URLFromString = AMSupportCreateURLFromString();
    if (!URLFromString)
    {
      sub_D8A58(a4, v35, v36, v37, v38, v39, v40, v41);
      goto LABEL_25;
    }

    CFDictionaryAddValue(MutableCopy, @"DataDirectory", URLFromString);
  }

  if (!CFDictionaryContainsKey(MutableCopy, @"APTicket"))
  {
    v51 = ramrod_ticket_copy();
    if (!v51)
    {
      sub_D8A1C(a4, v44, v45, v46, v47, v48, v49, v50);
      goto LABEL_25;
    }

    CFDictionaryAddValue(MutableCopy, @"APTicket", v51);
    if (a2)
    {
      goto LABEL_11;
    }

LABEL_14:
    v52 = AMFDRSealingMapCopyMultiInstanceForClass();
    v60 = v52;
    if (v52)
    {
      v61 = CFGetTypeID(v52);
      if (v61 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(v60) > 0)
        {
          CFArrayGetValueAtIndex(v60, 0);
          v43 = AMFDRSealingMapCopyLocalData();
          goto LABEL_20;
        }

        sub_D89A4(a4, v65, v66, v67, v68, v69, v70, v71);
      }

      else
      {
        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 6, 0, @"%s: malformed data from AMFDRSealingMapCopyMultiInstanceForClass is not CFArray.", v62, v63, v64, "ramrod_copy_fdr_data_instance");
      }
    }

    else
    {
      sub_D89E0(a4, v53, v54, v55, v56, v57, v58, v59);
    }

    v43 = 0;
    goto LABEL_20;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

LABEL_11:
  v43 = AMFDRSealingMapCopyLocalData();
LABEL_20:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v43;
}

BOOL ramrod_device_has_savage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = 0;
  ramrod_log_msg("opening %s\n", a2, a3, a4, a5, a6, a7, a8, "/usr/lib/updaters/libSavageUpdater_iOS.dylib");
  v8 = dlopen("/usr/lib/updaters/libSavageUpdater_iOS.dylib", 261);
  if (!v8)
  {
    dlerror();
    ramrod_log_msg("unable to open %s. %s, skipping step\n", v17, v18, v19, v20, v21, v22, v23, "/usr/lib/updaters/libSavageUpdater_iOS.dylib");
    return 0;
  }

  v13 = ramrod_copy_updater_functions(v8, "Savage", &v25, 0, v9, v10, v11, v12);
  v14 = v25;
  if (!v13)
  {
    v16 = 0;
    if (!v25)
    {
      return v16;
    }

    goto LABEL_5;
  }

  v15 = *(v25 + 1);
  if (!v15)
  {
    v16 = 0;
    goto LABEL_5;
  }

  v16 = v15(0, 0) == 0;
  v14 = v25;
  if (v25)
  {
LABEL_5:
    free(v14);
  }

  return v16;
}

BOOL ramrod_should_update_savage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    ramrod_log_msg("Skipping checking Savage for booted update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
    return 0;
  }

  else
  {

    return ramrod_device_has_savage(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t ramrod_device_has_veridian()
{
  v0 = IOServiceMatching("AppleGasGaugeUpdate");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (MatchingService)
  {
    v9 = MatchingService;
    if (!ramrod_should_do_legacy_restored_internal_behaviors())
    {
      goto LABEL_14;
    }

    v10 = MGCopyAnswer();
    v18 = v10;
    if (v10)
    {
      v19 = CFGetTypeID(v10);
      if (v19 == CFStringGetTypeID())
      {
        if (!CFStringHasSuffix(v18, @"DEV"))
        {
          goto LABEL_14;
        }

        keys = @"built-in";
        v20 = IOServiceMatching("IOPMPowerSource");
        v21 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &kCFBooleanTrue, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v20)
        {
          if (v21)
          {
            CFDictionarySetValue(v20, @"IOPropertyMatch", v21);
            v29 = IOServiceGetMatchingService(kIOMasterPortDefault, v20);
            if (v29)
            {
              v30 = v29;
              CFProperty = IORegistryEntryCreateCFProperty(v29, @"Serial", kCFAllocatorDefault, 0);
              IOObjectRelease(v30);
              AMSupportSafeRelease();
              if (CFProperty)
              {
                v32 = CFGetTypeID(CFProperty);
                if (v32 == CFStringGetTypeID())
                {
                  if (!CFStringGetLength(CFProperty))
                  {
                    ramrod_log_msg("Dev board with no Veridian attached - pretending we don't support Veridian.\n", v40, v41, v42, v43, v44, v45, v46, v51);
                    v47 = 0;
LABEL_15:
                    IOObjectRelease(v9);
                    goto LABEL_16;
                  }
                }

                else
                {
                  ramrod_log_msg("Veridian Serial not a string - not expected\n", v33, v34, v35, v36, v37, v38, v39, v51);
                }

LABEL_14:
                v47 = 1;
                goto LABEL_15;
              }

              goto LABEL_23;
            }

            v50 = "unable to find IOPMPowerSource service\n";
          }

          else
          {
            v50 = "Failed to allocate properties\n";
          }
        }

        else
        {
          v50 = "Failed to allocate matching\n";
        }

        ramrod_log_msg(v50, v22, v23, v24, v25, v26, v27, v28, v51);
        AMSupportSafeRelease();
LABEL_23:
        v49 = "Veridian Serial is NULL - not expected\n";
        goto LABEL_24;
      }

      v49 = "HW model is not a string\n";
    }

    else
    {
      v49 = "Failed to get HW model\n";
    }

LABEL_24:
    ramrod_log_msg(v49, v11, v12, v13, v14, v15, v16, v17, v51);
    goto LABEL_14;
  }

  ramrod_log_msg("Not a Veridian device.\n", v2, v3, v4, v5, v6, v7, v8, v51);
  v47 = 0;
LABEL_16:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v47;
}

BOOL ramrod_device_ota_veridian(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return ramrod_device_has_veridian() != 0;
  }

  ramrod_log_msg("Skipping checking Veridian for booted update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

const __CFString *ramrod_device_has_appletcon(uint64_t a1)
{
  v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/product");
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = v2;
  CFProperty = IORegistryEntryCreateCFProperty(v2, @"tcon-path", kCFAllocatorDefault, 0);
  IOObjectRelease(v3);
  if (!CFProperty)
  {
    v38 = "tcon-path pointer not found.\n";
LABEL_18:
    ramrod_log_msg(v38, v5, v6, v7, v8, v9, v10, v11, v48);
    goto LABEL_22;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID != CFGetTypeID(CFProperty))
  {
    v38 = "IORegistryEntryCreateCFProperty returned non CFDataRef\n";
    goto LABEL_18;
  }

  Length = CFDataGetLength(CFProperty);
  if (!Length)
  {
    v38 = "tcon-path contains invalid string\n";
    goto LABEL_18;
  }

  v14 = Length;
  v15 = malloc(Length + 15);
  v16 = v15;
  if (!v15)
  {
    v38 = "malloc returned NULL\n";
    goto LABEL_18;
  }

  if (snprintf(v15, v14 + 15, "%s", "IODeviceTree:/") != 14)
  {
    v38 = "overflow";
    goto LABEL_18;
  }

  v50.length = CFDataGetLength(CFProperty);
  v50.location = 0;
  CFDataGetBytes(CFProperty, v50, v16 + 14);
  v16[v14 + 14] = 0;
  ramrod_log_msg("Looking for entry under %s\n", v17, v18, v19, v20, v21, v22, v23, v16);
  v24 = IORegistryEntryFromPath(kIOMasterPortDefault, v16);
  if (!v24)
  {
    v38 = "tcon-path points to non-existent node\n";
    goto LABEL_18;
  }

  v25 = v24;
  v26 = IORegistryEntryCreateCFProperty(v24, @"firmware", kCFAllocatorDefault, 0);
  IOObjectRelease(v25);
  if (!v26)
  {
    v39 = "No 'firmware' property found.\n";
LABEL_21:
    ramrod_log_msg(v39, v27, v28, v29, v30, v31, v32, v33, v48);
LABEL_22:
    updated = 0;
    goto LABEL_23;
  }

  v34 = CFDataGetTypeID();
  if (v34 != CFGetTypeID(v26))
  {
    v39 = "IORegistryEntryCreateCFProperty returned non CFDataRef\n";
    goto LABEL_21;
  }

  if (CFDataGetLength(v26) != 4)
  {
    v49 = CFDataGetLength(v26);
    ramrod_log_msg("version_data wrong length (%lu bytes)\n", v41, v42, v43, v44, v45, v46, v47, v49);
    goto LABEL_22;
  }

  BytePtr = CFDataGetBytePtr(v26);
  if (!BytePtr)
  {
    v39 = "CFDataGetBytePtr returned NULL\n";
    goto LABEL_21;
  }

  v36 = *BytePtr;
  ramrod_log_msg("AppleTCON flashable node found. (firmware=%d)\n", v27, v28, v29, v30, v31, v32, v33, *BytePtr);
  CFRelease(v26);
  if (!v36)
  {
    goto LABEL_22;
  }

  if (a1 && AMSupportGetValueForKeyPathInDict() == kCFBooleanTrue)
  {
    updated = (&dword_0 + 1);
  }

  else
  {
    updated = ramrod_update_supported(@"AppleTCON", @"AppleTCONUpdaterErrorDomain: AppleTCONUpdaterExecCommand - execCommand error");
  }

LABEL_23:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeFree();
  return updated;
}

BOOL ramrod_device_ota_appletcon(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return ramrod_device_has_appletcon(0) != 0;
  }

  ramrod_log_msg("Skipping checking TCON for booted update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

BOOL ramrod_device_has_appletconuarp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = 0;
  ramrod_log_msg("opening %s\n", a2, a3, a4, a5, a6, a7, a8, "/usr/lib/updaters/libTconUpdaterUARP.dylib");
  v8 = dlopen("/usr/lib/updaters/libTconUpdaterUARP.dylib", 261);
  if (!v8)
  {
    dlerror();
    ramrod_log_msg("unable to open %s. %s, skipping step\n", v17, v18, v19, v20, v21, v22, v23, "/usr/lib/updaters/libTconUpdaterUARP.dylib");
    return 0;
  }

  v13 = ramrod_copy_updater_functions(v8, "AppleTconUARP", &v25, 0, v9, v10, v11, v12);
  v14 = v25;
  if (!v13)
  {
    v16 = 0;
    if (!v25)
    {
      return v16;
    }

    goto LABEL_5;
  }

  v15 = *(v25 + 1);
  if (!v15)
  {
    v16 = 0;
    goto LABEL_5;
  }

  v16 = v15(0, 0) == 0;
  v14 = v25;
  if (v25)
  {
LABEL_5:
    free(v14);
  }

  return v16;
}

BOOL ramrod_should_update_appletconuarp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return ramrod_device_has_appletconuarp(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  ramrod_log_msg("Skipping checking AppleTconUARP for booted update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

BOOL _ramrod_device_has_usbcretimer(const __CFString *a1)
{
  existing = 0;
  v20 = "_ramrod_device_has_usbcretimer";
  ramrod_log_msg_cf(@"%s(%@) entered\n");
  if (ramrod_should_do_legacy_restored_internal_behaviors())
  {
    entryID = 0;
    os_parse_boot_arg_int();
  }

  v2 = IOServiceNameMatching("atcrt");
  if (!IOServiceGetMatchingServices(kIOMasterPortDefault, v2, &existing))
  {
    v5 = IOIteratorNext(existing);
    if (v5)
    {
      v6 = v5;
      v3 = 0;
      while (1)
      {
        CFProperty = IORegistryEntryCreateCFProperty(v6, @"name", kCFAllocatorDefault, 0);
        if (CFProperty)
        {
          break;
        }

LABEL_20:
        IOObjectRelease(v6);
        v6 = IOIteratorNext(existing);
        if (!v6)
        {
          goto LABEL_5;
        }
      }

      v8 = CFProperty;
      entryID = 0;
      IORegistryEntryGetRegistryEntryID(v6, &entryID);
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v8))
      {
        v17 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, v8, 0x8000100u);
        if (v17)
        {
          v18 = v17;
          if (CFStringHasPrefix(v17, a1))
          {
            ++v3;
          }

          CFRelease(v18);
          goto LABEL_19;
        }

        v19 = "nameString NULL\n";
      }

      else
      {
        v19 = "nameData not CFDataRef\n";
      }

      ramrod_log_msg(v19, v10, v11, v12, v13, v14, v15, v16, v20);
LABEL_19:
      CFRelease(v8);
      goto LABEL_20;
    }
  }

  v3 = 0;
LABEL_5:
  ramrod_log_msg_cf(@"%s(%@) found %lu nodes\n", "_ramrod_device_has_usbcretimer", a1, v3);
  if (existing)
  {
    IOObjectRelease(existing);
  }

  return v3 != 0;
}

BOOL ramrod_should_update_usbcretimer(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return ramrod_device_has_usbcretimer();
  }

  ramrod_log_msg("Skipping checking retimer for booted update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

BOOL ramrod_should_update_usbcretimer_uarp(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return _ramrod_device_has_usbcretimer(@"uatcrt");
  }

  ramrod_log_msg("Skipping checking retimer for booted update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

BOOL ramrod_device_has_ace3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = 0;
  ramrod_log_msg("opening %s\n", a2, a3, a4, a5, a6, a7, a8, "/usr/lib/updaters/libAce3Updater.dylib");
  v8 = dlopen("/usr/lib/updaters/libAce3Updater.dylib", 261);
  if (!v8)
  {
    dlerror();
    ramrod_log_msg("unable to open %s. %s, skipping step\n", v17, v18, v19, v20, v21, v22, v23, "/usr/lib/updaters/libAce3Updater.dylib");
    return 0;
  }

  v13 = ramrod_copy_updater_functions(v8, "Ace3", &v25, 0, v9, v10, v11, v12);
  v14 = v25;
  if (!v13)
  {
    v16 = 0;
    if (!v25)
    {
      return v16;
    }

    goto LABEL_5;
  }

  v15 = *(v25 + 1);
  if (!v15)
  {
    v16 = 0;
    goto LABEL_5;
  }

  v16 = v15(0, 0) == 0;
  v14 = v25;
  if (v25)
  {
LABEL_5:
    free(v14);
  }

  return v16;
}

BOOL ramrod_should_update_ace3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    ramrod_log_msg("Skipping checking Ace3 for booted update\n", a2, a3, a4, a5, a6, a7, a8, vars0);
    return 0;
  }

  else
  {

    return ramrod_device_has_ace3(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t ramrod_device_has_manta_mcu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_device_has_manta_mcu");
  v8 = IOServiceNameMatching("manta-b");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v8);
  if (MatchingService)
  {
    v17 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"supports-mcu-restore", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v26 = CFProperty;
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v26))
      {
        if (CFDataGetLength(v26) <= 0)
        {
          Length = CFDataGetLength(v26);
          ramrod_log_msg("supports-mcu-restore wrong length (%lu bytes)\n", v38, v39, v40, v41, v42, v43, v44, Length);
          goto LABEL_12;
        }

        if (*CFDataGetBytePtr(v26) == 1)
        {
          v35 = 1;
LABEL_13:
          IOObjectRelease(v17);
          CFRelease(v26);
          return v35;
        }

        v45 = *CFDataGetBytePtr(v26);
        v36 = "supports-mcu-restore is %u, the device does not support manta mcu restore time firmware update.\n";
      }

      else
      {
        v36 = "IORegistryEntryCreateCFProperty returned non CFDataRef for supports-mcu-restore property.\n";
      }

      ramrod_log_msg(v36, v28, v29, v30, v31, v32, v33, v34, v45);
LABEL_12:
      v35 = 0;
      goto LABEL_13;
    }

    ramrod_log_msg("manta-b ioregistry entry does not have supports-mcu-restore property, the device does not support manta mcu restore time firmware update.\n", v19, v20, v21, v22, v23, v24, v25, v45);
    IOObjectRelease(v17);
  }

  else
  {
    ramrod_log_msg("Could not find manta-b ioregistry entry, the device does not support manta mcu.\n", v10, v11, v12, v13, v14, v15, v16, v45);
  }

  return 0;
}

BOOL ramrod_should_update_manta_mcu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return ramrod_device_has_manta_mcu(a1, a2, a3, a4, a5, a6, a7, a8) != 0;
  }

  ramrod_log_msg("Skipping checking manta mcu for booted update.\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

BOOL ramrod_device_has_vinyl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = 0;
  v34 = 0;
  ramrod_log_msg("opening %s\n", a2, a3, a4, a5, a6, a7, a8, "/usr/lib/updaters/libVinylUpdater.dylib");
  v8 = dlopen("/usr/lib/updaters/libVinylUpdater.dylib", 261);
  v12 = v8;
  if (!v8)
  {
    dlerror();
    ramrod_log_msg("unable to open %s. %s, skipping step\n", v24, v25, v26, v27, v28, v29, v30, "/usr/lib/updaters/libVinylUpdater.dylib");
    return v12;
  }

  v13 = sub_2FDE8(v8, "Vinyl", "UpdaterSupported", 0, 0, v9, v10, v11);
  if (!v13 || !v13(&v33))
  {
    ramrod_log_msg("Vinyl updaterSupported missing or returned not supported\n", v14, v15, v16, v17, v18, v19, v20, v32);
    return 0;
  }

  v21 = ramrod_copy_updater_functions(v12, "Vinyl", &v34, 0, v17, v18, v19, v20);
  v22 = v34;
  if (!v21)
  {
    v12 = 0;
    if (!v34)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v23 = *(v34 + 1);
  if (!v23)
  {
    v12 = 0;
    goto LABEL_7;
  }

  v12 = v23(0, &v33) == 0;
  v22 = v34;
  if (v34)
  {
LABEL_7:
    free(v22);
  }

  return v12;
}

BOOL ramrod_device_has_fillmore()
{
  v3 = 0;
  v2 = 4;
  return !sysctlbyname("hw.features.fillmore", &v3, &v2, 0, 0) && v3 == 1;
}

BOOL ramrod_device_has_fillmore_rcp1()
{
  v3 = 0;
  v2 = 4;
  return !sysctlbyname("hw.features.fillmore_rcp1", &v3, &v2, 0, 0) && v3 == 1;
}

uint64_t ramrod_device_has_sep()
{
  v0 = IOServiceMatching("AppleSEPManager");
  result = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (result)
  {
    IOObjectRetain(result);
    return 1;
  }

  return result;
}

uint64_t ramrod_device_has_sep_with_persistent_storage()
{
  v0 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/arm-io/sep/iop-sep-nub/Ocelot");
  if (v0)
  {
    IOObjectRelease(v0);
    return 1;
  }

  else
  {

    return _ramrod_device_has_sandcat();
  }
}

uint64_t ramrod_load_sep_os_from_system_partition(CFErrorRef *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!ramrod_init_gigalocker_if_xart(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    ramrod_log_msg("%s: unable to initialize gigalocker\n", v9, v10, v11, v12, v13, v14, v15, "ramrod_load_sep_os_from_system_partition");
    ramrod_create_error_cf(a1, @"RamrodErrorDomain", 7, 0, @"%s: Failed to initialize gigalocker", v36, v37, v38, "ramrod_load_sep_os_from_system_partition");
    return 0;
  }

  bzero(v65, 0x400uLL);
  memset(&v64, 0, sizeof(v64));
  if (!ramrod_get_system_partition_device_node(v65, 0x400uLL))
  {
    ramrod_log_msg("%s: unable to find system partition\n", v16, v17, v18, v19, v20, v21, v22, "ramrod_load_sep_os_from_system_partition");
    ramrod_create_error_cf(a1, @"RamrodErrorDomain", 8, 0, @"%s: Failed to get system partition device node while attempting to load the SEP OS", v39, v40, v41, "ramrod_load_sep_os_from_system_partition");
    return 0;
  }

  v23 = ramrod_mount_filesystem_no_fsck_opt_err(v65, "/mnt1", 1, 0);
  if (v23)
  {
    v31 = v23;
    ramrod_log_msg("%s: unable to mount system partition\n", v24, v25, v26, v27, v28, v29, v30, "ramrod_load_sep_os_from_system_partition");
    v32 = *__error();
    strerror(v31);
    ramrod_create_error_cf(a1, kCFErrorDomainPOSIX, v32, 0, @"%s: Failed to mount the system partition while attempting to load the SEP OS: err='%s'", v33, v34, v35, "ramrod_load_sep_os_from_system_partition");
    return 0;
  }

  if (stat("/mnt1/usr/standalone/firmware/sep-firmware.img4", &v64))
  {
    ramrod_log_msg("%s: unable to find sep firmware image in system partition\n", v44, v45, v46, v47, v48, v49, v50, "ramrod_load_sep_os_from_system_partition");
    v51 = *__error();
    v52 = __error();
    strerror(*v52);
    ramrod_create_error_cf(a1, kCFErrorDomainPOSIX, v51, 0, @"%s: Error attempting to stat SEP firmware from system partition: err='%s'", v53, v54, v55, "ramrod_load_sep_os_from_system_partition");
    sep_os_and_patch_from_filesystem = 0;
  }

  else
  {
    if (stat("/mnt1/usr/standalone/firmware/sep-patches.img4", &v64))
    {
      v63 = 0;
    }

    else
    {
      v63 = "/mnt1/usr/standalone/firmware/sep-patches.img4";
    }

    sep_os_and_patch_from_filesystem = ramrod_load_sep_os_and_patch_from_filesystem(0, "/mnt1/usr/standalone/firmware/sep-firmware.img4", v63, a1);
  }

  if (ramrod_unmount_filesystem("/mnt1"))
  {
    ramrod_log_msg("[%s]: failed to unmount SEP partition.\n", v56, v57, v58, v59, v60, v61, v62, "ramrod_load_sep_os_from_system_partition");
    return 0;
  }

  return sep_os_and_patch_from_filesystem;
}

uint64_t ramrod_init_gigalocker_if_xart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (ramrod_wait_for_internal_media(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    ramrod_log_msg("%s: error %d waiting for internal media\n", v8, v9, v10, v11, v12, v13, v14, "ramrod_init_gigalocker_if_xart");
    return 0;
  }

  if (ramrod_should_have_xart_partition())
  {
    bzero(v38, 0x400uLL);
    if (ramrod_get_xart_partition_device_node(v38, 0x400uLL))
    {
      v23 = ramrod_mount_filesystem_no_fsck_opt_err(v38, "/mnt7", 0, 0);
      if (v23)
      {
        ramrod_log_msg("%s: unable to mount xART volume\n", v24, v25, v26, v27, v28, v29, v30, "ramrod_init_gigalocker_if_xart");
        return 0;
      }

      if (!ramrod_init_gigalocker(v23, v24, v25, v26, v27, v28, v29, v30))
      {
        ramrod_log_msg("%s: gigalocker: FAULT\n", v31, v32, v33, v34, v35, v36, v37, "ramrod_init_gigalocker_if_xart");
        return 0;
      }

      ramrod_log_msg("%s: gigalocker: ONLINE\n", v31, v32, v33, v34, v35, v36, v37, "ramrod_init_gigalocker_if_xart");
    }

    else
    {
      ramrod_log_msg("%s: build supports xART but no xART volume present\n", v16, v17, v18, v19, v20, v21, v22, "ramrod_init_gigalocker_if_xart");
    }
  }

  return 1;
}

uint64_t ramrod_init_gigalocker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *off_1A9900;
  v27 = 0;
  ramrod_log_msg("entering ramrod_init_gigalocker\n", a2, a3, a4, a5, a6, a7, a8, v24);
  if (ramrod_device_has_sep() && ramrod_should_have_xart_partition())
  {
    v15 = ramrod_execute_command(&v26);
    if (v15)
    {
      ramrod_log_msg("seputil failure when attempting to init the gigalocker: %d\n", v16, v17, v18, v19, v20, v21, v22, v15);
      return 0;
    }
  }

  else
  {
    ramrod_log_msg("device does not have xART, skipping gigalocker init\n", v8, v9, v10, v11, v12, v13, v14, v25);
  }

  return 1;
}

uint64_t ramrod_shutdown_gigalocker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = *off_1A9918;
  v50 = 0;
  ramrod_log_msg("entering ramrod_shutdown_gigalocker\n", a2, a3, a4, a5, a6, a7, a8, v47);
  if (!ramrod_device_has_sep() || !ramrod_should_have_xart_partition())
  {
    ramrod_log_msg("device does not have xART, skipping gigalocker shutdown\n", v8, v9, v10, v11, v12, v13, v14, v48);
    return 1;
  }

  memset(v51, 0, sizeof(v51));
  apfs_container_device_node = ramrod_get_apfs_container_device_node(v51, 0x20uLL);
  if (off_1AD4A8 && apfs_container_device_node && LOBYTE(v51[0]))
  {
    ramrod_log_msg("APFSContainerWaitForReaper(%s) running...\n", v16, v17, v18, v19, v20, v21, v22, v51);
    v23 = APFSContainerWaitForReaper();
    if (v23)
    {
      strerror(v23);
      ramrod_log_msg("APFSContainerWaitForReaper(%s) failed: %d (%s)\n", v31, v32, v33, v34, v35, v36, v37, v51);
    }

    else
    {
      ramrod_log_msg("APFSContainerWaitForReaper(%s) completed\n", v24, v25, v26, v27, v28, v29, v30, v51);
    }
  }

  v39 = ramrod_execute_command(&v49);
  if (!v39)
  {
    return 1;
  }

  ramrod_log_msg("seputil failure when attempting to shutdown the gigalocker: %d\n", v40, v41, v42, v43, v44, v45, v46, v39);
  return 0;
}

uint64_t ramrod_load_sep_os(const __CFDictionary *a1, const __CFData *a2, const __CFData *a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v75 = 0;
  v76 = *off_1A9930;
  v77 = *&off_1A9940;
  v78 = xmmword_1A9950;
  ramrod_log_msg("entering ramrod_load_sep_os\n", a2, a3, a4, a5, a6, a7, a8, v72);
  if (ramrod_device_has_sep())
  {
    if (a1)
    {
      Value = CFDictionaryGetValue(a1, @"SEPRestore");
      if (Value == kCFBooleanTrue)
      {
        v20 = Value;
        v21 = CFDictionaryGetValue(a1, @"SEPLoadRequiresART");
        v22 = "--restore";
        if (v21 == v20)
        {
          v22 = "--restore+art";
        }

        *(&v76 + 1) = v22;
      }
    }

    if (_ramrod_device_has_sandcat())
    {
      v74 = 2;
      if (sub_351A4(a2, &v74, v23, v24, v25, v26, v27, v28))
      {
        v36 = v74;
      }

      else
      {
        ramrod_log_msg("Warning: No snid stitched to sep being loaded, will attempt to use flashing slot as proxy.\n", v29, v30, v31, v32, v33, v34, v35, v73);
        v36 = dword_1C4800;
        v74 = dword_1C4800;
      }

      asprintf(&v75, "--slot=%d", v36);
      if (!v75)
      {
        v63 = __error();
        ramrod_log_msg("unable to load sepos because sandcat slot print failed. error: %d\n", v64, v65, v66, v67, v68, v69, v70, *v63);
        goto LABEL_22;
      }

      *(&v77 + 1) = v75;
    }

    if (a3)
    {
      Length = CFDataGetLength(a2);
      v38 = CFDataGetLength(a3);
      MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, v38 + Length, a2);
      if (!MutableCopy)
      {
        ramrod_log_msg("combined_data allocation failure.\n", v39, v40, v41, v42, v43, v44, v45, v73);
        goto LABEL_22;
      }

      BytePtr = CFDataGetBytePtr(a3);
      v48 = CFDataGetLength(a3);
      CFDataAppendBytes(MutableCopy, BytePtr, v48);
    }

    else
    {
      MutableCopy = CFRetain(a2);
    }

    v49 = CFDataGetBytePtr(MutableCopy);
    v50 = CFDataGetLength(MutableCopy);
    v51 = ramrod_execute_command_with_input_data(&v76, v49, v50);
    if (v51)
    {
      ramrod_log_msg("seputil failure when attempting to load SEP OS firmware: %d\n", v52, v53, v54, v55, v56, v57, v58, v51);
      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: seputil failed when attempting to load SEP OS firmware: %d", v59, v60, v61, "ramrod_load_sep_os");
LABEL_22:
      v62 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    ramrod_log_msg("device does not have a SEP, load skipped\n", v12, v13, v14, v15, v16, v17, v18, v73);
  }

  v62 = 1;
LABEL_23:
  AMSupportSafeRelease();
  return v62;
}

uint64_t sub_351A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("Entering: %s\n", a2, a3, a4, a5, a6, a7, a8, "Boolean _ramrod_load_sep_nonce_slot_from_data(CFDataRef, int *)");
  if (a1)
  {

    return sub_42F44(a1, @"snid", a2);
  }

  else
  {
    ramrod_log_msg("WARNING: sep_data == NULL in %s. Will return default.\n", v10, v11, v12, v13, v14, v15, v16, "Boolean _ramrod_load_sep_nonce_slot_from_data(CFDataRef, int *)");
    return 0;
  }
}

uint64_t ramrod_wait_for_sep_load(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = *off_1A9960;
  v30 = 0;
  info = 0;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_wait_for_sep_load");
  if (a1)
  {
    if (mach_timebase_info(&info))
    {
      ramrod_log_msg("[%s] failed to get mach_timebase_info - waiting forever\n", v9, v10, v11, v12, v13, v14, v15, "ramrod_wait_for_sep_load");
      a1 = 0;
    }

    v16 = 1000000000 * a1;
    v17 = a1 == 0;
    v18 = mach_absolute_time() * info.numer / info.denom;
  }

  else
  {
    v18 = 0;
    v16 = 0;
    v17 = 1;
  }

  while (ramrod_execute_command(&v29))
  {
    sleep(1u);
    if (!v17 && mach_absolute_time() * info.numer / info.denom - v18 >= v16)
    {
      return 0;
    }
  }

  ramrod_log_msg("SEP OS is booted\n", v19, v20, v21, v22, v23, v24, v25, v27);
  return 1;
}

uint64_t ramrod_notify_sep_for_erase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *off_1A9978;
  v18 = 0;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_notify_sep_for_erase");
  v8 = ramrod_execute_command(&v17);
  if (!v8)
  {
    return 1;
  }

  ramrod_log_msg("seputil failure when attempting to notify of erase: %d\n", v9, v10, v11, v12, v13, v14, v15, v8);
  return 0;
}

uint64_t ramrod_commit_ap_nonce_slot(uint64_t a1, CFErrorRef *a2)
{
  if (!_ramrod_device_has_sandcat())
  {
    return 1;
  }

  v11 = dword_1C6BA0;
  v12 = qword_1C6B98;
  ramrod_log_msg("%s: commiting ap slot id: %u.\n", v4, v5, v6, v7, v8, v9, v10, "Boolean ramrod_commit_ap_nonce_slot(Boolean, CFErrorRef *)");
  v13 = 1;
  if (!sub_354B8(a2, 1, v11, a1, v12, v14, v15, v16))
  {
    ramrod_log_msg("%s: failed to commit ap slot id.\n", v17, v18, v19, v20, v21, v22, v23, "Boolean ramrod_commit_ap_nonce_slot(Boolean, CFErrorRef *)");
    return 0;
  }

  return v13;
}

uint64_t sub_354B8(CFErrorRef *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  memset(v37, 0, sizeof(v37));
  *__str = 0u;
  v36 = 0u;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "_ramrod_commit_sep_call_commit_slot");
  if (!ramrod_device_has_sep())
  {
    ramrod_log_msg("Unexpected SEP state change, bailing out.\n", v13, v14, v15, v16, v17, v18, v19, v34);
    return 0;
  }

  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  v39 = 0u;
  if (v11 != 1)
  {
    if (v11 == 2)
    {
      if (v8)
      {
        sub_D8B0C();
      }

      v20 = &v39;
      strcpy(v37, "--commit-hash");
      v8 = __str;
      snprintf(__str, 0x20uLL, "--slot=%u", v10);
      *&v38 = "/usr/libexec/seputil";
      *(&v38 + 1) = v37;
      v21 = 3;
    }

    else
    {
      v20 = (&v38 + 8);
      strcpy(v37, "--commit-hash");
      *&v38 = "/usr/libexec/seputil";
      v21 = 2;
      v8 = v37;
    }

LABEL_10:
    *v20 = v8;
    if (!v9)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  strcpy(v37, "--commit-hash-ap");
  snprintf(__str, 0x20uLL, "--slot=%u", v10);
  *&v38 = "/usr/libexec/seputil";
  *(&v38 + 1) = v37;
  *&v39 = __str;
  if (v8)
  {
    v20 = v40;
    *(&v39 + 1) = "--hash";
    v21 = 5;
    goto LABEL_10;
  }

  v21 = 3;
  if (v9)
  {
LABEL_11:
    *(&v38 + v21++) = "--erase";
  }

LABEL_12:
  *(&v38 + v21) = 0;
  v22 = ramrod_execute_command(&v38);
  if (v22)
  {
    ramrod_log_msg("seputil failure when attempting to commit the SEP manifest/hash/slot: %d\n", v23, v24, v25, v26, v27, v28, v29, v22);
    ramrod_create_error_cf(a1, @"RamrodErrorDomain", 7, 0, @"%s: seputil failed when attempting to commit the SEP manifest/hash/slot: %d", v30, v31, v32, "_ramrod_commit_sep_call_commit_slot");
    return 0;
  }

  return 1;
}

uint64_t ramrod_commit_sep_hash_with_options(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_commit_sep_hash_with_options");
  cf = 0;
  theData[0] = 0;
  LODWORD(v32) = -1;
  ramrod_log_msg("entering %s\n", v8, v9, v10, v11, v12, v13, v14, "_ramrod_commit_sep_call_verify");
  if (ramrod_device_has_sep())
  {
    v29 = MGCopyAnswerWithError();
    ramrod_log_msg("MGCopyAnswerWithError(kMGQLynxSerialNumber) returned %d\n", v22, v23, v24, v25, v26, v27, v28, v32);
    if (v29)
    {
      CFRelease(v29);
    }
  }

  else
  {
    ramrod_log_msg("Unexpected SEP state change, bailing out.\n", v15, v16, v17, v18, v19, v20, v21, v31);
  }

  return 0;
}

uint64_t ramrod_kill_sep_nonce(CFErrorRef *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = *off_1A9990;
  v30 = 0;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_kill_sep_nonce");
  if (ramrod_device_has_sep())
  {
    v16 = ramrod_execute_command(&v29);
    if (v16)
    {
      ramrod_log_msg("seputil failure when attempting to kill the SEP nonce: %d\n", v17, v18, v19, v20, v21, v22, v23, v16);
      ramrod_create_error_cf(a1, @"RamrodErrorDomain", 7, 0, @"%s: seputil failed when attempting to kill the SEP nonce: %d", v24, v25, v26, "ramrod_kill_sep_nonce");
      return 0;
    }
  }

  else
  {
    ramrod_log_msg("device has no sep\n", v9, v10, v11, v12, v13, v14, v15, v28);
  }

  return 1;
}

const __CFDictionary *ramrod_device_has_penguin()
{
  result = IOServiceMatching("IOPenguinControl");
  if (result)
  {
    result = IOServiceGetMatchingService(kIOMasterPortDefault, result);
    if (result)
    {
      IOObjectRelease(result);
      return (&dword_0 + 1);
    }
  }

  return result;
}

uint64_t ramrod_device_update_penguin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("updating penguin controller with tool: %s\n", a2, a3, a4, a5, a6, a7, a8, "/usr/local/bin/iopenguin_updater");
  *v17 = off_1A99A8;
  v8 = ramrod_execute_command(v17);
  if (!v8)
  {
    return 1;
  }

  ramrod_log_msg("failed to update penguin controller, tool returned: %d\n", v9, v10, v11, v12, v13, v14, v15, v8);
  return 0;
}

void ramrod_update_set_checkpoint_path(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (qword_1C6BC8)
  {
    CFRelease(qword_1C6BC8);
  }

  qword_1C6BC8 = a1;
  if (a1)
  {
    bzero(buffer, 0x400uLL);
    CFStringGetCString(a1, buffer, 1024, 0x8000100u);
    ramrod_log_msg("Checkpointing information will be stored to %s\n", v10, v11, v12, v13, v14, v15, v16, buffer);
    CFRetain(qword_1C6BC8);
  }

  else
  {

    ramrod_log_msg("Checkpointing information no longer stored to filesystem\n", a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

void ramrod_update_step_track_performed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  step_desc = checkpoint_closure_get_step_desc(a1, a2, a3, a4, a5, a6, a7, a8);

  sub_36DE8(step_desc, v10, v11, v12, v13, v14, v15, v16, a9);
}

void sub_36DE8(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    if (qword_1C6BC8)
    {
      v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/0x%04X", qword_1C6BC8, *a1);
      if (v10)
      {
        v11 = v10;
        bzero(buffer, 0x400uLL);
        CFStringGetFileSystemRepresentation(v11, buffer, 1024);
        v12 = open(buffer, 1537, 420);
        v20 = *a1;
        if (v12 == -1)
        {
          v22 = __error();
          strerror(*v22);
          ramrod_log_msg("cannot track performed step [0x%04X] %s (create failed: %s)\n", v23, v24, v25, v26, v27, v28, v29, v20);
        }

        else
        {
          v21 = v12;
          ramrod_log_msg("step [0x%04X] %s tracked as performed\n", v13, v14, v15, v16, v17, v18, v19, v20);
          close(v21);
        }

        CFRelease(v11);
      }
    }

    else
    {
      ramrod_log_msg("cannot track performed step [0x%04X] %s (no checkpoint path)\n", a2, a3, a4, a5, a6, a7, a8, *a1);
    }
  }

  else
  {

    ramrod_log_msg("cannot track performed step (no step description)\n", a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

void ramrod_update_step_track_performed_for_current_step(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  context = checkpoint_closure_get_context();
  step_desc = checkpoint_closure_context_get_step_desc(context);

  sub_36DE8(step_desc, v11, v12, v13, v14, v15, v16, v17, a9);
}

CFStringRef ramrod_update_step_already_performed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  step_desc = checkpoint_closure_get_step_desc(a1, a2, a3, a4, a5, a6, a7, a8);

  return sub_36FC8(step_desc, v9, v10, v11, v12, v13, v14, v15);
}

CFStringRef sub_36FC8(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v18 = "cannot check whether step performed (no step description)\n";
LABEL_9:
    ramrod_log_msg(v18, a2, a3, a4, a5, a6, a7, a8, v19);
    return 0;
  }

  if (!qword_1C6BC8)
  {
    v19 = *a1;
    v18 = "cannot check whether step [0x%04X] %s performed (no checkpoint path)\n";
    goto LABEL_9;
  }

  result = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@/0x%04X", qword_1C6BC8, *a1);
  if (!result)
  {
    return result;
  }

  v10 = result;
  bzero(buffer, 0x400uLL);
  memset(&v20, 0, sizeof(v20));
  CFStringGetFileSystemRepresentation(v10, buffer, 1024);
  if (stat(buffer, &v20) != -1 && !*(a1 + 24))
  {
    ramrod_log_msg("step [0x%04X] %s already performed (not repeating)\n", v11, v12, v13, v14, v15, v16, v17, *a1);
    return (&dword_0 + 1);
  }

  return 0;
}

CFStringRef ramrod_update_step_already_performed_for_current_step()
{
  context = checkpoint_closure_get_context();
  step_desc = checkpoint_closure_context_get_step_desc(context);

  return sub_36FC8(step_desc, v2, v3, v4, v5, v6, v7, v8);
}

BOOL ramrod_update_firmware_pre_fdr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x4010000000;
  v38 = "";
  v39 = 0u;
  v40 = 0u;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  ramrod_log_msg("entering ramrod_update_firmware_pre_fdr\n", a2, a3, a4, a5, a6, a7, a8, v29);
  if (a5)
  {
    *a5 = 0;
  }

  v13 = v36;
  v36[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  *(v13 + 56) = v9;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3254779904;
  v30[2] = sub_37368;
  v30[3] = &unk_1AD948;
  v30[4] = &v31;
  v30[5] = &v35;
  v30[6] = a5;
  v41[0] = 4876;
  v42 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41[1] = "update_aht";
  *&v42 = v30;
  BYTE8(v42) = 1;
  DWORD1(v43) = 1;
  v14 = checkpoint_engine_init(0, 28, 0);
  v19 = v14;
  if (v14)
  {
    checkpoint_engine_perform(v14, v41, v32 + 6, a5, v15, v16, v17, v18);
    checkpoint_engine_free(v19, v20, v21, v22, v23, v24, v25, v26);
    v27 = v32[6] == 0;
  }

  else
  {
    ramrod_create_error_cf(a5, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate firmware checkpoint engine", v16, v17, v18, "ramrod_update_firmware_pre_fdr");
    v27 = 0;
    v32[6] = 18;
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  return v27;
}

void sub_37340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_37368(uint64_t a1)
{
  result = sub_3D31C(@"AHT", sub_373C0, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_373C0(const __CFDictionary *a1, uint64_t a2, uint64_t a3, void *a4)
{
  ramrod_log_msg_cf(@"entering %s", "update_aht");
  if (!a1)
  {
    goto LABEL_5;
  }

  if (get_BOOLean_option(a1, @"PRE_FDR_FIRMWARE_CHECKPOINT", 0))
  {
    if (CFDictionaryContainsKey(*(a3 + 8), @"UUID"))
    {
      ramrod_log_msg("%s called in a pre-fdr context but this platform doesn't support pre-FDR. Skip this run.\n", v8, v9, v10, v11, v12, v13, v14, "update_aht");
    }

    else
    {
      ramrod_log_msg("%s called in a pre-fdr context but we're doing an OTA. Skip this run.\n", v8, v9, v10, v11, v12, v13, v14, "update_aht");
    }

    a1 = 0;
    goto LABEL_18;
  }

  v16 = dlopen("/usr/lib/libAHTRestore.dylib", 261);
  v17 = v16;
  if (!v16)
  {
    dlerror();
    AMSupportLogInternal();
    a1 = 0;
    goto LABEL_18;
  }

  v18 = dlsym(v16, "AHTRestoreCreateDeviceList");
  if (!v18 || (v19 = v18, (v20 = dlsym(v17, "AHTRestoreUpdateDeviceWithOverrides")) == 0))
  {
    AMSupportCreateErrorInternal();
    v15 = 0;
    a1 = 0;
LABEL_6:
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v21 = v20;
  a1 = v19();
  if (!a1)
  {
LABEL_5:
    AMSupportCreateErrorInternal();
    v15 = 0;
    goto LABEL_6;
  }

  v22 = (*(a2 + 56))(a3);
  if (v22)
  {
    Value = *(a3 + 8);
    if (Value)
    {
      Value = CFDictionaryGetValue(Value, @"AHTOptions");
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_436A4;
    v25[3] = &unk_1A9A00;
    v26 = 0;
    v25[4] = Value;
    v25[5] = a4;
    v25[6] = v22;
    v25[7] = a2;
    v25[8] = a3;
    v25[9] = v21;
    [(__CFDictionary *)a1 enumerateObjectsUsingBlock:v25];
LABEL_18:
    v15 = 1;
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  AMSupportCreateErrorInternal();
  v15 = 0;
  if (!a4)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (*a4)
  {
    AMSupportLogInternal();
    v15 = 0;
  }

LABEL_21:
  AMSupportSafeRelease();

  return v15;
}

uint64_t _ramrod_populate_ramrod_update_firmware_info(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a5;
  return result;
}

void _ramrod_free_update_firmware_info(uint64_t a1)
{
  if (a1)
  {
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    v2 = *(a1 + 16);
    if (*v2)
    {

      free(**(a1 + 16));
      v2 = *(a1 + 16);
    }

    free(v2);
    v3 = *(a1 + 8);
    if (v3)
    {
      free(*(v3 + 80));
      v4 = *(a1 + 8);
    }

    else
    {
      v4 = 0;
    }

    free(v4);

    free(a1);
  }
}

BOOL ramrod_update_device_firmware()
{
  v0 = off_1AD4C8();
  v2 = v1;
  v3 = v0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x4010000000;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 0;
  v101 = "";
  v102[0] = v0;
  v102[1] = v4;
  v102[2] = v5;
  v102[3] = v6;
  updated = _ramrod_copy_update_firmware_info(v102);
  v58 = _ramrod_copy_update_firmware_info((v99 + 4));
  v55 = _ramrod_copy_update_firmware_info((v99 + 4));
  v53 = _ramrod_copy_update_firmware_info((v99 + 4));
  v56 = _ramrod_copy_update_firmware_info((v99 + 4));
  v8 = qos_class_self();
  v9 = dispatch_queue_attr_make_with_qos_class(0, v8, 0);
  v10 = dispatch_queue_create("com.apple.restored.cliupdaters", v9);
  v11 = dispatch_queue_create("com.apple.restored.basebandupdaters", v9);
  v54 = dispatch_queue_create("com.apple.restored.veridian", v9);
  v52 = dispatch_queue_create("com.apple.restored.mantaupdater", v9);
  queue = dispatch_queue_create("com.apple.restored.roseupdater", v9);
  ramrod_log_msg("entering ramrod_update_device_firmware\n", v12, v13, v14, v15, v16, v17, v18, v40);
  if (v2)
  {
    *v2 = 0;
  }

  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3254779904;
  v93[2] = sub_39160;
  v93[3] = &unk_1AD948;
  v93[4] = &v94;
  v93[5] = &v98;
  v93[6] = v2;
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3254779904;
  v92[2] = sub_3A0E8;
  v92[3] = &unk_1AD948;
  v92[4] = &v94;
  v92[5] = &v98;
  v92[6] = v2;
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3254779904;
  v91[2] = sub_3A140;
  v91[3] = &unk_1AD948;
  v91[4] = &v94;
  v91[5] = &v98;
  v91[6] = v2;
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3254779904;
  v90[2] = sub_3A854;
  v90[3] = &unk_1AD948;
  v90[4] = &v94;
  v90[5] = &v98;
  v90[6] = v2;
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3254779904;
  v85[2] = sub_3A9F0;
  v85[3] = &unk_1AD978;
  v85[4] = &v86;
  v85[5] = &v103;
  v85[6] = v58;
  v49 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v11 block:v85];
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v103, 8);
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3254779904;
  v84[2] = sub_3AAE4;
  v84[3] = &unk_1AD948;
  v84[4] = &v94;
  v84[5] = &v98;
  v84[6] = v2;
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3254779904;
  v83[2] = sub_3AB3C;
  v83[3] = &unk_1AD978;
  v83[4] = &v86;
  v83[5] = &v103;
  v83[6] = updated;
  v48 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v10 block:v83];
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v103, 8);
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3254779904;
  v82[2] = sub_3AE08;
  v82[3] = &unk_1AD978;
  v82[4] = &v86;
  v82[5] = &v103;
  v82[6] = updated;
  v47 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v10 block:v82];
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v103, 8);
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3254779904;
  v81[2] = sub_3B074;
  v81[3] = &unk_1AD948;
  v81[4] = &v94;
  v81[5] = &v98;
  v81[6] = v2;
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3254779904;
  v80[2] = sub_3B270;
  v80[3] = &unk_1AD978;
  v80[4] = &v86;
  v80[5] = &v103;
  v80[6] = updated;
  v46 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v10 block:v80];
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v103, 8);
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3254779904;
  v79[2] = sub_3B950;
  v79[3] = &unk_1AD978;
  v79[4] = &v86;
  v79[5] = &v103;
  v79[6] = updated;
  v45 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v10 block:v79];
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v103, 8);
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3254779904;
  v78[2] = sub_3C05C;
  v78[3] = &unk_1AD978;
  v78[4] = &v86;
  v78[5] = &v103;
  v78[6] = updated;
  v44 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v10 block:v78];
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v103, 8);
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3254779904;
  v77[2] = sub_3C150;
  v77[3] = &unk_1AD978;
  v77[4] = &v86;
  v77[5] = &v103;
  v77[6] = v58;
  v43 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v11 block:v77];
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v103, 8);
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3254779904;
  v76[2] = sub_3C7BC;
  v76[3] = &unk_1AD978;
  v76[4] = &v86;
  v76[5] = &v103;
  v76[6] = v58;
  v42 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v11 block:v76];
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v103, 8);
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3254779904;
  v75[2] = sub_3CA6C;
  v75[3] = &unk_1AD9A8;
  v75[4] = &v86;
  v75[5] = &v103;
  v75[6] = v56;
  v75[7] = v3;
  v19 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:queue block:v75];
  v51 = v10;
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v103, 8);
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3254779904;
  v74[2] = sub_3CDE8;
  v74[3] = &unk_1AD948;
  v74[4] = &v94;
  v74[5] = &v98;
  v74[6] = v2;
  v73[0] = _NSConcreteStackBlock;
  v73[1] = 3254779904;
  v73[2] = sub_3CF24;
  v73[3] = &unk_1AD948;
  v73[4] = &v94;
  v73[5] = &v98;
  v73[6] = v2;
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3254779904;
  v72[2] = sub_3D044;
  v72[3] = &unk_1AD9F8;
  v72[5] = &v86;
  v72[4] = queue;
  v72[6] = &v103;
  v72[7] = v58;
  v41 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v11 block:v72];
  v50 = v11;
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v103, 8);
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3254779904;
  v71[2] = sub_3D2C4;
  v71[3] = &unk_1AD948;
  v71[4] = &v94;
  v71[5] = &v98;
  v71[6] = v2;
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3254779904;
  v70[2] = sub_3D5E0;
  v70[3] = &unk_1AD978;
  v70[4] = &v86;
  v70[5] = &v103;
  v70[6] = v55;
  v20 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v54 block:v70];
  v21 = v19;
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v103, 8);
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3254779904;
  v69[2] = sub_3D800;
  v69[3] = &unk_1AD978;
  v69[4] = &v86;
  v69[5] = &v103;
  v69[6] = updated;
  v22 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v51 block:v69];
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v103, 8);
  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3254779904;
  v68[2] = sub_3DA24;
  v68[3] = &unk_1AD948;
  v68[4] = &v94;
  v68[5] = &v98;
  v68[6] = v2;
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3254779904;
  v67[2] = sub_3DBCC;
  v67[3] = &unk_1AD948;
  v67[4] = &v94;
  v67[5] = &v98;
  v67[6] = v2;
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3254779904;
  v66[2] = sub_3DD58;
  v66[3] = &unk_1AD978;
  v66[4] = &v86;
  v66[5] = &v103;
  v66[6] = v53;
  v23 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v52 block:v66];
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v103, 8);
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3254779904;
  v65[2] = sub_3DF34;
  v65[3] = &unk_1AD978;
  v65[4] = &v86;
  v65[5] = &v103;
  v65[6] = v58;
  v24 = [[MSUCheckpointAsyncBlockContext alloc] initWithQueue:v50 block:v65];
  _Block_object_dispose(&v86, 8);
  _Block_object_dispose(&v103, 8);
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3254779904;
  v64[2] = sub_3E0FC;
  v64[3] = &unk_1AD948;
  v64[4] = &v94;
  v64[5] = &v98;
  v64[6] = v2;
  bzero(&v103, 0xF60uLL);
  LODWORD(v103) = 4881;
  v104 = "update_veridian";
  LOBYTE(v106) = 1;
  v107 = 1;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v112 = 0x132000000000;
  v111 = v20;
  v113 = "update_manta_mcu";
  v114 = 1;
  v115 = 1;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = v23;
  v124 = 0u;
  *&v120[16] = 0u;
  *v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v125 = 0;
  *&v120[4] = 4864;
  *&v120[12] = "update_iBoot";
  *&v120[20] = v93;
  v120[28] = 1;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v126 = 4882;
  v128 = 0u;
  v127 = "update_ean";
  *&v128 = v92;
  BYTE8(v128) = 1;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v133 = 4874;
  v135 = 0u;
  v134 = "install_fud";
  *&v135 = v91;
  BYTE8(v135) = 1;
  v140 = 4868;
  v141 = "update_stockholm";
  v142 = 1;
  v143 = 5;
  v145 = 0u;
  v146 = 0u;
  v144 = 0u;
  v147 = v49;
  v148 = 0x130300000000;
  v149 = "update_baseband_legacy";
  v150 = 1;
  v151 = 3;
  v153 = 0u;
  v154 = 0u;
  v152 = 0u;
  v155 = v43;
  v156 = 0x131B00000000;
  v157 = "update_baseband";
  v158 = 1;
  v159 = 3;
  v161 = 0u;
  v162 = 0u;
  v160 = 0u;
  v163 = v42;
  v164 = 0x131000000000;
  v165 = "update_rose";
  v166 = 1;
  v167 = 3;
  v169 = 0u;
  v170 = 0u;
  v168 = 0u;
  v171 = v21;
  v172 = 0x130900000000;
  v173 = "update_se";
  v174 = 1;
  v175 = 5;
  v177 = 0u;
  v178 = 0u;
  v176 = 0u;
  v179 = v41;
  v180 = 0x132200000000;
  v181 = "update_vinyl";
  v182 = 1;
  v183 = 1;
  v185 = 0u;
  v186 = 0u;
  v184 = 0u;
  v187 = v24;
  v188 = 0x130200000000;
  v189 = "update_ir_mcu";
  v190 = v90;
  v191 = 1;
  v192 = 2;
  memset(v195, 0, 25);
  v194 = 0u;
  v193 = 0u;
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  memset(&v195[7], 0, 32);
  v200 = 0;
  v195[8] = 4876;
  *&v195[10] = "update_aht";
  *&v195[12] = v84;
  LOBYTE(v195[14]) = 1;
  v201 = 4870;
  v202 = "update_tcon";
  v203 = 0;
  v204 = 1;
  v205 = 2;
  v208 = 0u;
  v207 = 0u;
  v206 = 0u;
  v209 = v48;
  v210 = 0;
  v211 = 0x131600000000;
  v212 = "update_appletcon";
  v213 = 0;
  v214 = 1;
  v215 = 1;
  v218 = 0u;
  v217 = 0u;
  v216 = 0u;
  v219 = v22;
  v220 = 0;
  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  memset(v221, 0, sizeof(v221));
  v226 = 0;
  v221[1] = 4871;
  *&v221[3] = "update_orion";
  LOBYTE(v221[7]) = 1;
  *(&v225 + 4) = v47;
  v233 = 0u;
  v232 = 0u;
  v231 = 0u;
  v230 = 0u;
  v229 = 0u;
  v227 = 4872;
  v228 = "update_madea";
  *&v229 = v81;
  BYTE8(v229) = 1;
  v240 = 0u;
  v239 = 0u;
  v238 = 0u;
  v237 = 0u;
  v236 = 0u;
  v234 = 4878;
  v235 = "update_peppy";
  BYTE8(v236) = 1;
  *&v240 = v46;
  v247 = 0u;
  v246 = 0u;
  v245 = 0u;
  v244 = 0u;
  v243 = 0u;
  v241 = 4879;
  v242 = "update_nitrogen";
  BYTE8(v243) = 1;
  *&v247 = v45;
  v254 = 0u;
  v253 = 0u;
  v252 = 0u;
  v251 = 0u;
  v250 = 0u;
  v248 = 4875;
  v249 = "update_usbc";
  BYTE8(v250) = 1;
  *&v254 = v44;
  v255 = 4899;
  v256 = "update_centauri";
  v257 = v74;
  v258 = 1;
  v259 = 3;
  v260 = 0x100000000;
  v265 = 0;
  v262 = 0u;
  v263 = 0u;
  v261 = 0u;
  v264 = 0;
  v266 = 4895;
  v267 = "update_canary";
  v268 = v73;
  v269 = 1;
  v270 = 1;
  v271 = 0x100000000;
  v273 = 0u;
  v274 = 0u;
  v272 = 0u;
  v275 = 0;
  v279 = 0u;
  v280 = 0u;
  v277 = 0u;
  v278 = 0u;
  memset(v276, 0, sizeof(v276));
  v281 = 0;
  v276[1] = 4877;
  *&v276[3] = "update_savage";
  *&v276[5] = v71;
  LOBYTE(v276[7]) = 1;
  v282 = 4902;
  v283 = "await_update_tcon";
  v284 = 0;
  v285 = 1;
  v287 = 0u;
  v288 = 0u;
  v286 = 0u;
  v289 = 0;
  v290 = v48;
  v291 = 1;
  v292 = 0x1332FFFFFFFFLL;
  v293 = "await_update_appletcon";
  v294 = 0;
  v295 = 1;
  v296 = 0;
  v297 = 0x100000000;
  v298 = 0u;
  v299 = 0u;
  v300 = 0;
  v301 = v22;
  v302 = 1;
  v303 = 0x1327FFFFFFFFLL;
  v304 = "await_update_orion";
  v305 = 0;
  v306 = 1;
  v308 = 0u;
  v309 = 0u;
  v307 = 0u;
  v310 = 0;
  v311 = v47;
  v312 = 1;
  v313 = 0x1328FFFFFFFFLL;
  v314 = "await_update_peppy";
  v315 = 0;
  v316 = 1;
  v318 = 0u;
  v319 = 0u;
  v317 = 0u;
  v320 = 0;
  v321 = v46;
  v322 = 1;
  v323 = 0x1329FFFFFFFFLL;
  v324 = "await_update_nitrogen";
  v325 = 0;
  v326 = 1;
  v328 = 0u;
  v329 = 0u;
  v327 = 0u;
  v330 = 0;
  v331 = v45;
  v332 = 1;
  v333 = 0x1325FFFFFFFFLL;
  v334 = "await_update_usbc";
  v335 = 0;
  v336 = 1;
  v338 = 0u;
  v339 = 0u;
  v337 = 0u;
  v340 = 0;
  v341 = v44;
  v342 = 1;
  v343 = 0x131DFFFFFFFFLL;
  v344 = "update_ace3";
  v345 = v68;
  v346 = 1;
  v347 = 1;
  v348 = 0x100000000;
  v353 = 0;
  v350 = 0u;
  v351 = 0u;
  v349 = 0u;
  v352 = 0;
  v354 = 4888;
  v355 = "update_usbcretimer";
  v356 = v67;
  v357 = 1;
  v358 = 1;
  v359 = 0x100000000;
  v364 = 0;
  v361 = 0u;
  v362 = 0u;
  v360 = 0u;
  v363 = 0;
  v365 = 4913;
  v366 = "await_update_manta_mcu";
  v367 = 0;
  v368 = 1;
  v369 = 0;
  v370 = 0x100000000;
  v371 = 0u;
  v372 = 0u;
  v373 = 0;
  v374 = v23;
  v375 = 1;
  v376 = 0x1330FFFFFFFFLL;
  v377 = "await_update_stockholm";
  v378 = 0;
  v379 = 1;
  v380 = 0;
  v381 = 0x100000000;
  v382 = 0u;
  v383 = 0u;
  v384 = 0;
  v385 = v49;
  v386 = 1;
  v387 = 0x132AFFFFFFFFLL;
  v388 = "await_update_baseband_legacy";
  v389 = 0;
  v390 = 1;
  v391 = 0;
  v392 = 0x100000000;
  v393 = 0u;
  v394 = 0u;
  v395 = 0;
  v396 = v43;
  v397 = 1;
  v398 = 0x132BFFFFFFFFLL;
  v399 = "await_update_baseband";
  v400 = 0;
  v401 = 1;
  v402 = 0;
  v403 = 0x100000000;
  v404 = 0u;
  v405 = 0u;
  v406 = 0;
  v407 = v42;
  v408 = 1;
  v409 = 0x132EFFFFFFFFLL;
  v410 = "await_update_rose";
  v411 = 0;
  v412 = 1;
  v413 = 0;
  v414 = 0x100000000;
  v415 = 0u;
  v416 = 0u;
  v417 = 0;
  v418 = v21;
  v419 = 1;
  v420 = 0x132FFFFFFFFFLL;
  v421 = "await_update_se";
  v422 = 0;
  v423 = 1;
  v424 = 0;
  v425 = 0x100000000;
  v426 = 0u;
  v427 = 0u;
  v428 = 0;
  v429 = v41;
  v430 = 1;
  v431 = 0x132DFFFFFFFFLL;
  v432 = "await_update_vinyl";
  v433 = 0;
  v434 = 1;
  v435 = 0;
  v436 = 0x100000000;
  v437 = 0u;
  v438 = 0u;
  v439 = 0;
  v440 = v24;
  v441 = 1;
  v442 = 0x132CFFFFFFFFLL;
  v443 = "await_update_update_veridian";
  v444 = 0;
  v445 = 1;
  v446 = 0;
  v447 = 0x100000000;
  v448 = 0u;
  v449 = 0u;
  v450 = 0;
  v451 = v20;
  v452 = 1;
  v453 = 0x1324FFFFFFFFLL;
  v454 = "update_appletconnuarp";
  v455 = v64;
  v456 = 1;
  v457 = 1;
  v458 = 0x100000000;
  v460 = 0u;
  v461 = 0u;
  v459 = 0u;
  v462 = 0;
  v467 = 0u;
  v468 = 0u;
  v465 = 0u;
  v466 = 0u;
  v463 = 0u;
  v464 = 0u;
  v469 = 0;
  v25 = checkpoint_engine_init(0, 20, 0);
  v30 = v25;
  if (v25)
  {
    checkpoint_engine_perform(v25, &v103, v95 + 6, v2, v26, v27, v28, v29);
    checkpoint_engine_free(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  else
  {
    ramrod_create_error_cf(v2, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate firmware checkpoint engine", v27, v28, v29, "ramrod_update_device_firmware");
    v95[6] = 18;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3E23C;
  block[3] = &unk_1A9210;
  block[4] = updated;
  dispatch_async(v51, block);
  dispatch_release(v51);
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_3E244;
  v62[3] = &unk_1A9210;
  v62[4] = v58;
  dispatch_async(v50, v62);
  dispatch_release(v50);
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_3E24C;
  v61[3] = &unk_1A9210;
  v61[4] = v55;
  dispatch_async(v54, v61);
  dispatch_release(v54);
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_3E254;
  v60[3] = &unk_1A9210;
  v60[4] = v53;
  dispatch_async(v52, v60);
  dispatch_release(v52);
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_3E25C;
  v59[3] = &unk_1A9210;
  v59[4] = v56;
  dispatch_async(queue, v59);
  dispatch_release(queue);
  v38 = v95[6] == 0;
  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v98, 8);
  return v38;
}

void sub_390CC(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x750], 8);
  _Block_object_dispose(&STACK[0x770], 8);
  _Unwind_Resume(a1);
}

uint64_t sub_39160(uint64_t a1)
{
  result = sub_3D31C(@"iBoot", sub_391B8, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

const __CFBoolean *sub_391B8(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v10 = a2;
  valuePtr = 2;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "update_iBoot");
  if (!a1)
  {
    ramrod_log_msg("options is NULL.\n", v12, v13, v14, v15, v16, v17, v18, v381);
    return 0;
  }

  v19 = CFDictionaryGetValue(a1, @"EraseInstall");
  v22 = v19 && (v20 = v19, v21 = CFGetTypeID(v19), v21 == CFBooleanGetTypeID()) && CFBooleanGetValue(v20) != 0;
  v23 = CFDictionaryGetValue(a1, @"DisabledByDefault");
  v26 = v23 && (v24 = v23, v25 = CFGetTypeID(v23), v25 == CFBooleanGetTypeID()) && CFBooleanGetValue(v24) == 1;
  v27 = CFDictionaryGetValue(a1, @"SEP");
  v28 = v27;
  v388 = v22;
  if (v26 || v27)
  {
    if (!v27 || (v40 = CFGetTypeID(v27), v40 != CFBooleanGetTypeID()) || CFBooleanGetValue(v28) != 1)
    {
      ramrod_device_has_sep();
      v386 = 0;
      v41 = 0;
      v37 = 0;
      goto LABEL_30;
    }
  }

  if (!ramrod_device_has_sep())
  {
    v41 = 0;
    goto LABEL_27;
  }

  v29 = (*(v10 + 48))(v9);
  if (!v29)
  {
    v39 = "device has a SEP, but no SEP OS firmware image is present in firmare images";
    goto LABEL_22;
  }

  v37 = v29;
  v38 = CFGetTypeID(v29);
  if (v38 != CFDataGetTypeID())
  {
    v39 = "request for SEP OS firmware image returned a non-CFDataRef";
LABEL_22:
    ramrod_log_msg(v39, v30, v31, v32, v33, v34, v35, v36, v381);
    v37 = 0;
  }

  if (!*(v10 + 112))
  {
    ramrod_log_msg("copy_sep_patch not set", v30, v31, v32, v33, v34, v35, v36, v381);
    v41 = 0;
    goto LABEL_29;
  }

  ramrod_log_msg("calling copy_sep_patch\n", v30, v31, v32, v33, v34, v35, v36, v381);
  v42 = (*(v10 + 112))(v9);
  v41 = v42;
  if (!v42)
  {
    goto LABEL_29;
  }

  v43 = CFGetTypeID(v42);
  if (v43 == CFDataGetTypeID())
  {
    goto LABEL_29;
  }

  ramrod_log_msg("request for SEP Patch image returned a non-CFDataRef", v44, v45, v46, v47, v48, v49, v50, v381);
LABEL_27:
  v37 = 0;
LABEL_29:
  v386 = 1;
LABEL_30:
  has_sandcat = _ramrod_device_has_sandcat();
  if (has_sandcat)
  {
    v389 = dword_1C6BA0;
    valuePtr = dword_1C4800;
    v51 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v37)
    {
      v319 = ramrod_copy_imr4_with_key_value(v37, @"snid", v51);
      CFRelease(v37);
      v37 = v319;
      if (!v41)
      {
        goto LABEL_33;
      }
    }

    else if (!v41)
    {
LABEL_33:
      CFRelease(v51);
      goto LABEL_35;
    }

    v320 = ramrod_copy_imr4_with_key_value(v41, @"snid", v51);
    CFRelease(v41);
    v41 = v320;
    goto LABEL_33;
  }

  v389 = 0;
LABEL_35:
  v52 = CFDictionaryGetValue(a1, @"APNonce");
  v53 = v52;
  if (v52)
  {
    v54 = CFGetTypeID(v52);
    if (v54 == CFDataGetTypeID())
    {
      CFDataGetLength(v53);
      ramrod_log_msg("%s: ap nonce was provided (size: %ld)\n", v55, v56, v57, v58, v59, v60, v61, "update_iBoot");
    }

    else
    {
      v53 = 0;
    }
  }

  v62 = (*(v10 + 88))(v9);
  theDict = v62;
  if (!v62)
  {
    v332 = "copy_ibfw_data returned NULL.\n";
LABEL_151:
    ramrod_log_msg(v332, v63, v64, v65, v66, v67, v68, v69, v381);
    v142 = 0;
    v134 = 0;
LABEL_68:
    v143 = 0;
    v144 = 0;
    v145 = 0;
    if (!v37)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

  v70 = v62;
  v392 = a4;
  v394 = v10;
  v387 = a1;
  if (CFDictionaryGetCount(v62) < 1)
  {
    value = 0;
    goto LABEL_78;
  }

  ramrod_log_msg("Writing out IsiBootEANFirmware files to EAN iBoot keys.\n", v71, v72, v73, v74, v75, v76, v77, v381);
  value = sub_439C8(v70, 1, v78, v79, v80, v81, v82, v83);
  if (!value)
  {
    v332 = "_create_ibfw returned NULL.\n";
    goto LABEL_151;
  }

  theData[0] = 0;
  v84 = @"ifw2";
  v385 = v9;
  if (sub_43D50(@"ifw2", 0, theData, v65, v66, v67, v68, v69))
  {
    if (!theData[0])
    {
      v352 = "ifw2Hash is NULL.\n";
      goto LABEL_160;
    }

    v92 = MGCopyAnswer();
    v93 = v92;
    if (!v92)
    {
      v352 = "bootHash is NULL.\n";
      goto LABEL_160;
    }

    v94 = v41;
    v95 = v37;
    Length = CFDataGetLength(v92);
    v104 = @"ifw1";
    if (Length == CFDataGetLength(theData[0]))
    {
      BytePtr = CFDataGetBytePtr(v93);
      v106 = CFDataGetBytePtr(theData[0]);
      v107 = CFDataGetLength(theData[0]);
      v108 = memcmp(BytePtr, v106, v107);
      v109 = v108 == 0;
      v110 = v108 != 0;
      if (v108)
      {
        v111 = "ifw2 hash does not match boot hash - using ifw2 to stage new data.\n";
      }

      else
      {
        v111 = "ifw2 hash matches boot hash, switching to ifw1 for staging.\n";
      }

      if (v109)
      {
        v112 = @"ifw2";
      }

      else
      {
        v112 = @"ifw1";
      }

      if (v109)
      {
        v84 = @"ifw1";
      }

      v104 = v112;
    }

    else
    {
      v110 = 1;
      v111 = "ifw2 hash size doesn't match current boot hash size.  Invalid key.\n";
    }

    ramrod_log_msg(v111, v97, v98, v99, v100, v101, v102, v103, v381);
  }

  else
  {
    v94 = v41;
    v95 = v37;
    v104 = @"ifw1";
    v110 = 1;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v352 = "eanBlobs is NULL.\n";
    v37 = v95;
    v41 = v94;
LABEL_160:
    ramrod_log_msg(v352, v85, v86, v87, v88, v89, v90, v91, v381);
    goto LABEL_67;
  }

  v114 = Mutable;
  CFDictionaryAddValue(Mutable, v84, value);
  if (!sub_33250(v114, 0, 0, 0, v115, v116, v117, v118))
  {
    v37 = v95;
    v41 = v94;
LABEL_67:
    v134 = value;
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    ramrod_log_msg("_write_ibfw failed.\n", v135, v136, v137, v138, v139, v140, v141, v381);
    v142 = 0;
    goto LABEL_68;
  }

  if (!sub_33448(v104, v119, v120, v121, v122, v123, v124, v125))
  {
    ramrod_log_msg("Copying staging key to primary key.\n", v126, v127, v128, v129, v130, v131, v132, v381);
    v397 = 0;
    if (sub_2E3CC(v84, &v397, v146, v147, v148, v149, v150, v151))
    {
      v37 = v95;
      if (v397)
      {
        v158 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v41 = v94;
        if (v158)
        {
          v159 = v158;
          CFDictionaryAddValue(v158, v104, v397);
          v164 = sub_33250(v159, 0, 0, 0, v160, v161, v162, v163);
          AMSupportSafeRelease();
          AMSupportSafeRelease();
          v10 = v394;
          if (v164)
          {
            goto LABEL_77;
          }

LABEL_74:
          v133 = "Failed to copy staging to primary, continuing..\n";
          goto LABEL_76;
        }

        v354 = "eanDict is NULL.\n";
LABEL_167:
        v10 = v394;
        sub_D9034(v354, &v397, v152, v153, v154, v155, v156, v157);
        goto LABEL_74;
      }

      v354 = "_copy_ean returned NULL eanData.\n";
    }

    else
    {
      v354 = "_copy_ean failed to copy key1.\n";
      v37 = v95;
    }

    v41 = v94;
    goto LABEL_167;
  }

  if (!v110)
  {
    v133 = "No need to swap, we just wrote to ifw1.\n";
    v37 = v95;
    v41 = v94;
    v10 = v394;
    goto LABEL_76;
  }

  v37 = v95;
  v41 = v94;
  v10 = v394;
  if (!sub_43F34(@"ifw1", v84, v127, v128, v129, v130, v131, v132))
  {
    v133 = "Swapping failed, continuing..\n";
LABEL_76:
    ramrod_log_msg(v133, v126, v127, v128, v129, v130, v131, v132, v381);
  }

LABEL_77:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  Count = CFDictionaryGetCount(theDict);
  ramrod_log_msg("Successfully wrote %lu images to ifw1.\n", v166, v167, v168, v169, v170, v171, v172, Count);
  v9 = v385;
LABEL_78:
  v173 = (*(v10 + 96))(v9);
  v142 = v173;
  if (!v173)
  {
    ramrod_log_msg("copy_ibne_data returned NULL.\n", v174, v175, v176, v177, v178, v179, v180, v381);
    v143 = 0;
    goto LABEL_154;
  }

  if (CFDictionaryGetCount(v173) >= 1)
  {
    ramrod_log_msg("Writing out IsiBootNonEssentialFirmware files to EAN iBoot key.\n", v181, v182, v183, v184, v185, v186, v187, v381);
    v143 = sub_439C8(v142, 0, v188, v189, v190, v191, v192, v193);
    if (v143)
    {
      v201 = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v144 = v201;
      if (v201)
      {
        CFDictionaryAddValue(v201, @"nefw", v143);
        if (sub_33250(v144, 0, 0, 0, v209, v210, v211, v212))
        {
          v213 = CFDictionaryGetCount(v142);
          ramrod_log_msg("Successfully wrote %lu images to nefw.\n", v214, v215, v216, v217, v218, v219, v220, v213);
          if (!v9)
          {
            goto LABEL_89;
          }

          goto LABEL_86;
        }

        v353 = "_write_ean failed.\n";
      }

      else
      {
        v353 = "eanDict is NULL.\n";
      }

      ramrod_log_msg(v353, v202, v203, v204, v205, v206, v207, v208, v382);
      goto LABEL_109;
    }

    ramrod_log_msg("_create_ibfw returned NULL for nefwBlob.\n", v194, v195, v196, v197, v198, v199, v200, v382);
LABEL_154:
    v144 = 0;
    goto LABEL_109;
  }

  v143 = 0;
  v144 = 0;
  if (!v9)
  {
    goto LABEL_89;
  }

LABEL_86:
  if (*(v9 + 8) && AMSupportCFDictionaryGetBoolean())
  {
    ramrod_log_msg("Nuking iBootEAN keys.\n", v221, v222, v223, v224, v225, v226, v227, v381);
    sub_335B8(@"ifw1", v228, v229, v230, v231, v232, v233, v234);
    sub_335B8(@"ifw2", v235, v236, v237, v238, v239, v240, v241);
  }

LABEL_89:
  v242 = v9;
  v243 = objc_autoreleasePoolPush();
  setiBULoggingPointer(ramrod_log_msg);
  v251 = +[MSUBootFirmwareUpdater updaterForDevice];
  if (has_sandcat)
  {
    ramrod_log_msg("Will use nonce slots.\n", v244, v245, v246, v247, v248, v249, v250, v381);
    [v251 setApNonceSlotID:v389];
  }

  else
  {
    ramrod_log_msg("Will use nonce.\n", v244, v245, v246, v247, v248, v249, v250, v381);
    [v251 setApNonce:v53];
  }

  if (([v251 generateFirmwareImagesWithCallback:v394 context:v242] & 1) == 0)
  {
    ramrod_create_error_cf(v392, @"RamrodErrorDomain", 1014, *v392, @"%s: Creating firmware lists failed.", v256, v257, v258, "update_iBoot");
LABEL_108:
    objc_autoreleasePoolPop(v243);
LABEL_109:
    v145 = 0;
    goto LABEL_110;
  }

  ramrod_log_msg("%s: erase: %s\n", v252, v253, v254, v255, v256, v257, v258, "update_iBoot");
  [v251 setIsErase:v388];
  [v251 setShouldCommit:1];
  if (!v251)
  {
    ramrod_create_error_cf(v392, @"RamrodErrorDomain", 1014, *v392, @"%s: Could not find iBoot storage class.", v259, v260, v261, "update_iBoot");
    ramrod_log_msg("Could not find storage class!\n", v311, v312, v313, v314, v315, v316, v317, v384);
    goto LABEL_108;
  }

  v262 = v251;
  v263 = v242;
  if (([v262 updateBootFirmwareWithCallback:v394 context:v242 error:v392] & 1) == 0)
  {
    ramrod_create_error_cf(v392, @"RamrodErrorDomain", 1014, *v392, @"%s: BootFirmware update failed", v264, v265, v266, "update_iBoot");
    goto LABEL_108;
  }

  objc_autoreleasePoolPop(v243);
  if (!v386 || !ramrod_device_has_sep() || !v37)
  {
    goto LABEL_173;
  }

  ramrod_log_msg("entering update_sep\n", v267, v268, v269, v270, v271, v272, v273, v383);
  v281 = ramrod_copy_manifest_digest_from_img4(v37, v274, v275, v276, v277, v278, v279, v280);
  if (v281)
  {
    v282 = v281;
    CStringPtr = CFStringGetCStringPtr(v281, 0x8000100u);
    ramrod_log_msg("SEP firmware IMG4 Boot Manifest hash: %s\n", v284, v285, v286, v287, v288, v289, v290, CStringPtr);
    CFRelease(v282);
  }

  bzero(theData, 0x800uLL);
  v291 = CFDictionaryGetValue(v387, @"Preboot Root");
  if (v291)
  {
    v295 = v291;
    v296 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%s", v291, "/usr/standalone/firmware/sep-firmware.img4");
    if (v296)
    {
      v300 = v296;
      if (!CFStringGetCString(v296, theData, 2048, 0x8000100u))
      {
        ramrod_create_error_cf(v392, @"RamrodErrorDomain", 5, 0, @"%s: unable to convert SEP firmware path to UTF8 string", v301, v302, v303, "update_sep");
        goto LABEL_130;
      }

      v304 = open(theData, 1537, 420);
      if (v304 == -1)
      {
        v305 = *__error();
        v306 = __error();
        strerror(*v306);
        v307 = v305;
        v263 = v242;
        ramrod_create_error_cf(v392, kCFErrorDomainPOSIX, v307, 0, @"%s: failed to open SEP firmware file for writing: %s", v308, v309, v310, "update_sep");
LABEL_130:
        CFRelease(v300);
        v321 = v392;
        goto LABEL_131;
      }

      v391 = v304;
      if (sub_D7C6C(v304, v37, v392))
      {
        if (!v41)
        {
LABEL_172:
          close(v391);
          CFRelease(v300);
          ramrod_log_msg("update_sep returned: %s\n", v362, v363, v364, v365, v366, v367, v368, "success");
          goto LABEL_173;
        }

        close(v391);
        CFRelease(v300);
        v340 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@%s", v295, "/usr/standalone/firmware/sep-patches.img4");
        if (!v340)
        {
          v321 = v392;
          ramrod_create_error_cf(v392, @"RamrodErrorDomain", 6, 0, @"%s: unable to create CFString for SEP firmware path", v341, v342, v343, "update_sep");
          close(v391);
          goto LABEL_131;
        }

        v300 = v340;
        if (CFStringGetCString(v340, theData, 2048, 0x8000100u))
        {
          v391 = open(theData, 1537, 420);
          if (v391 == -1)
          {
            v347 = *__error();
            v348 = __error();
            strerror(*v348);
            ramrod_create_error_cf(v392, kCFErrorDomainPOSIX, v347, 0, @"%s: failed to open SEP firmware file for writing: %s", v349, v350, v351, "update_sep");
            v263 = v242;
            goto LABEL_130;
          }

          if (sub_D7C6C(v391, v41, v392))
          {
            v263 = v242;
            goto LABEL_172;
          }

          ramrod_log_msg("Unable to write patch data to %s\n", v355, v356, v357, v358, v359, v360, v361, theData);
          v263 = v242;
        }

        else
        {
          ramrod_create_error_cf(v392, @"RamrodErrorDomain", 5, 0, @"%s: unable to convert SEP firmware path to UTF8 string", v344, v345, v346, "update_sep");
        }
      }

      else
      {
        ramrod_log_msg("Unable to write SEP data to %s\n", v333, v334, v335, v336, v337, v338, v339, theData);
      }

      close(v391);
      goto LABEL_130;
    }

    v321 = v392;
    ramrod_create_error_cf(v392, @"RamrodErrorDomain", 6, 0, @"%s: unable to create CFString for SEP firmware path", v297, v298, v299, "update_sep");
  }

  else
  {
    v321 = v392;
    ramrod_create_error_cf(v392, @"RamrodErrorDomain", 2, 0, @"%s: missing option to find preboot root", v292, v293, v294, "update_sep");
  }

LABEL_131:
  ramrod_log_msg("update_sep returned: %s\n", v322, v323, v324, v325, v326, v327, v328, "failure");
  if (v321)
  {
    v383 = *v321;
    ramrod_log_msg_cf(@"update_sep error: %@\n");
  }

  v329 = CFDictionaryGetValue(v387, @"SEPUpdateRequiresSuccess");
  v145 = v329;
  if (!v329)
  {
    goto LABEL_140;
  }

  v330 = CFGetTypeID(v329);
  if (v330 != CFBooleanGetTypeID())
  {
    goto LABEL_139;
  }

  v331 = CFBooleanGetValue(v145);
  if (v392 && !v331)
  {
    *v392 = 0;
    goto LABEL_173;
  }

  if (v331)
  {
LABEL_139:
    v145 = 0;
LABEL_140:
    v134 = value;
    goto LABEL_111;
  }

LABEL_173:
  if (AMSupportCFDictionaryGetBoolean())
  {
    ramrod_log_msg("iBoot was successfully committed in booted OS, writing iboot1-precommitted=true", v369, v370, v371, v372, v373, v374, v375, v383);
    v376 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/options");
    if (!v376)
    {
LABEL_178:
      ramrod_create_error_cf(v392, @"RamrodErrorDomain", 1014, *v392, @"%s: Writing iboot1-precommitted failed", v377, v378, v379, "update_iBoot");
      goto LABEL_109;
    }

    v380 = v376;
    if (IORegistryEntrySetCFProperty(v376, @"40A0DDD2-77F8-4392-B4A3-1E7304206516:iboot1-precommitted", @"true") || IORegistryEntrySetCFProperty(v380, @"IONVRAM-FORCESYNCNOW-PROPERTY", @"true"))
    {
      IOObjectRelease(v380);
      goto LABEL_178;
    }
  }

  (*(v394 + 8))(0, 100, v263);
  v145 = (&dword_0 + 1);
LABEL_110:
  v134 = value;
  if (v37)
  {
LABEL_111:
    CFRelease(v37);
  }

LABEL_112:
  if (v41)
  {
    CFRelease(v41);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v134)
  {
    CFRelease(v134);
  }

  if (v143)
  {
    CFRelease(v143);
  }

  if (v144)
  {
    CFRelease(v144);
  }

  if (v142)
  {
    CFRelease(v142);
  }

  return v145;
}

uint64_t sub_3A0E8(uint64_t a1)
{
  result = sub_3D31C(@"EAN", sub_D7964, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3A140(uint64_t a1)
{
  result = sub_3D31C(@"FUD", sub_3A198, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3A198()
{
  v0 = off_1AD4C8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  bzero(__str, 0x400uLL);
  bzero(buffer, 0x400uLL);
  bzero(v122, 0x400uLL);
  ramrod_log_msg("entering %s\n", v8, v9, v10, v11, v12, v13, v14, "install_fud");
  if (!v7)
  {
    ramrod_create_error_cf(v2, @"RamrodErrorDomain", 2, 0, @"%s: %s: bad argument - no options", v15, v16, v17, "install_fud");
LABEL_22:
    v40 = 0;
    goto LABEL_23;
  }

  v18 = (*(v6 + 56))(v4);
  v22 = v18;
  if (!v18)
  {
    ramrod_create_error_cf(v2, @"RamrodErrorDomain", 2, 0, @"%s: %s: copy_available_fud_image_names returned NULL", v19, v20, v21, "install_fud");
    goto LABEL_22;
  }

  Count = CFArrayGetCount(v18);
  if (Count < 1)
  {
    v39 = "install_fud: Host returned empty FUD dictionary, nothing to do.\n";
    goto LABEL_15;
  }

  v31 = Count;
  Value = CFDictionaryGetValue(v7, @"Preboot Root");
  if (Value)
  {
    v33 = Value;
  }

  else
  {
    bzero(v125, 0x400uLL);
    system_partition_device_node = ramrod_get_system_partition_device_node(v125, 0x400uLL);
    if (!system_partition_device_node)
    {
      goto LABEL_19;
    }

    v33 = ramrod_copy_preboot_path(system_partition_device_node, "/mnt9", 0, 0, v42, v43, v44, v45);
    if (!v33)
    {
      goto LABEL_20;
    }
  }

  v34 = CFGetTypeID(v33);
  if (v34 != CFStringGetTypeID())
  {
LABEL_19:
    v33 = 0;
    goto LABEL_20;
  }

  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v33);
  v36 = malloc(MaximumSizeOfFileSystemRepresentation);
  if (!v36)
  {
LABEL_10:
    v33 = 0;
    goto LABEL_20;
  }

  v37 = v36;
  v38 = v33;
  v33 = v37;
  if (!CFStringGetFileSystemRepresentation(v38, v37, MaximumSizeOfFileSystemRepresentation))
  {
    free(v33);
    goto LABEL_10;
  }

LABEL_20:
  snprintf(__str, 0x400uLL, "%s%s", v33, "/usr/standalone/firmware/FUD");
  if (ramrod_create_directory_with_class(__str, 0x1EDu, 0, 0, -1, 1))
  {
    ramrod_create_error_cf(v2, @"RamrodErrorDomain", 7, 0, @"%s: %s: create directory fail=%d for FUD: %s", v50, v51, v52, "install_fud");
    goto LABEL_22;
  }

  v120 = v2;
  v121 = v33;
  ramrod_log_msg("install_fud: Host returned %lu FUD firmware images to install\n", v46, v47, v48, v49, v50, v51, v52, v31);
  for (i = 0; i != v31; ++i)
  {
    bzero(v125, 0x400uLL);
    ValueAtIndex = CFArrayGetValueAtIndex(v22, i);
    if (!CFStringGetCString(ValueAtIndex, buffer, 1024, 0x8000100u))
    {
      ramrod_create_error_cf(v120, @"RamrodErrorDomain", 3, 0, @"%s: %s: failed to convert image name to C string", v56, v57, v58, "install_fud");
      goto LABEL_22;
    }

    v59 = *(v6 + 64);
    v60 = CFArrayGetValueAtIndex(v22, i);
    v68 = v59(v4, v60);
    if (!v68)
    {
      ramrod_log_msg("%s: Failed to fetch data for %s FUD image.", v61, v62, v63, v64, v65, v66, v67, "install_fud");
      goto LABEL_22;
    }

    if (AMAuthInstallApFtabIsValid())
    {
      ramrod_log_msg("FUD Firmware %s is FTAB.\n", v69, v70, v71, v72, v73, v74, v75, buffer);
      v76 = "ftab";
    }

    else
    {
      v76 = "img4";
    }

    ramrod_log_msg("Checking to see if %s should be installed elsewhere...\n", v69, v70, v71, v72, v73, v74, v75, buffer);
    if (*buffer == 1953719634 && *&buffer[3] == 1701998452)
    {
      ramrod_log_msg("Restore firmware %s should not be installed.\n", v77, v78, v79, v80, v81, v82, v83, buffer);
    }

    else
    {
      v85 = 3;
      v86 = &off_1A9A28;
      while (strcmp(buffer, *(v86 - 1)))
      {
        v86 += 2;
        if (!--v85)
        {
          goto LABEL_44;
        }
      }

      v94 = *v86;
      if (*v94 == 78 && v94[1] == 65 && !v94[2])
      {
        ramrod_log_msg("Firmware %s should not be installed.\n", v87, v88, v89, v90, v91, v92, v93, buffer);
        __strlcpy_chk();
      }

      else
      {
        snprintf(v125, 0x400uLL, "%s%s", v121, v94);
        ramrod_log_msg("Overriding the install path of %s to be %s...\n", v95, v96, v97, v98, v99, v100, v101, buffer);
        if (ramrod_create_directory_with_class(v125, 0x1EDu, 0, 0, -1, 1))
        {
          v118 = @"%s: %s: create override directory fail=%d for FUD: %s";
          goto LABEL_61;
        }

        ramrod_log_msg("Found %s in our override list. Changing the install path to %s.\n", v102, v103, v104, v105, v106, v107, v108, buffer);
      }

LABEL_44:
      if (v125[0])
      {
        if (!(*v125 ^ 0x414E | v126))
        {
          goto LABEL_49;
        }

        snprintf(v122, 0x400uLL, "%s/%s.%s", v125, buffer, v76);
        v125[0] = 0;
      }

      else
      {
        snprintf(v122, 0x400uLL, "%s/%s.%s", __str, buffer, v76);
      }

      ramrod_log_msg("install_fud: %s\n", v109, v110, v111, v112, v113, v114, v115, buffer);
      if (ramrod_write_data_to_file_with_class(v68, v122, -1))
      {
        v118 = @"%s: %s: unable to create FUD file: %s";
LABEL_61:
        ramrod_create_error_cf(v120, @"RamrodErrorDomain", 7, 0, v118, v106, v107, v108, "install_fud");
        goto LABEL_22;
      }
    }

LABEL_49:
    AMSupportSafeRelease();
  }

  v127.length = CFArrayGetCount(v22);
  v127.location = 0;
  if (CFArrayContainsValue(v22, v127, @"Ap,ExclaveOSVolume"))
  {
    CFStringGetCString(@"Ap,ExclaveOS", buffer, 1024, 0x8000100u);
    snprintf(v122, 0x400uLL, "%s/%s.dmg", __str, buffer);
    v119 = buffer;
    ramrod_log_msg_cf(@"install_fud: %s (injected due to %@)\n");
    v117 = *(v6 + 120);
    if (!v117 || v117(v4, @"Ap,ExclaveOS", 1702391667, 0, v122))
    {
      ramrod_create_error_cf(v120, @"RamrodErrorDomain", 7, 0, @"%s: %s: unable to create FUD file: %s (%d)", v28, v29, v30, "install_fud");
      goto LABEL_22;
    }
  }

  if (v121)
  {
    free(v121);
  }

  v39 = "install_fud: Done.\n";
LABEL_15:
  ramrod_log_msg(v39, v24, v25, v26, v27, v28, v29, v30, v119);
  v40 = 1;
LABEL_23:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v40;
}

uint64_t sub_3A854(uint64_t a1)
{
  result = sub_3D31C(@"IR MCU", sub_3A8AC, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3A8AC(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = a2;
  v24[1] = a3;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "update_ir_mcu");
  v11 = dlopen("libTiSerialFlasher.dylib", 261);
  if (!v11)
  {
    dlerror();
    v22 = @"%s: unable to open updater library: %s";
LABEL_7:
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1003, 0, v22, v19, v20, v21, "update_ir_mcu");
    return 0;
  }

  v12 = dlsym(v11, "TiSerialFlasher");
  if (!v12)
  {
    dlerror();
    v22 = @"%s: unable to find updater function: %s";
    goto LABEL_7;
  }

  v13 = v12;
  v14 = *(a2 + 8);
  v15 = 1;
  v14(1, 0xFFFFFFFFLL, a3);
  if (v13(sub_443B4, j__ramrod_log_msgv, 0, 0, v24))
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1003, 0, @"%s: TiSerialFlasher returned %d", v16, v17, v18, "update_ir_mcu");
    return 0;
  }

  return v15;
}

void sub_3A9F0(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"Stockholm", sub_2C5E4, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3AAE4(uint64_t a1)
{
  result = sub_3D31C(@"AHT", sub_373C0, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_3AB3C(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"TCON", sub_3AC30, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3AC30(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering update_TCON\n", a2, a3, a4, a5, a6, a7, a8, v22);
  v11 = v26;
  memset(v26, 0, sizeof(v26));
  v25[0] = "/usr/local/bin/tconctl";
  v25[1] = "-u";
  if (ramrod_should_do_legacy_restored_internal_behaviors())
  {
    if (CFDictionaryGetValue(a1, @"Update TCON FW") == kCFBooleanFalse)
    {
      return 1;
    }

    if (a3 && *(a3 + 8))
    {
      if (AMSupportCFDictionaryGetBoolean())
      {
        v11 = &v26[1];
        v26[0] = "-f";
      }
    }
  }

  memset(&v24, 0, sizeof(v24));
  *v11 = 0;
  if (stat("/usr/local/bin/tconctl", &v24) == -1)
  {
    v20 = "tconctl not found\n";
LABEL_12:
    ramrod_log_msg(v20, v12, v13, v14, v15, v16, v17, v18, v23);
    return 1;
  }

  v19 = ramrod_execute_command(v25);
  if (v19)
  {
    if (v19 != 1)
    {
      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1009, 0, @"%s: %s returned %d", v16, v17, v18, "update_tcon");
      return 0;
    }

    v20 = "Device does not have TCON\n";
    goto LABEL_12;
  }

  return 1;
}

void sub_3AE08(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"Orion", sub_3AEFC, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3AEFC(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering update_orion\n", a2, a3, a4, a5, a6, a7, a8, v24);
  v9 = IOServiceMatching("AppleOrionMCU");
  if (!v9)
  {
    return 1;
  }

  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v9);
  if (!MatchingService)
  {
    v23 = "AppleOrionMCU service not found\n";
LABEL_9:
    ramrod_log_msg(v23, v11, v12, v13, v14, v15, v16, v17, v25);
    return 1;
  }

  v18 = MatchingService;
  memset(&v26, 0, sizeof(v26));
  bzero(v29, 0x400uLL);
  IOObjectRelease(v18);
  v27 = off_1A9A50;
  v28 = 0;
  if (stat("/usr/bin/orionmicroupdate", &v26) == -1)
  {
    v23 = "Orion updater not found\n";
    goto LABEL_9;
  }

  result = sub_44400("/usr/standalone/firmware/OrionMicro/", v29, a4);
  if (!result)
  {
    return result;
  }

  *(&v27 + 1) = v29;
  if (ramrod_execute_command(&v27))
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1010, 0, @"%s: %s returned %d", v20, v21, v22, "update_orion");
    return 0;
  }

  return 1;
}

uint64_t sub_3B074(uint64_t a1)
{
  result = sub_3D31C(@"Madea", sub_3B0CC, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3B0CC(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  context = checkpoint_closure_get_context();
  ramrod_log_msg("entering update_madea\n", v6, v7, v8, v9, v10, v11, v12, v38);
  v13 = IOServiceMatching("AppleMCDP29XXGPIO");
  if (!v13)
  {
    return 1;
  }

  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v13);
  if (!MatchingService)
  {
    v23 = "update_madea: AppleMCDP29XXGPIO service not found\n";
LABEL_13:
    ramrod_log_msg(v23, v15, v16, v17, v18, v19, v20, v21, v39);
    return 1;
  }

  IOObjectRelease(MatchingService);
  if (context)
  {
    v22 = checkpoint_engine_supports_reboot_retry();
  }

  else
  {
    v22 = 0;
  }

  memset(&v40, 0, sizeof(v40));
  *v41 = off_1A9A68;
  if (stat("/usr/bin/update_mcdp29xx", &v40) == -1)
  {
    v23 = "update_madea: updater not found, continuing.\n";
    goto LABEL_13;
  }

  ramrod_log_msg("update_madea: Restoring...\n", v15, v16, v17, v18, v19, v20, v21, v39);
  if (ramrod_execute_command(v41))
  {
    if (!v22)
    {
      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: %s returned %d", v28, v29, v30, "update_madea");
      return 0;
    }

    ramrod_log_msg("FAILURE IGNORED: %s returned %d - continuing..\n", v24, v25, v26, v27, v28, v29, v30, "/usr/bin/update_mcdp29xx");
    if (context)
    {
      checkpoint_closure_context_warning(context, "%s returned %d", v31, v32, v33, v34, v35, v36, "/usr/bin/update_mcdp29xx");
    }
  }

  return 1;
}

void sub_3B270(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"Peppy", sub_3B364, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3B364(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  memset(&v144, 0, sizeof(v144));
  bzero(__str, 0x400uLL);
  ramrod_log_msg("entering %s\n", v6, v7, v8, v9, v10, v11, v12, "device_supports_peppytool");
  v13 = IOServiceNameMatching("ApplePeppyDriver");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v13);
  if (!MatchingService)
  {
    ramrod_log_msg("%s: No Peppy driver service found\n", v15, v16, v17, v18, v19, v20, v21, "device_supports_peppytool");
LABEL_19:
    v142 = "update_peppy";
    v82 = "%s: Device does not support peppytool fw update.\n";
LABEL_20:
    ramrod_log_msg(v82, v75, v76, v77, v78, v79, v80, v81, v142);
    return 1;
  }

  v22 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"VersionInfo", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    ramrod_log_msg("Ne version info service found %s\n", v24, v25, v26, v27, v28, v29, v30, "device_supports_peppytool");
    IOObjectRelease(v22);
    goto LABEL_19;
  }

  v31 = CFProperty;
  buffer[4] = 0;
  *buffer = 0;
  v148.location = 0;
  v148.length = 4;
  CFDataGetBytes(CFProperty, v148, buffer);
  v32 = buffer[2];
  ramrod_log_msg("peppy hw version: %d\n", v33, v34, v35, v36, v37, v38, v39, buffer[2]);
  if (v32 < 3)
  {
LABEL_18:
    IOObjectRelease(v22);
    CFRelease(v31);
    goto LABEL_19;
  }

  if (v32 - 3 >= 3)
  {
    ramrod_log_msg("Unknown hw version. Not running peppytool\n", v40, v41, v42, v43, v44, v45, v46, v141);
    goto LABEL_18;
  }

  IOObjectRelease(v22);
  CFRelease(v31);
  if (stat("/usr/bin/peppytool", &v144) == -1)
  {
    ramrod_log_msg("%s: No peppy updater found\n", v47, v48, v49, v50, v51, v52, v53, "update_peppy");
    v74 = @"%s: No peppy updater found";
    goto LABEL_41;
  }

  if (stat("/usr/standalone/firmware/peppy/", &v144) == -1)
  {
    ramrod_log_msg("%s: Peppy FW not found: %s\n", v54, v55, v56, v57, v58, v59, v60, "update_peppy");
    v74 = @"%s: Peppy FW not found: %s";
    goto LABEL_41;
  }

  if (!ramrod_should_do_legacy_restored_internal_behaviors() || (Value = CFDictionaryGetValue(a1, @"Peppy FW Data")) == 0)
  {
    v84 = opendir("/usr/standalone/firmware/peppy/");
    if (!v84)
    {
      ramrod_log_msg("Can't open %s\n", v85, v86, v87, v88, v89, v90, v91, "/usr/standalone/firmware/peppy/");
      v74 = @"%s: Can't open %s";
      goto LABEL_41;
    }

    v92 = v84;
    bzero(buffer, 0x400uLL);
    v93 = "B238_Peppy_App";
    if (v32 == 4)
    {
      v93 = "B238_PeppyMC_App";
    }

    if (v32 <= 4)
    {
      snprintf(buffer, 0x400uLL, v93);
    }

    else
    {
      snprintf(buffer, 0x400uLL, "B238_PeppyMA_App");
    }

    while (1)
    {
      v94 = readdir(v92);
      if (!v94)
      {
        break;
      }

      d_name = v94->d_name;
      if ((v94->d_name[0] != 46 || v94->d_name[1] && (v94->d_name[1] != 46 || v94->d_name[2])) && strstr(v94->d_name, buffer))
      {
        snprintf(__str, 0x400uLL, "%s%s", "/usr/standalone/firmware/peppy/", d_name);
        v110 = 1;
        goto LABEL_46;
      }
    }

    ramrod_log_msg("No FW file found in %s\n", v95, v96, v97, v98, v99, v100, v101, "/usr/standalone/firmware/peppy/");
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: No FW file found in %s", v111, v112, v113, "update_peppy");
    goto LABEL_37;
  }

  v62 = Value;
  bzero(buffer, 0x400uLL);
  v63 = CFDictionaryGetValue(a1, @"Peppy FW Name");
  if (!v63 || (CFStringGetCString(v63, buffer, 1024, 0x8000100u), !buffer[0]))
  {
    strcpy(buffer, "override.bin");
  }

  snprintf(__str, 0x400uLL, "%s/%s", "/mnt1/usr/standalone/firmware", buffer);
  if (ramrod_create_directory_with_class("/mnt1/usr/standalone/firmware", 0x1EDu, 0, 0, -1, 1))
  {
    ramrod_log_msg("%s: Failed to create peppy FW override dir: %s\n", v64, v65, v66, v67, v68, v69, v70, "update_peppy");
    v74 = @"%s: Failed to create peppy FW override dir";
LABEL_41:
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, v74, v71, v72, v73, "update_peppy");
    goto LABEL_42;
  }

  v114 = ramrod_write_data_to_file_with_class(v62, __str, -1);
  ramrod_log_msg("%s: Writing peppy override file: %s\n", v115, v116, v117, v118, v119, v120, v121, "update_peppy");
  if (v114)
  {
    ramrod_log_msg("%s: Failed to write override file to URL: %d\n", v103, v104, v105, v106, v107, v108, v109, "update_peppy");
    v74 = @"%s: Failed to write override file to URL";
    goto LABEL_41;
  }

  v110 = 0;
  v92 = 0;
LABEL_46:
  ramrod_log_msg("Flashing peppy FW file: %s\n", v103, v104, v105, v106, v107, v108, v109, __str);
  if (stat(__str, &v144) == -1)
  {
    ramrod_log_msg("Peppy FW path not found\n", v122, v123, v124, v125, v126, v127, v128, v143);
    v140 = @"%s: Peppy FW path not found";
  }

  else
  {
    v145[0] = "/usr/bin/peppytool";
    v145[1] = "-u";
    v145[2] = __str;
    v145[3] = 0;
    v129 = ramrod_execute_command(v145);
    if (!v129)
    {
      if (v110)
      {
        closedir(v92);
      }

      return 1;
    }

    ramrod_log_msg("peppytool failure when attempting to flash the peppy firmware: %d\n", v130, v131, v132, v133, v134, v135, v136, v129);
    v140 = @"%s: peppytool failure when attempting to flash the peppy firmware: %d";
  }

  ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, v140, v137, v138, v139, "update_peppy");
  if (v110)
  {
LABEL_37:
    closedir(v92);
  }

LABEL_42:
  if (CFDictionaryGetValue(a1, @"Peppy Ignore Errors") == kCFBooleanTrue)
  {
    v82 = "Ignoring peppy updater errors\n";
    goto LABEL_20;
  }

  return 0;
}

void sub_3B950(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"Nitrogen", sub_3BA44, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3BA44(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  bzero(v140, 0x400uLL);
  bzero(v139, 0x3FFuLL);
  __str = 10;
  v6 = IOServiceNameMatching("AppleExternalAmpController");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
  if (MatchingService)
  {
    memset(&v135, 0, sizeof(v135));
    IOObjectRelease(MatchingService);
    if (stat("/usr/bin/ampctl", &v135) == -1)
    {
      ramrod_log_msg("%s: No nitrogen updater found\n", v15, v16, v17, v18, v19, v20, v21, "update_nitrogen");
      v42 = @"%s: No nitrogen updater found";
      goto LABEL_30;
    }

    if (stat("/usr/standalone/firmware/aeac", &v135) == -1)
    {
      ramrod_log_msg("%s: Nitrogen FW not found: %s\n", v22, v23, v24, v25, v26, v27, v28, "update_nitrogen");
      v42 = @"%s: Nitrogen FW not found";
      goto LABEL_30;
    }

    Value = CFDictionaryGetValue(a1, @"Nitrogen FW Data");
    if (Value)
    {
      v30 = Value;
      bzero(buffer, 0x400uLL);
      v31 = CFDictionaryGetValue(a1, @"Nitrogen FW Name");
      if (!v31 || (CFStringGetCString(v31, buffer, 1024, 0x8000100u), !buffer[0]))
      {
        strcpy(buffer, "override.bin");
      }

      snprintf(&__str, 0x400uLL, "%s/%s", "/mnt1/usr/standalone/firmware", buffer);
      if (ramrod_create_directory_with_class("/mnt1/usr/standalone/firmware", 0x1EDu, 0, 0, -1, 1))
      {
        ramrod_log_msg("%s: Failed to create nitrogen FW override dir: %s\n", v32, v33, v34, v35, v36, v37, v38, "update_nitrogen");
        v42 = @"%s: Failed to create nitrogen FW override dir";
LABEL_30:
        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, v42, v39, v40, v41, "update_nitrogen");
LABEL_31:
        if (CFDictionaryGetValue(a1, @"Nitrogen Ignore Errors") != kCFBooleanTrue)
        {
          return 0;
        }

        v50 = "Ignoring nitrogen updater errors\n";
        goto LABEL_34;
      }

      v72 = ramrod_write_data_to_file_with_class(v30, &__str, -1);
      ramrod_log_msg("%s: Writing nitrogen override file: %s\n", v73, v74, v75, v76, v77, v78, v79, "update_nitrogen");
      if (v72)
      {
        ramrod_log_msg("%s: Failed to write override file to URL: %d\n", v80, v81, v82, v83, v84, v85, v86, "update_nitrogen");
        v42 = @"%s: Failed to write override file to URL";
        goto LABEL_30;
      }

      v70 = 0;
      goto LABEL_43;
    }

    v51 = opendir("/usr/standalone/firmware/aeac");
    if (v51)
    {
      v59 = v51;
      v60 = readdir(v51);
      if (v60)
      {
        v68 = v60;
        v69 = 0;
        v70 = 0;
        do
        {
          if ((v68->d_name[0] != 46 || v68->d_name[1] && (v68->d_name[1] != 46 || v68->d_name[2])) && strstr(v68->d_name, ".bin"))
          {
            if (v69)
            {
              CFRelease(v69);
            }

            v71 = CFStringCreateWithCString(kCFAllocatorDefault, v68->d_name, 0x8000100u);
            v69 = v71;
            if (!v70 || CFStringCompare(v71, v70, 0x40uLL) == kCFCompareGreaterThan)
            {
              v70 = v69;
            }
          }

          v68 = readdir(v59);
        }

        while (v68);
        if (v70)
        {
          closedir(v59);
          CFStringGetCString(v70, v140, 1024, 0x8000100u);
          if (!v140[0])
          {
            ramrod_log_msg("%s: Failed to create nitrogen cstring from filename\n", v88, v89, v90, v91, v92, v93, v94, "update_nitrogen");
            ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: Failed to create nitrogen cstring from filename", v130, v131, v132, "update_nitrogen");
LABEL_50:
            CFRelease(v70);
            goto LABEL_31;
          }

          snprintf(&__str, 0x400uLL, "%s/%s", "/usr/standalone/firmware/aeac", v140);
LABEL_43:
          ramrod_log_msg("Flashing nitrogen FW file: %s\n", v80, v81, v82, v83, v84, v85, v86, &__str);
          if (stat(&__str, &v135) == -1)
          {
            ramrod_log_msg("nitrogen FW path not found\n", v111, v112, v113, v114, v115, v116, v117, v134);
            v129 = @"%s: nitrogen FW path not found";
          }

          else
          {
            v136[0] = "/usr/bin/ampctl";
            v136[1] = "updatefw";
            v136[2] = &__str;
            v136[3] = 0;
            v118 = ramrod_execute_command(v136);
            if (!v118)
            {
              if (v70)
              {
                CFRelease(v70);
              }

              return 1;
            }

            ramrod_log_msg("ampctl failure when attempting to flash the nitrogen firmware: %d\n", v119, v120, v121, v122, v123, v124, v125, v118);
            v129 = @"%s: ampctl failure when attempting to flash the nitrogen firmware: %d";
          }

          ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, v129, v126, v127, v128, "update_nitrogen");
          if (!v70)
          {
            goto LABEL_31;
          }

          goto LABEL_50;
        }
      }

      ramrod_log_msg("No FW file found in %s\n", v61, v62, v63, v64, v65, v66, v67, "/usr/standalone/firmware/aeac");
      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: No FW file found in nitrogen directory", v95, v96, v97, "copy_newest_nitrogen_fw_name");
      closedir(v59);
    }

    else
    {
      ramrod_log_msg("Can't open %s\n", v52, v53, v54, v55, v56, v57, v58, "/usr/standalone/firmware/aeac");
      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: Can't open nitrogen directory", v105, v106, v107, "copy_newest_nitrogen_fw_name");
    }

    ramrod_log_msg("%s: Nitrogen FW file not found\n", v98, v99, v100, v101, v102, v103, v104, "update_nitrogen");
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: Nitrogen FW file not found", v108, v109, v110, "update_nitrogen");
    goto LABEL_31;
  }

  ramrod_log_msg("%s: No nitrogen driver service found\n", v8, v9, v10, v11, v12, v13, v14, "device_supports_nitrogen");
  v50 = "device does not support nitrogen\n";
LABEL_34:
  ramrod_log_msg(v50, v43, v44, v45, v46, v47, v48, v49, v133);
  return 1;
}

void sub_3C05C(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"USBC", update_usbc, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

void sub_3C150(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"Baseband", sub_3C244, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3C244(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "update_baseband_legacy");
  theDict = 0;
  cf = 0;
  observer = a2;
  v117 = a3;
  if (ramrod_device_has_baseband_legacy())
  {
    (*(a2 + 8))(3, 0xFFFFFFFFLL, a3);
    v22 = BBUpdaterExtremeCreateWithError();
    if (v22)
    {
      BBUpdaterRegisterLogSink();
      ramrod_log_msg("%s: registering for progress notifications\n", v23, v24, v25, v26, v27, v28, v29, "update_baseband_legacy");
      LocalCenter = CFNotificationCenterGetLocalCenter();
      v31 = LocalCenter;
      if (LocalCenter)
      {
        CFNotificationCenterAddObserver(LocalCenter, &observer, sub_2F6D4, @"BBUpdateProgress", v22, CFNotificationSuspensionBehaviorDeliverImmediately);
      }

      v39 = sub_2EA98(a1, 0, a4);
      if (v39)
      {
        if (BBUpdaterSetOptions())
        {
          while (1)
          {
            ramrod_log_msg("%s: querying baseband info\n", v40, v41, v42, v43, v44, v45, v46, "update_baseband_legacy");
            if (!BBUpdaterExecCommand())
            {
              ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1004, cf, @"%s: failed querying baseband info", v47, v48, v49, "update_baseband_legacy");
              (*(a2 + 40))(0, theDict, cf, a3);
              goto LABEL_38;
            }

            bzero(buffer, 0x800uLL);
            v114 = theDict;
            v50 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@");
            if (v50)
            {
              v51 = v50;
              if (CFStringGetCString(v50, buffer, 2048, 0x8000100u))
              {
                ramrod_log_msg("%s: query returned %s\n", v52, v53, v54, v55, v56, v57, v58, "update_baseband_legacy");
              }

              CFRelease(v51);
            }

            Value = CFDictionaryGetValue(theDict, @"provisioning");
            if (Value)
            {
              v67 = Value;
              v68 = CFGetTypeID(Value);
              if (v68 == CFDictionaryGetTypeID())
              {
                ramrod_log_msg("query provisioningInfo successfully\n", v60, v61, v62, v63, v64, v65, v66, v114);
                v76 = CFDictionaryGetValue(v67, @"EID");
                if (qword_1C6BA8)
                {
                  CFRelease(qword_1C6BA8);
                }

                qword_1C6BA8 = v76;
                if (v76)
                {
                  bzero(v121, 0x400uLL);
                  if (CFStringGetCString(v76, v121, 1024, 0x8000100u))
                  {
                    ramrod_log_msg("The euiccssn is %s\n", v77, v78, v79, v80, v81, v82, v83, v121);
                  }

                  else
                  {
                    ramrod_log_msg("unable to convert to c string, the value of eUiccCSNStr might be unexpected\n", v77, v78, v79, v80, v81, v82, v83, v115);
                  }

                  CFRetain(qword_1C6BA8);
                }

                else
                {
                  ramrod_log_msg(" Not find eid in current BB output\n", v69, v70, v71, v72, v73, v74, v75, v115);
                }
              }
            }

            ramrod_log_msg("%s: requesting baseband firmware data\n", v60, v61, v62, v63, v64, v65, v66, "update_baseband_legacy");
            v84 = (*(a2 + 32))(theDict, a3);
            CFRelease(theDict);
            theDict = 0;
            if (!v84 || (v88 = CFGetTypeID(v84), v88 != CFDataGetTypeID()))
            {
              ramrod_create_error_cf(a4, @"RamrodErrorDomain", 3, 0, @"%s: host failed to provide baseband data", v85, v86, v87, "update_baseband_legacy");
              goto LABEL_38;
            }

            CFDataGetLength(v84);
            ramrod_log_msg("%s: received data from host (%lu bytes)\n", v89, v90, v91, v92, v93, v94, v95, "update_baseband_legacy");
            CFDictionarySetValue(v39, @"firmwareData", v84);
            CFRelease(v84);
            ramrod_log_msg("%s: performing next update stage\n", v96, v97, v98, v99, v100, v101, v102, "update_baseband_legacy");
            v103 = BBUpdaterExecCommand();
            v104 = v103;
            (*(a2 + 40))(v103, theDict, cf, a3);
            if (!v104)
            {
              break;
            }

            if (!theDict || (v105 = CFDictionaryGetValue(theDict, @"done")) == 0 || (v106 = v105, v107 = CFGetTypeID(v105), v107 != CFBooleanGetTypeID()))
            {
              v110 = cf;
              v111 = @"%s: baseband updater failed to indicate completion status";
              goto LABEL_37;
            }

            v108 = CFBooleanGetValue(v106);
            CFRelease(theDict);
            theDict = 0;
            if (v108)
            {
              ramrod_log_msg("%s: success\n", v40, v41, v42, v43, v44, v45, v46, "update_baseband_legacy");
              v109 = 1;
              goto LABEL_39;
            }
          }

          v110 = cf;
          v111 = @"%s: failed to perform next stage";
        }

        else
        {
          v110 = cf;
          v111 = @"%s: BBUpdaterSetOptions rejected options";
        }

LABEL_37:
        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1004, v110, v111, v44, v45, v46, "update_baseband_legacy");
      }

LABEL_38:
      v109 = 0;
LABEL_39:
      if (v31)
      {
        ramrod_log_msg("%s: calling CFNotificationCenterRemoveEveryObserver\n", v32, v33, v34, v35, v36, v37, v38, "update_baseband_legacy");
        CFNotificationCenterRemoveEveryObserver(v31, &observer);
      }
    }

    else
    {
      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1004, cf, @"%s: BBUpdaterExtremeCreateWithError failed", v19, v20, v21, "update_baseband_legacy");
      v109 = 0;
      v39 = 0;
    }
  }

  else
  {
    ramrod_log_msg("updater not supported\n", v12, v13, v14, v15, v16, v17, v18, v113);
    v39 = 0;
    v22 = 0;
    v109 = 1;
  }

  if (cf)
  {
    ramrod_log_msg_cf(@"%s: bbupdater error: %@\n", "update_baseband_legacy", cf, observer, v117);
    CFRelease(cf);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v22)
  {
    BBUpdaterSetOptions();
    CFRelease(v22);
  }

  return v109;
}

void sub_3C7BC(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"Baseband", sub_3C8B0, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3C8B0(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "update_baseband");
  if (ramrod_device_has_baseband())
  {
    (*(a2 + 8))(3, 0, a3);
    v52 = a3;
    v53 = 0;
    BYTE4(v53) = *(a3 + 40) == 1;
    v54 = 0;
    v55 = 0;
    v51[0] = a2;
    v51[1] = a3;
    v51[2] = &v52;
    v19 = sub_2EA98(a1, *(a3 + 8), a4);
    if (v19)
    {
      v27 = v19;
      v28 = *(v52 + 8);
      *(v52 + 8) = v19;
      MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a1);
      if (ramrod_device_has_baseband())
      {
        v37 = os_variant_uses_ephemeral_storage();
        v38 = v37 ? "ramrod_update running in limited environment\n" : "ramrod_update running in normal env\n";
        ramrod_log_msg(v38, v30, v31, v32, v33, v34, v35, v36, v49);
        if (v37)
        {
          CFDictionarySetValue(MutableCopy, @"PreflightContext", @"Limited");
          ramrod_log_msg("Overriding baseband update options with limited context", v39, v40, v41, v42, v43, v44, v45, v50);
        }
      }

      updated = update_generic_firmware(@"Baseband", MutableCopy, v51, a4);
      if (updated)
      {
        v47 = 100;
      }

      else
      {
        v47 = 0xFFFFFFFFLL;
      }

      (*(a2 + 8))(3, v47, a3);
      *(v52 + 8) = v28;
      CFRelease(v27);
      AMSupportSafeRelease();
    }

    else
    {
      ramrod_log_msg("Failed to create_baseband_update_options", v20, v21, v22, v23, v24, v25, v26, v49);
      return 0;
    }
  }

  else
  {
    ramrod_log_msg("Updater not supported\n", v12, v13, v14, v15, v16, v17, v18, v49);
    return 1;
  }

  return updated;
}

void sub_3CA6C(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"Rose", sub_3CD04, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  Value = CFDictionaryGetValue(*(a1 + 56), @"IgnoreRoseFailures");
  v14 = Value;
  if (Value && (v15 = CFGetTypeID(Value), v15 == CFBooleanGetTypeID()) && CFBooleanGetValue(v14))
  {
    v16 = 0;
    v17 = "ignored";
  }

  else
  {
    v17 = "NOT ignored";
    v16 = 1;
  }

  ramrod_log_msg("Rose failures will be %s\n", v7, v8, v9, v10, v11, v12, v13, v17);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    bzero(buffer, 0x400uLL);
    v18 = *(*(*(a1 + 32) + 8) + 24);
    if (v18)
    {
      v19 = CFErrorCopyDescription(v18);
      v20 = v19;
      v21 = *(*(*(a1 + 32) + 8) + 24);
      if (v19)
      {
        CFStringGetCString(v19, buffer, 1023, 0x8000100u);
        CFRelease(v20);
      }

      if (v16)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v21 = 0;
      if (v16)
      {
LABEL_13:
        v22 = "NOT ignoring";
LABEL_18:
        v31 = @"Unknown reason";
        if (v21)
        {
          v31 = v21;
        }

        ramrod_log_msg_cf(@"Rose firmware update failed (%s): %@\n", v22, v31);
        goto LABEL_21;
      }
    }

    context = checkpoint_closure_get_context();
    v30 = buffer;
    if (!buffer[0])
    {
      v30 = "Unknown reason";
    }

    checkpoint_closure_context_warning(context, "Rose firmware update failed: %s\n", v24, v25, v26, v27, v28, v29, v30);
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v22 = "Ignoring";
    goto LABEL_18;
  }

LABEL_21:
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v32 = *(*(*(a1 + 32) + 8) + 24);
  if (v32)
  {
    CFRelease(v32);
  }
}

void sub_3CCB4(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x3CC38);
  }

  _Unwind_Resume(exc_buf);
}

uint64_t sub_3CD04(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "update_rose");
  if (ramrod_device_has_rose())
  {
    (*(a2 + 8))(8, 0, a3);
    v24 = a3;
    v25 = 0;
    BYTE4(v25) = *(a3 + 40) == 1;
    v26 = 0;
    v27 = 0;
    v23[0] = a2;
    v23[1] = a3;
    v23[2] = &v24;
    updated = update_generic_firmware(@"Rose", a1, v23, a4);
    if (updated)
    {
      v20 = 100;
    }

    else
    {
      v20 = 0xFFFFFFFFLL;
    }

    (*(a2 + 8))(8, v20, a3);
  }

  else
  {
    ramrod_log_msg("Skipping Rose update since it does not appear to be supported. If it should be, file a radar!\n", v12, v13, v14, v15, v16, v17, v18, v22);
    return 1;
  }

  return updated;
}

uint64_t sub_3CDE8(uint64_t a1)
{
  result = sub_3D31C(@"Centauri", sub_3CE40, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3CE40(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "update_centauri");
  if (ramrod_device_has_centauri())
  {
    (*(a2 + 8))(22, 0, a3);
    v24 = a3;
    v25 = 0;
    BYTE4(v25) = *(a3 + 40) == 1;
    v26 = 0;
    v27 = 0;
    v23[0] = a2;
    v23[1] = a3;
    v23[2] = &v24;
    updated = update_generic_firmware(@"Centauri", a1, v23, a4);
    if (updated)
    {
      v20 = 100;
    }

    else
    {
      v20 = 0xFFFFFFFFLL;
    }

    (*(a2 + 8))(22, v20, a3);
  }

  else
  {
    ramrod_log_msg("Skipping Centauri update since it's not present\n", v12, v13, v14, v15, v16, v17, v18, v22);
    return 1;
  }

  return updated;
}

uint64_t sub_3CF24(uint64_t a1)
{
  result = sub_3D31C(@"Canary", sub_3CF7C, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3CF7C(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "update_canary");
  v16 = a3;
  v17 = 0;
  BYTE4(v17) = *(a3 + 40) == 1;
  v18 = 0;
  v19 = 0;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = &v16;
  v12 = MGCopyAnswer();
  AMSupportSafeRelease();
  if (v12 == kCFBooleanFalse)
  {
    updated = update_generic_firmware(@"Canary", a1, v15, a4);
  }

  else
  {
    updated = 1;
  }

  return updated & 1;
}

void sub_3D044(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(*(*(a1 + 40) + 8) + 24);
  if (v10)
  {
    CFRetain(v10);
  }

  ramrod_log_msg("firmware_update_se: Waiting for Rose To Finish\n", a2, a3, a4, a5, a6, a7, a8, v12);
  dispatch_sync(*(a1 + 32), &stru_1AD9D8);
  *(*(*(a1 + 48) + 8) + 24) = sub_3D31C(@"SE", sub_3D160, *(a1 + 56), (*(*(a1 + 40) + 8) + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 48) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 40) + 8) + 24)];
  v11 = *(*(*(a1 + 40) + 8) + 24);
  if (v11)
  {
    CFRelease(v11);
  }
}

uint64_t sub_3D160(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "update_se");
  if (ramrod_device_has_stockholm())
  {
    (*(a2 + 8))(6, 0, a3);
    v22[0] = a3;
    memset(&v22[1], 0, 24);
    v21[0] = a2;
    v21[1] = a3;
    v21[2] = v22;
    return update_generic_firmware(@"SE", a1, v21, a4);
  }

  else
  {
    ramrod_log_msg("No Stockholm present on device, skipping SE update\n", v12, v13, v14, v15, v16, v17, v18, v20);
    return 1;
  }
}

void sub_3D214(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 8);
}

void sub_3D274(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

uint64_t sub_3D2C4(uint64_t a1)
{
  result = sub_3D31C(@"Savage", sub_3D5D4, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 98);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3D31C(const void *a1, uint64_t (*a2)(const __CFDictionary *, const __CFDictionary *), const __CFDictionary **a3, CFErrorRef *a4, uint64_t a5)
{
  v10 = *a3;
  context = checkpoint_closure_get_context();
  if (!v10)
  {
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(v10, @"DisabledByDefault");
  v22 = !Value || (v20 = Value, v21 = CFGetTypeID(Value), v21 != CFBooleanGetTypeID()) || CFBooleanGetValue(v20) == 0;
  v23 = CFDictionaryGetValue(v10, a1);
  if (v23)
  {
    v24 = v23;
    v25 = CFGetTypeID(v23);
    if (v25 != CFBooleanGetTypeID())
    {
      if (a4 && !*a4)
      {
        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 2, 0, @"%s: '%@' argument had unexpected value", v15, v16, v17, "ramrod_update_device_firmware_enabled_with_default_error");
      }

      goto LABEL_40;
    }

    v22 = CFBooleanGetValue(v24);
  }

  if (v22 != 1)
  {
    a5 = 0;
LABEL_40:
    checkpoint_closure_context_step_disabled(context, v11, v12, v13, v14, v15, v16, v17);
    step_desc = checkpoint_closure_context_get_step_desc(context);
    ramrod_log_msg("'%s' update disabled\n", v71, v72, v73, v74, v75, v76, v77, *(step_desc + 8));
    return a5;
  }

LABEL_10:
  cf = 0;
  if (qword_1C6BC8)
  {
    if (checkpoint_engine_supports_reboot_retry())
    {
      if (checkpoint_is_reboot_retry())
      {
        v26 = checkpoint_closure_context_get_step_desc(context);
        if (!v26 || (*(v26 + 36) & 1) == 0)
        {
          v27 = checkpoint_closure_get_context();
          v28 = checkpoint_closure_context_get_step_desc(v27);
          if (sub_36FC8(v28, v29, v30, v31, v32, v33, v34, v35))
          {
LABEL_27:
            v47 = 0;
            goto LABEL_28;
          }
        }
      }
    }
  }

  v36 = checkpoint_closure_context_get_immediate_retry_attempt_number(context, v11, v12, v13, v14, v15, v16, v17) != 0;
  v37 = a3[2];
  *(v37 + 40) = v36;
  *(v37 + 41) = *(a3 + 24);
  v38 = a2(*a3, a3[1]);
  if (v38)
  {
    v46 = qword_1C6BC8 == 0;
  }

  else
  {
    v46 = 1;
  }

  if (!v46)
  {
    v52 = checkpoint_engine_supports_reboot_retry();
    if (v52 && !checkpoint_is_reboot_retry())
    {
      v53 = checkpoint_closure_get_context();
      v54 = checkpoint_closure_context_get_step_desc(v53);
      sub_36DE8(v54, v55, v56, v57, v58, v59, v60, v61, v79);
    }

    goto LABEL_27;
  }

  v47 = v38 == 0;
  v48 = cf;
  if (!v38 && !cf)
  {
    ramrod_log_msg("Creating error outside of updater - value %d\n", v39, v40, v41, v42, v43, v44, v45, a5);
    ramrod_create_error_cf(&cf, @"RamrodErrorDomain", 7, 0, @"Generic updater error: %d", v49, v50, v51, a5);
    v47 = 1;
LABEL_28:
    v48 = cf;
  }

  if (!v48)
  {
    goto LABEL_45;
  }

  ramrod_log_msg_cf(@"Update[%@] error - %@\n", a1, v48);
  if (a4)
  {
    if (v47)
    {
      if (!checkpoint_closure_context_get_immediate_retry_attempt_number(context, v62, v63, v64, v65, v66, v67, v68))
      {
        CFRetain(cf);
        if (*a4)
        {
          CFRelease(*a4);
        }

        v69 = cf;
        goto LABEL_43;
      }
    }

    else if (!*a4)
    {
      v69 = CFRetain(cf);
LABEL_43:
      *a4 = v69;
    }
  }

  CFRelease(cf);
LABEL_45:
  if (v47)
  {
    return a5;
  }

  else
  {
    return 0;
  }
}

void sub_3D5E0(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"Veridian", sub_3D6D4, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3D6D4(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "update_veridian");
  (*(a2 + 8))(9, 0, a3);
  v33 = a3;
  v34 = 0;
  BYTE4(v34) = *(a3 + 40) == 1;
  v35 = 0;
  v36 = 0;
  v32[0] = a2;
  v32[1] = a3;
  v32[2] = &v33;
  if (!ramrod_device_has_veridian())
  {
    ramrod_log_msg("Not a Veridian-capable device, nothing to update..\n", v12, v13, v14, v15, v16, v17, v18, v31);
    v27 = *(a2 + 8);
LABEL_7:
    v29 = 100;
    v28 = 1;
    goto LABEL_8;
  }

  if (AMSupportGetValueForKeyPathInDict() == kCFBooleanTrue)
  {
    ramrod_log_msg("Forcing Repersonalization on each loop of Veridian\n", v19, v20, v21, v22, v23, v24, v25, v31);
    BYTE4(v34) = 1;
  }

  updated = update_generic_firmware(@"T200", a1, v32, a4);
  v27 = *(a2 + 8);
  if (updated)
  {
    goto LABEL_7;
  }

  v28 = 0;
  v29 = 0xFFFFFFFFLL;
LABEL_8:
  v27(9, v29, a3);
  return v28;
}

void sub_3D800(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"AppleTCON", sub_3D8F4, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3D8F4(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "update_appletcon");
  (*(a2 + 8))(13, 0, a3);
  v33 = a3;
  v34 = 0;
  BYTE4(v34) = *(a3 + 40) == 1;
  v35 = 0;
  v36 = 0;
  v32[0] = a2;
  v32[1] = a3;
  v32[2] = &v33;
  if (!ramrod_device_has_appletcon(*(a3 + 8)))
  {
    ramrod_log_msg("AppleTCON not present or not flashable, nothing to update..\n", v12, v13, v14, v15, v16, v17, v18, v31);
    v27 = *(a2 + 8);
LABEL_7:
    v29 = 100;
    v28 = 1;
    goto LABEL_8;
  }

  if (AMSupportGetValueForKeyPathInDict() == kCFBooleanTrue)
  {
    ramrod_log_msg("Forcing Repersonalization on each loop of AppleTCON\n", v19, v20, v21, v22, v23, v24, v25, v31);
    BYTE4(v34) = 1;
  }

  updated = update_generic_firmware(@"AppleTCON", a1, v32, a4);
  v27 = *(a2 + 8);
  if (updated)
  {
    goto LABEL_7;
  }

  v28 = 0;
  v29 = 0xFFFFFFFFLL;
LABEL_8:
  v27(13, v29, a3);
  return v28;
}

uint64_t sub_3DA24(uint64_t a1)
{
  result = sub_3D31C(@"Ace3", sub_3DA7C, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3DA7C(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "update_ace3");
  v12 = (*(a2 + 8))(17, 0, a3);
  v35 = a3;
  v36 = 0;
  BYTE4(v36) = *(a3 + 40) == 1;
  v37 = 0;
  v38 = 0;
  v34[0] = a2;
  v34[1] = a3;
  v34[2] = &v35;
  if (ramrod_device_has_ace3(v12, v13, v14, v15, v16, v17, v18, v19))
  {
    ramrod_delete_NVRAM_variable(@"usbcfw.version", 0);
    ramrod_delete_NVRAM_variable(@"ramrod-kickstart-aces", 0);
    updated = update_generic_firmware(@"Ace3", a1, v34, a4);
    if (!updated)
    {
      v30 = 0;
      v29 = *(a2 + 8);
      goto LABEL_10;
    }

    v28 = updated;
    if (CFDictionaryContainsKey(*(a3 + 8), @"UUID"))
    {
      ramrod_set_NVRAM_variable_sync(@"usbcfw.version", @"true", 0, 1);
    }

    v29 = *(a2 + 8);
    if ((v28 & 1) == 0)
    {
      v30 = 0;
LABEL_10:
      v31 = 0xFFFFFFFFLL;
      goto LABEL_11;
    }
  }

  else
  {
    ramrod_log_msg("Ace3 not present or not flashable, nothing to update..\n", v20, v21, v22, v23, v24, v25, v26, v33);
    v29 = *(a2 + 8);
  }

  v31 = 100;
  v30 = 1;
LABEL_11:
  v29(17, v31, a3);
  return v30;
}

uint64_t sub_3DBCC(uint64_t a1)
{
  result = sub_3D31C(@"USBCRetimer", sub_3DC24, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3DC24(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "update_usbcretimer");
  (*(a2 + 8))(14, 0, a3);
  v25 = a3;
  v26 = 0;
  BYTE4(v26) = *(a3 + 40) == 1;
  v27 = 0;
  v28 = 0;
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = &v25;
  ramrod_delete_NVRAM_variable(@"ramrod-kickstart-appletypecretimer", 0);
  if (_ramrod_device_has_usbcretimer(@"uatcrt"))
  {
    v12 = @"AppleTypeCRetimerUARP";
  }

  else
  {
    if (!_ramrod_device_has_usbcretimer(@"atcrt"))
    {
      ramrod_log_msg("AppleUSBTypeCRetimer not present or not flashable, nothing to update..\n", v13, v14, v15, v16, v17, v18, v19, v23);
      goto LABEL_9;
    }

    v12 = @"AppleTypeCRetimer";
  }

  if (update_generic_firmware(v12, a1, v24, a4))
  {
    ramrod_set_NVRAM_variable(@"ramrod-kickstart-appletypecretimer", @"1", 0);
LABEL_9:
    v21 = 100;
    v20 = 1;
    goto LABEL_10;
  }

  v20 = 0;
  v21 = 0xFFFFFFFFLL;
LABEL_10:
  (*(a2 + 8))(14, v21, a3);
  return v20;
}

void sub_3DD58(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"MantaMCU", sub_3DE4C, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3DE4C(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "update_manta_mcu");
  v12 = (*(a2 + 8))(19, 0, a3);
  v34 = a3;
  v35 = 0;
  BYTE4(v35) = *(a3 + 40) == 1;
  v36 = 0;
  v37 = 0;
  v33[0] = a2;
  v33[1] = a3;
  v33[2] = &v34;
  if (!ramrod_device_has_manta_mcu(v12, v13, v14, v15, v16, v17, v18, v19))
  {
    ramrod_log_msg("manta_mcu not present or not flashable, nothing to update..\n", v20, v21, v22, v23, v24, v25, v26, v32);
    v28 = *(a2 + 8);
    goto LABEL_5;
  }

  updated = update_generic_firmware(@"MantaMCU", a1, v33, a4);
  v28 = *(a2 + 8);
  if (updated)
  {
LABEL_5:
    v30 = 100;
    v29 = 1;
    goto LABEL_6;
  }

  v29 = 0;
  v30 = 0xFFFFFFFFLL;
LABEL_6:
  v28(19, v30, a3);
  return v29;
}

void sub_3DF34(uint64_t a1, void *a2)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (v5)
  {
    CFRetain(v5);
    v4 = *(*(a1 + 32) + 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = sub_3D31C(@"Vinyl", sub_3E028, *(a1 + 48), (v4 + 24), 0xFFFFFFFFLL);
  [a2 setResult:*(*(*(a1 + 40) + 8) + 24)];
  [a2 setError:*(*(*(a1 + 32) + 8) + 24)];
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t sub_3E028(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "update_vinyl");
  if (ramrod_device_has_vinyl(v12, v13, v14, v15, v16, v17, v18, v19))
  {
    (*(a2 + 8))(21, 0, a3);
    v32[0] = a3;
    memset(&v32[1], 0, 24);
    v31[0] = a2;
    v31[1] = a3;
    v31[2] = v32;
    updated = update_generic_firmware(@"Vinyl", a1, v31, a4);
    if (updated)
    {
      v28 = 100;
    }

    else
    {
      v28 = 0xFFFFFFFFLL;
    }

    (*(a2 + 8))(21, v28, a3);
  }

  else
  {
    ramrod_log_msg("Vinyl not present or not flashable, nothing to update..\n", v20, v21, v22, v23, v24, v25, v26, v30);
    return 1;
  }

  return updated;
}

uint64_t sub_3E0FC(uint64_t a1)
{
  result = sub_3D31C(@"AppleTconUARP", sub_3E154, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3E154(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "update_appletconuarp");
  v12 = (*(a2 + 8))(23, 0, a3);
  v34 = a3;
  v35 = 0;
  BYTE4(v35) = *(a3 + 40) == 1;
  v36 = 0;
  v37 = 0;
  v33[0] = a2;
  v33[1] = a3;
  v33[2] = &v34;
  if (!ramrod_device_has_appletconuarp(v12, v13, v14, v15, v16, v17, v18, v19))
  {
    ramrod_log_msg("AppleTconUARP not present or not flashable, nothing to update..\n", v20, v21, v22, v23, v24, v25, v26, v32);
    v28 = *(a2 + 8);
    goto LABEL_5;
  }

  updated = update_generic_firmware(@"AppleTconUARP", a1, v33, a4);
  v28 = *(a2 + 8);
  if (updated)
  {
LABEL_5:
    v30 = 100;
    v29 = 1;
    goto LABEL_6;
  }

  v29 = 0;
  v30 = 0xFFFFFFFFLL;
LABEL_6:
  v28(23, v30, a3);
  return v29;
}

BOOL ramrod_update_firmware_post_sealing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v46 = 0;
  v47 = &v46;
  v48 = 0x4010000000;
  v49 = "";
  v50 = 0u;
  v51 = 0u;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  ramrod_log_msg("entering ramrod_update_firmware_post_sealing\n", a2, a3, a4, a5, a6, a7, a8, v33);
  if (a5)
  {
    *a5 = 0;
  }

  v13 = v47;
  v47[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  *(v13 + 56) = v9;
  v14 = *(a3 + 8);
  if (!v14 || (Value = CFDictionaryGetValue(v14, @"FDRSkipSealing"), (v16 = Value) == 0) || (v17 = CFGetTypeID(Value), v17 != CFBooleanGetTypeID()))
  {
    v16 = kCFBooleanFalse;
  }

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3254779904;
  v41[2] = sub_3E74C;
  v41[3] = &unk_1AD948;
  v41[4] = &v42;
  v41[5] = &v46;
  v41[6] = a5;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3254779904;
  v40[2] = sub_3E7B0;
  v40[3] = &unk_1AD948;
  v40[4] = &v42;
  v40[5] = &v46;
  v40[6] = a5;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3254779904;
  v39[2] = sub_3EA44;
  v39[3] = &unk_1ADA28;
  v39[4] = &v42;
  v39[5] = &v46;
  v39[6] = v16;
  v39[7] = a5;
  v37[6] = a5;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3254779904;
  v38[2] = sub_3EB6C;
  v38[3] = &unk_1AD948;
  v38[4] = &v46;
  v38[5] = &v42;
  v38[6] = a5;
  v36[6] = a5;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3254779904;
  v37[2] = sub_3FC70;
  v37[3] = &unk_1AD948;
  v37[4] = &v42;
  v37[5] = &v46;
  v35[6] = a5;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3254779904;
  v36[2] = sub_4021C;
  v36[3] = &unk_1AD948;
  v36[4] = &v42;
  v36[5] = &v46;
  v34[6] = a5;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3254779904;
  v35[2] = sub_4093C;
  v35[3] = &unk_1AD948;
  v35[4] = &v42;
  v35[5] = &v46;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3254779904;
  v34[2] = sub_40994;
  v34[3] = &unk_1AD948;
  v34[4] = &v42;
  v34[5] = &v46;
  bzero(&v52, 0x360uLL);
  v52 = 5377;
  v53 = "update_savage_postseal";
  v54 = v41;
  v56 = 5376;
  v55 = 1;
  v57 = "decompress_pearl_data";
  v58 = v40;
  v59 = 1;
  v60 = 5379;
  v61 = "update_rose_postseal";
  v62 = v39;
  v63 = 1;
  v64 = 4890;
  v65 = "stage_fdr_ean";
  v66 = v36;
  v67 = 1;
  v68 = 4889;
  v69 = "ensure_fdr_ean";
  v70 = v35;
  v71 = 1;
  v72 = 5380;
  v73 = "update_fdr_ean";
  v74 = v38;
  v75 = 1;
  v76 = 4884;
  v77 = "update_fillmore";
  v78 = v37;
  v79 = 1;
  v80 = 2;
  v81 = 5381;
  v82 = "baseband_postseal";
  v83 = v34;
  v84 = 1;
  v18 = checkpoint_engine_init(0, 22, 0);
  v23 = v18;
  if (v18)
  {
    checkpoint_engine_perform(v18, &v52, v43 + 6, a5, v19, v20, v21, v22);
    checkpoint_engine_free(v23, v24, v25, v26, v27, v28, v29, v30);
    v31 = v43[6] == 0;
  }

  else
  {
    ramrod_create_error_cf(a5, @"RamrodErrorDomain", 6, 0, @"%s: failed to allocate firmware checkpoint engine", v20, v21, v22, "ramrod_update_firmware_post_sealing");
    v31 = 0;
    v43[6] = 18;
  }

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
  return v31;
}

void sub_3E720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&a72, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3E74C(uint64_t a1)
{
  result = sub_3D31C(@"SavagePostSeal", sub_3E7A4, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3E7B0(uint64_t a1)
{
  result = sub_3D31C(@"DecompressPearl", sub_3E808, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3E808(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = 0;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "decompress_pearl_data");
  v11 = IOServiceMatching("ApplePearlSEPDriver");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v11);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    (*(a2 + 8))(7, 0xFFFFFFFFLL, a3);
    v27 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s/FactoryData/%@");
    if (!v27)
    {
      sub_D90A4(a4, v20, v21, v22, v23, v24, v25, v26);
      goto LABEL_13;
    }

    URLFromString = AMSupportCreateURLFromString();
    if (!URLFromString)
    {
      sub_D9068(a4, v27, v29, v30, v31, v32, v33, v34);
      goto LABEL_13;
    }

    values = URLFromString;
    keys = @"DataDirectory";
    v35 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v36 = ramrod_copy_fdr_data_instance(@"prf1", 0, v35, &v61);
    v44 = v36;
    if (v36)
    {
      BytePtr = CFDataGetBytePtr(v36);
      Length = CFDataGetLength(v44);
      if (decompressReferenceFrames(BytePtr, Length, "/mnt6/Pearl"))
      {
        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, v61, @"%s: decompressReferenceFrames returned %d", v47, v48, v49, "decompress_pearl_data");
LABEL_13:
        v57 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      ramrod_log_msg("No prf1 data found, continuing..\n", v37, v38, v39, v40, v41, v42, v43, "/mnt6");
      context = checkpoint_closure_get_context();
      checkpoint_closure_context_warning(context, "decompress_pearl_data missing prf1", v51, v52, v53, v54, v55, v56, v60);
    }
  }

  else
  {
    ramrod_log_msg("No Savage present on device, skipping update\n", v13, v14, v15, v16, v17, v18, v19, v59);
  }

  v57 = 1;
LABEL_10:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v57;
}

void sub_3EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 48) == kCFBooleanTrue)
  {

    ramrod_log_msg("skipping Rose post-sealing step since FDR sealing is being skipped\n", a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = sub_3D31C(@"RosePostSeal", sub_3EAD0, (*(*(a1 + 40) + 8) + 32), *(a1 + 56), 0xFFFFFFFFLL);
  }
}

uint64_t sub_3EAD0(CFDictionaryRef theDict, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  if (MutableCopy)
  {
    AMSupportCFDictionarySetBoolean();
    v19 = sub_3CD04(MutableCopy, a2, a3, a4, v15, v16, v17, v18);
  }

  else
  {
    ramrod_log_msg("Failed to allocate mutableOptions\n", v7, v8, v9, v10, v11, v12, v13, v21);
    v19 = 0;
  }

  AMSupportSafeRelease();
  return v19;
}

uint64_t sub_3EB6C(uint64_t a1)
{
  sub_3D31C(@"FDREAN", sub_3EBF8, (*(*(a1 + 32) + 8) + 32), 0, 0xFFFFFFFFLL);
  result = sub_3D31C(@"FDREAN", sub_3F910, (*(*(a1 + 32) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_3EBF8(const void *a1, uint64_t a2, void *a3, CFErrorRef *a4)
{
  v6 = a2;
  v352 = 0;
  memset(cf, 0, sizeof(cf));
  (*(a2 + 8))(11, 0xFFFFFFFFLL);
  if (!a3)
  {
    v345 = a1;
    v346 = a4;
    ramrod_log_msg("context is NULL\n", v8, v9, v10, v11, v12, v13, v14, v343);
    goto LABEL_113;
  }

  if (!a4)
  {
    v345 = a1;
    v346 = 0;
    ramrod_log_msg("error is NULL\n", v8, v9, v10, v11, v12, v13, v14, v343);
    goto LABEL_113;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v345 = a1;
    v346 = a4;
    ramrod_log_msg("dataForEAN failed allocation\n", v15, v16, v17, v18, v19, v20, v21, v343);
    goto LABEL_113;
  }

  v23 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v23);
  theDict = Mutable;
  if (!MatchingService)
  {
    ramrod_log_msg("Skipping update_fdr_ean on device with no EAN\n", v25, v26, v27, v28, v29, v30, v31, v343);
LABEL_30:
    v348 = 1;
    v145 = 100;
    goto LABEL_77;
  }

  IOObjectRelease(MatchingService);
  v39 = ramrod_ticket_copy();
  if (!v39)
  {
    v345 = a1;
    v346 = a4;
    sub_D9428(a4, v32, v33, v34, v35, v36, v37, v38);
    goto LABEL_113;
  }

  has_BOOLean_entitlement = ramrod_ticket_has_BOOLean_entitlement(1717663091, v32, v33, v34, v35, v36, v37, v38);
  CFDictionarySetValue(Mutable, @"aptk", v39);
  if (!sub_33250(Mutable, v6, a3, 0, v41, v42, v43, v44))
  {
    v345 = a1;
    v346 = a4;
    sub_D9518(a4, v45, v46, v47, v48, v49, v50, v51);
    goto LABEL_113;
  }

  CFDictionaryRemoveAllValues(Mutable);
  if (!AMFDRSealingMapGetEntriesForDevice())
  {
    ramrod_log_msg("Skipping update_fdr_ean on non-FDR device\n", v52, v53, v54, v55, v56, v57, v58, v343);
    goto LABEL_30;
  }

  v354 = 0;
  theArray[0] = 0;
  capacity = 0;
  v347 = v6;
  if ((AMFDRSealingMapCopyDataClassesWithAttribute() & 1) == 0 || (AMFDRSealingMapCopyDataClassesWithAttribute() & 1) == 0)
  {
    ramrod_log_msg("AMFDRSealingMapCopyDataClassesWithAttribute returned failure\n", v59, v60, v61, v62, v63, v64, v65, v343);
    v74 = 0;
LABEL_102:
    v75 = 1;
    goto LABEL_17;
  }

  v73 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!v73)
  {
    ramrod_log_msg("failed to allocate dataClasses\n", v66, v67, v68, v69, v70, v71, v72, v343);
    v74 = 0;
    goto LABEL_102;
  }

  if (CFArrayGetCount(v73))
  {
    v74 = CFRetain(v73);
  }

  else
  {
    v74 = 0;
  }

  v75 = 0;
LABEL_17:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v75)
  {
    v345 = a1;
    v346 = a4;
    ramrod_log_msg("_copy_ean_dataclass returned failure\n", v76, v77, v78, v79, v80, v81, v82, v343);
LABEL_112:
    v6 = v347;
    goto LABEL_113;
  }

  v6 = v347;
  if (ramrod_should_do_legacy_restored_internal_behaviors())
  {
    v90 = *(v347 + 128);
    if (v90)
    {
      if (!v90(*a3, a3[1]))
      {
        v345 = a1;
        v346 = a4;
        sub_D9170(a4, v83, v84, v85, v86, v87, v88, v89);
        goto LABEL_113;
      }
    }
  }

  if (!v74)
  {
    ramrod_log_msg("No FDR Data for EAN.\n", v83, v84, v85, v86, v87, v88, v89, v343);
    goto LABEL_30;
  }

  v346 = a4;
  Count = CFArrayGetCount(v74);
  v92 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v100 = v92;
  v345 = a1;
  v349 = v74;
  if (!v92)
  {
    ramrod_log_msg("fdrOptions failed allocation\n", v93, v94, v95, v96, v97, v98, v99, v343);
    goto LABEL_112;
  }

  CFDictionaryAddValue(v92, @"CopyAllowUnsealed", kCFBooleanTrue);
  CFDictionarySetValue(v100, @"GetCombined", kCFBooleanFalse);
  v343 = "/mnt6";
  v101 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s/FactoryData/%@");
  if (!v101)
  {
    sub_D94DC(v346, v102, v103, v104, v105, v106, v107, v108);
    goto LABEL_112;
  }

  v109 = v101;
  URLFromString = AMSupportCreateURLFromString();
  if (!URLFromString)
  {
    sub_D94A0(v346, v109, v111, v112, v113, v114, v115, v116);
    goto LABEL_112;
  }

  CFDictionaryAddValue(v100, @"DataDirectory", URLFromString);
  if (!AMFDRCreateTypeWithOptions())
  {
    sub_D9464(v346, v117, v118, v119, v120, v121, v122, v123);
    goto LABEL_112;
  }

  v124 = ramrod_ticket_copy();
  if (!v124)
  {
    sub_D9428(v346, v125, v126, v127, v128, v129, v130, v131);
    goto LABEL_112;
  }

  CFDictionaryAddValue(Mutable, @"aptk", v124);
  if (!ramrod_ticket_copy_data_object_property(1718903152, 1145525076, v132, v133, v134, v135, v136, v137))
  {
    sub_D93EC(v346, v138, v139, v140, v141, v142, v143, v144);
    goto LABEL_112;
  }

  AMFDRSetOption();
  AMFDRDataCopyTrustObject();
  context = checkpoint_closure_get_context();
  checkpoint_closure_context_warning(context, "update_fdr_ean missing data for trst.", v147, v148, v149, v150, v151, v152, "/mnt6");
  ramrod_log_msg("Unable to read FDR Trust object.\n", v153, v154, v155, v156, v157, v158, v159, v344);
  if (!sub_335B8(@"trst", v160, v161, v162, v163, v164, v165, v166))
  {
    ramrod_log_msg("Erasing trst from EAN %s\n", v167, v168, v169, v170, v171, v172, v173, "failed");
  }

  v174 = ramrod_copy_fdr_data_instance(@"seal", 0, v100, 0);
  if (!v174)
  {
    if (!sub_335B8(@"seal", v175, v176, v177, v178, v179, v180, v181))
    {
      ramrod_log_msg("Erasing from EAN %s\n", v194, v195, v196, v190, v191, v192, v193, "failed");
    }

    goto LABEL_38;
  }

  v182 = v174;
  if (CFDataGetLength(v174) <= 0)
  {
    sub_D91AC(v346, v183, v184, v185, v186, v187, v188, v189);
    goto LABEL_112;
  }

  CFDictionaryAddValue(Mutable, @"seal", v182);
  CFRelease(v182);
LABEL_38:
  if (Count >= 1)
  {
    v197 = 0;
    v198 = 0;
    v199 = 0;
    while (1)
    {
      if (v198)
      {
        CFRelease(v198);
      }

      if (v199)
      {
        CFRelease(v199);
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
        cf[0] = 0;
      }

      if (v352)
      {
        free(v352);
        v352 = 0;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v349, v197);
      if (AMSupportCreateCStringFromCFString())
      {
        ramrod_create_error_cf(v346, @"RamrodErrorDomain", 6, cf[0], @"%s: Failed to convert dataClass %@.", v201, v202, v203, "update_fdr_ean");
        goto LABEL_112;
      }

      if (AMFDRSealingMapEntryHasAttribute())
      {
        break;
      }

      if (has_BOOLean_entitlement)
      {
        LocalMultiDataBlobForClass = ramrod_copy_fdr_data_instance(ValueAtIndex, 0, v100, cf);
LABEL_53:
        v198 = LocalMultiDataBlobForClass;
        v199 = 0;
        if (!LocalMultiDataBlobForClass)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      }

      v199 = AMFDRSealingManifestCopyInstanceForClass();
      if (!v199 || (v198 = ramrod_copy_fdr_data_instance(ValueAtIndex, v199, v100, cf)) == 0)
      {
LABEL_59:
        v214 = checkpoint_closure_get_context();
        checkpoint_closure_context_warning(v214, "update_fdr_ean missing data for %s.", v215, v216, v217, v218, v219, v220, v352);
        ramrod_log_msg("Missing FDR data for EAN key %s.\n", v221, v222, v223, v224, v225, v226, v227, v352);
        if (!sub_335B8(ValueAtIndex, v228, v229, v230, v231, v232, v233, v234))
        {
          ramrod_log_msg("Erasing from EAN %s\n", v235, v236, v237, v190, v191, v192, v193, "failed");
        }

        v198 = 0;
        goto LABEL_62;
      }

LABEL_54:
      AMFDRGetTrustError();
      if (cf[0])
      {
        ramrod_create_error_cf(v346, @"RamrodErrorDomain", 7, cf[0], @"%s: FDR decode error 0x%016llX on EAN data %@.", v205, v206, v207, "update_fdr_ean");
        goto LABEL_112;
      }

      if (CFDataGetLength(v198) <= 0)
      {
        sub_D91F4(v346, ValueAtIndex, v208, v209, v210, v211, v212, v213);
        goto LABEL_112;
      }

      CFDictionaryAddValue(theDict, ValueAtIndex, v198);
LABEL_62:
      if (Count == ++v197)
      {
        goto LABEL_63;
      }
    }

    LocalMultiDataBlobForClass = AMFDRSealingMapCreateLocalMultiDataBlobForClass();
    goto LABEL_53;
  }

LABEL_63:
  v238 = theDict;
  v6 = v347;
  if (sub_33250(theDict, v347, a3, 0, v190, v191, v192, v193))
  {
    if (!ramrod_should_do_legacy_restored_internal_behaviors())
    {
LABEL_74:
      if (off_1AD4C0)
      {
        _MGRebuildCache4PurpleRestore();
        ramrod_log_msg("%s cleared MG cache\n", v277, v278, v279, v280, v281, v282, v283, "update_fdr_ean");
      }

      v348 = 1;
      v145 = 100;
      goto LABEL_77;
    }

    LOBYTE(v354) = 0;
    if (!ramrod_ticket_has_BOOLean_entitlement(1919312743, v246, v247, v248, v249, v250, v251, v252))
    {
      v260 = "Skipping verify sysconfig EAN data without rfcg entitlement\n";
      goto LABEL_69;
    }

    if (AMSupportCFDictionaryGetBoolean())
    {
      v260 = "Skipping verify sysconfig EAN data\n";
LABEL_69:
      ramrod_log_msg(v260, v253, v254, v255, v256, v257, v258, v259, v343);
      goto LABEL_70;
    }

    if (!AMSupportCreateURLFromString())
    {
      sub_D9374(v346, v285, v286, v287, v288, v289, v290, v291);
      goto LABEL_89;
    }

    if (AMSupportFileURLExists())
    {
      sub_D9230(v346, v253, v254, v255, v256, v257, v258, v259);
      goto LABEL_89;
    }

    if (!v354)
    {
      v260 = "No sysconfig binary - continuing with restore.\n";
      goto LABEL_69;
    }

    if (!ramrod_ticket_copy())
    {
      sub_D9338(v346, v292, v293, v294, v295, v296, v297, v298);
      goto LABEL_89;
    }

    if (!AMSupportCreateURLFromString())
    {
      sub_D92FC(v346, v299, v300, v301, v302, v303, v304, v305);
      goto LABEL_89;
    }

    if (AMSupportWriteDataToFileURL())
    {
      sub_D926C(v346, v306, v307, v308, v309, v310, v311, v312);
      goto LABEL_89;
    }

    memcpy(theArray, off_1A9A78, sizeof(theArray));
    Length = CFStringGetLength(v109);
    v321 = malloc(Length + 1);
    if (v321 && CFStringGetCString(v109, v321, Length + 1, 0x8000100u))
    {
      theArray[5] = "--sourceFDRPath";
      theArray[6] = v321;
      theArray[7] = 0;
      v322 = ramrod_execute_command(theArray);
      if (v322)
      {
        v238 = theDict;
        if (v322 != 100)
        {
          sub_D9554(v346, v322, v323, v324, v325, v326, v327, v328);
LABEL_89:
          AMSupportSafeFree();
          AMSupportSafeRelease();
          AMSupportSafeRelease();
          ramrod_log_msg("failed to verify sysconfig with ean\n", v329, v330, v331, v332, v333, v334, v335, v343);
          v6 = v347;
          goto LABEL_113;
        }
      }

      else
      {
        v238 = theDict;
      }

LABEL_70:
      AMSupportSafeFree();
      AMSupportSafeRelease();
      AMSupportSafeRelease();
      v6 = v347;
      if (CFDictionaryGetValue(v238, @"seal"))
      {
        v268 = sub_335B8(@"0Cfg", v261, v262, v263, v264, v265, v266, v267);
        v276 = "succeeded";
        if (!v268)
        {
          v276 = "failed";
        }

        ramrod_log_msg("Erasing from EAN %s\n", v269, v270, v271, v272, v273, v274, v275, v276);
      }

      goto LABEL_74;
    }

    sub_D92B4(v346, v314, v315, v316, v317, v318, v319, v320);
    goto LABEL_89;
  }

  sub_D93B0(v346, v239, v240, v241, v242, v243, v244, v245);
LABEL_113:
  if (ramrod_device_hide_fdr_failure(v345))
  {
    ramrod_log_msg("Hiding FDR Failure on Dev Board.\n", v336, v337, v338, v339, v340, v341, v342, v343);
    if (*v346)
    {
      CFRelease(*v346);
      *v346 = 0;
    }

    v348 = 1;
    v145 = 100;
  }

  else
  {
    v348 = 0;
    v145 = 0xFFFFFFFFLL;
  }

LABEL_77:
  (*(v6 + 8))(11, v145, a3);
  AMSupportSafeFree();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v348;
}

uint64_t sub_3F910(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  theData = 0;
  v7 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v7);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    ramrod_log_msg("Ensuring FDR1 is valid and active.\n", v16, v17, v18, v19, v20, v21, v22, v136);
    v23 = ramrod_ticket_copy();
    v31 = v23;
    if (!v23)
    {
      ramrod_log_msg("Unable to read ap ticket.\n", v24, v25, v26, v27, v28, v29, v30, v137);
      goto LABEL_31;
    }

    v39 = ramrod_ticket_copy_hash_data(v23, a4, v25, v26, v27, v28, v29, v30);
    if (!v39)
    {
      ramrod_log_msg("Failed to read ap ticket hash.\n", v32, v33, v34, v35, v36, v37, v38, v137);
      goto LABEL_31;
    }

    v40 = ramrod_ticket_copy_hash_string(v31, 0, v33, v34, v35, v36, v37, v38);
    if (v40)
    {
      v46 = [(__CFString *)v40 UTF8String];
      ramrod_log_msg("Looking for active FDR EAN with ticket hash: %s\n", v47, v48, v49, v50, v51, v52, v53, v46);
    }

    if (_copy_fdr_ean_values(@"fdr1", 0, &theData, v41, v42, v43, v44, v45))
    {
      v61 = (2 * CFDataGetLength(theData)) | 1;
      v62 = calloc(v61, 1uLL);
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);
      sub_44714(BytePtr, Length, v62, v61);
      ramrod_log_msg("FDR1 has hash: %s\n", v65, v66, v67, v68, v69, v70, v71, v62);
      free(v62);
      if (CFEqual(v39, theData))
      {
        ramrod_log_msg("FDR1 appears to be active.\n", v72, v73, v74, v75, v76, v77, v78, v138);
        v79 = 1;
      }

      else
      {
        v79 = 0;
      }

      CFRelease(theData);
      theData = 0;
    }

    else
    {
      ramrod_log_msg("FDR1 is not written / valid.\n", v54, v55, v56, v57, v58, v59, v60, v137);
      v79 = 0;
    }

    if (_copy_fdr_ean_values(@"fdr2", 0, &theData, v80, v81, v82, v83, v84))
    {
      v92 = (2 * CFDataGetLength(theData)) | 1;
      v93 = calloc(v92, 1uLL);
      v94 = CFDataGetBytePtr(theData);
      v95 = CFDataGetLength(theData);
      sub_44714(v94, v95, v93, v92);
      ramrod_log_msg("FDR2 has hash: %s\n", v96, v97, v98, v99, v100, v101, v102, v93);
      free(v93);
      if (CFEqual(v39, theData))
      {
        ramrod_log_msg("FDR2 appears to be active.\n", v103, v104, v105, v106, v107, v108, v109, v139);
        v79 = 1;
      }

      CFRelease(theData);
      theData = 0;
      if (!v79)
      {
LABEL_21:
        if (!_copy_current_fdr_ean_values())
        {
          v133 = "No active FDR bank found. No current EAN sealing data. Will skip.\n";
          goto LABEL_28;
        }

        ramrod_log_msg("No active FDR bank found. Will stage.\n", v116, v117, v118, v119, v120, v121, v122, v139);
        if (!sub_40274(v123, a2, a3, a4))
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      ramrod_log_msg("FDR2 is not written / valid.\n", v85, v86, v87, v88, v89, v90, v91, v138);
      if (!v79)
      {
        goto LABEL_21;
      }
    }

    v124 = sub_44774(v39, 0, v110, v111, v112, v113, v114, v115);
    if (!CFEqual(v124, @"fdr1"))
    {
      v132 = "FDR1 was active, remains active.\n";
      goto LABEL_27;
    }

    if (sub_43F34(@"fdr1", @"fdr2", v126, v127, v128, v129, v130, v131))
    {
      v132 = "FDR1 is now active.\n";
LABEL_27:
      ramrod_log_msg(v132, v125, v126, v127, v128, v129, v130, v131, v139);
      v133 = "Success.\n";
LABEL_28:
      ramrod_log_msg(v133, v116, v117, v118, v119, v120, v121, v122, v139);
      goto LABEL_29;
    }

    ramrod_log_msg("Failed to commit fdr2->fdr1.\n", v125, v126, v127, v128, v129, v130, v131, v139);
LABEL_31:
    v134 = 0;
    goto LABEL_32;
  }

  ramrod_log_msg("Skipping ensure_fdr_ean on device with no EAN\n", v9, v10, v11, v12, v13, v14, v15, v136);
LABEL_29:
  v134 = 1;
LABEL_32:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v134;
}

uint64_t sub_3FC70(uint64_t a1)
{
  result = sub_3D31C(@"Fillmore", sub_3FCC8, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_3FCC8(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  memset(&v101, 0, sizeof(v101));
  bzero(__p, 0x400uLL);
  bzero(__str, 0x400uLL);
  v100 = 0;
  ramrod_log_msg("entering %s\n", v7, v8, v9, v10, v11, v12, v13, "update_fillmore");
  v103 = 0;
  v102 = 4;
  if (sysctlbyname("hw.features.fillmore", &v103, &v102, 0, 0) || v103 != 1)
  {
    ramrod_log_msg("Not a Fillmore-capable device, nothing to update..\n", v14, v15, v16, v17, v18, v19, v20, v99);
    return 1;
  }

  if (stat("/usr/bin/fillmoretool", &v101) == -1)
  {
    ramrod_log_msg("%s: No fillmore updater found\n", v21, v22, v23, v24, v25, v26, v27, "update_fillmore");
    v38 = @"%s: No fillmore updater found";
LABEL_35:
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, v38, v35, v36, v37, "update_fillmore");
    return 0;
  }

  if (ramrod_should_do_legacy_restored_internal_behaviors())
  {
    if (a3 && *(a3 + 8))
    {
      Boolean = AMSupportCFDictionaryGetBoolean();
      v29 = AMSupportCFDictionaryGetBoolean();
      if (Boolean)
      {
        v30 = 3;
      }

      else
      {
        v30 = 2;
      }

      if (v29)
      {
        v31 = v30;
      }

      else
      {
        v31 = Boolean != 0;
      }

      if (AMSupportCFDictionaryGetBoolean())
      {
        v32 = v31 | 8;
      }

      else
      {
        v32 = v31;
      }

      v33 = AMSupportCFDictionaryGetBoolean();
    }

    else
    {
      v32 = 0;
      v33 = 1;
    }

    Value = CFDictionaryGetValue(a1, @"Fillmore FW Data");
    if (Value)
    {
      v47 = Value;
      strcpy(__p, "/mnt5/fillmore_override.fw");
      ramrod_log_msg("%s: Writing override file: %s\n", v40, v41, v42, v43, v44, v45, v46, "update_fillmore");
      if (ramrod_write_data_to_file_with_class(v47, __p, -1))
      {
        sub_D9590(a4, v48, v49, v50, v51, v52, v53, v54);
        return 0;
      }

      v55 = 1;
      goto LABEL_30;
    }
  }

  else
  {
    v32 = 0;
    v33 = 1;
  }

  v103 = 0;
  v102 = 4;
  if (sysctlbyname("hw.features.fillmore_rcp1", &v103, &v102, 0, 0) || v103 != 1)
  {
    if (!sub_44400("/usr/standalone/firmware/fillmore/", __p, a4))
    {
      ramrod_log_msg("%s: No fillmore NCP FW found in %s\n", v63, v64, v65, v66, v67, v68, v69, "update_fillmore");
      return 0;
    }
  }

  else if (!sub_44400("/usr/standalone/firmware/fillmore_rcp1/", __p, a4))
  {
    ramrod_log_msg("%s: No fillmore RCP FW found in %s\n", v56, v57, v58, v59, v60, v61, v62, "update_fillmore");
    return 0;
  }

  v55 = 0;
LABEL_30:
  if (stat(__p, &v101) == -1)
  {
    ramrod_log_msg("%s: Fillmore FW not found: %s\n", v70, v71, v72, v73, v74, v75, v76, "update_fillmore");
    v38 = @"%s: Fillmore FW not found: %s";
    goto LABEL_35;
  }

  v77 = ramrod_updater_copy_options("Fillmore", *(a3 + 8), a1, 0, &v100, v74, v75, v76);
  if (!v77)
  {
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1022, v100, @"%s: failed to create options for Fillmore updater", v78, v79, v80, "update_fillmore");
    return 0;
  }

  v81 = v77;
  v82 = CFDictionaryGetValue(v77, @"Options");
  if (v82)
  {
    v83 = CFDictionaryGetValue(v82, @"DebugLogPath");
  }

  else
  {
    v83 = 0;
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v105 = 0u;
  v104[0] = "/usr/bin/fillmoretool";
  v104[1] = "-c";
  v104[2] = "flashbin";
  v104[3] = "-e";
  v104[4] = "-f";
  v104[5] = __p;
  if (!v33)
  {
    v85 = 6;
    if (!v32)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  *&v105 = "--external-build";
  v85 = 7;
  if (v32)
  {
LABEL_43:
    snprintf(__str, 0x400uLL, "%d", v32);
    v86 = v85 + 1;
    v104[v85] = "-b";
    v85 += 2;
    v104[v86] = __str;
  }

LABEL_44:
  if (v83)
  {
    v87 = v85 + 1;
    v104[v85] = "-p";
    v85 += 2;
    v104[v87] = CFStringGetCStringPtr(v83, 0x8000100u);
  }

  v104[v85] = 0;
  v88 = ramrod_execute_command(v104);
  if ((v55 & ramrod_should_do_legacy_restored_internal_behaviors()) == 1)
  {
    remove(__p, v89);
  }

  if (v88)
  {
    ramrod_log_msg("Failure when attempting to flash the Fillmore firmware: %d\n", v89, v90, v91, v92, v93, v94, v95, v88);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 7, 0, @"%s: Failure when attempting to flash the Fillmore firmware: %d", v96, v97, v98, "update_fillmore");
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  CFRelease(v81);
  return v34;
}

uint64_t sub_4021C(uint64_t a1)
{
  result = sub_3D31C(@"Stage FDR EAN", sub_40274, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_40274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v7);
  if (!MatchingService)
  {
    ramrod_log_msg("Skipping stage_fdr_ean on device with no EAN\n", v9, v10, v11, v12, v13, v14, v15, v226);
    return 1;
  }

  IOObjectRelease(MatchingService);
  ramrod_log_msg("Preparing to write staged FDR EAN key.\n", v16, v17, v18, v19, v20, v21, v22, v226);
  v242 = 0u;
  v243 = 0u;
  *md = 0u;
  *bytes = 0u;
  v239 = 0u;
  v30 = *(a2 + 104);
  if (v30)
  {
    v31 = v30(a3);
  }

  else
  {
    ramrod_log_msg("Using current FDR state as staged state is not set.\n", v23, v24, v25, v26, v27, v28, v29, v227);
    v31 = _copy_current_fdr_ean_values();
  }

  v39 = v31;
  if (!v31)
  {
    sub_335B8(@"fdr1", v32, v33, v34, v35, v36, v37, v38);
    sub_335B8(@"fdr2", v142, v143, v144, v145, v146, v147, v148);
    v149 = "FDR parts array is NULL, clean both fdr1/fdr2 EAN data.\n";
LABEL_50:
    ramrod_log_msg(v149, v41, v42, v43, v44, v45, v46, v47, v227);
    Mutable = 0;
    goto LABEL_51;
  }

  Count = CFDictionaryGetCount(v31);
  if (!Count)
  {
    v149 = "FDR parts array is empty.\n";
    goto LABEL_50;
  }

  v48 = Count;
  v49 = calloc(Count, 8uLL);
  v50 = calloc(v48, 8uLL);
  v51 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, "aptk");
  Value = CFDictionaryGetValue(v39, v51);
  if (Value)
  {
    v60 = Value;
    v236 = a4;
    BytePtr = CFDataGetBytePtr(Value);
    Length = CFDataGetLength(v60);
    CC_SHA384(BytePtr, Length, md);
    v63 = CFDataCreate(kCFAllocatorDefault, md, 48);
    CFDictionaryGetKeysAndValues(v39, v49, v50);
    v64 = calloc(v48, 0x10uLL);
    v65 = CFDataGetLength(v63);
    v71 = v65 & 3;
    if (v65 <= 0)
    {
      v71 = -(-v65 & 3);
    }

    v234 = v65;
    if (v71)
    {
      v72 = v65 - v71 + 4;
    }

    else
    {
      v72 = v65;
    }

    *bytes = 0x169726466;
    valuePtr = 0;
    if (_copy_fdr_ean_values(@"fdr1", &valuePtr, 0, v66, v67, v68, v69, v70))
    {
      v78 = valuePtr;
    }

    else
    {
      v78 = 0;
    }

    v79 = _copy_fdr_ean_values(@"fdr2", &valuePtr, 0, v73, v74, v75, v76, v77);
    v87 = valuePtr;
    if (!v79)
    {
      v87 = 0;
    }

    if (v78 > v87)
    {
      v87 = v78;
    }

    if (v87 == -2)
    {
      v88 = 2;
    }

    else
    {
      v88 = v87 + 1;
    }

    *&bytes[8] = v88;
    ramrod_log_msg("Will use generation count: %u\n", v80, v81, v82, v83, v84, v85, v86, v88);
    *&bytes[12] = 32;
    LODWORD(v239) = CFDataGetLength(v63);
    DWORD1(v239) = v48;
    v233 = v72;
    DWORD2(v239) = v72 + 32;
    HIDWORD(v239) = 16 * v48;
    v89 = v72 + 32 + 16 * v48;
    v235 = v49;
    v237 = v64;
    if (v48 >= 1)
    {
      v90 = v64 + 8;
      v91 = v50;
      v92 = v49;
      v93 = v48;
      do
      {
        v94 = *v91++;
        v95 = CFDataGetLength(v94);
        v96 = v95;
        if (v95 <= 0)
        {
          v97 = -(-v95 & 3);
        }

        else
        {
          v97 = v95 & 3;
        }

        if (v97)
        {
          v98 = v95 - v97 + 4;
        }

        else
        {
          v98 = v95;
        }

        v99 = *v92++;
        valuePtr = 0;
        CFNumberGetValue(v99, kCFNumberSInt32Type, &valuePtr);
        *(v90 - 2) = valuePtr;
        *(v90 - 1) = v89;
        *v90 = v96;
        v90 += 4;
        v89 += v98;
        --v93;
      }

      while (v93);
    }

    Mutable = CFDataCreateMutable(kCFAllocatorDefault, v89);
    CFDataAppendBytes(Mutable, bytes, 32);
    ramrod_log_msg("Added header.\n", v101, v102, v103, v104, v105, v106, v107, v228);
    v108 = CFDataGetBytePtr(v63);
    v109 = CFDataGetLength(v63);
    CFDataAppendBytes(Mutable, v108, v109);
    v116 = v233 - v234;
    if (v233 != v234)
    {
      CFDataIncreaseLength(Mutable, v116);
    }

    ramrod_log_msg("Added hash.\n", v116, v110, v111, v112, v113, v114, v115, v229);
    CFDataAppendBytes(Mutable, v237, 16 * v48);
    ramrod_log_msg("Added payload table.\n", v117, v118, v119, v120, v121, v122, v123, v230);
    a4 = v236;
    if (v48 >= 1)
    {
      for (i = 0; i != v48; ++i)
      {
        v132 = CFDataGetLength(v50[i]);
        v133 = CFDataGetBytePtr(v50[i]);
        CFDataAppendBytes(Mutable, v133, v132);
        v141 = v132 & 3;
        if (v132 <= 0)
        {
          v141 = -(-v132 & 3);
        }

        if (v141)
        {
          CFDataIncreaseLength(Mutable, 4 - v141);
        }

        ramrod_log_msg("Added element %ld. Size: %ld\n", v134, v135, v136, v137, v138, v139, v140, i);
      }
    }

    ramrod_log_msg("Success.\n", v124, v125, v126, v127, v128, v129, v130, v231);
    v49 = v235;
    if (v237)
    {
      free(v237);
    }

    if (!v235)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  ramrod_log_msg("Failed to load APTK key.\n", v53, v54, v55, v56, v57, v58, v59, v227);
  Mutable = 0;
  if (v49)
  {
LABEL_45:
    free(v49);
  }

LABEL_46:
  if (v50)
  {
    free(v50);
  }

LABEL_51:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (!Mutable)
  {
    return 1;
  }

  v157 = sub_33448(@"fdr1", v150, v151, v152, v153, v154, v155, v156);
  v165 = sub_33448(@"fdr2", v158, v159, v160, v161, v162, v163, v164);
  v173 = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v157 | v165)
  {
    v191 = MGCopyAnswer();
    v181 = v191;
    if (!v191)
    {
      v225 = "boot hash is NULL.\n";
      goto LABEL_72;
    }

    bytes[0] = 0;
    v195 = sub_44774(v191, bytes, v192, v193, v194, v178, v179, v180);
    v196 = v195;
    if (bytes[0] == 1)
    {
      if (CFEqual(v195, @"fdr1"))
      {
        v203 = @"fdr2";
      }

      else
      {
        v203 = @"fdr1";
      }

      *md = 0;
      if (sub_2E3CC(v203, md, v197, v198, v199, v200, v201, v202))
      {
        v211 = CFDataGetLength(*md);
        MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, v211, *md);
        *(CFDataGetMutableBytePtr(MutableCopy) + 2) = 1;
        CFDictionarySetValue(v173, @"fdr1", MutableCopy);
        CFDictionarySetValue(v173, @"fdr2", Mutable);
        CFRelease(*md);
        CFRelease(MutableCopy);
        goto LABEL_70;
      }

      sub_335B8(@"fdr1", v204, v205, v206, v207, v208, v209, v210);
      sub_335B8(@"fdr2", v218, v219, v220, v221, v222, v223, v224);
      v217 = v173;
      v196 = @"fdr1";
    }

    else
    {
      v217 = v173;
    }

    CFDictionarySetValue(v217, v196, Mutable);
LABEL_70:
    if (sub_33250(v173, 0, 0, 0, v213, v214, v215, v216))
    {
      goto LABEL_54;
    }

    goto LABEL_71;
  }

  ramrod_log_msg("fdr1/2 are blank, writing bank 1 and returning.\n", v166, v167, v168, v169, v170, v171, v172, v232);
  CFDictionarySetValue(v173, @"fdr1", Mutable);
  v181 = 0;
  if (!sub_33250(v173, 0, 0, 0, v174, v175, v176, v177))
  {
LABEL_71:
    v225 = "Write FDR versioned EAN failed.\n";
LABEL_72:
    sub_D95CC(v225, v173, v181, bytes, a4, v178, v179, v180);
    v189 = 0;
    goto LABEL_55;
  }

LABEL_54:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  ramrod_log_msg("Wrote staged FDR EAN key.\n", v182, v183, v184, v185, v186, v187, v188, v232);
  v189 = 1;
LABEL_55:
  CFRelease(Mutable);
  return v189;
}

uint64_t sub_4093C(uint64_t a1)
{
  result = sub_3D31C(@"FDR EAN", sub_3F910, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_40994(uint64_t a1)
{
  result = sub_3D31C(@"BasebandManifestCheck", sub_409EC, (*(*(a1 + 40) + 8) + 32), *(a1 + 48), 0xFFFFFFFFLL);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_409EC(const __CFDictionary *a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  v146 = 0;
  v144 = 0;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "perform_manifest_check_baseband");
  if (!ramrod_device_has_baseband())
  {
    ramrod_log_msg("operation not supported\n", v12, v13, v14, v15, v16, v17, v18, v141);
    return 1;
  }

  (*(a2 + 8))(16, 0, a3);
  dylib = ramrod_update_get_dylib(@"Baseband");
  v27 = dylib;
  if (dylib)
  {
    ramrod_log_msg("opening %s\n", v20, v21, v22, v23, v24, v25, v26, dylib);
    v27 = dlopen(v27, 261);
    if (v27)
    {
      CStringPtr = CFStringGetCStringPtr(@"Baseband", 0x8000100u);
      if (ramrod_copy_updater_functions(v27, CStringPtr, &v146, a4, v29, v30, v31, v32))
      {
        if (*v146)
        {
          if (*(v146 + 2))
          {
            if (a1)
            {
              v40 = CFStringGetCStringPtr(@"Baseband", 0x8000100u);
              v44 = ramrod_updater_copy_options(v40, *(a3 + 8), a1, sub_44870, &cf, v41, v42, v43);
              a1 = v44;
              if (v44)
              {
                Value = CFDictionaryGetValue(v44, @"Options");
                v60 = Value;
                if (Value)
                {
                  if (CFDictionaryContainsKey(Value, @"APTicket"))
                  {
                    v27 = 0;
                  }

                  else
                  {
                    v27 = ramrod_ticket_copy();
                    if (v27)
                    {
                      ramrod_log_msg("populating AP ticket for updater\n", v91, v92, v93, v94, v95, v96, v97, v142);
                      CFDictionarySetValue(v60, @"APTicket", v27);
                    }
                  }

                  AMSupportCFDictionarySetBoolean();
                  Length = CFStringGetLength(@"Baseband");
                  v60 = malloc(Length + 1);
                  if (v60)
                  {
                    v106 = CFStringGetLength(@"Baseband");
                    if (CFStringGetCString(@"Baseband", v60, v106 + 1, 0x8000100u))
                    {
                      ramrod_log_msg("creating BasebandUpdater obj\n", v107, v108, v109, v110, v111, v112, v113, v142);
                      v114 = (*v146)(a1, sub_32D20, v60, &cf);
                      v76 = v114;
                      if (v114)
                      {
                        if ((*(v146 + 2))(v114, @"performManifestCheck", 0, &v144, &cf))
                        {
                          (*(a2 + 8))(16, 100, a3);
                          v61 = 1;
                          goto LABEL_22;
                        }

                        ramrod_log_msg("failed to perform manifest check on BasebandUpdater\n", v122, v123, v124, v125, v126, v127, v128, v143);
                        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1024, cf, @"%s: failed to perform manifest check on BasebandUpdater", v138, v139, v140, "perform_manifest_check_baseband");
                      }

                      else
                      {
                        ramrod_log_msg("failed to create BasebandUpdater obj\n", v115, v116, v117, v118, v119, v120, v121, v143);
                        ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1013, cf, @"%s: failed to create BasebandUpdater obj", v135, v136, v137, "perform_manifest_check_baseband");
                      }

                      v61 = 0;
                      goto LABEL_22;
                    }

                    ramrod_log_msg("failed to populate baseband updater context object\n", v107, v108, v109, v110, v111, v112, v113, v142);
                    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, 0, @"%s: failed to populate baseband updater context object", v132, v133, v134, "perform_manifest_check_baseband");
                  }

                  else
                  {
                    ramrod_log_msg("malloc failed for baseband updater context object\n", v99, v100, v101, v102, v103, v104, v105, v142);
                    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 6, 0, @"%s: malloc failed for baseband updater context object", v129, v130, v131, "perform_manifest_check_baseband");
                  }

                  v61 = 0;
                  v76 = 0;
                  goto LABEL_22;
                }

                ramrod_log_msg("Missing updater options - this is fatal\n", v53, v54, v55, v56, v57, v58, v59, v142);
                ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1022, cf, @"%s: failed to copy updater options", v88, v89, v90, "perform_manifest_check_baseband");
                v61 = 0;
                v76 = 0;
                goto LABEL_21;
              }

              ramrod_log_msg("failed to copy updater options\n", v45, v46, v47, v48, v49, v50, v51, v142);
              ramrod_create_error_cf(a4, @"RamrodErrorDomain", 1022, cf, @"%s: failed to copy updater options", v85, v86, v87, "perform_manifest_check_baseband");
            }

            else
            {
              ramrod_log_msg("invalid options\n", v33, v34, v35, v36, v37, v38, v39, v142);
              ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, 0, @"%s: invalid options", v82, v83, v84, "perform_manifest_check_baseband");
            }

            v61 = 0;
            v76 = 0;
LABEL_20:
            v60 = 0;
LABEL_21:
            v27 = 0;
            goto LABEL_22;
          }

          ramrod_log_msg("invalid execute cmd updater function\n", v33, v34, v35, v36, v37, v38, v39, v142);
          v80 = @"%s: invalid execute cmd updater function";
        }

        else
        {
          ramrod_log_msg("invalid create updater function\n", v33, v34, v35, v36, v37, v38, v39, v142);
          v80 = @"%s: invalid create updater function";
        }
      }

      else
      {
        ramrod_log_msg("failed to copy updater functions\n", v33, v34, v35, v36, v37, v38, v39, v142);
        v80 = @"%s: failed to copy updater functions";
      }

      ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, 0, v80, v77, v78, v79, "perform_manifest_check_baseband");
      v61 = 0;
      v76 = 0;
      a1 = 0;
      goto LABEL_20;
    }

    v65 = dlerror();
    ramrod_log_msg("updater library not found: %s\n", v66, v67, v68, v69, v70, v71, v72, v65);
    dlerror();
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, 0, @"%s: updater library not found: %s", v73, v74, v75, "perform_manifest_check_baseband");
  }

  else
  {
    ramrod_log_msg("failed to prep perform_manifest_check_baseband\n", v20, v21, v22, v23, v24, v25, v26, v141);
    ramrod_create_error_cf(a4, @"RamrodErrorDomain", 8, 0, @"%s: failed to prep perform_manifest_check_baseband", v62, v63, v64, "perform_manifest_check_baseband");
  }

  v61 = 0;
  v76 = 0;
  a1 = 0;
  v60 = 0;
LABEL_22:
  if (v146)
  {
    free(v146);
    v146 = 0;
  }

  if (v60)
  {
    free(v60);
  }

  if (v76)
  {
    CFRelease(v76);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (a1)
  {
    CFRelease(a1);
  }

  if (v144)
  {
    CFRelease(v144);
    v144 = 0;
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v61;
}

NSURL *ramrod_copy_active_preboot_path_url()
{
  v0 = objc_autoreleasePoolPush();
  bzero(v6, 0x400uLL);
  bzero(v5, 0x400uLL);
  if (ramrod_get_preboot_partition_device_node(v5, 0x400uLL) && !ramrod_get_mount_path(v5, v6, 0x400uLL) && (v3 = [NSURL fileURLWithPath:[NSString stringWithUTF8String:v6]], (v4 = [NSString stringWithContentsOfURL:[(NSURL *)v3 URLByAppendingPathComponent:@"active"] encoding:1 error:0]) != 0))
  {
    v1 = [(NSURL *)v3 URLByAppendingPathComponent:v4 isDirectory:1];
  }

  else
  {
    v1 = 0;
  }

  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t sub_410A8(const char *a1, const void *a2, int a3)
{
  bzero(__str, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s/active", a1);
  if (a3)
  {
    ramrod_log_msg("%s: Creating preboot folder heirarchy: %s\n", v6, v7, v8, v9, v10, v11, v12, "_ramrod_write_active_nsih_file");
    ramrod_create_preboot_folder_hierarchy(a1);
  }

  ramrod_log_msg("%s: writing %s\n", v6, v7, v8, v9, v10, v11, v12, "_ramrod_write_active_nsih_file");
  v19 = ramrod_ticket_copy_hash_string(a2, 0, v13, v14, v15, v16, v17, v18);
  if (!v19)
  {
    ramrod_log_msg("%s: failed to copy ticket hash string\n", v20, v21, v22, v23, v24, v25, v26, "_ramrod_write_active_nsih_file");
    return 0xFFFFFFFFLL;
  }

  v27 = v19;
  ExternalRepresentation = CFStringCreateExternalRepresentation(kCFAllocatorDefault, v19, 0x8000100u, 0);
  if (!ExternalRepresentation)
  {
    ramrod_log_msg("%s: failed to create nsih string data\n", v29, v30, v31, v32, v33, v34, v35, "_ramrod_write_active_nsih_file");
    CFRelease(v27);
    return 0xFFFFFFFFLL;
  }

  v36 = ExternalRepresentation;
  v44 = ramrod_write_data_to_file_with_class(ExternalRepresentation, __str, -1);
  if (v44)
  {
    ramrod_log_msg("%s: failed to write active file\n", v37, v38, v39, v40, v41, v42, v43, "_ramrod_write_active_nsih_file");
  }

  CFRelease(v27);
  CFRelease(v36);
  return v44;
}

uint64_t ramrod_populate_preboot_volume()
{
  v0 = off_1AD4C8();
  memset(v80, 0, sizeof(v80));
  bzero(v79, 0x400uLL);
  bzero(v78, 0x3FBuLL);
  qmemcpy(v77, "/mnt9", sizeof(v77));
  bzero(v76, 0x400uLL);
  ramrod_get_system_partition_device_node(v80, 0x20uLL);
  if (ramrod_get_mount_path(v80, v79, 0x400uLL) && ramrod_get_snapshot_mount_path(v80, v79, 0x400uLL))
  {
    ramrod_log_msg("Failed to find system volume mount point\n", v1, v2, v3, v4, v5, v6, v7, v70);
    return 60;
  }

  else
  {
    v9 = ramrod_mount_filesystem_no_fsck_opt_err(v0, v77, 0, 0);
    if (!v9)
    {
      v17 = ramrod_copy_preboot_path(v9, v77, 0, 0, v13, v14, v15, v16);
      if (!v17)
      {
        v8 = 11;
        goto LABEL_14;
      }

      v18 = v17;
      if (CFStringGetCString(v17, v76, 1024, 0x8000100u))
      {
        if (ramrod_create_preboot_folder_hierarchy(v77))
        {
          v8 = 11;
          goto LABEL_13;
        }

        ramrod_log_msg("Installing to path %s\n", v26, v27, v28, v29, v30, v31, v32, v76);
        v35 = copyfile_state_alloc();
        if (v35)
        {
          v36 = v35;
          if (copyfile_state_set(v35, 6u, sub_41798))
          {
            ramrod_log_msg("failed to set copyfile callback\n", v37, v38, v39, v40, v41, v42, v43, v70);
            v44 = 0;
            v8 = 1;
            goto LABEL_37;
          }

          v45 = 0;
          while (1)
          {
            bzero(v75, 0x400uLL);
            bzero(__str, 0x400uLL);
            bzero(to, 0x400uLL);
            bzero(path, 0x400uLL);
            v46 = off_1A99B8[v45];
            if (!basename_r(v46, v75))
            {
              break;
            }

            snprintf(__str, 0x400uLL, "%s/%s", v79, v46);
            snprintf(to, 0x400uLL, "%s/%s", v76, v46);
            if (!dirname_r(to, path))
            {
              v71 = to;
              goto LABEL_32;
            }

            v54 = mkpath_np(path, 0x1C0u);
            if (v54 && v54 != 17)
            {
              v71 = path;
              v62 = "unable to create directory %s: %d\n";
LABEL_35:
              ramrod_log_msg(v62, v47, v48, v49, v50, v51, v52, v53, v71);
LABEL_36:
              v44 = 0;
              v8 = 0xFFFFFFFFLL;
LABEL_37:
              copyfile_state_free(v36);
              CFRelease(v18);
              v18 = v44;
              if (!v44)
              {
LABEL_14:
                ramrod_unmount_filesystem(v77);
                return v8;
              }

LABEL_13:
              CFRelease(v18);
              goto LABEL_14;
            }

            if (copyfile(__str, to, v36, 0xC800Fu))
            {
              if (*__error() != 2)
              {
                __error();
                ramrod_log_msg("failed to copy '%s' to '%s': %d\n", v63, v64, v65, v66, v67, v68, v69, __str);
                goto LABEL_36;
              }

              ramrod_log_msg("boot object '%s' does not exist, skipping\n", v55, v56, v57, v58, v59, v60, v61, __str);
            }

            if (++v45 == 5)
            {
              v44 = ramrod_ticket_copy();
              v8 = sub_410A8(v77, v44, 0);
              goto LABEL_37;
            }
          }

          LOBYTE(v71) = v46;
LABEL_32:
          v62 = "unable to parse '%s'\n";
          goto LABEL_35;
        }

        v8 = 18;
        v33 = "failed to allocate copyfile state\n";
      }

      else
      {
        v8 = 11;
        v33 = "unable to convert preboot path to string";
      }

      ramrod_log_msg(v33, v19, v20, v21, v22, v23, v24, v25, v70);
      goto LABEL_13;
    }

    v8 = v9;
    ramrod_log_msg("unable to mount preboot volume\n", v10, v11, v12, v13, v14, v15, v16, v70);
  }

  return v8;
}

uint64_t ramrod_create_preboot_folder_hierarchy(const char *a1)
{
  v2 = a1;
  v3 = open(a1, 0x100000);
  if (v3 == -1)
  {
    v1 = *__error();
    ramrod_log_msg("unable to open preboot volume: %s (%d)\n", v15, v16, v17, v18, v19, v20, v21, v2);
  }

  else
  {
    v4 = v3;
    bzero(__str, 0x400uLL);
    v5 = 0;
    while (1)
    {
      snprintf(__str, 0x400uLL, "%s%s%s", "", "", off_1A99E0[v5]);
      v6 = mkpathat_np(v4, __str, 0x1FFu);
      v14 = v6;
      if (v6 && v6 != 17)
      {
        ramrod_log_msg("unable to create folder on preboot: %s (%d)\n", v7, v8, v9, v10, v11, v12, v13, __str);
        v1 = v14;
      }

      if (v14 != 17 && v14)
      {
        break;
      }

      if (++v5 == 4)
      {
        v1 = 0;
        break;
      }
    }

    if (close(v4) == -1)
    {
      sub_D9650();
    }
  }

  return v1;
}

uint64_t sub_41798(int a1, uint64_t a2, uint64_t a3, char *a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  if (a2 == 3)
  {
    if (a4)
    {
      ramrod_log_msg("copyfile error during %d processing %s\n", a2, a3, a4, a5, a6, a7, a8, a1);
    }

    else
    {
      ramrod_log_msg("copyfile error during %d\n", a2, a3, 0, a5, a6, a7, a8, a1);
    }

    return 2;
  }

  else
  {
    result = 0;
    if (a1 == 1 && a2 == 1)
    {
      memset(&v26, 0, sizeof(v26));
      if (lstat(a4, &v26) || (v26.st_mode & 0xF000) != 0xA000)
      {
        if (lstat(a5, &v26))
        {
          return 0;
        }

        ramrod_log_msg("%s already exists\n", v19, v20, v21, v22, v23, v24, v25, a5);
      }

      else
      {
        ramrod_log_msg("skipping symlink %s\n", v12, v13, v14, v15, v16, v17, v18, v8);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_41884(unsigned int *a1)
{
  result = *a1;
  if (result != -1)
  {
    result = close(result);
    if (result == -1)
    {
      sub_D9650();
    }
  }

  return result;
}

BOOL ramrod_get_trusted_img4_payload(const __CFData *a1, const __CFData *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, CFTypeRef *a7)
{
  if (!sub_D5200(2, 14, 0, 0))
  {
    ramrod_log_msg("%s: img4_firmware_t is not available\n", v14, v15, v16, v17, v18, v19, v20, "ramrod_get_trusted_img4_payload");
    return 0;
  }

  v66 = a5;
  v67 = a6;
  v68 = 0;
  v69 = 0;
  v65[0] = HIBYTE(a3);
  v65[1] = BYTE2(a3);
  v65[2] = BYTE1(a3);
  v65[3] = a3;
  v65[4] = 0;
  v28 = img4_chip_select_effective_ap();
  v70 = 0u;
  v71 = 0u;
  if (a4)
  {
    ramrod_log_msg("using custom manifest hash to verify '%s' (0x%08x)\n", v21, v22, v23, v24, v25, v26, v27, v65);
    if (_img4_runtime_restore != 5)
    {
      ramrod_log_msg("img4_runtime_t struct version has changed (found %d, built against %d)\n", v29, v30, v31, v32, v33, v34, v35, _img4_runtime_restore);
      return 0;
    }

    v36 = img4_chip_select_personalized_ap();
    *&v70 = v36;
    if (sub_D5200(2, 14, 0, 0))
    {
      if (v36 == &_img4_chip_ap_sha2_384)
      {
        v37 = &v71;
        *(&v70 + 1) = &_img4_chip_ap_reduced;
        a4 = 2;
      }

      else
      {
        v37 = (&v70 + 8);
        a4 = 1;
      }

      if (v36 == &_img4_chip_ap_hybrid)
      {
        ++a4;
        *v37 = &_img4_chip_ap_hybrid_medium;
      }
    }

    else
    {
      a4 = 1;
    }

    if (sub_D5200(2, 15, 0, 0) && (v36 == &_img4_chip_ap_vma2 || v36 == &_img4_chip_ap_vma2_clone))
    {
      *(&v70 + a4++) = &_img4_chip_ap_reduced;
    }
  }

  *(&v70 + a4) = v28;
  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  if (v28 == &_img4_chip_ap_hybrid_relaxed || v28 == &_img4_chip_ap_hybrid || v28 == &_img4_chip_ap_hybrid_medium || v28 == &_img4_chip_x86 || v28 == &_img4_chip_x86_software_8012)
  {
    ramrod_log_msg("Clearing IMG4_FIRMWARE_SUBSEQUENT_STAGE flag for x86\n", v38, v39, v40, v41, v42, v43, v44, v64);
    if (!a2)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (a2)
  {
LABEL_25:
    img4_firmware_new();
    ramrod_log_msg("%s: Attaching in passed in im4m to fw object\n", v45, v46, v47, v48, v49, v50, v51, "ramrod_get_trusted_img4_payload");
    if (CFDataGetBytePtr(a2))
    {
      if (CFDataGetLength(a2) > 0)
      {
        img4_firmware_attach_manifest();
        goto LABEL_28;
      }

      v62 = "%s: im4m has invalid length\n";
    }

    else
    {
      v62 = "%s: Failed to get byte ptr for im4m\n";
    }

    ramrod_log_msg(v62, v52, v53, v54, v55, v56, v57, v58, "ramrod_get_trusted_img4_payload");
    return 0;
  }

LABEL_23:
  ramrod_log_msg("%s: im4m is NULL. Assuming payload with attached manifest\n", v38, v39, v40, v41, v42, v43, v44, "ramrod_get_trusted_img4_payload");
  img4_firmware_new();
LABEL_28:
  AMSupportSafeRelease();
  v68 = 0;
  LOBYTE(v69) = 0;
  img4_firmware_execute();
  if (v69)
  {
    v59 = 1;
  }

  else
  {
    v60 = 0;
    do
    {
      v61 = v60;
      if (a4 == v60)
      {
        break;
      }

      ++v60;
      AMSupportSafeRelease();
      v68 = 0;
      LOBYTE(v69) = 0;
      img4_firmware_execute();
    }

    while (v69 != 1);
    v59 = v61 < a4;
  }

  img4_firmware_destroy();
  if (a7 && !v59 && v68)
  {
    *a7 = CFRetain(v68);
  }

  AMSupportSafeRelease();
  return v59;
}

uint64_t sub_41D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 11)
  {
    v5 = *(a1 + 168);
    Length = CFDataGetLength(v5);
    if (Length <= 0x30)
    {
      v26.length = Length;
      *a4 = 0;
      *(a4 + 8) = Length;
      v26.location = 0;
      CFDataGetBytes(v5, v26, (a4 + 16));
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      *__str = 0u;
      v19 = 0u;
      if (*(a4 + 8))
      {
        v16 = 0;
        v17 = __str;
        do
        {
          snprintf(v17, 3uLL, "%02X", *(a4 + 16 + v16++));
          v17 += 2;
        }

        while (*(a4 + 8) > v16);
      }

      ramrod_log_msg("%s: returning custom CHMH = %s\n", v9, v10, v11, v12, v13, v14, v15, "_ramrod_img4_manifest_hash_get_identifier_digest");
      return 0;
    }

    else
    {
      return 34;
    }
  }

  else
  {
    v8 = *(*(a1 + 160) + 80);

    return v8();
  }
}

void sub_41EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (*a4 || *(a4 + 8))
    {
      bytes = img4_image_get_bytes();
      v10 = bytes;
      v11 = *(a4 + 8);
      if (v11)
      {
        *v11 = *(bytes + 16);
      }

      v12 = *a4;
      if (*a4)
      {
        v13 = *(bytes + 16);
        v14 = malloc(v13);
        memcpy(v14, *(v10 + 8), v13);
        *v12 = v14;
      }
    }

    v15 = 1;
  }

  else
  {
    v16 = a3;
    ramrod_log_msg("img4_firmware_execute failed: %d\n", 0, a3, a4, a5, a6, a7, a8, a3);
    ramrod_create_error_internal((a4 + 16), kCFErrorDomainPOSIX, v16, 0, "img4_firmware_execute failed");
    v15 = 0;
  }

  *(a4 + 24) = v15;
}

uint64_t ramrod_verify_manifest_for_mountpoint_internal(uint64_t a1, uint64_t a2, const __CFData *a3, const __CFData *a4, int a5, int a6, int a7, CFErrorRef *a8)
{
  ramrod_execute_config_alloc();
  v17 = v16;
  ramrod_execute_config_set_log_output(v16);
  if (!a1)
  {
    sub_D96E8(a8, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_17;
  }

  if (!a2 && (a7 & 1) == 0)
  {
    sub_D9670(a8, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_17;
  }

  if (!a3)
  {
    sub_D96AC(a8, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_17;
  }

  if (a7)
  {
    v25 = "Skipping mtree\n";
  }

  else
  {
    v70 = a2;
    v25 = "Running mtree and saving output to %s \n";
  }

  ramrod_log_msg(v25, v18, v19, v20, v21, v22, v23, v24, v70);
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103[0] = "/usr/sbin/mtree";
  v103[1] = "-p";
  v108 = 0;
  v103[2] = a1;
  v72 = 0;
  v73 = 0;
  if (a6)
  {
    *&v104 = "-r";
    v26 = 4;
  }

  else
  {
    v26 = 3;
  }

  v103[v26] = "-m";
  v103[v26 + 1] = a2;
  if (a5)
  {
    AMSupportSafeRelease();
    AMSupportSafeRelease();
    if (sub_42378(a3, a4, 1836284275, 0, 0, &v73, &v72, a8))
    {
      v27 = kCFAllocatorDefault;
      v29 = v72;
      v28 = v73;
      v30 = &kCFAllocatorMalloc;
      goto LABEL_23;
    }

LABEL_17:
    v43 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v102 = 0;
  v100 = 0uLL;
  v101 = 0uLL;
  v98 = 0uLL;
  v99 = 0uLL;
  v96 = 0uLL;
  v97 = 0uLL;
  v94 = 0uLL;
  v95 = 0uLL;
  v92 = 0uLL;
  v93 = 0uLL;
  v90 = 0uLL;
  v91 = 0uLL;
  v88 = 0uLL;
  v89 = 0uLL;
  v86 = 0uLL;
  v87 = 0uLL;
  v84 = 0uLL;
  v85 = 0uLL;
  v82 = 0uLL;
  v83 = 0uLL;
  v80 = 0uLL;
  v81 = 0uLL;
  v78 = 0uLL;
  v79 = 0uLL;
  v76 = 0uLL;
  v77 = 0uLL;
  v74 = 0uLL;
  v75 = 0uLL;
  CFDataGetBytePtr(a3);
  CFDataGetLength(a3);
  inited = Img4DecodeInitPayload();
  if (inited)
  {
    v32 = inited;
    CFDataGetBytePtr(a3);
    CFDataGetLength(a3);
    if (Img4DecodeInit())
    {
      ramrod_log_msg("Failed to parse mtree img4 contents: %d\n", v33, v34, v35, v36, v37, v38, v39, v32);
      ramrod_create_error_cf(a8, @"RamrodErrorDomain", 3, 0, @"%s: Failed to parse mtree img4 contents", v40, v41, v42, "ramrod_verify_manifest_for_mountpoint_internal");
      goto LABEL_17;
    }

    ramrod_log_msg("WARNING: Using signed manifest without validating\n", v33, v34, v35, v36, v37, v38, v39, v71);
  }

  v28 = *(&v82 + 1);
  v29 = v83;
  v72 = v83;
  v73 = *(&v82 + 1);
  v27 = kCFAllocatorDefault;
  v30 = &kCFAllocatorNull;
LABEL_23:
  v45 = CFDataCreateWithBytesNoCopy(v27, v28, v29, *v30);
  mkdir("/mnt5/manifest_and_db", 0x1EDu);
  v46 = ramrod_unarchive_dir("/mnt5/manifest_and_db", v45);
  if (v46)
  {
    v54 = v46;
    ramrod_log_msg("Failed to unarchive data: %d\n", v47, v48, v49, v50, v51, v52, v53, v46);
    ramrod_create_error_cf(a8, @"RamrodErrorDomain", 3, 0, @"Failed to unarchive manifest data: %d", v55, v56, v57, v54);
    goto LABEL_17;
  }

  if ((a7 & 1) == 0)
  {
    v103[v26 + 2] = "-f";
    v103[v26 + 3] = "/mnt5/manifest_and_db/mtree.txt";
    v103[v26 + 4] = 0;
    v58 = ramrod_execute_command_with_config(v103, v17, v48, v49, v50, v51, v52, v53);
    if (v58)
    {
      v66 = v58;
      ramrod_log_msg("Execution of mtree returned a error: %d\n", v59, v60, v61, v62, v63, v64, v65, v58);
      ramrod_create_error_cf(a8, @"RamrodErrorDomain", 3, 0, @"Execution of mtree returned a error: %d", v67, v68, v69, v66);
      goto LABEL_17;
    }

    ramrod_log_msg("Successfully returned after running mtree\n", v59, v60, v61, v62, v63, v64, v65, v71);
  }

  v43 = 0;
LABEL_18:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v17)
  {
    ramrod_execute_config_free(v17);
  }

  return v43;
}

BOOL sub_42378(const __CFData *a1, const __CFData *a2, int a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, CFTypeRef *a8)
{
  v18 = 0;
  v19 = 0;
  if (ramrod_get_trusted_img4_payload(a1, a2, a3, a4, a6, a7, &v19))
  {
    v15 = 0;
    trusted_img4_payload = 1;
  }

  else if (a5)
  {
    trusted_img4_payload = ramrod_get_trusted_img4_payload(a1, a2, a3, a5, a6, a7, &v18);
    v15 = v18;
  }

  else
  {
    v15 = 0;
    trusted_img4_payload = 0;
  }

  if (v19)
  {
    v15 = v19;
  }

  if (a8 && !trusted_img4_payload && v15)
  {
    *a8 = CFRetain(v15);
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return trusted_img4_payload;
}

uint64_t sub_42494(uint64_t a1, uint64_t a2, uint64_t a3, const __CFData *a4, const __CFData *a5, void *a6, int a7, int a8, CFErrorRef *a9)
{
  v95 = 0;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  ramrod_execute_config_alloc();
  v17 = v16;
  ramrod_execute_config_set_log_output(v16);
  v87 = "/System/Library/Filesystems/apfs.fs/apfs_sealvolume";
  if (!a1)
  {
    sub_D979C(a9, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_40;
  }

  if (a4 && a6)
  {
    sub_D9760(a9, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_40;
  }

  if (!a4 && a8)
  {
    sub_D9724(a9, v18, v19, v20, v21, v22, v23, v24);
    goto LABEL_40;
  }

  if (a2)
  {
    ramrod_log_msg("Will run apfs_sealvolume to seal device node %s using mtree output %s\n", v18, v19, v20, v21, v22, v23, v24, a1);
    *&v88 = "-R";
    *(&v88 + 1) = a2;
    v25 = 3;
    if (a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v25 = 1;
    if (a4)
    {
LABEL_8:
      if (a8)
      {
        AMSupportSafeRelease();
        AMSupportSafeRelease();
        if (a5)
        {
          ramrod_log_msg("%s: Detected Root hash with im4p detached manifest\n", v26, v27, v28, v29, v30, v31, v32, "ramrod_seal_system_volume_internal");
          (&v87)[v25++] = "-P";
        }

        else
        {
          ramrod_log_msg("%s: Assuming root hash payload with combined manifest\n", v26, v27, v28, v29, v30, v31, v32, "ramrod_seal_system_volume_internal");
        }

        if (!sub_42378(a4, a5, 1769175411, 0, 0, 0, 0, a9))
        {
          goto LABEL_40;
        }
      }

      else
      {
        v86 = 0;
        memset(v85, 0, sizeof(v85));
        CFDataGetBytePtr(a4);
        CFDataGetLength(a4);
        inited = Img4DecodeInitPayload();
        if (inited)
        {
          v36 = inited;
          CFDataGetBytePtr(a4);
          CFDataGetLength(a4);
          if (Img4DecodeInit())
          {
            ramrod_log_msg("Failed to parse root hash img4 contents: %d\n", v37, v38, v39, v40, v41, v42, v43, v36);
            v47 = *a9;
            v48 = @"%s: Failed to parse root hash img4 contents";
LABEL_38:
            v83 = "ramrod_seal_system_volume_internal";
            goto LABEL_39;
          }

          ramrod_log_msg("WARNING: Using signed root hash without validating\n", v37, v38, v39, v40, v41, v42, v43, v82);
        }

        else
        {
          (&v87)[v25++] = "-P";
        }
      }

      if (([(__CFData *)a4 writeToFile:[NSString atomically:"stringWithUTF8String:" stringWithUTF8String:?], 0]& 1) == 0)
      {
        ramrod_log_msg("Failed to write root hash\n", v49, v50, v51, v52, v53, v54, v55, v82);
        v47 = *a9;
        v48 = @"Failed to write root hash";
LABEL_39:
        ramrod_create_error_cf(a9, @"RamrodErrorDomain", 3, v47, v48, v44, v45, v46, v83);
LABEL_40:
        v76 = 0xFFFFFFFFLL;
        goto LABEL_41;
      }

      ramrod_log_msg("Verifying root hash at %s\n", v49, v50, v51, v52, v53, v54, v55, "/mnt5/root_hash");
      (&v87)[v25] = "-I";
      v34 = v25 + 2;
      (&v87)[v25 + 1] = "/mnt5/root_hash";
      if (ramrod_os_release_is_internal(v56, v57, v58, v59, v60, v61, v62, v63))
      {
        v33 = "-a";
        goto LABEL_26;
      }

      goto LABEL_27;
    }
  }

  if (a6)
  {
    v33 = "/mnt5/root_hash";
    ramrod_log_msg("Saving root hash to %s\n", v18, v19, v20, v21, v22, v23, v24, "/mnt5/root_hash");
    (&v87)[v25] = "-L";
    v34 = v25 + 2;
    (&v87)[v25 + 1] = "-M";
LABEL_26:
    (&v87)[v34] = v33;
    v34 = v25 + 3;
    goto LABEL_27;
  }

  v34 = v25;
LABEL_27:
  if (a7 && !access("/mnt5/manifest_and_db/digest.db", 4))
  {
    ramrod_log_msg("Using stashed hash DB\n", v64, v19, v20, v21, v22, v23, v24, v82);
    (&v87)[v34] = "-u";
    v65 = v34 + 2;
    (&v87)[v34 + 1] = "/mnt5/manifest_and_db/digest.db";
    should_do_legacy_restored_internal_behaviors = ramrod_should_do_legacy_restored_internal_behaviors();
    if (a2 || !should_do_legacy_restored_internal_behaviors)
    {
      v34 += 2;
    }

    else
    {
      v34 += 3;
      (&v87)[v65] = "-m";
    }
  }

  if (a3)
  {
    v67 = v34 + 1;
    (&v87)[v34] = "-E";
    v34 += 2;
    (&v87)[v67] = a3;
  }

  (&v87)[v34] = "-d";
  (&v87)[v34 + 1] = "-v";
  (&v87)[v34 + 2] = a1;
  (&v87)[v34 + 3] = 0;
  v68 = ramrod_execute_command_with_config(&v87, v17, v19, v20, v21, v22, v23, v24);
  if (v68)
  {
    ramrod_log_msg("Execution of apfs_sealvolume returned a error %d\n", v69, v70, v71, v72, v73, v74, v75, v68);
    v47 = *a9;
    v48 = @"%s: Failed to seal system volume";
    goto LABEL_38;
  }

  ramrod_log_msg("Successfully returned after running apfs_sealvolume\n", v69, v70, v71, v72, v73, v74, v75, v82);
  if (a6)
  {
    *&v85[0] = 0;
    v78 = [[NSData alloc] initWithContentsOfFile:+[NSString stringWithUTF8String:](NSString options:"stringWithUTF8String:" error:{"/mnt5/root_hash"), 0, v85}];
    if (!v78)
    {
      ramrod_create_error_cf(a9, @"RamrodErrorDomain", 11, *&v85[0], @"%s: Failed to read root hash file", v79, v80, v81, "ramrod_seal_system_volume_internal");
      goto LABEL_40;
    }

    v76 = 0;
    *a6 = v78;
  }

  else
  {
    v76 = 0;
  }

LABEL_41:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  if (v17)
  {
    ramrod_execute_config_free(v17);
  }

  return v76;
}

uint64_t ramrod_split_data_volume(const char *a1, uint64_t a2, CFErrorRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = 0;
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = "/System/Library/Filesystems/apfs.fs/apfs_migrator";
  if (a1)
  {
    v10 = a1;
    memset(v62, 0, sizeof(v62));
    if (ramrod_raw_device_for_block_device(a1, v62, 0x20uLL))
    {
      ramrod_log_msg("Failed to convert block device path %s into character device node path\n", v11, v12, v13, v14, v15, v16, v17, v10);
      ramrod_create_error_cf(a3, @"RamrodErrorDomain", 3, *a3, @"%s: Failed to find raw data device", v18, v19, v20, "ramrod_split_data_volume");
    }

    else
    {
      if (ramrod_should_do_legacy_restored_internal_behaviors())
      {
        *&v54 = "-I";
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      (&v53)[v21] = "-p";
      v22 = v21 + 2;
      (&v53)[v21 + 1] = "/mnt5/apfs_migrator_verification.log";
      if (a2)
      {
        (&v53)[v22] = "-M";
        (&v53)[v21 + 3] = "-m";
        v22 = v21 + 5;
        (&v53)[v21 | 4] = a2;
      }

      v23 = v22 + 1;
      (&v53)[v22] = "-v";
      is_data_volume_split_required = ramrod_is_data_volume_split_required();
      v32 = v22 + 2;
      if (is_data_volume_split_required)
      {
        (&v53)[v23] = "-o";
        (&v53)[v32] = "createtmpcp";
        v32 = v22 + 3;
      }

      else
      {
        (&v53)[v23] = "-n";
      }

      (&v53)[v32] = v62;
      (&v53)[v32 + 1] = 0;
      ramrod_log_msg("Running apfs_migrator on data volume %s\n", v25, v26, v27, v28, v29, v30, v31, v10);
      v33 = ramrod_execute_command(&v53);
      if (!v33)
      {
        ramrod_log_msg("Successfully returned after running apfs_migrator\n", v34, v35, v36, v37, v38, v39, v40, v52);
        ramrod_log_msg("Removing %s on success\n", v45, v46, v47, v48, v49, v50, v51, "/mnt5/apfs_migrator_verification.log");
        unlink("/mnt5/apfs_migrator_verification.log");
        return 0;
      }

      ramrod_log_msg("Execution of apfs_migrator returned an error %d\n", v34, v35, v36, v37, v38, v39, v40, v33);
      ramrod_create_error_cf(a3, @"RamrodErrorDomain", 7, *a3, @"%s: Failed to split data volume", v41, v42, v43, "ramrod_split_data_volume");
    }
  }

  else
  {
    sub_D97D8(a3, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0xFFFFFFFFLL;
}

uint64_t ramrod_migrate_user_fsevents_if_needed(const char *a1, const char *a2)
{
  bzero(__str, 0x400uLL);
  bzero(path, 0x400uLL);
  snprintf(__str, 0x400uLL, "%s/.fseventsd", a1);
  snprintf(path, 0x400uLL, "%s/.fseventsd", a2);
  if (!access(path, 0))
  {
    ramrod_log_msg("%s exists, migration already done\n", v4, v5, v6, v7, v8, v9, v10, path);
    ramrod_disable_fsevents_rescan_ramdisk_only(a2);
    return 0;
  }

  if (access(__str, 0))
  {
    ramrod_log_msg("%s absent, nothing to migrate\n", v11, v12, v13, v14, v15, v16, v17, __str);
    return 0;
  }

  ramrod_create_directory_with_class(path, 0x1C0u, 0, 0, -1, 1);
  v20[0] = "/usr/appleinternal/sbin/fsevents_migrator";
  v20[1] = "-src";
  v20[2] = __str;
  v20[3] = "-dst";
  v20[4] = path;
  v20[5] = "-truncatePrefix";
  v20[6] = "mobile/";
  v20[7] = 0;
  v18 = ramrod_execute_command(v20);
  if (v18)
  {
    removefile(path, 0, 1u);
  }

  else
  {
    ramrod_disable_fsevents_rescan(a2);
  }

  return v18;
}

uint64_t ramrod_usbcretimer_dfucheck()
{
  has_usbcretimer = _ramrod_device_has_usbcretimer(@"atcrt");
  v1 = _ramrod_device_has_usbcretimer(@"uatcrt");
  v2 = 1;
  if (off_1AD4B8 && has_usbcretimer)
  {
    v2 = AppleTypeCRetimerUpdaterDFUCheck() != 0;
  }

  if (off_1AD4B0 && v1)
  {
    v2 = (AppleTypeCRetimerUARPUpdaterDFUCheck() != 0) & v2;
  }

  byte_1C6BD0 = v2;
  return v2;
}

void sub_42EFC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    ramrod_log_msg("updater_log (%s): %s\n", a2, a3, a4, a5, a6, a7, a8, a1);
  }
}

uint64_t sub_42F44(uint64_t a1, const __CFString *a2, void *a3)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
  if (CStringPtr)
  {
    LOBYTE(v14) = CStringPtr;
  }

  else
  {
    v14 = "????";
  }

  if (!a3)
  {
    sub_D9814();
  }

  if (!Mutable)
  {
    ramrod_log_msg("restoreInfo failed to alloc\n", v7, v8, v9, v10, v11, v12, v13, v35);
    return 0;
  }

  if (AMAuthInstallApImg4DecodeRestoreInfo())
  {
    v22 = "WARNING: failed to read IM4R.\n";
LABEL_13:
    ramrod_log_msg(v22, v15, v16, v17, v18, v19, v20, v21, v35);
LABEL_14:
    v33 = 0;
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(Mutable, a2);
  if (!Value || (v24 = Value, v25 = CFGetTypeID(Value), v25 != CFNumberGetTypeID()))
  {
    v35 = v14;
    v22 = "WARNING: %s is missing or of invalid type.\n";
    goto LABEL_13;
  }

  if (!CFNumberGetValue(v24, kCFNumberSInt32Type, a3))
  {
    ramrod_log_msg("WARNING: failed to read %s cf number.\n", v26, v27, v28, v29, v30, v31, v32, v14);
    goto LABEL_14;
  }

  ramrod_log_msg("INFO: %s == %d\n", v26, v27, v28, v29, v30, v31, v32, v14);
  v33 = 1;
LABEL_15:
  CFRelease(Mutable);
  return v33;
}

uint64_t sub_430C4(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = 0;
  *buffer = 0;
  if (!a1)
  {
    v11 = "key is NULL)\n";
LABEL_11:
    ramrod_log_msg(v11, a2, a3, a4, a5, a6, a7, a8, v19);
    return 0;
  }

  if (CFStringGetLength(a1) != 4)
  {
    Length = CFStringGetLength(a1);
    ramrod_log_msg("key is not 4 bytes (%lu).\n", v12, v13, v14, v15, v16, v17, v18, Length);
    return 0;
  }

  if (!CFStringGetCString(a1, buffer, 5, 0x8000100u))
  {
    v11 = "CFStringGetCString failed on key.\n";
    goto LABEL_11;
  }

  v9 = strlen(buffer);
  if (v9 != CFStringGetLength(a1))
  {
    v19 = strlen(buffer);
    v11 = "strlen(bytes) returned %lu.\n";
    goto LABEL_11;
  }

  return bswap32(*buffer);
}

void sub_43194(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (key && value)
  {
    if (theDict)
    {
      CFDictionarySetValue(theDict, key, value);
    }
  }
}

void sub_431B8(id a1)
{
  bzero(__s1, 0x400uLL);
  v1 = 1024;
  if (!sysctlbyname("kern.bootargs", __s1, &v1, 0, 0))
  {
    if (strstr(__s1, "-restore"))
    {
      byte_1C6BD1 = 1;
    }
  }
}

void sub_4325C()
{
  if (!ramrod_should_do_legacy_restored_behaviors() && qword_1C6BE0 != -1)
  {
    sub_D9840();
  }
}

void sub_43290(id a1)
{
  v1 = &byte_1C0609;
  v2 = 14;
  do
  {
    if (CFEqual(*(v1 - 25), @"update_rose"))
    {
      v10 = os_variant_uses_ephemeral_storage();
      if (v10)
      {
        v11 = "ramrod_update running in limited environment\n";
      }

      else
      {
        v11 = "ramrod_update running in normal env\n";
      }

      ramrod_log_msg(v11, v3, v4, v5, v6, v7, v8, v9, v12);
      if (v10)
      {
        *v1 = 1;
      }
    }

    v1 += 48;
    --v2;
  }

  while (v2);
}

void sub_43330(const __CFString *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  input = 0;
  v83 = 0;
  v84 = 0;
  output = 0;
  outputCnt = 1;
  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  if (!a3)
  {
    v40 = "context is NULL\n";
    goto LABEL_36;
  }

  if (!*a3)
  {
    v40 = "context->io_connection is NULL\n";
    goto LABEL_36;
  }

  if (!a1)
  {
    v40 = "key is NULL\n";
    goto LABEL_36;
  }

  if (a2)
  {
    TypeID = CFDataGetTypeID();
    if (TypeID != CFGetTypeID(a2))
    {
      v40 = "data is not CFData\n";
      goto LABEL_36;
    }

    if (CFDataGetLength(a2) <= 0)
    {
      v40 = "data is 0 bytes\n";
      goto LABEL_36;
    }

    v12 = *(a3 + 24);
    *(a3 + 24) = v12 + 1;
    v13 = *(a3 + 8);
    if (v13)
    {
      v14 = *(a3 + 32);
      if (v14 >= 1 && (v12 & 0x8000000000000000) == 0 && *(a3 + 16))
      {
        (*(v13 + 8))(11, 100 * (v12 + 1) / v14);
      }
    }

    Length = CFDataGetLength(a2);
    v16 = -Length & 0xFFFLL;
    v17 = v16 + Length;
    MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, v16 + Length, a2);
    v19 = malloc(v16);
    v20 = v19;
    if (!v19)
    {
      v40 = "someZeros is NULL\n";
      goto LABEL_36;
    }

    bzero(v19, v16);
    CFDataAppendBytes(MutableCopy, v20, v16);
    if (CFDataGetLength(MutableCopy) != v17)
    {
      v40 = "Final size isn't inputSize+paddingSize\n";
      goto LABEL_36;
    }

    v21 = CFDataGetLength(MutableCopy);
    BytePtr = CFDataGetBytePtr(MutableCopy);
    if ((v21 & 0xFFF) != 0)
    {
      ramrod_log_msg("imageSize isn't %d-aligned.\n", v23, v24, v25, v26, v27, v28, v29, 0);
    }

    else
    {
      v30 = BytePtr;
      if (!*(a3 + 40))
      {
        v41 = sub_430C4(a1, v23, v24, v25, v26, v27, v28, v29);
        if (v41)
        {
          input = v41;
          v83 = v30;
          v84 = v21;
          ramrod_log_msg("Writing EAN key %c%c%c%c, (%lu of %lu) imageSize=%llu\n", a2, a3, a4, a5, a6, a7, a8, SHIBYTE(v41));
          v42 = IOConnectCallMethod(*a3, 2u, &input, 3u, 0, 0, &output, &outputCnt, 0, 0);
          goto LABEL_21;
        }

        v40 = "payloadType is invalid\n";
        goto LABEL_36;
      }

      v31 = Img4DecodeInit();
      if (v31)
      {
        ramrod_log_msg("failed to decode img4, derstat=%d\n", v32, v33, v34, v35, v36, v37, v38, v31);
      }

      else
      {
        PayloadType = Img4DecodeGetPayloadType();
        if (!PayloadType)
        {
          v40 = "payloadType is empty\n";
LABEL_36:
          ramrod_log_msg(v40, a2, a3, a4, a5, a6, a7, a8, outputStruct);
          goto LABEL_37;
        }

        ramrod_log_msg("failed to decode payload type, derstat=%d\n", a2, a3, a4, a5, a6, a7, a8, PayloadType);
      }
    }
  }

  else
  {
    ramrod_log_msg("data is NULL\n", 0, a3, a4, a5, a6, a7, a8, outputStruct);
  }

LABEL_37:
  v42 = 5;
LABEL_21:
  AMSupportSafeRelease();
  AMSupportSafeFree();
  if (v42)
  {
    ramrod_log_msg("_write_ean_image failed kernResult=0x%x\n", v43, v44, v45, v46, v47, v48, v49, v42);
    *(a3 + 41) = 0;
  }
}

void sub_436A4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 objectForKeyedSubscript:@"DeviceName"];
  v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"ImageTag", "unsignedIntValue"}];
  v9 = [NSString stringWithFormat:@"%c%c%c%c", HIBYTE(v8), BYTE2(v8), BYTE1(v8), v8];
  if (![a2 objectForKeyedSubscript:@"NeedsUpdate"])
  {
    return;
  }

  v10 = *(a1 + 32);
  if (!v10)
  {
    v12 = kCFAllocatorDefault;
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(v10, v7);
  v12 = kCFAllocatorDefault;
  if (!Value)
  {
LABEL_7:
    Mutable = CFDictionaryCreateMutable(v12, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    goto LABEL_8;
  }

  Mutable = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, Value);
LABEL_8:
  v14 = Mutable;
  if (*(a1 + 80))
  {
    ramrod_log_msg_cf(@"We're in a pre-FDR checkpoint. Adding the pre-FDR key.");
    CFDictionaryAddValue(v14, @"AHT_PRE_FDR_CHECKPOINT", kCFBooleanTrue);
  }

  ramrod_log_msg_cf(@"update options = %@", v14);
  v15 = AMAuthInstallApImg4GetEntryNameForType();
  if (v15 && (v16 = v15, ramrod_log_msg_cf(@"updating device %@[%@:%@]", v7, v9, v15), v17 = *(a1 + 48), v21.length = CFArrayGetCount(v17), v21.location = 0, CFArrayContainsValue(v17, v21, v16)) && (v18 = (*(*(a1 + 56) + 64))(*(a1 + 64), v16)) != 0)
  {
    v19 = (*(a1 + 72))([v7 UTF8String], v18, v14);
    if (v19)
    {
      mach_error_string(v19);
      AMSupportCreateErrorInternal();
      *a4 = 1;
    }

    else
    {
      ramrod_log_msg_cf(@"updating device %@[%@:%@] completed successfully", v7, v9, v16);
    }

    CFRelease(v14);

    AMSupportSafeRelease();
  }

  else
  {
    AMSupportCreateErrorInternal();
    *a4 = 1;

    CFRelease(v14);
  }
}

__CFData *sub_439C8(CFDictionaryRef theDict, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *bytes = 0u;
  v102 = 0u;
  if (!theDict)
  {
    ramrod_log_msg("ibfwImages is NULL.\n", a2, a3, a4, a5, a6, a7, a8, v99);
    goto LABEL_33;
  }

  v9 = a2;
  if (CFDictionaryGetCount(theDict) <= 0)
  {
    ramrod_log_msg("ibfwImages is empty.\n", v10, v11, v12, v13, v14, v15, v16, v99);
    goto LABEL_33;
  }

  Count = CFDictionaryGetCount(theDict);
  v18 = calloc(8uLL, Count);
  v19 = calloc(8uLL, Count);
  v27 = v19;
  if (!v18 || !v19)
  {
    ramrod_log_msg("calloc failed.\n", v20, v21, v22, v23, v24, v25, v26, v99);
    goto LABEL_33;
  }

  CFDictionaryGetKeysAndValues(theDict, v18, v19);
  v42 = ramrod_copy_manifest_digest_data_from_img4(*v27, v28, v29, v30, v31, v32, v33, v34);
  if (!v42)
  {
    ramrod_log_msg("bootHash is NULL.\n", v35, v36, v37, v38, v39, v40, v41, v99);
    goto LABEL_33;
  }

  HIDWORD(v102) = 0;
  *(&v102 + 4) = 0;
  *bytes = 1;
  v103 = 0;
  if (v9)
  {
    sub_43D50(@"ifw1", &v103 + 1, 0, v37, v38, v39, v40, v41);
    sub_43D50(@"ifw2", &v103, 0, v43, v44, v45, v46, v47);
    v55 = v103;
  }

  else
  {
    sub_43D50(@"nefw", &v103 + 1, 0, v37, v38, v39, v40, v41);
    v55 = 0;
  }

  v56 = HIDWORD(v103);
  if (HIDWORD(v103) == 16777214 || v55 == 16777214)
  {
    ramrod_log_msg("Hit the ceiling.  Nuking to restart the generation clock.\n", v48, v49, v50, v51, v52, v53, v54, v99);
    if (v9)
    {
      sub_335B8(@"ifw1", v57, v58, v59, v60, v61, v62, v63);
      v64 = @"ifw2";
    }

    else
    {
      v64 = @"nefw";
    }

    sub_335B8(v64, v57, v58, v59, v60, v61, v62, v63);
    v55 = 0;
    v56 = 0;
  }

  if (v56 > v55)
  {
    v55 = v56;
  }

  *&bytes[4] = v55 + 1;
  ramrod_log_msg("Will use Generation %u.\n", v48, v49, v50, v51, v52, v53, v54, v55 + 1);
  *&bytes[12] = 32;
  LODWORD(v102) = CFDataGetLength(v42);
  *&bytes[8] = v102 + 32;
  v72 = CFDataCreate(kCFAllocatorDefault, bytes, 32);
  if (!v72)
  {
    ramrod_log_msg("headerData is NULL.\n", v65, v66, v67, v68, v69, v70, v71, v100);
    goto LABEL_33;
  }

  MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, 0, v72);
  if (!MutableCopy)
  {
    ramrod_log_msg("ibfwBlob is NULL.\n", v73, v74, v75, v76, v77, v78, v79, v100);
    goto LABEL_30;
  }

  BytePtr = CFDataGetBytePtr(v42);
  Length = CFDataGetLength(v42);
  CFDataAppendBytes(MutableCopy, BytePtr, Length);
  if (Count >= 1)
  {
    v83 = 0;
    v84 = 0;
    while (1)
    {
      v85 = CFGetTypeID(v27[v83]);
      if (v85 != CFDataGetTypeID())
      {
        break;
      }

      v93 = CFDataGetBytePtr(v27[v83]);
      v94 = CFDataGetLength(v27[v83]);
      CFDataAppendBytes(MutableCopy, v93, v94);
      v84 += CFDataGetLength(v27[v83++]);
      if (Count == v83)
      {
        goto LABEL_25;
      }
    }

    v100 = v83;
    v98 = "Item %lu not CFData.\n";
    goto LABEL_32;
  }

  v84 = 0;
LABEL_25:
  if (v84 <= 0)
  {
    v95 = -(-v84 & 3);
  }

  else
  {
    v95 = v84 & 3;
  }

  v96 = 4 - v95;
  CFDataIncreaseLength(MutableCopy, 4 - v95);
  if (((v96 + v84) & 3) != 0)
  {
    v98 = "Payload not aligned.\n";
LABEL_32:
    ramrod_log_msg(v98, v86, v87, v88, v89, v90, v91, v92, v100);
    CFRelease(MutableCopy);
LABEL_33:
    MutableCopy = 0;
    goto LABEL_30;
  }

  if ((v102 & 3) != 0)
  {
    v98 = "Hash not aligned.\n";
    goto LABEL_32;
  }

LABEL_30:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeFree();
  AMSupportSafeFree();
  return MutableCopy;
}

uint64_t sub_43D50(const __CFString *a1, _DWORD *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theData = 0;
  if (!a1)
  {
    ramrod_log_msg("ifwKey is NULL\n", a2, a3, a4, a5, a6, a7, a8, v57);
    LOBYTE(v31) = 0;
    goto LABEL_19;
  }

  if (!sub_2E3CC(a1, &theData, a3, a4, a5, a6, a7, a8))
  {
    v40 = "Key not found.\n";
LABEL_17:
    ramrod_log_msg(v40, v11, v12, v13, v14, v15, v16, v17, v57);
LABEL_18:
    LOBYTE(v31) = 0;
    goto LABEL_19;
  }

  if (!theData)
  {
    v40 = "ibfwBlob is NULL.\n";
    goto LABEL_17;
  }

  v18 = MGCopyAnswer();
  if (!v18)
  {
    v40 = "bootHash is NULL.\n";
    goto LABEL_17;
  }

  Length = CFDataGetLength(v18);
  BytePtr = CFDataGetBytePtr(theData);
  if (!BytePtr)
  {
    v40 = "buffer is NULL.\n";
    goto LABEL_17;
  }

  v21 = BytePtr;
  if (CFDataGetLength(theData) <= 0x20)
  {
    v42 = "ibfwBlob too small.\n";
LABEL_29:
    ramrod_log_msg(v42, v22, v23, v24, v25, v26, v27, v28, v57);
    goto LABEL_30;
  }

  if (*v21 != 1)
  {
    v42 = "Version mismatch.\n";
    goto LABEL_29;
  }

  if (!*(v21 + 1))
  {
    v42 = "Generation is 0.\n";
    goto LABEL_29;
  }

  v29 = *(v21 + 4);
  if (Length != v29)
  {
    ramrod_log_msg("Hashsize is not %lu.\n", v22, v23, v24, v25, v26, v27, v28, Length);
LABEL_30:
    ramrod_log_msg("iBootEAN key fails sanity checks, attempting to nuke.\n", v43, v44, v45, v46, v47, v48, v49, v58);
    sub_335B8(a1, v50, v51, v52, v53, v54, v55, v56);
    goto LABEL_18;
  }

  v30 = (*(v21 + 3) + v29);
  if (CFDataGetLength(theData) < v30)
  {
    v42 = "Bad Hash offset.\n";
    goto LABEL_29;
  }

  v31 = *(v21 + 1);
  v32 = CFDataCreate(kCFAllocatorDefault, &v21[*(v21 + 3)], *(v21 + 4));
  if (v32)
  {
    if (a2)
    {
      *a2 = v31;
    }

    if (a3)
    {
      *a3 = CFRetain(v32);
    }
  }

  else
  {
    ramrod_log_msg("hashData is NULL.\n", v33, v34, v35, v36, v37, v38, v39, v57);
  }

LABEL_19:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v31;
}

uint64_t sub_43F34(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  connect = 0;
  input = 0;
  v31 = 0;
  output = 0;
  outputCnt = 1;
  if (!a1)
  {
    v24 = "key1 is NULL.\n";
LABEL_19:
    ramrod_log_msg(v24, a2, a3, a4, a5, a6, a7, a8, outputStruct);
    LODWORD(v8) = 0;
    goto LABEL_25;
  }

  v8 = a2;
  if (!a2)
  {
    v25 = "key2 is NULL.\n";
LABEL_24:
    ramrod_log_msg(v25, a2, a3, a4, a5, a6, a7, a8, outputStruct);
    goto LABEL_25;
  }

  v16 = sub_430C4(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v16)
  {
    ramrod_log_msg("payloadType1 is invalid.\n", v9, v10, v11, v12, v13, v14, v15, outputStruct);
    LODWORD(v8) = 0;
    goto LABEL_10;
  }

  v17 = sub_430C4(v8, v9, v10, v11, v12, v13, v14, v15);
  if (!v17)
  {
    v24 = "payloadType2 is invalid.\n";
    goto LABEL_19;
  }

  v18 = v17;
  v19 = IOServiceMatching("AppleNVMeEAN");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v19);
  LODWORD(v8) = MatchingService;
  if (!MatchingService)
  {
    v25 = "IOServiceGetMatchingService failed to find kNVMeEANServiceMatchName.\n";
    goto LABEL_24;
  }

  v21 = IOServiceOpen(MatchingService, mach_task_self_, 0, &connect);
  if (!v21)
  {
    if (connect)
    {
      input = v16;
      v31 = v18;
      ramrod_log_msg("Swapping EAN key %c%c%c%c and %c%c%c%c\n", a2, a3, a4, a5, a6, a7, a8, SBYTE3(v16));
      v22 = IOConnectCallMethod(connect, 6u, &input, 2u, 0, 0, &output, &outputCnt, 0, 0);
      if (!v22)
      {
        v16 = 1;
        goto LABEL_10;
      }

      outputStruct = v22;
      v25 = "swapImage failed, kernResult = 0x%x.\n";
    }

    else
    {
      v25 = "IOServiceOpen returned IO_OBJECT_NULL.\n";
    }

    goto LABEL_24;
  }

  ramrod_log_msg("IOServiceOpen returned result=0x%04x.\n", a2, a3, a4, a5, a6, a7, a8, v21);
LABEL_25:
  v16 = 0;
LABEL_10:
  if (connect)
  {
    IOServiceClose(connect);
    connect = 0;
  }

  if (v8)
  {
    IOObjectRelease(v8);
  }

  return v16;
}

uint64_t sub_4412C(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  Count = CFDictionaryGetCount(a1);
  v5 = calloc(8uLL, Count);
  v6 = calloc(8uLL, Count);
  v14 = v6;
  if (!v5 || !v6)
  {
    v45 = "calloc failed.\n";
    goto LABEL_26;
  }

  CFDictionaryGetKeysAndValues(a1, v5, v6);
  if (Count < 1)
  {
LABEL_20:
    v43 = 1;
    goto LABEL_21;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v24 = v15 + 1;
    if (CFDictionaryContainsKey(a2, v5[v15]))
    {
      v46 = v15 + 1;
      v25 = "Key %lu of %lu in EAN list also, nothing to clean.\n";
      goto LABEL_7;
    }

    ramrod_log_msg("Key %lu of %lu not in EAN list...\n", v17, v18, v19, v20, v21, v22, v23, v15 + 1);
    if (v16)
    {
      CFRelease(v16);
    }

    CFDataGetLength(v14[v15]);
    CFDataGetBytePtr(v14[v15]);
    v26 = Img4DecodeInit();
    if (v26)
    {
      ramrod_log_msg("failed to decode img4, derstat=%d.\n", v27, v28, v29, v30, v31, v32, v33, v26);
      goto LABEL_27;
    }

    *bytes = 0;
    PayloadType = Img4DecodeGetPayloadType();
    if (PayloadType)
    {
      ramrod_log_msg("failed to decode payload type, derstat=%d.\n", v7, v8, v9, v10, v11, v12, v13, PayloadType);
      goto LABEL_27;
    }

    if (!*bytes)
    {
      v45 = "payloadType is empty.\n";
      goto LABEL_26;
    }

    *bytes = bswap32(*bytes);
    v35 = CFStringCreateWithBytes(kCFAllocatorDefault, bytes, 4, 0x8000100u, 1u);
    if (!v35)
    {
      break;
    }

    v16 = v35;
    if (sub_33448(v35, v7, v8, v9, v10, v11, v12, v13))
    {
      ramrod_log_msg("Deleting stale key from EAN\n", v17, v18, v19, v20, v21, v22, v23, v46);
      if (sub_335B8(v16, v36, v37, v38, v39, v40, v41, v42))
      {
        goto LABEL_8;
      }

      v25 = "Failed to delete EAN key.  Continuing...\n";
    }

    else
    {
      v25 = "Nothing stale to clean up - not found in EAN.\n";
    }

LABEL_7:
    ramrod_log_msg(v25, v17, v18, v19, v20, v21, v22, v23, v46);
LABEL_8:
    ++v15;
    if (Count == v24)
    {
      goto LABEL_20;
    }
  }

  v45 = "payload4cc is NULL.\n";
LABEL_26:
  ramrod_log_msg(v45, v7, v8, v9, v10, v11, v12, v13, v46);
LABEL_27:
  v43 = 0;
LABEL_21:
  AMSupportSafeFree();
  AMSupportSafeFree();
  AMSupportSafeRelease();
  return v43;
}

uint64_t sub_443B4(uint64_t result, void *a2)
{
  if (dword_1C4818 != result)
  {
    v2 = result;
    result = (*(*a2 + 8))(1, result, a2[1]);
    dword_1C4818 = v2;
  }

  return result;
}

uint64_t sub_44400(const char *a1, char *a2, CFErrorRef *a3)
{
  memset(&v19, 0, sizeof(v19));
  bzero(__src, 0x400uLL);
  if (stat(a1, &v19) == -1)
  {
    v16 = @"%s: %s: FW path not found: %s\n";
LABEL_13:
    ramrod_create_error_cf(a3, @"RamrodErrorDomain", 11, 0, v16, v6, v7, v8, "get_first_file");
    return 0;
  }

  v9 = opendir(a1);
  if (!v9)
  {
    v16 = @"%s: %s: Can't open %s\n";
    goto LABEL_13;
  }

  v10 = v9;
  do
  {
    v11 = readdir(v10);
    if (!v11)
    {
      v17 = @"%s: %s: No FW file found in %s\n";
      goto LABEL_16;
    }
  }

  while (v11->d_name[0] == 46 && (!v11->d_name[1] || v11->d_name[1] == 46 && !v11->d_name[2]));
  __sprintf_chk(__src, 0, 0x400uLL, "%s/%s", a1, v11->d_name);
  if (stat(__src, &v19) != -1)
  {
    strncpy(a2, __src, 0x400uLL);
    v15 = 1;
    goto LABEL_17;
  }

  v17 = @"%s: %s: FW path not found: %s";
LABEL_16:
  ramrod_create_error_cf(a3, @"RamrodErrorDomain", 8, 0, v17, v12, v13, v14, "get_first_file");
  v15 = 0;
LABEL_17:
  closedir(v10);
  return v15;
}

uint64_t sub_445FC(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39[0] = a3;
  memset(&v39[1], 0, 24);
  v38[0] = a2;
  v38[1] = a3;
  v38[2] = v39;
  ramrod_log_msg("entering %s\n", a2, a3, a4, a5, a6, a7, a8, "update_savage_with_option");
  if (!ramrod_device_has_savage(v12, v13, v14, v15, v16, v17, v18, v19))
  {
    ramrod_log_msg("No Savage present on device, skipping update\n", v20, v21, v22, v23, v24, v25, v26, v37);
LABEL_5:
    updated = 1;
    goto LABEL_6;
  }

  (*(a2 + 8))(7, 0xFFFFFFFFLL, a3);
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, a1);
  if (!MutableCopy)
  {
    ramrod_log_msg("Failed to allocate optionsCopy\n", v27, v28, v29, v30, v31, v32, v33, v37);
    goto LABEL_5;
  }

  AMSupportCFDictionarySetBoolean();
  updated = update_generic_firmware(@"Savage", MutableCopy, v38, a5);
LABEL_6:
  AMSupportSafeRelease();
  return updated & 1;
}

unsigned __int8 *sub_44714(unsigned __int8 *result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 > 2 * a2)
  {
    if (a2)
    {
      LODWORD(v4) = 0;
      v5 = 1;
      do
      {
        v6 = *result++;
        v7 = v4 + 1;
        *(a3 + v4) = a0123456789abcd[v6 >> 4];
        v4 = (v4 + 2);
        *(a3 + v7) = a0123456789abcd[v6 & 0xF];
        v8 = v5++;
      }

      while (v8 < a2);
    }

    else
    {
      v4 = 0;
    }

    *(a3 + v4) = 0;
  }

  return result;
}

__CFString *sub_44774(const void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = 0;
  v20 = 0;
  v18 = 0;
  cf2 = 0;
  _copy_fdr_ean_values(@"fdr1", &v21, &cf2, a4, a5, a6, a7, a8);
  _copy_fdr_ean_values(@"fdr2", &v20, &v18, v10, v11, v12, v13, v14);
  if (a2)
  {
    if (v21 == -2 || v20 == -2)
    {
      *a2 = 1;
    }
  }

  if (cf2)
  {
    v16 = @"fdr1";
    if (CFEqual(a1, cf2))
    {
      if (v18)
      {
        if (CFEqual(a1, v18))
        {
          if (v21 > v20)
          {
            v16 = @"fdr2";
          }
        }

        else
        {
          v16 = @"fdr2";
        }
      }

      else
      {
        v16 = @"fdr2";
      }
    }
  }

  else
  {
    v16 = @"fdr1";
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v16;
}

void sub_44870(const __CFDictionary *a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  if (a1 && theDict && a3)
  {
    Value = CFDictionaryGetValue(theDict, @"Baseband Data Root");
    if (Value)
    {
      CFDictionarySetValue(a3, @"RemoteFSRoot", Value);
    }

    v6 = CFDictionaryGetValue(a1, @"BasebandUpdater");
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFDictionaryGetTypeID())
      {
        v9 = CFDictionaryGetValue(v7, @"DebugArgs");
        if (v9)
        {
          v10 = v9;
          v11 = CFGetTypeID(v9);
          if (v11 == CFStringGetTypeID())
          {

            CFDictionarySetValue(a3, @"DebugArgs", v10);
          }
        }
      }
    }
  }
}

void sub_4495C(CFErrorRef *a1@<X0>, const __CFString *a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, const __CFString *a6@<X8>)
{

  ramrod_create_error_cf(a1, a6, 7, 0, a2, a3, a4, a5, v6);
}

void sub_44984(CFErrorRef *a1@<X0>, const __CFString *a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, const __CFString *a6@<X8>)
{

  ramrod_create_error_cf(a1, a6, 6, 0, a2, a3, a4, a5, v6);
}

void sub_449A4(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char a7@<W8>)
{

  ramrod_create_error_cf(a1, a2, 7, 0, a3, a4, a5, a6, a7);
}

void sub_449D8(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char a7@<W8>)
{

  ramrod_create_error_cf(a1, a2, 8, 0, a3, a4, a5, a6, a7);
}

void sub_449F4(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char a7@<W8>)
{

  ramrod_create_error_cf(a1, a2, 3, 0, a3, a4, a5, a6, a7);
}

void sub_44A10(CFErrorRef *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, char a7@<W8>)
{

  ramrod_create_error_cf(a1, a2, 3, 0, a3, a4, a5, a6, a7);
}

void sub_44A2C(CFErrorRef *a1, const __CFString *a2, uint64_t a3, uint64_t a4, const __CFString *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  ramrod_create_error_cf(a1, a2, 7, 0, a5, a6, a7, a8, a9);
}

uint64_t ramrod_register_plugin(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = &unk_1ADA98;
  ramrod_log_msg("\nUNIT TEST(%s) : unit_test plugin registered\n", a2, a3, a4, a5, a6, a7, a8, "ramrod_register_plugin");
  ramrod_set_syslog_flush_msgs(0);
  return 1;
}

uint64_t sub_44AD0(int a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Could not allocate response dictionary\n", v3, v4, v5, v6, v7, v8, v9, "unitTestInfo");
    return 3;
  }

  v10 = Mutable;
  v11 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!v11)
  {
    ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Could not allocate categories array\n", v12, v13, v14, v15, v16, v17, v18, "unitTestInfo");
    CFRelease(v10);
    return 3;
  }

  v19 = v11;
  v20 = 0;
  v21 = &off_1ADAF0;
  do
  {
    ramrod_log_msg("\nUNIT TEST(%s) : Test Category: %s\n", v12, v13, v14, v15, v16, v17, v18, "unitTestInfo");
    v22 = CFStringCreateWithCString(kCFAllocatorDefault, *(v21 - 2), 0x8000100u);
    if (!v22)
    {
      valuePtr = v20;
      ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Unable to convert category string to CFStringRef\n", v23, v24, v25, v26, v27, v28, v29, "unitTestInfo");
LABEL_15:
      v42 = 3;
      goto LABEL_16;
    }

    v30 = v22;
    CFArrayAppendValue(v19, v22);
    CFRelease(v30);
    ++v20;
    v31 = *v21;
    v21 += 2;
  }

  while (v31);
  valuePtr = v20;
  ramrod_log_msg("\nUNIT TEST(%s) : total categories: %d\n", v12, v13, v14, v15, v16, v17, v18, "unitTestInfo");
  v32 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v32)
  {
    v40 = v32;
    CFDictionaryAddValue(v10, @"response-count", v32);
    CFRelease(v40);
    CFDictionaryAddValue(v10, @"response-categories", v19);
    v41 = @"success";
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Unable to create total categories count\n", v33, v34, v35, v36, v37, v38, v39, "unitTestInfo");
    v41 = @"failure";
  }

  CFDictionaryAddValue(v10, @"response-result", v41);
  if (ramrod_send_message(a1, v10))
  {
    ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Could not send response to host\n", v43, v44, v45, v46, v47, v48, v49, "unitTestInfo");
    goto LABEL_15;
  }

  v42 = 1;
LABEL_16:
  CFRelease(v10);
  CFRelease(v19);
  return v42;
}

uint64_t sub_44CF8(int a1, const __CFDictionary *a2)
{
  valuePtr = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v12 = Mutable;
    v13 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (v13)
    {
      v21 = v13;
      Value = CFDictionaryGetValue(a2, @"for-category");
      v23 = Value;
      if (Value)
      {
        CStringPtr = CFStringGetCStringPtr(Value, 0x8000100u);
        if (!CStringPtr)
        {
          ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Could not get single category string\n", v25, v26, v27, v28, v29, v30, v31, "unitTestPerform");
          goto LABEL_55;
        }

        v32 = CStringPtr;
        v33 = &off_1ADAE0;
        v34 = "unit_test_baseline";
        do
        {
          if (!strcmp(v32, v34))
          {
            break;
          }

          v35 = v33[2];
          v33 += 2;
          v34 = v35;
        }

        while (v35);
      }

      else
      {
        v33 = &off_1ADAE0;
      }

      v37 = CFDictionaryGetValue(a2, @"for-number");
      if (v37)
      {
        v45 = v37;
        v46 = CFGetTypeID(v37);
        if (v46 != CFNumberGetTypeID())
        {
          ramrod_log_msg("\nUNIT TEST(%s) : ERROR: speified test number is not a number\n", v47, v48, v49, v50, v51, v52, v53, "unitTestPerform");
          goto LABEL_55;
        }

        CFNumberGetValue(v45, kCFNumberSInt32Type, &valuePtr);
      }

      theDict = v12;
      allocator = kCFAllocatorDefault;
      v95 = a1;
      v54 = 0;
      while (1)
      {
        v97 = *v33;
        if (!*v33)
        {
          break;
        }

        theString = 0;
        v98 = 0;
        ramrod_log_msg("\nUNIT TEST(%s) : %s: beginning test set\n", v38, v39, v40, v41, v42, v43, v44, "unitTestPerform");
        LODWORD(v55) = valuePtr;
        v56 = valuePtr == 0;
        v57 = v54 + 1;
        while (1)
        {
          v54 = v57;
          HIDWORD(valuePtr) = v57;
          v55 = (v55 + v56);
          v58 = (v33[1])(*v33, v55, &theString, &v98);
          v101 = 0;
          if (theString)
          {
            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v128 = 0u;
            v129 = 0u;
            v126 = 0u;
            v127 = 0u;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v109 = 0u;
            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            *buffer = 0u;
            CFStringGetCString(theString, buffer, 512, 0x8000100u);
            if (v58)
            {
              asprintf(&v101, "%s #%d: FAILED (result=%d(0x%X)) - %s");
            }

            else
            {
              asprintf(&v101, "%s #%d: PASSED - %s");
            }
          }

          else if (v58)
          {
            asprintf(&v101, "%s #%d: FAILED (result=%d(0x%X))");
          }

          else
          {
            asprintf(&v101, "%s #%d: PASSED");
          }

          ramrod_log_msg("\nUNIT TEST %s\n", v59, v60, v61, v62, v63, v64, v65, v101);
          v66 = CFStringCreateWithFormat(0, 0, @"%s", v101);
          if (v66)
          {
            CFArrayAppendValue(v21, v66);
          }

          if (v101)
          {
            free(v101);
          }

          if (v66)
          {
            CFRelease(v66);
          }

          if (theString)
          {
            CFRelease(theString);
            theString = 0;
          }

          if (valuePtr)
          {
            break;
          }

          v67 = v58 == 0;
          if (!v58)
          {
            v57 = v54 + 1;
            v56 = 1;
            if (v98)
            {
              continue;
            }
          }

          goto LABEL_39;
        }

        v67 = v58 == 0;
LABEL_39:
        if (v23)
        {
          do
          {
            v68 = v33[2];
            v33 += 2;
          }

          while (v68);
          if (!v67)
          {
            break;
          }
        }

        else
        {
          v33 += 2;
          if (!v67)
          {
            break;
          }
        }
      }

      v12 = theDict;
      if (CFArrayGetCount(v21) >= 1)
      {
        CFDictionaryAddValue(theDict, @"response-log", v21);
      }

      ramrod_log_msg("\nUNIT TEST(%s) : total count: %d\n", v69, v70, v71, v72, v73, v74, v75, "unitTestPerform");
      v76 = CFNumberCreate(allocator, kCFNumberIntType, &valuePtr + 4);
      if (v76)
      {
        v84 = v76;
        CFDictionaryAddValue(theDict, @"response-count", v76);
        CFRelease(v84);
        if (!v97)
        {
          v85 = @"success";
LABEL_53:
          CFDictionaryAddValue(theDict, @"response-result", v85);
          if (!ramrod_send_message(v95, theDict))
          {
            v36 = 1;
            goto LABEL_56;
          }

          ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Could not send response to host\n", v86, v87, v88, v89, v90, v91, v92, "unitTestPerform");
LABEL_55:
          v36 = 3;
LABEL_56:
          CFRelease(v12);
          CFRelease(v21);
          return v36;
        }
      }

      else
      {
        ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Unable to create total test count\n", v77, v78, v79, v80, v81, v82, v83, "unitTestPerform");
      }

      v85 = @"failure";
      goto LABEL_53;
    }

    ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Could not allocate test_log array\n", v14, v15, v16, v17, v18, v19, v20, "unitTestPerform");
    CFRelease(v12);
  }

  else
  {
    ramrod_log_msg("\nUNIT TEST(%s) : ERROR: Could not allocate response dictionary\n", v5, v6, v7, v8, v9, v10, v11, "unitTestPerform");
  }

  return 3;
}