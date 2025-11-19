@interface UIKeyboardStateManager
@end

@implementation UIKeyboardStateManager

void __53___UIKeyboardStateManager_updateDelegatePasteSupport__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/AvatarKit.framework"];
  v0 = [v1 bundleIdentifier];

  if (!v0)
  {
    _MergedGlobals_1036 = 1;
  }
}

void __51___UIKeyboardStateManager__requestInputManagerSync__block_invoke()
{
  v0 = [&__block_literal_global_1944 copy];
  v1 = qword_1ED49D5B0;
  qword_1ED49D5B0 = v0;
}

void __65___UIKeyboardStateManager_generateAutofillCandidateByAddingTask___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) usesCandidateSelection];
  v4 = *(a1 + 32);
  if (v3)
  {
    if (([v4 _hasMarkedText] & 1) == 0 && (objc_msgSend(*(a1 + 32), "committingCandidate") & 1) == 0)
    {
      [*(a1 + 32) generateCandidatesWithOptions:2];
    }

    [v5 returnExecutionToParent];
  }

  else
  {
    [v4 generateAutocorrectionWithExecutionContext:v5];
  }
}

void __65___UIKeyboardStateManager_generateAutofillCandidateByAddingTask___block_invoke_2()
{
  v0 = [&__block_literal_global_423 copy];
  v1 = qword_1ED49CF40;
  qword_1ED49CF40 = v0;
}

void __65___UIKeyboardStateManager_generateAutofillCandidateByAddingTask___block_invoke_4()
{
  v0 = [&__block_literal_global_429 copy];
  v1 = qword_1ED49CF50;
  qword_1ED49CF50 = v0;
}

void __53___UIKeyboardStateManager_updateDefaultsWithResults___block_invoke(uint64_t a1)
{
  v72[6] = *MEMORY[0x1E69E9840];
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  v52 = *MEMORY[0x1E69D9828];
  v58 = [v3 BOOLForPreferenceKey:?];

  v4 = *(a1 + 48);
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v6 = [v5 preferencesActions];
  v7 = v6;
  v50 = *MEMORY[0x1E69D9800];
  v51 = *MEMORY[0x1E69D9748];
  if (v4)
  {
    v8 = *MEMORY[0x1E69D9748];
  }

  else
  {
    v8 = *MEMORY[0x1E69D9800];
  }

  v57 = [v6 BOOLForPreferenceKey:v8];

  v9 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v10 = [v9 preferencesActions];
  v11 = *MEMORY[0x1E69D9710];
  v56 = [v10 BOOLForPreferenceKey:*MEMORY[0x1E69D9710]];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 784));
  if ([WeakRetained rivenPreference])
  {
    v13 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v14 = [v13 preferencesActions];
    v15 = [v14 valueForPreferenceKey:*MEMORY[0x1E69D9C38]];
    [v15 floatValue];
    v55 = v16 > 0.00000011921;
  }

  else
  {
    v55 = 0;
  }

  v17 = *(a1 + 48);
  v18 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v19 = [v18 preferencesActions];
  v20 = v19;
  v21 = *MEMORY[0x1E69D9770];
  v22 = *MEMORY[0x1E69D98A8];
  if (v17)
  {
    v23 = *MEMORY[0x1E69D9770];
  }

  else
  {
    v23 = *MEMORY[0x1E69D98A8];
  }

  v54 = [v19 BOOLForPreferenceKey:v23];

  v24 = *(a1 + 48);
  v25 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v26 = [v25 preferencesActions];
  v27 = v26;
  v28 = *MEMORY[0x1E69D9750];
  v29 = *MEMORY[0x1E69D9808];
  if (v24)
  {
    v30 = *MEMORY[0x1E69D9750];
  }

  else
  {
    v30 = *MEMORY[0x1E69D9808];
  }

  v31 = [v26 BOOLForPreferenceKey:v30];

  v32 = "_UIMonochromaticTreatment";
  if (*(a1 + 40))
  {
    v53 = v31;
    v33 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v34 = [v33 preferencesActions];
    v49 = *MEMORY[0x1E69D9868];
    v35 = [v34 valueForPreferenceKey:?];

    if (*(a1 + 48) == 1)
    {
      v71[0] = v52;
      v36 = [MEMORY[0x1E696AD98] numberWithBool:v58];
      v72[0] = v36;
      v71[1] = v51;
      v37 = [MEMORY[0x1E696AD98] numberWithBool:v57];
      v72[1] = v37;
      v71[2] = v11;
      v38 = [MEMORY[0x1E696AD98] numberWithBool:v56];
      v72[2] = v38;
      v71[3] = *MEMORY[0x1E69D9C38];
      v39 = [MEMORY[0x1E696AD98] numberWithBool:v55];
      v72[3] = v39;
      v71[4] = v21;
      v40 = [MEMORY[0x1E696AD98] numberWithBool:v54];
      v72[4] = v40;
      v71[5] = v28;
      v41 = [MEMORY[0x1E696AD98] numberWithBool:v53];
      v72[5] = v41;
      v42 = MEMORY[0x1E695DF20];
      v43 = v72;
      v44 = v71;
    }

    else
    {
      v69[0] = v52;
      v36 = [MEMORY[0x1E696AD98] numberWithBool:v58];
      v70[0] = v36;
      v69[1] = v50;
      v37 = [MEMORY[0x1E696AD98] numberWithBool:v57];
      v70[1] = v37;
      v69[2] = v11;
      v38 = [MEMORY[0x1E696AD98] numberWithBool:v56];
      v70[2] = v38;
      v69[3] = *MEMORY[0x1E69D9C38];
      v39 = [MEMORY[0x1E696AD98] numberWithBool:v55];
      v70[3] = v39;
      v69[4] = v22;
      v40 = [MEMORY[0x1E696AD98] numberWithBool:v54];
      v70[4] = v40;
      v69[5] = v29;
      v41 = [MEMORY[0x1E696AD98] numberWithBool:v53];
      v70[5] = v41;
      v42 = MEMORY[0x1E695DF20];
      v43 = v70;
      v44 = v69;
    }

    v45 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:6];
    v46 = [v45 mutableCopy];

    if (v35)
    {
      [v46 setValue:v35 forKey:v49];
    }

    block[0] = MEMORY[0x1E69E9820];
    v32 = "_UIMonochromaticTreatment";
    block[1] = 3221225472;
    block[2] = __53___UIKeyboardStateManager_updateDefaultsWithResults___block_invoke_2;
    block[3] = &unk_1E70F4A50;
    v47 = *(a1 + 40);
    v67 = v46;
    v68 = v47;
    v48 = v46;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    LOBYTE(v31) = v53;
  }

  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = *(v32 + 235);
  v59[2] = __53___UIKeyboardStateManager_updateDefaultsWithResults___block_invoke_3;
  v59[3] = &unk_1E70FD0A0;
  v59[4] = *(a1 + 32);
  v60 = v58;
  v61 = v56;
  v62 = v31;
  v63 = v57;
  v64 = v55;
  v65 = v54;
  dispatch_async(MEMORY[0x1E69E96A0], v59);
}

void __53___UIKeyboardStateManager_updateDefaultsWithResults___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 784));
  [objc_opt_class() suppressSetPersistentOffset:1];

  *(*(a1 + 32) + 524) = *(a1 + 40);
  v3 = *(a1 + 41);
  v4 = objc_loadWeakRetained((*(a1 + 32) + 784));
  [v4 setAutomaticMinimizationEnabled:v3];

  *(*(a1 + 32) + 529) = *(a1 + 42);
  [*(*(a1 + 32) + 632) setAutocorrectionEnabled:{objc_msgSend(*(a1 + 32), "_updateAutocorrectionPreferenceForTraitsWithCurrentPreference:") != 0}];
  [*(a1 + 32) setAutocorrectSpellingEnabled:*(a1 + 42)];
  *(*(a1 + 32) + 528) = *(a1 + 43);
  [*(a1 + 32) updateInputManagerAutocapitalizationType];
  [*(*(a1 + 32) + 632) setInlineCompletionEnabled:{objc_msgSend(*(a1 + 32), "isInlineCompletionEnabled")}];
  [*(a1 + 32) takeTextInputTraitsFromDelegate];
  v5 = [*(a1 + 32) UILanguagePreference];
  v6 = [v5 copy];
  v7 = UIKeyboardCurrentUILanguage;
  UIKeyboardCurrentUILanguage = v6;

  if (!+[UIKeyboard usesInputSystemUI])
  {
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v9 = [v8 isInOnenessSceneAndRTIEnabled];

    if ((v9 & 1) == 0)
    {
      v10 = +[UIKeyboardInputModeController sharedInputModeController];
      v11 = [v10 activeInputModes];
      v12 = [v10 currentInputMode];
      v13 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v14 = [v13 preferencesActions];
      v15 = [v14 valueForPreferenceKey:*MEMORY[0x1E69D9868]];

      if ([v11 containsObject:v12])
      {
        v16 = [v12 identifier];
        v17 = [v15 isEqualToString:v16];
      }

      else
      {
        v17 = 0;
      }

      v18 = [v10 inputModeContextIdentifier];
      if (v18)
      {
        v19 = 1;
      }

      else
      {
        v19 = [*(a1 + 32) shouldLoadAutofillSignUpInputViewController];
      }

      v20 = [*(a1 + 32) delegate];

      if (!v20 || (v19 & 1) != 0)
      {
        if ((v17 | v19))
        {
          v23 = [v10 identifiersFromInputModes:v11];
          UIKeyboardSetActiveInputModes(v23);
        }

        else
        {
          [*(a1 + 32) recomputeActiveInputModesWithExtensions:1 allowNonLinguisticInputModes:1];
        }
      }

      else
      {
        [*(a1 + 32) recomputeActiveInputModesWithExtensions:1 allowNonLinguisticInputModes:1];
        if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
        {
          v21 = [v10 currentInputMode];
          v22 = [v21 isEqual:v12];

          if ((v22 & 1) == 0)
          {
            [*(a1 + 32) syncInputManagerToKeyboardState];
          }
        }
      }
    }
  }

  v24 = *(a1 + 32);
  if (v24[176] == 1)
  {
    v25 = +[UIKeyboardCache sharedInstance];
    v26 = UIKeyboardActiveInputModes;
    [v25 updateCacheForInputModes:v26];

    v24 = *(a1 + 32);
  }

  v27 = [v24 inputDelegateManager];
  v28 = [v27 keyInputDelegate];
  if (v28)
  {
  }

  else
  {
    v29 = *(a1 + 44);
    v30 = [*(*(a1 + 32) + 632) splitKeyboardMode];

    if (v29 != v30)
    {
      UIKeyboardSetCurrentInputMode(@"intl");
    }
  }

  v31 = [*(a1 + 32) inputDelegateManager];
  v32 = [v31 keyInputDelegate];

  if (v32)
  {
    v33 = +[UIKeyboardInputModeController sharedInputModeController];
    v34 = [v33 currentInputMode];
    if ([v34 isEmojiInputMode])
    {
      v35 = +[UIKeyboard isRemoteEmojiCollectionViewEnabled];

      if (v35)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    v36 = objc_loadWeakRetained((*(a1 + 32) + 784));
    [v36 updateLayout];

LABEL_30:
  }

  *(*(a1 + 32) + 162) = *(a1 + 45);
  v37 = *(a1 + 32);
  v38 = +[UIKeyboardInputModeController sharedInputModeController];
  v39 = [v38 currentInputMode];
  v40 = [v39 primaryLanguage];
  [v37 updateSmartPunctuationOptionsForLocaleIdentifier:v40];

  v41 = objc_loadWeakRetained((*(a1 + 32) + 784));
  [v41 didCompleteUpdateDefaults];

  --*(*(a1 + 32) + 200);
}

void __54___UIKeyboardStateManager_setInputMode_userInitiated___block_invoke_2()
{
  v0 = [&__block_literal_global_466 copy];
  v1 = qword_1ED49CF60;
  qword_1ED49CF60 = v0;
}

void __54___UIKeyboardStateManager_setInputMode_userInitiated___block_invoke_4()
{
  v0 = [&__block_literal_global_472 copy];
  v1 = qword_1ED49CF70;
  qword_1ED49CF70 = v0;
}

void __69___UIKeyboardStateManager__setKeyboardInputMode_userInitiated_force___block_invoke()
{
  v0 = [&__block_literal_global_477 copy];
  v1 = qword_1ED49CF80;
  qword_1ED49CF80 = v0;
}

void __95___UIKeyboardStateManager_setKeyboardInputMode_userInitiated_updateIndicator_executionContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = UIKeyboardGetCurrentInputMode();
  LODWORD(v2) = [v2 isEqualToString:v3];

  if (v2)
  {
    if (qword_1ED49CF98 != -1)
    {
      dispatch_once(&qword_1ED49CF98, &__block_literal_global_480);
    }

    v4 = [*(a1 + 40) taskQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __95___UIKeyboardStateManager_setKeyboardInputMode_userInitiated_updateIndicator_executionContext___block_invoke_4;
    v6[3] = &unk_1E70FD118;
    v5 = *(a1 + 48);
    v6[4] = *(a1 + 40);
    v7 = v5;
    v8 = *(a1 + 56);
    [v4 performSingleTask:v6 breadcrumb:qword_1ED49CF90];
  }
}

void __95___UIKeyboardStateManager_setKeyboardInputMode_userInitiated_updateIndicator_executionContext___block_invoke_2()
{
  v0 = [&__block_literal_global_482 copy];
  v1 = qword_1ED49CF90;
  qword_1ED49CF90 = v0;
}

void __102___UIKeyboardStateManager__setKeyboardInputMode_userInitiated_updateIndicator_force_executionContext___block_invoke()
{
  v0 = [&__block_literal_global_487 copy];
  v1 = qword_1ED49CFA0;
  qword_1ED49CFA0 = v0;
}

void __102___UIKeyboardStateManager__setKeyboardInputMode_userInitiated_updateIndicator_force_executionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) syncingDictationLanguageForInputModeSwitch])
  {
    v3 = +[UIDictationController activeInstance];
    v4 = [UIDictationInputModeOptions dictationInputModeOptionsWithInvocationSource:@"UIDictationInputModeInvocationSourceGlobalButtonOnDictationPlane"];
    [v3 switchToDictationInputModeWithOptions:v4];

    [*(a1 + 32) setSyncingDictationLanguageForInputModeSwitch:0];
  }

  [v5 returnExecutionToParent];
}

void __102___UIKeyboardStateManager__setKeyboardInputMode_userInitiated_updateIndicator_force_executionContext___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) remoteTextInputPartner];
  [v1 documentStateChanged];
}

void __102___UIKeyboardStateManager__setKeyboardInputMode_userInitiated_updateIndicator_force_executionContext___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) finishSetKeyboardInputMode:*(a1 + 40) previousInputMode:*(a1 + 48) didChangeDirection:*(a1 + 56)];
  if (*(a1 + 57) == 1 && ([*(a1 + 40) isEmojiInputMode] & 1) == 0)
  {
    v3 = [*(a1 + 32) inputModeIndicatorController];
    [v3 inputModeChanged];
  }

  [v4 returnExecutionToParent];
}

void __102___UIKeyboardStateManager__setKeyboardInputMode_userInitiated_updateIndicator_force_executionContext___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = a2;
  [v2 finishSetKeyboardInputMode:v3 previousInputMode:v4 didChangeDirection:v5];
  [v6 returnExecutionToParent];
}

void __86___UIKeyboardStateManager_keyboardInputModeIndicatorControllerShouldPresentIndicator___block_invoke()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"dictation";
  v2[1] = @"emoji";
  v2[2] = @"intl_HWR";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];
  v1 = qword_1ED49CFB0;
  qword_1ED49CFB0 = v0;
}

uint64_t __62___UIKeyboardStateManager_documentIdentifierForInputDelegate___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a3)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __74___UIKeyboardStateManager__notifyDidTeardownExistingDelegate_newDelegate___block_invoke()
{
  v0 = [&__block_literal_global_533 copy];
  v1 = qword_1ED49CFC0;
  qword_1ED49CFC0 = v0;
}

void __74___UIKeyboardStateManager__notifyDidTeardownExistingDelegate_newDelegate___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) didTeardownExistingDelegate];

  if (v3)
  {
    v4 = [*(a1 + 32) didTeardownExistingDelegate];
    (v4)[2](v4, *(a1 + 40), *(a1 + 48), v5);
  }

  else
  {
    [v5 returnExecutionToParent];
  }
}

void __72___UIKeyboardStateManager__notifyWillSetupNewDelegate_existingDelegate___block_invoke()
{
  v0 = [&__block_literal_global_537 copy];
  v1 = qword_1ED49CFD0;
  qword_1ED49CFD0 = v0;
}

void __72___UIKeyboardStateManager__notifyWillSetupNewDelegate_existingDelegate___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) willSetupNewDelegate];

  if (v3)
  {
    v4 = [*(a1 + 32) willSetupNewDelegate];
    (v4)[2](v4, *(a1 + 40), *(a1 + 48), v5);
  }

  else
  {
    [v5 returnExecutionToParent];
  }
}

void __95___UIKeyboardStateManager__teardownExistingDelegate_forSetDelegate_force_delayEndInputSession___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") && ([*(*(a1 + 32) + 136) isDevicePasscodeEntry] & 1) == 0)
  {
    v5 = [UIKeyboard snapshotViewForOptions:1];
    v6 = *(a1 + 32);
    v7 = *(v6 + 448);
    *(v6 + 448) = v5;
  }

  v8 = [*(a1 + 32) remoteTextInputPartnerPrivate];
  [v8 endInputSessionWithIdentifier:v10 shouldResign:a3];

  if ([*(a1 + 32) isOutOfProcess])
  {
    v9 = [*(a1 + 32) remoteTextInputPartner];
    [v9 endAllowingRemoteTextInput:v10];
  }
}

void __95___UIKeyboardStateManager__teardownExistingDelegate_forSetDelegate_force_delayEndInputSession___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) resigningRTISessionIdentifier];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) resigningRTISessionIdentifier];
    (*(v3 + 16))(v3, v4, 1);

    v5 = *(a1 + 32);

    [v5 setResigningRTISessionIdentifier:0];
  }
}

void __95___UIKeyboardStateManager__teardownExistingDelegate_forSetDelegate_force_delayEndInputSession___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = _UIKeyboardInputSessionChangeLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = "NO";
    *&v12[4] = "[_UIKeyboardStateManager _teardownExistingDelegate:forSetDelegate:force:delayEndInputSession:]_block_invoke_3";
    *v12 = 136315650;
    if (a3)
    {
      v11 = "YES";
    }

    *&v12[12] = 2112;
    *&v12[14] = v5;
    v13 = 2080;
    v14 = v11;
    _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "%s end input session: %@ (shouldResignImmediately=%s)", v12, 0x20u);
  }

  if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") && ([*(*(a1 + 32) + 136) isDevicePasscodeEntry] & 1) == 0)
  {
    v7 = [UIKeyboard snapshotViewForOptions:1];
    v8 = *(a1 + 32);
    v9 = *(v8 + 448);
    *(v8 + 448) = v7;
  }

  v10 = [*(a1 + 32) remoteTextInputPartnerPrivate];
  [v10 endInputSessionWithIdentifier:v5 shouldResign:a3 waitForReply:1];
}

void __140___UIKeyboardStateManager__setupDelegate_delegateSame_hardwareKeyboardStateChanged_endingInputSessionIdentifier_force_delayEndInputSession___block_invoke(uint64_t a1)
{
  v2 = _UIKeyboardLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "WebInputDelegate is not nil, briefly delaying presenting the numberpad popover so WebKit state can become consistent.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 784));
  [WeakRetained presentNumberpadPopover];
}

void __140___UIKeyboardStateManager__setupDelegate_delegateSame_hardwareKeyboardStateChanged_endingInputSessionIdentifier_force_delayEndInputSession___block_invoke_562()
{
  v0 = [&__block_literal_global_566 copy];
  v1 = qword_1ED49CFE0;
  qword_1ED49CFE0 = v0;
}

void __140___UIKeyboardStateManager__setupDelegate_delegateSame_hardwareKeyboardStateChanged_endingInputSessionIdentifier_force_delayEndInputSession___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v3 setInputManagerFromCurrentInputMode];
  *(*(a1 + 32) + 328) = 1;
  if (*(a1 + 40))
  {
    v4 = @"gainFocus";
  }

  else
  {
    v4 = @"loseFocus";
  }

  [*(a1 + 32) changingContextWithTrigger:v4];
  [*(a1 + 32) updateForChangedSelectionWithExecutionContext:v5];
}

void __140___UIKeyboardStateManager__setupDelegate_delegateSame_hardwareKeyboardStateChanged_endingInputSessionIdentifier_force_delayEndInputSession___block_invoke_577()
{
  v0 = [&__block_literal_global_582 copy];
  v1 = qword_1ED49CFF0;
  qword_1ED49CFF0 = v0;
}

