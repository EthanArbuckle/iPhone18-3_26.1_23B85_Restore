void sub_1A96B3258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A96B3978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __SFAppleIDClientCopyCertificate_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = NSErrorToOSStatus();
  (*(v4 + 16))(v4, a2, v5);
  v6 = *(a1 + 32);

  return [v6 invalidate];
}

uint64_t __SFAppleIDClientCopyIdentity_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = NSErrorToOSStatus();
  (*(v4 + 16))(v4, a2, v5);
  v6 = *(a1 + 32);

  return [v6 invalidate];
}

uint64_t __SFAppleIDClientCopyMyAppleID_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [a2 appleID];
  v8 = NSErrorToOSStatus();

  (*(v5 + 16))(v5, v7, v8);
  v9 = *(a1 + 32);

  return [v9 invalidate];
}

uint64_t OUTLINED_FUNCTION_6_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    a2 = result;
  }

  *v2 = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_7()
{

  return DebugGetErrorString();
}

void OUTLINED_FUNCTION_10(uint64_t a1)
{
  v3 = *(*(v1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = a1;
}

void OUTLINED_FUNCTION_13(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  a13 = a1;
  a14 = v15;

  dispatch_async(v14, &a9);
}

void OUTLINED_FUNCTION_18(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  a13 = a1;
  a14 = -6762;

  dispatch_async(v14, &a9);
}

uint64_t OUTLINED_FUNCTION_19()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

uint64_t OUTLINED_FUNCTION_20(void *a1, const char *a2)
{

  return [a1 setDispatchQueue:v2];
}

id OUTLINED_FUNCTION_21(uint64_t a1, void *a2)
{

  return a2;
}

void sub_1A96B6670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  objc_sync_exit(v11);
  _Unwind_Resume(a1);
}

void sub_1A96B79A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 56));
  _Unwind_Resume(a1);
}

Class initACAccountStore()
{
  if (AccountsLibrary_sOnce != -1)
  {
    initACAccountStore_cold_1();
  }

  result = objc_getClass("ACAccountStore");
  classACAccountStore = result;
  getACAccountStoreClass = ACAccountStoreFunction;
  return result;
}

void *__AccountsLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 2);
  AccountsLibrary_sLib = result;
  return result;
}

Class initTRSetupCompanionAuthenticationRequest()
{
  if (TouchRemoteLibrary_sOnce != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1();
  }

  result = objc_getClass("TRSetupCompanionAuthenticationRequest");
  classTRSetupCompanionAuthenticationRequest = result;
  getTRSetupCompanionAuthenticationRequestClass = TRSetupCompanionAuthenticationRequestFunction;
  return result;
}

void *__TouchRemoteLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/TouchRemote.framework/TouchRemote", 2);
  TouchRemoteLibrary_sLib = result;
  return result;
}

Class initTRSetupProxyDeviceRequest()
{
  if (TouchRemoteLibrary_sOnce != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1();
  }

  result = objc_getClass("TRSetupProxyDeviceRequest");
  classTRSetupProxyDeviceRequest = result;
  getTRSetupProxyDeviceRequestClass = TRSetupProxyDeviceRequestFunction;
  return result;
}

Class initTRSetupProxyAuthenticationRequest()
{
  if (TouchRemoteLibrary_sOnce != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1();
  }

  result = objc_getClass("TRSetupProxyAuthenticationRequest");
  classTRSetupProxyAuthenticationRequest = result;
  getTRSetupProxyAuthenticationRequestClass = TRSetupProxyAuthenticationRequestFunction;
  return result;
}

Class initHMDeviceSetupOperationHandler()
{
  if (HomeKitLibrary_sOnce != -1)
  {
    initHMDeviceSetupOperationHandler_cold_1();
  }

  result = objc_getClass("HMDeviceSetupOperationHandler");
  classHMDeviceSetupOperationHandler = result;
  getHMDeviceSetupOperationHandlerClass = HMDeviceSetupOperationHandlerFunction;
  return result;
}

void *__HomeKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib = result;
  return result;
}

Class initTRAnisetteDataProvider()
{
  if (TouchRemoteLibrary_sOnce != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1();
  }

  result = objc_getClass("TRAnisetteDataProvider");
  classTRAnisetteDataProvider = result;
  getTRAnisetteDataProviderClass = TRAnisetteDataProviderFunction;
  return result;
}

Class initTRSetupAuthenticationResponse()
{
  if (TouchRemoteLibrary_sOnce != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1();
  }

  result = objc_getClass("TRSetupAuthenticationResponse");
  classTRSetupAuthenticationResponse = result;
  getTRSetupAuthenticationResponseClass = TRSetupAuthenticationResponseFunction;
  return result;
}

Class initAKDevice()
{
  if (AuthKitLibrary_sOnce != -1)
  {
    initAKDevice_cold_1();
  }

  result = objc_getClass("AKDevice");
  classAKDevice = result;
  getAKDeviceClass = AKDeviceFunction;
  return result;
}

void *__AuthKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AuthKit.framework/AuthKit", 2);
  AuthKitLibrary_sLib = result;
  return result;
}

Class initTRSetupProxyDeviceResponse()
{
  if (TouchRemoteLibrary_sOnce != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1();
  }

  result = objc_getClass("TRSetupProxyDeviceResponse");
  classTRSetupProxyDeviceResponse = result;
  getTRSetupProxyDeviceResponseClass = TRSetupProxyDeviceResponseFunction;
  return result;
}

Class initAKAppleIDAuthenticationContext()
{
  if (AuthKitLibrary_sOnce != -1)
  {
    initAKDevice_cold_1();
  }

  result = objc_getClass("AKAppleIDAuthenticationContext");
  classAKAppleIDAuthenticationContext = result;
  getAKAppleIDAuthenticationContextClass = AKAppleIDAuthenticationContextFunction;
  return result;
}

Class initAKAppleIDAuthenticationController()
{
  if (AuthKitLibrary_sOnce != -1)
  {
    initAKDevice_cold_1();
  }

  result = objc_getClass("AKAppleIDAuthenticationController");
  classAKAppleIDAuthenticationController = result;
  getAKAppleIDAuthenticationControllerClass = AKAppleIDAuthenticationControllerFunction;
  return result;
}

id initValSSServerErrorDomain()
{
  if (softLinkOnceSSServerErrorDomain != -1)
  {
    initValSSServerErrorDomain_cold_1();
  }

  v1 = constantValSSServerErrorDomain;

  return v1;
}

void __initValSSServerErrorDomain_block_invoke()
{
  if (StoreServicesLibrary_sOnce != -1)
  {
    __initValSSServerErrorDomain_block_invoke_cold_1();
  }

  v0 = dlsym(StoreServicesLibrary_sLib, "SSServerErrorDomain");
  if (v0)
  {
    objc_storeStrong(&constantValSSServerErrorDomain, *v0);
  }

  getSSServerErrorDomain = SSServerErrorDomainFunction;
}

void *__StoreServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/StoreServices.framework/StoreServices", 2);
  StoreServicesLibrary_sLib = result;
  return result;
}

id initValAKAuthenticationAlternateDSIDKey()
{
  if (softLinkOnceAKAuthenticationAlternateDSIDKey != -1)
  {
    initValAKAuthenticationAlternateDSIDKey_cold_1();
  }

  v1 = constantValAKAuthenticationAlternateDSIDKey;

  return v1;
}

void __initValAKAuthenticationAlternateDSIDKey_block_invoke()
{
  if (AuthKitLibrary_sOnce != -1)
  {
    initAKDevice_cold_1();
  }

  v0 = dlsym(AuthKitLibrary_sLib, "AKAuthenticationAlternateDSIDKey");
  if (v0)
  {
    objc_storeStrong(&constantValAKAuthenticationAlternateDSIDKey, *v0);
  }

  getAKAuthenticationAlternateDSIDKey = AKAuthenticationAlternateDSIDKeyFunction;
}

id initValAKAuthenticationUsernameKey()
{
  if (softLinkOnceAKAuthenticationUsernameKey != -1)
  {
    initValAKAuthenticationUsernameKey_cold_1();
  }

  v1 = constantValAKAuthenticationUsernameKey;

  return v1;
}

void __initValAKAuthenticationUsernameKey_block_invoke()
{
  if (AuthKitLibrary_sOnce != -1)
  {
    initAKDevice_cold_1();
  }

  v0 = dlsym(AuthKitLibrary_sLib, "AKAuthenticationUsernameKey");
  if (v0)
  {
    objc_storeStrong(&constantValAKAuthenticationUsernameKey, *v0);
  }

  getAKAuthenticationUsernameKey = AKAuthenticationUsernameKeyFunction;
}

id initValAASignInErrorDomain()
{
  if (softLinkOnceAASignInErrorDomain != -1)
  {
    initValAASignInErrorDomain_cold_1();
  }

  v1 = constantValAASignInErrorDomain;

  return v1;
}

void __initValAASignInErrorDomain_block_invoke()
{
  if (AppleAccountLibrary_sOnce != -1)
  {
    __initValAASignInErrorDomain_block_invoke_cold_1();
  }

  v0 = dlsym(AppleAccountLibrary_sLib, "AASignInErrorDomain");
  if (v0)
  {
    objc_storeStrong(&constantValAASignInErrorDomain, *v0);
  }

  getAASignInErrorDomain = AASignInErrorDomainFunction;
}

void *__AppleAccountLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleAccount.framework/AppleAccount", 2);
  AppleAccountLibrary_sLib = result;
  return result;
}

id initValAKAuthenticationPasswordKey()
{
  if (softLinkOnceAKAuthenticationPasswordKey != -1)
  {
    initValAKAuthenticationPasswordKey_cold_1();
  }

  v1 = constantValAKAuthenticationPasswordKey;

  return v1;
}

void __initValAKAuthenticationPasswordKey_block_invoke()
{
  if (AuthKitLibrary_sOnce != -1)
  {
    initAKDevice_cold_1();
  }

  v0 = dlsym(AuthKitLibrary_sLib, "AKAuthenticationPasswordKey");
  if (v0)
  {
    objc_storeStrong(&constantValAKAuthenticationPasswordKey, *v0);
  }

  getAKAuthenticationPasswordKey = AKAuthenticationPasswordKeyFunction;
}

Class initSSMutableAuthenticationContext()
{
  if (StoreServicesLibrary_sOnce != -1)
  {
    __initValSSServerErrorDomain_block_invoke_cold_1();
  }

  result = objc_getClass("SSMutableAuthenticationContext");
  classSSMutableAuthenticationContext = result;
  getSSMutableAuthenticationContextClass = SSMutableAuthenticationContextFunction;
  return result;
}

Class initSSAccountStore()
{
  if (StoreServicesLibrary_sOnce != -1)
  {
    __initValSSServerErrorDomain_block_invoke_cold_1();
  }

  result = objc_getClass("SSAccountStore");
  classSSAccountStore = result;
  getSSAccountStoreClass = SSAccountStoreFunction;
  return result;
}

Class initSSAuthenticateRequest()
{
  if (StoreServicesLibrary_sOnce != -1)
  {
    __initValSSServerErrorDomain_block_invoke_cold_1();
  }

  result = objc_getClass("SSAuthenticateRequest");
  classSSAuthenticateRequest = result;
  getSSAuthenticateRequestClass = SSAuthenticateRequestFunction;
  return result;
}

id SFAirDropTransferTypesToString(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = v2;
  if ((a1 & 2) != 0)
  {
    [v2 addObject:@"Unclassified"];
    if ((a1 & 0x20) == 0)
    {
LABEL_3:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((a1 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"Files"];
  if ((a1 & 0x40) == 0)
  {
LABEL_4:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 addObject:@"CalendarEvents"];
  if ((a1 & 0x80) == 0)
  {
LABEL_5:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 addObject:@"Contacts"];
  if ((a1 & 0x100) == 0)
  {
LABEL_6:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 addObject:@"Notes"];
  if ((a1 & 0x200) == 0)
  {
LABEL_7:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 addObject:@"PhotosAndVideos"];
  if ((a1 & 0x10000) == 0)
  {
LABEL_8:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 addObject:@"PlaygroundItems"];
  if ((a1 & 0x400) == 0)
  {
LABEL_9:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 addObject:@"Profiles"];
  if ((a1 & 0x800) == 0)
  {
LABEL_10:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 addObject:@"VoiceMails"];
  if ((a1 & 0x1000) == 0)
  {
LABEL_11:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 addObject:@"VoiceMemos"];
  if ((a1 & 0x2000) == 0)
  {
LABEL_12:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 addObject:@"WalletItems"];
  if ((a1 & 0x4000) == 0)
  {
LABEL_13:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 addObject:@"PDFs"];
  if ((a1 & 0x40000) == 0)
  {
LABEL_14:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 addObject:@"Credentials"];
  if ((a1 & 0x1000000) == 0)
  {
LABEL_15:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 addObject:@"GenericFiles"];
  if ((a1 & 0x2000000) == 0)
  {
LABEL_16:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 addObject:@"Links"];
  if ((a1 & 0x4000000) == 0)
  {
LABEL_17:
    if ((a1 & 0x8000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 addObject:@"AppLinks"];
  if ((a1 & 0x8000000) == 0)
  {
LABEL_18:
    if ((a1 & 0x10000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 addObject:@"FindMyFriendsLinks"];
  if ((a1 & 0x10000000) == 0)
  {
LABEL_19:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 addObject:@"iWorkLinks"];
  if ((a1 & 0x20000000) == 0)
  {
LABEL_20:
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 addObject:@"KeynoteLiveLinks"];
  if ((a1 & 0x40000000) == 0)
  {
LABEL_21:
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 addObject:@"SharediCloudDocumentsLinks"];
  if ((a1 & 0x80000000) == 0)
  {
LABEL_22:
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 addObject:@"MapsLinks"];
  if ((a1 & 0x100000000) == 0)
  {
LABEL_23:
    if ((a1 & 0x200000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v3 addObject:@"AppStoreLinks"];
  if ((a1 & 0x200000000) == 0)
  {
LABEL_24:
    if ((a1 & 0x400000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v3 addObject:@"PhoneLinks"];
  if ((a1 & 0x400000000) == 0)
  {
LABEL_25:
    if ((a1 & 0x800000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v3 addObject:@"BooksLinks"];
  if ((a1 & 0x800000000) == 0)
  {
LABEL_26:
    if ((a1 & 0x1000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v3 addObject:@"iTunesULinks"];
  if ((a1 & 0x1000000000) == 0)
  {
LABEL_27:
    if ((a1 & 0x2000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v3 addObject:@"iTunesStoreLinks"];
  if ((a1 & 0x2000000000) == 0)
  {
LABEL_28:
    if ((a1 & 0x4000000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v3 addObject:@"iLifeLinks"];
  if ((a1 & 0x4000000000) == 0)
  {
LABEL_29:
    if ((a1 & 0x10000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  [v3 addObject:@"PodcastsLinks"];
  if ((a1 & 0x10000000000) == 0)
  {
LABEL_30:
    if ((a1 & 0x8000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_63:
  [v3 addObject:@"NewsLinks"];
  if ((a1 & 0x8000000000) != 0)
  {
LABEL_31:
    [v3 addObject:@"WebLinks"];
  }

LABEL_32:
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

id get_EXQueryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_EXQueryClass_softClass;
  v7 = get_EXQueryClass_softClass;
  if (!get_EXQueryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_EXQueryClass_block_invoke;
    v3[3] = &unk_1E788A938;
    v3[4] = &v4;
    __get_EXQueryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A96C2C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ExtensionFoundationLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ExtensionFoundationLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ExtensionFoundationLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E788C8C0;
    v3 = 0;
    ExtensionFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ExtensionFoundationLibraryCore_frameworkLibrary)
  {
    ExtensionFoundationLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __ExtensionFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ExtensionFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A96C53C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *SFAirDropTransferChangeStateDescription(unint64_t a1)
{
  if (a1 > 7)
  {
    return &stru_1F1D30528;
  }

  else
  {
    return off_1E788CC20[a1];
  }
}

void sub_1A96CC970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A96CCDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _SF_MyersDiff(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v40 = a7;
  v16 = a8;
  v17 = a9;
  v18 = v17;
  if (!a5)
  {
    v34 = a4;
    v35 = a6;
LABEL_29:
    [v17 addIndexesInRange:{v34, v35}];
    goto LABEL_30;
  }

  if (!a6)
  {
    v34 = a3;
    v35 = a5;
    v17 = v16;
    goto LABEL_29;
  }

  v19 = _SF_MiddleSnake(a1, a2, a5, a6, v40);
  if (v20 << 16 >= 1)
  {
    v21 = v19;
    v39 = v20 << 16;
    v36 = HIWORD(v19);
    v37 = HIDWORD(v19);
    v22 = SWORD2(v19);
    v38 = v19;
    v23 = SWORD2(v19) - v19;
    v24 = (v19 >> 16);
    v25 = SHIWORD(v19) - (v19 >> 16);
    v26 = v23 <= v25;
    if (v23 <= v25)
    {
      v27 = a4;
    }

    else
    {
      v27 = a3;
    }

    if (v26)
    {
      v22 = SHIWORD(v19);
    }

    if (v26)
    {
      v28 = v19 >> 16;
    }

    else
    {
      v28 = v19;
    }

    if (v26)
    {
      v29 = v18;
    }

    else
    {
      v29 = v16;
    }

    v30 = v22 - 1;
    if ((a5 - a6))
    {
      v31 = v28;
    }

    else
    {
      v31 = v30;
    }

    [v29 addIndex:v31 + v27];
    _SF_MyersDiff(a1, a2, a3, a4, v38, v24, v40, v16, v18);
    if (v39 != 0x10000)
    {
      if (a5 <= v37)
      {
        v32 = 0;
      }

      else
      {
        v32 = a1 + 8 * v37;
      }

      if (a6 <= v36)
      {
        v33 = 0;
      }

      else
      {
        v33 = a2 + 8 * (v21 >> 48);
      }

      _SF_MyersDiff(v32, v33, (v37 + a3), (v36 + a4), (a5 - v37), (a6 - v36), v40, v16, v18);
    }
  }

LABEL_30:
}

unint64_t _SF_MiddleSnake(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v75 = a1;
  v76 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v56[1] = v56;
  v9 = a4 + a3;
  v10 = a4 + a3 + 1;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v56 - ((2 * v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, 2 * v10);
  MEMORY[0x1EEE9AC00](v12);
  bzero(v11, 2 * v10);
  v67 = v11;
  bzero(v11, 2 * v10);
  v13 = a4 + a3;
  if (((a4 + a3) & 0x80000000) == 0)
  {
    v14 = (a4 + a3 + 8) & 0xFFFFFFF8;
    v15 = vdupq_n_s64(v10 - 1);
    v16 = xmmword_1A998EFC0;
    v17 = xmmword_1A998EFD0;
    v18 = xmmword_1A998EFE0;
    v19 = xmmword_1A998EED0;
    v20 = (v11 + 8);
    v21 = vdupq_n_s64(8uLL);
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v15, v19));
      if (vuzp1_s8(vuzp1_s16(v22, *v15.i8), *v15.i8).u8[0])
      {
        *(v20 - 4) = a3;
      }

      if (vuzp1_s8(vuzp1_s16(v22, *&v15), *&v15).i8[1])
      {
        *(v20 - 3) = a3;
      }

      if (vuzp1_s8(vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v18))), *&v15).i8[2])
      {
        *(v20 - 2) = a3;
        *(v20 - 1) = a3;
      }

      v23 = vmovn_s64(vcgeq_u64(v15, v17));
      if (vuzp1_s8(*&v15, vuzp1_s16(v23, *&v15)).i32[1])
      {
        *v20 = a3;
      }

      if (vuzp1_s8(*&v15, vuzp1_s16(v23, *&v15)).i8[5])
      {
        v20[1] = a3;
      }

      if (vuzp1_s8(*&v15, vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, *&v16)))).i8[6])
      {
        v20[2] = a3;
        v20[3] = a3;
      }

      v17 = vaddq_s64(v17, v21);
      v18 = vaddq_s64(v18, v21);
      v19 = vaddq_s64(v19, v21);
      v20 += 8;
      v16 = vaddq_s64(v16, v21);
      v14 -= 8;
    }

    while (v14);
  }

  if (v9 >= -2)
  {
    v27 = 0;
    v28 = (v10 + (v10 >> 31)) >> 1;
    v29 = v67;
    v71 = v67 + 2 * v28;
    v72 = (v11 + 2 * (v28 - (a3 - a4)));
    v30 = a3 - a4;
    v70 = -v9;
    v31 = a3;
    v73 = v75 - 8;
    v74 = a4;
    LOWORD(v26) = 0;
    LOWORD(v25) = 0;
    LOWORD(v11) = 0;
    v24 = 0;
    v57 = 0;
    v32 = 0;
    v65 = a3;
    v66 = a4;
    v64 = a4 + a3;
    v62 = v30;
    v63 = v28;
    while (1)
    {
      v59 = v27;
      v33 = v32;
      v34 = v57 - v32;
      v35 = (v57 - v32);
      v58 = v32;
      v68 = v34;
      v69 = v32;
      if (v35 <= v32)
      {
        break;
      }

LABEL_41:
      v41 = v30 - v33;
      v42 = v59 + v30;
      if (v59 + v30 >= (v30 - v33))
      {
        v59 = v41;
        v60 = v42;
        v43 = v41;
        while (1)
        {
          v44 = v41;
          if (v41 >= v70 && v41 <= v13)
          {
            v46 = v41 - 1;
            v26 = *&v72[2 * v46];
            if (v43 != v42 && ((v47 = v41 + 1, LODWORD(v11) = *&v72[2 * v47], v43 == v59) || v26 >= v11))
            {
              v24 = (v11 - v47);
              LOWORD(v26) = v11 - 1;
            }

            else
            {
              v24 = (v26 - v46);
              LOWORD(v11) = *&v72[2 * v46];
            }

            v25 = (v26 - v41);
            if (v26 >= 1 && v25 >= 1)
            {
              v61 = v24;
              v49 = v26;
              v50 = (v26 - v41);
              while ((*(v8 + 2))(v8, *(v73 + 8 * v49), *(a2 + 8 * (v50 - 1))))
              {
                LOWORD(v26) = v49 - 1;
                v51 = v50 - 1;
                if (v49 >= 2)
                {
                  --v49;
                  v39 = v50-- <= 1;
                  if (!v39)
                  {
                    continue;
                  }
                }

                goto LABEL_64;
              }

              v51 = v50;
              LOWORD(v26) = v49;
LABEL_64:
              LOWORD(v25) = v51;
              LODWORD(a3) = v65;
              LODWORD(a4) = v66;
              v13 = v64;
              v29 = v67;
              v30 = v62;
              v28 = v63;
              v34 = v68;
              v33 = v69;
              v42 = v60;
              v24 = v61;
            }

            *&v72[2 * v43] = v26;
            if (v44 >= v34 && v44 <= v33 && (v30 & 1) == 0 && *(v71 + 2 * v43) >= v26)
            {
              goto LABEL_71;
            }
          }

          LOWORD(v41) = v44 + 2;
          v43 = (v44 + 2);
          if (v42 < v43)
          {
            break;
          }
        }
      }

      v32 = (v58 + 1);
      v27 = (v58 + 1);
      if (v27 > v28)
      {
        goto LABEL_71;
      }
    }

    v60 = v30 + v32 - 1;
    v61 = v30 - (v32 - 1);
    v36 = v34;
    while (1)
    {
      v37 = v35 + 1;
      LODWORD(v11) = *(v29 + 2 * (v35 + 1 + v28));
      if (v35 != v34 && ((v26 = *(v29 + 2 * (v35 - 1 + v28)), v35 == v33) || v11 <= v26))
      {
        LOWORD(v25) = v26 - (v35 - 1);
        LOWORD(v11) = v26 + 1;
      }

      else
      {
        LOWORD(v25) = v11 - v37;
        LOWORD(v26) = *(v29 + 2 * (v37 + v28));
      }

      v38 = v36;
      v24 = (v11 - v36);
      v39 = a3 > v11 && v24 < a4;
      if (v39)
      {
        v40 = v25;
        v11 = v11;
        a3 = (v11 - v36);
        do
        {
          if (!(*(v8 + 2))(v8, *(v75 + 8 * v11), *(a2 + 8 * a3)))
          {
            break;
          }

          ++v11;
          ++a3;
          if (v11 >= v31)
          {
            break;
          }
        }

        while (a3 < v74);
        v24 = a3;
        v13 = v64;
        v29 = v67;
        v30 = v62;
        v28 = v63;
        v34 = v68;
        v33 = v69;
        LOWORD(v25) = v40;
        LODWORD(a3) = v65;
        LODWORD(a4) = v66;
      }

      *(v71 + 2 * v38) = v11;
      if ((v30 & 1) != 0 && v38 >= v61 && v38 <= v60 && *&v72[2 * v38] <= v11)
      {
        break;
      }

      v36 = v35 + 2;
      v35 = (v35 + 2);
      if (v35 > v33)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    v24 = 0;
    LOWORD(v11) = 0;
    LOWORD(v25) = 0;
    LOWORD(v26) = 0;
  }

LABEL_71:
  v52 = v24;
  v53 = v25;

  v54 = *MEMORY[0x1E69E9840];
  return (v52 << 48) | (v11 << 32) | (v53 << 16) | v26;
}

void sub_1A96CE26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  (*(v14 + 16))(v14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A96CFD44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A96CFFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A96D0954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A96D1288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A96D1DEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class __getSLCollaborationFooterViewModelClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SocialLayerLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SocialLayerLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E788CEA0;
    v6 = 0;
    SocialLayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SocialLayerLibraryCore_frameworkLibrary)
  {
    __getSLCollaborationFooterViewModelClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("SLCollaborationFooterViewModel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSLCollaborationFooterViewModelClass_block_invoke_cold_1();
  }

  getSLCollaborationFooterViewModelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SocialLayerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SocialLayerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A96D5628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A96D58E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a2 == 1)
  {
    v20 = objc_begin_catch(exception_object);
    if (v18)
    {
      v21 = MEMORY[0x1E696ABC0];
      a18 = *MEMORY[0x1E696A578];
      *(v19 - 64) = @"Could not deserialize stream information from property list";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 - 64 forKeys:&a18 count:1];
      v23 = [v21 errorWithDomain:*MEMORY[0x1E696A798] code:94 userInfo:v22];
      (*(v18 + 16))(v18, 0, 0, v23);
    }

    objc_end_catch();
    JUMPOUT(0x1A96D58A4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A96D7C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A96D9774(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_1A96DAC4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1A96DB190(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A96DB46C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

Class initHMHomeManagerConfiguration()
{
  if (HomeKitLibrary_sOnce_0 != -1)
  {
    initHMHomeManagerConfiguration_cold_1();
  }

  result = objc_getClass("HMHomeManagerConfiguration");
  classHMHomeManagerConfiguration = result;
  getHMHomeManagerConfigurationClass = HMHomeManagerConfigurationFunction;
  return result;
}

void *__HomeKitLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_0 = result;
  return result;
}

Class initHMHomeManager()
{
  if (HomeKitLibrary_sOnce_0 != -1)
  {
    initHMHomeManagerConfiguration_cold_1();
  }

  result = objc_getClass("HMHomeManager");
  classHMHomeManager = result;
  getHMHomeManagerClass = HMHomeManagerFunction;
  return result;
}

Class initVTPreferences()
{
  if (VoiceTriggerLibrary_sOnce != -1)
  {
    initVTPreferences_cold_1();
  }

  result = objc_getClass("VTPreferences");
  classVTPreferences = result;
  getVTPreferencesClass = VTPreferencesFunction;
  return result;
}

void *__VoiceTriggerLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/VoiceTrigger.framework/VoiceTrigger", 2);
  VoiceTriggerLibrary_sLib = result;
  return result;
}

Class initTROperationQueue()
{
  if (TouchRemoteLibrary_sOnce_0 != -1)
  {
    initTROperationQueue_cold_1();
  }

  result = objc_getClass("TROperationQueue");
  classTROperationQueue = result;
  getTROperationQueueClass = TROperationQueueFunction;
  return result;
}

void *__TouchRemoteLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/TouchRemote.framework/TouchRemote", 2);
  TouchRemoteLibrary_sLib_0 = result;
  return result;
}

Class initTRAuthenticationOperation()
{
  if (TouchRemoteLibrary_sOnce_0 != -1)
  {
    initTROperationQueue_cold_1();
  }

  result = objc_getClass("TRAuthenticationOperation");
  classTRAuthenticationOperation = result;
  getTRAuthenticationOperationClass = TRAuthenticationOperationFunction;
  return result;
}

id initValTRAuthenticationOperationUnauthenticatedServicesKey()
{
  if (softLinkOnceTRAuthenticationOperationUnauthenticatedServicesKey != -1)
  {
    initValTRAuthenticationOperationUnauthenticatedServicesKey_cold_1();
  }

  v1 = constantValTRAuthenticationOperationUnauthenticatedServicesKey;

  return v1;
}

void __initValTRAuthenticationOperationUnauthenticatedServicesKey_block_invoke()
{
  if (TouchRemoteLibrary_sOnce_0 != -1)
  {
    initTROperationQueue_cold_1();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_0, "TRAuthenticationOperationUnauthenticatedServicesKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRAuthenticationOperationUnauthenticatedServicesKey, *v0);
  }

  getTRAuthenticationOperationUnauthenticatedServicesKey = TRAuthenticationOperationUnauthenticatedServicesKeyFunction;
}

id initValTRAuthenticationOperationErrorKey()
{
  if (softLinkOnceTRAuthenticationOperationErrorKey != -1)
  {
    initValTRAuthenticationOperationErrorKey_cold_1();
  }

  v1 = constantValTRAuthenticationOperationErrorKey;

  return v1;
}

void __initValTRAuthenticationOperationErrorKey_block_invoke()
{
  if (TouchRemoteLibrary_sOnce_0 != -1)
  {
    initTROperationQueue_cold_1();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_0, "TRAuthenticationOperationErrorKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRAuthenticationOperationErrorKey, *v0);
  }

  getTRAuthenticationOperationErrorKey = TRAuthenticationOperationErrorKeyFunction;
}

Class initAAUIGenericTermsRemoteUI()
{
  if (AppleAccountUILibrary_sOnce != -1)
  {
    initAAUIGenericTermsRemoteUI_cold_1();
  }

  result = objc_getClass("AAUIGenericTermsRemoteUI");
  classAAUIGenericTermsRemoteUI = result;
  getAAUIGenericTermsRemoteUIClass = AAUIGenericTermsRemoteUIFunction;
  return result;
}

void *__AppleAccountUILibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AppleAccountUI.framework/AppleAccountUI", 2);
  AppleAccountUILibrary_sLib = result;
  return result;
}

void __airdrop_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "AirDrop");
  v1 = airdrop_log___logger;
  airdrop_log___logger = v0;
}

id airdrop_ui_log()
{
  if (airdrop_ui_log_onceToken != -1)
  {
    airdrop_ui_log_cold_1();
  }

  v1 = airdrop_ui_log___logger;

  return v1;
}

void __airdrop_ui_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "AirDropUI");
  v1 = airdrop_ui_log___logger;
  airdrop_ui_log___logger = v0;
}

void __airdrop_nw_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "AirDropNW");
  v1 = airdrop_nw_log___logger;
  airdrop_nw_log___logger = v0;
}

void __asset_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "Asset");
  v1 = asset_log___logger;
  asset_log___logger = v0;
}

id asset_metadata_log()
{
  if (asset_metadata_log_onceToken != -1)
  {
    asset_metadata_log_cold_1();
  }

  v1 = asset_metadata_log___logger;

  return v1;
}

void __asset_metadata_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "Asset-Metadata");
  v1 = asset_metadata_log___logger;
  asset_metadata_log___logger = v0;
}

id authenticate_accounts_log()
{
  if (authenticate_accounts_log_onceToken != -1)
  {
    authenticate_accounts_log_cold_1();
  }

  v1 = authenticate_accounts_log___logger;

  return v1;
}

void __authenticate_accounts_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "SFAuthenticateAccounts");
  v1 = authenticate_accounts_log___logger;
  authenticate_accounts_log___logger = v0;
}

void __auto_unlock_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "AutoUnlock");
  v1 = auto_unlock_log___logger;
  auto_unlock_log___logger = v0;
}

void __authentications_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "Authentications");
  v1 = authentications_log___logger;
  authentications_log___logger = v0;
}

id sharing_persistent_log()
{
  if (sharing_persistent_log_onceToken != -1)
  {
    sharing_persistent_log_cold_1();
  }

  v1 = sharing_persistent_log___logger;

  return v1;
}

void __sharing_persistent_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "Persistent");
  v1 = sharing_persistent_log___logger;
  sharing_persistent_log___logger = v0;
}

id b332_log()
{
  if (b332_log_onceToken != -1)
  {
    b332_log_cold_1();
  }

  v1 = b332_log___logger;

  return v1;
}

void __b332_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "B332Pairing");
  v1 = b332_log___logger;
  b332_log___logger = v0;
}

