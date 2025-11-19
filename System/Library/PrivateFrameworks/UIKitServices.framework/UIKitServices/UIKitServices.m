void sub_195FF47EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _UISSetSystemReferenceAngleDataSource(void *a1)
{
  v1 = a1;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _UISSetSystemReferenceAngleDataSource(id<_UISSystemReferenceAngleDataSource>  _Nonnull __strong)"];
    [v3 handleFailureInFunction:v4 file:@"UISSystemReferenceAngle.m" lineNumber:53 description:@"Must be called from the main thread."];
  }

  v2 = __datasource;
  __datasource = v1;
}

void *UISCreateCachedColorTransform(__CFString *key)
{
  if (UISCreateCachedColorTransform_onceToken != -1)
  {
    dispatch_once(&UISCreateCachedColorTransform_onceToken, &__block_literal_global_3);
  }

  value_out = 0;
  if (cache_get_and_retain(UISCreateCachedColorTransform_colorTransformCache, key, &value_out))
  {
    v2 = CGColorSpaceCreateWithName(key);
    v3 = MEMORY[0x19A8C60C0](v2, 0);
    value_out = v3;
    if (v3)
    {
      cache_set_and_retain(UISCreateCachedColorTransform_colorTransformCache, key, v3, 0);
    }

    CGColorSpaceRelease(v2);
    v4 = value_out;
    if (value_out)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = CGColorTransformRetain();
    value_out = v4;
    if (v4)
    {
LABEL_7:
      cache_release_value(UISCreateCachedColorTransform_colorTransformCache, v4);
      return value_out;
    }
  }

  return 0;
}

uint64_t __UISCreateCachedColorTransform_block_invoke()
{
  cache_create("com.apple.UIKitServices.colorTransform", &_block_invoke_attrs, &UISCreateCachedColorTransform_colorTransformCache);
  v0 = UISCreateCachedColorTransform_colorTransformCache;

  return MEMORY[0x1EEE6EB78](v0, 8);
}

void sub_195FF5A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UISStateServiceLogger()
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___UISCreateLoggerIfNeeded_block_invoke;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &_UISStateServiceLogger_logging;
  v2[5] = "stateService";
  if (_UISStateServiceLogger_logging != -1)
  {
    dispatch_once(&_UISStateServiceLogger_logging, v2);
  }

  v0 = qword_1EAEF7DF8;

  return v0;
}

CFTypeRef retain1(const void *a1, void *a2)
{
  result = CFRetain(a1);
  *a2 = result;
  return result;
}

double UISColorLuminance(CGColor *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  ColorSpace = CGColorGetColorSpace(a1);
  Name = CGColorSpaceGetName(ColorSpace);
  Components = CGColorGetComponents(a1);
  if (CFEqual(Name, *MEMORY[0x1E695F1B0]) || CFEqual(Name, *MEMORY[0x1E695F108]))
  {
    v5 = *Components * 0.222495198;
    v6 = *(Components + 1);
LABEL_4:
    v7 = vmulq_f64(v6, xmmword_196019180);
    v8 = v5 + v7.f64[0] + v7.f64[1];
    return fmin(fmax(v8, 0.0), 1.0);
  }

  if (CFEqual(Name, *MEMORY[0x1E695F1C0]) || CFEqual(Name, *MEMORY[0x1E695F110]))
  {
    v11 = 0;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v13 = vnegq_f64(v12);
    v15 = v13;
    do
    {
      *v10.i64 = Components[v11];
      v14 = fabs(*v10.i64);
      if (v14 >= 0.04045)
      {
        v16 = v10;
        v12.f64[0] = pow(v14 * 0.947867 + 0.0521327, 2.4);
        v13 = v15;
        v10 = v16;
      }

      else
      {
        v12.f64[0] = v14 * 0.0773994;
      }

      v12 = vbslq_s8(v13, v12, v10);
      *(&v17 + v11 * 8) = v12.f64[0];
      ++v11;
    }

    while (v11 != 3);
    v5 = v17 * 0.222495198;
    v6 = v18;
    goto LABEL_4;
  }

  UISCreateCachedColorTransform(*MEMORY[0x1E695F148]);
  if (CGColorTransformConvertColorComponents())
  {
    v8 = v18.f64[0];
  }

  else
  {
    v8 = 0.0;
  }

  CGColorTransformRelease();
  return fmin(fmax(v8, 0.0), 1.0);
}

