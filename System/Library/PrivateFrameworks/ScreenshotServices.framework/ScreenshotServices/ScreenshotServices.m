void sub_1D9E07900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getVKCImageAnalyzerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVKCImageAnalyzerClass_softClass;
  v7 = getVKCImageAnalyzerClass_softClass;
  if (!getVKCImageAnalyzerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVKCImageAnalyzerClass_block_invoke;
    v3[3] = &unk_1E8590188;
    v3[4] = &v4;
    __getVKCImageAnalyzerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D9E079E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getVKImageAnalysisBarButtonItemClass_block_invoke(uint64_t a1)
{
  VisionKitCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VKImageAnalysisBarButtonItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVKImageAnalysisBarButtonItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getVKImageAnalysisBarButtonItemClass_block_invoke_cold_1();
    VisionKitCoreLibrary();
  }
}

void VisionKitCoreLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!VisionKitCoreLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __VisionKitCoreLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E85901A8;
    v3 = 0;
    VisionKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!VisionKitCoreLibraryCore_frameworkLibrary)
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

uint64_t __VisionKitCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VisionKitCoreLibraryCore_frameworkLibrary = result;
  return result;
}

double __getVKCImageAnalyzerClass_block_invoke(uint64_t a1)
{
  VisionKitCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("VKCImageAnalyzer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getVKCImageAnalyzerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getVKCImageAnalyzerClass_block_invoke_cold_1();
    return SSLargestSizeWithinSizeWithAspectRatio(v3, v4, v5);
  }

  return result;
}

double SSLargestSizeWithinSizeWithAspectRatio(double result, double a2, double a3)
{
  v3 = result / a3;
  v4 = a2 * a3;
  if (v3 > a2 && v4 <= result)
  {
    return v4;
  }

  return result;
}

double SSizeToFitSizeInAspectRatioOfSize(double a1, double a2, double a3, double a4)
{
  v4 = a1 / a2;
  v5 = a3 / v4;
  result = a4 * v4;
  if (v5 <= a4 || result > a3)
  {
    return a3;
  }

  return result;
}

BOOL SSRectEqualToRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = 0;
  if (vabdd_f64(a1, a5) < 0.001 && vabdd_f64(a2, a6) < 0.001)
  {
    v9 = vabdd_f64(a3, a7) < 0.001;
    return vabdd_f64(a4, a8) < 0.001 && v9;
  }

  return result;
}

