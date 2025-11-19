@interface RTIDocumentTraits(UIKBExtras)
+ (id)currentRTIDocumentTraitsForAutoFillPanel;
+ (id)translateToRTITextInputKeyboardActionButtonConfiguration:()UIKBExtras;
@end

@implementation RTIDocumentTraits(UIKBExtras)

+ (id)currentRTIDocumentTraitsForAutoFillPanel
{
  v105 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E69C6F40]);
  v1 = +[UIKeyboardImpl activeInstance];
  v2 = [v1 keyboardState];
  v3 = [v2 textInputTraits];
  [v0 setTextInputTraits:v3];

  v4 = [v1 delegateAsResponder];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 textInputContextIdentifier];
    [v0 setTextInputContextIdentifier:v5];
  }

  v6 = +[UIKeyboardInputModeController sharedInputModeController];
  v7 = [v6 textInputModeForResponder:v4];

  if (v7)
  {
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
    if (v8)
    {
      [v0 setTextInputModeData:v8];
    }
  }

  v93 = v7;
  v9 = [v4 _additionalTextInputLocales];
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v97 objects:v104 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v98;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v98 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v97 + 1) + 8 * i) localeIdentifier];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v97 objects:v104 count:16];
    }

    while (v13);
  }

  if ([v10 count])
  {
    [v0 setAdditionalLocaleIdentifiers:v10];
  }

  v17 = [v2 recipientIdentifier];
  [v0 setRecipientId:v17];

  v18 = [v2 responseContext];
  [v0 setResponseContext:v18];

  v19 = [v2 inputContextHistory];
  v20 = [v19 copy];
  [v0 setInputContextHistory:v20];

  v21 = [v2 supportedPayloadIds];
  [v0 setSupportedPayloadIds:v21];

  v22 = +[UIKeyboardImpl activeInstance];
  v23 = [v22 textInputTraits];
  [v0 setHidePrediction:{objc_msgSend(v23, "hidePrediction")}];

  v24 = +[UIKeyboardImpl activeInstance];
  v25 = [v24 textInputTraits];
  v26 = [v25 disablePrediction];

  [v0 setDisablePrediction:v26];
  v27 = +[UIKeyboardImpl activeInstance];
  v28 = [v27 inputDelegate];
  v29 = [v28 textInputView];
  [v0 setShouldReverseLayoutDirection:{objc_msgSend(v29, "_shouldReverseLayoutDirection")}];

  [v0 setAutofillMode:{objc_msgSend(v2, "autofillMode")}];
  [v0 setAutofillSubMode:{objc_msgSend(v2, "autofillSubMode")}];
  v30 = [v2 autofillContext];
  [v0 setAutofillContext:v30];

  v31 = +[UIKeyboardImpl activeInstance];
  v32 = [v31 _passwordRules];
  [v0 setPasswordRules:v32];

  v33 = +[UIKeyboardImpl activeInstance];
  [v0 setShouldLoadAutofillSignUp:{objc_msgSend(v33, "shouldLoadAutofillSignUpInputViewController")}];

  if ([v2 supplementalLexiconIdentifier])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v2, "supplementalLexiconIdentifier")}];
    v103 = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
    [v0 setEnabledSupplementalLexiconIdentifiers:v35];
  }

  else
  {
    [v0 setEnabledSupplementalLexiconIdentifiers:0];
  }

  v36 = [v1 keyboardStateManager];
  [v0 setDelegateConformanceType:{objc_msgSend(v36, "delegateConformanceType")}];

  if (objc_opt_respondsToSelector())
  {
    v37 = [v1 inputDelegate];
    v38 = objc_opt_respondsToSelector();

    if (v38)
    {
      v39 = [v1 inputDelegate];
      [v0 setDisableAutomaticKeyboardUI:{objc_msgSend(v39, "_disableAutomaticKeyboardUI")}];
    }
  }

  v40 = [v4 _responderWindow];
  v41 = [v40 windowScene];
  v90 = [v41 _sceneIdentifier];
  [v0 setSceneID:?];
  [v0 setContextID:{objc_msgSend(v40, "_contextId")}];
  v42 = [v40 layer];
  [v0 setLayerID:CALayerGetRenderId()];

  [v0 setSupportsImagePaste:{objc_msgSend(v1, "delegateSupportsImagePaste")}];
  v43 = [v1 textInputTraits];
  [v0 setDevicePasscodeEntry:{objc_msgSend(v43, "isDevicePasscodeEntry")}];

  v44 = [v1 textInputTraits];
  [v0 setDisableInputBars:{objc_msgSend(v44, "disableInputBars")}];

  v45 = +[UIKeyboardImpl activeInstance];
  v89 = [v45 delegateAsResponder];

  v101[0] = @"ForceFloatingKeyboard";
  v46 = MEMORY[0x1E696AD98];
  v88 = [v1 textInputTraits];
  v87 = [v46 numberWithBool:{objc_msgSend(v88, "forceFloatingKeyboard")}];
  v102[0] = v87;
  v101[1] = @"ForceDisableDictation";
  v47 = MEMORY[0x1E696AD98];
  v86 = [v1 textInputTraits];
  v85 = [v47 numberWithBool:{objc_msgSend(v86, "forceDisableDictation")}];
  v102[1] = v85;
  v101[2] = @"UseAutomaticEndpointing";
  v48 = MEMORY[0x1E696AD98];
  v84 = [v1 textInputTraits];
  v83 = [v48 numberWithBool:{objc_msgSend(v84, "useAutomaticEndpointing")}];
  v102[2] = v83;
  v101[3] = @"AcceptsDictationResults";
  v49 = MEMORY[0x1E696AD98];
  v82 = [v1 textInputTraits];
  v81 = [v49 numberWithBool:{objc_msgSend(v82, "acceptsDictationSearchResults")}];
  v102[3] = v81;
  v101[4] = @"ShouldUseDictationSearchFieldBehavior";
  v50 = MEMORY[0x1E696AD98];
  NSClassFromString(&cfstr_Uisearchtextfi_4.isa);
  v94 = v4;
  v91 = v41;
  v92 = v40;
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v69 = [v1 textInputTraits];
    v51 = [v69 showDictationButton];
  }

  else
  {
    v51 = 0;
  }

  v79 = [v50 numberWithInt:v51];
  v102[4] = v79;
  v101[5] = @"ForceEnableDictation";
  v52 = MEMORY[0x1E696AD98];
  v96 = v1;
  v78 = [v1 textInputTraits];
  v77 = [v52 numberWithBool:{objc_msgSend(v78, "forceEnableDictation")}];
  v102[5] = v77;
  v101[6] = @"ShouldSuppressSoftwareKeyboard";
  v53 = MEMORY[0x1E696AD98];
  v76 = +[UIDictationController activeInstance];
  v75 = [v53 numberWithBool:{objc_msgSend(v76, "shouldSuppressSoftwareKeyboard")}];
  v102[6] = v75;
  v101[7] = @"ShouldSuppressSoftwareKeyboardForKeyboardCamera";
  v54 = MEMORY[0x1E696AD98];
  v74 = +[UIKeyboardCameraSession activeSession];
  v73 = [v54 numberWithBool:{objc_msgSend(v74, "shouldSuppressSoftwareKeyboard")}];
  v102[7] = v73;
  v101[8] = @"HasCustomInputViewController";
  v55 = MEMORY[0x1E696AD98];
  v72 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v71 = [v55 numberWithBool:{objc_msgSend(v72, "hasCustomInputViewController")}];
  v102[8] = v71;
  v101[9] = @"SuppressAssistantBar";
  v56 = MEMORY[0x1E696AD98];
  v70 = +[UIKeyboardImpl activeInstance];
  v57 = [v56 numberWithBool:{objc_msgSend(v70, "_shouldSuppressAssistantBar")}];
  v102[9] = v57;
  v101[10] = @"SuppressSoftwareKeyboard";
  v58 = MEMORY[0x1E696AD98];
  v59 = +[UIKeyboardImpl activeInstance];
  v60 = [v58 numberWithBool:{objc_msgSend(v59, "_shouldSuppressSoftwareKeyboardIgnoringPolicyDelegate:", 0)}];
  v102[10] = v60;
  v101[11] = @"RTIInputDelegateClassName";
  if (v94)
  {
    v61 = objc_opt_class();
    v62 = NSStringFromClass(v61);
  }

  else
  {
    v62 = &stru_1EFB14550;
  }

  v102[11] = v62;
  v101[12] = @"CorrectionLearningAllowed";
  v95 = v2;
  v63 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "wordLearningEnabled")}];
  v102[12] = v63;
  v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:13];
  [v0 setUserInfo:v64];

  if (v94)
  {
  }

  if (isKindOfClass)
  {
  }

  if (objc_opt_respondsToSelector())
  {
    v65 = +[UIKeyboardImpl activeInstance];
    v66 = [v65 textInputTraits];
    [v0 setSingleLineDocument:{objc_msgSend(v66, "isSingleLineDocument")}];
  }

  v67 = _UIMainBundleIdentifier();
  [v0 setBundleId:v67];

  return v0;
}

