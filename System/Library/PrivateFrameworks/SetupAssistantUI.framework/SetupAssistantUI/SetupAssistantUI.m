uint64_t sub_265AC6AE0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265AC6B18()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_265AC95C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCAMediaTimingFunctionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCAMediaTimingFunctionClass_softClass;
  v7 = getCAMediaTimingFunctionClass_softClass;
  if (!getCAMediaTimingFunctionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCAMediaTimingFunctionClass_block_invoke;
    v3[3] = &unk_279BB49D0;
    v3[4] = &v4;
    __getCAMediaTimingFunctionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_265AC96A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkCAFillModeBackwards()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkCAFillModeBackwardsSymbolLoc_ptr;
  v8 = getkCAFillModeBackwardsSymbolLoc_ptr;
  if (!getkCAFillModeBackwardsSymbolLoc_ptr)
  {
    v1 = QuartzCoreLibrary();
    v6[3] = dlsym(v1, "kCAFillModeBackwards");
    getkCAFillModeBackwardsSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkCAFillModeBackwards_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

Class __getCASpringAnimationClass_block_invoke(uint64_t a1)
{
  QuartzCoreLibrary();
  result = objc_getClass("CASpringAnimation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCASpringAnimationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCASpringAnimationClass_block_invoke_cold_1();
    return QuartzCoreLibrary();
  }

  return result;
}

uint64_t QuartzCoreLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!QuartzCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __QuartzCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279BB49F0;
    v5 = 0;
    QuartzCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = QuartzCoreLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!QuartzCoreLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __QuartzCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  QuartzCoreLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCAMediaTimingFunctionClass_block_invoke(uint64_t a1)
{
  QuartzCoreLibrary();
  result = objc_getClass("CAMediaTimingFunction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCAMediaTimingFunctionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCAMediaTimingFunctionClass_block_invoke_cold_1();
    return __getkCAFillModeBackwardsSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getkCAFillModeBackwardsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary();
  result = dlsym(v2, "kCAFillModeBackwards");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCAFillModeBackwardsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCABasicAnimationClass_block_invoke(uint64_t a1)
{
  QuartzCoreLibrary();
  result = objc_getClass("CABasicAnimation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCABasicAnimationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getCABasicAnimationClass_block_invoke_cold_1();
    return [(BFFFinishSetupFlowItemDispositionProvider *)v3 dispositions];
  }

  return result;
}

id getPKSetupAssistantContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPKSetupAssistantContextClass_softClass;
  v7 = getPKSetupAssistantContextClass_softClass;
  if (!getPKSetupAssistantContextClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPKSetupAssistantContextClass_block_invoke;
    v3[3] = &unk_279BB49D0;
    v3[4] = &v4;
    __getPKSetupAssistantContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_265ACAE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPKPaymentSetupAssistantControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPKPaymentSetupAssistantControllerClass_softClass;
  v7 = getPKPaymentSetupAssistantControllerClass_softClass;
  if (!getPKPaymentSetupAssistantControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPKPaymentSetupAssistantControllerClass_block_invoke;
    v3[3] = &unk_279BB49D0;
    v3[4] = &v4;
    __getPKPaymentSetupAssistantControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_265ACAEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPKSetupAssistantContextClass_block_invoke(uint64_t a1)
{
  PassKitUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKSetupAssistantContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKSetupAssistantContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPKSetupAssistantContextClass_block_invoke_cold_1();
    PassKitUILibrary();
  }
}

void PassKitUILibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __PassKitUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279BB4A50;
    v3 = 0;
    PassKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PassKitUILibraryCore_frameworkLibrary)
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

uint64_t __PassKitUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PassKitUILibraryCore_frameworkLibrary = result;
  return result;
}

BFFPaneHeaderView *__getPKPaymentSetupAssistantControllerClass_block_invoke(uint64_t a1)
{
  PassKitUILibrary();
  result = objc_getClass("PKPaymentSetupAssistantController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPaymentSetupAssistantControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPKPaymentSetupAssistantControllerClass_block_invoke_cold_1();
    return [(BFFPaneHeaderView *)v3 initWithFrame:v4, v5];
  }

  return result;
}

double BFFRoundToPixel(double a1)
{
  v2 = *&BFFRoundToPixel_scale;
  if (*&BFFRoundToPixel_scale == -1.0)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];
    BFFRoundToPixel_scale = v4;

    v2 = *&BFFRoundToPixel_scale;
  }

  return round(v2 * a1) / v2;
}

double BFFRoundToPixel_0(double a1)
{
  v2 = *&BFFRoundToPixel_scale_0;
  if (*&BFFRoundToPixel_scale_0 == -1.0)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];
    BFFRoundToPixel_scale_0 = v4;

    v2 = *&BFFRoundToPixel_scale_0;
  }

  return round(v2 * a1) / v2;
}

double BFFRoundRectToPixel(double a1, double a2)
{
  v3 = BFFRoundToPixel_0(a1);
  BFFRoundToPixel_0(a2);
  return v3;
}

id getBKUIPearlEnrollControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBKUIPearlEnrollControllerClass_softClass;
  v7 = getBKUIPearlEnrollControllerClass_softClass;
  if (!getBKUIPearlEnrollControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBKUIPearlEnrollControllerClass_block_invoke;
    v3[3] = &unk_279BB49D0;
    v3[4] = &v4;
    __getBKUIPearlEnrollControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_265AD1B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265AD22E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  _Block_object_dispose((v29 - 112), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getBKUIPearlEnrollErrorDomain()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getBKUIPearlEnrollErrorDomainSymbolLoc_ptr;
  v8 = getBKUIPearlEnrollErrorDomainSymbolLoc_ptr;
  if (!getBKUIPearlEnrollErrorDomainSymbolLoc_ptr)
  {
    v1 = BiometricKitUILibrary();
    v6[3] = dlsym(v1, "BKUIPearlEnrollErrorDomain");
    getBKUIPearlEnrollErrorDomainSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkCAFillModeBackwards_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

Class __getBKUIPearlEnrollControllerClass_block_invoke(uint64_t a1)
{
  BiometricKitUILibrary();
  result = objc_getClass("BKUIPearlEnrollController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBKUIPearlEnrollControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBKUIPearlEnrollControllerClass_block_invoke_cold_1();
    return BiometricKitUILibrary();
  }

  return result;
}

uint64_t BiometricKitUILibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!BiometricKitUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __BiometricKitUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279BB4B50;
    v5 = 0;
    BiometricKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = BiometricKitUILibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!BiometricKitUILibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __BiometricKitUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BiometricKitUILibraryCore_frameworkLibrary = result;
  return result;
}

void __getBKDeviceClass_block_invoke(uint64_t a1)
{
  BiometricKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BKDevice");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBKDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBKDeviceClass_block_invoke_cold_1();
    BiometricKitLibrary();
  }
}

void BiometricKitLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!BiometricKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __BiometricKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279BB4B68;
    v3 = 0;
    BiometricKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!BiometricKitLibraryCore_frameworkLibrary)
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

