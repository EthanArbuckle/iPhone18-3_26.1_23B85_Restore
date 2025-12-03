@interface UIKBRTIPartner
+ (void)registerTextOperationCustomInfo;
- (BOOL)_performTextCheckingAnnotationOperations:(id)operations;
- (BOOL)_remoteInputSystemRequiresDocumentStateForAutofill;
- (BOOL)_remoteInputSystemRequiresDocumentStateUpdates;
- (BOOL)_updateRTITraitsIfNecessary;
- (BOOL)compareWaitingRTIOutputOperationResponseContext:(id)context andExchange:(id)exchange;
- (BOOL)documentTraitsDisableAutomaticKeyboardUI;
- (BOOL)remoteTextInputClientHasActiveSession;
- (BOOL)synchronousForwardKeyCommandsBeforePublicToUIHost:(id)host;
- (BOOL)synchronousForwardKeyCommandsToUIHost:(id)host;
- (BOOL)synchronousForwardKeyInputMethodCommandEventToUIHost:(id)host canHandleAppKeyCommand:(BOOL)command;
- (CGRect)_selectionClipRect;
- (CGRect)convertRect:(CGRect)rect from:(id)from;
- (UIKBRTIPartner)init;
- (UIKBRTIPartnerDelegate)partnerDelegate;
- (UIKeyboardTaskSubqueue)keyboardTaskSubqueue;
- (_NSRange)_relativeReplacementRangeForAnnotationOperation:(id)operation;
- (id)_defaultRTIMachNames;
- (id)_newInputSystemAutoFillUIClient;
- (id)_newInputSystemUIClient;
- (id)_newRTIConnection;
- (id)delegate;
- (id)documentTextInRange:(id)range forInputDelegate:(id)delegate;
- (id)exchangeWaitingRTIOutputOperationResponseContext:(id)context;
- (id)inputDelegate;
- (id)inputDelegateView;
- (id)insertionPointColor;
- (id)payloadDelegate;
- (id)textOperation_cancelChooseSupplementalItemToInsert;
- (id)textOperation_chooseSupplementalItem:(id)item toReplaceText:(id)text;
- (id)textOperation_insertAutofillContent:(id)content;
- (id)textOperation_insertSupplementalCandidate:(id)candidate textToCommit:(id)commit;
- (id)textOperation_insertionPointEnteredText:(id)text withSupplementalCandidate:(id)candidate;
- (id)textOperation_insertionPointExitedTextWithSupplementalItems;
- (int64_t)_uiTextGranularityForRTITextGranularity:(int64_t)granularity;
- (unsigned)_ignoredReasonsForKeyboard;
- (unsigned)_performKeyboardOutputOperations:(id)operations;
- (void)_addAutocorrectStylingToDocumentState:(id)state;
- (void)_addCharacterRectsToDocumentState:(id)state textRange:(id)range offset:(int64_t)offset;
- (void)_addFirstSelectionRectToDocumentState:(id)state;
- (void)_addMergedTextRectsToDocumentState:(id)state forWKContext:(id)context textInputView:(id)view granularity:(int64_t)granularity;
- (void)_addTextCheckingAnnotatedStringToDocumentState:(id)state;
- (void)_applicationDidRemoveDeactivationReason:(id)reason;
- (void)_applicationWillAddDeactivationReason:(id)reason;
- (void)_applicationWillSuspend:(id)suspend;
- (void)_createRTIClient;
- (void)_createRTIClientIfNecessary;
- (void)_didAddSupplementalLexicon:(id)lexicon;
- (void)_didCreateRTIClient:(id)client;
- (void)_didRemoveSupplementalLexiconWithIdentifier:(unint64_t)identifier;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)_performDocumentRequest:(id)request completion:(id)completion;
- (void)_performQueuedSupplementalLexiconOperations;
- (void)_queryDocumentRequest:(id)request completion:(id)completion;
- (void)_queryUIKitDocumentRequest:(id)request completion:(id)completion;
- (void)_queryWKDocumentRequest:(id)request completion:(id)completion;
- (void)_queueSupplementalLexiconOperation:(unint64_t)operation lexicon:(id)lexicon;
- (void)_queued_performTextOperations:(id)operations resultHandler:(id)handler;
- (void)_updateGeometryObserverIfNecessary;
- (void)_updateRTIAllowedAndNotify:(BOOL)notify withReason:(id)reason;
- (void)_updateRTIStateWithCompletion:(id)completion;
- (void)_viewServiceHostDidBecomeActive:(id)active;
- (void)_viewServiceHostWillResignActive:(id)active;
- (void)addTextSuggestions:(id)suggestions;
- (void)applyAssistantItem:(id)item;
- (void)applyRemoteDocumentStateIfNecessary:(id)necessary force:(BOOL)force;
- (void)applyRemoteDocumentTraitsIfNecessary:(id)necessary force:(BOOL)force;
- (void)beginAllowingRemoteTextInput:(id)input;
- (void)beginInputSessionWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)defaultDocumentRequestDidChange:(id)change;
- (void)didAddSupplementalLexicon:(id)lexicon;
- (void)didRemoveSupplementalLexicon:(id)lexicon;
- (void)documentStateChanged:(BOOL)changed;
- (void)documentTraitsChanged;
- (void)endAllowingRemoteTextInput:(id)input waitForReply:(BOOL)reply;
- (void)endInputSessionOnSwitchingApps;
- (void)endInputSessionWithIdentifier:(id)identifier shouldResign:(BOOL)resign waitForReply:(BOOL)reply;
- (void)ensureRTIConnection;
- (void)finishCompletionHandlersIfNeeded;
- (void)forwardApplicationOperation:(SEL)operation object:(id)object;
- (void)forwardAutofillPayload:(id)payload toPayloadDelegate:(id)delegate;
- (void)forwardClearForwardingInputDelegateAndResign:(BOOL)resign;
- (void)forwardDictationEventToUIHost:(SEL)host withOptionalObject:(id)object;
- (void)forwardEventCallbackToRemoteSource_didChooseSupplementalItem:(id)item toReplaceText:(id)text;
- (void)forwardEventToRemoteSource_canSuggestSupplementalItemsForCurrentSelection:(BOOL)selection;
- (void)forwardGrammarCorrectionEntries:(id)entries;
- (void)forwardInputDestinationEventToUIHost:(SEL)host params:(id)params;
- (void)forwardKeyboardCameraEvent_startCameraInput:(id)input;
- (void)forwardKeyboardEventToUIHost:(id)host;
- (void)forwardKeyboardInputMode:(id)mode;
- (void)forwardKeyboardOperation:(SEL)operation object:(id)object;
- (void)forwardKeyboardSuppression:(BOOL)suppression suppressAssistantBar:(BOOL)bar;
- (void)forwardScrollEventToUIHost:(SEL)host contentTransform:(CGAffineTransform *)transform environmentTransform:(CGAffineTransform *)environmentTransform;
- (void)forwardSelectorToUIHost:(SEL)host completionHandler:(id)handler;
- (void)forwardTypologyLogURL:(id)l;
- (void)inputSession:(id)session didAddRTISupplementalLexicon:(id)lexicon;
- (void)inputSession:(id)session didRemoveRTISupplementalLexicon:(id)lexicon;
- (void)inputSession:(id)session documentStateDidChange:(id)change withMergeResult:(unint64_t)result;
- (void)inputSession:(id)session performInputOperation:(id)operation;
- (void)inputSession:(id)session performInputOperation:(id)operation withResponse:(id)response;
- (void)inputSession:(id)session textSuggestionsChanged:(id)changed;
- (void)invalidate;
- (void)performDocumentRequest:(id)request completion:(id)completion;
- (void)performInputOperation:(id)operation;
- (void)performTextOperations:(id)operations;
- (void)performTextOperations:(id)operations resultHandler:(id)handler;
- (void)removeTextSuggestionsForSessionWithID:(id)d;
- (void)restartCurrentSession;
- (void)sendAutoFillDidInsertCallbacksWithTextOperations:(id)operations;
- (void)setKeyboardTaskSubqueue:(id)subqueue;
- (void)textSuggestionsChanged:(id)changed;
- (void)updateAnimationForOptions:(id)options;
- (void)updateStateWithCompletion:(id)completion updateTraits:(BOOL)traits;
- (void)updateTextSuggestionsIfNecessary:(id)necessary;
@end

@implementation UIKBRTIPartner

- (BOOL)_remoteInputSystemRequiresDocumentStateUpdates
{
  rtiClient = [(UIKBRTIPartner *)self rtiClient];

  if (rtiClient)
  {
    rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) != 0 && (-[UIKBRTIPartner rtiClient](self, "rtiClient"), v6 = objc_claimAutoreleasedReturnValue(), [v6 serviceOptions], v7 = objc_claimAutoreleasedReturnValue(), v6, LOBYTE(v6) = objc_msgSend(v7, "displayOptions"), v7, (v6 & 4) != 0) || !+[UIKeyboard usesInputSystemUIForAutoFillOnly](UIKeyboard, "usesInputSystemUIForAutoFillOnly") || (v8 = -[UIKBRTIPartner _remoteInputSystemRequiresDocumentStateForAutofill](self, "_remoteInputSystemRequiresDocumentStateForAutofill")))
    {
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)remoteTextInputClientHasActiveSession
{
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
  v5 = [rtiClient hasActiveSessionWithID:currentSessionIdentifier];

  return v5;
}

- (BOOL)_remoteInputSystemRequiresDocumentStateForAutofill
{
  rtiDocumentTraits = [(UIKBRTIPartner *)self rtiDocumentTraits];
  if ([rtiDocumentTraits autofillMode])
  {
    isExplicitAutoFillMode = 1;
  }

  else
  {
    rtiDocumentTraits2 = [(UIKBRTIPartner *)self rtiDocumentTraits];
    isExplicitAutoFillMode = [rtiDocumentTraits2 isExplicitAutoFillMode];
  }

  return isExplicitAutoFillMode;
}

- (id)_newRTIConnection
{
  if (+[UIKeyboard usesInputSystemUI])
  {

    return [(UIKBRTIPartner *)self _newInputSystemUIClient];
  }

  else if (+[UIKeyboard usesInputSystemUIForAutoFillOnlyWithRTI])
  {

    return [(UIKBRTIPartner *)self _newInputSystemAutoFillUIClient];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E69C6F60]);
    _defaultRTIMachNames = [(UIKBRTIPartner *)self _defaultRTIMachNames];
    v6 = [v4 initWithMachNames:_defaultRTIMachNames];

    return v6;
  }
}

- (id)_newInputSystemAutoFillUIClient
{
  v2 = objc_alloc(MEMORY[0x1E69C6F58]);
  v3 = [v2 initWithUIHostMachName:*MEMORY[0x1E69C6FC8]];
  v4 = _UIKeyboardLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "creating new AutofillUI connection", v6, 2u);
  }

  return v3;
}

- (BOOL)_updateRTITraitsIfNecessary
{
  v211 = *MEMORY[0x1E69E9840];
  rtiClient = [(UIKBRTIPartner *)self rtiClient];

  if (!rtiClient)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E69C6F40]);
  partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
  keyboardState = [partnerDelegate keyboardState];

  textInputTraits = [keyboardState textInputTraits];
  v8 = [textInputTraits copy];
  [v4 setTextInputTraits:v8];

  partnerDelegate2 = [(UIKBRTIPartner *)self partnerDelegate];
  delegateAsResponder = [partnerDelegate2 delegateAsResponder];

  if (objc_opt_respondsToSelector())
  {
    textInputContextIdentifier = [delegateAsResponder textInputContextIdentifier];
    [v4 setTextInputContextIdentifier:textInputContextIdentifier];
  }

  v12 = +[UIKeyboardInputModeController sharedInputModeController];
  v13 = [v12 textInputModeForResponder:delegateAsResponder];

  if (v13)
  {
    v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:0];
    if (v14)
    {
      [v4 setTextInputModeData:v14];
    }
  }

  v188 = v13;
  selfCopy = self;
  v192 = delegateAsResponder;
  _additionalTextInputLocales = [delegateAsResponder _additionalTextInputLocales];
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(_additionalTextInputLocales, "count")}];
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v17 = _additionalTextInputLocales;
  v18 = [v17 countByEnumeratingWithState:&v194 objects:v210 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v195;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v195 != v20)
        {
          objc_enumerationMutation(v17);
        }

        localeIdentifier = [*(*(&v194 + 1) + 8 * i) localeIdentifier];
        [v16 addObject:localeIdentifier];
      }

      v19 = [v17 countByEnumeratingWithState:&v194 objects:v210 count:16];
    }

    while (v19);
  }

  if ([v16 count])
  {
    [v4 setAdditionalLocaleIdentifiers:v16];
  }

  recipientIdentifier = [keyboardState recipientIdentifier];
  [v4 setRecipientId:recipientIdentifier];

  responseContext = [keyboardState responseContext];
  [v4 setResponseContext:responseContext];

  inputContextHistory = [keyboardState inputContextHistory];
  v26 = [inputContextHistory copy];
  [v4 setInputContextHistory:v26];

  supportedPayloadIds = [keyboardState supportedPayloadIds];
  [v4 setSupportedPayloadIds:supportedPayloadIds];

  v28 = +[UIKeyboardImpl activeInstance];
  textInputTraits2 = [v28 textInputTraits];
  hidePrediction = [textInputTraits2 hidePrediction];

  rtiDocumentTraits = [(UIKBRTIPartner *)selfCopy rtiDocumentTraits];
  v193 = hidePrediction;
  if (rtiDocumentTraits)
  {
    rtiDocumentTraits2 = [(UIKBRTIPartner *)selfCopy rtiDocumentTraits];
    v193 = hidePrediction | [rtiDocumentTraits2 hidePrediction];
  }

  [v4 setHidePrediction:hidePrediction];
  v33 = +[UIKeyboardImpl activeInstance];
  textInputTraits3 = [v33 textInputTraits];
  disablePrediction = [textInputTraits3 disablePrediction];

  rtiDocumentTraits3 = [(UIKBRTIPartner *)selfCopy rtiDocumentTraits];
  if (rtiDocumentTraits3)
  {
    rtiDocumentTraits4 = [(UIKBRTIPartner *)selfCopy rtiDocumentTraits];
    v193 |= disablePrediction ^ [rtiDocumentTraits4 disablePrediction];
  }

  [v4 setDisablePrediction:disablePrediction];
  v38 = +[UIKeyboardImpl activeInstance];
  inputDelegate = [v38 inputDelegate];
  textInputView = [inputDelegate textInputView];
  [v4 setShouldReverseLayoutDirection:{objc_msgSend(textInputView, "_shouldReverseLayoutDirection")}];

  [v4 setAutofillMode:{objc_msgSend(keyboardState, "autofillMode")}];
  [v4 setAutofillSubMode:{objc_msgSend(keyboardState, "autofillSubMode")}];
  if ([keyboardState autofillMode] && objc_msgSend(keyboardState, "autofillMode") != 8)
  {
    partnerDelegate3 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
    textContentTypeForCurrentInputDelegate = [partnerDelegate3 textContentTypeForCurrentInputDelegate];
    textInputTraits4 = [v4 textInputTraits];
    [textInputTraits4 setTextContentType:textContentTypeForCurrentInputDelegate];
  }

  autofillContext = [keyboardState autofillContext];
  [v4 setAutofillContext:autofillContext];

  v45 = +[UIKeyboardImpl activeInstance];
  _passwordRules = [v45 _passwordRules];
  [v4 setPasswordRules:_passwordRules];

  v47 = +[UIKeyboardImpl activeInstance];
  [v4 setShouldLoadAutofillSignUp:{objc_msgSend(v47, "shouldLoadAutofillSignUpInputViewController")}];

  if ([keyboardState supplementalLexiconIdentifier])
  {
    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(keyboardState, "supplementalLexiconIdentifier")}];
    v209 = v48;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v209 count:1];
    [v4 setEnabledSupplementalLexiconIdentifiers:v49];
  }

  else
  {
    [v4 setEnabledSupplementalLexiconIdentifiers:0];
  }

  v191 = keyboardState;
  partnerDelegate4 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
  [v4 setDelegateConformanceType:{objc_msgSend(partnerDelegate4, "delegateConformanceType")}];

  partnerDelegate5 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
  inputDelegate2 = [partnerDelegate5 inputDelegate];
  v54 = objc_opt_respondsToSelector();

  if (v54)
  {
    partnerDelegate6 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
    inputDelegate3 = [partnerDelegate6 inputDelegate];
    [v4 setDisableAutomaticKeyboardUI:{objc_msgSend(inputDelegate3, "_disableAutomaticKeyboardUI")}];
  }

  rtiClient2 = [(UIKBRTIPartner *)selfCopy rtiClient];
  if (rtiClient2)
  {
    v58 = rtiClient2;
    v59 = +[UIKeyboard usesInputSystemUI];

    if (v59)
    {
      v60 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      remoteInputViewHost = [v60 remoteInputViewHost];

      inputViewInfo = [remoteInputViewHost inputViewInfo];
      rtiInputViewInfo = [inputViewInfo rtiInputViewInfo];
      [v4 setInputViewInfo:rtiInputViewInfo];

      assistantViewInfo = [remoteInputViewHost assistantViewInfo];
      rtiInputViewInfo2 = [assistantViewInfo rtiInputViewInfo];
      [v4 setAssistantViewInfo:rtiInputViewInfo2];

      delegate = [(UIKBRTIPartner *)selfCopy delegate];
      v67 = [remoteInputViewHost remoteAssistantItemForResponder:delegate];
      [v4 setAssistantItem:v67];
    }
  }

  _responderWindow = [v192 _responderWindow];
  windowScene = [_responderWindow windowScene];
  _sceneIdentifier = [windowScene _sceneIdentifier];
  [v4 setSceneID:?];
  [v4 setContextID:{objc_msgSend(_responderWindow, "_contextId")}];
  v187 = _responderWindow;
  layer = [_responderWindow layer];
  [v4 setLayerID:CALayerGetRenderId()];

  if (objc_opt_respondsToSelector())
  {
    v70 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    hardwareKeyboardExclusivityIdentifier = [v70 hardwareKeyboardExclusivityIdentifier];
    [v4 setSceneExclusivityIdentifier:hardwareKeyboardExclusivityIdentifier];
  }

  partnerDelegate7 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
  [partnerDelegate7 updateDelegatePasteSupportIfNeeded];

  partnerDelegate8 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
  [v4 setSupportsImagePaste:{objc_msgSend(partnerDelegate8, "delegateSupportsImagePaste")}];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_45;
    }

    partnerDelegate9 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
    if ([partnerDelegate9 canInsertAdaptiveImageGlyph])
    {
      [v4 setSupportsEmojiImageTextAttachments:1];
      goto LABEL_44;
    }

    partnerDelegate10 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
    [v4 setSupportsEmojiImageTextAttachments:{objc_msgSend(partnerDelegate10, "canInsertEmojiImageTextAttachment")}];
LABEL_43:

    goto LABEL_44;
  }

  partnerDelegate9 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
  if (![partnerDelegate9 canInsertAdaptiveImageGlyph])
  {
    partnerDelegate10 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
    [v4 setSupportsAdaptiveImageGlyph:{objc_msgSend(partnerDelegate10, "canInsertStickerAsTextInputPayload")}];
    goto LABEL_43;
  }

  [v4 setSupportsAdaptiveImageGlyph:1];
LABEL_44:

LABEL_45:
  partnerDelegate11 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
  textInputTraits5 = [partnerDelegate11 textInputTraits];
  [v4 setDevicePasscodeEntry:{objc_msgSend(textInputTraits5, "isDevicePasscodeEntry")}];

  partnerDelegate12 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
  textInputTraits6 = [partnerDelegate12 textInputTraits];
  [v4 setDisableInputBars:{objc_msgSend(textInputTraits6, "disableInputBars")}];

  v80 = +[UIKeyboardImpl activeInstance];
  delegateAsResponder2 = [v80 delegateAsResponder];

  v200[0] = 0x1EFB531F0;
  v81 = MEMORY[0x1E696AD98];
  partnerDelegate13 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
  textInputTraits7 = [partnerDelegate13 textInputTraits];
  v182 = [v81 numberWithBool:{objc_msgSend(textInputTraits7, "forceFloatingKeyboard")}];
  v201[0] = v182;
  v200[1] = 0x1EFB53210;
  v83 = MEMORY[0x1E696AD98];
  partnerDelegate14 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
  textInputTraits8 = [partnerDelegate14 textInputTraits];
  v179 = [v83 numberWithBool:{objc_msgSend(textInputTraits8, "forceDisableDictation")}];
  v201[1] = v179;
  v200[2] = 0x1EFB53230;
  v84 = MEMORY[0x1E696AD98];
  partnerDelegate15 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
  textInputTraits9 = [partnerDelegate15 textInputTraits];
  v176 = [v84 numberWithBool:{objc_msgSend(textInputTraits9, "useAutomaticEndpointing")}];
  v201[2] = v176;
  v200[3] = 0x1EFB53250;
  v85 = MEMORY[0x1E696AD98];
  partnerDelegate16 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
  textInputTraits10 = [partnerDelegate16 textInputTraits];
  v173 = [v85 numberWithBool:{objc_msgSend(textInputTraits10, "acceptsDictationSearchResults")}];
  v201[3] = v173;
  v200[4] = 0x1EFB53270;
  v86 = MEMORY[0x1E696AD98];
  NSClassFromString(&cfstr_Uisearchtextfi_4.isa);
  v184 = partnerDelegate13;
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    partnerDelegate17 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
    textInputTraits11 = [partnerDelegate17 textInputTraits];
    showDictationButton = [textInputTraits11 showDictationButton];
  }

  else
  {
    showDictationButton = 0;
  }

  v171 = [v86 numberWithInt:showDictationButton];
  v201[4] = v171;
  v200[5] = 0x1EFB532D0;
  v88 = MEMORY[0x1E696AD98];
  partnerDelegate18 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
  textInputTraits12 = [partnerDelegate18 textInputTraits];
  v168 = [v88 numberWithBool:{objc_msgSend(textInputTraits12, "forceEnableDictation")}];
  v201[5] = v168;
  v200[6] = 0x1EFB53290;
  v89 = MEMORY[0x1E696AD98];
  v167 = +[UIDictationController activeInstance];
  v166 = [v89 numberWithBool:{objc_msgSend(v167, "shouldSuppressSoftwareKeyboard")}];
  v201[6] = v166;
  v200[7] = 0x1EFB532B0;
  v90 = MEMORY[0x1E696AD98];
  v165 = +[UIKeyboardCameraSession activeSession];
  v164 = [v90 numberWithBool:{objc_msgSend(v165, "shouldSuppressSoftwareKeyboard")}];
  v201[7] = v164;
  v200[8] = 0x1EFB532F0;
  v91 = MEMORY[0x1E696AD98];
  v163 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v162 = [v91 numberWithBool:{objc_msgSend(v163, "hasCustomInputViewController")}];
  v201[8] = v162;
  v200[9] = 0x1EFB53310;
  v92 = MEMORY[0x1E696AD98];
  v161 = +[UIKeyboardImpl activeInstance];
  v160 = [v92 numberWithBool:{objc_msgSend(v161, "_shouldSuppressAssistantBar")}];
  v201[9] = v160;
  v200[10] = 0x1EFB53330;
  v93 = MEMORY[0x1E696AD98];
  v159 = +[UIKeyboardImpl activeInstance];
  v158 = [v93 numberWithBool:{objc_msgSend(v159, "_shouldSuppressSoftwareKeyboardIgnoringPolicyDelegate:", 0)}];
  v201[10] = v158;
  v200[11] = 0x1EFB53350;
  if (v192)
  {
    v94 = objc_opt_class();
    v95 = NSStringFromClass(v94);
  }

  else
  {
    v95 = &stru_1EFB14550;
  }

  v149 = v95;
  v201[11] = v95;
  v200[12] = 0x1EFB53430;
  v96 = MEMORY[0x1E696AD98];
  if (delegateAsResponder2 && _os_feature_enabled_impl())
  {
    _shouldDisplayWritingToolsCandidateOptions = [delegateAsResponder2 _shouldDisplayWritingToolsCandidateOptions];
  }

  else
  {
    _shouldDisplayWritingToolsCandidateOptions = 0;
  }

  v157 = [v96 numberWithInt:_shouldDisplayWritingToolsCandidateOptions];
  v201[12] = v157;
  v200[13] = 0x1EFB53450;
  v98 = MEMORY[0x1E696AD98];
  if (delegateAsResponder2)
  {
    _shouldDisplayLongFormSmartReplyCandidateOptions = [delegateAsResponder2 _shouldDisplayLongFormSmartReplyCandidateOptions];
  }

  else
  {
    _shouldDisplayLongFormSmartReplyCandidateOptions = 0;
  }

  v156 = [v98 numberWithInt:_shouldDisplayLongFormSmartReplyCandidateOptions];
  v201[13] = v156;
  v200[14] = 0x1EFB53470;
  v100 = MEMORY[0x1E696AD98];
  if (delegateAsResponder2)
  {
    _shouldDisplayGenmojiIfEnabled = [delegateAsResponder2 _shouldDisplayGenmojiIfEnabled];
  }

  else
  {
    _shouldDisplayGenmojiIfEnabled = 0;
  }

  v202 = [v100 numberWithInt:_shouldDisplayGenmojiIfEnabled];
  v200[15] = 0x1EFB53370;
  *&v154[4] = selfCopy->_cachedHasPreviousKeyResponder;
  v155 = v202;
  if (*&v154[4])
  {
    *v154 = 0;
    cachedHasPreviousKeyResponder = selfCopy->_cachedHasPreviousKeyResponder;
  }

  else
  {
    v103 = MEMORY[0x1E696AD98];
    _previousKeyResponder = [delegateAsResponder2 _previousKeyResponder];
    *v154 = _previousKeyResponder != 0;
    v144 = _previousKeyResponder;
    if (_previousKeyResponder)
    {
      _previousKeyResponder2 = [delegateAsResponder2 _previousKeyResponder];
      v105 = _previousKeyResponder2 != delegateAsResponder2;
    }

    else
    {
      v105 = 0;
    }

    cachedHasPreviousKeyResponder = [v103 numberWithInt:v105];
  }

  v148 = cachedHasPreviousKeyResponder;
  v203 = cachedHasPreviousKeyResponder;
  v200[16] = 0x1EFB53390;
  *&v153[4] = selfCopy->_cachedHasNextKeyResponder;
  if (*&v153[4])
  {
    *v153 = 0;
    cachedHasNextKeyResponder = selfCopy->_cachedHasNextKeyResponder;
  }

  else
  {
    v107 = MEMORY[0x1E696AD98];
    _nextKeyResponder = [delegateAsResponder2 _nextKeyResponder];
    *v153 = _nextKeyResponder != 0;
    v143 = _nextKeyResponder;
    if (_nextKeyResponder)
    {
      _nextKeyResponder2 = [delegateAsResponder2 _nextKeyResponder];
      v109 = _nextKeyResponder2 != delegateAsResponder2;
    }

    else
    {
      v109 = 0;
    }

    cachedHasNextKeyResponder = [v107 numberWithInt:v109];
  }

  v147 = cachedHasNextKeyResponder;
  v204 = cachedHasNextKeyResponder;
  v200[17] = 0x1EFB533B0;
  v110 = MEMORY[0x1E696AD98];
  partnerDelegate19 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
  v151 = [v110 numberWithBool:{objc_msgSend(partnerDelegate19, "returnKeyEnabled")}];
  v205 = v151;
  v200[18] = 0x1EFB533D0;
  pendingDisableBecomeFirstResponderParameters = selfCopy->_pendingDisableBecomeFirstResponderParameters;
  if (pendingDisableBecomeFirstResponderParameters)
  {
    v150 = 0;
    v112 = selfCopy->_pendingDisableBecomeFirstResponderParameters;
  }

  else
  {
    v198 = @"disabled";
    v113 = MEMORY[0x1E696AD98];
    v150 = +[UIKeyboard inputUIOOP];
    if (v150)
    {
      v139 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      keyboardArbiterClient = [v139 keyboardArbiterClient];
      disableBecomeFirstResponder = [keyboardArbiterClient disableBecomeFirstResponder];
    }

    else
    {
      disableBecomeFirstResponder = 0;
    }

    v142 = [v113 numberWithInt:disableBecomeFirstResponder];
    v199 = v142;
    v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v199 forKeys:&v198 count:1];
  }

  v206 = v112;
  v200[19] = 0x1EFB533F0;
  v115 = MEMORY[0x1E696AD98];
  v116 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  existingContainerRootController = [v116 existingContainerRootController];
  v118 = [v115 numberWithInt:{objc_msgSend(existingContainerRootController, "hiddenCount")}];
  v207 = v118;
  v200[20] = 0x1EFB53410;
  v119 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v191, "wordLearningEnabled")}];
  v208 = v119;
  v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v201 forKeys:v200 count:21];
  [v4 setUserInfo:v120];

  if (!pendingDisableBecomeFirstResponderParameters)
  {
  }

  if (v150)
  {
  }

  v121 = v192;
  if (!*&v153[4])
  {
  }

  if (!*v153)
  {
    if (*&v153[4])
    {
      goto LABEL_87;
    }

LABEL_104:

    if (*&v154[4])
    {
      goto LABEL_88;
    }

LABEL_105:

    goto LABEL_88;
  }

  if (!*&v153[4])
  {
    goto LABEL_104;
  }

LABEL_87:
  if (!*&v154[4])
  {
    goto LABEL_105;
  }

LABEL_88:
  if (*v154)
  {
  }

  if (!*&v154[4])
  {
  }

  if (v192)
  {
  }

  if (isKindOfClass)
  {
  }

  userInfo = [v4 userInfo];
  v123 = [userInfo objectForKeyedSubscript:0x1EFB53370];
  v124 = selfCopy->_cachedHasPreviousKeyResponder;
  selfCopy->_cachedHasPreviousKeyResponder = v123;

  userInfo2 = [v4 userInfo];
  v126 = [userInfo2 objectForKeyedSubscript:0x1EFB53390];
  v127 = selfCopy->_cachedHasNextKeyResponder;
  selfCopy->_cachedHasNextKeyResponder = v126;

  v128 = +[UIKeyboardImpl activeInstance];
  textInputTraits13 = [v128 textInputTraits];
  [v4 setSingleLineDocument:{objc_msgSend(textInputTraits13, "isSingleLineDocument")}];

  v130 = _UIMainBundleIdentifier();
  [v4 setBundleId:v130];

  if (v193 && +[UIKeyboard usesInputSystemUI])
  {
    delegate2 = [(UIKBRTIPartner *)selfCopy delegate];
    _responderWindow2 = [delegate2 _responderWindow];
    windowScene2 = [_responderWindow2 windowScene];
    _synchronizeDrawingAndReturnFence = [windowScene2 _synchronizeDrawingAndReturnFence];
    [v4 setFenceHandle:_synchronizeDrawingAndReturnFence];

    v121 = v192;
  }

  rtiDocumentTraits5 = [(UIKBRTIPartner *)selfCopy rtiDocumentTraits];
  v136 = [v4 isEqual:rtiDocumentTraits5] & (v193 ^ 1);

  if ((v136 & 1) == 0)
  {
    [(UIKBRTIPartner *)selfCopy setRtiDocumentTraits:v4];
  }

  v50 = v136 ^ 1;

  return v50;
}

- (id)inputDelegate
{
  partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
  inputDelegate = [partnerDelegate inputDelegate];

  return inputDelegate;
}

- (CGRect)_selectionClipRect
{
  inputDelegate = [(UIKBRTIPartner *)self inputDelegate];
  v4 = objc_opt_respondsToSelector();

  inputDelegate2 = [(UIKBRTIPartner *)self inputDelegate];
  inputDelegate3 = inputDelegate2;
  if (v4)
  {
    [inputDelegate2 selectionClipRect];
LABEL_5:
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;

    goto LABEL_7;
  }

  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    inputDelegate3 = [(UIKBRTIPartner *)self inputDelegate];
    [inputDelegate3 _selectionClipRect];
    goto LABEL_5;
  }

  v12 = *MEMORY[0x1E695F050];
  v13 = *(MEMORY[0x1E695F050] + 8);
  v14 = *(MEMORY[0x1E695F050] + 16);
  v15 = *(MEMORY[0x1E695F050] + 24);
