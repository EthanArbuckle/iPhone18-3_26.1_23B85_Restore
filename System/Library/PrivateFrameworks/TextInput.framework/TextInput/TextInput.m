id managedConfigurationFeatureForPreferenceKey(void *a1)
{
  v1 = a1;
  if (([v1 isEqualToString:@"KeyboardAutocorrection"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"HWKeyboardAutocorrection"))
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v2 = getMCFeatureAutoCorrectionAllowedSymbolLoc_ptr;
    v12 = getMCFeatureAutoCorrectionAllowedSymbolLoc_ptr;
    if (getMCFeatureAutoCorrectionAllowedSymbolLoc_ptr)
    {
LABEL_6:
      _Block_object_dispose(&v9, 8);
      if (!v2)
      {
        dlerror();
        v8 = abort_report_np();
        return isManagedPreferenceKey(v8);
      }

      v4 = *v2;
      goto LABEL_8;
    }

    v3 = ManagedConfigurationLibrary();
    v10[3] = dlsym(v3, "MCFeatureAutoCorrectionAllowed");
    getMCFeatureAutoCorrectionAllowedSymbolLoc_ptr = v10[3];
LABEL_5:
    v2 = v10[3];
    goto LABEL_6;
  }

  if ([v1 isEqualToString:@"KeyboardPrediction"] || objc_msgSend(v1, "isEqualToString:", @"KeyboardInlineCompletion"))
  {
    v4 = getMCFeaturePredictiveKeyboardAllowed();
  }

  else
  {
    if ([v1 isEqualToString:@"KeyboardMathExpressionCompletion"])
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v2 = getMCFeatureKeyboardMathSolvingAllowedSymbolLoc_ptr;
      v12 = getMCFeatureKeyboardMathSolvingAllowedSymbolLoc_ptr;
      if (getMCFeatureKeyboardMathSolvingAllowedSymbolLoc_ptr)
      {
        goto LABEL_6;
      }

      v7 = ManagedConfigurationLibrary();
      v10[3] = dlsym(v7, "MCFeatureKeyboardMathSolvingAllowed");
      getMCFeatureKeyboardMathSolvingAllowedSymbolLoc_ptr = v10[3];
      goto LABEL_5;
    }

    if ([v1 isEqualToString:@"KeyboardCheckSpelling"])
    {
      v4 = getMCFeatureSpellCheckAllowed();
    }

    else if ([v1 isEqualToString:@"SmartQuotesEnabled"])
    {
      v4 = getMCFeatureSmartPunctuationAllowed();
    }

    else
    {
      if (![v1 isEqualToString:@"KeyboardContinuousPathEnabled"])
      {
        v5 = 0;
        goto LABEL_9;
      }

      v4 = getMCFeatureContinuousPathKeyboardAllowed();
    }
  }

LABEL_8:
  v5 = v4;
LABEL_9:

  return v5;
}

BOOL isManagedPreferenceKey(void *a1)
{
  v1 = managedConfigurationFeatureForPreferenceKey(a1);
  v2 = v1 != 0;

  return v2;
}

id getMCFeatureSmartPunctuationAllowed()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMCFeatureSmartPunctuationAllowedSymbolLoc_ptr;
  v9 = getMCFeatureSmartPunctuationAllowedSymbolLoc_ptr;
  if (!getMCFeatureSmartPunctuationAllowedSymbolLoc_ptr)
  {
    v1 = ManagedConfigurationLibrary();
    v7[3] = dlsym(v1, "MCFeatureSmartPunctuationAllowed");
    getMCFeatureSmartPunctuationAllowedSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    return v2;
  }

  else
  {
    dlerror();
    v4 = abort_report_np();
    return [(TISmartPunctuationController *)v4 autoQuoteType];
  }
}

id getMCFeatureSpellCheckAllowed()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMCFeatureSpellCheckAllowedSymbolLoc_ptr;
  v8 = getMCFeatureSpellCheckAllowedSymbolLoc_ptr;
  if (!getMCFeatureSpellCheckAllowedSymbolLoc_ptr)
  {
    v1 = ManagedConfigurationLibrary();
    v6[3] = dlsym(v1, "MCFeatureSpellCheckAllowed");
    getMCFeatureSpellCheckAllowedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (v0)
  {
    v2 = *v0;

    return v2;
  }

  else
  {
    dlerror();
    v4 = abort_report_np();
    return TIInputModeGetLanguage(v4);
  }
}

id TIInputModeGetLanguage(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = TIInputModeGetComponentsFromIdentifier(v1);
    v3 = *MEMORY[0x1E695D9B0];
    v4 = [v2 objectForKey:*MEMORY[0x1E695D9B0]];
    v5 = *MEMORY[0x1E695D9E8];
    v6 = [v2 objectForKey:*MEMORY[0x1E695D9E8]];
    v7 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v4, v3, 0}];
    v8 = v7;
    if (v6)
    {
      [v7 setObject:v6 forKey:v5];
    }

    v9 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id TIInputModeGetComponentsFromIdentifier(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    os_unfair_lock_lock(&_get_components_lock);
    p_cache = TIKeyboardInputManagerState.cache;
    v3 = TIInputModeGetComponentsFromIdentifier___componentsCache;
    if (!TIInputModeGetComponentsFromIdentifier___componentsCache)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v5 = TIInputModeGetComponentsFromIdentifier___componentsCache;
      TIInputModeGetComponentsFromIdentifier___componentsCache = v4;

      v3 = TIInputModeGetComponentsFromIdentifier___componentsCache;
    }

    v6 = [v3 objectForKey:v1];
    if (v6)
    {
      v7 = v6;
      os_unfair_lock_unlock(&_get_components_lock);
      v8 = v7;
    }

    else
    {
      v9 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v1];
      v10 = [v1 rangeOfString:@"@"];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL || (v11 = v10, v10 >= [v1 length]))
      {
        v35 = v9;
      }

      else
      {
        v33 = v9;
        v34 = v1;
        v35 = [v9 mutableCopy];
        v12 = [v1 substringFromIndex:v11 + 1];
        v13 = [v12 componentsSeparatedByString:@""];;

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v37;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v37 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v36 + 1) + 8 * i);
              if (![v19 hasPrefix:@"sw="] || (v20 = @"sw", objc_msgSend(v19, "length") <= 3))
              {
                if (![v19 hasPrefix:@"hw="] || (v20 = @"hw", objc_msgSend(v19, "length") <= 3))
                {
                  if (!_os_feature_enabled_impl())
                  {
                    continue;
                  }

                  if (![v19 hasPrefix:@"ml="])
                  {
                    continue;
                  }

                  v20 = @"ml";
                  if ([v19 length] < 4)
                  {
                    continue;
                  }
                }
              }

              v21 = [v19 substringFromIndex:3];
              [v35 setObject:v21 forKey:v20];
            }

            v16 = [v14 countByEnumeratingWithState:&v36 objects:v40 count:16];
          }

          while (v16);
        }

        v1 = v34;
        p_cache = (TIKeyboardInputManagerState + 16);
      }

      if (([v1 hasPrefix:@"zh_Han"] & 1) != 0 || objc_msgSend(v1, "hasPrefix:", @"yue_Han"))
      {
        v22 = [MEMORY[0x1E695DF90] dictionary];
        v23 = [v35 objectForKey:@"sw"];
        v24 = [v35 objectForKey:@"hw"];
        if (v23)
        {
          [v22 setObject:v23 forKey:@"sw"];
        }

        if (v24)
        {
          [v22 setObject:v24 forKey:@"hw"];
        }

        v25 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"_-@@"];
        v26 = [v1 componentsSeparatedByCharactersInSet:v25];

        v27 = [v26 objectAtIndex:0];
        [v22 setObject:v27 forKey:*MEMORY[0x1E695D9B0]];

        v28 = [v26 objectAtIndex:1];
        [v22 setObject:v28 forKey:*MEMORY[0x1E695D978]];

        if ([v26 count] >= 3)
        {
          v29 = [v26 objectAtIndex:2];
          [v22 setObject:v29 forKey:*MEMORY[0x1E695DA10]];
        }
      }

      else
      {
        v22 = [v35 mutableCopy];
        v31 = *MEMORY[0x1E695DA10];
        v32 = [v22 objectForKey:*MEMORY[0x1E695DA10]];
        v23 = TIInputModeGetNormalizedVariant(v32);

        if ([v23 length])
        {
          [v22 setValue:v23 forKey:v31];
        }
      }

      [p_cache[472] setObject:v22 forKey:v1];
      os_unfair_lock_unlock(&_get_components_lock);
      v8 = v22;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

NSString *getMCFeaturePredictiveKeyboardAllowed()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getMCFeaturePredictiveKeyboardAllowedSymbolLoc_ptr;
  v9 = getMCFeaturePredictiveKeyboardAllowedSymbolLoc_ptr;
  if (!getMCFeaturePredictiveKeyboardAllowedSymbolLoc_ptr)
  {
    v1 = ManagedConfigurationLibrary();
    v7[3] = dlsym(v1, "MCFeaturePredictiveKeyboardAllowed");
    getMCFeaturePredictiveKeyboardAllowedSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    return v2;
  }

  else
  {
    dlerror();
    v4 = abort_report_np();
    return [(TIKeyboardState *)v4 inputMode];
  }
}

id TIInputModeGetNormalizedIdentifierFromComponents(void *a1)
{
  v1 = *MEMORY[0x1E695D9B0];
  v2 = a1;
  v3 = [v2 valueForKey:v1];
  v4 = [v2 valueForKey:*MEMORY[0x1E695D978]];
  v5 = [v2 valueForKey:*MEMORY[0x1E695D9E8]];
  v6 = [v2 valueForKey:*MEMORY[0x1E695DA10]];

  v7 = TIInputModeGetNormalizedVariant(v6);

  if (!v7)
  {
    if (v5)
    {
      v9 = MEMORY[0x1E696AEC0];
      v14 = v5;
    }

    else
    {
      v9 = MEMORY[0x1E696AEC0];
      if (!v4)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v3, v12, v15];
        goto LABEL_14;
      }

      v14 = v4;
    }

    [v9 stringWithFormat:@"%@_%@", v3, v14, v15];
    goto LABEL_14;
  }

  if (v5)
  {
    v8 = MEMORY[0x1E696AEC0];
    v13 = v5;
    v16 = v7;
LABEL_8:
    [v8 stringWithFormat:@"%@_%@-%@", v3, v13, v16];
    goto LABEL_14;
  }

  v8 = MEMORY[0x1E696AEC0];
  if (v4)
  {
    v13 = v4;
    v16 = v7;
    goto LABEL_8;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v3, v7, v15];
  v10 = LABEL_14:;

  return v10;
}

id TIInputModeGetNormalizedVariant(void *a1)
{
  v1 = a1;
  if (TIInputModeGetNormalizedVariant___onceToken != -1)
  {
    dispatch_once(&TIInputModeGetNormalizedVariant___onceToken, &__block_literal_global_2004);
  }

  v2 = v1;
  if ([v1 length])
  {
    v2 = v1;
    if (([TIInputModeGetNormalizedVariant___variantsToKeepCapitalized containsObject:v1] & 1) == 0)
    {
      v2 = [v1 capitalizedString];
    }
  }

  return v2;
}

id TIGetInputModeProperties(void *a1)
{
  v1 = a1;
  if (TIGetInputModeProperties_once != -1)
  {
    dispatch_once(&TIGetInputModeProperties_once, &__block_literal_global_348);
  }

  os_unfair_lock_lock(&_get_input_mode_properties_lock);
  v2 = [__inputModeProperties objectForKey:v1];
  if (!v2)
  {
    v3 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"_-@@"];
    v4 = [v1 componentsSeparatedByCharactersInSet:v3];
    v5 = [v4 firstObject];

    v6 = _UIKeyboardBundleInfoWithKey(v5, @"UIKeyboardSupportedInputModes");
    v2 = [v6 objectForKey:v1];
    if (v2)
    {
      [__inputModeProperties setObject:v2 forKey:v1];
    }
  }

  os_unfair_lock_unlock(&_get_input_mode_properties_lock);

  return v2;
}

id TIInputModeGetNormalizedIdentifier(void *a1)
{
  if (a1)
  {
    v1 = TIInputModeGetComponentsFromIdentifier(a1);
    v2 = TIInputModeGetNormalizedIdentifierFromComponents(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id TINumberPadGetDisplayStringForDigit(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localeIdentifier];
  v5 = TINumberPadDisplayMappings(v4);
  v6 = [v5 objectForKey:v3];

  return v6;
}

id TINumberPadDisplayMappings(void *a1)
{
  v1 = TISupportedLocaleIdentifierFromLocaleIdentifier(a1);
  if (v1 == TINumberPadDisplayMappings_lastLocaleIdentifier)
  {
    v11 = TINumberPadDisplayMappings_numberPadDisplayMappings;
  }

  else
  {
    if (!TINumberPadDisplayMappings_numberPadDisplayMappings)
    {
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v3 = TINumberPadDisplayMappings_numberPadDisplayMappings;
      TINumberPadDisplayMappings_numberPadDisplayMappings = v2;
    }

    v4 = TILoadMergedKeyboardPlistForInputMode(v1, -1);
    for (i = 1; i != 10; ++i)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", i];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UI-NumberPad-%@", v6];
      v8 = [v4 objectForKey:v7];

      v9 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v10 = [v8 stringByTrimmingCharactersInSet:v9];
      [TINumberPadDisplayMappings_numberPadDisplayMappings setObject:v10 forKeyedSubscript:v6];
    }

    objc_storeStrong(&TINumberPadDisplayMappings_lastLocaleIdentifier, v1);
    v11 = [TINumberPadDisplayMappings_numberPadDisplayMappings copy];
  }

  return v11;
}

id kac_get_log()
{
  if (kac_get_log_onceToken != -1)
  {
    dispatch_once(&kac_get_log_onceToken, &__block_literal_global_8696);
  }

  v1 = kac_get_log_log;

  return v1;
}

uint64_t __kac_get_log_block_invoke()
{
  kac_get_log_log = os_log_create("com.apple.TextInput", "KeyboardSignposts");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t ManagedConfigurationLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ManagedConfigurationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E6F4D4A8;
    v5 = 0;
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = ManagedConfigurationLibraryCore_frameworkLibrary;
    if (ManagedConfigurationLibraryCore_frameworkLibrary)
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

  return ManagedConfigurationLibraryCore_frameworkLibrary;
}

void __IsLargeIPad_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v5 = CFDictionaryGetValue(v0, @"ArtworkDeviceSubType");
    if (v5)
    {
      v2 = [v5 intValue];
      v4 = v2 == 2732 || v2 == 2752;
      IsLargeIPad_isLarge = v4;
    }

    CFRelease(v1);
  }
}

void ___tiShouldSkipMCObservation_block_invoke()
{
  SecurityLibrary();
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v0 = getSecTaskCreateFromSelfSymbolLoc_ptr;
  v12 = getSecTaskCreateFromSelfSymbolLoc_ptr;
  if (!getSecTaskCreateFromSelfSymbolLoc_ptr)
  {
    v1 = SecurityLibrary();
    v10[3] = dlsym(v1, "SecTaskCreateFromSelf");
    getSecTaskCreateFromSelfSymbolLoc_ptr = v10[3];
    v0 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v0)
  {
    goto LABEL_12;
  }

  v2 = v0(0);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getSecTaskCopySigningIdentifierSymbolLoc_ptr;
  v12 = getSecTaskCopySigningIdentifierSymbolLoc_ptr;
  if (!getSecTaskCopySigningIdentifierSymbolLoc_ptr)
  {
    v5 = SecurityLibrary();
    v10[3] = dlsym(v5, "SecTaskCopySigningIdentifier");
    getSecTaskCopySigningIdentifierSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
LABEL_12:
    dlerror();
    v7 = abort_report_np();
    [(_TIPreferenceDomain *)v7 notification];
    return;
  }

  v6 = v4(v3, 0);
  if (v6)
  {
    _tiShouldSkipMCObservation__result = [@"com.apple.checkpointd" isEqualToString:v6];
  }

  CFRelease(v3);
}

uint64_t __TISolariumEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  TISolariumEnabled_result = result;
  return result;
}

uint64_t SecurityLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SecurityLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SecurityLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E6F4D490;
    v5 = 0;
    SecurityLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = SecurityLibraryCore_frameworkLibrary;
    if (SecurityLibraryCore_frameworkLibrary)
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

  return SecurityLibraryCore_frameworkLibrary;
}

uint64_t __TIInputModeGetNormalizedVariant_block_invoke()
{
  TIInputModeGetNormalizedVariant___variantsToKeepCapitalized = [MEMORY[0x1E695DFD8] setWithArray:&unk_1EF7CB230];

  return MEMORY[0x1EEE66BB8]();
}

