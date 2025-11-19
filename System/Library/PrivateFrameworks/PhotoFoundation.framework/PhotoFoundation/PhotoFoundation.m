uint64_t __PFStateCaptureGetLog_block_invoke()
{
  PFStateCaptureGetLog_log = os_log_create("com.apple.photos.backend", "StateCapture");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PFOSVariantHasInternalUI()
{
  if (PFOSVariantHasInternalUI_onceToken != -1)
  {
    dispatch_once(&PFOSVariantHasInternalUI_onceToken, &__block_literal_global_449);
  }

  return PFOSVariantHasInternalUI_isAppleInternal;
}

uint64_t PFOSVariantHasInternalDiagnostics()
{
  if (PFOSVariantHasInternalDiagnostics_onceToken != -1)
  {
    dispatch_once(&PFOSVariantHasInternalDiagnostics_onceToken, &__block_literal_global_3_454);
  }

  return PFOSVariantHasInternalDiagnostics_hasInternalDiagnostics;
}

uint64_t __PFOSVariantHasInternalUI_block_invoke()
{
  result = os_variant_has_internal_ui();
  PFOSVariantHasInternalUI_isAppleInternal = result;
  return result;
}

uint64_t __PFOSVariantHasInternalDiagnostics_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  PFOSVariantHasInternalDiagnostics_hasInternalDiagnostics = result;
  return result;
}

id PFStateCaptureGetLog()
{
  if (PFStateCaptureGetLog_predicate != -1)
  {
    dispatch_once(&PFStateCaptureGetLog_predicate, &__block_literal_global_3);
  }

  v1 = PFStateCaptureGetLog_log;

  return v1;
}

void __PFProcessIsLaunchedToExecuteTests_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 environment];
  v2 = [v1 objectForKeyedSubscript:@"PHOTOS_EXECUTING_TEST_PLAN"];
  v3 = [v2 integerValue];

  if (v3)
  {
    v4 = PFBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v5 = "PFProcessIsLaunchedToExecuteTests: YES (PHOTOS_EXECUTING_TEST_PLAN)";
      v6 = &v13;
LABEL_7:
      _os_log_impl(&dword_1D8B9C000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v7 = [v0 environment];
  v8 = [v7 objectForKeyedSubscript:@"isRunningPBAT"];
  v9 = [v8 integerValue];

  if (v9)
  {
    v4 = PFBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "PFProcessIsLaunchedToExecuteTests: YES (isRunningPBAT)";
      v6 = buf;
      goto LABEL_7;
    }

LABEL_8:

    PFProcessIsLaunchedToExecuteTests_isLaunchedToExecuteTests = 1;
    goto LABEL_9;
  }

  if (PFOSVariantHasInternalDiagnostics_onceToken != -1)
  {
    dispatch_once(&PFOSVariantHasInternalDiagnostics_onceToken, &__block_literal_global_3_454);
  }

  if (PFOSVariantHasInternalDiagnostics_hasInternalDiagnostics == 1)
  {
    v10 = PFBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1D8B9C000, v10, OS_LOG_TYPE_DEFAULT, "PFProcessIsLaunchedToExecuteTests: NO", v11, 2u);
    }
  }

LABEL_9:
}

uint64_t PFIsCamera()
{
  if (PFIsCamera_onceToken != -1)
  {
    dispatch_once(&PFIsCamera_onceToken, &__block_literal_global_8);
  }

  return PFIsCamera_isCamera;
}

void __PFIsiOSPhotosApp_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"Photos"];
  PFIsiOSPhotosApp_isPhotos = v0;
}

void __PFIsCamera_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"Camera"];
  if (v0)
  {
    v2 = 1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v4 = [v3 processName];

    v2 = [v4 isEqualToString:@"LockScreenCamera"];
  }

  PFIsCamera_isCamera = v2;
}

uint64_t PFIsiOSPhotosApp()
{
  if (PFIsiOSPhotosApp_didCheck != -1)
  {
    dispatch_once(&PFIsiOSPhotosApp_didCheck, &__block_literal_global_303);
  }

  return PFIsiOSPhotosApp_isPhotos;
}

