uint64_t __NanoPreferencesSyncLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  NanoPreferencesSyncLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __CloudSettingsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CloudSettingsLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getMCKeyboardSettingsChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCKeyboardSettingsChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCKeyboardSettingsChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMCProfileListChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCProfileListChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCProfileListChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSecTaskCreateFromSelfSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SecurityLibrary();
  result = dlsym(v2, "SecTaskCreateFromSelf");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSecTaskCreateFromSelfSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSecTaskCopySigningIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SecurityLibrary();
  result = dlsym(v2, "SecTaskCopySigningIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSecTaskCopySigningIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SecurityLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SecurityLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __IntlPreferencesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IntlPreferencesLibraryCore_frameworkLibrary = result;
  return result;
}

void ___preferencesClientDispatchQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.TextInput.preferences-client", v2);
  v1 = _preferencesClientDispatchQueue___xpc_queue;
  _preferencesClientDispatchQueue___xpc_queue = v0;
}

uint64_t isH13ANEPresentOnIOS()
{
  if (isH13ANEPresentOnIOS_onceToken != -1)
  {
    dispatch_once(&isH13ANEPresentOnIOS_onceToken, &__block_literal_global_829);
  }

  return isH13ANEPresentOnIOS_hasH13ANE;
}

uint64_t __isH13ANEPresentOnIOS_block_invoke()
{
  result = MGIsQuestionValid();
  if (result)
  {
    result = MGGetSInt64Answer();
    isH13ANEPresentOnIOS_hasH13ANE = result > 31;
  }

  return result;
}

id asset_status_manager_log()
{
  if (asset_status_manager_log_once_token != -1)
  {
    dispatch_once(&asset_status_manager_log_once_token, &__block_literal_global_118);
  }

  v1 = asset_status_manager_log_log;

  return v1;
}

uint64_t __asset_status_manager_log_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "assetStatusManager");
  v1 = asset_status_manager_log_log;
  asset_status_manager_log_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __TIGetUseTestFilesForAssetDownloadingTestingValue_block_invoke()
{
  v0 = +[TIPreferencesController sharedPreferencesController];
  [v0 _configureKey:@"UseTestFilesForAssetDownloadingTesting" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

void routeCounterChangeThroughCoreAnalytics(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 counterName];

  if (v4)
  {
    v5 = [v3 inputMode];

    v6 = IXADefaultLogFacility();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      if (v7)
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = [v3 counterName];
        v13 = [v11 stringWithFormat:@"%s TIStatistic Counter: %s=%lld", "routeCounterChangeThroughCoreAnalytics", objc_msgSend(v12, "UTF8String"), a2];
        *buf = 138412290;
        v18 = v13;
        _os_log_debug_impl(&dword_1863F7000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v8 = +[TIStatisticChangeCache sharedInstance];
      v9 = [v3 counterName];
      v10 = [v3 inputMode];
      [v8 addValue:a2 toStatisticWithName:v9 andInputMode:v10];
    }

    else
    {
      if (v7)
      {
        v14 = MEMORY[0x1E696AEC0];
        v15 = [v3 counterName];
        v16 = [v14 stringWithFormat:@"%s TIStatistic Adhoc: %s=%lld", "routeCounterChangeThroughCoreAnalytics", objc_msgSend(v15, "UTF8String"), a2];
        *buf = 138412290;
        v18 = v16;
        _os_log_debug_impl(&dword_1863F7000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v8 = +[TIAdhocEventDispatcher sharedInstance];
      v9 = [v3 counterName];
      [v8 dispatchEventForStatisticWithName:v9 andValue:a2];
    }
  }
}

void TIStatisticScalarAddValue(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 aggdName];

    if (v5)
    {
      v6 = IXADefaultLogFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = [v4 aggdName];
        v11 = [v9 stringWithFormat:@"%s TIStatistic Aggd: %s=%lld", "TIStatisticScalarAddValue", objc_msgSend(v10, "UTF8String"), a2];
        *buf = 138412290;
        v13 = v11;
        _os_log_debug_impl(&dword_1863F7000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v7 = +[TIAggdReporter sharedAggdReporter];
      v8 = [v4 aggdName];
      [v7 addValue:a2 forKey:v8];
    }

    routeCounterChangeThroughCoreAnalytics(v4, a2);
  }
}

void TIStatisticScalarSubtractValue(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 aggdName];

    if (v5)
    {
      v6 = IXADefaultLogFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = [v4 aggdName];
        v11 = [v9 stringWithFormat:@"%s TIStatistic Aggd: %s=%lld", "TIStatisticScalarSubtractValue", objc_msgSend(v10, "UTF8String"), a2];
        *buf = 138412290;
        v13 = v11;
        _os_log_debug_impl(&dword_1863F7000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v7 = +[TIAggdReporter sharedAggdReporter];
      v8 = [v4 aggdName];
      [v7 subtractValue:a2 forKey:v8];
    }

    routeCounterChangeThroughCoreAnalytics(v4, -a2);
  }
}

void TIStatisticScalarIncrement(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 aggdName];

    if (v3)
    {
      v4 = IXADefaultLogFacility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v7 = MEMORY[0x1E696AEC0];
        v8 = [v2 aggdName];
        v9 = [v7 stringWithFormat:@"%s TIStatistic Aggd: %s", "TIStatisticScalarIncrement", objc_msgSend(v8, "UTF8String")];
        *buf = 138412290;
        v11 = v9;
        _os_log_debug_impl(&dword_1863F7000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = +[TIAggdReporter sharedAggdReporter];
      v6 = [v2 aggdName];
      [v5 incrementKey:v6];
    }

    routeCounterChangeThroughCoreAnalytics(v2, 1);
  }
}

