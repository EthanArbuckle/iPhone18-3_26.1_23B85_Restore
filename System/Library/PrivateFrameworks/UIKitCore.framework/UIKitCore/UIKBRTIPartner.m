@interface UIKBRTIPartner
+ (void)registerTextOperationCustomInfo;
- (BOOL)_performTextCheckingAnnotationOperations:(id)a3;
- (BOOL)_remoteInputSystemRequiresDocumentStateForAutofill;
- (BOOL)_remoteInputSystemRequiresDocumentStateUpdates;
- (BOOL)_updateRTITraitsIfNecessary;
- (BOOL)compareWaitingRTIOutputOperationResponseContext:(id)a3 andExchange:(id)a4;
- (BOOL)documentTraitsDisableAutomaticKeyboardUI;
- (BOOL)remoteTextInputClientHasActiveSession;
- (BOOL)synchronousForwardKeyCommandsBeforePublicToUIHost:(id)a3;
- (BOOL)synchronousForwardKeyCommandsToUIHost:(id)a3;
- (BOOL)synchronousForwardKeyInputMethodCommandEventToUIHost:(id)a3 canHandleAppKeyCommand:(BOOL)a4;
- (CGRect)_selectionClipRect;
- (CGRect)convertRect:(CGRect)a3 from:(id)a4;
- (UIKBRTIPartner)init;
- (UIKBRTIPartnerDelegate)partnerDelegate;
- (UIKeyboardTaskSubqueue)keyboardTaskSubqueue;
- (_NSRange)_relativeReplacementRangeForAnnotationOperation:(id)a3;
- (id)_defaultRTIMachNames;
- (id)_newInputSystemAutoFillUIClient;
- (id)_newInputSystemUIClient;
- (id)_newRTIConnection;
- (id)delegate;
- (id)documentTextInRange:(id)a3 forInputDelegate:(id)a4;
- (id)exchangeWaitingRTIOutputOperationResponseContext:(id)a3;
- (id)inputDelegate;
- (id)inputDelegateView;
- (id)insertionPointColor;
- (id)payloadDelegate;
- (id)textOperation_cancelChooseSupplementalItemToInsert;
- (id)textOperation_chooseSupplementalItem:(id)a3 toReplaceText:(id)a4;
- (id)textOperation_insertAutofillContent:(id)a3;
- (id)textOperation_insertSupplementalCandidate:(id)a3 textToCommit:(id)a4;
- (id)textOperation_insertionPointEnteredText:(id)a3 withSupplementalCandidate:(id)a4;
- (id)textOperation_insertionPointExitedTextWithSupplementalItems;
- (int64_t)_uiTextGranularityForRTITextGranularity:(int64_t)a3;
- (unsigned)_ignoredReasonsForKeyboard;
- (unsigned)_performKeyboardOutputOperations:(id)a3;
- (void)_addAutocorrectStylingToDocumentState:(id)a3;
- (void)_addCharacterRectsToDocumentState:(id)a3 textRange:(id)a4 offset:(int64_t)a5;
- (void)_addFirstSelectionRectToDocumentState:(id)a3;
- (void)_addMergedTextRectsToDocumentState:(id)a3 forWKContext:(id)a4 textInputView:(id)a5 granularity:(int64_t)a6;
- (void)_addTextCheckingAnnotatedStringToDocumentState:(id)a3;
- (void)_applicationDidRemoveDeactivationReason:(id)a3;
- (void)_applicationWillAddDeactivationReason:(id)a3;
- (void)_applicationWillSuspend:(id)a3;
- (void)_createRTIClient;
- (void)_createRTIClientIfNecessary;
- (void)_didAddSupplementalLexicon:(id)a3;
- (void)_didCreateRTIClient:(id)a3;
- (void)_didRemoveSupplementalLexiconWithIdentifier:(unint64_t)a3;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)_performDocumentRequest:(id)a3 completion:(id)a4;
- (void)_performQueuedSupplementalLexiconOperations;
- (void)_queryDocumentRequest:(id)a3 completion:(id)a4;
- (void)_queryUIKitDocumentRequest:(id)a3 completion:(id)a4;
- (void)_queryWKDocumentRequest:(id)a3 completion:(id)a4;
- (void)_queueSupplementalLexiconOperation:(unint64_t)a3 lexicon:(id)a4;
- (void)_queued_performTextOperations:(id)a3 resultHandler:(id)a4;
- (void)_updateGeometryObserverIfNecessary;
- (void)_updateRTIAllowedAndNotify:(BOOL)a3 withReason:(id)a4;
- (void)_updateRTIStateWithCompletion:(id)a3;
- (void)_viewServiceHostDidBecomeActive:(id)a3;
- (void)_viewServiceHostWillResignActive:(id)a3;
- (void)addTextSuggestions:(id)a3;
- (void)applyAssistantItem:(id)a3;
- (void)applyRemoteDocumentStateIfNecessary:(id)a3 force:(BOOL)a4;
- (void)applyRemoteDocumentTraitsIfNecessary:(id)a3 force:(BOOL)a4;
- (void)beginAllowingRemoteTextInput:(id)a3;
- (void)beginInputSessionWithIdentifier:(id)a3;
- (void)dealloc;
- (void)defaultDocumentRequestDidChange:(id)a3;
- (void)didAddSupplementalLexicon:(id)a3;
- (void)didRemoveSupplementalLexicon:(id)a3;
- (void)documentStateChanged:(BOOL)a3;
- (void)documentTraitsChanged;
- (void)endAllowingRemoteTextInput:(id)a3 waitForReply:(BOOL)a4;
- (void)endInputSessionOnSwitchingApps;
- (void)endInputSessionWithIdentifier:(id)a3 shouldResign:(BOOL)a4 waitForReply:(BOOL)a5;
- (void)ensureRTIConnection;
- (void)finishCompletionHandlersIfNeeded;
- (void)forwardApplicationOperation:(SEL)a3 object:(id)a4;
- (void)forwardAutofillPayload:(id)a3 toPayloadDelegate:(id)a4;
- (void)forwardClearForwardingInputDelegateAndResign:(BOOL)a3;
- (void)forwardDictationEventToUIHost:(SEL)a3 withOptionalObject:(id)a4;
- (void)forwardEventCallbackToRemoteSource_didChooseSupplementalItem:(id)a3 toReplaceText:(id)a4;
- (void)forwardEventToRemoteSource_canSuggestSupplementalItemsForCurrentSelection:(BOOL)a3;
- (void)forwardGrammarCorrectionEntries:(id)a3;
- (void)forwardInputDestinationEventToUIHost:(SEL)a3 params:(id)a4;
- (void)forwardKeyboardCameraEvent_startCameraInput:(id)a3;
- (void)forwardKeyboardEventToUIHost:(id)a3;
- (void)forwardKeyboardInputMode:(id)a3;
- (void)forwardKeyboardOperation:(SEL)a3 object:(id)a4;
- (void)forwardKeyboardSuppression:(BOOL)a3 suppressAssistantBar:(BOOL)a4;
- (void)forwardScrollEventToUIHost:(SEL)a3 contentTransform:(CGAffineTransform *)a4 environmentTransform:(CGAffineTransform *)a5;
- (void)forwardSelectorToUIHost:(SEL)a3 completionHandler:(id)a4;
- (void)forwardTypologyLogURL:(id)a3;
- (void)inputSession:(id)a3 didAddRTISupplementalLexicon:(id)a4;
- (void)inputSession:(id)a3 didRemoveRTISupplementalLexicon:(id)a4;
- (void)inputSession:(id)a3 documentStateDidChange:(id)a4 withMergeResult:(unint64_t)a5;
- (void)inputSession:(id)a3 performInputOperation:(id)a4;
- (void)inputSession:(id)a3 performInputOperation:(id)a4 withResponse:(id)a5;
- (void)inputSession:(id)a3 textSuggestionsChanged:(id)a4;
- (void)invalidate;
- (void)performDocumentRequest:(id)a3 completion:(id)a4;
- (void)performInputOperation:(id)a3;
- (void)performTextOperations:(id)a3;
- (void)performTextOperations:(id)a3 resultHandler:(id)a4;
- (void)removeTextSuggestionsForSessionWithID:(id)a3;
- (void)restartCurrentSession;
- (void)sendAutoFillDidInsertCallbacksWithTextOperations:(id)a3;
- (void)setKeyboardTaskSubqueue:(id)a3;
- (void)textSuggestionsChanged:(id)a3;
- (void)updateAnimationForOptions:(id)a3;
- (void)updateStateWithCompletion:(id)a3 updateTraits:(BOOL)a4;
- (void)updateTextSuggestionsIfNecessary:(id)a3;
@end

@implementation UIKBRTIPartner

- (BOOL)_remoteInputSystemRequiresDocumentStateUpdates
{
  v3 = [(UIKBRTIPartner *)self rtiClient];

  if (v3)
  {
    v4 = [(UIKBRTIPartner *)self rtiClient];
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
  v3 = [(UIKBRTIPartner *)self rtiClient];
  v4 = [(UIKBRTIPartner *)self currentSessionIdentifier];
  v5 = [v3 hasActiveSessionWithID:v4];

  return v5;
}

- (BOOL)_remoteInputSystemRequiresDocumentStateForAutofill
{
  v3 = [(UIKBRTIPartner *)self rtiDocumentTraits];
  if ([v3 autofillMode])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(UIKBRTIPartner *)self rtiDocumentTraits];
    v4 = [v5 isExplicitAutoFillMode];
  }

  return v4;
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
    v5 = [(UIKBRTIPartner *)self _defaultRTIMachNames];
    v6 = [v4 initWithMachNames:v5];

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
  v3 = [(UIKBRTIPartner *)self rtiClient];

  if (!v3)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E69C6F40]);
  v5 = [(UIKBRTIPartner *)self partnerDelegate];
  v6 = [v5 keyboardState];

  v7 = [v6 textInputTraits];
  v8 = [v7 copy];
  [v4 setTextInputTraits:v8];

  v9 = [(UIKBRTIPartner *)self partnerDelegate];
  v10 = [v9 delegateAsResponder];

  if (objc_opt_respondsToSelector())
  {
    v11 = [v10 textInputContextIdentifier];
    [v4 setTextInputContextIdentifier:v11];
  }

  v12 = +[UIKeyboardInputModeController sharedInputModeController];
  v13 = [v12 textInputModeForResponder:v10];

  if (v13)
  {
    v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:0];
    if (v14)
    {
      [v4 setTextInputModeData:v14];
    }
  }

  v188 = v13;
  v190 = self;
  v192 = v10;
  v15 = [v10 _additionalTextInputLocales];
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count")}];
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v17 = v15;
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

        v22 = [*(*(&v194 + 1) + 8 * i) localeIdentifier];
        [v16 addObject:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v194 objects:v210 count:16];
    }

    while (v19);
  }

  if ([v16 count])
  {
    [v4 setAdditionalLocaleIdentifiers:v16];
  }

  v23 = [v6 recipientIdentifier];
  [v4 setRecipientId:v23];

  v24 = [v6 responseContext];
  [v4 setResponseContext:v24];

  v25 = [v6 inputContextHistory];
  v26 = [v25 copy];
  [v4 setInputContextHistory:v26];

  v27 = [v6 supportedPayloadIds];
  [v4 setSupportedPayloadIds:v27];

  v28 = +[UIKeyboardImpl activeInstance];
  v29 = [v28 textInputTraits];
  v30 = [v29 hidePrediction];

  v31 = [(UIKBRTIPartner *)v190 rtiDocumentTraits];
  v193 = v30;
  if (v31)
  {
    v32 = [(UIKBRTIPartner *)v190 rtiDocumentTraits];
    v193 = v30 | [v32 hidePrediction];
  }

  [v4 setHidePrediction:v30];
  v33 = +[UIKeyboardImpl activeInstance];
  v34 = [v33 textInputTraits];
  v35 = [v34 disablePrediction];

  v36 = [(UIKBRTIPartner *)v190 rtiDocumentTraits];
  if (v36)
  {
    v37 = [(UIKBRTIPartner *)v190 rtiDocumentTraits];
    v193 |= v35 ^ [v37 disablePrediction];
  }

  [v4 setDisablePrediction:v35];
  v38 = +[UIKeyboardImpl activeInstance];
  v39 = [v38 inputDelegate];
  v40 = [v39 textInputView];
  [v4 setShouldReverseLayoutDirection:{objc_msgSend(v40, "_shouldReverseLayoutDirection")}];

  [v4 setAutofillMode:{objc_msgSend(v6, "autofillMode")}];
  [v4 setAutofillSubMode:{objc_msgSend(v6, "autofillSubMode")}];
  if ([v6 autofillMode] && objc_msgSend(v6, "autofillMode") != 8)
  {
    v41 = [(UIKBRTIPartner *)v190 partnerDelegate];
    v42 = [v41 textContentTypeForCurrentInputDelegate];
    v43 = [v4 textInputTraits];
    [v43 setTextContentType:v42];
  }

  v44 = [v6 autofillContext];
  [v4 setAutofillContext:v44];

  v45 = +[UIKeyboardImpl activeInstance];
  v46 = [v45 _passwordRules];
  [v4 setPasswordRules:v46];

  v47 = +[UIKeyboardImpl activeInstance];
  [v4 setShouldLoadAutofillSignUp:{objc_msgSend(v47, "shouldLoadAutofillSignUpInputViewController")}];

  if ([v6 supplementalLexiconIdentifier])
  {
    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v6, "supplementalLexiconIdentifier")}];
    v209 = v48;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v209 count:1];
    [v4 setEnabledSupplementalLexiconIdentifiers:v49];
  }

  else
  {
    [v4 setEnabledSupplementalLexiconIdentifiers:0];
  }

  v191 = v6;
  v51 = [(UIKBRTIPartner *)v190 partnerDelegate];
  [v4 setDelegateConformanceType:{objc_msgSend(v51, "delegateConformanceType")}];

  v52 = [(UIKBRTIPartner *)v190 partnerDelegate];
  v53 = [v52 inputDelegate];
  v54 = objc_opt_respondsToSelector();

  if (v54)
  {
    v55 = [(UIKBRTIPartner *)v190 partnerDelegate];
    v56 = [v55 inputDelegate];
    [v4 setDisableAutomaticKeyboardUI:{objc_msgSend(v56, "_disableAutomaticKeyboardUI")}];
  }

  v57 = [(UIKBRTIPartner *)v190 rtiClient];
  if (v57)
  {
    v58 = v57;
    v59 = +[UIKeyboard usesInputSystemUI];

    if (v59)
    {
      v60 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v61 = [v60 remoteInputViewHost];

      v62 = [v61 inputViewInfo];
      v63 = [v62 rtiInputViewInfo];
      [v4 setInputViewInfo:v63];

      v64 = [v61 assistantViewInfo];
      v65 = [v64 rtiInputViewInfo];
      [v4 setAssistantViewInfo:v65];

      v66 = [(UIKBRTIPartner *)v190 delegate];
      v67 = [v61 remoteAssistantItemForResponder:v66];
      [v4 setAssistantItem:v67];
    }
  }

  v68 = [v192 _responderWindow];
  v186 = [v68 windowScene];
  v185 = [v186 _sceneIdentifier];
  [v4 setSceneID:?];
  [v4 setContextID:{objc_msgSend(v68, "_contextId")}];
  v187 = v68;
  v69 = [v68 layer];
  [v4 setLayerID:CALayerGetRenderId()];

  if (objc_opt_respondsToSelector())
  {
    v70 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v71 = [v70 hardwareKeyboardExclusivityIdentifier];
    [v4 setSceneExclusivityIdentifier:v71];
  }

  v72 = [(UIKBRTIPartner *)v190 partnerDelegate];
  [v72 updateDelegatePasteSupportIfNeeded];

  v73 = [(UIKBRTIPartner *)v190 partnerDelegate];
  [v4 setSupportsImagePaste:{objc_msgSend(v73, "delegateSupportsImagePaste")}];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_45;
    }

    v74 = [(UIKBRTIPartner *)v190 partnerDelegate];
    if ([v74 canInsertAdaptiveImageGlyph])
    {
      [v4 setSupportsEmojiImageTextAttachments:1];
      goto LABEL_44;
    }

    v75 = [(UIKBRTIPartner *)v190 partnerDelegate];
    [v4 setSupportsEmojiImageTextAttachments:{objc_msgSend(v75, "canInsertEmojiImageTextAttachment")}];
LABEL_43:

    goto LABEL_44;
  }

  v74 = [(UIKBRTIPartner *)v190 partnerDelegate];
  if (![v74 canInsertAdaptiveImageGlyph])
  {
    v75 = [(UIKBRTIPartner *)v190 partnerDelegate];
    [v4 setSupportsAdaptiveImageGlyph:{objc_msgSend(v75, "canInsertStickerAsTextInputPayload")}];
    goto LABEL_43;
  }

  [v4 setSupportsAdaptiveImageGlyph:1];
LABEL_44:

