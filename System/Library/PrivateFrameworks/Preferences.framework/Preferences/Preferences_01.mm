uint64_t __SetupAssistantLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18B08A56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PSSearchInlineTogglesEnabled()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v0 sf_isInternalInstall])
  {
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"PSSearchShowToggles", @"com.apple.Preferences", &keyExistsAndHasValidFormat))
    {
      v1 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v1 = 1;
    }

    v2 = !v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id PSSearchFormattedString(void *a1)
{
  v1 = a1;
  if ([v1 hasSuffix:@":"])
  {
    v2 = [v1 substringToIndex:{objc_msgSend(v1, "length") - 1}];

    v1 = v2;
  }

  v3 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v4 = [v1 stringByTrimmingCharactersInSet:v3];

  return v4;
}

id SearchEntriesFromSpecifiers(void *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v25 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [v14 cellType];
          if (!v15)
          {
            v16 = v14;

            v11 = v16;
          }

          v17 = SearchEntryFromSpecifier(v14, v6);
          v18 = v17;
          if (v17)
          {
            [v17 setPlistName:v25];
            if (v15)
            {
              [v18 setGroupSpecifier:v11];
              v19 = [v11 name];

              if (v19)
              {
                v20 = [v11 name];
                [v18 setGroupName:v20];

                v21 = [v18 keywords];
                v22 = [v11 name];
                [v21 addObject:v22];
              }
            }

            [v7 addObject:v18];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v5 = v24;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id SearchEntriesFromManifest(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (SearchEntriesFromManifest_onceToken != -1)
  {
    SearchEntriesFromManifest_cold_1();
  }

  v5 = [v4 pathForResource:@"SettingsSearchManifest" ofType:@"plist"];
  if (v5)
  {
    v6 = [SearchEntriesFromManifest_manifestCache objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = [SearchEntriesFromManifest_manifestCache objectForKeyedSubscript:v5];
    }

    else
    {
      v7 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v5];
      [SearchEntriesFromManifest_manifestCache setObject:v7 forKeyedSubscript:v5];
    }

    v9 = [v7 objectForKeyedSubscript:@"stringTable"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v7 objectForKeyedSubscript:@"title"];
    }

    v12 = v11;

    v13 = [v4 bundlePath];
    v14 = [v13 lastPathComponent];
    v15 = [v14 stringByDeletingPathExtension];

    v16 = [v3 specifier];
    v23 = v12;
    v17 = SearchSpecifiersFromPlist(v7, v16, v12, v4);

    v8 = SearchEntriesFromSpecifiers(v17, v3, 0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v24 + 1) + 8 * i) setManifestBundleName:v15];
        }

        v19 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

PSSearchEntry *SearchEntryFromSpecifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v5 = v3;
  v6 = [v5 identifier];
  if (v6)
  {
    v7 = [v5 cellType];

    if (v7)
    {
      v8 = [v5 propertyForKey:@"searchable"];
      v9 = v8;
      if (!v8 || ([v8 BOOLValue] & 1) != 0)
      {

        v6 = [[PSSearchEntry alloc] initWithSpecifier:v5 parent:v4];
        v5 = [v5 propertyForKey:@"searchBundle"];
        if (v5)
        {
          [(PSSearchEntry *)v6 setBundleName:v5];
        }

        else
        {
          v11 = [(PSSearchEntry *)v6 bundleName];

          if (!v11)
          {
            v12 = [v4 bundleName];
            [(PSSearchEntry *)v6 setBundleName:v12];
          }
        }

        goto LABEL_11;
      }
    }

    v6 = 0;
  }

LABEL_11:

LABEL_12:

  return v6;
}

void __SearchEntriesFromManifest_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = SearchEntriesFromManifest_manifestCache;
  SearchEntriesFromManifest_manifestCache = v0;
}

void sub_18B08FD94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B090E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B096358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B096C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_18B096E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_18B096FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18B098338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PSGetCapabilityBoolAnswer(uint64_t a1)
{
  v2 = +[PSCapabilityManager sharedManager];
  v3 = [v2 capabilityBoolAnswer:a1];

  return v3;
}

void sub_18B09D8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getPSUICellularPlanManagerCacheClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPSUICellularPlanManagerCacheClass_softClass;
  v7 = getPSUICellularPlanManagerCacheClass_softClass;
  if (!getPSUICellularPlanManagerCacheClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getPSUICellularPlanManagerCacheClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getPSUICellularPlanManagerCacheClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B09DFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCBClientClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCBClientClass_softClass;
  v7 = getCBClientClass_softClass;
  if (!getCBClientClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCBClientClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getCBClientClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B09E2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getRTTTelephonyUtilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRTTTelephonyUtilitiesClass_softClass;
  v7 = getRTTTelephonyUtilitiesClass_softClass;
  if (!getRTTTelephonyUtilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRTTTelephonyUtilitiesClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getRTTTelephonyUtilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B09E544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCAMCaptureCapabilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCAMCaptureCapabilitiesClass_softClass;
  v7 = getCAMCaptureCapabilitiesClass_softClass;
  if (!getCAMCaptureCapabilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCAMCaptureCapabilitiesClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getCAMCaptureCapabilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B09E6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXCapabilityManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DE0E8;
    v6 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("AXCapabilityManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXCapabilityManagerClass_block_invoke_cold_1();
  }

  getAXCapabilityManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPGPictureInPictureProxyClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PegasusLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PegasusLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DE100;
    v6 = 0;
    PegasusLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PegasusLibraryCore_frameworkLibrary)
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
  result = objc_getClass("PGPictureInPictureProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPGPictureInPictureProxyClass_block_invoke_cold_1();
  }

  getPGPictureInPictureProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PegasusLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PegasusLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getADASManagerClass_block_invoke(uint64_t a1)
{
  AudioDataAnalysisLibrary();
  result = objc_getClass("ADASManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getADASManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getADASManagerClass_block_invoke_cold_1();
    return AudioDataAnalysisLibrary();
  }

  return result;
}

uint64_t AudioDataAnalysisLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AudioDataAnalysisLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AudioDataAnalysisLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71DE118;
    v5 = 0;
    AudioDataAnalysisLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AudioDataAnalysisLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!AudioDataAnalysisLibraryCore_frameworkLibrary)
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

uint64_t __AudioDataAnalysisLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AudioDataAnalysisLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getADAFPreferenceKeyHAENKnownAccessoriesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioDataAnalysisLibrary();
  result = dlsym(v2, "ADAFPreferenceKeyHAENKnownAccessories");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getADAFPreferenceKeyHAENKnownAccessoriesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getADAFPreferenceKeyConnectedWiredDeviceIsHeadphoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AudioDataAnalysisLibrary();
  result = dlsym(v2, "ADAFPreferenceKeyConnectedWiredDeviceIsHeadphone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getADAFPreferenceKeyConnectedWiredDeviceIsHeadphoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getPSUICellularPlanManagerCacheClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SettingsCellularUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SettingsCellularUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DE130;
    v6 = 0;
    SettingsCellularUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SettingsCellularUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("PSUICellularPlanManagerCache");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPSUICellularPlanManagerCacheClass_block_invoke_cold_1();
  }

  getPSUICellularPlanManagerCacheClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SettingsCellularUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SettingsCellularUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCBClientClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreBrightnessLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreBrightnessLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DE148;
    v6 = 0;
    CoreBrightnessLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CoreBrightnessLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CBClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCBClientClass_block_invoke_cold_1();
  }

  getCBClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreBrightnessLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreBrightnessLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getRTTTelephonyUtilitiesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!RTTUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __RTTUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DE160;
    v6 = 0;
    RTTUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (RTTUtilitiesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("RTTTelephonyUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRTTTelephonyUtilitiesClass_block_invoke_cold_1();
  }

  getRTTTelephonyUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RTTUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  RTTUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCAMCaptureCapabilitiesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CameraUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CameraUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DE178;
    v6 = 0;
    CameraUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CameraUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("CAMCaptureCapabilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCAMCaptureCapabilitiesClass_block_invoke_cold_1();
  }

  getCAMCaptureCapabilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CameraUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CameraUILibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B0A2EAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

uint64_t SystemHasCapabilities(void *a1)
{
  v1 = a1;
  v2 = +[PSCapabilityManager sharedManager];
  v3 = [v2 hasCapabilities:v1];

  return v3;
}

id SearchSpecifiersFromPlistWithCapabilities(void *a1, void *a2, void *a3, void *a4, char a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = __SpecifiersFromPlist(a1, a2, 0, a3, a4, 0, 0, 0, 0, a5);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 propertyForKey:@"searchLabel"];
        if (v11)
        {
          [v10 setName:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v5;
}

id AlignmentFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"UITextAlignmentCenter"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"NSCenterTextAlignment") & 1) != 0 || (objc_msgSend(v1, "lowercaseString"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isEqualToString:", @"center"), v2, (v3))
  {
    v4 = 2;
  }

  else if ([v1 isEqualToString:@"UITextAlignmentLeft"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"NSLeftTextAlignment") & 1) != 0 || (objc_msgSend(v1, "lowercaseString"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"left"), v7, (v8))
  {
    v4 = 1;
  }

  else if ([v1 isEqualToString:@"UITexitAlignmentRight"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 3;
    if (([v1 isEqualToString:@"NSRightTextAlignment"] & 1) == 0)
    {
      v9 = [v1 lowercaseString];
      v10 = [v9 isEqualToString:@"right"];

      if (v10)
      {
        v4 = 3;
      }

      else
      {
        v4 = 0xFFFFFFFFLL;
      }
    }
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInt:v4];

  return v5;
}

void sub_18B0A6920(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_18B0A7E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B0A9414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_18B0AAEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B0AC4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_18B0AD544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

id GetImage(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[PSListController appearance];
  v6 = [v5 usesDarkTheme];

  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  v8 = MEMORY[0x1E69DCAB8];
  v9 = v7;
  v10 = PSPreferencesFrameworkBundle();
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  v12 = [v11 traitCollection];
  v13 = [v8 imageNamed:v9 inBundle:v10 compatibleWithTraitCollection:v12];

  if ((v6 & 1) == 0)
  {
    v14 = +[PSListController appearance];
    v15 = [v14 textColor];

    if (v15)
    {
      v16 = [v13 _flatImageWithColor:v15];

      v13 = v16;
    }
  }

  return v13;
}

id GetImageTemplate(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69DCAB8];
  v5 = a1;
  v6 = PSPreferencesFrameworkBundle();
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  v8 = [v7 traitCollection];
  v9 = [v4 imageNamed:v5 inBundle:v6 compatibleWithTraitCollection:v8];

  if (v3)
  {
    v10 = [v9 _flatImageWithColor:v3];

    v9 = v10;
  }

  return v9;
}

BOOL ShouldIndexSpecifier(void *a1)
{
  v1 = a1;
  v2 = [v1 identifier];

  if (v2 && ([v1 name], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "length"), v3, v4 <= 0x3C))
  {
    v6 = [v1 propertyForKey:@"searchable"];
    v7 = v6;
    v5 = (!v6 || [v6 BOOLValue]) && !PSIsSpecifierHiddenDueToRestrictions(v1);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

__CFString *SUIKCategoryFromSearchableItem(void *a1)
{
  v1 = a1;
  v2 = [v1 attributeSet];
  v3 = [v2 theme];

  v4 = [v1 uniqueIdentifier];

  if (!v3)
  {
    v5 = SFObjectAndOffsetForURLPair();
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v4];
    v7 = [MEMORY[0x1E696AF20] componentsWithURL:v6 resolvingAgainstBaseURL:1];
    v8 = [v7 path];
    v9 = [v8 componentsSeparatedByString:@"#"];
    v10 = [v9 firstObject];
    v11 = [v10 componentsSeparatedByString:@"&"];
    v12 = [v11 firstObject];
    v13 = [v12 componentsSeparatedByString:@"="];

    v3 = [v13 lastObject];
    if ([(__CFString *)v3 isEqualToString:@"ROOT"])
    {
      v14 = [v5 objectForKeyedSubscript:@"offsetItem"];

      v3 = v14;
    }

    if (!v3)
    {
      v3 = &stru_1EFE45030;
    }
  }

  return v3;
}

void sub_18B0B989C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B0BA268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18B0BD254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCommerceRemoteUIDelegateClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!UsageSettingsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __UsageSettingsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DEBE0;
    v6 = 0;
    UsageSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (UsageSettingsLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CommerceRemoteUIDelegate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCommerceRemoteUIDelegateClass_block_invoke_cold_1();
  }

  getCommerceRemoteUIDelegateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UsageSettingsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  UsageSettingsLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getCommerceOffersSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!iCloudQuotaUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __iCloudQuotaUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E71DEBF8;
    v7 = 0;
    iCloudQuotaUILibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = iCloudQuotaUILibraryCore_frameworkLibrary;
    if (iCloudQuotaUILibraryCore_frameworkLibrary)
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

  v2 = iCloudQuotaUILibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "CommerceOffers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCommerceOffersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudQuotaUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  iCloudQuotaUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getQuotaRequestManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!UsageSettingsLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __UsageSettingsLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DEC38;
    v6 = 0;
    UsageSettingsLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (UsageSettingsLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("QuotaRequestManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getQuotaRequestManagerClass_block_invoke_cold_1();
  }

  getQuotaRequestManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UsageSettingsLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  UsageSettingsLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_18B0C0F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18B0C1AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getGMAvailabilityWrapperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getGMAvailabilityWrapperClass_softClass;
  v7 = getGMAvailabilityWrapperClass_softClass;
  if (!getGMAvailabilityWrapperClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getGMAvailabilityWrapperClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getGMAvailabilityWrapperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B0C4F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getGMAvailabilityWrapperClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!GenerativeModelsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __GenerativeModelsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DED78;
    v6 = 0;
    GenerativeModelsLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (GenerativeModelsLibraryCore_frameworkLibrary)
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
  result = objc_getClass("GMAvailabilityWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getGMAvailabilityWrapperClass_block_invoke_cold_1();
  }

  getGMAvailabilityWrapperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __GenerativeModelsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  GenerativeModelsLibraryCore_frameworkLibrary = result;
  return result;
}

id PS_LocalizedString(void *a1)
{
  v1 = a1;
  v2 = PSPreferencesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:0 table:0];

  return v3;
}

id PS_LocalizedStringForDocumentsPolicy(void *a1)
{
  v1 = a1;
  v2 = PSPreferencesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"PSDocumentsPolicy"];

  return v3;
}

id PS_LocalizedStringForSystemPolicy(void *a1)
{
  v1 = a1;
  v2 = PSPreferencesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"PSSystemPolicy"];

  return v3;
}

id PS_LocalizedStringForSystemPolicyKa7ana(void *a1)
{
  v1 = a1;
  v2 = PSPreferencesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"PSSystemPolicy-ka7ana"];

  return v3;
}

id PS_LocalizedStringForDriverPolicy(void *a1)
{
  v1 = a1;
  v2 = PSPreferencesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"PSDriverPolicy"];

  return v3;
}

id PS_LocalizedStringForAppleID(void *a1)
{
  v1 = a1;
  v2 = PSPreferencesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"AppleID"];

  return v3;
}

id PS_RebrandedKeyForAppleID(void *a1)
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

id PS_LocalizedStringForKeychainSync(void *a1)
{
  v1 = a1;
  v2 = PSPreferencesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"KeychainSync"];

  return v3;
}

id PS_LocalizedStringForInternational(void *a1)
{
  v1 = a1;
  v2 = PSPreferencesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"PSInternational"];

  return v3;
}

id PS_LocalizedStringForSoftwareUpdate(void *a1)
{
  v1 = a1;
  v2 = PSPreferencesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Software Update"];

  return v3;
}

id PS_LocalizedStringForPINEntry(void *a1)
{
  v1 = a1;
  v2 = PSPreferencesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"PIN Entry"];

  return v3;
}

id PS_LocalizedStringForAccessories(void *a1)
{
  v1 = a1;
  v2 = PSPreferencesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Accessories"];

  return v3;
}

uint64_t PSGreenTeaLoggerForAppListing()
{
  if (PSGreenTeaLoggerForAppListing_onceToken != -1)
  {
    PSGreenTeaLoggerForAppListing_cold_1();
  }

  return PSGreenTeaLoggerForAppListing_appListLogger;
}

uint64_t __PSGreenTeaLoggerForAppListing_block_invoke()
{
  result = ct_green_tea_logger_create();
  PSGreenTeaLoggerForAppListing_appListLogger = result;
  return result;
}

void PSGreenTeaAppListLog(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a1;
  if (PSGreenTeaLoggerForAppListing_onceToken != -1)
  {
    PSGreenTeaLoggerForAppListing_cold_1();
  }

  if (PSGreenTeaLoggerForAppListing_appListLogger)
  {
    v10 = getCTGreenTeaOsLogHandle();
    v11 = v10;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [MEMORY[0x1E696AAE8] mainBundle];
      v13 = [v12 bundleIdentifier];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v9 arguments:&a9];
      *buf = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&dword_18B008000, v11, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@", buf, 0x16u);
    }
  }
}

void PSMigrateSoundsDefaults_10_0()
{
  v0 = _PSLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_18B008000, v0, OS_LOG_TYPE_DEFAULT, "Migrating sounds defaults if needed", v2, 2u);
  }

  v1 = objc_opt_new();
  [v1 _migrateKey:@"lock-unlock" domain:@"com.apple.springboard" toKey:@"lock-audio" toDomain:@"com.apple.preferences.sounds" migrateCloud:1];
  [v1 _migrateKey:@"keyboard" domain:@"com.apple.preferences.sounds" toKey:@"keyboard-audio" toDomain:@"com.apple.preferences.sounds" migrateCloud:0];
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  CFPreferencesAppSynchronize(@"com.apple.preferences.sounds");
}

Class __getBBSettingsGatewayClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!BulletinBoardLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __BulletinBoardLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DED98;
    v6 = 0;
    BulletinBoardLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (BulletinBoardLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("BBSettingsGateway");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBBSettingsGatewayClass_block_invoke_cold_1();
  }

  getBBSettingsGatewayClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BulletinBoardLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  BulletinBoardLibraryCore_frameworkLibrary_0 = result;
  return result;
}

id PSConnected298()
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v0 = [MEMORY[0x1E698F468] sharedInstance];
  v1 = [v0 connectedDevices];

  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v7 + 1) + 8 * i);
        if ([v5 productId] == 8206 && objc_msgSend(v5, "vendorId") == 76)
        {
          v2 = v5;
          goto LABEL_12;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v2;
}

id PSConnected698()
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v0 = [MEMORY[0x1E698F468] sharedInstance];
  v1 = [v0 connectedDevices];

  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v7 + 1) + 8 * i);
        if (([v5 productId] == 8212 || objc_msgSend(v5, "productId") == 8228) && objc_msgSend(v5, "vendorId") == 76)
        {
          v2 = v5;
          goto LABEL_13;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v2;
}

