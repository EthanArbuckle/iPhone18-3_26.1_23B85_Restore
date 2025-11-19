uint64_t sub_21CF23B58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CF23B98()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE44AC8, &qword_21CF58D70);
  sub_21CF53294(&qword_27CE44AE0, &qword_27CE44AC8, &qword_21CF58D70);
  return swift_getOpaqueTypeConformance2();
}

uint64_t _shouldShowAccessoryInfo(void *a1)
{
  v1 = a1;
  if ([v1 shouldBeHiddenFromUI])
  {
    goto LABEL_9;
  }

  v2 = [v1 bonjourName];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 isAvailableOverBonjour];

    if (!v4)
    {
      goto LABEL_9;
    }
  }

  v5 = [v1 bonjourName];
  if (!v5)
  {
    if ([v1 isConnected])
    {
      goto LABEL_7;
    }

LABEL_9:
    v7 = 0;
    goto LABEL_27;
  }

LABEL_7:
  v6 = [v1 manufacturer];
  if ([v6 length])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v1 serialNumber];
    if ([v8 length])
    {
      v7 = 1;
    }

    else
    {
      v9 = [v1 modelNumber];
      if ([v9 length])
      {
        v7 = 1;
      }

      else
      {
        v10 = [v1 firmwareRevision];
        if ([v10 length])
        {
          v7 = 1;
        }

        else
        {
          v11 = [v1 hardwareRevision];
          if ([v11 length])
          {
            v7 = 1;
          }

          else
          {
            v12 = [v1 bonjourName];
            if ([v12 length])
            {
              v7 = 1;
            }

            else
            {
              v7 = [v1 supportsPublicIap];
            }
          }
        }
      }
    }
  }

LABEL_27:
  return v7;
}

void sub_21CF2ED94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PSGIsDeviceNameSettable()
{
  if ([MEMORY[0x277D75128] isRunningInStoreDemoMode])
  {
    return 0;
  }

  v1 = [MEMORY[0x277D262A0] sharedConnection];
  v2 = [v1 isDeviceNameModificationAllowed];

  return v2;
}

void sub_21CF334E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21CF33AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21CF33C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFMDFMIPManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!FindMyDeviceLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __FindMyDeviceLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278325328;
    v7 = 0;
    FindMyDeviceLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (FindMyDeviceLibraryCore_frameworkLibrary)
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
  result = objc_getClass("FMDFMIPManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFMDFMIPManagerClass_block_invoke_cold_1();
  }

  getFMDFMIPManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __FindMyDeviceLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FindMyDeviceLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SensorKitLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!SensorKitLibraryCore_frameworkLibrary)
  {
    SensorKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = SensorKitLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SensorKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SensorKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getSRResetAllAuthorizationsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SensorKitLibrary();
  result = dlsym(v2, "SRResetAllAuthorizations");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSRResetAllAuthorizationsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SensorKitLibrary()
{
  v0 = SensorKitLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

Class __getSRAuthorizationClientClass_block_invoke(uint64_t a1)
{
  SensorKitLibrary();
  result = objc_getClass("SRAuthorizationClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSRAuthorizationClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSRAuthorizationClientClass_block_invoke_cold_1();
    return __getCHResetInventorySymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getCHResetInventorySymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreHandwritingLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreHandwritingLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278325378;
    v8 = 0;
    CoreHandwritingLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = CoreHandwritingLibraryCore_frameworkLibrary;
    if (CoreHandwritingLibraryCore_frameworkLibrary)
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

  v2 = CoreHandwritingLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "CHResetInventory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCHResetInventorySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreHandwritingLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreHandwritingLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getDDRResetOptionsClass_block_invoke(uint64_t a1)
{
  EmbeddedDataResetLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DDRResetOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDRResetOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getDDRResetOptionsClass_block_invoke_cold_1();
    EmbeddedDataResetLibrary();
  }
}

void EmbeddedDataResetLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!EmbeddedDataResetLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __EmbeddedDataResetLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278325390;
    v4 = 0;
    EmbeddedDataResetLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!EmbeddedDataResetLibraryCore_frameworkLibrary)
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

uint64_t __EmbeddedDataResetLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  EmbeddedDataResetLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getMBManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MobileBackupLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MobileBackupLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2783253A8;
    v7 = 0;
    MobileBackupLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (MobileBackupLibraryCore_frameworkLibrary)
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
  result = objc_getClass("MBManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMBManagerClass_block_invoke_cold_1();
  }

  getMBManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MobileBackupLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileBackupLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getDDRResetRequestClass_block_invoke(uint64_t a1)
{
  EmbeddedDataResetLibrary();
  result = objc_getClass("DDRResetRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDRResetRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getDDRResetRequestClass_block_invoke_cold_1();
    return __getDDRResetServiceClass_block_invoke(v3);
  }

  return result;
}

void __getDDRResetServiceClass_block_invoke(uint64_t a1)
{
  EmbeddedDataResetLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DDRResetService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDRResetServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getDDRResetServiceClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0_0();
  }
}

void sub_21CF37AD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_21CF39554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a10)
  {
    (*(a10 + 16))();
  }

  if (a11)
  {
    (*(a11 + 16))(a11);
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_21CF4208C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21CF4251C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21CF43178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21CF43690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBFFStyleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBFFStyleClass_softClass;
  v7 = getBFFStyleClass_softClass;
  if (!getBFFStyleClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBFFStyleClass_block_invoke;
    v3[3] = &unk_278325308;
    v3[4] = &v4;
    __getBFFStyleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21CF43770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBFFStyleClass_block_invoke(uint64_t a1)
{
  SetupAssistantUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BFFStyle");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBFFStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBFFStyleClass_block_invoke_cold_1();
    SetupAssistantUILibrary();
  }
}

void SetupAssistantUILibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __SetupAssistantUILibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278325680;
    v4 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!SetupAssistantUILibraryCore_frameworkLibrary)
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

