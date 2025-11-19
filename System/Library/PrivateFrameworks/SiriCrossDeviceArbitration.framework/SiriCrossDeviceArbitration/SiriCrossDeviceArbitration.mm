id SCDALogForCategory(int a1)
{
  if (SCDALogForCategory_onceToken != -1)
  {
    dispatch_once(&SCDALogForCategory_onceToken, &__block_literal_global_6);
  }

  v2 = SCDALogForCategory_oslog[a1];

  return v2;
}

SCDANotifyObserver *observerWithNotificationName(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = getEffectiveNotificationName(a1, a2);
  v12 = [[SCDANotifyObserver alloc] initWithName:v11 options:a3 queue:v9 delegate:v10];

  return v12;
}

id getEffectiveNotificationName(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v3 stringWithCString:a1 encoding:4];
  v6 = [v4 info];

  v7 = [v6 applicationType];
  IsValidAndSpecified = AFInstanceApplicationTypeGetIsValidAndSpecified();
  if (v7 != 1 && IsValidAndSpecified)
  {
    v9 = AFInstanceApplicationTypeGetName();
    v10 = [v5 stringByAppendingFormat:@".%@", v9];

    v11 = [v6 applicationUUID];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 UUIDString];
      v14 = [v10 stringByAppendingFormat:@".%@", v13];

      v10 = v14;
    }

    v5 = v10;
  }

  return v5;
}

id SCDAToSISchemaUUID(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E69CF640];
    v2 = a1;
    v3 = [[v1 alloc] initWithNSUUID:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id _SCDAAssistantPreferencesValueForKeyWithContext(const __CFString *a1, const __CFString *a2, void *a3)
{
  v5 = [a3 preferencesSubdomain];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", v5, a1];
    v7 = CFPreferencesCopyAppValue(v6, a2);
  }

  else
  {
    v7 = CFPreferencesCopyAppValue(a1, a2);
  }

  return v7;
}

unint64_t SCDAMachAbsoluteTimeGetMilliseconds(unint64_t a1)
{
  if (_SCDAMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_SCDAMachAbsoluteTimeRate_onceToken, &__block_literal_global_42);
  }

  return (*&_SCDAMachAbsoluteTimeRate_rate * a1 / 1000000.0);
}