void __140___UIKeyboardStateManager__setupDelegate_delegateSame_hardwareKeyboardStateChanged_endingInputSessionIdentifier_force_delayEndInputSession___block_invoke_3_583(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 refreshAutofillModeIfNecessary];
  [v3 returnExecutionToParent];
}

void __140___UIKeyboardStateManager__setupDelegate_delegateSame_hardwareKeyboardStateChanged_endingInputSessionIdentifier_force_delayEndInputSession___block_invoke_4(uint64_t a1)
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 systemInputAssistantViewController];
  v4 = [*(a1 + 32) delegateAsResponder];
  v5 = [v3 _assistantItemsVisibleForResponder:v4];

  if ((v5 & 1) == 0)
  {
    v8 = +[UIInputSwitcher sharedInstance];
    v6 = [*(a1 + 40) currentInputMode];
    v7 = [v6 identifier];
    [v8 showsLanguageIndicator:v7];
  }
}

void __41___UIKeyboardStateManager_didSetDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateDelegatePasteSupport];
}

uint64_t __44___UIKeyboardStateManager_queueDelayedTask___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __39___UIKeyboardStateManager_textChanged___block_invoke()
{
  v0 = [&__block_literal_global_608 copy];
  v1 = qword_1ED49D008;
  qword_1ED49D008 = v0;
}

void __39___UIKeyboardStateManager_textChanged___block_invoke_4()
{
  v0 = [&__block_literal_global_614 copy];
  v1 = qword_1ED49D018;
  qword_1ED49D018 = v0;
}

void __56___UIKeyboardStateManager_textChanged_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 finishTextChanged];
  [v3 returnExecutionToParent];
}

void __51___UIKeyboardStateManager_textSuggestionDidChange___block_invoke()
{
  v0 = [&__block_literal_global_618 copy];
  v1 = qword_1ED49D028;
  qword_1ED49D028 = v0;
}

void __51___UIKeyboardStateManager_textSuggestionDidChange___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 textDidChange:v3];
  [v4 returnExecutionToParent];
}

void __42___UIKeyboardStateManager_setSuggestions___block_invoke()
{
  v0 = [&__block_literal_global_625 copy];
  v1 = qword_1ED49D038;
  qword_1ED49D038 = v0;
}

void __42___UIKeyboardStateManager_setSuggestions___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 _setSuggestions:v3];
  [v4 returnExecutionToParent];
}

void __43___UIKeyboardStateManager__setSuggestions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v6 = [v18 inputText];
  if ([v6 length])
  {
    v7 = [*(a1 + 32) length];
    if (!v7 || (v8 = *(a1 + 32), [v18 searchText], v3 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v8, "isEqualToString:", v3) & 1) != 0))
    {
      if ((*(a1 + 80) & 1) != 0 || (v11 = *(a1 + 40)) == 0)
      {
        if (v7)
        {
        }
      }

      else
      {
        v12 = [v11 candidate];
        v13 = [v18 inputText];
        v14 = [v12 isEqualToString:v13];

        if (v7)
        {
        }

        if (v14)
        {
          goto LABEL_6;
        }
      }

      v15 = *(a1 + 48);
      v16 = [*(a1 + 56) objectAtIndex:a3];
      [v15 addObject:v16];

      v9 = *(a1 + 64);
      v10 = [v18 inputText];
      goto LABEL_18;
    }
  }

LABEL_6:
  if (*(a1 + 80) != 1)
  {
    goto LABEL_19;
  }

  v9 = *(a1 + 48);
  v10 = [*(a1 + 56) objectAtIndex:a3];
LABEL_18:
  v17 = v10;
  [v9 addObject:v10];

  *(*(*(a1 + 72) + 8) + 24) = 1;
LABEL_19:
}

void __43___UIKeyboardStateManager__setSuggestions___block_invoke_2()
{
  v0 = [&__block_literal_global_633 copy];
  v1 = qword_1ED49D048;
  qword_1ED49D048 = v0;
}

void __43___UIKeyboardStateManager__setSuggestions___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) setShowsCandidateBar:{objc_msgSend(*(a1 + 32), "shouldShowCandidateBar")}];
  if ([*(*(a1 + 32) + 32) hasOnlyTextSuggestions] && objc_msgSend(*(a1 + 40), "hasOnlyTextSuggestions"))
  {
    if ([*(*(a1 + 32) + 32) hasAutofillCandidates])
    {
      v3 = [*(a1 + 40) hasAutofillCandidates];
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  if (([*(a1 + 32) shouldPrioritizeTextSuggestionsOverCandidateResultSet:*(*(a1 + 32) + 32)] & 1) != 0 || v3)
  {
    [*(a1 + 32) updateCandidateDisplayAsyncWithCandidateSet:*(a1 + 40)];
  }

  [v4 returnExecutionToParent];
}

void __86___UIKeyboardStateManager__processInputViewControllerKeyboardOutput_executionContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) keyboardOutputs];
  v3 = [v2 firstObject];

  if (!v3)
  {
    [*(a1 + 40) _completePerformInputViewControllerOutput:*(a1 + 32) executionContext:*(a1 + 48)];
    goto LABEL_14;
  }

  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  v6 = [v5 currentInputMode];
  [v4 updateLastUsedInputMode:v6];

  [*(a1 + 40) _updateInputViewControllerOutput:*(a1 + 32) forKeyboardOutput:v3];
  v7 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    v7[171] = 0;
    if ([v3 deletionCount])
    {
      v8 = objc_alloc_init(_UIInputViewKeyboardOutput);
      -[_UIInputViewKeyboardOutput setDeletionCount:](v8, "setDeletionCount:", [v3 deletionCount] - 1);
      [v3 setDeletionCount:0];
      v9 = [*(a1 + 40) physicalKeyboardEventWithInput:@"\x7F" inputFlags:128];
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __86___UIKeyboardStateManager__processInputViewControllerKeyboardOutput_executionContext___block_invoke_2;
      v40[3] = &unk_1E70FD280;
      v40[4] = v10;
      v41 = v8;
      v42 = v3;
      v43 = *(a1 + 32);
      v12 = v8;
      v13 = [v11 childWithContinuation:v40];
      [v10 _handleWebKeyEvent:v9 withInputString:@"\x7F" executionContext:v13];

LABEL_10:
      goto LABEL_11;
    }

    v20 = [v3 insertionText];

    v21 = [*(a1 + 32) keyboardOutputs];
    v22 = [*(a1 + 32) keyboardOutputs];
    v23 = [v21 subarrayWithRange:{1, objc_msgSend(v22, "count") - 1}];
    [*(a1 + 32) setKeyboardOutputs:v23];

    v24 = *(a1 + 40);
    if (v20)
    {
      v25 = [v3 insertionText];
      v9 = [v24 physicalKeyboardEventWithInput:v25 inputFlags:128];

      v26 = *(a1 + 40);
      v27 = [v3 insertionText];
      v28 = *(a1 + 48);
      v35 = MEMORY[0x1E69E9820];
      v36 = 3221225472;
      v37 = __86___UIKeyboardStateManager__processInputViewControllerKeyboardOutput_executionContext___block_invoke_3;
      v38 = &unk_1E70FD1B8;
      v34 = *(a1 + 32);
      v29 = v34.i64[0];
      v39 = vextq_s8(v34, v34, 8uLL);
      v30 = [v28 childWithContinuation:&v35];
      [v26 _handleWebKeyEvent:v9 withInputString:v27 executionContext:v30];

      goto LABEL_10;
    }

    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    v17 = *(a1 + 40);
  }

  else
  {
    [v7 performKeyboardOutput:v3 forwardToRemoteInputSource:1];
    [v3 setPositionOffset:0];
    v14 = [*(a1 + 32) keyboardOutputs];
    v15 = [*(a1 + 32) keyboardOutputs];
    v16 = [v14 subarrayWithRange:{1, objc_msgSend(v15, "count") - 1}];
    [*(a1 + 32) setKeyboardOutputs:v16];

    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v19 = *(a1 + 48);
  }

  [v17 _processInputViewControllerKeyboardOutput:v18 executionContext:v19];
LABEL_11:
  if ([v3 deletionCount])
  {
    v31 = [*(a1 + 40) inputDelegateManager];
    v32 = [v31 delegateRespectingForwardingDelegate:0];
    v33 = [v32 hasText];

    if ((v33 & 1) == 0)
    {
      [*(a1 + 40) setInitialDirection];
    }
  }

LABEL_14:
}

void __86___UIKeyboardStateManager__processInputViewControllerKeyboardOutput_executionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 performKeyboardOutput:v4];
  [*(a1 + 48) setPositionOffset:0];
  [*(a1 + 32) _performInputViewControllerOutput:*(a1 + 56)];
  [v5 returnExecutionToParent];
}

void __86___UIKeyboardStateManager__processInputViewControllerKeyboardOutput_executionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 _performInputViewControllerOutput:v3];
  [v4 returnExecutionToParent];
}

void __44___UIKeyboardStateManager_setDocumentState___block_invoke()
{
  v0 = [MEMORY[0x1E695DF00] distantPast];
  v1 = qword_1ED49D060;
  qword_1ED49D060 = v0;
}

void __50___UIKeyboardStateManager_shouldAllowRepeatEvent___block_invoke()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
  v6[0] = v0;
  v1 = [MEMORY[0x1E696AB08] symbolCharacterSet];
  v6[1] = v1;
  v2 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v6[2] = v2;
  v3 = [MEMORY[0x1E696AB08] controlCharacterSet];
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  v5 = qword_1ED49D070;
  qword_1ED49D070 = v4;
}

uint64_t __79___UIKeyboardStateManager_handleKeyCommand_repeatOkay_beforePublicKeyCommands___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) handleKeyCommand:*(a1 + 40) repeatOkay:*(a1 + 56) options:*(a1 + 64)];
  *(*(*(a1 + 48) + 8) + 24) = result != 0;
  return result;
}

id __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke(uint64_t a1)
{
  v8[6] = *MEMORY[0x1E69E9840];
  v7[0] = @"KeyboardEventType";
  v7[1] = @"Operation";
  v8[0] = @"TextEditing";
  v8[1] = @"Using modifier key";
  v8[2] = @"HWKeyboard";
  v7[2] = @"TriggerType";
  v7[3] = @"UsingShiftKey";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v8[3] = v2;
  v7[4] = @"UsingCommandKey";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 41)];
  v8[4] = v3;
  v7[5] = @"UnmodifiedInput";
  v4 = [*(a1 + 32) _unmodifiedInput];
  v8[5] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];

  return v5;
}

uint64_t __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _delegateRequiresKeyEvents];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 inputDelegateManager];
    v7 = [v6 canPerformAction:a2 withSender:0];
  }

  else
  {
    v6 = [v5 inputDelegate];
    v7 = objc_opt_respondsToSelector();
  }

  v8 = v7;

  return v8 & 1;
}

uint64_t __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _delegateRequiresKeyEvents];
  v5 = *(a1 + 32);
  if (!v4)
  {
    v9 = [v5 inputDelegateManager];
    v10 = [v9 selectableDelegate];
    v8 = objc_opt_respondsToSelector();

LABEL_6:
    return v8 & 1;
  }

  v6 = [v5 inputDelegate];
  v7 = [v6 canPerformAction:a2 withSender:0];

  if ((v7 & 1) == 0)
  {
    v9 = [*(a1 + 32) inputDelegateManager];
    v8 = [v9 canPerformAction:a2 withSender:0];
    goto LABEL_6;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) inputDelegateManager];
  v3 = [v2 textInputDelegate];

  if (v3)
  {
    v4 = [*(a1 + 32) inputDelegateManager];
    v5 = [v4 selectedTextRange];

    if (!v5 || ([v5 start], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
    {
      v14 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v7 = [v5 start];
    v8 = [v3 positionFromPosition:v7 offset:-50];

    v9 = [v5 start];
    v10 = [v3 positionFromPosition:v9 offset:50];

    if (v8)
    {
      if (v10)
      {
LABEL_6:
        v11 = [v3 textRangeFromPosition:v8 toPosition:v10];
        if (v11)
        {
          v12 = v11;
          v13 = [v3 textInRange:v11];
          v14 = [v13 _isNaturallyRTL];
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v8 = [v3 beginningOfDocument];
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v10 = [v3 endOfDocument];
    goto LABEL_6;
  }

  v14 = 0;
LABEL_15:

  return v14;
}

uint64_t __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) inputDelegateManager];
  v3 = [*(a1 + 32) inputDelegateManager];
  v4 = [v3 selectedTextRange];
  v5 = [v4 start];
  v6 = [v2 baseWritingDirectionForPosition:v5 inDirection:0];

  if (v6 == 1)
  {
    return 1;
  }

  if (v6 != -1)
  {
    return 0;
  }

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_6(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 16);
  if (*(a1 + 64) == 1)
  {
    *(*(*(a1 + 56) + 8) + 24) = v2();
    if (*(*(*(a1 + 56) + 8) + 24) != 1 || (*(a1 + 65) & 1) != 0)
    {
      return;
    }

    v4 = *(a1 + 32);
    v3 = a1 + 32;
    v8 = [v4 inputDelegateManager];
    v5 = [v8 _moveToStartOfWord:*(v3 + 34) withHistory:*(v3 + 8)];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = v2();
    if (*(*(*(a1 + 56) + 8) + 24) != 1 || (*(a1 + 65) & 1) != 0)
    {
      return;
    }

    v6 = *(a1 + 32);
    v3 = a1 + 32;
    v8 = [v6 inputDelegateManager];
    v5 = [v8 _moveToEndOfWord:*(v3 + 34) withHistory:*(v3 + 8)];
  }

  v7 = v5;
  [*v3 setArrowKeyHistory:v5];
}

void __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_7(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 16);
  if (*(a1 + 64) == 1)
  {
    *(*(*(a1 + 56) + 8) + 24) = v2();
    if (*(*(*(a1 + 56) + 8) + 24) != 1 || (*(a1 + 65) & 1) != 0)
    {
      return;
    }

    v4 = *(a1 + 32);
    v3 = a1 + 32;
    v8 = [v4 inputDelegateManager];
    v5 = [v8 _moveToEndOfWord:*(v3 + 34) withHistory:*(v3 + 8)];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = v2();
    if (*(*(*(a1 + 56) + 8) + 24) != 1 || (*(a1 + 65) & 1) != 0)
    {
      return;
    }

    v6 = *(a1 + 32);
    v3 = a1 + 32;
    v8 = [v6 inputDelegateManager];
    v5 = [v8 _moveToStartOfWord:*(v3 + 34) withHistory:*(v3 + 8)];
  }

  v7 = v5;
  [*v3 setArrowKeyHistory:v5];
}

void __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_8(uint64_t a1)
{
  v3 = [*(a1 + 32) inputDelegateManager];
  v2 = [v3 _moveToEndOfParagraph:*(a1 + 48) withHistory:*(a1 + 40)];
  [*(a1 + 32) setArrowKeyHistory:v2];
}

void __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_9(uint64_t a1)
{
  v3 = [*(a1 + 32) inputDelegateManager];
  v2 = [v3 _moveToEndOfDocument:*(a1 + 48) withHistory:*(a1 + 40)];
  [*(a1 + 32) setArrowKeyHistory:v2];
}

void __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_10(uint64_t a1)
{
  v3 = [*(a1 + 32) inputDelegateManager];
  v2 = [v3 _moveToStartOfParagraph:*(a1 + 48) withHistory:*(a1 + 40)];
  [*(a1 + 32) setArrowKeyHistory:v2];
}

void __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_11(uint64_t a1)
{
  v3 = [*(a1 + 32) inputDelegateManager];
  v2 = [v3 _moveToStartOfDocument:*(a1 + 48) withHistory:*(a1 + 40)];
  [*(a1 + 32) setArrowKeyHistory:v2];
}

id __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_12(uint64_t a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v4[0] = @"KeyboardEventType";
  v4[1] = @"Operation";
  v5[0] = @"TextEditing";
  v5[1] = @"Using modifier key";
  v4[2] = @"TriggerType";
  v4[3] = @"KeyCommand";
  v1 = *(a1 + 32);
  v5[2] = @"HWKeyboard";
  v5[3] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

void __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_13(uint64_t a1)
{
  v1 = [*(a1 + 32) _targetForResponderCommand:sel_copy_];
  [v1 copy:0];
}

void __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_14(uint64_t a1)
{
  v1 = [*(a1 + 32) _targetForResponderCommand:sel_paste_];
  [v1 paste:0];
}

void __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_15(uint64_t a1)
{
  v1 = [*(a1 + 32) _targetForResponderCommand:sel_cut_];
  [v1 cut:0];
}

void __63___UIKeyboardStateManager_handleKeyCommand_repeatOkay_options___block_invoke_16(uint64_t a1)
{
  v1 = [*(a1 + 32) _targetForResponderCommand:sel_pasteAndMatchStyle_];
  [v1 pasteAndMatchStyle:0];
}

void __67___UIKeyboardStateManager_handleInputManagerBasedKeybind_testOnly___block_invoke()
{
  v0 = [&__block_literal_global_887 copy];
  v1 = qword_1ED49D080;
  qword_1ED49D080 = v0;
}

void __67___UIKeyboardStateManager_handleInputManagerBasedKeybind_testOnly___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67___UIKeyboardStateManager_handleInputManagerBasedKeybind_testOnly___block_invoke_4;
  v5[3] = &unk_1E70FD058;
  v5[4] = v2;
  v4 = [a2 childWithContinuation:v5];
  [v2 handleKeyboardInput:v3 executionContext:v4];
}

void __67___UIKeyboardStateManager_handleInputManagerBasedKeybind_testOnly___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  if ([v3 delayedCandidateList])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 784));
    v5 = [WeakRetained candidateController];
    v6 = [v5 inlineCandidateView];

    if (v6)
    {
      [*(a1 + 32) removeCandidateList];
    }
  }

  [*(a1 + 32) generateCandidates];
  [v7 returnExecutionToParent];
}

void __156___UIKeyboardStateManager_setMarkedText_selectedRange_inputString_lastInputString_searchString_candidateOffset_liveConversionSegments_highlighSegmentIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [a2 rangeValue];
  v7 = v6;
  v8 = v5 + v6;
  v9 = [*(a1 + 32) length];
  if (v5 >= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  if (v8 <= v9 && v8 >= v10)
  {
    v15 = *(a1 + 32);
    v16 = *off_1E70EC968;
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v15 addAttribute:v16 value:v17 range:{v5, v7}];

    if (*(a1 + 48) == a3)
    {
      if (+[UIKeyboard isRedesignedTextCursorEnabled])
      {
        v18 = *(*(a1 + 40) + 8);
        *(v18 + 32) = v5;
        *(v18 + 40) = v7;
      }

      else
      {
        v19 = *(a1 + 32);
        v20 = *off_1E70EC8D0;
        v21 = +[UIColor tertiaryLabelColor];
        [v19 addAttribute:v20 value:? range:?];
      }
    }
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v13 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_12;
      }

      v27.location = v5;
      v27.length = v7;
      v14 = NSStringFromRange(v27);
      *buf = 138412290;
      v23 = v14;
      _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "illegal range %@ in liveConversionSegments", buf, 0xCu);
LABEL_11:

LABEL_12:
      return;
    }

    v12 = *(__UILogGetCategoryCachedImpl("Assert", &kbLineSeparator_block_invoke_3___s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v26.location = v5;
      v26.length = v7;
      v14 = NSStringFromRange(v26);
      *buf = 138412290;
      v23 = v14;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "illegal range %@ in liveConversionSegments", buf, 0xCu);
      goto LABEL_11;
    }
  }
}

void __125___UIKeyboardStateManager__setAttributedMarkedText_selectedRange_inputString_lastInputString_searchString_compareAttributes___block_invoke()
{
  v0 = [&__block_literal_global_904 copy];
  v1 = qword_1ED49D090;
  qword_1ED49D090 = v0;
}

void __125___UIKeyboardStateManager__setAttributedMarkedText_selectedRange_inputString_lastInputString_searchString_compareAttributes___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 inputDelegate];
  [v2 textChanged:v4 executionContext:v3];
}

void __125___UIKeyboardStateManager__setAttributedMarkedText_selectedRange_inputString_lastInputString_searchString_compareAttributes___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 markedTextRange];
  v5 = v4;
  if ([*(a1 + 32) candidateViewOffset] >= v4)
  {
    [*(a1 + 32) setCharacterRectsForCharacterRange:0];
  }

  else
  {
    v6 = [v7 characterRectsForCharacterRange:{v3, v5}];
    [*(a1 + 32) setCharacterRectsForCharacterRange:v6];
  }
}