uint64_t __SetupAssistantUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getBFFPaneHeaderViewClass_block_invoke(uint64_t a1)
{
  SetupAssistantUILibrary();
  result = objc_getClass("BFFPaneHeaderView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBFFPaneHeaderViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBFFPaneHeaderViewClass_block_invoke_cold_1();
    return +[(PSGMousePointerController *)v3];
  }

  return result;
}

id PSG_LocalizedString(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:0];

  return v3;
}

id PSG_BundleForGeneralSettingsUIFramework()
{
  if (PSG_BundleForGeneralSettingsUIFramework_onceToken != -1)
  {
    PSG_BundleForGeneralSettingsUIFramework_cold_1();
  }

  v1 = PSG_BundleForGeneralSettingsUIFramework__generalSettingsUIFrameworkBundle;

  return v1;
}

id PSG_LocalizedStringForAbout(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"About"];

  return v3;
}

id PSG_LocalizedStringForBackupAlert(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"BackupAlert"];

  return v3;
}

id PSG_LocalizedStringForBackupInfo(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"BackupInfo"];

  return v3;
}

id PSG_LocalizedStringForContinuity(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Continuity"];

  return v3;
}

id PSG_LocalizedStringForGeneral(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"General"];

  return v3;
}

id PSG_LocalizedStringForHomeButton(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"HomeButton-sshb"];

  return v3;
}

id PSG_LocalizedStringForModelNames(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"ModelNames"];

  return v3;
}

id PSG_LocalizedStringForNFC(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Nfc"];

  return v3;
}

id PSG_LocalizedStringForPointers(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Pointers"];

  return v3;
}

id PSG_LocalizedStringForPointersHiding(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Pointers-R418-R428"];

  return v3;
}

id PSG_LocalizedStringForReset(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Reset"];

  return v3;
}

id PSG_LocalizedStringForMatter(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Matter"];

  return v3;
}

id PSG_LocalizedStringForWombat(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Wombat"];

  return v3;
}

id PSG_LocalizedStringForLOTX(void *a1)
{
  v1 = a1;
  v2 = PSG_BundleForGeneralSettingsUIFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"LOTX"];

  return v3;
}

id _PSGLoggingFacility()
{
  if (_PSGLoggingFacility_onceToken != -1)
  {
    _PSGLoggingFacility_cold_1();
  }

  v1 = _PSGLoggingFacility_oslog;

  return v1;
}

id _PSGSignpostLoggingFacility()
{
  if (_PSGSignpostLoggingFacility_onceToken != -1)
  {
    _PSGSignpostLoggingFacility_cold_1();
  }

  v1 = _PSGSignpostLoggingFacility_oslog;

  return v1;
}

uint64_t __PSGGreenTeaLoggerForAppListing_block_invoke()
{
  result = ct_green_tea_logger_create();
  PSGGreenTeaLoggerForAppListing_appListLogger = result;
  return result;
}

uint64_t __PSGGreenTeaLoggerForIMEI_block_invoke()
{
  result = ct_green_tea_logger_create();
  PSGGreenTeaLoggerForIMEI_psgIMEILogger = result;
  return result;
}

uint64_t __PSGGreenTeaLoggerForWLANHardwareAddress_block_invoke()
{
  result = ct_green_tea_logger_create();
  PSGGreenTeaLoggerForWLANHardwareAddress_psgWLANLogger = result;
  return result;
}

uint64_t __PSGGreenTeaLoggerForBluetoothHardwareAddress_block_invoke()
{
  result = ct_green_tea_logger_create();
  PSGGreenTeaLoggerForBluetoothHardwareAddress_psgBluetoothLogger = result;
  return result;
}

void PSGGreenTeaAppListLog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a1;
  if (PSGGreenTeaLoggerForAppListing_onceToken != -1)
  {
    PSGGreenTeaAppListLog_cold_1();
  }

  if (PSGGreenTeaLoggerForAppListing_appListLogger)
  {
    v10 = getCTGreenTeaOsLogHandle();
    v11 = v10;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x277CCA8D8] mainBundle];
      v13 = [v12 bundleIdentifier];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v9 arguments:&a9];
      *buf = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_21CF20000, v11, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void PSGGreenTeaIMEILog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a1;
  if (PSGGreenTeaLoggerForIMEI_onceToken != -1)
  {
    PSGGreenTeaIMEILog_cold_1();
  }

  if (PSGGreenTeaLoggerForIMEI_psgIMEILogger)
  {
    v10 = getCTGreenTeaOsLogHandle();
    v11 = v10;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x277CCA8D8] mainBundle];
      v13 = [v12 bundleIdentifier];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v9 arguments:&a9];
      *buf = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_21CF20000, v11, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void PSGGreenTeaWLANHardwareAddressLog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a1;
  if (PSGGreenTeaLoggerForWLANHardwareAddress_onceToken != -1)
  {
    PSGGreenTeaWLANHardwareAddressLog_cold_1();
  }

  if (PSGGreenTeaLoggerForWLANHardwareAddress_psgWLANLogger)
  {
    v10 = getCTGreenTeaOsLogHandle();
    v11 = v10;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x277CCA8D8] mainBundle];
      v13 = [v12 bundleIdentifier];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v9 arguments:&a9];
      *buf = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_21CF20000, v11, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void PSGGreenTeaBluetoothHardwareAddressLog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a1;
  if (PSGGreenTeaLoggerForBluetoothHardwareAddress_onceToken != -1)
  {
    PSGGreenTeaBluetoothHardwareAddressLog_cold_1();
  }

  if (PSGGreenTeaLoggerForBluetoothHardwareAddress_psgBluetoothLogger)
  {
    v10 = getCTGreenTeaOsLogHandle();
    v11 = v10;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x277CCA8D8] mainBundle];
      v13 = [v12 bundleIdentifier];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v9 arguments:&a9];
      *buf = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_21CF20000, v11, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_21CF49B10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21CF4D600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21CF4D874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21CF4DEB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