void sub_195FF729C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195FF748C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id UISSecureControlServiceInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A8E418];
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A8E478];
  [v0 setInterface:v1 forSelector:sel_getSizeToolWithReply_ argumentIndex:0 ofReply:1];

  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A886C0];
  [v0 setInterface:v2 forSelector:sel_getSlotMachineWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

id UISSecureControlServiceSharedRemoteInterface()
{
  if (_MergedGlobals_3 != -1)
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
  }

  v1 = qword_1ED51BEC8;

  return v1;
}

void __UISSecureControlServiceSharedRemoteInterface_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E696B0B8]);
  v4 = [v0 initWithServiceName:UISSecureControlServiceName];
  v1 = UISSecureControlServiceInterface();
  [v4 setRemoteObjectInterface:v1];

  [v4 resume];
  v2 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_59];
  v3 = qword_1ED51BEC8;
  qword_1ED51BEC8 = v2;
}

void UISCalloutBarFontSize(unint64_t a1)
{
  if (a1 >= 4)
  {
    if (_MergedGlobals_4 != -1)
    {
      dispatch_once(&_MergedGlobals_4, &__block_literal_global_2);
    }

    if (qword_1ED51BEE0 != a1)
    {
      if (a1 >= 8)
      {
        v2 = 8;
      }

      else
      {
        v2 = a1;
      }

      UISGetFontContentSizeCategory(v2);
      v3 = CTFontDescriptorCreateWithTextStyleAndAttributes();
      v4 = CTFontDescriptorCopyAttribute(v3, *MEMORY[0x1E6965848]);
      [v4 doubleValue];
      v6 = v5;

      CFRelease(v3);
      UISCalloutBarFontSize_lastSizeCategoryFontSize = v6;
      qword_1ED51BEE0 = a1;
    }
  }
}

void __UISCalloutBarFontSize_block_invoke()
{
  v0 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v1 = CTFontDescriptorCopyAttribute(v0, *MEMORY[0x1E6965848]);
  [v1 doubleValue];
  v3 = v2;

  CFRelease(v0);
  qword_1ED51BED8 = v3;
}

id _UISUserInterfaceStyleModeUserDefaults()
{
  if (qword_1ED51BEF0 != -1)
  {
    dispatch_once(&qword_1ED51BEF0, &__block_literal_global_3);
  }

  v1 = _MergedGlobals_5;

  return v1;
}

void sub_195FFCB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUNNotificationDefaultActionIdentifierSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED51BF00)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __UserNotificationsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E74590A0;
    v7 = 0;
    qword_1ED51BF00 = _sl_dlopen();
  }

  v2 = qword_1ED51BF00;
  if (!qword_1ED51BF00)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UserNotificationsLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"UISNotificationResponseAction.m" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "UNNotificationDefaultActionIdentifier");
  *(*(a1[4] + 8) + 24) = result;
  _MergedGlobals_6 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __UserNotificationsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED51BF00 = result;
  return result;
}

void sub_195FFDABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getAPSConnectionClass_block_invoke(uint64_t a1)
{
  ApplePushServiceLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("APSConnection");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_7 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAPSConnectionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UISApplicationStateService.m" lineNumber:22 description:{@"Unable to find class %s", "APSConnection"}];

    __break(1u);
  }
}

void *ApplePushServiceLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ApplePushServiceLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ApplePushServiceLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7459150;
    v6 = 0;
    ApplePushServiceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = ApplePushServiceLibraryCore_frameworkLibrary;
  if (!ApplePushServiceLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ApplePushServiceLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UISApplicationStateService.m" lineNumber:21 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __ApplePushServiceLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ApplePushServiceLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAPSEnvironmentProductionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ApplePushServiceLibrary();
  result = dlsym(v2, "APSEnvironmentProduction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED51BF10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DuetActivitySchedulerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED51BF20 = result;
  return result;
}

id getCKShareMetadataClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_9;
  v7 = _MergedGlobals_9;
  if (!_MergedGlobals_9)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKShareMetadataClass_block_invoke;
    v3[3] = &unk_1E7459080;
    v3[4] = &v4;
    __getCKShareMetadataClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19600069C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKShareMetadataClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED51BF40)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __CloudKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7459218;
    v8 = 0;
    qword_1ED51BF40 = _sl_dlopen();
  }

  if (!qword_1ED51BF40)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UISHandleCloudKitShareAction.m" lineNumber:19 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CKShareMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCKShareMetadataClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UISHandleCloudKitShareAction.m" lineNumber:20 description:{@"Unable to find class %s", "CKShareMetadata"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_9 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CloudKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED51BF40 = result;
  return result;
}