id b389_log()
{
  if (b389_log_onceToken != -1)
  {
    b389_log_cold_1();
  }

  v1 = b389_log___logger;

  return v1;
}

void __b389_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "B389Setup");
  v1 = b389_log___logger;
  b389_log___logger = v0;
}

id browser_log()
{
  if (browser_log_onceToken != -1)
  {
    browser_log_cold_1();
  }

  v1 = browser_log___logger;

  return v1;
}

void __browser_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "Browser");
  v1 = browser_log___logger;
  browser_log___logger = v0;
}

id charging_log()
{
  if (charging_log_onceToken != -1)
  {
    charging_log_cold_1();
  }

  v1 = charging_log___logger;

  return v1;
}

void __charging_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "Charging");
  v1 = charging_log___logger;
  charging_log___logger = v0;
}

id charging_events_log()
{
  if (charging_events_log_onceToken != -1)
  {
    charging_events_log_cold_1();
  }

  v1 = charging_events_log___logger;

  return v1;
}

void __charging_events_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "Charging-Events");
  v1 = charging_events_log___logger;
  charging_events_log___logger = v0;
}

void __daemon_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "Daemon");
  v1 = daemon_log___logger;
  daemon_log___logger = v0;
}

void __framework_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "Framework");
  v1 = framework_log___logger;
  framework_log___logger = v0;
}

void __handoff_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "Handoff");
  v1 = handoff_log___logger;
  handoff_log___logger = v0;
}

id log_submit_log()
{
  if (log_submit_log_onceToken != -1)
  {
    log_submit_log_cold_1();
  }

  v1 = log_submit_log___logger;

  return v1;
}

void __log_submit_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "LogSubmit");
  v1 = log_submit_log___logger;
  log_submit_log___logger = v0;
}

id magic_head_log()
{
  if (magic_head_log_onceToken != -1)
  {
    magic_head_log_cold_1();
  }

  v1 = magic_head_log___logger;

  return v1;
}

void __magic_head_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "MagicHead");
  v1 = magic_head_log___logger;
  magic_head_log___logger = v0;
}

void __paired_unlock_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "PairedUnlock");
  v1 = paired_unlock_log___logger;
  paired_unlock_log___logger = v0;
}

id people_ui_log()
{
  if (people_ui_log_onceToken != -1)
  {
    people_ui_log_cold_1();
  }

  v1 = people_ui_log___logger;

  return v1;
}

void __people_ui_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "PeopleUI");
  v1 = people_ui_log___logger;
  people_ui_log___logger = v0;
}

id remote_log()
{
  if (remote_log_onceToken != -1)
  {
    remote_log_cold_1();
  }

  v1 = remote_log___logger;

  return v1;
}

void __remote_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "Remote");
  v1 = remote_log___logger;
  remote_log___logger = v0;
}

id gelato_sharing_log()
{
  if (gelato_sharing_log_onceToken != -1)
  {
    gelato_sharing_log_cold_1();
  }

  v1 = gelato_sharing_log___logger;

  return v1;
}

void __gelato_sharing_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "GelatoSharingLog");
  v1 = gelato_sharing_log___logger;
  gelato_sharing_log___logger = v0;
}

id sharing_ui_log()
{
  if (sharing_ui_log_onceToken != -1)
  {
    sharing_ui_log_cold_1();
  }

  v1 = sharing_ui_log___logger;

  return v1;
}

void __sharing_ui_log_block_invoke()
{
  v0 = os_log_create("com.apple.SharingUI", "SharingUI");
  v1 = sharing_ui_log___logger;
  sharing_ui_log___logger = v0;
}

id streams_log()
{
  if (streams_log_onceToken != -1)
  {
    streams_log_cold_1();
  }

  v1 = streams_log___logger;

  return v1;
}

void __streams_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "Streams");
  v1 = streams_log___logger;
  streams_log___logger = v0;
}

id tethering_log()
{
  if (tethering_log_onceToken != -1)
  {
    tethering_log_cold_1();
  }

  v1 = tethering_log___logger;

  return v1;
}

void __tethering_log_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "Tethering");
  v1 = tethering_log___logger;
  tethering_log___logger = v0;
}

id sharingXPCHelperLog()
{
  if (sharingXPCHelperLog_onceToken != -1)
  {
    sharingXPCHelperLog_cold_1();
  }

  v1 = sharingXPCHelperLog___logger;

  return v1;
}

void __sharingXPCHelperLog_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "SharingXPCHelper");
  v1 = sharingXPCHelperLog___logger;
  sharingXPCHelperLog___logger = v0;
}

id sharingHUDLog()
{
  if (sharingHUDLog_onceToken != -1)
  {
    sharingHUDLog_cold_1();
  }

  v1 = sharingHUDLog___logger;

  return v1;
}

void __sharingHUDLog_block_invoke()
{
  v0 = os_log_create("com.apple.sharing", "SharingHUD");
  v1 = sharingHUDLog___logger;
  sharingHUDLog___logger = v0;
}

void SFDashboardLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = SFDashboardClient();
  [v10 logv:a1 args:&a9];
}

id SFDashboardClient()
{
  if (SFDashboardClient_onceToken != -1)
  {
    SFDashboardClient_cold_1();
  }

  v1 = SFDashboardClient_client;

  return v1;
}

void SFDashboardLogJSON(void *a1)
{
  v1 = a1;
  v2 = SFDashboardClient();
  [v2 logJSON:v1];
}

void SFMetricsLogUnexpectedEvent(uint64_t a1, uint64_t a2, void *a3)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 length];
  if (v6 >= 0x1F4)
  {
    v7 = 500;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 substringToIndex:v7];

  v15[0] = @"event";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v10 = v9;
  v11 = &stru_1F1D30528;
  if (v8)
  {
    v11 = v8;
  }

  v16[0] = v9;
  v16[1] = v11;
  v15[1] = @"contextString";
  v15[2] = @"contextInt";
  v12 = [MEMORY[0x1E696AD98] numberWithLong:a2];
  v16[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  SFMetricsLog(@"com.apple.sharing.UnexpectedEvent", v13);

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __SFDashboardClient_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6999480]);
  v1 = SFDashboardClient_client;
  SFDashboardClient_client = v0;

  v2 = SFDashboardClient_client;

  return [v2 activate];
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

void sub_1A96DF150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A96DF868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A96E50EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 56));
  _Unwind_Resume(a1);
}

void sub_1A96E54A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

Class initTVLDisplayColorCalibrator_0()
{
  if (TVLatencyLibrary_sOnce_0 != -1)
  {
    initTVLDisplayColorCalibrator_cold_1_0();
  }

  result = objc_getClass("TVLDisplayColorCalibrator");
  classTVLDisplayColorCalibrator_0 = result;
  getTVLDisplayColorCalibratorClass_0 = TVLDisplayColorCalibratorFunction_0;
  return result;
}

void *__TVLatencyLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/TVLatency.framework/TVLatency", 2);
  TVLatencyLibrary_sLib_0 = result;
  return result;
}

void sub_1A96E6C10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void SFDeviceAssetAddKeyValuePairsForStrictMatch(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 color];

  if (v5)
  {
    v6 = [v3 color];
    SFDeviceAssetAddKeyValuePair(@"CL", v6, v4);
  }

  v7 = [v3 additionalQueryParameters];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __SFDeviceAssetAddKeyValuePairsForStrictMatch_block_invoke;
  v10[3] = &unk_1E788D948;
  v8 = v4;
  v11 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];

  if ([v3 legacyAsset])
  {
    if ([v3 h264])
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    SFDeviceAssetAddKeyValuePair(@"H264", v9, v8);
  }
}

uint64_t SFDeviceAssetProcessCanAccessURL(void *a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    if (!a2)
    {
      goto LABEL_7;
    }

    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A798];
    v15 = *MEMORY[0x1E696A578];
    v9 = MEMORY[0x1E696AEC0];
    v10 = [0 path];
    v11 = [v9 stringWithFormat:@"Process cannot access URL %@", v10];
    v16[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a2 = [v7 errorWithDomain:v8 code:1 userInfo:v12];

LABEL_6:
    a2 = 0;
    goto LABEL_7;
  }

  v5 = [v3 path];
  v6 = open([v5 UTF8String], 0);

  if (v6 == -1)
  {
    goto LABEL_6;
  }

  close(v6);
  a2 = 1;
LABEL_7:

  v13 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1A96E9AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SFDeviceAssetAddKeyValuePair(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v6 description];
  v9 = [v7 addKeyValuePair:v5 with:v8];

  if (v9 == 1)
  {
    v10 = asset_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412802;
      v13 = v6;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v7;
      _os_log_error_impl(&dword_1A9662000, v10, OS_LOG_TYPE_ERROR, "Failed to add %@ for key %@ to query %@", &v12, 0x20u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

Class initNEConfigurationManager()
{
  if (NetworkExtensionLibrary_sOnce != -1)
  {
    initNEConfigurationManager_cold_1();
  }

  result = objc_getClass("NEConfigurationManager");
  classNEConfigurationManager = result;
  getNEConfigurationManagerClass = NEConfigurationManagerFunction;
  return result;
}

void *__NetworkExtensionLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/NetworkExtension.framework/NetworkExtension", 2);
  NetworkExtensionLibrary_sLib = result;
  return result;
}

Class initMADownloadOptions()
{
  if (MobileAssetLibrary_sOnce != -1)
  {
    initMADownloadOptions_cold_1();
  }

  result = objc_getClass("MADownloadOptions");
  classMADownloadOptions = result;
  getMADownloadOptionsClass = MADownloadOptionsFunction;
  return result;
}

void *__MobileAssetLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileAsset.framework/MobileAsset", 2);
  MobileAssetLibrary_sLib = result;
  return result;
}

Class initMAAsset()
{
  if (MobileAssetLibrary_sOnce != -1)
  {
    initMADownloadOptions_cold_1();
  }

  result = objc_getClass("MAAsset");
  classMAAsset = result;
  getMAAssetClass = MAAssetFunction;
  return result;
}

id initValASAttributeContentVersion()
{
  if (softLinkOnceASAttributeContentVersion != -1)
  {
    initValASAttributeContentVersion_cold_1();
  }

  v1 = constantValASAttributeContentVersion;

  return v1;
}

void __initValASAttributeContentVersion_block_invoke()
{
  if (MobileAssetLibrary_sOnce != -1)
  {
    initMADownloadOptions_cold_1();
  }

  v0 = dlsym(MobileAssetLibrary_sLib, "ASAttributeContentVersion");
  if (v0)
  {
    objc_storeStrong(&constantValASAttributeContentVersion, *v0);
  }

  getASAttributeContentVersion = ASAttributeContentVersionFunction;
}

Class initMAAssetQuery()
{
  if (MobileAssetLibrary_sOnce != -1)
  {
    initMADownloadOptions_cold_1();
  }

  result = objc_getClass("MAAssetQuery");
  classMAAssetQuery = result;
  getMAAssetQueryClass = MAAssetQueryFunction;
  return result;
}

uint64_t initMKBDeviceUnlockedSinceBoot()
{
  if (MobileKeyBagLibrary_sOnce != -1)
  {
    initMKBDeviceUnlockedSinceBoot_cold_1();
  }

  v0 = dlsym(MobileKeyBagLibrary_sLib, "MKBDeviceUnlockedSinceBoot");
  softLinkMKBDeviceUnlockedSinceBoot = v0;

  return v0();
}

void *__MobileKeyBagLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 2);
  MobileKeyBagLibrary_sLib = result;
  return result;
}

uint64_t SFAirDropUrlSchemeIsSupported(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (SFAirDropUrlSchemeIsSupported_onceToken != -1)
  {
    SFAirDropUrlSchemeIsSupported_cold_1();
  }

  if ([v1 length])
  {
    v2 = SFAirDropUrlSchemeIsSupported_urlSchemeDenylist;
    v3 = [v1 lowercaseString];
    LODWORD(v2) = [v2 containsObject:v3];

    if (!v2)
    {
      v5 = 1;
      goto LABEL_10;
    }

    v4 = airdrop_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v1;
      _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_DEFAULT, "%@ url scheme is not supported.", &v8, 0xCu);
    }
  }

  v5 = 0;
LABEL_10:

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void __SFAirDropUrlSchemeIsSupported_block_invoke()
{
  v0 = SFAirDropUrlSchemeIsSupported_urlSchemeDenylist;
  SFAirDropUrlSchemeIsSupported_urlSchemeDenylist = &unk_1F1D7D850;
}