Class __getCRCarPlayPreferencesClass_block_invoke(uint64_t a1)
{
  CarKitLibrary();
  result = objc_getClass("CRCarPlayPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCRCarPlayPreferencesClass_block_invoke_cold_1();
  }

  getCRCarPlayPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CarKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CarKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278325A00;
    v4 = 0;
    CarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!CarKitLibraryCore_frameworkLibrary)
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

uint64_t __CarKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getBFFStyleClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SetupAssistantUILibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278325A18;
    v7 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (SetupAssistantUILibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBFFStyleClass_block_invoke_cold_1();
  }

  getBFFStyleClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SetupAssistantUILibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCRPairedVehicleManagerClass_block_invoke(uint64_t a1)
{
  CarKitLibrary();
  result = objc_getClass("CRPairedVehicleManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCRPairedVehicleManagerClass_block_invoke_cold_1();
  }

  getCRPairedVehicleManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t getEnumTagSinglePayload for SoftwareUpdateFeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SoftwareUpdateFeatureFlags(_WORD *result, int a2, int a3)
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

unint64_t sub_21CF4F900()
{
  result = qword_27CE44AB8;
  if (!qword_27CE44AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE44AB8);
  }

  return result;
}

uint64_t sub_21CF4F95C()
{
  sub_21CF557C4();
  MEMORY[0x223D384A0](0);
  return sub_21CF557E4();
}

uint64_t sub_21CF4F9C8()
{
  sub_21CF557C4();
  MEMORY[0x223D384A0](0);
  return sub_21CF557E4();
}

Swift::Void __swiftcall UIViewController.psg_popViewController(animated:)(Swift::Bool animated)
{
  v2 = v1;
  v4 = sub_21CF555A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 traitCollection];
  sub_21CF556B4();

  LOBYTE(v9) = sub_21CF55574();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if (v9)
  {
    v11 = [v2 traitCollection];
    sub_21CF556B4();

    LOBYTE(v11) = sub_21CF55594();
    v10(v8, v4);
    if ((v11 & 1) == 0)
    {
      v12 = [v2 traitCollection];
      sub_21CF556B4();

      sub_21CF55584();
      v10(v8, v4);
    }
  }

  else
  {
    v13 = [v2 navigationController];
  }
}

void sub_21CF4FC04(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  UIViewController.psg_popViewController(animated:)(a3);
}

id EmitNavigationEventWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmitNavigationEventWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmitNavigationEventWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EmitNavigationEventWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmitNavigationEventWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