LABEL_7:
  v26.origin.x = v12;
  v26.origin.y = v13;
  v26.size.width = v14;
  v26.size.height = v15;
  if (CGRectIsNull(v26))
  {
    inputDelegate4 = [(UIKBRTIPartner *)self inputDelegate];
    textInputView = [inputDelegate4 textInputView];
    [textInputView bounds];
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v15 = v21;
  }

  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)_performQueuedSupplementalLexiconOperations
{
  v18 = *MEMORY[0x1E69E9840];
  queuedSupplementalLexiconOperations = [(UIKBRTIPartner *)self queuedSupplementalLexiconOperations];
  [(UIKBRTIPartner *)self setQueuedSupplementalLexiconOperations:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = queuedSupplementalLexiconOperations;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        type = [v9 type];
        if (type == 1)
        {
          -[UIKBRTIPartner _didRemoveSupplementalLexiconWithIdentifier:](self, "_didRemoveSupplementalLexiconWithIdentifier:", [v9 lexiconIdentifier]);
        }

        else if (!type)
        {
          lexicon = [v9 lexicon];
          if (lexicon)
          {
            lexicon2 = [v9 lexicon];
            [(UIKBRTIPartner *)self _didAddSupplementalLexicon:lexicon2];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)_updateGeometryObserverIfNecessary
{
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  defaultDocumentRequest = [rtiClient defaultDocumentRequest];
  if (defaultDocumentRequest)
  {
    rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
    defaultDocumentRequest2 = [rtiClient2 defaultDocumentRequest];
    v7 = ([defaultDocumentRequest2 flags] & 4) == 0;
  }

  else
  {
    v7 = 1;
  }

  if (+[UIKeyboard supportsAutoFillPanel])
  {
    v8 = +[UIKeyboard isAlwaysAllowedAutoFillPanelClient];
  }

  else
  {
    v8 = 0;
  }

  rtiClient3 = [(UIKBRTIPartner *)self rtiClient];
  if (![rtiClient3 isEnvironmentEnabled])
  {

    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_21:
    inputDelegate = [(UIKBRTIPartner *)self inputDelegate];
    textInputView = [inputDelegate textInputView];
    [(UIView *)textInputView _addGeometryChangeObserver:?];

    selfCopy2 = self;
    v16 = 1;
    goto LABEL_22;
  }

  currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
  if (currentSessionIdentifier != 0 && !v7 && ![(UIKBRTIPartner *)self isObservingGeometry])
  {

    goto LABEL_21;
  }

  if (v8)
  {
    goto LABEL_21;
  }

LABEL_13:
  rtiClient4 = [(UIKBRTIPartner *)self rtiClient];
  if (![rtiClient4 isEnvironmentEnabled])
  {
    isObservingGeometry = [(UIKBRTIPartner *)self isObservingGeometry];

    if (!isObservingGeometry)
    {
      return;
    }

LABEL_19:
    inputDelegate2 = [(UIKBRTIPartner *)self inputDelegate];
    textInputView2 = [inputDelegate2 textInputView];
    [(UIView *)textInputView2 _removeGeometryChangeObserver:?];

    selfCopy2 = self;
    v16 = 0;
LABEL_22:

    [(UIKBRTIPartner *)selfCopy2 setIsObservingGeometry:v16];
    return;
  }

  currentSessionIdentifier2 = [(UIKBRTIPartner *)self currentSessionIdentifier];
  if (!currentSessionIdentifier2)
  {
    isObservingGeometry2 = [(UIKBRTIPartner *)self isObservingGeometry];

    if (!isObservingGeometry2)
    {
      return;
    }

    goto LABEL_19;
  }
}

- (void)finishCompletionHandlersIfNeeded
{
  v2 = [(UIKBRTIPartner *)self exchangeWaitingRTIOutputOperationResponseContext:0];
  if (v2)
  {
    v3 = v2;
    if (qword_1ED49F528 != -1)
    {
      dispatch_once(&qword_1ED49F528, &__block_literal_global_535_0);
    }

    [v3 transferExecutionToMainThreadWithTask:&__block_literal_global_539_0 breadcrumb:qword_1ED49F520];
    v2 = v3;
  }
}

- (UIKBRTIPartnerDelegate)partnerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_partnerDelegate);

  return WeakRetained;
}

- (void)_createRTIClientIfNecessary
{
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  if (rtiClient)
  {
  }

  else if ([(UIKBRTIPartner *)self inputSystemClientEnabled])
  {
    v4 = _UIKeyboardLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Creating a new RTI client", v5, 2u);
    }

    [(UIKBRTIPartner *)self _createRTIClient];
  }
}

- (void)_createRTIClient
{
  _newRTIConnection = [(UIKBRTIPartner *)self _newRTIConnection];
  [(UIKBRTIPartner *)self setRtiClient:_newRTIConnection];

  if (_os_feature_enabled_impl())
  {
    rtiClient = [(UIKBRTIPartner *)self rtiClient];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
      [rtiClient2 addMachNames:&unk_1EFE2CD78];
    }
  }

  rtiClient3 = [(UIKBRTIPartner *)self rtiClient];
  [(UIKBRTIPartner *)self _didCreateRTIClient:rtiClient3];
}

+ (void)registerTextOperationCustomInfo
{
  if (registerTextOperationCustomInfo_onceToken != -1)
  {
    dispatch_once(&registerTextOperationCustomInfo_onceToken, &__block_literal_global_400);
  }
}

void __49__UIKBRTIPartner_registerTextOperationCustomInfo__block_invoke()
{
  v135 = MEMORY[0x1E69C6FA8];
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v137 = 0;
  v138 = &v137;
  v139 = 0x2050000000;
  v8 = qword_1ED49F560;
  v140 = qword_1ED49F560;
  if (!qword_1ED49F560)
  {
    v136[0] = MEMORY[0x1E69E9820];
    v136[1] = 3221225472;
    v136[2] = __getAFAnalyticsTurnBasedInstrumentationContextClass_block_invoke;
    v136[3] = &unk_1E70F2F20;
    v136[4] = &v137;
    __getAFAnalyticsTurnBasedInstrumentationContextClass_block_invoke(v136);
    v8 = v138[3];
  }

  v9 = v8;
  _Block_object_dispose(&v137, 8);
  v10 = objc_opt_class();
  v11 = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v10, objc_opt_class(), 0}];
  [v135 registerCustomInfoClasses:v11 forType:@"UIDictationRemoteTextOperations"];

  v12 = MEMORY[0x1E69C6F48];
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v13 setWithObjects:{v14, v15, v16, v17, objc_opt_class(), 0}];
  [v12 registerCustomInfoClasses:v18 forType:@"UIDictationRemoteInputOperations"];

  v19 = MEMORY[0x1E69C6F48];
  v20 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
  [v19 registerCustomInfoClasses:v23 forType:@"UIUserPencilOperations"];

  v24 = MEMORY[0x1E69C6F48];
  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = [v25 setWithObjects:{v26, v27, objc_opt_class(), 0}];
  [v24 registerCustomInfoClasses:v28 forType:@"UIEmojiSearchOperations"];

  v29 = MEMORY[0x1E69C6F48];
  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = [v30 setWithObjects:{v31, v32, v33, v34, objc_opt_class(), 0}];
  [v29 registerCustomInfoClasses:v35 forType:@"UIUserInteractionRemoteInputOperations"];

  v36 = MEMORY[0x1E69C6FA8];
  v37 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v36 registerCustomInfoClasses:v37 forType:@"_UIKeyboardIndirectTextSelectionGestureState"];

  v38 = MEMORY[0x1E69C6FA8];
  v39 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v38 registerCustomInfoClasses:v39 forType:@"UITextSuggestion"];

  v40 = MEMORY[0x1E69C6FA8];
  v41 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v40 registerCustomInfoClasses:v41 forType:@"UIPhysicalKeyboardEvent"];

  v42 = MEMORY[0x1E69C6FA8];
  v43 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v42 registerCustomInfoClasses:v43 forType:@"UIKBRTICustomInfoTypeDeleteAction"];

  v44 = MEMORY[0x1E69C6FA8];
  v45 = MEMORY[0x1E695DFD8];
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = objc_opt_class();
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v52 = [v45 setWithObjects:{v46, v47, v48, v49, v50, v51, objc_opt_class(), 0}];
  [v44 registerCustomInfoClasses:v52 forType:@"UIStickerRemoteInputOperations"];

  v53 = MEMORY[0x1E69C6F48];
  v54 = MEMORY[0x1E695DFD8];
  v55 = objc_opt_class();
  v56 = [v54 setWithObjects:{v55, objc_opt_class(), 0}];
  [v53 registerCustomInfoClasses:v56 forType:@"UIPhysicalKeyboardEvent"];

  v57 = MEMORY[0x1E69C6F48];
  v58 = MEMORY[0x1E695DFD8];
  v59 = objc_opt_class();
  v60 = [v58 setWithObjects:{v59, objc_opt_class(), 0}];
  [v57 registerCustomInfoClasses:v60 forType:@"UIKeyboardCameraRemoteInputOperations"];

  v61 = MEMORY[0x1E69C6FA8];
  v62 = MEMORY[0x1E695DFD8];
  v63 = objc_opt_class();
  v64 = objc_opt_class();
  v65 = objc_opt_class();
  v66 = objc_opt_class();
  v67 = [v62 setWithObjects:{v63, v64, v65, v66, objc_opt_class(), 0}];
  [v61 registerCustomInfoClasses:v67 forType:@"UISupplementalLexiconOperations"];

  v68 = MEMORY[0x1E69C6F48];
  v69 = MEMORY[0x1E695DFD8];
  v70 = objc_opt_class();
  v71 = objc_opt_class();
  v72 = objc_opt_class();
  v73 = objc_opt_class();
  v74 = [v69 setWithObjects:{v70, v71, v72, v73, objc_opt_class(), 0}];
  [v68 registerCustomInfoClasses:v74 forType:@"UISupplementalLexiconInputOperations"];

  v75 = MEMORY[0x1E69C6FA8];
  v76 = MEMORY[0x1E695DFD8];
  v77 = objc_opt_class();
  v78 = objc_opt_class();
  v79 = objc_opt_class();
  v80 = [v76 setWithObjects:{v77, v78, v79, objc_opt_class(), 0}];
  [v75 registerCustomInfoClasses:v80 forType:@"UIKBRTICustomInfoTypeAutofill"];

  v81 = MEMORY[0x1E69C6FA8];
  v82 = MEMORY[0x1E695DFD8];
  v83 = objc_opt_class();
  v84 = objc_opt_class();
  v85 = objc_opt_class();
  v86 = objc_opt_class();
  v87 = [v82 setWithObjects:{v83, v84, v85, v86, objc_opt_class(), 0}];
  [v81 registerCustomInfoClasses:v87 forType:@"UIWebKitOperations"];

  v88 = MEMORY[0x1E69C6F48];
  v89 = MEMORY[0x1E695DFD8];
  v90 = objc_opt_class();
  v91 = objc_opt_class();
  v92 = objc_opt_class();
  v93 = [v89 setWithObjects:{v90, v91, v92, objc_opt_class(), 0}];
  [v88 registerCustomInfoClasses:v93 forType:@"UIWebKitOperations"];

  v94 = MEMORY[0x1E69C6FA8];
  v95 = MEMORY[0x1E695DFD8];
  v96 = objc_opt_class();
  v97 = [v95 setWithObjects:{v96, objc_opt_class(), 0}];
  [v94 registerCustomInfoClasses:v97 forType:@"UIEmojiSearchOperations"];

  v98 = MEMORY[0x1E69C6FA8];
  v99 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v98 registerCustomInfoClasses:v99 forType:@"UIKBRTICustomInfoTypeUpdateInputMode"];

  v100 = MEMORY[0x1E69C6FA8];
  v101 = MEMORY[0x1E695DFD8];
  v102 = objc_opt_class();
  v103 = objc_opt_class();
  v104 = objc_opt_class();
  v105 = objc_opt_class();
  v106 = [v101 setWithObjects:{v102, v103, v104, v105, objc_opt_class(), 0}];
  [v100 registerCustomInfoClasses:v106 forType:@"UIKBRTICustomInfoTypeKeyboardOperations"];

  v107 = MEMORY[0x1E69C6F48];
  v108 = MEMORY[0x1E695DFD8];
  v109 = objc_opt_class();
  v110 = objc_opt_class();
  v111 = objc_opt_class();
  v112 = objc_opt_class();
  v113 = [v108 setWithObjects:{v109, v110, v111, v112, objc_opt_class(), 0}];
  [v107 registerCustomInfoClasses:v113 forType:@"UIKBRTICustomInfoTypeApplicationOperations"];

  v114 = MEMORY[0x1E69C6FA8];
  v115 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v114 registerCustomInfoClasses:v115 forType:@"UIKBRTICustomInfoTypeTypologyLogOperations"];

  v116 = MEMORY[0x1E69C6F48];
  v117 = MEMORY[0x1E695DFD8];
  v118 = objc_opt_class();
  v119 = [v117 setWithObjects:{v118, objc_opt_class(), 0}];
  [v116 registerCustomInfoClasses:v119 forType:@"UIKBRTICustomInfoTypeAnalyticsOperations"];

  v120 = MEMORY[0x1E69C6F48];
  v121 = MEMORY[0x1E695DFD8];
  v122 = objc_opt_class();
  v123 = [v121 setWithObjects:{v122, objc_opt_class(), 0}];
  [v120 registerCustomInfoClasses:v123 forType:@"UIKBRTICustomInfoTypeGrammarCorrectionOperations"];

  v124 = MEMORY[0x1E69C6FA8];
  v125 = MEMORY[0x1E695DFD8];
  v126 = objc_opt_class();
  v127 = [v125 setWithObjects:{v126, objc_opt_class(), 0}];
  [v124 registerCustomInfoClasses:v127 forType:@"UIKBRTICustomInfoTypeEmojiCreationOperations"];

  v128 = MEMORY[0x1E69C6FA8];
  v129 = MEMORY[0x1E695DFD8];
  v130 = objc_opt_class();
  v131 = objc_opt_class();
  v132 = [v129 setWithObjects:{v130, v131, objc_opt_class(), 0}];
  [v128 registerCustomInfoClasses:v132 forType:@"UIKBRTICustomInfoTypeSmartReplyCandidateOperations"];

  v133 = MEMORY[0x1E69C6FA8];
  v134 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v133 registerCustomInfoClasses:v134 forType:@"UIKBRTICustomInfoTypeWritingToolsOperations"];
}

- (UIKBRTIPartner)init
{
  v14 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = UIKBRTIPartner;
  v2 = [(UIKBRTIPartner *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v4 = _nextInstanceID_count++;
    v2->_id = v4;
    if (os_variant_has_internal_diagnostics())
    {
      v9 = _UIKeyboardExtendedLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        id = v3->_id;
        *buf = 134217984;
        v13 = id;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "RTI partner init (id=%ld)", buf, 0xCu);
      }
    }

    [objc_opt_class() registerTextOperationCustomInfo];
    v3->_lock._os_unfair_lock_opaque = 0;
    v3->_applicationStateIsActiveForRTI = [UIApp applicationState] == 0;
    v3->_viewServiceStateIsActiveForRTI = 1;
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    rtiSessionMarkers = v3->_rtiSessionMarkers;
    v3->_rtiSessionMarkers = v5;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__applicationWillSuspend_ name:@"UIApplicationSuspendedNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__viewServiceHostDidBecomeActive_ name:0x1EFBB4870 object:0];
    [defaultCenter addObserver:v3 selector:sel__viewServiceHostWillResignActive_ name:0x1EFBB4850 object:0];
    [defaultCenter addObserver:v3 selector:sel__viewServiceHostDidBecomeActive_ name:0x1EFBB4830 object:0];
    [defaultCenter addObserver:v3 selector:sel_documentTraitsChanged name:@"_UIHardwareKeyboardExclusivityIdentifierChangedNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__applicationWillAddDeactivationReason_ name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__applicationDidRemoveDeactivationReason_ name:@"_UIApplicationDidRemoveDeactivationReasonNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel__screenModeDidChange_ name:@"UIScreenModeDidChangeNotification" object:0];
  }

  return v3;
}

- (unsigned)_ignoredReasonsForKeyboard
{
  if (+[UIKeyboard shouldExtendKeyboardInputUI])
  {
    return 4143;
  }

  else
  {
    return 4134;
  }
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v8 = _UIKeyboardExtendedLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      id = self->_id;
      *buf = 134217984;
      v12 = id;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "RTI partner dealloc (id=%ld)", buf, 0xCu);
    }
  }

  wkRectTokenizer = self->_wkRectTokenizer;
  if (wkRectTokenizer)
  {
    CFRelease(wkRectTokenizer);
  }

  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  if (rtiClient)
  {
    v5 = rtiClient;
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];

    if (currentSessionIdentifier)
    {
      [(UIKBRTIPartner *)self endInputSessionWithIdentifier:0];
    }
  }

  rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
  [rtiClient2 invalidateConnections];

  v10.receiver = self;
  v10.super_class = UIKBRTIPartner;
  [(UIKBRTIPartner *)&v10 dealloc];
}

- (void)invalidate
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v8 = _UIKeyboardExtendedLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      id = self->_id;
      v10 = 134217984;
      v11 = id;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "RTI partner invalidate (id=%ld)", &v10, 0xCu);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIApplicationSuspendedNotification" object:0];
  [defaultCenter removeObserver:self name:0x1EFBB4870 object:0];
  [defaultCenter removeObserver:self name:0x1EFBB4850 object:0];
  [defaultCenter removeObserver:self name:0x1EFBB4830 object:0];
  [defaultCenter removeObserver:self name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
  [defaultCenter removeObserver:self name:@"_UIApplicationDidRemoveDeactivationReasonNotification" object:0];
  [defaultCenter removeObserver:self name:@"UIScreenModeDidChangeNotification" object:0];
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  if (rtiClient)
  {
    v5 = rtiClient;
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];

    if (currentSessionIdentifier)
    {
      [(UIKBRTIPartner *)self endInputSessionWithIdentifier:0];
    }
  }

  [(RTIInputSystemClient *)self->_rtiClient invalidateConnections];
  [(RTIInputSystemClient *)self->_rtiClient setDelegate:self];
  rtiClient = self->_rtiClient;
  self->_rtiClient = 0;
}

- (UIKeyboardTaskSubqueue)keyboardTaskSubqueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_keyboardTaskSubqueue;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setKeyboardTaskSubqueue:(id)subqueue
{
  subqueueCopy = subqueue;
  obj = self;
  objc_sync_enter(obj);
  keyboardTaskSubqueue = obj->_keyboardTaskSubqueue;
  obj->_keyboardTaskSubqueue = subqueueCopy;

  objc_sync_exit(obj);
}

- (void)_applicationWillSuspend:(id)suspend
{
  currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];

  if (currentSessionIdentifier)
  {
    if (+[UIKeyboard usingEndInputSessionCompletion])
    {

      [(UIKBRTIPartner *)self _updateRTIAllowedAndNotify:0 withReason:@"Application will suspend"];
    }

    else
    {
      currentSessionIdentifier2 = [(UIKBRTIPartner *)self currentSessionIdentifier];
      [(UIKBRTIPartner *)self endAllowingRemoteTextInput:currentSessionIdentifier2];
    }
  }
}

- (void)_viewServiceHostWillResignActive:(id)active
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  existingContainerRootController = [v4 existingContainerRootController];
  [existingContainerRootController takeKeyboardSnapshotIgnoringSpotlightCheck:0];

  if (+[UIKeyboard usesInputSystemUIForAutoFillOnly])
  {
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    authenticatingSessionIdentifier = [(UIKBRTIPartner *)self authenticatingSessionIdentifier];
    v8 = [currentSessionIdentifier isEqual:authenticatingSessionIdentifier];

    if ((v8 & 1) == 0)
    {
      [(UIKBRTIPartner *)self forwardInputDestinationEventToUIHost:sel_dismissAutoFillPanel];
    }
  }

  [(UIKBRTIPartner *)self setViewServiceStateIsActiveForRTI:0];

  [(UIKBRTIPartner *)self _updateRTIAllowedAndNotify:0 withReason:@"View service host resigned active"];
}

- (void)_viewServiceHostDidBecomeActive:(id)active
{
  [(UIKBRTIPartner *)self setViewServiceStateIsActiveForRTI:1];

  [(UIKBRTIPartner *)self _updateRTIAllowedAndNotify:0 withReason:@"View service host became active"];
}

- (void)_applicationWillAddDeactivationReason:(id)reason
{
  userInfo = [reason userInfo];
  v5 = [userInfo objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  integerValue = [v5 integerValue];

  if (integerValue == 4 && (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || +[UIKeyboard usesInputSystemUIForAutoFillOnlyWithRTI]))
  {
    self->_applicationDeactivationReasonAssistant = 1;
    if (self->_dontTakeKeyboardSnapshot)
    {
      v7 = _UIKeyboardLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Assistant Keyboard Snapshot triggered", buf, 2u);
      }

      v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      existingContainerRootController = [v8 existingContainerRootController];
      [existingContainerRootController takeKeyboardSnapshotIgnoringSpotlightCheck:self->_applicationDeactivationReasonAssistant];
    }
  }

  else
  {
    if (+[UIKeyboard usesInputSystemUIForAutoFillOnly])
    {
      currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
      authenticatingSessionIdentifier = [(UIKBRTIPartner *)self authenticatingSessionIdentifier];
      v12 = [currentSessionIdentifier isEqual:authenticatingSessionIdentifier];

      if ((v12 & 1) == 0 && (integerValue == 5 || integerValue == 0))
      {
        [(UIKBRTIPartner *)self forwardInputDestinationEventToUIHost:sel_dismissAutoFillPanel];
      }
    }

    if ((integerValue - 1) <= 1)
    {
      self->_dontTakeKeyboardSnapshot = 1;
    }

    if (+[UIKeyboard usesInputSystemUI])
    {
      v14 = [UIApp _isActivatedIgnoringReasons:-[UIKBRTIPartner _ignoredReasonsForKeyboard](self withNewReason:{"_ignoredReasonsForKeyboard"), integerValue}];
    }

    else
    {
      v14 = 0;
    }

    v15 = +[UIKeyboard usesInputSystemUIForAutoFillOnlyWithRTI];
    if (v15)
    {
      LOBYTE(v15) = [UIApp _isActivatedIgnoringReasons:-[UIKBRTIPartner _ignoredReasonsForAutoFill](self withNewReason:{"_ignoredReasonsForAutoFill"), integerValue}];
    }

    if ((integerValue - 11) > 1)
    {
      if (integerValue != 5)
      {
        [(UIKBRTIPartner *)self setApplicationStateIsActiveForRTI:(v14 | v15) & 1];

        [(UIKBRTIPartner *)self _updateRTIAllowedAndNotify:1 withReason:@"Application resigned active"];
      }
    }

    else
    {
      [(UIKBRTIPartner *)self setApplicationStateIsActiveForRTI:(v14 | v15) & 1];
      dontTakeKeyboardSnapshot = self->_dontTakeKeyboardSnapshot;
      v17 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      existingContainerRootController2 = [v17 existingContainerRootController];
      v19 = existingContainerRootController2;
      if (dontTakeKeyboardSnapshot)
      {
        [existingContainerRootController2 clearKeyboardSnapshot];

        v17 = _UIKeyboardLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Keyboard Snapshot is skipped", v20, 2u);
        }
      }

      else
      {
        [existingContainerRootController2 takeKeyboardSnapshotIgnoringSpotlightCheck:self->_applicationDeactivationReasonAssistant];
      }

      [(UIKBRTIPartner *)self _updateRTIAllowedAndNotify:0 withReason:@"Application suspended"];
    }
  }
}

- (void)endInputSessionOnSwitchingApps
{
  if ([(UIKBRTIPartner *)self applicationStateIsActiveForRTI])
  {
    [(UIKBRTIPartner *)self setApplicationStateIsActiveForRTI:0];

    [(UIKBRTIPartner *)self _updateRTIAllowedAndNotify:1 withReason:@"Application resigned active"];
  }
}

- (void)_applicationDidRemoveDeactivationReason:(id)reason
{
  userInfo = [reason userInfo];
  v5 = [userInfo objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  integerValue = [v5 integerValue];

  if (+[UIKeyboard usesInputSystemUI])
  {
    v7 = [UIApp _isActivatedIgnoringReasons:{-[UIKBRTIPartner _ignoredReasonsForKeyboard](self, "_ignoredReasonsForKeyboard")}];
  }

  else
  {
    v7 = 0;
  }

  v8 = +[UIKeyboard usesInputSystemUIForAutoFillOnlyWithRTI];
  if (v8)
  {
    v8 = [UIApp _isActivatedIgnoringReasons:{-[UIKBRTIPartner _ignoredReasonsForAutoFill](self, "_ignoredReasonsForAutoFill")}];
  }

  if (((v7 | v8) & 1) == 0)
  {
    if ((integerValue - 11) < 2)
    {
      goto LABEL_11;
    }

    if (integerValue == 5)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  applicationStateIsActiveForRTI = [(UIKBRTIPartner *)self applicationStateIsActiveForRTI];
  if ((integerValue - 11) >= 2)
  {
    if (integerValue == 5)
    {
      goto LABEL_19;
    }

    if (applicationStateIsActiveForRTI)
    {
      v11 = 1;
LABEL_18:
      [(UIKBRTIPartner *)self setApplicationStateIsActiveForRTI:v11];
      [(UIKBRTIPartner *)self _updateRTIAllowedAndNotify:1 withReason:@"Application became active"];
      goto LABEL_19;
    }

LABEL_17:
    v11 = [UIApp _isActivatedIgnoringReason:5];
    goto LABEL_18;
  }

  if (!applicationStateIsActiveForRTI)
  {
LABEL_11:
    v10 = [UIApp _isActivatedIgnoringReasons:{-[UIKBRTIPartner _ignoredReasonsForKeyboard](self, "_ignoredReasonsForKeyboard")}];
    goto LABEL_12;
  }

  v10 = 1;
LABEL_12:
  [(UIKBRTIPartner *)self setApplicationStateIsActiveForRTI:v10];
  [(UIKBRTIPartner *)self _updateRTIAllowedAndNotify:0 withReason:@"Application resumed"];
  self->_applicationDeactivationReasonAssistant = 0;
LABEL_19:
  self->_dontTakeKeyboardSnapshot = 0;
}

- (id)delegate
{
  partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
  delegate = [partnerDelegate delegate];

  return delegate;
}

- (void)documentTraitsChanged
{
  if ([(UIKBRTIPartner *)self _updateRTITraitsIfNecessary])
  {
    rtiClient = [(UIKBRTIPartner *)self rtiClient];
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    rtiDocumentTraits = [(UIKBRTIPartner *)self rtiDocumentTraits];
    [rtiClient remoteTextInputSessionWithID:currentSessionIdentifier documentTraitsDidChange:rtiDocumentTraits];

    rtiDocumentTraits2 = [(UIKBRTIPartner *)self rtiDocumentTraits];
    fenceHandle = [rtiDocumentTraits2 fenceHandle];
    [fenceHandle invalidate];
  }
}

- (void)updateAnimationForOptions:(id)options
{
  optionsCopy = options;
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  nextAnimationStyle = [v3 nextAnimationStyle];

  if (objc_opt_respondsToSelector())
  {
    [optionsCopy setOffscreenDirection:{objc_msgSend(nextAnimationStyle, "outDirection")}];
  }
}

- (void)beginInputSessionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(UIKBRTIPartner *)self _createRTIClientIfNecessary];
  [(UIKBRTIPartner *)self setCurrentSessionIdentifier:identifierCopy];
  if (!+[UIKeyboard usingEndInputSessionCompletion])
  {
    os_unfair_lock_lock(&self->_lock);
    rtiSessionMarkers = [(UIKBRTIPartner *)self rtiSessionMarkers];
    v6 = objc_opt_new();
    [rtiSessionMarkers setObject:v6 forKey:identifierCopy];

    os_unfair_lock_unlock(&self->_lock);
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __50__UIKBRTIPartner_beginInputSessionWithIdentifier___block_invoke;
  v21[3] = &unk_1E70FFB90;
  v7 = identifierCopy;
  selfCopy = self;
  v24 = &v25;
  v22 = v7;
  [(UIKBRTIPartner *)self updateStateWithCompletion:v21 updateTraits:0];
  if (+[UIKeyboard usingEndInputSessionCompletion])
  {
    *(v26 + 24) = v7 != 0;
    if (v7)
    {
      rtiDocumentState = [(UIKBRTIPartner *)self rtiDocumentState];

      if (!rtiDocumentState)
      {
        v9 = objc_alloc_init(MEMORY[0x1E69C6F38]);
        [(UIKBRTIPartner *)self setRtiDocumentState:v9];

        [(UIKBRTIPartner *)self setExtentRangeForDocumentState:0];
      }
    }

    defaultBeginOptions = [MEMORY[0x1E69C6F80] defaultBeginOptions];
    v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    visualModeManager = [v11 visualModeManager];
    windowingModeEnabled = [visualModeManager windowingModeEnabled];

    [defaultBeginOptions setEnhancedWindowingModeEnabled:windowingModeEnabled];
    v14 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    nextAnimationStyle = [v14 nextAnimationStyle];
    LOBYTE(windowingModeEnabled) = [nextAnimationStyle animated];

    if ((windowingModeEnabled & 1) == 0)
    {
      [defaultBeginOptions setAnimated:0];
    }

    [(UIKBRTIPartner *)self updateAnimationForOptions:defaultBeginOptions];
    rtiClient = [(UIKBRTIPartner *)self rtiClient];
    rtiDocumentTraits = [(UIKBRTIPartner *)self rtiDocumentTraits];
    rtiDocumentState2 = [(UIKBRTIPartner *)self rtiDocumentState];
    [rtiClient beginRemoteTextInputSessionWithID:v7 options:defaultBeginOptions documentTraits:rtiDocumentTraits initialDocumentState:rtiDocumentState2];

    rtiDocumentTraits2 = [(UIKBRTIPartner *)self rtiDocumentTraits];
    fenceHandle = [rtiDocumentTraits2 fenceHandle];
    [fenceHandle invalidate];

    [(UIKBRTIPartner *)self _updateGeometryObserverIfNecessary];
    [(UIKBRTIPartner *)self _performQueuedSupplementalLexiconOperations];
    [(UIKBRTIPartner *)self updateTextSuggestionsIfNecessary:v7];
  }

  _Block_object_dispose(&v25, 8);
}

void __50__UIKBRTIPartner_beginInputSessionWithIdentifier___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!+[UIKeyboard usingEndInputSessionCompletion])
  {
    v8 = [*(a1 + 40) rtiClient];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [MEMORY[0x1E69C6F80] defaultBeginOptions];
      v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v12 = [v11 visualModeManager];
      v13 = [v12 windowingModeEnabled];

      [v10 setEnhancedWindowingModeEnabled:v13];
      v14 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v15 = [v14 nextAnimationStyle];
      LOBYTE(v13) = [v15 animated];

      if ((v13 & 1) == 0)
      {
        [v10 setAnimated:0];
      }

      [*(a1 + 40) updateAnimationForOptions:v10];
      v16 = [*(a1 + 40) rtiClient];
      v17 = *(a1 + 32);
      v18 = [*(a1 + 40) rtiDocumentTraits];
      v19 = [*(a1 + 40) rtiDocumentState];
      [v16 beginRemoteTextInputSessionWithID:v17 options:v10 documentTraits:v18 initialDocumentState:v19];
    }

    else
    {
      v10 = [*(a1 + 40) rtiClient];
      v20 = *(a1 + 32);
      v16 = [*(a1 + 40) rtiDocumentTraits];
      v18 = [*(a1 + 40) rtiDocumentState];
      [v10 beginRemoteTextInputSessionWithID:v20 documentTraits:v16 initialDocumentState:v18];
    }

    os_unfair_lock_lock((*(a1 + 40) + 40));
    v21 = [*(a1 + 40) rtiSessionMarkers];
    v5 = [v21 objectForKey:*(a1 + 32)];

    v22 = [*(a1 + 40) rtiSessionMarkers];
    [v22 removeObjectForKey:*(a1 + 32)];

    os_unfair_lock_unlock((*(a1 + 40) + 40));
    v23 = [v5 completionHandler];

    if (v23)
    {
      v24 = _UIKeyboardLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v31 = *(a1 + 32);
        v32 = 138412290;
        v33 = v31;
        _os_log_debug_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEBUG, "Performing deferred end session for: %@", &v32, 0xCu);
      }

      v25 = [v5 completionHandler];
      v25[2]();
    }

    v26 = [*(a1 + 40) rtiDocumentTraits];
    v27 = [v26 fenceHandle];
    [v27 invalidate];

    [*(a1 + 40) _updateGeometryObserverIfNecessary];
    [*(a1 + 40) _performQueuedSupplementalLexiconOperations];
    [*(a1 + 40) updateTextSuggestionsIfNecessary:*(a1 + 32)];
    goto LABEL_18;
  }

  if (*(a1 + 32))
  {
    v2 = _UIKeyboardInputSessionChangeLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a1 + 32);
      v32 = 138412290;
      v33 = v30;
      _os_log_debug_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEBUG, "Got state for session with ID: %@", &v32, 0xCu);
    }

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v3 = [*(a1 + 40) currentSessionIdentifier];
      v4 = [v3 isEqual:*(a1 + 32)];

      if (v4)
      {
        v5 = [*(a1 + 40) rtiClient];
        v6 = [*(a1 + 40) currentSessionIdentifier];
        v7 = [*(a1 + 40) rtiDocumentState];
        [v5 remoteTextInputSessionWithID:v6 documentDidChange:v7];

LABEL_18:
        return;
      }

      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v5 = _UIKeyboardInputSessionChangeLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v28 = *(a1 + 32);
          v29 = [*(a1 + 40) currentSessionIdentifier];
          v32 = 138412546;
          v33 = v28;
          v34 = 2112;
          v35 = v29;
          _os_log_error_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "WARNING: Got state for session beginning session with ID: %@, but current session has ID: %@", &v32, 0x16u);
        }

        goto LABEL_18;
      }
    }
  }
}