uint64_t PFProcessIsLaunchedToExecuteTests()
{
  if (PFProcessIsLaunchedToExecuteTests_predicate != -1)
  {
    dispatch_once(&PFProcessIsLaunchedToExecuteTests_predicate, &__block_literal_global_89);
  }

  return PFProcessIsLaunchedToExecuteTests_isLaunchedToExecuteTests;
}

uint64_t PFIsCameraMessagesApp()
{
  if (PFIsCameraMessagesApp_onceToken != -1)
  {
    dispatch_once(&PFIsCameraMessagesApp_onceToken, &__block_literal_global_41);
  }

  return PFIsCameraMessagesApp_isPreferences;
}

void __PFIsCameraMessagesApp_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"CameraMessagesApp"];
  PFIsCameraMessagesApp_isPreferences = v0;
}

uint64_t PFIsPhotosAppAnyPlatform()
{
  if (PFIsiOSPhotosApp_didCheck != -1)
  {
    dispatch_once(&PFIsiOSPhotosApp_didCheck, &__block_literal_global_303);
  }

  if (PFIsiOSPhotosApp_isPhotos)
  {
    v0 = 1;
  }

  else
  {
    if (PFIsTVPhotosApp_didCheck != -1)
    {
      dispatch_once(&PFIsTVPhotosApp_didCheck, &__block_literal_global_3_308);
    }

    v0 = PFIsTVPhotosApp_isTVPhotosApp;
  }

  return v0 & 1;
}

void __PFIsPhotosPicker_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"PhotoPicker"];
  if (v0 & 1) != 0 || ([MEMORY[0x1E696AE30] processInfo], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "processName"), v3 = objc_claimAutoreleasedReturnValue(), v2, LOBYTE(v2) = objc_msgSend(v3, "isEqualToString:", @"PhotosPicker"), v3, (v2))
  {
    v4 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E696AE30] processInfo];
    v6 = [v5 processName];

    v4 = [v6 isEqualToString:@"PhotosMessagesApp"];
  }

  PFIsPhotosPicker_isPhotoPicker = v4;
}

uint64_t PFIsPhotosPicker()
{
  if (PFIsPhotosPicker_onceToken != -1)
  {
    dispatch_once(&PFIsPhotosPicker_onceToken, &__block_literal_global_23);
  }

  return PFIsPhotosPicker_isPhotoPicker;
}

BOOL PFObjc_implementsClassMethod(void *a1, const char *a2)
{
  Class = object_getClass(a1);

  return PFObjc_implementsInstanceMethod(Class, a2);
}

BOOL PFObjc_implementsInstanceMethod(objc_class *a1, const char *a2)
{
  outCount = 0;
  v3 = class_copyMethodList(a1, &outCount);
  if (outCount)
  {
    v4 = 0;
    while (1)
    {
      Name = method_getName(v3[v4]);
      v6 = Name == a2;
      if (Name == a2)
      {
        break;
      }

      if (++v4 >= outCount)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  free(v3);
  return v6;
}

void __PFIsTVPhotosApp_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"TVPhotos"];
  PFIsTVPhotosApp_isTVPhotosApp = v0;
}

uint64_t PFIsCameraAppAnyPlatform()
{
  if (PFIsCamera_onceToken != -1)
  {
    dispatch_once(&PFIsCamera_onceToken, &__block_literal_global_8);
  }

  return PFIsCamera_isCamera;
}