size_t sub_21CF4FE78(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v41 = a5;
  v43 = a4;
  v45 = sub_21CF553C4();
  v8 = *(v45 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = sub_21CF55524();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CF55564();
  v38 = sub_21CF55554();
  *v19 = a1;
  v19[1] = a2;
  v20 = *MEMORY[0x277D4D788];
  v39 = v19;
  v40 = v16;
  (*(v16 + 104))(v19, v20, v15);
  v44 = sub_21CF5027C();
  v49 = v44;
  v48[0] = a3;

  v21 = a3;
  sub_21CF553B4();
  v22 = v43;
  if (v43 >> 62)
  {
    goto LABEL_19;
  }

  v23 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v23)
  {
    v47 = MEMORY[0x277D84F90];
    result = sub_21CF523C8(0, v23 & ~(v23 >> 63), 0);
    if ((v23 & 0x8000000000000000) == 0)
    {
      v43 = v23;
      v36 = v14;
      v37 = v15;
      v25 = 0;
      v26 = v47;
      v27 = v22;
      v28 = v22 & 0xC000000000000001;
      v42 = v22 & 0xFFFFFFFFFFFFFF8;
      v14 = (v8 + 32);
      v29 = v22;
      while (1)
      {
        if (v28)
        {
          v30 = MEMORY[0x223D38410](v25, v27);
        }

        else
        {
          if ((v25 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_18:
            __break(1u);
LABEL_19:
            v23 = sub_21CF55754();
            goto LABEL_3;
          }

          if (v25 >= *(v42 + 16))
          {
            goto LABEL_18;
          }

          v30 = *(v27 + 8 * v25 + 32);
        }

        v31 = v30;
        v49 = v44;
        v48[0] = v30;
        sub_21CF502C8(v48, v46);
        v32 = v31;
        sub_21CF553B4();
        __swift_destroy_boxed_opaque_existential_0(v48);

        v47 = v26;
        v22 = *(v26 + 16);
        v33 = *(v26 + 24);
        v15 = v22 + 1;
        if (v22 >= v33 >> 1)
        {
          sub_21CF523C8(v33 > 1, v22 + 1, 1);
          v26 = v47;
        }

        ++v25;
        *(v26 + 16) = v15;
        (*(v8 + 32))(v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v12, v45);
        v27 = v29;
        if (v43 == v25)
        {
          v34 = v40;
          v14 = v36;
          v15 = v37;
          v35 = v39;
          goto LABEL_16;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v35 = v39;
    v34 = v40;
LABEL_16:
    sub_21CF55544();

    (*(v8 + 8))(v14, v45);
    return (*(v34 + 8))(v35, v15);
  }

  return result;
}

unint64_t sub_21CF5027C()
{
  result = qword_27CE44AC0;
  if (!qword_27CE44AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE44AC0);
  }

  return result;
}

uint64_t sub_21CF502C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

unint64_t sub_21CF503A8()
{
  result = qword_280B1A1B8;
  if (!qword_280B1A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1A1B8);
  }

  return result;
}

uint64_t sub_21CF50418@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = sub_21CF55494();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_21CF55424();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44AD8, &qword_21CF58D80);
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  sub_21CF53450(0, &qword_280B1A108, off_278324360);
  v16 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) init];
  v17 = *MEMORY[0x277D40038];
  v35 = a1;
  [v16 setProperty:a1 forKey:v17];
  v36 = a2;
  [v16 setProperty:a2 forKey:@"PSGPPTRelayKey"];
  sub_21CF55454();
  sub_21CF55414();
  sub_21CF554E4();
  sub_21CF53450(0, &qword_280B1A100, 0x277CCA8D8);
  if (!sub_21CF556C4())
  {
    v18 = [objc_opt_self() mainBundle];
  }

  v19 = sub_21CF554F4();
  v21 = v20;
  v23 = v22;
  v24 = sub_21CF5333C(qword_280B1A118, MEMORY[0x277D40248]);
  sub_21CF55504();
  sub_21CF53498(v19, v21, v23 & 1);

  (*(v8 + 8))(v11, v7);
  if (qword_280B1A110 != -1)
  {
    swift_once();
  }

  v25 = sub_21CF554A4();
  __swift_project_value_buffer(v25, qword_280B1A328);
  v26 = swift_allocObject();
  v27 = v35;
  v28 = v36;
  *(v26 + 16) = v35;
  *(v26 + 24) = v28;
  v29 = v27;
  v30 = v28;
  v38 = v7;
  v39 = v24;
  swift_getOpaqueTypeConformance2();
  v31 = v34;
  sub_21CF55514();

  return (*(v33 + 8))(v15, v31);
}

uint64_t sub_21CF5086C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44AE8, &qword_21CF58D98) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v5 = sub_21CF55354();
  v3[27] = v5;
  v6 = *(v5 - 8);
  v3[28] = v6;
  v7 = *(v6 + 64) + 15;
  v3[29] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44AF0, &qword_21CF58DA0) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v9 = sub_21CF55494();
  v3[32] = v9;
  v10 = *(v9 - 8);
  v3[33] = v10;
  v11 = *(v10 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v12 = sub_21CF55534();
  v3[38] = v12;
  v13 = *(v12 - 8);
  v3[39] = v13;
  v14 = *(v13 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v15 = sub_21CF554D4();
  v3[42] = v15;
  v16 = *(v15 - 8);
  v3[43] = v16;
  v17 = *(v16 + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v18 = sub_21CF553F4();
  v3[46] = v18;
  v19 = *(v18 - 8);
  v3[47] = v19;
  v20 = *(v19 + 64) + 15;
  v3[48] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44AF8, &qword_21CF58DA8) - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v22 = sub_21CF553A4();
  v3[50] = v22;
  v23 = *(v22 - 8);
  v3[51] = v23;
  v24 = *(v23 + 64) + 15;
  v3[52] = swift_task_alloc();
  sub_21CF556A4();
  v3[53] = sub_21CF55694();
  v26 = sub_21CF55684();

  return MEMORY[0x2822009F8](sub_21CF50C20, v26, v25);
}

uint64_t sub_21CF50C20()
{
  v181 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 384);
  v4 = *(v0 + 392);
  v6 = *(v0 + 368);
  v7 = *(v0 + 376);
  v8 = *(v0 + 192);

  sub_21CF555D4();
  sub_21CF55374();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v9 = *(v0 + 360);
    v10 = *(v0 + 336);
    v11 = *(v0 + 344);
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    sub_21CF532DC(*(v0 + 392), &qword_27CE44AF8, &qword_21CF58DA8);
    sub_21CF555C4();
    sub_21CF555F4();
    (*(v11 + 8))(v9, v10);
    goto LABEL_81;
  }

  v14 = *(v0 + 352);
  v15 = *(v0 + 192);
  (*(*(v0 + 408) + 32))(*(v0 + 416), *(v0 + 392), *(v0 + 400));
  sub_21CF555C4();
  *(v0 + 96) = sub_21CF55384();
  *(v0 + 104) = v16;
  *(v0 + 112) = 47;
  *(v0 + 120) = 0xE100000000000000;
  sub_21CF53038();
  v17 = sub_21CF556F4();

  v19 = 0;
  v20 = *(v17 + 16);
  v21 = MEMORY[0x277D84F90];