uint64_t UISGetFontContentSizeCategory(uint64_t result)
{
  if (result > 5)
  {
    if (result > 8)
    {
      switch(result)
      {
        case 9:
          v1 = MEMORY[0x1E6965698];
          break;
        case 10:
          v1 = MEMORY[0x1E69656A0];
          break;
        case 11:
          v1 = MEMORY[0x1E69656A8];
          break;
        default:
          return result;
      }
    }

    else if (result == 6)
    {
      v1 = MEMORY[0x1E69656E0];
    }

    else if (result == 7)
    {
      v1 = MEMORY[0x1E6965690];
    }

    else
    {
      v1 = MEMORY[0x1E6965688];
    }
  }

  else if (result > 2)
  {
    if (result == 3)
    {
      v1 = MEMORY[0x1E69656B0];
    }

    else if (result == 4)
    {
      v1 = MEMORY[0x1E69656C8];
    }

    else
    {
      v1 = MEMORY[0x1E69656D8];
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      v1 = MEMORY[0x1E69656C0];
    }

    else
    {
      if (result != 2)
      {
        return result;
      }

      v1 = MEMORY[0x1E69656B8];
    }
  }

  else
  {
    v1 = MEMORY[0x1E69656D0];
  }

  return *v1;
}

double UISFontWeightForIndex(uint64_t a1)
{
  v1 = MEMORY[0x1E69656E8] + 8 * a1 - 8;
  if (a1 > 9 || a1 == 0)
  {
    v1 = MEMORY[0x1E6965958];
  }

  return *v1;
}

uint64_t UISIndexForFontWeight(double a1)
{
  for (result = 0; result != 9; ++result)
  {
    if (*(MEMORY[0x1E69656E8] + 8 * result) > a1)
    {
      break;
    }
  }

  return result;
}

void sub_196002CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_196003EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak(&a33);
  objc_destroyWeak((v33 - 152));
  _Unwind_Resume(a1);
}

void sub_196004558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _UISTouchAuthenticationTelemetryReportRecordWithDuration(void *a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UISTouchAuthenticationTelemetryReportRecordWithDuration(_UISTouchAuthenticationRecord * _Nonnull __strong, BOOL)"}];
    [v12 handleFailureInFunction:v13 file:@"_UISTouchAuthenticationTelemetry.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"record"}];
  }

  v4 = [v3 hostBundleId];
  if (os_variant_has_internal_diagnostics())
  {

LABEL_9:
    v14 = [(_UISTouchAuthenticationRecord *)v3 analyticsPayloadWithDuration:a2];
    v8 = v14;
    AnalyticsSendEventLazy();

    goto LABEL_10;
  }

  if (qword_1ED51BF78 != -1)
  {
    dispatch_once(&qword_1ED51BF78, &__block_literal_global_9);
  }

  v17.tv_sec = 0;
  *&v17.tv_usec = 0;
  memset(&v16, 0, sizeof(v16));
  gettimeofday(&v17, 0);
  localtime_r(&v17.tv_sec, &v16);
  data = v16.tm_yday + 366 * v16.tm_year;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, &unk_1ED51BF88, 0x10u);
  CC_SHA256_Update(&c, &data, 4u);
  if (v4)
  {
    v5 = [v4 UTF8String];
    v6 = strlen(v5);
    CC_SHA256_Update(&c, v5, v6);
  }

  CC_SHA256_Final(md, &c);
  v7 = *md >> 1;

  if (v7 <= 0xCCC)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (qword_1ED51BF80 != -1)
  {
    dispatch_once(&qword_1ED51BF80, &__block_literal_global_22);
  }

  if (_MergedGlobals_12 == 1)
  {
    v9 = _UISViewServiceTouchAuthenticationTelemetry();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (v3 && v3[65])
      {
        v10 = @"YES";
      }

      v11 = [(_UISTouchAuthenticationRecord *)v3 analyticsPayloadWithDuration:a2];
      c.count[0] = 138543618;
      *&c.count[1] = v10;
      LOWORD(c.hash[1]) = 2114;
      *(&c.hash[1] + 2) = v11;
      _os_log_impl(&dword_195FF3000, v9, OS_LOG_TYPE_DEFAULT, "Dispatching record (authentic = %{public}@) to analytics with payload: %{public}@", &c, 0x16u);
    }
  }
}