BOOL SFAirDropDeviceNameIsSuspicious(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 length] >= 0x20)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v2];
    if (v4)
    {
      v5 = v4;
      v3 = 1;
    }

    else
    {
      v6 = [v2 componentsSeparatedByString:@":"];
      v7 = [v6 firstObject];

      v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
      v3 = v5 != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id callbackRoutingDict()
{
  if (callbackRoutingDict_onceToken != -1)
  {
    callbackRoutingDict_cold_1();
  }

  v1 = callbackRoutingDict_routingDict;

  return v1;
}

void notificationResponseHandler(uint64_t a1, uint64_t a2)
{
  if (notificationQueue_onceToken != -1)
  {
    notificationResponseHandler_cold_1();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __notificationResponseHandler_block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a1;
  v4[5] = a2;
  dispatch_async(notificationQueue___queue, v4);
}

void __notificationResponseHandler_block_invoke(uint64_t a1)
{
  v2 = callbackRoutingDict();
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(a1 + 32)];
  v4 = [v2 objectForKeyedSubscript:v3];
  [v2 setObject:0 forKeyedSubscript:v3];
  if (v4)
  {
    v5 = v4;
    v6 = [v5 dispatchQueue];
    v7 = v5[4];
    if (v7)
    {
      v8 = *MEMORY[0x1E695E8E0];
      Main = CFRunLoopGetMain();
      CFRunLoopRemoveSource(Main, v7, v8);
      CFRelease(v7);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __notificationResponseHandler_block_invoke_2;
    block[3] = &unk_1E788DA78;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    block[4] = v5;
    block[5] = v10;
    block[6] = v11;
    dispatch_async(v6, block);
  }

  else if (gLogCategory_SFUserAlert <= 50 && (gLogCategory_SFUserAlert != -1 || _LogCategory_Initialize()))
  {
    __notificationResponseHandler_block_invoke_cold_1((a1 + 32));
  }
}

void __notificationQueue_block_invoke()
{
  v0 = dispatch_queue_create("SFUserAlert-queue", 0);
  v1 = notificationQueue___queue;
  notificationQueue___queue = v0;
}

void __callbackRoutingDict_block_invoke()
{
  v0 = objc_opt_new();
  v1 = callbackRoutingDict_routingDict;
  callbackRoutingDict_routingDict = v0;
}

Class initRTIInputSystemService()
{
  if (RemoteTextInputLibrary_sOnce_0 != -1)
  {
    initRTIInputSystemService_cold_1();
  }

  result = objc_getClass("RTIInputSystemService");
  classRTIInputSystemService = result;
  getRTIInputSystemServiceClass = RTIInputSystemServiceFunction;
  return result;
}

void *__RemoteTextInputLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/RemoteTextInput.framework/RemoteTextInput", 2);
  RemoteTextInputLibrary_sLib_0 = result;
  return result;
}

id initValRTIServiceSharingName()
{
  if (softLinkOnceRTIServiceSharingName != -1)
  {
    initValRTIServiceSharingName_cold_1();
  }

  v1 = constantValRTIServiceSharingName;

  return v1;
}

void __initValRTIServiceSharingName_block_invoke()
{
  if (RemoteTextInputLibrary_sOnce_0 != -1)
  {
    initRTIInputSystemService_cold_1();
  }

  v0 = dlsym(RemoteTextInputLibrary_sLib_0, "RTIServiceSharingName");
  if (v0)
  {
    objc_storeStrong(&constantValRTIServiceSharingName, *v0);
  }

  getRTIServiceSharingName = RTIServiceSharingNameFunction;
}

Class initRTIInputSystemSourceSession()
{
  if (RemoteTextInputLibrary_sOnce_0 != -1)
  {
    initRTIInputSystemService_cold_1();
  }

  result = objc_getClass("RTIInputSystemSourceSession");
  classRTIInputSystemSourceSession = result;
  getRTIInputSystemSourceSessionClass = RTIInputSystemSourceSessionFunction;
  return result;
}

id initValTIKeyboardOutputInfoTypeUsernameStr()
{
  if (softLinkOnceTIKeyboardOutputInfoTypeUsernameStr != -1)
  {
    initValTIKeyboardOutputInfoTypeUsernameStr_cold_1();
  }

  v1 = constantValTIKeyboardOutputInfoTypeUsernameStr;

  return v1;
}

void __initValTIKeyboardOutputInfoTypeUsernameStr_block_invoke()
{
  if (TextInputLibrary_sOnce != -1)
  {
    __initValTIKeyboardOutputInfoTypeUsernameStr_block_invoke_cold_1();
  }

  v0 = dlsym(TextInputLibrary_sLib, "TIKeyboardOutputInfoTypeUsernameStr");
  if (v0)
  {
    objc_storeStrong(&constantValTIKeyboardOutputInfoTypeUsernameStr, *v0);
  }

  getTIKeyboardOutputInfoTypeUsernameStr = TIKeyboardOutputInfoTypeUsernameStrFunction;
}

void *__TextInputLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/TextInput.framework/TextInput", 2);
  TextInputLibrary_sLib = result;
  return result;
}

id initValTIKeyboardOutputInfoTypePasswordStr()
{
  if (softLinkOnceTIKeyboardOutputInfoTypePasswordStr != -1)
  {
    initValTIKeyboardOutputInfoTypePasswordStr_cold_1();
  }

  v1 = constantValTIKeyboardOutputInfoTypePasswordStr;

  return v1;
}

void __initValTIKeyboardOutputInfoTypePasswordStr_block_invoke()
{
  if (TextInputLibrary_sOnce != -1)
  {
    __initValTIKeyboardOutputInfoTypeUsernameStr_block_invoke_cold_1();
  }

  v0 = dlsym(TextInputLibrary_sLib, "TIKeyboardOutputInfoTypePasswordStr");
  if (v0)
  {
    objc_storeStrong(&constantValTIKeyboardOutputInfoTypePasswordStr, *v0);
  }

  getTIKeyboardOutputInfoTypePasswordStr = TIKeyboardOutputInfoTypePasswordStrFunction;
}

unsigned int *OUTLINED_FUNCTION_1_8()
{
  result = *(v0 + 96);
  v2 = *result;
  return result;
}

Class initWPAWDL()
{
  if (WirelessProximityLibrary_sOnce != -1)
  {
    initWPAWDL_cold_1();
  }

  result = objc_getClass("WPAWDL");
  classWPAWDL = result;
  getWPAWDLClass = WPAWDLFunction;
  return result;
}

void *__WirelessProximityLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/WirelessProximity.framework/WirelessProximity", 2);
  WirelessProximityLibrary_sLib = result;
  return result;
}

Class initWPNearby()
{
  if (WirelessProximityLibrary_sOnce != -1)
  {
    initWPAWDL_cold_1();
  }

  result = objc_getClass("WPNearby");
  classWPNearby = result;
  getWPNearbyClass = WPNearbyFunction;
  return result;
}

Class initWPPairing()
{
  if (WirelessProximityLibrary_sOnce != -1)
  {
    initWPAWDL_cold_1();
  }

  result = objc_getClass("WPPairing");
  classWPPairing = result;
  getWPPairingClass = WPPairingFunction;
  return result;
}

id initValWPNearbyKeyConnectLatencyCritical()
{
  if (softLinkOnceWPNearbyKeyConnectLatencyCritical != -1)
  {
    initValWPNearbyKeyConnectLatencyCritical_cold_1();
  }

  v1 = constantValWPNearbyKeyConnectLatencyCritical;

  return v1;
}

void __initValWPNearbyKeyConnectLatencyCritical_block_invoke()
{
  if (WirelessProximityLibrary_sOnce_0 != -1)
  {
    __initValWPNearbyKeyConnectLatencyCritical_block_invoke_cold_1();
  }

  v0 = dlsym(WirelessProximityLibrary_sLib_0, "WPNearbyKeyConnectLatencyCritical");
  if (v0)
  {
    objc_storeStrong(&constantValWPNearbyKeyConnectLatencyCritical, *v0);
  }

  getWPNearbyKeyConnectLatencyCritical = WPNearbyKeyConnectLatencyCriticalFunction;
}

void *__WirelessProximityLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/WirelessProximity.framework/WirelessProximity", 2);
  WirelessProximityLibrary_sLib_0 = result;
  return result;
}

id initValWPNearbyLEPipeCapable()
{
  if (softLinkOnceWPNearbyLEPipeCapable != -1)
  {
    initValWPNearbyLEPipeCapable_cold_1();
  }

  v1 = constantValWPNearbyLEPipeCapable;

  return v1;
}

void __initValWPNearbyLEPipeCapable_block_invoke()
{
  if (WirelessProximityLibrary_sOnce_0 != -1)
  {
    __initValWPNearbyKeyConnectLatencyCritical_block_invoke_cold_1();
  }

  v0 = dlsym(WirelessProximityLibrary_sLib_0, "WPNearbyLEPipeCapable");
  if (v0)
  {
    objc_storeStrong(&constantValWPNearbyLEPipeCapable, *v0);
  }

  getWPNearbyLEPipeCapable = WPNearbyLEPipeCapableFunction;
}

id initValWPNearbyKeyUseCaseList()
{
  if (softLinkOnceWPNearbyKeyUseCaseList != -1)
  {
    initValWPNearbyKeyUseCaseList_cold_1();
  }

  v1 = constantValWPNearbyKeyUseCaseList;

  return v1;
}

void __initValWPNearbyKeyUseCaseList_block_invoke()
{
  if (WirelessProximityLibrary_sOnce_0 != -1)
  {
    __initValWPNearbyKeyConnectLatencyCritical_block_invoke_cold_1();
  }

  v0 = dlsym(WirelessProximityLibrary_sLib_0, "WPNearbyKeyUseCaseList");
  if (v0)
  {
    objc_storeStrong(&constantValWPNearbyKeyUseCaseList, *v0);
  }

  getWPNearbyKeyUseCaseList = WPNearbyKeyUseCaseListFunction;
}

uint64_t OUTLINED_FUNCTION_1_9()
{

  return kdebug_trace();
}

uint64_t _QSortCmpInt8(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 < v3;
  v5 = v2 > v3;
  v6 = v4;
  return (v5 - v6);
}

Class initCBCentralManager()
{
  if (CoreBluetoothLibrary_sOnce != -1)
  {
    initCBCentralManager_cold_1();
  }

  result = objc_getClass("CBCentralManager");
  classCBCentralManager = result;
  _MergedGlobals = CBCentralManagerFunction;
  return result;
}

void *__CoreBluetoothLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreBluetooth.framework/CoreBluetooth", 2);
  CoreBluetoothLibrary_sLib = result;
  return result;
}

Class initCBScalablePipeManager()
{
  if (CoreBluetoothLibrary_sOnce != -1)
  {
    initCBCentralManager_cold_1();
  }

  result = objc_getClass("CBScalablePipeManager");
  classCBScalablePipeManager = result;
  off_1EE741428 = CBScalablePipeManagerFunction;
  return result;
}

id initValCBScalablePipeOptionTransport()
{
  if (softLinkOnceCBScalablePipeOptionTransport != -1)
  {
    initValCBScalablePipeOptionTransport_cold_1();
  }

  v1 = constantValCBScalablePipeOptionTransport;

  return v1;
}

void __initValCBScalablePipeOptionTransport_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce != -1)
  {
    initCBCentralManager_cold_1();
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib, "CBScalablePipeOptionTransport");
  if (v0)
  {
    objc_storeStrong(&constantValCBScalablePipeOptionTransport, *v0);
  }

  getCBScalablePipeOptionTransport = CBScalablePipeOptionTransportFunction;
}

Class initIDSService()
{
  if (IDSLibrary_sOnce != -1)
  {
    initIDSService_cold_1();
  }

  result = objc_getClass("IDSService");
  classIDSService = result;
  getIDSServiceClass = IDSServiceFunction;
  return result;
}

void *__IDSLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/IDS.framework/IDS", 2);
  IDSLibrary_sLib = result;
  return result;
}

unsigned int *OUTLINED_FUNCTION_1_10()
{
  result = *(v0 + 208);
  v2 = *result;
  return result;
}

const char *SFScanRateToString(uint64_t a1)
{
  if (a1 > 9)
  {
    if (a1 <= 29)
    {
      if (a1 == 10)
      {
        return "Background";
      }

      if (a1 == 20)
      {
        return "Normal";
      }
    }

    else
    {
      switch(a1)
      {
        case 30:
          return "HighNormal";
        case 40:
          return "High";
        case 50:
          return "Aggressive";
      }
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      return "Invalid";
    }

    if (a1 == 1)
    {
      return "BackgroundOld";
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return "NormalOld";
      case 3:
        return "HighOld";
      case 4:
        return "AggressiveOld";
    }
  }

  return "?";
}

uint64_t BluetoothProductIDSupportsOBCState(uint64_t a1)
{
  if (a1 >> 1 == 4103)
  {
    return 1;
  }

  v2 = [[SFHeadphoneProduct alloc] initWithProductID:a1];
  v3 = [(SFHeadphoneProduct *)v2 supportsOptimizedBatteryCharging];

  return v3;
}

Class initCBCentralManager_0()
{
  if (CoreBluetoothLibrary_sOnce_0 != -1)
  {
    initCBCentralManager_cold_1_0();
  }

  result = objc_getClass("CBCentralManager");
  classCBCentralManager_0 = result;
  getCBCentralManagerClass = CBCentralManagerFunction_0;
  return result;
}

void *__CoreBluetoothLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/CoreBluetooth.framework/CoreBluetooth", 2);
  CoreBluetoothLibrary_sLib_0 = result;
  return result;
}

Class initCBUUID()
{
  if (CoreBluetoothLibrary_sOnce_0 != -1)
  {
    initCBCentralManager_cold_1_0();
  }

  result = objc_getClass("CBUUID");
  classCBUUID = result;
  _MergedGlobals_0 = CBUUIDFunction;
  return result;
}

id initValCBCentralManagerScanOptionActive()
{
  if (softLinkOnceCBCentralManagerScanOptionActive != -1)
  {
    initValCBCentralManagerScanOptionActive_cold_1();
  }

  v1 = constantValCBCentralManagerScanOptionActive;

  return v1;
}

void __initValCBCentralManagerScanOptionActive_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_0 != -1)
  {
    initCBCentralManager_cold_1_0();
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_0, "CBCentralManagerScanOptionActive");
  if (v0)
  {
    objc_storeStrong(&constantValCBCentralManagerScanOptionActive, *v0);
  }

  off_1EE741438 = CBCentralManagerScanOptionActiveFunction;
}

id initValCBCentralManagerScanOptionAllowDuplicatesKey()
{
  if (softLinkOnceCBCentralManagerScanOptionAllowDuplicatesKey != -1)
  {
    initValCBCentralManagerScanOptionAllowDuplicatesKey_cold_1();
  }

  v1 = constantValCBCentralManagerScanOptionAllowDuplicatesKey;

  return v1;
}

void __initValCBCentralManagerScanOptionAllowDuplicatesKey_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_0 != -1)
  {
    initCBCentralManager_cold_1_0();
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_0, "CBCentralManagerScanOptionAllowDuplicatesKey");
  if (v0)
  {
    objc_storeStrong(&constantValCBCentralManagerScanOptionAllowDuplicatesKey, *v0);
  }

  off_1EE741440 = CBCentralManagerScanOptionAllowDuplicatesKeyFunction;
}

id initValCBCentralManagerScanOptionIsPrivilegedDaemonKey()
{
  if (softLinkOnceCBCentralManagerScanOptionIsPrivilegedDaemonKey != -1)
  {
    initValCBCentralManagerScanOptionIsPrivilegedDaemonKey_cold_1();
  }

  v1 = constantValCBCentralManagerScanOptionIsPrivilegedDaemonKey;

  return v1;
}

void __initValCBCentralManagerScanOptionIsPrivilegedDaemonKey_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_0 != -1)
  {
    initCBCentralManager_cold_1_0();
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_0, "CBCentralManagerScanOptionIsPrivilegedDaemonKey");
  if (v0)
  {
    objc_storeStrong(&constantValCBCentralManagerScanOptionIsPrivilegedDaemonKey, *v0);
  }

  off_1EE741448 = CBCentralManagerScanOptionIsPrivilegedDaemonKeyFunction;
}

id initValCBCentralManagerScanOptionScanInterval()
{
  if (softLinkOnceCBCentralManagerScanOptionScanInterval != -1)
  {
    initValCBCentralManagerScanOptionScanInterval_cold_1();
  }

  v1 = constantValCBCentralManagerScanOptionScanInterval;

  return v1;
}

void __initValCBCentralManagerScanOptionScanInterval_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_0 != -1)
  {
    initCBCentralManager_cold_1_0();
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_0, "CBCentralManagerScanOptionScanInterval");
  if (v0)
  {
    objc_storeStrong(&constantValCBCentralManagerScanOptionScanInterval, *v0);
  }

  off_1EE741450 = CBCentralManagerScanOptionScanIntervalFunction;
}

id initValCBCentralManagerScanOptionScanWindow()
{
  if (softLinkOnceCBCentralManagerScanOptionScanWindow != -1)
  {
    initValCBCentralManagerScanOptionScanWindow_cold_1();
  }

  v1 = constantValCBCentralManagerScanOptionScanWindow;

  return v1;
}

void __initValCBCentralManagerScanOptionScanWindow_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_0 != -1)
  {
    initCBCentralManager_cold_1_0();
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_0, "CBCentralManagerScanOptionScanWindow");
  if (v0)
  {
    objc_storeStrong(&constantValCBCentralManagerScanOptionScanWindow, *v0);
  }

  off_1EE741458 = CBCentralManagerScanOptionScanWindowFunction;
}

id initValCBAdvertisementDataChannel()
{
  if (softLinkOnceCBAdvertisementDataChannel != -1)
  {
    initValCBAdvertisementDataChannel_cold_1();
  }

  v1 = constantValCBAdvertisementDataChannel;

  return v1;
}

void __initValCBAdvertisementDataChannel_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_0 != -1)
  {
    initCBCentralManager_cold_1_0();
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_0, "CBAdvertisementDataChannel");
  if (v0)
  {
    objc_storeStrong(&constantValCBAdvertisementDataChannel, *v0);
  }

  off_1EE741460 = CBAdvertisementDataChannelFunction;
}

id initValCBAdvertisementDataDeviceAddress()
{
  if (softLinkOnceCBAdvertisementDataDeviceAddress != -1)
  {
    initValCBAdvertisementDataDeviceAddress_cold_1();
  }

  v1 = constantValCBAdvertisementDataDeviceAddress;

  return v1;
}

void __initValCBAdvertisementDataDeviceAddress_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_0 != -1)
  {
    initCBCentralManager_cold_1_0();
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_0, "CBAdvertisementDataDeviceAddress");
  if (v0)
  {
    objc_storeStrong(&constantValCBAdvertisementDataDeviceAddress, *v0);
  }

  off_1EE741468 = CBAdvertisementDataDeviceAddressFunction;
}

id initValCBAdvertisementDataManufacturerDataKey()
{
  if (softLinkOnceCBAdvertisementDataManufacturerDataKey != -1)
  {
    initValCBAdvertisementDataManufacturerDataKey_cold_1();
  }

  v1 = constantValCBAdvertisementDataManufacturerDataKey;

  return v1;
}

void __initValCBAdvertisementDataManufacturerDataKey_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_0 != -1)
  {
    initCBCentralManager_cold_1_0();
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_0, "CBAdvertisementDataManufacturerDataKey");
  if (v0)
  {
    objc_storeStrong(&constantValCBAdvertisementDataManufacturerDataKey, *v0);
  }

  off_1EE741470 = CBAdvertisementDataManufacturerDataKeyFunction;
}

id initValCBAdvertisementDataServiceDataKey()
{
  if (softLinkOnceCBAdvertisementDataServiceDataKey != -1)
  {
    initValCBAdvertisementDataServiceDataKey_cold_1();
  }

  v1 = constantValCBAdvertisementDataServiceDataKey;

  return v1;
}

void __initValCBAdvertisementDataServiceDataKey_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_0 != -1)
  {
    initCBCentralManager_cold_1_0();
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_0, "CBAdvertisementDataServiceDataKey");
  if (v0)
  {
    objc_storeStrong(&constantValCBAdvertisementDataServiceDataKey, *v0);
  }

  off_1EE741478 = CBAdvertisementDataServiceDataKeyFunction;
}

id initValCBAdvertisementDataLocalNameKey()
{
  if (softLinkOnceCBAdvertisementDataLocalNameKey != -1)
  {
    initValCBAdvertisementDataLocalNameKey_cold_1();
  }

  v1 = constantValCBAdvertisementDataLocalNameKey;

  return v1;
}

void __initValCBAdvertisementDataLocalNameKey_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_0 != -1)
  {
    initCBCentralManager_cold_1_0();
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_0, "CBAdvertisementDataLocalNameKey");
  if (v0)
  {
    objc_storeStrong(&constantValCBAdvertisementDataLocalNameKey, *v0);
  }

  off_1EE741480 = CBAdvertisementDataLocalNameKeyFunction;
}

id initValCBAdvertisementDataSaturated()
{
  if (softLinkOnceCBAdvertisementDataSaturated != -1)
  {
    initValCBAdvertisementDataSaturated_cold_1();
  }

  v1 = constantValCBAdvertisementDataSaturated;

  return v1;
}

void __initValCBAdvertisementDataSaturated_block_invoke()
{
  if (CoreBluetoothLibrary_sOnce_0 != -1)
  {
    initCBCentralManager_cold_1_0();
  }

  v0 = dlsym(CoreBluetoothLibrary_sLib_0, "CBAdvertisementDataSaturated");
  if (v0)
  {
    objc_storeStrong(&constantValCBAdvertisementDataSaturated, *v0);
  }

  off_1EE741488 = CBAdvertisementDataSaturatedFunction;
}

Class initWatchSetupAdvertisementIdentifier()
{
  if (NanoRegistryLibrary_sOnce != -1)
  {
    initWatchSetupAdvertisementIdentifier_cold_1();
  }

  result = objc_getClass("WatchSetupAdvertisementIdentifier");
  classWatchSetupAdvertisementIdentifier = result;
  getWatchSetupAdvertisementIdentifierClass[0] = WatchSetupAdvertisementIdentifierFunction;
  return result;
}

void *__NanoRegistryLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry", 2);
  NanoRegistryLibrary_sLib = result;
  return result;
}

Class initWatchSetupExtendedMetadata()
{
  if (NanoRegistryLibrary_sOnce != -1)
  {
    initWatchSetupAdvertisementIdentifier_cold_1();
  }

  result = objc_getClass("WatchSetupExtendedMetadata");
  classWatchSetupExtendedMetadata = result;
  getWatchSetupExtendedMetadataClass[0] = WatchSetupExtendedMetadataFunction;
  return result;
}

uint64_t initBTSessionAttachWithQueue(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = MobileBluetoothLibrary_sOnce;
  v8 = a4;
  if (v7 != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  softLinkBTSessionAttachWithQueue = dlsym(MobileBluetoothLibrary_sLib, "BTSessionAttachWithQueue");
  v9 = (softLinkBTSessionAttachWithQueue)(a1, a2, a3, v8);

  return v9;
}

void *__MobileBluetoothLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileBluetooth.framework/MobileBluetooth", 2);
  MobileBluetoothLibrary_sLib = result;
  return result;
}

uint64_t initBTSessionDetachWithQueue(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib, "BTSessionDetachWithQueue");
  softLinkBTSessionDetachWithQueue = v2;

  return (v2)(a1);
}

id initValWPNearbyKeyRSSI()
{
  if (softLinkOnceWPNearbyKeyRSSI != -1)
  {
    initValWPNearbyKeyRSSI_cold_1();
  }

  v1 = constantValWPNearbyKeyRSSI;

  return v1;
}

