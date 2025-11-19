void sub_1C2701608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPBUIWallpaperSharedDirectoryDataStoreSharedDirectoryURLSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!PaperBoardUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __PaperBoardUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E818CC48;
    v7 = 0;
    PaperBoardUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = PaperBoardUILibraryCore_frameworkLibrary;
  if (!PaperBoardUILibraryCore_frameworkLibrary)
  {
    __getPBUIWallpaperSharedDirectoryDataStoreSharedDirectoryURLSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "PBUIWallpaperSharedDirectoryDataStoreSharedDirectoryURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPBUIWallpaperSharedDirectoryDataStoreSharedDirectoryURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PaperBoardUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PaperBoardUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id PRSLogCommon()
{
  if (PRSLogCommon_onceToken != -1)
  {
    PRSLogCommon_cold_1();
  }

  v1 = PRSLogCommon___logObj;

  return v1;
}

uint64_t __PRSLogCommon_block_invoke()
{
  PRSLogCommon___logObj = os_log_create("com.apple.PosterBoardServices", "Common");

  return MEMORY[0x1EEE66BB8]();
}

id PRSLogObserver()
{
  if (PRSLogObserver_onceToken != -1)
  {
    PRSLogObserver_cold_1();
  }

  v1 = PRSLogObserver___logObj;

  return v1;
}

uint64_t __PRSLogObserver_block_invoke()
{
  PRSLogObserver___logObj = os_log_create("com.apple.PosterBoardServices", "Observer");

  return MEMORY[0x1EEE66BB8]();
}

id PRSLogPosterContents()
{
  if (PRSLogPosterContents_onceToken != -1)
  {
    PRSLogPosterContents_cold_1();
  }

  v1 = PRSLogPosterContents___logObj;

  return v1;
}

uint64_t __PRSLogPosterContents_block_invoke()
{
  PRSLogPosterContents___logObj = os_log_create("com.apple.PosterBoardServices", "PosterContents");

  return MEMORY[0x1EEE66BB8]();
}

id PRSLogArchiver()
{
  if (PRSLogArchiver_onceToken != -1)
  {
    PRSLogArchiver_cold_1();
  }

  v1 = PRSLogArchiver___logObj;

  return v1;
}

uint64_t __PRSLogArchiver_block_invoke()
{
  PRSLogArchiver___logObj = os_log_create("com.apple.PosterBoardServices", "Archiver");

  return MEMORY[0x1EEE66BB8]();
}

id PRSLogExternalSystemService()
{
  if (PRSLogExternalSystemService_onceToken != -1)
  {
    PRSLogExternalSystemService_cold_1();
  }

  v1 = PRSLogExternalSystemService___logObj;

  return v1;
}

uint64_t __PRSLogExternalSystemService_block_invoke()
{
  PRSLogExternalSystemService___logObj = os_log_create("com.apple.PosterBoardServices", "ExternalSystemService");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return objc_opt_class();
}

Class __getUIApplicationClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIApplicationClass_block_invoke_cold_1();
  }

  getUIApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void UIKitLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __UIKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E818CE30;
    v3 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary)
  {
    UIKitLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getUIScreenClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIScreenClass_block_invoke_cold_1();
  }

  getUIScreenClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUIWindowSceneClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIWindowScene");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIWindowSceneClass_block_invoke_cold_1();
  }

  getUIWindowSceneClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C2708FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPUIWritePNGFromCGImageRefSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!PosterUIFoundationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __PosterUIFoundationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E818CE88;
    v7 = 0;
    PosterUIFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = PosterUIFoundationLibraryCore_frameworkLibrary;
  if (!PosterUIFoundationLibraryCore_frameworkLibrary)
  {
    __getPUIWritePNGFromCGImageRefSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "PUIWritePNGFromCGImageRef");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPUIWritePNGFromCGImageRefSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PosterUIFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PosterUIFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PFPosterArchiverFormatForPRSPosterArchiverFormat(uint64_t a1)
{
  if (a1)
  {
    v1 = -1;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t PRSPosterArchiverFormatForPFPosterArchiverFormat(uint64_t a1)
{
  if (a1)
  {
    v1 = -1;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

id NSStringFromPRSPosterSnapshotOptions(uint64_t a1)
{
  v2 = objc_opt_new();
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __NSStringFromPRSPosterSnapshotOptions_block_invoke;
  v13 = &unk_1E818CEC8;
  v3 = v2;
  v14 = v3;
  v4 = &v10;
  if (a1)
  {
    v5 = 0;
    v15 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        (v12)(v4);
        if (v15)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);
  }

  v8 = [v3 componentsJoinedByString:{@", ", v10, v11}];

  return v8;
}

void *__NSStringFromPRSPosterSnapshotOptions_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = @"IncludeFloatingLayer";
  v3 = @"RenderAsUnlocked";
  v4 = @"RenderAsPreview";
  if (a2 != 128)
  {
    v4 = 0;
  }

  if (a2 != 64)
  {
    v3 = v4;
  }

  if (a2 != 32)
  {
    v2 = v3;
  }

  v5 = @"IncludeBackgroundLayer";
  v6 = @"IncludePrimaryLayers";
  if (a2 != 24)
  {
    v6 = 0;
  }

  if (a2 != 16)
  {
    v5 = v6;
  }

  if (a2 <= 31)
  {
    v2 = v5;
  }

  v7 = @"IncludeComplications";
  v8 = @"IncludeForegroundLayer";
  if (a2 != 8)
  {
    v8 = 0;
  }

  if (a2 != 4)
  {
    v7 = v8;
  }

  if (a2 == 2)
  {
    v7 = @"IncludeHeaderElements";
  }

  v9 = @"None";
  if (a2)
  {
    v9 = 0;
  }

  if (a2 == -1)
  {
    v9 = @"All";
  }

  if (a2 <= 1)
  {
    v7 = v9;
  }

  if (a2 <= 15)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  result = *(a1 + 32);
  if (result)
  {
    return [result addObject:v10];
  }

  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1C2719F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  objc_destroyWeak(&a28);
  objc_destroyWeak((v28 - 128));
  _Unwind_Resume(a1);
}

void sub_1C271A3FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 56));
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 56));
  _Unwind_Resume(a1);
}

