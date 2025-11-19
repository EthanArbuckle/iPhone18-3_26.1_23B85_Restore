uint64_t sub_25E8B2B18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25E91471C(a1, a2);
  }

  return a1;
}

id PO_LOG_POPrebootDeviceConfiguration()
{
  if (PO_LOG_POPrebootDeviceConfiguration_once != -1)
  {
    PO_LOG_POPrebootDeviceConfiguration_cold_1();
  }

  v1 = PO_LOG_POPrebootDeviceConfiguration_log;

  return v1;
}

id PO_LOG_POJWT()
{
  if (PO_LOG_POJWT_once != -1)
  {
    PO_LOG_POJWT_cold_1();
  }

  v1 = PO_LOG_POJWT_log;

  return v1;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id PO_LOG_POKeyWrap()
{
  if (PO_LOG_POKeyWrap_once != -1)
  {
    PO_LOG_POKeyWrap_cold_1();
  }

  v1 = PO_LOG_POKeyWrap_log;

  return v1;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id PO_LOG_POUserConfiguration()
{
  if (PO_LOG_POUserConfiguration_once != -1)
  {
    PO_LOG_POUserConfiguration_cold_1();
  }

  v1 = PO_LOG_POUserConfiguration_log;

  return v1;
}

id PO_LOG_PODeviceConfiguration()
{
  if (PO_LOG_PODeviceConfiguration_once != -1)
  {
    PO_LOG_PODeviceConfiguration_cold_1();
  }

  v1 = PO_LOG_PODeviceConfiguration_log;

  return v1;
}

uint64_t OUTLINED_FUNCTION_5@<X0>(void *a1@<X0>, uint64_t x8_0@<X8>)
{
  *(v3 - 40) = x8_0;

  return [a1 sharedDeviceKeys];
}

id PO_LOG_POKeychainHelper()
{
  if (PO_LOG_POKeychainHelper_once != -1)
  {
    PO_LOG_POKeychainHelper_cold_1();
  }

  v1 = PO_LOG_POKeychainHelper_log;

  return v1;
}

id PO_LOG_PODaemonCoreProcess()
{
  if (PO_LOG_PODaemonCoreProcess_once != -1)
  {
    PO_LOG_PODaemonCoreProcess_cold_1();
  }

  v1 = PO_LOG_PODaemonCoreProcess_log;

  return v1;
}

Class __getPODirectoryServicesClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!PlatformSSOLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __PlatformSSOLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279A3DE48;
    v7 = 0;
    PlatformSSOLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (PlatformSSOLibraryCore_frameworkLibrary)
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
  result = objc_getClass("PODirectoryServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPODirectoryServicesClass_block_invoke_cold_1();
  }

  getPODirectoryServicesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PlatformSSOLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PlatformSSOLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

id PO_LOG_POKeyBag()
{
  if (PO_LOG_POKeyBag_once != -1)
  {
    PO_LOG_POKeyBag_cold_1();
  }

  v1 = PO_LOG_POKeyBag_log;

  return v1;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

id PO_LOG_POSecKeyHelper()
{
  if (PO_LOG_POSecKeyHelper_once != -1)
  {
    PO_LOG_POSecKeyHelper_cold_1();
  }

  v1 = PO_LOG_POSecKeyHelper_log;

  return v1;
}

void OUTLINED_FUNCTION_4_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id PO_LOG_PODiagnostics()
{
  if (PO_LOG_PODiagnostics_once != -1)
  {
    PO_LOG_PODiagnostics_cold_1();
  }

  v1 = PO_LOG_PODiagnostics_log;

  return v1;
}

id PO_LOG_POAuthenticationProcess()
{
  if (PO_LOG_POAuthenticationProcess_once != -1)
  {
    PO_LOG_POAuthenticationProcess_cold_1();
  }

  v1 = PO_LOG_POAuthenticationProcess_log;

  return v1;
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_14(void *a1, const char *a2)
{

  return [a1 initWithData:v2 encoding:4];
}

id PO_LOG_POUserLoginConfiguration()
{
  if (PO_LOG_POUserLoginConfiguration_once != -1)
  {
    PO_LOG_POUserLoginConfiguration_cold_1();
  }

  v1 = PO_LOG_POUserLoginConfiguration_log;

  return v1;
}

id PO_LOG_POXMLHelper()
{
  if (PO_LOG_POXMLHelper_once != -1)
  {
    PO_LOG_POXMLHelper_cold_1();
  }

  v1 = PO_LOG_POXMLHelper_log;

  return v1;
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id PO_LOG_POJWTSigning()
{
  if (PO_LOG_POJWTSigning_once != -1)
  {
    PO_LOG_POJWTSigning_cold_1();
  }

  v1 = PO_LOG_POJWTSigning_log;

  return v1;
}

id PO_LOG_POAuthenticationContext()
{
  if (PO_LOG_POAuthenticationContext_once != -1)
  {
    PO_LOG_POAuthenticationContext_cold_1();
  }

  v1 = PO_LOG_POAuthenticationContext_log;

  return v1;
}

void sub_25E8EC9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PO_LOG_POCredentialUtil()
{
  if (PO_LOG_POCredentialUtil_once != -1)
  {
    PO_LOG_POCredentialUtil_cold_1();
  }

  v1 = PO_LOG_POCredentialUtil_log;

  return v1;
}

id PO_LOG_POJWTHeader()
{
  if (PO_LOG_POJWTHeader_once != -1)
  {
    PO_LOG_POJWTHeader_cold_1();
  }

  v1 = PO_LOG_POJWTHeader_log;

  return v1;
}

id getSOUtilsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOUtilsClass_softClass;
  v7 = getSOUtilsClass_softClass;
  if (!getSOUtilsClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSOUtilsClass_block_invoke;
    v3[3] = &unk_279A3DE28;
    v3[4] = &v4;
    __getSOUtilsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25E8F28F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PO_LOG_POPreferences()
{
  if (PO_LOG_POPreferences_once != -1)
  {
    PO_LOG_POPreferences_cold_1();
  }

  v1 = PO_LOG_POPreferences_log;

  return v1;
}

uint64_t AppSSOCoreLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!AppSSOCoreLibraryCore_frameworkLibrary)
  {
    AppSSOCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = AppSSOCoreLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AppSSOCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppSSOCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getSOUtilsClass_block_invoke(uint64_t a1)
{
  if (!AppSSOCoreLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("SOUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSOUtilsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __getSOUtilsClass_block_invoke_cold_1();
    return __PO_LOG_POPreferences_block_invoke(v4);
  }

  return result;
}

void OUTLINED_FUNCTION_0_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id PO_LOG_POAgentCoreProcess()
{
  if (PO_LOG_POAgentCoreProcess_once != -1)
  {
    PO_LOG_POAgentCoreProcess_cold_1();
  }

  v1 = PO_LOG_POAgentCoreProcess_log;

  return v1;
}

id PO_LOG_PODaemonCoreConnection()
{
  if (PO_LOG_PODaemonCoreConnection_once != -1)
  {
    PO_LOG_PODaemonCoreConnection_cold_1();
  }

  v1 = PO_LOG_PODaemonCoreConnection_log;

  return v1;
}

void sub_25E8FA004(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 72));
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_25E8FA638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PO_LOG_POConfigurationManager()
{
  if (PO_LOG_POConfigurationManager_once != -1)
  {
    PO_LOG_POConfigurationManager_cold_1();
  }

  v1 = PO_LOG_POConfigurationManager_log;

  return v1;
}

void sub_25E8FB470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E8FB784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_25E8FBA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_25E8FBD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_25E8FC1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_25E8FC6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E8FC9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E8FCDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E8FD09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_25E8FD378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E8FD640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id PO_LOG_POAuthPluginCoreProcess()
{
  if (PO_LOG_POAuthPluginCoreProcess_once != -1)
  {
    PO_LOG_POAuthPluginCoreProcess_cold_1();
  }

  v1 = PO_LOG_POAuthPluginCoreProcess_log;

  return v1;
}

void sub_25E8FDCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

id PO_LOG_POJWTEncryption()
{
  if (PO_LOG_POJWTEncryption_once != -1)
  {
    PO_LOG_POJWTEncryption_cold_1();
  }

  v1 = PO_LOG_POJWTEncryption_log;

  return v1;
}

id PO_LOG_POLoginConfiguration()
{
  if (PO_LOG_POLoginConfiguration_once != -1)
  {
    PO_LOG_POLoginConfiguration_cold_1();
  }

  v1 = PO_LOG_POLoginConfiguration_log;

  return v1;
}

void sub_25E902960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E90793C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PO_LOG_POWSTrustProcess()
{
  if (PO_LOG_POWSTrustProcess_once != -1)
  {
    PO_LOG_POWSTrustProcess_cold_1();
  }

  v1 = PO_LOG_POWSTrustProcess_log;

  return v1;
}

id PO_LOG_POUserLoginState()
{
  if (PO_LOG_POUserLoginState_once != -1)
  {
    PO_LOG_POUserLoginState_cold_1();
  }

  v1 = PO_LOG_POUserLoginState_log;

  return v1;
}

id PO_LOG_POServiceCoreConnection()
{
  if (PO_LOG_POServiceCoreConnection_once != -1)
  {
    PO_LOG_POServiceCoreConnection_cold_1();
  }

  v1 = PO_LOG_POServiceCoreConnection_log;

  return v1;
}

void sub_25E90CC04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id PO_LOG_POTokenHelper()
{
  if (PO_LOG_POTokenHelper_once != -1)
  {
    PO_LOG_POTokenHelper_cold_1();
  }

  v1 = PO_LOG_POTokenHelper_log;

  return v1;
}

id PO_LOG_POConfigurationVersion()
{
  if (PO_LOG_POConfigurationVersion_once != -1)
  {
    PO_LOG_POConfigurationVersion_cold_1();
  }

  v1 = PO_LOG_POConfigurationVersion_log;

  return v1;
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

id PO_LOG_POCoreConfigurationUtil()
{
  if (PO_LOG_POCoreConfigurationUtil_once != -1)
  {
    PO_LOG_POCoreConfigurationUtil_cold_1();
  }

  v1 = PO_LOG_POCoreConfigurationUtil_log;

  return v1;
}

id PO_LOG_POUserUnlockKey()
{
  if (PO_LOG_POUserUnlockKey_once != -1)
  {
    PO_LOG_POUserUnlockKey_cold_1();
  }

  v1 = PO_LOG_POUserUnlockKey_log;

  return v1;
}

uint64_t sub_25E913A28()
{
  v0 = sub_25E9414D8();
  __swift_allocate_value_buffer(v0, qword_27FD0CB48);
  __swift_project_value_buffer(v0, qword_27FD0CB48);
  return sub_25E9414C8();
}

id POCryptoKitHPKE_P384_SHA384_AES_GCM_256.__allocating_init()()
{
  v1 = sub_25E941668();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(v0);
  *&v5[OBJC_IVAR____TtC15PlatformSSOCore39POCryptoKitHPKE_P384_SHA384_AES_GCM_256_encryptionAlgorithm] = 0x2870A91C8;
  v6 = &unk_2870A91C8;
  sub_25E941638();
  return POCryptoKitHPKE.init(cipherSuite:)(v4);
}

id POCryptoKitHPKE_P384_SHA384_AES_GCM_256.init()()
{
  v1 = sub_25E941668();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC15PlatformSSOCore39POCryptoKitHPKE_P384_SHA384_AES_GCM_256_encryptionAlgorithm) = 0x2870A91C8;
  v5 = &unk_2870A91C8;
  sub_25E941638();
  return POCryptoKitHPKE.init(cipherSuite:)(v4);
}

Swift::Void __swiftcall POCryptoKitHPKE_P384_SHA384_AES_GCM_256.addValues(to:)(POMutableJWTHeader to)
{
  isa = to.super.super.isa;
  v2 = sub_25E941838();
  [(objc_class *)isa setEnc:v2];

  [(objc_class *)isa setAlg:@"HPKE-P384-SHA384-A256GCM"];
}

Swift::String __swiftcall POCryptoKitHPKE_P384_SHA384_AES_GCM_256.algValue()()
{
  v0 = sub_25E941848();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t POCryptoKitHPKE_P384_SHA384_AES_GCM_256.decodeAndDecryptJWT(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v87 = a7;
  v85 = a4;
  v86 = a1;
  v83 = a3;
  v90 = a2;
  v84 = sub_25E941818();
  v77 = *(v84 - 8);
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v84);
  v88 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25E941898();
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v14);
  v80 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25E941608();
  v78 = *(v17 - 8);
  v79 = v17;
  v18 = *(v78 + 64);
  MEMORY[0x28223BE20](v17);
  v91 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC0, &qword_25E948E70);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v92 = &v76 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v76 - v31;
  v33 = sub_25E941568();
  v34 = *(*(v33 - 8) + 56);
  v96 = v32;
  v34(v32, 1, 1, v33);
  if (a6 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v94 = a5;
  v95 = a6;
  sub_25E9146C8(a5, a6);
  sub_25E941558();
  v35 = v96;
  sub_25E915118(v96, &qword_27FD0BCC8, &qword_25E948E78);
  v34(v30, 0, 1, v33);
  sub_25E915178(v30, v35, &qword_27FD0BCC8, &qword_25E948E78);
  if (a8 >> 60 != 15)
  {
LABEL_6:
    v89 = a8;
    v38 = sub_25E9417F8();
    v39 = *(*(v38 - 8) + 56);
    v40 = v92;
    v39(v92, 1, 1, v38);
    if (a9)
    {
      v41 = a9;
      v42 = SecKeyCopyExternalRepresentation(v41, 0);
      if (v42)
      {
        v43 = v42;
        v44 = sub_25E941478();
        v46 = v45;

        v94 = v44;
        v95 = v46;
        sub_25E9146C8(v44, v46);
        v47 = v93;
        sub_25E9417E8();
        v93 = v47;
        if (v47)
        {

          sub_25E91471C(v44, v46);
          sub_25E915118(v92, &qword_27FD0BCC0, &qword_25E948E70);
          return sub_25E915118(v96, &qword_27FD0BCC8, &qword_25E948E78);
        }

        v49 = v92;
        sub_25E915118(v92, &qword_27FD0BCC0, &qword_25E948E70);

        v50 = v46;
        v40 = v49;
        sub_25E91471C(v44, v50);
        v39(v24, 0, 1, v38);
        sub_25E915178(v24, v49, &qword_27FD0BCC0, &qword_25E948E70);
      }

      else
      {
      }
    }

    v51 = objc_opt_self();
    v52 = v90;
    v53 = [v51 isSEPKey_];
    v54 = v93;
    v55 = v96;
    v56 = v89;
    v57 = v91;
    if (v53)
    {
      v58 = v52;
      sub_25E9415F8();
      if (!v54)
      {
        if (v85)
        {
          v59 = v80;
          sub_25E941878();
          v60 = sub_25E941858();
          v62 = v61;
          (*(v81 + 8))(v59, v82);
        }

        else
        {
          v60 = 0;
          v62 = 0xF000000000000000;
        }

        v75 = v79;
        POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v86, v57, v60, v62, v55, v87, v56, v40, v79, MEMORY[0x277CC53B8]);
        sub_25E8B2B18(v60, v62);
        (*(v78 + 8))(v57, v75);
      }
    }

    else
    {
      v63 = SecKeyCopyExternalRepresentation(v52, 0);
      if (v63)
      {
        v64 = v63;
        v65 = sub_25E941478();
        v67 = v66;

        v94 = v65;
        v95 = v67;
        sub_25E9146C8(v65, v67);
        v68 = v88;
        sub_25E941808();
        if (v54)
        {
          sub_25E91471C(v65, v67);
        }

        else
        {
          v70 = v85;
          if (v85)
          {
            v71 = v80;
            sub_25E941878();
            v70 = sub_25E941858();
            v72 = v71;
            v74 = v73;
            (*(v81 + 8))(v72, v82);
          }

          else
          {
            v74 = 0xF000000000000000;
          }

          POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v86, v68, v70, v74, v55, v87, v56, v40, v84, MEMORY[0x277CC5508]);
          sub_25E8B2B18(v70, v74);
          sub_25E91471C(v65, v67);
          (*(v77 + 8))(v68, v84);
        }
      }

      else
      {
        if (qword_27FD0CB40 != -1)
        {
          swift_once();
        }

        v69 = sub_25E9414D8();
        __swift_project_value_buffer(v69, qword_27FD0CB48);
        Logger.PSSO_ERROR(code:description:)(-1005);
        swift_willThrow();
      }
    }

    sub_25E915118(v40, &qword_27FD0BCC0, &qword_25E948E70);
    v37 = v55;
  }

  else
  {
    if (qword_27FD0CB40 != -1)
    {
      swift_once();
    }

    v36 = sub_25E9414D8();
    __swift_project_value_buffer(v36, qword_27FD0CB48);
    Logger.PSSO_ERROR(code:description:)(-1005);
    swift_willThrow();
    v37 = v96;
  }

  return sub_25E915118(v37, &qword_27FD0BCC8, &qword_25E948E78);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25E9146C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25E91471C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *POCryptoKitHPKE_P384_SHA384_AES_GCM_256.encodeAndEncryptJWT(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(void *a1, __SecKey *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9, char *a10, __SecKey *a11)
{
  v12 = v11;
  v75 = a7;
  v74 = a4;
  v72 = a3;
  v79 = a2;
  v81 = a1;
  v73 = sub_25E941898();
  v71 = *(v73 - 8);
  v16 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v70 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25E9417F8();
  v76 = *(v18 - 8);
  v77 = v18;
  v19 = *(v76 + 64);
  MEMORY[0x28223BE20](v18);
  v80 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0BCD0, &qword_25E948E80);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v78 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v84 = &v67 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v67 - v31;
  v33 = sub_25E941568();
  v34 = *(*(v33 - 8) + 56);
  v34(v32, 1, 1, v33);
  if (a6 >> 60 != 15)
  {
    v82 = a5;
    v83 = a6;
    sub_25E9146C8(a5, a6);
    sub_25E941558();
    sub_25E915118(v32, &qword_27FD0BCC8, &qword_25E948E78);
    v34(v30, 0, 1, v33);
    v12 = v11;
    sub_25E915178(v30, v32, &qword_27FD0BCC8, &qword_25E948E78);
    if (a8 >> 60 == 15)
    {
      if (qword_27FD0CB40 != -1)
      {
        swift_once();
      }

      v35 = sub_25E9414D8();
      v36 = __swift_project_value_buffer(v35, qword_27FD0CB48);
      Logger.PSSO_ERROR(code:description:)(-1005);
      swift_willThrow();
      goto LABEL_20;
    }
  }

  v37 = sub_25E941818();
  v38 = *(*(v37 - 8) + 56);
  v39 = v84;
  v38(v84, 1, 1, v37);
  if (a9)
  {
    v69 = v32;
    v40 = v12;
    v41 = a9;
    v42 = SecKeyCopyExternalRepresentation(v41, 0);
    if (v42)
    {
      v43 = v42;
      v68 = v37;
      v36 = sub_25E941478();
      v45 = v44;

      v82 = v36;
      v83 = v45;
      sub_25E9146C8(v36, v45);
      v46 = v78;
      sub_25E941808();
      if (v40)
      {

        sub_25E91471C(v36, v45);
        sub_25E915118(v84, &unk_27FD0BCD0, &qword_25E948E80);
        v47 = v69;
LABEL_21:
        sub_25E915118(v47, &qword_27FD0BCC8, &qword_25E948E78);
        return v36;
      }

      v48 = v84;
      sub_25E915118(v84, &unk_27FD0BCD0, &qword_25E948E80);

      v49 = v45;
      v39 = v48;
      sub_25E91471C(v36, v49);
      v50 = v68;
      v38(v46, 0, 1, v68);
      v51 = v46;
      v37 = v50;
      v52 = v48;
      v12 = 0;
      sub_25E915178(v51, v52, &unk_27FD0BCD0, &qword_25E948E80);
    }

    else
    {
    }

    v32 = v69;
  }

  v53 = [v81 header];
  v54 = sub_25E941838();
  [v53 setEnc_];

  [v53 setAlg_];
  v55 = SecKeyCopyExternalRepresentation(v79, 0);
  if (!v55)
  {
    if (qword_27FD0CB40 != -1)
    {
      swift_once();
    }

    v60 = sub_25E9414D8();
    v36 = __swift_project_value_buffer(v60, qword_27FD0CB48);
    Logger.PSSO_ERROR(code:description:)(-1005);
    swift_willThrow();
    goto LABEL_19;
  }

  v56 = a8;
  v36 = v55;
  v57 = sub_25E941478();
  v59 = v58;

  v82 = v57;
  v83 = v59;
  sub_25E9146C8(v57, v59);
  sub_25E9417E8();
  if (v12)
  {
    sub_25E91471C(v57, v59);
LABEL_19:
    sub_25E915118(v39, &unk_27FD0BCD0, &qword_25E948E80);
LABEL_20:
    v47 = v32;
    goto LABEL_21;
  }

  v63 = a10;
  v62 = a11;
  v64 = v74;
  if (v74)
  {
    v65 = v70;
    v78 = a10;
    v79 = a11;
    sub_25E941878();
    v64 = sub_25E941858();
    v84 = v66;
    (*(v71 + 8))(v65, v73);
    v63 = v78;
    v62 = v79;
  }

  else
  {
    v84 = 0xF000000000000000;
  }

  v36 = POCryptoKitHPKE.encodeAndEncryptJWT<A>(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(v81, v80, v64, v84, v32, v75, v56, v39, v63, v62, v37, MEMORY[0x277CC5508]);
  sub_25E8B2B18(v64, v84);
  sub_25E91471C(v57, v59);
  (*(v76 + 8))(v80, v77);
  sub_25E915118(v39, &unk_27FD0BCD0, &qword_25E948E80);
  sub_25E915118(v32, &qword_27FD0BCC8, &qword_25E948E78);
  return v36;
}

uint64_t sub_25E915118(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25E915178(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id POCryptoKitHPKE_P384_SHA384_AES_GCM_256.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for POCryptoKitHPKE_P384_SHA384_AES_GCM_256()
{
  result = qword_27FD0CB60;
  if (!qword_27FD0CB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for POEncryptionAlgorithm()
{
  if (!qword_27FD0BD40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FD0BD40);
    }
  }
}

id sub_25E9155A0(void *a1, id *a2)
{
  *a2 = a1;

  return a1;
}

uint64_t sub_25E9155EC(void *a1, id *a2)
{
  *a2 = a1;
  v4 = a1;
  return 1;
}

id sub_25E915624@<X0>(id result@<X0>, id *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25E915640@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_25E91564C(uint64_t a1)
{
  v2 = sub_25E91571C(&qword_27FD0BD58);

  return MEMORY[0x2821FD8B0](a1, v2);
}

uint64_t sub_25E91571C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for POEncryptionAlgorithm();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_25E9157D4()
{
  v0 = sub_25E9414D8();
  __swift_allocate_value_buffer(v0, qword_27FD0CD78);
  __swift_project_value_buffer(v0, qword_27FD0CD78);
  return sub_25E9414C8();
}

uint64_t *sub_25E915868()
{
  if (qword_27FD0CD90 != -1)
  {
    swift_once();
  }

  return &qword_27FD0D500;
}

id sub_25E9158B8()
{
  if (qword_27FD0CD90 != -1)
  {
    swift_once();
  }

  v0 = qword_27FD0D500;

  return v0;
}

uint64_t sub_25E915970()
{
  v0 = sub_25E941668();
  __swift_allocate_value_buffer(v0, qword_27FD0D508);
  __swift_project_value_buffer(v0, qword_27FD0D508);
  return sub_25E941628();
}

uint64_t sub_25E9159BC()
{
  if (qword_27FD0CD98 != -1)
  {
    swift_once();
  }

  v0 = sub_25E941668();

  return __swift_project_value_buffer(v0, qword_27FD0D508);
}

uint64_t sub_25E915A20@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD0CD98 != -1)
  {
    swift_once();
  }

  v2 = sub_25E941668();
  v3 = __swift_project_value_buffer(v2, qword_27FD0D508);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t POPrebootDataKey.encryptedKeyData.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_encryptedKeyData);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_25E915C34(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_encryptedKeyData);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_25E915C94@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E915CF0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_encryptedKeyData);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t POPrebootDataKey.keyData.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_keyData;
  swift_beginAccess();
  v2 = *v1;
  sub_25E915E64(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_25E915E64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25E9146C8(a1, a2);
  }

  return a1;
}

uint64_t sub_25E915F0C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_keyData);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_25E8B2B18(v6, v7);
}

uint64_t sub_25E915F6C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E915FC8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_keyData);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_25E915E64(v2, v3);
  return sub_25E8B2B18(v5, v6);
}