LABEL_4:
  v22 = (v17 + 40 + 16 * v19);
  while (v20 != v19)
  {
    if (v19 >= *(v17 + 16))
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      return result;
    }

    v24 = *(v22 - 1);
    v23 = *v22;
    v22 += 2;
    ++v19;
    v25 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v25 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      *&v178[0] = v21;
      if ((result & 1) == 0)
      {
        result = sub_21CF523E8(0, *(v21 + 2) + 1, 1);
        v21 = *&v178[0];
      }

      v26 = v21;
      v27 = *(v21 + 2);
      v28 = *(v26 + 3);
      if (v27 >= v28 >> 1)
      {
        result = sub_21CF523E8((v28 > 1), v27 + 1, 1);
        v26 = *&v178[0];
      }

      *(v26 + 2) = v27 + 1;
      v29 = &v26[16 * v27];
      *(v29 + 4) = v24;
      *(v29 + 5) = v23;
      v21 = v26;
      goto LABEL_4;
    }
  }

  v30 = *(v21 + 2);
  if (!v30)
  {
    v103 = *(v0 + 416);
    sub_21CF55394();
    if (v104)
    {
      v105 = *(v0 + 200);

      v106 = sub_21CF55624();

      [v105 setSpecifierIdentifierToScrollAndHighlight_];

      goto LABEL_80;
    }

    v30 = *(v21 + 2);
    if (!v30)
    {

      goto LABEL_80;
    }
  }

  v31 = (*(v0 + 264) + 8);
  v161 = (*(v0 + 312) + 48);
  v32 = *(v0 + 224);
  v168 = (v32 + 8);
  v33 = 37;
  v166 = v32;
  v160 = v31;
  while (1)
  {
    v165 = v33;
    v35 = *(v21 + 4);
    v34 = *(v21 + 5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v30 - 1) > *(v21 + 3) >> 1)
    {
      v21 = sub_21CF52910(isUniquelyReferenced_nonNull_native, v30, 1, v21);
    }

    sub_21CF53240((v21 + 32));
    v37 = *(v21 + 2);
    memmove(v21 + 32, v21 + 48, 16 * v37 - 16);
    *(v21 + 2) = v37 - 1;

    v38 = sub_21CF5417C();
    v39 = v38;
    if (v38 == 37)
    {
      break;
    }

    v80 = v38;

    if (v39 == 30)
    {
      if ([objc_opt_self() isRunningInStoreDemoMode])
      {
        goto LABEL_76;
      }
    }

    else if (v39 == 1)
    {
      result = [objc_opt_self() sharedManager];
      if (!result)
      {
        goto LABEL_89;
      }

      v81 = result;
      v82 = [result isMultiUser];

      if (v82)
      {
LABEL_76:
        v80 = v165;
LABEL_77:

        if (v80 == 37)
        {
LABEL_80:
          v134 = *(v0 + 408);
          v133 = *(v0 + 416);
          v135 = *(v0 + 400);
          v137 = *(v0 + 344);
          v136 = *(v0 + 352);
          v138 = *(v0 + 336);
          v139 = *(v0 + 184);
          sub_21CF555F4();
          (*(v137 + 8))(v136, v138);
          (*(v134 + 8))(v133, v135);
        }

        else
        {
          v121 = *(v0 + 304);
          v122 = *(v0 + 272);
          v123 = *(v0 + 256);
          v124 = *(v0 + 240);
          sub_21CF535F8(v80, v122);
          sub_21CF55444();
          v125 = *v31;
          (*v31)(v122, v123);
          if ((*v161)(v124, 1, v121) == 1)
          {
            v126 = *(v0 + 368);
            v127 = *(v0 + 376);
            v128 = *(v0 + 352);
            v129 = *(v0 + 288);
            v130 = *(v0 + 256);
            v131 = *(v0 + 208);
            v132 = *(v0 + 192);
            sub_21CF532DC(*(v0 + 240), &qword_27CE44AF0, &qword_21CF58DA0);
            sub_21CF555D4();
            (*(v127 + 56))(v131, 0, 1, v126);
            sub_21CF53D78(v131, v80, v129);
            sub_21CF532DC(v131, &qword_27CE44AE8, &qword_21CF58D98);
            sub_21CF5333C(&qword_27CE44B28, MEMORY[0x277D40250]);
            sub_21CF554C4();
            v125(v129, v130);
            goto LABEL_80;
          }

          v151 = *(v0 + 408);
          v177 = *(v0 + 416);
          v152 = *(v0 + 400);
          v154 = *(v0 + 344);
          v153 = *(v0 + 352);
          v155 = *(v0 + 336);
          v156 = *(v0 + 312);
          v157 = *(v0 + 320);
          v158 = *(v0 + 304);
          v159 = *(v0 + 184);
          (*(v156 + 32))(v157, *(v0 + 240), v158);
          sub_21CF555E4();
          (*(v156 + 8))(v157, v158);
          (*(v154 + 8))(v153, v155);
          (*(v151 + 8))(v177, v152);
        }

LABEL_81:
        v140 = *(v0 + 416);
        v141 = *(v0 + 384);
        v142 = *(v0 + 392);
        v144 = *(v0 + 352);
        v143 = *(v0 + 360);
        v146 = *(v0 + 320);
        v145 = *(v0 + 328);
        v148 = *(v0 + 288);
        v147 = *(v0 + 296);
        v149 = *(v0 + 280);
        v167 = *(v0 + 272);
        v169 = *(v0 + 248);
        v170 = *(v0 + 240);
        v173 = *(v0 + 232);
        v176 = *(v0 + 208);

        v150 = *(v0 + 8);

        return v150();
      }
    }

    v96 = *(v0 + 296);
    v95 = *(v0 + 304);
    v98 = *(v0 + 248);
    v97 = *(v0 + 256);
    sub_21CF535F8(v80, v96);
    sub_21CF55444();
    v99 = *v31;
    (*v31)(v96, v97);
    if ((*v161)(v98, 1, v95) != 1)
    {
      v107 = *(v0 + 408);
      v172 = *(v0 + 400);
      v175 = *(v0 + 416);
      v108 = *(v0 + 344);
      v109 = *(v0 + 352);
      v111 = *(v0 + 328);
      v110 = *(v0 + 336);
      v113 = *(v0 + 304);
      v112 = *(v0 + 312);
      v114 = *(v0 + 248);
      v115 = *(v0 + 184);

      (*(v112 + 32))(v111, v114, v113);
      sub_21CF555E4();
      (*(v112 + 8))(v111, v113);
      (*(v108 + 8))(v109, v110);
      (*(v107 + 8))(v175, v172);
      goto LABEL_81;
    }

    sub_21CF532DC(*(v0 + 248), &qword_27CE44AF0, &qword_21CF58DA0);
    if (v165 != 37)
    {
      v100 = *(v0 + 352);
      v101 = *(v0 + 288);
      v102 = *(v0 + 256);
      sub_21CF535F8(v165, v101);
      sub_21CF5333C(&qword_27CE44B28, MEMORY[0x277D40250]);
      sub_21CF554C4();
      v99(v101, v102);
    }

    v32 = v166;