__CFString *preferenceKeyForEnumKey(int a1)
{
  v1 = 0;
  switch(a1)
  {
    case 0:
      v1 = @"AppleKeyboards";
      goto LABEL_85;
    case 1:
      v1 = @"AppleKeyboardsExpanded";
      goto LABEL_85;
    case 2:
      v1 = @"AppleKeyboardsIncludeIntl";
      goto LABEL_85;
    case 3:
      v1 = @"AppleLocale";
      goto LABEL_85;
    case 4:
      v1 = @"AppleLanguages";
      goto LABEL_85;
    case 7:
      v1 = @"KeyboardAssistant";
      goto LABEL_85;
    case 8:
      v1 = @"KeyboardAutocorrection";
      goto LABEL_85;
    case 9:
      v1 = @"KeyboardAutocapitalization";
      goto LABEL_85;
    case 10:
      v1 = @"KeyboardCheckSpelling";
      goto LABEL_85;
    case 11:
      v1 = @"KeyboardPeriodShortcut";
      goto LABEL_85;
    case 12:
      v1 = @"KeyboardCapsLock";
      goto LABEL_85;
    case 13:
      v1 = @"KeyboardLastUsed";
      goto LABEL_85;
    case 14:
      v1 = @"KeyboardsCurrentAndNext";
      goto LABEL_85;
    case 15:
      v1 = @"KeyboardLastUsedForLanguage";
      goto LABEL_85;
    case 16:
      v1 = @"KeyboardLayoutLastUsedForKeyboard";
      goto LABEL_85;
    case 17:
      v1 = @"KeyboardLastChosen";
      goto LABEL_85;
    case 19:
      v1 = @"KeyboardHardwareKeyboardsSeen";
      goto LABEL_85;
    case 20:
      v1 = @"HardwareKeyboardLastSeen";
      goto LABEL_85;
    case 21:
      v1 = @"SoftwareKeyboardShownByTouch";
      goto LABEL_85;
    case 22:
      v1 = @"AutomaticMinimizationEnabled";
      goto LABEL_85;
    case 23:
      v1 = @"UIKeyboardPersistentVerticalOffset";
      goto LABEL_85;
    case 24:
      v1 = @"UIKeyboardPersistentHorizontalOffset";
      goto LABEL_85;
    case 25:
      v1 = @"UIKeyboardPersistentSplitProgress";
      goto LABEL_85;
    case 26:
      v1 = @"UIKeyboardPersistentSplitLock";
      goto LABEL_85;
    case 27:
      v1 = @"UIKeyboardDidShowInternationalInfoIntroduction";
      goto LABEL_85;
    case 28:
      v1 = @"EmojiDefaultsKey";
      break;
    case 33:
      v1 = @"RivenKeyboard";
      goto LABEL_85;
    case 34:
      v1 = @"KeyboardPredictionHelpMessageCount";
      goto LABEL_85;
    case 35:
      v1 = @"KeyboardShowPredictionBar";
      goto LABEL_85;
    case 36:
      v1 = @"KeyboardPrediction";
      goto LABEL_85;
    case 37:
      v1 = @"KeyboardBias";
      goto LABEL_85;
    case 38:
      v1 = @"KeyboardAllowPaddle";
      goto LABEL_85;
    case 39:
      v1 = @"KeyboardIsFloating";
      goto LABEL_85;
    case 40:
      v1 = @"KeyboardReachableFirstInteraction";
      goto LABEL_85;
    case 41:
      v1 = @"HWKeyboardAutocorrection";
      goto LABEL_85;
    case 42:
      v1 = @"HWKeyboardAutocapitalization";
      goto LABEL_85;
    case 43:
      v1 = @"HWKeyboardPeriodShortcut";
      goto LABEL_85;
    case 44:
      v1 = @"HWKeyboardGlobeAsEmojiKey";
      goto LABEL_85;
    case 45:
      v1 = @"HWKeyboardCapsLockRomanSwitch";
      goto LABEL_85;
    case 46:
      v1 = @"HWKeyboardDictationShortcut";
      goto LABEL_85;
    case 47:
      v1 = @"KeyboardUseProLayout";
      goto LABEL_85;
    case 48:
      v1 = @"ShowMemoji";
      goto LABEL_85;
    case 49:
      v1 = @"ShowStickers";
      goto LABEL_85;
    case 50:
      v1 = @"DictationKeyAlwaysEnabled";
      break;
    case 51:
      v1 = @"KeyboardPerformanceLogging";
      goto LABEL_85;
    case 52:
      v1 = @"DictationLogging";
      break;
    case 53:
      v1 = @"TypologyEnabled";
      goto LABEL_85;
    case 54:
      v1 = @"CustomerTypologyEnabledByDiagnosticExtension";
      goto LABEL_85;
    case 67:
      v1 = @"KeyboardAssetDownloadInFive";
      goto LABEL_85;
    case 69:
      v1 = @"KeyboardSwipeToTab";
      break;
    case 70:
      v1 = @"RivenLayoutSize";
      goto LABEL_85;
    case 73:
      v1 = @"ShowExtraLayouts";
      break;
    case 75:
      v1 = @"KeyboardCachingDisabled";
      break;
    case 77:
      v1 = @"HandwritingCaptureEnabled";
      break;
    case 80:
      v1 = @"KeyboardGlobeKeyExperiments";
      goto LABEL_85;
    case 83:
      v1 = @"KeyboardFloatingEnabled";
      goto LABEL_85;
    case 84:
      v1 = @"KeyboardMultilingualEnabled";
      goto LABEL_85;
    case 85:
      v1 = @"KeyboardContinuousPathEnabled";
      goto LABEL_85;
    case 86:
      v1 = @"KeyboardContinuousPathProgressiveCandidatesEnabled";
      goto LABEL_85;
    case 87:
      v1 = @"KeyboardContinuousPathCompletesWords";
      goto LABEL_85;
    case 88:
      v1 = @"KeyboardContinuousPathLanguageWeight";
      goto LABEL_85;
    case 89:
      v1 = @"KeyboardContinuousPathDeleteWholeWord";
      goto LABEL_85;
    case 90:
      v1 = @"KeyboardInsertsSpaceAfterPredictiveInput";
      goto LABEL_85;
    case 91:
      v1 = @"KeyboardContinuousPathEnabledAlgorithmTypes";
      goto LABEL_85;
    case 92:
      v1 = @"KeyboardCPCandidateCount";
      goto LABEL_85;
    case 93:
      v1 = @"KeyboardIgnoreCPConfigRequirements";
      goto LABEL_85;
    case 94:
      v1 = @"KeyboardDODMLLoggingEnabled";
      goto LABEL_85;
    case 95:
      v1 = @"KeyboardCJContinuousPathEnabled";
      goto LABEL_85;
    case 96:
      v1 = @"TypoTrackerButton";
      break;
    case 100:
      v1 = @"FuzzyPinyin";
      goto LABEL_85;
    case 101:
      v1 = @"SuchengCangjie";
      goto LABEL_85;
    case 102:
      v1 = @"FuzzyPinyinPairs";
      goto LABEL_85;
    case 103:
      v1 = @"SpaceConfirmation";
      goto LABEL_85;
    case 105:
      v1 = @"DictationTipLastShownDate";
      goto LABEL_85;
    case 106:
      v1 = @"DictationTipsDisplayCountLimit";
      goto LABEL_85;
    case 107:
      v1 = @"DictationReplacementCommandTipShownCount";
      goto LABEL_85;
    case 108:
      v1 = @"DictationDeletionCommandTipShownCount";
      goto LABEL_85;
    case 109:
      v1 = @"DictationInsertionCommandTipShownCount";
      goto LABEL_85;
    case 110:
      v1 = @"DictationEmojiCommandTipShownCount";
      goto LABEL_85;
    case 111:
      v1 = @"DictationSelectionCommandTipShownCount";
      goto LABEL_85;
    case 112:
      v1 = @"DictationStopCommandTipShownCount";
      goto LABEL_85;
    case 113:
      v1 = @"DictationModelessInputTipShownCount";
      goto LABEL_85;
    case 114:
      v1 = @"ActiveMultilingualKeyboardDictationMappings";
LABEL_85:
      v2 = v1;
      break;
    default:
      break;
  }

  return v1;
}

id TIInputModeGetLanguageWithRegion(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-@"];
  v3 = [v1 rangeOfCharacterFromSet:v2 options:2];

  v4 = v1;
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v1 substringToIndex:v3];
  }

  return v4;
}

uint64_t __TIGetInputModeProperties_block_invoke()
{
  __inputModeProperties = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

id _UIKeyboardBundleInfoWithKey(void *a1, void *a2)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = [@"InputMode_" stringByAppendingString:v3];
    v6 = [v5 stringByAppendingPathExtension:@"plist"];

    v7 = [&unk_1EF7DC160 objectForKey:v6];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKey:v4];
    }

    else
    {
      v10 = TIBundlePathForInputMode(v3);
      if (v10)
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v10, v6, 0}];
        v13 = [v11 pathWithComponents:v12];

        v14 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v13 options:1 error:0];
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v16 = MEMORY[0x1E696AEC0];
          v20[0] = v10;
          v20[1] = @"Resources";
          v20[2] = v6;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
          v18 = [v16 pathWithComponents:v17];

          v15 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v18 options:1 error:0];
          v13 = v18;
        }

        [MEMORY[0x1E695DFD8] setWithObject:v4];
        _CFPropertyListCreateFiltered();
        v9 = [0 objectForKey:v4];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id TIInputModeGetVariant(void *a1)
{
  v1 = a1;
  v2 = [v1 rangeOfString:@"-" options:2];
  v3 = [v1 rangeOfString:@"@" options:2];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v1 length];
  }

  v4 = 0;
  if (v2 != 0x7FFFFFFFFFFFFFFFLL && v2 < v3)
  {
    v4 = [v1 substringWithRange:{v2 + 1, v3 - (v2 + 1)}];
  }

  return v4;
}

BOOL TIInputModeIsMultilingualOnly(void *a1)
{
  v1 = TIInputModeGetNormalizedIdentifier(a1);
  v2 = TIGetInputModeProperties(v1);
  v3 = [v2 objectForKeyedSubscript:@"UIKeyboardMultilingualOnly"];
  v4 = v3 != 0;

  return v4;
}

id TIInputModeGetMultilingualSetFromInputModesWithPreferredLanguages(void *a1, void *a2, void *a3)
{
  v83 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v67 = a3;
  v6 = TIInputModeGetMultilingualID(a1);
  if (![v6 length])
  {
    v7 = MEMORY[0x1E695E0F0];
    goto LABEL_72;
  }

  v7 = [MEMORY[0x1E695DF70] array];
  v66 = v5;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v9 = +[TIInputModeController sharedInputModeController];
    v8 = [v9 enabledInputModeIdentifiers];
  }

  v10 = v8;
  v11 = +[TIInputModeController sharedInputModeController];
  v12 = [v11 supportedInputModeIdentifiers];

  v13 = [MEMORY[0x1E695DF70] array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v14 = v10;
  v15 = [v14 countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v77;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v77 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v76 + 1) + 8 * i);
        v20 = TIInputModeGetNormalizedIdentifier(v19);
        if ([v12 containsObject:v20])
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v76 objects:v82 count:16];
    }

    while (v16);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v21 = v13;
  v22 = [v21 countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v73;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v73 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v72 + 1) + 8 * j);
        v27 = TIInputModeGetMultilingualID(v26);
        if ([v6 isEqualToString:v27] && ((TIInputModeSupportsMultilingual(v26) & 1) != 0 || TIInputModeIsTransliteration(v26)))
        {
          [v7 addObject:v26];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v72 objects:v81 count:16];
    }

    while (v23);
  }

  v28 = [v7 indexOfObjectPassingTest:&__block_literal_global_521];
  if (v28 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = [v7 objectAtIndexedSubscript:v28];
    [v7 removeObjectAtIndex:v28];
    [v7 insertObject:v29 atIndex:0];
  }

  if ([v67 count])
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v7 = v7;
    v30 = [v7 countByEnumeratingWithState:&v68 objects:v80 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v69;
      while (2)
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v69 != v32)
          {
            objc_enumerationMutation(v7);
          }

          v34 = TIInputModeGetLanguage(*(*(&v68 + 1) + 8 * k));
          v35 = [v34 isEqualToString:@"vi"];

          if (v35)
          {
            v45 = v7;
            goto LABEL_57;
          }
        }

        v31 = [v7 countByEnumeratingWithState:&v68 objects:v80 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }
    }

    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v36 = v7;
      v64 = v67;
      v37 = [v36 mutableCopy];
      v38 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v36, "count")}];
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v39 = v36;
      v40 = [v39 countByEnumeratingWithState:&v76 objects:v82 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v77;
        do
        {
          for (m = 0; m != v41; ++m)
          {
            if (*v77 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = TIInputModeGetLanguageWithRegion(*(*(&v76 + 1) + 8 * m));
            [v38 addObject:v44];
          }

          v41 = [v39 countByEnumeratingWithState:&v76 objects:v82 count:16];
        }

        while (v41);
      }

      if ([v64 count])
      {
        v45 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v39, "count")}];
        while ([v38 count])
        {
          v46 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:v38 forPreferences:v64];
          v47 = [v46 firstObject];

          v48 = [v38 indexOfObject:v47];
          if (v47)
          {
            v49 = v48 == 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = 1;
          }

          if (v49)
          {

            break;
          }

          v50 = v48;
          v51 = [v37 objectAtIndexedSubscript:v48];
          [v45 addObject:v51];

          [v38 removeObjectAtIndex:v50];
          [v37 removeObjectAtIndex:v50];
        }
      }

      else
      {
        v45 = v37;
      }

LABEL_57:
      v7 = v45;
    }
  }

  if (![v7 count])
  {
    goto LABEL_71;
  }

  v65 = [v7 firstObject];
  if (TIInputModeSupportsMultilingual(v65))
  {
    if (!TIInputModeIsMultilingualOnly(v65))
    {
      v52 = TIInputModeGetRequiredMultilingualInputModes(v65);
      v53 = [v52 count];

      if (!v53)
      {
        goto LABEL_70;
      }
    }
  }

  v54 = [v7 count];
  if (!v54)
  {
    goto LABEL_70;
  }

  v55 = v54;
  v56 = 0;
  while (1)
  {
    v57 = [v7 objectAtIndexedSubscript:v56];
    if (TIInputModeSupportsMultilingual(v57))
    {
      break;
    }

LABEL_67:

LABEL_69:
    if (v55 == ++v56)
    {
      goto LABEL_70;
    }
  }

  v58 = [v7 objectAtIndexedSubscript:v56];
  if (TIInputModeIsMultilingualOnly(v58))
  {

    goto LABEL_67;
  }

  v59 = [v7 objectAtIndexedSubscript:v56];
  v60 = TIInputModeGetRequiredMultilingualInputModes(v59);
  v61 = [v60 count];

  if (v61)
  {
    goto LABEL_69;
  }

  if (v56 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v63 = [v7 objectAtIndexedSubscript:v56];
    [v7 removeObjectAtIndex:v56];
    [v7 insertObject:v63 atIndex:0];
  }

LABEL_70:

LABEL_71:
  v5 = v66;
LABEL_72:

  return v7;
}

id TIInputModeGetMultilingualID(void *a1)
{
  v1 = TIInputModeGetComponentsFromIdentifier(a1);
  v2 = [v1 objectForKey:@"ml"];

  return v2;
}

id TIGetDefaultDictationLanguagesForKeyboardLanguage(void *a1)
{
  v1 = a1;
  if (TIGetDefaultDictationLanguagesForKeyboardLanguage_once != -1)
  {
    dispatch_once(&TIGetDefaultDictationLanguagesForKeyboardLanguage_once, &__block_literal_global_364);
  }

  v2 = [TIGetDefaultDictationLanguagesForKeyboardLanguage___defaultDictationLanguageProperties objectForKey:v1];
  if (!v2)
  {
    v3 = TIInputModeGetBaseLanguage(v1);
    v4 = _UIKeyboardBundleInfoWithKey(v3, @"UIDefaultDictationLanguages");
    v5 = [v4 objectForKey:v1];
    if (v5)
    {
      v2 = v5;
    }

    else
    {
      v2 = MEMORY[0x1E695E0F0];
    }

    [TIGetDefaultDictationLanguagesForKeyboardLanguage___defaultDictationLanguageProperties setObject:v2 forKey:v1];
  }

  if (![v2 count])
  {

    v2 = 0;
  }

  return v2;
}

uint64_t __TIGetDefaultDictationLanguagesForKeyboardLanguage_block_invoke()
{
  TIGetDefaultDictationLanguagesForKeyboardLanguage___defaultDictationLanguageProperties = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

id TIInputModeGetBaseLanguage(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = TIInputModeGetComponentsFromIdentifier(v1);
    v3 = *MEMORY[0x1E695D9B0];
    v4 = [v2 objectForKey:*MEMORY[0x1E695D9B0]];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v4, v3, 0}];
    v6 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  ManagedConfigurationLibrary();
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return getMCProfileConnectionClass(v3);
  }

  return result;
}

id getMCProfileConnectionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMCProfileConnectionClass_softClass;
  v7 = getMCProfileConnectionClass_softClass;
  if (!getMCProfileConnectionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMCProfileConnectionClass_block_invoke;
    v3[3] = &unk_1E6F4D960;
    v3[4] = &v4;
    __getMCProfileConnectionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

id TIImageCachePath()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{CPSharedResourcesDirectory(), @"Library", @"Caches", @"com.apple.keyboards", 0}];
  v1 = [MEMORY[0x1E696AEC0] pathWithComponents:v0];

  return v1;
}

void __is_kbd_block_invoke()
{
  SecurityLibrary_12856();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v0 = getSecTaskCreateFromSelfSymbolLoc_ptr_12857;
  v11 = getSecTaskCreateFromSelfSymbolLoc_ptr_12857;
  if (!getSecTaskCreateFromSelfSymbolLoc_ptr_12857)
  {
    v1 = SecurityLibrary_12856();
    v9[3] = dlsym(v1, "SecTaskCreateFromSelf");
    getSecTaskCreateFromSelfSymbolLoc_ptr_12857 = v9[3];
    v0 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v0)
  {
    goto LABEL_12;
  }

  v2 = v0(0);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getSecTaskCopySigningIdentifierSymbolLoc_ptr_12861;
  v11 = getSecTaskCopySigningIdentifierSymbolLoc_ptr_12861;
  if (!getSecTaskCopySigningIdentifierSymbolLoc_ptr_12861)
  {
    v5 = SecurityLibrary_12856();
    v9[3] = dlsym(v5, "SecTaskCopySigningIdentifier");
    getSecTaskCopySigningIdentifierSymbolLoc_ptr_12861 = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v4)
  {
LABEL_12:
    dlerror();
    v7 = abort_report_np();
    TIImageCacheImagesPath(v7);
    return;
  }

  v6 = v4(v3, 0);
  if (v6)
  {
    is_kbd__result = [@"com.apple.kbd" isEqualToString:v6];
  }

  CFRelease(v3);
}

id TIImageCacheImagesPath()
{
  v0 = TIImageCachePath();
  v1 = [v0 stringByAppendingPathComponent:@"images"];

  return v1;
}

BOOL CheckSandboxAccess(void *a1)
{
  v1 = a1;
  if (is_kbd_onceToken != -1)
  {
    dispatch_once(&is_kbd_onceToken, &__block_literal_global_226);
  }

  if (is_kbd__result)
  {
    v2 = 1;
  }

  else
  {
    getpid();
    [v1 fileSystemRepresentation];
    v2 = sandbox_check() == 0;
  }

  return v2;
}

void __TIImageCacheVersion_block_invoke()
{
  v0 = MGCopyAnswerWithError();
  TIImageCacheVersion_buildVersion = [v0 hash];
}

__CFString *TICanonicalInputModeName(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = @"intl";
    goto LABEL_8;
  }

  v3 = TIInputModeGetComponentsFromIdentifier(v1);
  v4 = TIInputModeGetNormalizedIdentifierFromComponents(v3);
  v5 = [v3 objectForKey:*MEMORY[0x1E695D9E8]];
  if (!v5)
  {
    v7 = [v3 objectForKey:*MEMORY[0x1E695DA10]];

    if (v7)
    {
      goto LABEL_6;
    }

    v9 = TIGetDefaultInputModesForLanguage(v4);
    if ([v9 count])
    {
      v6 = [v9 objectAtIndex:0];
      v10 = TIInputModeGetBaseLanguage(v6);
      v11 = TIInputModeGetBaseLanguage(v2);
      v12 = [v10 isEqualToString:v11];

      if (v12)
      {
LABEL_15:

        goto LABEL_7;
      }
    }

    v6 = v2;
    goto LABEL_15;
  }

LABEL_6:
  v6 = v4;
LABEL_7:

LABEL_8:

  return v6;
}

id TIGetDefaultInputModesForLanguage(void *a1)
{
  v1 = a1;
  if (TIGetDefaultInputModesForLanguage_once != -1)
  {
    dispatch_once(&TIGetDefaultInputModesForLanguage_once, &__block_literal_global_285);
  }

  v2 = TIInputModeGetBaseLanguage(v1);
  v3 = [__defaultLanguageInputModes objectForKey:v2];
  if (!v3)
  {
    v3 = _UIKeyboardBundleInfoWithKey(v2, @"UIKeyboardDefaultLanguageInputModes");
    if (v3)
    {
      [__defaultLanguageInputModes addEntriesFromDictionary:v3];
    }
  }

  v4 = __defaultLanguageInputModes;
  v5 = [v1 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  v6 = [v4 objectForKey:v5];

  if (![v6 count])
  {
    v7 = TIInputModeGetLanguage(v1);
    v8 = [v4 objectForKey:v7];

    v6 = v8;
  }

  if (![v6 count])
  {
    v9 = TIInputModeGetBaseLanguage(v1);
    v10 = [v4 objectForKey:v9];

    v6 = v10;
  }

  if (![v6 count])
  {
    v11 = TIInputModeGetRegion(v1);
    v12 = [v4 objectForKey:v11];

    v6 = v12;
  }

  v13 = +[TIInputModeController sharedInputModeController];
  v14 = [v13 supportedInputModeIdentifiers];

  if ([v6 count])
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __TIGetDefaultInputModesForLanguage_block_invoke_2;
    v20[3] = &unk_1E6F4BE68;
    v21 = v14;
    v15 = [v6 indexesOfObjectsPassingTest:v20];
    v16 = [v6 objectsAtIndexes:v15];

    v6 = v16;
  }

  else if ([v14 containsObject:v1])
  {
    v17 = [MEMORY[0x1E695DEC8] arrayWithObject:v1];
    goto LABEL_17;
  }

  v17 = v6;
  v6 = v17;
LABEL_17:
  v18 = v17;

  return v18;
}

uint64_t __TIGetDefaultInputModesForLanguage_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = TIInputModeGetNormalizedIdentifier(a2);
  v4 = [v2 containsObject:v3];

  return v4;
}

id kace_get_log()
{
  if (kace_get_log_onceToken != -1)
  {
    dispatch_once(&kace_get_log_onceToken, &__block_literal_global_4_8700);
  }

  v1 = kace_get_log_log;

  return v1;
}

uint64_t __kace_get_log_block_invoke()
{
  kace_get_log_log = os_log_create("com.apple.TextInput", "KeyboardSignpostsEphemeral");

  return MEMORY[0x1EEE66BB8]();
}

id TIStatisticGetKey(void *a1)
{
  v1 = a1;
  v2 = _GetPrefixForDomain();
  v3 = [v2 stringByAppendingFormat:@".%@", v1];

  v4 = [TIStatisticKey statisticKeyWithAggdName:v3 andCounterName:v1 andInputMode:0];

  return v4;
}

__CFString *_GetPrefixForDomain()
{
  if (_GetPlatformAddition_onceToken != -1)
  {
    dispatch_once(&_GetPlatformAddition_onceToken, &__block_literal_global_61);
  }

  return @"com.apple.keyboard";
}