uint64_t static PhotosFeatureFlags.isAnyAlchemistV2FeatureEnabled.getter()
{
  v6 = &type metadata for PhotosFeatureFlags;
  v0 = sub_1D8B9E408();
  v7 = v0;
  LOBYTE(v5[0]) = 17;
  v1 = sub_1D8BA7708();
  __swift_destroy_boxed_opaque_existential_1(v5);
  if (v1 & 1) != 0 || (v6 = &type metadata for PhotosFeatureFlags, v7 = v0, LOBYTE(v5[0]) = 18, v2 = sub_1D8BA7708(), __swift_destroy_boxed_opaque_existential_1(v5), (v2))
  {
    v3 = 1;
  }

  else
  {
    v6 = &type metadata for PhotosFeatureFlags;
    v7 = v0;
    LOBYTE(v5[0]) = 16;
    v3 = sub_1D8BA7708();
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v3 & 1;
}

unint64_t sub_1D8B9E408()
{
  result = qword_1ECAA37F8;
  if (!qword_1ECAA37F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA37F8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x1EEE6C0A8](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t PhotosFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1D8BA7718();
  MEMORY[0x1DA721570](v1);
  return sub_1D8BA7738();
}

uint64_t sub_1D8B9E53C()
{
  v1 = *v0;
  sub_1D8BA7718();
  MEMORY[0x1DA721570](v1);
  return sub_1D8BA7738();
}

unint64_t sub_1D8B9E584()
{
  result = qword_1ECAA3800;
  if (!qword_1ECAA3800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAA3800);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

uint64_t PFDeviceIsVirtualMachine()
{
  if (PFDeviceIsVirtualMachine_onceToken != -1)
  {
    dispatch_once(&PFDeviceIsVirtualMachine_onceToken, &__block_literal_global);
  }

  return PFDeviceIsVirtualMachine_isVirtualMachine;
}

uint64_t __PFDeviceIsVirtualMachine_block_invoke()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0);
  if (!result)
  {
    PFDeviceIsVirtualMachine_isVirtualMachine = v2 == 1;
  }

  return result;
}

id PFPhotoFoundationBinaryImageUUID()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  image_uuid = _dyld_get_image_uuid();
  v1 = 0;
  if (image_uuid)
  {
    v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v4];
  }

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

__CFString *PFStringVersionOfRunTimeLibrary(void *a1)
{
  v1 = NSVersionOfRunTimeLibrary([a1 UTF8String]);

  return _PFLibraryVersionToString(v1);
}

__CFString *_PFLibraryVersionToString(int a1)
{
  if (a1 == -1)
  {
    v3 = @"0.0.0";
  }

  else
  {
    v2 = (a1 >> 16);
    if (a1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.%d.%d", v2, BYTE1(a1), a1];
    }

    else if (BYTE1(a1))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%d.%d", v2, BYTE1(a1), v6];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v2, v5, v6];
    }
    v3 = ;
  }

  return v3;
}

__CFString *PFStringVersionOfLinkTimeLibrary(void *a1)
{
  v1 = NSVersionOfLinkTimeLibrary([a1 UTF8String]);

  return _PFLibraryVersionToString(v1);
}

id PFStringWithValidatedFormatAndLocale(void *a1, void *a2, void *a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = MEMORY[0x1E696AEC0];
  v10 = a3;
  v33 = 0;
  v11 = [[v9 alloc] initWithValidatedFormat:v7 validFormatSpecifiers:v8 locale:v10 arguments:a4 error:&v33];

  v12 = v33;
  if (!v11)
  {
    if (PFStringWithValidatedFormatAndLocale_predicate != -1)
    {
      dispatch_once(&PFStringWithValidatedFormatAndLocale_predicate, &__block_literal_global_16);
    }

    v13 = v7;
    if (objc_opt_respondsToSelector())
    {
      v14 = [v13 formatConfiguration];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [v14 objectForKeyedSubscript:@"format"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 objectForKeyedSubscript:@"one"];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v20 = [v15 objectForKeyedSubscript:@"two"];
            v21 = v20;
            if (v20)
            {
              v18 = v20;
            }

            else
            {
              v22 = [v15 objectForKeyedSubscript:@"few"];
              if (v22)
              {
                v23 = v22;
                v18 = v22;
              }

              else
              {
                v24 = [v15 objectForKeyedSubscript:@"many"];
                if (v24)
                {
                  v25 = v24;
                  v18 = v24;
                }

                else
                {
                  v26 = [v15 objectForKeyedSubscript:@"zero"];
                  v32 = v26;
                  if (v26)
                  {
                    v27 = v26;
                  }

                  else
                  {
                    v27 = [v15 objectForKeyedSubscript:@"other"];
                  }

                  v18 = v27;

                  v25 = 0;
                }

                v23 = 0;
              }

              v21 = 0;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v18;
          }

          else
          {
            v28 = v13;
          }

          v19 = v28;
        }

        else
        {
          v19 = v13;
        }
      }

      else
      {
        v19 = v13;
      }
    }

    else
    {
      v19 = v13;
    }

    if (PFStringWithValidatedFormatAndLocale_doubleLocalizedStrings)
    {
      v29 = @"*NSDoubleLocalizedStrings: FORMAT_VALIDATION_FAIL ('%@')*";
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v35 = v19;
        v36 = 2112;
        v37 = v8;
        v38 = 2112;
        v39 = v12;
        _os_log_fault_impl(&dword_1D8B9C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "failed to make string with validated format for '%@' with specifiers '%@': %@", buf, 0x20u);
      }

      v29 = @"*FORMAT_VALIDATION_FAIL ('%@')*";
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:v29, v19];
  }

  v30 = *MEMORY[0x1E69E9840];

  return v11;
}