uint64_t PSBTAccessoryListeningMode(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E698F468];
  v2 = a1;
  v3 = [v1 sharedInstance];
  [v3 _accessoryManager];
  [v2 device];

  ControlCommand = BTAccessoryManagerGetControlCommand();
  if (ControlCommand)
  {
    v5 = _PSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v9 = ControlCommand;
      _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "Failed to get listening mode : %d", buf, 8u);
    }
  }

  v6 = _PSLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = 0;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "listening mode : %d", buf, 8u);
  }

  return 0;
}

void PSBTSetAccessoryListeningMode(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E698F468];
  v2 = a1;
  v3 = [v1 sharedInstance];
  [v3 _accessoryManager];
  [v2 device];

  v4 = BTAccessoryManagerSendControlCommand();
  if (v4)
  {
    v5 = _PSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "Failed to set listening mode : %d", v6, 8u);
    }
  }
}

uint64_t PSWiFiManagerClientCreate(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getWiFiManagerClientCreateSymbolLoc_ptr;
  v9 = getWiFiManagerClientCreateSymbolLoc_ptr;
  if (!getWiFiManagerClientCreateSymbolLoc_ptr)
  {
    v3 = MobileWiFiLibrary();
    v7[3] = dlsym(v3, "WiFiManagerClientCreate");
    getWiFiManagerClientCreateSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(a1, 0);
}

uint64_t PSWiFiManagerClientScheduleWithRunLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getWiFiManagerClientScheduleWithRunLoopSymbolLoc_ptr;
  v13 = getWiFiManagerClientScheduleWithRunLoopSymbolLoc_ptr;
  if (!getWiFiManagerClientScheduleWithRunLoopSymbolLoc_ptr)
  {
    v7 = MobileWiFiLibrary();
    v11[3] = dlsym(v7, "WiFiManagerClientScheduleWithRunLoop");
    getWiFiManagerClientScheduleWithRunLoopSymbolLoc_ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    v9 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  return v6(a1, a2, a3);
}

uint64_t PSWiFiManagerClientCopyDevices(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getWiFiManagerClientCopyDevicesSymbolLoc_ptr;
  v9 = getWiFiManagerClientCopyDevicesSymbolLoc_ptr;
  if (!getWiFiManagerClientCopyDevicesSymbolLoc_ptr)
  {
    v3 = MobileWiFiLibrary();
    v7[3] = dlsym(v3, "WiFiManagerClientCopyDevices");
    getWiFiManagerClientCopyDevicesSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(a1);
}

uint64_t PSWiFiDeviceClientGetPower(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getWiFiDeviceClientGetPowerSymbolLoc_ptr;
  v9 = getWiFiDeviceClientGetPowerSymbolLoc_ptr;
  if (!getWiFiDeviceClientGetPowerSymbolLoc_ptr)
  {
    v3 = MobileWiFiLibrary();
    v7[3] = dlsym(v3, "WiFiDeviceClientGetPower");
    getWiFiDeviceClientGetPowerSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(a1);
}

uint64_t PSWiFiManagerClientUnscheduleFromRunLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_ptr;
  v13 = getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_ptr;
  if (!getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_ptr)
  {
    v7 = MobileWiFiLibrary();
    v11[3] = dlsym(v7, "WiFiManagerClientUnscheduleFromRunLoop");
    getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    v9 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  return v6(a1, a2, a3);
}

uint64_t PSWiFiManagerClientSetMISDiscoveryState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getWiFiManagerClientSetMISDiscoveryStateSymbolLoc_ptr;
  v13 = getWiFiManagerClientSetMISDiscoveryStateSymbolLoc_ptr;
  if (!getWiFiManagerClientSetMISDiscoveryStateSymbolLoc_ptr)
  {
    v7 = MobileWiFiLibrary();
    v11[3] = dlsym(v7, "WiFiManagerClientSetMISDiscoveryState");
    getWiFiManagerClientSetMISDiscoveryStateSymbolLoc_ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    v9 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  return v6(a1, a2, a3);
}

uint64_t PSBKSDisplayBrightnessGetCurrent()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getBKSDisplayBrightnessGetCurrentSymbolLoc_ptr;
  v7 = getBKSDisplayBrightnessGetCurrentSymbolLoc_ptr;
  if (!getBKSDisplayBrightnessGetCurrentSymbolLoc_ptr)
  {
    v1 = BackBoardServicesLibrary();
    v5[3] = dlsym(v1, "BKSDisplayBrightnessGetCurrent");
    getBKSDisplayBrightnessGetCurrentSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return v0();
}

uint64_t PSBKSDisplayBrightnessSet(float a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getBKSDisplayBrightnessSetSymbolLoc_ptr;
  v9 = getBKSDisplayBrightnessSetSymbolLoc_ptr;
  if (!getBKSDisplayBrightnessSetSymbolLoc_ptr)
  {
    v3 = BackBoardServicesLibrary();
    v7[3] = dlsym(v3, "BKSDisplayBrightnessSet");
    getBKSDisplayBrightnessSetSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(1, a1);
}

void _BrightnessChangedExternally()
{
  v2 = +[PSBrightnessController sharedController];
  v0 = [v2 isTracking];
  if ((v0[2]() & 1) == 0)
  {
    v1 = [v2 brightnessChangedExternally];
    v1[2]();
  }
}

void *__getWiFiManagerClientCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileWiFiLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MobileWiFiLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MobileWiFiLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71DEDD0;
    v5 = 0;
    MobileWiFiLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MobileWiFiLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!MobileWiFiLibraryCore_frameworkLibrary)
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

uint64_t __MobileWiFiLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileWiFiLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getWiFiManagerClientScheduleWithRunLoopSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientScheduleWithRunLoop");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientScheduleWithRunLoopSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiManagerClientCopyDevicesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientCopyDevices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientCopyDevicesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiDeviceClientGetPowerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiDeviceClientGetPower");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiDeviceClientGetPowerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiManagerClientSetPowerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientSetPower");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientSetPowerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientUnscheduleFromRunLoop");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientUnscheduleFromRunLoopSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NetrbLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!NetrbLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __NetrbLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71DEDE8;
    v5 = 0;
    NetrbLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NetrbLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!NetrbLibraryCore_frameworkLibrary)
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

uint64_t __NetrbLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  NetrbLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getWiFiManagerClientSetMISDiscoveryStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientSetMISDiscoveryState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientSetMISDiscoveryStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWiFiManagerClientGetMISDiscoveryStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileWiFiLibrary();
  result = dlsym(v2, "WiFiManagerClientGetMISDiscoveryState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWiFiManagerClientGetMISDiscoveryStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXGuidedAccessGetAvailabilitySymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E71DEE00;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v5[0];
    v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_0;
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
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

  v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "AXGuidedAccessGetAvailability");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXGuidedAccessGetAvailabilitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getBKSDisplayBrightnessGetCurrentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BackBoardServicesLibrary();
  result = dlsym(v2, "BKSDisplayBrightnessGetCurrent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBKSDisplayBrightnessGetCurrentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t BackBoardServicesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!BackBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __BackBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E71DEE18;
    v5 = 0;
    BackBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = BackBoardServicesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!BackBoardServicesLibraryCore_frameworkLibrary)
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

uint64_t __BackBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BackBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBKSDisplayBrightnessSetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BackBoardServicesLibrary();
  result = dlsym(v2, "BKSDisplayBrightnessSet");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBKSDisplayBrightnessSetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBKSDisplayBrightnessTransactionCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BackBoardServicesLibrary();
  result = dlsym(v2, "BKSDisplayBrightnessTransactionCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBKSDisplayBrightnessTransactionCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void WifiStateChanged()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"com.apple.Preferences.wifiChanges" object:0];
}

void __SCDynamicStoreCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_autoreleasePoolPush();
  [a3 sendStateUpdate];

  objc_autoreleasePoolPop(v4);
}

void OUTLINED_FUNCTION_1_2(void *value)
{

  CFArrayAppendValue(v1, value);
}

void OUTLINED_FUNCTION_2_1(void *value)
{

  CFArrayAppendValue(v1, value);
}

id PSStringForMinutes(uint64_t a1)
{
  if (!PSStringForMinutes_singular)
  {
    v2 = PS_LocalizedString(@"%@ minute");
    v3 = PSStringForMinutes_singular;
    PSStringForMinutes_singular = v2;

    v4 = PS_LocalizedString(@"%@ minutes");
    v5 = PSStringForMinutes_plural;
    PSStringForMinutes_plural = v4;

    v6 = PS_LocalizedString(@"0 minutes");
    v7 = PSStringForMinutes_zero;
    PSStringForMinutes_zero = v6;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = MEMORY[0x1E696ADA0];
  v10 = &PSStringForMinutes_plural;
  if (a1 == 1)
  {
    v10 = &PSStringForMinutes_singular;
  }

  if (!a1)
  {
    v10 = &PSStringForMinutes_zero;
  }

  v11 = *v10;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v13 = [v9 localizedStringFromNumber:v12 numberStyle:1];
  v14 = [v8 stringWithFormat:v11, v13];

  return v14;
}

id PSStringForMins(uint64_t a1)
{
  v2 = PSStringForMins_unit;
  if (!PSStringForMins_unit)
  {
    v3 = PS_LocalizedString(@"%@ min");
    v4 = PSStringForMins_unit;
    PSStringForMins_unit = v3;

    v2 = PSStringForMins_unit;
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = MEMORY[0x1E696ADA0];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v8 = [v6 localizedStringFromNumber:v7 numberStyle:1];
  v9 = [v5 stringWithFormat:v2, v8];

  return v9;
}

id PSStringForHours(uint64_t a1)
{
  if (!PSStringForHours_singular)
  {
    v2 = PS_LocalizedString(@"%@ hour");
    v3 = PSStringForHours_singular;
    PSStringForHours_singular = v2;

    v4 = PS_LocalizedString(@"%@ hours");
    v5 = PSStringForHours_plural;
    PSStringForHours_plural = v4;

    v6 = PS_LocalizedString(@"0 hours");
    v7 = PSStringForHours_zero;
    PSStringForHours_zero = v6;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = MEMORY[0x1E696ADA0];
  v10 = &PSStringForHours_plural;
  if (a1 == 1)
  {
    v10 = &PSStringForHours_singular;
  }

  if (!a1)
  {
    v10 = &PSStringForHours_zero;
  }

  v11 = *v10;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v13 = [v9 localizedStringFromNumber:v12 numberStyle:1];
  v14 = [v8 stringWithFormat:v11, v13];

  return v14;
}

id PSStringForDays(uint64_t a1)
{
  if (!PSStringForDays_singular)
  {
    v2 = PS_LocalizedString(@"%@ day");
    v3 = PSStringForDays_singular;
    PSStringForDays_singular = v2;

    v4 = PS_LocalizedString(@"%@ days");
    v5 = PSStringForDays_plural;
    PSStringForDays_plural = v4;

    v6 = PS_LocalizedString(@"0 days");
    v7 = PSStringForDays_zero;
    PSStringForDays_zero = v6;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = MEMORY[0x1E696ADA0];
  v10 = &PSStringForDays_plural;
  if (a1 == 1)
  {
    v10 = &PSStringForDays_singular;
  }

  if (!a1)
  {
    v10 = &PSStringForDays_zero;
  }

  v11 = *v10;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v13 = [v9 localizedStringFromNumber:v12 numberStyle:1];
  v14 = [v8 stringWithFormat:v11, v13];

  return v14;
}

id PSFormattedTimeString(int a1)
{
  v2 = (a1 / 60);
  if ((a1 / 60) > 0x3B)
  {
    v4 = v2 / 0x3CuLL;
    v5 = v2 % 0x3C;
    v6 = MEMORY[0x1E696AEC0];
    v7 = PS_LocalizedString(@"%@, %@");
    v8 = PSStringForHours(v4);
    v9 = PSStringForMinutes(v5);
    v3 = [v6 stringWithFormat:v7, v8, v9];
  }

  else
  {
    v3 = PSStringForMinutes(v2);
  }

  return v3;
}

id PSAbbreviatedFormattedTimeString(int a1)
{
  v2 = (a1 / 60);
  if ((a1 / 60) > 0x3B)
  {
    v4 = v2 / 0x3CuLL;
    v5 = v2 % 0x3C;
    v6 = MEMORY[0x1E696AEC0];
    v7 = PS_LocalizedString(@"%@, %@");
    v8 = PSStringForHours(v4);
    v9 = PSStringForMins(v5);
    v3 = [v6 stringWithFormat:v7, v8, v9];
  }

  else
  {
    v3 = PSStringForMins(v2);
  }

  return v3;
}

id PSFormattedTimeStringWithDays(int a1)
{
  v1 = (a1 / 86400);
  v2 = a1 % 86400;
  if (v1)
  {
    v3 = v2;
    v4 = MEMORY[0x1E696AEC0];
    v5 = PS_LocalizedString(@"%@, %@");
    v6 = PSStringForDays(v1);
    v7 = PSStringForHours((v3 / 3600));
    v8 = [v4 stringWithFormat:v5, v6, v7];
  }

  else
  {
    v8 = PSFormattedTimeString(v2);
  }

  return v8;
}

id PSAbbreviatedFormattedTimeStringWithDays(int a1)
{
  v1 = (a1 / 86400);
  v2 = a1 % 86400;
  if (v1)
  {
    v3 = v2;
    v4 = MEMORY[0x1E696AEC0];
    v5 = PS_LocalizedString(@"%@, %@");
    v6 = PSStringForDays(v1);
    v7 = PSStringForHours((v3 / 3600));
    v8 = [v4 stringWithFormat:v5, v6, v7];
  }

  else
  {
    v8 = PSAbbreviatedFormattedTimeString(v2);
  }

  return v8;
}

BOOL PSTimeStringIsShortened(int a1, void *a2)
{
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = a2;
  v6 = [v3 preferredFontForTextStyle:v4];
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 bounds];
  v9 = v8 + -20.0;

  v10 = [v5 name];

  [v10 _legacy_sizeWithFont:v6];
  v12 = v9 - v11 + -20.0 + -12.0;

  v13 = PSFormattedTimeString(a1);
  [v13 _legacy_sizeWithFont:v6];
  v15 = v14 > v12;

  return v15;
}

BOOL PSLocaleUses24HourClock(CFLocaleRef locale)
{
  if (!locale)
  {
    return 0;
  }

  v1 = 1;
  v2 = CFDateFormatterCreate(0, locale, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
  v3 = CFDateFormatterGetFormat(v2);
  if ([v3 rangeOfString:@"H"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v1 = [v3 rangeOfString:@"k"] != 0x7FFFFFFFFFFFFFFFLL;
  }

  CFRelease(v2);

  return v1;
}

PSDetailController *CreateDetailControllerInstanceWithClass(objc_class *a1)
{
  v1 = [a1 alloc];
  if (v1)
  {
    v2 = v1;
    if (objc_opt_respondsToSelector())
    {
      v3 = [v2 initForContentSize:{100.0, 100.0}];
    }

    else
    {
      v3 = [v2 init];
    }
  }

  else
  {
    v3 = objc_alloc_init(PSDetailController);
  }

  return v3;
}

id PSCityForSpecifier(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (!a2 || ([v3 propertyForKey:@"value"], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [PSRootController readPreferenceValue:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E695DFE8] timeZoneWithName:v5];
    if (v6)
    {
      v7 = [MEMORY[0x1E698B670] sharedManager];
      v8 = [v7 citiesWithTimeZone:v6];
    }

    else
    {
      v10 = [v5 rangeOfString:{@", "}];
      v11 = [MEMORY[0x1E698B670] sharedManager];
      v7 = v11;
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [v11 cityForClassicIdentifier:v5];

        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v8 = [v11 citiesMatchingName:v5 localized:0];
    }

    v12 = v8;

    if (v12 && [v12 count])
    {
      v9 = [v12 objectAtIndex:0];
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E698B670] sharedManager];
    v9 = [v6 bestCityForLegacyCity:v5];
LABEL_20:

    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [objc_alloc(MEMORY[0x1E698B668]) initWithProperties:v5];
  }

  else
  {
    v9 = 0;
  }

LABEL_21:

  return v9;
}

id PSCityForTimeZone(uint64_t a1)
{
  v2 = [MEMORY[0x1E698B670] sharedManager];
  v3 = [v2 defaultCityForTimeZone:a1];

  return v3;
}

id PSPreferencesUIFrameworkBundle()
{
  if (PSPreferencesUIFrameworkBundle_onceToken != -1)
  {
    PSPreferencesUIFrameworkBundle_cold_1();
  }

  v1 = PSPreferencesUIFrameworkBundle_preferencesUI;

  return v1;
}

void __PSPreferencesUIFrameworkBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.preferences-ui-framework"];
  v1 = PSPreferencesUIFrameworkBundle_preferencesUI;
  PSPreferencesUIFrameworkBundle_preferencesUI = v0;
}

void LocalizeWeeAppName(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E696AAE8];
  v9 = v1;
  v3 = [v1 objectForKey:@"PATH"];
  v4 = [v2 bundleWithPath:v3];

  v5 = [v4 infoDictionary];
  v6 = [v5 objectForKey:@"CFBundleDisplayName"];

  v7 = [v4 localizedInfoDictionary];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    [v9 setObject:v8 forKey:@"NAME"];
  }
}

id PSDisplayNameForBBSection(void *a1)
{
  v1 = a1;
  v2 = [v1 sectionID];
  v3 = [v1 displayName];

  if (v3)
  {
    v4 = [v1 displayName];
  }

  else if (v2)
  {
    v5 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v2];
    v4 = [v5 localizedName];
  }

  else
  {
    v4 = 0;
  }

  if ([v1 sectionType] == 1 && !v4)
  {
    v6 = objc_alloc(MEMORY[0x1E695DF90]);
    v7 = [v1 pathToWeeAppPluginBundle];
    v8 = [v6 initWithObjectsAndKeys:{v7, @"PATH", 0}];

    LocalizeWeeAppName(v8);
    v9 = [v8 objectForKey:@"NAME"];
    v4 = [v9 copy];
  }

  if (!v4)
  {
    v4 = v2;
  }

  return v4;
}

