id getHUAccessoryManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHUAccessoryManagerClass_softClass;
  v7 = getHUAccessoryManagerClass_softClass;
  if (!getHUAccessoryManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHUAccessoryManagerClass_block_invoke;
    v3[3] = &unk_279A1D238;
    v3[4] = &v4;
    __getHUAccessoryManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25E446500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getHUAccessoryManagerClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHUAccessoryManagerClass_softClass_1;
  v7 = getHUAccessoryManagerClass_softClass_1;
  if (!getHUAccessoryManagerClass_softClass_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHUAccessoryManagerClass_block_invoke_1;
    v3[3] = &unk_279A1D238;
    v3[4] = &v4;
    __getHUAccessoryManagerClass_block_invoke_1(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25E4465E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id paSupportedWiredRoutes()
{
  v0 = paSupportedWiredRoutes_AudioRouteSubtypes;
  if (!paSupportedWiredRoutes_AudioRouteSubtypes)
  {
    v1 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"b60", @"b60f", @"b60g", @"b225", 0}];
    v2 = paSupportedWiredRoutes_AudioRouteSubtypes;
    paSupportedWiredRoutes_AudioRouteSubtypes = v1;

    v0 = paSupportedWiredRoutes_AudioRouteSubtypes;
  }

  return v0;
}

id paSupportedWirelessRoutes()
{
  v0 = paSupportedWirelessRoutes_AudioRouteProductIDs;
  if (!paSupportedWirelessRoutes_AudioRouteProductIDs)
  {
    v1 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"76, 8207", @"76, 8206", @"76, 8203", @"76, 8203", @"76, 8204", @"76, 8205", @"76, 8202", @"76, 8211", @"76, 8212", @"76, 8210", @"76, 8228", @"76, 8214", @"76, 8230", @"76, 8221", @"76, 8217", @"76, 8219", @"76, 8222", @"76, 8223", @"76, 8231", @"76, 8239", 0}];
    v2 = paSupportedWirelessRoutes_AudioRouteProductIDs;
    paSupportedWirelessRoutes_AudioRouteProductIDs = v1;

    v0 = paSupportedWirelessRoutes_AudioRouteProductIDs;
  }

  return v0;
}

void sub_25E447208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  _Block_object_dispose((v44 - 152), 8);
  objc_destroyWeak((v41 + 40));
  objc_destroyWeak((v43 + 32));
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak(&a36);
  objc_destroyWeak(&a41);
  objc_destroyWeak((v44 - 216));
  _Unwind_Resume(a1);
}

Class __getHUAccessoryManagerClass_block_invoke(uint64_t a1)
{
  HearingUtilitiesLibrary();
  result = objc_getClass("HUAccessoryManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHUAccessoryManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHUAccessoryManagerClass_block_invoke_cold_1();
    return __getHUAccessoryManagerClass_block_invoke_0(v3);
  }

  return result;
}

Class __getHUAccessoryManagerClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!HearingUtilitiesLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __HearingUtilitiesLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279A1D798;
    v7 = 0;
    HearingUtilitiesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v5[0];
    if (HearingUtilitiesLibraryCore_frameworkLibrary_1)
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
  result = objc_getClass("HUAccessoryManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHUAccessoryManagerClass_block_invoke_cold_1();
  }

  getHUAccessoryManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getHUAccessoryManagerClass_block_invoke_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!HearingUtilitiesLibraryCore_frameworkLibrary_2)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __HearingUtilitiesLibraryCore_block_invoke_2;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279A1D8A0;
    v7 = 0;
    HearingUtilitiesLibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v5[0];
    if (HearingUtilitiesLibraryCore_frameworkLibrary_2)
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
  result = objc_getClass("HUAccessoryManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHUAccessoryManagerClass_block_invoke_cold_1();
  }

  getHUAccessoryManagerClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25E4478F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

