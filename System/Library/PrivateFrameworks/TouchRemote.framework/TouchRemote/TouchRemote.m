void TRLogInitialize()
{
  v13[4] = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == -1)
  {
    v0 = MEMORY[0x277CCACA8];
    v1 = NSHomeDirectoryForUser(&cfstr_Mobile.isa);
    v13[0] = v1;
    v13[1] = @"Library";
    v13[2] = @"Preferences";
    v13[3] = @"com.apple.TouchRemote.plist";
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
    v3 = [v0 pathWithComponents:v2];

    v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
    LODWORD(v2) = [v4 isReadableFileAtPath:v3];

    if (v2)
    {
      _TRLogEnabled = CFPreferencesGetAppBooleanValue(@"DebugLog", @"com.apple.TouchRemote", 0);
    }
  }

  if (_TRLogVerboseEnabled == -1)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = NSHomeDirectoryForUser(&cfstr_Mobile.isa);
    v12[0] = v6;
    v12[1] = @"Library";
    v12[2] = @"Preferences";
    v12[3] = @"com.apple.TouchRemote.plist";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
    v8 = [v5 pathWithComponents:v7];

    v9 = objc_alloc_init(MEMORY[0x277CCAA00]);
    LODWORD(v7) = [v9 isReadableFileAtPath:v8];

    if (v7)
    {
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"VerboseDebugLog", @"com.apple.TouchRemote", 0);
    }

    else
    {
      AppBooleanValue = 0;
    }

    _TRLogVerboseEnabled = AppBooleanValue;
  }

  v11 = *MEMORY[0x277D85DE8];
}

id TRLogHandle()
{
  if (TRLogHandle_once != -1)
  {
    TRLogHandle_cold_1();
  }

  v1 = TRLogHandle_handle;

  return v1;
}

uint64_t __TRLogHandle_block_invoke()
{
  TRLogHandle_handle = os_log_create("com.apple.TouchRemote", "core");

  return MEMORY[0x2821F96F8]();
}

void sub_26F2A4260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getGKLocalPlayerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!GameCenterFoundationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __GameCenterFoundationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279DCEB60;
    v7 = 0;
    GameCenterFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (GameCenterFoundationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("GKLocalPlayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getGKLocalPlayerClass_block_invoke_cold_1();
  }

  getGKLocalPlayerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __GameCenterFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  GameCenterFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26F2A5320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26F2A5F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26F2A7474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26F2A9BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__CFString *TRStringFromSetupAccountType(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"None";
  }

  else
  {
    return off_279DCEDD0[a1 - 1];
  }
}

__CFString *TRStringFromDeviceSetupError(uint64_t a1)
{
  if ((a1 + 8110) > 9)
  {
    return @"TRDeviceSetupErrorUnknown";
  }

  else
  {
    return off_279DCEDF0[a1 + 8110];
  }
}

void sub_26F2AC17C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26F2AC948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F2ACDC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_26F2AD344(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26F2AD5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F2AD85C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26F2ADA7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_26F2ADCD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F2AE46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F2AEE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initAKAppleIDAuthenticationInAppContext()
{
  if (AuthKitUILibrary_sOnce != -1)
  {
    initAKAppleIDAuthenticationInAppContext_cold_1();
  }

  result = objc_getClass("AKAppleIDAuthenticationInAppContext");
  classAKAppleIDAuthenticationInAppContext = result;
  getAKAppleIDAuthenticationInAppContextClass = AKAppleIDAuthenticationInAppContextFunction;
  return result;
}

void *__AuthKitUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AuthKitUI.framework/AuthKitUI", 2);
  AuthKitUILibrary_sLib = result;
  return result;
}