CGFloat SSInsetsOfRectInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v18 = a2 - a6;
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  CGRectGetMaxX(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectGetMaxX(v20);
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  CGRectGetMaxY(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  CGRectGetMaxY(v22);
  return v18;
}

double SSRoundSizeToScale()
{
  UIRoundToScale();
  v1 = v0;
  UIRoundToScale();
  return v1;
}

double SSRoundRectToScale()
{
  UIRoundToScale();
  v1 = v0;
  UIRoundToScale();
  UIRoundToScale();
  UIRoundToScale();
  return v1;
}

double SSRectSubtractingRect(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v11 = a1;
  v42 = CGRectIntersection(*&a1, *&a5);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  if (!CGRectIsNull(v42))
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    MaxY = CGRectGetMaxY(v43);
    v44.origin.x = v11;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    MinY = CGRectGetMinY(v44);
    v45.origin.x = v11;
    v45.origin.y = a2;
    v45.size.width = a3;
    v45.size.height = a4;
    v37 = CGRectGetMaxY(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v38 = v37 - CGRectGetMaxY(v46);
    v47.origin.x = v11;
    v47.origin.y = a2;
    v47.size.width = a3;
    v47.size.height = a4;
    v33 = v38 * CGRectGetWidth(v47);
    v36 = height;
    v39 = x;
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v16 = CGRectGetMinY(v48);
    v49.origin.x = v11;
    v49.origin.y = a2;
    v49.size.width = a3;
    v49.size.height = a4;
    v17 = v16 - CGRectGetMinY(v49);
    v50.origin.x = v11;
    v50.origin.y = a2;
    v50.size.width = a3;
    v50.size.height = a4;
    v18 = v17 * CGRectGetWidth(v50);
    v19 = v33;
    if (v18 <= v33)
    {
      v35 = MaxY - MinY;
      v21 = CGRectMinYEdge;
    }

    else
    {
      v51.origin.x = v11;
      v51.origin.y = a2;
      v51.size.width = a3;
      v51.size.height = a4;
      v20 = CGRectGetMaxY(v51);
      v52.size.height = v36;
      v52.origin.x = v39;
      v52.origin.y = y;
      v52.size.width = width;
      v35 = v20 - CGRectGetMinY(v52);
      v21 = CGRectMaxYEdge;
      v19 = v18;
    }

    v53.origin.x = v11;
    v53.origin.y = a2;
    v53.size.width = a3;
    v53.size.height = a4;
    MaxX = CGRectGetMaxX(v53);
    v54.size.height = v36;
    v54.origin.x = v39;
    v54.origin.y = y;
    v54.size.width = width;
    v23 = MaxX - CGRectGetMaxX(v54);
    v55.origin.x = v11;
    v55.origin.y = a2;
    v55.size.width = a3;
    v55.size.height = a4;
    v24 = v23 * CGRectGetHeight(v55);
    if (v24 > v19)
    {
      v56.size.height = v36;
      v56.origin.x = v39;
      v56.origin.y = y;
      v56.size.width = width;
      v25 = CGRectGetMaxX(v56);
      v57.origin.x = v11;
      v57.origin.y = a2;
      v57.size.width = a3;
      v57.size.height = a4;
      v21 = CGRectMinXEdge;
      v35 = v25 - CGRectGetMinX(v57);
      v19 = v24;
    }

    v58.size.height = v36;
    v58.origin.x = v39;
    v58.origin.y = y;
    v58.size.width = width;
    MinX = CGRectGetMinX(v58);
    v59.origin.x = v11;
    v59.origin.y = a2;
    v59.size.width = a3;
    v59.size.height = a4;
    v27 = MinX - CGRectGetMinX(v59);
    v60.origin.x = v11;
    v60.origin.y = a2;
    v60.size.width = a3;
    v60.size.height = a4;
    v28 = CGRectGetHeight(v60);
    v29 = v35;
    if (v27 * v28 > v19)
    {
      v61.origin.x = v11;
      v61.origin.y = a2;
      v61.size.width = a3;
      v61.size.height = a4;
      v30 = CGRectGetMaxX(v61);
      v62.size.height = v36;
      v62.origin.x = v39;
      v62.origin.y = y;
      v62.size.width = width;
      v29 = v30 - CGRectGetMinX(v62);
      v21 = CGRectMaxXEdge;
    }

    memset(&remainder, 0, sizeof(remainder));
    memset(&slice, 0, sizeof(slice));
    v63.origin.x = v11;
    v63.origin.y = a2;
    v63.size.width = a3;
    v63.size.height = a4;
    CGRectDivide(v63, &slice, &remainder, v29, v21);
    return remainder.origin.x;
  }

  return v11;
}

BOOL SSRectIsValid(double a1, double a2, double a3, double a4)
{
  result = 0;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return fabs(a4) != INFINITY;
  }

  return result;
}

void sub_1D9E08D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RecapLibraryCore()
{
  if (!RecapLibraryCore_frameworkLibrary)
  {
    RecapLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return RecapLibraryCore_frameworkLibrary;
}

uint64_t __RecapLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  RecapLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getRCPMovieClass_block_invoke(uint64_t a1)
{
  if (!RecapLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("RCPMovie");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRCPMovieClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __getRCPMovieClass_block_invoke_cold_1();
    return +[(SSUIServiceRequest *)v4];
  }

  return result;
}

void sub_1D9E09C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1D9E0A064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 96), 8);
  _Unwind_Resume(a1);
}