id PSApplicationSpecifierForBBSection(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = PSDisplayNameForBBSection(v7);
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:0 set:0 get:0 detail:a4 cell:1 edit:0];
  if (![v7 suppressedSettings])
  {
    goto LABEL_4;
  }

  v10 = [v7 subsectionID];
  if ([v10 length])
  {

LABEL_4:
    v11 = [v7 showsInNotificationCenter];
    goto LABEL_5;
  }

  if ([v7 suppressedSettings])
  {
    v19 = [v7 subsections];
    v20 = [v19 count];

    if (!v20)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = [v7 subsections];
  v11 = [v21 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v22 = *v25;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v21);
        }

        if ([*(*(&v24 + 1) + 8 * i) showsInNotificationCenter])
        {
          v11 = 1;
          goto LABEL_23;
        }
      }

      v11 = [v21 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

LABEL_5:
  v12 = [v7 sectionID];
  [v9 setIdentifier:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:v11];
  [v9 setProperty:v13 forKey:ShowInNotificationsState];

  [v9 setProperty:v7 forKey:@"BBSECTION_INFO_KEY"];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v9 setProperty:v14 forKey:kWantsIcon];

  [v9 setProperty:a3 forKey:@"cellClass"];
  if (objc_opt_respondsToSelector())
  {
    v15 = MEMORY[0x1E696AD98];
    [a3 defaultCellHeight];
    *&v16 = v16;
    v17 = [v15 numberWithFloat:v16];
    [v9 setProperty:v17 forKey:@"height"];
  }

  return v9;
}

id PSApplicationSpecifierForAssistantSectionForBundleId(uint64_t a1, int a2, int a3, int a4)
{
  v7 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:a1];
  v8 = PSApplicationSpecifierForAssistantSection(v7, a2, a3, a4);

  return v8;
}

id PSApplicationSpecifierForAssistantSection(void *a1, int a2, int a3, int a4)
{
  v7 = a1;
  if (PSApplicationSpecifierForAssistantSection_onceToken != -1)
  {
    PSApplicationSpecifierForAssistantSection_cold_1();
  }

  v8 = [v7 bundleIdentifier];

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [v7 localizedName];
  if (![v9 length])
  {
    v10 = [v7 localizedShortName];

    if ([v10 length])
    {
      v9 = v10;
      goto LABEL_8;
    }

    v9 = [v7 itemName];

    if (v9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_23;
  }

LABEL_8:
  if (a4)
  {
    v11 = v9;
  }

  else
  {
    v13 = +[PSGMSAvailability eligibleDevice];
    v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v15 = v14;
    if (v13)
    {
      v16 = @"APPLE_INTELLIGENCE_ASSISTANT";
    }

    else
    {
      v16 = @"ASSISTANT";
    }

    v11 = [v14 localizedStringForKey:v16 value:&stru_1EFE45030 table:@"AssistantShared"];
  }

  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:0 set:0 get:0 detail:PSApplicationSpecifierForAssistantSection_sDetailClass cell:1 edit:0];
  [v12 setProperty:v9 forKey:@"APP_NAME"];
  v17 = [v7 bundleIdentifier];
  [v12 setProperty:v17 forKey:@"BUNDLE_ID"];

  v18 = [MEMORY[0x1E696AD98] numberWithInt:PSApplicationSpecifierForAssistantSection_sDetailClass != 0];
  [v12 setProperty:v18 forKey:@"enabled"];

  v19 = [v7 bundleIdentifier];
  [v12 setProperty:v19 forKey:@"id"];

  if (a2)
  {
    [v12 setProperty:MEMORY[0x1E695E118] forKey:@"useLazyIcons"];
    if (a3)
    {
      v20 = [v7 bundleIdentifier];
      [v12 setProperty:v20 forKey:@"appIDForLazyIcon"];
    }

    else
    {
      v21 = +[PSGMSAvailability eligibleDevice];
      [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
      if (v21)
      {
        v22 = @"iconUTTypeIdentifier";
        v23 = @"com.apple.graphic-icon.intelligence";
      }

      else
      {
        v22 = @"appIDForLazyIcon";
        v23 = @"com.apple.siri";
      }

      [v12 setObject:v23 forKeyedSubscript:v22];
    }
  }

LABEL_23:

  return v12;
}

void __PSApplicationSpecifierForAssistantSection_block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = PSBundlePathForPreferenceBundle(@"AssistantSettings");
  v3 = v2 = v1;
  v4 = [v0 bundleWithPath:v3];

  [v4 load];
  PSApplicationSpecifierForAssistantSection_sDetailClass = NSClassFromString(&cfstr_Assistantdetai.isa);
}

id PSBundlePathForPreferenceBundle(uint64_t a1)
{
  v1 = [@"/System/Library/PreferenceBundles/" stringByAppendingPathComponent:a1];
  v2 = [v1 stringByAppendingPathExtension:@"bundle"];

  return v2;
}

id PSApplicationSpecifierForSearchSectionForBundleId(void *a1, int a2, int a3, int a4)
{
  v7 = MEMORY[0x1E69635F8];
  v8 = a1;
  v9 = [[v7 alloc] initWithBundleIdentifier:v8 allowPlaceholder:1 error:0];

  v10 = PSApplicationSpecifierForSearchSection(v9, a2, a3, a4);

  return v10;
}

id PSApplicationSpecifierForSearchSection(void *a1, int a2, int a3, int a4)
{
  v7 = a1;
  if (PSApplicationSpecifierForSearchSection_onceToken != -1)
  {
    PSApplicationSpecifierForSearchSection_cold_1();
  }

  v8 = [v7 bundleIdentifier];

  if (!v8)
  {
    v11 = 0;
    goto LABEL_15;
  }

  v9 = [v7 localizedName];
  if (![v9 length])
  {
    v12 = [v7 localizedShortName];

    v9 = v12;
    if (a4)
    {
      goto LABEL_6;
    }

LABEL_9:
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v13 localizedStringForKey:@"SEARCH" value:&stru_1EFE45030 table:@"AssistantShared"];

    goto LABEL_10;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_6:
  v10 = v9;
LABEL_10:
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:PSApplicationSpecifierForSearchSection_sDetailClass cell:1 edit:0];
  [v11 setProperty:v9 forKey:@"APP_NAME"];
  v14 = [v7 bundleIdentifier];
  [v11 setProperty:v14 forKey:@"BUNDLE_ID"];

  v15 = [MEMORY[0x1E696AD98] numberWithInt:PSApplicationSpecifierForSearchSection_sDetailClass != 0];
  [v11 setProperty:v15 forKey:@"enabled"];

  v16 = [v7 bundleIdentifier];
  [v11 setProperty:v16 forKey:@"id"];

  if (a2)
  {
    [v11 setProperty:MEMORY[0x1E695E118] forKey:@"useLazyIcons"];
    if (a3)
    {
      v17 = [v7 bundleIdentifier];
      [v11 setProperty:v17 forKey:@"appIDForLazyIcon"];
    }

    else
    {
      [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"useLazyIcons"];
      [v11 setObject:@"com.apple.graphic-icon.search" forKeyedSubscript:@"iconUTTypeIdentifier"];
    }
  }

LABEL_15:

  return v11;
}

void __PSApplicationSpecifierForSearchSection_block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = PSBundlePathForPreferenceBundle(@"SpotlightSetting");
  v3 = v2 = v1;
  v4 = [v0 bundleWithPath:v3];

  [v4 load];
  PSApplicationSpecifierForSearchSection_sDetailClass = NSClassFromString(&cfstr_Spotlightdetai.isa);
}

PSAccountsLinkSpecifier *PSApplicationSpecifierForAccountsSection()
{
  if (_initAccountsUI_onceToken != -1)
  {
    PSApplicationSpecifierForAccountsSection_cold_1();
  }

  v0 = [PSAccountsLinkSpecifier alloc];
  v1 = [(PSAccountsLinkSpecifier *)v0 initWithDetailClass:sAccountsUISettingsControllerClass];
  [(PSSpecifier *)v1 setIdentifier:@"ACCOUNTS"];

  return v1;
}

id PSApplicationSpecifierForAddAccountButton()
{
  if (_initAccountsUI_onceToken != -1)
  {
    PSApplicationSpecifierForAccountsSection_cold_1();
  }

  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = [v0 localizedStringForKey:@"ADD_ACCOUNT" value:&stru_1EFE45030 table:@"PSSystemPolicy"];
  v2 = [PSSpecifier preferenceSpecifierNamed:v1 target:0 set:0 get:0 detail:sAccountsUIAddAccountControllerClass cell:13 edit:0];

  [v2 setIdentifier:@"ADD_ACCOUNT"];

  return v2;
}

void __init_sirikit_enabled_lock()
{
  if (__init_sirikit_enabled_lock_onceToken != -1)
  {
    __init_sirikit_enabled_lock_cold_1();
  }
}

uint64_t PSResetCachedSiriKitTCCEnabledAppIds()
{
  if (__init_sirikit_enabled_lock_onceToken != -1)
  {
    __init_sirikit_enabled_lock_cold_1();
  }

  pthread_mutex_lock(&s_sirikit_enabled_lock);

  return pthread_mutex_unlock(&s_sirikit_enabled_lock);
}

double PSSizeForMessagesIcon()
{
  if (PSSizeForMessagesIcon_onceToken != -1)
  {
    PSSizeForMessagesIcon_cold_1();
  }

  return *&PSSizeForMessagesIcon_result_0;
}

void __PSSizeForMessagesIcon_block_invoke()
{
  v0 = PSBlankIconImage();
  [v0 size];
  v2 = v1;

  v5 = [MEMORY[0x1E69A8980] iosMessagesAppIconSpecification];
  [v5 maxSize];
  *&PSSizeForMessagesIcon_result_0 = v2 * (v3 / v4);
  PSSizeForMessagesIcon_result_1 = *&v2;
}

id PSBlankMessageAppIconImage()
{
  if (PSBlankMessageAppIconImage_onceToken != -1)
  {
    PSBlankMessageAppIconImage_cold_1();
  }

  v1 = PSBlankMessageAppIconImage_result;

  return v1;
}

void __PSBlankMessageAppIconImage_block_invoke()
{
  v8 = [MEMORY[0x1E69A8A00] genericApplicationIcon];
  v0 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A88]];
  v1 = [v8 prepareImageForDescriptor:v0];
  v2 = v1;
  if (v1)
  {
    v3 = MEMORY[0x1E69DCAB8];
    v4 = [v1 CGImage];
    [v2 scale];
    v5 = [v3 imageWithCGImage:v4 scale:0 orientation:?];
    v6 = [v5 imageByPreparingThumbnailOfSize:PSSizeForMessagesIcon()];
    v7 = PSBlankMessageAppIconImage_result;
    PSBlankMessageAppIconImage_result = v6;
  }
}

id DeviceName()
{
  v0 = MGCopyAnswer();

  return v0;
}

uint64_t SetDeviceName(void *a1)
{
  v1 = a1;
  if (![v1 length])
  {
LABEL_7:
    v2 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  if (!lockdown_connect())
  {
    v3 = _PSLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_18B008000, v3, OS_LOG_TYPE_DEFAULT, "failed to connect to lockdown", v5, 2u);
    }

    goto LABEL_7;
  }

  lockdown_set_value();
  lockdown_disconnect();
  v2 = 0;
LABEL_8:

  return v2;
}

uint64_t ShouldShowWeibo()
{
  v24 = *MEMORY[0x1E69E9840];
  if (CFPreferencesGetAppBooleanValue(@"AlwaysShowWeibo", @"com.apple.Preferences", 0))
  {
    return 1;
  }

  v1 = CPGetDeviceRegionCode();
  v2 = v1;
  if (v1)
  {
    v3 = [v1 isEqualToString:@"CH"];
  }

  else
  {
    v3 = 0;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__11;
  v21 = __Block_byref_object_dispose__11;
  v22 = 0;
  v4 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __ShouldShowWeibo_block_invoke;
  v16[3] = &unk_1E71DBC78;
  v16[4] = &v17;
  [v4 performWithoutExtensionInputModes:v16];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v18[5];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v23 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = MEMORY[0x18CFEF100](*(*(&v12 + 1) + 8 * i));
        v10 = [v9 isEqualToString:{@"zh", v12}];

        if (v10)
        {
          v11 = 1;
          goto LABEL_16;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v23 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_16:

  _Block_object_dispose(&v17, 8);
  return v3 | v11;
}

void sub_18B0CE3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __ShouldShowWeibo_block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v2 = [v5 enabledInputModeIdentifiers];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t UserInterfaceIdiom()
{
  if (UserInterfaceIdiom_onceToken != -1)
  {
    UserInterfaceIdiom_cold_1();
  }

  return UserInterfaceIdiom_idiom;
}

void __UserInterfaceIdiom_block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  UserInterfaceIdiom_idiom = [v0 userInterfaceIdiom];
}

Class _usageBundleClassWithName(void *a1)
{
  v1 = a1;
  v2 = NSClassFromString(v1);
  if (!v2)
  {
    v3 = MEMORY[0x1E696AAE8];
    v4 = [@"/System/Library/PreferenceBundles/" stringByAppendingPathComponent:@"UsageSettings"];
    v5 = [v4 stringByAppendingPathExtension:@"bundle"];
    v6 = [v3 bundleWithPath:v5];

    [v6 load];
    v2 = NSClassFromString(v1);
  }

  v7 = v2;

  return v2;
}

uint64_t PSIsInternalInstall()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 sf_isInternalInstall];

  return v1;
}

uint64_t PSUsedByManagedAccount()
{
  v0 = [MEMORY[0x1E6959A48] defaultStore];
  v1 = [v0 aa_primaryAppleAccount];
  getACAccountStoreClass();
  if (objc_opt_class())
  {
    v2 = [getACAccountStoreClass() ams_sharedAccountStore];
    v3 = [v2 ams_activeiTunesAccount];
    v4 = [v3 ams_isManagedAppleID];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v1 aa_isManagedAppleID] | v4;

  return v5 & 1;
}

id getACAccountStoreClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getACAccountStoreClass_softClass;
  v7 = getACAccountStoreClass_softClass;
  if (!getACAccountStoreClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getACAccountStoreClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getACAccountStoreClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B0CE790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PSUsedByHSA2Account()
{
  v0 = [MEMORY[0x1E6959A48] defaultStore];
  v1 = [v0 aa_primaryAppleAccount];
  v2 = v1;
  if (v1 && ([v1 aa_altDSID], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [getAKAccountManagerClass() sharedInstance];
    v5 = [v2 aa_altDSID];
    v6 = [v4 authKitAccountWithAltDSID:v5];

    if (v6)
    {
      v7 = [v6 aa_altDSID];

      if (v7)
      {
        v8 = [getAKAccountManagerClass() sharedInstance];
        v7 = [v8 securityLevelForAccount:v6] == 4;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id getAKAccountManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAKAccountManagerClass_softClass;
  v7 = getAKAccountManagerClass_softClass;
  if (!getAKAccountManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAKAccountManagerClass_block_invoke;
    v3[3] = &unk_1E71DBC78;
    v3[4] = &v4;
    __getAKAccountManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18B0CE974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PSJoinedCDPCircleAccount()
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v0 = getCDPStateControllerClass_softClass_0;
  v13 = getCDPStateControllerClass_softClass_0;
  if (!getCDPStateControllerClass_softClass_0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCDPStateControllerClass_block_invoke_0;
    v15 = &unk_1E71DBC78;
    v16 = &v10;
    __getCDPStateControllerClass_block_invoke_0(buf);
    v0 = v11[3];
  }

  v1 = v0;
  _Block_object_dispose(&v10, 8);
  v2 = objc_opt_new();
  v9 = 0;
  v3 = [v2 isManateeAvailable:&v9];
  v4 = v9;

  if (((v4 == 0) & v3) == 0)
  {
    v5 = _PSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
      v7 = [v4 description];
      *buf = 138412546;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "Has joined CDP Circle: %@ Error: %@", buf, 0x16u);
    }
  }

  return v3;
}

void sub_18B0CEB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PSIsWebAppPlaceholder(void *a1)
{
  v1 = a1;
  if ([v1 isWebAppPlaceholder])
  {
    v2 = 1;
  }

  else
  {
    v3 = [v1 bundleIdentifier];
    v2 = [v3 hasPrefix:@"com.apple.WebKit.PushBundle"];
  }

  return v2;
}

__CFString *PSDeviceClass()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    v0 = @"iPhone";
  }

  return v0;
}

uint64_t PSUsePadStylePIN()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 sf_isiPad];

  return v1;
}

uint64_t PSLocaleLanguageDirection()
{
  result = __textDirection;
  if (!__textDirection)
  {
    v1 = MEMORY[0x1E695DF58];
    v2 = [MEMORY[0x1E695DF58] currentLocale];
    v3 = [v2 objectForKey:*MEMORY[0x1E695D9B0]];
    __textDirection = [v1 characterDirectionForLanguage:v3];

    return __textDirection;
  }

  return result;
}

void PSSetBatteryMonitoringEnabled(char a1)
{
  if (a1)
  {
    v1 = 1;
  }

  else
  {
    if (!PSSetBatteryMonitoringEnabled_refCount)
    {
      goto LABEL_6;
    }

    v1 = -1;
  }

  PSSetBatteryMonitoringEnabled_refCount += v1;
LABEL_6:
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  [v2 setBatteryMonitoringEnabled:PSSetBatteryMonitoringEnabled_refCount != 0];
}

id PSAboutDeviceSupervision()
{
  v0 = PSPreferencesFrameworkBundle();
  if (MGGetBoolAnswer())
  {
    v1 = @"DEVICE_SUPERVISION_INFO_WLAN";
  }

  else
  {
    v1 = @"DEVICE_SUPERVISION_INFO";
  }

  v2 = [v0 localizedStringForKey:v1 value:&stru_1EFE45030 table:@"DeviceSupervisionInfo"];

  return v2;
}

uint64_t PSSimIsRequired()
{
  if (MGGetBoolAnswer())
  {
    v0 = _CTServerConnectionCreate();
    if (v0)
    {
      v1 = v0;
      IsUserIdentityModuleRequired = _CTServerConnectionIsUserIdentityModuleRequired();
      if (HIDWORD(IsUserIdentityModuleRequired))
      {
        NSLog(&cfstr_CterrorDomainI.isa, IsUserIdentityModuleRequired, HIDWORD(IsUserIdentityModuleRequired));
      }

      CFRelease(v1);
    }
  }

  return 1;
}

uint64_t PSIsTelephonyDead()
{
  result = _CTServerConnectionCreate();
  if (result)
  {
    v1 = result;
    _CTServerConnectionGetRadioModuleIsDead();
    CFRelease(v1);
    return 0;
  }

  return result;
}

uint64_t PSIsiPad()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 sf_isiPad];

  return v1;
}

uint64_t PSIsiPhone()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 sf_isiPhone];

  return v1;
}

BOOL PSIsN56()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 _referenceBounds];
  v2 = v1 == 736.0;

  return v2;
}

BOOL PSIsJ99()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 _referenceBounds];
  v2 = v1 == 1366.0;

  return v2;
}

BOOL PSIsD22ScreenSize()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 _referenceBounds];
  v2 = v1 == 812.0;

  return v2;
}