uint64_t __86___UIKeyboardStateManager_smartSelectionForTextInDocument_inRange_options_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) lock];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  [*(a1 + 32) signal];
  v2 = *(a1 + 32);

  return [v2 unlock];
}

void __59___UIKeyboardStateManager_syncDocumentStateToInputDelegate__block_invoke()
{
  v0 = [&__block_literal_global_916 copy];
  v1 = qword_1ED49D0A0;
  qword_1ED49D0A0 = v0;
}

void __58___UIKeyboardStateManager_documentStateFromInputDelegate___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 contextBefore];
  if ([v3 length] >= 0x65)
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(v3, "length") - 100}];

    v3 = v4;
  }

  v5 = [v16 contextAfter];
  if ([v5 length] >= 0x65)
  {
    v6 = [v5 substringToIndex:100];

    v5 = v6;
  }

  v7 = *(a1 + 32);
  v8 = objc_alloc(MEMORY[0x1E69D9590]);
  v9 = [v16 markedText];
  v10 = [v9 length];
  if (v10)
  {
    v11 = [v16 markedText];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v16 selectedText];
  v13 = [v16 selectedRangeInMarkedText];
  v15 = [v8 initWithContextBefore:v3 markedText:v11 selectedText:v12 contextAfter:v5 selectedRangeInMarkedText:{v13, v14}];
  (*(v7 + 16))(v7, v15);

  if (v10)
  {
  }
}

void __58___UIKeyboardStateManager_documentStateFromInputDelegate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E69D9590];
  v4 = a2;
  v5 = [v3 alloc];
  v13 = [v4 contextBeforeSelection];
  v6 = [v4 markedText];
  v7 = [v4 selectedText];
  v8 = [v4 contextAfterSelection];
  v9 = [v4 rangeInMarkedText];
  v11 = v10;

  v12 = [v5 initWithContextBefore:v13 markedText:v6 selectedText:v7 contextAfter:v8 selectedRangeInMarkedText:{v9, v11}];
  (*(v2 + 16))(v2, v12);
}

void __80___UIKeyboardStateManager_syncDocumentStateToInputDelegateWithExecutionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1ED49D0B8 != -1)
  {
    dispatch_once(&qword_1ED49D0B8, &__block_literal_global_919);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80___UIKeyboardStateManager_syncDocumentStateToInputDelegateWithExecutionContext___block_invoke_4;
  v7[3] = &unk_1E70FD460;
  v4 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = qword_1ED49D0B0;
  v6 = v3;
  [v4 transferExecutionToMainThreadWithTask:v7 breadcrumb:v5];
}

void __80___UIKeyboardStateManager_syncDocumentStateToInputDelegateWithExecutionContext___block_invoke_2()
{
  v0 = [&__block_literal_global_921 copy];
  v1 = qword_1ED49D0B0;
  qword_1ED49D0B0 = v0;
}

void __80___UIKeyboardStateManager_syncDocumentStateToInputDelegateWithExecutionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v14 = a2;
  [*(a1 + 32) setDocumentState:*(a1 + 40)];
  *(*(a1 + 32) + 171) = 1;
  v3 = *(a1 + 32);
  if (v3[518] & 1) != 0 || (v3[520])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 inputDelegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [*(a1 + 32) inputDelegate];
      v7 = [v6 _rtiSourceSession];
      v4 = v7 != 0;
    }

    else
    {
      v4 = 0;
    }

    v3 = *(a1 + 32);
  }

  v8 = [v3 inputDelegateManager];
  v9 = [v8 hasAsyncCapableInputDelegate];

  if ((v4 || (v9 & 1) != 0 || ([*(*(a1 + 32) + 136) isSecureTextEntry] & 1) == 0) && (objc_msgSend(*(a1 + 32), "isCallingTextChangedDuringInputModeSwitch") & 1) == 0)
  {
    v10 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v11 = [v10 _textInputSessionAnalytics];
    v12 = [*(a1 + 40) _selectedTextRange];
    [v11 didChangeToSelection:v12 relativeRangeBefore:{v13, *(a1 + 48), *(a1 + 56)}];
  }

  [v14 returnExecutionToParent];
}

void __52___UIKeyboardStateManager_prepareForSelectionChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 472);
  *(v1 + 472) = 0;
}

void __52___UIKeyboardStateManager_updateForChangedSelection__block_invoke()
{
  v0 = [&__block_literal_global_937 copy];
  v1 = qword_1ED49D0C0;
  qword_1ED49D0C0 = v0;
}

uint64_t __52___UIKeyboardStateManager_updateForChangedSelection__block_invoke_3(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 32) + 121) = 1;
  result = [*(a1 + 32) updateForChangedSelectionWithExecutionContext:a2];
  *(*(a1 + 32) + 121) = 0;
  return result;
}

void __73___UIKeyboardStateManager_updateForChangedSelectionWithExecutionContext___block_invoke_3(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 517) = *(*(a1 + 32) + 328);
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73___UIKeyboardStateManager_updateForChangedSelectionWithExecutionContext___block_invoke_4;
  v4[3] = &unk_1E70FD058;
  v4[4] = v2;
  v3 = [a2 childWithContinuation:v4];
  [v2 syncInputManagerToKeyboardStateWithExecutionContext:v3];
}

void __73___UIKeyboardStateManager_updateForChangedSelectionWithExecutionContext___block_invoke_4(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 517) = 0;
  *(*(a1 + 32) + 328) = 0;
  *(*(a1 + 32) + 8) = 1;
  v8 = a2;
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 visualModeManager];
  v5 = [v4 useVisualModeWindowed];

  if ([*(a1 + 32) shouldGenerateCandidatesAfterSelectionChange])
  {
    v6 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    if ([v6 oldPathForSnapshot])
    {
      v7 = +[UIKeyboard isKeyboardProcess]| v5;

      if ((v7 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    [*(a1 + 32) generateCandidates];
  }

LABEL_7:
  [*(a1 + 32) completeUpdateForChangedSelection:1];
  [v8 returnExecutionToParent];
}

void __46___UIKeyboardStateManager_selectionDidChange___block_invoke()
{
  v0 = [&__block_literal_global_949 copy];
  v1 = qword_1ED49D0D0;
  qword_1ED49D0D0 = v0;
}

uint64_t __46___UIKeyboardStateManager_selectionDidChange___block_invoke_3(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 32) + 328) = 0;
  *(*(a1 + 32) + 121) = 1;
  result = [*(a1 + 32) updateForChangedSelectionWithExecutionContext:a2];
  *(*(a1 + 32) + 121) = 0;
  return result;
}

void __46___UIKeyboardStateManager_selectionDidChange___block_invoke_4()
{
  v0 = [&__block_literal_global_955 copy];
  v1 = qword_1ED49D0E0;
  qword_1ED49D0E0 = v0;
}

uint64_t __46___UIKeyboardStateManager_selectionDidChange___block_invoke_6(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 32) + 520) = 1;
  result = [*(a1 + 32) updateForChangedSelectionWithExecutionContext:a2];
  *(*(a1 + 32) + 518) = 0;
  return result;
}

void __46___UIKeyboardStateManager_selectionDidChange___block_invoke_7()
{
  v0 = [&__block_literal_global_961 copy];
  v1 = qword_1ED49D0F0;
  qword_1ED49D0F0 = v0;
}

void __46___UIKeyboardStateManager_selectionDidChange___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v2 remoteTextInputPartner];
  [v3 documentStateChanged];

  [v4 returnExecutionToParent];
}

void __58___UIKeyboardStateManager_syncInputManagerToKeyboardState__block_invoke()
{
  v0 = [&__block_literal_global_978 copy];
  v1 = qword_1ED49D100;
  qword_1ED49D100 = v0;
}

void __79___UIKeyboardStateManager_syncInputManagerToKeyboardStateWithExecutionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = keyboardPerfLog_Staging();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "keyboard.syncToKeyboardState", "", buf, 2u);
  }

  v5 = keyboardPerfLog_Staging();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "keyboard.syncToKeyboardState.pendingTransfer", "", buf, 2u);
  }

  if (qword_1ED49D118 != -1)
  {
    dispatch_once(&qword_1ED49D118, &__block_literal_global_981);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79___UIKeyboardStateManager_syncInputManagerToKeyboardStateWithExecutionContext___block_invoke_3;
  v9[3] = &unk_1E70FD1B8;
  v6 = *(a1 + 32);
  v9[4] = *(a1 + 40);
  v10 = v3;
  v7 = qword_1ED49D110;
  v8 = v3;
  [v6 transferExecutionToMainThreadWithTask:v9 breadcrumb:v7];
}

void __79___UIKeyboardStateManager_syncInputManagerToKeyboardStateWithExecutionContext___block_invoke_979()
{
  v0 = [&__block_literal_global_983 copy];
  v1 = qword_1ED49D110;
  qword_1ED49D110 = v0;
}

void __79___UIKeyboardStateManager_syncInputManagerToKeyboardStateWithExecutionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = keyboardPerfLog_Staging();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "keyboard.syncToKeyboardState.pendingTransfer", "", v5, 2u);
  }

  [*(a1 + 32) syncKeyboardToConfiguration:*(a1 + 40)];
  [v3 returnExecutionToParent];
}

void __64___UIKeyboardStateManager_handleKeyboardInput_executionContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _UIKeyboardLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Keyboard receives output from kbd", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64___UIKeyboardStateManager_handleKeyboardInput_executionContext___block_invoke_990;
  aBlock[3] = &unk_1E70FD4F8;
  v8 = *(a1 + 32);
  v32[1] = *(a1 + 72);
  v9 = *(a1 + 40);
  v29 = v8;
  v30 = v9;
  v33 = *(a1 + 80);
  objc_copyWeak(v32, (a1 + 64));
  v34 = *(a1 + 81);
  v18 = *(a1 + 48);
  v10 = v18;
  v31 = v18;
  v11 = _Block_copy(aBlock);
  v12 = [*(a1 + 48) takeOwnershipOfPendingCompletionBlock];
  v13 = v12;
  if (*(a1 + 81) != 1 || v12)
  {
    if (qword_1ED49D128 != -1)
    {
      dispatch_once(&qword_1ED49D128, &__block_literal_global_1040);
    }

    v14 = *(a1 + 48);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __64___UIKeyboardStateManager_handleKeyboardInput_executionContext___block_invoke_5;
    v23[3] = &unk_1E70FD520;
    v26 = v11;
    v24 = v5;
    v25 = v6;
    v27 = v13;
    [v14 transferExecutionToMainThreadWithTask:v23 breadcrumb:qword_1ED49D120];
    v15 = &v26;
    v16 = &v24;
    v17 = &v25;

    goto LABEL_11;
  }

  if (!pthread_main_np())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64___UIKeyboardStateManager_handleKeyboardInput_executionContext___block_invoke_6;
    block[3] = &unk_1E70FD548;
    v15 = &v22;
    v22 = v11;
    v16 = &v20;
    v20 = v5;
    v17 = &v21;
    v21 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
LABEL_11:

    goto LABEL_12;
  }

  (*(v11 + 2))(v11, v5, v6, 0);
LABEL_12:

  objc_destroyWeak(v32);
}

void __64___UIKeyboardStateManager_handleKeyboardInput_executionContext___block_invoke_990(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  kdebug_trace();
  v11 = kac_get_log();
  v12 = os_signpost_id_make_with_pointer(v11, *(a1 + 32));
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v11, OS_SIGNPOST_INTERVAL_END, v13, "appInput", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v14 = CACurrentMediaTime();
  v15 = 0x1E6979000uLL;
  v16 = [MEMORY[0x1E6979518] startFrameWithReason:32 beginTime:v14 commitDeadline:v14 + _UIQOSMaxFrameDurationSeconds()];
  [MEMORY[0x1E6979518] setFrameInputTime:v16 withToken:*(a1 + 72)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 784));
  [objc_opt_class() sendPerformanceNotification:@"UIKeyboardPerformanceHandleInputResponseNotification"];

  v18 = UIKeyboardGetCurrentInputMode();
  if (*(a1 + 80) != 1)
  {
    goto LABEL_7;
  }

  v19 = [v8 customInfo];
  if (v19)
  {
    goto LABEL_6;
  }

  v19 = [v8 insertionText];
  if (v19)
  {
    v44 = *(a1 + 40);
    v45 = MEMORY[0x1E69D95F0];
    v46 = [v8 insertionText];
    v4 = [v45 candidateWithCandidate:v46 forInput:0];
    if ([v44 shouldApplyAcceptedAutocorrection:v4])
    {

      v15 = 0x1E6979000;
LABEL_6:

LABEL_7:
      v20 = objc_loadWeakRetained((a1 + 64));
      if (+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") && v20 && ([v8 customInfo], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), v21, v22))
      {
        v23 = [*(a1 + 40) remoteTextInputPartner];
        v24 = [v8 customInfo];
        [v23 forwardAutofillPayload:v24 toPayloadDelegate:v20];
      }

      else
      {
        v25 = [*(*(a1 + 40) + 40) conformsToProtocol:&unk_1F0046B78];
        v26 = *(a1 + 40);
        if (v25)
        {
          [v26[5] performOutput:v8];
        }

        else
        {
          [v26 updateKeyboardOutput:v8 withInputForSmartPunctuation:*(a1 + 32) keyboardConfiguration:v9];
          v27 = [*(a1 + 40) inputSystemSourceSession];
          v28 = [v27 textOperations];

          v51 = v9;
          v29 = [v9 multilingualLanguages];
          v30 = v29;
          if (v29)
          {
            v31 = v29;
          }

          else
          {
            v31 = MEMORY[0x1E695E0F0];
          }

          [v28 setMultilingualLanguages:v31];

          if (*(*(*(a1 + 56) + 8) + 24) == 8)
          {
            v32 = 8;
          }

          else
          {
            v32 = 1;
          }

          v33 = *(a1 + 40);
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __64___UIKeyboardStateManager_handleKeyboardInput_executionContext___block_invoke_1037;
          v53[3] = &unk_1E70F6228;
          v53[4] = v33;
          v54 = *(a1 + 32);
          v34 = v8;
          v55 = v34;
          if ([*(a1 + 40) isInHardwareKeyboardMode])
          {
            v35 = 4;
          }

          else
          {
            v35 = v32;
          }

          [v33 performOperations:v53 withTextInputSource:v35];
          v36 = *(a1 + 40);
          if (v36[54])
          {
            v37 = [v36 remoteTextInputPartner];
            [v37 documentStateChanged];
          }

          v38 = [v34 insertionText];
          v39 = [v38 _containsEmojiOnly];

          if (v39)
          {
            v40 = objc_loadWeakRetained((*(a1 + 40) + 784));
            v41 = [v40 isEmojiPopoverVisibleOrDismissing];

            if ((v41 & 1) == 0)
            {
              [UIKBAnalyticsDispatcher emojiInsertedByMethod:@"Touch" inputType:@"Keyboard"];
            }
          }

          v9 = v51;
          v15 = 0x1E6979000uLL;
        }
      }

      goto LABEL_29;
    }

    v50 = v46;
  }

  v47 = [v8 acceptedCandidate];
  v48 = [v47 customInfoType];

  if (v19)
  {
  }

  v49 = v48 == 4096;
  v15 = 0x1E6979000;
  if (v49)
  {
    goto LABEL_7;
  }

LABEL_29:
  v42 = UIKeyboardGetCurrentInputMode();
  v43 = [v18 isEqualToString:v42];

  if (v43)
  {
    [*(a1 + 40) syncKeyboardToConfiguration:v9];
  }

  if (*(a1 + 81) == 1)
  {
    if (v10)
    {
      v10[2](v10);
    }
  }

  else
  {
    [*(a1 + 48) returnExecutionToParent];
  }

  [*(v15 + 1304) finishFrameWithToken:v16];
}

void __64___UIKeyboardStateManager_handleKeyboardInput_executionContext___block_invoke_1037(id *a1)
{
  if ([a1[4] showingEmojiSearch])
  {
    WeakRetained = objc_loadWeakRetained(a1[4] + 98);
    if ([WeakRetained isEmojiPopoverPresented])
    {
      v3 = [a1[5] touchEvent];
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 1;
  }

  v5 = a1[4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64___UIKeyboardStateManager_handleKeyboardInput_executionContext___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v6[4] = v5;
  v7 = a1[6];
  [v5 _performKeyboardOutput:v6 respectingForwardingDelegate:v4];
}

void __64___UIKeyboardStateManager_handleKeyboardInput_executionContext___block_invoke_3()
{
  v0 = [&__block_literal_global_1042 copy];
  v1 = qword_1ED49D120;
  qword_1ED49D120 = v0;
}

void __64___UIKeyboardStateManager_handleKeyboardInput_executionContext___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained returnExecutionToParent];
}

void __62___UIKeyboardStateManager_replaceAllTextInResponder_withText___block_invoke()
{
  v0 = [&__block_literal_global_1049 copy];
  v1 = qword_1ED49D130;
  qword_1ED49D130 = v0;
}

void __62___UIKeyboardStateManager_replaceAllTextInResponder_withText___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v2 _editMenuAssistant];
  [v3 cancelDelayedCommandRequests];

  [v4 returnExecutionToParent];
}

void __48___UIKeyboardStateManager_performKeyboardEvent___block_invoke()
{
  v0 = [&__block_literal_global_1077 copy];
  v1 = qword_1ED49D140;
  qword_1ED49D140 = v0;
}

void __48___UIKeyboardStateManager_performKeyboardEvent___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 _handleKeyCommand:v3];
  [v4 returnExecutionToParent];
}

void __48___UIKeyboardStateManager_performKeyboardEvent___block_invoke_4()
{
  v0 = [&__block_literal_global_1083 copy];
  v1 = qword_1ED49D150;
  qword_1ED49D150 = v0;
}

void __60___UIKeyboardStateManager_performKeyboardOutputAsRTIClient___block_invoke()
{
  v0 = [&__block_literal_global_1087 copy];
  v1 = qword_1ED49D160;
  qword_1ED49D160 = v0;
}

void __60___UIKeyboardStateManager_performKeyboardOutputAsRTIClient___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 performKeyboardOutput:v3 checkingDelegate:0 forwardToRemoteInputSource:0];
  [v4 returnExecutionToParent];
}

void __58___UIKeyboardStateManager_performKeyboardOutput_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  [*(a1 + 32) _copyTo:?];
  if (+[UIKeyboard usesInputSystemUI])
  {
    if (!+[UIKeyboard isKeyboardProcess])
    {
      if ([*(a1 + 40) usesCandidateSelection])
      {
        v3 = [v13 acceptedCandidate];
        if (v3)
        {
          v4 = v3;
          v5 = [v13 textToCommit];
          if ([v5 length])
          {
          }

          else
          {
            v6 = [v13 insertionText];
            v7 = [v6 length];

            if (!v7)
            {
              [v13 setAcceptedCandidate:0];
            }
          }
        }
      }
    }
  }

  if (+[UIKeyboard isKeyboardProcess])
  {
    v8 = [*(a1 + 40) inputManagerState];
    if ([v8 commitsAcceptedCandidate])
    {
    }

    else
    {
      v9 = [v13 acceptedCandidate];
      v10 = [v9 candidate];
      v11 = [v13 textToCommit];
      v12 = [v10 isEqualToString:v11];

      if (v12)
      {
        [v13 setTextToCommit:0];
      }
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void __58___UIKeyboardStateManager_performKeyboardOutput_userInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58___UIKeyboardStateManager_performKeyboardOutput_userInfo___block_invoke_3;
    block[3] = &unk_1E70F3590;
    v5 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __58___UIKeyboardStateManager_performKeyboardOutput_userInfo___block_invoke_3(uint64_t a1)
{
  v2 = +[UIKeyboardMediaController sharedKeyboardMediaController];
  [v2 handleStickerSuggestionWithTISticker:*(a1 + 32)];
}

void __58___UIKeyboardStateManager_performKeyboardOutput_userInfo___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 insertionText];
  [v3 replaceAllTextInResponder:v5 withText:v6];

  v7 = [*(a1 + 32) autofillController];
  [v7 showASPInTextField:v5 isRightToLeft:*(a1 + 48)];

  v8 = [*(a1 + 32) autofillController];
  [v8 addTemporaryTextColorToTextField:v5];
}

void __87___UIKeyboardStateManager_generateCandidatesAsynchronouslyWithRange_selectedCandidate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1ED49D178 != -1)
  {
    dispatch_once(&qword_1ED49D178, &__block_literal_global_1121);
  }

  v4 = [*(a1 + 32) taskQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87___UIKeyboardStateManager_generateCandidatesAsynchronouslyWithRange_selectedCandidate___block_invoke_4;
  v11[3] = &unk_1E70FD630;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v14 = v3;
  v16 = v7;
  v15 = v8;
  v9 = qword_1ED49D170;
  v10 = v3;
  [v4 addDeferredTask:v11 breadcrumb:v9];
}