void sub_1C271B568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x3Au);
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_10()
{

  return objc_opt_class();
}

id __clientDescription(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = [v9 name];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [v9 pid];

  v13 = PRSWallpaperObserverLocationsDescription(a4);
  v14 = v13;
  if (v10)
  {
    [v11 stringWithFormat:@"<%@:%d:%@:%p %@>", v10, v12, v8, v7, v13];
  }

  else
  {
    [v11 stringWithFormat:@"<%d:%@:%p %@>", v12, v8, v7, v13, v17];
  }
  v15 = ;

  return v15;
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return objc_opt_class();
}

void sub_1C2721B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id obj, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

id getPRPosterPathUtilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPRPosterPathUtilitiesClass_softClass;
  v7 = getPRPosterPathUtilitiesClass_softClass;
  if (!getPRPosterPathUtilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPRPosterPathUtilitiesClass_block_invoke;
    v3[3] = &unk_1E818CC28;
    v3[4] = &v4;
    __getPRPosterPathUtilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C2721C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPRPosterPathUtilitiesClass_block_invoke(uint64_t a1)
{
  PosterKitLibrary();
  result = objc_getClass("PRPosterPathUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRPosterPathUtilitiesClass_block_invoke_cold_1();
  }

  getPRPosterPathUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void PosterKitLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PosterKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PosterKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E818D3E0;
    v3 = 0;
    PosterKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PosterKitLibraryCore_frameworkLibrary)
  {
    PosterKitLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __PosterKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PosterKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getPRPosterMutableConfiguredPropertiesClass_block_invoke(uint64_t a1)
{
  PosterKitLibrary();
  result = objc_getClass("PRPosterMutableConfiguredProperties");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPRPosterMutableConfiguredPropertiesClass_block_invoke_cold_1();
  }

  getPRPosterMutableConfiguredPropertiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id PRSWallpaperObserverLocationsDescription(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"sl"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"sh"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  [v3 addObject:@"al"];
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v3 addObject:@"ah"];
  }

LABEL_6:
  if ((a1 & 0xFFFFFFFFFFFFFFF0) != 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a1 & 0xFFFFFFFFFFFFFFF0];
    [v3 addObject:v4];
  }

  if (![v3 count])
  {
    [v3 addObject:@"none"];
  }

  v5 = [v3 componentsJoinedByString:@"|"];

  return v5;
}