+ (id)translateToRTITextInputKeyboardActionButtonConfiguration:()UIKBExtras
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  v5 = [v3 image];

  if (!v5)
  {
    v21 = _UIKeyboardLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "keyboardActionButtonItem.image is set to nil, returning nil for the keyboardActionButtonItem", v23, 2u);
    }

    goto LABEL_16;
  }

  v6 = [v4 accessibilityLabel];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 accessibilityLabel];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [v4 accessibilityLabel];
LABEL_9:
      v11 = v10;
      goto LABEL_10;
    }
  }

  v11 = [v4 title];
  if (v11)
  {
    v12 = [v4 title];
    v13 = [v12 length];

    if (!v13)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v10 = [v4 title];
    goto LABEL_9;
  }

LABEL_10:
  v14 = [v4 tintColor];

  if (v14)
  {
    v15 = MEMORY[0x1E69C6F28];
    v16 = [v4 tintColor];
    v14 = [v15 colorWithCGColor:{objc_msgSend(v16, "CGColor")}];
  }

  v17 = MEMORY[0x1E696ACC8];
  v18 = [v4 image];
  v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:0];

  v20 = [MEMORY[0x1E69C6FA0] actionButtonWithSystemImageData:v19 backgroundColor:v14 accessibilityTitle:v11];
  [v20 setIsEnabled:{objc_msgSend(v4, "isEnabled")}];

LABEL_17:

  return v20;
}

@end