- (void)endInputSessionWithIdentifier:(id)identifier shouldResign:(BOOL)resign waitForReply:(BOOL)reply
{
  replyCopy = reply;
  resignCopy = resign;
  v46 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (+[UIKeyboard usesInputSystemUI])
  {
    v9 = !resignCopy;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && +[UIDictationController isRunning])
  {
    v10 = +[UIDictationController sharedInstance];
    [v10 setShadowState:0];
  }

  if (!identifierCopy)
  {
    identifierCopy = [(UIKBRTIPartner *)self currentSessionIdentifier];
  }

  defaultOptions = [MEMORY[0x1E69C6F80] defaultOptions];
  v12 = defaultOptions;
  if (defaultOptions)
  {
    [defaultOptions setShouldResign:resignCopy];
    [(UIKBRTIPartner *)self updateAnimationForOptions:v12];
  }

  if (replyCopy && ([(UIKBRTIPartner *)self rtiClient], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_opt_respondsToSelector(), v13, (v14 & 1) != 0))
  {
    v15 = _UIKeyboardInputSessionChangeLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v45 = identifierCopy;
      _os_log_debug_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEBUG, "Waiting on response from -endRemoteTextInputSessionWithID:%@", buf, 0xCu);
    }

    if (qword_1ED49F508 != -1)
    {
      dispatch_once(&qword_1ED49F508, &__block_literal_global_208);
    }

    partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
    taskQueue = [partnerDelegate taskQueue];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __74__UIKBRTIPartner_endInputSessionWithIdentifier_shouldResign_waitForReply___block_invoke_3;
    v41[3] = &unk_1E70FD208;
    v41[4] = self;
    v18 = identifierCopy;
    v42 = v18;
    v43 = v12;
    [taskQueue performSingleTask:v41 breadcrumb:_MergedGlobals_1203];

    v19 = _UIKeyboardInputSessionChangeLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v45 = v18;
      _os_log_debug_impl(&dword_188A29000, v19, OS_LOG_TYPE_DEBUG, "Done blocking on -endRemoteTextInputSessionWithID:%@", buf, 0xCu);
    }
  }

  else
  {
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __74__UIKBRTIPartner_endInputSessionWithIdentifier_shouldResign_waitForReply___block_invoke_214;
    v37 = &unk_1E70F6228;
    selfCopy = self;
    v20 = identifierCopy;
    v39 = v20;
    v40 = v12;
    v21 = _Block_copy(&v34);
    os_unfair_lock_lock(&self->_lock);
    v22 = [(UIKBRTIPartner *)self rtiSessionMarkers:v34];
    v23 = [v22 objectForKey:v20];

    if (v23)
    {
      [v23 setCompletionHandler:v21];
      os_unfair_lock_unlock(&self->_lock);
      v24 = _UIKeyboardLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v45 = v20;
        _os_log_debug_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEBUG, "Found an active begin session, deferring end: %@", buf, 0xCu);
      }
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
      v21[2](v21);
    }
  }

  [(UIKBRTIPartner *)self finishCompletionHandlersIfNeeded];
  [(UIKBRTIPartner *)self setCurrentSessionIdentifier:0];
  rtiDocumentTraits = [(UIKBRTIPartner *)self rtiDocumentTraits];
  devicePasscodeEntry = [rtiDocumentTraits devicePasscodeEntry];

  if (devicePasscodeEntry)
  {
    v27 = objc_alloc_init(MEMORY[0x1E69D9590]);
    rtiDocumentState = [(UIKBRTIPartner *)self rtiDocumentState];
    [rtiDocumentState setDocumentState:v27];

    rtiDocumentState2 = [(UIKBRTIPartner *)self rtiDocumentState];
    LOBYTE(rtiDocumentState) = objc_opt_respondsToSelector();

    if (rtiDocumentState)
    {
      v30 = objc_alloc_init(MEMORY[0x1E69D9568]);
      rtiDocumentState3 = [(UIKBRTIPartner *)self rtiDocumentState];
      [rtiDocumentState3 setAttributedDocumentState:v30];
    }
  }

  cachedHasPreviousKeyResponder = self->_cachedHasPreviousKeyResponder;
  self->_cachedHasPreviousKeyResponder = 0;

  cachedHasNextKeyResponder = self->_cachedHasNextKeyResponder;
  self->_cachedHasNextKeyResponder = 0;

  [(UIKBRTIPartner *)self _updateGeometryObserverIfNecessary];
  [(UIKBRTIPartner *)self removeTextSuggestionsForSessionWithID:identifierCopy];
}

void __74__UIKBRTIPartner_endInputSessionWithIdentifier_shouldResign_waitForReply___block_invoke()
{
  v0 = [&__block_literal_global_211_0 copy];
  v1 = _MergedGlobals_1203;
  _MergedGlobals_1203 = v0;
}

void __74__UIKBRTIPartner_endInputSessionWithIdentifier_shouldResign_waitForReply___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [UIKeyboardTaskSubqueue subqueueWithExecutionContext:a2];
  [*(a1 + 32) setKeyboardTaskSubqueue:v3];

  v4 = [*(a1 + 32) rtiClient];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__UIKBRTIPartner_endInputSessionWithIdentifier_shouldResign_waitForReply___block_invoke_4;
  v9[3] = &unk_1E70F35B8;
  v7 = v5;
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  [v4 endRemoteTextInputSessionWithID:v7 options:v6 completion:v9];
}

uint64_t __74__UIKBRTIPartner_endInputSessionWithIdentifier_shouldResign_waitForReply___block_invoke_4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  v2 = _UIKeyboardInputSessionChangeLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEBUG, "Got response from -endRemoteTextInputSessionWithID:%@", &v6, 0xCu);
  }

  v3 = [*(a1 + 40) keyboardTaskSubqueue];
  [v3 returnExecutionToParentQueue];

  return [*(a1 + 40) setKeyboardTaskSubqueue:0];
}

void __74__UIKBRTIPartner_endInputSessionWithIdentifier_shouldResign_waitForReply___block_invoke_214(uint64_t a1)
{
  v2 = [*(a1 + 32) rtiClient];
  [v2 endRemoteTextInputSessionWithID:*(a1 + 40) options:*(a1 + 48)];
}

- (void)documentStateChanged:(BOOL)changed
{
  rtiClient = [(UIKBRTIPartner *)self rtiClient];

  if (rtiClient)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 updateReturnKey:0];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__UIKBRTIPartner_documentStateChanged___block_invoke;
    v7[3] = &unk_1E70F35E0;
    v7[4] = self;
    changedCopy = changed;
    [(UIKBRTIPartner *)self updateStateWithCompletion:v7 updateTraits:1];
  }
}

void __39__UIKBRTIPartner_documentStateChanged___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) rtiDocumentState];
  [v3 setOriginatedFromSource:v2];

  if ([*(a1 + 32) _remoteInputSystemRequiresDocumentStateUpdates])
  {
    v4 = [*(a1 + 32) rtiClient];
    v5 = [*(a1 + 32) currentSessionIdentifier];
    v6 = [*(a1 + 32) rtiDocumentState];
    [v4 remoteTextInputSessionWithID:v5 documentDidChange:v6];
  }

  v8 = [*(a1 + 32) rtiDocumentTraits];
  v7 = [v8 fenceHandle];
  [v7 invalidate];
}

- (void)performInputOperation:(id)operation
{
  operationCopy = operation;
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [rtiClient2 remoteTextInputSessionWithID:currentSessionIdentifier performInputOperation:operationCopy];
  }
}

- (void)forwardKeyboardSuppression:(BOOL)suppression suppressAssistantBar:(BOOL)bar
{
  barCopy = bar;
  suppressionCopy = suppression;
  v15[2] = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E69C6F48]);
  v14[0] = @"suppressSoftwareKeyboard";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:suppressionCopy];
  v14[1] = @"suppressAssistantBar";
  v15[0] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:barCopy];
  v15[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v7 setCustomInfo:v10];

  [v7 setCustomInfoType:@"UIUserPencilOperations"];
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [rtiClient2 remoteTextInputSessionWithID:currentSessionIdentifier performInputOperation:v7];
  }
}

- (void)forwardApplicationOperation:(SEL)operation object:(id)object
{
  objectCopy = object;
  v6 = objc_alloc_init(MEMORY[0x1E69C6F48]);
  [v6 setActionSelector:operation];
  [v6 setCustomInfoType:@"UIKBRTICustomInfoTypeApplicationOperations"];
  [v6 setCustomInfo:objectCopy];
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [rtiClient2 remoteTextInputSessionWithID:currentSessionIdentifier performInputOperation:v6];
  }

  if (sel_setRemoteDisableBecomeFirstResponder_ == operation)
  {
    currentSessionIdentifier2 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    if (currentSessionIdentifier2)
    {
      v12 = 0;
    }

    else
    {
      v12 = objectCopy;
    }

    objc_storeStrong(&self->_pendingDisableBecomeFirstResponderParameters, v12);
  }
}

- (void)forwardKeyboardInputMode:(id)mode
{
  v4 = MEMORY[0x1E69C6F48];
  modeCopy = mode;
  v9 = objc_alloc_init(v4);
  [v9 setCustomInfoType:@"UIUserPencilOperations"];
  [v9 setActionSelector:sel_setInputMode_];
  [v9 setCustomInfo:modeCopy];

  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  LOBYTE(modeCopy) = objc_opt_respondsToSelector();

  if (modeCopy)
  {
    rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [rtiClient2 remoteTextInputSessionWithID:currentSessionIdentifier performInputOperation:v9];
  }
}

- (void)forwardClearForwardingInputDelegateAndResign:(BOOL)resign
{
  resignCopy = resign;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69C6F48]);
  v13 = @"resign";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:resignCopy];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v5 setCustomInfo:v7];

  [v5 setCustomInfoType:@"UIEmojiSearchOperations"];
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  LOBYTE(v7) = objc_opt_respondsToSelector();

  if (v7)
  {
    rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [rtiClient2 remoteTextInputSessionWithID:currentSessionIdentifier performInputOperation:v5];
  }

  v11 = +[UIKeyboardImpl activeInstance];
  inputDelegateManager = [v11 inputDelegateManager];
  [inputDelegateManager setShouldRespectForwardingInputDelegate:0];
}

- (void)forwardKeyboardEventToUIHost:(id)host
{
  hostCopy = host;
  if (([hostCopy keyEventForwardedFromInputUIHost] & 1) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C6F48]);
    [v4 setCustomInfo:hostCopy];
    [v4 setCustomInfoType:@"UIPhysicalKeyboardEvent"];
    rtiClient = [(UIKBRTIPartner *)self rtiClient];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
      currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
      [rtiClient2 remoteTextInputSessionWithID:currentSessionIdentifier performInputOperation:v4];
    }
  }
}

- (BOOL)synchronousForwardKeyCommandsBeforePublicToUIHost:(id)host
{
  hostCopy = host;
  if (([hostCopy keyEventForwardedFromInputUIHost] & 1) == 0)
  {
    [hostCopy setKeyCommandHandlingBeforePublic:1];
    v6 = objc_alloc_init(MEMORY[0x1E69C6F48]);
    [v6 setCustomInfo:hostCopy];
    [v6 setCustomInfoType:@"UIPhysicalKeyboardEvent"];
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    rtiClient = [(UIKBRTIPartner *)self rtiClient];
    if ([rtiClient isEnvironmentEnabled])
    {
      currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
      if (currentSessionIdentifier)
      {
        rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
        v10 = objc_opt_respondsToSelector();

        if ((v10 & 1) == 0)
        {
LABEL_12:
          partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
          [partnerDelegate setInputModeSwitcherVisibleInRemote:*(v24 + 24)];

          v5 = *(v28 + 24);
LABEL_13:
          _Block_object_dispose(&v23, 8);
          _Block_object_dispose(&v27, 8);

          goto LABEL_14;
        }

        v11 = dispatch_semaphore_create(0);
        rtiClient3 = [(UIKBRTIPartner *)self rtiClient];
        currentSessionIdentifier2 = [(UIKBRTIPartner *)self currentSessionIdentifier];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __68__UIKBRTIPartner_synchronousForwardKeyCommandsBeforePublicToUIHost___block_invoke;
        v19[3] = &unk_1E7117E88;
        v21 = &v27;
        v22 = &v23;
        rtiClient = v11;
        v20 = rtiClient;
        [rtiClient3 remoteTextInputSessionWithID:currentSessionIdentifier2 performInputOperation:v6 withResponse:v19];

        v14 = dispatch_time(0, 2000000000);
        if (dispatch_semaphore_wait(rtiClient, v14))
        {
          v15 = _UIKeyboardLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *v18 = 0;
            _os_log_error_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Synchronous IPC call to forward key commands timed out", v18, 2u);
          }

          v5 = 1;
          goto LABEL_13;
        }
      }
    }

    goto LABEL_12;
  }

  v5 = 0;
LABEL_14:

  return v5 & 1;
}

intptr_t __68__UIKBRTIPartner_synchronousForwardKeyCommandsBeforePublicToUIHost___block_invoke(uint64_t a1, char a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2 & 1;
  *(*(*(a1 + 48) + 8) + 24) = (a2 & 0x10) != 0;
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)synchronousForwardKeyCommandsToUIHost:(id)host
{
  hostCopy = host;
  if (([hostCopy keyEventForwardedFromInputUIHost] & 1) == 0)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69C6F48]);
    [v6 setCustomInfo:hostCopy];
    [v6 setCustomInfoType:@"UIWebKitOperations"];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    rtiClient = [(UIKBRTIPartner *)self rtiClient];
    if ([rtiClient isEnvironmentEnabled])
    {
      currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
      if (currentSessionIdentifier)
      {
        rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
        v10 = objc_opt_respondsToSelector();

        if ((v10 & 1) == 0)
        {
LABEL_12:
          v5 = *(v22 + 24);
LABEL_13:
          _Block_object_dispose(&v21, 8);

          goto LABEL_14;
        }

        v11 = dispatch_semaphore_create(0);
        rtiClient3 = [(UIKBRTIPartner *)self rtiClient];
        currentSessionIdentifier2 = [(UIKBRTIPartner *)self currentSessionIdentifier];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __56__UIKBRTIPartner_synchronousForwardKeyCommandsToUIHost___block_invoke;
        v18[3] = &unk_1E7117EB0;
        v20 = &v21;
        rtiClient = v11;
        v19 = rtiClient;
        [rtiClient3 remoteTextInputSessionWithID:currentSessionIdentifier2 performInputOperation:v6 withResponse:v18];

        v14 = dispatch_time(0, 2000000000);
        if (dispatch_semaphore_wait(rtiClient, v14))
        {
          v15 = _UIKeyboardLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *v17 = 0;
            _os_log_error_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "synchronousForwardKeyCommandsToUIHost timed out", v17, 2u);
          }

          v5 = 1;
          goto LABEL_13;
        }
      }
    }

    goto LABEL_12;
  }

  v5 = 0;
LABEL_14:

  return v5 & 1;
}

- (BOOL)synchronousForwardKeyInputMethodCommandEventToUIHost:(id)host canHandleAppKeyCommand:(BOOL)command
{
  commandCopy = command;
  v30[3] = *MEMORY[0x1E69E9840];
  hostCopy = host;
  v7 = objc_alloc_init(MEMORY[0x1E69C6F48]);
  v29[0] = @"selector";
  v29[1] = @"keyEvent";
  v30[0] = @"_handleKeyInputMethodCommandForEvent:canHandleAppKeyCommand:";
  v30[1] = hostCopy;
  v29[2] = @"canHandleAppKeyCommand";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:commandCopy];
  v30[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];

  [v7 setCustomInfo:v9];
  [v7 setCustomInfoType:@"UIWebKitOperations"];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  if (![rtiClient isEnvironmentEnabled])
  {
    goto LABEL_9;
  }

  currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
  if (!currentSessionIdentifier)
  {
    goto LABEL_9;
  }

  rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
  v13 = objc_opt_respondsToSelector();

  if ((v13 & 1) == 0)
  {
LABEL_10:
    v19 = *(v26 + 24);
    goto LABEL_11;
  }

  v14 = dispatch_semaphore_create(0);
  rtiClient3 = [(UIKBRTIPartner *)self rtiClient];
  currentSessionIdentifier2 = [(UIKBRTIPartner *)self currentSessionIdentifier];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __94__UIKBRTIPartner_synchronousForwardKeyInputMethodCommandEventToUIHost_canHandleAppKeyCommand___block_invoke;
  v22[3] = &unk_1E7117EB0;
  v24 = &v25;
  rtiClient = v14;
  v23 = rtiClient;
  [rtiClient3 remoteTextInputSessionWithID:currentSessionIdentifier2 performInputOperation:v7 withResponse:v22];

  v17 = dispatch_time(0, 2000000000);
  if (!dispatch_semaphore_wait(rtiClient, v17))
  {

LABEL_9:
    goto LABEL_10;
  }

  v18 = _UIKeyboardLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    _os_log_error_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "synchronousForwardKeyCommandsToUIHost timed out", v21, 2u);
  }

  v19 = 1;
LABEL_11:
  _Block_object_dispose(&v25, 8);

  return v19 & 1;
}

- (void)forwardDictationEventToUIHost:(SEL)host withOptionalObject:(id)object
{
  v6 = MEMORY[0x1E69C6F48];
  objectCopy = object;
  v11 = objc_alloc_init(v6);
  [v11 setActionSelector:host];
  [v11 setInputModality:2];
  [v11 setCustomInfo:objectCopy];

  [v11 setCustomInfoType:@"UIDictationRemoteInputOperations"];
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [rtiClient2 remoteTextInputSessionWithID:currentSessionIdentifier performInputOperation:v11];
  }
}

- (void)forwardInputDestinationEventToUIHost:(SEL)host params:(id)params
{
  v6 = MEMORY[0x1E69C6F48];
  paramsCopy = params;
  v11 = objc_alloc_init(v6);
  [v11 setActionSelector:host];
  [v11 setCustomInfoType:@"UIUserInteractionRemoteInputOperations"];
  [v11 setCustomInfo:paramsCopy];

  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [rtiClient2 remoteTextInputSessionWithID:currentSessionIdentifier performInputOperation:v11];
  }
}

- (void)forwardSelectorToUIHost:(SEL)host completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_alloc_init(MEMORY[0x1E69C6F48]);
  [v7 setActionSelector:host];
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  if ([rtiClient isEnvironmentEnabled] && (-[UIKBRTIPartner currentSessionIdentifier](self, "currentSessionIdentifier"), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      rtiClient3 = [(UIKBRTIPartner *)self rtiClient];
      currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __60__UIKBRTIPartner_forwardSelectorToUIHost_completionHandler___block_invoke;
      v15[3] = &unk_1E7118100;
      v16 = handlerCopy;
      [rtiClient3 remoteTextInputSessionWithID:currentSessionIdentifier performInputOperation:v7 withResponse:v15];

      goto LABEL_8;
    }
  }

  else
  {
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

LABEL_8:
}

uint64_t __60__UIKBRTIPartner_forwardSelectorToUIHost_completionHandler___block_invoke(uint64_t a1, unint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, (a2 >> 2) & 1);
  }

  return result;
}

- (void)forwardKeyboardCameraEvent_startCameraInput:(id)input
{
  v4 = MEMORY[0x1E69C6F48];
  inputCopy = input;
  v9 = objc_alloc_init(v4);
  [v9 setActionSelector:sel_handleRemoteKeyboardCameraEvent_startCameraInput_];
  [v9 setInputModality:1];
  [v9 setCustomInfo:inputCopy];

  [v9 setCustomInfoType:@"UIKeyboardCameraRemoteInputOperations"];
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  LOBYTE(inputCopy) = objc_opt_respondsToSelector();

  if (inputCopy)
  {
    rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [rtiClient2 remoteTextInputSessionWithID:currentSessionIdentifier performInputOperation:v9];
  }
}

- (void)forwardScrollEventToUIHost:(SEL)host contentTransform:(CGAffineTransform *)transform environmentTransform:(CGAffineTransform *)environmentTransform
{
  if (sel_textSelectionWillScroll == host)
  {
    v9 = 1;
  }

  else if (sel_textSelectionScrolling == host)
  {
    v9 = 2;
  }

  else if (sel_textSelectionDidScroll == host)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v10 = *&transform->c;
    v18[0] = *&transform->a;
    v18[1] = v10;
    v18[2] = *&transform->tx;
    v11 = *&environmentTransform->c;
    v17[0] = *&environmentTransform->a;
    v17[1] = v11;
    v17[2] = *&environmentTransform->tx;
    v12 = [MEMORY[0x1E69C6F48] scrollingInputOperationWithType:v9 contentTransform:v18 environmentTransform:v17];
    rtiClient = [(UIKBRTIPartner *)self rtiClient];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
      currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
      [rtiClient2 remoteTextInputSessionWithID:currentSessionIdentifier performInputOperation:v12];
    }
  }

  else
  {

    [(UIKBRTIPartner *)self forwardInputDestinationEventToUIHost:host];
  }
}

- (void)forwardEventCallbackToRemoteSource_didChooseSupplementalItem:(id)item toReplaceText:(id)text
{
  v19[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  textCopy = text;
  if (itemCopy)
  {
    v8 = itemCopy[1];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (textCopy)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69C6F48]);
    [v10 setCustomInfoType:@"UISupplementalLexiconInputOperations"];
    v18[0] = @"selector";
    v11 = NSStringFromSelector(sel_handleEventCallbackFromRemoteDestination_didChooseSupplementalItem_toReplaceText_);
    v19[0] = v11;
    v18[1] = @"supplementalItem";
    null = v9;
    if (!v9)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v18[2] = @"textToReplace";
    v19[1] = null;
    v19[2] = textCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
    [v10 setCustomInfo:v13];

    if (!v9)
    {
    }

    rtiClient = [(UIKBRTIPartner *)self rtiClient];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
      currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
      [rtiClient2 remoteTextInputSessionWithID:currentSessionIdentifier performInputOperation:v10];
    }
  }
}

- (void)forwardEventToRemoteSource_canSuggestSupplementalItemsForCurrentSelection:(BOOL)selection
{
  selectionCopy = selection;
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69C6F48]);
  [v5 setCustomInfoType:@"UISupplementalLexiconInputOperations"];
  v12[0] = @"selector";
  v6 = NSStringFromSelector(sel_handleEventFromRemoteDestination_canSuggestSupplementalItemsForCurrentSelection_);
  v12[1] = @"canSuggest";
  v13[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:selectionCopy];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v5 setCustomInfo:v8];

  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [rtiClient2 remoteTextInputSessionWithID:currentSessionIdentifier performInputOperation:v5];
  }
}

- (id)textOperation_insertSupplementalCandidate:(id)candidate textToCommit:(id)commit
{
  v4 = 0;
  v16[3] = *MEMORY[0x1E69E9840];
  if (candidate && commit)
  {
    v7 = MEMORY[0x1E69C6FA8];
    commitCopy = commit;
    candidateCopy = candidate;
    v10 = [v7 alloc];
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    v4 = [v10 initWithTargetSessionUUID:currentSessionIdentifier];

    [v4 setCustomInfoType:@"UISupplementalLexiconOperations"];
    v15[0] = @"selector";
    v12 = NSStringFromSelector(sel_handleEventFromRemoteSource_insertSupplementalCandidate_textToCommit_);
    v16[0] = v12;
    v16[1] = candidateCopy;
    v15[1] = @"candidate";
    v15[2] = @"textToCommit";
    v16[2] = commitCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

    [v4 setCustomInfo:v13];
  }

  return v4;
}

- (id)textOperation_chooseSupplementalItem:(id)item toReplaceText:(id)text
{
  v29 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  textCopy = text;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(itemCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = itemCopy;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(*(&v22 + 1) + 8 * i) + 8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 addObject:{v14, v22}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v11);
  }

  v15 = [v8 count];
  v16 = 0;
  if (textCopy && v15)
  {
    v17 = objc_alloc(MEMORY[0x1E69C6FA8]);
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    v16 = [v17 initWithTargetSessionUUID:currentSessionIdentifier];

    [v16 setCustomInfoType:@"UISupplementalLexiconOperations"];
    v26[0] = @"selector";
    v19 = NSStringFromSelector(sel_handleEventFromRemoteSource_chooseSupplementalItem_toReplaceText_);
    v27[0] = v19;
    v27[1] = v8;
    v26[1] = @"supplementalItems";
    v26[2] = @"textToReplace";
    v27[2] = textCopy;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
    [v16 setCustomInfo:v20];
  }

  return v16;
}

- (id)textOperation_cancelChooseSupplementalItemToInsert
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69C6FA8]);
  currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
  v5 = [v3 initWithTargetSessionUUID:currentSessionIdentifier];

  [v5 setCustomInfoType:@"UISupplementalLexiconOperations"];
  v9 = @"selector";
  v6 = NSStringFromSelector(sel_handleEventFromRemoteSource_cancelChooseSupplementalItemToInsert);
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 setCustomInfo:v7];

  return v5;
}

- (id)textOperation_insertionPointEnteredText:(id)text withSupplementalCandidate:(id)candidate
{
  v15[3] = *MEMORY[0x1E69E9840];
  textCopy = text;
  candidateCopy = candidate;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = objc_alloc(MEMORY[0x1E69C6FA8]);
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    v10 = [v8 initWithTargetSessionUUID:currentSessionIdentifier];

    [v10 setCustomInfoType:@"UISupplementalLexiconOperations"];
    v14[0] = @"selector";
    v11 = NSStringFromSelector(sel_handleEventFromRemoteSource_insertionPointEnteredText_withSupplementalCandidate_);
    v15[0] = v11;
    v15[1] = textCopy;
    v14[1] = @"text";
    v14[2] = @"candidate";
    v15[2] = candidateCopy;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
    [v10 setCustomInfo:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)textOperation_insertionPointExitedTextWithSupplementalItems
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69C6FA8]);
  currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
  v5 = [v3 initWithTargetSessionUUID:currentSessionIdentifier];

  [v5 setCustomInfoType:@"UISupplementalLexiconOperations"];
  v9 = @"selector";
  v6 = NSStringFromSelector(sel_handleEventFromRemoteSource_insertionPointExitedTextWithSupplementalItems);
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 setCustomInfo:v7];

  return v5;
}

- (id)textOperation_insertAutofillContent:(id)content
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69C6FA8];
  contentCopy = content;
  v6 = [v4 alloc];
  currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
  v8 = [v6 initWithTargetSessionUUID:currentSessionIdentifier];

  [v8 setCustomInfoType:@"UIKBRTICustomInfoTypeAutofill"];
  v13[0] = @"selector";
  v9 = NSStringFromSelector(sel_handleEventFromRemoteSource_insertAutofillContent_);
  v13[1] = @"autofillContent";
  v14[0] = v9;
  v10 = [contentCopy copy];

  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v8 setCustomInfo:v11];

  return v8;
}

- (id)payloadDelegate
{
  partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
  inputSystemSourceSession = [partnerDelegate inputSystemSourceSession];

  sessionIndependentPayloadDelegate = [inputSystemSourceSession sessionIndependentPayloadDelegate];

  return sessionIndependentPayloadDelegate;
}

- (void)forwardAutofillPayload:(id)payload toPayloadDelegate:(id)delegate
{
  payloadCopy = payload;
  delegateCopy = delegate;
  v7 = [payloadCopy count];
  if (delegateCopy && v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69C6F68]);
    v9 = [(UIKBRTIPartner *)self textOperation_insertAutofillContent:payloadCopy];
    [v8 setTextOperations:v9];

    [delegateCopy handleTextActionPayload:v8];
  }
}

- (void)forwardKeyboardOperation:(SEL)operation object:(id)object
{
  objectCopy = object;
  partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
  inputSystemSourceSession = [partnerDelegate inputSystemSourceSession];

  if (inputSystemSourceSession)
  {
    textOperations = [inputSystemSourceSession textOperations];
    [textOperations setEditingActionSelector:operation];
    [textOperations setCustomInfoType:@"UIKBRTICustomInfoTypeKeyboardOperations"];
    [textOperations setCustomInfo:objectCopy];
    [inputSystemSourceSession flushOperations];
  }
}

- (void)forwardTypologyLogURL:(id)l
{
  lCopy = l;
  partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
  inputSystemSourceSession = [partnerDelegate inputSystemSourceSession];

  if (inputSystemSourceSession)
  {
    textOperations = [inputSystemSourceSession textOperations];
    [textOperations setCustomInfoType:@"UIKBRTICustomInfoTypeTypologyLogOperations"];
    [textOperations setCustomInfo:lCopy];
    [inputSystemSourceSession flushOperations];
  }
}

- (void)forwardGrammarCorrectionEntries:(id)entries
{
  v4 = MEMORY[0x1E69C6F48];
  entriesCopy = entries;
  v9 = objc_alloc_init(v4);
  [v9 setActionSelector:sel_handleGrammarCorrectionEntries_];
  [v9 setCustomInfo:entriesCopy];

  [v9 setCustomInfoType:@"UIKBRTICustomInfoTypeGrammarCorrectionOperations"];
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  LOBYTE(entriesCopy) = objc_opt_respondsToSelector();

  if (entriesCopy)
  {
    rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [rtiClient2 remoteTextInputSessionWithID:currentSessionIdentifier performInputOperation:v9];
  }
}

- (void)textSuggestionsChanged:(id)changed
{
  changedCopy = changed;
  _remoteInputSystemRequiresTextSuggestionUpdates = [(UIKBRTIPartner *)self _remoteInputSystemRequiresTextSuggestionUpdates];
  v5 = changedCopy;
  if (_remoteInputSystemRequiresTextSuggestionUpdates)
  {
    if (changedCopy)
    {
      v6 = [UITextSuggestion encodeTextSuggestions:changedCopy];
    }

    else
    {
      v6 = 0;
    }

    rtiClient = [(UIKBRTIPartner *)self rtiClient];
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [rtiClient remoteTextInputSessionWithID:currentSessionIdentifier textSuggestionsChanged:v6];

    v5 = changedCopy;
  }
}

- (void)updateTextSuggestionsIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];

  v5 = currentSessionIdentifier;
  if (currentSessionIdentifier == necessaryCopy)
  {
    textSuggestions = [(UIKBRTIPartner *)self textSuggestions];
    currentSessionIdentifier2 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    v8 = [textSuggestions objectForKey:currentSessionIdentifier2];

    if (!v8)
    {
      return;
    }

    textSuggestions2 = [(UIKBRTIPartner *)self textSuggestions];
    currentSessionIdentifier3 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    v11 = [textSuggestions2 objectForKey:currentSessionIdentifier3];
    [(UIKBRTIPartner *)self textSuggestionsChanged:v11];

    currentSessionIdentifier4 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [(UIKBRTIPartner *)self removeTextSuggestionsForSessionWithID:currentSessionIdentifier4];
    v5 = currentSessionIdentifier4;
  }
}

- (void)addTextSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];

  if (currentSessionIdentifier)
  {
    textSuggestions = [(UIKBRTIPartner *)self textSuggestions];

    if (!textSuggestions)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(UIKBRTIPartner *)self setTextSuggestions:v6];
    }

    textSuggestions2 = [(UIKBRTIPartner *)self textSuggestions];
    currentSessionIdentifier2 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [textSuggestions2 setObject:suggestionsCopy forKey:currentSessionIdentifier2];
  }
}

- (void)removeTextSuggestionsForSessionWithID:(id)d
{
  dCopy = d;
  textSuggestions = [(UIKBRTIPartner *)self textSuggestions];
  v5 = [textSuggestions objectForKey:dCopy];

  if (v5)
  {
    textSuggestions2 = [(UIKBRTIPartner *)self textSuggestions];
    [textSuggestions2 removeObjectForKey:dCopy];
  }
}

- (void)_queueSupplementalLexiconOperation:(unint64_t)operation lexicon:(id)lexicon
{
  lexiconCopy = lexicon;
  queuedSupplementalLexiconOperations = [(UIKBRTIPartner *)self queuedSupplementalLexiconOperations];

  if (!queuedSupplementalLexiconOperations)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(UIKBRTIPartner *)self setQueuedSupplementalLexiconOperations:v7];
  }

  v8 = lexiconCopy;
  if (lexiconCopy)
  {
    if (operation == 1)
    {
      v9 = -[_UISupplementalLexiconOperation initRemoveOperationWithLexiconIdentifier:]([_UISupplementalLexiconOperation alloc], "initRemoveOperationWithLexiconIdentifier:", [lexiconCopy[1] identifier]);
    }

    else
    {
      if (operation)
      {
        goto LABEL_10;
      }

      v9 = [[_UISupplementalLexiconOperation alloc] initAddOperationWithLexicon:lexiconCopy];
    }

    v10 = v9;
    v8 = lexiconCopy;
    if (v10)
    {
      queuedSupplementalLexiconOperations2 = [(UIKBRTIPartner *)self queuedSupplementalLexiconOperations];
      [queuedSupplementalLexiconOperations2 addObject:v10];

      v8 = lexiconCopy;
    }
  }

LABEL_10:
}

- (void)didAddSupplementalLexicon:(id)lexicon
{
  lexiconCopy = lexicon;
  currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];

  if (currentSessionIdentifier)
  {
    [(UIKBRTIPartner *)self _didAddSupplementalLexicon:lexiconCopy];
  }

  else
  {
    [(UIKBRTIPartner *)self _queueSupplementalLexiconOperation:0 lexicon:lexiconCopy];
  }
}

- (void)didRemoveSupplementalLexicon:(id)lexicon
{
  lexiconCopy = lexicon;
  currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];

  if (currentSessionIdentifier)
  {
    v5 = lexiconCopy[1];

    identifier = [v5 identifier];

    [(UIKBRTIPartner *)self _didRemoveSupplementalLexiconWithIdentifier:identifier];
  }

  else
  {
    [(UIKBRTIPartner *)self _queueSupplementalLexiconOperation:1 lexicon:lexiconCopy];
  }
}

- (void)_didAddSupplementalLexicon:(id)lexicon
{
  v4 = MEMORY[0x1E69C6F98];
  v5 = *(lexicon + 1);
  v8 = [[v4 alloc] initWithTISupplementalLexicon:v5 iconProvider:&__block_literal_global_309_1];

  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
  [rtiClient remoteTextInputSessionWithID:currentSessionIdentifier didAddRTISupplementalLexicon:v8];
}