uint64_t PRSWallpaperObserverLocationsToIndex(uint64_t a1)
{
  v1 = a1 - 1;
  if ((a1 - 1) >= 8 || ((0x8Bu >> v1) & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown location (%li)", a1];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      PRSWallpaperObserverLocationsToIndex_cold_1();
    }

    [v3 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1C2722068);
  }

  return dword_1C274F420[v1];
}

uint64_t PRSWallpaperObserverLocationsFromIndex(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown index (%i)", a1];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      PRSWallpaperObserverLocationsFromIndex_cold_1();
    }

    [v2 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1C27220ECLL);
  }

  return qword_1C274F440[a1];
}

uint64_t PRSWallpaperObserverLocationsLockIndexIfHomeIndex(uint64_t a1)
{
  if (a1 < 4)
  {
    return dword_1C274F460[a1];
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown index (%i)", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    PRSWallpaperObserverLocationsLockIndexIfHomeIndex_cold_1();
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x26u);
}

id PRSDictionaryFromXPCObject(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __PRSDictionaryFromXPCObject_block_invoke;
  applier[3] = &unk_1E818D400;
  v7 = v2;
  v3 = v2;
  xpc_dictionary_apply(v1, applier);

  v4 = [v3 copy];

  return v4;
}

uint64_t __PRSDictionaryFromXPCObject_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [[v5 alloc] initWithUTF8String:a2];
  string_ptr = xpc_string_get_string_ptr(v6);

  if (string_ptr)
  {
    string_ptr = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string_ptr];
  }

  [*(a1 + 32) setObject:string_ptr forKeyedSubscript:v7];

  return 1;
}

id PRSXPCDictionaryFromDictionary(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    empty = xpc_dictionary_create_empty();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = [v1 keyEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [v8 UTF8String];
          v10 = [v1 objectForKey:v8];
          xpc_dictionary_set_string(empty, v9, [v10 UTF8String]);
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  else
  {
    empty = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return empty;
}

__CFString *PRSPosterUpdateAmbientWidgetsIdentifiers(void *a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 bs_safeObjectForKey:@"AMUIIconStateKey" ofType:objc_opt_class()];
  v3 = [v2 bs_safeObjectForKey:@"iconLists" ofType:objc_opt_class()];
  v4 = [v3 firstObject];

  if ([v4 count])
  {
    v5 = [v4 firstObject];
    v6 = objc_opt_class();
    v7 = v5;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
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

    v10 = v8;

    if ([v4 count] < 2)
    {
      v15 = 0;
    }

    else
    {
      v11 = [v4 objectAtIndex:1];
      v12 = objc_opt_class();
      v13 = v11;
      if (v12)
      {
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
    }

    if (v10 | v15)
    {
      v39 = v15;
      v38 = v2;
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v37 = v10;
      v17 = [v10 bs_safeObjectForKey:@"elements" ofType:objc_opt_class()];
      v18 = [v17 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v45;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v45 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = MEMORY[0x1E696AEC0];
            v23 = [*(*(&v44 + 1) + 8 * i) bs_safeObjectForKey:@"uniqueIdentifier" ofType:objc_opt_class()];
            v24 = [v22 stringWithFormat:@"lead-%@", v23];
            [v16 bs_safeAddObject:v24];
          }

          v19 = [v17 countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v19);
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v25 = [v39 bs_safeObjectForKey:@"elements" ofType:objc_opt_class()];
      v26 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v41;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v41 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = MEMORY[0x1E696AEC0];
            v31 = [*(*(&v40 + 1) + 8 * j) bs_safeObjectForKey:@"uniqueIdentifier" ofType:objc_opt_class()];
            v32 = [v30 stringWithFormat:@"trail-%@", v31];
            [v16 bs_safeAddObject:v32];
          }

          v27 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
        }

        while (v27);
      }

      v33 = MEMORY[0x1E696AEC0];
      v34 = [v16 componentsJoinedByString:{@", "}];
      v9 = [v33 stringWithFormat:@"ambient widget identifiers %@", v34];;

      v2 = v38;
      v10 = v37;
      v15 = v39;
    }

    else
    {
      v9 = @"(elements did not return an array; bailing)";
    }
  }

  else
  {
    v9 = @"(no stacks)";
  }

  v35 = *MEMORY[0x1E69E9840];

  return v9;
}