uint64_t static POPrebootDataKey.verifiedKey(prebootData:)()
{
  if (qword_27FD0CD70 != -1)
  {
    swift_once();
  }

  v0 = sub_25E9414D8();
  __swift_project_value_buffer(v0, qword_27FD0CD78);
  Logger.PSSO_ERROR(code:description:)(-1001);
  return swift_willThrow();
}

id sub_25E916318(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t, id))
{
  v8 = a3;
  v9 = a4;
  v10 = sub_25E941478();
  v12 = v11;

  v13 = a6(v10, v12, v9);
  v15 = v14;

  sub_25E91471C(v10, v12);
  v16 = sub_25E941458();
  sub_25E91471C(v13, v15);

  return v16;
}

id POPrebootDataKey.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for POPrebootDataKey();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25E9164B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_25E941978();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_25E916874(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_25E916874((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_25E941958();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_25E9418D8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_25E9418D8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_25E941978();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_25E916874(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_25E941978();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_25E916874(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_25E916874((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_25E9418D8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_25E916874(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BDD8, &qword_25E949048);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_25E916980()
{
  v0 = objc_opt_self();
  if (qword_27FD0CD90 != -1)
  {
    swift_once();
  }

  v1 = [v0 createEncryptionKeyForAlgorithm_];
  v2 = v0;
  if (v1)
  {
    v3 = [v0 dataForEphemeralKey_];
    if (v3)
    {
      v4 = v3;
      v5 = sub_25E941478();
      v7 = v6;

      if (qword_27FD0CD70 != -1)
      {
        swift_once();
      }

      v8 = sub_25E9414D8();
      __swift_project_value_buffer(v8, qword_27FD0CD78);
      Logger.PSSO_ERROR(code:description:)(-1001);
      swift_willThrow();
      sub_25E91471C(v5, v7);
    }

    else
    {
      if (qword_27FD0CD70 != -1)
      {
        swift_once();
      }

      v10 = sub_25E9414D8();
      __swift_project_value_buffer(v10, qword_27FD0CD78);
      Logger.PSSO_ERROR(code:description:)(-1001);
      swift_willThrow();
    }
  }

  else
  {
    if (qword_27FD0CD70 != -1)
    {
      swift_once();
    }

    v9 = sub_25E9414D8();
    __swift_project_value_buffer(v9, qword_27FD0CD78);
    Logger.PSSO_ERROR(code:description:)(-1001);
    swift_willThrow();
  }
}

uint64_t sub_25E916BB8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v46._countAndFlagsBits = a1;
  v46._object = a2;
  v6 = sub_25E941898();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E941668();
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25E9417A8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v16 = sub_25E941718();
  v47 = *(v16 - 8);
  v48 = v16;
  v17 = *(v47 + 64);
  MEMORY[0x28223BE20](v16);
  v53 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25E9417D8();
  v50 = *(v19 - 8);
  v51 = v19;
  v20 = *(v50 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_opt_self() dataForEphemeralKey_];
  if (!v23)
  {
    if (qword_27FD0CD70 != -1)
    {
      swift_once();
    }

    v29 = sub_25E9414D8();
    v4 = __swift_project_value_buffer(v29, qword_27FD0CD78);
    Logger.PSSO_ERROR(code:description:)(-1001);
    swift_willThrow();
    return v4;
  }

  v43 = v7;
  v44 = v6;
  v24 = v23;
  v25 = sub_25E941478();
  v27 = v26;

  v52._countAndFlagsBits = v25;
  v52._object = v27;
  sub_25E9146C8(v25, v27);
  sub_25E9417C8();
  if (v3)
  {
    sub_25E91471C(v25, v27);
    return v4;
  }

  sub_25E9417B8();
  if (qword_27FD0CD98 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v10, qword_27FD0D508);
  (*(v49 + 16))(v13, v28, v10);
  sub_25E9416D8();
  v52 = v46;
  sub_25E917954();
  v31 = sub_25E941708();
  v49 = v32;
  v33 = v31;
  v34 = sub_25E9416E8();
  v36 = v35;
  v37 = Data.base64URLEncodedString()();
  sub_25E91471C(v34, v36);
  v52 = v37;
  MEMORY[0x25F8C2AD0](46, 0xE100000000000000);
  v46._object = v33;
  v38 = v49;
  countAndFlagsBits = Data.base64URLEncodedString()()._countAndFlagsBits;
  MEMORY[0x25F8C2AD0](countAndFlagsBits);

  v40 = v45;
  sub_25E941878();
  v4 = sub_25E941858();
  v42 = v41;
  result = (*(v43 + 8))(v40, v44);
  if (v42 >> 60 != 15)
  {
    sub_25E91471C(v46._object, v38);

    sub_25E91471C(v25, v27);
    (*(v47 + 8))(v53, v48);
    (*(v50 + 8))(v22, v51);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t *sub_25E917174(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v67 = a3;
  v5 = sub_25E941668();
  v62 = *(v5 - 8);
  v6 = *(v62 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E941788();
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25E9417D8();
  v14 = *(v13 - 8);
  v63 = v13;
  v64 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - v19;
  v21 = sub_25E941898();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  sub_25E941878();
  v23 = sub_25E941868();
  if (!v24)
  {
    if (qword_27FD0CD70 == -1)
    {
LABEL_8:
      v34 = sub_25E9414D8();
      __swift_project_value_buffer(v34, qword_27FD0CD78);
      Logger.PSSO_ERROR(code:description:)(-1001);
      swift_willThrow();
      return a1;
    }

LABEL_22:
    swift_once();
    goto LABEL_8;
  }

  a1 = &v55;
  v65 = 46;
  v66 = 0xE100000000000000;
  MEMORY[0x28223BE20](v23);
  *(&v55 - 2) = &v65;
  v27 = sub_25E9164B4(2, 1, sub_25E9178FC, (&v55 - 4), v25, v26, &v55);
  if (v27[2] != 2)
  {
    goto LABEL_4;
  }

  v59 = v3;
  v28 = v27[4];
  v29 = v27[5];
  v31 = v27[6];
  v30 = v27[7];
  a1 = v27;

  MEMORY[0x25F8C2A80](v28, v29, v31, v30);

  v32 = Data.init(base64URLEncoded:)();
  if (v33 >> 60 == 15)
  {
LABEL_4:

    goto LABEL_5;
  }

  v57 = v32;
  v58 = v33;
  if (a1[2] < 2)
  {
    __break(1u);
    goto LABEL_24;
  }

  v36 = a1;
  v37 = a1[8];
  v38 = v36[9];
  v39 = v36[10];
  v40 = v36[11];

  a1 = MEMORY[0x25F8C2A80](v37, v38, v39, v40);

  v41 = Data.init(base64URLEncoded:)();
  if (v42 >> 60 == 15)
  {
    sub_25E8B2B18(v57, v58);
LABEL_5:
    if (qword_27FD0CD70 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  v55 = v41;
  v56 = v42;
  v43 = [objc_opt_self() dataForEphemeralKey_];
  if (!v43)
  {
    if (qword_27FD0CD70 == -1)
    {
LABEL_17:
      v48 = sub_25E9414D8();
      __swift_project_value_buffer(v48, qword_27FD0CD78);
      Logger.PSSO_ERROR(code:description:)(-1001);
      swift_willThrow();
      sub_25E8B2B18(v55, v56);
      v51 = v57;
      v52 = v58;
      goto LABEL_21;
    }

LABEL_24:
    swift_once();
    goto LABEL_17;
  }

  a1 = v43;
  v44 = sub_25E941478();
  v46 = v45;

  v65 = v44;
  v66 = v46;
  sub_25E9146C8(v44, v46);
  v47 = v59;
  sub_25E9417C8();
  if (v47)
  {
    sub_25E8B2B18(v57, v58);
    sub_25E91471C(v44, v46);
    v51 = v55;
    v52 = v56;
LABEL_21:
    sub_25E8B2B18(v51, v52);
    return a1;
  }

  v59 = v44;
  v67 = v46;
  v49 = v63;
  (*(v64 + 16))(v18, v20, v63);
  if (qword_27FD0CD98 != -1)
  {
    swift_once();
  }

  v50 = __swift_project_value_buffer(v5, qword_27FD0D508);
  (*(v62 + 16))(v8, v50, v5);
  sub_25E9146C8(v57, v58);
  sub_25E941758();
  v65 = v55;
  v66 = v56;
  sub_25E917954();
  v53 = sub_25E941778();
  v54 = v67;
  a1 = v53;
  sub_25E8B2B18(v57, v58);
  sub_25E91471C(v59, v54);
  (*(v60 + 8))(v12, v61);
  (*(v64 + 8))(v20, v49);
  sub_25E8B2B18(v55, v56);
  return a1;
}

uint64_t sub_25E9178FC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25E941A18() & 1;
  }
}

unint64_t sub_25E917954()
{
  result = qword_27FD0BDD0;
  if (!qword_27FD0BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0BDD0);
  }

  return result;
}

uint64_t sub_25E9179C0()
{
  v0 = sub_25E9414D8();
  __swift_allocate_value_buffer(v0, qword_27FD0CDA8);
  __swift_project_value_buffer(v0, qword_27FD0CDA8);
  return sub_25E9414C8();
}

uint64_t sub_25E917A44@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite;
  v4 = sub_25E941668();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id POCryptoKitHPKE.__allocating_init(cipherSuite:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite;
  v5 = sub_25E941668();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

id POCryptoKitHPKE.init(cipherSuite:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite;
  v4 = sub_25E941668();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for POCryptoKitHPKE();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t type metadata accessor for POCryptoKitHPKE()
{
  result = qword_27FD0CDC0;
  if (!qword_27FD0CDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *POCryptoKitHPKE.encodeAndEncryptJWT<A>(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12)
{
  v243 = a8;
  v227 = a7;
  v219 = a6;
  v242 = a5;
  v238 = a4;
  v237 = a3;
  v235 = a2;
  v13 = sub_25E941898();
  v213 = *(v13 - 8);
  v14 = *(v213 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v190 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25E941718();
  v244 = *(v17 - 8);
  v18 = *(v244 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_25E941668();
  v232 = *(v233 - 8);
  v21 = *(v232 + 64);
  v22 = MEMORY[0x28223BE20](v233);
  v230 = &v190 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v217 = &v190 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v211 = &v190 - v27;
  MEMORY[0x28223BE20](v26);
  v207 = &v190 - v28;
  v239 = a12;
  v29 = *(a12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v231 = *(AssociatedTypeWitness - 8);
  v30 = *(v231 + 64);
  v31 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v229 = &v190 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v216 = &v190 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v210 = &v190 - v36;
  MEMORY[0x28223BE20](v35);
  v206 = &v190 - v37;
  v226 = sub_25E941998();
  v225 = *(v226 - 8);
  v38 = *(v225 + 64);
  v39 = MEMORY[0x28223BE20](v226);
  v222 = &v190 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v204 = &v190 - v42;
  v249 = a11;
  v43 = *(a11 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v41);
  v215 = &v190 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v241 = &v190 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v203 = &v190 - v50;
  MEMORY[0x28223BE20](v49);
  v205 = &v190 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v224 = &v190 - v54;
  v55 = sub_25E941568();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  v58 = MEMORY[0x28223BE20](v55);
  v209 = &v190 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v202 = &v190 - v61;
  MEMORY[0x28223BE20](v60);
  v223 = &v190 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BDE0, &qword_25E949070);
  v64 = *(*(v63 - 8) + 64);
  v65 = MEMORY[0x28223BE20](v63 - 8);
  v218 = &v190 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x28223BE20](v65);
  v228 = &v190 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v214 = &v190 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v208 = &v190 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v201 = &v190 - v74;
  MEMORY[0x28223BE20](v73);
  v76 = &v190 - v75;
  v77 = [a1 body];
  if (!v77)
  {
    if (qword_27FD0CDA0 != -1)
    {
      swift_once();
    }

    v86 = sub_25E9414D8();
    __swift_project_value_buffer(v86, qword_27FD0CDA8);
    Logger.PSSO_ERROR(code:description:)(-1005);
    swift_willThrow();
    return v20;
  }

  v192 = v16;
  v193 = v13;
  v200 = a1;
  v198 = v20;
  v78 = [v77 dataRepresentation];
  swift_unknownObjectRelease();
  v220 = sub_25E941478();
  v221 = v79;

  v194 = v56;
  v80 = *(v56 + 48);
  LODWORD(v78) = v80(v242, 1, v55);
  v197 = v43;
  v199 = *(v43 + 48);
  v81 = v199(v243, 1, v249);
  v82 = *(v244 + 56);
  v212 = v17;
  v196 = v244 + 56;
  v195 = v82;
  v82(v76, 1, 1, v17);
  v83 = v76;
  v84 = v241;
  if (v78 == 1)
  {
    goto LABEL_10;
  }

  v85 = v224;
  sub_25E91B5E8(v242, v224, &qword_27FD0BCC8, &qword_25E948E78);
  if (v80(v85, 1, v55) != 1)
  {
    v87 = v194;
    v88 = v223;
    (*(v194 + 32))(v223, v85, v55);
    if (v227 >> 60 == 15)
    {
      (*(v87 + 8))(v88, v55);
      goto LABEL_10;
    }

    v103 = v249;
    v104 = v197;
    v191 = v55;
    if (v81 == 1)
    {
      sub_25E9146C8(v219, v227);
    }

    else
    {
      v105 = v225;
      v106 = v204;
      v107 = v226;
      (*(v225 + 16))(v204, v243, v226);
      if (v199(v106, 1, v103) != 1)
      {
        v114 = v205;
        (*(v104 + 32))(v205, v106, v103);
        (*(v231 + 16))(v206, v235, AssociatedTypeWitness);
        (*(v232 + 16))(v207, v236 + OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite, v233);
        v115 = v238;
        v116 = v104;
        v117 = v237;
        if (v238 >> 60 == 15)
        {
          v118 = 0;
        }

        else
        {
          v118 = v237;
        }

        v243 = v118;
        v119 = 0xC000000000000000;
        if (v238 >> 60 != 15)
        {
          v119 = v238;
        }

        v242 = v119;
        (*(v116 + 16))(v203, v114, v103);
        v120 = v88;
        v121 = v194;
        (*(v194 + 16))(v202, v120, v55);
        v20 = v219;
        sub_25E915E64(v219, v227);
        sub_25E915E64(v117, v115);
        v95 = v201;
        v122 = v240;
        sub_25E9416B8();
        v96 = v212;
        if (!v122)
        {
          (*(v197 + 8))(v205, v249);
          (*(v121 + 8))(v223, v191);
          goto LABEL_48;
        }

        sub_25E91471C(v220, v221);
        (*(v197 + 8))(v205, v249);
        (*(v121 + 8))(v223, v191);
        goto LABEL_46;
      }

      sub_25E9146C8(v219, v227);
      (*(v105 + 8))(v106, v107);
    }

    v96 = v212;
    v20 = v210;
    (*(v231 + 16))(v210, v235, AssociatedTypeWitness);
    (*(v232 + 16))(v211, v236 + OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite, v233);
    v108 = v238;
    v109 = v237;
    if (v238 >> 60 == 15)
    {
      v110 = 0;
    }

    else
    {
      v110 = v237;
    }

    v243 = v110;
    v111 = 0xC000000000000000;
    if (v238 >> 60 != 15)
    {
      v111 = v238;
    }

    v242 = v111;
    v112 = v194;
    (*(v194 + 16))(v209, v223, v191);
    sub_25E915E64(v109, v108);
    swift_getAssociatedConformanceWitness();
    v95 = v208;
    v113 = v240;
    sub_25E9416A8();
    if (!v113)
    {
      (*(v112 + 8))(v223, v191);
      goto LABEL_48;
    }

    sub_25E91471C(v220, v221);
    (*(v112 + 8))(v223, v191);
LABEL_46:
    v123 = v83;
LABEL_62:
    sub_25E915118(v123, &qword_27FD0BDE0, &qword_25E949070);
    return v20;
  }

  sub_25E915118(v85, &qword_27FD0BCC8, &qword_25E948E78);
LABEL_10:
  v89 = v81 == 1;
  v90 = v249;
  v91 = v240;
  if (v89)
  {
LABEL_13:
    (*(v231 + 16))(v229, v235, AssociatedTypeWitness);
    (*(v232 + 16))(v230, v236 + OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite, v233);
    if (v238 >> 60 == 15)
    {
      v20 = 0;
    }

    else
    {
      v20 = v237;
    }

    sub_25E915E64(v237, v238);
    swift_getAssociatedConformanceWitness();
    v95 = v228;
    sub_25E9416D8();
    sub_25E915118(v83, &qword_27FD0BDE0, &qword_25E949070);
    if (v91)
    {
      sub_25E91471C(v220, v221);
      return v20;
    }

    v96 = v212;
    goto LABEL_49;
  }

  v92 = v225;
  v93 = v222;
  v94 = v226;
  (*(v225 + 16))(v222, v243, v226);
  if (v199(v93, 1, v90) == 1)
  {
    (*(v92 + 8))(v93, v94);
    goto LABEL_13;
  }

  v243 = v83;
  v97 = v197;
  (*(v197 + 32))(v84, v93, v90);
  (*(v231 + 16))(v216, v235, AssociatedTypeWitness);
  (*(v232 + 16))(v217, v236 + OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite, v233);
  v98 = v238;
  v99 = v237;
  if (v238 >> 60 == 15)
  {
    v100 = 0;
  }

  else
  {
    v100 = v237;
  }

  v242 = v100;
  v101 = 0xC000000000000000;
  if (v238 >> 60 != 15)
  {
    v101 = v238;
  }

  v236 = v101;
  v20 = v215;
  (*(v97 + 16))(v215, v84, v90);
  sub_25E915E64(v99, v98);
  v95 = v214;
  v102 = v91;
  sub_25E9416C8();
  v96 = v212;
  if (v102)
  {
    sub_25E91471C(v220, v221);
    (*(v97 + 8))(v241, v90);
LABEL_61:
    v123 = v243;
    goto LABEL_62;
  }

  (*(v97 + 8))(v241, v90);
  v83 = v243;
LABEL_48:
  sub_25E915118(v83, &qword_27FD0BDE0, &qword_25E949070);
LABEL_49:
  v195(v95, 0, 1, v96);
  sub_25E915178(v95, v83, &qword_27FD0BDE0, &qword_25E949070);
  v243 = v83;
  v124 = v218;
  sub_25E91B5E8(v83, v218, &qword_27FD0BDE0, &qword_25E949070);
  v125 = v244;
  if ((*(v244 + 48))(v124, 1, v96) == 1)
  {
    sub_25E915118(v124, &qword_27FD0BDE0, &qword_25E949070);
    v20 = v221;
    v126 = v220;
    if (qword_27FD0CDA0 != -1)
    {
      swift_once();
    }

    v127 = sub_25E9414D8();
    __swift_project_value_buffer(v127, qword_27FD0CDA8);
    Logger.PSSO_ERROR(code:description:)(-1001);
    swift_willThrow();
    sub_25E91471C(v126, v20);
    goto LABEL_61;
  }

  (*(v125 + 32))(v198, v124, v96);
  v242 = sub_25E9416E8();
  v249 = v128;
  v129 = v227;
  v130 = MEMORY[0x277D837D0];
  if (v227 >> 60 != 15)
  {
    v131 = v219;
    sub_25E9146C8(v219, v227);
    v132 = [v200 header];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BDE8, &qword_25E949078);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25E949060;
    *(inited + 32) = 0x64695F6B7370;
    *(inited + 40) = 0xE600000000000000;
    v134 = sub_25E941468();
    *(inited + 72) = v130;
    *(inited + 48) = v134;
    *(inited + 56) = v135;
    sub_25E91B420(inited);
    swift_setDeallocating();
    sub_25E915118(inited + 32, &qword_27FD0BDF0, &qword_25E949080);
    v136 = sub_25E941828();

    [v132 addCustomClaims_];

    sub_25E8B2B18(v131, v129);
  }

  if (a10 >> 60 != 15)
  {
    sub_25E9146C8(a9, a10);
    v137 = [v200 header];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BDE8, &qword_25E949078);
    v138 = swift_initStackObject();
    *(v138 + 16) = xmmword_25E949060;
    *(v138 + 32) = 0x64696B5F68747561;
    *(v138 + 40) = 0xE800000000000000;
    v139 = sub_25E941468();
    *(v138 + 72) = v130;
    *(v138 + 48) = v139;
    *(v138 + 56) = v140;
    sub_25E91B420(v138);
    swift_setDeallocating();
    sub_25E915118(v138 + 32, &qword_27FD0BDF0, &qword_25E949080);
    v141 = sub_25E941828();

    [v137 addCustomClaims_];

    sub_25E8B2B18(a9, a10);
  }

  v142 = v200;
  v143 = [v200 header];
  v144 = [v143 dataRepresentation];

  v145 = sub_25E941478();
  v20 = v146;

  Data.base64URLEncodedString()();
  v147 = v192;
  sub_25E941888();
  v148 = sub_25E941858();
  v150 = v149;

  (*(v213 + 8))(v147, v193);
  if (v150 >> 60 == 15)
  {
    if (qword_27FD0CDA0 != -1)
    {
      swift_once();
    }

    v151 = sub_25E9414D8();
    __swift_project_value_buffer(v151, qword_27FD0CDA8);
    Logger.PSSO_ERROR(code:description:)(-1005);
    swift_willThrow();
    sub_25E91471C(v145, v20);
    sub_25E91471C(v242, v249);
    sub_25E91471C(v220, v221);
    (*(v244 + 8))(v198, v212);
    goto LABEL_61;
  }

  v247 = v220;
  v248 = v221;
  v245 = v148;
  v246 = v150;
  sub_25E917954();
  v153 = sub_25E9416F8();
  v240 = v148;
  v154 = v153;
  v155 = v20;
  v157 = v156;
  v238 = v155;
  Data.base64URLEncodedString()();
  v158 = sub_25E941838();

  [v142 setRawHeader_];

  Data.base64URLEncodedString()();
  v159 = sub_25E941838();

  [v142 setRawEncryptedKey_];

  v160 = 0xE000000000000000;
  v161 = sub_25E941838();
  [v142 setRawIV_];

  v241 = v154;
  v239 = v157;
  Data.base64URLEncodedString()();
  v162 = sub_25E941838();

  [v142 setRawCipherText_];

  v163 = sub_25E941838();
  [v142 setRawAuthenticationTag_];

  v247 = 0;
  v248 = 0xE000000000000000;
  v164 = [v142 rawHeader];
  if (v164)
  {
    v165 = v164;
    v166 = sub_25E941848();
    v160 = v167;
  }

  else
  {
    v166 = 0;
  }

  MEMORY[0x25F8C2AD0](v166, v160);

  MEMORY[0x25F8C2AD0](46, 0xE100000000000000);
  v168 = [v200 rawEncryptedKey];
  v169 = v240;
  v170 = v238;
  if (v168)
  {
    v171 = v168;
    v172 = sub_25E941848();
    v174 = v173;
  }

  else
  {
    v172 = 0;
    v174 = 0xE000000000000000;
  }

  MEMORY[0x25F8C2AD0](v172, v174);

  MEMORY[0x25F8C2AD0](46, 0xE100000000000000);
  v175 = [v200 rawIV];
  if (v175)
  {
    v176 = v175;
    v177 = sub_25E941848();
    v179 = v178;
  }

  else
  {
    v177 = 0;
    v179 = 0xE000000000000000;
  }

  MEMORY[0x25F8C2AD0](v177, v179);

  MEMORY[0x25F8C2AD0](46, 0xE100000000000000);
  v180 = [v200 rawCipherText];
  if (v180)
  {
    v181 = v180;
    v182 = sub_25E941848();
    v184 = v183;
  }

  else
  {
    v182 = 0;
    v184 = 0xE000000000000000;
  }

  MEMORY[0x25F8C2AD0](v182, v184);

  MEMORY[0x25F8C2AD0](46, 0xE100000000000000);
  v185 = [v200 rawAuthenticationTag];
  if (v185)
  {
    v186 = v185;
    v187 = sub_25E941848();
    v189 = v188;
  }

  else
  {
    v187 = 0;
    v189 = 0xE000000000000000;
  }

  MEMORY[0x25F8C2AD0](v187, v189);

  sub_25E91471C(v241, v239);
  sub_25E8B2B18(v169, v150);
  sub_25E91471C(v145, v170);
  sub_25E91471C(v242, v249);
  sub_25E91471C(v220, v221);
  v20 = v247;
  (*(v244 + 8))(v198, v212);
  sub_25E915118(v243, &qword_27FD0BDE0, &qword_25E949070);
  return v20;
}

uint64_t POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v217 = a8;
  v193 = a7;
  v187 = a6;
  v200 = a5;
  v206 = a3;
  v207 = a4;
  v202 = a2;
  v11 = sub_25E941788();
  v215 = *(v11 - 8);
  v216 = v11;
  v12 = *(v215 + 64);
  MEMORY[0x28223BE20](v11);
  v186 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25E941668();
  v203 = *(v14 - 8);
  v204 = v14;
  v15 = *(v203 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v199 = &v165 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v191 = &v165 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v185 = &v165 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v178 = &v165 - v23;
  v201 = *(a9 - 8);
  v24 = *(v201 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v198 = &v165 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v190 = &v165 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v184 = &v165 - v30;
  MEMORY[0x28223BE20](v29);
  v180 = &v165 - v31;
  v208 = a10;
  v32 = *(a10 + 8);
  v210 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v196 = sub_25E941998();
  v195 = *(v196 - 8);
  v34 = *(v195 + 64);
  v35 = MEMORY[0x28223BE20](v196);
  v194 = &v165 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v181 = &v165 - v38;
  v218 = AssociatedTypeWitness;
  v212 = *(AssociatedTypeWitness - 8);
  v39 = *(v212 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v189 = &v165 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v214 = &v165 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v177 = &v165 - v45;
  MEMORY[0x28223BE20](v44);
  v182 = &v165 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v50 = &v165 - v49;
  v211 = sub_25E941568();
  v213 = *(v211 - 8);
  v51 = *(v213 + 64);
  v52 = MEMORY[0x28223BE20](v211);
  v183 = &v165 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v176 = &v165 - v55;
  MEMORY[0x28223BE20](v54);
  v197 = &v165 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BDF8, qword_25E949088);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v57 - 8);
  v192 = &v165 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x28223BE20](v59);
  v63 = &v165 - v62;
  v64 = MEMORY[0x28223BE20](v61);
  v188 = &v165 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v68 = &v165 - v67;
  v69 = MEMORY[0x28223BE20](v66);
  v179 = &v165 - v70;
  MEMORY[0x28223BE20](v69);
  v219 = &v165 - v71;
  v72 = sub_25E941898();
  v73 = *(v72 - 8);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  v76 = &v165 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = [a1 rawHeader];
  if (v77)
  {
    v78 = v77;
    sub_25E941848();
    v224 = a1;

    sub_25E941888();
    v79 = sub_25E941858();
    v81 = v80;
    v82 = v224;

    (*(v73 + 8))(v76, v72);
    if (v81 >> 60 != 15)
    {
      v85 = [v82 rawCipherText];
      if (!v85 || (v86 = v85, sub_25E941848(), v87 = v79, v86, v88 = Data.init(base64URLEncoded:)(), v89 >> 60 == 15))
      {
        if (qword_27FD0CDA0 != -1)
        {
          swift_once();
        }

        v90 = sub_25E9414D8();
        __swift_project_value_buffer(v90, qword_27FD0CDA8);
        Logger.PSSO_ERROR(code:description:)(-1005);
        swift_willThrow();
        goto LABEL_21;
      }

      v174 = v88;
      v175 = v89;
      v91 = [v82 rawEncryptedKey];
      if (!v91 || (v92 = v91, sub_25E941848(), v92, v93 = Data.init(base64URLEncoded:)(), v94 >> 60 == 15))
      {
        if (qword_27FD0CDA0 != -1)
        {
          swift_once();
        }

        v95 = sub_25E9414D8();
        __swift_project_value_buffer(v95, qword_27FD0CDA8);
        Logger.PSSO_ERROR(code:description:)(-1005);
        swift_willThrow();
        goto LABEL_20;
      }

      v96 = v94;
      v173 = v93;
      v97 = [v82 rawIV];
      if (!v97 || (v98 = v97, sub_25E941848(), v172 = v96, v98, v96 = v172, v99 = sub_25E9418C8(), , v99))
      {
        if (qword_27FD0CDA0 == -1)
        {
LABEL_19:
          v100 = sub_25E9414D8();
          __swift_project_value_buffer(v100, qword_27FD0CDA8);
          Logger.PSSO_ERROR(code:description:)(-1005);
          swift_willThrow();
          sub_25E8B2B18(v173, v96);
LABEL_20:
          sub_25E8B2B18(v174, v175);
LABEL_21:
          v101 = v79;
          v102 = v81;
          return sub_25E8B2B18(v101, v102);
        }

LABEL_69:
        swift_once();
        goto LABEL_19;
      }

      v103 = [v82 rawAuthenticationTag];
      if (!v103 || (v104 = v103, sub_25E941848(), v104, v96 = v172, v105 = sub_25E9418C8(), , v105))
      {
        if (qword_27FD0CDA0 == -1)
        {
          goto LABEL_19;
        }

        goto LABEL_69;
      }

      v171 = v81;
      v106 = v200;
      v107 = v211;
      v168 = *(v213 + 48);
      v108 = v168(v200, 1, v211);
      v109 = *(v212 + 48);
      v170 = v212 + 48;
      v169 = v109;
      v110 = v109(v217, 1, v218);
      v111 = *(v215 + 56);
      v167 = v215 + 56;
      v166 = v111;
      v111(v219, 1, 1, v216);
      v112 = v108 == 1;
      v113 = v214;
      if (!v112)
      {
        sub_25E91B5E8(v106, v50, &qword_27FD0BCC8, &qword_25E948E78);
        if (v168(v50, 1, v107) == 1)
        {
          sub_25E915118(v50, &qword_27FD0BCC8, &qword_25E948E78);
        }

        else
        {
          v114 = v213;
          v115 = v197;
          (*(v213 + 32))(v197, v50, v107);
          if (v193 >> 60 != 15)
          {
            if (v110 == 1)
            {
              sub_25E9146C8(v187, v193);
              v217 = v87;
            }

            else
            {
              v132 = v195;
              v133 = v181;
              v134 = v196;
              (*(v195 + 16))(v181, v217, v196);
              v135 = v218;
              if (v169(v133, 1, v218) != 1)
              {
                v158 = v212;
                v159 = v182;
                (*(v212 + 32))(v182, v133, v135);
                (*(v201 + 16))(v180, v202, v210);
                (*(v203 + 16))(v178, v205 + OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite, v204);
                v161 = v206;
                v160 = v207;
                if (v207 >> 60 == 15)
                {
                  v162 = 0;
                }

                else
                {
                  v162 = v206;
                }

                v217 = v162;
                v163 = 0xC000000000000000;
                if (v207 >> 60 != 15)
                {
                  v163 = v207;
                }

                v214 = v163;
                (*(v158 + 16))(v177, v159, v135);
                (*(v213 + 16))(v176, v197, v211);
                sub_25E915E64(v187, v193);
                sub_25E915E64(v161, v160);
                sub_25E915E64(v173, v172);
                v164 = v209;
                sub_25E941738();
                if (!v164)
                {
                  (*(v212 + 8))(v182, v218);
                  (*(v213 + 8))(v197, v211);
                  v142 = v171;
                  v217 = v87;
                  v68 = v179;
LABEL_55:
                  v143 = v219;
                  sub_25E915118(v219, &qword_27FD0BDF8, qword_25E949088);
                  v144 = v216;
                  v166(v68, 0, 1, v216);
                  sub_25E915178(v68, v143, &qword_27FD0BDF8, qword_25E949088);
                  v145 = v143;
                  v146 = v192;
                  sub_25E91B5E8(v145, v192, &qword_27FD0BDF8, qword_25E949088);
                  v147 = v215;
                  if ((*(v215 + 48))(v146, 1, v144) == 1)
                  {
                    sub_25E915118(v146, &qword_27FD0BDF8, qword_25E949088);
                    v148 = v217;
                    if (qword_27FD0CDA0 != -1)
                    {
                      swift_once();
                    }

                    v149 = sub_25E9414D8();
                    __swift_project_value_buffer(v149, qword_27FD0CDA8);
                    Logger.PSSO_ERROR(code:description:)(-1001);
                    swift_willThrow();
                    sub_25E8B2B18(v174, v175);
                    sub_25E8B2B18(v148, v142);
                    sub_25E8B2B18(v173, v172);
                  }

                  else
                  {
                    v150 = v186;
                    (*(v147 + 32))(v186, v146, v144);
                    v222 = v174;
                    v223 = v175;
                    v151 = v217;
                    v220 = v217;
                    v221 = v142;
                    sub_25E917954();
                    v152 = sub_25E941768();
                    v153 = v147;
                    v155 = v154;
                    Data.base64URLEncodedString()();
                    v156 = sub_25E941838();

                    v157 = v224;
                    [v224 setRawBody_];

                    [v157 updateDecodedBody];
                    sub_25E91471C(v152, v155);
                    sub_25E8B2B18(v174, v175);
                    sub_25E8B2B18(v151, v142);
                    sub_25E8B2B18(v173, v172);
                    (*(v153 + 8))(v150, v216);
                  }

                  return sub_25E915118(v219, &qword_27FD0BDF8, qword_25E949088);
                }

                sub_25E8B2B18(v174, v175);
                sub_25E8B2B18(v87, v171);
                sub_25E8B2B18(v173, v172);
                (*(v212 + 8))(v182, v218);
                (*(v213 + 8))(v197, v211);
                return sub_25E915118(v219, &qword_27FD0BDF8, qword_25E949088);
              }

              sub_25E9146C8(v187, v193);
              (*(v132 + 8))(v133, v134);
              v217 = v87;
              v114 = v213;
            }

            (*(v201 + 16))(v184, v202, v210);
            (*(v203 + 16))(v185, v205 + OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite, v204);
            v137 = v206;
            v136 = v207;
            if (v207 >> 60 == 15)
            {
              v138 = 0;
            }

            else
            {
              v138 = v206;
            }

            v218 = v138;
            (*(v114 + 16))(v183, v197, v211);
            sub_25E915E64(v137, v136);
            v139 = v173;
            v140 = v172;
            sub_25E915E64(v173, v172);
            v141 = v209;
            sub_25E941728();
            if (v141)
            {
              sub_25E8B2B18(v174, v175);
              sub_25E8B2B18(v217, v171);
              sub_25E8B2B18(v139, v140);
              (*(v114 + 8))(v197, v211);
              return sub_25E915118(v219, &qword_27FD0BDF8, qword_25E949088);
            }

            (*(v114 + 8))(v197, v211);
LABEL_54:
            v142 = v171;
            goto LABEL_55;
          }

          (*(v114 + 8))(v115, v107);
          v113 = v214;
        }
      }

      v116 = v87;
      if (v110 == 1)
      {
LABEL_35:
        (*(v201 + 16))(v198, v202, v210);
        (*(v203 + 16))(v199, v205 + OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite, v204);
        sub_25E915E64(v206, v207);
        v121 = v173;
        v122 = v172;
        sub_25E915E64(v173, v172);
        v123 = v209;
        sub_25E941758();
        if (v123)
        {
          sub_25E915118(v219, &qword_27FD0BDF8, qword_25E949088);
          sub_25E8B2B18(v121, v122);
          sub_25E8B2B18(v174, v175);
          v101 = v116;
          v102 = v171;
          return sub_25E8B2B18(v101, v102);
        }

        v217 = v116;
        v68 = v63;
        goto LABEL_54;
      }

      v117 = v195;
      v118 = v194;
      v119 = v196;
      (*(v195 + 16))(v194, v217, v196);
      v120 = v218;
      if (v169(v118, 1, v218) == 1)
      {
        (*(v117 + 8))(v118, v119);
        goto LABEL_35;
      }

      v217 = v116;
      v124 = v212;
      (*(v212 + 32))(v113, v118, v120);
      (*(v201 + 16))(v190, v202, v210);
      (*(v203 + 16))(v191, v205 + OBJC_IVAR____TtC15PlatformSSOCore15POCryptoKitHPKE_cipherSuite, v204);
      v126 = v206;
      v125 = v207;
      if (v207 >> 60 == 15)
      {
        v127 = 0;
      }

      else
      {
        v127 = v206;
      }

      v213 = v127;
      (*(v124 + 16))(v189, v113, v120);
      sub_25E915E64(v126, v125);
      v128 = v173;
      v129 = v172;
      sub_25E915E64(v173, v172);
      v130 = v188;
      v131 = v209;
      sub_25E941748();
      if (v131)
      {
        sub_25E8B2B18(v174, v175);
        sub_25E8B2B18(v217, v171);
        sub_25E8B2B18(v128, v129);
        (*(v124 + 8))(v214, v120);
        return sub_25E915118(v219, &qword_27FD0BDF8, qword_25E949088);
      }

      (*(v124 + 8))(v214, v120);
      v68 = v130;
      goto LABEL_54;
    }
  }

  if (qword_27FD0CDA0 != -1)
  {
    swift_once();
  }

  v83 = sub_25E9414D8();
  __swift_project_value_buffer(v83, qword_27FD0CDA8);
  Logger.PSSO_ERROR(code:description:)(-1005);
  return swift_willThrow();
}

id POCryptoKitHPKE.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id POCryptoKitHPKE.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for POCryptoKitHPKE();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25E91B2F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25E941A28();
  sub_25E9418B8();
  v6 = sub_25E941A38();

  return sub_25E91B368(a1, a2, v6);
}

unint64_t sub_25E91B368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25E941A18())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25E91B420(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0BE00, &unk_25E9490B0);
    v3 = sub_25E9419F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_25E91B5E8(v4, &v13, &qword_27FD0BDF0, &qword_25E949080);
      v5 = v13;
      v6 = v14;
      result = sub_25E91B2F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25E91B650(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25E91B558()
{
  result = sub_25E941668();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25E91B5E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_25E91B650(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25E91B660()
{
  v0 = sub_25E9414D8();
  __swift_allocate_value_buffer(v0, qword_27FD0CDD8);
  __swift_project_value_buffer(v0, qword_27FD0CDD8);
  return sub_25E9414C8();
}

id POCryptoKitHPKE_P256_SHA256_AES_GCM_128.__allocating_init()()
{
  v1 = v0;
  v23 = sub_25E941698();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25E941678();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v22);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E941688();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25E941668();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v1);
  *&v19[OBJC_IVAR____TtC15PlatformSSOCore39POCryptoKitHPKE_P256_SHA256_AES_GCM_128_encryptionAlgorithm] = 0x2870A91F8;
  (*(v11 + 104))(v14, *MEMORY[0x277CC5450], v10);
  (*(v6 + 104))(v9, *MEMORY[0x277CC5438], v22);
  (*(v2 + 104))(v5, *MEMORY[0x277CC5460], v23);
  v20 = &unk_2870A91F8;
  sub_25E941658();
  return POCryptoKitHPKE.init(cipherSuite:)(v18);
}

id POCryptoKitHPKE_P256_SHA256_AES_GCM_128.init()()
{
  v21 = sub_25E941698();
  v1 = *(v21 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_25E941678();
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v20);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E941688();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25E941668();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC15PlatformSSOCore39POCryptoKitHPKE_P256_SHA256_AES_GCM_128_encryptionAlgorithm) = 0x2870A91F8;
  (*(v10 + 104))(v13, *MEMORY[0x277CC5450], v9);
  (*(v5 + 104))(v8, *MEMORY[0x277CC5438], v20);
  (*(v1 + 104))(v4, *MEMORY[0x277CC5460], v21);
  v18 = &unk_2870A91F8;
  sub_25E941658();
  return POCryptoKitHPKE.init(cipherSuite:)(v17);
}

Swift::Void __swiftcall POCryptoKitHPKE_P256_SHA256_AES_GCM_128.addValues(to:)(POMutableJWTHeader to)
{
  isa = to.super.super.isa;
  v2 = sub_25E941838();
  [(objc_class *)isa setEnc:v2];

  v3 = sub_25E941838();
  [(objc_class *)isa setAlg:v3];
}

Swift::String __swiftcall POCryptoKitHPKE_P256_SHA256_AES_GCM_128.algValue()()
{
  v0 = 0x800000025E9525D0;
  v1 = 0xD000000000000018;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t POCryptoKitHPKE_P256_SHA256_AES_GCM_128.decodeAndDecryptJWT(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v87 = a7;
  v85 = a4;
  v86 = a1;
  v83 = a3;
  v90 = a2;
  v84 = sub_25E9417D8();
  v77 = *(v84 - 8);
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v84);
  v88 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25E941898();
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v14);
  v80 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25E9415E8();
  v78 = *(v17 - 8);
  v79 = v17;
  v18 = *(v78 + 64);
  MEMORY[0x28223BE20](v17);
  v91 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0BE10, &unk_25E9490C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v92 = &v76 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v76 - v31;
  v33 = sub_25E941568();
  v34 = *(*(v33 - 8) + 56);
  v96 = v32;
  v34(v32, 1, 1, v33);
  if (a6 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v94 = a5;
  v95 = a6;
  sub_25E9146C8(a5, a6);
  sub_25E941558();
  v35 = v96;
  sub_25E915118(v96, &qword_27FD0BCC8, &qword_25E948E78);
  v34(v30, 0, 1, v33);
  sub_25E915178(v30, v35, &qword_27FD0BCC8, &qword_25E948E78);
  if (a8 >> 60 != 15)
  {
LABEL_6:
    v89 = a8;
    v38 = sub_25E9417A8();
    v39 = *(*(v38 - 8) + 56);
    v40 = v92;
    v39(v92, 1, 1, v38);
    if (a9)
    {
      v41 = a9;
      v42 = SecKeyCopyExternalRepresentation(v41, 0);
      if (v42)
      {
        v43 = v42;
        v44 = sub_25E941478();
        v46 = v45;

        v94 = v44;
        v95 = v46;
        sub_25E9146C8(v44, v46);
        v47 = v93;
        sub_25E941798();
        v93 = v47;
        if (v47)
        {

          sub_25E91471C(v44, v46);
          sub_25E915118(v92, &unk_27FD0BE10, &unk_25E9490C0);
          return sub_25E915118(v96, &qword_27FD0BCC8, &qword_25E948E78);
        }

        v49 = v92;
        sub_25E915118(v92, &unk_27FD0BE10, &unk_25E9490C0);

        v50 = v46;
        v40 = v49;
        sub_25E91471C(v44, v50);
        v39(v24, 0, 1, v38);
        sub_25E915178(v24, v49, &unk_27FD0BE10, &unk_25E9490C0);
      }

      else
      {
      }
    }

    v51 = objc_opt_self();
    v52 = v90;
    v53 = [v51 isSEPKey_];
    v54 = v93;
    v55 = v96;
    v56 = v89;
    v57 = v91;
    if (v53)
    {
      v58 = v52;
      sub_25E9415D8();
      if (!v54)
      {
        if (v85)
        {
          v59 = v80;
          sub_25E941878();
          v60 = sub_25E941858();
          v62 = v61;
          (*(v81 + 8))(v59, v82);
        }

        else
        {
          v60 = 0;
          v62 = 0xF000000000000000;
        }

        v75 = v79;
        POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v86, v57, v60, v62, v55, v87, v56, v40, v79, MEMORY[0x277CC5380]);
        sub_25E8B2B18(v60, v62);
        (*(v78 + 8))(v57, v75);
      }
    }

    else
    {
      v63 = SecKeyCopyExternalRepresentation(v52, 0);
      if (v63)
      {
        v64 = v63;
        v65 = sub_25E941478();
        v67 = v66;

        v94 = v65;
        v95 = v67;
        sub_25E9146C8(v65, v67);
        v68 = v88;
        sub_25E9417C8();
        if (v54)
        {
          sub_25E91471C(v65, v67);
        }

        else
        {
          v70 = v85;
          if (v85)
          {
            v71 = v80;
            sub_25E941878();
            v70 = sub_25E941858();
            v72 = v71;
            v74 = v73;
            (*(v81 + 8))(v72, v82);
          }

          else
          {
            v74 = 0xF000000000000000;
          }

          POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v86, v68, v70, v74, v55, v87, v56, v40, v84, MEMORY[0x277CC54A8]);
          sub_25E8B2B18(v70, v74);
          sub_25E91471C(v65, v67);
          (*(v77 + 8))(v68, v84);
        }
      }

      else
      {
        if (qword_27FD0CDD0 != -1)
        {
          swift_once();
        }

        v69 = sub_25E9414D8();
        __swift_project_value_buffer(v69, qword_27FD0CDD8);
        Logger.PSSO_ERROR(code:description:)(-1005);
        swift_willThrow();
      }
    }

    sub_25E915118(v40, &unk_27FD0BE10, &unk_25E9490C0);
    v37 = v55;
  }

  else
  {
    if (qword_27FD0CDD0 != -1)
    {
      swift_once();
    }

    v36 = sub_25E9414D8();
    __swift_project_value_buffer(v36, qword_27FD0CDD8);
    Logger.PSSO_ERROR(code:description:)(-1005);
    swift_willThrow();
    v37 = v96;
  }

  return sub_25E915118(v37, &qword_27FD0BCC8, &qword_25E948E78);
}

void *POCryptoKitHPKE_P256_SHA256_AES_GCM_128.encodeAndEncryptJWT(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(void *a1, __SecKey *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9, uint64_t a10, __SecKey *a11)
{
  v12 = v11;
  v79 = a7;
  v78 = a4;
  v76 = a3;
  v84 = a2;
  v86 = a1;
  v77 = sub_25E941898();
  v75 = *(v77 - 8);
  v16 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v74 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25E9417A8();
  v80 = *(v18 - 8);
  v81 = v18;
  v19 = *(v80 + 64);
  MEMORY[0x28223BE20](v18);
  v85 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BE20, &qword_25E9490D0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v82 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v87 = &v72 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v72 - v31;
  v33 = sub_25E941568();
  v34 = *(*(v33 - 8) + 56);
  v90 = v32;
  v34(v32, 1, 1, v33);
  if (a6 >> 60 != 15)
  {
    v88 = a5;
    v89 = a6;
    sub_25E9146C8(a5, a6);
    sub_25E941558();
    v35 = v90;
    sub_25E915118(v90, &qword_27FD0BCC8, &qword_25E948E78);
    v34(v30, 0, 1, v33);
    v12 = v11;
    sub_25E915178(v30, v35, &qword_27FD0BCC8, &qword_25E948E78);
    if (a8 >> 60 == 15)
    {
      if (qword_27FD0CDD0 != -1)
      {
        swift_once();
      }

      v36 = sub_25E9414D8();
      v37 = __swift_project_value_buffer(v36, qword_27FD0CDD8);
      Logger.PSSO_ERROR(code:description:)(-1005);
      swift_willThrow();
      goto LABEL_10;
    }
  }

  v83 = a8;
  v38 = sub_25E9417D8();
  v39 = *(*(v38 - 8) + 56);
  v40 = v87;
  v39(v87, 1, 1, v38);
  if (a9)
  {
    v41 = v12;
    v42 = a9;
    v43 = SecKeyCopyExternalRepresentation(v42, 0);
    if (v43)
    {
      v44 = v43;
      v37 = sub_25E941478();
      v46 = v45;

      v88 = v37;
      v89 = v46;
      sub_25E9146C8(v37, v46);
      v47 = v82;
      sub_25E9417C8();
      if (v41)
      {

        sub_25E91471C(v37, v46);
        sub_25E915118(v87, &qword_27FD0BE20, &qword_25E9490D0);
LABEL_10:
        v48 = v90;
LABEL_21:
        sub_25E915118(v48, &qword_27FD0BCC8, &qword_25E948E78);
        return v37;
      }

      v49 = v38;
      v50 = v87;
      sub_25E915118(v87, &qword_27FD0BE20, &qword_25E9490D0);

      v51 = v46;
      v40 = v50;
      sub_25E91471C(v37, v51);
      v73 = v49;
      v39(v47, 0, 1, v49);
      v12 = 0;
      sub_25E915178(v47, v50, &qword_27FD0BE20, &qword_25E9490D0);
    }

    else
    {
      v73 = v38;
    }
  }

  else
  {
    v73 = v38;
  }

  v52 = [v86 header];
  v53 = sub_25E941838();
  [v52 setEnc_];

  v54 = sub_25E941838();
  [v52 setAlg_];

  v55 = SecKeyCopyExternalRepresentation(v84, 0);
  v56 = v90;
  v57 = v83;
  v58 = v85;
  if (!v55)
  {
    if (qword_27FD0CDD0 != -1)
    {
      swift_once();
    }

    v62 = sub_25E9414D8();
    v37 = __swift_project_value_buffer(v62, qword_27FD0CDD8);
    Logger.PSSO_ERROR(code:description:)(-1005);
    swift_willThrow();
    goto LABEL_20;
  }

  v37 = v55;
  v59 = sub_25E941478();
  v61 = v60;

  v88 = v59;
  v89 = v61;
  sub_25E9146C8(v59, v61);
  sub_25E941798();
  if (v12)
  {
    sub_25E91471C(v59, v61);
LABEL_20:
    sub_25E915118(v40, &qword_27FD0BE20, &qword_25E9490D0);
    v48 = v56;
    goto LABEL_21;
  }

  v65 = a10;
  v64 = a11;
  v66 = v78;
  if (v78)
  {
    v67 = v74;
    v84 = a11;
    sub_25E941878();
    v66 = sub_25E941858();
    v87 = v68;
    (*(v75 + 8))(v67, v77);
    v65 = a10;
    v64 = v84;
  }

  else
  {
    v87 = 0xF000000000000000;
  }

  v69 = v66;
  v70 = v66;
  v71 = v90;
  v37 = POCryptoKitHPKE.encodeAndEncryptJWT<A>(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(v86, v58, v70, v87, v90, v79, v57, v40, v65, v64, v73, MEMORY[0x277CC54A8]);
  sub_25E8B2B18(v69, v87);
  sub_25E91471C(v59, v61);
  (*(v80 + 8))(v58, v81);
  sub_25E915118(v40, &qword_27FD0BE20, &qword_25E9490D0);
  sub_25E915118(v71, &qword_27FD0BCC8, &qword_25E948E78);
  return v37;
}

id POCryptoKitHPKE_P256_SHA256_AES_GCM_128.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for POCryptoKitHPKE_P256_SHA256_AES_GCM_128()
{
  result = qword_27FD0CDF0;
  if (!qword_27FD0CDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E91D688()
{
  v0 = sub_25E9414D8();
  __swift_allocate_value_buffer(v0, qword_27FD0D008);
  __swift_project_value_buffer(v0, qword_27FD0D008);
  return sub_25E9414C8();
}

uint64_t *sub_25E91D71C()
{
  if (qword_27FD0D020 != -1)
  {
    swift_once();
  }

  return &qword_27FD0D530;
}

id sub_25E91D76C()
{
  if (qword_27FD0D020 != -1)
  {
    swift_once();
  }

  v0 = qword_27FD0D530;

  return v0;
}

uint64_t sub_25E91D824()
{
  v0 = sub_25E941668();
  __swift_allocate_value_buffer(v0, qword_27FD0D538);
  __swift_project_value_buffer(v0, qword_27FD0D538);
  return sub_25E941628();
}

uint64_t sub_25E91D870()
{
  if (qword_27FD0D028 != -1)
  {
    swift_once();
  }

  v0 = sub_25E941668();

  return __swift_project_value_buffer(v0, qword_27FD0D538);
}

uint64_t sub_25E91D8D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD0D028 != -1)
  {
    swift_once();
  }

  v2 = sub_25E941668();
  v3 = __swift_project_value_buffer(v2, qword_27FD0D538);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t POUserUnlockKeySwift.encryptedKeyData.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_encryptedKeyData);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_25E91DAE8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_encryptedKeyData);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_25E91DB48@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E91DBA4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_encryptedKeyData);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t POUserUnlockKeySwift.keyData.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_keyData;
  swift_beginAccess();
  v2 = *v1;
  sub_25E915E64(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_25E91DDAC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_keyData);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_25E8B2B18(v6, v7);
}

uint64_t sub_25E91DE0C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25E91DE68(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_keyData);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_25E915E64(v2, v3);
  return sub_25E8B2B18(v5, v6);
}

id POUserUnlockKeySwift.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for POUserUnlockKeySwift();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_25E91E188(uint64_t a1, uint64_t a2, void *a3)
{
  v54 = a3;
  v3 = sub_25E941668();
  v51 = *(v3 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25E941788();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25E9415E8();
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;

  v18 = Data.init(base64URLEncoded:)();
  if (v19 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v20 = v18;
  v21 = v19;
  v49 = v11;
  v50 = v17;
  v48 = v8;
  v22 = objc_allocWithZone(POWrappedTokenJWTBody);
  sub_25E9146C8(v20, v21);
  v23 = sub_25E941458();
  v24 = [v22 initWithJWTData_];

  sub_25E8B2B18(v20, v21);
  if (!v24)
  {
LABEL_7:
    sub_25E8B2B18(v20, v21);
LABEL_8:
    if (qword_27FD0D000 != -1)
    {
      swift_once();
    }

    v33 = sub_25E9414D8();
    __swift_project_value_buffer(v33, qword_27FD0D008);
    Logger.PSSO_ERROR(code:description:)(-1005);
    swift_willThrow();
    return v15;
  }

  v47 = v7;
  v25 = [v24 encapsulatedKey];
  sub_25E941848();

  v26 = sub_25E941418();
  v28 = v27;

  if (v28 >> 60 == 15)
  {
LABEL_6:

    goto LABEL_7;
  }

  v45 = v26;
  v46 = v28;
  v44 = v24;
  v29 = [v24 cipherText];
  sub_25E941848();

  v30 = sub_25E941418();
  v32 = v31;

  if (v32 >> 60 == 15)
  {
    sub_25E8B2B18(v45, v46);
    v24 = v44;
    goto LABEL_6;
  }

  v43 = v30;
  v35 = v54;
  v36 = v50;
  v37 = v57;
  sub_25E9415C8();
  if (v37)
  {
    sub_25E8B2B18(v43, v32);
    sub_25E8B2B18(v45, v46);

    sub_25E8B2B18(v20, v21);
  }

  else
  {
    v57 = v32;
    v38 = v49;
    (*(v53 + 16))(v15, v36, v49);
    if (qword_27FD0D028 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v3, qword_27FD0D538);
    (*(v51 + 16))(v6, v39, v3);
    sub_25E9146C8(v45, v46);
    v40 = v52;
    sub_25E941758();
    v41 = v43;
    v42 = v57;
    v55 = v43;
    v56 = v57;
    sub_25E917954();
    v15 = sub_25E941778();

    sub_25E8B2B18(v45, v46);
    sub_25E8B2B18(v20, v21);
    (*(v48 + 8))(v40, v47);
    (*(v53 + 8))(v50, v38);
    sub_25E8B2B18(v41, v42);
  }

  return v15;
}

char *sub_25E91E7B0(__SecKey *a1)
{
  v2 = sub_25E941668();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25E941718();
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v7);
  v68 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E9417A8();
  v69 = *(v10 - 8);
  v11 = *(v69 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v58 - v15;
  v17 = objc_opt_self();
  if (qword_27FD0D020 != -1)
  {
    swift_once();
  }

  v18 = [v17 createSEPEncryptionKeyForAlgorithm:qword_27FD0D530 shared:1 preboot:0];
  v19 = v17;
  if (v18)
  {
    v20 = [v17 dataForKey_];
    if (!v20)
    {
      if (qword_27FD0D000 != -1)
      {
        swift_once();
      }

      v31 = sub_25E9414D8();
      __swift_project_value_buffer(v31, qword_27FD0D008);
      Logger.PSSO_ERROR(code:description:)(-1001);
      swift_willThrow();
      goto LABEL_18;
    }

    v21 = v20;
    v64 = sub_25E941478();
    v65 = v22;

    v23 = SecKeyCopyExternalRepresentation(a1, 0);
    if (!v23)
    {
      if (qword_27FD0D000 != -1)
      {
        swift_once();
      }

      v32 = sub_25E9414D8();
      __swift_project_value_buffer(v32, qword_27FD0D008);
      Logger.PSSO_ERROR(code:description:)(-1005);
      swift_willThrow();
      goto LABEL_17;
    }

    v63 = v3;
    v24 = v23;
    v25 = v16;
    v26 = sub_25E941478();
    v28 = v27;

    v70 = v26;
    v71 = v28;
    sub_25E9146C8(v26, v28);
    v29 = v72;
    sub_25E941798();
    if (v29)
    {
      sub_25E91471C(v26, v28);
LABEL_17:
      sub_25E91471C(v64, v65);
LABEL_18:

      return v6;
    }

    v62 = v26;
    v72 = v28;
    (*(v69 + 16))(v14, v25, v10);
    if (qword_27FD0D028 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v2, qword_27FD0D538);
    (*(v63 + 16))(v6, v34, v2);
    sub_25E9416D8();
    v35 = v64;
    v70 = v64;
    v71 = v65;
    sub_25E917954();
    v63 = sub_25E941708();
    v61 = v36;
    v37 = [objc_allocWithZone(POMutableWrappedTokenJWTBody) init];
    v60 = v10;
    v38 = v37;
    v39 = sub_25E9416E8();
    v41 = v40;
    sub_25E941468();
    v42 = v35;
    sub_25E91471C(v39, v41);
    v43 = sub_25E941838();

    [v38 setEncapsulatedKey_];

    sub_25E941468();
    v44 = sub_25E941838();

    [v38 setCipherText_];

    v6 = [objc_allocWithZone(type metadata accessor for POUserUnlockKeySwift()) init];
    v45 = &v6[OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_keyData];
    swift_beginAccess();
    v46 = *v45;
    v47 = v45[1];
    v48 = v42;
    *v45 = v42;
    v49 = v65;
    v45[1] = v65;
    sub_25E9146C8(v48, v49);
    sub_25E8B2B18(v46, v47);
    v50 = [v38 dataRepresentation];
    v51 = sub_25E941478();
    v53 = v52;

    v54 = Data.base64URLEncodedString()();
    object = v54._object;
    sub_25E91471C(v51, v53);

    sub_25E91471C(v63, v61);
    sub_25E91471C(v64, v49);
    sub_25E91471C(v62, v72);
    (*(v66 + 8))(v68, v67);
    (*(v69 + 8))(v25, v60);
    v55 = &v6[OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_encryptedKeyData];
    swift_beginAccess();
    v56 = v55[1];
    v57 = object;
    *v55 = v54._countAndFlagsBits;
    v55[1] = v57;
  }

  else
  {
    if (qword_27FD0D000 != -1)
    {
      swift_once();
    }

    v30 = sub_25E9414D8();
    __swift_project_value_buffer(v30, qword_27FD0D008);
    Logger.PSSO_ERROR(code:description:)(-1001);
    swift_willThrow();
  }

  return v6;
}

id Logger.PSSO_ERROR(code:description:)(uint64_t a1)
{
  v2 = sub_25E941838();
  v3 = [objc_opt_self() errorWithCode:a1 description:v2];

  v4 = sub_25E941988();
  v5 = sub_25E9414B8();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_25E8B1000, v5, v4, "%{public}@", v6, 0xCu);
    sub_25E91F4C8(v7);
    MEMORY[0x25F8C3E40](v7, -1, -1);
    MEMORY[0x25F8C3E40](v6, -1, -1);
  }

  return v3;
}

id Logger.PSSO_ERROR_VALUE(code:description:value:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_25E941838();
  v7 = [objc_opt_self() errorWithCode:a1 description:v6];

  v8 = sub_25E941988();
  v9 = sub_25E9414B8();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543618;
    *(v10 + 4) = v7;
    *(v10 + 12) = 2114;
    *(v10 + 14) = a4;
    *v11 = v7;
    v11[1] = a4;
    v12 = v7;
    v13 = a4;
    _os_log_impl(&dword_25E8B1000, v9, v8, "%{public}@, %{public}@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BE38, &qword_25E9491A8);
    swift_arrayDestroy();
    MEMORY[0x25F8C3E40](v11, -1, -1);
    MEMORY[0x25F8C3E40](v10, -1, -1);
  }

  return v7;
}

id Logger.PSSO_SUBERROR(code:subError:description:)(uint64_t a1)
{
  v2 = sub_25E9413F8();
  v3 = sub_25E941838();
  v4 = [objc_opt_self() errorWithCode:a1 underlyingError:v2 description:v3];

  v5 = sub_25E941988();
  v6 = sub_25E9414B8();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_25E8B1000, v6, v5, "%{public}@", v7, 0xCu);
    sub_25E91F4C8(v8);
    MEMORY[0x25F8C3E40](v8, -1, -1);
    MEMORY[0x25F8C3E40](v7, -1, -1);
  }

  return v4;
}

id Logger.PSSO_SUBERROR_VALUE(code:subError:description:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_25E9413F8();
  v8 = sub_25E941838();
  v9 = [objc_opt_self() errorWithCode:a1 underlyingError:v7 description:v8];

  v10 = sub_25E941988();
  v11 = sub_25E9414B8();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543618;
    *(v12 + 4) = v9;
    *(v12 + 12) = 2114;
    *(v12 + 14) = a5;
    *v13 = v9;
    v13[1] = a5;
    v14 = v9;
    v15 = a5;
    _os_log_impl(&dword_25E8B1000, v11, v10, "%{public}@, %{public}@", v12, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BE38, &qword_25E9491A8);
    swift_arrayDestroy();
    MEMORY[0x25F8C3E40](v13, -1, -1);
    MEMORY[0x25F8C3E40](v12, -1, -1);
  }

  return v9;
}

uint64_t sub_25E91F4C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BE38, &qword_25E9491A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall Data.base64URLEncodedString()()
{
  v0 = sub_25E941368();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25E941468();
  v23 = v5;
  v20 = 43;
  v21 = 0xE100000000000000;
  v18 = 45;
  v19 = 0xE100000000000000;
  sub_25E91F76C();
  v6 = sub_25E9419B8();
  v8 = v7;

  v22 = v6;
  v23 = v8;
  v20 = 47;
  v21 = 0xE100000000000000;
  v18 = 95;
  v19 = 0xE100000000000000;
  v9 = sub_25E9419B8();
  v11 = v10;

  v22 = v9;
  v23 = v11;
  v20 = &unk_28708D980;
  sub_25E91F7C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BE50, qword_25E9491B0);
  sub_25E91F818();
  sub_25E9419C8();
  v12 = sub_25E9419A8();
  v14 = v13;
  (*(v1 + 8))(v4, v0);

  v15 = v12;
  v16 = v14;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

unint64_t sub_25E91F76C()
{
  result = qword_27FD0BE40;
  if (!qword_27FD0BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0BE40);
  }

  return result;
}