Class initHMServiceClient()
{
  if (HearingModeServiceLibrary_sOnce_0 != -1)
  {
    initHMServiceClient_cold_1();
  }

  result = objc_getClass("HMServiceClient");
  classHMServiceClient = result;
  getHMServiceClientClass = HMServiceClientFunction;
  return result;
}

void *__HearingModeServiceLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/HearingModeService.framework/HearingModeService", 2);
  HearingModeServiceLibrary_sLib = result;
  return result;
}

void *__HearingModeServiceLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/HearingModeService.framework/HearingModeService", 2);
  HearingModeServiceLibrary_sLib_0 = result;
  return result;
}

uint64_t HearingUtilitiesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HearingUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HearingUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279A1D258;
    v6 = 0;
    HearingUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = HearingUtilitiesLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!HearingUtilitiesLibraryCore_frameworkLibrary)
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

uint64_t HearingUtilitiesLibrary_0()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HearingUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HearingUtilitiesLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279A1D6B8;
    v6 = 0;
    HearingUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = HearingUtilitiesLibraryCore_frameworkLibrary_0;
  v1 = v4[0];
  if (!HearingUtilitiesLibraryCore_frameworkLibrary_0)
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

void sub_25E448CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E449410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __HearingUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HearingUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getAXHeardControllerClass_block_invoke(uint64_t a1)
{
  HearingUtilitiesLibrary();
  result = objc_getClass("AXHeardController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXHeardControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAXHeardControllerClass_block_invoke_cold_1();
    return __getAXHearingAidAudioRoutesChangedNotificationSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getAXHearingAidAudioRoutesChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HearingUtilitiesLibrary();
  result = dlsym(v2, "AXHearingAidAudioRoutesChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXHearingAidAudioRoutesChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_25E44AD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id paBundle()
{
  v0 = paBundle_PABundle;
  if (!paBundle_PABundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = paBundle_PABundle;
    paBundle_PABundle = v1;

    v0 = paBundle_PABundle;
  }

  return v0;
}

id paLocString(void *a1)
{
  v1 = a1;
  v2 = paBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"PersonalAudio"];

  return v3;
}

__CFString *paDescriptionForLevel(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v2 = &stru_287029760;
  }

  else
  {
    v2 = paLocString(off_279A1D6D0[a1 - 1]);
  }

  return v2;
}

__CFString *paDescriptionForShape(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v2 = &stru_287029760;
  }

  else
  {
    v2 = paLocString(off_279A1D6E8[a1 - 1]);
  }

  return v2;
}

id getHKUnitClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHKUnitClass_softClass;
  v7 = getHKUnitClass_softClass;
  if (!getHKUnitClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHKUnitClass_block_invoke;
    v3[3] = &unk_279A1D238;
    v3[4] = &v4;
    __getHKUnitClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25E44E3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E44E7F0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Unwind_Resume(a1);
}