void TIStatisticScalarDecrement(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 aggdName];

    if (v3)
    {
      v4 = IXADefaultLogFacility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v7 = MEMORY[0x1E696AEC0];
        v8 = [v2 aggdName];
        v9 = [v7 stringWithFormat:@"%s TIStatistic Aggd: %s", "TIStatisticScalarDecrement", objc_msgSend(v8, "UTF8String")];
        *buf = 138412290;
        v11 = v9;
        _os_log_debug_impl(&dword_1863F7000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v5 = +[TIAggdReporter sharedAggdReporter];
      v6 = [v2 aggdName];
      [v5 decrementKey:v6];
    }

    routeCounterChangeThroughCoreAnalytics(v2, -1);
  }
}

void TIStatisticDistributionPushValue(void *a1, double a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 aggdName];

    if (v5)
    {
      v6 = IXADefaultLogFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = [v4 aggdName];
        v11 = [v9 stringWithFormat:@"%s TIStatistic Aggd: %s=%f", "TIStatisticDistributionPushValue", objc_msgSend(v10, "UTF8String"), *&a2];
        *buf = 138412290;
        v13 = v11;
        _os_log_debug_impl(&dword_1863F7000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v7 = +[TIAggdReporter sharedAggdReporter];
      v8 = [v4 aggdName];
      [v7 pushValue:v8 forKey:a2];
    }
  }
}

id TIStatisticGetKeyForInputMode(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = TISGetSafeInputModeIdentifier(v4);
  if ([v5 length])
  {
    v6 = _GetPrefixForDomain();
    v7 = [v6 stringByAppendingFormat:@".%@.%@", v3, v5];

    v8 = [TIStatisticKey statisticKeyWithAggdName:v7 andCounterName:v3 andInputMode:v4];
  }

  else
  {
    v8 = TIStatisticGetKey(v3);
  }

  return v8;
}