void _validateUserInfo(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [v1 keyEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = objc_opt_self();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v14 = MEMORY[0x1E695DF30];
          v15 = *MEMORY[0x1E695D940];
          v16 = @"contains non-string key";
          goto LABEL_13;
        }

        v10 = [v1 objectForKey:v7];
        v11 = objc_opt_self();
        v12 = objc_opt_isKindOfClass();

        if ((v12 & 1) == 0)
        {
          v14 = MEMORY[0x1E695DF30];
          v15 = *MEMORY[0x1E695D940];
          v16 = @"contains non-string val";
LABEL_13:
          v17 = [v14 exceptionWithName:v15 reason:v16 userInfo:v1];
          objc_exception_throw(v17);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x1E69E9840];
}

id _encodeContextDictionary(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = [v1 alloc];
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v8 = 0;
  v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:100 options:0 error:&v8];

  v6 = [v3 initWithData:v5 encoding:4];

  return v6;
}

id _decodeContextDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = MEMORY[0x1E695E0F8];
  if (v2)
  {
    v4 = MEMORY[0x1E696AE40];
    v5 = [v1 dataUsingEncoding:4];
    v6 = [v4 propertyListWithData:v5 options:0 format:0 error:0];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    v3 = v8;
  }

  return v3;
}

id _consumeSandboxExtensions(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___consumeSandboxExtensions_block_invoke;
  v9[3] = &unk_1E818D478;
  v5 = v4;
  v10 = v5;
  v6 = v3;
  v11 = v6;
  v12 = &v13;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void sub_1C2723804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C2723E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___encodeSandboxTokens_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [v5 stringWithUTF8String:a2];
  v8 = MEMORY[0x1E696AEC0];
  string_ptr = xpc_string_get_string_ptr(v6);

  v10 = [v8 stringWithUTF8String:string_ptr];
  [*(a1 + 32) setObject:v10 forKey:v7];

  return 1;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___decodeSandboxToken_block_invoke(uint64_t a1, id a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = [a2 UTF8String];
  v9 = [v7 UTF8String];

  v10 = xpc_string_create(v9);
  v11 = *(*(*(a1 + 32) + 8) + 40);
  value = v10;
  if (!v11)
  {
    empty = xpc_dictionary_create_empty();
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = empty;

    v10 = value;
    v11 = *(*(*(a1 + 32) + 8) + 40);
  }

  xpc_dictionary_set_value(v11, v8, v10);
}

void ___consumeSandboxExtensions_block_invoke(uint64_t a1, id a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [a2 UTF8String];
  v6 = xpc_dictionary_get_value(*(a1 + 32), v5);
  v7 = v6;
  if (v6)
  {
    xpc_string_get_string_ptr(v6);
    v8 = sandbox_extension_consume();
    if (v8 != -1)
    {
      v9 = __error();
      strerror_r(*v9, __strerrbuf, 0x100uLL);
      v10 = PRSLogPosterContents();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v16 = *__error();
        v17 = *(a1 + 40);
        v18 = 138413058;
        v19 = v7;
        v20 = 1024;
        v21 = v16;
        v22 = 2082;
        v23 = __strerrbuf;
        v24 = 2114;
        v25 = v17;
        _os_log_error_impl(&dword_1C26FF000, v10, OS_LOG_TYPE_ERROR, "[asset] failed to consume sandboxToken %@ from bsxpc with errno=%i (%{public}s) : <PRSPosterUpdateSessionInfo assetURLs=%{public}@>", &v18, 0x26u);
      }
    }

    v11 = *(*(*(a1 + 48) + 8) + 40);
    if (!v11)
    {
      empty = xpc_dictionary_create_empty();
      v13 = *(*(a1 + 48) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = empty;

      v11 = *(*(*(a1 + 48) + 8) + 40);
    }

    xpc_dictionary_set_int64(v11, v5, v8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

__CFString *PRSErrorCodeToDebugDescription(uint64_t a1)
{
  v1 = @"Unknown error.";
  if (a1 == 1)
  {
    v1 = @"the 'currentConfiguration' argument was invalid.";
  }

  if (a1 == 2)
  {
    return @"an entitlement was not found which was needed.";
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromPRSPosterUpdateType(unint64_t a1)
{
  if (a1 > 0x15)
  {
    return @"(unknown update type)";
  }

  else
  {
    return off_1E818D4A0[a1];
  }
}

id PRSPosterGallerySuggestedComplicationErrorCreateWithCodeAndDescription(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length])
  {
    v9 = *MEMORY[0x1E696A578];
    v10[0] = v1;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v2 = 0;
  }

  v3 = objc_alloc(MEMORY[0x1E696ABC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithDomain:v5 code:1 userInfo:v2];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id getkPaperboardIOSurfaceDeviceOrientationPropertiesKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkPaperboardIOSurfaceDeviceOrientationPropertiesKeySymbolLoc_ptr;
  v7 = getkPaperboardIOSurfaceDeviceOrientationPropertiesKeySymbolLoc_ptr;
  if (!getkPaperboardIOSurfaceDeviceOrientationPropertiesKeySymbolLoc_ptr)
  {
    v1 = PosterUIFoundationLibrary();
    v5[3] = dlsym(v1, "kPaperboardIOSurfaceDeviceOrientationPropertiesKey");
    getkPaperboardIOSurfaceDeviceOrientationPropertiesKeySymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getkPaperboardIOSurfaceDeviceOrientationPropertiesKey_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1C272D888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getkPaperboardIOSurfaceSalientContentRectPropertiesKey()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkPaperboardIOSurfaceSalientContentRectPropertiesKeySymbolLoc_ptr;
  v7 = getkPaperboardIOSurfaceSalientContentRectPropertiesKeySymbolLoc_ptr;
  if (!getkPaperboardIOSurfaceSalientContentRectPropertiesKeySymbolLoc_ptr)
  {
    v1 = PosterUIFoundationLibrary();
    v5[3] = dlsym(v1, "kPaperboardIOSurfaceSalientContentRectPropertiesKey");
    getkPaperboardIOSurfaceSalientContentRectPropertiesKeySymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getkPaperboardIOSurfaceSalientContentRectPropertiesKey_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1C272DAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double soft_CGRectFromString(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getCGRectFromStringSymbolLoc_ptr;
  v9 = getCGRectFromStringSymbolLoc_ptr;
  if (!getCGRectFromStringSymbolLoc_ptr)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getCGRectFromStringSymbolLoc_block_invoke;
    v5[3] = &unk_1E818CC28;
    v5[4] = &v6;
    __getCGRectFromStringSymbolLoc_block_invoke(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    soft_CGRectFromString_cold_1();
  }

  v3 = v2(v1);

  return v3;
}

void sub_1C272DBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkPaperboardIOSurfaceDeviceOrientationPropertiesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterUIFoundationLibrary();
  result = dlsym(v2, "kPaperboardIOSurfaceDeviceOrientationPropertiesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkPaperboardIOSurfaceDeviceOrientationPropertiesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PosterUIFoundationLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!PosterUIFoundationLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __PosterUIFoundationLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E818D608;
    v5 = 0;
    PosterUIFoundationLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = PosterUIFoundationLibraryCore_frameworkLibrary_0;
  if (!PosterUIFoundationLibraryCore_frameworkLibrary_0)
  {
    PosterUIFoundationLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __PosterUIFoundationLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PosterUIFoundationLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getkPaperboardIOSurfaceSalientContentRectPropertiesKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PosterUIFoundationLibrary();
  result = dlsym(v2, "kPaperboardIOSurfaceSalientContentRectPropertiesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkPaperboardIOSurfaceSalientContentRectPropertiesKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCGRectFromStringSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __UIKitLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E818D620;
    v7 = 0;
    UIKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v2 = UIKitLibraryCore_frameworkLibrary_0;
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    __getCGRectFromStringSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "CGRectFromString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGRectFromStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id __descriptorsForPath_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PRSPosterDescriptor alloc] _initWithPath:v2];

  return v3;
}

id __configurationsForPath_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PRSPosterConfiguration alloc] _initWithPath:v2];

  return v3;
}

void sub_1C272E8E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C272EA50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

id PRSWallpaperObserverInterface()
{
  if (PRSWallpaperObserverInterface_onceToken != -1)
  {
    PRSWallpaperObserverInterface_cold_1();
  }

  v1 = PRSWallpaperObserverInterface___interface;

  return v1;
}

void __PRSWallpaperObserverInterface_block_invoke()
{
  v4 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"com.apple.posterboardservices.active-wallpaper-observer"];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F427C0F0];
  [v4 setClient:v0];

  v1 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F427C708];
  [v4 setServer:v1];

  [v4 setClientMessagingExpectation:1];
  v2 = [v4 copy];
  v3 = PRSWallpaperObserverInterface___interface;
  PRSWallpaperObserverInterface___interface = v2;
}

id PRSServiceInterface()
{
  if (PRSServiceInterface_onceToken != -1)
  {
    PRSServiceInterface_cold_1();
  }

  v1 = PRSServiceInterface___interface;

  return v1;
}

void __PRSServiceInterface_block_invoke()
{
  v3 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"com.apple.posterboardservices.dataModel"];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F427B620];
  [v3 setServer:v0];

  v1 = [v3 copy];
  v2 = PRSServiceInterface___interface;
  PRSServiceInterface___interface = v1;
}

Class __getPFPosterConfigurationClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PhotosFormatsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PhotosFormatsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E818DD38;
    v6 = 0;
    PhotosFormatsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotosFormatsLibraryCore_frameworkLibrary)
  {
    __getPFPosterConfigurationClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("PFPosterConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPFPosterConfigurationClass_block_invoke_cold_1();
  }

  getPFPosterConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PhotosFormatsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PhotosFormatsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_7_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void __getPBUIWallpaperSharedDirectoryDataStoreSharedDirectoryURLSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PaperBoardUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PRSPosterConfigurationCacheProvider.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getUIApplicationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIApplicationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PRSHostContext.m" lineNumber:27 description:{@"Unable to find class %s", "UIApplication"}];

  __break(1u);
}

void UIKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PRSHostContext.m" lineNumber:26 description:{@"%s", *a1}];

  __break(1u);
}