id getWPHeySiriAdvertisingData()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getWPHeySiriAdvertisingDataSymbolLoc_ptr;
  v8 = getWPHeySiriAdvertisingDataSymbolLoc_ptr;
  if (!getWPHeySiriAdvertisingDataSymbolLoc_ptr)
  {
    v1 = WirelessProximityLibrary();
    v6[3] = dlsym(v1, "WPHeySiriAdvertisingData");
    getWPHeySiriAdvertisingDataSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1DA75DDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getTUCallProviderManagerClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibraryCore();
  result = objc_getClass("TUCallProviderManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTUCallProviderManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t TelephonyUtilitiesLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!TelephonyUtilitiesLibraryCore_frameworkLibrary)
  {
    TelephonyUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = TelephonyUtilitiesLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getTUDialRequestClass_block_invoke(uint64_t a1)
{
  TelephonyUtilitiesLibraryCore();
  result = objc_getClass("TUDialRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTUDialRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getTUCallSourceIdentifierSpeakerRouteSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TelephonyUtilitiesLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "TUCallSourceIdentifierSpeakerRoute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTUCallSourceIdentifierSpeakerRouteSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __TelephonyUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TelephonyUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id _SCDAAssertionCreateDescriptionOfProperties(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v19 = [v1 alloc];
  v3 = [v2 uuid];
  v21 = [v2 context];
  v4 = [v21 timestamp];
  v20 = [v2 context];
  v5 = [v20 reason];
  v6 = [v2 context];
  v7 = [v6 effectiveDate];
  v8 = [v2 context];
  v9 = [v8 effectiveDate];
  [v9 timeIntervalSinceNow];
  v11 = v10;
  v12 = [v2 context];
  [v12 expirationDuration];
  v14 = v13;
  v15 = [v2 context];

  v16 = [v15 userInfo];
  v17 = [v19 initWithFormat:@"uuid = %@, timestamp = %llu, reason = %@, effectiveDate = %@ (%f), expirationDuration = %f, userInfo = %@", v3, v4, v5, v7, v11, v14, v16];

  return v17;
}

void sub_1DA7642D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  _Block_object_dispose(&a23, 8);
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA764AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SCDALogInitIfNeeded()
{
  if (SCDALogInitIfNeeded_once != -1)
  {
    dispatch_once(&SCDALogInitIfNeeded_once, &__block_literal_global_498);
  }
}

uint64_t __SCDALogInitIfNeeded_block_invoke()
{
  v0 = os_log_create("com.apple.siri", SCDALogContext);
  v1 = SCDALogContextCore;
  SCDALogContextCore = v0;

  SCDALogContextAnalytics = os_log_create("com.apple.siri", SCDALogContext);

  return MEMORY[0x1EEE66BB8]();
}

void __SCDALogForCategory_block_invoke()
{
  for (i = 0; i != 4; ++i)
  {
    v1 = os_log_create("com.apple.siri.SCDA", SCDALogForCategory_categories[i]);
    v2 = SCDALogForCategory_oslog[i];
    SCDALogForCategory_oslog[i] = v1;
  }
}

void _SCDAAssistantPreferencesSetValueForKeyWithContext(void *a1, const __CFString *a2, const __CFString *a3, void *a4)
{
  value = a1;
  v7 = [a4 preferencesSubdomain];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", v7, a2];
    CFPreferencesSetAppValue(v8, value, a3);
  }

  else
  {
    CFPreferencesSetAppValue(a2, value, a3);
  }
}

uint64_t _SCDAAssistantPreferencesBoolFromValueWithDefault(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (objc_opt_respondsToSelector())
  {
    a3 = [v5 BOOLValue];
  }

  else if (v5)
  {
    v6 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315906;
      v10 = "_SCDAAssistantPreferencesBoolFromValueWithDefault";
      v11 = 1024;
      v12 = a3;
      v13 = 2112;
      v14 = a2;
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&dword_1DA758000, v6, OS_LOG_TYPE_ERROR, "%s Expected a value responding to -BOOLValue, but found something else. Returning %{BOOL}d. {key: %@, value: %@}", &v9, 0x26u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t _SCDAAssistantPreferencesDidChangeCallback(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "_SCDAAssistantPreferencesDidChangeCallback";
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s Preferences Changed!", &v6, 0xCu);
  }

  result = [a2 _preferencesDidChangeExternally];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

double SCDAMaxNoOperationDelay()
{
  if (SCDAMaxNoOperationDelay_onceToken != -1)
  {
    dispatch_once(&SCDAMaxNoOperationDelay_onceToken, &__block_literal_global_1068);
  }

  return *&SCDAMaxNoOperationDelay_noopDelay;
}

void __SCDAMaxNoOperationDelay_block_invoke()
{
  SCDAMaxNoOperationDelay_noopDelay = 0x3F747AE147AE147BLL;
  v1 = +[SCDAAssistantPreferences sharedPreferences];
  [v1 myriadMaxNoOperationDelay];
  SCDAMaxNoOperationDelay_noopDelay = v0;
}

void sub_1DA76C258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1114(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SCDAAssertionRelinquishmentOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"inactiveOnly"];
    }

    v4 = [v3 copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

uint64_t SCDAAssertionRelinquishmentOptionsGetFromNames(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = v1;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v15;
      do
      {
        v7 = 0;
        do
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v14 + 1) + 8 * v7);
          if ([v8 length])
          {
            if (_SCDAAssertionRelinquishmentOptionsGetFromName_onceToken != -1)
            {
              dispatch_once(&_SCDAAssertionRelinquishmentOptionsGetFromName_onceToken, &__block_literal_global_1187);
            }

            v9 = [_SCDAAssertionRelinquishmentOptionsGetFromName_map objectForKey:v8];
            v10 = [v9 unsignedIntegerValue];
          }

          else
          {
            v10 = 0;
          }

          v5 |= v10;
          ++v7;
        }

        while (v4 != v7);
        v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    v1 = v13;
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1DA76D688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA76D824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libAccessibilityLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libAccessibilityLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t soft_MKBGetDeviceLockState()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  v7 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  if (!getMKBGetDeviceLockStateSymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMKBGetDeviceLockStateSymbolLoc_block_invoke;
    v3[3] = &unk_1E85D3638;
    v3[4] = &v4;
    __getMKBGetDeviceLockStateSymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    dlerror();
    v2 = abort_report_np();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v2);
  }

  return v0(0);
}

void *__getMKBGetDeviceLockStateSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __MobileKeyBagLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E85D2FE0;
    v8 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = MobileKeyBagLibraryCore_frameworkLibrary;
    if (MobileKeyBagLibraryCore_frameworkLibrary)
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

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MKBGetDeviceLockState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBGetDeviceLockStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SCDAIsInternalInstall()
{
  if (SCDAIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&SCDAIsInternalInstall_onceToken, &__block_literal_global_1238);
  }

  return SCDAIsInternalInstall_isInternal;
}

uint64_t __SCDAIsInternalInstall_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  SCDAIsInternalInstall_isInternal = result;
  return result;
}

dispatch_queue_t SCDADispatchSerialQueueWithRelativePriority(const char *a1, dispatch_qos_class_t a2, int a3)
{
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_attr_make_with_qos_class(v6, a2, a3);

  v8 = dispatch_queue_create(a1, v7);

  return v8;
}

dispatch_time_t SCDADispatchTimeGetFromDateAndOffset(void *a1, double a2)
{
  if (a1)
  {
    __y = 0.0;
    [a1 timeIntervalSince1970];
    v4 = modf(v3, &__y);
    v5.f64[0] = __y;
    v5.f64[1] = v4 * 1000000000.0;
    v7 = vcvtq_s64_f64(vminnmq_f64(vmaxnmq_f64(v5, vdupq_n_s64(0xC3E0000000000000)), vdupq_n_s64(0x43E0000000000000uLL)));
    return dispatch_walltime(&v7, (a2 * 1000000000.0));
  }

  else
  {

    return dispatch_walltime(0, (a2 * 1000000000.0));
  }
}

double SCDAMachAbsoluteTimeGetTimeInterval(unint64_t a1)
{
  if (_SCDAMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_SCDAMachAbsoluteTimeRate_onceToken, &__block_literal_global_42);
  }

  return *&_SCDAMachAbsoluteTimeRate_rate * a1 / 1000000000.0;
}

