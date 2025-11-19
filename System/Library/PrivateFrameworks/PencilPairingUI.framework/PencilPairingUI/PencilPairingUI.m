void sub_25E1BFDB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E1C2978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PKLocalizedDrawingBundleForLanguage(void *a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = MEMORY[0x277CCA8D8];
    v7 = [v4 localizations];
    v15[0] = v3;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v9 = [v6 preferredLocalizationsFromArray:v7 forPreferences:v8];
    v10 = [v9 firstObject];

    if (v10)
    {
      v11 = v10;

      v3 = v11;
    }

    v12 = [v5 pathForResource:v3 ofType:@"lproj"];
    if ([v12 length])
    {
      v13 = [MEMORY[0x277CCA8D8] bundleWithPath:v12];

      if (v13)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v13 = v5;
LABEL_9:

  return v13;
}

id PKLocalizedStringForLanguageInBundle(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a1;
  v9 = PKLocalizedDrawingBundleForLanguage(a2, a3);
  v10 = [v9 localizedStringForKey:v8 value:0 table:v7];

  return v10;
}

void sub_25E1C6270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PencilPairingUIBundle()
{
  if (PencilPairingUIBundle_onceToken != -1)
  {
    PencilPairingUIBundle_cold_1();
  }

  v1 = PencilPairingUIBundle___PencilPairingUIBundle;

  return v1;
}

void __PencilPairingUIBundle_block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.PencilPairingUI"];
  v1 = PencilPairingUIBundle___PencilPairingUIBundle;
  PencilPairingUIBundle___PencilPairingUIBundle = v0;

  if (!PencilPairingUIBundle___PencilPairingUIBundle)
  {
    v2 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_25E1BC000, v2, OS_LOG_TYPE_DEFAULT, "__PencilPairingUIBundle is nil, try loading with a class", &v6, 2u);
    }

    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = PencilPairingUIBundle___PencilPairingUIBundle;
    PencilPairingUIBundle___PencilPairingUIBundle = v3;
  }

  v5 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = PencilPairingUIBundle___PencilPairingUIBundle;
    _os_log_impl(&dword_25E1BC000, v5, OS_LOG_TYPE_DEFAULT, "__PencilPairingUIBundle: %p", &v6, 0xCu);
  }
}

void sub_25E1C81B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&a31);
  objc_destroyWeak((v32 - 160));
  _Unwind_Resume(a1);
}

void PNPChargingStatusConfigureAutoDismissWithTime(void *a1, void *a2, double a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
  v8 = [v6 autoDismissBlock];

  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = [v6 autoDismissDate];
  v10 = [v9 compare:v7];

  if (v10 != -1)
  {
    v11 = [v6 autoDismissBlock];
    dispatch_block_cancel(v11);

LABEL_4:
    objc_initWeak(&location, v6);
    objc_initWeak(&from, v5);
    [v6 setAutoDismissDate:v7];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __PNPChargingStatusConfigureAutoDismissWithTime_block_invoke;
    v20 = &unk_279A0A448;
    objc_copyWeak(&v21, &location);
    objc_copyWeak(&v22, &from);
    v12 = dispatch_block_create(0, &v17);
    [v6 setAutoDismissBlock:{v12, v17, v18, v19, v20}];

    v13 = dispatch_time(0, (a3 * 1000000000.0));
    v14 = MEMORY[0x277D85CD0];
    v15 = [v6 autoDismissBlock];
    v16 = MEMORY[0x277D85CD0];
    dispatch_after(v13, MEMORY[0x277D85CD0], v15);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void sub_25E1CA24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void __PNPChargingStatusConfigureAutoDismissWithTime_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = v3;
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __PNPChargingStatusConfigureAutoDismissWithTime_block_invoke_2;
    v5[3] = &unk_279A0A060;
    v6 = v3;
    PNPPlatterDismissPlatterContainerView(WeakRetained, 1, v5);
    [WeakRetained setAutoDismissBlock:0];
    [WeakRetained setAutoDismissDate:0];
  }
}

void sub_25E1CAF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E1CB5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _PNPSignpostLog()
{
  if (_PNPSignpostLog_onceToken != -1)
  {
    _PNPSignpostLog_cold_1();
  }

  v1 = _PNPSignpostLog____PNPSignpostLog;

  return v1;
}

void sub_25E1CCF90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E1D214C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E1D2ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E1D32C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E1D3854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getFMUIDiscoveredAccessoryClass_block_invoke(uint64_t a1)
{
  FindMyUICoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FMUIDiscoveredAccessory");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFMUIDiscoveredAccessoryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getFMUIDiscoveredAccessoryClass_block_invoke_cold_1();
    FindMyUICoreLibrary();
  }
}

void FindMyUICoreLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!FindMyUICoreLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __FindMyUICoreLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279A0A5E8;
    v3 = 0;
    FindMyUICoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!FindMyUICoreLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __FindMyUICoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FindMyUICoreLibraryCore_frameworkLibrary = result;
  return result;
}