CGImageRef UISCreateImageFromDrawing(void *a1, unint64_t a2, CGFloat a3)
{
  v5 = a1;
  [v5 drawingSize];
  v8 = v7;
  v9 = v6;
  if (v7 <= 0.0 || v6 <= 0.0)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageRef  _Nonnull UISCreateImageFromDrawing(__strong id<UISDrawing> _Nonnull, CGFloat, UISDisplayRange)"}];
    [v28 handleFailureInFunction:v29 file:@"UISDrawing.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"size.width > 0.0 && size.height > 0.0"}];
  }

  if (a3 <= 0.0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageRef  _Nonnull UISCreateImageFromDrawing(__strong id<UISDrawing> _Nonnull, CGFloat, UISDisplayRange)"}];
    [v20 handleFailureInFunction:v21 file:@"UISDrawing.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"scale > 0.0"}];
  }

  if (a2 >= 3)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageRef  _Nonnull UISCreateImageFromDrawing(__strong id<UISDrawing> _Nonnull, CGFloat, UISDisplayRange)"}];
    [v22 handleFailureInFunction:v23 file:@"UISDrawing.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"range <= UISDisplayRangeLast"}];
  }

  v10 = vcvtpd_u64_f64(v8 * a3);
  v11 = vcvtpd_u64_f64(v9 * a3);
  if (a2 > 2)
  {
    v15 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v12 = qword_1E74593A8[a2];
    v13 = qword_196019080[a2];
    v14 = dword_1960190B0[a2];
    v15 = CGColorSpaceCreateWithName(*v12);
  }

  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v17 = CGBitmapContextCreate(0, v10, v11, v13, AlignedBytesPerRow, v15, v14);
  if (!v17)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageRef  _Nonnull UISCreateImageFromDrawing(__strong id<UISDrawing> _Nonnull, CGFloat, UISDisplayRange)"}];
    [v24 handleFailureInFunction:v25 file:@"UISDrawing.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"imageContext"}];
  }

  CGColorSpaceRelease(v15);
  CGContextTranslateCTM(v17, 0.0, v11);
  CGContextScaleCTM(v17, a3, -a3);
  CGContextGetCTM(&v30, v17);
  CGContextSetBaseCTM();
  [v5 drawInContext:v17 atPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

  Image = CGBitmapContextCreateImage(v17);
  if (!Image)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CGImageRef  _Nonnull UISCreateImageFromDrawing(__strong id<UISDrawing> _Nonnull, CGFloat, UISDisplayRange)"}];
    [v26 handleFailureInFunction:v27 file:@"UISDrawing.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"image"}];
  }

  CGContextRelease(v17);
  return Image;
}

void sub_196006538(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  if (a2 == 2)
  {
    v12 = objc_begin_catch(a1);
    NSLog(&cfstr_SExceptionDeco_0.isa);

    objc_end_catch();
    JUMPOUT(0x1960064C8);
  }

  objc_begin_catch(a1);
  JUMPOUT(0x1960064CCLL);
}

void sub_1960065B8()
{
  if (v0)
  {
    JUMPOUT(0x1960065C0);
  }

  JUMPOUT(0x1960065C4);
}

void sub_1960067A8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  if (a2 == 2)
  {
    v12 = objc_begin_catch(a1);
    NSLog(&cfstr_SExceptionDeco_0.isa);

    objc_end_catch();
    JUMPOUT(0x196006730);
  }

  objc_begin_catch(a1);
  JUMPOUT(0x196006734);
}

void sub_196006828()
{
  if (v0)
  {
    JUMPOUT(0x196006830);
  }

  JUMPOUT(0x196006834);
}

void sub_196006D3C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  if (a2 == 2)
  {
    v12 = objc_begin_catch(a1);
    NSLog(&cfstr_SExceptionDeco_1.isa);

    objc_end_catch();
    JUMPOUT(0x196006CCCLL);
  }

  objc_begin_catch(a1);
  JUMPOUT(0x196006CD0);
}

void sub_196006F70(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  if (a2 == 2)
  {
    v12 = objc_begin_catch(a1);
    NSLog(&cfstr_SExceptionDeco_2.isa);

    objc_end_catch();
    JUMPOUT(0x196006F00);
  }

  objc_begin_catch(a1);
  JUMPOUT(0x196006F04);
}

void __getINIntentClass_block_invoke(uint64_t a1)
{
  IntentsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("INIntent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getINIntentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINIntentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UISIntentForwardingAction.m" lineNumber:22 description:{@"Unable to find class %s", "INIntent"}];

    __break(1u);
  }
}

void IntentsLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!IntentsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __IntentsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7459410;
    v5 = 0;
    IntentsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntentsLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntentsLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UISIntentForwardingAction.m" lineNumber:21 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __IntentsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IntentsLibraryCore_frameworkLibrary = result;
  return result;
}

void __getINIntentForwardingActionClass_block_invoke(uint64_t a1)
{
  IntentsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("INIntentForwardingAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getINIntentForwardingActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINIntentForwardingActionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UISIntentForwardingAction.m" lineNumber:24 description:{@"Unable to find class %s", "INIntentForwardingAction"}];

    __break(1u);
  }
}

void __getINIntentResponseClass_block_invoke(uint64_t a1)
{
  IntentsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("INIntentResponse");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getINIntentResponseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINIntentResponseClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UISIntentForwardingAction.m" lineNumber:23 description:{@"Unable to find class %s", "INIntentResponse"}];

    __break(1u);
  }
}

void __getINIntentForwardingActionResponseClass_block_invoke(uint64_t a1)
{
  IntentsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("INIntentForwardingActionResponse");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getINIntentForwardingActionResponseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINIntentForwardingActionResponseClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UISIntentForwardingAction.m" lineNumber:25 description:{@"Unable to find class %s", "INIntentForwardingActionResponse"}];

    __break(1u);
  }
}

uint64_t UISSystemReferenceAngleModeForContextID(uint64_t a1)
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UISSystemReferenceAngleMode UISSystemReferenceAngleModeForContextID(uint32_t)"];
    [v4 handleFailureInFunction:v5 file:@"UISSystemReferenceAngle.m" lineNumber:43 description:@"Must be called from the main thread."];
  }

  v2 = __datasource;

  return [v2 _systemReferenceAngleModeForContextID:a1];
}

uint64_t UISSystemReferenceAngleForContextID(uint64_t a1)
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGFloat UISSystemReferenceAngleForContextID(uint32_t)"];
    [v4 handleFailureInFunction:v5 file:@"UISSystemReferenceAngle.m" lineNumber:48 description:@"Must be called from the main thread."];
  }

  v2 = __datasource;

  return [v2 _systemReferenceAngleForContextID:a1];
}

__CFString *_UISStringForSystemReferenceAngleMode(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 2)
  {
    v1 = @"Defined";
  }

  if (a1 == 1)
  {
    return @"Undefined";
  }

  else
  {
    return v1;
  }
}

id getSBSApplicationShortcutItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_13;
  v7 = _MergedGlobals_13;
  if (!_MergedGlobals_13)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSBSApplicationShortcutItemClass_block_invoke;
    v3[3] = &unk_1E7459080;
    v3[4] = &v4;
    __getSBSApplicationShortcutItemClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_19600B220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19600B39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSBSApplicationShortcutItemClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED51BFA0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74594A8;
    v8 = 0;
    qword_1ED51BFA0 = _sl_dlopen();
  }

  if (!qword_1ED51BFA0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UISHandleApplicationShortcutAction.m" lineNumber:21 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SBSApplicationShortcutItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSBSApplicationShortcutItemClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UISHandleApplicationShortcutAction.m" lineNumber:23 description:{@"Unable to find class %s", "SBSApplicationShortcutItem"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_13 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED51BFA0 = result;
  return result;
}

Class __getUIApplicationShortcutItemClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED51BFB0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __UIKitCoreLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E74594C0;
    v8 = 0;
    qword_1ED51BFB0 = _sl_dlopen();
  }

  if (!qword_1ED51BFB0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UISHandleApplicationShortcutAction.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("UIApplicationShortcutItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIApplicationShortcutItemClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UISHandleApplicationShortcutAction.m" lineNumber:18 description:{@"Unable to find class %s", "UIApplicationShortcutItem"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED51BFA8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED51BFB0 = result;
  return result;
}

void sub_19600DC40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *UISLocalizedStringForSecureName(unsigned int a1, void *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = HIWORD(a1);
  if (HIWORD(a1))
  {
    v5 = @"System/Library/PrivateFrameworks/UIKitServices.framework";
    if (v4 != 1)
    {
      v5 = 0;
    }

    if (v4 == 2)
    {
      v6 = @"System/Library/Frameworks/CoreLocationUI.framework";
    }

    else
    {
      v6 = v5;
    }

    v7 = MEMORY[0x1E695DFF8];
    v8 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:"/" isDirectory:1 relativeToURL:0];
    v9 = [v7 fileURLWithPath:v6 isDirectory:1 relativeToURL:v8];

    v10 = [MEMORY[0x1E696AAE8] bundleWithURL:v9];
    if ([v3 length])
    {
      v11 = MEMORY[0x1E696AAE8];
      v12 = [v10 localizations];
      v20[0] = v3;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      v14 = [v11 preferredLocalizationsFromArray:v12 forPreferences:v13];
      v15 = [v14 firstObject];
    }

    else
    {
      v15 = 0;
    }

    v16 = [&unk_1F0A846E8 objectAtIndexedSubscript:HIWORD(a1)];
    v17 = [v16 objectAtIndexedSubscript:a1];

    v18 = [v10 localizedStringForKey:v17 value:v17 table:0 localization:v15];
  }

  else
  {
    v18 = &stru_1F0A7B1D8;
  }

  return v18;
}

__CFString *NSStringForUISScenePlacementType(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"<none>";
  }

  else
  {
    return off_1E74595C8[a1 - 1];
  }
}