void __87___UIKeyboardStateManager_generateCandidatesAsynchronouslyWithRange_selectedCandidate___block_invoke_2()
{
  v0 = [&__block_literal_global_1123 copy];
  v1 = qword_1ED49D170;
  qword_1ED49D170 = v0;
}

void __87___UIKeyboardStateManager_generateCandidatesAsynchronouslyWithRange_selectedCandidate___block_invoke_4(uint64_t a1, void *a2)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87___UIKeyboardStateManager_generateCandidatesAsynchronouslyWithRange_selectedCandidate___block_invoke_5;
  v12[3] = &unk_1E70FD630;
  v4 = (a1 + 40);
  *&v5 = *(a1 + 32);
  *(&v5 + 1) = *v4;
  v11 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v15 = *(a1 + 64);
  v8 = v7;
  *&v9 = v6;
  *(&v9 + 1) = v8;
  v13 = v11;
  v14 = v9;
  v10 = [a2 childWithContinuation:v12];
  [v10 returnExecutionToParent];
}

void __87___UIKeyboardStateManager_generateCandidatesAsynchronouslyWithRange_selectedCandidate___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) currentCandidateRequest];
  LODWORD(v4) = [v4 isSameRequestAs:v5];

  if (v4)
  {
    [*(a1 + 40) inputManagerDidGenerateCandidateResultSet:*(a1 + 48)];
    kdebug_trace();
    v6 = kac_get_log();
    v7 = os_signpost_id_make_with_pointer(v6, *(a1 + 64));
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v6))
      {
        *v12 = 0;
        _os_signpost_emit_with_name_impl(&dword_188A29000, v6, OS_SIGNPOST_INTERVAL_END, v8, "appCandidates", " enableTelemetry=YES ", v12, 2u);
      }
    }

    v9 = [*(a1 + 48) committedText];

    if (v9)
    {
      [*(a1 + 40) generateCandidatesWithOptions:2];
    }

    else if ([*(a1 + 48) inputManagerHasPendingCandidatesUpdate])
    {
      [*(a1 + 40) generateCandidatesAsynchronouslyWithRange:0 selectedCandidate:{0, 0}];
    }

    else
    {
      v10 = [*(a1 + 56) inputForMarkedText];
      if ([v10 length])
      {
      }

      else
      {
        v11 = [*(a1 + 48) generatedCandidateCount];

        if (!v11)
        {
          [*(a1 + 40) _postInputResponderCapabilitiesChangedNotificationWithOutput:0 selectionChanged:1];
        }
      }
    }
  }

  [v3 returnExecutionToParent];
}

void __70___UIKeyboardStateManager_generateAutocorrectionWithExecutionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1ED49D188 != -1)
  {
    dispatch_once(&qword_1ED49D188, &__block_literal_global_1133);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70___UIKeyboardStateManager_generateAutocorrectionWithExecutionContext___block_invoke_4;
  v7[3] = &unk_1E70FD1B8;
  v4 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  v8 = v3;
  v5 = qword_1ED49D180;
  v6 = v3;
  [v4 transferExecutionToMainThreadWithTask:v7 breadcrumb:v5];
}

void __70___UIKeyboardStateManager_generateAutocorrectionWithExecutionContext___block_invoke_2()
{
  v0 = [&__block_literal_global_1135 copy];
  v1 = qword_1ED49D180;
  qword_1ED49D180 = v0;
}

void __70___UIKeyboardStateManager_generateAutocorrectionWithExecutionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  *(*(a1 + 32) + 648) = [v3 sourceForAutocorrection];
  [*(a1 + 32) inputManagerDidGenerateAutocorrections:*(a1 + 40) executionContext:v4];
}

void __102___UIKeyboardStateManager_inputManagerDidGenerateAutocorrections_forPredictiveInput_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 textInputTraits];
  v6 = [v5 inputContextHistory];

  v7 = [*(a1 + 32) candidate];
  v8 = -[v7 length];

  v9 = [*(a1 + 32) candidate];
  v10 = [v9 length];

  v11 = [*(a1 + 40) inputDelegateManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __102___UIKeyboardStateManager_inputManagerDidGenerateAutocorrections_forPredictiveInput_executionContext___block_invoke_2;
  v15[3] = &unk_1E70F6228;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v16 = v12;
  v17 = v13;
  v18 = v6;
  v14 = v6;
  [v11 adjustSelection:v8 completionHandler:{v10, v15}];

  [v3 returnExecutionToParent];
}

void __102___UIKeyboardStateManager_inputManagerDidGenerateAutocorrections_forPredictiveInput_executionContext___block_invoke_2(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) smartReplySourceCandidate];
    v6 = [v2 candidate];
  }

  else
  {
    v6 = 0;
  }

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) candidate];
  v5 = [*(a1 + 48) tiInputContextHistory];
  [v3 _startSmartReplyWritingToolWithPrompt:v4 entryPoint:v6 inputContextHistory:v5];
}

void __102___UIKeyboardStateManager_inputManagerDidGenerateAutocorrections_forPredictiveInput_executionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setAutocorrectionToAcceptBeforeProgressiveCandidates:0];
  [*(a1 + 32) inputManagerDidGenerateAutocorrections:*(a1 + 40) executionContext:v4];
}

void __102___UIKeyboardStateManager_inputManagerDidGenerateAutocorrections_forPredictiveInput_executionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) predictions];

  if (v3)
  {
    v4 = MEMORY[0x1E69D9570];
    v5 = [*(a1 + 32) predictions];
    v6 = [*(a1 + 32) emojiList];
    v7 = [v4 listWithPredictions:v5 emojiList:v6 proactiveTriggers:0];

    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) corrections];
    v10 = [v9 autocorrection];
    [v8 inputManagerDidGenerateAutocorrections:v7 forPredictiveInput:v10 executionContext:v11];
  }

  else
  {
    [v11 returnExecutionToParent];
  }
}

void __102___UIKeyboardStateManager_inputManagerDidGenerateAutocorrections_forPredictiveInput_executionContext___block_invoke_6(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) inlineTextCompletionController];

  if (v3)
  {
    v4 = [*(a1 + 32) inlineTextCompletionController];
    [v4 updateTextCompletionPromptExecutionContext:v5];
  }

  else
  {
    [v5 returnExecutionToParent];
  }
}

uint64_t __80___UIKeyboardStateManager__insertSupplementalCandidate_overridingCandidateText___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 autocorrectionController];
  [v11 setTextSuggestionList:0];

  v12 = [*(a1 + 32) inputDelegateManager];
  [v12 insertSupplementalItem:v10 candidate:v9 replacementRange:v8];

  *(*(a1 + 32) + 548) = 0;
  [*(a1 + 32) syncInputManagerToKeyboardState];
  return 1;
}

void __108___UIKeyboardStateManager__acceptAutofillCandidateRequiringAuthentication_payloadDelegate_executionContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (qword_1ED49D198 != -1)
  {
    dispatch_once(&qword_1ED49D198, &__block_literal_global_1147);
  }

  v7 = [*(a1 + 32) taskQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __108___UIKeyboardStateManager__acceptAutofillCandidateRequiringAuthentication_payloadDelegate_executionContext___block_invoke_4;
  v9[3] = &unk_1E70FD6F0;
  objc_copyWeak(&v11, (a1 + 40));
  v9[4] = *(a1 + 32);
  v8 = v6;
  v10 = v8;
  [v7 addTask:v9 breadcrumb:qword_1ED49D190];

  objc_destroyWeak(&v11);
}

void __108___UIKeyboardStateManager__acceptAutofillCandidateRequiringAuthentication_payloadDelegate_executionContext___block_invoke_2()
{
  v0 = [&__block_literal_global_1149 copy];
  v1 = qword_1ED49D190;
  qword_1ED49D190 = v0;
}

void __108___UIKeyboardStateManager__acceptAutofillCandidateRequiringAuthentication_payloadDelegate_executionContext___block_invoke_4(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v5 = [a1[4] remoteTextInputPartner];
    v6 = [a1[5] customInfo];
    [v5 forwardAutofillPayload:v6 toPayloadDelegate:WeakRetained];
  }

  else
  {
    v7 = _UIKeyboardImplLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Cannot forward autofill payload to client: autofill payload delegate is nil", v8, 2u);
    }
  }

  [v3 returnExecutionToParent];
}

void __68___UIKeyboardStateManager_handleAcceptedCandidate_executionContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (qword_1ED49D1A8 != -1)
  {
    dispatch_once(&qword_1ED49D1A8, &__block_literal_global_1152);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68___UIKeyboardStateManager_handleAcceptedCandidate_executionContext___block_invoke_4;
  v13[3] = &unk_1E70FD280;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14 = v8;
  v15 = v9;
  v16 = v6;
  v17 = v5;
  v10 = qword_1ED49D1A0;
  v11 = v5;
  v12 = v6;
  [v7 transferExecutionToMainThreadWithTask:v13 breadcrumb:v10];
}

void __68___UIKeyboardStateManager_handleAcceptedCandidate_executionContext___block_invoke_2()
{
  v0 = [&__block_literal_global_1154 copy];
  v1 = qword_1ED49D1A0;
  qword_1ED49D1A0 = v0;
}

void __68___UIKeyboardStateManager_handleAcceptedCandidate_executionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v70[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 isSupplementalItemCandidate];
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = [v6 remoteTextInputPartner];
    v8 = *(a1 + 32);
    v9 = [*(a1 + 48) textToCommit];
    v10 = [v7 textOperation_insertSupplementalCandidate:v8 textToCommit:v9];

    v11 = [*(a1 + 40) inputSystemSourceSession];
    v12 = v11;
    if (v10 && v11)
    {
      v13 = [v10 customInfoType];
      v14 = [v12 textOperations];
      [v14 setCustomInfoType:v13];

      v15 = [v10 customInfo];
      v16 = [v12 textOperations];
      [v16 setCustomInfo:v15];

      [v12 flushOperations];
    }
  }

  else
  {
    v17 = [v6 inputDelegateManager];
    v18 = [v17 forwardingInputDelegate];

    if (!v18)
    {
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __68___UIKeyboardStateManager_handleAcceptedCandidate_executionContext___block_invoke_5;
      v68[3] = &unk_1E70FD608;
      v19 = *(a1 + 40);
      v69 = *(a1 + 48);
      [v19 performKeyboardOutputOnInputSourceSession:v68];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __68___UIKeyboardStateManager_handleAcceptedCandidate_executionContext___block_invoke_6;
      v66[3] = &unk_1E70FD608;
      v20 = *(a1 + 40);
      v67 = *(a1 + 48);
      [v20 performKeyboardOutputOnInputSourceSession:v66];
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __68___UIKeyboardStateManager_handleAcceptedCandidate_executionContext___block_invoke_7;
      v64[3] = &unk_1E70FD608;
      v21 = *(a1 + 40);
      v65 = *(a1 + 48);
      [v21 performKeyboardOutputOnInputSourceSession:v64];
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __68___UIKeyboardStateManager_handleAcceptedCandidate_executionContext___block_invoke_8;
      v62[3] = &unk_1E70FD608;
      v22 = *(a1 + 40);
      v63 = *(a1 + 32);
      [v22 performKeyboardOutputOnInputSourceSession:v62];
    }
  }

  v23 = [*(a1 + 48) textToCommit];
  if (v23)
  {
    v24 = [*(a1 + 40) inputDelegate];

    if (v24 && ([*(a1 + 40) inputDelegateManager], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "callShouldReplaceExtendedRange:withText:includeMarkedText:", objc_msgSend(*(a1 + 48), "deletionCount"), v23, objc_msgSend(*(a1 + 40), "_hasMarkedText")), v25, !v26))
    {
      [*(a1 + 40) unmarkText:&stru_1EFB14550];
      v36 = 0;
    }

    else
    {
      if (([*(a1 + 40) _hasMarkedText] & 1) == 0 && objc_msgSend(*(a1 + 48), "deletionCount"))
      {
        v27 = [*(a1 + 48) insertionText];
        v28 = v27 == 0;

        [*(a1 + 40) deleteBackwardAndNotifyAtEnd:v28 deletionCount:objc_msgSend(*(a1 + 48) reinsertTextInLoop:{"deletionCount"), 0}];
      }

      if ([*(a1 + 32) isSlottedCandidate] && objc_msgSend(v23, "hasPrefix:", @"https://"))
      {
        v29 = [*(a1 + 40) documentState];
        v30 = [v29 contextBeforeInput];

        if ([v30 length])
        {
          v31 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
          v32 = [v31 characterIsMember:{objc_msgSend(v30, "characterAtIndex:", objc_msgSend(v30, "length") - 1)}];

          if ((v32 & 1) == 0)
          {
            v33 = [@" " stringByAppendingString:v23];

            v23 = v33;
          }
        }
      }

      v34 = [*(a1 + 32) isSupplementalItemCandidate];
      v35 = *(a1 + 40);
      if (v34)
      {
        [v35 _willReplaceText:v23 withSupplementalCandidate:*(a1 + 32)];
        [*(a1 + 40) unmarkText:v23];
        [*(a1 + 40) _didReplaceText:v23 withSupplementalCandidate:*(a1 + 32)];
      }

      else
      {
        [v35 unmarkText:v23];
      }

      v36 = 1;
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 784));
    v38 = [WeakRetained candidateController];
    v39 = [v38 barIsExtended];

    if (v39)
    {
      v40 = objc_loadWeakRetained((*(a1 + 40) + 784));
      v41 = [v40 candidateController];
      [v41 collapse];
    }

    v42 = objc_loadWeakRetained((*(a1 + 40) + 784));
    v43 = [v42 candidateController];
    v44 = [v43 inlineCandidateView];

    if (v44)
    {
      [*(a1 + 40) removeCandidateList];
    }
  }

  else
  {
    v36 = 1;
  }

  if (+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || !v23 || ![*(a1 + 32) isSupplementalItemCandidate] || (objc_msgSend(*(a1 + 40), "_insertSupplementalCandidate:overridingCandidateText:", *(a1 + 32), v23) & 1) == 0)
  {
    v45 = [*(a1 + 48) customInfo];

    if (v45)
    {
      v46 = *(a1 + 40);
      v47 = [*(a1 + 48) customInfo];
      [v46 performKeyboardOutputInfo:v47];
    }
  }

  v48 = [*(a1 + 48) acceptedCandidate];
  if (([v48 customInfoType] & 0x1000) != 0)
  {
    v49 = [*(a1 + 48) acceptedCandidate];
    v50 = [v49 stickerIdentifier];

    if (!v50)
    {
      goto LABEL_40;
    }

    v48 = [*(a1 + 40) backendController];
    v51 = [*(a1 + 48) acceptedCandidate];
    v52 = [v51 stickerIdentifier];
    v70[0] = @"com.apple.stickers.role.still";
    v70[1] = @"com.apple.stickers.role.animated";
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
    [v48 stickerWithIdentifier:v52 stickerRoles:v53 completionHandler:&__block_literal_global_1162];
  }

LABEL_40:
  v54 = [*(a1 + 32) cursorMovement];
  v55 = v36 ^ 1;
  if (!v54)
  {
    v55 = 1;
  }

  if ((v55 & 1) == 0)
  {
    v56 = v54;
    v57 = *(a1 + 40);
    v58 = *(v57 + 517);
    *(v57 + 517) = 1;
    v59 = *(a1 + 40);
    v60 = [v59 documentState];
    v61 = [v60 documentStateAfterCursorAdjustment:v56];
    [v59 setDocumentState:v61];

    [*(a1 + 40) moveCursorByAmount:v56];
    *(*(a1 + 40) + 517) = v58;
  }

  [*(a1 + 40) syncKeyboardToConfiguration:*(a1 + 56)];
  [v4 returnExecutionToParent];
}

void __68___UIKeyboardStateManager_handleAcceptedCandidate_executionContext___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDeletionCount:{objc_msgSend(v2, "deletionCount")}];
}

void __68___UIKeyboardStateManager_handleAcceptedCandidate_executionContext___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 textToCommit];
  [v3 setTextToCommit:v4];
}

void __68___UIKeyboardStateManager_handleAcceptedCandidate_executionContext___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 customInfo];
  [v3 setCustomInfo:v4];
}

void __68___UIKeyboardStateManager_handleAcceptedCandidate_executionContext___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPositionOffset:{objc_msgSend(v2, "cursorMovement")}];
}

void __68___UIKeyboardStateManager_handleAcceptedCandidate_executionContext___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68___UIKeyboardStateManager_handleAcceptedCandidate_executionContext___block_invoke_10;
    block[3] = &unk_1E70F3590;
    v5 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __68___UIKeyboardStateManager_handleAcceptedCandidate_executionContext___block_invoke_10(uint64_t a1)
{
  v2 = +[UIKeyboardMediaController sharedKeyboardMediaController];
  [v2 handleStickerSuggestionWithTISticker:*(a1 + 32)];
}

void __92___UIKeyboardStateManager_generateReplacementsForString_candidatesHandler_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1ED49D1B8 != -1)
  {
    dispatch_once(&qword_1ED49D1B8, &__block_literal_global_1164);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92___UIKeyboardStateManager_generateReplacementsForString_candidatesHandler_executionContext___block_invoke_4;
  v8[3] = &unk_1E70FD768;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v6 = qword_1ED49D1B0;
  v7 = v3;
  [v4 transferExecutionToMainThreadWithTask:v8 breadcrumb:v6];
}

void __92___UIKeyboardStateManager_generateReplacementsForString_candidatesHandler_executionContext___block_invoke_2()
{
  v0 = [&__block_literal_global_1166 copy];
  v1 = qword_1ED49D1B0;
  qword_1ED49D1B0 = v0;
}

void __92___UIKeyboardStateManager_generateReplacementsForString_candidatesHandler_executionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v2 + 16);
  v5 = a2;
  v4(v2, v3);
  [v5 returnExecutionToParent];
}

uint64_t __88___UIKeyboardStateManager_performHitTestForTouchEvents_executionContextPassingNSNumber___block_invoke(uint64_t a1, uint64_t a2)
{
  if (qword_1ED49D1C8 != -1)
  {
    dispatch_once(&qword_1ED49D1C8, &__block_literal_global_1172);
  }

  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88___UIKeyboardStateManager_performHitTestForTouchEvents_executionContextPassingNSNumber___block_invoke_4;
  v6[3] = &__block_descriptor_40_e40_v16__0__UIKeyboardTaskExecutionContext_8l;
  v6[4] = a2;
  return [v4 transferExecutionToMainThreadWithTask:v6 breadcrumb:qword_1ED49D1C0];
}

void __88___UIKeyboardStateManager_performHitTestForTouchEvents_executionContextPassingNSNumber___block_invoke_2()
{
  v0 = [&__block_literal_global_1174 copy];
  v1 = qword_1ED49D1C0;
  qword_1ED49D1C0 = v0;
}

void __88___UIKeyboardStateManager_performHitTestForTouchEvents_executionContextPassingNSNumber___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithInteger:v3];
  [v4 returnExecutionToParentWithInfo:v5];
}

void __95___UIKeyboardStateManager_adjustPhraseBoundaryInForwardDirection_granularity_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1ED49D1D8 != -1)
  {
    dispatch_once(&qword_1ED49D1D8, &__block_literal_global_1178);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95___UIKeyboardStateManager_adjustPhraseBoundaryInForwardDirection_granularity_executionContext___block_invoke_4;
  v7[3] = &unk_1E70FD1B8;
  v4 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  v8 = v3;
  v5 = qword_1ED49D1D0;
  v6 = v3;
  [v4 transferExecutionToMainThreadWithTask:v7 breadcrumb:v5];
}

void __95___UIKeyboardStateManager_adjustPhraseBoundaryInForwardDirection_granularity_executionContext___block_invoke_2()
{
  v0 = [&__block_literal_global_1180 copy];
  v1 = qword_1ED49D1D0;
  qword_1ED49D1D0 = v0;
}

void __95___UIKeyboardStateManager_adjustPhraseBoundaryInForwardDirection_granularity_executionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 syncKeyboardToConfiguration:v4];
  [*(a1 + 32) didChangePhraseBoundary];
  [v5 returnExecutionToParent];
}

void __61___UIKeyboardStateManager_desirableInputModesWithExtensions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v8 = v3;
  if (*(a1 + 64) != 1 || (v5 = [v3 isExtensionInputMode], v4 = v8, (v5 & 1) == 0)) && ((v6 = objc_msgSend(v4, "isAllowedForTraits:", *(*(a1 + 32) + 136)), v4 = v8, (v6) || *(a1 + 40) && (v7 = objc_msgSend(v8, "isAllowedForTraits:"), v4 = v8, v7)))
  {
    [*(a1 + 48) addObject:v4];
    if (*(a1 + 40) && [v8 isAllowedForTraits:?])
    {
      [*(a1 + 56) addObject:v8];
    }
  }

  else if ([v4 isExtensionInputMode])
  {
    *(*(a1 + 32) + 221) = 1;
  }
}