unint64_t SCDAMachAbsoluteTimeGetNanoseconds(unint64_t a1)
{
  if (_SCDAMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_SCDAMachAbsoluteTimeRate_onceToken, &__block_literal_global_42);
  }

  return (*&_SCDAMachAbsoluteTimeRate_rate * a1);
}

__CFString *SCDAGoodnessScoreOverrideOptionGetName(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E85D30E0[a1];
  }
}

uint64_t SCDAGoodnessScoreOverrideOptionGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SCDAGoodnessScoreOverrideOptionGetFromName_onceToken != -1)
    {
      dispatch_once(&SCDAGoodnessScoreOverrideOptionGetFromName_onceToken, &__block_literal_global_1554);
    }

    v2 = [SCDAGoodnessScoreOverrideOptionGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SCDAGoodnessScoreOverrideOptionGetFromName_block_invoke()
{
  v0 = SCDAGoodnessScoreOverrideOptionGetFromName_map;
  SCDAGoodnessScoreOverrideOptionGetFromName_map = &unk_1F562E490;
}

void sub_1DA771090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, char a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a16, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1684(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

unsigned int SCDAGoodnessComputeExponentialBoost(double a1, double a2, double a3, double a4, double a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = exp(-((a2 - a1) * a4 + a3 * ((a2 - a1) * (a2 - a1)) + a5));
  v6 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "SCDAGoodnessComputeExponentialBoost";
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s #scda exponential bump %f", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return llround(v5);
}

__CFString *SCDAGoodnessScoreBumpReasonGetName(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E85D3120[a1];
  }
}

uint64_t SCDAGoodnessScoreBumpReasonGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SCDAGoodnessScoreBumpReasonGetFromName_onceToken != -1)
    {
      dispatch_once(&SCDAGoodnessScoreBumpReasonGetFromName_onceToken, &__block_literal_global_1762);
    }

    v2 = [SCDAGoodnessScoreBumpReasonGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SCDAGoodnessScoreBumpReasonGetFromName_block_invoke()
{
  v0 = SCDAGoodnessScoreBumpReasonGetFromName_map;
  SCDAGoodnessScoreBumpReasonGetFromName_map = &unk_1F562E4B8;
}

SCDANotifyStatePublisher *publisherWithNotificationName(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = getEffectiveNotificationName(a1, a2);
  v7 = [[SCDANotifyStatePublisher alloc] initWithName:v6 queue:v5];

  return v7;
}

id SCDAForceNoActivityNotifyStatePublisher(void *a1, void *a2)
{
  v3 = SCDA_MYRIAD_FORCE_NO_ACTIVITY_NOTIFICATION;
  v4 = a2;
  v5 = a1;
  v6 = publisherWithNotificationName([v3 UTF8String], v5, v4);

  return v6;
}

id SCDAForceNoActivityNotifyStateObserver(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = SCDA_MYRIAD_FORCE_NO_ACTIVITY_NOTIFICATION;
  v8 = a4;
  v9 = a3;
  v10 = a1;
  v11 = observerWithNotificationName([v7 UTF8String], v10, a2, v9, v8);

  return v11;
}

void sub_1DA775620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void notificationNearMissCallback(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "notificationNearMissCallback";
    _os_log_impl(&dword_1DA758000, v3, OS_LOG_TYPE_INFO, "%s #scda #feedback near miss!", &v5, 0xCu);
  }

  [v2 _publishFeedbackArbitrationRecordForNearMiss];

  v4 = *MEMORY[0x1E69E9840];
}