void TIStatisticScalarSetBoolean(void *a1, unsigned int a2)
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
        v7 = MEMORY[0x1E696AEC0];
        v8 = [v4 aggdName];
        v9 = [v8 UTF8String];
        v10 = "no";
        if (a2)
        {
          v10 = "yes";
        }

        v11 = [v7 stringWithFormat:@"%s TIStatistic Aggd: %s=%s", "TIStatisticScalarSetBoolean", v9, v10];
        *buf = 138412290;
        v13 = v11;
        _os_log_debug_impl(&dword_1863F7000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      TIStatisticScalarSetValue(v4, a2);
    }
  }
}

id IXADefaultLogFacility()
{
  if (IXADefaultLogFacility_onceToken != -1)
  {
    dispatch_once(&IXADefaultLogFacility_onceToken, &__block_literal_global_11);
  }

  v1 = IXADefaultLogFacility_logFacility;

  return v1;
}

void TIStatisticScalarSetValue(void *a1, uint64_t a2)
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
        v11 = [v9 stringWithFormat:@"%s TIStatistic Aggd: %s=%lld", "TIStatisticScalarSetValue", objc_msgSend(v10, "UTF8String"), a2];
        *buf = 138412290;
        v13 = v11;
        _os_log_debug_impl(&dword_1863F7000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v7 = +[TIAggdReporter sharedAggdReporter];
      v8 = [v4 aggdName];
      [v7 setValue:a2 forScalarKey:v8];
    }
  }
}

void __TIGetDefaultInputModesForLanguage_block_invoke()
{
  v12 = objc_alloc(MEMORY[0x1E695DF90]);
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"en_US", 0}];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"en_US", 0}];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"ru_RU", @"en_US", 0}];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"en_IN", @"hi", 0}];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"intl", 0}];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"en_US", 0}];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"en_US", 0}];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"ru_RU", @"en_US", 0}];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"lu_LU", 0}];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"en_US", 0}];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"en_US", 0}];
  v9 = [v12 initWithObjectsAndKeys:{v13, @"AM", v11, @"AZ", v0, @"BY", v1, @"IN", v2, @"intl", v3, @"KE", v4, @"KZ", v5, @"KY", v6, @"lu", v7, @"TJ", v8, @"UZ", 0}];
  v10 = __defaultLanguageInputModes;
  __defaultLanguageInputModes = v9;
}

uint64_t InputAnalyticsLibraryCore()
{
  if (!InputAnalyticsLibraryCore_frameworkLibrary)
  {
    InputAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return InputAnalyticsLibraryCore_frameworkLibrary;
}

void TIDispatchAsync(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __TIDispatchAsync_block_invoke;
  v7[3] = &unk_1E6F4C2B0;
  v8 = v3;
  v4 = v3;
  v5 = a1;
  v6 = MEMORY[0x1866068F0](v7);
  if (_block_count(void)::once_token != -1)
  {
    dispatch_once(&_block_count(void)::once_token, &__block_literal_global_7);
  }

  atomic_fetch_add(&_block_count(void)::count, 1uLL);
  dispatch_async(v5, v6);
}

void __TIDispatchAsync_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  if (_block_count(void)::once_token != -1)
  {
    dispatch_once(&_block_count(void)::once_token, &__block_literal_global_7);
  }

  atomic_fetch_add(&_block_count(void)::count, 0xFFFFFFFFFFFFFFFFLL);
}

id TIInputModeGetRegion(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = TIInputModeGetComponentsFromIdentifier(v1);
    v3 = [v2 objectForKey:*MEMORY[0x1E695D978]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

char *TIImageNameForItem(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = malloc_type_malloc(0x32uLL, 0x100004077774924uLL);
  if (v5)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v5 length:snprintf(v5 encoding:0x32uLL freeWhenDone:{"%lu%lu", objc_msgSend(v4, "hash"), objc_msgSend(v3, "hash")), 1, 1}];
  }

  return v5;
}

void release_munmap(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = (a2 - v5);
  munlock((a2 - v5), v5 + a3);
  munmap(v6, v5 + a3);

  free(a1);
}

uint64_t __IXADefaultLogFacility_block_invoke()
{
  IXADefaultLogFacility_logFacility = os_log_create("com.apple.TextInput", "IXADefault");

  return MEMORY[0x1EEE66BB8]();
}

id TIInputModeGetNormalizedLevelsFromComponents(void *a1)
{
  v1 = *MEMORY[0x1E695D9B0];
  v2 = a1;
  v3 = [v2 valueForKey:v1];
  v4 = *MEMORY[0x1E695D978];
  v5 = [v2 valueForKey:*MEMORY[0x1E695D978]];
  v6 = [v2 valueForKey:*MEMORY[0x1E695D9E8]];
  v7 = [v2 valueForKey:*MEMORY[0x1E695DA10]];

  v8 = [MEMORY[0x1E695DF70] arrayWithObject:v3];
  v9 = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [v9 objectForKey:v4];
  v11 = [v10 uppercaseString];

  if (([v11 isEqualToString:v5] & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v3, v11];
    [v8 addObject:v12];
  }

  if (v6)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v3, v6];
    [v8 addObject:v13];
  }

  if (v5)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v3, v5];
    [v8 addObject:v14];
  }

  if (v7)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v3, v7];
    [v8 addObject:v15];

    if (v5)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@-%@", v3, v5, v7];
      [v8 addObject:v16];
    }
  }

  return v8;
}

id TILoadMergedKeyboardPlistForLocale(void *a1, void *a2, void *a3, uint64_t a4, void *a5, int a6)
{
  v55 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a5;
  v15 = @"iPhone";
  if (a4 == 1)
  {
    v15 = @"iPad";
  }

  if (a4 == 2)
  {
    v16 = @"AppleTV";
  }

  else
  {
    v16 = v15;
  }

  if (TIDefaultKeyboardPlist_onceToken != -1)
  {
    dispatch_once(&TIDefaultKeyboardPlist_onceToken, &__block_literal_global_598);
  }

  v42 = TIDefaultKeyboardPlist_defaultPlist;
  v17 = TIInputModeGetBaseLanguage(v14);
  v18 = TIInputModeGetLanguage(v14);
  v40 = v14;
  v19 = [v14 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  v49 = TIInputModeGetLanguageWithRegion(v19);

  v43 = v18;
  if (v11)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v11, v16];
    if (v12)
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v11, v12];
    }

    else
    {
      v47 = 0;
    }

    v48 = v20;
    if (v13)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v11, v13];
      if (v24)
      {
        v45 = v24;
        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v24, v16];
        v22 = 0;
      }

      else
      {
        v45 = 0;
        v46 = 0;
        v22 = 1;
      }

      v21 = 0;
      v23 = 1;
      if (v12)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@-%@", v11, v12, v13];
        if (v25)
        {
          v44 = v25;
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v25, v16];
          v23 = 0;
        }

        else
        {
          v21 = 0;
          v44 = 0;
        }
      }

      else
      {
        v44 = 0;
      }
    }

    else
    {
      v45 = 0;
      v46 = 0;
      v21 = 0;
      v44 = 0;
      v22 = 1;
      v23 = 1;
    }
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v21 = 0;
    v44 = 0;
    v22 = 1;
    v23 = 1;
  }

  v26 = [MEMORY[0x1E695DF70] array];
  v27 = v26;
  if (a6 && v17)
  {
    [v26 addObject:v17];
  }

  if (a6 && v18 && ([v27 containsObject:v18] & 1) == 0)
  {
    [v27 addObject:v18];
  }

  if (a6 && v49 && ([v27 containsObject:v49] & 1) == 0)
  {
    [v27 addObject:v49];
  }

  if (v11 && ([v27 containsObject:v11] & 1) == 0)
  {
    [v27 addObject:v11];
  }

  if (v47 && ([v27 containsObject:v47] & 1) == 0)
  {
    [v27 addObject:v47];
  }

  if ((v22 & 1) == 0 && ([v27 containsObject:v45] & 1) == 0)
  {
    [v27 addObject:v45];
  }

  if ((v23 & 1) == 0 && ([v27 containsObject:v44] & 1) == 0)
  {
    [v27 addObject:v44];
  }

  if (v48 && ([v27 containsObject:v48] & 1) == 0)
  {
    [v27 addObject:v48];
  }

  if (v46 && ([v27 containsObject:v46] & 1) == 0)
  {
    [v27 addObject:v46];
  }

  v39 = v17;
  if (v21 && ([v27 containsObject:v21] & 1) == 0)
  {
    [v27 addObject:v21];
  }

  v28 = v13;
  v41 = v12;
  if ([v27 containsObject:@"default"] & 1) != 0 || (a6)
  {
    v29 = [v42 mutableCopy];
    [v27 removeObject:@"default"];
  }

  else
  {
    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v30 = v27;
  v31 = [v30 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v51;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v51 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v50 + 1) + 8 * i);
        v36 = TIBundlePathForInputMode(v35);
        v37 = TILoadKeyboardPlist(v35, v36);
        [v29 addEntriesFromDictionary:v37];
      }

      v32 = [v30 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v32);
  }

  return v29;
}

void __TIDefaultKeyboardPlist_block_invoke()
{
  v4 = TIGetTextInputFrameworkPath();
  v0 = TILoadKeyboardPlist(@"default", v4);
  v1 = TIDefaultKeyboardPlist_defaultPlist;
  TIDefaultKeyboardPlist_defaultPlist = v0;

  if (!TIDefaultKeyboardPlist_defaultPlist)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v3 = TIDefaultKeyboardPlist_defaultPlist;
    TIDefaultKeyboardPlist_defaultPlist = v2;
  }
}

id TIGetTextInputFrameworkPath()
{
  if (TIGetTextInputFrameworkPath_onceToken != -1)
  {
    dispatch_once(&TIGetTextInputFrameworkPath_onceToken, &__block_literal_global_549);
  }

  v1 = TIGetTextInputFrameworkPath_textInputFrameworkPath;

  return v1;
}

void __TIGetTextInputFrameworkPath_block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v0 = [v2 bundlePath];
  v1 = TIGetTextInputFrameworkPath_textInputFrameworkPath;
  TIGetTextInputFrameworkPath_textInputFrameworkPath = v0;
}