LABEL_45:
  v76 = [(UIKBRTIPartner *)v190 partnerDelegate];
  v77 = [v76 textInputTraits];
  [v4 setDevicePasscodeEntry:{objc_msgSend(v77, "isDevicePasscodeEntry")}];

  v78 = [(UIKBRTIPartner *)v190 partnerDelegate];
  v79 = [v78 textInputTraits];
  [v4 setDisableInputBars:{objc_msgSend(v79, "disableInputBars")}];

  v80 = +[UIKeyboardImpl activeInstance];
  v189 = [v80 delegateAsResponder];

  v200[0] = 0x1EFB531F0;
  v81 = MEMORY[0x1E696AD98];
  v82 = [(UIKBRTIPartner *)v190 partnerDelegate];
  v183 = [v82 textInputTraits];
  v182 = [v81 numberWithBool:{objc_msgSend(v183, "forceFloatingKeyboard")}];
  v201[0] = v182;
  v200[1] = 0x1EFB53210;
  v83 = MEMORY[0x1E696AD98];
  v181 = [(UIKBRTIPartner *)v190 partnerDelegate];
  v180 = [v181 textInputTraits];
  v179 = [v83 numberWithBool:{objc_msgSend(v180, "forceDisableDictation")}];
  v201[1] = v179;
  v200[2] = 0x1EFB53230;
  v84 = MEMORY[0x1E696AD98];
  v178 = [(UIKBRTIPartner *)v190 partnerDelegate];
  v177 = [v178 textInputTraits];
  v176 = [v84 numberWithBool:{objc_msgSend(v177, "useAutomaticEndpointing")}];
  v201[2] = v176;
  v200[3] = 0x1EFB53250;
  v85 = MEMORY[0x1E696AD98];
  v175 = [(UIKBRTIPartner *)v190 partnerDelegate];
  v174 = [v175 textInputTraits];
  v173 = [v85 numberWithBool:{objc_msgSend(v174, "acceptsDictationSearchResults")}];
  v201[3] = v173;
  v200[4] = 0x1EFB53270;
  v86 = MEMORY[0x1E696AD98];
  NSClassFromString(&cfstr_Uisearchtextfi_4.isa);
  v184 = v82;
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v146 = [(UIKBRTIPartner *)v190 partnerDelegate];
    v145 = [v146 textInputTraits];
    v87 = [v145 showDictationButton];
  }

  else
  {
    v87 = 0;
  }

  v171 = [v86 numberWithInt:v87];
  v201[4] = v171;
  v200[5] = 0x1EFB532D0;
  v88 = MEMORY[0x1E696AD98];
  v170 = [(UIKBRTIPartner *)v190 partnerDelegate];
  v169 = [v170 textInputTraits];
  v168 = [v88 numberWithBool:{objc_msgSend(v169, "forceEnableDictation")}];
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
  if (v189 && _os_feature_enabled_impl())
  {
    v97 = [v189 _shouldDisplayWritingToolsCandidateOptions];
  }

  else
  {
    v97 = 0;
  }

  v157 = [v96 numberWithInt:v97];
  v201[12] = v157;
  v200[13] = 0x1EFB53450;
  v98 = MEMORY[0x1E696AD98];
  if (v189)
  {
    v99 = [v189 _shouldDisplayLongFormSmartReplyCandidateOptions];
  }

  else
  {
    v99 = 0;
  }

  v156 = [v98 numberWithInt:v99];
  v201[13] = v156;
  v200[14] = 0x1EFB53470;
  v100 = MEMORY[0x1E696AD98];
  if (v189)
  {
    v101 = [v189 _shouldDisplayGenmojiIfEnabled];
  }

  else
  {
    v101 = 0;
  }

  v202 = [v100 numberWithInt:v101];
  v200[15] = 0x1EFB53370;
  *&v154[4] = v190->_cachedHasPreviousKeyResponder;
  v155 = v202;
  if (*&v154[4])
  {
    *v154 = 0;
    cachedHasPreviousKeyResponder = v190->_cachedHasPreviousKeyResponder;
  }

  else
  {
    v103 = MEMORY[0x1E696AD98];
    v104 = [v189 _previousKeyResponder];
    *v154 = v104 != 0;
    v144 = v104;
    if (v104)
    {
      v141 = [v189 _previousKeyResponder];
      v105 = v141 != v189;
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
  *&v153[4] = v190->_cachedHasNextKeyResponder;
  if (*&v153[4])
  {
    *v153 = 0;
    cachedHasNextKeyResponder = v190->_cachedHasNextKeyResponder;
  }

  else
  {
    v107 = MEMORY[0x1E696AD98];
    v108 = [v189 _nextKeyResponder];
    *v153 = v108 != 0;
    v143 = v108;
    if (v108)
    {
      v140 = [v189 _nextKeyResponder];
      v109 = v140 != v189;
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
  v152 = [(UIKBRTIPartner *)v190 partnerDelegate];
  v151 = [v110 numberWithBool:{objc_msgSend(v152, "returnKeyEnabled")}];
  v205 = v151;
  v200[18] = 0x1EFB533D0;
  pendingDisableBecomeFirstResponderParameters = v190->_pendingDisableBecomeFirstResponderParameters;
  if (pendingDisableBecomeFirstResponderParameters)
  {
    v150 = 0;
    v112 = v190->_pendingDisableBecomeFirstResponderParameters;
  }

  else
  {
    v198 = @"disabled";
    v113 = MEMORY[0x1E696AD98];
    v150 = +[UIKeyboard inputUIOOP];
    if (v150)
    {
      v139 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v138 = [v139 keyboardArbiterClient];
      v114 = [v138 disableBecomeFirstResponder];
    }

    else
    {
      v114 = 0;
    }

    v142 = [v113 numberWithInt:v114];
    v199 = v142;
    v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v199 forKeys:&v198 count:1];
  }

  v206 = v112;
  v200[19] = 0x1EFB533F0;
  v115 = MEMORY[0x1E696AD98];
  v116 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v117 = [v116 existingContainerRootController];
  v118 = [v115 numberWithInt:{objc_msgSend(v117, "hiddenCount")}];
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

  v122 = [v4 userInfo];
  v123 = [v122 objectForKeyedSubscript:0x1EFB53370];
  v124 = v190->_cachedHasPreviousKeyResponder;
  v190->_cachedHasPreviousKeyResponder = v123;

  v125 = [v4 userInfo];
  v126 = [v125 objectForKeyedSubscript:0x1EFB53390];
  v127 = v190->_cachedHasNextKeyResponder;
  v190->_cachedHasNextKeyResponder = v126;

  v128 = +[UIKeyboardImpl activeInstance];
  v129 = [v128 textInputTraits];
  [v4 setSingleLineDocument:{objc_msgSend(v129, "isSingleLineDocument")}];

  v130 = _UIMainBundleIdentifier();
  [v4 setBundleId:v130];

  if (v193 && +[UIKeyboard usesInputSystemUI])
  {
    v131 = [(UIKBRTIPartner *)v190 delegate];
    v132 = [v131 _responderWindow];
    v133 = [v132 windowScene];
    v134 = [v133 _synchronizeDrawingAndReturnFence];
    [v4 setFenceHandle:v134];

    v121 = v192;
  }

  v135 = [(UIKBRTIPartner *)v190 rtiDocumentTraits];
  v136 = [v4 isEqual:v135] & (v193 ^ 1);

  if ((v136 & 1) == 0)
  {
    [(UIKBRTIPartner *)v190 setRtiDocumentTraits:v4];
  }

  v50 = v136 ^ 1;

  return v50;
}

- (id)inputDelegate
{
  v2 = [(UIKBRTIPartner *)self partnerDelegate];
  v3 = [v2 inputDelegate];

  return v3;
}

- (CGRect)_selectionClipRect
{
  v3 = [(UIKBRTIPartner *)self inputDelegate];
  v4 = objc_opt_respondsToSelector();

  v5 = [(UIKBRTIPartner *)self inputDelegate];
  v6 = v5;
  if (v4)
  {
    [v5 selectionClipRect];
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
    v6 = [(UIKBRTIPartner *)self inputDelegate];
    [v6 _selectionClipRect];
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
    v16 = [(UIKBRTIPartner *)self inputDelegate];
    v17 = [v16 textInputView];
    [v17 bounds];
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
  v3 = [(UIKBRTIPartner *)self queuedSupplementalLexiconOperations];
  [(UIKBRTIPartner *)self setQueuedSupplementalLexiconOperations:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
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
        v10 = [v9 type];
        if (v10 == 1)
        {
          -[UIKBRTIPartner _didRemoveSupplementalLexiconWithIdentifier:](self, "_didRemoveSupplementalLexiconWithIdentifier:", [v9 lexiconIdentifier]);
        }

        else if (!v10)
        {
          v11 = [v9 lexicon];
          if (v11)
          {
            v12 = [v9 lexicon];
            [(UIKBRTIPartner *)self _didAddSupplementalLexicon:v12];
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
  v3 = [(UIKBRTIPartner *)self rtiClient];
  v4 = [v3 defaultDocumentRequest];
  if (v4)
  {
    v5 = [(UIKBRTIPartner *)self rtiClient];
    v6 = [v5 defaultDocumentRequest];
    v7 = ([v6 flags] & 4) == 0;
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

  v9 = [(UIKBRTIPartner *)self rtiClient];
  if (![v9 isEnvironmentEnabled])
  {

    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_21:
    v17 = [(UIKBRTIPartner *)self inputDelegate];
    v18 = [v17 textInputView];
    [(UIView *)v18 _addGeometryChangeObserver:?];

    v15 = self;
    v16 = 1;
    goto LABEL_22;
  }

  v10 = [(UIKBRTIPartner *)self currentSessionIdentifier];
  if (v10 != 0 && !v7 && ![(UIKBRTIPartner *)self isObservingGeometry])
  {

    goto LABEL_21;
  }

  if (v8)
  {
    goto LABEL_21;
  }

LABEL_13:
  v20 = [(UIKBRTIPartner *)self rtiClient];
  if (![v20 isEnvironmentEnabled])
  {
    v12 = [(UIKBRTIPartner *)self isObservingGeometry];

    if (!v12)
    {
      return;
    }

LABEL_19:
    v13 = [(UIKBRTIPartner *)self inputDelegate];
    v14 = [v13 textInputView];
    [(UIView *)v14 _removeGeometryChangeObserver:?];

    v15 = self;
    v16 = 0;
LABEL_22:

    [(UIKBRTIPartner *)v15 setIsObservingGeometry:v16];
    return;
  }

  v11 = [(UIKBRTIPartner *)self currentSessionIdentifier];
  if (!v11)
  {
    v19 = [(UIKBRTIPartner *)self isObservingGeometry];

    if (!v19)
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
  v3 = [(UIKBRTIPartner *)self rtiClient];
  if (v3)
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
  v3 = [(UIKBRTIPartner *)self _newRTIConnection];
  [(UIKBRTIPartner *)self setRtiClient:v3];

  if (_os_feature_enabled_impl())
  {
    v4 = [(UIKBRTIPartner *)self rtiClient];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(UIKBRTIPartner *)self rtiClient];
      [v6 addMachNames:&unk_1EFE2CD78];
    }
  }

  v7 = [(UIKBRTIPartner *)self rtiClient];
  [(UIKBRTIPartner *)self _didCreateRTIClient:v7];
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

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v3 selector:sel__applicationWillSuspend_ name:@"UIApplicationSuspendedNotification" object:0];
    [v7 addObserver:v3 selector:sel__viewServiceHostDidBecomeActive_ name:0x1EFBB4870 object:0];
    [v7 addObserver:v3 selector:sel__viewServiceHostWillResignActive_ name:0x1EFBB4850 object:0];
    [v7 addObserver:v3 selector:sel__viewServiceHostDidBecomeActive_ name:0x1EFBB4830 object:0];
    [v7 addObserver:v3 selector:sel_documentTraitsChanged name:@"_UIHardwareKeyboardExclusivityIdentifierChangedNotification" object:0];
    [v7 addObserver:v3 selector:sel__applicationWillAddDeactivationReason_ name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
    [v7 addObserver:v3 selector:sel__applicationDidRemoveDeactivationReason_ name:@"_UIApplicationDidRemoveDeactivationReasonNotification" object:0];
    [v7 addObserver:v3 selector:sel__screenModeDidChange_ name:@"UIScreenModeDidChangeNotification" object:0];
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

  v4 = [(UIKBRTIPartner *)self rtiClient];
  if (v4)
  {
    v5 = v4;
    v6 = [(UIKBRTIPartner *)self currentSessionIdentifier];

    if (v6)
    {
      [(UIKBRTIPartner *)self endInputSessionWithIdentifier:0];
    }
  }

  v7 = [(UIKBRTIPartner *)self rtiClient];
  [v7 invalidateConnections];

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

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIApplicationSuspendedNotification" object:0];
  [v3 removeObserver:self name:0x1EFBB4870 object:0];
  [v3 removeObserver:self name:0x1EFBB4850 object:0];
  [v3 removeObserver:self name:0x1EFBB4830 object:0];
  [v3 removeObserver:self name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
  [v3 removeObserver:self name:@"_UIApplicationDidRemoveDeactivationReasonNotification" object:0];
  [v3 removeObserver:self name:@"UIScreenModeDidChangeNotification" object:0];
  v4 = [(UIKBRTIPartner *)self rtiClient];
  if (v4)
  {
    v5 = v4;
    v6 = [(UIKBRTIPartner *)self currentSessionIdentifier];

    if (v6)
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_keyboardTaskSubqueue;
  objc_sync_exit(v2);

  return v3;
}

- (void)setKeyboardTaskSubqueue:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  keyboardTaskSubqueue = obj->_keyboardTaskSubqueue;
  obj->_keyboardTaskSubqueue = v4;

  objc_sync_exit(obj);
}

- (void)_applicationWillSuspend:(id)a3
{
  v4 = [(UIKBRTIPartner *)self currentSessionIdentifier];

  if (v4)
  {
    if (+[UIKeyboard usingEndInputSessionCompletion])
    {

      [(UIKBRTIPartner *)self _updateRTIAllowedAndNotify:0 withReason:@"Application will suspend"];
    }

    else
    {
      v5 = [(UIKBRTIPartner *)self currentSessionIdentifier];
      [(UIKBRTIPartner *)self endAllowingRemoteTextInput:v5];
    }
  }
}

- (void)_viewServiceHostWillResignActive:(id)a3
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 existingContainerRootController];
  [v5 takeKeyboardSnapshotIgnoringSpotlightCheck:0];

  if (+[UIKeyboard usesInputSystemUIForAutoFillOnly])
  {
    v6 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    v7 = [(UIKBRTIPartner *)self authenticatingSessionIdentifier];
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      [(UIKBRTIPartner *)self forwardInputDestinationEventToUIHost:sel_dismissAutoFillPanel];
    }
  }

  [(UIKBRTIPartner *)self setViewServiceStateIsActiveForRTI:0];

  [(UIKBRTIPartner *)self _updateRTIAllowedAndNotify:0 withReason:@"View service host resigned active"];
}

- (void)_viewServiceHostDidBecomeActive:(id)a3
{
  [(UIKBRTIPartner *)self setViewServiceStateIsActiveForRTI:1];

  [(UIKBRTIPartner *)self _updateRTIAllowedAndNotify:0 withReason:@"View service host became active"];
}

- (void)_applicationWillAddDeactivationReason:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  v6 = [v5 integerValue];

  if (v6 == 4 && (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || +[UIKeyboard usesInputSystemUIForAutoFillOnlyWithRTI]))
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
      v9 = [v8 existingContainerRootController];
      [v9 takeKeyboardSnapshotIgnoringSpotlightCheck:self->_applicationDeactivationReasonAssistant];
    }
  }

  else
  {
    if (+[UIKeyboard usesInputSystemUIForAutoFillOnly])
    {
      v10 = [(UIKBRTIPartner *)self currentSessionIdentifier];
      v11 = [(UIKBRTIPartner *)self authenticatingSessionIdentifier];
      v12 = [v10 isEqual:v11];

      if ((v12 & 1) == 0 && (v6 == 5 || v6 == 0))
      {
        [(UIKBRTIPartner *)self forwardInputDestinationEventToUIHost:sel_dismissAutoFillPanel];
      }
    }

    if ((v6 - 1) <= 1)
    {
      self->_dontTakeKeyboardSnapshot = 1;
    }

    if (+[UIKeyboard usesInputSystemUI])
    {
      v14 = [UIApp _isActivatedIgnoringReasons:-[UIKBRTIPartner _ignoredReasonsForKeyboard](self withNewReason:{"_ignoredReasonsForKeyboard"), v6}];
    }

    else
    {
      v14 = 0;
    }

    v15 = +[UIKeyboard usesInputSystemUIForAutoFillOnlyWithRTI];
    if (v15)
    {
      LOBYTE(v15) = [UIApp _isActivatedIgnoringReasons:-[UIKBRTIPartner _ignoredReasonsForAutoFill](self withNewReason:{"_ignoredReasonsForAutoFill"), v6}];
    }

    if ((v6 - 11) > 1)
    {
      if (v6 != 5)
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
      v18 = [v17 existingContainerRootController];
      v19 = v18;
      if (dontTakeKeyboardSnapshot)
      {
        [v18 clearKeyboardSnapshot];

        v17 = _UIKeyboardLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Keyboard Snapshot is skipped", v20, 2u);
        }
      }

      else
      {
        [v18 takeKeyboardSnapshotIgnoringSpotlightCheck:self->_applicationDeactivationReasonAssistant];
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

- (void)_applicationDidRemoveDeactivationReason:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  v6 = [v5 integerValue];

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
    if ((v6 - 11) < 2)
    {
      goto LABEL_11;
    }

    if (v6 == 5)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v9 = [(UIKBRTIPartner *)self applicationStateIsActiveForRTI];
  if ((v6 - 11) >= 2)
  {
    if (v6 == 5)
    {
      goto LABEL_19;
    }

    if (v9)
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

  if (!v9)
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
  v2 = [(UIKBRTIPartner *)self partnerDelegate];
  v3 = [v2 delegate];

  return v3;
}

- (void)documentTraitsChanged
{
  if ([(UIKBRTIPartner *)self _updateRTITraitsIfNecessary])
  {
    v3 = [(UIKBRTIPartner *)self rtiClient];
    v4 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    v5 = [(UIKBRTIPartner *)self rtiDocumentTraits];
    [v3 remoteTextInputSessionWithID:v4 documentTraitsDidChange:v5];

    v7 = [(UIKBRTIPartner *)self rtiDocumentTraits];
    v6 = [v7 fenceHandle];
    [v6 invalidate];
  }
}

- (void)updateAnimationForOptions:(id)a3
{
  v5 = a3;
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 nextAnimationStyle];

  if (objc_opt_respondsToSelector())
  {
    [v5 setOffscreenDirection:{objc_msgSend(v4, "outDirection")}];
  }
}

- (void)beginInputSessionWithIdentifier:(id)a3
{
  v4 = a3;
  [(UIKBRTIPartner *)self _createRTIClientIfNecessary];
  [(UIKBRTIPartner *)self setCurrentSessionIdentifier:v4];
  if (!+[UIKeyboard usingEndInputSessionCompletion])
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(UIKBRTIPartner *)self rtiSessionMarkers];
    v6 = objc_opt_new();
    [v5 setObject:v6 forKey:v4];

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
  v7 = v4;
  v23 = self;
  v24 = &v25;
  v22 = v7;
  [(UIKBRTIPartner *)self updateStateWithCompletion:v21 updateTraits:0];
  if (+[UIKeyboard usingEndInputSessionCompletion])
  {
    *(v26 + 24) = v7 != 0;
    if (v7)
    {
      v8 = [(UIKBRTIPartner *)self rtiDocumentState];

      if (!v8)
      {
        v9 = objc_alloc_init(MEMORY[0x1E69C6F38]);
        [(UIKBRTIPartner *)self setRtiDocumentState:v9];

        [(UIKBRTIPartner *)self setExtentRangeForDocumentState:0];
      }
    }

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

    [(UIKBRTIPartner *)self updateAnimationForOptions:v10];
    v16 = [(UIKBRTIPartner *)self rtiClient];
    v17 = [(UIKBRTIPartner *)self rtiDocumentTraits];
    v18 = [(UIKBRTIPartner *)self rtiDocumentState];
    [v16 beginRemoteTextInputSessionWithID:v7 options:v10 documentTraits:v17 initialDocumentState:v18];

    v19 = [(UIKBRTIPartner *)self rtiDocumentTraits];
    v20 = [v19 fenceHandle];
    [v20 invalidate];

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

- (void)endInputSessionWithIdentifier:(id)a3 shouldResign:(BOOL)a4 waitForReply:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (+[UIKeyboard usesInputSystemUI])
  {
    v9 = !v6;
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

  if (!v8)
  {
    v8 = [(UIKBRTIPartner *)self currentSessionIdentifier];
  }

  v11 = [MEMORY[0x1E69C6F80] defaultOptions];
  v12 = v11;
  if (v11)
  {
    [v11 setShouldResign:v6];
    [(UIKBRTIPartner *)self updateAnimationForOptions:v12];
  }

  if (v5 && ([(UIKBRTIPartner *)self rtiClient], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_opt_respondsToSelector(), v13, (v14 & 1) != 0))
  {
    v15 = _UIKeyboardInputSessionChangeLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v45 = v8;
      _os_log_debug_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEBUG, "Waiting on response from -endRemoteTextInputSessionWithID:%@", buf, 0xCu);
    }

    if (qword_1ED49F508 != -1)
    {
      dispatch_once(&qword_1ED49F508, &__block_literal_global_208);
    }

    v16 = [(UIKBRTIPartner *)self partnerDelegate];
    v17 = [v16 taskQueue];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __74__UIKBRTIPartner_endInputSessionWithIdentifier_shouldResign_waitForReply___block_invoke_3;
    v41[3] = &unk_1E70FD208;
    v41[4] = self;
    v18 = v8;
    v42 = v18;
    v43 = v12;
    [v17 performSingleTask:v41 breadcrumb:_MergedGlobals_1203];

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
    v38 = self;
    v20 = v8;
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
  v25 = [(UIKBRTIPartner *)self rtiDocumentTraits];
  v26 = [v25 devicePasscodeEntry];

  if (v26)
  {
    v27 = objc_alloc_init(MEMORY[0x1E69D9590]);
    v28 = [(UIKBRTIPartner *)self rtiDocumentState];
    [v28 setDocumentState:v27];

    v29 = [(UIKBRTIPartner *)self rtiDocumentState];
    LOBYTE(v28) = objc_opt_respondsToSelector();

    if (v28)
    {
      v30 = objc_alloc_init(MEMORY[0x1E69D9568]);
      v31 = [(UIKBRTIPartner *)self rtiDocumentState];
      [v31 setAttributedDocumentState:v30];
    }
  }

  cachedHasPreviousKeyResponder = self->_cachedHasPreviousKeyResponder;
  self->_cachedHasPreviousKeyResponder = 0;

  cachedHasNextKeyResponder = self->_cachedHasNextKeyResponder;
  self->_cachedHasNextKeyResponder = 0;

  [(UIKBRTIPartner *)self _updateGeometryObserverIfNecessary];
  [(UIKBRTIPartner *)self removeTextSuggestionsForSessionWithID:v8];
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

- (void)documentStateChanged:(BOOL)a3
{
  v5 = [(UIKBRTIPartner *)self rtiClient];

  if (v5)
  {
    v6 = +[UIKeyboardImpl activeInstance];
    [v6 updateReturnKey:0];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__UIKBRTIPartner_documentStateChanged___block_invoke;
    v7[3] = &unk_1E70F35E0;
    v7[4] = self;
    v8 = a3;
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

- (void)performInputOperation:(id)a3
{
  v8 = a3;
  v4 = [(UIKBRTIPartner *)self rtiClient];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIKBRTIPartner *)self rtiClient];
    v7 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [v6 remoteTextInputSessionWithID:v7 performInputOperation:v8];
  }
}

- (void)forwardKeyboardSuppression:(BOOL)a3 suppressAssistantBar:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v15[2] = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E69C6F48]);
  v14[0] = @"suppressSoftwareKeyboard";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v14[1] = @"suppressAssistantBar";
  v15[0] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v15[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v7 setCustomInfo:v10];

  [v7 setCustomInfoType:@"UIUserPencilOperations"];
  v11 = [(UIKBRTIPartner *)self rtiClient];
  LOBYTE(v8) = objc_opt_respondsToSelector();

  if (v8)
  {
    v12 = [(UIKBRTIPartner *)self rtiClient];
    v13 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [v12 remoteTextInputSessionWithID:v13 performInputOperation:v7];
  }
}

