uint64_t sub_265800D10(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_265800D20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_265800D30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027A68, &qword_26586A040);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_265800E2C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265800E64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2658021BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265802590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak((v32 + 48));
  objc_destroyWeak(&a32);
  objc_destroyWeak((v33 - 112));
  _Unwind_Resume(a1);
}

void sub_2658039F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose((v31 - 152), 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

Class __getSFSafariViewControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SafariServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA0D28;
    v7 = 0;
    SafariServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (SafariServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("SFSafariViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFSafariViewControllerClass_block_invoke_cold_1();
  }

  getSFSafariViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getAKAccountManagerClass_block_invoke(uint64_t a1)
{
  AuthKitLibrary();
  result = objc_getClass("AKAccountManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAKAccountManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAKAccountManagerClass_block_invoke_cold_1();
    return AuthKitLibrary();
  }

  return result;
}

uint64_t AuthKitLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AuthKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BA0D60;
    v6 = 0;
    AuthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AuthKitLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __AuthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getAKDeviceListRequestContextClass_block_invoke(uint64_t a1)
{
  AuthKitLibrary();
  result = objc_getClass("AKDeviceListRequestContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAKDeviceListRequestContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAKDeviceListRequestContextClass_block_invoke_cold_1();
    return __getAKServiceNameiCloudSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getAKServiceNameiCloudSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthKitLibrary();
  result = dlsym(v2, "AKServiceNameiCloud");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKServiceNameiCloudSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAKAppleIDAuthenticationControllerClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{
  AuthKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AKAppleIDAuthenticationController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAKAppleIDAuthenticationControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = __getAKAppleIDAuthenticationControllerClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0(v10, v11, v12, v13, v14, v15, v16, v17, a9);
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_265804688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getLockdownModeManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLockdownModeManagerClass_softClass;
  v7 = getLockdownModeManagerClass_softClass;
  if (!getLockdownModeManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getLockdownModeManagerClass_block_invoke;
    v3[3] = &unk_279BA0D08;
    v3[4] = &v4;
    __getLockdownModeManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2658047C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id get_WKSystemPreferencesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_WKSystemPreferencesClass_softClass;
  v7 = get_WKSystemPreferencesClass_softClass;
  if (!get_WKSystemPreferencesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __get_WKSystemPreferencesClass_block_invoke;
    v3[3] = &unk_279BA0D08;
    v3[4] = &v4;
    __get_WKSystemPreferencesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_265804A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUMUserManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!UserManagementLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __UserManagementLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA0DA0;
    v7 = 0;
    UserManagementLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (UserManagementLibraryCore_frameworkLibrary)
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
  result = objc_getClass("UMUserManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUMUserManagerClass_block_invoke_cold_1();
  }

  getUMUserManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UserManagementLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UserManagementLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getLockdownModeManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!LockdownModeLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __LockdownModeLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA0DB8;
    v7 = 0;
    LockdownModeLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (LockdownModeLibraryCore_frameworkLibrary)
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
  result = objc_getClass("LockdownModeManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLockdownModeManagerClass_block_invoke_cold_1();
  }

  getLockdownModeManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __LockdownModeLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LockdownModeLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WebKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WebKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279BA0E30;
    v8 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
    if (SpringBoardServicesLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SpringBoardServicesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SBSCopyDisplayIdentifiers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBSCopyDisplayIdentifiersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_265806740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2658068EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_265806BB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_265807144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getFKBankConnectOfflineLabConsentCoordinatorClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!FinanceKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __FinanceKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA0F38;
    v7 = 0;
    FinanceKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (FinanceKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("FKBankConnectOfflineLabConsentCoordinator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFKBankConnectOfflineLabConsentCoordinatorClass_block_invoke_cold_1();
  }

  getFKBankConnectOfflineLabConsentCoordinatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __FinanceKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FinanceKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id getAMSAcknowledgePrivacyTaskClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAMSAcknowledgePrivacyTaskClass_softClass;
  v7 = getAMSAcknowledgePrivacyTaskClass_softClass;
  if (!getAMSAcknowledgePrivacyTaskClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAMSAcknowledgePrivacyTaskClass_block_invoke;
    v3[3] = &unk_279BA0D08;
    v3[4] = &v4;
    __getAMSAcknowledgePrivacyTaskClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_265807668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getOBPrivacyImproveFitnessPlusIdentifier()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getOBPrivacyImproveFitnessPlusIdentifierSymbolLoc_ptr;
  v9 = getOBPrivacyImproveFitnessPlusIdentifierSymbolLoc_ptr;
  if (!getOBPrivacyImproveFitnessPlusIdentifierSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getOBPrivacyImproveFitnessPlusIdentifierSymbolLoc_block_invoke;
    v5[3] = &unk_279BA0D08;
    v5[4] = &v6;
    __getOBPrivacyImproveFitnessPlusIdentifierSymbolLoc_block_invoke(v5);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    v4 = v3;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v4);
  }

  v1 = *v0;

  return v1;
}

Class __getAMSAcknowledgePrivacyTaskClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AppleMediaServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA0FA0;
    v7 = 0;
    AppleMediaServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AppleMediaServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("AMSAcknowledgePrivacyTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSAcknowledgePrivacyTaskClass_block_invoke_cold_1();
  }

  getAMSAcknowledgePrivacyTaskClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AppleMediaServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppleMediaServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getOBPrivacyImproveFitnessPlusIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __OnBoardingKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279BA0FB8;
    v8 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = OnBoardingKitLibraryCore_frameworkLibrary;
    if (OnBoardingKitLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = OnBoardingKitLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "OBPrivacyImproveFitnessPlusIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getOBPrivacyImproveFitnessPlusIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getASDSubscriptionEntitlementsClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AppStoreDaemonLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AppStoreDaemonLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA0FD0;
    v7 = 0;
    AppStoreDaemonLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AppStoreDaemonLibraryCore_frameworkLibrary)
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
  result = objc_getClass("ASDSubscriptionEntitlements");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getASDSubscriptionEntitlementsClass_block_invoke_cold_1();
  }

  getASDSubscriptionEntitlementsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AppStoreDaemonLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppStoreDaemonLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_265808A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t getDRGetAllLogFileURLsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getDRGetAllLogFileURLsSymbolLoc_ptr;
  v6 = getDRGetAllLogFileURLsSymbolLoc_ptr;
  if (!getDRGetAllLogFileURLsSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getDRGetAllLogFileURLsSymbolLoc_block_invoke;
    v2[3] = &unk_279BA0D08;
    v2[4] = &v3;
    __getDRGetAllLogFileURLsSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_265809E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26580A078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getOBPrivacyPresenterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getOBPrivacyPresenterClass_softClass;
  v7 = getOBPrivacyPresenterClass_softClass;
  if (!getOBPrivacyPresenterClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getOBPrivacyPresenterClass_block_invoke;
    v3[3] = &unk_279BA0D08;
    v3[4] = &v4;
    __getOBPrivacyPresenterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_26580B0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAKAppleIDAuthenticationControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAKAppleIDAuthenticationControllerClass_softClass_0;
  v7 = getAKAppleIDAuthenticationControllerClass_softClass_0;
  if (!getAKAppleIDAuthenticationControllerClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAKAppleIDAuthenticationControllerClass_block_invoke_0;
    v3[3] = &unk_279BA0D08;
    v3[4] = &v4;
    __getAKAppleIDAuthenticationControllerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_26580BB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26580BEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26580C2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getNRPairedDeviceRegistryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getNRPairedDeviceRegistryClass_softClass;
  v7 = getNRPairedDeviceRegistryClass_softClass;
  if (!getNRPairedDeviceRegistryClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getNRPairedDeviceRegistryClass_block_invoke;
    v3[3] = &unk_279BA0D08;
    v3[4] = &v4;
    __getNRPairedDeviceRegistryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_26580CA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26580DB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26580DCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_26580DEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26580E5E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26580E7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26580ECC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26580EF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26580F0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26581031C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2658108A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2658113B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2658115B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265811A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getHealthAppAnalyticsStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHealthAppAnalyticsStoreClass_softClass;
  v7 = getHealthAppAnalyticsStoreClass_softClass;
  if (!getHealthAppAnalyticsStoreClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHealthAppAnalyticsStoreClass_block_invoke;
    v3[3] = &unk_279BA0D08;
    v3[4] = &v4;
    __getHealthAppAnalyticsStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_265811FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265812430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2658125F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  _Block_object_dispose((v17 - 80), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265812D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  _Block_object_dispose((v17 - 96), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PSGEOVisualLocalizationCrowdsourcingIsAllowed()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getGEOVisualLocalizationCrowdsourcingIsAllowedSymbolLoc_ptr;
  v8 = getGEOVisualLocalizationCrowdsourcingIsAllowedSymbolLoc_ptr;
  if (!getGEOVisualLocalizationCrowdsourcingIsAllowedSymbolLoc_ptr)
  {
    v1 = GeoServicesLibrary();
    v6[3] = dlsym(v1, "GEOVisualLocalizationCrowdsourcingIsAllowed");
    getGEOVisualLocalizationCrowdsourcingIsAllowedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    v4 = v3;
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  return v0();
}

void *__getOSAGetSubmittableLogsSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CrashReporterSupportLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CrashReporterSupportLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279BA1550;
    v8 = 0;
    CrashReporterSupportLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = CrashReporterSupportLibraryCore_frameworkLibrary;
    if (CrashReporterSupportLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CrashReporterSupportLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "OSAGetSubmittableLogs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getOSAGetSubmittableLogsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CrashReporterSupportLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CrashReporterSupportLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getRTCReportingClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!RTCReportingLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __RTCReportingLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA1568;
    v7 = 0;
    RTCReportingLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (RTCReportingLibraryCore_frameworkLibrary)
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
  result = objc_getClass("RTCReporting");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRTCReportingClass_block_invoke_cold_1();
  }

  getRTCReportingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __RTCReportingLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RTCReportingLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCloudTelemetryReporterClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CloudTelemetryLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CloudTelemetryLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA1580;
    v7 = 0;
    CloudTelemetryLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CloudTelemetryLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CloudTelemetryReporter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCloudTelemetryReporterClass_block_invoke_cold_1();
  }

  getCloudTelemetryReporterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CloudTelemetryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudTelemetryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getAATransparencyLoggingClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AppAnalyticsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AppAnalyticsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA1598;
    v7 = 0;
    AppAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AppAnalyticsLibraryCore_frameworkLibrary)
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
  result = objc_getClass("AATransparencyLogging");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAATransparencyLoggingClass_block_invoke_cold_1();
  }

  getAATransparencyLoggingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AppAnalyticsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppAnalyticsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __DifferentialPrivacyLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DifferentialPrivacyLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getDESSubmissionLogFileURLsSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!DistributedEvaluationLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __DistributedEvaluationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279BA15C8;
    v8 = 0;
    DistributedEvaluationLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = DistributedEvaluationLibraryCore_frameworkLibrary;
    if (DistributedEvaluationLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = DistributedEvaluationLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "DESSubmissionLogFileURLs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDESSubmissionLogFileURLsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __DistributedEvaluationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DistributedEvaluationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getSPMLLoggingClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SearchLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SearchLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA15E0;
    v7 = 0;
    SearchLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (SearchLibraryCore_frameworkLibrary)
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
  result = objc_getClass("SPMLLogging");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSPMLLoggingClass_block_invoke_cold_1();
  }

  getSPMLLoggingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SearchLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SearchLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getPLDiagnosticsClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!PhotoLibraryServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __PhotoLibraryServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA15F8;
    v7 = 0;
    PhotoLibraryServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (PhotoLibraryServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("PLDiagnostics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPLDiagnosticsClass_block_invoke_cold_1();
  }

  getPLDiagnosticsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PhotoLibraryServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PhotoLibraryServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getSDRGetAllLogFileURLsSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!SymptomDiagnosticReporterLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __SymptomDiagnosticReporterLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279BA1610;
    v8 = 0;
    SymptomDiagnosticReporterLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = SymptomDiagnosticReporterLibraryCore_frameworkLibrary;
    if (SymptomDiagnosticReporterLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = SymptomDiagnosticReporterLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SDRGetAllLogFileURLs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSDRGetAllLogFileURLsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SymptomDiagnosticReporterLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SymptomDiagnosticReporterLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getDRGetAllLogFileURLsSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!DiagnosticRequestLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __DiagnosticRequestLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279BA1628;
    v8 = 0;
    DiagnosticRequestLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = DiagnosticRequestLibraryCore_frameworkLibrary;
    if (DiagnosticRequestLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = DiagnosticRequestLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "DRGetAllLogFileURLs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDRGetAllLogFileURLsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __DiagnosticRequestLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DiagnosticRequestLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getPLDatabaseReaderClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!PowerlogDatabaseReaderLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __PowerlogDatabaseReaderLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA1640;
    v7 = 0;
    PowerlogDatabaseReaderLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (PowerlogDatabaseReaderLibraryCore_frameworkLibrary)
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
  result = objc_getClass("PLDatabaseReader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPLDatabaseReaderClass_block_invoke_cold_1();
  }

  getPLDatabaseReaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PowerlogDatabaseReaderLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PowerlogDatabaseReaderLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __iOSDiagnosticsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  iOSDiagnosticsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getOBPrivacyPresenterClass_block_invoke(uint64_t a1)
{
  OnBoardingKitLibrary();
  result = objc_getClass("OBPrivacyPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOBPrivacyPresenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getOBPrivacyPresenterClass_block_invoke_cold_1();
    return OnBoardingKitLibrary();
  }

  return result;
}

uint64_t OnBoardingKitLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __OnBoardingKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BA1670;
    v6 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = OnBoardingKitLibraryCore_frameworkLibrary_0;
  v1 = v4[0];
  if (!OnBoardingKitLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getOBPrivacyImproveSiriIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = OnBoardingKitLibrary();
  result = dlsym(v2, "OBPrivacyImproveSiriIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getOBPrivacyImproveSiriIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getOBPrivacyImproveFitnessPlusIdentifierSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = OnBoardingKitLibrary();
  result = dlsym(v2, "OBPrivacyImproveFitnessPlusIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getOBPrivacyImproveFitnessPlusIdentifierSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getSFSafariViewControllerClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SafariServicesLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA1688;
    v7 = 0;
    SafariServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (SafariServicesLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("SFSafariViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFSafariViewControllerClass_block_invoke_cold_1();
  }

  getSFSafariViewControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getGEOVisualLocalizationCrowdsourcingLearnMoreURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = GeoServicesLibrary();
  result = dlsym(v2, "GEOVisualLocalizationCrowdsourcingLearnMoreURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getGEOVisualLocalizationCrowdsourcingLearnMoreURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t GeoServicesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!GeoServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __GeoServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BA16A0;
    v6 = 0;
    GeoServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = GeoServicesLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!GeoServicesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __GeoServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  GeoServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getAKAppleIDAuthenticationControllerClass_block_invoke_0(uint64_t a1)
{
  AuthKitLibrary_0();
  result = objc_getClass("AKAppleIDAuthenticationController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAKAppleIDAuthenticationControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAKAppleIDAuthenticationControllerClass_block_invoke_cold_1();
    return AuthKitLibrary_0();
  }

  return result;
}

uint64_t AuthKitLibrary_0()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AuthKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BA16B8;
    v6 = 0;
    AuthKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = AuthKitLibraryCore_frameworkLibrary_0;
  v1 = v4[0];
  if (!AuthKitLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __AuthKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getNRPairedDeviceRegistryClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __NanoRegistryLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA16D0;
    v7 = 0;
    NanoRegistryLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (NanoRegistryLibraryCore_frameworkLibrary)
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
  result = objc_getClass("NRPairedDeviceRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNRPairedDeviceRegistryClass_block_invoke_cold_1();
  }

  getNRPairedDeviceRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __NanoRegistryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __DiskSpaceDiagnosticsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DiskSpaceDiagnosticsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getAFSettingsConnectionClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AssistantServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA1700;
    v7 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AssistantServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("AFSettingsConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAFSettingsConnectionClass_block_invoke_cold_1();
  }

  getAFSettingsConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getGEOVisualLocalizationCrowdsourcingIsSupportedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = GeoServicesLibrary();
  result = dlsym(v2, "GEOVisualLocalizationCrowdsourcingIsSupported");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getGEOVisualLocalizationCrowdsourcingIsSupportedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAKAuthenticationSecurityLevelKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthKitLibrary_0();
  result = dlsym(v2, "AKAuthenticationSecurityLevelKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAuthenticationSecurityLevelKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAKAuthenticationIsUnderageKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthKitLibrary_0();
  result = dlsym(v2, "AKAuthenticationIsUnderageKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAuthenticationIsUnderageKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAKAuthenticationIsLegacyStudentKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AuthKitLibrary_0();
  result = dlsym(v2, "AKAuthenticationIsLegacyStudentKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKAuthenticationIsLegacyStudentKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAKAccountManagerClass_block_invoke_0(uint64_t a1)
{
  AuthKitLibrary_0();
  result = objc_getClass("AKAccountManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAKAccountManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAKAccountManagerClass_block_invoke_cold_1();
    return __getCIDVUIIdentityProofingDataSharingFlowManagerClass_block_invoke(v3);
  }

  return result;
}

Class __getCIDVUIIdentityProofingDataSharingFlowManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreIDVUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreIDVUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA1718;
    v7 = 0;
    CoreIDVUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CoreIDVUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("CIDVUIIdentityProofingDataSharingFlowManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCIDVUIIdentityProofingDataSharingFlowManagerClass_block_invoke_cold_1();
  }

  getCIDVUIIdentityProofingDataSharingFlowManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreIDVUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreIDVUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getHealthAppAnalyticsStoreClass_block_invoke(uint64_t a1)
{
  HealthAppServicesLibrary();
  result = objc_getClass("HealthAppAnalyticsStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHealthAppAnalyticsStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHealthAppAnalyticsStoreClass_block_invoke_cold_1();
    return HealthAppServicesLibrary();
  }

  return result;
}

uint64_t HealthAppServicesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HealthAppServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HealthAppServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BA1730;
    v6 = 0;
    HealthAppServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = HealthAppServicesLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!HealthAppServicesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __HealthAppServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthAppServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getHealthAppAnalyticsAgreementImproveHealthAndAnalyticsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthAppServicesLibrary();
  result = dlsym(v2, "HealthAppAnalyticsAgreementImproveHealthAndAnalytics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHealthAppAnalyticsAgreementImproveHealthAndAnalyticsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getHKHealthStoreClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HKHealthStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
    HealthKitLibrary();
  }
}

void HealthKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __HealthKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_279BA1748;
    v4 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __HealthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getHKHealthRecordsStoreClass_block_invoke(uint64_t a1)
{
  HealthKitLibrary();
  result = objc_getClass("HKHealthRecordsStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHKHealthRecordsStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getHKHealthRecordsStoreClass_block_invoke_cold_1();
    return __getHealthAppAnalyticsAgreementImproveHealthRecordsSymbolLoc_block_invoke();
  }

  return result;
}

void *__getHealthAppAnalyticsAgreementImproveHealthRecordsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HealthAppServicesLibrary();
  result = dlsym(v2, "HealthAppAnalyticsAgreementImproveHealthRecords");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHealthAppAnalyticsAgreementImproveHealthRecordsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getGEOVisualLocalizationCrowdsourcingIsAllowedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = GeoServicesLibrary();
  result = dlsym(v2, "GEOVisualLocalizationCrowdsourcingIsAllowed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getGEOVisualLocalizationCrowdsourcingIsAllowedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getGEOVisualLocalizationCrowdsourcingSetEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = GeoServicesLibrary();
  result = dlsym(v2, "GEOVisualLocalizationCrowdsourcingSetEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getGEOVisualLocalizationCrowdsourcingSetEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getGEOVisualLocalizationCrowdsourcingIsEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = GeoServicesLibrary();
  result = dlsym(v2, "GEOVisualLocalizationCrowdsourcingIsEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getGEOVisualLocalizationCrowdsourcingIsEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id PUI_LocalizedStringForRestrictions(void *a1)
{
  v1 = a1;
  v2 = PUI_BundleForPrivacySettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Restrictions"];

  return v3;
}

id PUI_BundleForPrivacySettingsFramework()
{
  if (PUI_BundleForPrivacySettingsFramework_onceToken != -1)
  {
    PUI_BundleForPrivacySettingsFramework_cold_1();
  }

  v1 = PUI_BundleForPrivacySettingsFramework__privacySettingsFrameworkBundle;

  return v1;
}

id PUI_LocalizedStringForLocationServices(void *a1)
{
  v1 = a1;
  v2 = PUI_BundleForPrivacySettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Location Services"];

  return v3;
}

id PUI_LocalizedStringForLocationServicesPrivacy(void *a1)
{
  v1 = a1;
  v2 = PUI_BundleForPrivacySettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"LocationServicesPrivacy"];

  return v3;
}

id PUI_LocalizedStringForPrivacy(void *a1)
{
  v1 = a1;
  v2 = PUI_BundleForPrivacySettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Privacy"];

  return v3;
}

id PUI_LocalizedStringForPrivacyKa7ana(void *a1)
{
  v1 = a1;
  v2 = PUI_BundleForPrivacySettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Privacy-ka7ana"];

  return v3;
}

id PUI_LocalizedStringForAlmanac(void *a1)
{
  v1 = a1;
  v2 = PUI_BundleForPrivacySettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Almanac-ALMANAC"];

  return v3;
}

id PUI_LocalizedStringForDimSum(void *a1)
{
  v1 = a1;
  v2 = PUI_BundleForPrivacySettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Dim-Sum"];

  return v3;
}

id PUI_LocalizedStringForAdSupport(void *a1)
{
  v1 = a1;
  v2 = PUI_BundleForPrivacySettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"AppleAdvertising"];

  return v3;
}

id PUI_LocalizedStringForTrackers(void *a1)
{
  v1 = a1;
  v2 = PUI_BundleForPrivacySettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Trackers"];

  return v3;
}

id PUI_LocalizedStringForAppReport(void *a1)
{
  v1 = a1;
  v2 = PUI_BundleForPrivacySettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"AppReport"];

  return v3;
}

id PUI_LocalizedStringForLockdownMode(void *a1)
{
  v1 = a1;
  v2 = PUI_BundleForPrivacySettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"LockdownMode"];

  return v3;
}

id PUI_LocalizedStringForSafety(void *a1)
{
  v1 = a1;
  v2 = PUI_BundleForPrivacySettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Safety"];

  return v3;
}

id PUI_LocalizedStringForProblemReporting(void *a1)
{
  v1 = a1;
  v2 = PUI_BundleForPrivacySettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"ProblemReporting"];

  return v3;
}

id PUI_LocalizedStringForProblemReportingCinnamon(void *a1)
{
  v1 = a1;
  v2 = PUI_BundleForPrivacySettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"ProblemReporting-Cinnamon"];

  return v3;
}

id PUI_LocalizedStringForProblemReportingBankConnect(void *a1)
{
  v1 = a1;
  v2 = PUI_BundleForPrivacySettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"ProblemReporting-BankConnect"];

  return v3;
}

id PUI_RebrandedKeyForAppleID(void *a1)
{
  v1 = a1;
  if (([v1 containsString:@"REBRAND"] & 1) != 0 || (_os_feature_enabled_impl() & 1) == 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 stringByAppendingString:@"_REBRAND"];
  }

  v3 = v2;

  return v3;
}

id getLocalizedDeviceName()
{
  if (getLocalizedDeviceName_onceToken != -1)
  {
    getLocalizedDeviceName_cold_1();
  }

  v1 = getLocalizedDeviceName_localizedDeviceName;

  return v1;
}

uint64_t __getLocalizedDeviceName_block_invoke()
{
  getLocalizedDeviceName_localizedDeviceName = MGCopyAnswer();

  return MEMORY[0x2821F96F8]();
}

id PUIDisplayNameForApp(__CFBundle *a1)
{
  v2 = CFBundleGetIdentifier(a1);
  v3 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v2];
  v4 = [v3 localizedName];

  if (![v4 length])
  {
    v5 = CFBundleGetInfoDictionary(a1);
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBEC40]];

    if (![v6 length])
    {
      v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBED50]];

      if ([v7 length])
      {
        v6 = v7;
      }

      else
      {
        v8 = CFBundleCopyBundleURL(a1);
        v9 = [(__CFURL *)v8 lastPathComponent];
        v6 = [v9 stringByDeletingPathExtension];
      }
    }

    v4 = v6;
  }

  return v4;
}

id PUIWatchBundleIDForBundleID(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = _PUILoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v1;
    _os_log_impl(&dword_2657FE000, v2, OS_LOG_TYPE_DEFAULT, "Fetching watch app bundle id for companion bundle id %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __PUIWatchBundleIDForBundleID_block_invoke;
  v10[3] = &unk_279BA1768;
  p_buf = &buf;
  v5 = v1;
  v11 = v5;
  v6 = v3;
  v12 = v6;
  [v4 fetchWatchAppBundleIDForCompanionAppBundleID:v5 completion:v10];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void sub_265817AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PUIWatchBundleIDForBundleID_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = _PUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v15 = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v5;
      v8 = "Error fetching watch app bundle id for %@, error %@";
LABEL_6:
      _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, v8, &v15, 0x16u);
    }
  }

  else
  {
    v9 = [a2 copy];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v6 = _PUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 48) + 8) + 40);
      v13 = *(a1 + 32);
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v8 = "Found watch bundle id %@ for companion bundle id %@";
      goto LABEL_6;
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v14 = *MEMORY[0x277D85DE8];
}

id PUIDisplayNameForWatchApp(void *a1)
{
  v52[3] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v51[0] = @"com.apple.findmy.finddevices";
  v2 = PUI_LocalizedStringForLocationServices(@"APP_NAME_FIND_DEVICES");
  v52[0] = v2;
  v51[1] = @"com.apple.findmy.finditems";
  v3 = PUI_LocalizedStringForLocationServices(@"APP_NAME_FIND_ITEMS");
  v52[1] = v3;
  v51[2] = @"com.apple.findmy.findpeople";
  v4 = PUI_LocalizedStringForLocationServices(@"APP_NAME_FIND_PEOPLE");
  v52[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];

  v6 = [v5 objectForKeyedSubscript:v1];

  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:v1];
  }

  else
  {
    v8 = *MEMORY[0x277CBED50];
    v9 = *MEMORY[0x277CBEC40];
    v35 = v8;
    v10 = [MEMORY[0x277CBEB98] setWithObjects:{v8, v9, 0}];
    v11 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    v12 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v44 = 0;
    v13 = [v11 copyLocalizedValuesFromAllDevicesForInfoPlistKeys:v10 forAppWithBundleID:v1 fetchingFirstMatchingLocalizationInList:v12 error:&v44];
    v14 = v44;

    if (v14)
    {
      v15 = _PUILoggingFacility();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v48 = v1;
        v49 = 2112;
        v50 = v14;
        _os_log_impl(&dword_2657FE000, v15, OS_LOG_TYPE_DEFAULT, "Error fetching watch app name for %@, error %@", buf, 0x16u);
      }

      v7 = 0;
    }

    else
    {
      v34 = v10;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v33 = v13;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v41;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v41 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v40 + 1) + 8 * i);
            v21 = [v15 objectForKeyedSubscript:v20];
            v22 = [v21 objectForKeyedSubscript:v9];

            if (v22)
            {
              v28 = [v15 objectForKeyedSubscript:v20];
              v29 = v28;
              v30 = v9;
LABEL_26:
              v7 = [v28 objectForKeyedSubscript:v30];

              goto LABEL_27;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v40 objects:v46 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v15 = v15;
      v7 = [v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v7)
      {
        v23 = *v37;
        while (2)
        {
          for (j = 0; j != v7; j = j + 1)
          {
            if (*v37 != v23)
            {
              objc_enumerationMutation(v15);
            }

            v25 = *(*(&v36 + 1) + 8 * j);
            v26 = [v15 objectForKeyedSubscript:v25];
            v27 = [v26 objectForKeyedSubscript:v35];

            if (v27)
            {
              v28 = [v15 objectForKeyedSubscript:v25];
              v29 = v28;
              v30 = v35;
              goto LABEL_26;
            }
          }

          v7 = [v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:
      v14 = 0;
      v10 = v34;
      v13 = v33;
    }
  }

  v31 = *MEMORY[0x277D85DE8];

  return v7;
}

void *PUIGetActivePairedDevice()
{
  v0 = objc_opt_respondsToSelector();
  v1 = [MEMORY[0x277D2BCF8] sharedInstance];
  v2 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  if (v0)
  {
    [v1 getAllDevicesWithArchivedAltAccountDevicesMatching:v2];
  }

  else
  {
    [v1 getAllDevicesWithArchivedDevicesMatching:v2];
  }
  v3 = ;
  v4 = [v3 firstObject];

  v5 = [v4 valueForProperty:*MEMORY[0x277D2BB30]];
  if ([v5 BOOLValue])
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v6;
}

BOOL PUIIsAppClip(void *a1)
{
  v1 = MEMORY[0x277CC1E70];
  v2 = a1;
  v7 = 0;
  v3 = [[v1 alloc] initWithBundleIdentifier:v2 allowPlaceholder:0 error:&v7];

  v4 = [v3 appClipMetadata];
  v5 = v4 != 0;

  return v5;
}

void PUIResetIDFAIfNeeded()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D6C238];
  v1 = TCCAccessCopyBundleIdentifiersForService();
  if (![v1 count])
  {
    v2 = _PUILoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "PUIResetIDFAIfNeeded";
      _os_log_impl(&dword_2657FE000, v2, OS_LOG_TYPE_DEFAULT, "%s: all apps were disabled for kTCCServiceUserTracking. Resetting ad identifier.", &v5, 0xCu);
    }

    v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v3 clearAdvertisingIdentifier];
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t PUICompareSpecifiersByName(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 name];
  v5 = [v3 name];

  v6 = [v4 localizedCaseInsensitiveCompare:v5];
  return v6;
}

void PUIAnalyticsLogView(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v5 = v10;
  v6 = v9;
  v7 = v8;
  AnalyticsSendEventLazy();
}

id __PUIAnalyticsLogView_block_invoke(int64x2_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = @"view";
  v5[1] = @"bundleID";
  v1 = &stru_28771E540;
  v6 = vbslq_s8(vceqzq_s64(a1[2]), vdupq_n_s64(&stru_28771E540), a1[2]);
  v5[2] = @"category";
  if (a1[3].i64[0])
  {
    v1 = a1[3].i64[0];
  }

  v7 = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id PUITribecaSupportedText()
{
  if (PUITribecaSupportedText_token != -1)
  {
    PUITribecaSupportedText_cold_1();
  }

  v1 = PUITribecaSupportedText_text;

  return v1;
}

void __PUITribecaSupportedText_block_invoke()
{
  v9 = *MEMORY[0x277D85DE8];
  if (aks_bak_get_beacon())
  {
    v0 = _PUILoggingFacility();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "PUITribecaSupportedText_block_invoke";
      _os_log_impl(&dword_2657FE000, v0, OS_LOG_TYPE_DEFAULT, "%s: didn't successfully find beacon.", buf, 0xCu);
    }
  }

  else
  {
    v1 = [objc_alloc(MEMORY[0x277CCA8D8]) _initUniqueWithPath:{@"/System/Library/PrivateFrameworks/FindMyBeaconingSupport.framework", 0}];
    v0 = v1;
    if (v1)
    {
      v2 = [v1 localizedStringForKey:@"E786CC8A-FAD0-49DB-9460-F27F248521CD" value:&stru_28771E540 table:0];
      v3 = v2;
      if (v2 && [v2 length])
      {
        v4 = v3;
        v5 = PUITribecaSupportedText_text;
        PUITribecaSupportedText_text = v4;
      }

      else
      {
        v5 = _PUILoggingFacility();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          __PUITribecaSupportedText_block_invoke_cold_1(v5);
        }
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t PUIIsUserParcElisabethEligible()
{
  v4 = 0;
  v5 = 0;
  domain_answer = os_eligibility_get_domain_answer();
  v1 = _PUILoggingFacility();
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_ERROR);
  if (domain_answer)
  {
    if (v2)
    {
      PUIIsUserParcElisabethEligible_cold_1(domain_answer, v1);
    }
  }

  else if (v2)
  {
    PUIIsUserParcElisabethEligible_cold_2(v1);
  }

  return 0;
}

void sub_265818C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265819930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26581E5BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 256));
  _Unwind_Resume(a1);
}

void __PUICalendarAuthorizationStatesForService_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_subject_identity();
    authorization_right = tcc_authorization_record_get_authorization_right();
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:tcc_identity_get_identifier() encoding:4];
    if (v8)
    {
      switch(authorization_right)
      {
        case 0:
          v9 = 48;
          goto LABEL_14;
        case 2:
          v9 = 32;
          goto LABEL_14;
        case 4:
          v9 = 40;
LABEL_14:
          [*(a1 + v9) addObject:v8];
          break;
      }
    }

    goto LABEL_16;
  }

  v10 = _PUILoggingFacility();
  v6 = v10;
  if (a3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __PUICalendarAuthorizationStatesForService_block_invoke_cold_1(a1, a3, v6);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 56);
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "Finished getting authorization for service: %@", &v13, 0xCu);
  }

LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
}

void sub_26581FE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id bundleIdentifiersWithPickerAccess()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getCNPrivateAccessAggregatorClass_softClass;
  v9 = getCNPrivateAccessAggregatorClass_softClass;
  if (!getCNPrivateAccessAggregatorClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getCNPrivateAccessAggregatorClass_block_invoke;
    v5[3] = &unk_279BA0D08;
    v5[4] = &v6;
    __getCNPrivateAccessAggregatorClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v2 = [v0 allLoggedBundledIdentifiers];
  v3 = [MEMORY[0x277CBEB98] setWithArray:v2];

  return v3;
}

void sub_265820878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCNLimitedAccessContactPickerViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNLimitedAccessContactPickerViewControllerClass_softClass;
  v7 = getCNLimitedAccessContactPickerViewControllerClass_softClass;
  if (!getCNLimitedAccessContactPickerViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCNLimitedAccessContactPickerViewControllerClass_block_invoke;
    v3[3] = &unk_279BA0D08;
    v3[4] = &v4;
    __getCNLimitedAccessContactPickerViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_265821470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265823FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, id location)
{
  objc_destroyWeak((v57 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265824C38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 256));
  _Unwind_Resume(a1);
}

void __getCNPrivateAccessAggregatorClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CNPrivateAccessAggregator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNPrivateAccessAggregatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCNPrivateAccessAggregatorClass_block_invoke_cold_1();
    ContactsUILibrary();
  }
}

void ContactsUILibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __ContactsUILibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_279BA1990;
    v4 = 0;
    ContactsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __ContactsUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCNLimitedAccessContactPickerViewControllerClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNLimitedAccessContactPickerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNLimitedAccessContactPickerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCNLimitedAccessContactPickerViewControllerClass_block_invoke_cold_1();
    return __getCNContactGroupVisualizerClass_block_invoke(v3);
  }

  return result;
}

Class __getCNContactGroupVisualizerClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNContactGroupVisualizer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCNContactGroupVisualizerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCNContactGroupVisualizerClass_block_invoke_cold_1();
    return __PUIContactsAuthorizationStatesForService_block_invoke(v3);
  }

  return result;
}

void __PUIContactsAuthorizationStatesForService_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_subject_identity();
    authorization_right = tcc_authorization_record_get_authorization_right();
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:tcc_identity_get_identifier() encoding:4];
    if (v8)
    {
      switch(authorization_right)
      {
        case 0:
          v9 = 48;
          goto LABEL_14;
        case 2:
          v9 = 32;
          goto LABEL_14;
        case 3:
          v9 = 40;
LABEL_14:
          [*(a1 + v9) addObject:v8];
          break;
      }
    }

    goto LABEL_16;
  }

  v10 = _PUILoggingFacility();
  v6 = v10;
  if (a3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __PUIContactsAuthorizationStatesForService_block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 56);
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "Finished getting authorization for service: %@", &v13, 0xCu);
  }

LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_2658256B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PUIAllApplicationsSupportingDisclosureReview()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getPDUAllApplicationsSupportingDisclosureReviewSymbolLoc_ptr;
  v9 = getPDUAllApplicationsSupportingDisclosureReviewSymbolLoc_ptr;
  if (!getPDUAllApplicationsSupportingDisclosureReviewSymbolLoc_ptr)
  {
    v1 = PrivacyDisclosureUILibrary();
    v7[3] = dlsym(v1, "PDUAllApplicationsSupportingDisclosureReview");
    getPDUAllApplicationsSupportingDisclosureReviewSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = v0();

  return v2;
}

void *__getPDUAllApplicationsSupportingDisclosureReviewSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PrivacyDisclosureUILibrary();
  result = dlsym(v2, "PDUAllApplicationsSupportingDisclosureReview");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPDUAllApplicationsSupportingDisclosureReviewSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PrivacyDisclosureUILibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PrivacyDisclosureUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PrivacyDisclosureUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BA19F8;
    v6 = 0;
    PrivacyDisclosureUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = PrivacyDisclosureUILibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!PrivacyDisclosureUILibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __PrivacyDisclosureUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PrivacyDisclosureUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getPDUDisclosureReviewViewControllerForApplicationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PrivacyDisclosureUILibrary();
  result = dlsym(v2, "PDUDisclosureReviewViewControllerForApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPDUDisclosureReviewViewControllerForApplicationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_265826DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

Class __getFPAccessControlManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __FileProviderLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA1A40;
    v7 = 0;
    FileProviderLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (FileProviderLibraryCore_frameworkLibrary)
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
  result = objc_getClass("FPAccessControlManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFPAccessControlManagerClass_block_invoke_cold_1();
  }

  getFPAccessControlManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __FileProviderLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FileProviderLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_265827FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCLCopyAppsUsingLocationSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreLocationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279BA1A80;
    v8 = 0;
    CoreLocationLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = CoreLocationLibraryCore_frameworkLibrary;
    if (CoreLocationLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = CoreLocationLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "CLCopyAppsUsingLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLCopyAppsUsingLocationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreLocationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL PUILocationIsActivePairedDevice()
{
  v0 = PUIGetActivePairedDevice();

  return v0 != 0;
}

BOOL PUILocationIsDisplayNameForWatchApp(void *a1)
{
  v1 = PUIDisplayNameForWatchApp(a1);

  return v1 != 0;
}

BOOL PUILocationIsWatchBundleIDForBundleID(void *a1)
{
  v1 = PUIWatchBundleIDForBundleID(a1);

  return v1 != 0;
}

uint64_t PSUICLCopyAppsUsingLocation()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getCLCopyAppsUsingLocationSymbolLoc_ptr_0;
  v8 = getCLCopyAppsUsingLocationSymbolLoc_ptr_0;
  if (!getCLCopyAppsUsingLocationSymbolLoc_ptr_0)
  {
    v1 = CoreLocationLibrary();
    v6[3] = dlsym(v1, "CLCopyAppsUsingLocation");
    getCLCopyAppsUsingLocationSymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    v4 = v3;
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  return v0();
}

id getCLLocationManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationManagerClass_softClass;
  v7 = getCLLocationManagerClass_softClass;
  if (!getCLLocationManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationManagerClass_block_invoke;
    v3[3] = &unk_279BA0D08;
    v3[4] = &v4;
    __getCLLocationManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_26582AE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCLAppStatusChangedNotification()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getCLAppStatusChangedNotificationSymbolLoc_ptr;
  v9 = getCLAppStatusChangedNotificationSymbolLoc_ptr;
  if (!getCLAppStatusChangedNotificationSymbolLoc_ptr)
  {
    v1 = CoreLocationLibrary();
    v7[3] = dlsym(v1, "CLAppStatusChangedNotification");
    getCLAppStatusChangedNotificationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

uint64_t appInstallCallback(uint64_t a1, void *a2)
{
  v3 = _PUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2657FE000, v3, OS_LOG_TYPE_DEFAULT, "app installed", v5, 2u);
  }

  return [a2 reloadSpecifiers];
}

uint64_t appUninstallCallback(uint64_t a1, void *a2)
{
  v3 = _PUILoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2657FE000, v3, OS_LOG_TYPE_DEFAULT, "app uninstalled", v5, 2u);
  }

  return [a2 reloadSpecifiers];
}

uint64_t isModificationAllowedForID(void *a1)
{
  if (![a1 isEqualToString:@"com.apple.findmy"])
  {
    return 1;
  }

  v1 = [MEMORY[0x277D262A0] sharedConnection];
  v2 = [v1 effectiveBoolValueForSetting:*MEMORY[0x277D25EA8]] != 2;

  return v2;
}

id getPSGFindMyiPhoneControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPSGFindMyiPhoneControllerClass_softClass;
  v7 = getPSGFindMyiPhoneControllerClass_softClass;
  if (!getPSGFindMyiPhoneControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPSGFindMyiPhoneControllerClass_block_invoke;
    v3[3] = &unk_279BA0D08;
    v3[4] = &v4;
    __getPSGFindMyiPhoneControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_26582C770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26582DC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26582E834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id location)
{
  objc_destroyWeak((v53 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26582FE58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_2658301D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

id getkCLCommonLocationUsageDescriptionKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getkCLCommonLocationUsageDescriptionKeySymbolLoc_ptr;
  v9 = getkCLCommonLocationUsageDescriptionKeySymbolLoc_ptr;
  if (!getkCLCommonLocationUsageDescriptionKeySymbolLoc_ptr)
  {
    v1 = CoreLocationLibrary();
    v7[3] = dlsym(v1, "kCLCommonLocationUsageDescriptionKey");
    getkCLCommonLocationUsageDescriptionKeySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v0)
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    v5 = v4;
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  v2 = *v0;

  return v2;
}

void __loadLocationFillSystemImage_block_invoke()
{
  v0 = [MEMORY[0x277D755B8] systemImageNamed:@"location.fill"];
  v1 = locationFillSystemImage;
  locationFillSystemImage = v0;

  v2 = locationFillSystemImage;
  v3 = [MEMORY[0x277D75348] systemPurpleColor];
  v4 = [v2 _flatImageWithColor:v3];
  v5 = [v4 imageWithRenderingMode:1];
  v6 = locationFillSystemImageWithSystemPurpleColor;
  locationFillSystemImageWithSystemPurpleColor = v5;

  v7 = locationFillSystemImage;
  v8 = [MEMORY[0x277D75348] secondaryLabelColor];
  v9 = [v7 _flatImageWithColor:v8];
  v10 = [v9 imageWithRenderingMode:1];
  v11 = locationFillSystemImageWithSecondaryLabelColor;
  locationFillSystemImageWithSecondaryLabelColor = v10;

  v16 = [MEMORY[0x277D755B8] systemImageNamed:@"location"];
  v12 = [MEMORY[0x277D75348] systemPurpleColor];
  v13 = [v16 _flatImageWithColor:v12];
  v14 = [v13 imageWithRenderingMode:1];
  v15 = locationSystemImageWithSystemPurpleColor;
  locationSystemImageWithSystemPurpleColor = v14;
}

void *__getCLCopyAppsUsingLocationSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "CLCopyAppsUsingLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLCopyAppsUsingLocationSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreLocationLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreLocationLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BA1D10;
    v6 = 0;
    CoreLocationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = CoreLocationLibraryCore_frameworkLibrary_0;
  v1 = v4[0];
  if (!CoreLocationLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __CoreLocationLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCLLocationManagerClass_block_invoke(uint64_t a1)
{
  CoreLocationLibrary();
  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCLLocationManagerClass_block_invoke_cold_1();
    return __getCLAppStatusChangedNotificationSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getCLAppStatusChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "CLAppStatusChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLAppStatusChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPSGFindMyiPhoneControllerClass_block_invoke(uint64_t a1)
{
  GeneralSettingsUILibrary();
  result = objc_getClass("PSGFindMyiPhoneController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPSGFindMyiPhoneControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPSGFindMyiPhoneControllerClass_block_invoke_cold_1();
    return GeneralSettingsUILibrary();
  }

  return result;
}

uint64_t GeneralSettingsUILibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!GeneralSettingsUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __GeneralSettingsUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BA1D28;
    v6 = 0;
    GeneralSettingsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = GeneralSettingsUILibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!GeneralSettingsUILibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __GeneralSettingsUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  GeneralSettingsUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getFindMyiPhoneControllerErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = GeneralSettingsUILibrary();
  result = dlsym(v2, "FindMyiPhoneControllerErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFindMyiPhoneControllerErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCLCommonLocationAlwaysAndWhenInUseUsageDescriptionKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "kCLCommonLocationAlwaysAndWhenInUseUsageDescriptionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCLCommonLocationAlwaysAndWhenInUseUsageDescriptionKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCLCommonLocationWhenInUseUsageDescriptionKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "kCLCommonLocationWhenInUseUsageDescriptionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCLCommonLocationWhenInUseUsageDescriptionKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCLCommonLocationAlwaysUsageDescriptionKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "kCLCommonLocationAlwaysUsageDescriptionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCLCommonLocationAlwaysUsageDescriptionKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCLCommonLocationUsageDescriptionKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreLocationLibrary();
  result = dlsym(v2, "kCLCommonLocationUsageDescriptionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCLCommonLocationUsageDescriptionKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getCLLocationManagerClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationManagerClass_softClass_0;
  v7 = getCLLocationManagerClass_softClass_0;
  if (!getCLLocationManagerClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationManagerClass_block_invoke_0;
    v3[3] = &unk_279BA0D08;
    v3[4] = &v4;
    __getCLLocationManagerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2658361C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26583642C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265837364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getTUCallCapabilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTUCallCapabilitiesClass_softClass;
  v7 = getTUCallCapabilitiesClass_softClass;
  if (!getTUCallCapabilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getTUCallCapabilitiesClass_block_invoke;
    v3[3] = &unk_279BA0D08;
    v3[4] = &v4;
    __getTUCallCapabilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_265838ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCLLocationManagerClass_block_invoke_0(uint64_t a1)
{
  CoreLocationLibrary_0();
  result = objc_getClass("CLLocationManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCLLocationManagerClass_block_invoke_cold_1();
    return CoreLocationLibrary_0();
  }

  return result;
}

uint64_t CoreLocationLibrary_0()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreLocationLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BA1E48;
    v6 = 0;
    CoreLocationLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = CoreLocationLibraryCore_frameworkLibrary_1;
  v1 = v4[0];
  if (!CoreLocationLibraryCore_frameworkLibrary_1)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __CoreLocationLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getCLCopyAppsUsingLocationSymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = CoreLocationLibrary_0();
  result = dlsym(v2, "CLCopyAppsUsingLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCLCopyAppsUsingLocationSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getTUCallCapabilitiesClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __TelephonyUtilitiesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA1E60;
    v7 = 0;
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (TelephonyUtilitiesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("TUCallCapabilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTUCallCapabilitiesClass_block_invoke_cold_1();
  }

  getTUCallCapabilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id _PUILoggingFacility()
{
  if (_PUILoggingFacility_onceToken != -1)
  {
    _PUILoggingFacility_cold_1();
  }

  v1 = _PUILoggingFacility_oslog;

  return v1;
}

id PUILogForCategory(unint64_t a1)
{
  if (a1 >= 2)
  {
    PUILogForCategory_cold_2();
  }

  if (PUILogForCategory_loggingToken != -1)
  {
    PUILogForCategory_cold_1();
  }

  v2 = PUILogForCategory_logObjects[a1];

  return v2;
}

uint64_t __PUILogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.SettingsAndCoreApps.PrivacySettings", "PrivacySettings");
  v1 = PUILogForCategory_logObjects;
  PUILogForCategory_logObjects = v0;

  qword_280027EC8 = os_log_create("com.apple.SettingsAndCoreApps.PrivacySettings", "Signposts");

  return MEMORY[0x2821F96F8]();
}

void sub_26583A468(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_26583A8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t compareConfigurationNames(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 name];
  v5 = [v3 name];

  v6 = [v4 localizedCaseInsensitiveCompare:v5];
  return v6;
}

uint64_t compareAppNames(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 localizedName];
  v5 = [v3 localizedName];

  v6 = [v4 localizedCaseInsensitiveCompare:v5];
  return v6;
}

void PSPXTCCSettingsLimitedAccessSubtitle(void *a1)
{
  v1 = a1;
  PXTCCSettingsLimitedAccessSubtitleSymbolLoc = getPXTCCSettingsLimitedAccessSubtitleSymbolLoc();
  if (PXTCCSettingsLimitedAccessSubtitleSymbolLoc)
  {
    v3 = PXTCCSettingsLimitedAccessSubtitleSymbolLoc(v1);

    v4 = v3;
  }

  else
  {
    [PUILockdownModeController getEligibleDevicesWithCompletion:];
    [(PUIPhotoServicesAuthorizationLevelController *)v5 setSpecifier:v6, v7];
  }
}

id PUIPhotosPolicyBundleIdentifiersWithRecentPickerUsage()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = [MEMORY[0x277D3B240] sharedInstance];
  v2 = [v1 photosPickerPresentedLibraryLogsByClient];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = *MEMORY[0x277D3B268];
    v8 = *MEMORY[0x277D3B270];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{v7, v17}];
        v12 = [v10 objectForKeyedSubscript:v8];
        [v12 timeIntervalSinceNow];
        if (v13 <= 0.0 && v13 > -2592000.0)
        {
          [v0 addObject:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v14 = [v0 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void sub_26583E10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26583FB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id location)
{
  objc_destroyWeak((v61 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PUIPhotosAuthorizationStatesForService(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = tcc_server_create();
  v8 = tcc_service_singleton_for_CF_name();
  v9 = *MEMORY[0x277D6C1D8];
  v10 = tcc_service_singleton_for_CF_name();
  tcc_object_equal();

  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = _PUILoggingFacility();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = a1;
    _os_log_impl(&dword_2657FE000, v15, OS_LOG_TYPE_DEFAULT, "Requesting TCC auth records for service: %@", buf, 0xCu);
  }

  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  tcc_server_message_get_authorization_records_by_service();
  if (a2)
  {
    *a2 = [v16 copy];
  }

  if (a3)
  {
    *a3 = [v17 copy];
  }

  if (a4)
  {
    *a4 = [v18 copy];
  }

  if (a5)
  {
    *a5 = [v19 copy];
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t PhotosUICoreLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!PhotosUICoreLibraryCore_frameworkLibrary)
  {
    PhotosUICoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = PhotosUICoreLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getPXTCCSettingsFullAccessSubtitleSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPXTCCSettingsFullAccessSubtitleSymbolLoc_ptr;
  v6 = getPXTCCSettingsFullAccessSubtitleSymbolLoc_ptr;
  if (!getPXTCCSettingsFullAccessSubtitleSymbolLoc_ptr)
  {
    v1 = PhotosUICoreLibrary();
    v4[3] = dlsym(v1, "PXTCCSettingsFullAccessSubtitle");
    getPXTCCSettingsFullAccessSubtitleSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_265840F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PhotosUICoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PhotosUICoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getPXTCCSettingsFullAccessSubtitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotosUICoreLibrary();
  result = dlsym(v2, "PXTCCSettingsFullAccessSubtitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPXTCCSettingsFullAccessSubtitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PhotosUICoreLibrary()
{
  v0 = PhotosUICoreLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getPXTCCSettingsLimitedAccessSubtitleSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPXTCCSettingsLimitedAccessSubtitleSymbolLoc_ptr;
  v6 = getPXTCCSettingsLimitedAccessSubtitleSymbolLoc_ptr;
  if (!getPXTCCSettingsLimitedAccessSubtitleSymbolLoc_ptr)
  {
    v1 = PhotosUICoreLibrary();
    v4[3] = dlsym(v1, "PXTCCSettingsLimitedAccessSubtitle");
    getPXTCCSettingsLimitedAccessSubtitleSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_26584119C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPXTCCSettingsLimitedAccessSubtitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PhotosUICoreLibrary();
  result = dlsym(v2, "PXTCCSettingsLimitedAccessSubtitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPXTCCSettingsLimitedAccessSubtitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t TCCLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!TCCLibraryCore_frameworkLibrary)
  {
    TCCLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = TCCLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t gettcc_server_message_prompt_authorization_valueSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = gettcc_server_message_prompt_authorization_valueSymbolLoc_ptr;
  v6 = gettcc_server_message_prompt_authorization_valueSymbolLoc_ptr;
  if (!gettcc_server_message_prompt_authorization_valueSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __gettcc_server_message_prompt_authorization_valueSymbolLoc_block_invoke;
    v2[3] = &unk_279BA0D08;
    v2[4] = &v3;
    __gettcc_server_message_prompt_authorization_valueSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_265841384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TCCLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TCCLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__gettcc_server_message_prompt_authorization_valueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "tcc_server_message_prompt_authorization_value");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gettcc_server_message_prompt_authorization_valueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __PUIPhotosAuthorizationStatesForService_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_subject_identity();
    authorization_right = tcc_authorization_record_get_authorization_right();
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:tcc_identity_get_identifier() encoding:4];
    if (!v8)
    {
LABEL_18:

      goto LABEL_19;
    }

    if (authorization_right)
    {
      if (authorization_right == 2)
      {
        v9 = 32;
      }

      else
      {
        if (authorization_right != 3)
        {
LABEL_15:
          if (*(a1 + 72) == 1 && tcc_authorization_record_get_has_prompted_for_allow())
          {
            [*(a1 + 56) addObject:v8];
          }

          goto LABEL_18;
        }

        v9 = 40;
      }
    }

    else
    {
      v9 = 48;
    }

    [*(a1 + v9) addObject:v8];
    goto LABEL_15;
  }

  v10 = _PUILoggingFacility();
  v6 = v10;
  if (a3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __PUIPhotosAuthorizationStatesForService_block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 64);
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_2657FE000, v6, OS_LOG_TYPE_DEFAULT, "Finished getting authorization for service: %@", &v13, 0xCu);
  }

LABEL_19:

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2658478F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPAAccessReaderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPAAccessReaderClass_softClass;
  v7 = getPAAccessReaderClass_softClass;
  if (!getPAAccessReaderClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPAAccessReaderClass_block_invoke;
    v3[3] = &unk_279BA0D08;
    v3[4] = &v4;
    __getPAAccessReaderClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2658479D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPAAccessReaderClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!PrivacyAccountingLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __PrivacyAccountingLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA2140;
    v7 = 0;
    PrivacyAccountingLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (PrivacyAccountingLibraryCore_frameworkLibrary)
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
  result = objc_getClass("PAAccessReader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPAAccessReaderClass_block_invoke_cold_1();
  }

  getPAAccessReaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PrivacyAccountingLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PrivacyAccountingLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void getStartAndEndTimeForRecord(void *a1, void *a2, void *a3)
{
  v7 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 startTime];
    *a2 = v5;
    [v7 endTime];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    [v7 startTime];
    *a2 = v6;
  }

  *a3 = v6;
LABEL_6:
}

uint64_t __isGreenTeaSKU_block_invoke()
{
  result = MGGetBoolAnswer();
  isGreenTeaSKU_deviceIsChinaSKU = result;
  return result;
}

void sub_26584F6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
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

Class __getPAAccessReaderClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!PrivacyAccountingLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __PrivacyAccountingLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279BA2280;
    v7 = 0;
    PrivacyAccountingLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (PrivacyAccountingLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("PAAccessReader");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPAAccessReaderClass_block_invoke_cold_1();
  }

  getPAAccessReaderClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __PrivacyAccountingLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PrivacyAccountingLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id PUIWebsiteIconView()
{
  if (PUIWebsiteIconView_onceToken != -1)
  {
    PUIWebsiteIconView_cold_1();
  }

  v0 = objc_opt_new();
  [v0 setFrame:{0.0, 0.0, *&PUIWebsiteIconView_iconSize_0, *&PUIWebsiteIconView_iconSize_1}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [v0 widthAnchor];
  v2 = [v1 constraintEqualToConstant:*&PUIWebsiteIconView_iconSize_0];
  [v2 setActive:1];

  v3 = [v0 heightAnchor];
  v4 = [v3 constraintEqualToConstant:*&PUIWebsiteIconView_iconSize_1];
  [v4 setActive:1];

  v5 = [MEMORY[0x277D75348] whiteColor];
  [v0 setTextColor:v5];

  [v0 setTextAlignment:1];
  v6 = [MEMORY[0x277D75348] systemGrayColor];
  [v0 setBackgroundColor:v6];

  [v0 _setContinuousCornerRadius:*&PUIWebsiteIconView_cornerRadius];
  v7 = [v0 layer];
  [v7 setMasksToBounds:1];

  return v0;
}

void __PUIWebsiteIconView_block_invoke()
{
  v0 = PSBlankIconImage();
  [v0 size];
  PUIWebsiteIconView_iconSize_0 = v1;
  PUIWebsiteIconView_iconSize_1 = v2;

  v4 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B240]];
  [v4 continuousCornerRadius];
  PUIWebsiteIconView_cornerRadius = v3;
}

id PUIImageFromLabel(void *a1)
{
  v1 = a1;
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v8 = v7;
  v13.width = v3;
  v13.height = v5;
  UIGraphicsBeginImageContextWithOptions(v13, 0, v8);

  v9 = [v1 layer];

  [v9 renderInContext:UIGraphicsGetCurrentContext()];
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

void sub_26585450C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 256));
  _Unwind_Resume(a1);
}

void sub_265858844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_265858DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265859400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26585B1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL PUIWriteBytesToStream(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v7 = a1;
  if (a3)
  {
    v8 = 0;
    v9 = 512;
    v10 = a3;
    while (1)
    {
      v11 = [v7 write:a2 + v8 maxLength:v10];
      if (v11 < 0)
      {
        break;
      }

      if (!v11)
      {
        v9 = 640;
        break;
      }

      v10 -= v11;
      if (v10)
      {
        v8 += v11;
        if (v8 < a3)
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:v9 userInfo:0];
    v12 = v13 != 0;
    if (a4 && v13)
    {
      v13 = v13;
      *a4 = v13;
      v12 = 1;
    }
  }

  else
  {
LABEL_7:
    v12 = 0;
    v13 = 0;
  }

  return !v12;
}

uint64_t sub_26585BFC0()
{
  v0 = sub_265864DE0();
  __swift_allocate_value_buffer(v0, qword_280027FE8);
  __swift_project_value_buffer(v0, qword_280027FE8);
  return sub_265864DD0();
}

void sub_26585C13C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_26585C288@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2658622C8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_265800D10(v4);
}

uint64_t sub_26585C328(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_265862290;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_meDeviceUpdateCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_265800D10(v3);
  return sub_265800D20(v8);
}

uint64_t sub_26585C54C(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_26585C5B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_26585C6E8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_26585C74C@<X0>(void *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_shareMyLocationUpdateCallback);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_265862264;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_265800D10(v4);
}

uint64_t sub_26585C7EC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26586222C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_shareMyLocationUpdateCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_265800D10(v3);
  return sub_265800D20(v8);
}

uint64_t sub_26585C918()
{
  v0 = sub_265864DE0();
  __swift_allocate_value_buffer(v0, qword_280028000);
  v1 = __swift_project_value_buffer(v0, qword_280028000);
  if (qword_280027A40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280027FE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_26585C9E0()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027A60, &qword_26586A038) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027A68, &qword_26586A040);
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v1[7] = *(v4 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26585CB04, 0, 0);
}

uint64_t sub_26585CB04()
{
  v0[10] = *(v0[2] + OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_session);
  v1 = *(MEMORY[0x277D09448] + 4);

  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_26585CBBC;
  v3 = v0[9];

  return MEMORY[0x28215FB78](v3);
}

uint64_t sub_26585CBBC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_26585CEFC;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_26585CCD8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26585CCD8()
{
  v1 = v0[2];
  v21 = OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_preferenceChangesTask;
  v2 = v1;
  if (*&v1[OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_preferenceChangesTask])
  {
    v3 = *&v1[OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_preferenceChangesTask];

    sub_265864E80();

    v2 = v0[2];
  }

  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v19 = v5;
  v20 = v0[3];
  v10 = sub_265864E50();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  (*(v7 + 16))(v4, v5, v9);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = (v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v7 + 32))(v13 + v11, v4, v9);
  *(v13 + v12) = v2;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v14 = v2;
  v15 = sub_26585DF34(0, 0, v8, &unk_26586A050, v13);
  (*(v7 + 8))(v19, v9);
  v16 = *&v1[v21];
  *&v1[v21] = v15;

  v17 = v0[1];

  return v17();
}

uint64_t sub_26585CEFC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];

  v5 = v0[1];
  v6 = v0[12];

  return v5();
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

uint64_t sub_26585CFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_265864D60();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027AB0, &qword_26586A1B0);
  v5[16] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v11 = sub_265864D20();
  v5[21] = v11;
  v12 = *(v11 - 8);
  v5[22] = v12;
  v13 = *(v12 + 64) + 15;
  v5[23] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027AB8, &qword_26586A1B8) - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027AC0, &unk_26586A1C0);
  v5[25] = v15;
  v16 = *(v15 - 8);
  v5[26] = v16;
  v17 = *(v16 + 64) + 15;
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26585D1F8, 0, 0);
}

uint64_t sub_26585D1F8()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027A68, &qword_26586A040);
  sub_265864E60();
  v4 = OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_meDeviceUpdateCallback;
  *(v0 + 224) = OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_shareMyLocationUpdateCallback;
  *(v0 + 232) = v4;
  swift_beginAccess();
  swift_beginAccess();
  v5 = *MEMORY[0x277D09178];
  *(v0 + 248) = *MEMORY[0x277D091A0];
  *(v0 + 252) = v5;
  v6 = MEMORY[0x277D09180];
  *(v0 + 256) = *MEMORY[0x277D09198];
  *(v0 + 260) = *v6;
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  *(v0 + 240) = v8;
  *v8 = v0;
  v8[1] = sub_26585D340;
  v9 = *(v0 + 216);
  v10 = *(v0 + 192);
  v11 = *(v0 + 200);

  return MEMORY[0x2822003E8](v10, 0, 0, v11);
}