const __CFArray *PSIsHostingPersonalHotspot()
{
  v41 = *MEMORY[0x1E69E9840];
  v0 = _NETRBClientCreate();
  v1 = MEMORY[0x1E695E480];
  if (v0)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    memset(cStr, 0, sizeof(cStr));
    if (_NETRBClientGetDynamicStoreKey())
    {
      v2 = CFStringCreateWithCString(*v1, cStr, 0x8000100u);
      if (v2)
      {
LABEL_13:
        _NETRBClientDestroy();
        goto LABEL_14;
      }

      v3 = _PSLoggingFacility();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        v4 = "CFStringCreateWithCString failed";
LABEL_11:
        _os_log_impl(&dword_18B008000, v3, OS_LOG_TYPE_DEFAULT, v4, v25, 2u);
      }
    }

    else
    {
      v3 = _PSLoggingFacility();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        v4 = "_NETRBClientGetDynamicStoreKey failed.";
        goto LABEL_11;
      }
    }

    v2 = 0;
    goto LABEL_13;
  }

  v5 = _PSLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *cStr = 0;
    _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "_NETRBClientCreate failed.", cStr, 2u);
  }

  v2 = 0;
LABEL_14:
  v6 = *v1;
  v7 = SCDynamicStoreCreate(*v1, @"com.apple.Preferences", 0, 0);
  if (v7)
  {
    v8 = v7;
    if (!v2 || (v9 = SCDynamicStoreCopyValue(v7, v2)) == 0)
    {
      LODWORD(v19) = 0;
      v13 = 0;
      goto LABEL_38;
    }

    v10 = v9;
    v11 = CFGetTypeID(v9);
    if (v11 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v10, @"ExternalInterfaces");
      v13 = Value;
      if (!Value)
      {
        LODWORD(v19) = 0;
        goto LABEL_37;
      }

      if (CFArrayGetCount(Value))
      {
        v14 = *MEMORY[0x1E69822F0];
        ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
        NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v6, v14, ValueAtIndex, *MEMORY[0x1E6982338]);
        if (NetworkInterfaceEntity)
        {
          v17 = NetworkInterfaceEntity;
          v13 = SCDynamicStoreCopyValue(v8, NetworkInterfaceEntity);
          if (v13)
          {
            v18 = CFDictionaryGetValue(v10, @"Hosts");
            v19 = v18;
            if (v18)
            {
              if (CFDictionaryGetCount(v18))
              {
                v20 = CFDictionaryGetValue(v19, @"Current");
                v21 = v20;
                if (v20)
                {
                  v19 = [v20 integerValue];
                }

                else
                {
                  v19 = 0;
                }
              }

              else
              {
                v19 = 0;
              }
            }

            CFRelease(v13);
            v13 = (v19 > 0);
          }

          else
          {
            LODWORD(v19) = 0;
          }

          CFRelease(v17);
          goto LABEL_37;
        }
      }
    }

    LODWORD(v19) = 0;
    v13 = 0;
LABEL_37:
    CFRelease(v10);
LABEL_38:
    CFRelease(v8);
    if (!v2)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  LODWORD(v19) = 0;
  v13 = 0;
  if (v2)
  {
LABEL_39:
    CFRelease(v2);
  }

LABEL_40:
  v22 = _PSLoggingFacility();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = @"OFF";
    if (v13)
    {
      v23 = @"ON";
    }

    *cStr = 138412546;
    *&cStr[4] = v23;
    *&cStr[12] = 1024;
    *&cStr[14] = v19;
    _os_log_impl(&dword_18B008000, v22, OS_LOG_TYPE_DEFAULT, "Tethering is currently %@ with %d devices connected.", cStr, 0x12u);
  }

  return v13;
}

id PSCurrentCallTypes()
{
  v11[5] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = *MEMORY[0x1E6965150];
  v11[0] = *MEMORY[0x1E6965138];
  v11[1] = v1;
  v2 = *MEMORY[0x1E6965130];
  v11[2] = *MEMORY[0x1E6965148];
  v11[3] = v2;
  v11[4] = *MEMORY[0x1E6965140];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:5];
  v4 = CTCopyCurrentCallsWithTypes();
  if (v4)
  {
    v5 = v4;
    if (CFArrayGetCount(v4) >= 1)
    {
      v6 = 0;
      do
      {
        CFArrayGetValueAtIndex(v5, v6);
        v7 = CTCallGetCallType();
        if (v7)
        {
          [v0 addObject:v7];
        }

        else
        {
          v8 = _PSLoggingFacility();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *v10 = 0;
            _os_log_impl(&dword_18B008000, v8, OS_LOG_TYPE_DEFAULT, "Unknown call type", v10, 2u);
          }
        }

        ++v6;
      }

      while (v6 < CFArrayGetCount(v5));
    }

    CFRelease(v5);
  }

  return v0;
}

void PSLog()
{
  if (PSLog_onceToken != -1)
  {
    PSLog_cold_1();
  }
}

id PreferencesTableViewFooterColor()
{
  v0 = [MEMORY[0x1E69DCC28] groupedHeaderConfiguration];
  v1 = [v0 textProperties];
  v2 = [v1 resolvedColor];

  return v2;
}

double PSTableViewSideInset()
{
  if (PSIsJ99())
  {
    v0 = [MEMORY[0x1E69DC668] sharedApplication];
    v1 = [v0 statusBarOrientation] - 3;

    if (v1 < 2)
    {
      return 90.0;
    }
  }

  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 sf_isiPad];

  result = 28.0;
  if ((v4 & 1) == 0)
  {
    v5 = PSIsN56();
    result = 0.0;
    if (v5)
    {
      return 20.0;
    }
  }

  return result;
}

id PSPointImageOfColor(void *a1)
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

double PSRoundToPixel(double a1)
{
  v2 = *&PSRoundToPixel_scale;
  if (*&PSRoundToPixel_scale == -1.0)
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 scale];
    PSRoundToPixel_scale = v4;

    v2 = *&PSRoundToPixel_scale;
  }

  return round(v2 * a1) / v2;
}

id PSPassbookImage()
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v1 userInterfaceIdiom])
  {
    v2 = @"com.apple.PassbookStub";
  }

  else
  {
    v2 = @"com.apple.Passbook";
  }

  v3 = [v0 ps_synchronousIconWithApplicationBundleIdentifier:v2];

  return v3;
}

id _PSFindViewRecursively(void *a1, uint64_t a2)
{
  v3 = a1;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndex:0];
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      [v3 removeObjectAtIndex:0];
      v6 = [v4 subviews];
      if ([v6 count])
      {
        [v3 addObjectsFromArray:v6];
      }

      v5 = _PSFindViewRecursively(v3, a2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id PSFindViewOfClass(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3 && a2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = MEMORY[0x1E695DF70];
    v6 = [v3 subviews];
    v7 = [v5 arrayWithArray:v6];

    v4 = _PSFindViewRecursively(v7, a2);
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

id PSAuthorizationTokenForPasscode(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 UTF8String];
    v3 = [v1 lengthOfBytesUsingEncoding:4];

    v9 = 64;
    v4 = malloc_type_malloc(0x40uLL, 0xD9F4F789uLL);
    if (aks_auth_token_create(0, v2, v3, 0, v4, &v9))
    {
      v5 = _PSLoggingFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_18B008000, v5, OS_LOG_TYPE_DEFAULT, "Failed to create authorization token", v8, 2u);
      }

      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:v9];
    }

    __memset_chk();
    free(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t PSIsNanoMirroringDomain(void *a1)
{
  v1 = a1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = getNPSDomainAccessorClass_softClass_0;
  v13 = getNPSDomainAccessorClass_softClass_0;
  if (!getNPSDomainAccessorClass_softClass_0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getNPSDomainAccessorClass_block_invoke_0;
    v9[3] = &unk_1E71DBC78;
    v9[4] = &v10;
    __getNPSDomainAccessorClass_block_invoke_0(v9);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = [[v2 alloc] initWithDomain:@"com.apple.bulletinboard.apps"];
  v5 = [v4 objectForKey:v1];
  v6 = [v5 objectForKeyedSubscript:@"BPSNanoBulletinShowsCustomSettings"];
  v7 = [v6 BOOLValue];

  return v7 ^ 1u;
}

void sub_18B0CFCD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PSLocalizableMesaStringForKey(void *a1)
{
  v1 = a1;
  v2 = PSPreferencesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1EFE45030 table:@"TouchID"];

  return v3;
}

uint64_t PSIsPearlAvailable()
{
  v0 = MEMORY[0x1E698F370];
  v1 = [MEMORY[0x1E698F378] deviceDescriptorForType:2];
  v7 = 0;
  v2 = [v0 deviceWithDescriptor:v1 error:&v7];
  v3 = v7;

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v5;
}

uint64_t PSIsPearlInterlocked()
{
  v25 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v0 sf_isInternalInstall])
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [v1 BOOLForKey:@"PSTestIsPearlInterlocked"];

    if (v2)
    {
      return 1;
    }
  }

  else
  {
  }

  v4 = MEMORY[0x1E698F370];
  v5 = [MEMORY[0x1E698F378] deviceDescriptorForType:2];
  v16 = 0;
  v6 = [v4 deviceWithDescriptor:v5 error:&v16];
  v7 = v16;

  if (v6)
  {
    v15 = 0;
    v14 = 0;
    v8 = [v6 bioLockoutState:&v15 forUser:getuid() error:&v14];
    v9 = v14;
    v10 = _PSLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
      v12 = [MEMORY[0x1E696AD98] numberWithBool:v8];
      *buf = 138413058;
      v18 = v6;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_18B008000, v10, OS_LOG_TYPE_DEFAULT, "Biolockout state for device: %@, state: %@, error: %@, success: %@", buf, 0x2Au);
    }

    v3 = v15 == 7;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id PSLocalizablePearlStringForKey(void *a1)
{
  v1 = a1;
  v2 = PSPreferencesFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1EFE45030 table:@"Pearl"];

  return v3;
}

uint64_t PSIsLocationRestricted()
{
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v0 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v1 = v0;
  if (v0)
  {
    v2 = [v0 containsObject:@"location"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PSIsBundleIDHiddenDueToRestrictions(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v3 = [v2 effectiveWhitelistedAppBundleIDs];

    if (v3 && ![v3 containsObject:v1])
    {
      v6 = 1;
    }

    else
    {
      v4 = [MEMORY[0x1E69ADFB8] sharedConnection];
      v5 = [v4 effectiveBlacklistedAppBundleIDs];

      if ([v5 containsObject:v1])
      {
        v6 = 1;
      }

      else if ([v1 isEqualToString:@"com.apple.podcasts"])
      {
        v7 = [MEMORY[0x1E69ADFB8] sharedConnection];
        v8 = [v7 effectiveBoolValueForSetting:*MEMORY[0x1E69ADF20]];

        if (v8 == 2)
        {
          v6 = -1;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

BOOL _PSIsValueRestrictedByMCFeature(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v3 = [v2 effectiveBoolValueForSetting:v1] == 2;
  }

  else
  {
    objc_opt_class();
    v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v1 indexOfObjectPassingTest:&__block_literal_global_299] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v3;
}

BOOL PSIsSpecifierHiddenDueToRestrictions(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 propertyForKey:@"restrictByID"];
  if (PSIsBundleIDHiddenDueToRestrictions(v2))
  {
    v3 = _PSLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v1 identifier];
      v9 = 138543618;
      v10 = v4;
      v11 = 2114;
      v12 = v2;
      _os_log_impl(&dword_18B008000, v3, OS_LOG_TYPE_DEFAULT, "Specifier %{public}@ is hidden because identifier is restricted: %{public}@", &v9, 0x16u);
    }

    v5 = 1;
  }

  else
  {
    v3 = [v1 propertyForKey:@"restrictByMCFeature"];
    v5 = _PSIsValueRestrictedByMCFeature(v3);
    if (v5)
    {
      v6 = _PSLoggingFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v1 identifier];
        v9 = 138543618;
        v10 = v7;
        v11 = 2114;
        v12 = v3;
        _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "Specifier %{public}@ is hidden because feature is restricted: %{public}@", &v9, 0x16u);
      }
    }
  }

  return v5;
}

id PSHighLegibilityAlternateFont(void *a1)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *MEMORY[0x1E69DB900];
  v15[0] = *MEMORY[0x1E69DB908];
  v15[1] = v2;
  v16[0] = &unk_1EFE65E68;
  v16[1] = &unk_1EFE65E80;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v4 = [v1 fontDescriptor];
  v5 = *MEMORY[0x1E69DB8B0];
  v12 = v3;
  v13 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v14 = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v8 = [v4 fontDescriptorByAddingAttributes:v7];

  if (v8)
  {
    v9 = MEMORY[0x1E69DB878];
    [v1 pointSize];
    v10 = [v9 fontWithDescriptor:v8 size:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL PSDiagnosticsAreEnabled()
{
  v0 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v1 = [v0 effectiveBoolValueForSetting:*MEMORY[0x1E69ADE40]] == 1;

  return v1;
}

uint64_t PSAnimationOptionsFromAnimationCurve(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return ((a1 - 1) << 16) + 0x10000;
  }
}

uint64_t PKIsUSBRestrictedModeDisabledByMobileAsset()
{
  v2 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -5;
  v9 = 7;
  v3 = MEMORY[0x1E69E9820];
  v4 = 3221225472;
  v5 = __ACMTRMEnv_Get_block_invoke;
  v6 = &unk_1E71DF028;
  v7 = &v10;
  v8 = &v2;
  if (ACMKernelControl())
  {
    v0 = 0;
  }

  else
  {
    v0 = *(v11 + 6) == 0;
  }

  _Block_object_dispose(&v10, 8);
  return *&v0 & ((v2 & 0x10) >> 4);
}

void PSSetTCCLevelForService(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = _PSLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    v11 = 138412802;
    v12 = a1;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "Setting TCC auth for service: %@ appIdentifier:%@, accessLevel:%@", &v11, 0x20u);
  }

  v8 = tcc_server_singleton_default();
  [v5 cStringUsingEncoding:4];
  v9 = tcc_identity_create();
  v10 = tcc_service_singleton_for_CF_name();
  tcc_server_message_set_authorization_value();
}

void PSGetAuthorizationStatesForService(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = tcc_server_singleton_default();
  v9 = tcc_service_singleton_for_CF_name();
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v13 = _PSLoggingFacility();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = a1;
    _os_log_impl(&dword_18B008000, v13, OS_LOG_TYPE_DEFAULT, "Requesting TCC auth records for service: %@", buf, 0xCu);
  }

  v14 = v10;
  v15 = v11;
  v16 = v12;
  tcc_server_message_get_authorization_records_by_service();
  if (a2)
  {
    v17 = v14;
    *a2 = v14;
  }

  if (a3)
  {
    v18 = v15;
    *a3 = v15;
  }

  if (a4)
  {
    v19 = v16;
    *a4 = v16;
  }
}

void __PSGetAuthorizationStatesForService_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    v6 = tcc_authorization_record_get_subject_identity();
    authorization_right = tcc_authorization_record_get_authorization_right();
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:tcc_identity_get_identifier() encoding:4];
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

  v10 = _PSLoggingFacility();
  v6 = v10;
  if (a3)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __PSGetAuthorizationStatesForService_block_invoke_cold_1(a1, a3, v6);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 56);
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "Finished getting authorization for service: %@", &v12, 0xCu);
  }

LABEL_16:
}

uint64_t PSIsUserParcElisabethEligible()
{
  v9 = *MEMORY[0x1E69E9840];
  domain_answer = os_eligibility_get_domain_answer();
  v1 = _PSLoggingFacility();
  v2 = os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
  if (domain_answer)
  {
    if (v2)
    {
      *buf = 67109120;
      v8 = domain_answer;
      v3 = "Cannot determine eligibility due to error: %d";
      v4 = v1;
      v5 = 8;
LABEL_6:
      _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, v3, buf, v5);
    }
  }

  else if (v2)
  {
    *buf = 0;
    v3 = "Unable to determine eligibility ";
    v4 = v1;
    v5 = 2;
    goto LABEL_6;
  }

  return 0;
}

void ___initAccountsUI_block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = PSBundlePathForPreferenceBundle(@"AccountSettingsUI");
  v3 = v2 = v1;
  v4 = [v0 bundleWithPath:v3];

  [v4 load];
  sAccountsUISettingsControllerClass = NSClassFromString(&cfstr_Acuisettingsco.isa);
  sAccountsUIAddAccountControllerClass = NSClassFromString(&cfstr_Acuiaddaccount.isa);
}

uint64_t __SetupAssistantLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t __UserManagementLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  UserManagementLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getACAccountStoreClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AppleMediaServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AppleMediaServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DEFC0;
    v6 = 0;
    AppleMediaServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AppleMediaServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("ACAccountStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getACAccountStoreClass_block_invoke_cold_1();
  }

  getACAccountStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleMediaServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleMediaServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAKAccountManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AuthKitLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DEFD8;
    v6 = 0;
    AuthKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (AuthKitLibraryCore_frameworkLibrary_1)
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
  result = objc_getClass("AKAccountManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAKAccountManagerClass_block_invoke_cold_1();
  }

  getAKAccountManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AuthKitLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getCDPStateControllerClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CoreCDPLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CoreCDPLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DEFF0;
    v6 = 0;
    CoreCDPLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (CoreCDPLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("CDPStateController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCDPStateControllerClass_block_invoke_cold_1();
  }

  getCDPStateControllerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreCDPLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  CoreCDPLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getNPSDomainAccessorClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __NanoPreferencesSyncLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71DF008;
    v6 = 0;
    NanoPreferencesSyncLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (NanoPreferencesSyncLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("NPSDomainAccessor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getNPSDomainAccessorClass_block_invoke_cold_1_0();
  }

  getNPSDomainAccessorClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NanoPreferencesSyncLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  NanoPreferencesSyncLibraryCore_frameworkLibrary_0 = result;
  return result;
}

id PSDescriptionForHealthAnalyticsFileWithName(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getHKDescriptionForAnalyticsFileWithNameSymbolLoc_ptr;
  v10 = getHKDescriptionForAnalyticsFileWithNameSymbolLoc_ptr;
  if (!getHKDescriptionForAnalyticsFileWithNameSymbolLoc_ptr)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getHKDescriptionForAnalyticsFileWithNameSymbolLoc_block_invoke;
    v6[3] = &unk_1E71DBC78;
    v6[4] = &v7;
    __getHKDescriptionForAnalyticsFileWithNameSymbolLoc_block_invoke(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v5);
  }

  v3 = v2(v1);

  return v3;
}