id __45__UIKBRTIPartner__didAddSupplementalLexicon___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = supplementalItem(a2);
  v3 = v2;
  if (v2 && ([v2 icon], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = MEMORY[0x1E696ACC8];
    v6 = [v3 icon];
    v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x1E69C6F90]);
      v9 = [v8 initWithDataType:*MEMORY[0x1E69C6FE0] data:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_didRemoveSupplementalLexiconWithIdentifier:(unint64_t)identifier
{
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
  [rtiClient remoteTextInputSessionWithID:currentSessionIdentifier didRemoveRTISupplementalLexiconWithIdentifier:identifier];
}

- (void)_updateRTIAllowedAndNotify:(BOOL)notify withReason:(id)reason
{
  notifyCopy = notify;
  v44 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  mainScreen = [objc_opt_self() mainScreen];
  currentMode = [mainScreen currentMode];
  [currentMode size];
  v10 = v9;
  v12 = v11;

  v13 = v12 > 0.0 && v10 > 0.0;
  v14 = +[UIWindow _applicationKeyWindow];
  v15 = v14;
  if (v14)
  {
    existingContainerWindow = v14;
  }

  else
  {
    v17 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    existingContainerWindow = [v17 existingContainerWindow];
  }

  _isHostedInAnotherProcess = [existingContainerWindow _isHostedInAnotherProcess];
  if (_isHostedInAnotherProcess)
  {
    viewServiceStateIsActiveForRTI = [(UIKBRTIPartner *)self viewServiceStateIsActiveForRTI];
  }

  else
  {
    viewServiceStateIsActiveForRTI = [(UIKBRTIPartner *)self applicationStateIsActiveForRTI];
  }

  v20 = v13 & viewServiceStateIsActiveForRTI;
  if (notifyCopy)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  if (![rtiClient isEnvironmentEnabled] || (v20 & 1) != 0)
  {
  }

  else
  {

    if (existingContainerWindow)
    {
      if (_isHostedInAnotherProcess)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      [UIDictationController inputSystemSessionWillEndForReason:v23];
    }
  }

  v24 = v21 | v20;
  v25 = +[UIKeyboard usingEndInputSessionCompletion];
  rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
  v27 = rtiClient2;
  if (v25)
  {

    if (v27)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v32 = _UIKeyboardExtendedLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = "Disabled";
          id = self->_id;
          *buf = 136315650;
          if (v20)
          {
            v33 = "Enabled";
          }

          v39 = v33;
          v40 = 2112;
          v41 = reasonCopy;
          v42 = 2048;
          v43 = id;
          _os_log_impl(&dword_188A29000, v32, OS_LOG_TYPE_DEFAULT, "RTIPartner setEnvironmentOptions:%s withReason:%@ (id=%ld)", buf, 0x20u);
        }
      }

      v28 = _UIKeyboardInputSessionChangeLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_188A29000, v28, OS_LOG_TYPE_DEBUG, "Waiting on response from -setEnvironmentOptions:withReason:completion:", buf, 2u);
      }

      if (qword_1ED49F518 != -1)
      {
        dispatch_once(&qword_1ED49F518, &__block_literal_global_318);
      }

      partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
      taskQueue = [partnerDelegate taskQueue];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __56__UIKBRTIPartner__updateRTIAllowedAndNotify_withReason___block_invoke_3;
      v35[3] = &unk_1E70FD8B0;
      v35[4] = self;
      v37 = v24;
      v36 = reasonCopy;
      [taskQueue performSingleTask:v35 breadcrumb:qword_1ED49F510];

      v31 = _UIKeyboardInputSessionChangeLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_188A29000, v31, OS_LOG_TYPE_DEBUG, "Done blocking on -setEnvironmentOptions:withReason:completion:", buf, 2u);
      }
    }
  }

  else
  {
    [rtiClient2 setEnvironmentOptions:v24 withReason:reasonCopy];
  }
}

void __56__UIKBRTIPartner__updateRTIAllowedAndNotify_withReason___block_invoke()
{
  v0 = [&__block_literal_global_320_1 copy];
  v1 = qword_1ED49F510;
  qword_1ED49F510 = v0;
}

void __56__UIKBRTIPartner__updateRTIAllowedAndNotify_withReason___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [UIKeyboardTaskSubqueue subqueueWithExecutionContext:a2];
  [*(a1 + 32) setKeyboardTaskSubqueue:v3];

  v4 = [*(a1 + 32) rtiClient];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__UIKBRTIPartner__updateRTIAllowedAndNotify_withReason___block_invoke_4;
  v7[3] = &unk_1E70F3590;
  v7[4] = *(a1 + 32);
  [v4 setEnvironmentOptions:v5 withReason:v6 completion:v7];
}

uint64_t __56__UIKBRTIPartner__updateRTIAllowedAndNotify_withReason___block_invoke_4(uint64_t a1)
{
  dispatch_assert_queue_not_V2(MEMORY[0x1E69E96A0]);
  v2 = _UIKeyboardInputSessionChangeLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEBUG, "Got response from -setEnvironmentOptions:withReason:completion:", v5, 2u);
  }

  v3 = [*(a1 + 32) keyboardTaskSubqueue];
  [v3 returnExecutionToParentQueue];

  return [*(a1 + 32) setKeyboardTaskSubqueue:0];
}

- (id)_defaultRTIMachNames
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69C6FD0];
  v5[0] = *MEMORY[0x1E69C6FD8];
  v5[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

- (id)_newInputSystemUIClient
{
  v2 = objc_alloc(MEMORY[0x1E69C6F70]);
  v3 = [v2 initWithUIHostMachName:*MEMORY[0x1E69C6FC8]];
  v4 = _UIKeyboardLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "creating new systemUI connection", v6, 2u);
  }

  return v3;
}

- (void)_didCreateRTIClient:(id)client
{
  [client setDelegate:self];

  [(UIKBRTIPartner *)self _updateRTIAllowedAndNotify:0 withReason:@"Synchronize with initial Application state"];
}

- (void)ensureRTIConnection
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = CatalystTextInputLog_UIKit();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    delegate = [(UIKBRTIPartner *)self delegate];
    rtiClient = [(UIKBRTIPartner *)self rtiClient];
    v9 = 138543618;
    v10 = delegate;
    v11 = 2114;
    v12 = rtiClient;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "RTI XPCEndpoint available: self.delegate: %{public}@, self.rtiClient: %{public}@", &v9, 0x16u);
  }

  rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
  if (!rtiClient2)
  {
    delegate2 = [(UIKBRTIPartner *)self delegate];

    if (!delegate2)
    {
      return;
    }

    v6 = CatalystTextInputLog_UIKit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "RTIClient not around when we have a delegate! Attempting to recover...", &v9, 2u);
    }

    rtiClient2 = [(UIKBRTIPartner *)self partnerDelegate];
    [rtiClient2 resetInputDelegate];
  }
}

- (void)beginAllowingRemoteTextInput:(id)input
{
  inputCopy = input;
  [(UIKBRTIPartner *)self _createRTIClientIfNecessary];
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  [rtiClient beginAllowingRemoteTextInput:inputCopy];

  [(UIKBRTIPartner *)self _updateGeometryObserverIfNecessary];
}

- (void)endAllowingRemoteTextInput:(id)input waitForReply:(BOOL)reply
{
  inputCopy = input;
  rtiClient = [(UIKBRTIPartner *)self rtiClient];

  if (rtiClient)
  {
    rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
    [rtiClient2 endAllowingRemoteTextInput:inputCopy];

    [(UIKBRTIPartner *)self _updateGeometryObserverIfNecessary];
  }

  [(UIKBRTIPartner *)self finishCompletionHandlersIfNeeded];
}

- (void)restartCurrentSession
{
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  if (rtiClient)
  {
    v4 = rtiClient;
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];

    if (currentSessionIdentifier)
    {
      currentSessionIdentifier2 = [(UIKBRTIPartner *)self currentSessionIdentifier];
      [(UIKBRTIPartner *)self beginAllowingRemoteTextInput:currentSessionIdentifier2];

      [(UIKBRTIPartner *)self documentStateChanged];
    }
  }
}

- (void)updateStateWithCompletion:(id)completion updateTraits:(BOOL)traits
{
  traitsCopy = traits;
  completionCopy = completion;
  if ([(UIKBRTIPartner *)self _updateRTITraitsIfNecessary]&& traitsCopy)
  {
    rtiClient = [(UIKBRTIPartner *)self rtiClient];
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    rtiDocumentTraits = [(UIKBRTIPartner *)self rtiDocumentTraits];
    [rtiClient remoteTextInputSessionWithID:currentSessionIdentifier documentTraitsDidChange:rtiDocumentTraits];
  }

  [(UIKBRTIPartner *)self _updateRTIStateWithCompletion:completionCopy];
}

- (BOOL)documentTraitsDisableAutomaticKeyboardUI
{
  rtiDocumentTraits = [(UIKBRTIPartner *)self rtiDocumentTraits];
  disableAutomaticKeyboardUI = [rtiDocumentTraits disableAutomaticKeyboardUI];

  return disableAutomaticKeyboardUI;
}

- (id)inputDelegateView
{
  partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
  inputDelegate = [partnerDelegate inputDelegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textInputView = inputDelegate;
  }

  else
  {
    textInputView = [inputDelegate textInputView];
  }

  v5 = textInputView;

  return v5;
}

- (void)_updateRTIStateWithCompletion:(id)completion
{
  completionCopy = completion;
  rtiClient = [(UIKBRTIPartner *)self rtiClient];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    rtiClient2 = [(UIKBRTIPartner *)self rtiClient];
    serviceOptions = [rtiClient2 serviceOptions];
  }

  else
  {
    serviceOptions = 0;
  }

  rtiClient3 = [(UIKBRTIPartner *)self rtiClient];
  defaultDocumentRequest = [rtiClient3 defaultDocumentRequest];

  if (!defaultDocumentRequest)
  {
    defaultDocumentRequest = objc_alloc_init(MEMORY[0x1E69C6F30]);
    [defaultDocumentRequest setTextGranularity:2];
    [defaultDocumentRequest setRectGranularity:1];
    if (qword_1ED49F578 != -1)
    {
      dispatch_once(&qword_1ED49F578, &__block_literal_global_1191_0);
    }

    [defaultDocumentRequest setSurroundingGranularityCount:qword_1ED49F570];
    if (qword_1ED49F588 != -1)
    {
      dispatch_once(&qword_1ED49F588, &__block_literal_global_1207);
    }

    [defaultDocumentRequest setRectCountBefore:qword_1ED49F580];
    if (qword_1ED49F598 != -1)
    {
      dispatch_once(&qword_1ED49F598, &__block_literal_global_1217);
    }

    [defaultDocumentRequest setRectCountAfter:qword_1ED49F590];
    [defaultDocumentRequest setFlags:49];
    if (+[UIKeyboard inputUIOOP])
    {
      [defaultDocumentRequest setFlags:{objc_msgSend(defaultDocumentRequest, "flags") | 4}];
    }
  }

  if (([serviceOptions displayOptions] & 2) != 0)
  {
    [defaultDocumentRequest setFlags:{objc_msgSend(defaultDocumentRequest, "flags") | 2}];
  }

  if (([serviceOptions displayOptions] & 4) != 0)
  {
    [defaultDocumentRequest setFlags:{objc_msgSend(defaultDocumentRequest, "flags") | 4}];
  }

  partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
  delegateAsResponder = [partnerDelegate delegateAsResponder];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__UIKBRTIPartner__updateRTIStateWithCompletion___block_invoke;
  v15[3] = &unk_1E7117EF8;
  v16 = delegateAsResponder;
  selfCopy = self;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = delegateAsResponder;
  [(UIKBRTIPartner *)self _queryDocumentRequest:defaultDocumentRequest completion:v15];
}

void __48__UIKBRTIPartner__updateRTIStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) partnerDelegate];
  v9 = [v8 delegateAsResponder];

  if (v7 == v9)
  {
    [*(a1 + 40) setRtiDocumentState:v5];
    [*(a1 + 40) setExtentRangeForDocumentState:v6];
    v11 = [v5 documentState];
    if (objc_opt_respondsToSelector())
    {
      v12 = [v5 attributedDocumentState];
    }

    else
    {
      v12 = 0;
    }

    v13 = [v11 contextBeforeInput];
    [v13 hasSuffix:@"\n"];

    v14 = [*(a1 + 40) rtiDocumentState];
    [v14 setDocumentState:v11];

    v15 = [*(a1 + 40) rtiDocumentState];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [*(a1 + 40) rtiDocumentState];
      [v17 setAttributedDocumentState:v12];
    }

    v18 = [*(a1 + 40) partnerDelegate];
    v19 = [v18 canSuggestSupplementalItemsForCurrentSelection];
    v20 = [*(a1 + 40) rtiDocumentState];
    [v20 setCanSuggestSupplementalItemsForCurrentSelection:v19];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = _UIKeyboardInputSessionChangeLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v21 = 0;
      _os_log_debug_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEBUG, "Got document state but inputDelegate changed in meantime (not an error)", v21, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)_addCharacterRectsToDocumentState:(id)state textRange:(id)range offset:(int64_t)offset
{
  stateCopy = state;
  rangeCopy = range;
  inputDelegate = [(UIKBRTIPartner *)self inputDelegate];
  v10 = [inputDelegate selectionRectsForRange:rangeCopy];

  lastObject = [v10 lastObject];
  isVertical = [lastObject isVertical];

  if (rangeCopy)
  {
    if ([rangeCopy isEmpty])
    {
      if (![rangeCopy isEmpty])
      {
        goto LABEL_15;
      }

      inputDelegate2 = [(UIKBRTIPartner *)self inputDelegate];
      textInputView = [inputDelegate2 textInputView];

      inputDelegate3 = [(UIKBRTIPartner *)self inputDelegate];
      start = [rangeCopy start];
      [inputDelegate3 caretRectForPosition:start];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      window = [textInputView window];
      [textInputView convertRect:window toView:{v17, v19, v21, v23}];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      [stateCopy addTextRect:offset forCharacterRange:0 granularity:0 isVertical:{isVertical, v26, v28, v30, v32}];
    }

    else
    {
      partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
      textInputView = [partnerDelegate inputDelegate];

      v13TextInputView = [textInputView textInputView];
      inputDelegate4 = [(UIKBRTIPartner *)self inputDelegate];
      start2 = [rangeCopy start];
      v37 = [rangeCopy end];
      v38 = [inputDelegate4 offsetFromPosition:start2 toPosition:v37];

      start3 = [rangeCopy start];
      if (v38 >= 1)
      {
        v62 = v10;
        v40 = 0;
        while (1)
        {
          v41 = [textInputView positionFromPosition:start3 offset:1];

          if (!v41)
          {
            break;
          }

          v42 = [textInputView textRangeFromPosition:start3 toPosition:v41];
          if (!v42)
          {
            break;
          }

          v43 = v42;
          inputDelegate5 = [(UIKBRTIPartner *)self inputDelegate];
          [inputDelegate5 firstRectForRange:v43];
          v46 = v45;
          v48 = v47;
          v50 = v49;
          v52 = v51;

          window2 = [v13TextInputView window];
          [v13TextInputView convertRect:window2 toView:{v46, v48, v50, v52}];
          v55 = v54;
          v57 = v56;
          v59 = v58;
          v61 = v60;

          [stateCopy addTextRect:offset forCharacterRange:1 granularity:0 isVertical:{isVertical, v55, v57, v59, v61}];
          v40 = v41;

          ++offset;
          start3 = v40;
          if (!--v38)
          {
            goto LABEL_12;
          }
        }

        v40 = start3;
LABEL_12:

        start3 = v40;
        v10 = v62;
      }
    }
  }

LABEL_15:
}

- (void)_addTextCheckingAnnotatedStringToDocumentState:(id)state
{
  stateCopy = state;
  [stateCopy setTextCheckingAnnotatedString:0];
  inputDelegate = [(UIKBRTIPartner *)self inputDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
    inputDelegate2 = [partnerDelegate inputDelegate];

    markedTextRange = [inputDelegate2 markedTextRange];
    v9 = markedTextRange;
    if (markedTextRange)
    {
      selectedTextRange = markedTextRange;
    }

    else
    {
      selectedTextRange = [inputDelegate2 selectedTextRange];
    }

    v11 = selectedTextRange;

    documentState = [stateCopy documentState];
    contextBeforeInput = [documentState contextBeforeInput];

    documentState2 = [stateCopy documentState];
    contextAfterInput = [documentState2 contextAfterInput];

    if (v11)
    {
      start = [v11 start];
      v17 = [inputDelegate2 positionFromPosition:start offset:{-objc_msgSend(contextBeforeInput, "length")}];

      v18 = [v11 end];
      v19 = [inputDelegate2 positionFromPosition:v18 offset:{objc_msgSend(contextAfterInput, "length")}];

      if (v17)
      {
        if (v19)
        {
          v20 = [inputDelegate2 textRangeFromPosition:v17 toPosition:v19];
          if (v20)
          {
            v21 = v20;
            inputDelegate3 = [(UIKBRTIPartner *)self inputDelegate];
            v23 = [inputDelegate3 annotatedSubstringForRange:v21];
            [stateCopy setTextCheckingAnnotatedString:v23];
          }
        }
      }
    }
  }
}

- (void)applyRemoteDocumentTraitsIfNecessary:(id)necessary force:(BOOL)force
{
  forceCopy = force;
  necessaryCopy = necessary;
  if (necessaryCopy)
  {
    inputSystemSourceSession = necessaryCopy;
  }

  else
  {
    partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
    inputSystemSourceSession = [partnerDelegate inputSystemSourceSession];

    if (!inputSystemSourceSession)
    {
      return;
    }
  }

  v197 = forceCopy;
  partnerDelegate2 = [(UIKBRTIPartner *)self partnerDelegate];
  keyboardState = [partnerDelegate2 keyboardState];

  partnerDelegate3 = [(UIKBRTIPartner *)self partnerDelegate];
  textInputTraits = [partnerDelegate3 textInputTraits];

  v200 = textInputTraits;
  v13 = [textInputTraits copy];
  remoteDocumentTraits = self->_remoteDocumentTraits;
  documentTraits = [inputSystemSourceSession documentTraits];

  if (remoteDocumentTraits == documentTraits)
  {
    v191 = 1;
    v198 = 1;
    v199 = 0;
  }

  else
  {
    v16 = keyboardState;
    documentTraits2 = [inputSystemSourceSession documentTraits];
    inputViewInfo = [documentTraits2 inputViewInfo];
    inputViewInfo2 = [(RTIDocumentTraits *)self->_remoteDocumentTraits inputViewInfo];
    if (inputViewInfo == inputViewInfo2)
    {
      v199 = 0;
    }

    else
    {
      documentTraits3 = [inputSystemSourceSession documentTraits];
      inputViewInfo3 = [documentTraits3 inputViewInfo];
      inputViewInfo4 = [(RTIDocumentTraits *)self->_remoteDocumentTraits inputViewInfo];
      v199 = [inputViewInfo3 isEqual:inputViewInfo4] ^ 1;
    }

    documentTraits4 = [inputSystemSourceSession documentTraits];
    textInputModeData = [documentTraits4 textInputModeData];
    if (textInputModeData)
    {
      textInputModeData2 = [(RTIDocumentTraits *)self->_remoteDocumentTraits textInputModeData];
      if (textInputModeData2)
      {
        documentTraits5 = [inputSystemSourceSession documentTraits];
        textInputModeData3 = [documentTraits5 textInputModeData];
        textInputModeData4 = [(RTIDocumentTraits *)self->_remoteDocumentTraits textInputModeData];
        v199 |= [textInputModeData3 isEqualToData:textInputModeData4] ^ 1;
      }
    }

    autofillMode = [(RTIDocumentTraits *)self->_remoteDocumentTraits autofillMode];
    documentTraits6 = [inputSystemSourceSession documentTraits];
    v191 = autofillMode == [documentTraits6 autofillMode];

    v31 = self->_remoteDocumentTraits;
    documentTraits7 = [inputSystemSourceSession documentTraits];
    [(RTIDocumentTraits *)v31 isEqual:documentTraits7];

    userInfo = [(RTIDocumentTraits *)self->_remoteDocumentTraits userInfo];
    v34 = [userInfo objectForKeyedSubscript:0x1EFB53430];
    documentTraits8 = [inputSystemSourceSession documentTraits];
    userInfo2 = [documentTraits8 userInfo];
    v37 = [userInfo2 objectForKeyedSubscript:0x1EFB53430];
    v198 = [v34 isEqual:v37];

    userInfo3 = [(RTIDocumentTraits *)self->_remoteDocumentTraits userInfo];
    v39 = [userInfo3 objectForKeyedSubscript:0x1EFB53430];
    if (!v39)
    {
      documentTraits9 = [inputSystemSourceSession documentTraits];
      userInfo4 = [documentTraits9 userInfo];
      v42 = [userInfo4 objectForKeyedSubscript:0x1EFB53430];

      v43 = v198;
      if (!v42)
      {
        v43 = 1;
      }

      v198 = v43;
    }

    documentTraits10 = [inputSystemSourceSession documentTraits];
    v45 = self->_remoteDocumentTraits;
    self->_remoteDocumentTraits = documentTraits10;

    keyboardState = v16;
  }

  keyboardAppearance = [v200 keyboardAppearance];
  keyboardType = [v200 keyboardType];
  returnKeyType = [v200 returnKeyType];
  documentTraits11 = [inputSystemSourceSession documentTraits];

  if (documentTraits11)
  {
    documentTraits12 = [inputSystemSourceSession documentTraits];
    textInputTraits2 = [documentTraits12 textInputTraits];
    [v13 overlayWithTITextInputTraits:textInputTraits2];

    documentTraits13 = [inputSystemSourceSession documentTraits];
    pINEntrySeparatorIndexes = [documentTraits13 PINEntrySeparatorIndexes];
    [v13 setPINEntrySeparatorIndexes:pINEntrySeparatorIndexes];

    documentTraits14 = [inputSystemSourceSession documentTraits];
    validTextRange = [documentTraits14 validTextRange];
    [v13 setValidTextRange:{validTextRange, v54}];

    documentTraits15 = [inputSystemSourceSession documentTraits];
    recipientId = [documentTraits15 recipientId];
    [v13 setAutocorrectionContext:recipientId];

    documentTraits16 = [inputSystemSourceSession documentTraits];
    recipientId2 = [documentTraits16 recipientId];
    [keyboardState setRecipientIdentifier:recipientId2];

    documentTraits17 = [inputSystemSourceSession documentTraits];
    responseContext = [documentTraits17 responseContext];
    [v13 setResponseContext:responseContext];

    documentTraits18 = [inputSystemSourceSession documentTraits];
    responseContext2 = [documentTraits18 responseContext];
    [keyboardState setResponseContext:responseContext2];

    v63 = [UIInputContextHistory alloc];
    documentTraits19 = [inputSystemSourceSession documentTraits];
    inputContextHistory = [documentTraits19 inputContextHistory];
    v66 = [(UIInputContextHistory *)v63 initWithInputContextHistory:inputContextHistory];
    [v13 setInputContextHistory:v66];

    documentTraits20 = [inputSystemSourceSession documentTraits];
    inputContextHistory2 = [documentTraits20 inputContextHistory];
    v69 = [inputContextHistory2 copy];
    [keyboardState setInputContextHistory:v69];

    documentTraits21 = [inputSystemSourceSession documentTraits];
    supportedPayloadIds = [documentTraits21 supportedPayloadIds];
    [keyboardState setSupportedPayloadIds:supportedPayloadIds];

    documentTraits22 = [inputSystemSourceSession documentTraits];
    [v13 setDevicePasscodeEntry:{objc_msgSend(documentTraits22, "devicePasscodeEntry")}];

    documentTraits23 = [inputSystemSourceSession documentTraits];
    [v13 setDisableInputBars:{objc_msgSend(documentTraits23, "disableInputBars")}];

    documentTraits24 = [inputSystemSourceSession documentTraits];
    [v13 setDisablePrediction:{objc_msgSend(documentTraits24, "disablePrediction")}];

    if (+[UIKeyboard isKeyboardProcess])
    {
      documentTraits25 = [inputSystemSourceSession documentTraits];
      [v13 setHidePrediction:{objc_msgSend(documentTraits25, "hidePrediction")}];

      LODWORD(documentTraits25) = [v200 hidePrediction];
      documentTraits26 = [inputSystemSourceSession documentTraits];
      v77 = documentTraits25 ^ [documentTraits26 hidePrediction];

      v199 &= v77 ^ 1;
      documentTraits27 = [inputSystemSourceSession documentTraits];
      [v13 setDisablePrediction:{objc_msgSend(documentTraits27, "disablePrediction")}];
    }

    documentTraits28 = [inputSystemSourceSession documentTraits];
    fenceHandle = [documentTraits28 fenceHandle];
    v192 = fenceHandle != 0;
  }

  else
  {
    v192 = 0;
  }

  if (!+[UIKeyboard isInputSystemUI])
  {
    [v13 setKeyboardAppearance:keyboardAppearance];
  }

  documentTraits29 = [inputSystemSourceSession documentTraits];
  [keyboardState setAutofillMode:{objc_msgSend(documentTraits29, "autofillMode")}];

  documentTraits30 = [inputSystemSourceSession documentTraits];
  [keyboardState setAutofillSubMode:{objc_msgSend(documentTraits30, "autofillSubMode")}];

  documentTraits31 = [inputSystemSourceSession documentTraits];
  enabledSupplementalLexiconIdentifiers = [documentTraits31 enabledSupplementalLexiconIdentifiers];

  v196 = enabledSupplementalLexiconIdentifiers;
  if ([enabledSupplementalLexiconIdentifiers count])
  {
    firstObject = [enabledSupplementalLexiconIdentifiers firstObject];
    [keyboardState setSupplementalLexiconIdentifier:{objc_msgSend(firstObject, "unsignedLongLongValue")}];
  }

  else
  {
    [keyboardState setSupplementalLexiconIdentifier:0];
  }

  documentTraits32 = [inputSystemSourceSession documentTraits];
  autofillContext = [documentTraits32 autofillContext];
  dictionary = [autofillContext mutableCopy];

  if (!dictionary)
  {
    documentTraits33 = [inputSystemSourceSession documentTraits];
    shouldLoadAutofillSignUp = [documentTraits33 shouldLoadAutofillSignUp];

    if (shouldLoadAutofillSignUp)
    {
      dictionary = 0;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }
  }

  documentTraits34 = [inputSystemSourceSession documentTraits];
  appId = [documentTraits34 appId];

  if (appId)
  {
    documentTraits35 = [inputSystemSourceSession documentTraits];
    appId2 = [documentTraits35 appId];

    [dictionary setObject:appId2 forKey:@"_AppId"];
    if (+[UIKeyboard isKeyboardProcess])
    {
      [keyboardState setClientIdentifier:appId2];
    }
  }

  documentTraits36 = [inputSystemSourceSession documentTraits];
  bundleId = [documentTraits36 bundleId];

  if (bundleId)
  {
    documentTraits37 = [inputSystemSourceSession documentTraits];
    bundleId2 = [documentTraits37 bundleId];

    [dictionary setObject:bundleId2 forKey:@"_BundleId"];
  }

  documentTraits38 = [inputSystemSourceSession documentTraits];
  associatedDomains = [documentTraits38 associatedDomains];

  if (associatedDomains)
  {
    [dictionary setObject:associatedDomains forKey:@"_AssociatedDomains"];
  }

  v195 = associatedDomains;
  v101 = +[UIKeyboardImpl activeInstance];
  documentTraits39 = [inputSystemSourceSession documentTraits];
  [v101 setRemoteDelegateSupportsAdaptiveImageGlyph:{objc_msgSend(documentTraits39, "supportsAdaptiveImageGlyph")}];

  [keyboardState setAutofillContext:dictionary];
  currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];

  if (currentSessionIdentifier)
  {
    currentSessionIdentifier2 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [keyboardState setDocumentIdentifier:currentSessionIdentifier2];
  }

  documentTraits40 = [inputSystemSourceSession documentTraits];
  userInfo5 = [documentTraits40 userInfo];

  if (userInfo5)
  {
    v107 = [userInfo5 objectForKeyedSubscript:0x1EFB531F0];
    [v13 setForceFloatingKeyboard:{objc_msgSend(v107, "BOOLValue")}];

    v108 = [userInfo5 objectForKeyedSubscript:0x1EFB53210];
    [v13 setForceDisableDictation:{objc_msgSend(v108, "BOOLValue")}];

    v109 = [userInfo5 objectForKeyedSubscript:0x1EFB53230];
    [v13 setUseAutomaticEndpointing:{objc_msgSend(v109, "BOOLValue")}];

    v110 = [userInfo5 objectForKeyedSubscript:0x1EFB53250];
    [v13 setAcceptsDictationSearchResults:{objc_msgSend(v110, "BOOLValue")}];

    v111 = [userInfo5 objectForKeyedSubscript:0x1EFB532D0];
    [v13 setForceEnableDictation:{objc_msgSend(v111, "BOOLValue")}];

    v112 = +[UIKeyboardImpl activeInstance];
    isSettingDelegate = [v112 isSettingDelegate];

    if (isSettingDelegate)
    {
      v114 = [userInfo5 objectForKeyedSubscript:0x1EFB53290];
      bOOLValue = [v114 BOOLValue];

      if (bOOLValue)
      {
        v116 = +[UIDictationController sharedInstance];
        v117 = v116;
        v118 = 1;
      }

      else
      {
        v116 = +[UIDictationController activeInstance];
        v117 = v116;
        v118 = 0;
      }

      [v116 setShouldSuppressSoftwareKeyboard:v118];
    }

    v119 = [userInfo5 objectForKeyedSubscript:0x1EFB53350];
    v120 = +[UIDictationController sharedInstance];
    [v120 set_inputDelegateClassName:v119];

    v121 = [userInfo5 objectForKeyedSubscript:0x1EFB53270];
    bOOLValue2 = [v121 BOOLValue];
    v123 = +[UIDictationController sharedInstance];
    [v123 set_shouldUseDictationSearchFieldBehavior:bOOLValue2];

    v124 = +[UIKeyboardImpl activeInstance];
    LODWORD(bOOLValue2) = [v124 isSettingDelegate];

    if (bOOLValue2)
    {
      v125 = [userInfo5 objectForKeyedSubscript:0x1EFB532B0];
      bOOLValue3 = [v125 BOOLValue];

      if (bOOLValue3)
      {
        v127 = +[UIKeyboardCameraSession sharedSession];
        v128 = v127;
        v129 = 1;
      }

      else
      {
        v127 = +[UIKeyboardCameraSession activeSession];
        v128 = v127;
        v129 = 0;
      }

      [v127 setShouldSuppressSoftwareKeyboard:v129];
    }

    v193 = keyboardState;
    v130 = [userInfo5 objectForKeyedSubscript:0x1EFB532F0];
    bOOLValue4 = [v130 BOOLValue];
    v132 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v132 setHasCustomInputViewController:bOOLValue4];

    v133 = +[UIKeyboardImpl activeInstance];
    v134 = [userInfo5 objectForKeyedSubscript:0x1EFB53310];
    [v133 _setShouldSuppressAssistantBar:{objc_msgSend(v134, "BOOLValue")}];

    v135 = +[UIKeyboardImpl activeInstance];
    v136 = [userInfo5 objectForKeyedSubscript:0x1EFB53330];
    [v135 _setShouldSuppressSoftwareKeyboard:{objc_msgSend(v136, "BOOLValue")}];

    v137 = +[UIKeyboardImpl activeInstance];
    [v137 _suppressSoftwareKeyboardStateChangedIgnoringPolicyDelegate:0];

    v138 = [userInfo5 objectForKeyedSubscript:0x1EFB53370];
    bOOLValue5 = [v138 BOOLValue];
    v140 = +[UIKeyboardImpl activeInstance];
    [v140 setHasPreviousKeyResponder:bOOLValue5];

    v141 = [userInfo5 objectForKeyedSubscript:0x1EFB53390];
    bOOLValue6 = [v141 BOOLValue];
    v143 = +[UIKeyboardImpl activeInstance];
    [v143 setHasNextKeyResponder:bOOLValue6];

    v144 = +[UIKeyboardImpl activeInstance];
    v145 = [userInfo5 objectForKeyedSubscript:0x1EFB533B0];
    [v144 setReturnKeyEnabled:{objc_msgSend(v145, "BOOLValue")}];

    v146 = +[UIKeyboardImpl activeInstance];
    v147 = [userInfo5 objectForKeyedSubscript:0x1EFB53410];
    [v146 setCorrectionLearningAllowed:{objc_msgSend(v147, "BOOLValue")}];

    v148 = [userInfo5 objectForKeyedSubscript:0x1EFB533D0];
    v149 = v148;
    if (!v148)
    {
      goto LABEL_61;
    }

    v150 = [v148 objectForKeyedSubscript:@"disabled"];

    if (!v150)
    {
      goto LABEL_61;
    }

    v151 = [v149 objectForKeyedSubscript:@"disabled"];
    bOOLValue7 = [v151 BOOLValue];

    v153 = [v149 objectForKeyedSubscript:@"forSuppressionAssertion"];
    bOOLValue8 = [v153 BOOLValue];

    v155 = [v149 objectForKeyedSubscript:@"updatePlacement"];
    bOOLValue9 = [v155 BOOLValue];

    if (bOOLValue8)
    {
      v157 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      [v157 setDisableBecomeFirstResponder:bOOLValue7 forSuppressionAssertion:1 updatePlacement:bOOLValue9];
    }

    else
    {
      if (!+[UIKeyboard inputUIOOP])
      {
        goto LABEL_61;
      }

      v158 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      keyboardArbiterClient = [v158 keyboardArbiterClient];
      disableBecomeFirstResponder = [keyboardArbiterClient disableBecomeFirstResponder];

      if (bOOLValue7 == disableBecomeFirstResponder)
      {
        goto LABEL_61;
      }

      v157 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      [v157 setDisableBecomeFirstResponder:bOOLValue7 forSuppressionAssertion:0];
    }