id _SSSignpostLog()
{
  if (_SSSignpostLog_onceToken != -1)
  {
    _SSSignpostLog_cold_1();
  }

  v1 = _SSSignpostLog____SSSignpostLog;

  return v1;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__getMAImageCaptioningSetCaptionSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MediaAccessibilityLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MediaAccessibilityLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8590508;
    v7 = 0;
    MediaAccessibilityLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MediaAccessibilityLibraryCore_frameworkLibrary;
    if (MediaAccessibilityLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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

  v2 = MediaAccessibilityLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MAImageCaptioningSetCaption");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMAImageCaptioningSetCaptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaAccessibilityLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaAccessibilityLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id getUMUserManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUMUserManagerClass_softClass;
  v7 = getUMUserManagerClass_softClass;
  if (!getUMUserManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getUMUserManagerClass_block_invoke;
    v3[3] = &unk_1E8590188;
    v3[4] = &v4;
    __getUMUserManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D9E0DAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8590520;
    v6 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ManagedConfigurationLibraryCore_frameworkLibrary)
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
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMCProfileConnectionClass_block_invoke_cold_1();
  }

  getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __MobileKeyBagLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8590538;
    v7 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MobileKeyBagLibraryCore_frameworkLibrary;
    if (MobileKeyBagLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getUMUserManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!UserManagementLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __UserManagementLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8590550;
    v6 = 0;
    UserManagementLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (UserManagementLibraryCore_frameworkLibrary)
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
  result = objc_getClass("UMUserManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUMUserManagerClass_block_invoke_cold_1();
  }

  getUMUserManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UserManagementLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  UserManagementLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SetupAssistantLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8590568;
    v7 = 0;
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SetupAssistantLibraryCore_frameworkLibrary;
    if (SetupAssistantLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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

  v2 = SetupAssistantLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "BYSetupAssistantNeedsToRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantNeedsToRunSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1D9E0F214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D9E0F3BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  _Unwind_Resume(a1);
}

uint64_t SSCGImageFromSSImageSurface(void *a1)
{
  v1 = a1;
  if (![v1 hdrBackingSurface])
  {
    [v1 backingSurface];
  }

  v2 = _UICreateCGImageFromIOSurfaceWithOptions();

  return v2;
}

id SSCGImageBackedImageFromImage(void *a1)
{
  v1 = a1;
  if ([v1 hdrSurface] || objc_msgSend(v1, "sdrSurface"))
  {
    v2 = _UICreateCGImageFromIOSurfaceWithOptions();
    v3 = objc_alloc(MEMORY[0x1E69DCAB8]);
    [v1 scale];
    v5 = [v3 initWithCGImage:v2 scale:objc_msgSend(v1 orientation:{"imageOrientation"), v4}];
    CFRelease(v2);
  }

  else
  {
    v5 = v1;
  }

  return v5;
}

void SSEncodeIOSurface(void *a1, __IOSurface *a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    v6 = a1;
    XPCObject = IOSurfaceCreateXPCObject(a2);
    [v6 encodeXPCObject:XPCObject forKey:v5];
  }
}

IOSurfaceRef SSDecodingCreateIOSurface(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 decodeXPCObjectOfType:MEMORY[0x1E69E9EC0] forKey:v3];
  v5 = v4;
  if (v4)
  {
    v6 = IOSurfaceLookupFromXPCObject(v4);
    if (v6 && IOSurfaceSetOwnership())
    {
      v7 = os_log_create("com.apple.screenshotservices", "Surface");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        SSDecodingCreateIOSurface_cold_1(v6, v3, v7);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __SSVellumOpacityControlKnobImage_block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{14.0, 14.0}];
  v0 = [v2 imageWithActions:&__block_literal_global_45];
  v1 = __SSVellumOpacityControlKnobImage;
  __SSVellumOpacityControlKnobImage = v0;
}

void __SSVellumOpacityControlKnobImage_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DC888];
  v3 = a2;
  v4 = [v2 whiteColor];
  [v4 set];

  v5 = [v3 CGContext];
  v6 = 0;
  v7 = 0;
  v8 = 14.0;
  v9 = 14.0;

  CGContextFillEllipseInRect(v5, *&v6);
}