unint64_t sub_25E91F7C0()
{
  result = qword_27FD0BE48;
  if (!qword_27FD0BE48)
  {
    sub_25E941368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0BE48);
  }

  return result;
}

unint64_t sub_25E91F818()
{
  result = qword_27FD0BE58;
  if (!qword_27FD0BE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD0BE50, qword_25E9491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0BE58);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t Data.init(base64URLEncoded:)()
{
  sub_25E9418C8();
  sub_25E91F76C();
  sub_25E9419B8();

  sub_25E9419B8();

  sub_25E941968();
  sub_25E9418E8();

  v0 = sub_25E941418();
  v2 = v1;
  sub_25E915E64(v0, v1);

  if (v2 >> 60 != 15)
  {
    sub_25E8B2B18(v0, v2);
  }

  return v0;
}

id POCryptoKitAlgorithmCurve25519.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id POCryptoKitAlgorithmCurve25519.init()()
{
  ObjectType = swift_getObjectType();
  v2 = sub_25E941838();
  v3 = sub_25E941838();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithSecKeyAlgorithm_algorithmName_alg_, 0, v2, v3);

  return v4;
}

uint64_t POCryptoKitAlgorithmCurve25519.sign(_:using:error:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_25E9415B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3;
  sub_25E941598();
  if (!v3)
  {
    v14[0] = a1;
    v14[1] = a2;
    sub_25E917954();
    a2 = sub_25E9415A8();
    (*(v8 + 8))(v11, v7);
  }

  return a2;
}