uint64_t sub_26585D340()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26585D43C, 0, 0);
}

uint64_t sub_26585D43C()
{
  v98 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    if (qword_280027A48 != -1)
    {
      swift_once();
    }

    v4 = sub_265864DE0();
    __swift_project_value_buffer(v4, qword_280028000);
    v5 = sub_265864DC0();
    v6 = sub_265864EA0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2657FE000, v5, v6, "Successfully startMonitoringPreferencesChange", v7, 2u);
      MEMORY[0x266761A50](v7, -1, -1);
    }

    v8 = *(v0 + 216);
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v14 = *(v0 + 136);
    v13 = *(v0 + 144);
    v15 = *(v0 + 120);
    v96 = *(v0 + 112);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 248);
    v19 = *(v0 + 184);
    (*(v3 + 32))(v19, v1, v2);
    v20 = (*(v3 + 88))(v19, v2);
    if (v20 == v18)
    {
      v21 = *(v0 + 184);
      v22 = *(v0 + 160);
      (*(*(v0 + 176) + 96))(v21, *(v0 + 168));
      sub_265862470(v21, v22);
      if (qword_280027A48 != -1)
      {
        swift_once();
      }

      v23 = *(v0 + 152);
      v24 = *(v0 + 160);
      v25 = sub_265864DE0();
      __swift_project_value_buffer(v25, qword_280028000);
      sub_2658624E0(v24, v23, &qword_280027AB0, &qword_26586A1B0);
      v26 = sub_265864DC0();
      v27 = sub_265864EA0();
      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 152);
      if (v28)
      {
        v30 = *(v0 + 144);
        v31 = *(v0 + 128);
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v97 = v33;
        *v32 = 136315138;
        sub_2658624E0(v29, v30, &qword_280027AB0, &qword_26586A1B0);
        v34 = sub_265864E00();
        v36 = v35;
        sub_265862548(v29, &qword_280027AB0, &qword_26586A1B0);
        v37 = sub_265860F18(v34, v36, &v97);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_2657FE000, v26, v27, "Preferences stream receive meDevice updated: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x266761A50](v33, -1, -1);
        MEMORY[0x266761A50](v32, -1, -1);
      }

      else
      {

        sub_265862548(v29, &qword_280027AB0, &qword_26586A1B0);
      }

      v51 = *(v0 + 136);
      v52 = *(v0 + 96);
      v53 = *(v0 + 104);
      sub_2658624E0(*(v0 + 160), v51, &qword_280027AB0, &qword_26586A1B0);
      v54 = (*(v53 + 48))(v51, 1, v52);
      v55 = *(v0 + 232);
      v56 = *(v0 + 136);
      if (v54 == 1)
      {
        v57 = *(v0 + 88);
        sub_265862548(*(v0 + 136), &qword_280027AB0, &qword_26586A1B0);
        v58 = *(v57 + v55);
        if (v58)
        {
          v59 = *(*(v0 + 88) + *(v0 + 232) + 8);

          v58(0);
          sub_265800D20(v58);
        }

        v60 = *(v0 + 160);
      }

      else
      {
        v66 = *(v0 + 88);
        (*(*(v0 + 104) + 32))(*(v0 + 120), *(v0 + 136), *(v0 + 96));
        v67 = *(v66 + v55);
        if (v67)
        {
          v68 = *(v0 + 112);
          v69 = *(v0 + 96);
          v70 = *(v0 + 104);
          v71 = *(*(v0 + 88) + *(v0 + 232) + 8);
          (*(v70 + 16))(v68, *(v0 + 120), v69);
          v72 = type metadata accessor for PUIFMLDevice();
          v73 = objc_allocWithZone(v72);

          v74 = sub_265864D50();
          v75 = &v73[OBJC_IVAR____TtC17PrivacySettingsUI12PUIFMLDevice_identifier];
          *v75 = v74;
          v75[1] = v76;
          v77 = sub_265864D40();
          v78 = &v73[OBJC_IVAR____TtC17PrivacySettingsUI12PUIFMLDevice_deviceName];
          *v78 = v77;
          v78[1] = v79;
          v73[OBJC_IVAR____TtC17PrivacySettingsUI12PUIFMLDevice_isThisDevice] = sub_265864D30() & 1;
          *(v0 + 64) = v73;
          *(v0 + 72) = v72;
          v80 = objc_msgSendSuper2((v0 + 64), sel_init);
          v81 = *(v70 + 8);
          v81(v68, v69);
          v67(v80);

          sub_265800D20(v67);
          v82 = *(v0 + 104);
        }

        else
        {
          v81 = *(*(v0 + 104) + 8);
        }

        v90 = *(v0 + 160);
        v81(*(v0 + 120), *(v0 + 96));
        v60 = v90;
      }

      sub_265862548(v60, &qword_280027AB0, &qword_26586A1B0);
    }

    else if (v20 == *(v0 + 252))
    {
      v38 = *(v0 + 184);
      (*(*(v0 + 176) + 96))(v38, *(v0 + 168));
      v39 = *v38;
      if (qword_280027A48 != -1)
      {
        swift_once();
      }

      v40 = sub_265864DE0();
      __swift_project_value_buffer(v40, qword_280028000);
      v41 = sub_265864DC0();
      v42 = sub_265864EA0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v97 = v44;
        *v43 = 136315138;
        if (v39)
        {
          v45 = 1702195828;
        }

        else
        {
          v45 = 0x65736C6166;
        }

        if (v39)
        {
          v46 = 0xE400000000000000;
        }

        else
        {
          v46 = 0xE500000000000000;
        }

        v47 = sub_265860F18(v45, v46, &v97);

        *(v43 + 4) = v47;
        _os_log_impl(&dword_2657FE000, v41, v42, "Preferences stream receive Share My Location switch update. Enabled?: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x266761A50](v44, -1, -1);
        MEMORY[0x266761A50](v43, -1, -1);
      }

      v48 = *(v0 + 88) + *(v0 + 224);
      v49 = *v48;
      if (*v48)
      {
        v50 = *(v48 + 8);

        v49(v39);
        sub_265800D20(v49);
      }
    }

    else if (v20 == *(v0 + 256) || v20 == *(v0 + 260))
    {
      if (qword_280027A48 != -1)
      {
        swift_once();
      }

      v62 = sub_265864DE0();
      __swift_project_value_buffer(v62, qword_280028000);
      v63 = sub_265864DC0();
      v64 = sub_265864EA0();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_2657FE000, v63, v64, "Preferences stream, update received but meDevice did not change", v65, 2u);
        MEMORY[0x266761A50](v65, -1, -1);
      }
    }

    else
    {
      if (qword_280027A48 != -1)
      {
        swift_once();
      }

      v83 = sub_265864DE0();
      __swift_project_value_buffer(v83, qword_280028000);
      v84 = sub_265864DC0();
      v85 = sub_265864E90();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_2657FE000, v84, v85, "Unknown update type, meDevice did not change", v86, 2u);
        MEMORY[0x266761A50](v86, -1, -1);
      }

      v88 = *(v0 + 176);
      v87 = *(v0 + 184);
      v89 = *(v0 + 168);

      (*(v88 + 8))(v87, v89);
    }

    v91 = *(MEMORY[0x277D85798] + 4);
    v92 = swift_task_alloc();
    *(v0 + 240) = v92;
    *v92 = v0;
    v92[1] = sub_26585D340;
    v93 = *(v0 + 216);
    v94 = *(v0 + 192);
    v95 = *(v0 + 200);

    return MEMORY[0x2822003E8](v94, 0, 0, v95);
  }
}