uint64_t __BiometricKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BiometricKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getBKDeviceDescriptorClass_block_invoke(uint64_t a1)
{
  BiometricKitLibrary();
  result = objc_getClass("BKDeviceDescriptor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBKDeviceDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBKDeviceDescriptorClass_block_invoke_cold_1();
    return __getBKUIPeriocularEnableSplashViewControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getBKUIPeriocularEnableSplashViewControllerClass_block_invoke(uint64_t a1)
{
  BiometricKitUILibrary();
  result = objc_getClass("BKUIPeriocularEnableSplashViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBKUIPeriocularEnableSplashViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBKUIPeriocularEnableSplashViewControllerClass_block_invoke_cold_1();
    return __getBKUIFaceIDSplashViewControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getBKUIFaceIDSplashViewControllerClass_block_invoke(uint64_t a1)
{
  BiometricKitUILibrary();
  result = objc_getClass("BKUIFaceIDSplashViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBKUIFaceIDSplashViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBKUIFaceIDSplashViewControllerClass_block_invoke_cold_1();
    return __getBKUIPearlEnrollErrorDomainSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getBKUIPearlEnrollErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiometricKitUILibrary();
  result = dlsym(v2, "BKUIPearlEnrollErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBKUIPearlEnrollErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_265AD40DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265AD4568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVTUIEnrollTrainingViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!VoiceTriggerUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __VoiceTriggerUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BB4BA8;
    v6 = 0;
    VoiceTriggerUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (VoiceTriggerUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("VTUIEnrollTrainingViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTUIEnrollTrainingViewControllerClass_block_invoke_cold_1();
  }

  getVTUIEnrollTrainingViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VoiceTriggerUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VoiceTriggerUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getOBPrivacyPresenterClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __OnBoardingKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BB4BC0;
    v6 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (OnBoardingKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("OBPrivacyPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBPrivacyPresenterClass_block_invoke_cold_1();
  }

  getOBPrivacyPresenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_265AD7EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _BFFHeightByDeviceSize(void *a1)
{
  v1 = a1;
  v2 = enclosingSizeForView(v1);
  v4 = v3;
  v5 = _useCompactMetrics(v1);

  if (v5)
  {
    if (v4 <= 568.0)
    {
      return 0;
    }

    else if (v4 <= 667.0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (v2 >= v4)
  {
    if (v4 <= 768.0)
    {
      return 3;
    }

    else if (v4 <= 834.0)
    {
      return 6;
    }

    else
    {
      return 8;
    }
  }

  else if (v4 <= 1024.0)
  {
    return 4;
  }

  else if (v4 <= 1112.0)
  {
    return 5;
  }

  else
  {
    return 7;
  }
}

double enclosingSizeForView(void *a1)
{
  v1 = a1;
  v2 = [v1 window];

  if (v2)
  {
    [v1 window];
  }

  else
  {
    [MEMORY[0x277D759A0] mainScreen];
  }
  v3 = ;
  [v3 bounds];
  v5 = v4;

  return v5;
}

BOOL _useCompactMetrics(void *a1)
{
  v1 = a1;
  if (!BFFIsiPad())
  {
    goto LABEL_5;
  }

  if (!v1)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if (!BFFIsiPad() || ([MEMORY[0x277CCA8D8] mainBundle], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "bundleIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277D4D9E0]), v3, v2, (v4 & 1) == 0))
  {
    v6 = [v1 traitCollection];
    v7 = [v6 horizontalSizeClass];

    v5 = v7 == 1;
    if (v7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_5:
  v5 = 1;
LABEL_8:

  return v5;
}

uint64_t _BFFWidthByDeviceSize(void *a1)
{
  v1 = a1;
  v2 = enclosingSizeForView(v1);
  v4 = v3;
  v5 = _useCompactMetrics(v1);

  if (v5)
  {
    if (v2 <= 320.0)
    {
      return 0;
    }

    else if (v2 <= 375.0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (v2 >= v4)
  {
    if (v2 <= 1024.0)
    {
      return 4;
    }

    else if (v2 <= 1112.0)
    {
      return 6;
    }

    else
    {
      return 8;
    }
  }

  else if (v2 <= 768.0)
  {
    return 3;
  }

  else if (v2 <= 834.0)
  {
    return 5;
  }

  else
  {
    return 7;
  }
}

double _BFFCGFloatByDeviceHeight(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = a1;
  if (MGGetSInt32Answer() != 4)
  {
    v18 = _BFFHeightByDeviceSize(v17);
    if (v18 == 7)
    {
      v19 = a7;
    }

    else
    {
      v19 = a8;
    }

    if ((v18 - 4) >= 2)
    {
      v20 = a5;
    }

    else
    {
      v20 = a6;
    }

    if (v18 <= 6)
    {
      v19 = v20;
    }

    if (v18 == 2)
    {
      v21 = a4;
    }

    else
    {
      v21 = a5;
    }

    if (v18)
    {
      v22 = a3;
    }

    else
    {
      v22 = a2;
    }

    if (v18 <= 1)
    {
      v21 = v22;
    }

    if (v18 <= 3)
    {
      a9 = v21;
    }

    else
    {
      a9 = v19;
    }
  }

  return a9;
}

id _BFFHeaderTextStyle()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 bounds];
  v2 = v1;

  v3 = MEMORY[0x277D76A00];
  if (v2 <= 568.0)
  {
    v3 = MEMORY[0x277D76A20];
  }

  v4 = *v3;

  return v4;
}

double _BFFIconTitleBaselineOffset(void *a1)
{
  v1 = MEMORY[0x277D75520];
  v2 = a1;
  v3 = _BFFHeaderTextStyle();
  v4 = [v1 metricsForTextStyle:v3];

  v5 = _CGFloatByIdiom(v2, 44.0, 56.0, 0.0);
  [v4 scaledValueForValue:v5];
  v7 = v6;

  return v7;
}

void _BFFTableInset(void *a1)
{
  v1 = a1;
  if (_useCompactMetrics(v1))
  {
    _BFFCGFloatByDeviceHeight(v1, 16.0, 24.0, 24.0, 0.0, 0.0, 0.0, 0.0, 0.0);
  }

  else
  {
    enclosingSizeForView(v1);
  }
}

double _CGFloatByIdiom(void *a1, double a2, double a3, double a4)
{
  v7 = a1;
  if (MGGetSInt32Answer() != 4)
  {
    if (_useCompactMetrics(v7))
    {
      a4 = a2;
    }

    else
    {
      a4 = a3;
    }
  }

  return a4;
}

void sub_265ADAB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_265ADB450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265ADC65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265ADD56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBiometricKitUIClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!BiometricKitUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __BiometricKitUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BB4E00;
    v6 = 0;
    BiometricKitUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (BiometricKitUILibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
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
  result = objc_getClass("BiometricKitUI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBiometricKitUIClass_block_invoke_cold_1();
  }

  getBiometricKitUIClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BiometricKitUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  BiometricKitUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getBiometricKitClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!BiometricKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __BiometricKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BB4E18;
    v6 = 0;
    BiometricKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (BiometricKitLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
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
  result = objc_getClass("BiometricKit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBiometricKitClass_block_invoke_cold_1();
  }

  getBiometricKitClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BiometricKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  BiometricKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getPABSBiometricControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PasscodeAndBiometricsSettingsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __PasscodeAndBiometricsSettingsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279BB4E30;
    v6 = 0;
    PasscodeAndBiometricsSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PasscodeAndBiometricsSettingsLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("PABSBiometricController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPABSBiometricControllerClass_block_invoke_cold_1();
  }

  getPABSBiometricControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PasscodeAndBiometricsSettingsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PasscodeAndBiometricsSettingsLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_265ADFD50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_265AE28EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t isDeviceXL()
{
  if (isDeviceXL_onceToken != -1)
  {
    isDeviceXL_cold_1();
  }

  return isDeviceXL__isDeviceXL;
}

void __isDeviceXL_block_invoke()
{
  if (BFFIsiPad())
  {
    v1 = [MEMORY[0x277D759A0] mainScreen];
    [v1 _referenceBounds];
    isDeviceXL__isDeviceXL = v0 > 834.0;
  }

  else
  {
    isDeviceXL__isDeviceXL = 0;
  }
}

BOOL BFFIsiPad()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 1;

  return v1;
}

id BFFPointImageOfColor(void *a1)
{
  v1 = a1;
  v5.width = 1.0;
  v5.height = 1.0;
  UIGraphicsBeginImageContext(v5);
  [v1 set];

  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v6.size.width = 1.0;
  v6.size.height = 1.0;
  UIRectFill(v6);
  v2 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v2;
}

BOOL BFFIsiPhone()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 0;

  return v1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_265AE3DB4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_265AE7D70();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_265AE7D60();
}

uint64_t sub_265AE3E50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_265AE7D70();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_265AE3F4C()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_2800341A0);
  swift_endAccess();
  if (v1)
  {
    sub_265AE7E90();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_265AE7718(v6, &qword_2800342A8);
    return 0;
  }
}

void sub_265AE40C8(void *a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_265AE7D80();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265AE7DA0();
  v11 = MEMORY[0x28223BE20]();
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_280034150 != -1)
    {
      swift_once();
    }

    v31 = sub_265AE7D70();
    __swift_project_value_buffer(v31, qword_280034158);

    v72 = sub_265AE7D50();
    v32 = sub_265AE7E40();

    if (os_log_type_enabled(v72, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315650;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280034340);
      v35 = sub_265AE7F30();
      v37 = sub_265AE6C20(v35, v36, aBlock);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_265AE6C20(0xD000000000000026, 0x8000000265AEC840, aBlock);
      *(v33 + 22) = 2080;
      *(v33 + 24) = sub_265AE6C20(a2, a3, aBlock);
      _os_log_impl(&dword_265AC5000, v72, v32, "%s called %s with nil view controller for identifier: %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266769D90](v34, -1, -1);
      MEMORY[0x266769D90](v33, -1, -1);
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  v71 = v12;
  v72 = v11;
  v15 = objc_opt_self();
  v16 = a1;
  if ([v15 isMainThread])
  {
    if (qword_280034190 != -1)
    {
      swift_once();
    }

    v17 = qword_2800341A8;
    v18 = *(qword_2800341A8 + OBJC_IVAR___BFFViewControllerSpinnerManager_weakObjectHashTable);
    v19 = sub_265AE7DD0();
    v72 = [v18 objectForKey_];

    if (v72)
    {
      sub_265AE7778(0, &qword_280034298);
      if (sub_265AE7E80())
      {
        if (qword_280034150 != -1)
        {
          swift_once();
        }

        v20 = sub_265AE7D70();
        __swift_project_value_buffer(v20, qword_280034158);
        v21 = v16;

        v22 = sub_265AE7D50();
        v23 = sub_265AE7E30();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          aBlock[0] = v25;
          *v24 = 136315394;
          v26 = [v21 debugDescription];
          v27 = sub_265AE7DE0();
          v29 = v28;

          v30 = sub_265AE6C20(v27, v29, aBlock);

          *(v24 + 4) = v30;
          *(v24 + 12) = 2080;
          *(v24 + 14) = sub_265AE6C20(a2, a3, aBlock);
          _os_log_impl(&dword_265AC5000, v22, v23, "%s already animating spinner for identifier %s", v24, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266769D90](v25, -1, -1);
          MEMORY[0x266769D90](v24, -1, -1);

LABEL_15:
          return;
        }

LABEL_26:
        v64 = v72;

        return;
      }

      v71 = v16;
      if (qword_280034150 != -1)
      {
        swift_once();
      }

      v53 = sub_265AE7D70();
      __swift_project_value_buffer(v53, qword_280034158);

      v54 = v72;
      v55 = sub_265AE7D50();
      v56 = sub_265AE7E40();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        aBlock[0] = v72;
        *v57 = 136315394;
        *(v57 + 4) = sub_265AE6C20(a2, a3, aBlock);
        *(v57 + 12) = 2080;
        v58 = [v54 debugDescription];
        v59 = sub_265AE7DE0();
        v61 = v60;

        v62 = sub_265AE6C20(v59, v61, aBlock);

        *(v57 + 14) = v62;
        _os_log_impl(&dword_265AC5000, v55, v56, "Attempting to start spinner animation with a identifier %s that is already used for a controller %s", v57, 0x16u);
        v63 = v72;
        swift_arrayDestroy();
        MEMORY[0x266769D90](v63, -1, -1);
        MEMORY[0x266769D90](v57, -1, -1);
      }

      else
      {
      }

      v16 = v71;
    }

    v65 = sub_265AE7DD0();
    swift_beginAccess();
    objc_setAssociatedObject(v16, &unk_2800341A0, v65, 1);
    swift_endAccess();

    v66 = sub_265AE7DD0();
    [v17 startAnimatingSpinnerFor:v16 identifier:v66];

    return;
  }

  v69 = a3;
  v70 = v3;
  if (qword_280034150 != -1)
  {
    swift_once();
  }

  v68 = v8;
  v38 = sub_265AE7D70();
  __swift_project_value_buffer(v38, qword_280034158);
  v39 = sub_265AE7D50();
  v40 = sub_265AE7E40();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v41 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280034340);
    v42 = sub_265AE7F30();
    v44 = v16;
    v45 = a2;
    v46 = sub_265AE6C20(v42, v43, aBlock);

    *(v41 + 4) = v46;
    a2 = v45;
    v16 = v44;
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_265AE6C20(0xD000000000000026, 0x8000000265AEC840, aBlock);
    _os_log_impl(&dword_265AC5000, v39, v40, "%s called on non main thread %s", v41, 0x16u);
    v47 = v67;
    swift_arrayDestroy();
    MEMORY[0x266769D90](v47, -1, -1);
    MEMORY[0x266769D90](v41, -1, -1);
  }

  sub_265AE7778(0, &qword_2800342B0);
  v48 = sub_265AE7E60();
  v49 = swift_allocObject();
  v50 = v69;
  v49[2] = v70;
  v49[3] = v16;
  v49[4] = a2;
  v49[5] = v50;
  aBlock[4] = sub_265AE78E8;
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265AE4BCC;
  aBlock[3] = &block_descriptor_9;
  v51 = _Block_copy(aBlock);
  v52 = v16;

  sub_265AE7D90();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_265AE77E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280034330);
  sub_265AE783C();
  sub_265AE7EA0();
  MEMORY[0x266769420](0, v14, v10, v51);
  _Block_release(v51);

  (*(v68 + 8))(v10, v7);
  v71[1](v14, v72);
}

void sub_265AE4B50(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_265AE7DD0();
  [ObjCClassFromMetadata startAnimatingSpinnerFor:a2 identifier:v4];
}

uint64_t sub_265AE4BCC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_265AE4C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_265AE7D80();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_265AE7DA0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() isMainThread])
  {
    if (qword_280034190 != -1)
    {
      swift_once();
    }

    v12 = qword_2800341A8;
    v34 = sub_265AE7DD0();
    [v12 stopAnimatingSpinnerFor_];
    v13 = v34;
  }

  else
  {
    v33 = v9;
    if (qword_280034150 != -1)
    {
      swift_once();
    }

    v14 = sub_265AE7D70();
    __swift_project_value_buffer(v14, qword_280034158);
    v15 = sub_265AE7D50();
    v16 = sub_265AE7E40();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v30 = v16;
      v18 = v17;
      v31 = swift_slowAlloc();
      v32 = v8;
      aBlock[0] = v31;
      *v18 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280034340);
      v19 = sub_265AE7F30();
      v21 = v11;
      v22 = a1;
      v23 = sub_265AE6C20(v19, v20, aBlock);

      *(v18 + 4) = v23;
      a1 = v22;
      v11 = v21;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_265AE6C20(0xD00000000000001ALL, 0x8000000265AEC820, aBlock);
      v24 = v15;
      _os_log_impl(&dword_265AC5000, v15, v30, "%s called on non main thread %s", v18, 0x16u);
      v25 = v31;
      swift_arrayDestroy();
      v8 = v32;
      MEMORY[0x266769D90](v25, -1, -1);
      MEMORY[0x266769D90](v18, -1, -1);
    }

    else
    {
    }

    sub_265AE7778(0, &qword_2800342B0);
    v26 = sub_265AE7E60();
    v27 = swift_allocObject();
    v27[2] = v34;
    v27[3] = a1;
    v27[4] = a2;
    aBlock[4] = sub_265AE77C0;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265AE4BCC;
    aBlock[3] = &block_descriptor;
    v28 = _Block_copy(aBlock);

    sub_265AE7D90();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_265AE77E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280034330);
    sub_265AE783C();
    sub_265AE7EA0();
    MEMORY[0x266769420](0, v11, v7, v28);
    _Block_release(v28);

    (*(v5 + 8))(v7, v4);
    (*(v33 + 8))(v11, v8);
  }
}

void sub_265AE5194()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = sub_265AE7DD0();
  [ObjCClassFromMetadata stopAnimatingSpinnerFor_];
}

void sub_265AE5270(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v9 = sub_265AE7DB0();
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20]();
  v12 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_265AE7778(0, &qword_2800342B0);
  *v12 = sub_265AE7E60();
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v13 = sub_265AE7DC0();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (*&v5[OBJC_IVAR___BFFViewControllerSpinnerManager_navigationController])
  {
    v14 = *&v5[OBJC_IVAR___BFFViewControllerSpinnerManager_weakObjectHashTable];
    v15 = sub_265AE7DD0();
    [v14 setObject:a1 forKey:v15];

    [v5 setNavigationUserInteractionWithEnabled_];
    v59 = &unk_28777BCF8;
    v9 = swift_dynamicCastObjCProtocolConditional();
    if (v9)
    {
      v16 = a1;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (!v17)
    {
      goto LABEL_13;
    }

    v4 = &_swift_FORCE_LOAD___swiftsimd___SetupAssistantUI;
    v13 = v17;
    v18 = [v17 buttonTray];
    v19 = [v18 allButtons];

    sub_265AE7778(0, &qword_280034320);
    v20 = sub_265AE7E10();

    if (!(v20 >> 62))
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_8;
    }

LABEL_38:
    v21 = sub_265AE7EF0();
LABEL_8:

    if (v21 >= 1)
    {
      swift_unknownObjectRelease();
      v22 = [v13 v4[265]];
      [v22 showButtonsBusy];

      if (qword_280034150 != -1)
      {
        swift_once();
      }

      v23 = sub_265AE7D70();
      __swift_project_value_buffer(v23, qword_280034158);
      v24 = a1;

      v25 = sub_265AE7D50();
      v26 = sub_265AE7E50();

      if (!os_log_type_enabled(v25, v26))
      {
        goto LABEL_25;
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v60 = v29;
      *v27 = 138412546;
      *(v27 + 4) = v24;
      *v28 = a1;
      *(v27 + 12) = 2080;
      v30 = v24;
      *(v27 + 14) = sub_265AE6C20(a2, a3, &v60);
      v31 = "Showing OnBoardingKit button spinner for view controller %@ with identifier %s.";
      goto LABEL_23;
    }

LABEL_13:
    if (v9)
    {
      [v9 startIndeterminateProgressIndicator];
      if (qword_280034150 != -1)
      {
        swift_once();
      }

      v32 = sub_265AE7D70();
      __swift_project_value_buffer(v32, qword_280034158);
      v33 = a1;

      v25 = sub_265AE7D50();
      v34 = sub_265AE7E50();

      if (!os_log_type_enabled(v25, v34))
      {
        swift_unknownObjectRelease();
        goto LABEL_25;
      }

      v27 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v60 = v29;
      *v27 = 138412546;
      *(v27 + 4) = v33;
      *v35 = a1;
      *(v27 + 12) = 2080;
      v36 = v33;
      *(v27 + 14) = sub_265AE6C20(a2, a3, &v60);
      swift_unknownObjectRelease();
      _os_log_impl(&dword_265AC5000, v25, v34, "Showing second party spinner for view controller %@ with identifier %s.", v27, 0x16u);
      sub_265AE7718(v35, &qword_280034318);
      v37 = v35;
LABEL_24:
      MEMORY[0x266769D90](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x266769D90](v29, -1, -1);
      MEMORY[0x266769D90](v27, -1, -1);
LABEL_25:

      return;
    }

    v44 = [objc_opt_self() sharedSpinnerManager];
    if (v44)
    {
      v45 = v44;
      v46 = sub_265AE7DD0();
      [v45 startAnimatingInNavigationItemOfViewController:a1 forIdentifier:v46];

      v47 = *&v5[OBJC_IVAR___BFFViewControllerSpinnerManager_exceptionClassList];
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v49 = NSStringFromClass(ObjCClassFromMetadata);
      v50 = sub_265AE7DE0();
      v52 = v51;

      LOBYTE(v47) = sub_265AE5BF8(v50, v52, v47);

      if (v47)
      {
        if (qword_280034150 != -1)
        {
          swift_once();
        }

        v53 = sub_265AE7D70();
        __swift_project_value_buffer(v53, qword_280034158);
        v54 = a1;

        v25 = sub_265AE7D50();
        v26 = sub_265AE7E50();

        if (!os_log_type_enabled(v25, v26))
        {
          goto LABEL_25;
        }

        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v60 = v29;
        *v27 = 138412546;
        *(v27 + 4) = v54;
        *v28 = a1;
        *(v27 + 12) = 2080;
        v55 = v54;
        *(v27 + 14) = sub_265AE6C20(a2, a3, &v60);
        v31 = "Showing legacy spinner for view controller %@ with identifier %s.";
      }

      else
      {
        if (qword_280034150 != -1)
        {
          swift_once();
        }

        v56 = sub_265AE7D70();
        __swift_project_value_buffer(v56, qword_280034158);
        v57 = a1;

        v25 = sub_265AE7D50();
        v26 = sub_265AE7E40();

        if (!os_log_type_enabled(v25, v26))
        {
          goto LABEL_25;
        }

        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v60 = v29;
        *v27 = 138412546;
        *(v27 + 4) = v57;
        *v28 = a1;
        *(v27 + 12) = 2080;
        v58 = v57;
        *(v27 + 14) = sub_265AE6C20(a2, a3, &v60);
        v31 = "Showing legacy spinner for view controller %@ with identifier %s. Please move to use SecondPartyProgressIndicatorDisplayable";
      }

      goto LABEL_23;
    }

    goto LABEL_40;
  }

  v38 = [objc_opt_self() sharedSpinnerManager];
  if (v38)
  {
    v39 = v38;
    v40 = sub_265AE7DD0();
    [v39 startAnimatingInNavigationItemOfViewController:a1 forIdentifier:v40];

    if (qword_280034150 != -1)
    {
      swift_once();
    }

    v41 = sub_265AE7D70();
    __swift_project_value_buffer(v41, qword_280034158);
    v42 = a1;

    v25 = sub_265AE7D50();
    v26 = sub_265AE7E40();

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_25;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v60 = v29;
    *v27 = 138412546;
    *(v27 + 4) = v42;
    *v28 = a1;
    *(v27 + 12) = 2080;
    v43 = v42;
    *(v27 + 14) = sub_265AE6C20(a2, a3, &v60);
    v31 = "Showing legacy spinner for view controller %@ with identifier %s without navigationController.";
LABEL_23:
    _os_log_impl(&dword_265AC5000, v25, v26, v31, v27, 0x16u);
    sub_265AE7718(v28, &qword_280034318);
    v37 = v28;
    goto LABEL_24;
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_265AE5BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_265AE7F10();
  sub_265AE7DF0();
  v6 = sub_265AE7F20();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_265AE7F00() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_265AE5D68(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_265AE7DB0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = (v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_265AE7778(0, &qword_2800342B0);
  *v9 = sub_265AE7E60();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_265AE7DC0();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_47:
    swift_once();
LABEL_11:
    v25 = sub_265AE7D70();
    __swift_project_value_buffer(v25, qword_280034158);

    v26 = sub_265AE7D50();
    v27 = sub_265AE7E40();

    if (!os_log_type_enabled(v26, v27))
    {
LABEL_18:

      return;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v68 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_265AE6C20(a1, a2, &v68);
    v30 = "Stopped legacy spinner with identifier %s without navigationController.";
LABEL_17:
    _os_log_impl(&dword_265AC5000, v26, v27, v30, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x266769D90](v29, -1, -1);
    MEMORY[0x266769D90](v28, -1, -1);
    goto LABEL_18;
  }

  if (!*&v3[OBJC_IVAR___BFFViewControllerSpinnerManager_navigationController])
  {
    v22 = [objc_opt_self() sharedSpinnerManager];
    if (!v22)
    {
      __break(1u);
      goto LABEL_50;
    }

    v23 = v22;
    v24 = sub_265AE7DD0();
    [v23 stopAnimatingForIdentifier_];

    if (qword_280034150 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

  v11 = OBJC_IVAR___BFFViewControllerSpinnerManager_weakObjectHashTable;
  v12 = *&v3[OBJC_IVAR___BFFViewControllerSpinnerManager_weakObjectHashTable];
  v13 = sub_265AE7DD0();
  v14 = [v12 objectForKey_];

  if (!v14)
  {
    if (qword_280034150 != -1)
    {
      swift_once();
    }

    v31 = sub_265AE7D70();
    __swift_project_value_buffer(v31, qword_280034158);

    v26 = sub_265AE7D50();
    v27 = sub_265AE7E20();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_18;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v68 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_265AE6C20(a1, a2, &v68);
    v30 = "Unnecessary call to stopAnimating as no controller was found identifier %s";
    goto LABEL_17;
  }

  v15 = *&v3[v11];
  v16 = sub_265AE7DD0();
  [v15 removeObjectForKey_];

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v14;
  }

  v67[2] = &unk_28777BCF8;
  v19 = swift_dynamicCastObjCProtocolConditional();
  if (!v19)
  {
    if (!v17)
    {
LABEL_34:
      v56 = [objc_opt_self() sharedSpinnerManager];
      if (v56)
      {
        v57 = v56;
        v58 = sub_265AE7DD0();
        [v57 stopAnimatingForIdentifier_];

        if (qword_280034150 != -1)
        {
          swift_once();
        }

        v59 = sub_265AE7D70();
        __swift_project_value_buffer(v59, qword_280034158);
        v60 = v14;

        v48 = sub_265AE7D50();
        v61 = sub_265AE7E50();

        if (!os_log_type_enabled(v48, v61))
        {
          goto LABEL_41;
        }

        v50 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v68 = v63;
        *v50 = 138412546;
        *(v50 + 4) = v60;
        *v62 = v14;
        *(v50 + 12) = 2080;
        v64 = v60;
        *(v50 + 14) = sub_265AE6C20(a1, a2, &v68);
        _os_log_impl(&dword_265AC5000, v48, v61, "Stopped legacy spinner for view controller %@ with identifier %s.", v50, 0x16u);
        sub_265AE7718(v62, &qword_280034318);
        MEMORY[0x266769D90](v62, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v63);
        v55 = v63;
        goto LABEL_39;
      }

LABEL_50:
      __break(1u);
      return;
    }

    v20 = 0;
LABEL_21:
    v32 = [v17 buttonTray];
    v33 = [v32 allButtons];

    sub_265AE7778(0, &qword_280034320);
    v34 = sub_265AE7E10();

    if (v34 >> 62)
    {
      v35 = sub_265AE7EF0();
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v35 >= 1)
    {
      swift_unknownObjectRelease();
      v36 = [v17 buttonTray];
      [v36 showButtonsAvailable];

      if (qword_280034150 != -1)
      {
        swift_once();
      }

      v37 = sub_265AE7D70();
      __swift_project_value_buffer(v37, qword_280034158);
      v38 = v14;

      v39 = sub_265AE7D50();
      v40 = sub_265AE7E50();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v67[0] = a1;
        v44 = v43;
        v68 = v43;
        *v41 = 138412546;
        *(v41 + 4) = v38;
        *v42 = v14;
        *(v41 + 12) = 2080;
        v45 = v38;
        *(v41 + 14) = sub_265AE6C20(v67[0], a2, &v68);
        _os_log_impl(&dword_265AC5000, v39, v40, "Stopped OnBoardingKit button spinner for view controller %@ with identifier %s", v41, 0x16u);
        sub_265AE7718(v42, &qword_280034318);
        MEMORY[0x266769D90](v42, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x266769D90](v44, -1, -1);
        MEMORY[0x266769D90](v41, -1, -1);
      }

      goto LABEL_42;
    }

    if (v20)
    {
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  v20 = v19;
  v21 = v14;
  if (v17)
  {
    goto LABEL_21;
  }

LABEL_30:
  [v20 stopIndeterminateProgressIndicator];
  if (qword_280034150 != -1)
  {
    swift_once();
  }

  v46 = sub_265AE7D70();
  __swift_project_value_buffer(v46, qword_280034158);
  v47 = v14;

  v48 = sub_265AE7D50();
  v49 = sub_265AE7E50();

  if (!os_log_type_enabled(v48, v49))
  {
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  v50 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  v67[0] = a1;
  v53 = v52;
  v68 = v52;
  *v50 = 138412546;
  *(v50 + 4) = v47;
  *v51 = v14;
  *(v50 + 12) = 2080;
  v54 = v47;
  *(v50 + 14) = sub_265AE6C20(v67[0], a2, &v68);
  swift_unknownObjectRelease();
  _os_log_impl(&dword_265AC5000, v48, v49, "Stopped second party spinner for view controller %@ with identifier %s.", v50, 0x16u);
  sub_265AE7718(v51, &qword_280034318);
  MEMORY[0x266769D90](v51, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v53);
  v55 = v53;
LABEL_39:
  MEMORY[0x266769D90](v55, -1, -1);
  MEMORY[0x266769D90](v50, -1, -1);
LABEL_41:

LABEL_42:
  [v3 setNavigationUserInteractionWithEnabled_];
  v67[1] = &unk_287795DC0;
  v65 = swift_dynamicCastObjCProtocolConditional();
  if (v65)
  {
    v66 = v65;
    if ([v65 respondsToSelector_])
    {
      [v66 viewControllerSpinnerManagerDidStopAnimatingSpinner_];
    }
  }
}

void sub_265AE681C(char a1)
{
  v3 = OBJC_IVAR___BFFViewControllerSpinnerManager_navigationController;
  v4 = *(v1 + OBJC_IVAR___BFFViewControllerSpinnerManager_navigationController);
  if (!v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v5 = [v4 navigationBar];
  if (a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_opt_self() tertiaryLabelColor];
  }

  [v5 setTintColor_];

  v7 = *(v1 + v3);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [v7 navigationBar];
  [v8 setUserInteractionEnabled_];
}

void __swiftcall BFFViewControllerSpinnerManager.init()(BFFViewControllerSpinnerManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id BFFViewControllerSpinnerManager.init()()
{
  v1 = OBJC_IVAR___BFFViewControllerSpinnerManager_weakObjectHashTable;
  *&v0[v1] = [objc_opt_self() strongToWeakObjectsMapTable];
  *&v0[OBJC_IVAR___BFFViewControllerSpinnerManager_navigationController] = 0;
  v2 = OBJC_IVAR___BFFViewControllerSpinnerManager_exceptionClassList;
  v3 = sub_265AE74A8(&unk_287761E30);
  swift_arrayDestroy();
  *&v0[v2] = v3;
  v5.receiver = v0;
  v5.super_class = BFFViewControllerSpinnerManager;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_265AE6BEC()
{
  result = [objc_allocWithZone(BFFViewControllerSpinnerManager) init];
  qword_2800341A8 = result;
  return result;
}

unint64_t sub_265AE6C20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_265AE6CEC(v11, 0, 0, 1, a1, a2);
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
    sub_265AE7670(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_265AE6CEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_265AE6DF8(a5, a6);
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
    result = sub_265AE7EE0();
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

uint64_t sub_265AE6DF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_265AE6E44(a1, a2);
  sub_265AE6F74(&unk_287761E08);
  return v3;
}

uint64_t sub_265AE6E44(uint64_t a1, unint64_t a2)
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

  v6 = sub_265AE7060(v5, 0);
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

  result = sub_265AE7EE0();
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
        v10 = sub_265AE7E00();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_265AE7060(v10, 0);
        result = sub_265AE7EC0();
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

uint64_t sub_265AE6F74(uint64_t result)
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

  result = sub_265AE70D4(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_265AE7060(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800342A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_265AE70D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800342A0);
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

void sub_265AE71C8(void *a1, uint64_t a2)
{
  v3 = v2;
  [v3 setNavigationUserInteractionWithEnabled_];
  v6 = [a1 viewControllers];
  v7 = sub_265AE7778(0, &qword_280034298);
  v8 = sub_265AE7E10();

  if (v8 >> 62)
  {
    v9 = sub_265AE7EF0();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v9 < 2;
  v11 = v9 - 2;
  if (v10 || a2 != 1)
  {
    return;
  }

  v13 = [a1 viewControllers];
  v14 = sub_265AE7E10();

  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x266769480](v11, v14);
  }

  else
  {
    if (v11 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }

    v15 = *(v14 + 8 * v11 + 32);
  }

  v25 = v15;

  v16 = sub_265AE3F4C();
  if (v17)
  {
    v13 = v17;
    v7 = v16;
    v18 = sub_265AE7DD0();
    [v3 stopAnimatingSpinnerFor_];

    if (qword_280034150 == -1)
    {
LABEL_13:
      v19 = sub_265AE7D70();
      __swift_project_value_buffer(v19, qword_280034158);

      v20 = sub_265AE7D50();
      v21 = sub_265AE7E20();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v26 = v23;
        *v22 = 136315138;
        v24 = sub_265AE6C20(v7, v13, &v26);

        *(v22 + 4) = v24;
        _os_log_impl(&dword_265AC5000, v20, v21, "NavigationController.didShow called stop spinner for identifier %s.", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x266769D90](v23, -1, -1);
        MEMORY[0x266769D90](v22, -1, -1);

        return;
      }

      goto LABEL_16;
    }

LABEL_22:
    swift_once();
    goto LABEL_13;
  }

LABEL_16:
}

uint64_t sub_265AE74A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280034348);
    v3 = sub_265AE7EB0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_265AE7F10();

      sub_265AE7DF0();
      result = sub_265AE7F20();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_265AE7F00();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_265AE7670(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_265AE7718(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_265AE7778(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_265AE77E4()
{
  result = qword_280034328;
  if (!qword_280034328)
  {
    sub_265AE7D80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280034328);
  }

  return result;
}

unint64_t sub_265AE783C()
{
  result = qword_280034338;
  if (!qword_280034338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280034330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280034338);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getkCAFillModeBackwards_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __getCASpringAnimationClass_block_invoke_cold_1(v0);
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