- (void)forwardApplicationOperation:(SEL)a3 object:(id)a4
{
  v13 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E69C6F48]);
  [v6 setActionSelector:a3];
  [v6 setCustomInfoType:@"UIKBRTICustomInfoTypeApplicationOperations"];
  [v6 setCustomInfo:v13];
  v7 = [(UIKBRTIPartner *)self rtiClient];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(UIKBRTIPartner *)self rtiClient];
    v10 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [v9 remoteTextInputSessionWithID:v10 performInputOperation:v6];
  }

  if (sel_setRemoteDisableBecomeFirstResponder_ == a3)
  {
    v11 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v13;
    }

    objc_storeStrong(&self->_pendingDisableBecomeFirstResponderParameters, v12);
  }
}

- (void)forwardKeyboardInputMode:(id)a3
{
  v4 = MEMORY[0x1E69C6F48];
  v5 = a3;
  v9 = objc_alloc_init(v4);
  [v9 setCustomInfoType:@"UIUserPencilOperations"];
  [v9 setActionSelector:sel_setInputMode_];
  [v9 setCustomInfo:v5];

  v6 = [(UIKBRTIPartner *)self rtiClient];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(UIKBRTIPartner *)self rtiClient];
    v8 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [v7 remoteTextInputSessionWithID:v8 performInputOperation:v9];
  }
}

- (void)forwardClearForwardingInputDelegateAndResign:(BOOL)a3
{
  v3 = a3;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69C6F48]);
  v13 = @"resign";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v5 setCustomInfo:v7];

  [v5 setCustomInfoType:@"UIEmojiSearchOperations"];
  v8 = [(UIKBRTIPartner *)self rtiClient];
  LOBYTE(v7) = objc_opt_respondsToSelector();

  if (v7)
  {
    v9 = [(UIKBRTIPartner *)self rtiClient];
    v10 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [v9 remoteTextInputSessionWithID:v10 performInputOperation:v5];
  }

  v11 = +[UIKeyboardImpl activeInstance];
  v12 = [v11 inputDelegateManager];
  [v12 setShouldRespectForwardingInputDelegate:0];
}

- (void)forwardKeyboardEventToUIHost:(id)a3
{
  v9 = a3;
  if (([v9 keyEventForwardedFromInputUIHost] & 1) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C6F48]);
    [v4 setCustomInfo:v9];
    [v4 setCustomInfoType:@"UIPhysicalKeyboardEvent"];
    v5 = [(UIKBRTIPartner *)self rtiClient];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(UIKBRTIPartner *)self rtiClient];
      v8 = [(UIKBRTIPartner *)self currentSessionIdentifier];
      [v7 remoteTextInputSessionWithID:v8 performInputOperation:v4];
    }
  }
}

- (BOOL)synchronousForwardKeyCommandsBeforePublicToUIHost:(id)a3
{
  v4 = a3;
  if (([v4 keyEventForwardedFromInputUIHost] & 1) == 0)
  {
    [v4 setKeyCommandHandlingBeforePublic:1];
    v6 = objc_alloc_init(MEMORY[0x1E69C6F48]);
    [v6 setCustomInfo:v4];
    [v6 setCustomInfoType:@"UIPhysicalKeyboardEvent"];
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v7 = [(UIKBRTIPartner *)self rtiClient];
    if ([v7 isEnvironmentEnabled])
    {
      v8 = [(UIKBRTIPartner *)self currentSessionIdentifier];
      if (v8)
      {
        v9 = [(UIKBRTIPartner *)self rtiClient];
        v10 = objc_opt_respondsToSelector();

        if ((v10 & 1) == 0)
        {
LABEL_12:
          v16 = [(UIKBRTIPartner *)self partnerDelegate];
          [v16 setInputModeSwitcherVisibleInRemote:*(v24 + 24)];

          v5 = *(v28 + 24);
LABEL_13:
          _Block_object_dispose(&v23, 8);
          _Block_object_dispose(&v27, 8);

          goto LABEL_14;
        }

        v11 = dispatch_semaphore_create(0);
        v12 = [(UIKBRTIPartner *)self rtiClient];
        v13 = [(UIKBRTIPartner *)self currentSessionIdentifier];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __68__UIKBRTIPartner_synchronousForwardKeyCommandsBeforePublicToUIHost___block_invoke;
        v19[3] = &unk_1E7117E88;
        v21 = &v27;
        v22 = &v23;
        v7 = v11;
        v20 = v7;
        [v12 remoteTextInputSessionWithID:v13 performInputOperation:v6 withResponse:v19];

        v14 = dispatch_time(0, 2000000000);
        if (dispatch_semaphore_wait(v7, v14))
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

- (BOOL)synchronousForwardKeyCommandsToUIHost:(id)a3
{
  v4 = a3;
  if (([v4 keyEventForwardedFromInputUIHost] & 1) == 0)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69C6F48]);
    [v6 setCustomInfo:v4];
    [v6 setCustomInfoType:@"UIWebKitOperations"];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v7 = [(UIKBRTIPartner *)self rtiClient];
    if ([v7 isEnvironmentEnabled])
    {
      v8 = [(UIKBRTIPartner *)self currentSessionIdentifier];
      if (v8)
      {
        v9 = [(UIKBRTIPartner *)self rtiClient];
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
        v12 = [(UIKBRTIPartner *)self rtiClient];
        v13 = [(UIKBRTIPartner *)self currentSessionIdentifier];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __56__UIKBRTIPartner_synchronousForwardKeyCommandsToUIHost___block_invoke;
        v18[3] = &unk_1E7117EB0;
        v20 = &v21;
        v7 = v11;
        v19 = v7;
        [v12 remoteTextInputSessionWithID:v13 performInputOperation:v6 withResponse:v18];

        v14 = dispatch_time(0, 2000000000);
        if (dispatch_semaphore_wait(v7, v14))
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

- (BOOL)synchronousForwardKeyInputMethodCommandEventToUIHost:(id)a3 canHandleAppKeyCommand:(BOOL)a4
{
  v4 = a4;
  v30[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E69C6F48]);
  v29[0] = @"selector";
  v29[1] = @"keyEvent";
  v30[0] = @"_handleKeyInputMethodCommandForEvent:canHandleAppKeyCommand:";
  v30[1] = v6;
  v29[2] = @"canHandleAppKeyCommand";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v30[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];

  [v7 setCustomInfo:v9];
  [v7 setCustomInfoType:@"UIWebKitOperations"];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v10 = [(UIKBRTIPartner *)self rtiClient];
  if (![v10 isEnvironmentEnabled])
  {
    goto LABEL_9;
  }

  v11 = [(UIKBRTIPartner *)self currentSessionIdentifier];
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = [(UIKBRTIPartner *)self rtiClient];
  v13 = objc_opt_respondsToSelector();

  if ((v13 & 1) == 0)
  {
LABEL_10:
    v19 = *(v26 + 24);
    goto LABEL_11;
  }

  v14 = dispatch_semaphore_create(0);
  v15 = [(UIKBRTIPartner *)self rtiClient];
  v16 = [(UIKBRTIPartner *)self currentSessionIdentifier];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __94__UIKBRTIPartner_synchronousForwardKeyInputMethodCommandEventToUIHost_canHandleAppKeyCommand___block_invoke;
  v22[3] = &unk_1E7117EB0;
  v24 = &v25;
  v10 = v14;
  v23 = v10;
  [v15 remoteTextInputSessionWithID:v16 performInputOperation:v7 withResponse:v22];

  v17 = dispatch_time(0, 2000000000);
  if (!dispatch_semaphore_wait(v10, v17))
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

- (void)forwardDictationEventToUIHost:(SEL)a3 withOptionalObject:(id)a4
{
  v6 = MEMORY[0x1E69C6F48];
  v7 = a4;
  v11 = objc_alloc_init(v6);
  [v11 setActionSelector:a3];
  [v11 setInputModality:2];
  [v11 setCustomInfo:v7];

  [v11 setCustomInfoType:@"UIDictationRemoteInputOperations"];
  v8 = [(UIKBRTIPartner *)self rtiClient];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = [(UIKBRTIPartner *)self rtiClient];
    v10 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [v9 remoteTextInputSessionWithID:v10 performInputOperation:v11];
  }
}

- (void)forwardInputDestinationEventToUIHost:(SEL)a3 params:(id)a4
{
  v6 = MEMORY[0x1E69C6F48];
  v7 = a4;
  v11 = objc_alloc_init(v6);
  [v11 setActionSelector:a3];
  [v11 setCustomInfoType:@"UIUserInteractionRemoteInputOperations"];
  [v11 setCustomInfo:v7];

  v8 = [(UIKBRTIPartner *)self rtiClient];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = [(UIKBRTIPartner *)self rtiClient];
    v10 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [v9 remoteTextInputSessionWithID:v10 performInputOperation:v11];
  }
}

- (void)forwardSelectorToUIHost:(SEL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E69C6F48]);
  [v7 setActionSelector:a3];
  v8 = [(UIKBRTIPartner *)self rtiClient];
  if ([v8 isEnvironmentEnabled] && (-[UIKBRTIPartner currentSessionIdentifier](self, "currentSessionIdentifier"), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [(UIKBRTIPartner *)self rtiClient];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(UIKBRTIPartner *)self rtiClient];
      v14 = [(UIKBRTIPartner *)self currentSessionIdentifier];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __60__UIKBRTIPartner_forwardSelectorToUIHost_completionHandler___block_invoke;
      v15[3] = &unk_1E7118100;
      v16 = v6;
      [v13 remoteTextInputSessionWithID:v14 performInputOperation:v7 withResponse:v15];

      goto LABEL_8;
    }
  }

  else
  {
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0, 0);
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

- (void)forwardKeyboardCameraEvent_startCameraInput:(id)a3
{
  v4 = MEMORY[0x1E69C6F48];
  v5 = a3;
  v9 = objc_alloc_init(v4);
  [v9 setActionSelector:sel_handleRemoteKeyboardCameraEvent_startCameraInput_];
  [v9 setInputModality:1];
  [v9 setCustomInfo:v5];

  [v9 setCustomInfoType:@"UIKeyboardCameraRemoteInputOperations"];
  v6 = [(UIKBRTIPartner *)self rtiClient];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(UIKBRTIPartner *)self rtiClient];
    v8 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [v7 remoteTextInputSessionWithID:v8 performInputOperation:v9];
  }
}

- (void)forwardScrollEventToUIHost:(SEL)a3 contentTransform:(CGAffineTransform *)a4 environmentTransform:(CGAffineTransform *)a5
{
  if (sel_textSelectionWillScroll == a3)
  {
    v9 = 1;
  }

  else if (sel_textSelectionScrolling == a3)
  {
    v9 = 2;
  }

  else if (sel_textSelectionDidScroll == a3)
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
    v10 = *&a4->c;
    v18[0] = *&a4->a;
    v18[1] = v10;
    v18[2] = *&a4->tx;
    v11 = *&a5->c;
    v17[0] = *&a5->a;
    v17[1] = v11;
    v17[2] = *&a5->tx;
    v12 = [MEMORY[0x1E69C6F48] scrollingInputOperationWithType:v9 contentTransform:v18 environmentTransform:v17];
    v13 = [(UIKBRTIPartner *)self rtiClient];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(UIKBRTIPartner *)self rtiClient];
      v16 = [(UIKBRTIPartner *)self currentSessionIdentifier];
      [v15 remoteTextInputSessionWithID:v16 performInputOperation:v12];
    }
  }

  else
  {

    [(UIKBRTIPartner *)self forwardInputDestinationEventToUIHost:a3];
  }
}

- (void)forwardEventCallbackToRemoteSource_didChooseSupplementalItem:(id)a3 toReplaceText:(id)a4
{
  v19[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v6[1];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v7)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69C6F48]);
    [v10 setCustomInfoType:@"UISupplementalLexiconInputOperations"];
    v18[0] = @"selector";
    v11 = NSStringFromSelector(sel_handleEventCallbackFromRemoteDestination_didChooseSupplementalItem_toReplaceText_);
    v19[0] = v11;
    v18[1] = @"supplementalItem";
    v12 = v9;
    if (!v9)
    {
      v12 = [MEMORY[0x1E695DFB0] null];
    }

    v18[2] = @"textToReplace";
    v19[1] = v12;
    v19[2] = v7;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
    [v10 setCustomInfo:v13];

    if (!v9)
    {
    }

    v14 = [(UIKBRTIPartner *)self rtiClient];
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = [(UIKBRTIPartner *)self rtiClient];
      v17 = [(UIKBRTIPartner *)self currentSessionIdentifier];
      [v16 remoteTextInputSessionWithID:v17 performInputOperation:v10];
    }
  }
}

- (void)forwardEventToRemoteSource_canSuggestSupplementalItemsForCurrentSelection:(BOOL)a3
{
  v3 = a3;
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E69C6F48]);
  [v5 setCustomInfoType:@"UISupplementalLexiconInputOperations"];
  v12[0] = @"selector";
  v6 = NSStringFromSelector(sel_handleEventFromRemoteDestination_canSuggestSupplementalItemsForCurrentSelection_);
  v12[1] = @"canSuggest";
  v13[0] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v13[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v5 setCustomInfo:v8];

  v9 = [(UIKBRTIPartner *)self rtiClient];
  LOBYTE(v6) = objc_opt_respondsToSelector();

  if (v6)
  {
    v10 = [(UIKBRTIPartner *)self rtiClient];
    v11 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [v10 remoteTextInputSessionWithID:v11 performInputOperation:v5];
  }
}

- (id)textOperation_insertSupplementalCandidate:(id)a3 textToCommit:(id)a4
{
  v4 = 0;
  v16[3] = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v7 = MEMORY[0x1E69C6FA8];
    v8 = a4;
    v9 = a3;
    v10 = [v7 alloc];
    v11 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    v4 = [v10 initWithTargetSessionUUID:v11];

    [v4 setCustomInfoType:@"UISupplementalLexiconOperations"];
    v15[0] = @"selector";
    v12 = NSStringFromSelector(sel_handleEventFromRemoteSource_insertSupplementalCandidate_textToCommit_);
    v16[0] = v12;
    v16[1] = v9;
    v15[1] = @"candidate";
    v15[2] = @"textToCommit";
    v16[2] = v8;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

    [v4 setCustomInfo:v13];
  }

  return v4;
}

- (id)textOperation_chooseSupplementalItem:(id)a3 toReplaceText:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v6;
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
  if (v7 && v15)
  {
    v17 = objc_alloc(MEMORY[0x1E69C6FA8]);
    v18 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    v16 = [v17 initWithTargetSessionUUID:v18];

    [v16 setCustomInfoType:@"UISupplementalLexiconOperations"];
    v26[0] = @"selector";
    v19 = NSStringFromSelector(sel_handleEventFromRemoteSource_chooseSupplementalItem_toReplaceText_);
    v27[0] = v19;
    v27[1] = v8;
    v26[1] = @"supplementalItems";
    v26[2] = @"textToReplace";
    v27[2] = v7;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
    [v16 setCustomInfo:v20];
  }

  return v16;
}

- (id)textOperation_cancelChooseSupplementalItemToInsert
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69C6FA8]);
  v4 = [(UIKBRTIPartner *)self currentSessionIdentifier];
  v5 = [v3 initWithTargetSessionUUID:v4];

  [v5 setCustomInfoType:@"UISupplementalLexiconOperations"];
  v9 = @"selector";
  v6 = NSStringFromSelector(sel_handleEventFromRemoteSource_cancelChooseSupplementalItemToInsert);
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 setCustomInfo:v7];

  return v5;
}

- (id)textOperation_insertionPointEnteredText:(id)a3 withSupplementalCandidate:(id)a4
{
  v15[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = objc_alloc(MEMORY[0x1E69C6FA8]);
    v9 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    v10 = [v8 initWithTargetSessionUUID:v9];

    [v10 setCustomInfoType:@"UISupplementalLexiconOperations"];
    v14[0] = @"selector";
    v11 = NSStringFromSelector(sel_handleEventFromRemoteSource_insertionPointEnteredText_withSupplementalCandidate_);
    v15[0] = v11;
    v15[1] = v6;
    v14[1] = @"text";
    v14[2] = @"candidate";
    v15[2] = v7;
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
  v4 = [(UIKBRTIPartner *)self currentSessionIdentifier];
  v5 = [v3 initWithTargetSessionUUID:v4];

  [v5 setCustomInfoType:@"UISupplementalLexiconOperations"];
  v9 = @"selector";
  v6 = NSStringFromSelector(sel_handleEventFromRemoteSource_insertionPointExitedTextWithSupplementalItems);
  v10[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v5 setCustomInfo:v7];

  return v5;
}

- (id)textOperation_insertAutofillContent:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69C6FA8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(UIKBRTIPartner *)self currentSessionIdentifier];
  v8 = [v6 initWithTargetSessionUUID:v7];

  [v8 setCustomInfoType:@"UIKBRTICustomInfoTypeAutofill"];
  v13[0] = @"selector";
  v9 = NSStringFromSelector(sel_handleEventFromRemoteSource_insertAutofillContent_);
  v13[1] = @"autofillContent";
  v14[0] = v9;
  v10 = [v5 copy];

  v14[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v8 setCustomInfo:v11];

  return v8;
}

- (id)payloadDelegate
{
  v2 = [(UIKBRTIPartner *)self partnerDelegate];
  v3 = [v2 inputSystemSourceSession];

  v4 = [v3 sessionIndependentPayloadDelegate];

  return v4;
}

- (void)forwardAutofillPayload:(id)a3 toPayloadDelegate:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 count];
  if (v6 && v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69C6F68]);
    v9 = [(UIKBRTIPartner *)self textOperation_insertAutofillContent:v10];
    [v8 setTextOperations:v9];

    [v6 handleTextActionPayload:v8];
  }
}

- (void)forwardKeyboardOperation:(SEL)a3 object:(id)a4
{
  v9 = a4;
  v6 = [(UIKBRTIPartner *)self partnerDelegate];
  v7 = [v6 inputSystemSourceSession];

  if (v7)
  {
    v8 = [v7 textOperations];
    [v8 setEditingActionSelector:a3];
    [v8 setCustomInfoType:@"UIKBRTICustomInfoTypeKeyboardOperations"];
    [v8 setCustomInfo:v9];
    [v7 flushOperations];
  }
}

- (void)forwardTypologyLogURL:(id)a3
{
  v7 = a3;
  v4 = [(UIKBRTIPartner *)self partnerDelegate];
  v5 = [v4 inputSystemSourceSession];

  if (v5)
  {
    v6 = [v5 textOperations];
    [v6 setCustomInfoType:@"UIKBRTICustomInfoTypeTypologyLogOperations"];
    [v6 setCustomInfo:v7];
    [v5 flushOperations];
  }
}

- (void)forwardGrammarCorrectionEntries:(id)a3
{
  v4 = MEMORY[0x1E69C6F48];
  v5 = a3;
  v9 = objc_alloc_init(v4);
  [v9 setActionSelector:sel_handleGrammarCorrectionEntries_];
  [v9 setCustomInfo:v5];

  [v9 setCustomInfoType:@"UIKBRTICustomInfoTypeGrammarCorrectionOperations"];
  v6 = [(UIKBRTIPartner *)self rtiClient];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(UIKBRTIPartner *)self rtiClient];
    v8 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [v7 remoteTextInputSessionWithID:v8 performInputOperation:v9];
  }
}

- (void)textSuggestionsChanged:(id)a3
{
  v9 = a3;
  v4 = [(UIKBRTIPartner *)self _remoteInputSystemRequiresTextSuggestionUpdates];
  v5 = v9;
  if (v4)
  {
    if (v9)
    {
      v6 = [UITextSuggestion encodeTextSuggestions:v9];
    }

    else
    {
      v6 = 0;
    }

    v7 = [(UIKBRTIPartner *)self rtiClient];
    v8 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [v7 remoteTextInputSessionWithID:v8 textSuggestionsChanged:v6];

    v5 = v9;
  }
}

- (void)updateTextSuggestionsIfNecessary:(id)a3
{
  v4 = a3;
  v12 = [(UIKBRTIPartner *)self currentSessionIdentifier];

  v5 = v12;
  if (v12 == v4)
  {
    v6 = [(UIKBRTIPartner *)self textSuggestions];
    v7 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    v8 = [v6 objectForKey:v7];

    if (!v8)
    {
      return;
    }

    v9 = [(UIKBRTIPartner *)self textSuggestions];
    v10 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    v11 = [v9 objectForKey:v10];
    [(UIKBRTIPartner *)self textSuggestionsChanged:v11];

    v13 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [(UIKBRTIPartner *)self removeTextSuggestionsForSessionWithID:v13];
    v5 = v13;
  }
}

- (void)addTextSuggestions:(id)a3
{
  v9 = a3;
  v4 = [(UIKBRTIPartner *)self currentSessionIdentifier];

  if (v4)
  {
    v5 = [(UIKBRTIPartner *)self textSuggestions];

    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(UIKBRTIPartner *)self setTextSuggestions:v6];
    }

    v7 = [(UIKBRTIPartner *)self textSuggestions];
    v8 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [v7 setObject:v9 forKey:v8];
  }
}