void __PFStringWithValidatedFormatAndLocale_block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  PFStringWithValidatedFormatAndLocale_doubleLocalizedStrings = [v0 BOOLForKey:@"NSDoubleLocalizedStrings"];

  if (PFStringWithValidatedFormatAndLocale_doubleLocalizedStrings == 1)
  {
    v1 = PFBackendGetLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&dword_1D8B9C000, v1, OS_LOG_TYPE_DEFAULT, "Photos string format validation suppressed because of: NSDoubleLocalizedStrings", v2, 2u);
    }
  }
}

id PFStringWithValidatedFormat(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = PFStringWithValidatedFormatAndLocale(a1, a2, 0, &a9);

  return v9;
}

id PFLocalizedStringWithValidatedFormat(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = MEMORY[0x1E695DF58];
  v11 = a2;
  v12 = a1;
  v13 = [v10 currentLocale];
  v14 = PFStringWithValidatedFormatAndLocale(v12, v11, v13, &a9);

  return v14;
}

__CFString *PFMicrosecondAccurateStringFromDate(void *a1)
{
  v1 = a1;
  if (PFMicrosecondAccurateStringFromDate_sOnceToken != -1)
  {
    dispatch_once(&PFMicrosecondAccurateStringFromDate_sOnceToken, &__block_literal_global_11);
  }

  [v1 timeIntervalSinceReferenceDate];
  if (!v1 || v2 == 0.0)
  {
    v5 = @"(null)";
    v6 = @"(null)";
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%06ld", llround(modf(fabs(v2), &__y) * 1000000.0)];
    v4 = [PFMicrosecondAccurateStringFromDate_sDateFormatter stringFromDate:v1];
    v5 = [v4 stringByReplacingOccurrencesOfString:@".000000" withString:v3];
  }

  return v5;
}

void __PFMicrosecondAccurateStringFromDate_block_invoke()
{
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v1 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v2 = PFMicrosecondAccurateStringFromDate_sDateFormatter;
  PFMicrosecondAccurateStringFromDate_sDateFormatter = v1;

  [PFMicrosecondAccurateStringFromDate_sDateFormatter setLocale:v3];
  [PFMicrosecondAccurateStringFromDate_sDateFormatter setCalendar:v0];
  [PFMicrosecondAccurateStringFromDate_sDateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.000000Z"];
}

id PFBackendGetLog()
{
  if (PFBackendGetLog_predicate != -1)
  {
    dispatch_once(&PFBackendGetLog_predicate, &__block_literal_global_82);
  }

  v1 = PFBackendGetLog_log;

  return v1;
}

uint64_t __PFBackendGetLog_block_invoke()
{
  PFBackendGetLog_log = os_log_create("com.apple.photos.backend", "Backend");

  return MEMORY[0x1EEE66BB8]();
}

id PFUIGetLog()
{
  if (PFUIGetLog_predicate[0] != -1)
  {
    dispatch_once(PFUIGetLog_predicate, &__block_literal_global_6);
  }

  v1 = PFUIGetLog_log;

  return v1;
}

uint64_t __PFUIGetLog_block_invoke()
{
  PFUIGetLog_log = os_log_create("com.apple.photos.ui", "UI");

  return MEMORY[0x1EEE66BB8]();
}

void _PFAssertFailHandler(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a4;
  v13 = +[PFAssertionHandler currentHandler];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [v13 handleFailureInFunction:v14 file:v15 lineNumber:a3 description:v12 arguments:&a9];

  abort();
}

void _PFAssertContinueHandler(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a4;
  v13 = +[PFAssertionHandler currentHandler];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [v13 continueAfterAssertInFunction:v14 file:v15 lineNumber:a3 description:v12 arguments:&a9];
}

id PFFullMethodName(void *a1, const char *a2)
{
  v3 = a1;
  v4 = objc_opt_class();

  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v7 = 45;
  if (v4 == v3)
  {
    v7 = 43;
  }

  v8 = [v5 stringWithFormat:@"%c[%@ %@]", v7, v4, v6];

  return v8;
}

id PFMethodNotImplementedException(void *a1, const char *a2)
{
  v3 = a1;
  v4 = PFFullMethodName(v3, a2);
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: method not implemented sent to %p", v4, v3];

  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];

  return v8;
}