id _StringFromAccountServices(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAB68] string];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = StringFromTRAccountService([*(*(&v11 + 1) + 8 * i) unsignedIntegerValue]);
        [v2 appendString:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_26F2B1278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F2B2010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F2B2C74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_26F2B49B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL TRGetCurrentWiFiNetwork(void *a1, void *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  v5 = WiFiManagerClientCreate();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = WiFiManagerClientCopyDevices();
  if ([v7 count])
  {
    v8 = [v7 objectAtIndex:0];
    v9 = WiFiDeviceClientCopyCurrentNetwork();
    if (v9)
    {
      v10 = v9;
      v11 = [WiFiNetworkGetSSID() copy];
      v12 = v11;
      if (a1)
      {
        v13 = v11;
        *a1 = v12;
      }

      v14 = WiFiNetworkCopyPassword();
      v15 = v14;
      if (a2)
      {
        v16 = v14;
        *a2 = v15;
      }

      v17 = [v12 length] != 0;
      CFRelease(v10);
    }

    else
    {
      v17 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v17 = 0;
  }

  CFRelease(v6);

  return v17;
}

SCPreferencesRef TRGetNetworkConfigurationForIPv4(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  result = SCPreferencesCreateWithAuthorization(*MEMORY[0x277CBECE8], @"com.apple.TouchRemote", 0, 0);
  if (!result)
  {
    goto LABEL_30;
  }

  v3 = result;
  v4 = SCNetworkSetCopyCurrent(result);
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = v4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = SCNetworkSetCopyServices(v4);
  v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v22 = a1;
    v9 = *v24;
    v10 = *MEMORY[0x277CE16D8];
    v11 = *MEMORY[0x277CE16E8];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        Interface = SCNetworkServiceGetInterface(v13);
        if (SCNetworkInterfaceGetBSDName(Interface))
        {
          InterfaceType = SCNetworkInterfaceGetInterfaceType(Interface);
          if (CFEqual(InterfaceType, v10))
          {
            v16 = SCNetworkServiceCopyProtocol(v13, v11);
            if (v16)
            {
              v17 = v16;
              v18 = CFRetain(v13);
              goto LABEL_15;
            }
          }
        }
      }

      v8 = [(__CFArray *)v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v17 = 0;
    v18 = 0;
LABEL_15:
    a1 = v22;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  CFRelease(v5);
  if (v17 && v18)
  {
    v19 = [(__CFDictionary *)SCNetworkProtocolGetConfiguration(v17) copy];
    CFRelease(v18);
    goto LABEL_24;
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (!v17)
  {
LABEL_28:
    CFRelease(v3);
    goto LABEL_29;
  }

  v19 = 0;
LABEL_24:
  CFRelease(v17);
  CFRelease(v3);
  if (!v19)
  {
LABEL_29:
    result = 0;
    goto LABEL_30;
  }

  if (a1)
  {
    v20 = v19;
    *a1 = v19;
  }

  result = 1;
LABEL_30:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TRCanPerformSetupGetConfig(BOOL *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = 0;
  v6 = TRGetCurrentWiFiNetwork(&v21, &v20);
  v7 = v21;
  v8 = v20;
  if (v6)
  {
    v9 = [v7 length];
    if (v9)
    {
      if (a1)
      {
        *a1 = v9 != 0;
      }

      if (a2)
      {
        v10 = v7;
        *a2 = v7;
      }

      if (a3)
      {
        v11 = v8;
        *a3 = v8;
      }

      v19 = 0;
      v12 = TRGetNetworkConfigurationForIPv4(&v19);
      v13 = v19;
      v14 = v13;
      if (!v12)
      {
        goto LABEL_22;
      }

      v15 = [v13 objectForKey:*MEMORY[0x277CE1730]];
      if ([v15 isEqualToString:*MEMORY[0x277CE1810]])
      {

        v12 = 1;
LABEL_22:

        goto LABEL_23;
      }

      if (_TRLogEnabled == 1)
      {
        v16 = TRLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v23 = "BOOL TRCanPerformSetupGetConfig(BOOL *, NSString *__autoreleasing *, NSString *__autoreleasing *)";
          v24 = 2112;
          v25 = v15;
          _os_log_impl(&dword_26F2A2000, v16, OS_LOG_TYPE_DEFAULT, "%s Unsupported network config method: %@", buf, 0x16u);
        }
      }

LABEL_21:
      v12 = 0;
      goto LABEL_22;
    }
  }

  if (_TRLogEnabled == 1)
  {
    v14 = TRLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F2A2000, v14, OS_LOG_TYPE_DEFAULT, "No Wi-Fi network", buf, 2u);
    }

    goto LABEL_21;
  }

  v12 = 0;
LABEL_23:

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_26F2B89E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _TRSetupAccountTypeFromProtocolString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"it"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"ic"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"hs"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"gc"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id TRCopyDecompressedGZipDataForData()
{
  v0 = MEMORY[0x28223BE20]();
  v8 = *MEMORY[0x277D85DE8];
  memset(&strm.avail_in, 0, 104);
  strm.avail_in = [v0 length];
  strm.next_in = [v0 bytes];
  v1 = 0;
  if (!inflateInit2_(&strm, 31, "1.2.12", 112))
  {
    v1 = objc_alloc_init(MEMORY[0x277CBEB28]);
    while (1)
    {
      strm.avail_out = 0x4000;
      strm.next_out = v7;
      v2 = inflate(&strm, 0);
      if (v2 > 1)
      {
        break;
      }

      v3 = v2;
      if (strm.avail_out != 0x4000)
      {
        [v1 appendBytes:v7 length:0x4000 - strm.avail_out];
      }

      if (v3)
      {
        inflateEnd(&strm);
        goto LABEL_9;
      }
    }

    inflateEnd(&strm);

    v1 = 0;
  }

LABEL_9:
  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t TRCopyGzippedDataForData(void *a1)
{
  v2 = [a1 bytes];
  v3 = [a1 length];
  v4 = 0;
  if (v2)
  {
    v5 = v3;
    if (v3)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v3];
      memset(&v10.avail_in, 0, 104);
      v10.avail_in = v5;
      v10.avail_out = v5;
      v10.next_out = [v6 mutableBytes];
      if (v6 && !deflateInit2_(&v10, -1, 8, 31, 8, 0, "1.2.12", 112) && (v7 = deflate(&v10, 4), v8 = deflateEnd(&v10), v7 == 1))
      {
        v4 = 0;
        if (!v8 && v5 == v10.total_in)
        {
          [v6 setLength:v10.total_out];
          v4 = [v6 copy];
        }
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

void sub_26F2BB9E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_26F2BDE1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26F2C0250(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_26F2C06EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F2C1534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initAAUIProxiedTermsRemoteUI()
{
  if (AppleAccountUILibrary_sOnce != -1)
  {
    initAAUIProxiedTermsRemoteUI_cold_1();
  }

  result = objc_getClass("AAUIProxiedTermsRemoteUI");
  classAAUIProxiedTermsRemoteUI = result;
  getAAUIProxiedTermsRemoteUIClass = AAUIProxiedTermsRemoteUIFunction;
  return result;
}

void *__AppleAccountUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleAccountUI.framework/AppleAccountUI", 2);
  AppleAccountUILibrary_sLib = result;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_26F2C49A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *StringFromTRAccountService(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%lu]", a1];
  }

  else
  {
    v2 = off_279DCF7E8[a1 - 1];
  }

  return v2;
}

void sub_26F2C953C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F2CB170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F2CB7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26F2CC694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void TRMetricsLog(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "MetricEvent '%@' : %@\n", &v7, 0x16u);
    }
  }

  softLinkAnalyticsSendEvent(v3, v4);

  v6 = *MEMORY[0x277D85DE8];
}

void initAnalyticsSendEvent(void *a1, void *a2)
{
  v3 = CoreAnalyticsLibrary_sOnce;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    initAnalyticsSendEvent_cold_1();
  }

  softLinkAnalyticsSendEvent = dlsym(CoreAnalyticsLibrary_sLib, "AnalyticsSendEvent");
  (softLinkAnalyticsSendEvent)(v5, v4);
}

void *__CoreAnalyticsLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 2);
  CoreAnalyticsLibrary_sLib = result;
  return result;
}