id paRoutesOfSubtypeOrProduct(void *a1, void *a2, char a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [getHUUtilitiesClass() sharedUtilities];
  v8 = [v7 currentPickableAudioRoutes];

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __paRoutesOfSubtypeOrProduct_block_invoke;
  v20 = &unk_279A1D598;
  v24 = a3;
  v10 = v5;
  v21 = v10;
  v11 = v6;
  v22 = v11;
  v12 = v9;
  v23 = v12;
  [v8 enumerateKeysAndObjectsUsingBlock:&v17];
  if (![v12 count] && objc_msgSend(MEMORY[0x277D12B60], "isInternalInstall"))
  {
    v13 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_25E445000, v13, OS_LOG_TYPE_DEFAULT, "Route not supported %@ - %@ = %@", buf, 0x20u);
    }
  }

  v14 = [v12 copy];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id getHUUtilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getHUUtilitiesClass_softClass;
  v7 = getHUUtilitiesClass_softClass;
  if (!getHUUtilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getHUUtilitiesClass_block_invoke;
    v3[3] = &unk_279A1D238;
    v3[4] = &v4;
    __getHUUtilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25E44F254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __paRoutesOfSubtypeOrProduct_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 56) == 1)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v7 = getHURouteKeyRouteCurrentlyPickedSymbolLoc_ptr;
    v42 = getHURouteKeyRouteCurrentlyPickedSymbolLoc_ptr;
    if (!getHURouteKeyRouteCurrentlyPickedSymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&v44 = 3221225472;
      *(&v44 + 1) = __getHURouteKeyRouteCurrentlyPickedSymbolLoc_block_invoke;
      v45 = &unk_279A1D238;
      v46 = &v39;
      v8 = HearingUtilitiesLibrary_0();
      v9 = dlsym(v8, "HURouteKeyRouteCurrentlyPicked");
      *(v46[1] + 24) = v9;
      getHURouteKeyRouteCurrentlyPickedSymbolLoc_ptr = *(v46[1] + 24);
      v7 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v7)
    {
      goto LABEL_28;
    }

    v10 = [v6 objectForKey:*v7];
    v11 = [v10 BOOLValue];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v12 = getHURouteKeyAudioRouteSubTypeSymbolLoc_ptr;
  v42 = getHURouteKeyAudioRouteSubTypeSymbolLoc_ptr;
  if (!getHURouteKeyAudioRouteSubTypeSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&v44 = 3221225472;
    *(&v44 + 1) = __getHURouteKeyAudioRouteSubTypeSymbolLoc_block_invoke;
    v45 = &unk_279A1D238;
    v46 = &v39;
    v13 = HearingUtilitiesLibrary_0();
    v14 = dlsym(v13, "HURouteKeyAudioRouteSubType");
    *(v46[1] + 24) = v14;
    getHURouteKeyAudioRouteSubTypeSymbolLoc_ptr = *(v46[1] + 24);
    v12 = v40[3];
  }

  _Block_object_dispose(&v39, 8);
  if (!v12)
  {
LABEL_28:
    __paRoutesOfSubtypeOrProduct_block_invoke_cold_1();
    goto LABEL_31;
  }

  v15 = *v12;
  v16 = [v6 objectForKey:v15];

  v17 = *(a1 + 32);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __paRoutesOfSubtypeOrProduct_block_invoke_2;
  v37[3] = &unk_279A1D570;
  v18 = v16;
  v38 = v18;
  v19 = [v17 objectsPassingTest:v37];
  if ([v19 count])
  {
    v20 = v6;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v22 = getHURouteKeyBTDetails_ProductIDSymbolLoc_ptr;
    v42 = getHURouteKeyBTDetails_ProductIDSymbolLoc_ptr;
    if (!getHURouteKeyBTDetails_ProductIDSymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&v44 = 3221225472;
      *(&v44 + 1) = __getHURouteKeyBTDetails_ProductIDSymbolLoc_block_invoke;
      v45 = &unk_279A1D238;
      v46 = &v39;
      v23 = HearingUtilitiesLibrary_0();
      v24 = dlsym(v23, "HURouteKeyBTDetails_ProductID");
      *(v46[1] + 24) = v24;
      getHURouteKeyBTDetails_ProductIDSymbolLoc_ptr = *(v46[1] + 24);
      v22 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (v22)
    {
      v25 = *v22;
      v26 = [v6 valueForKey:v25];

      if ([v26 length])
      {
        v27 = *(a1 + 40);
        v32 = MEMORY[0x277D85DD0];
        v33 = 3221225472;
        v34 = __paRoutesOfSubtypeOrProduct_block_invoke_3;
        v35 = &unk_279A1D570;
        v36 = v26;
        v28 = [v27 objectsPassingTest:&v32];

        v19 = v28;
      }

      if ([v19 count])
      {
        v29 = v6;
      }

      else
      {
        v29 = 0;
      }

      v21 = v29;

      goto LABEL_23;
    }

    __paRoutesOfSubtypeOrProduct_block_invoke_cold_1();
LABEL_31:
    __break(1u);
  }

  v21 = v6;
LABEL_23:
  v30 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = v21 != 0;
    LOWORD(v44) = 2112;
    *(&v44 + 2) = v6;
    _os_log_impl(&dword_25E445000, v30, OS_LOG_TYPE_DEFAULT, "Checking route %d = %@", buf, 0x12u);
  }

  if (v21)
  {
    [*(a1 + 48) addObject:v21];
  }