void *__getHKDescriptionForAnalyticsFileWithNameSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __HealthKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E71DF0A0;
    v7 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = HealthKitLibraryCore_frameworkLibrary;
    if (HealthKitLibraryCore_frameworkLibrary)
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

  v2 = HealthKitLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "HKDescriptionForAnalyticsFileWithName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHKDescriptionForAnalyticsFileWithNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HealthKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18B0D9384(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B0D93A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_18B0D9408(uint64_t *a1, int a2)
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

uint64_t sub_18B0D9450(uint64_t result, int a2, int a3)
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

uint64_t sub_18B0D94E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v59 = sub_18B0F4E30();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18B0F4F50();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B26D8);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v50 = &v44 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B26E0);
  v9 = MEMORY[0x1EEE9AC00](v55);
  v51 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v44 - v11;
  *&v83[0] = a1;
  *(&v83[0] + 1) = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9B26E8);
  sub_18B0F50C0();
  v13 = v64;
  swift_getKeyPath();
  *&v83[0] = v13;
  v60 = sub_18B0DA5A8(&qword_1EA9B1060, type metadata accessor for PSSpecifierButtonContentViewModel);
  sub_18B0F4C10();

  v15 = *(v13 + 40);
  v14 = *(v13 + 48);

  if (v14)
  {
    *&v83[0] = v15;
    *(&v83[0] + 1) = v14;
    sub_18B015D34();
    v16 = sub_18B0F4FC0();
    v45 = v17;
    v46 = v16;
    *&v44 = v18 & 1;
    *(&v44 + 1) = v19;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v44 = 0uLL;
  }

  *&v83[0] = a1;
  *(&v83[0] + 1) = a2;
  sub_18B0F50C0();
  v20 = v64;
  swift_getKeyPath();
  *&v83[0] = v20;
  sub_18B0F4C10();

  v61 = a1;
  v62 = v12;
  *&v83[0] = a1;
  *(&v83[0] + 1) = a2;
  v21 = a2;
  sub_18B0F50C0();
  v22 = v64;
  swift_getKeyPath();
  *&v83[0] = v22;
  sub_18B0F4C10();

  sub_18B0F4D70();
  *&v83[0] = v61;
  *(&v83[0] + 1) = a2;
  v23 = v61;
  sub_18B0F50C0();
  v24 = v64;
  swift_getKeyPath();
  *&v83[0] = v24;
  sub_18B0F4C10();

  v25 = *(v24 + 64);

  KeyPath = swift_getKeyPath();
  v27 = sub_18B0F5040();
  v28 = swift_getKeyPath();
  *&v83[0] = v23;
  *(&v83[0] + 1) = v21;
  sub_18B0F50C0();
  v29 = v64;
  swift_getKeyPath();
  *&v83[0] = v29;
  sub_18B0F4C10();

  v30 = *(v29 + 56);

  v31 = 1.0;
  *&v64 = v46;
  *(&v64 + 1) = v45;
  if (v30)
  {
    v31 = 0.5;
  }

  v65 = v44;
  v70 = v80;
  v71 = v81;
  v72 = v82;
  v66 = v76;
  v67 = v77;
  v69 = v79;
  v68 = v78;
  *&v73 = KeyPath;
  *(&v73 + 1) = v25;
  *&v74 = v28;
  *(&v74 + 1) = v27;
  v75 = v31;
  v32 = v47;
  sub_18B0F4F40();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B26F8);
  v34 = sub_18B0DA858();
  v35 = v50;
  sub_18B0F5010();
  (*(v48 + 8))(v32, v49);
  v83[8] = v72;
  v83[9] = v73;
  v83[10] = v74;
  v84 = v75;
  v83[4] = v68;
  v83[5] = v69;
  v83[6] = v70;
  v83[7] = v71;
  v83[0] = v64;
  v83[1] = v65;
  v83[2] = v66;
  v83[3] = v67;
  sub_18B0DAB54(v83);
  *&v64 = v61;
  *(&v64 + 1) = v21;
  sub_18B0F50C0();
  v36 = v63;
  swift_getKeyPath();
  *&v64 = v36;
  sub_18B0F4C10();

  *&v64 = v33;
  *(&v64 + 1) = v34;
  swift_getOpaqueTypeConformance2();
  v37 = v51;
  v38 = v54;
  sub_18B0F4FF0();

  (*(v52 + 8))(v35, v38);
  v39 = v56;
  sub_18B0F4E20();
  v40 = v53;
  sub_18B0F4D50();
  v41 = *(v57 + 8);
  v42 = v59;
  v41(v39, v59);
  sub_18B017E74(v37);
  sub_18B0F4E10();
  sub_18B0F4D50();
  v41(v39, v42);
  return sub_18B017E74(v40);
}

uint64_t sub_18B0D9CE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0DA5A8(&qword_1EA9B1060, type metadata accessor for PSSpecifierButtonContentViewModel);
  sub_18B0F4C10();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_18B0D9D90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_18B0DB68C(v1, v2);
}

uint64_t sub_18B0D9DD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0DA5A8(&qword_1EA9B1060, type metadata accessor for PSSpecifierButtonContentViewModel);
  sub_18B0F4C10();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_18B0D9E7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_18B0DB7BC(v1, v2);
}

uint64_t sub_18B0D9EBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0DA5A8(&qword_1EA9B1060, type metadata accessor for PSSpecifierButtonContentViewModel);
  sub_18B0F4C10();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_18B0D9F8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0DA5A8(&qword_1EA9B1060, type metadata accessor for PSSpecifierButtonContentViewModel);
  sub_18B0F4C10();

  *a2 = *(v3 + 64);
}

uint64_t sub_18B0DA064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0DA5A8(&qword_1EA9B1060, type metadata accessor for PSSpecifierButtonContentViewModel);
  sub_18B0F4C10();

  v5 = *(v3 + 80);
  *a2 = *(v3 + 72);
  *(a2 + 8) = v5;
  return result;
}

__n128 sub_18B0DA148@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0DA5A8(&qword_1EA9B1060, type metadata accessor for PSSpecifierButtonContentViewModel);
  sub_18B0F4C10();

  result = *(v3 + 88);
  *a2 = result;
  return result;
}

uint64_t sub_18B0DA220()
{
  v1 = *v0;
  sub_18B0F5380();
  MEMORY[0x18CFEE600](v1);
  return sub_18B0F53A0();
}

uint64_t sub_18B0DA294()
{
  v1 = *v0;
  sub_18B0F5380();
  MEMORY[0x18CFEE600](v1);
  return sub_18B0F53A0();
}

uint64_t sub_18B0DA2E0(uint64_t a1, id *a2)
{
  result = sub_18B0F5190();
  *a2 = 0;
  return result;
}

uint64_t sub_18B0DA358(uint64_t a1, id *a2)
{
  v3 = sub_18B0F51A0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_18B0DA3D8@<X0>(uint64_t *a1@<X8>)
{
  sub_18B0F51B0();
  v2 = sub_18B0F5180();

  *a1 = v2;
  return result;
}

uint64_t sub_18B0DA41C()
{
  v0 = sub_18B0F51B0();
  v1 = MEMORY[0x18CFEE440](v0);

  return v1;
}

uint64_t sub_18B0DA458()
{
  sub_18B0F51B0();
  sub_18B0F51C0();
}

uint64_t sub_18B0DA4AC()
{
  sub_18B0F51B0();
  sub_18B0F5380();
  sub_18B0F51C0();
  v0 = sub_18B0F53A0();

  return v0;
}

void *sub_18B0DA534@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
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

uint64_t sub_18B0DA5A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B0DA5F0()
{
  v0 = sub_18B0F51B0();
  v2 = v1;
  if (v0 == sub_18B0F51B0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_18B0F5350();
  }

  return v5 & 1;
}

uint64_t sub_18B0DA678@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18B0F5180();

  *a1 = v2;
  return result;
}

uint64_t sub_18B0DA6C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B0F51B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B0DA6EC(uint64_t a1)
{
  v2 = sub_18B0DA5A8(&qword_1EA9B2848, type metadata accessor for Key);
  v3 = sub_18B0DA5A8(&unk_1EA9B2850, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_18B0DA7A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B0F4DC0();
  *a1 = result;
  return result;
}

uint64_t sub_18B0DA800@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B0F4DA0();
  *a1 = result;
  return result;
}

unint64_t sub_18B0DA858()
{
  result = qword_1EA9B0EF0;
  if (!qword_1EA9B0EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B26F8);
    sub_18B0DA92C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0EF0);
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

unint64_t sub_18B0DA92C()
{
  result = qword_1EA9B0EF8;
  if (!qword_1EA9B0EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA9B2700);
    sub_18B0DA9D0();
    sub_18B0DAB00(&unk_1EA9B0E78, &unk_1EA9B2750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0EF8);
  }

  return result;
}

unint64_t sub_18B0DA9D0()
{
  result = qword_1EA9B0F08;
  if (!qword_1EA9B0F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA9B2710);
    sub_18B0DAA74();
    sub_18B0DAB00(&qword_1EA9B0E88, &unk_1EA9B2740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F08);
  }

  return result;
}

unint64_t sub_18B0DAA74()
{
  result = qword_1EA9B0F58;
  if (!qword_1EA9B0F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA9B2720);
    sub_18B0152B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F58);
  }

  return result;
}

uint64_t sub_18B0DAB00(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B0DAB54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B26F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B0DABD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B0DABF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

unint64_t sub_18B0DAC2C()
{
  result = qword_1EA9B0F40;
  if (!qword_1EA9B0F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B26E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B26F8);
    sub_18B0DA858();
    swift_getOpaqueTypeConformance2();
    sub_18B0DA5A8(&unk_1EA9B0E68, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F40);
  }

  return result;
}

uint64_t sub_18B0DAE00()
{
  swift_getKeyPath();
  sub_18B0DC174();
  sub_18B0F4C10();

  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_18B0DAE80()
{
  swift_getKeyPath();
  sub_18B0DC174();
  sub_18B0F4C10();

  return *(v0 + 72);
}

uint64_t sub_18B0DAEF4()
{
  swift_getKeyPath();
  sub_18B0DC174();
  sub_18B0F4C10();

  return *(v0 + 88);
}

uint64_t sub_18B0DAF64()
{
  swift_getKeyPath();
  sub_18B0DC174();
  sub_18B0F4C10();
}

uint64_t sub_18B0DAFD8()
{
  swift_getKeyPath();
  sub_18B0DC174();
  sub_18B0F4C10();

  return *(v0 + 56);
}

uint64_t sub_18B0DB048()
{
  swift_getKeyPath();
  sub_18B0DC174();
  sub_18B0F4C10();

  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_18B0DB0C8(void *a1)
{
  v2 = v1;
  v4 = sub_18B0F4BD0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 identifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_18B0F51B0();
    v12 = v11;
  }

  else
  {
    sub_18B0F4BC0();
    v10 = sub_18B0F4BB0();
    v12 = v13;
    (*(v5 + 8))(v7, v4);
  }

  sub_18B0DB68C(v10, v12);
  v14 = sub_18B0140D4();
  sub_18B0DB7BC(v14, v15);
  v16 = sub_18B0F51B0();
  v18 = sub_18B013E38(v16, v17, 1u);

  v19 = (v18 ^ 1) & 1;
  if (v19 == *(v2 + 56))
  {
    *(v2 + 56) = v19;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v36 - 2) = v2;
    *(&v36 - 8) = v19;
    v37 = v2;
    sub_18B0DC174();
    sub_18B0F4C00();
  }

  if ([a1 cellType] == 11)
  {
    sub_18B0DB9DC(0x7FF0000000000000, 0);
    v21 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
    v22 = [objc_opt_self() systemFontOfSize_];
    v23 = [v21 scaledFontForFont_];

    v24 = sub_18B0F4F90();
    sub_18B0DBAE4(v24);
    goto LABEL_14;
  }

  if (*(v2 + 80) != 1)
  {
    v25 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v25);
    *(&v36 - 4) = v2;
    *(&v36 - 3) = 0;
    *(&v36 - 16) = 1;
    v37 = v2;
    sub_18B0DC174();
    sub_18B0F4C00();

    if (!*(v2 + 64))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *(v2 + 72) = 0;
  *(v2 + 80) = 1;
  if (*(v2 + 64))
  {
LABEL_13:
    v26 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v26);
    *(&v36 - 2) = v2;
    *(&v36 - 1) = 0;
    v37 = v2;
    sub_18B0DC174();
    sub_18B0F4C00();
  }

LABEL_14:
  swift_getKeyPath();
  v37 = v2;
  sub_18B0DC174();
  sub_18B0F4C10();

  v27 = *(v2 + 16);
  sub_18B0ED3E8();
  v29 = v28;

  if (v29 == 3)
  {
    v30 = sub_18B0F5130();
  }

  else if (v29 == 2)
  {
    v30 = sub_18B0F5110();
  }

  else
  {
    v30 = sub_18B0F5120();
  }

  v32 = v30;
  v33 = v31;
  if (sub_18B0F5100())
  {
    *(v2 + 88) = v32;
    *(v2 + 96) = v33;
  }

  else
  {
    v34 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v34);
    *(&v36 - 4) = v2;
    *(&v36 - 3) = v32;
    *(&v36 - 2) = v33;
    v37 = v2;
    sub_18B0F4C00();
  }

  swift_getKeyPath();
  v37 = v2;
  sub_18B0F4C10();

  sub_18B0F5120();
  result = sub_18B0F5100();
  if ((result & 1) == 0)
  {
    swift_getKeyPath();
    v37 = v2;
    sub_18B0F4C10();

    if (*(v2 + 80) == 1)
    {
      return sub_18B0DB9DC(0x7FF0000000000000, 0);
    }
  }

  return result;
}

uint64_t sub_18B0DB68C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (sub_18B0F5350() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B0DC174();
    sub_18B0F4C00();
  }
}

uint64_t sub_18B0DB7BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 40) == a1 && v5 == a2;
      if (v6 || (sub_18B0F5350() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B0DC174();
    sub_18B0F4C00();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_18B0DB8FC(uint64_t result)
{
  if (*(v1 + 56) == (result & 1))
  {
    *(v1 + 56) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B0DC174();
    sub_18B0F4C00();
  }

  return result;
}

uint64_t sub_18B0DB9DC(uint64_t result, char a2)
{
  if ((*(v2 + 80) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 72) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 72) = *&result;
    *(v2 + 80) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_18B0DC174();
  sub_18B0F4C00();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_18B0DBAE4(uint64_t a1)
{
  if (!*(v1 + 64))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B0DC174();
    sub_18B0F4C00();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = sub_18B0F4F80();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 64) = a1;
}

id sub_18B0DBC1C()
{
  swift_getKeyPath();
  sub_18B0DC174();
  sub_18B0F4C10();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_18B0DBC9C(uint64_t a1, uint64_t a2)
{
  result = sub_18B0F5100();
  if (result)
  {
    *(v2 + 88) = a1;
    *(v2 + 96) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B0DC174();
    sub_18B0F4C00();
  }

  return result;
}

id sub_18B0DBD88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0DC174();
  sub_18B0F4C10();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_18B0DBE10(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_18B014674();
  v5 = v4;
  v6 = sub_18B0F5260();

  if (v6)
  {
    sub_18B0DB0C8(a1);
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B0DC174();
    sub_18B0F4C00();
  }
}

uint64_t sub_18B0DBF48()
{

  v1 = OBJC_IVAR____TtC11Preferences33PSSpecifierButtonContentViewModel___observationRegistrar;
  v2 = sub_18B0F4C30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for PSSpecifierButtonContentViewModel()
{
  result = qword_1EA9B1050;
  if (!qword_1EA9B1050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B0DC058()
{
  result = sub_18B0F4C30();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18B0DC134()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

unint64_t sub_18B0DC174()
{
  result = qword_1EA9B1060;
  if (!qword_1EA9B1060)
  {
    type metadata accessor for PSSpecifierButtonContentViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B1060);
  }

  return result;
}

__n128 sub_18B0DC1F4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 88) = result;
  return result;
}

void sub_18B0DC204()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 72) = *(v0 + 24);
  *(v1 + 80) = v2;
}

uint64_t sub_18B0DC218()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

void sub_18B0DC258()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_18B0DB0C8(v2);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_18B0DC2A4()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

uint64_t sub_18B0DC2E0(void *a1)
{
  v2 = v1;
  v4 = sub_18B0F4BD0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 1;
  sub_18B0F4C20();
  *(v2 + 16) = a1;
  v8 = a1;
  v9 = [v8 identifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_18B0F51B0();
    v13 = v12;
  }

  else
  {
    sub_18B0F4BC0();
    v11 = sub_18B0F4BB0();
    v13 = v14;
    (*(v5 + 8))(v7, v4);
  }

  *(v2 + 24) = v11;
  *(v2 + 32) = v13;
  v15 = sub_18B0140D4();
  v17 = v16;

  *(v2 + 40) = v15;
  *(v2 + 48) = v17;
  v18 = sub_18B0F51B0();
  LOBYTE(v15) = sub_18B013E38(v18, v19, 1u);

  *(v2 + 56) = (v15 & 1) == 0;
  if ([v8 cellType] == 11)
  {
    *(v2 + 72) = 0x7FF0000000000000;
    *(v2 + 80) = 0;
    v20 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
    v21 = [objc_opt_self() systemFontOfSize_];
    v22 = [v20 scaledFontForFont_];

    v23 = sub_18B0F4F90();

    *(v2 + 64) = v23;
  }

  sub_18B0ED3E8();
  if (v24 == 3)
  {
    v25 = sub_18B0F5130();
  }

  else if (v24 == 2)
  {
    v25 = sub_18B0F5110();
  }

  else
  {
    v25 = sub_18B0F5120();
  }

  *(v2 + 88) = v25;
  *(v2 + 96) = v26;
  swift_getKeyPath();
  v29 = v2;
  sub_18B0DC174();
  sub_18B0F4C10();

  sub_18B0F5120();
  if ((sub_18B0F5100() & 1) == 0)
  {
    swift_getKeyPath();
    v29 = v2;
    sub_18B0F4C10();

    if (*(v2 + 80) == 1)
    {
      sub_18B0DB9DC(0x7FF0000000000000, 0);
    }
  }

  return v2;
}

uint64_t sub_18B0DC674@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2958);
  sub_18B0F50C0();
  swift_getKeyPath();
  sub_18B015334(&qword_1EA9B0FF8, type metadata accessor for PSSpecifierLabeledContentViewModel);
  sub_18B0F4C10();

  v3 = *(v11 + OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__secondaryText);
  v2 = *(v11 + OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__secondaryText + 8);

  if (!v2)
  {
    goto LABEL_7;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

LABEL_7:
    result = 0;
    v6 = 0;
    v9 = 0;
    v7 = 0;
    v10 = 0;
    goto LABEL_8;
  }

  sub_18B015D34();
  result = sub_18B0F4FC0();
  v9 = v8 & 1;
  v10 = sub_18B0DC7CC;
LABEL_8:
  *a1 = result;
  a1[1] = v6;
  a1[2] = v9;
  a1[3] = v7;
  a1[4] = v10;
  a1[5] = 0;
  return result;
}