- (void)removeTextSuggestionsForSessionWithID:(id)a3
{
  v7 = a3;
  v4 = [(UIKBRTIPartner *)self textSuggestions];
  v5 = [v4 objectForKey:v7];

  if (v5)
  {
    v6 = [(UIKBRTIPartner *)self textSuggestions];
    [v6 removeObjectForKey:v7];
  }
}

- (void)_queueSupplementalLexiconOperation:(unint64_t)a3 lexicon:(id)a4
{
  v12 = a4;
  v6 = [(UIKBRTIPartner *)self queuedSupplementalLexiconOperations];

  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(UIKBRTIPartner *)self setQueuedSupplementalLexiconOperations:v7];
  }

  v8 = v12;
  if (v12)
  {
    if (a3 == 1)
    {
      v9 = -[_UISupplementalLexiconOperation initRemoveOperationWithLexiconIdentifier:]([_UISupplementalLexiconOperation alloc], "initRemoveOperationWithLexiconIdentifier:", [v12[1] identifier]);
    }

    else
    {
      if (a3)
      {
        goto LABEL_10;
      }

      v9 = [[_UISupplementalLexiconOperation alloc] initAddOperationWithLexicon:v12];
    }

    v10 = v9;
    v8 = v12;
    if (v10)
    {
      v11 = [(UIKBRTIPartner *)self queuedSupplementalLexiconOperations];
      [v11 addObject:v10];

      v8 = v12;
    }
  }

LABEL_10:
}

- (void)didAddSupplementalLexicon:(id)a3
{
  v5 = a3;
  v4 = [(UIKBRTIPartner *)self currentSessionIdentifier];

  if (v4)
  {
    [(UIKBRTIPartner *)self _didAddSupplementalLexicon:v5];
  }

  else
  {
    [(UIKBRTIPartner *)self _queueSupplementalLexiconOperation:0 lexicon:v5];
  }
}

- (void)didRemoveSupplementalLexicon:(id)a3
{
  v7 = a3;
  v4 = [(UIKBRTIPartner *)self currentSessionIdentifier];

  if (v4)
  {
    v5 = v7[1];

    v6 = [v5 identifier];

    [(UIKBRTIPartner *)self _didRemoveSupplementalLexiconWithIdentifier:v6];
  }

  else
  {
    [(UIKBRTIPartner *)self _queueSupplementalLexiconOperation:1 lexicon:v7];
  }
}

- (void)_didAddSupplementalLexicon:(id)a3
{
  v4 = MEMORY[0x1E69C6F98];
  v5 = *(a3 + 1);
  v8 = [[v4 alloc] initWithTISupplementalLexicon:v5 iconProvider:&__block_literal_global_309_1];

  v6 = [(UIKBRTIPartner *)self rtiClient];
  v7 = [(UIKBRTIPartner *)self currentSessionIdentifier];
  [v6 remoteTextInputSessionWithID:v7 didAddRTISupplementalLexicon:v8];
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

- (void)_didRemoveSupplementalLexiconWithIdentifier:(unint64_t)a3
{
  v6 = [(UIKBRTIPartner *)self rtiClient];
  v5 = [(UIKBRTIPartner *)self currentSessionIdentifier];
  [v6 remoteTextInputSessionWithID:v5 didRemoveRTISupplementalLexiconWithIdentifier:a3];
}

- (void)_updateRTIAllowedAndNotify:(BOOL)a3 withReason:(id)a4
{
  v4 = a3;
  v44 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [objc_opt_self() mainScreen];
  v8 = [v7 currentMode];
  [v8 size];
  v10 = v9;
  v12 = v11;

  v13 = v12 > 0.0 && v10 > 0.0;
  v14 = +[UIWindow _applicationKeyWindow];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v16 = [v17 existingContainerWindow];
  }

  v18 = [v16 _isHostedInAnotherProcess];
  if (v18)
  {
    v19 = [(UIKBRTIPartner *)self viewServiceStateIsActiveForRTI];
  }

  else
  {
    v19 = [(UIKBRTIPartner *)self applicationStateIsActiveForRTI];
  }

  v20 = v13 & v19;
  if (v4)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  v22 = [(UIKBRTIPartner *)self rtiClient];
  if (![v22 isEnvironmentEnabled] || (v20 & 1) != 0)
  {
  }

  else
  {

    if (v16)
    {
      if (v18)
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
  v26 = [(UIKBRTIPartner *)self rtiClient];
  v27 = v26;
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
          v41 = v6;
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

      v29 = [(UIKBRTIPartner *)self partnerDelegate];
      v30 = [v29 taskQueue];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __56__UIKBRTIPartner__updateRTIAllowedAndNotify_withReason___block_invoke_3;
      v35[3] = &unk_1E70FD8B0;
      v35[4] = self;
      v37 = v24;
      v36 = v6;
      [v30 performSingleTask:v35 breadcrumb:qword_1ED49F510];

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
    [v26 setEnvironmentOptions:v24 withReason:v6];
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

- (void)_didCreateRTIClient:(id)a3
{
  [a3 setDelegate:self];

  [(UIKBRTIPartner *)self _updateRTIAllowedAndNotify:0 withReason:@"Synchronize with initial Application state"];
}

- (void)ensureRTIConnection
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = CatalystTextInputLog_UIKit();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(UIKBRTIPartner *)self delegate];
    v8 = [(UIKBRTIPartner *)self rtiClient];
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "RTI XPCEndpoint available: self.delegate: %{public}@, self.rtiClient: %{public}@", &v9, 0x16u);
  }

  v4 = [(UIKBRTIPartner *)self rtiClient];
  if (!v4)
  {
    v5 = [(UIKBRTIPartner *)self delegate];

    if (!v5)
    {
      return;
    }

    v6 = CatalystTextInputLog_UIKit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "RTIClient not around when we have a delegate! Attempting to recover...", &v9, 2u);
    }

    v4 = [(UIKBRTIPartner *)self partnerDelegate];
    [v4 resetInputDelegate];
  }
}

- (void)beginAllowingRemoteTextInput:(id)a3
{
  v4 = a3;
  [(UIKBRTIPartner *)self _createRTIClientIfNecessary];
  v5 = [(UIKBRTIPartner *)self rtiClient];
  [v5 beginAllowingRemoteTextInput:v4];

  [(UIKBRTIPartner *)self _updateGeometryObserverIfNecessary];
}

- (void)endAllowingRemoteTextInput:(id)a3 waitForReply:(BOOL)a4
{
  v7 = a3;
  v5 = [(UIKBRTIPartner *)self rtiClient];

  if (v5)
  {
    v6 = [(UIKBRTIPartner *)self rtiClient];
    [v6 endAllowingRemoteTextInput:v7];

    [(UIKBRTIPartner *)self _updateGeometryObserverIfNecessary];
  }

  [(UIKBRTIPartner *)self finishCompletionHandlersIfNeeded];
}

- (void)restartCurrentSession
{
  v3 = [(UIKBRTIPartner *)self rtiClient];
  if (v3)
  {
    v4 = v3;
    v5 = [(UIKBRTIPartner *)self currentSessionIdentifier];

    if (v5)
    {
      v6 = [(UIKBRTIPartner *)self currentSessionIdentifier];
      [(UIKBRTIPartner *)self beginAllowingRemoteTextInput:v6];

      [(UIKBRTIPartner *)self documentStateChanged];
    }
  }
}

- (void)updateStateWithCompletion:(id)a3 updateTraits:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  if ([(UIKBRTIPartner *)self _updateRTITraitsIfNecessary]&& v4)
  {
    v6 = [(UIKBRTIPartner *)self rtiClient];
    v7 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    v8 = [(UIKBRTIPartner *)self rtiDocumentTraits];
    [v6 remoteTextInputSessionWithID:v7 documentTraitsDidChange:v8];
  }

  [(UIKBRTIPartner *)self _updateRTIStateWithCompletion:v9];
}

- (BOOL)documentTraitsDisableAutomaticKeyboardUI
{
  v2 = [(UIKBRTIPartner *)self rtiDocumentTraits];
  v3 = [v2 disableAutomaticKeyboardUI];

  return v3;
}

- (id)inputDelegateView
{
  v2 = [(UIKBRTIPartner *)self partnerDelegate];
  v3 = [v2 inputDelegate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 textInputView];
  }

  v5 = v4;

  return v5;
}

- (void)_updateRTIStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(UIKBRTIPartner *)self rtiClient];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UIKBRTIPartner *)self rtiClient];
    v8 = [v7 serviceOptions];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(UIKBRTIPartner *)self rtiClient];
  v10 = [v9 defaultDocumentRequest];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69C6F30]);
    [v10 setTextGranularity:2];
    [v10 setRectGranularity:1];
    if (qword_1ED49F578 != -1)
    {
      dispatch_once(&qword_1ED49F578, &__block_literal_global_1191_0);
    }

    [v10 setSurroundingGranularityCount:qword_1ED49F570];
    if (qword_1ED49F588 != -1)
    {
      dispatch_once(&qword_1ED49F588, &__block_literal_global_1207);
    }

    [v10 setRectCountBefore:qword_1ED49F580];
    if (qword_1ED49F598 != -1)
    {
      dispatch_once(&qword_1ED49F598, &__block_literal_global_1217);
    }

    [v10 setRectCountAfter:qword_1ED49F590];
    [v10 setFlags:49];
    if (+[UIKeyboard inputUIOOP])
    {
      [v10 setFlags:{objc_msgSend(v10, "flags") | 4}];
    }
  }

  if (([v8 displayOptions] & 2) != 0)
  {
    [v10 setFlags:{objc_msgSend(v10, "flags") | 2}];
  }

  if (([v8 displayOptions] & 4) != 0)
  {
    [v10 setFlags:{objc_msgSend(v10, "flags") | 4}];
  }

  v11 = [(UIKBRTIPartner *)self partnerDelegate];
  v12 = [v11 delegateAsResponder];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__UIKBRTIPartner__updateRTIStateWithCompletion___block_invoke;
  v15[3] = &unk_1E7117EF8;
  v16 = v12;
  v17 = self;
  v18 = v4;
  v13 = v4;
  v14 = v12;
  [(UIKBRTIPartner *)self _queryDocumentRequest:v10 completion:v15];
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

- (void)_addCharacterRectsToDocumentState:(id)a3 textRange:(id)a4 offset:(int64_t)a5
{
  v64 = a3;
  v8 = a4;
  v9 = [(UIKBRTIPartner *)self inputDelegate];
  v10 = [v9 selectionRectsForRange:v8];

  v11 = [v10 lastObject];
  v63 = [v11 isVertical];

  if (v8)
  {
    if ([v8 isEmpty])
    {
      if (![v8 isEmpty])
      {
        goto LABEL_15;
      }

      v12 = [(UIKBRTIPartner *)self inputDelegate];
      v13 = [v12 textInputView];

      v14 = [(UIKBRTIPartner *)self inputDelegate];
      v15 = [v8 start];
      [v14 caretRectForPosition:v15];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v24 = [v13 window];
      [v13 convertRect:v24 toView:{v17, v19, v21, v23}];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      [v64 addTextRect:a5 forCharacterRange:0 granularity:0 isVertical:{v63, v26, v28, v30, v32}];
    }

    else
    {
      v33 = [(UIKBRTIPartner *)self partnerDelegate];
      v13 = [v33 inputDelegate];

      v34 = [v13 textInputView];
      v35 = [(UIKBRTIPartner *)self inputDelegate];
      v36 = [v8 start];
      v37 = [v8 end];
      v38 = [v35 offsetFromPosition:v36 toPosition:v37];

      v39 = [v8 start];
      if (v38 >= 1)
      {
        v62 = v10;
        v40 = 0;
        while (1)
        {
          v41 = [v13 positionFromPosition:v39 offset:1];

          if (!v41)
          {
            break;
          }

          v42 = [v13 textRangeFromPosition:v39 toPosition:v41];
          if (!v42)
          {
            break;
          }

          v43 = v42;
          v44 = [(UIKBRTIPartner *)self inputDelegate];
          [v44 firstRectForRange:v43];
          v46 = v45;
          v48 = v47;
          v50 = v49;
          v52 = v51;

          v53 = [v34 window];
          [v34 convertRect:v53 toView:{v46, v48, v50, v52}];
          v55 = v54;
          v57 = v56;
          v59 = v58;
          v61 = v60;

          [v64 addTextRect:a5 forCharacterRange:1 granularity:0 isVertical:{v63, v55, v57, v59, v61}];
          v40 = v41;

          ++a5;
          v39 = v40;
          if (!--v38)
          {
            goto LABEL_12;
          }
        }

        v40 = v39;
LABEL_12:

        v39 = v40;
        v10 = v62;
      }
    }
  }

LABEL_15:
}

- (void)_addTextCheckingAnnotatedStringToDocumentState:(id)a3
{
  v24 = a3;
  [v24 setTextCheckingAnnotatedString:0];
  v4 = [(UIKBRTIPartner *)self inputDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIKBRTIPartner *)self partnerDelegate];
    v7 = [v6 inputDelegate];

    v8 = [v7 markedTextRange];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v7 selectedTextRange];
    }

    v11 = v10;

    v12 = [v24 documentState];
    v13 = [v12 contextBeforeInput];

    v14 = [v24 documentState];
    v15 = [v14 contextAfterInput];

    if (v11)
    {
      v16 = [v11 start];
      v17 = [v7 positionFromPosition:v16 offset:{-objc_msgSend(v13, "length")}];

      v18 = [v11 end];
      v19 = [v7 positionFromPosition:v18 offset:{objc_msgSend(v15, "length")}];

      if (v17)
      {
        if (v19)
        {
          v20 = [v7 textRangeFromPosition:v17 toPosition:v19];
          if (v20)
          {
            v21 = v20;
            v22 = [(UIKBRTIPartner *)self inputDelegate];
            v23 = [v22 annotatedSubstringForRange:v21];
            [v24 setTextCheckingAnnotatedString:v23];
          }
        }
      }
    }
  }
}

