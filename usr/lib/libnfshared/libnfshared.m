uint64_t NFLogGetLogger(unint64_t a1)
{
  if (a1 >= 5)
  {
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  return *(&off_27DA9DE50 + a1);
}

uint64_t NFIsInternalBuild()
{
  if (qword_280AEEFD8 != -1)
  {
    dispatch_once(&qword_280AEEFD8, &unk_2843ADA20);
  }

  return byte_280AEEFE0;
}

uint64_t NFSharedLogGetLogger(uint64_t a1)
{
  v2 = (&unk_280AEEFB0 + 8 * a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = sub_22EED97B8;
  block[3] = &unk_278872B88;
  block[4] = a1;
  if (*v2 != -1)
  {
    dispatch_once(v2, block);
  }

  return qword_280AEEFF8[a1];
}

uint64_t NFSharedSignpostLog()
{
  if (qword_280AEEFA8 != -1)
  {
    dispatch_once(&qword_280AEEFA8, &unk_2843ADB60);
  }

  specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v1 = &qword_280AEEFE8;
  if (specific != 3)
  {
    v1 = &qword_280AEEFF0;
  }

  return *v1;
}

uint64_t NFProductIsDevBoard()
{
  if (qword_280AEEED0 != -1)
  {
    dispatch_once(&qword_280AEEED0, &unk_2843ADA60);
  }

  return byte_280AEEE9D;
}

BOOL NFProductIsNED()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  v2 = *MEMORY[0x277CBED28];
  if (v0 == *MEMORY[0x277CBED28] || v0)
  {
    CFRelease(v0);
  }

  return v1 == v2;
}

uint64_t NFIsUIBuild()
{
  if (qword_280AEEEB0 != -1)
  {
    dispatch_once(&qword_280AEEEB0, &unk_2843AD9C0);
  }

  return byte_280AEEE99;
}

__CFString *sub_22EEC5600(void *a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_length(a1, a2, a3);
  if (!v4)
  {
LABEL_12:
    v16 = &stru_2843AE380;
    goto LABEL_13;
  }

  v5 = v4;
  v6 = malloc_type_calloc(1uLL, (2 * v4) | 1, 0x100004077774924uLL);
  if (!v6)
  {
    v17 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v19 = *(&off_27DA9DE50 + specific);
    if (v19)
    {
      v19(3, "%s:%i Memory allocation request failed.", "[NSData(HexString) NF_asHexString]", 70);
      v17 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v20 = dispatch_get_specific(v17);
    v21 = NFSharedLogGetLogger(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v25 = "[NSData(HexString) NF_asHexString]";
      v26 = 1024;
      v27 = 70;
      _os_log_impl(&dword_22EEC4000, v21, OS_LOG_TYPE_ERROR, "%{public}s:%i Memory allocation request failed.", buf, 0x12u);
    }

    goto LABEL_12;
  }

  v7 = v6;
  v8 = a1;
  v11 = objc_msgSend_bytes(v8, v9, v10);
  v12 = v7;
  do
  {
    v13 = *v11++;
    sprintf(v12, "%02X", v13);
    v12 += 2;
    --v5;
  }

  while (v5);
  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = objc_msgSend_initWithUTF8String_(v14, v15, v7);
  free(v7);
LABEL_13:
  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

id sub_22EEC57EC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_NF_userInfo(a1, a2, a3);
  v6 = objc_msgSend_serviceWhitelist(v3, v4, v5);

  return v6;
}

uint64_t NF_isFeatureSupported(int a1)
{
  switch(a1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      result = NFProductHasNFCRadio();
      break;
    case 2:
      result = 1;
      break;
    case 3:
      if (qword_280AEEEF8 != -1)
      {
        dispatch_once(&qword_280AEEEF8, &unk_2843ADAE0);
      }

      result = dword_280AEEEA4 == 1;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t NFProductHasNFCRadio()
{
  v6 = *MEMORY[0x277D85DE8];
  if (qword_280AEEEA8 != -1)
  {
    dispatch_once(&qword_280AEEEA8, &unk_2843AD9A0);
  }

  if ((byte_280AEEE98 & 1) == 0)
  {
    if (qword_280AEEEF8 != -1)
    {
      dispatch_once(&qword_280AEEEF8, &unk_2843ADAE0);
    }

    if (dword_280AEEEA4 == 1)
    {
      v0 = MGGetBoolAnswer();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        v3[0] = 67109376;
        v3[1] = byte_280AEEE98;
        v4 = 1024;
        v5 = v0;
        _os_log_fault_impl(&dword_22EEC4000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Critical error : this device should have NFC !!! cache = %d, new = $%d", v3, 0xEu);
      }

      if (qword_280AEEFD8 != -1)
      {
        dispatch_once(&qword_280AEEFD8, &unk_2843ADA20);
      }

      if ((byte_280AEEFE0 & 1) == 0)
      {
        byte_280AEEE98 = MGGetBoolAnswer();
      }
    }
  }

  result = byte_280AEEE98;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void NFDataRelease(void *a1)
{
  if (a1)
  {
    pthread_mutex_lock((a1[2] + 8));
    v2 = a1[2];
    v3 = *v2 - 1;
    *v2 = v3;
    pthread_mutex_unlock((v2 + 8));
    if (!v3)
    {

      sub_22EEDECE4(a1);
    }
  }
}

unint64_t GetElapsedTimeInMillisecondsFromMachTime(uint64_t a1, uint64_t a2)
{
  info = 0;
  mach_timebase_info(&info);
  return (a1 - a2) * info.numer / (1000000 * info.denom);
}

id sub_22EEC5AA0(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v6 = objc_msgSend_clientName(v3, v4, v5);

  return v6;
}

id sub_22EEC5B00(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"CallbackUUID");

  return v5;
}

void sub_22EEC5B5C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_userInfo(a1, a2, a3);
  objc_msgSend_removeObjectForKey_(v4, v3, @"CallbackUUID");
}

id sub_22EEC5BA4(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"serviceType");

  return v5;
}

BOOL NFProductIsPad()
{
  if (qword_280AEEEF8 != -1)
  {
    dispatch_once(&qword_280AEEEF8, &unk_2843ADAE0);
  }

  return dword_280AEEEA4 == 3;
}

uint64_t sub_22EEC5D78()
{
  qword_280AEEE88 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

BOOL NFProductIsPhone()
{
  if (qword_280AEEEF8 != -1)
  {
    dispatch_once(&qword_280AEEEF8, &unk_2843ADAE0);
  }

  return dword_280AEEEA4 == 1;
}

__CFString *NFProductGetName()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return @"???";
  }

  v1 = v0;
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(v1))
  {
    CFRelease(v1);
    return @"???";
  }

  return v1;
}

BOOL NFIsChinaSku()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFEqual(v0, @"CH") != 0;
  CFRelease(v1);
  return v2;
}

uint64_t sub_22EEC68B8()
{
  result = MGGetBoolAnswer();
  byte_280AEEE98 = result;
  return result;
}

uint64_t NFProductHasThermistor()
{
  if (qword_280AEEEE8 != -1)
  {
    dispatch_once(&qword_280AEEEE8, &unk_2843ADAA0);
  }

  return ((dword_280AEEEA0 - 45) < 0x17) & (0x5FFFEFu >> (dword_280AEEEA0 - 45));
}

uint64_t NFGetProductType()
{
  if (qword_280AEEEE8 != -1)
  {
    dispatch_once(&qword_280AEEEE8, &unk_2843ADAA0);
  }

  return dword_280AEEEA0;
}

uint64_t sub_22EEC69A8()
{
  result = MGGetBoolAnswer();
  byte_280AEEE99 = result;
  return result;
}

uint64_t NFIsDarwinOS()
{
  if (qword_280AEEEB8 != -1)
  {
    dispatch_once(&qword_280AEEEB8, &unk_2843AD9E0);
  }

  return byte_280AEEE9A;
}

void sub_22EEC6A18()
{
  v0 = MGGetStringAnswer();
  if (v0)
  {
    v1 = v0;
    if (CFStringCompare(v0, @"Darwin", 0))
    {
      v2 = CFStringCompare(v1, @"Darwin Internal", 0) == kCFCompareEqualTo;
    }

    else
    {
      v2 = 1;
    }

    byte_280AEEE9A = v2;

    CFRelease(v1);
  }
}

uint64_t NFIsRestoreOS()
{
  if (qword_280AEEEC0 != -1)
  {
    dispatch_once(&qword_280AEEEC0, &unk_2843ADA00);
  }

  return byte_280AEEE9B;
}

uint64_t sub_22EEC6AF0()
{
  result = MGGetBoolAnswer();
  byte_280AEEE9B = result;
  return result;
}

uint64_t sub_22EEC6B18()
{
  result = os_variant_has_internal_diagnostics();
  byte_280AEEFE0 = result;
  return result;
}

uint64_t NFProductIsVM()
{
  if (qword_280AEEEC8 != -1)
  {
    dispatch_once(&qword_280AEEEC8, &unk_2843ADA40);
  }

  return byte_280AEEE9C;
}

uint64_t sub_22EEC6B94()
{
  result = MGGetBoolAnswer();
  byte_280AEEE9C = result;
  return result;
}

uint64_t NFPlatformShouldLimitAccessoryReaderTime()
{
  if (qword_280AEEEE8 != -1)
  {
    dispatch_once(&qword_280AEEEE8, &unk_2843ADAA0);
  }

  v0 = vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(dword_280AEEEA0 & 0x7E), xmmword_22EEE8690)));
  v2 = (dword_280AEEEA0 & 0x7E) == 0x3A || dword_280AEEEA0 == 67;
  return v0 & 1 | ((dword_280AEEEA0 & 0x7E) == 60) | v2;
}

BOOL NFPlatformShouldUseLookbackRestrictor()
{
  if (qword_280AEEEE8 != -1)
  {
    dispatch_once(&qword_280AEEEE8, &unk_2843ADAA0);
  }

  return (dword_280AEEEA0 - 8) < 0xFFFFFFF9 && (dword_280AEEEA0 - 50) < 0xFFFFFFFB && dword_280AEEEA0 != 9;
}

void sub_22EEC6CA4()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    if (CFStringHasSuffix(v0, @"DEV"))
    {
      v2 = 1;
    }

    else
    {
      v2 = CFStringHasSuffix(v1, @"dev") != 0;
    }

    byte_280AEEE9D = v2;

    CFRelease(v1);
  }
}

uint64_t NFBuildVersion()
{
  if (qword_280AEEEE0 != -1)
  {
    dispatch_once(&qword_280AEEEE0, &unk_2843ADA80);
  }

  return qword_280AEEED8;
}