__CFString *TISGetSafeInputModeIdentifier(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = TISGetSafeInputModeIdentifier___identifierToSafeIdentifier;
    if (!TISGetSafeInputModeIdentifier___identifierToSafeIdentifier)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v4 = TISGetSafeInputModeIdentifier___identifierToSafeIdentifier;
      TISGetSafeInputModeIdentifier___identifierToSafeIdentifier = v3;

      v2 = TISGetSafeInputModeIdentifier___identifierToSafeIdentifier;
    }

    v5 = [v2 objectForKey:v1];
    if (v5)
    {
      goto LABEL_13;
    }

    v6 = TIInputModeGetLanguageWithRegion(v1);
    v7 = _GetStringByReplacingInvalidCharactersWithUnderscores(v6);

    v8 = TIInputModeGetComponentsFromIdentifier(v1);
    v9 = [v8 objectForKey:@"sw"];
    v10 = _GetStringByReplacingInvalidCharactersWithUnderscores(v9);

    v11 = [v8 objectForKey:@"hw"];
    v12 = _GetStringByReplacingInvalidCharactersWithUnderscores(v11);

    if ([v7 length] && objc_msgSend(v10, "length"))
    {
      if (![v12 length])
      {
        v13 = v10;

        v12 = v13;
      }

      v5 = [v7 stringByAppendingFormat:@".%@.%@", v10, v12];
      [TISGetSafeInputModeIdentifier___identifierToSafeIdentifier setObject:v5 forKey:v1];
      v14 = 1;
    }

    else
    {
      v5 = 0;
      v14 = 0;
    }

    if (v14)
    {
LABEL_13:
      v5 = v5;
      v15 = v5;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = &stru_1EF56D550;
  }

  return v15;
}

id _GetStringByReplacingInvalidCharactersWithUnderscores(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = _GetInvalidInputModeIdentifierCharacterSet___invalidCharacterSet;
    if (!_GetInvalidInputModeIdentifierCharacterSet___invalidCharacterSet)
    {
      v3 = [MEMORY[0x1E696AD48] characterSetWithCharactersInString:@"_"];
      [v3 addCharactersInRange:{97, 26}];
      [v3 addCharactersInRange:{65, 26}];
      [v3 addCharactersInRange:{48, 10}];
      [v3 invert];
      v4 = _GetInvalidInputModeIdentifierCharacterSet___invalidCharacterSet;
      _GetInvalidInputModeIdentifierCharacterSet___invalidCharacterSet = v3;

      v2 = _GetInvalidInputModeIdentifierCharacterSet___invalidCharacterSet;
    }

    v5 = v2;
    if ([v1 rangeOfCharacterFromSet:v5] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v1;
    }

    else
    {
      v6 = [v1 _stringByReplacingCharactersInSet:v5 withCharacter:95];
    }

    v7 = v6;
  }

  else
  {
    v7 = v1;
  }

  return v7;
}

id TIStatisticGetAutocorrectionKeyForInputMode(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"%@.%@", a2, a1];
  v8 = TIStatisticGetKeyForInputMode(v7, v6);

  return v8;
}

id TIStatisticGetKeyForInputStringCount(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"%@.%@.%@", @"com.apple.inputStringCount", v4, a1];
  v6 = [TIStatisticKey statisticKeyWithAggdName:v5 andCounterName:0 andInputMode:v4];

  return v6;
}

void ___activeInputStringCountKey_block_invoke()
{
  v0 = CFPreferencesCopyValue(@"kbInputStringCount", @"com.apple.da", @"mobile", *MEMORY[0x1E695E8B0]);
  if ([v0 unsignedIntValue])
  {
    _activeInputStringCountKey__logIterationLimit = [v0 unsignedIntValue];
  }
}

void TIStatisticScalarIncrementInputStringCount(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  if (_activeInputStringCountKey_onceToken != -1)
  {
    dispatch_once(&_activeInputStringCountKey_onceToken, &__block_literal_global_9997);
  }

  v4 = _activeInputStringCountKey__logIterationLimit;
  if (arc4random() % _activeInputStringCountKey__logIterationLimit == v4 >> 1)
  {
    v5 = TIStatisticGetKeyForInputStringCount(v6, v3);
    TIStatisticScalarIncrement(v5);
  }
}