- (void)applyRemoteDocumentTraitsIfNecessary:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [(UIKBRTIPartner *)self partnerDelegate];
    v7 = [v8 inputSystemSourceSession];

    if (!v7)
    {
      return;
    }
  }

  v197 = v4;
  v9 = [(UIKBRTIPartner *)self partnerDelegate];
  v10 = [v9 keyboardState];

  v11 = [(UIKBRTIPartner *)self partnerDelegate];
  v12 = [v11 textInputTraits];

  v200 = v12;
  v13 = [v12 copy];
  remoteDocumentTraits = self->_remoteDocumentTraits;
  v15 = [v7 documentTraits];

  if (remoteDocumentTraits == v15)
  {
    v191 = 1;
    v198 = 1;
    v199 = 0;
  }

  else
  {
    v16 = v10;
    v17 = [v7 documentTraits];
    v18 = [v17 inputViewInfo];
    v19 = [(RTIDocumentTraits *)self->_remoteDocumentTraits inputViewInfo];
    if (v18 == v19)
    {
      v199 = 0;
    }

    else
    {
      v20 = [v7 documentTraits];
      v21 = [v20 inputViewInfo];
      v22 = [(RTIDocumentTraits *)self->_remoteDocumentTraits inputViewInfo];
      v199 = [v21 isEqual:v22] ^ 1;
    }

    v23 = [v7 documentTraits];
    v24 = [v23 textInputModeData];
    if (v24)
    {
      v25 = [(RTIDocumentTraits *)self->_remoteDocumentTraits textInputModeData];
      if (v25)
      {
        v26 = [v7 documentTraits];
        v27 = [v26 textInputModeData];
        v28 = [(RTIDocumentTraits *)self->_remoteDocumentTraits textInputModeData];
        v199 |= [v27 isEqualToData:v28] ^ 1;
      }
    }

    v29 = [(RTIDocumentTraits *)self->_remoteDocumentTraits autofillMode];
    v30 = [v7 documentTraits];
    v191 = v29 == [v30 autofillMode];

    v31 = self->_remoteDocumentTraits;
    v32 = [v7 documentTraits];
    [(RTIDocumentTraits *)v31 isEqual:v32];

    v33 = [(RTIDocumentTraits *)self->_remoteDocumentTraits userInfo];
    v34 = [v33 objectForKeyedSubscript:0x1EFB53430];
    v35 = [v7 documentTraits];
    v36 = [v35 userInfo];
    v37 = [v36 objectForKeyedSubscript:0x1EFB53430];
    v198 = [v34 isEqual:v37];

    v38 = [(RTIDocumentTraits *)self->_remoteDocumentTraits userInfo];
    v39 = [v38 objectForKeyedSubscript:0x1EFB53430];
    if (!v39)
    {
      v40 = [v7 documentTraits];
      v41 = [v40 userInfo];
      v42 = [v41 objectForKeyedSubscript:0x1EFB53430];

      v43 = v198;
      if (!v42)
      {
        v43 = 1;
      }

      v198 = v43;
    }

    v44 = [v7 documentTraits];
    v45 = self->_remoteDocumentTraits;
    self->_remoteDocumentTraits = v44;

    v10 = v16;
  }

  v46 = [v200 keyboardAppearance];
  v190 = [v200 keyboardType];
  v189 = [v200 returnKeyType];
  v47 = [v7 documentTraits];

  if (v47)
  {
    v48 = [v7 documentTraits];
    v49 = [v48 textInputTraits];
    [v13 overlayWithTITextInputTraits:v49];

    v50 = [v7 documentTraits];
    v51 = [v50 PINEntrySeparatorIndexes];
    [v13 setPINEntrySeparatorIndexes:v51];

    v52 = [v7 documentTraits];
    v53 = [v52 validTextRange];
    [v13 setValidTextRange:{v53, v54}];

    v55 = [v7 documentTraits];
    v56 = [v55 recipientId];
    [v13 setAutocorrectionContext:v56];

    v57 = [v7 documentTraits];
    v58 = [v57 recipientId];
    [v10 setRecipientIdentifier:v58];

    v59 = [v7 documentTraits];
    v60 = [v59 responseContext];
    [v13 setResponseContext:v60];

    v61 = [v7 documentTraits];
    v62 = [v61 responseContext];
    [v10 setResponseContext:v62];

    v63 = [UIInputContextHistory alloc];
    v64 = [v7 documentTraits];
    v65 = [v64 inputContextHistory];
    v66 = [(UIInputContextHistory *)v63 initWithInputContextHistory:v65];
    [v13 setInputContextHistory:v66];

    v67 = [v7 documentTraits];
    v68 = [v67 inputContextHistory];
    v69 = [v68 copy];
    [v10 setInputContextHistory:v69];

    v70 = [v7 documentTraits];
    v71 = [v70 supportedPayloadIds];
    [v10 setSupportedPayloadIds:v71];

    v72 = [v7 documentTraits];
    [v13 setDevicePasscodeEntry:{objc_msgSend(v72, "devicePasscodeEntry")}];

    v73 = [v7 documentTraits];
    [v13 setDisableInputBars:{objc_msgSend(v73, "disableInputBars")}];

    v74 = [v7 documentTraits];
    [v13 setDisablePrediction:{objc_msgSend(v74, "disablePrediction")}];

    if (+[UIKeyboard isKeyboardProcess])
    {
      v75 = [v7 documentTraits];
      [v13 setHidePrediction:{objc_msgSend(v75, "hidePrediction")}];

      LODWORD(v75) = [v200 hidePrediction];
      v76 = [v7 documentTraits];
      v77 = v75 ^ [v76 hidePrediction];

      v199 &= v77 ^ 1;
      v78 = [v7 documentTraits];
      [v13 setDisablePrediction:{objc_msgSend(v78, "disablePrediction")}];
    }

    v79 = [v7 documentTraits];
    v80 = [v79 fenceHandle];
    v192 = v80 != 0;
  }

  else
  {
    v192 = 0;
  }

  if (!+[UIKeyboard isInputSystemUI])
  {
    [v13 setKeyboardAppearance:v46];
  }

  v81 = [v7 documentTraits];
  [v10 setAutofillMode:{objc_msgSend(v81, "autofillMode")}];

  v82 = [v7 documentTraits];
  [v10 setAutofillSubMode:{objc_msgSend(v82, "autofillSubMode")}];

  v83 = [v7 documentTraits];
  v84 = [v83 enabledSupplementalLexiconIdentifiers];

  v196 = v84;
  if ([v84 count])
  {
    v85 = [v84 firstObject];
    [v10 setSupplementalLexiconIdentifier:{objc_msgSend(v85, "unsignedLongLongValue")}];
  }

  else
  {
    [v10 setSupplementalLexiconIdentifier:0];
  }

  v86 = [v7 documentTraits];
  v87 = [v86 autofillContext];
  v88 = [v87 mutableCopy];

  if (!v88)
  {
    v89 = [v7 documentTraits];
    v90 = [v89 shouldLoadAutofillSignUp];

    if (v90)
    {
      v88 = 0;
    }

    else
    {
      v88 = [MEMORY[0x1E695DF90] dictionary];
    }
  }

  v91 = [v7 documentTraits];
  v92 = [v91 appId];

  if (v92)
  {
    v93 = [v7 documentTraits];
    v94 = [v93 appId];

    [v88 setObject:v94 forKey:@"_AppId"];
    if (+[UIKeyboard isKeyboardProcess])
    {
      [v10 setClientIdentifier:v94];
    }
  }

  v95 = [v7 documentTraits];
  v96 = [v95 bundleId];

  if (v96)
  {
    v97 = [v7 documentTraits];
    v98 = [v97 bundleId];

    [v88 setObject:v98 forKey:@"_BundleId"];
  }

  v99 = [v7 documentTraits];
  v100 = [v99 associatedDomains];

  if (v100)
  {
    [v88 setObject:v100 forKey:@"_AssociatedDomains"];
  }

  v195 = v100;
  v101 = +[UIKeyboardImpl activeInstance];
  v102 = [v7 documentTraits];
  [v101 setRemoteDelegateSupportsAdaptiveImageGlyph:{objc_msgSend(v102, "supportsAdaptiveImageGlyph")}];

  [v10 setAutofillContext:v88];
  v103 = [(UIKBRTIPartner *)self currentSessionIdentifier];

  if (v103)
  {
    v104 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    [v10 setDocumentIdentifier:v104];
  }

  v105 = [v7 documentTraits];
  v106 = [v105 userInfo];

  if (v106)
  {
    v107 = [v106 objectForKeyedSubscript:0x1EFB531F0];
    [v13 setForceFloatingKeyboard:{objc_msgSend(v107, "BOOLValue")}];

    v108 = [v106 objectForKeyedSubscript:0x1EFB53210];
    [v13 setForceDisableDictation:{objc_msgSend(v108, "BOOLValue")}];

    v109 = [v106 objectForKeyedSubscript:0x1EFB53230];
    [v13 setUseAutomaticEndpointing:{objc_msgSend(v109, "BOOLValue")}];

    v110 = [v106 objectForKeyedSubscript:0x1EFB53250];
    [v13 setAcceptsDictationSearchResults:{objc_msgSend(v110, "BOOLValue")}];

    v111 = [v106 objectForKeyedSubscript:0x1EFB532D0];
    [v13 setForceEnableDictation:{objc_msgSend(v111, "BOOLValue")}];

    v112 = +[UIKeyboardImpl activeInstance];
    v113 = [v112 isSettingDelegate];

    if (v113)
    {
      v114 = [v106 objectForKeyedSubscript:0x1EFB53290];
      v115 = [v114 BOOLValue];

      if (v115)
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

    v119 = [v106 objectForKeyedSubscript:0x1EFB53350];
    v120 = +[UIDictationController sharedInstance];
    [v120 set_inputDelegateClassName:v119];

    v121 = [v106 objectForKeyedSubscript:0x1EFB53270];
    v122 = [v121 BOOLValue];
    v123 = +[UIDictationController sharedInstance];
    [v123 set_shouldUseDictationSearchFieldBehavior:v122];

    v124 = +[UIKeyboardImpl activeInstance];
    LODWORD(v122) = [v124 isSettingDelegate];

    if (v122)
    {
      v125 = [v106 objectForKeyedSubscript:0x1EFB532B0];
      v126 = [v125 BOOLValue];

      if (v126)
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

    v193 = v10;
    v130 = [v106 objectForKeyedSubscript:0x1EFB532F0];
    v131 = [v130 BOOLValue];
    v132 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v132 setHasCustomInputViewController:v131];

    v133 = +[UIKeyboardImpl activeInstance];
    v134 = [v106 objectForKeyedSubscript:0x1EFB53310];
    [v133 _setShouldSuppressAssistantBar:{objc_msgSend(v134, "BOOLValue")}];

    v135 = +[UIKeyboardImpl activeInstance];
    v136 = [v106 objectForKeyedSubscript:0x1EFB53330];
    [v135 _setShouldSuppressSoftwareKeyboard:{objc_msgSend(v136, "BOOLValue")}];

    v137 = +[UIKeyboardImpl activeInstance];
    [v137 _suppressSoftwareKeyboardStateChangedIgnoringPolicyDelegate:0];

    v138 = [v106 objectForKeyedSubscript:0x1EFB53370];
    v139 = [v138 BOOLValue];
    v140 = +[UIKeyboardImpl activeInstance];
    [v140 setHasPreviousKeyResponder:v139];

    v141 = [v106 objectForKeyedSubscript:0x1EFB53390];
    v142 = [v141 BOOLValue];
    v143 = +[UIKeyboardImpl activeInstance];
    [v143 setHasNextKeyResponder:v142];

    v144 = +[UIKeyboardImpl activeInstance];
    v145 = [v106 objectForKeyedSubscript:0x1EFB533B0];
    [v144 setReturnKeyEnabled:{objc_msgSend(v145, "BOOLValue")}];

    v146 = +[UIKeyboardImpl activeInstance];
    v147 = [v106 objectForKeyedSubscript:0x1EFB53410];
    [v146 setCorrectionLearningAllowed:{objc_msgSend(v147, "BOOLValue")}];

    v148 = [v106 objectForKeyedSubscript:0x1EFB533D0];
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
    v152 = [v151 BOOLValue];

    v153 = [v149 objectForKeyedSubscript:@"forSuppressionAssertion"];
    v154 = [v153 BOOLValue];

    v155 = [v149 objectForKeyedSubscript:@"updatePlacement"];
    v156 = [v155 BOOLValue];

    if (v154)
    {
      v157 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      [v157 setDisableBecomeFirstResponder:v152 forSuppressionAssertion:1 updatePlacement:v156];
    }

    else
    {
      if (!+[UIKeyboard inputUIOOP])
      {
        goto LABEL_61;
      }

      v158 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v159 = [v158 keyboardArbiterClient];
      v160 = [v159 disableBecomeFirstResponder];

      if (v152 == v160)
      {
        goto LABEL_61;
      }

      v157 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      [v157 setDisableBecomeFirstResponder:v152 forSuppressionAssertion:0];
    }

LABEL_61:
    v161 = [v106 objectForKeyedSubscript:0x1EFB533F0];
    v162 = [v161 BOOLValue];
    v163 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v164 = [v163 existingContainerRootController];
    [v164 setHiddenCount:v162];

    v10 = v193;
  }

  v165 = +[UIKeyboardImpl activeInstance];
  v166 = [v165 showingEmojiSearch];

  v167 = [(UIKBRTIPartner *)self partnerDelegate];
  v168 = v167;
  if (v166)
  {
    v207[0] = MEMORY[0x1E69E9820];
    v207[1] = 3221225472;
    v207[2] = __61__UIKBRTIPartner_applyRemoteDocumentTraitsIfNecessary_force___block_invoke;
    v207[3] = &unk_1E7117F20;
    v208 = v13;
    v209 = v189;
    v210 = v190;
    [v168 modifyTextInputTraits:v207 forceSync:v197];
  }

  else
  {
    [v167 updateInputDelegateForRemoteTraitChange:v13 forceSync:v197];
  }

  if (+[UIKeyboard isInputSystemUI])
  {
    v169 = [v7 documentTraits];
    v170 = [v169 assistantItem];
    [(UIKBRTIPartner *)self applyAssistantItem:v170];

    v171 = [v7 documentTraits];
    v172 = [v171 assistantViewInfo];
    v173 = [v7 documentTraits];
    v174 = [v172 uiRemoteInputViewInfoForProcessId:{objc_msgSend(v173, "processId")}];

    v175 = [(UIKBRTIPartner *)self partnerDelegate];
    [v175 updateAssistantViewInfo:v174];

    v176 = v192;
    if ((v199 | v192))
    {
      v194 = v10;
      if (v192)
      {
        v177 = [v7 documentTraits];
        v178 = [v177 fenceHandle];
        v179 = [v178 isUsable];

        if (v179)
        {
          v180 = [v7 documentTraits];
          v181 = [v180 fenceHandle];
          v182 = [v181 copy];
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
      v203 = self;
      v204 = v7;
      v206 = v199;
      v183 = v182;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v10 = v194;
    }

    v184 = +[UIKeyboardImpl activeInstance];
    [v184 _updateDelegateRequiresKeyEventsFromRemoteTextInput];
  }

  if (+[UIKeyboard isKeyboardProcess])
  {
    v185 = [(UIKBRTIPartner *)self partnerDelegate];
    v186 = [v7 documentTraits];
    [v185 setRemoteDelegateSupportsImagePaste:{objc_msgSend(v186, "supportsImagePaste")}];
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

- (void)applyAssistantItem:(id)a3
{
  v4 = a3;
  v5 = [(UIKBRTIPartner *)self partnerDelegate];
  [v5 applyAssistantItem:v4];
}

- (void)applyRemoteDocumentStateIfNecessary:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    v7 = [(UIKBRTIPartner *)self partnerDelegate];
    v24 = [v7 inputSystemSourceSession];

    v6 = v24;
  }

  v25 = v6;
  v8 = [v6 documentState];
  v9 = [v8 originatedFromSource];

  v10 = v25;
  if (v25)
  {
    v11 = [v25 documentState];
    v12 = [v11 documentState];

    v10 = v25;
    if (v12)
    {
      v13 = [v25 documentState];
      v14 = [v13 documentState];
      v15 = [v25 documentState];
      v16 = [v15 selectedTextRange];
      v18 = v17;

      v19 = [v13 hasText];
      self->_isNotifyingDelegateOfRemoteOutputOperation = 1;
      if (v9)
      {
        v20 = [(UIKBRTIPartner *)self partnerDelegate];
        [v20 updateForExpectedRemoteDocumentStateChange:v14 selectedTextRange:v16 forceSync:{v18, v4}];
      }

      else
      {
        v21 = v19;
        v22 = [v13 canSuggestSupplementalItemsForCurrentSelection];
        v23 = [(UIKBRTIPartner *)self partnerDelegate];
        [v23 setCanSuggestSupplementalItemsForCurrentSelection:v22];

        v20 = [(UIKBRTIPartner *)self partnerDelegate];
        [v20 updateInputDelegateForRemoteDocumentStateChange:v14 selectedTextRange:v16 hasText:v18 forceSync:{v21, v4}];
      }

      self->_isNotifyingDelegateOfRemoteOutputOperation = 0;
      v10 = v25;
    }
  }
}

- (void)sendAutoFillDidInsertCallbacksWithTextOperations:(id)a3
{
  v14 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v14 isAutoFillTextOperation])
  {
    v4 = [v14 textToAssert];
    if ([v4 length])
    {
    }

    else
    {
      v5 = [v14 keyboardOutput];
      v6 = [v5 insertionText];
      v7 = [v6 length];

      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v8 = [v14 isExplicitAutoFillInvocation];
    v9 = [(UIKBRTIPartner *)self partnerDelegate];
    v10 = [v9 inputDelegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(UIKBRTIPartner *)self partnerDelegate];
      v13 = [v12 inputDelegate];
      [v13 autoFillDidInsertWithExplicitInvocationMode:v8];
    }
  }

LABEL_8:
}

- (void)inputSession:(id)a3 documentStateDidChange:(id)a4 withMergeResult:(unint64_t)a5
{
  if ((a5 & 0x21) != 0)
  {
    [(UIKBRTIPartner *)self applyRemoteDocumentStateIfNecessary:a3 force:1];
  }
}