uint64_t sub_26585DDEC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027A68, &qword_26586A040) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2658625AC;

  return sub_26585CFD0(a1, v8, v9, v1 + v6, v10);
}

uint64_t sub_26585DF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027A60, &qword_26586A038) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_2658624E0(a3, v26 - v10, &qword_280027A60, &qword_26586A038);
  v12 = sub_265864E50();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_265862548(v11, &qword_280027A60, &qword_26586A038);
  }

  else
  {
    sub_265864E40();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_265864E30();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_265864E10() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_265862548(a3, &qword_280027A60, &qword_26586A038);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_265862548(a3, &qword_280027A60, &qword_26586A038);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_26585E3A8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_26585E450;

  return sub_26585C9E0();
}

uint64_t sub_26585E450()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_265864CD0();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_26585E5F4()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_preferenceChangesTask;
  if (*(v1 + OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_preferenceChangesTask))
  {
    v3 = *(v1 + OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_preferenceChangesTask);

    sub_265864E80();

    v4 = *(v1 + v2);
  }

  *(v1 + v2) = 0;

  if (qword_280027A48 != -1)
  {
    swift_once();
  }

  v5 = sub_265864DE0();
  __swift_project_value_buffer(v5, qword_280028000);
  v6 = sub_265864DC0();
  v7 = sub_265864EA0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2657FE000, v6, v7, "FindMyLocateSession: Successfully stopMonitoringPreferencesChange", v8, 2u);
    MEMORY[0x266761A50](v8, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26585E910(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2658625BC;

  return sub_26585E5D4();
}

uint64_t sub_26585E9B8()
{
  v1[7] = v0;
  v2 = sub_265864D10();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = sub_265864D60();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26585EB04, 0, 0);
}

uint64_t sub_26585EB04()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_session;
  v0[18] = OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_session;
  v0[19] = *(v1 + v2);
  v3 = *(MEMORY[0x277D09410] + 4);

  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_26585EBC4;
  v5 = v0[17];

  return MEMORY[0x28215FB40](v5, 1);
}

uint64_t sub_26585EBC4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_26585EFFC;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_26585ECE0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26585ECE0()
{
  v44 = v0;
  if (qword_280027A48 != -1)
  {
    swift_once();
  }

  receiver = v0[8].receiver;
  super_class = v0[8].super_class;
  v3 = v0[5].super_class;
  v4 = v0[6].receiver;
  v5 = sub_265864DE0();
  __swift_project_value_buffer(v5, qword_280028000);
  v6 = v4[2];
  v6(receiver, super_class, v3);
  v7 = sub_265864DC0();
  v8 = sub_265864EA0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8].receiver;
  v11 = v0[5].super_class;
  v12 = v0[6].receiver;
  if (v9)
  {
    v13 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v13 = 136315138;
    sub_2658614C0();
    v40 = sub_265864ED0();
    v42 = v6;
    v15 = v14;
    v16 = v11;
    v17 = v12[1];
    v17(v10, v16);
    v18 = sub_265860F18(v40, v15, &v43);
    v6 = v42;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2657FE000, v7, v8, "Successfully got active location sharing device: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x266761A50](v41, -1, -1);
    MEMORY[0x266761A50](v13, -1, -1);
  }

  else
  {

    v19 = v11;
    v17 = v12[1];
    v17(v10, v19);
  }

  v20 = v0[8].super_class;
  v21 = v0[7].super_class;
  v22 = v0[5].super_class;
  v6(v21, v20, v22);
  v23 = type metadata accessor for PUIFMLDevice();
  v24 = objc_allocWithZone(v23);
  v25 = sub_265864D50();
  v26 = &v24[OBJC_IVAR____TtC17PrivacySettingsUI12PUIFMLDevice_identifier];
  *v26 = v25;
  v26[1] = v27;
  v28 = sub_265864D40();
  v29 = &v24[OBJC_IVAR____TtC17PrivacySettingsUI12PUIFMLDevice_deviceName];
  *v29 = v28;
  v29[1] = v30;
  v24[OBJC_IVAR____TtC17PrivacySettingsUI12PUIFMLDevice_isThisDevice] = sub_265864D30() & 1;
  v0[2].receiver = v24;
  v0[2].super_class = v23;
  v31 = objc_msgSendSuper2(v0 + 2, sel_init);
  v17(v21, v22);
  v17(v20, v22);
  v33 = v0[8].receiver;
  v32 = v0[8].super_class;
  v35 = v0[7].receiver;
  v34 = v0[7].super_class;
  v36 = v0[6].super_class;
  v37 = v0[5].receiver;

  v38 = v0->super_class;

  return v38(v31);
}

uint64_t sub_26585EFFC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);

  *(v0 + 48) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027A80, &qword_26586A068);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 72) + 88))(*(v0 + 80), *(v0 + 64)) == *MEMORY[0x277D090B0])
    {

      if (qword_280027A48 != -1)
      {
        swift_once();
      }

      v6 = sub_265864DE0();
      *(v0 + 176) = __swift_project_value_buffer(v6, qword_280028000);
      v7 = sub_265864DC0();
      v8 = sub_265864EA0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_2657FE000, v7, v8, "Error getting cached location sharing device, trying not cached.", v9, 2u);
        MEMORY[0x266761A50](v9, -1, -1);
      }

      v10 = *(v0 + 144);
      v11 = *(v0 + 56);

      *(v0 + 184) = *(v11 + v10);
      v12 = *(MEMORY[0x277D09410] + 4);

      v13 = swift_task_alloc();
      *(v0 + 192) = v13;
      *v13 = v0;
      v13[1] = sub_26585F3CC;
      v14 = *(v0 + 112);

      return MEMORY[0x28215FB40](v14, 0);
    }

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  }

  if (qword_280027A48 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 168);
  v16 = sub_265864DE0();
  __swift_project_value_buffer(v16, qword_280028000);
  v17 = v15;
  v18 = sub_265864DC0();
  v19 = sub_265864E90();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 168);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138543362;
    v23 = sub_265864CD0();
    *(v21 + 4) = v23;
    *v22 = v23;
    _os_log_impl(&dword_2657FE000, v18, v19, "Error getting active location sharing device: %{public}@", v21, 0xCu);
    sub_265862548(v22, &qword_280027A88, &qword_26586A070);
    MEMORY[0x266761A50](v22, -1, -1);
    MEMORY[0x266761A50](v21, -1, -1);
  }

  v24 = *(v0 + 168);

  swift_willThrow();
  v25 = *(v0 + 168);
  v27 = *(v0 + 128);
  v26 = *(v0 + 136);
  v29 = *(v0 + 112);
  v28 = *(v0 + 120);
  v30 = *(v0 + 104);
  v31 = *(v0 + 80);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_26585F3CC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 184);

  if (v0)
  {
    v6 = sub_26585F7CC;
  }

  else
  {
    v6 = sub_26585F500;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26585F500()
{
  v41 = v0;
  receiver = v0[11].receiver;
  v2 = *(v0[6].receiver + 2);
  v2(v0[6].super_class, v0[7].receiver, v0[5].super_class);
  v3 = sub_265864DC0();
  v4 = sub_265864EA0();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[6].receiver;
  super_class = v0[6].super_class;
  v8 = v0[5].super_class;
  if (v5)
  {
    v39 = v2;
    v9 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v9 = 136315138;
    sub_2658614C0();
    v37 = sub_265864ED0();
    v11 = v10;
    v12 = v8;
    v13 = v7[1];
    v13(super_class, v12);
    v14 = sub_265860F18(v37, v11, &v40);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2657FE000, v3, v4, "Successfully got non-cached active location sharing device: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x266761A50](v38, -1, -1);
    v15 = v9;
    v2 = v39;
    MEMORY[0x266761A50](v15, -1, -1);
  }

  else
  {

    v16 = v8;
    v13 = v7[1];
    v13(super_class, v16);
  }

  v17 = v0[7].receiver;
  v18 = v0[7].super_class;
  v19 = v0[5].super_class;
  v2(v18, v17, v19);
  v20 = type metadata accessor for PUIFMLDevice();
  v21 = objc_allocWithZone(v20);
  v22 = sub_265864D50();
  v23 = &v21[OBJC_IVAR____TtC17PrivacySettingsUI12PUIFMLDevice_identifier];
  *v23 = v22;
  v23[1] = v24;
  v25 = sub_265864D40();
  v26 = &v21[OBJC_IVAR____TtC17PrivacySettingsUI12PUIFMLDevice_deviceName];
  *v26 = v25;
  v26[1] = v27;
  v21[OBJC_IVAR____TtC17PrivacySettingsUI12PUIFMLDevice_isThisDevice] = sub_265864D30() & 1;
  v0[1].receiver = v21;
  v0[1].super_class = v20;
  v28 = objc_msgSendSuper2(v0 + 1, sel_init);
  v13(v18, v19);
  v13(v17, v19);

  v30 = v0[8].receiver;
  v29 = v0[8].super_class;
  v32 = v0[7].receiver;
  v31 = v0[7].super_class;
  v33 = v0[6].super_class;
  v34 = v0[5].receiver;

  v35 = v0->super_class;

  return v35(v28);
}

uint64_t sub_26585F7CC()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  v7 = *(v0 + 80);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26585F9F0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_26585FA98;

  return sub_26585E9B8();
}