void _PFThrowMethodNotImplemented(void *a1, const char *a2)
{
  v2 = PFMethodNotImplementedException(a1, a2);
  objc_exception_throw(v2);
}

id PFAbstractMethodException(void *a1, const char *a2)
{
  v3 = a1;
  v4 = PFFullMethodName(v3, a2);
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: must override selector sent to %p", v4, v3];

  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];

  return v8;
}

void _PFThrowMethodIsAbstract(void *a1, const char *a2)
{
  v2 = PFAbstractMethodException(a1, a2);
  objc_exception_throw(v2);
}

double PFFloatNan()
{
  if (PFFloatNan_onceToken != -1)
  {
    dispatch_once(&PFFloatNan_onceToken, &__block_literal_global_145);
  }

  return *&PFFloatNan_result;
}

id PFMap(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && (v5 = [v3 performSelector:sel_count]) != 0)
    {
      v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
    }

    else
    {
      v6 = [MEMORY[0x1E695DF70] array];
    }

    v7 = v6;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = v4[2](v4, *(*(&v16 + 1) + 8 * i));
          if (v13)
          {
            [v7 addObject:{v13, v16}];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

id PFMapDictionary(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v16 = v3;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:v11];
          v13 = v4[2](v4, v11, v12);
          if (v13)
          {
            [v5 setObject:v13 forKeyedSubscript:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    v3 = v16;
  }

  else
  {
    v5 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

id PFMapIndexes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v6 = [v3 firstIndex];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v6; i != 0x7FFFFFFFFFFFFFFFLL; i = [v3 indexGreaterThanIndex:i])
    {
      v8 = v4[2](v4, i);
      if (v8)
      {
        [v5 addObject:v8];
      }
    }
  }

  return v5;
}