uint64_t UISGetColorSRGBComponents(CGColor *a1, uint64_t a2)
{
  Components = CGColorGetComponents(a1);
  ColorSpace = CGColorGetColorSpace(a1);
  Name = CGColorSpaceGetName(ColorSpace);
  result = CFEqual(Name, *MEMORY[0x1E695F1C0]);
  if (result || (v8 = *MEMORY[0x1E695F110], result = CFEqual(Name, *MEMORY[0x1E695F110]), result))
  {
    for (i = 0; i != 3; ++i)
    {
      *(a2 + i * 8) = Components[i];
    }

    *(a2 + 24) = Components[3];
  }

  else
  {
    UISCreateCachedColorTransform(v8);
    if (CGColorTransformConvertColorComponents())
    {
      *(a2 + 24) = Components[CGColorGetNumberOfComponents(a1) - 1];
    }

    else
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    return CGColorTransformRelease();
  }

  return result;
}

uint64_t UISIsColorInDisplayP3Gamut(CGColor *a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  Components = CGColorGetComponents(a1);
  ColorSpace = CGColorGetColorSpace(a1);
  Name = CGColorSpaceGetName(ColorSpace);
  if (CFEqual(Name, *MEMORY[0x1E695F1C0]) || CFEqual(Name, *MEMORY[0x1E695F1B0]))
  {
    return 1;
  }

  if ((CFEqual(Name, *MEMORY[0x1E695F110]) || CFEqual(Name, *MEMORY[0x1E695F108])) && *Components >= 0.0 && *Components <= 1.001)
  {
    v5 = 0;
    while (v5 != 2)
    {
      v6 = v5;
      v7 = Components[v5 + 1];
      if (v7 >= 0.0)
      {
        ++v5;
        if (v7 <= 1.001)
        {
          continue;
        }
      }

      if (v6 > 1)
      {
        return 1;
      }

      goto LABEL_12;
    }

    return 1;
  }

LABEL_12:
  if (CFEqual(Name, *MEMORY[0x1E695F0B8]) || CFEqual(Name, *MEMORY[0x1E695F198]))
  {
    return 1;
  }

  v10 = *MEMORY[0x1E695F0D8];
  if ((CFEqual(Name, *MEMORY[0x1E695F0D8]) || CFEqual(Name, *MEMORY[0x1E695F0F0])) && *Components >= 0.0 && *Components <= 1.001)
  {
    v11 = 0;
    while (v11 != 2)
    {
      v12 = v11;
      v13 = Components[v11 + 1];
      if (v13 >= 0.0)
      {
        ++v11;
        if (v13 <= 1.001)
        {
          continue;
        }
      }

      if (v12 > 1)
      {
        return 1;
      }

      goto LABEL_25;
    }

    return 1;
  }

LABEL_25:
  UISCreateCachedColorTransform(v10);
  v8 = 0;
  if (CGColorTransformConvertColorComponents())
  {
    v8 = 0;
    if (v17 >= 0.0 && v17 <= 1.001)
    {
      v14 = 0;
      do
      {
        v15 = v14;
        if (v14 == 2)
        {
          break;
        }

        v16 = *&v18[v14];
        if (v16 < 0.0)
        {
          break;
        }

        ++v14;
      }

      while (v16 <= 1.001);
      v8 = v15 > 1;
    }
  }

  CGColorTransformRelease();
  return v8;
}