void TIStatisticScalarIncrementAutocorrectionKey(void *a1, int a2, void *a3)
{
  v22 = a1;
  v5 = a3;
  if (a2)
  {
    v7 = TIStatisticGetAutocorrectionKeyForInputMode(v22, @"autocorrection", v5);
    TIStatisticScalarIncrement(v7);

    if ((a2 & 2) == 0)
    {
LABEL_3:
      if ((a2 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((a2 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = TIStatisticGetAutocorrectionKeyForInputMode(v22, @"autocorrection.capitalization", v5);
  TIStatisticScalarIncrement(v8);

  if ((a2 & 4) == 0)
  {
LABEL_4:
    if ((a2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = TIStatisticGetAutocorrectionKeyForInputMode(v22, @"autocorrection.diacritic", v5);
  TIStatisticScalarIncrement(v9);

  if ((a2 & 8) == 0)
  {
LABEL_5:
    if ((a2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = TIStatisticGetAutocorrectionKeyForInputMode(v22, @"autocorrection.prediction", v5);
  TIStatisticScalarIncrement(v10);

  if ((a2 & 0x10) == 0)
  {
LABEL_6:
    if ((a2 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = TIStatisticGetAutocorrectionKeyForInputMode(v22, @"autocorrection.spacebar", v5);
  TIStatisticScalarIncrement(v11);

  if ((a2 & 0x20) == 0)
  {
LABEL_7:
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = TIStatisticGetAutocorrectionKeyForInputMode(v22, @"autocorrection.retro", v5);
  TIStatisticScalarIncrement(v12);

  if ((a2 & 0x40) == 0)
  {
LABEL_8:
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = TIStatisticGetAutocorrectionKeyForInputMode(v22, @"autocorrection.useradapted", v5);
  TIStatisticScalarIncrement(v13);

  if ((a2 & 0x100) == 0)
  {
LABEL_9:
    if ((a2 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = TIStatisticGetAutocorrectionKeyForInputMode(v22, @"autocorrection.userrecency", v5);
  TIStatisticScalarIncrement(v14);

  if ((a2 & 0x200) == 0)
  {
LABEL_10:
    if ((a2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = TIStatisticGetAutocorrectionKeyForInputMode(v22, @"autocorrection.userlearned", v5);
  TIStatisticScalarIncrement(v15);

  if ((a2 & 0x80) == 0)
  {
LABEL_11:
    if ((a2 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = TIStatisticGetAutocorrectionKeyForInputMode(v22, @"autocorrection.multiwordprediction", v5);
  TIStatisticScalarIncrement(v16);

  if ((a2 & 0x400) == 0)
  {
LABEL_12:
    if ((a2 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v17 = TIStatisticGetAutocorrectionKeyForInputMode(v22, @"autocorrection.transposition", v5);
  TIStatisticScalarIncrement(v17);

  if ((a2 & 0x800) == 0)
  {
LABEL_13:
    if ((a2 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = TIStatisticGetAutocorrectionKeyForInputMode(v22, @"autocorrection.insertKey", v5);
  TIStatisticScalarIncrement(v18);

  if ((a2 & 0x1000) == 0)
  {
LABEL_14:
    if ((a2 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = TIStatisticGetAutocorrectionKeyForInputMode(v22, @"autocorrection.skipTouch", v5);
  TIStatisticScalarIncrement(v19);

  if ((a2 & 0x4000) == 0)
  {
LABEL_15:
    if ((a2 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v20 = TIStatisticGetAutocorrectionKeyForInputMode(v22, @"autocorrection.nearTouch", v5);
  TIStatisticScalarIncrement(v20);

  if ((a2 & 0x8000) == 0)
  {
LABEL_16:
    if ((a2 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  v21 = TIStatisticGetAutocorrectionKeyForInputMode(v22, @"autocorrection.substitution", v5);
  TIStatisticScalarIncrement(v21);

  if ((a2 & 0x10000) != 0)
  {
LABEL_17:
    v6 = TIStatisticGetAutocorrectionKeyForInputMode(v22, @"autocorrection.hitTest", v5);
    TIStatisticScalarIncrement(v6);
  }

LABEL_18:
}

id TIStatisticGetKeyForCandidateAccepted(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = TISGetSafeInputModeIdentifier(v7);
  if ([v8 length])
  {
    v9 = [v6 length];
    v10 = _GetPrefixForDomain();
    v11 = v10;
    if (v9)
    {
      [v10 stringByAppendingFormat:@".%@.%@.%@", v5, v8, v6];
    }

    else
    {
      [v10 stringByAppendingFormat:@".%@.%@", v5, v8, v15];
    }
    v13 = ;

    v12 = [TIStatisticKey statisticKeyWithAggdName:v13 andCounterName:v5 andInputMode:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id TIStatisticGetKeyForCandidateAcceptedSelectedSortingMethod(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = TISGetSafeInputModeIdentifier(v6);
  if ([v7 length])
  {
    v8 = _GetPrefixForDomain();
    v9 = [v8 stringByAppendingFormat:@".%@.%lu.%@.%@", @"candidateAccepted.sortingMethod", a1, v7, v5];

    v10 = [TIStatisticKey statisticKeyWithAggdName:v9 andCounterName:0 andInputMode:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id TIStatisticGetKeyForTenKeyKeyTappedInKeyplane(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = TISGetSafeInputModeIdentifier(v4);
  if ([v5 length] && objc_msgSend(v3, "length"))
  {
    v6 = _GetPrefixForDomain();
    v7 = [v6 stringByAppendingFormat:@".%@.%@.%@", @"tenKey.keyTappedInKeyplane", v3, v5];

    v8 = [TIStatisticKey statisticKeyWithAggdName:v7 andCounterName:0 andInputMode:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id TIStatisticGetKeyForTenKeyFlick(void *a1)
{
  v1 = a1;
  v2 = TISGetSafeInputModeIdentifier(v1);
  if ([v2 length])
  {
    v3 = _GetPrefixForDomain();
    v4 = [v3 stringByAppendingFormat:@".%@.%@", @"tenKey.keyFlick", v2];

    v5 = [TIStatisticKey statisticKeyWithAggdName:v4 andCounterName:@"tenKey.keyFlick" andInputMode:v1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id TIStatisticGetKeyForTenKeyFlickPunctuation(void *a1)
{
  v1 = a1;
  v2 = TISGetSafeInputModeIdentifier(v1);
  if ([v2 length])
  {
    v3 = _GetPrefixForDomain();
    v4 = [v3 stringByAppendingFormat:@".%@.%@", @"tenKey.keyFlickPunctuation", v2];

    v5 = [TIStatisticKey statisticKeyWithAggdName:v4 andCounterName:@"tenKey.keyFlickPunctuation" andInputMode:v1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id TIStatisticGetKeyForMultilingual(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = a1;
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if (v9)
        {
          v10 = v9;
          v11 = _GetSafeString___identifierToSafeIdentifier;
          if (!_GetSafeString___identifierToSafeIdentifier)
          {
            v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v13 = _GetSafeString___identifierToSafeIdentifier;
            _GetSafeString___identifierToSafeIdentifier = v12;

            v11 = _GetSafeString___identifierToSafeIdentifier;
          }

          v14 = [v11 objectForKey:v10];
          if (!v14)
          {
            v14 = _GetStringByReplacingInvalidCharactersWithUnderscores(v10);
            [_GetSafeString___identifierToSafeIdentifier setObject:v14 forKey:v10];
          }

          if (v6)
          {
            v15 = [v6 stringByAppendingFormat:@"+%@", v14];

            v6 = v15;
          }

          else
          {
            v6 = [MEMORY[0x1E696AEC0] stringWithString:v14];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v16 = _GetPrefixForDomain();
  v17 = [v16 stringByAppendingFormat:@".%@.%@", v20, v6];

  v18 = [TIStatisticKey statisticKeyWithAggdName:v17 andCounterName:0 andInputMode:0];

  return v18;
}

void TIStatisticScalarIncrementSystemKeyboardSummoned(void *a1)
{
  v1 = TIStatisticGetKeyForInputMode(@"summonedSystemKeyboard", a1);
  TIStatisticScalarIncrement(v1);
}

void TIStatisticScalarIncrement3PKSummoned(void *a1)
{
  v3 = a1;
  if ([v3 length])
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"3PK.summonedKeyboard", v3];
    v2 = TIStatisticGetKey(v1);
    TIStatisticScalarIncrement(v2);
  }
}

id TIStatisticGetKeyForOTA(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  v9 = v8;
  if ([v6 length])
  {
    v10 = _GetStringByReplacingInvalidCharactersWithUnderscores(v6);
    v9 = [v8 stringByAppendingFormat:@".%@", v10];
  }

  if ([v7 length])
  {
    v11 = _GetStringByReplacingInvalidCharactersWithUnderscores(v7);
    v12 = [v9 stringByAppendingFormat:@".%@", v11];

    v9 = v12;
  }

  v13 = _GetPrefixForDomain();
  v14 = [v13 stringByAppendingFormat:@".%@", v9];

  v15 = [TIStatisticKey statisticKeyWithAggdName:v14 andCounterName:0 andInputMode:0];

  return v15;
}

id TIStatisticsGetKeyForGesture(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", a1, a2];
  v3 = TIStatisticGetKey(v2);

  return v3;
}

uint64_t TIStatisticsGetIsCPDiscovered()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.keyboard"];
  v1 = [v0 BOOLForKey:@"CPDidDiscover"];

  return v1;
}

uint64_t __Block_byref_object_copy__11544(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _getPreSmartSet()
{
  if (_getPreSmartSet_onceToken != -1)
  {
    dispatch_once(&_getPreSmartSet_onceToken, &__block_literal_global_32);
  }

  v1 = _getPreSmartSet__preSmartSet;

  return v1;
}

id _getPostSmartSet()
{
  if (_getPostSmartSet_onceToken != -1)
  {
    dispatch_once(&_getPostSmartSet_onceToken, &__block_literal_global_38);
  }

  v1 = _getPostSmartSet__postSmartSet;

  return v1;
}

void __TIGetFlexibleSmartWhitespaceEnabledValue_block_invoke()
{
  v0 = +[TIPreferencesController sharedPreferencesController];
  [v0 _configureKey:@"FlexibleSmartWhitespaceEnabled" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E118]];
}

void ___getPostSmartSet_block_invoke()
{
  v0 = [MEMORY[0x1E696AD48] characterSetWithCharactersInString:{@"]., :?'!%*-/}>"}]);;
  v1 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  [v0 formUnionWithCharacterSet:v1];

  [v0 addCharactersInRange:{162, 1}];
  [v0 addCharactersInRange:{170, 2}];
  [v0 addCharactersInRange:{173, 2}];
  [v0 addCharactersInRange:{176, 1}];
  [v0 addCharactersInRange:{178, 3}];
  [v0 addCharactersInRange:{185, 3}];
  [v0 addCharactersInRange:{8208, 6}];
  [v0 addCharactersInRange:{8216, 2}];
  [v0 addCharactersInRange:{8220, 2}];
  [v0 addCharactersInRange:{8224, 2}];
  [v0 addCharactersInRange:{8228, 4}];
  [v0 addCharactersInRange:{8240, 5}];
  [v0 addCharactersInRange:{8250, 4}];
  [v0 addCharactersInRange:{8262, 4}];
  [v0 addCharactersInRange:{8240, 5}];
  [v0 addCharactersInRange:{8304, 37}];
  [v0 addCharactersInRange:{4352, 256}];
  [v0 addCharactersInRange:{11904, 352}];
  [v0 addCharactersInRange:{12272, 464}];
  [v0 addCharactersInRange:{12800, 29392}];
  [v0 addCharactersInRange:{44032, 11183}];
  [v0 addCharactersInRange:{63744, 352}];
  [v0 addCharactersInRange:{65072, 32}];
  [v0 addCharactersInRange:{65280, 240}];
  [v0 addCharactersInRange:{0x20000, 42711}];
  [v0 addCharactersInRange:{194560, 542}];
  v2 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  [v0 formUnionWithCharacterSet:v2];

  v3 = _getPostSmartSet__postSmartSet;
  _getPostSmartSet__postSmartSet = v0;
}

void ___getPreSmartSet_block_invoke()
  v0 = {;
  v1 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  [v0 formUnionWithCharacterSet:v1];

  [v0 addCharactersInRange:{161, 1}];
  [v0 addCharactersInRange:{163, 3}];
  [v0 addCharactersInRange:{167, 1}];
  [v0 addCharactersInRange:{169, 1}];
  [v0 addCharactersInRange:{171, 4}];
  [v0 addCharactersInRange:{177, 1}];
  [v0 addCharactersInRange:{182, 1}];
  [v0 addCharactersInRange:{187, 1}];
  [v0 addCharactersInRange:{191, 1}];
  [v0 addCharactersInRange:{8208, 6}];
  [v0 addCharactersInRange:{8216, 8}];
  [v0 addCharactersInRange:{8226, 6}];
  [v0 addCharactersInRange:{8249, 1}];
  [v0 addCharactersInRange:{8259, 3}];
  [v0 addCharactersInRange:{8352, 22}];
  [v0 addCharactersInRange:{4352, 256}];
  [v0 addCharactersInRange:{11904, 352}];
  [v0 addCharactersInRange:{12272, 464}];
  [v0 addCharactersInRange:{12800, 29392}];
  [v0 addCharactersInRange:{44032, 11183}];
  [v0 addCharactersInRange:{63744, 352}];
  [v0 addCharactersInRange:{65072, 32}];
  [v0 addCharactersInRange:{65280, 240}];
  [v0 addCharactersInRange:{0x20000, 42711}];
  [v0 addCharactersInRange:{194560, 542}];
  v2 = _getPreSmartSet__preSmartSet;
  _getPreSmartSet__preSmartSet = v0;
}

uint64_t ___getRegularWhiteSet_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@" "];
  v1 = _getRegularWhiteSet__regularWhiteSet;
  _getRegularWhiteSet__regularWhiteSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t InputAnalyticsLibraryCore_12553()
{
  if (!InputAnalyticsLibraryCore_frameworkLibrary_12560)
  {
    InputAnalyticsLibraryCore_frameworkLibrary_12560 = _sl_dlopen();
  }

  return InputAnalyticsLibraryCore_frameworkLibrary_12560;
}

Class __getIAUtilityClass_block_invoke(uint64_t a1)
{
  InputAnalyticsLibraryCore_12553();
  result = objc_getClass("IAUtility");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAUtilityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __InputAnalyticsLibraryCore_block_invoke_12561()
{
  result = _sl_dlopen();
  InputAnalyticsLibraryCore_frameworkLibrary_12560 = result;
  return result;
}

id TIImageCacheOSLogFacility()
{
  if (TIImageCacheOSLogFacility_onceToken != -1)
  {
    dispatch_once(&TIImageCacheOSLogFacility_onceToken, &__block_literal_global_12809);
  }

  v1 = TIImageCacheOSLogFacility_logFacility;

  return v1;
}

uint64_t __TIImageCacheOSLogFacility_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "KBDTIImageCache");
  v1 = TIImageCacheOSLogFacility_logFacility;
  TIImageCacheOSLogFacility_logFacility = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t SecurityLibrary_12856()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SecurityLibraryCore_frameworkLibrary_12867)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SecurityLibraryCore_block_invoke_12868;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E6F4D920;
    v5 = 0;
    SecurityLibraryCore_frameworkLibrary_12867 = _sl_dlopen();
    v1 = v3[0];
    v0 = SecurityLibraryCore_frameworkLibrary_12867;
    if (SecurityLibraryCore_frameworkLibrary_12867)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return SecurityLibraryCore_frameworkLibrary_12867;
}

void *__getSecTaskCreateFromSelfSymbolLoc_block_invoke_12858(uint64_t a1)
{
  v2 = SecurityLibrary_12856();
  result = dlsym(v2, "SecTaskCreateFromSelf");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSecTaskCreateFromSelfSymbolLoc_ptr_12857 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSecTaskCopySigningIdentifierSymbolLoc_block_invoke_12862(uint64_t a1)
{
  v2 = SecurityLibrary_12856();
  result = dlsym(v2, "SecTaskCopySigningIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSecTaskCopySigningIdentifierSymbolLoc_ptr_12861 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SecurityLibraryCore_block_invoke_12868()
{
  result = _sl_dlopen();
  SecurityLibraryCore_frameworkLibrary_12867 = result;
  return result;
}

uint64_t TIImageCacheVersion()
{
  if (TIImageCacheVersion_onceToken != -1)
  {
    dispatch_once(&TIImageCacheVersion_onceToken, &__block_literal_global_22_12850);
  }

  return TIImageCacheVersion_buildVersion;
}

uint64_t __Block_byref_object_copy__13059(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __shouldOptOutForSelector_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1EF7CF538];
  v1 = shouldOptOutForSelector___knownSelectors;
  shouldOptOutForSelector___knownSelectors = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
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

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}