id SCDANextActionWindow(void *a1, double a2)
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a1;
  v5 = [v3 date];
  [v5 timeIntervalSinceDate:v4];
  v7 = [v4 dateByAddingTimeInterval:(vcvtmd_s64_f64(v6 / a2) + 1) * a2];

  return v7;
}

id getWPHeySiriKeyManufacturerData()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getWPHeySiriKeyManufacturerDataSymbolLoc_ptr;
  v8 = getWPHeySiriKeyManufacturerDataSymbolLoc_ptr;
  if (!getWPHeySiriKeyManufacturerDataSymbolLoc_ptr)
  {
    v1 = WirelessProximityLibrary();
    v6[3] = dlsym(v1, "WPHeySiriKeyManufacturerData");
    getWPHeySiriKeyManufacturerDataSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    dlerror();
    v4 = abort_report_np();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void *__getWPHeySiriKeyManufacturerDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = WirelessProximityLibrary();
  result = dlsym(v2, "WPHeySiriKeyManufacturerData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWPHeySiriKeyManufacturerDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t WirelessProximityLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!WirelessProximityLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __WirelessProximityLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E85D3658;
    v6 = 0;
    WirelessProximityLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v4[0];
    v0 = WirelessProximityLibraryCore_frameworkLibrary;
    if (WirelessProximityLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    goto LABEL_5;
  }

  v0 = WirelessProximityLibraryCore_frameworkLibrary;
LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __WirelessProximityLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WirelessProximityLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DA7788F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getWPHeySiriKeyDeviceAddressSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = WirelessProximityLibrary();
  result = dlsym(v2, "WPHeySiriKeyDeviceAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWPHeySiriKeyDeviceAddressSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWPHeySiriAdvertisingDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = WirelessProximityLibrary();
  result = dlsym(v2, "WPHeySiriAdvertisingData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWPHeySiriAdvertisingDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1DA77D568(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1DA77FD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA780F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA782BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2347(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA7870DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getWPHeySiriClass_block_invoke(uint64_t a1)
{
  WirelessProximityLibrary();
  result = objc_getClass("WPHeySiri");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWPHeySiriClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return __36__SCDACoordinator_initWithDelegate___block_invoke(v3);
  }

  return result;
}

uint64_t carplayTriggerSeenCallback()
{
  v0 = SCDALogForCategory(1);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DA758000, v0, OS_LOG_TYPE_DEFAULT, "#scda BTLE CarPlay trigger signal received", v2, 2u);
  }

  result = _currentCoordinator;
  if (_currentCoordinator)
  {
    return [_currentCoordinator startAdvertisingFromCarPlayTrigger];
  }

  return result;
}

uint64_t inEarTriggerSeenCallback()
{
  v0 = SCDALogForCategory(1);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DA758000, v0, OS_LOG_TYPE_DEFAULT, "#scda BTLE in ear trigger signal received", v2, 2u);
  }

  result = _currentCoordinator;
  if (_currentCoordinator)
  {
    return [_currentCoordinator startAdvertisingFromInEarTrigger];
  }

  return result;
}

uint64_t myriadDecisionRequestCallback()
{
  v0 = SCDALogForCategory(1);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DA758000, v0, OS_LOG_TYPE_DEFAULT, "#scda BTLE myriad decision fetch signal received", v2, 2u);
  }

  result = _currentCoordinator;
  if (_currentCoordinator)
  {
    return [_currentCoordinator notifyCurrentDecisionResult];
  }

  return result;
}

uint64_t emergencyCallback()
{
  v0 = SCDALogForCategory(1);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DA758000, v0, OS_LOG_TYPE_DEFAULT, "#scda BTLE emergency signal received", v2, 2u);
  }

  result = _currentCoordinator;
  if (_currentCoordinator)
  {
    return [_currentCoordinator startAdvertisingEmergency];
  }

  return result;
}

uint64_t outputTriggerSeenCallback()
{
  result = _currentCoordinator;
  if (_currentCoordinator)
  {
    return [_currentCoordinator startAdvertisingFromOutgoingTrigger];
  }

  return result;
}

uint64_t notificationCallback()
{
  kdebug_trace();
  v0 = SCDALogForCategory(1);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DA758000, v0, OS_LOG_TYPE_DEFAULT, "#scda BTLE audio data signal received (CVT)", v2, 2u);
  }

  result = _currentCoordinator;
  if (_currentCoordinator)
  {
    return [_currentCoordinator startAdvertisingFromVoiceTrigger];
  }

  return result;
}

__CFString *SCDAAdvertisementRecordTypeGetName(unint64_t a1)
{
  if (a1 > 0x14)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E85D38E0[a1];
  }
}