void __43___UIKeyboardStateManager_notifyShiftState__block_invoke()
{
  v0 = [&__block_literal_global_1225 copy];
  v1 = qword_1ED49D1E0;
  qword_1ED49D1E0 = v0;
}

void __43___UIKeyboardStateManager_notifyShiftState__block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained shiftKeyStateChangedFrom:*(a1 + 40) to:*(a1 + 44)];

  [v4 returnExecutionToParent];
}

void __50___UIKeyboardStateManager_supportsGenmojiCreation__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 infoDictionary];
  v6 = [v1 objectForKey:@"NSExtension"];

  v2 = v6;
  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v2 = v6;
    if (isKindOfClass)
    {
      v4 = [v6 objectForKey:@"NSExtensionPointIdentifier"];
      v5 = [v4 isEqualToString:@"com.apple.usernotifications.content-extension"];

      v2 = v6;
      if (v5)
      {
        byte_1ED49CF3C = 1;
      }
    }
  }
}

void __39___UIKeyboardStateManager_handleDelete__block_invoke()
{
  v0 = [&__block_literal_global_1281 copy];
  v1 = qword_1ED49D200;
  qword_1ED49D200 = v0;
}

void __38___UIKeyboardStateManager_handleClear__block_invoke()
{
  v0 = [&__block_literal_global_1285 copy];
  v1 = qword_1ED49D210;
  qword_1ED49D210 = v0;
}

void __158___UIKeyboardStateManager_handleMoveCursorToStartOfLine_beforePublicKeyCommands_testOnly_savedHistory_force_canHandleSelectableInputDelegateCommand_keyEvent___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) inputDelegateManager];
  v2 = [v3 _moveToStartOfLine:*(a1 + 48) withHistory:*(a1 + 40)];
  [*(a1 + 32) setArrowKeyHistory:v2];
}

void __156___UIKeyboardStateManager_handleMoveCursorToEndOfLine_beforePublicKeyCommands_testOnly_savedHistory_force_canHandleSelectableInputDelegateCommand_keyEvent___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) inputDelegateManager];
  v2 = [v3 _moveToEndOfLine:*(a1 + 48) withHistory:*(a1 + 40)];
  [*(a1 + 32) setArrowKeyHistory:v2];
}

void __241___UIKeyboardStateManager_handleHorizontalArrow_shiftDown_beforePublicKeyCommands_testOnly_isVerticalCandidate_hasCandidatesForTypedInput_shouldNavigateCandidateList_canHandleInputDelegateCommand_savedHistory_keyCommandTypeHandled_keyEvent___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) inputDelegateManager];
  v2 = [v3 _moveRight:*(a1 + 48) withHistory:*(a1 + 40)];
  [*(a1 + 32) setArrowKeyHistory:v2];
}

void __241___UIKeyboardStateManager_handleHorizontalArrow_shiftDown_beforePublicKeyCommands_testOnly_isVerticalCandidate_hasCandidatesForTypedInput_shouldNavigateCandidateList_canHandleInputDelegateCommand_savedHistory_keyCommandTypeHandled_keyEvent___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) inputDelegateManager];
  v2 = [v3 _moveLeft:*(a1 + 48) withHistory:*(a1 + 40)];
  [*(a1 + 32) setArrowKeyHistory:v2];
}

void __239___UIKeyboardStateManager_handleVerticalArrow_shiftDown_beforePublicKeyCommands_testOnly_isVerticalCandidate_hasCandidatesForTypedInput_inputDelegateCommandEnabled_canHandleInputDelegateCommand_savedHistory_keyCommandTypeHandled_keyEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) inputDelegateManager];
  v4 = *(a1 + 49);
  v5 = *(a1 + 40);
  v7 = v3;
  if (v2 == 1)
  {
    [v3 _moveDown:v4 withHistory:v5];
  }

  else
  {
    [v3 _moveUp:v4 withHistory:v5];
  }
  v6 = ;
  [*(a1 + 32) setArrowKeyHistory:v6];
}

void __72___UIKeyboardStateManager_deleteForwardAndNotify_producedByDeleteInput___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setForwardDeletionCount:1];
  [v3 setProducedByDeleteInput:*(a1 + 32)];
}

void __87___UIKeyboardStateManager__handleKeyInputMethodCommandForEvent_canHandleAppKeyCommand___block_invoke()
{
  v0 = [&__block_literal_global_1302 copy];
  v1 = qword_1ED49D220;
  qword_1ED49D220 = v0;
}

uint64_t __87___UIKeyboardStateManager__handleKeyInputMethodCommandForEvent_canHandleAppKeyCommand___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 516);
  *(v3 + 516) = 0;
  result = [*(a1 + 32) handleKeyWithString:*(a1 + 40) forKeyEvent:*(a1 + 48) executionContext:a2];
  *(*(a1 + 32) + 516) = v4;
  return result;
}

void __62___UIKeyboardStateManager_handleReplacement_forSpaceAndInput___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 acceptedCandidate];
  [v3 setAcceptedCandidate:v4];
}

void __60___UIKeyboardStateManager__scheduleInputAdditionOrDeletion___block_invoke()
{
  v0 = [&__block_literal_global_1311 copy];
  v1 = qword_1ED49D230;
  qword_1ED49D230 = v0;
}

void __90___UIKeyboardStateManager__addInputString_withFlags_withInputManagerHint_withInputSource___block_invoke()
{
  v0 = [&__block_literal_global_1315 copy];
  v1 = qword_1ED49D240;
  qword_1ED49D240 = v0;
}

void __106___UIKeyboardStateManager_addInputString_withFlags_withInputManagerHint_withInputSource_executionContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) inputManagerState];
  if (![v2 newInputAcceptsUserSelectedCandidate])
  {
    goto LABEL_6;
  }

  v3 = [*(a1 + 32) inputManagerState];
  if (([v3 inputStringAcceptsCurrentCandidateIfSelected:*(a1 + 40)] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v4 = [*(*(a1 + 32) + 632) longPredictionListEnabled];

  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = v5[5] != 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __106___UIKeyboardStateManager_addInputString_withFlags_withInputManagerHint_withInputSource_executionContext___block_invoke_2;
    v12[3] = &unk_1E70FD0F0;
    v12[4] = v5;
    v14 = v6;
    v7 = *(a1 + 48);
    v13 = *(a1 + 56);
    v8 = [v7 childWithContinuation:v12];
    [v5 acceptCurrentCandidateIfSelectedWithExecutionContext:v8];

    return;
  }

LABEL_7:
  [*(a1 + 32) setUserSelectedCurrentCandidate:0];
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  v11 = [*(a1 + 48) childWithContinuation:&__block_literal_global_1335];
  [v9 addInputEvent:v10 executionContext:v11];
}

void __106___UIKeyboardStateManager_addInputString_withFlags_withInputManagerHint_withInputSource_executionContext___block_invoke_2(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 217) = *(a1 + 48);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __106___UIKeyboardStateManager_addInputString_withFlags_withInputManagerHint_withInputSource_executionContext___block_invoke_3;
  v11 = &unk_1E70FD1B8;
  v12 = v5;
  v6 = v4;
  v13 = v6;
  v7 = [a2 childWithContinuation:&v8];
  [v5 addInputEvent:v6 executionContext:{v7, v8, v9, v10, v11, v12}];

  *(*(a1 + 32) + 217) = 0;
}

void __106___UIKeyboardStateManager_addInputString_withFlags_withInputManagerHint_withInputSource_executionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([objc_opt_class() _isInputEligibleForSpaceAutodelete:*(a1 + 40)])
  {
    *(*(a1 + 32) + 170) = 1;
  }

  +[UIKBAnalyticsDispatcher didCandidateReplacement];
  [v3 returnExecutionToParent];
}

void __106___UIKeyboardStateManager_addInputString_withFlags_withInputManagerHint_withInputSource_executionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  +[UIKBAnalyticsDispatcher didCandidateReplacement];
  [v2 returnExecutionToParent];
}

void __58___UIKeyboardStateManager_addInputEvent_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 info];
  if (v3)
  {
    v4 = v3;
    v5 = [v15 info];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = *(a1 + 56);
      v9 = *(a1 + 32);
      v10 = [v15 info];
      [v7 handleFailureInMethod:v8 object:v9 file:@"_UIKeyboardStateManager.m" lineNumber:12744 description:{@"UIKeyboardTask %s expected TIKeyboardCandidate but received %@", "-[_UIKeyboardStateManager addInputEvent:executionContext:]_block_invoke", v10}];
    }
  }

  v11 = [v15 info];
  v12 = v11;
  if (*(a1 + 40) && ([v11 candidate], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "hasSuffix:", *(a1 + 40)), v13, v14))
  {
    [*(a1 + 32) completeAddInputString:*(a1 + 40)];
    [v15 returnExecutionToParent];
  }

  else
  {
    [*(a1 + 32) addWordTerminator:*(a1 + 48) afterSpace:*(a1 + 72) afterAcceptingCandidate:v12 elapsedTime:v15 executionContext:*(a1 + 64)];
  }
}

void __58___UIKeyboardStateManager_addInputEvent_executionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v11 = a2;
  v4 = [v3 autocorrectionController];
  if ([v4 hasAutocorrection])
  {
    v5 = [*(a1 + 32) autocorrectionController];
    v6 = [v5 autocorrection];
    v7 = [v6 isForShortcutConversion];

    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    if (v7)
    {
      v10 = [v9 shouldShowLongPredictionList];
      goto LABEL_6;
    }
  }

  else
  {

    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
  }

  v10 = 1;
LABEL_6:
  [v9 completeAddInputString:v8 generateCandidates:v10];
  [v11 returnExecutionToParent];
}

void __65___UIKeyboardStateManager_acceptAutocorrectionForWordTerminator___block_invoke()
{
  v0 = [&__block_literal_global_1343 copy];
  v1 = qword_1ED49D250;
  qword_1ED49D250 = v0;
}

void __65___UIKeyboardStateManager_acceptAutocorrectionForWordTerminator___block_invoke_3(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65___UIKeyboardStateManager_acceptAutocorrectionForWordTerminator___block_invoke_4;
  v5[3] = &unk_1E70FD950;
  v5[4] = a1[6];
  v4 = [a2 childWithContinuation:v5];
  [v2 acceptAutocorrectionForWordTerminator:v3 executionContextPassingTIKeyboardCandidate:v4];
}

void __65___UIKeyboardStateManager_acceptAutocorrectionForWordTerminator___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 info];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [v6 returnExecutionToParent];
}

void __108___UIKeyboardStateManager_acceptAutocorrectionForWordTerminator_executionContextPassingTIKeyboardCandidate___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 info];
  if (v3)
  {
    v4 = v3;
    v5 = [v14 info];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = *(a1 + 56);
      v9 = *(a1 + 32);
      v10 = [v14 info];
      [v7 handleFailureInMethod:v8 object:v9 file:@"_UIKeyboardStateManager.m" lineNumber:12837 description:{@"UIKeyboardTask %s expected TIKeyboardCandidate but received %@", "-[_UIKeyboardStateManager acceptAutocorrectionForWordTerminator:executionContextPassingTIKeyboardCandidate:]_block_invoke", v10}];
    }
  }

  v11 = [v14 info];
  NSSelectorFromString(&cfstr_Learningflags.isa);
  if (objc_opt_respondsToSelector())
  {
    v12 = [*(a1 + 40) valueForKey:@"learningFlags"];
    v13 = [v12 unsignedIntValue];

    [*(a1 + 32) didAcceptAutocorrection:v11 inputCandidate:*(a1 + 40) wordTerminator:*(a1 + 48) learningFlagsMask:v13];
  }

  else
  {
    [*(a1 + 32) didAcceptAutocorrection:v11 inputCandidate:*(a1 + 40) wordTerminator:*(a1 + 48)];
  }

  [*(a1 + 32) setAutocorrection:0];
  [v14 returnExecutionToParentWithInfo:v11];
}

uint64_t __60___UIKeyboardStateManager_inputWordForTerminatorAtSelection__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 inputManagerState];
  v5 = [v4 stringEndsWord:v3];

  return v5;
}

void __60___UIKeyboardStateManager_insertedAccentVariantFromPopover___block_invoke()
{
  v0 = [&__block_literal_global_1355 copy];
  v1 = qword_1ED49D260;
  qword_1ED49D260 = v0;
}

void __60___UIKeyboardStateManager_insertedAccentVariantFromPopover___block_invoke_4()
{
  v0 = [&__block_literal_global_1361 copy];
  v1 = qword_1ED49D270;
  qword_1ED49D270 = v0;
}

void __60___UIKeyboardStateManager_insertedAccentVariantFromPopover___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69D95F8];
  v4 = a2;
  v7 = objc_alloc_init(v3);
  [v7 setString:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = [v4 childWithContinuation:&__block_literal_global_1363];

  [v5 handleKeyboardInput:v7 executionContext:v6];
}

void __58___UIKeyboardStateManager_handleEmojiInput_keyboardState___block_invoke()
{
  v0 = [&__block_literal_global_1367 copy];
  v1 = qword_1ED49D280;
  qword_1ED49D280 = v0;
}

void __58___UIKeyboardStateManager_handleEmojiInput_keyboardState___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58___UIKeyboardStateManager_handleEmojiInput_keyboardState___block_invoke_4;
  aBlock[3] = &unk_1E70FD9C8;
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v6 = [*(a1 + 32) backendController];
  [v6 handleKeyboardInput:*(a1 + 40) keyboardState:*(a1 + 48) completionHandler:v5];
}

uint64_t __58___UIKeyboardStateManager_handleEmojiInput_keyboardState___block_invoke_4(uint64_t a1)
{
  if (qword_1ED49D298 != -1)
  {
    dispatch_once(&qword_1ED49D298, &__block_literal_global_1369);
  }

  v2 = *(a1 + 32);
  v3 = qword_1ED49D290;

  return [v2 transferExecutionToMainThreadWithTask:&__block_literal_global_1373 breadcrumb:v3];
}

void __58___UIKeyboardStateManager_handleEmojiInput_keyboardState___block_invoke_5()
{
  v0 = [&__block_literal_global_1371 copy];
  v1 = qword_1ED49D290;
  qword_1ED49D290 = v0;
}

void __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke_2(uint64_t a1, double a2, double a3, double a4, double a5)
{
  [*(a1 + 32) setDocumentStateForAutocorrection:*(a1 + 40)];
  if (qword_1ED49D2A8 != -1)
  {
    dispatch_once(&qword_1ED49D2A8, &__block_literal_global_1378);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke_5;
  v13[3] = &unk_1E70FD9F0;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v13[4] = *(a1 + 32);
  v14 = v10;
  v12 = *(a1 + 72);
  v19 = *(a1 + 56);
  v20 = v12;
  [v11 transferExecutionToMainThreadWithTask:v13 breadcrumb:qword_1ED49D2A0];

  *(*(a1 + 32) + 517) = 0;
}

void __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke_3()
{
  v0 = [&__block_literal_global_1380 copy];
  v1 = qword_1ED49D2A0;
  qword_1ED49D2A0 = v0;
}

void __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  if (CGRectIsEmpty(*(a1 + 48)))
  {
    [v4 returnExecutionToParent];
  }

  else
  {
    v3 = [*(a1 + 32) _textChoicesAssistant];
    [v3 trackUnderlineForWebKitCandidate:*(a1 + 40)];

    [*(a1 + 32) animateAutocorrectionToRect:*(a1 + 48) fromRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
    [*(a1 + 32) didApplyAutocorrection:*(a1 + 40) autocorrectPromptFrame:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
    [v4 returnExecutionToParentWithInfo:*(a1 + 40)];
  }
}

void __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke_6(uint64_t a1, double a2, double a3, double a4, double a5)
{
  [*(a1 + 32) setDocumentStateForAutocorrection:*(a1 + 40)];
  if (qword_1ED49D2B8 != -1)
  {
    dispatch_once(&qword_1ED49D2B8, &__block_literal_global_1383);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke_9;
  v13[3] = &unk_1E70FD9F0;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v13[4] = *(a1 + 32);
  v12 = *(a1 + 72);
  v19 = *(a1 + 56);
  v20 = v12;
  v14 = v10;
  [v11 transferExecutionToMainThreadWithTask:v13 breadcrumb:qword_1ED49D2B0];

  *(*(a1 + 32) + 517) = 0;
}

void __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke_7()
{
  v0 = [&__block_literal_global_1385 copy];
  v1 = qword_1ED49D2B0;
  qword_1ED49D2B0 = v0;
}

void __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  if (CGRectIsEmpty(*(a1 + 48)))
  {
    [v3 returnExecutionToParent];
  }

  else
  {
    [*(a1 + 32) animateAutocorrectionToRect:*(a1 + 48) fromRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
    [*(a1 + 32) didApplyAutocorrection:*(a1 + 40) autocorrectPromptFrame:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
    [v3 returnExecutionToParentWithInfo:*(a1 + 40)];
  }
}

void __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  [v3 rect];
  (*(v2 + 16))(v2);
}

void __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 firstObject];
  [v3 rect];
  (*(v2 + 16))(v2);
}

uint64_t __91___UIKeyboardStateManager_acceptAutocorrection_executionContextPassingTIKeyboardCandidate___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 firstRect];
  v3 = *(v2 + 16);

  return v3(v2);
}

void __109___UIKeyboardStateManager_addWordTerminator_afterSpace_afterAcceptingCandidate_elapsedTime_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v12 = a2;
  v4 = [v3 autocorrectionController];
  if ([v4 hasAutocorrection])
  {
    v5 = [*(a1 + 32) autocorrectionController];
    v6 = [v5 autocorrection];
    v7 = [v6 isForShortcutConversion] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = [*(a1 + 40) isContinuousPathConversion];
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = 1;
  if ((v7 & 1) == 0 && (v8 & 1) == 0)
  {
    v11 = [v9 shouldShowLongPredictionList];
  }

  [v9 completeAddInputString:v10 generateCandidates:v11];
  [v12 returnExecutionToParent];
}

void __69___UIKeyboardStateManager_movePhraseBoundaryToDirection_granularity___block_invoke()
{
  v0 = [&__block_literal_global_1397 copy];
  v1 = qword_1ED49D2C0;
  qword_1ED49D2C0 = v0;
}

void __67___UIKeyboardStateManager_deleteOnceFromInputWithExecutionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 completeDeleteOnceFromInputWithCharacterBefore:v3];
  [v4 returnExecutionToParent];
}

void __53___UIKeyboardStateManager__deleteFromInputWithFlags___block_invoke()
{
  v0 = [&__block_literal_global_1401 copy];
  v1 = qword_1ED49D2D0;
  qword_1ED49D2D0 = v0;
}

void __49___UIKeyboardStateManager_undoWithKeyboardInput___block_invoke()
{
  v0 = [&__block_literal_global_1408 copy];
  v1 = qword_1ED49D2E0;
  qword_1ED49D2E0 = v0;
}

void __105___UIKeyboardStateManager_performAutoDeleteNumberOfTimes_deleteOneWord_forwardToInputSource_deleteCount___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a2;
  if ([v9 _containsEmojiOnly])
  {
    *(*(a1[5] + 8) + 24) = 1;
    *a7 = 1;
  }

  else if ([v9 _isSpace])
  {
    ++*(*(a1[6] + 8) + 24);
  }

  else
  {
    v10 = a1[4];
    v11 = [v10 length];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __105___UIKeyboardStateManager_performAutoDeleteNumberOfTimes_deleteOneWord_forwardToInputSource_deleteCount___block_invoke_2;
    v12[3] = &unk_1E70FDB08;
    v12[4] = a1[5];
    [v10 enumerateSubstringsInRange:0 options:v11 usingBlock:{259, v12}];
    *a7 = 1;
  }
}

uint64_t __105___UIKeyboardStateManager_performAutoDeleteNumberOfTimes_deleteOneWord_forwardToInputSource_deleteCount___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  *(*(*(result + 32) + 8) + 24) = a4;
  *a7 = 1;
  return result;
}

void __105___UIKeyboardStateManager_performAutoDeleteNumberOfTimes_deleteOneWord_forwardToInputSource_deleteCount___block_invoke_4()
{
  v0 = [&__block_literal_global_1413 copy];
  v1 = qword_1ED49D2F0;
  qword_1ED49D2F0 = v0;
}

void __69___UIKeyboardStateManager_deleteFromInputWithFlags_executionContext___block_invoke()
{
  v0 = [&__block_literal_global_1422 copy];
  v1 = qword_1ED49D300;
  qword_1ED49D300 = v0;
}