LABEL_27:

  v31 = *MEMORY[0x277D85DE8];
}

void sub_25E44F724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __paRoutesOfSubtypeOrProduct_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsString:*(a1 + 32)])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) containsString:v3];
  }

  return v4;
}

id paRouteOfSubtypeOrProduct(void *a1, void *a2, char a3)
{
  v3 = paRoutesOfSubtypeOrProduct(a1, a2, a3);
  v4 = [v3 lastObject];

  return v4;
}

id paCurrentRouteSupportingAudioAccommodations()
{
  v0 = paSupportedWiredRoutes();
  v1 = paSupportedWirelessRoutes();
  v2 = paRouteOfSubtypeOrProduct(v0, v1, 1);

  return v2;
}

BOOL paCurrentRouteSupportsAudioAccommodations()
{
  v0 = paCurrentRouteSupportingAudioAccommodations();
  v1 = v0 != 0;

  return v1;
}

void paCurrentRouteSupportingAudioAccommodationsAsync(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x277D12B60] bluetoothManagerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __paCurrentRouteSupportingAudioAccommodationsAsync_block_invoke;
    block[3] = &unk_279A1D5C0;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void __paCurrentRouteSupportingAudioAccommodationsAsync_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = paSupportedWiredRoutes();
  v2 = paSupportedWirelessRoutes();
  v3 = paRouteOfSubtypeOrProduct(v4, v2, 1);
  (*(v1 + 16))(v1, v3);
}

void paCurrentRouteSupportsAudioAccommodationsAsync(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __paCurrentRouteSupportsAudioAccommodationsAsync_block_invoke;
    v3[3] = &unk_279A1D5E8;
    v4 = v1;
    paCurrentRouteSupportingAudioAccommodationsAsync(v3);
  }
}

BOOL paAnyRouteSupportsAudioAccommodations()
{
  v0 = paSupportedWiredRoutes();
  v1 = paSupportedWirelessRoutes();
  v2 = paRouteOfSubtypeOrProduct(v0, v1, 0);
  v3 = v2 != 0;

  return v3;
}