unint64_t sub_18B0DC7FC()
{
  result = qword_1EA9B0F60;
  if (!qword_1EA9B0F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2948);
    sub_18B0DC880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F60);
  }

  return result;
}

unint64_t sub_18B0DC880()
{
  result = qword_1EA9B0F68;
  if (!qword_1EA9B0F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F68);
  }

  return result;
}

unint64_t sub_18B0DC904()
{
  result = qword_1EA9B0F70;
  if (!qword_1EA9B0F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2928);
    sub_18B0DC990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F70);
  }

  return result;
}

unint64_t sub_18B0DC990()
{
  result = qword_1EA9B0F88;
  if (!qword_1EA9B0F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2920);
    sub_18B015254();
    sub_18B0DC7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F88);
  }

  return result;
}

uint64_t sub_18B0DCA1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18B0DCA84()
{
  result = qword_1EA9B0F50;
  if (!qword_1EA9B0F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2938);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2928);
    sub_18B0DC904();
    swift_getOpaqueTypeConformance2();
    sub_18B015334(&unk_1EA9B0E68, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F50);
  }

  return result;
}

uint64_t sub_18B0DCBA4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_18B014C9C();
  sub_18B0F4C10();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_18B0DCC28@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_18B014C9C();
  sub_18B0F4C10();

  v3 = OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__imageType;
  swift_beginAccess();
  return sub_18B016184(v5 + v3, a1);
}

uint64_t sub_18B0DCCC0()
{
  swift_getKeyPath();
  sub_18B014C9C();
  sub_18B0F4C10();

  return *(v0 + OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__isDisabled);
}

uint64_t sub_18B0DCD38()
{
  swift_getKeyPath();
  sub_18B014C9C();
  sub_18B0F4C10();

  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_18B0DCDB8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__isDisabled) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__isDisabled) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B014C9C();
    sub_18B0F4C00();
  }

  return result;
}

id sub_18B0DCEA0()
{
  swift_getKeyPath();
  sub_18B014C9C();
  sub_18B0F4C10();

  v1 = *(v0 + 16);

  return v1;
}

id sub_18B0DCF20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B014C9C();
  sub_18B0F4C10();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_18B0DCFA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B014C9C();
  sub_18B0F4C10();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_18B0DD024(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_18B014B28(v1, v2);
}

uint64_t sub_18B0DD064@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B014C9C();
  sub_18B0F4C10();

  v4 = OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__imageType;
  swift_beginAccess();
  return sub_18B016184(v3 + v4, a2);
}

uint64_t sub_18B0DD0FC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_18B016184(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_18B014C9C();
  sub_18B0F4C00();

  return sub_18B013FFC(v6);
}

uint64_t sub_18B0DD24C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_18B014C9C();
  sub_18B0F4C10();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t keypath_set_13Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v6 = a1[1];

  return sub_18B014DEC(v7, v6, a5);
}

uint64_t sub_18B0DD360@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B014C9C();
  sub_18B0F4C10();

  *a2 = *(v3 + OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__isDisabled);
  return result;
}

uint64_t sub_18B0DD408()
{

  sub_18B013FFC(v0 + OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel__imageType);

  v1 = OBJC_IVAR____TtC11Preferences34PSSpecifierLabeledContentViewModel___observationRegistrar;
  v2 = sub_18B0F4C30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void sub_18B0DD4F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_18B0146C0(v2);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_18B0DD598(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_18B0DD640@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = sub_18B0F4E30();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_18B0F4F50();
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2978);
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v32 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2980);
  MEMORY[0x1EEE9AC00](v35);
  v13 = &v32 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2988);
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v34 = &v32 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2990);
  v15 = MEMORY[0x1EEE9AC00](v41);
  v38 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v32 - v17;
  v50 = a1;
  v51 = a2;
  v48 = a1;
  v49 = a2;
  v32 = a1;
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2960);
  sub_18B0DE9C0(&qword_1EA9B0E30, &qword_1EA9B2998);
  sub_18B015B44();
  sub_18B0F50A0();
  v53 = a1;
  v54 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B29A0);
  sub_18B0F50C0();
  v18 = v52;
  swift_getKeyPath();
  v53 = v18;
  sub_18B0DEC24(&qword_1EA9B0FB8, type metadata accessor for PSSpecifierSubtitleContentViewModel);
  sub_18B0F4C10();

  LODWORD(a2) = *(v18 + OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__isDisabled);

  if (a2)
  {
    v19 = 0.5;
  }

  else
  {
    v19 = 1.0;
  }

  (*(v9 + 32))(v13, v11, v36);
  v20 = v35;
  *&v13[*(v35 + 36)] = v19;
  v21 = v37;
  sub_18B0F4F40();
  v22 = sub_18B0DE908();
  v23 = v34;
  v24 = v20;
  sub_18B0F5010();
  (*(v40 + 8))(v21, v43);
  sub_18B0DEA24(v13, &qword_1EA9B2980);
  v53 = v32;
  v54 = v33;
  sub_18B0F50C0();
  v25 = v52;
  swift_getKeyPath();
  v53 = v25;
  sub_18B0F4C10();

  v53 = v24;
  v54 = v22;
  swift_getOpaqueTypeConformance2();
  v26 = v38;
  v27 = v42;
  sub_18B0F4FF0();

  (*(v44 + 8))(v23, v27);
  sub_18B0F4E20();
  v28 = v39;
  sub_18B0F4D50();
  v29 = v46;
  v30 = *(v45 + 8);
  v30(v7, v46);
  sub_18B017FB8(v26);
  sub_18B0F4E10();
  sub_18B0F4D50();
  v30(v7, v29);
  return sub_18B017FB8(v28);
}

uint64_t sub_18B0DDD0C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B29A0);
  sub_18B0F50C0();
  swift_getKeyPath();
  sub_18B0DEC24(&qword_1EA9B0FB8, type metadata accessor for PSSpecifierSubtitleContentViewModel);
  sub_18B0F4C10();

  v2 = *(v20 + OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__primaryText + 8);

  if (v2)
  {
    sub_18B015D34();
    v3 = sub_18B0F4FC0();
    v5 = v4;
    v7 = v6;
    v9 = v8 & 1;
    sub_18B0DEAC8(v3, v4, v8 & 1);
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v9 = 0;
    v7 = 0;
  }

  sub_18B0F50C0();
  swift_getKeyPath();
  sub_18B0F4C10();

  v11 = *(v20 + OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__secondaryText);
  v10 = *(v20 + OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__secondaryText + 8);

  if (!v10)
  {
    goto LABEL_10;
  }

  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    v10 = 0;
LABEL_10:
    v14 = 0;
    v18 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  sub_18B015D34();
  v10 = sub_18B0F4FC0();
  v14 = v13;
  v16 = v15;
  v18 = v17 & 1;
  sub_18B0DEAC8(v10, v13, v17 & 1);

LABEL_11:
  sub_18B0DEA84(v3, v5, v9, v7);
  sub_18B0DEA84(v10, v14, v18, v16);
  sub_18B0DEAD8(v3, v5, v9, v7);
  sub_18B0DEAD8(v10, v14, v18, v16);
  *a1 = v3;
  a1[1] = v5;
  a1[2] = v9;
  a1[3] = v7;
  a1[4] = v10;
  a1[5] = v14;
  a1[6] = v18;
  a1[7] = v16;
  sub_18B0DEAD8(v10, v14, v18, v16);
  return sub_18B0DEAD8(v3, v5, v9, v7);
}

uint64_t sub_18B0DDFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2968);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  v20[0] = type metadata accessor for SpecifierImageView();
  MEMORY[0x1EEE9AC00](v20[0]);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s9ImageTypeOMa();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v20 - v15;
  v21 = a1;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B29A0);
  sub_18B0F50C0();
  v17 = v23;
  swift_getKeyPath();
  v21 = v17;
  sub_18B0DEC24(&qword_1EA9B0FB8, type metadata accessor for PSSpecifierSubtitleContentViewModel);
  sub_18B0F4C10();

  v18 = OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__imageType;
  swift_beginAccess();
  sub_18B016184(v17 + v18, v16);

  if ((*(v11 + 48))(v16, 1, v10) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_18B0DEC24(&qword_1EA9B10B0, type metadata accessor for SpecifierImageView);
    return sub_18B0F4F10();
  }

  else
  {
    sub_18B01625C(v16, v13);
    sub_18B0161F4(v13, v9, _s9ImageTypeOMa);
    sub_18B0161F4(v9, v7, type metadata accessor for SpecifierImageView);
    swift_storeEnumTagMultiPayload();
    sub_18B0DEC24(&qword_1EA9B10B0, type metadata accessor for SpecifierImageView);
    sub_18B0F4F10();
    sub_18B0162C0(v9, type metadata accessor for SpecifierImageView);
    return sub_18B0162C0(v13, _s9ImageTypeOMa);
  }
}

uint64_t sub_18B0DE3D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0DEC24(&qword_1EA9B0FB8, type metadata accessor for PSSpecifierSubtitleContentViewModel);
  sub_18B0F4C10();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_18B0DE484(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_18B0DF200(v1, v2);
}

uint64_t sub_18B0DE4C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0DEC24(&qword_1EA9B0FB8, type metadata accessor for PSSpecifierSubtitleContentViewModel);
  sub_18B0F4C10();

  v4 = OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__imageType;
  swift_beginAccess();
  return sub_18B016184(v3 + v4, a2);
}

uint64_t sub_18B0DE58C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_18B016184(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_18B0DEC24(&qword_1EA9B0FB8, type metadata accessor for PSSpecifierSubtitleContentViewModel);
  sub_18B0F4C00();

  return sub_18B0DEA24(v6, &qword_1EA9B2970);
}

uint64_t sub_18B0DE714@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_18B0DEC24(&qword_1EA9B0FB8, type metadata accessor for PSSpecifierSubtitleContentViewModel);
  sub_18B0F4C10();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t keypath_set_12Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_18B0DE830@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0DEC24(&qword_1EA9B0FB8, type metadata accessor for PSSpecifierSubtitleContentViewModel);
  sub_18B0F4C10();

  *a2 = *(v3 + OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__isDisabled);
  return result;
}

unint64_t sub_18B0DE908()
{
  result = qword_1EA9B0F18;
  if (!qword_1EA9B0F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2980);
    sub_18B0DE9C0(&qword_1EA9B0E48, &qword_1EA9B2978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F18);
  }

  return result;
}

uint64_t sub_18B0DE9C0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B0DEA24(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B0DEA84(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_18B0DEAC8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_18B0DEAC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_18B0DEAD8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_18B0DEB1C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_18B0DEB1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_18B0DEB2C()
{
  result = qword_1EA9B0F48;
  if (!qword_1EA9B0F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2980);
    sub_18B0DE908();
    swift_getOpaqueTypeConformance2();
    sub_18B0DEC24(&unk_1EA9B0E68, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F48);
  }

  return result;
}

uint64_t sub_18B0DEC24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B0DEC94(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_18B0DFA8C();
  sub_18B0F4C10();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_18B0DED18@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_18B0DFA8C();
  sub_18B0F4C10();

  v3 = OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__imageType;
  swift_beginAccess();
  return sub_18B016184(v5 + v3, a1);
}

uint64_t sub_18B0DEDB0()
{
  swift_getKeyPath();
  sub_18B0DFA8C();
  sub_18B0F4C10();

  return *(v0 + OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__isDisabled);
}

uint64_t sub_18B0DEE28()
{
  swift_getKeyPath();
  sub_18B0DFA8C();
  sub_18B0F4C10();

  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_18B0DEEA8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v28 - v5);
  v7 = sub_18B0F4BD0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 identifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_18B0F51B0();
    v15 = v14;
  }

  else
  {
    sub_18B0F4BC0();
    v13 = sub_18B0F4BB0();
    v15 = v16;
    (*(v8 + 8))(v10, v7);
  }

  sub_18B0DF200(v13, v15);
  sub_18B01376C(v6);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v28 - 2) = v2;
  *(&v28 - 1) = v6;
  v29 = v2;
  sub_18B0DFA8C();
  sub_18B0F4C00();

  sub_18B013FFC(v6);
  v18 = sub_18B0140D4();
  sub_18B0DF380(v18, v19, &OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__primaryText);
  v20 = sub_18B0ED650();
  sub_18B0DF380(v20, v21, &OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__secondaryText);
  v22 = sub_18B0F51B0();
  v24 = sub_18B013E38(v22, v23, 1u);

  v26 = (v24 ^ 1) & 1;
  if (v26 == *(v2 + OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__isDisabled))
  {
    *(v2 + OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__isDisabled) = v26;
  }

  else
  {
    v27 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v27);
    *(&v28 - 2) = v2;
    *(&v28 - 8) = v26;
    v29 = v2;
    sub_18B0F4C00();
  }

  return result;
}

uint64_t sub_18B0DF200(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (sub_18B0F5350() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B0DFA8C();
    sub_18B0F4C00();
  }
}

uint64_t sub_18B0DF380(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      v8 = *v6 == a1 && v7 == a2;
      if (v8 || (sub_18B0F5350() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B0DFA8C();
    sub_18B0F4C00();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_18B0DF4CC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__isDisabled) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__isDisabled) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B0DFA8C();
    sub_18B0F4C00();
  }

  return result;
}

id sub_18B0DF5B4()
{
  swift_getKeyPath();
  sub_18B0DFA8C();
  sub_18B0F4C10();

  v1 = *(v0 + 16);

  return v1;
}

id sub_18B0DF634@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0DFA8C();
  sub_18B0F4C10();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_18B0DF6BC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_18B014674();
  v5 = v4;
  v6 = sub_18B0F5260();

  if (v6)
  {
    sub_18B0DEEA8(a1);
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B0DFA8C();
    sub_18B0F4C00();
  }
}

uint64_t sub_18B0DF7F4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__imageType;
  swift_beginAccess();
  sub_18B014CF4(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_18B0DF860()
{

  sub_18B013FFC(v0 + OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__imageType);

  v1 = OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel___observationRegistrar;
  v2 = sub_18B0F4C30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for PSSpecifierSubtitleContentViewModel()
{
  result = qword_1EA9B0FA8;
  if (!qword_1EA9B0FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B0DF998()
{
  sub_18B013090();
  if (v0 <= 0x3F)
  {
    sub_18B0F4C30();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_18B0DFA8C()
{
  result = qword_1EA9B0FB8;
  if (!qword_1EA9B0FB8)
  {
    type metadata accessor for PSSpecifierSubtitleContentViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0FB8);
  }

  return result;
}

void sub_18B0DFB3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_18B0DEEA8(v2);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

char *sub_18B0DFB88(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v33 - v5);
  v7 = sub_18B0F4BD0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__imageType;
  v12 = _s9ImageTypeOMa();
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  v13 = &v2[OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__primaryText];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v2[OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__secondaryText];
  *v14 = 0;
  *(v14 + 1) = 0;
  sub_18B0F4C20();
  *(v2 + 2) = a1;
  v15 = [a1 identifier];
  if (v15)
  {
    v16 = v15;
    v17 = sub_18B0F51B0();
    v19 = v18;
  }

  else
  {
    sub_18B0F4BC0();
    v17 = sub_18B0F4BB0();
    v19 = v20;
    (*(v8 + 8))(v10, v7);
  }

  *(v2 + 3) = v17;
  *(v2 + 4) = v19;
  sub_18B01376C(v6);
  v21 = OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__imageType;
  sub_18B013FFC(&v2[OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__imageType]);
  sub_18B014064(v6, &v2[v21]);
  v22 = sub_18B0140D4();
  v24 = v23;
  v25 = &v2[OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__primaryText];

  *v25 = v22;
  *(v25 + 1) = v24;
  v26 = sub_18B0ED650();
  v28 = v27;
  v29 = &v2[OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__secondaryText];

  *v29 = v26;
  *(v29 + 1) = v28;
  v30 = sub_18B0F51B0();
  LOBYTE(v26) = sub_18B013E38(v30, v31, 1u);

  v2[OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__isDisabled] = (v26 & 1) == 0;
  return v2;
}

uint64_t sub_18B0DFE74@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = sub_18B0F4E30();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_18B0F4F50();
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2978);
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v32 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2980);
  MEMORY[0x1EEE9AC00](v35);
  v13 = &v32 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2988);
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v34 = &v32 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2990);
  v15 = MEMORY[0x1EEE9AC00](v41);
  v38 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v39 = &v32 - v17;
  v50 = a1;
  v51 = a2;
  v48 = a1;
  v49 = a2;
  v32 = a1;
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2960);
  sub_18B0DE9C0(&qword_1EA9B0E30, &qword_1EA9B2998);
  sub_18B015B44();
  sub_18B0F50A0();
  v53 = a1;
  v54 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B29A8);
  sub_18B0F50C0();
  v18 = v52;
  swift_getKeyPath();
  v53 = v18;
  sub_18B0E1158(&qword_1EA9B29B0, type metadata accessor for PSSpecifierSubtitleWitValueContentViewModel);
  sub_18B0F4C10();

  LODWORD(a2) = *(v18 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__isDisabled);

  if (a2)
  {
    v19 = 0.5;
  }

  else
  {
    v19 = 1.0;
  }

  (*(v9 + 32))(v13, v11, v36);
  v20 = v35;
  *&v13[*(v35 + 36)] = v19;
  v21 = v37;
  sub_18B0F4F40();
  v22 = sub_18B0DE908();
  v23 = v34;
  v24 = v20;
  sub_18B0F5010();
  (*(v40 + 8))(v21, v43);
  sub_18B0DEA24(v13, &qword_1EA9B2980);
  v53 = v32;
  v54 = v33;
  sub_18B0F50C0();
  v25 = v52;
  swift_getKeyPath();
  v53 = v25;
  sub_18B0F4C10();

  v53 = v24;
  v54 = v22;
  swift_getOpaqueTypeConformance2();
  v26 = v38;
  v27 = v42;
  sub_18B0F4FF0();

  (*(v44 + 8))(v23, v27);
  sub_18B0F4E20();
  v28 = v39;
  sub_18B0F4D50();
  v29 = v46;
  v30 = *(v45 + 8);
  v30(v7, v46);
  sub_18B017FB8(v26);
  sub_18B0F4E10();
  sub_18B0F4D50();
  v30(v7, v29);
  return sub_18B017FB8(v28);
}