void __69___UIKeyboardStateManager_deleteFromInputWithFlags_executionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = qword_1ED49D318;
  v4 = a2;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED49D318, &__block_literal_global_1424);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69___UIKeyboardStateManager_deleteFromInputWithFlags_executionContext___block_invoke_6;
  v5[3] = &unk_1E70FD058;
  v5[4] = *(a1 + 32);
  [v4 transferExecutionToMainThreadWithTask:v5 breadcrumb:qword_1ED49D310];
}

void __69___UIKeyboardStateManager_deleteFromInputWithFlags_executionContext___block_invoke_4()
{
  v0 = [&__block_literal_global_1426 copy];
  v1 = qword_1ED49D310;
  qword_1ED49D310 = v0;
}

void __69___UIKeyboardStateManager_deleteFromInputWithFlags_executionContext___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69___UIKeyboardStateManager_deleteFromInputWithFlags_executionContext___block_invoke_7;
  v4[3] = &unk_1E70FD058;
  v4[4] = v2;
  v3 = [a2 childWithContinuation:v4];
  [v2 syncDocumentStateToInputDelegateWithExecutionContext:v3];
}

void __69___UIKeyboardStateManager_deleteFromInputWithFlags_executionContext___block_invoke_8(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (*(v3 + 274) == 1)
  {
    v4 = *(v3 + 552);
    *(v3 + 552) = v4 + 1;
    if (v4)
    {
      goto LABEL_5;
    }

    v3 = *(a1 + 32);
  }

  [*(*(a1 + 32) + 632) setNeedAutofill:{objc_msgSend(v3, "needAutofillLogin")}];
  [*(*(a1 + 32) + 632) setAutofillMode:{objc_msgSend(*(a1 + 32), "needAutofill")}];
  [*(*(a1 + 32) + 632) setAutofillSubMode:{objc_msgSend(*(a1 + 32), "autofillSubMode")}];
  [*(a1 + 32) completeDelete];
LABEL_5:
  [*(a1 + 32) completeDeleteFromInput];
  [v5 returnExecutionToParent];
}

uint64_t __50___UIKeyboardStateManager_completeDeleteFromInput__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 inputManagerState];
  v5 = [v4 stringEndsWord:v3];

  return v5;
}

uint64_t __71___UIKeyboardStateManager_acceptInlineCompletionWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) endAcceptingInlineCompletionByDirectTap];
  v4 = _UIKeyboardLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[_UIKeyboardStateManager acceptInlineCompletionWithCompletionHandler:]_block_invoke";
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "%s Completed accept inline completion", &v6, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

void __103___UIKeyboardStateManager_acceptAutocorrectionWithCompletionHandler_requestedByRemoteInputDestination___block_invoke(uint64_t a1, int a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = _UIKeyboardLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NO";
    v14 = "[_UIKeyboardStateManager acceptAutocorrectionWithCompletionHandler:requestedByRemoteInputDestination:]_block_invoke";
    if (a2)
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    *buf = 136315650;
    v16 = v8;
    v15 = 2080;
    if (a3)
    {
      v7 = "YES";
    }

    v17 = 2080;
    v18 = v7;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "%s Got response from keyboard UI host: didForward=%s, shouldWaitForOutput=%s", buf, 0x20u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103___UIKeyboardStateManager_acceptAutocorrectionWithCompletionHandler_requestedByRemoteInputDestination___block_invoke_1435;
  aBlock[3] = &unk_1E70F0F78;
  v12 = *(a1 + 40);
  v9 = _Block_copy(aBlock);
  if ((a2 & 1) == 0)
  {
    if (pthread_main_np() != 1)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"_UIKeyboardStateManager.m" lineNumber:13974 description:@"Call must be made on main thread"];
    }

    [*(a1 + 32) _local_acceptAutocorrection];
    goto LABEL_14;
  }

  if ((a3 & 1) == 0)
  {
LABEL_14:
    v9[2](v9);
    goto LABEL_15;
  }

  [*(a1 + 32) _setWaitingOnPerformAutocorrect:*(a1 + 40)];
LABEL_15:
  *(*(*(a1 + 48) + 8) + 24) = 0;
}

void __103___UIKeyboardStateManager_acceptAutocorrectionWithCompletionHandler_requestedByRemoteInputDestination___block_invoke_1435(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (pthread_main_np() == 1)
    {
      v2 = *(*(a1 + 32) + 16);

      v2();
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __103___UIKeyboardStateManager_acceptAutocorrectionWithCompletionHandler_requestedByRemoteInputDestination___block_invoke_2;
      block[3] = &unk_1E70F0F78;
      v4 = *(a1 + 32);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __103___UIKeyboardStateManager_acceptAutocorrectionWithCompletionHandler_requestedByRemoteInputDestination___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 autocorrectionController];
  v4 = [v3 autocorrection];
  v5 = [v2 shouldApplyAcceptedAutocorrection:v4];
  if (v5)
  {

LABEL_11:
    goto LABEL_12;
  }

  if ([*(a1 + 32) _hasMarkedText])
  {
    v6 = [*(a1 + 32) inlineCompletionAsMarkedText];

    if (!v6)
    {
      v5 = 1;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v7 = [*(a1 + 32) inlineCompletionAsMarkedText];
  if (v7)
  {
    v8 = v7;
    v9 = [*(a1 + 32) inlineTextCompletionController];
    v10 = [v9 currentlyAcceptingInlineCompletionByDirectTap];

    if ((v10 & 1) == 0)
    {
      v3 = [*(a1 + 32) inlineTextCompletionController];
      [v3 removeTextCompletionPrompt];
      goto LABEL_11;
    }
  }

  v5 = 0;
LABEL_12:
  v11 = *(a1 + 48);
  if (v11 == 1)
  {
    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, v5);
    }
  }

  result = [*(a1 + 32) _shouldAcceptAutocorrectionOnSelectionChange];
  if (result)
  {
    result = [*(a1 + 32) _acceptAutocorrection];
  }

  if ((v11 & 1) == 0)
  {
    result = *(a1 + 40);
    if (result)
    {
      v14 = *(result + 16);

      return v14();
    }
  }

  return result;
}

void __54___UIKeyboardStateManager__local_acceptAutocorrection__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 _local_acceptAutocorrection];
  [v3 returnExecutionToParent];
}

void __54___UIKeyboardStateManager__local_acceptAutocorrection__block_invoke_2()
{
  v0 = [&__block_literal_global_1443 copy];
  v1 = qword_1ED49D320;
  qword_1ED49D320 = v0;
}

void __48___UIKeyboardStateManager__acceptAutocorrection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[UIKeyboard usesInputSystemUI];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48___UIKeyboardStateManager__acceptAutocorrection__block_invoke_2;
    v6[3] = &unk_1E70F5AC0;
    v7 = v3;
    [v5 acceptAutocorrectionWithCompletionHandler:v6];
  }

  else
  {
    [v5 _acceptAutocorrection];
    [v3 returnExecutionToParent];
  }
}

void __48___UIKeyboardStateManager__acceptAutocorrection__block_invoke_3()
{
  v0 = [&__block_literal_global_1447 copy];
  v1 = qword_1ED49D330;
  qword_1ED49D330 = v0;
}

void __47___UIKeyboardStateManager_acceptAutocorrection__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained remoteTextInputPartner];
  v3 = [v2 exchangeWaitingRTIOutputOperationResponseContext:0];

  if (v3)
  {
    v4 = _UIKeyboardLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[_UIKeyboardStateManager acceptAutocorrection]_block_invoke";
      _os_log_error_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%s Timeout while waiting for acceptAutocorrectionWithCompletionHandler:", &v5, 0xCu);
    }

    if (qword_1ED49D348 != -1)
    {
      dispatch_once(&qword_1ED49D348, &__block_literal_global_1450);
    }

    [v3 transferExecutionToMainThreadWithTask:&__block_literal_global_1454 breadcrumb:qword_1ED49D340];
  }
}

void __47___UIKeyboardStateManager_acceptAutocorrection__block_invoke_1448()
{
  v0 = [&__block_literal_global_1452 copy];
  v1 = qword_1ED49D340;
  qword_1ED49D340 = v0;
}

void __47___UIKeyboardStateManager_acceptAutocorrection__block_invoke_4()
{
  v0 = [&__block_literal_global_1458 copy];
  v1 = qword_1ED49D350;
  qword_1ED49D350 = v0;
}

void __47___UIKeyboardStateManager_acceptAutocorrection__block_invoke_6(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained remoteTextInputPartner];
  v6 = [v5 exchangeWaitingRTIOutputOperationResponseContext:v3];

  if (v6)
  {
    v7 = _UIKeyboardLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[_UIKeyboardStateManager acceptAutocorrection]_block_invoke_6";
      _os_log_error_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%s Found unhandled waitingRTIOutputOperationResponseContext", buf, 0xCu);
    }
  }

  v8 = [WeakRetained remoteTextInputPartner];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47___UIKeyboardStateManager_acceptAutocorrection__block_invoke_1459;
  v10[3] = &unk_1E70FDBA8;
  v10[4] = *(a1 + 32);
  v10[5] = WeakRetained;
  v11 = v3;
  v9 = v3;
  [v8 forwardSelectorToUIHost:sel_acceptAutocorrectionWithCompletionHandler_requestedByRemoteInputDestination_ completionHandler:v10];
}

void __47___UIKeyboardStateManager_acceptAutocorrection__block_invoke_1459(uint64_t a1, char a2, char a3)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) _local_acceptAutocorrection];
  }

  if ((a3 & 1) == 0)
  {
    v5 = [*(a1 + 40) remoteTextInputPartner];
    v6 = [v5 compareWaitingRTIOutputOperationResponseContext:*(a1 + 48) andExchange:0];

    if (v6)
    {
      if (qword_1ED49D368 != -1)
      {
        dispatch_once(&qword_1ED49D368, &__block_literal_global_1462);
      }

      v7 = *(a1 + 48);
      v8 = qword_1ED49D360;

      [v7 transferExecutionToMainThreadWithTask:&__block_literal_global_1468 breadcrumb:v8];
    }
  }
}

void __47___UIKeyboardStateManager_acceptAutocorrection__block_invoke_2_1460()
{
  v0 = [&__block_literal_global_1465 copy];
  v1 = qword_1ED49D360;
  qword_1ED49D360 = v0;
}

uint64_t __67___UIKeyboardStateManager__acceptSupplementalCandidate_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (+[UIKeyboard isKeyboardProcess])
  {
    objc_initWeak(&location, *(a1 + 32));
    v10 = *(a1 + 32);
    v11 = (*(v10 + 672) + 1);
    *(v10 + 672) = v11;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __67___UIKeyboardStateManager__acceptSupplementalCandidate_completion___block_invoke_2;
    v35[3] = &unk_1E70FDBF8;
    objc_copyWeak(v39, &location);
    v39[1] = v11;
    v12 = v8;
    v36 = v12;
    v37 = v9;
    v38 = *(a1 + 40);
    [*(a1 + 32) setChooseSupplementalCandidateCompletion:v35];
    v13 = [*(a1 + 32) remoteTextInputPartner];
    v14 = [v12 input];
    v15 = [v13 textOperation_chooseSupplementalItem:v7 toReplaceText:v14];

    v16 = [*(a1 + 32) inputSystemSourceSession];
    v17 = v16;
    if (v15 && v16)
    {
      v18 = [v15 customInfoType];
      v19 = [v17 textOperations];
      [v19 setCustomInfoType:v18];

      v20 = [v15 customInfo];
      v21 = [v17 textOperations];
      [v21 setCustomInfo:v20];

      [v17 flushOperations];
    }

    v22 = v39;
  }

  else
  {
    v23 = [*(a1 + 32) inputDelegate];
    v24 = objc_opt_respondsToSelector();

    if ((v24 & 1) == 0)
    {
      v28 = 0;
      goto LABEL_10;
    }

    objc_initWeak(&location, *(a1 + 32));
    v25 = *(a1 + 32);
    v26 = (*(v25 + 672) + 1);
    *(v25 + 672) = v26;
    *(*(a1 + 32) + 517) = 1;
    v27 = [*(a1 + 32) inputDelegate];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __67___UIKeyboardStateManager__acceptSupplementalCandidate_completion___block_invoke_3;
    v30[3] = &unk_1E70FE140;
    objc_copyWeak(v34, &location);
    v34[1] = v26;
    v31 = v8;
    v32 = v9;
    v33 = *(a1 + 40);
    [v27 _chooseSupplementalItemToInsert:v7 replacementRange:v32 completionHandler:v30];

    *(*(a1 + 32) + 517) = 0;
    v22 = v34;
  }

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
  v28 = 1;
LABEL_10:

  return v28;
}

void __67___UIKeyboardStateManager__acceptSupplementalCandidate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 64);
    if (v6 == [WeakRetained lastChooseSupplementalItemToInsertCallbackIdentifier])
    {
      [v5 setPendingSupplementalCandidateToInsert:0];
      if (v3)
      {
        v7 = [*(a1 + 32) input];
        v8 = [v5 _rangeForSupplementalItemText:v7];

        v9 = [v5 inputDelegate];
        v10 = [v9 _range:*(a1 + 40) isEqualToRange:v8];

        if (v10)
        {
          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3[1], "identifier")}];
          v13[0] = v11;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
          [*(a1 + 32) setSupplementalItemIdentifiers:v12];

          (*(*(a1 + 48) + 16))();
        }
      }
    }
  }
}

void __67___UIKeyboardStateManager__acceptSupplementalCandidate_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 64);
    if (v6 == [WeakRetained lastChooseSupplementalItemToInsertCallbackIdentifier])
    {
      [v5 setPendingSupplementalCandidateToInsert:0];
      if (v3)
      {
        v7 = [*(a1 + 32) input];
        v8 = [v5 _rangeForSupplementalItemText:v7];

        v9 = [v5 inputDelegate];
        v10 = [v9 _range:*(a1 + 40) isEqualToRange:v8];

        if (v10)
        {
          v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3[1], "identifier")}];
          v13[0] = v11;
          v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
          [*(a1 + 32) setSupplementalItemIdentifiers:v12];

          (*(*(a1 + 48) + 16))();
        }
      }
    }
  }
}

void __54___UIKeyboardStateManager_handleInsertSmartCandidate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [UISmartActionPollOption alloc];
  v6 = [v3 option];

  v5 = [(UISmartActionPollOption *)v4 initWithOption:v6];
  [v2 addObject:v5];
}

void __65___UIKeyboardStateManager_acceptPredictiveInput_appendSeparator___block_invoke()
{
  v0 = [&__block_literal_global_1493 copy];
  v1 = qword_1ED49D370;
  qword_1ED49D370 = v0;
}

void __65___UIKeyboardStateManager_acceptPredictiveInput_appendSeparator___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained backendController];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65___UIKeyboardStateManager_acceptPredictiveInput_appendSeparator___block_invoke_4;
  v10[3] = &unk_1E70FDC70;
  v11 = v3;
  v9 = v3;
  [v5 candidateAccepted:v6 keyboardState:v7 candidateRquestToken:v8 completionHandler:v10];
}

void __65___UIKeyboardStateManager_acceptPredictiveInput_appendSeparator___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = +[UIKBAnalyticsDispatcher sharedInstance];
    v6 = [v5 nextCandidateReplacementSource];

    v7 = +[UIKBAnalyticsDispatcher sharedInstance];
    [v7 setNextCandidateReplacementSource:0];

    if (qword_1ED49D388 != -1)
    {
      dispatch_once(&qword_1ED49D388, &__block_literal_global_1495);
    }

    v8 = [WeakRetained taskQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65___UIKeyboardStateManager_acceptPredictiveInput_appendSeparator___block_invoke_8;
    v9[3] = &unk_1E70FDCC0;
    v12 = v6;
    v10 = WeakRetained;
    v11 = v3;
    v13 = *(a1 + 40);
    [v8 addTask:v9 breadcrumb:qword_1ED49D380];
  }
}

void __65___UIKeyboardStateManager_acceptPredictiveInput_appendSeparator___block_invoke_6()
{
  v0 = [&__block_literal_global_1497 copy];
  v1 = qword_1ED49D380;
  qword_1ED49D380 = v0;
}

uint64_t __65___UIKeyboardStateManager_acceptPredictiveInput_appendSeparator___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = +[UIKBAnalyticsDispatcher sharedInstance];
  [v5 setNextCandidateReplacementSource:v3];

  [*(a1 + 32) acceptPredictiveInput:*(a1 + 40) appendSeparator:*(a1 + 56) executionContext:v4];
  if ([*(a1 + 32) predictionType] == 1 || (result = objc_msgSend(*(a1 + 32), "predictionType"), result == 3))
  {
    v7 = *(a1 + 32);

    return [v7 setPredictionType:0];
  }

  return result;
}

void __48___UIKeyboardStateManager_rejectAutocorrection___block_invoke()
{
  v0 = [&__block_literal_global_1502 copy];
  v1 = qword_1ED49D390;
  qword_1ED49D390 = v0;
}

void __48___UIKeyboardStateManager_rejectAutocorrection___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 inputManager];
  [v4 candidateRejected:*(a1 + 40)];

  [v5 returnExecutionToParent];
}

void __40___UIKeyboardStateManager_textAccepted___block_invoke()
{
  v0 = [&__block_literal_global_1506 copy];
  v1 = qword_1ED49D3A0;
  qword_1ED49D3A0 = v0;
}

void __40___UIKeyboardStateManager_textAccepted___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 currentInputMode];
  LODWORD(v3) = [v3 isEqual:v5];

  if (v3)
  {
    [*(a1 + 40) textAccepted:*(a1 + 48) executionContext:v6];
  }

  else
  {
    [v6 returnExecutionToParent];
  }
}

void __57___UIKeyboardStateManager_textAccepted_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1ED49D3B8 != -1)
  {
    dispatch_once(&qword_1ED49D3B8, &__block_literal_global_1508);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57___UIKeyboardStateManager_textAccepted_executionContext___block_invoke_4;
  v7[3] = &unk_1E70FD1B8;
  v4 = *(a1 + 32);
  v7[4] = *(a1 + 40);
  v8 = v3;
  v5 = qword_1ED49D3B0;
  v6 = v3;
  [v4 transferExecutionToMainThreadWithTask:v7 breadcrumb:v5];
}

void __57___UIKeyboardStateManager_textAccepted_executionContext___block_invoke_2()
{
  v0 = [&__block_literal_global_1510 copy];
  v1 = qword_1ED49D3B0;
  qword_1ED49D3B0 = v0;
}

void __57___UIKeyboardStateManager_textAccepted_executionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if (([v3 usesCandidateSelection] & 1) == 0)
  {
    [*(a1 + 32) syncKeyboardToConfiguration:*(a1 + 40)];
  }

  [*(a1 + 32) finishTextChanged];
  [v4 returnExecutionToParent];
}

void __82___UIKeyboardStateManager_acceptPredictiveInput_appendSeparator_executionContext___block_invoke(id *a1, void *a2)
{
  v16 = a2;
  *(a1[4] + 170) = 1;
  if ([a1[5] length])
  {
    v3 = [a1[4] documentState];
    v4 = [v3 contextAfterInput];
    if ([v4 hasPrefix:a1[5]])
    {
      v5 = [a1[4] documentState];
      v6 = [v5 contextBeforeInput];
      v7 = [v6 hasSuffix:a1[5]];

      if (v7)
      {
        [a1[4] deleteForwardAndNotify:0];
      }
    }

    else
    {
    }
  }

  WeakRetained = objc_loadWeakRetained(a1[4] + 98);
  v9 = [WeakRetained layout];
  [v9 triggerSpaceKeyplaneSwitchIfNecessary];

  v10 = [a1[6] input];
  v11 = [a1[6] label];
  [UIKBAnalyticsDispatcher didCandidateReplacementWithRemovedText:v10 insertedText:v11];

  if ([_UISmartReplyFeedbackManager candidateIsSmartReply:a1[6]])
  {
    v12 = [a1[6] label];
    v13 = [*(a1[4] + 79) inputContextHistory];
    v14 = [v13 threadIdentifier];
    v15 = [a1[4] smartReplyFeedbackManager];
    [_UISmartReplyFeedbackManager userSelectedSmartReply:v12 isLongForm:0 withMailOrMsgThreadId:v14 withConversationType:1 withSmartReplyFeedbackManagerInstance:v15];
  }

  [v16 returnExecutionToParent];
}

void __82___UIKeyboardStateManager_acceptPredictiveInput_appendSeparator_executionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setPreviousInputString:0];
  *(*(a1 + 32) + 161) = 0;
  v4 = [v3 info];
  v5 = v4;
  if (!v4)
  {
    v5 = *(a1 + 40);
  }

  v6 = v5;

  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82___UIKeyboardStateManager_acceptPredictiveInput_appendSeparator_executionContext___block_invoke_3;
  v9[3] = &unk_1E70FDD10;
  v10 = *(a1 + 48);
  v9[4] = v7;
  v8 = [v3 childWithContinuation:v9];
  [v7 textAccepted:v6 executionContext:v8];
}