id TILoadKeyboardPlist(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Keyboard-%@.plist", v3];
    v6 = TILoadBundlePlist(v5, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id TILoadBundlePlist(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 stringByAppendingPathComponent:v3];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if (v7)
  {
    v8 = v5;
LABEL_4:
    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v8 options:1 error:0];
    if (v11)
    {
      v12 = [MEMORY[0x1E696AE40] propertyListWithData:v11 options:0 format:0 error:0];
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_9;
  }

  v9 = [v4 stringByAppendingPathComponent:@"Resources"];
  v8 = [v9 stringByAppendingPathComponent:v3];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  LODWORD(v9) = [v10 fileExistsAtPath:v8];

  if (v9)
  {
    goto LABEL_4;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

id TIBundlePathForInputMode(void *a1)
{
  v1 = a1;
  v2 = _TextInputBundlesRootForDevelopment();

  if (!v2 || (_TextInputBundlesRootForDevelopment(), v3 = objc_claimAutoreleasedReturnValue(), _GetBundlePathForInputModeWithRootDirectory(v1, v3), v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/System/Library/TextInput"];
    v4 = _GetBundlePathForInputModeWithRootDirectory(v1, v5);
  }

  return v4;
}

id _TextInputBundlesRootForDevelopment()
{
  if (_TextInputBundlesRootForDevelopment_onceToken != -1)
  {
    dispatch_once(&_TextInputBundlesRootForDevelopment_onceToken, &__block_literal_global_553);
  }

  v1 = _TextInputBundlesRootForDevelopment_bundlesRoot;

  return v1;
}

id _GetBundlePathForInputModeWithRootDirectory(void *a1, void *a2)
{
  v3 = a2;
  v4 = TIInputModeGetBaseLanguage(a1);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/TextInput_%@.bundle", v3, v4];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/TextInput_mul.bundle", v3];

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  if (v10)
  {
    v5 = v8;
LABEL_4:
    v11 = v5;
    v8 = v11;
    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

id TIGetHardwareLayoutsForInputMode(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = TIGetInputModeProperties(a1);
  v2 = [v1 objectForKey:@"HWLayouts"];

  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if ([v9 hasPrefix:{@"Group-", v14}])
        {
          if (TIGetHardwareLayoutGroups_onceToken != -1)
          {
            dispatch_once(&TIGetHardwareLayoutGroups_onceToken, &__block_literal_global_366);
          }

          v10 = TIGetHardwareLayoutGroups___layoutGroups;
          v11 = [v10 objectForKey:v9];

          [v3 addObjectsFromArray:v11];
        }

        else
        {
          [v3 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 array];

  return v12;
}

uint64_t TIInputModeIsTransliteration(void *a1)
{
  v1 = TIInputModeGetNormalizedIdentifier(a1);
  v2 = [v1 hasSuffix:@"-Translit"];

  return v2;
}

uint64_t TIIsTypeToSiriModeEnabled(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = TIInputModeGetNormalizedIdentifier(v4);
  v6 = TIGetInputModeProperties(v5);
  v7 = [v6 objectForKeyedSubscript:@"UIKeyboardTypeToSiriEnabled"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v7 BOOLValue])
  {
    v8 = [v6 objectForKeyedSubscript:@"UIKeyboardTypeToSiriUnderDevelopment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 BOOLValue];

      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v16 = 0;
    goto LABEL_21;
  }

LABEL_7:
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v10 = getAFPreferencesClass_softClass;
  v25 = getAFPreferencesClass_softClass;
  if (!getAFPreferencesClass_softClass)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __getAFPreferencesClass_block_invoke;
    v21[3] = &unk_1E6F4D960;
    v21[4] = &v22;
    __getAFPreferencesClass_block_invoke(v21);
    v10 = v23[3];
  }

  v11 = v10;
  _Block_object_dispose(&v22, 8);
  v12 = [v10 sharedPreferences];
  v13 = [v12 languageCode];

  v14 = v13;
  if ([v14 isEqualToString:@"zh-HK"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"zh_HK"))
  {
    v15 = @"yue";
  }

  else
  {
    v15 = v14;
  }

  v17 = TIInputModeGetLanguage(v15);

  v18 = TIInputModeGetLanguage(v4);
  v19 = [v18 isEqualToString:v17];

  if (v19)
  {
    if ([v3 isEqualToString:@"com.apple.siri"])
    {
      v16 = 1;
    }

    else
    {
      v16 = [v3 isEqualToString:@"com.apple.SiriNCService"];
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_21:
  return v16;
}

void TI_DEVICE_UNLOCKED_SINCE_BOOT()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  v7 = getMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  if (!getMKBDeviceUnlockedSinceBootSymbolLoc_ptr)
  {
    v1 = MobileKeyBagLibrary();
    v5[3] = dlsym(v1, "MKBDeviceUnlockedSinceBoot");
    getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    dlerror();
    v2 = abort_report_np();
    [(TITypologyStatisticComposite *)v2 .cxx_destruct];
  }
}

id TIInputModeGetSWLayout(void *a1)
{
  v1 = TIInputModeGetComponentsFromIdentifier(a1);
  v2 = [v1 objectForKey:@"sw"];

  return v2;
}

unint64_t TI_DEVICE_UNLOCKED()
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v0 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  v10 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  if (!getMKBGetDeviceLockStateSymbolLoc_ptr)
  {
    v1 = MobileKeyBagLibrary();
    v8[3] = dlsym(v1, "MKBGetDeviceLockState");
    getMKBGetDeviceLockStateSymbolLoc_ptr = v8[3];
    v0 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (v0)
  {
    v2 = v0(0);
    return !v2 || v2 == 3;
  }

  else
  {
    dlerror();
    v5 = abort_report_np();
    return [(TITextInputTraits *)v5 keyboardType];
  }
}

id TIInputModeGetFullInputModeIdentifier(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1988;
  v12 = __Block_byref_object_dispose__1989;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __TIInputModeGetFullInputModeIdentifier_block_invoke;
  v7[3] = &unk_1E6F4D960;
  v7[4] = &v8;
  v2 = MEMORY[0x1866068F0](v7);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2[2](v2);
  }

  else
  {
    TIDispatchSync(MEMORY[0x1E69E96A0], v2);
  }

  v3 = TIInputModeGetMultilingualID(v1);
  if (v3)
  {
    v4 = TIInputModeGetMultilingualSetFromInputModesWithPreferredLanguages(v1, v9[5], 0);
    v5 = [v4 componentsJoinedByString:@"|"];
  }

  else
  {
    v5 = [v1 copy];
  }

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __TIInputModeGetFullInputModeIdentifier_block_invoke(uint64_t a1)
{
  v5 = +[TIInputModeController sharedInputModeController];
  v2 = [v5 enabledInputModeIdentifiers];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __TIGetHardwareLayoutGroups_block_invoke()
{
  v0 = [&unk_1EF7DC160 objectForKey:@"HWLayoutGroups.plist"];
  v1 = TIGetHardwareLayoutGroups___layoutGroups;
  TIGetHardwareLayoutGroups___layoutGroups = v0;

  if (!TIGetHardwareLayoutGroups___layoutGroups)
  {
    v4 = TIGetTextInputFrameworkPath();
    v2 = TILoadBundlePlist(@"HWLayoutGroups.plist", v4);
    v3 = TIGetHardwareLayoutGroups___layoutGroups;
    TIGetHardwareLayoutGroups___layoutGroups = v2;
  }
}

uint64_t std::set<NSHolder<TIInputContextEntry>>::insert[abi:nn200100]<std::__tree_const_iterator<NSHolder<TIInputContextEntry>,std::__tree_node<NSHolder<TIInputContextEntry>,void *> *,long>>(uint64_t result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v19[9] = v3;
    v19[10] = v4;
    v6 = a2;
    v7 = result;
    v8 = (result + 8);
    do
    {
      v9 = v7[1];
      if (*v7 == v8)
      {
        v11 = v8;
        if (v9)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v10 = v8;
        if (v9)
        {
          do
          {
            v11 = v9;
            v9 = v9[1];
          }

          while (v9);
        }

        else
        {
          do
          {
            v11 = v10[2];
            v14 = *v11 == v10;
            v10 = v11;
          }

          while (v14);
        }

        v12 = v11[4];
        v13 = v6[4];
        if (v12)
        {
          v14 = v13 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          if (v13)
          {
            v15 = -1;
          }

          else
          {
            v15 = 0;
          }

          if (v12)
          {
            result = 1;
          }

          else
          {
            result = v15;
          }

          if ((result & 0x80000000) == 0)
          {
LABEL_25:
            result = std::__tree<NSHolder<TIInputContextEntry>>::__find_equal<NSHolder<TIInputContextEntry>>(v7, v19, v6 + 4);
            v16 = result;
            goto LABEL_26;
          }
        }

        else
        {
          result = [v12 compare:?];
          if ((result & 0x80000000) == 0)
          {
            goto LABEL_25;
          }
        }

        if (*v8)
        {
LABEL_23:
          v19[0] = v11;
          v16 = v11 + 1;
          goto LABEL_26;
        }
      }

      v19[0] = v8;
      v16 = v8;
LABEL_26:
      if (!*v16)
      {
        operator new();
      }

      v17 = v6[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v6[2];
          v14 = *v18 == v6;
          v6 = v18;
        }

        while (!v14);
      }

      v6 = v18;
    }

    while (v18 != a3);
  }

  return result;
}

uint64_t **std::__tree<NSHolder<TIInputContextEntry>>::__insert_node_at(uint64_t **result, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v4 = **result;
  if (v4)
  {
    *result = v4;
    a4 = *a3;
  }

  v5 = result[1];
  *(a4 + 24) = a4 == v5;
  if (a4 != v5)
  {
    do
    {
      v6 = a4[2];
      if (v6[3])
      {
        break;
      }

      v7 = v6[2];
      v8 = *v7;
      if (*v7 == v6)
      {
        v12 = v7[1];
        if (!v12 || (v13 = *(v12 + 24), v11 = (v12 + 24), v13 == 1))
        {
          if (*v6 == a4)
          {
            v15 = a4[2];
          }

          else
          {
            v15 = v6[1];
            v16 = *v15;
            v6[1] = *v15;
            v17 = v6;
            if (v16)
            {
              v16[2] = v6;
              v7 = v6[2];
              v17 = *v7;
            }

            v15[2] = v7;
            v7[v17 != v6] = v15;
            *v15 = v6;
            v6[2] = v15;
            v7 = v15[2];
            v8 = *v7;
          }

          *(v15 + 24) = 1;
          *(v7 + 24) = 0;
          v22 = *(v8 + 8);
          *v7 = v22;
          if (v22)
          {
            *(v22 + 16) = v7;
          }

          v23 = v7[2];
          *(v8 + 16) = v23;
          v23[*v23 != v7] = v8;
          *(v8 + 8) = v7;
          v7[2] = v8;
          break;
        }
      }

      else
      {
        if (!v8 || (v10 = *(v8 + 24), v9 = (v8 + 24), v10 == 1))
        {
          v14 = *v6;
          if (*v6 == a4)
          {
            v18 = v14[1];
            *v6 = v18;
            if (v18)
            {
              *(v18 + 16) = v6;
              v7 = v6[2];
            }

            v14[2] = v7;
            v7[*v7 != v6] = v14;
            v14[1] = v6;
            v6[2] = v14;
            v7 = v14[2];
          }

          else
          {
            v14 = a4[2];
          }

          *(v14 + 24) = 1;
          *(v7 + 24) = 0;
          v19 = v7[1];
          v20 = *v19;
          v7[1] = *v19;
          if (v20)
          {
            *(v20 + 16) = v7;
          }

          v21 = v7[2];
          v19[2] = v21;
          v21[*v21 != v7] = v19;
          *v19 = v7;
          v7[2] = v19;
          break;
        }

        v11 = v9;
      }

      *(v6 + 24) = 1;
      a4 = v7;
      *(v7 + 24) = v7 == v5;
      *v11 = 1;
    }

    while (v7 != v5);
  }

  result[2] = (result[2] + 1);
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<NSHolder<TIInputContextEntry>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<NSHolder<TIInputContextEntry>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<NSHolder<TIInputContextEntry>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<NSHolder<TIInputContextEntry>>::destroy(*a1);
    std::__tree<NSHolder<TIInputContextEntry>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__tree<NSHolder<TIInputContextEntry>>::__assign_multi<std::__tree_const_iterator<NSHolder<TIInputContextEntry>,std::__tree_node<NSHolder<TIInputContextEntry>,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v8 = v6[1];
  }

  else
  {
    v8 = v6;
  }

  if (!v8)
  {
    v16 = 0;
LABEL_22:
    std::__tree<NSHolder<TIInputContextEntry>>::destroy(v16);
    goto LABEL_23;
  }

  v9 = std::__tree<NSHolder<TIInputContextEntry>>::_DetachedTreeCache::__detach_next(v8);
  if (a2 != a3)
  {
    v10 = a2;
    do
    {
      v11 = v8;
      v8 = v9;
      objc_storeStrong(v11 + 4, v10[4]);
      leaf_high = std::__tree<NSHolder<TIInputContextEntry>>::__find_leaf_high(a1, &v17, v11 + 4);
      std::__tree<NSHolder<TIInputContextEntry>>::__insert_node_at(a1, v17, leaf_high, v11);
      if (v9)
      {
        v9 = std::__tree<NSHolder<TIInputContextEntry>>::_DetachedTreeCache::__detach_next(v9);
      }

      v13 = v10[1];
      if (v13)
      {
        do
        {
          a2 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          a2 = v10[2];
          v14 = *a2 == v10;
          v10 = a2;
        }

        while (!v14);
      }

      if (!v8)
      {
        break;
      }

      v10 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<NSHolder<TIInputContextEntry>>::destroy(v8);
  if (v9)
  {
    for (i = v9[2]; i; i = i[2])
    {
      v9 = i;
    }

    v16 = v9;
    goto LABEL_22;
  }

LABEL_23:
  if (a2 != a3)
  {
    operator new();
  }
}

void *std::__tree<NSHolder<TIInputContextEntry>>::__find_leaf_high(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (!v4)
  {
    result = (a1 + 8);
    goto LABEL_20;
  }

  do
  {
    while (1)
    {
      v5 = v4;
      v7 = *a3;
      v8 = v4[4];
      if (!*a3 || v8 == 0)
      {
        break;
      }

      if (([v7 compare:?] & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

LABEL_17:
      v4 = *v5;
      result = v5;
      if (!*v5)
      {
        goto LABEL_20;
      }
    }

    if (v8)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    if (v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    if (v11 < 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v4 = v5[1];
  }

  while (v4);
  result = v5 + 1;
LABEL_20:
  *a2 = v5;
  return result;
}

id arrayFromSet<TIInputContextEntry>(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v6 = *a1;
  v4 = a1 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    v7 = MEMORY[0x1E69E9C10];
    *&v3 = 136315138;
    v13 = v3;
    do
    {
      if (v5[4])
      {
        [v2 addObject:?];
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = v13;
        v15 = "arrayFromSet";
        _os_log_error_impl(&dword_1863F7000, v7, OS_LOG_TYPE_ERROR, "%s  arrayFromSet() skipped an NSHolder because it holds a nil object.", buf, 0xCu);
      }

      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v4);
  }

  v11 = [MEMORY[0x1E695DEC8] arrayWithArray:{v2, v13}];

  return v11;
}

id TI_filteredSetWithClass(void *a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __TI_filteredSetWithClass_block_invoke;
  v4[3] = &__block_descriptor_40_e22_B24__0__NSString_8_B16lu32l8;
  v4[4] = a2;
  v2 = [a1 objectsPassingTest:v4];

  return v2;
}

void *std::__tree<NSHolder<TIInputContextEntry>>::__find_equal<NSHolder<TIInputContextEntry>>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      v7 = v4;
      v8 = *a3;
      v9 = v4[4];
      if (*a3)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (v9)
        {
          v11 = -1;
        }

        else
        {
          v11 = 0;
        }

        if (v8)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        if (v12 < 0)
        {
          goto LABEL_14;
        }

LABEL_17:
        v13 = v7[4];
        v14 = *a3;
        if (v13)
        {
          v15 = v14 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          if (v14)
          {
            v16 = -1;
          }

          else
          {
            v16 = 0;
          }

          if (v13)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16;
          }

          if ((v17 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }
        }

        else if (([v13 compare:?] & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        v5 = v7 + 1;
        v4 = v7[1];
        if (!v4)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (([v8 compare:?] & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_14:
        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_34;
        }
      }
    }
  }

  v7 = (a1 + 8);
LABEL_34:
  *a2 = v7;
  return v5;
}

void setFromArray<TIInputContextEntry>(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v10 + 1) + 8 * v7);
        v8 = v9;
        std::__tree<NSHolder<TIInputContextEntry>>::__emplace_unique_key_args<NSHolder<TIInputContextEntry>,NSHolder<TIInputContextEntry>>(a1, &v9);

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void *std::__tree<NSHolder<TIInputContextEntry>>::__emplace_unique_key_args<NSHolder<TIInputContextEntry>,NSHolder<TIInputContextEntry>>(uint64_t a1, void **a2)
{
  result = std::__tree<NSHolder<TIInputContextEntry>>::__find_equal<NSHolder<TIInputContextEntry>>(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t std::__tree<NSHolder<TIInputContextEntry>>::__count_unique<NSHolder<TIInputContextEntry>>(void *a1, void **a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 1;
    do
    {
      v5 = *a2;
      v6 = v3[4];
      if (*a2)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        if (v6)
        {
          v8 = -1;
        }

        else
        {
          v8 = 0;
        }

        if (v5)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        if (v9 < 0)
        {
          goto LABEL_32;
        }
      }

      else if (([v5 compare:?] & 0x80000000) != 0)
      {
        goto LABEL_32;
      }

      v10 = v3[4];
      v11 = *a2;
      if (v10)
      {
        v12 = v11 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        if (v11)
        {
          v13 = -1;
        }

        else
        {
          v13 = 0;
        }

        if (v10)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        if ((v14 & 0x80000000) == 0)
        {
          return v4;
        }
      }

      else if (([v10 compare:?] & 0x80000000) == 0)
      {
        return v4;
      }

      ++v3;
LABEL_32:
      v3 = *v3;
    }

    while (v3);
  }

  return 0;
}

id TIInputModeGetPreferredMultilingualLanguageModelLocale(void *a1)
{
  v1 = TIInputModeGetNormalizedIdentifier(a1);
  v2 = TIInputModeGetLanguageWithRegion(v1);
  if ([v2 isEqual:@"hi_Latn"])
  {
    if (isH13ANEPresentOnIOS_onceToken != -1)
    {
      dispatch_once(&isH13ANEPresentOnIOS_onceToken, &__block_literal_global_829);
    }

    v3 = isH13ANEPresentOnIOS_hasH13ANE;

    if ((v3 & 1) == 0)
    {
      v4 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v5 = TIGetInputModeProperties(v1);
  v4 = [v5 objectForKey:@"UIKeyboardPreferredMultilingualLanguageModelLocale"];

LABEL_8:

  return v4;
}

void TIDispatchSync(void *a1, void *a2)
{
  queue = a1;
  v3 = a2;
  if (_block_count(void)::once_token != -1)
  {
    dispatch_once(&_block_count(void)::once_token, &__block_literal_global_7);
  }

  atomic_fetch_add(&_block_count(void)::count, 1uLL);
  dispatch_sync(queue, v3);
  if (_block_count(void)::once_token != -1)
  {
    dispatch_once(&_block_count(void)::once_token, &__block_literal_global_7);
  }

  atomic_fetch_add(&_block_count(void)::count, 0xFFFFFFFFFFFFFFFFLL);
}

void NotificationCallback(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __NotificationCallback_block_invoke;
  v6[3] = &unk_1E6F4D4F0;
  v7 = v4;
  v8 = a3;
  v5 = v4;
  TIDispatchAsync(MEMORY[0x1E69E96A0], v6);
}

void __NotificationCallback_block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v3 = *(a1 + 32);
  v1 = *(v3 + 8);
  v4[1] = 3221225472;
  v4[2] = __NotificationCallback_block_invoke_2;
  v4[3] = &unk_1E6F4D4C8;
  v2 = v3;
  v5 = v3;
  [v1 enumerateKeysAndObjectsUsingBlock:v4];
}

void __NotificationCallback_block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = *(a1 + 40);
  v9 = v6;
  v8 = [v6 notification];
  LODWORD(v7) = [v7 isEqualToString:v8];

  if (v7)
  {
    [*(a1 + 32) preferencesChangedCallback:v9];
    *a4 = 1;
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __EmojiFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  EmojiFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

id __TIKeyEquivalentMirroringCandidatesMap()
{
  if (__TIKeyEquivalentMirroringCandidatesMap___onceToken != -1)
  {
    dispatch_once(&__TIKeyEquivalentMirroringCandidatesMap___onceToken, &__block_literal_global_347);
  }

  v1 = __TIKeyEquivalentMirroringCandidatesMap___keyEquivalentMirroringCandidatesMap;

  return v1;
}

BOOL TICharIsDevanagariPUA(UTF32Char theChar)
{
  if (TICharIsDevanagariPUA___onceToken != -1)
  {
    dispatch_once(&TICharIsDevanagariPUA___onceToken, &__block_literal_global);
  }

  return CFCharacterSetIsLongCharacterMember(TICharIsDevanagariPUA___devanagariPUACharacterSet, theChar) != 0;
}

CFCharacterSetRef __TICharIsDevanagariPUA_block_invoke()
{
  v1.location = 63197;
  v1.length = 33;
  result = CFCharacterSetCreateWithCharactersInRange(0, v1);
  TICharIsDevanagariPUA___devanagariPUACharacterSet = result;
  return result;
}

BOOL TICharIsDelimitingNumber(unsigned int a1, UTF32Char a2)
{
  result = 0;
  if (a1 <= 0x3E && ((1 << a1) & 0x7400FE0000000000) != 0)
  {
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
    return CFCharacterSetIsLongCharacterMember(Predefined, a2) != 0;
  }

  return result;
}

BOOL TICharEstablishesContextForDoubleSpacePeriod(UTF32Char a1)
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  if (CFCharacterSetIsLongCharacterMember(Predefined, a1) || a1 <= 0x3F && ((1 << a1) & 0x8C00700200000001) != 0)
  {
    return 0;
  }

  if (a1 - 12289 >= 2)
  {
    return a1 != 2404;
  }

  return 0;
}

id _tiAttributedStringForString(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E696AAB0];
    v2 = a1;
    v3 = [[v1 alloc] initWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *__getCNContactGivenNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactGivenNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactGivenNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ContactsLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __ContactsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E6F4BAF0;
    v5 = 0;
    ContactsLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = ContactsLibraryCore_frameworkLibrary;
    if (ContactsLibraryCore_frameworkLibrary)
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

  return ContactsLibraryCore_frameworkLibrary;
}

void *__getCNContactPhoneticGivenNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactPhoneticGivenNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneticGivenNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactMiddleNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactMiddleNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactMiddleNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactPhoneticMiddleNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactPhoneticMiddleNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneticMiddleNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactFamilyNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactFamilyNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactFamilyNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactPhoneticFamilyNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactPhoneticFamilyNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneticFamilyNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactPreviousFamilyNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactPreviousFamilyNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPreviousFamilyNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactOrganizationNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactOrganizationNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactOrganizationNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactPhoneticOrganizationNameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactPhoneticOrganizationNameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneticOrganizationNameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactNicknameKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ContactsLibrary();
  result = dlsym(v2, "CNContactNicknameKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactNicknameKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary = result;
  return result;
}

id getSTKStickerUsageManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSTKStickerUsageManagerClass_softClass;
  v7 = getSTKStickerUsageManagerClass_softClass;
  if (!getSTKStickerUsageManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSTKStickerUsageManagerClass_block_invoke;
    v3[3] = &unk_1E6F4D960;
    v3[4] = &v4;
    __getSTKStickerUsageManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

Class __getSTKStickerUsageManagerClass_block_invoke(uint64_t a1)
{
  if (!StickersLibraryCore_frameworkLibrary)
  {
    StickersLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = objc_getClass("STKStickerUsageManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTKStickerUsageManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StickersLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StickersLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __Block_byref_object_copy__251(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL IXACanLogMessageAtLevel(unsigned int a1)
{
  if (IXACanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&IXACanLogMessageAtLevel_onceToken, &__block_literal_global_9);
  }

  return IXACanLogMessageAtLevel_logLevel >= a1;
}

void __IXACanLogMessageAtLevel_block_invoke()
{
  if (IXA_IS_INTERNAL_INSTALL_once_token != -1)
  {
    dispatch_once(&IXA_IS_INTERNAL_INSTALL_once_token, &__block_literal_global_276);
  }

  if (IXA_IS_INTERNAL_INSTALL_is_internal_install == 1)
  {
    IXACanLogMessageAtLevel_logLevel = CFPreferencesGetAppIntegerValue(@"kbdLogLevel", @"com.apple.keyboard", 0);
  }
}

id IXASessionEventsLogFacility()
{
  if (IXASessionEventsLogFacility_onceToken != -1)
  {
    dispatch_once(&IXASessionEventsLogFacility_onceToken, &__block_literal_global_15);
  }

  v1 = IXASessionEventsLogFacility_logFacility;

  return v1;
}

uint64_t __IXASessionEventsLogFacility_block_invoke()
{
  IXASessionEventsLogFacility_logFacility = os_log_create("com.apple.TextInput", "IXASessionEvents");

  return MEMORY[0x1EEE66BB8]();
}

id IXASessionDetailsLogFacility()
{
  if (IXASessionDetailsLogFacility_onceToken != -1)
  {
    dispatch_once(&IXASessionDetailsLogFacility_onceToken, &__block_literal_global_18);
  }

  v1 = IXASessionDetailsLogFacility_logFacility;

  return v1;
}

uint64_t __IXASessionDetailsLogFacility_block_invoke()
{
  IXASessionDetailsLogFacility_logFacility = os_log_create("com.apple.TextInput", "IXASessionDetails");

  return MEMORY[0x1EEE66BB8]();
}

id IXASessionAlignmentLogFacility()
{
  if (IXASessionAlignmentLogFacility_onceToken != -1)
  {
    dispatch_once(&IXASessionAlignmentLogFacility_onceToken, &__block_literal_global_21);
  }

  v1 = IXASessionAlignmentLogFacility_logFacility;

  return v1;
}

uint64_t __IXASessionAlignmentLogFacility_block_invoke()
{
  IXASessionAlignmentLogFacility_logFacility = os_log_create("com.apple.TextInput", "IXASessionAlignment");

  return MEMORY[0x1EEE66BB8]();
}

id IXARevisionRateLogFacility()
{
  if (IXARevisionRateLogFacility_onceToken != -1)
  {
    dispatch_once(&IXARevisionRateLogFacility_onceToken, &__block_literal_global_24);
  }

  v1 = IXARevisionRateLogFacility_logFacility;

  return v1;
}

uint64_t __IXARevisionRateLogFacility_block_invoke()
{
  IXARevisionRateLogFacility_logFacility = os_log_create("com.apple.TextInput", "IXARevisionRate");

  return MEMORY[0x1EEE66BB8]();
}

id IXATypingEffortLogFacility()
{
  if (IXATypingEffortLogFacility_onceToken != -1)
  {
    dispatch_once(&IXATypingEffortLogFacility_onceToken, &__block_literal_global_27);
  }

  v1 = IXATypingEffortLogFacility_logFacility;

  return v1;
}

uint64_t __IXATypingEffortLogFacility_block_invoke()
{
  IXATypingEffortLogFacility_logFacility = os_log_create("com.apple.TextInput", "IXATypingEffort");

  return MEMORY[0x1EEE66BB8]();
}

id IXAFeedbackLogFacility()
{
  if (IXAFeedbackLogFacility_onceToken != -1)
  {
    dispatch_once(&IXAFeedbackLogFacility_onceToken, &__block_literal_global_30);
  }

  v1 = IXAFeedbackLogFacility_logFacility;

  return v1;
}

uint64_t __IXAFeedbackLogFacility_block_invoke()
{
  IXAFeedbackLogFacility_logFacility = os_log_create("com.apple.TextInput", "IXAFeedback");

  return MEMORY[0x1EEE66BB8]();
}

id IXAAdhocTestingLogFacility()
{
  if (IXAAdhocTestingLogFacility_onceToken != -1)
  {
    dispatch_once(&IXAAdhocTestingLogFacility_onceToken, &__block_literal_global_33);
  }

  v1 = IXAAdhocTestingLogFacility_logFacility;

  return v1;
}

uint64_t __IXAAdhocTestingLogFacility_block_invoke()
{
  IXAAdhocTestingLogFacility_logFacility = os_log_create("com.apple.TextInput", "IXAAdhocTesting");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t acute_accent_form(int a1)
{
  if (a1 > 912)
  {
    if (a1 > 948)
    {
      if (a1 > 964)
      {
        if (a1 > 969)
        {
          if (a1 == 970)
          {
            return 912;
          }

          if (a1 == 971)
          {
            return 944;
          }
        }

        else
        {
          if (a1 == 965)
          {
            return 973;
          }

          if (a1 == 969)
          {
            return 974;
          }
        }
      }

      else if (a1 > 952)
      {
        if (a1 == 953)
        {
          return 943;
        }

        if (a1 == 959)
        {
          return 972;
        }
      }

      else
      {
        if (a1 == 949)
        {
          return 941;
        }

        if (a1 == 951)
        {
          return 942;
        }
      }
    }

    else if (a1 > 926)
    {
      if (a1 > 936)
      {
        if (a1 == 937)
        {
          return 911;
        }

        if (a1 == 945)
        {
          return 940;
        }
      }

      else
      {
        if (a1 == 927)
        {
          return 908;
        }

        if (a1 == 933)
        {
          return 910;
        }
      }
    }

    else if (a1 > 918)
    {
      if (a1 == 919)
      {
        return 905;
      }

      if (a1 == 921)
      {
        return 906;
      }
    }

    else
    {
      if (a1 == 913)
      {
        return 902;
      }

      if (a1 == 917)
      {
        return 904;
      }
    }

    return 0;
  }

  else
  {
    v1 = a1 - 65;
    result = 193;
    switch(v1)
    {
      case 0:
        return result;
      case 2:
        result = 262;
        break;
      case 4:
        result = 201;
        break;
      case 8:
        result = 205;
        break;
      case 11:
        result = 313;
        break;
      case 13:
        result = 323;
        break;
      case 14:
        result = 211;
        break;
      case 17:
        result = 340;
        break;
      case 18:
        result = 346;
        break;
      case 20:
        result = 218;
        break;
      case 24:
        result = 221;
        break;
      case 25:
        result = 377;
        break;
      case 32:
        result = 225;
        break;
      case 34:
        result = 263;
        break;
      case 36:
        result = 233;
        break;
      case 40:
        result = 237;
        break;
      case 43:
        result = 314;
        break;
      case 45:
        result = 324;
        break;
      case 46:
        result = 243;
        break;
      case 49:
        result = 341;
        break;
      case 50:
        result = 347;
        break;
      case 52:
        result = 250;
        break;
      case 56:
        result = 253;
        break;
      case 57:
        result = 378;
        break;
      default:
        return 0;
    }
  }

  return result;
}

uint64_t grave_accent_form(int a1)
{
  if (a1 > 96)
  {
    if (a1 <= 104)
    {
      if (a1 == 97)
      {
        return 224;
      }

      if (a1 == 101)
      {
        return 232;
      }
    }

    else
    {
      switch(a1)
      {
        case 'i':
          return 236;
        case 'o':
          return 242;
        case 'u':
          return 249;
      }
    }
  }

  else if (a1 <= 72)
  {
    if (a1 == 65)
    {
      return 192;
    }

    if (a1 == 69)
    {
      return 200;
    }
  }

  else
  {
    switch(a1)
    {
      case 'I':
        return 204;
      case 'O':
        return 210;
      case 'U':
        return 217;
    }
  }

  return 0;
}

uint64_t circumflex_form(int a1)
{
  if (a1 > 96)
  {
    if (a1 <= 104)
    {
      if (a1 == 97)
      {
        return 226;
      }

      if (a1 == 101)
      {
        return 234;
      }
    }

    else
    {
      switch(a1)
      {
        case 'i':
          return 238;
        case 'o':
          return 244;
        case 'u':
          return 251;
      }
    }
  }

  else if (a1 <= 72)
  {
    if (a1 == 65)
    {
      return 194;
    }

    if (a1 == 69)
    {
      return 202;
    }
  }

  else
  {
    switch(a1)
    {
      case 'I':
        return 206;
      case 'O':
        return 212;
      case 'U':
        return 219;
    }
  }

  return 0;
}

uint64_t diaeresis_form(int a1)
{
  if (a1 > 104)
  {
    if (a1 > 920)
    {
      if (a1 > 952)
      {
        if (a1 == 953)
        {
          return 970;
        }

        if (a1 == 965)
        {
          return 971;
        }
      }

      else
      {
        if (a1 == 921)
        {
          return 938;
        }

        if (a1 == 933)
        {
          return 939;
        }
      }
    }

    else if (a1 > 116)
    {
      if (a1 == 117)
      {
        return 252;
      }

      if (a1 == 121)
      {
        return 255;
      }
    }

    else
    {
      if (a1 == 105)
      {
        return 239;
      }

      if (a1 == 111)
      {
        return 246;
      }
    }
  }

  else if (a1 > 84)
  {
    if (a1 > 96)
    {
      if (a1 == 97)
      {
        return 228;
      }

      if (a1 == 101)
      {
        return 235;
      }
    }

    else
    {
      if (a1 == 85)
      {
        return 220;
      }

      if (a1 == 89)
      {
        return 376;
      }
    }
  }

  else if (a1 > 72)
  {
    if (a1 == 73)
    {
      return 207;
    }

    if (a1 == 79)
    {
      return 214;
    }
  }

  else
  {
    if (a1 == 65)
    {
      return 196;
    }

    if (a1 == 69)
    {
      return 203;
    }
  }

  return 0;
}

uint64_t dialytika_tonos_form(int a1)
{
  if (a1 == 965)
  {
    v1 = 944;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 953)
  {
    return 912;
  }

  else
  {
    return v1;
  }
}

uint64_t caron_form(int a1)
{
  if ((a1 - 65) > 0x39)
  {
    return 0;
  }

  else
  {
    return dword_186483EB0[a1 - 65];
  }
}

uint64_t ring_above_form(uint64_t result)
{
  if (result > 116)
  {
    switch(result)
    {
      case 'u':
        return 367;
      case 'w':
        return 7832;
      case 'y':
        return 7833;
    }
  }

  else
  {
    switch(result)
    {
      case 'A':
        return 197;
      case 'U':
        return 366;
      case 'a':
        return 229;
    }
  }

  return result;
}

uint64_t small_tilde_form(uint64_t result)
{
  if (result > 96)
  {
    if (result <= 109)
    {
      if (result == 97)
      {
        return 227;
      }

      else if (result == 105)
      {
        return 297;
      }
    }

    else
    {
      switch(result)
      {
        case 'u':
          return 361;
        case 'o':
          return 245;
        case 'n':
          return 241;
      }
    }
  }

  else if (result <= 77)
  {
    if (result == 65)
    {
      return 195;
    }

    else if (result == 73)
    {
      return 296;
    }
  }

  else
  {
    switch(result)
    {
      case 'N':
        return 209;
      case 'O':
        return 213;
      case 'U':
        return 360;
    }
  }

  return result;
}

uint64_t combines_with_selective_modifier(uint64_t a1, int a2)
{
  result = 0;
  if (a2 <= 710)
  {
    if (a2 > 179)
    {
      if (a2 == 180)
      {
LABEL_23:
        v6 = acute_accent_form(a1);
        return v6 != 0;
      }

      if (a2 != 710)
      {
        return result;
      }
    }

    else if (a2 != 168)
    {
      if (a2 != 175)
      {
        return result;
      }

      v6 = macron_form(a1);
      return v6 != 0;
    }

    v6 = circumflex_form(a1);
    return v6 != 0;
  }

  if (a2 <= 714)
  {
    if (a2 == 711)
    {
      v7 = a1 - 65;
      v8 = v7 > 0x39;
      v9 = (0x21E691D021E691DuLL >> v7) & 1;
      if (v8)
      {
        return 0;
      }

      else
      {
        return v9;
      }
    }

    if (a2 != 714)
    {
      return result;
    }

    goto LABEL_23;
  }

  if (a2 == 715)
  {
    v6 = grave_accent_form(a1);
    return v6 != 0;
  }

  if (a2 == 732)
  {
    v6 = small_tilde_form(a1);
    return v6 != 0;
  }

  v5 = a1 == 953 || a1 == 965;
  return a2 == 901 && v5;
}

uint64_t macron_form(int a1)
{
  if (a1 > 96)
  {
    if (a1 <= 104)
    {
      if (a1 == 97)
      {
        return 257;
      }

      if (a1 == 101)
      {
        return 275;
      }
    }

    else
    {
      switch(a1)
      {
        case 'i':
          return 299;
        case 'o':
          return 333;
        case 'u':
          return 363;
      }
    }
  }

  else if (a1 <= 72)
  {
    if (a1 == 65)
    {
      return 256;
    }

    if (a1 == 69)
    {
      return 274;
    }
  }

  else
  {
    switch(a1)
    {
      case 'I':
        return 298;
      case 'O':
        return 332;
      case 'U':
        return 362;
    }
  }

  return 0;
}

uint64_t strip_acute_accent(uint64_t result)
{
  if (result > 340)
  {
    if (result <= 907)
    {
      if (result <= 377)
      {
        if (result > 346)
        {
          if (result == 347)
          {
            return 115;
          }

          else if (result == 377)
          {
            return 90;
          }
        }

        else if (result == 341)
        {
          return 114;
        }

        else if (result == 346)
        {
          return 83;
        }
      }

      else if (result <= 903)
      {
        if (result == 378)
        {
          return 122;
        }

        else if (result == 902)
        {
          return 913;
        }
      }

      else
      {
        switch(result)
        {
          case 0x388:
            return 917;
          case 0x389:
            return 919;
          case 0x38A:
            return 921;
        }
      }
    }

    else if (result > 941)
    {
      if (result <= 971)
      {
        if (result == 942)
        {
          return 951;
        }

        else if (result == 943)
        {
          return 953;
        }
      }

      else
      {
        switch(result)
        {
          case 0x3CC:
            return 959;
          case 0x3CD:
            return 965;
          case 0x3CE:
            return 969;
        }
      }
    }

    else if (result <= 910)
    {
      if (result == 908)
      {
        return 927;
      }

      else if (result == 910)
      {
        return 933;
      }
    }

    else
    {
      switch(result)
      {
        case 0x38F:
          return 937;
        case 0x3AC:
          return 945;
        case 0x3AD:
          return 949;
      }
    }
  }

  else if (result <= 242)
  {
    if (result <= 217)
    {
      if (result > 204)
      {
        if (result == 205)
        {
          return 73;
        }

        else if (result == 211)
        {
          return 79;
        }
      }

      else if (result == 193)
      {
        return 65;
      }

      else if (result == 201)
      {
        return 69;
      }
    }

    else if (result <= 224)
    {
      if (result == 218)
      {
        return 85;
      }

      else if (result == 221)
      {
        return 89;
      }
    }

    else
    {
      switch(result)
      {
        case 0xE1:
          return 97;
        case 0xE9:
          return 101;
        case 0xED:
          return 105;
      }
    }
  }

  else if (result > 312)
  {
    if (result <= 322)
    {
      if (result == 313)
      {
        return 76;
      }

      else if (result == 314)
      {
        return 108;
      }
    }

    else
    {
      switch(result)
      {
        case 0x143:
          return 78;
        case 0x144:
          return 110;
        case 0x154:
          return 82;
      }
    }
  }

  else if (result <= 252)
  {
    if (result == 243)
    {
      return 111;
    }

    else if (result == 250)
    {
      return 117;
    }
  }

  else
  {
    switch(result)
    {
      case 0xFD:
        return 121;
      case 0x106:
        return 67;
      case 0x107:
        return 99;
    }
  }

  return result;
}

uint64_t strip_greek_accent(uint64_t result, int *a2)
{
  if (result > 939)
  {
    if (result > 969)
    {
      if (result > 971)
      {
        switch(result)
        {
          case 0x3CC:
            result = 959;
            goto LABEL_45;
          case 0x3CD:
            result = 965;
            goto LABEL_45;
          case 0x3CE:
            result = 969;
            goto LABEL_45;
        }

LABEL_49:
        v2 = 0;
        goto LABEL_48;
      }

      if (result == 970)
      {
        result = 953;
      }

      else
      {
        result = 965;
      }

LABEL_47:
      v2 = 168;
      goto LABEL_48;
    }

    if (result <= 941)
    {
      if (result == 940)
      {
        result = 945;
      }

      else
      {
        result = 949;
      }

      goto LABEL_45;
    }

    if (result == 942)
    {
      result = 951;
      goto LABEL_45;
    }

    if (result == 943)
    {
      result = 953;
      goto LABEL_45;
    }

    if (result != 944)
    {
      goto LABEL_49;
    }

    result = 965;
  }

  else
  {
    if (result <= 909)
    {
      if (result <= 904)
      {
        if (result == 902)
        {
          result = 913;
          goto LABEL_45;
        }

        if (result == 904)
        {
          result = 917;
          goto LABEL_45;
        }
      }

      else
      {
        switch(result)
        {
          case 0x389:
            result = 919;
            goto LABEL_45;
          case 0x38A:
            result = 921;
            goto LABEL_45;
          case 0x38C:
            result = 927;
LABEL_45:
            v2 = 180;
            goto LABEL_48;
        }
      }

      goto LABEL_49;
    }

    if (result <= 911)
    {
      if (result == 910)
      {
        result = 933;
      }

      else
      {
        result = 937;
      }

      goto LABEL_45;
    }

    if (result != 912)
    {
      if (result == 938)
      {
        result = 921;
      }

      else
      {
        if (result != 939)
        {
          goto LABEL_49;
        }

        result = 933;
      }

      goto LABEL_47;
    }

    result = 953;
  }

  v2 = 901;
LABEL_48:
  *a2 = v2;
  return result;
}

uint64_t strip_caron(uint64_t result)
{
  if (result > 352)
  {
    if (result <= 461)
    {
      if (result > 380)
      {
        switch(result)
        {
          case 0x17D:
            return 90;
          case 0x17E:
            return 122;
          case 0x1CD:
            return 65;
        }
      }

      else
      {
        switch(result)
        {
          case 0x161:
            return 115;
          case 0x164:
            return 84;
          case 0x165:
            return 116;
        }
      }
    }

    else if (result <= 464)
    {
      if (result == 462)
      {
        return 97;
      }

      else if (result == 463)
      {
        return 73;
      }

      else
      {
        return 105;
      }
    }

    else if (result > 466)
    {
      if (result == 467)
      {
        return 85;
      }

      else if (result == 468)
      {
        return 117;
      }
    }

    else if (result == 465)
    {
      return 79;
    }

    else
    {
      return 111;
    }
  }

  else if (result <= 316)
  {
    if (result > 270)
    {
      switch(result)
      {
        case 0x10F:
          return 100;
        case 0x11A:
          return 69;
        case 0x11B:
          return 101;
      }
    }

    else
    {
      switch(result)
      {
        case 0x10C:
          return 67;
        case 0x10D:
          return 99;
        case 0x10E:
          return 68;
      }
    }
  }

  else if (result <= 327)
  {
    switch(result)
    {
      case 0x13D:
        return 76;
      case 0x13E:
        return 108;
      case 0x147:
        return 78;
    }
  }

  else if (result > 344)
  {
    if (result == 345)
    {
      return 114;
    }

    else if (result == 352)
    {
      return 83;
    }
  }

  else if (result == 328)
  {
    return 110;
  }

  else if (result == 344)
  {
    return 82;
  }

  return result;
}

uint64_t strip_circumflex(uint64_t result)
{
  if (result > 225)
  {
    if (result <= 237)
    {
      if (result == 226)
      {
        return 97;
      }

      else if (result == 234)
      {
        return 101;
      }
    }

    else
    {
      switch(result)
      {
        case 0xEE:
          return 105;
        case 0xF4:
          return 111;
        case 0xFB:
          return 117;
      }
    }
  }

  else if (result <= 205)
  {
    if (result == 194)
    {
      return 65;
    }

    else if (result == 202)
    {
      return 69;
    }
  }

  else
  {
    switch(result)
    {
      case 0xCE:
        return 73;
      case 0xD4:
        return 79;
      case 0xDB:
        return 85;
    }
  }

  return result;
}

uint64_t strip_diaeresis(int a1)
{
  if (a1 > 245)
  {
    if (a1 > 937)
    {
      if (a1 > 969)
      {
        if (a1 == 970)
        {
          return 953;
        }

        if (a1 == 971)
        {
          return 965;
        }
      }

      else
      {
        if (a1 == 938)
        {
          return 921;
        }

        if (a1 == 939)
        {
          return 933;
        }
      }
    }

    else if (a1 > 254)
    {
      if (a1 == 255)
      {
        return 121;
      }

      if (a1 == 376)
      {
        return 89;
      }
    }

    else
    {
      if (a1 == 246)
      {
        return 111;
      }

      if (a1 == 252)
      {
        return 117;
      }
    }
  }

  else if (a1 > 219)
  {
    if (a1 > 234)
    {
      if (a1 == 235)
      {
        return 101;
      }

      if (a1 == 239)
      {
        return 105;
      }
    }

    else
    {
      if (a1 == 220)
      {
        return 85;
      }

      if (a1 == 228)
      {
        return 97;
      }
    }
  }

  else if (a1 > 206)
  {
    if (a1 == 207)
    {
      return 73;
    }

    if (a1 == 214)
    {
      return 79;
    }
  }

  else
  {
    if (a1 == 196)
    {
      return 65;
    }

    if (a1 == 203)
    {
      return 69;
    }
  }

  return 0;
}

uint64_t strip_dialytika_tonos(int a1)
{
  if (a1 == 944)
  {
    v1 = 965;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 912)
  {
    return 953;
  }

  else
  {
    return v1;
  }
}

uint64_t strip_grave_accent(uint64_t result)
{
  if (result > 223)
  {
    if (result <= 235)
    {
      if (result == 224)
      {
        return 97;
      }

      else if (result == 232)
      {
        return 101;
      }
    }

    else
    {
      switch(result)
      {
        case 0xEC:
          return 105;
        case 0xF2:
          return 111;
        case 0xF9:
          return 117;
      }
    }
  }

  else if (result <= 203)
  {
    if (result == 192)
    {
      return 65;
    }

    else if (result == 200)
    {
      return 69;
    }
  }

  else
  {
    switch(result)
    {
      case 0xCC:
        return 73;
      case 0xD2:
        return 79;
      case 0xD9:
        return 85;
    }
  }

  return result;
}

uint64_t strip_macron(uint64_t result)
{
  if (result > 298)
  {
    if (result <= 332)
    {
      if (result == 299)
      {
        return 105;
      }

      else if (result == 332)
      {
        return 79;
      }
    }

    else
    {
      switch(result)
      {
        case 0x14D:
          return 111;
        case 0x16A:
          return 85;
        case 0x16B:
          return 117;
      }
    }
  }

  else if (result <= 273)
  {
    if (result == 256)
    {
      return 65;
    }

    else if (result == 257)
    {
      return 97;
    }
  }

  else
  {
    switch(result)
    {
      case 0x112:
        return 69;
      case 0x113:
        return 101;
      case 0x12A:
        return 73;
    }
  }

  return result;
}

uint64_t strip_ring_above(uint64_t result)
{
  if (result > 366)
  {
    switch(result)
    {
      case 0x16F:
        return 117;
      case 0x1E98:
        return 119;
      case 0x1E99:
        return 121;
    }
  }

  else
  {
    switch(result)
    {
      case 0xC5:
        return 65;
      case 0xE5:
        return 97;
      case 0x16E:
        return 85;
    }
  }

  return result;
}

uint64_t strip_small_tilde(uint64_t result)
{
  if (result > 244)
  {
    if (result <= 296)
    {
      if (result == 245)
      {
        return 111;
      }

      else if (result == 296)
      {
        return 73;
      }
    }

    else
    {
      switch(result)
      {
        case 0x129:
          return 105;
        case 0x168:
          return 85;
        case 0x169:
          return 117;
      }
    }
  }

  else if (result <= 212)
  {
    if (result == 195)
    {
      return 65;
    }

    else if (result == 209)
    {
      return 78;
    }
  }

  else
  {
    switch(result)
    {
      case 0xD5:
        return 79;
      case 0xE3:
        return 97;
      case 0xF1:
        return 110;
    }
  }

  return result;
}

uint64_t combine_with_accent(uint64_t result, int a2)
{
  v2 = result;
  LODWORD(result) = 0;
  if (a2 > 713)
  {
    if (a2 > 731)
    {
      if (a2 == 732)
      {
        LODWORD(result) = small_tilde_form(v2);
        goto LABEL_31;
      }

      if (a2 == 901)
      {
        if (v2 == 965)
        {
          v3 = 944;
        }

        else
        {
          v3 = 0;
        }

        if (v2 == 953)
        {
          LODWORD(result) = 912;
        }

        else
        {
          LODWORD(result) = v3;
        }

        goto LABEL_31;
      }

      if (a2 != 900)
      {
        goto LABEL_31;
      }
    }

    else if (a2 != 714)
    {
      if (a2 == 715)
      {
        LODWORD(result) = grave_accent_form(v2);
      }

      else if (a2 == 730)
      {
        LODWORD(result) = ring_above_form(v2);
      }

      goto LABEL_31;
    }

LABEL_16:
    LODWORD(result) = acute_accent_form(v2);
    goto LABEL_31;
  }

  if (a2 <= 179)
  {
    if (a2 == 168)
    {
      LODWORD(result) = diaeresis_form(v2);
    }

    else if (a2 == 175)
    {
      LODWORD(result) = macron_form(v2);
    }
  }

  else
  {
    switch(a2)
    {
      case 180:
        goto LABEL_16;
      case 710:
        LODWORD(result) = circumflex_form(v2);
        break;
      case 711:
        if ((v2 - 65) > 0x39)
        {
          LODWORD(result) = 0;
        }

        else
        {
          LODWORD(result) = dword_186483EB0[(v2 - 65)];
        }

        break;
    }
  }

LABEL_31:
  if (result == v2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t strip_accent(uint64_t result, int a2)
{
  v2 = result;
  LODWORD(result) = 0;
  if (a2 > 713)
  {
    if (a2 > 731)
    {
      if (a2 == 732)
      {
        LODWORD(result) = strip_small_tilde(v2);
        goto LABEL_29;
      }

      if (a2 == 901)
      {
        if (v2 == 944)
        {
          v3 = 965;
        }

        else
        {
          v3 = 0;
        }

        if (v2 == 912)
        {
          LODWORD(result) = 953;
        }

        else
        {
          LODWORD(result) = v3;
        }

        goto LABEL_29;
      }

      if (a2 != 900)
      {
        goto LABEL_29;
      }
    }

    else if (a2 != 714)
    {
      if (a2 == 715)
      {
        LODWORD(result) = strip_grave_accent(v2);
      }

      else if (a2 == 730)
      {
        LODWORD(result) = strip_ring_above(v2);
      }

      goto LABEL_29;
    }

LABEL_15:
    LODWORD(result) = strip_acute_accent(v2);
    goto LABEL_29;
  }

  if (a2 <= 179)
  {
    if (a2 == 168)
    {
      LODWORD(result) = strip_diaeresis(v2);
    }

    else if (a2 == 175)
    {
      LODWORD(result) = strip_macron(v2);
    }
  }

  else
  {
    switch(a2)
    {
      case 180:
        goto LABEL_15;
      case 710:
        LODWORD(result) = strip_circumflex(v2);
        break;
      case 711:
        LODWORD(result) = strip_caron(v2);
        break;
    }
  }

LABEL_29:
  if (result == v2)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

BOOL character_is_composable_accent(int a1)
{
  result = 1;
  if (((a1 - 710) > 0x16 || ((1 << (a1 + 58)) & 0x500033) == 0) && ((a1 - 168) > 0xC || ((1 << (a1 + 88)) & 0x1081) == 0))
  {
    return (a1 - 900) < 2;
  }

  return result;
}

void ___recentLexiconDispatchQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.TextInput.recents-request", v2);
  v1 = _recentLexiconDispatchQueue___xpc_queue;
  _recentLexiconDispatchQueue___xpc_queue = v0;
}

uint64_t __Block_byref_object_copy__963(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void std::vector<std::vector<TIHandwritingPoint>>::clear[abi:nn200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<TIHandwritingPoint>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<TIHandwritingPoint>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<TIHandwritingPoint>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<TIHandwritingPoint>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::vector<TIHandwritingPoint>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<TIHandwritingPoint>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<TIHandwritingPoint>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 4);
  }

  return result;
}

void std::vector<TIHandwritingPoint>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<TIHandwritingPoint>>(a2);
  }

  std::vector<TIHandwritingPoint>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<std::vector<TIHandwritingPoint> *,std::vector<TIHandwritingPoint> *,std::vector<TIHandwritingPoint> *>(char **a1, char **a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        v6 = *v5;
        v7 = v5[1];
        v8 = v7 - *v5;
        v9 = *(a3 + 16);
        v10 = *a3;
        if (v9 - *a3 < v8)
        {
          if (v10)
          {
            *(a3 + 8) = v10;
            operator delete(v10);
            v9 = 0;
            *a3 = 0;
            *(a3 + 8) = 0;
            *(a3 + 16) = 0;
          }

          v11 = v8 >> 4;
          if (!((v8 >> 4) >> 60))
          {
            if (v9 >> 3 > v11)
            {
              v11 = v9 >> 3;
            }

            if (v9 >= 0x7FFFFFFFFFFFFFF0)
            {
              v12 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v12 = v11;
            }

            std::vector<TIHandwritingPoint>::__vallocate[abi:nn200100](a3, v12);
          }

          std::vector<TIHandwritingPoint>::__throw_length_error[abi:nn200100]();
        }

        v13 = *(a3 + 8);
        v14 = v13 - v10;
        if (v13 - v10 >= v8)
        {
          if (v7 != v6)
          {
            memmove(v10, v6, v8);
          }

          v17 = &v10[v8];
        }

        else
        {
          if (v13 != v10)
          {
            memmove(*a3, *v5, v13 - v10);
            v13 = *(a3 + 8);
          }

          v15 = &v6[v14];
          v16 = v7 - &v6[v14];
          if (v16)
          {
            memmove(v13, v15, v16);
          }

          v17 = &v13[v16];
        }

        *(a3 + 8) = v17;
      }

      v5 += 3;
      a3 += 24;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t __Block_byref_object_copy__1988(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t TIInputModeSupportsMultilingual(void *a1)
{
  v1 = a1;
  v2 = TIInputModeGetNormalizedIdentifier(v1);
  v3 = TIGetInputModeProperties(v2);
  v4 = [v3 objectForKeyedSubscript:@"UIKeyboardSupportsMultilingual"];

  if (v4)
  {
    v5 = TIInputModeGetPreferredMultilingualLanguageModelLocale(v1);
    v6 = [v5 isEqualToString:@"mul_IN"];

    if (v6)
    {
      if (isH13ANEPresentOnIOS_onceToken != -1)
      {
        dispatch_once(&isH13ANEPresentOnIOS_onceToken, &__block_literal_global_829);
      }

      v7 = isH13ANEPresentOnIOS_hasH13ANE;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

id TIInputModeGetRequiredMultilingualInputModes(void *a1)
{
  v1 = TIInputModeGetNormalizedIdentifier(a1);
  v2 = TIGetInputModeProperties(v1);
  v3 = [v2 objectForKeyedSubscript:@"UIKeyboardRequiredMultilingualInputModes"];

  return v3;
}

BOOL TIInputModeCanBePrimaryMultiscript(void *a1)
{
  v1 = a1;
  if (TIInputModeSupportsMultilingual(v1))
  {
    v2 = TIInputModeGetNormalizedIdentifier(v1);
    v3 = TIGetInputModeProperties(v2);
    v4 = [v3 objectForKeyedSubscript:@"UIKeyboardSupportedMultiscriptInputModes"];
    v5 = [v4 allKeys];

    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

Class __getAFPreferencesClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AssistantServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E6F4BED0;
    v6 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AssistantServicesLibraryCore_frameworkLibrary)
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
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getAFPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

id TIGetSuggestedInputModesByLocaleForLanguage(void *a1)
{
  v1 = a1;
  if (TIGetSuggestedInputModesByLocaleForLanguage_once != -1)
  {
    dispatch_once(&TIGetSuggestedInputModesByLocaleForLanguage_once, &__block_literal_global_340);
  }

  v2 = TIInputModeGetBaseLanguage(v1);
  v3 = [TIGetSuggestedInputModesByLocaleForLanguage___suggestedLanguageInputModes objectForKey:v2];
  if (!v3)
  {
    v3 = _UIKeyboardBundleInfoWithKey(v2, @"UIKeyboardSuggestedLanguageInputModes");
    if (v3)
    {
      [TIGetSuggestedInputModesByLocaleForLanguage___suggestedLanguageInputModes setObject:v3 forKey:v2];
    }
  }

  return v3;
}

uint64_t __TIGetSuggestedInputModesByLocaleForLanguage_block_invoke()
{
  TIGetSuggestedInputModesByLocaleForLanguage___suggestedLanguageInputModes = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];

  return MEMORY[0x1EEE66BB8]();
}

id TIGetSuggestedDefaultInputModesByLocaleForLanguage(void *a1)
{
  v1 = a1;
  if (TIGetSuggestedDefaultInputModesByLocaleForLanguage_once != -1)
  {
    dispatch_once(&TIGetSuggestedDefaultInputModesByLocaleForLanguage_once, &__block_literal_global_342);
  }

  v2 = TIInputModeGetBaseLanguage(v1);
  v3 = [TIGetSuggestedDefaultInputModesByLocaleForLanguage___suggestedDefaultLanguageInputModes objectForKey:v2];
  if (!v3)
  {
    v3 = _UIKeyboardBundleInfoWithKey(v2, @"UIKeyboardSuggestedDefaultLanguageInputModes");
    if (v3)
    {
      [TIGetSuggestedDefaultInputModesByLocaleForLanguage___suggestedDefaultLanguageInputModes setObject:v3 forKey:v2];
    }
  }

  return v3;
}

uint64_t __TIGetSuggestedDefaultInputModesByLocaleForLanguage_block_invoke()
{
  TIGetSuggestedDefaultInputModesByLocaleForLanguage___suggestedDefaultLanguageInputModes = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];

  return MEMORY[0x1EEE66BB8]();
}

id TIGetSuggestedDefaultInputModesForPadByLocaleForLanguage(void *a1)
{
  v1 = a1;
  if (TIGetSuggestedDefaultInputModesForPadByLocaleForLanguage_once != -1)
  {
    dispatch_once(&TIGetSuggestedDefaultInputModesForPadByLocaleForLanguage_once, &__block_literal_global_344);
  }

  v2 = TIInputModeGetBaseLanguage(v1);
  v3 = [TIGetSuggestedDefaultInputModesForPadByLocaleForLanguage___suggestedDefaultLanguageInputModesForPad objectForKey:v2];
  if (!v3)
  {
    v3 = _UIKeyboardBundleInfoWithKey(v2, @"UIKeyboardSuggestedDefaultLanguageInputModes-iPad");
    if (v3)
    {
      [TIGetSuggestedDefaultInputModesForPadByLocaleForLanguage___suggestedDefaultLanguageInputModesForPad setObject:v3 forKey:v2];
    }
  }

  return v3;
}

uint64_t __TIGetSuggestedDefaultInputModesForPadByLocaleForLanguage_block_invoke()
{
  TIGetSuggestedDefaultInputModesForPadByLocaleForLanguage___suggestedDefaultLanguageInputModesForPad = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];

  return MEMORY[0x1EEE66BB8]();
}

id TIGetSuggestedDefaultInputModesForFudgeByLocaleForLanguage(void *a1)
{
  v1 = a1;
  if (TIGetSuggestedDefaultInputModesForFudgeByLocaleForLanguage_once != -1)
  {
    dispatch_once(&TIGetSuggestedDefaultInputModesForFudgeByLocaleForLanguage_once, &__block_literal_global_346);
  }

  v2 = TIInputModeGetBaseLanguage(v1);
  v3 = [TIGetSuggestedDefaultInputModesForFudgeByLocaleForLanguage___suggestedDefaultLanguageInputModesForFudge objectForKey:v2];
  if (!v3)
  {
    v3 = _UIKeyboardBundleInfoWithKey(v2, @"UIKeyboardSuggestedDefaultLanguageInputModes-Fudge");
    if (v3)
    {
      [TIGetSuggestedDefaultInputModesForFudgeByLocaleForLanguage___suggestedDefaultLanguageInputModesForFudge setObject:v3 forKey:v2];
    }
  }

  return v3;
}

uint64_t __TIGetSuggestedDefaultInputModesForFudgeByLocaleForLanguage_block_invoke()
{
  TIGetSuggestedDefaultInputModesForFudgeByLocaleForLanguage___suggestedDefaultLanguageInputModesForFudge = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t TIGetAddKeyboardUsesPickerForInputMode(void *a1)
{
  v1 = TIInputModeGetBaseLanguage(a1);
  v2 = _UIKeyboardBundleInfoWithKey(v1, @"UIAddKeyboardUsesPicker");

  if (v2)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

float TIGetAddressBookThresholdForInputMode(void *a1)
{
  v1 = TIInputModeGetBaseLanguage(a1);
  v2 = _UIKeyboardBundleInfoWithKey(v1, @"KeyboardAddressBookThreshold");

  [v2 floatValue];
  v4 = v3;

  return v4;
}

id TIGetAllInputModeProperties()
{
  if (TIGetAllInputModeProperties_once != -1)
  {
    dispatch_once(&TIGetAllInputModeProperties_once, &__block_literal_global_350);
  }

  v1 = __inputModeProperties;

  return v1;
}

void __TIGetAllInputModeProperties_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v0 = +[TIInputModeController sharedInputModeController];
  v1 = [v0 supportedInputModeIdentifiers];

  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = TIGetInputModeProperties(*(*(&v7 + 1) + 8 * v5++));
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

id TIGetSuggestedDictationLanguagesForDeviceLanguage()
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (TIGetSuggestedDictationLanguagesForDeviceLanguage_once != -1)
  {
    dispatch_once(&TIGetSuggestedDictationLanguagesForDeviceLanguage_once, &__block_literal_global_352);
  }

  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.TextInput"];
  v1 = MEMORY[0x1E696AAE8];
  v2 = [v0 localizations];
  v3 = [v1 preferredLocalizationsFromArray:v2 forPreferences:0];
  v4 = [v3 firstObject];

  if (!v4)
  {
    v5 = 0;
    goto LABEL_14;
  }

  v5 = [TIGetSuggestedDictationLanguagesForDeviceLanguage___suggestedDictationLanguageProperties objectForKey:v4];
  if ([v5 count])
  {
    goto LABEL_14;
  }

  v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v4];
  v7 = [v6 languageCode];

  v8 = _UIKeyboardBundleInfoWithKey(v7, @"UISuggestedDictationLanguages");
  v9 = v8;
  if (v8)
  {
    v10 = MEMORY[0x1E696AAE8];
    v11 = [v8 allKeys];
    v12 = [&unk_1EF7CB248 arrayByAddingObjectsFromArray:v11];
    v13 = [v10 preferredLocalizationsFromArray:v12 forPreferences:0];
    v14 = [v13 firstObject];

    if ([v14 isEqualToString:@"zxx"])
    {
LABEL_9:

      goto LABEL_10;
    }

    if (v14)
    {
      v15 = [v9 objectForKey:v14];

      v5 = v15;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (![v5 count])
  {
    v18[0] = v7;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

    v5 = v16;
  }

  [TIGetSuggestedDictationLanguagesForDeviceLanguage___suggestedDictationLanguageProperties setObject:v5 forKey:v4];

LABEL_14:

  return v5;
}

uint64_t __TIGetSuggestedDictationLanguagesForDeviceLanguage_block_invoke()
{
  TIGetSuggestedDictationLanguagesForDeviceLanguage___suggestedDictationLanguageProperties = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

id TIGetHardwareKeyboardSupport()
{
  if (TIGetHardwareKeyboardSupport_onceToken != -1)
  {
    dispatch_once(&TIGetHardwareKeyboardSupport_onceToken, &__block_literal_global_371);
  }

  v1 = TIGetHardwareKeyboardSupport___hardwareSupport;

  return v1;
}

void __TIGetHardwareKeyboardSupport_block_invoke()
{
  v0 = [&unk_1EF7DC160 objectForKey:@"HardwareKeyboardSupport.plist"];
  v1 = TIGetHardwareKeyboardSupport___hardwareSupport;
  TIGetHardwareKeyboardSupport___hardwareSupport = v0;

  if (!TIGetHardwareKeyboardSupport___hardwareSupport)
  {
    v4 = TIGetTextInputFrameworkPath();
    v2 = TILoadBundlePlist(@"HardwareKeyboardSupport.plist", v4);
    v3 = TIGetHardwareKeyboardSupport___hardwareSupport;
    TIGetHardwareKeyboardSupport___hardwareSupport = v2;
  }
}

id TIGetStickerTaxonomyIdentifiers()
{
  if (TIGetStickerTaxonomyIdentifiers_onceToken != -1)
  {
    dispatch_once(&TIGetStickerTaxonomyIdentifiers_onceToken, &__block_literal_global_376);
  }

  v1 = TIGetStickerTaxonomyIdentifiers___stickerTaxonomyIdentifiers;

  return v1;
}

void __TIGetStickerTaxonomyIdentifiers_block_invoke()
{
  v2 = TIGetTextInputFrameworkPath();
  v0 = TILoadBundlePlist(@"StickerTaxonomyIdentifiers.plist", v2);
  v1 = TIGetStickerTaxonomyIdentifiers___stickerTaxonomyIdentifiers;
  TIGetStickerTaxonomyIdentifiers___stickerTaxonomyIdentifiers = v0;
}

id TIGetStickerTaxonomyIdentifiersAllowListSynonymExclusions()
{
  if (TIGetStickerTaxonomyIdentifiersAllowListSynonymExclusions_onceToken != -1)
  {
    dispatch_once(&TIGetStickerTaxonomyIdentifiersAllowListSynonymExclusions_onceToken, &__block_literal_global_381);
  }

  v1 = TIGetStickerTaxonomyIdentifiersAllowListSynonymExclusions___stickerTaxonomyIdentifiers;

  return v1;
}

void __TIGetStickerTaxonomyIdentifiersAllowListSynonymExclusions_block_invoke()
{
  v2 = TIGetTextInputFrameworkPath();
  v0 = TILoadBundlePlist(@"StickerTaxonomyIdentifiersAllowListSynonymExclusions.plist", v2);
  v1 = TIGetStickerTaxonomyIdentifiersAllowListSynonymExclusions___stickerTaxonomyIdentifiers;
  TIGetStickerTaxonomyIdentifiersAllowListSynonymExclusions___stickerTaxonomyIdentifiers = v0;
}

id TIGetMacInputSourcesMap()
{
  if (TIGetMacInputSourcesMap_onceToken != -1)
  {
    dispatch_once(&TIGetMacInputSourcesMap_onceToken, &__block_literal_global_386);
  }

  v1 = TIGetMacInputSourcesMap___macInputSourcesMap;

  return v1;
}

void __TIGetMacInputSourcesMap_block_invoke()
{
  v0 = [&unk_1EF7DC160 objectForKey:@"MacInputSourcesMap.plist"];
  v1 = TIGetMacInputSourcesMap___macInputSourcesMap;
  TIGetMacInputSourcesMap___macInputSourcesMap = v0;

  if (!TIGetMacInputSourcesMap___macInputSourcesMap)
  {
    v4 = TIGetTextInputFrameworkPath();
    v2 = TILoadBundlePlist(@"MacInputSourcesMap.plist", v4);
    v3 = TIGetMacInputSourcesMap___macInputSourcesMap;
    TIGetMacInputSourcesMap___macInputSourcesMap = v2;
  }
}

id TIGetIndicScriptComposerRules()
{
  if (TIGetIndicScriptComposerRules_onceToken != -1)
  {
    dispatch_once(&TIGetIndicScriptComposerRules_onceToken, &__block_literal_global_391);
  }

  v1 = TIGetIndicScriptComposerRules___rules;

  return v1;
}

void __TIGetIndicScriptComposerRules_block_invoke()
{
  v0 = [&unk_1EF7DC160 objectForKey:@"TIIndicScriptComposerRules.plist"];
  v1 = TIGetIndicScriptComposerRules___rules;
  TIGetIndicScriptComposerRules___rules = v0;

  if (!TIGetIndicScriptComposerRules___rules)
  {
    v4 = TIGetTextInputFrameworkPath();
    v2 = TILoadBundlePlist(@"TIIndicScriptComposerRules.plist", v4);
    v3 = TIGetIndicScriptComposerRules___rules;
    TIGetIndicScriptComposerRules___rules = v2;
  }
}

id TIGetDictionaryData(void *a1)
{
  v1 = a1;
  if (TIGetDictionaryData_onceToken != -1)
  {
    dispatch_once(&TIGetDictionaryData_onceToken, &__block_literal_global_396);
  }

  v2 = TIGetDictionaryData___dictionaryData;
  objc_sync_enter(v2);
  v3 = [TIGetDictionaryData___dictionaryData objectForKeyedSubscript:v1];
  if (!v3)
  {
    v4 = [v1 stringByAppendingString:@".plist"];
    v3 = [&unk_1EF7DC160 objectForKey:v4];
    if (!v3)
    {
      v5 = TIGetTextInputFrameworkPath();
      v3 = TILoadBundlePlist(v4, v5);
    }

    [TIGetDictionaryData___dictionaryData setObject:v3 forKeyedSubscript:v1];
  }

  objc_sync_exit(v2);

  return v3;
}

uint64_t __TIGetDictionaryData_block_invoke()
{
  TIGetDictionaryData___dictionaryData = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

id TIGetLanguageSupportForHardwareKeyboard(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = TIGetHardwareKeyboardSupport();
  v6 = [v5 objectForKey:@"KeyboardNames"];

  if (!v3)
  {
    if ([v4 integerValue] < 1)
    {
      v3 = 0;
    }

    else
    {
      v7 = TIGetHardwareKeyboardSupport();
      v8 = [v7 objectForKey:@"USBCountryCodeMap"];
      v9 = [v4 stringValue];
      v3 = [v8 objectForKey:v9];
    }
  }

  v10 = [v6 objectForKey:v3];
  if (_os_feature_enabled_impl())
  {
    if ([v3 isEqualToString:@"US"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"U.S."))
    {
      v11 = &unk_1EF7CB260;
    }

    else
    {
      v11 = [v3 isEqual:@"Arabic"] ? &unk_1EF7CB278 : MEMORY[0x1E695E0F0];
    }

    if ([v11 count])
    {
      v12 = [v10 mutableCopy];
      v13 = [v10 objectForKeyedSubscript:@"MatchedModes"];
      v14 = [v13 arrayByAddingObjectsFromArray:v11];
      [v12 setObject:v14 forKeyedSubscript:@"MatchedModes"];

      v10 = v12;
    }
  }

  return v10;
}

id TIGetDefaultHWLayoutForKeyboardAndInputMode(void *a1, void *a2)
{
  v3 = a2;
  v4 = TIGetLanguageSupportForHardwareKeyboard(a1, &unk_1EF7DC290);
  v5 = [v4 objectForKey:@"DefaultHWLayouts"];

  if (v5)
  {
    v6 = [v5 objectForKey:v3];
  }

  else
  {
    v7 = TIGetHardwareLayoutsForInputMode(v3);

    v6 = [v7 firstObject];
    v3 = v7;
  }

  return v6;
}

id TILinguisticDataBundlePathForInputMode(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = TIInputModeGetBaseLanguage(v1);
  if (TIInputModeIsTransliteration(v1))
  {
    v4 = v1;

    v3 = v4;
  }

  if ([v1 hasPrefix:@"mul"])
  {
    v5 = v1;

    v3 = v5;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s/RequiredAssets_%@.bundle", "/System/Library/LinguisticData", v3];
  if ([v2 fileExistsAtPath:v6])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id TILinguisticDataAssetDataPathForInputMode(void *a1)
{
  v1 = TILinguisticDataBundlePathForInputMode(a1);
  if (v1)
  {
    v2 = v1;
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/AssetData", v1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id TIBundleForInputMode(void *a1)
{
  v1 = a1;
  v2 = TIBundleForInputMode___cache;
  if (!TIBundleForInputMode___cache)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = TIBundleForInputMode___cache;
    TIBundleForInputMode___cache = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    v6 = TIBundleForInputMode___sentinel;
    TIBundleForInputMode___sentinel = v5;

    v2 = TIBundleForInputMode___cache;
  }

  v7 = [v2 objectForKey:v1];
  v8 = v7;
  if (v7)
  {
    if (v7 == TIBundleForInputMode___sentinel)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9;
  }

  else
  {
    v11 = TIBundlePathForInputMode(v1);
    if (v11 && ([MEMORY[0x1E696AAE8] bundleWithPath:v11], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v12;
      [TIBundleForInputMode___cache setObject:v12 forKey:v1];
    }

    else
    {
      [TIBundleForInputMode___cache setObject:TIBundleForInputMode___sentinel forKey:v1];
      v10 = 0;
    }
  }

  return v10;
}

id TILinguisticDataBundleForInputMode(void *a1)
{
  v1 = a1;
  v2 = TILinguisticDataBundleForInputMode___cache;
  if (!TILinguisticDataBundleForInputMode___cache)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = TILinguisticDataBundleForInputMode___cache;
    TILinguisticDataBundleForInputMode___cache = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    v6 = TILinguisticDataBundleForInputMode___sentinel;
    TILinguisticDataBundleForInputMode___sentinel = v5;

    v2 = TILinguisticDataBundleForInputMode___cache;
  }

  v7 = [v2 objectForKey:v1];
  v8 = v7;
  if (v7)
  {
    if (v7 == TILinguisticDataBundleForInputMode___sentinel)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9;
  }

  else
  {
    v11 = TILinguisticDataBundlePathForInputMode(v1);
    if (v11 && ([MEMORY[0x1E696AAE8] bundleWithPath:v11], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v12;
      [TILinguisticDataBundleForInputMode___cache setObject:v12 forKey:v1];
    }

    else
    {
      [TILinguisticDataBundleForInputMode___cache setObject:TILinguisticDataBundleForInputMode___sentinel forKey:v1];
      v10 = 0;
    }
  }

  return v10;
}

Class TIInputManagerClassForInputMode(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (!TIInputManagerClassForInputMode___default)
  {
    TIInputManagerClassForInputMode___default = @"TIKeyboardInputManager";
  }

  v5 = TICanonicalInputModeName(v3);
  if (a2)
  {
    v6 = TIInputModeGetLanguageWithRegion(v4);
    v7 = [v6 isEqualToString:@"ja_JP"];

    if (v7)
    {
      v8 = TIInputModeGetComponentsFromIdentifier(v4);
      v9 = [v8 objectForKey:@"hw"];
      v10 = [v9 isEqualToString:@"KANA"];

      if (v10)
      {
        v5 = @"ja_JP-Kana";
      }

      else
      {
        v5 = @"ja_JP-Romaji";
      }
    }
  }

  v11 = TIInputModeGetNormalizedIdentifier(v4);
  v12 = TIGetInputModeProperties(v11);
  v13 = [v12 objectForKey:@"UIKeyboardInputManagerClass"];
  if (v13)
  {
    v14 = TIBundleForInputMode(v5);
    v15 = v14;
    if (v14)
    {
      v16 = [v14 classNamed:v13];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = NSClassFromString(TIInputManagerClassForInputMode___default);
  }

  v17 = v16;

  return v16;
}

id TIResourcePathForInputMode(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if ([v7 length])
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v7, v8];
    v12 = TICanonicalInputModeName(v9);
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", v11, v12, v10];
    v14 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = [v14 fileExistsAtPath:v13];

    if (v15)
    {
      v16 = v13;
      v17 = v16;
    }

    else
    {
      v18 = TIInputModeGetLanguageWithRegion(v9);
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", v11, v18, v10];

      v20 = [MEMORY[0x1E696AC08] defaultManager];
      v21 = [v20 fileExistsAtPath:v19];

      if (v21)
      {
        v16 = v19;
        v17 = v16;
      }

      else
      {
        v25 = TIInputModeGetBaseLanguage(v9);
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@.%@", v11, v25, v10];

        v22 = [MEMORY[0x1E696AC08] defaultManager];
        v23 = [v22 fileExistsAtPath:v16];

        if (v23)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }
      }
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id TICachedResourcePathForInputMode(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v6 length])
  {
    if (!TICachedResourcePathForInputMode___cache)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = TICachedResourcePathForInputMode___cache;
      TICachedResourcePathForInputMode___cache = v8;

      v10 = objc_alloc_init(MEMORY[0x1E69E58C0]);
      v11 = TICachedResourcePathForInputMode___sentinel;
      TICachedResourcePathForInputMode___sentinel = v10;

      v12 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v13 = TICachedResourcePathForInputMode___key;
      TICachedResourcePathForInputMode___key = v12;
    }

    v14 = +[TIInputModeLocaleIdentifierOverrideMapping sharedInstance];
    v15 = [v14 overrideLocaleForIdentifier:v6];

    if (v15)
    {
      v16 = v15;

      v6 = v16;
    }

    [TICachedResourcePathForInputMode___key setString:v5];
    [TICachedResourcePathForInputMode___key appendString:v6];
    [TICachedResourcePathForInputMode___key appendString:@"."];
    [TICachedResourcePathForInputMode___key appendString:v7];
    v17 = [TICachedResourcePathForInputMode___cache objectForKey:TICachedResourcePathForInputMode___key];
    v18 = v17;
    if (v17)
    {
      if (v17 == TICachedResourcePathForInputMode___sentinel)
      {
        v19 = 0;
      }

      else
      {
        v19 = v17;
      }

      v20 = v19;
    }

    else
    {
      v21 = TILinguisticDataAssetDataPathForInputMode(v6);
      v20 = TIResourcePathForInputMode(v21, v5, v6, v7);
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = TICachedResourcePathForInputMode___sentinel;
      }

      [TICachedResourcePathForInputMode___cache setObject:v22 forKey:TICachedResourcePathForInputMode___key];
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

id TINgramModelPathForInputMode(void *a1)
{
  v1 = TICachedResourcePathForInputMode(&stru_1EF56D550, a1, @"lm");
  if (v1)
  {
    v2 = v1;
    v3 = [v1 stringByDeletingLastPathComponent];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id TIGetApplicableKeyboardShortcutOverrides(void *a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E695DF90];
  v6 = [v3 objectForKeyedSubscript:@"global"];
  v7 = [v5 dictionaryWithDictionary:v6];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    v27 = v8;
    v28 = v4;
    v26 = *v34;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        if (([v13 isEqualToString:@"global"] & 1) == 0 && objc_msgSend(v4, "hasPrefix:", v13))
        {
          v14 = [v8 objectForKeyedSubscript:v13];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_23:

            v23 = 0;
            v24 = MEMORY[0x1E695E0F8];
            goto LABEL_26;
          }

          v15 = v14;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v14 = v15;
          v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v30;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v30 != v18)
                {
                  objc_enumerationMutation(v14);
                }

                v20 = *(*(&v29 + 1) + 8 * j);
                v21 = [v14 objectForKeyedSubscript:v20];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {

                  v8 = v27;
                  v4 = v28;
                  goto LABEL_23;
                }

                [v7 setObject:v21 forKeyedSubscript:v20];
              }

              v17 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v8 = v27;
          v4 = v28;
          v11 = v26;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if ([v7 count])
  {
    v22 = [v7 copy];
  }

  else
  {
    v22 = MEMORY[0x1E695E0F8];
  }

  v24 = v22;
  v23 = v24;
LABEL_26:

  return v23;
}

BOOL TIKeyboardShouldDisableAutocorrection(void *a1)
{
  v1 = TIInputModeGetNormalizedIdentifier(a1);
  v2 = TIGetInputModeProperties(v1);
  v3 = [v2 objectForKeyedSubscript:@"UIKeyboardDisableAutocorrection"];
  v4 = v3 != 0;

  return v4;
}

id TIGetKeyboardShortcutOverridesForKeyboardLayout(void *a1, int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 length];
  v5 = MEMORY[0x1E695E0F8];
  if (!v4)
  {
    v14 = MEMORY[0x1E695E0F8];
    goto LABEL_27;
  }

  v6 = [v3 stringByReplacingOccurrencesOfString:@" " withString:&stru_1EF56D550];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"." withString:&stru_1EF56D550];
  if (TIGetNormalizedKeyboardLayoutForShortcutTranslation_onceToken != -1)
  {
    dispatch_once(&TIGetNormalizedKeyboardLayoutForShortcutTranslation_onceToken, &__block_literal_global_567);
  }

  v8 = [TIGetNormalizedKeyboardLayoutForShortcutTranslation_keyboardlayout_map objectForKeyedSubscript:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;

  if (TIGetKeyboardShortcutOverridesForKeyboardLayout_once != -1)
  {
    dispatch_once(&TIGetKeyboardShortcutOverridesForKeyboardLayout_once, &__block_literal_global_490);
  }

  if (a2)
  {
    v12 = @"_JIS";
  }

  else
  {
    v12 = &stru_1EF56D550;
  }

  v13 = [v11 stringByAppendingString:v12];
  v14 = [TIGetKeyboardShortcutOverridesForKeyboardLayout___keyboardShortcutOverridesCache objectForKey:v13];
  if (!v14)
  {
    v15 = [MEMORY[0x1E696AAE8] mainBundle];
    v16 = [v15 bundleIdentifier];

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"KeyboardShortcutEquivalents_%@.plist", v13];
    v18 = [&unk_1EF7DC160 objectForKey:v17];
    if (!v18 && a2)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"KeyboardShortcutEquivalents_%@.plist", v11];

      v18 = [&unk_1EF7DC160 objectForKey:v19];
      v17 = v19;
    }

    v20 = TIGetApplicableKeyboardShortcutOverrides(v18, v16);
    if ([v20 count])
    {
      v14 = [v20 copy];
      if (!v20)
      {
LABEL_21:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          *buf = 136315650;
          v23 = "TIGetKeyboardShortcutOverridesForKeyboardLayout";
          v24 = 2112;
          v25 = v11;
          v26 = 2112;
          v27 = v16;
          _os_log_fault_impl(&dword_1863F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s: malformatted plist for keyboard layout(%@) bundleID(%@)", buf, 0x20u);
        }
      }
    }

    else
    {
      v14 = 0;
      if (!v20)
      {
        goto LABEL_21;
      }
    }

    if (!v14)
    {
      v14 = v5;
    }

    [TIGetKeyboardShortcutOverridesForKeyboardLayout___keyboardShortcutOverridesCache setObject:v14 forKey:v13];
  }

LABEL_27:

  return v14;
}

uint64_t __TIGetKeyboardShortcutOverridesForKeyboardLayout_block_invoke()
{
  TIGetKeyboardShortcutOverridesForKeyboardLayout___keyboardShortcutOverridesCache = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

void __TIGetNormalizedKeyboardLayoutForShortcutTranslation_block_invoke()
{
  v0 = TIGetNormalizedKeyboardLayoutForShortcutTranslation_keyboardlayout_map;
  TIGetNormalizedKeyboardLayoutForShortcutTranslation_keyboardlayout_map = &unk_1EF7CF578;
}

id TILoadMergedKeyboardPlistForInputMode(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = TIInputModeGetLanguage(v3);
  v5 = TIInputModeGetRegion(v3);
  v6 = TIInputModeGetVariant(v3);

  v7 = TILoadMergedKeyboardPlistForLocale(v4, v5, v6, a2, 0, 0);

  return v7;
}

id TIKeyboardPopupVariantsForInputMode(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a1;
  v5 = [v3 dictionary];
  v6 = TILoadMergedKeyboardPlistForInputMode(v4, a2);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __TIKeyboardPopupVariantsForInputMode_block_invoke;
    v8[3] = &unk_1E6F4BE90;
    v9 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:v8];
  }

  return v5;
}

void __TIKeyboardPopupVariantsForInputMode_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 hasPrefix:@"Roman-Accent-"])
  {
    [v14 rangeOfString:@"Roman-Accent-" options:8];
    v7 = [v14 substringFromIndex:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 objectForKey:@"Strings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v11 = [v9 stringByTrimmingCharactersInSet:v10];

      v12 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v13 = [v11 componentsSeparatedByCharactersInSet:v12];

      if ([v13 count])
      {
        [*(a1 + 32) setObject:v13 forKey:v7];
      }
    }
  }
}

BOOL TIInputModeWantsMultilingualUnionOVS(void *a1)
{
  v1 = TIInputModeGetNormalizedIdentifier(a1);
  v2 = TIGetInputModeProperties(v1);
  v3 = [v2 objectForKeyedSubscript:@"UIKeyboardWantsMultilingualUnionOVS"];
  v4 = v3 != 0;

  return v4;
}

uint64_t TIInputModeUseMorphemeLevelLexicon(void *a1)
{
  v1 = a1;
  if (_os_feature_enabled_impl())
  {
    v2 = TIGetInputModeProperties(v1);
    v3 = [v2 objectForKey:@"UIKeyboardUseMorphemeLevelLexicon"];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 BOOLValue];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id GetInputModeWithHardwareLayoutIfSupported(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 stringByReplacingOccurrencesOfString:@" " withString:&stru_1EF56D550];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = TIGetHardwareLayoutsForInputMode(v3);
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 stringByReplacingOccurrencesOfString:@" " withString:&stru_1EF56D550];
        if ([v11 isEqualToString:v4])
        {
          v12 = [v3 stringByAppendingFormat:@"@hw=%@", v10];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

id _TIValueForCGRect(double a1, double a2, double a3, double a4)
{
  *v6 = a1;
  *&v6[1] = a2;
  *&v6[2] = a3;
  *&v6[3] = a4;
  v4 = [MEMORY[0x1E696B098] valueWithBytes:v6 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

  return v4;
}

uint64_t __Block_byref_object_copy__2972(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *TIKeyboardCandidateTypingEngineTypeToString(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"Other";
  }

  else
  {
    return off_1E6F4C160[a1];
  }
}

uint64_t TI_USER_DIRECTORY()
{
  result = s_user_directory;
  if (!s_user_directory)
  {
    if (TI_USER_DIRECTORY_onceToken != -1)
    {
      dispatch_once(&TI_USER_DIRECTORY_onceToken, &__block_literal_global_4106);
    }

    return TI_USER_DIRECTORY_default_user_directory;
  }

  return result;
}

void *__getCPSharedResourcesDirectorySymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!AppSupportLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __AppSupportLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E6F4C1E8;
    v7 = 0;
    AppSupportLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = AppSupportLibraryCore_frameworkLibrary;
    if (AppSupportLibraryCore_frameworkLibrary)
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

  v2 = AppSupportLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "CPSharedResourcesDirectory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCPSharedResourcesDirectorySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppSupportLibraryCore_frameworkLibrary = result;
  return result;
}

void TI_SET_USER_DIRECTORY(CFTypeRef cf)
{
  if (s_user_directory != cf)
  {
    if (s_user_directory)
    {
      CFRelease(s_user_directory);
      s_user_directory = 0;
    }

    if (cf)
    {
      s_user_directory = CFRetain(cf);
    }
  }
}

void *__getMKBGetDeviceLockStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBGetDeviceLockState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBGetDeviceLockStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MobileKeyBagLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MobileKeyBagLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E6F4C200;
    v5 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
    v1 = v3[0];
    v0 = MobileKeyBagLibraryCore_frameworkLibrary;
    if (MobileKeyBagLibraryCore_frameworkLibrary)
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

  return MobileKeyBagLibraryCore_frameworkLibrary;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileKeyBagLibrary();
  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

BOOL TI_SET_PROTECTION_CLASS_C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:a1 isDirectory:0 relativeToURL:0];
  v2 = *MEMORY[0x1E695DAE8];
  v3 = *MEMORY[0x1E695DAF0];
  v7 = 0;
  [v1 setResourceValue:v2 forKey:v3 error:&v7];
  v4 = v7;
  if (v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [v4 description];
    *buf = 138412290;
    v9 = v6;
    _os_log_error_impl(&dword_1863F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "couldn't set protection class, error: %@", buf, 0xCu);
  }

  return v4 == 0;
}

uint64_t TI_IS_FILE_CLASS_C(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = 0;
  v3 = [v2 attributesOfItemAtPath:v1 error:&v7];

  v4 = [v3 objectForKey:*MEMORY[0x1E696A3A0]];
  v5 = [v4 isEqualToString:*MEMORY[0x1E696A388]];

  return v5;
}

uint64_t TISolariumEnabled()
{
  if (TISolariumEnabled_onceToken != -1)
  {
    dispatch_once(&TISolariumEnabled_onceToken, &__block_literal_global_4);
  }

  return TISolariumEnabled_result;
}

id _TIQueueBackground()
{
  if (_TIQueueBackground::onceToken != -1)
  {
    dispatch_once(&_TIQueueBackground::onceToken, &__block_literal_global_4926);
  }

  v1 = _TIQueueBackground::sQueue;

  return v1;
}

id _TIQueueLow()
{
  if (_TIQueueLow::onceToken != -1)
  {
    dispatch_once(&_TIQueueLow::onceToken, &__block_literal_global_2);
  }

  v1 = _TIQueueLow::sQueue;

  return v1;
}

id _TIQueueUserInitiated()
{
  if (_TIQueueUserInitiated::onceToken != -1)
  {
    dispatch_once(&_TIQueueUserInitiated::onceToken, &__block_literal_global_4_4928);
  }

  v1 = _TIQueueUserInitiated::sQueue;

  return v1;
}

unint64_t TIDispatchCount()
{
  if (_block_count(void)::once_token != -1)
  {
    dispatch_once(&_block_count(void)::once_token, &__block_literal_global_7);
  }

  return atomic_load(&_block_count(void)::count);
}

void TIDispatchWaitForAllBlocks()
{
  v0 = objc_autoreleasePoolPush();
  v1 = *MEMORY[0x1E695D918];
  while (1)
  {
    if (_block_count(void)::once_token != -1)
    {
      dispatch_once(&_block_count(void)::once_token, &__block_literal_global_7);
    }

    v2 = atomic_load(&_block_count(void)::count);
    if (v2 < 1)
    {
      break;
    }

    v3 = [MEMORY[0x1E695DFD0] currentRunLoop];
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.01];
    [v3 acceptInputForMode:v1 beforeDate:v4];
  }

  objc_autoreleasePoolPop(v0);
}

id _assistantInternalQueue()
{
  if (_assistantInternalQueue_onceToken != -1)
  {
    dispatch_once(&_assistantInternalQueue_onceToken, &__block_literal_global_5020);
  }

  v1 = _assistantInternalQueue___xpc_queue;

  return v1;
}

void ___assistantInternalQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.TextInput.rdt", v2);
  v1 = _assistantInternalQueue___xpc_queue;
  _assistantInternalQueue___xpc_queue = v0;
}

__CFString *TINumberPadGetEncodedStringAllowingUnmappedCharacters(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = [a2 localeIdentifier];
  v7 = TISupportedLocaleIdentifierFromLocaleIdentifier(v6);
  if (v7 == TINumberPadEncodingMappings_lastLocaleIdentifier)
  {
    v12 = TINumberPadEncodingMappings_numberPadEncodingMappings;
  }

  else
  {
    v8 = TIConvertDisplayMappingsToEncodingMappings(@"en");
    v9 = [v8 mutableCopy];
    v10 = TINumberPadEncodingMappings_numberPadEncodingMappings;
    TINumberPadEncodingMappings_numberPadEncodingMappings = v9;

    v11 = TIConvertDisplayMappingsToEncodingMappings(v7);
    [TINumberPadEncodingMappings_numberPadEncodingMappings addEntriesFromDictionary:v11];
    objc_storeStrong(&TINumberPadEncodingMappings_lastLocaleIdentifier, v7);
    v12 = [TINumberPadEncodingMappings_numberPadEncodingMappings copy];
  }

  if (v12)
  {
    v13 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v14 = [v5 length];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __TINumberPadGetEncodedStringAllowingUnmappedCharacters_block_invoke;
    v18[3] = &unk_1E6F4C318;
    v19 = v13;
    v20 = v12;
    v21 = a3;
    v15 = v13;
    [v5 _enumerateLongCharactersInRange:0 usingBlock:{v14, v18}];
    v16 = [v15 copy];
  }

  else
  {
    v16 = &stru_1EF56D550;
  }

  return v16;
}

id TISupportedLocaleIdentifierFromLocaleIdentifier(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length])
  {
    if (TISupportedLocaleIdentifierFromLocaleIdentifier___onceToken != -1)
    {
      dispatch_once(&TISupportedLocaleIdentifierFromLocaleIdentifier___onceToken, &__block_literal_global_5065);
    }

    v2 = MEMORY[0x1E695DF58];
    v3 = TISupportedLocaleIdentifierFromLocaleIdentifier___validLocales;
    v10[0] = v1;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v5 = [v2 matchedLanguagesFromAvailableLanguages:v3 forPreferredLanguages:v4];
    v6 = [v5 firstObject];

    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v1;
    }

    v8 = v7;
  }

  else
  {
    v8 = v1;
  }

  return v8;
}

id TIConvertDisplayMappingsToEncodingMappings(void *a1)
{
  v1 = MEMORY[0x1E695DF90];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = TISupportedLocaleIdentifierFromLocaleIdentifier(v2);

  v5 = TINumberPadDisplayMappings(v4);
  v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v4];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __TIConvertDisplayMappingsToEncodingMappings_block_invoke;
  v14 = &unk_1E6F4C390;
  v15 = v3;
  v16 = v6;
  v7 = v6;
  v8 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:&v11];
  v9 = [v8 copy];

  return v9;
}

uint64_t __TINumberPadGetEncodedStringAllowingUnmappedCharacters_block_invoke(uint64_t a1, uint64_t c)
{
  v2 = c;
  if (u_charType(c) == 9)
  {
    NumericValue = u_getNumericValue(v2);
    if (NumericValue != ceil(NumericValue) || NumericValue < 0.0 || NumericValue > 9.0)
    {
      v2 = v2;
    }

    else
    {
      v2 = (NumericValue + 48.0);
    }
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", v2];
  v17 = v7;
  if ((v2 - 48) < 0xA || v2 <= 0x3B && ((1 << v2) & 0x8001C0900000000) != 0)
  {
    v8 = *(a1 + 32);
    v9 = v7;
LABEL_15:
    v10 = [v8 appendString:v9];
LABEL_16:
    v11 = v17;
    goto LABEL_17;
  }

  v12 = [*(a1 + 40) objectForKey:v7];
  if (v12)
  {
    v13 = v12;
    [*(a1 + 32) appendString:v12];
LABEL_24:

    goto LABEL_16;
  }

  v13 = [v17 stringByApplyingTransform:*MEMORY[0x1E695DA48] reverse:0];
  v14 = [*(a1 + 40) objectForKey:v13];
  if (v14)
  {
    v15 = v14;
    [*(a1 + 32) appendString:v14];

    goto LABEL_24;
  }

  v11 = v17;
  if (*(a1 + 48) == 1)
  {
    v8 = *(a1 + 32);
    v9 = v17;
    goto LABEL_15;
  }

LABEL_17:

  return MEMORY[0x1EEE66BB8](v10, v11);
}

void __TIConvertDisplayMappingsToEncodingMappings_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 length];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __TIConvertDisplayMappingsToEncodingMappings_block_invoke_2;
  v9[3] = &unk_1E6F4C368;
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = *(a1 + 40);
  v8 = v5;
  [v6 enumerateSubstringsInRange:0 options:v7 usingBlock:{2, v9}];
}

void __TIConvertDisplayMappingsToEncodingMappings_block_invoke_2(void *a1, void *a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v5 = a2;
  [v4 setObject:v3 forKeyedSubscript:v5];
  v7 = a1[4];
  v6 = a1[5];
  v8 = [v5 lowercaseStringWithLocale:a1[6]];

  [v7 setObject:v6 forKeyedSubscript:v8];
}

void __TISupportedLocaleIdentifierFromLocaleIdentifier_block_invoke()
{
  v0 = +[TIInputModeController sharedInputModeController];
  v1 = [v0 supportedInputModeIdentifiers];

  v2 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v1, "count")}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __TISupportedLocaleIdentifierFromLocaleIdentifier_block_invoke_2;
  v6[3] = &unk_1E6F4C340;
  v7 = v2;
  v3 = v2;
  [v1 enumerateObjectsUsingBlock:v6];
  v4 = [v3 allObjects];
  v5 = TISupportedLocaleIdentifierFromLocaleIdentifier___validLocales;
  TISupportedLocaleIdentifierFromLocaleIdentifier___validLocales = v4;
}

uint64_t __TISupportedLocaleIdentifierFromLocaleIdentifier_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = TIInputModeGetLanguageWithRegion(a2);
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

uint64_t _recordTypeForEventRecordHeader(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ([v2 isEqualToString:@"Completions"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"Autocorrection"])
  {
    v3 = 2;
  }

  else if ([v2 isEqualToString:@"Predictions"])
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id _parseRawCandidateGroupsFromString(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v1];
  v12 = 0;
  v4 = [v3 scanUpToString:@"\n[" intoString:&v12];
  v5 = v12;
  v6 = v5;
  if (v4)
  {
    do
    {
      v7 = [TITraceLogCandidateGroup groupFromGroupString:v6];
      if (v7)
      {
        [v2 addObject:v7];
      }

      v12 = v6;
      v8 = [v3 scanUpToString:@"\n[" intoString:&v12];
      v9 = v12;

      v6 = v9;
    }

    while ((v8 & 1) != 0);
  }

  else
  {
    v9 = v5;
  }

  v10 = [v2 copy];

  return v10;
}

id _parseRemovedCandidatesGroupFromString(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v1];
  v12 = 0;
  v4 = [v3 scanUpToString:@"\n" intoString:&v12];
  v5 = v12;
  v6 = v5;
  if (v4)
  {
    do
    {
      v7 = [TITraceLogCandidate candidateFromRemovedCandidateString:v6];
      if (v7)
      {
        [v2 addObject:v7];
      }

      v12 = v6;
      v8 = [v3 scanUpToString:@"\n" intoString:&v12];
      v9 = v12;

      v6 = v9;
    }

    while ((v8 & 1) != 0);
  }

  else
  {
    v9 = v5;
  }

  v10 = [v2 copy];

  return v10;
}

id _parseFinalCandidatesGroupFromString(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:v1];
  v12 = 0;
  v4 = [v3 scanUpToString:@"\n" intoString:&v12];
  v5 = v12;
  v6 = v5;
  if (v4)
  {
    do
    {
      v7 = [TITraceLogCandidate candidateFromFinalCandidateString:v6];
      if (v7)
      {
        [v2 addObject:v7];
      }

      v12 = v6;
      v8 = [v3 scanUpToString:@"\n" intoString:&v12];
      v9 = v12;

      v6 = v9;
    }

    while ((v8 & 1) != 0);
  }

  else
  {
    v9 = v5;
  }

  v10 = [v2 copy];

  return v10;
}