LABEL_61:
    v161 = [userInfo5 objectForKeyedSubscript:0x1EFB533F0];
    bOOLValue10 = [v161 BOOLValue];
    v163 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    existingContainerRootController = [v163 existingContainerRootController];
    [existingContainerRootController setHiddenCount:bOOLValue10];

    keyboardState = v193;
  }

  v165 = +[UIKeyboardImpl activeInstance];
  showingEmojiSearch = [v165 showingEmojiSearch];

  partnerDelegate4 = [(UIKBRTIPartner *)self partnerDelegate];
  v168 = partnerDelegate4;
  if (showingEmojiSearch)
  {
    v207[0] = MEMORY[0x1E69E9820];
    v207[1] = 3221225472;
    v207[2] = __61__UIKBRTIPartner_applyRemoteDocumentTraitsIfNecessary_force___block_invoke;
    v207[3] = &unk_1E7117F20;
    v208 = v13;
    v209 = returnKeyType;
    v210 = keyboardType;
    [v168 modifyTextInputTraits:v207 forceSync:v197];
  }

  else
  {
    [partnerDelegate4 updateInputDelegateForRemoteTraitChange:v13 forceSync:v197];
  }

  if (+[UIKeyboard isInputSystemUI])
  {
    documentTraits41 = [inputSystemSourceSession documentTraits];
    assistantItem = [documentTraits41 assistantItem];
    [(UIKBRTIPartner *)self applyAssistantItem:assistantItem];

    documentTraits42 = [inputSystemSourceSession documentTraits];
    assistantViewInfo = [documentTraits42 assistantViewInfo];
    documentTraits43 = [inputSystemSourceSession documentTraits];
    v174 = [assistantViewInfo uiRemoteInputViewInfoForProcessId:{objc_msgSend(documentTraits43, "processId")}];

    partnerDelegate5 = [(UIKBRTIPartner *)self partnerDelegate];
    [partnerDelegate5 updateAssistantViewInfo:v174];

    v176 = v192;
    if ((v199 | v192))
    {
      v194 = keyboardState;
      if (v192)
      {
        documentTraits44 = [inputSystemSourceSession documentTraits];
        fenceHandle2 = [documentTraits44 fenceHandle];
        isUsable = [fenceHandle2 isUsable];

        if (isUsable)
        {
          documentTraits45 = [inputSystemSourceSession documentTraits];
          fenceHandle3 = [documentTraits45 fenceHandle];
          v182 = [fenceHandle3 copy];
        }

        else
        {
          v182 = 0;
        }

        v176 = v192;
      }

      else
      {
        v182 = 0;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__UIKBRTIPartner_applyRemoteDocumentTraitsIfNecessary_force___block_invoke_2;
      block[3] = &unk_1E70F43C8;
      v205 = v176;
      v202 = v182;
      selfCopy = self;
      v204 = inputSystemSourceSession;
      v206 = v199;
      v183 = v182;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      keyboardState = v194;
    }

    v184 = +[UIKeyboardImpl activeInstance];
    [v184 _updateDelegateRequiresKeyEventsFromRemoteTextInput];
  }

  if (+[UIKeyboard isKeyboardProcess])
  {
    partnerDelegate6 = [(UIKBRTIPartner *)self partnerDelegate];
    documentTraits46 = [inputSystemSourceSession documentTraits];
    [partnerDelegate6 setRemoteDelegateSupportsImagePaste:{objc_msgSend(documentTraits46, "supportsImagePaste")}];
  }

  if (!(v198 & 1 | !+[UIKeyboard isKeyboardProcess]))
  {
    v187 = +[UIKeyboardImpl activeInstance];
    [v187 generateCandidates];
  }

  if (!+[UIKeyboard useAutoFillUIRTIInterfaceForIphone](UIKeyboard, "useAutoFillUIRTIInterfaceForIphone") && !(v191 | !+[UIKeyboard supportsAutoFillPanel]))
  {
    v188 = +[UIKeyboardImpl activeInstance];
    [v188 displayAutoFillPopoverIfAutoFillModeDetected];
  }
}

void __61__UIKBRTIPartner_applyRemoteDocumentTraitsIfNecessary_force___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setKeyboardAppearance:{objc_msgSend(v3, "keyboardAppearance")}];
  [v4 setReturnKeyType:a1[5]];
  [v4 setKeyboardType:a1[6]];
}

void __61__UIKBRTIPartner_applyRemoteDocumentTraitsIfNecessary_force___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    if ([*(a1 + 32) isUsable])
    {
      v2 = [*(a1 + 40) delegate];
      v3 = [v2 _responderWindow];
      v4 = [v3 windowScene];
      [v4 _synchronizeDrawingUsingFence:*(a1 + 32)];
    }

    [*(a1 + 32) invalidate];
    v5 = [*(a1 + 48) documentTraits];
    v6 = [v5 fenceHandle];
    [v6 invalidate];
  }

  if (*(a1 + 57) == 1)
  {
    v7 = [*(a1 + 40) delegate];
    [v7 reloadInputViews];
  }

  else
  {
    v7 = +[UIKeyboardImpl activeInstance];
    [v7 updateAssistantView];
  }
}

- (void)applyAssistantItem:(id)item
{
  itemCopy = item;
  partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
  [partnerDelegate applyAssistantItem:itemCopy];
}

- (void)applyRemoteDocumentStateIfNecessary:(id)necessary force:(BOOL)force
{
  forceCopy = force;
  necessaryCopy = necessary;
  if (!necessaryCopy)
  {
    partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
    inputSystemSourceSession = [partnerDelegate inputSystemSourceSession];

    necessaryCopy = inputSystemSourceSession;
  }

  v25 = necessaryCopy;
  documentState = [necessaryCopy documentState];
  originatedFromSource = [documentState originatedFromSource];

  v10 = v25;
  if (v25)
  {
    documentState2 = [v25 documentState];
    v11DocumentState = [documentState2 documentState];

    v10 = v25;
    if (v11DocumentState)
    {
      documentState3 = [v25 documentState];
      v13DocumentState = [documentState3 documentState];
      documentState4 = [v25 documentState];
      selectedTextRange = [documentState4 selectedTextRange];
      v18 = v17;

      hasText = [documentState3 hasText];
      self->_isNotifyingDelegateOfRemoteOutputOperation = 1;
      if (originatedFromSource)
      {
        partnerDelegate2 = [(UIKBRTIPartner *)self partnerDelegate];
        [partnerDelegate2 updateForExpectedRemoteDocumentStateChange:v13DocumentState selectedTextRange:selectedTextRange forceSync:{v18, forceCopy}];
      }

      else
      {
        v21 = hasText;
        canSuggestSupplementalItemsForCurrentSelection = [documentState3 canSuggestSupplementalItemsForCurrentSelection];
        partnerDelegate3 = [(UIKBRTIPartner *)self partnerDelegate];
        [partnerDelegate3 setCanSuggestSupplementalItemsForCurrentSelection:canSuggestSupplementalItemsForCurrentSelection];

        partnerDelegate2 = [(UIKBRTIPartner *)self partnerDelegate];
        [partnerDelegate2 updateInputDelegateForRemoteDocumentStateChange:v13DocumentState selectedTextRange:selectedTextRange hasText:v18 forceSync:{v21, forceCopy}];
      }

      self->_isNotifyingDelegateOfRemoteOutputOperation = 0;
      v10 = v25;
    }
  }
}

- (void)sendAutoFillDidInsertCallbacksWithTextOperations:(id)operations
{
  operationsCopy = operations;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [operationsCopy isAutoFillTextOperation])
  {
    textToAssert = [operationsCopy textToAssert];
    if ([textToAssert length])
    {
    }

    else
    {
      keyboardOutput = [operationsCopy keyboardOutput];
      insertionText = [keyboardOutput insertionText];
      v7 = [insertionText length];

      if (!v7)
      {
        goto LABEL_8;
      }
    }

    isExplicitAutoFillInvocation = [operationsCopy isExplicitAutoFillInvocation];
    partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
    inputDelegate = [partnerDelegate inputDelegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      partnerDelegate2 = [(UIKBRTIPartner *)self partnerDelegate];
      inputDelegate2 = [partnerDelegate2 inputDelegate];
      [inputDelegate2 autoFillDidInsertWithExplicitInvocationMode:isExplicitAutoFillInvocation];
    }
  }

LABEL_8:
}

- (void)inputSession:(id)session documentStateDidChange:(id)change withMergeResult:(unint64_t)result
{
  if ((result & 0x21) != 0)
  {
    [(UIKBRTIPartner *)self applyRemoteDocumentStateIfNecessary:session force:1];
  }
}

- (void)inputSession:(id)session performInputOperation:(id)operation
{
  operationCopy = operation;
  customInfoType = [operationCopy customInfoType];
  v7 = [customInfoType isEqualToString:@"UIPhysicalKeyboardEvent"];

  if (!v7)
  {
    customInfoType2 = [operationCopy customInfoType];
    v11 = [customInfoType2 isEqualToString:@"UISupplementalLexiconInputOperations"];

    if (v11)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_2;
      aBlock[3] = &unk_1E70F35B8;
      v73 = operationCopy;
      selfCopy = self;
      v12 = _Block_copy(aBlock);
      if (pthread_main_np() == 1)
      {
        v12[2](v12);
      }

      else
      {
        dispatch_async(MEMORY[0x1E69E96A0], v12);
      }

      v16 = v73;
      goto LABEL_31;
    }

    customInfoType3 = [operationCopy customInfoType];
    v14 = [customInfoType3 isEqualToString:@"UIDictationRemoteInputOperations"];

    if (v14)
    {
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_3;
      v69[3] = &unk_1E70F35B8;
      v70 = operationCopy;
      selfCopy2 = self;
      v15 = _Block_copy(v69);
      if (pthread_main_np() == 1)
      {
        v15[2](v15);
      }

      else
      {
        dispatch_async(MEMORY[0x1E69E96A0], v15);
      }

      v16 = v70;
      goto LABEL_31;
    }

    customInfoType4 = [operationCopy customInfoType];
    v18 = [customInfoType4 isEqualToString:@"UIUserInteractionRemoteInputOperations"];

    if (v18)
    {
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_431;
      v66[3] = &unk_1E70F35B8;
      v67 = operationCopy;
      selfCopy3 = self;
      v19 = _Block_copy(v66);
      if (pthread_main_np() == 1)
      {
        v19[2](v19);
      }

      else
      {
        dispatch_async(MEMORY[0x1E69E96A0], v19);
      }

      v16 = v67;
      goto LABEL_31;
    }

    customInfoType5 = [operationCopy customInfoType];
    v21 = [customInfoType5 isEqualToString:@"UIKeyboardCameraRemoteInputOperations"];

    if (v21)
    {
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_477;
      v63[3] = &unk_1E70F35B8;
      v64 = operationCopy;
      selfCopy4 = self;
      v22 = _Block_copy(v63);
      if (pthread_main_np() == 1)
      {
        v22[2](v22);
      }

      else
      {
        dispatch_async(MEMORY[0x1E69E96A0], v22);
      }

      v16 = v64;
      goto LABEL_31;
    }

    customInfoType6 = [operationCopy customInfoType];
    v24 = [customInfoType6 isEqualToString:@"UIEmojiSearchOperations"];

    if (v24)
    {
      customInfo = [operationCopy customInfo];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_32;
      }

      customInfo2 = [operationCopy customInfo];
      v28 = [customInfo2 objectForKeyedSubscript:@"resign"];
      if (!v28)
      {
        goto LABEL_53;
      }

      existingContainerRootController = +[UIKeyboardImpl activeInstance];
      [existingContainerRootController clearForwardingInputDelegateAndResign:{objc_msgSend(v28, "BOOLValue")}];
    }

    else
    {
      customInfoType7 = [operationCopy customInfoType];
      v31 = [customInfoType7 isEqualToString:@"UIUserPencilOperations"];

      if (v31)
      {
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_2_478;
        v60[3] = &unk_1E70F35B8;
        v61 = operationCopy;
        selfCopy5 = self;
        v32 = _Block_copy(v60);
        if (pthread_main_np() == 1)
        {
          v32[2](v32);
        }

        else
        {
          dispatch_async(MEMORY[0x1E69E96A0], v32);
        }

        v16 = v61;
        goto LABEL_31;
      }

      customInfoType8 = [operationCopy customInfoType];
      v34 = [customInfoType8 isEqualToString:@"UIKBRTICustomInfoTypeApplicationOperations"];

      actionSelector = [operationCopy actionSelector];
      if (!v34)
      {
        if (!actionSelector || [operationCopy actionSelector] != sel_acceptAutocorrection)
        {
          customInfoType9 = [operationCopy customInfoType];
          v38 = [customInfoType9 isEqualToString:@"UIWebKitOperations"];

          if (v38)
          {
            v57[0] = MEMORY[0x1E69E9820];
            v57[1] = 3221225472;
            v57[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_4;
            v57[3] = &unk_1E70F3590;
            v58 = operationCopy;
            v39 = _Block_copy(v57);
            if (pthread_main_np() == 1)
            {
              v39[2](v39);
            }

            else
            {
              dispatch_async(MEMORY[0x1E69E96A0], v39);
            }

            v16 = v58;
          }

          else
          {
            customInfoType10 = [operationCopy customInfoType];
            v41 = [customInfoType10 isEqualToString:@"UIKBRTICustomInfoTypeAnalyticsOperations"];

            if (v41)
            {
              v55[0] = MEMORY[0x1E69E9820];
              v55[1] = 3221225472;
              v55[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_5;
              v55[3] = &unk_1E70F3590;
              v56 = operationCopy;
              v42 = _Block_copy(v55);
              if (pthread_main_np() == 1)
              {
                v42[2](v42);
              }

              else
              {
                dispatch_async(MEMORY[0x1E69E96A0], v42);
              }

              v16 = v56;
            }

            else
            {
              customInfoType11 = [operationCopy customInfoType];
              v48 = [customInfoType11 isEqualToString:@"UIKBRTICustomInfoTypeGrammarCorrectionOperations"];

              if (!v48)
              {
                keyboardInput = [operationCopy keyboardInput];
                output = [keyboardInput output];

                if (!output)
                {
                  goto LABEL_9;
                }

                partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
                keyboardInput2 = [operationCopy keyboardInput];
                [partnerDelegate undoWithKeyboardInput:keyboardInput2];

                goto LABEL_4;
              }

              v52[0] = MEMORY[0x1E69E9820];
              v52[1] = 3221225472;
              v52[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_6;
              v52[3] = &unk_1E70F35B8;
              v53 = operationCopy;
              selfCopy6 = self;
              v49 = _Block_copy(v52);
              if (pthread_main_np() == 1)
              {
                v49[2](v49);
              }

              else
              {
                dispatch_async(MEMORY[0x1E69E96A0], v49);
              }

              v16 = v53;
            }
          }

LABEL_31:

          goto LABEL_32;
        }

        if (pthread_main_np() != 1)
        {
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_3_489;
          v59[3] = &unk_1E70F3590;
          v59[4] = self;
          dispatch_async(MEMORY[0x1E69E96A0], v59);
          goto LABEL_32;
        }

        customInfo2 = [(UIKBRTIPartner *)self partnerDelegate];
        [customInfo2 acceptAutocorrection];
LABEL_54:

        goto LABEL_32;
      }

      if (actionSelector == sel_setRemoteDisableBecomeFirstResponder_)
      {
        customInfo2 = [operationCopy customInfo];
        v28 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
        existingContainerRootController = [customInfo2 objectForKeyedSubscript:@"disabled"];
        bOOLValue = [existingContainerRootController BOOLValue];
        v44 = [customInfo2 objectForKeyedSubscript:@"forSuppressionAssertion"];
        bOOLValue2 = [v44 BOOLValue];
        v46 = [customInfo2 objectForKeyedSubscript:@"updatePlacement"];
        [v28 setDisableBecomeFirstResponder:bOOLValue forSuppressionAssertion:bOOLValue2 updatePlacement:{objc_msgSend(v46, "BOOLValue")}];
      }

      else
      {
        if ([operationCopy actionSelector] == sel_verifyPlacement)
        {
          customInfo2 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
          [customInfo2 verifyPlacement];
          goto LABEL_54;
        }

        if ([operationCopy actionSelector] != sel_setInputViewsHidden_)
        {
          goto LABEL_32;
        }

        customInfo2 = [operationCopy customInfo];
        v28 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        existingContainerRootController = [v28 existingContainerRootController];
        v36 = [customInfo2 objectForKeyedSubscript:@"hidden"];
        [existingContainerRootController setInputViewsHidden:{objc_msgSend(v36, "BOOLValue")}];
      }
    }

LABEL_53:
    goto LABEL_54;
  }

  output = [operationCopy customInfo];
  if (pthread_main_np() != 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke;
    block[3] = &unk_1E70F35B8;
    block[4] = self;
    v76 = output;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    goto LABEL_9;
  }

  partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
  [partnerDelegate performKeyboardEvent:output];
LABEL_4:

LABEL_9:
LABEL_32:
}

void __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) partnerDelegate];
  [v2 performKeyboardEvent:*(a1 + 40)];
}

void __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_2(uint64_t a1)
{
  v12 = [*(a1 + 32) customInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = v12;
  if (isKindOfClass)
  {
    v4 = [v12 objectForKeyedSubscript:@"selector"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v12 objectForKeyedSubscript:@"selector"];
      v6 = NSSelectorFromString(v5);

      if (sel_isEqual(v6, sel_handleEventFromRemoteDestination_canSuggestSupplementalItemsForCurrentSelection_))
      {
        v7 = [v12 objectForKey:@"canSuggest"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_15:

          goto LABEL_16;
        }

        v8 = [v7 BOOLValue];
        v9 = [*(a1 + 40) partnerDelegate];
        [v9 handleEventFromRemoteDestination_canSuggestSupplementalItemsForCurrentSelection:v8];
LABEL_14:

        goto LABEL_15;
      }

      if (sel_isEqual(v6, sel_handleEventCallbackFromRemoteDestination_didChooseSupplementalItem_toReplaceText_))
      {
        v7 = [v12 objectForKey:@"supplementalItem"];
        v9 = [v12 objectForKey:@"textToReplace"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = supplementalItem([v7 identifier]);
        }

        else
        {
          v10 = 0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [*(a1 + 40) partnerDelegate];
            [v11 handleEventCallbackFromRemoteDestination_didChooseSupplementalItem:v10 toReplaceText:v9];
          }
        }

        goto LABEL_14;
      }
    }

LABEL_16:

    v3 = v12;
  }
}

void __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_3(uint64_t a1)
{
  if (![*(a1 + 32) actionSelector])
  {
    return;
  }

  v2 = [*(a1 + 32) actionSelector];
  v3 = *(a1 + 32);
  if (v2 == sel_handleRemoteDictationEvent_switchToDictationInputModeWithOptions_)
  {
    v13 = [v3 customInfo];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v24 = v13;
    }

    else
    {
      v24 = 0;
    }

    v14 = [*(a1 + 40) partnerDelegate];
    [v14 handleRemoteDictationEvent_switchToDictationInputModeWithOptions:v24];

    goto LABEL_41;
  }

  if ([v3 actionSelector] == sel_handleRemoteDictationEvent_switchToDictationLanguage_)
  {
    v24 = [*(a1 + 40) partnerDelegate];
    v15 = [*(a1 + 32) customInfo];
    [v24 handleRemoteDictationEvent_switchToDictationLanguage:v15];
LABEL_40:

    goto LABEL_41;
  }

  if ([*(a1 + 32) actionSelector] == sel_handleRemoteDictationEvent_startDictation)
  {
    v24 = [*(a1 + 40) partnerDelegate];
    [v24 handleRemoteDictationEvent_startDictation];
    goto LABEL_41;
  }

  v4 = [*(a1 + 32) actionSelector];
  v5 = *(a1 + 32);
  if (v4 == sel_handleRemoteDictationEvent_stopDictation_)
  {
    v24 = [v5 customInfo];
    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v16 = [v24 BOOLValue];
    }

    else
    {
      v16 = 1;
    }

    v15 = [*(a1 + 40) partnerDelegate];
    [v15 handleRemoteDictationEvent_stopDictation:v16];
    goto LABEL_40;
  }

  if ([v5 actionSelector] == sel_handleRemoteDictationEvent_cancelDictation)
  {
    v24 = [*(a1 + 40) partnerDelegate];
    [v24 handleRemoteDictationEvent_cancelDictation];
    goto LABEL_41;
  }

  if ([*(a1 + 32) actionSelector] == sel_handleRemoteDictationEvent_movePopoverView_)
  {
    v24 = [*(a1 + 40) partnerDelegate];
    v15 = [*(a1 + 32) customInfo];
    [v24 handleRemoteDictationEvent_movePopoverView:v15];
    goto LABEL_40;
  }

  if ([*(a1 + 32) actionSelector] == sel_handleRemoteDictationEvent_setEditMenuFrame_)
  {
    v24 = [*(a1 + 40) partnerDelegate];
    v15 = [*(a1 + 32) customInfo];
    [v24 handleRemoteDictationEvent_setEditMenuFrame:v15];
    goto LABEL_40;
  }

  if ([*(a1 + 32) actionSelector] == sel_handleRemoteDictationEvent_handleTip_)
  {
    v24 = [*(a1 + 40) partnerDelegate];
    v15 = [*(a1 + 32) customInfo];
    [v24 handleRemoteDictationEvent_handleTip:v15];
    goto LABEL_40;
  }

  v6 = [*(a1 + 32) actionSelector];
  v7 = *(a1 + 32);
  if (v6 == sel_handleRemoteDictationEvent_setDisambiguationActive_maxOptions_)
  {
    v24 = [v7 customInfo];
    v15 = [*(a1 + 40) partnerDelegate];
    v17 = [v24 objectForKeyedSubscript:@"active"];
    v18 = [v17 BOOLValue];
    v19 = [v24 objectForKeyedSubscript:@"maxOptions"];
    [v15 handleRemoteDictationEvent_setDisambiguationActive:v18 maxOptions:{objc_msgSend(v19, "unsignedIntValue")}];
LABEL_37:

    goto LABEL_40;
  }

  v8 = [v7 actionSelector];
  v9 = *(a1 + 32);
  if (v8 != sel_handleRemoteDictationEvent_updateIdleDetection_)
  {
    v10 = [v9 actionSelector];
    v11 = *(a1 + 32);
    if (v10 == sel_setKeyboardMinimizedByDictation_)
    {
      v24 = [v11 customInfo];
      v15 = +[UIKeyboardImpl sharedInstance];
      [v15 setKeyboardMinimizedByDictation:{objc_msgSend(v24, "BOOLValue")}];
      goto LABEL_40;
    }

    if ([v11 actionSelector] == sel_handleRemoteDictationEvent_stopDictationIgnoreFinalizePhrases)
    {
      v24 = [*(a1 + 40) partnerDelegate];
      [v24 handleRemoteDictationEvent_stopDictationIgnoreFinalizePhrases];
      goto LABEL_41;
    }

    if ([*(a1 + 32) actionSelector] == sel_handleRemoteDictationEvent_resumeDictation)
    {
      v24 = [*(a1 + 40) partnerDelegate];
      [v24 handleRemoteDictationEvent_resumeDictation];
      goto LABEL_41;
    }

    if ([*(a1 + 32) actionSelector] != sel_handleDictationShouldPause_withNewDelagate_)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v23 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          *v26 = 0;
          _os_log_fault_impl(&dword_188A29000, v23, OS_LOG_TYPE_FAULT, "Unrecognized selector for dictation event", v26, 2u);
        }
      }

      else
      {
        v12 = *(__UILogGetCategoryCachedImpl("Assert", &UIKBRTICustomInfoTypeWritingToolsOperations_block_invoke___s_category) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Unrecognized selector for dictation event", buf, 2u);
        }
      }

      return;
    }

    v24 = [*(a1 + 32) customInfo];
    v15 = +[UIDictationController activeInstance];
    v17 = [v24 objectForKeyedSubscript:@"shouldPause"];
    v22 = [v17 BOOLValue];
    v19 = [v24 objectForKeyedSubscript:@"withNewDelagate"];
    [v15 handleDictationShouldPause:v22 withNewDelagate:{objc_msgSend(v19, "BOOLValue")}];
    goto LABEL_37;
  }

  v20 = [v9 customInfo];
  v21 = [v20 integerValue];

  v24 = [*(a1 + 40) partnerDelegate];
  [v24 handleRemoteDictationEvent_updateIdleDetection:v21];
LABEL_41:
}

void __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_431(uint64_t a1)
{
  if (![*(a1 + 32) actionSelector])
  {
    return;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_acceptAutocorrection)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 acceptAutocorrection];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_handleEmojiPopoverKeyCommand)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 handleEmojiPopoverKeyCommand];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_handleAutoFillContactPopoverCommand)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 handleAutoFillContactPopoverCommand];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_handleAutoFillCreditCardPopoverCommand)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 handleAutoFillCreditCardPopoverCommand];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_handleAutoFillPasswordPopoverCommand)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 handleAutoFillPasswordPopoverCommand];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_handleAutoFillContactDetected)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 handleAutoFillContactDetected];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_handleAutoFillCreditCardDetected)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 handleAutoFillCreditCardDetected];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_handleAutoFillPasswordDetected)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 handleAutoFillPasswordDetected];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_performStopAutoDeleteAtDocumentStart)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 performStopAutoDeleteAtDocumentStart];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_ejectKeyDown)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 ejectKeyDown];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_textSelectionWillScroll)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 textWillScroll];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_textSelectionDidScroll)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 textDidScroll];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_removeInlineTextCompletionPrompt)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 removeInlineTextCompletionPrompt];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_beginAcceptingInlineCompletionByDirectTap)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 beginAcceptingInlineCompletionByDirectTap];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_endAcceptingInlineCompletionByDirectTap)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 endAcceptingInlineCompletionByDirectTap];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_presentTextChoicePromptForRange_)
  {
    v11 = [*(a1 + 32) customInfo];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [*(a1 + 40) partnerDelegate];
        [v8 presentTextChoicePromptForRange:v11];
      }
    }

    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_dismissTextChoicePrompt)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 dismissTextChoicePrompt];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && objc_msgSend(*(a1 + 32), "actionSelector") == sel_writingToolsDidEnd)
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 writingToolsDidEnd];
    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && sel_isEqual(objc_msgSend(*(a1 + 32), "actionSelector"), sel_clearShiftState))
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 clearShiftState];
LABEL_75:

    return;
  }

  if ([*(a1 + 32) actionSelector] && sel_isEqual(objc_msgSend(*(a1 + 32), "actionSelector"), sel_setKeyboardInputMode_userInitiated_))
  {
    v2 = [*(a1 + 32) customInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }

    v11 = [*(a1 + 32) customInfo];
    v4 = [v11 objectForKeyedSubscript:@"inputMode"];
    v5 = [v11 objectForKeyedSubscript:@"isUserInitiated"];
    v6 = v5;
    if (v4 && v5)
    {
      v7 = [*(a1 + 40) partnerDelegate];
      [v7 setKeyboardInputMode:v4 userInitiated:{objc_msgSend(v6, "BOOLValue")}];
    }

    goto LABEL_75;
  }

  if ([*(a1 + 32) actionSelector] && sel_isEqual(objc_msgSend(*(a1 + 32), "actionSelector"), sel_setRestoresToEmojiInputMode))
  {
    v11 = [*(a1 + 40) partnerDelegate];
    [v11 setRestoresToEmojiInputMode];
    goto LABEL_75;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v10 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *v13 = 0;
      _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Unrecognized selector for user interaction event", v13, 2u);
    }
  }

  else
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &UIKBRTICustomInfoTypeWritingToolsOperations_block_invoke_2___s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Unrecognized selector for user interaction event", buf, 2u);
    }
  }
}

void __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_477(uint64_t a1)
{
  if ([*(a1 + 32) actionSelector])
  {
    v2 = [*(a1 + 32) customInfo];
    if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    if ([*(a1 + 32) actionSelector] == sel_handleRemoteKeyboardCameraEvent_startCameraInput_)
    {
      v3 = [*(a1 + 40) partnerDelegate];
      [v3 handleRemoteKeyboardCameraEvent_startCameraInput:v4];
    }
  }
}

void __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_2_478(uint64_t a1)
{
  v2 = [*(a1 + 32) actionSelector];
  v3 = *(a1 + 32);
  if (v2)
  {
    if ([v3 actionSelector] != sel_setInputMode_)
    {
      return;
    }

    v9 = [*(a1 + 32) customInfo];
    v4 = [*(a1 + 40) partnerDelegate];
    v5 = [v9 objectForKeyedSubscript:@"inputMode"];
    v8 = [v9 objectForKeyedSubscript:@"userInitiated"];
    [v4 setInputMode:v5 userInitiated:{objc_msgSend(v8, "BOOLValue")}];
    goto LABEL_7;
  }

  v9 = [v3 customInfo];
  v4 = [v9 objectForKeyedSubscript:@"suppressAssistantBar"];
  v5 = [v9 objectForKeyedSubscript:@"suppressSoftwareKeyboard"];
  if (v4)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 _setShouldSuppressAssistantBar:{objc_msgSend(v4, "BOOLValue")}];

    v7 = +[UIKeyboardImpl activeInstance];
    [v7 _setShouldSuppressSoftwareKeyboard:{objc_msgSend(v5, "BOOLValue")}];

    v8 = +[UIKeyboardImpl activeInstance];
    [v8 _suppressSoftwareKeyboardStateChangedIgnoringPolicyDelegate:0];
LABEL_7:
  }
}

void __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_3_489(uint64_t a1)
{
  v1 = [*(a1 + 32) partnerDelegate];
  [v1 acceptAutocorrection];
}

void __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_4(uint64_t a1)
{
  v13 = [*(a1 + 32) customInfo];
  v1 = [v13 objectForKeyedSubscript:@"selector"];
  if (v1)
  {
    v2 = [v13 objectForKeyedSubscript:@"selector"];
    v3 = NSSelectorFromString(v2);
  }

  else
  {
    v3 = 0;
  }

  if (sel_isEqual(v3, sel__addInputString_withFlags_withInputManagerHint_withInputSource_))
  {
    v4 = [v13 objectForKeyedSubscript:@"inputManagerHint"];
    if (![v4 length])
    {

      v4 = 0;
    }

    v5 = [v13 objectForKeyedSubscript:@"flags"];
    v6 = [v5 unsignedIntegerValue];

    v7 = [v13 objectForKeyedSubscript:@"string"];
    v8 = [v13 objectForKeyedSubscript:@"source"];
    v9 = [v8 unsignedIntegerValue];

    v10 = +[UIKeyboardImpl activeInstance];
    [v10 _addInputString:v7 withFlags:v6 withInputManagerHint:v4 withInputSource:v9];
  }

  else
  {
    if (!sel_isEqual(v3, sel__deleteFromInputWithFlags_))
    {
      goto LABEL_11;
    }

    v11 = [v13 objectForKeyedSubscript:@"flags"];
    v12 = [v11 unsignedIntegerValue];

    v4 = +[UIKeyboardImpl activeInstance];
    [v4 _deleteFromInputWithFlags:v12];
  }

LABEL_11:
}

void __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_5(uint64_t a1)
{
  v4 = [*(a1 + 32) customInfo];
  if ([*(a1 + 32) actionSelector] == sel_acceptingCandidateWithTrigger_)
  {
    v2 = [v4 objectForKeyedSubscript:@"candidateAcceptedTrigger"];
    v3 = +[UIKeyboardImpl activeInstance];
    [v3 acceptingCandidateWithTrigger:v2];
  }

  else
  {
    if ([*(a1 + 32) actionSelector] != sel_changingContextWithTrigger_)
    {
      goto LABEL_6;
    }

    v2 = [v4 objectForKeyedSubscript:@"contextChangeTrigger"];
    v3 = +[UIKeyboardImpl activeInstance];
    [v3 changingContextWithTrigger:v2];
  }

LABEL_6:
}

void __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_6(uint64_t a1)
{
  v3 = [*(a1 + 32) customInfo];
  if ([*(a1 + 32) actionSelector] == sel_handleGrammarCorrectionEntries_)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [*(a1 + 40) partnerDelegate];
      [v2 handleGrammarCorrectionEntries:v3];
    }
  }
}

- (void)inputSession:(id)session performInputOperation:(id)operation withResponse:(id)response
{
  operationCopy = operation;
  responseCopy = response;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__UIKBRTIPartner_inputSession_performInputOperation_withResponse___block_invoke;
  aBlock[3] = &unk_1E70FCE28;
  v13 = operationCopy;
  selfCopy = self;
  v15 = responseCopy;
  v9 = responseCopy;
  v10 = operationCopy;
  v11 = _Block_copy(aBlock);
  if (pthread_main_np() == 1)
  {
    v11[2](v11);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

void __66__UIKBRTIPartner_inputSession_performInputOperation_withResponse___block_invoke(id *a1)
{
  v2 = [a1[4] customInfoType];
  v3 = [v2 isEqualToString:@"UIPhysicalKeyboardEvent"];

  v4 = a1[4];
  if (v3)
  {
    v28 = [v4 customInfo];
    v5 = [a1[5] partnerDelegate];
    v6 = [v5 performKeyboardEvent:v28];

    if (a1[6])
    {
      if (v6 && [v28 keyCommandHandlingBeforePublic])
      {
        v7 = [a1[5] partnerDelegate];
        [v7 inputModeSwitcherVisible];
      }

      (*(a1[6] + 2))();
    }

    return;
  }

  if ([v4 actionSelector] && objc_msgSend(a1[4], "actionSelector") == sel_acceptAutocorrectionWithCompletionHandler_requestedByRemoteInputDestination_)
  {
    v16 = [a1[5] partnerDelegate];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __66__UIKBRTIPartner_inputSession_performInputOperation_withResponse___block_invoke_2;
    v30[3] = &unk_1E70F3608;
    v31 = a1[6];
    [v16 acceptAutocorrectionWithCompletionHandler:v30 requestedByRemoteInputDestination:1];

    return;
  }

  v8 = [a1[4] customInfoType];
  v9 = [v8 isEqualToString:@"UIWebKitOperations"];

  if (v9)
  {
    v10 = [a1[4] customInfo];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v12 = [a1[4] customInfo];
    if (isKindOfClass)
    {
      v13 = +[UIKeyboardImpl activeInstance];
      [v13 _handleKeyCommand:v12];
    }

    else
    {
      objc_opt_class();
      v17 = objc_opt_isKindOfClass();

      if ((v17 & 1) == 0)
      {
LABEL_33:
        v25 = a1[6];
        if (v25)
        {
          v26 = *(v25 + 2);

          v26();
        }

        return;
      }

      v12 = [a1[4] customInfo];
      v18 = [v12 objectForKeyedSubscript:@"selector"];
      if (v18)
      {
        v19 = [v12 objectForKeyedSubscript:@"selector"];
        v20 = NSSelectorFromString(v19);
      }

      else
      {
        v20 = 0;
      }

      if (sel_isEqual(v20, sel__handleKeyInputMethodCommandForEvent_canHandleAppKeyCommand_))
      {
        v13 = +[UIKeyboardImpl activeInstance];
        v21 = [v12 objectForKeyedSubscript:@"keyEvent"];
        v22 = [v12 objectForKeyedSubscript:@"canHandleAppKeyCommand"];
        [v13 _handleKeyInputMethodCommandForEvent:v21 canHandleAppKeyCommand:{objc_msgSend(v22, "BOOLValue")}];
      }

      else
      {
        if (!sel_isEqual(v20, sel__handleWebKeyEvent_withEventType_withInputString_withInputStringIgnoringModifiers_))
        {
          goto LABEL_32;
        }

        v13 = [a1[5] partnerDelegate];
        v21 = [v12 objectForKeyedSubscript:@"keyEvent"];
        v22 = [v12 objectForKeyedSubscript:@"webEventType"];
        v23 = [v12 objectForKeyedSubscript:@"inputString"];
        v24 = [v12 objectForKeyedSubscript:@"inputStringIgnoringModifiers"];
        [v13 _handleWebKeyEvent:v21 withEventType:v22 withInputString:v23 withInputStringIgnoringModifiers:v24];
      }
    }

LABEL_32:
    goto LABEL_33;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v27 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v27, OS_LOG_TYPE_FAULT, "Unrecognized event sent to ui host", buf, 2u);
    }
  }

  else
  {
    v14 = *(__UILogGetCategoryCachedImpl("Assert", &UIKBRTICustomInfoTypeWritingToolsOperations_block_invoke_3___s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Unrecognized event sent to ui host", buf, 2u);
    }
  }

  v15 = a1[6];
  if (v15)
  {
    v15[2](v15, 0);
  }
}

uint64_t __66__UIKBRTIPartner_inputSession_performInputOperation_withResponse___block_invoke_2(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2)
    {
      v3 = 4;
    }

    else
    {
      v3 = 8;
    }

    return (*(result + 16))(result, v3);
  }

  return result;
}