CGColorRef UISCreateColorWithLuminance(CGColor *a1, double a2, CGFloat a3)
{
  v43 = *MEMORY[0x1E69E9840];
  ColorSpace = CGColorGetColorSpace(a1);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace);
  v8 = CGColorGetComponents(a1);
  Name = CGColorSpaceGetName(ColorSpace);
  v10 = *MEMORY[0x1E695F1B0];
  v11 = CFEqual(Name, *MEMORY[0x1E695F1B0]);
  if (v11 || (v12 = *MEMORY[0x1E695F108], v11 = CFEqual(Name, *MEMORY[0x1E695F108]), v11))
  {
    for (i = 0; i != 3; ++i)
    {
      *&components[i * 8] = v8[i];
    }
  }

  else
  {
    v11 = CFEqual(Name, *MEMORY[0x1E695F1C0]);
    if (v11 || (v11 = CFEqual(Name, *MEMORY[0x1E695F110]), v11))
    {
      v27 = 0;
      v28.f64[0] = NAN;
      v28.f64[1] = NAN;
      v29 = vnegq_f64(v28);
      v39 = v29;
      do
      {
        *v26.i64 = v8[v27];
        v30 = fabs(*v26.i64);
        if (v30 >= 0.04045)
        {
          v40 = v26;
          v28.f64[0] = pow(v30 * 0.947867 + 0.0521327, 2.4);
          v29 = v39;
          v26 = v40;
        }

        else
        {
          v28.f64[0] = v30 * 0.0773994;
        }

        v28 = vbslq_s8(v29, v28, v26);
        *&components[v27 * 8] = v28.f64[0];
        ++v27;
      }

      while (v27 != 3);
    }

    else
    {
      UISCreateCachedColorTransform(v12);
      CGColorTransformConvertColorComponents();
      v11 = CGColorTransformRelease();
    }
  }

  v14 = vmulq_f64(*&components[8], xmmword_196019180);
  v15 = fmin(fmax(*components * 0.222495198 + v14.f64[0] + v14.f64[1], 0.0), 1.0);
  if (v15 <= a2)
  {
    if (v15 >= a2)
    {
      return CGColorCreateCopyWithAlpha(a1, a3);
    }

    v18 = 0;
    v19 = (a2 + -1.0) / (v15 + -1.0);
    do
    {
      *&components[v18] = 1.0 - v19 + v19 * *&components[v18];
      v18 += 8;
    }

    while (v18 != 24);
  }

  else
  {
    v16 = 0;
    v17 = a2 / v15;
    do
    {
      *&components[v16] = v17 * *&components[v16];
      v16 += 8;
    }

    while (v16 != 24);
  }

  MEMORY[0x1EEE9AC00](v11);
  v21 = &v39.i8[-((v20 + 23) & 0xFFFFFFFFFFFFFFF0)];
  v22 = CGColorSpaceGetName(ColorSpace);
  if (CFEqual(v22, v10) || (v23 = *MEMORY[0x1E695F108], CFEqual(v22, *MEMORY[0x1E695F108])))
  {
    *v21 = *components;
    *(v21 + 2) = *&components[16];
  }

  else if (CFEqual(v22, *MEMORY[0x1E695F1C0]) || CFEqual(v22, *MEMORY[0x1E695F110]))
  {
    v32 = 0;
    v33.f64[0] = NAN;
    v33.f64[1] = NAN;
    v34 = vnegq_f64(v33);
    v39 = v34;
    do
    {
      v31.i64[0] = *&components[v32];
      v35 = fabs(*v31.i64);
      if (v35 >= 0.0031308)
      {
        v40 = v31;
        v33.f64[0] = pow(v35 * 1.13712, 0.416667);
        v34 = v39;
        v31 = v40;
        v33.f64[0] = v33.f64[0] + -0.055;
      }

      else
      {
        v33.f64[0] = v35 * 12.92;
      }

      v33 = vbslq_s8(v34, v33, v31);
      *&v21[v32] = v33.f64[0];
      v32 += 8;
    }

    while (v32 != 24);
  }

  else
  {
    if (v22)
    {
      UISCreateCachedColorTransform(v22);
    }

    else
    {
      MEMORY[0x19A8C60C0](ColorSpace, 0);
    }

    v36 = CGColorSpaceCreateWithName(v23);
    v37 = CGColorTransformConvertColorComponents();
    CGColorTransformRelease();
    CGColorSpaceRelease(v36);
    if (!v37)
    {
      v42 = a3;
      v38 = CGColorSpaceCreateWithName(v23);
      v24 = CGColorCreate(v38, components);
      CGColorSpaceRelease(v38);
      return v24;
    }
  }

  *&v21[8 * NumberOfComponents] = a3;
  return CGColorCreate(ColorSpace, v21);
}