void __getUIScreenClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIScreenClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PRSHostContext.m" lineNumber:28 description:{@"Unable to find class %s", "UIScreen"}];

  __break(1u);
}

void __getUIWindowSceneClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIWindowSceneClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PRSHostContext.m" lineNumber:29 description:{@"Unable to find class %s", "UIWindowScene"}];

  __break(1u);
}

void __getPUIWritePNGFromCGImageRefSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterUIFoundationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PRSPosterSnapshot.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getPRPosterPathUtilitiesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRPosterPathUtilitiesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PRSPosterUpdater.m" lineNumber:22 description:{@"Unable to find class %s", "PRPosterPathUtilities"}];

  __break(1u);
}

void PosterKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PRSPosterUpdater.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getPRPosterMutableConfiguredPropertiesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPRPosterMutableConfiguredPropertiesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PRSPosterUpdater.m" lineNumber:23 description:{@"Unable to find class %s", "PRPosterMutableConfiguredProperties"}];

  __break(1u);
}

void PRSWallpaperObserverLocationsToIndex_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int PRSWallpaperObserverLocationsToIndex(PRSWallpaperObserverLocations)"];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v1, "failure in %{public}@ (%{public}@:%i) : %{public}@", v2, v3, v4, v5, v7);

  v6 = *MEMORY[0x1E69E9840];
}