void __82___UIKeyboardStateManager_acceptPredictiveInput_appendSeparator_executionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = a2;
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 517);
    *(v3 + 517) = 1;
    *(*(a1 + 32) + 329) = 1;
    v5 = [*(a1 + 32) inputDelegateManager];
    [v5 insertTextAfterSelection:@" "];

    *(*(a1 + 32) + 329) = 0;
    v6 = +[UIKBAnalyticsDispatcher sharedInstance];
    [v6 setNextCandidateReplacementSource:0];

    if (+[UIKeyboard isKeyboardProcess])
    {
      v7 = [*(a1 + 32) inputSystemSourceSession];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 textOperations];
        v10 = [v9 keyboardOutput];
        [v10 setInsertionTextAfterSelection:@" "];

        [v8 flushOperations];
      }
    }

    *(*(a1 + 32) + 517) = v4;
  }

  [v11 returnExecutionToParent];
}

uint64_t __52___UIKeyboardStateManager_acceptCandidate_forInput___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DFB0] null];
  if ([v3 isEqual:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 candidate];
    v7 = [*(a1 + 32) candidate];
    v5 = [v6 isEqualToString:v7];
  }

  return v5;
}

void __58___UIKeyboardStateManager_acceptCurrentCandidateForInput___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (qword_1ED49D3C8 != -1)
  {
    dispatch_once(&qword_1ED49D3C8, &__block_literal_global_1531);
  }

  v7 = [*(a1 + 32) taskQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58___UIKeyboardStateManager_acceptCurrentCandidateForInput___block_invoke_4;
  v11[3] = &unk_1E70FD208;
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v8 = qword_1ED49D3C0;
  v9 = v6;
  v10 = v5;
  [v7 performSingleTask:v11 breadcrumb:v8];
}

void __58___UIKeyboardStateManager_acceptCurrentCandidateForInput___block_invoke_2()
{
  v0 = [&__block_literal_global_1533 copy];
  v1 = qword_1ED49D3C0;
  qword_1ED49D3C0 = v0;
}

void __67___UIKeyboardStateManager_acceptInlineCandidateForInput_withSpace___block_invoke()
{
  v0 = [&__block_literal_global_1538 copy];
  v1 = qword_1ED49D3D0;
  qword_1ED49D3D0 = v0;
}

void __69___UIKeyboardStateManager_acceptCandidate_forInput_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 completeAcceptCandidate:v3];
  [v4 returnExecutionToParent];
}

void __47___UIKeyboardStateManager_acceptFirstCandidate__block_invoke()
{
  v0 = [&__block_literal_global_1542 copy];
  v1 = qword_1ED49D3E0;
  qword_1ED49D3E0 = v0;
}

void __47___UIKeyboardStateManager_acceptFirstCandidate__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  [*(a1 + 32) acceptCandidate:*(a1 + 40) forInput:0 executionContext:a2];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([*v3 wordSeparator], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v3 = (*(a1 + 32) + 568);
  }

  v6 = [*v3 wordSeparator];
  if ([v6 length])
  {
    v5 = [*(a1 + 32) inputDelegateManager];
    [v5 insertText:v6 updateInputSource:0];
  }
}

void __59___UIKeyboardStateManager_acceptCurrentCandidateIfSelected__block_invoke()
{
  v0 = [&__block_literal_global_1546 copy];
  v1 = qword_1ED49D3F0;
  qword_1ED49D3F0 = v0;
}

void __80___UIKeyboardStateManager_acceptCurrentCandidateIfSelectedWithExecutionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 completeAcceptCandidate:v3];
  [v4 returnExecutionToParent];
}

void __56___UIKeyboardStateManager_candidateListAcceptCandidate___block_invoke()
{
  v0 = [&__block_literal_global_1550 copy];
  v1 = qword_1ED49D400;
  qword_1ED49D400 = v0;
}

void __56___UIKeyboardStateManager_candidateListAcceptCandidate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  v5 = [v3 currentCandidate];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [*(*(a1 + 32) + 32) defaultCandidate];
  }

  v8 = v7;

  [*(a1 + 32) acceptPredictiveInput:v8 executionContext:v4];
}

void __45___UIKeyboardStateManager_acceptRecentInput___block_invoke()
{
  v0 = [&__block_literal_global_1556 copy];
  v1 = qword_1ED49D410;
  qword_1ED49D410 = v0;
}

void __45___UIKeyboardStateManager_acceptRecentInput___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __45___UIKeyboardStateManager_acceptRecentInput___block_invoke_4;
  v8 = &unk_1E70FD1B8;
  v9 = v3;
  v10 = *(a1 + 40);
  v4 = [a2 childWithContinuation:&v5];
  [v3 handleClearWithExecutionContext:{v4, v5, v6, v7, v8, v9}];
}

void __42___UIKeyboardStateManager_addInputObject___block_invoke()
{
  v0 = [&__block_literal_global_1560 copy];
  v1 = qword_1ED49D420;
  qword_1ED49D420 = v0;
}

void __59___UIKeyboardStateManager_addInputObject_executionContext___block_invoke()
{
  v0 = [&__block_literal_global_1564 copy];
  v1 = qword_1ED49D430;
  qword_1ED49D430 = v0;
}

void __59___UIKeyboardStateManager_addInputObject_executionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 updateTextCandidateView];
  [v3 returnExecutionToParent];
}

void __91___UIKeyboardStateManager_completeAcceptCandidateBeforeAddingInputObject_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 completeAddInputString:0];
  [v3 returnExecutionToParent];
}

void __59___UIKeyboardStateManager_acceptWord_firstDelete_forInput___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (+[UIKeyboard isKeyboardProcess])
  {
    [v4 setAcceptedCandidate:*(a1 + 32)];
  }

  else
  {
    v3 = [v4 acceptedCandidate];

    if (!v3)
    {
      [v4 insertText:*(a1 + 40)];
    }
  }
}

void __59___UIKeyboardStateManager_acceptWord_firstDelete_forInput___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (+[UIKeyboard isKeyboardProcess])
  {
    [v4 setAcceptedCandidate:*(a1 + 32)];
  }

  else
  {
    v3 = [v4 acceptedCandidate];

    if (!v3)
    {
      [v4 insertText:*(a1 + 40)];
    }
  }
}

void __46___UIKeyboardStateManager_processPayloadInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) inputDelegateManager];
  v3 = [v2 delegateRespectingForwardingDelegate:0];
  if (v3)
  {
  }

  else
  {
    v4 = [*(a1 + 40) objectForKey:*MEMORY[0x1E69D9888]];

    if (!v4)
    {
      goto LABEL_5;
    }

    v11 = [*(a1 + 32) autofillController];
    v12 = [v11 autofillGroup];
    v2 = [v12 objectForKey:@"password"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v2 __isKindOfUIResponder])
    {
      v2 = v2;
      [v2 becomeFirstResponder];
      v4 = v2;
      goto LABEL_4;
    }
  }

  v4 = 0;
LABEL_4:

LABEL_5:
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46___UIKeyboardStateManager_processPayloadInfo___block_invoke_2;
  v13[3] = &unk_1E70FD608;
  v5 = *(a1 + 32);
  v14 = *(a1 + 40);
  [v5 performKeyboardOutputOnInputSourceSession:v13];
  [v4 resignFirstResponder];
  v6 = [*(a1 + 40) objectForKey:@"AutofillOneTimeCodeAvailable"];
  if ([v6 BOOLValue])
  {
    v7 = +[UIKeyboardInputModeController sharedInputModeController];
    v8 = [v7 currentInputMode];
    v9 = [v8 isExtensionInputMode];

    if (v9)
    {
      v10 = +[UIKeyboardInputModeController sharedInputModeController];
      [v10 switchToCurrentSystemInputMode];
    }
  }

  [*(a1 + 32) performKeyboardOutputInfo:*(a1 + 40)];
}

void __46___UIKeyboardStateManager_processPayloadInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 mutableCopy];
  [v3 setCustomInfo:v4];
}

void __60___UIKeyboardStateManager_pushAutocorrections_requestToken___block_invoke()
{
  v0 = [&__block_literal_global_1572 copy];
  v1 = qword_1ED49D440;
  qword_1ED49D440 = v0;
}

void __60___UIKeyboardStateManager_pushAutocorrections_requestToken___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] currentCandidateRequest];
  if (v4)
  {
    v5 = v4;
    v6 = a1[5];
    v7 = [a1[4] currentCandidateRequest];
    LODWORD(v6) = [v6 isSameRequestAs:v7];

    if (v6)
    {
      v8 = a1[6];
      goto LABEL_15;
    }
  }

  v9 = [a1[6] predictions];
  v10 = [v9 firstObject];
  v11 = [v10 isAutofillCandidate];

  if (v11)
  {
    v12 = [a1[4] delegateForCandidateRequest];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __60___UIKeyboardStateManager_pushAutocorrections_requestToken___block_invoke_4;
    v59[3] = &unk_1E70FDDF8;
    v60 = a1[5];
    v13 = [v12 keysOfEntriesPassingTest:v59];

    if ([v13 count])
    {
      v14 = [a1[4] delegateForCandidateRequest];
      v15 = [v13 anyObject];
      v16 = [v14 objectForKeyedSubscript:v15];
      v17 = MEMORY[0x1E696B098];
      v18 = [a1[4] delegate];
      v19 = [v17 valueWithPointer:v18];
      v20 = [v16 isEqual:v19];
    }

    else
    {
      v20 = 0;
    }

    v8 = a1[6];
    if (v20)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = a1[6];
  }

  v21 = [a1[4] currentCandidateRequest];
  if (v21)
  {
    v22 = v21;
LABEL_12:

LABEL_30:
    [v3 returnExecutionToParent];
    goto LABEL_31;
  }

  v23 = [a1[4] smartActionCandidateRequest];
  v24 = [v23 isSameRequestAs:a1[5]];

  if (!v24)
  {
    goto LABEL_30;
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v25 = [v8 predictions];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __60___UIKeyboardStateManager_pushAutocorrections_requestToken___block_invoke_5;
  v54[3] = &unk_1E70FDE20;
  v54[4] = &v55;
  [v25 enumerateObjectsUsingBlock:v54];

  LODWORD(v25) = *(v56 + 24);
  _Block_object_dispose(&v55, 8);
  if (v25 != 1)
  {
    goto LABEL_30;
  }

LABEL_15:
  v22 = [v8 predictions];
  v26 = [v22 lastObject];
  if ([v26 customInfoType] != 32)
  {
LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  v27 = _UIMainBundleIdentifier();
  v28 = [v27 isEqualToString:@"com.apple.ConnectSSO.App-SSO"];

  if (v28)
  {
    v29 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v30 = [v29 responder];
    v22 = [v30 _responderWindow];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    v31 = v22 ? v22[121] : 0;
    v32 = v31;
    v33 = [v32 isEqualToString:@"com.apple.SafariViewService"];

    if (!v33)
    {
      goto LABEL_24;
    }

    v34 = [v8 predictions];
    v35 = [v34 count];

    if (v35 >= 2)
    {
      v36 = [v8 predictions];
      v37 = [v8 predictions];
      v26 = [v36 subarrayWithRange:{0, objc_msgSend(v37, "count") - 1}];

      v38 = MEMORY[0x1E69D9570];
      v39 = [v8 corrections];
      v40 = [v8 emojiList];
      v41 = [v38 listWithCorrections:v39 predictions:v26 emojiList:v40];

      v8 = v41;
      goto LABEL_23;
    }

    goto LABEL_12;
  }

LABEL_25:
  v42 = [v8 sourceForAutocorrection];
  v43 = a1[4];
  v44 = [v8 corrections];
  v45 = [v44 autocorrection];
  LODWORD(v43) = [v43 shouldAcceptContinuousPathConversion:v45];

  if (v43)
  {
    v46 = MEMORY[0x1E69D9570];
    v47 = [v8 predictions];
    v48 = [v8 emojiList];
    v49 = [v46 listWithCorrections:0 predictions:v47 emojiList:v48];

    v8 = v49;
  }

  *(a1[4] + 81) = v42;
  [a1[4] inputManagerDidGenerateAutocorrections:v8 executionContext:v3];
  if (_os_feature_enabled_impl())
  {
    v50 = a1[4];
    v51 = v50[105];
    v50[105] = 0;
  }

  v52 = [a1[4] smartReplyFeedbackManager];
  v53 = [a1[6] predictions];
  [v52 updateCandidates:v53];

LABEL_31:
}

uint64_t __60___UIKeyboardStateManager_pushAutocorrections_requestToken___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 candidateProperty];
  if ((result & 0x80) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __63___UIKeyboardStateManager_pushCandidateResultSet_requestToken___block_invoke()
{
  v0 = [&__block_literal_global_1586 copy];
  v1 = qword_1ED49D450;
  qword_1ED49D450 = v0;
}

void __63___UIKeyboardStateManager_pushCandidateResultSet_requestToken___block_invoke_3(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) currentCandidateRequest];
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) currentCandidateRequest];
    LODWORD(v5) = [v5 isSameRequestAs:v6];

    if (v5)
    {
      [*(a1 + 32) inputManagerDidGenerateCandidateResultSet:*(a1 + 48)];
      v7 = [*(a1 + 32) smartReplyFeedbackManager];
      v8 = [*(a1 + 48) candidates];
      [v7 updateCandidates:v8];
    }
  }

  [v9 returnExecutionToParent];
}

void __49___UIKeyboardStateManager_setAutocorrectionList___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _supplementalCandidateIcon:v3];
  [v3 setIcon:v4];
}

void __41___UIKeyboardStateManager_setCandidates___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69D9588];
  v4 = a2;
  v6 = [[v3 alloc] initWithAutocorrection:*(a1 + 32) alternateCorrections:0];
  v5 = [MEMORY[0x1E69D9570] listWithCorrections:v6 predictions:0];
  [*(a1 + 40) inputManagerDidGenerateAutocorrections:v5 executionContext:v4];
}

void __41___UIKeyboardStateManager_setCandidates___block_invoke_2()
{
  v0 = [&__block_literal_global_1658 copy];
  v1 = qword_1ED49D460;
  qword_1ED49D460 = v0;
}

void __62___UIKeyboardStateManager_touchDelayDeleteTimerWithThreshold___block_invoke()
{
  v0 = [&__block_literal_global_1690 copy];
  v1 = qword_1ED49D470;
  qword_1ED49D470 = v0;
}

void __62___UIKeyboardStateManager_touchDelayDeleteTimerWithThreshold___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) deleteWordLastDelete];
  if (v3 <= -*MEMORY[0x1E695E460])
  {
    [v4 returnExecutionToParent];
  }

  else
  {
    [*(a1 + 32) setDeleteWordLastDelete:?];
    [*(a1 + 32) handleDeleteWithExecutionContext:v4];
  }
}

void __47___UIKeyboardStateManager_applyAutocorrection___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDocumentStateForAutocorrection:*(a1 + 40)];
  v2 = [*(a1 + 32) _textChoicesAssistant];
  [v2 trackUnderlineForWebKitCandidate:*(a1 + 40)];

  *(*(a1 + 32) + 517) = 0;
}

void __47___UIKeyboardStateManager_applyAutocorrection___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setDocumentStateForAutocorrection:*(a1 + 40)];
  v2 = [*(a1 + 32) _textChoicesAssistant];
  [v2 trackUnderlineForWebKitCandidate:*(a1 + 40)];

  *(*(a1 + 32) + 517) = 0;
}

void __57___UIKeyboardStateManager_generateCandidatesWithOptions___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v13 = [v3 delegateAsResponder];
    v4 = [v13 _textSuggestionsForWritingTools];
    [v3 setSuggestions:v4];

LABEL_23:

    return;
  }

  if ((*(a1 + 40) & 1) == 0 && [*(a1 + 32) usesAutocorrectionLists])
  {
    v5 = [*(a1 + 32) inputDelegateManager];
    v6 = [v5 selectedTextRange];
    if ([v6 _isRanged])
    {
      v7 = *(a1 + 41);

      if ((v7 & 1) == 0)
      {
        v8 = *(a1 + 32);

        [v8 generateCandidatesFromReplacements];
        return;
      }
    }

    else
    {
    }
  }

  if (*(a1 + 40) == 1)
  {
    v9 = [*(a1 + 32) autocorrectionToAcceptBeforeProgressiveCandidates];

    if (!v9)
    {
      v10 = [*(a1 + 32) autocorrectionController];
      v11 = [v10 autocorrection];

      if ([v11 isContinuousPathConversion])
      {
      }

      else if (v11)
      {
LABEL_17:
        [*(a1 + 32) setAutocorrectionToAcceptBeforeProgressiveCandidates:v11];

        goto LABEL_18;
      }

      v11 = [MEMORY[0x1E69D95F0] candidateWithUnchangedInput:&stru_1EFB14550];
      goto LABEL_17;
    }
  }

LABEL_18:
  v12 = *(a1 + 32);
  if (*(a1 + 42) != 1)
  {
    v13 = [v12 autocorrectionController];
    [v13 setNeedsAutocorrection];
    goto LABEL_23;
  }

  [v12 _generateTextSuggestionForKeyboardCamera];
}

void __57___UIKeyboardStateManager_generateCandidatesWithOptions___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void __82___UIKeyboardStateManager__updateCandidatesWithCandidates_usesCandidateSelection___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v1 = *(a1 + 32);
    v3 = [MEMORY[0x1E69D95E8] setWithCandidates:*(a1 + 40)];
    [v1 setCandidates:?];
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = [*(a1 + 32) autocorrectionController];
    [v3 setAutocorrectionList:v2];
  }
}

void __52___UIKeyboardStateManager_populateEuclidCandidates___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _buildCandidatesFromResults:a2 selectedText:*(a1 + 40)];
  [*(a1 + 32) _updateCandidatesWithCandidates:v4 usesCandidateSelection:*(a1 + 48)];
  v3 = +[UIDictationController activeInstance];
  [v3 logEuclidRequested];
}

void __62___UIKeyboardStateManager_generateAutocorrectionReplacements___block_invoke()
{
  v0 = [&__block_literal_global_1768 copy];
  v1 = qword_1ED49D480;
  qword_1ED49D480 = v0;
}

uint64_t __62___UIKeyboardStateManager_generateAutocorrectionReplacements___block_invoke_3(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62___UIKeyboardStateManager_generateAutocorrectionReplacements___block_invoke_4;
  v5[3] = &unk_1E70FDF10;
  v5[4] = a1[6];
  return [v3 generateReplacementsForString:v2 candidatesHandler:v5 executionContext:a2];
}

void __62___UIKeyboardStateManager_generateAutocorrectionReplacements___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69D9570] listWithCorrections:0 predictions:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __68___UIKeyboardStateManager_generateAutocorrectionListForSelectedText__block_invoke()
{
  v0 = [&__block_literal_global_1772 copy];
  v1 = qword_1ED49D490;
  qword_1ED49D490 = v0;
}

void __68___UIKeyboardStateManager_generateAutocorrectionListForSelectedText__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setAutocorrectionListUIDisplayed:1];
  v4 = [*(a1 + 40) backendController];
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68___UIKeyboardStateManager_generateAutocorrectionListForSelectedText__block_invoke_4;
  v8[3] = &unk_1E70FDF60;
  v6 = *(a1 + 48);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v4 generateAutocorrectionsWithKeyboardState:v5 completionHandler:v8];
}

void __68___UIKeyboardStateManager_generateAutocorrectionListForSelectedText__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_1ED49D4A8 != -1)
  {
    dispatch_once(&qword_1ED49D4A8, &__block_literal_global_1774);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68___UIKeyboardStateManager_generateAutocorrectionListForSelectedText__block_invoke_7;
  v8[3] = &unk_1E70FDF38;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v6 = qword_1ED49D4A0;
  v7 = v3;
  [v5 transferExecutionToMainThreadWithTask:v8 breadcrumb:v6];
}

void __68___UIKeyboardStateManager_generateAutocorrectionListForSelectedText__block_invoke_5()
{
  v0 = [&__block_literal_global_1776 copy];
  v1 = qword_1ED49D4A0;
  qword_1ED49D4A0 = v0;
}

void __68___UIKeyboardStateManager_generateAutocorrectionListForSelectedText__block_invoke_7(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(a1 + 32));
  v3 = a2;
  [v3 returnExecutionToParent];
}

void __88___UIKeyboardStateManager_touchAutoDeleteTimerWithThreshold_adjustForPartialCompletion___block_invoke()
{
  v0 = [&__block_literal_global_1780 copy];
  v1 = qword_1ED49D4B0;
  qword_1ED49D4B0 = v0;
}

void __88___UIKeyboardStateManager_touchAutoDeleteTimerWithThreshold_adjustForPartialCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) touchAutoDeleteTimerWithThreshold:0 adjustForPartialCompletion:*(a1 + 40)];
  }

  [*(a1 + 32) handleAutoDeleteWithExecutionContext:v3];
}