void __initValWPNearbyKeyRSSI_block_invoke()
{
  if (WirelessProximityLibrary_sOnce_1 != -1)
  {
    __initValWPNearbyKeyRSSI_block_invoke_cold_1();
  }

  v0 = dlsym(WirelessProximityLibrary_sLib_1, "WPNearbyKeyRSSI");
  if (v0)
  {
    objc_storeStrong(&constantValWPNearbyKeyRSSI, *v0);
  }

  getWPNearbyKeyRSSI = WPNearbyKeyRSSIFunction;
}

void *__WirelessProximityLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/WirelessProximity.framework/WirelessProximity", 2);
  WirelessProximityLibrary_sLib_1 = result;
  return result;
}

id initValWPNearbyKeyManufacturerData()
{
  if (softLinkOnceWPNearbyKeyManufacturerData != -1)
  {
    initValWPNearbyKeyManufacturerData_cold_1();
  }

  v1 = constantValWPNearbyKeyManufacturerData;

  return v1;
}

void __initValWPNearbyKeyManufacturerData_block_invoke()
{
  if (WirelessProximityLibrary_sOnce_1 != -1)
  {
    __initValWPNearbyKeyRSSI_block_invoke_cold_1();
  }

  v0 = dlsym(WirelessProximityLibrary_sLib_1, "WPNearbyKeyManufacturerData");
  if (v0)
  {
    objc_storeStrong(&constantValWPNearbyKeyManufacturerData, *v0);
  }

  getWPNearbyKeyManufacturerData = WPNearbyKeyManufacturerDataFunction;
}

id initValWPNearbyKeyDeviceAddress()
{
  if (softLinkOnceWPNearbyKeyDeviceAddress != -1)
  {
    initValWPNearbyKeyDeviceAddress_cold_1();
  }

  v1 = constantValWPNearbyKeyDeviceAddress;

  return v1;
}

void __initValWPNearbyKeyDeviceAddress_block_invoke()
{
  if (WirelessProximityLibrary_sOnce_1 != -1)
  {
    __initValWPNearbyKeyRSSI_block_invoke_cold_1();
  }

  v0 = dlsym(WirelessProximityLibrary_sLib_1, "WPNearbyKeyDeviceAddress");
  if (v0)
  {
    objc_storeStrong(&constantValWPNearbyKeyDeviceAddress, *v0);
  }

  getWPNearbyKeyDeviceAddress = WPNearbyKeyDeviceAddressFunction;
}

id initValWPNearbyKeyPaired()
{
  if (softLinkOnceWPNearbyKeyPaired != -1)
  {
    initValWPNearbyKeyPaired_cold_1();
  }

  v1 = constantValWPNearbyKeyPaired;

  return v1;
}

void __initValWPNearbyKeyPaired_block_invoke()
{
  if (WirelessProximityLibrary_sOnce_1 != -1)
  {
    __initValWPNearbyKeyRSSI_block_invoke_cold_1();
  }

  v0 = dlsym(WirelessProximityLibrary_sLib_1, "WPNearbyKeyPaired");
  if (v0)
  {
    objc_storeStrong(&constantValWPNearbyKeyPaired, *v0);
  }

  getWPNearbyKeyPaired = WPNearbyKeyPairedFunction;
}

id initValWPPairingKeyAdvertisingChannel()
{
  if (softLinkOnceWPPairingKeyAdvertisingChannel != -1)
  {
    initValWPPairingKeyAdvertisingChannel_cold_1();
  }

  v1 = constantValWPPairingKeyAdvertisingChannel;

  return v1;
}

void __initValWPPairingKeyAdvertisingChannel_block_invoke()
{
  if (WirelessProximityLibrary_sOnce_1 != -1)
  {
    __initValWPNearbyKeyRSSI_block_invoke_cold_1();
  }

  v0 = dlsym(WirelessProximityLibrary_sLib_1, "WPPairingKeyAdvertisingChannel");
  if (v0)
  {
    objc_storeStrong(&constantValWPPairingKeyAdvertisingChannel, *v0);
  }

  getWPPairingKeyAdvertisingChannel = WPPairingKeyAdvertisingChannelFunction;
}

id initValWPPairingKeyDeviceAddress()
{
  if (softLinkOnceWPPairingKeyDeviceAddress != -1)
  {
    initValWPPairingKeyDeviceAddress_cold_1();
  }

  v1 = constantValWPPairingKeyDeviceAddress;

  return v1;
}

void __initValWPPairingKeyDeviceAddress_block_invoke()
{
  if (WirelessProximityLibrary_sOnce_1 != -1)
  {
    __initValWPNearbyKeyRSSI_block_invoke_cold_1();
  }

  v0 = dlsym(WirelessProximityLibrary_sLib_1, "WPPairingKeyDeviceAddress");
  if (v0)
  {
    objc_storeStrong(&constantValWPPairingKeyDeviceAddress, *v0);
  }

  off_1EE741490 = WPPairingKeyDeviceAddressFunction;
}

id initValWPPairingKeyAccessoryStatusDecrypted()
{
  if (softLinkOnceWPPairingKeyAccessoryStatusDecrypted != -1)
  {
    initValWPPairingKeyAccessoryStatusDecrypted_cold_1();
  }

  v1 = constantValWPPairingKeyAccessoryStatusDecrypted;

  return v1;
}

void __initValWPPairingKeyAccessoryStatusDecrypted_block_invoke()
{
  if (WirelessProximityLibrary_sOnce_1 != -1)
  {
    __initValWPNearbyKeyRSSI_block_invoke_cold_1();
  }

  v0 = dlsym(WirelessProximityLibrary_sLib_1, "WPPairingKeyAccessoryStatusDecrypted");
  if (v0)
  {
    objc_storeStrong(&constantValWPPairingKeyAccessoryStatusDecrypted, *v0);
  }

  off_1EE741498 = WPPairingKeyAccessoryStatusDecryptedFunction;
}

uint64_t initBTDeviceFromIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceFromIdentifier");
  softLinkBTDeviceFromIdentifier = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceGetName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceGetName");
  softLinkBTDeviceGetName = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceGetPairingStatus(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceGetPairingStatus");
  softLinkBTDeviceGetPairingStatus = v4;

  return (v4)(a1, a2);
}

uint64_t initBTDeviceIsTemporaryPaired(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceIsTemporaryPaired");
  softLinkBTDeviceIsTemporaryPaired = v4;

  return (v4)(a1, a2);
}

uint64_t initBTDeviceGetConnectedServices(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceGetConnectedServices");
  softLinkBTDeviceGetConnectedServices = v4;

  return (v4)(a1, a2);
}

uint64_t initBTDeviceGetAddressString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceGetAddressString");
  softLinkBTDeviceGetAddressString = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceAddressFromString(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce != -1)
  {
    initBTSessionAttachWithQueue_cold_1();
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib, "BTDeviceAddressFromString");
  softLinkBTDeviceAddressFromString = v4;

  return (v4)(a1, a2);
}

double OUTLINED_FUNCTION_4_6()
{
  result = 1.0;
  if (v0 <= 1.0)
  {
    return v0;
  }

  return result;
}