void sub_1D9E15C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CarKitLibraryCore()
{
  if (!CarKitLibraryCore_frameworkLibrary)
  {
    CarKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return CarKitLibraryCore_frameworkLibrary;
}

uint64_t __CarKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCARSessionStatusClass_block_invoke(uint64_t a1)
{
  CarKitLibraryCore();
  result = objc_getClass("CARSessionStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCARSessionStatusClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1D9E17EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1D9E1A804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D9E1CAE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1D9E1CE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t RecapLibraryCore_0()
{
  if (!RecapLibraryCore_frameworkLibrary_0)
  {
    RecapLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  return RecapLibraryCore_frameworkLibrary_0;
}

uint64_t __RecapLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  RecapLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void __getRCPRecorderConfigClass_block_invoke(uint64_t a1)
{
  RecapLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RCPRecorderConfig");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRCPRecorderConfigClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getRCPRecorderConfigClass_block_invoke_cold_1();
    RecapLibrary();
  }
}

void RecapLibrary()
{
  if (!RecapLibraryCore_0())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class __getRCPEventStreamRecorderClass_block_invoke(uint64_t a1)
{
  RecapLibrary();
  result = objc_getClass("RCPEventStreamRecorder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRCPEventStreamRecorderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getRCPEventStreamRecorderClass_block_invoke_cold_1();
    return __getRCPScreenRecorderClass_block_invoke(v3);
  }

  return result;
}

Class __getRCPScreenRecorderClass_block_invoke(uint64_t a1)
{
  RecapLibrary();
  result = objc_getClass("RCPScreenRecorder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRCPScreenRecorderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getRCPScreenRecorderClass_block_invoke_cold_1();
    return __getAPApplicationClass_block_invoke(v3);
  }

  return result;
}

Class __getAPApplicationClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AppProtectionLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AppProtectionLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8590B30;
    v6 = 0;
    AppProtectionLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AppProtectionLibraryCore_frameworkLibrary)
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
  result = objc_getClass("APApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAPApplicationClass_block_invoke_cold_1();
  }

  getAPApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppProtectionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppProtectionLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getRCPMovieClass_block_invoke_0(uint64_t a1)
{
  RecapLibrary();
  result = objc_getClass("RCPMovie");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRCPMovieClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getRCPMovieClass_block_invoke_cold_1();
    return __getTFBetaApplicationProxyClass_block_invoke(v3);
  }

  return result;
}

Class __getTFBetaApplicationProxyClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TestFlightCoreLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TestFlightCoreLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8590B48;
    v6 = 0;
    TestFlightCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (TestFlightCoreLibraryCore_frameworkLibrary)
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
  result = objc_getClass("TFBetaApplicationProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getTFBetaApplicationProxyClass_block_invoke_cold_1();
  }

  getTFBetaApplicationProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TestFlightCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TestFlightCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAudioServicesPlaySystemSoundSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AudioToolboxLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AudioToolboxLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8590B60;
    v7 = 0;
    AudioToolboxLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = AudioToolboxLibraryCore_frameworkLibrary;
    if (AudioToolboxLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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

  v2 = AudioToolboxLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AudioServicesPlaySystemSound");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAudioServicesPlaySystemSoundSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AudioToolboxLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AudioToolboxLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getSBUIGetUserAgentSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!SpringBoardUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SpringBoardUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E8590B78;
    v7 = 0;
    SpringBoardUILibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = SpringBoardUILibraryCore_frameworkLibrary;
    if (SpringBoardUILibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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

  v2 = SpringBoardUILibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SBUIGetUserAgent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBUIGetUserAgentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpringBoardUILibraryCore_frameworkLibrary = result;
  return result;
}

void SSApplyDebuggingCustomizationsToViewIfAppropriate(void *a1, void *a2, double a3)
{
  v11 = a1;
  v5 = a2;
  if (_SSIsRemoteViewControllerDebuggingEnabled())
  {
    v6 = [v11 layer];
    [v6 setBorderWidth:a3];

    v7 = [v11 layer];
    [v7 setBorderColor:{objc_msgSend(v5, "CGColor")}];

    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v9 = a3 * 4.0;
    [v8 setFrame:{0.0, 0.0, v9, v9}];
    [v8 setCenter:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v10 = [v8 layer];
    [v10 setCornerRadius:v9 * 0.5];

    [v8 setBackgroundColor:v5];
    [v11 addSubview:v8];
  }
}

id _SSUserDefaults()
{
  if (_SSUserDefaults_onceToken != -1)
  {
    _SSUserDefaults_cold_1();
  }

  v1 = _SSUserDefaults_result;

  return v1;
}

uint64_t _SSUserDefaultsBooleanForKeyWithNODefault(void *a1)
{
  v1 = a1;
  v2 = _SSUserDefaults();
  v3 = [v2 BOOLForKey:v1];

  return v3;
}

double _SSUserDefaultsCGFloatForKeyWith0Default(void *a1)
{
  v1 = a1;
  v2 = _SSUserDefaults();
  v3 = [v2 valueForKey:v1];

  [v3 floatValue];
  v5 = v4;

  return v5;
}

uint64_t _SSUserDefaultsNSIntegerForKeyWith0Default(void *a1)
{
  v1 = a1;
  v2 = _SSUserDefaults();
  v3 = [v2 valueForKey:v1];

  v4 = [v3 integerValue];
  return v4;
}

uint64_t _SSEnableVellumExport()
{
  if (_SSEnableVellumExport_onceToken != -1)
  {
    _SSEnableVellumExport_cold_1();
  }

  return _SSEnableVellumExport___SSEnableVellumExport;
}

uint64_t _SSShouldIgnoreAbilityCheck()
{
  if (_SSShouldIgnoreAbilityCheck_onceToken != -1)
  {
    _SSShouldIgnoreAbilityCheck_cold_1();
  }

  return _SSShouldIgnoreAbilityCheck___SSShouldIgnoreAbilityCheck;
}

uint64_t _SSEnableContinuousScreenCaptureForBugFiling()
{
  if (_SSEnableContinuousScreenCaptureForBugFiling_onceToken != -1)
  {
    _SSEnableContinuousScreenCaptureForBugFiling_cold_1();
  }

  return _SSEnableContinuousScreenCaptureForBugFiling___SSEnableContinuousScreenCaptureForBugFiling;
}

uint64_t _SSScreenshotsInQuickNoteEnabled()
{
  if (_SSScreenshotsInQuickNoteEnabled_onceToken != -1)
  {
    _SSScreenshotsInQuickNoteEnabled_cold_1();
  }

  return _SSScreenshotsInQuickNoteEnabled___SSScreenshotsInQuickNoteEnabled;
}

void _SSSetLastUsedFullPageScreenshotShareAsOption(uint64_t a1)
{
  v2 = _SSUserDefaults();
  [v2 setInteger:a1 forKey:@"SSLastUsedFullPageScreenshotShareAsOption"];
}

void _SSSetLastUsedScreenshotShareFormatOption(uint64_t a1)
{
  v2 = _SSUserDefaults();
  [v2 setInteger:a1 forKey:@"SSLastUsedScreenshotShareFormatOption"];
}

void _SSSetAnnotationModePreference(uint64_t a1)
{
  v2 = _SSUserDefaults();
  [v2 setBool:a1 forKey:@"SSAnnotationModePreference"];
}

uint64_t _SSLinksInPhotosEnabled()
{
  if (_SSLinksInPhotosEnabled_onceToken != -1)
  {
    _SSLinksInPhotosEnabled_cold_1();
  }

  return _SSLinksInPhotosEnabled___SSLinksInPhotosEnabled;
}

uint64_t _SSQuickActionsEnabled()
{
  if (_SSQuickActionsEnabled_onceToken != -1)
  {
    _SSQuickActionsEnabled_cold_1();
  }

  return _SSQuickActionsEnabled_sQuickActionsEnabled;
}

uint64_t _SSRemoveBackgroundEnabled()
{
  if (_SSRemoveBackgroundEnabled_onceToken != -1)
  {
    _SSRemoveBackgroundEnabled_cold_1();
  }

  return _SSRemoveBackgroundEnabled_sRemoveBackgroundEnabled;
}

uint64_t _SSScreenshotsRedesign2025Enabled()
{
  if (_SSScreenshotsRedesign2025Enabled_onceToken != -1)
  {
    _SSScreenshotsRedesign2025Enabled_cold_1();
  }

  return _SSScreenshotsRedesign2025Enabled___SSScreenshotsRedesign2025Enabled;
}

uint64_t _SSVisualIntelligenceV2Elegible()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 || (AFVisualIntelligenceCameraRestricted() & 1) != 0)
  {
    return 0;
  }

  getVKCImageAnalyzerClass_0();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  VKCImageAnalyzerClass_0 = getVKCImageAnalyzerClass_0();

  return [VKCImageAnalyzerClass_0 deviceIsEligibleForVI];
}

id getVKCImageAnalyzerClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getVKCImageAnalyzerClass_softClass_0;
  v7 = getVKCImageAnalyzerClass_softClass_0;
  if (!getVKCImageAnalyzerClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getVKCImageAnalyzerClass_block_invoke_0;
    v3[3] = &unk_1E8590188;
    v3[4] = &v4;
    __getVKCImageAnalyzerClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1D9E1F524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SSVisualIntelligenceV2EnabledIgnoringOrientation(char a1)
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v4 = os_log_create("com.apple.screenshotservices", "Preferences");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "VIV2 disabled due to feature flag disabled";
      v6 = buf;
      goto LABEL_7;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = os_log_create("com.apple.screenshotservices", "Preferences");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 0;
      v5 = "VIV2 disabled due to incompatible device idiom";
      v6 = &v18;
LABEL_7:
      _os_log_impl(&dword_1D9E04000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  v10 = [v9 activeInterfaceOrientation];

  if ((v10 - 5) >= 0xFFFFFFFFFFFFFFFELL && (a1 & 1) == 0)
  {
    v4 = os_log_create("com.apple.screenshotservices", "Preferences");
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v17 = 0;
    v5 = "VIV2 disabled due to landscape orientation";
    v6 = &v17;
    goto LABEL_7;
  }

  if (([getVKCImageAnalyzerClass_0() supportedAnalysisTypes] & 0x40) == 0)
  {
    v4 = os_log_create("com.apple.screenshotservices", "Preferences");
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v16 = 0;
    v5 = "VIV2 disabled due to VK supportedAnalysisTypes";
    v6 = &v16;
    goto LABEL_7;
  }

  if (MKBGetDeviceLockState() - 1 <= 1)
  {
    v4 = os_log_create("com.apple.screenshotservices", "Preferences");
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v15 = 0;
    v5 = "VIV2 disabled due to locked device";
    v6 = &v15;
    goto LABEL_7;
  }

  v11 = AFVisualIntelligenceCameraRestricted();
  v4 = os_log_create("com.apple.screenshotservices", "Preferences");
  v12 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_8;
    }

    v14 = 0;
    v5 = "VIV2 disabled due to MDM restriction";
    v6 = &v14;
    goto LABEL_7;
  }

  if (v12)
  {
    *v13 = 0;
    _os_log_impl(&dword_1D9E04000, v4, OS_LOG_TYPE_DEFAULT, "VIV2 enabled checks passed.", v13, 2u);
  }

  v7 = 1;
LABEL_9:

  return v7;
}

uint64_t _SSVisualLookUpInScreenshotsEnabled()
{
  result = _SSVisualIntelligenceV2EnabledIgnoringOrientation(0);
  if (result)
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [v1 objectForKey:@"SSPreferencesVisualLookUpInSSSEnabled" inDomain:*MEMORY[0x1E696A400]];
    v3 = [v2 BOOLValue];

    return v3;
  }

  return result;
}