- (void)inputSession:(id)a3 performInputOperation:(id)a4
{
  v5 = a4;
  v6 = [v5 customInfoType];
  v7 = [v6 isEqualToString:@"UIPhysicalKeyboardEvent"];

  if (!v7)
  {
    v10 = [v5 customInfoType];
    v11 = [v10 isEqualToString:@"UISupplementalLexiconInputOperations"];

    if (v11)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_2;
      aBlock[3] = &unk_1E70F35B8;
      v73 = v5;
      v74 = self;
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

    v13 = [v5 customInfoType];
    v14 = [v13 isEqualToString:@"UIDictationRemoteInputOperations"];

    if (v14)
    {
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_3;
      v69[3] = &unk_1E70F35B8;
      v70 = v5;
      v71 = self;
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

    v17 = [v5 customInfoType];
    v18 = [v17 isEqualToString:@"UIUserInteractionRemoteInputOperations"];

    if (v18)
    {
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_431;
      v66[3] = &unk_1E70F35B8;
      v67 = v5;
      v68 = self;
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

    v20 = [v5 customInfoType];
    v21 = [v20 isEqualToString:@"UIKeyboardCameraRemoteInputOperations"];

    if (v21)
    {
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_477;
      v63[3] = &unk_1E70F35B8;
      v64 = v5;
      v65 = self;
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

    v23 = [v5 customInfoType];
    v24 = [v23 isEqualToString:@"UIEmojiSearchOperations"];

    if (v24)
    {
      v25 = [v5 customInfo];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_32;
      }

      v27 = [v5 customInfo];
      v28 = [v27 objectForKeyedSubscript:@"resign"];
      if (!v28)
      {
        goto LABEL_53;
      }

      v29 = +[UIKeyboardImpl activeInstance];
      [v29 clearForwardingInputDelegateAndResign:{objc_msgSend(v28, "BOOLValue")}];
    }

    else
    {
      v30 = [v5 customInfoType];
      v31 = [v30 isEqualToString:@"UIUserPencilOperations"];

      if (v31)
      {
        v60[0] = MEMORY[0x1E69E9820];
        v60[1] = 3221225472;
        v60[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_2_478;
        v60[3] = &unk_1E70F35B8;
        v61 = v5;
        v62 = self;
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

      v33 = [v5 customInfoType];
      v34 = [v33 isEqualToString:@"UIKBRTICustomInfoTypeApplicationOperations"];

      v35 = [v5 actionSelector];
      if (!v34)
      {
        if (!v35 || [v5 actionSelector] != sel_acceptAutocorrection)
        {
          v37 = [v5 customInfoType];
          v38 = [v37 isEqualToString:@"UIWebKitOperations"];

          if (v38)
          {
            v57[0] = MEMORY[0x1E69E9820];
            v57[1] = 3221225472;
            v57[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_4;
            v57[3] = &unk_1E70F3590;
            v58 = v5;
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
            v40 = [v5 customInfoType];
            v41 = [v40 isEqualToString:@"UIKBRTICustomInfoTypeAnalyticsOperations"];

            if (v41)
            {
              v55[0] = MEMORY[0x1E69E9820];
              v55[1] = 3221225472;
              v55[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_5;
              v55[3] = &unk_1E70F3590;
              v56 = v5;
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
              v47 = [v5 customInfoType];
              v48 = [v47 isEqualToString:@"UIKBRTICustomInfoTypeGrammarCorrectionOperations"];

              if (!v48)
              {
                v50 = [v5 keyboardInput];
                v8 = [v50 output];

                if (!v8)
                {
                  goto LABEL_9;
                }

                v9 = [(UIKBRTIPartner *)self partnerDelegate];
                v51 = [v5 keyboardInput];
                [v9 undoWithKeyboardInput:v51];

                goto LABEL_4;
              }

              v52[0] = MEMORY[0x1E69E9820];
              v52[1] = 3221225472;
              v52[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke_6;
              v52[3] = &unk_1E70F35B8;
              v53 = v5;
              v54 = self;
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

        v27 = [(UIKBRTIPartner *)self partnerDelegate];
        [v27 acceptAutocorrection];
LABEL_54:

        goto LABEL_32;
      }

      if (v35 == sel_setRemoteDisableBecomeFirstResponder_)
      {
        v27 = [v5 customInfo];
        v28 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
        v29 = [v27 objectForKeyedSubscript:@"disabled"];
        v43 = [v29 BOOLValue];
        v44 = [v27 objectForKeyedSubscript:@"forSuppressionAssertion"];
        v45 = [v44 BOOLValue];
        v46 = [v27 objectForKeyedSubscript:@"updatePlacement"];
        [v28 setDisableBecomeFirstResponder:v43 forSuppressionAssertion:v45 updatePlacement:{objc_msgSend(v46, "BOOLValue")}];
      }

      else
      {
        if ([v5 actionSelector] == sel_verifyPlacement)
        {
          v27 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
          [v27 verifyPlacement];
          goto LABEL_54;
        }

        if ([v5 actionSelector] != sel_setInputViewsHidden_)
        {
          goto LABEL_32;
        }

        v27 = [v5 customInfo];
        v28 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v29 = [v28 existingContainerRootController];
        v36 = [v27 objectForKeyedSubscript:@"hidden"];
        [v29 setInputViewsHidden:{objc_msgSend(v36, "BOOLValue")}];
      }
    }

LABEL_53:
    goto LABEL_54;
  }

  v8 = [v5 customInfo];
  if (pthread_main_np() != 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__UIKBRTIPartner_inputSession_performInputOperation___block_invoke;
    block[3] = &unk_1E70F35B8;
    block[4] = self;
    v76 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    goto LABEL_9;
  }

  v9 = [(UIKBRTIPartner *)self partnerDelegate];
  [v9 performKeyboardEvent:v8];
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

- (void)inputSession:(id)a3 performInputOperation:(id)a4 withResponse:(id)a5
{
  v7 = a4;
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__UIKBRTIPartner_inputSession_performInputOperation_withResponse___block_invoke;
  aBlock[3] = &unk_1E70FCE28;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v9 = v8;
  v10 = v7;
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

- (void)inputSession:(id)a3 textSuggestionsChanged:(id)a4
{
  v5 = a4;
  if (pthread_main_np() == 1)
  {
    v6 = [(UIKBRTIPartner *)self partnerDelegate];
    v7 = [UITextSuggestion decodeTextSuggestions:v5];
    [v6 setSuggestions:v7];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__UIKBRTIPartner_inputSession_textSuggestionsChanged___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v8[4] = self;
    v9 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

void __54__UIKBRTIPartner_inputSession_textSuggestionsChanged___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) partnerDelegate];
  v2 = [UITextSuggestion decodeTextSuggestions:*(a1 + 40)];
  [v3 setSuggestions:v2];
}

- (void)inputSession:(id)a3 didAddRTISupplementalLexicon:(id)a4
{
  v5 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__UIKBRTIPartner_inputSession_didAddRTISupplementalLexicon___block_invoke;
  aBlock[3] = &unk_1E7117F48;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  if (pthread_main_np() == 1)
  {
    v6[2](v6, v5);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__UIKBRTIPartner_inputSession_didAddRTISupplementalLexicon___block_invoke_2;
    block[3] = &unk_1E70F4A50;
    v9 = v6;
    v8 = v5;
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

- (void)inputSession:(id)a3 didRemoveRTISupplementalLexicon:(id)a4
{
  v5 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__UIKBRTIPartner_inputSession_didRemoveRTISupplementalLexicon___block_invoke;
  aBlock[3] = &unk_1E7117F48;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  if (pthread_main_np() == 1)
  {
    v6[2](v6, v5);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__UIKBRTIPartner_inputSession_didRemoveRTISupplementalLexicon___block_invoke_2;
    block[3] = &unk_1E70F4A50;
    v9 = v6;
    v8 = v5;
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

- (BOOL)compareWaitingRTIOutputOperationResponseContext:(id)a3 andExchange:(id)a4
{
  v7 = a4;
  v8 = self;
  v9 = a3;
  objc_sync_enter(v8);
  waitingRTIOutputOperationResponseContext = v8->_waitingRTIOutputOperationResponseContext;

  if (waitingRTIOutputOperationResponseContext == v9)
  {
    objc_storeStrong(&v8->_waitingRTIOutputOperationResponseContext, a4);
  }

  objc_sync_exit(v8);

  return waitingRTIOutputOperationResponseContext == v9;
}

- (id)exchangeWaitingRTIOutputOperationResponseContext:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = v5->_waitingRTIOutputOperationResponseContext;
  waitingRTIOutputOperationResponseContext = v5->_waitingRTIOutputOperationResponseContext;
  v5->_waitingRTIOutputOperationResponseContext = v4;
  v8 = v4;

  objc_sync_exit(v5);

  return v6;
}

void __50__UIKBRTIPartner_finishCompletionHandlersIfNeeded__block_invoke()
{
  v0 = [&__block_literal_global_537_2 copy];
  v1 = qword_1ED49F520;
  qword_1ED49F520 = v0;
}

- (void)performTextOperations:(id)a3
{
  v9 = a3;
  v4 = [v9 customInfoType];
  if ([v4 isEqualToString:@"UIEmojiSearchOperations"])
  {
    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v6 = [v5 scene];
    v7 = [v6 activationState];

    v8 = v9;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(UIKBRTIPartner *)self performTextOperations:v9 resultHandler:&__block_literal_global_541];
  v8 = v9;
LABEL_6:
}

- (void)performTextOperations:(id)a3 resultHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!+[UIKeyboard usingEndInputSessionCompletion])
  {
    v9 = [(UIKBRTIPartner *)self exchangeWaitingRTIOutputOperationResponseContext:0];
    if (v9)
    {
      v10 = [v6 keyboardOutput];
      [(UIKBRTIPartner *)self setPendingOutputOperation:v10];

      v7[2](v7, 255);
      if (qword_1ED49F558 != -1)
      {
        dispatch_once(&qword_1ED49F558, &__block_literal_global_559);
      }

      [v9 transferExecutionToMainThreadWithTask:&__block_literal_global_565 breadcrumb:qword_1ED49F550];
      goto LABEL_23;
    }

    if (pthread_main_np() == 1)
    {
      [(UIKBRTIPartner *)self _queued_performTextOperations:v6 resultHandler:v7];
LABEL_23:

      goto LABEL_24;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__UIKBRTIPartner_performTextOperations_resultHandler___block_invoke_4;
    v15[3] = &unk_1E70FCE28;
    v15[4] = self;
    v16 = v6;
    v17 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v15);

    v12 = v16;
LABEL_22:

    goto LABEL_23;
  }

  if (pthread_main_np() != 1)
  {
    v9 = [(UIKBRTIPartner *)self keyboardTaskSubqueue];
    if (v9)
    {
      v11 = _UIKeyboardInputSessionChangeLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v27 = v6;
        v28 = 2112;
        v29 = v9;
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
      v22 = v6;
      v23 = v9;
      v24 = self;
      v25 = v7;
      [v23 dispatchAsync:v21 breadcrumb:qword_1ED49F530];

      v12 = v22;
    }

    else
    {
      if (qword_1ED49F548 != -1)
      {
        dispatch_once(&qword_1ED49F548, &__block_literal_global_550);
      }

      v13 = [(UIKBRTIPartner *)self partnerDelegate];
      v14 = [v13 taskQueue];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __54__UIKBRTIPartner_performTextOperations_resultHandler___block_invoke_3_554;
      v18[3] = &unk_1E7117168;
      v18[4] = self;
      v19 = v6;
      v20 = v7;
      [v14 addTask:v18 breadcrumb:qword_1ED49F540];

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

  [(UIKBRTIPartner *)self _queued_performTextOperations:v6 resultHandler:v7];
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

- (void)_queued_performTextOperations:(id)a3 resultHandler:(id)a4
{
  v233 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 inputSourceState];

  if (v8)
  {
    rtiInputSourceState = self->_rtiInputSourceState;
    if (rtiInputSourceState)
    {
      v10 = [v6 inputSourceState];
      v11 = [(RTIInputSourceState *)rtiInputSourceState isEqual:v10]^ 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v6 inputSourceState];
    v13 = self->_rtiInputSourceState;
    self->_rtiInputSourceState = v12;

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

  v15 = [(UIKBRTIPartner *)self partnerDelegate];
  v16 = [v6 targetSessionUUID];
  if (v16)
  {
    v17 = [(UIKBRTIPartner *)self currentSessionIdentifier];
    v18 = [v16 isEqual:v17];

    v19 = v18 ^ 1;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v19 = 0;
    if (!v15)
    {
LABEL_24:
      v35 = _UIKeyboardLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [(UIKBRTIPartner *)self currentSessionIdentifier];
        *buf = 138412546;
        v230 = v16;
        v231 = 2112;
        v232 = v39;
        _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_DEFAULT, "Skipping performing textoperation targetsessionid: %@, currentSessionID: %@", buf, 0x16u);
      }

      v40 = 0;
      goto LABEL_119;
    }
  }

  if (v19)
  {
    goto LABEL_24;
  }

  v20 = [(UIKBRTIPartner *)self textOperationsFilter];

  if (v20)
  {
    v21 = [(UIKBRTIPartner *)self textOperationsFilter];
    v22 = (v21)[2](v21, v6);

    if ((v22 & 2) != 0)
    {
      [(UIKBRTIPartner *)self setTextOperationsFilter:0];
    }
  }

  [(UIKBRTIPartner *)self sendAutoFillDidInsertCallbacksWithTextOperations:v6];
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
  v216 = v7;
  v23 = [(UIKBRTIPartner *)self partnerDelegate];
  [v23 setPerformingRemoteTextOperations:1];

  self->_isNotifyingDelegateOfRemoteOutputOperation = 1;
  v24 = [(UIKBRTIPartner *)self rtiDocumentState];
  v213 = [v24 canSuggestSupplementalItemsForCurrentSelection];

  v25 = [v6 editingActionSelector] == 0;
  v26 = [(UIKBRTIPartner *)self rtiDocumentState];
  v27 = [v6 selectionRangeToAssert];
  v29 = [v26 deltaForSelectionRange:{v27, v28}];
  v31 = v30;

  v32 = [(UIKBRTIPartner *)self partnerDelegate];
  v33 = [v6 textToAssert];
  LODWORD(v25) = [v32 assertTextForRemoteDocument:v33 withSelectionDelta:v29 updatingSelection:{v31, v25}];

  if (v25)
  {
    v34 = 2;
  }

  else
  {
    v34 = 0;
  }

  v35 = [v6 keyboardOutput];
  v36 = [v6 attributedInsertionText];
  v37 = [v35 insertionText];
  if ([v37 length])
  {
    v38 = [v36 length];

    if (v38)
    {
      [v35 setInsertionText:0];
    }
  }

  else
  {
  }

  v41 = [(UIKBRTIPartner *)self _performKeyboardOutputOperations:v6];
  if ((v41 & 1) != 0 && +[UIKeyboard inputUIOOP])
  {
    v42 = +[UIKeyboardImpl sharedInstance];
    [v42 triggerPendingKeyup];
  }

  v221 = self;
  if (v36)
  {
    [v15 insertAttributedText:v36];
    v43 = 2;
  }

  else
  {
    v43 = v34 | (2 * (v41 & 1u));
  }

  v44 = [v6 styledIntermediateText];

  v214 = v36;
  v219 = v35;
  if (v44)
  {
    v45 = v41;
    v208 = v16;
    v46 = [v6 styledIntermediateText];
    v47 = [v6 customInfoType];
    v48 = [v47 isEqualToString:@"UIKBRTICustomInfoInlineCompletionAsMarkedText"];

    v49 = [v46 displayString];
    v50 = [v46 selectedRange];
    v52 = v51;
    v53 = [v46 inputString];
    v54 = [v46 searchString];
    if (v48)
    {
      [v15 setInlineCompletionAsMarkedText:v49 selectedRange:v50 inputString:v52 searchString:{v53, v54}];
    }

    else
    {
      [v15 setAttributedMarkedText:v49 selectedRange:v50 inputString:v52 searchString:{v53, v54}];
    }

    v57 = [v46 cursorVisibility];
    v41 = v45;
    if (v57)
    {
      [v15 setCaretVisible:v57 == 1];
    }

    v43 = 2;
    v16 = v208;
    v35 = v219;
    goto LABEL_43;
  }

  v55 = [v6 intermediateText];

  if (v55)
  {
    v46 = [v6 intermediateText];
    v56 = [v15 assertIntermediateText:v46];
    v43 |= 2 * (v56 & 1u);
    v41 |= v56;
LABEL_43:
  }

  if ([v6 editingActionSelector])
  {
    v58 = [v6 customInfoType];
    v59 = [v58 isEqualToString:@"UIKBRTICustomInfoTypeKeyboardOperations"];

    if ((v59 & 1) == 0)
    {
      [v15 performTextOperationActionSelector:{objc_msgSend(v6, "editingActionSelector")}];
      v43 = 3;
    }
  }

  [v6 enumerateImagesAndUserInfosUsingBlock:&__block_literal_global_568];
  if (objc_opt_respondsToSelector())
  {
    v227[0] = MEMORY[0x1E69E9820];
    v227[1] = 3221225472;
    v227[2] = __62__UIKBRTIPartner__queued_performTextOperations_resultHandler___block_invoke_2;
    v227[3] = &unk_1E7117F90;
    v227[4] = v221;
    [v6 enumerateAdaptiveImageGlyphsUsingBlock:v227];
  }

  v220 = v43;
  if (objc_opt_respondsToSelector())
  {
    v226[0] = MEMORY[0x1E69E9820];
    v226[1] = 3221225472;
    v226[2] = __62__UIKBRTIPartner__queued_performTextOperations_resultHandler___block_invoke_3;
    v226[3] = &unk_1E7117FB8;
    v226[4] = v221;
    [v6 enumerateTextAttachmentsUsingBlock:v226];
  }

  v60 = [v6 inputSourceState];
  v61 = [v60 inputMode];

  v218 = v61;
  if (v61)
  {
    v62 = +[UIKeyboardInputModeController sharedInputModeController];
    v63 = [v62 currentInputMode];
    v64 = [v63 identifier];

    if (([(RTIInputSourceState *)v64 isEqualToString:v61]& 1) == 0)
    {
      v65 = v35;
      v66 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v61];
      v67 = _UIKeyboardLog();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v230 = v64;
        v231 = 2112;
        v232 = v218;
        _os_log_debug_impl(&dword_188A29000, v67, OS_LOG_TYPE_DEBUG, "Detected an input mode change: %@->%@", buf, 0x16u);
      }

      v68 = +[UIKeyboardImpl activeInstance];
      [v68 setKeyboardInputMode:v66 userInitiated:0];

      v35 = v65;
    }
  }

  v69 = [v6 customInfoType];
  v70 = [v6 customInfo];
  v217 = v70;
  if ([v69 isEqualToString:@"UIDictationRemoteTextOperations"])
  {
    v206 = v41;
    v71 = v16;
    v72 = v70;
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
      v86 = +[UIDictationController sharedInstance];
      v87 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"lastHypothesis"];
      v88 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"newHypothesis"];
      [v86 updateLastHypothesis:v87 WithNewHypothesis:v88];

      v16 = v71;
LABEL_102:

      v41 = v206;
LABEL_103:

LABEL_104:
      v35 = v219;
LABEL_105:
      v76 = v221;
      goto LABEL_106;
    }

    v16 = v71;
    if (sel_isEqual(v75, sel_resetLastHypothesis))
    {
      v86 = +[UIDictationController sharedInstance];
      [v86 resetLastHypothesis];
      goto LABEL_102;
    }

    if (sel_isEqual(v75, sel_setCandidateDictationSerializableResults_))
    {
      v86 = +[UIDictationController sharedInstance];
      v91 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"candidateDictationSerializableResults"];
      [v86 setCandidateDictationSerializableResults:v91];
LABEL_101:

      goto LABEL_102;
    }

    if (sel_isEqual(v75, sel_postNotificationName_object_userInfo_))
    {
      v86 = +[UIDictationController sharedInstance];
      v91 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"notificationName"];
      v96 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"userInfo"];
      [v86 postNotificationName:v91 userInfo:v96];
LABEL_100:

      goto LABEL_101;
    }

    if (sel_isEqual(v75, sel_insertSerializedDictationResult_withCorrectionIdentifier_))
    {
      v86 = +[UIDictationController sharedInstance];
      v91 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"dictationResult"];
      v96 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"correctionIdentifier"];
      [v86 insertSerializedDictationResult:v91 withCorrectionIdentifier:v96];
      goto LABEL_100;
    }

    if (sel_isEqual(v75, sel_startLandingIfNecessary))
    {
      v86 = +[UIDictationLandingView sharedInstance];
      [v86 startLandingIfNecessary];
      goto LABEL_102;
    }

    if (sel_isEqual(v75, sel_stopLanding))
    {
      v86 = +[UIDictationLandingView sharedInstance];
      [v86 stopLanding];
      goto LABEL_102;
    }

    if (sel_isEqual(v75, sel_stopLandingForError))
    {
      v86 = +[UIDictationLandingView sharedInstance];
      [v86 stopLandingForError];
      goto LABEL_102;
    }

    if (sel_isEqual(v75, sel_resignFirstResponderWhenIdleIfNeeded))
    {
      v86 = +[UIDictationController sharedInstance];
      [v86 resignFirstResponderWhenIdleIfNeeded];
      goto LABEL_102;
    }

    if (sel_isEqual(v75, sel_setRemoteDictationPopover_))
    {
      v86 = +[UIKeyboardImpl sharedInstance];
      [v86 setRemoteDictationPopover:v72];
      goto LABEL_102;
    }

    if (sel_isEqual(v75, sel_setKeyboardMinimizedByDictation_))
    {
      v86 = +[UIKeyboardImpl sharedInstance];
      v91 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"minimized"];
      [v86 setKeyboardMinimizedByDictation:{objc_msgSend(v91, "BOOLValue")}];
      goto LABEL_101;
    }

    if (sel_isEqual(v75, sel_setShadowState_))
    {
      v86 = +[UIDictationController sharedInstance];
      v91 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"state"];
      [v86 setShadowState:{objc_msgSend(v91, "integerValue")}];
      goto LABEL_101;
    }

    v212 = v6;
    if (sel_isEqual(v75, sel_presentDictationMenuTip_))
    {
      v86 = +[UIKeyboardImpl activeInstance];
      [v86 presentDictationMenuTip:v72];
      goto LABEL_253;
    }

    if (sel_isEqual(v75, sel_dismissDictationMenu))
    {
      v86 = +[UIKeyboardImpl activeInstance];
      [v86 dismissDictationMenu];
      goto LABEL_253;
    }

    if (sel_isEqual(v75, sel_setUsingTypeAndTalk_))
    {
      v86 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"usingTypeAndTalk"];
      v166 = [v86 BOOLValue];
      v167 = +[UIKeyboardInputMode dictationInputMode];
      [v167 setUsingTypeAndTalk:v166];
    }

    else
    {
      if (!sel_isEqual(v75, sel_setIsCurrentDictationLanguageOnDevice_))
      {
        if (sel_isEqual(v75, sel_updateCaretRectInWindowIfNeeded))
        {
          v169 = +[UIKeyboardImpl activeInstance];
          v86 = [v169 inputDelegate];

          v170 = [v86 textInputView];
          v171 = [v86 selectedTextRange];
          v172 = [v171 start];
          [v86 caretRectForPosition:v172];
          [v170 convertRect:0 toView:?];
          v174 = v173;

          v175 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"caretRectInWindow.y"];
          [v175 floatValue];
          v177 = v176;

          if (vabdd_f64(v177, v174) > 2.0)
          {
            [(UIKBRTIPartner *)v221 documentStateChanged];
          }

          goto LABEL_253;
        }

        if (sel_isEqual(v75, sel_setCurrentInstrumentationContext_))
        {
          v86 = +[UIDictationController sharedInstance];
          v183 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"instrumentationContext"];
          [v86 setCurrentInstrumentationContext:v183];
        }

        else if (sel_isEqual(v75, sel_setLocalSpeechRecognitionForced_))
        {
          v86 = +[UIDictationController sharedInstance];
          v183 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"forceOfflineRecognition"];
          [v86 setLocalSpeechRecognitionForced:v183 != 0];
        }

        else if (sel_isEqual(v75, sel_setInteractionIdentifier_))
        {
          v86 = +[UIDictationController sharedInstance];
          v183 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"interactionIdentifier"];
          [v86 setInteractionIdentifier:v183];
        }

        else
        {
          if (sel_isEqual(v75, sel_didRecognizeCommandWithIdentifier_strings_parameters_voiceCommandUUID_allVisibleRangeRects_currentGazePoint_))
          {
            v86 = +[UIDictationController sharedInstance];
            v205 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"identifier"];
            v193 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"strings"];
            v194 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"parameters"];
            v195 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"voiceCommandUUID"];
            v196 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"allVisibleRangeRects"];
            v197 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"currentGazePoint"];
            [v86 didRecognizeCommandWithIdentifier:v205 strings:v193 parameters:v194 voiceCommandUUID:v195 allVisibleRangeRects:v196 currentGazePoint:v197];

            goto LABEL_253;
          }

          if (sel_isEqual(v75, sel_setIdleTimerDisabled_forReason_))
          {
            v86 = +[UIDictationController sharedInstance];
            v183 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"disabled"];
            v198 = [v183 BOOLValue];
            v199 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"reason"];
            [v86 setIdleTimerDisabled:v198 forReason:v199];
          }

          else
          {
            if (!sel_isEqual(v75, sel_showLowStorageUserAlertWithLanguage_))
            {
              if (sel_isEqual(v75, sel_beginUndoGroupingIfNecessary_))
              {
                v86 = +[UIDictationController sharedInstance];
                [v86 _beginUndoGroupingIfNecessary];
              }

              else
              {
                if (!sel_isEqual(v75, sel_endUndoGroupingIfNecessary_))
                {
                  v16 = v71;
                  v41 = v206;
                  if (!sel_isEqual(v75, sel_setHaveLeakedPartialResultForCommandUtterance_))
                  {
                    goto LABEL_103;
                  }

                  v86 = +[UIDictationController sharedInstance];
                  v91 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"haveLeakedPartialResultForCommandUtterance"];
                  [v86 _setHaveLeakedPartialResultForCommandUtterance:{objc_msgSend(v91, "BOOLValue")}];
                  goto LABEL_101;
                }

                v86 = +[UIDictationController sharedInstance];
                [v86 _endUndoGroupingIfNecessary];
              }

LABEL_253:
              v16 = v71;
              v6 = v212;
              goto LABEL_102;
            }

            v86 = +[UIDictationController sharedInstance];
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

            [v86 showLowStorageUserAlertWithLanguage:v201];
          }
        }

        goto LABEL_253;
      }

      v86 = [(RTIInputSourceState *)v72 objectForKeyedSubscript:@"isCurrentDictationLanguageOnDevice"];
      v168 = [v86 BOOLValue];
      v167 = +[UIKeyboardInputMode dictationInputMode];
      [v167 setIsCurrentDictationLanguageOnDevice:v168];
    }

    goto LABEL_253;
  }

  if (![v69 isEqualToString:@"_UIKeyboardIndirectTextSelectionGestureState"])
  {
    if ([v69 isEqualToString:@"UITextSuggestion"])
    {
      v79 = v70;
      v76 = v221;
      v80 = [(UIKBRTIPartner *)v221 inputDelegate];
      [(UIKBRTIPartner *)v221 partnerDelegate];
      v81 = v15;
      v82 = v16;
      v83 = v69;
      v85 = v84 = v41;
      [v85 insertCustomTextSuggestion:v79];

      v41 = v84;
      v69 = v83;
      v16 = v82;
      v15 = v81;
      v220 |= 2uLL;

      goto LABEL_106;
    }

    if ([v69 isEqualToString:@"UIKBRTICustomInfoTypeWritingToolsOperations"])
    {
      v89 = v35;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v90 = NSSelectorFromString(v70);
      }

      else
      {
        v90 = 0;
      }

      v97 = [(UIKBRTIPartner *)v221 inputDelegate];
      if (v97 && v90 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        if (sel_isEqual(v90, sel_showWritingTools_))
        {
          _UIPerformVoidSelector1(v97, v90);
        }

        else if (sel_isEqual(v90, sel__startProofreadingFromCandidateBar) || sel_isEqual(v90, sel__startRewritingFromCandidateBar))
        {
          if (dyld_program_sdk_at_least())
          {
            [v97 v90];
          }

          else
          {
            [v97 performSelector_];
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
          v232 = v97;
          _os_log_error_impl(&dword_188A29000, v98, OS_LOG_TYPE_ERROR, "Unable to trigger WritingTools operation %@ through RTI in text input %@.", buf, 0x16u);
        }
      }

      v35 = v89;
      goto LABEL_105;
    }

    v207 = v41;
    if ([v69 isEqualToString:@"UIStickerRemoteInputOperations"])
    {
      v93 = _UIStickerCreateStickerFromTextInputPayload(v70);
      v76 = v221;
      v94 = [(UIKBRTIPartner *)v221 inputDelegate];
      v95 = [(UIKBRTIPartner *)v221 partnerDelegate];
      [v95 insertSticker:v93];

      v220 |= 2uLL;
      goto LABEL_76;
    }

    if ([v69 isEqualToString:@"UIKBRTICustomInfoTypeAutofill"])
    {
      v99 = v35;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v100 = v70;
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
        v105 = [(RTIInputSourceState *)v101 objectForKeyedSubscript:@"autofillContent"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v106 = [(UIKBRTIPartner *)v221 partnerDelegate];
          [v106 handleEventFromRemoteSource_insertAutofillContent:v105];
          goto LABEL_161;
        }

        v106 = _UIKeyboardLog();
        if (!os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
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
            v105 = [(UIKBRTIPartner *)v221 partnerDelegate];
            v126 = [(RTIInputSourceState *)v101 objectForKeyedSubscript:@"isMenuPresented"];
            -[NSObject handleEventFromRemoteSource_autoFillIsMenuPresented:](v105, "handleEventFromRemoteSource_autoFillIsMenuPresented:", [v126 BOOLValue]);
          }

          else
          {
            if (!sel_isEqual(v103, sel_handleEventFromRemoteSource_autoFillIsModalUIPresented_))
            {
              v105 = _UIKeyboardLog();
              if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_188A29000, v105, OS_LOG_TYPE_ERROR, "Unexpected value for 'selector' (customInfoType: Autofill)", buf, 2u);
              }

              goto LABEL_176;
            }

            v105 = [(UIKBRTIPartner *)v221 partnerDelegate];
            v126 = [(RTIInputSourceState *)v101 objectForKeyedSubscript:@"isModalUIPresented"];
            -[NSObject handleEventFromRemoteSource_autoFillIsModalUIPresented:](v105, "handleEventFromRemoteSource_autoFillIsModalUIPresented:", [v126 BOOLValue]);
          }