uint64_t paHeadphoneRouteAvailable()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v0 = [getHUUtilitiesClass() sharedUtilities];
  v1 = [v0 currentPickableAudioRoutes];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __paHeadphoneRouteAvailable_block_invoke;
  v4[3] = &unk_279A1D610;
  v4[4] = &v5;
  [v1 enumerateKeysAndObjectsUsingBlock:v4];
  v2 = *(v6 + 24);

  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_25E44FBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __paHeadphoneRouteAvailable_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v9 = getHURouteKeyRouteNameSymbolLoc_ptr;
  v22 = getHURouteKeyRouteNameSymbolLoc_ptr;
  if (!getHURouteKeyRouteNameSymbolLoc_ptr)
  {
    v10 = HearingUtilitiesLibrary_0();
    v20[3] = dlsym(v10, "HURouteKeyRouteName");
    getHURouteKeyRouteNameSymbolLoc_ptr = v20[3];
    v9 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v9)
  {
    __paRoutesOfSubtypeOrProduct_block_invoke_cold_1();
LABEL_16:
    __paRoutesOfSubtypeOrProduct_block_invoke_cold_1();
    goto LABEL_17;
  }

  v11 = [v8 valueForKey:*v9];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v12 = getHURouteKeyAudioRouteName_HeadsetSymbolLoc_ptr;
  v22 = getHURouteKeyAudioRouteName_HeadsetSymbolLoc_ptr;
  if (!getHURouteKeyAudioRouteName_HeadsetSymbolLoc_ptr)
  {
    v13 = HearingUtilitiesLibrary_0();
    v20[3] = dlsym(v13, "HURouteKeyAudioRouteName_Headset");
    getHURouteKeyAudioRouteName_HeadsetSymbolLoc_ptr = v20[3];
    v12 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v12)
  {
    goto LABEL_16;
  }

  v14 = *v12;
  if ([v11 hasPrefix:v14])
  {

LABEL_13:
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_14;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v15 = getHURouteKeyAudioRouteName_HeadphoneSymbolLoc_ptr;
  v22 = getHURouteKeyAudioRouteName_HeadphoneSymbolLoc_ptr;
  if (!getHURouteKeyAudioRouteName_HeadphoneSymbolLoc_ptr)
  {
    v16 = HearingUtilitiesLibrary_0();
    v20[3] = dlsym(v16, "HURouteKeyAudioRouteName_Headphone");
    getHURouteKeyAudioRouteName_HeadphoneSymbolLoc_ptr = v20[3];
    v15 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v15)
  {
LABEL_17:
    v18 = __paRoutesOfSubtypeOrProduct_block_invoke_cold_1();
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v18);
  }

  v17 = [v11 hasPrefix:*v15];

  if (v17)
  {
    goto LABEL_13;
  }

LABEL_14:
}

id paCurrentBluetoothDeviceSupportingANCAndHeadphoneAccommodations()
{
  v0 = paCurrentRouteSupportingAudioAccommodations();
  v1 = getHURouteKeyRouteUID();
  v2 = [v0 objectForKey:v1];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"-" withString:@":"];

  v4 = [MEMORY[0x277CF3248] sharedInstance];
  v5 = [v4 pairedDevices];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __paCurrentBluetoothDeviceSupportingANCAndHeadphoneAccommodations_block_invoke;
  v10[3] = &unk_279A1D638;
  v6 = v3;
  v11 = v6;
  v7 = [v5 indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 objectAtIndex:v7];
  }

  return v8;
}

id getHURouteKeyRouteUID()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getHURouteKeyRouteUIDSymbolLoc_ptr;
  v8 = getHURouteKeyRouteUIDSymbolLoc_ptr;
  if (!getHURouteKeyRouteUIDSymbolLoc_ptr)
  {
    v1 = HearingUtilitiesLibrary_0();
    v6[3] = dlsym(v1, "HURouteKeyRouteUID");
    getHURouteKeyRouteUIDSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = __paRoutesOfSubtypeOrProduct_block_invoke_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

uint64_t __paCurrentBluetoothDeviceSupportingANCAndHeadphoneAccommodations_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d, %d", objc_msgSend(v3, "vendorId"), objc_msgSend(v3, "productId")];
  v5 = *(a1 + 32);
  v6 = [v3 address];
  if ([v5 containsString:v6])
  {
    v7 = paSupportedWirelessRoutes();
    if ([v7 containsObject:v4] && objc_msgSend(v3, "featureCapability:", 16))
    {
      v8 = [v3 isAppleAudioDevice];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void setCurrentDeviceToTransparencyMode()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = paCurrentBluetoothDeviceSupportingANCAndHeadphoneAccommodations();
  v1 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_impl(&dword_25E445000, v1, OS_LOG_TYPE_DEFAULT, "Setting ANC for %@", &v3, 0xCu);
  }

  [v0 setListeningMode:2];
  v2 = *MEMORY[0x277D85DE8];
}

id paProductsIdentifiersSupportingTransparencyAccommodations()
{
  v0 = paProductsIdentifiersSupportingTransparencyAccommodations_AudioRouteProductIDs;
  if (!paProductsIdentifiersSupportingTransparencyAccommodations_AudioRouteProductIDs)
  {
    v1 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"76, 8206", @"76, 8212", @"76, 8228", 0}];
    v2 = paProductsIdentifiersSupportingTransparencyAccommodations_AudioRouteProductIDs;
    paProductsIdentifiersSupportingTransparencyAccommodations_AudioRouteProductIDs = v1;

    v0 = paProductsIdentifiersSupportingTransparencyAccommodations_AudioRouteProductIDs;
  }

  return v0;
}