id POCryptoKitAlgorithmCurve25519.__allocating_init(secKeyAlgorithm:algorithmName:alg:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_25E941838();

  v5 = sub_25E941838();

  v6 = [v3 initWithSecKeyAlgorithm:a1 algorithmName:v4 alg:v5];

  return v6;
}

id POCryptoKitAlgorithmCurve25519.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s15PlatformSSOCore30POCryptoKitAlgorithmCurve25519C15verifySignature_2on5usingSb10Foundation4DataV_AISo9SecKeyRefatF_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __SecKey *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0BE60, &qword_25E9491F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v26 - v12;
  v14 = sub_25E941548();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = SecKeyCopyExternalRepresentation(a5, 0);
  if (v19)
  {
    v26[0] = a4;
    v20 = v19;
    v21 = sub_25E941478();
    v23 = v22;

    v27 = v21;
    v28 = v23;
    sub_25E9146C8(v21, v23);
    sub_25E941538();
    (*(v15 + 56))(v13, 0, 1, v14);
    (*(v15 + 32))(v18, v13, v14);
    v27 = a1;
    v28 = a2;
    v26[1] = a3;
    v26[2] = v26[0];
    sub_25E917954();
    v24 = sub_25E941528();
    sub_25E91471C(v21, v23);
    (*(v15 + 8))(v18, v14);
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t _s15PlatformSSOCore30POCryptoKitAlgorithmCurve25519C15verifySignature_2on22usingCertificateStringSb10Foundation4DataV_AISStF_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(MEMORY[0x277CBEA90]);
  v9 = sub_25E941838();
  v10 = [v8 initWithBase64EncodedString:v9 options:0];

  if (v10)
  {
    v11 = SecCertificateCreateWithData(0, v10);
    if (v11)
    {
      v12 = v11;
      v13 = SecCertificateCopyKey(v11);
      if (v13)
      {
        v14 = v13;
        v15 = _s15PlatformSSOCore30POCryptoKitAlgorithmCurve25519C15verifySignature_2on5usingSb10Foundation4DataV_AISo9SecKeyRefatF_0(a1, a2, a3, a4, v13);

        v10 = v12;
        v12 = v14;
      }

      else
      {
        v15 = 0;
      }

      v10 = v12;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t _s15PlatformSSOCore30POCryptoKitAlgorithmCurve25519C9verifyKeyySbSo03SecH3RefaF_0(void *a1)
{
  v2 = sub_25E9415B8();
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25E941898();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25E9414A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E941498();
  sub_25E941488();
  (*(v12 + 8))(v15, v11);
  sub_25E941878();
  v16 = sub_25E941858();
  v18 = v17;

  result = (*(v7 + 8))(v10, v6);
  if (v18 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    if ([objc_opt_self() isSEPKey_])
    {
      v20 = a1;
      sub_25E941598();
      v26 = v16;
      v27 = v18;
      sub_25E917954();
      v21 = sub_25E9415A8();
      sub_25E91471C(v21, v22);
      (*(v24 + 8))(v5, v25);
    }

    sub_25E8B2B18(v16, v18);
    return 1;
  }

  return result;
}

uint64_t sub_25E9208F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0BE60, &qword_25E9491F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E92095C()
{
  v0 = sub_25E9414D8();
  __swift_allocate_value_buffer(v0, qword_27FD0D038);
  __swift_project_value_buffer(v0, qword_27FD0D038);
  return sub_25E9414C8();
}

id POCryptoKitHPKE_P256_SHA256_AES_GCM_256.__allocating_init()()
{
  v1 = sub_25E941668();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(v0);
  *&v5[OBJC_IVAR____TtC15PlatformSSOCore39POCryptoKitHPKE_P256_SHA256_AES_GCM_256_encryptionAlgorithm] = 0x2870A91B0;
  v6 = &unk_2870A91B0;
  sub_25E941628();
  return POCryptoKitHPKE.init(cipherSuite:)(v4);
}

id POCryptoKitHPKE_P256_SHA256_AES_GCM_256.init()()
{
  v1 = sub_25E941668();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC15PlatformSSOCore39POCryptoKitHPKE_P256_SHA256_AES_GCM_256_encryptionAlgorithm) = 0x2870A91B0;
  v5 = &unk_2870A91B0;
  sub_25E941628();
  return POCryptoKitHPKE.init(cipherSuite:)(v4);
}

Swift::Void __swiftcall POCryptoKitHPKE_P256_SHA256_AES_GCM_256.addValues(to:)(POMutableJWTHeader to)
{
  isa = to.super.super.isa;
  v2 = sub_25E941838();
  [(objc_class *)isa setEnc:v2];

  [(objc_class *)isa setAlg:@"HPKE-P256-SHA256-A256GCM"];
}

Swift::String __swiftcall POCryptoKitHPKE_P256_SHA256_AES_GCM_256.algValue()()
{
  v0 = sub_25E941848();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t POCryptoKitHPKE_P256_SHA256_AES_GCM_256.decodeAndDecryptJWT(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v87 = a7;
  v85 = a4;
  v86 = a1;
  v83 = a3;
  v90 = a2;
  v84 = sub_25E9417D8();
  v77 = *(v84 - 8);
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v84);
  v88 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25E941898();
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v14);
  v80 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25E9415E8();
  v78 = *(v17 - 8);
  v79 = v17;
  v18 = *(v78 + 64);
  MEMORY[0x28223BE20](v17);
  v91 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0BE10, &unk_25E9490C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v92 = &v76 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v76 - v31;
  v33 = sub_25E941568();
  v34 = *(*(v33 - 8) + 56);
  v96 = v32;
  v34(v32, 1, 1, v33);
  if (a6 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v94 = a5;
  v95 = a6;
  sub_25E9146C8(a5, a6);
  sub_25E941558();
  v35 = v96;
  sub_25E915118(v96, &qword_27FD0BCC8, &qword_25E948E78);
  v34(v30, 0, 1, v33);
  sub_25E915178(v30, v35, &qword_27FD0BCC8, &qword_25E948E78);
  if (a8 >> 60 != 15)
  {
LABEL_6:
    v89 = a8;
    v38 = sub_25E9417A8();
    v39 = *(*(v38 - 8) + 56);
    v40 = v92;
    v39(v92, 1, 1, v38);
    if (a9)
    {
      v41 = a9;
      v42 = SecKeyCopyExternalRepresentation(v41, 0);
      if (v42)
      {
        v43 = v42;
        v44 = sub_25E941478();
        v46 = v45;

        v94 = v44;
        v95 = v46;
        sub_25E9146C8(v44, v46);
        v47 = v93;
        sub_25E941798();
        v93 = v47;
        if (v47)
        {

          sub_25E91471C(v44, v46);
          sub_25E915118(v92, &unk_27FD0BE10, &unk_25E9490C0);
          return sub_25E915118(v96, &qword_27FD0BCC8, &qword_25E948E78);
        }

        v49 = v92;
        sub_25E915118(v92, &unk_27FD0BE10, &unk_25E9490C0);

        v50 = v46;
        v40 = v49;
        sub_25E91471C(v44, v50);
        v39(v24, 0, 1, v38);
        sub_25E915178(v24, v49, &unk_27FD0BE10, &unk_25E9490C0);
      }

      else
      {
      }
    }

    v51 = objc_opt_self();
    v52 = v90;
    v53 = [v51 isSEPKey_];
    v54 = v93;
    v55 = v96;
    v56 = v89;
    v57 = v91;
    if (v53)
    {
      v58 = v52;
      sub_25E9415D8();
      if (!v54)
      {
        if (v85)
        {
          v59 = v80;
          sub_25E941878();
          v60 = sub_25E941858();
          v62 = v61;
          (*(v81 + 8))(v59, v82);
        }

        else
        {
          v60 = 0;
          v62 = 0xF000000000000000;
        }

        v75 = v79;
        POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v86, v57, v60, v62, v55, v87, v56, v40, v79, MEMORY[0x277CC5380]);
        sub_25E8B2B18(v60, v62);
        (*(v78 + 8))(v57, v75);
      }
    }

    else
    {
      v63 = SecKeyCopyExternalRepresentation(v52, 0);
      if (v63)
      {
        v64 = v63;
        v65 = sub_25E941478();
        v67 = v66;

        v94 = v65;
        v95 = v67;
        sub_25E9146C8(v65, v67);
        v68 = v88;
        sub_25E9417C8();
        if (v54)
        {
          sub_25E91471C(v65, v67);
        }

        else
        {
          v70 = v85;
          if (v85)
          {
            v71 = v80;
            sub_25E941878();
            v70 = sub_25E941858();
            v72 = v71;
            v74 = v73;
            (*(v81 + 8))(v72, v82);
          }

          else
          {
            v74 = 0xF000000000000000;
          }

          POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v86, v68, v70, v74, v55, v87, v56, v40, v84, MEMORY[0x277CC54A8]);
          sub_25E8B2B18(v70, v74);
          sub_25E91471C(v65, v67);
          (*(v77 + 8))(v68, v84);
        }
      }

      else
      {
        if (qword_27FD0D030 != -1)
        {
          swift_once();
        }

        v69 = sub_25E9414D8();
        __swift_project_value_buffer(v69, qword_27FD0D038);
        Logger.PSSO_ERROR(code:description:)(-1005);
        swift_willThrow();
      }
    }

    sub_25E915118(v40, &unk_27FD0BE10, &unk_25E9490C0);
    v37 = v55;
  }

  else
  {
    if (qword_27FD0D030 != -1)
    {
      swift_once();
    }

    v36 = sub_25E9414D8();
    __swift_project_value_buffer(v36, qword_27FD0D038);
    Logger.PSSO_ERROR(code:description:)(-1005);
    swift_willThrow();
    v37 = v96;
  }

  return sub_25E915118(v37, &qword_27FD0BCC8, &qword_25E948E78);
}