LABEL_176:
          v35 = v99;
          v41 = v207;
          goto LABEL_105;
        }

        v105 = [(RTIInputSourceState *)v101 objectForKeyedSubscript:@"isAuthenticating"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v105 BOOLValue])
          {
            v121 = v221;
            v122 = v16;
          }

          else
          {
            v121 = v221;
            v122 = 0;
          }

          [(UIKBRTIPartner *)v121 setAuthenticatingSessionIdentifier:v122];
          goto LABEL_176;
        }

        v106 = _UIKeyboardLog();
        if (!os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
LABEL_161:

          goto LABEL_176;
        }

        *buf = 0;
        v125 = "Value for 'isAuthenticating' is not a NSNumber (customInfoType: Autofill)";
      }

      _os_log_error_impl(&dword_188A29000, v106, OS_LOG_TYPE_ERROR, v125, buf, 2u);
      goto LABEL_161;
    }

    if ([v69 isEqualToString:@"UISupplementalLexiconOperations"])
    {
      v117 = v70;
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
        v130 = [(RTIInputSourceState *)v117 objectForKeyedSubscript:@"candidate"];
        v131 = [(RTIInputSourceState *)v117 objectForKeyedSubscript:@"textToCommit"];
        objc_opt_class();
        v35 = v219;
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v132 = [(UIKBRTIPartner *)v221 partnerDelegate];
            [v132 handleEventFromRemoteSource_insertSupplementalCandidate:v130 textToCommit:v131];

            v220 |= 2uLL;
          }
        }
      }

      else
      {
        v35 = v219;
        if (!sel_isEqual(v120, sel_handleEventFromRemoteSource_insertionPointEnteredText_withSupplementalCandidate_))
        {
          if (sel_isEqual(v120, sel_handleEventFromRemoteSource_insertionPointExitedTextWithSupplementalItems))
          {
            v130 = [(UIKBRTIPartner *)v221 partnerDelegate];
            [v130 handleEventFromRemoteSource_insertionPointExitedTextWithSupplementalItems];
          }

          else
          {
            if (sel_isEqual(v120, sel_handleEventFromRemoteSource_chooseSupplementalItem_toReplaceText_))
            {
              v130 = [(RTIInputSourceState *)v117 objectForKeyedSubscript:@"supplementalItems"];
              v131 = [(RTIInputSourceState *)v117 objectForKeyedSubscript:@"textToReplace"];
              v204 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v130, "count")}];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v202 = v131;
                v203 = v130;
                v209 = v16;
                v224 = 0u;
                v225 = 0u;
                v222 = 0u;
                v223 = 0u;
                v144 = v130;
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

                v16 = v209;
                v35 = v219;
                v131 = v202;
                v130 = v203;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v204 count])
              {
                v151 = [(UIKBRTIPartner *)v221 partnerDelegate];
                [v151 handleEventFromRemoteSource_chooseSupplementalItem:v204 toReplaceText:v131];

                v220 |= 2uLL;
              }

              goto LABEL_201;
            }

            if (!sel_isEqual(v120, sel_handleEventFromRemoteSource_cancelChooseSupplementalItemToInsert))
            {
              goto LABEL_203;
            }

            v130 = [(UIKBRTIPartner *)v221 partnerDelegate];
            [v130 handleEventFromRemoteSource_cancelChooseSupplementalItemToInsert];
          }

LABEL_202:

LABEL_203:
          goto LABEL_105;
        }

        v130 = [(RTIInputSourceState *)v117 objectForKeyedSubscript:@"text"];
        v131 = [(RTIInputSourceState *)v117 objectForKeyedSubscript:@"candidate"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v133 = [(UIKBRTIPartner *)v221 partnerDelegate];
            [v133 handleEventFromRemoteSource_insertionPointEnteredText:v130 withSupplementalCandidate:v131];
          }
        }
      }

LABEL_201:

      goto LABEL_202;
    }

    if ([v69 isEqualToString:@"UIPhysicalKeyboardEvent"])
    {
      v123 = v70;
      v76 = v221;
      v124 = [(UIKBRTIPartner *)v221 partnerDelegate];
      [v124 performKeyboardEvent:v123];

LABEL_145:
      goto LABEL_106;
    }

    if ([v69 isEqualToString:@"UIKBRTICustomInfoTypeDeleteAction"])
    {
      v127 = v70;
      v76 = v221;
      v124 = [(UIKBRTIPartner *)v221 partnerDelegate];
      v128 = [(RTIInputSourceState *)v127 integerValue];

      v129 = v128;
      v41 = v207;
      [v124 handleAutoDeleteContinuationOnDestinationWithDeletionCount:v129];
      goto LABEL_145;
    }

    if ([v69 isEqualToString:@"UIWebKitOperations"])
    {
      v134 = v16;
      v135 = v70;
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
        v157 = [v156 unsignedIntegerValue];

        v158 = [(RTIInputSourceState *)v135 objectForKeyedSubscript:@"inputString"];
        v159 = +[UIKeyboardImpl activeInstance];
        [v159 _handleWebKeyEvent:v155 withIndex:v157 inInputString:v158];
        v16 = v134;
        v41 = v207;
      }

      else
      {
        isEqual = sel_isEqual(v138, sel__handleWebKeyEvent_withEventType_withInputString_withInputStringIgnoringModifiers_);
        v16 = v134;
        v41 = v207;
        if (!isEqual)
        {
LABEL_220:

          goto LABEL_104;
        }

        v155 = [(RTIInputSourceState *)v135 objectForKeyedSubscript:@"keyEvent"];
        v161 = [(RTIInputSourceState *)v135 objectForKeyedSubscript:@"webEventType"];
        v210 = [v161 unsignedIntegerValue];

        v162 = [(RTIInputSourceState *)v135 objectForKeyedSubscript:@"inputString"];
        v159 = [(RTIInputSourceState *)v135 objectForKeyedSubscript:@"inputStringIgnoringModifiers"];
        v163 = +[UIKeyboardImpl activeInstance];
        [v163 _handleWebKeyEvent:v155 withEventType:v210 withInputString:v162 withInputStringIgnoringModifiers:v159];

        v158 = v162;
      }

      goto LABEL_220;
    }

    if ([v69 isEqualToString:@"UIEmojiSearchOperations"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v139 = [(RTIInputSourceState *)v70 BOOLValue];
        v140 = +[UIKeyboardImpl activeInstance];
        v141 = [v140 inputDelegateManager];
        [v141 setShouldRespectForwardingInputDelegate:v139];

        v41 = v207;
      }

      v142 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v143 = [v142 remoteInputViewHost];

      [v143 updateInputViewsIfNecessary];
      goto LABEL_105;
    }

    if ([v69 isEqualToString:@"UIKBRTICustomInfoTypeUpdateInputMode"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v153 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v70];
        v154 = +[UIKeyboardImpl activeInstance];
        [v154 setKeyboardInputMode:v153 userInitiated:1];
      }

      goto LABEL_105;
    }

    v76 = v221;
    if ([v69 isEqualToString:@"UIKBRTICustomInfoTypeTypologyLogOperations"])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_77;
      }

      v93 = +[UIKeyboardImpl activeInstance];
      [v93 presentKeyboardFeedbackAssistantViewControllerForLogURL:v70];
LABEL_76:

LABEL_77:
      v41 = v207;
      goto LABEL_106;
    }

    v211 = v69;
    if ([v69 isEqualToString:@"UIKBRTICustomInfoTypeKeyboardOperations"])
    {
      if (sel_isEqual([v6 editingActionSelector], sel_setFloating_))
      {
        [UIKeyboardImpl setFloating:[(RTIInputSourceState *)v70 BOOLValue]];
        goto LABEL_249;
      }

      if (sel_isEqual([v6 editingActionSelector], sel_updateTextInputKeyboardSource_))
      {
        v164 = +[UIKeyboardImpl activeInstance];
        [v164 updateTextInputKeyboardSource:v70];
        goto LABEL_248;
      }

      if (sel_isEqual([v6 editingActionSelector], sel_becomeFirstResponderAndMakeVisible_))
      {
        v164 = +[UIKeyboardImpl activeInstance];
        [v164 becomeFirstResponderAndMakeVisible:{-[RTIInputSourceState BOOLValue](v70, "BOOLValue")}];
        goto LABEL_248;
      }

      if (sel_isEqual([v6 editingActionSelector], sel_resignFirstResponder))
      {
        v164 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v165 = [v164 responder];
        [v165 resignFirstResponder];
      }

      else
      {
        if (sel_isEqual([v6 editingActionSelector], sel_postNotificationName_))
        {
          v178 = MEMORY[0x1E696AD88];
          v179 = v70;
          v180 = [v178 defaultCenter];
          v181 = [(RTIInputSourceState *)v179 objectForKeyedSubscript:@"name"];
          v182 = [(RTIInputSourceState *)v179 objectForKeyedSubscript:@"objecrt"];

          [v180 postNotificationName:v181 object:v182];
          goto LABEL_249;
        }

        if (sel_isEqual([v6 editingActionSelector], sel_setIsExtended_))
        {
          v164 = [(UIKBRTIPartner *)v221 partnerDelegate];
          [v164 setCandidateDisplayIsExtended:{-[RTIInputSourceState BOOLValue](v70, "BOOLValue")}];
          goto LABEL_248;
        }

        [v6 editingActionSelector];
        if (objc_opt_respondsToSelector())
        {
          +[UIAssistantBarButtonItemProvider performSelector:](UIAssistantBarButtonItemProvider, "performSelector:", [v6 editingActionSelector]);
          goto LABEL_249;
        }

        if (sel_isEqual([v6 editingActionSelector], sel_setShiftStatesNeededInDestination_autoShifted_shiftLocked_))
        {
          v184 = [v6 customInfo];
          v185 = v184;
          if (v184)
          {
            v186 = [v184 objectForKeyedSubscript:@"autoShift"];
            v187 = [v186 BOOLValue];

            v188 = [v185 objectForKeyedSubscript:@"shiftLocked"];
            v189 = [v188 BOOLValue];

            v190 = [v185 objectForKeyedSubscript:@"shift"];
            v191 = [v190 BOOLValue];

            v192 = [(UIKBRTIPartner *)v221 partnerDelegate];
            [v192 setShiftStatesNeededInDestination:v191 autoShifted:v187 shiftLocked:v189];
          }

          goto LABEL_249;
        }

        if (!sel_isEqual([v6 editingActionSelector], sel_clearKeyboardSnapshot))
        {
LABEL_249:
          v41 = v207;
          v69 = v211;
          goto LABEL_106;
        }

        v164 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v165 = [v164 existingContainerRootController];
        [v165 clearKeyboardSnapshot];
      }
    }

    else
    {
      if (![v69 isEqualToString:@"UIKBRTICustomInfoTypeEmojiCreationOperations"])
      {
        if (![v69 isEqualToString:@"UIKBRTICustomInfoTypeSmartReplyCandidateOperations"])
        {
          goto LABEL_249;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_249;
        }

        v164 = [(UIKBRTIPartner *)v221 partnerDelegate];
        [v164 startSmartReplyWritingToolWithParams:v70];
        goto LABEL_248;
      }

      if (!sel_isEqual([v6 editingActionSelector], sel_presentEmojiGenerationWithInputString_))
      {
        goto LABEL_249;
      }

      v164 = [(RTIInputSourceState *)v70 objectForKeyedSubscript:@"inputString"];
      v165 = [(UIKBRTIPartner *)v221 partnerDelegate];
      [v165 presentEmojiGenerationWithInputString:v164];
    }

LABEL_248:
    goto LABEL_249;
  }

  v76 = v221;
  v77 = [(UIKBRTIPartner *)v221 partnerDelegate];
  [v77 setPerformingRemoteTextOperations:0];

  v221->_isNotifyingDelegateOfRemoteOutputOperation = 0;
  [v15 handleRemoteIndirectGestureWithState:v70];
  v78 = [(UIKBRTIPartner *)v221 partnerDelegate];
  [v78 setPerformingRemoteTextOperations:1];

  v221->_isNotifyingDelegateOfRemoteOutputOperation = 1;
LABEL_106:
  v107 = [(UIKBRTIPartner *)v76 _performTextCheckingAnnotationOperations:v6, v202, v203];
  v108 = 2;
  if (!v107)
  {
    v108 = 0;
  }

  v40 = v108 | v220;
  [v15 _updateCanSuggestSupplementalItemsForCurrentSelection];
  v109 = [v15 canSuggestSupplementalItemsForCurrentSelection];
  if (v213 != v109)
  {
    [(UIKBRTIPartner *)v76 forwardEventToRemoteSource_canSuggestSupplementalItemsForCurrentSelection:v109];
  }

  [v15 provideAutoFillTypingUpdatesIfNecessary];
  v76->_isNotifyingDelegateOfRemoteOutputOperation = 0;
  v110 = [(UIKBRTIPartner *)v76 partnerDelegate];
  [v110 setPerformingRemoteTextOperations:0];

  if ((v40 & 2) != 0 || (v41 & 2) != 0)
  {
    [(UIKBRTIPartner *)v76 documentStateChanged:(v41 & 2) == 0];
  }

  if ((v215 | (v40 >> 1)))
  {
    v111 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v112 = [v111 existingContainerRootController];
    v113 = [v112 presentedViewController];

    v114 = [v113 conformsToProtocol:&unk_1F005A9D0];
    if (v113 && (v114 & 1) == 0)
    {
      v115 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v116 = [v115 existingContainerRootController];
      [v116 dismissViewControllerAnimated:1 completion:0];
    }
  }

  v7 = v216;
LABEL_119:

  if (v7)
  {
    v7[2](v7, v40);
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

- (unsigned)_performKeyboardOutputOperations:(id)a3
{
  v4 = a3;
  v5 = [v4 keyboardOutput];
  v6 = v5;
  if (v5 && ([v5 _isEmpty] & 1) == 0)
  {
    v8 = UIKeyboardGetCurrentInputMode();
    v9 = [v4 customInfoType];
    v10 = [v9 isEqualToString:@"UIDictationRemoteTextOperations"];

    v11 = [v4 multilingualLanguages];
    if (v11)
    {
      v12 = v11;
      v13 = UIKeyboardGetCurrentInputMode();
      v14 = [v8 isEqualToString:v13];

      if (v14)
      {
        v15 = +[UIKeyboardInputModeController sharedInputModeController];
        v16 = [v15 currentInputMode];

        v17 = [v4 multilingualLanguages];
        if ([v17 count])
        {
          v18 = [v4 multilingualLanguages];
          [v16 setMultilingualLanguages:v18];
        }

        else
        {
          [v16 setMultilingualLanguages:0];
        }
      }
    }

    v19 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    [v19 setObject:MEMORY[0x1E695E118] forKey:0x1EFB64610];
    [v19 setObject:MEMORY[0x1E695E110] forKey:0x1EFB64630];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 enumeratedInsertionAnimationStyle] >= 1)
    {
      v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "enumeratedInsertionAnimationStyle")}];
      [v19 setObject:v20 forKey:0x1EFB64650];
    }

    v21 = [(UIKBRTIPartner *)self partnerDelegate];
    v22 = v21;
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
      v23 = [v21 performKeyboardOutput:v6 userInfo:v19];

      if (v23)
      {
        v7 = 1;
      }

      else
      {
        v7 = 3;
      }
    }

    v24 = [(UIKBRTIPartner *)self partnerDelegate];
    [v24 updateDocumentViewsAfterKeyboardOutput:v6];
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

- (void)defaultDocumentRequestDidChange:(id)a3
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

- (void)_performDocumentRequest:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (+[UIKeyboard isKeyboardProcess])
  {
    v7 = [(UIKBRTIPartner *)self payloadDelegate];
    v8 = v7;
    if (v7)
    {
      [v7 performDocumentRequest:v9 completion:v6];
    }

    else if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else
  {
    [(UIKBRTIPartner *)self performDocumentRequest:v9 completion:v6];
  }
}

- (void)performDocumentRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__UIKBRTIPartner_performDocumentRequest_completion___block_invoke;
  block[3] = &unk_1E70FCE28;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)_queryDocumentRequest:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(UIKBRTIPartner *)self partnerDelegate];
    v8 = [v7 inputDelegateManager];
    v9 = [v8 hasAsyncCapableInputDelegate];

    if (v9)
    {
      [(UIKBRTIPartner *)self _queryWKDocumentRequest:v10 completion:v6];
    }

    else
    {
      [(UIKBRTIPartner *)self _queryUIKitDocumentRequest:v10 completion:v6];
    }
  }
}

- (int64_t)_uiTextGranularityForRTITextGranularity:(int64_t)a3
{
  if (a3 >= 6)
  {
    return 1;
  }

  else
  {
    return a3;
  }
}

- (void)_addFirstSelectionRectToDocumentState:(id)a3
{
  v89 = a3;
  v4 = [(UIKBRTIPartner *)self inputDelegate];
  v5 = [v4 textInputView];

  v6 = [(UIKBRTIPartner *)self partnerDelegate];
  [v6 correctionRect];
  [(UIKBRTIPartner *)self convertRect:v5 from:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v89 setFirstSelectionRectInWindow:{v8, v10, v12, v14}];
  [(UIKBRTIPartner *)self _selectionClipRect];
  [(UIKBRTIPartner *)self convertRect:v5 from:?];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v89 setClientFrameInWindow:?];
  v23 = [(UIKBRTIPartner *)self inputDelegate];
  v24 = [(UIKBRTIPartner *)self inputDelegate];
  v25 = [v24 selectedTextRange];
  v26 = [v25 start];
  [v23 caretRectForPosition:v26];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [(UIKBRTIPartner *)self convertRect:v5 from:v28, v30, v32, v34];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  [v89 setCaretRectInWindow:?];
  v43 = [(UIKBRTIPartner *)self inputDelegate];
  v44 = [(UIKBRTIPartner *)self inputDelegate];
  v45 = [v44 beginningOfDocument];
  v46 = [(UIKBRTIPartner *)self inputDelegate];
  v47 = [v46 selectedTextRange];
  v48 = [v47 start];
  v49 = [v43 offsetFromPosition:v45 toPosition:v48];

  [v89 addTextRect:v49 forCharacterRange:0 granularity:0 isVertical:{0, v36, v38, v40, v42}];
  v50 = [(UIKBRTIPartner *)self partnerDelegate];
  v51 = [v50 textInputTraits];
  v52 = [v51 insertionPointColor];

  v53 = [MEMORY[0x1E69C6F28] colorWithCGColor:{objc_msgSend(v52, "CGColor")}];
  [v89 setInsertionPointColor:v53];
  v54 = [v5 window];
  v55 = [v5 window];
  v56 = [v55 screen];
  v57 = [v56 coordinateSpace];
  [v54 convertRect:v57 toCoordinateSpace:{v16, v18, v20, v22}];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;

  v66 = [v5 window];
  LODWORD(v55) = [v66 _isHostedInAnotherProcess];

  if (v55)
  {
    v67 = [v5 window];
    v68 = [v67 windowScene];
    v69 = [UITextEffectsWindow activeTextEffectsWindowForWindowScene:v68];
    [v69 hostedViewReference];
    v71 = v70;
    v73 = v72;

    v59 = v59 + v71;
    v61 = v61 + v73;
  }

  [v89 setClientFrameInEntitySpace:{v59, v61, v63, v65}];
  if (objc_opt_respondsToSelector())
  {
    v74 = [v5 window];
    v75 = [v74 screen];

    if (v75)
    {
      v76 = [v5 window];
      v77 = [v76 screen];

      [v77 nativeBounds];
      v79 = v78;
      [v77 scale];
      v81 = v79 / v80;
      [v77 bounds];
      v83 = v81 / v82;
      [v77 nativeBounds];
      v85 = v84;
      [v77 scale];
      v87 = v85 / v86;
      [v77 bounds];
      [v89 setDisplayZoom:{v83, v87 / v88}];
    }
  }
}