uint64_t sub_26585FA98(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_265864CD0();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_26585FC58()
{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_session);
  v1 = *(MEMORY[0x277D09340] + 4);

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_26585FD0C;

  return MEMORY[0x28215FA50](1);
}

uint64_t sub_26585FD0C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26585FE64, 0, 0);
  }

  else
  {
    v7 = *(v4 + 24);

    v8 = *(v6 + 8);

    return v8(a1 & 1);
  }
}

uint64_t sub_26585FE64()
{
  v1 = v0[3];

  if (qword_280027A48 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_265864DE0();
  __swift_project_value_buffer(v3, qword_280028000);
  v4 = v2;
  v5 = sub_265864DC0();
  v6 = sub_265864E90();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = sub_265864CD0();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_2657FE000, v5, v6, "Error getting active my location enabled setting: %{public}@", v8, 0xCu);
    sub_265862548(v9, &qword_280027A88, &qword_26586A070);
    MEMORY[0x266761A50](v9, -1, -1);
    MEMORY[0x266761A50](v8, -1, -1);
  }

  v11 = v0[5];

  swift_willThrow();
  v12 = v0[1];
  v13 = v0[5];

  return v12(0);
}

uint64_t sub_265860174(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_26586021C;

  return sub_26585FC38();
}

uint64_t sub_26586021C(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_265864CD0();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

id FindMyLocateSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FindMyLocateSession.init()()
{
  v1 = v0;
  v2 = sub_265864CE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_265864CF0() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = &v1[OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_meDeviceUpdateCallback];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v1[OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_shareMyLocationUpdateCallback];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_session;
  (*(v3 + 104))(v6, *MEMORY[0x277D09060], v2);
  sub_265864D00();
  v11 = sub_265864DA0();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v1[v10] = sub_265864DB0();
  v1[OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_isInitialized] = 0;
  *&v1[OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_initContinuations] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC17PrivacySettingsUI19FindMyLocateSession_preferenceChangesTask] = 0;
  Session = type metadata accessor for FindMyLocateSession();
  v16.receiver = v1;
  v16.super_class = Session;
  return objc_msgSendSuper2(&v16, sel_init);
}

id FindMyLocateSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FindMyLocateSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_265860670(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265860768;

  return v7(a1);
}

uint64_t sub_265860768()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_265860860(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2658625AC;

  return v7();
}

uint64_t sub_265860948(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_265860A30;

  return v8();
}

uint64_t sub_265860A30()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_265860B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027A60, &qword_26586A038) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_2658624E0(a3, v24 - v10, &qword_280027A60, &qword_26586A038);
  v12 = sub_265864E50();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_265862548(v11, &qword_280027A60, &qword_26586A038);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_265864E40();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_265864E30();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_265864E10() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_265862548(a3, &qword_280027A60, &qword_26586A038);

    return v22;
  }

LABEL_8:
  sub_265862548(a3, &qword_280027A60, &qword_26586A038);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_265860E20(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2658625B0;

  return v7(a1);
}

uint64_t sub_265860F18(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_265860FE4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2658622F4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_265860FE4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2658610F0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_265864EC0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2658610F0(uint64_t a1, unint64_t a2)
{
  v4 = sub_26586113C(a1, a2);
  sub_26586126C(&unk_28771DD10);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26586113C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_265861358(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_265864EC0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_265864E20();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_265861358(v10, 0);
        result = sub_265864EB0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26586126C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2658613CC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_265861358(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027AA8, &qword_26586A190);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2658613CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027AA8, &qword_26586A190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2658614C0()
{
  result = qword_280027A90;
  if (!qword_280027A90)
  {
    sub_265864D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280027A90);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t dispatch thunk of FindMyLocateSession.startMonitoringPrefrenceChanges()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x110);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_265860A30;

  return v6();
}

uint64_t dispatch thunk of FindMyLocateSession.stopMonitoringPreferenceChanges()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x118);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2658625AC;

  return v6();
}

uint64_t dispatch thunk of FindMyLocateSession.getActiveLocationSharingDevice()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_265861A50;

  return v6();
}

uint64_t sub_265861A50(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of FindMyLocateSession.isMyLocationEnabled()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_265861A50;

  return v6();
}

uint64_t sub_265861C74()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_265860A30;

  return sub_265860174(v2, v3);
}

uint64_t sub_265861D20()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2658625AC;

  return sub_265860860(v2, v3, v5);
}

uint64_t sub_265861DE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2658625AC;

  return sub_265860948(a1, v4, v5, v7);
}

uint64_t sub_265861EAC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2658625AC;

  return sub_265860E20(a1, v5);
}

uint64_t sub_265861F64()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2658625AC;

  return sub_26585F9F0(v2, v3);
}

uint64_t sub_265862010()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2658625AC;

  return sub_26585E910(v2, v3);
}

uint64_t objectdestroy_27Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2658620FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2658625AC;

  return sub_26585E3A8(v2, v3);
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26586222C(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_265862264(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_265862290(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_2658622C8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_2658622F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_2658623B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2658625AC;

  return sub_265860670(a1, v5);
}

uint64_t sub_265862470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280027AB0, &qword_26586A1B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2658624E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_265862548(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t PUIFMLDevice.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17PrivacySettingsUI12PUIFMLDevice_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC17PrivacySettingsUI12PUIFMLDevice_identifier + 8);

  return v1;
}

uint64_t PUIFMLDevice.deviceName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17PrivacySettingsUI12PUIFMLDevice_deviceName);
  v2 = *(v0 + OBJC_IVAR____TtC17PrivacySettingsUI12PUIFMLDevice_deviceName + 8);

  return v1;
}

id PUIFMLDevice.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PUIFMLDevice.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_aks_client_connection()
{
  if (get_aks_client_dispatch_queue_onceToken != -1)
  {
    get_aks_client_connection_cold_1();
  }

  dispatch_sync(get_aks_client_dispatch_queue_connection_queue, &__block_literal_global_153);
  return get_aks_client_connection_connection;
}

void __get_aks_client_connection_block_invoke()
{
  if (!get_aks_client_connection_connection)
  {
    get_aks_client_connection_connection = _copy_aks_client_connection("IOService:/IOResources/AppleKeyStore", "AppleKeyStore");
  }
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

uint64_t OUTLINED_FUNCTION_18(mach_port_t a1, uint32_t a2, const uint64_t *a3, uint32_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, size_t *a10)
{

  return IOConnectCallMethod(a1, a2, a3, a4, v11, v10, 0, 0, a9, a10);
}

uint64_t OUTLINED_FUNCTION_37(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t OUTLINED_FUNCTION_52(void *a1)
{

  return memset_s(a1, 0x4000uLL, 0, 0x4000uLL);
}

void __PUITribecaSupportedText_block_invoke_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "PUITribecaSupportedText_block_invoke";
  _os_log_error_impl(&dword_2657FE000, log, OS_LOG_TYPE_ERROR, "%s: didn't find tribeca text.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void PUIIsUserParcElisabethEligible_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_2657FE000, a2, OS_LOG_TYPE_ERROR, "PE: Cannot determine eligibility due to error: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void __PUICalendarAuthorizationStatesForService_block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_2657FE000, log, OS_LOG_TYPE_ERROR, "Error when requesting TCC for service: %@ error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __PUIContactsAuthorizationStatesForService_block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 56);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2657FE000, v2, v3, "Error when requesting TCC for service: %@ error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __PUIPhotosAuthorizationStatesForService_block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 64);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_2657FE000, v2, v3, "Error when requesting TCC for service: %@ error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void aks_bak_get_beacon_internal()
{
  OUTLINED_FUNCTION_74();
  MEMORY[0x28223BE20]();
  v2 = v1;
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v27 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  bzero(v24, 0x4000uLL);
  v22 = 0x4000;
  v23[0] = 1;
  v23[1] = v4;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (!OUTLINED_FUNCTION_18(aks_client_connection, 0x87u, v23, 2u, v6, v7, v8, v9, v24, &v22))
    {
      __memcpy_chk();
      *v2 = 44;
      v10 = calloc(0x2CuLL, 1uLL);
      *v0 = v10;
      if (v10)
      {
        v11 = *v2;
        __memcpy_chk();
      }

      else
      {
        OUTLINED_FUNCTION_17();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_32();
    v13 = *MEMORY[0x277D85E08];
    OUTLINED_FUNCTION_0_3();
    fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v15, v16, v17, v18, v19, v20, v21, ":", 3883, "", "");
  }

  OUTLINED_FUNCTION_52(v24);
  v12 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_73();
}

uint64_t aks_bak_get_beacon()
{
  OUTLINED_FUNCTION_46();
  v4 = *MEMORY[0x277D85DE8];
  aks_bak_get_beacon_internal();
  if (v0)
  {
    v3 = v0;
  }

  else
  {
    v3 = 3758604312;
  }

  v1 = *MEMORY[0x277D85DE8];
  return v3;
}