void __63___UIKeyboardStateManager_performStopAutoDeleteAtDocumentStart__block_invoke()
{
  v0 = [&__block_literal_global_1786 copy];
  v1 = qword_1ED49D4C0;
  qword_1ED49D4C0 = v0;
}

void __63___UIKeyboardStateManager_performStopAutoDeleteAtDocumentStart__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 _stopAutoDeleteAtDocumentStart];
  [v3 returnExecutionToParent];
}

void __64___UIKeyboardStateManager_handleAutoDeleteWithExecutionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 completeHandleAutoDelete];
  [v3 returnExecutionToParent];
}

void __56___UIKeyboardStateManager_handleDelayedActionLongPress___block_invoke()
{
  v0 = [&__block_literal_global_1797 copy];
  v1 = qword_1ED49D4D0;
  qword_1ED49D4D0 = v0;
}

void __56___UIKeyboardStateManager_handleDelayedActionLongPress___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  v5 = v3;
  if (a1[4] == v4[12])
  {
    [v4 longPressAction:a1[6]];
    v3 = v5;
  }

  [v3 returnExecutionToParent];
}

void __109___UIKeyboardStateManager__handleWebKeyEvent_withEventType_withInputString_withInputStringIgnoringModifiers___block_invoke()
{
  v0 = [&__block_literal_global_1804 copy];
  v1 = qword_1ED49D4E0;
  qword_1ED49D4E0 = v0;
}

void __126___UIKeyboardStateManager__handleWebKeyEvent_withEventType_withInputString_withInputStringIgnoringModifiers_executionContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained returnExecutionToParentWithInfo:*(*(*(a1 + 32) + 8) + 40)];
}

void __126___UIKeyboardStateManager__handleWebKeyEvent_withEventType_withInputString_withInputStringIgnoringModifiers_executionContext___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) takeOwnershipOfPendingCompletionBlock];
  if (v5)
  {
    v13 = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v13[2](v13);
    v5 = v13;
    v9 = *(a1 + 40);
    v10 = *(v9 + 104);
    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (v12 < 0 == v11)
    {
      *(v9 + 104) = v12;
    }
  }
}

void __70___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString___block_invoke()
{
  v0 = [&__block_literal_global_1824 copy];
  v1 = qword_1ED49D4F0;
  qword_1ED49D4F0 = v0;
}

uint64_t __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_2(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6[269])
  {
LABEL_2:
    v6[269] = 0;
    [*(a1 + 32) setExternalTask:0];
    [v5 returnExecutionToParent];
    v7 = 1;
    goto LABEL_3;
  }

  v7 = 0;
  if ((v6[270] & 1) == 0 && (a3 & 1) == 0)
  {
    [v6 handleKeyAppCommandForCurrentEvent];
    v6 = *(a1 + 32);
    if ((v6[269] & 1) == 0)
    {
      v7 = 0;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

LABEL_3:

  return v7;
}

void __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ((*(a1 + 40) & 1) != 0 || (v6 = *(a1 + 32), *(v6 + 271) != 1))
  {
    v9 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((v6 + 784));
    v8 = [WeakRetained layout];
    if (v8)
    {
      v9 = [*(a1 + 32) callLayoutUsesAutoShift];
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = [*(a1 + 32) externalTask];

  if (v10)
  {
    if (v9)
    {
      *(*(a1 + 32) + 273) = 0;
      [*(a1 + 32) setShiftNeedsUpdate];
    }

    v11 = [*(a1 + 32) externalTask];
    [*(a1 + 32) setExternalTask:0];
    v12 = [v13 childWithContinuation:v5];
    (v11)[2](v11, v12);
  }

  else
  {
    if (v9)
    {
      *(*(a1 + 32) + 273) = 1;
      [*(a1 + 32) setShiftOffIfNeeded];
    }

    v5[2](v5, v13);
  }
}

void __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 info];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 info];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  if (qword_1ED49D508 != -1)
  {
    dispatch_once(&qword_1ED49D508, &__block_literal_global_1834);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_7;
  v13[3] = &unk_1E70FE050;
  v7 = *(a1 + 40);
  v16 = v6;
  v12 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v12;
  *(&v11 + 1) = v7;
  v14 = v11;
  v15 = v10;
  [v3 transferExecutionToMainThreadWithTask:v13 breadcrumb:qword_1ED49D500];
}

void __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_5()
{
  v0 = [&__block_literal_global_1836 copy];
  v1 = qword_1ED49D500;
  qword_1ED49D500 = v0;
}

void __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_7(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setEventForCurrentWebEvent:0];
  if ((v3 & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = qword_1ED49D518;
  v4 = a2;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED49D518, &__block_literal_global_1838);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_11;
  v10[3] = &unk_1E70FE0A0;
  v9 = *(a1 + 32);
  v5 = *(&v9 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  [v4 transferExecutionToMainThreadWithTask:v10 breadcrumb:qword_1ED49D510];
}

void __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_9()
{
  v0 = [&__block_literal_global_1840 copy];
  v1 = qword_1ED49D510;
  qword_1ED49D510 = v0;
}

void __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 info];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 info];
    [v5 BOOLValue];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_12;
  aBlock[3] = &unk_1E70FE0A0;
  v18 = *(a1 + 32);
  v6 = *(&v18 + 1);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v27 = v18;
  v28 = v9;
  v29 = *(a1 + 64);
  v30 = *(a1 + 72);
  v31 = *(a1 + 80);
  v10 = _Block_copy(aBlock);
  if (((*(*(a1 + 64) + 16))() & 1) == 0)
  {
    v11 = [*(a1 + 40) source];
    if (+[UIKeyboard inputUIOOP])
    {
      v12 = [[_UIKeyboardImplHeldOperation alloc] initWithOperation:v10];
      v13 = *(a1 + 32);
      v14 = *(v13 + 488);
      *(v13 + 488) = v12;
      v15 = v12;

      v16 = *(a1 + 32);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_20;
      v23[3] = &unk_1E70F4A50;
      v25 = *(a1 + 72);
      v24 = v3;
      [v16 performOperations:v23 withTextInputSource:v11];
    }

    else
    {
      v17 = *(a1 + 32);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_22;
      v19[3] = &unk_1E70FE0C8;
      v21 = *(a1 + 72);
      v20 = v3;
      v22 = v10;
      [v17 performOperations:v19 withTextInputSource:v11];

      v15 = v21;
    }
  }
}

void __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_12(id *a1, void *a2)
{
  v3 = qword_1ED49D528;
  v4 = a2;
  if (v3 != -1)
  {
    dispatch_once(&qword_1ED49D528, &__block_literal_global_1842);
  }

  v5 = [a1[4] taskQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_15;
  v11[3] = &unk_1E70FE0A0;
  v10 = *(a1 + 2);
  v6 = *(&v10 + 1);
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14 = a1[8];
  v15 = a1[9];
  v16 = a1[10];
  [v5 addTask:v11 breadcrumb:qword_1ED49D520];

  [v4 returnExecutionToParent];
}

void __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_13()
{
  v0 = [&__block_literal_global_1844 copy];
  v1 = qword_1ED49D520;
  qword_1ED49D520 = v0;
}

void __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_15(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 271) = 0;
  *(*(a1 + 32) + 270) = 0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_16;
  v13 = &unk_1E70FE078;
  v8 = *(a1 + 64);
  v14 = *(a1 + 32);
  v15 = v8;
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v9 = [a2 childWithContinuation:&v10];
  [v4 _handleWebKeyEvent:v5 withEventType:5 withInputString:v6 withInputStringIgnoringModifiers:v7 executionContext:{v9, v10, v11, v12, v13, v14}];
}

void __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 info];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 info];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  if (qword_1ED49D538 != -1)
  {
    dispatch_once(&qword_1ED49D538, &__block_literal_global_1846);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_19;
  v13[3] = &unk_1E70FE050;
  v7 = *(a1 + 40);
  v16 = v6;
  v12 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v12;
  *(&v11 + 1) = v7;
  v14 = v11;
  v15 = v10;
  [v3 transferExecutionToMainThreadWithTask:v13 breadcrumb:qword_1ED49D530];
}

void __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_17()
{
  v0 = [&__block_literal_global_1848 copy];
  v1 = qword_1ED49D530;
  qword_1ED49D530 = v0;
}

void __87___UIKeyboardStateManager__handleWebKeyEvent_withIndex_inInputString_executionContext___block_invoke_19(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) setEventForCurrentWebEvent:0];
  if ((v3 & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __46___UIKeyboardStateManager_triggerPendingKeyup__block_invoke()
{
  v0 = [&__block_literal_global_1855 copy];
  v1 = qword_1ED49D540;
  qword_1ED49D540 = v0;
}

void __60___UIKeyboardStateManager__handleKeyEvent_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 flushTouchEventWaitingForKeyInputEventIfNecessary];
  [v3 returnExecutionToParent];
}

uint64_t __42___UIKeyboardStateManager_handleKeyEvent___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) handleKeyEvent:*(a1 + 40) executionContext:a2];
  if ([*(*(a1 + 32) + 136) isSecureTextEntry])
  {
    if ([*(a1 + 40) source] == 4)
    {
      if ([*(a1 + 40) _isKeyDown])
      {
        v3 = [*(a1 + 32) inputDelegateManager];
        v4 = [v3 keyInputDelegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v6 = [*(a1 + 32) inputDelegateManager];
          v7 = [v6 keyInputDelegate];
          v8 = [v7 _fieldEditor];
          [v8 set_shouldObscureNextInput:1];
        }
      }
    }
  }

  result = +[UIKeyboard isCapslockIndicatorEnabled];
  if (result)
  {
    v10 = *(a1 + 32);

    return [v10 setCapsLockIfNeeded];
  }

  return result;
}

void __42___UIKeyboardStateManager_handleKeyEvent___block_invoke_2()
{
  v0 = [&__block_literal_global_1859 copy];
  v1 = qword_1ED49D550;
  qword_1ED49D550 = v0;
}

void __76___UIKeyboardStateManager_handleKeyWithString_forKeyEvent_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 completeHandleKeyEvent:v3];
  [v4 returnExecutionToParent];
}

void __76___UIKeyboardStateManager_handleKeyWithString_forKeyEvent_executionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD88];
  v6 = a2;
  v4 = [v3 defaultCenter];
  v5 = +[UIKeyboard activeKeyboard];
  [v4 postNotificationName:@"UIKeyboardReturnKeyPressed" object:v5];

  [*(a1 + 32) completeHandleKeyEvent:*(a1 + 40)];
  [v6 returnExecutionToParent];
}

void __76___UIKeyboardStateManager_handleKeyWithString_forKeyEvent_executionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3[530];
  v5 = a2;
  [v3 setShouldSkipCandidateSelection:v4 userInitiated:0];
  v6 = [*(a1 + 32) inlineTextCompletionController];
  v14 = [v6 presentingTextCompletionAsMarkedText];

  if (([*(a1 + 32) usesCandidateSelection] & 1) == 0)
  {
    v7 = [*(a1 + 32) inputDelegateManager];
    v8 = [v7 markedTextRange];

    if (v8)
    {
      v9 = [*(a1 + 32) inlineTextCompletionController];
      v10 = [v9 presentingTextCompletionAsMarkedText];

      if (![v14 length] || (objc_msgSend(*(a1 + 32), "_markedText"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", v14), v11, (v12 & 1) == 0))
      {
        *(*(a1 + 32) + 517) = 1;
        v13 = [*(a1 + 32) inputDelegateManager];
        [v13 unmarkText];

        *(*(a1 + 32) + 517) = 0;
      }
    }
  }

  [*(a1 + 32) completeHandleKeyEvent:*(a1 + 40)];
  [v5 returnExecutionToParent];
}

void __111___UIKeyboardStateManager_updateInputDelegateForRemoteDocumentStateChange_selectedTextRange_hasText_forceSync___block_invoke()
{
  v0 = [&__block_literal_global_1900 copy];
  v1 = qword_1ED49D560;
  qword_1ED49D560 = v0;
}

void __111___UIKeyboardStateManager_updateInputDelegateForRemoteDocumentStateChange_selectedTextRange_hasText_forceSync___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 72) == 1)
  {
    *(*(a1 + 32) + 517) = 1;
  }

  v4 = *(a1 + 73);
  v5 = +[UIDictationController activeInstance];
  v6 = [v5 shouldSuppressSoftwareKeyboard];

  if ([*(a1 + 40) length] || ((v4 | v6) & 1) == 0)
  {
    v7 = [*(a1 + 48) markedText];
    if (![v7 length])
    {
      v8 = [*(a1 + 32) showingEmojiSearch];

      if (v8)
      {
        goto LABEL_9;
      }

      v9 = *(a1 + 32);
      v7 = [v9 inputDelegate];
      [v9 replaceAllTextInResponder:v7 withText:*(a1 + 40)];
    }
  }

LABEL_9:
  v10 = [*(a1 + 32) inputDelegate];
  v11 = [v10 _textRangeFromNSRange:{*(a1 + 56), *(a1 + 64)}];

  v12 = [*(a1 + 32) inputDelegateManager];
  [v12 setSelectedTextRange:v11];

  [*(a1 + 32) updateReturnKey:0];
  if (*(a1 + 72) == 1)
  {
    *(*(a1 + 32) + 517) = 0;
  }

  v13 = [*(a1 + 48) markedText];
  v14 = [v13 length];

  if (!v14)
  {
    *(*(a1 + 32) + 121) = 1;
    [*(a1 + 32) clearInput];
    *(*(a1 + 32) + 121) = 0;
  }

  [*(a1 + 32) setDocumentState:*(a1 + 48)];
  [*(a1 + 32) resumeDictationForResponderChange];
  if ((+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || +[UIKeyboard usesInputSystemUIForAutoFillOnlyWithRTI](UIKeyboard, "usesInputSystemUIForAutoFillOnlyWithRTI")) && [*(a1 + 32) isRTIClient])
  {
    v15 = [*(a1 + 32) remoteTextInputPartner];
    [v15 documentStateChanged:1];
  }

  if (*(a1 + 72) == 1)
  {
    v16 = *(a1 + 32);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __111___UIKeyboardStateManager_updateInputDelegateForRemoteDocumentStateChange_selectedTextRange_hasText_forceSync___block_invoke_4;
    v18[3] = &unk_1E70FD058;
    v18[4] = v16;
    v17 = [v3 childWithContinuation:v18];
    [v16 syncInputManagerToKeyboardStateWithExecutionContext:v17];
  }

  else
  {
    [v3 returnExecutionToParent];
  }
}

void __111___UIKeyboardStateManager_updateInputDelegateForRemoteDocumentStateChange_selectedTextRange_hasText_forceSync___block_invoke_4(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 8) = 1;
  v3 = *(a1 + 32);
  v14 = a2;
  if ([v3 shouldGenerateCandidatesAfterSelectionChange])
  {
    v4 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    if ([v4 oldPathForSnapshot] && !+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess"))
    {
      v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v12 = [v11 visualModeManager];
      v13 = [v12 useVisualModeWindowed];

      if (!v13)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

    [*(a1 + 32) generateCandidates];
  }

LABEL_6:
  if (+[UIKeyboard isKeyboardProcess])
  {
    v5 = [*(a1 + 32) inputDelegateManager];
    v6 = [v5 selectedTextRange];
    v7 = [v6 isEmpty];

    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 32);
      v9 = [v8 inputDelegateManager];
      v10 = [v9 selectedTextRange];
      [v8 presentTextChoicePromptForRange:v10];
    }
  }

  [*(a1 + 32) completeUpdateForChangedSelection:1];
  [v14 returnExecutionToParent];
}

void __98___UIKeyboardStateManager_updateForExpectedRemoteDocumentStateChange_selectedTextRange_forceSync___block_invoke()
{
  v0 = [&__block_literal_global_1904 copy];
  v1 = qword_1ED49D570;
  qword_1ED49D570 = v0;
}

void __98___UIKeyboardStateManager_updateForExpectedRemoteDocumentStateChange_selectedTextRange_forceSync___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 updateReturnKey:0];
  [v3 returnExecutionToParent];
}

void __92___UIKeyboardStateManager_handleEventFromRemoteSource_chooseSupplementalItem_toReplaceText___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 remoteTextInputPartner];
  [v7 forwardEventCallbackToRemoteSource_didChooseSupplementalItem:v6 toReplaceText:v5];
}

void __92___UIKeyboardStateManager_handleEventFromRemoteSource_chooseSupplementalItem_toReplaceText___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained && (v5 = *(a1 + 64), v5 == [WeakRetained lastChooseSupplementalItemToInsertCallbackIdentifier]) && (objc_msgSend(v4, "setPendingSupplementalCandidateToInsert:", 0), v8))
  {
    v6 = [v4 _rangeForSupplementalItemText:*(a1 + 32)];
    v7 = [v4 inputDelegate];
    [v7 _range:*(a1 + 40) isEqualToRange:v6];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __107___UIKeyboardStateManager_handleEventFromRemoteDestination_canSuggestSupplementalItemsForCurrentSelection___block_invoke()
{
  v0 = [&__block_literal_global_1924 copy];
  v1 = qword_1ED49D580;
  qword_1ED49D580 = v0;
}

void __107___UIKeyboardStateManager_handleEventFromRemoteDestination_canSuggestSupplementalItemsForCurrentSelection___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(*(a1 + 32) + 632) canSuggestSupplementalItemsForCurrentSelection];
  [*(*(a1 + 32) + 632) setCanSuggestSupplementalItemsForCurrentSelection:*(a1 + 40)];
  if (*(a1 + 40) != v3)
  {
    v4 = [*(a1 + 32) usesCandidateSelection];
    v5 = *(a1 + 32);
    if (v4)
    {
      [v5 generateCandidatesAsynchronouslyWithRange:0 selectedCandidate:{0x7FFFFFFFLL, 0}];
    }

    else
    {
      v6 = [v5 autocorrectionController];
      [v6 setNeedsAutocorrection];
    }
  }

  [v7 returnExecutionToParent];
}

void __77___UIKeyboardStateManager_handleEventFromRemoteSource_insertAutofillContent___block_invoke()
{
  v0 = [&__block_literal_global_1928 copy];
  v1 = qword_1ED49D590;
  qword_1ED49D590 = v0;
}

void __77___UIKeyboardStateManager_handleEventFromRemoteSource_insertAutofillContent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  [v3 performKeyboardOutput:v4];
  v5 = [*(a1 + 32) remoteTextInputPartner];
  [v5 documentStateChanged];

  [v6 returnExecutionToParent];
}

void __50___UIKeyboardStateManager_createTypoTrackerReport__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50___UIKeyboardStateManager_createTypoTrackerReport__block_invoke_2;
  v5[3] = &unk_1E70F35B8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __61___UIKeyboardStateManager__performInputViewControllerOutput___block_invoke()
{
  v0 = [&__block_literal_global_1940 copy];
  v1 = qword_1ED49D5A0;
  qword_1ED49D5A0 = v0;
}

void __61___UIKeyboardStateManager__performInputViewControllerOutput___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) source];
  v5 = *(a1 + 40);
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61___UIKeyboardStateManager__performInputViewControllerOutput___block_invoke_4;
    v6[3] = &unk_1E70F6228;
    v6[4] = v5;
    v7 = *(a1 + 32);
    v8 = v3;
    [v5 performOperations:v6 withTextInputSource:{objc_msgSend(*(a1 + 32), "source")}];
  }

  else
  {
    [*(a1 + 40) _processInputViewControllerKeyboardOutput:*(a1 + 32) executionContext:v3];
  }
}

void __71___UIKeyboardStateManager_showFirstTextAlternativeWithRangeAdjustment___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v21 = a2;
  if (v21)
  {
    v9 = [*(a1 + 32) inputDelegate];
    v10 = [v9 interactionAssistant];
    v11 = [*(a1 + 32) inputDelegateManager];
    v12 = [v11 _textRangeFromNSRange:{a3, a4}];
    [v10 scheduleDictationReplacementsForAlternatives:v21 range:v12];

    v13 = 1;
    *a5 = 1;
  }

  else
  {
    v13 = *a5;
  }

  v14 = a3 + a4;
  v15 = *(a1 + 48);
  v16 = *(a1 + 32);
  if (a3 + a4 >= v15)
  {
    v17 = *(a1 + 48);
  }

  else
  {
    v17 = a3 + a4;
  }

  v18 = v15 >= v14;
  v19 = v15 - v14;
  if (!v18)
  {
    v19 = 0;
  }

  *(v16 + 336) = v17;
  *(v16 + 344) = v19;
  v20 = (v13 & 1) == 0 && *(*(a1 + 32) + 344) == 0;
  *(*(*(a1 + 40) + 8) + 24) = v20;
}

@end