- (void)_addAutocorrectStylingToDocumentState:(id)a3
{
  v4 = a3;
  v5 = [(UIKBRTIPartner *)self inputDelegate];
  v22 = [v5 _fontForCaretSelection];

  v6 = MEMORY[0x1E69C6FB0];
  v7 = [v22 isSystemFont];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v22 fontName];
  }

  [v22 pointSize];
  v10 = v9;
  v11 = [v22 fontDescriptor];
  v12 = [v11 objectForKey:*off_1E70ECD38];
  [v12 doubleValue];
  v14 = [v6 textStylingWithFontName:v8 fontSize:v10 fontWeight:v13];

  if ((v7 & 1) == 0)
  {
  }

  [v4 setAutocorrectBubbleStyling:v14];
  v15 = [(UIKBRTIPartner *)self inputDelegate];
  v16 = [v15 _textColorForCaretSelection];

  v17 = [MEMORY[0x1E69C6F28] colorWithCGColor:{objc_msgSend(v16, "CGColor")}];
  [v4 setAutocorrectTextColor:v17];
  v18 = [(UIKBRTIPartner *)self partnerDelegate];
  v19 = [v18 textInputTraits];
  v20 = [v19 selectionHighlightColor];

  v21 = [MEMORY[0x1E69C6F28] colorWithCGColor:{objc_msgSend(v20, "CGColor")}];
  [v4 setAutocorrectTextBackgroundColor:v21];
}

- (void)_addMergedTextRectsToDocumentState:(id)a3 forWKContext:(id)a4 textInputView:(id)a5 granularity:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 fullText];
  v14 = [(__CFString *)v13 length];
  wkRectTokenizer = self->_wkRectTokenizer;
  if (wkRectTokenizer)
  {
    v35.location = 0;
    v35.length = v14;
    CFStringTokenizerSetString(wkRectTokenizer, v13, v35);
  }

  else
  {
    if ((a6 - 1) > 3)
    {
      v16 = 0;
    }

    else
    {
      v16 = qword_18A680490[a6 - 1];
    }

    v17 = *MEMORY[0x1E695E480];
    v18 = [MEMORY[0x1E695DF58] currentLocale];
    v36.location = 0;
    v36.length = v14;
    self->_wkRectTokenizer = CFStringTokenizerCreate(v17, v13, v36, v16, v18);
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
    v21 = [(__CFString *)v13 length];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __92__UIKBRTIPartner__addMergedTextRectsToDocumentState_forWKContext_textInputView_granularity___block_invoke_2;
    v22[3] = &unk_1E7118030;
    v26 = v29;
    v25 = v19;
    v27 = v31;
    v23 = v10;
    v24 = v12;
    v28 = a6;
    [v11 enumerateLayoutRectsWithOptions:0 characterRange:0 block:{v21, v22}];
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

- (void)_queryWKDocumentRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIKBRTIPartner *)self inputDelegate];
  v9 = [v8 textInputView];
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
  v15 = -[UIKBRTIPartner _uiTextGranularityForRTITextGranularity:](self, "_uiTextGranularityForRTITextGranularity:", [v6 textGranularity]);
  v16 = [v6 flags];
  v17 = [v6 flags] & 2 | v16 & 1;
  if (([v6 flags] & 4) != 0)
  {
    v18 = v17 | 0x24;
  }

  else
  {
    v18 = v17;
  }

  if (_os_feature_enabled_impl())
  {
    v18 = v18 & 0xFFFFFFFFFFFFFFBFLL | ((([v6 flags] >> 3) & 1) << 6);
  }

  -[UIWKDocumentRequest setFlags:](v14, "setFlags:", [v6 flags] & 0x10 | v18);
  [(UIWKDocumentRequest *)v14 setSurroundingGranularity:v15];
  -[UIWKDocumentRequest setGranularityCount:](v14, "setGranularityCount:", [v6 surroundingGranularityCount]);
  if (([v6 flags] & 8) != 0)
  {
    v19 = [(UIKBRTIPartner *)self partnerDelegate];
    v20 = [v19 inputDelegateManager];
    [v20 visibleTextRect];
    [(UIWKDocumentRequest *)v14 setDocumentRect:?];
  }

  v21 = -[UIKBRTIPartner _uiTextGranularityForRTITextGranularity:](self, "_uiTextGranularityForRTITextGranularity:", [v6 rectGranularity]);
  v22 = [v6 flags];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__UIKBRTIPartner__queryWKDocumentRequest_completion___block_invoke;
  aBlock[3] = &unk_1E7118080;
  v35 = v6;
  v36 = self;
  v23 = (v21 != 0) & (v22 >> 2);
  if (v21 == v15)
  {
    LOBYTE(v23) = 0;
  }

  v43 = v23;
  v37 = v8;
  v38 = v9;
  v40 = v21;
  v41 = v15;
  v42 = v11;
  v24 = v7;
  v39 = v24;
  v25 = v9;
  v26 = v8;
  v27 = v6;
  v28 = _Block_copy(aBlock);
  v29 = [(UIKBRTIPartner *)self partnerDelegate];
  v30 = [v29 inputDelegateManager];
  v31 = [v30 asyncCapableInputDelegate];

  if (v31)
  {
    v32 = [(UIKBRTIPartner *)self partnerDelegate];
    v33 = [v32 inputDelegateManager];
    [v33 requestDocumentContext:v14 completionHandler:v28];
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

- (void)_queryUIKitDocumentRequest:(id)a3 completion:(id)a4
{
  v209 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _UIKeyboardLog();
  v9 = os_signpost_id_generate(v8);

  v10 = _UIKeyboardLog();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "queryUIKitDocument", "", buf, 2u);
  }

  v12 = [(UIKBRTIPartner *)self inputDelegate];
  v193 = [v12 textInputView];
  v13 = -[UIKBRTIPartner _uiTextGranularityForRTITextGranularity:](self, "_uiTextGranularityForRTITextGranularity:", [v6 textGranularity]);
  v14 = [(UIKBRTIPartner *)self partnerDelegate];
  v15 = [v14 textInputTraits];

  spid = v9;
  if (([v15 isSecureTextEntry] & 1) != 0 || (objc_msgSend(v15, "recentInputIdentifier"), v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
  {
    v13 = 5;
  }

  v17 = [v12 selectedTextRange];
  v18 = [v12 markedTextRange];
  v195 = self;
  v190 = v9 - 1;
  if (v18)
  {
    v19 = v18;
    v20 = [v12 markedTextRange];
    v21 = [v20 isEmpty];

    if (v21)
    {
      v189 = 0;
    }

    else
    {
      v22 = [v12 markedTextRange];

      v189 = 1;
      v17 = v22;
    }

    self = v195;
  }

  else
  {
    v189 = 0;
  }

  v23 = [MEMORY[0x1E69C6F38] documentStateWithRequest:v6];
  if (!v17)
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

  v170 = [v6 flags];
  if ((v170 & 8) == 0)
  {
    v24 = [v17 start];
    v25 = [v17 end];
    goto LABEL_16;
  }

  v38 = [(UIKBRTIPartner *)self partnerDelegate];
  v39 = [v38 inputDelegateManager];
  [v39 visibleTextRect];
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
  v49 = [v12 closestPositionToPoint:{MinX, CGRectGetMinY(v211)}];
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

    v7[2](v7, v23, 0);
    goto LABEL_166;
  }

  v24 = v49;
  if ([v12 baseWritingDirectionForPosition:v49 inDirection:0] == 1)
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
    v51 = [v12 closestPositionToPoint:{MaxX, CGRectGetMinY(v213)}];

    v24 = v51;
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
  v53 = [v12 closestPositionToPoint:{v52, CGRectGetMaxY(v215)}];
  if (v53)
  {
    v25 = v53;
    if ([v12 baseWritingDirectionForPosition:v53 inDirection:0] == 1)
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
      v55 = [v12 closestPositionToPoint:{v54, CGRectGetMaxY(v217)}];

      v25 = v55;
    }

LABEL_16:
    v192 = v23;
    v174 = v15;
    v175 = v7;
    if (([v6 surroundingGranularityCount] & 0x8000000000000000) == 0)
    {
      v26 = -1;
      while (1)
      {
        v27 = [v12 tokenizer];
        v28 = [v27 positionFromPosition:v24 toBoundary:v13 inDirection:1];

        v29 = [v12 tokenizer];
        v30 = [v29 positionFromPosition:v25 toBoundary:v13 inDirection:0];

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
          v31 = v24;
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
        v24 = v32;
        v25 = v35;
        if ([v6 surroundingGranularityCount] <= v26)
        {
          goto LABEL_37;
        }
      }
    }

    v35 = v25;
    v32 = v24;
LABEL_37:
    v56 = [v12 textRangeFromPosition:v32 toPosition:v35];
    v57 = [v17 start];
    v58 = [v17 end];
    v59 = v58;
    v172 = v56;
    if (v57 || !v58)
    {
      if (v58 || !v57)
      {
LABEL_43:
        v194 = v12;
        v60 = v17;
        v61 = 0;
        v62 = 0x7FFFFFFFFFFFFFFFLL;
        v187 = v35;
        v188 = v32;
        v177 = v57;
        v178 = v59;
        v171 = v60;
        v63 = 0;
        if (!v57)
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

        if (([v6 flags] & 1) == 0)
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
          v182 = [(UIKBRTIPartner *)v195 documentTextInRange:v71 forInputDelegate:v194];
          v65 = 0;
        }

        else
        {
          if (v67 != 1 || v70 != 1)
          {
            if (v67 != 1 && v70 != -1)
            {
              v71 = [v194 textRangeFromPosition:v32 toPosition:v177];
              v61 = [(UIKBRTIPartner *)v195 documentTextInRange:v71 forInputDelegate:v194];
              v116 = [v194 textRangeFromPosition:v177 toPosition:v178];

              v186 = v116;
              v65 = [(UIKBRTIPartner *)v195 documentTextInRange:v116 forInputDelegate:v194];
              v117 = [v194 textRangeFromPosition:v178 toPosition:v35];
              v182 = [(UIKBRTIPartner *)v195 documentTextInRange:v117 forInputDelegate:v194];

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
                  v61 = [(UIKBRTIPartner *)v195 documentTextInRange:v71 forInputDelegate:v194];
                  v182 = 0;
                  v65 = 0;
                  goto LABEL_64;
                }
              }

LABEL_66:
              if (v189)
              {
                v75 = [v194 selectedTextRange];
                v76 = [v75 start];
                v62 = [v194 offsetFromPosition:v177 toPosition:v76];

                [v75 start];
                v77 = v179 = v65;
                v78 = [v75 end];
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
                  v173 = v17;
                  v79 = objc_alloc(MEMORY[0x1E69D9590]);
                  v181 = v61;
                  v80 = [v61 string];
                  v81 = v65;
                  v82 = v80;
                  v180 = v81;
                  v83 = [v81 string];
                  v84 = v83;
                  if (v189)
                  {
                    v85 = v83;
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
                    v86 = v83;
                  }

                  v183 = v63;
                  [v63 string];
                  v87 = v176 = v6;
                  v88 = [v79 initWithUnboundedContextBefore:v82 markedText:v85 selectedText:v86 unboundedContextAfter:v87 selectedRangeInMarkedText:{v62, v64}];

                  v23 = v192;
                  [v192 setDocumentState:v88];
                  if ((~[v6 flags] & 3) == 0)
                  {
                    [(UIKBRTIPartner *)v195 rtiDocumentState];
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

                  v12 = v194;
                  [v192 setHasText:{objc_msgSend(v194, "hasText")}];
                  v96 = v195;
                  [(UIKBRTIPartner *)v195 _addFirstSelectionRectToDocumentState:v192];
                  v15 = v174;
                  v7 = v175;
                  if (([v6 flags] & 0x10) != 0)
                  {
                    [(UIKBRTIPartner *)v195 _addTextCheckingAnnotatedStringToDocumentState:v192];
                  }

                  v17 = v173;
                  if (([v6 flags] & 0x20) != 0)
                  {
                    [(UIKBRTIPartner *)v195 _addAutocorrectStylingToDocumentState:v192];
                  }

                  if (([v6 flags] & 4) == 0)
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

                  v101 = -[UIKBRTIPartner _uiTextGranularityForRTITextGranularity:](v195, "_uiTextGranularityForRTITextGranularity:", [v6 rectGranularity]);
                  if (v101 == 5)
                  {
                    v102 = [v194 offsetFromPosition:v188 toPosition:v187];
                    [v194 firstRectForRange:v171];
                    [(UIKBRTIPartner *)v195 convertRect:v193 from:?];
                    [v192 addTextRect:0 forCharacterRange:v102 granularity:5];
                  }

                  else
                  {
                    v103 = v101;
                    v166 = v88;
                    v104 = [v6 rectCountBefore];
                    v105 = v104;
                    v106 = *MEMORY[0x1E69C6FB8];
                    if (v104 <= *MEMORY[0x1E69C6FB8])
                    {
                      v107 = *MEMORY[0x1E69C6FB8];
                    }

                    else
                    {
                      v107 = v104;
                    }

                    [v6 surroundingGranularityCount];
                    v108 = [v6 rectCountAfter];
                    v109 = v108;
                    if (v108 <= v106)
                    {
                      v110 = v106;
                    }

                    else
                    {
                      v110 = v108;
                    }

                    if (v106 >= v105)
                    {
                      v115 = v188;
                    }

                    else
                    {
                      v111 = [v186 start];
                      if ((v107 & 0x8000000000000000) == 0)
                      {
                        v112 = v107 + 1;
                        while (1)
                        {
                          v113 = [v194 tokenizer];
                          v114 = [v113 positionFromPosition:v111 toBoundary:v103 inDirection:1];

                          if (!v114 || [v194 comparePosition:v114 toPosition:v188] == -1)
                          {
                            break;
                          }

                          v115 = v114;

                          v111 = v115;
                          if (!--v112)
                          {
                            goto LABEL_117;
                          }
                        }
                      }

                      v115 = v111;
                    }

LABEL_117:
                    if (v106 >= v109)
                    {
                      v124 = v187;
                      v12 = v194;
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
                        v12 = v194;
                      }

                      else
                      {
                        v121 = v110 + 1;
                        v12 = v194;
                        while (1)
                        {
                          v122 = [v194 tokenizer];
                          v123 = [v122 positionFromPosition:v119 toBoundary:v103 inDirection:0];

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
                    v126 = [v12 offsetFromPosition:v120 toPosition:v125];
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

                      v133 = [v12 tokenizer];
                      v125 = [v133 positionFromPosition:v129 toBoundary:v103 inDirection:0];

                      if (!v125)
                      {
                        break;
                      }

                      v134 = [v12 textRangeFromPosition:v129 toPosition:v125];
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
                      v136 = [v12 selectionRectsForRange:v134];
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
                              [(UIKBRTIPartner *)v195 convertRect:v193 from:?];
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

                      v12 = v194;
                      v124 = v185;
                      if (![v194 comparePosition:v125 toPosition:v129])
                      {
                        break;
                      }
                    }

                    while ([v194 comparePosition:v125 toPosition:v185] == -1);

                    v7 = v175;
                    v6 = v176;
                    v17 = v173;
                    v15 = v174;
                    v23 = v192;
                    v88 = v166;
                    if (!v103)
                    {
                      v96 = v195;
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
                        v160 = [(UIKBRTIPartner *)v96 partnerDelegate];
                        [v23 setScrolling:{objc_msgSend(v160, "selectionScrolling")}];
                      }

                      v161 = _UIKeyboardLog();
                      v162 = v161;
                      if (v190 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v161))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_188A29000, v162, OS_SIGNPOST_INTERVAL_END, spid, "queryUIKitDocument", "", buf, 2u);
                      }

                      (v7)[2](v7, v23, v172);
                      goto LABEL_166;
                    }
                  }

                  if (v189)
                  {
                    v152 = [v12 markedTextRange];
                    v96 = v195;
                    -[UIKBRTIPartner _addCharacterRectsToDocumentState:textRange:offset:](v195, "_addCharacterRectsToDocumentState:textRange:offset:", v23, v152, [v181 length]);
                  }

                  else
                  {
                    v96 = v195;
                    if ((v170 & 8) == 0)
                    {
                      v153 = [v181 length];
                      [v171 isEmpty];
                      if (v178)
                      {
                        v154 = [v12 _rangeOfEnclosingWord:?];
                        v155 = v154;
                        if (v154)
                        {
                          v167 = v88;
                          v156 = v154;

                          v157 = [v156 start];
                          v153 = [v12 offsetFromPosition:v188 toPosition:v157];

                          v96 = v195;
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
            v61 = [(UIKBRTIPartner *)v195 documentTextInRange:v71 forInputDelegate:v194];
            v163 = [v194 textRangeFromPosition:v177 toPosition:v35];
            v65 = [(UIKBRTIPartner *)v195 documentTextInRange:v163 forInputDelegate:v194];

            v182 = 0;
LABEL_64:
            v186 = v171;
LABEL_65:

            goto LABEL_66;
          }

          v71 = [v194 textRangeFromPosition:v32 toPosition:v178];
          v65 = [(UIKBRTIPartner *)v195 documentTextInRange:v71 forInputDelegate:v194];
          v74 = [v194 textRangeFromPosition:v178 toPosition:v35];
          v182 = [(UIKBRTIPartner *)v195 documentTextInRange:v74 forInputDelegate:v194];
        }

        v61 = 0;
        goto LABEL_64;
      }
    }

    else
    {
      v57 = v58;
    }

    v59 = v57;
    v57 = v59;
    goto LABEL_43;
  }

  v72 = _UIKeyboardLog();
  v73 = v72;
  if (v190 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_188A29000, v73, OS_SIGNPOST_INTERVAL_END, spid, "queryUIKitDocument", "", buf, 2u);
  }

  v7[2](v7, v23, 0);
LABEL_166:
}

- (id)documentTextInRange:(id)a3 forInputDelegate:(id)a4
{
  v5 = a4;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 attributedTextInRange:v6];
  }

  else
  {
    v8 = [v5 textInRange:v6];

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
    v6 = v8;
  }

  return v7;
}

- (CGRect)convertRect:(CGRect)a3 from:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [v9 window];
  [v9 convertRect:v10 toView:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [v9 window];

  LODWORD(v9) = [v19 _isRemoteInputHostWindow];
  if (v9)
  {
    v20 = [(UIKBRTIPartner *)self rtiDocumentTraits];
    v21 = [v20 assistantViewInfo];

    v22 = [objc_opt_self() mainScreen];
    [v22 bounds];
    v24 = v23;
    [v21 insets];
    v26 = v24 - v25;
    [v21 size];
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

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  if ((a3->var0 & 6) != 0)
  {
    [(UIKBRTIPartner *)self documentStateChanged];
  }
}

- (_NSRange)_relativeReplacementRangeForAnnotationOperation:(id)a3
{
  v3 = a3;
  v4 = [v3 textCheckingAnnotationRange];
  v6 = v5;
  v7 = [v3 textCheckingReplacementRange];
  v9 = v8;
  v10 = [v3 textCheckingAnnotatedString];

  if (v7 >= v4 && v7 + v9 <= v4 + v6)
  {
    v13 = [v10 length];
    if (v13 + v9 >= v6)
    {
      v12 = v7 - v4;
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

- (BOOL)_performTextCheckingAnnotationOperations:(id)a3
{
  v4 = a3;
  v5 = [(UIKBRTIPartner *)self rtiDocumentState];
  v6 = [v5 documentState];

  if (v6)
  {
    v7 = [v6 contextBeforeInput];
    v8 = [v7 length];

    v9 = [(UIKBRTIPartner *)self _relativeReplacementRangeForAnnotationOperation:v4];
    v11 = v10;
    if ([v4 textCheckingAnnotationRange] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v4 textCheckingAnnotatedString];

      if (v12)
      {
        v29 = [(UIKBRTIPartner *)self partnerDelegate];
        v14 = [v29 inputDelegateManager];
        v15 = [v4 textCheckingAnnotationRange];
        v16 = v11;
        v17 = v9;
        v18 = v8;
        v20 = v19;
        v21 = [v4 textCheckingAnnotatedString];
        v22 = v20;
        v8 = v18;
        v9 = v17;
        v11 = v16;
        v12 = [v14 replaceAnnotationRange:v15 contextBeforeLength:v22 withAnnotatedString:v8 relativeReplacementRange:{v21, v9, v16}];

        if (v12 == 3)
        {
          [(UIKBRTIPartner *)self setTextOperationsFilter:&__block_literal_global_866];
        }
      }
    }

    if ([v4 textCheckingAnnotationRemovalRange] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = [v4 textCheckingAnnotationToRemove];

      if (v23)
      {
        v24 = [(UIKBRTIPartner *)self partnerDelegate];
        v25 = [v24 inputDelegateManager];
        v26 = [v4 textCheckingAnnotationToRemove];
        [v4 textCheckingAnnotationRemovalRange];
        v12 |= [v25 removeAnnotation:v26 removalRangeLength:v27 forAnnotationRange:v9 contextBeforeLength:{v11, v8}];
      }
    }

    v13 = v12 != 0;
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
    v4 = v3;
    if (v3)
    {
      v5 = [v3 insertionPointColor];
      if (v5)
      {
        v6 = v5;
        v7 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v5 cgColor]);
        goto LABEL_7;
      }
    }
  }

  v4 = [(UIKBRTIPartner *)self partnerDelegate];
  v6 = [v4 textInputTraits];
  v7 = [v6 insertionPointColor];
LABEL_7:
  v8 = v7;

  return v8;
}

@end