LABEL_18:
    v30 = *(v21 + 2);
    v33 = v80;
    if (!v30)
    {
      goto LABEL_77;
    }
  }

  v162 = v35;
  v163 = v34;
  v164 = v21;
  v40 = *(v0 + 416);
  result = sub_21CF55364();
  if (result)
  {
    v41 = result;
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v174 = *(v41 + 16);
  if (!v174)
  {
    v43 = MEMORY[0x277D84F98];
LABEL_54:
    v83 = *(v0 + 416);

    *(v0 + 432) = 1;
    sub_21CF55734();
    v84 = swift_isUniquelyReferenced_nonNull_native();
    sub_21CF52EA8(v178, 0x6574616D696E61, 0xE700000000000000, v84);
    v85 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44B10, &qword_21CF58DB8);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_21CF58B40;
    *(v86 + 32) = v162;
    *(v86 + 40) = v163;
    *&v178[0] = v86;
    v21 = v164;

    sub_21CF526EC(v87);
    *(v0 + 176) = *&v178[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44B18, &qword_21CF58DC0);
    sub_21CF53294(&qword_27CE44B20, &qword_27CE44B18, &qword_21CF58DC0);
    v88 = sub_21CF55614();
    v90 = v89;

    v91 = sub_21CF55394();
    if (v92)
    {
      *&v178[0] = 35;
      *(&v178[0] + 1) = 0xE100000000000000;
      MEMORY[0x223D38320](v91);

      MEMORY[0x223D38320](*&v178[0], *(&v178[0] + 1));
    }

    v31 = v160;
    v93 = HIBYTE(v90) & 0xF;
    if ((v90 & 0x2000000000000000) == 0)
    {
      v93 = v88 & 0xFFFFFFFFFFFFLL;
    }

    v32 = v166;
    if (v93)
    {
      *(v0 + 128) = v88;
      *(v0 + 136) = v90;
      sub_21CF55734();
      v94 = swift_isUniquelyReferenced_nonNull_native();
      v180 = v85;
      sub_21CF52EA8(v178, 1752457584, 0xE400000000000000, v94);
      v85 = v180;
    }

    else
    {
    }

    if (v165 != 37)
    {
      v116 = *(v0 + 352);
      v118 = *(v0 + 280);
      v117 = *(v0 + 288);
      v119 = *(v0 + 256);

      sub_21CF535F8(v165, v118);
      sub_21CF51B68(v85);

      sub_21CF55434();

      v120 = *v160;
      (*v160)(v118, v119);
      sub_21CF5333C(&qword_27CE44B28, MEMORY[0x277D40250]);
      sub_21CF554C4();
      v120(v117, v119);
      goto LABEL_80;
    }

    v80 = 37;
    goto LABEL_18;
  }

  v42 = 0;
  v171 = v41 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
  v43 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v42 >= *(v41 + 16))
    {
      __break(1u);
      goto LABEL_86;
    }

    (*(v32 + 16))(*(v0 + 232), v171 + *(v32 + 72) * v42, *(v0 + 216));
    v44 = sub_21CF55334();
    v46 = v45;
    v47 = sub_21CF55344();
    if (!v48 || (*(v0 + 144) = v47, *(v0 + 152) = v48, v49 = sub_21CF55704(), v51 = v50, , !v51))
    {
      v61 = sub_21CF527E0(v44, v46);
      v63 = v62;

      if (v63)
      {
        v64 = swift_isUniquelyReferenced_nonNull_native();
        *&v178[0] = v43;
        if (!v64)
        {
          sub_21CF5308C();
          v43 = *&v178[0];
        }

        v65 = *(v0 + 232);
        v66 = *(v0 + 216);
        v67 = *(v43[6] + 16 * v61 + 8);

        v68 = v43[7] + 40 * v61;
        v69 = *v68;
        v70 = *(v68 + 16);
        *(v0 + 48) = *(v68 + 32);
        *(v0 + 16) = v69;
        *(v0 + 32) = v70;
        sub_21CF52CEC(v61, v43);
        (*v168)(v65, v66);
      }

      else
      {
        (*v168)(*(v0 + 232), *(v0 + 216));
        *(v0 + 48) = 0;
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
      }

      result = sub_21CF532DC(v0 + 16, &qword_27CE44B08, &qword_21CF58DB0);
      goto LABEL_30;
    }

    *(v0 + 160) = v49;
    *(v0 + 168) = v51;
    sub_21CF55734();
    v52 = v178[1];
    *(v0 + 56) = v178[0];
    *(v0 + 72) = v52;
    *(v0 + 88) = v179;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v55 = sub_21CF527E0(v44, v46);
    v56 = v43[2];
    v57 = (v54 & 1) == 0;
    result = v56 + v57;
    if (__OFADD__(v56, v57))
    {
      goto LABEL_87;
    }

    v58 = v54;
    if (v43[3] < result)
    {
      break;
    }

    if ((v53 & 1) == 0)
    {
      sub_21CF5308C();
    }