void PRSWallpaperObserverLocationsFromIndex_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PRSWallpaperObserverLocations PRSWallpaperObserverLocationsFromIndex(int)"];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v1, "failure in %{public}@ (%{public}@:%i) : %{public}@", v2, v3, v4, v5, v7);

  v6 = *MEMORY[0x1E69E9840];
}

void PRSWallpaperObserverLocationsLockIndexIfHomeIndex_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int PRSWallpaperObserverLocationsLockIndexIfHomeIndex(int)"];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v1, "failure in %{public}@ (%{public}@:%i) : %{public}@", v2, v3, v4, v5, v7);

  v6 = *MEMORY[0x1E69E9840];
}

void getkPaperboardIOSurfaceDeviceOrientationPropertiesKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkPaperboardIOSurfaceDeviceOrientationPropertiesKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"PRSPosterSnapshotCollection.m" lineNumber:18 description:{@"%s", dlerror()}];

  __break(1u);
}

void getkPaperboardIOSurfaceSalientContentRectPropertiesKey_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkPaperboardIOSurfaceSalientContentRectPropertiesKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"PRSPosterSnapshotCollection.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_CGRectFromString_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGRect soft_CGRectFromString(NSString *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"PRSPosterSnapshotCollection.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

void PosterUIFoundationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PosterUIFoundationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PRSPosterSnapshotCollection.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getCGRectFromStringSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PRSPosterSnapshotCollection.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getPFPosterConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPFPosterConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PRSExternalSystemService.m" lineNumber:25 description:{@"Unable to find class %s", "PFPosterConfiguration"}];

  __break(1u);
}

void __getPFPosterConfigurationClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosFormatsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PRSExternalSystemService.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
  BSAbsoluteMachTimeNow();
}