uint64_t sub_18B0E0540@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B29A8);
  sub_18B0F50C0();
  swift_getKeyPath();
  sub_18B0E1158(&qword_1EA9B29B0, type metadata accessor for PSSpecifierSubtitleWitValueContentViewModel);
  sub_18B0F4C10();

  v2 = *(v20 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__primaryText + 8);

  if (v2)
  {
    sub_18B015D34();
    v3 = sub_18B0F4FC0();
    v5 = v4;
    v7 = v6;
    v9 = v8 & 1;
    sub_18B0DEAC8(v3, v4, v8 & 1);
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v9 = 0;
    v7 = 0;
  }

  sub_18B0F50C0();
  swift_getKeyPath();
  sub_18B0F4C10();

  v11 = *(v20 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__subtitleText);
  v10 = *(v20 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__subtitleText + 8);

  if (!v10)
  {
    goto LABEL_10;
  }

  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    v10 = 0;
LABEL_10:
    v14 = 0;
    v18 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  sub_18B015D34();
  v10 = sub_18B0F4FC0();
  v14 = v13;
  v16 = v15;
  v18 = v17 & 1;
  sub_18B0DEAC8(v10, v13, v17 & 1);

LABEL_11:
  sub_18B0DEA84(v3, v5, v9, v7);
  sub_18B0DEA84(v10, v14, v18, v16);
  sub_18B0DEAD8(v3, v5, v9, v7);
  sub_18B0DEAD8(v10, v14, v18, v16);
  *a1 = v3;
  a1[1] = v5;
  a1[2] = v9;
  a1[3] = v7;
  a1[4] = v10;
  a1[5] = v14;
  a1[6] = v18;
  a1[7] = v16;
  sub_18B0DEAD8(v10, v14, v18, v16);
  return sub_18B0DEAD8(v3, v5, v9, v7);
}

uint64_t sub_18B0E0808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2968);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  v20[0] = type metadata accessor for SpecifierImageView();
  MEMORY[0x1EEE9AC00](v20[0]);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s9ImageTypeOMa();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v20 - v15;
  v21 = a1;
  v22 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B29A8);
  sub_18B0F50C0();
  v17 = v23;
  swift_getKeyPath();
  v21 = v17;
  sub_18B0E1158(&qword_1EA9B29B0, type metadata accessor for PSSpecifierSubtitleWitValueContentViewModel);
  sub_18B0F4C10();

  v18 = OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__imageType;
  swift_beginAccess();
  sub_18B016184(v17 + v18, v16);

  if ((*(v11 + 48))(v16, 1, v10) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_18B0E1158(&qword_1EA9B10B0, type metadata accessor for SpecifierImageView);
    return sub_18B0F4F10();
  }

  else
  {
    sub_18B01625C(v16, v13);
    sub_18B0161F4(v13, v9, _s9ImageTypeOMa);
    sub_18B0161F4(v9, v7, type metadata accessor for SpecifierImageView);
    swift_storeEnumTagMultiPayload();
    sub_18B0E1158(&qword_1EA9B10B0, type metadata accessor for SpecifierImageView);
    sub_18B0F4F10();
    sub_18B0162C0(v9, type metadata accessor for SpecifierImageView);
    return sub_18B0162C0(v13, _s9ImageTypeOMa);
  }
}

uint64_t sub_18B0E0C0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0E1158(&qword_1EA9B29B0, type metadata accessor for PSSpecifierSubtitleWitValueContentViewModel);
  sub_18B0F4C10();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_18B0E0CB8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_18B0E1B24(v1, v2);
}

uint64_t sub_18B0E0CF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0E1158(&qword_1EA9B29B0, type metadata accessor for PSSpecifierSubtitleWitValueContentViewModel);
  sub_18B0F4C10();

  v4 = OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__imageType;
  swift_beginAccess();
  return sub_18B016184(v3 + v4, a2);
}

uint64_t sub_18B0E0DC0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_18B016184(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_18B0E1158(&qword_1EA9B29B0, type metadata accessor for PSSpecifierSubtitleWitValueContentViewModel);
  sub_18B0F4C00();

  return sub_18B0DEA24(v6, &qword_1EA9B2970);
}

uint64_t sub_18B0E0F48@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_18B0E1158(&qword_1EA9B29B0, type metadata accessor for PSSpecifierSubtitleWitValueContentViewModel);
  sub_18B0F4C10();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t keypath_set_12Tm_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_18B0E1064@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0E1158(&qword_1EA9B29B0, type metadata accessor for PSSpecifierSubtitleWitValueContentViewModel);
  sub_18B0F4C10();

  *a2 = *(v3 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__isDisabled);
  return result;
}

uint64_t sub_18B0E1158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B0E11C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_18B0E2C20();
  sub_18B0F4C10();

  v3 = OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__imageType;
  swift_beginAccess();
  return sub_18B016184(v5 + v3, a1);
}

uint64_t sub_18B0E1260()
{
  swift_getKeyPath();
  sub_18B0E2C20();
  sub_18B0F4C10();

  return *(v0 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__isDisabled);
}

uint64_t sub_18B0E12D8()
{
  swift_getKeyPath();
  sub_18B0E2C20();
  sub_18B0F4C10();

  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_18B0E1358(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v49 - v5);
  v7 = sub_18B0F4BD0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 identifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_18B0F51B0();
    v15 = v14;
  }

  else
  {
    sub_18B0F4BC0();
    v13 = sub_18B0F4BB0();
    v15 = v16;
    (*(v8 + 8))(v10, v7);
  }

  sub_18B0E1B24(v13, v15);
  sub_18B01376C(v6);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v49 - 2) = v2;
  *(&v49 - 1) = v6;
  *&v53 = v2;
  sub_18B0E2C20();
  sub_18B0F4C00();

  sub_18B0DEA24(v6, &qword_1EA9B2970);
  v18 = sub_18B0140D4();
  sub_18B0E1DB4(v18, v19, &OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__primaryText);
  v20 = sub_18B0F51B0();
  v22 = sub_18B013E38(v20, v21, 1u);

  v23 = (v22 ^ 1) & 1;
  if (v23 == *(v2 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__isDisabled))
  {
    *(v2 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__isDisabled) = v23;
  }

  else
  {
    v24 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v24);
    *(&v49 - 2) = v2;
    *(&v49 - 8) = v23;
    *&v53 = v2;
    sub_18B0F4C00();
  }

  if ([a1 propertyForKey_])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v53 = v51;
  v54 = v52;
  if (!*(&v52 + 1))
  {
    return sub_18B0DEA24(&v53, &qword_1EA9B29F8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A00);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v26 = v49;
  if (v26 == sub_18B013450(0, &qword_1EA9B2A08))
  {
    if ([a1 propertyForKey_])
    {
      sub_18B0F52A0();
      swift_unknownObjectRelease();
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
    }

    v53 = v51;
    v54 = v52;
    if (*(&v52 + 1))
    {
      v36 = swift_dynamicCast();
      v37 = v36 == 0;
      if (v36)
      {
        v38 = v49;
      }

      else
      {
        v38 = 0;
      }

      if (v37)
      {
        v39 = 0;
      }

      else
      {
        v39 = v50;
      }
    }

    else
    {
      sub_18B0DEA24(&v53, &qword_1EA9B29F8);
      v38 = 0;
      v39 = 0;
    }

    sub_18B0E1DB4(v38, v39, &OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__subtitleText);
    v40 = [a1 displayStringForCurrentValue];
    if (v40)
    {
      v41 = v40;
      v42 = sub_18B0F51B0();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v45 = v42;
    v46 = v44;
    return sub_18B0E1DB4(v45, v46, &OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__valueText);
  }

  result = sub_18B013450(0, &qword_1EA9B2A10);
  if (v26 == result)
  {
    v29 = [a1 displayStringForCurrentValue];
    if (v29)
    {
      v30 = v29;
      v31 = sub_18B0F51B0();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    sub_18B0E1DB4(v31, v33, &OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__subtitleText);
    if ([a1 propertyForKey_])
    {
      sub_18B0F52A0();
      swift_unknownObjectRelease();
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
    }

    v53 = v51;
    v54 = v52;
    if (*(&v52 + 1))
    {
      v47 = swift_dynamicCast();
      v48 = v47 == 0;
      if (v47)
      {
        v45 = v49;
      }

      else
      {
        v45 = 0;
      }

      if (v48)
      {
        v46 = 0;
      }

      else
      {
        v46 = v50;
      }
    }

    else
    {
      sub_18B0DEA24(&v53, &qword_1EA9B29F8);
      v45 = 0;
      v46 = 0;
    }

    return sub_18B0E1DB4(v45, v46, &OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__valueText);
  }

  v27 = (v2 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__subtitleText);
  if (*(v2 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__subtitleText + 8))
  {
    v28 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v28);
    *(&v49 - 3) = 0;
    *(&v49 - 2) = 0;
    *(&v49 - 4) = v2;
    *&v53 = v2;
    sub_18B0F4C00();
  }

  else
  {
    *v27 = 0;
    v27[1] = 0;
  }

  v34 = (v2 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__valueText);
  if (*(v2 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__valueText + 8))
  {
    v35 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v35);
    *(&v49 - 3) = 0;
    *(&v49 - 2) = 0;
    *(&v49 - 4) = v2;
    *&v53 = v2;
    sub_18B0F4C00();
  }

  else
  {
    *v34 = 0;
    v34[1] = 0;
  }

  return result;
}

uint64_t sub_18B0E1B24(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (sub_18B0F5350() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B0E2C20();
    sub_18B0F4C00();
  }
}

uint64_t sub_18B0E1C7C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__isDisabled) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__isDisabled) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B0E2C20();
    sub_18B0F4C00();
  }

  return result;
}

uint64_t sub_18B0E1DB4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      v8 = *v6 == a1 && v7 == a2;
      if (v8 || (sub_18B0F5350() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B0E2C20();
    sub_18B0F4C00();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v6 = a1;
  v6[1] = a2;
}

id sub_18B0E1F00()
{
  swift_getKeyPath();
  sub_18B0E2C20();
  sub_18B0F4C10();

  v1 = *(v0 + 16);

  return v1;
}

id sub_18B0E1F80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0E2C20();
  sub_18B0F4C10();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_18B0E2008(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_18B013450(0, &qword_1EA9B0DE0);
  v5 = v4;
  v6 = sub_18B0F5260();

  if (v6)
  {
    sub_18B0E1358(a1);
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B0E2C20();
    sub_18B0F4C00();
  }
}

uint64_t sub_18B0E2150(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__imageType;
  swift_beginAccess();
  sub_18B014CF4(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_18B0E21D0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_18B0E2C20();
  sub_18B0F4C10();

  v4 = *(v2 + *a2);

  return v4;
}

char *sub_18B0E2254(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v54 - v5);
  v7 = sub_18B0F4BD0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__imageType;
  v12 = _s9ImageTypeOMa();
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  v13 = &v2[OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__primaryText];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v2[OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__subtitleText];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v2[OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__valueText];
  *v15 = 0;
  *(v15 + 1) = 0;
  sub_18B0F4C20();
  *(v2 + 2) = a1;
  v16 = a1;
  v17 = [v16 identifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_18B0F51B0();
    v21 = v20;
  }

  else
  {
    sub_18B0F4BC0();
    v19 = sub_18B0F4BB0();
    v21 = v22;
    (*(v8 + 8))(v10, v7);
  }

  *(v2 + 3) = v19;
  *(v2 + 4) = v21;
  sub_18B01376C(v6);
  v23 = OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__imageType;
  sub_18B0DEA24(&v2[OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__imageType], &qword_1EA9B2970);
  sub_18B014064(v6, &v2[v23]);
  v24 = sub_18B0140D4();
  v26 = v25;
  v27 = &v2[OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__primaryText];

  *v27 = v24;
  *(v27 + 1) = v26;
  v28 = sub_18B0F51B0();
  LOBYTE(v24) = sub_18B013E38(v28, v29, 1u);

  v2[OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__isDisabled] = (v24 & 1) == 0;
  if ([v16 propertyForKey_])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  v59 = v57;
  v60 = v58;
  if (*(&v58 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A00);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_48;
    }

    v30 = v55;
    if (v30 == sub_18B013450(0, &qword_1EA9B2A08))
    {
      if ([v16 propertyForKey_])
      {
        sub_18B0F52A0();
        swift_unknownObjectRelease();
      }

      else
      {
        v57 = 0u;
        v58 = 0u;
      }

      v59 = v57;
      v60 = v58;
      if (*(&v58 + 1))
      {
        v40 = swift_dynamicCast();
        v41 = v40 == 0;
        if (v40)
        {
          v42 = v55;
        }

        else
        {
          v42 = 0;
        }

        if (v41)
        {
          v43 = 0;
        }

        else
        {
          v43 = v56;
        }
      }

      else
      {
        sub_18B0DEA24(&v59, &qword_1EA9B29F8);
        v42 = 0;
        v43 = 0;
      }

      sub_18B0E1DB4(v42, v43, &OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__subtitleText);
      v44 = [v16 displayStringForCurrentValue];
      if (v44)
      {
        v45 = v44;
        v46 = sub_18B0F51B0();
        v48 = v47;
      }

      else
      {
        v46 = 0;
        v48 = 0;
      }

      v49 = v46;
      v50 = v48;
    }

    else
    {
      if (v30 != sub_18B013450(0, &qword_1EA9B2A10))
      {
        v31 = &v2[OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__subtitleText];
        if (*&v2[OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__subtitleText + 8])
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          *(&v54 - 3) = 0;
          *(&v54 - 2) = 0;
          *(&v54 - 4) = v2;
          *&v59 = v2;
          sub_18B0E2C20();
          sub_18B0F4C00();
        }

        else
        {
          *v31 = 0;
          *(v31 + 1) = 0;
        }

        v38 = &v2[OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__valueText];
        if (*&v2[OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__valueText + 8])
        {
          v39 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v39);
          *(&v54 - 3) = 0;
          *(&v54 - 2) = 0;
          *(&v54 - 4) = v2;
          *&v59 = v2;
          sub_18B0E2C20();
          sub_18B0F4C00();

          return v2;
        }

        *v38 = 0;
        *(v38 + 1) = 0;
LABEL_48:

        return v2;
      }

      v33 = [v16 displayStringForCurrentValue];
      if (v33)
      {
        v34 = v33;
        v35 = sub_18B0F51B0();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      sub_18B0E1DB4(v35, v37, &OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__subtitleText);
      if ([v16 propertyForKey_])
      {
        sub_18B0F52A0();
        swift_unknownObjectRelease();
      }

      else
      {
        v57 = 0u;
        v58 = 0u;
      }

      v59 = v57;
      v60 = v58;
      if (*(&v58 + 1))
      {
        v51 = swift_dynamicCast();
        v52 = v51 == 0;
        if (v51)
        {
          v49 = v55;
        }

        else
        {
          v49 = 0;
        }

        if (v52)
        {
          v50 = 0;
        }

        else
        {
          v50 = v56;
        }
      }

      else
      {
        sub_18B0DEA24(&v59, &qword_1EA9B29F8);
        v49 = 0;
        v50 = 0;
      }
    }

    sub_18B0E1DB4(v49, v50, &OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__valueText);
    goto LABEL_48;
  }

  sub_18B0DEA24(&v59, &qword_1EA9B29F8);
  return v2;
}

uint64_t sub_18B0E29CC()
{

  sub_18B0DEA24(v0 + OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel__imageType, &qword_1EA9B2970);

  v1 = OBJC_IVAR____TtC11Preferences43PSSpecifierSubtitleWitValueContentViewModel___observationRegistrar;
  v2 = sub_18B0F4C30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for PSSpecifierSubtitleWitValueContentViewModel()
{
  result = qword_1EA9B29E8;
  if (!qword_1EA9B29E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B0E2B28()
{
  sub_18B013090();
  if (v0 <= 0x3F)
  {
    sub_18B0F4C30();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_18B0E2C20()
{
  result = qword_1EA9B29B0;
  if (!qword_1EA9B29B0)
  {
    type metadata accessor for PSSpecifierSubtitleWitValueContentViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B29B0);
  }

  return result;
}

void sub_18B0E2CD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_18B0E1358(v2);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_18B0E2DB0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v5 = sub_18B0F4E30();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18B0F4F50();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A18);
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v10 = &v46 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A20) - 8;
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v46 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A28);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A30);
  v14 = *(v13 - 8);
  v58 = v13;
  v59 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v46 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A38);
  v16 = MEMORY[0x1EEE9AC00](v57);
  v54 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v46 - v18;
  v68 = a1;
  v69 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A40);
  sub_18B0F50D0();
  v19 = v70;
  v20 = v71;
  v21 = v72;
  swift_getKeyPath();
  v70 = v19;
  v71 = v20;
  v72 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A48);
  sub_18B0F50F0();

  v66 = a1;
  v67 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A50);
  sub_18B0E3D40();
  sub_18B0F50E0();
  v70 = a1;
  v71 = a2;
  sub_18B0F50C0();
  v22 = v68;
  swift_getKeyPath();
  v70 = v22;
  sub_18B0E422C(&qword_1EA9B1038, type metadata accessor for PSSpecifierToggleContentViewModel);
  sub_18B0F4C10();

  v23 = *(v22 + 16);

  LOBYTE(v70) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  sub_18B0DE9C0(&qword_1EA9B0E40, &qword_1EA9B2A18);

  v25 = v47;
  v26 = v48;
  sub_18B0F5020();

  (*(v49 + 8))(v10, v26);
  v70 = a1;
  v71 = a2;
  sub_18B0F50C0();
  v27 = *(v68 + 32);

  swift_getKeyPath();
  v70 = v27;
  sub_18B0E422C(&qword_1EA9B0FB8, type metadata accessor for PSSpecifierSubtitleContentViewModel);
  sub_18B0F4C10();

  LOBYTE(v20) = *(v27 + OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__isDisabled);

  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = v20;
  v30 = (v25 + *(v50 + 44));
  *v30 = KeyPath;
  v30[1] = sub_18B0E3EE4;
  v30[2] = v29;
  v70 = a1;
  v71 = a2;
  sub_18B0F50C0();
  v31 = *(v68 + 32);

  swift_getKeyPath();
  v70 = v31;
  sub_18B0F4C10();

  LODWORD(KeyPath) = *(v31 + OBJC_IVAR____TtC11Preferences35PSSpecifierSubtitleContentViewModel__isDisabled);

  if (KeyPath)
  {
    v32 = 0.5;
  }

  else
  {
    v32 = 1.0;
  }

  v33 = v52;
  sub_18B018314(v25, v52);
  v34 = v53;
  *(v33 + *(v53 + 36)) = v32;
  v35 = v55;
  sub_18B0F4F40();
  v36 = sub_18B0E3EFC();
  v37 = v51;
  sub_18B0F5010();
  (*(v60 + 8))(v35, v61);
  sub_18B0DEA24(v33, &qword_1EA9B2A28);
  v70 = a1;
  v71 = a2;
  sub_18B0F50C0();
  v38 = *(v68 + 32);

  swift_getKeyPath();
  v70 = v38;
  sub_18B0F4C10();

  v70 = v34;
  v71 = v36;
  swift_getOpaqueTypeConformance2();
  v39 = v54;
  v40 = v58;
  sub_18B0F4FF0();

  (*(v59 + 8))(v37, v40);
  v41 = v62;
  sub_18B0F4E20();
  v42 = v56;
  sub_18B0F4D50();
  v43 = v64;
  v44 = *(v63 + 8);
  v44(v41, v64);
  sub_18B0DEA24(v39, &qword_1EA9B2A38);
  sub_18B0F4E10();
  sub_18B0F4D50();
  v44(v41, v43);
  return sub_18B0DEA24(v42, &qword_1EA9B2A38);
}