void _SSEnableVisualLookUpInScreenshots(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = _SSVisualLookUpInScreenshotsEnabled();
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.ScreenshotServicesService"];

  v6 = MEMORY[0x1E696A400];
  if (v5)
  {
    v7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    [v7 setObject:v8 forKey:@"SSPreferencesVisualLookUpInSSSEnabledOnboarding" inDomain:*v6];
  }

  v9 = os_log_create("com.apple.screenshotservices", "Preferences");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v2 == a1)
  {
    if (v10)
    {
      v13 = 67109120;
      v14 = a1;
      _os_log_impl(&dword_1D9E04000, v9, OS_LOG_TYPE_DEFAULT, "skip enable Visual Look Up in SSS preference: %{BOOL}d", &v13, 8u);
    }
  }

  else
  {
    if (v10)
    {
      v13 = 67109120;
      v14 = a1;
      _os_log_impl(&dword_1D9E04000, v9, OS_LOG_TYPE_DEFAULT, "enable Visual Look Up in SSS preference: %{BOOL}d", &v13, 8u);
    }

    v11 = [MEMORY[0x1E695E000] standardUserDefaults];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    [v11 setObject:v12 forKey:@"SSPreferencesVisualLookUpInSSSEnabled" inDomain:*v6];

    _SSNotifyPreferencesDidChange();
  }
}