Class __getCADisplayClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED51BFF0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __QuartzCoreLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7459650;
    v8 = 0;
    qword_1ED51BFF0 = _sl_dlopen();
  }

  if (!qword_1ED51BFF0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QuartzCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UISDisplayContext.m" lineNumber:20 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CADisplay");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCADisplayClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UISDisplayContext.m" lineNumber:21 description:{@"Unable to find class %s", "CADisplay"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_16 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __QuartzCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED51BFF0 = result;
  return result;
}

void sub_196011644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1960123DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFBProcessManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED51C010)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __FrontBoardLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7459780;
    v8 = 0;
    qword_1ED51C010 = _sl_dlopen();
  }

  if (!qword_1ED51C010)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FrontBoardLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UISApplicationSupportService.m" lineNumber:29 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("FBProcessManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFBProcessManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UISApplicationSupportService.m" lineNumber:30 description:{@"Unable to find class %s", "FBProcessManager"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED51C008 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FrontBoardLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED51C010 = result;
  return result;
}

void UISSetDisplayConfigurationDataSource(void *a1)
{
  v1 = a1;
  BSDispatchQueueAssertMain();
  v2 = __dataSource;
  __dataSource = v1;
}

uint64_t UISDisplayConfigurationForContextID(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = __dataSource;

  return [v2 displayConfigurationForContextID:a1];
}

void UISRequestDisplayConfigurationForContextID(uint64_t a1, void *a2)
{
  v3 = a2;
  BSDispatchQueueAssertMain();
  [__dataSource requestDisplayConfiguration:v3 forContextID:a1];
}

id _UISSlotMachineServiceLogger()
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___UISCreateLoggerIfNeeded_block_invoke;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &_UISSlotMachineServiceLogger_logging;
  v2[5] = "slotMachineService";
  if (_UISSlotMachineServiceLogger_logging != -1)
  {
    dispatch_once(&_UISSlotMachineServiceLogger_logging, v2);
  }

  v0 = qword_1EAEF7E28;

  return v0;
}

id _UISUserInterfaceStyleModeServiceLogger()
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___UISCreateLoggerIfNeeded_block_invoke;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &_UISUserInterfaceStyleModeServiceLogger_logging;
  v2[5] = "userInterfaceStyleModeService";
  if (_UISUserInterfaceStyleModeServiceLogger_logging != -1)
  {
    dispatch_once(&_UISUserInterfaceStyleModeServiceLogger_logging, v2);
  }

  v0 = qword_1EAEF7DC0;

  return v0;
}

id _UISViewServiceHitTestLogger()
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___UISCreateLoggerIfNeeded_block_invoke;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &_UISViewServiceHitTestLogger_logging;
  v2[5] = "viewServiceHitTest";
  if (_UISViewServiceHitTestLogger_logging != -1)
  {
    dispatch_once(&_UISViewServiceHitTestLogger_logging, v2);
  }

  v0 = qword_1EAEF7DE0;

  return v0;
}

id _UISViewServiceTouchAuthenticationTelemetry()
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___UISCreateLoggerIfNeeded_block_invoke;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  v2[4] = &_UISViewServiceTouchAuthenticationTelemetry_logging;
  v2[5] = "viewServiceTouchAuthenticationTelemetry";
  if (_UISViewServiceTouchAuthenticationTelemetry_logging != -1)
  {
    dispatch_once(&_UISViewServiceTouchAuthenticationTelemetry_logging, v2);
  }

  v0 = qword_1EAEF7E38;

  return v0;
}

void std::vector<double>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::vector<double>::__throw_length_error[abi:nn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

BOOL _UISNearlyEqual(int64x2_t a1, int64x2_t a2)
{
  if (*a1.i64 == *a2.i64)
  {
    return 1;
  }

  if (*a1.i64 <= *a2.i64)
  {
    a2.i64[1] = a1.i64[0];
    v5.f64[0] = NAN;
    v5.f64[1] = NAN;
    v4 = veorq_s8(vandq_s8(vcltzq_s64(a2), vnegq_f64(v5)), a2);
  }

  else
  {
    a1.i64[1] = a2.i64[0];
    v3.f64[0] = NAN;
    v3.f64[1] = NAN;
    v4 = veorq_s8(vandq_s8(vcltzq_s64(a1), vnegq_f64(v3)), a1);
  }

  return vsubq_s64(v4, vdupq_laneq_s64(v4, 1)).u64[0] < 0xB;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  v1 = MEMORY[0x1EEDBF340](line);
  result.length = v2;
  result.location = v1;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}