- (void)inputSession:(id)session textSuggestionsChanged:(id)changed
{
  changedCopy = changed;
  if (pthread_main_np() == 1)
  {
    partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
    v7 = [UITextSuggestion decodeTextSuggestions:changedCopy];
    [partnerDelegate setSuggestions:v7];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__UIKBRTIPartner_inputSession_textSuggestionsChanged___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v8[4] = self;
    v9 = changedCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

void __54__UIKBRTIPartner_inputSession_textSuggestionsChanged___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) partnerDelegate];
  v2 = [UITextSuggestion decodeTextSuggestions:*(a1 + 40)];
  [v3 setSuggestions:v2];
}

- (void)inputSession:(id)session didAddRTISupplementalLexicon:(id)lexicon
{
  lexiconCopy = lexicon;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__UIKBRTIPartner_inputSession_didAddRTISupplementalLexicon___block_invoke;
  aBlock[3] = &unk_1E7117F48;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  if (pthread_main_np() == 1)
  {
    v6[2](v6, lexiconCopy);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__UIKBRTIPartner_inputSession_didAddRTISupplementalLexicon___block_invoke_2;
    block[3] = &unk_1E70F4A50;
    v9 = v6;
    v8 = lexiconCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __60__UIKBRTIPartner_inputSession_didAddRTISupplementalLexicon___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v10 = [[_UISupplementalLexicon alloc] initWithRTISupplementalLexicon:v3];

  v5 = v10;
  if (v10)
  {
    v6 = [*(a1 + 32) supplementalLexicons];

    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [*(a1 + 32) setSupplementalLexicons:v7];
    }

    v8 = [*(a1 + 32) supplementalLexicons];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v4];
    [v8 setObject:v10 forKey:v9];

    v5 = v10;
  }
}

- (void)inputSession:(id)session didRemoveRTISupplementalLexicon:(id)lexicon
{
  lexiconCopy = lexicon;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__UIKBRTIPartner_inputSession_didRemoveRTISupplementalLexicon___block_invoke;
  aBlock[3] = &unk_1E7117F48;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  if (pthread_main_np() == 1)
  {
    v6[2](v6, lexiconCopy);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__UIKBRTIPartner_inputSession_didRemoveRTISupplementalLexicon___block_invoke_2;
    block[3] = &unk_1E70F4A50;
    v9 = v6;
    v8 = lexiconCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __63__UIKBRTIPartner_inputSession_didRemoveRTISupplementalLexicon___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) supplementalLexicons];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3];
  v8 = [v4 objectForKey:v5];

  if (v8)
  {
    v6 = [*(a1 + 32) supplementalLexicons];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3];
    [v6 removeObjectForKey:v7];
  }
}

- (BOOL)compareWaitingRTIOutputOperationResponseContext:(id)context andExchange:(id)exchange
{
  exchangeCopy = exchange;
  selfCopy = self;
  contextCopy = context;
  objc_sync_enter(selfCopy);
  waitingRTIOutputOperationResponseContext = selfCopy->_waitingRTIOutputOperationResponseContext;

  if (waitingRTIOutputOperationResponseContext == contextCopy)
  {
    objc_storeStrong(&selfCopy->_waitingRTIOutputOperationResponseContext, exchange);
  }

  objc_sync_exit(selfCopy);

  return waitingRTIOutputOperationResponseContext == contextCopy;
}

- (id)exchangeWaitingRTIOutputOperationResponseContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = selfCopy->_waitingRTIOutputOperationResponseContext;
  waitingRTIOutputOperationResponseContext = selfCopy->_waitingRTIOutputOperationResponseContext;
  selfCopy->_waitingRTIOutputOperationResponseContext = contextCopy;
  v8 = contextCopy;

  objc_sync_exit(selfCopy);

  return v6;
}

void __50__UIKBRTIPartner_finishCompletionHandlersIfNeeded__block_invoke()
{
  v0 = [&__block_literal_global_537_2 copy];
  v1 = qword_1ED49F520;
  qword_1ED49F520 = v0;
}

- (void)performTextOperations:(id)operations
{
  operationsCopy = operations;
  customInfoType = [operationsCopy customInfoType];
  if ([customInfoType isEqualToString:@"UIEmojiSearchOperations"])
  {
    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    scene = [v5 scene];
    activationState = [scene activationState];

    v8 = operationsCopy;
    if (activationState)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(UIKBRTIPartner *)self performTextOperations:operationsCopy resultHandler:&__block_literal_global_541];
  v8 = operationsCopy;
LABEL_6:
}

- (void)performTextOperations:(id)operations resultHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  operationsCopy = operations;
  handlerCopy = handler;
  if (!+[UIKeyboard usingEndInputSessionCompletion])
  {
    keyboardTaskSubqueue = [(UIKBRTIPartner *)self exchangeWaitingRTIOutputOperationResponseContext:0];
    if (keyboardTaskSubqueue)
    {
      keyboardOutput = [operationsCopy keyboardOutput];
      [(UIKBRTIPartner *)self setPendingOutputOperation:keyboardOutput];

      handlerCopy[2](handlerCopy, 255);
      if (qword_1ED49F558 != -1)
      {
        dispatch_once(&qword_1ED49F558, &__block_literal_global_559);
      }

      [keyboardTaskSubqueue transferExecutionToMainThreadWithTask:&__block_literal_global_565 breadcrumb:qword_1ED49F550];
      goto LABEL_23;
    }

    if (pthread_main_np() == 1)
    {
      [(UIKBRTIPartner *)self _queued_performTextOperations:operationsCopy resultHandler:handlerCopy];
LABEL_23:

      goto LABEL_24;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__UIKBRTIPartner_performTextOperations_resultHandler___block_invoke_4;
    v15[3] = &unk_1E70FCE28;
    v15[4] = self;
    v16 = operationsCopy;
    v17 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v15);

    v12 = v16;
LABEL_22:

    goto LABEL_23;
  }

  if (pthread_main_np() != 1)
  {
    keyboardTaskSubqueue = [(UIKBRTIPartner *)self keyboardTaskSubqueue];
    if (keyboardTaskSubqueue)
    {
      v11 = _UIKeyboardInputSessionChangeLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v27 = operationsCopy;
        v28 = 2112;
        v29 = keyboardTaskSubqueue;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "Dispatching -_queued_performTextOperations:%p as main-thread task on keyboard task subqueue: %@", buf, 0x16u);
      }

      if (qword_1ED49F538 != -1)
      {
        dispatch_once(&qword_1ED49F538, &__block_literal_global_543);
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __54__UIKBRTIPartner_performTextOperations_resultHandler___block_invoke_3;
      v21[3] = &unk_1E70F5F08;
      v22 = operationsCopy;
      v23 = keyboardTaskSubqueue;
      selfCopy = self;
      v25 = handlerCopy;
      [v23 dispatchAsync:v21 breadcrumb:qword_1ED49F530];

      v12 = v22;
    }

    else
    {
      if (qword_1ED49F548 != -1)
      {
        dispatch_once(&qword_1ED49F548, &__block_literal_global_550);
      }

      partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
      taskQueue = [partnerDelegate taskQueue];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __54__UIKBRTIPartner_performTextOperations_resultHandler___block_invoke_3_554;
      v18[3] = &unk_1E7117168;
      v18[4] = self;
      v19 = operationsCopy;
      v20 = handlerCopy;
      [taskQueue addTask:v18 breadcrumb:qword_1ED49F540];

      v12 = v19;
    }

    goto LABEL_22;
  }

  v8 = _UIKeyboardLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unexpected call to UIKBRTIPartner's -performTextOperations:resultHandler: on main thread.", buf, 2u);
  }

  [(UIKBRTIPartner *)self _queued_performTextOperations:operationsCopy resultHandler:handlerCopy];
LABEL_24:
}

void __54__UIKBRTIPartner_performTextOperations_resultHandler___block_invoke()
{
  v0 = [&__block_literal_global_545 copy];
  v1 = qword_1ED49F530;
  qword_1ED49F530 = v0;
}

uint64_t __54__UIKBRTIPartner_performTextOperations_resultHandler___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _UIKeyboardInputSessionChangeLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Now performing -_queued_performTextOperations:%p as main-thread task on keyboard task subqueue: %@", &v6, 0x16u);
  }

  return [*(a1 + 48) _queued_performTextOperations:*(a1 + 32) resultHandler:*(a1 + 56)];
}

void __54__UIKBRTIPartner_performTextOperations_resultHandler___block_invoke_548()
{
  v0 = [&__block_literal_global_553 copy];
  v1 = qword_1ED49F540;
  qword_1ED49F540 = v0;
}

void __54__UIKBRTIPartner_performTextOperations_resultHandler___block_invoke_3_554(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a2;
  [v2 _queued_performTextOperations:v3 resultHandler:v4];
  [v5 returnExecutionToParent];
}

void __54__UIKBRTIPartner_performTextOperations_resultHandler___block_invoke_557()
{
  v0 = [&__block_literal_global_562 copy];
  v1 = qword_1ED49F550;
  qword_1ED49F550 = v0;
}

- (void)_queued_performTextOperations:(id)operations resultHandler:(id)handler
{
  v233 = *MEMORY[0x1E69E9840];
  operationsCopy = operations;
  handlerCopy = handler;
  inputSourceState = [operationsCopy inputSourceState];

  if (inputSourceState)
  {
    rtiInputSourceState = self->_rtiInputSourceState;
    if (rtiInputSourceState)
    {
      inputSourceState2 = [operationsCopy inputSourceState];
      v11 = [(RTIInputSourceState *)rtiInputSourceState isEqual:inputSourceState2]^ 1;
    }

    else
    {
      v11 = 0;
    }

    inputSourceState3 = [operationsCopy inputSourceState];
    v13 = self->_rtiInputSourceState;
    self->_rtiInputSourceState = inputSourceState3;

    v14 = _UIKeyboardLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v92 = self->_rtiInputSourceState;
      *buf = 138412290;
      v230 = v92;
      _os_log_debug_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEBUG, "Received input source state: %@", buf, 0xCu);
    }
  }

  else
  {
    v11 = 0;
  }

  partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
  targetSessionUUID = [operationsCopy targetSessionUUID];
  if (targetSessionUUID)
  {
    currentSessionIdentifier = [(UIKBRTIPartner *)self currentSessionIdentifier];
    v18 = [targetSessionUUID isEqual:currentSessionIdentifier];

    v19 = v18 ^ 1;
    if (!partnerDelegate)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v19 = 0;
    if (!partnerDelegate)
    {
LABEL_24:
      keyboardOutput = _UIKeyboardLog();
      if (os_log_type_enabled(keyboardOutput, OS_LOG_TYPE_DEFAULT))
      {
        currentSessionIdentifier2 = [(UIKBRTIPartner *)self currentSessionIdentifier];
        *buf = 138412546;
        v230 = targetSessionUUID;
        v231 = 2112;
        v232 = currentSessionIdentifier2;
        _os_log_impl(&dword_188A29000, keyboardOutput, OS_LOG_TYPE_DEFAULT, "Skipping performing textoperation targetsessionid: %@, currentSessionID: %@", buf, 0x16u);
      }

      v40 = 0;
      goto LABEL_119;
    }
  }

  if (v19)
  {
    goto LABEL_24;
  }

  textOperationsFilter = [(UIKBRTIPartner *)self textOperationsFilter];

  if (textOperationsFilter)
  {
    textOperationsFilter2 = [(UIKBRTIPartner *)self textOperationsFilter];
    v22 = (textOperationsFilter2)[2](textOperationsFilter2, operationsCopy);

    if ((v22 & 2) != 0)
    {
      [(UIKBRTIPartner *)self setTextOperationsFilter:0];
    }
  }

  [(UIKBRTIPartner *)self sendAutoFillDidInsertCallbacksWithTextOperations:operationsCopy];
  if (os_variant_has_internal_diagnostics())
  {
    v152 = _UIKeyboardExtendedLog();
    if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v152, OS_LOG_TYPE_DEFAULT, "performing keyboard output", buf, 2u);
    }
  }

  v215 = v11;
  v216 = handlerCopy;
  partnerDelegate2 = [(UIKBRTIPartner *)self partnerDelegate];
  [partnerDelegate2 setPerformingRemoteTextOperations:1];

  self->_isNotifyingDelegateOfRemoteOutputOperation = 1;
  rtiDocumentState = [(UIKBRTIPartner *)self rtiDocumentState];
  canSuggestSupplementalItemsForCurrentSelection = [rtiDocumentState canSuggestSupplementalItemsForCurrentSelection];

  v25 = [operationsCopy editingActionSelector] == 0;
  rtiDocumentState2 = [(UIKBRTIPartner *)self rtiDocumentState];
  selectionRangeToAssert = [operationsCopy selectionRangeToAssert];
  v29 = [rtiDocumentState2 deltaForSelectionRange:{selectionRangeToAssert, v28}];
  v31 = v30;

  partnerDelegate3 = [(UIKBRTIPartner *)self partnerDelegate];
  textToAssert = [operationsCopy textToAssert];
  LODWORD(v25) = [partnerDelegate3 assertTextForRemoteDocument:textToAssert withSelectionDelta:v29 updatingSelection:{v31, v25}];

  if (v25)
  {
    v34 = 2;
  }

  else
  {
    v34 = 0;
  }

  keyboardOutput = [operationsCopy keyboardOutput];
  attributedInsertionText = [operationsCopy attributedInsertionText];
  insertionText = [keyboardOutput insertionText];
  if ([insertionText length])
  {
    v38 = [attributedInsertionText length];

    if (v38)
    {
      [keyboardOutput setInsertionText:0];
    }
  }

  else
  {
  }

  v41 = [(UIKBRTIPartner *)self _performKeyboardOutputOperations:operationsCopy];
  if ((v41 & 1) != 0 && +[UIKeyboard inputUIOOP])
  {
    v42 = +[UIKeyboardImpl sharedInstance];
    [v42 triggerPendingKeyup];
  }

  selfCopy = self;
  if (attributedInsertionText)
  {
    [partnerDelegate insertAttributedText:attributedInsertionText];
    v43 = 2;
  }

  else
  {
    v43 = v34 | (2 * (v41 & 1u));
  }

  styledIntermediateText = [operationsCopy styledIntermediateText];

  v214 = attributedInsertionText;
  v219 = keyboardOutput;
  if (styledIntermediateText)
  {
    v45 = v41;
    v208 = targetSessionUUID;
    styledIntermediateText2 = [operationsCopy styledIntermediateText];
    customInfoType = [operationsCopy customInfoType];
    v48 = [customInfoType isEqualToString:@"UIKBRTICustomInfoInlineCompletionAsMarkedText"];

    displayString = [styledIntermediateText2 displayString];
    selectedRange = [styledIntermediateText2 selectedRange];
    v52 = v51;
    inputString = [styledIntermediateText2 inputString];
    searchString = [styledIntermediateText2 searchString];
    if (v48)
    {
      [partnerDelegate setInlineCompletionAsMarkedText:displayString selectedRange:selectedRange inputString:v52 searchString:{inputString, searchString}];
    }

    else
    {
      [partnerDelegate setAttributedMarkedText:displayString selectedRange:selectedRange inputString:v52 searchString:{inputString, searchString}];
    }

    cursorVisibility = [styledIntermediateText2 cursorVisibility];
    v41 = v45;
    if (cursorVisibility)
    {
      [partnerDelegate setCaretVisible:cursorVisibility == 1];
    }

    v43 = 2;
    targetSessionUUID = v208;
    keyboardOutput = v219;
    goto LABEL_43;
  }

  intermediateText = [operationsCopy intermediateText];

  if (intermediateText)
  {
    styledIntermediateText2 = [operationsCopy intermediateText];
    v56 = [partnerDelegate assertIntermediateText:styledIntermediateText2];
    v43 |= 2 * (v56 & 1u);
    v41 |= v56;
LABEL_43:
  }

  if ([operationsCopy editingActionSelector])
  {
    customInfoType2 = [operationsCopy customInfoType];
    v59 = [customInfoType2 isEqualToString:@"UIKBRTICustomInfoTypeKeyboardOperations"];

    if ((v59 & 1) == 0)
    {
      [partnerDelegate performTextOperationActionSelector:{objc_msgSend(operationsCopy, "editingActionSelector")}];
      v43 = 3;
    }
  }

  [operationsCopy enumerateImagesAndUserInfosUsingBlock:&__block_literal_global_568];
  if (objc_opt_respondsToSelector())
  {
    v227[0] = MEMORY[0x1E69E9820];
    v227[1] = 3221225472;
    v227[2] = __62__UIKBRTIPartner__queued_performTextOperations_resultHandler___block_invoke_2;
    v227[3] = &unk_1E7117F90;
    v227[4] = selfCopy;
    [operationsCopy enumerateAdaptiveImageGlyphsUsingBlock:v227];
  }

  v220 = v43;
  if (objc_opt_respondsToSelector())
  {
    v226[0] = MEMORY[0x1E69E9820];
    v226[1] = 3221225472;
    v226[2] = __62__UIKBRTIPartner__queued_performTextOperations_resultHandler___block_invoke_3;
    v226[3] = &unk_1E7117FB8;
    v226[4] = selfCopy;
    [operationsCopy enumerateTextAttachmentsUsingBlock:v226];
  }

  inputSourceState4 = [operationsCopy inputSourceState];
  inputMode = [inputSourceState4 inputMode];

  v218 = inputMode;
  if (inputMode)
  {
    v62 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v62 currentInputMode];
    identifier = [currentInputMode identifier];

    if (([(RTIInputSourceState *)identifier isEqualToString:inputMode]& 1) == 0)
    {
      v65 = keyboardOutput;
      v66 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:inputMode];
      v67 = _UIKeyboardLog();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v230 = identifier;
        v231 = 2112;
        v232 = v218;
        _os_log_debug_impl(&dword_188A29000, v67, OS_LOG_TYPE_DEBUG, "Detected an input mode change: %@->%@", buf, 0x16u);
      }

      v68 = +[UIKeyboardImpl activeInstance];
      [v68 setKeyboardInputMode:v66 userInitiated:0];

      keyboardOutput = v65;
    }
  }

  customInfoType3 = [operationsCopy customInfoType];
  customInfo = [operationsCopy customInfo];
  v217 = customInfo;
  if ([customInfoType3 isEqualToString:@"UIDictationRemoteTextOperations"])
  {
    v206 = v41;
    v71 = targetSessionUUID;
    v72 = customInfo;
    v73 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"selector"];
    if (v73)
    {
      v74 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"selector"];
      v75 = NSSelectorFromString(v74);
    }

    else
    {
      v75 = 0;
    }

    if (sel_isEqual(v75, sel_updateLastHypothesis_WithNewHypothesis_))
    {
      inputDelegate = +[UIDictationController sharedInstance];
      v87 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"lastHypothesis"];
      v88 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"newHypothesis"];
      [inputDelegate updateLastHypothesis:v87 WithNewHypothesis:v88];

      targetSessionUUID = v71;
LABEL_102:

      v41 = v206;
LABEL_103:

LABEL_104:
      keyboardOutput = v219;
LABEL_105:
      v76 = selfCopy;
      goto LABEL_106;
    }

    targetSessionUUID = v71;
    if (sel_isEqual(v75, sel_resetLastHypothesis))
    {
      inputDelegate = +[UIDictationController sharedInstance];
      [inputDelegate resetLastHypothesis];
      goto LABEL_102;
    }

    if (sel_isEqual(v75, sel_setCandidateDictationSerializableResults_))
    {
      inputDelegate = +[UIDictationController sharedInstance];
      v91 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"candidateDictationSerializableResults"];
      [inputDelegate setCandidateDictationSerializableResults:v91];
LABEL_101:

      goto LABEL_102;
    }

    if (sel_isEqual(v75, sel_postNotificationName_object_userInfo_))
    {
      inputDelegate = +[UIDictationController sharedInstance];
      v91 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"notificationName"];
      v96 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"userInfo"];
      [inputDelegate postNotificationName:v91 userInfo:v96];
LABEL_100:

      goto LABEL_101;
    }

    if (sel_isEqual(v75, sel_insertSerializedDictationResult_withCorrectionIdentifier_))
    {
      inputDelegate = +[UIDictationController sharedInstance];
      v91 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"dictationResult"];
      v96 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"correctionIdentifier"];
      [inputDelegate insertSerializedDictationResult:v91 withCorrectionIdentifier:v96];
      goto LABEL_100;
    }

    if (sel_isEqual(v75, sel_startLandingIfNecessary))
    {
      inputDelegate = +[UIDictationLandingView sharedInstance];
      [inputDelegate startLandingIfNecessary];
      goto LABEL_102;
    }

    if (sel_isEqual(v75, sel_stopLanding))
    {
      inputDelegate = +[UIDictationLandingView sharedInstance];
      [inputDelegate stopLanding];
      goto LABEL_102;
    }

    if (sel_isEqual(v75, sel_stopLandingForError))
    {
      inputDelegate = +[UIDictationLandingView sharedInstance];
      [inputDelegate stopLandingForError];
      goto LABEL_102;
    }

    if (sel_isEqual(v75, sel_resignFirstResponderWhenIdleIfNeeded))
    {
      inputDelegate = +[UIDictationController sharedInstance];
      [inputDelegate resignFirstResponderWhenIdleIfNeeded];
      goto LABEL_102;
    }

    if (sel_isEqual(v75, sel_setRemoteDictationPopover_))
    {
      inputDelegate = +[UIKeyboardImpl sharedInstance];
      [inputDelegate setRemoteDictationPopover:v72];
      goto LABEL_102;
    }

    if (sel_isEqual(v75, sel_setKeyboardMinimizedByDictation_))
    {
      inputDelegate = +[UIKeyboardImpl sharedInstance];
      v91 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"minimized"];
      [inputDelegate setKeyboardMinimizedByDictation:{objc_msgSend(v91, "BOOLValue")}];
      goto LABEL_101;
    }

    if (sel_isEqual(v75, sel_setShadowState_))
    {
      inputDelegate = +[UIDictationController sharedInstance];
      v91 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"state"];
      [inputDelegate setShadowState:{objc_msgSend(v91, "integerValue")}];
      goto LABEL_101;
    }

    v212 = operationsCopy;
    if (sel_isEqual(v75, sel_presentDictationMenuTip_))
    {
      inputDelegate = +[UIKeyboardImpl activeInstance];
      [inputDelegate presentDictationMenuTip:v72];
      goto LABEL_253;
    }

    if (sel_isEqual(v75, sel_dismissDictationMenu))
    {
      inputDelegate = +[UIKeyboardImpl activeInstance];
      [inputDelegate dismissDictationMenu];
      goto LABEL_253;
    }

    if (sel_isEqual(v75, sel_setUsingTypeAndTalk_))
    {
      inputDelegate = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"usingTypeAndTalk"];
      bOOLValue = [inputDelegate BOOLValue];
      v167 = +[UIKeyboardInputMode dictationInputMode];
      [v167 setUsingTypeAndTalk:bOOLValue];
    }

    else
    {
      if (!sel_isEqual(v75, sel_setIsCurrentDictationLanguageOnDevice_))
      {
        if (sel_isEqual(v75, sel_updateCaretRectInWindowIfNeeded))
        {
          v169 = +[UIKeyboardImpl activeInstance];
          inputDelegate = [v169 inputDelegate];

          textInputView = [inputDelegate textInputView];
          selectedTextRange = [inputDelegate selectedTextRange];
          start = [selectedTextRange start];
          [inputDelegate caretRectForPosition:start];
          [textInputView convertRect:0 toView:?];
          v174 = v173;

          v175 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"caretRectInWindow.y"];
          [v175 floatValue];
          v177 = v176;

          if (vabdd_f64(v177, v174) > 2.0)
          {
            [(UIKBRTIPartner *)selfCopy documentStateChanged];
          }

          goto LABEL_253;
        }

        if (sel_isEqual(v75, sel_setCurrentInstrumentationContext_))
        {
          inputDelegate = +[UIDictationController sharedInstance];
          v183 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"instrumentationContext"];
          [inputDelegate setCurrentInstrumentationContext:v183];
        }

        else if (sel_isEqual(v75, sel_setLocalSpeechRecognitionForced_))
        {
          inputDelegate = +[UIDictationController sharedInstance];
          v183 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"forceOfflineRecognition"];
          [inputDelegate setLocalSpeechRecognitionForced:v183 != 0];
        }

        else if (sel_isEqual(v75, sel_setInteractionIdentifier_))
        {
          inputDelegate = +[UIDictationController sharedInstance];
          v183 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"interactionIdentifier"];
          [inputDelegate setInteractionIdentifier:v183];
        }

        else
        {
          if (sel_isEqual(v75, sel_didRecognizeCommandWithIdentifier_strings_parameters_voiceCommandUUID_allVisibleRangeRects_currentGazePoint_))
          {
            inputDelegate = +[UIDictationController sharedInstance];
            v205 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"identifier"];
            v193 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"strings"];
            v194 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"parameters"];
            v195 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"voiceCommandUUID"];
            v196 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"allVisibleRangeRects"];
            v197 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"currentGazePoint"];
            [inputDelegate didRecognizeCommandWithIdentifier:v205 strings:v193 parameters:v194 voiceCommandUUID:v195 allVisibleRangeRects:v196 currentGazePoint:v197];

            goto LABEL_253;
          }

          if (sel_isEqual(v75, sel_setIdleTimerDisabled_forReason_))
          {
            inputDelegate = +[UIDictationController sharedInstance];
            v183 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"disabled"];
            bOOLValue2 = [v183 BOOLValue];
            v199 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"reason"];
            [inputDelegate setIdleTimerDisabled:bOOLValue2 forReason:v199];
          }

          else
          {
            if (!sel_isEqual(v75, sel_showLowStorageUserAlertWithLanguage_))
            {
              if (sel_isEqual(v75, sel_beginUndoGroupingIfNecessary_))
              {
                inputDelegate = +[UIDictationController sharedInstance];
                [inputDelegate _beginUndoGroupingIfNecessary];
              }

              else
              {
                if (!sel_isEqual(v75, sel_endUndoGroupingIfNecessary_))
                {
                  targetSessionUUID = v71;
                  v41 = v206;
                  if (!sel_isEqual(v75, sel_setHaveLeakedPartialResultForCommandUtterance_))
                  {
                    goto LABEL_103;
                  }

                  inputDelegate = +[UIDictationController sharedInstance];
                  v91 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"haveLeakedPartialResultForCommandUtterance"];
                  [inputDelegate _setHaveLeakedPartialResultForCommandUtterance:{objc_msgSend(v91, "BOOLValue")}];
                  goto LABEL_101;
                }

                inputDelegate = +[UIDictationController sharedInstance];
                [inputDelegate _endUndoGroupingIfNecessary];
              }

LABEL_253:
              targetSessionUUID = v71;
              operationsCopy = v212;
              goto LABEL_102;
            }

            inputDelegate = +[UIDictationController sharedInstance];
            v200 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"language"];
            v183 = v200;
            if (v200)
            {
              v201 = v200;
            }

            else
            {
              v201 = &stru_1EFB14550;
            }

            [inputDelegate showLowStorageUserAlertWithLanguage:v201];
          }
        }

        goto LABEL_253;
      }

      inputDelegate = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"isCurrentDictationLanguageOnDevice"];
      bOOLValue3 = [inputDelegate BOOLValue];
      v167 = +[UIKeyboardInputMode dictationInputMode];
      [v167 setIsCurrentDictationLanguageOnDevice:bOOLValue3];
    }

    goto LABEL_253;
  }

  if (![customInfoType3 isEqualToString:@"_UIKeyboardIndirectTextSelectionGestureState"])
  {
    if ([customInfoType3 isEqualToString:@"UITextSuggestion"])
    {
      v79 = customInfo;
      v76 = selfCopy;
      inputDelegate2 = [(UIKBRTIPartner *)selfCopy inputDelegate];
      [(UIKBRTIPartner *)selfCopy partnerDelegate];
      v81 = partnerDelegate;
      v82 = targetSessionUUID;
      v83 = customInfoType3;
      v85 = v84 = v41;
      [v85 insertCustomTextSuggestion:v79];

      v41 = v84;
      customInfoType3 = v83;
      targetSessionUUID = v82;
      partnerDelegate = v81;
      v220 |= 2uLL;

      goto LABEL_106;
    }

    if ([customInfoType3 isEqualToString:@"UIKBRTICustomInfoTypeWritingToolsOperations"])
    {
      v89 = keyboardOutput;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v90 = NSSelectorFromString(customInfo);
      }

      else
      {
        v90 = 0;
      }

      inputDelegate3 = [(UIKBRTIPartner *)selfCopy inputDelegate];
      if (inputDelegate3 && v90 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        if (sel_isEqual(v90, sel_showWritingTools_))
        {
          _UIPerformVoidSelector1(inputDelegate3, v90);
        }

        else if (sel_isEqual(v90, sel__startProofreadingFromCandidateBar) || sel_isEqual(v90, sel__startRewritingFromCandidateBar))
        {
          if (dyld_program_sdk_at_least())
          {
            [inputDelegate3 v90];
          }

          else
          {
            [inputDelegate3 performSelector_];
          }
        }

        v220 = v43 | 2;
      }

      else
      {
        v98 = _UIKeyboardLog();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v230 = v217;
          v231 = 2112;
          v232 = inputDelegate3;
          _os_log_error_impl(&dword_188A29000, v98, OS_LOG_TYPE_ERROR, "Unable to trigger WritingTools operation %@ through RTI in text input %@.", buf, 0x16u);
        }
      }

      keyboardOutput = v89;
      goto LABEL_105;
    }

    v207 = v41;
    if ([customInfoType3 isEqualToString:@"UIStickerRemoteInputOperations"])
    {
      v93 = _UIStickerCreateStickerFromTextInputPayload(customInfo);
      v76 = selfCopy;
      inputDelegate4 = [(UIKBRTIPartner *)selfCopy inputDelegate];
      partnerDelegate4 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
      [partnerDelegate4 insertSticker:v93];

      v220 |= 2uLL;
      goto LABEL_76;
    }

    if ([customInfoType3 isEqualToString:@"UIKBRTICustomInfoTypeAutofill"])
    {
      v99 = keyboardOutput;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v100 = customInfo;
      }

      else
      {
        v100 = 0;
      }

      v101 = v100;
      v102 = [(RTIInputSourceState *)v101 objectForKeyedSubscript:@"selector"];
      objc_opt_class();
      v103 = 0;
      if (objc_opt_isKindOfClass())
      {
        v104 = [(RTIInputSourceState *)v101 objectForKeyedSubscript:@"selector"];
        v103 = NSSelectorFromString(v104);
      }

      if (sel_isEqual(v103, sel_handleEventFromRemoteSource_insertAutofillContent_))
      {
        partnerDelegate6 = [(RTIInputSourceState *)v101 objectForKeyedSubscript:@"autofillContent"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          partnerDelegate5 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
          [partnerDelegate5 handleEventFromRemoteSource_insertAutofillContent:partnerDelegate6];
          goto LABEL_161;
        }

        partnerDelegate5 = _UIKeyboardLog();
        if (!os_log_type_enabled(partnerDelegate5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_161;
        }

        *buf = 0;
        v125 = "Value for 'autofillContent' is not a dictionary (customInfoType: Autofill)";
      }

      else
      {
        if (!sel_isEqual(v103, sel_handleEventFromRemoteSource_autoFillAuthentication_))
        {
          if (sel_isEqual(v103, sel_handleEventFromRemoteSource_autoFillIsMenuPresented_))
          {
            partnerDelegate6 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
            v126 = [(RTIInputSourceState *)v101 objectForKeyedSubscript:@"isMenuPresented"];
            -[NSObject handleEventFromRemoteSource_autoFillIsMenuPresented:](partnerDelegate6, "handleEventFromRemoteSource_autoFillIsMenuPresented:", [v126 BOOLValue]);
          }

          else
          {
            if (!sel_isEqual(v103, sel_handleEventFromRemoteSource_autoFillIsModalUIPresented_))
            {
              partnerDelegate6 = _UIKeyboardLog();
              if (os_log_type_enabled(partnerDelegate6, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_188A29000, partnerDelegate6, OS_LOG_TYPE_ERROR, "Unexpected value for 'selector' (customInfoType: Autofill)", buf, 2u);
              }

              goto LABEL_176;
            }

            partnerDelegate6 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
            v126 = [(RTIInputSourceState *)v101 objectForKeyedSubscript:@"isModalUIPresented"];
            -[NSObject handleEventFromRemoteSource_autoFillIsModalUIPresented:](partnerDelegate6, "handleEventFromRemoteSource_autoFillIsModalUIPresented:", [v126 BOOLValue]);
          }

LABEL_176:
          keyboardOutput = v99;
          v41 = v207;
          goto LABEL_105;
        }

        partnerDelegate6 = [(RTIInputSourceState *)v101 objectForKeyedSubscript:@"isAuthenticating"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([partnerDelegate6 BOOLValue])
          {
            v121 = selfCopy;
            v122 = targetSessionUUID;
          }

          else
          {
            v121 = selfCopy;
            v122 = 0;
          }

          [(UIKBRTIPartner *)v121 setAuthenticatingSessionIdentifier:v122];
          goto LABEL_176;
        }

        partnerDelegate5 = _UIKeyboardLog();
        if (!os_log_type_enabled(partnerDelegate5, OS_LOG_TYPE_ERROR))
        {
LABEL_161:

          goto LABEL_176;
        }

        *buf = 0;
        v125 = "Value for 'isAuthenticating' is not a NSNumber (customInfoType: Autofill)";
      }

      _os_log_error_impl(&dword_188A29000, partnerDelegate5, OS_LOG_TYPE_ERROR, v125, buf, 2u);
      goto LABEL_161;
    }

    if ([customInfoType3 isEqualToString:@"UISupplementalLexiconOperations"])
    {
      v117 = customInfo;
      v118 = [(RTIInputSourceState *)v117 objectForKeyedSubscript:@"selector"];
      if (v118)
      {
        v119 = [(RTIInputSourceState *)v117 objectForKeyedSubscript:@"selector"];
        v120 = NSSelectorFromString(v119);
      }

      else
      {
        v120 = 0;
      }

      if (sel_isEqual(v120, sel_handleEventFromRemoteSource_insertSupplementalCandidate_textToCommit_))
      {
        partnerDelegate8 = [(RTIInputSourceState *)v117 objectForKeyedSubscript:@"candidate"];
        v131 = [(RTIInputSourceState *)v117 objectForKeyedSubscript:@"textToCommit"];
        objc_opt_class();
        keyboardOutput = v219;
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            partnerDelegate7 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
            [partnerDelegate7 handleEventFromRemoteSource_insertSupplementalCandidate:partnerDelegate8 textToCommit:v131];

            v220 |= 2uLL;
          }
        }
      }

      else
      {
        keyboardOutput = v219;
        if (!sel_isEqual(v120, sel_handleEventFromRemoteSource_insertionPointEnteredText_withSupplementalCandidate_))
        {
          if (sel_isEqual(v120, sel_handleEventFromRemoteSource_insertionPointExitedTextWithSupplementalItems))
          {
            partnerDelegate8 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
            [partnerDelegate8 handleEventFromRemoteSource_insertionPointExitedTextWithSupplementalItems];
          }

          else
          {
            if (sel_isEqual(v120, sel_handleEventFromRemoteSource_chooseSupplementalItem_toReplaceText_))
            {
              partnerDelegate8 = [(RTIInputSourceState *)v117 objectForKeyedSubscript:@"supplementalItems"];
              v131 = [(RTIInputSourceState *)v117 objectForKeyedSubscript:@"textToReplace"];
              v204 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(partnerDelegate8, "count")}];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v202 = v131;
                v203 = partnerDelegate8;
                v209 = targetSessionUUID;
                v224 = 0u;
                v225 = 0u;
                v222 = 0u;
                v223 = 0u;
                v144 = partnerDelegate8;
                v145 = [v144 countByEnumeratingWithState:&v222 objects:v228 count:16];
                if (v145)
                {
                  v146 = v145;
                  v147 = *v223;
                  do
                  {
                    for (i = 0; i != v146; ++i)
                    {
                      if (*v223 != v147)
                      {
                        objc_enumerationMutation(v144);
                      }

                      v149 = *(*(&v222 + 1) + 8 * i);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v150 = supplementalItem([v149 identifier]);
                        if (v150)
                        {
                          [v204 addObject:v150];
                        }
                      }
                    }

                    v146 = [v144 countByEnumeratingWithState:&v222 objects:v228 count:16];
                  }

                  while (v146);
                }

                targetSessionUUID = v209;
                keyboardOutput = v219;
                v131 = v202;
                partnerDelegate8 = v203;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v204 count])
              {
                partnerDelegate9 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
                [partnerDelegate9 handleEventFromRemoteSource_chooseSupplementalItem:v204 toReplaceText:v131];

                v220 |= 2uLL;
              }

              goto LABEL_201;
            }

            if (!sel_isEqual(v120, sel_handleEventFromRemoteSource_cancelChooseSupplementalItemToInsert))
            {
              goto LABEL_203;
            }

            partnerDelegate8 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
            [partnerDelegate8 handleEventFromRemoteSource_cancelChooseSupplementalItemToInsert];
          }