id PFFilter(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (v4[2](v4, v11))
          {
            [v5 addObject:{v11, v14}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t PFCount(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v7 += v4[2](v4, *(*(&v12 + 1) + 8 * i));
      }

      v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

id PFFind(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t PFExists(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (v4[2](v4, *(*(&v11 + 1) + 8 * i)))
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

id PFReduce(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v10 = v8;
  if (v9)
  {
    v11 = v9;
    v12 = *v18;
    v10 = v8;
    do
    {
      v13 = 0;
      v14 = v10;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v10 = v7[2](v7, *(*(&v17 + 1) + 8 * v13), v14);

        ++v13;
        v14 = v10;
      }

      while (v11 != v13);
      v11 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

double PFReduceF(void *a1, void *a2, double a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        a3 = v6[2](v6, *(*(&v13 + 1) + 8 * v10++), a3);
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
  return a3;
}

__CFString *PFBitmaskDescription(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (v7 == [v6 count])
  {
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = @"None";
    goto LABEL_7;
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString * _Nonnull PFBitmaskDescription(NSUInteger, NSArray<NSNumber *> *__strong _Nonnull, NSArray<NSString *> *__strong _Nonnull)"}];
  [v12 handleFailureInFunction:v13 file:@"PFOptimization.m" lineNumber:13 description:{@"Invalid parameter not satisfying: %@", @"bits.count == names.count"}];

  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __PFBitmaskDescription_block_invoke;
  v17[3] = &unk_1E8563868;
  v21 = a1;
  v9 = v8;
  v18 = v9;
  v19 = v6;
  v20 = &v22;
  [v5 enumerateObjectsUsingBlock:v17];
  v10 = a1 & ~v23[3];
  if (v10)
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"UNKNOWN(%lu)", v10];
    [v9 addObject:v16];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v27 = v10;
      _os_log_error_impl(&dword_1D8B9C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unknown bitmask description (%lu)", buf, 0xCu);
    }
  }

  v11 = [v9 componentsJoinedByString:@"|"];

  _Block_object_dispose(&v22, 8);
LABEL_7:

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

void sub_1D8BA2270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __PFBitmaskDescription_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 unsignedIntegerValue];
  if ((v5 & ~*(a1 + 56)) == 0)
  {
    v6 = v5;
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) objectAtIndexedSubscript:a3];
    [v7 addObject:v8];

    *(*(*(a1 + 48) + 8) + 24) |= v6;
  }
}

BOOL PFObjc_classIsSubclassOfClass(objc_class *Superclass, objc_class *a2)
{
  do
  {
    Superclass = class_getSuperclass(Superclass);
  }

  while (Superclass && Superclass != a2);
  return Superclass == a2;
}

void PFObjc_enumerateClassNamesForImageHeader(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_copyClassNamesForImageHeader();
  free(v3);
}

void PFObjc_enumerateSubclassesForHeader(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __PFObjc_enumerateSubclassesForHeader_block_invoke;
  v9[3] = &unk_1E8563890;
  v11 = a2;
  v12 = a3;
  v10 = v7;
  v8 = v7;
  PFObjc_enumerateClassNamesForImageHeader(a1, v9);
}

objc_class *PFObjc_implementingClassForInstanceMethod(objc_class *a1, const char *a2)
{
  do
  {
    if (PFObjc_implementsInstanceMethod(a1, a2))
    {
      break;
    }

    a1 = [(objc_class *)a1 superclass];
  }

  while (a1);

  return a1;
}

uint64_t PFIsTVPhotosApp()
{
  if (PFIsTVPhotosApp_didCheck != -1)
  {
    dispatch_once(&PFIsTVPhotosApp_didCheck, &__block_literal_global_3_308);
  }

  return PFIsTVPhotosApp_isTVPhotosApp;
}

uint64_t PFIsLockScreenCamera()
{
  if (PFIsLockScreenCamera_didCheck != -1)
  {
    dispatch_once(&PFIsLockScreenCamera_didCheck, &__block_literal_global_16_316);
  }

  return PFIsLockScreenCamera_isCamera;
}

void __PFIsLockScreenCamera_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"LockScreenCamera"];
  PFIsLockScreenCamera_isCamera = v0;
}

uint64_t PFIsPhotosMessagesApp()
{
  if (PFIsPhotosMessagesApp_onceToken != -1)
  {
    dispatch_once(&PFIsPhotosMessagesApp_onceToken, &__block_literal_global_18);
  }

  return PFIsPhotosMessagesApp_isPhotosMessagesApp;
}

void __PFIsPhotosMessagesApp_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"PhotosMessagesApp"];
  PFIsPhotosMessagesApp_isPhotosMessagesApp = v0;
}

uint64_t PFIsSpotlight()
{
  if (PFIsSpotlight_onceToken != -1)
  {
    dispatch_once(&PFIsSpotlight_onceToken, &__block_literal_global_31);
  }

  return PFIsSpotlight_isSpotlight;
}

void __PFIsSpotlight_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"Spotlight"];
  PFIsSpotlight_isSpotlight = v0;
}

uint64_t PFIsPreferences()
{
  if (PFIsPreferences_onceToken != -1)
  {
    dispatch_once(&PFIsPreferences_onceToken, &__block_literal_global_36);
  }

  return PFIsPreferences_isPreferences;
}

void __PFIsPreferences_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"Preferences"];
  PFIsPreferences_isPreferences = v0;
}

uint64_t PFIsMessagesApp()
{
  if (PFIsMessagesApp_onceToken != -1)
  {
    dispatch_once(&PFIsMessagesApp_onceToken, &__block_literal_global_46);
  }

  return PFIsMessagesApp_isMessages;
}

void __PFIsMessagesApp_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  LOBYTE(v0) = [v1 isEqualToString:@"MobileSMS"];
  PFIsMessagesApp_isMessages = v0;
}