void sub_22EEC6D78()
{
  v10 = *MEMORY[0x277D85DE8];
  qword_280AEEED8 = MGCopyAnswer();
  if (!qword_280AEEED8)
  {
    v0 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v2 = *(&off_27DA9DE50 + specific);
    if (v2)
    {
      v2(3, "%s:%i Failed to query build", "NFBuildVersion_block_invoke", 458);
      v0 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v3 = dispatch_get_specific(v0);
    Logger = NFSharedLogGetLogger(v3);
    if (os_log_type_enabled(Logger, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v7 = "NFBuildVersion_block_invoke";
      v8 = 1024;
      v9 = 458;
      _os_log_impl(&dword_22EEC4000, Logger, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to query build", buf, 0x12u);
    }

    qword_280AEEED8 = @"UnknownBuild";
  }

  v5 = *MEMORY[0x277D85DE8];
}

BOOL NFIsProductType(int a1)
{
  if (qword_280AEEEE8 != -1)
  {
    dispatch_once(&qword_280AEEEE8, &unk_2843ADAA0);
  }

  return dword_280AEEEA0 == a1;
}

BOOL NFIsNonRFDeviceWithLPMSupport()
{
  if (qword_280AEEEE8 != -1)
  {
    dispatch_once(&qword_280AEEEE8, &unk_2843ADAA0);
  }

  return dword_280AEEEA0 == 77 || dword_280AEEEA0 == 78 || dword_280AEEEA0 == 83 || dword_280AEEEA0 == 84 || sub_22EEC6FA4() != 0;
}

uint64_t sub_22EEC6FA4()
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD2898];
  v1 = IOServiceNameMatching("stockholm-spmi");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"lpm", 0, 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      v6 = CFGetTypeID(CFProperty);
      if (v6 == CFDataGetTypeID() && CFDataGetLength(v5) && (BytePtr = CFDataGetBytePtr(v5)) != 0)
      {
        v8 = *BytePtr;
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      v8 = 0;
    }

    IOObjectRelease(v3);
  }

  else
  {
    v9 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v11 = *(&off_27DA9DE50 + specific);
    if (v11)
    {
      v11(3, "%s:%i Failed find IOKit service", "_NFPlatformGetSupportedLPMFlags", 496);
      v9 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v12 = dispatch_get_specific(v9);
    Logger = NFSharedLogGetLogger(v12);
    if (os_log_type_enabled(Logger, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v17 = "_NFPlatformGetSupportedLPMFlags";
      v18 = 1024;
      v19 = 496;
      _os_log_impl(&dword_22EEC4000, Logger, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed find IOKit service", buf, 0x12u);
    }

    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t NFIsSeashipSupported()
{
  if (qword_280AEEEE8 != -1)
  {
    dispatch_once(&qword_280AEEEE8, &unk_2843ADAA0);
  }

  if (dword_280AEEEA0 == 77 || dword_280AEEEA0 == 78 || dword_280AEEEA0 == 83 || dword_280AEEEA0 == 84)
  {
    return 1;
  }

  else
  {
    return (sub_22EEC6FA4() >> 3) & 1;
  }
}

uint64_t NFIsSEinOFFSupported()
{
  if (qword_280AEEEE8 != -1)
  {
    dispatch_once(&qword_280AEEEE8, &unk_2843ADAA0);
  }

  if (dword_280AEEEA0 == 77 || dword_280AEEEA0 == 78 || dword_280AEEEA0 == 83 || dword_280AEEEA0 == 84)
  {
    return 1;
  }

  else
  {
    return (sub_22EEC6FA4() >> 4) & 1;
  }
}

uint64_t sub_22EEC7270()
{
  result = MGGetProductType();
  if (result > 2159747552)
  {
    if (result <= 3048527335)
    {
      if (result > 2688879998)
      {
        if (result > 2941181570)
        {
          if (result <= 2959111091)
          {
            if (result == 2941181571)
            {
              v1 = 55;
              goto LABEL_197;
            }

            if (result == 2943112657)
            {
              v1 = 14;
              goto LABEL_197;
            }
          }

          else
          {
            switch(result)
            {
              case 2959111092:
                v1 = 78;
                goto LABEL_197;
              case 2979575960:
                v1 = 20;
                goto LABEL_197;
              case 3001488778:
                v1 = 5;
                goto LABEL_197;
            }
          }
        }

        else if (result <= 2793418700)
        {
          if (result == 2688879999)
          {
            v1 = 53;
            goto LABEL_197;
          }

          if (result == 2722529672)
          {
            v1 = 2;
            goto LABEL_197;
          }
        }

        else
        {
          switch(result)
          {
            case 2793418701:
              v1 = 56;
              goto LABEL_197;
            case 2795618603:
              v1 = 58;
              goto LABEL_197;
            case 2940697645:
              v1 = 52;
              goto LABEL_197;
          }
        }
      }

      else if (result > 2566016328)
      {
        if (result <= 2622433983)
        {
          if (result == 2566016329)
          {
            v1 = 77;
            goto LABEL_197;
          }

          if (result == 2619317134)
          {
            v1 = 79;
            goto LABEL_197;
          }
        }

        else
        {
          switch(result)
          {
            case 2622433984:
              v1 = 74;
              goto LABEL_197;
            case 2625074843:
              v1 = 28;
              goto LABEL_197;
            case 2634105757:
              v1 = 76;
              goto LABEL_197;
          }
        }
      }

      else if (result <= 2390434177)
      {
        if (result == 2159747553)
        {
          v1 = 7;
          goto LABEL_197;
        }

        if (result == 2309863438)
        {
          v1 = 46;
          goto LABEL_197;
        }
      }

      else
      {
        switch(result)
        {
          case 2390434178:
            v1 = 39;
            goto LABEL_197;
          case 2443002098:
            v1 = 41;
            goto LABEL_197;
          case 2487868872:
            v1 = 82;
            goto LABEL_197;
        }
      }
    }

    else if (result <= 3677894690)
    {
      if (result > 3564012491)
      {
        if (result <= 3585085678)
        {
          if (result == 3564012492)
          {
            v1 = 40;
            goto LABEL_197;
          }

          if (result == 3571532206)
          {
            v1 = 16;
            goto LABEL_197;
          }
        }

        else
        {
          switch(result)
          {
            case 3585085679:
              v1 = 48;
              goto LABEL_197;
            case 3591055299:
              v1 = 63;
              goto LABEL_197;
            case 3663011141:
              v1 = 22;
              goto LABEL_197;
          }
        }
      }

      else if (result <= 3228373940)
      {
        if (result == 3048527336)
        {
          v1 = 62;
          goto LABEL_197;
        }

        if (result == 3143587592)
        {
          v1 = 33;
          goto LABEL_197;
        }
      }

      else
      {
        switch(result)
        {
          case 3228373941:
            v1 = 68;
            goto LABEL_197;
          case 3241053352:
            v1 = 81;
            goto LABEL_197;
          case 3361025853:
            v1 = 70;
            goto LABEL_197;
        }
      }
    }

    else if (result <= 3839750254)
    {
      if (result <= 3767261005)
      {
        if (result == 3677894691)
        {
          v1 = 75;
          goto LABEL_197;
        }

        if (result == 3742999858)
        {
          v1 = 25;
          goto LABEL_197;
        }
      }

      else
      {
        switch(result)
        {
          case 3767261006:
            v1 = 18;
            goto LABEL_197;
          case 3819635030:
            v1 = 26;
            goto LABEL_197;
          case 3825599860:
            v1 = 57;
            goto LABEL_197;
        }
      }
    }

    else if (result > 4018315119)
    {
      switch(result)
      {
        case 4018315120:
          v1 = 36;
          goto LABEL_197;
        case 4068102502:
          v1 = 35;
          goto LABEL_197;
        case 4201643249:
          v1 = 6;
          goto LABEL_197;
      }
    }

    else
    {
      switch(result)
      {
        case 3839750255:
          v1 = 31;
          goto LABEL_197;
        case 3867318491:
          v1 = 27;
          goto LABEL_197;
        case 3885279870:
          v1 = 3;
          goto LABEL_197;
      }
    }

LABEL_196:
    v1 = 0;
    goto LABEL_197;
  }

  if (result <= 1294429941)
  {
    if (result > 689804741)
    {
      if (result > 861924852)
      {
        if (result <= 1169082143)
        {
          if (result == 861924853)
          {
            v1 = 38;
            goto LABEL_197;
          }

          if (result == 1060988941)
          {
            v1 = 47;
            goto LABEL_197;
          }
        }

        else
        {
          switch(result)
          {
            case 1169082144:
              v1 = 4;
              goto LABEL_197;
            case 1260109173:
              v1 = 67;
              goto LABEL_197;
            case 1280909812:
              v1 = 19;
              goto LABEL_197;
          }
        }
      }

      else if (result <= 789142226)
      {
        if (result == 689804742)
        {
          v1 = 45;
          goto LABEL_197;
        }

        if (result == 749116821)
        {
          v1 = 32;
          goto LABEL_197;
        }
      }

      else
      {
        switch(result)
        {
          case 789142227:
            v1 = 83;
            goto LABEL_197;
          case 810906663:
            v1 = 73;
            goto LABEL_197;
          case 851437781:
            v1 = 60;
            goto LABEL_197;
        }
      }
    }

    else if (result > 347088859)
    {
      if (result <= 555503453)
      {
        if (result == 347088860)
        {
          v1 = 37;
          goto LABEL_197;
        }

        if (result == 425046865)
        {
          v1 = 23;
          goto LABEL_197;
        }
      }

      else
      {
        switch(result)
        {
          case 555503454:
            v1 = 80;
            goto LABEL_197;
          case 574536383:
            v1 = 61;
            goto LABEL_197;
          case 676119128:
            v1 = 12;
            goto LABEL_197;
        }
      }
    }

    else if (result <= 240711086)
    {
      if (result == 118623495)
      {
        v1 = 72;
        goto LABEL_197;
      }

      if (result == 133314240)
      {
        v1 = 54;
        goto LABEL_197;
      }
    }

    else
    {
      switch(result)
      {
        case 240711087:
          v1 = 84;
          goto LABEL_197;
        case 248718555:
          v1 = 44;
          goto LABEL_197;
        case 330877086:
          v1 = 59;
          goto LABEL_197;
      }
    }

    goto LABEL_196;
  }

  if (result <= 1770142588)
  {
    if (result > 1554479184)
    {
      if (result <= 1625227433)
      {
        if (result == 1554479185)
        {
          v1 = 34;
          goto LABEL_197;
        }

        if (result == 1602181456)
        {
          v1 = 21;
          goto LABEL_197;
        }
      }

      else
      {
        switch(result)
        {
          case 1625227434:
            v1 = 69;
            goto LABEL_197;
          case 1625491065:
            v1 = 42;
            goto LABEL_197;
          case 1747059280:
            v1 = 43;
            goto LABEL_197;
        }
      }
    }

    else if (result <= 1371389548)
    {
      if (result == 1294429942)
      {
        v1 = 13;
        goto LABEL_197;
      }

      if (result == 1309571158)
      {
        v1 = 11;
        goto LABEL_197;
      }
    }

    else
    {
      switch(result)
      {
        case 1371389549:
          v1 = 1;
          goto LABEL_197;
        case 1408738134:
          v1 = 17;
          goto LABEL_197;
        case 1434404433:
          v1 = 50;
          goto LABEL_197;
      }
    }

    goto LABEL_196;
  }

  if (result <= 2078329140)
  {
    if (result <= 1872992316)
    {
      if (result == 1770142589)
      {
        v1 = 30;
        goto LABEL_197;
      }

      if (result == 1781728947)
      {
        v1 = 64;
        goto LABEL_197;
      }
    }

    else
    {
      switch(result)
      {
        case 1872992317:
          v1 = 65;
          goto LABEL_197;
        case 1990293942:
          v1 = 10;
          goto LABEL_197;
        case 2021146989:
          v1 = 51;
          goto LABEL_197;
      }
    }

    goto LABEL_196;
  }

  if (result > 2085054104)
  {
    switch(result)
    {
      case 2085054105:
        v1 = 24;
        goto LABEL_197;
      case 2089455188:
        v1 = 71;
        goto LABEL_197;
      case 2132302344:
        v1 = 15;
        goto LABEL_197;
    }

    goto LABEL_196;
  }

  if (result == 2078329141)
  {
    v1 = 49;
    goto LABEL_197;
  }

  if (result == 2080700391)
  {
    v1 = 9;
    goto LABEL_197;
  }

  if (result != 2084894489)
  {
    goto LABEL_196;
  }

  v1 = 29;
LABEL_197:
  dword_280AEEEA0 = v1;
  return result;
}

uint64_t NFProductSupportsAC()
{
  if (qword_280AEEEF0 != -1)
  {
    dispatch_once(&qword_280AEEEF0, &unk_2843ADAC0);
  }

  return byte_280AEEE9E;
}

uint64_t sub_22EEC7C7C()
{
  v0 = *MEMORY[0x277CD2898];
  v1 = IOServiceNameMatching("AppleHammerfestSPMI");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (MatchingService)
  {
    byte_280AEEE9E = 1;
  }

  return IOObjectRelease(MatchingService);
}

BOOL NFProductAllowsWiredInDLMode(int a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CD2898];
  if (a1)
  {
    v2 = "hammerfest-spmi";
  }

  else
  {
    v2 = "stockholm-spmi";
  }

  v3 = IOServiceNameMatching(v2);
  MatchingService = IOServiceGetMatchingService(v1, v3);
  if (MatchingService)
  {
    v5 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"nfccModel", 0, 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      v8 = CFGetTypeID(CFProperty);
      v9 = v8 == CFDataGetTypeID() && CFDataGetLength(v7) && *CFDataGetBytePtr(v7) - 209 < 3;
      CFRelease(v7);
    }

    else
    {
      v9 = 0;
    }

    IOObjectRelease(v5);
  }

  else
  {
    v10 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v12 = *(&off_27DA9DE50 + specific);
    if (v12)
    {
      v12(3, "%s:%i Failed find IOKit service", "NFProductAllowsWiredInDLMode", 1056);
      v10 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v13 = dispatch_get_specific(v10);
    Logger = NFSharedLogGetLogger(v13);
    if (os_log_type_enabled(Logger, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v18 = "NFProductAllowsWiredInDLMode";
      v19 = 1024;
      v20 = 1056;
      _os_log_impl(&dword_22EEC4000, Logger, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed find IOKit service", buf, 0x12u);
    }

    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL NFProductHasModuleCal()
{
  if (qword_280AEEEE8 != -1)
  {
    dispatch_once(&qword_280AEEEE8, &unk_2843ADAA0);
  }

  if (dword_280AEEEA0 == 67)
  {
    return 0;
  }

  result = 0;
  if ((dword_280AEEEA0 & 0x7E) != 0x3E && (dword_280AEEEA0 & 0x7E) != 0x40)
  {
    return (dword_280AEEEA0 & 0x7C) != 0x28 && (dword_280AEEEA0 & 0x77) != 36 && (dword_280AEEEA0 - 40) < 0xFFFFFFFD;
  }

  return result;
}

uint64_t sub_22EEC7FAC()
{
  result = MGGetSInt32Answer();
  dword_280AEEEA4 = result;
  return result;
}

void sub_22EEC837C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_handleEventWithAction_token_descriptor_(WeakRetained, v8, a2, a3, v10);
  }
}

void sub_22EEC83F8(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v5 = *(&off_27DA9DE50 + specific);
    if (v5)
    {
      Class = object_getClass(WeakRetained);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(WeakRetained);
      Name = sel_getName(*(a1 + 48));
      v19 = *(a1 + 32);
      v20 = xpc_strerror();
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v5(3, "%c[%{public}s %{public}s]:%i Unexpected error from XPC event publisher for stream %{public}@: %s", v10, ClassName, Name, 59, v19, v20);
      v3 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v11 = dispatch_get_specific(v3);
    v12 = NFSharedLogGetLogger(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(WeakRetained);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(WeakRetained);
      v16 = sel_getName(*(a1 + 48));
      v17 = *(a1 + 32);
      *buf = 67110402;
      v22 = v14;
      v23 = 2082;
      v24 = v15;
      v25 = 2082;
      v26 = v16;
      v27 = 1024;
      v28 = 59;
      v29 = 2114;
      v30 = v17;
      v31 = 2080;
      v32 = xpc_strerror();
      _os_log_impl(&dword_22EEC4000, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Unexpected error from XPC event publisher for stream %{public}@: %s", buf, 0x36u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_22EEC8B20(uint64_t a1)
{
  v68 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = *(v2 + 48);
    v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v49, v67, 16);
    if (v4)
    {
      v7 = v4;
      v48 = *v50;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v50 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v49 + 1) + 8 * i);
          v10 = *(*(a1 + 32) + 16);
          objc_msgSend_unsignedLongLongValue(v9, v5, v6);
          v11 = *(a1 + 40);
          if (xpc_event_publisher_fire())
          {
            v12 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            if (specific >= 5)
            {
              goto LABEL_34;
            }

            v14 = *(&off_27DA9DE50 + specific);
            if (v14)
            {
              Class = object_getClass(*(a1 + 32));
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(*(a1 + 32));
              Name = sel_getName(*(a1 + 48));
              v19 = *(*(a1 + 32) + 24);
              v46 = xpc_strerror();
              v20 = 45;
              if (isMetaClass)
              {
                v20 = 43;
              }

              v14(3, "%c[%{public}s %{public}s]:%i Failed to send event to XPC event stream %{public}@ for token %{public}@: %s", v20, ClassName, Name, 112, v19, v9, v46);
              v12 = kNFLOG_DISPATCH_SPECIFIC_KEY;
            }

            v21 = dispatch_get_specific(v12);
            v22 = NFSharedLogGetLogger(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = object_getClass(*(a1 + 32));
              if (class_isMetaClass(v23))
              {
                v24 = 43;
              }

              else
              {
                v24 = 45;
              }

              v25 = object_getClassName(*(a1 + 32));
              v26 = sel_getName(*(a1 + 48));
              v27 = *(*(a1 + 32) + 24);
              v28 = xpc_strerror();
              *buf = 67110658;
              v54 = v24;
              v55 = 2082;
              v56 = v25;
              v57 = 2082;
              v58 = v26;
              v59 = 1024;
              v60 = 112;
              v61 = 2114;
              v62 = v27;
              v63 = 2114;
              v64 = v9;
              v65 = 2080;
              v66 = v28;
              _os_log_impl(&dword_22EEC4000, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to send event to XPC event stream %{public}@ for token %{public}@: %s", buf, 0x40u);
            }
          }
        }

        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v49, v67, 16);
      }

      while (v7);
    }
  }

  else
  {
    v29 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    v30 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (v30 >= 5)
    {
LABEL_34:
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v31 = *(&off_27DA9DE50 + v30);
    if (v31)
    {
      v32 = object_getClass(v2);
      v33 = class_isMetaClass(v32);
      v34 = object_getClassName(*(a1 + 32));
      v35 = sel_getName(*(a1 + 48));
      v36 = 45;
      if (v33)
      {
        v36 = 43;
      }

      v31(4, "%c[%{public}s %{public}s]:%i Have not received initial barrier; not sending %@", v36, v34, v35, 116, *(a1 + 40));
      v29 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v37 = dispatch_get_specific(v29);
    v38 = NFSharedLogGetLogger(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v39))
      {
        v40 = 43;
      }

      else
      {
        v40 = 45;
      }

      v41 = object_getClassName(*(a1 + 32));
      v42 = sel_getName(*(a1 + 48));
      v43 = *(a1 + 40);
      *buf = 67110146;
      v54 = v40;
      v55 = 2082;
      v56 = v41;
      v57 = 2082;
      v58 = v42;
      v59 = 1024;
      v60 = 116;
      v61 = 2112;
      v62 = v43;
      _os_log_impl(&dword_22EEC4000, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Have not received initial barrier; not sending %@", buf, 0x2Cu);
    }

    objc_msgSend_addObject_(*(*(a1 + 32) + 40), v44, *(a1 + 40));
  }

  v45 = *MEMORY[0x277D85DE8];
}

void postAnalyticsHardwareExceptionEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v15 = objc_autoreleasePoolPush();
  v16 = 0;
  if (a6 && a7)
  {
    v16 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v14, a6, a7);
  }

  objc_msgSend_postHardwareExceptionEventWithAssertionCounter_hardwareType_wdogDump_hwFltDump_wdgTickInfo_assertionData_(NFExceptionsCALogger, v14, a2, a1, a3, a4, a5, v16);

  objc_autoreleasePoolPop(v15);
}

void postAnalyticsMiddlewareExceptionEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v13 = objc_autoreleasePoolPush();
  v14 = strlen(a7);
  if (v14)
  {
    if (v14 >= 0xC8)
    {
      v16 = 200;
    }

    else
    {
      v16 = v14;
    }

    v17 = objc_alloc(MEMORY[0x277CBEA90]);
    v19 = objc_msgSend_initWithBytes_length_(v17, v18, a7, v16);
    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    v22 = objc_msgSend_initWithData_encoding_(v20, v21, v19, 4);
  }

  else
  {
    v22 = @"No description provided";
  }

  objc_msgSend_postMiddlewareExceptionEvent_mwVersion_errorType_errorCode_breadcrumb_description_(NFExceptionsCALogger, v15, a1, a2, a3, a4, a5, v22);
  objc_msgSend_updateAnalyticsGeneralTransactionStatistics_(NFGeneralStatisticsCALogger, v23, &unk_2843B4D00);

  objc_autoreleasePoolPop(v13);
}

void postAnalyticsMainSERemovedEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  objc_msgSend_postAnalyticsSERemovedEvent_hasExpressTransactionStarted_hasCardEmulationStarted_hardwareType_(NFExceptionsCALogger, v7, a2, 0, a3, a1);
  v10 = objc_msgSend_sharedCALogger(NFCALogger, v8, v9);
  v13 = objc_msgSend_generateDailyUUIDForCA(v10, v11, v12);
  v15 = v13;
  v20[0] = @"seRemovedEvt0Count";
  v20[1] = @"dailyDeviceUUID";
  v16 = @"noUUID";
  if (v13)
  {
    v16 = v13;
  }

  v21[0] = &unk_2843B4BF0;
  v21[1] = v16;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v21, v20, 2);
  objc_msgSend_postCAEventFor_eventInput_(v10, v18, @"com.apple.nfcd.deviceExceptionStatistic", v17);

  objc_autoreleasePoolPop(v6);
  v19 = *MEMORY[0x277D85DE8];
}