void _SSNotifyPreferencesDidChange()
{
  v0 = os_log_create("com.apple.screenshotservices", "Preferences");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1D9E04000, v0, OS_LOG_TYPE_DEFAULT, "notify preferences did change", v1, 2u);
  }

  dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_147);
}

uint64_t _SSPIPExperienceEnabled()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = _SSVisualIntelligenceV2Elegible();
  if (_UISolariumEnabled())
  {
    v1 = 0;
  }

  else
  {
    if (_SSScreenshotsRedesign2025Enabled_onceToken != -1)
    {
      _SSScreenshotsRedesign2025Enabled_cold_1();
    }

    v1 = _SSScreenshotsRedesign2025Enabled___SSScreenshotsRedesign2025Enabled ^ 1;
  }

  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = *MEMORY[0x1E696A400];
  v4 = [v2 objectForKey:@"SSPreferencesPIPExperienceEnabled" inDomain:*MEMORY[0x1E696A400]];

  if (v4)
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v5 objectForKey:@"SSPreferencesPIPExperienceEnabled" inDomain:v3];
    v7 = [v6 BOOLValue];

    v8 = os_log_create("com.apple.screenshotservices", "Preferences");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"Disabled";
      if (v7)
      {
        v9 = @"Enabled";
      }

      v13 = 138412290;
      v14 = v9;
      v10 = "PIP %@ due to existing preferences setting";