double OUTLINED_FUNCTION_5_3(double result, double a2)
{
  if (result < a2)
  {
    return a2;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

double OUTLINED_FUNCTION_20_0()
{
  result = 1.0;
  if (v0 <= 1.0)
  {
    return v0;
  }

  return result;
}

double OUTLINED_FUNCTION_21_0()
{
  result = 1.0;
  if (v0 <= 1.0)
  {
    return v0;
  }

  return result;
}

id getFPItemManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFPItemManagerClass_softClass;
  v7 = getFPItemManagerClass_softClass;
  if (!getFPItemManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFPItemManagerClass_block_invoke;
    v3[3] = &unk_1E788A938;
    v3[4] = &v4;
    __getFPItemManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A970A61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SharedWithYouCoreLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SharedWithYouCoreLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SharedWithYouCoreLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E788EA30;
    v5 = 0;
    SharedWithYouCoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = SharedWithYouCoreLibraryCore_frameworkLibrary_0;
  if (!SharedWithYouCoreLibraryCore_frameworkLibrary_0)
  {
    SharedWithYouCoreLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1A970AB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  _Block_object_dispose(&a21, 8);
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id get_CKCloudKitPreShareType()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = get_CKCloudKitPreShareTypeSymbolLoc_ptr;
  v7 = get_CKCloudKitPreShareTypeSymbolLoc_ptr;
  if (!get_CKCloudKitPreShareTypeSymbolLoc_ptr)
  {
    v1 = CloudKitLibrary_0();
    v5[3] = dlsym(v1, "_CKCloudKitPreShareType");
    get_CKCloudKitPreShareTypeSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    get_CKCloudKitPreShareType_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A970AFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_CKCloudKitPostShareType()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = get_CKCloudKitPostShareTypeSymbolLoc_ptr;
  v7 = get_CKCloudKitPostShareTypeSymbolLoc_ptr;
  if (!get_CKCloudKitPostShareTypeSymbolLoc_ptr)
  {
    v1 = CloudKitLibrary_0();
    v5[3] = dlsym(v1, "_CKCloudKitPostShareType");
    get_CKCloudKitPostShareTypeSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    get_CKCloudKitPostShareType_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A970B0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A970B43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_CKSharingAccessTypeFromOptionsGroups(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getCKSharingAccessTypeFromOptionsGroupsSymbolLoc_ptr;
  v9 = getCKSharingAccessTypeFromOptionsGroupsSymbolLoc_ptr;
  if (!getCKSharingAccessTypeFromOptionsGroupsSymbolLoc_ptr)
  {
    v3 = CloudKitLibrary_0();
    v7[3] = dlsym(v3, "CKSharingAccessTypeFromOptionsGroups");
    getCKSharingAccessTypeFromOptionsGroupsSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    soft_CKSharingAccessTypeFromOptionsGroups_cold_1();
  }

  v4 = v2(v1);

  return v4;
}

void sub_1A970B554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCKAllowedSharingOptionsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKAllowedSharingOptionsClass_softClass;
  v7 = getCKAllowedSharingOptionsClass_softClass;
  if (!getCKAllowedSharingOptionsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKAllowedSharingOptionsClass_block_invoke;
    v3[3] = &unk_1E788A938;
    v3[4] = &v4;
    __getCKAllowedSharingOptionsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A970B86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCloudSharingClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCloudSharingClass_softClass;
  v7 = getCloudSharingClass_softClass;
  if (!getCloudSharingClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCloudSharingClass_block_invoke;
    v3[3] = &unk_1E788A938;
    v3[4] = &v4;
    __getCloudSharingClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A970BA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCKPostSharingContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKPostSharingContextClass_softClass;
  v7 = getCKPostSharingContextClass_softClass;
  if (!getCKPostSharingContextClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKPostSharingContextClass_block_invoke;
    v3[3] = &unk_1E788A938;
    v3[4] = &v4;
    __getCKPostSharingContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A970C17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCKPreSharingContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKPreSharingContextClass_softClass;
  v7 = getCKPreSharingContextClass_softClass;
  if (!getCKPreSharingContextClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKPreSharingContextClass_block_invoke;
    v3[3] = &unk_1E788A938;
    v3[4] = &v4;
    __getCKPreSharingContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A970C3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A970CC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A970CF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getCKShareTitleKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getCKShareTitleKeySymbolLoc_ptr;
  v7 = getCKShareTitleKeySymbolLoc_ptr;
  if (!getCKShareTitleKeySymbolLoc_ptr)
  {
    v1 = CloudKitLibrary_0();
    v5[3] = dlsym(v1, "CKShareTitleKey");
    getCKShareTitleKeySymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getCKShareTitleKey_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A970D84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A970DA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A970DEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A970F1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A970FCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_SWPendingCollaborationTypeIdentifier()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = get_SWPendingCollaborationTypeIdentifierSymbolLoc_ptr;
  v7 = get_SWPendingCollaborationTypeIdentifierSymbolLoc_ptr;
  if (!get_SWPendingCollaborationTypeIdentifierSymbolLoc_ptr)
  {
    v1 = SharedWithYouCoreLibrary();
    v5[3] = dlsym(v1, "_SWPendingCollaborationTypeIdentifier");
    get_SWPendingCollaborationTypeIdentifierSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    get_SWPendingCollaborationTypeIdentifier_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A970FE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUTCollaborationOptionsTypeIdentifier()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getUTCollaborationOptionsTypeIdentifierSymbolLoc_ptr;
  v7 = getUTCollaborationOptionsTypeIdentifierSymbolLoc_ptr;
  if (!getUTCollaborationOptionsTypeIdentifierSymbolLoc_ptr)
  {
    v1 = SharedWithYouCoreLibrary();
    v5[3] = dlsym(v1, "UTCollaborationOptionsTypeIdentifier");
    getUTCollaborationOptionsTypeIdentifierSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getUTCollaborationOptionsTypeIdentifier_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A971020C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A97113FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9711804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9711F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A9712210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getCKErrorDomain()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getCKErrorDomainSymbolLoc_ptr;
  v7 = getCKErrorDomainSymbolLoc_ptr;
  if (!getCKErrorDomainSymbolLoc_ptr)
  {
    v1 = CloudKitLibrary_0();
    v5[3] = dlsym(v1, "CKErrorDomain");
    getCKErrorDomainSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getCKErrorDomain_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1A9712444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A9716DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFPItemManagerClass_block_invoke(uint64_t a1)
{
  FileProviderLibrary();
  result = objc_getClass("FPItemManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFPItemManagerClass_block_invoke_cold_1();
  }

  getFPItemManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void FileProviderLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __FileProviderLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E788EA18;
    v3 = 0;
    FileProviderLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    FileProviderLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __FileProviderLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FileProviderLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SharedWithYouCoreLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SharedWithYouCoreLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getSWCollaborationMetadataForDocumentURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SharedWithYouCoreLibrary();
  result = dlsym(v2, "SWCollaborationMetadataForDocumentURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSWCollaborationMetadataForDocumentURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CloudKitLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CloudKitLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E788EA48;
    v5 = 0;
    CloudKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = CloudKitLibraryCore_frameworkLibrary_0;
  if (!CloudKitLibraryCore_frameworkLibrary_0)
  {
    CloudKitLibrary_cold_1_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __CloudKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getCKSharingAccessTypeFromOptionsGroupsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudKitLibrary_0();
  result = dlsym(v2, "CKSharingAccessTypeFromOptionsGroups");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCKSharingAccessTypeFromOptionsGroupsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCKSharingPermissionTypeFromOptionsGroupsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudKitLibrary_0();
  result = dlsym(v2, "CKSharingPermissionTypeFromOptionsGroups");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCKSharingPermissionTypeFromOptionsGroupsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCKSharingAllowOthersToInviteFromOptionsGroupsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudKitLibrary_0();
  result = dlsym(v2, "CKSharingAllowOthersToInviteFromOptionsGroups");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCKSharingAllowOthersToInviteFromOptionsGroupsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCKAllowedSharingOptionsClass_block_invoke(uint64_t a1)
{
  CloudKitLibrary_0();
  result = objc_getClass("CKAllowedSharingOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKAllowedSharingOptionsClass_block_invoke_cold_1();
  }

  getCKAllowedSharingOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCloudSharingClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CloudSharingLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CloudSharingLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E788EA60;
    v6 = 0;
    CloudSharingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CloudSharingLibraryCore_frameworkLibrary)
  {
    __getCloudSharingClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CloudSharing");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCloudSharingClass_block_invoke_cold_1();
  }

  getCloudSharingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CloudSharingLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudSharingLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCKPostSharingContextClass_block_invoke(uint64_t a1)
{
  CloudKitLibrary_0();
  result = objc_getClass("CKPostSharingContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKPostSharingContextClass_block_invoke_cold_1();
  }

  getCKPostSharingContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCKPreSharingContextClass_block_invoke(uint64_t a1)
{
  CloudKitLibrary_0();
  result = objc_getClass("CKPreSharingContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKPreSharingContextClass_block_invoke_cold_1();
  }

  getCKPreSharingContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCKContainerSetupInfoClass_block_invoke_0(uint64_t a1)
{
  CloudKitLibrary_0();
  result = objc_getClass("CKContainerSetupInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKContainerSetupInfoClass_block_invoke_cold_1_0();
  }

  getCKContainerSetupInfoClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getLPiCloudSharingMetadataClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary();
  result = objc_getClass("LPiCloudSharingMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLPiCloudSharingMetadataClass_block_invoke_cold_1();
  }

  getLPiCloudSharingMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void LinkPresentationLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __LinkPresentationLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E788EA78;
    v3 = 0;
    LinkPresentationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    LinkPresentationLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __LinkPresentationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getCKShareTitleKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudKitLibrary_0();
  result = dlsym(v2, "CKShareTitleKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCKShareTitleKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCKShareThumbnailImageDataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudKitLibrary_0();
  result = dlsym(v2, "CKShareThumbnailImageDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCKShareThumbnailImageDataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getLPImageClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary();
  result = objc_getClass("LPImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLPImageClass_block_invoke_cold_1();
  }

  getLPImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getLPSharedObjectMetadataClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary();
  result = objc_getClass("LPSharedObjectMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLPSharedObjectMetadataClass_block_invoke_cold_1();
  }

  getLPSharedObjectMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getLPLinkMetadataClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary();
  result = objc_getClass("LPLinkMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLPLinkMetadataClass_block_invoke_cold_1();
  }

  getLPLinkMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCKSharingAllowAccessRequestsFromOptionsGroupsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudKitLibrary_0();
  result = dlsym(v2, "CKSharingAllowAccessRequestsFromOptionsGroups");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCKSharingAllowAccessRequestsFromOptionsGroupsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getFPProviderDomainClass_block_invoke(uint64_t a1)
{
  FileProviderLibrary();
  result = objc_getClass("FPProviderDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFPProviderDomainClass_block_invoke_cold_1();
  }

  getFPProviderDomainClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSWPerformActionForDocumentURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SharedWithYouCoreLibrary();
  result = dlsym(v2, "SWPerformActionForDocumentURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSWPerformActionForDocumentURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSWCopyRepresentationTypeIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SharedWithYouCoreLibrary();
  result = dlsym(v2, "SWCopyRepresentationTypeIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getUTCopyRepresentationTypeIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SharedWithYouCoreLibrary();
  result = dlsym(v2, "UTCopyRepresentationTypeIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUTCopyRepresentationTypeIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getUTCollaborationOptionsTypeIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SharedWithYouCoreLibrary();
  result = dlsym(v2, "UTCollaborationOptionsTypeIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUTCollaborationOptionsTypeIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCKShareTypeKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudKitLibrary_0();
  result = dlsym(v2, "CKShareTypeKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCKShareTypeKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCKErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudKitLibrary_0();
  result = dlsym(v2, "CKErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCKErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCKRecordChangedErrorServerRecordKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudKitLibrary_0();
  result = dlsym(v2, "CKRecordChangedErrorServerRecordKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCKRecordChangedErrorServerRecordKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _btServiceEventHandler(uint64_t a1, _OWORD *a2, int a3, uint64_t a4, int a5, void *a6)
{
  v68 = *MEMORY[0x1E69E9840];
  v12 = objc_autoreleasePoolPush();
  v13 = a6;
  dispatch_assert_queue_V2(*(v13 + 23));
  if (v13[88] != 1)
  {
    goto LABEL_80;
  }

  v14 = (v13 + 136);
  v15 = **(v13 + 17);
  if (a3 == 2)
  {
    if (v15 > 30)
    {
      goto LABEL_80;
    }

    if (v15 == -1)
    {
      v18 = *(v13 + 17);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_80;
      }

      v19 = *v14;
    }

    goto LABEL_16;
  }

  if (a3 == 1)
  {
    if (v15 > 30)
    {
      goto LABEL_80;
    }

    if (v15 == -1)
    {
      v16 = *(v13 + 17);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_80;
      }

      v17 = *v14;
    }

LABEL_16:
    BTServiceSpecificEventToString(a4);
    LogPrintF();
    goto LABEL_80;
  }

  if (a3)
  {
    if (v15 > 30)
    {
      goto LABEL_80;
    }

    if (v15 == -1)
    {
      v23 = *(v13 + 17);
      if (!_LogCategory_Initialize())
      {
        goto LABEL_80;
      }

      v24 = *v14;
    }

    goto LABEL_16;
  }

  if (v15 > 30)
  {
    goto LABEL_22;
  }

  if (v15 != -1)
  {
    goto LABEL_7;
  }

  v20 = *(v13 + 17);
  if (_LogCategory_Initialize())
  {
    v46 = *v14;
LABEL_7:
    v57 = BTServiceSpecificEventToString(a4);
    v58 = (a5 + 310000);
    v55 = &unk_1A998F298;
    v56 = a4;
    v54 = a2;
    LogPrintF();
  }

LABEL_22:
  if (a4 != 11)
  {
    goto LABEL_80;
  }

  *__s1 = 0u;
  v67 = 0u;
  AddressString_0 = softLinkBTDeviceGetAddressString_0(a1, __s1, 32);
  if (AddressString_0)
  {
    _btServiceEventHandler_cold_1(AddressString_0, v13 + 17);
    goto LABEL_80;
  }

  if (strcmp(__s1, v13 + 8))
  {
    _btServiceEventHandler_cold_2(v13 + 17);
    goto LABEL_80;
  }

  if (!a5)
  {
    v65 = 0;
    memset(v64, 0, sizeof(v64));
    if (!a1)
    {
      goto LABEL_74;
    }

    softLinkBTDeviceGetName_0(a1, v64, 248);
    if (LOBYTE(v64[0]))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v64];
      v26 = *(v13 + 26);
      *(v13 + 26) = v25;
    }

    v63 = 0;
    v62 = 0;
    softLinkBTDeviceGetDeviceId(a1, &v63 + 4, &v63, &v62, (v13 + 164));
    v61 = 0;
    Default = softLinkBTAccessoryManagerGetDefault(*(v13 + 10), &v61);
    if (Default)
    {
      v28 = Default;
      v29 = **v14;
      if (v29 <= 60)
      {
        if (v29 != -1)
        {
LABEL_38:
          v54 = (v28 + 310000);
          LogPrintF();
          goto LABEL_49;
        }

        if (_LogCategory_Initialize())
        {
          v50 = *v14;
          goto LABEL_38;
        }
      }
    }

LABEL_49:
    if (!v61)
    {
      goto LABEL_74;
    }

    v60 = 0;
    FeatureCapability = softLinkBTAccessoryManagerGetFeatureCapability(v61, a1, 1, &v60);
    if (!FeatureCapability)
    {
      v36 = v60 != 0;
      goto LABEL_57;
    }

    v34 = FeatureCapability;
    v35 = **v14;
    if (v35 <= 60)
    {
      if (v35 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_56;
        }

        v52 = *v14;
      }

      v54 = (v34 + 310000);
      LogPrintF();
    }

LABEL_56:
    v36 = 0;
    v60 = 0;
LABEL_57:
    v13[158] = v36;
    v59 = 0;
    v37 = softLinkBTAccessoryManagerGetFeatureCapability(v61, a1, 26, &v59);
    if (!v37)
    {
      v40 = v59 != 0;
      goto LABEL_64;
    }

    v38 = v37;
    v39 = **v14;
    if (v39 <= 60)
    {
      if (v39 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_63;
        }

        v53 = *v14;
      }

      v54 = (v38 + 310000);
      LogPrintF();
    }

LABEL_63:
    v40 = 0;
    v59 = 0;
LABEL_64:
    v13[159] = v40;
    v41 = **(v13 + 17);
    if (v41 > 30)
    {
      goto LABEL_74;
    }

    if (v41 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_74;
      }

      v51 = *(v13 + 17);
      v40 = v13[159];
    }

    if (v13[158])
    {
      v42 = "yes";
    }

    else
    {
      v42 = "no";
    }

    if (v40)
    {
      v43 = "yes";
    }

    else
    {
      v43 = "no";
    }

    v54 = v42;
    v55 = v43;
    LogPrintF();
LABEL_74:
    v44 = **v14;
    if (v44 <= 30)
    {
      if (v44 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_78;
        }

        v47 = *v14;
      }

      v54 = v64;
      v55 = *(v13 + 41);
      LogPrintF();
    }

LABEL_78:
    v13[41] = 0;
    v31 = v13;
    v32 = 0;
    goto LABEL_79;
  }

  if (v13[153] == 1)
  {
    v22 = **v14;
    if (v22 <= 60)
    {
      if (v22 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_43;
        }

        v48 = *v14;
      }

      v54 = (a5 + 310000);
      LogPrintF();
    }

LABEL_43:
    v13[41] = 0;
    v31 = v13;
    v32 = (a5 + 310000);
LABEL_79:
    [v31 _completed:{v32, v54, v55, v56, v57, v58}];
    goto LABEL_80;
  }

  v30 = **v14;
  if (v30 > 60)
  {
    goto LABEL_45;
  }

  if (v30 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_45;
    }

    v49 = *v14;
  }

  LogPrintF();
LABEL_45:
  if ((a5 - 151) <= 0xF && ((1 << (a5 + 105)) & 0x8081) != 0)
  {
    [v13 _btDeletePairingAndRetry];
  }

LABEL_80:

  objc_autoreleasePoolPop(v12);
  v45 = *MEMORY[0x1E69E9840];
}

void _btPairingAgentStatusHandler(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_autoreleasePoolPush();
  v8 = a5;
  dispatch_assert_queue_V2(*(v8 + 23));
  v9 = **(v8 + 17);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if (v9 > 30)
      {
        goto LABEL_31;
      }

      if (v9 != -1)
      {
        goto LABEL_20;
      }

      if (_LogCategory_Initialize())
      {
        v14 = *(v8 + 17);
        goto LABEL_20;
      }

      goto LABEL_31;
    }

    if (a2 == 3)
    {
      if (v9 > 30)
      {
        goto LABEL_31;
      }

      if (v9 != -1)
      {
        goto LABEL_20;
      }

      if (_LogCategory_Initialize())
      {
        v12 = *(v8 + 17);
        goto LABEL_20;
      }

      goto LABEL_31;
    }

    goto LABEL_12;
  }

  if (!a2)
  {
    if (v9 > 30)
    {
      goto LABEL_28;
    }

    if (v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_28:
        if (*(v8 + 90) == 1)
        {
          *(v8 + 72) = 1;
          [v8 _btEnsureStarted];
        }

        goto LABEL_31;
      }

      v13 = *(v8 + 17);
    }

    LogPrintF();
    goto LABEL_28;
  }

  if (a2 == 1)
  {
    if (v9 > 30)
    {
      goto LABEL_31;
    }

    if (v9 != -1)
    {
      goto LABEL_20;
    }

    if (_LogCategory_Initialize())
    {
      v11 = *(v8 + 17);
      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_12:
  if (v9 > 30)
  {
    goto LABEL_31;
  }

  if (v9 != -1)
  {
    goto LABEL_20;
  }

  if (_LogCategory_Initialize())
  {
    v10 = *(v8 + 17);
LABEL_20:
    LogPrintF();
  }

LABEL_31:

  objc_autoreleasePoolPop(v7);
}

void _btPairingAgentUserConfirmationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  v9 = a5;
  v18 = 0;
  v17 = 0;
  memset(v19, 0, sizeof(v19));
  dispatch_assert_queue_V2(*(v9 + 23));
  __s1 = 0;
  AddressString_0 = softLinkBTDeviceGetAddressString_0(a2, &__s1, 32);
  if (AddressString_0)
  {
    _btPairingAgentUserConfirmationHandler_cold_1(AddressString_0, v9);
    goto LABEL_8;
  }

  v11 = strcmp(&__s1, v9 + 8);
  v12 = **(v9 + 17);
  if (!v11)
  {
    if (v12 <= 30)
    {
      if (v12 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        v15 = *(v9 + 17);
      }

      LogPrintF();
    }

LABEL_7:
    softLinkBTPairingAgentAcceptSSP(a1, a2, 0);
    goto LABEL_8;
  }

  if (v12 <= 30)
  {
    if (v12 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      v14 = *(v9 + 17);
    }

    LogPrintF();
  }

LABEL_8:

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x1E69E9840];
}

Class initWPClient()
{
  if (WirelessProximityLibrary_sOnce_2 != -1)
  {
    initWPClient_cold_1();
  }

  result = objc_getClass("WPClient");
  classWPClient = result;
  getWPClientClass = WPClientFunction;
  return result;
}

void *__WirelessProximityLibrary_block_invoke_2()
{
  result = dlopen("/System/Library/PrivateFrameworks/WirelessProximity.framework/WirelessProximity", 2);
  WirelessProximityLibrary_sLib_2 = result;
  return result;
}

uint64_t initBTSessionAttachWithQueue_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = MobileBluetoothLibrary_sOnce_0;
  v8 = a4;
  if (v7 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  softLinkBTSessionAttachWithQueue_0 = dlsym(MobileBluetoothLibrary_sLib_0, "BTSessionAttachWithQueue");
  v9 = (softLinkBTSessionAttachWithQueue_0)(a1, a2, a3, v8);

  return v9;
}

uint64_t initBTServiceAddCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib_0, "BTServiceAddCallbacks");
  softLinkBTServiceAddCallbacks = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceAddressFromString_0(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceAddressFromString");
  softLinkBTDeviceAddressFromString_0 = v4;

  return (v4)(a1, a2);
}

uint64_t initBTDeviceFromAddress(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceFromAddress");
  softLinkBTDeviceFromAddress = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceGetAddressString_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceGetAddressString");
  softLinkBTDeviceGetAddressString_0 = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceGetPairingStatus_0(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceGetPairingStatus");
  softLinkBTDeviceGetPairingStatus_0 = v4;

  return (v4)(a1, a2);
}

uint64_t initBTDeviceGetName_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceGetName");
  softLinkBTDeviceGetName_0 = v6;

  return (v6)(a1, a2, a3);
}

uint64_t initBTDeviceGetDeviceId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v10 = dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceGetDeviceId");
  softLinkBTDeviceGetDeviceId = v10;

  return (v10)(a1, a2, a3, a4, a5);
}

uint64_t initBTAccessoryManagerGetDefault(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_0, "BTAccessoryManagerGetDefault");
  softLinkBTAccessoryManagerGetDefault = v4;

  return (v4)(a1, a2);
}

uint64_t initBTAccessoryManagerGetFeatureCapability(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v8 = dlsym(MobileBluetoothLibrary_sLib_0, "BTAccessoryManagerGetFeatureCapability");
  softLinkBTAccessoryManagerGetFeatureCapability = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t initBTPairingAgentCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v8 = dlsym(MobileBluetoothLibrary_sLib_0, "BTPairingAgentCreate");
  softLinkBTPairingAgentCreate = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t initBTPairingAgentStart(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib_0, "BTPairingAgentStart");
  softLinkBTPairingAgentStart = v2;

  return (v2)(a1);
}

void *__MobileBluetoothLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileBluetooth.framework/MobileBluetooth", 2);
  MobileBluetoothLibrary_sLib_0 = result;
  return result;
}

uint64_t initBTDeviceConfigureLinkKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v8 = dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceConfigureLinkKey");
  softLinkBTDeviceConfigureLinkKey = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t initBTDeviceConnectServicesWithParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v8 = dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceConnectServicesWithParameters");
  softLinkBTDeviceConnectServicesWithParameters = v8;

  return (v8)(a1, a2, a3, a4);
}

uint64_t initBTDeviceConnectServices(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceConnectServices");
  softLinkBTDeviceConnectServices = v4;

  return (v4)(a1, a2);
}

uint64_t initBTDeviceDisconnect(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib_0, "BTDeviceDisconnect");
  softLinkBTDeviceDisconnect = v2;

  return (v2)(a1);
}

uint64_t initBTPairingAgentDeletePairedDevice(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_0, "BTPairingAgentDeletePairedDevice");
  softLinkBTPairingAgentDeletePairedDevice = v4;

  return (v4)(a1, a2);
}

uint64_t initBTPairingAgentCancelPairing(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib_0, "BTPairingAgentCancelPairing");
  softLinkBTPairingAgentCancelPairing = v2;

  return (v2)(a1);
}

uint64_t initBTPairingAgentStop(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib_0, "BTPairingAgentStop");
  softLinkBTPairingAgentStop = v2;

  return (v2)(a1);
}

uint64_t initBTPairingAgentDestroy(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib_0, "BTPairingAgentDestroy");
  softLinkBTPairingAgentDestroy = v2;

  return (v2)(a1);
}

uint64_t initBTServiceRemoveCallbacks(uint64_t a1, uint64_t a2)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v4 = dlsym(MobileBluetoothLibrary_sLib_0, "BTServiceRemoveCallbacks");
  softLinkBTServiceRemoveCallbacks = v4;

  return (v4)(a1, a2);
}

uint64_t initBTSessionDetachWithQueue_0(uint64_t a1)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v2 = dlsym(MobileBluetoothLibrary_sLib_0, "BTSessionDetachWithQueue");
  softLinkBTSessionDetachWithQueue_0 = v2;

  return (v2)(a1);
}

uint64_t initBTPairingAgentAcceptSSP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MobileBluetoothLibrary_sOnce_0 != -1)
  {
    initBTSessionAttachWithQueue_cold_1_0();
  }

  v6 = dlsym(MobileBluetoothLibrary_sLib_0, "BTPairingAgentAcceptSSP");
  softLinkBTPairingAgentAcceptSSP = v6;

  return (v6)(a1, a2, a3);
}

const char *BTServiceSpecificEventToString(int a1)
{
  if (a1 > 500)
  {
    if (a1 > 507)
    {
      if (a1 > 510)
      {
        if (a1 > 600)
        {
          if (a1 == 601)
          {
            return "BT_SERVICE_SENSOR_RSSI";
          }

          if (a1 == 701)
          {
            return "BT_SERVICE_LMP_NAME_CHANGED";
          }
        }

        else
        {
          if (a1 == 511)
          {
            return "BT_SERVICE_REMOTE_REWIND_START";
          }

          if (a1 == 512)
          {
            return "BT_SERVICE_REMOTE_REWIND_STOP";
          }
        }

        return "?";
      }

      if (a1 == 508)
      {
        return "BT_SERVICE_REMOTE_MUTE";
      }

      else if (a1 == 509)
      {
        return "BT_SERVICE_REMOTE_FASTFORWARD_START";
      }

      else
      {
        return "BT_SERVICE_REMOTE_FASTFORWARD_STOP";
      }
    }

    else if (a1 <= 503)
    {
      if (a1 == 501)
      {
        return "BT_SERVICE_REMOTE_PLAY";
      }

      else if (a1 == 502)
      {
        return "BT_SERVICE_REMOTE_PAUSE";
      }

      else
      {
        return "BT_SERVICE_REMOTE_STOP";
      }
    }

    else if (a1 > 505)
    {
      if (a1 == 506)
      {
        return "BT_SERVICE_REMOTE_VOL_UP";
      }

      else
      {
        return "BT_SERVICE_REMOTE_VOL_DOWN";
      }
    }

    else if (a1 == 504)
    {
      return "BT_SERVICE_REMOTE_PREVIOUS";
    }

    else
    {
      return "BT_SERVICE_REMOTE_NEXT";
    }
  }

  else
  {
    if (a1 > 102)
    {
      if (a1 <= 201)
      {
        switch(a1)
        {
          case 103:
            return "BT_SERVICE_HANDSFREE_START_VOICE_COMMAND";
          case 104:
            return "BT_SERVICE_HANDSFREE_END_VOICE_COMMAND";
          case 201:
            return "BT_SERVICE_A2DP_AUDIO_CONNECTED";
        }
      }

      else if (a1 > 301)
      {
        if (a1 == 302)
        {
          return "BT_SERVICE_PHONE_BOOK_SEND_COMPLETE";
        }

        if (a1 == 303)
        {
          return "BT_SERVICE_PHONE_BOOK_SYNC_SUPPORTED";
        }
      }

      else
      {
        if (a1 == 202)
        {
          return "BT_SERVICE_A2DP_AUDIO_DISCONNECTED";
        }

        if (a1 == 301)
        {
          return "BT_SERVICE_PHONE_BOOK_SEND_INITIATED";
        }
      }

      return "?";
    }

    if (a1 <= 10)
    {
      switch(a1)
      {
        case 0:
          return "BT_SERVICE_SDP";
        case 1:
          return "BT_SERVICE_CONNECTION_ATTEMPT";
        case 2:
          return "BT_SERVICE_DISCONNECTION_ATTEMPT";
      }

      return "?";
    }

    if (a1 <= 100)
    {
      if (a1 == 11)
      {
        return "BT_SERVICE_CONNECTION_RESULT";
      }

      if (a1 == 12)
      {
        return "BT_SERVICE_DISCONNECTION_RESULT";
      }

      return "?";
    }

    if (a1 == 101)
    {
      return "BT_SERVICE_HANDSFREE_AUDIO_CONNECTED";
    }

    else
    {
      return "BT_SERVICE_HANDSFREE_AUDIO_DISCONNECTED";
    }
  }
}

unsigned int *OUTLINED_FUNCTION_1_13(unsigned int **a1)
{
  result = *a1;
  v2 = *result;
  return result;
}

void sub_1A9720CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  objc_sync_exit(v15);
  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SFAddSuffixForCurrentDeviceClass(void *a1)
{
  v1 = SFDeviceClassCodeGet_sOnce;
  v2 = a1;
  if (v1 != -1)
  {
    [SFNotificationInfo mediumBubbleVersion];
  }

  v3 = SFAddSuffixForDeviceClass(v2, SFDeviceClassCodeGet_sResult);

  return v3;
}

uint64_t SFAddSuffixForDeviceClass(void *a1, const char *a2)
{
  if ((a2 - 1) > 6)
  {
    v2 = @"_IPHONE";
  }

  else
  {
    v2 = off_1E788EC30[(a2 - 1)];
  }

  return [a1 stringByAppendingString:v2];
}

id NSDataFromHexString(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [MEMORY[0x1E695DF88] dataWithCapacity:v2 >> 1];
  v10 = 0;
  v4 = [v1 UTF8String];
  v8 = 0;
  if (v2)
  {
    v5 = 0;
    v6 = v4 + 1;
    do
    {
      *__str = *(v6 - 1);
      v5 += 2;
      v8 = strtoul(__str, 0, 16);
      [v3 appendBytes:&v8 length:1];
      v6 += 2;
    }

    while (v5 < v2);
  }

  return v3;
}

uint64_t __SFDeviceClassCodeGet_block_invoke()
{
  result = MGGetSInt32Answer();
  v1 = result - 1;
  if (result - 1) <= 0xA && ((0x46Fu >> v1))
  {
    SFDeviceClassCodeGet_sResult = byte_1A998F45E[v1];
  }

  return result;
}

uint64_t SFDeviceColorCodeGet()
{
  if (SFDeviceColorCodeGet_sOnce != -1)
  {
    SFDeviceColorCodeGet_cold_1();
  }

  return SFDeviceColorCodeGet_sResult;
}

void __SFDeviceColorCodeGet_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    if (SFDeviceClassCodeGet_sOnce != -1)
    {
      [SFNotificationInfo mediumBubbleVersion];
    }

    if (SFDeviceClassCodeGet_sResult == 4)
    {
      SFDeviceColorCodeGet_sResult = [v1 intValue];
    }

    CFRelease(v1);
  }
}

uint64_t SFDeviceHomeButtonType()
{
  if (SFDeviceHomeButtonType_sOnce != -1)
  {
    SFDeviceHomeButtonType_cold_1();
  }

  return SFDeviceHomeButtonType_sType;
}

uint64_t __SFDeviceHomeButtonType_block_invoke()
{
  result = MGGetSInt32Answer();
  if (result <= 2)
  {
    SFDeviceHomeButtonType_sType = result + 1;
  }

  return result;
}

uint64_t SFDeviceModelCodeGet()
{
  if (SFDeviceModelCodeGet_sOnce != -1)
  {
    SFDeviceModelCodeGet_cold_1();
  }

  return SFDeviceModelCodeGet_sResult;
}

void __SFDeviceModelCodeGet_block_invoke()
{
  v3 = GestaltCopyAnswer();
  if ([v3 isEqual:{@"iPhone10, 3"}] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone10,6") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone11,2") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone11,4") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone11,6") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone11,8") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone12,1") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone12,3") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone12,5") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone13,1") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone13,2") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone13,3") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone13,4") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone14,2") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone14,3") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone14,4") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone14,5") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone14,7") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone14,8") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone15,2") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone15,3") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone15,4") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone15,5") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone16,1") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone16,2"))
  {
    v0 = 1;
LABEL_27:
    SFDeviceModelCodeGet_sResult = v0;
    v1 = v3;
    goto LABEL_28;
  }

  if ([v3 isEqual:{@"iPhone8, 4"}] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone6,1") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPhone6,2"))
  {
    v0 = 2;
    goto LABEL_27;
  }

  if ([v3 isEqual:{@"iPad8, 1"}] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad8,2") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad8,3") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad8,4") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad8,5") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad8,6") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad8,7") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad8,8") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad8,9") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad8,10") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad8,11") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad8,12") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad13,1") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad13,2") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad13,4") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad13,5") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad13,6") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad13,7") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad13,8") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad13,9") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad13,10") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad13,11") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad14,1") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad14,2") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad13,16") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad13,17") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad13,18") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad13,19") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad14,3") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad14,4") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad14,5") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad14,6") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad16,3") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad16,4") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad16,5") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad16,6") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad14,8") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad14,9") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad14,10") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPad14,11"))
  {
    v0 = 3;
    goto LABEL_27;
  }

  if ([v3 isEqual:{@"iPod7, 1"}] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"iPod9,1"))
  {
    v0 = 4;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:{@"AudioAccessory5, 1"}])
  {
    v0 = 5;
    goto LABEL_27;
  }

  if ([v3 isEqualToString:{@"AudioAccessory6, 1"}] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"AudioAccessory99,1") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"AudioAccessory99,2"))
  {
    v0 = 6;
    goto LABEL_27;
  }

  v2 = [v3 isEqualToString:{@"AppleTV14, 1"}];
  v1 = v3;
  if (v2)
  {
    v0 = 7;
    goto LABEL_27;
  }

LABEL_28:
}

id SFErrorF()
{
  v0 = *MEMORY[0x1E696A768];
  v1 = NSErrorV();
  if (!v1)
  {
    v1 = NSErrorF();
  }

  return v1;
}

id SFNestedErrorF()
{
  v0 = *MEMORY[0x1E696A768];
  v1 = NSErrorNestedV();
  if (!v1)
  {
    v1 = NSErrorF();
  }

  return v1;
}

id SFHighPriorityQueue()
{
  if (SFHighPriorityQueue_sOnce != -1)
  {
    SFHighPriorityQueue_cold_1();
  }

  v0 = SFHighPriorityQueue_sQueue;
  if (SFHighPriorityQueue_sQueue)
  {

    return v0;
  }

  else
  {
    v2 = SFHighPriorityQueue_cold_2();
    return __SFHighPriorityQueue_block_invoke(v2);
  }
}

void __SFHighPriorityQueue_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  memset(&v5, 0, sizeof(v5));
  pthread_attr_init(&v5);
  pthread_attr_set_qos_class_np(&v5, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_pthread_root_queue_create();
  pthread_attr_destroy(&v5);
  v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v2 = dispatch_queue_create_with_target_V2("com.apple.sharing.HighPriority", v1, v0);
  v3 = SFHighPriorityQueue_sQueue;
  SFHighPriorityQueue_sQueue = v2;

  v4 = *MEMORY[0x1E69E9840];
}

id SFHomePodDisplayNameForDeviceName(void *a1)
{
  v1 = a1;
  v2 = SFLocalizedStringForKey(@"HOMEPOD_HANDOFF_HEADER_DEFAULT");
  v3 = v1;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 lowercaseString];
    if (([v6 hasSuffix:@"homepod"] & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v8 = [v5 stringByTrimmingCharactersInSet:v7];

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v8, v2];

      v5 = v9;
    }
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

id SFLocalizedNameForBluetoothProductID(uint64_t a1)
{
  if (((a1 - 8194) > 0xE || ((1 << (a1 - 2)) & 0x7F9B) == 0) && a1 != 0x10000)
  {
    v15 = [[SFHeadphoneProduct alloc] initWithProductID:a1];
    v16 = [(SFHeadphoneProduct *)v15 supportsMobileAsset];

    if (!v16)
    {
      goto LABEL_11;
    }
  }

  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.Sharing"];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Localizable-PID_%u", a1];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"PRODUCT_NAME_PID_%u", a1];
  v6 = SFLocalizedStringEx(v3, v4, v5);
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_10;
  }

  if ((v7 != 0) != (v8 == 0))
  {
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_10:

LABEL_11:
    if ((a1 - 8194) <= 0xD && ((1 << (a1 - 2)) & 0x3001) != 0 || a1 == 0x10000 || (v11 = [[SFHeadphoneProduct alloc] initWithProductID:a1], v12 = [(SFHeadphoneProduct *)v11 isAirPods], v11, v12))
    {
      v13 = @"AIRPODS";
LABEL_16:
      v9 = SFLocalizedStringForKey(v13);
      goto LABEL_19;
    }

    if (a1 > 8197)
    {
      if (a1 == 8198)
      {
        v13 = @"BEATS_SOLO3_WIRELESS";
        goto LABEL_16;
      }

      if (a1 == 8201)
      {
        v13 = @"BEATS_STUDIO3_WIRELESS";
        goto LABEL_16;
      }
    }

    else
    {
      if (a1 == 8195)
      {
        v13 = @"POWERBEATS3_WIRELESS";
        goto LABEL_16;
      }

      if (a1 == 8197)
      {
        v13 = @"BEATSX";
        goto LABEL_16;
      }
    }

    v13 = @"AUDIO_ACCESSORY";
    goto LABEL_16;
  }

LABEL_18:
LABEL_19:

  return v9;
}