void sub_1D8BA37A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double PFSizeWithAspectRatioFittingSize(double a1, double a2, double a3)
{
  if (a2 == 0.0 || a3 == 0.0)
  {
    return 0.0;
  }

  v3 = a2 == INFINITY && a3 == INFINITY;
  v4 = 0.0;
  if (!v3)
  {
    if (fabs(a2 / a3) <= a1)
    {
      return a2;
    }

    else
    {
      return a3 * a1;
    }
  }

  return v4;
}

double PFSizeWithAspectRatioFillingSize(double a1, double a2, double a3)
{
  if (a2 == 0.0 || a3 == 0.0)
  {
    return 0.0;
  }

  v3 = a2 == INFINITY && a3 == INFINITY;
  v4 = 0.0;
  if (!v3)
  {
    if (fabs(a2 / a3) >= a1)
    {
      return a2;
    }

    else
    {
      return a3 * a1;
    }
  }

  return v4;
}

double PFScaleFactorForMaximumPixelCount(unint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 0.0 || a3 == 0.0)
  {
    _PFAssertFailHandler("CGFloat PFScaleFactorForMaximumPixelCount(CGSize, NSUInteger)", "/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoFoundation/Source/PFGeometryUtilities.m", 50, @"non-zero inputSize required", a7, a8, a9, a10, vars0);
  }

  if (!a1)
  {
    _PFAssertFailHandler("CGFloat PFScaleFactorForMaximumPixelCount(CGSize, NSUInteger)", "/Library/Caches/com.apple.xbs/Sources/Photos/Projects/PhotoFoundation/Source/PFGeometryUtilities.m", 51, @"maximumPixelCount > 0 required", a7, a8, a9, a10, vars0);
  }

  result = sqrt(a1 / (a2 * a3));
  if (a2 >= a3)
  {
    v12 = a2;
  }

  else
  {
    v12 = a3;
  }

  v13 = round(v12 * result);
  if (a2 < a3)
  {
    a3 = a2;
  }

  if (v13 * round(a3 * result) > a1)
  {
    return result * ((v13 + -1.0) / v13);
  }

  return result;
}

BOOL PFRectIsValid(double a1, double a2, double a3, double a4)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  result = 0;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return fabs(a4) != INFINITY;
  }

  return result;
}

double PFLargestSalientAspectFilledCropRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  if (a3 == 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 0.0;
    if (a4 != 0.0)
    {
      v21 = fabs(a3 / a4) <= a5;
      v22 = a4 * a5;
      if (v21)
      {
        v22 = a3;
      }

      if (a3 != INFINITY || a4 != INFINITY)
      {
        v20 = v22;
      }
    }
  }

  v24 = a1 + a9 * a3;
  v25 = a3 * a11;
  v26 = a1 + a13 * a3 + a3 * a15 * 0.5 + v20 * -0.5;
  v27 = v24 + a3 * a11 * 0.5;
  if (v26 >= v24)
  {
    v28 = v24 + v25;
    if (v20 + v26 > v28)
    {
      v26 = v28 - v20;
      v29 = v27 + v20 * -0.5;
      if (v25 < v20)
      {
        v26 = v29;
      }
    }
  }

  else
  {
    v26 = v27 + v20 * -0.5;
    if (v25 >= v20)
    {
      v26 = v24;
    }
  }

  return fmax(fmin(v26, a3 - v20), 0.0);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D8BA533C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