LABEL_44:
    v71 = *(v0 + 232);
    v72 = *(v0 + 216);
    if (v58)
    {

      sub_21CF53384(v0 + 56, v43[7] + 40 * v55);
      result = (*v168)(v71, v72);
      v32 = v166;
    }

    else
    {
      v43[(v55 >> 6) + 8] |= 1 << v55;
      v73 = (v43[6] + 16 * v55);
      *v73 = v44;
      v73[1] = v46;
      v74 = v43[7] + 40 * v55;
      v75 = *(v0 + 88);
      v76 = *(v0 + 72);
      *v74 = *(v0 + 56);
      *(v74 + 16) = v76;
      *(v74 + 32) = v75;
      result = (*v168)(v71, v72);
      v77 = v43[2];
      v78 = __OFADD__(v77, 1);
      v79 = v77 + 1;
      if (v78)
      {
        goto LABEL_88;
      }

      v43[2] = v79;
      v32 = v166;
    }

LABEL_30:
    if (v174 == ++v42)
    {
      goto LABEL_54;
    }
  }

  sub_21CF52A1C(result, v53);
  v59 = sub_21CF527E0(v44, v46);
  if ((v58 & 1) == (v60 & 1))
  {
    v55 = v59;
    goto LABEL_44;
  }

  return sub_21CF557B4();
}

uint64_t sub_21CF51B68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44B38, &qword_21CF58DD0);
    v2 = sub_21CF55784();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21CF533E0(*(a1 + 56) + 40 * v13, v42);
    v40 = v16;
    v41 = v15;
    v37 = v42[0];
    v38 = v42[1];
    v39 = v43;
    v27 = v16;
    v28 = v15;

    swift_dynamicCast();
    v25[0] = v37;
    v25[1] = v38;
    v26 = v39;
    swift_dynamicCast();
    v33 = v29;
    v34 = v30;
    v35 = v31;
    sub_21CF5343C(&v32, v36);
    v29 = v33;
    v30 = v34;
    v31 = v35;
    sub_21CF5343C(v36, v25);
    v17 = *(v2 + 40);
    result = sub_21CF55724();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v29;
    *(v11 + 16) = v30;
    *(v11 + 32) = v31;
    result = sub_21CF5343C(v25, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_21CF51E54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44AC8, &qword_21CF58D70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - v4;
  v7 = *v0;
  v6 = *(v0 + 8);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  v9 = v7;
  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44AD0, &qword_21CF58D78);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE44AD8, &qword_21CF58D80);
  v12 = sub_21CF55424();
  v13 = sub_21CF5333C(qword_280B1A118, MEMORY[0x277D40248]);
  v19 = v12;
  v20 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v11;
  v20 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21CF55604();
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v10;
  sub_21CF53294(&qword_27CE44AE0, &qword_27CE44AC8, &qword_21CF58D70);
  v16 = v9;
  v17 = v10;
  sub_21CF555B4();
  return (*(v2 + 8))(v5, v1);
}

id sub_21CF520C8@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D3FA50]) init];
  result = [objc_allocWithZone(PSGPPTRelay) init];
  *a1 = v2;
  a1[1] = result;
  return result;
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

uint64_t sub_21CF521BC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21CF52270;

  return sub_21CF5086C(a1, a2, v7);
}

uint64_t sub_21CF52270()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21CF52364()
{
  v0 = sub_21CF554A4();
  __swift_allocate_value_buffer(v0, qword_280B1A328);
  __swift_project_value_buffer(v0, qword_280B1A328);
  return sub_21CF554B4();
}