void *SFLocalizedStringEx(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (SFIsGreenTeaDevice())
  {
    v8 = [v7 stringByAppendingString:@"_GT"];
    v9 = [v5 localizedStringForKey:v8 value:@"_GT" table:v6];

    if (![v9 isEqual:@"_GT"])
    {
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_5:
  if (![v9 length])
  {
    v10 = [v5 localizedStringForKey:v7 value:&stru_1F1D30528 table:v6];

    v9 = v10;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  return v11;
}

double SFMeasureCPUDuration(void *a1)
{
  memset(&v4, 0, sizeof(v4));
  v1 = a1;
  getrusage(0, &v4);
  v2 = v4.ru_utime.tv_sec + v4.ru_utime.tv_usec * 0.000001 + v4.ru_stime.tv_sec + v4.ru_stime.tv_usec * 0.000001;
  v1[2](v1);

  memset(&v4, 0, sizeof(v4));
  getrusage(0, &v4);
  return v4.ru_utime.tv_sec + v4.ru_utime.tv_usec * 0.000001 + v4.ru_stime.tv_sec + v4.ru_stime.tv_usec * 0.000001 - v2;
}

id SFMyAltDSID()
{
  v0 = objc_alloc_init(getACAccountStoreClass_0());
  v1 = [v0 aa_primaryAppleAccount];
  v2 = [v1 aa_altDSID];

  return v2;
}

id SFNormalizedUserIdentifiersForContactIdentifierEx(void *a1, int a2, id *a3, _BYTE *a4)
{
  v74[3] = *MEMORY[0x1E69E9840];
  v45 = a1;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__9;
  v67 = __Block_byref_object_dispose__9;
  v68 = 0;
  v46 = objc_alloc_init(getCNContactStoreClass());
  v5 = getCNContactEmailAddressesKey();
  v74[0] = v5;
  v6 = getCNContactInstantMessageAddressesKey();
  v74[1] = v6;
  v7 = getCNContactPhoneNumbersKey();
  v74[2] = v7;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:3];

  if (a3)
  {
    v8 = [(objc_class *)getCNContactFormatterClass() descriptorForRequiredKeysForStyle:0];
    v73 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];

    if (v9)
    {
      v10 = [v48 arrayByAddingObjectsFromArray:v9];

      v48 = v10;
    }
  }

  v47 = [objc_alloc(getCNContactFetchRequestClass()) initWithKeysToFetch:v48];
  CNContactClass = getCNContactClass();
  v72 = v45;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
  v13 = [(objc_class *)CNContactClass predicateForContactsWithIdentifiers:v12];
  [v47 setPredicate:v13];

  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __SFNormalizedUserIdentifiersForContactIdentifierEx_block_invoke;
  v62[3] = &unk_1E788EB70;
  v62[4] = &v63;
  [v46 enumerateContactsWithFetchRequest:v47 error:0 usingBlock:v62];
  if (v64[5])
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v15 = [v64[5] emailAddresses];
    v16 = [v15 countByEnumeratingWithState:&v58 objects:v71 count:16];
    if (v16)
    {
      v17 = *v59;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v59 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = [*(*(&v58 + 1) + 8 * i) value];
          v20 = SFNormalizeEmailAddress(v19, a2);

          if (([v14 containsObject:v20] & 1) == 0)
          {
            [v14 addObject:v20];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v58 objects:v71 count:16];
      }

      while (v16);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v21 = [v64[5] instantMessageAddresses];
    v22 = [v21 countByEnumeratingWithState:&v54 objects:v70 count:16];
    if (v22)
    {
      v23 = *v55;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v55 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = [*(*(&v54 + 1) + 8 * j) value];
          v26 = [v25 username];
          [v26 rangeOfString:@"@"];
          if (v27)
          {
            v28 = SFNormalizeEmailAddress(v26, a2);
            if (([v14 containsObject:v28] & 1) == 0)
            {
              [v14 addObject:v28];
            }
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v54 objects:v70 count:16];
      }

      while (v22);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v29 = [v64[5] phoneNumbers];
    v30 = [v29 countByEnumeratingWithState:&v50 objects:v69 count:16];
    if (v30)
    {
      v31 = *v51;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v51 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = [*(*(&v50 + 1) + 8 * k) value];
          v34 = [v33 stringValue];
          v35 = SFNormalizePhoneNumber(v34);

          if (v35 && ([v14 containsObject:v35] & 1) == 0)
          {
            [v14 addObject:v35];
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v50 objects:v69 count:16];
      }

      while (v30);
    }

    v49 = 0;
    v36 = [v46 _crossPlatformUnifiedMeContactWithKeysToFetch:v48 error:&v49];
    v37 = v49;
    v38 = a3;
    if (a4 && !v37 && v36)
    {
      v39 = [v36 identifier];
      v40 = [v39 isEqualToString:v45];

      v38 = a3;
      *a4 = v40;
    }

    if (v38)
    {
      objc_storeStrong(v38, v64[5]);
    }
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v63, 8);
  v41 = *MEMORY[0x1E69E9840];

  return v14;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SFNormalizeEmailAddress(void *a1, int a2)
{
  v3 = [a1 lowercaseString];
  v4 = v3;
  if (a2 && (([v3 hasSuffix:@"@me.com"] & 1) != 0 || objc_msgSend(v4, "hasSuffix:", @"@mac.com")))
  {
    v5 = [v4 componentsSeparatedByString:@"@"];
    if ([v5 count])
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = [v5 objectAtIndexedSubscript:0];
      v8 = [v6 stringWithFormat:@"%@@icloud.com", v7];
    }

    else
    {
      v8 = v4;
    }
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

const __CFArray *SFShareablePasswordForSSID(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x1E695E480];
  v3 = WiFiManagerClientCreate();
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __SFShareablePasswordForSSID_block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v3;
    v4 = _Block_copy(aBlock);
    v5 = WiFiManagerClientCopyNetworks();
    v6 = v5;
    if (v5)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __SFShareablePasswordForSSID_block_invoke_2;
      v13[3] = &__block_descriptor_40_e5_v8__0l;
      v13[4] = v5;
      v7 = _Block_copy(v13);
      for (i = 0; ; ++i)
      {
        if (i >= CFArrayGetCount(v6))
        {
          goto LABEL_12;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        SSID = WiFiNetworkGetSSID();
        if (SSID)
        {
          if (CFEqual(v1, SSID))
          {
            break;
          }
        }
      }

      v11 = CFRetain(ValueAtIndex);
      if (!v11)
      {
LABEL_12:
        v6 = 0;
        goto LABEL_15;
      }

      if (WiFiNetworkGetShareMode() == 3)
      {
        v6 = WiFiNetworkCopyShareablePassword();
      }

      else
      {
        v6 = 0;
      }

      CFRelease(v11);
LABEL_15:
      v7[2](v7);
    }

    v4[2](v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1A9724314(_Unwind_Exception *a1)
{
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

void __SFShareablePasswordForSSID_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __SFShareablePasswordForSSID_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

BOOL SFStringContainsOnlyPhoneNumberCharacters(void *a1)
{
  v1 = MEMORY[0x1E696AD48];
  v2 = a1;
  v3 = [v1 decimalDigitCharacterSet];
  v4 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"()+-#* "];
  [v3 formUnionWithCharacterSet:v4];

  v5 = [v3 invertedSet];
  v6 = [v2 rangeOfCharacterFromSet:v5];

  return v6 == 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t SFWiFiChannelToIndex(unsigned int a1)
{
  if (a1 > 0xA5)
  {
    return 0;
  }

  else
  {
    return SFWiFiChannelToIndexMap[a1];
  }
}

uint64_t SFWiFiIndexToChannel(unsigned int a1)
{
  if (a1 > 0x26)
  {
    return 0;
  }

  else
  {
    return SFWiFiIndexToChannelMap[a1];
  }
}

id SFBase64StringFromHexString(void *a1)
{
  v1 = NSDataFromHexString(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 base64EncodedStringWithOptions:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id SFCombinedHashFromArray(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = v2;
    v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v5 = 0;
    do
    {
      v6 = [v1 objectAtIndexedSubscript:v5];
      v7 = SFBase64StringFromHexString(v6);

      if (v7)
      {
        [v4 appendString:v7];
      }

      if (v3 != 1)
      {
        [v4 appendString:{@", "}];
      }

      ++v5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t SFTestFlagsFromString(void *a1)
{
  strlen([a1 UTF8String]);
  v1 = 1;
  while (TextSep())
  {
    if (strnicmpx())
    {
      if (strnicmpx())
      {
        if (strnicmpx())
        {
          if (strnicmpx())
          {
            if (strnicmpx())
            {
              if (strnicmpx())
              {
                if (strnicmpx())
                {
                  if (strnicmpx())
                  {
                    if (strnicmpx())
                    {
                      if (strnicmpx())
                      {
                        if (strnicmpx())
                        {
                          if (strnicmpx())
                          {
                            if (strnicmpx())
                            {
                              if (strnicmpx())
                              {
                                if (strnicmpx())
                                {
                                  if (strnicmpx())
                                  {
                                    if (strnicmpx())
                                    {
                                      if (strnicmpx())
                                      {
                                        if (strnicmpx())
                                        {
                                          if (strnicmpx())
                                          {
                                            if (strnicmpx())
                                            {
                                              if (strnicmpx())
                                              {
                                                if (strnicmpx())
                                                {
                                                  if (strnicmpx())
                                                  {
                                                    if (strnicmpx())
                                                    {
                                                      if (strnicmp_prefix())
                                                      {
                                                        if (strnicmp_prefix())
                                                        {
                                                          if (strnicmp_prefix())
                                                          {
                                                            if (strnicmp_prefix())
                                                            {
                                                              if (strnicmp_prefix())
                                                              {
                                                                if (strnicmp_prefix())
                                                                {
                                                                  if (strnicmp_prefix())
                                                                  {
                                                                    if (strnicmpx())
                                                                    {
                                                                      if (strnicmpx())
                                                                      {
                                                                        if (strnicmpx())
                                                                        {
                                                                          if (strnicmpx())
                                                                          {
                                                                            if (strnicmpx())
                                                                            {
                                                                              if (strnicmpx())
                                                                              {
                                                                                if (strnicmpx())
                                                                                {
                                                                                  if (strnicmpx())
                                                                                  {
                                                                                    if (!strnicmpx())
                                                                                    {
                                                                                      v1 |= 0x10000000000uLL;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v1 |= 0x8000000000uLL;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v1 |= 0x4000000000uLL;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v1 |= 0x2000000000uLL;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v1 |= 0x1000000000uLL;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v1 |= 0x800000000uLL;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v1 |= 0x400000000uLL;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v1 |= 0x200000000uLL;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v1 |= 0x100000000uLL;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v1 |= 0x80000000uLL;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v1 |= 0x20000000uLL;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v1 |= 0x10000000uLL;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v1 |= 0x8000000uLL;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v1 |= 0x4000000uLL;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v1 |= 0x40000000uLL;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v1 |= 0x2000000uLL;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v1 |= 0x1000000uLL;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v1 |= 0x800000uLL;
                                                  }
                                                }

                                                else
                                                {
                                                  v1 |= 0x400000uLL;
                                                }
                                              }

                                              else
                                              {
                                                v1 |= 0x200000uLL;
                                              }
                                            }

                                            else
                                            {
                                              v1 |= 0x100000uLL;
                                            }
                                          }

                                          else
                                          {
                                            v1 |= 0x80000uLL;
                                          }
                                        }

                                        else
                                        {
                                          v1 |= 0x20000000000uLL;
                                        }
                                      }

                                      else
                                      {
                                        v1 |= 0x40000uLL;
                                      }
                                    }

                                    else
                                    {
                                      v1 |= 0x20000uLL;
                                    }
                                  }

                                  else
                                  {
                                    v1 |= 0x10000uLL;
                                  }
                                }

                                else
                                {
                                  v1 |= 0x8000uLL;
                                }
                              }

                              else
                              {
                                v1 |= 0x4000uLL;
                              }
                            }

                            else
                            {
                              v1 |= 0x2000uLL;
                            }
                          }

                          else
                          {
                            v1 |= 0x1000uLL;
                          }
                        }

                        else
                        {
                          v1 |= 0x800uLL;
                        }
                      }

                      else
                      {
                        v1 |= 0x400uLL;
                      }
                    }

                    else
                    {
                      v1 |= 0x200uLL;
                    }
                  }

                  else
                  {
                    v1 |= 0x100uLL;
                  }
                }

                else
                {
                  v1 |= 0x80uLL;
                }
              }

              else
              {
                v1 |= 0x40uLL;
              }
            }

            else
            {
              v1 |= 0x20uLL;
            }
          }

          else
          {
            v1 |= 0x10uLL;
          }
        }

        else
        {
          v1 |= 8uLL;
        }
      }

      else
      {
        v1 |= 4uLL;
      }
    }

    else
    {
      v1 |= 2uLL;
    }
  }

  return v1;
}

void SFAWDEnsureInitialized()
{
  if (SFAWDEnsureInitialized_sOnce != -1)
  {
    SFAWDEnsureInitialized_cold_1();
  }
}

void __SFAWDEnsureInitialized_block_invoke()
{
  v0 = [objc_alloc(getAWDServerConnectionClass()) initWithComponentId:64];
  v1 = gSFAWDServerConnection;
  gSFAWDServerConnection = v0;

  if (gSFAWDServerConnection)
  {
    if (gLogCategory_Report <= 40 && (gLogCategory_Report != -1 || _LogCategory_Initialize()))
    {
      __SFAWDEnsureInitialized_block_invoke_cold_1();
    }
  }

  else if (gLogCategory_Report <= 50 && (gLogCategory_Report != -1 || _LogCategory_Initialize()))
  {
    __SFAWDEnsureInitialized_block_invoke_cold_2();
  }
}

void SFAWDSubmit(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_autoreleasePoolPush();
  if (SFAWDEnsureInitialized_sOnce != -1)
  {
    SFAWDEnsureInitialized_cold_1();
  }

  if (!gSFAWDServerConnection)
  {
    if (gLogCategory_Report <= 20 && (gLogCategory_Report != -1 || _LogCategory_Initialize()))
    {
      SFAWDSubmit_cold_6();
    }

    goto LABEL_25;
  }

  v4 = [gSFAWDServerConnection newMetricContainerWithIdentifier:a1];
  if (!v4)
  {
    if (gLogCategory_Report <= 20 && (gLogCategory_Report != -1 || _LogCategory_Initialize()))
    {
      SFAWDSubmit_cold_5();
    }

LABEL_25:
    v5 = 0;
LABEL_26:
    v7 = 0;
    goto LABEL_14;
  }

  v5 = v4;
  v6 = v8[2]();
  if (!v6)
  {
    if (gLogCategory_Report <= 50 && (gLogCategory_Report != -1 || _LogCategory_Initialize()))
    {
      SFAWDSubmit_cold_4();
    }

    goto LABEL_26;
  }

  v7 = v6;
  [v5 setMetric:v6];
  if ([gSFAWDServerConnection submitMetric:v5])
  {
    if (gLogCategory_Report <= 40 && (gLogCategory_Report != -1 || _LogCategory_Initialize()))
    {
      SFAWDSubmit_cold_3();
    }
  }

  else if (gLogCategory_Report <= 40 && (gLogCategory_Report != -1 || _LogCategory_Initialize()))
  {
    SFAWDSubmit_cold_2();
  }

LABEL_14:

  objc_autoreleasePoolPop(v3);
}

void __SFPowerLogEvent_block_invoke()
{
  v0 = dispatch_queue_create("PowerLogQueue", 0);
  v1 = SFPowerLogEvent_sPowerLogQueue;
  SFPowerLogEvent_sPowerLogQueue = v0;
}

void SFPowerLogTimeSensitiveEvent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (gLogCategory_Report <= 20 && (gLogCategory_Report != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (SFPowerLogTimeSensitiveEvent_sOnce != -1)
  {
    SFPowerLogTimeSensitiveEvent_cold_1();
  }

  v5 = SFPowerLogTimeSensitiveEvent_sPowerLogQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SFPowerLogTimeSensitiveEvent_block_invoke_2;
  block[3] = &unk_1E788A658;
  v9 = v3;
  v10 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, block);
}

void __SFPowerLogTimeSensitiveEvent_block_invoke()
{
  v0 = dispatch_queue_create("PowerLogSensitiveQueue", 0);
  v1 = SFPowerLogTimeSensitiveEvent_sPowerLogQueue;
  SFPowerLogTimeSensitiveEvent_sPowerLogQueue = v0;
}

Class initACAccountStore_0()
{
  if (AccountsLibrary_sOnce_0 != -1)
  {
    initACAccountStore_cold_1_0();
  }

  result = objc_getClass("ACAccountStore");
  classACAccountStore_0 = result;
  getACAccountStoreClass_0 = ACAccountStoreFunction_0;
  return result;
}

void *__AccountsLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 2);
  AccountsLibrary_sLib_0 = result;
  return result;
}

Class initCNContactStore()
{
  if (ContactsLibrary_sOnce != -1)
  {
    initCNContactStore_cold_1();
  }

  result = objc_getClass("CNContactStore");
  classCNContactStore = result;
  getCNContactStoreClass = CNContactStoreFunction;
  return result;
}

void *__ContactsLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/Contacts.framework/Contacts", 2);
  ContactsLibrary_sLib = result;
  return result;
}

id initValCNContactEmailAddressesKey()
{
  if (softLinkOnceCNContactEmailAddressesKey != -1)
  {
    initValCNContactEmailAddressesKey_cold_1();
  }

  v1 = constantValCNContactEmailAddressesKey;

  return v1;
}

void __initValCNContactEmailAddressesKey_block_invoke()
{
  if (ContactsLibrary_sOnce != -1)
  {
    initCNContactStore_cold_1();
  }

  v0 = dlsym(ContactsLibrary_sLib, "CNContactEmailAddressesKey");
  if (v0)
  {
    objc_storeStrong(&constantValCNContactEmailAddressesKey, *v0);
  }

  getCNContactEmailAddressesKey = CNContactEmailAddressesKeyFunction;
}

id initValCNContactInstantMessageAddressesKey()
{
  if (softLinkOnceCNContactInstantMessageAddressesKey != -1)
  {
    initValCNContactInstantMessageAddressesKey_cold_1();
  }

  v1 = constantValCNContactInstantMessageAddressesKey;

  return v1;
}

void __initValCNContactInstantMessageAddressesKey_block_invoke()
{
  if (ContactsLibrary_sOnce != -1)
  {
    initCNContactStore_cold_1();
  }

  v0 = dlsym(ContactsLibrary_sLib, "CNContactInstantMessageAddressesKey");
  if (v0)
  {
    objc_storeStrong(&constantValCNContactInstantMessageAddressesKey, *v0);
  }

  getCNContactInstantMessageAddressesKey = CNContactInstantMessageAddressesKeyFunction;
}

id initValCNContactPhoneNumbersKey()
{
  if (softLinkOnceCNContactPhoneNumbersKey != -1)
  {
    initValCNContactPhoneNumbersKey_cold_1();
  }

  v1 = constantValCNContactPhoneNumbersKey;

  return v1;
}

void __initValCNContactPhoneNumbersKey_block_invoke()
{
  if (ContactsLibrary_sOnce != -1)
  {
    initCNContactStore_cold_1();
  }

  v0 = dlsym(ContactsLibrary_sLib, "CNContactPhoneNumbersKey");
  if (v0)
  {
    objc_storeStrong(&constantValCNContactPhoneNumbersKey, *v0);
  }

  getCNContactPhoneNumbersKey = CNContactPhoneNumbersKeyFunction;
}

Class initCNContactFormatter()
{
  if (ContactsLibrary_sOnce != -1)
  {
    initCNContactStore_cold_1();
  }

  result = objc_getClass("CNContactFormatter");
  classCNContactFormatter = result;
  getCNContactFormatterClass = CNContactFormatterFunction;
  return result;
}

Class initCNContactFetchRequest()
{
  if (ContactsLibrary_sOnce != -1)
  {
    initCNContactStore_cold_1();
  }

  result = objc_getClass("CNContactFetchRequest");
  classCNContactFetchRequest = result;
  getCNContactFetchRequestClass = CNContactFetchRequestFunction;
  return result;
}

Class initCNContact()
{
  if (ContactsLibrary_sOnce != -1)
  {
    initCNContactStore_cold_1();
  }

  result = objc_getClass("CNContact");
  classCNContact = result;
  getCNContactClass = CNContactFunction;
  return result;
}

Class initAWDServerConnection()
{
  if (WirelessDiagnosticsLibrary_sOnce != -1)
  {
    initAWDServerConnection_cold_1();
  }

  result = objc_getClass("AWDServerConnection");
  classAWDServerConnection = result;
  getAWDServerConnectionClass = AWDServerConnectionFunction;
  return result;
}

void *__WirelessDiagnosticsLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/WirelessDiagnostics.framework/WirelessDiagnostics", 2);
  WirelessDiagnosticsLibrary_sLib = result;
  return result;
}

uint64_t initPLLogRegisteredEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (PowerLogLibrary_sOnce != -1)
  {
    initPLLogRegisteredEvent_cold_1();
  }

  v8 = dlsym(PowerLogLibrary_sLib, "PLLogRegisteredEvent");
  softLinkPLLogRegisteredEvent = v8;

  return (v8)(a1, a2, a3, a4);
}

void *__PowerLogLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/PowerLog.framework/PowerLog", 2);
  PowerLogLibrary_sLib = result;
  return result;
}

uint64_t initPLLogTimeSensitiveRegisteredEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (PowerLogLibrary_sOnce != -1)
  {
    initPLLogRegisteredEvent_cold_1();
  }

  v8 = dlsym(PowerLogLibrary_sLib, "PLLogTimeSensitiveRegisteredEvent");
  softLinkPLLogTimeSensitiveRegisteredEvent = v8;

  return (v8)(a1, a2, a3, a4);
}

void sub_1A9729544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNContactClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  result = objc_getClass("CNContact");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNContactClass_block_invoke_cold_1();
  }

  getCNContactClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ContactsLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __ContactsLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E788ECE0;
    v3 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContactsLibraryCore_frameworkLibrary)
  {
    ContactsLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __ContactsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCNMutableContactClass_block_invoke(uint64_t a1)
{
  ContactsLibrary();
  result = objc_getClass("CNMutableContact");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNMutableContactClass_block_invoke_cold_1();
  }

  getCNMutableContactClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getINImageClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IntentsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IntentsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E788ECF8;
    v6 = 0;
    IntentsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntentsLibraryCore_frameworkLibrary)
  {
    __getINImageClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("INImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINImageClass_block_invoke_cold_1();
  }

  getINImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IntentsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IntentsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A972A59C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void sub_1A972AAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A972B538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A972BE7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A972C488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initACAccountStore_1()
{
  if (AccountsLibrary_sOnce_1 != -1)
  {
    initACAccountStore_cold_1_1();
  }

  result = objc_getClass("ACAccountStore");
  classACAccountStore_1 = result;
  getACAccountStoreClass_1 = ACAccountStoreFunction_1;
  return result;
}

void *__AccountsLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 2);
  AccountsLibrary_sLib_1 = result;
  return result;
}

Class initTRSetupCompanionAuthenticationRequest_0()
{
  if (TouchRemoteLibrary_sOnce_1 != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1_0();
  }

  result = objc_getClass("TRSetupCompanionAuthenticationRequest");
  classTRSetupCompanionAuthenticationRequest_0 = result;
  getTRSetupCompanionAuthenticationRequestClass_0 = TRSetupCompanionAuthenticationRequestFunction_0;
  return result;
}

void *__TouchRemoteLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/TouchRemote.framework/TouchRemote", 2);
  TouchRemoteLibrary_sLib_1 = result;
  return result;
}

Class initTRSetupProxyDeviceRequest_0()
{
  if (TouchRemoteLibrary_sOnce_1 != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1_0();
  }

  result = objc_getClass("TRSetupProxyDeviceRequest");
  classTRSetupProxyDeviceRequest_0 = result;
  getTRSetupProxyDeviceRequestClass_0 = TRSetupProxyDeviceRequestFunction_0;
  return result;
}

Class initTRSetupProxyAuthenticationRequest_0()
{
  if (TouchRemoteLibrary_sOnce_1 != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1_0();
  }

  result = objc_getClass("TRSetupProxyAuthenticationRequest");
  classTRSetupProxyAuthenticationRequest_0 = result;
  getTRSetupProxyAuthenticationRequestClass_0 = TRSetupProxyAuthenticationRequestFunction_0;
  return result;
}

Class initTRAnisetteDataProvider_0()
{
  if (TouchRemoteLibrary_sOnce_1 != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1_0();
  }

  result = objc_getClass("TRAnisetteDataProvider");
  classTRAnisetteDataProvider_0 = result;
  getTRAnisetteDataProviderClass_0 = TRAnisetteDataProviderFunction_0;
  return result;
}

Class initTRSetupAuthenticationResponse_0()
{
  if (TouchRemoteLibrary_sOnce_1 != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1_0();
  }

  result = objc_getClass("TRSetupAuthenticationResponse");
  classTRSetupAuthenticationResponse_0 = result;
  getTRSetupAuthenticationResponseClass_0 = TRSetupAuthenticationResponseFunction_0;
  return result;
}

Class initAKDevice_0()
{
  if (AuthKitLibrary_sOnce_0 != -1)
  {
    initAKDevice_cold_1_0();
  }

  result = objc_getClass("AKDevice");
  classAKDevice_0 = result;
  getAKDeviceClass_0 = AKDeviceFunction_0;
  return result;
}

void *__AuthKitLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/AuthKit.framework/AuthKit", 2);
  AuthKitLibrary_sLib_0 = result;
  return result;
}

Class initTRSetupProxyDeviceResponse_0()
{
  if (TouchRemoteLibrary_sOnce_1 != -1)
  {
    initTRSetupCompanionAuthenticationRequest_cold_1_0();
  }

  result = objc_getClass("TRSetupProxyDeviceResponse");
  classTRSetupProxyDeviceResponse_0 = result;
  getTRSetupProxyDeviceResponseClass_0 = TRSetupProxyDeviceResponseFunction_0;
  return result;
}

Class initAKAppleIDAuthenticationContext_0()
{
  if (AuthKitLibrary_sOnce_0 != -1)
  {
    initAKDevice_cold_1_0();
  }

  result = objc_getClass("AKAppleIDAuthenticationContext");
  classAKAppleIDAuthenticationContext_0 = result;
  getAKAppleIDAuthenticationContextClass_0 = AKAppleIDAuthenticationContextFunction_0;
  return result;
}

Class initAKAppleIDAuthenticationController_0()
{
  if (AuthKitLibrary_sOnce_0 != -1)
  {
    initAKDevice_cold_1_0();
  }

  result = objc_getClass("AKAppleIDAuthenticationController");
  classAKAppleIDAuthenticationController_0 = result;
  getAKAppleIDAuthenticationControllerClass_0 = AKAppleIDAuthenticationControllerFunction_0;
  return result;
}

id initValAKAuthenticationAlternateDSIDKey_0()
{
  if (softLinkOnceAKAuthenticationAlternateDSIDKey_0 != -1)
  {
    initValAKAuthenticationAlternateDSIDKey_cold_1_0();
  }

  v1 = constantValAKAuthenticationAlternateDSIDKey_0;

  return v1;
}

void __initValAKAuthenticationAlternateDSIDKey_block_invoke_0()
{
  if (AuthKitLibrary_sOnce_0 != -1)
  {
    initAKDevice_cold_1_0();
  }

  v0 = dlsym(AuthKitLibrary_sLib_0, "AKAuthenticationAlternateDSIDKey");
  if (v0)
  {
    objc_storeStrong(&constantValAKAuthenticationAlternateDSIDKey_0, *v0);
  }

  getAKAuthenticationAlternateDSIDKey_0 = AKAuthenticationAlternateDSIDKeyFunction_0;
}

id initValAKAuthenticationUsernameKey_0()
{
  if (softLinkOnceAKAuthenticationUsernameKey_0 != -1)
  {
    initValAKAuthenticationUsernameKey_cold_1_0();
  }

  v1 = constantValAKAuthenticationUsernameKey_0;

  return v1;
}

void __initValAKAuthenticationUsernameKey_block_invoke_0()
{
  if (AuthKitLibrary_sOnce_0 != -1)
  {
    initAKDevice_cold_1_0();
  }

  v0 = dlsym(AuthKitLibrary_sLib_0, "AKAuthenticationUsernameKey");
  if (v0)
  {
    objc_storeStrong(&constantValAKAuthenticationUsernameKey_0, *v0);
  }

  getAKAuthenticationUsernameKey_0 = AKAuthenticationUsernameKeyFunction_0;
}

id initValAKAuthenticationPasswordKey_0()
{
  if (softLinkOnceAKAuthenticationPasswordKey_0 != -1)
  {
    initValAKAuthenticationPasswordKey_cold_1_0();
  }

  v1 = constantValAKAuthenticationPasswordKey_0;

  return v1;
}

void __initValAKAuthenticationPasswordKey_block_invoke_0()
{
  if (AuthKitLibrary_sOnce_0 != -1)
  {
    initAKDevice_cold_1_0();
  }

  v0 = dlsym(AuthKitLibrary_sLib_0, "AKAuthenticationPasswordKey");
  if (v0)
  {
    objc_storeStrong(&constantValAKAuthenticationPasswordKey_0, *v0);
  }

  getAKAuthenticationPasswordKey_0 = AKAuthenticationPasswordKeyFunction_0;
}

id initValAAAccountClassPrimary()
{
  if (softLinkOnceAAAccountClassPrimary != -1)
  {
    initValAAAccountClassPrimary_cold_1();
  }

  v1 = constantValAAAccountClassPrimary;

  return v1;
}

void __initValAAAccountClassPrimary_block_invoke()
{
  if (AppleAccountLibrary_sOnce_0 != -1)
  {
    __initValAAAccountClassPrimary_block_invoke_cold_1();
  }

  v0 = dlsym(AppleAccountLibrary_sLib_0, "AAAccountClassPrimary");
  if (v0)
  {
    objc_storeStrong(&constantValAAAccountClassPrimary, *v0);
  }

  getAAAccountClassPrimary = AAAccountClassPrimaryFunction;
}

void *__AppleAccountLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleAccount.framework/AppleAccount", 2);
  AppleAccountLibrary_sLib_0 = result;
  return result;
}

id initValAAAccountClassFull()
{
  if (softLinkOnceAAAccountClassFull != -1)
  {
    initValAAAccountClassFull_cold_1();
  }

  v1 = constantValAAAccountClassFull;

  return v1;
}

void __initValAAAccountClassFull_block_invoke()
{
  if (AppleAccountLibrary_sOnce_0 != -1)
  {
    __initValAAAccountClassPrimary_block_invoke_cold_1();
  }

  v0 = dlsym(AppleAccountLibrary_sLib_0, "AAAccountClassFull");
  if (v0)
  {
    objc_storeStrong(&constantValAAAccountClassFull, *v0);
  }

  getAAAccountClassFull = AAAccountClassFullFunction;
}

Class initSSMutableAuthenticationContext_0()
{
  if (StoreServicesLibrary_sOnce_0 != -1)
  {
    initSSMutableAuthenticationContext_cold_1();
  }

  result = objc_getClass("SSMutableAuthenticationContext");
  classSSMutableAuthenticationContext_0 = result;
  getSSMutableAuthenticationContextClass_0 = SSMutableAuthenticationContextFunction_0;
  return result;
}

void *__StoreServicesLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/StoreServices.framework/StoreServices", 2);
  StoreServicesLibrary_sLib_0 = result;
  return result;
}

Class initSSAccountStore_0()
{
  if (StoreServicesLibrary_sOnce_0 != -1)
  {
    initSSMutableAuthenticationContext_cold_1();
  }

  result = objc_getClass("SSAccountStore");
  classSSAccountStore_0 = result;
  getSSAccountStoreClass_0 = SSAccountStoreFunction_0;
  return result;
}

Class initSSAuthenticateRequest_0()
{
  if (StoreServicesLibrary_sOnce_0 != -1)
  {
    initSSMutableAuthenticationContext_cold_1();
  }

  result = objc_getClass("SSAuthenticateRequest");
  classSSAuthenticateRequest_0 = result;
  getSSAuthenticateRequestClass_0 = SSAuthenticateRequestFunction_0;
  return result;
}

_TtC7Sharing30AskToAirDropReceiverController *SFCreateAskToAirDropReceiverController(void *a1)
{
  v1 = a1;
  v2 = [[_TtC7Sharing30AskToAirDropReceiverController alloc] initWithQueue:v1];

  return v2;
}

id SFAskToAirDropSubtitleForConnectionState(void *a1)
{
  if (a1 <= 3)
  {
    a1 = SFLocalizedStringForKey(*(&off_1E788EE70 + a1));
  }

  return a1;
}

id SFDeviceSetupHomeKitRMVEnabledForAllHomes(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v1 homes];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [v8 uniqueIdentifier];
        v10 = [v9 UUIDString];

        if ([v10 length])
        {
          v11 = [MEMORY[0x1E696AD98] numberWithBool:_SFDeviceSetupHomeKitRMVEnabledForHome(v8)];
          [v2 setObject:v11 forKeyedSubscript:v10];
        }

        else if (gLogCategory_SFDeviceSetupUtilities <= 90 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
        {
          SFDeviceSetupHomeKitRMVEnabledForAllHomes_cold_1();
        }

        ++v7;
      }

      while (v5 != v7);
      v12 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v5 = v12;
    }

    while (v12);
  }

  v13 = [v2 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

uint64_t _SFDeviceSetupHomeKitRMVEnabledForHome(void *a1)
{
  v1 = a1;
  v2 = [v1 currentUser];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 userSettingsForHome:v1];
    v5 = [v4 settings];

    if (v5)
    {
      v6 = [v5 rootGroup];
      v7 = _SFHomeKitSettingWithKeyPath(v6);

      if (v7)
      {
        v8 = [v7 value];
        v9 = [v8 BOOLValue];

        if (gLogCategory_SFDeviceSetupUtilities <= 50 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }

      else
      {
        if (gLogCategory_SFDeviceSetupUtilities <= 50 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
        {
          _SFDeviceSetupHomeKitRMVEnabledForHome_cold_1();
        }

        v9 = 0;
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupUtilities <= 50 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
      {
        _SFDeviceSetupHomeKitRMVEnabledForHome_cold_2();
      }

      v9 = 0;
    }
  }

  else
  {
    if (gLogCategory_SFDeviceSetupUtilities <= 50 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
    {
      _SFDeviceSetupHomeKitRMVEnabledForHome_cold_3();
    }

    v9 = 0;
  }

  return v9;
}

id SFDeviceSetupHomeKitInfo(void *a1)
{
  v145 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 homes];
  if ([v2 count])
  {
    v97 = v1;
    v98 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    obj = v2;
    v96 = v2;
    v103 = [obj countByEnumeratingWithState:&v130 objects:v142 count:16];
    if (v103)
    {
      v102 = *v131;
      v3 = &unk_1EB3AF000;
      do
      {
        v4 = 0;
        do
        {
          if (*v131 != v102)
          {
            objc_enumerationMutation(obj);
          }

          v104 = v4;
          v5 = *(*(&v130 + 1) + 8 * v4);
          v106 = [v5 name];
          v6 = v3[138];
          if (v6 <= 30 && (v6 != -1 || _LogCategory_Initialize()))
          {
            SFDeviceSetupHomeKitInfo_cold_1();
          }

          v7 = [v5 uniqueIdentifier];
          v8 = [v7 UUIDString];

          if ([v106 length] && objc_msgSend(v8, "length"))
          {
            v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v9 setObject:v106 forKey:@"name"];
            v101 = v8;
            [v9 setObject:v8 forKey:@"id"];
            v112 = v5;
            v10 = [v112 mediaSystems];
            v111 = v9;
            if ([v10 count])
            {
              v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v138 = 0u;
              v139 = 0u;
              v140 = 0u;
              v141 = 0u;
              v122 = v10;
              v12 = [v122 countByEnumeratingWithState:&v138 objects:v144 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v139;
                v116 = v10;
                v118 = v11;
                v114 = *v139;
                do
                {
                  v15 = 0;
                  v120 = v13;
                  do
                  {
                    if (*v139 != v14)
                    {
                      objc_enumerationMutation(v122);
                    }

                    v16 = *(*(&v138 + 1) + 8 * v15);
                    v17 = [v16 configuredName];
                    if ([v17 length])
                    {
                      [v16 configuredName];
                    }

                    else
                    {
                      [v16 name];
                    }
                    v18 = ;

                    v19 = [v16 uniqueIdentifier];
                    v20 = [v19 UUIDString];

                    if ([v18 length] && objc_msgSend(v20, "length"))
                    {
                      v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
                      [v21 setObject:v18 forKey:@"name"];
                      v124 = v20;
                      [v21 setObject:v20 forKey:@"id"];
                      v22 = [v16 supportsAudioDestination];
                      v23 = [MEMORY[0x1E696AD98] numberWithBool:v22];
                      v128 = v21;
                      [v21 setObject:v23 forKey:@"hksad"];

                      if (v22)
                      {
                        v24 = [v16 audioDestinationIdentifier];
                        if (v24)
                        {
                          [v21 setObject:v24 forKey:@"hkadi"];
                        }
                      }

                      v126 = v18;
                      v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                      v134 = 0u;
                      v135 = 0u;
                      v136 = 0u;
                      v137 = 0u;
                      v26 = [v16 components];
                      v27 = [v26 countByEnumeratingWithState:&v134 objects:v143 count:16];
                      if (v27)
                      {
                        v28 = v27;
                        v29 = *v135;
                        do
                        {
                          for (i = 0; i != v28; ++i)
                          {
                            if (*v135 != v29)
                            {
                              objc_enumerationMutation(v26);
                            }

                            v31 = [*(*(&v134 + 1) + 8 * i) mediaProfile];
                            v32 = [v31 accessory];

                            v33 = [v32 uniqueIdentifier];
                            v34 = [v33 UUIDString];

                            if ([v34 length])
                            {
                              [v25 addObject:v34];
                            }
                          }

                          v28 = [v26 countByEnumeratingWithState:&v134 objects:v143 count:16];
                        }

                        while (v28);
                      }

                      v35 = [v16 components];
                      v36 = [v35 firstObject];
                      v37 = [v36 mediaProfile];
                      v38 = [v37 accessory];

                      v39 = [v38 homePodVariant];
                      if ((v39 - 1) < 3)
                      {
                        v40 = v39;
                      }

                      else
                      {
                        v40 = 0;
                      }

                      v41 = [MEMORY[0x1E696AD98] numberWithInt:v40];
                      [v128 setObject:v41 forKey:@"hkhpv"];

                      v18 = v126;
                      if (gLogCategory_SFDeviceSetupUtilities <= 30 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
                      {
                        SFDeviceSetupHomeKitInfo_cold_2(v112);
                      }

                      v42 = [v25 allObjects];
                      [v128 setObject:v42 forKey:@"hkais"];

                      v11 = v118;
                      [v118 addObject:v128];

                      v9 = v111;
                      v14 = v114;
                      v10 = v116;
                      v13 = v120;
                      v20 = v124;
                    }

                    else if (gLogCategory_SFDeviceSetupUtilities <= 90 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
                    {
                      v94 = v18;
                      v95 = v20;
                      LogPrintF();
                    }

                    ++v15;
                  }

                  while (v15 != v13);
                  v43 = [v122 countByEnumeratingWithState:&v138 objects:v144 count:16];
                  v13 = v43;
                }

                while (v43);
              }

              v3 = &unk_1EB3AF000;
            }

            else
            {
              v11 = 0;
            }

            if ([v11 count])
            {
              [v9 setObject:v11 forKey:@"hkms"];
            }

            v105 = v112;
            v45 = [v105 rooms];
            if ([v45 count])
            {
              v110 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v134 = 0u;
              v135 = 0u;
              v136 = 0u;
              v137 = 0u;
              v99 = v45;
              v46 = v45;
              v47 = [v46 countByEnumeratingWithState:&v134 objects:v143 count:16];
              if (v47)
              {
                v48 = v47;
                v49 = *v135;
                v119 = v11;
                v107 = *v135;
                v108 = v46;
                do
                {
                  v50 = 0;
                  v109 = v48;
                  do
                  {
                    if (*v135 != v49)
                    {
                      objc_enumerationMutation(v46);
                    }

                    v123 = v50;
                    v51 = *(*(&v134 + 1) + 8 * v50);
                    v52 = [v51 name];
                    v53 = [v51 uniqueIdentifier];
                    v54 = [v53 UUIDString];

                    v55 = v52;
                    if ([v52 length] && objc_msgSend(v54, "length"))
                    {
                      v56 = v3[138];
                      if (v56 <= 30 && (v56 != -1 || _LogCategory_Initialize()))
                      {
                        SFDeviceSetupHomeKitInfo_cold_3(v105);
                      }

                      v57 = objc_alloc_init(MEMORY[0x1E695DF90]);
                      [v57 setObject:v55 forKey:@"name"];
                      [v57 setObject:v54 forKey:@"id"];
                      v121 = v51;
                      v58 = [v121 accessories];
                      if ([v58 count])
                      {
                        v115 = v57;
                        v117 = v55;
                        v127 = objc_alloc_init(MEMORY[0x1E695DF70]);
                        v138 = 0u;
                        v139 = 0u;
                        v140 = 0u;
                        v141 = 0u;
                        v113 = v58;
                        v129 = v58;
                        v59 = [v129 countByEnumeratingWithState:&v138 objects:v144 count:16];
                        if (v59)
                        {
                          v60 = v59;
                          v61 = *v139;
                          v125 = v54;
                          do
                          {
                            v62 = 0;
                            do
                            {
                              if (*v139 != v61)
                              {
                                objc_enumerationMutation(v129);
                              }

                              v63 = *(*(&v138 + 1) + 8 * v62);
                              v64 = [v63 category];
                              v65 = [v64 categoryType];

                              if ([v65 isEqualToString:getHMAccessoryCategoryTypeHomePod()])
                              {
                                v66 = [v63 name];
                                v67 = [v63 uniqueIdentifier];
                                v68 = [v67 UUIDString];

                                if ([v66 length] && objc_msgSend(v68, "length"))
                                {
                                  v69 = v3[138];
                                  if (v69 <= 30 && (v69 != -1 || _LogCategory_Initialize()))
                                  {
                                    SFDeviceSetupHomeKitInfo_cold_4(v121);
                                  }

                                  v70 = objc_alloc_init(MEMORY[0x1E695DF90]);
                                  [v70 setObject:v66 forKey:@"name"];
                                  [v70 setObject:v68 forKey:@"id"];
                                  [v70 setObject:v65 forKey:@"hkac"];
                                  v71 = [v63 supportsAudioDestination];
                                  v72 = [MEMORY[0x1E696AD98] numberWithBool:v71];
                                  [v70 setObject:v72 forKey:@"hksad"];

                                  if (v71)
                                  {
                                    v73 = [v63 audioDestinationIdentifier];
                                    if (v73)
                                    {
                                      [v70 setObject:v73 forKey:@"hkadi"];
                                    }
                                  }

                                  v74 = [v63 homePodVariant];
                                  if ((v74 - 1) < 3)
                                  {
                                    v75 = v74;
                                  }

                                  else
                                  {
                                    v75 = 0;
                                  }

                                  v76 = [MEMORY[0x1E696AD98] numberWithInt:v75];
                                  [v70 setObject:v76 forKey:@"hkhpv"];

                                  [v127 addObject:v70];
                                  v3 = &unk_1EB3AF000;
                                  v54 = v125;
                                }

                                else
                                {
                                  v77 = v3[138];
                                  if (v77 <= 90 && (v77 != -1 || _LogCategory_Initialize()))
                                  {
                                    v94 = v66;
                                    v95 = v68;
                                    LogPrintF();
                                  }
                                }
                              }

                              ++v62;
                            }

                            while (v60 != v62);
                            v78 = [v129 countByEnumeratingWithState:&v138 objects:v144 count:16];
                            v60 = v78;
                          }

                          while (v78);
                        }

                        v55 = v117;
                        v11 = v119;
                        v49 = v107;
                        v46 = v108;
                        v48 = v109;
                        v58 = v113;
                        v57 = v115;
                        v79 = v127;
                      }

                      else
                      {
                        v79 = 0;
                      }

                      v81 = v123;
                      if ([v79 count])
                      {
                        [v57 setObject:v79 forKey:@"hkas"];
                      }

                      [v110 addObject:{v57, v94, v95}];
                    }

                    else
                    {
                      v80 = v3[138];
                      v81 = v123;
                      if (v80 <= 90 && (v80 != -1 || _LogCategory_Initialize()))
                      {
                        v94 = v52;
                        v95 = v54;
                        LogPrintF();
                      }
                    }

                    v50 = v81 + 1;
                  }

                  while (v50 != v48);
                  v82 = [v46 countByEnumeratingWithState:&v134 objects:v143 count:16];
                  v48 = v82;
                }

                while (v82);
              }

              v83 = [v110 copy];
              v9 = v111;
              v45 = v99;
            }

            else
            {
              v83 = 0;
            }

            if ([v83 count])
            {
              [v9 setObject:v83 forKey:@"hkrs"];
            }

            v84 = [MEMORY[0x1E696AD98] numberWithBool:_SFDeviceSetupHomeKitRMVEnabledForHome(v105)];
            [v9 setObject:v84 forKey:@"hkrmve"];

            [v98 addObject:v9];
            v8 = v101;
          }

          else
          {
            v44 = v3[138];
            if (v44 <= 90 && (v44 != -1 || _LogCategory_Initialize()))
            {
              v94 = v106;
              v95 = v8;
              LogPrintF();
            }
          }

          v4 = v104 + 1;
        }

        while (v104 + 1 != v103);
        v85 = [obj countByEnumeratingWithState:&v130 objects:v142 count:16];
        v103 = v85;
      }

      while (v85);
    }

    v86 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v86 setObject:v98 forKey:@"hkhs"];
    v87 = [v97 currentHome];
    v88 = [v87 uniqueIdentifier];
    v89 = [v88 UUIDString];

    if ([v89 length])
    {
      [v86 setObject:v89 forKey:@"hkci"];
    }

    v90 = _SFDeviceSetupHomeKitCurrentUserInfoFromAllHomes(obj);
    if ([v90 count])
    {
      [v86 setObject:v90 forKey:@"hkcuis"];
    }

    v91 = [v86 copy];

    v2 = v96;
    v1 = v97;
  }

  else
  {
    if (gLogCategory_SFDeviceSetupUtilities <= 50 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
    {
      SFDeviceSetupHomeKitInfo_cold_5();
    }

    v91 = MEMORY[0x1E695E0F8];
  }

  v92 = *MEMORY[0x1E69E9840];

  return v91;
}

id _SFDeviceSetupHomeKitCurrentUserInfoFromAllHomes(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 currentUser];
        if (v9)
        {
          v10 = [v8 uniqueIdentifier];
          v11 = [v10 UUIDString];

          v12 = [v9 uniqueIdentifier];
          v13 = [v12 UUIDString];

          if (gLogCategory_SFDeviceSetupUtilities <= 30 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
          {
            v17 = v11;
            v18 = v13;
            LogPrintF();
          }

          [v2 setObject:v13 forKeyedSubscript:{v11, v17, v18, v19}];
        }

        else if (gLogCategory_SFDeviceSetupUtilities <= 50 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
        {
          _SFDeviceSetupHomeKitCurrentUserInfoFromAllHomes_cold_1();
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v14 = [v2 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

id SFDeviceSetupHomeKitCurrentUserIdentifiers(void *a1)
{
  v1 = a1;
  v2 = [v1 homes];
  if ([v2 count])
  {
    v3 = _SFDeviceSetupHomeKitCurrentUserInfoFromAllHomes(v2);
  }

  else
  {
    if (gLogCategory_SFDeviceSetupUtilities <= 50 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
    {
      SFDeviceSetupHomeKitCurrentUserIdentifiers_cold_1();
    }

    v3 = MEMORY[0x1E695E0F8];
  }

  return v3;
}

id SFDeviceSetupDeviceInfo()
{
  v7 = 0;
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:SFDeviceClassCodeGet()];
  [v0 setObject:v1 forKeyedSubscript:@"dclass"];

  v2 = GestaltCopyAnswer();
  if (v2)
  {
    [v0 setObject:v2 forKeyedSubscript:@"dname"];
  }

  else if (gLogCategory_SFDeviceSetupUtilities <= 60 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
  {
    SFDeviceSetupDeviceInfo_cold_1(&v7);
  }

  v3 = GestaltCopyAnswer();

  if (v3)
  {
    [v0 setObject:v3 forKeyedSubscript:@"model"];
  }

  else if (gLogCategory_SFDeviceSetupUtilities <= 60 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
  {
    SFDeviceSetupDeviceInfo_cold_2(&v7);
  }

  v4 = GestaltCopyAnswer();

  if (v4)
  {
    [v0 setObject:v4 forKeyedSubscript:@"osBuild"];
  }

  else if (gLogCategory_SFDeviceSetupUtilities <= 60 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
  {
    SFDeviceSetupDeviceInfo_cold_3(&v7);
  }

  v5 = [v0 copy];

  return v5;
}

id SFDeviceSetupSiriInfo(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [v1 languageCode];
  if (v3)
  {
    [v2 setObject:v3 forKeyedSubscript:@"siriLL"];
  }

  else if (gLogCategory_SFDeviceSetupUtilities <= 60 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
  {
    SFDeviceSetupSiriInfo_cold_1();
  }

  v4 = [v1 outputVoice];
  v5 = [v4 languageCode];

  if (v5)
  {
    [v2 setObject:v5 forKeyedSubscript:@"siriVL"];
  }

  else if (gLogCategory_SFDeviceSetupUtilities <= 60 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
  {
    SFDeviceSetupSiriInfo_cold_2();
  }

  v6 = [v4 gender];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
    [v2 setObject:v7 forKeyedSubscript:@"siriVG"];
  }

  else if (gLogCategory_SFDeviceSetupUtilities <= 60 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
  {
    SFDeviceSetupSiriInfo_cold_3();
  }

  v8 = [v1 suppressAssistantOptIn];
  v9 = [v1 assistantIsEnabled];
  if ((v9 & 1) != 0 || v8)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v9 ^ 1u];
    [v2 setObject:v10 forKeyedSubscript:@"siriD"];
  }

  else if (gLogCategory_SFDeviceSetupUtilities <= 40 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
  {
    SFDeviceSetupSiriInfo_cold_4();
  }

  v11 = [v1 suppressDictationOptIn];
  v12 = [v1 dictationIsEnabled];
  if ((v12 & 1) != 0 || v11)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v12];
    [v2 setObject:v13 forKeyedSubscript:@"siriDE"];
  }

  else if (gLogCategory_SFDeviceSetupUtilities <= 40 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
  {
    SFDeviceSetupSiriInfo_cold_5();
  }

  v14 = [v1 siriDataSharingOptInStatus];
  if (v14 == 2)
  {
    v15 = MEMORY[0x1E695E110];
    goto LABEL_34;
  }

  if (v14 == 1)
  {
    v15 = MEMORY[0x1E695E118];
LABEL_34:
    [v2 setObject:v15 forKeyedSubscript:@"siriDS"];
    goto LABEL_35;
  }

  if (gLogCategory_SFDeviceSetupUtilities <= 40 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
  {
    SFDeviceSetupSiriInfo_cold_6();
  }

LABEL_35:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:softLinkAFPreferencesTypeToSiriEnabled()];
  [v2 setObject:v16 forKeyedSubscript:@"siriTTS"];

  v17 = [(objc_class *)getVTPreferencesClass_0() sharedPreferences];
  v18 = [v17 voiceTriggerEnabled];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:v18];
  [v2 setObject:v19 forKeyedSubscript:@"siriVP"];

  v20 = [v2 copy];

  return v20;
}

id SFDeviceSetupAppleTVLocationAuthorizationInfo()
{
  v21 = *MEMORY[0x1E69E9840];
  if (SFDeviceSetupAppleTVLocationAuthorizationInfo_onceToken != -1)
  {
    SFDeviceSetupAppleTVLocationAuthorizationInfo_cold_1();
  }

  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = softLinkCLCopyAppsUsingLocation();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = SFDeviceSetupAppleTVLocationAuthorizationInfo_kLocationServicesIdentifiers;
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = [v1 objectForKey:{v7, v16}];
        if (v8)
        {
          v9 = [(objc_class *)getCLLocationManagerClass() entityAuthorizationForLocationDictionary:v8];
          v10 = v9 & 1;
          if ((v9 & 2) != 0)
          {
            v10 = 2;
          }

          if ((v9 & 4) != 0)
          {
            v11 = 3;
          }

          else
          {
            v11 = v10;
          }

          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
          [v0 setObject:v12 forKey:v7];
        }

        else if (gLogCategory_SFDeviceSetupUtilities <= 90 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
        {
          SFDeviceSetupAppleTVLocationAuthorizationInfo_cold_2();
        }

        ++v6;
      }

      while (v4 != v6);
      v13 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v4 = v13;
    }

    while (v13);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v0;
}

void __SFDeviceSetupAppleTVLocationAuthorizationInfo_block_invoke()
{
  v0 = SFDeviceSetupAppleTVLocationAuthorizationInfo_kLocationServicesIdentifiers;
  SFDeviceSetupAppleTVLocationAuthorizationInfo_kLocationServicesIdentifiers = &unk_1F1D7D880;
}

uint64_t _SFHomePodVariantForHMHomePodVariant(uint64_t result)
{
  if ((result - 1) < 3)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void WiFiDisassociateAndForget()
{
  if (gLogCategory_SFDeviceSetupUtilities <= 30 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
  {
    WiFiDisassociateAndForget_cold_1();
  }

  v0 = WiFiManagerClientCreate();
  if (v0)
  {
    v1 = WiFiManagerClientCopyDevices();
    v2 = v1;
    if (v1)
    {
      if (CFArrayGetCount(v1) >= 1)
      {
        CFArrayGetValueAtIndex(v2, 0);
        v3 = WiFiDeviceClientCopyCurrentNetwork();
        if (v3)
        {
          v4 = v3;
          WiFiManagerClientDisableNetwork();
          if (WiFiDeviceClientDisassociate() && gLogCategory_SFDeviceSetupUtilities <= 90 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
          {
            WiFiDisassociateAndForget_cold_2();
          }

          WiFiManagerClientRemoveNetwork();
          WiFiNetworkRemovePassword();
          CFRelease(v4);
LABEL_13:
          CFRelease(v0);
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v2 = 0;
  }

  if (gLogCategory_SFDeviceSetupUtilities <= 90 && (gLogCategory_SFDeviceSetupUtilities != -1 || _LogCategory_Initialize()))
  {
    WiFiDisassociateAndForget_cold_3();
  }

  if (v0)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (v2)
  {

    CFRelease(v2);
  }
}

id _SFHomeKitSettingWithKeyPath(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = [v1 settings];
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [v7 keyPath];
        v9 = [v8 isEqualToString:@"root.siri.identifyVoice"];

        if (v9)
        {
          v14 = v7;
          goto LABEL_19;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [v1 groups];
  v10 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
LABEL_11:
    v13 = 0;
    while (1)
    {
      if (*v19 != v12)
      {
        objc_enumerationMutation(v2);
      }

      v14 = _SFHomeKitSettingWithKeyPath(*(*(&v18 + 1) + 8 * v13));
      if (v14)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v2 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

LABEL_19:
    v15 = v14;
  }

  else
  {
LABEL_17:
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

uint64_t initAFPreferencesTypeToSiriEnabled()
{
  if (AssistantServicesLibrary_sOnce != -1)
  {
    initAFPreferencesTypeToSiriEnabled_cold_1();
  }

  v0 = dlsym(AssistantServicesLibrary_sLib, "AFPreferencesTypeToSiriEnabled");
  softLinkAFPreferencesTypeToSiriEnabled = v0;

  return v0();
}

void *__AssistantServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices", 2);
  AssistantServicesLibrary_sLib = result;
  return result;
}

Class initVTPreferences_0()
{
  if (VoiceTriggerLibrary_sOnce_0 != -1)
  {
    initVTPreferences_cold_1_0();
  }

  result = objc_getClass("VTPreferences");
  classVTPreferences_0 = result;
  getVTPreferencesClass_0 = VTPreferencesFunction_0;
  return result;
}

void *__VoiceTriggerLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/VoiceTrigger.framework/VoiceTrigger", 2);
  VoiceTriggerLibrary_sLib_0 = result;
  return result;
}

uint64_t initCLCopyAppsUsingLocation()
{
  if (CoreLocationLibrary_sOnce != -1)
  {
    initCLCopyAppsUsingLocation_cold_1();
  }

  v0 = dlsym(CoreLocationLibrary_sLib, "CLCopyAppsUsingLocation");
  softLinkCLCopyAppsUsingLocation = v0;

  return v0();
}

void *__CoreLocationLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreLocation.framework/CoreLocation", 2);
  CoreLocationLibrary_sLib = result;
  return result;
}

Class initCLLocationManager()
{
  if (CoreLocationLibrary_sOnce != -1)
  {
    initCLCopyAppsUsingLocation_cold_1();
  }

  result = objc_getClass("CLLocationManager");
  classCLLocationManager = result;
  getCLLocationManagerClass = CLLocationManagerFunction;
  return result;
}

uint64_t initValHMAccessoryCategoryTypeHomePod()
{
  if (HomeKitLibrary_sOnce_1 != -1)
  {
    initValHMAccessoryCategoryTypeHomePod_cold_1();
  }

  v0 = dlsym(HomeKitLibrary_sLib_1, "HMAccessoryCategoryTypeHomePod");
  if (v0)
  {
    result = *v0;
    constantValHMAccessoryCategoryTypeHomePod = result;
  }

  else
  {
    result = constantValHMAccessoryCategoryTypeHomePod;
  }

  getHMAccessoryCategoryTypeHomePod = HMAccessoryCategoryTypeHomePodFunction;
  return result;
}

void *__HomeKitLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_1 = result;
  return result;
}

Class initACAccountStore_2()
{
  if (AccountsLibrary_sOnce_2 != -1)
  {
    initACAccountStore_cold_1_2();
  }

  result = objc_getClass("ACAccountStore");
  classACAccountStore_2 = result;
  getACAccountStoreClass_2 = ACAccountStoreFunction_2;
  return result;
}

void *__AccountsLibrary_block_invoke_2()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 2);
  AccountsLibrary_sLib_2 = result;
  return result;
}

Class initCDPContext()
{
  if (CoreCDPLibrary_sOnce != -1)
  {
    initCDPContext_cold_1();
  }

  result = objc_getClass("CDPContext");
  classCDPContext = result;
  getCDPContextClass = CDPContextFunction;
  return result;
}

void *__CoreCDPLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreCDP.framework/CoreCDP", 2);
  CoreCDPLibrary_sLib = result;
  return result;
}

Class initCDPStateController()
{
  if (CoreCDPLibrary_sOnce != -1)
  {
    initCDPContext_cold_1();
  }

  result = objc_getClass("CDPStateController");
  classCDPStateController = result;
  getCDPStateControllerClass = CDPStateControllerFunction;
  return result;
}

Class initCDPUIController()
{
  if (CoreCDPUILibrary_sOnce != -1)
  {
    initCDPUIController_cold_1();
  }

  result = objc_getClass("CDPUIController");
  classCDPUIController = result;
  getCDPUIControllerClass = CDPUIControllerFunction;
  return result;
}

void *__CoreCDPUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreCDPUI.framework/CoreCDPUI", 2);
  CoreCDPUILibrary_sLib = result;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initTROperationQueue_0()
{
  if (TouchRemoteLibrary_sOnce_2 != -1)
  {
    initTROperationQueue_cold_1_0();
  }

  result = objc_getClass("TROperationQueue");
  classTROperationQueue_0 = result;
  getTROperationQueueClass_0 = TROperationQueueFunction_0;
  return result;
}

void *__TouchRemoteLibrary_block_invoke_2()
{
  result = dlopen("/System/Library/PrivateFrameworks/TouchRemote.framework/TouchRemote", 2);
  TouchRemoteLibrary_sLib_2 = result;
  return result;
}

Class initHMMutableHomeManagerConfiguration()
{
  if (HomeKitLibrary_sOnce_2 != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  result = objc_getClass("HMMutableHomeManagerConfiguration");
  classHMMutableHomeManagerConfiguration = result;
  getHMMutableHomeManagerConfigurationClass = HMMutableHomeManagerConfigurationFunction;
  return result;
}

void *__HomeKitLibrary_block_invoke_2()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_2 = result;
  return result;
}

Class initHMHomeManager_0()
{
  if (HomeKitLibrary_sOnce_2 != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  result = objc_getClass("HMHomeManager");
  classHMHomeManager_0 = result;
  getHMHomeManagerClass_0 = HMHomeManagerFunction_0;
  return result;
}

Class initHMAccessoryBrowser()
{
  if (HomeKitLibrary_sOnce_2 != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  result = objc_getClass("HMAccessoryBrowser");
  classHMAccessoryBrowser = result;
  getHMAccessoryBrowserClass = HMAccessoryBrowserFunction;
  return result;
}

Class initHMDeviceSetupOperation()
{
  if (HomeKitLibrary_sOnce_2 != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  result = objc_getClass("HMDeviceSetupOperation");
  classHMDeviceSetupOperation = result;
  getHMDeviceSetupOperationClass = HMDeviceSetupOperationFunction;
  return result;
}

Class initHMMediaSystemBuilder()
{
  if (HomeKitLibrary_sOnce_2 != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  result = objc_getClass("HMMediaSystemBuilder");
  classHMMediaSystemBuilder = result;
  getHMMediaSystemBuilderClass = HMMediaSystemBuilderFunction;
  return result;
}

Class initHMMediaSystemRole()
{
  if (HomeKitLibrary_sOnce_2 != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  result = objc_getClass("HMMediaSystemRole");
  classHMMediaSystemRole = result;
  getHMMediaSystemRoleClass = HMMediaSystemRoleFunction;
  return result;
}

Class initHMMediaSystemComponent()
{
  if (HomeKitLibrary_sOnce_2 != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  result = objc_getClass("HMMediaSystemComponent");
  classHMMediaSystemComponent = result;
  getHMMediaSystemComponentClass = HMMediaSystemComponentFunction;
  return result;
}

id initValHMAccessoryCategoryTypeHomePod_0()
{
  if (softLinkOnceHMAccessoryCategoryTypeHomePod != -1)
  {
    initValHMAccessoryCategoryTypeHomePod_cold_1_0();
  }

  v1 = constantValHMAccessoryCategoryTypeHomePod_0;

  return v1;
}

void __initValHMAccessoryCategoryTypeHomePod_block_invoke()
{
  if (HomeKitLibrary_sOnce_2 != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  v0 = dlsym(HomeKitLibrary_sLib_2, "HMAccessoryCategoryTypeHomePod");
  if (v0)
  {
    objc_storeStrong(&constantValHMAccessoryCategoryTypeHomePod_0, *v0);
  }

  getHMAccessoryCategoryTypeHomePod_0 = HMAccessoryCategoryTypeHomePodFunction_0;
}

id initValHMAccessoryCategoryTypeAppleTV()
{
  if (softLinkOnceHMAccessoryCategoryTypeAppleTV != -1)
  {
    initValHMAccessoryCategoryTypeAppleTV_cold_1();
  }

  v1 = constantValHMAccessoryCategoryTypeAppleTV;

  return v1;
}

void __initValHMAccessoryCategoryTypeAppleTV_block_invoke()
{
  if (HomeKitLibrary_sOnce_2 != -1)
  {
    initHMMutableHomeManagerConfiguration_cold_1();
  }

  v0 = dlsym(HomeKitLibrary_sLib_2, "HMAccessoryCategoryTypeAppleTV");
  if (v0)
  {
    objc_storeStrong(&constantValHMAccessoryCategoryTypeAppleTV, *v0);
  }

  getHMAccessoryCategoryTypeAppleTV = HMAccessoryCategoryTypeAppleTVFunction;
}

Class initASDSystemAppRequest()
{
  if (AppStoreDaemonLibrary_sOnce != -1)
  {
    initASDSystemAppRequest_cold_1();
  }

  result = objc_getClass("ASDSystemAppRequest");
  classASDSystemAppRequest = result;
  getASDSystemAppRequestClass = ASDSystemAppRequestFunction;
  return result;
}

void *__AppStoreDaemonLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppStoreDaemon.framework/AppStoreDaemon", 2);
  AppStoreDaemonLibrary_sLib = result;
  return result;
}

const char *WiFiSetupStateToString(int a1)
{
  if ((a1 - 11) > 0xB)
  {
    return "?";
  }

  else
  {
    return off_1E788F668[a1 - 11];
  }
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t initVTIsHardwareDecodeSupported(uint64_t a1)
{
  if (VideoToolboxLibrary_sOnce != -1)
  {
    initVTIsHardwareDecodeSupported_cold_1();
  }

  v2 = dlsym(VideoToolboxLibrary_sLib, "VTIsHardwareDecodeSupported");
  softLinkVTIsHardwareDecodeSupported = v2;

  return (v2)(a1);
}

void *__VideoToolboxLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/VideoToolbox.framework/VideoToolbox", 2);
  VideoToolboxLibrary_sLib = result;
  return result;
}

Class initHMDeviceSetupOperationHandler_0()
{
  if (HomeKitLibrary_sOnce_3 != -1)
  {
    initHMDeviceSetupOperationHandler_cold_1_0();
  }

  result = objc_getClass("HMDeviceSetupOperationHandler");
  classHMDeviceSetupOperationHandler_0 = result;
  getHMDeviceSetupOperationHandlerClass_0 = HMDeviceSetupOperationHandlerFunction_0;
  return result;
}

void *__HomeKitLibrary_block_invoke_3()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_3 = result;
  return result;
}

Class initAISRepairController()
{
  if (AppleIDSetupLibrary_sOnce != -1)
  {
    initAISRepairController_cold_1();
  }

  result = objc_getClass("AISRepairController");
  classAISRepairController = result;
  getAISRepairControllerClass[0] = AISRepairControllerFunction;
  return result;
}

void *__AppleIDSetupLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleIDSetup.framework/AppleIDSetup", 2);
  AppleIDSetupLibrary_sLib = result;
  return result;
}

Class initAISRepairContext()
{
  if (AppleIDSetupLibrary_sOnce != -1)
  {
    initAISRepairController_cold_1();
  }

  result = objc_getClass("AISRepairContext");
  classAISRepairContext = result;
  getAISRepairContextClass[0] = AISRepairContextFunction;
  return result;
}

Class initAKAccountManager()
{
  if (AuthKitLibrary_sOnce_1 != -1)
  {
    initAKAccountManager_cold_1();
  }

  result = objc_getClass("AKAccountManager");
  classAKAccountManager = result;
  getAKAccountManagerClass[0] = AKAccountManagerFunction;
  return result;
}

void *__AuthKitLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/AuthKit.framework/AuthKit", 2);
  AuthKitLibrary_sLib_1 = result;
  return result;
}

Class initACAccountStore_3()
{
  if (AccountsLibrary_sOnce_3 != -1)
  {
    initACAccountStore_cold_1_3();
  }

  result = objc_getClass("ACAccountStore");
  classACAccountStore_3 = result;
  getACAccountStoreClass_3 = ACAccountStoreFunction_3;
  return result;
}

void *__AccountsLibrary_block_invoke_3()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 2);
  AccountsLibrary_sLib_3 = result;
  return result;
}

uint64_t initIDSCopyLocalDeviceUniqueID()
{
  if (IDSLibrary_sOnce_0 != -1)
  {
    initIDSCopyLocalDeviceUniqueID_cold_1();
  }

  v0 = dlsym(IDSLibrary_sLib_0, "IDSCopyLocalDeviceUniqueID");
  softLinkIDSCopyLocalDeviceUniqueID = v0;

  return v0();
}

void *__IDSLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/IDS.framework/IDS", 2);
  IDSLibrary_sLib_0 = result;
  return result;
}

Class initFLFollowUpController()
{
  if (CoreFollowUpLibrary_sOnce != -1)
  {
    initFLFollowUpController_cold_1();
  }

  result = objc_getClass("FLFollowUpController");
  classFLFollowUpController = result;
  getFLFollowUpControllerClass = FLFollowUpControllerFunction;
  return result;
}

void *__CoreFollowUpLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreFollowUp.framework/CoreFollowUp", 2);
  CoreFollowUpLibrary_sLib = result;
  return result;
}

const char *CUWiFiShareableStatusToString(int a1)
{
  if ((a1 - 2) > 7)
  {
    return "?";
  }

  else
  {
    return off_1E788F780[a1 - 2];
  }
}

Class initTROperationQueue_1()
{
  if (TouchRemoteLibrary_sOnce_3 != -1)
  {
    initTROperationQueue_cold_1_1();
  }

  result = objc_getClass("TROperationQueue");
  classTROperationQueue_1 = result;
  getTROperationQueueClass_1 = TROperationQueueFunction_1;
  return result;
}