LABEL_15:
      _os_log_impl(&dword_1D9E04000, v8, OS_LOG_TYPE_DEFAULT, v10, &v13, 0xCu);
    }
  }

  else
  {
    LOBYTE(v7) = v0 ^ 1 | v1;
    v8 = os_log_create("com.apple.screenshotservices", "Preferences");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"Disabled";
      if (v7)
      {
        v11 = @"Enabled";
      }

      v13 = 138412290;
      v14 = v11;
      v10 = "PIP %@ due to now existing feature preferences";
      goto LABEL_15;
    }
  }

  return v7 & 1;
}

void _SSEnablePIPExperience(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _SSPIPExperienceEnabled();
  v3 = os_log_create("com.apple.screenshotservices", "Preferences");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == a1)
  {
    if (v4)
    {
      v8 = 67109120;
      v9 = a1;
      _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "skip enable PIP preference: %{BOOL}d", &v8, 8u);
    }
  }

  else
  {
    if (v4)
    {
      v8 = 67109120;
      v9 = a1;
      _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "enable PIP experience preference: %{BOOL}d", &v8, 8u);
    }

    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    [v5 setObject:v6 forKey:@"SSPreferencesPIPExperienceEnabled" inDomain:*MEMORY[0x1E696A400]];

    v7 = +[SSStatisticsManager sharedStatisticsManager];
    [v7 fullScreenPreviewsSettingsChanged];

    _SSNotifyPreferencesDidChange();
  }
}