LABEL_202:

LABEL_203:
          goto LABEL_105;
        }

        partnerDelegate8 = [(RTIInputSourceState *)v117 objectForKeyedSubscript:@"text"];
        v131 = [(RTIInputSourceState *)v117 objectForKeyedSubscript:@"candidate"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            partnerDelegate10 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
            [partnerDelegate10 handleEventFromRemoteSource_insertionPointEnteredText:partnerDelegate8 withSupplementalCandidate:v131];
          }
        }
      }

LABEL_201:

      goto LABEL_202;
    }

    if ([customInfoType3 isEqualToString:@"UIPhysicalKeyboardEvent"])
    {
      v123 = customInfo;
      v76 = selfCopy;
      partnerDelegate11 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
      [partnerDelegate11 performKeyboardEvent:v123];

LABEL_145:
      goto LABEL_106;
    }

    if ([customInfoType3 isEqualToString:@"UIKBRTICustomInfoTypeDeleteAction"])
    {
      v127 = customInfo;
      v76 = selfCopy;
      partnerDelegate11 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
      integerValue = [(RTIInputSourceState *)v127 integerValue];

      v129 = integerValue;
      v41 = v207;
      [partnerDelegate11 handleAutoDeleteContinuationOnDestinationWithDeletionCount:v129];
      goto LABEL_145;
    }

    if ([customInfoType3 isEqualToString:@"UIWebKitOperations"])
    {
      v134 = targetSessionUUID;
      v135 = customInfo;
      v136 = [(RTIInputSourceState *)v135 objectForKeyedSubscript:@"selector"];
      if (v136)
      {
        v137 = [(RTIInputSourceState *)v135 objectForKeyedSubscript:@"selector"];
        v138 = NSSelectorFromString(v137);
      }

      else
      {
        v138 = 0;
      }

      if (sel_isEqual(v138, sel__handleWebKeyEvent_withIndex_inInputString_))
      {
        v155 = [(RTIInputSourceState *)v135 objectForKeyedSubscript:@"event"];
        v156 = [(RTIInputSourceState *)v135 objectForKeyedSubscript:@"index"];
        unsignedIntegerValue = [v156 unsignedIntegerValue];

        v158 = [(RTIInputSourceState *)v135 objectForKeyedSubscript:@"inputString"];
        v159 = +[UIKeyboardImpl activeInstance];
        [v159 _handleWebKeyEvent:v155 withIndex:unsignedIntegerValue inInputString:v158];
        targetSessionUUID = v134;
        v41 = v207;
      }

      else
      {
        isEqual = sel_isEqual(v138, sel__handleWebKeyEvent_withEventType_withInputString_withInputStringIgnoringModifiers_);
        targetSessionUUID = v134;
        v41 = v207;
        if (!isEqual)
        {
LABEL_220:

          goto LABEL_104;
        }

        v155 = [(RTIInputSourceState *)v135 objectForKeyedSubscript:@"keyEvent"];
        v161 = [(RTIInputSourceState *)v135 objectForKeyedSubscript:@"webEventType"];
        unsignedIntegerValue2 = [v161 unsignedIntegerValue];

        v162 = [(RTIInputSourceState *)v135 objectForKeyedSubscript:@"inputString"];
        v159 = [(RTIInputSourceState *)v135 objectForKeyedSubscript:@"inputStringIgnoringModifiers"];
        v163 = +[UIKeyboardImpl activeInstance];
        [v163 _handleWebKeyEvent:v155 withEventType:unsignedIntegerValue2 withInputString:v162 withInputStringIgnoringModifiers:v159];

        v158 = v162;
      }

      goto LABEL_220;
    }

    if ([customInfoType3 isEqualToString:@"UIEmojiSearchOperations"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue4 = [(RTIInputSourceState *)customInfo BOOLValue];
        v140 = +[UIKeyboardImpl activeInstance];
        inputDelegateManager = [v140 inputDelegateManager];
        [inputDelegateManager setShouldRespectForwardingInputDelegate:bOOLValue4];

        v41 = v207;
      }

      v142 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      remoteInputViewHost = [v142 remoteInputViewHost];

      [remoteInputViewHost updateInputViewsIfNecessary];
      goto LABEL_105;
    }

    if ([customInfoType3 isEqualToString:@"UIKBRTICustomInfoTypeUpdateInputMode"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v153 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:customInfo];
        v154 = +[UIKeyboardImpl activeInstance];
        [v154 setKeyboardInputMode:v153 userInitiated:1];
      }

      goto LABEL_105;
    }

    v76 = selfCopy;
    if ([customInfoType3 isEqualToString:@"UIKBRTICustomInfoTypeTypologyLogOperations"])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_77;
      }

      v93 = +[UIKeyboardImpl activeInstance];
      [v93 presentKeyboardFeedbackAssistantViewControllerForLogURL:customInfo];
LABEL_76:

LABEL_77:
      v41 = v207;
      goto LABEL_106;
    }

    v211 = customInfoType3;
    if ([customInfoType3 isEqualToString:@"UIKBRTICustomInfoTypeKeyboardOperations"])
    {
      if (sel_isEqual([operationsCopy editingActionSelector], sel_setFloating_))
      {
        [UIKeyboardImpl setFloating:[(RTIInputSourceState *)customInfo BOOLValue]];
        goto LABEL_249;
      }

      if (sel_isEqual([operationsCopy editingActionSelector], sel_updateTextInputKeyboardSource_))
      {
        partnerDelegate12 = +[UIKeyboardImpl activeInstance];
        [partnerDelegate12 updateTextInputKeyboardSource:customInfo];
        goto LABEL_248;
      }

      if (sel_isEqual([operationsCopy editingActionSelector], sel_becomeFirstResponderAndMakeVisible_))
      {
        partnerDelegate12 = +[UIKeyboardImpl activeInstance];
        [partnerDelegate12 becomeFirstResponderAndMakeVisible:{-[RTIInputSourceState BOOLValue](customInfo, "BOOLValue")}];
        goto LABEL_248;
      }

      if (sel_isEqual([operationsCopy editingActionSelector], sel_resignFirstResponder))
      {
        partnerDelegate12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        responder = [partnerDelegate12 responder];
        [responder resignFirstResponder];
      }

      else
      {
        if (sel_isEqual([operationsCopy editingActionSelector], sel_postNotificationName_))
        {
          v178 = MEMORY[0x1E696AD88];
          v179 = customInfo;
          defaultCenter = [v178 defaultCenter];
          v181 = [(RTIInputSourceState *)v179 objectForKeyedSubscript:@"name"];
          v182 = [(RTIInputSourceState *)v179 objectForKeyedSubscript:@"objecrt"];

          [defaultCenter postNotificationName:v181 object:v182];
          goto LABEL_249;
        }

        if (sel_isEqual([operationsCopy editingActionSelector], sel_setIsExtended_))
        {
          partnerDelegate12 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
          [partnerDelegate12 setCandidateDisplayIsExtended:{-[RTIInputSourceState BOOLValue](customInfo, "BOOLValue")}];
          goto LABEL_248;
        }

        [operationsCopy editingActionSelector];
        if (objc_opt_respondsToSelector())
        {
          +[UIAssistantBarButtonItemProvider performSelector:](UIAssistantBarButtonItemProvider, "performSelector:", [operationsCopy editingActionSelector]);
          goto LABEL_249;
        }

        if (sel_isEqual([operationsCopy editingActionSelector], sel_setShiftStatesNeededInDestination_autoShifted_shiftLocked_))
        {
          customInfo2 = [operationsCopy customInfo];
          v185 = customInfo2;
          if (customInfo2)
          {
            v186 = [customInfo2 objectForKeyedSubscript:@"autoShift"];
            bOOLValue5 = [v186 BOOLValue];

            v188 = [v185 objectForKeyedSubscript:@"shiftLocked"];
            bOOLValue6 = [v188 BOOLValue];

            v190 = [v185 objectForKeyedSubscript:@"shift"];
            bOOLValue7 = [v190 BOOLValue];

            partnerDelegate13 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
            [partnerDelegate13 setShiftStatesNeededInDestination:bOOLValue7 autoShifted:bOOLValue5 shiftLocked:bOOLValue6];
          }

          goto LABEL_249;
        }

        if (!sel_isEqual([operationsCopy editingActionSelector], sel_clearKeyboardSnapshot))
        {
LABEL_249:
          v41 = v207;
          customInfoType3 = v211;
          goto LABEL_106;
        }

        partnerDelegate12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        responder = [partnerDelegate12 existingContainerRootController];
        [responder clearKeyboardSnapshot];
      }
    }

    else
    {
      if (![customInfoType3 isEqualToString:@"UIKBRTICustomInfoTypeEmojiCreationOperations"])
      {
        if (![customInfoType3 isEqualToString:@"UIKBRTICustomInfoTypeSmartReplyCandidateOperations"])
        {
          goto LABEL_249;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_249;
        }

        partnerDelegate12 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
        [partnerDelegate12 startSmartReplyWritingToolWithParams:customInfo];
        goto LABEL_248;
      }

      if (!sel_isEqual([operationsCopy editingActionSelector], sel_presentEmojiGenerationWithInputString_))
      {
        goto LABEL_249;
      }

      partnerDelegate12 = [(RTIInputSourceState *)customInfo objectForKeyedSubscript:@"inputString"];
      responder = [(UIKBRTIPartner *)selfCopy partnerDelegate];
      [responder presentEmojiGenerationWithInputString:partnerDelegate12];
    }

LABEL_248:
    goto LABEL_249;
  }

  v76 = selfCopy;
  partnerDelegate14 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
  [partnerDelegate14 setPerformingRemoteTextOperations:0];

  selfCopy->_isNotifyingDelegateOfRemoteOutputOperation = 0;
  [partnerDelegate handleRemoteIndirectGestureWithState:customInfo];
  partnerDelegate15 = [(UIKBRTIPartner *)selfCopy partnerDelegate];
  [partnerDelegate15 setPerformingRemoteTextOperations:1];

  selfCopy->_isNotifyingDelegateOfRemoteOutputOperation = 1;
LABEL_106:
  v203 = [(UIKBRTIPartner *)v76 _performTextCheckingAnnotationOperations:operationsCopy, v202, v203];
  v108 = 2;
  if (!v203)
  {
    v108 = 0;
  }

  v40 = v108 | v220;
  [partnerDelegate _updateCanSuggestSupplementalItemsForCurrentSelection];
  canSuggestSupplementalItemsForCurrentSelection2 = [partnerDelegate canSuggestSupplementalItemsForCurrentSelection];
  if (canSuggestSupplementalItemsForCurrentSelection != canSuggestSupplementalItemsForCurrentSelection2)
  {
    [(UIKBRTIPartner *)v76 forwardEventToRemoteSource_canSuggestSupplementalItemsForCurrentSelection:canSuggestSupplementalItemsForCurrentSelection2];
  }

  [partnerDelegate provideAutoFillTypingUpdatesIfNecessary];
  v76->_isNotifyingDelegateOfRemoteOutputOperation = 0;
  partnerDelegate16 = [(UIKBRTIPartner *)v76 partnerDelegate];
  [partnerDelegate16 setPerformingRemoteTextOperations:0];

  if ((v40 & 2) != 0 || (v41 & 2) != 0)
  {
    [(UIKBRTIPartner *)v76 documentStateChanged:(v41 & 2) == 0];
  }

  if ((v215 | (v40 >> 1)))
  {
    v111 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    existingContainerRootController = [v111 existingContainerRootController];
    presentedViewController = [existingContainerRootController presentedViewController];

    v114 = [presentedViewController conformsToProtocol:&unk_1F005A9D0];
    if (presentedViewController && (v114 & 1) == 0)
    {
      v115 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      existingContainerRootController2 = [v115 existingContainerRootController];
      [existingContainerRootController2 dismissViewControllerAnimated:1 completion:0];
    }
  }

  handlerCopy = v216;
LABEL_119:

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v40);
  }
}

void __62__UIKBRTIPartner__queued_performTextOperations_resultHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  if ([a3 isEqualToString:@"com.apple.png-sticker"])
  {
    v7 = [v6 objectForKeyedSubscript:@"url"];
    v8 = [v6 objectForKeyedSubscript:@"accessibilityLabel"];
    v9 = +[UIKeyboardMediaController sharedKeyboardMediaController];
    [v9 stageStickerWithFileHandle:v10 url:v7 accessibilityLabel:v8];
  }
}

void __62__UIKBRTIPartner__queued_performTextOperations_resultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([off_1E70ECAF8 prefersTextAttachment])
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 nominalTextAttachment], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v8 = 0;
      goto LABEL_9;
    }

    v5 = v4;
    v6 = MEMORY[0x1E696AAB0];
    v10 = *off_1E70EC8C8;
    v11[0] = v4;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v6 attributedStringWithAttachment:v5 attributes:v7];

    if (!v8)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v8 = [MEMORY[0x1E696AAB0] attributedStringWithAdaptiveImageGlyph:v3 attributes:MEMORY[0x1E695E0F8]];
  if (v8)
  {
LABEL_7:
    v9 = [*(a1 + 32) partnerDelegate];
    [v9 insertAttributedText:v8];
  }

LABEL_9:
}

void __62__UIKBRTIPartner__queued_performTextOperations_resultHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [*(a1 + 32) partnerDelegate];
    [v4 insertEmojiImageTextAttachment:v3];
  }

  else
  {
    v10 = -4;
    v5 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v10 length:1];
    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    v11 = *off_1E70EC8C8;
    v12[0] = v3;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v6 initWithString:v5 attributes:v7];

    v9 = [*(a1 + 32) partnerDelegate];
    [v9 insertAttributedText:v8];
  }
}

- (unsigned)_performKeyboardOutputOperations:(id)operations
{
  operationsCopy = operations;
  keyboardOutput = [operationsCopy keyboardOutput];
  v6 = keyboardOutput;
  if (keyboardOutput && ([keyboardOutput _isEmpty] & 1) == 0)
  {
    v8 = UIKeyboardGetCurrentInputMode();
    customInfoType = [operationsCopy customInfoType];
    v10 = [customInfoType isEqualToString:@"UIDictationRemoteTextOperations"];

    multilingualLanguages = [operationsCopy multilingualLanguages];
    if (multilingualLanguages)
    {
      v12 = multilingualLanguages;
      v13 = UIKeyboardGetCurrentInputMode();
      v14 = [v8 isEqualToString:v13];

      if (v14)
      {
        v15 = +[UIKeyboardInputModeController sharedInputModeController];
        currentInputMode = [v15 currentInputMode];

        multilingualLanguages2 = [operationsCopy multilingualLanguages];
        if ([multilingualLanguages2 count])
        {
          multilingualLanguages3 = [operationsCopy multilingualLanguages];
          [currentInputMode setMultilingualLanguages:multilingualLanguages3];
        }

        else
        {
          [currentInputMode setMultilingualLanguages:0];
        }
      }
    }

    v19 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    [v19 setObject:MEMORY[0x1E695E118] forKey:0x1EFB64610];
    [v19 setObject:MEMORY[0x1E695E110] forKey:0x1EFB64630];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [operationsCopy enumeratedInsertionAnimationStyle] >= 1)
    {
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(operationsCopy, "enumeratedInsertionAnimationStyle")}];
      [v19 setObject:v20 forKey:0x1EFB64650];
    }

    partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
    v22 = partnerDelegate;
    if (v10)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __51__UIKBRTIPartner__performKeyboardOutputOperations___block_invoke;
      v26[3] = &unk_1E70F6228;
      v26[4] = self;
      v27 = v6;
      v28 = v19;
      [v22 performOperations:v26 withTextInputSource:2];

      v7 = 1;
    }

    else
    {
      v23 = [partnerDelegate performKeyboardOutput:v6 userInfo:v19];

      if (v23)
      {
        v7 = 1;
      }

      else
      {
        v7 = 3;
      }
    }

    partnerDelegate2 = [(UIKBRTIPartner *)self partnerDelegate];
    [partnerDelegate2 updateDocumentViewsAfterKeyboardOutput:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __51__UIKBRTIPartner__performKeyboardOutputOperations___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) partnerDelegate];
  [v2 performKeyboardOutput:*(a1 + 40) userInfo:*(a1 + 48)];
}

- (void)defaultDocumentRequestDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__UIKBRTIPartner_defaultDocumentRequestDidChange___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __50__UIKBRTIPartner_defaultDocumentRequestDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateGeometryObserverIfNecessary];
  v2 = *(a1 + 32);

  return [v2 documentStateChanged];
}

- (void)_performDocumentRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (+[UIKeyboard isKeyboardProcess])
  {
    payloadDelegate = [(UIKBRTIPartner *)self payloadDelegate];
    v8 = payloadDelegate;
    if (payloadDelegate)
    {
      [payloadDelegate performDocumentRequest:requestCopy completion:completionCopy];
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    [(UIKBRTIPartner *)self performDocumentRequest:requestCopy completion:completionCopy];
  }
}

- (void)performDocumentRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__UIKBRTIPartner_performDocumentRequest_completion___block_invoke;
  block[3] = &unk_1E70FCE28;
  block[4] = self;
  v11 = requestCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = requestCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __52__UIKBRTIPartner_performDocumentRequest_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__UIKBRTIPartner_performDocumentRequest_completion___block_invoke_2;
  v3[3] = &unk_1E7117FE0;
  v4 = *(a1 + 48);
  [v1 _queryDocumentRequest:v2 completion:v3];
}

uint64_t __52__UIKBRTIPartner_performDocumentRequest_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_queryDocumentRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
    inputDelegateManager = [partnerDelegate inputDelegateManager];
    hasAsyncCapableInputDelegate = [inputDelegateManager hasAsyncCapableInputDelegate];

    if (hasAsyncCapableInputDelegate)
    {
      [(UIKBRTIPartner *)self _queryWKDocumentRequest:requestCopy completion:completionCopy];
    }

    else
    {
      [(UIKBRTIPartner *)self _queryUIKitDocumentRequest:requestCopy completion:completionCopy];
    }
  }
}

- (int64_t)_uiTextGranularityForRTITextGranularity:(int64_t)granularity
{
  if (granularity >= 6)
  {
    return 1;
  }

  else
  {
    return granularity;
  }
}

- (void)_addFirstSelectionRectToDocumentState:(id)state
{
  stateCopy = state;
  inputDelegate = [(UIKBRTIPartner *)self inputDelegate];
  textInputView = [inputDelegate textInputView];

  partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
  [partnerDelegate correctionRect];
  [(UIKBRTIPartner *)self convertRect:textInputView from:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [stateCopy setFirstSelectionRectInWindow:{v8, v10, v12, v14}];
  [(UIKBRTIPartner *)self _selectionClipRect];
  [(UIKBRTIPartner *)self convertRect:textInputView from:?];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [stateCopy setClientFrameInWindow:?];
  inputDelegate2 = [(UIKBRTIPartner *)self inputDelegate];
  inputDelegate3 = [(UIKBRTIPartner *)self inputDelegate];
  selectedTextRange = [inputDelegate3 selectedTextRange];
  start = [selectedTextRange start];
  [inputDelegate2 caretRectForPosition:start];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [(UIKBRTIPartner *)self convertRect:textInputView from:v28, v30, v32, v34];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  [stateCopy setCaretRectInWindow:?];
  inputDelegate4 = [(UIKBRTIPartner *)self inputDelegate];
  inputDelegate5 = [(UIKBRTIPartner *)self inputDelegate];
  beginningOfDocument = [inputDelegate5 beginningOfDocument];
  inputDelegate6 = [(UIKBRTIPartner *)self inputDelegate];
  selectedTextRange2 = [inputDelegate6 selectedTextRange];
  start2 = [selectedTextRange2 start];
  v49 = [inputDelegate4 offsetFromPosition:beginningOfDocument toPosition:start2];

  [stateCopy addTextRect:v49 forCharacterRange:0 granularity:0 isVertical:{0, v36, v38, v40, v42}];
  partnerDelegate2 = [(UIKBRTIPartner *)self partnerDelegate];
  textInputTraits = [partnerDelegate2 textInputTraits];
  insertionPointColor = [textInputTraits insertionPointColor];

  v53 = [MEMORY[0x1E69C6F28] colorWithCGColor:{objc_msgSend(insertionPointColor, "CGColor")}];
  [stateCopy setInsertionPointColor:v53];
  window = [textInputView window];
  window2 = [textInputView window];
  screen = [window2 screen];
  coordinateSpace = [screen coordinateSpace];
  [window convertRect:coordinateSpace toCoordinateSpace:{v16, v18, v20, v22}];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;

  window3 = [textInputView window];
  LODWORD(window2) = [window3 _isHostedInAnotherProcess];

  if (window2)
  {
    window4 = [textInputView window];
    windowScene = [window4 windowScene];
    v69 = [UITextEffectsWindow activeTextEffectsWindowForWindowScene:windowScene];
    [v69 hostedViewReference];
    v71 = v70;
    v73 = v72;

    v59 = v59 + v71;
    v61 = v61 + v73;
  }

  [stateCopy setClientFrameInEntitySpace:{v59, v61, v63, v65}];
  if (objc_opt_respondsToSelector())
  {
    window5 = [textInputView window];
    screen2 = [window5 screen];

    if (screen2)
    {
      window6 = [textInputView window];
      screen3 = [window6 screen];

      [screen3 nativeBounds];
      v79 = v78;
      [screen3 scale];
      v81 = v79 / v80;
      [screen3 bounds];
      v83 = v81 / v82;
      [screen3 nativeBounds];
      v85 = v84;
      [screen3 scale];
      v87 = v85 / v86;
      [screen3 bounds];
      [stateCopy setDisplayZoom:{v83, v87 / v88}];
    }
  }
}

- (void)_addAutocorrectStylingToDocumentState:(id)state
{
  stateCopy = state;
  inputDelegate = [(UIKBRTIPartner *)self inputDelegate];
  _fontForCaretSelection = [inputDelegate _fontForCaretSelection];

  v6 = MEMORY[0x1E69C6FB0];
  isSystemFont = [_fontForCaretSelection isSystemFont];
  if (isSystemFont)
  {
    fontName = 0;
  }

  else
  {
    fontName = [_fontForCaretSelection fontName];
  }

  [_fontForCaretSelection pointSize];
  v10 = v9;
  fontDescriptor = [_fontForCaretSelection fontDescriptor];
  v12 = [fontDescriptor objectForKey:*off_1E70ECD38];
  [v12 doubleValue];
  v14 = [v6 textStylingWithFontName:fontName fontSize:v10 fontWeight:v13];

  if ((isSystemFont & 1) == 0)
  {
  }

  [stateCopy setAutocorrectBubbleStyling:v14];
  inputDelegate2 = [(UIKBRTIPartner *)self inputDelegate];
  _textColorForCaretSelection = [inputDelegate2 _textColorForCaretSelection];

  v17 = [MEMORY[0x1E69C6F28] colorWithCGColor:{objc_msgSend(_textColorForCaretSelection, "CGColor")}];
  [stateCopy setAutocorrectTextColor:v17];
  partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
  textInputTraits = [partnerDelegate textInputTraits];
  selectionHighlightColor = [textInputTraits selectionHighlightColor];

  v21 = [MEMORY[0x1E69C6F28] colorWithCGColor:{objc_msgSend(selectionHighlightColor, "CGColor")}];
  [stateCopy setAutocorrectTextBackgroundColor:v21];
}

- (void)_addMergedTextRectsToDocumentState:(id)state forWKContext:(id)context textInputView:(id)view granularity:(int64_t)granularity
{
  stateCopy = state;
  contextCopy = context;
  viewCopy = view;
  fullText = [contextCopy fullText];
  v14 = [(__CFString *)fullText length];
  wkRectTokenizer = self->_wkRectTokenizer;
  if (wkRectTokenizer)
  {
    v35.location = 0;
    v35.length = v14;
    CFStringTokenizerSetString(wkRectTokenizer, fullText, v35);
  }

  else
  {
    if ((granularity - 1) > 3)
    {
      v16 = 0;
    }

    else
    {
      v16 = qword_18A680490[granularity - 1];
    }

    v17 = *MEMORY[0x1E695E480];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v36.location = 0;
    v36.length = v14;
    self->_wkRectTokenizer = CFStringTokenizerCreate(v17, fullText, v36, v16, currentLocale);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__UIKBRTIPartner__addMergedTextRectsToDocumentState_forWKContext_textInputView_granularity___block_invoke;
  aBlock[3] = &unk_1E7118008;
  aBlock[4] = self;
  v19 = _Block_copy(aBlock);
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x4010000000;
  v31[3] = "";
  v20 = *(MEMORY[0x1E695F050] + 16);
  v32 = *MEMORY[0x1E695F050];
  v33 = v20;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3010000000;
  v30[0] = 0;
  v30[1] = 0;
  v29[3] = "";
  if ((*(v19 + 2))(v19, v30))
  {
    v21 = [(__CFString *)fullText length];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __92__UIKBRTIPartner__addMergedTextRectsToDocumentState_forWKContext_textInputView_granularity___block_invoke_2;
    v22[3] = &unk_1E7118030;
    v26 = v29;
    v25 = v19;
    v27 = v31;
    v23 = stateCopy;
    v24 = viewCopy;
    granularityCopy = granularity;
    [contextCopy enumerateLayoutRectsWithOptions:0 characterRange:0 block:{v21, v22}];
  }

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
}

BOOL __92__UIKBRTIPartner__addMergedTextRectsToDocumentState_forWKContext_textInputView_granularity___block_invoke(uint64_t a1, CFRange *a2)
{
  Token = CFStringTokenizerAdvanceToNextToken(*(*(a1 + 32) + 32));
  if (Token)
  {
    *a2 = CFStringTokenizerGetCurrentTokenRange(*(*(a1 + 32) + 32));
  }

  return Token != 0;
}

void __92__UIKBRTIPartner__addMergedTextRectsToDocumentState_forWKContext_textInputView_granularity___block_invoke_2(void *a1, unint64_t a2, uint64_t a3, _BYTE *a4, double x, double y, double width, double height)
{
  while (1)
  {
    v16 = *(a1[7] + 8);
    v17 = *(v16 + 32);
    if (*(v16 + 40) + v17 >= a2)
    {
      break;
    }

    if (((*(a1[6] + 16))() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v18 = a2 + a3;
  if (v18 > v17)
  {
    if (!CGRectIsNull(*(*(a1[8] + 8) + 32)))
    {
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      v26 = CGRectUnion(*(*(a1[8] + 8) + 32), v27);
      x = v26.origin.x;
      y = v26.origin.y;
      width = v26.size.width;
      height = v26.size.height;
    }

    v19 = *(a1[8] + 8);
    v19[4] = x;
    v19[5] = y;
    v19[6] = width;
    v19[7] = height;
    if (v18 == *(*(a1[7] + 8) + 40) + *(*(a1[7] + 8) + 32))
    {
      v20 = a1[4];
      v21 = a1[5];
      v22 = *(a1[8] + 8);
      v23 = [v21 window];
      [v21 convertRect:v23 toView:{v22[4], v22[5], v22[6], v22[7]}];
      [v20 addTextRect:*(*(a1[7] + 8) + 32) forCharacterRange:*(*(a1[7] + 8) + 40) granularity:a1[9] isVertical:0];

      v24 = *(a1[8] + 8);
      v25 = *(MEMORY[0x1E695F050] + 16);
      *(v24 + 32) = *MEMORY[0x1E695F050];
      *(v24 + 48) = v25;
      if (((*(a1[6] + 16))() & 1) == 0)
      {
LABEL_3:
        *a4 = 1;
      }
    }
  }
}

- (void)_queryWKDocumentRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  inputDelegate = [(UIKBRTIPartner *)self inputDelegate];
  textInputView = [inputDelegate textInputView];
  v10 = _UIKeyboardLog();
  v11 = os_signpost_id_generate(v10);

  v12 = _UIKeyboardLog();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "queryWKDocument", "", buf, 2u);
  }

  v14 = objc_alloc_init(UIWKDocumentRequest);
  v15 = -[UIKBRTIPartner _uiTextGranularityForRTITextGranularity:](self, "_uiTextGranularityForRTITextGranularity:", [requestCopy textGranularity]);
  flags = [requestCopy flags];
  v17 = [requestCopy flags] & 2 | flags & 1;
  if (([requestCopy flags] & 4) != 0)
  {
    v18 = v17 | 0x24;
  }

  else
  {
    v18 = v17;
  }

  if (_os_feature_enabled_impl())
  {
    v18 = v18 & 0xFFFFFFFFFFFFFFBFLL | ((([requestCopy flags] >> 3) & 1) << 6);
  }

  -[UIWKDocumentRequest setFlags:](v14, "setFlags:", [requestCopy flags] & 0x10 | v18);
  [(UIWKDocumentRequest *)v14 setSurroundingGranularity:v15];
  -[UIWKDocumentRequest setGranularityCount:](v14, "setGranularityCount:", [requestCopy surroundingGranularityCount]);
  if (([requestCopy flags] & 8) != 0)
  {
    partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
    inputDelegateManager = [partnerDelegate inputDelegateManager];
    [inputDelegateManager visibleTextRect];
    [(UIWKDocumentRequest *)v14 setDocumentRect:?];
  }

  v21 = -[UIKBRTIPartner _uiTextGranularityForRTITextGranularity:](self, "_uiTextGranularityForRTITextGranularity:", [requestCopy rectGranularity]);
  flags2 = [requestCopy flags];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__UIKBRTIPartner__queryWKDocumentRequest_completion___block_invoke;
  aBlock[3] = &unk_1E7118080;
  v35 = requestCopy;
  selfCopy = self;
  v23 = (v21 != 0) & (flags2 >> 2);
  if (v21 == v15)
  {
    LOBYTE(v23) = 0;
  }

  v43 = v23;
  v37 = inputDelegate;
  v38 = textInputView;
  v40 = v21;
  v41 = v15;
  v42 = v11;
  v24 = completionCopy;
  v39 = v24;
  v25 = textInputView;
  v26 = inputDelegate;
  v27 = requestCopy;
  v28 = _Block_copy(aBlock);
  partnerDelegate2 = [(UIKBRTIPartner *)self partnerDelegate];
  inputDelegateManager2 = [partnerDelegate2 inputDelegateManager];
  asyncCapableInputDelegate = [inputDelegateManager2 asyncCapableInputDelegate];

  if (asyncCapableInputDelegate)
  {
    partnerDelegate3 = [(UIKBRTIPartner *)self partnerDelegate];
    inputDelegateManager3 = [partnerDelegate3 inputDelegateManager];
    [inputDelegateManager3 requestDocumentContext:v14 completionHandler:v28];
  }

  else
  {
    (*(v24 + 2))(v24, 0, 0);
  }
}

void __53__UIKBRTIPartner__queryWKDocumentRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v45 = [MEMORY[0x1E69C6F38] documentStateWithRequest:*(a1 + 32)];
  v4 = objc_alloc(MEMORY[0x1E69D9590]);
  v5 = [v3 contextBefore];
  v6 = _stringForObject(v5);
  v7 = [v3 markedText];
  v8 = _stringForObject(v7);
  v9 = [v3 selectedText];
  v10 = _stringForObject(v9);
  v11 = [v3 contextAfter];
  v12 = _stringForObject(v11);
  v13 = [v3 selectedRangeInMarkedText];
  v15 = [v4 initWithUnboundedContextBefore:v6 markedText:v8 selectedText:v10 unboundedContextAfter:v12 selectedRangeInMarkedText:{v13, v14}];

  v16 = v15;
  v17 = a1;

  [v45 setDocumentState:v15];
  if ((~[*(a1 + 32) flags] & 3) == 0)
  {
    v18 = [*(a1 + 40) rtiDocumentState];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v43 = objc_alloc(MEMORY[0x1E69D9568]);
      v20 = [v3 contextBefore];
      v21 = _attributedStringForObject(v20);
      v22 = [v3 markedText];
      _attributedStringForObject(v22);
      v23 = v44 = v15;
      v24 = [v3 selectedText];
      v25 = _attributedStringForObject(v24);
      v26 = [v3 contextAfter];
      v27 = _attributedStringForObject(v26);
      v28 = [v3 selectedRangeInMarkedText];
      v30 = [v43 initWithUnboundedContextBefore:v21 markedText:v23 selectedText:v25 unboundedContextAfter:v27 selectedRangeInMarkedText:{v28, v29}];

      v16 = v44;
      v17 = a1;

      [v45 setAttributedDocumentState:v30];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v45 setHasText:{objc_msgSend(*(v17 + 48), "hasText")}];
  }

  if (([*(v17 + 32) flags] & 0x10) != 0)
  {
    v31 = [v3 annotatedText];

    if (v31)
    {
      v32 = [v3 annotatedText];
      [v45 setTextCheckingAnnotatedString:v32];
    }

    else
    {
      v33 = [v45 documentState];
      v34 = [v33 contextBeforeInput];

      if (!v34)
      {
        goto LABEL_12;
      }

      v35 = objc_alloc(MEMORY[0x1E696AAB0]);
      v32 = [v45 documentState];
      v36 = [v32 contextBeforeInput];
      v37 = [v35 initWithString:v36 attributes:&unk_1EFE344A0];
      [v45 setTextCheckingAnnotatedString:v37];
    }
  }

LABEL_12:
  [*(v17 + 40) _addFirstSelectionRectToDocumentState:v45];
  if (([*(v17 + 32) flags] & 0x20) != 0)
  {
    [*(v17 + 40) _addAutocorrectStylingToDocumentState:v45];
  }

  if (*(v17 + 96) == 1)
  {
    [*(v17 + 40) _addMergedTextRectsToDocumentState:v45 forWKContext:v3 textInputView:*(v17 + 56) granularity:*(v17 + 72)];
  }

  else
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __53__UIKBRTIPartner__queryWKDocumentRequest_completion___block_invoke_858;
    v48[3] = &unk_1E7118058;
    v48[4] = *(v17 + 40);
    v49 = *(v17 + 56);
    v38 = v45;
    v39 = *(v17 + 80);
    v50 = v38;
    v51 = v39;
    [v3 enumerateLayoutRects:v48];
  }

  v40 = _UIKeyboardLog();
  v41 = v40;
  v42 = *(v17 + 88);
  if (v42 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v41, OS_SIGNPOST_INTERVAL_END, v42, "queryWKDocument", "", buf, 2u);
  }

  (*(*(v17 + 64) + 16))();
}