size_t sub_21CF523C8(size_t a1, int64_t a2, char a3)
{
  result = sub_21CF52408(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21CF523E8(char *a1, int64_t a2, char a3)
{
  result = sub_21CF525E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21CF52408(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44B40, &qword_21CF58DD8);
  v10 = *(sub_21CF553C4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_21CF553C4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_21CF525E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44B10, &qword_21CF58DB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21CF526EC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21CF52910(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_21CF527E0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21CF557C4();
  sub_21CF55644();
  v6 = sub_21CF557E4();

  return sub_21CF52858(a1, a2, v6);
}

unint64_t sub_21CF52858(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21CF55794())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_21CF52910(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44B10, &qword_21CF58DB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21CF52A1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44B30, &qword_21CF58DC8);
  v41 = a2;
  result = sub_21CF55774();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_21CF533E0(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_21CF557C4();
      sub_21CF55644();
      result = sub_21CF557E4();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_21CF52CEC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21CF55714() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_21CF557C4();

      sub_21CF55644();
      v15 = sub_21CF557E4();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21CF52EA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21CF527E0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21CF52A1C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_21CF527E0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_21CF557B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21CF5308C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_21CF53384(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

unint64_t sub_21CF53038()
{
  result = qword_27CE44B00;
  if (!qword_27CE44B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE44B00);
  }

  return result;
}

void *sub_21CF5308C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44B30, &qword_21CF58DC8);
  v2 = *v0;
  v3 = sub_21CF55764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_21CF533E0(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21CF53294(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CF532DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21CF5333C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_21CF5343C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21CF53450(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_21CF53498(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21CF53564(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CF535AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21CF535F8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_21CF55494();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CF556E4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 25:
    case 26:
    case 28:
    case 29:
      sub_21CF556D4();
      return sub_21CF55474();
    case 5:
      sub_21CF53FF4(5);
      sub_21CF556D4();
      return sub_21CF55484();
    case 14:
      v12 = &unk_27CE44B98;
      v13 = off_278324370;
      goto LABEL_20;
    case 15:
      v12 = &unk_27CE44B90;
      v13 = off_278324380;
      goto LABEL_20;
    case 16:
      sub_21CF53FF4(16);
      sub_21CF556D4();
      return sub_21CF55484();
    case 24:
      v12 = &unk_27CE44B88;
      v13 = off_278324378;
      goto LABEL_20;
    case 27:
      v14 = [objc_opt_self() getExtendedResearchSettingsBundleName];
      v15 = sub_21CF55634();
      v17 = v16;

      v20[0] = v15;
      v20[1] = v17;
      sub_21CF55664();
      sub_21CF556D4();
      return sub_21CF55474();
    case 30:
      v12 = &unk_27CE44B80;
      v13 = off_2783243A0;
      goto LABEL_20;
    case 31:
      v12 = &unk_27CE44B48;
      v13 = off_278324388;
      goto LABEL_20;
    case 32:
      v12 = &unk_27CE44B78;
      v13 = off_278324350;
      goto LABEL_20;
    case 33:
      v20[3] = &type metadata for SoftwareUpdateFeatureFlags;
      v20[4] = sub_21CF53FA0();
      v18 = sub_21CF55404();
      __swift_destroy_boxed_opaque_existential_0(v20);
      if (v18)
      {
        sub_21CF556D4();
        sub_21CF55474();
      }

      else
      {
        sub_21CF53450(0, &qword_27CE44B70, off_278324398);
        sub_21CF55464();
      }

      return (*(v5 + 32))(a2, v8, v4);
    case 34:
      v12 = &unk_27CE44B60;
      v13 = off_278324390;
      goto LABEL_20;
    case 35:
      v12 = &unk_27CE44B58;
      v13 = off_278324340;
      goto LABEL_20;
    case 36:
      v12 = &unk_27CE44B50;
      v13 = off_278324348;
LABEL_20:
      sub_21CF53450(0, v12, v13);

      result = sub_21CF55464();
      break;
    default:
      sub_21CF53450(0, &unk_27CE44BA0, off_278324330);
      sub_21CF53FF4(0);

      result = sub_21CF55454();
      break;
  }

  return result;
}

uint64_t sub_21CF53D78@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44AE8, &qword_21CF58D98);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  if (v6 == 31)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) init];
    sub_21CF53F30(a1, v10);
    v12 = sub_21CF553F4();
    v13 = *(v12 - 8);
    v14 = 0;
    if ((*(v13 + 48))(v10, 1, v12) != 1)
    {
      v14 = sub_21CF553D4();
      (*(v13 + 8))(v10, v12);
    }

    [v11 setProperty:v14 forKey:@"deepLinkURL"];
    swift_unknownObjectRelease();
    sub_21CF53450(0, &qword_27CE44B48, off_278324388);
    return sub_21CF55454();
  }

  else
  {

    return sub_21CF535F8(a2, a3);
  }
}

uint64_t sub_21CF53F30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE44AE8, &qword_21CF58D98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CF53FA0()
{
  result = qword_27CE44B68;
  if (!qword_27CE44B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE44B68);
  }

  return result;
}

id sub_21CF53FF4(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D3FAD8]) init];
  if (a1 == 16 || a1 == 5)
  {
    v6 = sub_21CF55624();
    v5 = sub_21CF55624();
    [v2 setProperty:v6 forKey:v5];

LABEL_8:
    return v2;
  }

  if (!a1)
  {
    v3 = sub_21CF55624();
    [v2 setProperty:v3 forKey:*MEMORY[0x277D3FEE0]];

    v4 = sub_21CF55624();
    v5 = PSG_LocalizedStringForGeneral(v4);

    if (!v5)
    {
      sub_21CF55634();
      v5 = sub_21CF55624();
    }

    [v2 setName_];
    goto LABEL_8;
  }

  return v2;
}

uint64_t sub_21CF5417C()
{
  v0 = sub_21CF557A4();

  if (v0 >= 0x25)
  {
    return 37;
  }

  else
  {
    return v0;
  }
}