void postAnalyticsTxLdoOverCurrentErrorEvent()
{
  v0 = objc_autoreleasePoolPush();
  objc_msgSend_updateGeneralDeviceStatistic_(NFGeneralStatisticsCALogger, v1, &unk_2843B4D28);

  objc_autoreleasePoolPop(v0);
}

void postAnalyticsTxLdoErrorEvent(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  if (v2 >= 0x32)
  {
    v2 = 50;
  }

  else
  {
    v2 = v2;
  }

  v5 = objc_alloc(MEMORY[0x277CBEA90]);
  v7 = objc_msgSend_initWithBytes_length_(v5, v6, a1, v2);
  v12 = objc_msgSend_NF_asHexString(v7, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_sharedCALogger(NFCALogger, v10, v11);
    v18 = @"status";
    v19[0] = v12;
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v19, &v18, 1);
    objc_msgSend_postCAEventFor_eventInput_(v13, v16, @"com.apple.nfcd.exceptions.txLdoErrors", v15);
  }

  objc_autoreleasePoolPop(v4);
  v17 = *MEMORY[0x277D85DE8];
}

BOOL sub_22EECB990(void *a1, const char *a2, uint64_t a3, unint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = a3;
    if ((objc_msgSend_length(a1, a2, a3) & 1) == 0 && a4 <= objc_msgSend_length(a1, v7, v8) >> 1)
    {
      v16 = a1;
      __str[2] = 0;
      v19 = a4 - 1;
      v20 = (objc_msgSend_UTF8String(v16, v17, v18) + 1);
      v21 = MEMORY[0x277D85DE0];
      while (1)
      {
        __str[0] = *(v20 - 1);
        v22 = *v20;
        __str[1] = *v20;
        if ((__str[0] & 0x8000000000000000) != 0 || (*(v21 + 4 * __str[0] + 60) & 0x10000) == 0 || v22 < 0 || (*(v21 + 4 * v22 + 60) & 0x10000) == 0)
        {
          break;
        }

        v23 = strtoul(__str, 0, 16);
        v25 = *v5++;
        v24 = v25;
        v27 = v19-- != 0;
        v28 = v24 == v23;
        result = v28;
        if (v28)
        {
          v20 += 2;
          if (v27)
          {
            continue;
          }
        }

        goto LABEL_11;
      }

      v29 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (specific < 5)
      {
        v31 = *(&off_27DA9DE50 + specific);
        if (v31)
        {
          v31(4, "%s:%i Source is not hex encoded bytes", "[NSString(HexString) NF_isPrefixOfHexEncodedEqualToBytes:length:]", 34);
          v29 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v32 = dispatch_get_specific(v29);
        v33 = NFSharedLogGetLogger(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446466;
          v36 = "[NSString(HexString) NF_isPrefixOfHexEncodedEqualToBytes:length:]";
          v37 = 1024;
          v38 = 34;
          _os_log_impl(&dword_22EEC4000, v33, OS_LOG_TYPE_ERROR, "%{public}s:%i Source is not hex encoded bytes", buf, 0x12u);
        }

        goto LABEL_10;
      }

LABEL_30:
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }
  }

  v9 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  v10 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  if (v10 >= 5)
  {
    goto LABEL_30;
  }

  v11 = *(&off_27DA9DE50 + v10);
  if (v11)
  {
    v11(4, "%s:%i prefixBytes is of invalid length=%ld", "[NSString(HexString) NF_isPrefixOfHexEncodedEqualToBytes:length:]", 15, a4);
    v9 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  }

  v12 = dispatch_get_specific(v9);
  v13 = NFSharedLogGetLogger(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v36 = "[NSString(HexString) NF_isPrefixOfHexEncodedEqualToBytes:length:]";
    v37 = 1024;
    v38 = 15;
    v39 = 2048;
    v40 = a4;
    _os_log_impl(&dword_22EEC4000, v13, OS_LOG_TYPE_ERROR, "%{public}s:%i prefixBytes is of invalid length=%ld", buf, 0x1Cu);
  }

LABEL_10:
  result = 0;
LABEL_11:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ValidateAPDUWithAIDAllowList(void *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (objc_msgSend_instruction(v3, v5, v6) == 164 && objc_msgSend_p1(v3, v7, v8) == 4 && (objc_msgSend_payload(v3, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend_member_(v4, v12, v11), v13 = objc_claimAutoreleasedReturnValue(), v13, v11, !v13))
  {
    v19 = objc_msgSend_payload(v3, v14, v15);
    v22 = objc_msgSend_NF_asHexString(v19, v20, v21);

    v23 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v25 = *(&off_27DA9DE50 + specific);
    if (v25)
    {
      v25(3, "%s:%i %{public}@ not in allow list", "ValidateAPDUWithAIDAllowList", 62, v22);
      v23 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v26 = dispatch_get_specific(v23);
    v27 = NFSharedLogGetLogger(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v29 = "ValidateAPDUWithAIDAllowList";
      v30 = 1024;
      v31 = 62;
      v32 = 2114;
      v33 = v22;
      _os_log_impl(&dword_22EEC4000, v27, OS_LOG_TYPE_ERROR, "%{public}s:%i %{public}@ not in allow list", buf, 0x1Cu);
    }

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t sub_22EED0CE8(void *a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6 && (v7 = objc_msgSend_length(a1, v4, v5), v7 >= objc_msgSend_length(v6, v8, v9)))
  {
    v13 = objc_msgSend_length(v6, v10, v11);
    v15 = objc_msgSend_subdataWithRange_(a1, v14, 0, v13);
    isEqualToData = objc_msgSend_isEqualToData_(v15, v16, v6);
  }

  else
  {
    isEqualToData = 0;
  }

  return isEqualToData;
}

uint64_t sub_22EED1100(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22EED1118(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 40);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    *a4 = 1;
    v10 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v12 = *(&off_27DA9DE50 + specific);
    if (v12)
    {
      Class = object_getClass(*(a1 + 48));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 48));
      Name = sel_getName(*(a1 + 56));
      v28 = objc_opt_class();
      v17 = 45;
      if (isMetaClass)
      {
        v17 = 43;
      }

      v12(3, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", v17, ClassName, Name, 33, v28, *(a1 + 40));
      v10 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v18 = dispatch_get_specific(v10);
    v19 = NFSharedLogGetLogger(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = object_getClass(*(a1 + 48));
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v22 = object_getClassName(*(a1 + 48));
      v23 = sel_getName(*(a1 + 56));
      v24 = objc_opt_class();
      v25 = *(a1 + 40);
      *buf = 67110402;
      v30 = v21;
      v31 = 2082;
      v32 = v22;
      v33 = 2082;
      v34 = v23;
      v35 = 1024;
      v36 = 33;
      v37 = 2114;
      v38 = v24;
      v39 = 2114;
      v40 = v25;
      v26 = v24;
      _os_log_impl(&dword_22EEC4000, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", buf, 0x36u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void sub_22EED1700(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_22EED19D0;
    v28[3] = &unk_278872AA0;
    v8 = *(a1 + 64);
    v29 = *(a1 + 48);
    v28[4] = *(a1 + 40);
    v28[5] = v8;
    objc_msgSend_enumerateObjectsUsingBlock_(v6, v7, v28);
    if (*(*(*(a1 + 40) + 8) + 24) != 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v11 = *(&off_27DA9DE50 + specific);
    if (v11)
    {
      Class = object_getClass(*(a1 + 48));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 48));
      Name = sel_getName(*(a1 + 56));
      v27 = objc_opt_class();
      v16 = 45;
      if (isMetaClass)
      {
        v16 = 43;
      }

      v11(3, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", v16, ClassName, Name, 60, v27, @"NSArray");
      v9 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v17 = dispatch_get_specific(v9);
    v18 = NFSharedLogGetLogger(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = object_getClass(*(a1 + 48));
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      v21 = object_getClassName(*(a1 + 48));
      v22 = sel_getName(*(a1 + 56));
      *buf = 67110402;
      v31 = v20;
      v32 = 2082;
      v33 = v21;
      v34 = 2082;
      v35 = v22;
      v36 = 1024;
      v37 = 60;
      v38 = 2114;
      v39 = objc_opt_class();
      v40 = 2114;
      v41 = @"NSArray";
      v23 = v39;
      _os_log_impl(&dword_22EEC4000, v18, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", buf, 0x36u);
    }
  }

  v24 = *(*(a1 + 32) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = 0;

  *a4 = 1;
LABEL_16:

  v26 = *MEMORY[0x277D85DE8];
}

void sub_22EED19D0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 40);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v10 = *(&off_27DA9DE50 + specific);
    if (v10)
    {
      Class = object_getClass(*(a1 + 48));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 48));
      Name = sel_getName(*(a1 + 56));
      v26 = objc_opt_class();
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v10(3, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", v15, ClassName, Name, 66, v26, *(a1 + 40));
      v8 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v16 = dispatch_get_specific(v8);
    v17 = NFSharedLogGetLogger(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = object_getClass(*(a1 + 48));
      if (class_isMetaClass(v18))
      {
        v19 = 43;
      }

      else
      {
        v19 = 45;
      }

      v20 = object_getClassName(*(a1 + 48));
      v21 = sel_getName(*(a1 + 56));
      v22 = objc_opt_class();
      v23 = *(a1 + 40);
      *buf = 67110402;
      v28 = v19;
      v29 = 2082;
      v30 = v20;
      v31 = 2082;
      v32 = v21;
      v33 = 1024;
      v34 = 66;
      v35 = 2114;
      v36 = v22;
      v37 = 2114;
      v38 = v23;
      v24 = v22;
      _os_log_impl(&dword_22EEC4000, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected class %{public}@, expecting %{public}@", buf, 0x36u);
    }

    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_22EED1F98(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 40);
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v12 = *(&off_27DA9DE50 + specific);
    if (v12)
    {
      Class = object_getClass(*(a1 + 48));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 48));
      Name = sel_getName(*(a1 + 56));
      v17 = objc_opt_class();
      v33 = objc_opt_class();
      v18 = 43;
      if (!isMetaClass)
      {
        v18 = 45;
      }

      v12(3, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected key %{public}@, class %{public}@, expecting %{public}@", v18, ClassName, Name, 101, v17, v33, *(a1 + 40));
      v10 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v19 = dispatch_get_specific(v10);
    v20 = NFSharedLogGetLogger(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(*(a1 + 48));
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      v23 = object_getClassName(*(a1 + 48));
      v24 = sel_getName(*(a1 + 56));
      v25 = objc_opt_class();
      v26 = v25;
      v27 = objc_opt_class();
      v28 = *(a1 + 40);
      *buf = 67110658;
      v35 = v22;
      v36 = 2082;
      v37 = v23;
      v38 = 2082;
      v39 = v24;
      v40 = 1024;
      v41 = 101;
      v42 = 2114;
      v43 = v25;
      v44 = 2114;
      v45 = v27;
      v46 = 2114;
      v47 = v28;
      v29 = v27;
      _os_log_impl(&dword_22EEC4000, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i XPC Sanitizer : Unexpected key %{public}@, class %{public}@, expecting %{public}@", buf, 0x40u);
    }

    v30 = *(*(a1 + 32) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = 0;

    *a4 = 1;
  }

  v32 = *MEMORY[0x277D85DE8];
}

void NFSimulateCrash(int a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  Logger = NFSharedLogGetLogger(0);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_FAULT))
  {
    v6[0] = 67109378;
    v6[1] = a1;
    v7 = 2082;
    v8 = a2;
    _os_log_fault_impl(&dword_22EEC4000, Logger, OS_LOG_TYPE_FAULT, "Error 0x%02X : %{public}s", v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22EED815C()
{
  qword_280AEEF00 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void sub_22EED96E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9 = objc_msgSend_copy(a3, v6, v7);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v8, v9, v5);
}

os_log_t sub_22EED97B8(uint64_t a1)
{
  result = os_log_create(off_278872B38[*(a1 + 32)], off_278872B60[*(a1 + 32)]);
  qword_280AEEFF8[*(a1 + 32)] = result;
  return result;
}

uint64_t NFSharedMiddlewareSignpostLog(int a1)
{
  if (qword_280AEEF18 != -1)
  {
    dispatch_once(&qword_280AEEF18, &unk_2843ADB20);
  }

  v2 = 24;
  if (a1)
  {
    v2 = 16;
  }

  return *&byte_280AEEF10[v2];
}

os_log_t sub_22EED986C()
{
  qword_280AEEF20 = os_log_create("com.apple.nfc.middleware.signpost", "Primary");
  result = os_log_create("com.apple.nfc.middleware.signpost", "Secondary");
  qword_280AEEF28 = result;
  return result;
}

void NFSharedDumpTransport(int a1, const char *a2, uint64_t a3, unint64_t a4, int a5)
{
  v35 = *MEMORY[0x277D85DE8];
  if (qword_280AEEF60 != -1)
  {
    dispatch_once(&qword_280AEEF60, &unk_2843ADB80);
  }

  if (byte_280AEEF10[0] == 1)
  {
    v34 = 0u;
    memset(v33, 0, sizeof(v33));
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v11 = *(&off_27DA9DE50 + specific);
    Logger = NFSharedLogGetLogger(specific);
    if (os_log_type_enabled(Logger, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v26 = "NFSharedDumpTransport";
      v27 = 1024;
      v28 = 132;
      v29 = 2082;
      v30 = a2;
      v31 = 2048;
      v32 = a4;
      _os_log_impl(&dword_22EEC4000, Logger, OS_LOG_TYPE_ERROR, "%s:%i %{public}s %lu bytes", buf, 0x26u);
    }

    if (v11)
    {
      v11(4, "%s:%i %s %lu bytes :", "NFSharedDumpTransport", 132, a2, a4);
    }

    if (a4)
    {
      v13 = 0;
      do
      {
        v14 = 0;
        v15 = &v33[__sprintf_chk(v33, 0, 0x30uLL, "%04lX: ", v13)];
        do
        {
          v16 = *(a3 + v13++);
          v17 = sprintf(v15, "0x%02X ", v16);
          if (v14 > 6)
          {
            break;
          }

          v15 += v17;
          ++v14;
        }

        while (v13 < a4);
        v18 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v19 = NFSharedLogGetLogger(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446210;
          v26 = v33;
          _os_log_impl(&dword_22EEC4000, v19, OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
        }

        if (v11)
        {
          v11(4, "%s", v33);
        }
      }

      while (v13 < a4);
    }
  }

  else
  {
    v20 = qword_280AEEF30;
    if (!a1 || qword_280AEEF30 || (v20 = os_log_create("com.apple.nfc", "nci.primary.dump"), (qword_280AEEF30 = v20) != 0))
    {
      v21 = qword_280AEEF38;
      if ((a1 & 1) == 0 && !qword_280AEEF38)
      {
        v22 = os_log_create("com.apple.nfc", "nci.secondary.dump");
        qword_280AEEF38 = v22;
        if (!v22)
        {
          goto LABEL_36;
        }

        v21 = v22;
        v20 = qword_280AEEF30;
      }

      if (a1)
      {
        v23 = v20;
      }

      else
      {
        v23 = v21;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *v33 = 136446722;
        *&v33[4] = a2;
        *&v33[12] = 1040;
        *&v33[14] = a4;
        *&v33[18] = 2098;
        *&v33[20] = a3;
        _os_log_impl(&dword_22EEC4000, v23, OS_LOG_TYPE_ERROR, "%{public}s %{public,stockholm:NCI}.*P", v33, 0x1Cu);
      }

      if (a5)
      {
        if (a1)
        {
          os_release(qword_280AEEF30);
          qword_280AEEF30 = 0;
        }

        else
        {
          os_release(qword_280AEEF38);
          qword_280AEEF38 = 0;
        }
      }
    }
  }

LABEL_36:
  v24 = *MEMORY[0x277D85DE8];
}

void NFSharedLogTransport(char a1, const char *a2, uint64_t a3, unint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (qword_280AEEF60 != -1)
  {
    dispatch_once(&qword_280AEEF60, &unk_2843ADB80);
  }

  if (byte_280AEEF10[0] == 1)
  {
    v30 = 0u;
    v31 = 0u;
    *v29 = 0u;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v9 = *(&off_27DA9DE50 + specific);
    Logger = NFSharedLogGetLogger(specific);
    if (os_log_type_enabled(Logger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v22 = "NFSharedLogTransport";
      v23 = 1024;
      v24 = 184;
      v25 = 2082;
      v26 = a2;
      v27 = 2048;
      v28 = a4;
      _os_log_impl(&dword_22EEC4000, Logger, OS_LOG_TYPE_DEFAULT, "%s:%i %{public}s %lu bytes", buf, 0x26u);
    }

    if (v9)
    {
      v9(5, "%s:%i %s %lu bytes :", "NFSharedLogTransport", 184, a2, a4);
    }

    if (a4)
    {
      v11 = 0;
      do
      {
        v12 = 0;
        v13 = &v29[__sprintf_chk(v29, 0, 0x30uLL, "%04lX: ", v11)];
        do
        {
          v14 = *(a3 + v11++);
          v15 = sprintf(v13, "0x%02X ", v14);
          if (v12 > 6)
          {
            break;
          }

          v13 += v15;
          ++v12;
        }

        while (v11 < a4);
        v16 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v17 = NFSharedLogGetLogger(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v22 = v29;
          _os_log_impl(&dword_22EEC4000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
        }

        if (v9)
        {
          v9(5, "%s", v29);
        }
      }

      while (v11 < a4);
    }
  }

  else
  {
    if (qword_280AEEF40 != -1)
    {
      dispatch_once(&qword_280AEEF40, &unk_2843ADB40);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = sub_22EED9FCC;
    block[3] = &unk_278872BE8;
    v20 = a1;
    block[4] = a2;
    block[5] = a4;
    block[6] = a3;
    dispatch_sync(qword_280AEEF48, block);
  }

  v18 = *MEMORY[0x277D85DE8];
}

os_log_t sub_22EED9F4C()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);
  qword_280AEEF48 = dispatch_queue_create("com.apple.stockholm.NCILog", v1);
  qword_280AEEF50 = os_log_create("com.apple.nfc", "nci.primary.stream");
  result = os_log_create("com.apple.nfc", "nci.secondary.stream");
  qword_280AEEF58 = result;
  return result;
}

void sub_22EED9FCC(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = 72;
  if (*(a1 + 56))
  {
    v2 = 64;
  }

  v3 = *&byte_280AEEF10[v2];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = 136446722;
    v9 = v4;
    v10 = 1040;
    v11 = v5;
    v12 = 2098;
    v13 = v6;
    _os_log_impl(&dword_22EEC4000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s %{public,stockholm:NCI}.*P", &v8, 0x1Cu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

unint64_t NFLogSetLogger(unint64_t result, void *a2)
{
  if (result >= 5)
  {
    __assert_rtn("NFLogSetLogger", "NFSharedLog.c", 223, "category < NFLogCategoryMax");
  }

  *(&off_27DA9DE50 + result) = a2;
  return result;
}

void sub_22EEDA104()
{
  if (!qword_280AEEFF0)
  {
    qword_280AEEFF0 = os_log_create("com.apple.nfc.signpost", "GeneralSignposts");
  }

  if (!qword_280AEEFE8)
  {
    qword_280AEEFE8 = os_log_create("com.apple.nfc.accessory.signpost", "GeneralSignposts");
  }
}

void sub_22EEDA168()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    byte_280AEEF10[0] = CFBooleanGetValue(v0) != 0;

    CFRelease(v1);
  }
}

void sub_22EEDC284(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  if (objc_msgSend_isEqualToString_(v23, v6, @"currentNFCDefault") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_msgSend_setValue_forKey_(*(a1 + 32), v7, v5, v23);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_msgSend_objectForKey_(*(a1 + 32), v8, v23);
      v10 = v9;
      v11 = &unk_2843B4C50;
      if (v9)
      {
        v11 = v9;
      }

      v12 = v11;

      v13 = MEMORY[0x277CCABB0];
      v16 = objc_msgSend_integerValue(v12, v14, v15);

      v19 = objc_msgSend_integerValue(v5, v17, v18);
      v21 = objc_msgSend_numberWithInteger_(v13, v20, v19 + v16);
      objc_msgSend_setValue_forKey_(*(a1 + 32), v22, v21, v23);
    }
  }
}

void sub_22EEDC694(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  if (objc_msgSend_isEqualToString_(v30, v6, @"totalDynamicPackages"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_msgSend_objectForKey_(*(a1 + 32), v7, v30);
      v9 = v8;
      v10 = &unk_2843B4C50;
      if (v8)
      {
        v10 = v8;
      }

      v11 = v10;

      v12 = MEMORY[0x277CCABB0];
      v15 = objc_msgSend_integerValue(v11, v13, v14);

      v18 = objc_msgSend_integerValue(v5, v16, v17);
      v20 = objc_msgSend_numberWithInteger_(v12, v19, v18 + v15);
      objc_msgSend_setValue_forKey_(*(a1 + 32), v21, v20, v30);
      *(*(*(a1 + 40) + 8) + 24) = 1;
      goto LABEL_6;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = objc_msgSend_objectForKey_(*(a1 + 32), v24, v30);

    v23 = *(a1 + 32);
    if (!v25)
    {
      goto LABEL_9;
    }

    v20 = objc_msgSend_objectForKey_(v23, v22, v30);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_6:

      goto LABEL_14;
    }

    v27 = objc_msgSend_objectForKey_(*(a1 + 32), v26, v30);
    isEqualToNumber = objc_msgSend_isEqualToNumber_(v27, v28, v5);

    if ((isEqualToNumber & 1) == 0)
    {
LABEL_8:
      v23 = *(a1 + 32);
LABEL_9:
      objc_msgSend_setValue_forKey_(v23, v22, v5, v30);
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

LABEL_14:
}

void sub_22EEDCE74(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_objectForKey_(*(a1 + 32), v6, v21);
    v8 = v7;
    v9 = &unk_2843B4C50;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = MEMORY[0x277CCABB0];
    v14 = objc_msgSend_integerValue(v10, v12, v13);

    v17 = objc_msgSend_integerValue(v5, v15, v16);
    v19 = objc_msgSend_numberWithInteger_(v11, v18, v17 + v14);
    objc_msgSend_setValue_forKey_(*(a1 + 32), v20, v19, v21);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void postCADynamicRFChangedEvent()
{
  v0 = objc_autoreleasePoolPush();
  objc_msgSend_updateAnalyticsGeneralTransactionStatistics_(NFGeneralStatisticsCALogger, v1, &unk_2843B4D78);

  objc_autoreleasePoolPop(v0);
}

void resetCALoadStackExceptionCount()
{
  v0 = objc_autoreleasePoolPush();
  v3 = objc_msgSend_sharedCALogger(NFCALogger, v1, v2);
  objc_msgSend_resetCALoadStackExceptionCount(v3, v4, v5);

  objc_autoreleasePoolPop(v0);
}

void *sub_22EEDD20C(unint64_t *a1, unint64_t a2, _WORD *a3)
{
  result = 0;
  v81 = *MEMORY[0x277D85DE8];
  v72 = 0;
  v5 = *a1;
  if (*a1 >= a2)
  {
    goto LABEL_65;
  }

  v8 = 0;
  while (1)
  {
    v9 = v5 + 1;
    *a1 = (v5 + 1);
    v10 = *v5;
    if ((~v10 & 0x1F) == 0)
    {
      v11 = v10;
      while (v9 < a2)
      {
        v12 = v9 + 1;
        *a1 = (v9 + 1);
        v13 = *v9;
        v14 = *v9++ | (v11 << 8);
        v11 = v14;
        if ((v13 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v27 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (specific < 5)
      {
        v29 = *(&off_27DA9DE50 + specific);
        if (v29)
        {
          v29(3, "%s:%i Underflow", "_TLVCreateWithBytes", 126);
          v27 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v30 = dispatch_get_specific(v27);
        Logger = NFSharedLogGetLogger(v30);
        if (!os_log_type_enabled(Logger, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        *buf = 136446466;
        v74 = "_TLVCreateWithBytes";
        v75 = 1024;
        v76 = 126;
        v32 = "%{public}s:%i Underflow";
        v33 = Logger;
        v34 = 18;
LABEL_63:
        _os_log_impl(&dword_22EEC4000, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
        goto LABEL_64;
      }

LABEL_99:
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v12 = v9;
    v14 = v10;
LABEL_9:
    if (v12 >= a2)
    {
      break;
    }

    v15 = v12 + 1;
    *a1 = (v12 + 1);
    v16 = *v12;
    if (a3)
    {
      v17 = a3;
      do
      {
        v18 = *v17;
        if (!*v17)
        {
          goto LABEL_19;
        }

        ++v17;
      }

      while (v18 != v14);
      if (v16 == 255)
      {
        if (v15 >= a2)
        {
          v63 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          v64 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          if (v64 >= 5)
          {
            goto LABEL_99;
          }

          v65 = *(&off_27DA9DE50 + v64);
          if (v65)
          {
            v65(3, "%s:%i Underflow: tag=0x%x", "_TLVCreateWithBytes", 152, v14);
            v63 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          }

          v66 = dispatch_get_specific(v63);
          v39 = NFSharedLogGetLogger(v66);
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_64;
          }

          *buf = 136446722;
          v74 = "_TLVCreateWithBytes";
          v75 = 1024;
          v76 = 152;
          v77 = 1024;
          v78 = v14;
          v32 = "%{public}s:%i Underflow: tag=0x%x";
        }

        else
        {
          *a1 = (v12 + 2);
          if ((v12 + 2) < a2)
          {
            v19 = v12[1];
            v15 = v12 + 3;
            *a1 = (v12 + 3);
            v16 = v12[2] | (v19 << 8);
            goto LABEL_18;
          }

          v67 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          v68 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          if (v68 >= 5)
          {
            goto LABEL_99;
          }

          v69 = *(&off_27DA9DE50 + v68);
          if (v69)
          {
            v69(3, "%s:%i Underflow: tag=0x%x", "_TLVCreateWithBytes", 154, v14);
            v67 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          }

          v70 = dispatch_get_specific(v67);
          v39 = NFSharedLogGetLogger(v70);
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_64;
          }

          *buf = 136446722;
          v74 = "_TLVCreateWithBytes";
          v75 = 1024;
          v76 = 154;
          v77 = 1024;
          v78 = v14;
          v32 = "%{public}s:%i Underflow: tag=0x%x";
        }

LABEL_62:
        v33 = v39;
        v34 = 24;
        goto LABEL_63;
      }

LABEL_18:
      v20 = 1;
      goto LABEL_21;
    }

LABEL_19:
    if ((v16 & 0x80) == 0)
    {
      v20 = 0;
      goto LABEL_21;
    }

    v20 = v16 & 0x7F;
    if ((v16 & 0x7F) != 0)
    {
      v16 = 0;
      while (v15 < a2)
      {
        v26 = v15 + 1;
        *a1 = (v15 + 1);
        v16 = *v15++ | (v16 << 8);
        if (!--v20)
        {
          v15 = v26;
          goto LABEL_21;
        }
      }

      v35 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      v36 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (v36 < 5)
      {
        v37 = *(&off_27DA9DE50 + v36);
        if (v37)
        {
          v37(3, "%s:%i Underflow: tag=0x%x", "_TLVCreateWithBytes", 143, v14);
          v35 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v38 = dispatch_get_specific(v35);
        v39 = NFSharedLogGetLogger(v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v74 = "_TLVCreateWithBytes";
          v75 = 1024;
          v76 = 143;
          v77 = 1024;
          v78 = v14;
          v32 = "%{public}s:%i Underflow: tag=0x%x";
          goto LABEL_62;
        }

        goto LABEL_64;
      }

      goto LABEL_99;
    }

    v16 = 0;
LABEL_21:
    if (!(v14 | v16))
    {
LABEL_56:
      result = v72;
      goto LABEL_65;
    }

    if ((v20 ^ 1) & (v10 >> 5))
    {
      if (v16 == 128)
      {
        v24 = 128;
        v25 = a2;
      }

      else
      {
        if ((a2 - v15) < v16)
        {
          v59 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          v60 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          if (v60 >= 5)
          {
            goto LABEL_99;
          }

          v61 = *(&off_27DA9DE50 + v60);
          if (v61)
          {
            v61(3, "%s:%i Underflow: tag=0x%x len=%u", "_TLVCreateWithBytes", 184, v14, v16);
            v59 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          }

          v62 = dispatch_get_specific(v59);
          v49 = NFSharedLogGetLogger(v62);
          if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_64;
          }

          *buf = 136446978;
          v74 = "_TLVCreateWithBytes";
          v75 = 1024;
          v76 = 184;
          v77 = 1024;
          v78 = v14;
          v79 = 1024;
          v80 = v16;
          v32 = "%{public}s:%i Underflow: tag=0x%x len=%u";
LABEL_88:
          v33 = v49;
          v34 = 30;
          goto LABEL_63;
        }

        v24 = v16;
        v25 = &v15[v16];
      }

      v21 = NFDataCreateWithBytes(v15, v24);
      v71 = sub_22EEDD20C(a1, v25, a3);
      Child = TLVCreateWithFirstChild(v14, v71);
      TLVRelease(&v71);
      if (!Child)
      {
        v50 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        v51 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        if (v51 >= 5)
        {
          goto LABEL_99;
        }

        v52 = *(&off_27DA9DE50 + v51);
        if (v52)
        {
          v52(3, "%s:%i NULL error: tag=0x%x len=%u", "_TLVCreateWithBytes", 196, v14, v16);
          v50 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v53 = dispatch_get_specific(v50);
        v54 = NFSharedLogGetLogger(v53);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v74 = "_TLVCreateWithBytes";
          v75 = 1024;
          v76 = 196;
          v77 = 1024;
          v78 = v14;
          v79 = 1024;
          v80 = v16;
          goto LABEL_81;
        }

LABEL_82:
        NFDataRelease(v21);
        goto LABEL_64;
      }

      Child[5] = v21;
      if (v8)
      {
        v8[3] = Child;
      }

      else
      {
        v72 = Child;
      }

      v5 = *a1;
    }

    else
    {
      if ((a2 - v15) < v16)
      {
        v45 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        v46 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        if (v46 >= 5)
        {
          goto LABEL_99;
        }

        v47 = *(&off_27DA9DE50 + v46);
        if (v47)
        {
          v47(3, "%s:%i Underflow: tag=0x%x len=%u", "_TLVCreateWithBytes", 169, v14, v16);
          v45 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v48 = dispatch_get_specific(v45);
        v49 = NFSharedLogGetLogger(v48);
        if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_64;
        }

        *buf = 136446978;
        v74 = "_TLVCreateWithBytes";
        v75 = 1024;
        v76 = 169;
        v77 = 1024;
        v78 = v14;
        v79 = 1024;
        v80 = v16;
        v32 = "%{public}s:%i Underflow: tag=0x%x len=%u";
        goto LABEL_88;
      }

      v21 = NFDataCreateWithBytes(v15, v16);
      v22 = TLVCreateWithValue(v14, v21);
      if (!v22)
      {
        v55 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        v56 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        if (v56 >= 5)
        {
          goto LABEL_99;
        }

        v57 = *(&off_27DA9DE50 + v56);
        if (v57)
        {
          v57(3, "%s:%i NULL error: tag=0x%x len=%u", "_TLVCreateWithBytes", 172, v14, v16);
          v55 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v58 = dispatch_get_specific(v55);
        v54 = NFSharedLogGetLogger(v58);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446978;
          v74 = "_TLVCreateWithBytes";
          v75 = 1024;
          v76 = 172;
          v77 = 1024;
          v78 = v14;
          v79 = 1024;
          v80 = v16;
LABEL_81:
          _os_log_impl(&dword_22EEC4000, v54, OS_LOG_TYPE_ERROR, "%{public}s:%i NULL error: tag=0x%x len=%u", buf, 0x1Eu);
        }

        goto LABEL_82;
      }

      Child = v22;
      NFDataRelease(v21);
      if (v8)
      {
        v8[3] = Child;
      }

      else
      {
        v72 = Child;
      }

      v5 = (*a1 + v16);
      *a1 = v5;
    }

    v8 = Child;
    if (v5 >= a2)
    {
      goto LABEL_56;
    }
  }

  v40 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  v41 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  if (v41 >= 5)
  {
    goto LABEL_99;
  }

  v42 = *(&off_27DA9DE50 + v41);
  if (v42)
  {
    v42(3, "%s:%i Underflow: tag=0x%x", "_TLVCreateWithBytes", 134, v14);
    v40 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  }

  v43 = dispatch_get_specific(v40);
  v39 = NFSharedLogGetLogger(v43);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v74 = "_TLVCreateWithBytes";
    v75 = 1024;
    v76 = 134;
    v77 = 1024;
    v78 = v14;
    v32 = "%{public}s:%i Underflow: tag=0x%x";
    goto LABEL_62;
  }

LABEL_64:
  TLVRelease(&v72);
  result = 0;
LABEL_65:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *TLVCreateWithValue(int a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x30uLL, 0x102004093326106uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 1;
    v4[8] = a1;
    NFDataRetain(a2);
    *(v5 + 5) = a2;
  }

  return v5;
}

_DWORD *TLVCreateWithFirstChild(int a1, void *a2)
{
  result = malloc_type_calloc(1uLL, 0x30uLL, 0x102004093326106uLL);
  if (result)
  {
    *result = 1;
    result[8] = a1;
    if (a2)
    {
      ++*a2;
    }

    *(result + 2) = a2;
  }

  return result;
}

void *TLVRetain(void *result)
{
  if (result)
  {
    ++*result;
  }

  return result;
}

void TLVRelease(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if ((*v2)-- == 1)
      {
        v4 = v2[2];
        v5 = v2[3];
        v6 = v4;
        NFDataRelease(v2[5]);
        TLVRelease(&v6);
        TLVRelease(&v5);
        free(v2);
        *a1 = 0;
      }
    }
  }
}

uint64_t sub_22EEDDD08(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"PresentmentIntentSuppressionHolder");
  v8 = objc_msgSend_BOOLValue(v5, v6, v7);

  return v8;
}

void sub_22EEDDD60(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_userInfo(a1, a2, a3);
  objc_msgSend_setObject_forKey_(v4, v3, MEMORY[0x277CBEC38], @"PresentmentIntentSuppressionHolder");
}

void sub_22EEDDDB0(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_userInfo(a1, a2, a3);
  objc_msgSend_removeObjectForKey_(v4, v3, @"PresentmentIntentSuppressionHolder");
}

uint64_t sub_22EEDDDF8(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_userInfo(a1, a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"FDPresentmentIntentSuppressionHolder");
  v8 = objc_msgSend_BOOLValue(v5, v6, v7);

  return v8;
}

void sub_22EEDDE50(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_userInfo(a1, a2, a3);
  objc_msgSend_setObject_forKey_(v4, v3, MEMORY[0x277CBEC38], @"FDPresentmentIntentSuppressionHolder");
}

void sub_22EEDDEA0(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_userInfo(a1, a2, a3);
  objc_msgSend_removeObjectForKey_(v4, v3, @"FDPresentmentIntentSuppressionHolder");
}

void sub_22EEDDEE8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = objc_msgSend_userInfo(a1, v5, v6);
  objc_msgSend_setObject_forKey_(v8, v7, v4, @"CallbackUUID");
}

BOOL NFDataScannerRead(uint64_t **a1, uint64_t a2, _BYTE *a3)
{
  v3 = a1[1] + a2;
  v4 = (*a1)[1];
  if (a2 && v3 <= v4)
  {
    do
    {
      v5 = a1[1];
      v6 = **a1;
      a1[1] = (v5 + 1);
      *a3++ = *(v5 + v6);
      --a2;
    }

    while (a2);
  }

  return v3 <= v4;
}

BOOL NFDataScannerRead8(uint64_t **a1, _BYTE *a2)
{
  *a2 = 0;
  v2 = a1[1];
  v3 = v2 + 1;
  v4 = (*a1)[1];
  if (v2 + 1 <= v4)
  {
    v5 = **a1;
    a1[1] = v3;
    *a2 = *(v2 + v5);
  }

  return v3 <= v4;
}

BOOL NFDataScannerRead16(void *a1, uint64_t a2, _WORD *a3)
{
  *a3 = 0;
  v3 = a1[1];
  v4 = v3 + a2;
  v5 = *(*a1 + 8);
  if (a2 && v4 <= v5)
  {
    v6 = 0;
    v7 = (**a1 + v3);
    v8 = v3 + 1;
    do
    {
      a1[1] = v8;
      v9 = *v7++;
      v6 = v9 | (v6 << 8);
      *a3 = v6;
      ++v8;
      --a2;
    }

    while (a2);
  }

  return v4 <= v5;
}

BOOL NFDataScannerRead32(void *a1, uint64_t a2, int *a3)
{
  *a3 = 0;
  v3 = a1[1];
  v4 = v3 + a2;
  v5 = *(*a1 + 8);
  if (a2 && v4 <= v5)
  {
    v6 = 0;
    v7 = (**a1 + v3);
    v8 = v3 + 1;
    do
    {
      a1[1] = v8;
      v9 = *v7++;
      v6 = v9 | (v6 << 8);
      *a3 = v6;
      ++v8;
      --a2;
    }

    while (a2);
  }

  return v4 <= v5;
}

void **NFDataScannerReadData(void *a1, size_t a2)
{
  v2 = a1[1];
  if (v2 + a2 > *(*a1 + 8))
  {
    return 0;
  }

  result = NFDataCreateWithBytes((**a1 + v2), a2);
  a1[1] += a2;
  return result;
}

void *NFDataScannerCreateWithData(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10A00409D8FE3EAuLL);
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x48uLL, 0x1000040FF89C88EuLL);
    v2[2] = v3;
    if (!v3)
    {
      free(v2);
      return 0;
    }

    NFDataRetain(a1);
    *v2 = a1;
    v2[1] = 0;
    v4 = v2[2];
    *v4 = 1;
    if (pthread_mutex_init((v4 + 8), 0))
    {
      sub_22EEDE6B0(v2);
      return 0;
    }
  }

  return v2;
}

void sub_22EEDE6B0(void **a1)
{
  pthread_mutex_destroy((a1[2] + 1));
  free(a1[2]);
  a1[2] = 0;
  if (*a1)
  {
    NFDataRelease(*a1);
  }

  free(a1);
}

uint64_t NFDataScannerRetain(uint64_t a1)
{
  if (a1)
  {
    pthread_mutex_lock((*(a1 + 16) + 8));
    v2 = *(a1 + 16);
    ++*v2;
    pthread_mutex_unlock((v2 + 8));
  }

  return a1;
}

void NFDataScannerRelease(uint64_t a1)
{
  if (a1)
  {
    pthread_mutex_lock((*(a1 + 16) + 8));
    v2 = *(a1 + 16);
    v3 = *v2 - 1;
    *v2 = v3;
    pthread_mutex_unlock((v2 + 8));
    if (!v3)
    {

      sub_22EEDE6B0(a1);
    }
  }
}

void *NFDataCreateWithBytesNoCopy(uint64_t a1, uint64_t a2, char a3)
{
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040EEF68E16uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = 0;
    v8 = malloc_type_calloc(1uLL, 0x50uLL, 0x100004092262432uLL);
    v7[2] = v8;
    if (v8)
    {
      *v8 = 1;
      v8[72] = a3;
      if (!pthread_mutex_init((v8 + 8), 0))
      {
        *v7 = a1;
        v7[1] = a2;
        return v7;
      }

      sub_22EEDECE4(v7);
    }

    else
    {
      free(v7);
    }

    return 0;
  }

  return v7;
}

void sub_22EEDECE4(void *a1)
{
  v2 = *(a1 + 2);
  if (*(v2 + 72))
  {
    v3 = *a1;
    if (*a1)
    {
      free(v3);
      v2 = *(a1 + 2);
    }
  }

  *a1 = 0;
  pthread_mutex_destroy((v2 + 8));
  free(*(a1 + 2));

  free(a1);
}

void *NFDataCreateWithLength(size_t size)
{
  if (size)
  {
    result = malloc_type_calloc(1uLL, size, 0x100004077774924uLL);
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = 0;
  }

  result = NFDataCreateWithBytesNoCopy(v3, size, 1);
  if (v3)
  {
    if (!result)
    {
      free(v3);
      return 0;
    }
  }

  return result;
}

void **NFDataCreateWithBytes(const void *a1, size_t size)
{
  v4 = NFDataCreateWithLength(size);
  v5 = v4;
  if (v4)
  {
    memcpy(*v4, a1, size);
  }

  return v5;
}

void *NFDataCreateWithHexString(const char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = strlen(a1);
  v3 = v2;
  if (v2)
  {
    return 0;
  }

  v4 = NFDataCreateWithLength(v2 >> 1);
  v5 = v4;
  if (v4)
  {
    v6 = *v4;
    if (*v4)
    {
      __str[2] = 0;
      if (v3)
      {
        v7 = 0;
        v8 = MEMORY[0x277D85DE0];
        while (1)
        {
          __str[0] = a1[v7];
          v9 = a1[v7 + 1];
          __str[1] = a1[v7 + 1];
          if ((__str[0] & 0x8000000000000000) != 0 || (*(v8 + 4 * __str[0] + 60) & 0x10000) == 0 || v9 < 0 || (*(v8 + 4 * v9 + 60) & 0x10000) == 0)
          {
            break;
          }

          *v6++ = strtoul(__str, 0, 16);
          v7 += 2;
          if (v3 <= v7)
          {
            return v5;
          }
        }

        sub_22EEDECE4(v5);
        return 0;
      }
    }
  }

  return v5;
}

void *NFDataCreateWithFile(const char *a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = fopen(a1, "r");
  if (!v2)
  {
    v9 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific < 5)
    {
      v11 = *(&off_27DA9DE50 + specific);
      if (v11)
      {
        v12 = __error();
        v13 = strerror(*v12);
        v14 = __error();
        v11(3, "%s:%i %s errno=%d Failed to open %s", "NFDataCreateWithFile", 121, v13, *v14, a1);
        v9 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v15 = dispatch_get_specific(v9);
      Logger = NFSharedLogGetLogger(v15);
      if (os_log_type_enabled(Logger, OS_LOG_TYPE_ERROR))
      {
        v17 = __error();
        v18 = strerror(*v17);
        v19 = *__error();
        *buf = 136447234;
        v39 = "NFDataCreateWithFile";
        v40 = 1024;
        v41 = 121;
        v42 = 2080;
        v43 = v18;
        v44 = 1024;
        v45 = v19;
        v46 = 2080;
        v47 = a1;
        _os_log_impl(&dword_22EEC4000, Logger, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d Failed to open %s", buf, 0x2Cu);
      }

      goto LABEL_24;
    }

    goto LABEL_26;
  }

  v3 = v2;
  fseek(v2, 0, 2);
  v4 = MEMORY[0x2318FA700](v3);
  fseek(v3, 0, 0);
  v5 = malloc_type_calloc(1uLL, v4, 0x100004077774924uLL);
  if (!v5)
  {
    v20 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    v21 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (v21 < 5)
    {
      v22 = *(&off_27DA9DE50 + v21);
      if (v22)
      {
        v22(3, "%s:%i Failed to alloc %ld", "NFDataCreateWithFile", 133, v4);
        v20 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v23 = dispatch_get_specific(v20);
      v24 = NFSharedLogGetLogger(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v39 = "NFDataCreateWithFile";
        v40 = 1024;
        v41 = 133;
        v42 = 2048;
        v43 = v4;
        _os_log_impl(&dword_22EEC4000, v24, OS_LOG_TYPE_ERROR, "%{public}s:%i Failed to alloc %ld", buf, 0x1Cu);
      }

      fclose(v3);
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  v6 = v5;
  v7 = fread(v5, 1uLL, v4, v3);
  if (v7 != v4)
  {
    v25 = v7;
    v26 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    v27 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (v27 < 5)
    {
      v28 = *(&off_27DA9DE50 + v27);
      if (v28)
      {
        v29 = __error();
        v30 = strerror(*v29);
        v31 = __error();
        v28(3, "%s:%i %s errno=%d Failed to read data %ld/%ld", "NFDataCreateWithFile", 140, v30, *v31, v25, v4);
        v26 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v32 = dispatch_get_specific(v26);
      v33 = NFSharedLogGetLogger(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = __error();
        v35 = strerror(*v34);
        v36 = *__error();
        *buf = 136447490;
        v39 = "NFDataCreateWithFile";
        v40 = 1024;
        v41 = 140;
        v42 = 2080;
        v43 = v35;
        v44 = 1024;
        v45 = v36;
        v46 = 2048;
        v47 = v25;
        v48 = 2048;
        v49 = v4;
        _os_log_impl(&dword_22EEC4000, v33, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d Failed to read data %ld/%ld", buf, 0x36u);
      }

      fclose(v3);
      goto LABEL_23;
    }

LABEL_26:
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  fclose(v3);
  result = NFDataCreateWithBytesNoCopy(v6, v4, 1);
  if (!result)
  {
LABEL_23:
    free(v6);
LABEL_24:
    result = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t NFDataRetain(uint64_t a1)
{
  if (a1)
  {
    pthread_mutex_lock((*(a1 + 16) + 8));
    v2 = *(a1 + 16);
    ++*v2;
    pthread_mutex_unlock((v2 + 8));
  }

  return a1;
}

BOOL NFDataAppendBytes(_BOOL8 result, const void *a2, size_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v4 = result;
    result = 1;
    if (a2)
    {
      if (a3)
      {
        v6 = malloc_type_calloc(1uLL, *(v4 + 8) + a3, 0x100004077774924uLL);
        if (v6)
        {
          v7 = v6;
          memcpy(v6, *v4, *(v4 + 8));
          memcpy(&v7[*(v4 + 8)], a2, a3);
          free(*v4);
          v8 = *(v4 + 8) + a3;
          *v4 = v7;
          *(v4 + 8) = v8;
          result = 1;
        }

        else
        {
          v9 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          if (specific >= 5)
          {
            __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
          }

          v11 = *(&off_27DA9DE50 + specific);
          if (v11)
          {
            v12 = __error();
            v13 = strerror(*v12);
            v14 = __error();
            v11(3, "%s:%i %s errno=%d Failed to realloc to %zu bytes", "NFDataAppendBytes", 186, v13, *v14, *(v4 + 8) + a3);
            v9 = kNFLOG_DISPATCH_SPECIFIC_KEY;
          }

          v15 = dispatch_get_specific(v9);
          Logger = NFSharedLogGetLogger(v15);
          result = os_log_type_enabled(Logger, OS_LOG_TYPE_ERROR);
          if (result)
          {
            v17 = __error();
            v18 = strerror(*v17);
            v19 = *__error();
            v20 = *(v4 + 8) + a3;
            *buf = 136447234;
            v23 = "NFDataAppendBytes";
            v24 = 1024;
            v25 = 186;
            v26 = 2080;
            v27 = v18;
            v28 = 1024;
            v29 = v19;
            v30 = 2048;
            v31 = v20;
            _os_log_impl(&dword_22EEC4000, Logger, OS_LOG_TYPE_ERROR, "%{public}s:%i %s errno=%d Failed to realloc to %zu bytes", buf, 0x2Cu);
            result = 0;
          }
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

char *NFDataAsHexString(uint64_t *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[1];
  if (!v2 || !*a1)
  {
    return 0;
  }

  v3 = malloc_type_calloc(1uLL, (2 * v2) | 1, 0x100004077774924uLL);
  v4 = v3;
  if (a1[1])
  {
    v5 = 0;
    v6 = *a1;
    v7 = v3;
    do
    {
      sprintf(v7, "%02X", *(v6 + v5++));
      v7 += 2;
    }

    while (a1[1] > v5);
  }

  return v4;
}

void NFDataPrintAsHexString(uint64_t a1, const char *a2, uint64_t *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = NFDataAsHexString(a3);
  if (v5)
  {
    v6 = v5;
    if (off_27DA9DE50)
    {
      if (a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = "";
      }

      off_27DA9DE50(a1, "%s:%i %s: %s", "NFDataPrintAsHexString", 225, v7, v5);
    }

    Logger = NFSharedLogGetLogger(0);
    v9 = Logger;
    if ((a1 - 3) >= 6)
    {
      v10 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v10 = (0x20200001010uLL >> (8 * (a1 - 3)));
    }

    if (os_log_type_enabled(Logger, (v10 & 0xFE)))
    {
      if (a2)
      {
        v11 = a2;
      }

      else
      {
        v11 = "";
      }

      *buf = 136446978;
      v14 = "NFDataPrintAsHexString";
      v15 = 1024;
      v16 = 225;
      v17 = 2080;
      v18 = v11;
      v19 = 2080;
      v20 = v6;
      _os_log_impl(&dword_22EEC4000, v9, v10, "%{public}s:%i %s: %s", buf, 0x26u);
    }

    free(v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

CFDataRef NFDataToCFDataCreateOwnership(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 16) + 72) == 0;
    v4 = MEMORY[0x277CBECE8];
    if (!*(*(a1 + 16) + 72))
    {
      v4 = MEMORY[0x277CBED00];
    }

    v5 = *v4;
  }

  else
  {
    v5 = *MEMORY[0x277CBED00];
    v3 = 1;
  }

  result = CFDataCreateWithBytesNoCopy(0, *a1, *(a1 + 8), v5);
  if (!v3)
  {
    if (result)
    {
      *(*(a1 + 16) + 72) = 0;
    }
  }

  return result;
}

void sub_22EEE12D8(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  objc_msgSend_handlePreferencesOrProfileChanged(a2, v4, v5);

  objc_autoreleasePoolPop(v3);
}

id sub_22EEE1424(uint64_t a1, uint64_t a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  v7 = objc_msgSend_UTF8String(v4, v5, v6);
  v10 = objc_msgSend_length(v3, v8, v9);
  v11 = v10;
  if (!v10 || (v10 & 1) != 0)
  {
    v18 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific < 5)
    {
      v20 = off_27DA9DE50[specific];
      if (v20)
      {
        v20(4, "%s:%i String is of invalid length=%ld", "+[NSData(HexString) NF_dataWithHexString:]", 20, v11);
        v18 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v21 = dispatch_get_specific(v18);
      v16 = NFSharedLogGetLogger(v21);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      *buf = 136446722;
      v47 = "+[NSData(HexString) NF_dataWithHexString:]";
      v48 = 1024;
      v49 = 20;
      v50 = 2048;
      v51 = v11;
      v17 = "%{public}s:%i String is of invalid length=%ld";
LABEL_16:
      _os_log_impl(&dword_22EEC4000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x1Cu);
      goto LABEL_33;
    }

LABEL_38:
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  if (*v7 == 48 && v7[1] == 120)
  {
    v11 = v10 - 2;
    if (v10 == 2)
    {
      v12 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      v13 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      if (v13 < 5)
      {
        v14 = off_27DA9DE50[v13];
        if (v14)
        {
          v14(4, "%s:%i String is of invalid length=%ld with 0x prefix", "+[NSData(HexString) NF_dataWithHexString:]", 27, 2);
          v12 = kNFLOG_DISPATCH_SPECIFIC_KEY;
        }

        v15 = dispatch_get_specific(v12);
        v16 = NFSharedLogGetLogger(v15);
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        *buf = 136446722;
        v47 = "+[NSData(HexString) NF_dataWithHexString:]";
        v48 = 1024;
        v49 = 27;
        v50 = 2048;
        v51 = 2;
        v17 = "%{public}s:%i String is of invalid length=%ld with 0x prefix";
        goto LABEL_16;
      }

      goto LABEL_38;
    }

    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = objc_alloc(MEMORY[0x277CBEB28]);
  v25 = objc_msgSend_initWithLength_(v23, v24, v11 >> 1);
  if (!v25)
  {
    v39 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    v40 = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (v40 < 5)
    {
      v41 = off_27DA9DE50[v40];
      if (v41)
      {
        v41(3, "%s:%i Memory allocation request failed.", "+[NSData(HexString) NF_dataWithHexString:]", 36);
        v39 = kNFLOG_DISPATCH_SPECIFIC_KEY;
      }

      v42 = dispatch_get_specific(v39);
      v43 = NFSharedLogGetLogger(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v47 = "+[NSData(HexString) NF_dataWithHexString:]";
        v48 = 1024;
        v49 = 36;
        _os_log_impl(&dword_22EEC4000, v43, OS_LOG_TYPE_ERROR, "%{public}s:%i Memory allocation request failed.", buf, 0x12u);
      }

      v16 = 0;
      goto LABEL_33;
    }

    goto LABEL_38;
  }

  v16 = v25;
  v26 = v25;
  v29 = objc_msgSend_mutableBytes(v26, v27, v28);
  buf[2] = 0;
  v32 = v7[v22];
  if (!v7[v22])
  {
LABEL_26:
    v37 = objc_msgSend_copy(v16, v30, v31);
    goto LABEL_34;
  }

  v33 = v29;
  v34 = &v7[v22 + 2];
  v35 = MEMORY[0x277D85DE0];
  while (1)
  {
    buf[0] = v32;
    v36 = *(v34 - 1);
    buf[1] = *(v34 - 1);
    if ((v32 & 0x80) != 0)
    {
      break;
    }

    v37 = 0;
    if ((*(v35 + 4 * v32 + 60) & 0x10000) == 0 || v36 < 0)
    {
      goto LABEL_34;
    }

    if ((*(v35 + 4 * v36 + 60) & 0x10000) == 0)
    {
      break;
    }

    *v33++ = strtoul(buf, 0, 16);
    v38 = *v34;
    v34 += 2;
    v32 = v38;
    if (!v38)
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  v37 = 0;
LABEL_34:

  v44 = *MEMORY[0x277D85DE8];

  return v37;
}

uint64_t sub_22EEE180C(void *a1, const char *a2, uint64_t a3)
{
  if (!objc_msgSend_length(a1, a2, a3))
  {
    return 1;
  }

  v4 = a1;
  v7 = objc_msgSend_bytes(v4, v5, v6);
  if (!objc_msgSend_length(a1, v8, v9))
  {
    return 1;
  }

  v12 = 0;
  do
  {
    v13 = *(v7 + v12) == 0;
    if (*(v7 + v12))
    {
      break;
    }

    ++v12;
  }

  while (v12 < objc_msgSend_length(a1, v10, v11));
  return v13;
}

uint64_t sub_22EEE188C(void *a1, const char *a2, void *a3)
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_length(a1, a2, a3) >= 9)
  {
    if (a3)
    {
      v5 = objc_alloc(MEMORY[0x277CCA9B8]);
      v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "nfcd");
      v25 = *MEMORY[0x277CCA450];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "Overflow");
      v26[0] = v9;
      v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v26, &v25, 1);
      *a3 = objc_msgSend_initWithDomain_code_userInfo_(v5, v12, v7, 45, v11);
    }

    goto LABEL_8;
  }

  v13 = a1;
  v16 = objc_msgSend_bytes(v13, v14, v15);
  if (!objc_msgSend_length(a1, v17, v18))
  {
LABEL_8:
    v22 = 0;
    goto LABEL_9;
  }

  v21 = 0;
  v22 = 0;
  do
  {
    v22 = 257 * v22 + *(v16 + v21++);
  }

  while (objc_msgSend_length(a1, v19, v20) > v21);
LABEL_9:
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

id sub_22EEE1D68(void *a1, const char *a2, void *a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v9 = objc_msgSend_objectForKey_(a1, v8, v7);
  if (v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    if (specific >= 5)
    {
      __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
    }

    v13 = off_27DA9DE50[specific];
    if (v13)
    {
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName(a2);
      v26 = object_getClass(v9);
      v18 = 43;
      if (!isMetaClass)
      {
        v18 = 45;
      }

      v13(3, "%c[%{public}s %{public}s]:%i %{public}@ Expected %{public}@, got %{public}@", v18, ClassName, Name, 17, v7, a4, v26);
      v11 = kNFLOG_DISPATCH_SPECIFIC_KEY;
    }

    v19 = dispatch_get_specific(v11);
    v20 = NFSharedLogGetLogger(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(a1);
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      *buf = 67110658;
      v28 = v22;
      v29 = 2082;
      v30 = object_getClassName(a1);
      v31 = 2082;
      v32 = sel_getName(a2);
      v33 = 1024;
      v34 = 17;
      v35 = 2114;
      v36 = v7;
      v37 = 2114;
      v38 = a4;
      v39 = 2114;
      v40 = object_getClass(v9);
      v23 = v40;
      _os_log_impl(&dword_22EEC4000, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@ Expected %{public}@, got %{public}@", buf, 0x40u);
    }

    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v10;
}

id sub_22EEE1FD4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_NF_objectForKey_expectedClass_(a1, v6, v4, v5);

  return v7;
}

id sub_22EEE2044(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_NF_objectForKey_expectedClass_(a1, v6, v4, v5);

  return v7;
}

id sub_22EEE20B4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_NF_objectForKey_expectedClass_(a1, v6, v4, v5);

  return v7;
}

id sub_22EEE2124(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_NF_objectForKey_expectedClass_(a1, v6, v4, v5);

  return v7;
}

id sub_22EEE2194(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_NF_objectForKey_expectedClass_(a1, v6, v4, v5);

  return v7;
}

id sub_22EEE2204(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = objc_msgSend_NF_objectForKey_expectedClass_(a1, v6, v4, v5);

  return v7;
}

uint64_t NFSetThreadPriority(int a1)
{
  v5 = 0;
  v4 = 0;
  v2 = pthread_self();
  pthread_getschedparam(v2, &v4, &v5);
  v5.sched_priority = a1;
  return pthread_setschedparam(v2, v4, &v5);
}

uint64_t NFGetThreadPriority()
{
  v3 = 0;
  v2 = 0;
  v0 = pthread_self();
  pthread_getschedparam(v0, &v2, &v3);
  return v3.sched_priority;
}

uint64_t NFGetRootQueue()
{
  pthread_mutex_lock(&stru_280AEEE48);
  v0 = qword_280AEEFA0;
  pthread_mutex_unlock(&stru_280AEEE48);
  return v0;
}

NSObject *NFGetOrCreateRootQueue(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&stru_280AEEE48);
  v3 = qword_280AEEFA0;
  if (!qword_280AEEFA0)
  {
    memset(&v7, 0, sizeof(v7));
    pthread_attr_init(&v7);
    v6 = 0;
    pthread_attr_getschedparam(&v7, &v6);
    v6.sched_priority = a2;
    pthread_attr_setschedpolicy(&v7, 2);
    pthread_attr_setschedparam(&v7, &v6);
    pthread_attr_setinheritsched(&v7, 2);
    v3 = dispatch_pthread_root_queue_create();
    pthread_attr_destroy(&v7);
    dispatch_set_finalizer_f(v3, sub_22EEE5228);
    qword_280AEEFA0 = v3;
  }

  pthread_mutex_unlock(&stru_280AEEE48);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

NSObject *NFCreateWorkLoop(const char *a1)
{
  inactive = dispatch_workloop_create_inactive(a1);
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);
  return inactive;
}

void sub_22EEE5228()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  specific = dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  if (specific >= 5)
  {
    __assert_rtn("NFLogGetLogger", "NFSharedLog.c", 230, "category < NFLogCategoryMax");
  }

  v2 = off_27DA9DE50[specific];
  if (v2)
  {
    v2(3, "%s:%i Dispatch queue has been destroyed !", "_NFRootQueueFinalizer", 43);
    v0 = kNFLOG_DISPATCH_SPECIFIC_KEY;
  }

  v3 = dispatch_get_specific(v0);
  Logger = NFSharedLogGetLogger(v3);
  if (os_log_type_enabled(Logger, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446466;
    v7 = "_NFRootQueueFinalizer";
    v8 = 1024;
    v9 = 43;
    _os_log_impl(&dword_22EEC4000, Logger, OS_LOG_TYPE_ERROR, "%{public}s:%i Dispatch queue has been destroyed !", buf, 0x12u);
  }

  NFSimulateCrash(65261, "Root queue has been destroyed");
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22EEE6694(double a1)
{
  if (!atomic_load(&unk_27DA9DA68))
  {
    sub_22EEE66E4(a1);
  }

  return MEMORY[0x28214FD78]();
}

double sub_22EEE66C0(double result)
{
  if (!atomic_load(&unk_27DA9DA68))
  {
    return sub_22EEE66E4(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_22EEE66E4(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 0);
  atomic_store(1u, &unk_27DA9DA68);
  return a1;
}