uint64_t __53__UIKBRTIPartner__queryWKDocumentRequest_completion___block_invoke_858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) convertRect:*(a1 + 40) from:?];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);

  return [v6 addTextRect:a2 forCharacterRange:a3 granularity:v7 isVertical:0];
}

- (void)_queryUIKitDocumentRequest:(id)request completion:(id)completion
{
  v209 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v8 = _UIKeyboardLog();
  v9 = os_signpost_id_generate(v8);

  v10 = _UIKeyboardLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "queryUIKitDocument", "", buf, 2u);
  }

  inputDelegate = [(UIKBRTIPartner *)self inputDelegate];
  textInputView = [inputDelegate textInputView];
  v13 = -[UIKBRTIPartner _uiTextGranularityForRTITextGranularity:](self, "_uiTextGranularityForRTITextGranularity:", [requestCopy textGranularity]);
  partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
  textInputTraits = [partnerDelegate textInputTraits];

  spid = v9;
  if (([textInputTraits isSecureTextEntry] & 1) != 0 || (objc_msgSend(textInputTraits, "recentInputIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    v13 = 5;
  }

  selectedTextRange = [inputDelegate selectedTextRange];
  markedTextRange = [inputDelegate markedTextRange];
  selfCopy = self;
  v190 = v9 - 1;
  if (markedTextRange)
  {
    v19 = markedTextRange;
    markedTextRange2 = [inputDelegate markedTextRange];
    isEmpty = [markedTextRange2 isEmpty];

    if (isEmpty)
    {
      v189 = 0;
    }

    else
    {
      markedTextRange3 = [inputDelegate markedTextRange];

      v189 = 1;
      selectedTextRange = markedTextRange3;
    }

    self = selfCopy;
  }

  else
  {
    v189 = 0;
  }

  v23 = [MEMORY[0x1E69C6F38] documentStateWithRequest:requestCopy];
  if (!selectedTextRange)
  {
    v36 = _UIKeyboardLog();
    v37 = v36;
    if (v190 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v36))
    {
      goto LABEL_51;
    }

    *buf = 0;
    goto LABEL_50;
  }

  flags = [requestCopy flags];
  if ((flags & 8) == 0)
  {
    start = [selectedTextRange start];
    v25 = [selectedTextRange end];
    goto LABEL_16;
  }

  partnerDelegate2 = [(UIKBRTIPartner *)self partnerDelegate];
  inputDelegateManager = [partnerDelegate2 inputDelegateManager];
  [inputDelegateManager visibleTextRect];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;

  v210.origin.x = v41;
  v210.origin.y = v43;
  v210.size.width = v45;
  v210.size.height = v47;
  MinX = CGRectGetMinX(v210);
  v211.origin.x = v41;
  v211.origin.y = v43;
  v211.size.width = v45;
  v211.size.height = v47;
  v49 = [inputDelegate closestPositionToPoint:{MinX, CGRectGetMinY(v211)}];
  if (!v49)
  {
    v66 = _UIKeyboardLog();
    v37 = v66;
    if (v190 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v66))
    {
      goto LABEL_51;
    }

    *buf = 0;
LABEL_50:
    _os_signpost_emit_with_name_impl(&dword_188A29000, v37, OS_SIGNPOST_INTERVAL_END, spid, "queryUIKitDocument", "", buf, 2u);
LABEL_51:

    completionCopy[2](completionCopy, v23, 0);
    goto LABEL_166;
  }

  start = v49;
  if ([inputDelegate baseWritingDirectionForPosition:v49 inDirection:0] == 1)
  {
    v212.origin.x = v41;
    v212.origin.y = v43;
    v212.size.width = v45;
    v212.size.height = v47;
    MaxX = CGRectGetMaxX(v212);
    v213.origin.x = v41;
    v213.origin.y = v43;
    v213.size.width = v45;
    v213.size.height = v47;
    v51 = [inputDelegate closestPositionToPoint:{MaxX, CGRectGetMinY(v213)}];

    start = v51;
  }

  v214.origin.x = v41;
  v214.origin.y = v43;
  v214.size.width = v45;
  v214.size.height = v47;
  v52 = CGRectGetMaxX(v214);
  v215.origin.x = v41;
  v215.origin.y = v43;
  v215.size.width = v45;
  v215.size.height = v47;
  v53 = [inputDelegate closestPositionToPoint:{v52, CGRectGetMaxY(v215)}];
  if (v53)
  {
    v25 = v53;
    if ([inputDelegate baseWritingDirectionForPosition:v53 inDirection:0] == 1)
    {
      v216.origin.x = v41;
      v216.origin.y = v43;
      v216.size.width = v45;
      v216.size.height = v47;
      v54 = CGRectGetMinX(v216);
      v217.origin.x = v41;
      v217.origin.y = v43;
      v217.size.width = v45;
      v217.size.height = v47;
      v55 = [inputDelegate closestPositionToPoint:{v54, CGRectGetMaxY(v217)}];

      v25 = v55;
    }

LABEL_16:
    v192 = v23;
    v174 = textInputTraits;
    v175 = completionCopy;
    if (([requestCopy surroundingGranularityCount] & 0x8000000000000000) == 0)
    {
      v26 = -1;
      while (1)
      {
        tokenizer = [inputDelegate tokenizer];
        v28 = [tokenizer positionFromPosition:start toBoundary:v13 inDirection:1];

        tokenizer2 = [inputDelegate tokenizer];
        v30 = [tokenizer2 positionFromPosition:v25 toBoundary:v13 inDirection:0];

        if (!(v28 | v30))
        {
          break;
        }

        if (v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = start;
        }

        v32 = v31;

        if (v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = v25;
        }

        v34 = v33;

        v35 = v34;
        ++v26;
        start = v32;
        v25 = v35;
        if ([requestCopy surroundingGranularityCount] <= v26)
        {
          goto LABEL_37;
        }
      }
    }

    v35 = v25;
    v32 = start;
LABEL_37:
    v56 = [inputDelegate textRangeFromPosition:v32 toPosition:v35];
    start2 = [selectedTextRange start];
    v58 = [selectedTextRange end];
    v59 = v58;
    v172 = v56;
    if (start2 || !v58)
    {
      if (v58 || !start2)
      {
LABEL_43:
        v194 = inputDelegate;
        v60 = selectedTextRange;
        v61 = 0;
        v62 = 0x7FFFFFFFFFFFFFFFLL;
        v187 = v35;
        v188 = v32;
        v177 = start2;
        v178 = v59;
        v171 = v60;
        v63 = 0;
        if (!start2)
        {
          v64 = 0;
          v186 = v60;
          v65 = 0;
          goto LABEL_73;
        }

        v64 = 0;
        v186 = v60;
        v65 = 0;
        if (!v59)
        {
          goto LABEL_73;
        }

        if (([requestCopy flags] & 1) == 0)
        {
          v61 = 0;
          v63 = 0;
          v64 = 0;
          v65 = 0;
          v186 = v171;
          goto LABEL_73;
        }

        v67 = [v194 comparePosition:v32 toPosition:v177];
        v68 = [v194 comparePosition:v32 toPosition:v59];
        v69 = [v194 comparePosition:v35 toPosition:v177];
        v70 = [v194 comparePosition:v35 toPosition:v178];
        if (v67 == 1 && v68 == 1)
        {
          v71 = [v194 textRangeFromPosition:v32 toPosition:v35];
          v182 = [(UIKBRTIPartner *)selfCopy documentTextInRange:v71 forInputDelegate:v194];
          v65 = 0;
        }

        else
        {
          if (v67 != 1 || v70 != 1)
          {
            if (v67 != 1 && v70 != -1)
            {
              v71 = [v194 textRangeFromPosition:v32 toPosition:v177];
              v61 = [(UIKBRTIPartner *)selfCopy documentTextInRange:v71 forInputDelegate:v194];
              v116 = [v194 textRangeFromPosition:v177 toPosition:v178];

              v186 = v116;
              v65 = [(UIKBRTIPartner *)selfCopy documentTextInRange:v116 forInputDelegate:v194];
              v117 = [v194 textRangeFromPosition:v178 toPosition:v35];
              v182 = [(UIKBRTIPartner *)selfCopy documentTextInRange:v117 forInputDelegate:v194];

              goto LABEL_65;
            }

            if (v69 != 1 || v70 == 1)
            {
              v61 = 0;
              v182 = 0;
              if (v69 == 1)
              {
                v186 = v171;
                v65 = 0;
              }

              else
              {
                v186 = v171;
                v65 = 0;
                if (v70 != 1)
                {
                  v71 = [v194 textRangeFromPosition:v32 toPosition:v35];
                  v61 = [(UIKBRTIPartner *)selfCopy documentTextInRange:v71 forInputDelegate:v194];
                  v182 = 0;
                  v65 = 0;
                  goto LABEL_64;
                }
              }

LABEL_66:
              if (v189)
              {
                selectedTextRange2 = [v194 selectedTextRange];
                start3 = [selectedTextRange2 start];
                v62 = [v194 offsetFromPosition:v177 toPosition:start3];

                [selectedTextRange2 start];
                v77 = v179 = v65;
                v78 = [selectedTextRange2 end];
                v64 = [v194 offsetFromPosition:v77 toPosition:v78];

                v65 = v179;
                if (!v179)
                {
                  goto LABEL_72;
                }
              }

              else
              {
                v64 = 0;
                v62 = 0x7FFFFFFFFFFFFFFFLL;
                if (!v65)
                {
LABEL_72:
                  v63 = v182;
LABEL_73:
                  v173 = selectedTextRange;
                  v79 = objc_alloc(MEMORY[0x1E69D9590]);
                  v181 = v61;
                  string = [v61 string];
                  v81 = v65;
                  v82 = string;
                  v180 = v81;
                  string2 = [v81 string];
                  v84 = string2;
                  if (v189)
                  {
                    v85 = string2;
                  }

                  else
                  {
                    v85 = 0;
                  }

                  if (v189)
                  {
                    v86 = 0;
                  }

                  else
                  {
                    v86 = string2;
                  }

                  v183 = v63;
                  [v63 string];
                  v87 = v176 = requestCopy;
                  v88 = [v79 initWithUnboundedContextBefore:v82 markedText:v85 selectedText:v86 unboundedContextAfter:v87 selectedRangeInMarkedText:{v62, v64}];

                  v23 = v192;
                  [v192 setDocumentState:v88];
                  if ((~[requestCopy flags] & 3) == 0)
                  {
                    [(UIKBRTIPartner *)selfCopy rtiDocumentState];
                    v90 = v89 = v88;
                    v91 = objc_opt_respondsToSelector();

                    v88 = v89;
                    if (v91)
                    {
                      v92 = objc_alloc(MEMORY[0x1E69D9568]);
                      if (v189)
                      {
                        v93 = v180;
                      }

                      else
                      {
                        v93 = 0;
                      }

                      if (v189)
                      {
                        v94 = 0;
                      }

                      else
                      {
                        v94 = v180;
                      }

                      v95 = [v92 initWithUnboundedContextBefore:v181 markedText:v93 selectedText:v94 unboundedContextAfter:v183 selectedRangeInMarkedText:{v62, v64}];
                      [v192 setAttributedDocumentState:v95];
                    }
                  }

                  inputDelegate = v194;
                  [v192 setHasText:{objc_msgSend(v194, "hasText")}];
                  v96 = selfCopy;
                  [(UIKBRTIPartner *)selfCopy _addFirstSelectionRectToDocumentState:v192];
                  textInputTraits = v174;
                  completionCopy = v175;
                  if (([requestCopy flags] & 0x10) != 0)
                  {
                    [(UIKBRTIPartner *)selfCopy _addTextCheckingAnnotatedStringToDocumentState:v192];
                  }

                  selectedTextRange = v173;
                  if (([requestCopy flags] & 0x20) != 0)
                  {
                    [(UIKBRTIPartner *)selfCopy _addAutocorrectStylingToDocumentState:v192];
                  }

                  if (([requestCopy flags] & 4) == 0)
                  {
                    goto LABEL_160;
                  }

                  v97 = _UIKeyboardLog();
                  v98 = os_signpost_id_generate(v97);

                  v99 = _UIKeyboardLog();
                  v100 = v99;
                  v168 = v98;
                  v169 = v98 - 1;
                  if (v98 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v99))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_188A29000, v100, OS_SIGNPOST_INTERVAL_BEGIN, v98, "queryUIKitDocument.addRects", "", buf, 2u);
                  }

                  v101 = -[UIKBRTIPartner _uiTextGranularityForRTITextGranularity:](selfCopy, "_uiTextGranularityForRTITextGranularity:", [requestCopy rectGranularity]);
                  if (v101 == 5)
                  {
                    v102 = [v194 offsetFromPosition:v188 toPosition:v187];
                    [v194 firstRectForRange:v171];
                    [(UIKBRTIPartner *)selfCopy convertRect:textInputView from:?];
                    [v192 addTextRect:0 forCharacterRange:v102 granularity:5];
                  }

                  else
                  {
                    v103 = v101;
                    v166 = v88;
                    rectCountBefore = [requestCopy rectCountBefore];
                    v105 = rectCountBefore;
                    v106 = *MEMORY[0x1E69C6FB8];
                    if (rectCountBefore <= *MEMORY[0x1E69C6FB8])
                    {
                      v107 = *MEMORY[0x1E69C6FB8];
                    }

                    else
                    {
                      v107 = rectCountBefore;
                    }

                    [requestCopy surroundingGranularityCount];
                    rectCountAfter = [requestCopy rectCountAfter];
                    v109 = rectCountAfter;
                    if (rectCountAfter <= v106)
                    {
                      v110 = v106;
                    }

                    else
                    {
                      v110 = rectCountAfter;
                    }

                    if (v106 >= v105)
                    {
                      v115 = v188;
                    }

                    else
                    {
                      start4 = [v186 start];
                      if ((v107 & 0x8000000000000000) == 0)
                      {
                        v112 = v107 + 1;
                        while (1)
                        {
                          tokenizer3 = [v194 tokenizer];
                          v114 = [tokenizer3 positionFromPosition:start4 toBoundary:v103 inDirection:1];

                          if (!v114 || [v194 comparePosition:v114 toPosition:v188] == -1)
                          {
                            break;
                          }

                          v115 = v114;

                          start4 = v115;
                          if (!--v112)
                          {
                            goto LABEL_117;
                          }
                        }
                      }

                      v115 = start4;
                    }

LABEL_117:
                    if (v106 >= v109)
                    {
                      v124 = v187;
                      inputDelegate = v194;
                      v120 = v188;
                    }

                    else
                    {
                      v118 = [v186 end];
                      v119 = v118;
                      v120 = v188;
                      if (v110 < 0)
                      {
                        v124 = v118;
                        inputDelegate = v194;
                      }

                      else
                      {
                        v121 = v110 + 1;
                        inputDelegate = v194;
                        while (1)
                        {
                          tokenizer4 = [v194 tokenizer];
                          v123 = [tokenizer4 positionFromPosition:v119 toBoundary:v103 inDirection:0];

                          if (!v123 || [v194 comparePosition:v187 toPosition:v123] == -1)
                          {
                            break;
                          }

                          v124 = v123;

                          v119 = v124;
                          if (!--v121)
                          {
                            goto LABEL_127;
                          }
                        }

                        v124 = v119;
                      }
                    }

LABEL_127:
                    v125 = v115;
                    v126 = [inputDelegate offsetFromPosition:v120 toPosition:v125];
                    if (v126 < 0)
                    {
                      v128 = _UIKeyboardLog();
                      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315906;
                        v202 = "[UIKBRTIPartner _queryUIKitDocumentRequest:completion:]";
                        v203 = 2048;
                        v204 = v126;
                        v205 = 2112;
                        v206 = v120;
                        v207 = 2112;
                        v208 = v125;
                        _os_log_error_impl(&dword_188A29000, v128, OS_LOG_TYPE_ERROR, "%s negative offset=%lu from start=%@ to rectStart=%@", buf, 0x2Au);
                      }
                    }

                    v129 = 0;
                    v130 = 0;
                    v131 = v126 & ~(v126 >> 63);
                    *&v127 = 136315394;
                    v164 = v127;
                    v165 = v125;
                    v185 = v124;
                    do
                    {
                      v132 = v129;
                      v129 = v125;

                      tokenizer5 = [inputDelegate tokenizer];
                      v125 = [tokenizer5 positionFromPosition:v129 toBoundary:v103 inDirection:0];

                      if (!v125)
                      {
                        break;
                      }

                      v134 = [inputDelegate textRangeFromPosition:v129 toPosition:v125];
                      v135 = _UIKeyboardLog();
                      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = v164;
                        v202 = "[UIKBRTIPartner _queryUIKitDocumentRequest:completion:]";
                        v203 = 2112;
                        v204 = v134;
                        _os_log_debug_impl(&dword_188A29000, v135, OS_LOG_TYPE_DEBUG, "%s calling selectionRectsForRange:%@", buf, 0x16u);
                      }

                      v131 += v130;

                      v191 = v134;
                      v136 = [inputDelegate selectionRectsForRange:v134];
                      v196 = 0u;
                      v197 = 0u;
                      v198 = 0u;
                      v199 = 0u;
                      v137 = v136;
                      v138 = [v137 countByEnumeratingWithState:&v196 objects:v200 count:16];
                      if (v138)
                      {
                        v139 = v138;
                        v140 = *v197;
                        do
                        {
                          for (i = 0; i != v139; ++i)
                          {
                            if (*v197 != v140)
                            {
                              objc_enumerationMutation(v137);
                            }

                            v142 = *(*(&v196 + 1) + 8 * i);
                            [v142 rect];
                            if (v143 != 0.0)
                            {
                              [v142 rect];
                              [(UIKBRTIPartner *)selfCopy convertRect:textInputView from:?];
                              v145 = v144;
                              v147 = v146;
                              v149 = v148;
                              v151 = v150;
                              v130 = [v194 offsetFromPosition:v129 toPosition:v125];
                              [v192 addTextRect:v131 forCharacterRange:v130 granularity:v103 isVertical:{objc_msgSend(v142, "isVertical"), v145, v147, v149, v151}];
                            }
                          }

                          v139 = [v137 countByEnumeratingWithState:&v196 objects:v200 count:16];
                        }

                        while (v139);
                      }

                      inputDelegate = v194;
                      v124 = v185;
                      if (![v194 comparePosition:v125 toPosition:v129])
                      {
                        break;
                      }
                    }

                    while ([v194 comparePosition:v125 toPosition:v185] == -1);

                    completionCopy = v175;
                    requestCopy = v176;
                    selectedTextRange = v173;
                    textInputTraits = v174;
                    v23 = v192;
                    v88 = v166;
                    if (!v103)
                    {
                      v96 = selfCopy;
LABEL_156:
                      v158 = _UIKeyboardLog();
                      v159 = v158;
                      if (v169 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v158))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_188A29000, v159, OS_SIGNPOST_INTERVAL_END, v168, "queryUIKitDocument.addRects", "", buf, 2u);
                      }

LABEL_160:
                      if (objc_opt_respondsToSelector())
                      {
                        partnerDelegate3 = [(UIKBRTIPartner *)v96 partnerDelegate];
                        [v23 setScrolling:{objc_msgSend(partnerDelegate3, "selectionScrolling")}];
                      }

                      v161 = _UIKeyboardLog();
                      v162 = v161;
                      if (v190 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v161))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_188A29000, v162, OS_SIGNPOST_INTERVAL_END, spid, "queryUIKitDocument", "", buf, 2u);
                      }

                      (completionCopy)[2](completionCopy, v23, v172);
                      goto LABEL_166;
                    }
                  }

                  if (v189)
                  {
                    markedTextRange4 = [inputDelegate markedTextRange];
                    v96 = selfCopy;
                    -[UIKBRTIPartner _addCharacterRectsToDocumentState:textRange:offset:](selfCopy, "_addCharacterRectsToDocumentState:textRange:offset:", v23, markedTextRange4, [v181 length]);
                  }

                  else
                  {
                    v96 = selfCopy;
                    if ((flags & 8) == 0)
                    {
                      v153 = [v181 length];
                      [v171 isEmpty];
                      if (v178)
                      {
                        v154 = [inputDelegate _rangeOfEnclosingWord:?];
                        v155 = v154;
                        if (v154)
                        {
                          v167 = v88;
                          v156 = v154;

                          start5 = [v156 start];
                          v153 = [inputDelegate offsetFromPosition:v188 toPosition:start5];

                          v96 = selfCopy;
                          v186 = v156;
                          v88 = v167;
                        }
                      }

                      [(UIKBRTIPartner *)v96 _addCharacterRectsToDocumentState:v23 textRange:v186 offset:v153, v164];
                    }
                  }

                  goto LABEL_156;
                }
              }

              if (![v65 length])
              {

                v65 = 0;
              }

              goto LABEL_72;
            }

            v71 = [v194 textRangeFromPosition:v32 toPosition:v177];
            v61 = [(UIKBRTIPartner *)selfCopy documentTextInRange:v71 forInputDelegate:v194];
            v163 = [v194 textRangeFromPosition:v177 toPosition:v35];
            v65 = [(UIKBRTIPartner *)selfCopy documentTextInRange:v163 forInputDelegate:v194];

            v182 = 0;
LABEL_64:
            v186 = v171;
LABEL_65:

            goto LABEL_66;
          }

          v71 = [v194 textRangeFromPosition:v32 toPosition:v178];
          v65 = [(UIKBRTIPartner *)selfCopy documentTextInRange:v71 forInputDelegate:v194];
          v74 = [v194 textRangeFromPosition:v178 toPosition:v35];
          v182 = [(UIKBRTIPartner *)selfCopy documentTextInRange:v74 forInputDelegate:v194];
        }

        v61 = 0;
        goto LABEL_64;
      }
    }

    else
    {
      start2 = v58;
    }

    v59 = start2;
    start2 = v59;
    goto LABEL_43;
  }

  v72 = _UIKeyboardLog();
  v73 = v72;
  if (v190 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v73, OS_SIGNPOST_INTERVAL_END, spid, "queryUIKitDocument", "", buf, 2u);
  }

  completionCopy[2](completionCopy, v23, 0);
LABEL_166:
}

- (id)documentTextInRange:(id)range forInputDelegate:(id)delegate
{
  delegateCopy = delegate;
  rangeCopy = range;
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegateCopy attributedTextInRange:rangeCopy];
  }

  else
  {
    v8 = [delegateCopy textInRange:rangeCopy];

    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = &stru_1EFB14550;
    }

    v7 = [v9 initWithString:v10];
    rangeCopy = v8;
  }

  return v7;
}

- (CGRect)convertRect:(CGRect)rect from:(id)from
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  fromCopy = from;
  window = [fromCopy window];
  [fromCopy convertRect:window toView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  window2 = [fromCopy window];

  LODWORD(fromCopy) = [window2 _isRemoteInputHostWindow];
  if (fromCopy)
  {
    rtiDocumentTraits = [(UIKBRTIPartner *)self rtiDocumentTraits];
    assistantViewInfo = [rtiDocumentTraits assistantViewInfo];

    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen bounds];
    v24 = v23;
    [assistantViewInfo insets];
    v26 = v24 - v25;
    [assistantViewInfo size];
    v14 = v14 + v26 - v27;
  }

  v28 = v12;
  v29 = v14;
  v30 = v16;
  v31 = v18;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  if ((changed->var0 & 6) != 0)
  {
    [(UIKBRTIPartner *)self documentStateChanged];
  }
}

- (_NSRange)_relativeReplacementRangeForAnnotationOperation:(id)operation
{
  operationCopy = operation;
  textCheckingAnnotationRange = [operationCopy textCheckingAnnotationRange];
  v6 = v5;
  textCheckingReplacementRange = [operationCopy textCheckingReplacementRange];
  v9 = v8;
  textCheckingAnnotatedString = [operationCopy textCheckingAnnotatedString];

  if (textCheckingReplacementRange >= textCheckingAnnotationRange && textCheckingReplacementRange + v9 <= textCheckingAnnotationRange + v6)
  {
    v13 = [textCheckingAnnotatedString length];
    if (v13 + v9 >= v6)
    {
      v12 = textCheckingReplacementRange - textCheckingAnnotationRange;
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v13 + v9 >= v6)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = v12;
  v15 = v11;
  result.length = v15;
  result.location = v14;
  return result;
}

- (BOOL)_performTextCheckingAnnotationOperations:(id)operations
{
  operationsCopy = operations;
  rtiDocumentState = [(UIKBRTIPartner *)self rtiDocumentState];
  documentState = [rtiDocumentState documentState];

  if (documentState)
  {
    contextBeforeInput = [documentState contextBeforeInput];
    v8 = [contextBeforeInput length];

    v9 = [(UIKBRTIPartner *)self _relativeReplacementRangeForAnnotationOperation:operationsCopy];
    v11 = v10;
    if ([operationsCopy textCheckingAnnotationRange] == 0x7FFFFFFFFFFFFFFFLL)
    {
      textCheckingAnnotatedString = 0;
    }

    else
    {
      textCheckingAnnotatedString = [operationsCopy textCheckingAnnotatedString];

      if (textCheckingAnnotatedString)
      {
        partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
        inputDelegateManager = [partnerDelegate inputDelegateManager];
        textCheckingAnnotationRange = [operationsCopy textCheckingAnnotationRange];
        v16 = v11;
        v17 = v9;
        v18 = v8;
        v20 = v19;
        textCheckingAnnotatedString2 = [operationsCopy textCheckingAnnotatedString];
        v22 = v20;
        v8 = v18;
        v9 = v17;
        v11 = v16;
        textCheckingAnnotatedString = [inputDelegateManager replaceAnnotationRange:textCheckingAnnotationRange contextBeforeLength:v22 withAnnotatedString:v8 relativeReplacementRange:{textCheckingAnnotatedString2, v9, v16}];

        if (textCheckingAnnotatedString == 3)
        {
          [(UIKBRTIPartner *)self setTextOperationsFilter:&__block_literal_global_866];
        }
      }
    }

    if ([operationsCopy textCheckingAnnotationRemovalRange] != 0x7FFFFFFFFFFFFFFFLL)
    {
      textCheckingAnnotationToRemove = [operationsCopy textCheckingAnnotationToRemove];

      if (textCheckingAnnotationToRemove)
      {
        partnerDelegate2 = [(UIKBRTIPartner *)self partnerDelegate];
        inputDelegateManager2 = [partnerDelegate2 inputDelegateManager];
        textCheckingAnnotationToRemove2 = [operationsCopy textCheckingAnnotationToRemove];
        [operationsCopy textCheckingAnnotationRemovalRange];
        textCheckingAnnotatedString |= [inputDelegateManager2 removeAnnotation:textCheckingAnnotationToRemove2 removalRangeLength:v27 forAnnotationRange:v9 contextBeforeLength:{v11, v8}];
      }
    }

    v13 = textCheckingAnnotatedString != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __59__UIKBRTIPartner__performTextCheckingAnnotationOperations___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 selectionRangeToAssert] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 2;
  }

  else
  {
    [v2 setSelectionRangeToAssert:{0x7FFFFFFFFFFFFFFFLL, 0}];
    v3 = 3;
  }

  return v3;
}

- (id)insertionPointColor
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    v3 = +[UIKeyboard currentDocumentState];
    partnerDelegate = v3;
    if (v3)
    {
      insertionPointColor = [v3 insertionPointColor];
      if (insertionPointColor)
      {
        textInputTraits = insertionPointColor;
        insertionPointColor2 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [insertionPointColor cgColor]);
        goto LABEL_7;
      }
    }
  }

  partnerDelegate = [(UIKBRTIPartner *)self partnerDelegate];
  textInputTraits = [partnerDelegate textInputTraits];
  insertionPointColor2 = [textInputTraits insertionPointColor];
LABEL_7:
  v8 = insertionPointColor2;

  return v8;
}

@end