void *POCryptoKitHPKE_P256_SHA256_AES_GCM_256.encodeAndEncryptJWT(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(void *a1, __SecKey *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9, char *a10, __SecKey *a11)
{
  v12 = v11;
  v75 = a7;
  v74 = a4;
  v72 = a3;
  v79 = a2;
  v81 = a1;
  v73 = sub_25E941898();
  v71 = *(v73 - 8);
  v16 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v70 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25E9417A8();
  v76 = *(v18 - 8);
  v77 = v18;
  v19 = *(v76 + 64);
  MEMORY[0x28223BE20](v18);
  v80 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BE20, &qword_25E9490D0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v78 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v84 = &v67 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v67 - v31;
  v33 = sub_25E941568();
  v34 = *(*(v33 - 8) + 56);
  v34(v32, 1, 1, v33);
  if (a6 >> 60 != 15)
  {
    v82 = a5;
    v83 = a6;
    sub_25E9146C8(a5, a6);
    sub_25E941558();
    sub_25E915118(v32, &qword_27FD0BCC8, &qword_25E948E78);
    v34(v30, 0, 1, v33);
    v12 = v11;
    sub_25E915178(v30, v32, &qword_27FD0BCC8, &qword_25E948E78);
    if (a8 >> 60 == 15)
    {
      if (qword_27FD0D030 != -1)
      {
        swift_once();
      }

      v35 = sub_25E9414D8();
      v36 = __swift_project_value_buffer(v35, qword_27FD0D038);
      Logger.PSSO_ERROR(code:description:)(-1005);
      swift_willThrow();
      goto LABEL_20;
    }
  }

  v37 = sub_25E9417D8();
  v38 = *(*(v37 - 8) + 56);
  v39 = v84;
  v38(v84, 1, 1, v37);
  if (a9)
  {
    v69 = v32;
    v40 = v12;
    v41 = a9;
    v42 = SecKeyCopyExternalRepresentation(v41, 0);
    if (v42)
    {
      v43 = v42;
      v68 = v37;
      v36 = sub_25E941478();
      v45 = v44;

      v82 = v36;
      v83 = v45;
      sub_25E9146C8(v36, v45);
      v46 = v78;
      sub_25E9417C8();
      if (v40)
      {

        sub_25E91471C(v36, v45);
        sub_25E915118(v84, &qword_27FD0BE20, &qword_25E9490D0);
        v47 = v69;
LABEL_21:
        sub_25E915118(v47, &qword_27FD0BCC8, &qword_25E948E78);
        return v36;
      }

      v48 = v84;
      sub_25E915118(v84, &qword_27FD0BE20, &qword_25E9490D0);

      v49 = v45;
      v39 = v48;
      sub_25E91471C(v36, v49);
      v50 = v68;
      v38(v46, 0, 1, v68);
      v51 = v46;
      v37 = v50;
      v52 = v48;
      v12 = 0;
      sub_25E915178(v51, v52, &qword_27FD0BE20, &qword_25E9490D0);
    }

    else
    {
    }

    v32 = v69;
  }

  v53 = [v81 header];
  v54 = sub_25E941838();
  [v53 setEnc_];

  [v53 setAlg_];
  v55 = SecKeyCopyExternalRepresentation(v79, 0);
  if (!v55)
  {
    if (qword_27FD0D030 != -1)
    {
      swift_once();
    }

    v60 = sub_25E9414D8();
    v36 = __swift_project_value_buffer(v60, qword_27FD0D038);
    Logger.PSSO_ERROR(code:description:)(-1005);
    swift_willThrow();
    goto LABEL_19;
  }

  v56 = a8;
  v36 = v55;
  v57 = sub_25E941478();
  v59 = v58;

  v82 = v57;
  v83 = v59;
  sub_25E9146C8(v57, v59);
  sub_25E941798();
  if (v12)
  {
    sub_25E91471C(v57, v59);
LABEL_19:
    sub_25E915118(v39, &qword_27FD0BE20, &qword_25E9490D0);
LABEL_20:
    v47 = v32;
    goto LABEL_21;
  }

  v63 = a10;
  v62 = a11;
  v64 = v74;
  if (v74)
  {
    v65 = v70;
    v78 = a10;
    v79 = a11;
    sub_25E941878();
    v64 = sub_25E941858();
    v84 = v66;
    (*(v71 + 8))(v65, v73);
    v63 = v78;
    v62 = v79;
  }

  else
  {
    v84 = 0xF000000000000000;
  }

  v36 = POCryptoKitHPKE.encodeAndEncryptJWT<A>(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(v81, v80, v64, v84, v32, v75, v56, v39, v63, v62, v37, MEMORY[0x277CC54A8]);
  sub_25E8B2B18(v64, v84);
  sub_25E91471C(v57, v59);
  (*(v76 + 8))(v80, v77);
  sub_25E915118(v39, &qword_27FD0BE20, &qword_25E9490D0);
  sub_25E915118(v32, &qword_27FD0BCC8, &qword_25E948E78);
  return v36;
}

id POCryptoKitHPKE_P256_SHA256_AES_GCM_256.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for POCryptoKitHPKE_P256_SHA256_AES_GCM_256()
{
  result = qword_27FD0D050;
  if (!qword_27FD0D050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E92229C()
{
  v0 = sub_25E9414D8();
  __swift_allocate_value_buffer(v0, qword_27FD0D268);
  __swift_project_value_buffer(v0, qword_27FD0D268);
  return sub_25E9414C8();
}

id POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly.__allocating_init()()
{
  v1 = sub_25E941668();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(v0);
  *&v5[OBJC_IVAR____TtC15PlatformSSOCore44POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly_encryptionAlgorithm] = 0x2870A91E0;
  v6 = &unk_2870A91E0;
  sub_25E941648();
  return POCryptoKitHPKE.init(cipherSuite:)(v4);
}

id POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly.init()()
{
  v1 = sub_25E941668();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC15PlatformSSOCore44POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly_encryptionAlgorithm) = 0x2870A91E0;
  v5 = &unk_2870A91E0;
  sub_25E941648();
  return POCryptoKitHPKE.init(cipherSuite:)(v4);
}

Swift::Void __swiftcall POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly.addValues(to:)(POMutableJWTHeader to)
{
  isa = to.super.super.isa;
  v2 = sub_25E941838();
  [(objc_class *)isa setEnc:v2];

  [(objc_class *)isa setAlg:@"HPKE-X25519-SHA256-ChaCha20Poly1305"];
}

Swift::String __swiftcall POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly.algValue()()
{
  v0 = sub_25E941848();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly.decodeAndDecryptJWT(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9)
{
  v87 = a7;
  v85 = a4;
  v86 = a1;
  v83 = a3;
  v90 = a2;
  v84 = sub_25E941518();
  v77 = *(v84 - 8);
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v84);
  v88 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25E941898();
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v14);
  v80 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25E941588();
  v78 = *(v17 - 8);
  v79 = v17;
  v18 = *(v78 + 64);
  MEMORY[0x28223BE20](v17);
  v91 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0BE70, &unk_25E9492B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v92 = &v76 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v76 - v31;
  v33 = sub_25E941568();
  v34 = *(*(v33 - 8) + 56);
  v96 = v32;
  v34(v32, 1, 1, v33);
  if (a6 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v94 = a5;
  v95 = a6;
  sub_25E9146C8(a5, a6);
  sub_25E941558();
  v35 = v96;
  sub_25E915118(v96, &qword_27FD0BCC8, &qword_25E948E78);
  v34(v30, 0, 1, v33);
  sub_25E915178(v30, v35, &qword_27FD0BCC8, &qword_25E948E78);
  if (a8 >> 60 != 15)
  {
LABEL_6:
    v89 = a8;
    v38 = sub_25E9414F8();
    v39 = *(*(v38 - 8) + 56);
    v40 = v92;
    v39(v92, 1, 1, v38);
    if (a9)
    {
      v41 = a9;
      v42 = SecKeyCopyExternalRepresentation(v41, 0);
      if (v42)
      {
        v43 = v42;
        v44 = sub_25E941478();
        v46 = v45;

        v94 = v44;
        v95 = v46;
        sub_25E9146C8(v44, v46);
        v47 = v93;
        sub_25E9414E8();
        v93 = v47;
        if (v47)
        {

          sub_25E91471C(v44, v46);
          sub_25E915118(v92, &unk_27FD0BE70, &unk_25E9492B0);
          return sub_25E915118(v96, &qword_27FD0BCC8, &qword_25E948E78);
        }

        v49 = v92;
        sub_25E915118(v92, &unk_27FD0BE70, &unk_25E9492B0);

        v50 = v46;
        v40 = v49;
        sub_25E91471C(v44, v50);
        v39(v24, 0, 1, v38);
        sub_25E915178(v24, v49, &unk_27FD0BE70, &unk_25E9492B0);
      }

      else
      {
      }
    }

    v51 = objc_opt_self();
    v52 = v90;
    v53 = [v51 isSEPKey_];
    v54 = v93;
    v55 = v96;
    v56 = v89;
    v57 = v91;
    if (v53)
    {
      v58 = v52;
      sub_25E941578();
      if (!v54)
      {
        if (v85)
        {
          v59 = v80;
          sub_25E941878();
          v60 = sub_25E941858();
          v62 = v61;
          (*(v81 + 8))(v59, v82);
        }

        else
        {
          v60 = 0;
          v62 = 0xF000000000000000;
        }

        v75 = v79;
        POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v86, v57, v60, v62, v55, v87, v56, v40, v79, MEMORY[0x277CC5358]);
        sub_25E8B2B18(v60, v62);
        (*(v78 + 8))(v57, v75);
      }
    }

    else
    {
      v63 = SecKeyCopyExternalRepresentation(v52, 0);
      if (v63)
      {
        v64 = v63;
        v65 = sub_25E941478();
        v67 = v66;

        v94 = v65;
        v95 = v67;
        sub_25E9146C8(v65, v67);
        v68 = v88;
        sub_25E941508();
        if (v54)
        {
          sub_25E91471C(v65, v67);
        }

        else
        {
          v70 = v85;
          if (v85)
          {
            v71 = v80;
            sub_25E941878();
            v70 = sub_25E941858();
            v72 = v71;
            v74 = v73;
            (*(v81 + 8))(v72, v82);
          }

          else
          {
            v74 = 0xF000000000000000;
          }

          POCryptoKitHPKE.decodeAndDecryptJWT<A>(_:privateKey:otherInfo:psk:psk_id:authPublicKey:)(v86, v68, v70, v74, v55, v87, v56, v40, v84, MEMORY[0x277CC5230]);
          sub_25E8B2B18(v70, v74);
          sub_25E91471C(v65, v67);
          (*(v77 + 8))(v68, v84);
        }
      }

      else
      {
        if (qword_27FD0D260 != -1)
        {
          swift_once();
        }

        v69 = sub_25E9414D8();
        __swift_project_value_buffer(v69, qword_27FD0D268);
        Logger.PSSO_ERROR(code:description:)(-1005);
        swift_willThrow();
      }
    }

    sub_25E915118(v40, &unk_27FD0BE70, &unk_25E9492B0);
    v37 = v55;
  }

  else
  {
    if (qword_27FD0D260 != -1)
    {
      swift_once();
    }

    v36 = sub_25E9414D8();
    __swift_project_value_buffer(v36, qword_27FD0D268);
    Logger.PSSO_ERROR(code:description:)(-1005);
    swift_willThrow();
    v37 = v96;
  }

  return sub_25E915118(v37, &qword_27FD0BCC8, &qword_25E948E78);
}

void *POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly.encodeAndEncryptJWT(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(void *a1, __SecKey *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void *a9, char *a10, __SecKey *a11)
{
  v12 = v11;
  v75 = a7;
  v74 = a4;
  v72 = a3;
  v79 = a2;
  v81 = a1;
  v73 = sub_25E941898();
  v71 = *(v73 - 8);
  v16 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v70 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25E9414F8();
  v76 = *(v18 - 8);
  v77 = v18;
  v19 = *(v76 + 64);
  MEMORY[0x28223BE20](v18);
  v80 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD0BE80, &qword_25E9492C0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v78 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v84 = &v67 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BCC8, &qword_25E948E78);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v67 - v31;
  v33 = sub_25E941568();
  v34 = *(*(v33 - 8) + 56);
  v34(v32, 1, 1, v33);
  if (a6 >> 60 != 15)
  {
    v82 = a5;
    v83 = a6;
    sub_25E9146C8(a5, a6);
    sub_25E941558();
    sub_25E915118(v32, &qword_27FD0BCC8, &qword_25E948E78);
    v34(v30, 0, 1, v33);
    v12 = v11;
    sub_25E915178(v30, v32, &qword_27FD0BCC8, &qword_25E948E78);
    if (a8 >> 60 == 15)
    {
      if (qword_27FD0D260 != -1)
      {
        swift_once();
      }

      v35 = sub_25E9414D8();
      v36 = __swift_project_value_buffer(v35, qword_27FD0D268);
      Logger.PSSO_ERROR(code:description:)(-1005);
      swift_willThrow();
      goto LABEL_20;
    }
  }

  v37 = sub_25E941518();
  v38 = *(*(v37 - 8) + 56);
  v39 = v84;
  v38(v84, 1, 1, v37);
  if (a9)
  {
    v69 = v32;
    v40 = v12;
    v41 = a9;
    v42 = SecKeyCopyExternalRepresentation(v41, 0);
    if (v42)
    {
      v43 = v42;
      v68 = v37;
      v36 = sub_25E941478();
      v45 = v44;

      v82 = v36;
      v83 = v45;
      sub_25E9146C8(v36, v45);
      v46 = v78;
      sub_25E941508();
      if (v40)
      {

        sub_25E91471C(v36, v45);
        sub_25E915118(v84, &unk_27FD0BE80, &qword_25E9492C0);
        v47 = v69;
LABEL_21:
        sub_25E915118(v47, &qword_27FD0BCC8, &qword_25E948E78);
        return v36;
      }

      v48 = v84;
      sub_25E915118(v84, &unk_27FD0BE80, &qword_25E9492C0);

      v49 = v45;
      v39 = v48;
      sub_25E91471C(v36, v49);
      v50 = v68;
      v38(v46, 0, 1, v68);
      v51 = v46;
      v37 = v50;
      v52 = v48;
      v12 = 0;
      sub_25E915178(v51, v52, &unk_27FD0BE80, &qword_25E9492C0);
    }

    else
    {
    }

    v32 = v69;
  }

  v53 = [v81 header];
  v54 = sub_25E941838();
  [v53 setEnc_];

  [v53 setAlg_];
  v55 = SecKeyCopyExternalRepresentation(v79, 0);
  if (!v55)
  {
    if (qword_27FD0D260 != -1)
    {
      swift_once();
    }

    v60 = sub_25E9414D8();
    v36 = __swift_project_value_buffer(v60, qword_27FD0D268);
    Logger.PSSO_ERROR(code:description:)(-1005);
    swift_willThrow();
    goto LABEL_19;
  }

  v56 = a8;
  v36 = v55;
  v57 = sub_25E941478();
  v59 = v58;

  v82 = v57;
  v83 = v59;
  sub_25E9146C8(v57, v59);
  sub_25E9414E8();
  if (v12)
  {
    sub_25E91471C(v57, v59);
LABEL_19:
    sub_25E915118(v39, &unk_27FD0BE80, &qword_25E9492C0);
LABEL_20:
    v47 = v32;
    goto LABEL_21;
  }

  v63 = a10;
  v62 = a11;
  v64 = v74;
  if (v74)
  {
    v65 = v70;
    v78 = a10;
    v79 = a11;
    sub_25E941878();
    v64 = sub_25E941858();
    v84 = v66;
    (*(v71 + 8))(v65, v73);
    v63 = v78;
    v62 = v79;
  }

  else
  {
    v84 = 0xF000000000000000;
  }

  v36 = POCryptoKitHPKE.encodeAndEncryptJWT<A>(_:publicKey:otherInfo:psk:psk_id:authPrivateKey:auth_kid:)(v81, v80, v64, v84, v32, v75, v56, v39, v63, v62, v37, MEMORY[0x277CC5230]);
  sub_25E8B2B18(v64, v84);
  sub_25E91471C(v57, v59);
  (*(v76 + 8))(v80, v77);
  sub_25E915118(v39, &unk_27FD0BE80, &qword_25E9492C0);
  sub_25E915118(v32, &qword_27FD0BCC8, &qword_25E948E78);
  return v36;
}

uint64_t sub_25E923B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a3;
  v60 = *(a2 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](a1);
  v61 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25E941788();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v8);
  v63 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25E941718();
  v64 = *(v11 - 8);
  v65 = v11;
  v12 = *(v64 + 64);
  MEMORY[0x28223BE20](v11);
  v73 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25E941668();
  v76 = *(v14 - 8);
  v15 = *(v76 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v59 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v66 = &v51 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - v20;
  v22 = *(a3 + 8);
  v71 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v51 - v29;
  v62 = a1;
  sub_25E941618();
  sub_25E941648();
  v69 = sub_25E924248(0x74616420656D6F53, 0xE900000000000061);
  v70 = v31;
  (*(v24 + 16))(v28, v30, AssociatedTypeWitness);
  v32 = *(v76 + 16);
  v68 = v14;
  v32(v66, v21, v14);
  swift_getAssociatedConformanceWitness();
  v33 = v67;
  sub_25E9416D8();
  if (v33)
  {
    sub_25E91471C(v69, v70);
    (*(v76 + 8))(v21, v68);
    (*(v24 + 8))(v30, AssociatedTypeWitness);
  }

  else
  {
    v54 = v32;
    v55 = v24;
    v56 = v30;
    v66 = AssociatedTypeWitness;
    v67 = v21;
    v34 = sub_25E9416E8();
    v36 = v35;
    v74 = v69;
    v75 = v70;
    v37 = sub_25E917954();
    v38 = sub_25E941708();
    v51 = v37;
    v53 = v38;
    v52 = v40;
    v41 = v36;
    v42 = v34;
    (*(v60 + 16))(v61, v62, v71);
    v54(v59, v67, v68);
    sub_25E9146C8(v34, v36);
    sub_25E941758();
    v43 = v52;
    v74 = v53;
    v75 = v52;
    v44 = sub_25E941778();
    v45 = v76;
    v46 = v55;
    v48 = v64;
    v47 = v65;
    v49 = v73;
    sub_25E91471C(v44, v50);
    sub_25E91471C(v69, v70);
    sub_25E91471C(v42, v41);
    (*(v57 + 8))(v63, v58);
    (*(v48 + 8))(v49, v47);
    (*(v45 + 8))(v67, v68);
    (*(v46 + 8))(v56, v66);
    sub_25E91471C(v53, v43);
  }

  return 1;
}

uint64_t sub_25E924248(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0BE90, &qword_25E949398);
  if (swift_dynamicCast())
  {
    sub_25E925C78(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_25E9413E8();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_25E915118(__src, &qword_27FD0BE98, &qword_25E9493A0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_25E9419E8();
  }

  sub_25E924850(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_25E924FF4(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_25E924918(sub_25E925C10);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_25E941438();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_25E924E70(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_25E941908();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_25E941938();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_25E9419E8();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_25E924E70(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_25E941918();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_25E941448();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_25E941448();
    sub_25E8B2B18(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_25E8B2B18(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_25E9146C8(*&__src[0], *(&__src[0] + 1));

  sub_25E91471C(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

id POCurve25519Verify.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id POCurve25519Verify.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_25E924818()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25E924850@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_25E924F3C(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_25E9413D8();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_25E941388();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_25E941428();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_25E924918(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_25E91471C(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_25E91471C(v6, v5);
    *v3 = xmmword_25E9492A0;
    sub_25E91471C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25E941398() && __OFSUB__(v6, sub_25E9413C8()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_25E9413D8();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_25E941378();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_25E924DBC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_25E91471C(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_25E9492A0;
    sub_25E91471C(0, 0xC000000000000000);
    sub_25E941408();
    result = sub_25E924DBC(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_25E924CBC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_25E924F3C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25E925094(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25E925110(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_25E924D50(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_25E924DBC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25E941398();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25E9413C8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_25E9413B8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_25E924E70(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25E941948();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x25F8C2B00](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_25E924EEC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_25E9419D8();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25E924F3C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25E924FF4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_25E9413D8();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_25E9413A8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25E941428();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_25E925094(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25E9413D8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25E941388();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25E941428();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25E925110(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25E9413D8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25E941388();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25E925194(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, unint64_t a4)
{
  v62 = a4;
  v69 = a3;
  v68 = a2(0);
  v58 = *(v68 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v68);
  v59 = &v49 - v6;
  v7 = sub_25E941788();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v61 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E941718();
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v72 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25E941668();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v57 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  v23 = sub_25E9414F8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v49 - v29;
  v60 = a1;
  sub_25E941618();
  sub_25E941648();
  v69 = sub_25E924248(0x74616420656D6F53, 0xE900000000000061);
  v67 = v31;
  (*(v24 + 16))(v28, v30, v23);
  v65 = v14;
  v32 = *(v14 + 16);
  v32(v20, v22, v13);
  v33 = v66;
  sub_25E9416D8();
  if (v33)
  {
    sub_25E91471C(v69, v67);
    (*(v65 + 8))(v22, v13);
    (*(v24 + 8))(v30, v23);
  }

  else
  {
    v52 = v32;
    v53 = v30;
    v54 = v23;
    v66 = v13;
    v34 = sub_25E9416E8();
    v36 = v35;
    v70 = v69;
    v71 = v67;
    v37 = sub_25E917954();
    v38 = sub_25E941708();
    v49 = v37;
    v50 = v38;
    v51 = v40;
    (*(v58 + 16))(v59, v60, v68);
    v52(v57, v22, v66);
    sub_25E9146C8(v34, v36);
    v41 = v61;
    sub_25E941758();
    v62 = v36;
    v68 = v22;
    v42 = v50;
    v70 = v50;
    v71 = v51;
    v43 = sub_25E941778();
    v44 = v64;
    v45 = v65;
    v46 = v63;
    v47 = v67;
    sub_25E91471C(v43, v48);
    sub_25E91471C(v69, v47);
    sub_25E91471C(v34, v62);
    (*(v55 + 8))(v41, v56);
    (*(v46 + 8))(v72, v44);
    (*(v45 + 8))(v68, v66);
    (*(v24 + 8))(v53, v54);
    sub_25E91471C(v42, v51);
  }

  return 1;
}

uint64_t _s15PlatformSSOCore18POCurve25519VerifyC9verifyKeyySbSo03SecF3RefaF_0(void *a1)
{
  v2 = sub_25E941518();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25E941588();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isSEPKey_])
  {
    v12 = a1;
    sub_25E941578();
    v21 = sub_25E925194(v11, MEMORY[0x277CC5360], MEMORY[0x277CC5350], MEMORY[0x277CC5358]);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v13 = SecKeyCopyExternalRepresentation(a1, 0);
    if (v13)
    {
      v14 = v13;
      v15 = sub_25E941478();
      v17 = v16;

      v22[1] = v15;
      v22[2] = v17;
      sub_25E9146C8(v15, v17);
      sub_25E941508();
      v21 = sub_25E925194(v6, MEMORY[0x277CC5240], MEMORY[0x277CC5228], MEMORY[0x277CC5230]);
      (*(v3 + 8))(v6, v2);
      sub_25E91471C(v15, v17);
    }

    else
    {
      if (qword_27FD0D260 != -1)
      {
        swift_once();
      }

      v18 = sub_25E9414D8();
      __swift_project_value_buffer(v18, qword_27FD0D268);
      v19 = Logger.PSSO_ERROR(code:description:)(-1005);
      swift_willThrow();

      v21 = 0;
    }
  }

  return v21 & 1;
}

uint64_t type metadata accessor for POCryptoKitHPKE_Curve25519_SHA256_ChachaPoly()
{
  result = qword_27FD0D280;
  if (!qword_27FD0D280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_25E925C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_25E924D50(sub_25E925D20, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_25E925C78(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t lib_platform_rng()
{
  v0 = ccrng();
  REQUIRE_func(v0 != 0, 22, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  REQUIRE_func(0, 23, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  return v0;
}

uint64_t lib_platform_read_random(uint64_t a1, unsigned int a2)
{
  v4 = platform_rng();
  v5 = (*v4)(v4, a2, a1) == 0;

  return REQUIRE_func(v5, 31, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
}

uint64_t rfc3394_wrap(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unint64_t a6, void *a7, void *a8)
{
  v48 = a1;
  v49 = a3;
  v52 = *MEMORY[0x277D85DE8];
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_encrypt_mode();
  v15 = *v14 + 15;
  MEMORY[0x28223BE20](v14);
  v50 = &v41 - v16;
  bzero(&v41 - v16, v16);
  v17 = v14[1] + 15;
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  bzero(&v41 - v19, v19);
  v21 = 0xFFFFFFFFLL;
  if (HIDWORD(a6) || (a6 - 40) < 0xFFFFFFE0)
  {
    goto LABEL_31;
  }

  v43 = &v41;
  v44 = a8;
  v45 = a6;
  v42 = a7;
  if (!a4)
  {
    v22 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v22 || !a8 || *a8 < a6 + 8)
    {
      rfc3394_wrap_cold_1(__s);
      goto LABEL_32;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v44 >= v45 + 8)
  {
LABEL_15:
    v23 = v45 >> 3;
    if (v45 >> 3 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v25 = 8;
    v26 = v24;
    do
    {
      v27 = *a5++;
      *(__s + v25) = v27;
      v25 += 16;
      --v26;
    }

    while (v26);
    v28 = 0;
    *&__s[0] = v49;
    v29 = 1;
    v46 = v23;
    v47 = v24;
    do
    {
      v48 = v29;
      v49 = v28;
      v30 = __s;
      v31 = 1;
      do
      {
        if (a4)
        {
          if ((a4(1, &firebloom_null_iv, v30, v30, 16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v32 = v14[1];
          cccbc_clear_iv();
          firebloom_cbc_update_f(v14, v50, v20, 0x10uLL);
        }

        v33 = *v30;
        v30 += 2;
        *&__s[v31 % v23] = v33 ^ bswap64(v29++);
        ++v31;
        --v24;
      }

      while (v24);
      v28 = v49 + 1;
      v24 = v47;
      v29 = v48 + v46;
    }

    while (v49 != 5);
    v34 = v42;
    *v42 = *&__s[0];
    v35 = v34 + 1;
    v36 = __s + 1;
    do
    {
      v37 = *v36;
      v36 += 2;
      *v35++ = v37;
      --v24;
    }

    while (v24);
    v21 = 0;
    *v44 = (v45 & 0x38) + 8;
LABEL_31:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      goto LABEL_33;
    }

LABEL_32:
    v38 = *v14;
    cc_clear();
    goto LABEL_33;
  }

LABEL_6:
  rfc3394_wrap_cold_1(__s);
  v21 = 0xFFFFFFFFLL;
LABEL_33:
  v39 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t rfc3394_wrap_legacy(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = rfc3394_wrap(a1, a2, a3, a4, a5, a6, a7, &v11);
  REQUIRE_func(HIDWORD(v11) == 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

uint64_t rfc3394_unwrap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unint64_t a6, void *a7, void *a8)
{
  v45 = a3;
  v51 = a1;
  v54 = *MEMORY[0x277D85DE8];
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_decrypt_mode();
  v15 = *v14 + 15;
  MEMORY[0x28223BE20](v14);
  v52 = &v43 - v16;
  bzero(&v43 - v16, v16);
  v17 = v14[1] + 15;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  bzero(&v43 - v19, v19);
  v21 = 0xFFFFFFFFLL;
  if (HIDWORD(a6))
  {
    goto LABEL_33;
  }

  v50 = a6;
  v22 = a6 >> 3;
  if (v22 - 6 < 0xFFFFFFFC)
  {
    goto LABEL_33;
  }

  v46 = &v43;
  v47 = a8;
  v44 = a7;
  if (!a4)
  {
    v23 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v23 || !a8 || *a8 < v50 - 8)
    {
      rfc3394_wrap_cold_1(__s);
      goto LABEL_34;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v47 >= v50 - 8)
  {
LABEL_15:
    *&__s[0] = *a5;
    v24 = v22 - 1;
    if (v22 != 1)
    {
      v25 = __s + 1;
      v26 = a5 + 1;
      v27 = v22 - 1;
      do
      {
        v28 = *v26++;
        *v25 = v28;
        v25 += 2;
        --v27;
      }

      while (v27);
    }

    v29 = 6 * v22 - 6;
    v49 = 1 - v22;
    v30 = 5;
    v48 = &__s[v22 - 2];
    do
    {
      LODWORD(v51) = v30;
      if (v50 >= 0x10)
      {
        v31 = v48;
        v32 = v22 - 1;
        v33 = v29;
        do
        {
          *v31 = *&__s[v32 % v24] ^ bswap64(v33);
          if (a4)
          {
            if ((a4(0, &firebloom_null_iv, v31, v31, 16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v34 = v14[1];
            cccbc_clear_iv();
            firebloom_cbc_update_f(v14, v52, v20, 0x10uLL);
          }

          --v33;
          v31 -= 2;
          v35 = __OFSUB__(v32--, 1);
        }

        while (!((v32 < 0) ^ v35 | (v32 == 0)));
      }

      v30 = v51 - 1;
      v29 += v49;
    }

    while (v51);
    if (*&__s[0] == v45)
    {
      v36 = v44;
      if (v22 != 1)
      {
        v37 = __s + 1;
        v38 = v22 - 1;
        do
        {
          v39 = *v37;
          v37 += 2;
          *v36++ = v39;
          --v38;
        }

        while (v38);
      }

      v21 = 0;
      *v47 = 8 * v24;
    }

    else
    {
      v21 = 0xFFFFFFFFLL;
    }

LABEL_33:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      goto LABEL_35;
    }

LABEL_34:
    v40 = *v14;
    cc_clear();
    goto LABEL_35;
  }

LABEL_6:
  rfc3394_wrap_cold_1(__s);
  v21 = 0xFFFFFFFFLL;
LABEL_35:
  v41 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t rfc3394_unwrap_legacy(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = rfc3394_unwrap(a1, a2, a3, a4, a5, a6, a7, &v11);
  REQUIRE_func(HIDWORD(v11) == 0, 261, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

BOOL rfc3394_unwrapped_size_legacy(unsigned int a1, unsigned int *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

BOOL rfc3394_unwrapped_size(unint64_t a1, unint64_t *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_8(void *a1)
{

  return memset_s(a1, 0x40uLL, 0, 0x40uLL);
}

uint64_t get_aks_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_153_0);
  return get_aks_client_connection_connection;
}

uint64_t aks_delete_xart_leak(unsigned int a1, const void *a2)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x6Cu, input, 1u, a2, 0x10uLL, 0, 0, 0, 0);
  }

  else
  {
    aks_delete_xart_leak_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

char *_iterate_path(char *result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x277D85DE8];
  if (result)
  {
    v6[0] = result;
    v6[1] = 0;
    result = fts_open(v6, 84, 0);
    if (result)
    {
      result = _iterate_path_cold_1(result, a2, a3);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

char *aks_dump_path(char *result, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    bzero(v9, 0x400uLL);
    result = realpath_DARWIN_EXTSN(v3, v9);
    if (result)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 0x40000000;
      v7[2] = __aks_dump_path_block_invoke;
      v7[3] = &__block_descriptor_tmp;
      v8 = a2;
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 0x40000000;
      v5[2] = __aks_dump_path_block_invoke_2;
      v5[3] = &__block_descriptor_tmp_128;
      v6 = a2;
      result = _iterate_path(v9, v7, v5);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __aks_dump_path_block_invoke(uint64_t a1, uint64_t a2)
{
  path_class = _get_path_class(*(a2 + 48));
  v5 = *(a1 + 32);
  if (v5 == -1 || path_class == v5)
  {
    printf(" dir: %s %i\n", *(a2 + 48), path_class);
  }

  return 1;
}

uint64_t aks_fs_supports_enhanced_apfs()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = IORegistryEntryFromPath(*MEMORY[0x277CD28A0], "IODeviceTree:/filesystems");
  if (v0)
  {
    v1 = v0;
    CFProperty = IORegistryEntryCreateCFProperty(v0, @"e-apfs", *MEMORY[0x277CBECE8], 0);
    v3 = CFProperty != 0;
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    IOObjectRelease(v1);
  }

  else
  {
    v3 = 0;
  }

  __len = 1023;
  bzero(__big, 0x400uLL);
  if ((_aks_check_apfs_shared_datavolume_bootarg_init & 1) == 0)
  {
    if (!sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "-apfs_shared_datavolume", __len))
    {
      _aks_check_apfs_shared_datavolume_bootarg_value = 1;
    }

    _aks_check_apfs_shared_datavolume_bootarg_init = 1;
  }

  v4 = _aks_check_apfs_shared_datavolume_bootarg_value;
  fprintf(*MEMORY[0x277D85E08], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s ioreg: %d, boot_arg: %d%s\n", "aks", "", -1, "", "", "", "", "aks_fs_supports_enhanced_apfs", ":", 438, "", v3, _aks_check_apfs_shared_datavolume_bootarg_value, "");
  v5 = *MEMORY[0x277D85DE8];
  return v3 | v4;
}

void aks_fs_status_with_map(const char *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  bzero(__str, 0x400uLL);
  memset(&v8, 0, sizeof(v8));
  if (a3)
  {
    v6 = (a2 + 16);
    do
    {
      snprintf(__str, 0x400uLL, "%s%s", a1, *(v6 - 2));
      if (stat(__str, &v8))
      {
        printf("stat failed: %s\n");
      }

      else
      {
        _get_path_class(__str);
        *v6;
        printf("%s: mode=%o, u/g=%i:%i class=%i%s\n");
      }

      v6 += 6;
      --a3;
    }

    while (a3);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t aks_show_allowlist()
{
  puts("shared allow list:");
  v0 = &byte_279A3E950;
  v1 = 36;
  do
  {
    if (*v0)
    {
      printf("%s%s\n", "<var>", *(v0 - 2));
    }

    v0 += 48;
    --v1;
  }

  while (v1);
  result = puts("user allow list:");
  v3 = &byte_279A3F010;
  v4 = 72;
  do
  {
    if (*v3)
    {
      result = printf("%s%s\n", "<user>", *(v3 - 2));
    }

    v3 += 48;
    --v4;
  }

  while (v4);
  return result;
}

void aks_gather_stats(const char *a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    bzero(&v14, 0x878uLL);
    bzero(v13, 0x400uLL);
    if (realpath_DARWIN_EXTSN(a1, v13))
    {
      v4 = malloc(0x818uLL);
      memset_s(v4, 0x818uLL, 0, 0x818uLL);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 0x40000000;
      v12[2] = __aks_gather_stats_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_141;
      v12[4] = v4;
      _iterate_path(v13, &__block_literal_global_22, v12);
      if (!statfs(v13, &v14))
      {
        if (a2)
        {
          printf("Free Blocks:%lld blocks of size:%d\n");
        }

        else
        {
          printf("%lld,%d\n");
        }
      }

      v5 = v4 + 340;
      for (i = 1; i != 5; ++i)
      {
        if (a2)
        {
          v9 = &v4[296 * i];
          printf("%s:\n\tNum files:\t%u,\n\tNum hardlinks:\t%u,\n\tNum compressed:\t%u,\n\tTotal Size:\t%lld,\n\tMin File Size:\t%lld,\n\tMax File Size:\t%lld,\n", class_names[i], *v9, *(v9 + 2), *(v9 + 1), *(v9 + 2), *(v9 + 3), *(v9 + 4));
          printf("\tSize Distribution:");
          printf("%i", *(v9 + 10));
          for (j = 0; j != 252; j += 4)
          {
            putchar(44);
            printf("%i", *&v5[j]);
          }
        }

        else
        {
          v7 = &v4[296 * i];
          printf("%i,%u,%u,%u,%lld,%lld,%lld,", i, *v7, *(v7 + 2), *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4));
          printf("%i", *(v7 + 10));
          for (k = 0; k != 252; k += 4)
          {
            putchar(44);
            printf("%i", *&v5[k]);
          }
        }

        putchar(10);
        v5 += 296;
      }

      free(v4);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t aks_kext_set_options(unsigned int a1, uint64_t a2)
{
  input[3] = *MEMORY[0x277D85DE8];
  input[0] = 1;
  input[1] = a1;
  input[2] = a2;
  output = 0;
  outputCnt = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x56u, input, 3u, 0, 0, &output, &outputCnt, 0, 0);
  }

  else
  {
    aks_kext_set_options_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_internal_state()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x10u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_internal_state_cold_1();
  return 3758097084;
}

uint64_t aks_run_internal_test(unsigned int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x86u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_run_internal_test_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __get_aks_client_connection_block_invoke()
{
  if (!get_aks_client_connection_connection)
  {
    get_aks_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
}

uint64_t get_akstest_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_156);
  return get_akstest_client_connection_connection;
}

void __get_akstest_client_connection_block_invoke()
{
  if (!get_akstest_client_connection_connection)
  {
    get_akstest_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStoreTest", "AppleKeyStoreTest");
  }
}

uint64_t akstest_new_ek(mach_port_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, size_t *a8)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a3;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 2, a4, a5, a6, a7, a8, a2);
  v11 = IOConnectCallMethod(a1, 0x14u, input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, a7, a8);
  free(*&inputStructCnt[1]);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t akstest_check_class(mach_port_t a1, void *inputStruct, unsigned int a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a3;
  result = IOConnectCallMethod(a1, 0x11u, input, 1u, inputStruct, 0x10uLL, 0, 0, 0, 0);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t akstest_last_user(mach_port_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  memset(inputStructCnt, 0, sizeof(inputStructCnt));
  aks_pack_data(&inputStructCnt[1], inputStructCnt, 1, a4, a5, a6, a7, a8, a3);
  v9 = IOConnectCallMethod(a1, 0x12u, input, 1u, *&inputStructCnt[1], inputStructCnt[0], 0, 0, 0, 0);
  free(*&inputStructCnt[1]);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

dispatch_queue_t __get_aks_client_dispatch_queue_block_invoke()
{
  result = dispatch_queue_create("aks-client-queue", 0);
  get_aks_client_dispatch_queue_connection_queue = result;
  return result;
}

uint64_t _copy_aks_client_connection(char *path, const char *a2)
{
  connect = 0;
  v3 = *MEMORY[0x277CD28A0];
  v4 = IORegistryEntryFromPath(*MEMORY[0x277CD28A0], path);
  v5 = MEMORY[0x277D85F48];
  if (!v4 || (v6 = v4, v7 = IOServiceOpen(v4, *MEMORY[0x277D85F48], 0, &connect), IOObjectRelease(v6), v7))
  {
    v8 = IOServiceMatching(a2);
    MatchingService = IOServiceGetMatchingService(v3, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      IOServiceOpen(MatchingService, *v5, 0, &connect);
      IOObjectRelease(v10);
    }
  }

  if (connect)
  {
    if (IOConnectCallMethod(connect, 0, 0, 0, 0, 0, 0, 0, 0, 0))
    {
      IOServiceClose(connect);
      connect = 0;
      syslog(3, "failed to open userclient via %s: %d\n");
    }
  }

  else
  {
    syslog(3, "failed to open connection to %s: %d\n");
  }

  return connect;
}

uint64_t OUTLINED_FUNCTION_1_4(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, 0, 0, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_3_1(void *a1)
{

  return memset_s(a1, 0x1000uLL, 0, 0x1000uLL);
}

uint64_t OUTLINED_FUNCTION_7_1(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, a5, a6, 0, 0, a9, a10);
}

uint64_t sizeof_backup_bag(uint64_t *a1)
{
  v2 = a1[10];
  ccder_sizeof_implicit_uint64();
  ccder_sizeof_raw_octet_string();
  ccder_sizeof_raw_octet_string();
  v3 = *a1;
  ccder_sizeof_implicit_uint64();

  return ccder_sizeof();
}

uint64_t OUTLINED_FUNCTION_0_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char __s)
{

  return memset_s(&__s, 0x20uLL, 0, 0x20uLL);
}

uint64_t aks_stash_verify(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  if (!a2)
  {
    return _aks_stash_load(a1, 1, &v4);
  }

  *a2 = 0;
  result = _aks_stash_load(a1, 1, &v4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t aks_stash_destroy()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x25u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_stash_destroy_cold_1();
  return 3758097084;
}

uint64_t aks_stash_commit(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x24u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_stash_commit_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_stash_enable(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x33u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_stash_enable_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_stash_persist(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x35u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_stash_persist_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_invalidate_sync_bags()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x42u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_invalidate_sync_bags_cold_1();
  return 3758097084;
}

uint64_t aks_unload_bag(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 4u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unload_bag_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_unload_session_bags(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x37u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unload_session_bags_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_change_secret_with_kek(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, unsigned __int8 a10, unsigned int a11, int a12, _DWORD *a13, void **a14)
{
  input[12] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a11;
    input[2] = a10;
    input[3] = a2;
    input[4] = a3;
    input[5] = a4;
    input[6] = a5;
    input[7] = a6;
    input[8] = a7;
    input[9] = a8;
    input[10] = a9;
    input[11] = a12 & 0xFFFFFFF7 | (8 * (a14 != 0));
    output = 0;
    outputCnt = 1;
    if (a14)
    {
      outputStruct = *a14;
    }

    else
    {
      outputStruct = 0;
    }

    if (a14)
    {
      v24 = (a14 + 1);
    }

    else
    {
      v24 = 0;
    }

    result = IOConnectCallMethod(aks_client_connection, 0xFu, input, 0xCu, 0, 0, &output, &outputCnt, outputStruct, v24);
    if (a13 && !result)
    {
      *a13 = output;
    }
  }

  else
  {
    aks_change_secret_with_kek_cold_1();
    result = 3758097084;
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_lock_bag(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0xDu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lock_bag_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _aks_unlock_bag(int a1, uint64_t a2, int a3, unsigned int a4)
{
  input[4] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    result = IOConnectCallMethod(aks_client_connection, 0xCu, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    _aks_unlock_bag_cold_1();
    result = 3758097084;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _aks_set_system_with_passcode(int a1, int a2, uint64_t a3, int a4, unsigned int a5)
{
  input[5] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    input[4] = a5;
    result = IOConnectCallMethod(aks_client_connection, 5u, input, 5u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    _aks_set_system_with_passcode_cold_1();
    result = 3758097084;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_backup_unwrap_key(_OWORD *a1, void *a2, unsigned int a3, void *a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  memset(&v13[16], 0, 112);
  *v13 = 0u;
  v6 = a1[1];
  *&v13[4] = *a1;
  *&v13[20] = v6;
  v7 = a1[3];
  *&v13[36] = a1[2];
  v14 = 0;
  *&v13[52] = v7;
  v11 = *a5;
  __s = 1;
  v8 = unwrap_data(&__s, 0, 0, a2, a3, a4, &v11);
  *a5 = v11;
  memset_s(&__s, 0x88uLL, 0, 0x88uLL);
  result = err_sks_to_aks(v8);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void _set_cf_key(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (CFNumberGetTypeID() == a3)
    {
      valuePtr = der_get_number();
      v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
      if (!v7)
      {
        return;
      }

      v8 = v7;
      CFDictionaryAddValue(a1, a2, v7);
      goto LABEL_5;
    }

    if (CFBooleanGetTypeID() == a3)
    {
      v9 = der_get_BOOL();
      v10 = MEMORY[0x277CBED28];
      if (!v9)
      {
        v10 = MEMORY[0x277CBED10];
      }

      v11 = *v10;

      CFDictionaryAddValue(a1, a2, v11);
    }

    else if (CFDataGetTypeID() == a3)
    {
      valuePtr = 0;
      v12 = ccder_decode_tl();
      if (v12)
      {
        v8 = CFDataCreate(*MEMORY[0x277CBECE8], v12, valuePtr);
        CFDictionaryAddValue(a1, a2, v8);
        if (v8)
        {
LABEL_5:
          CFRelease(v8);
        }
      }
    }
  }
}

uint64_t aks_assert_hold(int a1, unsigned int a2, uint64_t a3)
{
  input[3] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  input[1] = a3;
  input[2] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x1Au, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_hold_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_assert_drop(int a1, unsigned int a2)
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = a2;
  input[1] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x1Bu, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_drop_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_assert_promote(int a1, unsigned int a2)
{
  input[2] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a2;
    input[1] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x64u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_promote_cold_1();
    result = 3758097084;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_oneness_heartbeat(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x91u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_oneness_heartbeat_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_assert_consume(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x65u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_assert_consume_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _aks_recover_with_escrow_bag(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  input[4] = *MEMORY[0x277D85DE8];
  v23 = 0;
  v22 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v17 = aks_client_connection;
    aks_pack_data(&v23, &v22, 3, v12, v13, v14, v15, v16, a2);
    input[0] = a1;
    input[1] = v23;
    input[2] = v22;
    input[3] = a8;
    v18 = IOConnectCallMethod(v17, 0x12u, input, 4u, 0, 0, 0, 0, 0, 0);
    v19 = v23;
  }

  else
  {
    _aks_recover_with_escrow_bag_cold_1();
    v19 = 0;
    v18 = 3758097084;
  }

  free(v19);
  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t aks_generation(int a1, unsigned int a2, _DWORD *a3)
{
  input[2] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    output = 0;
    outputCnt = 1;
    result = IOConnectCallMethod(aks_client_connection, 0x28u, input, 2u, 0, 0, &output, &outputCnt, 0, 0);
    if (a3 && !result)
    {
      *a3 = output;
    }
  }

  else
  {
    aks_generation_cold_1();
    result = 3758097084;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_verify_password_with_opts(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a1)
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 1;
  }

  else
  {
    v41 = a3;
    if (a2)
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 1;
    }

    else
    {
      v42 = a4;
      v43 = a5;
      v44 = a6;
      v45 = a7;
      v46 = 0;
    }

    v47 = 0;
  }

  return _aks_verify_password(v41, v42, v43, v44, v45, v46, v47, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

uint64_t aks_register_for_notifications()
{
  if (get_aks_client_connection())
  {

    JUMPOUT(0x25F8C2E10);
  }

  aks_register_for_notifications_cold_1();
  return 3758097084;
}

uint64_t aks_clear_backup_bag(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    result = IOConnectCallMethod(aks_client_connection, 0x16u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_clear_backup_bag_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_remote_reset_all_peers(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0xA2u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_remote_reset_all_peers_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_remote_peer_drop(int a1, const void *a2, size_t a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x3Au, input, 1u, a2, a3, 0, 0, 0, 0);
  }

  else
  {
    aks_remote_peer_drop_cold_1();
    result = 3758097084;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_lock_device(int a1, int a2)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (a2)
    {
      v4 = 32;
    }

    else
    {
      v4 = 8;
    }

    result = IOConnectCallMethod(aks_client_connection, v4, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lock_device_cold_1();
    result = 3758097084;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_lock_cx(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x8Du, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lock_cx_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_unlock_device(int a1, uint64_t a2, int a3)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unlock_device_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_unlock_device_with_acm(int a1, uint64_t a2, int a3)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 9u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_unlock_device_with_acm_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_unlock_device_with_opts(int a1, int a2, uint64_t a3, int a4)
{
  if (a1)
  {
    return aks_unlock_device_with_acm(a2, a3, a4);
  }

  else
  {
    return aks_unlock_device(a2, a3, a4);
  }
}

uint64_t aks_obliterate_class_d()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x13u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_obliterate_class_d_cold_1();
  return 3758097084;
}

uint64_t aks_migrate_s_key(int a1, unsigned int a2, uint64_t a3, unsigned int a4, const void *a5, int a6)
{
  input[4] = *MEMORY[0x277D85DE8];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    input[0] = a1;
    input[1] = a2;
    input[2] = a3;
    input[3] = a4;
    result = IOConnectCallMethod(aks_client_connection, 0x3Fu, input, 4u, a5, a6, 0, 0, 0, 0);
  }

  else
  {
    aks_migrate_s_key_cold_1();
    result = 3758097084;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_smartcard_unregister(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x3Cu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_smartcard_unregister_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_fail(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x47u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_fail_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_set_healthy(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x49u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_set_healthy_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __aks_se_set_secret(int a1, uint64_t a2, uint64_t a3, uint32_t a4)
{
  input[3] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, a4, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    __aks_se_set_secret_cold_1();
    result = 3758097084;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_recover(int a1, uint64_t a2, uint64_t a3)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_recover_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_recover_with_acm(int a1, uint64_t a2, uint64_t a3)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x46u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_recover_with_acm_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_recover_with_opts(int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    return aks_se_recover_with_acm(a2, a3, a4);
  }

  else
  {
    return aks_se_recover(a2, a3, a4);
  }
}

uint64_t _aks_change_secret_epilogue(int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  input[4] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  input[3] = a4;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x69u, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    _aks_change_secret_epilogue_cold_1();
    result = 3758097084;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_set_nonce(int a1, const void *a2, size_t a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (a2)
    {
      v6 = a3;
    }

    else
    {
      v6 = 0;
    }

    result = IOConnectCallMethod(aks_client_connection, 0x58u, input, 1u, a2, v6, 0, 0, 0, 0);
  }

  else
  {
    aks_se_set_nonce_cold_1();
    result = 3758097084;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_delete_reset_token(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x5Bu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_delete_reset_token_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_support_in_rm(unsigned int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x5Eu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_support_in_rm_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_support_in_rm_is_set(BOOL *a1)
{
  output[1] = *MEMORY[0x277D85DE8];
  output[0] = 0;
  outputCnt = 1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x6Bu, 0, 0, 0, 0, output, &outputCnt, 0, 0);
    if (a1 && !result)
    {
      *a1 = output[0] != 0;
    }
  }

  else
  {
    aks_se_support_in_rm_is_set_cold_1();
    result = 3758097084;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_stage_stash()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Fu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_se_stage_stash_cold_1();
  return 3758097084;
}

uint64_t aks_enable_cache_flow(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0xA0u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_enable_cache_flow_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_fv_stash_kek_with_secret(int a1)
{
  v1 = 8;
  if (a1)
  {
    v1 = 12;
  }

  v5 = v1;
  aks_fv_set_protection();
  v3 = v2;
  syslog(6, "aks_fv_prot_cmd_stash_kek(%llu) = %d", v5, v2);
  return v3;
}

uint64_t aks_fv_commit_stashed_kek()
{
  aks_fv_set_protection();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_commit = %d", v0);
  return v1;
}

uint64_t aks_fv_destroy_stashed_kek()
{
  aks_fv_set_protection();
  v1 = v0;
  syslog(6, "aks_fv_prot_cmd_stash_destroy = %d", v0);
  return v1;
}

uint64_t aks_drop_auxiliary_auth_by_uid(unsigned int a1)
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = 0;
  input[1] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_drop_auxiliary_auth_by_uid_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_drop_auxiliary_auth_by_handle(int a1)
{
  input[2] = *MEMORY[0x277D85DE8];
  input[0] = 1;
  input[1] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x53u, input, 2u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_drop_auxiliary_auth_by_handle_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_lower_iteration_count()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_lower_iteration_count_cold_1();
  return 3758097084;
}

uint64_t aks_reset_iteration_count()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x5Cu, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_reset_iteration_count_cold_1();
  return 3758097084;
}

uint64_t aks_se_secret_drop(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x6Au, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_secret_drop_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_se_memento_secret_drop(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x9Cu, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_se_memento_secret_drop_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_prewarm_sps()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x73u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_prewarm_sps_cold_1();
  return 3758097084;
}

uint64_t aks_measure_and_seal_cryptex_manifest(const void *a1, size_t a2)
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x90u, 0, 0, a1, a2, 0, 0, 0, 0);
  }

  aks_measure_and_seal_cryptex_manifest_cold_1();
  return 3758097084;
}

uint64_t aks_seal_cryptex_manifest_lock()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x95u, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_seal_cryptex_manifest_lock_cold_1();
  return 3758097084;
}

uint64_t aks_lkgp_recover(int a1, uint64_t a2, uint64_t a3)
{
  input[3] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  input[1] = a2;
  input[2] = a3;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x85u, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_lkgp_recover_cold_1();
    result = 3758097084;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_memento_efface_blob(int a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x8Au, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_memento_efface_blob_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aks_set_jcop_supports_updated_kud_policy()
{
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    return IOConnectCallMethod(aks_client_connection, 0x89u, &input, 0, 0, 0, 0, 0, 0, 0);
  }

  aks_set_jcop_supports_updated_kud_policy_cold_1();
  return 3758097084;
}

uint64_t aks_set_cx_window(uint64_t a1)
{
  input[1] = *MEMORY[0x277D85DE8];
  input[0] = a1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    result = IOConnectCallMethod(aks_client_connection, 0x97u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    aks_set_cx_window_cold_1();
    result = 3758097084;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_2(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, 0, 0, 0, 0, a9, a10);
}

void OUTLINED_FUNCTION_8_1()
{
  *(v1 - 56) = 0;
  *(v1 - 48) = v0;
  *(v1 - 60) = 1;
}

uint64_t OUTLINED_FUNCTION_16_0(mach_port_t a1, uint32_t a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, 0, 0, a5, a6, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_18_0(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_19(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_23(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint64_t a4, const void *a5, size_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, 1u, a5, a6, 0, 0, a9, a10);
}

void OUTLINED_FUNCTION_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  bzero(va, 0x8000uLL);
}

uint64_t OUTLINED_FUNCTION_35(void *a1)
{

  return memset_s(a1, 0x20uLL, 0, 0x20uLL);
}

uint64_t OUTLINED_FUNCTION_37(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

void OUTLINED_FUNCTION_39(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 - 104);
  *(v16 - 96) = a1;
  *(v16 - 88) = v17;
  *(v16 - 80) = a16;
}

uint64_t OUTLINED_FUNCTION_52(void *a1)
{

  return memset_s(a1, 0x4000uLL, 0, 0x4000uLL);
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memset_s(&a9, 0x58uLL, 0, 0x58uLL);
}

void *OUTLINED_FUNCTION_71(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, size_t __n, uint64_t a22, uint64_t a23, char __src)
{

  return memcpy(a1, &__src, __n);
}

void OUTLINED_FUNCTION_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  bzero(va, 0x1000uLL);
}

const char *set_akslog_context(const char *__format, ...)
{
  va_start(va, __format);
  if (__format)
  {
    return vsnprintf(&_akslog_context, 0x20uLL, __format, va);
  }

  _akslog_context = 0;
  return __format;
}

uint64_t compress_uuid()
{
  v2 = *MEMORY[0x277D85DE8];
  ccsha256_di();
  ccdigest();
  result = 0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t time_seconds_to_abs_interval(unsigned int a1)
{
  info = 0;
  mach_timebase_info(&info);
  return 1000000000 * info.denom * a1 / info.numer;
}

unint64_t time_absolute_to_nanoseconds(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return info.numer * a1 / info.denom;
}

uint64_t get_usec_time()
{
  info = 0;
  mach_timebase_info(&info);
  return mach_continuous_time() * info.numer / info.denom / 0x3E8;
}

__darwin_time_t get_clock_time()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_sec;
}

void *circular_queue_init(unsigned int a1, unsigned int a2)
{
  v2 = a1 + 1;
  if (v2 == v2 << 31 >> 31)
  {
    v4 = calloc(0x20uLL, 1uLL);
    v5 = v4;
    if (v4)
    {
      v4[1] = 0;
      *v4 = a2;
      *(v4 + 1) = v2;
      v6 = calloc(v2 * a2, 1uLL);
      v5[2] = v2 * a2;
      v5[3] = v6;
    }
  }

  else
  {
    circular_queue_init_cold_1();
    return 0;
  }

  return v5;
}

uint64_t circular_queue_size(_DWORD *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  result = v2 - v3;
  if (v2 < v3)
  {
    return (result + a1[1]);
  }

  return result;
}

uint64_t circular_queue_enqueue(unsigned int *a1, const void *a2)
{
  v3 = a1[3];
  v4 = (v3 + 1) % a1[1];
  memcpy((*(a1 + 3) + *a1 * v3), a2, *a1);
  a1[3] = v4;
  if (v4 == a1[2])
  {
    a1[2] = (v4 + 1) % a1[1];
  }

  return 0;
}

uint64_t circular_queue_dequeue(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  if (__dst)
  {
    memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
    v2 = a1[2];
  }

  memset_s((*(a1 + 3) + *a1 * v2), *a1, 0, *a1);
  result = 0;
  a1[2] = (a1[2] + 1) % a1[1];
  return result;
}

uint64_t circular_queue_peek(unsigned int *a1, void *__dst)
{
  v2 = a1[2];
  if (v2 == a1[3])
  {
    return 0xFFFFFFFFLL;
  }

  memcpy(__dst, (*(a1 + 3) + *a1 * v2), *a1);
  return 0;
}

uint64_t circular_queue_dequeue_all(int *a1, void *a2, unsigned int *a3)
{
  v7 = a1[2];
  v6 = a1[3];
  v8 = v6 - v7;
  if (v6 < v7)
  {
    v8 += a1[1];
  }

  if (!v8)
  {
    return 0;
  }

  v9 = *a1 * v8;
  v10 = calloc(v9, 1uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v10;
  v12 = a1[2];
  v13 = a1[3];
  if (v13 <= v12)
  {
    if (v12 <= v13)
    {
      goto LABEL_13;
    }

    v17 = a1[1] - v12;
    memcpy(v10, (*(a1 + 3) + *a1 * v12), *a1 * v17);
    if (v8 <= v17)
    {
      goto LABEL_13;
    }

    v15 = *(a1 + 3);
    v14 = *a1 * (v8 - v17);
    v10 = &v11[*a1 * v17];
  }

  else
  {
    v14 = *a1 * v8;
    v15 = (*(a1 + 3) + *a1 * v12);
  }

  memcpy(v10, v15, v14);
LABEL_13:
  v18 = a1[1];
  v19 = *a1;
  a1[2] = (a1[2] + v8) % v18;
  memset_s(*(a1 + 3), v19 * v18, 0, v19 * v18);
  result = 0;
  *a2 = v11;
  *a3 = v9;
  return result;
}

uint64_t circular_queue_clear(uint64_t a1)
{
  *(a1 + 8) = 0;
  v1 = (*a1 * *(a1 + 4));
  return memset_s(*(a1 + 24), v1, 0, v1);
}

void circular_queue_free(void *a1)
{
  *(a1 + 1) = 0;
  v2 = (*a1 * *(a1 + 1));
  memset_s(*(a1 + 3), v2, 0, v2);
  memset_s(*(a1 + 3), *(a1 + 2), 0, *(a1 + 2));
  free(*(a1 + 3));
  memset_s(a1, 0x20uLL, 0, 0x20uLL);

  free(a1);
}

BOOL persona_uuid_is_valid(uint8x16_t *a1)
{
  v1 = vmovl_high_u8(*a1);
  v2 = vmovl_u8(*a1->i8);
  v3 = vmovl_u16(vorr_s8(vorr_s8(*v2.i8, *v1.i8), vorr_s8(*&vextq_s8(v2, v2, 8uLL), *&vextq_s8(v1, v1, 8uLL))));
  return vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) != 0;
}

BOOL is_non_zero(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = *a1++;
    v2 |= v3;
    --a2;
  }

  while (a2);
  return v2 != 0;
}

_DWORD *pfk_params_is_valid(_DWORD *result)
{
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t class_id_get(char a1)
{
  if ((a1 & 0x1Fu) > 0x14)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 & 0x1F;
  }
}

uint64_t dump_bytes_internal(const char *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v26 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__str = 0u;
  v18 = 0u;
  v5 = MEMORY[0x277D85E08];
  if (a3 >= 0x41)
  {
    fprintf(*MEMORY[0x277D85E08], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %sdump %s (len = %zd)%s%s\n", "aks", "", -1, "", "", "", "", "dump_bytes_internal", ":", 844, "", "", a1, a3, "", "");
    v4 = "";
  }

  else if (!a3)
  {
    goto LABEL_16;
  }

  v6 = 0;
  v16 = v3;
  do
  {
    v7 = v5;
    if (v3 - v6 >= 0x40)
    {
      v8 = 64;
    }

    else
    {
      v8 = v3 - v6;
    }

    if (v3 != v6)
    {
      v9 = (a2 + v6);
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = __str;
      do
      {
        v12 = *v9++;
        snprintf(v11, 3uLL, "%02x", v12);
        v11 += 2;
        --v10;
      }

      while (v10);
    }

    v5 = v7;
    fprintf(*v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %s%s%s[%04zu,%04zu): %s%s%s%s\n", "aks", "", -1, "", "", "", "", "dump_bytes_internal", ":", 854, "", "", v4, "", v6, v8 + v6, "", __str, "", "");
    v6 += v8;
    v3 = v16;
  }

  while (v6 < v16);
LABEL_16:
  result = memset_s(__str, 0x81uLL, 0, 0x81uLL);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *bytes_to_str_hint(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = a2;
  }

  if (a2)
  {
    v4 = bytes_to_str_hint_buf;
    v5 = v2;
    do
    {
      v6 = *a1++;
      snprintf(v4, 3uLL, "%02x", v6);
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  bytes_to_str_hint_buf[2 * v2] = 0;
  return bytes_to_str_hint_buf;
}

char *byte_swap_val(char *result, unint64_t a2)
{
  if (a2 >= 2)
  {
    v2 = a2 >> 1;
    v3 = &result[a2 - 1];
    do
    {
      v4 = *result;
      *result++ = *v3;
      *v3-- = v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t err_sks_to_aks(uint64_t result)
{
  if (result == 0 || result >= 0xFFFFFFDA)
  {
    return dword_25E94A3E0[(result + 38)];
  }

  return result;
}

uint64_t REQUIRE_func(uint64_t result, int a2, const char *a3)
{
  if ((result & 1) == 0)
  {
    fprintf(*MEMORY[0x277D85E08], "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed REQUIRE condition (%s:%d)\n%s\n", "aks", "", -1, "", "", "", "", "REQUIRE_func", ":", 1134, "", a3, a2, "");
    abort();
  }

  return result;
}

uint64_t generate_wrapping_key_curve25519(__int128 *a1, __int128 *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  memset(v16, 0, sizeof(v16));
  platform_read_random(v16, 0x20u);
  v4 = cccurve25519_make_pub() == 0;
  REQUIRE_func(v4, 58, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/shared_crypto.c");
  v10 = 0u;
  v11 = 0u;
  __s = 0x1000000;
  v5 = a2[1];
  v12 = *a2;
  v13 = v5;
  v6 = a1[1];
  v14 = *a1;
  v15 = v6;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  memset_s(v16, 0x20uLL, 0, 0x20uLL);
  v7 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t generate_unwrap_shared_key_curve25519(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v8 = 0u;
  v3 = a1[1];
  v10 = *a1;
  v11 = v3;
  v4 = a3[1];
  v12 = *a3;
  __s = 0x1000000;
  v13 = v4;
  cccurve25519();
  ccsha256_di();
  ccdigest();
  memset_s(&__s, 0x64uLL, 0, 0x64uLL);
  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x282201770](a1, 32, a3, 0, 0, v4, v3, 32);
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return generate_unwrap_shared_key_curve25519(v0, v1 + 8, (v1 + 40));
}

uint64_t firebloom_ec_export(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = &a2[3 * **a2];
  ccn_write_uint_padded();
  return 1;
}

uint64_t dict_find_params_cb(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 8) >= *a5)
  {
    v13 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = der_equal(*(*(a5 + 24) + v9), *(*(a5 + 24) + v9) + *(*(*(a5 + 24) + v9) + 1) + 2, a1);
      if (v11)
      {
        break;
      }

      ++v10;
      v9 += 40;
      if (v10 >= *a5)
      {
        goto LABEL_10;
      }
    }

    v14 = (*(a5 + 24) + v9);
    if (v14[1])
    {
      v12 = 0;
      *(a5 + 16) = 1;
    }

    else
    {
      ++*(a5 + 8);
      v14[1] = a3;
      v14[2] = a3 + a4;
      v14[3] = a3;
      v14[4] = a3 + a4;
      v12 = 1;
    }

LABEL_10:
    v13 = v12 | !v11;
  }

  return v13 & 1;
}

BOOL _dict_find_value_cb(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = der_equal(*a5, *a5 + *(*a5 + 1) + 2, a1);
  if (v8)
  {
    *(a5 + 24) = 1;
    *(a5 + 8) = a3;
    *(a5 + 16) = a3 + a4;
  }

  return !v8;
}

uint64_t encode_list_free(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v2 = *a1;
    if (!*a1)
    {
      break;
    }

    v3 = *(v2 + 1);
    *a1 = *v2;
    if (v3)
    {
      memset_s(v3, *(v2 + 2), 0, *(v2 + 2));
      free(*(v2 + 1));
    }

    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    free(v2);
  }

  return 0;
}

uint64_t encode_list_remove_key(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1;
  result = _encode_list_find_key(a1, a2);
  if (result)
  {
    v4 = result;
    for (i = *v2; i != result; i = *i)
    {
      v2 = i;
    }

    *v2 = *i;
    v6 = *(result + 8);
    if (v6)
    {
      memset_s(v6, *(v4 + 16), 0, *(v4 + 16));
      free(*(v4 + 8));
    }

    memset_s(v4, 0x18uLL, 0, 0x18uLL);
    free(v4);
    return 0;
  }

  return result;
}

void *_encode_list_find_key(void *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = a2 + 2;
    do
    {
      v6 = v2[1];
      if (ccder_blob_decode_sequence_tl() && der_equal(a2, &v4[a2[1]], v6))
      {
        break;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

uint64_t encode_list_get_data(void *a1, unsigned __int8 *a2, int a3, void *a4, void *a5)
{
  key = _encode_list_find_key(a1, a2);
  if (!key)
  {
    return 0;
  }

  v9 = 1;
  if (a4)
  {
    if (a5)
    {
      v10 = key[1] + key[2];
      v15[0] = key[1];
      v15[1] = v10;
      v9 = ccder_blob_decode_sequence_tl();
      if (v9)
      {
        if (der_utils_decode_implicit_raw_octet_string_copy(v15, 12, 0, 0))
        {
          v11 = v15[0];
          if (ccder_blob_decode_tag())
          {
            if (ccder_blob_decode_len())
            {
              v13 = 0;
              v12 = v15[0];
              if (a3)
              {
                v13 = (LODWORD(v15[0]) - v11);
                v12 = v11;
              }

              *a4 = v12;
              *a5 = v13;
            }
          }
        }
      }
    }
  }

  return v9;
}

uint64_t encode_list_get_number(void *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v7 = 0;
  v8 = 0;
  data = encode_list_get_data(a1, a2, 1, &v7, &v8);
  v5 = data;
  if (a3 && data)
  {
    *a3 = der_get_number();
  }

  return v5;
}

uint64_t encode_list_get_BOOL(void *a1, unsigned __int8 *a2, BOOL *a3)
{
  v7 = 0;
  v8 = 0;
  data = encode_list_get_data(a1, a2, 1, &v7, &v8);
  v5 = data;
  if (a3 && data)
  {
    *a3 = der_get_BOOL();
  }

  return v5;
}

uint64_t _merge_dict_cb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((ccder_blob_decode_tl() & 1) == 0)
  {
    _merge_dict_cb_cold_1();
LABEL_7:
    _merge_dict_cb_cold_2();
    result = 0;
    goto LABEL_5;
  }

  v9 = 0;
  v10 = 0;
  v8[0] = 12;
  v8[1] = 0;
  __memcpy_chk();
  if (encode_list_remove_key(a5, v8) || encode_list_add_der())
  {
    goto LABEL_7;
  }

  result = 1;
LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ccder_sizeof_fv_data(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  return ccder_sizeof();
}

uint64_t ccder_sizeof_fv_key(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  v2 = ccder_sizeof();
  return ccder_sizeof() + v2;
}

uint64_t der_utils_decode_fv_data(__int128 *a1, int a2, uint64_t a3)
{
  v6 = *a3;
  v5 = *(a3 + 8);
  v9 = *a1;
  if (a2)
  {
    v12 = *a1;
    v10 = 0;
    v11 = 0;
    result = ccder_blob_decode_range();
    if (!result)
    {
      return result;
    }

    v6 = v10;
    v8 = (v11 - v10);
    v9 = v12;
    goto LABEL_4;
  }

  LODWORD(v12) = v5;
  result = der_utils_decode_implicit_raw_octet_string_copy_len(&v9, 4, v6, &v12);
  if (result)
  {
    v8 = v12;
LABEL_4:
    *a3 = v6;
    *(a3 + 8) = v8;
    *a1 = v9;
    return 1;
  }

  return result;
}

uint64_t der_utils_decode_implicit_raw_octet_string_copy_partial(__int128 *a1)
{
  v4 = *a1;
  v2 = ccder_blob_decode_range();
  if (v2)
  {
    *a1 = v4;
  }

  return v2;
}