uint64_t _SSHDRCaptureEnabled()
{
  if (!_SSHDRCaptureSupported())
  {
    return 0;
  }

  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"SSPreferencesHDRCaptureEnabled" inDomain:*MEMORY[0x1E696A400]];

  if (v1)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _SSHDRCaptureSupported()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [MEMORY[0x1E69DCEB0] screens];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if (v5 == v0)
        {
          if (_SSDeviceSupportsHDRCaptureForMainScreen())
          {
LABEL_13:
            v2 = 1;
            goto LABEL_14;
          }
        }

        else
        {
          [v5 potentialEDRHeadroom];
          if (v6 > 2.0)
          {
            goto LABEL_13;
          }
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v2;
}

void _SSEnableHDRCapture(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _SSHDRCaptureEnabled();
  v3 = os_log_create("com.apple.screenshotservices", "Preferences");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == a1)
  {
    if (v4)
    {
      v8 = 67109120;
      v9 = a1;
      _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "skip enable HDR preference: %{BOOL}d", &v8, 8u);
    }
  }

  else
  {
    if (v4)
    {
      v8 = 67109120;
      v9 = a1;
      _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "enable HDR preference: %{BOOL}d", &v8, 8u);
    }

    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    [v5 setObject:v6 forKey:@"SSPreferencesHDRCaptureEnabled" inDomain:*MEMORY[0x1E696A400]];

    v7 = +[SSStatisticsManager sharedStatisticsManager];
    [v7 fileFormatIsHDRSettingsChanged];

    _SSNotifyPreferencesDidChange();
  }
}

uint64_t _SSDeviceSupportsHDRCaptureForMainScreen()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 potentialEDRHeadroom];
  v2 = v1;

  if (v2 <= 2.0)
  {
    return 0;
  }

  else
  {
    return MGIsDeviceOneOfType();
  }
}

uint64_t _SSCarPlayScreenshotsEnabled()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 objectForKey:@"SSPreferencesCarPlayScreenshotsEnabled" inDomain:*MEMORY[0x1E696A400]];

  if (v1)
  {
    has_internal_diagnostics = [v1 BOOLValue];
  }

  else
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
  }

  v3 = has_internal_diagnostics;

  return v3;
}

void _SSEnableCarPlayScreenshots(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _SSCarPlayScreenshotsEnabled();
  v3 = os_log_create("com.apple.screenshotservices", "Preferences");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == a1)
  {
    if (v4)
    {
      v8 = 67109120;
      v9 = a1;
      _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "skip enable CarPlayScreenshots preference: %{BOOL}d", &v8, 8u);
    }
  }

  else
  {
    if (v4)
    {
      v8 = 67109120;
      v9 = a1;
      _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "enable CarPlayScreenshots preference: %{BOOL}d", &v8, 8u);
    }

    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    [v5 setObject:v6 forKey:@"SSPreferencesCarPlayScreenshotsEnabled" inDomain:*MEMORY[0x1E696A400]];

    v7 = +[SSStatisticsManager sharedStatisticsManager];
    [v7 carPlaySettingsChanged];

    _SSNotifyPreferencesDidChange();
  }
}

Class __getVKCImageAnalyzerClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!VisionKitCoreLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __VisionKitCoreLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E8590B98;
    v6 = 0;
    VisionKitCoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (VisionKitCoreLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("VKCImageAnalyzer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVKCImageAnalyzerClass_block_invoke_cold_1();
  }

  getVKCImageAnalyzerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VisionKitCoreLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  VisionKitCoreLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void SSDecodingCreateIOSurface_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9A60];
  v4 = 134218498;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  v8 = 1024;
  v9 = v3;
  _os_log_fault_impl(&dword_1D9E04000, log, OS_LOG_TYPE_FAULT, "Failed to assign surface ownership (surface=%p, key=%@) to task %d", &v4, 0x1Cu);
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

UIEdgeInsets UIEdgeInsetsFromString(NSString *string)
{
  MEMORY[0x1EEE4DCB0](string);
  result.right = v4;
  result.bottom = v3;
  result.left = v2;
  result.top = v1;
  return result;
}