id paCurrentRouteSupportingTransparencyAccommodations()
{
  v0 = paProductsIdentifiersSupportingTransparencyAccommodations();
  v1 = paRouteOfSubtypeOrProduct(0, v0, 1);

  return v1;
}

id paPairedDevicesSupportingTransparencyAccommodations()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CF3248] sharedInstance];
  v1 = [v0 pairedDevices];

  v2 = [v1 indexesOfObjectsPassingTest:&__block_literal_global_169];
  v3 = [v1 objectsAtIndexes:v2];
  v4 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_25E445000, v4, OS_LOG_TYPE_DEFAULT, "Found transparency devices %@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t __paPairedDevicesSupportingTransparencyAccommodations_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d, %d", objc_msgSend(v2, "vendorId"), objc_msgSend(v2, "productId")];
  if ([v2 isTemporaryPaired])
  {
    v4 = 0;
  }

  else
  {
    v5 = paProductsIdentifiersSupportingTransparencyAccommodations();
    if ([v5 containsObject:v3] && objc_msgSend(v2, "featureCapability:", 33))
    {
      v4 = [v2 isAppleAudioDevice];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

BOOL paPairedDeviceSupportsTransparencyAccommodations()
{
  v0 = paPairedDevicesSupportingTransparencyAccommodations();
  v1 = [v0 count] != 0;

  return v1;
}

id paCurrentBluetoothDeviceSupportingTransparencyAccommodations()
{
  v0 = paCurrentRouteSupportingTransparencyAccommodations();
  v1 = getHURouteKeyRouteUID();
  v2 = [v0 objectForKey:v1];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"-" withString:@":"];

  v4 = paPairedDevicesSupportingTransparencyAccommodations();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __paCurrentBluetoothDeviceSupportingTransparencyAccommodations_block_invoke;
  v9[3] = &unk_279A1D638;
  v5 = v3;
  v10 = v5;
  v6 = [v4 indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 objectAtIndex:v6];
  }

  return v7;
}

uint64_t __paCurrentBluetoothDeviceSupportingTransparencyAccommodations_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 address];
  if ([v4 containsString:v5])
  {
    v6 = [v3 isAppleAudioDevice];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void paCurrentBluetoothDeviceSupportingTransparencyAccommodationsAsync(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277D12B60] bluetoothManagerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __paCurrentBluetoothDeviceSupportingTransparencyAccommodationsAsync_block_invoke;
  block[3] = &unk_279A1D5C0;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void __paCurrentBluetoothDeviceSupportingTransparencyAccommodationsAsync_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = paCurrentBluetoothDeviceSupportingTransparencyAccommodations();
    (*(v1 + 16))(v1, v2);
  }
}

id paAvailableBluetoothDevicesSupportingTransparencyAccommodations()
{
  v0 = [MEMORY[0x277CBEB18] array];
  v1 = paProductsIdentifiersSupportingTransparencyAccommodations();
  v2 = paRoutesOfSubtypeOrProduct(0, v1, 1);

  v3 = paPairedDevicesSupportingTransparencyAccommodations();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __paAvailableBluetoothDevicesSupportingTransparencyAccommodations_block_invoke;
  v9[3] = &unk_279A1D680;
  v10 = v3;
  v4 = v0;
  v11 = v4;
  v5 = v3;
  [v2 enumerateObjectsUsingBlock:v9];
  v6 = v11;
  v7 = v4;

  return v4;
}