__CFString *autoCorrectionTypeAsString(int a1)
{
  if (a1)
  {
    v2 = [&stru_1EF56D550 stringByAppendingString:@"All|"];
    if ((a1 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = &stru_1EF56D550;
  if ((a1 & 2) != 0)
  {
LABEL_5:
    v3 = [(__CFString *)v2 stringByAppendingString:@"Caps|"];

    v2 = v3;
  }

LABEL_6:
  if ((a1 & 4) != 0)
  {
    v6 = [(__CFString *)v2 stringByAppendingString:@"Dia|"];

    v2 = v6;
    if ((a1 & 8) == 0)
    {
LABEL_8:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = [(__CFString *)v2 stringByAppendingString:@"Pred|"];

  v2 = v7;
  if ((a1 & 0x10) == 0)
  {
LABEL_9:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  v8 = [(__CFString *)v2 stringByAppendingString:@"Spc|"];

  v2 = v8;
  if ((a1 & 0x20) == 0)
  {
LABEL_10:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  v9 = [(__CFString *)v2 stringByAppendingString:@"Retro|"];

  v2 = v9;
  if ((a1 & 0x40) == 0)
  {
LABEL_11:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  v10 = [(__CFString *)v2 stringByAppendingString:@"Adapt|"];

  v2 = v10;
  if ((a1 & 0x80) == 0)
  {
LABEL_12:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  v11 = [(__CFString *)v2 stringByAppendingString:@"MultiPred|"];

  v2 = v11;
  if ((a1 & 0x100) == 0)
  {
LABEL_13:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  v12 = [(__CFString *)v2 stringByAppendingString:@"Recent|"];

  v2 = v12;
  if ((a1 & 0x200) == 0)
  {
LABEL_14:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  v13 = [(__CFString *)v2 stringByAppendingString:@"Learned|"];

  v2 = v13;
  if ((a1 & 0x400) == 0)
  {
LABEL_15:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  v14 = [(__CFString *)v2 stringByAppendingString:@"Transposition|"];

  v2 = v14;
  if ((a1 & 0x800) == 0)
  {
LABEL_16:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  v15 = [(__CFString *)v2 stringByAppendingString:@"Insert|"];

  v2 = v15;
  if ((a1 & 0x1000) == 0)
  {
LABEL_17:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  v16 = [(__CFString *)v2 stringByAppendingString:@"Skip|"];

  v2 = v16;
  if ((a1 & 0x2000) == 0)
  {
LABEL_18:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  v17 = [(__CFString *)v2 stringByAppendingString:@"NamedEntity|"];

  v2 = v17;
  if ((a1 & 0x4000) == 0)
  {
LABEL_19:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  v18 = [(__CFString *)v2 stringByAppendingString:@"Near|"];

  v2 = v18;
  if ((a1 & 0x8000) == 0)
  {
LABEL_20:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  v19 = [(__CFString *)v2 stringByAppendingString:@"Subst|"];

  v2 = v19;
  if ((a1 & 0x10000) == 0)
  {
LABEL_21:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

LABEL_43:
  v20 = [(__CFString *)v2 stringByAppendingString:@"HitTest|"];

  v2 = v20;
  if ((a1 & 0x20000) == 0)
  {
LABEL_22:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_45;
  }

LABEL_44:
  v21 = [(__CFString *)v2 stringByAppendingString:@"CPCompletion|"];

  v2 = v21;
  if ((a1 & 0x40000) == 0)
  {
LABEL_23:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_45:
  v22 = [(__CFString *)v2 stringByAppendingString:@"MultiLingual|"];

  v2 = v22;
  if ((a1 & 0x80000) == 0)
  {
LABEL_24:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_46:
  v23 = [(__CFString *)v2 stringByAppendingString:@"CP|"];

  v2 = v23;
  if ((a1 & 0x100000) == 0)
  {
LABEL_25:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_47:
  v24 = [(__CFString *)v2 stringByAppendingString:@"SupplLex|"];

  v2 = v24;
  if ((a1 & 0x200000) != 0)
  {
LABEL_26:
    v4 = [(__CFString *)v2 stringByAppendingString:@"Join|"];

    v2 = v4;
  }

LABEL_27:
  if ([(__CFString *)v2 length])
  {
    v5 = [(__CFString *)v2 substringToIndex:[(__CFString *)v2 length]- 1];
  }

  else
  {
    v5 = @"NONE";
  }

  return v5;
}

__CFString *TIStatisticCandidateSourceAsString(int a1)
{
  if (!a1)
  {
    v4 = @"Unknown";
    goto LABEL_24;
  }

  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if ((a1 & 0x8000) != 0)
  {
    [v2 addObject:@"PrimaryStatic"];
    if ((a1 & 0x20000) == 0)
    {
LABEL_4:
      if ((a1 & 0x10000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_29;
    }
  }

  else if ((a1 & 0x20000) == 0)
  {
    goto LABEL_4;
  }

  [v3 addObject:@"SecondaryStatic"];
  if ((a1 & 0x10000) == 0)
  {
LABEL_5:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v3 addObject:@"PrimaryDynamic"];
  if ((a1 & 0x40000) == 0)
  {
LABEL_6:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 addObject:@"SecondaryDynamic"];
  if ((a1 & 0x40) == 0)
  {
LABEL_7:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 addObject:@"PQT"];
  if ((a1 & 0x400) == 0)
  {
LABEL_8:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 addObject:@"Supplemental"];
  if ((a1 & 0x10) == 0)
  {
LABEL_9:
    if ((a1 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 addObject:@"NamedEntity"];
  if ((a1 & 8) == 0)
  {
LABEL_10:
    if ((a1 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 addObject:@"AddressBook"];
  if ((a1 & 4) == 0)
  {
LABEL_11:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 addObject:@"TextReplacement"];
  if ((a1 & 0x800) == 0)
  {
LABEL_12:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 addObject:@"AppNames"];
  if ((a1 & 0x2000) == 0)
  {
LABEL_13:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 addObject:@"SmartResponse"];
  if ((a1 & 0x20) == 0)
  {
LABEL_14:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 addObject:@"OOV"];
  if ((a1 & 0x80) == 0)
  {
LABEL_15:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 addObject:@"Offensive"];
  if ((a1 & 0x100) == 0)
  {
LABEL_16:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 addObject:@"Vulgar"];
  if ((a1 & 0x200) == 0)
  {
LABEL_17:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

LABEL_42:
    [v3 addObject:@"Emoji"];
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_41:
  [v3 addObject:@"Sensitive"];
  if ((a1 & 0x4000) != 0)
  {
    goto LABEL_42;
  }

LABEL_18:
  if ((a1 & 0x80000) != 0)
  {
LABEL_19:
    [v3 addObject:@"InlineCompletion"];
  }

LABEL_20:
  if ((a1 & 0xFFF00003) != 0)
  {
    [v3 addObject:@"Unexpected"];
  }

  v4 = [v3 componentsJoinedByString:{@", "}];

LABEL_24:

  return v4;
}

__CFString *candidateSourceAsString(int a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:11];
  v3 = v2;
  if ((a1 & 0x400) != 0)
  {
    [v2 addObject:@"Supplemental"];
  }

  if ((a1 & 0x28000) != 0)
  {
    [v3 addObject:@"Static"];
  }

  if ((a1 & 0x40000) != 0)
  {
    [v3 addObject:@"Dynamic"];
    if ((a1 & 4) == 0)
    {
LABEL_7:
      if ((a1 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_7;
  }

  [v3 addObject:@"TextReplc"];
  if ((a1 & 8) == 0)
  {
LABEL_8:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 addObject:@"Contact"];
  if ((a1 & 0x10) == 0)
  {
LABEL_9:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v3 addObject:@"NamedEntitity"];
  if ((a1 & 0x20) == 0)
  {
LABEL_10:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 addObject:@"OOV"];
  if ((a1 & 0x40) == 0)
  {
LABEL_11:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 addObject:@"PQT"];
  if ((a1 & 0x80) == 0)
  {
LABEL_12:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 addObject:@"Offensive"];
  if ((a1 & 0x100) == 0)
  {
LABEL_13:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_24:
  [v3 addObject:@"Vulgar"];
  if ((a1 & 0x200) != 0)
  {
LABEL_14:
    [v3 addObject:@"Sensitive"];
  }

LABEL_15:
  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:@"|"];
  }

  else
  {
    v4 = @"None";
  }

  return v4;
}

uint64_t __Block_byref_object_copy__7142(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id TIFeatureUsageAllowedValues()
{
  v2[12] = *MEMORY[0x1E69E9840];
  v2[0] = kFeatureUsageStateInsufficientData;
  v2[1] = kFeatureUsageStateUnknown;
  v2[2] = kFeatureUsageStateUnsupported;
  v2[3] = kFeatureUsageStateUnaware;
  v2[4] = kFeatureUsageStateInactive;
  v2[5] = kFeatureUsageStateActiveVeryLow;
  v2[6] = kFeatureUsageStateActiveLow;
  v2[7] = kFeatureUsageStateActiveMedium;
  v2[8] = kFeatureUsageStateActiveHigh;
  v2[9] = kFeatureUsageStateActiveVeryHigh;
  v2[10] = kFeatureUsageStateActiveUnusuallyHigh;
  v2[11] = kFeatureUsageStateRejected;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:12];

  return v0;
}

uint64_t __InputAnalyticsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  InputAnalyticsLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getIAEventDispatcherClass_block_invoke(uint64_t a1)
{
  InputAnalyticsLibraryCore();
  result = objc_getClass("IAEventDispatcher");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAEventDispatcherClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id keyboardui_system_get_log()
{
  if (keyboardui_system_get_log_onceToken != -1)
  {
    dispatch_once(&keyboardui_system_get_log_onceToken, &__block_literal_global_7_8703);
  }

  v1 = keyboardui_system_get_log_log;

  return v1;
}

uint64_t __keyboardui_system_get_log_block_invoke()
{
  v0 = os_log_create("com.apple.TextInput", "KeyboardUISignpostsSystem");
  v1 = keyboardui_system_get_log_log;
  keyboardui_system_get_log_log = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __Block_byref_object_copy__72(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void *__Block_byref_object_copy__9000(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void *std::__tree<NSHolder<TIInputContextEntry>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getMCFeatureAutoCorrectionAllowedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCFeatureAutoCorrectionAllowed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCFeatureAutoCorrectionAllowedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMCFeatureKeyboardMathSolvingAllowedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCFeatureKeyboardMathSolvingAllowed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCFeatureKeyboardMathSolvingAllowedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMCFeatureContinuousPathKeyboardAllowed()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMCFeatureContinuousPathKeyboardAllowedSymbolLoc_ptr;
  v8 = getMCFeatureContinuousPathKeyboardAllowedSymbolLoc_ptr;
  if (!getMCFeatureContinuousPathKeyboardAllowedSymbolLoc_ptr)
  {
    v1 = ManagedConfigurationLibrary();
    v6[3] = dlsym(v1, "MCFeatureContinuousPathKeyboardAllowed");
    getMCFeatureContinuousPathKeyboardAllowedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (v0)
  {
    v2 = *v0;

    return v2;
  }

  else
  {
    dlerror();
    v4 = abort_report_np();
    return __getMCFeatureContinuousPathKeyboardAllowedSymbolLoc_block_invoke(v4);
  }
}

void *__getMCFeatureContinuousPathKeyboardAllowedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCFeatureContinuousPathKeyboardAllowed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCFeatureContinuousPathKeyboardAllowedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMCFeatureSmartPunctuationAllowedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCFeatureSmartPunctuationAllowed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCFeatureSmartPunctuationAllowedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMCFeatureSpellCheckAllowedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCFeatureSpellCheckAllowed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCFeatureSpellCheckAllowedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMCFeaturePredictiveKeyboardAllowedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCFeaturePredictiveKeyboardAllowed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCFeaturePredictiveKeyboardAllowedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCloudSettingsManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CloudSettingsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CloudSettingsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E6F4D510;
    v6 = 0;
    CloudSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (CloudSettingsLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CloudSettingsManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getCloudSettingsManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getNPSManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __NanoPreferencesSyncLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E6F4D528;
    v6 = 0;
    NanoPreferencesSyncLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (NanoPreferencesSyncLibraryCore_frameworkLibrary)
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
  result = objc_getClass("NPSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  getNPSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}