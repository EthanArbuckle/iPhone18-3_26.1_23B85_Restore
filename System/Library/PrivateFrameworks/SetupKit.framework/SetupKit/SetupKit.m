uint64_t getEnumTagSinglePayload for SKPlaceholder(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SKPlaceholder(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_265B04E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265B06EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  (*(a12 + 16))();
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__85(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265B074B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  (*(v10 + 16))(v10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initFLFollowUpAction()
{
  if (CoreFollowUpLibrary_sOnce != -1)
  {
    dispatch_once(&CoreFollowUpLibrary_sOnce, &__block_literal_global_342);
  }

  result = objc_getClass("FLFollowUpAction");
  classFLFollowUpAction = result;
  getFLFollowUpActionClass = FLFollowUpActionFunction;
  return result;
}

void *__CoreFollowUpLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreFollowUp.framework/CoreFollowUp", 2);
  CoreFollowUpLibrary_sLib = result;
  return result;
}

id initValFLGroupIdentifierDevice()
{
  if (softLinkOnceFLGroupIdentifierDevice != -1)
  {
    dispatch_once(&softLinkOnceFLGroupIdentifierDevice, &__block_literal_global_360);
  }

  v1 = constantValFLGroupIdentifierDevice;

  return v1;
}

void __initValFLGroupIdentifierDevice_block_invoke()
{
  if (CoreFollowUpLibrary_sOnce != -1)
  {
    dispatch_once(&CoreFollowUpLibrary_sOnce, &__block_literal_global_342);
  }

  v0 = dlsym(CoreFollowUpLibrary_sLib, "FLGroupIdentifierDevice");
  if (v0)
  {
    objc_storeStrong(&constantValFLGroupIdentifierDevice, *v0);
  }

  getFLGroupIdentifierDevice = FLGroupIdentifierDeviceFunction;
}

Class initFLFollowUpItem()
{
  if (CoreFollowUpLibrary_sOnce != -1)
  {
    dispatch_once(&CoreFollowUpLibrary_sOnce, &__block_literal_global_342);
  }

  result = objc_getClass("FLFollowUpItem");
  classFLFollowUpItem = result;
  getFLFollowUpItemClass = FLFollowUpItemFunction;
  return result;
}

Class initFLFollowUpController()
{
  if (CoreFollowUpLibrary_sOnce != -1)
  {
    dispatch_once(&CoreFollowUpLibrary_sOnce, &__block_literal_global_342);
  }

  result = objc_getClass("FLFollowUpController");
  classFLFollowUpController = result;
  getFLFollowUpControllerClass = FLFollowUpControllerFunction;
  return result;
}

void sub_265B084CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  (*(v10 + 16))(v10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _captiveNetworkProberCallback(void *a1, CFTypeRef cf, int a3)
{
  CFRelease(cf);
  v5 = [a1 server];
  v6 = [v5 dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___captiveNetworkProberCallback_block_invoke;
  block[3] = &unk_279BB7B08;
  v8 = a3;
  block[4] = v5;
  block[5] = a1;
  dispatch_async(v6, block);
}

void ___captiveNetworkProberCallback_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) responseHandler];
  [v2 _captiveNetworkProbeResult:v1 responseHandler:v3];
}

void sub_265B08B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  (*(v10 + 16))(v10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _captiveNetworkLoginCallback(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = [a1 server];
  v7 = [v6 dispatchQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___captiveNetworkLoginCallback_block_invoke;
  v9[3] = &unk_279BB7A78;
  v9[4] = v6;
  v9[5] = v5;
  v10 = a3;
  v9[6] = a1;
  dispatch_async(v7, v9);

  return 1;
}

void ___captiveNetworkLoginCallback_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = [*(a1 + 48) responseHandler];
  [v1 _captiveNetworkLoginInfo:v2 cookie:v3 responseHandler:v4];
}

void sub_265B0C2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__243(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265B0C618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265B0E328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  (*(a17 + 16))();
  _Block_object_dispose((v17 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_265B0EA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  (*(a14 + 16))();
  _Block_object_dispose((v14 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_265B0F224(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_265B11514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265B12158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265B13F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265B14E3C(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__430(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265B15530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265B180B4(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__596(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265B1BF80(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__901(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id logger()
{
  if (sCUOSLogCreateOnce_logger != -1)
  {
    dispatch_once(&sCUOSLogCreateOnce_logger, &__block_literal_global_44);
  }

  v1 = sCUOSLogHandle_logger;

  return v1;
}

uint64_t __logger_block_invoke()
{
  v0 = os_log_create("com.apple.SetupKit", "SKSetupOSUpdateServer");
  v1 = sCUOSLogHandle_logger;
  sCUOSLogHandle_logger = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __Block_byref_object_copy__1505(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265B24B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SKFrameworkBundle()
{
  if (SKFrameworkBundle_sOnce != -1)
  {
    dispatch_once(&SKFrameworkBundle_sOnce, &__block_literal_global_1645);
  }

  v1 = SKFrameworkBundle_sBundle;

  return v1;
}

void __SKFrameworkBundle_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SetupKit"];
  v1 = SKFrameworkBundle_sBundle;
  SKFrameworkBundle_sBundle = v0;

  if (!SKFrameworkBundle_sBundle)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/PrivateFrameworks/SetupKit.framework" isDirectory:1];
    v3 = v2;
    if (v2)
    {
      v6 = v2;
      v4 = [MEMORY[0x277CCA8D8] bundleWithURL:v2];
      v5 = SKFrameworkBundle_sBundle;
      SKFrameworkBundle_sBundle = v4;

      v3 = v6;
    }

    MEMORY[0x2821F96F8](v2, v3);
  }
}

id SKLocalizedString(void *a1)
{
  v1 = a1;
  v2 = SKFrameworkBundle();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizations];
    v5 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x277CBF008], @"mobile", *MEMORY[0x277CBF010]);
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x277CBEAF8] preferredLanguages];
    }

    v8 = v7;

    if (v4)
    {
      if (v8)
      {
        v9 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:v4 forPreferences:v8];
        v10 = [v9 firstObject];

        if (v10)
        {
          v11 = [v3 pathForResource:@"Localizable" ofType:@"strings" inDirectory:@"." forLocalization:v10];
          if (v11)
          {
            v12 = v11;
            v13 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v11];
            if (!CUIsGreenTeaDevice() || ([v1 stringByAppendingString:@"_GT"], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKeyedSubscript:", v14), v15 = objc_claimAutoreleasedReturnValue(), v14, !v15))
            {
              v15 = [v13 objectForKeyedSubscript:v1];
            }

            if (v15)
            {
              goto LABEL_20;
            }
          }

          else
          {
          }
        }
      }
    }

    if (CUIsGreenTeaDevice())
    {
      v16 = [v1 stringByAppendingString:@"_GT"];
      v15 = [v3 localizedStringForKey:v16 value:@"_GT" table:@"Localizable"];
      if ([v15 isEqual:@"_GT"])
      {
      }

      else
      {

        if (v15)
        {
LABEL_20:

          goto LABEL_21;
        }
      }
    }

    v15 = [v3 localizedStringForKey:v1 value:&stru_2877689A8 table:@"Localizable"];
    goto LABEL_20;
  }

  v15 = v1;
LABEL_21:

  return v15;
}

void sub_265B259EC(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1748(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265B260F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265B28810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  (*(a13 + 16))();
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2171(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __logger_block_invoke_2351()
{
  v0 = os_log_create("com.apple.SetupKit", "SKSetupOSUpdateClient");
  v1 = sCUOSLogHandle_logger_2332;
  sCUOSLogHandle_logger_2332 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}