void PFCrashWithErrno(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E696AEC0];
  v3 = __error();
  v4 = strerror(*v3);
  v5 = [v2 stringWithFormat:@"%@: %s (%d)", v1, v4, *__error()];
  switch(*__error())
  {
    case 1:
      PFCrashWith_EPERM(v5);
    case 2:
      PFCrashWith_ENOENT(v5);
    case 4:
      PFCrashWith_EINTR(v5);
    case 5:
      PFCrashWith_EIO(v5);
    case 9:
      PFCrashWith_EBADF(v5);
    case 11:
      PFCrashWith_EDEADLK(v5);
    case 12:
      PFCrashWith_ENOMEM(v5);
    case 13:
      PFCrashWith_EACCES(v5);
    case 14:
      PFCrashWith_EFAULT(v5);
    case 16:
      PFCrashWith_EBUSY(v5);
    case 17:
      PFCrashWith_EEXIST(v5);
    case 20:
      PFCrashWith_ENOTDIR(v5);
    case 21:
      PFCrashWith_EISDIR(v5);
    case 22:
      PFCrashWith_EINVAL(v5);
    case 23:
      PFCrashWith_ENFILE(v5);
    case 24:
      PFCrashWith_EMFILE(v5);
    case 27:
      PFCrashWith_EFBIG(v5);
    case 28:
      PFCrashWith_ENOSPC(v5);
    case 29:
      PFCrashWith_ESPIPE(v5);
    case 30:
      PFCrashWith_EROFS(v5);
    case 31:
      PFCrashWith_EMLINK(v5);
    case 35:
      PFCrashWith_EAGAIN(v5);
    case 60:
      PFCrashWith_ETIMEDOUT(v5);
    case 61:
      PFCrashWith_ECONNREFUSED(v5);
    case 62:
      PFCrashWith_ELOOP(v5);
    case 63:
      PFCrashWith_ENAMETOOLONG(v5);
    default:
      PFCrashWithUnknownErrno(v5);
  }
}

void PFCrashWith_EPERM(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to EPERM", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_ENOENT(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to ENOENT", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_EINTR(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to EINTR", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_EIO(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to EIO", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_EBADF(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to EBADF", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_EDEADLK(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to EDEADLK", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_ENOMEM(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to ENOMEM", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_EACCES(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to EACCES", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_EFAULT(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to EFAULT", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_EBUSY(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to EBUSY", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_EEXIST(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to EEXIST", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_ENOTDIR(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to ENOTDIR", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_EISDIR(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to EISDIR", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_EINVAL(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to EINVAL", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_ENFILE(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to ENFILE", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_EMFILE(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to EMFILE", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_EFBIG(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to EFBIG", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_ENOSPC(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to ENOSPC", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_ESPIPE(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to ESPIPE", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_EROFS(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to EROFS", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_EMLINK(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to EMLINK", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_EAGAIN(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to EAGAIN", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_ETIMEDOUT(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to ETIMEDOUT", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_ECONNREFUSED(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to ECONNREFUSED", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_ELOOP(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to ELOOP", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWith_ENAMETOOLONG(void *a1)
{
  v1 = a1;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Crashing due to ENAMETOOLONG", v3, 2u);
  }

  [v1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFCrashWithUnknownErrno(void *a1)
{
  [a1 UTF8String];
  _os_crash();
  __break(1u);
}

void PFTestAddressSanitizer()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  v1 = PFBackendGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v4 = 134217984;
    v5 = v0;
    _os_log_impl(&dword_1D8B9C000, v1, OS_LOG_TYPE_ERROR, "Testing ASAN on buffer at %p", &v4, 0xCu);
  }

  v0[1] = 7;
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v4) = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Testing ASAN failed", &v4, 2u);
  }

  free(v0);
  v3 = *MEMORY[0x1E69E9840];
}

void PFTestThreadSanitizer()
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v0 = dispatch_get_global_queue(0, 0);
  v1 = PFBackendGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v12 = v8 + 3;
    _os_log_impl(&dword_1D8B9C000, v1, OS_LOG_TYPE_ERROR, "Testing TSAN on racyVar at %p", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PFTestThreadSanitizer_block_invoke;
  block[3] = &unk_1E8563A60;
  block[4] = &v7;
  dispatch_async(v0, block);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PFTestThreadSanitizer_block_invoke_2;
  v5[3] = &unk_1E8563A60;
  v5[4] = &v7;
  dispatch_async(v0, v5);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __PFTestThreadSanitizer_block_invoke_3;
  v4[3] = &unk_1E8563A60;
  v4[4] = &v7;
  dispatch_sync(v0, v4);
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Testing TSAN failed", buf, 2u);
  }

  _Block_object_dispose(&v7, 8);
  v3 = *MEMORY[0x1E69E9840];
}

void __PFTestThreadSanitizer_block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PFBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(*(*(a1 + 32) + 8) + 24);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_1D8B9C000, v2, OS_LOG_TYPE_ERROR, "Value of the racyVar after TSAN race: %d\n", v5, 8u);
  }

  v4 = *MEMORY[0x1E69E9840];
}