uint64_t sub_18B0E3754@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A58);
  v28 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v27 = &v27 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A68);
  MEMORY[0x1EEE9AC00](v30);
  v7 = (&v27 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = _s9ImageTypeOMa();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v36 = a1;
  v37 = a2;
  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A40);
  sub_18B0F50C0();
  v16 = v34;
  swift_getKeyPath();
  v36 = v16;
  sub_18B0E422C(&qword_1EA9B1038, type metadata accessor for PSSpecifierToggleContentViewModel);
  sub_18B0F4C10();

  v17 = OBJC_IVAR____TtC11Preferences33PSSpecifierToggleContentViewModel__leadingBadgeValue;
  swift_beginAccess();
  sub_18B016184(&v16[v17], v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_18B013FFC(v10);
    v34 = v15;
    v35 = v29;
    sub_18B0F50C0();
    v18 = *(v33 + 32);

    v33 = v18;
    type metadata accessor for PSSpecifierSubtitleContentViewModel();
    sub_18B0F50B0();
    v19 = v35;
    *v7 = v34;
    v7[1] = v19;
    swift_storeEnumTagMultiPayload();
    sub_18B0E3DCC();
    sub_18B0E3E88();
    return sub_18B0F4F10();
  }

  else
  {
    v21 = sub_18B01625C(v10, v14);
    v22 = MEMORY[0x1EEE9AC00](v21);
    *(&v27 - 2) = v14;
    MEMORY[0x1EEE9AC00](v22);
    v23 = v29;
    *(&v27 - 2) = v15;
    *(&v27 - 1) = v23;
    type metadata accessor for SpecifierImageView();
    sub_18B0E3E88();
    sub_18B0E422C(&qword_1EA9B10B0, type metadata accessor for SpecifierImageView);
    v24 = v27;
    sub_18B0F4D20();
    v25 = v28;
    v26 = v32;
    (*(v28 + 16))(v7, v24, v32);
    swift_storeEnumTagMultiPayload();
    sub_18B0E3DCC();
    sub_18B0F4F10();
    (*(v25 + 8))(v24, v26);
    return sub_18B0E40D8(v14);
  }
}

uint64_t sub_18B0E3C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A40);
  sub_18B0F50C0();

  type metadata accessor for PSSpecifierSubtitleContentViewModel();
  result = sub_18B0F50B0();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t sub_18B0E3CD0(uint64_t a1, char *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A40);
  sub_18B0F50C0();
  sub_18B0E44FC(v2);
}

unint64_t sub_18B0E3D40()
{
  result = qword_1EA9B0ED0;
  if (!qword_1EA9B0ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2A50);
    sub_18B0E3DCC();
    sub_18B0E3E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0ED0);
  }

  return result;
}

unint64_t sub_18B0E3DCC()
{
  result = qword_1EA9B0F90;
  if (!qword_1EA9B0F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2A58);
    sub_18B0E3E88();
    sub_18B0E422C(&qword_1EA9B10B0, type metadata accessor for SpecifierImageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F90);
  }

  return result;
}

unint64_t sub_18B0E3E88()
{
  result = qword_1EA9B1070;
  if (!qword_1EA9B1070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B1070);
  }

  return result;
}

unint64_t sub_18B0E3EFC()
{
  result = qword_1EA9B0F00;
  if (!qword_1EA9B0F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2A28);
    sub_18B0E3F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F00);
  }

  return result;
}

unint64_t sub_18B0E3F88()
{
  result = qword_1EA9B0F28;
  if (!qword_1EA9B0F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2A20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2A18);
    sub_18B0DE9C0(&qword_1EA9B0E40, &qword_1EA9B2A18);
    swift_getOpaqueTypeConformance2();
    sub_18B0DE9C0(&qword_1EA9B0E60, &qword_1EA9B2A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F28);
  }

  return result;
}

uint64_t sub_18B0E40D8(uint64_t a1)
{
  v2 = _s9ImageTypeOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18B0E4134()
{
  result = qword_1EA9B0F30;
  if (!qword_1EA9B0F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2A28);
    sub_18B0E3EFC();
    swift_getOpaqueTypeConformance2();
    sub_18B0E422C(&unk_1EA9B0E68, MEMORY[0x1E697CBF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F30);
  }

  return result;
}

uint64_t sub_18B0E422C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B0E4274()
{
  swift_getKeyPath();
  sub_18B0E5710(&qword_1EA9B1038, type metadata accessor for PSSpecifierToggleContentViewModel);
  sub_18B0F4C10();

  return *(v0 + 16);
}

uint64_t sub_18B0E4314(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B0E5710(&qword_1EA9B1038, type metadata accessor for PSSpecifierToggleContentViewModel);
    sub_18B0F4C00();
  }

  return result;
}

uint64_t sub_18B0E4424@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_18B0E5710(&qword_1EA9B1038, type metadata accessor for PSSpecifierToggleContentViewModel);
  sub_18B0F4C10();

  v3 = OBJC_IVAR____TtC11Preferences33PSSpecifierToggleContentViewModel__leadingBadgeValue;
  swift_beginAccess();
  return sub_18B017254(v5 + v3, a1, &qword_1EA9B2970);
}

uint64_t sub_18B0E44FC(char a1)
{
  v2 = sub_18B0F5140();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18B0F5160();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B013450(0, &qword_1EA9B2A70);
  v10 = sub_18B0F5240();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_18B0E5688;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B0E5430;
  aBlock[3] = &block_descriptor;
  v13 = _Block_copy(aBlock);

  sub_18B0F5150();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_18B0E5710(&qword_1EA9B2A78, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2A80);
  sub_18B0E56AC();
  sub_18B0F52B0();
  MEMORY[0x18CFEE4C0](0, v9, v5, v13);
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_18B0E47EC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v11 - v5);
  sub_18B0DF6BC(a1);
  v7 = sub_18B0E4A4C() & 1;
  if (v7 == *(v2 + 16))
  {
    *(v2 + 16) = v7;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v11 - 2) = v2;
    *(&v11 - 8) = v7;
    v12 = v2;
    sub_18B0E5710(&qword_1EA9B1038, type metadata accessor for PSSpecifierToggleContentViewModel);
    sub_18B0F4C00();
  }

  sub_18B0ED75C(v6);
  v9 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v9);
  *(&v11 - 2) = v2;
  *(&v11 - 1) = v6;
  v12 = v2;
  sub_18B0E5710(&qword_1EA9B1038, type metadata accessor for PSSpecifierToggleContentViewModel);
  sub_18B0F4C00();

  return sub_18B0DEA24(v6, &qword_1EA9B2970);
}

unint64_t sub_18B0E4A4C()
{
  if ([v0 performGetter])
  {
    sub_18B0F52A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  sub_18B017254(v6, &v4, &qword_1EA9B29F8);
  if (!*(&v5 + 1))
  {
    sub_18B0DEA24(&v4, &qword_1EA9B29F8);
LABEL_8:
    sub_18B017254(v6, &v4, &qword_1EA9B29F8);
    if (*(&v5 + 1))
    {
      sub_18B013450(0, &qword_1EA9B2A90);
      if (swift_dynamicCast())
      {
        v1 = [v3 BOOLValue];

        goto LABEL_13;
      }
    }

    else
    {
      sub_18B0DEA24(&v4, &qword_1EA9B29F8);
    }

    v1 = 0;
    goto LABEL_13;
  }

  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v1 = v3;
LABEL_13:
  sub_18B0DEA24(v6, &qword_1EA9B29F8);
  return v1;
}

id sub_18B0E4BD0()
{
  swift_getKeyPath();
  sub_18B0E5710(&qword_1EA9B1038, type metadata accessor for PSSpecifierToggleContentViewModel);
  sub_18B0F4C10();

  v1 = *(v0 + 24);

  return v1;
}

id sub_18B0E4C80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0E5710(&qword_1EA9B1038, type metadata accessor for PSSpecifierToggleContentViewModel);
  sub_18B0F4C10();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_18B0E4D38(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  sub_18B013450(0, &qword_1EA9B0DE0);
  v5 = v4;
  v6 = sub_18B0F5260();

  if (v6)
  {
    sub_18B0E47EC(a1);
    v7 = *(v2 + 24);
    *(v2 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_18B0E5710(&qword_1EA9B1038, type metadata accessor for PSSpecifierToggleContentViewModel);
    sub_18B0F4C00();
  }
}

uint64_t sub_18B0E4EB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B0E5710(&qword_1EA9B1038, type metadata accessor for PSSpecifierToggleContentViewModel);
  sub_18B0F4C10();

  v4 = OBJC_IVAR____TtC11Preferences33PSSpecifierToggleContentViewModel__leadingBadgeValue;
  swift_beginAccess();
  return sub_18B017254(v3 + v4, a2, &qword_1EA9B2970);
}

uint64_t sub_18B0E4F88(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_18B017254(a1, &v9[-v5], &qword_1EA9B2970);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_18B0E5710(&qword_1EA9B1038, type metadata accessor for PSSpecifierToggleContentViewModel);
  sub_18B0F4C00();

  return sub_18B0DEA24(v6, &qword_1EA9B2970);
}

uint64_t sub_18B0E50D8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11Preferences33PSSpecifierToggleContentViewModel__leadingBadgeValue;
  swift_beginAccess();
  sub_18B014CF4(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_18B0E5144(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC11Preferences33PSSpecifierToggleContentViewModel__leadingBadgeValue;
  v8 = _s9ImageTypeOMa();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  sub_18B0F4C20();
  *(v2 + 24) = a1;
  type metadata accessor for PSSpecifierSubtitleContentViewModel();
  swift_allocObject();
  v9 = a1;
  *(v2 + 32) = sub_18B0DFB88(v9);
  *(v2 + 16) = sub_18B0E4A4C() & 1;
  sub_18B0ED75C(v6);
  swift_getKeyPath();
  v12 = v2;
  v13 = v6;
  v14 = v2;
  sub_18B0E5710(&qword_1EA9B1038, type metadata accessor for PSSpecifierToggleContentViewModel);
  sub_18B0F4C00();

  sub_18B0DEA24(v6, &qword_1EA9B2970);
  return v2;
}

void sub_18B0E5330()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    sub_18B0E5710(&qword_1EA9B1038, type metadata accessor for PSSpecifierToggleContentViewModel);
    sub_18B0F4C10();

    v2 = *(v1 + 24);

    v3 = sub_18B0F5200();
    [v2 performSetterWithValue_];
  }
}

uint64_t sub_18B0E5430(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_18B0E5474()
{

  sub_18B0DEA24(v0 + OBJC_IVAR____TtC11Preferences33PSSpecifierToggleContentViewModel__leadingBadgeValue, &qword_1EA9B2970);
  v1 = OBJC_IVAR____TtC11Preferences33PSSpecifierToggleContentViewModel___observationRegistrar;
  v2 = sub_18B0F4C30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for PSSpecifierToggleContentViewModel()
{
  result = qword_1EA9B1028;
  if (!qword_1EA9B1028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B0E5594()
{
  sub_18B013090();
  if (v0 <= 0x3F)
  {
    sub_18B0F4C30();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_18B0E56AC()
{
  result = qword_1EA9B2A88;
  if (!qword_1EA9B2A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B2A88);
  }

  return result;
}

uint64_t sub_18B0E5710(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_18B0E5758()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_18B0E47EC(v2);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

id sub_18B0E5828@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_18B0F5080();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 1];
  v12 = sub_18B0F4C40();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 1];
  (*(v13 + 16))(v15, a1, v12);
  if ((*(v13 + 88))(v15, v12) == *MEMORY[0x1E69E3A20])
  {
    (*(v13 + 96))(v15, v12);
    (*(v9 + 104))(v11, *MEMORY[0x1E6981638], v8);
    v16 = sub_18B0F5090();
    (*(v9 + 8))(v11, v8);
    [a2 size];
    [a2 size];
    sub_18B0F5110();
    sub_18B0F4D10();
    v25 = v30;
    v23 = v32;
    v21 = 0;
    *&v34 = v16;
    *(&v34 + 1) = v29;
    LOBYTE(v35) = v30;
    *(&v35 + 1) = v24[0];
    DWORD1(v35) = *(v24 + 3);
    *(&v35 + 1) = v31;
    v36[0] = v32;
    *&v36[1] = *v22;
    *&v36[4] = *&v22[3];
    *&v36[8] = v33;
    v36[24] = 0;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2AE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2AF0);
    sub_18B0E5FAC();
    sub_18B0E6030();
    sub_18B0F4F10();

    v34 = v26;
    v35 = v27;
    *v36 = v28[0];
    *&v36[9] = *(v28 + 9);
LABEL_8:
    v20 = v35;
    *a4 = v34;
    a4[1] = v20;
    a4[2] = *v36;
    *(a4 + 41) = *&v36[9];
    return result;
  }

  v18 = [a3 imageForDescriptor_];
  if (!v18)
  {
    *&v26 = sub_18B0F5070();
    BYTE8(v26) = 1;
    sub_18B0F4F10();
    goto LABEL_7;
  }

  v19 = v18;
  result = [v18 CGImage];
  if (result)
  {
    [v19 scale];
    *&v26 = sub_18B0F5060();
    BYTE8(v26) = 0;
    swift_retain_n();
    sub_18B0F4F10();

LABEL_7:
    LOBYTE(v29) = BYTE8(v34);
    LOBYTE(v24[0]) = 1;
    v36[24] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2AE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2AF0);
    sub_18B0E5FAC();
    sub_18B0E6030();
    sub_18B0F4F10();
    result = (*(v13 + 8))(v15, v12);
    v34 = v26;
    v35 = v27;
    *v36 = v28[0];
    *&v36[9] = *(v28 + 9);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_18B0E5D84()
{
  sub_18B017320();
  sub_18B0F4EE0();
  __break(1u);
}

id sub_18B0E5DAC(uint64_t a1)
{
  if (a1 == 4)
  {
    v2 = *MEMORY[0x1E69A8A88];
    v3 = objc_opt_self();
    v4 = [v3 imageDescriptorNamed_];
    v5 = *MEMORY[0x1E69A8AA0];
    v6 = v4;
    v7 = [v3 imageDescriptorNamed_];
    [v7 size];
    v9 = v8;

    v10 = [objc_opt_self() iosMessagesAppIconSpecification];
    [v10 maxSize];
    [v6 setSize_];
  }

  else
  {
    v6 = [objc_opt_self() imageDescriptorNamed_];
  }

  [v6 setShape_];
  [v6 setDrawBorder_];

  return v6;
}

unint64_t sub_18B0E5F20()
{
  result = qword_1EA9B0EC8;
  if (!qword_1EA9B0EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2AE0);
    sub_18B0E5FAC();
    sub_18B0E6030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0EC8);
  }

  return result;
}

unint64_t sub_18B0E5FAC()
{
  result = qword_1EA9B0F20;
  if (!qword_1EA9B0F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0F20);
  }

  return result;
}

unint64_t sub_18B0E6030()
{
  result = qword_1EA9B0EB8;
  if (!qword_1EA9B0EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9B2AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9B0EB8);
  }

  return result;
}

__n128 sub_18B0E60C8@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2970);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v22 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2B38);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2B30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - v12;
  *v13 = sub_18B0F4E40();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_18B01376C(v7);
  sub_18B0E6D38(v7, v5, &qword_1EA9B2970);
  v14 = _s9ImageTypeOMa();
  v15 = 1;
  if ((*(*(v14 - 8) + 48))(v5, 1, v14) != 1)
  {
    sub_18B01625C(v5, v10);
    v15 = 0;
  }

  v16 = type metadata accessor for SpecifierImageView();
  (*(*(v16 - 8) + 56))(v10, v15, 1, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2B40);
  sub_18B0E6D38(v10, &v13[*(v17 + 44)], &qword_1EA9B2B38);
  sub_18B0F5110();
  sub_18B0F4D70();
  sub_18B0E6D38(v13, a1, &qword_1EA9B2B30);
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2B18) + 36);
  v19 = v22[5];
  *(v18 + 64) = v22[4];
  *(v18 + 80) = v19;
  *(v18 + 96) = v22[6];
  v20 = v22[1];
  *v18 = v22[0];
  *(v18 + 16) = v20;
  result = v22[3];
  *(v18 + 32) = v22[2];
  *(v18 + 48) = result;
  return result;
}

uint64_t sub_18B0E644C@<X0>(void *a1@<X8>)
{

  result = sub_18B0F50B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_18B0E64BC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11Preferences35PSSpecifierContentConfigurationCell_contentViewModel;
  swift_beginAccess();
  sub_18B012F6C(v2 + v4, v10);
  if (v11)
  {
    type metadata accessor for PSSpecifierButtonContentViewModel();
    if (swift_dynamicCast())
    {
      v5 = [objc_opt_self() areAnimationsEnabled];
      MEMORY[0x1EEE9AC00](v5);
      v10[0] = 0;
      sub_18B0F4CE0();
      sub_18B0F4D60();
    }
  }

  else
  {
    sub_18B012FDC(v10);
  }

  v7 = type metadata accessor for PSSpecifierButtonContentViewModel();
  swift_allocObject();
  v8 = a1;
  v9 = sub_18B0DC2E0(v8);

  v11 = v7;
  v10[0] = v9;
  swift_beginAccess();

  sub_18B0142BC(v10, v2 + v4);
  swift_endAccess();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2B48);
  v12 = sub_18B0DE9C0(&qword_1EA9B0E98, &qword_1EA9B2B48);
  __swift_allocate_boxed_opaque_existential_1(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9B2B50);
  sub_18B0E6DA8();
  sub_18B0F4F30();
  MEMORY[0x18CFEE4A0](v10);
}

uint64_t sub_18B0E6718@<X0>(void *a1@<X8>)
{

  sub_18B0F50B0();
  v2 = [objc_opt_self() appearance];
  v3 = [v2 buttonTextColor];

  if (v3)
  {
    v4 = sub_18B0F5030();
  }

  else
  {
    v4 = 0;
  }

  result = swift_getKeyPath();
  *a1 = v6;
  a1[1] = v7;
  a1[2] = result;
  a1[3] = v4;
  return result;
}