void __paAvailableBluetoothDevicesSupportingTransparencyAccommodations_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = getHURouteKeyRouteUID();
  v5 = [v3 objectForKey:v4];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"-" withString:@":"];

  v7 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __paAvailableBluetoothDevicesSupportingTransparencyAccommodations_block_invoke_2;
  v11[3] = &unk_279A1D638;
  v8 = v6;
  v12 = v8;
  v9 = [v7 indexOfObjectPassingTest:v11];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [*(a1 + 32) objectAtIndex:v9];
    if (v10 && ([*(a1 + 40) containsObject:v10] & 1) == 0)
    {
      [*(a1 + 40) addObject:v10];
    }
  }
}

uint64_t __paAvailableBluetoothDevicesSupportingTransparencyAccommodations_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 address];
  if ([v4 containsString:v5])
  {
    v6 = [v3 isAppleAudioDevice];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL paCurrentRouteSupportsTransparencyAccommodations()
{
  v0 = paCurrentBluetoothDeviceSupportingTransparencyAccommodations();
  v1 = v0 != 0;

  return v1;
}

uint64_t paBluetoothDeviceSupportsSSL(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 getAACPCapabilityInteger:6];
  v2 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v1];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25E445000, v2, OS_LOG_TYPE_DEFAULT, "Found PSE version %@", &v6, 0xCu);
  }

  LODWORD(result) = _os_feature_enabled_impl();
  if (v1 > 2)
  {
    result = result;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getHKUnitClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __HealthKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279A1D6A0;
    v7 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (HealthKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("HKUnit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKUnitClass_block_invoke_cold_1();
  }

  getHKUnitClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
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

Class __getHUUtilitiesClass_block_invoke(uint64_t a1)
{
  HearingUtilitiesLibrary_0();
  result = objc_getClass("HUUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHUUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getHUUtilitiesClass_block_invoke_cold_1();
    return __HearingUtilitiesLibraryCore_block_invoke_0(v3);
  }

  return result;
}

uint64_t __HearingUtilitiesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HearingUtilitiesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getHURouteKeyRouteCurrentlyPickedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HearingUtilitiesLibrary_0();
  result = dlsym(v2, "HURouteKeyRouteCurrentlyPicked");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHURouteKeyRouteCurrentlyPickedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getHURouteKeyAudioRouteSubTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HearingUtilitiesLibrary_0();
  result = dlsym(v2, "HURouteKeyAudioRouteSubType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHURouteKeyAudioRouteSubTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getHURouteKeyRouteNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HearingUtilitiesLibrary_0();
  result = dlsym(v2, "HURouteKeyRouteName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHURouteKeyRouteNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getHURouteKeyRouteUIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HearingUtilitiesLibrary_0();
  result = dlsym(v2, "HURouteKeyRouteUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHURouteKeyRouteUIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class initHMDeviceConfigurations()
{
  if (HearingModeServiceLibrary_sOnce != -1)
  {
    initHMDeviceConfigurations_cold_1();
  }

  result = objc_getClass("HMDeviceConfigurations");
  classHMDeviceConfigurations = result;
  getHMDeviceConfigurationsClass = HMDeviceConfigurationsFunction;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_25E456F00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

uint64_t __HearingUtilitiesLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HearingUtilitiesLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __HearingUtilitiesLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HearingUtilitiesLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class initHMDeviceConfigurations_0()
{
  if (HearingModeServiceLibrary_sOnce_0 != -1)
  {
    initHMServiceClient_cold_1();
  }

  result = objc_getClass("HMDeviceConfigurations");
  classHMDeviceConfigurations_0 = result;
  getHMDeviceConfigurationsClass_0 = HMDeviceConfigurationsFunction_0;
  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __paRoutesOfSubtypeOrProduct_block_invoke_cold_1()
{
  dlerror();
  abort_report_np();
  return __getHKUnitClass_block_invoke_cold_1();
}