PNPWizardInkWeightControl *__getFMUIAccessoryOnboardingCoordinatorClass_block_invoke(uint64_t a1)
{
  FindMyUICoreLibrary();
  result = objc_getClass("FMUIAccessoryOnboardingCoordinator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFMUIAccessoryOnboardingCoordinatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getFMUIAccessoryOnboardingCoordinatorClass_block_invoke_cold_1();
    return [(PNPWizardInkWeightControl *)v3 initWithFrame:v4, v5];
  }

  return result;
}

double PNPWizardScratchpadOpacitySliderAnimationParameters@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_25E1EA9A0;
  result = 1.0;
  *(a1 + 24) = xmmword_25E1EA9B0;
  return result;
}

id getOpaqueTouchValue(void *a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = IOHIDEventSystemClientCreateWithType();
  if (v2)
  {
    v3 = v2;
    v17[0] = @"PrimaryUsagePage";
    v17[1] = @"PrimaryUsage";
    v18[0] = &unk_286FED2F0;
    v18[1] = &unk_286FED308;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    IOHIDEventSystemClientSetMatching();
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = IOHIDEventSystemClientCopyServices(v3);
    v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = IOHIDServiceClientCopyProperty(*(*(&v12 + 1) + 8 * v9), v1);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(__CFArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v10 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_25E1DC0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25E1DFAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

float BatteryLevelPercentage(float a1)
{
  if (BatteryLevelPercentage_onceToken != -1)
  {
    BatteryLevelPercentage_cold_1();
  }

  if (BatteryLevelPercentage___demoBatteryLevelMode == 3)
  {
    return *&BatteryLevelPercentage___demoBatteryLevel;
  }

  if (BatteryLevelPercentage___demoBatteryLevelMode == 2)
  {
    if (*&BatteryLevelPercentage___demoBatteryLevel <= a1)
    {
      return *&BatteryLevelPercentage___demoBatteryLevel;
    }
  }

  else if (BatteryLevelPercentage___demoBatteryLevelMode == 1 && *&BatteryLevelPercentage___demoBatteryLevel > a1)
  {
    return *&BatteryLevelPercentage___demoBatteryLevel;
  }

  return a1;
}

void __BatteryLevelPercentage_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  BatteryLevelPercentage___demoBatteryLevelMode = [v0 integerForKey:@"internalSettings.pencil.demo.batteryLevelMode"];

  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v1 floatForKey:@"internalSettings.pencil.demo.batteryLevel"];
  BatteryLevelPercentage___demoBatteryLevel = v2;

  if (*&BatteryLevelPercentage___demoBatteryLevel == 0.0)
  {
    BatteryLevelPercentage___demoBatteryLevel = 1117126656;
  }
}

void _PNPPlatterContainerViewMoveToPresented(void *a1, char a2, int a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = ___PNPPlatterContainerViewMoveToPresented_block_invoke;
  v15[3] = &unk_279A0A100;
  v9 = v7;
  v16 = v9;
  v17 = a2;
  v10 = MEMORY[0x25F8AE9F0](v15);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = ___PNPPlatterContainerViewMoveToPresented_block_invoke_2;
  v13[3] = &unk_279A0A1C0;
  v11 = v8;
  v14 = v11;
  v12 = MEMORY[0x25F8AE9F0](v13);
  if (a3)
  {
    [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:2 animations:v10 completion:v12];
  }

  else
  {
    v10[2](v10);
    v12[2](v12, 1);
  }
}

Swift::Void __swiftcall UIView.ppuiSetGlassBackground()()
{
  sub_25E1E5FFC();
  MEMORY[0x28223BE20]();
  sub_25E1E5FEC();
  v0[3] = sub_25E1E600C();
  v0[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v0);
  sub_25E1E601C();
  sub_25E1E605C();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_25E1E5A00(void *a1)
{
  sub_25E1E5FFC();
  MEMORY[0x28223BE20]();
  sub_25E1E604C();
  sub_25E1E603C();
  sub_25E1E602C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_25E1E5FEC();
  v3[3] = sub_25E1E600C();
  v3[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_25E1E601C();
  sub_25E1E605C();
}

Swift::Void __swiftcall UIView.ppuiSetCapsuleCornerMaskingConfiguration()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0580);
  MEMORY[0x28223BE20]();
  v1 = &v3 - v0;
  sub_25E1E5FCC();
  v2 = sub_25E1E5FDC();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_25E1E606C();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_25E1E5C2C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0580);
  MEMORY[0x28223BE20]();
  v3 = &v6 - v2;
  sub_25E1E604C();
  sub_25E1E603C();
  sub_25E1E602C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1;
  sub_25E1E5FCC();
  v5 = sub_25E1E5FDC();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  sub_25E1E606C();
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}