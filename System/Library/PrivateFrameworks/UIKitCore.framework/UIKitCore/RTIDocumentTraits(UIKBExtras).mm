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
  keyboardState = [v1 keyboardState];
  textInputTraits = [keyboardState textInputTraits];
  [v0 setTextInputTraits:textInputTraits];

  delegateAsResponder = [v1 delegateAsResponder];
  if (objc_opt_respondsToSelector())
  {
    textInputContextIdentifier = [delegateAsResponder textInputContextIdentifier];
    [v0 setTextInputContextIdentifier:textInputContextIdentifier];
  }

  v6 = +[UIKeyboardInputModeController sharedInputModeController];
  v7 = [v6 textInputModeForResponder:delegateAsResponder];

  if (v7)
  {
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
    if (v8)
    {
      [v0 setTextInputModeData:v8];
    }
  }

  v93 = v7;
  _additionalTextInputLocales = [delegateAsResponder _additionalTextInputLocales];
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(_additionalTextInputLocales, "count")}];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v11 = _additionalTextInputLocales;
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

        localeIdentifier = [*(*(&v97 + 1) + 8 * i) localeIdentifier];
        [v10 addObject:localeIdentifier];
      }

      v13 = [v11 countByEnumeratingWithState:&v97 objects:v104 count:16];
    }

    while (v13);
  }

  if ([v10 count])
  {
    [v0 setAdditionalLocaleIdentifiers:v10];
  }

  recipientIdentifier = [keyboardState recipientIdentifier];
  [v0 setRecipientId:recipientIdentifier];

  responseContext = [keyboardState responseContext];
  [v0 setResponseContext:responseContext];

  inputContextHistory = [keyboardState inputContextHistory];
  v20 = [inputContextHistory copy];
  [v0 setInputContextHistory:v20];

  supportedPayloadIds = [keyboardState supportedPayloadIds];
  [v0 setSupportedPayloadIds:supportedPayloadIds];

  v22 = +[UIKeyboardImpl activeInstance];
  textInputTraits2 = [v22 textInputTraits];
  [v0 setHidePrediction:{objc_msgSend(textInputTraits2, "hidePrediction")}];

  v24 = +[UIKeyboardImpl activeInstance];
  textInputTraits3 = [v24 textInputTraits];
  disablePrediction = [textInputTraits3 disablePrediction];

  [v0 setDisablePrediction:disablePrediction];
  v27 = +[UIKeyboardImpl activeInstance];
  inputDelegate = [v27 inputDelegate];
  textInputView = [inputDelegate textInputView];
  [v0 setShouldReverseLayoutDirection:{objc_msgSend(textInputView, "_shouldReverseLayoutDirection")}];

  [v0 setAutofillMode:{objc_msgSend(keyboardState, "autofillMode")}];
  [v0 setAutofillSubMode:{objc_msgSend(keyboardState, "autofillSubMode")}];
  autofillContext = [keyboardState autofillContext];
  [v0 setAutofillContext:autofillContext];

  v31 = +[UIKeyboardImpl activeInstance];
  _passwordRules = [v31 _passwordRules];
  [v0 setPasswordRules:_passwordRules];

  v33 = +[UIKeyboardImpl activeInstance];
  [v0 setShouldLoadAutofillSignUp:{objc_msgSend(v33, "shouldLoadAutofillSignUpInputViewController")}];

  if ([keyboardState supplementalLexiconIdentifier])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(keyboardState, "supplementalLexiconIdentifier")}];
    v103 = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
    [v0 setEnabledSupplementalLexiconIdentifiers:v35];
  }

  else
  {
    [v0 setEnabledSupplementalLexiconIdentifiers:0];
  }

  keyboardStateManager = [v1 keyboardStateManager];
  [v0 setDelegateConformanceType:{objc_msgSend(keyboardStateManager, "delegateConformanceType")}];

  if (objc_opt_respondsToSelector())
  {
    inputDelegate2 = [v1 inputDelegate];
    v38 = objc_opt_respondsToSelector();

    if (v38)
    {
      inputDelegate3 = [v1 inputDelegate];
      [v0 setDisableAutomaticKeyboardUI:{objc_msgSend(inputDelegate3, "_disableAutomaticKeyboardUI")}];
    }
  }

  _responderWindow = [delegateAsResponder _responderWindow];
  windowScene = [_responderWindow windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];
  [v0 setSceneID:?];
  [v0 setContextID:{objc_msgSend(_responderWindow, "_contextId")}];
  layer = [_responderWindow layer];
  [v0 setLayerID:CALayerGetRenderId()];

  [v0 setSupportsImagePaste:{objc_msgSend(v1, "delegateSupportsImagePaste")}];
  textInputTraits4 = [v1 textInputTraits];
  [v0 setDevicePasscodeEntry:{objc_msgSend(textInputTraits4, "isDevicePasscodeEntry")}];

  textInputTraits5 = [v1 textInputTraits];
  [v0 setDisableInputBars:{objc_msgSend(textInputTraits5, "disableInputBars")}];

  v45 = +[UIKeyboardImpl activeInstance];
  delegateAsResponder2 = [v45 delegateAsResponder];

  v101[0] = @"ForceFloatingKeyboard";
  v46 = MEMORY[0x1E696AD98];
  textInputTraits6 = [v1 textInputTraits];
  v87 = [v46 numberWithBool:{objc_msgSend(textInputTraits6, "forceFloatingKeyboard")}];
  v102[0] = v87;
  v101[1] = @"ForceDisableDictation";
  v47 = MEMORY[0x1E696AD98];
  textInputTraits7 = [v1 textInputTraits];
  v85 = [v47 numberWithBool:{objc_msgSend(textInputTraits7, "forceDisableDictation")}];
  v102[1] = v85;
  v101[2] = @"UseAutomaticEndpointing";
  v48 = MEMORY[0x1E696AD98];
  textInputTraits8 = [v1 textInputTraits];
  v83 = [v48 numberWithBool:{objc_msgSend(textInputTraits8, "useAutomaticEndpointing")}];
  v102[2] = v83;
  v101[3] = @"AcceptsDictationResults";
  v49 = MEMORY[0x1E696AD98];
  textInputTraits9 = [v1 textInputTraits];
  v81 = [v49 numberWithBool:{objc_msgSend(textInputTraits9, "acceptsDictationSearchResults")}];
  v102[3] = v81;
  v101[4] = @"ShouldUseDictationSearchFieldBehavior";
  v50 = MEMORY[0x1E696AD98];
  NSClassFromString(&cfstr_Uisearchtextfi_4.isa);
  v94 = delegateAsResponder;
  v91 = windowScene;
  v92 = _responderWindow;
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    textInputTraits10 = [v1 textInputTraits];
    showDictationButton = [textInputTraits10 showDictationButton];
  }

  else
  {
    showDictationButton = 0;
  }

  v79 = [v50 numberWithInt:showDictationButton];
  v102[4] = v79;
  v101[5] = @"ForceEnableDictation";
  v52 = MEMORY[0x1E696AD98];
  v96 = v1;
  textInputTraits11 = [v1 textInputTraits];
  v77 = [v52 numberWithBool:{objc_msgSend(textInputTraits11, "forceEnableDictation")}];
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
  v95 = keyboardState;
  v63 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(keyboardState, "wordLearningEnabled")}];
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
    textInputTraits12 = [v65 textInputTraits];
    [v0 setSingleLineDocument:{objc_msgSend(textInputTraits12, "isSingleLineDocument")}];
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

  image = [v3 image];

  if (!image)
  {
    v21 = _UIKeyboardLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "keyboardActionButtonItem.image is set to nil, returning nil for the keyboardActionButtonItem", v23, 2u);
    }

    goto LABEL_16;
  }

  accessibilityLabel = [v4 accessibilityLabel];
  if (accessibilityLabel)
  {
    v7 = accessibilityLabel;
    accessibilityLabel2 = [v4 accessibilityLabel];
    v9 = [accessibilityLabel2 length];

    if (v9)
    {
      accessibilityLabel3 = [v4 accessibilityLabel];
LABEL_9:
      title = accessibilityLabel3;
      goto LABEL_10;
    }
  }

  title = [v4 title];
  if (title)
  {
    title2 = [v4 title];
    v13 = [title2 length];

    if (!v13)
    {
      title = 0;
      goto LABEL_10;
    }

    accessibilityLabel3 = [v4 title];
    goto LABEL_9;
  }

LABEL_10:
  tintColor = [v4 tintColor];

  if (tintColor)
  {
    v15 = MEMORY[0x1E69C6F28];
    tintColor2 = [v4 tintColor];
    tintColor = [v15 colorWithCGColor:{objc_msgSend(tintColor2, "CGColor")}];
  }

  v17 = MEMORY[0x1E696ACC8];
  image2 = [v4 image];
  v19 = [v17 archivedDataWithRootObject:image2 requiringSecureCoding:1 error:0];

  v20 = [MEMORY[0x1E69C6FA0] actionButtonWithSystemImageData:v19 backgroundColor:tintColor accessibilityTitle:title];
  [v20 setIsEnabled:{objc_msgSend(v4, "isEnabled")}];

LABEL_17:

  return v20;
}

@end